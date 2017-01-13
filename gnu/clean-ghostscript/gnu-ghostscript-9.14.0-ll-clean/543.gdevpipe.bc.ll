; ModuleID = './gdevpipe.bc'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.gx_io_device_s = type { i8*, i8*, %struct.gx_io_device_procs_s, i8* }
%struct.gx_io_device_procs_s = type { {}*, i32 (%struct.gx_io_device_s*, i8*, %struct.stream_s**, %struct.gs_memory_s*)*, i32 (%struct.gx_io_device_s*, i8*, i32, i8*, %struct.stream_s**, %struct.gs_memory_s*)*, i32 (%struct.gx_io_device_s*, i8*, i8*, %struct._IO_FILE**, i8*, i32)*, i32 (%struct.gx_io_device_s*, %struct._IO_FILE*)*, i32 (%struct.gx_io_device_s*, i8*)*, i32 (%struct.gx_io_device_s*, i8*, i8*)*, i32 (%struct.gx_io_device_s*, i8*, %struct.stat*)*, %struct.file_enum_s* (%struct.gx_io_device_s*, i8*, i32, %struct.gs_memory_s*)*, i32 (%struct.file_enum_s*, i8*, i32)*, void (%struct.file_enum_s*)*, i32 (%struct.gx_io_device_s*, %struct.gs_param_list_s*)*, i32 (%struct.gx_io_device_s*, %struct.gs_param_list_s*)* }
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
%struct.gs_font_dir_s = type opaque
%struct.gs_fapi_server_s = type opaque
%struct.stream_s = type opaque
%struct.stat = type { i64, i64, i64, i32, i32, i32, i32, i64, i64, i64, i64, %struct.timespec, %struct.timespec, %struct.timespec, [3 x i64] }
%struct.timespec = type { i64, i64 }
%struct.file_enum_s = type opaque
%struct.gs_param_list_s = type opaque

@.str = private unnamed_addr constant [7 x i8] c"%pipe%\00", align 1
@.str.1 = private unnamed_addr constant [8 x i8] c"Special\00", align 1
@gs_iodev_pipe = constant { i8*, i8*, { i32 (%struct.gx_io_device_s*, %struct.gs_memory_s*)*, i32 (%struct.gx_io_device_s*, i8*, %struct.stream_s**, %struct.gs_memory_s*)*, i32 (%struct.gx_io_device_s*, i8*, i32, i8*, %struct.stream_s**, %struct.gs_memory_s*)*, i32 (%struct.gx_io_device_s*, i8*, i8*, %struct._IO_FILE**, i8*, i32)*, i32 (%struct.gx_io_device_s*, %struct._IO_FILE*)*, i32 (%struct.gx_io_device_s*, i8*)*, i32 (%struct.gx_io_device_s*, i8*, i8*)*, i32 (%struct.gx_io_device_s*, i8*, %struct.stat*)*, %struct.file_enum_s* (%struct.gx_io_device_s*, i8*, i32, %struct.gs_memory_s*)*, i32 (%struct.file_enum_s*, i8*, i32)*, void (%struct.file_enum_s*)*, i32 (%struct.gx_io_device_s*, %struct.gs_param_list_s*)*, i32 (%struct.gx_io_device_s*, %struct.gs_param_list_s*)* }, i8* } { i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.1, i32 0, i32 0), { i32 (%struct.gx_io_device_s*, %struct.gs_memory_s*)*, i32 (%struct.gx_io_device_s*, i8*, %struct.stream_s**, %struct.gs_memory_s*)*, i32 (%struct.gx_io_device_s*, i8*, i32, i8*, %struct.stream_s**, %struct.gs_memory_s*)*, i32 (%struct.gx_io_device_s*, i8*, i8*, %struct._IO_FILE**, i8*, i32)*, i32 (%struct.gx_io_device_s*, %struct._IO_FILE*)*, i32 (%struct.gx_io_device_s*, i8*)*, i32 (%struct.gx_io_device_s*, i8*, i8*)*, i32 (%struct.gx_io_device_s*, i8*, %struct.stat*)*, %struct.file_enum_s* (%struct.gx_io_device_s*, i8*, i32, %struct.gs_memory_s*)*, i32 (%struct.file_enum_s*, i8*, i32)*, void (%struct.file_enum_s*)*, i32 (%struct.gx_io_device_s*, %struct.gs_param_list_s*)*, i32 (%struct.gx_io_device_s*, %struct.gs_param_list_s*)* } { i32 (%struct.gx_io_device_s*, %struct.gs_memory_s*)* @iodev_no_init, i32 (%struct.gx_io_device_s*, i8*, %struct.stream_s**, %struct.gs_memory_s*)* @iodev_no_open_device, i32 (%struct.gx_io_device_s*, i8*, i32, i8*, %struct.stream_s**, %struct.gs_memory_s*)* null, i32 (%struct.gx_io_device_s*, i8*, i8*, %struct._IO_FILE**, i8*, i32)* @pipe_fopen, i32 (%struct.gx_io_device_s*, %struct._IO_FILE*)* @pipe_fclose, i32 (%struct.gx_io_device_s*, i8*)* @iodev_no_delete_file, i32 (%struct.gx_io_device_s*, i8*, i8*)* @iodev_no_rename_file, i32 (%struct.gx_io_device_s*, i8*, %struct.stat*)* @iodev_no_file_status, %struct.file_enum_s* (%struct.gx_io_device_s*, i8*, i32, %struct.gs_memory_s*)* @iodev_no_enumerate_files, i32 (%struct.file_enum_s*, i8*, i32)* null, void (%struct.file_enum_s*)* null, i32 (%struct.gx_io_device_s*, %struct.gs_param_list_s*)* @iodev_no_get_params, i32 (%struct.gx_io_device_s*, %struct.gs_param_list_s*)* @iodev_no_put_params }, i8* null }, align 8

declare i32 @iodev_no_init(%struct.gx_io_device_s*, %struct.gs_memory_s*) #0

declare i32 @iodev_no_open_device(%struct.gx_io_device_s*, i8*, %struct.stream_s**, %struct.gs_memory_s*) #0

; Function Attrs: nounwind uwtable
define internal i32 @pipe_fopen(%struct.gx_io_device_s* %iodev, i8* %fname, i8* %access, %struct._IO_FILE** %pfile, i8* %rfname, i32 %rnamelen) #1 {
entry:
  %retval = alloca i32, align 4
  %iodev.addr = alloca %struct.gx_io_device_s*, align 8
  %fname.addr = alloca i8*, align 8
  %access.addr = alloca i8*, align 8
  %pfile.addr = alloca %struct._IO_FILE**, align 8
  %rfname.addr = alloca i8*, align 8
  %rnamelen.addr = alloca i32, align 4
  store %struct.gx_io_device_s* %iodev, %struct.gx_io_device_s** %iodev.addr, align 8, !tbaa !1
  store i8* %fname, i8** %fname.addr, align 8, !tbaa !1
  store i8* %access, i8** %access.addr, align 8, !tbaa !1
  store %struct._IO_FILE** %pfile, %struct._IO_FILE*** %pfile.addr, align 8, !tbaa !1
  store i8* %rfname, i8** %rfname.addr, align 8, !tbaa !1
  store i32 %rnamelen, i32* %rnamelen.addr, align 4, !tbaa !5
  %call = call i32* @__errno_location() #4
  store i32 0, i32* %call, align 4, !tbaa !5
  br i1 false, label %cond.true, label %cond.false

cond.true:                                        ; preds = %entry
  %0 = load i8*, i8** %access.addr, align 8, !tbaa !1
  %call1 = call i8* @__rawmemchr(i8* %0, i32 43) #5
  %tobool = icmp ne i8* %call1, null
  br i1 %tobool, label %if.then, label %if.end

cond.false:                                       ; preds = %entry
  %1 = load i8*, i8** %access.addr, align 8, !tbaa !1
  %call2 = call i8* @strchr(i8* %1, i32 43) #6
  %tobool3 = icmp ne i8* %call2, null
  br i1 %tobool3, label %if.then, label %if.end

if.then:                                          ; preds = %cond.false, %cond.true
  store i32 -9, i32* %retval
  br label %return

if.end:                                           ; preds = %cond.false, %cond.true
  %2 = load i8*, i8** %fname.addr, align 8, !tbaa !1
  %3 = load i8*, i8** %access.addr, align 8, !tbaa !1
  %call4 = call %struct._IO_FILE* @popen(i8* %2, i8* %3) #5
  %4 = load %struct._IO_FILE**, %struct._IO_FILE*** %pfile.addr, align 8, !tbaa !1
  store %struct._IO_FILE* %call4, %struct._IO_FILE** %4, align 8, !tbaa !1
  %5 = load %struct._IO_FILE**, %struct._IO_FILE*** %pfile.addr, align 8, !tbaa !1
  %6 = load %struct._IO_FILE*, %struct._IO_FILE** %5, align 8, !tbaa !1
  %cmp = icmp eq %struct._IO_FILE* %6, null
  br i1 %cmp, label %if.then.5, label %if.end.8

if.then.5:                                        ; preds = %if.end
  %call6 = call i32* @__errno_location() #4
  %7 = load i32, i32* %call6, align 4, !tbaa !5
  %call7 = call i32 @gs_fopen_errno_to_code(i32 %7) #5
  store i32 %call7, i32* %retval
  br label %return

if.end.8:                                         ; preds = %if.end
  %8 = load i8*, i8** %rfname.addr, align 8, !tbaa !1
  %cmp9 = icmp ne i8* %8, null
  br i1 %cmp9, label %if.then.10, label %if.end.12

if.then.10:                                       ; preds = %if.end.8
  %9 = load i8*, i8** %rfname.addr, align 8, !tbaa !1
  %10 = load i8*, i8** %fname.addr, align 8, !tbaa !1
  %call11 = call i8* @strcpy(i8* %9, i8* %10) #6
  br label %if.end.12

if.end.12:                                        ; preds = %if.then.10, %if.end.8
  store i32 0, i32* %retval
  br label %return

return:                                           ; preds = %if.end.12, %if.then.5, %if.then
  %11 = load i32, i32* %retval
  ret i32 %11
}

; Function Attrs: nounwind uwtable
define internal i32 @pipe_fclose(%struct.gx_io_device_s* %iodev, %struct._IO_FILE* %file) #1 {
entry:
  %iodev.addr = alloca %struct.gx_io_device_s*, align 8
  %file.addr = alloca %struct._IO_FILE*, align 8
  store %struct.gx_io_device_s* %iodev, %struct.gx_io_device_s** %iodev.addr, align 8, !tbaa !1
  store %struct._IO_FILE* %file, %struct._IO_FILE** %file.addr, align 8, !tbaa !1
  %0 = load %struct._IO_FILE*, %struct._IO_FILE** %file.addr, align 8, !tbaa !1
  %call = call i32 @pclose(%struct._IO_FILE* %0) #5
  ret i32 0
}

declare i32 @iodev_no_delete_file(%struct.gx_io_device_s*, i8*) #0

declare i32 @iodev_no_rename_file(%struct.gx_io_device_s*, i8*, i8*) #0

declare i32 @iodev_no_file_status(%struct.gx_io_device_s*, i8*, %struct.stat*) #0

declare %struct.file_enum_s* @iodev_no_enumerate_files(%struct.gx_io_device_s*, i8*, i32, %struct.gs_memory_s*) #0

declare i32 @iodev_no_get_params(%struct.gx_io_device_s*, %struct.gs_param_list_s*) #0

declare i32 @iodev_no_put_params(%struct.gx_io_device_s*, %struct.gs_param_list_s*) #0

; Function Attrs: nounwind readnone
declare i32* @__errno_location() #2

declare i8* @__rawmemchr(i8*, i32) #0

; Function Attrs: nounwind
declare i8* @strchr(i8*, i32) #3

declare %struct._IO_FILE* @popen(i8*, i8*) #0

declare i32 @gs_fopen_errno_to_code(i32) #0

; Function Attrs: nounwind
declare i8* @strcpy(i8*, i8*) #3

declare i32 @pclose(%struct._IO_FILE*) #0

attributes #0 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind readnone "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { nobuiltin nounwind readnone }
attributes #5 = { nobuiltin }
attributes #6 = { nobuiltin nounwind }

!llvm.ident = !{!0}

!0 = !{!"clang version 3.7.0 (tags/RELEASE_370/final)"}
!1 = !{!2, !2, i64 0}
!2 = !{!"any pointer", !3, i64 0}
!3 = !{!"omnipotent char", !4, i64 0}
!4 = !{!"Simple C/C++ TBAA"}
!5 = !{!6, !6, i64 0}
!6 = !{!"int", !3, i64 0}
