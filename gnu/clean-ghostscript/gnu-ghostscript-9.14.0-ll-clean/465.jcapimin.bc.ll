; ModuleID = './jcapimin.bc'
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
%struct.jpeg_entropy_encoder = type { void (%struct.jpeg_compress_struct*, i32)*, i32 (%struct.jpeg_compress_struct*, [64 x i16]**)*, void (%struct.jpeg_compress_struct*)* }
%struct.jpeg_scan_info = type { i32, [4 x i32], i32, i32, i32, i32 }

@jpeg_natural_order = external constant [0 x i32], align 4

; Function Attrs: nounwind uwtable
define void @jpeg_CreateCompress(%struct.jpeg_compress_struct* %cinfo, i32 %version, i64 %structsize) #0 {
entry:
  %cinfo.addr = alloca %struct.jpeg_compress_struct*, align 8
  %version.addr = alloca i32, align 4
  %structsize.addr = alloca i64, align 8
  %i = alloca i32, align 4
  %err23 = alloca %struct.jpeg_error_mgr*, align 8
  %client_data = alloca i8*, align 8
  store %struct.jpeg_compress_struct* %cinfo, %struct.jpeg_compress_struct** %cinfo.addr, align 8, !tbaa !1
  store i32 %version, i32* %version.addr, align 4, !tbaa !5
  store i64 %structsize, i64* %structsize.addr, align 8, !tbaa !7
  %0 = bitcast i32* %i to i8*
  call void @llvm.lifetime.start(i64 4, i8* %0) #1
  %1 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8, !tbaa !1
  %mem = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %1, i32 0, i32 1
  store %struct.jpeg_memory_mgr* null, %struct.jpeg_memory_mgr** %mem, align 8, !tbaa !9
  %2 = load i32, i32* %version.addr, align 4, !tbaa !5
  %cmp = icmp ne i32 %2, 90
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %3 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8, !tbaa !1
  %err = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %3, i32 0, i32 0
  %4 = load %struct.jpeg_error_mgr*, %struct.jpeg_error_mgr** %err, align 8, !tbaa !13
  %msg_code = getelementptr inbounds %struct.jpeg_error_mgr, %struct.jpeg_error_mgr* %4, i32 0, i32 5
  store i32 13, i32* %msg_code, align 4, !tbaa !14
  %5 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8, !tbaa !1
  %err1 = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %5, i32 0, i32 0
  %6 = load %struct.jpeg_error_mgr*, %struct.jpeg_error_mgr** %err1, align 8, !tbaa !13
  %msg_parm = getelementptr inbounds %struct.jpeg_error_mgr, %struct.jpeg_error_mgr* %6, i32 0, i32 6
  %i2 = bitcast %union.anon* %msg_parm to [8 x i32]*
  %arrayidx = getelementptr inbounds [8 x i32], [8 x i32]* %i2, i32 0, i64 0
  store i32 90, i32* %arrayidx, align 4, !tbaa !5
  %7 = load i32, i32* %version.addr, align 4, !tbaa !5
  %8 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8, !tbaa !1
  %err3 = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %8, i32 0, i32 0
  %9 = load %struct.jpeg_error_mgr*, %struct.jpeg_error_mgr** %err3, align 8, !tbaa !13
  %msg_parm4 = getelementptr inbounds %struct.jpeg_error_mgr, %struct.jpeg_error_mgr* %9, i32 0, i32 6
  %i5 = bitcast %union.anon* %msg_parm4 to [8 x i32]*
  %arrayidx6 = getelementptr inbounds [8 x i32], [8 x i32]* %i5, i32 0, i64 1
  store i32 %7, i32* %arrayidx6, align 4, !tbaa !5
  %10 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8, !tbaa !1
  %err7 = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %10, i32 0, i32 0
  %11 = load %struct.jpeg_error_mgr*, %struct.jpeg_error_mgr** %err7, align 8, !tbaa !13
  %error_exit = getelementptr inbounds %struct.jpeg_error_mgr, %struct.jpeg_error_mgr* %11, i32 0, i32 0
  %12 = load void (%struct.jpeg_common_struct*)*, void (%struct.jpeg_common_struct*)** %error_exit, align 8, !tbaa !16
  %13 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8, !tbaa !1
  %14 = bitcast %struct.jpeg_compress_struct* %13 to %struct.jpeg_common_struct*
  call void %12(%struct.jpeg_common_struct* %14) #4
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %15 = load i64, i64* %structsize.addr, align 8, !tbaa !7
  %cmp8 = icmp ne i64 %15, 584
  br i1 %cmp8, label %if.then.9, label %if.end.22

if.then.9:                                        ; preds = %if.end
  %16 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8, !tbaa !1
  %err10 = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %16, i32 0, i32 0
  %17 = load %struct.jpeg_error_mgr*, %struct.jpeg_error_mgr** %err10, align 8, !tbaa !13
  %msg_code11 = getelementptr inbounds %struct.jpeg_error_mgr, %struct.jpeg_error_mgr* %17, i32 0, i32 5
  store i32 22, i32* %msg_code11, align 4, !tbaa !14
  %18 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8, !tbaa !1
  %err12 = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %18, i32 0, i32 0
  %19 = load %struct.jpeg_error_mgr*, %struct.jpeg_error_mgr** %err12, align 8, !tbaa !13
  %msg_parm13 = getelementptr inbounds %struct.jpeg_error_mgr, %struct.jpeg_error_mgr* %19, i32 0, i32 6
  %i14 = bitcast %union.anon* %msg_parm13 to [8 x i32]*
  %arrayidx15 = getelementptr inbounds [8 x i32], [8 x i32]* %i14, i32 0, i64 0
  store i32 584, i32* %arrayidx15, align 4, !tbaa !5
  %20 = load i64, i64* %structsize.addr, align 8, !tbaa !7
  %conv = trunc i64 %20 to i32
  %21 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8, !tbaa !1
  %err16 = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %21, i32 0, i32 0
  %22 = load %struct.jpeg_error_mgr*, %struct.jpeg_error_mgr** %err16, align 8, !tbaa !13
  %msg_parm17 = getelementptr inbounds %struct.jpeg_error_mgr, %struct.jpeg_error_mgr* %22, i32 0, i32 6
  %i18 = bitcast %union.anon* %msg_parm17 to [8 x i32]*
  %arrayidx19 = getelementptr inbounds [8 x i32], [8 x i32]* %i18, i32 0, i64 1
  store i32 %conv, i32* %arrayidx19, align 4, !tbaa !5
  %23 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8, !tbaa !1
  %err20 = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %23, i32 0, i32 0
  %24 = load %struct.jpeg_error_mgr*, %struct.jpeg_error_mgr** %err20, align 8, !tbaa !13
  %error_exit21 = getelementptr inbounds %struct.jpeg_error_mgr, %struct.jpeg_error_mgr* %24, i32 0, i32 0
  %25 = load void (%struct.jpeg_common_struct*)*, void (%struct.jpeg_common_struct*)** %error_exit21, align 8, !tbaa !16
  %26 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8, !tbaa !1
  %27 = bitcast %struct.jpeg_compress_struct* %26 to %struct.jpeg_common_struct*
  call void %25(%struct.jpeg_common_struct* %27) #4
  br label %if.end.22

if.end.22:                                        ; preds = %if.then.9, %if.end
  %28 = bitcast %struct.jpeg_error_mgr** %err23 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %28) #1
  %29 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8, !tbaa !1
  %err24 = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %29, i32 0, i32 0
  %30 = load %struct.jpeg_error_mgr*, %struct.jpeg_error_mgr** %err24, align 8, !tbaa !13
  store %struct.jpeg_error_mgr* %30, %struct.jpeg_error_mgr** %err23, align 8, !tbaa !1
  %31 = bitcast i8** %client_data to i8*
  call void @llvm.lifetime.start(i64 8, i8* %31) #1
  %32 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8, !tbaa !1
  %client_data25 = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %32, i32 0, i32 3
  %33 = load i8*, i8** %client_data25, align 8, !tbaa !17
  store i8* %33, i8** %client_data, align 8, !tbaa !1
  %34 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8, !tbaa !1
  %35 = bitcast %struct.jpeg_compress_struct* %34 to i8*
  %call = call i8* @memset(i8* %35, i32 0, i64 584) #5
  %36 = load %struct.jpeg_error_mgr*, %struct.jpeg_error_mgr** %err23, align 8, !tbaa !1
  %37 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8, !tbaa !1
  %err26 = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %37, i32 0, i32 0
  store %struct.jpeg_error_mgr* %36, %struct.jpeg_error_mgr** %err26, align 8, !tbaa !13
  %38 = load i8*, i8** %client_data, align 8, !tbaa !1
  %39 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8, !tbaa !1
  %client_data27 = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %39, i32 0, i32 3
  store i8* %38, i8** %client_data27, align 8, !tbaa !17
  %40 = bitcast i8** %client_data to i8*
  call void @llvm.lifetime.end(i64 8, i8* %40) #1
  %41 = bitcast %struct.jpeg_error_mgr** %err23 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %41) #1
  %42 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8, !tbaa !1
  %is_decompressor = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %42, i32 0, i32 4
  store i32 0, i32* %is_decompressor, align 4, !tbaa !18
  %43 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8, !tbaa !1
  %44 = bitcast %struct.jpeg_compress_struct* %43 to %struct.jpeg_common_struct*
  call void @jinit_memory_mgr(%struct.jpeg_common_struct* %44) #4
  %45 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8, !tbaa !1
  %progress = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %45, i32 0, i32 2
  store %struct.jpeg_progress_mgr* null, %struct.jpeg_progress_mgr** %progress, align 8, !tbaa !19
  %46 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8, !tbaa !1
  %dest = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %46, i32 0, i32 6
  store %struct.jpeg_destination_mgr* null, %struct.jpeg_destination_mgr** %dest, align 8, !tbaa !20
  %47 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8, !tbaa !1
  %comp_info = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %47, i32 0, i32 19
  store %struct.jpeg_component_info* null, %struct.jpeg_component_info** %comp_info, align 8, !tbaa !21
  store i32 0, i32* %i, align 4, !tbaa !5
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end.22
  %48 = load i32, i32* %i, align 4, !tbaa !5
  %cmp28 = icmp slt i32 %48, 4
  br i1 %cmp28, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %49 = load i32, i32* %i, align 4, !tbaa !5
  %idxprom = sext i32 %49 to i64
  %50 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8, !tbaa !1
  %quant_tbl_ptrs = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %50, i32 0, i32 20
  %arrayidx30 = getelementptr inbounds [4 x %struct.JQUANT_TBL*], [4 x %struct.JQUANT_TBL*]* %quant_tbl_ptrs, i32 0, i64 %idxprom
  store %struct.JQUANT_TBL* null, %struct.JQUANT_TBL** %arrayidx30, align 8, !tbaa !1
  %51 = load i32, i32* %i, align 4, !tbaa !5
  %idxprom31 = sext i32 %51 to i64
  %52 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8, !tbaa !1
  %q_scale_factor = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %52, i32 0, i32 21
  %arrayidx32 = getelementptr inbounds [4 x i32], [4 x i32]* %q_scale_factor, i32 0, i64 %idxprom31
  store i32 100, i32* %arrayidx32, align 4, !tbaa !5
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %53 = load i32, i32* %i, align 4, !tbaa !5
  %inc = add nsw i32 %53, 1
  store i32 %inc, i32* %i, align 4, !tbaa !5
  br label %for.cond

for.end:                                          ; preds = %for.cond
  store i32 0, i32* %i, align 4, !tbaa !5
  br label %for.cond.33

for.cond.33:                                      ; preds = %for.inc.41, %for.end
  %54 = load i32, i32* %i, align 4, !tbaa !5
  %cmp34 = icmp slt i32 %54, 4
  br i1 %cmp34, label %for.body.36, label %for.end.43

for.body.36:                                      ; preds = %for.cond.33
  %55 = load i32, i32* %i, align 4, !tbaa !5
  %idxprom37 = sext i32 %55 to i64
  %56 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8, !tbaa !1
  %dc_huff_tbl_ptrs = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %56, i32 0, i32 22
  %arrayidx38 = getelementptr inbounds [4 x %struct.JHUFF_TBL*], [4 x %struct.JHUFF_TBL*]* %dc_huff_tbl_ptrs, i32 0, i64 %idxprom37
  store %struct.JHUFF_TBL* null, %struct.JHUFF_TBL** %arrayidx38, align 8, !tbaa !1
  %57 = load i32, i32* %i, align 4, !tbaa !5
  %idxprom39 = sext i32 %57 to i64
  %58 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8, !tbaa !1
  %ac_huff_tbl_ptrs = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %58, i32 0, i32 23
  %arrayidx40 = getelementptr inbounds [4 x %struct.JHUFF_TBL*], [4 x %struct.JHUFF_TBL*]* %ac_huff_tbl_ptrs, i32 0, i64 %idxprom39
  store %struct.JHUFF_TBL* null, %struct.JHUFF_TBL** %arrayidx40, align 8, !tbaa !1
  br label %for.inc.41

for.inc.41:                                       ; preds = %for.body.36
  %59 = load i32, i32* %i, align 4, !tbaa !5
  %inc42 = add nsw i32 %59, 1
  store i32 %inc42, i32* %i, align 4, !tbaa !5
  br label %for.cond.33

for.end.43:                                       ; preds = %for.cond.33
  %60 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8, !tbaa !1
  %block_size = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %60, i32 0, i32 63
  store i32 8, i32* %block_size, align 4, !tbaa !22
  %61 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8, !tbaa !1
  %natural_order = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %61, i32 0, i32 64
  store i32* getelementptr inbounds ([0 x i32], [0 x i32]* @jpeg_natural_order, i32 0, i32 0), i32** %natural_order, align 8, !tbaa !23
  %62 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8, !tbaa !1
  %lim_Se = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %62, i32 0, i32 65
  store i32 63, i32* %lim_Se, align 4, !tbaa !24
  %63 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8, !tbaa !1
  %script_space = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %63, i32 0, i32 75
  store %struct.jpeg_scan_info* null, %struct.jpeg_scan_info** %script_space, align 8, !tbaa !25
  %64 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8, !tbaa !1
  %input_gamma = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %64, i32 0, i32 11
  store double 1.000000e+00, double* %input_gamma, align 8, !tbaa !26
  %65 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8, !tbaa !1
  %global_state = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %65, i32 0, i32 5
  store i32 100, i32* %global_state, align 4, !tbaa !27
  %66 = bitcast i32* %i to i8*
  call void @llvm.lifetime.end(i64 4, i8* %66) #1
  ret void
}

; Function Attrs: nounwind
declare void @llvm.lifetime.start(i64, i8* nocapture) #1

; Function Attrs: nounwind
declare i8* @memset(i8*, i32, i64) #2

; Function Attrs: nounwind
declare void @llvm.lifetime.end(i64, i8* nocapture) #1

declare void @jinit_memory_mgr(%struct.jpeg_common_struct*) #3

; Function Attrs: nounwind uwtable
define void @jpeg_destroy_compress(%struct.jpeg_compress_struct* %cinfo) #0 {
entry:
  %cinfo.addr = alloca %struct.jpeg_compress_struct*, align 8
  store %struct.jpeg_compress_struct* %cinfo, %struct.jpeg_compress_struct** %cinfo.addr, align 8, !tbaa !1
  %0 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8, !tbaa !1
  %1 = bitcast %struct.jpeg_compress_struct* %0 to %struct.jpeg_common_struct*
  call void @jpeg_destroy(%struct.jpeg_common_struct* %1) #4
  ret void
}

declare void @jpeg_destroy(%struct.jpeg_common_struct*) #3

; Function Attrs: nounwind uwtable
define void @jpeg_abort_compress(%struct.jpeg_compress_struct* %cinfo) #0 {
entry:
  %cinfo.addr = alloca %struct.jpeg_compress_struct*, align 8
  store %struct.jpeg_compress_struct* %cinfo, %struct.jpeg_compress_struct** %cinfo.addr, align 8, !tbaa !1
  %0 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8, !tbaa !1
  %1 = bitcast %struct.jpeg_compress_struct* %0 to %struct.jpeg_common_struct*
  call void @jpeg_abort(%struct.jpeg_common_struct* %1) #4
  ret void
}

declare void @jpeg_abort(%struct.jpeg_common_struct*) #3

; Function Attrs: nounwind uwtable
define void @jpeg_suppress_tables(%struct.jpeg_compress_struct* %cinfo, i32 %suppress) #0 {
entry:
  %cinfo.addr = alloca %struct.jpeg_compress_struct*, align 8
  %suppress.addr = alloca i32, align 4
  %i = alloca i32, align 4
  %qtbl = alloca %struct.JQUANT_TBL*, align 8
  %htbl = alloca %struct.JHUFF_TBL*, align 8
  store %struct.jpeg_compress_struct* %cinfo, %struct.jpeg_compress_struct** %cinfo.addr, align 8, !tbaa !1
  store i32 %suppress, i32* %suppress.addr, align 4, !tbaa !28
  %0 = bitcast i32* %i to i8*
  call void @llvm.lifetime.start(i64 4, i8* %0) #1
  %1 = bitcast %struct.JQUANT_TBL** %qtbl to i8*
  call void @llvm.lifetime.start(i64 8, i8* %1) #1
  %2 = bitcast %struct.JHUFF_TBL** %htbl to i8*
  call void @llvm.lifetime.start(i64 8, i8* %2) #1
  store i32 0, i32* %i, align 4, !tbaa !5
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %3 = load i32, i32* %i, align 4, !tbaa !5
  %cmp = icmp slt i32 %3, 4
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %4 = load i32, i32* %i, align 4, !tbaa !5
  %idxprom = sext i32 %4 to i64
  %5 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8, !tbaa !1
  %quant_tbl_ptrs = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %5, i32 0, i32 20
  %arrayidx = getelementptr inbounds [4 x %struct.JQUANT_TBL*], [4 x %struct.JQUANT_TBL*]* %quant_tbl_ptrs, i32 0, i64 %idxprom
  %6 = load %struct.JQUANT_TBL*, %struct.JQUANT_TBL** %arrayidx, align 8, !tbaa !1
  store %struct.JQUANT_TBL* %6, %struct.JQUANT_TBL** %qtbl, align 8, !tbaa !1
  %cmp1 = icmp ne %struct.JQUANT_TBL* %6, null
  br i1 %cmp1, label %if.then, label %if.end

if.then:                                          ; preds = %for.body
  %7 = load i32, i32* %suppress.addr, align 4, !tbaa !28
  %8 = load %struct.JQUANT_TBL*, %struct.JQUANT_TBL** %qtbl, align 8, !tbaa !1
  %sent_table = getelementptr inbounds %struct.JQUANT_TBL, %struct.JQUANT_TBL* %8, i32 0, i32 1
  store i32 %7, i32* %sent_table, align 4, !tbaa !29
  br label %if.end

if.end:                                           ; preds = %if.then, %for.body
  br label %for.inc

for.inc:                                          ; preds = %if.end
  %9 = load i32, i32* %i, align 4, !tbaa !5
  %inc = add nsw i32 %9, 1
  store i32 %inc, i32* %i, align 4, !tbaa !5
  br label %for.cond

for.end:                                          ; preds = %for.cond
  store i32 0, i32* %i, align 4, !tbaa !5
  br label %for.cond.2

for.cond.2:                                       ; preds = %for.inc.17, %for.end
  %10 = load i32, i32* %i, align 4, !tbaa !5
  %cmp3 = icmp slt i32 %10, 4
  br i1 %cmp3, label %for.body.4, label %for.end.19

for.body.4:                                       ; preds = %for.cond.2
  %11 = load i32, i32* %i, align 4, !tbaa !5
  %idxprom5 = sext i32 %11 to i64
  %12 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8, !tbaa !1
  %dc_huff_tbl_ptrs = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %12, i32 0, i32 22
  %arrayidx6 = getelementptr inbounds [4 x %struct.JHUFF_TBL*], [4 x %struct.JHUFF_TBL*]* %dc_huff_tbl_ptrs, i32 0, i64 %idxprom5
  %13 = load %struct.JHUFF_TBL*, %struct.JHUFF_TBL** %arrayidx6, align 8, !tbaa !1
  store %struct.JHUFF_TBL* %13, %struct.JHUFF_TBL** %htbl, align 8, !tbaa !1
  %cmp7 = icmp ne %struct.JHUFF_TBL* %13, null
  br i1 %cmp7, label %if.then.8, label %if.end.10

if.then.8:                                        ; preds = %for.body.4
  %14 = load i32, i32* %suppress.addr, align 4, !tbaa !28
  %15 = load %struct.JHUFF_TBL*, %struct.JHUFF_TBL** %htbl, align 8, !tbaa !1
  %sent_table9 = getelementptr inbounds %struct.JHUFF_TBL, %struct.JHUFF_TBL* %15, i32 0, i32 2
  store i32 %14, i32* %sent_table9, align 4, !tbaa !31
  br label %if.end.10

if.end.10:                                        ; preds = %if.then.8, %for.body.4
  %16 = load i32, i32* %i, align 4, !tbaa !5
  %idxprom11 = sext i32 %16 to i64
  %17 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8, !tbaa !1
  %ac_huff_tbl_ptrs = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %17, i32 0, i32 23
  %arrayidx12 = getelementptr inbounds [4 x %struct.JHUFF_TBL*], [4 x %struct.JHUFF_TBL*]* %ac_huff_tbl_ptrs, i32 0, i64 %idxprom11
  %18 = load %struct.JHUFF_TBL*, %struct.JHUFF_TBL** %arrayidx12, align 8, !tbaa !1
  store %struct.JHUFF_TBL* %18, %struct.JHUFF_TBL** %htbl, align 8, !tbaa !1
  %cmp13 = icmp ne %struct.JHUFF_TBL* %18, null
  br i1 %cmp13, label %if.then.14, label %if.end.16

if.then.14:                                       ; preds = %if.end.10
  %19 = load i32, i32* %suppress.addr, align 4, !tbaa !28
  %20 = load %struct.JHUFF_TBL*, %struct.JHUFF_TBL** %htbl, align 8, !tbaa !1
  %sent_table15 = getelementptr inbounds %struct.JHUFF_TBL, %struct.JHUFF_TBL* %20, i32 0, i32 2
  store i32 %19, i32* %sent_table15, align 4, !tbaa !31
  br label %if.end.16

if.end.16:                                        ; preds = %if.then.14, %if.end.10
  br label %for.inc.17

for.inc.17:                                       ; preds = %if.end.16
  %21 = load i32, i32* %i, align 4, !tbaa !5
  %inc18 = add nsw i32 %21, 1
  store i32 %inc18, i32* %i, align 4, !tbaa !5
  br label %for.cond.2

for.end.19:                                       ; preds = %for.cond.2
  %22 = bitcast %struct.JHUFF_TBL** %htbl to i8*
  call void @llvm.lifetime.end(i64 8, i8* %22) #1
  %23 = bitcast %struct.JQUANT_TBL** %qtbl to i8*
  call void @llvm.lifetime.end(i64 8, i8* %23) #1
  %24 = bitcast i32* %i to i8*
  call void @llvm.lifetime.end(i64 4, i8* %24) #1
  ret void
}

; Function Attrs: nounwind uwtable
define void @jpeg_finish_compress(%struct.jpeg_compress_struct* %cinfo) #0 {
entry:
  %cinfo.addr = alloca %struct.jpeg_compress_struct*, align 8
  %iMCU_row = alloca i32, align 4
  store %struct.jpeg_compress_struct* %cinfo, %struct.jpeg_compress_struct** %cinfo.addr, align 8, !tbaa !1
  %0 = bitcast i32* %iMCU_row to i8*
  call void @llvm.lifetime.start(i64 4, i8* %0) #1
  %1 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8, !tbaa !1
  %global_state = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %1, i32 0, i32 5
  %2 = load i32, i32* %global_state, align 4, !tbaa !27
  %cmp = icmp eq i32 %2, 101
  br i1 %cmp, label %if.then, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %entry
  %3 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8, !tbaa !1
  %global_state1 = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %3, i32 0, i32 5
  %4 = load i32, i32* %global_state1, align 4, !tbaa !27
  %cmp2 = icmp eq i32 %4, 102
  br i1 %cmp2, label %if.then, label %if.else

if.then:                                          ; preds = %lor.lhs.false, %entry
  %5 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8, !tbaa !1
  %next_scanline = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %5, i32 0, i32 46
  %6 = load i32, i32* %next_scanline, align 4, !tbaa !33
  %7 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8, !tbaa !1
  %image_height = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %7, i32 0, i32 8
  %8 = load i32, i32* %image_height, align 4, !tbaa !34
  %cmp3 = icmp ult i32 %6, %8
  br i1 %cmp3, label %if.then.4, label %if.end

if.then.4:                                        ; preds = %if.then
  %9 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8, !tbaa !1
  %err = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %9, i32 0, i32 0
  %10 = load %struct.jpeg_error_mgr*, %struct.jpeg_error_mgr** %err, align 8, !tbaa !13
  %msg_code = getelementptr inbounds %struct.jpeg_error_mgr, %struct.jpeg_error_mgr* %10, i32 0, i32 5
  store i32 69, i32* %msg_code, align 4, !tbaa !14
  %11 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8, !tbaa !1
  %err5 = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %11, i32 0, i32 0
  %12 = load %struct.jpeg_error_mgr*, %struct.jpeg_error_mgr** %err5, align 8, !tbaa !13
  %error_exit = getelementptr inbounds %struct.jpeg_error_mgr, %struct.jpeg_error_mgr* %12, i32 0, i32 0
  %13 = load void (%struct.jpeg_common_struct*)*, void (%struct.jpeg_common_struct*)** %error_exit, align 8, !tbaa !16
  %14 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8, !tbaa !1
  %15 = bitcast %struct.jpeg_compress_struct* %14 to %struct.jpeg_common_struct*
  call void %13(%struct.jpeg_common_struct* %15) #4
  br label %if.end

if.end:                                           ; preds = %if.then.4, %if.then
  %16 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8, !tbaa !1
  %master = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %16, i32 0, i32 66
  %17 = load %struct.jpeg_comp_master*, %struct.jpeg_comp_master** %master, align 8, !tbaa !35
  %finish_pass = getelementptr inbounds %struct.jpeg_comp_master, %struct.jpeg_comp_master* %17, i32 0, i32 2
  %18 = load void (%struct.jpeg_compress_struct*)*, void (%struct.jpeg_compress_struct*)** %finish_pass, align 8, !tbaa !36
  %19 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8, !tbaa !1
  call void %18(%struct.jpeg_compress_struct* %19) #4
  br label %if.end.16

if.else:                                          ; preds = %lor.lhs.false
  %20 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8, !tbaa !1
  %global_state6 = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %20, i32 0, i32 5
  %21 = load i32, i32* %global_state6, align 4, !tbaa !27
  %cmp7 = icmp ne i32 %21, 103
  br i1 %cmp7, label %if.then.8, label %if.end.15

if.then.8:                                        ; preds = %if.else
  %22 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8, !tbaa !1
  %err9 = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %22, i32 0, i32 0
  %23 = load %struct.jpeg_error_mgr*, %struct.jpeg_error_mgr** %err9, align 8, !tbaa !13
  %msg_code10 = getelementptr inbounds %struct.jpeg_error_mgr, %struct.jpeg_error_mgr* %23, i32 0, i32 5
  store i32 21, i32* %msg_code10, align 4, !tbaa !14
  %24 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8, !tbaa !1
  %global_state11 = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %24, i32 0, i32 5
  %25 = load i32, i32* %global_state11, align 4, !tbaa !27
  %26 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8, !tbaa !1
  %err12 = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %26, i32 0, i32 0
  %27 = load %struct.jpeg_error_mgr*, %struct.jpeg_error_mgr** %err12, align 8, !tbaa !13
  %msg_parm = getelementptr inbounds %struct.jpeg_error_mgr, %struct.jpeg_error_mgr* %27, i32 0, i32 6
  %i = bitcast %union.anon* %msg_parm to [8 x i32]*
  %arrayidx = getelementptr inbounds [8 x i32], [8 x i32]* %i, i32 0, i64 0
  store i32 %25, i32* %arrayidx, align 4, !tbaa !5
  %28 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8, !tbaa !1
  %err13 = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %28, i32 0, i32 0
  %29 = load %struct.jpeg_error_mgr*, %struct.jpeg_error_mgr** %err13, align 8, !tbaa !13
  %error_exit14 = getelementptr inbounds %struct.jpeg_error_mgr, %struct.jpeg_error_mgr* %29, i32 0, i32 0
  %30 = load void (%struct.jpeg_common_struct*)*, void (%struct.jpeg_common_struct*)** %error_exit14, align 8, !tbaa !16
  %31 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8, !tbaa !1
  %32 = bitcast %struct.jpeg_compress_struct* %31 to %struct.jpeg_common_struct*
  call void %30(%struct.jpeg_common_struct* %32) #4
  br label %if.end.15

if.end.15:                                        ; preds = %if.then.8, %if.else
  br label %if.end.16

if.end.16:                                        ; preds = %if.end.15, %if.end
  br label %while.cond

while.cond:                                       ; preds = %for.end, %if.end.16
  %33 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8, !tbaa !1
  %master17 = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %33, i32 0, i32 66
  %34 = load %struct.jpeg_comp_master*, %struct.jpeg_comp_master** %master17, align 8, !tbaa !35
  %is_last_pass = getelementptr inbounds %struct.jpeg_comp_master, %struct.jpeg_comp_master* %34, i32 0, i32 4
  %35 = load i32, i32* %is_last_pass, align 4, !tbaa !38
  %tobool = icmp ne i32 %35, 0
  %lnot = xor i1 %tobool, true
  br i1 %lnot, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %36 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8, !tbaa !1
  %master18 = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %36, i32 0, i32 66
  %37 = load %struct.jpeg_comp_master*, %struct.jpeg_comp_master** %master18, align 8, !tbaa !35
  %prepare_for_pass = getelementptr inbounds %struct.jpeg_comp_master, %struct.jpeg_comp_master* %37, i32 0, i32 0
  %38 = load void (%struct.jpeg_compress_struct*)*, void (%struct.jpeg_compress_struct*)** %prepare_for_pass, align 8, !tbaa !39
  %39 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8, !tbaa !1
  call void %38(%struct.jpeg_compress_struct* %39) #4
  store i32 0, i32* %iMCU_row, align 4, !tbaa !5
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %while.body
  %40 = load i32, i32* %iMCU_row, align 4, !tbaa !5
  %41 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8, !tbaa !1
  %total_iMCU_rows = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %41, i32 0, i32 52
  %42 = load i32, i32* %total_iMCU_rows, align 4, !tbaa !40
  %cmp19 = icmp ult i32 %40, %42
  br i1 %cmp19, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %43 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8, !tbaa !1
  %progress = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %43, i32 0, i32 2
  %44 = load %struct.jpeg_progress_mgr*, %struct.jpeg_progress_mgr** %progress, align 8, !tbaa !19
  %cmp20 = icmp ne %struct.jpeg_progress_mgr* %44, null
  br i1 %cmp20, label %if.then.21, label %if.end.28

if.then.21:                                       ; preds = %for.body
  %45 = load i32, i32* %iMCU_row, align 4, !tbaa !5
  %conv = zext i32 %45 to i64
  %46 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8, !tbaa !1
  %progress22 = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %46, i32 0, i32 2
  %47 = load %struct.jpeg_progress_mgr*, %struct.jpeg_progress_mgr** %progress22, align 8, !tbaa !19
  %pass_counter = getelementptr inbounds %struct.jpeg_progress_mgr, %struct.jpeg_progress_mgr* %47, i32 0, i32 1
  store i64 %conv, i64* %pass_counter, align 8, !tbaa !41
  %48 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8, !tbaa !1
  %total_iMCU_rows23 = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %48, i32 0, i32 52
  %49 = load i32, i32* %total_iMCU_rows23, align 4, !tbaa !40
  %conv24 = zext i32 %49 to i64
  %50 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8, !tbaa !1
  %progress25 = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %50, i32 0, i32 2
  %51 = load %struct.jpeg_progress_mgr*, %struct.jpeg_progress_mgr** %progress25, align 8, !tbaa !19
  %pass_limit = getelementptr inbounds %struct.jpeg_progress_mgr, %struct.jpeg_progress_mgr* %51, i32 0, i32 2
  store i64 %conv24, i64* %pass_limit, align 8, !tbaa !43
  %52 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8, !tbaa !1
  %progress26 = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %52, i32 0, i32 2
  %53 = load %struct.jpeg_progress_mgr*, %struct.jpeg_progress_mgr** %progress26, align 8, !tbaa !19
  %progress_monitor = getelementptr inbounds %struct.jpeg_progress_mgr, %struct.jpeg_progress_mgr* %53, i32 0, i32 0
  %progress_monitor27 = bitcast {}** %progress_monitor to void (%struct.jpeg_common_struct*)**
  %54 = load void (%struct.jpeg_common_struct*)*, void (%struct.jpeg_common_struct*)** %progress_monitor27, align 8, !tbaa !44
  %55 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8, !tbaa !1
  %56 = bitcast %struct.jpeg_compress_struct* %55 to %struct.jpeg_common_struct*
  call void %54(%struct.jpeg_common_struct* %56) #4
  br label %if.end.28

if.end.28:                                        ; preds = %if.then.21, %for.body
  %57 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8, !tbaa !1
  %coef = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %57, i32 0, i32 69
  %58 = load %struct.jpeg_c_coef_controller*, %struct.jpeg_c_coef_controller** %coef, align 8, !tbaa !45
  %compress_data = getelementptr inbounds %struct.jpeg_c_coef_controller, %struct.jpeg_c_coef_controller* %58, i32 0, i32 1
  %59 = load i32 (%struct.jpeg_compress_struct*, i8***)*, i32 (%struct.jpeg_compress_struct*, i8***)** %compress_data, align 8, !tbaa !46
  %60 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8, !tbaa !1
  %call = call i32 %59(%struct.jpeg_compress_struct* %60, i8*** null) #4
  %tobool29 = icmp ne i32 %call, 0
  br i1 %tobool29, label %if.end.35, label %if.then.30

if.then.30:                                       ; preds = %if.end.28
  %61 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8, !tbaa !1
  %err31 = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %61, i32 0, i32 0
  %62 = load %struct.jpeg_error_mgr*, %struct.jpeg_error_mgr** %err31, align 8, !tbaa !13
  %msg_code32 = getelementptr inbounds %struct.jpeg_error_mgr, %struct.jpeg_error_mgr* %62, i32 0, i32 5
  store i32 25, i32* %msg_code32, align 4, !tbaa !14
  %63 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8, !tbaa !1
  %err33 = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %63, i32 0, i32 0
  %64 = load %struct.jpeg_error_mgr*, %struct.jpeg_error_mgr** %err33, align 8, !tbaa !13
  %error_exit34 = getelementptr inbounds %struct.jpeg_error_mgr, %struct.jpeg_error_mgr* %64, i32 0, i32 0
  %65 = load void (%struct.jpeg_common_struct*)*, void (%struct.jpeg_common_struct*)** %error_exit34, align 8, !tbaa !16
  %66 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8, !tbaa !1
  %67 = bitcast %struct.jpeg_compress_struct* %66 to %struct.jpeg_common_struct*
  call void %65(%struct.jpeg_common_struct* %67) #4
  br label %if.end.35

if.end.35:                                        ; preds = %if.then.30, %if.end.28
  br label %for.inc

for.inc:                                          ; preds = %if.end.35
  %68 = load i32, i32* %iMCU_row, align 4, !tbaa !5
  %inc = add i32 %68, 1
  store i32 %inc, i32* %iMCU_row, align 4, !tbaa !5
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %69 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8, !tbaa !1
  %master36 = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %69, i32 0, i32 66
  %70 = load %struct.jpeg_comp_master*, %struct.jpeg_comp_master** %master36, align 8, !tbaa !35
  %finish_pass37 = getelementptr inbounds %struct.jpeg_comp_master, %struct.jpeg_comp_master* %70, i32 0, i32 2
  %71 = load void (%struct.jpeg_compress_struct*)*, void (%struct.jpeg_compress_struct*)** %finish_pass37, align 8, !tbaa !36
  %72 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8, !tbaa !1
  call void %71(%struct.jpeg_compress_struct* %72) #4
  br label %while.cond

while.end:                                        ; preds = %while.cond
  %73 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8, !tbaa !1
  %marker = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %73, i32 0, i32 70
  %74 = load %struct.jpeg_marker_writer*, %struct.jpeg_marker_writer** %marker, align 8, !tbaa !48
  %write_file_trailer = getelementptr inbounds %struct.jpeg_marker_writer, %struct.jpeg_marker_writer* %74, i32 0, i32 3
  %75 = load void (%struct.jpeg_compress_struct*)*, void (%struct.jpeg_compress_struct*)** %write_file_trailer, align 8, !tbaa !49
  %76 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8, !tbaa !1
  call void %75(%struct.jpeg_compress_struct* %76) #4
  %77 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8, !tbaa !1
  %dest = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %77, i32 0, i32 6
  %78 = load %struct.jpeg_destination_mgr*, %struct.jpeg_destination_mgr** %dest, align 8, !tbaa !20
  %term_destination = getelementptr inbounds %struct.jpeg_destination_mgr, %struct.jpeg_destination_mgr* %78, i32 0, i32 4
  %79 = load void (%struct.jpeg_compress_struct*)*, void (%struct.jpeg_compress_struct*)** %term_destination, align 8, !tbaa !51
  %80 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8, !tbaa !1
  call void %79(%struct.jpeg_compress_struct* %80) #4
  %81 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8, !tbaa !1
  %82 = bitcast %struct.jpeg_compress_struct* %81 to %struct.jpeg_common_struct*
  call void @jpeg_abort(%struct.jpeg_common_struct* %82) #4
  %83 = bitcast i32* %iMCU_row to i8*
  call void @llvm.lifetime.end(i64 4, i8* %83) #1
  ret void
}

; Function Attrs: nounwind uwtable
define void @jpeg_write_marker(%struct.jpeg_compress_struct* %cinfo, i32 %marker, i8* %dataptr, i32 %datalen) #0 {
entry:
  %cinfo.addr = alloca %struct.jpeg_compress_struct*, align 8
  %marker.addr = alloca i32, align 4
  %dataptr.addr = alloca i8*, align 8
  %datalen.addr = alloca i32, align 4
  %write_marker_byte = alloca void (%struct.jpeg_compress_struct*, i32)*, align 8
  store %struct.jpeg_compress_struct* %cinfo, %struct.jpeg_compress_struct** %cinfo.addr, align 8, !tbaa !1
  store i32 %marker, i32* %marker.addr, align 4, !tbaa !5
  store i8* %dataptr, i8** %dataptr.addr, align 8, !tbaa !1
  store i32 %datalen, i32* %datalen.addr, align 4, !tbaa !5
  %0 = bitcast void (%struct.jpeg_compress_struct*, i32)** %write_marker_byte to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #1
  %1 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8, !tbaa !1
  %next_scanline = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %1, i32 0, i32 46
  %2 = load i32, i32* %next_scanline, align 4, !tbaa !33
  %cmp = icmp ne i32 %2, 0
  br i1 %cmp, label %if.then, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %entry
  %3 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8, !tbaa !1
  %global_state = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %3, i32 0, i32 5
  %4 = load i32, i32* %global_state, align 4, !tbaa !27
  %cmp1 = icmp ne i32 %4, 101
  br i1 %cmp1, label %land.lhs.true, label %if.end

land.lhs.true:                                    ; preds = %lor.lhs.false
  %5 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8, !tbaa !1
  %global_state2 = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %5, i32 0, i32 5
  %6 = load i32, i32* %global_state2, align 4, !tbaa !27
  %cmp3 = icmp ne i32 %6, 102
  br i1 %cmp3, label %land.lhs.true.4, label %if.end

land.lhs.true.4:                                  ; preds = %land.lhs.true
  %7 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8, !tbaa !1
  %global_state5 = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %7, i32 0, i32 5
  %8 = load i32, i32* %global_state5, align 4, !tbaa !27
  %cmp6 = icmp ne i32 %8, 103
  br i1 %cmp6, label %if.then, label %if.end

if.then:                                          ; preds = %land.lhs.true.4, %entry
  %9 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8, !tbaa !1
  %err = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %9, i32 0, i32 0
  %10 = load %struct.jpeg_error_mgr*, %struct.jpeg_error_mgr** %err, align 8, !tbaa !13
  %msg_code = getelementptr inbounds %struct.jpeg_error_mgr, %struct.jpeg_error_mgr* %10, i32 0, i32 5
  store i32 21, i32* %msg_code, align 4, !tbaa !14
  %11 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8, !tbaa !1
  %global_state7 = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %11, i32 0, i32 5
  %12 = load i32, i32* %global_state7, align 4, !tbaa !27
  %13 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8, !tbaa !1
  %err8 = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %13, i32 0, i32 0
  %14 = load %struct.jpeg_error_mgr*, %struct.jpeg_error_mgr** %err8, align 8, !tbaa !13
  %msg_parm = getelementptr inbounds %struct.jpeg_error_mgr, %struct.jpeg_error_mgr* %14, i32 0, i32 6
  %i = bitcast %union.anon* %msg_parm to [8 x i32]*
  %arrayidx = getelementptr inbounds [8 x i32], [8 x i32]* %i, i32 0, i64 0
  store i32 %12, i32* %arrayidx, align 4, !tbaa !5
  %15 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8, !tbaa !1
  %err9 = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %15, i32 0, i32 0
  %16 = load %struct.jpeg_error_mgr*, %struct.jpeg_error_mgr** %err9, align 8, !tbaa !13
  %error_exit = getelementptr inbounds %struct.jpeg_error_mgr, %struct.jpeg_error_mgr* %16, i32 0, i32 0
  %17 = load void (%struct.jpeg_common_struct*)*, void (%struct.jpeg_common_struct*)** %error_exit, align 8, !tbaa !16
  %18 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8, !tbaa !1
  %19 = bitcast %struct.jpeg_compress_struct* %18 to %struct.jpeg_common_struct*
  call void %17(%struct.jpeg_common_struct* %19) #4
  br label %if.end

if.end:                                           ; preds = %if.then, %land.lhs.true.4, %land.lhs.true, %lor.lhs.false
  %20 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8, !tbaa !1
  %marker10 = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %20, i32 0, i32 70
  %21 = load %struct.jpeg_marker_writer*, %struct.jpeg_marker_writer** %marker10, align 8, !tbaa !48
  %write_marker_header = getelementptr inbounds %struct.jpeg_marker_writer, %struct.jpeg_marker_writer* %21, i32 0, i32 5
  %22 = load void (%struct.jpeg_compress_struct*, i32, i32)*, void (%struct.jpeg_compress_struct*, i32, i32)** %write_marker_header, align 8, !tbaa !53
  %23 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8, !tbaa !1
  %24 = load i32, i32* %marker.addr, align 4, !tbaa !5
  %25 = load i32, i32* %datalen.addr, align 4, !tbaa !5
  call void %22(%struct.jpeg_compress_struct* %23, i32 %24, i32 %25) #4
  %26 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8, !tbaa !1
  %marker11 = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %26, i32 0, i32 70
  %27 = load %struct.jpeg_marker_writer*, %struct.jpeg_marker_writer** %marker11, align 8, !tbaa !48
  %write_marker_byte12 = getelementptr inbounds %struct.jpeg_marker_writer, %struct.jpeg_marker_writer* %27, i32 0, i32 6
  %28 = load void (%struct.jpeg_compress_struct*, i32)*, void (%struct.jpeg_compress_struct*, i32)** %write_marker_byte12, align 8, !tbaa !54
  store void (%struct.jpeg_compress_struct*, i32)* %28, void (%struct.jpeg_compress_struct*, i32)** %write_marker_byte, align 8, !tbaa !1
  br label %while.cond

while.cond:                                       ; preds = %while.body, %if.end
  %29 = load i32, i32* %datalen.addr, align 4, !tbaa !5
  %dec = add i32 %29, -1
  store i32 %dec, i32* %datalen.addr, align 4, !tbaa !5
  %tobool = icmp ne i32 %29, 0
  br i1 %tobool, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %30 = load void (%struct.jpeg_compress_struct*, i32)*, void (%struct.jpeg_compress_struct*, i32)** %write_marker_byte, align 8, !tbaa !1
  %31 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8, !tbaa !1
  %32 = load i8*, i8** %dataptr.addr, align 8, !tbaa !1
  %33 = load i8, i8* %32, align 1, !tbaa !28
  %conv = zext i8 %33 to i32
  call void %30(%struct.jpeg_compress_struct* %31, i32 %conv) #4
  %34 = load i8*, i8** %dataptr.addr, align 8, !tbaa !1
  %incdec.ptr = getelementptr inbounds i8, i8* %34, i32 1
  store i8* %incdec.ptr, i8** %dataptr.addr, align 8, !tbaa !1
  br label %while.cond

while.end:                                        ; preds = %while.cond
  %35 = bitcast void (%struct.jpeg_compress_struct*, i32)** %write_marker_byte to i8*
  call void @llvm.lifetime.end(i64 8, i8* %35) #1
  ret void
}

; Function Attrs: nounwind uwtable
define void @jpeg_write_m_header(%struct.jpeg_compress_struct* %cinfo, i32 %marker, i32 %datalen) #0 {
entry:
  %cinfo.addr = alloca %struct.jpeg_compress_struct*, align 8
  %marker.addr = alloca i32, align 4
  %datalen.addr = alloca i32, align 4
  store %struct.jpeg_compress_struct* %cinfo, %struct.jpeg_compress_struct** %cinfo.addr, align 8, !tbaa !1
  store i32 %marker, i32* %marker.addr, align 4, !tbaa !5
  store i32 %datalen, i32* %datalen.addr, align 4, !tbaa !5
  %0 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8, !tbaa !1
  %next_scanline = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %0, i32 0, i32 46
  %1 = load i32, i32* %next_scanline, align 4, !tbaa !33
  %cmp = icmp ne i32 %1, 0
  br i1 %cmp, label %if.then, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %entry
  %2 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8, !tbaa !1
  %global_state = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %2, i32 0, i32 5
  %3 = load i32, i32* %global_state, align 4, !tbaa !27
  %cmp1 = icmp ne i32 %3, 101
  br i1 %cmp1, label %land.lhs.true, label %if.end

land.lhs.true:                                    ; preds = %lor.lhs.false
  %4 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8, !tbaa !1
  %global_state2 = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %4, i32 0, i32 5
  %5 = load i32, i32* %global_state2, align 4, !tbaa !27
  %cmp3 = icmp ne i32 %5, 102
  br i1 %cmp3, label %land.lhs.true.4, label %if.end

land.lhs.true.4:                                  ; preds = %land.lhs.true
  %6 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8, !tbaa !1
  %global_state5 = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %6, i32 0, i32 5
  %7 = load i32, i32* %global_state5, align 4, !tbaa !27
  %cmp6 = icmp ne i32 %7, 103
  br i1 %cmp6, label %if.then, label %if.end

if.then:                                          ; preds = %land.lhs.true.4, %entry
  %8 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8, !tbaa !1
  %err = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %8, i32 0, i32 0
  %9 = load %struct.jpeg_error_mgr*, %struct.jpeg_error_mgr** %err, align 8, !tbaa !13
  %msg_code = getelementptr inbounds %struct.jpeg_error_mgr, %struct.jpeg_error_mgr* %9, i32 0, i32 5
  store i32 21, i32* %msg_code, align 4, !tbaa !14
  %10 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8, !tbaa !1
  %global_state7 = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %10, i32 0, i32 5
  %11 = load i32, i32* %global_state7, align 4, !tbaa !27
  %12 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8, !tbaa !1
  %err8 = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %12, i32 0, i32 0
  %13 = load %struct.jpeg_error_mgr*, %struct.jpeg_error_mgr** %err8, align 8, !tbaa !13
  %msg_parm = getelementptr inbounds %struct.jpeg_error_mgr, %struct.jpeg_error_mgr* %13, i32 0, i32 6
  %i = bitcast %union.anon* %msg_parm to [8 x i32]*
  %arrayidx = getelementptr inbounds [8 x i32], [8 x i32]* %i, i32 0, i64 0
  store i32 %11, i32* %arrayidx, align 4, !tbaa !5
  %14 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8, !tbaa !1
  %err9 = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %14, i32 0, i32 0
  %15 = load %struct.jpeg_error_mgr*, %struct.jpeg_error_mgr** %err9, align 8, !tbaa !13
  %error_exit = getelementptr inbounds %struct.jpeg_error_mgr, %struct.jpeg_error_mgr* %15, i32 0, i32 0
  %16 = load void (%struct.jpeg_common_struct*)*, void (%struct.jpeg_common_struct*)** %error_exit, align 8, !tbaa !16
  %17 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8, !tbaa !1
  %18 = bitcast %struct.jpeg_compress_struct* %17 to %struct.jpeg_common_struct*
  call void %16(%struct.jpeg_common_struct* %18) #4
  br label %if.end

if.end:                                           ; preds = %if.then, %land.lhs.true.4, %land.lhs.true, %lor.lhs.false
  %19 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8, !tbaa !1
  %marker10 = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %19, i32 0, i32 70
  %20 = load %struct.jpeg_marker_writer*, %struct.jpeg_marker_writer** %marker10, align 8, !tbaa !48
  %write_marker_header = getelementptr inbounds %struct.jpeg_marker_writer, %struct.jpeg_marker_writer* %20, i32 0, i32 5
  %21 = load void (%struct.jpeg_compress_struct*, i32, i32)*, void (%struct.jpeg_compress_struct*, i32, i32)** %write_marker_header, align 8, !tbaa !53
  %22 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8, !tbaa !1
  %23 = load i32, i32* %marker.addr, align 4, !tbaa !5
  %24 = load i32, i32* %datalen.addr, align 4, !tbaa !5
  call void %21(%struct.jpeg_compress_struct* %22, i32 %23, i32 %24) #4
  ret void
}

; Function Attrs: nounwind uwtable
define void @jpeg_write_m_byte(%struct.jpeg_compress_struct* %cinfo, i32 %val) #0 {
entry:
  %cinfo.addr = alloca %struct.jpeg_compress_struct*, align 8
  %val.addr = alloca i32, align 4
  store %struct.jpeg_compress_struct* %cinfo, %struct.jpeg_compress_struct** %cinfo.addr, align 8, !tbaa !1
  store i32 %val, i32* %val.addr, align 4, !tbaa !5
  %0 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8, !tbaa !1
  %marker = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %0, i32 0, i32 70
  %1 = load %struct.jpeg_marker_writer*, %struct.jpeg_marker_writer** %marker, align 8, !tbaa !48
  %write_marker_byte = getelementptr inbounds %struct.jpeg_marker_writer, %struct.jpeg_marker_writer* %1, i32 0, i32 6
  %2 = load void (%struct.jpeg_compress_struct*, i32)*, void (%struct.jpeg_compress_struct*, i32)** %write_marker_byte, align 8, !tbaa !54
  %3 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8, !tbaa !1
  %4 = load i32, i32* %val.addr, align 4, !tbaa !5
  call void %2(%struct.jpeg_compress_struct* %3, i32 %4) #4
  ret void
}

; Function Attrs: nounwind uwtable
define void @jpeg_write_tables(%struct.jpeg_compress_struct* %cinfo) #0 {
entry:
  %cinfo.addr = alloca %struct.jpeg_compress_struct*, align 8
  store %struct.jpeg_compress_struct* %cinfo, %struct.jpeg_compress_struct** %cinfo.addr, align 8, !tbaa !1
  %0 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8, !tbaa !1
  %global_state = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %0, i32 0, i32 5
  %1 = load i32, i32* %global_state, align 4, !tbaa !27
  %cmp = icmp ne i32 %1, 100
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %2 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8, !tbaa !1
  %err = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %2, i32 0, i32 0
  %3 = load %struct.jpeg_error_mgr*, %struct.jpeg_error_mgr** %err, align 8, !tbaa !13
  %msg_code = getelementptr inbounds %struct.jpeg_error_mgr, %struct.jpeg_error_mgr* %3, i32 0, i32 5
  store i32 21, i32* %msg_code, align 4, !tbaa !14
  %4 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8, !tbaa !1
  %global_state1 = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %4, i32 0, i32 5
  %5 = load i32, i32* %global_state1, align 4, !tbaa !27
  %6 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8, !tbaa !1
  %err2 = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %6, i32 0, i32 0
  %7 = load %struct.jpeg_error_mgr*, %struct.jpeg_error_mgr** %err2, align 8, !tbaa !13
  %msg_parm = getelementptr inbounds %struct.jpeg_error_mgr, %struct.jpeg_error_mgr* %7, i32 0, i32 6
  %i = bitcast %union.anon* %msg_parm to [8 x i32]*
  %arrayidx = getelementptr inbounds [8 x i32], [8 x i32]* %i, i32 0, i64 0
  store i32 %5, i32* %arrayidx, align 4, !tbaa !5
  %8 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8, !tbaa !1
  %err3 = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %8, i32 0, i32 0
  %9 = load %struct.jpeg_error_mgr*, %struct.jpeg_error_mgr** %err3, align 8, !tbaa !13
  %error_exit = getelementptr inbounds %struct.jpeg_error_mgr, %struct.jpeg_error_mgr* %9, i32 0, i32 0
  %10 = load void (%struct.jpeg_common_struct*)*, void (%struct.jpeg_common_struct*)** %error_exit, align 8, !tbaa !16
  %11 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8, !tbaa !1
  %12 = bitcast %struct.jpeg_compress_struct* %11 to %struct.jpeg_common_struct*
  call void %10(%struct.jpeg_common_struct* %12) #4
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %13 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8, !tbaa !1
  %err4 = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %13, i32 0, i32 0
  %14 = load %struct.jpeg_error_mgr*, %struct.jpeg_error_mgr** %err4, align 8, !tbaa !13
  %reset_error_mgr = getelementptr inbounds %struct.jpeg_error_mgr, %struct.jpeg_error_mgr* %14, i32 0, i32 4
  %15 = load void (%struct.jpeg_common_struct*)*, void (%struct.jpeg_common_struct*)** %reset_error_mgr, align 8, !tbaa !55
  %16 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8, !tbaa !1
  %17 = bitcast %struct.jpeg_compress_struct* %16 to %struct.jpeg_common_struct*
  call void %15(%struct.jpeg_common_struct* %17) #4
  %18 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8, !tbaa !1
  %dest = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %18, i32 0, i32 6
  %19 = load %struct.jpeg_destination_mgr*, %struct.jpeg_destination_mgr** %dest, align 8, !tbaa !20
  %init_destination = getelementptr inbounds %struct.jpeg_destination_mgr, %struct.jpeg_destination_mgr* %19, i32 0, i32 2
  %20 = load void (%struct.jpeg_compress_struct*)*, void (%struct.jpeg_compress_struct*)** %init_destination, align 8, !tbaa !56
  %21 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8, !tbaa !1
  call void %20(%struct.jpeg_compress_struct* %21) #4
  %22 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8, !tbaa !1
  call void @jinit_marker_writer(%struct.jpeg_compress_struct* %22) #4
  %23 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8, !tbaa !1
  %marker = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %23, i32 0, i32 70
  %24 = load %struct.jpeg_marker_writer*, %struct.jpeg_marker_writer** %marker, align 8, !tbaa !48
  %write_tables_only = getelementptr inbounds %struct.jpeg_marker_writer, %struct.jpeg_marker_writer* %24, i32 0, i32 4
  %25 = load void (%struct.jpeg_compress_struct*)*, void (%struct.jpeg_compress_struct*)** %write_tables_only, align 8, !tbaa !57
  %26 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8, !tbaa !1
  call void %25(%struct.jpeg_compress_struct* %26) #4
  %27 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8, !tbaa !1
  %dest5 = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %27, i32 0, i32 6
  %28 = load %struct.jpeg_destination_mgr*, %struct.jpeg_destination_mgr** %dest5, align 8, !tbaa !20
  %term_destination = getelementptr inbounds %struct.jpeg_destination_mgr, %struct.jpeg_destination_mgr* %28, i32 0, i32 4
  %29 = load void (%struct.jpeg_compress_struct*)*, void (%struct.jpeg_compress_struct*)** %term_destination, align 8, !tbaa !51
  %30 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8, !tbaa !1
  call void %29(%struct.jpeg_compress_struct* %30) #4
  ret void
}

declare void @jinit_marker_writer(%struct.jpeg_compress_struct*) #3

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { nounwind "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
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
!7 = !{!8, !8, i64 0}
!8 = !{!"long", !3, i64 0}
!9 = !{!10, !2, i64 8}
!10 = !{!"jpeg_compress_struct", !2, i64 0, !2, i64 8, !2, i64 16, !2, i64 24, !3, i64 32, !6, i64 36, !2, i64 40, !6, i64 48, !6, i64 52, !6, i64 56, !3, i64 60, !11, i64 64, !6, i64 72, !6, i64 76, !6, i64 80, !6, i64 84, !6, i64 88, !6, i64 92, !3, i64 96, !2, i64 104, !3, i64 112, !3, i64 144, !3, i64 160, !3, i64 192, !3, i64 224, !3, i64 240, !3, i64 256, !6, i64 272, !2, i64 280, !3, i64 288, !3, i64 292, !3, i64 296, !3, i64 300, !3, i64 304, !6, i64 308, !3, i64 312, !6, i64 316, !6, i64 320, !3, i64 324, !3, i64 328, !3, i64 329, !3, i64 330, !12, i64 332, !12, i64 334, !3, i64 336, !3, i64 340, !6, i64 344, !3, i64 348, !6, i64 352, !6, i64 356, !6, i64 360, !6, i64 364, !6, i64 368, !6, i64 372, !3, i64 376, !6, i64 408, !6, i64 412, !6, i64 416, !3, i64 420, !6, i64 460, !6, i64 464, !6, i64 468, !6, i64 472, !6, i64 476, !2, i64 480, !6, i64 488, !2, i64 496, !2, i64 504, !2, i64 512, !2, i64 520, !2, i64 528, !2, i64 536, !2, i64 544, !2, i64 552, !2, i64 560, !2, i64 568, !6, i64 576}
!11 = !{!"double", !3, i64 0}
!12 = !{!"short", !3, i64 0}
!13 = !{!10, !2, i64 0}
!14 = !{!15, !6, i64 40}
!15 = !{!"jpeg_error_mgr", !2, i64 0, !2, i64 8, !2, i64 16, !2, i64 24, !2, i64 32, !6, i64 40, !3, i64 44, !6, i64 124, !8, i64 128, !2, i64 136, !6, i64 144, !2, i64 152, !6, i64 160, !6, i64 164}
!16 = !{!15, !2, i64 0}
!17 = !{!10, !2, i64 24}
!18 = !{!10, !3, i64 32}
!19 = !{!10, !2, i64 16}
!20 = !{!10, !2, i64 40}
!21 = !{!10, !2, i64 104}
!22 = !{!10, !6, i64 476}
!23 = !{!10, !2, i64 480}
!24 = !{!10, !6, i64 488}
!25 = !{!10, !2, i64 568}
!26 = !{!10, !11, i64 64}
!27 = !{!10, !6, i64 36}
!28 = !{!3, !3, i64 0}
!29 = !{!30, !3, i64 128}
!30 = !{!"", !3, i64 0, !3, i64 128}
!31 = !{!32, !3, i64 276}
!32 = !{!"", !3, i64 0, !3, i64 17, !3, i64 276}
!33 = !{!10, !6, i64 344}
!34 = !{!10, !6, i64 52}
!35 = !{!10, !2, i64 496}
!36 = !{!37, !2, i64 16}
!37 = !{!"jpeg_comp_master", !2, i64 0, !2, i64 8, !2, i64 16, !3, i64 24, !3, i64 28}
!38 = !{!37, !3, i64 28}
!39 = !{!37, !2, i64 0}
!40 = !{!10, !6, i64 368}
!41 = !{!42, !8, i64 8}
!42 = !{!"jpeg_progress_mgr", !2, i64 0, !8, i64 8, !8, i64 16, !6, i64 24, !6, i64 28}
!43 = !{!42, !8, i64 16}
!44 = !{!42, !2, i64 0}
!45 = !{!10, !2, i64 520}
!46 = !{!47, !2, i64 8}
!47 = !{!"jpeg_c_coef_controller", !2, i64 0, !2, i64 8}
!48 = !{!10, !2, i64 528}
!49 = !{!50, !2, i64 24}
!50 = !{!"jpeg_marker_writer", !2, i64 0, !2, i64 8, !2, i64 16, !2, i64 24, !2, i64 32, !2, i64 40, !2, i64 48}
!51 = !{!52, !2, i64 32}
!52 = !{!"jpeg_destination_mgr", !2, i64 0, !8, i64 8, !2, i64 16, !2, i64 24, !2, i64 32}
!53 = !{!50, !2, i64 40}
!54 = !{!50, !2, i64 48}
!55 = !{!15, !2, i64 32}
!56 = !{!52, !2, i64 16}
!57 = !{!50, !2, i64 32}
