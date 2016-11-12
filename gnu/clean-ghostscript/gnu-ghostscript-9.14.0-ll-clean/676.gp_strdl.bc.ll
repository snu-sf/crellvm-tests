; ModuleID = './gp_strdl.bc'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

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
%struct.stream_s = type opaque
%struct.gs_const_string_s = type { i8*, i32 }
%struct.gs_string_s = type { i8*, i32 }

; Function Attrs: nounwind uwtable
define i32 @gp_readline_init(i8** %preadline_data, %struct.gs_memory_s* %mem) #0 {
entry:
  %preadline_data.addr = alloca i8**, align 8
  %mem.addr = alloca %struct.gs_memory_s*, align 8
  store i8** %preadline_data, i8*** %preadline_data.addr, align 8, !tbaa !1
  store %struct.gs_memory_s* %mem, %struct.gs_memory_s** %mem.addr, align 8, !tbaa !1
  ret i32 0
}

; Function Attrs: nounwind uwtable
define i32 @gp_readline(%struct.stream_s* %s_in, %struct.stream_s* %s_out, i8* %readline_data, %struct.gs_const_string_s* %prompt, %struct.gs_string_s* %buf, %struct.gs_memory_s* %bufmem, i32* %pcount, i32* %pin_eol, i32 (%struct.stream_s*)* %is_stdin) #0 {
entry:
  %s_in.addr = alloca %struct.stream_s*, align 8
  %s_out.addr = alloca %struct.stream_s*, align 8
  %readline_data.addr = alloca i8*, align 8
  %prompt.addr = alloca %struct.gs_const_string_s*, align 8
  %buf.addr = alloca %struct.gs_string_s*, align 8
  %bufmem.addr = alloca %struct.gs_memory_s*, align 8
  %pcount.addr = alloca i32*, align 8
  %pin_eol.addr = alloca i32*, align 8
  %is_stdin.addr = alloca i32 (%struct.stream_s*)*, align 8
  store %struct.stream_s* %s_in, %struct.stream_s** %s_in.addr, align 8, !tbaa !1
  store %struct.stream_s* %s_out, %struct.stream_s** %s_out.addr, align 8, !tbaa !1
  store i8* %readline_data, i8** %readline_data.addr, align 8, !tbaa !1
  store %struct.gs_const_string_s* %prompt, %struct.gs_const_string_s** %prompt.addr, align 8, !tbaa !1
  store %struct.gs_string_s* %buf, %struct.gs_string_s** %buf.addr, align 8, !tbaa !1
  store %struct.gs_memory_s* %bufmem, %struct.gs_memory_s** %bufmem.addr, align 8, !tbaa !1
  store i32* %pcount, i32** %pcount.addr, align 8, !tbaa !1
  store i32* %pin_eol, i32** %pin_eol.addr, align 8, !tbaa !1
  store i32 (%struct.stream_s*)* %is_stdin, i32 (%struct.stream_s*)** %is_stdin.addr, align 8, !tbaa !1
  %0 = load %struct.stream_s*, %struct.stream_s** %s_in.addr, align 8, !tbaa !1
  %1 = load %struct.stream_s*, %struct.stream_s** %s_out.addr, align 8, !tbaa !1
  %2 = load i8*, i8** %readline_data.addr, align 8, !tbaa !1
  %3 = load %struct.gs_const_string_s*, %struct.gs_const_string_s** %prompt.addr, align 8, !tbaa !1
  %4 = load %struct.gs_string_s*, %struct.gs_string_s** %buf.addr, align 8, !tbaa !1
  %5 = load %struct.gs_memory_s*, %struct.gs_memory_s** %bufmem.addr, align 8, !tbaa !1
  %6 = load i32*, i32** %pcount.addr, align 8, !tbaa !1
  %7 = load i32*, i32** %pin_eol.addr, align 8, !tbaa !1
  %8 = load i32 (%struct.stream_s*)*, i32 (%struct.stream_s*)** %is_stdin.addr, align 8, !tbaa !1
  %call = call i32 @sreadline(%struct.stream_s* %0, %struct.stream_s* %1, i8* %2, %struct.gs_const_string_s* %3, %struct.gs_string_s* %4, %struct.gs_memory_s* %5, i32* %6, i32* %7, i32 (%struct.stream_s*)* %8) #2
  ret i32 %call
}

declare i32 @sreadline(%struct.stream_s*, %struct.stream_s*, i8*, %struct.gs_const_string_s*, %struct.gs_string_s*, %struct.gs_memory_s*, i32*, i32*, i32 (%struct.stream_s*)*) #1

; Function Attrs: nounwind uwtable
define void @gp_readline_finit(i8* %readline_data) #0 {
entry:
  %readline_data.addr = alloca i8*, align 8
  store i8* %readline_data, i8** %readline_data.addr, align 8, !tbaa !1
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
