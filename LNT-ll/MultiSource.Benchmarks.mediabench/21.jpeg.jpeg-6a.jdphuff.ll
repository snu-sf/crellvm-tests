; ModuleID = './MultiSource.Benchmarks.mediabench/21.jpeg.jpeg-6a.jdphuff.bc'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.jpeg_decompress_struct = type { %struct.jpeg_error_mgr*, %struct.jpeg_memory_mgr*, %struct.jpeg_progress_mgr*, i32, i32, %struct.jpeg_source_mgr*, i32, i32, i32, i32, i32, i32, i32, double, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i8**, i32, i32, i32, i32, i32, [64 x i32]*, [4 x %struct.JQUANT_TBL*], [4 x %struct.JHUFF_TBL*], [4 x %struct.JHUFF_TBL*], i32, %struct.jpeg_component_info*, i32, i32, [16 x i8], [16 x i8], [16 x i8], i32, i32, i8, i16, i16, i32, i8, i32, i32, i32, i32, i32, i8*, i32, [4 x %struct.jpeg_component_info*], i32, i32, i32, [10 x i32], i32, i32, i32, i32, i32, %struct.jpeg_decomp_master*, %struct.jpeg_d_main_controller*, %struct.jpeg_d_coef_controller*, %struct.jpeg_d_post_controller*, %struct.jpeg_input_controller*, %struct.jpeg_marker_reader*, %struct.jpeg_entropy_decoder*, %struct.jpeg_inverse_dct*, %struct.jpeg_upsampler*, %struct.jpeg_color_deconverter*, %struct.jpeg_color_quantizer* }
%struct.jpeg_error_mgr = type { void (%struct.jpeg_common_struct*)*, void (%struct.jpeg_common_struct*, i32)*, void (%struct.jpeg_common_struct*)*, void (%struct.jpeg_common_struct*, i8*)*, void (%struct.jpeg_common_struct*)*, i32, %union.anon, i32, i64, i8**, i32, i8**, i32, i32 }
%struct.jpeg_common_struct = type { %struct.jpeg_error_mgr*, %struct.jpeg_memory_mgr*, %struct.jpeg_progress_mgr*, i32, i32 }
%union.anon = type { [8 x i32], [48 x i8] }
%struct.jpeg_memory_mgr = type { i8* (%struct.jpeg_common_struct*, i32, i64)*, i8* (%struct.jpeg_common_struct*, i32, i64)*, i8** (%struct.jpeg_common_struct*, i32, i32, i32)*, [64 x i16]** (%struct.jpeg_common_struct*, i32, i32, i32)*, %struct.jvirt_sarray_control* (%struct.jpeg_common_struct*, i32, i32, i32, i32, i32)*, %struct.jvirt_barray_control* (%struct.jpeg_common_struct*, i32, i32, i32, i32, i32)*, {}*, i8** (%struct.jpeg_common_struct*, %struct.jvirt_sarray_control*, i32, i32, i32)*, [64 x i16]** (%struct.jpeg_common_struct*, %struct.jvirt_barray_control*, i32, i32, i32)*, void (%struct.jpeg_common_struct*, i32)*, {}*, i64 }
%struct.jvirt_sarray_control = type opaque
%struct.jvirt_barray_control = type opaque
%struct.jpeg_progress_mgr = type { {}*, i64, i64, i32, i32 }
%struct.jpeg_source_mgr = type { i8*, i64, {}*, i32 (%struct.jpeg_decompress_struct*)*, void (%struct.jpeg_decompress_struct*, i64)*, i32 (%struct.jpeg_decompress_struct*, i32)*, {}* }
%struct.JQUANT_TBL = type { [64 x i16], i32 }
%struct.JHUFF_TBL = type { [17 x i8], [256 x i8], i32 }
%struct.jpeg_component_info = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, %struct.JQUANT_TBL*, i8* }
%struct.jpeg_decomp_master = type { {}*, {}*, i32 }
%struct.jpeg_d_main_controller = type { void (%struct.jpeg_decompress_struct*, i32)*, void (%struct.jpeg_decompress_struct*, i8**, i32*, i32)* }
%struct.jpeg_d_coef_controller = type { {}*, i32 (%struct.jpeg_decompress_struct*)*, {}*, i32 (%struct.jpeg_decompress_struct*, i8***)*, %struct.jvirt_barray_control** }
%struct.jpeg_d_post_controller = type { void (%struct.jpeg_decompress_struct*, i32)*, void (%struct.jpeg_decompress_struct*, i8***, i32*, i32, i8**, i32*, i32)* }
%struct.jpeg_input_controller = type { i32 (%struct.jpeg_decompress_struct*)*, {}*, {}*, {}*, i32, i32 }
%struct.jpeg_marker_reader = type { {}*, i32 (%struct.jpeg_decompress_struct*)*, i32 (%struct.jpeg_decompress_struct*)*, i32 (%struct.jpeg_decompress_struct*)*, [16 x i32 (%struct.jpeg_decompress_struct*)*], i32, i32, i32, i32 }
%struct.jpeg_entropy_decoder = type { {}*, i32 (%struct.jpeg_decompress_struct*, [64 x i16]**)* }
%struct.jpeg_inverse_dct = type { {}*, [10 x void (%struct.jpeg_decompress_struct*, %struct.jpeg_component_info*, i16*, i8**, i32)*] }
%struct.jpeg_upsampler = type { {}*, void (%struct.jpeg_decompress_struct*, i8***, i32*, i32, i8**, i32*, i32)*, i32 }
%struct.jpeg_color_deconverter = type { {}*, void (%struct.jpeg_decompress_struct*, i8***, i32, i8**, i32)* }
%struct.jpeg_color_quantizer = type { void (%struct.jpeg_decompress_struct*, i32)*, void (%struct.jpeg_decompress_struct*, i8**, i8**, i32)*, {}*, {}* }
%struct.phuff_entropy_decoder = type { %struct.jpeg_entropy_decoder, %struct.bitread_perm_state, %struct.savable_state, i32, [4 x %struct.d_derived_tbl*], %struct.d_derived_tbl* }
%struct.bitread_perm_state = type { i64, i32, i32 }
%struct.savable_state = type { i32, [4 x i32] }
%struct.d_derived_tbl = type { [17 x i64], [18 x i64], [17 x i32], %struct.JHUFF_TBL*, [256 x i32], [256 x i8] }
%struct.bitread_working_state = type { i8*, i64, i32, i64, i32, %struct.jpeg_decompress_struct*, i32* }

@extend_test = internal constant [16 x i32] [i32 0, i32 1, i32 2, i32 4, i32 8, i32 16, i32 32, i32 64, i32 128, i32 256, i32 512, i32 1024, i32 2048, i32 4096, i32 8192, i32 16384], align 16
@extend_offset = internal constant [16 x i32] [i32 0, i32 -1, i32 -3, i32 -7, i32 -15, i32 -31, i32 -63, i32 -127, i32 -255, i32 -511, i32 -1023, i32 -2047, i32 -4095, i32 -8191, i32 -16383, i32 -32767], align 16
@jpeg_natural_order = external constant [0 x i32], align 4

; Function Attrs: nounwind uwtable
define void @jinit_phuff_decoder(%struct.jpeg_decompress_struct* %cinfo) #0 {
entry:
  %cinfo.addr = alloca %struct.jpeg_decompress_struct*, align 8
  %entropy = alloca %struct.phuff_entropy_decoder*, align 8
  %coef_bit_ptr = alloca i32*, align 8
  %ci = alloca i32, align 4
  %i = alloca i32, align 4
  store %struct.jpeg_decompress_struct* %cinfo, %struct.jpeg_decompress_struct** %cinfo.addr, align 8
  %0 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8
  %mem = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %0, i32 0, i32 1
  %1 = load %struct.jpeg_memory_mgr*, %struct.jpeg_memory_mgr** %mem, align 8
  %alloc_small = getelementptr inbounds %struct.jpeg_memory_mgr, %struct.jpeg_memory_mgr* %1, i32 0, i32 0
  %2 = load i8* (%struct.jpeg_common_struct*, i32, i64)*, i8* (%struct.jpeg_common_struct*, i32, i64)** %alloc_small, align 8
  %3 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8
  %4 = bitcast %struct.jpeg_decompress_struct* %3 to %struct.jpeg_common_struct*
  %call = call i8* %2(%struct.jpeg_common_struct* %4, i32 1, i64 96)
  %5 = bitcast i8* %call to %struct.phuff_entropy_decoder*
  store %struct.phuff_entropy_decoder* %5, %struct.phuff_entropy_decoder** %entropy, align 8
  %6 = load %struct.phuff_entropy_decoder*, %struct.phuff_entropy_decoder** %entropy, align 8
  %7 = bitcast %struct.phuff_entropy_decoder* %6 to %struct.jpeg_entropy_decoder*
  %8 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8
  %entropy1 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %8, i32 0, i32 79
  store %struct.jpeg_entropy_decoder* %7, %struct.jpeg_entropy_decoder** %entropy1, align 8
  %9 = load %struct.phuff_entropy_decoder*, %struct.phuff_entropy_decoder** %entropy, align 8
  %pub = getelementptr inbounds %struct.phuff_entropy_decoder, %struct.phuff_entropy_decoder* %9, i32 0, i32 0
  %start_pass = getelementptr inbounds %struct.jpeg_entropy_decoder, %struct.jpeg_entropy_decoder* %pub, i32 0, i32 0
  %start_pass2 = bitcast {}** %start_pass to void (%struct.jpeg_decompress_struct*)**
  store void (%struct.jpeg_decompress_struct*)* @start_pass_phuff_decoder, void (%struct.jpeg_decompress_struct*)** %start_pass2, align 8
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %10 = load i32, i32* %i, align 4
  %cmp = icmp slt i32 %10, 4
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %11 = load i32, i32* %i, align 4
  %idxprom = sext i32 %11 to i64
  %12 = load %struct.phuff_entropy_decoder*, %struct.phuff_entropy_decoder** %entropy, align 8
  %derived_tbls = getelementptr inbounds %struct.phuff_entropy_decoder, %struct.phuff_entropy_decoder* %12, i32 0, i32 4
  %arrayidx = getelementptr inbounds [4 x %struct.d_derived_tbl*], [4 x %struct.d_derived_tbl*]* %derived_tbls, i32 0, i64 %idxprom
  store %struct.d_derived_tbl* null, %struct.d_derived_tbl** %arrayidx, align 8
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %13 = load i32, i32* %i, align 4
  %inc = add nsw i32 %13, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %14 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8
  %mem3 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %14, i32 0, i32 1
  %15 = load %struct.jpeg_memory_mgr*, %struct.jpeg_memory_mgr** %mem3, align 8
  %alloc_small4 = getelementptr inbounds %struct.jpeg_memory_mgr, %struct.jpeg_memory_mgr* %15, i32 0, i32 0
  %16 = load i8* (%struct.jpeg_common_struct*, i32, i64)*, i8* (%struct.jpeg_common_struct*, i32, i64)** %alloc_small4, align 8
  %17 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8
  %18 = bitcast %struct.jpeg_decompress_struct* %17 to %struct.jpeg_common_struct*
  %19 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8
  %num_components = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %19, i32 0, i32 8
  %20 = load i32, i32* %num_components, align 4
  %mul = mul nsw i32 %20, 64
  %conv = sext i32 %mul to i64
  %mul5 = mul i64 %conv, 4
  %call6 = call i8* %16(%struct.jpeg_common_struct* %18, i32 1, i64 %mul5)
  %21 = bitcast i8* %call6 to [64 x i32]*
  %22 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8
  %coef_bits = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %22, i32 0, i32 38
  store [64 x i32]* %21, [64 x i32]** %coef_bits, align 8
  %23 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8
  %coef_bits7 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %23, i32 0, i32 38
  %24 = load [64 x i32]*, [64 x i32]** %coef_bits7, align 8
  %arrayidx8 = getelementptr inbounds [64 x i32], [64 x i32]* %24, i64 0
  %arrayidx9 = getelementptr inbounds [64 x i32], [64 x i32]* %arrayidx8, i32 0, i64 0
  store i32* %arrayidx9, i32** %coef_bit_ptr, align 8
  store i32 0, i32* %ci, align 4
  br label %for.cond.10

for.cond.10:                                      ; preds = %for.inc.22, %for.end
  %25 = load i32, i32* %ci, align 4
  %26 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8
  %num_components11 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %26, i32 0, i32 8
  %27 = load i32, i32* %num_components11, align 4
  %cmp12 = icmp slt i32 %25, %27
  br i1 %cmp12, label %for.body.14, label %for.end.24

for.body.14:                                      ; preds = %for.cond.10
  store i32 0, i32* %i, align 4
  br label %for.cond.15

for.cond.15:                                      ; preds = %for.inc.19, %for.body.14
  %28 = load i32, i32* %i, align 4
  %cmp16 = icmp slt i32 %28, 64
  br i1 %cmp16, label %for.body.18, label %for.end.21

for.body.18:                                      ; preds = %for.cond.15
  %29 = load i32*, i32** %coef_bit_ptr, align 8
  %incdec.ptr = getelementptr inbounds i32, i32* %29, i32 1
  store i32* %incdec.ptr, i32** %coef_bit_ptr, align 8
  store i32 -1, i32* %29, align 4
  br label %for.inc.19

for.inc.19:                                       ; preds = %for.body.18
  %30 = load i32, i32* %i, align 4
  %inc20 = add nsw i32 %30, 1
  store i32 %inc20, i32* %i, align 4
  br label %for.cond.15

for.end.21:                                       ; preds = %for.cond.15
  br label %for.inc.22

for.inc.22:                                       ; preds = %for.end.21
  %31 = load i32, i32* %ci, align 4
  %inc23 = add nsw i32 %31, 1
  store i32 %inc23, i32* %ci, align 4
  br label %for.cond.10

for.end.24:                                       ; preds = %for.cond.10
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @start_pass_phuff_decoder(%struct.jpeg_decompress_struct* %cinfo) #0 {
entry:
  %cinfo.addr = alloca %struct.jpeg_decompress_struct*, align 8
  %entropy = alloca %struct.phuff_entropy_decoder*, align 8
  %is_DC_band = alloca i32, align 4
  %bad = alloca i32, align 4
  %ci = alloca i32, align 4
  %coefi = alloca i32, align 4
  %tbl = alloca i32, align 4
  %coef_bit_ptr = alloca i32*, align 8
  %compptr = alloca %struct.jpeg_component_info*, align 8
  %cindex = alloca i32, align 4
  %expected = alloca i32, align 4
  store %struct.jpeg_decompress_struct* %cinfo, %struct.jpeg_decompress_struct** %cinfo.addr, align 8
  %0 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8
  %entropy1 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %0, i32 0, i32 79
  %1 = load %struct.jpeg_entropy_decoder*, %struct.jpeg_entropy_decoder** %entropy1, align 8
  %2 = bitcast %struct.jpeg_entropy_decoder* %1 to %struct.phuff_entropy_decoder*
  store %struct.phuff_entropy_decoder* %2, %struct.phuff_entropy_decoder** %entropy, align 8
  %3 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8
  %Ss = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %3, i32 0, i32 68
  %4 = load i32, i32* %Ss, align 4
  %cmp = icmp eq i32 %4, 0
  %conv = zext i1 %cmp to i32
  store i32 %conv, i32* %is_DC_band, align 4
  store i32 0, i32* %bad, align 4
  %5 = load i32, i32* %is_DC_band, align 4
  %tobool = icmp ne i32 %5, 0
  br i1 %tobool, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %6 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8
  %Se = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %6, i32 0, i32 69
  %7 = load i32, i32* %Se, align 4
  %cmp2 = icmp ne i32 %7, 0
  br i1 %cmp2, label %if.then.4, label %if.end

if.then.4:                                        ; preds = %if.then
  store i32 1, i32* %bad, align 4
  br label %if.end

if.end:                                           ; preds = %if.then.4, %if.then
  br label %if.end.18

if.else:                                          ; preds = %entry
  %8 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8
  %Ss5 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %8, i32 0, i32 68
  %9 = load i32, i32* %Ss5, align 4
  %10 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8
  %Se6 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %10, i32 0, i32 69
  %11 = load i32, i32* %Se6, align 4
  %cmp7 = icmp sgt i32 %9, %11
  br i1 %cmp7, label %if.then.12, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.else
  %12 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8
  %Se9 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %12, i32 0, i32 69
  %13 = load i32, i32* %Se9, align 4
  %cmp10 = icmp sge i32 %13, 64
  br i1 %cmp10, label %if.then.12, label %if.end.13

if.then.12:                                       ; preds = %lor.lhs.false, %if.else
  store i32 1, i32* %bad, align 4
  br label %if.end.13

if.end.13:                                        ; preds = %if.then.12, %lor.lhs.false
  %14 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8
  %comps_in_scan = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %14, i32 0, i32 62
  %15 = load i32, i32* %comps_in_scan, align 4
  %cmp14 = icmp ne i32 %15, 1
  br i1 %cmp14, label %if.then.16, label %if.end.17

if.then.16:                                       ; preds = %if.end.13
  store i32 1, i32* %bad, align 4
  br label %if.end.17

if.end.17:                                        ; preds = %if.then.16, %if.end.13
  br label %if.end.18

if.end.18:                                        ; preds = %if.end.17, %if.end
  %16 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8
  %Ah = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %16, i32 0, i32 70
  %17 = load i32, i32* %Ah, align 4
  %cmp19 = icmp ne i32 %17, 0
  br i1 %cmp19, label %if.then.21, label %if.end.27

if.then.21:                                       ; preds = %if.end.18
  %18 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8
  %Al = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %18, i32 0, i32 71
  %19 = load i32, i32* %Al, align 4
  %20 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8
  %Ah22 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %20, i32 0, i32 70
  %21 = load i32, i32* %Ah22, align 4
  %sub = sub nsw i32 %21, 1
  %cmp23 = icmp ne i32 %19, %sub
  br i1 %cmp23, label %if.then.25, label %if.end.26

if.then.25:                                       ; preds = %if.then.21
  store i32 1, i32* %bad, align 4
  br label %if.end.26

if.end.26:                                        ; preds = %if.then.25, %if.then.21
  br label %if.end.27

if.end.27:                                        ; preds = %if.end.26, %if.end.18
  %22 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8
  %Al28 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %22, i32 0, i32 71
  %23 = load i32, i32* %Al28, align 4
  %cmp29 = icmp sgt i32 %23, 13
  br i1 %cmp29, label %if.then.31, label %if.end.32

if.then.31:                                       ; preds = %if.end.27
  store i32 1, i32* %bad, align 4
  br label %if.end.32

if.end.32:                                        ; preds = %if.then.31, %if.end.27
  %24 = load i32, i32* %bad, align 4
  %tobool33 = icmp ne i32 %24, 0
  br i1 %tobool33, label %if.then.34, label %if.end.53

if.then.34:                                       ; preds = %if.end.32
  %25 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8
  %err = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %25, i32 0, i32 0
  %26 = load %struct.jpeg_error_mgr*, %struct.jpeg_error_mgr** %err, align 8
  %msg_code = getelementptr inbounds %struct.jpeg_error_mgr, %struct.jpeg_error_mgr* %26, i32 0, i32 5
  store i32 14, i32* %msg_code, align 4
  %27 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8
  %Ss35 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %27, i32 0, i32 68
  %28 = load i32, i32* %Ss35, align 4
  %29 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8
  %err36 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %29, i32 0, i32 0
  %30 = load %struct.jpeg_error_mgr*, %struct.jpeg_error_mgr** %err36, align 8
  %msg_parm = getelementptr inbounds %struct.jpeg_error_mgr, %struct.jpeg_error_mgr* %30, i32 0, i32 6
  %i = bitcast %union.anon* %msg_parm to [8 x i32]*
  %arrayidx = getelementptr inbounds [8 x i32], [8 x i32]* %i, i32 0, i64 0
  store i32 %28, i32* %arrayidx, align 4
  %31 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8
  %Se37 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %31, i32 0, i32 69
  %32 = load i32, i32* %Se37, align 4
  %33 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8
  %err38 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %33, i32 0, i32 0
  %34 = load %struct.jpeg_error_mgr*, %struct.jpeg_error_mgr** %err38, align 8
  %msg_parm39 = getelementptr inbounds %struct.jpeg_error_mgr, %struct.jpeg_error_mgr* %34, i32 0, i32 6
  %i40 = bitcast %union.anon* %msg_parm39 to [8 x i32]*
  %arrayidx41 = getelementptr inbounds [8 x i32], [8 x i32]* %i40, i32 0, i64 1
  store i32 %32, i32* %arrayidx41, align 4
  %35 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8
  %Ah42 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %35, i32 0, i32 70
  %36 = load i32, i32* %Ah42, align 4
  %37 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8
  %err43 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %37, i32 0, i32 0
  %38 = load %struct.jpeg_error_mgr*, %struct.jpeg_error_mgr** %err43, align 8
  %msg_parm44 = getelementptr inbounds %struct.jpeg_error_mgr, %struct.jpeg_error_mgr* %38, i32 0, i32 6
  %i45 = bitcast %union.anon* %msg_parm44 to [8 x i32]*
  %arrayidx46 = getelementptr inbounds [8 x i32], [8 x i32]* %i45, i32 0, i64 2
  store i32 %36, i32* %arrayidx46, align 4
  %39 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8
  %Al47 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %39, i32 0, i32 71
  %40 = load i32, i32* %Al47, align 4
  %41 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8
  %err48 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %41, i32 0, i32 0
  %42 = load %struct.jpeg_error_mgr*, %struct.jpeg_error_mgr** %err48, align 8
  %msg_parm49 = getelementptr inbounds %struct.jpeg_error_mgr, %struct.jpeg_error_mgr* %42, i32 0, i32 6
  %i50 = bitcast %union.anon* %msg_parm49 to [8 x i32]*
  %arrayidx51 = getelementptr inbounds [8 x i32], [8 x i32]* %i50, i32 0, i64 3
  store i32 %40, i32* %arrayidx51, align 4
  %43 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8
  %err52 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %43, i32 0, i32 0
  %44 = load %struct.jpeg_error_mgr*, %struct.jpeg_error_mgr** %err52, align 8
  %error_exit = getelementptr inbounds %struct.jpeg_error_mgr, %struct.jpeg_error_mgr* %44, i32 0, i32 0
  %45 = load void (%struct.jpeg_common_struct*)*, void (%struct.jpeg_common_struct*)** %error_exit, align 8
  %46 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8
  %47 = bitcast %struct.jpeg_decompress_struct* %46 to %struct.jpeg_common_struct*
  call void %45(%struct.jpeg_common_struct* %47)
  br label %if.end.53

if.end.53:                                        ; preds = %if.then.34, %if.end.32
  store i32 0, i32* %ci, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc.110, %if.end.53
  %48 = load i32, i32* %ci, align 4
  %49 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8
  %comps_in_scan54 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %49, i32 0, i32 62
  %50 = load i32, i32* %comps_in_scan54, align 4
  %cmp55 = icmp slt i32 %48, %50
  br i1 %cmp55, label %for.body, label %for.end.112

for.body:                                         ; preds = %for.cond
  %51 = load i32, i32* %ci, align 4
  %idxprom = sext i32 %51 to i64
  %52 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8
  %cur_comp_info = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %52, i32 0, i32 63
  %arrayidx57 = getelementptr inbounds [4 x %struct.jpeg_component_info*], [4 x %struct.jpeg_component_info*]* %cur_comp_info, i32 0, i64 %idxprom
  %53 = load %struct.jpeg_component_info*, %struct.jpeg_component_info** %arrayidx57, align 8
  %component_index = getelementptr inbounds %struct.jpeg_component_info, %struct.jpeg_component_info* %53, i32 0, i32 1
  %54 = load i32, i32* %component_index, align 4
  store i32 %54, i32* %cindex, align 4
  %55 = load i32, i32* %cindex, align 4
  %idxprom58 = sext i32 %55 to i64
  %56 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8
  %coef_bits = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %56, i32 0, i32 38
  %57 = load [64 x i32]*, [64 x i32]** %coef_bits, align 8
  %arrayidx59 = getelementptr inbounds [64 x i32], [64 x i32]* %57, i64 %idxprom58
  %arrayidx60 = getelementptr inbounds [64 x i32], [64 x i32]* %arrayidx59, i32 0, i64 0
  store i32* %arrayidx60, i32** %coef_bit_ptr, align 8
  %58 = load i32, i32* %is_DC_band, align 4
  %tobool61 = icmp ne i32 %58, 0
  br i1 %tobool61, label %if.end.77, label %land.lhs.true

land.lhs.true:                                    ; preds = %for.body
  %59 = load i32*, i32** %coef_bit_ptr, align 8
  %arrayidx62 = getelementptr inbounds i32, i32* %59, i64 0
  %60 = load i32, i32* %arrayidx62, align 4
  %cmp63 = icmp slt i32 %60, 0
  br i1 %cmp63, label %if.then.65, label %if.end.77

if.then.65:                                       ; preds = %land.lhs.true
  %61 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8
  %err66 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %61, i32 0, i32 0
  %62 = load %struct.jpeg_error_mgr*, %struct.jpeg_error_mgr** %err66, align 8
  %msg_code67 = getelementptr inbounds %struct.jpeg_error_mgr, %struct.jpeg_error_mgr* %62, i32 0, i32 5
  store i32 111, i32* %msg_code67, align 4
  %63 = load i32, i32* %cindex, align 4
  %64 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8
  %err68 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %64, i32 0, i32 0
  %65 = load %struct.jpeg_error_mgr*, %struct.jpeg_error_mgr** %err68, align 8
  %msg_parm69 = getelementptr inbounds %struct.jpeg_error_mgr, %struct.jpeg_error_mgr* %65, i32 0, i32 6
  %i70 = bitcast %union.anon* %msg_parm69 to [8 x i32]*
  %arrayidx71 = getelementptr inbounds [8 x i32], [8 x i32]* %i70, i32 0, i64 0
  store i32 %63, i32* %arrayidx71, align 4
  %66 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8
  %err72 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %66, i32 0, i32 0
  %67 = load %struct.jpeg_error_mgr*, %struct.jpeg_error_mgr** %err72, align 8
  %msg_parm73 = getelementptr inbounds %struct.jpeg_error_mgr, %struct.jpeg_error_mgr* %67, i32 0, i32 6
  %i74 = bitcast %union.anon* %msg_parm73 to [8 x i32]*
  %arrayidx75 = getelementptr inbounds [8 x i32], [8 x i32]* %i74, i32 0, i64 1
  store i32 0, i32* %arrayidx75, align 4
  %68 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8
  %err76 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %68, i32 0, i32 0
  %69 = load %struct.jpeg_error_mgr*, %struct.jpeg_error_mgr** %err76, align 8
  %emit_message = getelementptr inbounds %struct.jpeg_error_mgr, %struct.jpeg_error_mgr* %69, i32 0, i32 1
  %70 = load void (%struct.jpeg_common_struct*, i32)*, void (%struct.jpeg_common_struct*, i32)** %emit_message, align 8
  %71 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8
  %72 = bitcast %struct.jpeg_decompress_struct* %71 to %struct.jpeg_common_struct*
  call void %70(%struct.jpeg_common_struct* %72, i32 -1)
  br label %if.end.77

if.end.77:                                        ; preds = %if.then.65, %land.lhs.true, %for.body
  %73 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8
  %Ss78 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %73, i32 0, i32 68
  %74 = load i32, i32* %Ss78, align 4
  store i32 %74, i32* %coefi, align 4
  br label %for.cond.79

for.cond.79:                                      ; preds = %for.inc, %if.end.77
  %75 = load i32, i32* %coefi, align 4
  %76 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8
  %Se80 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %76, i32 0, i32 69
  %77 = load i32, i32* %Se80, align 4
  %cmp81 = icmp sle i32 %75, %77
  br i1 %cmp81, label %for.body.83, label %for.end

for.body.83:                                      ; preds = %for.cond.79
  %78 = load i32, i32* %coefi, align 4
  %idxprom84 = sext i32 %78 to i64
  %79 = load i32*, i32** %coef_bit_ptr, align 8
  %arrayidx85 = getelementptr inbounds i32, i32* %79, i64 %idxprom84
  %80 = load i32, i32* %arrayidx85, align 4
  %cmp86 = icmp slt i32 %80, 0
  br i1 %cmp86, label %cond.true, label %cond.false

cond.true:                                        ; preds = %for.body.83
  br label %cond.end

cond.false:                                       ; preds = %for.body.83
  %81 = load i32, i32* %coefi, align 4
  %idxprom88 = sext i32 %81 to i64
  %82 = load i32*, i32** %coef_bit_ptr, align 8
  %arrayidx89 = getelementptr inbounds i32, i32* %82, i64 %idxprom88
  %83 = load i32, i32* %arrayidx89, align 4
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ 0, %cond.true ], [ %83, %cond.false ]
  store i32 %cond, i32* %expected, align 4
  %84 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8
  %Ah90 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %84, i32 0, i32 70
  %85 = load i32, i32* %Ah90, align 4
  %86 = load i32, i32* %expected, align 4
  %cmp91 = icmp ne i32 %85, %86
  br i1 %cmp91, label %if.then.93, label %if.end.106

if.then.93:                                       ; preds = %cond.end
  %87 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8
  %err94 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %87, i32 0, i32 0
  %88 = load %struct.jpeg_error_mgr*, %struct.jpeg_error_mgr** %err94, align 8
  %msg_code95 = getelementptr inbounds %struct.jpeg_error_mgr, %struct.jpeg_error_mgr* %88, i32 0, i32 5
  store i32 111, i32* %msg_code95, align 4
  %89 = load i32, i32* %cindex, align 4
  %90 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8
  %err96 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %90, i32 0, i32 0
  %91 = load %struct.jpeg_error_mgr*, %struct.jpeg_error_mgr** %err96, align 8
  %msg_parm97 = getelementptr inbounds %struct.jpeg_error_mgr, %struct.jpeg_error_mgr* %91, i32 0, i32 6
  %i98 = bitcast %union.anon* %msg_parm97 to [8 x i32]*
  %arrayidx99 = getelementptr inbounds [8 x i32], [8 x i32]* %i98, i32 0, i64 0
  store i32 %89, i32* %arrayidx99, align 4
  %92 = load i32, i32* %coefi, align 4
  %93 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8
  %err100 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %93, i32 0, i32 0
  %94 = load %struct.jpeg_error_mgr*, %struct.jpeg_error_mgr** %err100, align 8
  %msg_parm101 = getelementptr inbounds %struct.jpeg_error_mgr, %struct.jpeg_error_mgr* %94, i32 0, i32 6
  %i102 = bitcast %union.anon* %msg_parm101 to [8 x i32]*
  %arrayidx103 = getelementptr inbounds [8 x i32], [8 x i32]* %i102, i32 0, i64 1
  store i32 %92, i32* %arrayidx103, align 4
  %95 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8
  %err104 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %95, i32 0, i32 0
  %96 = load %struct.jpeg_error_mgr*, %struct.jpeg_error_mgr** %err104, align 8
  %emit_message105 = getelementptr inbounds %struct.jpeg_error_mgr, %struct.jpeg_error_mgr* %96, i32 0, i32 1
  %97 = load void (%struct.jpeg_common_struct*, i32)*, void (%struct.jpeg_common_struct*, i32)** %emit_message105, align 8
  %98 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8
  %99 = bitcast %struct.jpeg_decompress_struct* %98 to %struct.jpeg_common_struct*
  call void %97(%struct.jpeg_common_struct* %99, i32 -1)
  br label %if.end.106

if.end.106:                                       ; preds = %if.then.93, %cond.end
  %100 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8
  %Al107 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %100, i32 0, i32 71
  %101 = load i32, i32* %Al107, align 4
  %102 = load i32, i32* %coefi, align 4
  %idxprom108 = sext i32 %102 to i64
  %103 = load i32*, i32** %coef_bit_ptr, align 8
  %arrayidx109 = getelementptr inbounds i32, i32* %103, i64 %idxprom108
  store i32 %101, i32* %arrayidx109, align 4
  br label %for.inc

for.inc:                                          ; preds = %if.end.106
  %104 = load i32, i32* %coefi, align 4
  %inc = add nsw i32 %104, 1
  store i32 %inc, i32* %coefi, align 4
  br label %for.cond.79

for.end:                                          ; preds = %for.cond.79
  br label %for.inc.110

for.inc.110:                                      ; preds = %for.end
  %105 = load i32, i32* %ci, align 4
  %inc111 = add nsw i32 %105, 1
  store i32 %inc111, i32* %ci, align 4
  br label %for.cond

for.end.112:                                      ; preds = %for.cond
  %106 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8
  %Ah113 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %106, i32 0, i32 70
  %107 = load i32, i32* %Ah113, align 4
  %cmp114 = icmp eq i32 %107, 0
  br i1 %cmp114, label %if.then.116, label %if.else.123

if.then.116:                                      ; preds = %for.end.112
  %108 = load i32, i32* %is_DC_band, align 4
  %tobool117 = icmp ne i32 %108, 0
  br i1 %tobool117, label %if.then.118, label %if.else.119

if.then.118:                                      ; preds = %if.then.116
  %109 = load %struct.phuff_entropy_decoder*, %struct.phuff_entropy_decoder** %entropy, align 8
  %pub = getelementptr inbounds %struct.phuff_entropy_decoder, %struct.phuff_entropy_decoder* %109, i32 0, i32 0
  %decode_mcu = getelementptr inbounds %struct.jpeg_entropy_decoder, %struct.jpeg_entropy_decoder* %pub, i32 0, i32 1
  store i32 (%struct.jpeg_decompress_struct*, [64 x i16]**)* @decode_mcu_DC_first, i32 (%struct.jpeg_decompress_struct*, [64 x i16]**)** %decode_mcu, align 8
  br label %if.end.122

if.else.119:                                      ; preds = %if.then.116
  %110 = load %struct.phuff_entropy_decoder*, %struct.phuff_entropy_decoder** %entropy, align 8
  %pub120 = getelementptr inbounds %struct.phuff_entropy_decoder, %struct.phuff_entropy_decoder* %110, i32 0, i32 0
  %decode_mcu121 = getelementptr inbounds %struct.jpeg_entropy_decoder, %struct.jpeg_entropy_decoder* %pub120, i32 0, i32 1
  store i32 (%struct.jpeg_decompress_struct*, [64 x i16]**)* @decode_mcu_AC_first, i32 (%struct.jpeg_decompress_struct*, [64 x i16]**)** %decode_mcu121, align 8
  br label %if.end.122

if.end.122:                                       ; preds = %if.else.119, %if.then.118
  br label %if.end.132

if.else.123:                                      ; preds = %for.end.112
  %111 = load i32, i32* %is_DC_band, align 4
  %tobool124 = icmp ne i32 %111, 0
  br i1 %tobool124, label %if.then.125, label %if.else.128

if.then.125:                                      ; preds = %if.else.123
  %112 = load %struct.phuff_entropy_decoder*, %struct.phuff_entropy_decoder** %entropy, align 8
  %pub126 = getelementptr inbounds %struct.phuff_entropy_decoder, %struct.phuff_entropy_decoder* %112, i32 0, i32 0
  %decode_mcu127 = getelementptr inbounds %struct.jpeg_entropy_decoder, %struct.jpeg_entropy_decoder* %pub126, i32 0, i32 1
  store i32 (%struct.jpeg_decompress_struct*, [64 x i16]**)* @decode_mcu_DC_refine, i32 (%struct.jpeg_decompress_struct*, [64 x i16]**)** %decode_mcu127, align 8
  br label %if.end.131

if.else.128:                                      ; preds = %if.else.123
  %113 = load %struct.phuff_entropy_decoder*, %struct.phuff_entropy_decoder** %entropy, align 8
  %pub129 = getelementptr inbounds %struct.phuff_entropy_decoder, %struct.phuff_entropy_decoder* %113, i32 0, i32 0
  %decode_mcu130 = getelementptr inbounds %struct.jpeg_entropy_decoder, %struct.jpeg_entropy_decoder* %pub129, i32 0, i32 1
  store i32 (%struct.jpeg_decompress_struct*, [64 x i16]**)* @decode_mcu_AC_refine, i32 (%struct.jpeg_decompress_struct*, [64 x i16]**)** %decode_mcu130, align 8
  br label %if.end.131

if.end.131:                                       ; preds = %if.else.128, %if.then.125
  br label %if.end.132

if.end.132:                                       ; preds = %if.end.131, %if.end.122
  store i32 0, i32* %ci, align 4
  br label %for.cond.133

for.cond.133:                                     ; preds = %for.inc.206, %if.end.132
  %114 = load i32, i32* %ci, align 4
  %115 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8
  %comps_in_scan134 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %115, i32 0, i32 62
  %116 = load i32, i32* %comps_in_scan134, align 4
  %cmp135 = icmp slt i32 %114, %116
  br i1 %cmp135, label %for.body.137, label %for.end.208

for.body.137:                                     ; preds = %for.cond.133
  %117 = load i32, i32* %ci, align 4
  %idxprom138 = sext i32 %117 to i64
  %118 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8
  %cur_comp_info139 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %118, i32 0, i32 63
  %arrayidx140 = getelementptr inbounds [4 x %struct.jpeg_component_info*], [4 x %struct.jpeg_component_info*]* %cur_comp_info139, i32 0, i64 %idxprom138
  %119 = load %struct.jpeg_component_info*, %struct.jpeg_component_info** %arrayidx140, align 8
  store %struct.jpeg_component_info* %119, %struct.jpeg_component_info** %compptr, align 8
  %120 = load i32, i32* %is_DC_band, align 4
  %tobool141 = icmp ne i32 %120, 0
  br i1 %tobool141, label %if.then.142, label %if.else.173

if.then.142:                                      ; preds = %for.body.137
  %121 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8
  %Ah143 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %121, i32 0, i32 70
  %122 = load i32, i32* %Ah143, align 4
  %cmp144 = icmp eq i32 %122, 0
  br i1 %cmp144, label %if.then.146, label %if.end.172

if.then.146:                                      ; preds = %if.then.142
  %123 = load %struct.jpeg_component_info*, %struct.jpeg_component_info** %compptr, align 8
  %dc_tbl_no = getelementptr inbounds %struct.jpeg_component_info, %struct.jpeg_component_info* %123, i32 0, i32 5
  %124 = load i32, i32* %dc_tbl_no, align 4
  store i32 %124, i32* %tbl, align 4
  %125 = load i32, i32* %tbl, align 4
  %cmp147 = icmp slt i32 %125, 0
  br i1 %cmp147, label %if.then.157, label %lor.lhs.false.149

lor.lhs.false.149:                                ; preds = %if.then.146
  %126 = load i32, i32* %tbl, align 4
  %cmp150 = icmp sge i32 %126, 4
  br i1 %cmp150, label %if.then.157, label %lor.lhs.false.152

lor.lhs.false.152:                                ; preds = %lor.lhs.false.149
  %127 = load i32, i32* %tbl, align 4
  %idxprom153 = sext i32 %127 to i64
  %128 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8
  %dc_huff_tbl_ptrs = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %128, i32 0, i32 40
  %arrayidx154 = getelementptr inbounds [4 x %struct.JHUFF_TBL*], [4 x %struct.JHUFF_TBL*]* %dc_huff_tbl_ptrs, i32 0, i64 %idxprom153
  %129 = load %struct.JHUFF_TBL*, %struct.JHUFF_TBL** %arrayidx154, align 8
  %cmp155 = icmp eq %struct.JHUFF_TBL* %129, null
  br i1 %cmp155, label %if.then.157, label %if.end.166

if.then.157:                                      ; preds = %lor.lhs.false.152, %lor.lhs.false.149, %if.then.146
  %130 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8
  %err158 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %130, i32 0, i32 0
  %131 = load %struct.jpeg_error_mgr*, %struct.jpeg_error_mgr** %err158, align 8
  %msg_code159 = getelementptr inbounds %struct.jpeg_error_mgr, %struct.jpeg_error_mgr* %131, i32 0, i32 5
  store i32 49, i32* %msg_code159, align 4
  %132 = load i32, i32* %tbl, align 4
  %133 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8
  %err160 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %133, i32 0, i32 0
  %134 = load %struct.jpeg_error_mgr*, %struct.jpeg_error_mgr** %err160, align 8
  %msg_parm161 = getelementptr inbounds %struct.jpeg_error_mgr, %struct.jpeg_error_mgr* %134, i32 0, i32 6
  %i162 = bitcast %union.anon* %msg_parm161 to [8 x i32]*
  %arrayidx163 = getelementptr inbounds [8 x i32], [8 x i32]* %i162, i32 0, i64 0
  store i32 %132, i32* %arrayidx163, align 4
  %135 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8
  %err164 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %135, i32 0, i32 0
  %136 = load %struct.jpeg_error_mgr*, %struct.jpeg_error_mgr** %err164, align 8
  %error_exit165 = getelementptr inbounds %struct.jpeg_error_mgr, %struct.jpeg_error_mgr* %136, i32 0, i32 0
  %137 = load void (%struct.jpeg_common_struct*)*, void (%struct.jpeg_common_struct*)** %error_exit165, align 8
  %138 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8
  %139 = bitcast %struct.jpeg_decompress_struct* %138 to %struct.jpeg_common_struct*
  call void %137(%struct.jpeg_common_struct* %139)
  br label %if.end.166

if.end.166:                                       ; preds = %if.then.157, %lor.lhs.false.152
  %140 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8
  %141 = load i32, i32* %tbl, align 4
  %idxprom167 = sext i32 %141 to i64
  %142 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8
  %dc_huff_tbl_ptrs168 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %142, i32 0, i32 40
  %arrayidx169 = getelementptr inbounds [4 x %struct.JHUFF_TBL*], [4 x %struct.JHUFF_TBL*]* %dc_huff_tbl_ptrs168, i32 0, i64 %idxprom167
  %143 = load %struct.JHUFF_TBL*, %struct.JHUFF_TBL** %arrayidx169, align 8
  %144 = load i32, i32* %tbl, align 4
  %idxprom170 = sext i32 %144 to i64
  %145 = load %struct.phuff_entropy_decoder*, %struct.phuff_entropy_decoder** %entropy, align 8
  %derived_tbls = getelementptr inbounds %struct.phuff_entropy_decoder, %struct.phuff_entropy_decoder* %145, i32 0, i32 4
  %arrayidx171 = getelementptr inbounds [4 x %struct.d_derived_tbl*], [4 x %struct.d_derived_tbl*]* %derived_tbls, i32 0, i64 %idxprom170
  call void @jpeg_make_d_derived_tbl(%struct.jpeg_decompress_struct* %140, %struct.JHUFF_TBL* %143, %struct.d_derived_tbl** %arrayidx171)
  br label %if.end.172

if.end.172:                                       ; preds = %if.end.166, %if.then.142
  br label %if.end.203

if.else.173:                                      ; preds = %for.body.137
  %146 = load %struct.jpeg_component_info*, %struct.jpeg_component_info** %compptr, align 8
  %ac_tbl_no = getelementptr inbounds %struct.jpeg_component_info, %struct.jpeg_component_info* %146, i32 0, i32 6
  %147 = load i32, i32* %ac_tbl_no, align 4
  store i32 %147, i32* %tbl, align 4
  %148 = load i32, i32* %tbl, align 4
  %cmp174 = icmp slt i32 %148, 0
  br i1 %cmp174, label %if.then.184, label %lor.lhs.false.176

lor.lhs.false.176:                                ; preds = %if.else.173
  %149 = load i32, i32* %tbl, align 4
  %cmp177 = icmp sge i32 %149, 4
  br i1 %cmp177, label %if.then.184, label %lor.lhs.false.179

lor.lhs.false.179:                                ; preds = %lor.lhs.false.176
  %150 = load i32, i32* %tbl, align 4
  %idxprom180 = sext i32 %150 to i64
  %151 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8
  %ac_huff_tbl_ptrs = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %151, i32 0, i32 41
  %arrayidx181 = getelementptr inbounds [4 x %struct.JHUFF_TBL*], [4 x %struct.JHUFF_TBL*]* %ac_huff_tbl_ptrs, i32 0, i64 %idxprom180
  %152 = load %struct.JHUFF_TBL*, %struct.JHUFF_TBL** %arrayidx181, align 8
  %cmp182 = icmp eq %struct.JHUFF_TBL* %152, null
  br i1 %cmp182, label %if.then.184, label %if.end.193

if.then.184:                                      ; preds = %lor.lhs.false.179, %lor.lhs.false.176, %if.else.173
  %153 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8
  %err185 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %153, i32 0, i32 0
  %154 = load %struct.jpeg_error_mgr*, %struct.jpeg_error_mgr** %err185, align 8
  %msg_code186 = getelementptr inbounds %struct.jpeg_error_mgr, %struct.jpeg_error_mgr* %154, i32 0, i32 5
  store i32 49, i32* %msg_code186, align 4
  %155 = load i32, i32* %tbl, align 4
  %156 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8
  %err187 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %156, i32 0, i32 0
  %157 = load %struct.jpeg_error_mgr*, %struct.jpeg_error_mgr** %err187, align 8
  %msg_parm188 = getelementptr inbounds %struct.jpeg_error_mgr, %struct.jpeg_error_mgr* %157, i32 0, i32 6
  %i189 = bitcast %union.anon* %msg_parm188 to [8 x i32]*
  %arrayidx190 = getelementptr inbounds [8 x i32], [8 x i32]* %i189, i32 0, i64 0
  store i32 %155, i32* %arrayidx190, align 4
  %158 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8
  %err191 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %158, i32 0, i32 0
  %159 = load %struct.jpeg_error_mgr*, %struct.jpeg_error_mgr** %err191, align 8
  %error_exit192 = getelementptr inbounds %struct.jpeg_error_mgr, %struct.jpeg_error_mgr* %159, i32 0, i32 0
  %160 = load void (%struct.jpeg_common_struct*)*, void (%struct.jpeg_common_struct*)** %error_exit192, align 8
  %161 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8
  %162 = bitcast %struct.jpeg_decompress_struct* %161 to %struct.jpeg_common_struct*
  call void %160(%struct.jpeg_common_struct* %162)
  br label %if.end.193

if.end.193:                                       ; preds = %if.then.184, %lor.lhs.false.179
  %163 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8
  %164 = load i32, i32* %tbl, align 4
  %idxprom194 = sext i32 %164 to i64
  %165 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8
  %ac_huff_tbl_ptrs195 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %165, i32 0, i32 41
  %arrayidx196 = getelementptr inbounds [4 x %struct.JHUFF_TBL*], [4 x %struct.JHUFF_TBL*]* %ac_huff_tbl_ptrs195, i32 0, i64 %idxprom194
  %166 = load %struct.JHUFF_TBL*, %struct.JHUFF_TBL** %arrayidx196, align 8
  %167 = load i32, i32* %tbl, align 4
  %idxprom197 = sext i32 %167 to i64
  %168 = load %struct.phuff_entropy_decoder*, %struct.phuff_entropy_decoder** %entropy, align 8
  %derived_tbls198 = getelementptr inbounds %struct.phuff_entropy_decoder, %struct.phuff_entropy_decoder* %168, i32 0, i32 4
  %arrayidx199 = getelementptr inbounds [4 x %struct.d_derived_tbl*], [4 x %struct.d_derived_tbl*]* %derived_tbls198, i32 0, i64 %idxprom197
  call void @jpeg_make_d_derived_tbl(%struct.jpeg_decompress_struct* %163, %struct.JHUFF_TBL* %166, %struct.d_derived_tbl** %arrayidx199)
  %169 = load i32, i32* %tbl, align 4
  %idxprom200 = sext i32 %169 to i64
  %170 = load %struct.phuff_entropy_decoder*, %struct.phuff_entropy_decoder** %entropy, align 8
  %derived_tbls201 = getelementptr inbounds %struct.phuff_entropy_decoder, %struct.phuff_entropy_decoder* %170, i32 0, i32 4
  %arrayidx202 = getelementptr inbounds [4 x %struct.d_derived_tbl*], [4 x %struct.d_derived_tbl*]* %derived_tbls201, i32 0, i64 %idxprom200
  %171 = load %struct.d_derived_tbl*, %struct.d_derived_tbl** %arrayidx202, align 8
  %172 = load %struct.phuff_entropy_decoder*, %struct.phuff_entropy_decoder** %entropy, align 8
  %ac_derived_tbl = getelementptr inbounds %struct.phuff_entropy_decoder, %struct.phuff_entropy_decoder* %172, i32 0, i32 5
  store %struct.d_derived_tbl* %171, %struct.d_derived_tbl** %ac_derived_tbl, align 8
  br label %if.end.203

if.end.203:                                       ; preds = %if.end.193, %if.end.172
  %173 = load i32, i32* %ci, align 4
  %idxprom204 = sext i32 %173 to i64
  %174 = load %struct.phuff_entropy_decoder*, %struct.phuff_entropy_decoder** %entropy, align 8
  %saved = getelementptr inbounds %struct.phuff_entropy_decoder, %struct.phuff_entropy_decoder* %174, i32 0, i32 2
  %last_dc_val = getelementptr inbounds %struct.savable_state, %struct.savable_state* %saved, i32 0, i32 1
  %arrayidx205 = getelementptr inbounds [4 x i32], [4 x i32]* %last_dc_val, i32 0, i64 %idxprom204
  store i32 0, i32* %arrayidx205, align 4
  br label %for.inc.206

for.inc.206:                                      ; preds = %if.end.203
  %175 = load i32, i32* %ci, align 4
  %inc207 = add nsw i32 %175, 1
  store i32 %inc207, i32* %ci, align 4
  br label %for.cond.133

for.end.208:                                      ; preds = %for.cond.133
  %176 = load %struct.phuff_entropy_decoder*, %struct.phuff_entropy_decoder** %entropy, align 8
  %bitstate = getelementptr inbounds %struct.phuff_entropy_decoder, %struct.phuff_entropy_decoder* %176, i32 0, i32 1
  %bits_left = getelementptr inbounds %struct.bitread_perm_state, %struct.bitread_perm_state* %bitstate, i32 0, i32 1
  store i32 0, i32* %bits_left, align 4
  %177 = load %struct.phuff_entropy_decoder*, %struct.phuff_entropy_decoder** %entropy, align 8
  %bitstate209 = getelementptr inbounds %struct.phuff_entropy_decoder, %struct.phuff_entropy_decoder* %177, i32 0, i32 1
  %get_buffer = getelementptr inbounds %struct.bitread_perm_state, %struct.bitread_perm_state* %bitstate209, i32 0, i32 0
  store i64 0, i64* %get_buffer, align 8
  %178 = load %struct.phuff_entropy_decoder*, %struct.phuff_entropy_decoder** %entropy, align 8
  %bitstate210 = getelementptr inbounds %struct.phuff_entropy_decoder, %struct.phuff_entropy_decoder* %178, i32 0, i32 1
  %printed_eod = getelementptr inbounds %struct.bitread_perm_state, %struct.bitread_perm_state* %bitstate210, i32 0, i32 2
  store i32 0, i32* %printed_eod, align 4
  %179 = load %struct.phuff_entropy_decoder*, %struct.phuff_entropy_decoder** %entropy, align 8
  %saved211 = getelementptr inbounds %struct.phuff_entropy_decoder, %struct.phuff_entropy_decoder* %179, i32 0, i32 2
  %EOBRUN = getelementptr inbounds %struct.savable_state, %struct.savable_state* %saved211, i32 0, i32 0
  store i32 0, i32* %EOBRUN, align 4
  %180 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8
  %restart_interval = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %180, i32 0, i32 49
  %181 = load i32, i32* %restart_interval, align 4
  %182 = load %struct.phuff_entropy_decoder*, %struct.phuff_entropy_decoder** %entropy, align 8
  %restarts_to_go = getelementptr inbounds %struct.phuff_entropy_decoder, %struct.phuff_entropy_decoder* %182, i32 0, i32 3
  store i32 %181, i32* %restarts_to_go, align 4
  ret void
}

; Function Attrs: nounwind uwtable
define internal i32 @decode_mcu_DC_first(%struct.jpeg_decompress_struct* %cinfo, [64 x i16]** %MCU_data) #0 {
entry:
  %retval = alloca i32, align 4
  %cinfo.addr = alloca %struct.jpeg_decompress_struct*, align 8
  %MCU_data.addr = alloca [64 x i16]**, align 8
  %entropy = alloca %struct.phuff_entropy_decoder*, align 8
  %Al = alloca i32, align 4
  %s = alloca i32, align 4
  %r = alloca i32, align 4
  %blkn = alloca i32, align 4
  %ci = alloca i32, align 4
  %block = alloca [64 x i16]*, align 8
  %get_buffer = alloca i64, align 8
  %bits_left = alloca i32, align 4
  %br_state = alloca %struct.bitread_working_state, align 8
  %state = alloca %struct.savable_state, align 4
  %tbl = alloca %struct.d_derived_tbl*, align 8
  %compptr = alloca %struct.jpeg_component_info*, align 8
  %nb = alloca i32, align 4
  %look = alloca i32, align 4
  store %struct.jpeg_decompress_struct* %cinfo, %struct.jpeg_decompress_struct** %cinfo.addr, align 8
  store [64 x i16]** %MCU_data, [64 x i16]*** %MCU_data.addr, align 8
  %0 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8
  %entropy1 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %0, i32 0, i32 79
  %1 = load %struct.jpeg_entropy_decoder*, %struct.jpeg_entropy_decoder** %entropy1, align 8
  %2 = bitcast %struct.jpeg_entropy_decoder* %1 to %struct.phuff_entropy_decoder*
  store %struct.phuff_entropy_decoder* %2, %struct.phuff_entropy_decoder** %entropy, align 8
  %3 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8
  %Al2 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %3, i32 0, i32 71
  %4 = load i32, i32* %Al2, align 4
  store i32 %4, i32* %Al, align 4
  %5 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8
  %restart_interval = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %5, i32 0, i32 49
  %6 = load i32, i32* %restart_interval, align 4
  %tobool = icmp ne i32 %6, 0
  br i1 %tobool, label %if.then, label %if.end.7

if.then:                                          ; preds = %entry
  %7 = load %struct.phuff_entropy_decoder*, %struct.phuff_entropy_decoder** %entropy, align 8
  %restarts_to_go = getelementptr inbounds %struct.phuff_entropy_decoder, %struct.phuff_entropy_decoder* %7, i32 0, i32 3
  %8 = load i32, i32* %restarts_to_go, align 4
  %cmp = icmp eq i32 %8, 0
  br i1 %cmp, label %if.then.3, label %if.end.6

if.then.3:                                        ; preds = %if.then
  %9 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8
  %call = call i32 @process_restart(%struct.jpeg_decompress_struct* %9)
  %tobool4 = icmp ne i32 %call, 0
  br i1 %tobool4, label %if.end, label %if.then.5

if.then.5:                                        ; preds = %if.then.3
  store i32 0, i32* %retval
  br label %return

if.end:                                           ; preds = %if.then.3
  br label %if.end.6

if.end.6:                                         ; preds = %if.end, %if.then
  br label %if.end.7

if.end.7:                                         ; preds = %if.end.6, %entry
  %10 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8
  %cinfo8 = getelementptr inbounds %struct.bitread_working_state, %struct.bitread_working_state* %br_state, i32 0, i32 5
  store %struct.jpeg_decompress_struct* %10, %struct.jpeg_decompress_struct** %cinfo8, align 8
  %11 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8
  %src = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %11, i32 0, i32 5
  %12 = load %struct.jpeg_source_mgr*, %struct.jpeg_source_mgr** %src, align 8
  %next_input_byte = getelementptr inbounds %struct.jpeg_source_mgr, %struct.jpeg_source_mgr* %12, i32 0, i32 0
  %13 = load i8*, i8** %next_input_byte, align 8
  %next_input_byte9 = getelementptr inbounds %struct.bitread_working_state, %struct.bitread_working_state* %br_state, i32 0, i32 0
  store i8* %13, i8** %next_input_byte9, align 8
  %14 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8
  %src10 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %14, i32 0, i32 5
  %15 = load %struct.jpeg_source_mgr*, %struct.jpeg_source_mgr** %src10, align 8
  %bytes_in_buffer = getelementptr inbounds %struct.jpeg_source_mgr, %struct.jpeg_source_mgr* %15, i32 0, i32 1
  %16 = load i64, i64* %bytes_in_buffer, align 8
  %bytes_in_buffer11 = getelementptr inbounds %struct.bitread_working_state, %struct.bitread_working_state* %br_state, i32 0, i32 1
  store i64 %16, i64* %bytes_in_buffer11, align 8
  %17 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8
  %unread_marker = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %17, i32 0, i32 72
  %18 = load i32, i32* %unread_marker, align 4
  %unread_marker12 = getelementptr inbounds %struct.bitread_working_state, %struct.bitread_working_state* %br_state, i32 0, i32 2
  store i32 %18, i32* %unread_marker12, align 4
  %19 = load %struct.phuff_entropy_decoder*, %struct.phuff_entropy_decoder** %entropy, align 8
  %bitstate = getelementptr inbounds %struct.phuff_entropy_decoder, %struct.phuff_entropy_decoder* %19, i32 0, i32 1
  %get_buffer13 = getelementptr inbounds %struct.bitread_perm_state, %struct.bitread_perm_state* %bitstate, i32 0, i32 0
  %20 = load i64, i64* %get_buffer13, align 8
  store i64 %20, i64* %get_buffer, align 8
  %21 = load %struct.phuff_entropy_decoder*, %struct.phuff_entropy_decoder** %entropy, align 8
  %bitstate14 = getelementptr inbounds %struct.phuff_entropy_decoder, %struct.phuff_entropy_decoder* %21, i32 0, i32 1
  %bits_left15 = getelementptr inbounds %struct.bitread_perm_state, %struct.bitread_perm_state* %bitstate14, i32 0, i32 1
  %22 = load i32, i32* %bits_left15, align 4
  store i32 %22, i32* %bits_left, align 4
  %23 = load %struct.phuff_entropy_decoder*, %struct.phuff_entropy_decoder** %entropy, align 8
  %bitstate16 = getelementptr inbounds %struct.phuff_entropy_decoder, %struct.phuff_entropy_decoder* %23, i32 0, i32 1
  %printed_eod = getelementptr inbounds %struct.bitread_perm_state, %struct.bitread_perm_state* %bitstate16, i32 0, i32 2
  %printed_eod_ptr = getelementptr inbounds %struct.bitread_working_state, %struct.bitread_working_state* %br_state, i32 0, i32 6
  store i32* %printed_eod, i32** %printed_eod_ptr, align 8
  %24 = load %struct.phuff_entropy_decoder*, %struct.phuff_entropy_decoder** %entropy, align 8
  %saved = getelementptr inbounds %struct.phuff_entropy_decoder, %struct.phuff_entropy_decoder* %24, i32 0, i32 2
  %25 = bitcast %struct.savable_state* %state to i8*
  %26 = bitcast %struct.savable_state* %saved to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %25, i8* %26, i64 20, i32 4, i1 false)
  store i32 0, i32* %blkn, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end.7
  %27 = load i32, i32* %blkn, align 4
  %28 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8
  %blocks_in_MCU = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %28, i32 0, i32 66
  %29 = load i32, i32* %blocks_in_MCU, align 4
  %cmp17 = icmp slt i32 %27, %29
  br i1 %cmp17, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %30 = load i32, i32* %blkn, align 4
  %idxprom = sext i32 %30 to i64
  %31 = load [64 x i16]**, [64 x i16]*** %MCU_data.addr, align 8
  %arrayidx = getelementptr inbounds [64 x i16]*, [64 x i16]** %31, i64 %idxprom
  %32 = load [64 x i16]*, [64 x i16]** %arrayidx, align 8
  store [64 x i16]* %32, [64 x i16]** %block, align 8
  %33 = load i32, i32* %blkn, align 4
  %idxprom18 = sext i32 %33 to i64
  %34 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8
  %MCU_membership = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %34, i32 0, i32 67
  %arrayidx19 = getelementptr inbounds [10 x i32], [10 x i32]* %MCU_membership, i32 0, i64 %idxprom18
  %35 = load i32, i32* %arrayidx19, align 4
  store i32 %35, i32* %ci, align 4
  %36 = load i32, i32* %ci, align 4
  %idxprom20 = sext i32 %36 to i64
  %37 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8
  %cur_comp_info = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %37, i32 0, i32 63
  %arrayidx21 = getelementptr inbounds [4 x %struct.jpeg_component_info*], [4 x %struct.jpeg_component_info*]* %cur_comp_info, i32 0, i64 %idxprom20
  %38 = load %struct.jpeg_component_info*, %struct.jpeg_component_info** %arrayidx21, align 8
  store %struct.jpeg_component_info* %38, %struct.jpeg_component_info** %compptr, align 8
  %39 = load %struct.jpeg_component_info*, %struct.jpeg_component_info** %compptr, align 8
  %dc_tbl_no = getelementptr inbounds %struct.jpeg_component_info, %struct.jpeg_component_info* %39, i32 0, i32 5
  %40 = load i32, i32* %dc_tbl_no, align 4
  %idxprom22 = sext i32 %40 to i64
  %41 = load %struct.phuff_entropy_decoder*, %struct.phuff_entropy_decoder** %entropy, align 8
  %derived_tbls = getelementptr inbounds %struct.phuff_entropy_decoder, %struct.phuff_entropy_decoder* %41, i32 0, i32 4
  %arrayidx23 = getelementptr inbounds [4 x %struct.d_derived_tbl*], [4 x %struct.d_derived_tbl*]* %derived_tbls, i32 0, i64 %idxprom22
  %42 = load %struct.d_derived_tbl*, %struct.d_derived_tbl** %arrayidx23, align 8
  store %struct.d_derived_tbl* %42, %struct.d_derived_tbl** %tbl, align 8
  %43 = load i32, i32* %bits_left, align 4
  %cmp24 = icmp slt i32 %43, 8
  br i1 %cmp24, label %if.then.25, label %if.end.35

if.then.25:                                       ; preds = %for.body
  %44 = load i64, i64* %get_buffer, align 8
  %45 = load i32, i32* %bits_left, align 4
  %call26 = call i32 @jpeg_fill_bit_buffer(%struct.bitread_working_state* %br_state, i64 %44, i32 %45, i32 0)
  %tobool27 = icmp ne i32 %call26, 0
  br i1 %tobool27, label %if.end.29, label %if.then.28

if.then.28:                                       ; preds = %if.then.25
  store i32 0, i32* %retval
  br label %return

if.end.29:                                        ; preds = %if.then.25
  %get_buffer30 = getelementptr inbounds %struct.bitread_working_state, %struct.bitread_working_state* %br_state, i32 0, i32 3
  %46 = load i64, i64* %get_buffer30, align 8
  store i64 %46, i64* %get_buffer, align 8
  %bits_left31 = getelementptr inbounds %struct.bitread_working_state, %struct.bitread_working_state* %br_state, i32 0, i32 4
  %47 = load i32, i32* %bits_left31, align 4
  store i32 %47, i32* %bits_left, align 4
  %48 = load i32, i32* %bits_left, align 4
  %cmp32 = icmp slt i32 %48, 8
  br i1 %cmp32, label %if.then.33, label %if.end.34

if.then.33:                                       ; preds = %if.end.29
  store i32 1, i32* %nb, align 4
  br label %label1

if.end.34:                                        ; preds = %if.end.29
  br label %if.end.35

if.end.35:                                        ; preds = %if.end.34, %for.body
  %49 = load i64, i64* %get_buffer, align 8
  %50 = load i32, i32* %bits_left, align 4
  %sub = sub nsw i32 %50, 8
  %sh_prom = zext i32 %sub to i64
  %shr = ashr i64 %49, %sh_prom
  %conv = trunc i64 %shr to i32
  %and = and i32 %conv, 255
  store i32 %and, i32* %look, align 4
  %51 = load i32, i32* %look, align 4
  %idxprom36 = sext i32 %51 to i64
  %52 = load %struct.d_derived_tbl*, %struct.d_derived_tbl** %tbl, align 8
  %look_nbits = getelementptr inbounds %struct.d_derived_tbl, %struct.d_derived_tbl* %52, i32 0, i32 4
  %arrayidx37 = getelementptr inbounds [256 x i32], [256 x i32]* %look_nbits, i32 0, i64 %idxprom36
  %53 = load i32, i32* %arrayidx37, align 4
  store i32 %53, i32* %nb, align 4
  %cmp38 = icmp ne i32 %53, 0
  br i1 %cmp38, label %if.then.40, label %if.else

if.then.40:                                       ; preds = %if.end.35
  %54 = load i32, i32* %nb, align 4
  %55 = load i32, i32* %bits_left, align 4
  %sub41 = sub nsw i32 %55, %54
  store i32 %sub41, i32* %bits_left, align 4
  %56 = load i32, i32* %look, align 4
  %idxprom42 = sext i32 %56 to i64
  %57 = load %struct.d_derived_tbl*, %struct.d_derived_tbl** %tbl, align 8
  %look_sym = getelementptr inbounds %struct.d_derived_tbl, %struct.d_derived_tbl* %57, i32 0, i32 5
  %arrayidx43 = getelementptr inbounds [256 x i8], [256 x i8]* %look_sym, i32 0, i64 %idxprom42
  %58 = load i8, i8* %arrayidx43, align 1
  %conv44 = zext i8 %58 to i32
  store i32 %conv44, i32* %s, align 4
  br label %if.end.52

if.else:                                          ; preds = %if.end.35
  store i32 9, i32* %nb, align 4
  br label %label1

label1:                                           ; preds = %if.else, %if.then.33
  %59 = load i64, i64* %get_buffer, align 8
  %60 = load i32, i32* %bits_left, align 4
  %61 = load %struct.d_derived_tbl*, %struct.d_derived_tbl** %tbl, align 8
  %62 = load i32, i32* %nb, align 4
  %call45 = call i32 @jpeg_huff_decode(%struct.bitread_working_state* %br_state, i64 %59, i32 %60, %struct.d_derived_tbl* %61, i32 %62)
  store i32 %call45, i32* %s, align 4
  %cmp46 = icmp slt i32 %call45, 0
  br i1 %cmp46, label %if.then.48, label %if.end.49

if.then.48:                                       ; preds = %label1
  store i32 0, i32* %retval
  br label %return

if.end.49:                                        ; preds = %label1
  %get_buffer50 = getelementptr inbounds %struct.bitread_working_state, %struct.bitread_working_state* %br_state, i32 0, i32 3
  %63 = load i64, i64* %get_buffer50, align 8
  store i64 %63, i64* %get_buffer, align 8
  %bits_left51 = getelementptr inbounds %struct.bitread_working_state, %struct.bitread_working_state* %br_state, i32 0, i32 4
  %64 = load i32, i32* %bits_left51, align 4
  store i32 %64, i32* %bits_left, align 4
  br label %if.end.52

if.end.52:                                        ; preds = %if.end.49, %if.then.40
  %65 = load i32, i32* %s, align 4
  %tobool53 = icmp ne i32 %65, 0
  br i1 %tobool53, label %if.then.54, label %if.end.77

if.then.54:                                       ; preds = %if.end.52
  %66 = load i32, i32* %bits_left, align 4
  %67 = load i32, i32* %s, align 4
  %cmp55 = icmp slt i32 %66, %67
  br i1 %cmp55, label %if.then.57, label %if.end.64

if.then.57:                                       ; preds = %if.then.54
  %68 = load i64, i64* %get_buffer, align 8
  %69 = load i32, i32* %bits_left, align 4
  %70 = load i32, i32* %s, align 4
  %call58 = call i32 @jpeg_fill_bit_buffer(%struct.bitread_working_state* %br_state, i64 %68, i32 %69, i32 %70)
  %tobool59 = icmp ne i32 %call58, 0
  br i1 %tobool59, label %if.end.61, label %if.then.60

if.then.60:                                       ; preds = %if.then.57
  store i32 0, i32* %retval
  br label %return

if.end.61:                                        ; preds = %if.then.57
  %get_buffer62 = getelementptr inbounds %struct.bitread_working_state, %struct.bitread_working_state* %br_state, i32 0, i32 3
  %71 = load i64, i64* %get_buffer62, align 8
  store i64 %71, i64* %get_buffer, align 8
  %bits_left63 = getelementptr inbounds %struct.bitread_working_state, %struct.bitread_working_state* %br_state, i32 0, i32 4
  %72 = load i32, i32* %bits_left63, align 4
  store i32 %72, i32* %bits_left, align 4
  br label %if.end.64

if.end.64:                                        ; preds = %if.end.61, %if.then.54
  %73 = load i64, i64* %get_buffer, align 8
  %74 = load i32, i32* %s, align 4
  %75 = load i32, i32* %bits_left, align 4
  %sub65 = sub nsw i32 %75, %74
  store i32 %sub65, i32* %bits_left, align 4
  %sh_prom66 = zext i32 %sub65 to i64
  %shr67 = ashr i64 %73, %sh_prom66
  %conv68 = trunc i64 %shr67 to i32
  %76 = load i32, i32* %s, align 4
  %shl = shl i32 1, %76
  %sub69 = sub nsw i32 %shl, 1
  %and70 = and i32 %conv68, %sub69
  store i32 %and70, i32* %r, align 4
  %77 = load i32, i32* %r, align 4
  %78 = load i32, i32* %s, align 4
  %idxprom71 = sext i32 %78 to i64
  %arrayidx72 = getelementptr inbounds [16 x i32], [16 x i32]* @extend_test, i32 0, i64 %idxprom71
  %79 = load i32, i32* %arrayidx72, align 4
  %cmp73 = icmp slt i32 %77, %79
  br i1 %cmp73, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.end.64
  %80 = load i32, i32* %r, align 4
  %81 = load i32, i32* %s, align 4
  %idxprom75 = sext i32 %81 to i64
  %arrayidx76 = getelementptr inbounds [16 x i32], [16 x i32]* @extend_offset, i32 0, i64 %idxprom75
  %82 = load i32, i32* %arrayidx76, align 4
  %add = add nsw i32 %80, %82
  br label %cond.end

cond.false:                                       ; preds = %if.end.64
  %83 = load i32, i32* %r, align 4
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %add, %cond.true ], [ %83, %cond.false ]
  store i32 %cond, i32* %s, align 4
  br label %if.end.77

if.end.77:                                        ; preds = %cond.end, %if.end.52
  %84 = load i32, i32* %ci, align 4
  %idxprom78 = sext i32 %84 to i64
  %last_dc_val = getelementptr inbounds %struct.savable_state, %struct.savable_state* %state, i32 0, i32 1
  %arrayidx79 = getelementptr inbounds [4 x i32], [4 x i32]* %last_dc_val, i32 0, i64 %idxprom78
  %85 = load i32, i32* %arrayidx79, align 4
  %86 = load i32, i32* %s, align 4
  %add80 = add nsw i32 %86, %85
  store i32 %add80, i32* %s, align 4
  %87 = load i32, i32* %s, align 4
  %88 = load i32, i32* %ci, align 4
  %idxprom81 = sext i32 %88 to i64
  %last_dc_val82 = getelementptr inbounds %struct.savable_state, %struct.savable_state* %state, i32 0, i32 1
  %arrayidx83 = getelementptr inbounds [4 x i32], [4 x i32]* %last_dc_val82, i32 0, i64 %idxprom81
  store i32 %87, i32* %arrayidx83, align 4
  %89 = load i32, i32* %s, align 4
  %90 = load i32, i32* %Al, align 4
  %shl84 = shl i32 %89, %90
  %conv85 = trunc i32 %shl84 to i16
  %91 = load [64 x i16]*, [64 x i16]** %block, align 8
  %arrayidx86 = getelementptr inbounds [64 x i16], [64 x i16]* %91, i32 0, i64 0
  store i16 %conv85, i16* %arrayidx86, align 2
  br label %for.inc

for.inc:                                          ; preds = %if.end.77
  %92 = load i32, i32* %blkn, align 4
  %inc = add nsw i32 %92, 1
  store i32 %inc, i32* %blkn, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %next_input_byte87 = getelementptr inbounds %struct.bitread_working_state, %struct.bitread_working_state* %br_state, i32 0, i32 0
  %93 = load i8*, i8** %next_input_byte87, align 8
  %94 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8
  %src88 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %94, i32 0, i32 5
  %95 = load %struct.jpeg_source_mgr*, %struct.jpeg_source_mgr** %src88, align 8
  %next_input_byte89 = getelementptr inbounds %struct.jpeg_source_mgr, %struct.jpeg_source_mgr* %95, i32 0, i32 0
  store i8* %93, i8** %next_input_byte89, align 8
  %bytes_in_buffer90 = getelementptr inbounds %struct.bitread_working_state, %struct.bitread_working_state* %br_state, i32 0, i32 1
  %96 = load i64, i64* %bytes_in_buffer90, align 8
  %97 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8
  %src91 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %97, i32 0, i32 5
  %98 = load %struct.jpeg_source_mgr*, %struct.jpeg_source_mgr** %src91, align 8
  %bytes_in_buffer92 = getelementptr inbounds %struct.jpeg_source_mgr, %struct.jpeg_source_mgr* %98, i32 0, i32 1
  store i64 %96, i64* %bytes_in_buffer92, align 8
  %unread_marker93 = getelementptr inbounds %struct.bitread_working_state, %struct.bitread_working_state* %br_state, i32 0, i32 2
  %99 = load i32, i32* %unread_marker93, align 4
  %100 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8
  %unread_marker94 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %100, i32 0, i32 72
  store i32 %99, i32* %unread_marker94, align 4
  %101 = load i64, i64* %get_buffer, align 8
  %102 = load %struct.phuff_entropy_decoder*, %struct.phuff_entropy_decoder** %entropy, align 8
  %bitstate95 = getelementptr inbounds %struct.phuff_entropy_decoder, %struct.phuff_entropy_decoder* %102, i32 0, i32 1
  %get_buffer96 = getelementptr inbounds %struct.bitread_perm_state, %struct.bitread_perm_state* %bitstate95, i32 0, i32 0
  store i64 %101, i64* %get_buffer96, align 8
  %103 = load i32, i32* %bits_left, align 4
  %104 = load %struct.phuff_entropy_decoder*, %struct.phuff_entropy_decoder** %entropy, align 8
  %bitstate97 = getelementptr inbounds %struct.phuff_entropy_decoder, %struct.phuff_entropy_decoder* %104, i32 0, i32 1
  %bits_left98 = getelementptr inbounds %struct.bitread_perm_state, %struct.bitread_perm_state* %bitstate97, i32 0, i32 1
  store i32 %103, i32* %bits_left98, align 4
  %105 = load %struct.phuff_entropy_decoder*, %struct.phuff_entropy_decoder** %entropy, align 8
  %saved99 = getelementptr inbounds %struct.phuff_entropy_decoder, %struct.phuff_entropy_decoder* %105, i32 0, i32 2
  %106 = bitcast %struct.savable_state* %saved99 to i8*
  %107 = bitcast %struct.savable_state* %state to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %106, i8* %107, i64 20, i32 4, i1 false)
  %108 = load %struct.phuff_entropy_decoder*, %struct.phuff_entropy_decoder** %entropy, align 8
  %restarts_to_go100 = getelementptr inbounds %struct.phuff_entropy_decoder, %struct.phuff_entropy_decoder* %108, i32 0, i32 3
  %109 = load i32, i32* %restarts_to_go100, align 4
  %dec = add i32 %109, -1
  store i32 %dec, i32* %restarts_to_go100, align 4
  store i32 1, i32* %retval
  br label %return

return:                                           ; preds = %for.end, %if.then.60, %if.then.48, %if.then.28, %if.then.5
  %110 = load i32, i32* %retval
  ret i32 %110
}

; Function Attrs: nounwind uwtable
define internal i32 @decode_mcu_AC_first(%struct.jpeg_decompress_struct* %cinfo, [64 x i16]** %MCU_data) #0 {
entry:
  %retval = alloca i32, align 4
  %cinfo.addr = alloca %struct.jpeg_decompress_struct*, align 8
  %MCU_data.addr = alloca [64 x i16]**, align 8
  %entropy = alloca %struct.phuff_entropy_decoder*, align 8
  %Se = alloca i32, align 4
  %Al = alloca i32, align 4
  %s = alloca i32, align 4
  %k = alloca i32, align 4
  %r = alloca i32, align 4
  %EOBRUN = alloca i32, align 4
  %block = alloca [64 x i16]*, align 8
  %get_buffer = alloca i64, align 8
  %bits_left = alloca i32, align 4
  %br_state = alloca %struct.bitread_working_state, align 8
  %tbl = alloca %struct.d_derived_tbl*, align 8
  %nb = alloca i32, align 4
  %look = alloca i32, align 4
  store %struct.jpeg_decompress_struct* %cinfo, %struct.jpeg_decompress_struct** %cinfo.addr, align 8
  store [64 x i16]** %MCU_data, [64 x i16]*** %MCU_data.addr, align 8
  %0 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8
  %entropy1 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %0, i32 0, i32 79
  %1 = load %struct.jpeg_entropy_decoder*, %struct.jpeg_entropy_decoder** %entropy1, align 8
  %2 = bitcast %struct.jpeg_entropy_decoder* %1 to %struct.phuff_entropy_decoder*
  store %struct.phuff_entropy_decoder* %2, %struct.phuff_entropy_decoder** %entropy, align 8
  %3 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8
  %Se2 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %3, i32 0, i32 69
  %4 = load i32, i32* %Se2, align 4
  store i32 %4, i32* %Se, align 4
  %5 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8
  %Al3 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %5, i32 0, i32 71
  %6 = load i32, i32* %Al3, align 4
  store i32 %6, i32* %Al, align 4
  %7 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8
  %restart_interval = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %7, i32 0, i32 49
  %8 = load i32, i32* %restart_interval, align 4
  %tobool = icmp ne i32 %8, 0
  br i1 %tobool, label %if.then, label %if.end.8

if.then:                                          ; preds = %entry
  %9 = load %struct.phuff_entropy_decoder*, %struct.phuff_entropy_decoder** %entropy, align 8
  %restarts_to_go = getelementptr inbounds %struct.phuff_entropy_decoder, %struct.phuff_entropy_decoder* %9, i32 0, i32 3
  %10 = load i32, i32* %restarts_to_go, align 4
  %cmp = icmp eq i32 %10, 0
  br i1 %cmp, label %if.then.4, label %if.end.7

if.then.4:                                        ; preds = %if.then
  %11 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8
  %call = call i32 @process_restart(%struct.jpeg_decompress_struct* %11)
  %tobool5 = icmp ne i32 %call, 0
  br i1 %tobool5, label %if.end, label %if.then.6

if.then.6:                                        ; preds = %if.then.4
  store i32 0, i32* %retval
  br label %return

if.end:                                           ; preds = %if.then.4
  br label %if.end.7

if.end.7:                                         ; preds = %if.end, %if.then
  br label %if.end.8

if.end.8:                                         ; preds = %if.end.7, %entry
  %12 = load %struct.phuff_entropy_decoder*, %struct.phuff_entropy_decoder** %entropy, align 8
  %saved = getelementptr inbounds %struct.phuff_entropy_decoder, %struct.phuff_entropy_decoder* %12, i32 0, i32 2
  %EOBRUN9 = getelementptr inbounds %struct.savable_state, %struct.savable_state* %saved, i32 0, i32 0
  %13 = load i32, i32* %EOBRUN9, align 4
  store i32 %13, i32* %EOBRUN, align 4
  %14 = load i32, i32* %EOBRUN, align 4
  %cmp10 = icmp ugt i32 %14, 0
  br i1 %cmp10, label %if.then.11, label %if.else

if.then.11:                                       ; preds = %if.end.8
  %15 = load i32, i32* %EOBRUN, align 4
  %dec = add i32 %15, -1
  store i32 %dec, i32* %EOBRUN, align 4
  br label %if.end.127

if.else:                                          ; preds = %if.end.8
  %16 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8
  %cinfo12 = getelementptr inbounds %struct.bitread_working_state, %struct.bitread_working_state* %br_state, i32 0, i32 5
  store %struct.jpeg_decompress_struct* %16, %struct.jpeg_decompress_struct** %cinfo12, align 8
  %17 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8
  %src = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %17, i32 0, i32 5
  %18 = load %struct.jpeg_source_mgr*, %struct.jpeg_source_mgr** %src, align 8
  %next_input_byte = getelementptr inbounds %struct.jpeg_source_mgr, %struct.jpeg_source_mgr* %18, i32 0, i32 0
  %19 = load i8*, i8** %next_input_byte, align 8
  %next_input_byte13 = getelementptr inbounds %struct.bitread_working_state, %struct.bitread_working_state* %br_state, i32 0, i32 0
  store i8* %19, i8** %next_input_byte13, align 8
  %20 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8
  %src14 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %20, i32 0, i32 5
  %21 = load %struct.jpeg_source_mgr*, %struct.jpeg_source_mgr** %src14, align 8
  %bytes_in_buffer = getelementptr inbounds %struct.jpeg_source_mgr, %struct.jpeg_source_mgr* %21, i32 0, i32 1
  %22 = load i64, i64* %bytes_in_buffer, align 8
  %bytes_in_buffer15 = getelementptr inbounds %struct.bitread_working_state, %struct.bitread_working_state* %br_state, i32 0, i32 1
  store i64 %22, i64* %bytes_in_buffer15, align 8
  %23 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8
  %unread_marker = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %23, i32 0, i32 72
  %24 = load i32, i32* %unread_marker, align 4
  %unread_marker16 = getelementptr inbounds %struct.bitread_working_state, %struct.bitread_working_state* %br_state, i32 0, i32 2
  store i32 %24, i32* %unread_marker16, align 4
  %25 = load %struct.phuff_entropy_decoder*, %struct.phuff_entropy_decoder** %entropy, align 8
  %bitstate = getelementptr inbounds %struct.phuff_entropy_decoder, %struct.phuff_entropy_decoder* %25, i32 0, i32 1
  %get_buffer17 = getelementptr inbounds %struct.bitread_perm_state, %struct.bitread_perm_state* %bitstate, i32 0, i32 0
  %26 = load i64, i64* %get_buffer17, align 8
  store i64 %26, i64* %get_buffer, align 8
  %27 = load %struct.phuff_entropy_decoder*, %struct.phuff_entropy_decoder** %entropy, align 8
  %bitstate18 = getelementptr inbounds %struct.phuff_entropy_decoder, %struct.phuff_entropy_decoder* %27, i32 0, i32 1
  %bits_left19 = getelementptr inbounds %struct.bitread_perm_state, %struct.bitread_perm_state* %bitstate18, i32 0, i32 1
  %28 = load i32, i32* %bits_left19, align 4
  store i32 %28, i32* %bits_left, align 4
  %29 = load %struct.phuff_entropy_decoder*, %struct.phuff_entropy_decoder** %entropy, align 8
  %bitstate20 = getelementptr inbounds %struct.phuff_entropy_decoder, %struct.phuff_entropy_decoder* %29, i32 0, i32 1
  %printed_eod = getelementptr inbounds %struct.bitread_perm_state, %struct.bitread_perm_state* %bitstate20, i32 0, i32 2
  %printed_eod_ptr = getelementptr inbounds %struct.bitread_working_state, %struct.bitread_working_state* %br_state, i32 0, i32 6
  store i32* %printed_eod, i32** %printed_eod_ptr, align 8
  %30 = load [64 x i16]**, [64 x i16]*** %MCU_data.addr, align 8
  %arrayidx = getelementptr inbounds [64 x i16]*, [64 x i16]** %30, i64 0
  %31 = load [64 x i16]*, [64 x i16]** %arrayidx, align 8
  store [64 x i16]* %31, [64 x i16]** %block, align 8
  %32 = load %struct.phuff_entropy_decoder*, %struct.phuff_entropy_decoder** %entropy, align 8
  %ac_derived_tbl = getelementptr inbounds %struct.phuff_entropy_decoder, %struct.phuff_entropy_decoder* %32, i32 0, i32 5
  %33 = load %struct.d_derived_tbl*, %struct.d_derived_tbl** %ac_derived_tbl, align 8
  store %struct.d_derived_tbl* %33, %struct.d_derived_tbl** %tbl, align 8
  %34 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8
  %Ss = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %34, i32 0, i32 68
  %35 = load i32, i32* %Ss, align 4
  store i32 %35, i32* %k, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.else
  %36 = load i32, i32* %k, align 4
  %37 = load i32, i32* %Se, align 4
  %cmp21 = icmp sle i32 %36, %37
  br i1 %cmp21, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %38 = load i32, i32* %bits_left, align 4
  %cmp22 = icmp slt i32 %38, 8
  br i1 %cmp22, label %if.then.23, label %if.end.33

if.then.23:                                       ; preds = %for.body
  %39 = load i64, i64* %get_buffer, align 8
  %40 = load i32, i32* %bits_left, align 4
  %call24 = call i32 @jpeg_fill_bit_buffer(%struct.bitread_working_state* %br_state, i64 %39, i32 %40, i32 0)
  %tobool25 = icmp ne i32 %call24, 0
  br i1 %tobool25, label %if.end.27, label %if.then.26

if.then.26:                                       ; preds = %if.then.23
  store i32 0, i32* %retval
  br label %return

if.end.27:                                        ; preds = %if.then.23
  %get_buffer28 = getelementptr inbounds %struct.bitread_working_state, %struct.bitread_working_state* %br_state, i32 0, i32 3
  %41 = load i64, i64* %get_buffer28, align 8
  store i64 %41, i64* %get_buffer, align 8
  %bits_left29 = getelementptr inbounds %struct.bitread_working_state, %struct.bitread_working_state* %br_state, i32 0, i32 4
  %42 = load i32, i32* %bits_left29, align 4
  store i32 %42, i32* %bits_left, align 4
  %43 = load i32, i32* %bits_left, align 4
  %cmp30 = icmp slt i32 %43, 8
  br i1 %cmp30, label %if.then.31, label %if.end.32

if.then.31:                                       ; preds = %if.end.27
  store i32 1, i32* %nb, align 4
  br label %label2

if.end.32:                                        ; preds = %if.end.27
  br label %if.end.33

if.end.33:                                        ; preds = %if.end.32, %for.body
  %44 = load i64, i64* %get_buffer, align 8
  %45 = load i32, i32* %bits_left, align 4
  %sub = sub nsw i32 %45, 8
  %sh_prom = zext i32 %sub to i64
  %shr = ashr i64 %44, %sh_prom
  %conv = trunc i64 %shr to i32
  %and = and i32 %conv, 255
  store i32 %and, i32* %look, align 4
  %46 = load i32, i32* %look, align 4
  %idxprom = sext i32 %46 to i64
  %47 = load %struct.d_derived_tbl*, %struct.d_derived_tbl** %tbl, align 8
  %look_nbits = getelementptr inbounds %struct.d_derived_tbl, %struct.d_derived_tbl* %47, i32 0, i32 4
  %arrayidx34 = getelementptr inbounds [256 x i32], [256 x i32]* %look_nbits, i32 0, i64 %idxprom
  %48 = load i32, i32* %arrayidx34, align 4
  store i32 %48, i32* %nb, align 4
  %cmp35 = icmp ne i32 %48, 0
  br i1 %cmp35, label %if.then.37, label %if.else.42

if.then.37:                                       ; preds = %if.end.33
  %49 = load i32, i32* %nb, align 4
  %50 = load i32, i32* %bits_left, align 4
  %sub38 = sub nsw i32 %50, %49
  store i32 %sub38, i32* %bits_left, align 4
  %51 = load i32, i32* %look, align 4
  %idxprom39 = sext i32 %51 to i64
  %52 = load %struct.d_derived_tbl*, %struct.d_derived_tbl** %tbl, align 8
  %look_sym = getelementptr inbounds %struct.d_derived_tbl, %struct.d_derived_tbl* %52, i32 0, i32 5
  %arrayidx40 = getelementptr inbounds [256 x i8], [256 x i8]* %look_sym, i32 0, i64 %idxprom39
  %53 = load i8, i8* %arrayidx40, align 1
  %conv41 = zext i8 %53 to i32
  store i32 %conv41, i32* %s, align 4
  br label %if.end.50

if.else.42:                                       ; preds = %if.end.33
  store i32 9, i32* %nb, align 4
  br label %label2

label2:                                           ; preds = %if.else.42, %if.then.31
  %54 = load i64, i64* %get_buffer, align 8
  %55 = load i32, i32* %bits_left, align 4
  %56 = load %struct.d_derived_tbl*, %struct.d_derived_tbl** %tbl, align 8
  %57 = load i32, i32* %nb, align 4
  %call43 = call i32 @jpeg_huff_decode(%struct.bitread_working_state* %br_state, i64 %54, i32 %55, %struct.d_derived_tbl* %56, i32 %57)
  store i32 %call43, i32* %s, align 4
  %cmp44 = icmp slt i32 %call43, 0
  br i1 %cmp44, label %if.then.46, label %if.end.47

if.then.46:                                       ; preds = %label2
  store i32 0, i32* %retval
  br label %return

if.end.47:                                        ; preds = %label2
  %get_buffer48 = getelementptr inbounds %struct.bitread_working_state, %struct.bitread_working_state* %br_state, i32 0, i32 3
  %58 = load i64, i64* %get_buffer48, align 8
  store i64 %58, i64* %get_buffer, align 8
  %bits_left49 = getelementptr inbounds %struct.bitread_working_state, %struct.bitread_working_state* %br_state, i32 0, i32 4
  %59 = load i32, i32* %bits_left49, align 4
  store i32 %59, i32* %bits_left, align 4
  br label %if.end.50

if.end.50:                                        ; preds = %if.end.47, %if.then.37
  %60 = load i32, i32* %s, align 4
  %shr51 = ashr i32 %60, 4
  store i32 %shr51, i32* %r, align 4
  %61 = load i32, i32* %s, align 4
  %and52 = and i32 %61, 15
  store i32 %and52, i32* %s, align 4
  %62 = load i32, i32* %s, align 4
  %tobool53 = icmp ne i32 %62, 0
  br i1 %tobool53, label %if.then.54, label %if.else.84

if.then.54:                                       ; preds = %if.end.50
  %63 = load i32, i32* %r, align 4
  %64 = load i32, i32* %k, align 4
  %add = add nsw i32 %64, %63
  store i32 %add, i32* %k, align 4
  %65 = load i32, i32* %bits_left, align 4
  %66 = load i32, i32* %s, align 4
  %cmp55 = icmp slt i32 %65, %66
  br i1 %cmp55, label %if.then.57, label %if.end.64

if.then.57:                                       ; preds = %if.then.54
  %67 = load i64, i64* %get_buffer, align 8
  %68 = load i32, i32* %bits_left, align 4
  %69 = load i32, i32* %s, align 4
  %call58 = call i32 @jpeg_fill_bit_buffer(%struct.bitread_working_state* %br_state, i64 %67, i32 %68, i32 %69)
  %tobool59 = icmp ne i32 %call58, 0
  br i1 %tobool59, label %if.end.61, label %if.then.60

if.then.60:                                       ; preds = %if.then.57
  store i32 0, i32* %retval
  br label %return

if.end.61:                                        ; preds = %if.then.57
  %get_buffer62 = getelementptr inbounds %struct.bitread_working_state, %struct.bitread_working_state* %br_state, i32 0, i32 3
  %70 = load i64, i64* %get_buffer62, align 8
  store i64 %70, i64* %get_buffer, align 8
  %bits_left63 = getelementptr inbounds %struct.bitread_working_state, %struct.bitread_working_state* %br_state, i32 0, i32 4
  %71 = load i32, i32* %bits_left63, align 4
  store i32 %71, i32* %bits_left, align 4
  br label %if.end.64

if.end.64:                                        ; preds = %if.end.61, %if.then.54
  %72 = load i64, i64* %get_buffer, align 8
  %73 = load i32, i32* %s, align 4
  %74 = load i32, i32* %bits_left, align 4
  %sub65 = sub nsw i32 %74, %73
  store i32 %sub65, i32* %bits_left, align 4
  %sh_prom66 = zext i32 %sub65 to i64
  %shr67 = ashr i64 %72, %sh_prom66
  %conv68 = trunc i64 %shr67 to i32
  %75 = load i32, i32* %s, align 4
  %shl = shl i32 1, %75
  %sub69 = sub nsw i32 %shl, 1
  %and70 = and i32 %conv68, %sub69
  store i32 %and70, i32* %r, align 4
  %76 = load i32, i32* %r, align 4
  %77 = load i32, i32* %s, align 4
  %idxprom71 = sext i32 %77 to i64
  %arrayidx72 = getelementptr inbounds [16 x i32], [16 x i32]* @extend_test, i32 0, i64 %idxprom71
  %78 = load i32, i32* %arrayidx72, align 4
  %cmp73 = icmp slt i32 %76, %78
  br i1 %cmp73, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.end.64
  %79 = load i32, i32* %r, align 4
  %80 = load i32, i32* %s, align 4
  %idxprom75 = sext i32 %80 to i64
  %arrayidx76 = getelementptr inbounds [16 x i32], [16 x i32]* @extend_offset, i32 0, i64 %idxprom75
  %81 = load i32, i32* %arrayidx76, align 4
  %add77 = add nsw i32 %79, %81
  br label %cond.end

cond.false:                                       ; preds = %if.end.64
  %82 = load i32, i32* %r, align 4
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %add77, %cond.true ], [ %82, %cond.false ]
  store i32 %cond, i32* %s, align 4
  %83 = load i32, i32* %s, align 4
  %84 = load i32, i32* %Al, align 4
  %shl78 = shl i32 %83, %84
  %conv79 = trunc i32 %shl78 to i16
  %85 = load i32, i32* %k, align 4
  %idxprom80 = sext i32 %85 to i64
  %arrayidx81 = getelementptr inbounds [0 x i32], [0 x i32]* @jpeg_natural_order, i32 0, i64 %idxprom80
  %86 = load i32, i32* %arrayidx81, align 4
  %idxprom82 = sext i32 %86 to i64
  %87 = load [64 x i16]*, [64 x i16]** %block, align 8
  %arrayidx83 = getelementptr inbounds [64 x i16], [64 x i16]* %87, i32 0, i64 %idxprom82
  store i16 %conv79, i16* %arrayidx83, align 2
  br label %if.end.114

if.else.84:                                       ; preds = %if.end.50
  %88 = load i32, i32* %r, align 4
  %cmp85 = icmp eq i32 %88, 15
  br i1 %cmp85, label %if.then.87, label %if.else.89

if.then.87:                                       ; preds = %if.else.84
  %89 = load i32, i32* %k, align 4
  %add88 = add nsw i32 %89, 15
  store i32 %add88, i32* %k, align 4
  br label %if.end.113

if.else.89:                                       ; preds = %if.else.84
  %90 = load i32, i32* %r, align 4
  %shl90 = shl i32 1, %90
  store i32 %shl90, i32* %EOBRUN, align 4
  %91 = load i32, i32* %r, align 4
  %tobool91 = icmp ne i32 %91, 0
  br i1 %tobool91, label %if.then.92, label %if.end.111

if.then.92:                                       ; preds = %if.else.89
  %92 = load i32, i32* %bits_left, align 4
  %93 = load i32, i32* %r, align 4
  %cmp93 = icmp slt i32 %92, %93
  br i1 %cmp93, label %if.then.95, label %if.end.102

if.then.95:                                       ; preds = %if.then.92
  %94 = load i64, i64* %get_buffer, align 8
  %95 = load i32, i32* %bits_left, align 4
  %96 = load i32, i32* %r, align 4
  %call96 = call i32 @jpeg_fill_bit_buffer(%struct.bitread_working_state* %br_state, i64 %94, i32 %95, i32 %96)
  %tobool97 = icmp ne i32 %call96, 0
  br i1 %tobool97, label %if.end.99, label %if.then.98

if.then.98:                                       ; preds = %if.then.95
  store i32 0, i32* %retval
  br label %return

if.end.99:                                        ; preds = %if.then.95
  %get_buffer100 = getelementptr inbounds %struct.bitread_working_state, %struct.bitread_working_state* %br_state, i32 0, i32 3
  %97 = load i64, i64* %get_buffer100, align 8
  store i64 %97, i64* %get_buffer, align 8
  %bits_left101 = getelementptr inbounds %struct.bitread_working_state, %struct.bitread_working_state* %br_state, i32 0, i32 4
  %98 = load i32, i32* %bits_left101, align 4
  store i32 %98, i32* %bits_left, align 4
  br label %if.end.102

if.end.102:                                       ; preds = %if.end.99, %if.then.92
  %99 = load i64, i64* %get_buffer, align 8
  %100 = load i32, i32* %r, align 4
  %101 = load i32, i32* %bits_left, align 4
  %sub103 = sub nsw i32 %101, %100
  store i32 %sub103, i32* %bits_left, align 4
  %sh_prom104 = zext i32 %sub103 to i64
  %shr105 = ashr i64 %99, %sh_prom104
  %conv106 = trunc i64 %shr105 to i32
  %102 = load i32, i32* %r, align 4
  %shl107 = shl i32 1, %102
  %sub108 = sub nsw i32 %shl107, 1
  %and109 = and i32 %conv106, %sub108
  store i32 %and109, i32* %r, align 4
  %103 = load i32, i32* %r, align 4
  %104 = load i32, i32* %EOBRUN, align 4
  %add110 = add i32 %104, %103
  store i32 %add110, i32* %EOBRUN, align 4
  br label %if.end.111

if.end.111:                                       ; preds = %if.end.102, %if.else.89
  %105 = load i32, i32* %EOBRUN, align 4
  %dec112 = add i32 %105, -1
  store i32 %dec112, i32* %EOBRUN, align 4
  br label %for.end

if.end.113:                                       ; preds = %if.then.87
  br label %if.end.114

if.end.114:                                       ; preds = %if.end.113, %cond.end
  br label %for.inc

for.inc:                                          ; preds = %if.end.114
  %106 = load i32, i32* %k, align 4
  %inc = add nsw i32 %106, 1
  store i32 %inc, i32* %k, align 4
  br label %for.cond

for.end:                                          ; preds = %if.end.111, %for.cond
  %next_input_byte115 = getelementptr inbounds %struct.bitread_working_state, %struct.bitread_working_state* %br_state, i32 0, i32 0
  %107 = load i8*, i8** %next_input_byte115, align 8
  %108 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8
  %src116 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %108, i32 0, i32 5
  %109 = load %struct.jpeg_source_mgr*, %struct.jpeg_source_mgr** %src116, align 8
  %next_input_byte117 = getelementptr inbounds %struct.jpeg_source_mgr, %struct.jpeg_source_mgr* %109, i32 0, i32 0
  store i8* %107, i8** %next_input_byte117, align 8
  %bytes_in_buffer118 = getelementptr inbounds %struct.bitread_working_state, %struct.bitread_working_state* %br_state, i32 0, i32 1
  %110 = load i64, i64* %bytes_in_buffer118, align 8
  %111 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8
  %src119 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %111, i32 0, i32 5
  %112 = load %struct.jpeg_source_mgr*, %struct.jpeg_source_mgr** %src119, align 8
  %bytes_in_buffer120 = getelementptr inbounds %struct.jpeg_source_mgr, %struct.jpeg_source_mgr* %112, i32 0, i32 1
  store i64 %110, i64* %bytes_in_buffer120, align 8
  %unread_marker121 = getelementptr inbounds %struct.bitread_working_state, %struct.bitread_working_state* %br_state, i32 0, i32 2
  %113 = load i32, i32* %unread_marker121, align 4
  %114 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8
  %unread_marker122 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %114, i32 0, i32 72
  store i32 %113, i32* %unread_marker122, align 4
  %115 = load i64, i64* %get_buffer, align 8
  %116 = load %struct.phuff_entropy_decoder*, %struct.phuff_entropy_decoder** %entropy, align 8
  %bitstate123 = getelementptr inbounds %struct.phuff_entropy_decoder, %struct.phuff_entropy_decoder* %116, i32 0, i32 1
  %get_buffer124 = getelementptr inbounds %struct.bitread_perm_state, %struct.bitread_perm_state* %bitstate123, i32 0, i32 0
  store i64 %115, i64* %get_buffer124, align 8
  %117 = load i32, i32* %bits_left, align 4
  %118 = load %struct.phuff_entropy_decoder*, %struct.phuff_entropy_decoder** %entropy, align 8
  %bitstate125 = getelementptr inbounds %struct.phuff_entropy_decoder, %struct.phuff_entropy_decoder* %118, i32 0, i32 1
  %bits_left126 = getelementptr inbounds %struct.bitread_perm_state, %struct.bitread_perm_state* %bitstate125, i32 0, i32 1
  store i32 %117, i32* %bits_left126, align 4
  br label %if.end.127

if.end.127:                                       ; preds = %for.end, %if.then.11
  %119 = load i32, i32* %EOBRUN, align 4
  %120 = load %struct.phuff_entropy_decoder*, %struct.phuff_entropy_decoder** %entropy, align 8
  %saved128 = getelementptr inbounds %struct.phuff_entropy_decoder, %struct.phuff_entropy_decoder* %120, i32 0, i32 2
  %EOBRUN129 = getelementptr inbounds %struct.savable_state, %struct.savable_state* %saved128, i32 0, i32 0
  store i32 %119, i32* %EOBRUN129, align 4
  %121 = load %struct.phuff_entropy_decoder*, %struct.phuff_entropy_decoder** %entropy, align 8
  %restarts_to_go130 = getelementptr inbounds %struct.phuff_entropy_decoder, %struct.phuff_entropy_decoder* %121, i32 0, i32 3
  %122 = load i32, i32* %restarts_to_go130, align 4
  %dec131 = add i32 %122, -1
  store i32 %dec131, i32* %restarts_to_go130, align 4
  store i32 1, i32* %retval
  br label %return

return:                                           ; preds = %if.end.127, %if.then.98, %if.then.60, %if.then.46, %if.then.26, %if.then.6
  %123 = load i32, i32* %retval
  ret i32 %123
}

; Function Attrs: nounwind uwtable
define internal i32 @decode_mcu_DC_refine(%struct.jpeg_decompress_struct* %cinfo, [64 x i16]** %MCU_data) #0 {
entry:
  %retval = alloca i32, align 4
  %cinfo.addr = alloca %struct.jpeg_decompress_struct*, align 8
  %MCU_data.addr = alloca [64 x i16]**, align 8
  %entropy = alloca %struct.phuff_entropy_decoder*, align 8
  %p1 = alloca i32, align 4
  %blkn = alloca i32, align 4
  %block = alloca [64 x i16]*, align 8
  %get_buffer = alloca i64, align 8
  %bits_left = alloca i32, align 4
  %br_state = alloca %struct.bitread_working_state, align 8
  store %struct.jpeg_decompress_struct* %cinfo, %struct.jpeg_decompress_struct** %cinfo.addr, align 8
  store [64 x i16]** %MCU_data, [64 x i16]*** %MCU_data.addr, align 8
  %0 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8
  %entropy1 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %0, i32 0, i32 79
  %1 = load %struct.jpeg_entropy_decoder*, %struct.jpeg_entropy_decoder** %entropy1, align 8
  %2 = bitcast %struct.jpeg_entropy_decoder* %1 to %struct.phuff_entropy_decoder*
  store %struct.phuff_entropy_decoder* %2, %struct.phuff_entropy_decoder** %entropy, align 8
  %3 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8
  %Al = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %3, i32 0, i32 71
  %4 = load i32, i32* %Al, align 4
  %shl = shl i32 1, %4
  store i32 %shl, i32* %p1, align 4
  %5 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8
  %restart_interval = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %5, i32 0, i32 49
  %6 = load i32, i32* %restart_interval, align 4
  %tobool = icmp ne i32 %6, 0
  br i1 %tobool, label %if.then, label %if.end.6

if.then:                                          ; preds = %entry
  %7 = load %struct.phuff_entropy_decoder*, %struct.phuff_entropy_decoder** %entropy, align 8
  %restarts_to_go = getelementptr inbounds %struct.phuff_entropy_decoder, %struct.phuff_entropy_decoder* %7, i32 0, i32 3
  %8 = load i32, i32* %restarts_to_go, align 4
  %cmp = icmp eq i32 %8, 0
  br i1 %cmp, label %if.then.2, label %if.end.5

if.then.2:                                        ; preds = %if.then
  %9 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8
  %call = call i32 @process_restart(%struct.jpeg_decompress_struct* %9)
  %tobool3 = icmp ne i32 %call, 0
  br i1 %tobool3, label %if.end, label %if.then.4

if.then.4:                                        ; preds = %if.then.2
  store i32 0, i32* %retval
  br label %return

if.end:                                           ; preds = %if.then.2
  br label %if.end.5

if.end.5:                                         ; preds = %if.end, %if.then
  br label %if.end.6

if.end.6:                                         ; preds = %if.end.5, %entry
  %10 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8
  %cinfo7 = getelementptr inbounds %struct.bitread_working_state, %struct.bitread_working_state* %br_state, i32 0, i32 5
  store %struct.jpeg_decompress_struct* %10, %struct.jpeg_decompress_struct** %cinfo7, align 8
  %11 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8
  %src = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %11, i32 0, i32 5
  %12 = load %struct.jpeg_source_mgr*, %struct.jpeg_source_mgr** %src, align 8
  %next_input_byte = getelementptr inbounds %struct.jpeg_source_mgr, %struct.jpeg_source_mgr* %12, i32 0, i32 0
  %13 = load i8*, i8** %next_input_byte, align 8
  %next_input_byte8 = getelementptr inbounds %struct.bitread_working_state, %struct.bitread_working_state* %br_state, i32 0, i32 0
  store i8* %13, i8** %next_input_byte8, align 8
  %14 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8
  %src9 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %14, i32 0, i32 5
  %15 = load %struct.jpeg_source_mgr*, %struct.jpeg_source_mgr** %src9, align 8
  %bytes_in_buffer = getelementptr inbounds %struct.jpeg_source_mgr, %struct.jpeg_source_mgr* %15, i32 0, i32 1
  %16 = load i64, i64* %bytes_in_buffer, align 8
  %bytes_in_buffer10 = getelementptr inbounds %struct.bitread_working_state, %struct.bitread_working_state* %br_state, i32 0, i32 1
  store i64 %16, i64* %bytes_in_buffer10, align 8
  %17 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8
  %unread_marker = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %17, i32 0, i32 72
  %18 = load i32, i32* %unread_marker, align 4
  %unread_marker11 = getelementptr inbounds %struct.bitread_working_state, %struct.bitread_working_state* %br_state, i32 0, i32 2
  store i32 %18, i32* %unread_marker11, align 4
  %19 = load %struct.phuff_entropy_decoder*, %struct.phuff_entropy_decoder** %entropy, align 8
  %bitstate = getelementptr inbounds %struct.phuff_entropy_decoder, %struct.phuff_entropy_decoder* %19, i32 0, i32 1
  %get_buffer12 = getelementptr inbounds %struct.bitread_perm_state, %struct.bitread_perm_state* %bitstate, i32 0, i32 0
  %20 = load i64, i64* %get_buffer12, align 8
  store i64 %20, i64* %get_buffer, align 8
  %21 = load %struct.phuff_entropy_decoder*, %struct.phuff_entropy_decoder** %entropy, align 8
  %bitstate13 = getelementptr inbounds %struct.phuff_entropy_decoder, %struct.phuff_entropy_decoder* %21, i32 0, i32 1
  %bits_left14 = getelementptr inbounds %struct.bitread_perm_state, %struct.bitread_perm_state* %bitstate13, i32 0, i32 1
  %22 = load i32, i32* %bits_left14, align 4
  store i32 %22, i32* %bits_left, align 4
  %23 = load %struct.phuff_entropy_decoder*, %struct.phuff_entropy_decoder** %entropy, align 8
  %bitstate15 = getelementptr inbounds %struct.phuff_entropy_decoder, %struct.phuff_entropy_decoder* %23, i32 0, i32 1
  %printed_eod = getelementptr inbounds %struct.bitread_perm_state, %struct.bitread_perm_state* %bitstate15, i32 0, i32 2
  %printed_eod_ptr = getelementptr inbounds %struct.bitread_working_state, %struct.bitread_working_state* %br_state, i32 0, i32 6
  store i32* %printed_eod, i32** %printed_eod_ptr, align 8
  store i32 0, i32* %blkn, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end.6
  %24 = load i32, i32* %blkn, align 4
  %25 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8
  %blocks_in_MCU = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %25, i32 0, i32 66
  %26 = load i32, i32* %blocks_in_MCU, align 4
  %cmp16 = icmp slt i32 %24, %26
  br i1 %cmp16, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %27 = load i32, i32* %blkn, align 4
  %idxprom = sext i32 %27 to i64
  %28 = load [64 x i16]**, [64 x i16]*** %MCU_data.addr, align 8
  %arrayidx = getelementptr inbounds [64 x i16]*, [64 x i16]** %28, i64 %idxprom
  %29 = load [64 x i16]*, [64 x i16]** %arrayidx, align 8
  store [64 x i16]* %29, [64 x i16]** %block, align 8
  %30 = load i32, i32* %bits_left, align 4
  %cmp17 = icmp slt i32 %30, 1
  br i1 %cmp17, label %if.then.18, label %if.end.25

if.then.18:                                       ; preds = %for.body
  %31 = load i64, i64* %get_buffer, align 8
  %32 = load i32, i32* %bits_left, align 4
  %call19 = call i32 @jpeg_fill_bit_buffer(%struct.bitread_working_state* %br_state, i64 %31, i32 %32, i32 1)
  %tobool20 = icmp ne i32 %call19, 0
  br i1 %tobool20, label %if.end.22, label %if.then.21

if.then.21:                                       ; preds = %if.then.18
  store i32 0, i32* %retval
  br label %return

if.end.22:                                        ; preds = %if.then.18
  %get_buffer23 = getelementptr inbounds %struct.bitread_working_state, %struct.bitread_working_state* %br_state, i32 0, i32 3
  %33 = load i64, i64* %get_buffer23, align 8
  store i64 %33, i64* %get_buffer, align 8
  %bits_left24 = getelementptr inbounds %struct.bitread_working_state, %struct.bitread_working_state* %br_state, i32 0, i32 4
  %34 = load i32, i32* %bits_left24, align 4
  store i32 %34, i32* %bits_left, align 4
  br label %if.end.25

if.end.25:                                        ; preds = %if.end.22, %for.body
  %35 = load i64, i64* %get_buffer, align 8
  %36 = load i32, i32* %bits_left, align 4
  %sub = sub nsw i32 %36, 1
  store i32 %sub, i32* %bits_left, align 4
  %sh_prom = zext i32 %sub to i64
  %shr = ashr i64 %35, %sh_prom
  %conv = trunc i64 %shr to i32
  %and = and i32 %conv, 1
  %tobool26 = icmp ne i32 %and, 0
  br i1 %tobool26, label %if.then.27, label %if.end.31

if.then.27:                                       ; preds = %if.end.25
  %37 = load i32, i32* %p1, align 4
  %38 = load [64 x i16]*, [64 x i16]** %block, align 8
  %arrayidx28 = getelementptr inbounds [64 x i16], [64 x i16]* %38, i32 0, i64 0
  %39 = load i16, i16* %arrayidx28, align 2
  %conv29 = sext i16 %39 to i32
  %or = or i32 %conv29, %37
  %conv30 = trunc i32 %or to i16
  store i16 %conv30, i16* %arrayidx28, align 2
  br label %if.end.31

if.end.31:                                        ; preds = %if.then.27, %if.end.25
  br label %for.inc

for.inc:                                          ; preds = %if.end.31
  %40 = load i32, i32* %blkn, align 4
  %inc = add nsw i32 %40, 1
  store i32 %inc, i32* %blkn, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %next_input_byte32 = getelementptr inbounds %struct.bitread_working_state, %struct.bitread_working_state* %br_state, i32 0, i32 0
  %41 = load i8*, i8** %next_input_byte32, align 8
  %42 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8
  %src33 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %42, i32 0, i32 5
  %43 = load %struct.jpeg_source_mgr*, %struct.jpeg_source_mgr** %src33, align 8
  %next_input_byte34 = getelementptr inbounds %struct.jpeg_source_mgr, %struct.jpeg_source_mgr* %43, i32 0, i32 0
  store i8* %41, i8** %next_input_byte34, align 8
  %bytes_in_buffer35 = getelementptr inbounds %struct.bitread_working_state, %struct.bitread_working_state* %br_state, i32 0, i32 1
  %44 = load i64, i64* %bytes_in_buffer35, align 8
  %45 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8
  %src36 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %45, i32 0, i32 5
  %46 = load %struct.jpeg_source_mgr*, %struct.jpeg_source_mgr** %src36, align 8
  %bytes_in_buffer37 = getelementptr inbounds %struct.jpeg_source_mgr, %struct.jpeg_source_mgr* %46, i32 0, i32 1
  store i64 %44, i64* %bytes_in_buffer37, align 8
  %unread_marker38 = getelementptr inbounds %struct.bitread_working_state, %struct.bitread_working_state* %br_state, i32 0, i32 2
  %47 = load i32, i32* %unread_marker38, align 4
  %48 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8
  %unread_marker39 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %48, i32 0, i32 72
  store i32 %47, i32* %unread_marker39, align 4
  %49 = load i64, i64* %get_buffer, align 8
  %50 = load %struct.phuff_entropy_decoder*, %struct.phuff_entropy_decoder** %entropy, align 8
  %bitstate40 = getelementptr inbounds %struct.phuff_entropy_decoder, %struct.phuff_entropy_decoder* %50, i32 0, i32 1
  %get_buffer41 = getelementptr inbounds %struct.bitread_perm_state, %struct.bitread_perm_state* %bitstate40, i32 0, i32 0
  store i64 %49, i64* %get_buffer41, align 8
  %51 = load i32, i32* %bits_left, align 4
  %52 = load %struct.phuff_entropy_decoder*, %struct.phuff_entropy_decoder** %entropy, align 8
  %bitstate42 = getelementptr inbounds %struct.phuff_entropy_decoder, %struct.phuff_entropy_decoder* %52, i32 0, i32 1
  %bits_left43 = getelementptr inbounds %struct.bitread_perm_state, %struct.bitread_perm_state* %bitstate42, i32 0, i32 1
  store i32 %51, i32* %bits_left43, align 4
  %53 = load %struct.phuff_entropy_decoder*, %struct.phuff_entropy_decoder** %entropy, align 8
  %restarts_to_go44 = getelementptr inbounds %struct.phuff_entropy_decoder, %struct.phuff_entropy_decoder* %53, i32 0, i32 3
  %54 = load i32, i32* %restarts_to_go44, align 4
  %dec = add i32 %54, -1
  store i32 %dec, i32* %restarts_to_go44, align 4
  store i32 1, i32* %retval
  br label %return

return:                                           ; preds = %for.end, %if.then.21, %if.then.4
  %55 = load i32, i32* %retval
  ret i32 %55
}

; Function Attrs: nounwind uwtable
define internal i32 @decode_mcu_AC_refine(%struct.jpeg_decompress_struct* %cinfo, [64 x i16]** %MCU_data) #0 {
entry:
  %retval = alloca i32, align 4
  %cinfo.addr = alloca %struct.jpeg_decompress_struct*, align 8
  %MCU_data.addr = alloca [64 x i16]**, align 8
  %entropy = alloca %struct.phuff_entropy_decoder*, align 8
  %Se = alloca i32, align 4
  %p1 = alloca i32, align 4
  %m1 = alloca i32, align 4
  %s = alloca i32, align 4
  %k = alloca i32, align 4
  %r = alloca i32, align 4
  %EOBRUN = alloca i32, align 4
  %block = alloca [64 x i16]*, align 8
  %thiscoef = alloca i16*, align 8
  %get_buffer = alloca i64, align 8
  %bits_left = alloca i32, align 4
  %br_state = alloca %struct.bitread_working_state, align 8
  %tbl = alloca %struct.d_derived_tbl*, align 8
  %num_newnz = alloca i32, align 4
  %newnz_pos = alloca [64 x i32], align 16
  %nb = alloca i32, align 4
  %look = alloca i32, align 4
  %pos = alloca i32, align 4
  store %struct.jpeg_decompress_struct* %cinfo, %struct.jpeg_decompress_struct** %cinfo.addr, align 8
  store [64 x i16]** %MCU_data, [64 x i16]*** %MCU_data.addr, align 8
  %0 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8
  %entropy1 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %0, i32 0, i32 79
  %1 = load %struct.jpeg_entropy_decoder*, %struct.jpeg_entropy_decoder** %entropy1, align 8
  %2 = bitcast %struct.jpeg_entropy_decoder* %1 to %struct.phuff_entropy_decoder*
  store %struct.phuff_entropy_decoder* %2, %struct.phuff_entropy_decoder** %entropy, align 8
  %3 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8
  %Se2 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %3, i32 0, i32 69
  %4 = load i32, i32* %Se2, align 4
  store i32 %4, i32* %Se, align 4
  %5 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8
  %Al = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %5, i32 0, i32 71
  %6 = load i32, i32* %Al, align 4
  %shl = shl i32 1, %6
  store i32 %shl, i32* %p1, align 4
  %7 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8
  %Al3 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %7, i32 0, i32 71
  %8 = load i32, i32* %Al3, align 4
  %shl4 = shl i32 -1, %8
  store i32 %shl4, i32* %m1, align 4
  %9 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8
  %restart_interval = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %9, i32 0, i32 49
  %10 = load i32, i32* %restart_interval, align 4
  %tobool = icmp ne i32 %10, 0
  br i1 %tobool, label %if.then, label %if.end.9

if.then:                                          ; preds = %entry
  %11 = load %struct.phuff_entropy_decoder*, %struct.phuff_entropy_decoder** %entropy, align 8
  %restarts_to_go = getelementptr inbounds %struct.phuff_entropy_decoder, %struct.phuff_entropy_decoder* %11, i32 0, i32 3
  %12 = load i32, i32* %restarts_to_go, align 4
  %cmp = icmp eq i32 %12, 0
  br i1 %cmp, label %if.then.5, label %if.end.8

if.then.5:                                        ; preds = %if.then
  %13 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8
  %call = call i32 @process_restart(%struct.jpeg_decompress_struct* %13)
  %tobool6 = icmp ne i32 %call, 0
  br i1 %tobool6, label %if.end, label %if.then.7

if.then.7:                                        ; preds = %if.then.5
  store i32 0, i32* %retval
  br label %return

if.end:                                           ; preds = %if.then.5
  br label %if.end.8

if.end.8:                                         ; preds = %if.end, %if.then
  br label %if.end.9

if.end.9:                                         ; preds = %if.end.8, %entry
  %14 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8
  %cinfo10 = getelementptr inbounds %struct.bitread_working_state, %struct.bitread_working_state* %br_state, i32 0, i32 5
  store %struct.jpeg_decompress_struct* %14, %struct.jpeg_decompress_struct** %cinfo10, align 8
  %15 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8
  %src = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %15, i32 0, i32 5
  %16 = load %struct.jpeg_source_mgr*, %struct.jpeg_source_mgr** %src, align 8
  %next_input_byte = getelementptr inbounds %struct.jpeg_source_mgr, %struct.jpeg_source_mgr* %16, i32 0, i32 0
  %17 = load i8*, i8** %next_input_byte, align 8
  %next_input_byte11 = getelementptr inbounds %struct.bitread_working_state, %struct.bitread_working_state* %br_state, i32 0, i32 0
  store i8* %17, i8** %next_input_byte11, align 8
  %18 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8
  %src12 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %18, i32 0, i32 5
  %19 = load %struct.jpeg_source_mgr*, %struct.jpeg_source_mgr** %src12, align 8
  %bytes_in_buffer = getelementptr inbounds %struct.jpeg_source_mgr, %struct.jpeg_source_mgr* %19, i32 0, i32 1
  %20 = load i64, i64* %bytes_in_buffer, align 8
  %bytes_in_buffer13 = getelementptr inbounds %struct.bitread_working_state, %struct.bitread_working_state* %br_state, i32 0, i32 1
  store i64 %20, i64* %bytes_in_buffer13, align 8
  %21 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8
  %unread_marker = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %21, i32 0, i32 72
  %22 = load i32, i32* %unread_marker, align 4
  %unread_marker14 = getelementptr inbounds %struct.bitread_working_state, %struct.bitread_working_state* %br_state, i32 0, i32 2
  store i32 %22, i32* %unread_marker14, align 4
  %23 = load %struct.phuff_entropy_decoder*, %struct.phuff_entropy_decoder** %entropy, align 8
  %bitstate = getelementptr inbounds %struct.phuff_entropy_decoder, %struct.phuff_entropy_decoder* %23, i32 0, i32 1
  %get_buffer15 = getelementptr inbounds %struct.bitread_perm_state, %struct.bitread_perm_state* %bitstate, i32 0, i32 0
  %24 = load i64, i64* %get_buffer15, align 8
  store i64 %24, i64* %get_buffer, align 8
  %25 = load %struct.phuff_entropy_decoder*, %struct.phuff_entropy_decoder** %entropy, align 8
  %bitstate16 = getelementptr inbounds %struct.phuff_entropy_decoder, %struct.phuff_entropy_decoder* %25, i32 0, i32 1
  %bits_left17 = getelementptr inbounds %struct.bitread_perm_state, %struct.bitread_perm_state* %bitstate16, i32 0, i32 1
  %26 = load i32, i32* %bits_left17, align 4
  store i32 %26, i32* %bits_left, align 4
  %27 = load %struct.phuff_entropy_decoder*, %struct.phuff_entropy_decoder** %entropy, align 8
  %bitstate18 = getelementptr inbounds %struct.phuff_entropy_decoder, %struct.phuff_entropy_decoder* %27, i32 0, i32 1
  %printed_eod = getelementptr inbounds %struct.bitread_perm_state, %struct.bitread_perm_state* %bitstate18, i32 0, i32 2
  %printed_eod_ptr = getelementptr inbounds %struct.bitread_working_state, %struct.bitread_working_state* %br_state, i32 0, i32 6
  store i32* %printed_eod, i32** %printed_eod_ptr, align 8
  %28 = load %struct.phuff_entropy_decoder*, %struct.phuff_entropy_decoder** %entropy, align 8
  %saved = getelementptr inbounds %struct.phuff_entropy_decoder, %struct.phuff_entropy_decoder* %28, i32 0, i32 2
  %EOBRUN19 = getelementptr inbounds %struct.savable_state, %struct.savable_state* %saved, i32 0, i32 0
  %29 = load i32, i32* %EOBRUN19, align 4
  store i32 %29, i32* %EOBRUN, align 4
  %30 = load [64 x i16]**, [64 x i16]*** %MCU_data.addr, align 8
  %arrayidx = getelementptr inbounds [64 x i16]*, [64 x i16]** %30, i64 0
  %31 = load [64 x i16]*, [64 x i16]** %arrayidx, align 8
  store [64 x i16]* %31, [64 x i16]** %block, align 8
  %32 = load %struct.phuff_entropy_decoder*, %struct.phuff_entropy_decoder** %entropy, align 8
  %ac_derived_tbl = getelementptr inbounds %struct.phuff_entropy_decoder, %struct.phuff_entropy_decoder* %32, i32 0, i32 5
  %33 = load %struct.d_derived_tbl*, %struct.d_derived_tbl** %ac_derived_tbl, align 8
  store %struct.d_derived_tbl* %33, %struct.d_derived_tbl** %tbl, align 8
  store i32 0, i32* %num_newnz, align 4
  %34 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8
  %Ss = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %34, i32 0, i32 68
  %35 = load i32, i32* %Ss, align 4
  store i32 %35, i32* %k, align 4
  %36 = load i32, i32* %EOBRUN, align 4
  %cmp20 = icmp eq i32 %36, 0
  br i1 %cmp20, label %if.then.21, label %if.end.168

if.then.21:                                       ; preds = %if.end.9
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.then.21
  %37 = load i32, i32* %k, align 4
  %38 = load i32, i32* %Se, align 4
  %cmp22 = icmp sle i32 %37, %38
  br i1 %cmp22, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %39 = load i32, i32* %bits_left, align 4
  %cmp23 = icmp slt i32 %39, 8
  br i1 %cmp23, label %if.then.24, label %if.end.34

if.then.24:                                       ; preds = %for.body
  %40 = load i64, i64* %get_buffer, align 8
  %41 = load i32, i32* %bits_left, align 4
  %call25 = call i32 @jpeg_fill_bit_buffer(%struct.bitread_working_state* %br_state, i64 %40, i32 %41, i32 0)
  %tobool26 = icmp ne i32 %call25, 0
  br i1 %tobool26, label %if.end.28, label %if.then.27

if.then.27:                                       ; preds = %if.then.24
  br label %undoit

if.end.28:                                        ; preds = %if.then.24
  %get_buffer29 = getelementptr inbounds %struct.bitread_working_state, %struct.bitread_working_state* %br_state, i32 0, i32 3
  %42 = load i64, i64* %get_buffer29, align 8
  store i64 %42, i64* %get_buffer, align 8
  %bits_left30 = getelementptr inbounds %struct.bitread_working_state, %struct.bitread_working_state* %br_state, i32 0, i32 4
  %43 = load i32, i32* %bits_left30, align 4
  store i32 %43, i32* %bits_left, align 4
  %44 = load i32, i32* %bits_left, align 4
  %cmp31 = icmp slt i32 %44, 8
  br i1 %cmp31, label %if.then.32, label %if.end.33

if.then.32:                                       ; preds = %if.end.28
  store i32 1, i32* %nb, align 4
  br label %label3

if.end.33:                                        ; preds = %if.end.28
  br label %if.end.34

if.end.34:                                        ; preds = %if.end.33, %for.body
  %45 = load i64, i64* %get_buffer, align 8
  %46 = load i32, i32* %bits_left, align 4
  %sub = sub nsw i32 %46, 8
  %sh_prom = zext i32 %sub to i64
  %shr = ashr i64 %45, %sh_prom
  %conv = trunc i64 %shr to i32
  %and = and i32 %conv, 255
  store i32 %and, i32* %look, align 4
  %47 = load i32, i32* %look, align 4
  %idxprom = sext i32 %47 to i64
  %48 = load %struct.d_derived_tbl*, %struct.d_derived_tbl** %tbl, align 8
  %look_nbits = getelementptr inbounds %struct.d_derived_tbl, %struct.d_derived_tbl* %48, i32 0, i32 4
  %arrayidx35 = getelementptr inbounds [256 x i32], [256 x i32]* %look_nbits, i32 0, i64 %idxprom
  %49 = load i32, i32* %arrayidx35, align 4
  store i32 %49, i32* %nb, align 4
  %cmp36 = icmp ne i32 %49, 0
  br i1 %cmp36, label %if.then.38, label %if.else

if.then.38:                                       ; preds = %if.end.34
  %50 = load i32, i32* %nb, align 4
  %51 = load i32, i32* %bits_left, align 4
  %sub39 = sub nsw i32 %51, %50
  store i32 %sub39, i32* %bits_left, align 4
  %52 = load i32, i32* %look, align 4
  %idxprom40 = sext i32 %52 to i64
  %53 = load %struct.d_derived_tbl*, %struct.d_derived_tbl** %tbl, align 8
  %look_sym = getelementptr inbounds %struct.d_derived_tbl, %struct.d_derived_tbl* %53, i32 0, i32 5
  %arrayidx41 = getelementptr inbounds [256 x i8], [256 x i8]* %look_sym, i32 0, i64 %idxprom40
  %54 = load i8, i8* %arrayidx41, align 1
  %conv42 = zext i8 %54 to i32
  store i32 %conv42, i32* %s, align 4
  br label %if.end.50

if.else:                                          ; preds = %if.end.34
  store i32 9, i32* %nb, align 4
  br label %label3

label3:                                           ; preds = %if.else, %if.then.32
  %55 = load i64, i64* %get_buffer, align 8
  %56 = load i32, i32* %bits_left, align 4
  %57 = load %struct.d_derived_tbl*, %struct.d_derived_tbl** %tbl, align 8
  %58 = load i32, i32* %nb, align 4
  %call43 = call i32 @jpeg_huff_decode(%struct.bitread_working_state* %br_state, i64 %55, i32 %56, %struct.d_derived_tbl* %57, i32 %58)
  store i32 %call43, i32* %s, align 4
  %cmp44 = icmp slt i32 %call43, 0
  br i1 %cmp44, label %if.then.46, label %if.end.47

if.then.46:                                       ; preds = %label3
  br label %undoit

if.end.47:                                        ; preds = %label3
  %get_buffer48 = getelementptr inbounds %struct.bitread_working_state, %struct.bitread_working_state* %br_state, i32 0, i32 3
  %59 = load i64, i64* %get_buffer48, align 8
  store i64 %59, i64* %get_buffer, align 8
  %bits_left49 = getelementptr inbounds %struct.bitread_working_state, %struct.bitread_working_state* %br_state, i32 0, i32 4
  %60 = load i32, i32* %bits_left49, align 4
  store i32 %60, i32* %bits_left, align 4
  br label %if.end.50

if.end.50:                                        ; preds = %if.end.47, %if.then.38
  %61 = load i32, i32* %s, align 4
  %shr51 = ashr i32 %61, 4
  store i32 %shr51, i32* %r, align 4
  %62 = load i32, i32* %s, align 4
  %and52 = and i32 %62, 15
  store i32 %and52, i32* %s, align 4
  %63 = load i32, i32* %s, align 4
  %tobool53 = icmp ne i32 %63, 0
  br i1 %tobool53, label %if.then.54, label %if.else.79

if.then.54:                                       ; preds = %if.end.50
  %64 = load i32, i32* %s, align 4
  %cmp55 = icmp ne i32 %64, 1
  br i1 %cmp55, label %if.then.57, label %if.end.59

if.then.57:                                       ; preds = %if.then.54
  %65 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8
  %err = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %65, i32 0, i32 0
  %66 = load %struct.jpeg_error_mgr*, %struct.jpeg_error_mgr** %err, align 8
  %msg_code = getelementptr inbounds %struct.jpeg_error_mgr, %struct.jpeg_error_mgr* %66, i32 0, i32 5
  store i32 114, i32* %msg_code, align 4
  %67 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8
  %err58 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %67, i32 0, i32 0
  %68 = load %struct.jpeg_error_mgr*, %struct.jpeg_error_mgr** %err58, align 8
  %emit_message = getelementptr inbounds %struct.jpeg_error_mgr, %struct.jpeg_error_mgr* %68, i32 0, i32 1
  %69 = load void (%struct.jpeg_common_struct*, i32)*, void (%struct.jpeg_common_struct*, i32)** %emit_message, align 8
  %70 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8
  %71 = bitcast %struct.jpeg_decompress_struct* %70 to %struct.jpeg_common_struct*
  call void %69(%struct.jpeg_common_struct* %71, i32 -1)
  br label %if.end.59

if.end.59:                                        ; preds = %if.then.57, %if.then.54
  %72 = load i32, i32* %bits_left, align 4
  %cmp60 = icmp slt i32 %72, 1
  br i1 %cmp60, label %if.then.62, label %if.end.69

if.then.62:                                       ; preds = %if.end.59
  %73 = load i64, i64* %get_buffer, align 8
  %74 = load i32, i32* %bits_left, align 4
  %call63 = call i32 @jpeg_fill_bit_buffer(%struct.bitread_working_state* %br_state, i64 %73, i32 %74, i32 1)
  %tobool64 = icmp ne i32 %call63, 0
  br i1 %tobool64, label %if.end.66, label %if.then.65

if.then.65:                                       ; preds = %if.then.62
  br label %undoit

if.end.66:                                        ; preds = %if.then.62
  %get_buffer67 = getelementptr inbounds %struct.bitread_working_state, %struct.bitread_working_state* %br_state, i32 0, i32 3
  %75 = load i64, i64* %get_buffer67, align 8
  store i64 %75, i64* %get_buffer, align 8
  %bits_left68 = getelementptr inbounds %struct.bitread_working_state, %struct.bitread_working_state* %br_state, i32 0, i32 4
  %76 = load i32, i32* %bits_left68, align 4
  store i32 %76, i32* %bits_left, align 4
  br label %if.end.69

if.end.69:                                        ; preds = %if.end.66, %if.end.59
  %77 = load i64, i64* %get_buffer, align 8
  %78 = load i32, i32* %bits_left, align 4
  %sub70 = sub nsw i32 %78, 1
  store i32 %sub70, i32* %bits_left, align 4
  %sh_prom71 = zext i32 %sub70 to i64
  %shr72 = ashr i64 %77, %sh_prom71
  %conv73 = trunc i64 %shr72 to i32
  %and74 = and i32 %conv73, 1
  %tobool75 = icmp ne i32 %and74, 0
  br i1 %tobool75, label %if.then.76, label %if.else.77

if.then.76:                                       ; preds = %if.end.69
  %79 = load i32, i32* %p1, align 4
  store i32 %79, i32* %s, align 4
  br label %if.end.78

if.else.77:                                       ; preds = %if.end.69
  %80 = load i32, i32* %m1, align 4
  store i32 %80, i32* %s, align 4
  br label %if.end.78

if.end.78:                                        ; preds = %if.else.77, %if.then.76
  br label %if.end.105

if.else.79:                                       ; preds = %if.end.50
  %81 = load i32, i32* %r, align 4
  %cmp80 = icmp ne i32 %81, 15
  br i1 %cmp80, label %if.then.82, label %if.end.104

if.then.82:                                       ; preds = %if.else.79
  %82 = load i32, i32* %r, align 4
  %shl83 = shl i32 1, %82
  store i32 %shl83, i32* %EOBRUN, align 4
  %83 = load i32, i32* %r, align 4
  %tobool84 = icmp ne i32 %83, 0
  br i1 %tobool84, label %if.then.85, label %if.end.103

if.then.85:                                       ; preds = %if.then.82
  %84 = load i32, i32* %bits_left, align 4
  %85 = load i32, i32* %r, align 4
  %cmp86 = icmp slt i32 %84, %85
  br i1 %cmp86, label %if.then.88, label %if.end.95

if.then.88:                                       ; preds = %if.then.85
  %86 = load i64, i64* %get_buffer, align 8
  %87 = load i32, i32* %bits_left, align 4
  %88 = load i32, i32* %r, align 4
  %call89 = call i32 @jpeg_fill_bit_buffer(%struct.bitread_working_state* %br_state, i64 %86, i32 %87, i32 %88)
  %tobool90 = icmp ne i32 %call89, 0
  br i1 %tobool90, label %if.end.92, label %if.then.91

if.then.91:                                       ; preds = %if.then.88
  br label %undoit

if.end.92:                                        ; preds = %if.then.88
  %get_buffer93 = getelementptr inbounds %struct.bitread_working_state, %struct.bitread_working_state* %br_state, i32 0, i32 3
  %89 = load i64, i64* %get_buffer93, align 8
  store i64 %89, i64* %get_buffer, align 8
  %bits_left94 = getelementptr inbounds %struct.bitread_working_state, %struct.bitread_working_state* %br_state, i32 0, i32 4
  %90 = load i32, i32* %bits_left94, align 4
  store i32 %90, i32* %bits_left, align 4
  br label %if.end.95

if.end.95:                                        ; preds = %if.end.92, %if.then.85
  %91 = load i64, i64* %get_buffer, align 8
  %92 = load i32, i32* %r, align 4
  %93 = load i32, i32* %bits_left, align 4
  %sub96 = sub nsw i32 %93, %92
  store i32 %sub96, i32* %bits_left, align 4
  %sh_prom97 = zext i32 %sub96 to i64
  %shr98 = ashr i64 %91, %sh_prom97
  %conv99 = trunc i64 %shr98 to i32
  %94 = load i32, i32* %r, align 4
  %shl100 = shl i32 1, %94
  %sub101 = sub nsw i32 %shl100, 1
  %and102 = and i32 %conv99, %sub101
  store i32 %and102, i32* %r, align 4
  %95 = load i32, i32* %r, align 4
  %96 = load i32, i32* %EOBRUN, align 4
  %add = add i32 %96, %95
  store i32 %add, i32* %EOBRUN, align 4
  br label %if.end.103

if.end.103:                                       ; preds = %if.end.95, %if.then.82
  br label %for.end

if.end.104:                                       ; preds = %if.else.79
  br label %if.end.105

if.end.105:                                       ; preds = %if.end.104, %if.end.78
  br label %do.body

do.body:                                          ; preds = %do.cond, %if.end.105
  %97 = load [64 x i16]*, [64 x i16]** %block, align 8
  %arraydecay = getelementptr inbounds [64 x i16], [64 x i16]* %97, i32 0, i32 0
  %98 = load i32, i32* %k, align 4
  %idxprom106 = sext i32 %98 to i64
  %arrayidx107 = getelementptr inbounds [0 x i32], [0 x i32]* @jpeg_natural_order, i32 0, i64 %idxprom106
  %99 = load i32, i32* %arrayidx107, align 4
  %idx.ext = sext i32 %99 to i64
  %add.ptr = getelementptr inbounds i16, i16* %arraydecay, i64 %idx.ext
  store i16* %add.ptr, i16** %thiscoef, align 8
  %100 = load i16*, i16** %thiscoef, align 8
  %101 = load i16, i16* %100, align 2
  %conv108 = sext i16 %101 to i32
  %cmp109 = icmp ne i32 %conv108, 0
  br i1 %cmp109, label %if.then.111, label %if.else.148

if.then.111:                                      ; preds = %do.body
  %102 = load i32, i32* %bits_left, align 4
  %cmp112 = icmp slt i32 %102, 1
  br i1 %cmp112, label %if.then.114, label %if.end.121

if.then.114:                                      ; preds = %if.then.111
  %103 = load i64, i64* %get_buffer, align 8
  %104 = load i32, i32* %bits_left, align 4
  %call115 = call i32 @jpeg_fill_bit_buffer(%struct.bitread_working_state* %br_state, i64 %103, i32 %104, i32 1)
  %tobool116 = icmp ne i32 %call115, 0
  br i1 %tobool116, label %if.end.118, label %if.then.117

if.then.117:                                      ; preds = %if.then.114
  br label %undoit

if.end.118:                                       ; preds = %if.then.114
  %get_buffer119 = getelementptr inbounds %struct.bitread_working_state, %struct.bitread_working_state* %br_state, i32 0, i32 3
  %105 = load i64, i64* %get_buffer119, align 8
  store i64 %105, i64* %get_buffer, align 8
  %bits_left120 = getelementptr inbounds %struct.bitread_working_state, %struct.bitread_working_state* %br_state, i32 0, i32 4
  %106 = load i32, i32* %bits_left120, align 4
  store i32 %106, i32* %bits_left, align 4
  br label %if.end.121

if.end.121:                                       ; preds = %if.end.118, %if.then.111
  %107 = load i64, i64* %get_buffer, align 8
  %108 = load i32, i32* %bits_left, align 4
  %sub122 = sub nsw i32 %108, 1
  store i32 %sub122, i32* %bits_left, align 4
  %sh_prom123 = zext i32 %sub122 to i64
  %shr124 = ashr i64 %107, %sh_prom123
  %conv125 = trunc i64 %shr124 to i32
  %and126 = and i32 %conv125, 1
  %tobool127 = icmp ne i32 %and126, 0
  br i1 %tobool127, label %if.then.128, label %if.end.147

if.then.128:                                      ; preds = %if.end.121
  %109 = load i16*, i16** %thiscoef, align 8
  %110 = load i16, i16* %109, align 2
  %conv129 = sext i16 %110 to i32
  %111 = load i32, i32* %p1, align 4
  %and130 = and i32 %conv129, %111
  %cmp131 = icmp eq i32 %and130, 0
  br i1 %cmp131, label %if.then.133, label %if.end.146

if.then.133:                                      ; preds = %if.then.128
  %112 = load i16*, i16** %thiscoef, align 8
  %113 = load i16, i16* %112, align 2
  %conv134 = sext i16 %113 to i32
  %cmp135 = icmp sge i32 %conv134, 0
  br i1 %cmp135, label %if.then.137, label %if.else.141

if.then.137:                                      ; preds = %if.then.133
  %114 = load i32, i32* %p1, align 4
  %115 = load i16*, i16** %thiscoef, align 8
  %116 = load i16, i16* %115, align 2
  %conv138 = sext i16 %116 to i32
  %add139 = add nsw i32 %conv138, %114
  %conv140 = trunc i32 %add139 to i16
  store i16 %conv140, i16* %115, align 2
  br label %if.end.145

if.else.141:                                      ; preds = %if.then.133
  %117 = load i32, i32* %m1, align 4
  %118 = load i16*, i16** %thiscoef, align 8
  %119 = load i16, i16* %118, align 2
  %conv142 = sext i16 %119 to i32
  %add143 = add nsw i32 %conv142, %117
  %conv144 = trunc i32 %add143 to i16
  store i16 %conv144, i16* %118, align 2
  br label %if.end.145

if.end.145:                                       ; preds = %if.else.141, %if.then.137
  br label %if.end.146

if.end.146:                                       ; preds = %if.end.145, %if.then.128
  br label %if.end.147

if.end.147:                                       ; preds = %if.end.146, %if.end.121
  br label %if.end.153

if.else.148:                                      ; preds = %do.body
  %120 = load i32, i32* %r, align 4
  %dec = add nsw i32 %120, -1
  store i32 %dec, i32* %r, align 4
  %cmp149 = icmp slt i32 %dec, 0
  br i1 %cmp149, label %if.then.151, label %if.end.152

if.then.151:                                      ; preds = %if.else.148
  br label %do.end

if.end.152:                                       ; preds = %if.else.148
  br label %if.end.153

if.end.153:                                       ; preds = %if.end.152, %if.end.147
  %121 = load i32, i32* %k, align 4
  %inc = add nsw i32 %121, 1
  store i32 %inc, i32* %k, align 4
  br label %do.cond

do.cond:                                          ; preds = %if.end.153
  %122 = load i32, i32* %k, align 4
  %123 = load i32, i32* %Se, align 4
  %cmp154 = icmp sle i32 %122, %123
  br i1 %cmp154, label %do.body, label %do.end

do.end:                                           ; preds = %do.cond, %if.then.151
  %124 = load i32, i32* %s, align 4
  %tobool156 = icmp ne i32 %124, 0
  br i1 %tobool156, label %if.then.157, label %if.end.166

if.then.157:                                      ; preds = %do.end
  %125 = load i32, i32* %k, align 4
  %idxprom158 = sext i32 %125 to i64
  %arrayidx159 = getelementptr inbounds [0 x i32], [0 x i32]* @jpeg_natural_order, i32 0, i64 %idxprom158
  %126 = load i32, i32* %arrayidx159, align 4
  store i32 %126, i32* %pos, align 4
  %127 = load i32, i32* %s, align 4
  %conv160 = trunc i32 %127 to i16
  %128 = load i32, i32* %pos, align 4
  %idxprom161 = sext i32 %128 to i64
  %129 = load [64 x i16]*, [64 x i16]** %block, align 8
  %arrayidx162 = getelementptr inbounds [64 x i16], [64 x i16]* %129, i32 0, i64 %idxprom161
  store i16 %conv160, i16* %arrayidx162, align 2
  %130 = load i32, i32* %pos, align 4
  %131 = load i32, i32* %num_newnz, align 4
  %inc163 = add nsw i32 %131, 1
  store i32 %inc163, i32* %num_newnz, align 4
  %idxprom164 = sext i32 %131 to i64
  %arrayidx165 = getelementptr inbounds [64 x i32], [64 x i32]* %newnz_pos, i32 0, i64 %idxprom164
  store i32 %130, i32* %arrayidx165, align 4
  br label %if.end.166

if.end.166:                                       ; preds = %if.then.157, %do.end
  br label %for.inc

for.inc:                                          ; preds = %if.end.166
  %132 = load i32, i32* %k, align 4
  %inc167 = add nsw i32 %132, 1
  store i32 %inc167, i32* %k, align 4
  br label %for.cond

for.end:                                          ; preds = %if.end.103, %for.cond
  br label %if.end.168

if.end.168:                                       ; preds = %for.end, %if.end.9
  %133 = load i32, i32* %EOBRUN, align 4
  %cmp169 = icmp ugt i32 %133, 0
  br i1 %cmp169, label %if.then.171, label %if.end.226

if.then.171:                                      ; preds = %if.end.168
  br label %for.cond.172

for.cond.172:                                     ; preds = %for.inc.222, %if.then.171
  %134 = load i32, i32* %k, align 4
  %135 = load i32, i32* %Se, align 4
  %cmp173 = icmp sle i32 %134, %135
  br i1 %cmp173, label %for.body.175, label %for.end.224

for.body.175:                                     ; preds = %for.cond.172
  %136 = load [64 x i16]*, [64 x i16]** %block, align 8
  %arraydecay176 = getelementptr inbounds [64 x i16], [64 x i16]* %136, i32 0, i32 0
  %137 = load i32, i32* %k, align 4
  %idxprom177 = sext i32 %137 to i64
  %arrayidx178 = getelementptr inbounds [0 x i32], [0 x i32]* @jpeg_natural_order, i32 0, i64 %idxprom177
  %138 = load i32, i32* %arrayidx178, align 4
  %idx.ext179 = sext i32 %138 to i64
  %add.ptr180 = getelementptr inbounds i16, i16* %arraydecay176, i64 %idx.ext179
  store i16* %add.ptr180, i16** %thiscoef, align 8
  %139 = load i16*, i16** %thiscoef, align 8
  %140 = load i16, i16* %139, align 2
  %conv181 = sext i16 %140 to i32
  %cmp182 = icmp ne i32 %conv181, 0
  br i1 %cmp182, label %if.then.184, label %if.end.221

if.then.184:                                      ; preds = %for.body.175
  %141 = load i32, i32* %bits_left, align 4
  %cmp185 = icmp slt i32 %141, 1
  br i1 %cmp185, label %if.then.187, label %if.end.194

if.then.187:                                      ; preds = %if.then.184
  %142 = load i64, i64* %get_buffer, align 8
  %143 = load i32, i32* %bits_left, align 4
  %call188 = call i32 @jpeg_fill_bit_buffer(%struct.bitread_working_state* %br_state, i64 %142, i32 %143, i32 1)
  %tobool189 = icmp ne i32 %call188, 0
  br i1 %tobool189, label %if.end.191, label %if.then.190

if.then.190:                                      ; preds = %if.then.187
  br label %undoit

if.end.191:                                       ; preds = %if.then.187
  %get_buffer192 = getelementptr inbounds %struct.bitread_working_state, %struct.bitread_working_state* %br_state, i32 0, i32 3
  %144 = load i64, i64* %get_buffer192, align 8
  store i64 %144, i64* %get_buffer, align 8
  %bits_left193 = getelementptr inbounds %struct.bitread_working_state, %struct.bitread_working_state* %br_state, i32 0, i32 4
  %145 = load i32, i32* %bits_left193, align 4
  store i32 %145, i32* %bits_left, align 4
  br label %if.end.194

if.end.194:                                       ; preds = %if.end.191, %if.then.184
  %146 = load i64, i64* %get_buffer, align 8
  %147 = load i32, i32* %bits_left, align 4
  %sub195 = sub nsw i32 %147, 1
  store i32 %sub195, i32* %bits_left, align 4
  %sh_prom196 = zext i32 %sub195 to i64
  %shr197 = ashr i64 %146, %sh_prom196
  %conv198 = trunc i64 %shr197 to i32
  %and199 = and i32 %conv198, 1
  %tobool200 = icmp ne i32 %and199, 0
  br i1 %tobool200, label %if.then.201, label %if.end.220

if.then.201:                                      ; preds = %if.end.194
  %148 = load i16*, i16** %thiscoef, align 8
  %149 = load i16, i16* %148, align 2
  %conv202 = sext i16 %149 to i32
  %150 = load i32, i32* %p1, align 4
  %and203 = and i32 %conv202, %150
  %cmp204 = icmp eq i32 %and203, 0
  br i1 %cmp204, label %if.then.206, label %if.end.219

if.then.206:                                      ; preds = %if.then.201
  %151 = load i16*, i16** %thiscoef, align 8
  %152 = load i16, i16* %151, align 2
  %conv207 = sext i16 %152 to i32
  %cmp208 = icmp sge i32 %conv207, 0
  br i1 %cmp208, label %if.then.210, label %if.else.214

if.then.210:                                      ; preds = %if.then.206
  %153 = load i32, i32* %p1, align 4
  %154 = load i16*, i16** %thiscoef, align 8
  %155 = load i16, i16* %154, align 2
  %conv211 = sext i16 %155 to i32
  %add212 = add nsw i32 %conv211, %153
  %conv213 = trunc i32 %add212 to i16
  store i16 %conv213, i16* %154, align 2
  br label %if.end.218

if.else.214:                                      ; preds = %if.then.206
  %156 = load i32, i32* %m1, align 4
  %157 = load i16*, i16** %thiscoef, align 8
  %158 = load i16, i16* %157, align 2
  %conv215 = sext i16 %158 to i32
  %add216 = add nsw i32 %conv215, %156
  %conv217 = trunc i32 %add216 to i16
  store i16 %conv217, i16* %157, align 2
  br label %if.end.218

if.end.218:                                       ; preds = %if.else.214, %if.then.210
  br label %if.end.219

if.end.219:                                       ; preds = %if.end.218, %if.then.201
  br label %if.end.220

if.end.220:                                       ; preds = %if.end.219, %if.end.194
  br label %if.end.221

if.end.221:                                       ; preds = %if.end.220, %for.body.175
  br label %for.inc.222

for.inc.222:                                      ; preds = %if.end.221
  %159 = load i32, i32* %k, align 4
  %inc223 = add nsw i32 %159, 1
  store i32 %inc223, i32* %k, align 4
  br label %for.cond.172

for.end.224:                                      ; preds = %for.cond.172
  %160 = load i32, i32* %EOBRUN, align 4
  %dec225 = add i32 %160, -1
  store i32 %dec225, i32* %EOBRUN, align 4
  br label %if.end.226

if.end.226:                                       ; preds = %for.end.224, %if.end.168
  %next_input_byte227 = getelementptr inbounds %struct.bitread_working_state, %struct.bitread_working_state* %br_state, i32 0, i32 0
  %161 = load i8*, i8** %next_input_byte227, align 8
  %162 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8
  %src228 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %162, i32 0, i32 5
  %163 = load %struct.jpeg_source_mgr*, %struct.jpeg_source_mgr** %src228, align 8
  %next_input_byte229 = getelementptr inbounds %struct.jpeg_source_mgr, %struct.jpeg_source_mgr* %163, i32 0, i32 0
  store i8* %161, i8** %next_input_byte229, align 8
  %bytes_in_buffer230 = getelementptr inbounds %struct.bitread_working_state, %struct.bitread_working_state* %br_state, i32 0, i32 1
  %164 = load i64, i64* %bytes_in_buffer230, align 8
  %165 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8
  %src231 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %165, i32 0, i32 5
  %166 = load %struct.jpeg_source_mgr*, %struct.jpeg_source_mgr** %src231, align 8
  %bytes_in_buffer232 = getelementptr inbounds %struct.jpeg_source_mgr, %struct.jpeg_source_mgr* %166, i32 0, i32 1
  store i64 %164, i64* %bytes_in_buffer232, align 8
  %unread_marker233 = getelementptr inbounds %struct.bitread_working_state, %struct.bitread_working_state* %br_state, i32 0, i32 2
  %167 = load i32, i32* %unread_marker233, align 4
  %168 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8
  %unread_marker234 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %168, i32 0, i32 72
  store i32 %167, i32* %unread_marker234, align 4
  %169 = load i64, i64* %get_buffer, align 8
  %170 = load %struct.phuff_entropy_decoder*, %struct.phuff_entropy_decoder** %entropy, align 8
  %bitstate235 = getelementptr inbounds %struct.phuff_entropy_decoder, %struct.phuff_entropy_decoder* %170, i32 0, i32 1
  %get_buffer236 = getelementptr inbounds %struct.bitread_perm_state, %struct.bitread_perm_state* %bitstate235, i32 0, i32 0
  store i64 %169, i64* %get_buffer236, align 8
  %171 = load i32, i32* %bits_left, align 4
  %172 = load %struct.phuff_entropy_decoder*, %struct.phuff_entropy_decoder** %entropy, align 8
  %bitstate237 = getelementptr inbounds %struct.phuff_entropy_decoder, %struct.phuff_entropy_decoder* %172, i32 0, i32 1
  %bits_left238 = getelementptr inbounds %struct.bitread_perm_state, %struct.bitread_perm_state* %bitstate237, i32 0, i32 1
  store i32 %171, i32* %bits_left238, align 4
  %173 = load i32, i32* %EOBRUN, align 4
  %174 = load %struct.phuff_entropy_decoder*, %struct.phuff_entropy_decoder** %entropy, align 8
  %saved239 = getelementptr inbounds %struct.phuff_entropy_decoder, %struct.phuff_entropy_decoder* %174, i32 0, i32 2
  %EOBRUN240 = getelementptr inbounds %struct.savable_state, %struct.savable_state* %saved239, i32 0, i32 0
  store i32 %173, i32* %EOBRUN240, align 4
  %175 = load %struct.phuff_entropy_decoder*, %struct.phuff_entropy_decoder** %entropy, align 8
  %restarts_to_go241 = getelementptr inbounds %struct.phuff_entropy_decoder, %struct.phuff_entropy_decoder* %175, i32 0, i32 3
  %176 = load i32, i32* %restarts_to_go241, align 4
  %dec242 = add i32 %176, -1
  store i32 %dec242, i32* %restarts_to_go241, align 4
  store i32 1, i32* %retval
  br label %return

undoit:                                           ; preds = %if.then.190, %if.then.117, %if.then.91, %if.then.65, %if.then.46, %if.then.27
  br label %while.cond

while.cond:                                       ; preds = %while.body, %undoit
  %177 = load i32, i32* %num_newnz, align 4
  %cmp243 = icmp sgt i32 %177, 0
  br i1 %cmp243, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %178 = load i32, i32* %num_newnz, align 4
  %dec245 = add nsw i32 %178, -1
  store i32 %dec245, i32* %num_newnz, align 4
  %idxprom246 = sext i32 %dec245 to i64
  %arrayidx247 = getelementptr inbounds [64 x i32], [64 x i32]* %newnz_pos, i32 0, i64 %idxprom246
  %179 = load i32, i32* %arrayidx247, align 4
  %idxprom248 = sext i32 %179 to i64
  %180 = load [64 x i16]*, [64 x i16]** %block, align 8
  %arrayidx249 = getelementptr inbounds [64 x i16], [64 x i16]* %180, i32 0, i64 %idxprom248
  store i16 0, i16* %arrayidx249, align 2
  br label %while.cond

while.end:                                        ; preds = %while.cond
  store i32 0, i32* %retval
  br label %return

return:                                           ; preds = %while.end, %if.end.226, %if.then.7
  %181 = load i32, i32* %retval
  ret i32 %181
}

declare void @jpeg_make_d_derived_tbl(%struct.jpeg_decompress_struct*, %struct.JHUFF_TBL*, %struct.d_derived_tbl**) #1

; Function Attrs: nounwind uwtable
define internal i32 @process_restart(%struct.jpeg_decompress_struct* %cinfo) #0 {
entry:
  %retval = alloca i32, align 4
  %cinfo.addr = alloca %struct.jpeg_decompress_struct*, align 8
  %entropy = alloca %struct.phuff_entropy_decoder*, align 8
  %ci = alloca i32, align 4
  store %struct.jpeg_decompress_struct* %cinfo, %struct.jpeg_decompress_struct** %cinfo.addr, align 8
  %0 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8
  %entropy1 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %0, i32 0, i32 79
  %1 = load %struct.jpeg_entropy_decoder*, %struct.jpeg_entropy_decoder** %entropy1, align 8
  %2 = bitcast %struct.jpeg_entropy_decoder* %1 to %struct.phuff_entropy_decoder*
  store %struct.phuff_entropy_decoder* %2, %struct.phuff_entropy_decoder** %entropy, align 8
  %3 = load %struct.phuff_entropy_decoder*, %struct.phuff_entropy_decoder** %entropy, align 8
  %bitstate = getelementptr inbounds %struct.phuff_entropy_decoder, %struct.phuff_entropy_decoder* %3, i32 0, i32 1
  %bits_left = getelementptr inbounds %struct.bitread_perm_state, %struct.bitread_perm_state* %bitstate, i32 0, i32 1
  %4 = load i32, i32* %bits_left, align 4
  %div = sdiv i32 %4, 8
  %5 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8
  %marker = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %5, i32 0, i32 78
  %6 = load %struct.jpeg_marker_reader*, %struct.jpeg_marker_reader** %marker, align 8
  %discarded_bytes = getelementptr inbounds %struct.jpeg_marker_reader, %struct.jpeg_marker_reader* %6, i32 0, i32 8
  %7 = load i32, i32* %discarded_bytes, align 4
  %add = add i32 %7, %div
  store i32 %add, i32* %discarded_bytes, align 4
  %8 = load %struct.phuff_entropy_decoder*, %struct.phuff_entropy_decoder** %entropy, align 8
  %bitstate2 = getelementptr inbounds %struct.phuff_entropy_decoder, %struct.phuff_entropy_decoder* %8, i32 0, i32 1
  %bits_left3 = getelementptr inbounds %struct.bitread_perm_state, %struct.bitread_perm_state* %bitstate2, i32 0, i32 1
  store i32 0, i32* %bits_left3, align 4
  %9 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8
  %marker4 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %9, i32 0, i32 78
  %10 = load %struct.jpeg_marker_reader*, %struct.jpeg_marker_reader** %marker4, align 8
  %read_restart_marker = getelementptr inbounds %struct.jpeg_marker_reader, %struct.jpeg_marker_reader* %10, i32 0, i32 2
  %11 = load i32 (%struct.jpeg_decompress_struct*)*, i32 (%struct.jpeg_decompress_struct*)** %read_restart_marker, align 8
  %12 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8
  %call = call i32 %11(%struct.jpeg_decompress_struct* %12)
  %tobool = icmp ne i32 %call, 0
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  store i32 0, i32* %retval
  br label %return

if.end:                                           ; preds = %entry
  store i32 0, i32* %ci, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end
  %13 = load i32, i32* %ci, align 4
  %14 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8
  %comps_in_scan = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %14, i32 0, i32 62
  %15 = load i32, i32* %comps_in_scan, align 4
  %cmp = icmp slt i32 %13, %15
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %16 = load i32, i32* %ci, align 4
  %idxprom = sext i32 %16 to i64
  %17 = load %struct.phuff_entropy_decoder*, %struct.phuff_entropy_decoder** %entropy, align 8
  %saved = getelementptr inbounds %struct.phuff_entropy_decoder, %struct.phuff_entropy_decoder* %17, i32 0, i32 2
  %last_dc_val = getelementptr inbounds %struct.savable_state, %struct.savable_state* %saved, i32 0, i32 1
  %arrayidx = getelementptr inbounds [4 x i32], [4 x i32]* %last_dc_val, i32 0, i64 %idxprom
  store i32 0, i32* %arrayidx, align 4
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %18 = load i32, i32* %ci, align 4
  %inc = add nsw i32 %18, 1
  store i32 %inc, i32* %ci, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %19 = load %struct.phuff_entropy_decoder*, %struct.phuff_entropy_decoder** %entropy, align 8
  %saved5 = getelementptr inbounds %struct.phuff_entropy_decoder, %struct.phuff_entropy_decoder* %19, i32 0, i32 2
  %EOBRUN = getelementptr inbounds %struct.savable_state, %struct.savable_state* %saved5, i32 0, i32 0
  store i32 0, i32* %EOBRUN, align 4
  %20 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8
  %restart_interval = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %20, i32 0, i32 49
  %21 = load i32, i32* %restart_interval, align 4
  %22 = load %struct.phuff_entropy_decoder*, %struct.phuff_entropy_decoder** %entropy, align 8
  %restarts_to_go = getelementptr inbounds %struct.phuff_entropy_decoder, %struct.phuff_entropy_decoder* %22, i32 0, i32 3
  store i32 %21, i32* %restarts_to_go, align 4
  %23 = load %struct.phuff_entropy_decoder*, %struct.phuff_entropy_decoder** %entropy, align 8
  %bitstate6 = getelementptr inbounds %struct.phuff_entropy_decoder, %struct.phuff_entropy_decoder* %23, i32 0, i32 1
  %printed_eod = getelementptr inbounds %struct.bitread_perm_state, %struct.bitread_perm_state* %bitstate6, i32 0, i32 2
  store i32 0, i32* %printed_eod, align 4
  store i32 1, i32* %retval
  br label %return

return:                                           ; preds = %for.end, %if.then
  %24 = load i32, i32* %retval
  ret i32 %24
}

; Function Attrs: nounwind
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* nocapture, i8* nocapture readonly, i64, i32, i1) #2

declare i32 @jpeg_fill_bit_buffer(%struct.bitread_working_state*, i64, i32, i32) #1

declare i32 @jpeg_huff_decode(%struct.bitread_working_state*, i64, i32, %struct.d_derived_tbl*, i32) #1

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind }

!llvm.ident = !{!0}

!0 = !{!"clang version 3.7.0 (tags/RELEASE_370/final)"}
