; ModuleID = './zdevcal.bc'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.gx_io_device_s = type { i8*, i8*, %struct.gx_io_device_procs_s, i8* }
%struct.gx_io_device_procs_s = type { {}*, i32 (%struct.gx_io_device_s*, i8*, %struct.stream_s**, %struct.gs_memory_s*)*, i32 (%struct.gx_io_device_s*, i8*, i32, i8*, %struct.stream_s**, %struct.gs_memory_s*)*, i32 (%struct.gx_io_device_s*, i8*, i8*, %struct._IO_FILE**, i8*, i32)*, i32 (%struct.gx_io_device_s*, %struct._IO_FILE*)*, i32 (%struct.gx_io_device_s*, i8*)*, i32 (%struct.gx_io_device_s*, i8*, i8*)*, i32 (%struct.gx_io_device_s*, i8*, %struct.stat*)*, %struct.file_enum_s* (%struct.gx_io_device_s*, i8*, i32, %struct.gs_memory_s*)*, i32 (%struct.file_enum_s*, i8*, i32)*, void (%struct.file_enum_s*)*, i32 (%struct.gx_io_device_s*, %struct.gs_param_list_s*)*, i32 (%struct.gx_io_device_s*, %struct.gs_param_list_s*)* }
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
%struct.gs_font_dir_s = type opaque
%struct.gs_fapi_server_s = type opaque
%struct.stream_s = type opaque
%struct.stat = type { i64, i64, i64, i32, i32, i32, i32, i64, i64, i64, i64, %struct.timespec, %struct.timespec, %struct.timespec, [3 x i64] }
%struct.timespec = type { i64, i64 }
%struct.file_enum_s = type opaque
%struct.gs_param_list_s = type { %struct.gs_param_list_procs_s*, %struct.gs_memory_s*, i32 }
%struct.gs_param_list_procs_s = type { i32 (%struct.gs_param_list_s*, i8*, %struct.gs_param_typed_value_s*)*, i32 (%struct.gs_param_list_s*, i8*, %struct.gs_param_collection_s*, i32)*, i32 (%struct.gs_param_list_s*, i8*, %struct.gs_param_collection_s*)*, i32 (%struct.gs_param_list_s*, %union.gs_param_enumerator_s*, %struct.gs_param_string_s*)*, i32 (%struct.gs_param_list_s*, i8*)*, i32 (%struct.gs_param_list_s*, i8*)*, i32 (%struct.gs_param_list_s*, i8*)*, i32 (%struct.gs_param_list_s*, i8*, i32)*, i32 (%struct.gs_param_list_s*)* }
%struct.gs_param_typed_value_s = type { %union.gs_param_value_s, i32 }
%union.gs_param_value_s = type { %struct.gs_param_string_s }
%struct.gs_param_string_s = type { i8*, i32, i32 }
%struct.gs_param_collection_s = type { %struct.gs_param_list_s*, i32 }
%union.gs_param_enumerator_s = type { i64 }
%struct.gs_param_item_s = type { i8*, i8, i16 }
%struct.tm = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i64, i8* }

@.str = private unnamed_addr constant [11 x i8] c"%Calendar%\00", align 1
@.str.1 = private unnamed_addr constant [8 x i8] c"Special\00", align 1
@gs_iodev_calendar = constant { i8*, i8*, { i32 (%struct.gx_io_device_s*, %struct.gs_memory_s*)*, i32 (%struct.gx_io_device_s*, i8*, %struct.stream_s**, %struct.gs_memory_s*)*, i32 (%struct.gx_io_device_s*, i8*, i32, i8*, %struct.stream_s**, %struct.gs_memory_s*)*, i32 (%struct.gx_io_device_s*, i8*, i8*, %struct._IO_FILE**, i8*, i32)*, i32 (%struct.gx_io_device_s*, %struct._IO_FILE*)*, i32 (%struct.gx_io_device_s*, i8*)*, i32 (%struct.gx_io_device_s*, i8*, i8*)*, i32 (%struct.gx_io_device_s*, i8*, %struct.stat*)*, %struct.file_enum_s* (%struct.gx_io_device_s*, i8*, i32, %struct.gs_memory_s*)*, i32 (%struct.file_enum_s*, i8*, i32)*, void (%struct.file_enum_s*)*, i32 (%struct.gx_io_device_s*, %struct.gs_param_list_s*)*, i32 (%struct.gx_io_device_s*, %struct.gs_param_list_s*)* }, i8* } { i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.1, i32 0, i32 0), { i32 (%struct.gx_io_device_s*, %struct.gs_memory_s*)*, i32 (%struct.gx_io_device_s*, i8*, %struct.stream_s**, %struct.gs_memory_s*)*, i32 (%struct.gx_io_device_s*, i8*, i32, i8*, %struct.stream_s**, %struct.gs_memory_s*)*, i32 (%struct.gx_io_device_s*, i8*, i8*, %struct._IO_FILE**, i8*, i32)*, i32 (%struct.gx_io_device_s*, %struct._IO_FILE*)*, i32 (%struct.gx_io_device_s*, i8*)*, i32 (%struct.gx_io_device_s*, i8*, i8*)*, i32 (%struct.gx_io_device_s*, i8*, %struct.stat*)*, %struct.file_enum_s* (%struct.gx_io_device_s*, i8*, i32, %struct.gs_memory_s*)*, i32 (%struct.file_enum_s*, i8*, i32)*, void (%struct.file_enum_s*)*, i32 (%struct.gx_io_device_s*, %struct.gs_param_list_s*)*, i32 (%struct.gx_io_device_s*, %struct.gs_param_list_s*)* } { i32 (%struct.gx_io_device_s*, %struct.gs_memory_s*)* @iodev_no_init, i32 (%struct.gx_io_device_s*, i8*, %struct.stream_s**, %struct.gs_memory_s*)* @iodev_no_open_device, i32 (%struct.gx_io_device_s*, i8*, i32, i8*, %struct.stream_s**, %struct.gs_memory_s*)* @iodev_no_open_file, i32 (%struct.gx_io_device_s*, i8*, i8*, %struct._IO_FILE**, i8*, i32)* @iodev_no_fopen, i32 (%struct.gx_io_device_s*, %struct._IO_FILE*)* @iodev_no_fclose, i32 (%struct.gx_io_device_s*, i8*)* @iodev_no_delete_file, i32 (%struct.gx_io_device_s*, i8*, i8*)* @iodev_no_rename_file, i32 (%struct.gx_io_device_s*, i8*, %struct.stat*)* @iodev_no_file_status, %struct.file_enum_s* (%struct.gx_io_device_s*, i8*, i32, %struct.gs_memory_s*)* @iodev_no_enumerate_files, i32 (%struct.file_enum_s*, i8*, i32)* null, void (%struct.file_enum_s*)* null, i32 (%struct.gx_io_device_s*, %struct.gs_param_list_s*)* @calendar_get_params, i32 (%struct.gx_io_device_s*, %struct.gs_param_list_s*)* @iodev_no_put_params }, i8* null }, align 8
@calendar_get_params.items = internal constant [8 x %struct.gs_param_item_s] [%struct.gs_param_item_s { i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i32 0, i32 0), i8 2, i16 20 }, %struct.gs_param_item_s { i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.3, i32 0, i32 0), i8 2, i16 16 }, %struct.gs_param_item_s { i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.4, i32 0, i32 0), i8 2, i16 12 }, %struct.gs_param_item_s { i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.5, i32 0, i32 0), i8 2, i16 24 }, %struct.gs_param_item_s { i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.6, i32 0, i32 0), i8 2, i16 8 }, %struct.gs_param_item_s { i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.7, i32 0, i32 0), i8 2, i16 4 }, %struct.gs_param_item_s { i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.8, i32 0, i32 0), i8 2, i16 0 }, %struct.gs_param_item_s zeroinitializer], align 16
@.str.2 = private unnamed_addr constant [5 x i8] c"Year\00", align 1
@.str.3 = private unnamed_addr constant [6 x i8] c"Month\00", align 1
@.str.4 = private unnamed_addr constant [4 x i8] c"Day\00", align 1
@.str.5 = private unnamed_addr constant [8 x i8] c"Weekday\00", align 1
@.str.6 = private unnamed_addr constant [5 x i8] c"Hour\00", align 1
@.str.7 = private unnamed_addr constant [7 x i8] c"Minute\00", align 1
@.str.8 = private unnamed_addr constant [7 x i8] c"Second\00", align 1
@.str.9 = private unnamed_addr constant [8 x i8] c"Running\00", align 1

declare i32 @iodev_no_init(%struct.gx_io_device_s*, %struct.gs_memory_s*) #0

declare i32 @iodev_no_open_device(%struct.gx_io_device_s*, i8*, %struct.stream_s**, %struct.gs_memory_s*) #0

declare i32 @iodev_no_open_file(%struct.gx_io_device_s*, i8*, i32, i8*, %struct.stream_s**, %struct.gs_memory_s*) #0

declare i32 @iodev_no_fopen(%struct.gx_io_device_s*, i8*, i8*, %struct._IO_FILE**, i8*, i32) #0

declare i32 @iodev_no_fclose(%struct.gx_io_device_s*, %struct._IO_FILE*) #0

declare i32 @iodev_no_delete_file(%struct.gx_io_device_s*, i8*) #0

declare i32 @iodev_no_rename_file(%struct.gx_io_device_s*, i8*, i8*) #0

declare i32 @iodev_no_file_status(%struct.gx_io_device_s*, i8*, %struct.stat*) #0

declare %struct.file_enum_s* @iodev_no_enumerate_files(%struct.gx_io_device_s*, i8*, i32, %struct.gs_memory_s*) #0

; Function Attrs: nounwind uwtable
define internal i32 @calendar_get_params(%struct.gx_io_device_s* %iodev, %struct.gs_param_list_s* %plist) #1 {
entry:
  %retval = alloca i32, align 4
  %iodev.addr = alloca %struct.gx_io_device_s*, align 8
  %plist.addr = alloca %struct.gs_param_list_s*, align 8
  %code = alloca i32, align 4
  %t = alloca i64, align 8
  %pltime = alloca %struct.tm*, align 8
  %ltime = alloca %struct.tm, align 8
  %running = alloca i32, align 4
  %cleanup.dest.slot = alloca i32
  store %struct.gx_io_device_s* %iodev, %struct.gx_io_device_s** %iodev.addr, align 8, !tbaa !1
  store %struct.gs_param_list_s* %plist, %struct.gs_param_list_s** %plist.addr, align 8, !tbaa !1
  %0 = bitcast i32* %code to i8*
  call void @llvm.lifetime.start(i64 4, i8* %0) #2
  %1 = bitcast i64* %t to i8*
  call void @llvm.lifetime.start(i64 8, i8* %1) #2
  %2 = bitcast %struct.tm** %pltime to i8*
  call void @llvm.lifetime.start(i64 8, i8* %2) #2
  %3 = bitcast %struct.tm* %ltime to i8*
  call void @llvm.lifetime.start(i64 56, i8* %3) #2
  %4 = bitcast i32* %running to i8*
  call void @llvm.lifetime.start(i64 4, i8* %4) #2
  %call = call i64 @time(i64* %t) #4
  %cmp = icmp eq i64 %call, -1
  br i1 %cmp, label %if.then, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %entry
  %call1 = call %struct.tm* @localtime(i64* %t) #4
  store %struct.tm* %call1, %struct.tm** %pltime, align 8, !tbaa !1
  %cmp2 = icmp eq %struct.tm* %call1, null
  br i1 %cmp2, label %if.then, label %if.else

if.then:                                          ; preds = %lor.lhs.false, %entry
  %tm_year = getelementptr inbounds %struct.tm, %struct.tm* %ltime, i32 0, i32 5
  store i32 0, i32* %tm_year, align 4, !tbaa !5
  %tm_mon = getelementptr inbounds %struct.tm, %struct.tm* %ltime, i32 0, i32 4
  store i32 0, i32* %tm_mon, align 4, !tbaa !9
  %tm_mday = getelementptr inbounds %struct.tm, %struct.tm* %ltime, i32 0, i32 3
  store i32 0, i32* %tm_mday, align 4, !tbaa !10
  %tm_hour = getelementptr inbounds %struct.tm, %struct.tm* %ltime, i32 0, i32 2
  store i32 0, i32* %tm_hour, align 4, !tbaa !11
  %tm_min = getelementptr inbounds %struct.tm, %struct.tm* %ltime, i32 0, i32 1
  store i32 0, i32* %tm_min, align 4, !tbaa !12
  %tm_sec = getelementptr inbounds %struct.tm, %struct.tm* %ltime, i32 0, i32 0
  store i32 0, i32* %tm_sec, align 4, !tbaa !13
  store i32 0, i32* %running, align 4, !tbaa !14
  br label %if.end

if.else:                                          ; preds = %lor.lhs.false
  %5 = load %struct.tm*, %struct.tm** %pltime, align 8, !tbaa !1
  %6 = bitcast %struct.tm* %ltime to i8*
  %7 = bitcast %struct.tm* %5 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %6, i8* %7, i64 56, i32 8, i1 false), !tbaa.struct !15
  %tm_year3 = getelementptr inbounds %struct.tm, %struct.tm* %ltime, i32 0, i32 5
  %8 = load i32, i32* %tm_year3, align 4, !tbaa !5
  %add = add nsw i32 %8, 1900
  store i32 %add, i32* %tm_year3, align 4, !tbaa !5
  %tm_mon4 = getelementptr inbounds %struct.tm, %struct.tm* %ltime, i32 0, i32 4
  %9 = load i32, i32* %tm_mon4, align 4, !tbaa !9
  %inc = add nsw i32 %9, 1
  store i32 %inc, i32* %tm_mon4, align 4, !tbaa !9
  store i32 1, i32* %running, align 4, !tbaa !14
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %10 = load %struct.gs_param_list_s*, %struct.gs_param_list_s** %plist.addr, align 8, !tbaa !1
  %11 = bitcast %struct.tm* %ltime to i8*
  %call5 = call i32 @gs_param_write_items(%struct.gs_param_list_s* %10, i8* %11, i8* null, %struct.gs_param_item_s* getelementptr inbounds ([8 x %struct.gs_param_item_s], [8 x %struct.gs_param_item_s]* @calendar_get_params.items, i32 0, i32 0)) #5
  store i32 %call5, i32* %code, align 4, !tbaa !14
  %cmp6 = icmp slt i32 %call5, 0
  br i1 %cmp6, label %if.then.7, label %if.end.8

if.then.7:                                        ; preds = %if.end
  %12 = load i32, i32* %code, align 4, !tbaa !14
  store i32 %12, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.8:                                         ; preds = %if.end
  %13 = load %struct.gs_param_list_s*, %struct.gs_param_list_s** %plist.addr, align 8, !tbaa !1
  %call9 = call i32 @param_write_bool(%struct.gs_param_list_s* %13, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.9, i32 0, i32 0), i32* %running) #5
  store i32 %call9, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %if.end.8, %if.then.7
  %14 = bitcast i32* %running to i8*
  call void @llvm.lifetime.end(i64 4, i8* %14) #2
  %15 = bitcast %struct.tm* %ltime to i8*
  call void @llvm.lifetime.end(i64 56, i8* %15) #2
  %16 = bitcast %struct.tm** %pltime to i8*
  call void @llvm.lifetime.end(i64 8, i8* %16) #2
  %17 = bitcast i64* %t to i8*
  call void @llvm.lifetime.end(i64 8, i8* %17) #2
  %18 = bitcast i32* %code to i8*
  call void @llvm.lifetime.end(i64 4, i8* %18) #2
  %19 = load i32, i32* %retval
  ret i32 %19
}

declare i32 @iodev_no_put_params(%struct.gx_io_device_s*, %struct.gs_param_list_s*) #0

; Function Attrs: nounwind
declare void @llvm.lifetime.start(i64, i8* nocapture) #2

; Function Attrs: nounwind
declare i64 @time(i64*) #3

; Function Attrs: nounwind
declare %struct.tm* @localtime(i64*) #3

; Function Attrs: nounwind
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* nocapture, i8* nocapture readonly, i64, i32, i1) #2

declare i32 @gs_param_write_items(%struct.gs_param_list_s*, i8*, i8*, %struct.gs_param_item_s*) #0

declare i32 @param_write_bool(%struct.gs_param_list_s*, i8*, i32*) #0

; Function Attrs: nounwind
declare void @llvm.lifetime.end(i64, i8* nocapture) #2

attributes #0 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind }
attributes #3 = { nounwind "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { nobuiltin nounwind }
attributes #5 = { nobuiltin }

!llvm.ident = !{!0}

!0 = !{!"clang version 3.7.0 (tags/RELEASE_370/final)"}
!1 = !{!2, !2, i64 0}
!2 = !{!"any pointer", !3, i64 0}
!3 = !{!"omnipotent char", !4, i64 0}
!4 = !{!"Simple C/C++ TBAA"}
!5 = !{!6, !7, i64 20}
!6 = !{!"tm", !7, i64 0, !7, i64 4, !7, i64 8, !7, i64 12, !7, i64 16, !7, i64 20, !7, i64 24, !7, i64 28, !7, i64 32, !8, i64 40, !2, i64 48}
!7 = !{!"int", !3, i64 0}
!8 = !{!"long", !3, i64 0}
!9 = !{!6, !7, i64 16}
!10 = !{!6, !7, i64 12}
!11 = !{!6, !7, i64 8}
!12 = !{!6, !7, i64 4}
!13 = !{!6, !7, i64 0}
!14 = !{!7, !7, i64 0}
!15 = !{i64 0, i64 4, !14, i64 4, i64 4, !14, i64 8, i64 4, !14, i64 12, i64 4, !14, i64 16, i64 4, !14, i64 20, i64 4, !14, i64 24, i64 4, !14, i64 28, i64 4, !14, i64 32, i64 4, !14, i64 40, i64 8, !16, i64 48, i64 8, !1}
!16 = !{!8, !8, i64 0}
