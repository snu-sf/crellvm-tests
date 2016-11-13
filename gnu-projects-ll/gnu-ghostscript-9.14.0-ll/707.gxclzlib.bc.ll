; ModuleID = './gxclzlib.bc'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.stream_template_s = type { %struct.gs_memory_struct_type_s*, i32 (%struct.stream_state_s*)*, i32 (%struct.stream_state_s*, %struct.stream_cursor_read_s*, %struct.stream_cursor_write_s*, i32)*, i32, i32, void (%struct.stream_state_s*)*, void (%struct.stream_state_s*)*, i32 (%struct.stream_state_s*)* }
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
%struct.stream_state_s = type { %struct.stream_template_s*, %struct.gs_memory_s*, i32 (%struct.stream_state_s*, i8*)*, i32, [80 x i8] }
%struct.stream_cursor_read_s = type { i8*, i8*, i8* }
%struct.stream_cursor_write_s = type { i8*, i8*, i8* }
%struct.stream_zlib_state_s = type { %struct.stream_template_s*, %struct.gs_memory_s*, i32 (%struct.stream_state_s*, i8*)*, i32, [80 x i8], i32, i32, i32, i32, i32, i32, %struct.zlib_dynamic_state_s* }
%struct.zlib_dynamic_state_s = type opaque

@s_zlibE_template = external constant %struct.stream_template_s, align 8
@s_zlibD_template = external constant %struct.stream_template_s, align 8

; Function Attrs: nounwind uwtable
define %struct.stream_template_s* @clist_compressor_template() #0 {
entry:
  ret %struct.stream_template_s* @s_zlibE_template
}

; Function Attrs: nounwind uwtable
define %struct.stream_template_s* @clist_decompressor_template() #0 {
entry:
  ret %struct.stream_template_s* @s_zlibD_template
}

; Function Attrs: nounwind uwtable
define void @clist_compressor_init(%struct.stream_state_s* %state) #0 {
entry:
  %state.addr = alloca %struct.stream_state_s*, align 8
  store %struct.stream_state_s* %state, %struct.stream_state_s** %state.addr, align 8, !tbaa !1
  %0 = load %struct.stream_state_s*, %struct.stream_state_s** %state.addr, align 8, !tbaa !1
  call void @s_zlib_set_defaults(%struct.stream_state_s* %0) #2
  %1 = load %struct.stream_state_s*, %struct.stream_state_s** %state.addr, align 8, !tbaa !1
  %2 = bitcast %struct.stream_state_s* %1 to %struct.stream_zlib_state_s*
  %no_wrapper = getelementptr inbounds %struct.stream_zlib_state_s, %struct.stream_zlib_state_s* %2, i32 0, i32 6
  store i32 1, i32* %no_wrapper, align 4, !tbaa !5
  %3 = load %struct.stream_state_s*, %struct.stream_state_s** %state.addr, align 8, !tbaa !1
  %templat = getelementptr inbounds %struct.stream_state_s, %struct.stream_state_s* %3, i32 0, i32 0
  store %struct.stream_template_s* @s_zlibE_template, %struct.stream_template_s** %templat, align 8, !tbaa !8
  ret void
}

declare void @s_zlib_set_defaults(%struct.stream_state_s*) #1

; Function Attrs: nounwind uwtable
define void @clist_decompressor_init(%struct.stream_state_s* %state) #0 {
entry:
  %state.addr = alloca %struct.stream_state_s*, align 8
  store %struct.stream_state_s* %state, %struct.stream_state_s** %state.addr, align 8, !tbaa !1
  %0 = load %struct.stream_state_s*, %struct.stream_state_s** %state.addr, align 8, !tbaa !1
  call void @s_zlib_set_defaults(%struct.stream_state_s* %0) #2
  %1 = load %struct.stream_state_s*, %struct.stream_state_s** %state.addr, align 8, !tbaa !1
  %2 = bitcast %struct.stream_state_s* %1 to %struct.stream_zlib_state_s*
  %no_wrapper = getelementptr inbounds %struct.stream_zlib_state_s, %struct.stream_zlib_state_s* %2, i32 0, i32 6
  store i32 1, i32* %no_wrapper, align 4, !tbaa !5
  %3 = load %struct.stream_state_s*, %struct.stream_state_s** %state.addr, align 8, !tbaa !1
  %templat = getelementptr inbounds %struct.stream_state_s, %struct.stream_state_s* %3, i32 0, i32 0
  store %struct.stream_template_s* @s_zlibD_template, %struct.stream_template_s** %templat, align 8, !tbaa !8
  ret void
}

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nobuiltin }

!llvm.ident = !{!0}

!0 = !{!"clang version 3.7.0 (tags/RELEASE_370/final)"}
!1 = !{!2, !2, i64 0}
!2 = !{!"any pointer", !3, i64 0}
!3 = !{!"omnipotent char", !4, i64 0}
!4 = !{!"Simple C/C++ TBAA"}
!5 = !{!6, !7, i64 112}
!6 = !{!"stream_zlib_state_s", !2, i64 0, !2, i64 8, !2, i64 16, !7, i64 24, !3, i64 28, !7, i64 108, !7, i64 112, !7, i64 116, !7, i64 120, !7, i64 124, !7, i64 128, !2, i64 136}
!7 = !{!"int", !3, i64 0}
!8 = !{!9, !2, i64 0}
!9 = !{!"stream_state_s", !2, i64 0, !2, i64 8, !2, i64 16, !7, i64 24, !3, i64 28}
