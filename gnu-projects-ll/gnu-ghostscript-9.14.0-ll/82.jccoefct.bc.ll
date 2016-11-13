; ModuleID = './jccoefct.bc'
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
%struct.jpeg_destination_mgr = type { i8*, i64, void (%struct.jpeg_compress_struct*)*, i32 (%struct.jpeg_compress_struct*)*, void (%struct.jpeg_compress_struct*)* }
%struct.jpeg_component_info = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, %struct.JQUANT_TBL*, i8* }
%struct.JQUANT_TBL = type { [64 x i16], i32 }
%struct.JHUFF_TBL = type { [17 x i8], [256 x i8], i32 }
%struct.jpeg_comp_master = type { void (%struct.jpeg_compress_struct*)*, void (%struct.jpeg_compress_struct*)*, void (%struct.jpeg_compress_struct*)*, i32, i32 }
%struct.jpeg_c_main_controller = type { void (%struct.jpeg_compress_struct*, i32)*, void (%struct.jpeg_compress_struct*, i8**, i32*, i32)* }
%struct.jpeg_c_prep_controller = type { void (%struct.jpeg_compress_struct*, i32)*, void (%struct.jpeg_compress_struct*, i8**, i32*, i32, i8***, i32*, i32)* }
%struct.jpeg_c_coef_controller = type { void (%struct.jpeg_compress_struct*, i32)*, i32 (%struct.jpeg_compress_struct*, i8***)* }
%struct.jpeg_marker_writer = type { void (%struct.jpeg_compress_struct*)*, void (%struct.jpeg_compress_struct*)*, void (%struct.jpeg_compress_struct*)*, void (%struct.jpeg_compress_struct*)*, void (%struct.jpeg_compress_struct*)*, void (%struct.jpeg_compress_struct*, i32, i32)*, void (%struct.jpeg_compress_struct*, i32)* }
%struct.jpeg_color_converter = type { void (%struct.jpeg_compress_struct*)*, void (%struct.jpeg_compress_struct*, i8**, i8***, i32, i32)* }
%struct.jpeg_downsampler = type { void (%struct.jpeg_compress_struct*)*, void (%struct.jpeg_compress_struct*, i8***, i32, i8***, i32)*, i32 }
%struct.jpeg_forward_dct = type { void (%struct.jpeg_compress_struct*)*, [10 x void (%struct.jpeg_compress_struct*, %struct.jpeg_component_info*, i8**, [64 x i16]*, i32, i32, i32)*] }
%struct.jpeg_entropy_encoder = type { {}*, i32 (%struct.jpeg_compress_struct*, [64 x i16]**)*, void (%struct.jpeg_compress_struct*)* }
%struct.jpeg_scan_info = type { i32, [4 x i32], i32, i32, i32, i32 }
%struct.my_coef_controller = type { %struct.jpeg_c_coef_controller, i32, i32, i32, i32, [10 x [64 x i16]*], [10 x %struct.jvirt_barray_control*] }

; Function Attrs: nounwind uwtable
define void @jinit_c_coef_controller(%struct.jpeg_compress_struct* %cinfo, i32 %need_full_buffer) #0 {
entry:
  %cinfo.addr = alloca %struct.jpeg_compress_struct*, align 8
  %need_full_buffer.addr = alloca i32, align 4
  %coef = alloca %struct.my_coef_controller*, align 8
  %buffer = alloca [64 x i16]*, align 8
  %i = alloca i32, align 4
  store %struct.jpeg_compress_struct* %cinfo, %struct.jpeg_compress_struct** %cinfo.addr, align 8, !tbaa !1
  store i32 %need_full_buffer, i32* %need_full_buffer.addr, align 4, !tbaa !5
  %0 = bitcast %struct.my_coef_controller** %coef to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #1
  %1 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8, !tbaa !1
  %mem = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %1, i32 0, i32 1
  %2 = load %struct.jpeg_memory_mgr*, %struct.jpeg_memory_mgr** %mem, align 8, !tbaa !6
  %alloc_small = getelementptr inbounds %struct.jpeg_memory_mgr, %struct.jpeg_memory_mgr* %2, i32 0, i32 0
  %3 = load i8* (%struct.jpeg_common_struct*, i32, i64)*, i8* (%struct.jpeg_common_struct*, i32, i64)** %alloc_small, align 8, !tbaa !11
  %4 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8, !tbaa !1
  %5 = bitcast %struct.jpeg_compress_struct* %4 to %struct.jpeg_common_struct*
  %call = call i8* %3(%struct.jpeg_common_struct* %5, i32 1, i64 192) #3
  %6 = bitcast i8* %call to %struct.my_coef_controller*
  store %struct.my_coef_controller* %6, %struct.my_coef_controller** %coef, align 8, !tbaa !1
  %7 = load %struct.my_coef_controller*, %struct.my_coef_controller** %coef, align 8, !tbaa !1
  %8 = bitcast %struct.my_coef_controller* %7 to %struct.jpeg_c_coef_controller*
  %9 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8, !tbaa !1
  %coef1 = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %9, i32 0, i32 69
  store %struct.jpeg_c_coef_controller* %8, %struct.jpeg_c_coef_controller** %coef1, align 8, !tbaa !14
  %10 = load %struct.my_coef_controller*, %struct.my_coef_controller** %coef, align 8, !tbaa !1
  %pub = getelementptr inbounds %struct.my_coef_controller, %struct.my_coef_controller* %10, i32 0, i32 0
  %start_pass = getelementptr inbounds %struct.jpeg_c_coef_controller, %struct.jpeg_c_coef_controller* %pub, i32 0, i32 0
  store void (%struct.jpeg_compress_struct*, i32)* @start_pass_coef, void (%struct.jpeg_compress_struct*, i32)** %start_pass, align 8, !tbaa !15
  %11 = load i32, i32* %need_full_buffer.addr, align 4, !tbaa !5
  %tobool = icmp ne i32 %11, 0
  br i1 %tobool, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %12 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8, !tbaa !1
  %err = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %12, i32 0, i32 0
  %13 = load %struct.jpeg_error_mgr*, %struct.jpeg_error_mgr** %err, align 8, !tbaa !18
  %msg_code = getelementptr inbounds %struct.jpeg_error_mgr, %struct.jpeg_error_mgr* %13, i32 0, i32 5
  store i32 3, i32* %msg_code, align 4, !tbaa !19
  %14 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8, !tbaa !1
  %err2 = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %14, i32 0, i32 0
  %15 = load %struct.jpeg_error_mgr*, %struct.jpeg_error_mgr** %err2, align 8, !tbaa !18
  %error_exit = getelementptr inbounds %struct.jpeg_error_mgr, %struct.jpeg_error_mgr* %15, i32 0, i32 0
  %16 = load void (%struct.jpeg_common_struct*)*, void (%struct.jpeg_common_struct*)** %error_exit, align 8, !tbaa !21
  %17 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8, !tbaa !1
  %18 = bitcast %struct.jpeg_compress_struct* %17 to %struct.jpeg_common_struct*
  call void %16(%struct.jpeg_common_struct* %18) #3
  br label %if.end

if.else:                                          ; preds = %entry
  %19 = bitcast [64 x i16]** %buffer to i8*
  call void @llvm.lifetime.start(i64 8, i8* %19) #1
  %20 = bitcast i32* %i to i8*
  call void @llvm.lifetime.start(i64 4, i8* %20) #1
  %21 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8, !tbaa !1
  %mem3 = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %21, i32 0, i32 1
  %22 = load %struct.jpeg_memory_mgr*, %struct.jpeg_memory_mgr** %mem3, align 8, !tbaa !6
  %alloc_large = getelementptr inbounds %struct.jpeg_memory_mgr, %struct.jpeg_memory_mgr* %22, i32 0, i32 1
  %23 = load i8* (%struct.jpeg_common_struct*, i32, i64)*, i8* (%struct.jpeg_common_struct*, i32, i64)** %alloc_large, align 8, !tbaa !22
  %24 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8, !tbaa !1
  %25 = bitcast %struct.jpeg_compress_struct* %24 to %struct.jpeg_common_struct*
  %call4 = call i8* %23(%struct.jpeg_common_struct* %25, i32 1, i64 1280) #3
  %26 = bitcast i8* %call4 to [64 x i16]*
  store [64 x i16]* %26, [64 x i16]** %buffer, align 8, !tbaa !1
  store i32 0, i32* %i, align 4, !tbaa !23
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.else
  %27 = load i32, i32* %i, align 4, !tbaa !23
  %cmp = icmp slt i32 %27, 10
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %28 = load [64 x i16]*, [64 x i16]** %buffer, align 8, !tbaa !1
  %29 = load i32, i32* %i, align 4, !tbaa !23
  %idx.ext = sext i32 %29 to i64
  %add.ptr = getelementptr inbounds [64 x i16], [64 x i16]* %28, i64 %idx.ext
  %30 = load i32, i32* %i, align 4, !tbaa !23
  %idxprom = sext i32 %30 to i64
  %31 = load %struct.my_coef_controller*, %struct.my_coef_controller** %coef, align 8, !tbaa !1
  %MCU_buffer = getelementptr inbounds %struct.my_coef_controller, %struct.my_coef_controller* %31, i32 0, i32 5
  %arrayidx = getelementptr inbounds [10 x [64 x i16]*], [10 x [64 x i16]*]* %MCU_buffer, i32 0, i64 %idxprom
  store [64 x i16]* %add.ptr, [64 x i16]** %arrayidx, align 8, !tbaa !1
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %32 = load i32, i32* %i, align 4, !tbaa !23
  %inc = add nsw i32 %32, 1
  store i32 %inc, i32* %i, align 4, !tbaa !23
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %33 = load %struct.my_coef_controller*, %struct.my_coef_controller** %coef, align 8, !tbaa !1
  %whole_image = getelementptr inbounds %struct.my_coef_controller, %struct.my_coef_controller* %33, i32 0, i32 6
  %arrayidx5 = getelementptr inbounds [10 x %struct.jvirt_barray_control*], [10 x %struct.jvirt_barray_control*]* %whole_image, i32 0, i64 0
  store %struct.jvirt_barray_control* null, %struct.jvirt_barray_control** %arrayidx5, align 8, !tbaa !1
  %34 = bitcast i32* %i to i8*
  call void @llvm.lifetime.end(i64 4, i8* %34) #1
  %35 = bitcast [64 x i16]** %buffer to i8*
  call void @llvm.lifetime.end(i64 8, i8* %35) #1
  br label %if.end

if.end:                                           ; preds = %for.end, %if.then
  %36 = bitcast %struct.my_coef_controller** %coef to i8*
  call void @llvm.lifetime.end(i64 8, i8* %36) #1
  ret void
}

; Function Attrs: nounwind
declare void @llvm.lifetime.start(i64, i8* nocapture) #1

; Function Attrs: nounwind uwtable
define internal void @start_pass_coef(%struct.jpeg_compress_struct* %cinfo, i32 %pass_mode) #0 {
entry:
  %cinfo.addr = alloca %struct.jpeg_compress_struct*, align 8
  %pass_mode.addr = alloca i32, align 4
  %coef = alloca %struct.my_coef_controller*, align 8
  store %struct.jpeg_compress_struct* %cinfo, %struct.jpeg_compress_struct** %cinfo.addr, align 8, !tbaa !1
  store i32 %pass_mode, i32* %pass_mode.addr, align 4, !tbaa !5
  %0 = bitcast %struct.my_coef_controller** %coef to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #1
  %1 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8, !tbaa !1
  %coef1 = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %1, i32 0, i32 69
  %2 = load %struct.jpeg_c_coef_controller*, %struct.jpeg_c_coef_controller** %coef1, align 8, !tbaa !14
  %3 = bitcast %struct.jpeg_c_coef_controller* %2 to %struct.my_coef_controller*
  store %struct.my_coef_controller* %3, %struct.my_coef_controller** %coef, align 8, !tbaa !1
  %4 = load %struct.my_coef_controller*, %struct.my_coef_controller** %coef, align 8, !tbaa !1
  %iMCU_row_num = getelementptr inbounds %struct.my_coef_controller, %struct.my_coef_controller* %4, i32 0, i32 1
  store i32 0, i32* %iMCU_row_num, align 4, !tbaa !24
  %5 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8, !tbaa !1
  call void @start_iMCU_row(%struct.jpeg_compress_struct* %5) #3
  %6 = load i32, i32* %pass_mode.addr, align 4, !tbaa !5
  switch i32 %6, label %sw.default [
    i32 0, label %sw.bb
  ]

sw.bb:                                            ; preds = %entry
  %7 = load %struct.my_coef_controller*, %struct.my_coef_controller** %coef, align 8, !tbaa !1
  %whole_image = getelementptr inbounds %struct.my_coef_controller, %struct.my_coef_controller* %7, i32 0, i32 6
  %arrayidx = getelementptr inbounds [10 x %struct.jvirt_barray_control*], [10 x %struct.jvirt_barray_control*]* %whole_image, i32 0, i64 0
  %8 = load %struct.jvirt_barray_control*, %struct.jvirt_barray_control** %arrayidx, align 8, !tbaa !1
  %cmp = icmp ne %struct.jvirt_barray_control* %8, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %sw.bb
  %9 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8, !tbaa !1
  %err = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %9, i32 0, i32 0
  %10 = load %struct.jpeg_error_mgr*, %struct.jpeg_error_mgr** %err, align 8, !tbaa !18
  %msg_code = getelementptr inbounds %struct.jpeg_error_mgr, %struct.jpeg_error_mgr* %10, i32 0, i32 5
  store i32 3, i32* %msg_code, align 4, !tbaa !19
  %11 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8, !tbaa !1
  %err2 = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %11, i32 0, i32 0
  %12 = load %struct.jpeg_error_mgr*, %struct.jpeg_error_mgr** %err2, align 8, !tbaa !18
  %error_exit = getelementptr inbounds %struct.jpeg_error_mgr, %struct.jpeg_error_mgr* %12, i32 0, i32 0
  %13 = load void (%struct.jpeg_common_struct*)*, void (%struct.jpeg_common_struct*)** %error_exit, align 8, !tbaa !21
  %14 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8, !tbaa !1
  %15 = bitcast %struct.jpeg_compress_struct* %14 to %struct.jpeg_common_struct*
  call void %13(%struct.jpeg_common_struct* %15) #3
  br label %if.end

if.end:                                           ; preds = %if.then, %sw.bb
  %16 = load %struct.my_coef_controller*, %struct.my_coef_controller** %coef, align 8, !tbaa !1
  %pub = getelementptr inbounds %struct.my_coef_controller, %struct.my_coef_controller* %16, i32 0, i32 0
  %compress_data = getelementptr inbounds %struct.jpeg_c_coef_controller, %struct.jpeg_c_coef_controller* %pub, i32 0, i32 1
  store i32 (%struct.jpeg_compress_struct*, i8***)* @compress_data, i32 (%struct.jpeg_compress_struct*, i8***)** %compress_data, align 8, !tbaa !25
  br label %sw.epilog

sw.default:                                       ; preds = %entry
  %17 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8, !tbaa !1
  %err3 = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %17, i32 0, i32 0
  %18 = load %struct.jpeg_error_mgr*, %struct.jpeg_error_mgr** %err3, align 8, !tbaa !18
  %msg_code4 = getelementptr inbounds %struct.jpeg_error_mgr, %struct.jpeg_error_mgr* %18, i32 0, i32 5
  store i32 3, i32* %msg_code4, align 4, !tbaa !19
  %19 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8, !tbaa !1
  %err5 = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %19, i32 0, i32 0
  %20 = load %struct.jpeg_error_mgr*, %struct.jpeg_error_mgr** %err5, align 8, !tbaa !18
  %error_exit6 = getelementptr inbounds %struct.jpeg_error_mgr, %struct.jpeg_error_mgr* %20, i32 0, i32 0
  %21 = load void (%struct.jpeg_common_struct*)*, void (%struct.jpeg_common_struct*)** %error_exit6, align 8, !tbaa !21
  %22 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8, !tbaa !1
  %23 = bitcast %struct.jpeg_compress_struct* %22 to %struct.jpeg_common_struct*
  call void %21(%struct.jpeg_common_struct* %23) #3
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.default, %if.end
  %24 = bitcast %struct.my_coef_controller** %coef to i8*
  call void @llvm.lifetime.end(i64 8, i8* %24) #1
  ret void
}

; Function Attrs: nounwind
declare void @llvm.lifetime.end(i64, i8* nocapture) #1

; Function Attrs: nounwind uwtable
define internal void @start_iMCU_row(%struct.jpeg_compress_struct* %cinfo) #0 {
entry:
  %cinfo.addr = alloca %struct.jpeg_compress_struct*, align 8
  %coef = alloca %struct.my_coef_controller*, align 8
  store %struct.jpeg_compress_struct* %cinfo, %struct.jpeg_compress_struct** %cinfo.addr, align 8, !tbaa !1
  %0 = bitcast %struct.my_coef_controller** %coef to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #1
  %1 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8, !tbaa !1
  %coef1 = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %1, i32 0, i32 69
  %2 = load %struct.jpeg_c_coef_controller*, %struct.jpeg_c_coef_controller** %coef1, align 8, !tbaa !14
  %3 = bitcast %struct.jpeg_c_coef_controller* %2 to %struct.my_coef_controller*
  store %struct.my_coef_controller* %3, %struct.my_coef_controller** %coef, align 8, !tbaa !1
  %4 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8, !tbaa !1
  %comps_in_scan = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %4, i32 0, i32 53
  %5 = load i32, i32* %comps_in_scan, align 4, !tbaa !26
  %cmp = icmp sgt i32 %5, 1
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %6 = load %struct.my_coef_controller*, %struct.my_coef_controller** %coef, align 8, !tbaa !1
  %MCU_rows_per_iMCU_row = getelementptr inbounds %struct.my_coef_controller, %struct.my_coef_controller* %6, i32 0, i32 4
  store i32 1, i32* %MCU_rows_per_iMCU_row, align 4, !tbaa !27
  br label %if.end.9

if.else:                                          ; preds = %entry
  %7 = load %struct.my_coef_controller*, %struct.my_coef_controller** %coef, align 8, !tbaa !1
  %iMCU_row_num = getelementptr inbounds %struct.my_coef_controller, %struct.my_coef_controller* %7, i32 0, i32 1
  %8 = load i32, i32* %iMCU_row_num, align 4, !tbaa !24
  %9 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8, !tbaa !1
  %total_iMCU_rows = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %9, i32 0, i32 52
  %10 = load i32, i32* %total_iMCU_rows, align 4, !tbaa !28
  %sub = sub i32 %10, 1
  %cmp2 = icmp ult i32 %8, %sub
  br i1 %cmp2, label %if.then.3, label %if.else.5

if.then.3:                                        ; preds = %if.else
  %11 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8, !tbaa !1
  %cur_comp_info = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %11, i32 0, i32 54
  %arrayidx = getelementptr inbounds [4 x %struct.jpeg_component_info*], [4 x %struct.jpeg_component_info*]* %cur_comp_info, i32 0, i64 0
  %12 = load %struct.jpeg_component_info*, %struct.jpeg_component_info** %arrayidx, align 8, !tbaa !1
  %v_samp_factor = getelementptr inbounds %struct.jpeg_component_info, %struct.jpeg_component_info* %12, i32 0, i32 3
  %13 = load i32, i32* %v_samp_factor, align 4, !tbaa !29
  %14 = load %struct.my_coef_controller*, %struct.my_coef_controller** %coef, align 8, !tbaa !1
  %MCU_rows_per_iMCU_row4 = getelementptr inbounds %struct.my_coef_controller, %struct.my_coef_controller* %14, i32 0, i32 4
  store i32 %13, i32* %MCU_rows_per_iMCU_row4, align 4, !tbaa !27
  br label %if.end

if.else.5:                                        ; preds = %if.else
  %15 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8, !tbaa !1
  %cur_comp_info6 = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %15, i32 0, i32 54
  %arrayidx7 = getelementptr inbounds [4 x %struct.jpeg_component_info*], [4 x %struct.jpeg_component_info*]* %cur_comp_info6, i32 0, i64 0
  %16 = load %struct.jpeg_component_info*, %struct.jpeg_component_info** %arrayidx7, align 8, !tbaa !1
  %last_row_height = getelementptr inbounds %struct.jpeg_component_info, %struct.jpeg_component_info* %16, i32 0, i32 19
  %17 = load i32, i32* %last_row_height, align 4, !tbaa !31
  %18 = load %struct.my_coef_controller*, %struct.my_coef_controller** %coef, align 8, !tbaa !1
  %MCU_rows_per_iMCU_row8 = getelementptr inbounds %struct.my_coef_controller, %struct.my_coef_controller* %18, i32 0, i32 4
  store i32 %17, i32* %MCU_rows_per_iMCU_row8, align 4, !tbaa !27
  br label %if.end

if.end:                                           ; preds = %if.else.5, %if.then.3
  br label %if.end.9

if.end.9:                                         ; preds = %if.end, %if.then
  %19 = load %struct.my_coef_controller*, %struct.my_coef_controller** %coef, align 8, !tbaa !1
  %mcu_ctr = getelementptr inbounds %struct.my_coef_controller, %struct.my_coef_controller* %19, i32 0, i32 2
  store i32 0, i32* %mcu_ctr, align 4, !tbaa !32
  %20 = load %struct.my_coef_controller*, %struct.my_coef_controller** %coef, align 8, !tbaa !1
  %MCU_vert_offset = getelementptr inbounds %struct.my_coef_controller, %struct.my_coef_controller* %20, i32 0, i32 3
  store i32 0, i32* %MCU_vert_offset, align 4, !tbaa !33
  %21 = bitcast %struct.my_coef_controller** %coef to i8*
  call void @llvm.lifetime.end(i64 8, i8* %21) #1
  ret void
}

; Function Attrs: nounwind uwtable
define internal i32 @compress_data(%struct.jpeg_compress_struct* %cinfo, i8*** %input_buf) #0 {
entry:
  %retval = alloca i32, align 4
  %cinfo.addr = alloca %struct.jpeg_compress_struct*, align 8
  %input_buf.addr = alloca i8***, align 8
  %coef = alloca %struct.my_coef_controller*, align 8
  %MCU_col_num = alloca i32, align 4
  %last_MCU_col = alloca i32, align 4
  %last_iMCU_row = alloca i32, align 4
  %blkn = alloca i32, align 4
  %bi = alloca i32, align 4
  %ci = alloca i32, align 4
  %yindex = alloca i32, align 4
  %yoffset = alloca i32, align 4
  %blockcnt = alloca i32, align 4
  %ypos = alloca i32, align 4
  %xpos = alloca i32, align 4
  %compptr = alloca %struct.jpeg_component_info*, align 8
  %forward_DCT = alloca void (%struct.jpeg_compress_struct*, %struct.jpeg_component_info*, i8**, [64 x i16]*, i32, i32, i32)*, align 8
  %cleanup.dest.slot = alloca i32
  store %struct.jpeg_compress_struct* %cinfo, %struct.jpeg_compress_struct** %cinfo.addr, align 8, !tbaa !1
  store i8*** %input_buf, i8**** %input_buf.addr, align 8, !tbaa !1
  %0 = bitcast %struct.my_coef_controller** %coef to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #1
  %1 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8, !tbaa !1
  %coef1 = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %1, i32 0, i32 69
  %2 = load %struct.jpeg_c_coef_controller*, %struct.jpeg_c_coef_controller** %coef1, align 8, !tbaa !14
  %3 = bitcast %struct.jpeg_c_coef_controller* %2 to %struct.my_coef_controller*
  store %struct.my_coef_controller* %3, %struct.my_coef_controller** %coef, align 8, !tbaa !1
  %4 = bitcast i32* %MCU_col_num to i8*
  call void @llvm.lifetime.start(i64 4, i8* %4) #1
  %5 = bitcast i32* %last_MCU_col to i8*
  call void @llvm.lifetime.start(i64 4, i8* %5) #1
  %6 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8, !tbaa !1
  %MCUs_per_row = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %6, i32 0, i32 55
  %7 = load i32, i32* %MCUs_per_row, align 4, !tbaa !34
  %sub = sub i32 %7, 1
  store i32 %sub, i32* %last_MCU_col, align 4, !tbaa !23
  %8 = bitcast i32* %last_iMCU_row to i8*
  call void @llvm.lifetime.start(i64 4, i8* %8) #1
  %9 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8, !tbaa !1
  %total_iMCU_rows = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %9, i32 0, i32 52
  %10 = load i32, i32* %total_iMCU_rows, align 4, !tbaa !28
  %sub2 = sub i32 %10, 1
  store i32 %sub2, i32* %last_iMCU_row, align 4, !tbaa !23
  %11 = bitcast i32* %blkn to i8*
  call void @llvm.lifetime.start(i64 4, i8* %11) #1
  %12 = bitcast i32* %bi to i8*
  call void @llvm.lifetime.start(i64 4, i8* %12) #1
  %13 = bitcast i32* %ci to i8*
  call void @llvm.lifetime.start(i64 4, i8* %13) #1
  %14 = bitcast i32* %yindex to i8*
  call void @llvm.lifetime.start(i64 4, i8* %14) #1
  %15 = bitcast i32* %yoffset to i8*
  call void @llvm.lifetime.start(i64 4, i8* %15) #1
  %16 = bitcast i32* %blockcnt to i8*
  call void @llvm.lifetime.start(i64 4, i8* %16) #1
  %17 = bitcast i32* %ypos to i8*
  call void @llvm.lifetime.start(i64 4, i8* %17) #1
  %18 = bitcast i32* %xpos to i8*
  call void @llvm.lifetime.start(i64 4, i8* %18) #1
  %19 = bitcast %struct.jpeg_component_info** %compptr to i8*
  call void @llvm.lifetime.start(i64 8, i8* %19) #1
  %20 = bitcast void (%struct.jpeg_compress_struct*, %struct.jpeg_component_info*, i8**, [64 x i16]*, i32, i32, i32)** %forward_DCT to i8*
  call void @llvm.lifetime.start(i64 8, i8* %20) #1
  %21 = load %struct.my_coef_controller*, %struct.my_coef_controller** %coef, align 8, !tbaa !1
  %MCU_vert_offset = getelementptr inbounds %struct.my_coef_controller, %struct.my_coef_controller* %21, i32 0, i32 3
  %22 = load i32, i32* %MCU_vert_offset, align 4, !tbaa !33
  store i32 %22, i32* %yoffset, align 4, !tbaa !23
  br label %for.cond

for.cond:                                         ; preds = %for.inc.100, %entry
  %23 = load i32, i32* %yoffset, align 4, !tbaa !23
  %24 = load %struct.my_coef_controller*, %struct.my_coef_controller** %coef, align 8, !tbaa !1
  %MCU_rows_per_iMCU_row = getelementptr inbounds %struct.my_coef_controller, %struct.my_coef_controller* %24, i32 0, i32 4
  %25 = load i32, i32* %MCU_rows_per_iMCU_row, align 4, !tbaa !27
  %cmp = icmp slt i32 %23, %25
  br i1 %cmp, label %for.body, label %for.end.102

for.body:                                         ; preds = %for.cond
  %26 = load %struct.my_coef_controller*, %struct.my_coef_controller** %coef, align 8, !tbaa !1
  %mcu_ctr = getelementptr inbounds %struct.my_coef_controller, %struct.my_coef_controller* %26, i32 0, i32 2
  %27 = load i32, i32* %mcu_ctr, align 4, !tbaa !32
  store i32 %27, i32* %MCU_col_num, align 4, !tbaa !23
  br label %for.cond.3

for.cond.3:                                       ; preds = %for.inc.96, %for.body
  %28 = load i32, i32* %MCU_col_num, align 4, !tbaa !23
  %29 = load i32, i32* %last_MCU_col, align 4, !tbaa !23
  %cmp4 = icmp ule i32 %28, %29
  br i1 %cmp4, label %for.body.5, label %for.end.98

for.body.5:                                       ; preds = %for.cond.3
  store i32 0, i32* %blkn, align 4, !tbaa !23
  store i32 0, i32* %ci, align 4, !tbaa !23
  br label %for.cond.6

for.cond.6:                                       ; preds = %for.inc.87, %for.body.5
  %30 = load i32, i32* %ci, align 4, !tbaa !23
  %31 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8, !tbaa !1
  %comps_in_scan = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %31, i32 0, i32 53
  %32 = load i32, i32* %comps_in_scan, align 4, !tbaa !26
  %cmp7 = icmp slt i32 %30, %32
  br i1 %cmp7, label %for.body.8, label %for.end.89

for.body.8:                                       ; preds = %for.cond.6
  %33 = load i32, i32* %ci, align 4, !tbaa !23
  %idxprom = sext i32 %33 to i64
  %34 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8, !tbaa !1
  %cur_comp_info = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %34, i32 0, i32 54
  %arrayidx = getelementptr inbounds [4 x %struct.jpeg_component_info*], [4 x %struct.jpeg_component_info*]* %cur_comp_info, i32 0, i64 %idxprom
  %35 = load %struct.jpeg_component_info*, %struct.jpeg_component_info** %arrayidx, align 8, !tbaa !1
  store %struct.jpeg_component_info* %35, %struct.jpeg_component_info** %compptr, align 8, !tbaa !1
  %36 = load %struct.jpeg_component_info*, %struct.jpeg_component_info** %compptr, align 8, !tbaa !1
  %component_index = getelementptr inbounds %struct.jpeg_component_info, %struct.jpeg_component_info* %36, i32 0, i32 1
  %37 = load i32, i32* %component_index, align 4, !tbaa !35
  %idxprom9 = sext i32 %37 to i64
  %38 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8, !tbaa !1
  %fdct = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %38, i32 0, i32 73
  %39 = load %struct.jpeg_forward_dct*, %struct.jpeg_forward_dct** %fdct, align 8, !tbaa !36
  %forward_DCT10 = getelementptr inbounds %struct.jpeg_forward_dct, %struct.jpeg_forward_dct* %39, i32 0, i32 1
  %arrayidx11 = getelementptr inbounds [10 x void (%struct.jpeg_compress_struct*, %struct.jpeg_component_info*, i8**, [64 x i16]*, i32, i32, i32)*], [10 x void (%struct.jpeg_compress_struct*, %struct.jpeg_component_info*, i8**, [64 x i16]*, i32, i32, i32)*]* %forward_DCT10, i32 0, i64 %idxprom9
  %40 = load void (%struct.jpeg_compress_struct*, %struct.jpeg_component_info*, i8**, [64 x i16]*, i32, i32, i32)*, void (%struct.jpeg_compress_struct*, %struct.jpeg_component_info*, i8**, [64 x i16]*, i32, i32, i32)** %arrayidx11, align 8, !tbaa !1
  store void (%struct.jpeg_compress_struct*, %struct.jpeg_component_info*, i8**, [64 x i16]*, i32, i32, i32)* %40, void (%struct.jpeg_compress_struct*, %struct.jpeg_component_info*, i8**, [64 x i16]*, i32, i32, i32)** %forward_DCT, align 8, !tbaa !1
  %41 = load i32, i32* %MCU_col_num, align 4, !tbaa !23
  %42 = load i32, i32* %last_MCU_col, align 4, !tbaa !23
  %cmp12 = icmp ult i32 %41, %42
  br i1 %cmp12, label %cond.true, label %cond.false

cond.true:                                        ; preds = %for.body.8
  %43 = load %struct.jpeg_component_info*, %struct.jpeg_component_info** %compptr, align 8, !tbaa !1
  %MCU_width = getelementptr inbounds %struct.jpeg_component_info, %struct.jpeg_component_info* %43, i32 0, i32 14
  %44 = load i32, i32* %MCU_width, align 4, !tbaa !37
  br label %cond.end

cond.false:                                       ; preds = %for.body.8
  %45 = load %struct.jpeg_component_info*, %struct.jpeg_component_info** %compptr, align 8, !tbaa !1
  %last_col_width = getelementptr inbounds %struct.jpeg_component_info, %struct.jpeg_component_info* %45, i32 0, i32 18
  %46 = load i32, i32* %last_col_width, align 4, !tbaa !38
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %44, %cond.true ], [ %46, %cond.false ]
  store i32 %cond, i32* %blockcnt, align 4, !tbaa !23
  %47 = load i32, i32* %MCU_col_num, align 4, !tbaa !23
  %48 = load %struct.jpeg_component_info*, %struct.jpeg_component_info** %compptr, align 8, !tbaa !1
  %MCU_sample_width = getelementptr inbounds %struct.jpeg_component_info, %struct.jpeg_component_info* %48, i32 0, i32 17
  %49 = load i32, i32* %MCU_sample_width, align 4, !tbaa !39
  %mul = mul i32 %47, %49
  store i32 %mul, i32* %xpos, align 4, !tbaa !23
  %50 = load i32, i32* %yoffset, align 4, !tbaa !23
  %51 = load %struct.jpeg_component_info*, %struct.jpeg_component_info** %compptr, align 8, !tbaa !1
  %DCT_v_scaled_size = getelementptr inbounds %struct.jpeg_component_info, %struct.jpeg_component_info* %51, i32 0, i32 10
  %52 = load i32, i32* %DCT_v_scaled_size, align 4, !tbaa !40
  %mul13 = mul nsw i32 %50, %52
  store i32 %mul13, i32* %ypos, align 4, !tbaa !23
  store i32 0, i32* %yindex, align 4, !tbaa !23
  br label %for.cond.14

for.cond.14:                                      ; preds = %for.inc.84, %cond.end
  %53 = load i32, i32* %yindex, align 4, !tbaa !23
  %54 = load %struct.jpeg_component_info*, %struct.jpeg_component_info** %compptr, align 8, !tbaa !1
  %MCU_height = getelementptr inbounds %struct.jpeg_component_info, %struct.jpeg_component_info* %54, i32 0, i32 15
  %55 = load i32, i32* %MCU_height, align 4, !tbaa !41
  %cmp15 = icmp slt i32 %53, %55
  br i1 %cmp15, label %for.body.16, label %for.end.86

for.body.16:                                      ; preds = %for.cond.14
  %56 = load %struct.my_coef_controller*, %struct.my_coef_controller** %coef, align 8, !tbaa !1
  %iMCU_row_num = getelementptr inbounds %struct.my_coef_controller, %struct.my_coef_controller* %56, i32 0, i32 1
  %57 = load i32, i32* %iMCU_row_num, align 4, !tbaa !24
  %58 = load i32, i32* %last_iMCU_row, align 4, !tbaa !23
  %cmp17 = icmp ult i32 %57, %58
  br i1 %cmp17, label %if.then, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %for.body.16
  %59 = load i32, i32* %yoffset, align 4, !tbaa !23
  %60 = load i32, i32* %yindex, align 4, !tbaa !23
  %add = add nsw i32 %59, %60
  %61 = load %struct.jpeg_component_info*, %struct.jpeg_component_info** %compptr, align 8, !tbaa !1
  %last_row_height = getelementptr inbounds %struct.jpeg_component_info, %struct.jpeg_component_info* %61, i32 0, i32 19
  %62 = load i32, i32* %last_row_height, align 4, !tbaa !31
  %cmp18 = icmp slt i32 %add, %62
  br i1 %cmp18, label %if.then, label %if.else

if.then:                                          ; preds = %lor.lhs.false, %for.body.16
  %63 = load void (%struct.jpeg_compress_struct*, %struct.jpeg_component_info*, i8**, [64 x i16]*, i32, i32, i32)*, void (%struct.jpeg_compress_struct*, %struct.jpeg_component_info*, i8**, [64 x i16]*, i32, i32, i32)** %forward_DCT, align 8, !tbaa !1
  %64 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8, !tbaa !1
  %65 = load %struct.jpeg_component_info*, %struct.jpeg_component_info** %compptr, align 8, !tbaa !1
  %66 = load %struct.jpeg_component_info*, %struct.jpeg_component_info** %compptr, align 8, !tbaa !1
  %component_index19 = getelementptr inbounds %struct.jpeg_component_info, %struct.jpeg_component_info* %66, i32 0, i32 1
  %67 = load i32, i32* %component_index19, align 4, !tbaa !35
  %idxprom20 = sext i32 %67 to i64
  %68 = load i8***, i8**** %input_buf.addr, align 8, !tbaa !1
  %arrayidx21 = getelementptr inbounds i8**, i8*** %68, i64 %idxprom20
  %69 = load i8**, i8*** %arrayidx21, align 8, !tbaa !1
  %70 = load i32, i32* %blkn, align 4, !tbaa !23
  %idxprom22 = sext i32 %70 to i64
  %71 = load %struct.my_coef_controller*, %struct.my_coef_controller** %coef, align 8, !tbaa !1
  %MCU_buffer = getelementptr inbounds %struct.my_coef_controller, %struct.my_coef_controller* %71, i32 0, i32 5
  %arrayidx23 = getelementptr inbounds [10 x [64 x i16]*], [10 x [64 x i16]*]* %MCU_buffer, i32 0, i64 %idxprom22
  %72 = load [64 x i16]*, [64 x i16]** %arrayidx23, align 8, !tbaa !1
  %73 = load i32, i32* %ypos, align 4, !tbaa !23
  %74 = load i32, i32* %xpos, align 4, !tbaa !23
  %75 = load i32, i32* %blockcnt, align 4, !tbaa !23
  call void %63(%struct.jpeg_compress_struct* %64, %struct.jpeg_component_info* %65, i8** %69, [64 x i16]* %72, i32 %73, i32 %74, i32 %75) #3
  %76 = load i32, i32* %blockcnt, align 4, !tbaa !23
  %77 = load %struct.jpeg_component_info*, %struct.jpeg_component_info** %compptr, align 8, !tbaa !1
  %MCU_width24 = getelementptr inbounds %struct.jpeg_component_info, %struct.jpeg_component_info* %77, i32 0, i32 14
  %78 = load i32, i32* %MCU_width24, align 4, !tbaa !37
  %cmp25 = icmp slt i32 %76, %78
  br i1 %cmp25, label %if.then.26, label %if.end

if.then.26:                                       ; preds = %if.then
  %79 = load i32, i32* %blkn, align 4, !tbaa !23
  %80 = load i32, i32* %blockcnt, align 4, !tbaa !23
  %add27 = add nsw i32 %79, %80
  %idxprom28 = sext i32 %add27 to i64
  %81 = load %struct.my_coef_controller*, %struct.my_coef_controller** %coef, align 8, !tbaa !1
  %MCU_buffer29 = getelementptr inbounds %struct.my_coef_controller, %struct.my_coef_controller* %81, i32 0, i32 5
  %arrayidx30 = getelementptr inbounds [10 x [64 x i16]*], [10 x [64 x i16]*]* %MCU_buffer29, i32 0, i64 %idxprom28
  %82 = load [64 x i16]*, [64 x i16]** %arrayidx30, align 8, !tbaa !1
  %83 = bitcast [64 x i16]* %82 to i8*
  %84 = load %struct.jpeg_component_info*, %struct.jpeg_component_info** %compptr, align 8, !tbaa !1
  %MCU_width31 = getelementptr inbounds %struct.jpeg_component_info, %struct.jpeg_component_info* %84, i32 0, i32 14
  %85 = load i32, i32* %MCU_width31, align 4, !tbaa !37
  %86 = load i32, i32* %blockcnt, align 4, !tbaa !23
  %sub32 = sub nsw i32 %85, %86
  %conv = sext i32 %sub32 to i64
  %mul33 = mul i64 %conv, 128
  %call = call i8* @memset(i8* %83, i32 0, i64 %mul33) #4
  %87 = load i32, i32* %blockcnt, align 4, !tbaa !23
  store i32 %87, i32* %bi, align 4, !tbaa !23
  br label %for.cond.34

for.cond.34:                                      ; preds = %for.inc, %if.then.26
  %88 = load i32, i32* %bi, align 4, !tbaa !23
  %89 = load %struct.jpeg_component_info*, %struct.jpeg_component_info** %compptr, align 8, !tbaa !1
  %MCU_width35 = getelementptr inbounds %struct.jpeg_component_info, %struct.jpeg_component_info* %89, i32 0, i32 14
  %90 = load i32, i32* %MCU_width35, align 4, !tbaa !37
  %cmp36 = icmp slt i32 %88, %90
  br i1 %cmp36, label %for.body.38, label %for.end

for.body.38:                                      ; preds = %for.cond.34
  %91 = load i32, i32* %blkn, align 4, !tbaa !23
  %92 = load i32, i32* %bi, align 4, !tbaa !23
  %add39 = add nsw i32 %91, %92
  %sub40 = sub nsw i32 %add39, 1
  %idxprom41 = sext i32 %sub40 to i64
  %93 = load %struct.my_coef_controller*, %struct.my_coef_controller** %coef, align 8, !tbaa !1
  %MCU_buffer42 = getelementptr inbounds %struct.my_coef_controller, %struct.my_coef_controller* %93, i32 0, i32 5
  %arrayidx43 = getelementptr inbounds [10 x [64 x i16]*], [10 x [64 x i16]*]* %MCU_buffer42, i32 0, i64 %idxprom41
  %94 = load [64 x i16]*, [64 x i16]** %arrayidx43, align 8, !tbaa !1
  %arrayidx44 = getelementptr inbounds [64 x i16], [64 x i16]* %94, i64 0
  %arrayidx45 = getelementptr inbounds [64 x i16], [64 x i16]* %arrayidx44, i32 0, i64 0
  %95 = load i16, i16* %arrayidx45, align 2, !tbaa !42
  %96 = load i32, i32* %blkn, align 4, !tbaa !23
  %97 = load i32, i32* %bi, align 4, !tbaa !23
  %add46 = add nsw i32 %96, %97
  %idxprom47 = sext i32 %add46 to i64
  %98 = load %struct.my_coef_controller*, %struct.my_coef_controller** %coef, align 8, !tbaa !1
  %MCU_buffer48 = getelementptr inbounds %struct.my_coef_controller, %struct.my_coef_controller* %98, i32 0, i32 5
  %arrayidx49 = getelementptr inbounds [10 x [64 x i16]*], [10 x [64 x i16]*]* %MCU_buffer48, i32 0, i64 %idxprom47
  %99 = load [64 x i16]*, [64 x i16]** %arrayidx49, align 8, !tbaa !1
  %arrayidx50 = getelementptr inbounds [64 x i16], [64 x i16]* %99, i64 0
  %arrayidx51 = getelementptr inbounds [64 x i16], [64 x i16]* %arrayidx50, i32 0, i64 0
  store i16 %95, i16* %arrayidx51, align 2, !tbaa !42
  br label %for.inc

for.inc:                                          ; preds = %for.body.38
  %100 = load i32, i32* %bi, align 4, !tbaa !23
  %inc = add nsw i32 %100, 1
  store i32 %inc, i32* %bi, align 4, !tbaa !23
  br label %for.cond.34

for.end:                                          ; preds = %for.cond.34
  br label %if.end

if.end:                                           ; preds = %for.end, %if.then
  br label %if.end.79

if.else:                                          ; preds = %lor.lhs.false
  %101 = load i32, i32* %blkn, align 4, !tbaa !23
  %idxprom52 = sext i32 %101 to i64
  %102 = load %struct.my_coef_controller*, %struct.my_coef_controller** %coef, align 8, !tbaa !1
  %MCU_buffer53 = getelementptr inbounds %struct.my_coef_controller, %struct.my_coef_controller* %102, i32 0, i32 5
  %arrayidx54 = getelementptr inbounds [10 x [64 x i16]*], [10 x [64 x i16]*]* %MCU_buffer53, i32 0, i64 %idxprom52
  %103 = load [64 x i16]*, [64 x i16]** %arrayidx54, align 8, !tbaa !1
  %104 = bitcast [64 x i16]* %103 to i8*
  %105 = load %struct.jpeg_component_info*, %struct.jpeg_component_info** %compptr, align 8, !tbaa !1
  %MCU_width55 = getelementptr inbounds %struct.jpeg_component_info, %struct.jpeg_component_info* %105, i32 0, i32 14
  %106 = load i32, i32* %MCU_width55, align 4, !tbaa !37
  %conv56 = sext i32 %106 to i64
  %mul57 = mul i64 %conv56, 128
  %call58 = call i8* @memset(i8* %104, i32 0, i64 %mul57) #4
  store i32 0, i32* %bi, align 4, !tbaa !23
  br label %for.cond.59

for.cond.59:                                      ; preds = %for.inc.76, %if.else
  %107 = load i32, i32* %bi, align 4, !tbaa !23
  %108 = load %struct.jpeg_component_info*, %struct.jpeg_component_info** %compptr, align 8, !tbaa !1
  %MCU_width60 = getelementptr inbounds %struct.jpeg_component_info, %struct.jpeg_component_info* %108, i32 0, i32 14
  %109 = load i32, i32* %MCU_width60, align 4, !tbaa !37
  %cmp61 = icmp slt i32 %107, %109
  br i1 %cmp61, label %for.body.63, label %for.end.78

for.body.63:                                      ; preds = %for.cond.59
  %110 = load i32, i32* %blkn, align 4, !tbaa !23
  %sub64 = sub nsw i32 %110, 1
  %idxprom65 = sext i32 %sub64 to i64
  %111 = load %struct.my_coef_controller*, %struct.my_coef_controller** %coef, align 8, !tbaa !1
  %MCU_buffer66 = getelementptr inbounds %struct.my_coef_controller, %struct.my_coef_controller* %111, i32 0, i32 5
  %arrayidx67 = getelementptr inbounds [10 x [64 x i16]*], [10 x [64 x i16]*]* %MCU_buffer66, i32 0, i64 %idxprom65
  %112 = load [64 x i16]*, [64 x i16]** %arrayidx67, align 8, !tbaa !1
  %arrayidx68 = getelementptr inbounds [64 x i16], [64 x i16]* %112, i64 0
  %arrayidx69 = getelementptr inbounds [64 x i16], [64 x i16]* %arrayidx68, i32 0, i64 0
  %113 = load i16, i16* %arrayidx69, align 2, !tbaa !42
  %114 = load i32, i32* %blkn, align 4, !tbaa !23
  %115 = load i32, i32* %bi, align 4, !tbaa !23
  %add70 = add nsw i32 %114, %115
  %idxprom71 = sext i32 %add70 to i64
  %116 = load %struct.my_coef_controller*, %struct.my_coef_controller** %coef, align 8, !tbaa !1
  %MCU_buffer72 = getelementptr inbounds %struct.my_coef_controller, %struct.my_coef_controller* %116, i32 0, i32 5
  %arrayidx73 = getelementptr inbounds [10 x [64 x i16]*], [10 x [64 x i16]*]* %MCU_buffer72, i32 0, i64 %idxprom71
  %117 = load [64 x i16]*, [64 x i16]** %arrayidx73, align 8, !tbaa !1
  %arrayidx74 = getelementptr inbounds [64 x i16], [64 x i16]* %117, i64 0
  %arrayidx75 = getelementptr inbounds [64 x i16], [64 x i16]* %arrayidx74, i32 0, i64 0
  store i16 %113, i16* %arrayidx75, align 2, !tbaa !42
  br label %for.inc.76

for.inc.76:                                       ; preds = %for.body.63
  %118 = load i32, i32* %bi, align 4, !tbaa !23
  %inc77 = add nsw i32 %118, 1
  store i32 %inc77, i32* %bi, align 4, !tbaa !23
  br label %for.cond.59

for.end.78:                                       ; preds = %for.cond.59
  br label %if.end.79

if.end.79:                                        ; preds = %for.end.78, %if.end
  %119 = load %struct.jpeg_component_info*, %struct.jpeg_component_info** %compptr, align 8, !tbaa !1
  %MCU_width80 = getelementptr inbounds %struct.jpeg_component_info, %struct.jpeg_component_info* %119, i32 0, i32 14
  %120 = load i32, i32* %MCU_width80, align 4, !tbaa !37
  %121 = load i32, i32* %blkn, align 4, !tbaa !23
  %add81 = add nsw i32 %121, %120
  store i32 %add81, i32* %blkn, align 4, !tbaa !23
  %122 = load %struct.jpeg_component_info*, %struct.jpeg_component_info** %compptr, align 8, !tbaa !1
  %DCT_v_scaled_size82 = getelementptr inbounds %struct.jpeg_component_info, %struct.jpeg_component_info* %122, i32 0, i32 10
  %123 = load i32, i32* %DCT_v_scaled_size82, align 4, !tbaa !40
  %124 = load i32, i32* %ypos, align 4, !tbaa !23
  %add83 = add i32 %124, %123
  store i32 %add83, i32* %ypos, align 4, !tbaa !23
  br label %for.inc.84

for.inc.84:                                       ; preds = %if.end.79
  %125 = load i32, i32* %yindex, align 4, !tbaa !23
  %inc85 = add nsw i32 %125, 1
  store i32 %inc85, i32* %yindex, align 4, !tbaa !23
  br label %for.cond.14

for.end.86:                                       ; preds = %for.cond.14
  br label %for.inc.87

for.inc.87:                                       ; preds = %for.end.86
  %126 = load i32, i32* %ci, align 4, !tbaa !23
  %inc88 = add nsw i32 %126, 1
  store i32 %inc88, i32* %ci, align 4, !tbaa !23
  br label %for.cond.6

for.end.89:                                       ; preds = %for.cond.6
  %127 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8, !tbaa !1
  %entropy = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %127, i32 0, i32 74
  %128 = load %struct.jpeg_entropy_encoder*, %struct.jpeg_entropy_encoder** %entropy, align 8, !tbaa !43
  %encode_mcu = getelementptr inbounds %struct.jpeg_entropy_encoder, %struct.jpeg_entropy_encoder* %128, i32 0, i32 1
  %129 = load i32 (%struct.jpeg_compress_struct*, [64 x i16]**)*, i32 (%struct.jpeg_compress_struct*, [64 x i16]**)** %encode_mcu, align 8, !tbaa !44
  %130 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8, !tbaa !1
  %131 = load %struct.my_coef_controller*, %struct.my_coef_controller** %coef, align 8, !tbaa !1
  %MCU_buffer90 = getelementptr inbounds %struct.my_coef_controller, %struct.my_coef_controller* %131, i32 0, i32 5
  %arraydecay = getelementptr inbounds [10 x [64 x i16]*], [10 x [64 x i16]*]* %MCU_buffer90, i32 0, i32 0
  %call91 = call i32 %129(%struct.jpeg_compress_struct* %130, [64 x i16]** %arraydecay) #3
  %tobool = icmp ne i32 %call91, 0
  br i1 %tobool, label %if.end.95, label %if.then.92

if.then.92:                                       ; preds = %for.end.89
  %132 = load i32, i32* %yoffset, align 4, !tbaa !23
  %133 = load %struct.my_coef_controller*, %struct.my_coef_controller** %coef, align 8, !tbaa !1
  %MCU_vert_offset93 = getelementptr inbounds %struct.my_coef_controller, %struct.my_coef_controller* %133, i32 0, i32 3
  store i32 %132, i32* %MCU_vert_offset93, align 4, !tbaa !33
  %134 = load i32, i32* %MCU_col_num, align 4, !tbaa !23
  %135 = load %struct.my_coef_controller*, %struct.my_coef_controller** %coef, align 8, !tbaa !1
  %mcu_ctr94 = getelementptr inbounds %struct.my_coef_controller, %struct.my_coef_controller* %135, i32 0, i32 2
  store i32 %134, i32* %mcu_ctr94, align 4, !tbaa !32
  store i32 0, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.95:                                        ; preds = %for.end.89
  br label %for.inc.96

for.inc.96:                                       ; preds = %if.end.95
  %136 = load i32, i32* %MCU_col_num, align 4, !tbaa !23
  %inc97 = add i32 %136, 1
  store i32 %inc97, i32* %MCU_col_num, align 4, !tbaa !23
  br label %for.cond.3

for.end.98:                                       ; preds = %for.cond.3
  %137 = load %struct.my_coef_controller*, %struct.my_coef_controller** %coef, align 8, !tbaa !1
  %mcu_ctr99 = getelementptr inbounds %struct.my_coef_controller, %struct.my_coef_controller* %137, i32 0, i32 2
  store i32 0, i32* %mcu_ctr99, align 4, !tbaa !32
  br label %for.inc.100

for.inc.100:                                      ; preds = %for.end.98
  %138 = load i32, i32* %yoffset, align 4, !tbaa !23
  %inc101 = add nsw i32 %138, 1
  store i32 %inc101, i32* %yoffset, align 4, !tbaa !23
  br label %for.cond

for.end.102:                                      ; preds = %for.cond
  %139 = load %struct.my_coef_controller*, %struct.my_coef_controller** %coef, align 8, !tbaa !1
  %iMCU_row_num103 = getelementptr inbounds %struct.my_coef_controller, %struct.my_coef_controller* %139, i32 0, i32 1
  %140 = load i32, i32* %iMCU_row_num103, align 4, !tbaa !24
  %inc104 = add i32 %140, 1
  store i32 %inc104, i32* %iMCU_row_num103, align 4, !tbaa !24
  %141 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8, !tbaa !1
  call void @start_iMCU_row(%struct.jpeg_compress_struct* %141) #3
  store i32 1, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %for.end.102, %if.then.92
  %142 = bitcast void (%struct.jpeg_compress_struct*, %struct.jpeg_component_info*, i8**, [64 x i16]*, i32, i32, i32)** %forward_DCT to i8*
  call void @llvm.lifetime.end(i64 8, i8* %142) #1
  %143 = bitcast %struct.jpeg_component_info** %compptr to i8*
  call void @llvm.lifetime.end(i64 8, i8* %143) #1
  %144 = bitcast i32* %xpos to i8*
  call void @llvm.lifetime.end(i64 4, i8* %144) #1
  %145 = bitcast i32* %ypos to i8*
  call void @llvm.lifetime.end(i64 4, i8* %145) #1
  %146 = bitcast i32* %blockcnt to i8*
  call void @llvm.lifetime.end(i64 4, i8* %146) #1
  %147 = bitcast i32* %yoffset to i8*
  call void @llvm.lifetime.end(i64 4, i8* %147) #1
  %148 = bitcast i32* %yindex to i8*
  call void @llvm.lifetime.end(i64 4, i8* %148) #1
  %149 = bitcast i32* %ci to i8*
  call void @llvm.lifetime.end(i64 4, i8* %149) #1
  %150 = bitcast i32* %bi to i8*
  call void @llvm.lifetime.end(i64 4, i8* %150) #1
  %151 = bitcast i32* %blkn to i8*
  call void @llvm.lifetime.end(i64 4, i8* %151) #1
  %152 = bitcast i32* %last_iMCU_row to i8*
  call void @llvm.lifetime.end(i64 4, i8* %152) #1
  %153 = bitcast i32* %last_MCU_col to i8*
  call void @llvm.lifetime.end(i64 4, i8* %153) #1
  %154 = bitcast i32* %MCU_col_num to i8*
  call void @llvm.lifetime.end(i64 4, i8* %154) #1
  %155 = bitcast %struct.my_coef_controller** %coef to i8*
  call void @llvm.lifetime.end(i64 8, i8* %155) #1
  %156 = load i32, i32* %retval
  ret i32 %156
}

; Function Attrs: nounwind
declare i8* @memset(i8*, i32, i64) #2

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { nounwind "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nobuiltin }
attributes #4 = { nobuiltin nounwind }

!llvm.ident = !{!0}

!0 = !{!"clang version 3.7.0 (tags/RELEASE_370/final)"}
!1 = !{!2, !2, i64 0}
!2 = !{!"any pointer", !3, i64 0}
!3 = !{!"omnipotent char", !4, i64 0}
!4 = !{!"Simple C/C++ TBAA"}
!5 = !{!3, !3, i64 0}
!6 = !{!7, !2, i64 8}
!7 = !{!"jpeg_compress_struct", !2, i64 0, !2, i64 8, !2, i64 16, !2, i64 24, !3, i64 32, !8, i64 36, !2, i64 40, !8, i64 48, !8, i64 52, !8, i64 56, !3, i64 60, !9, i64 64, !8, i64 72, !8, i64 76, !8, i64 80, !8, i64 84, !8, i64 88, !8, i64 92, !3, i64 96, !2, i64 104, !3, i64 112, !3, i64 144, !3, i64 160, !3, i64 192, !3, i64 224, !3, i64 240, !3, i64 256, !8, i64 272, !2, i64 280, !3, i64 288, !3, i64 292, !3, i64 296, !3, i64 300, !3, i64 304, !8, i64 308, !3, i64 312, !8, i64 316, !8, i64 320, !3, i64 324, !3, i64 328, !3, i64 329, !3, i64 330, !10, i64 332, !10, i64 334, !3, i64 336, !3, i64 340, !8, i64 344, !3, i64 348, !8, i64 352, !8, i64 356, !8, i64 360, !8, i64 364, !8, i64 368, !8, i64 372, !3, i64 376, !8, i64 408, !8, i64 412, !8, i64 416, !3, i64 420, !8, i64 460, !8, i64 464, !8, i64 468, !8, i64 472, !8, i64 476, !2, i64 480, !8, i64 488, !2, i64 496, !2, i64 504, !2, i64 512, !2, i64 520, !2, i64 528, !2, i64 536, !2, i64 544, !2, i64 552, !2, i64 560, !2, i64 568, !8, i64 576}
!8 = !{!"int", !3, i64 0}
!9 = !{!"double", !3, i64 0}
!10 = !{!"short", !3, i64 0}
!11 = !{!12, !2, i64 0}
!12 = !{!"jpeg_memory_mgr", !2, i64 0, !2, i64 8, !2, i64 16, !2, i64 24, !2, i64 32, !2, i64 40, !2, i64 48, !2, i64 56, !2, i64 64, !2, i64 72, !2, i64 80, !13, i64 88, !13, i64 96}
!13 = !{!"long", !3, i64 0}
!14 = !{!7, !2, i64 520}
!15 = !{!16, !2, i64 0}
!16 = !{!"", !17, i64 0, !8, i64 16, !8, i64 20, !8, i64 24, !8, i64 28, !3, i64 32, !3, i64 112}
!17 = !{!"jpeg_c_coef_controller", !2, i64 0, !2, i64 8}
!18 = !{!7, !2, i64 0}
!19 = !{!20, !8, i64 40}
!20 = !{!"jpeg_error_mgr", !2, i64 0, !2, i64 8, !2, i64 16, !2, i64 24, !2, i64 32, !8, i64 40, !3, i64 44, !8, i64 124, !13, i64 128, !2, i64 136, !8, i64 144, !2, i64 152, !8, i64 160, !8, i64 164}
!21 = !{!20, !2, i64 0}
!22 = !{!12, !2, i64 8}
!23 = !{!8, !8, i64 0}
!24 = !{!16, !8, i64 16}
!25 = !{!16, !2, i64 8}
!26 = !{!7, !8, i64 372}
!27 = !{!16, !8, i64 28}
!28 = !{!7, !8, i64 368}
!29 = !{!30, !8, i64 12}
!30 = !{!"", !8, i64 0, !8, i64 4, !8, i64 8, !8, i64 12, !8, i64 16, !8, i64 20, !8, i64 24, !8, i64 28, !8, i64 32, !8, i64 36, !8, i64 40, !8, i64 44, !8, i64 48, !3, i64 52, !8, i64 56, !8, i64 60, !8, i64 64, !8, i64 68, !8, i64 72, !8, i64 76, !2, i64 80, !2, i64 88}
!31 = !{!30, !8, i64 76}
!32 = !{!16, !8, i64 20}
!33 = !{!16, !8, i64 24}
!34 = !{!7, !8, i64 408}
!35 = !{!30, !8, i64 4}
!36 = !{!7, !2, i64 552}
!37 = !{!30, !8, i64 56}
!38 = !{!30, !8, i64 72}
!39 = !{!30, !8, i64 68}
!40 = !{!30, !8, i64 40}
!41 = !{!30, !8, i64 60}
!42 = !{!10, !10, i64 0}
!43 = !{!7, !2, i64 560}
!44 = !{!45, !2, i64 8}
!45 = !{!"jpeg_entropy_encoder", !2, i64 0, !2, i64 8, !2, i64 16}
