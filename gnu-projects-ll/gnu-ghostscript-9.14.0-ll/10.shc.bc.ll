; ModuleID = './shc.bc'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.stream_hc_state_s = type { %struct.stream_template_s*, %struct.gs_memory_s*, i32 (%struct.stream_state_s*, i8*)*, i32, [80 x i8], i32, i32, i32 }
%struct.stream_template_s = type opaque
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
%struct.stream_state_s = type { %struct.stream_template_s*, %struct.gs_memory_s*, {}*, i32, [80 x i8] }

@byte_reverse_bits = external constant [256 x i8], align 16

; Function Attrs: nounwind uwtable
define void @hc_put_code_proc(i32 %reverse_bits, i8* %q, i32 %cw) #0 {
entry:
  %reverse_bits.addr = alloca i32, align 4
  %q.addr = alloca i8*, align 8
  %cw.addr = alloca i32, align 4
  store i32 %reverse_bits, i32* %reverse_bits.addr, align 4, !tbaa !1
  store i8* %q, i8** %q.addr, align 8, !tbaa !5
  store i32 %cw, i32* %cw.addr, align 4, !tbaa !1
  %0 = load i32, i32* %reverse_bits.addr, align 4, !tbaa !1
  %tobool = icmp ne i32 %0, 0
  br i1 %tobool, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %1 = load i32, i32* %cw.addr, align 4, !tbaa !1
  %shr = lshr i32 %1, 24
  %conv = trunc i32 %shr to i8
  %idxprom = zext i8 %conv to i64
  %arrayidx = getelementptr inbounds [256 x i8], [256 x i8]* @byte_reverse_bits, i32 0, i64 %idxprom
  %2 = load i8, i8* %arrayidx, align 1, !tbaa !7
  %3 = load i8*, i8** %q.addr, align 8, !tbaa !5
  %arrayidx1 = getelementptr inbounds i8, i8* %3, i64 -3
  store i8 %2, i8* %arrayidx1, align 1, !tbaa !7
  %4 = load i32, i32* %cw.addr, align 4, !tbaa !1
  %shr2 = lshr i32 %4, 16
  %conv3 = trunc i32 %shr2 to i8
  %idxprom4 = zext i8 %conv3 to i64
  %arrayidx5 = getelementptr inbounds [256 x i8], [256 x i8]* @byte_reverse_bits, i32 0, i64 %idxprom4
  %5 = load i8, i8* %arrayidx5, align 1, !tbaa !7
  %6 = load i8*, i8** %q.addr, align 8, !tbaa !5
  %arrayidx6 = getelementptr inbounds i8, i8* %6, i64 -2
  store i8 %5, i8* %arrayidx6, align 1, !tbaa !7
  %7 = load i32, i32* %cw.addr, align 4, !tbaa !1
  %shr7 = lshr i32 %7, 8
  %conv8 = trunc i32 %shr7 to i8
  %idxprom9 = zext i8 %conv8 to i64
  %arrayidx10 = getelementptr inbounds [256 x i8], [256 x i8]* @byte_reverse_bits, i32 0, i64 %idxprom9
  %8 = load i8, i8* %arrayidx10, align 1, !tbaa !7
  %9 = load i8*, i8** %q.addr, align 8, !tbaa !5
  %arrayidx11 = getelementptr inbounds i8, i8* %9, i64 -1
  store i8 %8, i8* %arrayidx11, align 1, !tbaa !7
  %10 = load i32, i32* %cw.addr, align 4, !tbaa !1
  %shr12 = lshr i32 %10, 0
  %conv13 = trunc i32 %shr12 to i8
  %idxprom14 = zext i8 %conv13 to i64
  %arrayidx15 = getelementptr inbounds [256 x i8], [256 x i8]* @byte_reverse_bits, i32 0, i64 %idxprom14
  %11 = load i8, i8* %arrayidx15, align 1, !tbaa !7
  %12 = load i8*, i8** %q.addr, align 8, !tbaa !5
  %arrayidx16 = getelementptr inbounds i8, i8* %12, i64 0
  store i8 %11, i8* %arrayidx16, align 1, !tbaa !7
  br label %if.end

if.else:                                          ; preds = %entry
  %13 = load i32, i32* %cw.addr, align 4, !tbaa !1
  %shr17 = lshr i32 %13, 24
  %conv18 = trunc i32 %shr17 to i8
  %14 = load i8*, i8** %q.addr, align 8, !tbaa !5
  %arrayidx19 = getelementptr inbounds i8, i8* %14, i64 -3
  store i8 %conv18, i8* %arrayidx19, align 1, !tbaa !7
  %15 = load i32, i32* %cw.addr, align 4, !tbaa !1
  %shr20 = lshr i32 %15, 16
  %conv21 = trunc i32 %shr20 to i8
  %16 = load i8*, i8** %q.addr, align 8, !tbaa !5
  %arrayidx22 = getelementptr inbounds i8, i8* %16, i64 -2
  store i8 %conv21, i8* %arrayidx22, align 1, !tbaa !7
  %17 = load i32, i32* %cw.addr, align 4, !tbaa !1
  %shr23 = lshr i32 %17, 8
  %conv24 = trunc i32 %shr23 to i8
  %18 = load i8*, i8** %q.addr, align 8, !tbaa !5
  %arrayidx25 = getelementptr inbounds i8, i8* %18, i64 -1
  store i8 %conv24, i8* %arrayidx25, align 1, !tbaa !7
  %19 = load i32, i32* %cw.addr, align 4, !tbaa !1
  %shr26 = lshr i32 %19, 0
  %conv27 = trunc i32 %shr26 to i8
  %20 = load i8*, i8** %q.addr, align 8, !tbaa !5
  %arrayidx28 = getelementptr inbounds i8, i8* %20, i64 0
  store i8 %conv27, i8* %arrayidx28, align 1, !tbaa !7
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  ret void
}

; Function Attrs: nounwind uwtable
define i8* @hc_put_last_bits_proc(%struct.stream_hc_state_s* %ss, i8* %q, i32 %bits, i32 %bits_left) #0 {
entry:
  %ss.addr = alloca %struct.stream_hc_state_s*, align 8
  %q.addr = alloca i8*, align 8
  %bits.addr = alloca i32, align 4
  %bits_left.addr = alloca i32, align 4
  %c = alloca i8, align 1
  store %struct.stream_hc_state_s* %ss, %struct.stream_hc_state_s** %ss.addr, align 8, !tbaa !5
  store i8* %q, i8** %q.addr, align 8, !tbaa !5
  store i32 %bits, i32* %bits.addr, align 4, !tbaa !1
  store i32 %bits_left, i32* %bits_left.addr, align 4, !tbaa !1
  br label %while.cond

while.cond:                                       ; preds = %if.end, %entry
  %0 = load i32, i32* %bits_left.addr, align 4, !tbaa !1
  %cmp = icmp slt i32 %0, 32
  br i1 %cmp, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  call void @llvm.lifetime.start(i64 1, i8* %c) #1
  %1 = load i32, i32* %bits.addr, align 4, !tbaa !1
  %shr = lshr i32 %1, 24
  %conv = trunc i32 %shr to i8
  store i8 %conv, i8* %c, align 1, !tbaa !7
  %2 = load %struct.stream_hc_state_s*, %struct.stream_hc_state_s** %ss.addr, align 8, !tbaa !5
  %FirstBitLowOrder = getelementptr inbounds %struct.stream_hc_state_s, %struct.stream_hc_state_s* %2, i32 0, i32 5
  %3 = load i32, i32* %FirstBitLowOrder, align 4, !tbaa !8
  %tobool = icmp ne i32 %3, 0
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %while.body
  %4 = load i8, i8* %c, align 1, !tbaa !7
  %idxprom = zext i8 %4 to i64
  %arrayidx = getelementptr inbounds [256 x i8], [256 x i8]* @byte_reverse_bits, i32 0, i64 %idxprom
  %5 = load i8, i8* %arrayidx, align 1, !tbaa !7
  store i8 %5, i8* %c, align 1, !tbaa !7
  br label %if.end

if.end:                                           ; preds = %if.then, %while.body
  %6 = load i8, i8* %c, align 1, !tbaa !7
  %7 = load i8*, i8** %q.addr, align 8, !tbaa !5
  %incdec.ptr = getelementptr inbounds i8, i8* %7, i32 1
  store i8* %incdec.ptr, i8** %q.addr, align 8, !tbaa !5
  store i8 %6, i8* %incdec.ptr, align 1, !tbaa !7
  %8 = load i32, i32* %bits.addr, align 4, !tbaa !1
  %shl = shl i32 %8, 8
  store i32 %shl, i32* %bits.addr, align 4, !tbaa !1
  %9 = load i32, i32* %bits_left.addr, align 4, !tbaa !1
  %add = add nsw i32 %9, 8
  store i32 %add, i32* %bits_left.addr, align 4, !tbaa !1
  call void @llvm.lifetime.end(i64 1, i8* %c) #1
  br label %while.cond

while.end:                                        ; preds = %while.cond
  %10 = load i32, i32* %bits.addr, align 4, !tbaa !1
  %11 = load %struct.stream_hc_state_s*, %struct.stream_hc_state_s** %ss.addr, align 8, !tbaa !5
  %bits1 = getelementptr inbounds %struct.stream_hc_state_s, %struct.stream_hc_state_s* %11, i32 0, i32 6
  store i32 %10, i32* %bits1, align 4, !tbaa !10
  %12 = load i32, i32* %bits_left.addr, align 4, !tbaa !1
  %13 = load %struct.stream_hc_state_s*, %struct.stream_hc_state_s** %ss.addr, align 8, !tbaa !5
  %bits_left2 = getelementptr inbounds %struct.stream_hc_state_s, %struct.stream_hc_state_s* %13, i32 0, i32 7
  store i32 %12, i32* %bits_left2, align 4, !tbaa !11
  %14 = load i8*, i8** %q.addr, align 8, !tbaa !5
  ret i8* %14
}

; Function Attrs: nounwind
declare void @llvm.lifetime.start(i64, i8* nocapture) #1

; Function Attrs: nounwind
declare void @llvm.lifetime.end(i64, i8* nocapture) #1

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }

!llvm.ident = !{!0}

!0 = !{!"clang version 3.7.0 (tags/RELEASE_370/final)"}
!1 = !{!2, !2, i64 0}
!2 = !{!"int", !3, i64 0}
!3 = !{!"omnipotent char", !4, i64 0}
!4 = !{!"Simple C/C++ TBAA"}
!5 = !{!6, !6, i64 0}
!6 = !{!"any pointer", !3, i64 0}
!7 = !{!3, !3, i64 0}
!8 = !{!9, !2, i64 108}
!9 = !{!"stream_hc_state_s", !6, i64 0, !6, i64 8, !6, i64 16, !2, i64 24, !3, i64 28, !2, i64 108, !2, i64 112, !2, i64 116}
!10 = !{!9, !2, i64 112}
!11 = !{!9, !2, i64 116}
