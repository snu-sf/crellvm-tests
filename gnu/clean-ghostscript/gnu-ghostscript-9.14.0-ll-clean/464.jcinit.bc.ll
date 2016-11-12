; ModuleID = './jcinit.bc'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.jpeg_compress_struct = type { %struct.jpeg_error_mgr*, %struct.jpeg_memory_mgr*, %struct.jpeg_progress_mgr*, i8*, i32, i32, %struct.jpeg_destination_mgr*, i32, i32, i32, i32, double, i32, i32, i32, i32, i32, i32, i32, %struct.jpeg_component_info*, [4 x %struct.JQUANT_TBL*], [4 x i32], [4 x %struct.JHUFF_TBL*], [4 x %struct.JHUFF_TBL*], [16 x i8], [16 x i8], [16 x i8], i32, %struct.jpeg_scan_info*, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i8, i8, i8, i16, i16, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [4 x %struct.jpeg_component_info*], i32, i32, i32, [10 x i32], i32, i32, i32, i32, i32, i32*, i32, %struct.jpeg_comp_master*, %struct.jpeg_c_main_controller*, %struct.jpeg_c_prep_controller*, %struct.jpeg_c_coef_controller*, %struct.jpeg_marker_writer*, %struct.jpeg_color_converter*, %struct.jpeg_downsampler*, %struct.jpeg_forward_dct*, %struct.jpeg_entropy_encoder*, %struct.jpeg_scan_info*, i32 }
%struct.jpeg_error_mgr = type { void (%struct.jpeg_common_struct*)*, void (%struct.jpeg_common_struct*, i32)*, void (%struct.jpeg_common_struct*)*, void (%struct.jpeg_common_struct*, i8*)*, void (%struct.jpeg_common_struct*)*, i32, %union.anon, i32, i64, i8**, i32, i8**, i32, i32 }
%struct.jpeg_common_struct = type { %struct.jpeg_error_mgr*, %struct.jpeg_memory_mgr*, %struct.jpeg_progress_mgr*, i8*, i32, i32 }
%union.anon = type { [8 x i32], [48 x i8] }
%struct.jpeg_memory_mgr = type { i8* (%struct.jpeg_common_struct*, i32, i64)*, i8* (%struct.jpeg_common_struct*, i32, i64)*, i8** (%struct.jpeg_common_struct*, i32, i32, i32)*, [64 x i16]** (%struct.jpeg_common_struct*, i32, i32, i32)*, %struct.jvirt_sarray_control* (%struct.jpeg_common_struct*, i32, i32, i32, i32, i32)*, %struct.jvirt_barray_control* (%struct.jpeg_common_struct*, i32, i32, i32, i32, i32)*, {}*, i8** (%struct.jpeg_common_struct*, %struct.jvirt_sarray_control*, i32, i32, i32)*, [64 x i16]** (%struct.jpeg_common_struct*, %struct.jvirt_barray_control*, i32, i32, i32)*, void (%struct.jpeg_common_struct*, i32)*, {}*, i64, i64 }
%struct.jvirt_sarray_control = type opaque
%struct.jvirt_barray_control = type opaque
%struct.jpeg_progress_mgr = type { {}*, i64, i64, i32, i32 }
%struct.jpeg_destination_mgr = type { i8*, i64, {}*, i32 (%struct.jpeg_compress_struct*)*, {}* }
%struct.jpeg_component_info = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, %struct.JQUANT_TBL*, i8* }
%struct.JQUANT_TBL = type { [64 x i16], i32 }
%struct.JHUFF_TBL = type { [17 x i8], [256 x i8], i32 }
%struct.jpeg_comp_master = type { {}*, {}*, {}*, i32, i32 }
%struct.jpeg_c_main_controller = type { void (%struct.jpeg_compress_struct*, i32)*, void (%struct.jpeg_compress_struct*, i8**, i32*, i32)* }
%struct.jpeg_c_prep_controller = type { void (%struct.jpeg_compress_struct*, i32)*, void (%struct.jpeg_compress_struct*, i8**, i32*, i32, i8***, i32*, i32)* }
%struct.jpeg_c_coef_controller = type { void (%struct.jpeg_compress_struct*, i32)*, i32 (%struct.jpeg_compress_struct*, i8***)* }
%struct.jpeg_marker_writer = type { {}*, {}*, {}*, {}*, {}*, void (%struct.jpeg_compress_struct*, i32, i32)*, void (%struct.jpeg_compress_struct*, i32)* }
%struct.jpeg_color_converter = type { {}*, void (%struct.jpeg_compress_struct*, i8**, i8***, i32, i32)* }
%struct.jpeg_downsampler = type { {}*, void (%struct.jpeg_compress_struct*, i8***, i32, i8***, i32)*, i32 }
%struct.jpeg_forward_dct = type { {}*, [10 x void (%struct.jpeg_compress_struct*, %struct.jpeg_component_info*, i8**, [64 x i16]*, i32, i32, i32)*] }
%struct.jpeg_entropy_encoder = type { void (%struct.jpeg_compress_struct*, i32)*, i32 (%struct.jpeg_compress_struct*, [64 x i16]**)*, {}* }
%struct.jpeg_scan_info = type { i32, [4 x i32], i32, i32, i32, i32 }

; Function Attrs: nounwind uwtable
define void @jinit_compress_master(%struct.jpeg_compress_struct* %cinfo) #0 {
entry:
  %cinfo.addr = alloca %struct.jpeg_compress_struct*, align 8
  %samplesperrow = alloca i64, align 8
  %jd_samplesperrow = alloca i32, align 4
  store %struct.jpeg_compress_struct* %cinfo, %struct.jpeg_compress_struct** %cinfo.addr, align 8, !tbaa !1
  %0 = bitcast i64* %samplesperrow to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #1
  %1 = bitcast i32* %jd_samplesperrow to i8*
  call void @llvm.lifetime.start(i64 4, i8* %1) #1
  %2 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8, !tbaa !1
  %data_precision = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %2, i32 0, i32 16
  %3 = load i32, i32* %data_precision, align 4, !tbaa !5
  %cmp = icmp ne i32 %3, 8
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %4 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8, !tbaa !1
  %err = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %4, i32 0, i32 0
  %5 = load %struct.jpeg_error_mgr*, %struct.jpeg_error_mgr** %err, align 8, !tbaa !10
  %msg_code = getelementptr inbounds %struct.jpeg_error_mgr, %struct.jpeg_error_mgr* %5, i32 0, i32 5
  store i32 16, i32* %msg_code, align 4, !tbaa !11
  %6 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8, !tbaa !1
  %data_precision1 = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %6, i32 0, i32 16
  %7 = load i32, i32* %data_precision1, align 4, !tbaa !5
  %8 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8, !tbaa !1
  %err2 = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %8, i32 0, i32 0
  %9 = load %struct.jpeg_error_mgr*, %struct.jpeg_error_mgr** %err2, align 8, !tbaa !10
  %msg_parm = getelementptr inbounds %struct.jpeg_error_mgr, %struct.jpeg_error_mgr* %9, i32 0, i32 6
  %i = bitcast %union.anon* %msg_parm to [8 x i32]*
  %arrayidx = getelementptr inbounds [8 x i32], [8 x i32]* %i, i32 0, i64 0
  store i32 %7, i32* %arrayidx, align 4, !tbaa !14
  %10 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8, !tbaa !1
  %err3 = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %10, i32 0, i32 0
  %11 = load %struct.jpeg_error_mgr*, %struct.jpeg_error_mgr** %err3, align 8, !tbaa !10
  %error_exit = getelementptr inbounds %struct.jpeg_error_mgr, %struct.jpeg_error_mgr* %11, i32 0, i32 0
  %12 = load void (%struct.jpeg_common_struct*)*, void (%struct.jpeg_common_struct*)** %error_exit, align 8, !tbaa !15
  %13 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8, !tbaa !1
  %14 = bitcast %struct.jpeg_compress_struct* %13 to %struct.jpeg_common_struct*
  call void %12(%struct.jpeg_common_struct* %14) #3
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %15 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8, !tbaa !1
  %image_height = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %15, i32 0, i32 8
  %16 = load i32, i32* %image_height, align 4, !tbaa !16
  %cmp4 = icmp ule i32 %16, 0
  br i1 %cmp4, label %if.then.8, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.end
  %17 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8, !tbaa !1
  %image_width = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %17, i32 0, i32 7
  %18 = load i32, i32* %image_width, align 4, !tbaa !17
  %cmp5 = icmp ule i32 %18, 0
  br i1 %cmp5, label %if.then.8, label %lor.lhs.false.6

lor.lhs.false.6:                                  ; preds = %lor.lhs.false
  %19 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8, !tbaa !1
  %input_components = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %19, i32 0, i32 9
  %20 = load i32, i32* %input_components, align 4, !tbaa !18
  %cmp7 = icmp sle i32 %20, 0
  br i1 %cmp7, label %if.then.8, label %if.end.13

if.then.8:                                        ; preds = %lor.lhs.false.6, %lor.lhs.false, %if.end
  %21 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8, !tbaa !1
  %err9 = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %21, i32 0, i32 0
  %22 = load %struct.jpeg_error_mgr*, %struct.jpeg_error_mgr** %err9, align 8, !tbaa !10
  %msg_code10 = getelementptr inbounds %struct.jpeg_error_mgr, %struct.jpeg_error_mgr* %22, i32 0, i32 5
  store i32 33, i32* %msg_code10, align 4, !tbaa !11
  %23 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8, !tbaa !1
  %err11 = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %23, i32 0, i32 0
  %24 = load %struct.jpeg_error_mgr*, %struct.jpeg_error_mgr** %err11, align 8, !tbaa !10
  %error_exit12 = getelementptr inbounds %struct.jpeg_error_mgr, %struct.jpeg_error_mgr* %24, i32 0, i32 0
  %25 = load void (%struct.jpeg_common_struct*)*, void (%struct.jpeg_common_struct*)** %error_exit12, align 8, !tbaa !15
  %26 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8, !tbaa !1
  %27 = bitcast %struct.jpeg_compress_struct* %26 to %struct.jpeg_common_struct*
  call void %25(%struct.jpeg_common_struct* %27) #3
  br label %if.end.13

if.end.13:                                        ; preds = %if.then.8, %lor.lhs.false.6
  %28 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8, !tbaa !1
  %image_width14 = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %28, i32 0, i32 7
  %29 = load i32, i32* %image_width14, align 4, !tbaa !17
  %conv = zext i32 %29 to i64
  %30 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8, !tbaa !1
  %input_components15 = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %30, i32 0, i32 9
  %31 = load i32, i32* %input_components15, align 4, !tbaa !18
  %conv16 = sext i32 %31 to i64
  %mul = mul nsw i64 %conv, %conv16
  store i64 %mul, i64* %samplesperrow, align 8, !tbaa !19
  %32 = load i64, i64* %samplesperrow, align 8, !tbaa !19
  %conv17 = trunc i64 %32 to i32
  store i32 %conv17, i32* %jd_samplesperrow, align 4, !tbaa !14
  %33 = load i32, i32* %jd_samplesperrow, align 4, !tbaa !14
  %conv18 = zext i32 %33 to i64
  %34 = load i64, i64* %samplesperrow, align 8, !tbaa !19
  %cmp19 = icmp ne i64 %conv18, %34
  br i1 %cmp19, label %if.then.21, label %if.end.26

if.then.21:                                       ; preds = %if.end.13
  %35 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8, !tbaa !1
  %err22 = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %35, i32 0, i32 0
  %36 = load %struct.jpeg_error_mgr*, %struct.jpeg_error_mgr** %err22, align 8, !tbaa !10
  %msg_code23 = getelementptr inbounds %struct.jpeg_error_mgr, %struct.jpeg_error_mgr* %36, i32 0, i32 5
  store i32 72, i32* %msg_code23, align 4, !tbaa !11
  %37 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8, !tbaa !1
  %err24 = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %37, i32 0, i32 0
  %38 = load %struct.jpeg_error_mgr*, %struct.jpeg_error_mgr** %err24, align 8, !tbaa !10
  %error_exit25 = getelementptr inbounds %struct.jpeg_error_mgr, %struct.jpeg_error_mgr* %38, i32 0, i32 0
  %39 = load void (%struct.jpeg_common_struct*)*, void (%struct.jpeg_common_struct*)** %error_exit25, align 8, !tbaa !15
  %40 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8, !tbaa !1
  %41 = bitcast %struct.jpeg_compress_struct* %40 to %struct.jpeg_common_struct*
  call void %39(%struct.jpeg_common_struct* %41) #3
  br label %if.end.26

if.end.26:                                        ; preds = %if.then.21, %if.end.13
  %42 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8, !tbaa !1
  call void @jinit_c_master_control(%struct.jpeg_compress_struct* %42, i32 0) #3
  %43 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8, !tbaa !1
  %raw_data_in = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %43, i32 0, i32 29
  %44 = load i32, i32* %raw_data_in, align 4, !tbaa !20
  %tobool = icmp ne i32 %44, 0
  br i1 %tobool, label %if.end.28, label %if.then.27

if.then.27:                                       ; preds = %if.end.26
  %45 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8, !tbaa !1
  call void @jinit_color_converter(%struct.jpeg_compress_struct* %45) #3
  %46 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8, !tbaa !1
  call void @jinit_downsampler(%struct.jpeg_compress_struct* %46) #3
  %47 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8, !tbaa !1
  call void @jinit_c_prep_controller(%struct.jpeg_compress_struct* %47, i32 0) #3
  br label %if.end.28

if.end.28:                                        ; preds = %if.then.27, %if.end.26
  %48 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8, !tbaa !1
  call void @jinit_forward_dct(%struct.jpeg_compress_struct* %48) #3
  %49 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8, !tbaa !1
  %arith_code = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %49, i32 0, i32 30
  %50 = load i32, i32* %arith_code, align 4, !tbaa !21
  %tobool29 = icmp ne i32 %50, 0
  br i1 %tobool29, label %if.then.30, label %if.else

if.then.30:                                       ; preds = %if.end.28
  %51 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8, !tbaa !1
  call void @jinit_arith_encoder(%struct.jpeg_compress_struct* %51) #3
  br label %if.end.31

if.else:                                          ; preds = %if.end.28
  %52 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8, !tbaa !1
  call void @jinit_huff_encoder(%struct.jpeg_compress_struct* %52) #3
  br label %if.end.31

if.end.31:                                        ; preds = %if.else, %if.then.30
  %53 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8, !tbaa !1
  %54 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8, !tbaa !1
  %num_scans = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %54, i32 0, i32 27
  %55 = load i32, i32* %num_scans, align 4, !tbaa !22
  %cmp32 = icmp sgt i32 %55, 1
  br i1 %cmp32, label %lor.end, label %lor.rhs

lor.rhs:                                          ; preds = %if.end.31
  %56 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8, !tbaa !1
  %optimize_coding = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %56, i32 0, i32 31
  %57 = load i32, i32* %optimize_coding, align 4, !tbaa !23
  %tobool34 = icmp ne i32 %57, 0
  br label %lor.end

lor.end:                                          ; preds = %lor.rhs, %if.end.31
  %58 = phi i1 [ true, %if.end.31 ], [ %tobool34, %lor.rhs ]
  %lor.ext = zext i1 %58 to i32
  call void @jinit_c_coef_controller(%struct.jpeg_compress_struct* %53, i32 %lor.ext) #3
  %59 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8, !tbaa !1
  call void @jinit_c_main_controller(%struct.jpeg_compress_struct* %59, i32 0) #3
  %60 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8, !tbaa !1
  call void @jinit_marker_writer(%struct.jpeg_compress_struct* %60) #3
  %61 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8, !tbaa !1
  %mem = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %61, i32 0, i32 1
  %62 = load %struct.jpeg_memory_mgr*, %struct.jpeg_memory_mgr** %mem, align 8, !tbaa !24
  %realize_virt_arrays = getelementptr inbounds %struct.jpeg_memory_mgr, %struct.jpeg_memory_mgr* %62, i32 0, i32 6
  %realize_virt_arrays35 = bitcast {}** %realize_virt_arrays to void (%struct.jpeg_common_struct*)**
  %63 = load void (%struct.jpeg_common_struct*)*, void (%struct.jpeg_common_struct*)** %realize_virt_arrays35, align 8, !tbaa !25
  %64 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8, !tbaa !1
  %65 = bitcast %struct.jpeg_compress_struct* %64 to %struct.jpeg_common_struct*
  call void %63(%struct.jpeg_common_struct* %65) #3
  %66 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8, !tbaa !1
  %marker = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %66, i32 0, i32 70
  %67 = load %struct.jpeg_marker_writer*, %struct.jpeg_marker_writer** %marker, align 8, !tbaa !27
  %write_file_header = getelementptr inbounds %struct.jpeg_marker_writer, %struct.jpeg_marker_writer* %67, i32 0, i32 0
  %write_file_header36 = bitcast {}** %write_file_header to void (%struct.jpeg_compress_struct*)**
  %68 = load void (%struct.jpeg_compress_struct*)*, void (%struct.jpeg_compress_struct*)** %write_file_header36, align 8, !tbaa !28
  %69 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8, !tbaa !1
  call void %68(%struct.jpeg_compress_struct* %69) #3
  %70 = bitcast i32* %jd_samplesperrow to i8*
  call void @llvm.lifetime.end(i64 4, i8* %70) #1
  %71 = bitcast i64* %samplesperrow to i8*
  call void @llvm.lifetime.end(i64 8, i8* %71) #1
  ret void
}

; Function Attrs: nounwind
declare void @llvm.lifetime.start(i64, i8* nocapture) #1

declare void @jinit_c_master_control(%struct.jpeg_compress_struct*, i32) #2

declare void @jinit_color_converter(%struct.jpeg_compress_struct*) #2

declare void @jinit_downsampler(%struct.jpeg_compress_struct*) #2

declare void @jinit_c_prep_controller(%struct.jpeg_compress_struct*, i32) #2

declare void @jinit_forward_dct(%struct.jpeg_compress_struct*) #2

declare void @jinit_arith_encoder(%struct.jpeg_compress_struct*) #2

declare void @jinit_huff_encoder(%struct.jpeg_compress_struct*) #2

declare void @jinit_c_coef_controller(%struct.jpeg_compress_struct*, i32) #2

declare void @jinit_c_main_controller(%struct.jpeg_compress_struct*, i32) #2

declare void @jinit_marker_writer(%struct.jpeg_compress_struct*) #2

; Function Attrs: nounwind
declare void @llvm.lifetime.end(i64, i8* nocapture) #1

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nobuiltin }

!llvm.ident = !{!0}

!0 = !{!"clang version 3.7.0 (tags/RELEASE_370/final)"}
!1 = !{!2, !2, i64 0}
!2 = !{!"any pointer", !3, i64 0}
!3 = !{!"omnipotent char", !4, i64 0}
!4 = !{!"Simple C/C++ TBAA"}
!5 = !{!6, !7, i64 88}
!6 = !{!"jpeg_compress_struct", !2, i64 0, !2, i64 8, !2, i64 16, !2, i64 24, !3, i64 32, !7, i64 36, !2, i64 40, !7, i64 48, !7, i64 52, !7, i64 56, !3, i64 60, !8, i64 64, !7, i64 72, !7, i64 76, !7, i64 80, !7, i64 84, !7, i64 88, !7, i64 92, !3, i64 96, !2, i64 104, !3, i64 112, !3, i64 144, !3, i64 160, !3, i64 192, !3, i64 224, !3, i64 240, !3, i64 256, !7, i64 272, !2, i64 280, !3, i64 288, !3, i64 292, !3, i64 296, !3, i64 300, !3, i64 304, !7, i64 308, !3, i64 312, !7, i64 316, !7, i64 320, !3, i64 324, !3, i64 328, !3, i64 329, !3, i64 330, !9, i64 332, !9, i64 334, !3, i64 336, !3, i64 340, !7, i64 344, !3, i64 348, !7, i64 352, !7, i64 356, !7, i64 360, !7, i64 364, !7, i64 368, !7, i64 372, !3, i64 376, !7, i64 408, !7, i64 412, !7, i64 416, !3, i64 420, !7, i64 460, !7, i64 464, !7, i64 468, !7, i64 472, !7, i64 476, !2, i64 480, !7, i64 488, !2, i64 496, !2, i64 504, !2, i64 512, !2, i64 520, !2, i64 528, !2, i64 536, !2, i64 544, !2, i64 552, !2, i64 560, !2, i64 568, !7, i64 576}
!7 = !{!"int", !3, i64 0}
!8 = !{!"double", !3, i64 0}
!9 = !{!"short", !3, i64 0}
!10 = !{!6, !2, i64 0}
!11 = !{!12, !7, i64 40}
!12 = !{!"jpeg_error_mgr", !2, i64 0, !2, i64 8, !2, i64 16, !2, i64 24, !2, i64 32, !7, i64 40, !3, i64 44, !7, i64 124, !13, i64 128, !2, i64 136, !7, i64 144, !2, i64 152, !7, i64 160, !7, i64 164}
!13 = !{!"long", !3, i64 0}
!14 = !{!7, !7, i64 0}
!15 = !{!12, !2, i64 0}
!16 = !{!6, !7, i64 52}
!17 = !{!6, !7, i64 48}
!18 = !{!6, !7, i64 56}
!19 = !{!13, !13, i64 0}
!20 = !{!6, !3, i64 288}
!21 = !{!6, !3, i64 292}
!22 = !{!6, !7, i64 272}
!23 = !{!6, !3, i64 296}
!24 = !{!6, !2, i64 8}
!25 = !{!26, !2, i64 48}
!26 = !{!"jpeg_memory_mgr", !2, i64 0, !2, i64 8, !2, i64 16, !2, i64 24, !2, i64 32, !2, i64 40, !2, i64 48, !2, i64 56, !2, i64 64, !2, i64 72, !2, i64 80, !13, i64 88, !13, i64 96}
!27 = !{!6, !2, i64 528}
!28 = !{!29, !2, i64 0}
!29 = !{!"jpeg_marker_writer", !2, i64 0, !2, i64 8, !2, i64 16, !2, i64 24, !2, i64 32, !2, i64 40, !2, i64 48}
