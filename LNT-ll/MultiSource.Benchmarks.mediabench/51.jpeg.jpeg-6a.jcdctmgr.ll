; ModuleID = './MultiSource.Benchmarks.mediabench/51.jpeg.jpeg-6a.jcdctmgr.bc'
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
%struct.my_fdct_controller = type { %struct.jpeg_forward_dct, void (i32*)*, [4 x i32*], void (float*)*, [4 x float*] }

@start_pass_fdctmgr.aanscales = internal constant [64 x i16] [i16 16384, i16 22725, i16 21407, i16 19266, i16 16384, i16 12873, i16 8867, i16 4520, i16 22725, i16 31521, i16 29692, i16 26722, i16 22725, i16 17855, i16 12299, i16 6270, i16 21407, i16 29692, i16 27969, i16 25172, i16 21407, i16 16819, i16 11585, i16 5906, i16 19266, i16 26722, i16 25172, i16 22654, i16 19266, i16 15137, i16 10426, i16 5315, i16 16384, i16 22725, i16 21407, i16 19266, i16 16384, i16 12873, i16 8867, i16 4520, i16 12873, i16 17855, i16 16819, i16 15137, i16 12873, i16 10114, i16 6967, i16 3552, i16 8867, i16 12299, i16 11585, i16 10426, i16 8867, i16 6967, i16 4799, i16 2446, i16 4520, i16 6270, i16 5906, i16 5315, i16 4520, i16 3552, i16 2446, i16 1247], align 16
@start_pass_fdctmgr.aanscalefactor = internal constant [8 x double] [double 1.000000e+00, double 0x3FF63150B14861EF, double 0x3FF4E7AE914D6FCA, double 0x3FF2D062EF6C11AA, double 1.000000e+00, double 0x3FE92469C0A7BF3B, double 5.411961e-01, double 0x3FD1A855DE72AB5D], align 16

; Function Attrs: nounwind uwtable
define void @jinit_forward_dct(%struct.jpeg_compress_struct* %cinfo) #0 {
entry:
  %cinfo.addr = alloca %struct.jpeg_compress_struct*, align 8
  %fdct = alloca %struct.my_fdct_controller*, align 8
  %i = alloca i32, align 4
  store %struct.jpeg_compress_struct* %cinfo, %struct.jpeg_compress_struct** %cinfo.addr, align 8
  %0 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8
  %mem = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %0, i32 0, i32 1
  %1 = load %struct.jpeg_memory_mgr*, %struct.jpeg_memory_mgr** %mem, align 8
  %alloc_small = getelementptr inbounds %struct.jpeg_memory_mgr, %struct.jpeg_memory_mgr* %1, i32 0, i32 0
  %2 = load i8* (%struct.jpeg_common_struct*, i32, i64)*, i8* (%struct.jpeg_common_struct*, i32, i64)** %alloc_small, align 8
  %3 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8
  %4 = bitcast %struct.jpeg_compress_struct* %3 to %struct.jpeg_common_struct*
  %call = call i8* %2(%struct.jpeg_common_struct* %4, i32 1, i64 96)
  %5 = bitcast i8* %call to %struct.my_fdct_controller*
  store %struct.my_fdct_controller* %5, %struct.my_fdct_controller** %fdct, align 8
  %6 = load %struct.my_fdct_controller*, %struct.my_fdct_controller** %fdct, align 8
  %7 = bitcast %struct.my_fdct_controller* %6 to %struct.jpeg_forward_dct*
  %8 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8
  %fdct1 = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %8, i32 0, i32 58
  store %struct.jpeg_forward_dct* %7, %struct.jpeg_forward_dct** %fdct1, align 8
  %9 = load %struct.my_fdct_controller*, %struct.my_fdct_controller** %fdct, align 8
  %pub = getelementptr inbounds %struct.my_fdct_controller, %struct.my_fdct_controller* %9, i32 0, i32 0
  %start_pass = getelementptr inbounds %struct.jpeg_forward_dct, %struct.jpeg_forward_dct* %pub, i32 0, i32 0
  %start_pass2 = bitcast {}** %start_pass to void (%struct.jpeg_compress_struct*)**
  store void (%struct.jpeg_compress_struct*)* @start_pass_fdctmgr, void (%struct.jpeg_compress_struct*)** %start_pass2, align 8
  %10 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8
  %dct_method = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %10, i32 0, i32 28
  %11 = load i32, i32* %dct_method, align 4
  switch i32 %11, label %sw.default [
    i32 0, label %sw.bb
    i32 1, label %sw.bb.4
    i32 2, label %sw.bb.8
  ]

sw.bb:                                            ; preds = %entry
  %12 = load %struct.my_fdct_controller*, %struct.my_fdct_controller** %fdct, align 8
  %pub3 = getelementptr inbounds %struct.my_fdct_controller, %struct.my_fdct_controller* %12, i32 0, i32 0
  %forward_DCT = getelementptr inbounds %struct.jpeg_forward_dct, %struct.jpeg_forward_dct* %pub3, i32 0, i32 1
  store void (%struct.jpeg_compress_struct*, %struct.jpeg_component_info*, i8**, [64 x i16]*, i32, i32, i32)* @forward_DCT, void (%struct.jpeg_compress_struct*, %struct.jpeg_component_info*, i8**, [64 x i16]*, i32, i32, i32)** %forward_DCT, align 8
  %13 = load %struct.my_fdct_controller*, %struct.my_fdct_controller** %fdct, align 8
  %do_dct = getelementptr inbounds %struct.my_fdct_controller, %struct.my_fdct_controller* %13, i32 0, i32 1
  store void (i32*)* @jpeg_fdct_islow, void (i32*)** %do_dct, align 8
  br label %sw.epilog

sw.bb.4:                                          ; preds = %entry
  %14 = load %struct.my_fdct_controller*, %struct.my_fdct_controller** %fdct, align 8
  %pub5 = getelementptr inbounds %struct.my_fdct_controller, %struct.my_fdct_controller* %14, i32 0, i32 0
  %forward_DCT6 = getelementptr inbounds %struct.jpeg_forward_dct, %struct.jpeg_forward_dct* %pub5, i32 0, i32 1
  store void (%struct.jpeg_compress_struct*, %struct.jpeg_component_info*, i8**, [64 x i16]*, i32, i32, i32)* @forward_DCT, void (%struct.jpeg_compress_struct*, %struct.jpeg_component_info*, i8**, [64 x i16]*, i32, i32, i32)** %forward_DCT6, align 8
  %15 = load %struct.my_fdct_controller*, %struct.my_fdct_controller** %fdct, align 8
  %do_dct7 = getelementptr inbounds %struct.my_fdct_controller, %struct.my_fdct_controller* %15, i32 0, i32 1
  store void (i32*)* @jpeg_fdct_ifast, void (i32*)** %do_dct7, align 8
  br label %sw.epilog

sw.bb.8:                                          ; preds = %entry
  %16 = load %struct.my_fdct_controller*, %struct.my_fdct_controller** %fdct, align 8
  %pub9 = getelementptr inbounds %struct.my_fdct_controller, %struct.my_fdct_controller* %16, i32 0, i32 0
  %forward_DCT10 = getelementptr inbounds %struct.jpeg_forward_dct, %struct.jpeg_forward_dct* %pub9, i32 0, i32 1
  store void (%struct.jpeg_compress_struct*, %struct.jpeg_component_info*, i8**, [64 x i16]*, i32, i32, i32)* @forward_DCT_float, void (%struct.jpeg_compress_struct*, %struct.jpeg_component_info*, i8**, [64 x i16]*, i32, i32, i32)** %forward_DCT10, align 8
  %17 = load %struct.my_fdct_controller*, %struct.my_fdct_controller** %fdct, align 8
  %do_float_dct = getelementptr inbounds %struct.my_fdct_controller, %struct.my_fdct_controller* %17, i32 0, i32 3
  store void (float*)* @jpeg_fdct_float, void (float*)** %do_float_dct, align 8
  br label %sw.epilog

sw.default:                                       ; preds = %entry
  %18 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8
  %err = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %18, i32 0, i32 0
  %19 = load %struct.jpeg_error_mgr*, %struct.jpeg_error_mgr** %err, align 8
  %msg_code = getelementptr inbounds %struct.jpeg_error_mgr, %struct.jpeg_error_mgr* %19, i32 0, i32 5
  store i32 47, i32* %msg_code, align 4
  %20 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8
  %err11 = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %20, i32 0, i32 0
  %21 = load %struct.jpeg_error_mgr*, %struct.jpeg_error_mgr** %err11, align 8
  %error_exit = getelementptr inbounds %struct.jpeg_error_mgr, %struct.jpeg_error_mgr* %21, i32 0, i32 0
  %22 = load void (%struct.jpeg_common_struct*)*, void (%struct.jpeg_common_struct*)** %error_exit, align 8
  %23 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8
  %24 = bitcast %struct.jpeg_compress_struct* %23 to %struct.jpeg_common_struct*
  call void %22(%struct.jpeg_common_struct* %24)
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.default, %sw.bb.8, %sw.bb.4, %sw.bb
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %sw.epilog
  %25 = load i32, i32* %i, align 4
  %cmp = icmp slt i32 %25, 4
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %26 = load i32, i32* %i, align 4
  %idxprom = sext i32 %26 to i64
  %27 = load %struct.my_fdct_controller*, %struct.my_fdct_controller** %fdct, align 8
  %divisors = getelementptr inbounds %struct.my_fdct_controller, %struct.my_fdct_controller* %27, i32 0, i32 2
  %arrayidx = getelementptr inbounds [4 x i32*], [4 x i32*]* %divisors, i32 0, i64 %idxprom
  store i32* null, i32** %arrayidx, align 8
  %28 = load i32, i32* %i, align 4
  %idxprom12 = sext i32 %28 to i64
  %29 = load %struct.my_fdct_controller*, %struct.my_fdct_controller** %fdct, align 8
  %float_divisors = getelementptr inbounds %struct.my_fdct_controller, %struct.my_fdct_controller* %29, i32 0, i32 4
  %arrayidx13 = getelementptr inbounds [4 x float*], [4 x float*]* %float_divisors, i32 0, i64 %idxprom12
  store float* null, float** %arrayidx13, align 8
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %30 = load i32, i32* %i, align 4
  %inc = add nsw i32 %30, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @start_pass_fdctmgr(%struct.jpeg_compress_struct* %cinfo) #0 {
entry:
  %cinfo.addr = alloca %struct.jpeg_compress_struct*, align 8
  %fdct = alloca %struct.my_fdct_controller*, align 8
  %ci = alloca i32, align 4
  %qtblno = alloca i32, align 4
  %i = alloca i32, align 4
  %compptr = alloca %struct.jpeg_component_info*, align 8
  %qtbl = alloca %struct.JQUANT_TBL*, align 8
  %dtbl = alloca i32*, align 8
  %fdtbl = alloca float*, align 8
  %row = alloca i32, align 4
  %col = alloca i32, align 4
  store %struct.jpeg_compress_struct* %cinfo, %struct.jpeg_compress_struct** %cinfo.addr, align 8
  %0 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8
  %fdct1 = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %0, i32 0, i32 58
  %1 = load %struct.jpeg_forward_dct*, %struct.jpeg_forward_dct** %fdct1, align 8
  %2 = bitcast %struct.jpeg_forward_dct* %1 to %struct.my_fdct_controller*
  store %struct.my_fdct_controller* %2, %struct.my_fdct_controller** %fdct, align 8
  store i32 0, i32* %ci, align 4
  %3 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8
  %comp_info = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %3, i32 0, i32 14
  %4 = load %struct.jpeg_component_info*, %struct.jpeg_component_info** %comp_info, align 8
  store %struct.jpeg_component_info* %4, %struct.jpeg_component_info** %compptr, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.inc.114, %entry
  %5 = load i32, i32* %ci, align 4
  %6 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8
  %num_components = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %6, i32 0, i32 12
  %7 = load i32, i32* %num_components, align 4
  %cmp = icmp slt i32 %5, %7
  br i1 %cmp, label %for.body, label %for.end.116

for.body:                                         ; preds = %for.cond
  %8 = load %struct.jpeg_component_info*, %struct.jpeg_component_info** %compptr, align 8
  %quant_tbl_no = getelementptr inbounds %struct.jpeg_component_info, %struct.jpeg_component_info* %8, i32 0, i32 4
  %9 = load i32, i32* %quant_tbl_no, align 4
  store i32 %9, i32* %qtblno, align 4
  %10 = load i32, i32* %qtblno, align 4
  %cmp2 = icmp slt i32 %10, 0
  br i1 %cmp2, label %if.then, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %for.body
  %11 = load i32, i32* %qtblno, align 4
  %cmp3 = icmp sge i32 %11, 4
  br i1 %cmp3, label %if.then, label %lor.lhs.false.4

lor.lhs.false.4:                                  ; preds = %lor.lhs.false
  %12 = load i32, i32* %qtblno, align 4
  %idxprom = sext i32 %12 to i64
  %13 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8
  %quant_tbl_ptrs = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %13, i32 0, i32 15
  %arrayidx = getelementptr inbounds [4 x %struct.JQUANT_TBL*], [4 x %struct.JQUANT_TBL*]* %quant_tbl_ptrs, i32 0, i64 %idxprom
  %14 = load %struct.JQUANT_TBL*, %struct.JQUANT_TBL** %arrayidx, align 8
  %cmp5 = icmp eq %struct.JQUANT_TBL* %14, null
  br i1 %cmp5, label %if.then, label %if.end

if.then:                                          ; preds = %lor.lhs.false.4, %lor.lhs.false, %for.body
  %15 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8
  %err = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %15, i32 0, i32 0
  %16 = load %struct.jpeg_error_mgr*, %struct.jpeg_error_mgr** %err, align 8
  %msg_code = getelementptr inbounds %struct.jpeg_error_mgr, %struct.jpeg_error_mgr* %16, i32 0, i32 5
  store i32 51, i32* %msg_code, align 4
  %17 = load i32, i32* %qtblno, align 4
  %18 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8
  %err6 = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %18, i32 0, i32 0
  %19 = load %struct.jpeg_error_mgr*, %struct.jpeg_error_mgr** %err6, align 8
  %msg_parm = getelementptr inbounds %struct.jpeg_error_mgr, %struct.jpeg_error_mgr* %19, i32 0, i32 6
  %i7 = bitcast %union.anon* %msg_parm to [8 x i32]*
  %arrayidx8 = getelementptr inbounds [8 x i32], [8 x i32]* %i7, i32 0, i64 0
  store i32 %17, i32* %arrayidx8, align 4
  %20 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8
  %err9 = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %20, i32 0, i32 0
  %21 = load %struct.jpeg_error_mgr*, %struct.jpeg_error_mgr** %err9, align 8
  %error_exit = getelementptr inbounds %struct.jpeg_error_mgr, %struct.jpeg_error_mgr* %21, i32 0, i32 0
  %22 = load void (%struct.jpeg_common_struct*)*, void (%struct.jpeg_common_struct*)** %error_exit, align 8
  %23 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8
  %24 = bitcast %struct.jpeg_compress_struct* %23 to %struct.jpeg_common_struct*
  call void %22(%struct.jpeg_common_struct* %24)
  br label %if.end

if.end:                                           ; preds = %if.then, %lor.lhs.false.4
  %25 = load i32, i32* %qtblno, align 4
  %idxprom10 = sext i32 %25 to i64
  %26 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8
  %quant_tbl_ptrs11 = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %26, i32 0, i32 15
  %arrayidx12 = getelementptr inbounds [4 x %struct.JQUANT_TBL*], [4 x %struct.JQUANT_TBL*]* %quant_tbl_ptrs11, i32 0, i64 %idxprom10
  %27 = load %struct.JQUANT_TBL*, %struct.JQUANT_TBL** %arrayidx12, align 8
  store %struct.JQUANT_TBL* %27, %struct.JQUANT_TBL** %qtbl, align 8
  %28 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8
  %dct_method = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %28, i32 0, i32 28
  %29 = load i32, i32* %dct_method, align 4
  switch i32 %29, label %sw.default [
    i32 0, label %sw.bb
    i32 1, label %sw.bb.31
    i32 2, label %sw.bb.65
  ]

sw.bb:                                            ; preds = %if.end
  %30 = load i32, i32* %qtblno, align 4
  %idxprom13 = sext i32 %30 to i64
  %31 = load %struct.my_fdct_controller*, %struct.my_fdct_controller** %fdct, align 8
  %divisors = getelementptr inbounds %struct.my_fdct_controller, %struct.my_fdct_controller* %31, i32 0, i32 2
  %arrayidx14 = getelementptr inbounds [4 x i32*], [4 x i32*]* %divisors, i32 0, i64 %idxprom13
  %32 = load i32*, i32** %arrayidx14, align 8
  %cmp15 = icmp eq i32* %32, null
  br i1 %cmp15, label %if.then.16, label %if.end.20

if.then.16:                                       ; preds = %sw.bb
  %33 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8
  %mem = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %33, i32 0, i32 1
  %34 = load %struct.jpeg_memory_mgr*, %struct.jpeg_memory_mgr** %mem, align 8
  %alloc_small = getelementptr inbounds %struct.jpeg_memory_mgr, %struct.jpeg_memory_mgr* %34, i32 0, i32 0
  %35 = load i8* (%struct.jpeg_common_struct*, i32, i64)*, i8* (%struct.jpeg_common_struct*, i32, i64)** %alloc_small, align 8
  %36 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8
  %37 = bitcast %struct.jpeg_compress_struct* %36 to %struct.jpeg_common_struct*
  %call = call i8* %35(%struct.jpeg_common_struct* %37, i32 1, i64 256)
  %38 = bitcast i8* %call to i32*
  %39 = load i32, i32* %qtblno, align 4
  %idxprom17 = sext i32 %39 to i64
  %40 = load %struct.my_fdct_controller*, %struct.my_fdct_controller** %fdct, align 8
  %divisors18 = getelementptr inbounds %struct.my_fdct_controller, %struct.my_fdct_controller* %40, i32 0, i32 2
  %arrayidx19 = getelementptr inbounds [4 x i32*], [4 x i32*]* %divisors18, i32 0, i64 %idxprom17
  store i32* %38, i32** %arrayidx19, align 8
  br label %if.end.20

if.end.20:                                        ; preds = %if.then.16, %sw.bb
  %41 = load i32, i32* %qtblno, align 4
  %idxprom21 = sext i32 %41 to i64
  %42 = load %struct.my_fdct_controller*, %struct.my_fdct_controller** %fdct, align 8
  %divisors22 = getelementptr inbounds %struct.my_fdct_controller, %struct.my_fdct_controller* %42, i32 0, i32 2
  %arrayidx23 = getelementptr inbounds [4 x i32*], [4 x i32*]* %divisors22, i32 0, i64 %idxprom21
  %43 = load i32*, i32** %arrayidx23, align 8
  store i32* %43, i32** %dtbl, align 8
  store i32 0, i32* %i, align 4
  br label %for.cond.24

for.cond.24:                                      ; preds = %for.inc, %if.end.20
  %44 = load i32, i32* %i, align 4
  %cmp25 = icmp slt i32 %44, 64
  br i1 %cmp25, label %for.body.26, label %for.end

for.body.26:                                      ; preds = %for.cond.24
  %45 = load i32, i32* %i, align 4
  %idxprom27 = sext i32 %45 to i64
  %46 = load %struct.JQUANT_TBL*, %struct.JQUANT_TBL** %qtbl, align 8
  %quantval = getelementptr inbounds %struct.JQUANT_TBL, %struct.JQUANT_TBL* %46, i32 0, i32 0
  %arrayidx28 = getelementptr inbounds [64 x i16], [64 x i16]* %quantval, i32 0, i64 %idxprom27
  %47 = load i16, i16* %arrayidx28, align 2
  %conv = zext i16 %47 to i32
  %shl = shl i32 %conv, 3
  %48 = load i32, i32* %i, align 4
  %idxprom29 = sext i32 %48 to i64
  %49 = load i32*, i32** %dtbl, align 8
  %arrayidx30 = getelementptr inbounds i32, i32* %49, i64 %idxprom29
  store i32 %shl, i32* %arrayidx30, align 4
  br label %for.inc

for.inc:                                          ; preds = %for.body.26
  %50 = load i32, i32* %i, align 4
  %inc = add nsw i32 %50, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond.24

for.end:                                          ; preds = %for.cond.24
  br label %sw.epilog

sw.bb.31:                                         ; preds = %if.end
  %51 = load i32, i32* %qtblno, align 4
  %idxprom32 = sext i32 %51 to i64
  %52 = load %struct.my_fdct_controller*, %struct.my_fdct_controller** %fdct, align 8
  %divisors33 = getelementptr inbounds %struct.my_fdct_controller, %struct.my_fdct_controller* %52, i32 0, i32 2
  %arrayidx34 = getelementptr inbounds [4 x i32*], [4 x i32*]* %divisors33, i32 0, i64 %idxprom32
  %53 = load i32*, i32** %arrayidx34, align 8
  %cmp35 = icmp eq i32* %53, null
  br i1 %cmp35, label %if.then.37, label %if.end.44

if.then.37:                                       ; preds = %sw.bb.31
  %54 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8
  %mem38 = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %54, i32 0, i32 1
  %55 = load %struct.jpeg_memory_mgr*, %struct.jpeg_memory_mgr** %mem38, align 8
  %alloc_small39 = getelementptr inbounds %struct.jpeg_memory_mgr, %struct.jpeg_memory_mgr* %55, i32 0, i32 0
  %56 = load i8* (%struct.jpeg_common_struct*, i32, i64)*, i8* (%struct.jpeg_common_struct*, i32, i64)** %alloc_small39, align 8
  %57 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8
  %58 = bitcast %struct.jpeg_compress_struct* %57 to %struct.jpeg_common_struct*
  %call40 = call i8* %56(%struct.jpeg_common_struct* %58, i32 1, i64 256)
  %59 = bitcast i8* %call40 to i32*
  %60 = load i32, i32* %qtblno, align 4
  %idxprom41 = sext i32 %60 to i64
  %61 = load %struct.my_fdct_controller*, %struct.my_fdct_controller** %fdct, align 8
  %divisors42 = getelementptr inbounds %struct.my_fdct_controller, %struct.my_fdct_controller* %61, i32 0, i32 2
  %arrayidx43 = getelementptr inbounds [4 x i32*], [4 x i32*]* %divisors42, i32 0, i64 %idxprom41
  store i32* %59, i32** %arrayidx43, align 8
  br label %if.end.44

if.end.44:                                        ; preds = %if.then.37, %sw.bb.31
  %62 = load i32, i32* %qtblno, align 4
  %idxprom45 = sext i32 %62 to i64
  %63 = load %struct.my_fdct_controller*, %struct.my_fdct_controller** %fdct, align 8
  %divisors46 = getelementptr inbounds %struct.my_fdct_controller, %struct.my_fdct_controller* %63, i32 0, i32 2
  %arrayidx47 = getelementptr inbounds [4 x i32*], [4 x i32*]* %divisors46, i32 0, i64 %idxprom45
  %64 = load i32*, i32** %arrayidx47, align 8
  store i32* %64, i32** %dtbl, align 8
  store i32 0, i32* %i, align 4
  br label %for.cond.48

for.cond.48:                                      ; preds = %for.inc.62, %if.end.44
  %65 = load i32, i32* %i, align 4
  %cmp49 = icmp slt i32 %65, 64
  br i1 %cmp49, label %for.body.51, label %for.end.64

for.body.51:                                      ; preds = %for.cond.48
  %66 = load i32, i32* %i, align 4
  %idxprom52 = sext i32 %66 to i64
  %67 = load %struct.JQUANT_TBL*, %struct.JQUANT_TBL** %qtbl, align 8
  %quantval53 = getelementptr inbounds %struct.JQUANT_TBL, %struct.JQUANT_TBL* %67, i32 0, i32 0
  %arrayidx54 = getelementptr inbounds [64 x i16], [64 x i16]* %quantval53, i32 0, i64 %idxprom52
  %68 = load i16, i16* %arrayidx54, align 2
  %conv55 = zext i16 %68 to i64
  %69 = load i32, i32* %i, align 4
  %idxprom56 = sext i32 %69 to i64
  %arrayidx57 = getelementptr inbounds [64 x i16], [64 x i16]* @start_pass_fdctmgr.aanscales, i32 0, i64 %idxprom56
  %70 = load i16, i16* %arrayidx57, align 2
  %conv58 = sext i16 %70 to i64
  %mul = mul nsw i64 %conv55, %conv58
  %add = add nsw i64 %mul, 1024
  %shr = ashr i64 %add, 11
  %conv59 = trunc i64 %shr to i32
  %71 = load i32, i32* %i, align 4
  %idxprom60 = sext i32 %71 to i64
  %72 = load i32*, i32** %dtbl, align 8
  %arrayidx61 = getelementptr inbounds i32, i32* %72, i64 %idxprom60
  store i32 %conv59, i32* %arrayidx61, align 4
  br label %for.inc.62

for.inc.62:                                       ; preds = %for.body.51
  %73 = load i32, i32* %i, align 4
  %inc63 = add nsw i32 %73, 1
  store i32 %inc63, i32* %i, align 4
  br label %for.cond.48

for.end.64:                                       ; preds = %for.cond.48
  br label %sw.epilog

sw.bb.65:                                         ; preds = %if.end
  %74 = load i32, i32* %qtblno, align 4
  %idxprom66 = sext i32 %74 to i64
  %75 = load %struct.my_fdct_controller*, %struct.my_fdct_controller** %fdct, align 8
  %float_divisors = getelementptr inbounds %struct.my_fdct_controller, %struct.my_fdct_controller* %75, i32 0, i32 4
  %arrayidx67 = getelementptr inbounds [4 x float*], [4 x float*]* %float_divisors, i32 0, i64 %idxprom66
  %76 = load float*, float** %arrayidx67, align 8
  %cmp68 = icmp eq float* %76, null
  br i1 %cmp68, label %if.then.70, label %if.end.77

if.then.70:                                       ; preds = %sw.bb.65
  %77 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8
  %mem71 = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %77, i32 0, i32 1
  %78 = load %struct.jpeg_memory_mgr*, %struct.jpeg_memory_mgr** %mem71, align 8
  %alloc_small72 = getelementptr inbounds %struct.jpeg_memory_mgr, %struct.jpeg_memory_mgr* %78, i32 0, i32 0
  %79 = load i8* (%struct.jpeg_common_struct*, i32, i64)*, i8* (%struct.jpeg_common_struct*, i32, i64)** %alloc_small72, align 8
  %80 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8
  %81 = bitcast %struct.jpeg_compress_struct* %80 to %struct.jpeg_common_struct*
  %call73 = call i8* %79(%struct.jpeg_common_struct* %81, i32 1, i64 256)
  %82 = bitcast i8* %call73 to float*
  %83 = load i32, i32* %qtblno, align 4
  %idxprom74 = sext i32 %83 to i64
  %84 = load %struct.my_fdct_controller*, %struct.my_fdct_controller** %fdct, align 8
  %float_divisors75 = getelementptr inbounds %struct.my_fdct_controller, %struct.my_fdct_controller* %84, i32 0, i32 4
  %arrayidx76 = getelementptr inbounds [4 x float*], [4 x float*]* %float_divisors75, i32 0, i64 %idxprom74
  store float* %82, float** %arrayidx76, align 8
  br label %if.end.77

if.end.77:                                        ; preds = %if.then.70, %sw.bb.65
  %85 = load i32, i32* %qtblno, align 4
  %idxprom78 = sext i32 %85 to i64
  %86 = load %struct.my_fdct_controller*, %struct.my_fdct_controller** %fdct, align 8
  %float_divisors79 = getelementptr inbounds %struct.my_fdct_controller, %struct.my_fdct_controller* %86, i32 0, i32 4
  %arrayidx80 = getelementptr inbounds [4 x float*], [4 x float*]* %float_divisors79, i32 0, i64 %idxprom78
  %87 = load float*, float** %arrayidx80, align 8
  store float* %87, float** %fdtbl, align 8
  store i32 0, i32* %i, align 4
  store i32 0, i32* %row, align 4
  br label %for.cond.81

for.cond.81:                                      ; preds = %for.inc.107, %if.end.77
  %88 = load i32, i32* %row, align 4
  %cmp82 = icmp slt i32 %88, 8
  br i1 %cmp82, label %for.body.84, label %for.end.109

for.body.84:                                      ; preds = %for.cond.81
  store i32 0, i32* %col, align 4
  br label %for.cond.85

for.cond.85:                                      ; preds = %for.inc.104, %for.body.84
  %89 = load i32, i32* %col, align 4
  %cmp86 = icmp slt i32 %89, 8
  br i1 %cmp86, label %for.body.88, label %for.end.106

for.body.88:                                      ; preds = %for.cond.85
  %90 = load i32, i32* %i, align 4
  %idxprom89 = sext i32 %90 to i64
  %91 = load %struct.JQUANT_TBL*, %struct.JQUANT_TBL** %qtbl, align 8
  %quantval90 = getelementptr inbounds %struct.JQUANT_TBL, %struct.JQUANT_TBL* %91, i32 0, i32 0
  %arrayidx91 = getelementptr inbounds [64 x i16], [64 x i16]* %quantval90, i32 0, i64 %idxprom89
  %92 = load i16, i16* %arrayidx91, align 2
  %conv92 = uitofp i16 %92 to double
  %93 = load i32, i32* %row, align 4
  %idxprom93 = sext i32 %93 to i64
  %arrayidx94 = getelementptr inbounds [8 x double], [8 x double]* @start_pass_fdctmgr.aanscalefactor, i32 0, i64 %idxprom93
  %94 = load double, double* %arrayidx94, align 8
  %mul95 = fmul double %conv92, %94
  %95 = load i32, i32* %col, align 4
  %idxprom96 = sext i32 %95 to i64
  %arrayidx97 = getelementptr inbounds [8 x double], [8 x double]* @start_pass_fdctmgr.aanscalefactor, i32 0, i64 %idxprom96
  %96 = load double, double* %arrayidx97, align 8
  %mul98 = fmul double %mul95, %96
  %mul99 = fmul double %mul98, 8.000000e+00
  %div = fdiv double 1.000000e+00, %mul99
  %conv100 = fptrunc double %div to float
  %97 = load i32, i32* %i, align 4
  %idxprom101 = sext i32 %97 to i64
  %98 = load float*, float** %fdtbl, align 8
  %arrayidx102 = getelementptr inbounds float, float* %98, i64 %idxprom101
  store float %conv100, float* %arrayidx102, align 4
  %99 = load i32, i32* %i, align 4
  %inc103 = add nsw i32 %99, 1
  store i32 %inc103, i32* %i, align 4
  br label %for.inc.104

for.inc.104:                                      ; preds = %for.body.88
  %100 = load i32, i32* %col, align 4
  %inc105 = add nsw i32 %100, 1
  store i32 %inc105, i32* %col, align 4
  br label %for.cond.85

for.end.106:                                      ; preds = %for.cond.85
  br label %for.inc.107

for.inc.107:                                      ; preds = %for.end.106
  %101 = load i32, i32* %row, align 4
  %inc108 = add nsw i32 %101, 1
  store i32 %inc108, i32* %row, align 4
  br label %for.cond.81

for.end.109:                                      ; preds = %for.cond.81
  br label %sw.epilog

sw.default:                                       ; preds = %if.end
  %102 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8
  %err110 = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %102, i32 0, i32 0
  %103 = load %struct.jpeg_error_mgr*, %struct.jpeg_error_mgr** %err110, align 8
  %msg_code111 = getelementptr inbounds %struct.jpeg_error_mgr, %struct.jpeg_error_mgr* %103, i32 0, i32 5
  store i32 47, i32* %msg_code111, align 4
  %104 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8
  %err112 = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %104, i32 0, i32 0
  %105 = load %struct.jpeg_error_mgr*, %struct.jpeg_error_mgr** %err112, align 8
  %error_exit113 = getelementptr inbounds %struct.jpeg_error_mgr, %struct.jpeg_error_mgr* %105, i32 0, i32 0
  %106 = load void (%struct.jpeg_common_struct*)*, void (%struct.jpeg_common_struct*)** %error_exit113, align 8
  %107 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8
  %108 = bitcast %struct.jpeg_compress_struct* %107 to %struct.jpeg_common_struct*
  call void %106(%struct.jpeg_common_struct* %108)
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.default, %for.end.109, %for.end.64, %for.end
  br label %for.inc.114

for.inc.114:                                      ; preds = %sw.epilog
  %109 = load i32, i32* %ci, align 4
  %inc115 = add nsw i32 %109, 1
  store i32 %inc115, i32* %ci, align 4
  %110 = load %struct.jpeg_component_info*, %struct.jpeg_component_info** %compptr, align 8
  %incdec.ptr = getelementptr inbounds %struct.jpeg_component_info, %struct.jpeg_component_info* %110, i32 1
  store %struct.jpeg_component_info* %incdec.ptr, %struct.jpeg_component_info** %compptr, align 8
  br label %for.cond

for.end.116:                                      ; preds = %for.cond
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @forward_DCT(%struct.jpeg_compress_struct* %cinfo, %struct.jpeg_component_info* %compptr, i8** %sample_data, [64 x i16]* %coef_blocks, i32 %start_row, i32 %start_col, i32 %num_blocks) #0 {
entry:
  %cinfo.addr = alloca %struct.jpeg_compress_struct*, align 8
  %compptr.addr = alloca %struct.jpeg_component_info*, align 8
  %sample_data.addr = alloca i8**, align 8
  %coef_blocks.addr = alloca [64 x i16]*, align 8
  %start_row.addr = alloca i32, align 4
  %start_col.addr = alloca i32, align 4
  %num_blocks.addr = alloca i32, align 4
  %fdct = alloca %struct.my_fdct_controller*, align 8
  %do_dct = alloca void (i32*)*, align 8
  %divisors = alloca i32*, align 8
  %workspace = alloca [64 x i32], align 16
  %bi = alloca i32, align 4
  %workspaceptr = alloca i32*, align 8
  %elemptr = alloca i8*, align 8
  %elemr = alloca i32, align 4
  %temp = alloca i32, align 4
  %qval = alloca i32, align 4
  %i = alloca i32, align 4
  %output_ptr = alloca i16*, align 8
  store %struct.jpeg_compress_struct* %cinfo, %struct.jpeg_compress_struct** %cinfo.addr, align 8
  store %struct.jpeg_component_info* %compptr, %struct.jpeg_component_info** %compptr.addr, align 8
  store i8** %sample_data, i8*** %sample_data.addr, align 8
  store [64 x i16]* %coef_blocks, [64 x i16]** %coef_blocks.addr, align 8
  store i32 %start_row, i32* %start_row.addr, align 4
  store i32 %start_col, i32* %start_col.addr, align 4
  store i32 %num_blocks, i32* %num_blocks.addr, align 4
  %0 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8
  %fdct1 = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %0, i32 0, i32 58
  %1 = load %struct.jpeg_forward_dct*, %struct.jpeg_forward_dct** %fdct1, align 8
  %2 = bitcast %struct.jpeg_forward_dct* %1 to %struct.my_fdct_controller*
  store %struct.my_fdct_controller* %2, %struct.my_fdct_controller** %fdct, align 8
  %3 = load %struct.my_fdct_controller*, %struct.my_fdct_controller** %fdct, align 8
  %do_dct2 = getelementptr inbounds %struct.my_fdct_controller, %struct.my_fdct_controller* %3, i32 0, i32 1
  %4 = load void (i32*)*, void (i32*)** %do_dct2, align 8
  store void (i32*)* %4, void (i32*)** %do_dct, align 8
  %5 = load %struct.jpeg_component_info*, %struct.jpeg_component_info** %compptr.addr, align 8
  %quant_tbl_no = getelementptr inbounds %struct.jpeg_component_info, %struct.jpeg_component_info* %5, i32 0, i32 4
  %6 = load i32, i32* %quant_tbl_no, align 4
  %idxprom = sext i32 %6 to i64
  %7 = load %struct.my_fdct_controller*, %struct.my_fdct_controller** %fdct, align 8
  %divisors3 = getelementptr inbounds %struct.my_fdct_controller, %struct.my_fdct_controller* %7, i32 0, i32 2
  %arrayidx = getelementptr inbounds [4 x i32*], [4 x i32*]* %divisors3, i32 0, i64 %idxprom
  %8 = load i32*, i32** %arrayidx, align 8
  store i32* %8, i32** %divisors, align 8
  %9 = load i32, i32* %start_row.addr, align 4
  %10 = load i8**, i8*** %sample_data.addr, align 8
  %idx.ext = zext i32 %9 to i64
  %add.ptr = getelementptr inbounds i8*, i8** %10, i64 %idx.ext
  store i8** %add.ptr, i8*** %sample_data.addr, align 8
  store i32 0, i32* %bi, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc.75, %entry
  %11 = load i32, i32* %bi, align 4
  %12 = load i32, i32* %num_blocks.addr, align 4
  %cmp = icmp ult i32 %11, %12
  br i1 %cmp, label %for.body, label %for.end.78

for.body:                                         ; preds = %for.cond
  %arraydecay = getelementptr inbounds [64 x i32], [64 x i32]* %workspace, i32 0, i32 0
  store i32* %arraydecay, i32** %workspaceptr, align 8
  store i32 0, i32* %elemr, align 4
  br label %for.cond.4

for.cond.4:                                       ; preds = %for.inc, %for.body
  %13 = load i32, i32* %elemr, align 4
  %cmp5 = icmp slt i32 %13, 8
  br i1 %cmp5, label %for.body.6, label %for.end

for.body.6:                                       ; preds = %for.cond.4
  %14 = load i32, i32* %elemr, align 4
  %idxprom7 = sext i32 %14 to i64
  %15 = load i8**, i8*** %sample_data.addr, align 8
  %arrayidx8 = getelementptr inbounds i8*, i8** %15, i64 %idxprom7
  %16 = load i8*, i8** %arrayidx8, align 8
  %17 = load i32, i32* %start_col.addr, align 4
  %idx.ext9 = zext i32 %17 to i64
  %add.ptr10 = getelementptr inbounds i8, i8* %16, i64 %idx.ext9
  store i8* %add.ptr10, i8** %elemptr, align 8
  %18 = load i8*, i8** %elemptr, align 8
  %incdec.ptr = getelementptr inbounds i8, i8* %18, i32 1
  store i8* %incdec.ptr, i8** %elemptr, align 8
  %19 = load i8, i8* %18, align 1
  %conv = zext i8 %19 to i32
  %sub = sub nsw i32 %conv, 128
  %20 = load i32*, i32** %workspaceptr, align 8
  %incdec.ptr11 = getelementptr inbounds i32, i32* %20, i32 1
  store i32* %incdec.ptr11, i32** %workspaceptr, align 8
  store i32 %sub, i32* %20, align 4
  %21 = load i8*, i8** %elemptr, align 8
  %incdec.ptr12 = getelementptr inbounds i8, i8* %21, i32 1
  store i8* %incdec.ptr12, i8** %elemptr, align 8
  %22 = load i8, i8* %21, align 1
  %conv13 = zext i8 %22 to i32
  %sub14 = sub nsw i32 %conv13, 128
  %23 = load i32*, i32** %workspaceptr, align 8
  %incdec.ptr15 = getelementptr inbounds i32, i32* %23, i32 1
  store i32* %incdec.ptr15, i32** %workspaceptr, align 8
  store i32 %sub14, i32* %23, align 4
  %24 = load i8*, i8** %elemptr, align 8
  %incdec.ptr16 = getelementptr inbounds i8, i8* %24, i32 1
  store i8* %incdec.ptr16, i8** %elemptr, align 8
  %25 = load i8, i8* %24, align 1
  %conv17 = zext i8 %25 to i32
  %sub18 = sub nsw i32 %conv17, 128
  %26 = load i32*, i32** %workspaceptr, align 8
  %incdec.ptr19 = getelementptr inbounds i32, i32* %26, i32 1
  store i32* %incdec.ptr19, i32** %workspaceptr, align 8
  store i32 %sub18, i32* %26, align 4
  %27 = load i8*, i8** %elemptr, align 8
  %incdec.ptr20 = getelementptr inbounds i8, i8* %27, i32 1
  store i8* %incdec.ptr20, i8** %elemptr, align 8
  %28 = load i8, i8* %27, align 1
  %conv21 = zext i8 %28 to i32
  %sub22 = sub nsw i32 %conv21, 128
  %29 = load i32*, i32** %workspaceptr, align 8
  %incdec.ptr23 = getelementptr inbounds i32, i32* %29, i32 1
  store i32* %incdec.ptr23, i32** %workspaceptr, align 8
  store i32 %sub22, i32* %29, align 4
  %30 = load i8*, i8** %elemptr, align 8
  %incdec.ptr24 = getelementptr inbounds i8, i8* %30, i32 1
  store i8* %incdec.ptr24, i8** %elemptr, align 8
  %31 = load i8, i8* %30, align 1
  %conv25 = zext i8 %31 to i32
  %sub26 = sub nsw i32 %conv25, 128
  %32 = load i32*, i32** %workspaceptr, align 8
  %incdec.ptr27 = getelementptr inbounds i32, i32* %32, i32 1
  store i32* %incdec.ptr27, i32** %workspaceptr, align 8
  store i32 %sub26, i32* %32, align 4
  %33 = load i8*, i8** %elemptr, align 8
  %incdec.ptr28 = getelementptr inbounds i8, i8* %33, i32 1
  store i8* %incdec.ptr28, i8** %elemptr, align 8
  %34 = load i8, i8* %33, align 1
  %conv29 = zext i8 %34 to i32
  %sub30 = sub nsw i32 %conv29, 128
  %35 = load i32*, i32** %workspaceptr, align 8
  %incdec.ptr31 = getelementptr inbounds i32, i32* %35, i32 1
  store i32* %incdec.ptr31, i32** %workspaceptr, align 8
  store i32 %sub30, i32* %35, align 4
  %36 = load i8*, i8** %elemptr, align 8
  %incdec.ptr32 = getelementptr inbounds i8, i8* %36, i32 1
  store i8* %incdec.ptr32, i8** %elemptr, align 8
  %37 = load i8, i8* %36, align 1
  %conv33 = zext i8 %37 to i32
  %sub34 = sub nsw i32 %conv33, 128
  %38 = load i32*, i32** %workspaceptr, align 8
  %incdec.ptr35 = getelementptr inbounds i32, i32* %38, i32 1
  store i32* %incdec.ptr35, i32** %workspaceptr, align 8
  store i32 %sub34, i32* %38, align 4
  %39 = load i8*, i8** %elemptr, align 8
  %incdec.ptr36 = getelementptr inbounds i8, i8* %39, i32 1
  store i8* %incdec.ptr36, i8** %elemptr, align 8
  %40 = load i8, i8* %39, align 1
  %conv37 = zext i8 %40 to i32
  %sub38 = sub nsw i32 %conv37, 128
  %41 = load i32*, i32** %workspaceptr, align 8
  %incdec.ptr39 = getelementptr inbounds i32, i32* %41, i32 1
  store i32* %incdec.ptr39, i32** %workspaceptr, align 8
  store i32 %sub38, i32* %41, align 4
  br label %for.inc

for.inc:                                          ; preds = %for.body.6
  %42 = load i32, i32* %elemr, align 4
  %inc = add nsw i32 %42, 1
  store i32 %inc, i32* %elemr, align 4
  br label %for.cond.4

for.end:                                          ; preds = %for.cond.4
  %43 = load void (i32*)*, void (i32*)** %do_dct, align 8
  %arraydecay40 = getelementptr inbounds [64 x i32], [64 x i32]* %workspace, i32 0, i32 0
  call void %43(i32* %arraydecay40)
  %44 = load i32, i32* %bi, align 4
  %idxprom41 = zext i32 %44 to i64
  %45 = load [64 x i16]*, [64 x i16]** %coef_blocks.addr, align 8
  %arrayidx42 = getelementptr inbounds [64 x i16], [64 x i16]* %45, i64 %idxprom41
  %arraydecay43 = getelementptr inbounds [64 x i16], [64 x i16]* %arrayidx42, i32 0, i32 0
  store i16* %arraydecay43, i16** %output_ptr, align 8
  store i32 0, i32* %i, align 4
  br label %for.cond.44

for.cond.44:                                      ; preds = %for.inc.72, %for.end
  %46 = load i32, i32* %i, align 4
  %cmp45 = icmp slt i32 %46, 64
  br i1 %cmp45, label %for.body.47, label %for.end.74

for.body.47:                                      ; preds = %for.cond.44
  %47 = load i32, i32* %i, align 4
  %idxprom48 = sext i32 %47 to i64
  %48 = load i32*, i32** %divisors, align 8
  %arrayidx49 = getelementptr inbounds i32, i32* %48, i64 %idxprom48
  %49 = load i32, i32* %arrayidx49, align 4
  store i32 %49, i32* %qval, align 4
  %50 = load i32, i32* %i, align 4
  %idxprom50 = sext i32 %50 to i64
  %arrayidx51 = getelementptr inbounds [64 x i32], [64 x i32]* %workspace, i32 0, i64 %idxprom50
  %51 = load i32, i32* %arrayidx51, align 4
  store i32 %51, i32* %temp, align 4
  %52 = load i32, i32* %temp, align 4
  %cmp52 = icmp slt i32 %52, 0
  br i1 %cmp52, label %if.then, label %if.else.59

if.then:                                          ; preds = %for.body.47
  %53 = load i32, i32* %temp, align 4
  %sub54 = sub nsw i32 0, %53
  store i32 %sub54, i32* %temp, align 4
  %54 = load i32, i32* %qval, align 4
  %shr = ashr i32 %54, 1
  %55 = load i32, i32* %temp, align 4
  %add = add nsw i32 %55, %shr
  store i32 %add, i32* %temp, align 4
  %56 = load i32, i32* %temp, align 4
  %57 = load i32, i32* %qval, align 4
  %cmp55 = icmp sge i32 %56, %57
  br i1 %cmp55, label %if.then.57, label %if.else

if.then.57:                                       ; preds = %if.then
  %58 = load i32, i32* %qval, align 4
  %59 = load i32, i32* %temp, align 4
  %div = sdiv i32 %59, %58
  store i32 %div, i32* %temp, align 4
  br label %if.end

if.else:                                          ; preds = %if.then
  store i32 0, i32* %temp, align 4
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then.57
  %60 = load i32, i32* %temp, align 4
  %sub58 = sub nsw i32 0, %60
  store i32 %sub58, i32* %temp, align 4
  br label %if.end.68

if.else.59:                                       ; preds = %for.body.47
  %61 = load i32, i32* %qval, align 4
  %shr60 = ashr i32 %61, 1
  %62 = load i32, i32* %temp, align 4
  %add61 = add nsw i32 %62, %shr60
  store i32 %add61, i32* %temp, align 4
  %63 = load i32, i32* %temp, align 4
  %64 = load i32, i32* %qval, align 4
  %cmp62 = icmp sge i32 %63, %64
  br i1 %cmp62, label %if.then.64, label %if.else.66

if.then.64:                                       ; preds = %if.else.59
  %65 = load i32, i32* %qval, align 4
  %66 = load i32, i32* %temp, align 4
  %div65 = sdiv i32 %66, %65
  store i32 %div65, i32* %temp, align 4
  br label %if.end.67

if.else.66:                                       ; preds = %if.else.59
  store i32 0, i32* %temp, align 4
  br label %if.end.67

if.end.67:                                        ; preds = %if.else.66, %if.then.64
  br label %if.end.68

if.end.68:                                        ; preds = %if.end.67, %if.end
  %67 = load i32, i32* %temp, align 4
  %conv69 = trunc i32 %67 to i16
  %68 = load i32, i32* %i, align 4
  %idxprom70 = sext i32 %68 to i64
  %69 = load i16*, i16** %output_ptr, align 8
  %arrayidx71 = getelementptr inbounds i16, i16* %69, i64 %idxprom70
  store i16 %conv69, i16* %arrayidx71, align 2
  br label %for.inc.72

for.inc.72:                                       ; preds = %if.end.68
  %70 = load i32, i32* %i, align 4
  %inc73 = add nsw i32 %70, 1
  store i32 %inc73, i32* %i, align 4
  br label %for.cond.44

for.end.74:                                       ; preds = %for.cond.44
  br label %for.inc.75

for.inc.75:                                       ; preds = %for.end.74
  %71 = load i32, i32* %bi, align 4
  %inc76 = add i32 %71, 1
  store i32 %inc76, i32* %bi, align 4
  %72 = load i32, i32* %start_col.addr, align 4
  %add77 = add i32 %72, 8
  store i32 %add77, i32* %start_col.addr, align 4
  br label %for.cond

for.end.78:                                       ; preds = %for.cond
  ret void
}

declare void @jpeg_fdct_islow(i32*) #1

declare void @jpeg_fdct_ifast(i32*) #1

; Function Attrs: nounwind uwtable
define internal void @forward_DCT_float(%struct.jpeg_compress_struct* %cinfo, %struct.jpeg_component_info* %compptr, i8** %sample_data, [64 x i16]* %coef_blocks, i32 %start_row, i32 %start_col, i32 %num_blocks) #0 {
entry:
  %cinfo.addr = alloca %struct.jpeg_compress_struct*, align 8
  %compptr.addr = alloca %struct.jpeg_component_info*, align 8
  %sample_data.addr = alloca i8**, align 8
  %coef_blocks.addr = alloca [64 x i16]*, align 8
  %start_row.addr = alloca i32, align 4
  %start_col.addr = alloca i32, align 4
  %num_blocks.addr = alloca i32, align 4
  %fdct = alloca %struct.my_fdct_controller*, align 8
  %do_dct = alloca void (float*)*, align 8
  %divisors = alloca float*, align 8
  %workspace = alloca [64 x float], align 16
  %bi = alloca i32, align 4
  %workspaceptr = alloca float*, align 8
  %elemptr = alloca i8*, align 8
  %elemr = alloca i32, align 4
  %temp = alloca float, align 4
  %i = alloca i32, align 4
  %output_ptr = alloca i16*, align 8
  store %struct.jpeg_compress_struct* %cinfo, %struct.jpeg_compress_struct** %cinfo.addr, align 8
  store %struct.jpeg_component_info* %compptr, %struct.jpeg_component_info** %compptr.addr, align 8
  store i8** %sample_data, i8*** %sample_data.addr, align 8
  store [64 x i16]* %coef_blocks, [64 x i16]** %coef_blocks.addr, align 8
  store i32 %start_row, i32* %start_row.addr, align 4
  store i32 %start_col, i32* %start_col.addr, align 4
  store i32 %num_blocks, i32* %num_blocks.addr, align 4
  %0 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8
  %fdct1 = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %0, i32 0, i32 58
  %1 = load %struct.jpeg_forward_dct*, %struct.jpeg_forward_dct** %fdct1, align 8
  %2 = bitcast %struct.jpeg_forward_dct* %1 to %struct.my_fdct_controller*
  store %struct.my_fdct_controller* %2, %struct.my_fdct_controller** %fdct, align 8
  %3 = load %struct.my_fdct_controller*, %struct.my_fdct_controller** %fdct, align 8
  %do_float_dct = getelementptr inbounds %struct.my_fdct_controller, %struct.my_fdct_controller* %3, i32 0, i32 3
  %4 = load void (float*)*, void (float*)** %do_float_dct, align 8
  store void (float*)* %4, void (float*)** %do_dct, align 8
  %5 = load %struct.jpeg_component_info*, %struct.jpeg_component_info** %compptr.addr, align 8
  %quant_tbl_no = getelementptr inbounds %struct.jpeg_component_info, %struct.jpeg_component_info* %5, i32 0, i32 4
  %6 = load i32, i32* %quant_tbl_no, align 4
  %idxprom = sext i32 %6 to i64
  %7 = load %struct.my_fdct_controller*, %struct.my_fdct_controller** %fdct, align 8
  %float_divisors = getelementptr inbounds %struct.my_fdct_controller, %struct.my_fdct_controller* %7, i32 0, i32 4
  %arrayidx = getelementptr inbounds [4 x float*], [4 x float*]* %float_divisors, i32 0, i64 %idxprom
  %8 = load float*, float** %arrayidx, align 8
  store float* %8, float** %divisors, align 8
  %9 = load i32, i32* %start_row.addr, align 4
  %10 = load i8**, i8*** %sample_data.addr, align 8
  %idx.ext = zext i32 %9 to i64
  %add.ptr = getelementptr inbounds i8*, i8** %10, i64 %idx.ext
  store i8** %add.ptr, i8*** %sample_data.addr, align 8
  store i32 0, i32* %bi, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc.66, %entry
  %11 = load i32, i32* %bi, align 4
  %12 = load i32, i32* %num_blocks.addr, align 4
  %cmp = icmp ult i32 %11, %12
  br i1 %cmp, label %for.body, label %for.end.69

for.body:                                         ; preds = %for.cond
  %arraydecay = getelementptr inbounds [64 x float], [64 x float]* %workspace, i32 0, i32 0
  store float* %arraydecay, float** %workspaceptr, align 8
  store i32 0, i32* %elemr, align 4
  br label %for.cond.2

for.cond.2:                                       ; preds = %for.inc, %for.body
  %13 = load i32, i32* %elemr, align 4
  %cmp3 = icmp slt i32 %13, 8
  br i1 %cmp3, label %for.body.4, label %for.end

for.body.4:                                       ; preds = %for.cond.2
  %14 = load i32, i32* %elemr, align 4
  %idxprom5 = sext i32 %14 to i64
  %15 = load i8**, i8*** %sample_data.addr, align 8
  %arrayidx6 = getelementptr inbounds i8*, i8** %15, i64 %idxprom5
  %16 = load i8*, i8** %arrayidx6, align 8
  %17 = load i32, i32* %start_col.addr, align 4
  %idx.ext7 = zext i32 %17 to i64
  %add.ptr8 = getelementptr inbounds i8, i8* %16, i64 %idx.ext7
  store i8* %add.ptr8, i8** %elemptr, align 8
  %18 = load i8*, i8** %elemptr, align 8
  %incdec.ptr = getelementptr inbounds i8, i8* %18, i32 1
  store i8* %incdec.ptr, i8** %elemptr, align 8
  %19 = load i8, i8* %18, align 1
  %conv = zext i8 %19 to i32
  %sub = sub nsw i32 %conv, 128
  %conv9 = sitofp i32 %sub to float
  %20 = load float*, float** %workspaceptr, align 8
  %incdec.ptr10 = getelementptr inbounds float, float* %20, i32 1
  store float* %incdec.ptr10, float** %workspaceptr, align 8
  store float %conv9, float* %20, align 4
  %21 = load i8*, i8** %elemptr, align 8
  %incdec.ptr11 = getelementptr inbounds i8, i8* %21, i32 1
  store i8* %incdec.ptr11, i8** %elemptr, align 8
  %22 = load i8, i8* %21, align 1
  %conv12 = zext i8 %22 to i32
  %sub13 = sub nsw i32 %conv12, 128
  %conv14 = sitofp i32 %sub13 to float
  %23 = load float*, float** %workspaceptr, align 8
  %incdec.ptr15 = getelementptr inbounds float, float* %23, i32 1
  store float* %incdec.ptr15, float** %workspaceptr, align 8
  store float %conv14, float* %23, align 4
  %24 = load i8*, i8** %elemptr, align 8
  %incdec.ptr16 = getelementptr inbounds i8, i8* %24, i32 1
  store i8* %incdec.ptr16, i8** %elemptr, align 8
  %25 = load i8, i8* %24, align 1
  %conv17 = zext i8 %25 to i32
  %sub18 = sub nsw i32 %conv17, 128
  %conv19 = sitofp i32 %sub18 to float
  %26 = load float*, float** %workspaceptr, align 8
  %incdec.ptr20 = getelementptr inbounds float, float* %26, i32 1
  store float* %incdec.ptr20, float** %workspaceptr, align 8
  store float %conv19, float* %26, align 4
  %27 = load i8*, i8** %elemptr, align 8
  %incdec.ptr21 = getelementptr inbounds i8, i8* %27, i32 1
  store i8* %incdec.ptr21, i8** %elemptr, align 8
  %28 = load i8, i8* %27, align 1
  %conv22 = zext i8 %28 to i32
  %sub23 = sub nsw i32 %conv22, 128
  %conv24 = sitofp i32 %sub23 to float
  %29 = load float*, float** %workspaceptr, align 8
  %incdec.ptr25 = getelementptr inbounds float, float* %29, i32 1
  store float* %incdec.ptr25, float** %workspaceptr, align 8
  store float %conv24, float* %29, align 4
  %30 = load i8*, i8** %elemptr, align 8
  %incdec.ptr26 = getelementptr inbounds i8, i8* %30, i32 1
  store i8* %incdec.ptr26, i8** %elemptr, align 8
  %31 = load i8, i8* %30, align 1
  %conv27 = zext i8 %31 to i32
  %sub28 = sub nsw i32 %conv27, 128
  %conv29 = sitofp i32 %sub28 to float
  %32 = load float*, float** %workspaceptr, align 8
  %incdec.ptr30 = getelementptr inbounds float, float* %32, i32 1
  store float* %incdec.ptr30, float** %workspaceptr, align 8
  store float %conv29, float* %32, align 4
  %33 = load i8*, i8** %elemptr, align 8
  %incdec.ptr31 = getelementptr inbounds i8, i8* %33, i32 1
  store i8* %incdec.ptr31, i8** %elemptr, align 8
  %34 = load i8, i8* %33, align 1
  %conv32 = zext i8 %34 to i32
  %sub33 = sub nsw i32 %conv32, 128
  %conv34 = sitofp i32 %sub33 to float
  %35 = load float*, float** %workspaceptr, align 8
  %incdec.ptr35 = getelementptr inbounds float, float* %35, i32 1
  store float* %incdec.ptr35, float** %workspaceptr, align 8
  store float %conv34, float* %35, align 4
  %36 = load i8*, i8** %elemptr, align 8
  %incdec.ptr36 = getelementptr inbounds i8, i8* %36, i32 1
  store i8* %incdec.ptr36, i8** %elemptr, align 8
  %37 = load i8, i8* %36, align 1
  %conv37 = zext i8 %37 to i32
  %sub38 = sub nsw i32 %conv37, 128
  %conv39 = sitofp i32 %sub38 to float
  %38 = load float*, float** %workspaceptr, align 8
  %incdec.ptr40 = getelementptr inbounds float, float* %38, i32 1
  store float* %incdec.ptr40, float** %workspaceptr, align 8
  store float %conv39, float* %38, align 4
  %39 = load i8*, i8** %elemptr, align 8
  %incdec.ptr41 = getelementptr inbounds i8, i8* %39, i32 1
  store i8* %incdec.ptr41, i8** %elemptr, align 8
  %40 = load i8, i8* %39, align 1
  %conv42 = zext i8 %40 to i32
  %sub43 = sub nsw i32 %conv42, 128
  %conv44 = sitofp i32 %sub43 to float
  %41 = load float*, float** %workspaceptr, align 8
  %incdec.ptr45 = getelementptr inbounds float, float* %41, i32 1
  store float* %incdec.ptr45, float** %workspaceptr, align 8
  store float %conv44, float* %41, align 4
  br label %for.inc

for.inc:                                          ; preds = %for.body.4
  %42 = load i32, i32* %elemr, align 4
  %inc = add nsw i32 %42, 1
  store i32 %inc, i32* %elemr, align 4
  br label %for.cond.2

for.end:                                          ; preds = %for.cond.2
  %43 = load void (float*)*, void (float*)** %do_dct, align 8
  %arraydecay46 = getelementptr inbounds [64 x float], [64 x float]* %workspace, i32 0, i32 0
  call void %43(float* %arraydecay46)
  %44 = load i32, i32* %bi, align 4
  %idxprom47 = zext i32 %44 to i64
  %45 = load [64 x i16]*, [64 x i16]** %coef_blocks.addr, align 8
  %arrayidx48 = getelementptr inbounds [64 x i16], [64 x i16]* %45, i64 %idxprom47
  %arraydecay49 = getelementptr inbounds [64 x i16], [64 x i16]* %arrayidx48, i32 0, i32 0
  store i16* %arraydecay49, i16** %output_ptr, align 8
  store i32 0, i32* %i, align 4
  br label %for.cond.50

for.cond.50:                                      ; preds = %for.inc.63, %for.end
  %46 = load i32, i32* %i, align 4
  %cmp51 = icmp slt i32 %46, 64
  br i1 %cmp51, label %for.body.53, label %for.end.65

for.body.53:                                      ; preds = %for.cond.50
  %47 = load i32, i32* %i, align 4
  %idxprom54 = sext i32 %47 to i64
  %arrayidx55 = getelementptr inbounds [64 x float], [64 x float]* %workspace, i32 0, i64 %idxprom54
  %48 = load float, float* %arrayidx55, align 4
  %49 = load i32, i32* %i, align 4
  %idxprom56 = sext i32 %49 to i64
  %50 = load float*, float** %divisors, align 8
  %arrayidx57 = getelementptr inbounds float, float* %50, i64 %idxprom56
  %51 = load float, float* %arrayidx57, align 4
  %mul = fmul float %48, %51
  store float %mul, float* %temp, align 4
  %52 = load float, float* %temp, align 4
  %add = fadd float %52, 1.638450e+04
  %conv58 = fptosi float %add to i32
  %sub59 = sub nsw i32 %conv58, 16384
  %conv60 = trunc i32 %sub59 to i16
  %53 = load i32, i32* %i, align 4
  %idxprom61 = sext i32 %53 to i64
  %54 = load i16*, i16** %output_ptr, align 8
  %arrayidx62 = getelementptr inbounds i16, i16* %54, i64 %idxprom61
  store i16 %conv60, i16* %arrayidx62, align 2
  br label %for.inc.63

for.inc.63:                                       ; preds = %for.body.53
  %55 = load i32, i32* %i, align 4
  %inc64 = add nsw i32 %55, 1
  store i32 %inc64, i32* %i, align 4
  br label %for.cond.50

for.end.65:                                       ; preds = %for.cond.50
  br label %for.inc.66

for.inc.66:                                       ; preds = %for.end.65
  %56 = load i32, i32* %bi, align 4
  %inc67 = add i32 %56, 1
  store i32 %inc67, i32* %bi, align 4
  %57 = load i32, i32* %start_col.addr, align 4
  %add68 = add i32 %57, 8
  store i32 %add68, i32* %start_col.addr, align 4
  br label %for.cond

for.end.69:                                       ; preds = %for.cond
  ret void
}

declare void @jpeg_fdct_float(float*) #1

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.ident = !{!0}

!0 = !{!"clang version 3.7.0 (tags/RELEASE_370/final)"}
