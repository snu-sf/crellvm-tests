; ModuleID = './MultiSource.Benchmarks.MiBench/140.consumer-jpeg.jcphuff.bc'
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
%struct.jpeg_destination_mgr = type { i8*, i64, {}*, i32 (%struct.jpeg_compress_struct*)*, {}* }
%struct.jpeg_component_info = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, %struct.JQUANT_TBL*, i8* }
%struct.JQUANT_TBL = type { [64 x i16], i32 }
%struct.JHUFF_TBL = type { [17 x i8], [256 x i8], i32 }
%struct.jpeg_scan_info = type { i32, [4 x i32], i32, i32, i32, i32 }
%struct.jpeg_comp_master = type { {}*, {}*, {}*, i32, i32 }
%struct.jpeg_c_main_controller = type { void (%struct.jpeg_compress_struct*, i32)*, void (%struct.jpeg_compress_struct*, i8**, i32*, i32)* }
%struct.jpeg_c_prep_controller = type { void (%struct.jpeg_compress_struct*, i32)*, void (%struct.jpeg_compress_struct*, i8**, i32*, i32, i8***, i32*, i32)* }
%struct.jpeg_c_coef_controller = type { void (%struct.jpeg_compress_struct*, i32)*, i32 (%struct.jpeg_compress_struct*, i8***)* }
%struct.jpeg_marker_writer = type { void (%struct.jpeg_compress_struct*, i32, i8*, i32)*, {}*, {}*, {}*, {}*, {}* }
%struct.jpeg_color_converter = type { {}*, void (%struct.jpeg_compress_struct*, i8**, i8***, i32, i32)* }
%struct.jpeg_downsampler = type { {}*, void (%struct.jpeg_compress_struct*, i8***, i32, i8***, i32)*, i32 }
%struct.jpeg_forward_dct = type { {}*, void (%struct.jpeg_compress_struct*, %struct.jpeg_component_info*, i8**, [64 x i16]*, i32, i32, i32)* }
%struct.jpeg_entropy_encoder = type { void (%struct.jpeg_compress_struct*, i32)*, i32 (%struct.jpeg_compress_struct*, [64 x i16]**)*, {}* }
%struct.phuff_entropy_encoder = type { %struct.jpeg_entropy_encoder, i32, i8*, i64, i64, i32, %struct.jpeg_compress_struct*, [4 x i32], i32, i32, i32, i8*, i32, i32, [4 x %struct.c_derived_tbl*], [4 x i64*] }
%struct.c_derived_tbl = type { [256 x i32], [256 x i8] }

@jpeg_natural_order = external constant [0 x i32], align 4

; Function Attrs: nounwind uwtable
define void @jinit_phuff_encoder(%struct.jpeg_compress_struct* %cinfo) #0 {
entry:
  %cinfo.addr = alloca %struct.jpeg_compress_struct*, align 8
  %entropy = alloca %struct.phuff_entropy_encoder*, align 8
  %i = alloca i32, align 4
  store %struct.jpeg_compress_struct* %cinfo, %struct.jpeg_compress_struct** %cinfo.addr, align 8
  %0 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8
  %mem = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %0, i32 0, i32 1
  %1 = load %struct.jpeg_memory_mgr*, %struct.jpeg_memory_mgr** %mem, align 8
  %alloc_small = getelementptr inbounds %struct.jpeg_memory_mgr, %struct.jpeg_memory_mgr* %1, i32 0, i32 0
  %2 = load i8* (%struct.jpeg_common_struct*, i32, i64)*, i8* (%struct.jpeg_common_struct*, i32, i64)** %alloc_small, align 8
  %3 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8
  %4 = bitcast %struct.jpeg_compress_struct* %3 to %struct.jpeg_common_struct*
  %call = call i8* %2(%struct.jpeg_common_struct* %4, i32 1, i64 184)
  %5 = bitcast i8* %call to %struct.phuff_entropy_encoder*
  store %struct.phuff_entropy_encoder* %5, %struct.phuff_entropy_encoder** %entropy, align 8
  %6 = load %struct.phuff_entropy_encoder*, %struct.phuff_entropy_encoder** %entropy, align 8
  %7 = bitcast %struct.phuff_entropy_encoder* %6 to %struct.jpeg_entropy_encoder*
  %8 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8
  %entropy1 = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %8, i32 0, i32 59
  store %struct.jpeg_entropy_encoder* %7, %struct.jpeg_entropy_encoder** %entropy1, align 8
  %9 = load %struct.phuff_entropy_encoder*, %struct.phuff_entropy_encoder** %entropy, align 8
  %pub = getelementptr inbounds %struct.phuff_entropy_encoder, %struct.phuff_entropy_encoder* %9, i32 0, i32 0
  %start_pass = getelementptr inbounds %struct.jpeg_entropy_encoder, %struct.jpeg_entropy_encoder* %pub, i32 0, i32 0
  store void (%struct.jpeg_compress_struct*, i32)* @start_pass_phuff, void (%struct.jpeg_compress_struct*, i32)** %start_pass, align 8
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %10 = load i32, i32* %i, align 4
  %cmp = icmp slt i32 %10, 4
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %11 = load i32, i32* %i, align 4
  %idxprom = sext i32 %11 to i64
  %12 = load %struct.phuff_entropy_encoder*, %struct.phuff_entropy_encoder** %entropy, align 8
  %derived_tbls = getelementptr inbounds %struct.phuff_entropy_encoder, %struct.phuff_entropy_encoder* %12, i32 0, i32 14
  %arrayidx = getelementptr inbounds [4 x %struct.c_derived_tbl*], [4 x %struct.c_derived_tbl*]* %derived_tbls, i32 0, i64 %idxprom
  store %struct.c_derived_tbl* null, %struct.c_derived_tbl** %arrayidx, align 8
  %13 = load i32, i32* %i, align 4
  %idxprom2 = sext i32 %13 to i64
  %14 = load %struct.phuff_entropy_encoder*, %struct.phuff_entropy_encoder** %entropy, align 8
  %count_ptrs = getelementptr inbounds %struct.phuff_entropy_encoder, %struct.phuff_entropy_encoder* %14, i32 0, i32 15
  %arrayidx3 = getelementptr inbounds [4 x i64*], [4 x i64*]* %count_ptrs, i32 0, i64 %idxprom2
  store i64* null, i64** %arrayidx3, align 8
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %15 = load i32, i32* %i, align 4
  %inc = add nsw i32 %15, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %16 = load %struct.phuff_entropy_encoder*, %struct.phuff_entropy_encoder** %entropy, align 8
  %bit_buffer = getelementptr inbounds %struct.phuff_entropy_encoder, %struct.phuff_entropy_encoder* %16, i32 0, i32 11
  store i8* null, i8** %bit_buffer, align 8
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @start_pass_phuff(%struct.jpeg_compress_struct* %cinfo, i32 %gather_statistics) #0 {
entry:
  %cinfo.addr = alloca %struct.jpeg_compress_struct*, align 8
  %gather_statistics.addr = alloca i32, align 4
  %entropy = alloca %struct.phuff_entropy_encoder*, align 8
  %is_DC_band = alloca i32, align 4
  %ci = alloca i32, align 4
  %tbl = alloca i32, align 4
  %compptr = alloca %struct.jpeg_component_info*, align 8
  store %struct.jpeg_compress_struct* %cinfo, %struct.jpeg_compress_struct** %cinfo.addr, align 8
  store i32 %gather_statistics, i32* %gather_statistics.addr, align 4
  %0 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8
  %entropy1 = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %0, i32 0, i32 59
  %1 = load %struct.jpeg_entropy_encoder*, %struct.jpeg_entropy_encoder** %entropy1, align 8
  %2 = bitcast %struct.jpeg_entropy_encoder* %1 to %struct.phuff_entropy_encoder*
  store %struct.phuff_entropy_encoder* %2, %struct.phuff_entropy_encoder** %entropy, align 8
  %3 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8
  %4 = load %struct.phuff_entropy_encoder*, %struct.phuff_entropy_encoder** %entropy, align 8
  %cinfo2 = getelementptr inbounds %struct.phuff_entropy_encoder, %struct.phuff_entropy_encoder* %4, i32 0, i32 6
  store %struct.jpeg_compress_struct* %3, %struct.jpeg_compress_struct** %cinfo2, align 8
  %5 = load i32, i32* %gather_statistics.addr, align 4
  %6 = load %struct.phuff_entropy_encoder*, %struct.phuff_entropy_encoder** %entropy, align 8
  %gather_statistics3 = getelementptr inbounds %struct.phuff_entropy_encoder, %struct.phuff_entropy_encoder* %6, i32 0, i32 1
  store i32 %5, i32* %gather_statistics3, align 4
  %7 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8
  %Ss = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %7, i32 0, i32 47
  %8 = load i32, i32* %Ss, align 4
  %cmp = icmp eq i32 %8, 0
  %conv = zext i1 %cmp to i32
  store i32 %conv, i32* %is_DC_band, align 4
  %9 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8
  %Ah = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %9, i32 0, i32 49
  %10 = load i32, i32* %Ah, align 4
  %cmp4 = icmp eq i32 %10, 0
  br i1 %cmp4, label %if.then, label %if.else.9

if.then:                                          ; preds = %entry
  %11 = load i32, i32* %is_DC_band, align 4
  %tobool = icmp ne i32 %11, 0
  br i1 %tobool, label %if.then.6, label %if.else

if.then.6:                                        ; preds = %if.then
  %12 = load %struct.phuff_entropy_encoder*, %struct.phuff_entropy_encoder** %entropy, align 8
  %pub = getelementptr inbounds %struct.phuff_entropy_encoder, %struct.phuff_entropy_encoder* %12, i32 0, i32 0
  %encode_mcu = getelementptr inbounds %struct.jpeg_entropy_encoder, %struct.jpeg_entropy_encoder* %pub, i32 0, i32 1
  store i32 (%struct.jpeg_compress_struct*, [64 x i16]**)* @encode_mcu_DC_first, i32 (%struct.jpeg_compress_struct*, [64 x i16]**)** %encode_mcu, align 8
  br label %if.end

if.else:                                          ; preds = %if.then
  %13 = load %struct.phuff_entropy_encoder*, %struct.phuff_entropy_encoder** %entropy, align 8
  %pub7 = getelementptr inbounds %struct.phuff_entropy_encoder, %struct.phuff_entropy_encoder* %13, i32 0, i32 0
  %encode_mcu8 = getelementptr inbounds %struct.jpeg_entropy_encoder, %struct.jpeg_entropy_encoder* %pub7, i32 0, i32 1
  store i32 (%struct.jpeg_compress_struct*, [64 x i16]**)* @encode_mcu_AC_first, i32 (%struct.jpeg_compress_struct*, [64 x i16]**)** %encode_mcu8, align 8
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then.6
  br label %if.end.23

if.else.9:                                        ; preds = %entry
  %14 = load i32, i32* %is_DC_band, align 4
  %tobool10 = icmp ne i32 %14, 0
  br i1 %tobool10, label %if.then.11, label %if.else.14

if.then.11:                                       ; preds = %if.else.9
  %15 = load %struct.phuff_entropy_encoder*, %struct.phuff_entropy_encoder** %entropy, align 8
  %pub12 = getelementptr inbounds %struct.phuff_entropy_encoder, %struct.phuff_entropy_encoder* %15, i32 0, i32 0
  %encode_mcu13 = getelementptr inbounds %struct.jpeg_entropy_encoder, %struct.jpeg_entropy_encoder* %pub12, i32 0, i32 1
  store i32 (%struct.jpeg_compress_struct*, [64 x i16]**)* @encode_mcu_DC_refine, i32 (%struct.jpeg_compress_struct*, [64 x i16]**)** %encode_mcu13, align 8
  br label %if.end.22

if.else.14:                                       ; preds = %if.else.9
  %16 = load %struct.phuff_entropy_encoder*, %struct.phuff_entropy_encoder** %entropy, align 8
  %pub15 = getelementptr inbounds %struct.phuff_entropy_encoder, %struct.phuff_entropy_encoder* %16, i32 0, i32 0
  %encode_mcu16 = getelementptr inbounds %struct.jpeg_entropy_encoder, %struct.jpeg_entropy_encoder* %pub15, i32 0, i32 1
  store i32 (%struct.jpeg_compress_struct*, [64 x i16]**)* @encode_mcu_AC_refine, i32 (%struct.jpeg_compress_struct*, [64 x i16]**)** %encode_mcu16, align 8
  %17 = load %struct.phuff_entropy_encoder*, %struct.phuff_entropy_encoder** %entropy, align 8
  %bit_buffer = getelementptr inbounds %struct.phuff_entropy_encoder, %struct.phuff_entropy_encoder* %17, i32 0, i32 11
  %18 = load i8*, i8** %bit_buffer, align 8
  %cmp17 = icmp eq i8* %18, null
  br i1 %cmp17, label %if.then.19, label %if.end.21

if.then.19:                                       ; preds = %if.else.14
  %19 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8
  %mem = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %19, i32 0, i32 1
  %20 = load %struct.jpeg_memory_mgr*, %struct.jpeg_memory_mgr** %mem, align 8
  %alloc_small = getelementptr inbounds %struct.jpeg_memory_mgr, %struct.jpeg_memory_mgr* %20, i32 0, i32 0
  %21 = load i8* (%struct.jpeg_common_struct*, i32, i64)*, i8* (%struct.jpeg_common_struct*, i32, i64)** %alloc_small, align 8
  %22 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8
  %23 = bitcast %struct.jpeg_compress_struct* %22 to %struct.jpeg_common_struct*
  %call = call i8* %21(%struct.jpeg_common_struct* %23, i32 1, i64 1000)
  %24 = load %struct.phuff_entropy_encoder*, %struct.phuff_entropy_encoder** %entropy, align 8
  %bit_buffer20 = getelementptr inbounds %struct.phuff_entropy_encoder, %struct.phuff_entropy_encoder* %24, i32 0, i32 11
  store i8* %call, i8** %bit_buffer20, align 8
  br label %if.end.21

if.end.21:                                        ; preds = %if.then.19, %if.else.14
  br label %if.end.22

if.end.22:                                        ; preds = %if.end.21, %if.then.11
  br label %if.end.23

if.end.23:                                        ; preds = %if.end.22, %if.end
  %25 = load i32, i32* %gather_statistics.addr, align 4
  %tobool24 = icmp ne i32 %25, 0
  br i1 %tobool24, label %if.then.25, label %if.else.28

if.then.25:                                       ; preds = %if.end.23
  %26 = load %struct.phuff_entropy_encoder*, %struct.phuff_entropy_encoder** %entropy, align 8
  %pub26 = getelementptr inbounds %struct.phuff_entropy_encoder, %struct.phuff_entropy_encoder* %26, i32 0, i32 0
  %finish_pass = getelementptr inbounds %struct.jpeg_entropy_encoder, %struct.jpeg_entropy_encoder* %pub26, i32 0, i32 2
  %finish_pass27 = bitcast {}** %finish_pass to void (%struct.jpeg_compress_struct*)**
  store void (%struct.jpeg_compress_struct*)* @finish_pass_gather_phuff, void (%struct.jpeg_compress_struct*)** %finish_pass27, align 8
  br label %if.end.32

if.else.28:                                       ; preds = %if.end.23
  %27 = load %struct.phuff_entropy_encoder*, %struct.phuff_entropy_encoder** %entropy, align 8
  %pub29 = getelementptr inbounds %struct.phuff_entropy_encoder, %struct.phuff_entropy_encoder* %27, i32 0, i32 0
  %finish_pass30 = getelementptr inbounds %struct.jpeg_entropy_encoder, %struct.jpeg_entropy_encoder* %pub29, i32 0, i32 2
  %finish_pass31 = bitcast {}** %finish_pass30 to void (%struct.jpeg_compress_struct*)**
  store void (%struct.jpeg_compress_struct*)* @finish_pass_phuff, void (%struct.jpeg_compress_struct*)** %finish_pass31, align 8
  br label %if.end.32

if.end.32:                                        ; preds = %if.else.28, %if.then.25
  store i32 0, i32* %ci, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end.32
  %28 = load i32, i32* %ci, align 4
  %29 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8
  %comps_in_scan = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %29, i32 0, i32 41
  %30 = load i32, i32* %comps_in_scan, align 4
  %cmp33 = icmp slt i32 %28, %30
  br i1 %cmp33, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %31 = load i32, i32* %ci, align 4
  %idxprom = sext i32 %31 to i64
  %32 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8
  %cur_comp_info = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %32, i32 0, i32 42
  %arrayidx = getelementptr inbounds [4 x %struct.jpeg_component_info*], [4 x %struct.jpeg_component_info*]* %cur_comp_info, i32 0, i64 %idxprom
  %33 = load %struct.jpeg_component_info*, %struct.jpeg_component_info** %arrayidx, align 8
  store %struct.jpeg_component_info* %33, %struct.jpeg_component_info** %compptr, align 8
  %34 = load i32, i32* %ci, align 4
  %idxprom35 = sext i32 %34 to i64
  %35 = load %struct.phuff_entropy_encoder*, %struct.phuff_entropy_encoder** %entropy, align 8
  %last_dc_val = getelementptr inbounds %struct.phuff_entropy_encoder, %struct.phuff_entropy_encoder* %35, i32 0, i32 7
  %arrayidx36 = getelementptr inbounds [4 x i32], [4 x i32]* %last_dc_val, i32 0, i64 %idxprom35
  store i32 0, i32* %arrayidx36, align 4
  %36 = load i32, i32* %is_DC_band, align 4
  %tobool37 = icmp ne i32 %36, 0
  br i1 %tobool37, label %if.then.38, label %if.else.59

if.then.38:                                       ; preds = %for.body
  %37 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8
  %Ah39 = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %37, i32 0, i32 49
  %38 = load i32, i32* %Ah39, align 4
  %cmp40 = icmp ne i32 %38, 0
  br i1 %cmp40, label %if.then.42, label %if.end.43

if.then.42:                                       ; preds = %if.then.38
  br label %for.inc

if.end.43:                                        ; preds = %if.then.38
  %39 = load %struct.jpeg_component_info*, %struct.jpeg_component_info** %compptr, align 8
  %dc_tbl_no = getelementptr inbounds %struct.jpeg_component_info, %struct.jpeg_component_info* %39, i32 0, i32 5
  %40 = load i32, i32* %dc_tbl_no, align 4
  store i32 %40, i32* %tbl, align 4
  %41 = load i32, i32* %tbl, align 4
  %cmp44 = icmp slt i32 %41, 0
  br i1 %cmp44, label %if.then.54, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.end.43
  %42 = load i32, i32* %tbl, align 4
  %cmp46 = icmp sge i32 %42, 4
  br i1 %cmp46, label %if.then.54, label %lor.lhs.false.48

lor.lhs.false.48:                                 ; preds = %lor.lhs.false
  %43 = load i32, i32* %tbl, align 4
  %idxprom49 = sext i32 %43 to i64
  %44 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8
  %dc_huff_tbl_ptrs = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %44, i32 0, i32 16
  %arrayidx50 = getelementptr inbounds [4 x %struct.JHUFF_TBL*], [4 x %struct.JHUFF_TBL*]* %dc_huff_tbl_ptrs, i32 0, i64 %idxprom49
  %45 = load %struct.JHUFF_TBL*, %struct.JHUFF_TBL** %arrayidx50, align 8
  %cmp51 = icmp eq %struct.JHUFF_TBL* %45, null
  br i1 %cmp51, label %land.lhs.true, label %if.end.58

land.lhs.true:                                    ; preds = %lor.lhs.false.48
  %46 = load i32, i32* %gather_statistics.addr, align 4
  %tobool53 = icmp ne i32 %46, 0
  br i1 %tobool53, label %if.end.58, label %if.then.54

if.then.54:                                       ; preds = %land.lhs.true, %lor.lhs.false, %if.end.43
  %47 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8
  %err = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %47, i32 0, i32 0
  %48 = load %struct.jpeg_error_mgr*, %struct.jpeg_error_mgr** %err, align 8
  %msg_code = getelementptr inbounds %struct.jpeg_error_mgr, %struct.jpeg_error_mgr* %48, i32 0, i32 5
  store i32 49, i32* %msg_code, align 4
  %49 = load i32, i32* %tbl, align 4
  %50 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8
  %err55 = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %50, i32 0, i32 0
  %51 = load %struct.jpeg_error_mgr*, %struct.jpeg_error_mgr** %err55, align 8
  %msg_parm = getelementptr inbounds %struct.jpeg_error_mgr, %struct.jpeg_error_mgr* %51, i32 0, i32 6
  %i = bitcast %union.anon* %msg_parm to [8 x i32]*
  %arrayidx56 = getelementptr inbounds [8 x i32], [8 x i32]* %i, i32 0, i64 0
  store i32 %49, i32* %arrayidx56, align 4
  %52 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8
  %err57 = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %52, i32 0, i32 0
  %53 = load %struct.jpeg_error_mgr*, %struct.jpeg_error_mgr** %err57, align 8
  %error_exit = getelementptr inbounds %struct.jpeg_error_mgr, %struct.jpeg_error_mgr* %53, i32 0, i32 0
  %54 = load void (%struct.jpeg_common_struct*)*, void (%struct.jpeg_common_struct*)** %error_exit, align 8
  %55 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8
  %56 = bitcast %struct.jpeg_compress_struct* %55 to %struct.jpeg_common_struct*
  call void %54(%struct.jpeg_common_struct* %56)
  br label %if.end.58

if.end.58:                                        ; preds = %if.then.54, %land.lhs.true, %lor.lhs.false.48
  br label %if.end.83

if.else.59:                                       ; preds = %for.body
  %57 = load %struct.jpeg_component_info*, %struct.jpeg_component_info** %compptr, align 8
  %ac_tbl_no = getelementptr inbounds %struct.jpeg_component_info, %struct.jpeg_component_info* %57, i32 0, i32 6
  %58 = load i32, i32* %ac_tbl_no, align 4
  store i32 %58, i32* %tbl, align 4
  %59 = load %struct.phuff_entropy_encoder*, %struct.phuff_entropy_encoder** %entropy, align 8
  %ac_tbl_no60 = getelementptr inbounds %struct.phuff_entropy_encoder, %struct.phuff_entropy_encoder* %59, i32 0, i32 8
  store i32 %58, i32* %ac_tbl_no60, align 4
  %60 = load i32, i32* %tbl, align 4
  %cmp61 = icmp slt i32 %60, 0
  br i1 %cmp61, label %if.then.73, label %lor.lhs.false.63

lor.lhs.false.63:                                 ; preds = %if.else.59
  %61 = load i32, i32* %tbl, align 4
  %cmp64 = icmp sge i32 %61, 4
  br i1 %cmp64, label %if.then.73, label %lor.lhs.false.66

lor.lhs.false.66:                                 ; preds = %lor.lhs.false.63
  %62 = load i32, i32* %tbl, align 4
  %idxprom67 = sext i32 %62 to i64
  %63 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8
  %ac_huff_tbl_ptrs = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %63, i32 0, i32 17
  %arrayidx68 = getelementptr inbounds [4 x %struct.JHUFF_TBL*], [4 x %struct.JHUFF_TBL*]* %ac_huff_tbl_ptrs, i32 0, i64 %idxprom67
  %64 = load %struct.JHUFF_TBL*, %struct.JHUFF_TBL** %arrayidx68, align 8
  %cmp69 = icmp eq %struct.JHUFF_TBL* %64, null
  br i1 %cmp69, label %land.lhs.true.71, label %if.end.82

land.lhs.true.71:                                 ; preds = %lor.lhs.false.66
  %65 = load i32, i32* %gather_statistics.addr, align 4
  %tobool72 = icmp ne i32 %65, 0
  br i1 %tobool72, label %if.end.82, label %if.then.73

if.then.73:                                       ; preds = %land.lhs.true.71, %lor.lhs.false.63, %if.else.59
  %66 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8
  %err74 = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %66, i32 0, i32 0
  %67 = load %struct.jpeg_error_mgr*, %struct.jpeg_error_mgr** %err74, align 8
  %msg_code75 = getelementptr inbounds %struct.jpeg_error_mgr, %struct.jpeg_error_mgr* %67, i32 0, i32 5
  store i32 49, i32* %msg_code75, align 4
  %68 = load i32, i32* %tbl, align 4
  %69 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8
  %err76 = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %69, i32 0, i32 0
  %70 = load %struct.jpeg_error_mgr*, %struct.jpeg_error_mgr** %err76, align 8
  %msg_parm77 = getelementptr inbounds %struct.jpeg_error_mgr, %struct.jpeg_error_mgr* %70, i32 0, i32 6
  %i78 = bitcast %union.anon* %msg_parm77 to [8 x i32]*
  %arrayidx79 = getelementptr inbounds [8 x i32], [8 x i32]* %i78, i32 0, i64 0
  store i32 %68, i32* %arrayidx79, align 4
  %71 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8
  %err80 = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %71, i32 0, i32 0
  %72 = load %struct.jpeg_error_mgr*, %struct.jpeg_error_mgr** %err80, align 8
  %error_exit81 = getelementptr inbounds %struct.jpeg_error_mgr, %struct.jpeg_error_mgr* %72, i32 0, i32 0
  %73 = load void (%struct.jpeg_common_struct*)*, void (%struct.jpeg_common_struct*)** %error_exit81, align 8
  %74 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8
  %75 = bitcast %struct.jpeg_compress_struct* %74 to %struct.jpeg_common_struct*
  call void %73(%struct.jpeg_common_struct* %75)
  br label %if.end.82

if.end.82:                                        ; preds = %if.then.73, %land.lhs.true.71, %lor.lhs.false.66
  br label %if.end.83

if.end.83:                                        ; preds = %if.end.82, %if.end.58
  %76 = load i32, i32* %gather_statistics.addr, align 4
  %tobool84 = icmp ne i32 %76, 0
  br i1 %tobool84, label %if.then.85, label %if.else.101

if.then.85:                                       ; preds = %if.end.83
  %77 = load i32, i32* %tbl, align 4
  %idxprom86 = sext i32 %77 to i64
  %78 = load %struct.phuff_entropy_encoder*, %struct.phuff_entropy_encoder** %entropy, align 8
  %count_ptrs = getelementptr inbounds %struct.phuff_entropy_encoder, %struct.phuff_entropy_encoder* %78, i32 0, i32 15
  %arrayidx87 = getelementptr inbounds [4 x i64*], [4 x i64*]* %count_ptrs, i32 0, i64 %idxprom86
  %79 = load i64*, i64** %arrayidx87, align 8
  %cmp88 = icmp eq i64* %79, null
  br i1 %cmp88, label %if.then.90, label %if.end.97

if.then.90:                                       ; preds = %if.then.85
  %80 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8
  %mem91 = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %80, i32 0, i32 1
  %81 = load %struct.jpeg_memory_mgr*, %struct.jpeg_memory_mgr** %mem91, align 8
  %alloc_small92 = getelementptr inbounds %struct.jpeg_memory_mgr, %struct.jpeg_memory_mgr* %81, i32 0, i32 0
  %82 = load i8* (%struct.jpeg_common_struct*, i32, i64)*, i8* (%struct.jpeg_common_struct*, i32, i64)** %alloc_small92, align 8
  %83 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8
  %84 = bitcast %struct.jpeg_compress_struct* %83 to %struct.jpeg_common_struct*
  %call93 = call i8* %82(%struct.jpeg_common_struct* %84, i32 1, i64 2056)
  %85 = bitcast i8* %call93 to i64*
  %86 = load i32, i32* %tbl, align 4
  %idxprom94 = sext i32 %86 to i64
  %87 = load %struct.phuff_entropy_encoder*, %struct.phuff_entropy_encoder** %entropy, align 8
  %count_ptrs95 = getelementptr inbounds %struct.phuff_entropy_encoder, %struct.phuff_entropy_encoder* %87, i32 0, i32 15
  %arrayidx96 = getelementptr inbounds [4 x i64*], [4 x i64*]* %count_ptrs95, i32 0, i64 %idxprom94
  store i64* %85, i64** %arrayidx96, align 8
  br label %if.end.97

if.end.97:                                        ; preds = %if.then.90, %if.then.85
  %88 = load i32, i32* %tbl, align 4
  %idxprom98 = sext i32 %88 to i64
  %89 = load %struct.phuff_entropy_encoder*, %struct.phuff_entropy_encoder** %entropy, align 8
  %count_ptrs99 = getelementptr inbounds %struct.phuff_entropy_encoder, %struct.phuff_entropy_encoder* %89, i32 0, i32 15
  %arrayidx100 = getelementptr inbounds [4 x i64*], [4 x i64*]* %count_ptrs99, i32 0, i64 %idxprom98
  %90 = load i64*, i64** %arrayidx100, align 8
  %91 = bitcast i64* %90 to i8*
  call void @llvm.memset.p0i8.i64(i8* %91, i8 0, i64 2056, i32 1, i1 false)
  br label %if.end.117

if.else.101:                                      ; preds = %if.end.83
  %92 = load i32, i32* %is_DC_band, align 4
  %tobool102 = icmp ne i32 %92, 0
  br i1 %tobool102, label %if.then.103, label %if.else.109

if.then.103:                                      ; preds = %if.else.101
  %93 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8
  %94 = load i32, i32* %tbl, align 4
  %idxprom104 = sext i32 %94 to i64
  %95 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8
  %dc_huff_tbl_ptrs105 = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %95, i32 0, i32 16
  %arrayidx106 = getelementptr inbounds [4 x %struct.JHUFF_TBL*], [4 x %struct.JHUFF_TBL*]* %dc_huff_tbl_ptrs105, i32 0, i64 %idxprom104
  %96 = load %struct.JHUFF_TBL*, %struct.JHUFF_TBL** %arrayidx106, align 8
  %97 = load i32, i32* %tbl, align 4
  %idxprom107 = sext i32 %97 to i64
  %98 = load %struct.phuff_entropy_encoder*, %struct.phuff_entropy_encoder** %entropy, align 8
  %derived_tbls = getelementptr inbounds %struct.phuff_entropy_encoder, %struct.phuff_entropy_encoder* %98, i32 0, i32 14
  %arrayidx108 = getelementptr inbounds [4 x %struct.c_derived_tbl*], [4 x %struct.c_derived_tbl*]* %derived_tbls, i32 0, i64 %idxprom107
  call void @jpeg_make_c_derived_tbl(%struct.jpeg_compress_struct* %93, %struct.JHUFF_TBL* %96, %struct.c_derived_tbl** %arrayidx108)
  br label %if.end.116

if.else.109:                                      ; preds = %if.else.101
  %99 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8
  %100 = load i32, i32* %tbl, align 4
  %idxprom110 = sext i32 %100 to i64
  %101 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8
  %ac_huff_tbl_ptrs111 = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %101, i32 0, i32 17
  %arrayidx112 = getelementptr inbounds [4 x %struct.JHUFF_TBL*], [4 x %struct.JHUFF_TBL*]* %ac_huff_tbl_ptrs111, i32 0, i64 %idxprom110
  %102 = load %struct.JHUFF_TBL*, %struct.JHUFF_TBL** %arrayidx112, align 8
  %103 = load i32, i32* %tbl, align 4
  %idxprom113 = sext i32 %103 to i64
  %104 = load %struct.phuff_entropy_encoder*, %struct.phuff_entropy_encoder** %entropy, align 8
  %derived_tbls114 = getelementptr inbounds %struct.phuff_entropy_encoder, %struct.phuff_entropy_encoder* %104, i32 0, i32 14
  %arrayidx115 = getelementptr inbounds [4 x %struct.c_derived_tbl*], [4 x %struct.c_derived_tbl*]* %derived_tbls114, i32 0, i64 %idxprom113
  call void @jpeg_make_c_derived_tbl(%struct.jpeg_compress_struct* %99, %struct.JHUFF_TBL* %102, %struct.c_derived_tbl** %arrayidx115)
  br label %if.end.116

if.end.116:                                       ; preds = %if.else.109, %if.then.103
  br label %if.end.117

if.end.117:                                       ; preds = %if.end.116, %if.end.97
  br label %for.inc

for.inc:                                          ; preds = %if.end.117, %if.then.42
  %105 = load i32, i32* %ci, align 4
  %inc = add nsw i32 %105, 1
  store i32 %inc, i32* %ci, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %106 = load %struct.phuff_entropy_encoder*, %struct.phuff_entropy_encoder** %entropy, align 8
  %EOBRUN = getelementptr inbounds %struct.phuff_entropy_encoder, %struct.phuff_entropy_encoder* %106, i32 0, i32 9
  store i32 0, i32* %EOBRUN, align 4
  %107 = load %struct.phuff_entropy_encoder*, %struct.phuff_entropy_encoder** %entropy, align 8
  %BE = getelementptr inbounds %struct.phuff_entropy_encoder, %struct.phuff_entropy_encoder* %107, i32 0, i32 10
  store i32 0, i32* %BE, align 4
  %108 = load %struct.phuff_entropy_encoder*, %struct.phuff_entropy_encoder** %entropy, align 8
  %put_buffer = getelementptr inbounds %struct.phuff_entropy_encoder, %struct.phuff_entropy_encoder* %108, i32 0, i32 4
  store i64 0, i64* %put_buffer, align 8
  %109 = load %struct.phuff_entropy_encoder*, %struct.phuff_entropy_encoder** %entropy, align 8
  %put_bits = getelementptr inbounds %struct.phuff_entropy_encoder, %struct.phuff_entropy_encoder* %109, i32 0, i32 5
  store i32 0, i32* %put_bits, align 4
  %110 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8
  %restart_interval = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %110, i32 0, i32 29
  %111 = load i32, i32* %restart_interval, align 4
  %112 = load %struct.phuff_entropy_encoder*, %struct.phuff_entropy_encoder** %entropy, align 8
  %restarts_to_go = getelementptr inbounds %struct.phuff_entropy_encoder, %struct.phuff_entropy_encoder* %112, i32 0, i32 12
  store i32 %111, i32* %restarts_to_go, align 4
  %113 = load %struct.phuff_entropy_encoder*, %struct.phuff_entropy_encoder** %entropy, align 8
  %next_restart_num = getelementptr inbounds %struct.phuff_entropy_encoder, %struct.phuff_entropy_encoder* %113, i32 0, i32 13
  store i32 0, i32* %next_restart_num, align 4
  ret void
}

; Function Attrs: nounwind uwtable
define internal i32 @encode_mcu_DC_first(%struct.jpeg_compress_struct* %cinfo, [64 x i16]** %MCU_data) #0 {
entry:
  %cinfo.addr = alloca %struct.jpeg_compress_struct*, align 8
  %MCU_data.addr = alloca [64 x i16]**, align 8
  %entropy = alloca %struct.phuff_entropy_encoder*, align 8
  %temp = alloca i32, align 4
  %temp2 = alloca i32, align 4
  %nbits = alloca i32, align 4
  %blkn = alloca i32, align 4
  %ci = alloca i32, align 4
  %Al = alloca i32, align 4
  %block = alloca [64 x i16]*, align 8
  %compptr = alloca %struct.jpeg_component_info*, align 8
  store %struct.jpeg_compress_struct* %cinfo, %struct.jpeg_compress_struct** %cinfo.addr, align 8
  store [64 x i16]** %MCU_data, [64 x i16]*** %MCU_data.addr, align 8
  %0 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8
  %entropy1 = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %0, i32 0, i32 59
  %1 = load %struct.jpeg_entropy_encoder*, %struct.jpeg_entropy_encoder** %entropy1, align 8
  %2 = bitcast %struct.jpeg_entropy_encoder* %1 to %struct.phuff_entropy_encoder*
  store %struct.phuff_entropy_encoder* %2, %struct.phuff_entropy_encoder** %entropy, align 8
  %3 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8
  %Al2 = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %3, i32 0, i32 50
  %4 = load i32, i32* %Al2, align 4
  store i32 %4, i32* %Al, align 4
  %5 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8
  %dest = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %5, i32 0, i32 5
  %6 = load %struct.jpeg_destination_mgr*, %struct.jpeg_destination_mgr** %dest, align 8
  %next_output_byte = getelementptr inbounds %struct.jpeg_destination_mgr, %struct.jpeg_destination_mgr* %6, i32 0, i32 0
  %7 = load i8*, i8** %next_output_byte, align 8
  %8 = load %struct.phuff_entropy_encoder*, %struct.phuff_entropy_encoder** %entropy, align 8
  %next_output_byte3 = getelementptr inbounds %struct.phuff_entropy_encoder, %struct.phuff_entropy_encoder* %8, i32 0, i32 2
  store i8* %7, i8** %next_output_byte3, align 8
  %9 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8
  %dest4 = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %9, i32 0, i32 5
  %10 = load %struct.jpeg_destination_mgr*, %struct.jpeg_destination_mgr** %dest4, align 8
  %free_in_buffer = getelementptr inbounds %struct.jpeg_destination_mgr, %struct.jpeg_destination_mgr* %10, i32 0, i32 1
  %11 = load i64, i64* %free_in_buffer, align 8
  %12 = load %struct.phuff_entropy_encoder*, %struct.phuff_entropy_encoder** %entropy, align 8
  %free_in_buffer5 = getelementptr inbounds %struct.phuff_entropy_encoder, %struct.phuff_entropy_encoder* %12, i32 0, i32 3
  store i64 %11, i64* %free_in_buffer5, align 8
  %13 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8
  %restart_interval = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %13, i32 0, i32 29
  %14 = load i32, i32* %restart_interval, align 4
  %tobool = icmp ne i32 %14, 0
  br i1 %tobool, label %if.then, label %if.end.7

if.then:                                          ; preds = %entry
  %15 = load %struct.phuff_entropy_encoder*, %struct.phuff_entropy_encoder** %entropy, align 8
  %restarts_to_go = getelementptr inbounds %struct.phuff_entropy_encoder, %struct.phuff_entropy_encoder* %15, i32 0, i32 12
  %16 = load i32, i32* %restarts_to_go, align 4
  %cmp = icmp eq i32 %16, 0
  br i1 %cmp, label %if.then.6, label %if.end

if.then.6:                                        ; preds = %if.then
  %17 = load %struct.phuff_entropy_encoder*, %struct.phuff_entropy_encoder** %entropy, align 8
  %18 = load %struct.phuff_entropy_encoder*, %struct.phuff_entropy_encoder** %entropy, align 8
  %next_restart_num = getelementptr inbounds %struct.phuff_entropy_encoder, %struct.phuff_entropy_encoder* %18, i32 0, i32 13
  %19 = load i32, i32* %next_restart_num, align 4
  call void @emit_restart(%struct.phuff_entropy_encoder* %17, i32 %19)
  br label %if.end

if.end:                                           ; preds = %if.then.6, %if.then
  br label %if.end.7

if.end.7:                                         ; preds = %if.end, %entry
  store i32 0, i32* %blkn, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end.7
  %20 = load i32, i32* %blkn, align 4
  %21 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8
  %blocks_in_MCU = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %21, i32 0, i32 45
  %22 = load i32, i32* %blocks_in_MCU, align 4
  %cmp8 = icmp slt i32 %20, %22
  br i1 %cmp8, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %23 = load i32, i32* %blkn, align 4
  %idxprom = sext i32 %23 to i64
  %24 = load [64 x i16]**, [64 x i16]*** %MCU_data.addr, align 8
  %arrayidx = getelementptr inbounds [64 x i16]*, [64 x i16]** %24, i64 %idxprom
  %25 = load [64 x i16]*, [64 x i16]** %arrayidx, align 8
  store [64 x i16]* %25, [64 x i16]** %block, align 8
  %26 = load i32, i32* %blkn, align 4
  %idxprom9 = sext i32 %26 to i64
  %27 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8
  %MCU_membership = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %27, i32 0, i32 46
  %arrayidx10 = getelementptr inbounds [10 x i32], [10 x i32]* %MCU_membership, i32 0, i64 %idxprom9
  %28 = load i32, i32* %arrayidx10, align 4
  store i32 %28, i32* %ci, align 4
  %29 = load i32, i32* %ci, align 4
  %idxprom11 = sext i32 %29 to i64
  %30 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8
  %cur_comp_info = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %30, i32 0, i32 42
  %arrayidx12 = getelementptr inbounds [4 x %struct.jpeg_component_info*], [4 x %struct.jpeg_component_info*]* %cur_comp_info, i32 0, i64 %idxprom11
  %31 = load %struct.jpeg_component_info*, %struct.jpeg_component_info** %arrayidx12, align 8
  store %struct.jpeg_component_info* %31, %struct.jpeg_component_info** %compptr, align 8
  %32 = load [64 x i16]*, [64 x i16]** %block, align 8
  %arrayidx13 = getelementptr inbounds [64 x i16], [64 x i16]* %32, i32 0, i64 0
  %33 = load i16, i16* %arrayidx13, align 2
  %conv = sext i16 %33 to i32
  %34 = load i32, i32* %Al, align 4
  %shr = ashr i32 %conv, %34
  store i32 %shr, i32* %temp2, align 4
  %35 = load i32, i32* %temp2, align 4
  %36 = load i32, i32* %ci, align 4
  %idxprom14 = sext i32 %36 to i64
  %37 = load %struct.phuff_entropy_encoder*, %struct.phuff_entropy_encoder** %entropy, align 8
  %last_dc_val = getelementptr inbounds %struct.phuff_entropy_encoder, %struct.phuff_entropy_encoder* %37, i32 0, i32 7
  %arrayidx15 = getelementptr inbounds [4 x i32], [4 x i32]* %last_dc_val, i32 0, i64 %idxprom14
  %38 = load i32, i32* %arrayidx15, align 4
  %sub = sub nsw i32 %35, %38
  store i32 %sub, i32* %temp, align 4
  %39 = load i32, i32* %temp2, align 4
  %40 = load i32, i32* %ci, align 4
  %idxprom16 = sext i32 %40 to i64
  %41 = load %struct.phuff_entropy_encoder*, %struct.phuff_entropy_encoder** %entropy, align 8
  %last_dc_val17 = getelementptr inbounds %struct.phuff_entropy_encoder, %struct.phuff_entropy_encoder* %41, i32 0, i32 7
  %arrayidx18 = getelementptr inbounds [4 x i32], [4 x i32]* %last_dc_val17, i32 0, i64 %idxprom16
  store i32 %39, i32* %arrayidx18, align 4
  %42 = load i32, i32* %temp, align 4
  store i32 %42, i32* %temp2, align 4
  %43 = load i32, i32* %temp, align 4
  %cmp19 = icmp slt i32 %43, 0
  br i1 %cmp19, label %if.then.21, label %if.end.23

if.then.21:                                       ; preds = %for.body
  %44 = load i32, i32* %temp, align 4
  %sub22 = sub nsw i32 0, %44
  store i32 %sub22, i32* %temp, align 4
  %45 = load i32, i32* %temp2, align 4
  %dec = add nsw i32 %45, -1
  store i32 %dec, i32* %temp2, align 4
  br label %if.end.23

if.end.23:                                        ; preds = %if.then.21, %for.body
  store i32 0, i32* %nbits, align 4
  br label %while.cond

while.cond:                                       ; preds = %while.body, %if.end.23
  %46 = load i32, i32* %temp, align 4
  %tobool24 = icmp ne i32 %46, 0
  br i1 %tobool24, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %47 = load i32, i32* %nbits, align 4
  %inc = add nsw i32 %47, 1
  store i32 %inc, i32* %nbits, align 4
  %48 = load i32, i32* %temp, align 4
  %shr25 = ashr i32 %48, 1
  store i32 %shr25, i32* %temp, align 4
  br label %while.cond

while.end:                                        ; preds = %while.cond
  %49 = load %struct.phuff_entropy_encoder*, %struct.phuff_entropy_encoder** %entropy, align 8
  %50 = load %struct.jpeg_component_info*, %struct.jpeg_component_info** %compptr, align 8
  %dc_tbl_no = getelementptr inbounds %struct.jpeg_component_info, %struct.jpeg_component_info* %50, i32 0, i32 5
  %51 = load i32, i32* %dc_tbl_no, align 4
  %52 = load i32, i32* %nbits, align 4
  call void @emit_symbol(%struct.phuff_entropy_encoder* %49, i32 %51, i32 %52)
  %53 = load i32, i32* %nbits, align 4
  %tobool26 = icmp ne i32 %53, 0
  br i1 %tobool26, label %if.then.27, label %if.end.28

if.then.27:                                       ; preds = %while.end
  %54 = load %struct.phuff_entropy_encoder*, %struct.phuff_entropy_encoder** %entropy, align 8
  %55 = load i32, i32* %temp2, align 4
  %56 = load i32, i32* %nbits, align 4
  call void @emit_bits(%struct.phuff_entropy_encoder* %54, i32 %55, i32 %56)
  br label %if.end.28

if.end.28:                                        ; preds = %if.then.27, %while.end
  br label %for.inc

for.inc:                                          ; preds = %if.end.28
  %57 = load i32, i32* %blkn, align 4
  %inc29 = add nsw i32 %57, 1
  store i32 %inc29, i32* %blkn, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %58 = load %struct.phuff_entropy_encoder*, %struct.phuff_entropy_encoder** %entropy, align 8
  %next_output_byte30 = getelementptr inbounds %struct.phuff_entropy_encoder, %struct.phuff_entropy_encoder* %58, i32 0, i32 2
  %59 = load i8*, i8** %next_output_byte30, align 8
  %60 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8
  %dest31 = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %60, i32 0, i32 5
  %61 = load %struct.jpeg_destination_mgr*, %struct.jpeg_destination_mgr** %dest31, align 8
  %next_output_byte32 = getelementptr inbounds %struct.jpeg_destination_mgr, %struct.jpeg_destination_mgr* %61, i32 0, i32 0
  store i8* %59, i8** %next_output_byte32, align 8
  %62 = load %struct.phuff_entropy_encoder*, %struct.phuff_entropy_encoder** %entropy, align 8
  %free_in_buffer33 = getelementptr inbounds %struct.phuff_entropy_encoder, %struct.phuff_entropy_encoder* %62, i32 0, i32 3
  %63 = load i64, i64* %free_in_buffer33, align 8
  %64 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8
  %dest34 = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %64, i32 0, i32 5
  %65 = load %struct.jpeg_destination_mgr*, %struct.jpeg_destination_mgr** %dest34, align 8
  %free_in_buffer35 = getelementptr inbounds %struct.jpeg_destination_mgr, %struct.jpeg_destination_mgr* %65, i32 0, i32 1
  store i64 %63, i64* %free_in_buffer35, align 8
  %66 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8
  %restart_interval36 = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %66, i32 0, i32 29
  %67 = load i32, i32* %restart_interval36, align 4
  %tobool37 = icmp ne i32 %67, 0
  br i1 %tobool37, label %if.then.38, label %if.end.51

if.then.38:                                       ; preds = %for.end
  %68 = load %struct.phuff_entropy_encoder*, %struct.phuff_entropy_encoder** %entropy, align 8
  %restarts_to_go39 = getelementptr inbounds %struct.phuff_entropy_encoder, %struct.phuff_entropy_encoder* %68, i32 0, i32 12
  %69 = load i32, i32* %restarts_to_go39, align 4
  %cmp40 = icmp eq i32 %69, 0
  br i1 %cmp40, label %if.then.42, label %if.end.48

if.then.42:                                       ; preds = %if.then.38
  %70 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8
  %restart_interval43 = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %70, i32 0, i32 29
  %71 = load i32, i32* %restart_interval43, align 4
  %72 = load %struct.phuff_entropy_encoder*, %struct.phuff_entropy_encoder** %entropy, align 8
  %restarts_to_go44 = getelementptr inbounds %struct.phuff_entropy_encoder, %struct.phuff_entropy_encoder* %72, i32 0, i32 12
  store i32 %71, i32* %restarts_to_go44, align 4
  %73 = load %struct.phuff_entropy_encoder*, %struct.phuff_entropy_encoder** %entropy, align 8
  %next_restart_num45 = getelementptr inbounds %struct.phuff_entropy_encoder, %struct.phuff_entropy_encoder* %73, i32 0, i32 13
  %74 = load i32, i32* %next_restart_num45, align 4
  %inc46 = add nsw i32 %74, 1
  store i32 %inc46, i32* %next_restart_num45, align 4
  %75 = load %struct.phuff_entropy_encoder*, %struct.phuff_entropy_encoder** %entropy, align 8
  %next_restart_num47 = getelementptr inbounds %struct.phuff_entropy_encoder, %struct.phuff_entropy_encoder* %75, i32 0, i32 13
  %76 = load i32, i32* %next_restart_num47, align 4
  %and = and i32 %76, 7
  store i32 %and, i32* %next_restart_num47, align 4
  br label %if.end.48

if.end.48:                                        ; preds = %if.then.42, %if.then.38
  %77 = load %struct.phuff_entropy_encoder*, %struct.phuff_entropy_encoder** %entropy, align 8
  %restarts_to_go49 = getelementptr inbounds %struct.phuff_entropy_encoder, %struct.phuff_entropy_encoder* %77, i32 0, i32 12
  %78 = load i32, i32* %restarts_to_go49, align 4
  %dec50 = add i32 %78, -1
  store i32 %dec50, i32* %restarts_to_go49, align 4
  br label %if.end.51

if.end.51:                                        ; preds = %if.end.48, %for.end
  ret i32 1
}

; Function Attrs: nounwind uwtable
define internal i32 @encode_mcu_AC_first(%struct.jpeg_compress_struct* %cinfo, [64 x i16]** %MCU_data) #0 {
entry:
  %cinfo.addr = alloca %struct.jpeg_compress_struct*, align 8
  %MCU_data.addr = alloca [64 x i16]**, align 8
  %entropy = alloca %struct.phuff_entropy_encoder*, align 8
  %temp = alloca i32, align 4
  %temp2 = alloca i32, align 4
  %nbits = alloca i32, align 4
  %r = alloca i32, align 4
  %k = alloca i32, align 4
  %Se = alloca i32, align 4
  %Al = alloca i32, align 4
  %block = alloca [64 x i16]*, align 8
  store %struct.jpeg_compress_struct* %cinfo, %struct.jpeg_compress_struct** %cinfo.addr, align 8
  store [64 x i16]** %MCU_data, [64 x i16]*** %MCU_data.addr, align 8
  %0 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8
  %entropy1 = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %0, i32 0, i32 59
  %1 = load %struct.jpeg_entropy_encoder*, %struct.jpeg_entropy_encoder** %entropy1, align 8
  %2 = bitcast %struct.jpeg_entropy_encoder* %1 to %struct.phuff_entropy_encoder*
  store %struct.phuff_entropy_encoder* %2, %struct.phuff_entropy_encoder** %entropy, align 8
  %3 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8
  %Se2 = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %3, i32 0, i32 48
  %4 = load i32, i32* %Se2, align 4
  store i32 %4, i32* %Se, align 4
  %5 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8
  %Al3 = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %5, i32 0, i32 50
  %6 = load i32, i32* %Al3, align 4
  store i32 %6, i32* %Al, align 4
  %7 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8
  %dest = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %7, i32 0, i32 5
  %8 = load %struct.jpeg_destination_mgr*, %struct.jpeg_destination_mgr** %dest, align 8
  %next_output_byte = getelementptr inbounds %struct.jpeg_destination_mgr, %struct.jpeg_destination_mgr* %8, i32 0, i32 0
  %9 = load i8*, i8** %next_output_byte, align 8
  %10 = load %struct.phuff_entropy_encoder*, %struct.phuff_entropy_encoder** %entropy, align 8
  %next_output_byte4 = getelementptr inbounds %struct.phuff_entropy_encoder, %struct.phuff_entropy_encoder* %10, i32 0, i32 2
  store i8* %9, i8** %next_output_byte4, align 8
  %11 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8
  %dest5 = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %11, i32 0, i32 5
  %12 = load %struct.jpeg_destination_mgr*, %struct.jpeg_destination_mgr** %dest5, align 8
  %free_in_buffer = getelementptr inbounds %struct.jpeg_destination_mgr, %struct.jpeg_destination_mgr* %12, i32 0, i32 1
  %13 = load i64, i64* %free_in_buffer, align 8
  %14 = load %struct.phuff_entropy_encoder*, %struct.phuff_entropy_encoder** %entropy, align 8
  %free_in_buffer6 = getelementptr inbounds %struct.phuff_entropy_encoder, %struct.phuff_entropy_encoder* %14, i32 0, i32 3
  store i64 %13, i64* %free_in_buffer6, align 8
  %15 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8
  %restart_interval = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %15, i32 0, i32 29
  %16 = load i32, i32* %restart_interval, align 4
  %tobool = icmp ne i32 %16, 0
  br i1 %tobool, label %if.then, label %if.end.8

if.then:                                          ; preds = %entry
  %17 = load %struct.phuff_entropy_encoder*, %struct.phuff_entropy_encoder** %entropy, align 8
  %restarts_to_go = getelementptr inbounds %struct.phuff_entropy_encoder, %struct.phuff_entropy_encoder* %17, i32 0, i32 12
  %18 = load i32, i32* %restarts_to_go, align 4
  %cmp = icmp eq i32 %18, 0
  br i1 %cmp, label %if.then.7, label %if.end

if.then.7:                                        ; preds = %if.then
  %19 = load %struct.phuff_entropy_encoder*, %struct.phuff_entropy_encoder** %entropy, align 8
  %20 = load %struct.phuff_entropy_encoder*, %struct.phuff_entropy_encoder** %entropy, align 8
  %next_restart_num = getelementptr inbounds %struct.phuff_entropy_encoder, %struct.phuff_entropy_encoder* %20, i32 0, i32 13
  %21 = load i32, i32* %next_restart_num, align 4
  call void @emit_restart(%struct.phuff_entropy_encoder* %19, i32 %21)
  br label %if.end

if.end:                                           ; preds = %if.then.7, %if.then
  br label %if.end.8

if.end.8:                                         ; preds = %if.end, %entry
  %22 = load [64 x i16]**, [64 x i16]*** %MCU_data.addr, align 8
  %arrayidx = getelementptr inbounds [64 x i16]*, [64 x i16]** %22, i64 0
  %23 = load [64 x i16]*, [64 x i16]** %arrayidx, align 8
  store [64 x i16]* %23, [64 x i16]** %block, align 8
  store i32 0, i32* %r, align 4
  %24 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8
  %Ss = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %24, i32 0, i32 47
  %25 = load i32, i32* %Ss, align 4
  store i32 %25, i32* %k, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end.8
  %26 = load i32, i32* %k, align 4
  %27 = load i32, i32* %Se, align 4
  %cmp9 = icmp sle i32 %26, %27
  br i1 %cmp9, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %28 = load i32, i32* %k, align 4
  %idxprom = sext i32 %28 to i64
  %arrayidx10 = getelementptr inbounds [0 x i32], [0 x i32]* @jpeg_natural_order, i32 0, i64 %idxprom
  %29 = load i32, i32* %arrayidx10, align 4
  %idxprom11 = sext i32 %29 to i64
  %30 = load [64 x i16]*, [64 x i16]** %block, align 8
  %arrayidx12 = getelementptr inbounds [64 x i16], [64 x i16]* %30, i32 0, i64 %idxprom11
  %31 = load i16, i16* %arrayidx12, align 2
  %conv = sext i16 %31 to i32
  store i32 %conv, i32* %temp, align 4
  %cmp13 = icmp eq i32 %conv, 0
  br i1 %cmp13, label %if.then.15, label %if.end.16

if.then.15:                                       ; preds = %for.body
  %32 = load i32, i32* %r, align 4
  %inc = add nsw i32 %32, 1
  store i32 %inc, i32* %r, align 4
  br label %for.inc

if.end.16:                                        ; preds = %for.body
  %33 = load i32, i32* %temp, align 4
  %cmp17 = icmp slt i32 %33, 0
  br i1 %cmp17, label %if.then.19, label %if.else

if.then.19:                                       ; preds = %if.end.16
  %34 = load i32, i32* %temp, align 4
  %sub = sub nsw i32 0, %34
  store i32 %sub, i32* %temp, align 4
  %35 = load i32, i32* %Al, align 4
  %36 = load i32, i32* %temp, align 4
  %shr = ashr i32 %36, %35
  store i32 %shr, i32* %temp, align 4
  %37 = load i32, i32* %temp, align 4
  %neg = xor i32 %37, -1
  store i32 %neg, i32* %temp2, align 4
  br label %if.end.21

if.else:                                          ; preds = %if.end.16
  %38 = load i32, i32* %Al, align 4
  %39 = load i32, i32* %temp, align 4
  %shr20 = ashr i32 %39, %38
  store i32 %shr20, i32* %temp, align 4
  %40 = load i32, i32* %temp, align 4
  store i32 %40, i32* %temp2, align 4
  br label %if.end.21

if.end.21:                                        ; preds = %if.else, %if.then.19
  %41 = load i32, i32* %temp, align 4
  %cmp22 = icmp eq i32 %41, 0
  br i1 %cmp22, label %if.then.24, label %if.end.26

if.then.24:                                       ; preds = %if.end.21
  %42 = load i32, i32* %r, align 4
  %inc25 = add nsw i32 %42, 1
  store i32 %inc25, i32* %r, align 4
  br label %for.inc

if.end.26:                                        ; preds = %if.end.21
  %43 = load %struct.phuff_entropy_encoder*, %struct.phuff_entropy_encoder** %entropy, align 8
  %EOBRUN = getelementptr inbounds %struct.phuff_entropy_encoder, %struct.phuff_entropy_encoder* %43, i32 0, i32 9
  %44 = load i32, i32* %EOBRUN, align 4
  %cmp27 = icmp ugt i32 %44, 0
  br i1 %cmp27, label %if.then.29, label %if.end.30

if.then.29:                                       ; preds = %if.end.26
  %45 = load %struct.phuff_entropy_encoder*, %struct.phuff_entropy_encoder** %entropy, align 8
  call void @emit_eobrun(%struct.phuff_entropy_encoder* %45)
  br label %if.end.30

if.end.30:                                        ; preds = %if.then.29, %if.end.26
  br label %while.cond

while.cond:                                       ; preds = %while.body, %if.end.30
  %46 = load i32, i32* %r, align 4
  %cmp31 = icmp sgt i32 %46, 15
  br i1 %cmp31, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %47 = load %struct.phuff_entropy_encoder*, %struct.phuff_entropy_encoder** %entropy, align 8
  %48 = load %struct.phuff_entropy_encoder*, %struct.phuff_entropy_encoder** %entropy, align 8
  %ac_tbl_no = getelementptr inbounds %struct.phuff_entropy_encoder, %struct.phuff_entropy_encoder* %48, i32 0, i32 8
  %49 = load i32, i32* %ac_tbl_no, align 4
  call void @emit_symbol(%struct.phuff_entropy_encoder* %47, i32 %49, i32 240)
  %50 = load i32, i32* %r, align 4
  %sub33 = sub nsw i32 %50, 16
  store i32 %sub33, i32* %r, align 4
  br label %while.cond

while.end:                                        ; preds = %while.cond
  store i32 1, i32* %nbits, align 4
  br label %while.cond.34

while.cond.34:                                    ; preds = %while.body.37, %while.end
  %51 = load i32, i32* %temp, align 4
  %shr35 = ashr i32 %51, 1
  store i32 %shr35, i32* %temp, align 4
  %tobool36 = icmp ne i32 %shr35, 0
  br i1 %tobool36, label %while.body.37, label %while.end.39

while.body.37:                                    ; preds = %while.cond.34
  %52 = load i32, i32* %nbits, align 4
  %inc38 = add nsw i32 %52, 1
  store i32 %inc38, i32* %nbits, align 4
  br label %while.cond.34

while.end.39:                                     ; preds = %while.cond.34
  %53 = load %struct.phuff_entropy_encoder*, %struct.phuff_entropy_encoder** %entropy, align 8
  %54 = load %struct.phuff_entropy_encoder*, %struct.phuff_entropy_encoder** %entropy, align 8
  %ac_tbl_no40 = getelementptr inbounds %struct.phuff_entropy_encoder, %struct.phuff_entropy_encoder* %54, i32 0, i32 8
  %55 = load i32, i32* %ac_tbl_no40, align 4
  %56 = load i32, i32* %r, align 4
  %shl = shl i32 %56, 4
  %57 = load i32, i32* %nbits, align 4
  %add = add nsw i32 %shl, %57
  call void @emit_symbol(%struct.phuff_entropy_encoder* %53, i32 %55, i32 %add)
  %58 = load %struct.phuff_entropy_encoder*, %struct.phuff_entropy_encoder** %entropy, align 8
  %59 = load i32, i32* %temp2, align 4
  %60 = load i32, i32* %nbits, align 4
  call void @emit_bits(%struct.phuff_entropy_encoder* %58, i32 %59, i32 %60)
  store i32 0, i32* %r, align 4
  br label %for.inc

for.inc:                                          ; preds = %while.end.39, %if.then.24, %if.then.15
  %61 = load i32, i32* %k, align 4
  %inc41 = add nsw i32 %61, 1
  store i32 %inc41, i32* %k, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %62 = load i32, i32* %r, align 4
  %cmp42 = icmp sgt i32 %62, 0
  br i1 %cmp42, label %if.then.44, label %if.end.52

if.then.44:                                       ; preds = %for.end
  %63 = load %struct.phuff_entropy_encoder*, %struct.phuff_entropy_encoder** %entropy, align 8
  %EOBRUN45 = getelementptr inbounds %struct.phuff_entropy_encoder, %struct.phuff_entropy_encoder* %63, i32 0, i32 9
  %64 = load i32, i32* %EOBRUN45, align 4
  %inc46 = add i32 %64, 1
  store i32 %inc46, i32* %EOBRUN45, align 4
  %65 = load %struct.phuff_entropy_encoder*, %struct.phuff_entropy_encoder** %entropy, align 8
  %EOBRUN47 = getelementptr inbounds %struct.phuff_entropy_encoder, %struct.phuff_entropy_encoder* %65, i32 0, i32 9
  %66 = load i32, i32* %EOBRUN47, align 4
  %cmp48 = icmp eq i32 %66, 32767
  br i1 %cmp48, label %if.then.50, label %if.end.51

if.then.50:                                       ; preds = %if.then.44
  %67 = load %struct.phuff_entropy_encoder*, %struct.phuff_entropy_encoder** %entropy, align 8
  call void @emit_eobrun(%struct.phuff_entropy_encoder* %67)
  br label %if.end.51

if.end.51:                                        ; preds = %if.then.50, %if.then.44
  br label %if.end.52

if.end.52:                                        ; preds = %if.end.51, %for.end
  %68 = load %struct.phuff_entropy_encoder*, %struct.phuff_entropy_encoder** %entropy, align 8
  %next_output_byte53 = getelementptr inbounds %struct.phuff_entropy_encoder, %struct.phuff_entropy_encoder* %68, i32 0, i32 2
  %69 = load i8*, i8** %next_output_byte53, align 8
  %70 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8
  %dest54 = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %70, i32 0, i32 5
  %71 = load %struct.jpeg_destination_mgr*, %struct.jpeg_destination_mgr** %dest54, align 8
  %next_output_byte55 = getelementptr inbounds %struct.jpeg_destination_mgr, %struct.jpeg_destination_mgr* %71, i32 0, i32 0
  store i8* %69, i8** %next_output_byte55, align 8
  %72 = load %struct.phuff_entropy_encoder*, %struct.phuff_entropy_encoder** %entropy, align 8
  %free_in_buffer56 = getelementptr inbounds %struct.phuff_entropy_encoder, %struct.phuff_entropy_encoder* %72, i32 0, i32 3
  %73 = load i64, i64* %free_in_buffer56, align 8
  %74 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8
  %dest57 = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %74, i32 0, i32 5
  %75 = load %struct.jpeg_destination_mgr*, %struct.jpeg_destination_mgr** %dest57, align 8
  %free_in_buffer58 = getelementptr inbounds %struct.jpeg_destination_mgr, %struct.jpeg_destination_mgr* %75, i32 0, i32 1
  store i64 %73, i64* %free_in_buffer58, align 8
  %76 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8
  %restart_interval59 = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %76, i32 0, i32 29
  %77 = load i32, i32* %restart_interval59, align 4
  %tobool60 = icmp ne i32 %77, 0
  br i1 %tobool60, label %if.then.61, label %if.end.73

if.then.61:                                       ; preds = %if.end.52
  %78 = load %struct.phuff_entropy_encoder*, %struct.phuff_entropy_encoder** %entropy, align 8
  %restarts_to_go62 = getelementptr inbounds %struct.phuff_entropy_encoder, %struct.phuff_entropy_encoder* %78, i32 0, i32 12
  %79 = load i32, i32* %restarts_to_go62, align 4
  %cmp63 = icmp eq i32 %79, 0
  br i1 %cmp63, label %if.then.65, label %if.end.71

if.then.65:                                       ; preds = %if.then.61
  %80 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8
  %restart_interval66 = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %80, i32 0, i32 29
  %81 = load i32, i32* %restart_interval66, align 4
  %82 = load %struct.phuff_entropy_encoder*, %struct.phuff_entropy_encoder** %entropy, align 8
  %restarts_to_go67 = getelementptr inbounds %struct.phuff_entropy_encoder, %struct.phuff_entropy_encoder* %82, i32 0, i32 12
  store i32 %81, i32* %restarts_to_go67, align 4
  %83 = load %struct.phuff_entropy_encoder*, %struct.phuff_entropy_encoder** %entropy, align 8
  %next_restart_num68 = getelementptr inbounds %struct.phuff_entropy_encoder, %struct.phuff_entropy_encoder* %83, i32 0, i32 13
  %84 = load i32, i32* %next_restart_num68, align 4
  %inc69 = add nsw i32 %84, 1
  store i32 %inc69, i32* %next_restart_num68, align 4
  %85 = load %struct.phuff_entropy_encoder*, %struct.phuff_entropy_encoder** %entropy, align 8
  %next_restart_num70 = getelementptr inbounds %struct.phuff_entropy_encoder, %struct.phuff_entropy_encoder* %85, i32 0, i32 13
  %86 = load i32, i32* %next_restart_num70, align 4
  %and = and i32 %86, 7
  store i32 %and, i32* %next_restart_num70, align 4
  br label %if.end.71

if.end.71:                                        ; preds = %if.then.65, %if.then.61
  %87 = load %struct.phuff_entropy_encoder*, %struct.phuff_entropy_encoder** %entropy, align 8
  %restarts_to_go72 = getelementptr inbounds %struct.phuff_entropy_encoder, %struct.phuff_entropy_encoder* %87, i32 0, i32 12
  %88 = load i32, i32* %restarts_to_go72, align 4
  %dec = add i32 %88, -1
  store i32 %dec, i32* %restarts_to_go72, align 4
  br label %if.end.73

if.end.73:                                        ; preds = %if.end.71, %if.end.52
  ret i32 1
}

; Function Attrs: nounwind uwtable
define internal i32 @encode_mcu_DC_refine(%struct.jpeg_compress_struct* %cinfo, [64 x i16]** %MCU_data) #0 {
entry:
  %cinfo.addr = alloca %struct.jpeg_compress_struct*, align 8
  %MCU_data.addr = alloca [64 x i16]**, align 8
  %entropy = alloca %struct.phuff_entropy_encoder*, align 8
  %temp = alloca i32, align 4
  %blkn = alloca i32, align 4
  %Al = alloca i32, align 4
  %block = alloca [64 x i16]*, align 8
  store %struct.jpeg_compress_struct* %cinfo, %struct.jpeg_compress_struct** %cinfo.addr, align 8
  store [64 x i16]** %MCU_data, [64 x i16]*** %MCU_data.addr, align 8
  %0 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8
  %entropy1 = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %0, i32 0, i32 59
  %1 = load %struct.jpeg_entropy_encoder*, %struct.jpeg_entropy_encoder** %entropy1, align 8
  %2 = bitcast %struct.jpeg_entropy_encoder* %1 to %struct.phuff_entropy_encoder*
  store %struct.phuff_entropy_encoder* %2, %struct.phuff_entropy_encoder** %entropy, align 8
  %3 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8
  %Al2 = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %3, i32 0, i32 50
  %4 = load i32, i32* %Al2, align 4
  store i32 %4, i32* %Al, align 4
  %5 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8
  %dest = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %5, i32 0, i32 5
  %6 = load %struct.jpeg_destination_mgr*, %struct.jpeg_destination_mgr** %dest, align 8
  %next_output_byte = getelementptr inbounds %struct.jpeg_destination_mgr, %struct.jpeg_destination_mgr* %6, i32 0, i32 0
  %7 = load i8*, i8** %next_output_byte, align 8
  %8 = load %struct.phuff_entropy_encoder*, %struct.phuff_entropy_encoder** %entropy, align 8
  %next_output_byte3 = getelementptr inbounds %struct.phuff_entropy_encoder, %struct.phuff_entropy_encoder* %8, i32 0, i32 2
  store i8* %7, i8** %next_output_byte3, align 8
  %9 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8
  %dest4 = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %9, i32 0, i32 5
  %10 = load %struct.jpeg_destination_mgr*, %struct.jpeg_destination_mgr** %dest4, align 8
  %free_in_buffer = getelementptr inbounds %struct.jpeg_destination_mgr, %struct.jpeg_destination_mgr* %10, i32 0, i32 1
  %11 = load i64, i64* %free_in_buffer, align 8
  %12 = load %struct.phuff_entropy_encoder*, %struct.phuff_entropy_encoder** %entropy, align 8
  %free_in_buffer5 = getelementptr inbounds %struct.phuff_entropy_encoder, %struct.phuff_entropy_encoder* %12, i32 0, i32 3
  store i64 %11, i64* %free_in_buffer5, align 8
  %13 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8
  %restart_interval = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %13, i32 0, i32 29
  %14 = load i32, i32* %restart_interval, align 4
  %tobool = icmp ne i32 %14, 0
  br i1 %tobool, label %if.then, label %if.end.7

if.then:                                          ; preds = %entry
  %15 = load %struct.phuff_entropy_encoder*, %struct.phuff_entropy_encoder** %entropy, align 8
  %restarts_to_go = getelementptr inbounds %struct.phuff_entropy_encoder, %struct.phuff_entropy_encoder* %15, i32 0, i32 12
  %16 = load i32, i32* %restarts_to_go, align 4
  %cmp = icmp eq i32 %16, 0
  br i1 %cmp, label %if.then.6, label %if.end

if.then.6:                                        ; preds = %if.then
  %17 = load %struct.phuff_entropy_encoder*, %struct.phuff_entropy_encoder** %entropy, align 8
  %18 = load %struct.phuff_entropy_encoder*, %struct.phuff_entropy_encoder** %entropy, align 8
  %next_restart_num = getelementptr inbounds %struct.phuff_entropy_encoder, %struct.phuff_entropy_encoder* %18, i32 0, i32 13
  %19 = load i32, i32* %next_restart_num, align 4
  call void @emit_restart(%struct.phuff_entropy_encoder* %17, i32 %19)
  br label %if.end

if.end:                                           ; preds = %if.then.6, %if.then
  br label %if.end.7

if.end.7:                                         ; preds = %if.end, %entry
  store i32 0, i32* %blkn, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end.7
  %20 = load i32, i32* %blkn, align 4
  %21 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8
  %blocks_in_MCU = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %21, i32 0, i32 45
  %22 = load i32, i32* %blocks_in_MCU, align 4
  %cmp8 = icmp slt i32 %20, %22
  br i1 %cmp8, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %23 = load i32, i32* %blkn, align 4
  %idxprom = sext i32 %23 to i64
  %24 = load [64 x i16]**, [64 x i16]*** %MCU_data.addr, align 8
  %arrayidx = getelementptr inbounds [64 x i16]*, [64 x i16]** %24, i64 %idxprom
  %25 = load [64 x i16]*, [64 x i16]** %arrayidx, align 8
  store [64 x i16]* %25, [64 x i16]** %block, align 8
  %26 = load [64 x i16]*, [64 x i16]** %block, align 8
  %arrayidx9 = getelementptr inbounds [64 x i16], [64 x i16]* %26, i32 0, i64 0
  %27 = load i16, i16* %arrayidx9, align 2
  %conv = sext i16 %27 to i32
  store i32 %conv, i32* %temp, align 4
  %28 = load %struct.phuff_entropy_encoder*, %struct.phuff_entropy_encoder** %entropy, align 8
  %29 = load i32, i32* %temp, align 4
  %30 = load i32, i32* %Al, align 4
  %shr = ashr i32 %29, %30
  call void @emit_bits(%struct.phuff_entropy_encoder* %28, i32 %shr, i32 1)
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %31 = load i32, i32* %blkn, align 4
  %inc = add nsw i32 %31, 1
  store i32 %inc, i32* %blkn, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %32 = load %struct.phuff_entropy_encoder*, %struct.phuff_entropy_encoder** %entropy, align 8
  %next_output_byte10 = getelementptr inbounds %struct.phuff_entropy_encoder, %struct.phuff_entropy_encoder* %32, i32 0, i32 2
  %33 = load i8*, i8** %next_output_byte10, align 8
  %34 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8
  %dest11 = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %34, i32 0, i32 5
  %35 = load %struct.jpeg_destination_mgr*, %struct.jpeg_destination_mgr** %dest11, align 8
  %next_output_byte12 = getelementptr inbounds %struct.jpeg_destination_mgr, %struct.jpeg_destination_mgr* %35, i32 0, i32 0
  store i8* %33, i8** %next_output_byte12, align 8
  %36 = load %struct.phuff_entropy_encoder*, %struct.phuff_entropy_encoder** %entropy, align 8
  %free_in_buffer13 = getelementptr inbounds %struct.phuff_entropy_encoder, %struct.phuff_entropy_encoder* %36, i32 0, i32 3
  %37 = load i64, i64* %free_in_buffer13, align 8
  %38 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8
  %dest14 = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %38, i32 0, i32 5
  %39 = load %struct.jpeg_destination_mgr*, %struct.jpeg_destination_mgr** %dest14, align 8
  %free_in_buffer15 = getelementptr inbounds %struct.jpeg_destination_mgr, %struct.jpeg_destination_mgr* %39, i32 0, i32 1
  store i64 %37, i64* %free_in_buffer15, align 8
  %40 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8
  %restart_interval16 = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %40, i32 0, i32 29
  %41 = load i32, i32* %restart_interval16, align 4
  %tobool17 = icmp ne i32 %41, 0
  br i1 %tobool17, label %if.then.18, label %if.end.30

if.then.18:                                       ; preds = %for.end
  %42 = load %struct.phuff_entropy_encoder*, %struct.phuff_entropy_encoder** %entropy, align 8
  %restarts_to_go19 = getelementptr inbounds %struct.phuff_entropy_encoder, %struct.phuff_entropy_encoder* %42, i32 0, i32 12
  %43 = load i32, i32* %restarts_to_go19, align 4
  %cmp20 = icmp eq i32 %43, 0
  br i1 %cmp20, label %if.then.22, label %if.end.28

if.then.22:                                       ; preds = %if.then.18
  %44 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8
  %restart_interval23 = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %44, i32 0, i32 29
  %45 = load i32, i32* %restart_interval23, align 4
  %46 = load %struct.phuff_entropy_encoder*, %struct.phuff_entropy_encoder** %entropy, align 8
  %restarts_to_go24 = getelementptr inbounds %struct.phuff_entropy_encoder, %struct.phuff_entropy_encoder* %46, i32 0, i32 12
  store i32 %45, i32* %restarts_to_go24, align 4
  %47 = load %struct.phuff_entropy_encoder*, %struct.phuff_entropy_encoder** %entropy, align 8
  %next_restart_num25 = getelementptr inbounds %struct.phuff_entropy_encoder, %struct.phuff_entropy_encoder* %47, i32 0, i32 13
  %48 = load i32, i32* %next_restart_num25, align 4
  %inc26 = add nsw i32 %48, 1
  store i32 %inc26, i32* %next_restart_num25, align 4
  %49 = load %struct.phuff_entropy_encoder*, %struct.phuff_entropy_encoder** %entropy, align 8
  %next_restart_num27 = getelementptr inbounds %struct.phuff_entropy_encoder, %struct.phuff_entropy_encoder* %49, i32 0, i32 13
  %50 = load i32, i32* %next_restart_num27, align 4
  %and = and i32 %50, 7
  store i32 %and, i32* %next_restart_num27, align 4
  br label %if.end.28

if.end.28:                                        ; preds = %if.then.22, %if.then.18
  %51 = load %struct.phuff_entropy_encoder*, %struct.phuff_entropy_encoder** %entropy, align 8
  %restarts_to_go29 = getelementptr inbounds %struct.phuff_entropy_encoder, %struct.phuff_entropy_encoder* %51, i32 0, i32 12
  %52 = load i32, i32* %restarts_to_go29, align 4
  %dec = add i32 %52, -1
  store i32 %dec, i32* %restarts_to_go29, align 4
  br label %if.end.30

if.end.30:                                        ; preds = %if.end.28, %for.end
  ret i32 1
}

; Function Attrs: nounwind uwtable
define internal i32 @encode_mcu_AC_refine(%struct.jpeg_compress_struct* %cinfo, [64 x i16]** %MCU_data) #0 {
entry:
  %cinfo.addr = alloca %struct.jpeg_compress_struct*, align 8
  %MCU_data.addr = alloca [64 x i16]**, align 8
  %entropy = alloca %struct.phuff_entropy_encoder*, align 8
  %temp = alloca i32, align 4
  %r = alloca i32, align 4
  %k = alloca i32, align 4
  %EOB = alloca i32, align 4
  %BR_buffer = alloca i8*, align 8
  %BR = alloca i32, align 4
  %Se = alloca i32, align 4
  %Al = alloca i32, align 4
  %block = alloca [64 x i16]*, align 8
  %absvalues = alloca [64 x i32], align 16
  store %struct.jpeg_compress_struct* %cinfo, %struct.jpeg_compress_struct** %cinfo.addr, align 8
  store [64 x i16]** %MCU_data, [64 x i16]*** %MCU_data.addr, align 8
  %0 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8
  %entropy1 = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %0, i32 0, i32 59
  %1 = load %struct.jpeg_entropy_encoder*, %struct.jpeg_entropy_encoder** %entropy1, align 8
  %2 = bitcast %struct.jpeg_entropy_encoder* %1 to %struct.phuff_entropy_encoder*
  store %struct.phuff_entropy_encoder* %2, %struct.phuff_entropy_encoder** %entropy, align 8
  %3 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8
  %Se2 = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %3, i32 0, i32 48
  %4 = load i32, i32* %Se2, align 4
  store i32 %4, i32* %Se, align 4
  %5 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8
  %Al3 = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %5, i32 0, i32 50
  %6 = load i32, i32* %Al3, align 4
  store i32 %6, i32* %Al, align 4
  %7 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8
  %dest = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %7, i32 0, i32 5
  %8 = load %struct.jpeg_destination_mgr*, %struct.jpeg_destination_mgr** %dest, align 8
  %next_output_byte = getelementptr inbounds %struct.jpeg_destination_mgr, %struct.jpeg_destination_mgr* %8, i32 0, i32 0
  %9 = load i8*, i8** %next_output_byte, align 8
  %10 = load %struct.phuff_entropy_encoder*, %struct.phuff_entropy_encoder** %entropy, align 8
  %next_output_byte4 = getelementptr inbounds %struct.phuff_entropy_encoder, %struct.phuff_entropy_encoder* %10, i32 0, i32 2
  store i8* %9, i8** %next_output_byte4, align 8
  %11 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8
  %dest5 = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %11, i32 0, i32 5
  %12 = load %struct.jpeg_destination_mgr*, %struct.jpeg_destination_mgr** %dest5, align 8
  %free_in_buffer = getelementptr inbounds %struct.jpeg_destination_mgr, %struct.jpeg_destination_mgr* %12, i32 0, i32 1
  %13 = load i64, i64* %free_in_buffer, align 8
  %14 = load %struct.phuff_entropy_encoder*, %struct.phuff_entropy_encoder** %entropy, align 8
  %free_in_buffer6 = getelementptr inbounds %struct.phuff_entropy_encoder, %struct.phuff_entropy_encoder* %14, i32 0, i32 3
  store i64 %13, i64* %free_in_buffer6, align 8
  %15 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8
  %restart_interval = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %15, i32 0, i32 29
  %16 = load i32, i32* %restart_interval, align 4
  %tobool = icmp ne i32 %16, 0
  br i1 %tobool, label %if.then, label %if.end.8

if.then:                                          ; preds = %entry
  %17 = load %struct.phuff_entropy_encoder*, %struct.phuff_entropy_encoder** %entropy, align 8
  %restarts_to_go = getelementptr inbounds %struct.phuff_entropy_encoder, %struct.phuff_entropy_encoder* %17, i32 0, i32 12
  %18 = load i32, i32* %restarts_to_go, align 4
  %cmp = icmp eq i32 %18, 0
  br i1 %cmp, label %if.then.7, label %if.end

if.then.7:                                        ; preds = %if.then
  %19 = load %struct.phuff_entropy_encoder*, %struct.phuff_entropy_encoder** %entropy, align 8
  %20 = load %struct.phuff_entropy_encoder*, %struct.phuff_entropy_encoder** %entropy, align 8
  %next_restart_num = getelementptr inbounds %struct.phuff_entropy_encoder, %struct.phuff_entropy_encoder* %20, i32 0, i32 13
  %21 = load i32, i32* %next_restart_num, align 4
  call void @emit_restart(%struct.phuff_entropy_encoder* %19, i32 %21)
  br label %if.end

if.end:                                           ; preds = %if.then.7, %if.then
  br label %if.end.8

if.end.8:                                         ; preds = %if.end, %entry
  %22 = load [64 x i16]**, [64 x i16]*** %MCU_data.addr, align 8
  %arrayidx = getelementptr inbounds [64 x i16]*, [64 x i16]** %22, i64 0
  %23 = load [64 x i16]*, [64 x i16]** %arrayidx, align 8
  store [64 x i16]* %23, [64 x i16]** %block, align 8
  store i32 0, i32* %EOB, align 4
  %24 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8
  %Ss = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %24, i32 0, i32 47
  %25 = load i32, i32* %Ss, align 4
  store i32 %25, i32* %k, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end.8
  %26 = load i32, i32* %k, align 4
  %27 = load i32, i32* %Se, align 4
  %cmp9 = icmp sle i32 %26, %27
  br i1 %cmp9, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %28 = load i32, i32* %k, align 4
  %idxprom = sext i32 %28 to i64
  %arrayidx10 = getelementptr inbounds [0 x i32], [0 x i32]* @jpeg_natural_order, i32 0, i64 %idxprom
  %29 = load i32, i32* %arrayidx10, align 4
  %idxprom11 = sext i32 %29 to i64
  %30 = load [64 x i16]*, [64 x i16]** %block, align 8
  %arrayidx12 = getelementptr inbounds [64 x i16], [64 x i16]* %30, i32 0, i64 %idxprom11
  %31 = load i16, i16* %arrayidx12, align 2
  %conv = sext i16 %31 to i32
  store i32 %conv, i32* %temp, align 4
  %32 = load i32, i32* %temp, align 4
  %cmp13 = icmp slt i32 %32, 0
  br i1 %cmp13, label %if.then.15, label %if.end.16

if.then.15:                                       ; preds = %for.body
  %33 = load i32, i32* %temp, align 4
  %sub = sub nsw i32 0, %33
  store i32 %sub, i32* %temp, align 4
  br label %if.end.16

if.end.16:                                        ; preds = %if.then.15, %for.body
  %34 = load i32, i32* %Al, align 4
  %35 = load i32, i32* %temp, align 4
  %shr = ashr i32 %35, %34
  store i32 %shr, i32* %temp, align 4
  %36 = load i32, i32* %temp, align 4
  %37 = load i32, i32* %k, align 4
  %idxprom17 = sext i32 %37 to i64
  %arrayidx18 = getelementptr inbounds [64 x i32], [64 x i32]* %absvalues, i32 0, i64 %idxprom17
  store i32 %36, i32* %arrayidx18, align 4
  %38 = load i32, i32* %temp, align 4
  %cmp19 = icmp eq i32 %38, 1
  br i1 %cmp19, label %if.then.21, label %if.end.22

if.then.21:                                       ; preds = %if.end.16
  %39 = load i32, i32* %k, align 4
  store i32 %39, i32* %EOB, align 4
  br label %if.end.22

if.end.22:                                        ; preds = %if.then.21, %if.end.16
  br label %for.inc

for.inc:                                          ; preds = %if.end.22
  %40 = load i32, i32* %k, align 4
  %inc = add nsw i32 %40, 1
  store i32 %inc, i32* %k, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  store i32 0, i32* %r, align 4
  store i32 0, i32* %BR, align 4
  %41 = load %struct.phuff_entropy_encoder*, %struct.phuff_entropy_encoder** %entropy, align 8
  %bit_buffer = getelementptr inbounds %struct.phuff_entropy_encoder, %struct.phuff_entropy_encoder* %41, i32 0, i32 11
  %42 = load i8*, i8** %bit_buffer, align 8
  %43 = load %struct.phuff_entropy_encoder*, %struct.phuff_entropy_encoder** %entropy, align 8
  %BE = getelementptr inbounds %struct.phuff_entropy_encoder, %struct.phuff_entropy_encoder* %43, i32 0, i32 10
  %44 = load i32, i32* %BE, align 4
  %idx.ext = zext i32 %44 to i64
  %add.ptr = getelementptr inbounds i8, i8* %42, i64 %idx.ext
  store i8* %add.ptr, i8** %BR_buffer, align 8
  %45 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8
  %Ss23 = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %45, i32 0, i32 47
  %46 = load i32, i32* %Ss23, align 4
  store i32 %46, i32* %k, align 4
  br label %for.cond.24

for.cond.24:                                      ; preds = %for.inc.58, %for.end
  %47 = load i32, i32* %k, align 4
  %48 = load i32, i32* %Se, align 4
  %cmp25 = icmp sle i32 %47, %48
  br i1 %cmp25, label %for.body.27, label %for.end.60

for.body.27:                                      ; preds = %for.cond.24
  %49 = load i32, i32* %k, align 4
  %idxprom28 = sext i32 %49 to i64
  %arrayidx29 = getelementptr inbounds [64 x i32], [64 x i32]* %absvalues, i32 0, i64 %idxprom28
  %50 = load i32, i32* %arrayidx29, align 4
  store i32 %50, i32* %temp, align 4
  %cmp30 = icmp eq i32 %50, 0
  br i1 %cmp30, label %if.then.32, label %if.end.34

if.then.32:                                       ; preds = %for.body.27
  %51 = load i32, i32* %r, align 4
  %inc33 = add nsw i32 %51, 1
  store i32 %inc33, i32* %r, align 4
  br label %for.inc.58

if.end.34:                                        ; preds = %for.body.27
  br label %while.cond

while.cond:                                       ; preds = %while.body, %if.end.34
  %52 = load i32, i32* %r, align 4
  %cmp35 = icmp sgt i32 %52, 15
  br i1 %cmp35, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %while.cond
  %53 = load i32, i32* %k, align 4
  %54 = load i32, i32* %EOB, align 4
  %cmp37 = icmp sle i32 %53, %54
  br label %land.end

land.end:                                         ; preds = %land.rhs, %while.cond
  %55 = phi i1 [ false, %while.cond ], [ %cmp37, %land.rhs ]
  br i1 %55, label %while.body, label %while.end

while.body:                                       ; preds = %land.end
  %56 = load %struct.phuff_entropy_encoder*, %struct.phuff_entropy_encoder** %entropy, align 8
  call void @emit_eobrun(%struct.phuff_entropy_encoder* %56)
  %57 = load %struct.phuff_entropy_encoder*, %struct.phuff_entropy_encoder** %entropy, align 8
  %58 = load %struct.phuff_entropy_encoder*, %struct.phuff_entropy_encoder** %entropy, align 8
  %ac_tbl_no = getelementptr inbounds %struct.phuff_entropy_encoder, %struct.phuff_entropy_encoder* %58, i32 0, i32 8
  %59 = load i32, i32* %ac_tbl_no, align 4
  call void @emit_symbol(%struct.phuff_entropy_encoder* %57, i32 %59, i32 240)
  %60 = load i32, i32* %r, align 4
  %sub39 = sub nsw i32 %60, 16
  store i32 %sub39, i32* %r, align 4
  %61 = load %struct.phuff_entropy_encoder*, %struct.phuff_entropy_encoder** %entropy, align 8
  %62 = load i8*, i8** %BR_buffer, align 8
  %63 = load i32, i32* %BR, align 4
  call void @emit_buffered_bits(%struct.phuff_entropy_encoder* %61, i8* %62, i32 %63)
  %64 = load %struct.phuff_entropy_encoder*, %struct.phuff_entropy_encoder** %entropy, align 8
  %bit_buffer40 = getelementptr inbounds %struct.phuff_entropy_encoder, %struct.phuff_entropy_encoder* %64, i32 0, i32 11
  %65 = load i8*, i8** %bit_buffer40, align 8
  store i8* %65, i8** %BR_buffer, align 8
  store i32 0, i32* %BR, align 4
  br label %while.cond

while.end:                                        ; preds = %land.end
  %66 = load i32, i32* %temp, align 4
  %cmp41 = icmp sgt i32 %66, 1
  br i1 %cmp41, label %if.then.43, label %if.end.48

if.then.43:                                       ; preds = %while.end
  %67 = load i32, i32* %temp, align 4
  %and = and i32 %67, 1
  %conv44 = trunc i32 %and to i8
  %68 = load i32, i32* %BR, align 4
  %inc45 = add i32 %68, 1
  store i32 %inc45, i32* %BR, align 4
  %idxprom46 = zext i32 %68 to i64
  %69 = load i8*, i8** %BR_buffer, align 8
  %arrayidx47 = getelementptr inbounds i8, i8* %69, i64 %idxprom46
  store i8 %conv44, i8* %arrayidx47, align 1
  br label %for.inc.58

if.end.48:                                        ; preds = %while.end
  %70 = load %struct.phuff_entropy_encoder*, %struct.phuff_entropy_encoder** %entropy, align 8
  call void @emit_eobrun(%struct.phuff_entropy_encoder* %70)
  %71 = load %struct.phuff_entropy_encoder*, %struct.phuff_entropy_encoder** %entropy, align 8
  %72 = load %struct.phuff_entropy_encoder*, %struct.phuff_entropy_encoder** %entropy, align 8
  %ac_tbl_no49 = getelementptr inbounds %struct.phuff_entropy_encoder, %struct.phuff_entropy_encoder* %72, i32 0, i32 8
  %73 = load i32, i32* %ac_tbl_no49, align 4
  %74 = load i32, i32* %r, align 4
  %shl = shl i32 %74, 4
  %add = add nsw i32 %shl, 1
  call void @emit_symbol(%struct.phuff_entropy_encoder* %71, i32 %73, i32 %add)
  %75 = load i32, i32* %k, align 4
  %idxprom50 = sext i32 %75 to i64
  %arrayidx51 = getelementptr inbounds [0 x i32], [0 x i32]* @jpeg_natural_order, i32 0, i64 %idxprom50
  %76 = load i32, i32* %arrayidx51, align 4
  %idxprom52 = sext i32 %76 to i64
  %77 = load [64 x i16]*, [64 x i16]** %block, align 8
  %arrayidx53 = getelementptr inbounds [64 x i16], [64 x i16]* %77, i32 0, i64 %idxprom52
  %78 = load i16, i16* %arrayidx53, align 2
  %conv54 = sext i16 %78 to i32
  %cmp55 = icmp slt i32 %conv54, 0
  %cond = select i1 %cmp55, i32 0, i32 1
  store i32 %cond, i32* %temp, align 4
  %79 = load %struct.phuff_entropy_encoder*, %struct.phuff_entropy_encoder** %entropy, align 8
  %80 = load i32, i32* %temp, align 4
  call void @emit_bits(%struct.phuff_entropy_encoder* %79, i32 %80, i32 1)
  %81 = load %struct.phuff_entropy_encoder*, %struct.phuff_entropy_encoder** %entropy, align 8
  %82 = load i8*, i8** %BR_buffer, align 8
  %83 = load i32, i32* %BR, align 4
  call void @emit_buffered_bits(%struct.phuff_entropy_encoder* %81, i8* %82, i32 %83)
  %84 = load %struct.phuff_entropy_encoder*, %struct.phuff_entropy_encoder** %entropy, align 8
  %bit_buffer57 = getelementptr inbounds %struct.phuff_entropy_encoder, %struct.phuff_entropy_encoder* %84, i32 0, i32 11
  %85 = load i8*, i8** %bit_buffer57, align 8
  store i8* %85, i8** %BR_buffer, align 8
  store i32 0, i32* %BR, align 4
  store i32 0, i32* %r, align 4
  br label %for.inc.58

for.inc.58:                                       ; preds = %if.end.48, %if.then.43, %if.then.32
  %86 = load i32, i32* %k, align 4
  %inc59 = add nsw i32 %86, 1
  store i32 %inc59, i32* %k, align 4
  br label %for.cond.24

for.end.60:                                       ; preds = %for.cond.24
  %87 = load i32, i32* %r, align 4
  %cmp61 = icmp sgt i32 %87, 0
  br i1 %cmp61, label %if.then.65, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %for.end.60
  %88 = load i32, i32* %BR, align 4
  %cmp63 = icmp ugt i32 %88, 0
  br i1 %cmp63, label %if.then.65, label %if.end.78

if.then.65:                                       ; preds = %lor.lhs.false, %for.end.60
  %89 = load %struct.phuff_entropy_encoder*, %struct.phuff_entropy_encoder** %entropy, align 8
  %EOBRUN = getelementptr inbounds %struct.phuff_entropy_encoder, %struct.phuff_entropy_encoder* %89, i32 0, i32 9
  %90 = load i32, i32* %EOBRUN, align 4
  %inc66 = add i32 %90, 1
  store i32 %inc66, i32* %EOBRUN, align 4
  %91 = load i32, i32* %BR, align 4
  %92 = load %struct.phuff_entropy_encoder*, %struct.phuff_entropy_encoder** %entropy, align 8
  %BE67 = getelementptr inbounds %struct.phuff_entropy_encoder, %struct.phuff_entropy_encoder* %92, i32 0, i32 10
  %93 = load i32, i32* %BE67, align 4
  %add68 = add i32 %93, %91
  store i32 %add68, i32* %BE67, align 4
  %94 = load %struct.phuff_entropy_encoder*, %struct.phuff_entropy_encoder** %entropy, align 8
  %EOBRUN69 = getelementptr inbounds %struct.phuff_entropy_encoder, %struct.phuff_entropy_encoder* %94, i32 0, i32 9
  %95 = load i32, i32* %EOBRUN69, align 4
  %cmp70 = icmp eq i32 %95, 32767
  br i1 %cmp70, label %if.then.76, label %lor.lhs.false.72

lor.lhs.false.72:                                 ; preds = %if.then.65
  %96 = load %struct.phuff_entropy_encoder*, %struct.phuff_entropy_encoder** %entropy, align 8
  %BE73 = getelementptr inbounds %struct.phuff_entropy_encoder, %struct.phuff_entropy_encoder* %96, i32 0, i32 10
  %97 = load i32, i32* %BE73, align 4
  %cmp74 = icmp ugt i32 %97, 937
  br i1 %cmp74, label %if.then.76, label %if.end.77

if.then.76:                                       ; preds = %lor.lhs.false.72, %if.then.65
  %98 = load %struct.phuff_entropy_encoder*, %struct.phuff_entropy_encoder** %entropy, align 8
  call void @emit_eobrun(%struct.phuff_entropy_encoder* %98)
  br label %if.end.77

if.end.77:                                        ; preds = %if.then.76, %lor.lhs.false.72
  br label %if.end.78

if.end.78:                                        ; preds = %if.end.77, %lor.lhs.false
  %99 = load %struct.phuff_entropy_encoder*, %struct.phuff_entropy_encoder** %entropy, align 8
  %next_output_byte79 = getelementptr inbounds %struct.phuff_entropy_encoder, %struct.phuff_entropy_encoder* %99, i32 0, i32 2
  %100 = load i8*, i8** %next_output_byte79, align 8
  %101 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8
  %dest80 = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %101, i32 0, i32 5
  %102 = load %struct.jpeg_destination_mgr*, %struct.jpeg_destination_mgr** %dest80, align 8
  %next_output_byte81 = getelementptr inbounds %struct.jpeg_destination_mgr, %struct.jpeg_destination_mgr* %102, i32 0, i32 0
  store i8* %100, i8** %next_output_byte81, align 8
  %103 = load %struct.phuff_entropy_encoder*, %struct.phuff_entropy_encoder** %entropy, align 8
  %free_in_buffer82 = getelementptr inbounds %struct.phuff_entropy_encoder, %struct.phuff_entropy_encoder* %103, i32 0, i32 3
  %104 = load i64, i64* %free_in_buffer82, align 8
  %105 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8
  %dest83 = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %105, i32 0, i32 5
  %106 = load %struct.jpeg_destination_mgr*, %struct.jpeg_destination_mgr** %dest83, align 8
  %free_in_buffer84 = getelementptr inbounds %struct.jpeg_destination_mgr, %struct.jpeg_destination_mgr* %106, i32 0, i32 1
  store i64 %104, i64* %free_in_buffer84, align 8
  %107 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8
  %restart_interval85 = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %107, i32 0, i32 29
  %108 = load i32, i32* %restart_interval85, align 4
  %tobool86 = icmp ne i32 %108, 0
  br i1 %tobool86, label %if.then.87, label %if.end.100

if.then.87:                                       ; preds = %if.end.78
  %109 = load %struct.phuff_entropy_encoder*, %struct.phuff_entropy_encoder** %entropy, align 8
  %restarts_to_go88 = getelementptr inbounds %struct.phuff_entropy_encoder, %struct.phuff_entropy_encoder* %109, i32 0, i32 12
  %110 = load i32, i32* %restarts_to_go88, align 4
  %cmp89 = icmp eq i32 %110, 0
  br i1 %cmp89, label %if.then.91, label %if.end.98

if.then.91:                                       ; preds = %if.then.87
  %111 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8
  %restart_interval92 = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %111, i32 0, i32 29
  %112 = load i32, i32* %restart_interval92, align 4
  %113 = load %struct.phuff_entropy_encoder*, %struct.phuff_entropy_encoder** %entropy, align 8
  %restarts_to_go93 = getelementptr inbounds %struct.phuff_entropy_encoder, %struct.phuff_entropy_encoder* %113, i32 0, i32 12
  store i32 %112, i32* %restarts_to_go93, align 4
  %114 = load %struct.phuff_entropy_encoder*, %struct.phuff_entropy_encoder** %entropy, align 8
  %next_restart_num94 = getelementptr inbounds %struct.phuff_entropy_encoder, %struct.phuff_entropy_encoder* %114, i32 0, i32 13
  %115 = load i32, i32* %next_restart_num94, align 4
  %inc95 = add nsw i32 %115, 1
  store i32 %inc95, i32* %next_restart_num94, align 4
  %116 = load %struct.phuff_entropy_encoder*, %struct.phuff_entropy_encoder** %entropy, align 8
  %next_restart_num96 = getelementptr inbounds %struct.phuff_entropy_encoder, %struct.phuff_entropy_encoder* %116, i32 0, i32 13
  %117 = load i32, i32* %next_restart_num96, align 4
  %and97 = and i32 %117, 7
  store i32 %and97, i32* %next_restart_num96, align 4
  br label %if.end.98

if.end.98:                                        ; preds = %if.then.91, %if.then.87
  %118 = load %struct.phuff_entropy_encoder*, %struct.phuff_entropy_encoder** %entropy, align 8
  %restarts_to_go99 = getelementptr inbounds %struct.phuff_entropy_encoder, %struct.phuff_entropy_encoder* %118, i32 0, i32 12
  %119 = load i32, i32* %restarts_to_go99, align 4
  %dec = add i32 %119, -1
  store i32 %dec, i32* %restarts_to_go99, align 4
  br label %if.end.100

if.end.100:                                       ; preds = %if.end.98, %if.end.78
  ret i32 1
}

; Function Attrs: nounwind uwtable
define internal void @finish_pass_gather_phuff(%struct.jpeg_compress_struct* %cinfo) #0 {
entry:
  %cinfo.addr = alloca %struct.jpeg_compress_struct*, align 8
  %entropy = alloca %struct.phuff_entropy_encoder*, align 8
  %is_DC_band = alloca i32, align 4
  %ci = alloca i32, align 4
  %tbl = alloca i32, align 4
  %compptr = alloca %struct.jpeg_component_info*, align 8
  %htblptr = alloca %struct.JHUFF_TBL**, align 8
  %did = alloca [4 x i32], align 16
  store %struct.jpeg_compress_struct* %cinfo, %struct.jpeg_compress_struct** %cinfo.addr, align 8
  %0 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8
  %entropy1 = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %0, i32 0, i32 59
  %1 = load %struct.jpeg_entropy_encoder*, %struct.jpeg_entropy_encoder** %entropy1, align 8
  %2 = bitcast %struct.jpeg_entropy_encoder* %1 to %struct.phuff_entropy_encoder*
  store %struct.phuff_entropy_encoder* %2, %struct.phuff_entropy_encoder** %entropy, align 8
  %3 = load %struct.phuff_entropy_encoder*, %struct.phuff_entropy_encoder** %entropy, align 8
  call void @emit_eobrun(%struct.phuff_entropy_encoder* %3)
  %4 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8
  %Ss = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %4, i32 0, i32 47
  %5 = load i32, i32* %Ss, align 4
  %cmp = icmp eq i32 %5, 0
  %conv = zext i1 %cmp to i32
  store i32 %conv, i32* %is_DC_band, align 4
  %arraydecay = getelementptr inbounds [4 x i32], [4 x i32]* %did, i32 0, i32 0
  %6 = bitcast i32* %arraydecay to i8*
  call void @llvm.memset.p0i8.i64(i8* %6, i8 0, i64 16, i32 1, i1 false)
  store i32 0, i32* %ci, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %7 = load i32, i32* %ci, align 4
  %8 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8
  %comps_in_scan = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %8, i32 0, i32 41
  %9 = load i32, i32* %comps_in_scan, align 4
  %cmp2 = icmp slt i32 %7, %9
  br i1 %cmp2, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %10 = load i32, i32* %ci, align 4
  %idxprom = sext i32 %10 to i64
  %11 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8
  %cur_comp_info = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %11, i32 0, i32 42
  %arrayidx = getelementptr inbounds [4 x %struct.jpeg_component_info*], [4 x %struct.jpeg_component_info*]* %cur_comp_info, i32 0, i64 %idxprom
  %12 = load %struct.jpeg_component_info*, %struct.jpeg_component_info** %arrayidx, align 8
  store %struct.jpeg_component_info* %12, %struct.jpeg_component_info** %compptr, align 8
  %13 = load i32, i32* %is_DC_band, align 4
  %tobool = icmp ne i32 %13, 0
  br i1 %tobool, label %if.then, label %if.else

if.then:                                          ; preds = %for.body
  %14 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8
  %Ah = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %14, i32 0, i32 49
  %15 = load i32, i32* %Ah, align 4
  %cmp4 = icmp ne i32 %15, 0
  br i1 %cmp4, label %if.then.6, label %if.end

if.then.6:                                        ; preds = %if.then
  br label %for.inc

if.end:                                           ; preds = %if.then
  %16 = load %struct.jpeg_component_info*, %struct.jpeg_component_info** %compptr, align 8
  %dc_tbl_no = getelementptr inbounds %struct.jpeg_component_info, %struct.jpeg_component_info* %16, i32 0, i32 5
  %17 = load i32, i32* %dc_tbl_no, align 4
  store i32 %17, i32* %tbl, align 4
  br label %if.end.7

if.else:                                          ; preds = %for.body
  %18 = load %struct.jpeg_component_info*, %struct.jpeg_component_info** %compptr, align 8
  %ac_tbl_no = getelementptr inbounds %struct.jpeg_component_info, %struct.jpeg_component_info* %18, i32 0, i32 6
  %19 = load i32, i32* %ac_tbl_no, align 4
  store i32 %19, i32* %tbl, align 4
  br label %if.end.7

if.end.7:                                         ; preds = %if.else, %if.end
  %20 = load i32, i32* %tbl, align 4
  %idxprom8 = sext i32 %20 to i64
  %arrayidx9 = getelementptr inbounds [4 x i32], [4 x i32]* %did, i32 0, i64 %idxprom8
  %21 = load i32, i32* %arrayidx9, align 4
  %tobool10 = icmp ne i32 %21, 0
  br i1 %tobool10, label %if.end.28, label %if.then.11

if.then.11:                                       ; preds = %if.end.7
  %22 = load i32, i32* %is_DC_band, align 4
  %tobool12 = icmp ne i32 %22, 0
  br i1 %tobool12, label %if.then.13, label %if.else.16

if.then.13:                                       ; preds = %if.then.11
  %23 = load i32, i32* %tbl, align 4
  %idxprom14 = sext i32 %23 to i64
  %24 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8
  %dc_huff_tbl_ptrs = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %24, i32 0, i32 16
  %arrayidx15 = getelementptr inbounds [4 x %struct.JHUFF_TBL*], [4 x %struct.JHUFF_TBL*]* %dc_huff_tbl_ptrs, i32 0, i64 %idxprom14
  store %struct.JHUFF_TBL** %arrayidx15, %struct.JHUFF_TBL*** %htblptr, align 8
  br label %if.end.19

if.else.16:                                       ; preds = %if.then.11
  %25 = load i32, i32* %tbl, align 4
  %idxprom17 = sext i32 %25 to i64
  %26 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8
  %ac_huff_tbl_ptrs = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %26, i32 0, i32 17
  %arrayidx18 = getelementptr inbounds [4 x %struct.JHUFF_TBL*], [4 x %struct.JHUFF_TBL*]* %ac_huff_tbl_ptrs, i32 0, i64 %idxprom17
  store %struct.JHUFF_TBL** %arrayidx18, %struct.JHUFF_TBL*** %htblptr, align 8
  br label %if.end.19

if.end.19:                                        ; preds = %if.else.16, %if.then.13
  %27 = load %struct.JHUFF_TBL**, %struct.JHUFF_TBL*** %htblptr, align 8
  %28 = load %struct.JHUFF_TBL*, %struct.JHUFF_TBL** %27, align 8
  %cmp20 = icmp eq %struct.JHUFF_TBL* %28, null
  br i1 %cmp20, label %if.then.22, label %if.end.23

if.then.22:                                       ; preds = %if.end.19
  %29 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8
  %30 = bitcast %struct.jpeg_compress_struct* %29 to %struct.jpeg_common_struct*
  %call = call %struct.JHUFF_TBL* @jpeg_alloc_huff_table(%struct.jpeg_common_struct* %30)
  %31 = load %struct.JHUFF_TBL**, %struct.JHUFF_TBL*** %htblptr, align 8
  store %struct.JHUFF_TBL* %call, %struct.JHUFF_TBL** %31, align 8
  br label %if.end.23

if.end.23:                                        ; preds = %if.then.22, %if.end.19
  %32 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8
  %33 = load %struct.JHUFF_TBL**, %struct.JHUFF_TBL*** %htblptr, align 8
  %34 = load %struct.JHUFF_TBL*, %struct.JHUFF_TBL** %33, align 8
  %35 = load i32, i32* %tbl, align 4
  %idxprom24 = sext i32 %35 to i64
  %36 = load %struct.phuff_entropy_encoder*, %struct.phuff_entropy_encoder** %entropy, align 8
  %count_ptrs = getelementptr inbounds %struct.phuff_entropy_encoder, %struct.phuff_entropy_encoder* %36, i32 0, i32 15
  %arrayidx25 = getelementptr inbounds [4 x i64*], [4 x i64*]* %count_ptrs, i32 0, i64 %idxprom24
  %37 = load i64*, i64** %arrayidx25, align 8
  call void @jpeg_gen_optimal_table(%struct.jpeg_compress_struct* %32, %struct.JHUFF_TBL* %34, i64* %37)
  %38 = load i32, i32* %tbl, align 4
  %idxprom26 = sext i32 %38 to i64
  %arrayidx27 = getelementptr inbounds [4 x i32], [4 x i32]* %did, i32 0, i64 %idxprom26
  store i32 1, i32* %arrayidx27, align 4
  br label %if.end.28

if.end.28:                                        ; preds = %if.end.23, %if.end.7
  br label %for.inc

for.inc:                                          ; preds = %if.end.28, %if.then.6
  %39 = load i32, i32* %ci, align 4
  %inc = add nsw i32 %39, 1
  store i32 %inc, i32* %ci, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @finish_pass_phuff(%struct.jpeg_compress_struct* %cinfo) #0 {
entry:
  %cinfo.addr = alloca %struct.jpeg_compress_struct*, align 8
  %entropy = alloca %struct.phuff_entropy_encoder*, align 8
  store %struct.jpeg_compress_struct* %cinfo, %struct.jpeg_compress_struct** %cinfo.addr, align 8
  %0 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8
  %entropy1 = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %0, i32 0, i32 59
  %1 = load %struct.jpeg_entropy_encoder*, %struct.jpeg_entropy_encoder** %entropy1, align 8
  %2 = bitcast %struct.jpeg_entropy_encoder* %1 to %struct.phuff_entropy_encoder*
  store %struct.phuff_entropy_encoder* %2, %struct.phuff_entropy_encoder** %entropy, align 8
  %3 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8
  %dest = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %3, i32 0, i32 5
  %4 = load %struct.jpeg_destination_mgr*, %struct.jpeg_destination_mgr** %dest, align 8
  %next_output_byte = getelementptr inbounds %struct.jpeg_destination_mgr, %struct.jpeg_destination_mgr* %4, i32 0, i32 0
  %5 = load i8*, i8** %next_output_byte, align 8
  %6 = load %struct.phuff_entropy_encoder*, %struct.phuff_entropy_encoder** %entropy, align 8
  %next_output_byte2 = getelementptr inbounds %struct.phuff_entropy_encoder, %struct.phuff_entropy_encoder* %6, i32 0, i32 2
  store i8* %5, i8** %next_output_byte2, align 8
  %7 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8
  %dest3 = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %7, i32 0, i32 5
  %8 = load %struct.jpeg_destination_mgr*, %struct.jpeg_destination_mgr** %dest3, align 8
  %free_in_buffer = getelementptr inbounds %struct.jpeg_destination_mgr, %struct.jpeg_destination_mgr* %8, i32 0, i32 1
  %9 = load i64, i64* %free_in_buffer, align 8
  %10 = load %struct.phuff_entropy_encoder*, %struct.phuff_entropy_encoder** %entropy, align 8
  %free_in_buffer4 = getelementptr inbounds %struct.phuff_entropy_encoder, %struct.phuff_entropy_encoder* %10, i32 0, i32 3
  store i64 %9, i64* %free_in_buffer4, align 8
  %11 = load %struct.phuff_entropy_encoder*, %struct.phuff_entropy_encoder** %entropy, align 8
  call void @emit_eobrun(%struct.phuff_entropy_encoder* %11)
  %12 = load %struct.phuff_entropy_encoder*, %struct.phuff_entropy_encoder** %entropy, align 8
  call void @flush_bits(%struct.phuff_entropy_encoder* %12)
  %13 = load %struct.phuff_entropy_encoder*, %struct.phuff_entropy_encoder** %entropy, align 8
  %next_output_byte5 = getelementptr inbounds %struct.phuff_entropy_encoder, %struct.phuff_entropy_encoder* %13, i32 0, i32 2
  %14 = load i8*, i8** %next_output_byte5, align 8
  %15 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8
  %dest6 = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %15, i32 0, i32 5
  %16 = load %struct.jpeg_destination_mgr*, %struct.jpeg_destination_mgr** %dest6, align 8
  %next_output_byte7 = getelementptr inbounds %struct.jpeg_destination_mgr, %struct.jpeg_destination_mgr* %16, i32 0, i32 0
  store i8* %14, i8** %next_output_byte7, align 8
  %17 = load %struct.phuff_entropy_encoder*, %struct.phuff_entropy_encoder** %entropy, align 8
  %free_in_buffer8 = getelementptr inbounds %struct.phuff_entropy_encoder, %struct.phuff_entropy_encoder* %17, i32 0, i32 3
  %18 = load i64, i64* %free_in_buffer8, align 8
  %19 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8
  %dest9 = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %19, i32 0, i32 5
  %20 = load %struct.jpeg_destination_mgr*, %struct.jpeg_destination_mgr** %dest9, align 8
  %free_in_buffer10 = getelementptr inbounds %struct.jpeg_destination_mgr, %struct.jpeg_destination_mgr* %20, i32 0, i32 1
  store i64 %18, i64* %free_in_buffer10, align 8
  ret void
}

; Function Attrs: nounwind
declare void @llvm.memset.p0i8.i64(i8* nocapture, i8, i64, i32, i1) #1

declare void @jpeg_make_c_derived_tbl(%struct.jpeg_compress_struct*, %struct.JHUFF_TBL*, %struct.c_derived_tbl**) #2

; Function Attrs: nounwind uwtable
define internal void @emit_restart(%struct.phuff_entropy_encoder* %entropy, i32 %restart_num) #0 {
entry:
  %entropy.addr = alloca %struct.phuff_entropy_encoder*, align 8
  %restart_num.addr = alloca i32, align 4
  %ci = alloca i32, align 4
  store %struct.phuff_entropy_encoder* %entropy, %struct.phuff_entropy_encoder** %entropy.addr, align 8
  store i32 %restart_num, i32* %restart_num.addr, align 4
  %0 = load %struct.phuff_entropy_encoder*, %struct.phuff_entropy_encoder** %entropy.addr, align 8
  call void @emit_eobrun(%struct.phuff_entropy_encoder* %0)
  %1 = load %struct.phuff_entropy_encoder*, %struct.phuff_entropy_encoder** %entropy.addr, align 8
  %gather_statistics = getelementptr inbounds %struct.phuff_entropy_encoder, %struct.phuff_entropy_encoder* %1, i32 0, i32 1
  %2 = load i32, i32* %gather_statistics, align 4
  %tobool = icmp ne i32 %2, 0
  br i1 %tobool, label %if.end.10, label %if.then

if.then:                                          ; preds = %entry
  %3 = load %struct.phuff_entropy_encoder*, %struct.phuff_entropy_encoder** %entropy.addr, align 8
  call void @flush_bits(%struct.phuff_entropy_encoder* %3)
  %4 = load %struct.phuff_entropy_encoder*, %struct.phuff_entropy_encoder** %entropy.addr, align 8
  %next_output_byte = getelementptr inbounds %struct.phuff_entropy_encoder, %struct.phuff_entropy_encoder* %4, i32 0, i32 2
  %5 = load i8*, i8** %next_output_byte, align 8
  %incdec.ptr = getelementptr inbounds i8, i8* %5, i32 1
  store i8* %incdec.ptr, i8** %next_output_byte, align 8
  store i8 -1, i8* %5, align 1
  %6 = load %struct.phuff_entropy_encoder*, %struct.phuff_entropy_encoder** %entropy.addr, align 8
  %free_in_buffer = getelementptr inbounds %struct.phuff_entropy_encoder, %struct.phuff_entropy_encoder* %6, i32 0, i32 3
  %7 = load i64, i64* %free_in_buffer, align 8
  %dec = add i64 %7, -1
  store i64 %dec, i64* %free_in_buffer, align 8
  %cmp = icmp eq i64 %dec, 0
  br i1 %cmp, label %if.then.1, label %if.end

if.then.1:                                        ; preds = %if.then
  %8 = load %struct.phuff_entropy_encoder*, %struct.phuff_entropy_encoder** %entropy.addr, align 8
  call void @dump_buffer(%struct.phuff_entropy_encoder* %8)
  br label %if.end

if.end:                                           ; preds = %if.then.1, %if.then
  %9 = load i32, i32* %restart_num.addr, align 4
  %add = add nsw i32 208, %9
  %conv = trunc i32 %add to i8
  %10 = load %struct.phuff_entropy_encoder*, %struct.phuff_entropy_encoder** %entropy.addr, align 8
  %next_output_byte2 = getelementptr inbounds %struct.phuff_entropy_encoder, %struct.phuff_entropy_encoder* %10, i32 0, i32 2
  %11 = load i8*, i8** %next_output_byte2, align 8
  %incdec.ptr3 = getelementptr inbounds i8, i8* %11, i32 1
  store i8* %incdec.ptr3, i8** %next_output_byte2, align 8
  store i8 %conv, i8* %11, align 1
  %12 = load %struct.phuff_entropy_encoder*, %struct.phuff_entropy_encoder** %entropy.addr, align 8
  %free_in_buffer4 = getelementptr inbounds %struct.phuff_entropy_encoder, %struct.phuff_entropy_encoder* %12, i32 0, i32 3
  %13 = load i64, i64* %free_in_buffer4, align 8
  %dec5 = add i64 %13, -1
  store i64 %dec5, i64* %free_in_buffer4, align 8
  %cmp6 = icmp eq i64 %dec5, 0
  br i1 %cmp6, label %if.then.8, label %if.end.9

if.then.8:                                        ; preds = %if.end
  %14 = load %struct.phuff_entropy_encoder*, %struct.phuff_entropy_encoder** %entropy.addr, align 8
  call void @dump_buffer(%struct.phuff_entropy_encoder* %14)
  br label %if.end.9

if.end.9:                                         ; preds = %if.then.8, %if.end
  br label %if.end.10

if.end.10:                                        ; preds = %if.end.9, %entry
  %15 = load %struct.phuff_entropy_encoder*, %struct.phuff_entropy_encoder** %entropy.addr, align 8
  %cinfo = getelementptr inbounds %struct.phuff_entropy_encoder, %struct.phuff_entropy_encoder* %15, i32 0, i32 6
  %16 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo, align 8
  %Ss = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %16, i32 0, i32 47
  %17 = load i32, i32* %Ss, align 4
  %cmp11 = icmp eq i32 %17, 0
  br i1 %cmp11, label %if.then.13, label %if.else

if.then.13:                                       ; preds = %if.end.10
  store i32 0, i32* %ci, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.then.13
  %18 = load i32, i32* %ci, align 4
  %19 = load %struct.phuff_entropy_encoder*, %struct.phuff_entropy_encoder** %entropy.addr, align 8
  %cinfo14 = getelementptr inbounds %struct.phuff_entropy_encoder, %struct.phuff_entropy_encoder* %19, i32 0, i32 6
  %20 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo14, align 8
  %comps_in_scan = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %20, i32 0, i32 41
  %21 = load i32, i32* %comps_in_scan, align 4
  %cmp15 = icmp slt i32 %18, %21
  br i1 %cmp15, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %22 = load i32, i32* %ci, align 4
  %idxprom = sext i32 %22 to i64
  %23 = load %struct.phuff_entropy_encoder*, %struct.phuff_entropy_encoder** %entropy.addr, align 8
  %last_dc_val = getelementptr inbounds %struct.phuff_entropy_encoder, %struct.phuff_entropy_encoder* %23, i32 0, i32 7
  %arrayidx = getelementptr inbounds [4 x i32], [4 x i32]* %last_dc_val, i32 0, i64 %idxprom
  store i32 0, i32* %arrayidx, align 4
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %24 = load i32, i32* %ci, align 4
  %inc = add nsw i32 %24, 1
  store i32 %inc, i32* %ci, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  br label %if.end.17

if.else:                                          ; preds = %if.end.10
  %25 = load %struct.phuff_entropy_encoder*, %struct.phuff_entropy_encoder** %entropy.addr, align 8
  %EOBRUN = getelementptr inbounds %struct.phuff_entropy_encoder, %struct.phuff_entropy_encoder* %25, i32 0, i32 9
  store i32 0, i32* %EOBRUN, align 4
  %26 = load %struct.phuff_entropy_encoder*, %struct.phuff_entropy_encoder** %entropy.addr, align 8
  %BE = getelementptr inbounds %struct.phuff_entropy_encoder, %struct.phuff_entropy_encoder* %26, i32 0, i32 10
  store i32 0, i32* %BE, align 4
  br label %if.end.17

if.end.17:                                        ; preds = %if.else, %for.end
  ret void
}

; Function Attrs: inlinehint nounwind uwtable
define internal void @emit_symbol(%struct.phuff_entropy_encoder* %entropy, i32 %tbl_no, i32 %symbol) #3 {
entry:
  %entropy.addr = alloca %struct.phuff_entropy_encoder*, align 8
  %tbl_no.addr = alloca i32, align 4
  %symbol.addr = alloca i32, align 4
  %tbl = alloca %struct.c_derived_tbl*, align 8
  store %struct.phuff_entropy_encoder* %entropy, %struct.phuff_entropy_encoder** %entropy.addr, align 8
  store i32 %tbl_no, i32* %tbl_no.addr, align 4
  store i32 %symbol, i32* %symbol.addr, align 4
  %0 = load %struct.phuff_entropy_encoder*, %struct.phuff_entropy_encoder** %entropy.addr, align 8
  %gather_statistics = getelementptr inbounds %struct.phuff_entropy_encoder, %struct.phuff_entropy_encoder* %0, i32 0, i32 1
  %1 = load i32, i32* %gather_statistics, align 4
  %tobool = icmp ne i32 %1, 0
  br i1 %tobool, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %2 = load i32, i32* %symbol.addr, align 4
  %idxprom = sext i32 %2 to i64
  %3 = load i32, i32* %tbl_no.addr, align 4
  %idxprom1 = sext i32 %3 to i64
  %4 = load %struct.phuff_entropy_encoder*, %struct.phuff_entropy_encoder** %entropy.addr, align 8
  %count_ptrs = getelementptr inbounds %struct.phuff_entropy_encoder, %struct.phuff_entropy_encoder* %4, i32 0, i32 15
  %arrayidx = getelementptr inbounds [4 x i64*], [4 x i64*]* %count_ptrs, i32 0, i64 %idxprom1
  %5 = load i64*, i64** %arrayidx, align 8
  %arrayidx2 = getelementptr inbounds i64, i64* %5, i64 %idxprom
  %6 = load i64, i64* %arrayidx2, align 8
  %inc = add nsw i64 %6, 1
  store i64 %inc, i64* %arrayidx2, align 8
  br label %if.end

if.else:                                          ; preds = %entry
  %7 = load i32, i32* %tbl_no.addr, align 4
  %idxprom3 = sext i32 %7 to i64
  %8 = load %struct.phuff_entropy_encoder*, %struct.phuff_entropy_encoder** %entropy.addr, align 8
  %derived_tbls = getelementptr inbounds %struct.phuff_entropy_encoder, %struct.phuff_entropy_encoder* %8, i32 0, i32 14
  %arrayidx4 = getelementptr inbounds [4 x %struct.c_derived_tbl*], [4 x %struct.c_derived_tbl*]* %derived_tbls, i32 0, i64 %idxprom3
  %9 = load %struct.c_derived_tbl*, %struct.c_derived_tbl** %arrayidx4, align 8
  store %struct.c_derived_tbl* %9, %struct.c_derived_tbl** %tbl, align 8
  %10 = load %struct.phuff_entropy_encoder*, %struct.phuff_entropy_encoder** %entropy.addr, align 8
  %11 = load i32, i32* %symbol.addr, align 4
  %idxprom5 = sext i32 %11 to i64
  %12 = load %struct.c_derived_tbl*, %struct.c_derived_tbl** %tbl, align 8
  %ehufco = getelementptr inbounds %struct.c_derived_tbl, %struct.c_derived_tbl* %12, i32 0, i32 0
  %arrayidx6 = getelementptr inbounds [256 x i32], [256 x i32]* %ehufco, i32 0, i64 %idxprom5
  %13 = load i32, i32* %arrayidx6, align 4
  %14 = load i32, i32* %symbol.addr, align 4
  %idxprom7 = sext i32 %14 to i64
  %15 = load %struct.c_derived_tbl*, %struct.c_derived_tbl** %tbl, align 8
  %ehufsi = getelementptr inbounds %struct.c_derived_tbl, %struct.c_derived_tbl* %15, i32 0, i32 1
  %arrayidx8 = getelementptr inbounds [256 x i8], [256 x i8]* %ehufsi, i32 0, i64 %idxprom7
  %16 = load i8, i8* %arrayidx8, align 1
  %conv = sext i8 %16 to i32
  call void @emit_bits(%struct.phuff_entropy_encoder* %10, i32 %13, i32 %conv)
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  ret void
}

; Function Attrs: inlinehint nounwind uwtable
define internal void @emit_bits(%struct.phuff_entropy_encoder* %entropy, i32 %code, i32 %size) #3 {
entry:
  %entropy.addr = alloca %struct.phuff_entropy_encoder*, align 8
  %code.addr = alloca i32, align 4
  %size.addr = alloca i32, align 4
  %put_buffer = alloca i64, align 8
  %put_bits = alloca i32, align 4
  %c = alloca i32, align 4
  store %struct.phuff_entropy_encoder* %entropy, %struct.phuff_entropy_encoder** %entropy.addr, align 8
  store i32 %code, i32* %code.addr, align 4
  store i32 %size, i32* %size.addr, align 4
  %0 = load i32, i32* %code.addr, align 4
  %conv = zext i32 %0 to i64
  store i64 %conv, i64* %put_buffer, align 8
  %1 = load %struct.phuff_entropy_encoder*, %struct.phuff_entropy_encoder** %entropy.addr, align 8
  %put_bits1 = getelementptr inbounds %struct.phuff_entropy_encoder, %struct.phuff_entropy_encoder* %1, i32 0, i32 5
  %2 = load i32, i32* %put_bits1, align 4
  store i32 %2, i32* %put_bits, align 4
  %3 = load i32, i32* %size.addr, align 4
  %cmp = icmp eq i32 %3, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %4 = load %struct.phuff_entropy_encoder*, %struct.phuff_entropy_encoder** %entropy.addr, align 8
  %cinfo = getelementptr inbounds %struct.phuff_entropy_encoder, %struct.phuff_entropy_encoder* %4, i32 0, i32 6
  %5 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo, align 8
  %err = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %5, i32 0, i32 0
  %6 = load %struct.jpeg_error_mgr*, %struct.jpeg_error_mgr** %err, align 8
  %msg_code = getelementptr inbounds %struct.jpeg_error_mgr, %struct.jpeg_error_mgr* %6, i32 0, i32 5
  store i32 39, i32* %msg_code, align 4
  %7 = load %struct.phuff_entropy_encoder*, %struct.phuff_entropy_encoder** %entropy.addr, align 8
  %cinfo3 = getelementptr inbounds %struct.phuff_entropy_encoder, %struct.phuff_entropy_encoder* %7, i32 0, i32 6
  %8 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo3, align 8
  %err4 = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %8, i32 0, i32 0
  %9 = load %struct.jpeg_error_mgr*, %struct.jpeg_error_mgr** %err4, align 8
  %error_exit = getelementptr inbounds %struct.jpeg_error_mgr, %struct.jpeg_error_mgr* %9, i32 0, i32 0
  %10 = load void (%struct.jpeg_common_struct*)*, void (%struct.jpeg_common_struct*)** %error_exit, align 8
  %11 = load %struct.phuff_entropy_encoder*, %struct.phuff_entropy_encoder** %entropy.addr, align 8
  %cinfo5 = getelementptr inbounds %struct.phuff_entropy_encoder, %struct.phuff_entropy_encoder* %11, i32 0, i32 6
  %12 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo5, align 8
  %13 = bitcast %struct.jpeg_compress_struct* %12 to %struct.jpeg_common_struct*
  call void %10(%struct.jpeg_common_struct* %13)
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %14 = load %struct.phuff_entropy_encoder*, %struct.phuff_entropy_encoder** %entropy.addr, align 8
  %gather_statistics = getelementptr inbounds %struct.phuff_entropy_encoder, %struct.phuff_entropy_encoder* %14, i32 0, i32 1
  %15 = load i32, i32* %gather_statistics, align 4
  %tobool = icmp ne i32 %15, 0
  br i1 %tobool, label %if.then.6, label %if.end.7

if.then.6:                                        ; preds = %if.end
  br label %return

if.end.7:                                         ; preds = %if.end
  %16 = load i32, i32* %size.addr, align 4
  %sh_prom = zext i32 %16 to i64
  %shl = shl i64 1, %sh_prom
  %sub = sub nsw i64 %shl, 1
  %17 = load i64, i64* %put_buffer, align 8
  %and = and i64 %17, %sub
  store i64 %and, i64* %put_buffer, align 8
  %18 = load i32, i32* %size.addr, align 4
  %19 = load i32, i32* %put_bits, align 4
  %add = add nsw i32 %19, %18
  store i32 %add, i32* %put_bits, align 4
  %20 = load i32, i32* %put_bits, align 4
  %sub8 = sub nsw i32 24, %20
  %21 = load i64, i64* %put_buffer, align 8
  %sh_prom9 = zext i32 %sub8 to i64
  %shl10 = shl i64 %21, %sh_prom9
  store i64 %shl10, i64* %put_buffer, align 8
  %22 = load %struct.phuff_entropy_encoder*, %struct.phuff_entropy_encoder** %entropy.addr, align 8
  %put_buffer11 = getelementptr inbounds %struct.phuff_entropy_encoder, %struct.phuff_entropy_encoder* %22, i32 0, i32 4
  %23 = load i64, i64* %put_buffer11, align 8
  %24 = load i64, i64* %put_buffer, align 8
  %or = or i64 %24, %23
  store i64 %or, i64* %put_buffer, align 8
  br label %while.cond

while.cond:                                       ; preds = %if.end.32, %if.end.7
  %25 = load i32, i32* %put_bits, align 4
  %cmp12 = icmp sge i32 %25, 8
  br i1 %cmp12, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %26 = load i64, i64* %put_buffer, align 8
  %shr = ashr i64 %26, 16
  %and14 = and i64 %shr, 255
  %conv15 = trunc i64 %and14 to i32
  store i32 %conv15, i32* %c, align 4
  %27 = load i32, i32* %c, align 4
  %conv16 = trunc i32 %27 to i8
  %28 = load %struct.phuff_entropy_encoder*, %struct.phuff_entropy_encoder** %entropy.addr, align 8
  %next_output_byte = getelementptr inbounds %struct.phuff_entropy_encoder, %struct.phuff_entropy_encoder* %28, i32 0, i32 2
  %29 = load i8*, i8** %next_output_byte, align 8
  %incdec.ptr = getelementptr inbounds i8, i8* %29, i32 1
  store i8* %incdec.ptr, i8** %next_output_byte, align 8
  store i8 %conv16, i8* %29, align 1
  %30 = load %struct.phuff_entropy_encoder*, %struct.phuff_entropy_encoder** %entropy.addr, align 8
  %free_in_buffer = getelementptr inbounds %struct.phuff_entropy_encoder, %struct.phuff_entropy_encoder* %30, i32 0, i32 3
  %31 = load i64, i64* %free_in_buffer, align 8
  %dec = add i64 %31, -1
  store i64 %dec, i64* %free_in_buffer, align 8
  %cmp17 = icmp eq i64 %dec, 0
  br i1 %cmp17, label %if.then.19, label %if.end.20

if.then.19:                                       ; preds = %while.body
  %32 = load %struct.phuff_entropy_encoder*, %struct.phuff_entropy_encoder** %entropy.addr, align 8
  call void @dump_buffer(%struct.phuff_entropy_encoder* %32)
  br label %if.end.20

if.end.20:                                        ; preds = %if.then.19, %while.body
  %33 = load i32, i32* %c, align 4
  %cmp21 = icmp eq i32 %33, 255
  br i1 %cmp21, label %if.then.23, label %if.end.32

if.then.23:                                       ; preds = %if.end.20
  %34 = load %struct.phuff_entropy_encoder*, %struct.phuff_entropy_encoder** %entropy.addr, align 8
  %next_output_byte24 = getelementptr inbounds %struct.phuff_entropy_encoder, %struct.phuff_entropy_encoder* %34, i32 0, i32 2
  %35 = load i8*, i8** %next_output_byte24, align 8
  %incdec.ptr25 = getelementptr inbounds i8, i8* %35, i32 1
  store i8* %incdec.ptr25, i8** %next_output_byte24, align 8
  store i8 0, i8* %35, align 1
  %36 = load %struct.phuff_entropy_encoder*, %struct.phuff_entropy_encoder** %entropy.addr, align 8
  %free_in_buffer26 = getelementptr inbounds %struct.phuff_entropy_encoder, %struct.phuff_entropy_encoder* %36, i32 0, i32 3
  %37 = load i64, i64* %free_in_buffer26, align 8
  %dec27 = add i64 %37, -1
  store i64 %dec27, i64* %free_in_buffer26, align 8
  %cmp28 = icmp eq i64 %dec27, 0
  br i1 %cmp28, label %if.then.30, label %if.end.31

if.then.30:                                       ; preds = %if.then.23
  %38 = load %struct.phuff_entropy_encoder*, %struct.phuff_entropy_encoder** %entropy.addr, align 8
  call void @dump_buffer(%struct.phuff_entropy_encoder* %38)
  br label %if.end.31

if.end.31:                                        ; preds = %if.then.30, %if.then.23
  br label %if.end.32

if.end.32:                                        ; preds = %if.end.31, %if.end.20
  %39 = load i64, i64* %put_buffer, align 8
  %shl33 = shl i64 %39, 8
  store i64 %shl33, i64* %put_buffer, align 8
  %40 = load i32, i32* %put_bits, align 4
  %sub34 = sub nsw i32 %40, 8
  store i32 %sub34, i32* %put_bits, align 4
  br label %while.cond

while.end:                                        ; preds = %while.cond
  %41 = load i64, i64* %put_buffer, align 8
  %42 = load %struct.phuff_entropy_encoder*, %struct.phuff_entropy_encoder** %entropy.addr, align 8
  %put_buffer35 = getelementptr inbounds %struct.phuff_entropy_encoder, %struct.phuff_entropy_encoder* %42, i32 0, i32 4
  store i64 %41, i64* %put_buffer35, align 8
  %43 = load i32, i32* %put_bits, align 4
  %44 = load %struct.phuff_entropy_encoder*, %struct.phuff_entropy_encoder** %entropy.addr, align 8
  %put_bits36 = getelementptr inbounds %struct.phuff_entropy_encoder, %struct.phuff_entropy_encoder* %44, i32 0, i32 5
  store i32 %43, i32* %put_bits36, align 4
  br label %return

return:                                           ; preds = %while.end, %if.then.6
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @emit_eobrun(%struct.phuff_entropy_encoder* %entropy) #0 {
entry:
  %entropy.addr = alloca %struct.phuff_entropy_encoder*, align 8
  %temp = alloca i32, align 4
  %nbits = alloca i32, align 4
  store %struct.phuff_entropy_encoder* %entropy, %struct.phuff_entropy_encoder** %entropy.addr, align 8
  %0 = load %struct.phuff_entropy_encoder*, %struct.phuff_entropy_encoder** %entropy.addr, align 8
  %EOBRUN = getelementptr inbounds %struct.phuff_entropy_encoder, %struct.phuff_entropy_encoder* %0, i32 0, i32 9
  %1 = load i32, i32* %EOBRUN, align 4
  %cmp = icmp ugt i32 %1, 0
  br i1 %cmp, label %if.then, label %if.end.7

if.then:                                          ; preds = %entry
  %2 = load %struct.phuff_entropy_encoder*, %struct.phuff_entropy_encoder** %entropy.addr, align 8
  %EOBRUN1 = getelementptr inbounds %struct.phuff_entropy_encoder, %struct.phuff_entropy_encoder* %2, i32 0, i32 9
  %3 = load i32, i32* %EOBRUN1, align 4
  store i32 %3, i32* %temp, align 4
  store i32 0, i32* %nbits, align 4
  br label %while.cond

while.cond:                                       ; preds = %while.body, %if.then
  %4 = load i32, i32* %temp, align 4
  %shr = ashr i32 %4, 1
  store i32 %shr, i32* %temp, align 4
  %tobool = icmp ne i32 %shr, 0
  br i1 %tobool, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %5 = load i32, i32* %nbits, align 4
  %inc = add nsw i32 %5, 1
  store i32 %inc, i32* %nbits, align 4
  br label %while.cond

while.end:                                        ; preds = %while.cond
  %6 = load %struct.phuff_entropy_encoder*, %struct.phuff_entropy_encoder** %entropy.addr, align 8
  %7 = load %struct.phuff_entropy_encoder*, %struct.phuff_entropy_encoder** %entropy.addr, align 8
  %ac_tbl_no = getelementptr inbounds %struct.phuff_entropy_encoder, %struct.phuff_entropy_encoder* %7, i32 0, i32 8
  %8 = load i32, i32* %ac_tbl_no, align 4
  %9 = load i32, i32* %nbits, align 4
  %shl = shl i32 %9, 4
  call void @emit_symbol(%struct.phuff_entropy_encoder* %6, i32 %8, i32 %shl)
  %10 = load i32, i32* %nbits, align 4
  %tobool2 = icmp ne i32 %10, 0
  br i1 %tobool2, label %if.then.3, label %if.end

if.then.3:                                        ; preds = %while.end
  %11 = load %struct.phuff_entropy_encoder*, %struct.phuff_entropy_encoder** %entropy.addr, align 8
  %12 = load %struct.phuff_entropy_encoder*, %struct.phuff_entropy_encoder** %entropy.addr, align 8
  %EOBRUN4 = getelementptr inbounds %struct.phuff_entropy_encoder, %struct.phuff_entropy_encoder* %12, i32 0, i32 9
  %13 = load i32, i32* %EOBRUN4, align 4
  %14 = load i32, i32* %nbits, align 4
  call void @emit_bits(%struct.phuff_entropy_encoder* %11, i32 %13, i32 %14)
  br label %if.end

if.end:                                           ; preds = %if.then.3, %while.end
  %15 = load %struct.phuff_entropy_encoder*, %struct.phuff_entropy_encoder** %entropy.addr, align 8
  %EOBRUN5 = getelementptr inbounds %struct.phuff_entropy_encoder, %struct.phuff_entropy_encoder* %15, i32 0, i32 9
  store i32 0, i32* %EOBRUN5, align 4
  %16 = load %struct.phuff_entropy_encoder*, %struct.phuff_entropy_encoder** %entropy.addr, align 8
  %17 = load %struct.phuff_entropy_encoder*, %struct.phuff_entropy_encoder** %entropy.addr, align 8
  %bit_buffer = getelementptr inbounds %struct.phuff_entropy_encoder, %struct.phuff_entropy_encoder* %17, i32 0, i32 11
  %18 = load i8*, i8** %bit_buffer, align 8
  %19 = load %struct.phuff_entropy_encoder*, %struct.phuff_entropy_encoder** %entropy.addr, align 8
  %BE = getelementptr inbounds %struct.phuff_entropy_encoder, %struct.phuff_entropy_encoder* %19, i32 0, i32 10
  %20 = load i32, i32* %BE, align 4
  call void @emit_buffered_bits(%struct.phuff_entropy_encoder* %16, i8* %18, i32 %20)
  %21 = load %struct.phuff_entropy_encoder*, %struct.phuff_entropy_encoder** %entropy.addr, align 8
  %BE6 = getelementptr inbounds %struct.phuff_entropy_encoder, %struct.phuff_entropy_encoder* %21, i32 0, i32 10
  store i32 0, i32* %BE6, align 4
  br label %if.end.7

if.end.7:                                         ; preds = %if.end, %entry
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @flush_bits(%struct.phuff_entropy_encoder* %entropy) #0 {
entry:
  %entropy.addr = alloca %struct.phuff_entropy_encoder*, align 8
  store %struct.phuff_entropy_encoder* %entropy, %struct.phuff_entropy_encoder** %entropy.addr, align 8
  %0 = load %struct.phuff_entropy_encoder*, %struct.phuff_entropy_encoder** %entropy.addr, align 8
  call void @emit_bits(%struct.phuff_entropy_encoder* %0, i32 127, i32 7)
  %1 = load %struct.phuff_entropy_encoder*, %struct.phuff_entropy_encoder** %entropy.addr, align 8
  %put_buffer = getelementptr inbounds %struct.phuff_entropy_encoder, %struct.phuff_entropy_encoder* %1, i32 0, i32 4
  store i64 0, i64* %put_buffer, align 8
  %2 = load %struct.phuff_entropy_encoder*, %struct.phuff_entropy_encoder** %entropy.addr, align 8
  %put_bits = getelementptr inbounds %struct.phuff_entropy_encoder, %struct.phuff_entropy_encoder* %2, i32 0, i32 5
  store i32 0, i32* %put_bits, align 4
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @dump_buffer(%struct.phuff_entropy_encoder* %entropy) #0 {
entry:
  %entropy.addr = alloca %struct.phuff_entropy_encoder*, align 8
  %dest = alloca %struct.jpeg_destination_mgr*, align 8
  store %struct.phuff_entropy_encoder* %entropy, %struct.phuff_entropy_encoder** %entropy.addr, align 8
  %0 = load %struct.phuff_entropy_encoder*, %struct.phuff_entropy_encoder** %entropy.addr, align 8
  %cinfo = getelementptr inbounds %struct.phuff_entropy_encoder, %struct.phuff_entropy_encoder* %0, i32 0, i32 6
  %1 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo, align 8
  %dest1 = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %1, i32 0, i32 5
  %2 = load %struct.jpeg_destination_mgr*, %struct.jpeg_destination_mgr** %dest1, align 8
  store %struct.jpeg_destination_mgr* %2, %struct.jpeg_destination_mgr** %dest, align 8
  %3 = load %struct.jpeg_destination_mgr*, %struct.jpeg_destination_mgr** %dest, align 8
  %empty_output_buffer = getelementptr inbounds %struct.jpeg_destination_mgr, %struct.jpeg_destination_mgr* %3, i32 0, i32 3
  %4 = load i32 (%struct.jpeg_compress_struct*)*, i32 (%struct.jpeg_compress_struct*)** %empty_output_buffer, align 8
  %5 = load %struct.phuff_entropy_encoder*, %struct.phuff_entropy_encoder** %entropy.addr, align 8
  %cinfo2 = getelementptr inbounds %struct.phuff_entropy_encoder, %struct.phuff_entropy_encoder* %5, i32 0, i32 6
  %6 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo2, align 8
  %call = call i32 %4(%struct.jpeg_compress_struct* %6)
  %tobool = icmp ne i32 %call, 0
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  %7 = load %struct.phuff_entropy_encoder*, %struct.phuff_entropy_encoder** %entropy.addr, align 8
  %cinfo3 = getelementptr inbounds %struct.phuff_entropy_encoder, %struct.phuff_entropy_encoder* %7, i32 0, i32 6
  %8 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo3, align 8
  %err = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %8, i32 0, i32 0
  %9 = load %struct.jpeg_error_mgr*, %struct.jpeg_error_mgr** %err, align 8
  %msg_code = getelementptr inbounds %struct.jpeg_error_mgr, %struct.jpeg_error_mgr* %9, i32 0, i32 5
  store i32 22, i32* %msg_code, align 4
  %10 = load %struct.phuff_entropy_encoder*, %struct.phuff_entropy_encoder** %entropy.addr, align 8
  %cinfo4 = getelementptr inbounds %struct.phuff_entropy_encoder, %struct.phuff_entropy_encoder* %10, i32 0, i32 6
  %11 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo4, align 8
  %err5 = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %11, i32 0, i32 0
  %12 = load %struct.jpeg_error_mgr*, %struct.jpeg_error_mgr** %err5, align 8
  %error_exit = getelementptr inbounds %struct.jpeg_error_mgr, %struct.jpeg_error_mgr* %12, i32 0, i32 0
  %13 = load void (%struct.jpeg_common_struct*)*, void (%struct.jpeg_common_struct*)** %error_exit, align 8
  %14 = load %struct.phuff_entropy_encoder*, %struct.phuff_entropy_encoder** %entropy.addr, align 8
  %cinfo6 = getelementptr inbounds %struct.phuff_entropy_encoder, %struct.phuff_entropy_encoder* %14, i32 0, i32 6
  %15 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo6, align 8
  %16 = bitcast %struct.jpeg_compress_struct* %15 to %struct.jpeg_common_struct*
  call void %13(%struct.jpeg_common_struct* %16)
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %17 = load %struct.jpeg_destination_mgr*, %struct.jpeg_destination_mgr** %dest, align 8
  %next_output_byte = getelementptr inbounds %struct.jpeg_destination_mgr, %struct.jpeg_destination_mgr* %17, i32 0, i32 0
  %18 = load i8*, i8** %next_output_byte, align 8
  %19 = load %struct.phuff_entropy_encoder*, %struct.phuff_entropy_encoder** %entropy.addr, align 8
  %next_output_byte7 = getelementptr inbounds %struct.phuff_entropy_encoder, %struct.phuff_entropy_encoder* %19, i32 0, i32 2
  store i8* %18, i8** %next_output_byte7, align 8
  %20 = load %struct.jpeg_destination_mgr*, %struct.jpeg_destination_mgr** %dest, align 8
  %free_in_buffer = getelementptr inbounds %struct.jpeg_destination_mgr, %struct.jpeg_destination_mgr* %20, i32 0, i32 1
  %21 = load i64, i64* %free_in_buffer, align 8
  %22 = load %struct.phuff_entropy_encoder*, %struct.phuff_entropy_encoder** %entropy.addr, align 8
  %free_in_buffer8 = getelementptr inbounds %struct.phuff_entropy_encoder, %struct.phuff_entropy_encoder* %22, i32 0, i32 3
  store i64 %21, i64* %free_in_buffer8, align 8
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @emit_buffered_bits(%struct.phuff_entropy_encoder* %entropy, i8* %bufstart, i32 %nbits) #0 {
entry:
  %entropy.addr = alloca %struct.phuff_entropy_encoder*, align 8
  %bufstart.addr = alloca i8*, align 8
  %nbits.addr = alloca i32, align 4
  store %struct.phuff_entropy_encoder* %entropy, %struct.phuff_entropy_encoder** %entropy.addr, align 8
  store i8* %bufstart, i8** %bufstart.addr, align 8
  store i32 %nbits, i32* %nbits.addr, align 4
  %0 = load %struct.phuff_entropy_encoder*, %struct.phuff_entropy_encoder** %entropy.addr, align 8
  %gather_statistics = getelementptr inbounds %struct.phuff_entropy_encoder, %struct.phuff_entropy_encoder* %0, i32 0, i32 1
  %1 = load i32, i32* %gather_statistics, align 4
  %tobool = icmp ne i32 %1, 0
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  br label %while.end

if.end:                                           ; preds = %entry
  br label %while.cond

while.cond:                                       ; preds = %while.body, %if.end
  %2 = load i32, i32* %nbits.addr, align 4
  %cmp = icmp ugt i32 %2, 0
  br i1 %cmp, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %3 = load %struct.phuff_entropy_encoder*, %struct.phuff_entropy_encoder** %entropy.addr, align 8
  %4 = load i8*, i8** %bufstart.addr, align 8
  %5 = load i8, i8* %4, align 1
  %conv = sext i8 %5 to i32
  call void @emit_bits(%struct.phuff_entropy_encoder* %3, i32 %conv, i32 1)
  %6 = load i8*, i8** %bufstart.addr, align 8
  %incdec.ptr = getelementptr inbounds i8, i8* %6, i32 1
  store i8* %incdec.ptr, i8** %bufstart.addr, align 8
  %7 = load i32, i32* %nbits.addr, align 4
  %dec = add i32 %7, -1
  store i32 %dec, i32* %nbits.addr, align 4
  br label %while.cond

while.end:                                        ; preds = %if.then, %while.cond
  ret void
}

declare %struct.JHUFF_TBL* @jpeg_alloc_huff_table(%struct.jpeg_common_struct*) #2

declare void @jpeg_gen_optimal_table(%struct.jpeg_compress_struct*, %struct.JHUFF_TBL*, i64*) #2

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { inlinehint nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.ident = !{!0}

!0 = !{!"clang version 3.7.0 (tags/RELEASE_370/final)"}
