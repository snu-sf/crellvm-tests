; ModuleID = './MultiSource.Benchmarks.mediabench/40.jpeg.jpeg-6a.jcapimin.bc'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.jpeg_compress_struct = type { %struct.jpeg_error_mgr*, %struct.jpeg_memory_mgr*, %struct.jpeg_progress_mgr*, i32, i32, %struct.jpeg_destination_mgr*, i32, i32, i32, i32, double, i32, i32, i32, %struct.jpeg_component_info*, [4 x %struct.JQUANT_TBL*], [4 x %struct.JHUFF_TBL*], [4 x %struct.JHUFF_TBL*], [16 x i8], [16 x i8], [16 x i8], i32, %struct.jpeg_scan_info*, i32, i32, i32, i32, i32, i32, i32, i32, i32, i8, i16, i16, i32, i32, i32, i32, i32, i32, i32, [4 x %struct.jpeg_component_info*], i32, i32, i32, [10 x i32], i32, i32, i32, i32, %struct.jpeg_comp_master*, %struct.jpeg_c_main_controller*, %struct.jpeg_c_prep_controller*, %struct.jpeg_c_coef_controller*, %struct.jpeg_marker_writer*, %struct.jpeg_color_converter*, %struct.jpeg_downsampler*, %struct.jpeg_forward_dct*, %struct.jpeg_entropy_encoder* }
%struct.jpeg_error_mgr = type { void (%struct.jpeg_common_struct*)*, void (%struct.jpeg_common_struct*, i32)*, void (%struct.jpeg_common_struct*)*, void (%struct.jpeg_common_struct*, i8*)*, void (%struct.jpeg_common_struct*)*, i32, %union.anon, i32, i64, i8**, i32, i8**, i32, i32 }
%struct.jpeg_common_struct = type { %struct.jpeg_error_mgr*, %struct.jpeg_memory_mgr*, %struct.jpeg_progress_mgr*, i32, i32 }
%union.anon = type { [8 x i32], [48 x i8] }
%struct.jpeg_memory_mgr = type { i8* (%struct.jpeg_common_struct*, i32, i64)*, i8* (%struct.jpeg_common_struct*, i32, i64)*, i8** (%struct.jpeg_common_struct*, i32, i32, i32)*, [64 x i16]** (%struct.jpeg_common_struct*, i32, i32, i32)*, %struct.jvirt_sarray_control* (%struct.jpeg_common_struct*, i32, i32, i32, i32, i32)*, %struct.jvirt_barray_control* (%struct.jpeg_common_struct*, i32, i32, i32, i32, i32)*, {}*, i8** (%struct.jpeg_common_struct*, %struct.jvirt_sarray_control*, i32, i32, i32)*, [64 x i16]** (%struct.jpeg_common_struct*, %struct.jvirt_barray_control*, i32, i32, i32)*, void (%struct.jpeg_common_struct*, i32)*, {}*, i64 }
%struct.jvirt_sarray_control = type opaque
%struct.jvirt_barray_control = type opaque
%struct.jpeg_progress_mgr = type { {}*, i64, i64, i32, i32 }
%struct.jpeg_destination_mgr = type { i8*, i64, void (%struct.jpeg_compress_struct*)*, i32 (%struct.jpeg_compress_struct*)*, void (%struct.jpeg_compress_struct*)* }
%struct.jpeg_component_info = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, %struct.JQUANT_TBL*, i8* }
%struct.JQUANT_TBL = type { [64 x i16], i32 }
%struct.JHUFF_TBL = type { [17 x i8], [256 x i8], i32 }
%struct.jpeg_scan_info = type { i32, [4 x i32], i32, i32, i32, i32 }
%struct.jpeg_comp_master = type { void (%struct.jpeg_compress_struct*)*, void (%struct.jpeg_compress_struct*)*, void (%struct.jpeg_compress_struct*)*, i32, i32 }
%struct.jpeg_c_main_controller = type { void (%struct.jpeg_compress_struct*, i32)*, void (%struct.jpeg_compress_struct*, i8**, i32*, i32)* }
%struct.jpeg_c_prep_controller = type { void (%struct.jpeg_compress_struct*, i32)*, void (%struct.jpeg_compress_struct*, i8**, i32*, i32, i8***, i32*, i32)* }
%struct.jpeg_c_coef_controller = type { void (%struct.jpeg_compress_struct*, i32)*, i32 (%struct.jpeg_compress_struct*, i8***)* }
%struct.jpeg_marker_writer = type { void (%struct.jpeg_compress_struct*, i32, i8*, i32)*, void (%struct.jpeg_compress_struct*)*, void (%struct.jpeg_compress_struct*)*, void (%struct.jpeg_compress_struct*)*, void (%struct.jpeg_compress_struct*)*, void (%struct.jpeg_compress_struct*)* }
%struct.jpeg_color_converter = type { void (%struct.jpeg_compress_struct*)*, void (%struct.jpeg_compress_struct*, i8**, i8***, i32, i32)* }
%struct.jpeg_downsampler = type { void (%struct.jpeg_compress_struct*)*, void (%struct.jpeg_compress_struct*, i8***, i32, i8***, i32)*, i32 }
%struct.jpeg_forward_dct = type { void (%struct.jpeg_compress_struct*)*, void (%struct.jpeg_compress_struct*, %struct.jpeg_component_info*, i8**, [64 x i16]*, i32, i32, i32)* }
%struct.jpeg_entropy_encoder = type { void (%struct.jpeg_compress_struct*, i32)*, i32 (%struct.jpeg_compress_struct*, [64 x i16]**)*, void (%struct.jpeg_compress_struct*)* }

; Function Attrs: nounwind uwtable
define void @jpeg_CreateCompress(%struct.jpeg_compress_struct* %cinfo, i32 %version, i64 %structsize) #0 {
entry:
  %cinfo.addr = alloca %struct.jpeg_compress_struct*, align 8
  %version.addr = alloca i32, align 4
  %structsize.addr = alloca i64, align 8
  %i = alloca i32, align 4
  %err23 = alloca %struct.jpeg_error_mgr*, align 8
  store %struct.jpeg_compress_struct* %cinfo, %struct.jpeg_compress_struct** %cinfo.addr, align 8
  store i32 %version, i32* %version.addr, align 4
  store i64 %structsize, i64* %structsize.addr, align 8
  %0 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8
  %mem = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %0, i32 0, i32 1
  store %struct.jpeg_memory_mgr* null, %struct.jpeg_memory_mgr** %mem, align 8
  %1 = load i32, i32* %version.addr, align 4
  %cmp = icmp ne i32 %1, 61
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %2 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8
  %err = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %2, i32 0, i32 0
  %3 = load %struct.jpeg_error_mgr*, %struct.jpeg_error_mgr** %err, align 8
  %msg_code = getelementptr inbounds %struct.jpeg_error_mgr, %struct.jpeg_error_mgr* %3, i32 0, i32 5
  store i32 10, i32* %msg_code, align 4
  %4 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8
  %err1 = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %4, i32 0, i32 0
  %5 = load %struct.jpeg_error_mgr*, %struct.jpeg_error_mgr** %err1, align 8
  %msg_parm = getelementptr inbounds %struct.jpeg_error_mgr, %struct.jpeg_error_mgr* %5, i32 0, i32 6
  %i2 = bitcast %union.anon* %msg_parm to [8 x i32]*
  %arrayidx = getelementptr inbounds [8 x i32], [8 x i32]* %i2, i32 0, i64 0
  store i32 61, i32* %arrayidx, align 4
  %6 = load i32, i32* %version.addr, align 4
  %7 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8
  %err3 = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %7, i32 0, i32 0
  %8 = load %struct.jpeg_error_mgr*, %struct.jpeg_error_mgr** %err3, align 8
  %msg_parm4 = getelementptr inbounds %struct.jpeg_error_mgr, %struct.jpeg_error_mgr* %8, i32 0, i32 6
  %i5 = bitcast %union.anon* %msg_parm4 to [8 x i32]*
  %arrayidx6 = getelementptr inbounds [8 x i32], [8 x i32]* %i5, i32 0, i64 1
  store i32 %6, i32* %arrayidx6, align 4
  %9 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8
  %err7 = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %9, i32 0, i32 0
  %10 = load %struct.jpeg_error_mgr*, %struct.jpeg_error_mgr** %err7, align 8
  %error_exit = getelementptr inbounds %struct.jpeg_error_mgr, %struct.jpeg_error_mgr* %10, i32 0, i32 0
  %11 = load void (%struct.jpeg_common_struct*)*, void (%struct.jpeg_common_struct*)** %error_exit, align 8
  %12 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8
  %13 = bitcast %struct.jpeg_compress_struct* %12 to %struct.jpeg_common_struct*
  call void %11(%struct.jpeg_common_struct* %13)
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %14 = load i64, i64* %structsize.addr, align 8
  %cmp8 = icmp ne i64 %14, 496
  br i1 %cmp8, label %if.then.9, label %if.end.22

if.then.9:                                        ; preds = %if.end
  %15 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8
  %err10 = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %15, i32 0, i32 0
  %16 = load %struct.jpeg_error_mgr*, %struct.jpeg_error_mgr** %err10, align 8
  %msg_code11 = getelementptr inbounds %struct.jpeg_error_mgr, %struct.jpeg_error_mgr* %16, i32 0, i32 5
  store i32 19, i32* %msg_code11, align 4
  %17 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8
  %err12 = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %17, i32 0, i32 0
  %18 = load %struct.jpeg_error_mgr*, %struct.jpeg_error_mgr** %err12, align 8
  %msg_parm13 = getelementptr inbounds %struct.jpeg_error_mgr, %struct.jpeg_error_mgr* %18, i32 0, i32 6
  %i14 = bitcast %union.anon* %msg_parm13 to [8 x i32]*
  %arrayidx15 = getelementptr inbounds [8 x i32], [8 x i32]* %i14, i32 0, i64 0
  store i32 496, i32* %arrayidx15, align 4
  %19 = load i64, i64* %structsize.addr, align 8
  %conv = trunc i64 %19 to i32
  %20 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8
  %err16 = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %20, i32 0, i32 0
  %21 = load %struct.jpeg_error_mgr*, %struct.jpeg_error_mgr** %err16, align 8
  %msg_parm17 = getelementptr inbounds %struct.jpeg_error_mgr, %struct.jpeg_error_mgr* %21, i32 0, i32 6
  %i18 = bitcast %union.anon* %msg_parm17 to [8 x i32]*
  %arrayidx19 = getelementptr inbounds [8 x i32], [8 x i32]* %i18, i32 0, i64 1
  store i32 %conv, i32* %arrayidx19, align 4
  %22 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8
  %err20 = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %22, i32 0, i32 0
  %23 = load %struct.jpeg_error_mgr*, %struct.jpeg_error_mgr** %err20, align 8
  %error_exit21 = getelementptr inbounds %struct.jpeg_error_mgr, %struct.jpeg_error_mgr* %23, i32 0, i32 0
  %24 = load void (%struct.jpeg_common_struct*)*, void (%struct.jpeg_common_struct*)** %error_exit21, align 8
  %25 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8
  %26 = bitcast %struct.jpeg_compress_struct* %25 to %struct.jpeg_common_struct*
  call void %24(%struct.jpeg_common_struct* %26)
  br label %if.end.22

if.end.22:                                        ; preds = %if.then.9, %if.end
  %27 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8
  %err24 = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %27, i32 0, i32 0
  %28 = load %struct.jpeg_error_mgr*, %struct.jpeg_error_mgr** %err24, align 8
  store %struct.jpeg_error_mgr* %28, %struct.jpeg_error_mgr** %err23, align 8
  %29 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8
  %30 = bitcast %struct.jpeg_compress_struct* %29 to i8*
  call void @llvm.memset.p0i8.i64(i8* %30, i8 0, i64 496, i32 1, i1 false)
  %31 = load %struct.jpeg_error_mgr*, %struct.jpeg_error_mgr** %err23, align 8
  %32 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8
  %err25 = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %32, i32 0, i32 0
  store %struct.jpeg_error_mgr* %31, %struct.jpeg_error_mgr** %err25, align 8
  %33 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8
  %is_decompressor = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %33, i32 0, i32 3
  store i32 0, i32* %is_decompressor, align 4
  %34 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8
  %35 = bitcast %struct.jpeg_compress_struct* %34 to %struct.jpeg_common_struct*
  call void @jinit_memory_mgr(%struct.jpeg_common_struct* %35)
  %36 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8
  %progress = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %36, i32 0, i32 2
  store %struct.jpeg_progress_mgr* null, %struct.jpeg_progress_mgr** %progress, align 8
  %37 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8
  %dest = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %37, i32 0, i32 5
  store %struct.jpeg_destination_mgr* null, %struct.jpeg_destination_mgr** %dest, align 8
  %38 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8
  %comp_info = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %38, i32 0, i32 14
  store %struct.jpeg_component_info* null, %struct.jpeg_component_info** %comp_info, align 8
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end.22
  %39 = load i32, i32* %i, align 4
  %cmp26 = icmp slt i32 %39, 4
  br i1 %cmp26, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %40 = load i32, i32* %i, align 4
  %idxprom = sext i32 %40 to i64
  %41 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8
  %quant_tbl_ptrs = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %41, i32 0, i32 15
  %arrayidx28 = getelementptr inbounds [4 x %struct.JQUANT_TBL*], [4 x %struct.JQUANT_TBL*]* %quant_tbl_ptrs, i32 0, i64 %idxprom
  store %struct.JQUANT_TBL* null, %struct.JQUANT_TBL** %arrayidx28, align 8
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %42 = load i32, i32* %i, align 4
  %inc = add nsw i32 %42, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  store i32 0, i32* %i, align 4
  br label %for.cond.29

for.cond.29:                                      ; preds = %for.inc.37, %for.end
  %43 = load i32, i32* %i, align 4
  %cmp30 = icmp slt i32 %43, 4
  br i1 %cmp30, label %for.body.32, label %for.end.39

for.body.32:                                      ; preds = %for.cond.29
  %44 = load i32, i32* %i, align 4
  %idxprom33 = sext i32 %44 to i64
  %45 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8
  %dc_huff_tbl_ptrs = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %45, i32 0, i32 16
  %arrayidx34 = getelementptr inbounds [4 x %struct.JHUFF_TBL*], [4 x %struct.JHUFF_TBL*]* %dc_huff_tbl_ptrs, i32 0, i64 %idxprom33
  store %struct.JHUFF_TBL* null, %struct.JHUFF_TBL** %arrayidx34, align 8
  %46 = load i32, i32* %i, align 4
  %idxprom35 = sext i32 %46 to i64
  %47 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8
  %ac_huff_tbl_ptrs = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %47, i32 0, i32 17
  %arrayidx36 = getelementptr inbounds [4 x %struct.JHUFF_TBL*], [4 x %struct.JHUFF_TBL*]* %ac_huff_tbl_ptrs, i32 0, i64 %idxprom35
  store %struct.JHUFF_TBL* null, %struct.JHUFF_TBL** %arrayidx36, align 8
  br label %for.inc.37

for.inc.37:                                       ; preds = %for.body.32
  %48 = load i32, i32* %i, align 4
  %inc38 = add nsw i32 %48, 1
  store i32 %inc38, i32* %i, align 4
  br label %for.cond.29

for.end.39:                                       ; preds = %for.cond.29
  %49 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8
  %input_gamma = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %49, i32 0, i32 10
  store double 1.000000e+00, double* %input_gamma, align 8
  %50 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8
  %global_state = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %50, i32 0, i32 4
  store i32 100, i32* %global_state, align 4
  ret void
}

; Function Attrs: nounwind
declare void @llvm.memset.p0i8.i64(i8* nocapture, i8, i64, i32, i1) #1

declare void @jinit_memory_mgr(%struct.jpeg_common_struct*) #2

; Function Attrs: nounwind uwtable
define void @jpeg_destroy_compress(%struct.jpeg_compress_struct* %cinfo) #0 {
entry:
  %cinfo.addr = alloca %struct.jpeg_compress_struct*, align 8
  store %struct.jpeg_compress_struct* %cinfo, %struct.jpeg_compress_struct** %cinfo.addr, align 8
  %0 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8
  %1 = bitcast %struct.jpeg_compress_struct* %0 to %struct.jpeg_common_struct*
  call void @jpeg_destroy(%struct.jpeg_common_struct* %1)
  ret void
}

declare void @jpeg_destroy(%struct.jpeg_common_struct*) #2

; Function Attrs: nounwind uwtable
define void @jpeg_abort_compress(%struct.jpeg_compress_struct* %cinfo) #0 {
entry:
  %cinfo.addr = alloca %struct.jpeg_compress_struct*, align 8
  store %struct.jpeg_compress_struct* %cinfo, %struct.jpeg_compress_struct** %cinfo.addr, align 8
  %0 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8
  %1 = bitcast %struct.jpeg_compress_struct* %0 to %struct.jpeg_common_struct*
  call void @jpeg_abort(%struct.jpeg_common_struct* %1)
  ret void
}

declare void @jpeg_abort(%struct.jpeg_common_struct*) #2

; Function Attrs: nounwind uwtable
define void @jpeg_suppress_tables(%struct.jpeg_compress_struct* %cinfo, i32 %suppress) #0 {
entry:
  %cinfo.addr = alloca %struct.jpeg_compress_struct*, align 8
  %suppress.addr = alloca i32, align 4
  %i = alloca i32, align 4
  %qtbl = alloca %struct.JQUANT_TBL*, align 8
  %htbl = alloca %struct.JHUFF_TBL*, align 8
  store %struct.jpeg_compress_struct* %cinfo, %struct.jpeg_compress_struct** %cinfo.addr, align 8
  store i32 %suppress, i32* %suppress.addr, align 4
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %0 = load i32, i32* %i, align 4
  %cmp = icmp slt i32 %0, 4
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %1 = load i32, i32* %i, align 4
  %idxprom = sext i32 %1 to i64
  %2 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8
  %quant_tbl_ptrs = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %2, i32 0, i32 15
  %arrayidx = getelementptr inbounds [4 x %struct.JQUANT_TBL*], [4 x %struct.JQUANT_TBL*]* %quant_tbl_ptrs, i32 0, i64 %idxprom
  %3 = load %struct.JQUANT_TBL*, %struct.JQUANT_TBL** %arrayidx, align 8
  store %struct.JQUANT_TBL* %3, %struct.JQUANT_TBL** %qtbl, align 8
  %cmp1 = icmp ne %struct.JQUANT_TBL* %3, null
  br i1 %cmp1, label %if.then, label %if.end

if.then:                                          ; preds = %for.body
  %4 = load i32, i32* %suppress.addr, align 4
  %5 = load %struct.JQUANT_TBL*, %struct.JQUANT_TBL** %qtbl, align 8
  %sent_table = getelementptr inbounds %struct.JQUANT_TBL, %struct.JQUANT_TBL* %5, i32 0, i32 1
  store i32 %4, i32* %sent_table, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %for.body
  br label %for.inc

for.inc:                                          ; preds = %if.end
  %6 = load i32, i32* %i, align 4
  %inc = add nsw i32 %6, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  store i32 0, i32* %i, align 4
  br label %for.cond.2

for.cond.2:                                       ; preds = %for.inc.17, %for.end
  %7 = load i32, i32* %i, align 4
  %cmp3 = icmp slt i32 %7, 4
  br i1 %cmp3, label %for.body.4, label %for.end.19

for.body.4:                                       ; preds = %for.cond.2
  %8 = load i32, i32* %i, align 4
  %idxprom5 = sext i32 %8 to i64
  %9 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8
  %dc_huff_tbl_ptrs = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %9, i32 0, i32 16
  %arrayidx6 = getelementptr inbounds [4 x %struct.JHUFF_TBL*], [4 x %struct.JHUFF_TBL*]* %dc_huff_tbl_ptrs, i32 0, i64 %idxprom5
  %10 = load %struct.JHUFF_TBL*, %struct.JHUFF_TBL** %arrayidx6, align 8
  store %struct.JHUFF_TBL* %10, %struct.JHUFF_TBL** %htbl, align 8
  %cmp7 = icmp ne %struct.JHUFF_TBL* %10, null
  br i1 %cmp7, label %if.then.8, label %if.end.10

if.then.8:                                        ; preds = %for.body.4
  %11 = load i32, i32* %suppress.addr, align 4
  %12 = load %struct.JHUFF_TBL*, %struct.JHUFF_TBL** %htbl, align 8
  %sent_table9 = getelementptr inbounds %struct.JHUFF_TBL, %struct.JHUFF_TBL* %12, i32 0, i32 2
  store i32 %11, i32* %sent_table9, align 4
  br label %if.end.10

if.end.10:                                        ; preds = %if.then.8, %for.body.4
  %13 = load i32, i32* %i, align 4
  %idxprom11 = sext i32 %13 to i64
  %14 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8
  %ac_huff_tbl_ptrs = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %14, i32 0, i32 17
  %arrayidx12 = getelementptr inbounds [4 x %struct.JHUFF_TBL*], [4 x %struct.JHUFF_TBL*]* %ac_huff_tbl_ptrs, i32 0, i64 %idxprom11
  %15 = load %struct.JHUFF_TBL*, %struct.JHUFF_TBL** %arrayidx12, align 8
  store %struct.JHUFF_TBL* %15, %struct.JHUFF_TBL** %htbl, align 8
  %cmp13 = icmp ne %struct.JHUFF_TBL* %15, null
  br i1 %cmp13, label %if.then.14, label %if.end.16

if.then.14:                                       ; preds = %if.end.10
  %16 = load i32, i32* %suppress.addr, align 4
  %17 = load %struct.JHUFF_TBL*, %struct.JHUFF_TBL** %htbl, align 8
  %sent_table15 = getelementptr inbounds %struct.JHUFF_TBL, %struct.JHUFF_TBL* %17, i32 0, i32 2
  store i32 %16, i32* %sent_table15, align 4
  br label %if.end.16

if.end.16:                                        ; preds = %if.then.14, %if.end.10
  br label %for.inc.17

for.inc.17:                                       ; preds = %if.end.16
  %18 = load i32, i32* %i, align 4
  %inc18 = add nsw i32 %18, 1
  store i32 %inc18, i32* %i, align 4
  br label %for.cond.2

for.end.19:                                       ; preds = %for.cond.2
  ret void
}

; Function Attrs: nounwind uwtable
define void @jpeg_finish_compress(%struct.jpeg_compress_struct* %cinfo) #0 {
entry:
  %cinfo.addr = alloca %struct.jpeg_compress_struct*, align 8
  %iMCU_row = alloca i32, align 4
  store %struct.jpeg_compress_struct* %cinfo, %struct.jpeg_compress_struct** %cinfo.addr, align 8
  %0 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8
  %global_state = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %0, i32 0, i32 4
  %1 = load i32, i32* %global_state, align 4
  %cmp = icmp eq i32 %1, 101
  br i1 %cmp, label %if.then, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %entry
  %2 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8
  %global_state1 = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %2, i32 0, i32 4
  %3 = load i32, i32* %global_state1, align 4
  %cmp2 = icmp eq i32 %3, 102
  br i1 %cmp2, label %if.then, label %if.else

if.then:                                          ; preds = %lor.lhs.false, %entry
  %4 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8
  %next_scanline = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %4, i32 0, i32 36
  %5 = load i32, i32* %next_scanline, align 4
  %6 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8
  %image_height = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %6, i32 0, i32 7
  %7 = load i32, i32* %image_height, align 4
  %cmp3 = icmp ult i32 %5, %7
  br i1 %cmp3, label %if.then.4, label %if.end

if.then.4:                                        ; preds = %if.then
  %8 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8
  %err = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %8, i32 0, i32 0
  %9 = load %struct.jpeg_error_mgr*, %struct.jpeg_error_mgr** %err, align 8
  %msg_code = getelementptr inbounds %struct.jpeg_error_mgr, %struct.jpeg_error_mgr* %9, i32 0, i32 5
  store i32 66, i32* %msg_code, align 4
  %10 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8
  %err5 = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %10, i32 0, i32 0
  %11 = load %struct.jpeg_error_mgr*, %struct.jpeg_error_mgr** %err5, align 8
  %error_exit = getelementptr inbounds %struct.jpeg_error_mgr, %struct.jpeg_error_mgr* %11, i32 0, i32 0
  %12 = load void (%struct.jpeg_common_struct*)*, void (%struct.jpeg_common_struct*)** %error_exit, align 8
  %13 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8
  %14 = bitcast %struct.jpeg_compress_struct* %13 to %struct.jpeg_common_struct*
  call void %12(%struct.jpeg_common_struct* %14)
  br label %if.end

if.end:                                           ; preds = %if.then.4, %if.then
  %15 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8
  %master = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %15, i32 0, i32 51
  %16 = load %struct.jpeg_comp_master*, %struct.jpeg_comp_master** %master, align 8
  %finish_pass = getelementptr inbounds %struct.jpeg_comp_master, %struct.jpeg_comp_master* %16, i32 0, i32 2
  %17 = load void (%struct.jpeg_compress_struct*)*, void (%struct.jpeg_compress_struct*)** %finish_pass, align 8
  %18 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8
  call void %17(%struct.jpeg_compress_struct* %18)
  br label %if.end.16

if.else:                                          ; preds = %lor.lhs.false
  %19 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8
  %global_state6 = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %19, i32 0, i32 4
  %20 = load i32, i32* %global_state6, align 4
  %cmp7 = icmp ne i32 %20, 103
  br i1 %cmp7, label %if.then.8, label %if.end.15

if.then.8:                                        ; preds = %if.else
  %21 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8
  %err9 = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %21, i32 0, i32 0
  %22 = load %struct.jpeg_error_mgr*, %struct.jpeg_error_mgr** %err9, align 8
  %msg_code10 = getelementptr inbounds %struct.jpeg_error_mgr, %struct.jpeg_error_mgr* %22, i32 0, i32 5
  store i32 18, i32* %msg_code10, align 4
  %23 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8
  %global_state11 = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %23, i32 0, i32 4
  %24 = load i32, i32* %global_state11, align 4
  %25 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8
  %err12 = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %25, i32 0, i32 0
  %26 = load %struct.jpeg_error_mgr*, %struct.jpeg_error_mgr** %err12, align 8
  %msg_parm = getelementptr inbounds %struct.jpeg_error_mgr, %struct.jpeg_error_mgr* %26, i32 0, i32 6
  %i = bitcast %union.anon* %msg_parm to [8 x i32]*
  %arrayidx = getelementptr inbounds [8 x i32], [8 x i32]* %i, i32 0, i64 0
  store i32 %24, i32* %arrayidx, align 4
  %27 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8
  %err13 = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %27, i32 0, i32 0
  %28 = load %struct.jpeg_error_mgr*, %struct.jpeg_error_mgr** %err13, align 8
  %error_exit14 = getelementptr inbounds %struct.jpeg_error_mgr, %struct.jpeg_error_mgr* %28, i32 0, i32 0
  %29 = load void (%struct.jpeg_common_struct*)*, void (%struct.jpeg_common_struct*)** %error_exit14, align 8
  %30 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8
  %31 = bitcast %struct.jpeg_compress_struct* %30 to %struct.jpeg_common_struct*
  call void %29(%struct.jpeg_common_struct* %31)
  br label %if.end.15

if.end.15:                                        ; preds = %if.then.8, %if.else
  br label %if.end.16

if.end.16:                                        ; preds = %if.end.15, %if.end
  br label %while.cond

while.cond:                                       ; preds = %for.end, %if.end.16
  %32 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8
  %master17 = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %32, i32 0, i32 51
  %33 = load %struct.jpeg_comp_master*, %struct.jpeg_comp_master** %master17, align 8
  %is_last_pass = getelementptr inbounds %struct.jpeg_comp_master, %struct.jpeg_comp_master* %33, i32 0, i32 4
  %34 = load i32, i32* %is_last_pass, align 4
  %tobool = icmp ne i32 %34, 0
  %lnot = xor i1 %tobool, true
  br i1 %lnot, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %35 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8
  %master18 = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %35, i32 0, i32 51
  %36 = load %struct.jpeg_comp_master*, %struct.jpeg_comp_master** %master18, align 8
  %prepare_for_pass = getelementptr inbounds %struct.jpeg_comp_master, %struct.jpeg_comp_master* %36, i32 0, i32 0
  %37 = load void (%struct.jpeg_compress_struct*)*, void (%struct.jpeg_compress_struct*)** %prepare_for_pass, align 8
  %38 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8
  call void %37(%struct.jpeg_compress_struct* %38)
  store i32 0, i32* %iMCU_row, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %while.body
  %39 = load i32, i32* %iMCU_row, align 4
  %40 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8
  %total_iMCU_rows = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %40, i32 0, i32 40
  %41 = load i32, i32* %total_iMCU_rows, align 4
  %cmp19 = icmp ult i32 %39, %41
  br i1 %cmp19, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %42 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8
  %progress = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %42, i32 0, i32 2
  %43 = load %struct.jpeg_progress_mgr*, %struct.jpeg_progress_mgr** %progress, align 8
  %cmp20 = icmp ne %struct.jpeg_progress_mgr* %43, null
  br i1 %cmp20, label %if.then.21, label %if.end.28

if.then.21:                                       ; preds = %for.body
  %44 = load i32, i32* %iMCU_row, align 4
  %conv = zext i32 %44 to i64
  %45 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8
  %progress22 = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %45, i32 0, i32 2
  %46 = load %struct.jpeg_progress_mgr*, %struct.jpeg_progress_mgr** %progress22, align 8
  %pass_counter = getelementptr inbounds %struct.jpeg_progress_mgr, %struct.jpeg_progress_mgr* %46, i32 0, i32 1
  store i64 %conv, i64* %pass_counter, align 8
  %47 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8
  %total_iMCU_rows23 = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %47, i32 0, i32 40
  %48 = load i32, i32* %total_iMCU_rows23, align 4
  %conv24 = zext i32 %48 to i64
  %49 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8
  %progress25 = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %49, i32 0, i32 2
  %50 = load %struct.jpeg_progress_mgr*, %struct.jpeg_progress_mgr** %progress25, align 8
  %pass_limit = getelementptr inbounds %struct.jpeg_progress_mgr, %struct.jpeg_progress_mgr* %50, i32 0, i32 2
  store i64 %conv24, i64* %pass_limit, align 8
  %51 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8
  %progress26 = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %51, i32 0, i32 2
  %52 = load %struct.jpeg_progress_mgr*, %struct.jpeg_progress_mgr** %progress26, align 8
  %progress_monitor = getelementptr inbounds %struct.jpeg_progress_mgr, %struct.jpeg_progress_mgr* %52, i32 0, i32 0
  %progress_monitor27 = bitcast {}** %progress_monitor to void (%struct.jpeg_common_struct*)**
  %53 = load void (%struct.jpeg_common_struct*)*, void (%struct.jpeg_common_struct*)** %progress_monitor27, align 8
  %54 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8
  %55 = bitcast %struct.jpeg_compress_struct* %54 to %struct.jpeg_common_struct*
  call void %53(%struct.jpeg_common_struct* %55)
  br label %if.end.28

if.end.28:                                        ; preds = %if.then.21, %for.body
  %56 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8
  %coef = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %56, i32 0, i32 54
  %57 = load %struct.jpeg_c_coef_controller*, %struct.jpeg_c_coef_controller** %coef, align 8
  %compress_data = getelementptr inbounds %struct.jpeg_c_coef_controller, %struct.jpeg_c_coef_controller* %57, i32 0, i32 1
  %58 = load i32 (%struct.jpeg_compress_struct*, i8***)*, i32 (%struct.jpeg_compress_struct*, i8***)** %compress_data, align 8
  %59 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8
  %call = call i32 %58(%struct.jpeg_compress_struct* %59, i8*** null)
  %tobool29 = icmp ne i32 %call, 0
  br i1 %tobool29, label %if.end.35, label %if.then.30

if.then.30:                                       ; preds = %if.end.28
  %60 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8
  %err31 = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %60, i32 0, i32 0
  %61 = load %struct.jpeg_error_mgr*, %struct.jpeg_error_mgr** %err31, align 8
  %msg_code32 = getelementptr inbounds %struct.jpeg_error_mgr, %struct.jpeg_error_mgr* %61, i32 0, i32 5
  store i32 22, i32* %msg_code32, align 4
  %62 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8
  %err33 = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %62, i32 0, i32 0
  %63 = load %struct.jpeg_error_mgr*, %struct.jpeg_error_mgr** %err33, align 8
  %error_exit34 = getelementptr inbounds %struct.jpeg_error_mgr, %struct.jpeg_error_mgr* %63, i32 0, i32 0
  %64 = load void (%struct.jpeg_common_struct*)*, void (%struct.jpeg_common_struct*)** %error_exit34, align 8
  %65 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8
  %66 = bitcast %struct.jpeg_compress_struct* %65 to %struct.jpeg_common_struct*
  call void %64(%struct.jpeg_common_struct* %66)
  br label %if.end.35

if.end.35:                                        ; preds = %if.then.30, %if.end.28
  br label %for.inc

for.inc:                                          ; preds = %if.end.35
  %67 = load i32, i32* %iMCU_row, align 4
  %inc = add i32 %67, 1
  store i32 %inc, i32* %iMCU_row, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %68 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8
  %master36 = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %68, i32 0, i32 51
  %69 = load %struct.jpeg_comp_master*, %struct.jpeg_comp_master** %master36, align 8
  %finish_pass37 = getelementptr inbounds %struct.jpeg_comp_master, %struct.jpeg_comp_master* %69, i32 0, i32 2
  %70 = load void (%struct.jpeg_compress_struct*)*, void (%struct.jpeg_compress_struct*)** %finish_pass37, align 8
  %71 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8
  call void %70(%struct.jpeg_compress_struct* %71)
  br label %while.cond

while.end:                                        ; preds = %while.cond
  %72 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8
  %marker = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %72, i32 0, i32 55
  %73 = load %struct.jpeg_marker_writer*, %struct.jpeg_marker_writer** %marker, align 8
  %write_file_trailer = getelementptr inbounds %struct.jpeg_marker_writer, %struct.jpeg_marker_writer* %73, i32 0, i32 4
  %74 = load void (%struct.jpeg_compress_struct*)*, void (%struct.jpeg_compress_struct*)** %write_file_trailer, align 8
  %75 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8
  call void %74(%struct.jpeg_compress_struct* %75)
  %76 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8
  %dest = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %76, i32 0, i32 5
  %77 = load %struct.jpeg_destination_mgr*, %struct.jpeg_destination_mgr** %dest, align 8
  %term_destination = getelementptr inbounds %struct.jpeg_destination_mgr, %struct.jpeg_destination_mgr* %77, i32 0, i32 4
  %78 = load void (%struct.jpeg_compress_struct*)*, void (%struct.jpeg_compress_struct*)** %term_destination, align 8
  %79 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8
  call void %78(%struct.jpeg_compress_struct* %79)
  %80 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8
  %81 = bitcast %struct.jpeg_compress_struct* %80 to %struct.jpeg_common_struct*
  call void @jpeg_abort(%struct.jpeg_common_struct* %81)
  ret void
}

; Function Attrs: nounwind uwtable
define void @jpeg_write_marker(%struct.jpeg_compress_struct* %cinfo, i32 %marker, i8* %dataptr, i32 %datalen) #0 {
entry:
  %cinfo.addr = alloca %struct.jpeg_compress_struct*, align 8
  %marker.addr = alloca i32, align 4
  %dataptr.addr = alloca i8*, align 8
  %datalen.addr = alloca i32, align 4
  store %struct.jpeg_compress_struct* %cinfo, %struct.jpeg_compress_struct** %cinfo.addr, align 8
  store i32 %marker, i32* %marker.addr, align 4
  store i8* %dataptr, i8** %dataptr.addr, align 8
  store i32 %datalen, i32* %datalen.addr, align 4
  %0 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8
  %next_scanline = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %0, i32 0, i32 36
  %1 = load i32, i32* %next_scanline, align 4
  %cmp = icmp ne i32 %1, 0
  br i1 %cmp, label %if.then, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %entry
  %2 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8
  %global_state = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %2, i32 0, i32 4
  %3 = load i32, i32* %global_state, align 4
  %cmp1 = icmp ne i32 %3, 101
  br i1 %cmp1, label %land.lhs.true, label %if.end

land.lhs.true:                                    ; preds = %lor.lhs.false
  %4 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8
  %global_state2 = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %4, i32 0, i32 4
  %5 = load i32, i32* %global_state2, align 4
  %cmp3 = icmp ne i32 %5, 102
  br i1 %cmp3, label %land.lhs.true.4, label %if.end

land.lhs.true.4:                                  ; preds = %land.lhs.true
  %6 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8
  %global_state5 = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %6, i32 0, i32 4
  %7 = load i32, i32* %global_state5, align 4
  %cmp6 = icmp ne i32 %7, 103
  br i1 %cmp6, label %if.then, label %if.end

if.then:                                          ; preds = %land.lhs.true.4, %entry
  %8 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8
  %err = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %8, i32 0, i32 0
  %9 = load %struct.jpeg_error_mgr*, %struct.jpeg_error_mgr** %err, align 8
  %msg_code = getelementptr inbounds %struct.jpeg_error_mgr, %struct.jpeg_error_mgr* %9, i32 0, i32 5
  store i32 18, i32* %msg_code, align 4
  %10 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8
  %global_state7 = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %10, i32 0, i32 4
  %11 = load i32, i32* %global_state7, align 4
  %12 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8
  %err8 = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %12, i32 0, i32 0
  %13 = load %struct.jpeg_error_mgr*, %struct.jpeg_error_mgr** %err8, align 8
  %msg_parm = getelementptr inbounds %struct.jpeg_error_mgr, %struct.jpeg_error_mgr* %13, i32 0, i32 6
  %i = bitcast %union.anon* %msg_parm to [8 x i32]*
  %arrayidx = getelementptr inbounds [8 x i32], [8 x i32]* %i, i32 0, i64 0
  store i32 %11, i32* %arrayidx, align 4
  %14 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8
  %err9 = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %14, i32 0, i32 0
  %15 = load %struct.jpeg_error_mgr*, %struct.jpeg_error_mgr** %err9, align 8
  %error_exit = getelementptr inbounds %struct.jpeg_error_mgr, %struct.jpeg_error_mgr* %15, i32 0, i32 0
  %16 = load void (%struct.jpeg_common_struct*)*, void (%struct.jpeg_common_struct*)** %error_exit, align 8
  %17 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8
  %18 = bitcast %struct.jpeg_compress_struct* %17 to %struct.jpeg_common_struct*
  call void %16(%struct.jpeg_common_struct* %18)
  br label %if.end

if.end:                                           ; preds = %if.then, %land.lhs.true.4, %land.lhs.true, %lor.lhs.false
  %19 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8
  %marker10 = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %19, i32 0, i32 55
  %20 = load %struct.jpeg_marker_writer*, %struct.jpeg_marker_writer** %marker10, align 8
  %write_any_marker = getelementptr inbounds %struct.jpeg_marker_writer, %struct.jpeg_marker_writer* %20, i32 0, i32 0
  %21 = load void (%struct.jpeg_compress_struct*, i32, i8*, i32)*, void (%struct.jpeg_compress_struct*, i32, i8*, i32)** %write_any_marker, align 8
  %22 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8
  %23 = load i32, i32* %marker.addr, align 4
  %24 = load i8*, i8** %dataptr.addr, align 8
  %25 = load i32, i32* %datalen.addr, align 4
  call void %21(%struct.jpeg_compress_struct* %22, i32 %23, i8* %24, i32 %25)
  ret void
}

; Function Attrs: nounwind uwtable
define void @jpeg_write_tables(%struct.jpeg_compress_struct* %cinfo) #0 {
entry:
  %cinfo.addr = alloca %struct.jpeg_compress_struct*, align 8
  store %struct.jpeg_compress_struct* %cinfo, %struct.jpeg_compress_struct** %cinfo.addr, align 8
  %0 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8
  %global_state = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %0, i32 0, i32 4
  %1 = load i32, i32* %global_state, align 4
  %cmp = icmp ne i32 %1, 100
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %2 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8
  %err = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %2, i32 0, i32 0
  %3 = load %struct.jpeg_error_mgr*, %struct.jpeg_error_mgr** %err, align 8
  %msg_code = getelementptr inbounds %struct.jpeg_error_mgr, %struct.jpeg_error_mgr* %3, i32 0, i32 5
  store i32 18, i32* %msg_code, align 4
  %4 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8
  %global_state1 = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %4, i32 0, i32 4
  %5 = load i32, i32* %global_state1, align 4
  %6 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8
  %err2 = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %6, i32 0, i32 0
  %7 = load %struct.jpeg_error_mgr*, %struct.jpeg_error_mgr** %err2, align 8
  %msg_parm = getelementptr inbounds %struct.jpeg_error_mgr, %struct.jpeg_error_mgr* %7, i32 0, i32 6
  %i = bitcast %union.anon* %msg_parm to [8 x i32]*
  %arrayidx = getelementptr inbounds [8 x i32], [8 x i32]* %i, i32 0, i64 0
  store i32 %5, i32* %arrayidx, align 4
  %8 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8
  %err3 = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %8, i32 0, i32 0
  %9 = load %struct.jpeg_error_mgr*, %struct.jpeg_error_mgr** %err3, align 8
  %error_exit = getelementptr inbounds %struct.jpeg_error_mgr, %struct.jpeg_error_mgr* %9, i32 0, i32 0
  %10 = load void (%struct.jpeg_common_struct*)*, void (%struct.jpeg_common_struct*)** %error_exit, align 8
  %11 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8
  %12 = bitcast %struct.jpeg_compress_struct* %11 to %struct.jpeg_common_struct*
  call void %10(%struct.jpeg_common_struct* %12)
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %13 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8
  %err4 = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %13, i32 0, i32 0
  %14 = load %struct.jpeg_error_mgr*, %struct.jpeg_error_mgr** %err4, align 8
  %reset_error_mgr = getelementptr inbounds %struct.jpeg_error_mgr, %struct.jpeg_error_mgr* %14, i32 0, i32 4
  %15 = load void (%struct.jpeg_common_struct*)*, void (%struct.jpeg_common_struct*)** %reset_error_mgr, align 8
  %16 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8
  %17 = bitcast %struct.jpeg_compress_struct* %16 to %struct.jpeg_common_struct*
  call void %15(%struct.jpeg_common_struct* %17)
  %18 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8
  %dest = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %18, i32 0, i32 5
  %19 = load %struct.jpeg_destination_mgr*, %struct.jpeg_destination_mgr** %dest, align 8
  %init_destination = getelementptr inbounds %struct.jpeg_destination_mgr, %struct.jpeg_destination_mgr* %19, i32 0, i32 2
  %20 = load void (%struct.jpeg_compress_struct*)*, void (%struct.jpeg_compress_struct*)** %init_destination, align 8
  %21 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8
  call void %20(%struct.jpeg_compress_struct* %21)
  %22 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8
  call void @jinit_marker_writer(%struct.jpeg_compress_struct* %22)
  %23 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8
  %marker = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %23, i32 0, i32 55
  %24 = load %struct.jpeg_marker_writer*, %struct.jpeg_marker_writer** %marker, align 8
  %write_tables_only = getelementptr inbounds %struct.jpeg_marker_writer, %struct.jpeg_marker_writer* %24, i32 0, i32 5
  %25 = load void (%struct.jpeg_compress_struct*)*, void (%struct.jpeg_compress_struct*)** %write_tables_only, align 8
  %26 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8
  call void %25(%struct.jpeg_compress_struct* %26)
  %27 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8
  %dest5 = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %27, i32 0, i32 5
  %28 = load %struct.jpeg_destination_mgr*, %struct.jpeg_destination_mgr** %dest5, align 8
  %term_destination = getelementptr inbounds %struct.jpeg_destination_mgr, %struct.jpeg_destination_mgr* %28, i32 0, i32 4
  %29 = load void (%struct.jpeg_compress_struct*)*, void (%struct.jpeg_compress_struct*)** %term_destination, align 8
  %30 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8
  call void %29(%struct.jpeg_compress_struct* %30)
  %31 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8
  %32 = bitcast %struct.jpeg_compress_struct* %31 to %struct.jpeg_common_struct*
  call void @jpeg_abort(%struct.jpeg_common_struct* %32)
  ret void
}

declare void @jinit_marker_writer(%struct.jpeg_compress_struct*) #2

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.ident = !{!0}

!0 = !{!"clang version 3.7.0 (tags/RELEASE_370/final)"}
