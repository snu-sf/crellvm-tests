; ModuleID = './jdarith.bc'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.jpeg_decompress_struct = type { %struct.jpeg_error_mgr*, %struct.jpeg_memory_mgr*, %struct.jpeg_progress_mgr*, i8*, i32, i32, %struct.jpeg_source_mgr*, i32, i32, i32, i32, i32, i32, i32, double, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i8**, i32, i32, i32, i32, i32, [64 x i32]*, [4 x %struct.JQUANT_TBL*], [4 x %struct.JHUFF_TBL*], [4 x %struct.JHUFF_TBL*], i32, %struct.jpeg_component_info*, i32, i32, i32, [16 x i8], [16 x i8], [16 x i8], i32, i32, i8, i8, i8, i16, i16, i32, i8, i32, i32, %struct.jpeg_marker_struct*, i32, i32, i32, i32, i32, i8*, i32, [4 x %struct.jpeg_component_info*], i32, i32, i32, [64 x i32], i32, i32, i32, i32, i32, i32*, i32, i32, %struct.jpeg_decomp_master*, %struct.jpeg_d_main_controller*, %struct.jpeg_d_coef_controller*, %struct.jpeg_d_post_controller*, %struct.jpeg_input_controller*, %struct.jpeg_marker_reader*, %struct.jpeg_entropy_decoder*, %struct.jpeg_inverse_dct*, %struct.jpeg_upsampler*, %struct.jpeg_color_deconverter*, %struct.jpeg_color_quantizer* }
%struct.jpeg_error_mgr = type { void (%struct.jpeg_common_struct*)*, void (%struct.jpeg_common_struct*, i32)*, void (%struct.jpeg_common_struct*)*, void (%struct.jpeg_common_struct*, i8*)*, void (%struct.jpeg_common_struct*)*, i32, %union.anon, i32, i64, i8**, i32, i8**, i32, i32 }
%struct.jpeg_common_struct = type { %struct.jpeg_error_mgr*, %struct.jpeg_memory_mgr*, %struct.jpeg_progress_mgr*, i8*, i32, i32 }
%union.anon = type { [8 x i32], [48 x i8] }
%struct.jpeg_memory_mgr = type { i8* (%struct.jpeg_common_struct*, i32, i64)*, i8* (%struct.jpeg_common_struct*, i32, i64)*, i8** (%struct.jpeg_common_struct*, i32, i32, i32)*, [64 x i16]** (%struct.jpeg_common_struct*, i32, i32, i32)*, %struct.jvirt_sarray_control* (%struct.jpeg_common_struct*, i32, i32, i32, i32, i32)*, %struct.jvirt_barray_control* (%struct.jpeg_common_struct*, i32, i32, i32, i32, i32)*, {}*, i8** (%struct.jpeg_common_struct*, %struct.jvirt_sarray_control*, i32, i32, i32)*, [64 x i16]** (%struct.jpeg_common_struct*, %struct.jvirt_barray_control*, i32, i32, i32)*, void (%struct.jpeg_common_struct*, i32)*, {}*, i64, i64 }
%struct.jvirt_sarray_control = type opaque
%struct.jvirt_barray_control = type opaque
%struct.jpeg_progress_mgr = type { {}*, i64, i64, i32, i32 }
%struct.jpeg_source_mgr = type { i8*, i64, {}*, i32 (%struct.jpeg_decompress_struct*)*, void (%struct.jpeg_decompress_struct*, i64)*, i32 (%struct.jpeg_decompress_struct*, i32)*, {}* }
%struct.JQUANT_TBL = type { [64 x i16], i32 }
%struct.JHUFF_TBL = type { [17 x i8], [256 x i8], i32 }
%struct.jpeg_component_info = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, %struct.JQUANT_TBL*, i8* }
%struct.jpeg_marker_struct = type { %struct.jpeg_marker_struct*, i8, i32, i32, i8* }
%struct.jpeg_decomp_master = type { {}*, {}*, i32 }
%struct.jpeg_d_main_controller = type { void (%struct.jpeg_decompress_struct*, i32)*, void (%struct.jpeg_decompress_struct*, i8**, i32*, i32)* }
%struct.jpeg_d_coef_controller = type { {}*, i32 (%struct.jpeg_decompress_struct*)*, {}*, i32 (%struct.jpeg_decompress_struct*, i8***)*, %struct.jvirt_barray_control** }
%struct.jpeg_d_post_controller = type { void (%struct.jpeg_decompress_struct*, i32)*, void (%struct.jpeg_decompress_struct*, i8***, i32*, i32, i8**, i32*, i32)* }
%struct.jpeg_input_controller = type { i32 (%struct.jpeg_decompress_struct*)*, {}*, {}*, {}*, i32, i32 }
%struct.jpeg_marker_reader = type { {}*, i32 (%struct.jpeg_decompress_struct*)*, i32 (%struct.jpeg_decompress_struct*)*, i32, i32, i32, i32 }
%struct.jpeg_entropy_decoder = type { {}*, i32 (%struct.jpeg_decompress_struct*, [64 x i16]**)*, {}* }
%struct.jpeg_inverse_dct = type { {}*, [10 x void (%struct.jpeg_decompress_struct*, %struct.jpeg_component_info*, i16*, i8**, i32)*] }
%struct.jpeg_upsampler = type { {}*, void (%struct.jpeg_decompress_struct*, i8***, i32*, i32, i8**, i32*, i32)*, i32 }
%struct.jpeg_color_deconverter = type { {}*, void (%struct.jpeg_decompress_struct*, i8***, i32, i8**, i32)* }
%struct.jpeg_color_quantizer = type { void (%struct.jpeg_decompress_struct*, i32)*, void (%struct.jpeg_decompress_struct*, i8**, i8**, i32)*, {}*, {}* }
%struct.arith_entropy_decoder = type { %struct.jpeg_entropy_decoder, i64, i64, i32, [4 x i32], [4 x i32], i32, [16 x i8*], [16 x i8*], [4 x i8] }

@jpeg_aritab = external constant [0 x i64], align 8

; Function Attrs: nounwind uwtable
define void @jinit_arith_decoder(%struct.jpeg_decompress_struct* %cinfo) #0 {
entry:
  %cinfo.addr = alloca %struct.jpeg_decompress_struct*, align 8
  %entropy = alloca %struct.arith_entropy_decoder*, align 8
  %i = alloca i32, align 4
  %coef_bit_ptr = alloca i32*, align 8
  %ci = alloca i32, align 4
  store %struct.jpeg_decompress_struct* %cinfo, %struct.jpeg_decompress_struct** %cinfo.addr, align 8, !tbaa !1
  %0 = bitcast %struct.arith_entropy_decoder** %entropy to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #1
  %1 = bitcast i32* %i to i8*
  call void @llvm.lifetime.start(i64 4, i8* %1) #1
  %2 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8, !tbaa !1
  %mem = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %2, i32 0, i32 1
  %3 = load %struct.jpeg_memory_mgr*, %struct.jpeg_memory_mgr** %mem, align 8, !tbaa !5
  %alloc_small = getelementptr inbounds %struct.jpeg_memory_mgr, %struct.jpeg_memory_mgr* %3, i32 0, i32 0
  %4 = load i8* (%struct.jpeg_common_struct*, i32, i64)*, i8* (%struct.jpeg_common_struct*, i32, i64)** %alloc_small, align 8, !tbaa !10
  %5 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8, !tbaa !1
  %6 = bitcast %struct.jpeg_decompress_struct* %5 to %struct.jpeg_common_struct*
  %call = call i8* %4(%struct.jpeg_common_struct* %6, i32 1, i64 344) #3
  %7 = bitcast i8* %call to %struct.arith_entropy_decoder*
  store %struct.arith_entropy_decoder* %7, %struct.arith_entropy_decoder** %entropy, align 8, !tbaa !1
  %8 = load %struct.arith_entropy_decoder*, %struct.arith_entropy_decoder** %entropy, align 8, !tbaa !1
  %pub = getelementptr inbounds %struct.arith_entropy_decoder, %struct.arith_entropy_decoder* %8, i32 0, i32 0
  %9 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8, !tbaa !1
  %entropy1 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %9, i32 0, i32 89
  store %struct.jpeg_entropy_decoder* %pub, %struct.jpeg_entropy_decoder** %entropy1, align 8, !tbaa !13
  %10 = load %struct.arith_entropy_decoder*, %struct.arith_entropy_decoder** %entropy, align 8, !tbaa !1
  %pub2 = getelementptr inbounds %struct.arith_entropy_decoder, %struct.arith_entropy_decoder* %10, i32 0, i32 0
  %start_pass = getelementptr inbounds %struct.jpeg_entropy_decoder, %struct.jpeg_entropy_decoder* %pub2, i32 0, i32 0
  %start_pass3 = bitcast {}** %start_pass to void (%struct.jpeg_decompress_struct*)**
  store void (%struct.jpeg_decompress_struct*)* @start_pass, void (%struct.jpeg_decompress_struct*)** %start_pass3, align 8, !tbaa !14
  %11 = load %struct.arith_entropy_decoder*, %struct.arith_entropy_decoder** %entropy, align 8, !tbaa !1
  %pub4 = getelementptr inbounds %struct.arith_entropy_decoder, %struct.arith_entropy_decoder* %11, i32 0, i32 0
  %finish_pass = getelementptr inbounds %struct.jpeg_entropy_decoder, %struct.jpeg_entropy_decoder* %pub4, i32 0, i32 2
  %finish_pass5 = bitcast {}** %finish_pass to void (%struct.jpeg_decompress_struct*)**
  store void (%struct.jpeg_decompress_struct*)* @finish_pass, void (%struct.jpeg_decompress_struct*)** %finish_pass5, align 8, !tbaa !17
  store i32 0, i32* %i, align 4, !tbaa !18
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %12 = load i32, i32* %i, align 4, !tbaa !18
  %cmp = icmp slt i32 %12, 16
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %13 = load i32, i32* %i, align 4, !tbaa !18
  %idxprom = sext i32 %13 to i64
  %14 = load %struct.arith_entropy_decoder*, %struct.arith_entropy_decoder** %entropy, align 8, !tbaa !1
  %dc_stats = getelementptr inbounds %struct.arith_entropy_decoder, %struct.arith_entropy_decoder* %14, i32 0, i32 7
  %arrayidx = getelementptr inbounds [16 x i8*], [16 x i8*]* %dc_stats, i32 0, i64 %idxprom
  store i8* null, i8** %arrayidx, align 8, !tbaa !1
  %15 = load i32, i32* %i, align 4, !tbaa !18
  %idxprom6 = sext i32 %15 to i64
  %16 = load %struct.arith_entropy_decoder*, %struct.arith_entropy_decoder** %entropy, align 8, !tbaa !1
  %ac_stats = getelementptr inbounds %struct.arith_entropy_decoder, %struct.arith_entropy_decoder* %16, i32 0, i32 8
  %arrayidx7 = getelementptr inbounds [16 x i8*], [16 x i8*]* %ac_stats, i32 0, i64 %idxprom6
  store i8* null, i8** %arrayidx7, align 8, !tbaa !1
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %17 = load i32, i32* %i, align 4, !tbaa !18
  %inc = add nsw i32 %17, 1
  store i32 %inc, i32* %i, align 4, !tbaa !18
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %18 = load %struct.arith_entropy_decoder*, %struct.arith_entropy_decoder** %entropy, align 8, !tbaa !1
  %fixed_bin = getelementptr inbounds %struct.arith_entropy_decoder, %struct.arith_entropy_decoder* %18, i32 0, i32 9
  %arrayidx8 = getelementptr inbounds [4 x i8], [4 x i8]* %fixed_bin, i32 0, i64 0
  store i8 113, i8* %arrayidx8, align 1, !tbaa !19
  %19 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8, !tbaa !1
  %progressive_mode = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %19, i32 0, i32 46
  %20 = load i32, i32* %progressive_mode, align 4, !tbaa !20
  %tobool = icmp ne i32 %20, 0
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %for.end
  %21 = bitcast i32** %coef_bit_ptr to i8*
  call void @llvm.lifetime.start(i64 8, i8* %21) #1
  %22 = bitcast i32* %ci to i8*
  call void @llvm.lifetime.start(i64 4, i8* %22) #1
  %23 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8, !tbaa !1
  %mem9 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %23, i32 0, i32 1
  %24 = load %struct.jpeg_memory_mgr*, %struct.jpeg_memory_mgr** %mem9, align 8, !tbaa !5
  %alloc_small10 = getelementptr inbounds %struct.jpeg_memory_mgr, %struct.jpeg_memory_mgr* %24, i32 0, i32 0
  %25 = load i8* (%struct.jpeg_common_struct*, i32, i64)*, i8* (%struct.jpeg_common_struct*, i32, i64)** %alloc_small10, align 8, !tbaa !10
  %26 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8, !tbaa !1
  %27 = bitcast %struct.jpeg_decompress_struct* %26 to %struct.jpeg_common_struct*
  %28 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8, !tbaa !1
  %num_components = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %28, i32 0, i32 9
  %29 = load i32, i32* %num_components, align 4, !tbaa !21
  %mul = mul nsw i32 %29, 64
  %conv = sext i32 %mul to i64
  %mul11 = mul i64 %conv, 4
  %call12 = call i8* %25(%struct.jpeg_common_struct* %27, i32 1, i64 %mul11) #3
  %30 = bitcast i8* %call12 to [64 x i32]*
  %31 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8, !tbaa !1
  %coef_bits = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %31, i32 0, i32 39
  store [64 x i32]* %30, [64 x i32]** %coef_bits, align 8, !tbaa !22
  %32 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8, !tbaa !1
  %coef_bits13 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %32, i32 0, i32 39
  %33 = load [64 x i32]*, [64 x i32]** %coef_bits13, align 8, !tbaa !22
  %arrayidx14 = getelementptr inbounds [64 x i32], [64 x i32]* %33, i64 0
  %arrayidx15 = getelementptr inbounds [64 x i32], [64 x i32]* %arrayidx14, i32 0, i64 0
  store i32* %arrayidx15, i32** %coef_bit_ptr, align 8, !tbaa !1
  store i32 0, i32* %ci, align 4, !tbaa !18
  br label %for.cond.16

for.cond.16:                                      ; preds = %for.inc.28, %if.then
  %34 = load i32, i32* %ci, align 4, !tbaa !18
  %35 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8, !tbaa !1
  %num_components17 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %35, i32 0, i32 9
  %36 = load i32, i32* %num_components17, align 4, !tbaa !21
  %cmp18 = icmp slt i32 %34, %36
  br i1 %cmp18, label %for.body.20, label %for.end.30

for.body.20:                                      ; preds = %for.cond.16
  store i32 0, i32* %i, align 4, !tbaa !18
  br label %for.cond.21

for.cond.21:                                      ; preds = %for.inc.25, %for.body.20
  %37 = load i32, i32* %i, align 4, !tbaa !18
  %cmp22 = icmp slt i32 %37, 64
  br i1 %cmp22, label %for.body.24, label %for.end.27

for.body.24:                                      ; preds = %for.cond.21
  %38 = load i32*, i32** %coef_bit_ptr, align 8, !tbaa !1
  %incdec.ptr = getelementptr inbounds i32, i32* %38, i32 1
  store i32* %incdec.ptr, i32** %coef_bit_ptr, align 8, !tbaa !1
  store i32 -1, i32* %38, align 4, !tbaa !18
  br label %for.inc.25

for.inc.25:                                       ; preds = %for.body.24
  %39 = load i32, i32* %i, align 4, !tbaa !18
  %inc26 = add nsw i32 %39, 1
  store i32 %inc26, i32* %i, align 4, !tbaa !18
  br label %for.cond.21

for.end.27:                                       ; preds = %for.cond.21
  br label %for.inc.28

for.inc.28:                                       ; preds = %for.end.27
  %40 = load i32, i32* %ci, align 4, !tbaa !18
  %inc29 = add nsw i32 %40, 1
  store i32 %inc29, i32* %ci, align 4, !tbaa !18
  br label %for.cond.16

for.end.30:                                       ; preds = %for.cond.16
  %41 = bitcast i32* %ci to i8*
  call void @llvm.lifetime.end(i64 4, i8* %41) #1
  %42 = bitcast i32** %coef_bit_ptr to i8*
  call void @llvm.lifetime.end(i64 8, i8* %42) #1
  br label %if.end

if.end:                                           ; preds = %for.end.30, %for.end
  %43 = bitcast i32* %i to i8*
  call void @llvm.lifetime.end(i64 4, i8* %43) #1
  %44 = bitcast %struct.arith_entropy_decoder** %entropy to i8*
  call void @llvm.lifetime.end(i64 8, i8* %44) #1
  ret void
}

; Function Attrs: nounwind
declare void @llvm.lifetime.start(i64, i8* nocapture) #1

; Function Attrs: nounwind uwtable
define internal void @start_pass(%struct.jpeg_decompress_struct* %cinfo) #0 {
entry:
  %cinfo.addr = alloca %struct.jpeg_decompress_struct*, align 8
  %entropy = alloca %struct.arith_entropy_decoder*, align 8
  %ci = alloca i32, align 4
  %tbl = alloca i32, align 4
  %compptr = alloca %struct.jpeg_component_info*, align 8
  %coefi = alloca i32, align 4
  %cindex = alloca i32, align 4
  %coef_bit_ptr = alloca i32*, align 8
  %expected = alloca i32, align 4
  store %struct.jpeg_decompress_struct* %cinfo, %struct.jpeg_decompress_struct** %cinfo.addr, align 8, !tbaa !1
  %0 = bitcast %struct.arith_entropy_decoder** %entropy to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #1
  %1 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8, !tbaa !1
  %entropy1 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %1, i32 0, i32 89
  %2 = load %struct.jpeg_entropy_decoder*, %struct.jpeg_entropy_decoder** %entropy1, align 8, !tbaa !13
  %3 = bitcast %struct.jpeg_entropy_decoder* %2 to %struct.arith_entropy_decoder*
  store %struct.arith_entropy_decoder* %3, %struct.arith_entropy_decoder** %entropy, align 8, !tbaa !1
  %4 = bitcast i32* %ci to i8*
  call void @llvm.lifetime.start(i64 4, i8* %4) #1
  %5 = bitcast i32* %tbl to i8*
  call void @llvm.lifetime.start(i64 4, i8* %5) #1
  %6 = bitcast %struct.jpeg_component_info** %compptr to i8*
  call void @llvm.lifetime.start(i64 8, i8* %6) #1
  %7 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8, !tbaa !1
  %progressive_mode = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %7, i32 0, i32 46
  %8 = load i32, i32* %progressive_mode, align 4, !tbaa !20
  %tobool = icmp ne i32 %8, 0
  br i1 %tobool, label %if.then, label %if.else.121

if.then:                                          ; preds = %entry
  %9 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8, !tbaa !1
  %Ss = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %9, i32 0, i32 75
  %10 = load i32, i32* %Ss, align 4, !tbaa !23
  %cmp = icmp eq i32 %10, 0
  br i1 %cmp, label %if.then.2, label %if.else

if.then.2:                                        ; preds = %if.then
  %11 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8, !tbaa !1
  %Se = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %11, i32 0, i32 76
  %12 = load i32, i32* %Se, align 4, !tbaa !24
  %cmp3 = icmp ne i32 %12, 0
  br i1 %cmp3, label %if.then.4, label %if.end

if.then.4:                                        ; preds = %if.then.2
  br label %bad

if.end:                                           ; preds = %if.then.2
  br label %if.end.15

if.else:                                          ; preds = %if.then
  %13 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8, !tbaa !1
  %Se5 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %13, i32 0, i32 76
  %14 = load i32, i32* %Se5, align 4, !tbaa !24
  %15 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8, !tbaa !1
  %Ss6 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %15, i32 0, i32 75
  %16 = load i32, i32* %Ss6, align 4, !tbaa !23
  %cmp7 = icmp slt i32 %14, %16
  br i1 %cmp7, label %if.then.10, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.else
  %17 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8, !tbaa !1
  %Se8 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %17, i32 0, i32 76
  %18 = load i32, i32* %Se8, align 4, !tbaa !24
  %19 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8, !tbaa !1
  %lim_Se = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %19, i32 0, i32 81
  %20 = load i32, i32* %lim_Se, align 4, !tbaa !25
  %cmp9 = icmp sgt i32 %18, %20
  br i1 %cmp9, label %if.then.10, label %if.end.11

if.then.10:                                       ; preds = %lor.lhs.false, %if.else
  br label %bad

if.end.11:                                        ; preds = %lor.lhs.false
  %21 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8, !tbaa !1
  %comps_in_scan = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %21, i32 0, i32 69
  %22 = load i32, i32* %comps_in_scan, align 4, !tbaa !26
  %cmp12 = icmp ne i32 %22, 1
  br i1 %cmp12, label %if.then.13, label %if.end.14

if.then.13:                                       ; preds = %if.end.11
  br label %bad

if.end.14:                                        ; preds = %if.end.11
  br label %if.end.15

if.end.15:                                        ; preds = %if.end.14, %if.end
  %23 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8, !tbaa !1
  %Ah = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %23, i32 0, i32 77
  %24 = load i32, i32* %Ah, align 4, !tbaa !27
  %cmp16 = icmp ne i32 %24, 0
  br i1 %cmp16, label %if.then.17, label %if.end.22

if.then.17:                                       ; preds = %if.end.15
  %25 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8, !tbaa !1
  %Ah18 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %25, i32 0, i32 77
  %26 = load i32, i32* %Ah18, align 4, !tbaa !27
  %sub = sub nsw i32 %26, 1
  %27 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8, !tbaa !1
  %Al = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %27, i32 0, i32 78
  %28 = load i32, i32* %Al, align 4, !tbaa !28
  %cmp19 = icmp ne i32 %sub, %28
  br i1 %cmp19, label %if.then.20, label %if.end.21

if.then.20:                                       ; preds = %if.then.17
  br label %bad

if.end.21:                                        ; preds = %if.then.17
  br label %if.end.22

if.end.22:                                        ; preds = %if.end.21, %if.end.15
  %29 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8, !tbaa !1
  %Al23 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %29, i32 0, i32 78
  %30 = load i32, i32* %Al23, align 4, !tbaa !28
  %cmp24 = icmp sgt i32 %30, 13
  br i1 %cmp24, label %if.then.25, label %if.end.44

if.then.25:                                       ; preds = %if.end.22
  br label %bad

bad:                                              ; preds = %if.then.25, %if.then.20, %if.then.13, %if.then.10, %if.then.4
  %31 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8, !tbaa !1
  %err = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %31, i32 0, i32 0
  %32 = load %struct.jpeg_error_mgr*, %struct.jpeg_error_mgr** %err, align 8, !tbaa !29
  %msg_code = getelementptr inbounds %struct.jpeg_error_mgr, %struct.jpeg_error_mgr* %32, i32 0, i32 5
  store i32 17, i32* %msg_code, align 4, !tbaa !30
  %33 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8, !tbaa !1
  %Ss26 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %33, i32 0, i32 75
  %34 = load i32, i32* %Ss26, align 4, !tbaa !23
  %35 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8, !tbaa !1
  %err27 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %35, i32 0, i32 0
  %36 = load %struct.jpeg_error_mgr*, %struct.jpeg_error_mgr** %err27, align 8, !tbaa !29
  %msg_parm = getelementptr inbounds %struct.jpeg_error_mgr, %struct.jpeg_error_mgr* %36, i32 0, i32 6
  %i = bitcast %union.anon* %msg_parm to [8 x i32]*
  %arrayidx = getelementptr inbounds [8 x i32], [8 x i32]* %i, i32 0, i64 0
  store i32 %34, i32* %arrayidx, align 4, !tbaa !18
  %37 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8, !tbaa !1
  %Se28 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %37, i32 0, i32 76
  %38 = load i32, i32* %Se28, align 4, !tbaa !24
  %39 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8, !tbaa !1
  %err29 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %39, i32 0, i32 0
  %40 = load %struct.jpeg_error_mgr*, %struct.jpeg_error_mgr** %err29, align 8, !tbaa !29
  %msg_parm30 = getelementptr inbounds %struct.jpeg_error_mgr, %struct.jpeg_error_mgr* %40, i32 0, i32 6
  %i31 = bitcast %union.anon* %msg_parm30 to [8 x i32]*
  %arrayidx32 = getelementptr inbounds [8 x i32], [8 x i32]* %i31, i32 0, i64 1
  store i32 %38, i32* %arrayidx32, align 4, !tbaa !18
  %41 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8, !tbaa !1
  %Ah33 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %41, i32 0, i32 77
  %42 = load i32, i32* %Ah33, align 4, !tbaa !27
  %43 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8, !tbaa !1
  %err34 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %43, i32 0, i32 0
  %44 = load %struct.jpeg_error_mgr*, %struct.jpeg_error_mgr** %err34, align 8, !tbaa !29
  %msg_parm35 = getelementptr inbounds %struct.jpeg_error_mgr, %struct.jpeg_error_mgr* %44, i32 0, i32 6
  %i36 = bitcast %union.anon* %msg_parm35 to [8 x i32]*
  %arrayidx37 = getelementptr inbounds [8 x i32], [8 x i32]* %i36, i32 0, i64 2
  store i32 %42, i32* %arrayidx37, align 4, !tbaa !18
  %45 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8, !tbaa !1
  %Al38 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %45, i32 0, i32 78
  %46 = load i32, i32* %Al38, align 4, !tbaa !28
  %47 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8, !tbaa !1
  %err39 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %47, i32 0, i32 0
  %48 = load %struct.jpeg_error_mgr*, %struct.jpeg_error_mgr** %err39, align 8, !tbaa !29
  %msg_parm40 = getelementptr inbounds %struct.jpeg_error_mgr, %struct.jpeg_error_mgr* %48, i32 0, i32 6
  %i41 = bitcast %union.anon* %msg_parm40 to [8 x i32]*
  %arrayidx42 = getelementptr inbounds [8 x i32], [8 x i32]* %i41, i32 0, i64 3
  store i32 %46, i32* %arrayidx42, align 4, !tbaa !18
  %49 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8, !tbaa !1
  %err43 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %49, i32 0, i32 0
  %50 = load %struct.jpeg_error_mgr*, %struct.jpeg_error_mgr** %err43, align 8, !tbaa !29
  %error_exit = getelementptr inbounds %struct.jpeg_error_mgr, %struct.jpeg_error_mgr* %50, i32 0, i32 0
  %51 = load void (%struct.jpeg_common_struct*)*, void (%struct.jpeg_common_struct*)** %error_exit, align 8, !tbaa !32
  %52 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8, !tbaa !1
  %53 = bitcast %struct.jpeg_decompress_struct* %52 to %struct.jpeg_common_struct*
  call void %51(%struct.jpeg_common_struct* %53) #3
  br label %if.end.44

if.end.44:                                        ; preds = %bad, %if.end.22
  store i32 0, i32* %ci, align 4, !tbaa !18
  br label %for.cond

for.cond:                                         ; preds = %for.inc.97, %if.end.44
  %54 = load i32, i32* %ci, align 4, !tbaa !18
  %55 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8, !tbaa !1
  %comps_in_scan45 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %55, i32 0, i32 69
  %56 = load i32, i32* %comps_in_scan45, align 4, !tbaa !26
  %cmp46 = icmp slt i32 %54, %56
  br i1 %cmp46, label %for.body, label %for.end.99

for.body:                                         ; preds = %for.cond
  %57 = bitcast i32* %coefi to i8*
  call void @llvm.lifetime.start(i64 4, i8* %57) #1
  %58 = bitcast i32* %cindex to i8*
  call void @llvm.lifetime.start(i64 4, i8* %58) #1
  %59 = load i32, i32* %ci, align 4, !tbaa !18
  %idxprom = sext i32 %59 to i64
  %60 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8, !tbaa !1
  %cur_comp_info = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %60, i32 0, i32 70
  %arrayidx47 = getelementptr inbounds [4 x %struct.jpeg_component_info*], [4 x %struct.jpeg_component_info*]* %cur_comp_info, i32 0, i64 %idxprom
  %61 = load %struct.jpeg_component_info*, %struct.jpeg_component_info** %arrayidx47, align 8, !tbaa !1
  %component_index = getelementptr inbounds %struct.jpeg_component_info, %struct.jpeg_component_info* %61, i32 0, i32 1
  %62 = load i32, i32* %component_index, align 4, !tbaa !33
  store i32 %62, i32* %cindex, align 4, !tbaa !18
  %63 = bitcast i32** %coef_bit_ptr to i8*
  call void @llvm.lifetime.start(i64 8, i8* %63) #1
  %64 = load i32, i32* %cindex, align 4, !tbaa !18
  %idxprom48 = sext i32 %64 to i64
  %65 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8, !tbaa !1
  %coef_bits = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %65, i32 0, i32 39
  %66 = load [64 x i32]*, [64 x i32]** %coef_bits, align 8, !tbaa !22
  %arrayidx49 = getelementptr inbounds [64 x i32], [64 x i32]* %66, i64 %idxprom48
  %arrayidx50 = getelementptr inbounds [64 x i32], [64 x i32]* %arrayidx49, i32 0, i64 0
  store i32* %arrayidx50, i32** %coef_bit_ptr, align 8, !tbaa !1
  %67 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8, !tbaa !1
  %Ss51 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %67, i32 0, i32 75
  %68 = load i32, i32* %Ss51, align 4, !tbaa !23
  %tobool52 = icmp ne i32 %68, 0
  br i1 %tobool52, label %land.lhs.true, label %if.end.67

land.lhs.true:                                    ; preds = %for.body
  %69 = load i32*, i32** %coef_bit_ptr, align 8, !tbaa !1
  %arrayidx53 = getelementptr inbounds i32, i32* %69, i64 0
  %70 = load i32, i32* %arrayidx53, align 4, !tbaa !18
  %cmp54 = icmp slt i32 %70, 0
  br i1 %cmp54, label %if.then.55, label %if.end.67

if.then.55:                                       ; preds = %land.lhs.true
  %71 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8, !tbaa !1
  %err56 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %71, i32 0, i32 0
  %72 = load %struct.jpeg_error_mgr*, %struct.jpeg_error_mgr** %err56, align 8, !tbaa !29
  %msg_code57 = getelementptr inbounds %struct.jpeg_error_mgr, %struct.jpeg_error_mgr* %72, i32 0, i32 5
  store i32 118, i32* %msg_code57, align 4, !tbaa !30
  %73 = load i32, i32* %cindex, align 4, !tbaa !18
  %74 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8, !tbaa !1
  %err58 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %74, i32 0, i32 0
  %75 = load %struct.jpeg_error_mgr*, %struct.jpeg_error_mgr** %err58, align 8, !tbaa !29
  %msg_parm59 = getelementptr inbounds %struct.jpeg_error_mgr, %struct.jpeg_error_mgr* %75, i32 0, i32 6
  %i60 = bitcast %union.anon* %msg_parm59 to [8 x i32]*
  %arrayidx61 = getelementptr inbounds [8 x i32], [8 x i32]* %i60, i32 0, i64 0
  store i32 %73, i32* %arrayidx61, align 4, !tbaa !18
  %76 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8, !tbaa !1
  %err62 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %76, i32 0, i32 0
  %77 = load %struct.jpeg_error_mgr*, %struct.jpeg_error_mgr** %err62, align 8, !tbaa !29
  %msg_parm63 = getelementptr inbounds %struct.jpeg_error_mgr, %struct.jpeg_error_mgr* %77, i32 0, i32 6
  %i64 = bitcast %union.anon* %msg_parm63 to [8 x i32]*
  %arrayidx65 = getelementptr inbounds [8 x i32], [8 x i32]* %i64, i32 0, i64 1
  store i32 0, i32* %arrayidx65, align 4, !tbaa !18
  %78 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8, !tbaa !1
  %err66 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %78, i32 0, i32 0
  %79 = load %struct.jpeg_error_mgr*, %struct.jpeg_error_mgr** %err66, align 8, !tbaa !29
  %emit_message = getelementptr inbounds %struct.jpeg_error_mgr, %struct.jpeg_error_mgr* %79, i32 0, i32 1
  %80 = load void (%struct.jpeg_common_struct*, i32)*, void (%struct.jpeg_common_struct*, i32)** %emit_message, align 8, !tbaa !35
  %81 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8, !tbaa !1
  %82 = bitcast %struct.jpeg_decompress_struct* %81 to %struct.jpeg_common_struct*
  call void %80(%struct.jpeg_common_struct* %82, i32 -1) #3
  br label %if.end.67

if.end.67:                                        ; preds = %if.then.55, %land.lhs.true, %for.body
  %83 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8, !tbaa !1
  %Ss68 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %83, i32 0, i32 75
  %84 = load i32, i32* %Ss68, align 4, !tbaa !23
  store i32 %84, i32* %coefi, align 4, !tbaa !18
  br label %for.cond.69

for.cond.69:                                      ; preds = %for.inc, %if.end.67
  %85 = load i32, i32* %coefi, align 4, !tbaa !18
  %86 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8, !tbaa !1
  %Se70 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %86, i32 0, i32 76
  %87 = load i32, i32* %Se70, align 4, !tbaa !24
  %cmp71 = icmp sle i32 %85, %87
  br i1 %cmp71, label %for.body.72, label %for.end

for.body.72:                                      ; preds = %for.cond.69
  %88 = bitcast i32* %expected to i8*
  call void @llvm.lifetime.start(i64 4, i8* %88) #1
  %89 = load i32, i32* %coefi, align 4, !tbaa !18
  %idxprom73 = sext i32 %89 to i64
  %90 = load i32*, i32** %coef_bit_ptr, align 8, !tbaa !1
  %arrayidx74 = getelementptr inbounds i32, i32* %90, i64 %idxprom73
  %91 = load i32, i32* %arrayidx74, align 4, !tbaa !18
  %cmp75 = icmp slt i32 %91, 0
  br i1 %cmp75, label %cond.true, label %cond.false

cond.true:                                        ; preds = %for.body.72
  br label %cond.end

cond.false:                                       ; preds = %for.body.72
  %92 = load i32, i32* %coefi, align 4, !tbaa !18
  %idxprom76 = sext i32 %92 to i64
  %93 = load i32*, i32** %coef_bit_ptr, align 8, !tbaa !1
  %arrayidx77 = getelementptr inbounds i32, i32* %93, i64 %idxprom76
  %94 = load i32, i32* %arrayidx77, align 4, !tbaa !18
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ 0, %cond.true ], [ %94, %cond.false ]
  store i32 %cond, i32* %expected, align 4, !tbaa !18
  %95 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8, !tbaa !1
  %Ah78 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %95, i32 0, i32 77
  %96 = load i32, i32* %Ah78, align 4, !tbaa !27
  %97 = load i32, i32* %expected, align 4, !tbaa !18
  %cmp79 = icmp ne i32 %96, %97
  br i1 %cmp79, label %if.then.80, label %if.end.93

if.then.80:                                       ; preds = %cond.end
  %98 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8, !tbaa !1
  %err81 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %98, i32 0, i32 0
  %99 = load %struct.jpeg_error_mgr*, %struct.jpeg_error_mgr** %err81, align 8, !tbaa !29
  %msg_code82 = getelementptr inbounds %struct.jpeg_error_mgr, %struct.jpeg_error_mgr* %99, i32 0, i32 5
  store i32 118, i32* %msg_code82, align 4, !tbaa !30
  %100 = load i32, i32* %cindex, align 4, !tbaa !18
  %101 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8, !tbaa !1
  %err83 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %101, i32 0, i32 0
  %102 = load %struct.jpeg_error_mgr*, %struct.jpeg_error_mgr** %err83, align 8, !tbaa !29
  %msg_parm84 = getelementptr inbounds %struct.jpeg_error_mgr, %struct.jpeg_error_mgr* %102, i32 0, i32 6
  %i85 = bitcast %union.anon* %msg_parm84 to [8 x i32]*
  %arrayidx86 = getelementptr inbounds [8 x i32], [8 x i32]* %i85, i32 0, i64 0
  store i32 %100, i32* %arrayidx86, align 4, !tbaa !18
  %103 = load i32, i32* %coefi, align 4, !tbaa !18
  %104 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8, !tbaa !1
  %err87 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %104, i32 0, i32 0
  %105 = load %struct.jpeg_error_mgr*, %struct.jpeg_error_mgr** %err87, align 8, !tbaa !29
  %msg_parm88 = getelementptr inbounds %struct.jpeg_error_mgr, %struct.jpeg_error_mgr* %105, i32 0, i32 6
  %i89 = bitcast %union.anon* %msg_parm88 to [8 x i32]*
  %arrayidx90 = getelementptr inbounds [8 x i32], [8 x i32]* %i89, i32 0, i64 1
  store i32 %103, i32* %arrayidx90, align 4, !tbaa !18
  %106 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8, !tbaa !1
  %err91 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %106, i32 0, i32 0
  %107 = load %struct.jpeg_error_mgr*, %struct.jpeg_error_mgr** %err91, align 8, !tbaa !29
  %emit_message92 = getelementptr inbounds %struct.jpeg_error_mgr, %struct.jpeg_error_mgr* %107, i32 0, i32 1
  %108 = load void (%struct.jpeg_common_struct*, i32)*, void (%struct.jpeg_common_struct*, i32)** %emit_message92, align 8, !tbaa !35
  %109 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8, !tbaa !1
  %110 = bitcast %struct.jpeg_decompress_struct* %109 to %struct.jpeg_common_struct*
  call void %108(%struct.jpeg_common_struct* %110, i32 -1) #3
  br label %if.end.93

if.end.93:                                        ; preds = %if.then.80, %cond.end
  %111 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8, !tbaa !1
  %Al94 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %111, i32 0, i32 78
  %112 = load i32, i32* %Al94, align 4, !tbaa !28
  %113 = load i32, i32* %coefi, align 4, !tbaa !18
  %idxprom95 = sext i32 %113 to i64
  %114 = load i32*, i32** %coef_bit_ptr, align 8, !tbaa !1
  %arrayidx96 = getelementptr inbounds i32, i32* %114, i64 %idxprom95
  store i32 %112, i32* %arrayidx96, align 4, !tbaa !18
  %115 = bitcast i32* %expected to i8*
  call void @llvm.lifetime.end(i64 4, i8* %115) #1
  br label %for.inc

for.inc:                                          ; preds = %if.end.93
  %116 = load i32, i32* %coefi, align 4, !tbaa !18
  %inc = add nsw i32 %116, 1
  store i32 %inc, i32* %coefi, align 4, !tbaa !18
  br label %for.cond.69

for.end:                                          ; preds = %for.cond.69
  %117 = bitcast i32** %coef_bit_ptr to i8*
  call void @llvm.lifetime.end(i64 8, i8* %117) #1
  %118 = bitcast i32* %cindex to i8*
  call void @llvm.lifetime.end(i64 4, i8* %118) #1
  %119 = bitcast i32* %coefi to i8*
  call void @llvm.lifetime.end(i64 4, i8* %119) #1
  br label %for.inc.97

for.inc.97:                                       ; preds = %for.end
  %120 = load i32, i32* %ci, align 4, !tbaa !18
  %inc98 = add nsw i32 %120, 1
  store i32 %inc98, i32* %ci, align 4, !tbaa !18
  br label %for.cond

for.end.99:                                       ; preds = %for.cond
  %121 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8, !tbaa !1
  %Ah100 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %121, i32 0, i32 77
  %122 = load i32, i32* %Ah100, align 4, !tbaa !27
  %cmp101 = icmp eq i32 %122, 0
  br i1 %cmp101, label %if.then.102, label %if.else.110

if.then.102:                                      ; preds = %for.end.99
  %123 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8, !tbaa !1
  %Ss103 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %123, i32 0, i32 75
  %124 = load i32, i32* %Ss103, align 4, !tbaa !23
  %cmp104 = icmp eq i32 %124, 0
  br i1 %cmp104, label %if.then.105, label %if.else.106

if.then.105:                                      ; preds = %if.then.102
  %125 = load %struct.arith_entropy_decoder*, %struct.arith_entropy_decoder** %entropy, align 8, !tbaa !1
  %pub = getelementptr inbounds %struct.arith_entropy_decoder, %struct.arith_entropy_decoder* %125, i32 0, i32 0
  %decode_mcu = getelementptr inbounds %struct.jpeg_entropy_decoder, %struct.jpeg_entropy_decoder* %pub, i32 0, i32 1
  store i32 (%struct.jpeg_decompress_struct*, [64 x i16]**)* @decode_mcu_DC_first, i32 (%struct.jpeg_decompress_struct*, [64 x i16]**)** %decode_mcu, align 8, !tbaa !36
  br label %if.end.109

if.else.106:                                      ; preds = %if.then.102
  %126 = load %struct.arith_entropy_decoder*, %struct.arith_entropy_decoder** %entropy, align 8, !tbaa !1
  %pub107 = getelementptr inbounds %struct.arith_entropy_decoder, %struct.arith_entropy_decoder* %126, i32 0, i32 0
  %decode_mcu108 = getelementptr inbounds %struct.jpeg_entropy_decoder, %struct.jpeg_entropy_decoder* %pub107, i32 0, i32 1
  store i32 (%struct.jpeg_decompress_struct*, [64 x i16]**)* @decode_mcu_AC_first, i32 (%struct.jpeg_decompress_struct*, [64 x i16]**)** %decode_mcu108, align 8, !tbaa !36
  br label %if.end.109

if.end.109:                                       ; preds = %if.else.106, %if.then.105
  br label %if.end.120

if.else.110:                                      ; preds = %for.end.99
  %127 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8, !tbaa !1
  %Ss111 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %127, i32 0, i32 75
  %128 = load i32, i32* %Ss111, align 4, !tbaa !23
  %cmp112 = icmp eq i32 %128, 0
  br i1 %cmp112, label %if.then.113, label %if.else.116

if.then.113:                                      ; preds = %if.else.110
  %129 = load %struct.arith_entropy_decoder*, %struct.arith_entropy_decoder** %entropy, align 8, !tbaa !1
  %pub114 = getelementptr inbounds %struct.arith_entropy_decoder, %struct.arith_entropy_decoder* %129, i32 0, i32 0
  %decode_mcu115 = getelementptr inbounds %struct.jpeg_entropy_decoder, %struct.jpeg_entropy_decoder* %pub114, i32 0, i32 1
  store i32 (%struct.jpeg_decompress_struct*, [64 x i16]**)* @decode_mcu_DC_refine, i32 (%struct.jpeg_decompress_struct*, [64 x i16]**)** %decode_mcu115, align 8, !tbaa !36
  br label %if.end.119

if.else.116:                                      ; preds = %if.else.110
  %130 = load %struct.arith_entropy_decoder*, %struct.arith_entropy_decoder** %entropy, align 8, !tbaa !1
  %pub117 = getelementptr inbounds %struct.arith_entropy_decoder, %struct.arith_entropy_decoder* %130, i32 0, i32 0
  %decode_mcu118 = getelementptr inbounds %struct.jpeg_entropy_decoder, %struct.jpeg_entropy_decoder* %pub117, i32 0, i32 1
  store i32 (%struct.jpeg_decompress_struct*, [64 x i16]**)* @decode_mcu_AC_refine, i32 (%struct.jpeg_decompress_struct*, [64 x i16]**)** %decode_mcu118, align 8, !tbaa !36
  br label %if.end.119

if.end.119:                                       ; preds = %if.else.116, %if.then.113
  br label %if.end.120

if.end.120:                                       ; preds = %if.end.119, %if.end.109
  br label %if.end.145

if.else.121:                                      ; preds = %entry
  %131 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8, !tbaa !1
  %Ss122 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %131, i32 0, i32 75
  %132 = load i32, i32* %Ss122, align 4, !tbaa !23
  %cmp123 = icmp ne i32 %132, 0
  br i1 %cmp123, label %if.then.137, label %lor.lhs.false.124

lor.lhs.false.124:                                ; preds = %if.else.121
  %133 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8, !tbaa !1
  %Ah125 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %133, i32 0, i32 77
  %134 = load i32, i32* %Ah125, align 4, !tbaa !27
  %cmp126 = icmp ne i32 %134, 0
  br i1 %cmp126, label %if.then.137, label %lor.lhs.false.127

lor.lhs.false.127:                                ; preds = %lor.lhs.false.124
  %135 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8, !tbaa !1
  %Al128 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %135, i32 0, i32 78
  %136 = load i32, i32* %Al128, align 4, !tbaa !28
  %cmp129 = icmp ne i32 %136, 0
  br i1 %cmp129, label %if.then.137, label %lor.lhs.false.130

lor.lhs.false.130:                                ; preds = %lor.lhs.false.127
  %137 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8, !tbaa !1
  %Se131 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %137, i32 0, i32 76
  %138 = load i32, i32* %Se131, align 4, !tbaa !24
  %cmp132 = icmp slt i32 %138, 64
  br i1 %cmp132, label %land.lhs.true.133, label %if.end.142

land.lhs.true.133:                                ; preds = %lor.lhs.false.130
  %139 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8, !tbaa !1
  %Se134 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %139, i32 0, i32 76
  %140 = load i32, i32* %Se134, align 4, !tbaa !24
  %141 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8, !tbaa !1
  %lim_Se135 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %141, i32 0, i32 81
  %142 = load i32, i32* %lim_Se135, align 4, !tbaa !25
  %cmp136 = icmp ne i32 %140, %142
  br i1 %cmp136, label %if.then.137, label %if.end.142

if.then.137:                                      ; preds = %land.lhs.true.133, %lor.lhs.false.127, %lor.lhs.false.124, %if.else.121
  %143 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8, !tbaa !1
  %err138 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %143, i32 0, i32 0
  %144 = load %struct.jpeg_error_mgr*, %struct.jpeg_error_mgr** %err138, align 8, !tbaa !29
  %msg_code139 = getelementptr inbounds %struct.jpeg_error_mgr, %struct.jpeg_error_mgr* %144, i32 0, i32 5
  store i32 125, i32* %msg_code139, align 4, !tbaa !30
  %145 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8, !tbaa !1
  %err140 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %145, i32 0, i32 0
  %146 = load %struct.jpeg_error_mgr*, %struct.jpeg_error_mgr** %err140, align 8, !tbaa !29
  %emit_message141 = getelementptr inbounds %struct.jpeg_error_mgr, %struct.jpeg_error_mgr* %146, i32 0, i32 1
  %147 = load void (%struct.jpeg_common_struct*, i32)*, void (%struct.jpeg_common_struct*, i32)** %emit_message141, align 8, !tbaa !35
  %148 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8, !tbaa !1
  %149 = bitcast %struct.jpeg_decompress_struct* %148 to %struct.jpeg_common_struct*
  call void %147(%struct.jpeg_common_struct* %149, i32 -1) #3
  br label %if.end.142

if.end.142:                                       ; preds = %if.then.137, %land.lhs.true.133, %lor.lhs.false.130
  %150 = load %struct.arith_entropy_decoder*, %struct.arith_entropy_decoder** %entropy, align 8, !tbaa !1
  %pub143 = getelementptr inbounds %struct.arith_entropy_decoder, %struct.arith_entropy_decoder* %150, i32 0, i32 0
  %decode_mcu144 = getelementptr inbounds %struct.jpeg_entropy_decoder, %struct.jpeg_entropy_decoder* %pub143, i32 0, i32 1
  store i32 (%struct.jpeg_decompress_struct*, [64 x i16]**)* @decode_mcu, i32 (%struct.jpeg_decompress_struct*, [64 x i16]**)** %decode_mcu144, align 8, !tbaa !36
  br label %if.end.145

if.end.145:                                       ; preds = %if.end.142, %if.end.120
  store i32 0, i32* %ci, align 4, !tbaa !18
  br label %for.cond.146

for.cond.146:                                     ; preds = %for.inc.233, %if.end.145
  %151 = load i32, i32* %ci, align 4, !tbaa !18
  %152 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8, !tbaa !1
  %comps_in_scan147 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %152, i32 0, i32 69
  %153 = load i32, i32* %comps_in_scan147, align 4, !tbaa !26
  %cmp148 = icmp slt i32 %151, %153
  br i1 %cmp148, label %for.body.149, label %for.end.235

for.body.149:                                     ; preds = %for.cond.146
  %154 = load i32, i32* %ci, align 4, !tbaa !18
  %idxprom150 = sext i32 %154 to i64
  %155 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8, !tbaa !1
  %cur_comp_info151 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %155, i32 0, i32 70
  %arrayidx152 = getelementptr inbounds [4 x %struct.jpeg_component_info*], [4 x %struct.jpeg_component_info*]* %cur_comp_info151, i32 0, i64 %idxprom150
  %156 = load %struct.jpeg_component_info*, %struct.jpeg_component_info** %arrayidx152, align 8, !tbaa !1
  store %struct.jpeg_component_info* %156, %struct.jpeg_component_info** %compptr, align 8, !tbaa !1
  %157 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8, !tbaa !1
  %progressive_mode153 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %157, i32 0, i32 46
  %158 = load i32, i32* %progressive_mode153, align 4, !tbaa !20
  %tobool154 = icmp ne i32 %158, 0
  br i1 %tobool154, label %lor.lhs.false.155, label %if.then.161

lor.lhs.false.155:                                ; preds = %for.body.149
  %159 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8, !tbaa !1
  %Ss156 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %159, i32 0, i32 75
  %160 = load i32, i32* %Ss156, align 4, !tbaa !23
  %cmp157 = icmp eq i32 %160, 0
  br i1 %cmp157, label %land.lhs.true.158, label %if.end.191

land.lhs.true.158:                                ; preds = %lor.lhs.false.155
  %161 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8, !tbaa !1
  %Ah159 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %161, i32 0, i32 77
  %162 = load i32, i32* %Ah159, align 4, !tbaa !27
  %cmp160 = icmp eq i32 %162, 0
  br i1 %cmp160, label %if.then.161, label %if.end.191

if.then.161:                                      ; preds = %land.lhs.true.158, %for.body.149
  %163 = load %struct.jpeg_component_info*, %struct.jpeg_component_info** %compptr, align 8, !tbaa !1
  %dc_tbl_no = getelementptr inbounds %struct.jpeg_component_info, %struct.jpeg_component_info* %163, i32 0, i32 5
  %164 = load i32, i32* %dc_tbl_no, align 4, !tbaa !37
  store i32 %164, i32* %tbl, align 4, !tbaa !18
  %165 = load i32, i32* %tbl, align 4, !tbaa !18
  %cmp162 = icmp slt i32 %165, 0
  br i1 %cmp162, label %if.then.165, label %lor.lhs.false.163

lor.lhs.false.163:                                ; preds = %if.then.161
  %166 = load i32, i32* %tbl, align 4, !tbaa !18
  %cmp164 = icmp sge i32 %166, 16
  br i1 %cmp164, label %if.then.165, label %if.end.174

if.then.165:                                      ; preds = %lor.lhs.false.163, %if.then.161
  %167 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8, !tbaa !1
  %err166 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %167, i32 0, i32 0
  %168 = load %struct.jpeg_error_mgr*, %struct.jpeg_error_mgr** %err166, align 8, !tbaa !29
  %msg_code167 = getelementptr inbounds %struct.jpeg_error_mgr, %struct.jpeg_error_mgr* %168, i32 0, i32 5
  store i32 50, i32* %msg_code167, align 4, !tbaa !30
  %169 = load i32, i32* %tbl, align 4, !tbaa !18
  %170 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8, !tbaa !1
  %err168 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %170, i32 0, i32 0
  %171 = load %struct.jpeg_error_mgr*, %struct.jpeg_error_mgr** %err168, align 8, !tbaa !29
  %msg_parm169 = getelementptr inbounds %struct.jpeg_error_mgr, %struct.jpeg_error_mgr* %171, i32 0, i32 6
  %i170 = bitcast %union.anon* %msg_parm169 to [8 x i32]*
  %arrayidx171 = getelementptr inbounds [8 x i32], [8 x i32]* %i170, i32 0, i64 0
  store i32 %169, i32* %arrayidx171, align 4, !tbaa !18
  %172 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8, !tbaa !1
  %err172 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %172, i32 0, i32 0
  %173 = load %struct.jpeg_error_mgr*, %struct.jpeg_error_mgr** %err172, align 8, !tbaa !29
  %error_exit173 = getelementptr inbounds %struct.jpeg_error_mgr, %struct.jpeg_error_mgr* %173, i32 0, i32 0
  %174 = load void (%struct.jpeg_common_struct*)*, void (%struct.jpeg_common_struct*)** %error_exit173, align 8, !tbaa !32
  %175 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8, !tbaa !1
  %176 = bitcast %struct.jpeg_decompress_struct* %175 to %struct.jpeg_common_struct*
  call void %174(%struct.jpeg_common_struct* %176) #3
  br label %if.end.174

if.end.174:                                       ; preds = %if.then.165, %lor.lhs.false.163
  %177 = load i32, i32* %tbl, align 4, !tbaa !18
  %idxprom175 = sext i32 %177 to i64
  %178 = load %struct.arith_entropy_decoder*, %struct.arith_entropy_decoder** %entropy, align 8, !tbaa !1
  %dc_stats = getelementptr inbounds %struct.arith_entropy_decoder, %struct.arith_entropy_decoder* %178, i32 0, i32 7
  %arrayidx176 = getelementptr inbounds [16 x i8*], [16 x i8*]* %dc_stats, i32 0, i64 %idxprom175
  %179 = load i8*, i8** %arrayidx176, align 8, !tbaa !1
  %cmp177 = icmp eq i8* %179, null
  br i1 %cmp177, label %if.then.178, label %if.end.182

if.then.178:                                      ; preds = %if.end.174
  %180 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8, !tbaa !1
  %mem = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %180, i32 0, i32 1
  %181 = load %struct.jpeg_memory_mgr*, %struct.jpeg_memory_mgr** %mem, align 8, !tbaa !5
  %alloc_small = getelementptr inbounds %struct.jpeg_memory_mgr, %struct.jpeg_memory_mgr* %181, i32 0, i32 0
  %182 = load i8* (%struct.jpeg_common_struct*, i32, i64)*, i8* (%struct.jpeg_common_struct*, i32, i64)** %alloc_small, align 8, !tbaa !10
  %183 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8, !tbaa !1
  %184 = bitcast %struct.jpeg_decompress_struct* %183 to %struct.jpeg_common_struct*
  %call = call i8* %182(%struct.jpeg_common_struct* %184, i32 1, i64 64) #3
  %185 = load i32, i32* %tbl, align 4, !tbaa !18
  %idxprom179 = sext i32 %185 to i64
  %186 = load %struct.arith_entropy_decoder*, %struct.arith_entropy_decoder** %entropy, align 8, !tbaa !1
  %dc_stats180 = getelementptr inbounds %struct.arith_entropy_decoder, %struct.arith_entropy_decoder* %186, i32 0, i32 7
  %arrayidx181 = getelementptr inbounds [16 x i8*], [16 x i8*]* %dc_stats180, i32 0, i64 %idxprom179
  store i8* %call, i8** %arrayidx181, align 8, !tbaa !1
  br label %if.end.182

if.end.182:                                       ; preds = %if.then.178, %if.end.174
  %187 = load i32, i32* %tbl, align 4, !tbaa !18
  %idxprom183 = sext i32 %187 to i64
  %188 = load %struct.arith_entropy_decoder*, %struct.arith_entropy_decoder** %entropy, align 8, !tbaa !1
  %dc_stats184 = getelementptr inbounds %struct.arith_entropy_decoder, %struct.arith_entropy_decoder* %188, i32 0, i32 7
  %arrayidx185 = getelementptr inbounds [16 x i8*], [16 x i8*]* %dc_stats184, i32 0, i64 %idxprom183
  %189 = load i8*, i8** %arrayidx185, align 8, !tbaa !1
  %call186 = call i8* @memset(i8* %189, i32 0, i64 64) #4
  %190 = load i32, i32* %ci, align 4, !tbaa !18
  %idxprom187 = sext i32 %190 to i64
  %191 = load %struct.arith_entropy_decoder*, %struct.arith_entropy_decoder** %entropy, align 8, !tbaa !1
  %last_dc_val = getelementptr inbounds %struct.arith_entropy_decoder, %struct.arith_entropy_decoder* %191, i32 0, i32 4
  %arrayidx188 = getelementptr inbounds [4 x i32], [4 x i32]* %last_dc_val, i32 0, i64 %idxprom187
  store i32 0, i32* %arrayidx188, align 4, !tbaa !18
  %192 = load i32, i32* %ci, align 4, !tbaa !18
  %idxprom189 = sext i32 %192 to i64
  %193 = load %struct.arith_entropy_decoder*, %struct.arith_entropy_decoder** %entropy, align 8, !tbaa !1
  %dc_context = getelementptr inbounds %struct.arith_entropy_decoder, %struct.arith_entropy_decoder* %193, i32 0, i32 5
  %arrayidx190 = getelementptr inbounds [4 x i32], [4 x i32]* %dc_context, i32 0, i64 %idxprom189
  store i32 0, i32* %arrayidx190, align 4, !tbaa !18
  br label %if.end.191

if.end.191:                                       ; preds = %if.end.182, %land.lhs.true.158, %lor.lhs.false.155
  %194 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8, !tbaa !1
  %progressive_mode192 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %194, i32 0, i32 46
  %195 = load i32, i32* %progressive_mode192, align 4, !tbaa !20
  %tobool193 = icmp ne i32 %195, 0
  br i1 %tobool193, label %lor.lhs.false.197, label %land.lhs.true.194

land.lhs.true.194:                                ; preds = %if.end.191
  %196 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8, !tbaa !1
  %lim_Se195 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %196, i32 0, i32 81
  %197 = load i32, i32* %lim_Se195, align 4, !tbaa !25
  %tobool196 = icmp ne i32 %197, 0
  br i1 %tobool196, label %if.then.203, label %lor.lhs.false.197

lor.lhs.false.197:                                ; preds = %land.lhs.true.194, %if.end.191
  %198 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8, !tbaa !1
  %progressive_mode198 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %198, i32 0, i32 46
  %199 = load i32, i32* %progressive_mode198, align 4, !tbaa !20
  %tobool199 = icmp ne i32 %199, 0
  br i1 %tobool199, label %land.lhs.true.200, label %if.end.232

land.lhs.true.200:                                ; preds = %lor.lhs.false.197
  %200 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8, !tbaa !1
  %Ss201 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %200, i32 0, i32 75
  %201 = load i32, i32* %Ss201, align 4, !tbaa !23
  %tobool202 = icmp ne i32 %201, 0
  br i1 %tobool202, label %if.then.203, label %if.end.232

if.then.203:                                      ; preds = %land.lhs.true.200, %land.lhs.true.194
  %202 = load %struct.jpeg_component_info*, %struct.jpeg_component_info** %compptr, align 8, !tbaa !1
  %ac_tbl_no = getelementptr inbounds %struct.jpeg_component_info, %struct.jpeg_component_info* %202, i32 0, i32 6
  %203 = load i32, i32* %ac_tbl_no, align 4, !tbaa !38
  store i32 %203, i32* %tbl, align 4, !tbaa !18
  %204 = load i32, i32* %tbl, align 4, !tbaa !18
  %cmp204 = icmp slt i32 %204, 0
  br i1 %cmp204, label %if.then.207, label %lor.lhs.false.205

lor.lhs.false.205:                                ; preds = %if.then.203
  %205 = load i32, i32* %tbl, align 4, !tbaa !18
  %cmp206 = icmp sge i32 %205, 16
  br i1 %cmp206, label %if.then.207, label %if.end.216

if.then.207:                                      ; preds = %lor.lhs.false.205, %if.then.203
  %206 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8, !tbaa !1
  %err208 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %206, i32 0, i32 0
  %207 = load %struct.jpeg_error_mgr*, %struct.jpeg_error_mgr** %err208, align 8, !tbaa !29
  %msg_code209 = getelementptr inbounds %struct.jpeg_error_mgr, %struct.jpeg_error_mgr* %207, i32 0, i32 5
  store i32 50, i32* %msg_code209, align 4, !tbaa !30
  %208 = load i32, i32* %tbl, align 4, !tbaa !18
  %209 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8, !tbaa !1
  %err210 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %209, i32 0, i32 0
  %210 = load %struct.jpeg_error_mgr*, %struct.jpeg_error_mgr** %err210, align 8, !tbaa !29
  %msg_parm211 = getelementptr inbounds %struct.jpeg_error_mgr, %struct.jpeg_error_mgr* %210, i32 0, i32 6
  %i212 = bitcast %union.anon* %msg_parm211 to [8 x i32]*
  %arrayidx213 = getelementptr inbounds [8 x i32], [8 x i32]* %i212, i32 0, i64 0
  store i32 %208, i32* %arrayidx213, align 4, !tbaa !18
  %211 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8, !tbaa !1
  %err214 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %211, i32 0, i32 0
  %212 = load %struct.jpeg_error_mgr*, %struct.jpeg_error_mgr** %err214, align 8, !tbaa !29
  %error_exit215 = getelementptr inbounds %struct.jpeg_error_mgr, %struct.jpeg_error_mgr* %212, i32 0, i32 0
  %213 = load void (%struct.jpeg_common_struct*)*, void (%struct.jpeg_common_struct*)** %error_exit215, align 8, !tbaa !32
  %214 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8, !tbaa !1
  %215 = bitcast %struct.jpeg_decompress_struct* %214 to %struct.jpeg_common_struct*
  call void %213(%struct.jpeg_common_struct* %215) #3
  br label %if.end.216

if.end.216:                                       ; preds = %if.then.207, %lor.lhs.false.205
  %216 = load i32, i32* %tbl, align 4, !tbaa !18
  %idxprom217 = sext i32 %216 to i64
  %217 = load %struct.arith_entropy_decoder*, %struct.arith_entropy_decoder** %entropy, align 8, !tbaa !1
  %ac_stats = getelementptr inbounds %struct.arith_entropy_decoder, %struct.arith_entropy_decoder* %217, i32 0, i32 8
  %arrayidx218 = getelementptr inbounds [16 x i8*], [16 x i8*]* %ac_stats, i32 0, i64 %idxprom217
  %218 = load i8*, i8** %arrayidx218, align 8, !tbaa !1
  %cmp219 = icmp eq i8* %218, null
  br i1 %cmp219, label %if.then.220, label %if.end.227

if.then.220:                                      ; preds = %if.end.216
  %219 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8, !tbaa !1
  %mem221 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %219, i32 0, i32 1
  %220 = load %struct.jpeg_memory_mgr*, %struct.jpeg_memory_mgr** %mem221, align 8, !tbaa !5
  %alloc_small222 = getelementptr inbounds %struct.jpeg_memory_mgr, %struct.jpeg_memory_mgr* %220, i32 0, i32 0
  %221 = load i8* (%struct.jpeg_common_struct*, i32, i64)*, i8* (%struct.jpeg_common_struct*, i32, i64)** %alloc_small222, align 8, !tbaa !10
  %222 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8, !tbaa !1
  %223 = bitcast %struct.jpeg_decompress_struct* %222 to %struct.jpeg_common_struct*
  %call223 = call i8* %221(%struct.jpeg_common_struct* %223, i32 1, i64 256) #3
  %224 = load i32, i32* %tbl, align 4, !tbaa !18
  %idxprom224 = sext i32 %224 to i64
  %225 = load %struct.arith_entropy_decoder*, %struct.arith_entropy_decoder** %entropy, align 8, !tbaa !1
  %ac_stats225 = getelementptr inbounds %struct.arith_entropy_decoder, %struct.arith_entropy_decoder* %225, i32 0, i32 8
  %arrayidx226 = getelementptr inbounds [16 x i8*], [16 x i8*]* %ac_stats225, i32 0, i64 %idxprom224
  store i8* %call223, i8** %arrayidx226, align 8, !tbaa !1
  br label %if.end.227

if.end.227:                                       ; preds = %if.then.220, %if.end.216
  %226 = load i32, i32* %tbl, align 4, !tbaa !18
  %idxprom228 = sext i32 %226 to i64
  %227 = load %struct.arith_entropy_decoder*, %struct.arith_entropy_decoder** %entropy, align 8, !tbaa !1
  %ac_stats229 = getelementptr inbounds %struct.arith_entropy_decoder, %struct.arith_entropy_decoder* %227, i32 0, i32 8
  %arrayidx230 = getelementptr inbounds [16 x i8*], [16 x i8*]* %ac_stats229, i32 0, i64 %idxprom228
  %228 = load i8*, i8** %arrayidx230, align 8, !tbaa !1
  %call231 = call i8* @memset(i8* %228, i32 0, i64 256) #4
  br label %if.end.232

if.end.232:                                       ; preds = %if.end.227, %land.lhs.true.200, %lor.lhs.false.197
  br label %for.inc.233

for.inc.233:                                      ; preds = %if.end.232
  %229 = load i32, i32* %ci, align 4, !tbaa !18
  %inc234 = add nsw i32 %229, 1
  store i32 %inc234, i32* %ci, align 4, !tbaa !18
  br label %for.cond.146

for.end.235:                                      ; preds = %for.cond.146
  %230 = load %struct.arith_entropy_decoder*, %struct.arith_entropy_decoder** %entropy, align 8, !tbaa !1
  %c = getelementptr inbounds %struct.arith_entropy_decoder, %struct.arith_entropy_decoder* %230, i32 0, i32 1
  store i64 0, i64* %c, align 8, !tbaa !39
  %231 = load %struct.arith_entropy_decoder*, %struct.arith_entropy_decoder** %entropy, align 8, !tbaa !1
  %a = getelementptr inbounds %struct.arith_entropy_decoder, %struct.arith_entropy_decoder* %231, i32 0, i32 2
  store i64 0, i64* %a, align 8, !tbaa !40
  %232 = load %struct.arith_entropy_decoder*, %struct.arith_entropy_decoder** %entropy, align 8, !tbaa !1
  %ct = getelementptr inbounds %struct.arith_entropy_decoder, %struct.arith_entropy_decoder* %232, i32 0, i32 3
  store i32 -16, i32* %ct, align 4, !tbaa !41
  %233 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8, !tbaa !1
  %restart_interval = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %233, i32 0, i32 51
  %234 = load i32, i32* %restart_interval, align 4, !tbaa !42
  %235 = load %struct.arith_entropy_decoder*, %struct.arith_entropy_decoder** %entropy, align 8, !tbaa !1
  %restarts_to_go = getelementptr inbounds %struct.arith_entropy_decoder, %struct.arith_entropy_decoder* %235, i32 0, i32 6
  store i32 %234, i32* %restarts_to_go, align 4, !tbaa !43
  %236 = bitcast %struct.jpeg_component_info** %compptr to i8*
  call void @llvm.lifetime.end(i64 8, i8* %236) #1
  %237 = bitcast i32* %tbl to i8*
  call void @llvm.lifetime.end(i64 4, i8* %237) #1
  %238 = bitcast i32* %ci to i8*
  call void @llvm.lifetime.end(i64 4, i8* %238) #1
  %239 = bitcast %struct.arith_entropy_decoder** %entropy to i8*
  call void @llvm.lifetime.end(i64 8, i8* %239) #1
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @finish_pass(%struct.jpeg_decompress_struct* %cinfo) #0 {
entry:
  %cinfo.addr = alloca %struct.jpeg_decompress_struct*, align 8
  store %struct.jpeg_decompress_struct* %cinfo, %struct.jpeg_decompress_struct** %cinfo.addr, align 8, !tbaa !1
  ret void
}

; Function Attrs: nounwind
declare void @llvm.lifetime.end(i64, i8* nocapture) #1

; Function Attrs: nounwind uwtable
define internal i32 @decode_mcu_DC_first(%struct.jpeg_decompress_struct* %cinfo, [64 x i16]** %MCU_data) #0 {
entry:
  %retval = alloca i32, align 4
  %cinfo.addr = alloca %struct.jpeg_decompress_struct*, align 8
  %MCU_data.addr = alloca [64 x i16]**, align 8
  %entropy = alloca %struct.arith_entropy_decoder*, align 8
  %block = alloca [64 x i16]*, align 8
  %st = alloca i8*, align 8
  %blkn = alloca i32, align 4
  %ci = alloca i32, align 4
  %tbl = alloca i32, align 4
  %sign = alloca i32, align 4
  %v = alloca i32, align 4
  %m = alloca i32, align 4
  %cleanup.dest.slot = alloca i32
  store %struct.jpeg_decompress_struct* %cinfo, %struct.jpeg_decompress_struct** %cinfo.addr, align 8, !tbaa !1
  store [64 x i16]** %MCU_data, [64 x i16]*** %MCU_data.addr, align 8, !tbaa !1
  %0 = bitcast %struct.arith_entropy_decoder** %entropy to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #1
  %1 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8, !tbaa !1
  %entropy1 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %1, i32 0, i32 89
  %2 = load %struct.jpeg_entropy_decoder*, %struct.jpeg_entropy_decoder** %entropy1, align 8, !tbaa !13
  %3 = bitcast %struct.jpeg_entropy_decoder* %2 to %struct.arith_entropy_decoder*
  store %struct.arith_entropy_decoder* %3, %struct.arith_entropy_decoder** %entropy, align 8, !tbaa !1
  %4 = bitcast [64 x i16]** %block to i8*
  call void @llvm.lifetime.start(i64 8, i8* %4) #1
  %5 = bitcast i8** %st to i8*
  call void @llvm.lifetime.start(i64 8, i8* %5) #1
  %6 = bitcast i32* %blkn to i8*
  call void @llvm.lifetime.start(i64 4, i8* %6) #1
  %7 = bitcast i32* %ci to i8*
  call void @llvm.lifetime.start(i64 4, i8* %7) #1
  %8 = bitcast i32* %tbl to i8*
  call void @llvm.lifetime.start(i64 4, i8* %8) #1
  %9 = bitcast i32* %sign to i8*
  call void @llvm.lifetime.start(i64 4, i8* %9) #1
  %10 = bitcast i32* %v to i8*
  call void @llvm.lifetime.start(i64 4, i8* %10) #1
  %11 = bitcast i32* %m to i8*
  call void @llvm.lifetime.start(i64 4, i8* %11) #1
  %12 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8, !tbaa !1
  %restart_interval = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %12, i32 0, i32 51
  %13 = load i32, i32* %restart_interval, align 4, !tbaa !42
  %tobool = icmp ne i32 %13, 0
  br i1 %tobool, label %if.then, label %if.end.4

if.then:                                          ; preds = %entry
  %14 = load %struct.arith_entropy_decoder*, %struct.arith_entropy_decoder** %entropy, align 8, !tbaa !1
  %restarts_to_go = getelementptr inbounds %struct.arith_entropy_decoder, %struct.arith_entropy_decoder* %14, i32 0, i32 6
  %15 = load i32, i32* %restarts_to_go, align 4, !tbaa !43
  %cmp = icmp eq i32 %15, 0
  br i1 %cmp, label %if.then.2, label %if.end

if.then.2:                                        ; preds = %if.then
  %16 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8, !tbaa !1
  call void @process_restart(%struct.jpeg_decompress_struct* %16) #3
  br label %if.end

if.end:                                           ; preds = %if.then.2, %if.then
  %17 = load %struct.arith_entropy_decoder*, %struct.arith_entropy_decoder** %entropy, align 8, !tbaa !1
  %restarts_to_go3 = getelementptr inbounds %struct.arith_entropy_decoder, %struct.arith_entropy_decoder* %17, i32 0, i32 6
  %18 = load i32, i32* %restarts_to_go3, align 4, !tbaa !43
  %dec = add i32 %18, -1
  store i32 %dec, i32* %restarts_to_go3, align 4, !tbaa !43
  br label %if.end.4

if.end.4:                                         ; preds = %if.end, %entry
  %19 = load %struct.arith_entropy_decoder*, %struct.arith_entropy_decoder** %entropy, align 8, !tbaa !1
  %ct = getelementptr inbounds %struct.arith_entropy_decoder, %struct.arith_entropy_decoder* %19, i32 0, i32 3
  %20 = load i32, i32* %ct, align 4, !tbaa !41
  %cmp5 = icmp eq i32 %20, -1
  br i1 %cmp5, label %if.then.6, label %if.end.7

if.then.6:                                        ; preds = %if.end.4
  store i32 1, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.7:                                         ; preds = %if.end.4
  store i32 0, i32* %blkn, align 4, !tbaa !18
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end.7
  %21 = load i32, i32* %blkn, align 4, !tbaa !18
  %22 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8, !tbaa !1
  %blocks_in_MCU = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %22, i32 0, i32 73
  %23 = load i32, i32* %blocks_in_MCU, align 4, !tbaa !44
  %cmp8 = icmp slt i32 %21, %23
  br i1 %cmp8, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %24 = load i32, i32* %blkn, align 4, !tbaa !18
  %idxprom = sext i32 %24 to i64
  %25 = load [64 x i16]**, [64 x i16]*** %MCU_data.addr, align 8, !tbaa !1
  %arrayidx = getelementptr inbounds [64 x i16]*, [64 x i16]** %25, i64 %idxprom
  %26 = load [64 x i16]*, [64 x i16]** %arrayidx, align 8, !tbaa !1
  store [64 x i16]* %26, [64 x i16]** %block, align 8, !tbaa !1
  %27 = load i32, i32* %blkn, align 4, !tbaa !18
  %idxprom9 = sext i32 %27 to i64
  %28 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8, !tbaa !1
  %MCU_membership = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %28, i32 0, i32 74
  %arrayidx10 = getelementptr inbounds [64 x i32], [64 x i32]* %MCU_membership, i32 0, i64 %idxprom9
  %29 = load i32, i32* %arrayidx10, align 4, !tbaa !18
  store i32 %29, i32* %ci, align 4, !tbaa !18
  %30 = load i32, i32* %ci, align 4, !tbaa !18
  %idxprom11 = sext i32 %30 to i64
  %31 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8, !tbaa !1
  %cur_comp_info = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %31, i32 0, i32 70
  %arrayidx12 = getelementptr inbounds [4 x %struct.jpeg_component_info*], [4 x %struct.jpeg_component_info*]* %cur_comp_info, i32 0, i64 %idxprom11
  %32 = load %struct.jpeg_component_info*, %struct.jpeg_component_info** %arrayidx12, align 8, !tbaa !1
  %dc_tbl_no = getelementptr inbounds %struct.jpeg_component_info, %struct.jpeg_component_info* %32, i32 0, i32 5
  %33 = load i32, i32* %dc_tbl_no, align 4, !tbaa !37
  store i32 %33, i32* %tbl, align 4, !tbaa !18
  %34 = load i32, i32* %tbl, align 4, !tbaa !18
  %idxprom13 = sext i32 %34 to i64
  %35 = load %struct.arith_entropy_decoder*, %struct.arith_entropy_decoder** %entropy, align 8, !tbaa !1
  %dc_stats = getelementptr inbounds %struct.arith_entropy_decoder, %struct.arith_entropy_decoder* %35, i32 0, i32 7
  %arrayidx14 = getelementptr inbounds [16 x i8*], [16 x i8*]* %dc_stats, i32 0, i64 %idxprom13
  %36 = load i8*, i8** %arrayidx14, align 8, !tbaa !1
  %37 = load i32, i32* %ci, align 4, !tbaa !18
  %idxprom15 = sext i32 %37 to i64
  %38 = load %struct.arith_entropy_decoder*, %struct.arith_entropy_decoder** %entropy, align 8, !tbaa !1
  %dc_context = getelementptr inbounds %struct.arith_entropy_decoder, %struct.arith_entropy_decoder* %38, i32 0, i32 5
  %arrayidx16 = getelementptr inbounds [4 x i32], [4 x i32]* %dc_context, i32 0, i64 %idxprom15
  %39 = load i32, i32* %arrayidx16, align 4, !tbaa !18
  %idx.ext = sext i32 %39 to i64
  %add.ptr = getelementptr inbounds i8, i8* %36, i64 %idx.ext
  store i8* %add.ptr, i8** %st, align 8, !tbaa !1
  %40 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8, !tbaa !1
  %41 = load i8*, i8** %st, align 8, !tbaa !1
  %call = call i32 @arith_decode(%struct.jpeg_decompress_struct* %40, i8* %41) #3
  %cmp17 = icmp eq i32 %call, 0
  br i1 %cmp17, label %if.then.18, label %if.else

if.then.18:                                       ; preds = %for.body
  %42 = load i32, i32* %ci, align 4, !tbaa !18
  %idxprom19 = sext i32 %42 to i64
  %43 = load %struct.arith_entropy_decoder*, %struct.arith_entropy_decoder** %entropy, align 8, !tbaa !1
  %dc_context20 = getelementptr inbounds %struct.arith_entropy_decoder, %struct.arith_entropy_decoder* %43, i32 0, i32 5
  %arrayidx21 = getelementptr inbounds [4 x i32], [4 x i32]* %dc_context20, i32 0, i64 %idxprom19
  store i32 0, i32* %arrayidx21, align 4, !tbaa !18
  br label %if.end.92

if.else:                                          ; preds = %for.body
  %44 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8, !tbaa !1
  %45 = load i8*, i8** %st, align 8, !tbaa !1
  %add.ptr22 = getelementptr inbounds i8, i8* %45, i64 1
  %call23 = call i32 @arith_decode(%struct.jpeg_decompress_struct* %44, i8* %add.ptr22) #3
  store i32 %call23, i32* %sign, align 4, !tbaa !18
  %46 = load i8*, i8** %st, align 8, !tbaa !1
  %add.ptr24 = getelementptr inbounds i8, i8* %46, i64 2
  store i8* %add.ptr24, i8** %st, align 8, !tbaa !1
  %47 = load i32, i32* %sign, align 4, !tbaa !18
  %48 = load i8*, i8** %st, align 8, !tbaa !1
  %idx.ext25 = sext i32 %47 to i64
  %add.ptr26 = getelementptr inbounds i8, i8* %48, i64 %idx.ext25
  store i8* %add.ptr26, i8** %st, align 8, !tbaa !1
  %49 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8, !tbaa !1
  %50 = load i8*, i8** %st, align 8, !tbaa !1
  %call27 = call i32 @arith_decode(%struct.jpeg_decompress_struct* %49, i8* %50) #3
  store i32 %call27, i32* %m, align 4, !tbaa !18
  %cmp28 = icmp ne i32 %call27, 0
  br i1 %cmp28, label %if.then.29, label %if.end.42

if.then.29:                                       ; preds = %if.else
  %51 = load i32, i32* %tbl, align 4, !tbaa !18
  %idxprom30 = sext i32 %51 to i64
  %52 = load %struct.arith_entropy_decoder*, %struct.arith_entropy_decoder** %entropy, align 8, !tbaa !1
  %dc_stats31 = getelementptr inbounds %struct.arith_entropy_decoder, %struct.arith_entropy_decoder* %52, i32 0, i32 7
  %arrayidx32 = getelementptr inbounds [16 x i8*], [16 x i8*]* %dc_stats31, i32 0, i64 %idxprom30
  %53 = load i8*, i8** %arrayidx32, align 8, !tbaa !1
  %add.ptr33 = getelementptr inbounds i8, i8* %53, i64 20
  store i8* %add.ptr33, i8** %st, align 8, !tbaa !1
  br label %while.cond

while.cond:                                       ; preds = %if.end.40, %if.then.29
  %54 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8, !tbaa !1
  %55 = load i8*, i8** %st, align 8, !tbaa !1
  %call34 = call i32 @arith_decode(%struct.jpeg_decompress_struct* %54, i8* %55) #3
  %tobool35 = icmp ne i32 %call34, 0
  br i1 %tobool35, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %56 = load i32, i32* %m, align 4, !tbaa !18
  %shl = shl i32 %56, 1
  store i32 %shl, i32* %m, align 4, !tbaa !18
  %cmp36 = icmp eq i32 %shl, 32768
  br i1 %cmp36, label %if.then.37, label %if.end.40

if.then.37:                                       ; preds = %while.body
  %57 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8, !tbaa !1
  %err = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %57, i32 0, i32 0
  %58 = load %struct.jpeg_error_mgr*, %struct.jpeg_error_mgr** %err, align 8, !tbaa !29
  %msg_code = getelementptr inbounds %struct.jpeg_error_mgr, %struct.jpeg_error_mgr* %58, i32 0, i32 5
  store i32 117, i32* %msg_code, align 4, !tbaa !30
  %59 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8, !tbaa !1
  %err38 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %59, i32 0, i32 0
  %60 = load %struct.jpeg_error_mgr*, %struct.jpeg_error_mgr** %err38, align 8, !tbaa !29
  %emit_message = getelementptr inbounds %struct.jpeg_error_mgr, %struct.jpeg_error_mgr* %60, i32 0, i32 1
  %61 = load void (%struct.jpeg_common_struct*, i32)*, void (%struct.jpeg_common_struct*, i32)** %emit_message, align 8, !tbaa !35
  %62 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8, !tbaa !1
  %63 = bitcast %struct.jpeg_decompress_struct* %62 to %struct.jpeg_common_struct*
  call void %61(%struct.jpeg_common_struct* %63, i32 -1) #3
  %64 = load %struct.arith_entropy_decoder*, %struct.arith_entropy_decoder** %entropy, align 8, !tbaa !1
  %ct39 = getelementptr inbounds %struct.arith_entropy_decoder, %struct.arith_entropy_decoder* %64, i32 0, i32 3
  store i32 -1, i32* %ct39, align 4, !tbaa !41
  store i32 1, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.40:                                        ; preds = %while.body
  %65 = load i8*, i8** %st, align 8, !tbaa !1
  %add.ptr41 = getelementptr inbounds i8, i8* %65, i64 1
  store i8* %add.ptr41, i8** %st, align 8, !tbaa !1
  br label %while.cond

while.end:                                        ; preds = %while.cond
  br label %if.end.42

if.end.42:                                        ; preds = %while.end, %if.else
  %66 = load i32, i32* %m, align 4, !tbaa !18
  %67 = load i32, i32* %tbl, align 4, !tbaa !18
  %idxprom43 = sext i32 %67 to i64
  %68 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8, !tbaa !1
  %arith_dc_L = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %68, i32 0, i32 48
  %arrayidx44 = getelementptr inbounds [16 x i8], [16 x i8]* %arith_dc_L, i32 0, i64 %idxprom43
  %69 = load i8, i8* %arrayidx44, align 1, !tbaa !19
  %conv = zext i8 %69 to i32
  %sh_prom = zext i32 %conv to i64
  %shl45 = shl i64 1, %sh_prom
  %shr = ashr i64 %shl45, 1
  %conv46 = trunc i64 %shr to i32
  %cmp47 = icmp slt i32 %66, %conv46
  br i1 %cmp47, label %if.then.49, label %if.else.53

if.then.49:                                       ; preds = %if.end.42
  %70 = load i32, i32* %ci, align 4, !tbaa !18
  %idxprom50 = sext i32 %70 to i64
  %71 = load %struct.arith_entropy_decoder*, %struct.arith_entropy_decoder** %entropy, align 8, !tbaa !1
  %dc_context51 = getelementptr inbounds %struct.arith_entropy_decoder, %struct.arith_entropy_decoder* %71, i32 0, i32 5
  %arrayidx52 = getelementptr inbounds [4 x i32], [4 x i32]* %dc_context51, i32 0, i64 %idxprom50
  store i32 0, i32* %arrayidx52, align 4, !tbaa !18
  br label %if.end.74

if.else.53:                                       ; preds = %if.end.42
  %72 = load i32, i32* %m, align 4, !tbaa !18
  %73 = load i32, i32* %tbl, align 4, !tbaa !18
  %idxprom54 = sext i32 %73 to i64
  %74 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8, !tbaa !1
  %arith_dc_U = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %74, i32 0, i32 49
  %arrayidx55 = getelementptr inbounds [16 x i8], [16 x i8]* %arith_dc_U, i32 0, i64 %idxprom54
  %75 = load i8, i8* %arrayidx55, align 1, !tbaa !19
  %conv56 = zext i8 %75 to i32
  %sh_prom57 = zext i32 %conv56 to i64
  %shl58 = shl i64 1, %sh_prom57
  %shr59 = ashr i64 %shl58, 1
  %conv60 = trunc i64 %shr59 to i32
  %cmp61 = icmp sgt i32 %72, %conv60
  br i1 %cmp61, label %if.then.63, label %if.else.67

if.then.63:                                       ; preds = %if.else.53
  %76 = load i32, i32* %sign, align 4, !tbaa !18
  %mul = mul nsw i32 %76, 4
  %add = add nsw i32 12, %mul
  %77 = load i32, i32* %ci, align 4, !tbaa !18
  %idxprom64 = sext i32 %77 to i64
  %78 = load %struct.arith_entropy_decoder*, %struct.arith_entropy_decoder** %entropy, align 8, !tbaa !1
  %dc_context65 = getelementptr inbounds %struct.arith_entropy_decoder, %struct.arith_entropy_decoder* %78, i32 0, i32 5
  %arrayidx66 = getelementptr inbounds [4 x i32], [4 x i32]* %dc_context65, i32 0, i64 %idxprom64
  store i32 %add, i32* %arrayidx66, align 4, !tbaa !18
  br label %if.end.73

if.else.67:                                       ; preds = %if.else.53
  %79 = load i32, i32* %sign, align 4, !tbaa !18
  %mul68 = mul nsw i32 %79, 4
  %add69 = add nsw i32 4, %mul68
  %80 = load i32, i32* %ci, align 4, !tbaa !18
  %idxprom70 = sext i32 %80 to i64
  %81 = load %struct.arith_entropy_decoder*, %struct.arith_entropy_decoder** %entropy, align 8, !tbaa !1
  %dc_context71 = getelementptr inbounds %struct.arith_entropy_decoder, %struct.arith_entropy_decoder* %81, i32 0, i32 5
  %arrayidx72 = getelementptr inbounds [4 x i32], [4 x i32]* %dc_context71, i32 0, i64 %idxprom70
  store i32 %add69, i32* %arrayidx72, align 4, !tbaa !18
  br label %if.end.73

if.end.73:                                        ; preds = %if.else.67, %if.then.63
  br label %if.end.74

if.end.74:                                        ; preds = %if.end.73, %if.then.49
  %82 = load i32, i32* %m, align 4, !tbaa !18
  store i32 %82, i32* %v, align 4, !tbaa !18
  %83 = load i8*, i8** %st, align 8, !tbaa !1
  %add.ptr75 = getelementptr inbounds i8, i8* %83, i64 14
  store i8* %add.ptr75, i8** %st, align 8, !tbaa !1
  br label %while.cond.76

while.cond.76:                                    ; preds = %if.end.83, %if.end.74
  %84 = load i32, i32* %m, align 4, !tbaa !18
  %shr77 = ashr i32 %84, 1
  store i32 %shr77, i32* %m, align 4, !tbaa !18
  %tobool78 = icmp ne i32 %shr77, 0
  br i1 %tobool78, label %while.body.79, label %while.end.84

while.body.79:                                    ; preds = %while.cond.76
  %85 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8, !tbaa !1
  %86 = load i8*, i8** %st, align 8, !tbaa !1
  %call80 = call i32 @arith_decode(%struct.jpeg_decompress_struct* %85, i8* %86) #3
  %tobool81 = icmp ne i32 %call80, 0
  br i1 %tobool81, label %if.then.82, label %if.end.83

if.then.82:                                       ; preds = %while.body.79
  %87 = load i32, i32* %m, align 4, !tbaa !18
  %88 = load i32, i32* %v, align 4, !tbaa !18
  %or = or i32 %88, %87
  store i32 %or, i32* %v, align 4, !tbaa !18
  br label %if.end.83

if.end.83:                                        ; preds = %if.then.82, %while.body.79
  br label %while.cond.76

while.end.84:                                     ; preds = %while.cond.76
  %89 = load i32, i32* %v, align 4, !tbaa !18
  %add85 = add nsw i32 %89, 1
  store i32 %add85, i32* %v, align 4, !tbaa !18
  %90 = load i32, i32* %sign, align 4, !tbaa !18
  %tobool86 = icmp ne i32 %90, 0
  br i1 %tobool86, label %if.then.87, label %if.end.88

if.then.87:                                       ; preds = %while.end.84
  %91 = load i32, i32* %v, align 4, !tbaa !18
  %sub = sub nsw i32 0, %91
  store i32 %sub, i32* %v, align 4, !tbaa !18
  br label %if.end.88

if.end.88:                                        ; preds = %if.then.87, %while.end.84
  %92 = load i32, i32* %v, align 4, !tbaa !18
  %93 = load i32, i32* %ci, align 4, !tbaa !18
  %idxprom89 = sext i32 %93 to i64
  %94 = load %struct.arith_entropy_decoder*, %struct.arith_entropy_decoder** %entropy, align 8, !tbaa !1
  %last_dc_val = getelementptr inbounds %struct.arith_entropy_decoder, %struct.arith_entropy_decoder* %94, i32 0, i32 4
  %arrayidx90 = getelementptr inbounds [4 x i32], [4 x i32]* %last_dc_val, i32 0, i64 %idxprom89
  %95 = load i32, i32* %arrayidx90, align 4, !tbaa !18
  %add91 = add nsw i32 %95, %92
  store i32 %add91, i32* %arrayidx90, align 4, !tbaa !18
  br label %if.end.92

if.end.92:                                        ; preds = %if.end.88, %if.then.18
  %96 = load i32, i32* %ci, align 4, !tbaa !18
  %idxprom93 = sext i32 %96 to i64
  %97 = load %struct.arith_entropy_decoder*, %struct.arith_entropy_decoder** %entropy, align 8, !tbaa !1
  %last_dc_val94 = getelementptr inbounds %struct.arith_entropy_decoder, %struct.arith_entropy_decoder* %97, i32 0, i32 4
  %arrayidx95 = getelementptr inbounds [4 x i32], [4 x i32]* %last_dc_val94, i32 0, i64 %idxprom93
  %98 = load i32, i32* %arrayidx95, align 4, !tbaa !18
  %99 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8, !tbaa !1
  %Al = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %99, i32 0, i32 78
  %100 = load i32, i32* %Al, align 4, !tbaa !28
  %shl96 = shl i32 %98, %100
  %conv97 = trunc i32 %shl96 to i16
  %101 = load [64 x i16]*, [64 x i16]** %block, align 8, !tbaa !1
  %arrayidx98 = getelementptr inbounds [64 x i16], [64 x i16]* %101, i32 0, i64 0
  store i16 %conv97, i16* %arrayidx98, align 2, !tbaa !45
  br label %for.inc

for.inc:                                          ; preds = %if.end.92
  %102 = load i32, i32* %blkn, align 4, !tbaa !18
  %inc = add nsw i32 %102, 1
  store i32 %inc, i32* %blkn, align 4, !tbaa !18
  br label %for.cond

for.end:                                          ; preds = %for.cond
  store i32 1, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %for.end, %if.then.37, %if.then.6
  %103 = bitcast i32* %m to i8*
  call void @llvm.lifetime.end(i64 4, i8* %103) #1
  %104 = bitcast i32* %v to i8*
  call void @llvm.lifetime.end(i64 4, i8* %104) #1
  %105 = bitcast i32* %sign to i8*
  call void @llvm.lifetime.end(i64 4, i8* %105) #1
  %106 = bitcast i32* %tbl to i8*
  call void @llvm.lifetime.end(i64 4, i8* %106) #1
  %107 = bitcast i32* %ci to i8*
  call void @llvm.lifetime.end(i64 4, i8* %107) #1
  %108 = bitcast i32* %blkn to i8*
  call void @llvm.lifetime.end(i64 4, i8* %108) #1
  %109 = bitcast i8** %st to i8*
  call void @llvm.lifetime.end(i64 8, i8* %109) #1
  %110 = bitcast [64 x i16]** %block to i8*
  call void @llvm.lifetime.end(i64 8, i8* %110) #1
  %111 = bitcast %struct.arith_entropy_decoder** %entropy to i8*
  call void @llvm.lifetime.end(i64 8, i8* %111) #1
  %112 = load i32, i32* %retval
  ret i32 %112
}

; Function Attrs: nounwind uwtable
define internal i32 @decode_mcu_AC_first(%struct.jpeg_decompress_struct* %cinfo, [64 x i16]** %MCU_data) #0 {
entry:
  %retval = alloca i32, align 4
  %cinfo.addr = alloca %struct.jpeg_decompress_struct*, align 8
  %MCU_data.addr = alloca [64 x i16]**, align 8
  %entropy = alloca %struct.arith_entropy_decoder*, align 8
  %block = alloca [64 x i16]*, align 8
  %st = alloca i8*, align 8
  %tbl = alloca i32, align 4
  %sign = alloca i32, align 4
  %k = alloca i32, align 4
  %v = alloca i32, align 4
  %m = alloca i32, align 4
  %natural_order = alloca i32*, align 8
  %cleanup.dest.slot = alloca i32
  store %struct.jpeg_decompress_struct* %cinfo, %struct.jpeg_decompress_struct** %cinfo.addr, align 8, !tbaa !1
  store [64 x i16]** %MCU_data, [64 x i16]*** %MCU_data.addr, align 8, !tbaa !1
  %0 = bitcast %struct.arith_entropy_decoder** %entropy to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #1
  %1 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8, !tbaa !1
  %entropy1 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %1, i32 0, i32 89
  %2 = load %struct.jpeg_entropy_decoder*, %struct.jpeg_entropy_decoder** %entropy1, align 8, !tbaa !13
  %3 = bitcast %struct.jpeg_entropy_decoder* %2 to %struct.arith_entropy_decoder*
  store %struct.arith_entropy_decoder* %3, %struct.arith_entropy_decoder** %entropy, align 8, !tbaa !1
  %4 = bitcast [64 x i16]** %block to i8*
  call void @llvm.lifetime.start(i64 8, i8* %4) #1
  %5 = bitcast i8** %st to i8*
  call void @llvm.lifetime.start(i64 8, i8* %5) #1
  %6 = bitcast i32* %tbl to i8*
  call void @llvm.lifetime.start(i64 4, i8* %6) #1
  %7 = bitcast i32* %sign to i8*
  call void @llvm.lifetime.start(i64 4, i8* %7) #1
  %8 = bitcast i32* %k to i8*
  call void @llvm.lifetime.start(i64 4, i8* %8) #1
  %9 = bitcast i32* %v to i8*
  call void @llvm.lifetime.start(i64 4, i8* %9) #1
  %10 = bitcast i32* %m to i8*
  call void @llvm.lifetime.start(i64 4, i8* %10) #1
  %11 = bitcast i32** %natural_order to i8*
  call void @llvm.lifetime.start(i64 8, i8* %11) #1
  %12 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8, !tbaa !1
  %restart_interval = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %12, i32 0, i32 51
  %13 = load i32, i32* %restart_interval, align 4, !tbaa !42
  %tobool = icmp ne i32 %13, 0
  br i1 %tobool, label %if.then, label %if.end.4

if.then:                                          ; preds = %entry
  %14 = load %struct.arith_entropy_decoder*, %struct.arith_entropy_decoder** %entropy, align 8, !tbaa !1
  %restarts_to_go = getelementptr inbounds %struct.arith_entropy_decoder, %struct.arith_entropy_decoder* %14, i32 0, i32 6
  %15 = load i32, i32* %restarts_to_go, align 4, !tbaa !43
  %cmp = icmp eq i32 %15, 0
  br i1 %cmp, label %if.then.2, label %if.end

if.then.2:                                        ; preds = %if.then
  %16 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8, !tbaa !1
  call void @process_restart(%struct.jpeg_decompress_struct* %16) #3
  br label %if.end

if.end:                                           ; preds = %if.then.2, %if.then
  %17 = load %struct.arith_entropy_decoder*, %struct.arith_entropy_decoder** %entropy, align 8, !tbaa !1
  %restarts_to_go3 = getelementptr inbounds %struct.arith_entropy_decoder, %struct.arith_entropy_decoder* %17, i32 0, i32 6
  %18 = load i32, i32* %restarts_to_go3, align 4, !tbaa !43
  %dec = add i32 %18, -1
  store i32 %dec, i32* %restarts_to_go3, align 4, !tbaa !43
  br label %if.end.4

if.end.4:                                         ; preds = %if.end, %entry
  %19 = load %struct.arith_entropy_decoder*, %struct.arith_entropy_decoder** %entropy, align 8, !tbaa !1
  %ct = getelementptr inbounds %struct.arith_entropy_decoder, %struct.arith_entropy_decoder* %19, i32 0, i32 3
  %20 = load i32, i32* %ct, align 4, !tbaa !41
  %cmp5 = icmp eq i32 %20, -1
  br i1 %cmp5, label %if.then.6, label %if.end.7

if.then.6:                                        ; preds = %if.end.4
  store i32 1, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.7:                                         ; preds = %if.end.4
  %21 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8, !tbaa !1
  %natural_order8 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %21, i32 0, i32 80
  %22 = load i32*, i32** %natural_order8, align 8, !tbaa !46
  store i32* %22, i32** %natural_order, align 8, !tbaa !1
  %23 = load [64 x i16]**, [64 x i16]*** %MCU_data.addr, align 8, !tbaa !1
  %arrayidx = getelementptr inbounds [64 x i16]*, [64 x i16]** %23, i64 0
  %24 = load [64 x i16]*, [64 x i16]** %arrayidx, align 8, !tbaa !1
  store [64 x i16]* %24, [64 x i16]** %block, align 8, !tbaa !1
  %25 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8, !tbaa !1
  %cur_comp_info = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %25, i32 0, i32 70
  %arrayidx9 = getelementptr inbounds [4 x %struct.jpeg_component_info*], [4 x %struct.jpeg_component_info*]* %cur_comp_info, i32 0, i64 0
  %26 = load %struct.jpeg_component_info*, %struct.jpeg_component_info** %arrayidx9, align 8, !tbaa !1
  %ac_tbl_no = getelementptr inbounds %struct.jpeg_component_info, %struct.jpeg_component_info* %26, i32 0, i32 6
  %27 = load i32, i32* %ac_tbl_no, align 4, !tbaa !38
  store i32 %27, i32* %tbl, align 4, !tbaa !18
  %28 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8, !tbaa !1
  %Ss = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %28, i32 0, i32 75
  %29 = load i32, i32* %Ss, align 4, !tbaa !23
  %sub = sub nsw i32 %29, 1
  store i32 %sub, i32* %k, align 4, !tbaa !18
  br label %do.body

do.body:                                          ; preds = %do.cond, %if.end.7
  %30 = load i32, i32* %tbl, align 4, !tbaa !18
  %idxprom = sext i32 %30 to i64
  %31 = load %struct.arith_entropy_decoder*, %struct.arith_entropy_decoder** %entropy, align 8, !tbaa !1
  %ac_stats = getelementptr inbounds %struct.arith_entropy_decoder, %struct.arith_entropy_decoder* %31, i32 0, i32 8
  %arrayidx10 = getelementptr inbounds [16 x i8*], [16 x i8*]* %ac_stats, i32 0, i64 %idxprom
  %32 = load i8*, i8** %arrayidx10, align 8, !tbaa !1
  %33 = load i32, i32* %k, align 4, !tbaa !18
  %mul = mul nsw i32 3, %33
  %idx.ext = sext i32 %mul to i64
  %add.ptr = getelementptr inbounds i8, i8* %32, i64 %idx.ext
  store i8* %add.ptr, i8** %st, align 8, !tbaa !1
  %34 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8, !tbaa !1
  %35 = load i8*, i8** %st, align 8, !tbaa !1
  %call = call i32 @arith_decode(%struct.jpeg_decompress_struct* %34, i8* %35) #3
  %tobool11 = icmp ne i32 %call, 0
  br i1 %tobool11, label %if.then.12, label %if.end.13

if.then.12:                                       ; preds = %do.body
  br label %do.end

if.end.13:                                        ; preds = %do.body
  br label %for.cond

for.cond:                                         ; preds = %if.end.24, %if.end.13
  %36 = load i32, i32* %k, align 4, !tbaa !18
  %inc = add nsw i32 %36, 1
  store i32 %inc, i32* %k, align 4, !tbaa !18
  %37 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8, !tbaa !1
  %38 = load i8*, i8** %st, align 8, !tbaa !1
  %add.ptr14 = getelementptr inbounds i8, i8* %38, i64 1
  %call15 = call i32 @arith_decode(%struct.jpeg_decompress_struct* %37, i8* %add.ptr14) #3
  %tobool16 = icmp ne i32 %call15, 0
  br i1 %tobool16, label %if.then.17, label %if.end.18

if.then.17:                                       ; preds = %for.cond
  br label %for.end

if.end.18:                                        ; preds = %for.cond
  %39 = load i8*, i8** %st, align 8, !tbaa !1
  %add.ptr19 = getelementptr inbounds i8, i8* %39, i64 3
  store i8* %add.ptr19, i8** %st, align 8, !tbaa !1
  %40 = load i32, i32* %k, align 4, !tbaa !18
  %41 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8, !tbaa !1
  %Se = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %41, i32 0, i32 76
  %42 = load i32, i32* %Se, align 4, !tbaa !24
  %cmp20 = icmp sge i32 %40, %42
  br i1 %cmp20, label %if.then.21, label %if.end.24

if.then.21:                                       ; preds = %if.end.18
  %43 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8, !tbaa !1
  %err = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %43, i32 0, i32 0
  %44 = load %struct.jpeg_error_mgr*, %struct.jpeg_error_mgr** %err, align 8, !tbaa !29
  %msg_code = getelementptr inbounds %struct.jpeg_error_mgr, %struct.jpeg_error_mgr* %44, i32 0, i32 5
  store i32 117, i32* %msg_code, align 4, !tbaa !30
  %45 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8, !tbaa !1
  %err22 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %45, i32 0, i32 0
  %46 = load %struct.jpeg_error_mgr*, %struct.jpeg_error_mgr** %err22, align 8, !tbaa !29
  %emit_message = getelementptr inbounds %struct.jpeg_error_mgr, %struct.jpeg_error_mgr* %46, i32 0, i32 1
  %47 = load void (%struct.jpeg_common_struct*, i32)*, void (%struct.jpeg_common_struct*, i32)** %emit_message, align 8, !tbaa !35
  %48 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8, !tbaa !1
  %49 = bitcast %struct.jpeg_decompress_struct* %48 to %struct.jpeg_common_struct*
  call void %47(%struct.jpeg_common_struct* %49, i32 -1) #3
  %50 = load %struct.arith_entropy_decoder*, %struct.arith_entropy_decoder** %entropy, align 8, !tbaa !1
  %ct23 = getelementptr inbounds %struct.arith_entropy_decoder, %struct.arith_entropy_decoder* %50, i32 0, i32 3
  store i32 -1, i32* %ct23, align 4, !tbaa !41
  store i32 1, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.24:                                        ; preds = %if.end.18
  br label %for.cond

for.end:                                          ; preds = %if.then.17
  %51 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8, !tbaa !1
  %52 = load %struct.arith_entropy_decoder*, %struct.arith_entropy_decoder** %entropy, align 8, !tbaa !1
  %fixed_bin = getelementptr inbounds %struct.arith_entropy_decoder, %struct.arith_entropy_decoder* %52, i32 0, i32 9
  %arraydecay = getelementptr inbounds [4 x i8], [4 x i8]* %fixed_bin, i32 0, i32 0
  %call25 = call i32 @arith_decode(%struct.jpeg_decompress_struct* %51, i8* %arraydecay) #3
  store i32 %call25, i32* %sign, align 4, !tbaa !18
  %53 = load i8*, i8** %st, align 8, !tbaa !1
  %add.ptr26 = getelementptr inbounds i8, i8* %53, i64 2
  store i8* %add.ptr26, i8** %st, align 8, !tbaa !1
  %54 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8, !tbaa !1
  %55 = load i8*, i8** %st, align 8, !tbaa !1
  %call27 = call i32 @arith_decode(%struct.jpeg_decompress_struct* %54, i8* %55) #3
  store i32 %call27, i32* %m, align 4, !tbaa !18
  %cmp28 = icmp ne i32 %call27, 0
  br i1 %cmp28, label %if.then.29, label %if.end.56

if.then.29:                                       ; preds = %for.end
  %56 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8, !tbaa !1
  %57 = load i8*, i8** %st, align 8, !tbaa !1
  %call30 = call i32 @arith_decode(%struct.jpeg_decompress_struct* %56, i8* %57) #3
  %tobool31 = icmp ne i32 %call30, 0
  br i1 %tobool31, label %if.then.32, label %if.end.55

if.then.32:                                       ; preds = %if.then.29
  %58 = load i32, i32* %m, align 4, !tbaa !18
  %shl = shl i32 %58, 1
  store i32 %shl, i32* %m, align 4, !tbaa !18
  %59 = load i32, i32* %tbl, align 4, !tbaa !18
  %idxprom33 = sext i32 %59 to i64
  %60 = load %struct.arith_entropy_decoder*, %struct.arith_entropy_decoder** %entropy, align 8, !tbaa !1
  %ac_stats34 = getelementptr inbounds %struct.arith_entropy_decoder, %struct.arith_entropy_decoder* %60, i32 0, i32 8
  %arrayidx35 = getelementptr inbounds [16 x i8*], [16 x i8*]* %ac_stats34, i32 0, i64 %idxprom33
  %61 = load i8*, i8** %arrayidx35, align 8, !tbaa !1
  %62 = load i32, i32* %k, align 4, !tbaa !18
  %63 = load i32, i32* %tbl, align 4, !tbaa !18
  %idxprom36 = sext i32 %63 to i64
  %64 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8, !tbaa !1
  %arith_ac_K = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %64, i32 0, i32 50
  %arrayidx37 = getelementptr inbounds [16 x i8], [16 x i8]* %arith_ac_K, i32 0, i64 %idxprom36
  %65 = load i8, i8* %arrayidx37, align 1, !tbaa !19
  %conv = zext i8 %65 to i32
  %cmp38 = icmp sle i32 %62, %conv
  %cond = select i1 %cmp38, i32 189, i32 217
  %idx.ext40 = sext i32 %cond to i64
  %add.ptr41 = getelementptr inbounds i8, i8* %61, i64 %idx.ext40
  store i8* %add.ptr41, i8** %st, align 8, !tbaa !1
  br label %while.cond

while.cond:                                       ; preds = %if.end.53, %if.then.32
  %66 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8, !tbaa !1
  %67 = load i8*, i8** %st, align 8, !tbaa !1
  %call42 = call i32 @arith_decode(%struct.jpeg_decompress_struct* %66, i8* %67) #3
  %tobool43 = icmp ne i32 %call42, 0
  br i1 %tobool43, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %68 = load i32, i32* %m, align 4, !tbaa !18
  %shl44 = shl i32 %68, 1
  store i32 %shl44, i32* %m, align 4, !tbaa !18
  %cmp45 = icmp eq i32 %shl44, 32768
  br i1 %cmp45, label %if.then.47, label %if.end.53

if.then.47:                                       ; preds = %while.body
  %69 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8, !tbaa !1
  %err48 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %69, i32 0, i32 0
  %70 = load %struct.jpeg_error_mgr*, %struct.jpeg_error_mgr** %err48, align 8, !tbaa !29
  %msg_code49 = getelementptr inbounds %struct.jpeg_error_mgr, %struct.jpeg_error_mgr* %70, i32 0, i32 5
  store i32 117, i32* %msg_code49, align 4, !tbaa !30
  %71 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8, !tbaa !1
  %err50 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %71, i32 0, i32 0
  %72 = load %struct.jpeg_error_mgr*, %struct.jpeg_error_mgr** %err50, align 8, !tbaa !29
  %emit_message51 = getelementptr inbounds %struct.jpeg_error_mgr, %struct.jpeg_error_mgr* %72, i32 0, i32 1
  %73 = load void (%struct.jpeg_common_struct*, i32)*, void (%struct.jpeg_common_struct*, i32)** %emit_message51, align 8, !tbaa !35
  %74 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8, !tbaa !1
  %75 = bitcast %struct.jpeg_decompress_struct* %74 to %struct.jpeg_common_struct*
  call void %73(%struct.jpeg_common_struct* %75, i32 -1) #3
  %76 = load %struct.arith_entropy_decoder*, %struct.arith_entropy_decoder** %entropy, align 8, !tbaa !1
  %ct52 = getelementptr inbounds %struct.arith_entropy_decoder, %struct.arith_entropy_decoder* %76, i32 0, i32 3
  store i32 -1, i32* %ct52, align 4, !tbaa !41
  store i32 1, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.53:                                        ; preds = %while.body
  %77 = load i8*, i8** %st, align 8, !tbaa !1
  %add.ptr54 = getelementptr inbounds i8, i8* %77, i64 1
  store i8* %add.ptr54, i8** %st, align 8, !tbaa !1
  br label %while.cond

while.end:                                        ; preds = %while.cond
  br label %if.end.55

if.end.55:                                        ; preds = %while.end, %if.then.29
  br label %if.end.56

if.end.56:                                        ; preds = %if.end.55, %for.end
  %78 = load i32, i32* %m, align 4, !tbaa !18
  store i32 %78, i32* %v, align 4, !tbaa !18
  %79 = load i8*, i8** %st, align 8, !tbaa !1
  %add.ptr57 = getelementptr inbounds i8, i8* %79, i64 14
  store i8* %add.ptr57, i8** %st, align 8, !tbaa !1
  br label %while.cond.58

while.cond.58:                                    ; preds = %if.end.64, %if.end.56
  %80 = load i32, i32* %m, align 4, !tbaa !18
  %shr = ashr i32 %80, 1
  store i32 %shr, i32* %m, align 4, !tbaa !18
  %tobool59 = icmp ne i32 %shr, 0
  br i1 %tobool59, label %while.body.60, label %while.end.65

while.body.60:                                    ; preds = %while.cond.58
  %81 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8, !tbaa !1
  %82 = load i8*, i8** %st, align 8, !tbaa !1
  %call61 = call i32 @arith_decode(%struct.jpeg_decompress_struct* %81, i8* %82) #3
  %tobool62 = icmp ne i32 %call61, 0
  br i1 %tobool62, label %if.then.63, label %if.end.64

if.then.63:                                       ; preds = %while.body.60
  %83 = load i32, i32* %m, align 4, !tbaa !18
  %84 = load i32, i32* %v, align 4, !tbaa !18
  %or = or i32 %84, %83
  store i32 %or, i32* %v, align 4, !tbaa !18
  br label %if.end.64

if.end.64:                                        ; preds = %if.then.63, %while.body.60
  br label %while.cond.58

while.end.65:                                     ; preds = %while.cond.58
  %85 = load i32, i32* %v, align 4, !tbaa !18
  %add = add nsw i32 %85, 1
  store i32 %add, i32* %v, align 4, !tbaa !18
  %86 = load i32, i32* %sign, align 4, !tbaa !18
  %tobool66 = icmp ne i32 %86, 0
  br i1 %tobool66, label %if.then.67, label %if.end.69

if.then.67:                                       ; preds = %while.end.65
  %87 = load i32, i32* %v, align 4, !tbaa !18
  %sub68 = sub nsw i32 0, %87
  store i32 %sub68, i32* %v, align 4, !tbaa !18
  br label %if.end.69

if.end.69:                                        ; preds = %if.then.67, %while.end.65
  %88 = load i32, i32* %v, align 4, !tbaa !18
  %89 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8, !tbaa !1
  %Al = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %89, i32 0, i32 78
  %90 = load i32, i32* %Al, align 4, !tbaa !28
  %shl70 = shl i32 %88, %90
  %conv71 = trunc i32 %shl70 to i16
  %91 = load i32, i32* %k, align 4, !tbaa !18
  %idxprom72 = sext i32 %91 to i64
  %92 = load i32*, i32** %natural_order, align 8, !tbaa !1
  %arrayidx73 = getelementptr inbounds i32, i32* %92, i64 %idxprom72
  %93 = load i32, i32* %arrayidx73, align 4, !tbaa !18
  %idxprom74 = sext i32 %93 to i64
  %94 = load [64 x i16]*, [64 x i16]** %block, align 8, !tbaa !1
  %arrayidx75 = getelementptr inbounds [64 x i16], [64 x i16]* %94, i32 0, i64 %idxprom74
  store i16 %conv71, i16* %arrayidx75, align 2, !tbaa !45
  br label %do.cond

do.cond:                                          ; preds = %if.end.69
  %95 = load i32, i32* %k, align 4, !tbaa !18
  %96 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8, !tbaa !1
  %Se76 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %96, i32 0, i32 76
  %97 = load i32, i32* %Se76, align 4, !tbaa !24
  %cmp77 = icmp slt i32 %95, %97
  br i1 %cmp77, label %do.body, label %do.end

do.end:                                           ; preds = %do.cond, %if.then.12
  store i32 1, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %do.end, %if.then.47, %if.then.21, %if.then.6
  %98 = bitcast i32** %natural_order to i8*
  call void @llvm.lifetime.end(i64 8, i8* %98) #1
  %99 = bitcast i32* %m to i8*
  call void @llvm.lifetime.end(i64 4, i8* %99) #1
  %100 = bitcast i32* %v to i8*
  call void @llvm.lifetime.end(i64 4, i8* %100) #1
  %101 = bitcast i32* %k to i8*
  call void @llvm.lifetime.end(i64 4, i8* %101) #1
  %102 = bitcast i32* %sign to i8*
  call void @llvm.lifetime.end(i64 4, i8* %102) #1
  %103 = bitcast i32* %tbl to i8*
  call void @llvm.lifetime.end(i64 4, i8* %103) #1
  %104 = bitcast i8** %st to i8*
  call void @llvm.lifetime.end(i64 8, i8* %104) #1
  %105 = bitcast [64 x i16]** %block to i8*
  call void @llvm.lifetime.end(i64 8, i8* %105) #1
  %106 = bitcast %struct.arith_entropy_decoder** %entropy to i8*
  call void @llvm.lifetime.end(i64 8, i8* %106) #1
  %107 = load i32, i32* %retval
  ret i32 %107
}

; Function Attrs: nounwind uwtable
define internal i32 @decode_mcu_DC_refine(%struct.jpeg_decompress_struct* %cinfo, [64 x i16]** %MCU_data) #0 {
entry:
  %cinfo.addr = alloca %struct.jpeg_decompress_struct*, align 8
  %MCU_data.addr = alloca [64 x i16]**, align 8
  %entropy = alloca %struct.arith_entropy_decoder*, align 8
  %st = alloca i8*, align 8
  %p1 = alloca i32, align 4
  %blkn = alloca i32, align 4
  store %struct.jpeg_decompress_struct* %cinfo, %struct.jpeg_decompress_struct** %cinfo.addr, align 8, !tbaa !1
  store [64 x i16]** %MCU_data, [64 x i16]*** %MCU_data.addr, align 8, !tbaa !1
  %0 = bitcast %struct.arith_entropy_decoder** %entropy to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #1
  %1 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8, !tbaa !1
  %entropy1 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %1, i32 0, i32 89
  %2 = load %struct.jpeg_entropy_decoder*, %struct.jpeg_entropy_decoder** %entropy1, align 8, !tbaa !13
  %3 = bitcast %struct.jpeg_entropy_decoder* %2 to %struct.arith_entropy_decoder*
  store %struct.arith_entropy_decoder* %3, %struct.arith_entropy_decoder** %entropy, align 8, !tbaa !1
  %4 = bitcast i8** %st to i8*
  call void @llvm.lifetime.start(i64 8, i8* %4) #1
  %5 = bitcast i32* %p1 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %5) #1
  %6 = bitcast i32* %blkn to i8*
  call void @llvm.lifetime.start(i64 4, i8* %6) #1
  %7 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8, !tbaa !1
  %restart_interval = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %7, i32 0, i32 51
  %8 = load i32, i32* %restart_interval, align 4, !tbaa !42
  %tobool = icmp ne i32 %8, 0
  br i1 %tobool, label %if.then, label %if.end.4

if.then:                                          ; preds = %entry
  %9 = load %struct.arith_entropy_decoder*, %struct.arith_entropy_decoder** %entropy, align 8, !tbaa !1
  %restarts_to_go = getelementptr inbounds %struct.arith_entropy_decoder, %struct.arith_entropy_decoder* %9, i32 0, i32 6
  %10 = load i32, i32* %restarts_to_go, align 4, !tbaa !43
  %cmp = icmp eq i32 %10, 0
  br i1 %cmp, label %if.then.2, label %if.end

if.then.2:                                        ; preds = %if.then
  %11 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8, !tbaa !1
  call void @process_restart(%struct.jpeg_decompress_struct* %11) #3
  br label %if.end

if.end:                                           ; preds = %if.then.2, %if.then
  %12 = load %struct.arith_entropy_decoder*, %struct.arith_entropy_decoder** %entropy, align 8, !tbaa !1
  %restarts_to_go3 = getelementptr inbounds %struct.arith_entropy_decoder, %struct.arith_entropy_decoder* %12, i32 0, i32 6
  %13 = load i32, i32* %restarts_to_go3, align 4, !tbaa !43
  %dec = add i32 %13, -1
  store i32 %dec, i32* %restarts_to_go3, align 4, !tbaa !43
  br label %if.end.4

if.end.4:                                         ; preds = %if.end, %entry
  %14 = load %struct.arith_entropy_decoder*, %struct.arith_entropy_decoder** %entropy, align 8, !tbaa !1
  %fixed_bin = getelementptr inbounds %struct.arith_entropy_decoder, %struct.arith_entropy_decoder* %14, i32 0, i32 9
  %arraydecay = getelementptr inbounds [4 x i8], [4 x i8]* %fixed_bin, i32 0, i32 0
  store i8* %arraydecay, i8** %st, align 8, !tbaa !1
  %15 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8, !tbaa !1
  %Al = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %15, i32 0, i32 78
  %16 = load i32, i32* %Al, align 4, !tbaa !28
  %shl = shl i32 1, %16
  store i32 %shl, i32* %p1, align 4, !tbaa !18
  store i32 0, i32* %blkn, align 4, !tbaa !18
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end.4
  %17 = load i32, i32* %blkn, align 4, !tbaa !18
  %18 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8, !tbaa !1
  %blocks_in_MCU = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %18, i32 0, i32 73
  %19 = load i32, i32* %blocks_in_MCU, align 4, !tbaa !44
  %cmp5 = icmp slt i32 %17, %19
  br i1 %cmp5, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %20 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8, !tbaa !1
  %21 = load i8*, i8** %st, align 8, !tbaa !1
  %call = call i32 @arith_decode(%struct.jpeg_decompress_struct* %20, i8* %21) #3
  %tobool6 = icmp ne i32 %call, 0
  br i1 %tobool6, label %if.then.7, label %if.end.11

if.then.7:                                        ; preds = %for.body
  %22 = load i32, i32* %p1, align 4, !tbaa !18
  %23 = load i32, i32* %blkn, align 4, !tbaa !18
  %idxprom = sext i32 %23 to i64
  %24 = load [64 x i16]**, [64 x i16]*** %MCU_data.addr, align 8, !tbaa !1
  %arrayidx = getelementptr inbounds [64 x i16]*, [64 x i16]** %24, i64 %idxprom
  %25 = load [64 x i16]*, [64 x i16]** %arrayidx, align 8, !tbaa !1
  %arrayidx8 = getelementptr inbounds [64 x i16], [64 x i16]* %25, i64 0
  %arrayidx9 = getelementptr inbounds [64 x i16], [64 x i16]* %arrayidx8, i32 0, i64 0
  %26 = load i16, i16* %arrayidx9, align 2, !tbaa !45
  %conv = sext i16 %26 to i32
  %or = or i32 %conv, %22
  %conv10 = trunc i32 %or to i16
  store i16 %conv10, i16* %arrayidx9, align 2, !tbaa !45
  br label %if.end.11

if.end.11:                                        ; preds = %if.then.7, %for.body
  br label %for.inc

for.inc:                                          ; preds = %if.end.11
  %27 = load i32, i32* %blkn, align 4, !tbaa !18
  %inc = add nsw i32 %27, 1
  store i32 %inc, i32* %blkn, align 4, !tbaa !18
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %28 = bitcast i32* %blkn to i8*
  call void @llvm.lifetime.end(i64 4, i8* %28) #1
  %29 = bitcast i32* %p1 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %29) #1
  %30 = bitcast i8** %st to i8*
  call void @llvm.lifetime.end(i64 8, i8* %30) #1
  %31 = bitcast %struct.arith_entropy_decoder** %entropy to i8*
  call void @llvm.lifetime.end(i64 8, i8* %31) #1
  ret i32 1
}

; Function Attrs: nounwind uwtable
define internal i32 @decode_mcu_AC_refine(%struct.jpeg_decompress_struct* %cinfo, [64 x i16]** %MCU_data) #0 {
entry:
  %retval = alloca i32, align 4
  %cinfo.addr = alloca %struct.jpeg_decompress_struct*, align 8
  %MCU_data.addr = alloca [64 x i16]**, align 8
  %entropy = alloca %struct.arith_entropy_decoder*, align 8
  %block = alloca [64 x i16]*, align 8
  %thiscoef = alloca i16*, align 8
  %st = alloca i8*, align 8
  %tbl = alloca i32, align 4
  %k = alloca i32, align 4
  %kex = alloca i32, align 4
  %p1 = alloca i32, align 4
  %m1 = alloca i32, align 4
  %natural_order = alloca i32*, align 8
  %cleanup.dest.slot = alloca i32
  store %struct.jpeg_decompress_struct* %cinfo, %struct.jpeg_decompress_struct** %cinfo.addr, align 8, !tbaa !1
  store [64 x i16]** %MCU_data, [64 x i16]*** %MCU_data.addr, align 8, !tbaa !1
  %0 = bitcast %struct.arith_entropy_decoder** %entropy to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #1
  %1 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8, !tbaa !1
  %entropy1 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %1, i32 0, i32 89
  %2 = load %struct.jpeg_entropy_decoder*, %struct.jpeg_entropy_decoder** %entropy1, align 8, !tbaa !13
  %3 = bitcast %struct.jpeg_entropy_decoder* %2 to %struct.arith_entropy_decoder*
  store %struct.arith_entropy_decoder* %3, %struct.arith_entropy_decoder** %entropy, align 8, !tbaa !1
  %4 = bitcast [64 x i16]** %block to i8*
  call void @llvm.lifetime.start(i64 8, i8* %4) #1
  %5 = bitcast i16** %thiscoef to i8*
  call void @llvm.lifetime.start(i64 8, i8* %5) #1
  %6 = bitcast i8** %st to i8*
  call void @llvm.lifetime.start(i64 8, i8* %6) #1
  %7 = bitcast i32* %tbl to i8*
  call void @llvm.lifetime.start(i64 4, i8* %7) #1
  %8 = bitcast i32* %k to i8*
  call void @llvm.lifetime.start(i64 4, i8* %8) #1
  %9 = bitcast i32* %kex to i8*
  call void @llvm.lifetime.start(i64 4, i8* %9) #1
  %10 = bitcast i32* %p1 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %10) #1
  %11 = bitcast i32* %m1 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %11) #1
  %12 = bitcast i32** %natural_order to i8*
  call void @llvm.lifetime.start(i64 8, i8* %12) #1
  %13 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8, !tbaa !1
  %restart_interval = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %13, i32 0, i32 51
  %14 = load i32, i32* %restart_interval, align 4, !tbaa !42
  %tobool = icmp ne i32 %14, 0
  br i1 %tobool, label %if.then, label %if.end.4

if.then:                                          ; preds = %entry
  %15 = load %struct.arith_entropy_decoder*, %struct.arith_entropy_decoder** %entropy, align 8, !tbaa !1
  %restarts_to_go = getelementptr inbounds %struct.arith_entropy_decoder, %struct.arith_entropy_decoder* %15, i32 0, i32 6
  %16 = load i32, i32* %restarts_to_go, align 4, !tbaa !43
  %cmp = icmp eq i32 %16, 0
  br i1 %cmp, label %if.then.2, label %if.end

if.then.2:                                        ; preds = %if.then
  %17 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8, !tbaa !1
  call void @process_restart(%struct.jpeg_decompress_struct* %17) #3
  br label %if.end

if.end:                                           ; preds = %if.then.2, %if.then
  %18 = load %struct.arith_entropy_decoder*, %struct.arith_entropy_decoder** %entropy, align 8, !tbaa !1
  %restarts_to_go3 = getelementptr inbounds %struct.arith_entropy_decoder, %struct.arith_entropy_decoder* %18, i32 0, i32 6
  %19 = load i32, i32* %restarts_to_go3, align 4, !tbaa !43
  %dec = add i32 %19, -1
  store i32 %dec, i32* %restarts_to_go3, align 4, !tbaa !43
  br label %if.end.4

if.end.4:                                         ; preds = %if.end, %entry
  %20 = load %struct.arith_entropy_decoder*, %struct.arith_entropy_decoder** %entropy, align 8, !tbaa !1
  %ct = getelementptr inbounds %struct.arith_entropy_decoder, %struct.arith_entropy_decoder* %20, i32 0, i32 3
  %21 = load i32, i32* %ct, align 4, !tbaa !41
  %cmp5 = icmp eq i32 %21, -1
  br i1 %cmp5, label %if.then.6, label %if.end.7

if.then.6:                                        ; preds = %if.end.4
  store i32 1, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.7:                                         ; preds = %if.end.4
  %22 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8, !tbaa !1
  %natural_order8 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %22, i32 0, i32 80
  %23 = load i32*, i32** %natural_order8, align 8, !tbaa !46
  store i32* %23, i32** %natural_order, align 8, !tbaa !1
  %24 = load [64 x i16]**, [64 x i16]*** %MCU_data.addr, align 8, !tbaa !1
  %arrayidx = getelementptr inbounds [64 x i16]*, [64 x i16]** %24, i64 0
  %25 = load [64 x i16]*, [64 x i16]** %arrayidx, align 8, !tbaa !1
  store [64 x i16]* %25, [64 x i16]** %block, align 8, !tbaa !1
  %26 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8, !tbaa !1
  %cur_comp_info = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %26, i32 0, i32 70
  %arrayidx9 = getelementptr inbounds [4 x %struct.jpeg_component_info*], [4 x %struct.jpeg_component_info*]* %cur_comp_info, i32 0, i64 0
  %27 = load %struct.jpeg_component_info*, %struct.jpeg_component_info** %arrayidx9, align 8, !tbaa !1
  %ac_tbl_no = getelementptr inbounds %struct.jpeg_component_info, %struct.jpeg_component_info* %27, i32 0, i32 6
  %28 = load i32, i32* %ac_tbl_no, align 4, !tbaa !38
  store i32 %28, i32* %tbl, align 4, !tbaa !18
  %29 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8, !tbaa !1
  %Al = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %29, i32 0, i32 78
  %30 = load i32, i32* %Al, align 4, !tbaa !28
  %shl = shl i32 1, %30
  store i32 %shl, i32* %p1, align 4, !tbaa !18
  %31 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8, !tbaa !1
  %Al10 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %31, i32 0, i32 78
  %32 = load i32, i32* %Al10, align 4, !tbaa !28
  %shl11 = shl i32 -1, %32
  store i32 %shl11, i32* %m1, align 4, !tbaa !18
  %33 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8, !tbaa !1
  %Se = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %33, i32 0, i32 76
  %34 = load i32, i32* %Se, align 4, !tbaa !24
  store i32 %34, i32* %kex, align 4, !tbaa !18
  br label %do.body

do.body:                                          ; preds = %do.cond, %if.end.7
  %35 = load i32, i32* %kex, align 4, !tbaa !18
  %idxprom = sext i32 %35 to i64
  %36 = load i32*, i32** %natural_order, align 8, !tbaa !1
  %arrayidx12 = getelementptr inbounds i32, i32* %36, i64 %idxprom
  %37 = load i32, i32* %arrayidx12, align 4, !tbaa !18
  %idxprom13 = sext i32 %37 to i64
  %38 = load [64 x i16]*, [64 x i16]** %block, align 8, !tbaa !1
  %arrayidx14 = getelementptr inbounds [64 x i16], [64 x i16]* %38, i32 0, i64 %idxprom13
  %39 = load i16, i16* %arrayidx14, align 2, !tbaa !45
  %tobool15 = icmp ne i16 %39, 0
  br i1 %tobool15, label %if.then.16, label %if.end.17

if.then.16:                                       ; preds = %do.body
  br label %do.end

if.end.17:                                        ; preds = %do.body
  br label %do.cond

do.cond:                                          ; preds = %if.end.17
  %40 = load i32, i32* %kex, align 4, !tbaa !18
  %dec18 = add nsw i32 %40, -1
  store i32 %dec18, i32* %kex, align 4, !tbaa !18
  %tobool19 = icmp ne i32 %dec18, 0
  br i1 %tobool19, label %do.body, label %do.end

do.end:                                           ; preds = %do.cond, %if.then.16
  %41 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8, !tbaa !1
  %Ss = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %41, i32 0, i32 75
  %42 = load i32, i32* %Ss, align 4, !tbaa !23
  %sub = sub nsw i32 %42, 1
  store i32 %sub, i32* %k, align 4, !tbaa !18
  br label %do.body.20

do.body.20:                                       ; preds = %do.cond.71, %do.end
  %43 = load i32, i32* %tbl, align 4, !tbaa !18
  %idxprom21 = sext i32 %43 to i64
  %44 = load %struct.arith_entropy_decoder*, %struct.arith_entropy_decoder** %entropy, align 8, !tbaa !1
  %ac_stats = getelementptr inbounds %struct.arith_entropy_decoder, %struct.arith_entropy_decoder* %44, i32 0, i32 8
  %arrayidx22 = getelementptr inbounds [16 x i8*], [16 x i8*]* %ac_stats, i32 0, i64 %idxprom21
  %45 = load i8*, i8** %arrayidx22, align 8, !tbaa !1
  %46 = load i32, i32* %k, align 4, !tbaa !18
  %mul = mul nsw i32 3, %46
  %idx.ext = sext i32 %mul to i64
  %add.ptr = getelementptr inbounds i8, i8* %45, i64 %idx.ext
  store i8* %add.ptr, i8** %st, align 8, !tbaa !1
  %47 = load i32, i32* %k, align 4, !tbaa !18
  %48 = load i32, i32* %kex, align 4, !tbaa !18
  %cmp23 = icmp sge i32 %47, %48
  br i1 %cmp23, label %if.then.24, label %if.end.28

if.then.24:                                       ; preds = %do.body.20
  %49 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8, !tbaa !1
  %50 = load i8*, i8** %st, align 8, !tbaa !1
  %call = call i32 @arith_decode(%struct.jpeg_decompress_struct* %49, i8* %50) #3
  %tobool25 = icmp ne i32 %call, 0
  br i1 %tobool25, label %if.then.26, label %if.end.27

if.then.26:                                       ; preds = %if.then.24
  br label %do.end.75

if.end.27:                                        ; preds = %if.then.24
  br label %if.end.28

if.end.28:                                        ; preds = %if.end.27, %do.body.20
  br label %for.cond

for.cond:                                         ; preds = %if.end.70, %if.end.28
  %51 = load [64 x i16]*, [64 x i16]** %block, align 8, !tbaa !1
  %arraydecay = getelementptr inbounds [64 x i16], [64 x i16]* %51, i32 0, i32 0
  %52 = load i32, i32* %k, align 4, !tbaa !18
  %inc = add nsw i32 %52, 1
  store i32 %inc, i32* %k, align 4, !tbaa !18
  %idxprom29 = sext i32 %inc to i64
  %53 = load i32*, i32** %natural_order, align 8, !tbaa !1
  %arrayidx30 = getelementptr inbounds i32, i32* %53, i64 %idxprom29
  %54 = load i32, i32* %arrayidx30, align 4, !tbaa !18
  %idx.ext31 = sext i32 %54 to i64
  %add.ptr32 = getelementptr inbounds i16, i16* %arraydecay, i64 %idx.ext31
  store i16* %add.ptr32, i16** %thiscoef, align 8, !tbaa !1
  %55 = load i16*, i16** %thiscoef, align 8, !tbaa !1
  %56 = load i16, i16* %55, align 2, !tbaa !45
  %tobool33 = icmp ne i16 %56, 0
  br i1 %tobool33, label %if.then.34, label %if.end.49

if.then.34:                                       ; preds = %for.cond
  %57 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8, !tbaa !1
  %58 = load i8*, i8** %st, align 8, !tbaa !1
  %add.ptr35 = getelementptr inbounds i8, i8* %58, i64 2
  %call36 = call i32 @arith_decode(%struct.jpeg_decompress_struct* %57, i8* %add.ptr35) #3
  %tobool37 = icmp ne i32 %call36, 0
  br i1 %tobool37, label %if.then.38, label %if.end.48

if.then.38:                                       ; preds = %if.then.34
  %59 = load i16*, i16** %thiscoef, align 8, !tbaa !1
  %60 = load i16, i16* %59, align 2, !tbaa !45
  %conv = sext i16 %60 to i32
  %cmp39 = icmp slt i32 %conv, 0
  br i1 %cmp39, label %if.then.41, label %if.else

if.then.41:                                       ; preds = %if.then.38
  %61 = load i32, i32* %m1, align 4, !tbaa !18
  %62 = load i16*, i16** %thiscoef, align 8, !tbaa !1
  %63 = load i16, i16* %62, align 2, !tbaa !45
  %conv42 = sext i16 %63 to i32
  %add = add nsw i32 %conv42, %61
  %conv43 = trunc i32 %add to i16
  store i16 %conv43, i16* %62, align 2, !tbaa !45
  br label %if.end.47

if.else:                                          ; preds = %if.then.38
  %64 = load i32, i32* %p1, align 4, !tbaa !18
  %65 = load i16*, i16** %thiscoef, align 8, !tbaa !1
  %66 = load i16, i16* %65, align 2, !tbaa !45
  %conv44 = sext i16 %66 to i32
  %add45 = add nsw i32 %conv44, %64
  %conv46 = trunc i32 %add45 to i16
  store i16 %conv46, i16* %65, align 2, !tbaa !45
  br label %if.end.47

if.end.47:                                        ; preds = %if.else, %if.then.41
  br label %if.end.48

if.end.48:                                        ; preds = %if.end.47, %if.then.34
  br label %for.end

if.end.49:                                        ; preds = %for.cond
  %67 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8, !tbaa !1
  %68 = load i8*, i8** %st, align 8, !tbaa !1
  %add.ptr50 = getelementptr inbounds i8, i8* %68, i64 1
  %call51 = call i32 @arith_decode(%struct.jpeg_decompress_struct* %67, i8* %add.ptr50) #3
  %tobool52 = icmp ne i32 %call51, 0
  br i1 %tobool52, label %if.then.53, label %if.end.62

if.then.53:                                       ; preds = %if.end.49
  %69 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8, !tbaa !1
  %70 = load %struct.arith_entropy_decoder*, %struct.arith_entropy_decoder** %entropy, align 8, !tbaa !1
  %fixed_bin = getelementptr inbounds %struct.arith_entropy_decoder, %struct.arith_entropy_decoder* %70, i32 0, i32 9
  %arraydecay54 = getelementptr inbounds [4 x i8], [4 x i8]* %fixed_bin, i32 0, i32 0
  %call55 = call i32 @arith_decode(%struct.jpeg_decompress_struct* %69, i8* %arraydecay54) #3
  %tobool56 = icmp ne i32 %call55, 0
  br i1 %tobool56, label %if.then.57, label %if.else.59

if.then.57:                                       ; preds = %if.then.53
  %71 = load i32, i32* %m1, align 4, !tbaa !18
  %conv58 = trunc i32 %71 to i16
  %72 = load i16*, i16** %thiscoef, align 8, !tbaa !1
  store i16 %conv58, i16* %72, align 2, !tbaa !45
  br label %if.end.61

if.else.59:                                       ; preds = %if.then.53
  %73 = load i32, i32* %p1, align 4, !tbaa !18
  %conv60 = trunc i32 %73 to i16
  %74 = load i16*, i16** %thiscoef, align 8, !tbaa !1
  store i16 %conv60, i16* %74, align 2, !tbaa !45
  br label %if.end.61

if.end.61:                                        ; preds = %if.else.59, %if.then.57
  br label %for.end

if.end.62:                                        ; preds = %if.end.49
  %75 = load i8*, i8** %st, align 8, !tbaa !1
  %add.ptr63 = getelementptr inbounds i8, i8* %75, i64 3
  store i8* %add.ptr63, i8** %st, align 8, !tbaa !1
  %76 = load i32, i32* %k, align 4, !tbaa !18
  %77 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8, !tbaa !1
  %Se64 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %77, i32 0, i32 76
  %78 = load i32, i32* %Se64, align 4, !tbaa !24
  %cmp65 = icmp sge i32 %76, %78
  br i1 %cmp65, label %if.then.67, label %if.end.70

if.then.67:                                       ; preds = %if.end.62
  %79 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8, !tbaa !1
  %err = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %79, i32 0, i32 0
  %80 = load %struct.jpeg_error_mgr*, %struct.jpeg_error_mgr** %err, align 8, !tbaa !29
  %msg_code = getelementptr inbounds %struct.jpeg_error_mgr, %struct.jpeg_error_mgr* %80, i32 0, i32 5
  store i32 117, i32* %msg_code, align 4, !tbaa !30
  %81 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8, !tbaa !1
  %err68 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %81, i32 0, i32 0
  %82 = load %struct.jpeg_error_mgr*, %struct.jpeg_error_mgr** %err68, align 8, !tbaa !29
  %emit_message = getelementptr inbounds %struct.jpeg_error_mgr, %struct.jpeg_error_mgr* %82, i32 0, i32 1
  %83 = load void (%struct.jpeg_common_struct*, i32)*, void (%struct.jpeg_common_struct*, i32)** %emit_message, align 8, !tbaa !35
  %84 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8, !tbaa !1
  %85 = bitcast %struct.jpeg_decompress_struct* %84 to %struct.jpeg_common_struct*
  call void %83(%struct.jpeg_common_struct* %85, i32 -1) #3
  %86 = load %struct.arith_entropy_decoder*, %struct.arith_entropy_decoder** %entropy, align 8, !tbaa !1
  %ct69 = getelementptr inbounds %struct.arith_entropy_decoder, %struct.arith_entropy_decoder* %86, i32 0, i32 3
  store i32 -1, i32* %ct69, align 4, !tbaa !41
  store i32 1, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.70:                                        ; preds = %if.end.62
  br label %for.cond

for.end:                                          ; preds = %if.end.61, %if.end.48
  br label %do.cond.71

do.cond.71:                                       ; preds = %for.end
  %87 = load i32, i32* %k, align 4, !tbaa !18
  %88 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8, !tbaa !1
  %Se72 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %88, i32 0, i32 76
  %89 = load i32, i32* %Se72, align 4, !tbaa !24
  %cmp73 = icmp slt i32 %87, %89
  br i1 %cmp73, label %do.body.20, label %do.end.75

do.end.75:                                        ; preds = %do.cond.71, %if.then.26
  store i32 1, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %do.end.75, %if.then.67, %if.then.6
  %90 = bitcast i32** %natural_order to i8*
  call void @llvm.lifetime.end(i64 8, i8* %90) #1
  %91 = bitcast i32* %m1 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %91) #1
  %92 = bitcast i32* %p1 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %92) #1
  %93 = bitcast i32* %kex to i8*
  call void @llvm.lifetime.end(i64 4, i8* %93) #1
  %94 = bitcast i32* %k to i8*
  call void @llvm.lifetime.end(i64 4, i8* %94) #1
  %95 = bitcast i32* %tbl to i8*
  call void @llvm.lifetime.end(i64 4, i8* %95) #1
  %96 = bitcast i8** %st to i8*
  call void @llvm.lifetime.end(i64 8, i8* %96) #1
  %97 = bitcast i16** %thiscoef to i8*
  call void @llvm.lifetime.end(i64 8, i8* %97) #1
  %98 = bitcast [64 x i16]** %block to i8*
  call void @llvm.lifetime.end(i64 8, i8* %98) #1
  %99 = bitcast %struct.arith_entropy_decoder** %entropy to i8*
  call void @llvm.lifetime.end(i64 8, i8* %99) #1
  %100 = load i32, i32* %retval
  ret i32 %100
}

; Function Attrs: nounwind uwtable
define internal i32 @decode_mcu(%struct.jpeg_decompress_struct* %cinfo, [64 x i16]** %MCU_data) #0 {
entry:
  %retval = alloca i32, align 4
  %cinfo.addr = alloca %struct.jpeg_decompress_struct*, align 8
  %MCU_data.addr = alloca [64 x i16]**, align 8
  %entropy = alloca %struct.arith_entropy_decoder*, align 8
  %compptr = alloca %struct.jpeg_component_info*, align 8
  %block = alloca [64 x i16]*, align 8
  %st = alloca i8*, align 8
  %blkn = alloca i32, align 4
  %ci = alloca i32, align 4
  %tbl = alloca i32, align 4
  %sign = alloca i32, align 4
  %k = alloca i32, align 4
  %v = alloca i32, align 4
  %m = alloca i32, align 4
  %natural_order = alloca i32*, align 8
  %cleanup.dest.slot = alloca i32
  store %struct.jpeg_decompress_struct* %cinfo, %struct.jpeg_decompress_struct** %cinfo.addr, align 8, !tbaa !1
  store [64 x i16]** %MCU_data, [64 x i16]*** %MCU_data.addr, align 8, !tbaa !1
  %0 = bitcast %struct.arith_entropy_decoder** %entropy to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #1
  %1 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8, !tbaa !1
  %entropy1 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %1, i32 0, i32 89
  %2 = load %struct.jpeg_entropy_decoder*, %struct.jpeg_entropy_decoder** %entropy1, align 8, !tbaa !13
  %3 = bitcast %struct.jpeg_entropy_decoder* %2 to %struct.arith_entropy_decoder*
  store %struct.arith_entropy_decoder* %3, %struct.arith_entropy_decoder** %entropy, align 8, !tbaa !1
  %4 = bitcast %struct.jpeg_component_info** %compptr to i8*
  call void @llvm.lifetime.start(i64 8, i8* %4) #1
  %5 = bitcast [64 x i16]** %block to i8*
  call void @llvm.lifetime.start(i64 8, i8* %5) #1
  %6 = bitcast i8** %st to i8*
  call void @llvm.lifetime.start(i64 8, i8* %6) #1
  %7 = bitcast i32* %blkn to i8*
  call void @llvm.lifetime.start(i64 4, i8* %7) #1
  %8 = bitcast i32* %ci to i8*
  call void @llvm.lifetime.start(i64 4, i8* %8) #1
  %9 = bitcast i32* %tbl to i8*
  call void @llvm.lifetime.start(i64 4, i8* %9) #1
  %10 = bitcast i32* %sign to i8*
  call void @llvm.lifetime.start(i64 4, i8* %10) #1
  %11 = bitcast i32* %k to i8*
  call void @llvm.lifetime.start(i64 4, i8* %11) #1
  %12 = bitcast i32* %v to i8*
  call void @llvm.lifetime.start(i64 4, i8* %12) #1
  %13 = bitcast i32* %m to i8*
  call void @llvm.lifetime.start(i64 4, i8* %13) #1
  %14 = bitcast i32** %natural_order to i8*
  call void @llvm.lifetime.start(i64 8, i8* %14) #1
  %15 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8, !tbaa !1
  %restart_interval = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %15, i32 0, i32 51
  %16 = load i32, i32* %restart_interval, align 4, !tbaa !42
  %tobool = icmp ne i32 %16, 0
  br i1 %tobool, label %if.then, label %if.end.4

if.then:                                          ; preds = %entry
  %17 = load %struct.arith_entropy_decoder*, %struct.arith_entropy_decoder** %entropy, align 8, !tbaa !1
  %restarts_to_go = getelementptr inbounds %struct.arith_entropy_decoder, %struct.arith_entropy_decoder* %17, i32 0, i32 6
  %18 = load i32, i32* %restarts_to_go, align 4, !tbaa !43
  %cmp = icmp eq i32 %18, 0
  br i1 %cmp, label %if.then.2, label %if.end

if.then.2:                                        ; preds = %if.then
  %19 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8, !tbaa !1
  call void @process_restart(%struct.jpeg_decompress_struct* %19) #3
  br label %if.end

if.end:                                           ; preds = %if.then.2, %if.then
  %20 = load %struct.arith_entropy_decoder*, %struct.arith_entropy_decoder** %entropy, align 8, !tbaa !1
  %restarts_to_go3 = getelementptr inbounds %struct.arith_entropy_decoder, %struct.arith_entropy_decoder* %20, i32 0, i32 6
  %21 = load i32, i32* %restarts_to_go3, align 4, !tbaa !43
  %dec = add i32 %21, -1
  store i32 %dec, i32* %restarts_to_go3, align 4, !tbaa !43
  br label %if.end.4

if.end.4:                                         ; preds = %if.end, %entry
  %22 = load %struct.arith_entropy_decoder*, %struct.arith_entropy_decoder** %entropy, align 8, !tbaa !1
  %ct = getelementptr inbounds %struct.arith_entropy_decoder, %struct.arith_entropy_decoder* %22, i32 0, i32 3
  %23 = load i32, i32* %ct, align 4, !tbaa !41
  %cmp5 = icmp eq i32 %23, -1
  br i1 %cmp5, label %if.then.6, label %if.end.7

if.then.6:                                        ; preds = %if.end.4
  store i32 1, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.7:                                         ; preds = %if.end.4
  %24 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8, !tbaa !1
  %natural_order8 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %24, i32 0, i32 80
  %25 = load i32*, i32** %natural_order8, align 8, !tbaa !46
  store i32* %25, i32** %natural_order, align 8, !tbaa !1
  store i32 0, i32* %blkn, align 4, !tbaa !18
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end.7
  %26 = load i32, i32* %blkn, align 4, !tbaa !18
  %27 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8, !tbaa !1
  %blocks_in_MCU = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %27, i32 0, i32 73
  %28 = load i32, i32* %blocks_in_MCU, align 4, !tbaa !44
  %cmp9 = icmp slt i32 %26, %28
  br i1 %cmp9, label %for.body, label %for.end.192

for.body:                                         ; preds = %for.cond
  %29 = load i32, i32* %blkn, align 4, !tbaa !18
  %idxprom = sext i32 %29 to i64
  %30 = load [64 x i16]**, [64 x i16]*** %MCU_data.addr, align 8, !tbaa !1
  %arrayidx = getelementptr inbounds [64 x i16]*, [64 x i16]** %30, i64 %idxprom
  %31 = load [64 x i16]*, [64 x i16]** %arrayidx, align 8, !tbaa !1
  store [64 x i16]* %31, [64 x i16]** %block, align 8, !tbaa !1
  %32 = load i32, i32* %blkn, align 4, !tbaa !18
  %idxprom10 = sext i32 %32 to i64
  %33 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8, !tbaa !1
  %MCU_membership = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %33, i32 0, i32 74
  %arrayidx11 = getelementptr inbounds [64 x i32], [64 x i32]* %MCU_membership, i32 0, i64 %idxprom10
  %34 = load i32, i32* %arrayidx11, align 4, !tbaa !18
  store i32 %34, i32* %ci, align 4, !tbaa !18
  %35 = load i32, i32* %ci, align 4, !tbaa !18
  %idxprom12 = sext i32 %35 to i64
  %36 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8, !tbaa !1
  %cur_comp_info = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %36, i32 0, i32 70
  %arrayidx13 = getelementptr inbounds [4 x %struct.jpeg_component_info*], [4 x %struct.jpeg_component_info*]* %cur_comp_info, i32 0, i64 %idxprom12
  %37 = load %struct.jpeg_component_info*, %struct.jpeg_component_info** %arrayidx13, align 8, !tbaa !1
  store %struct.jpeg_component_info* %37, %struct.jpeg_component_info** %compptr, align 8, !tbaa !1
  %38 = load %struct.jpeg_component_info*, %struct.jpeg_component_info** %compptr, align 8, !tbaa !1
  %dc_tbl_no = getelementptr inbounds %struct.jpeg_component_info, %struct.jpeg_component_info* %38, i32 0, i32 5
  %39 = load i32, i32* %dc_tbl_no, align 4, !tbaa !37
  store i32 %39, i32* %tbl, align 4, !tbaa !18
  %40 = load i32, i32* %tbl, align 4, !tbaa !18
  %idxprom14 = sext i32 %40 to i64
  %41 = load %struct.arith_entropy_decoder*, %struct.arith_entropy_decoder** %entropy, align 8, !tbaa !1
  %dc_stats = getelementptr inbounds %struct.arith_entropy_decoder, %struct.arith_entropy_decoder* %41, i32 0, i32 7
  %arrayidx15 = getelementptr inbounds [16 x i8*], [16 x i8*]* %dc_stats, i32 0, i64 %idxprom14
  %42 = load i8*, i8** %arrayidx15, align 8, !tbaa !1
  %43 = load i32, i32* %ci, align 4, !tbaa !18
  %idxprom16 = sext i32 %43 to i64
  %44 = load %struct.arith_entropy_decoder*, %struct.arith_entropy_decoder** %entropy, align 8, !tbaa !1
  %dc_context = getelementptr inbounds %struct.arith_entropy_decoder, %struct.arith_entropy_decoder* %44, i32 0, i32 5
  %arrayidx17 = getelementptr inbounds [4 x i32], [4 x i32]* %dc_context, i32 0, i64 %idxprom16
  %45 = load i32, i32* %arrayidx17, align 4, !tbaa !18
  %idx.ext = sext i32 %45 to i64
  %add.ptr = getelementptr inbounds i8, i8* %42, i64 %idx.ext
  store i8* %add.ptr, i8** %st, align 8, !tbaa !1
  %46 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8, !tbaa !1
  %47 = load i8*, i8** %st, align 8, !tbaa !1
  %call = call i32 @arith_decode(%struct.jpeg_decompress_struct* %46, i8* %47) #3
  %cmp18 = icmp eq i32 %call, 0
  br i1 %cmp18, label %if.then.19, label %if.else

if.then.19:                                       ; preds = %for.body
  %48 = load i32, i32* %ci, align 4, !tbaa !18
  %idxprom20 = sext i32 %48 to i64
  %49 = load %struct.arith_entropy_decoder*, %struct.arith_entropy_decoder** %entropy, align 8, !tbaa !1
  %dc_context21 = getelementptr inbounds %struct.arith_entropy_decoder, %struct.arith_entropy_decoder* %49, i32 0, i32 5
  %arrayidx22 = getelementptr inbounds [4 x i32], [4 x i32]* %dc_context21, i32 0, i64 %idxprom20
  store i32 0, i32* %arrayidx22, align 4, !tbaa !18
  br label %if.end.93

if.else:                                          ; preds = %for.body
  %50 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8, !tbaa !1
  %51 = load i8*, i8** %st, align 8, !tbaa !1
  %add.ptr23 = getelementptr inbounds i8, i8* %51, i64 1
  %call24 = call i32 @arith_decode(%struct.jpeg_decompress_struct* %50, i8* %add.ptr23) #3
  store i32 %call24, i32* %sign, align 4, !tbaa !18
  %52 = load i8*, i8** %st, align 8, !tbaa !1
  %add.ptr25 = getelementptr inbounds i8, i8* %52, i64 2
  store i8* %add.ptr25, i8** %st, align 8, !tbaa !1
  %53 = load i32, i32* %sign, align 4, !tbaa !18
  %54 = load i8*, i8** %st, align 8, !tbaa !1
  %idx.ext26 = sext i32 %53 to i64
  %add.ptr27 = getelementptr inbounds i8, i8* %54, i64 %idx.ext26
  store i8* %add.ptr27, i8** %st, align 8, !tbaa !1
  %55 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8, !tbaa !1
  %56 = load i8*, i8** %st, align 8, !tbaa !1
  %call28 = call i32 @arith_decode(%struct.jpeg_decompress_struct* %55, i8* %56) #3
  store i32 %call28, i32* %m, align 4, !tbaa !18
  %cmp29 = icmp ne i32 %call28, 0
  br i1 %cmp29, label %if.then.30, label %if.end.43

if.then.30:                                       ; preds = %if.else
  %57 = load i32, i32* %tbl, align 4, !tbaa !18
  %idxprom31 = sext i32 %57 to i64
  %58 = load %struct.arith_entropy_decoder*, %struct.arith_entropy_decoder** %entropy, align 8, !tbaa !1
  %dc_stats32 = getelementptr inbounds %struct.arith_entropy_decoder, %struct.arith_entropy_decoder* %58, i32 0, i32 7
  %arrayidx33 = getelementptr inbounds [16 x i8*], [16 x i8*]* %dc_stats32, i32 0, i64 %idxprom31
  %59 = load i8*, i8** %arrayidx33, align 8, !tbaa !1
  %add.ptr34 = getelementptr inbounds i8, i8* %59, i64 20
  store i8* %add.ptr34, i8** %st, align 8, !tbaa !1
  br label %while.cond

while.cond:                                       ; preds = %if.end.41, %if.then.30
  %60 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8, !tbaa !1
  %61 = load i8*, i8** %st, align 8, !tbaa !1
  %call35 = call i32 @arith_decode(%struct.jpeg_decompress_struct* %60, i8* %61) #3
  %tobool36 = icmp ne i32 %call35, 0
  br i1 %tobool36, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %62 = load i32, i32* %m, align 4, !tbaa !18
  %shl = shl i32 %62, 1
  store i32 %shl, i32* %m, align 4, !tbaa !18
  %cmp37 = icmp eq i32 %shl, 32768
  br i1 %cmp37, label %if.then.38, label %if.end.41

if.then.38:                                       ; preds = %while.body
  %63 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8, !tbaa !1
  %err = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %63, i32 0, i32 0
  %64 = load %struct.jpeg_error_mgr*, %struct.jpeg_error_mgr** %err, align 8, !tbaa !29
  %msg_code = getelementptr inbounds %struct.jpeg_error_mgr, %struct.jpeg_error_mgr* %64, i32 0, i32 5
  store i32 117, i32* %msg_code, align 4, !tbaa !30
  %65 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8, !tbaa !1
  %err39 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %65, i32 0, i32 0
  %66 = load %struct.jpeg_error_mgr*, %struct.jpeg_error_mgr** %err39, align 8, !tbaa !29
  %emit_message = getelementptr inbounds %struct.jpeg_error_mgr, %struct.jpeg_error_mgr* %66, i32 0, i32 1
  %67 = load void (%struct.jpeg_common_struct*, i32)*, void (%struct.jpeg_common_struct*, i32)** %emit_message, align 8, !tbaa !35
  %68 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8, !tbaa !1
  %69 = bitcast %struct.jpeg_decompress_struct* %68 to %struct.jpeg_common_struct*
  call void %67(%struct.jpeg_common_struct* %69, i32 -1) #3
  %70 = load %struct.arith_entropy_decoder*, %struct.arith_entropy_decoder** %entropy, align 8, !tbaa !1
  %ct40 = getelementptr inbounds %struct.arith_entropy_decoder, %struct.arith_entropy_decoder* %70, i32 0, i32 3
  store i32 -1, i32* %ct40, align 4, !tbaa !41
  store i32 1, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.41:                                        ; preds = %while.body
  %71 = load i8*, i8** %st, align 8, !tbaa !1
  %add.ptr42 = getelementptr inbounds i8, i8* %71, i64 1
  store i8* %add.ptr42, i8** %st, align 8, !tbaa !1
  br label %while.cond

while.end:                                        ; preds = %while.cond
  br label %if.end.43

if.end.43:                                        ; preds = %while.end, %if.else
  %72 = load i32, i32* %m, align 4, !tbaa !18
  %73 = load i32, i32* %tbl, align 4, !tbaa !18
  %idxprom44 = sext i32 %73 to i64
  %74 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8, !tbaa !1
  %arith_dc_L = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %74, i32 0, i32 48
  %arrayidx45 = getelementptr inbounds [16 x i8], [16 x i8]* %arith_dc_L, i32 0, i64 %idxprom44
  %75 = load i8, i8* %arrayidx45, align 1, !tbaa !19
  %conv = zext i8 %75 to i32
  %sh_prom = zext i32 %conv to i64
  %shl46 = shl i64 1, %sh_prom
  %shr = ashr i64 %shl46, 1
  %conv47 = trunc i64 %shr to i32
  %cmp48 = icmp slt i32 %72, %conv47
  br i1 %cmp48, label %if.then.50, label %if.else.54

if.then.50:                                       ; preds = %if.end.43
  %76 = load i32, i32* %ci, align 4, !tbaa !18
  %idxprom51 = sext i32 %76 to i64
  %77 = load %struct.arith_entropy_decoder*, %struct.arith_entropy_decoder** %entropy, align 8, !tbaa !1
  %dc_context52 = getelementptr inbounds %struct.arith_entropy_decoder, %struct.arith_entropy_decoder* %77, i32 0, i32 5
  %arrayidx53 = getelementptr inbounds [4 x i32], [4 x i32]* %dc_context52, i32 0, i64 %idxprom51
  store i32 0, i32* %arrayidx53, align 4, !tbaa !18
  br label %if.end.75

if.else.54:                                       ; preds = %if.end.43
  %78 = load i32, i32* %m, align 4, !tbaa !18
  %79 = load i32, i32* %tbl, align 4, !tbaa !18
  %idxprom55 = sext i32 %79 to i64
  %80 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8, !tbaa !1
  %arith_dc_U = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %80, i32 0, i32 49
  %arrayidx56 = getelementptr inbounds [16 x i8], [16 x i8]* %arith_dc_U, i32 0, i64 %idxprom55
  %81 = load i8, i8* %arrayidx56, align 1, !tbaa !19
  %conv57 = zext i8 %81 to i32
  %sh_prom58 = zext i32 %conv57 to i64
  %shl59 = shl i64 1, %sh_prom58
  %shr60 = ashr i64 %shl59, 1
  %conv61 = trunc i64 %shr60 to i32
  %cmp62 = icmp sgt i32 %78, %conv61
  br i1 %cmp62, label %if.then.64, label %if.else.68

if.then.64:                                       ; preds = %if.else.54
  %82 = load i32, i32* %sign, align 4, !tbaa !18
  %mul = mul nsw i32 %82, 4
  %add = add nsw i32 12, %mul
  %83 = load i32, i32* %ci, align 4, !tbaa !18
  %idxprom65 = sext i32 %83 to i64
  %84 = load %struct.arith_entropy_decoder*, %struct.arith_entropy_decoder** %entropy, align 8, !tbaa !1
  %dc_context66 = getelementptr inbounds %struct.arith_entropy_decoder, %struct.arith_entropy_decoder* %84, i32 0, i32 5
  %arrayidx67 = getelementptr inbounds [4 x i32], [4 x i32]* %dc_context66, i32 0, i64 %idxprom65
  store i32 %add, i32* %arrayidx67, align 4, !tbaa !18
  br label %if.end.74

if.else.68:                                       ; preds = %if.else.54
  %85 = load i32, i32* %sign, align 4, !tbaa !18
  %mul69 = mul nsw i32 %85, 4
  %add70 = add nsw i32 4, %mul69
  %86 = load i32, i32* %ci, align 4, !tbaa !18
  %idxprom71 = sext i32 %86 to i64
  %87 = load %struct.arith_entropy_decoder*, %struct.arith_entropy_decoder** %entropy, align 8, !tbaa !1
  %dc_context72 = getelementptr inbounds %struct.arith_entropy_decoder, %struct.arith_entropy_decoder* %87, i32 0, i32 5
  %arrayidx73 = getelementptr inbounds [4 x i32], [4 x i32]* %dc_context72, i32 0, i64 %idxprom71
  store i32 %add70, i32* %arrayidx73, align 4, !tbaa !18
  br label %if.end.74

if.end.74:                                        ; preds = %if.else.68, %if.then.64
  br label %if.end.75

if.end.75:                                        ; preds = %if.end.74, %if.then.50
  %88 = load i32, i32* %m, align 4, !tbaa !18
  store i32 %88, i32* %v, align 4, !tbaa !18
  %89 = load i8*, i8** %st, align 8, !tbaa !1
  %add.ptr76 = getelementptr inbounds i8, i8* %89, i64 14
  store i8* %add.ptr76, i8** %st, align 8, !tbaa !1
  br label %while.cond.77

while.cond.77:                                    ; preds = %if.end.84, %if.end.75
  %90 = load i32, i32* %m, align 4, !tbaa !18
  %shr78 = ashr i32 %90, 1
  store i32 %shr78, i32* %m, align 4, !tbaa !18
  %tobool79 = icmp ne i32 %shr78, 0
  br i1 %tobool79, label %while.body.80, label %while.end.85

while.body.80:                                    ; preds = %while.cond.77
  %91 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8, !tbaa !1
  %92 = load i8*, i8** %st, align 8, !tbaa !1
  %call81 = call i32 @arith_decode(%struct.jpeg_decompress_struct* %91, i8* %92) #3
  %tobool82 = icmp ne i32 %call81, 0
  br i1 %tobool82, label %if.then.83, label %if.end.84

if.then.83:                                       ; preds = %while.body.80
  %93 = load i32, i32* %m, align 4, !tbaa !18
  %94 = load i32, i32* %v, align 4, !tbaa !18
  %or = or i32 %94, %93
  store i32 %or, i32* %v, align 4, !tbaa !18
  br label %if.end.84

if.end.84:                                        ; preds = %if.then.83, %while.body.80
  br label %while.cond.77

while.end.85:                                     ; preds = %while.cond.77
  %95 = load i32, i32* %v, align 4, !tbaa !18
  %add86 = add nsw i32 %95, 1
  store i32 %add86, i32* %v, align 4, !tbaa !18
  %96 = load i32, i32* %sign, align 4, !tbaa !18
  %tobool87 = icmp ne i32 %96, 0
  br i1 %tobool87, label %if.then.88, label %if.end.89

if.then.88:                                       ; preds = %while.end.85
  %97 = load i32, i32* %v, align 4, !tbaa !18
  %sub = sub nsw i32 0, %97
  store i32 %sub, i32* %v, align 4, !tbaa !18
  br label %if.end.89

if.end.89:                                        ; preds = %if.then.88, %while.end.85
  %98 = load i32, i32* %v, align 4, !tbaa !18
  %99 = load i32, i32* %ci, align 4, !tbaa !18
  %idxprom90 = sext i32 %99 to i64
  %100 = load %struct.arith_entropy_decoder*, %struct.arith_entropy_decoder** %entropy, align 8, !tbaa !1
  %last_dc_val = getelementptr inbounds %struct.arith_entropy_decoder, %struct.arith_entropy_decoder* %100, i32 0, i32 4
  %arrayidx91 = getelementptr inbounds [4 x i32], [4 x i32]* %last_dc_val, i32 0, i64 %idxprom90
  %101 = load i32, i32* %arrayidx91, align 4, !tbaa !18
  %add92 = add nsw i32 %101, %98
  store i32 %add92, i32* %arrayidx91, align 4, !tbaa !18
  br label %if.end.93

if.end.93:                                        ; preds = %if.end.89, %if.then.19
  %102 = load i32, i32* %ci, align 4, !tbaa !18
  %idxprom94 = sext i32 %102 to i64
  %103 = load %struct.arith_entropy_decoder*, %struct.arith_entropy_decoder** %entropy, align 8, !tbaa !1
  %last_dc_val95 = getelementptr inbounds %struct.arith_entropy_decoder, %struct.arith_entropy_decoder* %103, i32 0, i32 4
  %arrayidx96 = getelementptr inbounds [4 x i32], [4 x i32]* %last_dc_val95, i32 0, i64 %idxprom94
  %104 = load i32, i32* %arrayidx96, align 4, !tbaa !18
  %conv97 = trunc i32 %104 to i16
  %105 = load [64 x i16]*, [64 x i16]** %block, align 8, !tbaa !1
  %arrayidx98 = getelementptr inbounds [64 x i16], [64 x i16]* %105, i32 0, i64 0
  store i16 %conv97, i16* %arrayidx98, align 2, !tbaa !45
  %106 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8, !tbaa !1
  %lim_Se = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %106, i32 0, i32 81
  %107 = load i32, i32* %lim_Se, align 4, !tbaa !25
  %cmp99 = icmp eq i32 %107, 0
  br i1 %cmp99, label %if.then.101, label %if.end.102

if.then.101:                                      ; preds = %if.end.93
  br label %for.inc

if.end.102:                                       ; preds = %if.end.93
  %108 = load %struct.jpeg_component_info*, %struct.jpeg_component_info** %compptr, align 8, !tbaa !1
  %ac_tbl_no = getelementptr inbounds %struct.jpeg_component_info, %struct.jpeg_component_info* %108, i32 0, i32 6
  %109 = load i32, i32* %ac_tbl_no, align 4, !tbaa !38
  store i32 %109, i32* %tbl, align 4, !tbaa !18
  store i32 0, i32* %k, align 4, !tbaa !18
  br label %do.body

do.body:                                          ; preds = %do.cond, %if.end.102
  %110 = load i32, i32* %tbl, align 4, !tbaa !18
  %idxprom103 = sext i32 %110 to i64
  %111 = load %struct.arith_entropy_decoder*, %struct.arith_entropy_decoder** %entropy, align 8, !tbaa !1
  %ac_stats = getelementptr inbounds %struct.arith_entropy_decoder, %struct.arith_entropy_decoder* %111, i32 0, i32 8
  %arrayidx104 = getelementptr inbounds [16 x i8*], [16 x i8*]* %ac_stats, i32 0, i64 %idxprom103
  %112 = load i8*, i8** %arrayidx104, align 8, !tbaa !1
  %113 = load i32, i32* %k, align 4, !tbaa !18
  %mul105 = mul nsw i32 3, %113
  %idx.ext106 = sext i32 %mul105 to i64
  %add.ptr107 = getelementptr inbounds i8, i8* %112, i64 %idx.ext106
  store i8* %add.ptr107, i8** %st, align 8, !tbaa !1
  %114 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8, !tbaa !1
  %115 = load i8*, i8** %st, align 8, !tbaa !1
  %call108 = call i32 @arith_decode(%struct.jpeg_decompress_struct* %114, i8* %115) #3
  %tobool109 = icmp ne i32 %call108, 0
  br i1 %tobool109, label %if.then.110, label %if.end.111

if.then.110:                                      ; preds = %do.body
  br label %do.end

if.end.111:                                       ; preds = %do.body
  br label %for.cond.112

for.cond.112:                                     ; preds = %if.end.128, %if.end.111
  %116 = load i32, i32* %k, align 4, !tbaa !18
  %inc = add nsw i32 %116, 1
  store i32 %inc, i32* %k, align 4, !tbaa !18
  %117 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8, !tbaa !1
  %118 = load i8*, i8** %st, align 8, !tbaa !1
  %add.ptr113 = getelementptr inbounds i8, i8* %118, i64 1
  %call114 = call i32 @arith_decode(%struct.jpeg_decompress_struct* %117, i8* %add.ptr113) #3
  %tobool115 = icmp ne i32 %call114, 0
  br i1 %tobool115, label %if.then.116, label %if.end.117

if.then.116:                                      ; preds = %for.cond.112
  br label %for.end

if.end.117:                                       ; preds = %for.cond.112
  %119 = load i8*, i8** %st, align 8, !tbaa !1
  %add.ptr118 = getelementptr inbounds i8, i8* %119, i64 3
  store i8* %add.ptr118, i8** %st, align 8, !tbaa !1
  %120 = load i32, i32* %k, align 4, !tbaa !18
  %121 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8, !tbaa !1
  %lim_Se119 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %121, i32 0, i32 81
  %122 = load i32, i32* %lim_Se119, align 4, !tbaa !25
  %cmp120 = icmp sge i32 %120, %122
  br i1 %cmp120, label %if.then.122, label %if.end.128

if.then.122:                                      ; preds = %if.end.117
  %123 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8, !tbaa !1
  %err123 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %123, i32 0, i32 0
  %124 = load %struct.jpeg_error_mgr*, %struct.jpeg_error_mgr** %err123, align 8, !tbaa !29
  %msg_code124 = getelementptr inbounds %struct.jpeg_error_mgr, %struct.jpeg_error_mgr* %124, i32 0, i32 5
  store i32 117, i32* %msg_code124, align 4, !tbaa !30
  %125 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8, !tbaa !1
  %err125 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %125, i32 0, i32 0
  %126 = load %struct.jpeg_error_mgr*, %struct.jpeg_error_mgr** %err125, align 8, !tbaa !29
  %emit_message126 = getelementptr inbounds %struct.jpeg_error_mgr, %struct.jpeg_error_mgr* %126, i32 0, i32 1
  %127 = load void (%struct.jpeg_common_struct*, i32)*, void (%struct.jpeg_common_struct*, i32)** %emit_message126, align 8, !tbaa !35
  %128 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8, !tbaa !1
  %129 = bitcast %struct.jpeg_decompress_struct* %128 to %struct.jpeg_common_struct*
  call void %127(%struct.jpeg_common_struct* %129, i32 -1) #3
  %130 = load %struct.arith_entropy_decoder*, %struct.arith_entropy_decoder** %entropy, align 8, !tbaa !1
  %ct127 = getelementptr inbounds %struct.arith_entropy_decoder, %struct.arith_entropy_decoder* %130, i32 0, i32 3
  store i32 -1, i32* %ct127, align 4, !tbaa !41
  store i32 1, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.128:                                       ; preds = %if.end.117
  br label %for.cond.112

for.end:                                          ; preds = %if.then.116
  %131 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8, !tbaa !1
  %132 = load %struct.arith_entropy_decoder*, %struct.arith_entropy_decoder** %entropy, align 8, !tbaa !1
  %fixed_bin = getelementptr inbounds %struct.arith_entropy_decoder, %struct.arith_entropy_decoder* %132, i32 0, i32 9
  %arraydecay = getelementptr inbounds [4 x i8], [4 x i8]* %fixed_bin, i32 0, i32 0
  %call129 = call i32 @arith_decode(%struct.jpeg_decompress_struct* %131, i8* %arraydecay) #3
  store i32 %call129, i32* %sign, align 4, !tbaa !18
  %133 = load i8*, i8** %st, align 8, !tbaa !1
  %add.ptr130 = getelementptr inbounds i8, i8* %133, i64 2
  store i8* %add.ptr130, i8** %st, align 8, !tbaa !1
  %134 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8, !tbaa !1
  %135 = load i8*, i8** %st, align 8, !tbaa !1
  %call131 = call i32 @arith_decode(%struct.jpeg_decompress_struct* %134, i8* %135) #3
  store i32 %call131, i32* %m, align 4, !tbaa !18
  %cmp132 = icmp ne i32 %call131, 0
  br i1 %cmp132, label %if.then.134, label %if.end.166

if.then.134:                                      ; preds = %for.end
  %136 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8, !tbaa !1
  %137 = load i8*, i8** %st, align 8, !tbaa !1
  %call135 = call i32 @arith_decode(%struct.jpeg_decompress_struct* %136, i8* %137) #3
  %tobool136 = icmp ne i32 %call135, 0
  br i1 %tobool136, label %if.then.137, label %if.end.165

if.then.137:                                      ; preds = %if.then.134
  %138 = load i32, i32* %m, align 4, !tbaa !18
  %shl138 = shl i32 %138, 1
  store i32 %shl138, i32* %m, align 4, !tbaa !18
  %139 = load i32, i32* %tbl, align 4, !tbaa !18
  %idxprom139 = sext i32 %139 to i64
  %140 = load %struct.arith_entropy_decoder*, %struct.arith_entropy_decoder** %entropy, align 8, !tbaa !1
  %ac_stats140 = getelementptr inbounds %struct.arith_entropy_decoder, %struct.arith_entropy_decoder* %140, i32 0, i32 8
  %arrayidx141 = getelementptr inbounds [16 x i8*], [16 x i8*]* %ac_stats140, i32 0, i64 %idxprom139
  %141 = load i8*, i8** %arrayidx141, align 8, !tbaa !1
  %142 = load i32, i32* %k, align 4, !tbaa !18
  %143 = load i32, i32* %tbl, align 4, !tbaa !18
  %idxprom142 = sext i32 %143 to i64
  %144 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8, !tbaa !1
  %arith_ac_K = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %144, i32 0, i32 50
  %arrayidx143 = getelementptr inbounds [16 x i8], [16 x i8]* %arith_ac_K, i32 0, i64 %idxprom142
  %145 = load i8, i8* %arrayidx143, align 1, !tbaa !19
  %conv144 = zext i8 %145 to i32
  %cmp145 = icmp sle i32 %142, %conv144
  %cond = select i1 %cmp145, i32 189, i32 217
  %idx.ext147 = sext i32 %cond to i64
  %add.ptr148 = getelementptr inbounds i8, i8* %141, i64 %idx.ext147
  store i8* %add.ptr148, i8** %st, align 8, !tbaa !1
  br label %while.cond.149

while.cond.149:                                   ; preds = %if.end.162, %if.then.137
  %146 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8, !tbaa !1
  %147 = load i8*, i8** %st, align 8, !tbaa !1
  %call150 = call i32 @arith_decode(%struct.jpeg_decompress_struct* %146, i8* %147) #3
  %tobool151 = icmp ne i32 %call150, 0
  br i1 %tobool151, label %while.body.152, label %while.end.164

while.body.152:                                   ; preds = %while.cond.149
  %148 = load i32, i32* %m, align 4, !tbaa !18
  %shl153 = shl i32 %148, 1
  store i32 %shl153, i32* %m, align 4, !tbaa !18
  %cmp154 = icmp eq i32 %shl153, 32768
  br i1 %cmp154, label %if.then.156, label %if.end.162

if.then.156:                                      ; preds = %while.body.152
  %149 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8, !tbaa !1
  %err157 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %149, i32 0, i32 0
  %150 = load %struct.jpeg_error_mgr*, %struct.jpeg_error_mgr** %err157, align 8, !tbaa !29
  %msg_code158 = getelementptr inbounds %struct.jpeg_error_mgr, %struct.jpeg_error_mgr* %150, i32 0, i32 5
  store i32 117, i32* %msg_code158, align 4, !tbaa !30
  %151 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8, !tbaa !1
  %err159 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %151, i32 0, i32 0
  %152 = load %struct.jpeg_error_mgr*, %struct.jpeg_error_mgr** %err159, align 8, !tbaa !29
  %emit_message160 = getelementptr inbounds %struct.jpeg_error_mgr, %struct.jpeg_error_mgr* %152, i32 0, i32 1
  %153 = load void (%struct.jpeg_common_struct*, i32)*, void (%struct.jpeg_common_struct*, i32)** %emit_message160, align 8, !tbaa !35
  %154 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8, !tbaa !1
  %155 = bitcast %struct.jpeg_decompress_struct* %154 to %struct.jpeg_common_struct*
  call void %153(%struct.jpeg_common_struct* %155, i32 -1) #3
  %156 = load %struct.arith_entropy_decoder*, %struct.arith_entropy_decoder** %entropy, align 8, !tbaa !1
  %ct161 = getelementptr inbounds %struct.arith_entropy_decoder, %struct.arith_entropy_decoder* %156, i32 0, i32 3
  store i32 -1, i32* %ct161, align 4, !tbaa !41
  store i32 1, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.162:                                       ; preds = %while.body.152
  %157 = load i8*, i8** %st, align 8, !tbaa !1
  %add.ptr163 = getelementptr inbounds i8, i8* %157, i64 1
  store i8* %add.ptr163, i8** %st, align 8, !tbaa !1
  br label %while.cond.149

while.end.164:                                    ; preds = %while.cond.149
  br label %if.end.165

if.end.165:                                       ; preds = %while.end.164, %if.then.134
  br label %if.end.166

if.end.166:                                       ; preds = %if.end.165, %for.end
  %158 = load i32, i32* %m, align 4, !tbaa !18
  store i32 %158, i32* %v, align 4, !tbaa !18
  %159 = load i8*, i8** %st, align 8, !tbaa !1
  %add.ptr167 = getelementptr inbounds i8, i8* %159, i64 14
  store i8* %add.ptr167, i8** %st, align 8, !tbaa !1
  br label %while.cond.168

while.cond.168:                                   ; preds = %if.end.176, %if.end.166
  %160 = load i32, i32* %m, align 4, !tbaa !18
  %shr169 = ashr i32 %160, 1
  store i32 %shr169, i32* %m, align 4, !tbaa !18
  %tobool170 = icmp ne i32 %shr169, 0
  br i1 %tobool170, label %while.body.171, label %while.end.177

while.body.171:                                   ; preds = %while.cond.168
  %161 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8, !tbaa !1
  %162 = load i8*, i8** %st, align 8, !tbaa !1
  %call172 = call i32 @arith_decode(%struct.jpeg_decompress_struct* %161, i8* %162) #3
  %tobool173 = icmp ne i32 %call172, 0
  br i1 %tobool173, label %if.then.174, label %if.end.176

if.then.174:                                      ; preds = %while.body.171
  %163 = load i32, i32* %m, align 4, !tbaa !18
  %164 = load i32, i32* %v, align 4, !tbaa !18
  %or175 = or i32 %164, %163
  store i32 %or175, i32* %v, align 4, !tbaa !18
  br label %if.end.176

if.end.176:                                       ; preds = %if.then.174, %while.body.171
  br label %while.cond.168

while.end.177:                                    ; preds = %while.cond.168
  %165 = load i32, i32* %v, align 4, !tbaa !18
  %add178 = add nsw i32 %165, 1
  store i32 %add178, i32* %v, align 4, !tbaa !18
  %166 = load i32, i32* %sign, align 4, !tbaa !18
  %tobool179 = icmp ne i32 %166, 0
  br i1 %tobool179, label %if.then.180, label %if.end.182

if.then.180:                                      ; preds = %while.end.177
  %167 = load i32, i32* %v, align 4, !tbaa !18
  %sub181 = sub nsw i32 0, %167
  store i32 %sub181, i32* %v, align 4, !tbaa !18
  br label %if.end.182

if.end.182:                                       ; preds = %if.then.180, %while.end.177
  %168 = load i32, i32* %v, align 4, !tbaa !18
  %conv183 = trunc i32 %168 to i16
  %169 = load i32, i32* %k, align 4, !tbaa !18
  %idxprom184 = sext i32 %169 to i64
  %170 = load i32*, i32** %natural_order, align 8, !tbaa !1
  %arrayidx185 = getelementptr inbounds i32, i32* %170, i64 %idxprom184
  %171 = load i32, i32* %arrayidx185, align 4, !tbaa !18
  %idxprom186 = sext i32 %171 to i64
  %172 = load [64 x i16]*, [64 x i16]** %block, align 8, !tbaa !1
  %arrayidx187 = getelementptr inbounds [64 x i16], [64 x i16]* %172, i32 0, i64 %idxprom186
  store i16 %conv183, i16* %arrayidx187, align 2, !tbaa !45
  br label %do.cond

do.cond:                                          ; preds = %if.end.182
  %173 = load i32, i32* %k, align 4, !tbaa !18
  %174 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8, !tbaa !1
  %lim_Se188 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %174, i32 0, i32 81
  %175 = load i32, i32* %lim_Se188, align 4, !tbaa !25
  %cmp189 = icmp slt i32 %173, %175
  br i1 %cmp189, label %do.body, label %do.end

do.end:                                           ; preds = %do.cond, %if.then.110
  br label %for.inc

for.inc:                                          ; preds = %do.end, %if.then.101
  %176 = load i32, i32* %blkn, align 4, !tbaa !18
  %inc191 = add nsw i32 %176, 1
  store i32 %inc191, i32* %blkn, align 4, !tbaa !18
  br label %for.cond

for.end.192:                                      ; preds = %for.cond
  store i32 1, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %for.end.192, %if.then.156, %if.then.122, %if.then.38, %if.then.6
  %177 = bitcast i32** %natural_order to i8*
  call void @llvm.lifetime.end(i64 8, i8* %177) #1
  %178 = bitcast i32* %m to i8*
  call void @llvm.lifetime.end(i64 4, i8* %178) #1
  %179 = bitcast i32* %v to i8*
  call void @llvm.lifetime.end(i64 4, i8* %179) #1
  %180 = bitcast i32* %k to i8*
  call void @llvm.lifetime.end(i64 4, i8* %180) #1
  %181 = bitcast i32* %sign to i8*
  call void @llvm.lifetime.end(i64 4, i8* %181) #1
  %182 = bitcast i32* %tbl to i8*
  call void @llvm.lifetime.end(i64 4, i8* %182) #1
  %183 = bitcast i32* %ci to i8*
  call void @llvm.lifetime.end(i64 4, i8* %183) #1
  %184 = bitcast i32* %blkn to i8*
  call void @llvm.lifetime.end(i64 4, i8* %184) #1
  %185 = bitcast i8** %st to i8*
  call void @llvm.lifetime.end(i64 8, i8* %185) #1
  %186 = bitcast [64 x i16]** %block to i8*
  call void @llvm.lifetime.end(i64 8, i8* %186) #1
  %187 = bitcast %struct.jpeg_component_info** %compptr to i8*
  call void @llvm.lifetime.end(i64 8, i8* %187) #1
  %188 = bitcast %struct.arith_entropy_decoder** %entropy to i8*
  call void @llvm.lifetime.end(i64 8, i8* %188) #1
  %189 = load i32, i32* %retval
  ret i32 %189
}

; Function Attrs: nounwind
declare i8* @memset(i8*, i32, i64) #2

; Function Attrs: nounwind uwtable
define internal void @process_restart(%struct.jpeg_decompress_struct* %cinfo) #0 {
entry:
  %cinfo.addr = alloca %struct.jpeg_decompress_struct*, align 8
  %entropy = alloca %struct.arith_entropy_decoder*, align 8
  %ci = alloca i32, align 4
  %compptr = alloca %struct.jpeg_component_info*, align 8
  store %struct.jpeg_decompress_struct* %cinfo, %struct.jpeg_decompress_struct** %cinfo.addr, align 8, !tbaa !1
  %0 = bitcast %struct.arith_entropy_decoder** %entropy to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #1
  %1 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8, !tbaa !1
  %entropy1 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %1, i32 0, i32 89
  %2 = load %struct.jpeg_entropy_decoder*, %struct.jpeg_entropy_decoder** %entropy1, align 8, !tbaa !13
  %3 = bitcast %struct.jpeg_entropy_decoder* %2 to %struct.arith_entropy_decoder*
  store %struct.arith_entropy_decoder* %3, %struct.arith_entropy_decoder** %entropy, align 8, !tbaa !1
  %4 = bitcast i32* %ci to i8*
  call void @llvm.lifetime.start(i64 4, i8* %4) #1
  %5 = bitcast %struct.jpeg_component_info** %compptr to i8*
  call void @llvm.lifetime.start(i64 8, i8* %5) #1
  %6 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8, !tbaa !1
  %marker = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %6, i32 0, i32 88
  %7 = load %struct.jpeg_marker_reader*, %struct.jpeg_marker_reader** %marker, align 8, !tbaa !47
  %read_restart_marker = getelementptr inbounds %struct.jpeg_marker_reader, %struct.jpeg_marker_reader* %7, i32 0, i32 2
  %8 = load i32 (%struct.jpeg_decompress_struct*)*, i32 (%struct.jpeg_decompress_struct*)** %read_restart_marker, align 8, !tbaa !48
  %9 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8, !tbaa !1
  %call = call i32 %8(%struct.jpeg_decompress_struct* %9) #3
  %tobool = icmp ne i32 %call, 0
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  %10 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8, !tbaa !1
  %err = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %10, i32 0, i32 0
  %11 = load %struct.jpeg_error_mgr*, %struct.jpeg_error_mgr** %err, align 8, !tbaa !29
  %msg_code = getelementptr inbounds %struct.jpeg_error_mgr, %struct.jpeg_error_mgr* %11, i32 0, i32 5
  store i32 25, i32* %msg_code, align 4, !tbaa !30
  %12 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8, !tbaa !1
  %err2 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %12, i32 0, i32 0
  %13 = load %struct.jpeg_error_mgr*, %struct.jpeg_error_mgr** %err2, align 8, !tbaa !29
  %error_exit = getelementptr inbounds %struct.jpeg_error_mgr, %struct.jpeg_error_mgr* %13, i32 0, i32 0
  %14 = load void (%struct.jpeg_common_struct*)*, void (%struct.jpeg_common_struct*)** %error_exit, align 8, !tbaa !32
  %15 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8, !tbaa !1
  %16 = bitcast %struct.jpeg_decompress_struct* %15 to %struct.jpeg_common_struct*
  call void %14(%struct.jpeg_common_struct* %16) #3
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  store i32 0, i32* %ci, align 4, !tbaa !18
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end
  %17 = load i32, i32* %ci, align 4, !tbaa !18
  %18 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8, !tbaa !1
  %comps_in_scan = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %18, i32 0, i32 69
  %19 = load i32, i32* %comps_in_scan, align 4, !tbaa !26
  %cmp = icmp slt i32 %17, %19
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %20 = load i32, i32* %ci, align 4, !tbaa !18
  %idxprom = sext i32 %20 to i64
  %21 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8, !tbaa !1
  %cur_comp_info = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %21, i32 0, i32 70
  %arrayidx = getelementptr inbounds [4 x %struct.jpeg_component_info*], [4 x %struct.jpeg_component_info*]* %cur_comp_info, i32 0, i64 %idxprom
  %22 = load %struct.jpeg_component_info*, %struct.jpeg_component_info** %arrayidx, align 8, !tbaa !1
  store %struct.jpeg_component_info* %22, %struct.jpeg_component_info** %compptr, align 8, !tbaa !1
  %23 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8, !tbaa !1
  %progressive_mode = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %23, i32 0, i32 46
  %24 = load i32, i32* %progressive_mode, align 4, !tbaa !20
  %tobool3 = icmp ne i32 %24, 0
  br i1 %tobool3, label %lor.lhs.false, label %if.then.6

lor.lhs.false:                                    ; preds = %for.body
  %25 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8, !tbaa !1
  %Ss = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %25, i32 0, i32 75
  %26 = load i32, i32* %Ss, align 4, !tbaa !23
  %cmp4 = icmp eq i32 %26, 0
  br i1 %cmp4, label %land.lhs.true, label %if.end.14

land.lhs.true:                                    ; preds = %lor.lhs.false
  %27 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8, !tbaa !1
  %Ah = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %27, i32 0, i32 77
  %28 = load i32, i32* %Ah, align 4, !tbaa !27
  %cmp5 = icmp eq i32 %28, 0
  br i1 %cmp5, label %if.then.6, label %if.end.14

if.then.6:                                        ; preds = %land.lhs.true, %for.body
  %29 = load %struct.jpeg_component_info*, %struct.jpeg_component_info** %compptr, align 8, !tbaa !1
  %dc_tbl_no = getelementptr inbounds %struct.jpeg_component_info, %struct.jpeg_component_info* %29, i32 0, i32 5
  %30 = load i32, i32* %dc_tbl_no, align 4, !tbaa !37
  %idxprom7 = sext i32 %30 to i64
  %31 = load %struct.arith_entropy_decoder*, %struct.arith_entropy_decoder** %entropy, align 8, !tbaa !1
  %dc_stats = getelementptr inbounds %struct.arith_entropy_decoder, %struct.arith_entropy_decoder* %31, i32 0, i32 7
  %arrayidx8 = getelementptr inbounds [16 x i8*], [16 x i8*]* %dc_stats, i32 0, i64 %idxprom7
  %32 = load i8*, i8** %arrayidx8, align 8, !tbaa !1
  %call9 = call i8* @memset(i8* %32, i32 0, i64 64) #4
  %33 = load i32, i32* %ci, align 4, !tbaa !18
  %idxprom10 = sext i32 %33 to i64
  %34 = load %struct.arith_entropy_decoder*, %struct.arith_entropy_decoder** %entropy, align 8, !tbaa !1
  %last_dc_val = getelementptr inbounds %struct.arith_entropy_decoder, %struct.arith_entropy_decoder* %34, i32 0, i32 4
  %arrayidx11 = getelementptr inbounds [4 x i32], [4 x i32]* %last_dc_val, i32 0, i64 %idxprom10
  store i32 0, i32* %arrayidx11, align 4, !tbaa !18
  %35 = load i32, i32* %ci, align 4, !tbaa !18
  %idxprom12 = sext i32 %35 to i64
  %36 = load %struct.arith_entropy_decoder*, %struct.arith_entropy_decoder** %entropy, align 8, !tbaa !1
  %dc_context = getelementptr inbounds %struct.arith_entropy_decoder, %struct.arith_entropy_decoder* %36, i32 0, i32 5
  %arrayidx13 = getelementptr inbounds [4 x i32], [4 x i32]* %dc_context, i32 0, i64 %idxprom12
  store i32 0, i32* %arrayidx13, align 4, !tbaa !18
  br label %if.end.14

if.end.14:                                        ; preds = %if.then.6, %land.lhs.true, %lor.lhs.false
  %37 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8, !tbaa !1
  %progressive_mode15 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %37, i32 0, i32 46
  %38 = load i32, i32* %progressive_mode15, align 4, !tbaa !20
  %tobool16 = icmp ne i32 %38, 0
  br i1 %tobool16, label %lor.lhs.false.19, label %land.lhs.true.17

land.lhs.true.17:                                 ; preds = %if.end.14
  %39 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8, !tbaa !1
  %lim_Se = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %39, i32 0, i32 81
  %40 = load i32, i32* %lim_Se, align 4, !tbaa !25
  %tobool18 = icmp ne i32 %40, 0
  br i1 %tobool18, label %if.then.25, label %lor.lhs.false.19

lor.lhs.false.19:                                 ; preds = %land.lhs.true.17, %if.end.14
  %41 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8, !tbaa !1
  %progressive_mode20 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %41, i32 0, i32 46
  %42 = load i32, i32* %progressive_mode20, align 4, !tbaa !20
  %tobool21 = icmp ne i32 %42, 0
  br i1 %tobool21, label %land.lhs.true.22, label %if.end.29

land.lhs.true.22:                                 ; preds = %lor.lhs.false.19
  %43 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8, !tbaa !1
  %Ss23 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %43, i32 0, i32 75
  %44 = load i32, i32* %Ss23, align 4, !tbaa !23
  %tobool24 = icmp ne i32 %44, 0
  br i1 %tobool24, label %if.then.25, label %if.end.29

if.then.25:                                       ; preds = %land.lhs.true.22, %land.lhs.true.17
  %45 = load %struct.jpeg_component_info*, %struct.jpeg_component_info** %compptr, align 8, !tbaa !1
  %ac_tbl_no = getelementptr inbounds %struct.jpeg_component_info, %struct.jpeg_component_info* %45, i32 0, i32 6
  %46 = load i32, i32* %ac_tbl_no, align 4, !tbaa !38
  %idxprom26 = sext i32 %46 to i64
  %47 = load %struct.arith_entropy_decoder*, %struct.arith_entropy_decoder** %entropy, align 8, !tbaa !1
  %ac_stats = getelementptr inbounds %struct.arith_entropy_decoder, %struct.arith_entropy_decoder* %47, i32 0, i32 8
  %arrayidx27 = getelementptr inbounds [16 x i8*], [16 x i8*]* %ac_stats, i32 0, i64 %idxprom26
  %48 = load i8*, i8** %arrayidx27, align 8, !tbaa !1
  %call28 = call i8* @memset(i8* %48, i32 0, i64 256) #4
  br label %if.end.29

if.end.29:                                        ; preds = %if.then.25, %land.lhs.true.22, %lor.lhs.false.19
  br label %for.inc

for.inc:                                          ; preds = %if.end.29
  %49 = load i32, i32* %ci, align 4, !tbaa !18
  %inc = add nsw i32 %49, 1
  store i32 %inc, i32* %ci, align 4, !tbaa !18
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %50 = load %struct.arith_entropy_decoder*, %struct.arith_entropy_decoder** %entropy, align 8, !tbaa !1
  %c = getelementptr inbounds %struct.arith_entropy_decoder, %struct.arith_entropy_decoder* %50, i32 0, i32 1
  store i64 0, i64* %c, align 8, !tbaa !39
  %51 = load %struct.arith_entropy_decoder*, %struct.arith_entropy_decoder** %entropy, align 8, !tbaa !1
  %a = getelementptr inbounds %struct.arith_entropy_decoder, %struct.arith_entropy_decoder* %51, i32 0, i32 2
  store i64 0, i64* %a, align 8, !tbaa !40
  %52 = load %struct.arith_entropy_decoder*, %struct.arith_entropy_decoder** %entropy, align 8, !tbaa !1
  %ct = getelementptr inbounds %struct.arith_entropy_decoder, %struct.arith_entropy_decoder* %52, i32 0, i32 3
  store i32 -16, i32* %ct, align 4, !tbaa !41
  %53 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8, !tbaa !1
  %restart_interval = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %53, i32 0, i32 51
  %54 = load i32, i32* %restart_interval, align 4, !tbaa !42
  %55 = load %struct.arith_entropy_decoder*, %struct.arith_entropy_decoder** %entropy, align 8, !tbaa !1
  %restarts_to_go = getelementptr inbounds %struct.arith_entropy_decoder, %struct.arith_entropy_decoder* %55, i32 0, i32 6
  store i32 %54, i32* %restarts_to_go, align 4, !tbaa !43
  %56 = bitcast %struct.jpeg_component_info** %compptr to i8*
  call void @llvm.lifetime.end(i64 8, i8* %56) #1
  %57 = bitcast i32* %ci to i8*
  call void @llvm.lifetime.end(i64 4, i8* %57) #1
  %58 = bitcast %struct.arith_entropy_decoder** %entropy to i8*
  call void @llvm.lifetime.end(i64 8, i8* %58) #1
  ret void
}

; Function Attrs: nounwind uwtable
define internal i32 @arith_decode(%struct.jpeg_decompress_struct* %cinfo, i8* %st) #0 {
entry:
  %cinfo.addr = alloca %struct.jpeg_decompress_struct*, align 8
  %st.addr = alloca i8*, align 8
  %e = alloca %struct.arith_entropy_decoder*, align 8
  %nl = alloca i8, align 1
  %nm = alloca i8, align 1
  %qe = alloca i64, align 8
  %temp = alloca i64, align 8
  %sv = alloca i32, align 4
  %data = alloca i32, align 4
  store %struct.jpeg_decompress_struct* %cinfo, %struct.jpeg_decompress_struct** %cinfo.addr, align 8, !tbaa !1
  store i8* %st, i8** %st.addr, align 8, !tbaa !1
  %0 = bitcast %struct.arith_entropy_decoder** %e to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #1
  %1 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8, !tbaa !1
  %entropy = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %1, i32 0, i32 89
  %2 = load %struct.jpeg_entropy_decoder*, %struct.jpeg_entropy_decoder** %entropy, align 8, !tbaa !13
  %3 = bitcast %struct.jpeg_entropy_decoder* %2 to %struct.arith_entropy_decoder*
  store %struct.arith_entropy_decoder* %3, %struct.arith_entropy_decoder** %e, align 8, !tbaa !1
  call void @llvm.lifetime.start(i64 1, i8* %nl) #1
  call void @llvm.lifetime.start(i64 1, i8* %nm) #1
  %4 = bitcast i64* %qe to i8*
  call void @llvm.lifetime.start(i64 8, i8* %4) #1
  %5 = bitcast i64* %temp to i8*
  call void @llvm.lifetime.start(i64 8, i8* %5) #1
  %6 = bitcast i32* %sv to i8*
  call void @llvm.lifetime.start(i64 4, i8* %6) #1
  %7 = bitcast i32* %data to i8*
  call void @llvm.lifetime.start(i64 4, i8* %7) #1
  br label %while.cond

while.cond:                                       ; preds = %if.end.25, %entry
  %8 = load %struct.arith_entropy_decoder*, %struct.arith_entropy_decoder** %e, align 8, !tbaa !1
  %a = getelementptr inbounds %struct.arith_entropy_decoder, %struct.arith_entropy_decoder* %8, i32 0, i32 2
  %9 = load i64, i64* %a, align 8, !tbaa !40
  %cmp = icmp slt i64 %9, 32768
  br i1 %cmp, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %10 = load %struct.arith_entropy_decoder*, %struct.arith_entropy_decoder** %e, align 8, !tbaa !1
  %ct = getelementptr inbounds %struct.arith_entropy_decoder, %struct.arith_entropy_decoder* %10, i32 0, i32 3
  %11 = load i32, i32* %ct, align 4, !tbaa !41
  %dec = add nsw i32 %11, -1
  store i32 %dec, i32* %ct, align 4, !tbaa !41
  %cmp1 = icmp slt i32 %dec, 0
  br i1 %cmp1, label %if.then, label %if.end.25

if.then:                                          ; preds = %while.body
  %12 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8, !tbaa !1
  %unread_marker = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %12, i32 0, i32 82
  %13 = load i32, i32* %unread_marker, align 4, !tbaa !50
  %tobool = icmp ne i32 %13, 0
  br i1 %tobool, label %if.then.2, label %if.else

if.then.2:                                        ; preds = %if.then
  store i32 0, i32* %data, align 4, !tbaa !18
  br label %if.end.12

if.else:                                          ; preds = %if.then
  %14 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8, !tbaa !1
  %call = call i32 @get_byte(%struct.jpeg_decompress_struct* %14) #3
  store i32 %call, i32* %data, align 4, !tbaa !18
  %15 = load i32, i32* %data, align 4, !tbaa !18
  %cmp3 = icmp eq i32 %15, 255
  br i1 %cmp3, label %if.then.4, label %if.end.11

if.then.4:                                        ; preds = %if.else
  br label %do.body

do.body:                                          ; preds = %do.cond, %if.then.4
  %16 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8, !tbaa !1
  %call5 = call i32 @get_byte(%struct.jpeg_decompress_struct* %16) #3
  store i32 %call5, i32* %data, align 4, !tbaa !18
  br label %do.cond

do.cond:                                          ; preds = %do.body
  %17 = load i32, i32* %data, align 4, !tbaa !18
  %cmp6 = icmp eq i32 %17, 255
  br i1 %cmp6, label %do.body, label %do.end

do.end:                                           ; preds = %do.cond
  %18 = load i32, i32* %data, align 4, !tbaa !18
  %cmp7 = icmp eq i32 %18, 0
  br i1 %cmp7, label %if.then.8, label %if.else.9

if.then.8:                                        ; preds = %do.end
  store i32 255, i32* %data, align 4, !tbaa !18
  br label %if.end

if.else.9:                                        ; preds = %do.end
  %19 = load i32, i32* %data, align 4, !tbaa !18
  %20 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8, !tbaa !1
  %unread_marker10 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %20, i32 0, i32 82
  store i32 %19, i32* %unread_marker10, align 4, !tbaa !50
  store i32 0, i32* %data, align 4, !tbaa !18
  br label %if.end

if.end:                                           ; preds = %if.else.9, %if.then.8
  br label %if.end.11

if.end.11:                                        ; preds = %if.end, %if.else
  br label %if.end.12

if.end.12:                                        ; preds = %if.end.11, %if.then.2
  %21 = load %struct.arith_entropy_decoder*, %struct.arith_entropy_decoder** %e, align 8, !tbaa !1
  %c = getelementptr inbounds %struct.arith_entropy_decoder, %struct.arith_entropy_decoder* %21, i32 0, i32 1
  %22 = load i64, i64* %c, align 8, !tbaa !39
  %shl = shl i64 %22, 8
  %23 = load i32, i32* %data, align 4, !tbaa !18
  %conv = sext i32 %23 to i64
  %or = or i64 %shl, %conv
  %24 = load %struct.arith_entropy_decoder*, %struct.arith_entropy_decoder** %e, align 8, !tbaa !1
  %c13 = getelementptr inbounds %struct.arith_entropy_decoder, %struct.arith_entropy_decoder* %24, i32 0, i32 1
  store i64 %or, i64* %c13, align 8, !tbaa !39
  %25 = load %struct.arith_entropy_decoder*, %struct.arith_entropy_decoder** %e, align 8, !tbaa !1
  %ct14 = getelementptr inbounds %struct.arith_entropy_decoder, %struct.arith_entropy_decoder* %25, i32 0, i32 3
  %26 = load i32, i32* %ct14, align 4, !tbaa !41
  %add = add nsw i32 %26, 8
  store i32 %add, i32* %ct14, align 4, !tbaa !41
  %cmp15 = icmp slt i32 %add, 0
  br i1 %cmp15, label %if.then.17, label %if.end.24

if.then.17:                                       ; preds = %if.end.12
  %27 = load %struct.arith_entropy_decoder*, %struct.arith_entropy_decoder** %e, align 8, !tbaa !1
  %ct18 = getelementptr inbounds %struct.arith_entropy_decoder, %struct.arith_entropy_decoder* %27, i32 0, i32 3
  %28 = load i32, i32* %ct18, align 4, !tbaa !41
  %inc = add nsw i32 %28, 1
  store i32 %inc, i32* %ct18, align 4, !tbaa !41
  %cmp19 = icmp eq i32 %inc, 0
  br i1 %cmp19, label %if.then.21, label %if.end.23

if.then.21:                                       ; preds = %if.then.17
  %29 = load %struct.arith_entropy_decoder*, %struct.arith_entropy_decoder** %e, align 8, !tbaa !1
  %a22 = getelementptr inbounds %struct.arith_entropy_decoder, %struct.arith_entropy_decoder* %29, i32 0, i32 2
  store i64 32768, i64* %a22, align 8, !tbaa !40
  br label %if.end.23

if.end.23:                                        ; preds = %if.then.21, %if.then.17
  br label %if.end.24

if.end.24:                                        ; preds = %if.end.23, %if.end.12
  br label %if.end.25

if.end.25:                                        ; preds = %if.end.24, %while.body
  %30 = load %struct.arith_entropy_decoder*, %struct.arith_entropy_decoder** %e, align 8, !tbaa !1
  %a26 = getelementptr inbounds %struct.arith_entropy_decoder, %struct.arith_entropy_decoder* %30, i32 0, i32 2
  %31 = load i64, i64* %a26, align 8, !tbaa !40
  %shl27 = shl i64 %31, 1
  store i64 %shl27, i64* %a26, align 8, !tbaa !40
  br label %while.cond

while.end:                                        ; preds = %while.cond
  %32 = load i8*, i8** %st.addr, align 8, !tbaa !1
  %33 = load i8, i8* %32, align 1, !tbaa !19
  %conv28 = zext i8 %33 to i32
  store i32 %conv28, i32* %sv, align 4, !tbaa !18
  %34 = load i32, i32* %sv, align 4, !tbaa !18
  %and = and i32 %34, 127
  %idxprom = sext i32 %and to i64
  %arrayidx = getelementptr inbounds [0 x i64], [0 x i64]* @jpeg_aritab, i32 0, i64 %idxprom
  %35 = load i64, i64* %arrayidx, align 8, !tbaa !51
  store i64 %35, i64* %qe, align 8, !tbaa !51
  %36 = load i64, i64* %qe, align 8, !tbaa !51
  %and29 = and i64 %36, 255
  %conv30 = trunc i64 %and29 to i8
  store i8 %conv30, i8* %nl, align 1, !tbaa !19
  %37 = load i64, i64* %qe, align 8, !tbaa !51
  %shr = ashr i64 %37, 8
  store i64 %shr, i64* %qe, align 8, !tbaa !51
  %38 = load i64, i64* %qe, align 8, !tbaa !51
  %and31 = and i64 %38, 255
  %conv32 = trunc i64 %and31 to i8
  store i8 %conv32, i8* %nm, align 1, !tbaa !19
  %39 = load i64, i64* %qe, align 8, !tbaa !51
  %shr33 = ashr i64 %39, 8
  store i64 %shr33, i64* %qe, align 8, !tbaa !51
  %40 = load %struct.arith_entropy_decoder*, %struct.arith_entropy_decoder** %e, align 8, !tbaa !1
  %a34 = getelementptr inbounds %struct.arith_entropy_decoder, %struct.arith_entropy_decoder* %40, i32 0, i32 2
  %41 = load i64, i64* %a34, align 8, !tbaa !40
  %42 = load i64, i64* %qe, align 8, !tbaa !51
  %sub = sub nsw i64 %41, %42
  store i64 %sub, i64* %temp, align 8, !tbaa !51
  %43 = load i64, i64* %temp, align 8, !tbaa !51
  %44 = load %struct.arith_entropy_decoder*, %struct.arith_entropy_decoder** %e, align 8, !tbaa !1
  %a35 = getelementptr inbounds %struct.arith_entropy_decoder, %struct.arith_entropy_decoder* %44, i32 0, i32 2
  store i64 %43, i64* %a35, align 8, !tbaa !40
  %45 = load %struct.arith_entropy_decoder*, %struct.arith_entropy_decoder** %e, align 8, !tbaa !1
  %ct36 = getelementptr inbounds %struct.arith_entropy_decoder, %struct.arith_entropy_decoder* %45, i32 0, i32 3
  %46 = load i32, i32* %ct36, align 4, !tbaa !41
  %47 = load i64, i64* %temp, align 8, !tbaa !51
  %sh_prom = zext i32 %46 to i64
  %shl37 = shl i64 %47, %sh_prom
  store i64 %shl37, i64* %temp, align 8, !tbaa !51
  %48 = load %struct.arith_entropy_decoder*, %struct.arith_entropy_decoder** %e, align 8, !tbaa !1
  %c38 = getelementptr inbounds %struct.arith_entropy_decoder, %struct.arith_entropy_decoder* %48, i32 0, i32 1
  %49 = load i64, i64* %c38, align 8, !tbaa !39
  %50 = load i64, i64* %temp, align 8, !tbaa !51
  %cmp39 = icmp sge i64 %49, %50
  br i1 %cmp39, label %if.then.41, label %if.else.60

if.then.41:                                       ; preds = %while.end
  %51 = load i64, i64* %temp, align 8, !tbaa !51
  %52 = load %struct.arith_entropy_decoder*, %struct.arith_entropy_decoder** %e, align 8, !tbaa !1
  %c42 = getelementptr inbounds %struct.arith_entropy_decoder, %struct.arith_entropy_decoder* %52, i32 0, i32 1
  %53 = load i64, i64* %c42, align 8, !tbaa !39
  %sub43 = sub nsw i64 %53, %51
  store i64 %sub43, i64* %c42, align 8, !tbaa !39
  %54 = load %struct.arith_entropy_decoder*, %struct.arith_entropy_decoder** %e, align 8, !tbaa !1
  %a44 = getelementptr inbounds %struct.arith_entropy_decoder, %struct.arith_entropy_decoder* %54, i32 0, i32 2
  %55 = load i64, i64* %a44, align 8, !tbaa !40
  %56 = load i64, i64* %qe, align 8, !tbaa !51
  %cmp45 = icmp slt i64 %55, %56
  br i1 %cmp45, label %if.then.47, label %if.else.52

if.then.47:                                       ; preds = %if.then.41
  %57 = load i64, i64* %qe, align 8, !tbaa !51
  %58 = load %struct.arith_entropy_decoder*, %struct.arith_entropy_decoder** %e, align 8, !tbaa !1
  %a48 = getelementptr inbounds %struct.arith_entropy_decoder, %struct.arith_entropy_decoder* %58, i32 0, i32 2
  store i64 %57, i64* %a48, align 8, !tbaa !40
  %59 = load i32, i32* %sv, align 4, !tbaa !18
  %and49 = and i32 %59, 128
  %60 = load i8, i8* %nm, align 1, !tbaa !19
  %conv50 = zext i8 %60 to i32
  %xor = xor i32 %and49, %conv50
  %conv51 = trunc i32 %xor to i8
  %61 = load i8*, i8** %st.addr, align 8, !tbaa !1
  store i8 %conv51, i8* %61, align 1, !tbaa !19
  br label %if.end.59

if.else.52:                                       ; preds = %if.then.41
  %62 = load i64, i64* %qe, align 8, !tbaa !51
  %63 = load %struct.arith_entropy_decoder*, %struct.arith_entropy_decoder** %e, align 8, !tbaa !1
  %a53 = getelementptr inbounds %struct.arith_entropy_decoder, %struct.arith_entropy_decoder* %63, i32 0, i32 2
  store i64 %62, i64* %a53, align 8, !tbaa !40
  %64 = load i32, i32* %sv, align 4, !tbaa !18
  %and54 = and i32 %64, 128
  %65 = load i8, i8* %nl, align 1, !tbaa !19
  %conv55 = zext i8 %65 to i32
  %xor56 = xor i32 %and54, %conv55
  %conv57 = trunc i32 %xor56 to i8
  %66 = load i8*, i8** %st.addr, align 8, !tbaa !1
  store i8 %conv57, i8* %66, align 1, !tbaa !19
  %67 = load i32, i32* %sv, align 4, !tbaa !18
  %xor58 = xor i32 %67, 128
  store i32 %xor58, i32* %sv, align 4, !tbaa !18
  br label %if.end.59

if.end.59:                                        ; preds = %if.else.52, %if.then.47
  br label %if.end.81

if.else.60:                                       ; preds = %while.end
  %68 = load %struct.arith_entropy_decoder*, %struct.arith_entropy_decoder** %e, align 8, !tbaa !1
  %a61 = getelementptr inbounds %struct.arith_entropy_decoder, %struct.arith_entropy_decoder* %68, i32 0, i32 2
  %69 = load i64, i64* %a61, align 8, !tbaa !40
  %cmp62 = icmp slt i64 %69, 32768
  br i1 %cmp62, label %if.then.64, label %if.end.80

if.then.64:                                       ; preds = %if.else.60
  %70 = load %struct.arith_entropy_decoder*, %struct.arith_entropy_decoder** %e, align 8, !tbaa !1
  %a65 = getelementptr inbounds %struct.arith_entropy_decoder, %struct.arith_entropy_decoder* %70, i32 0, i32 2
  %71 = load i64, i64* %a65, align 8, !tbaa !40
  %72 = load i64, i64* %qe, align 8, !tbaa !51
  %cmp66 = icmp slt i64 %71, %72
  br i1 %cmp66, label %if.then.68, label %if.else.74

if.then.68:                                       ; preds = %if.then.64
  %73 = load i32, i32* %sv, align 4, !tbaa !18
  %and69 = and i32 %73, 128
  %74 = load i8, i8* %nl, align 1, !tbaa !19
  %conv70 = zext i8 %74 to i32
  %xor71 = xor i32 %and69, %conv70
  %conv72 = trunc i32 %xor71 to i8
  %75 = load i8*, i8** %st.addr, align 8, !tbaa !1
  store i8 %conv72, i8* %75, align 1, !tbaa !19
  %76 = load i32, i32* %sv, align 4, !tbaa !18
  %xor73 = xor i32 %76, 128
  store i32 %xor73, i32* %sv, align 4, !tbaa !18
  br label %if.end.79

if.else.74:                                       ; preds = %if.then.64
  %77 = load i32, i32* %sv, align 4, !tbaa !18
  %and75 = and i32 %77, 128
  %78 = load i8, i8* %nm, align 1, !tbaa !19
  %conv76 = zext i8 %78 to i32
  %xor77 = xor i32 %and75, %conv76
  %conv78 = trunc i32 %xor77 to i8
  %79 = load i8*, i8** %st.addr, align 8, !tbaa !1
  store i8 %conv78, i8* %79, align 1, !tbaa !19
  br label %if.end.79

if.end.79:                                        ; preds = %if.else.74, %if.then.68
  br label %if.end.80

if.end.80:                                        ; preds = %if.end.79, %if.else.60
  br label %if.end.81

if.end.81:                                        ; preds = %if.end.80, %if.end.59
  %80 = load i32, i32* %sv, align 4, !tbaa !18
  %shr82 = ashr i32 %80, 7
  %81 = bitcast i32* %data to i8*
  call void @llvm.lifetime.end(i64 4, i8* %81) #1
  %82 = bitcast i32* %sv to i8*
  call void @llvm.lifetime.end(i64 4, i8* %82) #1
  %83 = bitcast i64* %temp to i8*
  call void @llvm.lifetime.end(i64 8, i8* %83) #1
  %84 = bitcast i64* %qe to i8*
  call void @llvm.lifetime.end(i64 8, i8* %84) #1
  call void @llvm.lifetime.end(i64 1, i8* %nm) #1
  call void @llvm.lifetime.end(i64 1, i8* %nl) #1
  %85 = bitcast %struct.arith_entropy_decoder** %e to i8*
  call void @llvm.lifetime.end(i64 8, i8* %85) #1
  ret i32 %shr82
}

; Function Attrs: nounwind uwtable
define internal i32 @get_byte(%struct.jpeg_decompress_struct* %cinfo) #0 {
entry:
  %cinfo.addr = alloca %struct.jpeg_decompress_struct*, align 8
  %src = alloca %struct.jpeg_source_mgr*, align 8
  store %struct.jpeg_decompress_struct* %cinfo, %struct.jpeg_decompress_struct** %cinfo.addr, align 8, !tbaa !1
  %0 = bitcast %struct.jpeg_source_mgr** %src to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #1
  %1 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8, !tbaa !1
  %src1 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %1, i32 0, i32 6
  %2 = load %struct.jpeg_source_mgr*, %struct.jpeg_source_mgr** %src1, align 8, !tbaa !52
  store %struct.jpeg_source_mgr* %2, %struct.jpeg_source_mgr** %src, align 8, !tbaa !1
  %3 = load %struct.jpeg_source_mgr*, %struct.jpeg_source_mgr** %src, align 8, !tbaa !1
  %bytes_in_buffer = getelementptr inbounds %struct.jpeg_source_mgr, %struct.jpeg_source_mgr* %3, i32 0, i32 1
  %4 = load i64, i64* %bytes_in_buffer, align 8, !tbaa !53
  %cmp = icmp eq i64 %4, 0
  br i1 %cmp, label %if.then, label %if.end.4

if.then:                                          ; preds = %entry
  %5 = load %struct.jpeg_source_mgr*, %struct.jpeg_source_mgr** %src, align 8, !tbaa !1
  %fill_input_buffer = getelementptr inbounds %struct.jpeg_source_mgr, %struct.jpeg_source_mgr* %5, i32 0, i32 3
  %6 = load i32 (%struct.jpeg_decompress_struct*)*, i32 (%struct.jpeg_decompress_struct*)** %fill_input_buffer, align 8, !tbaa !55
  %7 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8, !tbaa !1
  %call = call i32 %6(%struct.jpeg_decompress_struct* %7) #3
  %tobool = icmp ne i32 %call, 0
  br i1 %tobool, label %if.end, label %if.then.2

if.then.2:                                        ; preds = %if.then
  %8 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8, !tbaa !1
  %err = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %8, i32 0, i32 0
  %9 = load %struct.jpeg_error_mgr*, %struct.jpeg_error_mgr** %err, align 8, !tbaa !29
  %msg_code = getelementptr inbounds %struct.jpeg_error_mgr, %struct.jpeg_error_mgr* %9, i32 0, i32 5
  store i32 25, i32* %msg_code, align 4, !tbaa !30
  %10 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8, !tbaa !1
  %err3 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %10, i32 0, i32 0
  %11 = load %struct.jpeg_error_mgr*, %struct.jpeg_error_mgr** %err3, align 8, !tbaa !29
  %error_exit = getelementptr inbounds %struct.jpeg_error_mgr, %struct.jpeg_error_mgr* %11, i32 0, i32 0
  %12 = load void (%struct.jpeg_common_struct*)*, void (%struct.jpeg_common_struct*)** %error_exit, align 8, !tbaa !32
  %13 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8, !tbaa !1
  %14 = bitcast %struct.jpeg_decompress_struct* %13 to %struct.jpeg_common_struct*
  call void %12(%struct.jpeg_common_struct* %14) #3
  br label %if.end

if.end:                                           ; preds = %if.then.2, %if.then
  br label %if.end.4

if.end.4:                                         ; preds = %if.end, %entry
  %15 = load %struct.jpeg_source_mgr*, %struct.jpeg_source_mgr** %src, align 8, !tbaa !1
  %bytes_in_buffer5 = getelementptr inbounds %struct.jpeg_source_mgr, %struct.jpeg_source_mgr* %15, i32 0, i32 1
  %16 = load i64, i64* %bytes_in_buffer5, align 8, !tbaa !53
  %dec = add i64 %16, -1
  store i64 %dec, i64* %bytes_in_buffer5, align 8, !tbaa !53
  %17 = load %struct.jpeg_source_mgr*, %struct.jpeg_source_mgr** %src, align 8, !tbaa !1
  %next_input_byte = getelementptr inbounds %struct.jpeg_source_mgr, %struct.jpeg_source_mgr* %17, i32 0, i32 0
  %18 = load i8*, i8** %next_input_byte, align 8, !tbaa !56
  %incdec.ptr = getelementptr inbounds i8, i8* %18, i32 1
  store i8* %incdec.ptr, i8** %next_input_byte, align 8, !tbaa !56
  %19 = load i8, i8* %18, align 1, !tbaa !19
  %conv = zext i8 %19 to i32
  %20 = bitcast %struct.jpeg_source_mgr** %src to i8*
  call void @llvm.lifetime.end(i64 8, i8* %20) #1
  ret i32 %conv
}

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
!5 = !{!6, !2, i64 8}
!6 = !{!"jpeg_decompress_struct", !2, i64 0, !2, i64 8, !2, i64 16, !2, i64 24, !3, i64 32, !7, i64 36, !2, i64 40, !7, i64 48, !7, i64 52, !7, i64 56, !3, i64 60, !3, i64 64, !7, i64 68, !7, i64 72, !8, i64 80, !3, i64 88, !3, i64 92, !3, i64 96, !3, i64 100, !3, i64 104, !3, i64 108, !3, i64 112, !3, i64 116, !7, i64 120, !3, i64 124, !3, i64 128, !3, i64 132, !7, i64 136, !7, i64 140, !7, i64 144, !7, i64 148, !7, i64 152, !7, i64 156, !2, i64 160, !7, i64 168, !7, i64 172, !7, i64 176, !7, i64 180, !7, i64 184, !2, i64 192, !3, i64 200, !3, i64 232, !3, i64 264, !7, i64 296, !2, i64 304, !3, i64 312, !3, i64 316, !3, i64 320, !3, i64 324, !3, i64 340, !3, i64 356, !7, i64 372, !3, i64 376, !3, i64 380, !3, i64 381, !3, i64 382, !9, i64 384, !9, i64 386, !3, i64 388, !3, i64 392, !3, i64 396, !3, i64 400, !2, i64 408, !7, i64 416, !7, i64 420, !7, i64 424, !7, i64 428, !7, i64 432, !2, i64 440, !7, i64 448, !3, i64 456, !7, i64 488, !7, i64 492, !7, i64 496, !3, i64 500, !7, i64 756, !7, i64 760, !7, i64 764, !7, i64 768, !7, i64 772, !2, i64 776, !7, i64 784, !7, i64 788, !2, i64 792, !2, i64 800, !2, i64 808, !2, i64 816, !2, i64 824, !2, i64 832, !2, i64 840, !2, i64 848, !2, i64 856, !2, i64 864, !2, i64 872}
!7 = !{!"int", !3, i64 0}
!8 = !{!"double", !3, i64 0}
!9 = !{!"short", !3, i64 0}
!10 = !{!11, !2, i64 0}
!11 = !{!"jpeg_memory_mgr", !2, i64 0, !2, i64 8, !2, i64 16, !2, i64 24, !2, i64 32, !2, i64 40, !2, i64 48, !2, i64 56, !2, i64 64, !2, i64 72, !2, i64 80, !12, i64 88, !12, i64 96}
!12 = !{!"long", !3, i64 0}
!13 = !{!6, !2, i64 840}
!14 = !{!15, !2, i64 0}
!15 = !{!"", !16, i64 0, !12, i64 24, !12, i64 32, !7, i64 40, !3, i64 44, !3, i64 60, !7, i64 76, !3, i64 80, !3, i64 208, !3, i64 336}
!16 = !{!"jpeg_entropy_decoder", !2, i64 0, !2, i64 8, !2, i64 16}
!17 = !{!15, !2, i64 16}
!18 = !{!7, !7, i64 0}
!19 = !{!3, !3, i64 0}
!20 = !{!6, !3, i64 316}
!21 = !{!6, !7, i64 56}
!22 = !{!6, !2, i64 192}
!23 = !{!6, !7, i64 756}
!24 = !{!6, !7, i64 760}
!25 = !{!6, !7, i64 784}
!26 = !{!6, !7, i64 448}
!27 = !{!6, !7, i64 764}
!28 = !{!6, !7, i64 768}
!29 = !{!6, !2, i64 0}
!30 = !{!31, !7, i64 40}
!31 = !{!"jpeg_error_mgr", !2, i64 0, !2, i64 8, !2, i64 16, !2, i64 24, !2, i64 32, !7, i64 40, !3, i64 44, !7, i64 124, !12, i64 128, !2, i64 136, !7, i64 144, !2, i64 152, !7, i64 160, !7, i64 164}
!32 = !{!31, !2, i64 0}
!33 = !{!34, !7, i64 4}
!34 = !{!"", !7, i64 0, !7, i64 4, !7, i64 8, !7, i64 12, !7, i64 16, !7, i64 20, !7, i64 24, !7, i64 28, !7, i64 32, !7, i64 36, !7, i64 40, !7, i64 44, !7, i64 48, !3, i64 52, !7, i64 56, !7, i64 60, !7, i64 64, !7, i64 68, !7, i64 72, !7, i64 76, !2, i64 80, !2, i64 88}
!35 = !{!31, !2, i64 8}
!36 = !{!15, !2, i64 8}
!37 = !{!34, !7, i64 20}
!38 = !{!34, !7, i64 24}
!39 = !{!15, !12, i64 24}
!40 = !{!15, !12, i64 32}
!41 = !{!15, !7, i64 40}
!42 = !{!6, !7, i64 372}
!43 = !{!15, !7, i64 76}
!44 = !{!6, !7, i64 496}
!45 = !{!9, !9, i64 0}
!46 = !{!6, !2, i64 776}
!47 = !{!6, !2, i64 832}
!48 = !{!49, !2, i64 16}
!49 = !{!"jpeg_marker_reader", !2, i64 0, !2, i64 8, !2, i64 16, !3, i64 24, !3, i64 28, !7, i64 32, !7, i64 36}
!50 = !{!6, !7, i64 788}
!51 = !{!12, !12, i64 0}
!52 = !{!6, !2, i64 40}
!53 = !{!54, !12, i64 8}
!54 = !{!"jpeg_source_mgr", !2, i64 0, !12, i64 8, !2, i64 16, !2, i64 24, !2, i64 32, !2, i64 40, !2, i64 48}
!55 = !{!54, !2, i64 24}
!56 = !{!54, !2, i64 0}
