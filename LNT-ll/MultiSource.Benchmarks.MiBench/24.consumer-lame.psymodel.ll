; ModuleID = './MultiSource.Benchmarks.MiBench/24.consumer-lame.psymodel.bc'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.III_psy_xmin = type { [22 x double], [13 x [3 x double]] }
%struct._IO_FILE = type { i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, %struct._IO_marker*, %struct._IO_FILE*, i32, i32, i64, i16, i8, [1 x i8], i8*, i64, i8*, i8*, i8*, i8*, i64, i32, [20 x i8] }
%struct._IO_marker = type { %struct._IO_marker*, %struct._IO_FILE*, i32 }
%struct.lame_global_flags = type { i64, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i8*, i8*, i32, i32, float, i32, i32, i32, i64, i64, i32, i32, i32, i32, i32, i32, i32, i32, float, i32, i32, i32, float, float, float, float, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.III_psy_ratio = type { %struct.III_psy_xmin, %struct.III_psy_xmin }

@L3psycho_anal.minval = internal global [63 x double] zeroinitializer, align 16
@L3psycho_anal.qthr_l = internal global [63 x double] zeroinitializer, align 16
@L3psycho_anal.qthr_s = internal global [63 x double] zeroinitializer, align 16
@L3psycho_anal.nb_1 = internal global [4 x [63 x double]] zeroinitializer, align 16
@L3psycho_anal.nb_2 = internal global [4 x [63 x double]] zeroinitializer, align 16
@L3psycho_anal.s3_s = internal global [64 x [64 x double]] zeroinitializer, align 16
@L3psycho_anal.s3_l = internal global [64 x [64 x double]] zeroinitializer, align 16
@L3psycho_anal.thm = internal global [4 x %struct.III_psy_xmin] zeroinitializer, align 16
@L3psycho_anal.en = internal global [4 x %struct.III_psy_xmin] zeroinitializer, align 16
@L3psycho_anal.cw_upper_index = internal global i32 0, align 4
@L3psycho_anal.cw_lower_index = internal global i32 0, align 4
@L3psycho_anal.ax_sav = internal global [4 x [2 x [513 x float]]] zeroinitializer, align 16
@L3psycho_anal.bx_sav = internal global [4 x [2 x [513 x float]]] zeroinitializer, align 16
@L3psycho_anal.rx_sav = internal global [4 x [2 x [513 x float]]] zeroinitializer, align 16
@L3psycho_anal.cw = internal global [513 x float] zeroinitializer, align 16
@L3psycho_anal.wsamp_L = internal global [2 x [1024 x float]] zeroinitializer, align 16
@L3psycho_anal.energy = internal global [513 x float] zeroinitializer, align 16
@L3psycho_anal.wsamp_S = internal global [2 x [3 x [256 x float]]] zeroinitializer, align 16
@L3psycho_anal.energy_s = internal global [3 x [129 x float]] zeroinitializer, align 16
@L3psycho_anal.eb = internal global [63 x double] zeroinitializer, align 16
@L3psycho_anal.cb = internal global [63 x double] zeroinitializer, align 16
@L3psycho_anal.thr = internal global [63 x double] zeroinitializer, align 16
@L3psycho_anal.w1_l = internal global [21 x double] zeroinitializer, align 16
@L3psycho_anal.w2_l = internal global [21 x double] zeroinitializer, align 16
@L3psycho_anal.w1_s = internal global [12 x double] zeroinitializer, align 16
@L3psycho_anal.w2_s = internal global [12 x double] zeroinitializer, align 16
@L3psycho_anal.mld_l = internal global [21 x double] zeroinitializer, align 16
@L3psycho_anal.mld_s = internal global [12 x double] zeroinitializer, align 16
@L3psycho_anal.bu_l = internal global [21 x i32] zeroinitializer, align 16
@L3psycho_anal.bo_l = internal global [21 x i32] zeroinitializer, align 16
@L3psycho_anal.bu_s = internal global [12 x i32] zeroinitializer, align 16
@L3psycho_anal.bo_s = internal global [12 x i32] zeroinitializer, align 16
@L3psycho_anal.npart_l = internal global i32 0, align 4
@L3psycho_anal.npart_s = internal global i32 0, align 4
@L3psycho_anal.npart_l_orig = internal global i32 0, align 4
@L3psycho_anal.npart_s_orig = internal global i32 0, align 4
@L3psycho_anal.s3ind = internal global [63 x [2 x i32]] zeroinitializer, align 16
@L3psycho_anal.s3ind_s = internal global [63 x [2 x i32]] zeroinitializer, align 16
@L3psycho_anal.numlines_s = internal global [63 x i32] zeroinitializer, align 16
@L3psycho_anal.numlines_l = internal global [63 x i32] zeroinitializer, align 16
@L3psycho_anal.partition_l = internal global [513 x i32] zeroinitializer, align 16
@L3psycho_anal.pe = internal global [4 x double] zeroinitializer, align 16
@L3psycho_anal.ms_ratio_s_old = internal global double 0.000000e+00, align 8
@L3psycho_anal.ms_ratio_l_old = internal global double 0.000000e+00, align 8
@L3psycho_anal.ms_ener_ratio_old = internal global double 2.500000e-01, align 8
@L3psycho_anal.blocktype_old = internal global [2 x i32] zeroinitializer, align 4
@stderr = external global %struct._IO_FILE*, align 8
@.str = private unnamed_addr constant [42 x i8] c"error, invalid sampling frequency: %d Hz\0A\00", align 1
@.str.1 = private unnamed_addr constant [26 x i8] c"Error in block selecting\0A\00", align 1
@psy_data = external global [0 x double], align 8
@.str.2 = private unnamed_addr constant [27 x i8] c"1. please check \22psy_data\22\00", align 1
@.str.3 = private unnamed_addr constant [27 x i8] c"3. please check \22psy_data\22\00", align 1
@.str.4 = private unnamed_addr constant [28 x i8] c"30:please check \22psy_data\22\0A\00", align 1
@.str.5 = private unnamed_addr constant [31 x i8] c"31l: please check \22psy_data.\22\0A\00", align 1
@.str.6 = private unnamed_addr constant [15 x i8] c"w1,w2: %f %f \0A\00", align 1
@.str.7 = private unnamed_addr constant [31 x i8] c"31s: please check \22psy_data.\22\0A\00", align 1

; Function Attrs: nounwind uwtable
define void @L3psycho_anal(%struct.lame_global_flags* %gfp, i16** %buffer, i32 %gr_out, double* %ms_ratio, double* %ms_ratio_next, double* %ms_ener_ratio, [2 x %struct.III_psy_ratio]* %masking_ratio, [2 x %struct.III_psy_ratio]* %masking_MS_ratio, double* %percep_entropy, double* %percep_MS_entropy, i32* %blocktype_d) #0 {
entry:
  %gfp.addr = alloca %struct.lame_global_flags*, align 8
  %buffer.addr = alloca i16**, align 8
  %gr_out.addr = alloca i32, align 4
  %ms_ratio.addr = alloca double*, align 8
  %ms_ratio_next.addr = alloca double*, align 8
  %ms_ener_ratio.addr = alloca double*, align 8
  %masking_ratio.addr = alloca [2 x %struct.III_psy_ratio]*, align 8
  %masking_MS_ratio.addr = alloca [2 x %struct.III_psy_ratio]*, align 8
  %percep_entropy.addr = alloca double*, align 8
  %percep_MS_entropy.addr = alloca double*, align 8
  %blocktype_d.addr = alloca i32*, align 8
  %wsamp_l = alloca [1024 x float]*, align 8
  %wsamp_s = alloca [3 x [256 x float]]*, align 8
  %tot_ener = alloca [4 x float], align 16
  %ms_ratio_l = alloca double, align 8
  %ms_ratio_s = alloca double, align 8
  %blocktype = alloca [2 x i32], align 4
  %uselongblock = alloca [2 x i32], align 4
  %numchn = alloca i32, align 4
  %chn = alloca i32, align 4
  %b = alloca i32, align 4
  %i = alloca i32, align 4
  %j = alloca i32, align 4
  %k = alloca i32, align 4
  %sb = alloca i32, align 4
  %sblock = alloca i32, align 4
  %cwlimit = alloca float, align 4
  %SNR_s = alloca [63 x double], align 16
  %mld = alloca double, align 8
  %mld40 = alloca double, align 8
  %norm = alloca double, align 8
  %norm254 = alloca double, align 8
  %l = alloca float, align 4
  %r = alloca float, align 4
  %l382 = alloca float, align 4
  %r387 = alloca float, align 4
  %re = alloca float, align 4
  %im = alloca float, align 4
  %re463 = alloca float, align 4
  %im469 = alloca float, align 4
  %an = alloca float, align 4
  %a1 = alloca float, align 4
  %a2 = alloca float, align 4
  %bn = alloca float, align 4
  %b1 = alloca float, align 4
  %b2 = alloca float, align 4
  %rn = alloca float, align 4
  %r1 = alloca float, align 4
  %r2 = alloca float, align 4
  %numre = alloca float, align 4
  %numim = alloca float, align 4
  %den = alloca float, align 4
  %tmp2 = alloca float, align 4
  %tmp1 = alloca float, align 4
  %tmp = alloca float, align 4
  %rn638 = alloca float, align 4
  %r1640 = alloca float, align 4
  %r2642 = alloca float, align 4
  %numre644 = alloca float, align 4
  %numim646 = alloca float, align 4
  %den648 = alloca float, align 4
  %a1657 = alloca float, align 4
  %b1662 = alloca float, align 4
  %a2683 = alloca float, align 4
  %b2688 = alloca float, align 4
  %tmp2694 = alloca float, align 4
  %tmp1700 = alloca float, align 4
  %tmp714 = alloca float, align 4
  %an736 = alloca float, align 4
  %bn741 = alloca float, align 4
  %ebb = alloca double, align 8
  %cbb = alloca double, align 8
  %i782 = alloca i32, align 4
  %i826 = alloca i32, align 4
  %ebb828 = alloca double, align 8
  %tbb = alloca double, align 8
  %ecb = alloca double, align 8
  %ctb = alloca double, align 8
  %temp_1 = alloca double, align 8
  %mn = alloca float, align 4
  %mx = alloca float, align 4
  %ma = alloca float, align 4
  %mb = alloca float, align 4
  %mc = alloca float, align 4
  %enn = alloca double, align 8
  %thmm = alloca double, align 8
  %i1193 = alloca i32, align 4
  %ecb1195 = alloca float, align 4
  %ecb1227 = alloca double, align 8
  %enn1269 = alloca double, align 8
  %thmm1286 = alloca double, align 8
  %rside = alloca double, align 8
  %rmid = alloca double, align 8
  %mld1348 = alloca double, align 8
  %chmid = alloca i32, align 4
  %chside = alloca i32, align 4
  %db = alloca double, align 8
  %x1 = alloca double, align 8
  %x2 = alloca double, align 8
  %sidetot = alloca double, align 8
  %tot = alloca double, align 8
  %bothlong = alloca i32, align 4
  %tmp1921 = alloca float, align 4
  store %struct.lame_global_flags* %gfp, %struct.lame_global_flags** %gfp.addr, align 8, !tbaa !1
  store i16** %buffer, i16*** %buffer.addr, align 8, !tbaa !1
  store i32 %gr_out, i32* %gr_out.addr, align 4, !tbaa !5
  store double* %ms_ratio, double** %ms_ratio.addr, align 8, !tbaa !1
  store double* %ms_ratio_next, double** %ms_ratio_next.addr, align 8, !tbaa !1
  store double* %ms_ener_ratio, double** %ms_ener_ratio.addr, align 8, !tbaa !1
  store [2 x %struct.III_psy_ratio]* %masking_ratio, [2 x %struct.III_psy_ratio]** %masking_ratio.addr, align 8, !tbaa !1
  store [2 x %struct.III_psy_ratio]* %masking_MS_ratio, [2 x %struct.III_psy_ratio]** %masking_MS_ratio.addr, align 8, !tbaa !1
  store double* %percep_entropy, double** %percep_entropy.addr, align 8, !tbaa !1
  store double* %percep_MS_entropy, double** %percep_MS_entropy.addr, align 8, !tbaa !1
  store i32* %blocktype_d, i32** %blocktype_d.addr, align 8, !tbaa !1
  %0 = bitcast [1024 x float]** %wsamp_l to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #1
  %1 = bitcast [3 x [256 x float]]** %wsamp_s to i8*
  call void @llvm.lifetime.start(i64 8, i8* %1) #1
  %2 = bitcast [4 x float]* %tot_ener to i8*
  call void @llvm.lifetime.start(i64 16, i8* %2) #1
  %3 = bitcast double* %ms_ratio_l to i8*
  call void @llvm.lifetime.start(i64 8, i8* %3) #1
  store double 0.000000e+00, double* %ms_ratio_l, align 8, !tbaa !7
  %4 = bitcast double* %ms_ratio_s to i8*
  call void @llvm.lifetime.start(i64 8, i8* %4) #1
  store double 0.000000e+00, double* %ms_ratio_s, align 8, !tbaa !7
  %5 = bitcast [2 x i32]* %blocktype to i8*
  call void @llvm.lifetime.start(i64 8, i8* %5) #1
  %6 = bitcast [2 x i32]* %uselongblock to i8*
  call void @llvm.lifetime.start(i64 8, i8* %6) #1
  %7 = bitcast i32* %numchn to i8*
  call void @llvm.lifetime.start(i64 4, i8* %7) #1
  %8 = bitcast i32* %chn to i8*
  call void @llvm.lifetime.start(i64 4, i8* %8) #1
  %9 = bitcast i32* %b to i8*
  call void @llvm.lifetime.start(i64 4, i8* %9) #1
  %10 = bitcast i32* %i to i8*
  call void @llvm.lifetime.start(i64 4, i8* %10) #1
  %11 = bitcast i32* %j to i8*
  call void @llvm.lifetime.start(i64 4, i8* %11) #1
  %12 = bitcast i32* %k to i8*
  call void @llvm.lifetime.start(i64 4, i8* %12) #1
  %13 = bitcast i32* %sb to i8*
  call void @llvm.lifetime.start(i64 4, i8* %13) #1
  %14 = bitcast i32* %sblock to i8*
  call void @llvm.lifetime.start(i64 4, i8* %14) #1
  %15 = bitcast float* %cwlimit to i8*
  call void @llvm.lifetime.start(i64 4, i8* %15) #1
  %16 = load %struct.lame_global_flags*, %struct.lame_global_flags** %gfp.addr, align 8, !tbaa !1
  %frameNum = getelementptr inbounds %struct.lame_global_flags, %struct.lame_global_flags* %16, i32 0, i32 39
  %17 = load i64, i64* %frameNum, align 8, !tbaa !9
  %cmp = icmp eq i64 %17, 0
  br i1 %cmp, label %land.lhs.true, label %if.end.297

land.lhs.true:                                    ; preds = %entry
  %18 = load i32, i32* %gr_out.addr, align 4, !tbaa !5
  %cmp1 = icmp eq i32 %18, 0
  br i1 %cmp1, label %if.then, label %if.end.297

if.then:                                          ; preds = %land.lhs.true
  %19 = bitcast [63 x double]* %SNR_s to i8*
  call void @llvm.lifetime.start(i64 504, i8* %19) #1
  store i32 3, i32* getelementptr inbounds ([2 x i32], [2 x i32]* @L3psycho_anal.blocktype_old, i32 0, i64 0), align 4, !tbaa !5
  store i32 3, i32* getelementptr inbounds ([2 x i32], [2 x i32]* @L3psycho_anal.blocktype_old, i32 0, i64 1), align 4, !tbaa !5
  %20 = load %struct.lame_global_flags*, %struct.lame_global_flags** %gfp.addr, align 8, !tbaa !1
  %out_samplerate = getelementptr inbounds %struct.lame_global_flags, %struct.lame_global_flags* %20, i32 0, i32 3
  %21 = load i32, i32* %out_samplerate, align 4, !tbaa !13
  store i32 %21, i32* %i, align 4, !tbaa !5
  %22 = load i32, i32* %i, align 4, !tbaa !5
  switch i32 %22, label %sw.default [
    i32 32000, label %sw.epilog
    i32 44100, label %sw.epilog
    i32 48000, label %sw.epilog
    i32 16000, label %sw.epilog
    i32 22050, label %sw.epilog
    i32 24000, label %sw.epilog
  ]

sw.default:                                       ; preds = %if.then
  %23 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !tbaa !1
  %24 = load i32, i32* %i, align 4, !tbaa !5
  %call = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %23, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str, i32 0, i32 0), i32 %24)
  call void @exit(i32 -1) #6
  unreachable

sw.epilog:                                        ; preds = %if.then, %if.then, %if.then, %if.then, %if.then, %if.then
  call void @llvm.memset.p0i8.i64(i8* bitcast ([4 x [2 x [513 x float]]]* @L3psycho_anal.rx_sav to i8*), i8 0, i64 16416, i32 16, i1 false)
  call void @llvm.memset.p0i8.i64(i8* bitcast ([4 x [2 x [513 x float]]]* @L3psycho_anal.ax_sav to i8*), i8 0, i64 16416, i32 16, i1 false)
  call void @llvm.memset.p0i8.i64(i8* bitcast ([4 x [2 x [513 x float]]]* @L3psycho_anal.bx_sav to i8*), i8 0, i64 16416, i32 16, i1 false)
  call void @llvm.memset.p0i8.i64(i8* bitcast ([4 x %struct.III_psy_xmin]* @L3psycho_anal.en to i8*), i8 0, i64 1952, i32 16, i1 false)
  call void @llvm.memset.p0i8.i64(i8* bitcast ([4 x %struct.III_psy_xmin]* @L3psycho_anal.thm to i8*), i8 0, i64 1952, i32 16, i1 false)
  store i32 6, i32* @L3psycho_anal.cw_lower_index, align 4, !tbaa !5
  %25 = load %struct.lame_global_flags*, %struct.lame_global_flags** %gfp.addr, align 8, !tbaa !1
  %cwlimit2 = getelementptr inbounds %struct.lame_global_flags, %struct.lame_global_flags* %25, i32 0, i32 35
  %26 = load float, float* %cwlimit2, align 4, !tbaa !14
  %cmp3 = fcmp ogt float %26, 0.000000e+00
  br i1 %cmp3, label %if.then.4, label %if.else

if.then.4:                                        ; preds = %sw.epilog
  %27 = load %struct.lame_global_flags*, %struct.lame_global_flags** %gfp.addr, align 8, !tbaa !1
  %cwlimit5 = getelementptr inbounds %struct.lame_global_flags, %struct.lame_global_flags* %27, i32 0, i32 35
  %28 = load float, float* %cwlimit5, align 4, !tbaa !14
  store float %28, float* %cwlimit, align 4, !tbaa !15
  br label %if.end

if.else:                                          ; preds = %sw.epilog
  store float 0x4021BE4F80000000, float* %cwlimit, align 4, !tbaa !15
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then.4
  %29 = load float, float* %cwlimit, align 4, !tbaa !15
  %conv = fpext float %29 to double
  %mul = fmul double %conv, 1.000000e+03
  %mul6 = fmul double %mul, 1.024000e+03
  %30 = load %struct.lame_global_flags*, %struct.lame_global_flags** %gfp.addr, align 8, !tbaa !1
  %out_samplerate7 = getelementptr inbounds %struct.lame_global_flags, %struct.lame_global_flags* %30, i32 0, i32 3
  %31 = load i32, i32* %out_samplerate7, align 4, !tbaa !13
  %conv8 = sitofp i32 %31 to double
  %div = fdiv double %mul6, %conv8
  %conv9 = fptosi double %div to i32
  store i32 %conv9, i32* @L3psycho_anal.cw_upper_index, align 4, !tbaa !5
  %32 = load i32, i32* @L3psycho_anal.cw_upper_index, align 4, !tbaa !5
  %cmp10 = icmp slt i32 509, %32
  br i1 %cmp10, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.end
  br label %cond.end

cond.false:                                       ; preds = %if.end
  %33 = load i32, i32* @L3psycho_anal.cw_upper_index, align 4, !tbaa !5
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ 509, %cond.true ], [ %33, %cond.false ]
  store i32 %cond, i32* @L3psycho_anal.cw_upper_index, align 4, !tbaa !5
  %34 = load i32, i32* @L3psycho_anal.cw_upper_index, align 4, !tbaa !5
  %cmp12 = icmp sgt i32 6, %34
  br i1 %cmp12, label %cond.true.14, label %cond.false.15

cond.true.14:                                     ; preds = %cond.end
  br label %cond.end.16

cond.false.15:                                    ; preds = %cond.end
  %35 = load i32, i32* @L3psycho_anal.cw_upper_index, align 4, !tbaa !5
  br label %cond.end.16

cond.end.16:                                      ; preds = %cond.false.15, %cond.true.14
  %cond17 = phi i32 [ 6, %cond.true.14 ], [ %35, %cond.false.15 ]
  store i32 %cond17, i32* @L3psycho_anal.cw_upper_index, align 4, !tbaa !5
  store i32 0, i32* %j, align 4, !tbaa !5
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %cond.end.16
  %36 = load i32, i32* %j, align 4, !tbaa !5
  %cmp18 = icmp slt i32 %36, 513
  br i1 %cmp18, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %37 = load i32, i32* %j, align 4, !tbaa !5
  %idxprom = sext i32 %37 to i64
  %arrayidx = getelementptr inbounds [513 x float], [513 x float]* @L3psycho_anal.cw, i32 0, i64 %idxprom
  store float 0x3FD99999A0000000, float* %arrayidx, align 4, !tbaa !15
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %38 = load i32, i32* %j, align 4, !tbaa !5
  %inc = add nsw i32 %38, 1
  store i32 %inc, i32* %j, align 4, !tbaa !5
  br label %for.cond

for.end:                                          ; preds = %for.cond
  store i32 0, i32* %sb, align 4, !tbaa !5
  br label %for.cond.20

for.cond.20:                                      ; preds = %for.inc.33, %for.end
  %39 = load i32, i32* %sb, align 4, !tbaa !5
  %cmp21 = icmp slt i32 %39, 12
  br i1 %cmp21, label %for.body.23, label %for.end.35

for.body.23:                                      ; preds = %for.cond.20
  %40 = bitcast double* %mld to i8*
  call void @llvm.lifetime.start(i64 8, i8* %40) #1
  %41 = load i32, i32* %sb, align 4, !tbaa !5
  %conv24 = sitofp i32 %41 to double
  %mul25 = fmul double 0x400921FB54442D18, %conv24
  %div26 = fdiv double %mul25, 1.200000e+01
  %call27 = call double @cos(double %div26) #1
  %sub = fsub double 1.000000e+00, %call27
  %mul28 = fmul double 1.250000e+00, %sub
  %sub29 = fsub double %mul28, 2.500000e+00
  store double %sub29, double* %mld, align 8, !tbaa !7
  %42 = load double, double* %mld, align 8, !tbaa !7
  %call30 = call double @pow(double 1.000000e+01, double %42) #1
  %43 = load i32, i32* %sb, align 4, !tbaa !5
  %idxprom31 = sext i32 %43 to i64
  %arrayidx32 = getelementptr inbounds [12 x double], [12 x double]* @L3psycho_anal.mld_s, i32 0, i64 %idxprom31
  store double %call30, double* %arrayidx32, align 8, !tbaa !7
  %44 = bitcast double* %mld to i8*
  call void @llvm.lifetime.end(i64 8, i8* %44) #1
  br label %for.inc.33

for.inc.33:                                       ; preds = %for.body.23
  %45 = load i32, i32* %sb, align 4, !tbaa !5
  %inc34 = add nsw i32 %45, 1
  store i32 %inc34, i32* %sb, align 4, !tbaa !5
  br label %for.cond.20

for.end.35:                                       ; preds = %for.cond.20
  store i32 0, i32* %sb, align 4, !tbaa !5
  br label %for.cond.36

for.cond.36:                                      ; preds = %for.inc.51, %for.end.35
  %46 = load i32, i32* %sb, align 4, !tbaa !5
  %cmp37 = icmp slt i32 %46, 21
  br i1 %cmp37, label %for.body.39, label %for.end.53

for.body.39:                                      ; preds = %for.cond.36
  %47 = bitcast double* %mld40 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %47) #1
  %48 = load i32, i32* %sb, align 4, !tbaa !5
  %conv41 = sitofp i32 %48 to double
  %mul42 = fmul double 0x400921FB54442D18, %conv41
  %div43 = fdiv double %mul42, 2.100000e+01
  %call44 = call double @cos(double %div43) #1
  %sub45 = fsub double 1.000000e+00, %call44
  %mul46 = fmul double 1.250000e+00, %sub45
  %sub47 = fsub double %mul46, 2.500000e+00
  store double %sub47, double* %mld40, align 8, !tbaa !7
  %49 = load double, double* %mld40, align 8, !tbaa !7
  %call48 = call double @pow(double 1.000000e+01, double %49) #1
  %50 = load i32, i32* %sb, align 4, !tbaa !5
  %idxprom49 = sext i32 %50 to i64
  %arrayidx50 = getelementptr inbounds [21 x double], [21 x double]* @L3psycho_anal.mld_l, i32 0, i64 %idxprom49
  store double %call48, double* %arrayidx50, align 8, !tbaa !7
  %51 = bitcast double* %mld40 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %51) #1
  br label %for.inc.51

for.inc.51:                                       ; preds = %for.body.39
  %52 = load i32, i32* %sb, align 4, !tbaa !5
  %inc52 = add nsw i32 %52, 1
  store i32 %inc52, i32* %sb, align 4, !tbaa !5
  br label %for.cond.36

for.end.53:                                       ; preds = %for.cond.36
  store i32 0, i32* %i, align 4, !tbaa !5
  br label %for.cond.54

for.cond.54:                                      ; preds = %for.inc.60, %for.end.53
  %53 = load i32, i32* %i, align 4, !tbaa !5
  %cmp55 = icmp slt i32 %53, 513
  br i1 %cmp55, label %for.body.57, label %for.end.62

for.body.57:                                      ; preds = %for.cond.54
  %54 = load i32, i32* %i, align 4, !tbaa !5
  %idxprom58 = sext i32 %54 to i64
  %arrayidx59 = getelementptr inbounds [513 x i32], [513 x i32]* @L3psycho_anal.partition_l, i32 0, i64 %idxprom58
  store i32 -1, i32* %arrayidx59, align 4, !tbaa !5
  br label %for.inc.60

for.inc.60:                                       ; preds = %for.body.57
  %55 = load i32, i32* %i, align 4, !tbaa !5
  %inc61 = add nsw i32 %55, 1
  store i32 %inc61, i32* %i, align 4, !tbaa !5
  br label %for.cond.54

for.end.62:                                       ; preds = %for.cond.54
  %56 = load %struct.lame_global_flags*, %struct.lame_global_flags** %gfp.addr, align 8, !tbaa !1
  %out_samplerate63 = getelementptr inbounds %struct.lame_global_flags, %struct.lame_global_flags* %56, i32 0, i32 3
  %57 = load i32, i32* %out_samplerate63, align 4, !tbaa !13
  %conv64 = sitofp i32 %57 to double
  %arraydecay = getelementptr inbounds [63 x double], [63 x double]* %SNR_s, i32 0, i32 0
  call void @L3para_read(double %conv64, i32* getelementptr inbounds ([63 x i32], [63 x i32]* @L3psycho_anal.numlines_l, i32 0, i32 0), i32* getelementptr inbounds ([63 x i32], [63 x i32]* @L3psycho_anal.numlines_s, i32 0, i32 0), i32* getelementptr inbounds ([513 x i32], [513 x i32]* @L3psycho_anal.partition_l, i32 0, i32 0), double* getelementptr inbounds ([63 x double], [63 x double]* @L3psycho_anal.minval, i32 0, i32 0), double* getelementptr inbounds ([63 x double], [63 x double]* @L3psycho_anal.qthr_l, i32 0, i32 0), [64 x double]* getelementptr inbounds ([64 x [64 x double]], [64 x [64 x double]]* @L3psycho_anal.s3_l, i32 0, i32 0), [64 x double]* getelementptr inbounds ([64 x [64 x double]], [64 x [64 x double]]* @L3psycho_anal.s3_s, i32 0, i32 0), double* getelementptr inbounds ([63 x double], [63 x double]* @L3psycho_anal.qthr_s, i32 0, i32 0), double* %arraydecay, i32* getelementptr inbounds ([21 x i32], [21 x i32]* @L3psycho_anal.bu_l, i32 0, i32 0), i32* getelementptr inbounds ([21 x i32], [21 x i32]* @L3psycho_anal.bo_l, i32 0, i32 0), double* getelementptr inbounds ([21 x double], [21 x double]* @L3psycho_anal.w1_l, i32 0, i32 0), double* getelementptr inbounds ([21 x double], [21 x double]* @L3psycho_anal.w2_l, i32 0, i32 0), i32* getelementptr inbounds ([12 x i32], [12 x i32]* @L3psycho_anal.bu_s, i32 0, i32 0), i32* getelementptr inbounds ([12 x i32], [12 x i32]* @L3psycho_anal.bo_s, i32 0, i32 0), double* getelementptr inbounds ([12 x double], [12 x double]* @L3psycho_anal.w1_s, i32 0, i32 0), double* getelementptr inbounds ([12 x double], [12 x double]* @L3psycho_anal.w2_s, i32 0, i32 0))
  store i32 0, i32* @L3psycho_anal.npart_l_orig, align 4, !tbaa !5
  store i32 0, i32* @L3psycho_anal.npart_s_orig, align 4, !tbaa !5
  store i32 0, i32* %i, align 4, !tbaa !5
  br label %for.cond.65

for.cond.65:                                      ; preds = %for.inc.77, %for.end.62
  %58 = load i32, i32* %i, align 4, !tbaa !5
  %cmp66 = icmp slt i32 %58, 513
  br i1 %cmp66, label %for.body.68, label %for.end.79

for.body.68:                                      ; preds = %for.cond.65
  %59 = load i32, i32* %i, align 4, !tbaa !5
  %idxprom69 = sext i32 %59 to i64
  %arrayidx70 = getelementptr inbounds [513 x i32], [513 x i32]* @L3psycho_anal.partition_l, i32 0, i64 %idxprom69
  %60 = load i32, i32* %arrayidx70, align 4, !tbaa !5
  %61 = load i32, i32* @L3psycho_anal.npart_l_orig, align 4, !tbaa !5
  %cmp71 = icmp sgt i32 %60, %61
  br i1 %cmp71, label %if.then.73, label %if.end.76

if.then.73:                                       ; preds = %for.body.68
  %62 = load i32, i32* %i, align 4, !tbaa !5
  %idxprom74 = sext i32 %62 to i64
  %arrayidx75 = getelementptr inbounds [513 x i32], [513 x i32]* @L3psycho_anal.partition_l, i32 0, i64 %idxprom74
  %63 = load i32, i32* %arrayidx75, align 4, !tbaa !5
  store i32 %63, i32* @L3psycho_anal.npart_l_orig, align 4, !tbaa !5
  br label %if.end.76

if.end.76:                                        ; preds = %if.then.73, %for.body.68
  br label %for.inc.77

for.inc.77:                                       ; preds = %if.end.76
  %64 = load i32, i32* %i, align 4, !tbaa !5
  %inc78 = add nsw i32 %64, 1
  store i32 %inc78, i32* %i, align 4, !tbaa !5
  br label %for.cond.65

for.end.79:                                       ; preds = %for.cond.65
  %65 = load i32, i32* @L3psycho_anal.npart_l_orig, align 4, !tbaa !5
  %inc80 = add nsw i32 %65, 1
  store i32 %inc80, i32* @L3psycho_anal.npart_l_orig, align 4, !tbaa !5
  store i32 0, i32* %i, align 4, !tbaa !5
  br label %for.cond.81

for.cond.81:                                      ; preds = %for.inc.87, %for.end.79
  %66 = load i32, i32* %i, align 4, !tbaa !5
  %idxprom82 = sext i32 %66 to i64
  %arrayidx83 = getelementptr inbounds [63 x i32], [63 x i32]* @L3psycho_anal.numlines_s, i32 0, i64 %idxprom82
  %67 = load i32, i32* %arrayidx83, align 4, !tbaa !5
  %cmp84 = icmp sge i32 %67, 0
  br i1 %cmp84, label %for.body.86, label %for.end.89

for.body.86:                                      ; preds = %for.cond.81
  br label %for.inc.87

for.inc.87:                                       ; preds = %for.body.86
  %68 = load i32, i32* %i, align 4, !tbaa !5
  %inc88 = add nsw i32 %68, 1
  store i32 %inc88, i32* %i, align 4, !tbaa !5
  br label %for.cond.81

for.end.89:                                       ; preds = %for.cond.81
  %69 = load i32, i32* %i, align 4, !tbaa !5
  store i32 %69, i32* @L3psycho_anal.npart_s_orig, align 4, !tbaa !5
  %70 = load i32, i32* getelementptr inbounds ([21 x i32], [21 x i32]* @L3psycho_anal.bo_l, i32 0, i64 20), align 4, !tbaa !5
  %add = add nsw i32 %70, 1
  store i32 %add, i32* @L3psycho_anal.npart_l, align 4, !tbaa !5
  %71 = load i32, i32* getelementptr inbounds ([12 x i32], [12 x i32]* @L3psycho_anal.bo_s, i32 0, i64 11), align 4, !tbaa !5
  %add90 = add nsw i32 %71, 1
  store i32 %add90, i32* @L3psycho_anal.npart_s, align 4, !tbaa !5
  %72 = load i32, i32* @L3psycho_anal.npart_l, align 4, !tbaa !5
  %73 = load i32, i32* @L3psycho_anal.npart_l_orig, align 4, !tbaa !5
  %cmp91 = icmp sgt i32 %72, %73
  br i1 %cmp91, label %if.then.93, label %if.end.95

if.then.93:                                       ; preds = %for.end.89
  %74 = load i32, i32* @L3psycho_anal.npart_l_orig, align 4, !tbaa !5
  store i32 %74, i32* @L3psycho_anal.npart_l, align 4, !tbaa !5
  %75 = load i32, i32* @L3psycho_anal.npart_l, align 4, !tbaa !5
  %sub94 = sub nsw i32 %75, 1
  store i32 %sub94, i32* getelementptr inbounds ([21 x i32], [21 x i32]* @L3psycho_anal.bo_l, i32 0, i64 20), align 4, !tbaa !5
  store double 1.000000e+00, double* getelementptr inbounds ([21 x double], [21 x double]* @L3psycho_anal.w2_l, i32 0, i64 20), align 8, !tbaa !7
  br label %if.end.95

if.end.95:                                        ; preds = %if.then.93, %for.end.89
  %76 = load i32, i32* @L3psycho_anal.npart_s, align 4, !tbaa !5
  %77 = load i32, i32* @L3psycho_anal.npart_s_orig, align 4, !tbaa !5
  %cmp96 = icmp sgt i32 %76, %77
  br i1 %cmp96, label %if.then.98, label %if.end.100

if.then.98:                                       ; preds = %if.end.95
  %78 = load i32, i32* @L3psycho_anal.npart_s_orig, align 4, !tbaa !5
  store i32 %78, i32* @L3psycho_anal.npart_s, align 4, !tbaa !5
  %79 = load i32, i32* @L3psycho_anal.npart_s, align 4, !tbaa !5
  %sub99 = sub nsw i32 %79, 1
  store i32 %sub99, i32* getelementptr inbounds ([12 x i32], [12 x i32]* @L3psycho_anal.bo_s, i32 0, i64 11), align 4, !tbaa !5
  store double 1.000000e+00, double* getelementptr inbounds ([12 x double], [12 x double]* @L3psycho_anal.w2_s, i32 0, i64 11), align 8, !tbaa !7
  br label %if.end.100

if.end.100:                                       ; preds = %if.then.98, %if.end.95
  store i32 0, i32* %i, align 4, !tbaa !5
  br label %for.cond.101

for.cond.101:                                     ; preds = %for.inc.141, %if.end.100
  %80 = load i32, i32* %i, align 4, !tbaa !5
  %81 = load i32, i32* @L3psycho_anal.npart_l, align 4, !tbaa !5
  %cmp102 = icmp slt i32 %80, %81
  br i1 %cmp102, label %for.body.104, label %for.end.143

for.body.104:                                     ; preds = %for.cond.101
  store i32 0, i32* %j, align 4, !tbaa !5
  br label %for.cond.105

for.cond.105:                                     ; preds = %for.inc.117, %for.body.104
  %82 = load i32, i32* %j, align 4, !tbaa !5
  %83 = load i32, i32* @L3psycho_anal.npart_l_orig, align 4, !tbaa !5
  %cmp106 = icmp slt i32 %82, %83
  br i1 %cmp106, label %for.body.108, label %for.end.119

for.body.108:                                     ; preds = %for.cond.105
  %84 = load i32, i32* %j, align 4, !tbaa !5
  %idxprom109 = sext i32 %84 to i64
  %85 = load i32, i32* %i, align 4, !tbaa !5
  %idxprom110 = sext i32 %85 to i64
  %arrayidx111 = getelementptr inbounds [64 x [64 x double]], [64 x [64 x double]]* @L3psycho_anal.s3_l, i32 0, i64 %idxprom110
  %arrayidx112 = getelementptr inbounds [64 x double], [64 x double]* %arrayidx111, i32 0, i64 %idxprom109
  %86 = load double, double* %arrayidx112, align 8, !tbaa !7
  %cmp113 = fcmp une double %86, 0.000000e+00
  br i1 %cmp113, label %if.then.115, label %if.end.116

if.then.115:                                      ; preds = %for.body.108
  br label %for.end.119

if.end.116:                                       ; preds = %for.body.108
  br label %for.inc.117

for.inc.117:                                      ; preds = %if.end.116
  %87 = load i32, i32* %j, align 4, !tbaa !5
  %inc118 = add nsw i32 %87, 1
  store i32 %inc118, i32* %j, align 4, !tbaa !5
  br label %for.cond.105

for.end.119:                                      ; preds = %if.then.115, %for.cond.105
  %88 = load i32, i32* %j, align 4, !tbaa !5
  %89 = load i32, i32* %i, align 4, !tbaa !5
  %idxprom120 = sext i32 %89 to i64
  %arrayidx121 = getelementptr inbounds [63 x [2 x i32]], [63 x [2 x i32]]* @L3psycho_anal.s3ind, i32 0, i64 %idxprom120
  %arrayidx122 = getelementptr inbounds [2 x i32], [2 x i32]* %arrayidx121, i32 0, i64 0
  store i32 %88, i32* %arrayidx122, align 4, !tbaa !5
  %90 = load i32, i32* @L3psycho_anal.npart_l_orig, align 4, !tbaa !5
  %sub123 = sub nsw i32 %90, 1
  store i32 %sub123, i32* %j, align 4, !tbaa !5
  br label %for.cond.124

for.cond.124:                                     ; preds = %for.inc.136, %for.end.119
  %91 = load i32, i32* %j, align 4, !tbaa !5
  %cmp125 = icmp sgt i32 %91, 0
  br i1 %cmp125, label %for.body.127, label %for.end.137

for.body.127:                                     ; preds = %for.cond.124
  %92 = load i32, i32* %j, align 4, !tbaa !5
  %idxprom128 = sext i32 %92 to i64
  %93 = load i32, i32* %i, align 4, !tbaa !5
  %idxprom129 = sext i32 %93 to i64
  %arrayidx130 = getelementptr inbounds [64 x [64 x double]], [64 x [64 x double]]* @L3psycho_anal.s3_l, i32 0, i64 %idxprom129
  %arrayidx131 = getelementptr inbounds [64 x double], [64 x double]* %arrayidx130, i32 0, i64 %idxprom128
  %94 = load double, double* %arrayidx131, align 8, !tbaa !7
  %cmp132 = fcmp une double %94, 0.000000e+00
  br i1 %cmp132, label %if.then.134, label %if.end.135

if.then.134:                                      ; preds = %for.body.127
  br label %for.end.137

if.end.135:                                       ; preds = %for.body.127
  br label %for.inc.136

for.inc.136:                                      ; preds = %if.end.135
  %95 = load i32, i32* %j, align 4, !tbaa !5
  %dec = add nsw i32 %95, -1
  store i32 %dec, i32* %j, align 4, !tbaa !5
  br label %for.cond.124

for.end.137:                                      ; preds = %if.then.134, %for.cond.124
  %96 = load i32, i32* %j, align 4, !tbaa !5
  %97 = load i32, i32* %i, align 4, !tbaa !5
  %idxprom138 = sext i32 %97 to i64
  %arrayidx139 = getelementptr inbounds [63 x [2 x i32]], [63 x [2 x i32]]* @L3psycho_anal.s3ind, i32 0, i64 %idxprom138
  %arrayidx140 = getelementptr inbounds [2 x i32], [2 x i32]* %arrayidx139, i32 0, i64 1
  store i32 %96, i32* %arrayidx140, align 4, !tbaa !5
  br label %for.inc.141

for.inc.141:                                      ; preds = %for.end.137
  %98 = load i32, i32* %i, align 4, !tbaa !5
  %inc142 = add nsw i32 %98, 1
  store i32 %inc142, i32* %i, align 4, !tbaa !5
  br label %for.cond.101

for.end.143:                                      ; preds = %for.cond.101
  store i32 0, i32* %i, align 4, !tbaa !5
  br label %for.cond.144

for.cond.144:                                     ; preds = %for.inc.185, %for.end.143
  %99 = load i32, i32* %i, align 4, !tbaa !5
  %100 = load i32, i32* @L3psycho_anal.npart_s, align 4, !tbaa !5
  %cmp145 = icmp slt i32 %99, %100
  br i1 %cmp145, label %for.body.147, label %for.end.187

for.body.147:                                     ; preds = %for.cond.144
  store i32 0, i32* %j, align 4, !tbaa !5
  br label %for.cond.148

for.cond.148:                                     ; preds = %for.inc.160, %for.body.147
  %101 = load i32, i32* %j, align 4, !tbaa !5
  %102 = load i32, i32* @L3psycho_anal.npart_s_orig, align 4, !tbaa !5
  %cmp149 = icmp slt i32 %101, %102
  br i1 %cmp149, label %for.body.151, label %for.end.162

for.body.151:                                     ; preds = %for.cond.148
  %103 = load i32, i32* %j, align 4, !tbaa !5
  %idxprom152 = sext i32 %103 to i64
  %104 = load i32, i32* %i, align 4, !tbaa !5
  %idxprom153 = sext i32 %104 to i64
  %arrayidx154 = getelementptr inbounds [64 x [64 x double]], [64 x [64 x double]]* @L3psycho_anal.s3_s, i32 0, i64 %idxprom153
  %arrayidx155 = getelementptr inbounds [64 x double], [64 x double]* %arrayidx154, i32 0, i64 %idxprom152
  %105 = load double, double* %arrayidx155, align 8, !tbaa !7
  %cmp156 = fcmp une double %105, 0.000000e+00
  br i1 %cmp156, label %if.then.158, label %if.end.159

if.then.158:                                      ; preds = %for.body.151
  br label %for.end.162

if.end.159:                                       ; preds = %for.body.151
  br label %for.inc.160

for.inc.160:                                      ; preds = %if.end.159
  %106 = load i32, i32* %j, align 4, !tbaa !5
  %inc161 = add nsw i32 %106, 1
  store i32 %inc161, i32* %j, align 4, !tbaa !5
  br label %for.cond.148

for.end.162:                                      ; preds = %if.then.158, %for.cond.148
  %107 = load i32, i32* %j, align 4, !tbaa !5
  %108 = load i32, i32* %i, align 4, !tbaa !5
  %idxprom163 = sext i32 %108 to i64
  %arrayidx164 = getelementptr inbounds [63 x [2 x i32]], [63 x [2 x i32]]* @L3psycho_anal.s3ind_s, i32 0, i64 %idxprom163
  %arrayidx165 = getelementptr inbounds [2 x i32], [2 x i32]* %arrayidx164, i32 0, i64 0
  store i32 %107, i32* %arrayidx165, align 4, !tbaa !5
  %109 = load i32, i32* @L3psycho_anal.npart_s_orig, align 4, !tbaa !5
  %sub166 = sub nsw i32 %109, 1
  store i32 %sub166, i32* %j, align 4, !tbaa !5
  br label %for.cond.167

for.cond.167:                                     ; preds = %for.inc.179, %for.end.162
  %110 = load i32, i32* %j, align 4, !tbaa !5
  %cmp168 = icmp sgt i32 %110, 0
  br i1 %cmp168, label %for.body.170, label %for.end.181

for.body.170:                                     ; preds = %for.cond.167
  %111 = load i32, i32* %j, align 4, !tbaa !5
  %idxprom171 = sext i32 %111 to i64
  %112 = load i32, i32* %i, align 4, !tbaa !5
  %idxprom172 = sext i32 %112 to i64
  %arrayidx173 = getelementptr inbounds [64 x [64 x double]], [64 x [64 x double]]* @L3psycho_anal.s3_s, i32 0, i64 %idxprom172
  %arrayidx174 = getelementptr inbounds [64 x double], [64 x double]* %arrayidx173, i32 0, i64 %idxprom171
  %113 = load double, double* %arrayidx174, align 8, !tbaa !7
  %cmp175 = fcmp une double %113, 0.000000e+00
  br i1 %cmp175, label %if.then.177, label %if.end.178

if.then.177:                                      ; preds = %for.body.170
  br label %for.end.181

if.end.178:                                       ; preds = %for.body.170
  br label %for.inc.179

for.inc.179:                                      ; preds = %if.end.178
  %114 = load i32, i32* %j, align 4, !tbaa !5
  %dec180 = add nsw i32 %114, -1
  store i32 %dec180, i32* %j, align 4, !tbaa !5
  br label %for.cond.167

for.end.181:                                      ; preds = %if.then.177, %for.cond.167
  %115 = load i32, i32* %j, align 4, !tbaa !5
  %116 = load i32, i32* %i, align 4, !tbaa !5
  %idxprom182 = sext i32 %116 to i64
  %arrayidx183 = getelementptr inbounds [63 x [2 x i32]], [63 x [2 x i32]]* @L3psycho_anal.s3ind_s, i32 0, i64 %idxprom182
  %arrayidx184 = getelementptr inbounds [2 x i32], [2 x i32]* %arrayidx183, i32 0, i64 1
  store i32 %115, i32* %arrayidx184, align 4, !tbaa !5
  br label %for.inc.185

for.inc.185:                                      ; preds = %for.end.181
  %117 = load i32, i32* %i, align 4, !tbaa !5
  %inc186 = add nsw i32 %117, 1
  store i32 %inc186, i32* %i, align 4, !tbaa !5
  br label %for.cond.144

for.end.187:                                      ; preds = %for.cond.144
  store i32 0, i32* %b, align 4, !tbaa !5
  br label %for.cond.188

for.cond.188:                                     ; preds = %for.inc.230, %for.end.187
  %118 = load i32, i32* %b, align 4, !tbaa !5
  %119 = load i32, i32* @L3psycho_anal.npart_l, align 4, !tbaa !5
  %cmp189 = icmp slt i32 %118, %119
  br i1 %cmp189, label %for.body.191, label %for.end.232

for.body.191:                                     ; preds = %for.cond.188
  %120 = bitcast double* %norm to i8*
  call void @llvm.lifetime.start(i64 8, i8* %120) #1
  store double 0.000000e+00, double* %norm, align 8, !tbaa !7
  %121 = load i32, i32* %b, align 4, !tbaa !5
  %idxprom192 = sext i32 %121 to i64
  %arrayidx193 = getelementptr inbounds [63 x [2 x i32]], [63 x [2 x i32]]* @L3psycho_anal.s3ind, i32 0, i64 %idxprom192
  %arrayidx194 = getelementptr inbounds [2 x i32], [2 x i32]* %arrayidx193, i32 0, i64 0
  %122 = load i32, i32* %arrayidx194, align 4, !tbaa !5
  store i32 %122, i32* %k, align 4, !tbaa !5
  br label %for.cond.195

for.cond.195:                                     ; preds = %for.inc.207, %for.body.191
  %123 = load i32, i32* %k, align 4, !tbaa !5
  %124 = load i32, i32* %b, align 4, !tbaa !5
  %idxprom196 = sext i32 %124 to i64
  %arrayidx197 = getelementptr inbounds [63 x [2 x i32]], [63 x [2 x i32]]* @L3psycho_anal.s3ind, i32 0, i64 %idxprom196
  %arrayidx198 = getelementptr inbounds [2 x i32], [2 x i32]* %arrayidx197, i32 0, i64 1
  %125 = load i32, i32* %arrayidx198, align 4, !tbaa !5
  %cmp199 = icmp sle i32 %123, %125
  br i1 %cmp199, label %for.body.201, label %for.end.209

for.body.201:                                     ; preds = %for.cond.195
  %126 = load i32, i32* %k, align 4, !tbaa !5
  %idxprom202 = sext i32 %126 to i64
  %127 = load i32, i32* %b, align 4, !tbaa !5
  %idxprom203 = sext i32 %127 to i64
  %arrayidx204 = getelementptr inbounds [64 x [64 x double]], [64 x [64 x double]]* @L3psycho_anal.s3_l, i32 0, i64 %idxprom203
  %arrayidx205 = getelementptr inbounds [64 x double], [64 x double]* %arrayidx204, i32 0, i64 %idxprom202
  %128 = load double, double* %arrayidx205, align 8, !tbaa !7
  %129 = load double, double* %norm, align 8, !tbaa !7
  %add206 = fadd double %129, %128
  store double %add206, double* %norm, align 8, !tbaa !7
  br label %for.inc.207

for.inc.207:                                      ; preds = %for.body.201
  %130 = load i32, i32* %k, align 4, !tbaa !5
  %inc208 = add nsw i32 %130, 1
  store i32 %inc208, i32* %k, align 4, !tbaa !5
  br label %for.cond.195

for.end.209:                                      ; preds = %for.cond.195
  %131 = load i32, i32* %b, align 4, !tbaa !5
  %idxprom210 = sext i32 %131 to i64
  %arrayidx211 = getelementptr inbounds [63 x [2 x i32]], [63 x [2 x i32]]* @L3psycho_anal.s3ind, i32 0, i64 %idxprom210
  %arrayidx212 = getelementptr inbounds [2 x i32], [2 x i32]* %arrayidx211, i32 0, i64 0
  %132 = load i32, i32* %arrayidx212, align 4, !tbaa !5
  store i32 %132, i32* %k, align 4, !tbaa !5
  br label %for.cond.213

for.cond.213:                                     ; preds = %for.inc.227, %for.end.209
  %133 = load i32, i32* %k, align 4, !tbaa !5
  %134 = load i32, i32* %b, align 4, !tbaa !5
  %idxprom214 = sext i32 %134 to i64
  %arrayidx215 = getelementptr inbounds [63 x [2 x i32]], [63 x [2 x i32]]* @L3psycho_anal.s3ind, i32 0, i64 %idxprom214
  %arrayidx216 = getelementptr inbounds [2 x i32], [2 x i32]* %arrayidx215, i32 0, i64 1
  %135 = load i32, i32* %arrayidx216, align 4, !tbaa !5
  %cmp217 = icmp sle i32 %133, %135
  br i1 %cmp217, label %for.body.219, label %for.end.229

for.body.219:                                     ; preds = %for.cond.213
  %call220 = call double @exp(double 0xBFF61AD547A6661A) #1
  %136 = load double, double* %norm, align 8, !tbaa !7
  %div221 = fdiv double %call220, %136
  %137 = load i32, i32* %k, align 4, !tbaa !5
  %idxprom222 = sext i32 %137 to i64
  %138 = load i32, i32* %b, align 4, !tbaa !5
  %idxprom223 = sext i32 %138 to i64
  %arrayidx224 = getelementptr inbounds [64 x [64 x double]], [64 x [64 x double]]* @L3psycho_anal.s3_l, i32 0, i64 %idxprom223
  %arrayidx225 = getelementptr inbounds [64 x double], [64 x double]* %arrayidx224, i32 0, i64 %idxprom222
  %139 = load double, double* %arrayidx225, align 8, !tbaa !7
  %mul226 = fmul double %139, %div221
  store double %mul226, double* %arrayidx225, align 8, !tbaa !7
  br label %for.inc.227

for.inc.227:                                      ; preds = %for.body.219
  %140 = load i32, i32* %k, align 4, !tbaa !5
  %inc228 = add nsw i32 %140, 1
  store i32 %inc228, i32* %k, align 4, !tbaa !5
  br label %for.cond.213

for.end.229:                                      ; preds = %for.cond.213
  %141 = bitcast double* %norm to i8*
  call void @llvm.lifetime.end(i64 8, i8* %141) #1
  br label %for.inc.230

for.inc.230:                                      ; preds = %for.end.229
  %142 = load i32, i32* %b, align 4, !tbaa !5
  %inc231 = add nsw i32 %142, 1
  store i32 %inc231, i32* %b, align 4, !tbaa !5
  br label %for.cond.188

for.end.232:                                      ; preds = %for.cond.188
  %143 = load %struct.lame_global_flags*, %struct.lame_global_flags** %gfp.addr, align 8, !tbaa !1
  %version = getelementptr inbounds %struct.lame_global_flags, %struct.lame_global_flags* %143, i32 0, i32 43
  %144 = load i32, i32* %version, align 4, !tbaa !16
  %cmp233 = icmp eq i32 %144, 1
  br i1 %cmp233, label %if.then.235, label %if.end.249

if.then.235:                                      ; preds = %for.end.232
  store i32 0, i32* %b, align 4, !tbaa !5
  br label %for.cond.236

for.cond.236:                                     ; preds = %for.inc.246, %if.then.235
  %145 = load i32, i32* %b, align 4, !tbaa !5
  %146 = load i32, i32* @L3psycho_anal.npart_s, align 4, !tbaa !5
  %cmp237 = icmp slt i32 %145, %146
  br i1 %cmp237, label %for.body.239, label %for.end.248

for.body.239:                                     ; preds = %for.cond.236
  %147 = load i32, i32* %b, align 4, !tbaa !5
  %idxprom240 = sext i32 %147 to i64
  %arrayidx241 = getelementptr inbounds [63 x double], [63 x double]* %SNR_s, i32 0, i64 %idxprom240
  %148 = load double, double* %arrayidx241, align 8, !tbaa !7
  %mul242 = fmul double %148, 0x3FCD791C5F888823
  %call243 = call double @exp(double %mul242) #1
  %149 = load i32, i32* %b, align 4, !tbaa !5
  %idxprom244 = sext i32 %149 to i64
  %arrayidx245 = getelementptr inbounds [63 x double], [63 x double]* %SNR_s, i32 0, i64 %idxprom244
  store double %call243, double* %arrayidx245, align 8, !tbaa !7
  br label %for.inc.246

for.inc.246:                                      ; preds = %for.body.239
  %150 = load i32, i32* %b, align 4, !tbaa !5
  %inc247 = add nsw i32 %150, 1
  store i32 %inc247, i32* %b, align 4, !tbaa !5
  br label %for.cond.236

for.end.248:                                      ; preds = %for.cond.236
  br label %if.end.249

if.end.249:                                       ; preds = %for.end.248, %for.end.232
  store i32 0, i32* %b, align 4, !tbaa !5
  br label %for.cond.250

for.cond.250:                                     ; preds = %for.inc.294, %if.end.249
  %151 = load i32, i32* %b, align 4, !tbaa !5
  %152 = load i32, i32* @L3psycho_anal.npart_s, align 4, !tbaa !5
  %cmp251 = icmp slt i32 %151, %152
  br i1 %cmp251, label %for.body.253, label %for.end.296

for.body.253:                                     ; preds = %for.cond.250
  %153 = bitcast double* %norm254 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %153) #1
  store double 0.000000e+00, double* %norm254, align 8, !tbaa !7
  %154 = load i32, i32* %b, align 4, !tbaa !5
  %idxprom255 = sext i32 %154 to i64
  %arrayidx256 = getelementptr inbounds [63 x [2 x i32]], [63 x [2 x i32]]* @L3psycho_anal.s3ind_s, i32 0, i64 %idxprom255
  %arrayidx257 = getelementptr inbounds [2 x i32], [2 x i32]* %arrayidx256, i32 0, i64 0
  %155 = load i32, i32* %arrayidx257, align 4, !tbaa !5
  store i32 %155, i32* %k, align 4, !tbaa !5
  br label %for.cond.258

for.cond.258:                                     ; preds = %for.inc.270, %for.body.253
  %156 = load i32, i32* %k, align 4, !tbaa !5
  %157 = load i32, i32* %b, align 4, !tbaa !5
  %idxprom259 = sext i32 %157 to i64
  %arrayidx260 = getelementptr inbounds [63 x [2 x i32]], [63 x [2 x i32]]* @L3psycho_anal.s3ind_s, i32 0, i64 %idxprom259
  %arrayidx261 = getelementptr inbounds [2 x i32], [2 x i32]* %arrayidx260, i32 0, i64 1
  %158 = load i32, i32* %arrayidx261, align 4, !tbaa !5
  %cmp262 = icmp sle i32 %156, %158
  br i1 %cmp262, label %for.body.264, label %for.end.272

for.body.264:                                     ; preds = %for.cond.258
  %159 = load i32, i32* %k, align 4, !tbaa !5
  %idxprom265 = sext i32 %159 to i64
  %160 = load i32, i32* %b, align 4, !tbaa !5
  %idxprom266 = sext i32 %160 to i64
  %arrayidx267 = getelementptr inbounds [64 x [64 x double]], [64 x [64 x double]]* @L3psycho_anal.s3_s, i32 0, i64 %idxprom266
  %arrayidx268 = getelementptr inbounds [64 x double], [64 x double]* %arrayidx267, i32 0, i64 %idxprom265
  %161 = load double, double* %arrayidx268, align 8, !tbaa !7
  %162 = load double, double* %norm254, align 8, !tbaa !7
  %add269 = fadd double %162, %161
  store double %add269, double* %norm254, align 8, !tbaa !7
  br label %for.inc.270

for.inc.270:                                      ; preds = %for.body.264
  %163 = load i32, i32* %k, align 4, !tbaa !5
  %inc271 = add nsw i32 %163, 1
  store i32 %inc271, i32* %k, align 4, !tbaa !5
  br label %for.cond.258

for.end.272:                                      ; preds = %for.cond.258
  %164 = load i32, i32* %b, align 4, !tbaa !5
  %idxprom273 = sext i32 %164 to i64
  %arrayidx274 = getelementptr inbounds [63 x [2 x i32]], [63 x [2 x i32]]* @L3psycho_anal.s3ind_s, i32 0, i64 %idxprom273
  %arrayidx275 = getelementptr inbounds [2 x i32], [2 x i32]* %arrayidx274, i32 0, i64 0
  %165 = load i32, i32* %arrayidx275, align 4, !tbaa !5
  store i32 %165, i32* %k, align 4, !tbaa !5
  br label %for.cond.276

for.cond.276:                                     ; preds = %for.inc.291, %for.end.272
  %166 = load i32, i32* %k, align 4, !tbaa !5
  %167 = load i32, i32* %b, align 4, !tbaa !5
  %idxprom277 = sext i32 %167 to i64
  %arrayidx278 = getelementptr inbounds [63 x [2 x i32]], [63 x [2 x i32]]* @L3psycho_anal.s3ind_s, i32 0, i64 %idxprom277
  %arrayidx279 = getelementptr inbounds [2 x i32], [2 x i32]* %arrayidx278, i32 0, i64 1
  %168 = load i32, i32* %arrayidx279, align 4, !tbaa !5
  %cmp280 = icmp sle i32 %166, %168
  br i1 %cmp280, label %for.body.282, label %for.end.293

for.body.282:                                     ; preds = %for.cond.276
  %169 = load i32, i32* %b, align 4, !tbaa !5
  %idxprom283 = sext i32 %169 to i64
  %arrayidx284 = getelementptr inbounds [63 x double], [63 x double]* %SNR_s, i32 0, i64 %idxprom283
  %170 = load double, double* %arrayidx284, align 8, !tbaa !7
  %171 = load double, double* %norm254, align 8, !tbaa !7
  %div285 = fdiv double %170, %171
  %172 = load i32, i32* %k, align 4, !tbaa !5
  %idxprom286 = sext i32 %172 to i64
  %173 = load i32, i32* %b, align 4, !tbaa !5
  %idxprom287 = sext i32 %173 to i64
  %arrayidx288 = getelementptr inbounds [64 x [64 x double]], [64 x [64 x double]]* @L3psycho_anal.s3_s, i32 0, i64 %idxprom287
  %arrayidx289 = getelementptr inbounds [64 x double], [64 x double]* %arrayidx288, i32 0, i64 %idxprom286
  %174 = load double, double* %arrayidx289, align 8, !tbaa !7
  %mul290 = fmul double %174, %div285
  store double %mul290, double* %arrayidx289, align 8, !tbaa !7
  br label %for.inc.291

for.inc.291:                                      ; preds = %for.body.282
  %175 = load i32, i32* %k, align 4, !tbaa !5
  %inc292 = add nsw i32 %175, 1
  store i32 %inc292, i32* %k, align 4, !tbaa !5
  br label %for.cond.276

for.end.293:                                      ; preds = %for.cond.276
  %176 = bitcast double* %norm254 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %176) #1
  br label %for.inc.294

for.inc.294:                                      ; preds = %for.end.293
  %177 = load i32, i32* %b, align 4, !tbaa !5
  %inc295 = add nsw i32 %177, 1
  store i32 %inc295, i32* %b, align 4, !tbaa !5
  br label %for.cond.250

for.end.296:                                      ; preds = %for.cond.250
  call void @init_fft()
  %178 = bitcast [63 x double]* %SNR_s to i8*
  call void @llvm.lifetime.end(i64 504, i8* %178) #1
  br label %if.end.297

if.end.297:                                       ; preds = %for.end.296, %land.lhs.true, %entry
  %179 = load %struct.lame_global_flags*, %struct.lame_global_flags** %gfp.addr, align 8, !tbaa !1
  %stereo = getelementptr inbounds %struct.lame_global_flags, %struct.lame_global_flags* %179, i32 0, i32 46
  %180 = load i32, i32* %stereo, align 4, !tbaa !17
  store i32 %180, i32* %numchn, align 4, !tbaa !5
  %181 = load %struct.lame_global_flags*, %struct.lame_global_flags** %gfp.addr, align 8, !tbaa !1
  %mode = getelementptr inbounds %struct.lame_global_flags, %struct.lame_global_flags* %181, i32 0, i32 8
  %182 = load i32, i32* %mode, align 4, !tbaa !18
  %cmp298 = icmp eq i32 %182, 1
  br i1 %cmp298, label %if.then.300, label %if.end.301

if.then.300:                                      ; preds = %if.end.297
  store i32 4, i32* %numchn, align 4, !tbaa !5
  br label %if.end.301

if.end.301:                                       ; preds = %if.then.300, %if.end.297
  store i32 0, i32* %chn, align 4, !tbaa !5
  br label %for.cond.302

for.cond.302:                                     ; preds = %for.inc.1339, %if.end.301
  %183 = load i32, i32* %chn, align 4, !tbaa !5
  %184 = load i32, i32* %numchn, align 4, !tbaa !5
  %cmp303 = icmp slt i32 %183, %184
  br i1 %cmp303, label %for.body.305, label %for.end.1341

for.body.305:                                     ; preds = %for.cond.302
  %185 = load i32, i32* %chn, align 4, !tbaa !5
  %and = and i32 %185, 1
  %idx.ext = sext i32 %and to i64
  %add.ptr = getelementptr inbounds [3 x [256 x float]], [3 x [256 x float]]* getelementptr inbounds ([2 x [3 x [256 x float]]], [2 x [3 x [256 x float]]]* @L3psycho_anal.wsamp_S, i32 0, i32 0), i64 %idx.ext
  store [3 x [256 x float]]* %add.ptr, [3 x [256 x float]]** %wsamp_s, align 8, !tbaa !1
  %186 = load i32, i32* %chn, align 4, !tbaa !5
  %and306 = and i32 %186, 1
  %idx.ext307 = sext i32 %and306 to i64
  %add.ptr308 = getelementptr inbounds [1024 x float], [1024 x float]* getelementptr inbounds ([2 x [1024 x float]], [2 x [1024 x float]]* @L3psycho_anal.wsamp_L, i32 0, i32 0), i64 %idx.ext307
  store [1024 x float]* %add.ptr308, [1024 x float]** %wsamp_l, align 8, !tbaa !1
  %187 = load i32, i32* %chn, align 4, !tbaa !5
  %cmp309 = icmp slt i32 %187, 2
  br i1 %cmp309, label %if.then.311, label %if.else.330

if.then.311:                                      ; preds = %for.body.305
  %188 = load [1024 x float]*, [1024 x float]** %wsamp_l, align 8, !tbaa !1
  %arraydecay312 = getelementptr inbounds [1024 x float], [1024 x float]* %188, i32 0, i32 0
  %189 = load i32, i32* %chn, align 4, !tbaa !5
  %190 = load i16**, i16*** %buffer.addr, align 8, !tbaa !1
  call void @fft_long(float* %arraydecay312, i32 %189, i16** %190)
  %191 = load [3 x [256 x float]]*, [3 x [256 x float]]** %wsamp_s, align 8, !tbaa !1
  %arraydecay313 = getelementptr inbounds [3 x [256 x float]], [3 x [256 x float]]* %191, i32 0, i32 0
  %192 = load i32, i32* %chn, align 4, !tbaa !5
  %193 = load i16**, i16*** %buffer.addr, align 8, !tbaa !1
  call void @fft_short([256 x float]* %arraydecay313, i32 %192, i16** %193)
  %194 = load i32, i32* %chn, align 4, !tbaa !5
  %idxprom314 = sext i32 %194 to i64
  %arrayidx315 = getelementptr inbounds [4 x double], [4 x double]* @L3psycho_anal.pe, i32 0, i64 %idxprom314
  %195 = load double, double* %arrayidx315, align 8, !tbaa !7
  %196 = load i32, i32* %chn, align 4, !tbaa !5
  %idxprom316 = sext i32 %196 to i64
  %197 = load double*, double** %percep_entropy.addr, align 8, !tbaa !1
  %arrayidx317 = getelementptr inbounds double, double* %197, i64 %idxprom316
  store double %195, double* %arrayidx317, align 8, !tbaa !7
  %198 = load i32, i32* %chn, align 4, !tbaa !5
  %idxprom318 = sext i32 %198 to i64
  %199 = load i32, i32* %gr_out.addr, align 4, !tbaa !5
  %idxprom319 = sext i32 %199 to i64
  %200 = load [2 x %struct.III_psy_ratio]*, [2 x %struct.III_psy_ratio]** %masking_ratio.addr, align 8, !tbaa !1
  %arrayidx320 = getelementptr inbounds [2 x %struct.III_psy_ratio], [2 x %struct.III_psy_ratio]* %200, i64 %idxprom319
  %arrayidx321 = getelementptr inbounds [2 x %struct.III_psy_ratio], [2 x %struct.III_psy_ratio]* %arrayidx320, i32 0, i64 %idxprom318
  %thm = getelementptr inbounds %struct.III_psy_ratio, %struct.III_psy_ratio* %arrayidx321, i32 0, i32 0
  %201 = load i32, i32* %chn, align 4, !tbaa !5
  %idxprom322 = sext i32 %201 to i64
  %arrayidx323 = getelementptr inbounds [4 x %struct.III_psy_xmin], [4 x %struct.III_psy_xmin]* @L3psycho_anal.thm, i32 0, i64 %idxprom322
  %202 = bitcast %struct.III_psy_xmin* %thm to i8*
  %203 = bitcast %struct.III_psy_xmin* %arrayidx323 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %202, i8* %203, i64 488, i32 8, i1 false), !tbaa.struct !19
  %204 = load i32, i32* %chn, align 4, !tbaa !5
  %idxprom324 = sext i32 %204 to i64
  %205 = load i32, i32* %gr_out.addr, align 4, !tbaa !5
  %idxprom325 = sext i32 %205 to i64
  %206 = load [2 x %struct.III_psy_ratio]*, [2 x %struct.III_psy_ratio]** %masking_ratio.addr, align 8, !tbaa !1
  %arrayidx326 = getelementptr inbounds [2 x %struct.III_psy_ratio], [2 x %struct.III_psy_ratio]* %206, i64 %idxprom325
  %arrayidx327 = getelementptr inbounds [2 x %struct.III_psy_ratio], [2 x %struct.III_psy_ratio]* %arrayidx326, i32 0, i64 %idxprom324
  %en = getelementptr inbounds %struct.III_psy_ratio, %struct.III_psy_ratio* %arrayidx327, i32 0, i32 1
  %207 = load i32, i32* %chn, align 4, !tbaa !5
  %idxprom328 = sext i32 %207 to i64
  %arrayidx329 = getelementptr inbounds [4 x %struct.III_psy_xmin], [4 x %struct.III_psy_xmin]* @L3psycho_anal.en, i32 0, i64 %idxprom328
  %208 = bitcast %struct.III_psy_xmin* %en to i8*
  %209 = bitcast %struct.III_psy_xmin* %arrayidx329 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %208, i8* %209, i64 488, i32 8, i1 false), !tbaa.struct !19
  br label %if.end.411

if.else.330:                                      ; preds = %for.body.305
  %210 = load i32, i32* %chn, align 4, !tbaa !5
  %idxprom331 = sext i32 %210 to i64
  %arrayidx332 = getelementptr inbounds [4 x double], [4 x double]* @L3psycho_anal.pe, i32 0, i64 %idxprom331
  %211 = load double, double* %arrayidx332, align 8, !tbaa !7
  %212 = load i32, i32* %chn, align 4, !tbaa !5
  %sub333 = sub nsw i32 %212, 2
  %idxprom334 = sext i32 %sub333 to i64
  %213 = load double*, double** %percep_MS_entropy.addr, align 8, !tbaa !1
  %arrayidx335 = getelementptr inbounds double, double* %213, i64 %idxprom334
  store double %211, double* %arrayidx335, align 8, !tbaa !7
  %214 = load i32, i32* %chn, align 4, !tbaa !5
  %sub336 = sub nsw i32 %214, 2
  %idxprom337 = sext i32 %sub336 to i64
  %215 = load i32, i32* %gr_out.addr, align 4, !tbaa !5
  %idxprom338 = sext i32 %215 to i64
  %216 = load [2 x %struct.III_psy_ratio]*, [2 x %struct.III_psy_ratio]** %masking_MS_ratio.addr, align 8, !tbaa !1
  %arrayidx339 = getelementptr inbounds [2 x %struct.III_psy_ratio], [2 x %struct.III_psy_ratio]* %216, i64 %idxprom338
  %arrayidx340 = getelementptr inbounds [2 x %struct.III_psy_ratio], [2 x %struct.III_psy_ratio]* %arrayidx339, i32 0, i64 %idxprom337
  %en341 = getelementptr inbounds %struct.III_psy_ratio, %struct.III_psy_ratio* %arrayidx340, i32 0, i32 1
  %217 = load i32, i32* %chn, align 4, !tbaa !5
  %idxprom342 = sext i32 %217 to i64
  %arrayidx343 = getelementptr inbounds [4 x %struct.III_psy_xmin], [4 x %struct.III_psy_xmin]* @L3psycho_anal.en, i32 0, i64 %idxprom342
  %218 = bitcast %struct.III_psy_xmin* %en341 to i8*
  %219 = bitcast %struct.III_psy_xmin* %arrayidx343 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %218, i8* %219, i64 488, i32 8, i1 false), !tbaa.struct !19
  %220 = load i32, i32* %chn, align 4, !tbaa !5
  %sub344 = sub nsw i32 %220, 2
  %idxprom345 = sext i32 %sub344 to i64
  %221 = load i32, i32* %gr_out.addr, align 4, !tbaa !5
  %idxprom346 = sext i32 %221 to i64
  %222 = load [2 x %struct.III_psy_ratio]*, [2 x %struct.III_psy_ratio]** %masking_MS_ratio.addr, align 8, !tbaa !1
  %arrayidx347 = getelementptr inbounds [2 x %struct.III_psy_ratio], [2 x %struct.III_psy_ratio]* %222, i64 %idxprom346
  %arrayidx348 = getelementptr inbounds [2 x %struct.III_psy_ratio], [2 x %struct.III_psy_ratio]* %arrayidx347, i32 0, i64 %idxprom345
  %thm349 = getelementptr inbounds %struct.III_psy_ratio, %struct.III_psy_ratio* %arrayidx348, i32 0, i32 0
  %223 = load i32, i32* %chn, align 4, !tbaa !5
  %idxprom350 = sext i32 %223 to i64
  %arrayidx351 = getelementptr inbounds [4 x %struct.III_psy_xmin], [4 x %struct.III_psy_xmin]* @L3psycho_anal.thm, i32 0, i64 %idxprom350
  %224 = bitcast %struct.III_psy_xmin* %thm349 to i8*
  %225 = bitcast %struct.III_psy_xmin* %arrayidx351 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %224, i8* %225, i64 488, i32 8, i1 false), !tbaa.struct !19
  %226 = load i32, i32* %chn, align 4, !tbaa !5
  %cmp352 = icmp eq i32 %226, 2
  br i1 %cmp352, label %if.then.354, label %if.end.410

if.then.354:                                      ; preds = %if.else.330
  store i32 1023, i32* %j, align 4, !tbaa !5
  br label %for.cond.355

for.cond.355:                                     ; preds = %for.inc.371, %if.then.354
  %227 = load i32, i32* %j, align 4, !tbaa !5
  %cmp356 = icmp sge i32 %227, 0
  br i1 %cmp356, label %for.body.358, label %for.end.373

for.body.358:                                     ; preds = %for.cond.355
  %228 = bitcast float* %l to i8*
  call void @llvm.lifetime.start(i64 4, i8* %228) #1
  %229 = load i32, i32* %j, align 4, !tbaa !5
  %idxprom359 = sext i32 %229 to i64
  %arrayidx360 = getelementptr inbounds [1024 x float], [1024 x float]* getelementptr inbounds ([2 x [1024 x float]], [2 x [1024 x float]]* @L3psycho_anal.wsamp_L, i32 0, i64 0), i32 0, i64 %idxprom359
  %230 = load float, float* %arrayidx360, align 4, !tbaa !15
  store float %230, float* %l, align 4, !tbaa !15
  %231 = bitcast float* %r to i8*
  call void @llvm.lifetime.start(i64 4, i8* %231) #1
  %232 = load i32, i32* %j, align 4, !tbaa !5
  %idxprom361 = sext i32 %232 to i64
  %arrayidx362 = getelementptr inbounds [1024 x float], [1024 x float]* getelementptr inbounds ([2 x [1024 x float]], [2 x [1024 x float]]* @L3psycho_anal.wsamp_L, i32 0, i64 1), i32 0, i64 %idxprom361
  %233 = load float, float* %arrayidx362, align 4, !tbaa !15
  store float %233, float* %r, align 4, !tbaa !15
  %234 = load float, float* %l, align 4, !tbaa !15
  %235 = load float, float* %r, align 4, !tbaa !15
  %add363 = fadd float %234, %235
  %mul364 = fmul float %add363, 0x3FE6A09E60000000
  %236 = load i32, i32* %j, align 4, !tbaa !5
  %idxprom365 = sext i32 %236 to i64
  %arrayidx366 = getelementptr inbounds [1024 x float], [1024 x float]* getelementptr inbounds ([2 x [1024 x float]], [2 x [1024 x float]]* @L3psycho_anal.wsamp_L, i32 0, i64 0), i32 0, i64 %idxprom365
  store float %mul364, float* %arrayidx366, align 4, !tbaa !15
  %237 = load float, float* %l, align 4, !tbaa !15
  %238 = load float, float* %r, align 4, !tbaa !15
  %sub367 = fsub float %237, %238
  %mul368 = fmul float %sub367, 0x3FE6A09E60000000
  %239 = load i32, i32* %j, align 4, !tbaa !5
  %idxprom369 = sext i32 %239 to i64
  %arrayidx370 = getelementptr inbounds [1024 x float], [1024 x float]* getelementptr inbounds ([2 x [1024 x float]], [2 x [1024 x float]]* @L3psycho_anal.wsamp_L, i32 0, i64 1), i32 0, i64 %idxprom369
  store float %mul368, float* %arrayidx370, align 4, !tbaa !15
  %240 = bitcast float* %r to i8*
  call void @llvm.lifetime.end(i64 4, i8* %240) #1
  %241 = bitcast float* %l to i8*
  call void @llvm.lifetime.end(i64 4, i8* %241) #1
  br label %for.inc.371

for.inc.371:                                      ; preds = %for.body.358
  %242 = load i32, i32* %j, align 4, !tbaa !5
  %dec372 = add nsw i32 %242, -1
  store i32 %dec372, i32* %j, align 4, !tbaa !5
  br label %for.cond.355

for.end.373:                                      ; preds = %for.cond.355
  store i32 2, i32* %b, align 4, !tbaa !5
  br label %for.cond.374

for.cond.374:                                     ; preds = %for.inc.407, %for.end.373
  %243 = load i32, i32* %b, align 4, !tbaa !5
  %cmp375 = icmp sge i32 %243, 0
  br i1 %cmp375, label %for.body.377, label %for.end.409

for.body.377:                                     ; preds = %for.cond.374
  store i32 255, i32* %j, align 4, !tbaa !5
  br label %for.cond.378

for.cond.378:                                     ; preds = %for.inc.404, %for.body.377
  %244 = load i32, i32* %j, align 4, !tbaa !5
  %cmp379 = icmp sge i32 %244, 0
  br i1 %cmp379, label %for.body.381, label %for.end.406

for.body.381:                                     ; preds = %for.cond.378
  %245 = bitcast float* %l382 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %245) #1
  %246 = load i32, i32* %j, align 4, !tbaa !5
  %idxprom383 = sext i32 %246 to i64
  %247 = load i32, i32* %b, align 4, !tbaa !5
  %idxprom384 = sext i32 %247 to i64
  %arrayidx385 = getelementptr inbounds [3 x [256 x float]], [3 x [256 x float]]* getelementptr inbounds ([2 x [3 x [256 x float]]], [2 x [3 x [256 x float]]]* @L3psycho_anal.wsamp_S, i32 0, i64 0), i32 0, i64 %idxprom384
  %arrayidx386 = getelementptr inbounds [256 x float], [256 x float]* %arrayidx385, i32 0, i64 %idxprom383
  %248 = load float, float* %arrayidx386, align 4, !tbaa !15
  store float %248, float* %l382, align 4, !tbaa !15
  %249 = bitcast float* %r387 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %249) #1
  %250 = load i32, i32* %j, align 4, !tbaa !5
  %idxprom388 = sext i32 %250 to i64
  %251 = load i32, i32* %b, align 4, !tbaa !5
  %idxprom389 = sext i32 %251 to i64
  %arrayidx390 = getelementptr inbounds [3 x [256 x float]], [3 x [256 x float]]* getelementptr inbounds ([2 x [3 x [256 x float]]], [2 x [3 x [256 x float]]]* @L3psycho_anal.wsamp_S, i32 0, i64 1), i32 0, i64 %idxprom389
  %arrayidx391 = getelementptr inbounds [256 x float], [256 x float]* %arrayidx390, i32 0, i64 %idxprom388
  %252 = load float, float* %arrayidx391, align 4, !tbaa !15
  store float %252, float* %r387, align 4, !tbaa !15
  %253 = load float, float* %l382, align 4, !tbaa !15
  %254 = load float, float* %r387, align 4, !tbaa !15
  %add392 = fadd float %253, %254
  %mul393 = fmul float %add392, 0x3FE6A09E60000000
  %255 = load i32, i32* %j, align 4, !tbaa !5
  %idxprom394 = sext i32 %255 to i64
  %256 = load i32, i32* %b, align 4, !tbaa !5
  %idxprom395 = sext i32 %256 to i64
  %arrayidx396 = getelementptr inbounds [3 x [256 x float]], [3 x [256 x float]]* getelementptr inbounds ([2 x [3 x [256 x float]]], [2 x [3 x [256 x float]]]* @L3psycho_anal.wsamp_S, i32 0, i64 0), i32 0, i64 %idxprom395
  %arrayidx397 = getelementptr inbounds [256 x float], [256 x float]* %arrayidx396, i32 0, i64 %idxprom394
  store float %mul393, float* %arrayidx397, align 4, !tbaa !15
  %257 = load float, float* %l382, align 4, !tbaa !15
  %258 = load float, float* %r387, align 4, !tbaa !15
  %sub398 = fsub float %257, %258
  %mul399 = fmul float %sub398, 0x3FE6A09E60000000
  %259 = load i32, i32* %j, align 4, !tbaa !5
  %idxprom400 = sext i32 %259 to i64
  %260 = load i32, i32* %b, align 4, !tbaa !5
  %idxprom401 = sext i32 %260 to i64
  %arrayidx402 = getelementptr inbounds [3 x [256 x float]], [3 x [256 x float]]* getelementptr inbounds ([2 x [3 x [256 x float]]], [2 x [3 x [256 x float]]]* @L3psycho_anal.wsamp_S, i32 0, i64 1), i32 0, i64 %idxprom401
  %arrayidx403 = getelementptr inbounds [256 x float], [256 x float]* %arrayidx402, i32 0, i64 %idxprom400
  store float %mul399, float* %arrayidx403, align 4, !tbaa !15
  %261 = bitcast float* %r387 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %261) #1
  %262 = bitcast float* %l382 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %262) #1
  br label %for.inc.404

for.inc.404:                                      ; preds = %for.body.381
  %263 = load i32, i32* %j, align 4, !tbaa !5
  %dec405 = add nsw i32 %263, -1
  store i32 %dec405, i32* %j, align 4, !tbaa !5
  br label %for.cond.378

for.end.406:                                      ; preds = %for.cond.378
  br label %for.inc.407

for.inc.407:                                      ; preds = %for.end.406
  %264 = load i32, i32* %b, align 4, !tbaa !5
  %dec408 = add nsw i32 %264, -1
  store i32 %dec408, i32* %b, align 4, !tbaa !5
  br label %for.cond.374

for.end.409:                                      ; preds = %for.cond.374
  br label %if.end.410

if.end.410:                                       ; preds = %for.end.409, %if.else.330
  br label %if.end.411

if.end.411:                                       ; preds = %if.end.410, %if.then.311
  %265 = load [1024 x float]*, [1024 x float]** %wsamp_l, align 8, !tbaa !1
  %arrayidx412 = getelementptr inbounds [1024 x float], [1024 x float]* %265, i32 0, i64 0
  %266 = load float, float* %arrayidx412, align 4, !tbaa !15
  store float %266, float* getelementptr inbounds ([513 x float], [513 x float]* @L3psycho_anal.energy, i32 0, i64 0), align 4, !tbaa !15
  %267 = load float, float* getelementptr inbounds ([513 x float], [513 x float]* @L3psycho_anal.energy, i32 0, i64 0), align 4, !tbaa !15
  %268 = load float, float* getelementptr inbounds ([513 x float], [513 x float]* @L3psycho_anal.energy, i32 0, i64 0), align 4, !tbaa !15
  %mul413 = fmul float %268, %267
  store float %mul413, float* getelementptr inbounds ([513 x float], [513 x float]* @L3psycho_anal.energy, i32 0, i64 0), align 4, !tbaa !15
  %269 = load float, float* getelementptr inbounds ([513 x float], [513 x float]* @L3psycho_anal.energy, i32 0, i64 0), align 4, !tbaa !15
  %270 = load i32, i32* %chn, align 4, !tbaa !5
  %idxprom414 = sext i32 %270 to i64
  %arrayidx415 = getelementptr inbounds [4 x float], [4 x float]* %tot_ener, i32 0, i64 %idxprom414
  store float %269, float* %arrayidx415, align 4, !tbaa !15
  store i32 511, i32* %j, align 4, !tbaa !5
  br label %for.cond.416

for.cond.416:                                     ; preds = %for.inc.439, %if.end.411
  %271 = load i32, i32* %j, align 4, !tbaa !5
  %cmp417 = icmp sge i32 %271, 0
  br i1 %cmp417, label %for.body.419, label %for.end.441

for.body.419:                                     ; preds = %for.cond.416
  %272 = bitcast float* %re to i8*
  call void @llvm.lifetime.start(i64 4, i8* %272) #1
  %273 = load i32, i32* %j, align 4, !tbaa !5
  %sub420 = sub nsw i32 512, %273
  %idxprom421 = sext i32 %sub420 to i64
  %274 = load [1024 x float]*, [1024 x float]** %wsamp_l, align 8, !tbaa !1
  %arrayidx422 = getelementptr inbounds [1024 x float], [1024 x float]* %274, i32 0, i64 %idxprom421
  %275 = load float, float* %arrayidx422, align 4, !tbaa !15
  store float %275, float* %re, align 4, !tbaa !15
  %276 = bitcast float* %im to i8*
  call void @llvm.lifetime.start(i64 4, i8* %276) #1
  %277 = load i32, i32* %j, align 4, !tbaa !5
  %add423 = add nsw i32 512, %277
  %idxprom424 = sext i32 %add423 to i64
  %278 = load [1024 x float]*, [1024 x float]** %wsamp_l, align 8, !tbaa !1
  %arrayidx425 = getelementptr inbounds [1024 x float], [1024 x float]* %278, i32 0, i64 %idxprom424
  %279 = load float, float* %arrayidx425, align 4, !tbaa !15
  store float %279, float* %im, align 4, !tbaa !15
  %280 = load float, float* %re, align 4, !tbaa !15
  %281 = load float, float* %re, align 4, !tbaa !15
  %mul426 = fmul float %280, %281
  %282 = load float, float* %im, align 4, !tbaa !15
  %283 = load float, float* %im, align 4, !tbaa !15
  %mul427 = fmul float %282, %283
  %add428 = fadd float %mul426, %mul427
  %mul429 = fmul float %add428, 5.000000e-01
  %284 = load i32, i32* %j, align 4, !tbaa !5
  %sub430 = sub nsw i32 512, %284
  %idxprom431 = sext i32 %sub430 to i64
  %arrayidx432 = getelementptr inbounds [513 x float], [513 x float]* @L3psycho_anal.energy, i32 0, i64 %idxprom431
  store float %mul429, float* %arrayidx432, align 4, !tbaa !15
  %285 = load i32, i32* %j, align 4, !tbaa !5
  %sub433 = sub nsw i32 512, %285
  %idxprom434 = sext i32 %sub433 to i64
  %arrayidx435 = getelementptr inbounds [513 x float], [513 x float]* @L3psycho_anal.energy, i32 0, i64 %idxprom434
  %286 = load float, float* %arrayidx435, align 4, !tbaa !15
  %287 = load i32, i32* %chn, align 4, !tbaa !5
  %idxprom436 = sext i32 %287 to i64
  %arrayidx437 = getelementptr inbounds [4 x float], [4 x float]* %tot_ener, i32 0, i64 %idxprom436
  %288 = load float, float* %arrayidx437, align 4, !tbaa !15
  %add438 = fadd float %288, %286
  store float %add438, float* %arrayidx437, align 4, !tbaa !15
  %289 = bitcast float* %im to i8*
  call void @llvm.lifetime.end(i64 4, i8* %289) #1
  %290 = bitcast float* %re to i8*
  call void @llvm.lifetime.end(i64 4, i8* %290) #1
  br label %for.inc.439

for.inc.439:                                      ; preds = %for.body.419
  %291 = load i32, i32* %j, align 4, !tbaa !5
  %dec440 = add nsw i32 %291, -1
  store i32 %dec440, i32* %j, align 4, !tbaa !5
  br label %for.cond.416

for.end.441:                                      ; preds = %for.cond.416
  store i32 2, i32* %b, align 4, !tbaa !5
  br label %for.cond.442

for.cond.442:                                     ; preds = %for.inc.487, %for.end.441
  %292 = load i32, i32* %b, align 4, !tbaa !5
  %cmp443 = icmp sge i32 %292, 0
  br i1 %cmp443, label %for.body.445, label %for.end.489

for.body.445:                                     ; preds = %for.cond.442
  %293 = load i32, i32* %b, align 4, !tbaa !5
  %idxprom446 = sext i32 %293 to i64
  %294 = load [3 x [256 x float]]*, [3 x [256 x float]]** %wsamp_s, align 8, !tbaa !1
  %arrayidx447 = getelementptr inbounds [3 x [256 x float]], [3 x [256 x float]]* %294, i32 0, i64 %idxprom446
  %arrayidx448 = getelementptr inbounds [256 x float], [256 x float]* %arrayidx447, i32 0, i64 0
  %295 = load float, float* %arrayidx448, align 4, !tbaa !15
  %296 = load i32, i32* %b, align 4, !tbaa !5
  %idxprom449 = sext i32 %296 to i64
  %arrayidx450 = getelementptr inbounds [3 x [129 x float]], [3 x [129 x float]]* @L3psycho_anal.energy_s, i32 0, i64 %idxprom449
  %arrayidx451 = getelementptr inbounds [129 x float], [129 x float]* %arrayidx450, i32 0, i64 0
  store float %295, float* %arrayidx451, align 4, !tbaa !15
  %297 = load i32, i32* %b, align 4, !tbaa !5
  %idxprom452 = sext i32 %297 to i64
  %arrayidx453 = getelementptr inbounds [3 x [129 x float]], [3 x [129 x float]]* @L3psycho_anal.energy_s, i32 0, i64 %idxprom452
  %arrayidx454 = getelementptr inbounds [129 x float], [129 x float]* %arrayidx453, i32 0, i64 0
  %298 = load float, float* %arrayidx454, align 4, !tbaa !15
  %299 = load i32, i32* %b, align 4, !tbaa !5
  %idxprom455 = sext i32 %299 to i64
  %arrayidx456 = getelementptr inbounds [3 x [129 x float]], [3 x [129 x float]]* @L3psycho_anal.energy_s, i32 0, i64 %idxprom455
  %arrayidx457 = getelementptr inbounds [129 x float], [129 x float]* %arrayidx456, i32 0, i64 0
  %300 = load float, float* %arrayidx457, align 4, !tbaa !15
  %mul458 = fmul float %300, %298
  store float %mul458, float* %arrayidx457, align 4, !tbaa !15
  store i32 127, i32* %j, align 4, !tbaa !5
  br label %for.cond.459

for.cond.459:                                     ; preds = %for.inc.484, %for.body.445
  %301 = load i32, i32* %j, align 4, !tbaa !5
  %cmp460 = icmp sge i32 %301, 0
  br i1 %cmp460, label %for.body.462, label %for.end.486

for.body.462:                                     ; preds = %for.cond.459
  %302 = bitcast float* %re463 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %302) #1
  %303 = load i32, i32* %j, align 4, !tbaa !5
  %sub464 = sub nsw i32 128, %303
  %idxprom465 = sext i32 %sub464 to i64
  %304 = load i32, i32* %b, align 4, !tbaa !5
  %idxprom466 = sext i32 %304 to i64
  %305 = load [3 x [256 x float]]*, [3 x [256 x float]]** %wsamp_s, align 8, !tbaa !1
  %arrayidx467 = getelementptr inbounds [3 x [256 x float]], [3 x [256 x float]]* %305, i32 0, i64 %idxprom466
  %arrayidx468 = getelementptr inbounds [256 x float], [256 x float]* %arrayidx467, i32 0, i64 %idxprom465
  %306 = load float, float* %arrayidx468, align 4, !tbaa !15
  store float %306, float* %re463, align 4, !tbaa !15
  %307 = bitcast float* %im469 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %307) #1
  %308 = load i32, i32* %j, align 4, !tbaa !5
  %add470 = add nsw i32 128, %308
  %idxprom471 = sext i32 %add470 to i64
  %309 = load i32, i32* %b, align 4, !tbaa !5
  %idxprom472 = sext i32 %309 to i64
  %310 = load [3 x [256 x float]]*, [3 x [256 x float]]** %wsamp_s, align 8, !tbaa !1
  %arrayidx473 = getelementptr inbounds [3 x [256 x float]], [3 x [256 x float]]* %310, i32 0, i64 %idxprom472
  %arrayidx474 = getelementptr inbounds [256 x float], [256 x float]* %arrayidx473, i32 0, i64 %idxprom471
  %311 = load float, float* %arrayidx474, align 4, !tbaa !15
  store float %311, float* %im469, align 4, !tbaa !15
  %312 = load float, float* %re463, align 4, !tbaa !15
  %313 = load float, float* %re463, align 4, !tbaa !15
  %mul475 = fmul float %312, %313
  %314 = load float, float* %im469, align 4, !tbaa !15
  %315 = load float, float* %im469, align 4, !tbaa !15
  %mul476 = fmul float %314, %315
  %add477 = fadd float %mul475, %mul476
  %mul478 = fmul float %add477, 5.000000e-01
  %316 = load i32, i32* %j, align 4, !tbaa !5
  %sub479 = sub nsw i32 128, %316
  %idxprom480 = sext i32 %sub479 to i64
  %317 = load i32, i32* %b, align 4, !tbaa !5
  %idxprom481 = sext i32 %317 to i64
  %arrayidx482 = getelementptr inbounds [3 x [129 x float]], [3 x [129 x float]]* @L3psycho_anal.energy_s, i32 0, i64 %idxprom481
  %arrayidx483 = getelementptr inbounds [129 x float], [129 x float]* %arrayidx482, i32 0, i64 %idxprom480
  store float %mul478, float* %arrayidx483, align 4, !tbaa !15
  %318 = bitcast float* %im469 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %318) #1
  %319 = bitcast float* %re463 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %319) #1
  br label %for.inc.484

for.inc.484:                                      ; preds = %for.body.462
  %320 = load i32, i32* %j, align 4, !tbaa !5
  %dec485 = add nsw i32 %320, -1
  store i32 %dec485, i32* %j, align 4, !tbaa !5
  br label %for.cond.459

for.end.486:                                      ; preds = %for.cond.459
  br label %for.inc.487

for.inc.487:                                      ; preds = %for.end.486
  %321 = load i32, i32* %b, align 4, !tbaa !5
  %dec488 = add nsw i32 %321, -1
  store i32 %dec488, i32* %b, align 4, !tbaa !5
  br label %for.cond.442

for.end.489:                                      ; preds = %for.cond.442
  store i32 0, i32* %j, align 4, !tbaa !5
  br label %for.cond.490

for.cond.490:                                     ; preds = %for.inc.630, %for.end.489
  %322 = load i32, i32* %j, align 4, !tbaa !5
  %323 = load i32, i32* @L3psycho_anal.cw_lower_index, align 4, !tbaa !5
  %cmp491 = icmp slt i32 %322, %323
  br i1 %cmp491, label %for.body.493, label %for.end.632

for.body.493:                                     ; preds = %for.cond.490
  %324 = bitcast float* %an to i8*
  call void @llvm.lifetime.start(i64 4, i8* %324) #1
  %325 = bitcast float* %a1 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %325) #1
  %326 = bitcast float* %a2 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %326) #1
  %327 = bitcast float* %bn to i8*
  call void @llvm.lifetime.start(i64 4, i8* %327) #1
  %328 = bitcast float* %b1 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %328) #1
  %329 = bitcast float* %b2 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %329) #1
  %330 = bitcast float* %rn to i8*
  call void @llvm.lifetime.start(i64 4, i8* %330) #1
  %331 = bitcast float* %r1 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %331) #1
  %332 = bitcast float* %r2 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %332) #1
  %333 = bitcast float* %numre to i8*
  call void @llvm.lifetime.start(i64 4, i8* %333) #1
  %334 = bitcast float* %numim to i8*
  call void @llvm.lifetime.start(i64 4, i8* %334) #1
  %335 = bitcast float* %den to i8*
  call void @llvm.lifetime.start(i64 4, i8* %335) #1
  %336 = load i32, i32* %j, align 4, !tbaa !5
  %idxprom494 = sext i32 %336 to i64
  %337 = load i32, i32* %chn, align 4, !tbaa !5
  %idxprom495 = sext i32 %337 to i64
  %arrayidx496 = getelementptr inbounds [4 x [2 x [513 x float]]], [4 x [2 x [513 x float]]]* @L3psycho_anal.ax_sav, i32 0, i64 %idxprom495
  %arrayidx497 = getelementptr inbounds [2 x [513 x float]], [2 x [513 x float]]* %arrayidx496, i32 0, i64 1
  %arrayidx498 = getelementptr inbounds [513 x float], [513 x float]* %arrayidx497, i32 0, i64 %idxprom494
  %338 = load float, float* %arrayidx498, align 4, !tbaa !15
  store float %338, float* %a2, align 4, !tbaa !15
  %339 = load i32, i32* %j, align 4, !tbaa !5
  %idxprom499 = sext i32 %339 to i64
  %340 = load i32, i32* %chn, align 4, !tbaa !5
  %idxprom500 = sext i32 %340 to i64
  %arrayidx501 = getelementptr inbounds [4 x [2 x [513 x float]]], [4 x [2 x [513 x float]]]* @L3psycho_anal.bx_sav, i32 0, i64 %idxprom500
  %arrayidx502 = getelementptr inbounds [2 x [513 x float]], [2 x [513 x float]]* %arrayidx501, i32 0, i64 1
  %arrayidx503 = getelementptr inbounds [513 x float], [513 x float]* %arrayidx502, i32 0, i64 %idxprom499
  %341 = load float, float* %arrayidx503, align 4, !tbaa !15
  store float %341, float* %b2, align 4, !tbaa !15
  %342 = load i32, i32* %j, align 4, !tbaa !5
  %idxprom504 = sext i32 %342 to i64
  %343 = load i32, i32* %chn, align 4, !tbaa !5
  %idxprom505 = sext i32 %343 to i64
  %arrayidx506 = getelementptr inbounds [4 x [2 x [513 x float]]], [4 x [2 x [513 x float]]]* @L3psycho_anal.rx_sav, i32 0, i64 %idxprom505
  %arrayidx507 = getelementptr inbounds [2 x [513 x float]], [2 x [513 x float]]* %arrayidx506, i32 0, i64 1
  %arrayidx508 = getelementptr inbounds [513 x float], [513 x float]* %arrayidx507, i32 0, i64 %idxprom504
  %344 = load float, float* %arrayidx508, align 4, !tbaa !15
  store float %344, float* %r2, align 4, !tbaa !15
  %345 = load i32, i32* %j, align 4, !tbaa !5
  %idxprom509 = sext i32 %345 to i64
  %346 = load i32, i32* %chn, align 4, !tbaa !5
  %idxprom510 = sext i32 %346 to i64
  %arrayidx511 = getelementptr inbounds [4 x [2 x [513 x float]]], [4 x [2 x [513 x float]]]* @L3psycho_anal.ax_sav, i32 0, i64 %idxprom510
  %arrayidx512 = getelementptr inbounds [2 x [513 x float]], [2 x [513 x float]]* %arrayidx511, i32 0, i64 0
  %arrayidx513 = getelementptr inbounds [513 x float], [513 x float]* %arrayidx512, i32 0, i64 %idxprom509
  %347 = load float, float* %arrayidx513, align 4, !tbaa !15
  %348 = load i32, i32* %j, align 4, !tbaa !5
  %idxprom514 = sext i32 %348 to i64
  %349 = load i32, i32* %chn, align 4, !tbaa !5
  %idxprom515 = sext i32 %349 to i64
  %arrayidx516 = getelementptr inbounds [4 x [2 x [513 x float]]], [4 x [2 x [513 x float]]]* @L3psycho_anal.ax_sav, i32 0, i64 %idxprom515
  %arrayidx517 = getelementptr inbounds [2 x [513 x float]], [2 x [513 x float]]* %arrayidx516, i32 0, i64 1
  %arrayidx518 = getelementptr inbounds [513 x float], [513 x float]* %arrayidx517, i32 0, i64 %idxprom514
  store float %347, float* %arrayidx518, align 4, !tbaa !15
  store float %347, float* %a1, align 4, !tbaa !15
  %350 = load i32, i32* %j, align 4, !tbaa !5
  %idxprom519 = sext i32 %350 to i64
  %351 = load i32, i32* %chn, align 4, !tbaa !5
  %idxprom520 = sext i32 %351 to i64
  %arrayidx521 = getelementptr inbounds [4 x [2 x [513 x float]]], [4 x [2 x [513 x float]]]* @L3psycho_anal.bx_sav, i32 0, i64 %idxprom520
  %arrayidx522 = getelementptr inbounds [2 x [513 x float]], [2 x [513 x float]]* %arrayidx521, i32 0, i64 0
  %arrayidx523 = getelementptr inbounds [513 x float], [513 x float]* %arrayidx522, i32 0, i64 %idxprom519
  %352 = load float, float* %arrayidx523, align 4, !tbaa !15
  %353 = load i32, i32* %j, align 4, !tbaa !5
  %idxprom524 = sext i32 %353 to i64
  %354 = load i32, i32* %chn, align 4, !tbaa !5
  %idxprom525 = sext i32 %354 to i64
  %arrayidx526 = getelementptr inbounds [4 x [2 x [513 x float]]], [4 x [2 x [513 x float]]]* @L3psycho_anal.bx_sav, i32 0, i64 %idxprom525
  %arrayidx527 = getelementptr inbounds [2 x [513 x float]], [2 x [513 x float]]* %arrayidx526, i32 0, i64 1
  %arrayidx528 = getelementptr inbounds [513 x float], [513 x float]* %arrayidx527, i32 0, i64 %idxprom524
  store float %352, float* %arrayidx528, align 4, !tbaa !15
  store float %352, float* %b1, align 4, !tbaa !15
  %355 = load i32, i32* %j, align 4, !tbaa !5
  %idxprom529 = sext i32 %355 to i64
  %356 = load i32, i32* %chn, align 4, !tbaa !5
  %idxprom530 = sext i32 %356 to i64
  %arrayidx531 = getelementptr inbounds [4 x [2 x [513 x float]]], [4 x [2 x [513 x float]]]* @L3psycho_anal.rx_sav, i32 0, i64 %idxprom530
  %arrayidx532 = getelementptr inbounds [2 x [513 x float]], [2 x [513 x float]]* %arrayidx531, i32 0, i64 0
  %arrayidx533 = getelementptr inbounds [513 x float], [513 x float]* %arrayidx532, i32 0, i64 %idxprom529
  %357 = load float, float* %arrayidx533, align 4, !tbaa !15
  %358 = load i32, i32* %j, align 4, !tbaa !5
  %idxprom534 = sext i32 %358 to i64
  %359 = load i32, i32* %chn, align 4, !tbaa !5
  %idxprom535 = sext i32 %359 to i64
  %arrayidx536 = getelementptr inbounds [4 x [2 x [513 x float]]], [4 x [2 x [513 x float]]]* @L3psycho_anal.rx_sav, i32 0, i64 %idxprom535
  %arrayidx537 = getelementptr inbounds [2 x [513 x float]], [2 x [513 x float]]* %arrayidx536, i32 0, i64 1
  %arrayidx538 = getelementptr inbounds [513 x float], [513 x float]* %arrayidx537, i32 0, i64 %idxprom534
  store float %357, float* %arrayidx538, align 4, !tbaa !15
  store float %357, float* %r1, align 4, !tbaa !15
  %360 = load i32, i32* %j, align 4, !tbaa !5
  %idxprom539 = sext i32 %360 to i64
  %361 = load [1024 x float]*, [1024 x float]** %wsamp_l, align 8, !tbaa !1
  %arrayidx540 = getelementptr inbounds [1024 x float], [1024 x float]* %361, i32 0, i64 %idxprom539
  %362 = load float, float* %arrayidx540, align 4, !tbaa !15
  %363 = load i32, i32* %j, align 4, !tbaa !5
  %idxprom541 = sext i32 %363 to i64
  %364 = load i32, i32* %chn, align 4, !tbaa !5
  %idxprom542 = sext i32 %364 to i64
  %arrayidx543 = getelementptr inbounds [4 x [2 x [513 x float]]], [4 x [2 x [513 x float]]]* @L3psycho_anal.ax_sav, i32 0, i64 %idxprom542
  %arrayidx544 = getelementptr inbounds [2 x [513 x float]], [2 x [513 x float]]* %arrayidx543, i32 0, i64 0
  %arrayidx545 = getelementptr inbounds [513 x float], [513 x float]* %arrayidx544, i32 0, i64 %idxprom541
  store float %362, float* %arrayidx545, align 4, !tbaa !15
  store float %362, float* %an, align 4, !tbaa !15
  %365 = load i32, i32* %j, align 4, !tbaa !5
  %cmp546 = icmp eq i32 %365, 0
  br i1 %cmp546, label %cond.true.548, label %cond.false.550

cond.true.548:                                    ; preds = %for.body.493
  %366 = load [1024 x float]*, [1024 x float]** %wsamp_l, align 8, !tbaa !1
  %arrayidx549 = getelementptr inbounds [1024 x float], [1024 x float]* %366, i32 0, i64 0
  %367 = load float, float* %arrayidx549, align 4, !tbaa !15
  br label %cond.end.554

cond.false.550:                                   ; preds = %for.body.493
  %368 = load i32, i32* %j, align 4, !tbaa !5
  %sub551 = sub nsw i32 1024, %368
  %idxprom552 = sext i32 %sub551 to i64
  %369 = load [1024 x float]*, [1024 x float]** %wsamp_l, align 8, !tbaa !1
  %arrayidx553 = getelementptr inbounds [1024 x float], [1024 x float]* %369, i32 0, i64 %idxprom552
  %370 = load float, float* %arrayidx553, align 4, !tbaa !15
  br label %cond.end.554

cond.end.554:                                     ; preds = %cond.false.550, %cond.true.548
  %cond555 = phi float [ %367, %cond.true.548 ], [ %370, %cond.false.550 ]
  %371 = load i32, i32* %j, align 4, !tbaa !5
  %idxprom556 = sext i32 %371 to i64
  %372 = load i32, i32* %chn, align 4, !tbaa !5
  %idxprom557 = sext i32 %372 to i64
  %arrayidx558 = getelementptr inbounds [4 x [2 x [513 x float]]], [4 x [2 x [513 x float]]]* @L3psycho_anal.bx_sav, i32 0, i64 %idxprom557
  %arrayidx559 = getelementptr inbounds [2 x [513 x float]], [2 x [513 x float]]* %arrayidx558, i32 0, i64 0
  %arrayidx560 = getelementptr inbounds [513 x float], [513 x float]* %arrayidx559, i32 0, i64 %idxprom556
  store float %cond555, float* %arrayidx560, align 4, !tbaa !15
  store float %cond555, float* %bn, align 4, !tbaa !15
  %373 = load i32, i32* %j, align 4, !tbaa !5
  %idxprom561 = sext i32 %373 to i64
  %arrayidx562 = getelementptr inbounds [513 x float], [513 x float]* @L3psycho_anal.energy, i32 0, i64 %idxprom561
  %374 = load float, float* %arrayidx562, align 4, !tbaa !15
  %conv563 = fpext float %374 to double
  %call564 = call double @sqrt(double %conv563) #1
  %conv565 = fptrunc double %call564 to float
  %375 = load i32, i32* %j, align 4, !tbaa !5
  %idxprom566 = sext i32 %375 to i64
  %376 = load i32, i32* %chn, align 4, !tbaa !5
  %idxprom567 = sext i32 %376 to i64
  %arrayidx568 = getelementptr inbounds [4 x [2 x [513 x float]]], [4 x [2 x [513 x float]]]* @L3psycho_anal.rx_sav, i32 0, i64 %idxprom567
  %arrayidx569 = getelementptr inbounds [2 x [513 x float]], [2 x [513 x float]]* %arrayidx568, i32 0, i64 0
  %arrayidx570 = getelementptr inbounds [513 x float], [513 x float]* %arrayidx569, i32 0, i64 %idxprom566
  store float %conv565, float* %arrayidx570, align 4, !tbaa !15
  store float %conv565, float* %rn, align 4, !tbaa !15
  %377 = load float, float* %r1, align 4, !tbaa !15
  %cmp571 = fcmp une float %377, 0.000000e+00
  br i1 %cmp571, label %if.then.573, label %if.else.580

if.then.573:                                      ; preds = %cond.end.554
  %378 = load float, float* %a1, align 4, !tbaa !15
  %379 = load float, float* %b1, align 4, !tbaa !15
  %mul574 = fmul float %378, %379
  store float %mul574, float* %numre, align 4, !tbaa !15
  %380 = load float, float* %a1, align 4, !tbaa !15
  %381 = load float, float* %a1, align 4, !tbaa !15
  %mul575 = fmul float %380, %381
  %382 = load float, float* %b1, align 4, !tbaa !15
  %383 = load float, float* %b1, align 4, !tbaa !15
  %mul576 = fmul float %382, %383
  %sub577 = fsub float %mul575, %mul576
  %mul578 = fmul float %sub577, 5.000000e-01
  store float %mul578, float* %numim, align 4, !tbaa !15
  %384 = load float, float* %r1, align 4, !tbaa !15
  %385 = load float, float* %r1, align 4, !tbaa !15
  %mul579 = fmul float %384, %385
  store float %mul579, float* %den, align 4, !tbaa !15
  br label %if.end.581

if.else.580:                                      ; preds = %cond.end.554
  store float 1.000000e+00, float* %numre, align 4, !tbaa !15
  store float 0.000000e+00, float* %numim, align 4, !tbaa !15
  store float 1.000000e+00, float* %den, align 4, !tbaa !15
  br label %if.end.581

if.end.581:                                       ; preds = %if.else.580, %if.then.573
  %386 = load float, float* %r2, align 4, !tbaa !15
  %cmp582 = fcmp une float %386, 0.000000e+00
  br i1 %cmp582, label %if.then.584, label %if.else.596

if.then.584:                                      ; preds = %if.end.581
  %387 = bitcast float* %tmp2 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %387) #1
  %388 = load float, float* %numim, align 4, !tbaa !15
  %389 = load float, float* %numre, align 4, !tbaa !15
  %add585 = fadd float %388, %389
  %390 = load float, float* %a2, align 4, !tbaa !15
  %391 = load float, float* %b2, align 4, !tbaa !15
  %add586 = fadd float %390, %391
  %mul587 = fmul float %add585, %add586
  %mul588 = fmul float %mul587, 5.000000e-01
  store float %mul588, float* %tmp2, align 4, !tbaa !15
  %392 = bitcast float* %tmp1 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %392) #1
  %393 = load float, float* %a2, align 4, !tbaa !15
  %sub589 = fsub float -0.000000e+00, %393
  %394 = load float, float* %numre, align 4, !tbaa !15
  %mul590 = fmul float %sub589, %394
  %395 = load float, float* %tmp2, align 4, !tbaa !15
  %add591 = fadd float %mul590, %395
  store float %add591, float* %tmp1, align 4, !tbaa !15
  %396 = load float, float* %b2, align 4, !tbaa !15
  %sub592 = fsub float -0.000000e+00, %396
  %397 = load float, float* %numim, align 4, !tbaa !15
  %mul593 = fmul float %sub592, %397
  %398 = load float, float* %tmp2, align 4, !tbaa !15
  %add594 = fadd float %mul593, %398
  store float %add594, float* %numre, align 4, !tbaa !15
  %399 = load float, float* %tmp1, align 4, !tbaa !15
  store float %399, float* %numim, align 4, !tbaa !15
  %400 = load float, float* %r2, align 4, !tbaa !15
  %401 = load float, float* %den, align 4, !tbaa !15
  %mul595 = fmul float %401, %400
  store float %mul595, float* %den, align 4, !tbaa !15
  %402 = bitcast float* %tmp1 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %402) #1
  %403 = bitcast float* %tmp2 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %403) #1
  br label %if.end.597

if.else.596:                                      ; preds = %if.end.581
  br label %if.end.597

if.end.597:                                       ; preds = %if.else.596, %if.then.584
  %404 = bitcast float* %tmp to i8*
  call void @llvm.lifetime.start(i64 4, i8* %404) #1
  %405 = load float, float* %r1, align 4, !tbaa !15
  %mul598 = fmul float 2.000000e+00, %405
  %406 = load float, float* %r2, align 4, !tbaa !15
  %sub599 = fsub float %mul598, %406
  %407 = load float, float* %den, align 4, !tbaa !15
  %div600 = fdiv float %sub599, %407
  store float %div600, float* %tmp, align 4, !tbaa !15
  %408 = load float, float* %tmp, align 4, !tbaa !15
  %409 = load float, float* %numre, align 4, !tbaa !15
  %mul601 = fmul float %409, %408
  store float %mul601, float* %numre, align 4, !tbaa !15
  %410 = load float, float* %tmp, align 4, !tbaa !15
  %411 = load float, float* %numim, align 4, !tbaa !15
  %mul602 = fmul float %411, %410
  store float %mul602, float* %numim, align 4, !tbaa !15
  %412 = bitcast float* %tmp to i8*
  call void @llvm.lifetime.end(i64 4, i8* %412) #1
  %413 = load float, float* %rn, align 4, !tbaa !15
  %conv603 = fpext float %413 to double
  %414 = load float, float* %r1, align 4, !tbaa !15
  %mul604 = fmul float 2.000000e+00, %414
  %415 = load float, float* %r2, align 4, !tbaa !15
  %sub605 = fsub float %mul604, %415
  %conv606 = fpext float %sub605 to double
  %call607 = call double @fabs(double %conv606) #7
  %add608 = fadd double %conv603, %call607
  %conv609 = fptrunc double %add608 to float
  store float %conv609, float* %den, align 4, !tbaa !15
  %416 = load float, float* %den, align 4, !tbaa !15
  %cmp610 = fcmp une float %416, 0.000000e+00
  br i1 %cmp610, label %if.then.612, label %if.end.627

if.then.612:                                      ; preds = %if.end.597
  %417 = load float, float* %an, align 4, !tbaa !15
  %418 = load float, float* %bn, align 4, !tbaa !15
  %add613 = fadd float %417, %418
  %mul614 = fmul float %add613, 5.000000e-01
  %419 = load float, float* %numre, align 4, !tbaa !15
  %sub615 = fsub float %mul614, %419
  store float %sub615, float* %numre, align 4, !tbaa !15
  %420 = load float, float* %an, align 4, !tbaa !15
  %421 = load float, float* %bn, align 4, !tbaa !15
  %sub616 = fsub float %420, %421
  %mul617 = fmul float %sub616, 5.000000e-01
  %422 = load float, float* %numim, align 4, !tbaa !15
  %sub618 = fsub float %mul617, %422
  store float %sub618, float* %numim, align 4, !tbaa !15
  %423 = load float, float* %numre, align 4, !tbaa !15
  %424 = load float, float* %numre, align 4, !tbaa !15
  %mul619 = fmul float %423, %424
  %425 = load float, float* %numim, align 4, !tbaa !15
  %426 = load float, float* %numim, align 4, !tbaa !15
  %mul620 = fmul float %425, %426
  %add621 = fadd float %mul619, %mul620
  %conv622 = fpext float %add621 to double
  %call623 = call double @sqrt(double %conv622) #1
  %427 = load float, float* %den, align 4, !tbaa !15
  %conv624 = fpext float %427 to double
  %div625 = fdiv double %call623, %conv624
  %conv626 = fptrunc double %div625 to float
  store float %conv626, float* %den, align 4, !tbaa !15
  br label %if.end.627

if.end.627:                                       ; preds = %if.then.612, %if.end.597
  %428 = load float, float* %den, align 4, !tbaa !15
  %429 = load i32, i32* %j, align 4, !tbaa !5
  %idxprom628 = sext i32 %429 to i64
  %arrayidx629 = getelementptr inbounds [513 x float], [513 x float]* @L3psycho_anal.cw, i32 0, i64 %idxprom628
  store float %428, float* %arrayidx629, align 4, !tbaa !15
  %430 = bitcast float* %den to i8*
  call void @llvm.lifetime.end(i64 4, i8* %430) #1
  %431 = bitcast float* %numim to i8*
  call void @llvm.lifetime.end(i64 4, i8* %431) #1
  %432 = bitcast float* %numre to i8*
  call void @llvm.lifetime.end(i64 4, i8* %432) #1
  %433 = bitcast float* %r2 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %433) #1
  %434 = bitcast float* %r1 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %434) #1
  %435 = bitcast float* %rn to i8*
  call void @llvm.lifetime.end(i64 4, i8* %435) #1
  %436 = bitcast float* %b2 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %436) #1
  %437 = bitcast float* %b1 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %437) #1
  %438 = bitcast float* %bn to i8*
  call void @llvm.lifetime.end(i64 4, i8* %438) #1
  %439 = bitcast float* %a2 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %439) #1
  %440 = bitcast float* %a1 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %440) #1
  %441 = bitcast float* %an to i8*
  call void @llvm.lifetime.end(i64 4, i8* %441) #1
  br label %for.inc.630

for.inc.630:                                      ; preds = %if.end.627
  %442 = load i32, i32* %j, align 4, !tbaa !5
  %inc631 = add nsw i32 %442, 1
  store i32 %inc631, i32* %j, align 4, !tbaa !5
  br label %for.cond.490

for.end.632:                                      ; preds = %for.cond.490
  %443 = load i32, i32* @L3psycho_anal.cw_lower_index, align 4, !tbaa !5
  store i32 %443, i32* %j, align 4, !tbaa !5
  br label %for.cond.633

for.cond.633:                                     ; preds = %for.inc.772, %for.end.632
  %444 = load i32, i32* %j, align 4, !tbaa !5
  %445 = load i32, i32* @L3psycho_anal.cw_upper_index, align 4, !tbaa !5
  %cmp634 = icmp slt i32 %444, %445
  br i1 %cmp634, label %for.body.636, label %for.end.774

for.body.636:                                     ; preds = %for.cond.633
  %446 = bitcast float* %rn638 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %446) #1
  %447 = bitcast float* %r1640 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %447) #1
  %448 = bitcast float* %r2642 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %448) #1
  %449 = bitcast float* %numre644 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %449) #1
  %450 = bitcast float* %numim646 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %450) #1
  %451 = bitcast float* %den648 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %451) #1
  %452 = load i32, i32* %j, align 4, !tbaa !5
  %add649 = add nsw i32 %452, 2
  %div650 = sdiv i32 %add649, 4
  store i32 %div650, i32* %k, align 4, !tbaa !5
  %453 = load i32, i32* %k, align 4, !tbaa !5
  %idxprom651 = sext i32 %453 to i64
  %arrayidx652 = getelementptr inbounds [129 x float], [129 x float]* getelementptr inbounds ([3 x [129 x float]], [3 x [129 x float]]* @L3psycho_anal.energy_s, i32 0, i64 0), i32 0, i64 %idxprom651
  %454 = load float, float* %arrayidx652, align 4, !tbaa !15
  store float %454, float* %r1640, align 4, !tbaa !15
  %455 = load float, float* %r1640, align 4, !tbaa !15
  %cmp653 = fcmp une float %455, 0.000000e+00
  br i1 %cmp653, label %if.then.655, label %if.else.675

if.then.655:                                      ; preds = %for.body.636
  %456 = bitcast float* %a1657 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %456) #1
  %457 = load i32, i32* %k, align 4, !tbaa !5
  %idxprom658 = sext i32 %457 to i64
  %458 = load [3 x [256 x float]]*, [3 x [256 x float]]** %wsamp_s, align 8, !tbaa !1
  %arrayidx659 = getelementptr inbounds [3 x [256 x float]], [3 x [256 x float]]* %458, i32 0, i64 0
  %arrayidx660 = getelementptr inbounds [256 x float], [256 x float]* %arrayidx659, i32 0, i64 %idxprom658
  %459 = load float, float* %arrayidx660, align 4, !tbaa !15
  store float %459, float* %a1657, align 4, !tbaa !15
  %460 = bitcast float* %b1662 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %460) #1
  %461 = load i32, i32* %k, align 4, !tbaa !5
  %sub663 = sub nsw i32 256, %461
  %idxprom664 = sext i32 %sub663 to i64
  %462 = load [3 x [256 x float]]*, [3 x [256 x float]]** %wsamp_s, align 8, !tbaa !1
  %arrayidx665 = getelementptr inbounds [3 x [256 x float]], [3 x [256 x float]]* %462, i32 0, i64 0
  %arrayidx666 = getelementptr inbounds [256 x float], [256 x float]* %arrayidx665, i32 0, i64 %idxprom664
  %463 = load float, float* %arrayidx666, align 4, !tbaa !15
  store float %463, float* %b1662, align 4, !tbaa !15
  %464 = load float, float* %a1657, align 4, !tbaa !15
  %465 = load float, float* %b1662, align 4, !tbaa !15
  %mul667 = fmul float %464, %465
  store float %mul667, float* %numre644, align 4, !tbaa !15
  %466 = load float, float* %a1657, align 4, !tbaa !15
  %467 = load float, float* %a1657, align 4, !tbaa !15
  %mul668 = fmul float %466, %467
  %468 = load float, float* %b1662, align 4, !tbaa !15
  %469 = load float, float* %b1662, align 4, !tbaa !15
  %mul669 = fmul float %468, %469
  %sub670 = fsub float %mul668, %mul669
  %mul671 = fmul float %sub670, 5.000000e-01
  store float %mul671, float* %numim646, align 4, !tbaa !15
  %470 = load float, float* %r1640, align 4, !tbaa !15
  store float %470, float* %den648, align 4, !tbaa !15
  %471 = load float, float* %r1640, align 4, !tbaa !15
  %conv672 = fpext float %471 to double
  %call673 = call double @sqrt(double %conv672) #1
  %conv674 = fptrunc double %call673 to float
  store float %conv674, float* %r1640, align 4, !tbaa !15
  %472 = bitcast float* %b1662 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %472) #1
  %473 = bitcast float* %a1657 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %473) #1
  br label %if.end.676

if.else.675:                                      ; preds = %for.body.636
  store float 1.000000e+00, float* %numre644, align 4, !tbaa !15
  store float 0.000000e+00, float* %numim646, align 4, !tbaa !15
  store float 1.000000e+00, float* %den648, align 4, !tbaa !15
  br label %if.end.676

if.end.676:                                       ; preds = %if.else.675, %if.then.655
  %474 = load i32, i32* %k, align 4, !tbaa !5
  %idxprom677 = sext i32 %474 to i64
  %arrayidx678 = getelementptr inbounds [129 x float], [129 x float]* getelementptr inbounds ([3 x [129 x float]], [3 x [129 x float]]* @L3psycho_anal.energy_s, i32 0, i64 2), i32 0, i64 %idxprom677
  %475 = load float, float* %arrayidx678, align 4, !tbaa !15
  store float %475, float* %r2642, align 4, !tbaa !15
  %476 = load float, float* %r2642, align 4, !tbaa !15
  %cmp679 = fcmp une float %476, 0.000000e+00
  br i1 %cmp679, label %if.then.681, label %if.else.711

if.then.681:                                      ; preds = %if.end.676
  %477 = bitcast float* %a2683 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %477) #1
  %478 = load i32, i32* %k, align 4, !tbaa !5
  %idxprom684 = sext i32 %478 to i64
  %479 = load [3 x [256 x float]]*, [3 x [256 x float]]** %wsamp_s, align 8, !tbaa !1
  %arrayidx685 = getelementptr inbounds [3 x [256 x float]], [3 x [256 x float]]* %479, i32 0, i64 2
  %arrayidx686 = getelementptr inbounds [256 x float], [256 x float]* %arrayidx685, i32 0, i64 %idxprom684
  %480 = load float, float* %arrayidx686, align 4, !tbaa !15
  store float %480, float* %a2683, align 4, !tbaa !15
  %481 = bitcast float* %b2688 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %481) #1
  %482 = load i32, i32* %k, align 4, !tbaa !5
  %sub689 = sub nsw i32 256, %482
  %idxprom690 = sext i32 %sub689 to i64
  %483 = load [3 x [256 x float]]*, [3 x [256 x float]]** %wsamp_s, align 8, !tbaa !1
  %arrayidx691 = getelementptr inbounds [3 x [256 x float]], [3 x [256 x float]]* %483, i32 0, i64 2
  %arrayidx692 = getelementptr inbounds [256 x float], [256 x float]* %arrayidx691, i32 0, i64 %idxprom690
  %484 = load float, float* %arrayidx692, align 4, !tbaa !15
  store float %484, float* %b2688, align 4, !tbaa !15
  %485 = bitcast float* %tmp2694 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %485) #1
  %486 = load float, float* %numim646, align 4, !tbaa !15
  %487 = load float, float* %numre644, align 4, !tbaa !15
  %add695 = fadd float %486, %487
  %488 = load float, float* %a2683, align 4, !tbaa !15
  %489 = load float, float* %b2688, align 4, !tbaa !15
  %add696 = fadd float %488, %489
  %mul697 = fmul float %add695, %add696
  %mul698 = fmul float %mul697, 5.000000e-01
  store float %mul698, float* %tmp2694, align 4, !tbaa !15
  %490 = bitcast float* %tmp1700 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %490) #1
  %491 = load float, float* %a2683, align 4, !tbaa !15
  %sub701 = fsub float -0.000000e+00, %491
  %492 = load float, float* %numre644, align 4, !tbaa !15
  %mul702 = fmul float %sub701, %492
  %493 = load float, float* %tmp2694, align 4, !tbaa !15
  %add703 = fadd float %mul702, %493
  store float %add703, float* %tmp1700, align 4, !tbaa !15
  %494 = load float, float* %b2688, align 4, !tbaa !15
  %sub704 = fsub float -0.000000e+00, %494
  %495 = load float, float* %numim646, align 4, !tbaa !15
  %mul705 = fmul float %sub704, %495
  %496 = load float, float* %tmp2694, align 4, !tbaa !15
  %add706 = fadd float %mul705, %496
  store float %add706, float* %numre644, align 4, !tbaa !15
  %497 = load float, float* %tmp1700, align 4, !tbaa !15
  store float %497, float* %numim646, align 4, !tbaa !15
  %498 = load float, float* %r2642, align 4, !tbaa !15
  %conv707 = fpext float %498 to double
  %call708 = call double @sqrt(double %conv707) #1
  %conv709 = fptrunc double %call708 to float
  store float %conv709, float* %r2642, align 4, !tbaa !15
  %499 = load float, float* %r2642, align 4, !tbaa !15
  %500 = load float, float* %den648, align 4, !tbaa !15
  %mul710 = fmul float %500, %499
  store float %mul710, float* %den648, align 4, !tbaa !15
  %501 = bitcast float* %tmp1700 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %501) #1
  %502 = bitcast float* %tmp2694 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %502) #1
  %503 = bitcast float* %b2688 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %503) #1
  %504 = bitcast float* %a2683 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %504) #1
  br label %if.end.712

if.else.711:                                      ; preds = %if.end.676
  br label %if.end.712

if.end.712:                                       ; preds = %if.else.711, %if.then.681
  %505 = bitcast float* %tmp714 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %505) #1
  %506 = load float, float* %r1640, align 4, !tbaa !15
  %mul715 = fmul float 2.000000e+00, %506
  %507 = load float, float* %r2642, align 4, !tbaa !15
  %sub716 = fsub float %mul715, %507
  %508 = load float, float* %den648, align 4, !tbaa !15
  %div717 = fdiv float %sub716, %508
  store float %div717, float* %tmp714, align 4, !tbaa !15
  %509 = load float, float* %tmp714, align 4, !tbaa !15
  %510 = load float, float* %numre644, align 4, !tbaa !15
  %mul718 = fmul float %510, %509
  store float %mul718, float* %numre644, align 4, !tbaa !15
  %511 = load float, float* %tmp714, align 4, !tbaa !15
  %512 = load float, float* %numim646, align 4, !tbaa !15
  %mul719 = fmul float %512, %511
  store float %mul719, float* %numim646, align 4, !tbaa !15
  %513 = bitcast float* %tmp714 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %513) #1
  %514 = load i32, i32* %k, align 4, !tbaa !5
  %idxprom720 = sext i32 %514 to i64
  %arrayidx721 = getelementptr inbounds [129 x float], [129 x float]* getelementptr inbounds ([3 x [129 x float]], [3 x [129 x float]]* @L3psycho_anal.energy_s, i32 0, i64 1), i32 0, i64 %idxprom720
  %515 = load float, float* %arrayidx721, align 4, !tbaa !15
  %conv722 = fpext float %515 to double
  %call723 = call double @sqrt(double %conv722) #1
  %conv724 = fptrunc double %call723 to float
  store float %conv724, float* %rn638, align 4, !tbaa !15
  %516 = load float, float* %rn638, align 4, !tbaa !15
  %conv725 = fpext float %516 to double
  %517 = load float, float* %r1640, align 4, !tbaa !15
  %mul726 = fmul float 2.000000e+00, %517
  %518 = load float, float* %r2642, align 4, !tbaa !15
  %sub727 = fsub float %mul726, %518
  %conv728 = fpext float %sub727 to double
  %call729 = call double @fabs(double %conv728) #7
  %add730 = fadd double %conv725, %call729
  %conv731 = fptrunc double %add730 to float
  store float %conv731, float* %den648, align 4, !tbaa !15
  %519 = load float, float* %den648, align 4, !tbaa !15
  %cmp732 = fcmp une float %519, 0.000000e+00
  br i1 %cmp732, label %if.then.734, label %if.end.760

if.then.734:                                      ; preds = %if.end.712
  %520 = bitcast float* %an736 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %520) #1
  %521 = load i32, i32* %k, align 4, !tbaa !5
  %idxprom737 = sext i32 %521 to i64
  %522 = load [3 x [256 x float]]*, [3 x [256 x float]]** %wsamp_s, align 8, !tbaa !1
  %arrayidx738 = getelementptr inbounds [3 x [256 x float]], [3 x [256 x float]]* %522, i32 0, i64 1
  %arrayidx739 = getelementptr inbounds [256 x float], [256 x float]* %arrayidx738, i32 0, i64 %idxprom737
  %523 = load float, float* %arrayidx739, align 4, !tbaa !15
  store float %523, float* %an736, align 4, !tbaa !15
  %524 = bitcast float* %bn741 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %524) #1
  %525 = load i32, i32* %k, align 4, !tbaa !5
  %sub742 = sub nsw i32 256, %525
  %idxprom743 = sext i32 %sub742 to i64
  %526 = load [3 x [256 x float]]*, [3 x [256 x float]]** %wsamp_s, align 8, !tbaa !1
  %arrayidx744 = getelementptr inbounds [3 x [256 x float]], [3 x [256 x float]]* %526, i32 0, i64 1
  %arrayidx745 = getelementptr inbounds [256 x float], [256 x float]* %arrayidx744, i32 0, i64 %idxprom743
  %527 = load float, float* %arrayidx745, align 4, !tbaa !15
  store float %527, float* %bn741, align 4, !tbaa !15
  %528 = load float, float* %an736, align 4, !tbaa !15
  %529 = load float, float* %bn741, align 4, !tbaa !15
  %add746 = fadd float %528, %529
  %mul747 = fmul float %add746, 5.000000e-01
  %530 = load float, float* %numre644, align 4, !tbaa !15
  %sub748 = fsub float %mul747, %530
  store float %sub748, float* %numre644, align 4, !tbaa !15
  %531 = load float, float* %an736, align 4, !tbaa !15
  %532 = load float, float* %bn741, align 4, !tbaa !15
  %sub749 = fsub float %531, %532
  %mul750 = fmul float %sub749, 5.000000e-01
  %533 = load float, float* %numim646, align 4, !tbaa !15
  %sub751 = fsub float %mul750, %533
  store float %sub751, float* %numim646, align 4, !tbaa !15
  %534 = load float, float* %numre644, align 4, !tbaa !15
  %535 = load float, float* %numre644, align 4, !tbaa !15
  %mul752 = fmul float %534, %535
  %536 = load float, float* %numim646, align 4, !tbaa !15
  %537 = load float, float* %numim646, align 4, !tbaa !15
  %mul753 = fmul float %536, %537
  %add754 = fadd float %mul752, %mul753
  %conv755 = fpext float %add754 to double
  %call756 = call double @sqrt(double %conv755) #1
  %538 = load float, float* %den648, align 4, !tbaa !15
  %conv757 = fpext float %538 to double
  %div758 = fdiv double %call756, %conv757
  %conv759 = fptrunc double %div758 to float
  store float %conv759, float* %den648, align 4, !tbaa !15
  %539 = bitcast float* %bn741 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %539) #1
  %540 = bitcast float* %an736 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %540) #1
  br label %if.end.760

if.end.760:                                       ; preds = %if.then.734, %if.end.712
  %541 = load float, float* %den648, align 4, !tbaa !15
  %542 = load i32, i32* %j, align 4, !tbaa !5
  %idxprom761 = sext i32 %542 to i64
  %arrayidx762 = getelementptr inbounds [513 x float], [513 x float]* @L3psycho_anal.cw, i32 0, i64 %idxprom761
  store float %541, float* %arrayidx762, align 4, !tbaa !15
  %543 = load i32, i32* %j, align 4, !tbaa !5
  %add763 = add nsw i32 %543, 3
  %idxprom764 = sext i32 %add763 to i64
  %arrayidx765 = getelementptr inbounds [513 x float], [513 x float]* @L3psycho_anal.cw, i32 0, i64 %idxprom764
  store float %541, float* %arrayidx765, align 4, !tbaa !15
  %544 = load i32, i32* %j, align 4, !tbaa !5
  %add766 = add nsw i32 %544, 2
  %idxprom767 = sext i32 %add766 to i64
  %arrayidx768 = getelementptr inbounds [513 x float], [513 x float]* @L3psycho_anal.cw, i32 0, i64 %idxprom767
  store float %541, float* %arrayidx768, align 4, !tbaa !15
  %545 = load i32, i32* %j, align 4, !tbaa !5
  %add769 = add nsw i32 %545, 1
  %idxprom770 = sext i32 %add769 to i64
  %arrayidx771 = getelementptr inbounds [513 x float], [513 x float]* @L3psycho_anal.cw, i32 0, i64 %idxprom770
  store float %541, float* %arrayidx771, align 4, !tbaa !15
  %546 = bitcast float* %den648 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %546) #1
  %547 = bitcast float* %numim646 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %547) #1
  %548 = bitcast float* %numre644 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %548) #1
  %549 = bitcast float* %r2642 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %549) #1
  %550 = bitcast float* %r1640 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %550) #1
  %551 = bitcast float* %rn638 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %551) #1
  br label %for.inc.772

for.inc.772:                                      ; preds = %if.end.760
  %552 = load i32, i32* %j, align 4, !tbaa !5
  %add773 = add nsw i32 %552, 4
  store i32 %add773, i32* %j, align 4, !tbaa !5
  br label %for.cond.633

for.end.774:                                      ; preds = %for.cond.633
  store i32 0, i32* %b, align 4, !tbaa !5
  store i32 0, i32* %j, align 4, !tbaa !5
  br label %for.cond.775

for.cond.775:                                     ; preds = %for.end.814, %for.end.774
  %553 = load i32, i32* %j, align 4, !tbaa !5
  %554 = load i32, i32* @L3psycho_anal.cw_upper_index, align 4, !tbaa !5
  %cmp776 = icmp slt i32 %553, %554
  br i1 %cmp776, label %for.body.778, label %for.end.820

for.body.778:                                     ; preds = %for.cond.775
  %555 = bitcast double* %ebb to i8*
  call void @llvm.lifetime.start(i64 8, i8* %555) #1
  %556 = bitcast double* %cbb to i8*
  call void @llvm.lifetime.start(i64 8, i8* %556) #1
  %557 = bitcast i32* %i782 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %557) #1
  %558 = load i32, i32* %j, align 4, !tbaa !5
  %idxprom783 = sext i32 %558 to i64
  %arrayidx784 = getelementptr inbounds [513 x float], [513 x float]* @L3psycho_anal.energy, i32 0, i64 %idxprom783
  %559 = load float, float* %arrayidx784, align 4, !tbaa !15
  %conv785 = fpext float %559 to double
  store double %conv785, double* %ebb, align 8, !tbaa !7
  %560 = load i32, i32* %j, align 4, !tbaa !5
  %idxprom786 = sext i32 %560 to i64
  %arrayidx787 = getelementptr inbounds [513 x float], [513 x float]* @L3psycho_anal.energy, i32 0, i64 %idxprom786
  %561 = load float, float* %arrayidx787, align 4, !tbaa !15
  %562 = load i32, i32* %j, align 4, !tbaa !5
  %idxprom788 = sext i32 %562 to i64
  %arrayidx789 = getelementptr inbounds [513 x float], [513 x float]* @L3psycho_anal.cw, i32 0, i64 %idxprom788
  %563 = load float, float* %arrayidx789, align 4, !tbaa !15
  %mul790 = fmul float %561, %563
  %conv791 = fpext float %mul790 to double
  store double %conv791, double* %cbb, align 8, !tbaa !7
  %564 = load i32, i32* %j, align 4, !tbaa !5
  %inc792 = add nsw i32 %564, 1
  store i32 %inc792, i32* %j, align 4, !tbaa !5
  %565 = load i32, i32* %b, align 4, !tbaa !5
  %idxprom793 = sext i32 %565 to i64
  %arrayidx794 = getelementptr inbounds [63 x i32], [63 x i32]* @L3psycho_anal.numlines_l, i32 0, i64 %idxprom793
  %566 = load i32, i32* %arrayidx794, align 4, !tbaa !5
  %sub795 = sub nsw i32 %566, 1
  store i32 %sub795, i32* %i782, align 4, !tbaa !5
  br label %for.cond.796

for.cond.796:                                     ; preds = %for.inc.812, %for.body.778
  %567 = load i32, i32* %i782, align 4, !tbaa !5
  %cmp797 = icmp sgt i32 %567, 0
  br i1 %cmp797, label %for.body.799, label %for.end.814

for.body.799:                                     ; preds = %for.cond.796
  %568 = load i32, i32* %j, align 4, !tbaa !5
  %idxprom800 = sext i32 %568 to i64
  %arrayidx801 = getelementptr inbounds [513 x float], [513 x float]* @L3psycho_anal.energy, i32 0, i64 %idxprom800
  %569 = load float, float* %arrayidx801, align 4, !tbaa !15
  %conv802 = fpext float %569 to double
  %570 = load double, double* %ebb, align 8, !tbaa !7
  %add803 = fadd double %570, %conv802
  store double %add803, double* %ebb, align 8, !tbaa !7
  %571 = load i32, i32* %j, align 4, !tbaa !5
  %idxprom804 = sext i32 %571 to i64
  %arrayidx805 = getelementptr inbounds [513 x float], [513 x float]* @L3psycho_anal.energy, i32 0, i64 %idxprom804
  %572 = load float, float* %arrayidx805, align 4, !tbaa !15
  %573 = load i32, i32* %j, align 4, !tbaa !5
  %idxprom806 = sext i32 %573 to i64
  %arrayidx807 = getelementptr inbounds [513 x float], [513 x float]* @L3psycho_anal.cw, i32 0, i64 %idxprom806
  %574 = load float, float* %arrayidx807, align 4, !tbaa !15
  %mul808 = fmul float %572, %574
  %conv809 = fpext float %mul808 to double
  %575 = load double, double* %cbb, align 8, !tbaa !7
  %add810 = fadd double %575, %conv809
  store double %add810, double* %cbb, align 8, !tbaa !7
  %576 = load i32, i32* %j, align 4, !tbaa !5
  %inc811 = add nsw i32 %576, 1
  store i32 %inc811, i32* %j, align 4, !tbaa !5
  br label %for.inc.812

for.inc.812:                                      ; preds = %for.body.799
  %577 = load i32, i32* %i782, align 4, !tbaa !5
  %dec813 = add nsw i32 %577, -1
  store i32 %dec813, i32* %i782, align 4, !tbaa !5
  br label %for.cond.796

for.end.814:                                      ; preds = %for.cond.796
  %578 = load double, double* %ebb, align 8, !tbaa !7
  %579 = load i32, i32* %b, align 4, !tbaa !5
  %idxprom815 = sext i32 %579 to i64
  %arrayidx816 = getelementptr inbounds [63 x double], [63 x double]* @L3psycho_anal.eb, i32 0, i64 %idxprom815
  store double %578, double* %arrayidx816, align 8, !tbaa !7
  %580 = load double, double* %cbb, align 8, !tbaa !7
  %581 = load i32, i32* %b, align 4, !tbaa !5
  %idxprom817 = sext i32 %581 to i64
  %arrayidx818 = getelementptr inbounds [63 x double], [63 x double]* @L3psycho_anal.cb, i32 0, i64 %idxprom817
  store double %580, double* %arrayidx818, align 8, !tbaa !7
  %582 = load i32, i32* %b, align 4, !tbaa !5
  %inc819 = add nsw i32 %582, 1
  store i32 %inc819, i32* %b, align 4, !tbaa !5
  %583 = bitcast i32* %i782 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %583) #1
  %584 = bitcast double* %cbb to i8*
  call void @llvm.lifetime.end(i64 8, i8* %584) #1
  %585 = bitcast double* %ebb to i8*
  call void @llvm.lifetime.end(i64 8, i8* %585) #1
  br label %for.cond.775

for.end.820:                                      ; preds = %for.cond.775
  br label %for.cond.821

for.cond.821:                                     ; preds = %for.inc.853, %for.end.820
  %586 = load i32, i32* %b, align 4, !tbaa !5
  %587 = load i32, i32* @L3psycho_anal.npart_l_orig, align 4, !tbaa !5
  %cmp822 = icmp slt i32 %586, %587
  br i1 %cmp822, label %for.body.824, label %for.end.855

for.body.824:                                     ; preds = %for.cond.821
  %588 = bitcast i32* %i826 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %588) #1
  %589 = bitcast double* %ebb828 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %589) #1
  %590 = load i32, i32* %j, align 4, !tbaa !5
  %inc829 = add nsw i32 %590, 1
  store i32 %inc829, i32* %j, align 4, !tbaa !5
  %idxprom830 = sext i32 %590 to i64
  %arrayidx831 = getelementptr inbounds [513 x float], [513 x float]* @L3psycho_anal.energy, i32 0, i64 %idxprom830
  %591 = load float, float* %arrayidx831, align 4, !tbaa !15
  %conv832 = fpext float %591 to double
  store double %conv832, double* %ebb828, align 8, !tbaa !7
  %592 = load i32, i32* %b, align 4, !tbaa !5
  %idxprom833 = sext i32 %592 to i64
  %arrayidx834 = getelementptr inbounds [63 x i32], [63 x i32]* @L3psycho_anal.numlines_l, i32 0, i64 %idxprom833
  %593 = load i32, i32* %arrayidx834, align 4, !tbaa !5
  %sub835 = sub nsw i32 %593, 1
  store i32 %sub835, i32* %i826, align 4, !tbaa !5
  br label %for.cond.836

for.cond.836:                                     ; preds = %for.inc.845, %for.body.824
  %594 = load i32, i32* %i826, align 4, !tbaa !5
  %cmp837 = icmp sgt i32 %594, 0
  br i1 %cmp837, label %for.body.839, label %for.end.847

for.body.839:                                     ; preds = %for.cond.836
  %595 = load i32, i32* %j, align 4, !tbaa !5
  %inc840 = add nsw i32 %595, 1
  store i32 %inc840, i32* %j, align 4, !tbaa !5
  %idxprom841 = sext i32 %595 to i64
  %arrayidx842 = getelementptr inbounds [513 x float], [513 x float]* @L3psycho_anal.energy, i32 0, i64 %idxprom841
  %596 = load float, float* %arrayidx842, align 4, !tbaa !15
  %conv843 = fpext float %596 to double
  %597 = load double, double* %ebb828, align 8, !tbaa !7
  %add844 = fadd double %597, %conv843
  store double %add844, double* %ebb828, align 8, !tbaa !7
  br label %for.inc.845

for.inc.845:                                      ; preds = %for.body.839
  %598 = load i32, i32* %i826, align 4, !tbaa !5
  %dec846 = add nsw i32 %598, -1
  store i32 %dec846, i32* %i826, align 4, !tbaa !5
  br label %for.cond.836

for.end.847:                                      ; preds = %for.cond.836
  %599 = load double, double* %ebb828, align 8, !tbaa !7
  %600 = load i32, i32* %b, align 4, !tbaa !5
  %idxprom848 = sext i32 %600 to i64
  %arrayidx849 = getelementptr inbounds [63 x double], [63 x double]* @L3psycho_anal.eb, i32 0, i64 %idxprom848
  store double %599, double* %arrayidx849, align 8, !tbaa !7
  %601 = load double, double* %ebb828, align 8, !tbaa !7
  %mul850 = fmul double %601, 4.000000e-01
  %602 = load i32, i32* %b, align 4, !tbaa !5
  %idxprom851 = sext i32 %602 to i64
  %arrayidx852 = getelementptr inbounds [63 x double], [63 x double]* @L3psycho_anal.cb, i32 0, i64 %idxprom851
  store double %mul850, double* %arrayidx852, align 8, !tbaa !7
  %603 = bitcast double* %ebb828 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %603) #1
  %604 = bitcast i32* %i826 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %604) #1
  br label %for.inc.853

for.inc.853:                                      ; preds = %for.end.847
  %605 = load i32, i32* %b, align 4, !tbaa !5
  %inc854 = add nsw i32 %605, 1
  store i32 %inc854, i32* %b, align 4, !tbaa !5
  br label %for.cond.821

for.end.855:                                      ; preds = %for.cond.821
  %606 = load i32, i32* %chn, align 4, !tbaa !5
  %idxprom856 = sext i32 %606 to i64
  %arrayidx857 = getelementptr inbounds [4 x double], [4 x double]* @L3psycho_anal.pe, i32 0, i64 %idxprom856
  store double 0.000000e+00, double* %arrayidx857, align 8, !tbaa !7
  store i32 0, i32* %b, align 4, !tbaa !5
  br label %for.cond.858

for.cond.858:                                     ; preds = %for.inc.1029, %for.end.855
  %607 = load i32, i32* %b, align 4, !tbaa !5
  %608 = load i32, i32* @L3psycho_anal.npart_l, align 4, !tbaa !5
  %cmp859 = icmp slt i32 %607, %608
  br i1 %cmp859, label %for.body.861, label %for.end.1031

for.body.861:                                     ; preds = %for.cond.858
  %609 = bitcast double* %tbb to i8*
  call void @llvm.lifetime.start(i64 8, i8* %609) #1
  %610 = bitcast double* %ecb to i8*
  call void @llvm.lifetime.start(i64 8, i8* %610) #1
  %611 = bitcast double* %ctb to i8*
  call void @llvm.lifetime.start(i64 8, i8* %611) #1
  %612 = bitcast double* %temp_1 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %612) #1
  store double 0.000000e+00, double* %ecb, align 8, !tbaa !7
  store double 0.000000e+00, double* %ctb, align 8, !tbaa !7
  %613 = load i32, i32* %b, align 4, !tbaa !5
  %idxprom866 = sext i32 %613 to i64
  %arrayidx867 = getelementptr inbounds [63 x [2 x i32]], [63 x [2 x i32]]* @L3psycho_anal.s3ind, i32 0, i64 %idxprom866
  %arrayidx868 = getelementptr inbounds [2 x i32], [2 x i32]* %arrayidx867, i32 0, i64 0
  %614 = load i32, i32* %arrayidx868, align 4, !tbaa !5
  store i32 %614, i32* %k, align 4, !tbaa !5
  br label %for.cond.869

for.cond.869:                                     ; preds = %for.inc.892, %for.body.861
  %615 = load i32, i32* %k, align 4, !tbaa !5
  %616 = load i32, i32* %b, align 4, !tbaa !5
  %idxprom870 = sext i32 %616 to i64
  %arrayidx871 = getelementptr inbounds [63 x [2 x i32]], [63 x [2 x i32]]* @L3psycho_anal.s3ind, i32 0, i64 %idxprom870
  %arrayidx872 = getelementptr inbounds [2 x i32], [2 x i32]* %arrayidx871, i32 0, i64 1
  %617 = load i32, i32* %arrayidx872, align 4, !tbaa !5
  %cmp873 = icmp sle i32 %615, %617
  br i1 %cmp873, label %for.body.875, label %for.end.894

for.body.875:                                     ; preds = %for.cond.869
  %618 = load i32, i32* %k, align 4, !tbaa !5
  %idxprom876 = sext i32 %618 to i64
  %619 = load i32, i32* %b, align 4, !tbaa !5
  %idxprom877 = sext i32 %619 to i64
  %arrayidx878 = getelementptr inbounds [64 x [64 x double]], [64 x [64 x double]]* @L3psycho_anal.s3_l, i32 0, i64 %idxprom877
  %arrayidx879 = getelementptr inbounds [64 x double], [64 x double]* %arrayidx878, i32 0, i64 %idxprom876
  %620 = load double, double* %arrayidx879, align 8, !tbaa !7
  %621 = load i32, i32* %k, align 4, !tbaa !5
  %idxprom880 = sext i32 %621 to i64
  %arrayidx881 = getelementptr inbounds [63 x double], [63 x double]* @L3psycho_anal.eb, i32 0, i64 %idxprom880
  %622 = load double, double* %arrayidx881, align 8, !tbaa !7
  %mul882 = fmul double %620, %622
  %623 = load double, double* %ecb, align 8, !tbaa !7
  %add883 = fadd double %623, %mul882
  store double %add883, double* %ecb, align 8, !tbaa !7
  %624 = load i32, i32* %k, align 4, !tbaa !5
  %idxprom884 = sext i32 %624 to i64
  %625 = load i32, i32* %b, align 4, !tbaa !5
  %idxprom885 = sext i32 %625 to i64
  %arrayidx886 = getelementptr inbounds [64 x [64 x double]], [64 x [64 x double]]* @L3psycho_anal.s3_l, i32 0, i64 %idxprom885
  %arrayidx887 = getelementptr inbounds [64 x double], [64 x double]* %arrayidx886, i32 0, i64 %idxprom884
  %626 = load double, double* %arrayidx887, align 8, !tbaa !7
  %627 = load i32, i32* %k, align 4, !tbaa !5
  %idxprom888 = sext i32 %627 to i64
  %arrayidx889 = getelementptr inbounds [63 x double], [63 x double]* @L3psycho_anal.cb, i32 0, i64 %idxprom888
  %628 = load double, double* %arrayidx889, align 8, !tbaa !7
  %mul890 = fmul double %626, %628
  %629 = load double, double* %ctb, align 8, !tbaa !7
  %add891 = fadd double %629, %mul890
  store double %add891, double* %ctb, align 8, !tbaa !7
  br label %for.inc.892

for.inc.892:                                      ; preds = %for.body.875
  %630 = load i32, i32* %k, align 4, !tbaa !5
  %inc893 = add nsw i32 %630, 1
  store i32 %inc893, i32* %k, align 4, !tbaa !5
  br label %for.cond.869

for.end.894:                                      ; preds = %for.cond.869
  %631 = load double, double* %ecb, align 8, !tbaa !7
  store double %631, double* %tbb, align 8, !tbaa !7
  %632 = load double, double* %tbb, align 8, !tbaa !7
  %cmp895 = fcmp une double %632, 0.000000e+00
  br i1 %cmp895, label %if.then.897, label %if.end.914

if.then.897:                                      ; preds = %for.end.894
  %633 = load double, double* %ctb, align 8, !tbaa !7
  %634 = load double, double* %tbb, align 8, !tbaa !7
  %div898 = fdiv double %633, %634
  store double %div898, double* %tbb, align 8, !tbaa !7
  %635 = load double, double* %tbb, align 8, !tbaa !7
  %cmp899 = fcmp ole double %635, 0x3FA8F6869E6F084D
  br i1 %cmp899, label %if.then.901, label %if.else.903

if.then.901:                                      ; preds = %if.then.897
  %call902 = call double @exp(double 0xC0061AD547A6661A) #1
  store double %call902, double* %tbb, align 8, !tbaa !7
  br label %if.end.913

if.else.903:                                      ; preds = %if.then.897
  %636 = load double, double* %tbb, align 8, !tbaa !7
  %cmp904 = fcmp ogt double %636, 0x3FDFEDFBDEEA22F7
  br i1 %cmp904, label %if.then.906, label %if.else.907

if.then.906:                                      ; preds = %if.else.903
  store double 1.000000e+00, double* %tbb, align 8, !tbaa !7
  br label %if.end.912

if.else.907:                                      ; preds = %if.else.903
  %637 = load double, double* %tbb, align 8, !tbaa !7
  %call908 = call double @log(double %637) #1
  store double %call908, double* %tbb, align 8, !tbaa !7
  %638 = load double, double* %tbb, align 8, !tbaa !7
  %mul909 = fmul double 0x3FF30298B36105E3, %638
  %add910 = fadd double 0x3FEA6FF6E4078667, %mul909
  %call911 = call double @exp(double %add910) #1
  store double %call911, double* %tbb, align 8, !tbaa !7
  br label %if.end.912

if.end.912:                                       ; preds = %if.else.907, %if.then.906
  br label %if.end.913

if.end.913:                                       ; preds = %if.end.912, %if.then.901
  br label %if.end.914

if.end.914:                                       ; preds = %if.end.913, %for.end.894
  %639 = load i32, i32* %b, align 4, !tbaa !5
  %idxprom915 = sext i32 %639 to i64
  %arrayidx916 = getelementptr inbounds [63 x double], [63 x double]* @L3psycho_anal.minval, i32 0, i64 %idxprom915
  %640 = load double, double* %arrayidx916, align 8, !tbaa !7
  %641 = load double, double* %tbb, align 8, !tbaa !7
  %cmp917 = fcmp olt double %640, %641
  br i1 %cmp917, label %cond.true.919, label %cond.false.922

cond.true.919:                                    ; preds = %if.end.914
  %642 = load i32, i32* %b, align 4, !tbaa !5
  %idxprom920 = sext i32 %642 to i64
  %arrayidx921 = getelementptr inbounds [63 x double], [63 x double]* @L3psycho_anal.minval, i32 0, i64 %idxprom920
  %643 = load double, double* %arrayidx921, align 8, !tbaa !7
  br label %cond.end.923

cond.false.922:                                   ; preds = %if.end.914
  %644 = load double, double* %tbb, align 8, !tbaa !7
  br label %cond.end.923

cond.end.923:                                     ; preds = %cond.false.922, %cond.true.919
  %cond924 = phi double [ %643, %cond.true.919 ], [ %644, %cond.false.922 ]
  store double %cond924, double* %tbb, align 8, !tbaa !7
  %645 = load double, double* %tbb, align 8, !tbaa !7
  %646 = load double, double* %ecb, align 8, !tbaa !7
  %mul925 = fmul double %646, %645
  store double %mul925, double* %ecb, align 8, !tbaa !7
  %647 = load double, double* %ecb, align 8, !tbaa !7
  %648 = load i32, i32* %b, align 4, !tbaa !5
  %idxprom926 = sext i32 %648 to i64
  %649 = load i32, i32* %chn, align 4, !tbaa !5
  %idxprom927 = sext i32 %649 to i64
  %arrayidx928 = getelementptr inbounds [4 x [63 x double]], [4 x [63 x double]]* @L3psycho_anal.nb_1, i32 0, i64 %idxprom927
  %arrayidx929 = getelementptr inbounds [63 x double], [63 x double]* %arrayidx928, i32 0, i64 %idxprom926
  %650 = load double, double* %arrayidx929, align 8, !tbaa !7
  %mul930 = fmul double 2.000000e+00, %650
  %651 = load i32, i32* %b, align 4, !tbaa !5
  %idxprom931 = sext i32 %651 to i64
  %652 = load i32, i32* %chn, align 4, !tbaa !5
  %idxprom932 = sext i32 %652 to i64
  %arrayidx933 = getelementptr inbounds [4 x [63 x double]], [4 x [63 x double]]* @L3psycho_anal.nb_2, i32 0, i64 %idxprom932
  %arrayidx934 = getelementptr inbounds [63 x double], [63 x double]* %arrayidx933, i32 0, i64 %idxprom931
  %653 = load double, double* %arrayidx934, align 8, !tbaa !7
  %mul935 = fmul double 1.600000e+01, %653
  %cmp936 = fcmp olt double %mul930, %mul935
  br i1 %cmp936, label %cond.true.938, label %cond.false.944

cond.true.938:                                    ; preds = %cond.end.923
  %654 = load i32, i32* %b, align 4, !tbaa !5
  %idxprom939 = sext i32 %654 to i64
  %655 = load i32, i32* %chn, align 4, !tbaa !5
  %idxprom940 = sext i32 %655 to i64
  %arrayidx941 = getelementptr inbounds [4 x [63 x double]], [4 x [63 x double]]* @L3psycho_anal.nb_1, i32 0, i64 %idxprom940
  %arrayidx942 = getelementptr inbounds [63 x double], [63 x double]* %arrayidx941, i32 0, i64 %idxprom939
  %656 = load double, double* %arrayidx942, align 8, !tbaa !7
  %mul943 = fmul double 2.000000e+00, %656
  br label %cond.end.950

cond.false.944:                                   ; preds = %cond.end.923
  %657 = load i32, i32* %b, align 4, !tbaa !5
  %idxprom945 = sext i32 %657 to i64
  %658 = load i32, i32* %chn, align 4, !tbaa !5
  %idxprom946 = sext i32 %658 to i64
  %arrayidx947 = getelementptr inbounds [4 x [63 x double]], [4 x [63 x double]]* @L3psycho_anal.nb_2, i32 0, i64 %idxprom946
  %arrayidx948 = getelementptr inbounds [63 x double], [63 x double]* %arrayidx947, i32 0, i64 %idxprom945
  %659 = load double, double* %arrayidx948, align 8, !tbaa !7
  %mul949 = fmul double 1.600000e+01, %659
  br label %cond.end.950

cond.end.950:                                     ; preds = %cond.false.944, %cond.true.938
  %cond951 = phi double [ %mul943, %cond.true.938 ], [ %mul949, %cond.false.944 ]
  %cmp952 = fcmp olt double %647, %cond951
  br i1 %cmp952, label %cond.true.954, label %cond.false.955

cond.true.954:                                    ; preds = %cond.end.950
  %660 = load double, double* %ecb, align 8, !tbaa !7
  br label %cond.end.982

cond.false.955:                                   ; preds = %cond.end.950
  %661 = load i32, i32* %b, align 4, !tbaa !5
  %idxprom956 = sext i32 %661 to i64
  %662 = load i32, i32* %chn, align 4, !tbaa !5
  %idxprom957 = sext i32 %662 to i64
  %arrayidx958 = getelementptr inbounds [4 x [63 x double]], [4 x [63 x double]]* @L3psycho_anal.nb_1, i32 0, i64 %idxprom957
  %arrayidx959 = getelementptr inbounds [63 x double], [63 x double]* %arrayidx958, i32 0, i64 %idxprom956
  %663 = load double, double* %arrayidx959, align 8, !tbaa !7
  %mul960 = fmul double 2.000000e+00, %663
  %664 = load i32, i32* %b, align 4, !tbaa !5
  %idxprom961 = sext i32 %664 to i64
  %665 = load i32, i32* %chn, align 4, !tbaa !5
  %idxprom962 = sext i32 %665 to i64
  %arrayidx963 = getelementptr inbounds [4 x [63 x double]], [4 x [63 x double]]* @L3psycho_anal.nb_2, i32 0, i64 %idxprom962
  %arrayidx964 = getelementptr inbounds [63 x double], [63 x double]* %arrayidx963, i32 0, i64 %idxprom961
  %666 = load double, double* %arrayidx964, align 8, !tbaa !7
  %mul965 = fmul double 1.600000e+01, %666
  %cmp966 = fcmp olt double %mul960, %mul965
  br i1 %cmp966, label %cond.true.968, label %cond.false.974

cond.true.968:                                    ; preds = %cond.false.955
  %667 = load i32, i32* %b, align 4, !tbaa !5
  %idxprom969 = sext i32 %667 to i64
  %668 = load i32, i32* %chn, align 4, !tbaa !5
  %idxprom970 = sext i32 %668 to i64
  %arrayidx971 = getelementptr inbounds [4 x [63 x double]], [4 x [63 x double]]* @L3psycho_anal.nb_1, i32 0, i64 %idxprom970
  %arrayidx972 = getelementptr inbounds [63 x double], [63 x double]* %arrayidx971, i32 0, i64 %idxprom969
  %669 = load double, double* %arrayidx972, align 8, !tbaa !7
  %mul973 = fmul double 2.000000e+00, %669
  br label %cond.end.980

cond.false.974:                                   ; preds = %cond.false.955
  %670 = load i32, i32* %b, align 4, !tbaa !5
  %idxprom975 = sext i32 %670 to i64
  %671 = load i32, i32* %chn, align 4, !tbaa !5
  %idxprom976 = sext i32 %671 to i64
  %arrayidx977 = getelementptr inbounds [4 x [63 x double]], [4 x [63 x double]]* @L3psycho_anal.nb_2, i32 0, i64 %idxprom976
  %arrayidx978 = getelementptr inbounds [63 x double], [63 x double]* %arrayidx977, i32 0, i64 %idxprom975
  %672 = load double, double* %arrayidx978, align 8, !tbaa !7
  %mul979 = fmul double 1.600000e+01, %672
  br label %cond.end.980

cond.end.980:                                     ; preds = %cond.false.974, %cond.true.968
  %cond981 = phi double [ %mul973, %cond.true.968 ], [ %mul979, %cond.false.974 ]
  br label %cond.end.982

cond.end.982:                                     ; preds = %cond.end.980, %cond.true.954
  %cond983 = phi double [ %660, %cond.true.954 ], [ %cond981, %cond.end.980 ]
  store double %cond983, double* %temp_1, align 8, !tbaa !7
  %673 = load i32, i32* %b, align 4, !tbaa !5
  %idxprom984 = sext i32 %673 to i64
  %arrayidx985 = getelementptr inbounds [63 x double], [63 x double]* @L3psycho_anal.qthr_l, i32 0, i64 %idxprom984
  %674 = load double, double* %arrayidx985, align 8, !tbaa !7
  %675 = load double, double* %temp_1, align 8, !tbaa !7
  %cmp986 = fcmp ogt double %674, %675
  br i1 %cmp986, label %cond.true.988, label %cond.false.991

cond.true.988:                                    ; preds = %cond.end.982
  %676 = load i32, i32* %b, align 4, !tbaa !5
  %idxprom989 = sext i32 %676 to i64
  %arrayidx990 = getelementptr inbounds [63 x double], [63 x double]* @L3psycho_anal.qthr_l, i32 0, i64 %idxprom989
  %677 = load double, double* %arrayidx990, align 8, !tbaa !7
  br label %cond.end.992

cond.false.991:                                   ; preds = %cond.end.982
  %678 = load double, double* %temp_1, align 8, !tbaa !7
  br label %cond.end.992

cond.end.992:                                     ; preds = %cond.false.991, %cond.true.988
  %cond993 = phi double [ %677, %cond.true.988 ], [ %678, %cond.false.991 ]
  %679 = load i32, i32* %b, align 4, !tbaa !5
  %idxprom994 = sext i32 %679 to i64
  %arrayidx995 = getelementptr inbounds [63 x double], [63 x double]* @L3psycho_anal.thr, i32 0, i64 %idxprom994
  store double %cond993, double* %arrayidx995, align 8, !tbaa !7
  %680 = load i32, i32* %b, align 4, !tbaa !5
  %idxprom996 = sext i32 %680 to i64
  %681 = load i32, i32* %chn, align 4, !tbaa !5
  %idxprom997 = sext i32 %681 to i64
  %arrayidx998 = getelementptr inbounds [4 x [63 x double]], [4 x [63 x double]]* @L3psycho_anal.nb_1, i32 0, i64 %idxprom997
  %arrayidx999 = getelementptr inbounds [63 x double], [63 x double]* %arrayidx998, i32 0, i64 %idxprom996
  %682 = load double, double* %arrayidx999, align 8, !tbaa !7
  %683 = load i32, i32* %b, align 4, !tbaa !5
  %idxprom1000 = sext i32 %683 to i64
  %684 = load i32, i32* %chn, align 4, !tbaa !5
  %idxprom1001 = sext i32 %684 to i64
  %arrayidx1002 = getelementptr inbounds [4 x [63 x double]], [4 x [63 x double]]* @L3psycho_anal.nb_2, i32 0, i64 %idxprom1001
  %arrayidx1003 = getelementptr inbounds [63 x double], [63 x double]* %arrayidx1002, i32 0, i64 %idxprom1000
  store double %682, double* %arrayidx1003, align 8, !tbaa !7
  %685 = load double, double* %ecb, align 8, !tbaa !7
  %686 = load i32, i32* %b, align 4, !tbaa !5
  %idxprom1004 = sext i32 %686 to i64
  %687 = load i32, i32* %chn, align 4, !tbaa !5
  %idxprom1005 = sext i32 %687 to i64
  %arrayidx1006 = getelementptr inbounds [4 x [63 x double]], [4 x [63 x double]]* @L3psycho_anal.nb_1, i32 0, i64 %idxprom1005
  %arrayidx1007 = getelementptr inbounds [63 x double], [63 x double]* %arrayidx1006, i32 0, i64 %idxprom1004
  store double %685, double* %arrayidx1007, align 8, !tbaa !7
  %688 = load i32, i32* %b, align 4, !tbaa !5
  %idxprom1008 = sext i32 %688 to i64
  %arrayidx1009 = getelementptr inbounds [63 x double], [63 x double]* @L3psycho_anal.thr, i32 0, i64 %idxprom1008
  %689 = load double, double* %arrayidx1009, align 8, !tbaa !7
  %690 = load i32, i32* %b, align 4, !tbaa !5
  %idxprom1010 = sext i32 %690 to i64
  %arrayidx1011 = getelementptr inbounds [63 x double], [63 x double]* @L3psycho_anal.eb, i32 0, i64 %idxprom1010
  %691 = load double, double* %arrayidx1011, align 8, !tbaa !7
  %cmp1012 = fcmp olt double %689, %691
  br i1 %cmp1012, label %if.then.1014, label %if.end.1028

if.then.1014:                                     ; preds = %cond.end.992
  %692 = load i32, i32* %b, align 4, !tbaa !5
  %idxprom1015 = sext i32 %692 to i64
  %arrayidx1016 = getelementptr inbounds [63 x i32], [63 x i32]* @L3psycho_anal.numlines_l, i32 0, i64 %idxprom1015
  %693 = load i32, i32* %arrayidx1016, align 4, !tbaa !5
  %conv1017 = sitofp i32 %693 to double
  %694 = load i32, i32* %b, align 4, !tbaa !5
  %idxprom1018 = sext i32 %694 to i64
  %arrayidx1019 = getelementptr inbounds [63 x double], [63 x double]* @L3psycho_anal.thr, i32 0, i64 %idxprom1018
  %695 = load double, double* %arrayidx1019, align 8, !tbaa !7
  %696 = load i32, i32* %b, align 4, !tbaa !5
  %idxprom1020 = sext i32 %696 to i64
  %arrayidx1021 = getelementptr inbounds [63 x double], [63 x double]* @L3psycho_anal.eb, i32 0, i64 %idxprom1020
  %697 = load double, double* %arrayidx1021, align 8, !tbaa !7
  %div1022 = fdiv double %695, %697
  %call1023 = call double @log(double %div1022) #1
  %mul1024 = fmul double %conv1017, %call1023
  %698 = load i32, i32* %chn, align 4, !tbaa !5
  %idxprom1025 = sext i32 %698 to i64
  %arrayidx1026 = getelementptr inbounds [4 x double], [4 x double]* @L3psycho_anal.pe, i32 0, i64 %idxprom1025
  %699 = load double, double* %arrayidx1026, align 8, !tbaa !7
  %sub1027 = fsub double %699, %mul1024
  store double %sub1027, double* %arrayidx1026, align 8, !tbaa !7
  br label %if.end.1028

if.end.1028:                                      ; preds = %if.then.1014, %cond.end.992
  %700 = bitcast double* %temp_1 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %700) #1
  %701 = bitcast double* %ctb to i8*
  call void @llvm.lifetime.end(i64 8, i8* %701) #1
  %702 = bitcast double* %ecb to i8*
  call void @llvm.lifetime.end(i64 8, i8* %702) #1
  %703 = bitcast double* %tbb to i8*
  call void @llvm.lifetime.end(i64 8, i8* %703) #1
  br label %for.inc.1029

for.inc.1029:                                     ; preds = %if.end.1028
  %704 = load i32, i32* %b, align 4, !tbaa !5
  %inc1030 = add nsw i32 %704, 1
  store i32 %inc1030, i32* %b, align 4, !tbaa !5
  br label %for.cond.858

for.end.1031:                                     ; preds = %for.cond.858
  %705 = load i32, i32* %chn, align 4, !tbaa !5
  %cmp1032 = icmp slt i32 %705, 2
  br i1 %cmp1032, label %if.then.1034, label %if.end.1116

if.then.1034:                                     ; preds = %for.end.1031
  %706 = load %struct.lame_global_flags*, %struct.lame_global_flags** %gfp.addr, align 8, !tbaa !1
  %no_short_blocks = getelementptr inbounds %struct.lame_global_flags, %struct.lame_global_flags* %706, i32 0, i32 37
  %707 = load i32, i32* %no_short_blocks, align 4, !tbaa !21
  %tobool = icmp ne i32 %707, 0
  br i1 %tobool, label %if.then.1035, label %if.else.1038

if.then.1035:                                     ; preds = %if.then.1034
  %708 = load i32, i32* %chn, align 4, !tbaa !5
  %idxprom1036 = sext i32 %708 to i64
  %arrayidx1037 = getelementptr inbounds [2 x i32], [2 x i32]* %uselongblock, i32 0, i64 %idxprom1036
  store i32 1, i32* %arrayidx1037, align 4, !tbaa !5
  br label %if.end.1115

if.else.1038:                                     ; preds = %if.then.1034
  %709 = load i32, i32* %chn, align 4, !tbaa !5
  %idxprom1039 = sext i32 %709 to i64
  %arrayidx1040 = getelementptr inbounds [4 x double], [4 x double]* @L3psycho_anal.pe, i32 0, i64 %idxprom1039
  %710 = load double, double* %arrayidx1040, align 8, !tbaa !7
  %cmp1041 = fcmp ogt double %710, 3.000000e+03
  br i1 %cmp1041, label %if.then.1043, label %if.else.1046

if.then.1043:                                     ; preds = %if.else.1038
  %711 = load i32, i32* %chn, align 4, !tbaa !5
  %idxprom1044 = sext i32 %711 to i64
  %arrayidx1045 = getelementptr inbounds [2 x i32], [2 x i32]* %uselongblock, i32 0, i64 %idxprom1044
  store i32 0, i32* %arrayidx1045, align 4, !tbaa !5
  br label %if.end.1114

if.else.1046:                                     ; preds = %if.else.1038
  %712 = bitcast float* %mn to i8*
  call void @llvm.lifetime.start(i64 4, i8* %712) #1
  %713 = bitcast float* %mx to i8*
  call void @llvm.lifetime.start(i64 4, i8* %713) #1
  %714 = bitcast float* %ma to i8*
  call void @llvm.lifetime.start(i64 4, i8* %714) #1
  store float 0.000000e+00, float* %ma, align 4, !tbaa !15
  %715 = bitcast float* %mb to i8*
  call void @llvm.lifetime.start(i64 4, i8* %715) #1
  store float 0.000000e+00, float* %mb, align 4, !tbaa !15
  %716 = bitcast float* %mc to i8*
  call void @llvm.lifetime.start(i64 4, i8* %716) #1
  store float 0.000000e+00, float* %mc, align 4, !tbaa !15
  store i32 64, i32* %j, align 4, !tbaa !5
  br label %for.cond.1052

for.cond.1052:                                    ; preds = %for.inc.1065, %if.else.1046
  %717 = load i32, i32* %j, align 4, !tbaa !5
  %cmp1053 = icmp slt i32 %717, 129
  br i1 %cmp1053, label %for.body.1055, label %for.end.1067

for.body.1055:                                    ; preds = %for.cond.1052
  %718 = load i32, i32* %j, align 4, !tbaa !5
  %idxprom1056 = sext i32 %718 to i64
  %arrayidx1057 = getelementptr inbounds [129 x float], [129 x float]* getelementptr inbounds ([3 x [129 x float]], [3 x [129 x float]]* @L3psycho_anal.energy_s, i32 0, i64 0), i32 0, i64 %idxprom1056
  %719 = load float, float* %arrayidx1057, align 4, !tbaa !15
  %720 = load float, float* %ma, align 4, !tbaa !15
  %add1058 = fadd float %720, %719
  store float %add1058, float* %ma, align 4, !tbaa !15
  %721 = load i32, i32* %j, align 4, !tbaa !5
  %idxprom1059 = sext i32 %721 to i64
  %arrayidx1060 = getelementptr inbounds [129 x float], [129 x float]* getelementptr inbounds ([3 x [129 x float]], [3 x [129 x float]]* @L3psycho_anal.energy_s, i32 0, i64 1), i32 0, i64 %idxprom1059
  %722 = load float, float* %arrayidx1060, align 4, !tbaa !15
  %723 = load float, float* %mb, align 4, !tbaa !15
  %add1061 = fadd float %723, %722
  store float %add1061, float* %mb, align 4, !tbaa !15
  %724 = load i32, i32* %j, align 4, !tbaa !5
  %idxprom1062 = sext i32 %724 to i64
  %arrayidx1063 = getelementptr inbounds [129 x float], [129 x float]* getelementptr inbounds ([3 x [129 x float]], [3 x [129 x float]]* @L3psycho_anal.energy_s, i32 0, i64 2), i32 0, i64 %idxprom1062
  %725 = load float, float* %arrayidx1063, align 4, !tbaa !15
  %726 = load float, float* %mc, align 4, !tbaa !15
  %add1064 = fadd float %726, %725
  store float %add1064, float* %mc, align 4, !tbaa !15
  br label %for.inc.1065

for.inc.1065:                                     ; preds = %for.body.1055
  %727 = load i32, i32* %j, align 4, !tbaa !5
  %inc1066 = add nsw i32 %727, 1
  store i32 %inc1066, i32* %j, align 4, !tbaa !5
  br label %for.cond.1052

for.end.1067:                                     ; preds = %for.cond.1052
  %728 = load float, float* %ma, align 4, !tbaa !15
  %729 = load float, float* %mb, align 4, !tbaa !15
  %cmp1068 = fcmp olt float %728, %729
  br i1 %cmp1068, label %cond.true.1070, label %cond.false.1071

cond.true.1070:                                   ; preds = %for.end.1067
  %730 = load float, float* %ma, align 4, !tbaa !15
  br label %cond.end.1072

cond.false.1071:                                  ; preds = %for.end.1067
  %731 = load float, float* %mb, align 4, !tbaa !15
  br label %cond.end.1072

cond.end.1072:                                    ; preds = %cond.false.1071, %cond.true.1070
  %cond1073 = phi float [ %730, %cond.true.1070 ], [ %731, %cond.false.1071 ]
  store float %cond1073, float* %mn, align 4, !tbaa !15
  %732 = load float, float* %mn, align 4, !tbaa !15
  %733 = load float, float* %mc, align 4, !tbaa !15
  %cmp1074 = fcmp olt float %732, %733
  br i1 %cmp1074, label %cond.true.1076, label %cond.false.1077

cond.true.1076:                                   ; preds = %cond.end.1072
  %734 = load float, float* %mn, align 4, !tbaa !15
  br label %cond.end.1078

cond.false.1077:                                  ; preds = %cond.end.1072
  %735 = load float, float* %mc, align 4, !tbaa !15
  br label %cond.end.1078

cond.end.1078:                                    ; preds = %cond.false.1077, %cond.true.1076
  %cond1079 = phi float [ %734, %cond.true.1076 ], [ %735, %cond.false.1077 ]
  store float %cond1079, float* %mn, align 4, !tbaa !15
  %736 = load float, float* %ma, align 4, !tbaa !15
  %737 = load float, float* %mb, align 4, !tbaa !15
  %cmp1080 = fcmp ogt float %736, %737
  br i1 %cmp1080, label %cond.true.1082, label %cond.false.1083

cond.true.1082:                                   ; preds = %cond.end.1078
  %738 = load float, float* %ma, align 4, !tbaa !15
  br label %cond.end.1084

cond.false.1083:                                  ; preds = %cond.end.1078
  %739 = load float, float* %mb, align 4, !tbaa !15
  br label %cond.end.1084

cond.end.1084:                                    ; preds = %cond.false.1083, %cond.true.1082
  %cond1085 = phi float [ %738, %cond.true.1082 ], [ %739, %cond.false.1083 ]
  store float %cond1085, float* %mx, align 4, !tbaa !15
  %740 = load float, float* %mx, align 4, !tbaa !15
  %741 = load float, float* %mc, align 4, !tbaa !15
  %cmp1086 = fcmp ogt float %740, %741
  br i1 %cmp1086, label %cond.true.1088, label %cond.false.1089

cond.true.1088:                                   ; preds = %cond.end.1084
  %742 = load float, float* %mx, align 4, !tbaa !15
  br label %cond.end.1090

cond.false.1089:                                  ; preds = %cond.end.1084
  %743 = load float, float* %mc, align 4, !tbaa !15
  br label %cond.end.1090

cond.end.1090:                                    ; preds = %cond.false.1089, %cond.true.1088
  %cond1091 = phi float [ %742, %cond.true.1088 ], [ %743, %cond.false.1089 ]
  store float %cond1091, float* %mx, align 4, !tbaa !15
  %744 = load i32, i32* %chn, align 4, !tbaa !5
  %idxprom1092 = sext i32 %744 to i64
  %arrayidx1093 = getelementptr inbounds [2 x i32], [2 x i32]* %uselongblock, i32 0, i64 %idxprom1092
  store i32 1, i32* %arrayidx1093, align 4, !tbaa !5
  %745 = load float, float* %mx, align 4, !tbaa !15
  %746 = load float, float* %mn, align 4, !tbaa !15
  %mul1094 = fmul float 3.000000e+01, %746
  %cmp1095 = fcmp ogt float %745, %mul1094
  br i1 %cmp1095, label %if.then.1097, label %if.else.1100

if.then.1097:                                     ; preds = %cond.end.1090
  %747 = load i32, i32* %chn, align 4, !tbaa !5
  %idxprom1098 = sext i32 %747 to i64
  %arrayidx1099 = getelementptr inbounds [2 x i32], [2 x i32]* %uselongblock, i32 0, i64 %idxprom1098
  store i32 0, i32* %arrayidx1099, align 4, !tbaa !5
  br label %if.end.1113

if.else.1100:                                     ; preds = %cond.end.1090
  %748 = load float, float* %mx, align 4, !tbaa !15
  %749 = load float, float* %mn, align 4, !tbaa !15
  %mul1101 = fmul float 1.000000e+01, %749
  %cmp1102 = fcmp ogt float %748, %mul1101
  br i1 %cmp1102, label %land.lhs.true.1104, label %if.end.1112

land.lhs.true.1104:                               ; preds = %if.else.1100
  %750 = load i32, i32* %chn, align 4, !tbaa !5
  %idxprom1105 = sext i32 %750 to i64
  %arrayidx1106 = getelementptr inbounds [4 x double], [4 x double]* @L3psycho_anal.pe, i32 0, i64 %idxprom1105
  %751 = load double, double* %arrayidx1106, align 8, !tbaa !7
  %cmp1107 = fcmp ogt double %751, 1.000000e+03
  br i1 %cmp1107, label %if.then.1109, label %if.end.1112

if.then.1109:                                     ; preds = %land.lhs.true.1104
  %752 = load i32, i32* %chn, align 4, !tbaa !5
  %idxprom1110 = sext i32 %752 to i64
  %arrayidx1111 = getelementptr inbounds [2 x i32], [2 x i32]* %uselongblock, i32 0, i64 %idxprom1110
  store i32 0, i32* %arrayidx1111, align 4, !tbaa !5
  br label %if.end.1112

if.end.1112:                                      ; preds = %if.then.1109, %land.lhs.true.1104, %if.else.1100
  br label %if.end.1113

if.end.1113:                                      ; preds = %if.end.1112, %if.then.1097
  %753 = bitcast float* %mc to i8*
  call void @llvm.lifetime.end(i64 4, i8* %753) #1
  %754 = bitcast float* %mb to i8*
  call void @llvm.lifetime.end(i64 4, i8* %754) #1
  %755 = bitcast float* %ma to i8*
  call void @llvm.lifetime.end(i64 4, i8* %755) #1
  %756 = bitcast float* %mx to i8*
  call void @llvm.lifetime.end(i64 4, i8* %756) #1
  %757 = bitcast float* %mn to i8*
  call void @llvm.lifetime.end(i64 4, i8* %757) #1
  br label %if.end.1114

if.end.1114:                                      ; preds = %if.end.1113, %if.then.1043
  br label %if.end.1115

if.end.1115:                                      ; preds = %if.end.1114, %if.then.1035
  br label %if.end.1116

if.end.1116:                                      ; preds = %if.end.1115, %for.end.1031
  store i32 0, i32* %sb, align 4, !tbaa !5
  br label %for.cond.1117

for.cond.1117:                                    ; preds = %for.inc.1181, %if.end.1116
  %758 = load i32, i32* %sb, align 4, !tbaa !5
  %cmp1118 = icmp slt i32 %758, 21
  br i1 %cmp1118, label %for.body.1120, label %for.end.1183

for.body.1120:                                    ; preds = %for.cond.1117
  %759 = bitcast double* %enn to i8*
  call void @llvm.lifetime.start(i64 8, i8* %759) #1
  %760 = load i32, i32* %sb, align 4, !tbaa !5
  %idxprom1122 = sext i32 %760 to i64
  %arrayidx1123 = getelementptr inbounds [21 x double], [21 x double]* @L3psycho_anal.w1_l, i32 0, i64 %idxprom1122
  %761 = load double, double* %arrayidx1123, align 8, !tbaa !7
  %762 = load i32, i32* %sb, align 4, !tbaa !5
  %idxprom1124 = sext i32 %762 to i64
  %arrayidx1125 = getelementptr inbounds [21 x i32], [21 x i32]* @L3psycho_anal.bu_l, i32 0, i64 %idxprom1124
  %763 = load i32, i32* %arrayidx1125, align 4, !tbaa !5
  %idxprom1126 = sext i32 %763 to i64
  %arrayidx1127 = getelementptr inbounds [63 x double], [63 x double]* @L3psycho_anal.eb, i32 0, i64 %idxprom1126
  %764 = load double, double* %arrayidx1127, align 8, !tbaa !7
  %mul1128 = fmul double %761, %764
  %765 = load i32, i32* %sb, align 4, !tbaa !5
  %idxprom1129 = sext i32 %765 to i64
  %arrayidx1130 = getelementptr inbounds [21 x double], [21 x double]* @L3psycho_anal.w2_l, i32 0, i64 %idxprom1129
  %766 = load double, double* %arrayidx1130, align 8, !tbaa !7
  %767 = load i32, i32* %sb, align 4, !tbaa !5
  %idxprom1131 = sext i32 %767 to i64
  %arrayidx1132 = getelementptr inbounds [21 x i32], [21 x i32]* @L3psycho_anal.bo_l, i32 0, i64 %idxprom1131
  %768 = load i32, i32* %arrayidx1132, align 4, !tbaa !5
  %idxprom1133 = sext i32 %768 to i64
  %arrayidx1134 = getelementptr inbounds [63 x double], [63 x double]* @L3psycho_anal.eb, i32 0, i64 %idxprom1133
  %769 = load double, double* %arrayidx1134, align 8, !tbaa !7
  %mul1135 = fmul double %766, %769
  %add1136 = fadd double %mul1128, %mul1135
  store double %add1136, double* %enn, align 8, !tbaa !7
  %770 = bitcast double* %thmm to i8*
  call void @llvm.lifetime.start(i64 8, i8* %770) #1
  %771 = load i32, i32* %sb, align 4, !tbaa !5
  %idxprom1138 = sext i32 %771 to i64
  %arrayidx1139 = getelementptr inbounds [21 x double], [21 x double]* @L3psycho_anal.w1_l, i32 0, i64 %idxprom1138
  %772 = load double, double* %arrayidx1139, align 8, !tbaa !7
  %773 = load i32, i32* %sb, align 4, !tbaa !5
  %idxprom1140 = sext i32 %773 to i64
  %arrayidx1141 = getelementptr inbounds [21 x i32], [21 x i32]* @L3psycho_anal.bu_l, i32 0, i64 %idxprom1140
  %774 = load i32, i32* %arrayidx1141, align 4, !tbaa !5
  %idxprom1142 = sext i32 %774 to i64
  %arrayidx1143 = getelementptr inbounds [63 x double], [63 x double]* @L3psycho_anal.thr, i32 0, i64 %idxprom1142
  %775 = load double, double* %arrayidx1143, align 8, !tbaa !7
  %mul1144 = fmul double %772, %775
  %776 = load i32, i32* %sb, align 4, !tbaa !5
  %idxprom1145 = sext i32 %776 to i64
  %arrayidx1146 = getelementptr inbounds [21 x double], [21 x double]* @L3psycho_anal.w2_l, i32 0, i64 %idxprom1145
  %777 = load double, double* %arrayidx1146, align 8, !tbaa !7
  %778 = load i32, i32* %sb, align 4, !tbaa !5
  %idxprom1147 = sext i32 %778 to i64
  %arrayidx1148 = getelementptr inbounds [21 x i32], [21 x i32]* @L3psycho_anal.bo_l, i32 0, i64 %idxprom1147
  %779 = load i32, i32* %arrayidx1148, align 4, !tbaa !5
  %idxprom1149 = sext i32 %779 to i64
  %arrayidx1150 = getelementptr inbounds [63 x double], [63 x double]* @L3psycho_anal.thr, i32 0, i64 %idxprom1149
  %780 = load double, double* %arrayidx1150, align 8, !tbaa !7
  %mul1151 = fmul double %777, %780
  %add1152 = fadd double %mul1144, %mul1151
  store double %add1152, double* %thmm, align 8, !tbaa !7
  %781 = load i32, i32* %sb, align 4, !tbaa !5
  %idxprom1153 = sext i32 %781 to i64
  %arrayidx1154 = getelementptr inbounds [21 x i32], [21 x i32]* @L3psycho_anal.bu_l, i32 0, i64 %idxprom1153
  %782 = load i32, i32* %arrayidx1154, align 4, !tbaa !5
  %add1155 = add nsw i32 %782, 1
  store i32 %add1155, i32* %b, align 4, !tbaa !5
  br label %for.cond.1156

for.cond.1156:                                    ; preds = %for.inc.1168, %for.body.1120
  %783 = load i32, i32* %b, align 4, !tbaa !5
  %784 = load i32, i32* %sb, align 4, !tbaa !5
  %idxprom1157 = sext i32 %784 to i64
  %arrayidx1158 = getelementptr inbounds [21 x i32], [21 x i32]* @L3psycho_anal.bo_l, i32 0, i64 %idxprom1157
  %785 = load i32, i32* %arrayidx1158, align 4, !tbaa !5
  %cmp1159 = icmp slt i32 %783, %785
  br i1 %cmp1159, label %for.body.1161, label %for.end.1170

for.body.1161:                                    ; preds = %for.cond.1156
  %786 = load i32, i32* %b, align 4, !tbaa !5
  %idxprom1162 = sext i32 %786 to i64
  %arrayidx1163 = getelementptr inbounds [63 x double], [63 x double]* @L3psycho_anal.eb, i32 0, i64 %idxprom1162
  %787 = load double, double* %arrayidx1163, align 8, !tbaa !7
  %788 = load double, double* %enn, align 8, !tbaa !7
  %add1164 = fadd double %788, %787
  store double %add1164, double* %enn, align 8, !tbaa !7
  %789 = load i32, i32* %b, align 4, !tbaa !5
  %idxprom1165 = sext i32 %789 to i64
  %arrayidx1166 = getelementptr inbounds [63 x double], [63 x double]* @L3psycho_anal.thr, i32 0, i64 %idxprom1165
  %790 = load double, double* %arrayidx1166, align 8, !tbaa !7
  %791 = load double, double* %thmm, align 8, !tbaa !7
  %add1167 = fadd double %791, %790
  store double %add1167, double* %thmm, align 8, !tbaa !7
  br label %for.inc.1168

for.inc.1168:                                     ; preds = %for.body.1161
  %792 = load i32, i32* %b, align 4, !tbaa !5
  %inc1169 = add nsw i32 %792, 1
  store i32 %inc1169, i32* %b, align 4, !tbaa !5
  br label %for.cond.1156

for.end.1170:                                     ; preds = %for.cond.1156
  %793 = load double, double* %enn, align 8, !tbaa !7
  %794 = load i32, i32* %sb, align 4, !tbaa !5
  %idxprom1171 = sext i32 %794 to i64
  %795 = load i32, i32* %chn, align 4, !tbaa !5
  %idxprom1172 = sext i32 %795 to i64
  %arrayidx1173 = getelementptr inbounds [4 x %struct.III_psy_xmin], [4 x %struct.III_psy_xmin]* @L3psycho_anal.en, i32 0, i64 %idxprom1172
  %l1174 = getelementptr inbounds %struct.III_psy_xmin, %struct.III_psy_xmin* %arrayidx1173, i32 0, i32 0
  %arrayidx1175 = getelementptr inbounds [22 x double], [22 x double]* %l1174, i32 0, i64 %idxprom1171
  store double %793, double* %arrayidx1175, align 8, !tbaa !7
  %796 = load double, double* %thmm, align 8, !tbaa !7
  %797 = load i32, i32* %sb, align 4, !tbaa !5
  %idxprom1176 = sext i32 %797 to i64
  %798 = load i32, i32* %chn, align 4, !tbaa !5
  %idxprom1177 = sext i32 %798 to i64
  %arrayidx1178 = getelementptr inbounds [4 x %struct.III_psy_xmin], [4 x %struct.III_psy_xmin]* @L3psycho_anal.thm, i32 0, i64 %idxprom1177
  %l1179 = getelementptr inbounds %struct.III_psy_xmin, %struct.III_psy_xmin* %arrayidx1178, i32 0, i32 0
  %arrayidx1180 = getelementptr inbounds [22 x double], [22 x double]* %l1179, i32 0, i64 %idxprom1176
  store double %796, double* %arrayidx1180, align 8, !tbaa !7
  %799 = bitcast double* %thmm to i8*
  call void @llvm.lifetime.end(i64 8, i8* %799) #1
  %800 = bitcast double* %enn to i8*
  call void @llvm.lifetime.end(i64 8, i8* %800) #1
  br label %for.inc.1181

for.inc.1181:                                     ; preds = %for.end.1170
  %801 = load i32, i32* %sb, align 4, !tbaa !5
  %inc1182 = add nsw i32 %801, 1
  store i32 %inc1182, i32* %sb, align 4, !tbaa !5
  br label %for.cond.1117

for.end.1183:                                     ; preds = %for.cond.1117
  store i32 0, i32* %sblock, align 4, !tbaa !5
  br label %for.cond.1184

for.cond.1184:                                    ; preds = %for.inc.1336, %for.end.1183
  %802 = load i32, i32* %sblock, align 4, !tbaa !5
  %cmp1185 = icmp slt i32 %802, 3
  br i1 %cmp1185, label %for.body.1187, label %for.end.1338

for.body.1187:                                    ; preds = %for.cond.1184
  store i32 0, i32* %j, align 4, !tbaa !5
  store i32 0, i32* %b, align 4, !tbaa !5
  br label %for.cond.1188

for.cond.1188:                                    ; preds = %for.inc.1219, %for.body.1187
  %803 = load i32, i32* %b, align 4, !tbaa !5
  %804 = load i32, i32* @L3psycho_anal.npart_s_orig, align 4, !tbaa !5
  %cmp1189 = icmp slt i32 %803, %804
  br i1 %cmp1189, label %for.body.1191, label %for.end.1221

for.body.1191:                                    ; preds = %for.cond.1188
  %805 = bitcast i32* %i1193 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %805) #1
  %806 = bitcast float* %ecb1195 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %806) #1
  %807 = load i32, i32* %j, align 4, !tbaa !5
  %inc1196 = add nsw i32 %807, 1
  store i32 %inc1196, i32* %j, align 4, !tbaa !5
  %idxprom1197 = sext i32 %807 to i64
  %808 = load i32, i32* %sblock, align 4, !tbaa !5
  %idxprom1198 = sext i32 %808 to i64
  %arrayidx1199 = getelementptr inbounds [3 x [129 x float]], [3 x [129 x float]]* @L3psycho_anal.energy_s, i32 0, i64 %idxprom1198
  %arrayidx1200 = getelementptr inbounds [129 x float], [129 x float]* %arrayidx1199, i32 0, i64 %idxprom1197
  %809 = load float, float* %arrayidx1200, align 4, !tbaa !15
  store float %809, float* %ecb1195, align 4, !tbaa !15
  %810 = load i32, i32* %b, align 4, !tbaa !5
  %idxprom1201 = sext i32 %810 to i64
  %arrayidx1202 = getelementptr inbounds [63 x i32], [63 x i32]* @L3psycho_anal.numlines_s, i32 0, i64 %idxprom1201
  %811 = load i32, i32* %arrayidx1202, align 4, !tbaa !5
  store i32 %811, i32* %i1193, align 4, !tbaa !5
  br label %for.cond.1203

for.cond.1203:                                    ; preds = %for.inc.1213, %for.body.1191
  %812 = load i32, i32* %i1193, align 4, !tbaa !5
  %cmp1204 = icmp sgt i32 %812, 0
  br i1 %cmp1204, label %for.body.1206, label %for.end.1215

for.body.1206:                                    ; preds = %for.cond.1203
  %813 = load i32, i32* %j, align 4, !tbaa !5
  %inc1207 = add nsw i32 %813, 1
  store i32 %inc1207, i32* %j, align 4, !tbaa !5
  %idxprom1208 = sext i32 %813 to i64
  %814 = load i32, i32* %sblock, align 4, !tbaa !5
  %idxprom1209 = sext i32 %814 to i64
  %arrayidx1210 = getelementptr inbounds [3 x [129 x float]], [3 x [129 x float]]* @L3psycho_anal.energy_s, i32 0, i64 %idxprom1209
  %arrayidx1211 = getelementptr inbounds [129 x float], [129 x float]* %arrayidx1210, i32 0, i64 %idxprom1208
  %815 = load float, float* %arrayidx1211, align 4, !tbaa !15
  %816 = load float, float* %ecb1195, align 4, !tbaa !15
  %add1212 = fadd float %816, %815
  store float %add1212, float* %ecb1195, align 4, !tbaa !15
  br label %for.inc.1213

for.inc.1213:                                     ; preds = %for.body.1206
  %817 = load i32, i32* %i1193, align 4, !tbaa !5
  %dec1214 = add nsw i32 %817, -1
  store i32 %dec1214, i32* %i1193, align 4, !tbaa !5
  br label %for.cond.1203

for.end.1215:                                     ; preds = %for.cond.1203
  %818 = load float, float* %ecb1195, align 4, !tbaa !15
  %conv1216 = fpext float %818 to double
  %819 = load i32, i32* %b, align 4, !tbaa !5
  %idxprom1217 = sext i32 %819 to i64
  %arrayidx1218 = getelementptr inbounds [63 x double], [63 x double]* @L3psycho_anal.eb, i32 0, i64 %idxprom1217
  store double %conv1216, double* %arrayidx1218, align 8, !tbaa !7
  %820 = bitcast float* %ecb1195 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %820) #1
  %821 = bitcast i32* %i1193 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %821) #1
  br label %for.inc.1219

for.inc.1219:                                     ; preds = %for.end.1215
  %822 = load i32, i32* %b, align 4, !tbaa !5
  %inc1220 = add nsw i32 %822, 1
  store i32 %inc1220, i32* %b, align 4, !tbaa !5
  br label %for.cond.1188

for.end.1221:                                     ; preds = %for.cond.1188
  store i32 0, i32* %b, align 4, !tbaa !5
  br label %for.cond.1222

for.cond.1222:                                    ; preds = %for.inc.1261, %for.end.1221
  %823 = load i32, i32* %b, align 4, !tbaa !5
  %824 = load i32, i32* @L3psycho_anal.npart_s, align 4, !tbaa !5
  %cmp1223 = icmp slt i32 %823, %824
  br i1 %cmp1223, label %for.body.1225, label %for.end.1263

for.body.1225:                                    ; preds = %for.cond.1222
  %825 = bitcast double* %ecb1227 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %825) #1
  store double 0.000000e+00, double* %ecb1227, align 8, !tbaa !7
  %826 = load i32, i32* %b, align 4, !tbaa !5
  %idxprom1228 = sext i32 %826 to i64
  %arrayidx1229 = getelementptr inbounds [63 x [2 x i32]], [63 x [2 x i32]]* @L3psycho_anal.s3ind_s, i32 0, i64 %idxprom1228
  %arrayidx1230 = getelementptr inbounds [2 x i32], [2 x i32]* %arrayidx1229, i32 0, i64 0
  %827 = load i32, i32* %arrayidx1230, align 4, !tbaa !5
  store i32 %827, i32* %k, align 4, !tbaa !5
  br label %for.cond.1231

for.cond.1231:                                    ; preds = %for.inc.1246, %for.body.1225
  %828 = load i32, i32* %k, align 4, !tbaa !5
  %829 = load i32, i32* %b, align 4, !tbaa !5
  %idxprom1232 = sext i32 %829 to i64
  %arrayidx1233 = getelementptr inbounds [63 x [2 x i32]], [63 x [2 x i32]]* @L3psycho_anal.s3ind_s, i32 0, i64 %idxprom1232
  %arrayidx1234 = getelementptr inbounds [2 x i32], [2 x i32]* %arrayidx1233, i32 0, i64 1
  %830 = load i32, i32* %arrayidx1234, align 4, !tbaa !5
  %cmp1235 = icmp sle i32 %828, %830
  br i1 %cmp1235, label %for.body.1237, label %for.end.1248

for.body.1237:                                    ; preds = %for.cond.1231
  %831 = load i32, i32* %k, align 4, !tbaa !5
  %idxprom1238 = sext i32 %831 to i64
  %832 = load i32, i32* %b, align 4, !tbaa !5
  %idxprom1239 = sext i32 %832 to i64
  %arrayidx1240 = getelementptr inbounds [64 x [64 x double]], [64 x [64 x double]]* @L3psycho_anal.s3_s, i32 0, i64 %idxprom1239
  %arrayidx1241 = getelementptr inbounds [64 x double], [64 x double]* %arrayidx1240, i32 0, i64 %idxprom1238
  %833 = load double, double* %arrayidx1241, align 8, !tbaa !7
  %834 = load i32, i32* %k, align 4, !tbaa !5
  %idxprom1242 = sext i32 %834 to i64
  %arrayidx1243 = getelementptr inbounds [63 x double], [63 x double]* @L3psycho_anal.eb, i32 0, i64 %idxprom1242
  %835 = load double, double* %arrayidx1243, align 8, !tbaa !7
  %mul1244 = fmul double %833, %835
  %836 = load double, double* %ecb1227, align 8, !tbaa !7
  %add1245 = fadd double %836, %mul1244
  store double %add1245, double* %ecb1227, align 8, !tbaa !7
  br label %for.inc.1246

for.inc.1246:                                     ; preds = %for.body.1237
  %837 = load i32, i32* %k, align 4, !tbaa !5
  %inc1247 = add nsw i32 %837, 1
  store i32 %inc1247, i32* %k, align 4, !tbaa !5
  br label %for.cond.1231

for.end.1248:                                     ; preds = %for.cond.1231
  %838 = load i32, i32* %b, align 4, !tbaa !5
  %idxprom1249 = sext i32 %838 to i64
  %arrayidx1250 = getelementptr inbounds [63 x double], [63 x double]* @L3psycho_anal.qthr_s, i32 0, i64 %idxprom1249
  %839 = load double, double* %arrayidx1250, align 8, !tbaa !7
  %840 = load double, double* %ecb1227, align 8, !tbaa !7
  %cmp1251 = fcmp ogt double %839, %840
  br i1 %cmp1251, label %cond.true.1253, label %cond.false.1256

cond.true.1253:                                   ; preds = %for.end.1248
  %841 = load i32, i32* %b, align 4, !tbaa !5
  %idxprom1254 = sext i32 %841 to i64
  %arrayidx1255 = getelementptr inbounds [63 x double], [63 x double]* @L3psycho_anal.qthr_s, i32 0, i64 %idxprom1254
  %842 = load double, double* %arrayidx1255, align 8, !tbaa !7
  br label %cond.end.1257

cond.false.1256:                                  ; preds = %for.end.1248
  %843 = load double, double* %ecb1227, align 8, !tbaa !7
  br label %cond.end.1257

cond.end.1257:                                    ; preds = %cond.false.1256, %cond.true.1253
  %cond1258 = phi double [ %842, %cond.true.1253 ], [ %843, %cond.false.1256 ]
  %844 = load i32, i32* %b, align 4, !tbaa !5
  %idxprom1259 = sext i32 %844 to i64
  %arrayidx1260 = getelementptr inbounds [63 x double], [63 x double]* @L3psycho_anal.thr, i32 0, i64 %idxprom1259
  store double %cond1258, double* %arrayidx1260, align 8, !tbaa !7
  %845 = bitcast double* %ecb1227 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %845) #1
  br label %for.inc.1261

for.inc.1261:                                     ; preds = %cond.end.1257
  %846 = load i32, i32* %b, align 4, !tbaa !5
  %inc1262 = add nsw i32 %846, 1
  store i32 %inc1262, i32* %b, align 4, !tbaa !5
  br label %for.cond.1222

for.end.1263:                                     ; preds = %for.cond.1222
  store i32 0, i32* %sb, align 4, !tbaa !5
  br label %for.cond.1264

for.cond.1264:                                    ; preds = %for.inc.1333, %for.end.1263
  %847 = load i32, i32* %sb, align 4, !tbaa !5
  %cmp1265 = icmp slt i32 %847, 12
  br i1 %cmp1265, label %for.body.1267, label %for.end.1335

for.body.1267:                                    ; preds = %for.cond.1264
  %848 = bitcast double* %enn1269 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %848) #1
  %849 = load i32, i32* %sb, align 4, !tbaa !5
  %idxprom1270 = sext i32 %849 to i64
  %arrayidx1271 = getelementptr inbounds [12 x double], [12 x double]* @L3psycho_anal.w1_s, i32 0, i64 %idxprom1270
  %850 = load double, double* %arrayidx1271, align 8, !tbaa !7
  %851 = load i32, i32* %sb, align 4, !tbaa !5
  %idxprom1272 = sext i32 %851 to i64
  %arrayidx1273 = getelementptr inbounds [12 x i32], [12 x i32]* @L3psycho_anal.bu_s, i32 0, i64 %idxprom1272
  %852 = load i32, i32* %arrayidx1273, align 4, !tbaa !5
  %idxprom1274 = sext i32 %852 to i64
  %arrayidx1275 = getelementptr inbounds [63 x double], [63 x double]* @L3psycho_anal.eb, i32 0, i64 %idxprom1274
  %853 = load double, double* %arrayidx1275, align 8, !tbaa !7
  %mul1276 = fmul double %850, %853
  %854 = load i32, i32* %sb, align 4, !tbaa !5
  %idxprom1277 = sext i32 %854 to i64
  %arrayidx1278 = getelementptr inbounds [12 x double], [12 x double]* @L3psycho_anal.w2_s, i32 0, i64 %idxprom1277
  %855 = load double, double* %arrayidx1278, align 8, !tbaa !7
  %856 = load i32, i32* %sb, align 4, !tbaa !5
  %idxprom1279 = sext i32 %856 to i64
  %arrayidx1280 = getelementptr inbounds [12 x i32], [12 x i32]* @L3psycho_anal.bo_s, i32 0, i64 %idxprom1279
  %857 = load i32, i32* %arrayidx1280, align 4, !tbaa !5
  %idxprom1281 = sext i32 %857 to i64
  %arrayidx1282 = getelementptr inbounds [63 x double], [63 x double]* @L3psycho_anal.eb, i32 0, i64 %idxprom1281
  %858 = load double, double* %arrayidx1282, align 8, !tbaa !7
  %mul1283 = fmul double %855, %858
  %add1284 = fadd double %mul1276, %mul1283
  store double %add1284, double* %enn1269, align 8, !tbaa !7
  %859 = bitcast double* %thmm1286 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %859) #1
  %860 = load i32, i32* %sb, align 4, !tbaa !5
  %idxprom1287 = sext i32 %860 to i64
  %arrayidx1288 = getelementptr inbounds [12 x double], [12 x double]* @L3psycho_anal.w1_s, i32 0, i64 %idxprom1287
  %861 = load double, double* %arrayidx1288, align 8, !tbaa !7
  %862 = load i32, i32* %sb, align 4, !tbaa !5
  %idxprom1289 = sext i32 %862 to i64
  %arrayidx1290 = getelementptr inbounds [12 x i32], [12 x i32]* @L3psycho_anal.bu_s, i32 0, i64 %idxprom1289
  %863 = load i32, i32* %arrayidx1290, align 4, !tbaa !5
  %idxprom1291 = sext i32 %863 to i64
  %arrayidx1292 = getelementptr inbounds [63 x double], [63 x double]* @L3psycho_anal.thr, i32 0, i64 %idxprom1291
  %864 = load double, double* %arrayidx1292, align 8, !tbaa !7
  %mul1293 = fmul double %861, %864
  %865 = load i32, i32* %sb, align 4, !tbaa !5
  %idxprom1294 = sext i32 %865 to i64
  %arrayidx1295 = getelementptr inbounds [12 x double], [12 x double]* @L3psycho_anal.w2_s, i32 0, i64 %idxprom1294
  %866 = load double, double* %arrayidx1295, align 8, !tbaa !7
  %867 = load i32, i32* %sb, align 4, !tbaa !5
  %idxprom1296 = sext i32 %867 to i64
  %arrayidx1297 = getelementptr inbounds [12 x i32], [12 x i32]* @L3psycho_anal.bo_s, i32 0, i64 %idxprom1296
  %868 = load i32, i32* %arrayidx1297, align 4, !tbaa !5
  %idxprom1298 = sext i32 %868 to i64
  %arrayidx1299 = getelementptr inbounds [63 x double], [63 x double]* @L3psycho_anal.thr, i32 0, i64 %idxprom1298
  %869 = load double, double* %arrayidx1299, align 8, !tbaa !7
  %mul1300 = fmul double %866, %869
  %add1301 = fadd double %mul1293, %mul1300
  store double %add1301, double* %thmm1286, align 8, !tbaa !7
  %870 = load i32, i32* %sb, align 4, !tbaa !5
  %idxprom1302 = sext i32 %870 to i64
  %arrayidx1303 = getelementptr inbounds [12 x i32], [12 x i32]* @L3psycho_anal.bu_s, i32 0, i64 %idxprom1302
  %871 = load i32, i32* %arrayidx1303, align 4, !tbaa !5
  %add1304 = add nsw i32 %871, 1
  store i32 %add1304, i32* %b, align 4, !tbaa !5
  br label %for.cond.1305

for.cond.1305:                                    ; preds = %for.inc.1317, %for.body.1267
  %872 = load i32, i32* %b, align 4, !tbaa !5
  %873 = load i32, i32* %sb, align 4, !tbaa !5
  %idxprom1306 = sext i32 %873 to i64
  %arrayidx1307 = getelementptr inbounds [12 x i32], [12 x i32]* @L3psycho_anal.bo_s, i32 0, i64 %idxprom1306
  %874 = load i32, i32* %arrayidx1307, align 4, !tbaa !5
  %cmp1308 = icmp slt i32 %872, %874
  br i1 %cmp1308, label %for.body.1310, label %for.end.1319

for.body.1310:                                    ; preds = %for.cond.1305
  %875 = load i32, i32* %b, align 4, !tbaa !5
  %idxprom1311 = sext i32 %875 to i64
  %arrayidx1312 = getelementptr inbounds [63 x double], [63 x double]* @L3psycho_anal.eb, i32 0, i64 %idxprom1311
  %876 = load double, double* %arrayidx1312, align 8, !tbaa !7
  %877 = load double, double* %enn1269, align 8, !tbaa !7
  %add1313 = fadd double %877, %876
  store double %add1313, double* %enn1269, align 8, !tbaa !7
  %878 = load i32, i32* %b, align 4, !tbaa !5
  %idxprom1314 = sext i32 %878 to i64
  %arrayidx1315 = getelementptr inbounds [63 x double], [63 x double]* @L3psycho_anal.thr, i32 0, i64 %idxprom1314
  %879 = load double, double* %arrayidx1315, align 8, !tbaa !7
  %880 = load double, double* %thmm1286, align 8, !tbaa !7
  %add1316 = fadd double %880, %879
  store double %add1316, double* %thmm1286, align 8, !tbaa !7
  br label %for.inc.1317

for.inc.1317:                                     ; preds = %for.body.1310
  %881 = load i32, i32* %b, align 4, !tbaa !5
  %inc1318 = add nsw i32 %881, 1
  store i32 %inc1318, i32* %b, align 4, !tbaa !5
  br label %for.cond.1305

for.end.1319:                                     ; preds = %for.cond.1305
  %882 = load double, double* %enn1269, align 8, !tbaa !7
  %883 = load i32, i32* %sblock, align 4, !tbaa !5
  %idxprom1320 = sext i32 %883 to i64
  %884 = load i32, i32* %sb, align 4, !tbaa !5
  %idxprom1321 = sext i32 %884 to i64
  %885 = load i32, i32* %chn, align 4, !tbaa !5
  %idxprom1322 = sext i32 %885 to i64
  %arrayidx1323 = getelementptr inbounds [4 x %struct.III_psy_xmin], [4 x %struct.III_psy_xmin]* @L3psycho_anal.en, i32 0, i64 %idxprom1322
  %s = getelementptr inbounds %struct.III_psy_xmin, %struct.III_psy_xmin* %arrayidx1323, i32 0, i32 1
  %arrayidx1324 = getelementptr inbounds [13 x [3 x double]], [13 x [3 x double]]* %s, i32 0, i64 %idxprom1321
  %arrayidx1325 = getelementptr inbounds [3 x double], [3 x double]* %arrayidx1324, i32 0, i64 %idxprom1320
  store double %882, double* %arrayidx1325, align 8, !tbaa !7
  %886 = load double, double* %thmm1286, align 8, !tbaa !7
  %887 = load i32, i32* %sblock, align 4, !tbaa !5
  %idxprom1326 = sext i32 %887 to i64
  %888 = load i32, i32* %sb, align 4, !tbaa !5
  %idxprom1327 = sext i32 %888 to i64
  %889 = load i32, i32* %chn, align 4, !tbaa !5
  %idxprom1328 = sext i32 %889 to i64
  %arrayidx1329 = getelementptr inbounds [4 x %struct.III_psy_xmin], [4 x %struct.III_psy_xmin]* @L3psycho_anal.thm, i32 0, i64 %idxprom1328
  %s1330 = getelementptr inbounds %struct.III_psy_xmin, %struct.III_psy_xmin* %arrayidx1329, i32 0, i32 1
  %arrayidx1331 = getelementptr inbounds [13 x [3 x double]], [13 x [3 x double]]* %s1330, i32 0, i64 %idxprom1327
  %arrayidx1332 = getelementptr inbounds [3 x double], [3 x double]* %arrayidx1331, i32 0, i64 %idxprom1326
  store double %886, double* %arrayidx1332, align 8, !tbaa !7
  %890 = bitcast double* %thmm1286 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %890) #1
  %891 = bitcast double* %enn1269 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %891) #1
  br label %for.inc.1333

for.inc.1333:                                     ; preds = %for.end.1319
  %892 = load i32, i32* %sb, align 4, !tbaa !5
  %inc1334 = add nsw i32 %892, 1
  store i32 %inc1334, i32* %sb, align 4, !tbaa !5
  br label %for.cond.1264

for.end.1335:                                     ; preds = %for.cond.1264
  br label %for.inc.1336

for.inc.1336:                                     ; preds = %for.end.1335
  %893 = load i32, i32* %sblock, align 4, !tbaa !5
  %inc1337 = add nsw i32 %893, 1
  store i32 %inc1337, i32* %sblock, align 4, !tbaa !5
  br label %for.cond.1184

for.end.1338:                                     ; preds = %for.cond.1184
  br label %for.inc.1339

for.inc.1339:                                     ; preds = %for.end.1338
  %894 = load i32, i32* %chn, align 4, !tbaa !5
  %inc1340 = add nsw i32 %894, 1
  store i32 %inc1340, i32* %chn, align 4, !tbaa !5
  br label %for.cond.302

for.end.1341:                                     ; preds = %for.cond.302
  %895 = load i32, i32* %numchn, align 4, !tbaa !5
  %cmp1342 = icmp eq i32 %895, 4
  br i1 %cmp1342, label %if.then.1344, label %if.end.1690

if.then.1344:                                     ; preds = %for.end.1341
  %896 = bitcast double* %rside to i8*
  call void @llvm.lifetime.start(i64 8, i8* %896) #1
  %897 = bitcast double* %rmid to i8*
  call void @llvm.lifetime.start(i64 8, i8* %897) #1
  %898 = bitcast double* %mld1348 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %898) #1
  %899 = bitcast i32* %chmid to i8*
  call void @llvm.lifetime.start(i64 4, i8* %899) #1
  store i32 2, i32* %chmid, align 4, !tbaa !5
  %900 = bitcast i32* %chside to i8*
  call void @llvm.lifetime.start(i64 4, i8* %900) #1
  store i32 3, i32* %chside, align 4, !tbaa !5
  store i32 0, i32* %sb, align 4, !tbaa !5
  br label %for.cond.1351

for.cond.1351:                                    ; preds = %for.inc.1494, %if.then.1344
  %901 = load i32, i32* %sb, align 4, !tbaa !5
  %cmp1352 = icmp slt i32 %901, 21
  br i1 %cmp1352, label %for.body.1354, label %for.end.1496

for.body.1354:                                    ; preds = %for.cond.1351
  %902 = load i32, i32* %sb, align 4, !tbaa !5
  %idxprom1355 = sext i32 %902 to i64
  %arrayidx1356 = getelementptr inbounds [22 x double], [22 x double]* getelementptr inbounds ([4 x %struct.III_psy_xmin], [4 x %struct.III_psy_xmin]* @L3psycho_anal.thm, i32 0, i64 0, i32 0), i32 0, i64 %idxprom1355
  %903 = load double, double* %arrayidx1356, align 8, !tbaa !7
  %904 = load i32, i32* %sb, align 4, !tbaa !5
  %idxprom1357 = sext i32 %904 to i64
  %arrayidx1358 = getelementptr inbounds [22 x double], [22 x double]* getelementptr inbounds ([4 x %struct.III_psy_xmin], [4 x %struct.III_psy_xmin]* @L3psycho_anal.thm, i32 0, i64 1, i32 0), i32 0, i64 %idxprom1357
  %905 = load double, double* %arrayidx1358, align 8, !tbaa !7
  %mul1359 = fmul double 1.580000e+00, %905
  %cmp1360 = fcmp ole double %903, %mul1359
  br i1 %cmp1360, label %land.lhs.true.1362, label %if.end.1493

land.lhs.true.1362:                               ; preds = %for.body.1354
  %906 = load i32, i32* %sb, align 4, !tbaa !5
  %idxprom1363 = sext i32 %906 to i64
  %arrayidx1364 = getelementptr inbounds [22 x double], [22 x double]* getelementptr inbounds ([4 x %struct.III_psy_xmin], [4 x %struct.III_psy_xmin]* @L3psycho_anal.thm, i32 0, i64 1, i32 0), i32 0, i64 %idxprom1363
  %907 = load double, double* %arrayidx1364, align 8, !tbaa !7
  %908 = load i32, i32* %sb, align 4, !tbaa !5
  %idxprom1365 = sext i32 %908 to i64
  %arrayidx1366 = getelementptr inbounds [22 x double], [22 x double]* getelementptr inbounds ([4 x %struct.III_psy_xmin], [4 x %struct.III_psy_xmin]* @L3psycho_anal.thm, i32 0, i64 0, i32 0), i32 0, i64 %idxprom1365
  %909 = load double, double* %arrayidx1366, align 8, !tbaa !7
  %mul1367 = fmul double 1.580000e+00, %909
  %cmp1368 = fcmp ole double %907, %mul1367
  br i1 %cmp1368, label %if.then.1370, label %if.end.1493

if.then.1370:                                     ; preds = %land.lhs.true.1362
  %910 = load i32, i32* %sb, align 4, !tbaa !5
  %idxprom1371 = sext i32 %910 to i64
  %arrayidx1372 = getelementptr inbounds [21 x double], [21 x double]* @L3psycho_anal.mld_l, i32 0, i64 %idxprom1371
  %911 = load double, double* %arrayidx1372, align 8, !tbaa !7
  %912 = load i32, i32* %sb, align 4, !tbaa !5
  %idxprom1373 = sext i32 %912 to i64
  %913 = load i32, i32* %chside, align 4, !tbaa !5
  %idxprom1374 = sext i32 %913 to i64
  %arrayidx1375 = getelementptr inbounds [4 x %struct.III_psy_xmin], [4 x %struct.III_psy_xmin]* @L3psycho_anal.en, i32 0, i64 %idxprom1374
  %l1376 = getelementptr inbounds %struct.III_psy_xmin, %struct.III_psy_xmin* %arrayidx1375, i32 0, i32 0
  %arrayidx1377 = getelementptr inbounds [22 x double], [22 x double]* %l1376, i32 0, i64 %idxprom1373
  %914 = load double, double* %arrayidx1377, align 8, !tbaa !7
  %mul1378 = fmul double %911, %914
  store double %mul1378, double* %mld1348, align 8, !tbaa !7
  %915 = load i32, i32* %sb, align 4, !tbaa !5
  %idxprom1379 = sext i32 %915 to i64
  %916 = load i32, i32* %chmid, align 4, !tbaa !5
  %idxprom1380 = sext i32 %916 to i64
  %arrayidx1381 = getelementptr inbounds [4 x %struct.III_psy_xmin], [4 x %struct.III_psy_xmin]* @L3psycho_anal.thm, i32 0, i64 %idxprom1380
  %l1382 = getelementptr inbounds %struct.III_psy_xmin, %struct.III_psy_xmin* %arrayidx1381, i32 0, i32 0
  %arrayidx1383 = getelementptr inbounds [22 x double], [22 x double]* %l1382, i32 0, i64 %idxprom1379
  %917 = load double, double* %arrayidx1383, align 8, !tbaa !7
  %918 = load i32, i32* %sb, align 4, !tbaa !5
  %idxprom1384 = sext i32 %918 to i64
  %919 = load i32, i32* %chside, align 4, !tbaa !5
  %idxprom1385 = sext i32 %919 to i64
  %arrayidx1386 = getelementptr inbounds [4 x %struct.III_psy_xmin], [4 x %struct.III_psy_xmin]* @L3psycho_anal.thm, i32 0, i64 %idxprom1385
  %l1387 = getelementptr inbounds %struct.III_psy_xmin, %struct.III_psy_xmin* %arrayidx1386, i32 0, i32 0
  %arrayidx1388 = getelementptr inbounds [22 x double], [22 x double]* %l1387, i32 0, i64 %idxprom1384
  %920 = load double, double* %arrayidx1388, align 8, !tbaa !7
  %921 = load double, double* %mld1348, align 8, !tbaa !7
  %cmp1389 = fcmp olt double %920, %921
  br i1 %cmp1389, label %cond.true.1391, label %cond.false.1397

cond.true.1391:                                   ; preds = %if.then.1370
  %922 = load i32, i32* %sb, align 4, !tbaa !5
  %idxprom1392 = sext i32 %922 to i64
  %923 = load i32, i32* %chside, align 4, !tbaa !5
  %idxprom1393 = sext i32 %923 to i64
  %arrayidx1394 = getelementptr inbounds [4 x %struct.III_psy_xmin], [4 x %struct.III_psy_xmin]* @L3psycho_anal.thm, i32 0, i64 %idxprom1393
  %l1395 = getelementptr inbounds %struct.III_psy_xmin, %struct.III_psy_xmin* %arrayidx1394, i32 0, i32 0
  %arrayidx1396 = getelementptr inbounds [22 x double], [22 x double]* %l1395, i32 0, i64 %idxprom1392
  %924 = load double, double* %arrayidx1396, align 8, !tbaa !7
  br label %cond.end.1398

cond.false.1397:                                  ; preds = %if.then.1370
  %925 = load double, double* %mld1348, align 8, !tbaa !7
  br label %cond.end.1398

cond.end.1398:                                    ; preds = %cond.false.1397, %cond.true.1391
  %cond1399 = phi double [ %924, %cond.true.1391 ], [ %925, %cond.false.1397 ]
  %cmp1400 = fcmp ogt double %917, %cond1399
  br i1 %cmp1400, label %cond.true.1402, label %cond.false.1408

cond.true.1402:                                   ; preds = %cond.end.1398
  %926 = load i32, i32* %sb, align 4, !tbaa !5
  %idxprom1403 = sext i32 %926 to i64
  %927 = load i32, i32* %chmid, align 4, !tbaa !5
  %idxprom1404 = sext i32 %927 to i64
  %arrayidx1405 = getelementptr inbounds [4 x %struct.III_psy_xmin], [4 x %struct.III_psy_xmin]* @L3psycho_anal.thm, i32 0, i64 %idxprom1404
  %l1406 = getelementptr inbounds %struct.III_psy_xmin, %struct.III_psy_xmin* %arrayidx1405, i32 0, i32 0
  %arrayidx1407 = getelementptr inbounds [22 x double], [22 x double]* %l1406, i32 0, i64 %idxprom1403
  %928 = load double, double* %arrayidx1407, align 8, !tbaa !7
  br label %cond.end.1425

cond.false.1408:                                  ; preds = %cond.end.1398
  %929 = load i32, i32* %sb, align 4, !tbaa !5
  %idxprom1409 = sext i32 %929 to i64
  %930 = load i32, i32* %chside, align 4, !tbaa !5
  %idxprom1410 = sext i32 %930 to i64
  %arrayidx1411 = getelementptr inbounds [4 x %struct.III_psy_xmin], [4 x %struct.III_psy_xmin]* @L3psycho_anal.thm, i32 0, i64 %idxprom1410
  %l1412 = getelementptr inbounds %struct.III_psy_xmin, %struct.III_psy_xmin* %arrayidx1411, i32 0, i32 0
  %arrayidx1413 = getelementptr inbounds [22 x double], [22 x double]* %l1412, i32 0, i64 %idxprom1409
  %931 = load double, double* %arrayidx1413, align 8, !tbaa !7
  %932 = load double, double* %mld1348, align 8, !tbaa !7
  %cmp1414 = fcmp olt double %931, %932
  br i1 %cmp1414, label %cond.true.1416, label %cond.false.1422

cond.true.1416:                                   ; preds = %cond.false.1408
  %933 = load i32, i32* %sb, align 4, !tbaa !5
  %idxprom1417 = sext i32 %933 to i64
  %934 = load i32, i32* %chside, align 4, !tbaa !5
  %idxprom1418 = sext i32 %934 to i64
  %arrayidx1419 = getelementptr inbounds [4 x %struct.III_psy_xmin], [4 x %struct.III_psy_xmin]* @L3psycho_anal.thm, i32 0, i64 %idxprom1418
  %l1420 = getelementptr inbounds %struct.III_psy_xmin, %struct.III_psy_xmin* %arrayidx1419, i32 0, i32 0
  %arrayidx1421 = getelementptr inbounds [22 x double], [22 x double]* %l1420, i32 0, i64 %idxprom1417
  %935 = load double, double* %arrayidx1421, align 8, !tbaa !7
  br label %cond.end.1423

cond.false.1422:                                  ; preds = %cond.false.1408
  %936 = load double, double* %mld1348, align 8, !tbaa !7
  br label %cond.end.1423

cond.end.1423:                                    ; preds = %cond.false.1422, %cond.true.1416
  %cond1424 = phi double [ %935, %cond.true.1416 ], [ %936, %cond.false.1422 ]
  br label %cond.end.1425

cond.end.1425:                                    ; preds = %cond.end.1423, %cond.true.1402
  %cond1426 = phi double [ %928, %cond.true.1402 ], [ %cond1424, %cond.end.1423 ]
  store double %cond1426, double* %rmid, align 8, !tbaa !7
  %937 = load i32, i32* %sb, align 4, !tbaa !5
  %idxprom1427 = sext i32 %937 to i64
  %arrayidx1428 = getelementptr inbounds [21 x double], [21 x double]* @L3psycho_anal.mld_l, i32 0, i64 %idxprom1427
  %938 = load double, double* %arrayidx1428, align 8, !tbaa !7
  %939 = load i32, i32* %sb, align 4, !tbaa !5
  %idxprom1429 = sext i32 %939 to i64
  %940 = load i32, i32* %chmid, align 4, !tbaa !5
  %idxprom1430 = sext i32 %940 to i64
  %arrayidx1431 = getelementptr inbounds [4 x %struct.III_psy_xmin], [4 x %struct.III_psy_xmin]* @L3psycho_anal.en, i32 0, i64 %idxprom1430
  %l1432 = getelementptr inbounds %struct.III_psy_xmin, %struct.III_psy_xmin* %arrayidx1431, i32 0, i32 0
  %arrayidx1433 = getelementptr inbounds [22 x double], [22 x double]* %l1432, i32 0, i64 %idxprom1429
  %941 = load double, double* %arrayidx1433, align 8, !tbaa !7
  %mul1434 = fmul double %938, %941
  store double %mul1434, double* %mld1348, align 8, !tbaa !7
  %942 = load i32, i32* %sb, align 4, !tbaa !5
  %idxprom1435 = sext i32 %942 to i64
  %943 = load i32, i32* %chside, align 4, !tbaa !5
  %idxprom1436 = sext i32 %943 to i64
  %arrayidx1437 = getelementptr inbounds [4 x %struct.III_psy_xmin], [4 x %struct.III_psy_xmin]* @L3psycho_anal.thm, i32 0, i64 %idxprom1436
  %l1438 = getelementptr inbounds %struct.III_psy_xmin, %struct.III_psy_xmin* %arrayidx1437, i32 0, i32 0
  %arrayidx1439 = getelementptr inbounds [22 x double], [22 x double]* %l1438, i32 0, i64 %idxprom1435
  %944 = load double, double* %arrayidx1439, align 8, !tbaa !7
  %945 = load i32, i32* %sb, align 4, !tbaa !5
  %idxprom1440 = sext i32 %945 to i64
  %946 = load i32, i32* %chmid, align 4, !tbaa !5
  %idxprom1441 = sext i32 %946 to i64
  %arrayidx1442 = getelementptr inbounds [4 x %struct.III_psy_xmin], [4 x %struct.III_psy_xmin]* @L3psycho_anal.thm, i32 0, i64 %idxprom1441
  %l1443 = getelementptr inbounds %struct.III_psy_xmin, %struct.III_psy_xmin* %arrayidx1442, i32 0, i32 0
  %arrayidx1444 = getelementptr inbounds [22 x double], [22 x double]* %l1443, i32 0, i64 %idxprom1440
  %947 = load double, double* %arrayidx1444, align 8, !tbaa !7
  %948 = load double, double* %mld1348, align 8, !tbaa !7
  %cmp1445 = fcmp olt double %947, %948
  br i1 %cmp1445, label %cond.true.1447, label %cond.false.1453

cond.true.1447:                                   ; preds = %cond.end.1425
  %949 = load i32, i32* %sb, align 4, !tbaa !5
  %idxprom1448 = sext i32 %949 to i64
  %950 = load i32, i32* %chmid, align 4, !tbaa !5
  %idxprom1449 = sext i32 %950 to i64
  %arrayidx1450 = getelementptr inbounds [4 x %struct.III_psy_xmin], [4 x %struct.III_psy_xmin]* @L3psycho_anal.thm, i32 0, i64 %idxprom1449
  %l1451 = getelementptr inbounds %struct.III_psy_xmin, %struct.III_psy_xmin* %arrayidx1450, i32 0, i32 0
  %arrayidx1452 = getelementptr inbounds [22 x double], [22 x double]* %l1451, i32 0, i64 %idxprom1448
  %951 = load double, double* %arrayidx1452, align 8, !tbaa !7
  br label %cond.end.1454

cond.false.1453:                                  ; preds = %cond.end.1425
  %952 = load double, double* %mld1348, align 8, !tbaa !7
  br label %cond.end.1454

cond.end.1454:                                    ; preds = %cond.false.1453, %cond.true.1447
  %cond1455 = phi double [ %951, %cond.true.1447 ], [ %952, %cond.false.1453 ]
  %cmp1456 = fcmp ogt double %944, %cond1455
  br i1 %cmp1456, label %cond.true.1458, label %cond.false.1464

cond.true.1458:                                   ; preds = %cond.end.1454
  %953 = load i32, i32* %sb, align 4, !tbaa !5
  %idxprom1459 = sext i32 %953 to i64
  %954 = load i32, i32* %chside, align 4, !tbaa !5
  %idxprom1460 = sext i32 %954 to i64
  %arrayidx1461 = getelementptr inbounds [4 x %struct.III_psy_xmin], [4 x %struct.III_psy_xmin]* @L3psycho_anal.thm, i32 0, i64 %idxprom1460
  %l1462 = getelementptr inbounds %struct.III_psy_xmin, %struct.III_psy_xmin* %arrayidx1461, i32 0, i32 0
  %arrayidx1463 = getelementptr inbounds [22 x double], [22 x double]* %l1462, i32 0, i64 %idxprom1459
  %955 = load double, double* %arrayidx1463, align 8, !tbaa !7
  br label %cond.end.1481

cond.false.1464:                                  ; preds = %cond.end.1454
  %956 = load i32, i32* %sb, align 4, !tbaa !5
  %idxprom1465 = sext i32 %956 to i64
  %957 = load i32, i32* %chmid, align 4, !tbaa !5
  %idxprom1466 = sext i32 %957 to i64
  %arrayidx1467 = getelementptr inbounds [4 x %struct.III_psy_xmin], [4 x %struct.III_psy_xmin]* @L3psycho_anal.thm, i32 0, i64 %idxprom1466
  %l1468 = getelementptr inbounds %struct.III_psy_xmin, %struct.III_psy_xmin* %arrayidx1467, i32 0, i32 0
  %arrayidx1469 = getelementptr inbounds [22 x double], [22 x double]* %l1468, i32 0, i64 %idxprom1465
  %958 = load double, double* %arrayidx1469, align 8, !tbaa !7
  %959 = load double, double* %mld1348, align 8, !tbaa !7
  %cmp1470 = fcmp olt double %958, %959
  br i1 %cmp1470, label %cond.true.1472, label %cond.false.1478

cond.true.1472:                                   ; preds = %cond.false.1464
  %960 = load i32, i32* %sb, align 4, !tbaa !5
  %idxprom1473 = sext i32 %960 to i64
  %961 = load i32, i32* %chmid, align 4, !tbaa !5
  %idxprom1474 = sext i32 %961 to i64
  %arrayidx1475 = getelementptr inbounds [4 x %struct.III_psy_xmin], [4 x %struct.III_psy_xmin]* @L3psycho_anal.thm, i32 0, i64 %idxprom1474
  %l1476 = getelementptr inbounds %struct.III_psy_xmin, %struct.III_psy_xmin* %arrayidx1475, i32 0, i32 0
  %arrayidx1477 = getelementptr inbounds [22 x double], [22 x double]* %l1476, i32 0, i64 %idxprom1473
  %962 = load double, double* %arrayidx1477, align 8, !tbaa !7
  br label %cond.end.1479

cond.false.1478:                                  ; preds = %cond.false.1464
  %963 = load double, double* %mld1348, align 8, !tbaa !7
  br label %cond.end.1479

cond.end.1479:                                    ; preds = %cond.false.1478, %cond.true.1472
  %cond1480 = phi double [ %962, %cond.true.1472 ], [ %963, %cond.false.1478 ]
  br label %cond.end.1481

cond.end.1481:                                    ; preds = %cond.end.1479, %cond.true.1458
  %cond1482 = phi double [ %955, %cond.true.1458 ], [ %cond1480, %cond.end.1479 ]
  store double %cond1482, double* %rside, align 8, !tbaa !7
  %964 = load double, double* %rmid, align 8, !tbaa !7
  %965 = load i32, i32* %sb, align 4, !tbaa !5
  %idxprom1483 = sext i32 %965 to i64
  %966 = load i32, i32* %chmid, align 4, !tbaa !5
  %idxprom1484 = sext i32 %966 to i64
  %arrayidx1485 = getelementptr inbounds [4 x %struct.III_psy_xmin], [4 x %struct.III_psy_xmin]* @L3psycho_anal.thm, i32 0, i64 %idxprom1484
  %l1486 = getelementptr inbounds %struct.III_psy_xmin, %struct.III_psy_xmin* %arrayidx1485, i32 0, i32 0
  %arrayidx1487 = getelementptr inbounds [22 x double], [22 x double]* %l1486, i32 0, i64 %idxprom1483
  store double %964, double* %arrayidx1487, align 8, !tbaa !7
  %967 = load double, double* %rside, align 8, !tbaa !7
  %968 = load i32, i32* %sb, align 4, !tbaa !5
  %idxprom1488 = sext i32 %968 to i64
  %969 = load i32, i32* %chside, align 4, !tbaa !5
  %idxprom1489 = sext i32 %969 to i64
  %arrayidx1490 = getelementptr inbounds [4 x %struct.III_psy_xmin], [4 x %struct.III_psy_xmin]* @L3psycho_anal.thm, i32 0, i64 %idxprom1489
  %l1491 = getelementptr inbounds %struct.III_psy_xmin, %struct.III_psy_xmin* %arrayidx1490, i32 0, i32 0
  %arrayidx1492 = getelementptr inbounds [22 x double], [22 x double]* %l1491, i32 0, i64 %idxprom1488
  store double %967, double* %arrayidx1492, align 8, !tbaa !7
  br label %if.end.1493

if.end.1493:                                      ; preds = %cond.end.1481, %land.lhs.true.1362, %for.body.1354
  br label %for.inc.1494

for.inc.1494:                                     ; preds = %if.end.1493
  %970 = load i32, i32* %sb, align 4, !tbaa !5
  %inc1495 = add nsw i32 %970, 1
  store i32 %inc1495, i32* %sb, align 4, !tbaa !5
  br label %for.cond.1351

for.end.1496:                                     ; preds = %for.cond.1351
  store i32 0, i32* %sb, align 4, !tbaa !5
  br label %for.cond.1497

for.cond.1497:                                    ; preds = %for.inc.1687, %for.end.1496
  %971 = load i32, i32* %sb, align 4, !tbaa !5
  %cmp1498 = icmp slt i32 %971, 12
  br i1 %cmp1498, label %for.body.1500, label %for.end.1689

for.body.1500:                                    ; preds = %for.cond.1497
  store i32 0, i32* %sblock, align 4, !tbaa !5
  br label %for.cond.1501

for.cond.1501:                                    ; preds = %for.inc.1684, %for.body.1500
  %972 = load i32, i32* %sblock, align 4, !tbaa !5
  %cmp1502 = icmp slt i32 %972, 3
  br i1 %cmp1502, label %for.body.1504, label %for.end.1686

for.body.1504:                                    ; preds = %for.cond.1501
  %973 = load i32, i32* %sblock, align 4, !tbaa !5
  %idxprom1505 = sext i32 %973 to i64
  %974 = load i32, i32* %sb, align 4, !tbaa !5
  %idxprom1506 = sext i32 %974 to i64
  %arrayidx1507 = getelementptr inbounds [13 x [3 x double]], [13 x [3 x double]]* getelementptr inbounds ([4 x %struct.III_psy_xmin], [4 x %struct.III_psy_xmin]* @L3psycho_anal.thm, i32 0, i64 0, i32 1), i32 0, i64 %idxprom1506
  %arrayidx1508 = getelementptr inbounds [3 x double], [3 x double]* %arrayidx1507, i32 0, i64 %idxprom1505
  %975 = load double, double* %arrayidx1508, align 8, !tbaa !7
  %976 = load i32, i32* %sblock, align 4, !tbaa !5
  %idxprom1509 = sext i32 %976 to i64
  %977 = load i32, i32* %sb, align 4, !tbaa !5
  %idxprom1510 = sext i32 %977 to i64
  %arrayidx1511 = getelementptr inbounds [13 x [3 x double]], [13 x [3 x double]]* getelementptr inbounds ([4 x %struct.III_psy_xmin], [4 x %struct.III_psy_xmin]* @L3psycho_anal.thm, i32 0, i64 1, i32 1), i32 0, i64 %idxprom1510
  %arrayidx1512 = getelementptr inbounds [3 x double], [3 x double]* %arrayidx1511, i32 0, i64 %idxprom1509
  %978 = load double, double* %arrayidx1512, align 8, !tbaa !7
  %mul1513 = fmul double 1.580000e+00, %978
  %cmp1514 = fcmp ole double %975, %mul1513
  br i1 %cmp1514, label %land.lhs.true.1516, label %if.end.1683

land.lhs.true.1516:                               ; preds = %for.body.1504
  %979 = load i32, i32* %sblock, align 4, !tbaa !5
  %idxprom1517 = sext i32 %979 to i64
  %980 = load i32, i32* %sb, align 4, !tbaa !5
  %idxprom1518 = sext i32 %980 to i64
  %arrayidx1519 = getelementptr inbounds [13 x [3 x double]], [13 x [3 x double]]* getelementptr inbounds ([4 x %struct.III_psy_xmin], [4 x %struct.III_psy_xmin]* @L3psycho_anal.thm, i32 0, i64 1, i32 1), i32 0, i64 %idxprom1518
  %arrayidx1520 = getelementptr inbounds [3 x double], [3 x double]* %arrayidx1519, i32 0, i64 %idxprom1517
  %981 = load double, double* %arrayidx1520, align 8, !tbaa !7
  %982 = load i32, i32* %sblock, align 4, !tbaa !5
  %idxprom1521 = sext i32 %982 to i64
  %983 = load i32, i32* %sb, align 4, !tbaa !5
  %idxprom1522 = sext i32 %983 to i64
  %arrayidx1523 = getelementptr inbounds [13 x [3 x double]], [13 x [3 x double]]* getelementptr inbounds ([4 x %struct.III_psy_xmin], [4 x %struct.III_psy_xmin]* @L3psycho_anal.thm, i32 0, i64 0, i32 1), i32 0, i64 %idxprom1522
  %arrayidx1524 = getelementptr inbounds [3 x double], [3 x double]* %arrayidx1523, i32 0, i64 %idxprom1521
  %984 = load double, double* %arrayidx1524, align 8, !tbaa !7
  %mul1525 = fmul double 1.580000e+00, %984
  %cmp1526 = fcmp ole double %981, %mul1525
  br i1 %cmp1526, label %if.then.1528, label %if.end.1683

if.then.1528:                                     ; preds = %land.lhs.true.1516
  %985 = load i32, i32* %sb, align 4, !tbaa !5
  %idxprom1529 = sext i32 %985 to i64
  %arrayidx1530 = getelementptr inbounds [12 x double], [12 x double]* @L3psycho_anal.mld_s, i32 0, i64 %idxprom1529
  %986 = load double, double* %arrayidx1530, align 8, !tbaa !7
  %987 = load i32, i32* %sblock, align 4, !tbaa !5
  %idxprom1531 = sext i32 %987 to i64
  %988 = load i32, i32* %sb, align 4, !tbaa !5
  %idxprom1532 = sext i32 %988 to i64
  %989 = load i32, i32* %chside, align 4, !tbaa !5
  %idxprom1533 = sext i32 %989 to i64
  %arrayidx1534 = getelementptr inbounds [4 x %struct.III_psy_xmin], [4 x %struct.III_psy_xmin]* @L3psycho_anal.en, i32 0, i64 %idxprom1533
  %s1535 = getelementptr inbounds %struct.III_psy_xmin, %struct.III_psy_xmin* %arrayidx1534, i32 0, i32 1
  %arrayidx1536 = getelementptr inbounds [13 x [3 x double]], [13 x [3 x double]]* %s1535, i32 0, i64 %idxprom1532
  %arrayidx1537 = getelementptr inbounds [3 x double], [3 x double]* %arrayidx1536, i32 0, i64 %idxprom1531
  %990 = load double, double* %arrayidx1537, align 8, !tbaa !7
  %mul1538 = fmul double %986, %990
  store double %mul1538, double* %mld1348, align 8, !tbaa !7
  %991 = load i32, i32* %sblock, align 4, !tbaa !5
  %idxprom1539 = sext i32 %991 to i64
  %992 = load i32, i32* %sb, align 4, !tbaa !5
  %idxprom1540 = sext i32 %992 to i64
  %993 = load i32, i32* %chmid, align 4, !tbaa !5
  %idxprom1541 = sext i32 %993 to i64
  %arrayidx1542 = getelementptr inbounds [4 x %struct.III_psy_xmin], [4 x %struct.III_psy_xmin]* @L3psycho_anal.thm, i32 0, i64 %idxprom1541
  %s1543 = getelementptr inbounds %struct.III_psy_xmin, %struct.III_psy_xmin* %arrayidx1542, i32 0, i32 1
  %arrayidx1544 = getelementptr inbounds [13 x [3 x double]], [13 x [3 x double]]* %s1543, i32 0, i64 %idxprom1540
  %arrayidx1545 = getelementptr inbounds [3 x double], [3 x double]* %arrayidx1544, i32 0, i64 %idxprom1539
  %994 = load double, double* %arrayidx1545, align 8, !tbaa !7
  %995 = load i32, i32* %sblock, align 4, !tbaa !5
  %idxprom1546 = sext i32 %995 to i64
  %996 = load i32, i32* %sb, align 4, !tbaa !5
  %idxprom1547 = sext i32 %996 to i64
  %997 = load i32, i32* %chside, align 4, !tbaa !5
  %idxprom1548 = sext i32 %997 to i64
  %arrayidx1549 = getelementptr inbounds [4 x %struct.III_psy_xmin], [4 x %struct.III_psy_xmin]* @L3psycho_anal.thm, i32 0, i64 %idxprom1548
  %s1550 = getelementptr inbounds %struct.III_psy_xmin, %struct.III_psy_xmin* %arrayidx1549, i32 0, i32 1
  %arrayidx1551 = getelementptr inbounds [13 x [3 x double]], [13 x [3 x double]]* %s1550, i32 0, i64 %idxprom1547
  %arrayidx1552 = getelementptr inbounds [3 x double], [3 x double]* %arrayidx1551, i32 0, i64 %idxprom1546
  %998 = load double, double* %arrayidx1552, align 8, !tbaa !7
  %999 = load double, double* %mld1348, align 8, !tbaa !7
  %cmp1553 = fcmp olt double %998, %999
  br i1 %cmp1553, label %cond.true.1555, label %cond.false.1563

cond.true.1555:                                   ; preds = %if.then.1528
  %1000 = load i32, i32* %sblock, align 4, !tbaa !5
  %idxprom1556 = sext i32 %1000 to i64
  %1001 = load i32, i32* %sb, align 4, !tbaa !5
  %idxprom1557 = sext i32 %1001 to i64
  %1002 = load i32, i32* %chside, align 4, !tbaa !5
  %idxprom1558 = sext i32 %1002 to i64
  %arrayidx1559 = getelementptr inbounds [4 x %struct.III_psy_xmin], [4 x %struct.III_psy_xmin]* @L3psycho_anal.thm, i32 0, i64 %idxprom1558
  %s1560 = getelementptr inbounds %struct.III_psy_xmin, %struct.III_psy_xmin* %arrayidx1559, i32 0, i32 1
  %arrayidx1561 = getelementptr inbounds [13 x [3 x double]], [13 x [3 x double]]* %s1560, i32 0, i64 %idxprom1557
  %arrayidx1562 = getelementptr inbounds [3 x double], [3 x double]* %arrayidx1561, i32 0, i64 %idxprom1556
  %1003 = load double, double* %arrayidx1562, align 8, !tbaa !7
  br label %cond.end.1564

cond.false.1563:                                  ; preds = %if.then.1528
  %1004 = load double, double* %mld1348, align 8, !tbaa !7
  br label %cond.end.1564

cond.end.1564:                                    ; preds = %cond.false.1563, %cond.true.1555
  %cond1565 = phi double [ %1003, %cond.true.1555 ], [ %1004, %cond.false.1563 ]
  %cmp1566 = fcmp ogt double %994, %cond1565
  br i1 %cmp1566, label %cond.true.1568, label %cond.false.1576

cond.true.1568:                                   ; preds = %cond.end.1564
  %1005 = load i32, i32* %sblock, align 4, !tbaa !5
  %idxprom1569 = sext i32 %1005 to i64
  %1006 = load i32, i32* %sb, align 4, !tbaa !5
  %idxprom1570 = sext i32 %1006 to i64
  %1007 = load i32, i32* %chmid, align 4, !tbaa !5
  %idxprom1571 = sext i32 %1007 to i64
  %arrayidx1572 = getelementptr inbounds [4 x %struct.III_psy_xmin], [4 x %struct.III_psy_xmin]* @L3psycho_anal.thm, i32 0, i64 %idxprom1571
  %s1573 = getelementptr inbounds %struct.III_psy_xmin, %struct.III_psy_xmin* %arrayidx1572, i32 0, i32 1
  %arrayidx1574 = getelementptr inbounds [13 x [3 x double]], [13 x [3 x double]]* %s1573, i32 0, i64 %idxprom1570
  %arrayidx1575 = getelementptr inbounds [3 x double], [3 x double]* %arrayidx1574, i32 0, i64 %idxprom1569
  %1008 = load double, double* %arrayidx1575, align 8, !tbaa !7
  br label %cond.end.1597

cond.false.1576:                                  ; preds = %cond.end.1564
  %1009 = load i32, i32* %sblock, align 4, !tbaa !5
  %idxprom1577 = sext i32 %1009 to i64
  %1010 = load i32, i32* %sb, align 4, !tbaa !5
  %idxprom1578 = sext i32 %1010 to i64
  %1011 = load i32, i32* %chside, align 4, !tbaa !5
  %idxprom1579 = sext i32 %1011 to i64
  %arrayidx1580 = getelementptr inbounds [4 x %struct.III_psy_xmin], [4 x %struct.III_psy_xmin]* @L3psycho_anal.thm, i32 0, i64 %idxprom1579
  %s1581 = getelementptr inbounds %struct.III_psy_xmin, %struct.III_psy_xmin* %arrayidx1580, i32 0, i32 1
  %arrayidx1582 = getelementptr inbounds [13 x [3 x double]], [13 x [3 x double]]* %s1581, i32 0, i64 %idxprom1578
  %arrayidx1583 = getelementptr inbounds [3 x double], [3 x double]* %arrayidx1582, i32 0, i64 %idxprom1577
  %1012 = load double, double* %arrayidx1583, align 8, !tbaa !7
  %1013 = load double, double* %mld1348, align 8, !tbaa !7
  %cmp1584 = fcmp olt double %1012, %1013
  br i1 %cmp1584, label %cond.true.1586, label %cond.false.1594

cond.true.1586:                                   ; preds = %cond.false.1576
  %1014 = load i32, i32* %sblock, align 4, !tbaa !5
  %idxprom1587 = sext i32 %1014 to i64
  %1015 = load i32, i32* %sb, align 4, !tbaa !5
  %idxprom1588 = sext i32 %1015 to i64
  %1016 = load i32, i32* %chside, align 4, !tbaa !5
  %idxprom1589 = sext i32 %1016 to i64
  %arrayidx1590 = getelementptr inbounds [4 x %struct.III_psy_xmin], [4 x %struct.III_psy_xmin]* @L3psycho_anal.thm, i32 0, i64 %idxprom1589
  %s1591 = getelementptr inbounds %struct.III_psy_xmin, %struct.III_psy_xmin* %arrayidx1590, i32 0, i32 1
  %arrayidx1592 = getelementptr inbounds [13 x [3 x double]], [13 x [3 x double]]* %s1591, i32 0, i64 %idxprom1588
  %arrayidx1593 = getelementptr inbounds [3 x double], [3 x double]* %arrayidx1592, i32 0, i64 %idxprom1587
  %1017 = load double, double* %arrayidx1593, align 8, !tbaa !7
  br label %cond.end.1595

cond.false.1594:                                  ; preds = %cond.false.1576
  %1018 = load double, double* %mld1348, align 8, !tbaa !7
  br label %cond.end.1595

cond.end.1595:                                    ; preds = %cond.false.1594, %cond.true.1586
  %cond1596 = phi double [ %1017, %cond.true.1586 ], [ %1018, %cond.false.1594 ]
  br label %cond.end.1597

cond.end.1597:                                    ; preds = %cond.end.1595, %cond.true.1568
  %cond1598 = phi double [ %1008, %cond.true.1568 ], [ %cond1596, %cond.end.1595 ]
  store double %cond1598, double* %rmid, align 8, !tbaa !7
  %1019 = load i32, i32* %sb, align 4, !tbaa !5
  %idxprom1599 = sext i32 %1019 to i64
  %arrayidx1600 = getelementptr inbounds [12 x double], [12 x double]* @L3psycho_anal.mld_s, i32 0, i64 %idxprom1599
  %1020 = load double, double* %arrayidx1600, align 8, !tbaa !7
  %1021 = load i32, i32* %sblock, align 4, !tbaa !5
  %idxprom1601 = sext i32 %1021 to i64
  %1022 = load i32, i32* %sb, align 4, !tbaa !5
  %idxprom1602 = sext i32 %1022 to i64
  %1023 = load i32, i32* %chmid, align 4, !tbaa !5
  %idxprom1603 = sext i32 %1023 to i64
  %arrayidx1604 = getelementptr inbounds [4 x %struct.III_psy_xmin], [4 x %struct.III_psy_xmin]* @L3psycho_anal.en, i32 0, i64 %idxprom1603
  %s1605 = getelementptr inbounds %struct.III_psy_xmin, %struct.III_psy_xmin* %arrayidx1604, i32 0, i32 1
  %arrayidx1606 = getelementptr inbounds [13 x [3 x double]], [13 x [3 x double]]* %s1605, i32 0, i64 %idxprom1602
  %arrayidx1607 = getelementptr inbounds [3 x double], [3 x double]* %arrayidx1606, i32 0, i64 %idxprom1601
  %1024 = load double, double* %arrayidx1607, align 8, !tbaa !7
  %mul1608 = fmul double %1020, %1024
  store double %mul1608, double* %mld1348, align 8, !tbaa !7
  %1025 = load i32, i32* %sblock, align 4, !tbaa !5
  %idxprom1609 = sext i32 %1025 to i64
  %1026 = load i32, i32* %sb, align 4, !tbaa !5
  %idxprom1610 = sext i32 %1026 to i64
  %1027 = load i32, i32* %chside, align 4, !tbaa !5
  %idxprom1611 = sext i32 %1027 to i64
  %arrayidx1612 = getelementptr inbounds [4 x %struct.III_psy_xmin], [4 x %struct.III_psy_xmin]* @L3psycho_anal.thm, i32 0, i64 %idxprom1611
  %s1613 = getelementptr inbounds %struct.III_psy_xmin, %struct.III_psy_xmin* %arrayidx1612, i32 0, i32 1
  %arrayidx1614 = getelementptr inbounds [13 x [3 x double]], [13 x [3 x double]]* %s1613, i32 0, i64 %idxprom1610
  %arrayidx1615 = getelementptr inbounds [3 x double], [3 x double]* %arrayidx1614, i32 0, i64 %idxprom1609
  %1028 = load double, double* %arrayidx1615, align 8, !tbaa !7
  %1029 = load i32, i32* %sblock, align 4, !tbaa !5
  %idxprom1616 = sext i32 %1029 to i64
  %1030 = load i32, i32* %sb, align 4, !tbaa !5
  %idxprom1617 = sext i32 %1030 to i64
  %1031 = load i32, i32* %chmid, align 4, !tbaa !5
  %idxprom1618 = sext i32 %1031 to i64
  %arrayidx1619 = getelementptr inbounds [4 x %struct.III_psy_xmin], [4 x %struct.III_psy_xmin]* @L3psycho_anal.thm, i32 0, i64 %idxprom1618
  %s1620 = getelementptr inbounds %struct.III_psy_xmin, %struct.III_psy_xmin* %arrayidx1619, i32 0, i32 1
  %arrayidx1621 = getelementptr inbounds [13 x [3 x double]], [13 x [3 x double]]* %s1620, i32 0, i64 %idxprom1617
  %arrayidx1622 = getelementptr inbounds [3 x double], [3 x double]* %arrayidx1621, i32 0, i64 %idxprom1616
  %1032 = load double, double* %arrayidx1622, align 8, !tbaa !7
  %1033 = load double, double* %mld1348, align 8, !tbaa !7
  %cmp1623 = fcmp olt double %1032, %1033
  br i1 %cmp1623, label %cond.true.1625, label %cond.false.1633

cond.true.1625:                                   ; preds = %cond.end.1597
  %1034 = load i32, i32* %sblock, align 4, !tbaa !5
  %idxprom1626 = sext i32 %1034 to i64
  %1035 = load i32, i32* %sb, align 4, !tbaa !5
  %idxprom1627 = sext i32 %1035 to i64
  %1036 = load i32, i32* %chmid, align 4, !tbaa !5
  %idxprom1628 = sext i32 %1036 to i64
  %arrayidx1629 = getelementptr inbounds [4 x %struct.III_psy_xmin], [4 x %struct.III_psy_xmin]* @L3psycho_anal.thm, i32 0, i64 %idxprom1628
  %s1630 = getelementptr inbounds %struct.III_psy_xmin, %struct.III_psy_xmin* %arrayidx1629, i32 0, i32 1
  %arrayidx1631 = getelementptr inbounds [13 x [3 x double]], [13 x [3 x double]]* %s1630, i32 0, i64 %idxprom1627
  %arrayidx1632 = getelementptr inbounds [3 x double], [3 x double]* %arrayidx1631, i32 0, i64 %idxprom1626
  %1037 = load double, double* %arrayidx1632, align 8, !tbaa !7
  br label %cond.end.1634

cond.false.1633:                                  ; preds = %cond.end.1597
  %1038 = load double, double* %mld1348, align 8, !tbaa !7
  br label %cond.end.1634

cond.end.1634:                                    ; preds = %cond.false.1633, %cond.true.1625
  %cond1635 = phi double [ %1037, %cond.true.1625 ], [ %1038, %cond.false.1633 ]
  %cmp1636 = fcmp ogt double %1028, %cond1635
  br i1 %cmp1636, label %cond.true.1638, label %cond.false.1646

cond.true.1638:                                   ; preds = %cond.end.1634
  %1039 = load i32, i32* %sblock, align 4, !tbaa !5
  %idxprom1639 = sext i32 %1039 to i64
  %1040 = load i32, i32* %sb, align 4, !tbaa !5
  %idxprom1640 = sext i32 %1040 to i64
  %1041 = load i32, i32* %chside, align 4, !tbaa !5
  %idxprom1641 = sext i32 %1041 to i64
  %arrayidx1642 = getelementptr inbounds [4 x %struct.III_psy_xmin], [4 x %struct.III_psy_xmin]* @L3psycho_anal.thm, i32 0, i64 %idxprom1641
  %s1643 = getelementptr inbounds %struct.III_psy_xmin, %struct.III_psy_xmin* %arrayidx1642, i32 0, i32 1
  %arrayidx1644 = getelementptr inbounds [13 x [3 x double]], [13 x [3 x double]]* %s1643, i32 0, i64 %idxprom1640
  %arrayidx1645 = getelementptr inbounds [3 x double], [3 x double]* %arrayidx1644, i32 0, i64 %idxprom1639
  %1042 = load double, double* %arrayidx1645, align 8, !tbaa !7
  br label %cond.end.1667

cond.false.1646:                                  ; preds = %cond.end.1634
  %1043 = load i32, i32* %sblock, align 4, !tbaa !5
  %idxprom1647 = sext i32 %1043 to i64
  %1044 = load i32, i32* %sb, align 4, !tbaa !5
  %idxprom1648 = sext i32 %1044 to i64
  %1045 = load i32, i32* %chmid, align 4, !tbaa !5
  %idxprom1649 = sext i32 %1045 to i64
  %arrayidx1650 = getelementptr inbounds [4 x %struct.III_psy_xmin], [4 x %struct.III_psy_xmin]* @L3psycho_anal.thm, i32 0, i64 %idxprom1649
  %s1651 = getelementptr inbounds %struct.III_psy_xmin, %struct.III_psy_xmin* %arrayidx1650, i32 0, i32 1
  %arrayidx1652 = getelementptr inbounds [13 x [3 x double]], [13 x [3 x double]]* %s1651, i32 0, i64 %idxprom1648
  %arrayidx1653 = getelementptr inbounds [3 x double], [3 x double]* %arrayidx1652, i32 0, i64 %idxprom1647
  %1046 = load double, double* %arrayidx1653, align 8, !tbaa !7
  %1047 = load double, double* %mld1348, align 8, !tbaa !7
  %cmp1654 = fcmp olt double %1046, %1047
  br i1 %cmp1654, label %cond.true.1656, label %cond.false.1664

cond.true.1656:                                   ; preds = %cond.false.1646
  %1048 = load i32, i32* %sblock, align 4, !tbaa !5
  %idxprom1657 = sext i32 %1048 to i64
  %1049 = load i32, i32* %sb, align 4, !tbaa !5
  %idxprom1658 = sext i32 %1049 to i64
  %1050 = load i32, i32* %chmid, align 4, !tbaa !5
  %idxprom1659 = sext i32 %1050 to i64
  %arrayidx1660 = getelementptr inbounds [4 x %struct.III_psy_xmin], [4 x %struct.III_psy_xmin]* @L3psycho_anal.thm, i32 0, i64 %idxprom1659
  %s1661 = getelementptr inbounds %struct.III_psy_xmin, %struct.III_psy_xmin* %arrayidx1660, i32 0, i32 1
  %arrayidx1662 = getelementptr inbounds [13 x [3 x double]], [13 x [3 x double]]* %s1661, i32 0, i64 %idxprom1658
  %arrayidx1663 = getelementptr inbounds [3 x double], [3 x double]* %arrayidx1662, i32 0, i64 %idxprom1657
  %1051 = load double, double* %arrayidx1663, align 8, !tbaa !7
  br label %cond.end.1665

cond.false.1664:                                  ; preds = %cond.false.1646
  %1052 = load double, double* %mld1348, align 8, !tbaa !7
  br label %cond.end.1665

cond.end.1665:                                    ; preds = %cond.false.1664, %cond.true.1656
  %cond1666 = phi double [ %1051, %cond.true.1656 ], [ %1052, %cond.false.1664 ]
  br label %cond.end.1667

cond.end.1667:                                    ; preds = %cond.end.1665, %cond.true.1638
  %cond1668 = phi double [ %1042, %cond.true.1638 ], [ %cond1666, %cond.end.1665 ]
  store double %cond1668, double* %rside, align 8, !tbaa !7
  %1053 = load double, double* %rmid, align 8, !tbaa !7
  %1054 = load i32, i32* %sblock, align 4, !tbaa !5
  %idxprom1669 = sext i32 %1054 to i64
  %1055 = load i32, i32* %sb, align 4, !tbaa !5
  %idxprom1670 = sext i32 %1055 to i64
  %1056 = load i32, i32* %chmid, align 4, !tbaa !5
  %idxprom1671 = sext i32 %1056 to i64
  %arrayidx1672 = getelementptr inbounds [4 x %struct.III_psy_xmin], [4 x %struct.III_psy_xmin]* @L3psycho_anal.thm, i32 0, i64 %idxprom1671
  %s1673 = getelementptr inbounds %struct.III_psy_xmin, %struct.III_psy_xmin* %arrayidx1672, i32 0, i32 1
  %arrayidx1674 = getelementptr inbounds [13 x [3 x double]], [13 x [3 x double]]* %s1673, i32 0, i64 %idxprom1670
  %arrayidx1675 = getelementptr inbounds [3 x double], [3 x double]* %arrayidx1674, i32 0, i64 %idxprom1669
  store double %1053, double* %arrayidx1675, align 8, !tbaa !7
  %1057 = load double, double* %rside, align 8, !tbaa !7
  %1058 = load i32, i32* %sblock, align 4, !tbaa !5
  %idxprom1676 = sext i32 %1058 to i64
  %1059 = load i32, i32* %sb, align 4, !tbaa !5
  %idxprom1677 = sext i32 %1059 to i64
  %1060 = load i32, i32* %chside, align 4, !tbaa !5
  %idxprom1678 = sext i32 %1060 to i64
  %arrayidx1679 = getelementptr inbounds [4 x %struct.III_psy_xmin], [4 x %struct.III_psy_xmin]* @L3psycho_anal.thm, i32 0, i64 %idxprom1678
  %s1680 = getelementptr inbounds %struct.III_psy_xmin, %struct.III_psy_xmin* %arrayidx1679, i32 0, i32 1
  %arrayidx1681 = getelementptr inbounds [13 x [3 x double]], [13 x [3 x double]]* %s1680, i32 0, i64 %idxprom1677
  %arrayidx1682 = getelementptr inbounds [3 x double], [3 x double]* %arrayidx1681, i32 0, i64 %idxprom1676
  store double %1057, double* %arrayidx1682, align 8, !tbaa !7
  br label %if.end.1683

if.end.1683:                                      ; preds = %cond.end.1667, %land.lhs.true.1516, %for.body.1504
  br label %for.inc.1684

for.inc.1684:                                     ; preds = %if.end.1683
  %1061 = load i32, i32* %sblock, align 4, !tbaa !5
  %inc1685 = add nsw i32 %1061, 1
  store i32 %inc1685, i32* %sblock, align 4, !tbaa !5
  br label %for.cond.1501

for.end.1686:                                     ; preds = %for.cond.1501
  br label %for.inc.1687

for.inc.1687:                                     ; preds = %for.end.1686
  %1062 = load i32, i32* %sb, align 4, !tbaa !5
  %inc1688 = add nsw i32 %1062, 1
  store i32 %inc1688, i32* %sb, align 4, !tbaa !5
  br label %for.cond.1497

for.end.1689:                                     ; preds = %for.cond.1497
  %1063 = bitcast i32* %chside to i8*
  call void @llvm.lifetime.end(i64 4, i8* %1063) #1
  %1064 = bitcast i32* %chmid to i8*
  call void @llvm.lifetime.end(i64 4, i8* %1064) #1
  %1065 = bitcast double* %mld1348 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %1065) #1
  %1066 = bitcast double* %rmid to i8*
  call void @llvm.lifetime.end(i64 8, i8* %1066) #1
  %1067 = bitcast double* %rside to i8*
  call void @llvm.lifetime.end(i64 8, i8* %1067) #1
  br label %if.end.1690

if.end.1690:                                      ; preds = %for.end.1689, %for.end.1341
  %1068 = load %struct.lame_global_flags*, %struct.lame_global_flags** %gfp.addr, align 8, !tbaa !1
  %mode1691 = getelementptr inbounds %struct.lame_global_flags, %struct.lame_global_flags* %1068, i32 0, i32 8
  %1069 = load i32, i32* %mode1691, align 4, !tbaa !18
  %cmp1692 = icmp eq i32 %1069, 1
  br i1 %cmp1692, label %if.then.1694, label %if.end.1829

if.then.1694:                                     ; preds = %if.end.1690
  %1070 = bitcast double* %db to i8*
  call void @llvm.lifetime.start(i64 8, i8* %1070) #1
  %1071 = bitcast double* %x1 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %1071) #1
  %1072 = bitcast double* %x2 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %1072) #1
  %1073 = bitcast double* %sidetot to i8*
  call void @llvm.lifetime.start(i64 8, i8* %1073) #1
  store double 0.000000e+00, double* %sidetot, align 8, !tbaa !7
  %1074 = bitcast double* %tot to i8*
  call void @llvm.lifetime.start(i64 8, i8* %1074) #1
  store double 0.000000e+00, double* %tot, align 8, !tbaa !7
  store i32 5, i32* %sb, align 4, !tbaa !5
  br label %for.cond.1700

for.cond.1700:                                    ; preds = %for.inc.1742, %if.then.1694
  %1075 = load i32, i32* %sb, align 4, !tbaa !5
  %cmp1701 = icmp slt i32 %1075, 21
  br i1 %cmp1701, label %for.body.1703, label %for.end.1744

for.body.1703:                                    ; preds = %for.cond.1700
  %1076 = load i32, i32* %sb, align 4, !tbaa !5
  %idxprom1704 = sext i32 %1076 to i64
  %arrayidx1705 = getelementptr inbounds [22 x double], [22 x double]* getelementptr inbounds ([4 x %struct.III_psy_xmin], [4 x %struct.III_psy_xmin]* @L3psycho_anal.thm, i32 0, i64 0, i32 0), i32 0, i64 %idxprom1704
  %1077 = load double, double* %arrayidx1705, align 8, !tbaa !7
  %1078 = load i32, i32* %sb, align 4, !tbaa !5
  %idxprom1706 = sext i32 %1078 to i64
  %arrayidx1707 = getelementptr inbounds [22 x double], [22 x double]* getelementptr inbounds ([4 x %struct.III_psy_xmin], [4 x %struct.III_psy_xmin]* @L3psycho_anal.thm, i32 0, i64 1, i32 0), i32 0, i64 %idxprom1706
  %1079 = load double, double* %arrayidx1707, align 8, !tbaa !7
  %cmp1708 = fcmp olt double %1077, %1079
  br i1 %cmp1708, label %cond.true.1710, label %cond.false.1713

cond.true.1710:                                   ; preds = %for.body.1703
  %1080 = load i32, i32* %sb, align 4, !tbaa !5
  %idxprom1711 = sext i32 %1080 to i64
  %arrayidx1712 = getelementptr inbounds [22 x double], [22 x double]* getelementptr inbounds ([4 x %struct.III_psy_xmin], [4 x %struct.III_psy_xmin]* @L3psycho_anal.thm, i32 0, i64 0, i32 0), i32 0, i64 %idxprom1711
  %1081 = load double, double* %arrayidx1712, align 8, !tbaa !7
  br label %cond.end.1716

cond.false.1713:                                  ; preds = %for.body.1703
  %1082 = load i32, i32* %sb, align 4, !tbaa !5
  %idxprom1714 = sext i32 %1082 to i64
  %arrayidx1715 = getelementptr inbounds [22 x double], [22 x double]* getelementptr inbounds ([4 x %struct.III_psy_xmin], [4 x %struct.III_psy_xmin]* @L3psycho_anal.thm, i32 0, i64 1, i32 0), i32 0, i64 %idxprom1714
  %1083 = load double, double* %arrayidx1715, align 8, !tbaa !7
  br label %cond.end.1716

cond.end.1716:                                    ; preds = %cond.false.1713, %cond.true.1710
  %cond1717 = phi double [ %1081, %cond.true.1710 ], [ %1083, %cond.false.1713 ]
  store double %cond1717, double* %x1, align 8, !tbaa !7
  %1084 = load i32, i32* %sb, align 4, !tbaa !5
  %idxprom1718 = sext i32 %1084 to i64
  %arrayidx1719 = getelementptr inbounds [22 x double], [22 x double]* getelementptr inbounds ([4 x %struct.III_psy_xmin], [4 x %struct.III_psy_xmin]* @L3psycho_anal.thm, i32 0, i64 0, i32 0), i32 0, i64 %idxprom1718
  %1085 = load double, double* %arrayidx1719, align 8, !tbaa !7
  %1086 = load i32, i32* %sb, align 4, !tbaa !5
  %idxprom1720 = sext i32 %1086 to i64
  %arrayidx1721 = getelementptr inbounds [22 x double], [22 x double]* getelementptr inbounds ([4 x %struct.III_psy_xmin], [4 x %struct.III_psy_xmin]* @L3psycho_anal.thm, i32 0, i64 1, i32 0), i32 0, i64 %idxprom1720
  %1087 = load double, double* %arrayidx1721, align 8, !tbaa !7
  %cmp1722 = fcmp ogt double %1085, %1087
  br i1 %cmp1722, label %cond.true.1724, label %cond.false.1727

cond.true.1724:                                   ; preds = %cond.end.1716
  %1088 = load i32, i32* %sb, align 4, !tbaa !5
  %idxprom1725 = sext i32 %1088 to i64
  %arrayidx1726 = getelementptr inbounds [22 x double], [22 x double]* getelementptr inbounds ([4 x %struct.III_psy_xmin], [4 x %struct.III_psy_xmin]* @L3psycho_anal.thm, i32 0, i64 0, i32 0), i32 0, i64 %idxprom1725
  %1089 = load double, double* %arrayidx1726, align 8, !tbaa !7
  br label %cond.end.1730

cond.false.1727:                                  ; preds = %cond.end.1716
  %1090 = load i32, i32* %sb, align 4, !tbaa !5
  %idxprom1728 = sext i32 %1090 to i64
  %arrayidx1729 = getelementptr inbounds [22 x double], [22 x double]* getelementptr inbounds ([4 x %struct.III_psy_xmin], [4 x %struct.III_psy_xmin]* @L3psycho_anal.thm, i32 0, i64 1, i32 0), i32 0, i64 %idxprom1728
  %1091 = load double, double* %arrayidx1729, align 8, !tbaa !7
  br label %cond.end.1730

cond.end.1730:                                    ; preds = %cond.false.1727, %cond.true.1724
  %cond1731 = phi double [ %1089, %cond.true.1724 ], [ %1091, %cond.false.1727 ]
  store double %cond1731, double* %x2, align 8, !tbaa !7
  %1092 = load double, double* %x2, align 8, !tbaa !7
  %1093 = load double, double* %x1, align 8, !tbaa !7
  %mul1732 = fmul double 1.000000e+03, %1093
  %cmp1733 = fcmp oge double %1092, %mul1732
  br i1 %cmp1733, label %if.then.1735, label %if.else.1736

if.then.1735:                                     ; preds = %cond.end.1730
  store double 3.000000e+00, double* %db, align 8, !tbaa !7
  br label %if.end.1739

if.else.1736:                                     ; preds = %cond.end.1730
  %1094 = load double, double* %x2, align 8, !tbaa !7
  %1095 = load double, double* %x1, align 8, !tbaa !7
  %div1737 = fdiv double %1094, %1095
  %call1738 = call double @log10(double %div1737) #1
  store double %call1738, double* %db, align 8, !tbaa !7
  br label %if.end.1739

if.end.1739:                                      ; preds = %if.else.1736, %if.then.1735
  %1096 = load double, double* %db, align 8, !tbaa !7
  %1097 = load double, double* %sidetot, align 8, !tbaa !7
  %add1740 = fadd double %1097, %1096
  store double %add1740, double* %sidetot, align 8, !tbaa !7
  %1098 = load double, double* %tot, align 8, !tbaa !7
  %inc1741 = fadd double %1098, 1.000000e+00
  store double %inc1741, double* %tot, align 8, !tbaa !7
  br label %for.inc.1742

for.inc.1742:                                     ; preds = %if.end.1739
  %1099 = load i32, i32* %sb, align 4, !tbaa !5
  %inc1743 = add nsw i32 %1099, 1
  store i32 %inc1743, i32* %sb, align 4, !tbaa !5
  br label %for.cond.1700

for.end.1744:                                     ; preds = %for.cond.1700
  %1100 = load double, double* %sidetot, align 8, !tbaa !7
  %1101 = load double, double* %tot, align 8, !tbaa !7
  %div1745 = fdiv double %1100, %1101
  %mul1746 = fmul double %div1745, 7.000000e-01
  store double %mul1746, double* %ms_ratio_l, align 8, !tbaa !7
  %1102 = load double, double* %ms_ratio_l, align 8, !tbaa !7
  %cmp1747 = fcmp olt double %1102, 5.000000e-01
  br i1 %cmp1747, label %cond.true.1749, label %cond.false.1750

cond.true.1749:                                   ; preds = %for.end.1744
  %1103 = load double, double* %ms_ratio_l, align 8, !tbaa !7
  br label %cond.end.1751

cond.false.1750:                                  ; preds = %for.end.1744
  br label %cond.end.1751

cond.end.1751:                                    ; preds = %cond.false.1750, %cond.true.1749
  %cond1752 = phi double [ %1103, %cond.true.1749 ], [ 5.000000e-01, %cond.false.1750 ]
  store double %cond1752, double* %ms_ratio_l, align 8, !tbaa !7
  store double 0.000000e+00, double* %sidetot, align 8, !tbaa !7
  store double 0.000000e+00, double* %tot, align 8, !tbaa !7
  store i32 0, i32* %sblock, align 4, !tbaa !5
  br label %for.cond.1753

for.cond.1753:                                    ; preds = %for.inc.1818, %cond.end.1751
  %1104 = load i32, i32* %sblock, align 4, !tbaa !5
  %cmp1754 = icmp slt i32 %1104, 3
  br i1 %cmp1754, label %for.body.1756, label %for.end.1820

for.body.1756:                                    ; preds = %for.cond.1753
  store i32 3, i32* %sb, align 4, !tbaa !5
  br label %for.cond.1757

for.cond.1757:                                    ; preds = %for.inc.1815, %for.body.1756
  %1105 = load i32, i32* %sb, align 4, !tbaa !5
  %cmp1758 = icmp slt i32 %1105, 12
  br i1 %cmp1758, label %for.body.1760, label %for.end.1817

for.body.1760:                                    ; preds = %for.cond.1757
  %1106 = load i32, i32* %sblock, align 4, !tbaa !5
  %idxprom1761 = sext i32 %1106 to i64
  %1107 = load i32, i32* %sb, align 4, !tbaa !5
  %idxprom1762 = sext i32 %1107 to i64
  %arrayidx1763 = getelementptr inbounds [13 x [3 x double]], [13 x [3 x double]]* getelementptr inbounds ([4 x %struct.III_psy_xmin], [4 x %struct.III_psy_xmin]* @L3psycho_anal.thm, i32 0, i64 0, i32 1), i32 0, i64 %idxprom1762
  %arrayidx1764 = getelementptr inbounds [3 x double], [3 x double]* %arrayidx1763, i32 0, i64 %idxprom1761
  %1108 = load double, double* %arrayidx1764, align 8, !tbaa !7
  %1109 = load i32, i32* %sblock, align 4, !tbaa !5
  %idxprom1765 = sext i32 %1109 to i64
  %1110 = load i32, i32* %sb, align 4, !tbaa !5
  %idxprom1766 = sext i32 %1110 to i64
  %arrayidx1767 = getelementptr inbounds [13 x [3 x double]], [13 x [3 x double]]* getelementptr inbounds ([4 x %struct.III_psy_xmin], [4 x %struct.III_psy_xmin]* @L3psycho_anal.thm, i32 0, i64 1, i32 1), i32 0, i64 %idxprom1766
  %arrayidx1768 = getelementptr inbounds [3 x double], [3 x double]* %arrayidx1767, i32 0, i64 %idxprom1765
  %1111 = load double, double* %arrayidx1768, align 8, !tbaa !7
  %cmp1769 = fcmp olt double %1108, %1111
  br i1 %cmp1769, label %cond.true.1771, label %cond.false.1776

cond.true.1771:                                   ; preds = %for.body.1760
  %1112 = load i32, i32* %sblock, align 4, !tbaa !5
  %idxprom1772 = sext i32 %1112 to i64
  %1113 = load i32, i32* %sb, align 4, !tbaa !5
  %idxprom1773 = sext i32 %1113 to i64
  %arrayidx1774 = getelementptr inbounds [13 x [3 x double]], [13 x [3 x double]]* getelementptr inbounds ([4 x %struct.III_psy_xmin], [4 x %struct.III_psy_xmin]* @L3psycho_anal.thm, i32 0, i64 0, i32 1), i32 0, i64 %idxprom1773
  %arrayidx1775 = getelementptr inbounds [3 x double], [3 x double]* %arrayidx1774, i32 0, i64 %idxprom1772
  %1114 = load double, double* %arrayidx1775, align 8, !tbaa !7
  br label %cond.end.1781

cond.false.1776:                                  ; preds = %for.body.1760
  %1115 = load i32, i32* %sblock, align 4, !tbaa !5
  %idxprom1777 = sext i32 %1115 to i64
  %1116 = load i32, i32* %sb, align 4, !tbaa !5
  %idxprom1778 = sext i32 %1116 to i64
  %arrayidx1779 = getelementptr inbounds [13 x [3 x double]], [13 x [3 x double]]* getelementptr inbounds ([4 x %struct.III_psy_xmin], [4 x %struct.III_psy_xmin]* @L3psycho_anal.thm, i32 0, i64 1, i32 1), i32 0, i64 %idxprom1778
  %arrayidx1780 = getelementptr inbounds [3 x double], [3 x double]* %arrayidx1779, i32 0, i64 %idxprom1777
  %1117 = load double, double* %arrayidx1780, align 8, !tbaa !7
  br label %cond.end.1781

cond.end.1781:                                    ; preds = %cond.false.1776, %cond.true.1771
  %cond1782 = phi double [ %1114, %cond.true.1771 ], [ %1117, %cond.false.1776 ]
  store double %cond1782, double* %x1, align 8, !tbaa !7
  %1118 = load i32, i32* %sblock, align 4, !tbaa !5
  %idxprom1783 = sext i32 %1118 to i64
  %1119 = load i32, i32* %sb, align 4, !tbaa !5
  %idxprom1784 = sext i32 %1119 to i64
  %arrayidx1785 = getelementptr inbounds [13 x [3 x double]], [13 x [3 x double]]* getelementptr inbounds ([4 x %struct.III_psy_xmin], [4 x %struct.III_psy_xmin]* @L3psycho_anal.thm, i32 0, i64 0, i32 1), i32 0, i64 %idxprom1784
  %arrayidx1786 = getelementptr inbounds [3 x double], [3 x double]* %arrayidx1785, i32 0, i64 %idxprom1783
  %1120 = load double, double* %arrayidx1786, align 8, !tbaa !7
  %1121 = load i32, i32* %sblock, align 4, !tbaa !5
  %idxprom1787 = sext i32 %1121 to i64
  %1122 = load i32, i32* %sb, align 4, !tbaa !5
  %idxprom1788 = sext i32 %1122 to i64
  %arrayidx1789 = getelementptr inbounds [13 x [3 x double]], [13 x [3 x double]]* getelementptr inbounds ([4 x %struct.III_psy_xmin], [4 x %struct.III_psy_xmin]* @L3psycho_anal.thm, i32 0, i64 1, i32 1), i32 0, i64 %idxprom1788
  %arrayidx1790 = getelementptr inbounds [3 x double], [3 x double]* %arrayidx1789, i32 0, i64 %idxprom1787
  %1123 = load double, double* %arrayidx1790, align 8, !tbaa !7
  %cmp1791 = fcmp ogt double %1120, %1123
  br i1 %cmp1791, label %cond.true.1793, label %cond.false.1798

cond.true.1793:                                   ; preds = %cond.end.1781
  %1124 = load i32, i32* %sblock, align 4, !tbaa !5
  %idxprom1794 = sext i32 %1124 to i64
  %1125 = load i32, i32* %sb, align 4, !tbaa !5
  %idxprom1795 = sext i32 %1125 to i64
  %arrayidx1796 = getelementptr inbounds [13 x [3 x double]], [13 x [3 x double]]* getelementptr inbounds ([4 x %struct.III_psy_xmin], [4 x %struct.III_psy_xmin]* @L3psycho_anal.thm, i32 0, i64 0, i32 1), i32 0, i64 %idxprom1795
  %arrayidx1797 = getelementptr inbounds [3 x double], [3 x double]* %arrayidx1796, i32 0, i64 %idxprom1794
  %1126 = load double, double* %arrayidx1797, align 8, !tbaa !7
  br label %cond.end.1803

cond.false.1798:                                  ; preds = %cond.end.1781
  %1127 = load i32, i32* %sblock, align 4, !tbaa !5
  %idxprom1799 = sext i32 %1127 to i64
  %1128 = load i32, i32* %sb, align 4, !tbaa !5
  %idxprom1800 = sext i32 %1128 to i64
  %arrayidx1801 = getelementptr inbounds [13 x [3 x double]], [13 x [3 x double]]* getelementptr inbounds ([4 x %struct.III_psy_xmin], [4 x %struct.III_psy_xmin]* @L3psycho_anal.thm, i32 0, i64 1, i32 1), i32 0, i64 %idxprom1800
  %arrayidx1802 = getelementptr inbounds [3 x double], [3 x double]* %arrayidx1801, i32 0, i64 %idxprom1799
  %1129 = load double, double* %arrayidx1802, align 8, !tbaa !7
  br label %cond.end.1803

cond.end.1803:                                    ; preds = %cond.false.1798, %cond.true.1793
  %cond1804 = phi double [ %1126, %cond.true.1793 ], [ %1129, %cond.false.1798 ]
  store double %cond1804, double* %x2, align 8, !tbaa !7
  %1130 = load double, double* %x2, align 8, !tbaa !7
  %1131 = load double, double* %x1, align 8, !tbaa !7
  %mul1805 = fmul double 1.000000e+03, %1131
  %cmp1806 = fcmp oge double %1130, %mul1805
  br i1 %cmp1806, label %if.then.1808, label %if.else.1809

if.then.1808:                                     ; preds = %cond.end.1803
  store double 3.000000e+00, double* %db, align 8, !tbaa !7
  br label %if.end.1812

if.else.1809:                                     ; preds = %cond.end.1803
  %1132 = load double, double* %x2, align 8, !tbaa !7
  %1133 = load double, double* %x1, align 8, !tbaa !7
  %div1810 = fdiv double %1132, %1133
  %call1811 = call double @log10(double %div1810) #1
  store double %call1811, double* %db, align 8, !tbaa !7
  br label %if.end.1812

if.end.1812:                                      ; preds = %if.else.1809, %if.then.1808
  %1134 = load double, double* %db, align 8, !tbaa !7
  %1135 = load double, double* %sidetot, align 8, !tbaa !7
  %add1813 = fadd double %1135, %1134
  store double %add1813, double* %sidetot, align 8, !tbaa !7
  %1136 = load double, double* %tot, align 8, !tbaa !7
  %inc1814 = fadd double %1136, 1.000000e+00
  store double %inc1814, double* %tot, align 8, !tbaa !7
  br label %for.inc.1815

for.inc.1815:                                     ; preds = %if.end.1812
  %1137 = load i32, i32* %sb, align 4, !tbaa !5
  %inc1816 = add nsw i32 %1137, 1
  store i32 %inc1816, i32* %sb, align 4, !tbaa !5
  br label %for.cond.1757

for.end.1817:                                     ; preds = %for.cond.1757
  br label %for.inc.1818

for.inc.1818:                                     ; preds = %for.end.1817
  %1138 = load i32, i32* %sblock, align 4, !tbaa !5
  %inc1819 = add nsw i32 %1138, 1
  store i32 %inc1819, i32* %sblock, align 4, !tbaa !5
  br label %for.cond.1753

for.end.1820:                                     ; preds = %for.cond.1753
  %1139 = load double, double* %sidetot, align 8, !tbaa !7
  %1140 = load double, double* %tot, align 8, !tbaa !7
  %div1821 = fdiv double %1139, %1140
  %mul1822 = fmul double %div1821, 7.000000e-01
  store double %mul1822, double* %ms_ratio_s, align 8, !tbaa !7
  %1141 = load double, double* %ms_ratio_s, align 8, !tbaa !7
  %cmp1823 = fcmp olt double %1141, 5.000000e-01
  br i1 %cmp1823, label %cond.true.1825, label %cond.false.1826

cond.true.1825:                                   ; preds = %for.end.1820
  %1142 = load double, double* %ms_ratio_s, align 8, !tbaa !7
  br label %cond.end.1827

cond.false.1826:                                  ; preds = %for.end.1820
  br label %cond.end.1827

cond.end.1827:                                    ; preds = %cond.false.1826, %cond.true.1825
  %cond1828 = phi double [ %1142, %cond.true.1825 ], [ 5.000000e-01, %cond.false.1826 ]
  store double %cond1828, double* %ms_ratio_s, align 8, !tbaa !7
  %1143 = bitcast double* %tot to i8*
  call void @llvm.lifetime.end(i64 8, i8* %1143) #1
  %1144 = bitcast double* %sidetot to i8*
  call void @llvm.lifetime.end(i64 8, i8* %1144) #1
  %1145 = bitcast double* %x2 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %1145) #1
  %1146 = bitcast double* %x1 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %1146) #1
  %1147 = bitcast double* %db to i8*
  call void @llvm.lifetime.end(i64 8, i8* %1147) #1
  br label %if.end.1829

if.end.1829:                                      ; preds = %cond.end.1827, %if.end.1690
  store i32 0, i32* %chn, align 4, !tbaa !5
  br label %for.cond.1830

for.cond.1830:                                    ; preds = %for.inc.1837, %if.end.1829
  %1148 = load i32, i32* %chn, align 4, !tbaa !5
  %1149 = load %struct.lame_global_flags*, %struct.lame_global_flags** %gfp.addr, align 8, !tbaa !1
  %stereo1831 = getelementptr inbounds %struct.lame_global_flags, %struct.lame_global_flags* %1149, i32 0, i32 46
  %1150 = load i32, i32* %stereo1831, align 4, !tbaa !17
  %cmp1832 = icmp slt i32 %1148, %1150
  br i1 %cmp1832, label %for.body.1834, label %for.end.1839

for.body.1834:                                    ; preds = %for.cond.1830
  %1151 = load i32, i32* %chn, align 4, !tbaa !5
  %idxprom1835 = sext i32 %1151 to i64
  %arrayidx1836 = getelementptr inbounds [2 x i32], [2 x i32]* %blocktype, i32 0, i64 %idxprom1835
  store i32 0, i32* %arrayidx1836, align 4, !tbaa !5
  br label %for.inc.1837

for.inc.1837:                                     ; preds = %for.body.1834
  %1152 = load i32, i32* %chn, align 4, !tbaa !5
  %inc1838 = add nsw i32 %1152, 1
  store i32 %inc1838, i32* %chn, align 4, !tbaa !5
  br label %for.cond.1830

for.end.1839:                                     ; preds = %for.cond.1830
  %1153 = load %struct.lame_global_flags*, %struct.lame_global_flags** %gfp.addr, align 8, !tbaa !1
  %stereo1840 = getelementptr inbounds %struct.lame_global_flags, %struct.lame_global_flags* %1153, i32 0, i32 46
  %1154 = load i32, i32* %stereo1840, align 4, !tbaa !17
  %cmp1841 = icmp eq i32 %1154, 2
  br i1 %cmp1841, label %if.then.1843, label %if.end.1860

if.then.1843:                                     ; preds = %for.end.1839
  %1155 = load %struct.lame_global_flags*, %struct.lame_global_flags** %gfp.addr, align 8, !tbaa !1
  %allow_diff_short = getelementptr inbounds %struct.lame_global_flags, %struct.lame_global_flags* %1155, i32 0, i32 36
  %1156 = load i32, i32* %allow_diff_short, align 4, !tbaa !22
  %tobool1844 = icmp ne i32 %1156, 0
  br i1 %tobool1844, label %lor.lhs.false, label %if.then.1848

lor.lhs.false:                                    ; preds = %if.then.1843
  %1157 = load %struct.lame_global_flags*, %struct.lame_global_flags** %gfp.addr, align 8, !tbaa !1
  %mode1845 = getelementptr inbounds %struct.lame_global_flags, %struct.lame_global_flags* %1157, i32 0, i32 8
  %1158 = load i32, i32* %mode1845, align 4, !tbaa !18
  %cmp1846 = icmp eq i32 %1158, 1
  br i1 %cmp1846, label %if.then.1848, label %if.end.1859

if.then.1848:                                     ; preds = %lor.lhs.false, %if.then.1843
  %1159 = bitcast i32* %bothlong to i8*
  call void @llvm.lifetime.start(i64 4, i8* %1159) #1
  %arrayidx1850 = getelementptr inbounds [2 x i32], [2 x i32]* %uselongblock, i32 0, i64 0
  %1160 = load i32, i32* %arrayidx1850, align 4, !tbaa !5
  %tobool1851 = icmp ne i32 %1160, 0
  br i1 %tobool1851, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %if.then.1848
  %arrayidx1852 = getelementptr inbounds [2 x i32], [2 x i32]* %uselongblock, i32 0, i64 1
  %1161 = load i32, i32* %arrayidx1852, align 4, !tbaa !5
  %tobool1853 = icmp ne i32 %1161, 0
  br label %land.end

land.end:                                         ; preds = %land.rhs, %if.then.1848
  %1162 = phi i1 [ false, %if.then.1848 ], [ %tobool1853, %land.rhs ]
  %land.ext = zext i1 %1162 to i32
  store i32 %land.ext, i32* %bothlong, align 4, !tbaa !5
  %1163 = load i32, i32* %bothlong, align 4, !tbaa !5
  %tobool1854 = icmp ne i32 %1163, 0
  br i1 %tobool1854, label %if.end.1858, label %if.then.1855

if.then.1855:                                     ; preds = %land.end
  %arrayidx1856 = getelementptr inbounds [2 x i32], [2 x i32]* %uselongblock, i32 0, i64 0
  store i32 0, i32* %arrayidx1856, align 4, !tbaa !5
  %arrayidx1857 = getelementptr inbounds [2 x i32], [2 x i32]* %uselongblock, i32 0, i64 1
  store i32 0, i32* %arrayidx1857, align 4, !tbaa !5
  br label %if.end.1858

if.end.1858:                                      ; preds = %if.then.1855, %land.end
  %1164 = bitcast i32* %bothlong to i8*
  call void @llvm.lifetime.end(i64 4, i8* %1164) #1
  br label %if.end.1859

if.end.1859:                                      ; preds = %if.end.1858, %lor.lhs.false
  br label %if.end.1860

if.end.1860:                                      ; preds = %if.end.1859, %for.end.1839
  store i32 0, i32* %chn, align 4, !tbaa !5
  br label %for.cond.1861

for.cond.1861:                                    ; preds = %for.inc.1908, %if.end.1860
  %1165 = load i32, i32* %chn, align 4, !tbaa !5
  %1166 = load %struct.lame_global_flags*, %struct.lame_global_flags** %gfp.addr, align 8, !tbaa !1
  %stereo1862 = getelementptr inbounds %struct.lame_global_flags, %struct.lame_global_flags* %1166, i32 0, i32 46
  %1167 = load i32, i32* %stereo1862, align 4, !tbaa !17
  %cmp1863 = icmp slt i32 %1165, %1167
  br i1 %cmp1863, label %for.body.1865, label %for.end.1910

for.body.1865:                                    ; preds = %for.cond.1861
  %1168 = load i32, i32* %chn, align 4, !tbaa !5
  %idxprom1866 = sext i32 %1168 to i64
  %arrayidx1867 = getelementptr inbounds [2 x i32], [2 x i32]* %uselongblock, i32 0, i64 %idxprom1866
  %1169 = load i32, i32* %arrayidx1867, align 4, !tbaa !5
  %tobool1868 = icmp ne i32 %1169, 0
  br i1 %tobool1868, label %if.then.1869, label %if.else.1880

if.then.1869:                                     ; preds = %for.body.1865
  %1170 = load i32, i32* %chn, align 4, !tbaa !5
  %idxprom1870 = sext i32 %1170 to i64
  %arrayidx1871 = getelementptr inbounds [2 x i32], [2 x i32]* @L3psycho_anal.blocktype_old, i32 0, i64 %idxprom1870
  %1171 = load i32, i32* %arrayidx1871, align 4, !tbaa !5
  switch i32 %1171, label %sw.epilog.1879 [
    i32 0, label %sw.bb
    i32 3, label %sw.bb
    i32 2, label %sw.bb.1874
    i32 1, label %sw.bb.1877
  ]

sw.bb:                                            ; preds = %if.then.1869, %if.then.1869
  %1172 = load i32, i32* %chn, align 4, !tbaa !5
  %idxprom1872 = sext i32 %1172 to i64
  %arrayidx1873 = getelementptr inbounds [2 x i32], [2 x i32]* %blocktype, i32 0, i64 %idxprom1872
  store i32 0, i32* %arrayidx1873, align 4, !tbaa !5
  br label %sw.epilog.1879

sw.bb.1874:                                       ; preds = %if.then.1869
  %1173 = load i32, i32* %chn, align 4, !tbaa !5
  %idxprom1875 = sext i32 %1173 to i64
  %arrayidx1876 = getelementptr inbounds [2 x i32], [2 x i32]* %blocktype, i32 0, i64 %idxprom1875
  store i32 3, i32* %arrayidx1876, align 4, !tbaa !5
  br label %sw.epilog.1879

sw.bb.1877:                                       ; preds = %if.then.1869
  %1174 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !tbaa !1
  %call1878 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %1174, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.1, i32 0, i32 0))
  call void @abort() #6
  unreachable

sw.epilog.1879:                                   ; preds = %if.then.1869, %sw.bb.1874, %sw.bb
  br label %if.end.1899

if.else.1880:                                     ; preds = %for.body.1865
  %1175 = load i32, i32* %chn, align 4, !tbaa !5
  %idxprom1881 = sext i32 %1175 to i64
  %arrayidx1882 = getelementptr inbounds [2 x i32], [2 x i32]* %blocktype, i32 0, i64 %idxprom1881
  store i32 2, i32* %arrayidx1882, align 4, !tbaa !5
  %1176 = load i32, i32* %chn, align 4, !tbaa !5
  %idxprom1883 = sext i32 %1176 to i64
  %arrayidx1884 = getelementptr inbounds [2 x i32], [2 x i32]* @L3psycho_anal.blocktype_old, i32 0, i64 %idxprom1883
  %1177 = load i32, i32* %arrayidx1884, align 4, !tbaa !5
  %cmp1885 = icmp eq i32 %1177, 0
  br i1 %cmp1885, label %if.then.1887, label %if.end.1890

if.then.1887:                                     ; preds = %if.else.1880
  %1178 = load i32, i32* %chn, align 4, !tbaa !5
  %idxprom1888 = sext i32 %1178 to i64
  %arrayidx1889 = getelementptr inbounds [2 x i32], [2 x i32]* @L3psycho_anal.blocktype_old, i32 0, i64 %idxprom1888
  store i32 1, i32* %arrayidx1889, align 4, !tbaa !5
  br label %if.end.1890

if.end.1890:                                      ; preds = %if.then.1887, %if.else.1880
  %1179 = load i32, i32* %chn, align 4, !tbaa !5
  %idxprom1891 = sext i32 %1179 to i64
  %arrayidx1892 = getelementptr inbounds [2 x i32], [2 x i32]* @L3psycho_anal.blocktype_old, i32 0, i64 %idxprom1891
  %1180 = load i32, i32* %arrayidx1892, align 4, !tbaa !5
  %cmp1893 = icmp eq i32 %1180, 3
  br i1 %cmp1893, label %if.then.1895, label %if.end.1898

if.then.1895:                                     ; preds = %if.end.1890
  %1181 = load i32, i32* %chn, align 4, !tbaa !5
  %idxprom1896 = sext i32 %1181 to i64
  %arrayidx1897 = getelementptr inbounds [2 x i32], [2 x i32]* @L3psycho_anal.blocktype_old, i32 0, i64 %idxprom1896
  store i32 2, i32* %arrayidx1897, align 4, !tbaa !5
  br label %if.end.1898

if.end.1898:                                      ; preds = %if.then.1895, %if.end.1890
  br label %if.end.1899

if.end.1899:                                      ; preds = %if.end.1898, %sw.epilog.1879
  %1182 = load i32, i32* %chn, align 4, !tbaa !5
  %idxprom1900 = sext i32 %1182 to i64
  %arrayidx1901 = getelementptr inbounds [2 x i32], [2 x i32]* @L3psycho_anal.blocktype_old, i32 0, i64 %idxprom1900
  %1183 = load i32, i32* %arrayidx1901, align 4, !tbaa !5
  %1184 = load i32, i32* %chn, align 4, !tbaa !5
  %idxprom1902 = sext i32 %1184 to i64
  %1185 = load i32*, i32** %blocktype_d.addr, align 8, !tbaa !1
  %arrayidx1903 = getelementptr inbounds i32, i32* %1185, i64 %idxprom1902
  store i32 %1183, i32* %arrayidx1903, align 4, !tbaa !5
  %1186 = load i32, i32* %chn, align 4, !tbaa !5
  %idxprom1904 = sext i32 %1186 to i64
  %arrayidx1905 = getelementptr inbounds [2 x i32], [2 x i32]* %blocktype, i32 0, i64 %idxprom1904
  %1187 = load i32, i32* %arrayidx1905, align 4, !tbaa !5
  %1188 = load i32, i32* %chn, align 4, !tbaa !5
  %idxprom1906 = sext i32 %1188 to i64
  %arrayidx1907 = getelementptr inbounds [2 x i32], [2 x i32]* @L3psycho_anal.blocktype_old, i32 0, i64 %idxprom1906
  store i32 %1187, i32* %arrayidx1907, align 4, !tbaa !5
  br label %for.inc.1908

for.inc.1908:                                     ; preds = %if.end.1899
  %1189 = load i32, i32* %chn, align 4, !tbaa !5
  %inc1909 = add nsw i32 %1189, 1
  store i32 %inc1909, i32* %chn, align 4, !tbaa !5
  br label %for.cond.1861

for.end.1910:                                     ; preds = %for.cond.1861
  %1190 = load i32*, i32** %blocktype_d.addr, align 8, !tbaa !1
  %arrayidx1911 = getelementptr inbounds i32, i32* %1190, i64 0
  %1191 = load i32, i32* %arrayidx1911, align 4, !tbaa !5
  %cmp1912 = icmp eq i32 %1191, 2
  br i1 %cmp1912, label %if.then.1914, label %if.else.1915

if.then.1914:                                     ; preds = %for.end.1910
  %1192 = load double, double* @L3psycho_anal.ms_ratio_s_old, align 8, !tbaa !7
  %1193 = load double*, double** %ms_ratio.addr, align 8, !tbaa !1
  store double %1192, double* %1193, align 8, !tbaa !7
  br label %if.end.1916

if.else.1915:                                     ; preds = %for.end.1910
  %1194 = load double, double* @L3psycho_anal.ms_ratio_l_old, align 8, !tbaa !7
  %1195 = load double*, double** %ms_ratio.addr, align 8, !tbaa !1
  store double %1194, double* %1195, align 8, !tbaa !7
  br label %if.end.1916

if.end.1916:                                      ; preds = %if.else.1915, %if.then.1914
  %1196 = load double, double* %ms_ratio_s, align 8, !tbaa !7
  store double %1196, double* @L3psycho_anal.ms_ratio_s_old, align 8, !tbaa !7
  %1197 = load double, double* %ms_ratio_l, align 8, !tbaa !7
  store double %1197, double* @L3psycho_anal.ms_ratio_l_old, align 8, !tbaa !7
  %1198 = load double, double* %ms_ratio_l, align 8, !tbaa !7
  %1199 = load double*, double** %ms_ratio_next.addr, align 8, !tbaa !1
  store double %1198, double* %1199, align 8, !tbaa !7
  %1200 = load i32, i32* %numchn, align 4, !tbaa !5
  %cmp1917 = icmp eq i32 %1200, 4
  br i1 %cmp1917, label %if.then.1919, label %if.else.1932

if.then.1919:                                     ; preds = %if.end.1916
  %1201 = bitcast float* %tmp1921 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %1201) #1
  %arrayidx1922 = getelementptr inbounds [4 x float], [4 x float]* %tot_ener, i32 0, i64 3
  %1202 = load float, float* %arrayidx1922, align 4, !tbaa !15
  %arrayidx1923 = getelementptr inbounds [4 x float], [4 x float]* %tot_ener, i32 0, i64 2
  %1203 = load float, float* %arrayidx1923, align 4, !tbaa !15
  %add1924 = fadd float %1202, %1203
  store float %add1924, float* %tmp1921, align 4, !tbaa !15
  %1204 = load double, double* @L3psycho_anal.ms_ener_ratio_old, align 8, !tbaa !7
  %1205 = load double*, double** %ms_ener_ratio.addr, align 8, !tbaa !1
  store double %1204, double* %1205, align 8, !tbaa !7
  store double 0.000000e+00, double* @L3psycho_anal.ms_ener_ratio_old, align 8, !tbaa !7
  %1206 = load float, float* %tmp1921, align 4, !tbaa !15
  %cmp1925 = fcmp ogt float %1206, 0.000000e+00
  br i1 %cmp1925, label %if.then.1927, label %if.end.1931

if.then.1927:                                     ; preds = %if.then.1919
  %arrayidx1928 = getelementptr inbounds [4 x float], [4 x float]* %tot_ener, i32 0, i64 3
  %1207 = load float, float* %arrayidx1928, align 4, !tbaa !15
  %1208 = load float, float* %tmp1921, align 4, !tbaa !15
  %div1929 = fdiv float %1207, %1208
  %conv1930 = fpext float %div1929 to double
  store double %conv1930, double* @L3psycho_anal.ms_ener_ratio_old, align 8, !tbaa !7
  br label %if.end.1931

if.end.1931:                                      ; preds = %if.then.1927, %if.then.1919
  %1209 = bitcast float* %tmp1921 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %1209) #1
  br label %if.end.1933

if.else.1932:                                     ; preds = %if.end.1916
  %1210 = load double*, double** %ms_ener_ratio.addr, align 8, !tbaa !1
  store double 0.000000e+00, double* %1210, align 8, !tbaa !7
  br label %if.end.1933

if.end.1933:                                      ; preds = %if.else.1932, %if.end.1931
  %1211 = bitcast float* %cwlimit to i8*
  call void @llvm.lifetime.end(i64 4, i8* %1211) #1
  %1212 = bitcast i32* %sblock to i8*
  call void @llvm.lifetime.end(i64 4, i8* %1212) #1
  %1213 = bitcast i32* %sb to i8*
  call void @llvm.lifetime.end(i64 4, i8* %1213) #1
  %1214 = bitcast i32* %k to i8*
  call void @llvm.lifetime.end(i64 4, i8* %1214) #1
  %1215 = bitcast i32* %j to i8*
  call void @llvm.lifetime.end(i64 4, i8* %1215) #1
  %1216 = bitcast i32* %i to i8*
  call void @llvm.lifetime.end(i64 4, i8* %1216) #1
  %1217 = bitcast i32* %b to i8*
  call void @llvm.lifetime.end(i64 4, i8* %1217) #1
  %1218 = bitcast i32* %chn to i8*
  call void @llvm.lifetime.end(i64 4, i8* %1218) #1
  %1219 = bitcast i32* %numchn to i8*
  call void @llvm.lifetime.end(i64 4, i8* %1219) #1
  %1220 = bitcast [2 x i32]* %uselongblock to i8*
  call void @llvm.lifetime.end(i64 8, i8* %1220) #1
  %1221 = bitcast [2 x i32]* %blocktype to i8*
  call void @llvm.lifetime.end(i64 8, i8* %1221) #1
  %1222 = bitcast double* %ms_ratio_s to i8*
  call void @llvm.lifetime.end(i64 8, i8* %1222) #1
  %1223 = bitcast double* %ms_ratio_l to i8*
  call void @llvm.lifetime.end(i64 8, i8* %1223) #1
  %1224 = bitcast [4 x float]* %tot_ener to i8*
  call void @llvm.lifetime.end(i64 16, i8* %1224) #1
  %1225 = bitcast [3 x [256 x float]]** %wsamp_s to i8*
  call void @llvm.lifetime.end(i64 8, i8* %1225) #1
  %1226 = bitcast [1024 x float]** %wsamp_l to i8*
  call void @llvm.lifetime.end(i64 8, i8* %1226) #1
  ret void
}

; Function Attrs: nounwind
declare void @llvm.lifetime.start(i64, i8* nocapture) #1

declare i32 @fprintf(%struct._IO_FILE*, i8*, ...) #2

; Function Attrs: noreturn nounwind
declare void @exit(i32) #3

; Function Attrs: nounwind
declare void @llvm.memset.p0i8.i64(i8* nocapture, i8, i64, i32, i1) #1

; Function Attrs: nounwind
declare double @cos(double) #4

; Function Attrs: nounwind
declare double @pow(double, double) #4

; Function Attrs: nounwind
declare void @llvm.lifetime.end(i64, i8* nocapture) #1

; Function Attrs: nounwind uwtable
define void @L3para_read(double %sfreq, i32* %numlines_l, i32* %numlines_s, i32* %partition_l, double* %minval, double* %qthr_l, [64 x double]* %s3_l, [64 x double]* %s3_s, double* %qthr_s, double* %SNR, i32* %bu_l, i32* %bo_l, double* %w1_l, double* %w2_l, i32* %bu_s, i32* %bo_s, double* %w1_s, double* %w2_s) #0 {
entry:
  %sfreq.addr = alloca double, align 8
  %numlines_l.addr = alloca i32*, align 8
  %numlines_s.addr = alloca i32*, align 8
  %partition_l.addr = alloca i32*, align 8
  %minval.addr = alloca double*, align 8
  %qthr_l.addr = alloca double*, align 8
  %s3_l.addr = alloca [64 x double]*, align 8
  %s3_s.addr = alloca [64 x double]*, align 8
  %qthr_s.addr = alloca double*, align 8
  %SNR.addr = alloca double*, align 8
  %bu_l.addr = alloca i32*, align 8
  %bo_l.addr = alloca i32*, align 8
  %w1_l.addr = alloca double*, align 8
  %w2_l.addr = alloca double*, align 8
  %bu_s.addr = alloca i32*, align 8
  %bo_s.addr = alloca i32*, align 8
  %w1_s.addr = alloca double*, align 8
  %w2_s.addr = alloca double*, align 8
  %freq_tp = alloca double, align 8
  %bval_l = alloca [63 x double], align 16
  %bval_s = alloca [63 x double], align 16
  %cbmax = alloca i32, align 4
  %cbmax_tp = alloca i32, align 4
  %p = alloca double*, align 8
  %sbmax = alloca i32, align 4
  %i = alloca i32, align 4
  %j = alloca i32, align 4
  %k = alloca i32, align 4
  %k2 = alloca i32, align 4
  %loop = alloca i32, align 4
  %part_max = alloca i32, align 4
  %freq_scale = alloca i32, align 4
  %tempx = alloca double, align 8
  %x = alloca double, align 8
  %tempy = alloca double, align 8
  %temp = alloca double, align 8
  %tempx186 = alloca double, align 8
  %x187 = alloca double, align 8
  %tempy188 = alloca double, align 8
  %temp189 = alloca double, align 8
  store double %sfreq, double* %sfreq.addr, align 8, !tbaa !7
  store i32* %numlines_l, i32** %numlines_l.addr, align 8, !tbaa !1
  store i32* %numlines_s, i32** %numlines_s.addr, align 8, !tbaa !1
  store i32* %partition_l, i32** %partition_l.addr, align 8, !tbaa !1
  store double* %minval, double** %minval.addr, align 8, !tbaa !1
  store double* %qthr_l, double** %qthr_l.addr, align 8, !tbaa !1
  store [64 x double]* %s3_l, [64 x double]** %s3_l.addr, align 8, !tbaa !1
  store [64 x double]* %s3_s, [64 x double]** %s3_s.addr, align 8, !tbaa !1
  store double* %qthr_s, double** %qthr_s.addr, align 8, !tbaa !1
  store double* %SNR, double** %SNR.addr, align 8, !tbaa !1
  store i32* %bu_l, i32** %bu_l.addr, align 8, !tbaa !1
  store i32* %bo_l, i32** %bo_l.addr, align 8, !tbaa !1
  store double* %w1_l, double** %w1_l.addr, align 8, !tbaa !1
  store double* %w2_l, double** %w2_l.addr, align 8, !tbaa !1
  store i32* %bu_s, i32** %bu_s.addr, align 8, !tbaa !1
  store i32* %bo_s, i32** %bo_s.addr, align 8, !tbaa !1
  store double* %w1_s, double** %w1_s.addr, align 8, !tbaa !1
  store double* %w2_s, double** %w2_s.addr, align 8, !tbaa !1
  %0 = bitcast double* %freq_tp to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #1
  %1 = bitcast [63 x double]* %bval_l to i8*
  call void @llvm.lifetime.start(i64 504, i8* %1) #1
  %2 = bitcast [63 x double]* %bval_s to i8*
  call void @llvm.lifetime.start(i64 504, i8* %2) #1
  %3 = bitcast i32* %cbmax to i8*
  call void @llvm.lifetime.start(i64 4, i8* %3) #1
  store i32 0, i32* %cbmax, align 4, !tbaa !5
  %4 = bitcast i32* %cbmax_tp to i8*
  call void @llvm.lifetime.start(i64 4, i8* %4) #1
  %5 = bitcast double** %p to i8*
  call void @llvm.lifetime.start(i64 8, i8* %5) #1
  store double* getelementptr inbounds ([0 x double], [0 x double]* @psy_data, i32 0, i32 0), double** %p, align 8, !tbaa !1
  %6 = bitcast i32* %sbmax to i8*
  call void @llvm.lifetime.start(i64 4, i8* %6) #1
  %7 = bitcast i32* %i to i8*
  call void @llvm.lifetime.start(i64 4, i8* %7) #1
  %8 = bitcast i32* %j to i8*
  call void @llvm.lifetime.start(i64 4, i8* %8) #1
  %9 = bitcast i32* %k to i8*
  call void @llvm.lifetime.start(i64 4, i8* %9) #1
  %10 = bitcast i32* %k2 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %10) #1
  %11 = bitcast i32* %loop to i8*
  call void @llvm.lifetime.start(i64 4, i8* %11) #1
  %12 = bitcast i32* %part_max to i8*
  call void @llvm.lifetime.start(i64 4, i8* %12) #1
  %13 = bitcast i32* %freq_scale to i8*
  call void @llvm.lifetime.start(i64 4, i8* %13) #1
  store i32 1, i32* %freq_scale, align 4, !tbaa !5
  store i32 0, i32* %loop, align 4, !tbaa !5
  br label %for.cond

for.cond:                                         ; preds = %for.inc.43, %entry
  %14 = load i32, i32* %loop, align 4, !tbaa !5
  %cmp = icmp slt i32 %14, 6
  br i1 %cmp, label %for.body, label %for.end.45

for.body:                                         ; preds = %for.cond
  %15 = load double*, double** %p, align 8, !tbaa !1
  %incdec.ptr = getelementptr inbounds double, double* %15, i32 1
  store double* %incdec.ptr, double** %p, align 8, !tbaa !1
  %16 = load double, double* %15, align 8, !tbaa !7
  store double %16, double* %freq_tp, align 8, !tbaa !7
  %17 = load double*, double** %p, align 8, !tbaa !1
  %incdec.ptr1 = getelementptr inbounds double, double* %17, i32 1
  store double* %incdec.ptr1, double** %p, align 8, !tbaa !1
  %18 = load double, double* %17, align 8, !tbaa !7
  %conv = fptosi double %18 to i32
  store i32 %conv, i32* %cbmax_tp, align 4, !tbaa !5
  %19 = load i32, i32* %cbmax_tp, align 4, !tbaa !5
  %inc = add nsw i32 %19, 1
  store i32 %inc, i32* %cbmax_tp, align 4, !tbaa !5
  %20 = load double, double* %sfreq.addr, align 8, !tbaa !7
  %21 = load double, double* %freq_tp, align 8, !tbaa !7
  %22 = load i32, i32* %freq_scale, align 4, !tbaa !5
  %conv2 = sitofp i32 %22 to double
  %div = fdiv double %21, %conv2
  %cmp3 = fcmp oeq double %20, %div
  br i1 %cmp3, label %if.then, label %if.else

if.then:                                          ; preds = %for.body
  %23 = load i32, i32* %cbmax_tp, align 4, !tbaa !5
  store i32 %23, i32* %cbmax, align 4, !tbaa !5
  store i32 0, i32* %i, align 4, !tbaa !5
  store i32 0, i32* %k2, align 4, !tbaa !5
  br label %for.cond.5

for.cond.5:                                       ; preds = %for.inc.38, %if.then
  %24 = load i32, i32* %i, align 4, !tbaa !5
  %25 = load i32, i32* %cbmax_tp, align 4, !tbaa !5
  %cmp6 = icmp slt i32 %24, %25
  br i1 %cmp6, label %for.body.8, label %for.end.40

for.body.8:                                       ; preds = %for.cond.5
  %26 = load double*, double** %p, align 8, !tbaa !1
  %incdec.ptr9 = getelementptr inbounds double, double* %26, i32 1
  store double* %incdec.ptr9, double** %p, align 8, !tbaa !1
  %27 = load double, double* %26, align 8, !tbaa !7
  %conv10 = fptosi double %27 to i32
  store i32 %conv10, i32* %j, align 4, !tbaa !5
  %28 = load double*, double** %p, align 8, !tbaa !1
  %incdec.ptr11 = getelementptr inbounds double, double* %28, i32 1
  store double* %incdec.ptr11, double** %p, align 8, !tbaa !1
  %29 = load double, double* %28, align 8, !tbaa !7
  %conv12 = fptosi double %29 to i32
  %30 = load i32, i32* %i, align 4, !tbaa !5
  %idxprom = sext i32 %30 to i64
  %31 = load i32*, i32** %numlines_l.addr, align 8, !tbaa !1
  %arrayidx = getelementptr inbounds i32, i32* %31, i64 %idxprom
  store i32 %conv12, i32* %arrayidx, align 4, !tbaa !5
  %32 = load double*, double** %p, align 8, !tbaa !1
  %incdec.ptr13 = getelementptr inbounds double, double* %32, i32 1
  store double* %incdec.ptr13, double** %p, align 8, !tbaa !1
  %33 = load double, double* %32, align 8, !tbaa !7
  %sub = fsub double %33, 6.000000e+00
  %sub14 = fsub double -0.000000e+00, %sub
  %mul = fmul double %sub14, 0x3FCD791C5F888823
  %call = call double @exp(double %mul) #1
  %34 = load i32, i32* %i, align 4, !tbaa !5
  %idxprom15 = sext i32 %34 to i64
  %35 = load double*, double** %minval.addr, align 8, !tbaa !1
  %arrayidx16 = getelementptr inbounds double, double* %35, i64 %idxprom15
  store double %call, double* %arrayidx16, align 8, !tbaa !7
  %36 = load double*, double** %p, align 8, !tbaa !1
  %incdec.ptr17 = getelementptr inbounds double, double* %36, i32 1
  store double* %incdec.ptr17, double** %p, align 8, !tbaa !1
  %37 = load double, double* %36, align 8, !tbaa !7
  %38 = load i32, i32* %i, align 4, !tbaa !5
  %idxprom18 = sext i32 %38 to i64
  %39 = load double*, double** %qthr_l.addr, align 8, !tbaa !1
  %arrayidx19 = getelementptr inbounds double, double* %39, i64 %idxprom18
  store double %37, double* %arrayidx19, align 8, !tbaa !7
  %40 = load double*, double** %p, align 8, !tbaa !1
  %incdec.ptr20 = getelementptr inbounds double, double* %40, i32 1
  store double* %incdec.ptr20, double** %p, align 8, !tbaa !1
  %41 = load double*, double** %p, align 8, !tbaa !1
  %incdec.ptr21 = getelementptr inbounds double, double* %41, i32 1
  store double* %incdec.ptr21, double** %p, align 8, !tbaa !1
  %42 = load double, double* %41, align 8, !tbaa !7
  %43 = load i32, i32* %i, align 4, !tbaa !5
  %idxprom22 = sext i32 %43 to i64
  %arrayidx23 = getelementptr inbounds [63 x double], [63 x double]* %bval_l, i32 0, i64 %idxprom22
  store double %42, double* %arrayidx23, align 8, !tbaa !7
  %44 = load i32, i32* %j, align 4, !tbaa !5
  %45 = load i32, i32* %i, align 4, !tbaa !5
  %cmp24 = icmp ne i32 %44, %45
  br i1 %cmp24, label %if.then.26, label %if.end

if.then.26:                                       ; preds = %for.body.8
  %46 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !tbaa !1
  %call27 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %46, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.2, i32 0, i32 0))
  call void @exit(i32 -1) #6
  unreachable

if.end:                                           ; preds = %for.body.8
  store i32 0, i32* %k, align 4, !tbaa !5
  br label %for.cond.28

for.cond.28:                                      ; preds = %for.inc, %if.end
  %47 = load i32, i32* %k, align 4, !tbaa !5
  %48 = load i32, i32* %i, align 4, !tbaa !5
  %idxprom29 = sext i32 %48 to i64
  %49 = load i32*, i32** %numlines_l.addr, align 8, !tbaa !1
  %arrayidx30 = getelementptr inbounds i32, i32* %49, i64 %idxprom29
  %50 = load i32, i32* %arrayidx30, align 4, !tbaa !5
  %cmp31 = icmp slt i32 %47, %50
  br i1 %cmp31, label %for.body.33, label %for.end

for.body.33:                                      ; preds = %for.cond.28
  %51 = load i32, i32* %i, align 4, !tbaa !5
  %52 = load i32, i32* %k2, align 4, !tbaa !5
  %inc34 = add nsw i32 %52, 1
  store i32 %inc34, i32* %k2, align 4, !tbaa !5
  %idxprom35 = sext i32 %52 to i64
  %53 = load i32*, i32** %partition_l.addr, align 8, !tbaa !1
  %arrayidx36 = getelementptr inbounds i32, i32* %53, i64 %idxprom35
  store i32 %51, i32* %arrayidx36, align 4, !tbaa !5
  br label %for.inc

for.inc:                                          ; preds = %for.body.33
  %54 = load i32, i32* %k, align 4, !tbaa !5
  %inc37 = add nsw i32 %54, 1
  store i32 %inc37, i32* %k, align 4, !tbaa !5
  br label %for.cond.28

for.end:                                          ; preds = %for.cond.28
  br label %for.inc.38

for.inc.38:                                       ; preds = %for.end
  %55 = load i32, i32* %i, align 4, !tbaa !5
  %inc39 = add nsw i32 %55, 1
  store i32 %inc39, i32* %i, align 4, !tbaa !5
  br label %for.cond.5

for.end.40:                                       ; preds = %for.cond.5
  br label %if.end.42

if.else:                                          ; preds = %for.body
  %56 = load i32, i32* %cbmax_tp, align 4, !tbaa !5
  %mul41 = mul nsw i32 %56, 6
  %57 = load double*, double** %p, align 8, !tbaa !1
  %idx.ext = sext i32 %mul41 to i64
  %add.ptr = getelementptr inbounds double, double* %57, i64 %idx.ext
  store double* %add.ptr, double** %p, align 8, !tbaa !1
  br label %if.end.42

if.end.42:                                        ; preds = %if.else, %for.end.40
  br label %for.inc.43

for.inc.43:                                       ; preds = %if.end.42
  %58 = load i32, i32* %loop, align 4, !tbaa !5
  %inc44 = add nsw i32 %58, 1
  store i32 %inc44, i32* %loop, align 4, !tbaa !5
  br label %for.cond

for.end.45:                                       ; preds = %for.cond
  %59 = load i32, i32* %cbmax, align 4, !tbaa !5
  store i32 %59, i32* %part_max, align 4, !tbaa !5
  store i32 0, i32* %i, align 4, !tbaa !5
  br label %for.cond.46

for.cond.46:                                      ; preds = %for.inc.126, %for.end.45
  %60 = load i32, i32* %i, align 4, !tbaa !5
  %61 = load i32, i32* %part_max, align 4, !tbaa !5
  %cmp47 = icmp slt i32 %60, %61
  br i1 %cmp47, label %for.body.49, label %for.end.128

for.body.49:                                      ; preds = %for.cond.46
  %62 = bitcast double* %tempx to i8*
  call void @llvm.lifetime.start(i64 8, i8* %62) #1
  %63 = bitcast double* %x to i8*
  call void @llvm.lifetime.start(i64 8, i8* %63) #1
  %64 = bitcast double* %tempy to i8*
  call void @llvm.lifetime.start(i64 8, i8* %64) #1
  %65 = bitcast double* %temp to i8*
  call void @llvm.lifetime.start(i64 8, i8* %65) #1
  store i32 0, i32* %j, align 4, !tbaa !5
  br label %for.cond.50

for.cond.50:                                      ; preds = %for.inc.123, %for.body.49
  %66 = load i32, i32* %j, align 4, !tbaa !5
  %67 = load i32, i32* %part_max, align 4, !tbaa !5
  %cmp51 = icmp slt i32 %66, %67
  br i1 %cmp51, label %for.body.53, label %for.end.125

for.body.53:                                      ; preds = %for.cond.50
  %68 = load i32, i32* %j, align 4, !tbaa !5
  %69 = load i32, i32* %i, align 4, !tbaa !5
  %cmp54 = icmp sge i32 %68, %69
  br i1 %cmp54, label %if.then.56, label %if.else.63

if.then.56:                                       ; preds = %for.body.53
  %70 = load i32, i32* %i, align 4, !tbaa !5
  %idxprom57 = sext i32 %70 to i64
  %arrayidx58 = getelementptr inbounds [63 x double], [63 x double]* %bval_l, i32 0, i64 %idxprom57
  %71 = load double, double* %arrayidx58, align 8, !tbaa !7
  %72 = load i32, i32* %j, align 4, !tbaa !5
  %idxprom59 = sext i32 %72 to i64
  %arrayidx60 = getelementptr inbounds [63 x double], [63 x double]* %bval_l, i32 0, i64 %idxprom59
  %73 = load double, double* %arrayidx60, align 8, !tbaa !7
  %sub61 = fsub double %71, %73
  %mul62 = fmul double %sub61, 3.000000e+00
  store double %mul62, double* %tempx, align 8, !tbaa !7
  br label %if.end.70

if.else.63:                                       ; preds = %for.body.53
  %74 = load i32, i32* %i, align 4, !tbaa !5
  %idxprom64 = sext i32 %74 to i64
  %arrayidx65 = getelementptr inbounds [63 x double], [63 x double]* %bval_l, i32 0, i64 %idxprom64
  %75 = load double, double* %arrayidx65, align 8, !tbaa !7
  %76 = load i32, i32* %j, align 4, !tbaa !5
  %idxprom66 = sext i32 %76 to i64
  %arrayidx67 = getelementptr inbounds [63 x double], [63 x double]* %bval_l, i32 0, i64 %idxprom66
  %77 = load double, double* %arrayidx67, align 8, !tbaa !7
  %sub68 = fsub double %75, %77
  %mul69 = fmul double %sub68, 1.500000e+00
  store double %mul69, double* %tempx, align 8, !tbaa !7
  br label %if.end.70

if.end.70:                                        ; preds = %if.else.63, %if.then.56
  %78 = load i32, i32* %i, align 4, !tbaa !5
  %79 = load i32, i32* %j, align 4, !tbaa !5
  %cmp71 = icmp sge i32 %78, %79
  br i1 %cmp71, label %if.then.73, label %if.else.80

if.then.73:                                       ; preds = %if.end.70
  %80 = load i32, i32* %i, align 4, !tbaa !5
  %idxprom74 = sext i32 %80 to i64
  %arrayidx75 = getelementptr inbounds [63 x double], [63 x double]* %bval_l, i32 0, i64 %idxprom74
  %81 = load double, double* %arrayidx75, align 8, !tbaa !7
  %82 = load i32, i32* %j, align 4, !tbaa !5
  %idxprom76 = sext i32 %82 to i64
  %arrayidx77 = getelementptr inbounds [63 x double], [63 x double]* %bval_l, i32 0, i64 %idxprom76
  %83 = load double, double* %arrayidx77, align 8, !tbaa !7
  %sub78 = fsub double %81, %83
  %mul79 = fmul double %sub78, 3.000000e+00
  store double %mul79, double* %tempx, align 8, !tbaa !7
  br label %if.end.87

if.else.80:                                       ; preds = %if.end.70
  %84 = load i32, i32* %i, align 4, !tbaa !5
  %idxprom81 = sext i32 %84 to i64
  %arrayidx82 = getelementptr inbounds [63 x double], [63 x double]* %bval_l, i32 0, i64 %idxprom81
  %85 = load double, double* %arrayidx82, align 8, !tbaa !7
  %86 = load i32, i32* %j, align 4, !tbaa !5
  %idxprom83 = sext i32 %86 to i64
  %arrayidx84 = getelementptr inbounds [63 x double], [63 x double]* %bval_l, i32 0, i64 %idxprom83
  %87 = load double, double* %arrayidx84, align 8, !tbaa !7
  %sub85 = fsub double %85, %87
  %mul86 = fmul double %sub85, 1.500000e+00
  store double %mul86, double* %tempx, align 8, !tbaa !7
  br label %if.end.87

if.end.87:                                        ; preds = %if.else.80, %if.then.73
  %88 = load double, double* %tempx, align 8, !tbaa !7
  %cmp88 = fcmp oge double %88, 5.000000e-01
  br i1 %cmp88, label %land.lhs.true, label %if.else.98

land.lhs.true:                                    ; preds = %if.end.87
  %89 = load double, double* %tempx, align 8, !tbaa !7
  %cmp90 = fcmp ole double %89, 2.500000e+00
  br i1 %cmp90, label %if.then.92, label %if.else.98

if.then.92:                                       ; preds = %land.lhs.true
  %90 = load double, double* %tempx, align 8, !tbaa !7
  %sub93 = fsub double %90, 5.000000e-01
  store double %sub93, double* %temp, align 8, !tbaa !7
  %91 = load double, double* %temp, align 8, !tbaa !7
  %92 = load double, double* %temp, align 8, !tbaa !7
  %mul94 = fmul double %91, %92
  %93 = load double, double* %temp, align 8, !tbaa !7
  %mul95 = fmul double 2.000000e+00, %93
  %sub96 = fsub double %mul94, %mul95
  %mul97 = fmul double 8.000000e+00, %sub96
  store double %mul97, double* %x, align 8, !tbaa !7
  br label %if.end.99

if.else.98:                                       ; preds = %land.lhs.true, %if.end.87
  store double 0.000000e+00, double* %x, align 8, !tbaa !7
  br label %if.end.99

if.end.99:                                        ; preds = %if.else.98, %if.then.92
  %94 = load double, double* %tempx, align 8, !tbaa !7
  %add = fadd double %94, 4.740000e-01
  store double %add, double* %tempx, align 8, !tbaa !7
  %95 = load double, double* %tempx, align 8, !tbaa !7
  %mul100 = fmul double 7.500000e+00, %95
  %add101 = fadd double 0x402F9F6E6106AB15, %mul100
  %96 = load double, double* %tempx, align 8, !tbaa !7
  %97 = load double, double* %tempx, align 8, !tbaa !7
  %mul102 = fmul double %96, %97
  %add103 = fadd double 1.000000e+00, %mul102
  %call104 = call double @sqrt(double %add103) #1
  %mul105 = fmul double 1.750000e+01, %call104
  %sub106 = fsub double %add101, %mul105
  store double %sub106, double* %tempy, align 8, !tbaa !7
  %98 = load double, double* %tempy, align 8, !tbaa !7
  %cmp107 = fcmp ole double %98, -6.000000e+01
  br i1 %cmp107, label %if.then.109, label %if.else.114

if.then.109:                                      ; preds = %if.end.99
  %99 = load i32, i32* %j, align 4, !tbaa !5
  %idxprom110 = sext i32 %99 to i64
  %100 = load i32, i32* %i, align 4, !tbaa !5
  %idxprom111 = sext i32 %100 to i64
  %101 = load [64 x double]*, [64 x double]** %s3_l.addr, align 8, !tbaa !1
  %arrayidx112 = getelementptr inbounds [64 x double], [64 x double]* %101, i64 %idxprom111
  %arrayidx113 = getelementptr inbounds [64 x double], [64 x double]* %arrayidx112, i32 0, i64 %idxprom110
  store double 0.000000e+00, double* %arrayidx113, align 8, !tbaa !7
  br label %if.end.122

if.else.114:                                      ; preds = %if.end.99
  %102 = load double, double* %x, align 8, !tbaa !7
  %103 = load double, double* %tempy, align 8, !tbaa !7
  %add115 = fadd double %102, %103
  %mul116 = fmul double %add115, 0x3FCD791C5F888823
  %call117 = call double @exp(double %mul116) #1
  %104 = load i32, i32* %j, align 4, !tbaa !5
  %idxprom118 = sext i32 %104 to i64
  %105 = load i32, i32* %i, align 4, !tbaa !5
  %idxprom119 = sext i32 %105 to i64
  %106 = load [64 x double]*, [64 x double]** %s3_l.addr, align 8, !tbaa !1
  %arrayidx120 = getelementptr inbounds [64 x double], [64 x double]* %106, i64 %idxprom119
  %arrayidx121 = getelementptr inbounds [64 x double], [64 x double]* %arrayidx120, i32 0, i64 %idxprom118
  store double %call117, double* %arrayidx121, align 8, !tbaa !7
  br label %if.end.122

if.end.122:                                       ; preds = %if.else.114, %if.then.109
  br label %for.inc.123

for.inc.123:                                      ; preds = %if.end.122
  %107 = load i32, i32* %j, align 4, !tbaa !5
  %inc124 = add nsw i32 %107, 1
  store i32 %inc124, i32* %j, align 4, !tbaa !5
  br label %for.cond.50

for.end.125:                                      ; preds = %for.cond.50
  %108 = bitcast double* %temp to i8*
  call void @llvm.lifetime.end(i64 8, i8* %108) #1
  %109 = bitcast double* %tempy to i8*
  call void @llvm.lifetime.end(i64 8, i8* %109) #1
  %110 = bitcast double* %x to i8*
  call void @llvm.lifetime.end(i64 8, i8* %110) #1
  %111 = bitcast double* %tempx to i8*
  call void @llvm.lifetime.end(i64 8, i8* %111) #1
  br label %for.inc.126

for.inc.126:                                      ; preds = %for.end.125
  %112 = load i32, i32* %i, align 4, !tbaa !5
  %inc127 = add nsw i32 %112, 1
  store i32 %inc127, i32* %i, align 4, !tbaa !5
  br label %for.cond.46

for.end.128:                                      ; preds = %for.cond.46
  store i32 0, i32* %loop, align 4, !tbaa !5
  br label %for.cond.129

for.cond.129:                                     ; preds = %for.inc.179, %for.end.128
  %113 = load i32, i32* %loop, align 4, !tbaa !5
  %cmp130 = icmp slt i32 %113, 6
  br i1 %cmp130, label %for.body.132, label %for.end.181

for.body.132:                                     ; preds = %for.cond.129
  %114 = load double*, double** %p, align 8, !tbaa !1
  %incdec.ptr133 = getelementptr inbounds double, double* %114, i32 1
  store double* %incdec.ptr133, double** %p, align 8, !tbaa !1
  %115 = load double, double* %114, align 8, !tbaa !7
  store double %115, double* %freq_tp, align 8, !tbaa !7
  %116 = load double*, double** %p, align 8, !tbaa !1
  %incdec.ptr134 = getelementptr inbounds double, double* %116, i32 1
  store double* %incdec.ptr134, double** %p, align 8, !tbaa !1
  %117 = load double, double* %116, align 8, !tbaa !7
  %conv135 = fptosi double %117 to i32
  store i32 %conv135, i32* %cbmax_tp, align 4, !tbaa !5
  %118 = load i32, i32* %cbmax_tp, align 4, !tbaa !5
  %inc136 = add nsw i32 %118, 1
  store i32 %inc136, i32* %cbmax_tp, align 4, !tbaa !5
  %119 = load double, double* %sfreq.addr, align 8, !tbaa !7
  %120 = load double, double* %freq_tp, align 8, !tbaa !7
  %121 = load i32, i32* %freq_scale, align 4, !tbaa !5
  %conv137 = sitofp i32 %121 to double
  %div138 = fdiv double %120, %conv137
  %cmp139 = fcmp oeq double %119, %div138
  br i1 %cmp139, label %if.then.141, label %if.else.174

if.then.141:                                      ; preds = %for.body.132
  %122 = load i32, i32* %cbmax_tp, align 4, !tbaa !5
  store i32 %122, i32* %cbmax, align 4, !tbaa !5
  store i32 0, i32* %i, align 4, !tbaa !5
  store i32 0, i32* %k2, align 4, !tbaa !5
  br label %for.cond.142

for.cond.142:                                     ; preds = %for.inc.169, %if.then.141
  %123 = load i32, i32* %i, align 4, !tbaa !5
  %124 = load i32, i32* %cbmax_tp, align 4, !tbaa !5
  %cmp143 = icmp slt i32 %123, %124
  br i1 %cmp143, label %for.body.145, label %for.end.171

for.body.145:                                     ; preds = %for.cond.142
  %125 = load double*, double** %p, align 8, !tbaa !1
  %incdec.ptr146 = getelementptr inbounds double, double* %125, i32 1
  store double* %incdec.ptr146, double** %p, align 8, !tbaa !1
  %126 = load double, double* %125, align 8, !tbaa !7
  %conv147 = fptosi double %126 to i32
  store i32 %conv147, i32* %j, align 4, !tbaa !5
  %127 = load double*, double** %p, align 8, !tbaa !1
  %incdec.ptr148 = getelementptr inbounds double, double* %127, i32 1
  store double* %incdec.ptr148, double** %p, align 8, !tbaa !1
  %128 = load double, double* %127, align 8, !tbaa !7
  %conv149 = fptosi double %128 to i32
  %129 = load i32, i32* %i, align 4, !tbaa !5
  %idxprom150 = sext i32 %129 to i64
  %130 = load i32*, i32** %numlines_s.addr, align 8, !tbaa !1
  %arrayidx151 = getelementptr inbounds i32, i32* %130, i64 %idxprom150
  store i32 %conv149, i32* %arrayidx151, align 4, !tbaa !5
  %131 = load double*, double** %p, align 8, !tbaa !1
  %incdec.ptr152 = getelementptr inbounds double, double* %131, i32 1
  store double* %incdec.ptr152, double** %p, align 8, !tbaa !1
  %132 = load double, double* %131, align 8, !tbaa !7
  %133 = load i32, i32* %i, align 4, !tbaa !5
  %idxprom153 = sext i32 %133 to i64
  %134 = load double*, double** %qthr_s.addr, align 8, !tbaa !1
  %arrayidx154 = getelementptr inbounds double, double* %134, i64 %idxprom153
  store double %132, double* %arrayidx154, align 8, !tbaa !7
  %135 = load double*, double** %p, align 8, !tbaa !1
  %incdec.ptr155 = getelementptr inbounds double, double* %135, i32 1
  store double* %incdec.ptr155, double** %p, align 8, !tbaa !1
  %136 = load double*, double** %p, align 8, !tbaa !1
  %incdec.ptr156 = getelementptr inbounds double, double* %136, i32 1
  store double* %incdec.ptr156, double** %p, align 8, !tbaa !1
  %137 = load double, double* %136, align 8, !tbaa !7
  %138 = load i32, i32* %i, align 4, !tbaa !5
  %idxprom157 = sext i32 %138 to i64
  %139 = load double*, double** %SNR.addr, align 8, !tbaa !1
  %arrayidx158 = getelementptr inbounds double, double* %139, i64 %idxprom157
  store double %137, double* %arrayidx158, align 8, !tbaa !7
  %140 = load double*, double** %p, align 8, !tbaa !1
  %incdec.ptr159 = getelementptr inbounds double, double* %140, i32 1
  store double* %incdec.ptr159, double** %p, align 8, !tbaa !1
  %141 = load double, double* %140, align 8, !tbaa !7
  %142 = load i32, i32* %i, align 4, !tbaa !5
  %idxprom160 = sext i32 %142 to i64
  %arrayidx161 = getelementptr inbounds [63 x double], [63 x double]* %bval_s, i32 0, i64 %idxprom160
  store double %141, double* %arrayidx161, align 8, !tbaa !7
  %143 = load i32, i32* %j, align 4, !tbaa !5
  %144 = load i32, i32* %i, align 4, !tbaa !5
  %cmp162 = icmp ne i32 %143, %144
  br i1 %cmp162, label %if.then.164, label %if.end.166

if.then.164:                                      ; preds = %for.body.145
  %145 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !tbaa !1
  %call165 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %145, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.3, i32 0, i32 0))
  call void @exit(i32 -1) #6
  unreachable

if.end.166:                                       ; preds = %for.body.145
  %146 = load i32, i32* %i, align 4, !tbaa !5
  %idxprom167 = sext i32 %146 to i64
  %147 = load i32*, i32** %numlines_s.addr, align 8, !tbaa !1
  %arrayidx168 = getelementptr inbounds i32, i32* %147, i64 %idxprom167
  %148 = load i32, i32* %arrayidx168, align 4, !tbaa !5
  %dec = add nsw i32 %148, -1
  store i32 %dec, i32* %arrayidx168, align 4, !tbaa !5
  br label %for.inc.169

for.inc.169:                                      ; preds = %if.end.166
  %149 = load i32, i32* %i, align 4, !tbaa !5
  %inc170 = add nsw i32 %149, 1
  store i32 %inc170, i32* %i, align 4, !tbaa !5
  br label %for.cond.142

for.end.171:                                      ; preds = %for.cond.142
  %150 = load i32, i32* %i, align 4, !tbaa !5
  %idxprom172 = sext i32 %150 to i64
  %151 = load i32*, i32** %numlines_s.addr, align 8, !tbaa !1
  %arrayidx173 = getelementptr inbounds i32, i32* %151, i64 %idxprom172
  store i32 -1, i32* %arrayidx173, align 4, !tbaa !5
  br label %if.end.178

if.else.174:                                      ; preds = %for.body.132
  %152 = load i32, i32* %cbmax_tp, align 4, !tbaa !5
  %mul175 = mul nsw i32 %152, 6
  %153 = load double*, double** %p, align 8, !tbaa !1
  %idx.ext176 = sext i32 %mul175 to i64
  %add.ptr177 = getelementptr inbounds double, double* %153, i64 %idx.ext176
  store double* %add.ptr177, double** %p, align 8, !tbaa !1
  br label %if.end.178

if.end.178:                                       ; preds = %if.else.174, %for.end.171
  br label %for.inc.179

for.inc.179:                                      ; preds = %if.end.178
  %154 = load i32, i32* %loop, align 4, !tbaa !5
  %inc180 = add nsw i32 %154, 1
  store i32 %inc180, i32* %loop, align 4, !tbaa !5
  br label %for.cond.129

for.end.181:                                      ; preds = %for.cond.129
  %155 = load i32, i32* %cbmax, align 4, !tbaa !5
  store i32 %155, i32* %part_max, align 4, !tbaa !5
  store i32 0, i32* %i, align 4, !tbaa !5
  br label %for.cond.182

for.cond.182:                                     ; preds = %for.inc.268, %for.end.181
  %156 = load i32, i32* %i, align 4, !tbaa !5
  %157 = load i32, i32* %part_max, align 4, !tbaa !5
  %cmp183 = icmp slt i32 %156, %157
  br i1 %cmp183, label %for.body.185, label %for.end.270

for.body.185:                                     ; preds = %for.cond.182
  %158 = bitcast double* %tempx186 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %158) #1
  %159 = bitcast double* %x187 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %159) #1
  %160 = bitcast double* %tempy188 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %160) #1
  %161 = bitcast double* %temp189 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %161) #1
  store i32 0, i32* %j, align 4, !tbaa !5
  br label %for.cond.190

for.cond.190:                                     ; preds = %for.inc.265, %for.body.185
  %162 = load i32, i32* %j, align 4, !tbaa !5
  %163 = load i32, i32* %part_max, align 4, !tbaa !5
  %cmp191 = icmp slt i32 %162, %163
  br i1 %cmp191, label %for.body.193, label %for.end.267

for.body.193:                                     ; preds = %for.cond.190
  %164 = load i32, i32* %j, align 4, !tbaa !5
  %165 = load i32, i32* %i, align 4, !tbaa !5
  %cmp194 = icmp sge i32 %164, %165
  br i1 %cmp194, label %if.then.196, label %if.else.203

if.then.196:                                      ; preds = %for.body.193
  %166 = load i32, i32* %i, align 4, !tbaa !5
  %idxprom197 = sext i32 %166 to i64
  %arrayidx198 = getelementptr inbounds [63 x double], [63 x double]* %bval_s, i32 0, i64 %idxprom197
  %167 = load double, double* %arrayidx198, align 8, !tbaa !7
  %168 = load i32, i32* %j, align 4, !tbaa !5
  %idxprom199 = sext i32 %168 to i64
  %arrayidx200 = getelementptr inbounds [63 x double], [63 x double]* %bval_s, i32 0, i64 %idxprom199
  %169 = load double, double* %arrayidx200, align 8, !tbaa !7
  %sub201 = fsub double %167, %169
  %mul202 = fmul double %sub201, 3.000000e+00
  store double %mul202, double* %tempx186, align 8, !tbaa !7
  br label %if.end.210

if.else.203:                                      ; preds = %for.body.193
  %170 = load i32, i32* %i, align 4, !tbaa !5
  %idxprom204 = sext i32 %170 to i64
  %arrayidx205 = getelementptr inbounds [63 x double], [63 x double]* %bval_s, i32 0, i64 %idxprom204
  %171 = load double, double* %arrayidx205, align 8, !tbaa !7
  %172 = load i32, i32* %j, align 4, !tbaa !5
  %idxprom206 = sext i32 %172 to i64
  %arrayidx207 = getelementptr inbounds [63 x double], [63 x double]* %bval_s, i32 0, i64 %idxprom206
  %173 = load double, double* %arrayidx207, align 8, !tbaa !7
  %sub208 = fsub double %171, %173
  %mul209 = fmul double %sub208, 1.500000e+00
  store double %mul209, double* %tempx186, align 8, !tbaa !7
  br label %if.end.210

if.end.210:                                       ; preds = %if.else.203, %if.then.196
  %174 = load i32, i32* %i, align 4, !tbaa !5
  %175 = load i32, i32* %j, align 4, !tbaa !5
  %cmp211 = icmp sge i32 %174, %175
  br i1 %cmp211, label %if.then.213, label %if.else.220

if.then.213:                                      ; preds = %if.end.210
  %176 = load i32, i32* %i, align 4, !tbaa !5
  %idxprom214 = sext i32 %176 to i64
  %arrayidx215 = getelementptr inbounds [63 x double], [63 x double]* %bval_s, i32 0, i64 %idxprom214
  %177 = load double, double* %arrayidx215, align 8, !tbaa !7
  %178 = load i32, i32* %j, align 4, !tbaa !5
  %idxprom216 = sext i32 %178 to i64
  %arrayidx217 = getelementptr inbounds [63 x double], [63 x double]* %bval_s, i32 0, i64 %idxprom216
  %179 = load double, double* %arrayidx217, align 8, !tbaa !7
  %sub218 = fsub double %177, %179
  %mul219 = fmul double %sub218, 3.000000e+00
  store double %mul219, double* %tempx186, align 8, !tbaa !7
  br label %if.end.227

if.else.220:                                      ; preds = %if.end.210
  %180 = load i32, i32* %i, align 4, !tbaa !5
  %idxprom221 = sext i32 %180 to i64
  %arrayidx222 = getelementptr inbounds [63 x double], [63 x double]* %bval_s, i32 0, i64 %idxprom221
  %181 = load double, double* %arrayidx222, align 8, !tbaa !7
  %182 = load i32, i32* %j, align 4, !tbaa !5
  %idxprom223 = sext i32 %182 to i64
  %arrayidx224 = getelementptr inbounds [63 x double], [63 x double]* %bval_s, i32 0, i64 %idxprom223
  %183 = load double, double* %arrayidx224, align 8, !tbaa !7
  %sub225 = fsub double %181, %183
  %mul226 = fmul double %sub225, 1.500000e+00
  store double %mul226, double* %tempx186, align 8, !tbaa !7
  br label %if.end.227

if.end.227:                                       ; preds = %if.else.220, %if.then.213
  %184 = load double, double* %tempx186, align 8, !tbaa !7
  %cmp228 = fcmp oge double %184, 5.000000e-01
  br i1 %cmp228, label %land.lhs.true.230, label %if.else.239

land.lhs.true.230:                                ; preds = %if.end.227
  %185 = load double, double* %tempx186, align 8, !tbaa !7
  %cmp231 = fcmp ole double %185, 2.500000e+00
  br i1 %cmp231, label %if.then.233, label %if.else.239

if.then.233:                                      ; preds = %land.lhs.true.230
  %186 = load double, double* %tempx186, align 8, !tbaa !7
  %sub234 = fsub double %186, 5.000000e-01
  store double %sub234, double* %temp189, align 8, !tbaa !7
  %187 = load double, double* %temp189, align 8, !tbaa !7
  %188 = load double, double* %temp189, align 8, !tbaa !7
  %mul235 = fmul double %187, %188
  %189 = load double, double* %temp189, align 8, !tbaa !7
  %mul236 = fmul double 2.000000e+00, %189
  %sub237 = fsub double %mul235, %mul236
  %mul238 = fmul double 8.000000e+00, %sub237
  store double %mul238, double* %x187, align 8, !tbaa !7
  br label %if.end.240

if.else.239:                                      ; preds = %land.lhs.true.230, %if.end.227
  store double 0.000000e+00, double* %x187, align 8, !tbaa !7
  br label %if.end.240

if.end.240:                                       ; preds = %if.else.239, %if.then.233
  %190 = load double, double* %tempx186, align 8, !tbaa !7
  %add241 = fadd double %190, 4.740000e-01
  store double %add241, double* %tempx186, align 8, !tbaa !7
  %191 = load double, double* %tempx186, align 8, !tbaa !7
  %mul242 = fmul double 7.500000e+00, %191
  %add243 = fadd double 0x402F9F6E6106AB15, %mul242
  %192 = load double, double* %tempx186, align 8, !tbaa !7
  %193 = load double, double* %tempx186, align 8, !tbaa !7
  %mul244 = fmul double %192, %193
  %add245 = fadd double 1.000000e+00, %mul244
  %call246 = call double @sqrt(double %add245) #1
  %mul247 = fmul double 1.750000e+01, %call246
  %sub248 = fsub double %add243, %mul247
  store double %sub248, double* %tempy188, align 8, !tbaa !7
  %194 = load double, double* %tempy188, align 8, !tbaa !7
  %cmp249 = fcmp ole double %194, -6.000000e+01
  br i1 %cmp249, label %if.then.251, label %if.else.256

if.then.251:                                      ; preds = %if.end.240
  %195 = load i32, i32* %j, align 4, !tbaa !5
  %idxprom252 = sext i32 %195 to i64
  %196 = load i32, i32* %i, align 4, !tbaa !5
  %idxprom253 = sext i32 %196 to i64
  %197 = load [64 x double]*, [64 x double]** %s3_s.addr, align 8, !tbaa !1
  %arrayidx254 = getelementptr inbounds [64 x double], [64 x double]* %197, i64 %idxprom253
  %arrayidx255 = getelementptr inbounds [64 x double], [64 x double]* %arrayidx254, i32 0, i64 %idxprom252
  store double 0.000000e+00, double* %arrayidx255, align 8, !tbaa !7
  br label %if.end.264

if.else.256:                                      ; preds = %if.end.240
  %198 = load double, double* %x187, align 8, !tbaa !7
  %199 = load double, double* %tempy188, align 8, !tbaa !7
  %add257 = fadd double %198, %199
  %mul258 = fmul double %add257, 0x3FCD791C5F888823
  %call259 = call double @exp(double %mul258) #1
  %200 = load i32, i32* %j, align 4, !tbaa !5
  %idxprom260 = sext i32 %200 to i64
  %201 = load i32, i32* %i, align 4, !tbaa !5
  %idxprom261 = sext i32 %201 to i64
  %202 = load [64 x double]*, [64 x double]** %s3_s.addr, align 8, !tbaa !1
  %arrayidx262 = getelementptr inbounds [64 x double], [64 x double]* %202, i64 %idxprom261
  %arrayidx263 = getelementptr inbounds [64 x double], [64 x double]* %arrayidx262, i32 0, i64 %idxprom260
  store double %call259, double* %arrayidx263, align 8, !tbaa !7
  br label %if.end.264

if.end.264:                                       ; preds = %if.else.256, %if.then.251
  br label %for.inc.265

for.inc.265:                                      ; preds = %if.end.264
  %203 = load i32, i32* %j, align 4, !tbaa !5
  %inc266 = add nsw i32 %203, 1
  store i32 %inc266, i32* %j, align 4, !tbaa !5
  br label %for.cond.190

for.end.267:                                      ; preds = %for.cond.190
  %204 = bitcast double* %temp189 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %204) #1
  %205 = bitcast double* %tempy188 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %205) #1
  %206 = bitcast double* %x187 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %206) #1
  %207 = bitcast double* %tempx186 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %207) #1
  br label %for.inc.268

for.inc.268:                                      ; preds = %for.end.267
  %208 = load i32, i32* %i, align 4, !tbaa !5
  %inc269 = add nsw i32 %208, 1
  store i32 %inc269, i32* %i, align 4, !tbaa !5
  br label %for.cond.182

for.end.270:                                      ; preds = %for.cond.182
  store i32 0, i32* %loop, align 4, !tbaa !5
  br label %for.cond.271

for.cond.271:                                     ; preds = %for.inc.341, %for.end.270
  %209 = load i32, i32* %loop, align 4, !tbaa !5
  %cmp272 = icmp slt i32 %209, 6
  br i1 %cmp272, label %for.body.274, label %for.end.343

for.body.274:                                     ; preds = %for.cond.271
  %210 = load double*, double** %p, align 8, !tbaa !1
  %incdec.ptr275 = getelementptr inbounds double, double* %210, i32 1
  store double* %incdec.ptr275, double** %p, align 8, !tbaa !1
  %211 = load double, double* %210, align 8, !tbaa !7
  store double %211, double* %freq_tp, align 8, !tbaa !7
  %212 = load double*, double** %p, align 8, !tbaa !1
  %incdec.ptr276 = getelementptr inbounds double, double* %212, i32 1
  store double* %incdec.ptr276, double** %p, align 8, !tbaa !1
  %213 = load double, double* %212, align 8, !tbaa !7
  %conv277 = fptosi double %213 to i32
  store i32 %conv277, i32* %sbmax, align 4, !tbaa !5
  %214 = load i32, i32* %sbmax, align 4, !tbaa !5
  %inc278 = add nsw i32 %214, 1
  store i32 %inc278, i32* %sbmax, align 4, !tbaa !5
  %215 = load double, double* %sfreq.addr, align 8, !tbaa !7
  %216 = load double, double* %freq_tp, align 8, !tbaa !7
  %217 = load i32, i32* %freq_scale, align 4, !tbaa !5
  %conv279 = sitofp i32 %217 to double
  %div280 = fdiv double %216, %conv279
  %cmp281 = fcmp oeq double %215, %div280
  br i1 %cmp281, label %if.then.283, label %if.else.336

if.then.283:                                      ; preds = %for.body.274
  store i32 0, i32* %i, align 4, !tbaa !5
  br label %for.cond.284

for.cond.284:                                     ; preds = %for.inc.333, %if.then.283
  %218 = load i32, i32* %i, align 4, !tbaa !5
  %219 = load i32, i32* %sbmax, align 4, !tbaa !5
  %cmp285 = icmp slt i32 %218, %219
  br i1 %cmp285, label %for.body.287, label %for.end.335

for.body.287:                                     ; preds = %for.cond.284
  %220 = load double*, double** %p, align 8, !tbaa !1
  %incdec.ptr288 = getelementptr inbounds double, double* %220, i32 1
  store double* %incdec.ptr288, double** %p, align 8, !tbaa !1
  %221 = load double, double* %220, align 8, !tbaa !7
  %conv289 = fptosi double %221 to i32
  store i32 %conv289, i32* %j, align 4, !tbaa !5
  %222 = load double*, double** %p, align 8, !tbaa !1
  %incdec.ptr290 = getelementptr inbounds double, double* %222, i32 1
  store double* %incdec.ptr290, double** %p, align 8, !tbaa !1
  %223 = load double*, double** %p, align 8, !tbaa !1
  %incdec.ptr291 = getelementptr inbounds double, double* %223, i32 1
  store double* %incdec.ptr291, double** %p, align 8, !tbaa !1
  %224 = load double, double* %223, align 8, !tbaa !7
  %conv292 = fptosi double %224 to i32
  %225 = load i32, i32* %i, align 4, !tbaa !5
  %idxprom293 = sext i32 %225 to i64
  %226 = load i32*, i32** %bu_l.addr, align 8, !tbaa !1
  %arrayidx294 = getelementptr inbounds i32, i32* %226, i64 %idxprom293
  store i32 %conv292, i32* %arrayidx294, align 4, !tbaa !5
  %227 = load double*, double** %p, align 8, !tbaa !1
  %incdec.ptr295 = getelementptr inbounds double, double* %227, i32 1
  store double* %incdec.ptr295, double** %p, align 8, !tbaa !1
  %228 = load double, double* %227, align 8, !tbaa !7
  %conv296 = fptosi double %228 to i32
  %229 = load i32, i32* %i, align 4, !tbaa !5
  %idxprom297 = sext i32 %229 to i64
  %230 = load i32*, i32** %bo_l.addr, align 8, !tbaa !1
  %arrayidx298 = getelementptr inbounds i32, i32* %230, i64 %idxprom297
  store i32 %conv296, i32* %arrayidx298, align 4, !tbaa !5
  %231 = load double*, double** %p, align 8, !tbaa !1
  %incdec.ptr299 = getelementptr inbounds double, double* %231, i32 1
  store double* %incdec.ptr299, double** %p, align 8, !tbaa !1
  %232 = load double, double* %231, align 8, !tbaa !7
  %233 = load i32, i32* %i, align 4, !tbaa !5
  %idxprom300 = sext i32 %233 to i64
  %234 = load double*, double** %w1_l.addr, align 8, !tbaa !1
  %arrayidx301 = getelementptr inbounds double, double* %234, i64 %idxprom300
  store double %232, double* %arrayidx301, align 8, !tbaa !7
  %235 = load double*, double** %p, align 8, !tbaa !1
  %incdec.ptr302 = getelementptr inbounds double, double* %235, i32 1
  store double* %incdec.ptr302, double** %p, align 8, !tbaa !1
  %236 = load double, double* %235, align 8, !tbaa !7
  %237 = load i32, i32* %i, align 4, !tbaa !5
  %idxprom303 = sext i32 %237 to i64
  %238 = load double*, double** %w2_l.addr, align 8, !tbaa !1
  %arrayidx304 = getelementptr inbounds double, double* %238, i64 %idxprom303
  store double %236, double* %arrayidx304, align 8, !tbaa !7
  %239 = load i32, i32* %j, align 4, !tbaa !5
  %240 = load i32, i32* %i, align 4, !tbaa !5
  %cmp305 = icmp ne i32 %239, %240
  br i1 %cmp305, label %if.then.307, label %if.end.309

if.then.307:                                      ; preds = %for.body.287
  %241 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !tbaa !1
  %call308 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %241, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.4, i32 0, i32 0))
  call void @exit(i32 -1) #6
  unreachable

if.end.309:                                       ; preds = %for.body.287
  %242 = load i32, i32* %i, align 4, !tbaa !5
  %cmp310 = icmp ne i32 %242, 0
  br i1 %cmp310, label %if.then.312, label %if.end.332

if.then.312:                                      ; preds = %if.end.309
  %243 = load i32, i32* %i, align 4, !tbaa !5
  %idxprom313 = sext i32 %243 to i64
  %244 = load double*, double** %w1_l.addr, align 8, !tbaa !1
  %arrayidx314 = getelementptr inbounds double, double* %244, i64 %idxprom313
  %245 = load double, double* %arrayidx314, align 8, !tbaa !7
  %sub315 = fsub double 1.000000e+00, %245
  %246 = load i32, i32* %i, align 4, !tbaa !5
  %sub316 = sub nsw i32 %246, 1
  %idxprom317 = sext i32 %sub316 to i64
  %247 = load double*, double** %w2_l.addr, align 8, !tbaa !1
  %arrayidx318 = getelementptr inbounds double, double* %247, i64 %idxprom317
  %248 = load double, double* %arrayidx318, align 8, !tbaa !7
  %sub319 = fsub double %sub315, %248
  %call320 = call double @fabs(double %sub319) #7
  %cmp321 = fcmp ogt double %call320, 1.000000e-02
  br i1 %cmp321, label %if.then.323, label %if.end.331

if.then.323:                                      ; preds = %if.then.312
  %249 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !tbaa !1
  %call324 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %249, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.5, i32 0, i32 0))
  %250 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !tbaa !1
  %251 = load i32, i32* %i, align 4, !tbaa !5
  %idxprom325 = sext i32 %251 to i64
  %252 = load double*, double** %w1_l.addr, align 8, !tbaa !1
  %arrayidx326 = getelementptr inbounds double, double* %252, i64 %idxprom325
  %253 = load double, double* %arrayidx326, align 8, !tbaa !7
  %254 = load i32, i32* %i, align 4, !tbaa !5
  %sub327 = sub nsw i32 %254, 1
  %idxprom328 = sext i32 %sub327 to i64
  %255 = load double*, double** %w2_l.addr, align 8, !tbaa !1
  %arrayidx329 = getelementptr inbounds double, double* %255, i64 %idxprom328
  %256 = load double, double* %arrayidx329, align 8, !tbaa !7
  %call330 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %250, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.6, i32 0, i32 0), double %253, double %256)
  call void @exit(i32 -1) #6
  unreachable

if.end.331:                                       ; preds = %if.then.312
  br label %if.end.332

if.end.332:                                       ; preds = %if.end.331, %if.end.309
  br label %for.inc.333

for.inc.333:                                      ; preds = %if.end.332
  %257 = load i32, i32* %i, align 4, !tbaa !5
  %inc334 = add nsw i32 %257, 1
  store i32 %inc334, i32* %i, align 4, !tbaa !5
  br label %for.cond.284

for.end.335:                                      ; preds = %for.cond.284
  br label %if.end.340

if.else.336:                                      ; preds = %for.body.274
  %258 = load i32, i32* %sbmax, align 4, !tbaa !5
  %mul337 = mul nsw i32 %258, 6
  %259 = load double*, double** %p, align 8, !tbaa !1
  %idx.ext338 = sext i32 %mul337 to i64
  %add.ptr339 = getelementptr inbounds double, double* %259, i64 %idx.ext338
  store double* %add.ptr339, double** %p, align 8, !tbaa !1
  br label %if.end.340

if.end.340:                                       ; preds = %if.else.336, %for.end.335
  br label %for.inc.341

for.inc.341:                                      ; preds = %if.end.340
  %260 = load i32, i32* %loop, align 4, !tbaa !5
  %inc342 = add nsw i32 %260, 1
  store i32 %inc342, i32* %loop, align 4, !tbaa !5
  br label %for.cond.271

for.end.343:                                      ; preds = %for.cond.271
  store i32 0, i32* %loop, align 4, !tbaa !5
  br label %for.cond.344

for.cond.344:                                     ; preds = %for.inc.414, %for.end.343
  %261 = load i32, i32* %loop, align 4, !tbaa !5
  %cmp345 = icmp slt i32 %261, 6
  br i1 %cmp345, label %for.body.347, label %for.end.416

for.body.347:                                     ; preds = %for.cond.344
  %262 = load double*, double** %p, align 8, !tbaa !1
  %incdec.ptr348 = getelementptr inbounds double, double* %262, i32 1
  store double* %incdec.ptr348, double** %p, align 8, !tbaa !1
  %263 = load double, double* %262, align 8, !tbaa !7
  store double %263, double* %freq_tp, align 8, !tbaa !7
  %264 = load double*, double** %p, align 8, !tbaa !1
  %incdec.ptr349 = getelementptr inbounds double, double* %264, i32 1
  store double* %incdec.ptr349, double** %p, align 8, !tbaa !1
  %265 = load double, double* %264, align 8, !tbaa !7
  %conv350 = fptosi double %265 to i32
  store i32 %conv350, i32* %sbmax, align 4, !tbaa !5
  %266 = load i32, i32* %sbmax, align 4, !tbaa !5
  %inc351 = add nsw i32 %266, 1
  store i32 %inc351, i32* %sbmax, align 4, !tbaa !5
  %267 = load double, double* %sfreq.addr, align 8, !tbaa !7
  %268 = load double, double* %freq_tp, align 8, !tbaa !7
  %269 = load i32, i32* %freq_scale, align 4, !tbaa !5
  %conv352 = sitofp i32 %269 to double
  %div353 = fdiv double %268, %conv352
  %cmp354 = fcmp oeq double %267, %div353
  br i1 %cmp354, label %if.then.356, label %if.else.409

if.then.356:                                      ; preds = %for.body.347
  store i32 0, i32* %i, align 4, !tbaa !5
  br label %for.cond.357

for.cond.357:                                     ; preds = %for.inc.406, %if.then.356
  %270 = load i32, i32* %i, align 4, !tbaa !5
  %271 = load i32, i32* %sbmax, align 4, !tbaa !5
  %cmp358 = icmp slt i32 %270, %271
  br i1 %cmp358, label %for.body.360, label %for.end.408

for.body.360:                                     ; preds = %for.cond.357
  %272 = load double*, double** %p, align 8, !tbaa !1
  %incdec.ptr361 = getelementptr inbounds double, double* %272, i32 1
  store double* %incdec.ptr361, double** %p, align 8, !tbaa !1
  %273 = load double, double* %272, align 8, !tbaa !7
  %conv362 = fptosi double %273 to i32
  store i32 %conv362, i32* %j, align 4, !tbaa !5
  %274 = load double*, double** %p, align 8, !tbaa !1
  %incdec.ptr363 = getelementptr inbounds double, double* %274, i32 1
  store double* %incdec.ptr363, double** %p, align 8, !tbaa !1
  %275 = load double*, double** %p, align 8, !tbaa !1
  %incdec.ptr364 = getelementptr inbounds double, double* %275, i32 1
  store double* %incdec.ptr364, double** %p, align 8, !tbaa !1
  %276 = load double, double* %275, align 8, !tbaa !7
  %conv365 = fptosi double %276 to i32
  %277 = load i32, i32* %i, align 4, !tbaa !5
  %idxprom366 = sext i32 %277 to i64
  %278 = load i32*, i32** %bu_s.addr, align 8, !tbaa !1
  %arrayidx367 = getelementptr inbounds i32, i32* %278, i64 %idxprom366
  store i32 %conv365, i32* %arrayidx367, align 4, !tbaa !5
  %279 = load double*, double** %p, align 8, !tbaa !1
  %incdec.ptr368 = getelementptr inbounds double, double* %279, i32 1
  store double* %incdec.ptr368, double** %p, align 8, !tbaa !1
  %280 = load double, double* %279, align 8, !tbaa !7
  %conv369 = fptosi double %280 to i32
  %281 = load i32, i32* %i, align 4, !tbaa !5
  %idxprom370 = sext i32 %281 to i64
  %282 = load i32*, i32** %bo_s.addr, align 8, !tbaa !1
  %arrayidx371 = getelementptr inbounds i32, i32* %282, i64 %idxprom370
  store i32 %conv369, i32* %arrayidx371, align 4, !tbaa !5
  %283 = load double*, double** %p, align 8, !tbaa !1
  %incdec.ptr372 = getelementptr inbounds double, double* %283, i32 1
  store double* %incdec.ptr372, double** %p, align 8, !tbaa !1
  %284 = load double, double* %283, align 8, !tbaa !7
  %285 = load i32, i32* %i, align 4, !tbaa !5
  %idxprom373 = sext i32 %285 to i64
  %286 = load double*, double** %w1_s.addr, align 8, !tbaa !1
  %arrayidx374 = getelementptr inbounds double, double* %286, i64 %idxprom373
  store double %284, double* %arrayidx374, align 8, !tbaa !7
  %287 = load double*, double** %p, align 8, !tbaa !1
  %incdec.ptr375 = getelementptr inbounds double, double* %287, i32 1
  store double* %incdec.ptr375, double** %p, align 8, !tbaa !1
  %288 = load double, double* %287, align 8, !tbaa !7
  %289 = load i32, i32* %i, align 4, !tbaa !5
  %idxprom376 = sext i32 %289 to i64
  %290 = load double*, double** %w2_s.addr, align 8, !tbaa !1
  %arrayidx377 = getelementptr inbounds double, double* %290, i64 %idxprom376
  store double %288, double* %arrayidx377, align 8, !tbaa !7
  %291 = load i32, i32* %j, align 4, !tbaa !5
  %292 = load i32, i32* %i, align 4, !tbaa !5
  %cmp378 = icmp ne i32 %291, %292
  br i1 %cmp378, label %if.then.380, label %if.end.382

if.then.380:                                      ; preds = %for.body.360
  %293 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !tbaa !1
  %call381 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %293, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.4, i32 0, i32 0))
  call void @exit(i32 -1) #6
  unreachable

if.end.382:                                       ; preds = %for.body.360
  %294 = load i32, i32* %i, align 4, !tbaa !5
  %cmp383 = icmp ne i32 %294, 0
  br i1 %cmp383, label %if.then.385, label %if.end.405

if.then.385:                                      ; preds = %if.end.382
  %295 = load i32, i32* %i, align 4, !tbaa !5
  %idxprom386 = sext i32 %295 to i64
  %296 = load double*, double** %w1_s.addr, align 8, !tbaa !1
  %arrayidx387 = getelementptr inbounds double, double* %296, i64 %idxprom386
  %297 = load double, double* %arrayidx387, align 8, !tbaa !7
  %sub388 = fsub double 1.000000e+00, %297
  %298 = load i32, i32* %i, align 4, !tbaa !5
  %sub389 = sub nsw i32 %298, 1
  %idxprom390 = sext i32 %sub389 to i64
  %299 = load double*, double** %w2_s.addr, align 8, !tbaa !1
  %arrayidx391 = getelementptr inbounds double, double* %299, i64 %idxprom390
  %300 = load double, double* %arrayidx391, align 8, !tbaa !7
  %sub392 = fsub double %sub388, %300
  %call393 = call double @fabs(double %sub392) #7
  %cmp394 = fcmp ogt double %call393, 1.000000e-02
  br i1 %cmp394, label %if.then.396, label %if.end.404

if.then.396:                                      ; preds = %if.then.385
  %301 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !tbaa !1
  %call397 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %301, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.7, i32 0, i32 0))
  %302 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !tbaa !1
  %303 = load i32, i32* %i, align 4, !tbaa !5
  %idxprom398 = sext i32 %303 to i64
  %304 = load double*, double** %w1_s.addr, align 8, !tbaa !1
  %arrayidx399 = getelementptr inbounds double, double* %304, i64 %idxprom398
  %305 = load double, double* %arrayidx399, align 8, !tbaa !7
  %306 = load i32, i32* %i, align 4, !tbaa !5
  %sub400 = sub nsw i32 %306, 1
  %idxprom401 = sext i32 %sub400 to i64
  %307 = load double*, double** %w2_s.addr, align 8, !tbaa !1
  %arrayidx402 = getelementptr inbounds double, double* %307, i64 %idxprom401
  %308 = load double, double* %arrayidx402, align 8, !tbaa !7
  %call403 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %302, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.6, i32 0, i32 0), double %305, double %308)
  call void @exit(i32 -1) #6
  unreachable

if.end.404:                                       ; preds = %if.then.385
  br label %if.end.405

if.end.405:                                       ; preds = %if.end.404, %if.end.382
  br label %for.inc.406

for.inc.406:                                      ; preds = %if.end.405
  %309 = load i32, i32* %i, align 4, !tbaa !5
  %inc407 = add nsw i32 %309, 1
  store i32 %inc407, i32* %i, align 4, !tbaa !5
  br label %for.cond.357

for.end.408:                                      ; preds = %for.cond.357
  br label %if.end.413

if.else.409:                                      ; preds = %for.body.347
  %310 = load i32, i32* %sbmax, align 4, !tbaa !5
  %mul410 = mul nsw i32 %310, 6
  %311 = load double*, double** %p, align 8, !tbaa !1
  %idx.ext411 = sext i32 %mul410 to i64
  %add.ptr412 = getelementptr inbounds double, double* %311, i64 %idx.ext411
  store double* %add.ptr412, double** %p, align 8, !tbaa !1
  br label %if.end.413

if.end.413:                                       ; preds = %if.else.409, %for.end.408
  br label %for.inc.414

for.inc.414:                                      ; preds = %if.end.413
  %312 = load i32, i32* %loop, align 4, !tbaa !5
  %inc415 = add nsw i32 %312, 1
  store i32 %inc415, i32* %loop, align 4, !tbaa !5
  br label %for.cond.344

for.end.416:                                      ; preds = %for.cond.344
  %313 = bitcast i32* %freq_scale to i8*
  call void @llvm.lifetime.end(i64 4, i8* %313) #1
  %314 = bitcast i32* %part_max to i8*
  call void @llvm.lifetime.end(i64 4, i8* %314) #1
  %315 = bitcast i32* %loop to i8*
  call void @llvm.lifetime.end(i64 4, i8* %315) #1
  %316 = bitcast i32* %k2 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %316) #1
  %317 = bitcast i32* %k to i8*
  call void @llvm.lifetime.end(i64 4, i8* %317) #1
  %318 = bitcast i32* %j to i8*
  call void @llvm.lifetime.end(i64 4, i8* %318) #1
  %319 = bitcast i32* %i to i8*
  call void @llvm.lifetime.end(i64 4, i8* %319) #1
  %320 = bitcast i32* %sbmax to i8*
  call void @llvm.lifetime.end(i64 4, i8* %320) #1
  %321 = bitcast double** %p to i8*
  call void @llvm.lifetime.end(i64 8, i8* %321) #1
  %322 = bitcast i32* %cbmax_tp to i8*
  call void @llvm.lifetime.end(i64 4, i8* %322) #1
  %323 = bitcast i32* %cbmax to i8*
  call void @llvm.lifetime.end(i64 4, i8* %323) #1
  %324 = bitcast [63 x double]* %bval_s to i8*
  call void @llvm.lifetime.end(i64 504, i8* %324) #1
  %325 = bitcast [63 x double]* %bval_l to i8*
  call void @llvm.lifetime.end(i64 504, i8* %325) #1
  %326 = bitcast double* %freq_tp to i8*
  call void @llvm.lifetime.end(i64 8, i8* %326) #1
  ret void
}

; Function Attrs: nounwind
declare double @exp(double) #4

declare void @init_fft() #2

declare void @fft_long(float*, i32, i16**) #2

declare void @fft_short([256 x float]*, i32, i16**) #2

; Function Attrs: nounwind
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* nocapture, i8* nocapture readonly, i64, i32, i1) #1

; Function Attrs: nounwind
declare double @sqrt(double) #4

; Function Attrs: nounwind readnone
declare double @fabs(double) #5

; Function Attrs: nounwind
declare double @log(double) #4

; Function Attrs: nounwind
declare double @log10(double) #4

; Function Attrs: noreturn nounwind
declare void @abort() #3

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { noreturn nounwind "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { nounwind "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #5 = { nounwind readnone "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #6 = { noreturn nounwind }
attributes #7 = { nounwind readnone }

!llvm.ident = !{!0}

!0 = !{!"clang version 3.7.0 (tags/RELEASE_370/final)"}
!1 = !{!2, !2, i64 0}
!2 = !{!"any pointer", !3, i64 0}
!3 = !{!"omnipotent char", !4, i64 0}
!4 = !{!"Simple C/C++ TBAA"}
!5 = !{!6, !6, i64 0}
!6 = !{!"int", !3, i64 0}
!7 = !{!8, !8, i64 0}
!8 = !{!"double", !3, i64 0}
!9 = !{!10, !11, i64 168}
!10 = !{!"", !11, i64 0, !6, i64 8, !6, i64 12, !6, i64 16, !6, i64 20, !6, i64 24, !6, i64 28, !6, i64 32, !6, i64 36, !6, i64 40, !6, i64 44, !6, i64 48, !6, i64 52, !6, i64 56, !6, i64 60, !6, i64 64, !6, i64 68, !6, i64 72, !6, i64 76, !6, i64 80, !6, i64 84, !6, i64 88, !6, i64 92, !6, i64 96, !6, i64 100, !6, i64 104, !6, i64 108, !6, i64 112, !6, i64 116, !3, i64 120, !6, i64 124, !2, i64 128, !2, i64 136, !6, i64 144, !6, i64 148, !12, i64 152, !6, i64 156, !6, i64 160, !6, i64 164, !11, i64 168, !11, i64 176, !6, i64 184, !6, i64 188, !6, i64 192, !6, i64 196, !6, i64 200, !6, i64 204, !6, i64 208, !6, i64 212, !12, i64 216, !6, i64 220, !6, i64 224, !6, i64 228, !12, i64 232, !12, i64 236, !12, i64 240, !12, i64 244, !6, i64 248, !6, i64 252, !6, i64 256, !6, i64 260, !6, i64 264, !6, i64 268, !6, i64 272, !6, i64 276}
!11 = !{!"long", !3, i64 0}
!12 = !{!"float", !3, i64 0}
!13 = !{!10, !6, i64 16}
!14 = !{!10, !12, i64 152}
!15 = !{!12, !12, i64 0}
!16 = !{!10, !6, i64 192}
!17 = !{!10, !6, i64 204}
!18 = !{!10, !6, i64 36}
!19 = !{i64 0, i64 176, !20, i64 176, i64 312, !20}
!20 = !{!3, !3, i64 0}
!21 = !{!10, !6, i64 160}
!22 = !{!10, !6, i64 156}
