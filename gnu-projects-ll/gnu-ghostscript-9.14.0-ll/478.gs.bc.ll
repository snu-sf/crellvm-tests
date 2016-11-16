; ModuleID = './gs.bc'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.gs_main_instance_s = type { %struct.gs_memory_s*, i32, i64, i32, i32, i32, i32, i32, %struct.gs_file_path_s, [2 x i64], i8*, %struct.ref_s, i32 (%struct._IO_FILE*, i8**)*, %struct.display_callback_s*, %struct.gs_context_state_s*, i8*, i32 }
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
%struct.gs_file_path_s = type { %struct.ref_s, %struct.ref_s, i8*, i8*, i32 }
%struct.ref_s = type { %struct.tas_s, %union.v }
%struct.tas_s = type { i16, i16, i32 }
%union.v = type { i64 }
%struct.display_callback_s = type opaque
%struct.gs_context_state_s = type opaque

@.str = private unnamed_addr constant [1 x i8] zeroinitializer, align 1

; Function Attrs: nounwind uwtable
define i32 @main(i32 %argc, i8** %argv) #0 {
entry:
  %retval = alloca i32, align 4
  %argc.addr = alloca i32, align 4
  %argv.addr = alloca i8**, align 8
  %exit_status = alloca i32, align 4
  %code = alloca i32, align 4
  %minst = alloca %struct.gs_main_instance_s*, align 8
  %mem = alloca %struct.gs_memory_s*, align 8
  store i32 0, i32* %retval
  store i32 %argc, i32* %argc.addr, align 4, !tbaa !1
  store i8** %argv, i8*** %argv.addr, align 8, !tbaa !5
  %0 = bitcast i32* %exit_status to i8*
  call void @llvm.lifetime.start(i64 4, i8* %0) #1
  %1 = bitcast i32* %code to i8*
  call void @llvm.lifetime.start(i64 4, i8* %1) #1
  %2 = bitcast %struct.gs_main_instance_s** %minst to i8*
  call void @llvm.lifetime.start(i64 8, i8* %2) #1
  %3 = bitcast %struct.gs_memory_s** %mem to i8*
  call void @llvm.lifetime.start(i64 8, i8* %3) #1
  store i32 0, i32* %exit_status, align 4, !tbaa !1
  %call = call i8* @setlocale(i32 0, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str, i32 0, i32 0)) #4
  %call1 = call %struct.gs_memory_s* @gs_malloc_init() #5
  store %struct.gs_memory_s* %call1, %struct.gs_memory_s** %mem, align 8, !tbaa !5
  %4 = load %struct.gs_memory_s*, %struct.gs_memory_s** %mem, align 8, !tbaa !5
  %call2 = call %struct.gs_main_instance_s* @gs_main_alloc_instance(%struct.gs_memory_s* %4) #5
  store %struct.gs_main_instance_s* %call2, %struct.gs_main_instance_s** %minst, align 8, !tbaa !5
  %5 = load %struct.gs_main_instance_s*, %struct.gs_main_instance_s** %minst, align 8, !tbaa !5
  %cmp = icmp eq %struct.gs_main_instance_s* %5, null
  %cond = select i1 %cmp, i32 -100, i32 0
  store i32 %cond, i32* %code, align 4, !tbaa !1
  %6 = load i32, i32* %code, align 4, !tbaa !1
  %cmp3 = icmp sge i32 %6, 0
  br i1 %cmp3, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %7 = load %struct.gs_main_instance_s*, %struct.gs_main_instance_s** %minst, align 8, !tbaa !5
  %8 = load i32, i32* %argc.addr, align 4, !tbaa !1
  %9 = load i8**, i8*** %argv.addr, align 8, !tbaa !5
  %call4 = call i32 @gs_main_init_with_args(%struct.gs_main_instance_s* %7, i32 %8, i8** %9) #5
  store i32 %call4, i32* %code, align 4, !tbaa !1
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %10 = load i32, i32* %code, align 4, !tbaa !1
  %cmp5 = icmp sge i32 %10, 0
  br i1 %cmp5, label %if.then.6, label %if.end.8

if.then.6:                                        ; preds = %if.end
  %11 = load %struct.gs_main_instance_s*, %struct.gs_main_instance_s** %minst, align 8, !tbaa !5
  %call7 = call i32 @gs_main_run_start(%struct.gs_main_instance_s* %11) #5
  store i32 %call7, i32* %code, align 4, !tbaa !1
  br label %if.end.8

if.end.8:                                         ; preds = %if.then.6, %if.end
  store i32 0, i32* %exit_status, align 4, !tbaa !1
  %12 = load i32, i32* %code, align 4, !tbaa !1
  switch i32 %12, label %sw.default [
    i32 0, label %sw.bb
    i32 -110, label %sw.bb
    i32 -101, label %sw.bb
    i32 -100, label %sw.bb.9
  ]

sw.bb:                                            ; preds = %if.end.8, %if.end.8, %if.end.8
  br label %sw.epilog

sw.bb.9:                                          ; preds = %if.end.8
  store i32 1, i32* %exit_status, align 4, !tbaa !1
  br label %sw.epilog

sw.default:                                       ; preds = %if.end.8
  store i32 255, i32* %exit_status, align 4, !tbaa !1
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.default, %sw.bb.9, %sw.bb
  %13 = load %struct.gs_main_instance_s*, %struct.gs_main_instance_s** %minst, align 8, !tbaa !5
  %tobool = icmp ne %struct.gs_main_instance_s* %13, null
  br i1 %tobool, label %if.then.10, label %if.end.12

if.then.10:                                       ; preds = %sw.epilog
  %14 = load %struct.gs_main_instance_s*, %struct.gs_main_instance_s** %minst, align 8, !tbaa !5
  %heap = getelementptr inbounds %struct.gs_main_instance_s, %struct.gs_main_instance_s* %14, i32 0, i32 0
  %15 = load %struct.gs_memory_s*, %struct.gs_memory_s** %heap, align 8, !tbaa !7
  %16 = load i32, i32* %exit_status, align 4, !tbaa !1
  %17 = load i32, i32* %code, align 4, !tbaa !1
  %call11 = call i32 @gs_to_exit_with_code(%struct.gs_memory_s* %15, i32 %16, i32 %17) #5
  br label %if.end.12

if.end.12:                                        ; preds = %if.then.10, %sw.epilog
  %18 = load %struct.gs_memory_s*, %struct.gs_memory_s** %mem, align 8, !tbaa !5
  call void @gs_malloc_release(%struct.gs_memory_s* %18) #5
  %19 = load i32, i32* %exit_status, align 4, !tbaa !1
  switch i32 %19, label %sw.epilog.15 [
    i32 0, label %sw.bb.13
    i32 1, label %sw.bb.14
  ]

sw.bb.13:                                         ; preds = %if.end.12
  store i32 0, i32* %exit_status, align 4, !tbaa !1
  br label %sw.epilog.15

sw.bb.14:                                         ; preds = %if.end.12
  store i32 1, i32* %exit_status, align 4, !tbaa !1
  br label %sw.epilog.15

sw.epilog.15:                                     ; preds = %if.end.12, %sw.bb.14, %sw.bb.13
  %20 = load i32, i32* %exit_status, align 4, !tbaa !1
  %21 = bitcast %struct.gs_memory_s** %mem to i8*
  call void @llvm.lifetime.end(i64 8, i8* %21) #1
  %22 = bitcast %struct.gs_main_instance_s** %minst to i8*
  call void @llvm.lifetime.end(i64 8, i8* %22) #1
  %23 = bitcast i32* %code to i8*
  call void @llvm.lifetime.end(i64 4, i8* %23) #1
  %24 = bitcast i32* %exit_status to i8*
  call void @llvm.lifetime.end(i64 4, i8* %24) #1
  ret i32 %20
}

; Function Attrs: nounwind
declare void @llvm.lifetime.start(i64, i8* nocapture) #1

; Function Attrs: nounwind
declare i8* @setlocale(i32, i8*) #2

declare %struct.gs_memory_s* @gs_malloc_init() #3

declare %struct.gs_main_instance_s* @gs_main_alloc_instance(%struct.gs_memory_s*) #3

declare i32 @gs_main_init_with_args(%struct.gs_main_instance_s*, i32, i8**) #3

declare i32 @gs_main_run_start(%struct.gs_main_instance_s*) #3

declare i32 @gs_to_exit_with_code(%struct.gs_memory_s*, i32, i32) #3

declare void @gs_malloc_release(%struct.gs_memory_s*) #3

; Function Attrs: nounwind
declare void @llvm.lifetime.end(i64, i8* nocapture) #1

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { nounwind "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { nobuiltin nounwind }
attributes #5 = { nobuiltin }

!llvm.ident = !{!0}

!0 = !{!"clang version 3.7.0 (tags/RELEASE_370/final)"}
!1 = !{!2, !2, i64 0}
!2 = !{!"int", !3, i64 0}
!3 = !{!"omnipotent char", !4, i64 0}
!4 = !{!"Simple C/C++ TBAA"}
!5 = !{!6, !6, i64 0}
!6 = !{!"any pointer", !3, i64 0}
!7 = !{!8, !6, i64 0}
!8 = !{!"gs_main_instance_s", !6, i64 0, !2, i64 8, !9, i64 16, !2, i64 24, !2, i64 28, !2, i64 32, !2, i64 36, !2, i64 40, !10, i64 48, !3, i64 104, !6, i64 120, !11, i64 128, !6, i64 144, !6, i64 152, !6, i64 160, !6, i64 168, !2, i64 176}
!9 = !{!"long", !3, i64 0}
!10 = !{!"gs_file_path_s", !11, i64 0, !11, i64 16, !6, i64 32, !6, i64 40, !2, i64 48}
!11 = !{!"ref_s", !12, i64 0, !3, i64 8}
!12 = !{!"tas_s", !13, i64 0, !13, i64 2, !2, i64 4}
!13 = !{!"short", !3, i64 0}
