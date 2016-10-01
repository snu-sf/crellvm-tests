; ModuleID = './MultiSource.Benchmarks.MiBench/10.consumer-lame.quantize-pvt.bc'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.scalefac_struct = type { [23 x i32], [14 x i32] }
%struct._IO_FILE = type { i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, %struct._IO_marker*, %struct._IO_FILE*, i32, i32, i64, i16, i8, [1 x i8], i8*, i64, i8*, i8*, i8*, i8*, i64, i32, [20 x i8] }
%struct._IO_marker = type { %struct._IO_marker*, %struct._IO_FILE*, i32 }
%struct.lame_global_flags = type { i64, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i8*, i8*, i32, i32, float, i32, i32, i32, i64, i64, i32, i32, i32, i32, i32, i32, i32, i32, float, i32, i32, i32, float, float, float, float, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.III_side_info_t = type { i32, i32, i32, [2 x [4 x i32]], [2 x %struct.anon] }
%struct.anon = type { [2 x %struct.gr_info_ss] }
%struct.gr_info_ss = type { %struct.gr_info }
%struct.gr_info = type { i32, i32, i32, i32, i32, i32, i32, i32, [3 x i32], [3 x i32], i32, i32, i32, i32, i32, i32, i32, i32, i32, i32*, [4 x i32] }
%struct.III_scalefac_t = type { [22 x i32], [13 x [3 x i32]] }
%struct.III_psy_ratio = type { %struct.III_psy_xmin, %struct.III_psy_xmin }
%struct.III_psy_xmin = type { [22 x double], [13 x [3 x double]] }

@masking_lower = global float 1.000000e+00, align 4
@nr_of_sfb_block = global [6 x [3 x [4 x i32]]] [[3 x [4 x i32]] [[4 x i32] [i32 6, i32 5, i32 5, i32 5], [4 x i32] [i32 9, i32 9, i32 9, i32 9], [4 x i32] [i32 6, i32 9, i32 9, i32 9]], [3 x [4 x i32]] [[4 x i32] [i32 6, i32 5, i32 7, i32 3], [4 x i32] [i32 9, i32 9, i32 12, i32 6], [4 x i32] [i32 6, i32 9, i32 12, i32 6]], [3 x [4 x i32]] [[4 x i32] [i32 11, i32 10, i32 0, i32 0], [4 x i32] [i32 18, i32 18, i32 0, i32 0], [4 x i32] [i32 15, i32 18, i32 0, i32 0]], [3 x [4 x i32]] [[4 x i32] [i32 7, i32 7, i32 7, i32 0], [4 x i32] [i32 12, i32 12, i32 12, i32 0], [4 x i32] [i32 6, i32 15, i32 12, i32 0]], [3 x [4 x i32]] [[4 x i32] [i32 6, i32 6, i32 6, i32 3], [4 x i32] [i32 12, i32 9, i32 9, i32 6], [4 x i32] [i32 6, i32 12, i32 9, i32 6]], [3 x [4 x i32]] [[4 x i32] [i32 8, i32 8, i32 5, i32 0], [4 x i32] [i32 15, i32 12, i32 9, i32 0], [4 x i32] [i32 6, i32 18, i32 9, i32 0]]], align 16
@pretab = global [21 x i32] [i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 1, i32 1, i32 1, i32 1, i32 2, i32 2, i32 3, i32 3, i32 3, i32 2], align 16
@sfBandIndex = global [6 x %struct.scalefac_struct] [%struct.scalefac_struct { [23 x i32] [i32 0, i32 6, i32 12, i32 18, i32 24, i32 30, i32 36, i32 44, i32 54, i32 66, i32 80, i32 96, i32 116, i32 140, i32 168, i32 200, i32 238, i32 284, i32 336, i32 396, i32 464, i32 522, i32 576], [14 x i32] [i32 0, i32 4, i32 8, i32 12, i32 18, i32 24, i32 32, i32 42, i32 56, i32 74, i32 100, i32 132, i32 174, i32 192] }, %struct.scalefac_struct { [23 x i32] [i32 0, i32 6, i32 12, i32 18, i32 24, i32 30, i32 36, i32 44, i32 54, i32 66, i32 80, i32 96, i32 114, i32 136, i32 162, i32 194, i32 232, i32 278, i32 332, i32 394, i32 464, i32 540, i32 576], [14 x i32] [i32 0, i32 4, i32 8, i32 12, i32 18, i32 26, i32 36, i32 48, i32 62, i32 80, i32 104, i32 136, i32 180, i32 192] }, %struct.scalefac_struct { [23 x i32] [i32 0, i32 6, i32 12, i32 18, i32 24, i32 30, i32 36, i32 44, i32 54, i32 66, i32 80, i32 96, i32 116, i32 140, i32 168, i32 200, i32 238, i32 284, i32 336, i32 396, i32 464, i32 522, i32 576], [14 x i32] [i32 0, i32 4, i32 8, i32 12, i32 18, i32 26, i32 36, i32 48, i32 62, i32 80, i32 104, i32 134, i32 174, i32 192] }, %struct.scalefac_struct { [23 x i32] [i32 0, i32 4, i32 8, i32 12, i32 16, i32 20, i32 24, i32 30, i32 36, i32 44, i32 52, i32 62, i32 74, i32 90, i32 110, i32 134, i32 162, i32 196, i32 238, i32 288, i32 342, i32 418, i32 576], [14 x i32] [i32 0, i32 4, i32 8, i32 12, i32 16, i32 22, i32 30, i32 40, i32 52, i32 66, i32 84, i32 106, i32 136, i32 192] }, %struct.scalefac_struct { [23 x i32] [i32 0, i32 4, i32 8, i32 12, i32 16, i32 20, i32 24, i32 30, i32 36, i32 42, i32 50, i32 60, i32 72, i32 88, i32 106, i32 128, i32 156, i32 190, i32 230, i32 276, i32 330, i32 384, i32 576], [14 x i32] [i32 0, i32 4, i32 8, i32 12, i32 16, i32 22, i32 28, i32 38, i32 50, i32 64, i32 80, i32 100, i32 126, i32 192] }, %struct.scalefac_struct { [23 x i32] [i32 0, i32 4, i32 8, i32 12, i32 16, i32 20, i32 24, i32 30, i32 36, i32 44, i32 54, i32 66, i32 82, i32 102, i32 126, i32 156, i32 194, i32 240, i32 296, i32 364, i32 448, i32 550, i32 576], [14 x i32] [i32 0, i32 4, i32 8, i32 12, i32 16, i32 22, i32 30, i32 42, i32 58, i32 78, i32 104, i32 138, i32 180, i32 192] }], align 16
@scalefac_band = common global %struct.scalefac_struct zeroinitializer, align 4
@ATH_l = internal global [21 x double] zeroinitializer, align 16
@ATH_s = internal global [21 x double] zeroinitializer, align 16
@pow43 = common global [8208 x double] zeroinitializer, align 16
@adj43 = internal global [8208 x double] zeroinitializer, align 16
@adj43asm = internal global [8208 x double] zeroinitializer, align 16
@ipow20 = common global [256 x double] zeroinitializer, align 16
@pow20 = common global [256 x double] zeroinitializer, align 16
@convert_mdct = common global i32 0, align 4
@reduce_sidechannel = common global i32 0, align 4
@scale_bitcount.slen1 = internal global [16 x i32] [i32 1, i32 1, i32 1, i32 1, i32 8, i32 2, i32 2, i32 2, i32 4, i32 4, i32 4, i32 8, i32 8, i32 8, i32 16, i32 16], align 16
@scale_bitcount.slen2 = internal global [16 x i32] [i32 1, i32 2, i32 4, i32 8, i32 1, i32 2, i32 4, i32 8, i32 2, i32 4, i32 8, i32 2, i32 4, i32 8, i32 4, i32 8], align 16
@scale_bitcount.slen1_tab = internal global [16 x i32] [i32 0, i32 18, i32 36, i32 54, i32 54, i32 36, i32 54, i32 72, i32 54, i32 72, i32 90, i32 72, i32 90, i32 108, i32 108, i32 126], align 16
@scale_bitcount.slen2_tab = internal global [16 x i32] [i32 0, i32 10, i32 20, i32 30, i32 33, i32 21, i32 31, i32 41, i32 32, i32 42, i32 52, i32 43, i32 53, i32 63, i32 64, i32 74], align 16
@max_range_sfac_tab = internal global [6 x [4 x i32]] [[4 x i32] [i32 15, i32 15, i32 7, i32 7], [4 x i32] [i32 15, i32 15, i32 7, i32 0], [4 x i32] [i32 7, i32 3, i32 0, i32 0], [4 x i32] [i32 15, i32 31, i32 31, i32 0], [4 x i32] [i32 7, i32 7, i32 7, i32 0], [4 x i32] [i32 3, i32 3, i32 0, i32 0]], align 16
@scale_bitcount_lsf.log2tab = internal global [16 x i32] [i32 0, i32 1, i32 2, i32 2, i32 3, i32 3, i32 3, i32 3, i32 4, i32 4, i32 4, i32 4, i32 4, i32 4, i32 4, i32 4], align 16
@stderr = external global %struct._IO_FILE*, align 8
@.str = private unnamed_addr constant [38 x i8] c"intensity stereo not implemented yet\0A\00", align 1
@bin_search_StepSize2.CurrentStep = internal global i32 4, align 4
@ATH_mdct_long = common global [576 x double] zeroinitializer, align 16
@ATH_mdct_short = common global [192 x double] zeroinitializer, align 16

; Function Attrs: nounwind uwtable
define void @iteration_init(%struct.lame_global_flags* %gfp, %struct.III_side_info_t* %l3_side, [2 x [576 x i32]]* %l3_enc) #0 {
entry:
  %gfp.addr = alloca %struct.lame_global_flags*, align 8
  %l3_side.addr = alloca %struct.III_side_info_t*, align 8
  %l3_enc.addr = alloca [2 x [576 x i32]]*, align 8
  %cod_info = alloca %struct.gr_info*, align 8
  %ch = alloca i32, align 4
  %gr = alloca i32, align 4
  %i = alloca i32, align 4
  store %struct.lame_global_flags* %gfp, %struct.lame_global_flags** %gfp.addr, align 8, !tbaa !1
  store %struct.III_side_info_t* %l3_side, %struct.III_side_info_t** %l3_side.addr, align 8, !tbaa !1
  store [2 x [576 x i32]]* %l3_enc, [2 x [576 x i32]]** %l3_enc.addr, align 8, !tbaa !1
  %0 = bitcast %struct.gr_info** %cod_info to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #1
  %1 = bitcast i32* %ch to i8*
  call void @llvm.lifetime.start(i64 4, i8* %1) #1
  %2 = bitcast i32* %gr to i8*
  call void @llvm.lifetime.start(i64 4, i8* %2) #1
  %3 = bitcast i32* %i to i8*
  call void @llvm.lifetime.start(i64 4, i8* %3) #1
  %4 = load %struct.III_side_info_t*, %struct.III_side_info_t** %l3_side.addr, align 8, !tbaa !1
  %resvDrain = getelementptr inbounds %struct.III_side_info_t, %struct.III_side_info_t* %4, i32 0, i32 2
  store i32 0, i32* %resvDrain, align 4, !tbaa !5
  %5 = load %struct.lame_global_flags*, %struct.lame_global_flags** %gfp.addr, align 8, !tbaa !1
  %frameNum = getelementptr inbounds %struct.lame_global_flags, %struct.lame_global_flags* %5, i32 0, i32 39
  %6 = load i64, i64* %frameNum, align 8, !tbaa !8
  %cmp = icmp eq i64 %6, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store i32 0, i32* %i, align 4, !tbaa !12
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.then
  %7 = load i32, i32* %i, align 4, !tbaa !12
  %cmp1 = icmp slt i32 %7, 23
  br i1 %cmp1, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %8 = load i32, i32* %i, align 4, !tbaa !12
  %idxprom = sext i32 %8 to i64
  %9 = load %struct.lame_global_flags*, %struct.lame_global_flags** %gfp.addr, align 8, !tbaa !1
  %samplerate_index = getelementptr inbounds %struct.lame_global_flags, %struct.lame_global_flags* %9, i32 0, i32 51
  %10 = load i32, i32* %samplerate_index, align 4, !tbaa !13
  %11 = load %struct.lame_global_flags*, %struct.lame_global_flags** %gfp.addr, align 8, !tbaa !1
  %version = getelementptr inbounds %struct.lame_global_flags, %struct.lame_global_flags* %11, i32 0, i32 43
  %12 = load i32, i32* %version, align 4, !tbaa !14
  %mul = mul nsw i32 %12, 3
  %add = add nsw i32 %10, %mul
  %idxprom2 = sext i32 %add to i64
  %arrayidx = getelementptr inbounds [6 x %struct.scalefac_struct], [6 x %struct.scalefac_struct]* @sfBandIndex, i32 0, i64 %idxprom2
  %l = getelementptr inbounds %struct.scalefac_struct, %struct.scalefac_struct* %arrayidx, i32 0, i32 0
  %arrayidx3 = getelementptr inbounds [23 x i32], [23 x i32]* %l, i32 0, i64 %idxprom
  %13 = load i32, i32* %arrayidx3, align 4, !tbaa !12
  %14 = load i32, i32* %i, align 4, !tbaa !12
  %idxprom4 = sext i32 %14 to i64
  %arrayidx5 = getelementptr inbounds [23 x i32], [23 x i32]* getelementptr inbounds (%struct.scalefac_struct, %struct.scalefac_struct* @scalefac_band, i32 0, i32 0), i32 0, i64 %idxprom4
  store i32 %13, i32* %arrayidx5, align 4, !tbaa !12
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %15 = load i32, i32* %i, align 4, !tbaa !12
  %inc = add nsw i32 %15, 1
  store i32 %inc, i32* %i, align 4, !tbaa !12
  br label %for.cond

for.end:                                          ; preds = %for.cond
  store i32 0, i32* %i, align 4, !tbaa !12
  br label %for.cond.6

for.cond.6:                                       ; preds = %for.inc.19, %for.end
  %16 = load i32, i32* %i, align 4, !tbaa !12
  %cmp7 = icmp slt i32 %16, 14
  br i1 %cmp7, label %for.body.8, label %for.end.21

for.body.8:                                       ; preds = %for.cond.6
  %17 = load i32, i32* %i, align 4, !tbaa !12
  %idxprom9 = sext i32 %17 to i64
  %18 = load %struct.lame_global_flags*, %struct.lame_global_flags** %gfp.addr, align 8, !tbaa !1
  %samplerate_index10 = getelementptr inbounds %struct.lame_global_flags, %struct.lame_global_flags* %18, i32 0, i32 51
  %19 = load i32, i32* %samplerate_index10, align 4, !tbaa !13
  %20 = load %struct.lame_global_flags*, %struct.lame_global_flags** %gfp.addr, align 8, !tbaa !1
  %version11 = getelementptr inbounds %struct.lame_global_flags, %struct.lame_global_flags* %20, i32 0, i32 43
  %21 = load i32, i32* %version11, align 4, !tbaa !14
  %mul12 = mul nsw i32 %21, 3
  %add13 = add nsw i32 %19, %mul12
  %idxprom14 = sext i32 %add13 to i64
  %arrayidx15 = getelementptr inbounds [6 x %struct.scalefac_struct], [6 x %struct.scalefac_struct]* @sfBandIndex, i32 0, i64 %idxprom14
  %s = getelementptr inbounds %struct.scalefac_struct, %struct.scalefac_struct* %arrayidx15, i32 0, i32 1
  %arrayidx16 = getelementptr inbounds [14 x i32], [14 x i32]* %s, i32 0, i64 %idxprom9
  %22 = load i32, i32* %arrayidx16, align 4, !tbaa !12
  %23 = load i32, i32* %i, align 4, !tbaa !12
  %idxprom17 = sext i32 %23 to i64
  %arrayidx18 = getelementptr inbounds [14 x i32], [14 x i32]* getelementptr inbounds (%struct.scalefac_struct, %struct.scalefac_struct* @scalefac_band, i32 0, i32 1), i32 0, i64 %idxprom17
  store i32 %22, i32* %arrayidx18, align 4, !tbaa !12
  br label %for.inc.19

for.inc.19:                                       ; preds = %for.body.8
  %24 = load i32, i32* %i, align 4, !tbaa !12
  %inc20 = add nsw i32 %24, 1
  store i32 %inc20, i32* %i, align 4, !tbaa !12
  br label %for.cond.6

for.end.21:                                       ; preds = %for.cond.6
  %25 = load %struct.III_side_info_t*, %struct.III_side_info_t** %l3_side.addr, align 8, !tbaa !1
  %main_data_begin = getelementptr inbounds %struct.III_side_info_t, %struct.III_side_info_t* %25, i32 0, i32 0
  store i32 0, i32* %main_data_begin, align 4, !tbaa !15
  %26 = load %struct.lame_global_flags*, %struct.lame_global_flags** %gfp.addr, align 8, !tbaa !1
  call void @compute_ath(%struct.lame_global_flags* %26, double* getelementptr inbounds ([21 x double], [21 x double]* @ATH_l, i32 0, i32 0), double* getelementptr inbounds ([21 x double], [21 x double]* @ATH_s, i32 0, i32 0))
  store i32 0, i32* %i, align 4, !tbaa !12
  br label %for.cond.22

for.cond.22:                                      ; preds = %for.inc.27, %for.end.21
  %27 = load i32, i32* %i, align 4, !tbaa !12
  %cmp23 = icmp slt i32 %27, 8208
  br i1 %cmp23, label %for.body.24, label %for.end.29

for.body.24:                                      ; preds = %for.cond.22
  %28 = load i32, i32* %i, align 4, !tbaa !12
  %conv = sitofp i32 %28 to double
  %call = call double @pow(double %conv, double 0x3FF5555555555555) #1
  %29 = load i32, i32* %i, align 4, !tbaa !12
  %idxprom25 = sext i32 %29 to i64
  %arrayidx26 = getelementptr inbounds [8208 x double], [8208 x double]* @pow43, i32 0, i64 %idxprom25
  store double %call, double* %arrayidx26, align 8, !tbaa !16
  br label %for.inc.27

for.inc.27:                                       ; preds = %for.body.24
  %30 = load i32, i32* %i, align 4, !tbaa !12
  %inc28 = add nsw i32 %30, 1
  store i32 %inc28, i32* %i, align 4, !tbaa !12
  br label %for.cond.22

for.end.29:                                       ; preds = %for.cond.22
  store i32 0, i32* %i, align 4, !tbaa !12
  br label %for.cond.30

for.cond.30:                                      ; preds = %for.inc.46, %for.end.29
  %31 = load i32, i32* %i, align 4, !tbaa !12
  %cmp31 = icmp slt i32 %31, 8207
  br i1 %cmp31, label %for.body.33, label %for.end.48

for.body.33:                                      ; preds = %for.cond.30
  %32 = load i32, i32* %i, align 4, !tbaa !12
  %add34 = add nsw i32 %32, 1
  %conv35 = sitofp i32 %add34 to double
  %33 = load i32, i32* %i, align 4, !tbaa !12
  %idxprom36 = sext i32 %33 to i64
  %arrayidx37 = getelementptr inbounds [8208 x double], [8208 x double]* @pow43, i32 0, i64 %idxprom36
  %34 = load double, double* %arrayidx37, align 8, !tbaa !16
  %35 = load i32, i32* %i, align 4, !tbaa !12
  %add38 = add nsw i32 %35, 1
  %idxprom39 = sext i32 %add38 to i64
  %arrayidx40 = getelementptr inbounds [8208 x double], [8208 x double]* @pow43, i32 0, i64 %idxprom39
  %36 = load double, double* %arrayidx40, align 8, !tbaa !16
  %add41 = fadd double %34, %36
  %mul42 = fmul double 5.000000e-01, %add41
  %call43 = call double @pow(double %mul42, double 7.500000e-01) #1
  %sub = fsub double %conv35, %call43
  %37 = load i32, i32* %i, align 4, !tbaa !12
  %idxprom44 = sext i32 %37 to i64
  %arrayidx45 = getelementptr inbounds [8208 x double], [8208 x double]* @adj43, i32 0, i64 %idxprom44
  store double %sub, double* %arrayidx45, align 8, !tbaa !16
  br label %for.inc.46

for.inc.46:                                       ; preds = %for.body.33
  %38 = load i32, i32* %i, align 4, !tbaa !12
  %inc47 = add nsw i32 %38, 1
  store i32 %inc47, i32* %i, align 4, !tbaa !12
  br label %for.cond.30

for.end.48:                                       ; preds = %for.cond.30
  %39 = load i32, i32* %i, align 4, !tbaa !12
  %idxprom49 = sext i32 %39 to i64
  %arrayidx50 = getelementptr inbounds [8208 x double], [8208 x double]* @adj43, i32 0, i64 %idxprom49
  store double 5.000000e-01, double* %arrayidx50, align 8, !tbaa !16
  store double 0.000000e+00, double* getelementptr inbounds ([8208 x double], [8208 x double]* @adj43asm, i32 0, i64 0), align 8, !tbaa !16
  store i32 1, i32* %i, align 4, !tbaa !12
  br label %for.cond.51

for.cond.51:                                      ; preds = %for.inc.68, %for.end.48
  %40 = load i32, i32* %i, align 4, !tbaa !12
  %cmp52 = icmp slt i32 %40, 8208
  br i1 %cmp52, label %for.body.54, label %for.end.70

for.body.54:                                      ; preds = %for.cond.51
  %41 = load i32, i32* %i, align 4, !tbaa !12
  %conv55 = sitofp i32 %41 to double
  %sub56 = fsub double %conv55, 5.000000e-01
  %42 = load i32, i32* %i, align 4, !tbaa !12
  %sub57 = sub nsw i32 %42, 1
  %idxprom58 = sext i32 %sub57 to i64
  %arrayidx59 = getelementptr inbounds [8208 x double], [8208 x double]* @pow43, i32 0, i64 %idxprom58
  %43 = load double, double* %arrayidx59, align 8, !tbaa !16
  %44 = load i32, i32* %i, align 4, !tbaa !12
  %idxprom60 = sext i32 %44 to i64
  %arrayidx61 = getelementptr inbounds [8208 x double], [8208 x double]* @pow43, i32 0, i64 %idxprom60
  %45 = load double, double* %arrayidx61, align 8, !tbaa !16
  %add62 = fadd double %43, %45
  %mul63 = fmul double 5.000000e-01, %add62
  %call64 = call double @pow(double %mul63, double 7.500000e-01) #1
  %sub65 = fsub double %sub56, %call64
  %46 = load i32, i32* %i, align 4, !tbaa !12
  %idxprom66 = sext i32 %46 to i64
  %arrayidx67 = getelementptr inbounds [8208 x double], [8208 x double]* @adj43asm, i32 0, i64 %idxprom66
  store double %sub65, double* %arrayidx67, align 8, !tbaa !16
  br label %for.inc.68

for.inc.68:                                       ; preds = %for.body.54
  %47 = load i32, i32* %i, align 4, !tbaa !12
  %inc69 = add nsw i32 %47, 1
  store i32 %inc69, i32* %i, align 4, !tbaa !12
  br label %for.cond.51

for.end.70:                                       ; preds = %for.cond.51
  store i32 0, i32* %i, align 4, !tbaa !12
  br label %for.cond.71

for.cond.71:                                      ; preds = %for.inc.87, %for.end.70
  %48 = load i32, i32* %i, align 4, !tbaa !12
  %cmp72 = icmp slt i32 %48, 256
  br i1 %cmp72, label %for.body.74, label %for.end.89

for.body.74:                                      ; preds = %for.cond.71
  %49 = load i32, i32* %i, align 4, !tbaa !12
  %sub75 = sub nsw i32 %49, 210
  %conv76 = sitofp i32 %sub75 to double
  %mul77 = fmul double %conv76, -1.875000e-01
  %call78 = call double @pow(double 2.000000e+00, double %mul77) #1
  %50 = load i32, i32* %i, align 4, !tbaa !12
  %idxprom79 = sext i32 %50 to i64
  %arrayidx80 = getelementptr inbounds [256 x double], [256 x double]* @ipow20, i32 0, i64 %idxprom79
  store double %call78, double* %arrayidx80, align 8, !tbaa !16
  %51 = load i32, i32* %i, align 4, !tbaa !12
  %sub81 = sub nsw i32 %51, 210
  %conv82 = sitofp i32 %sub81 to double
  %mul83 = fmul double %conv82, 2.500000e-01
  %call84 = call double @pow(double 2.000000e+00, double %mul83) #1
  %52 = load i32, i32* %i, align 4, !tbaa !12
  %idxprom85 = sext i32 %52 to i64
  %arrayidx86 = getelementptr inbounds [256 x double], [256 x double]* @pow20, i32 0, i64 %idxprom85
  store double %call84, double* %arrayidx86, align 8, !tbaa !16
  br label %for.inc.87

for.inc.87:                                       ; preds = %for.body.74
  %53 = load i32, i32* %i, align 4, !tbaa !12
  %inc88 = add nsw i32 %53, 1
  store i32 %inc88, i32* %i, align 4, !tbaa !12
  br label %for.cond.71

for.end.89:                                       ; preds = %for.cond.71
  br label %if.end

if.end:                                           ; preds = %for.end.89, %entry
  store i32 0, i32* @convert_mdct, align 4, !tbaa !12
  store i32 0, i32* @reduce_sidechannel, align 4, !tbaa !12
  %54 = load %struct.lame_global_flags*, %struct.lame_global_flags** %gfp.addr, align 8, !tbaa !1
  %mode_ext = getelementptr inbounds %struct.lame_global_flags, %struct.lame_global_flags* %54, i32 0, i32 52
  %55 = load i32, i32* %mode_ext, align 4, !tbaa !18
  %cmp90 = icmp eq i32 %55, 2
  br i1 %cmp90, label %if.then.92, label %if.end.93

if.then.92:                                       ; preds = %if.end
  store i32 1, i32* @convert_mdct, align 4, !tbaa !12
  store i32 1, i32* @reduce_sidechannel, align 4, !tbaa !12
  br label %if.end.93

if.end.93:                                        ; preds = %if.then.92, %if.end
  store i32 0, i32* %gr, align 4, !tbaa !12
  br label %for.cond.94

for.cond.94:                                      ; preds = %for.inc.117, %if.end.93
  %56 = load i32, i32* %gr, align 4, !tbaa !12
  %57 = load %struct.lame_global_flags*, %struct.lame_global_flags** %gfp.addr, align 8, !tbaa !1
  %mode_gr = getelementptr inbounds %struct.lame_global_flags, %struct.lame_global_flags* %57, i32 0, i32 45
  %58 = load i32, i32* %mode_gr, align 4, !tbaa !19
  %cmp95 = icmp slt i32 %56, %58
  br i1 %cmp95, label %for.body.97, label %for.end.119

for.body.97:                                      ; preds = %for.cond.94
  store i32 0, i32* %ch, align 4, !tbaa !12
  br label %for.cond.98

for.cond.98:                                      ; preds = %for.inc.114, %for.body.97
  %59 = load i32, i32* %ch, align 4, !tbaa !12
  %60 = load %struct.lame_global_flags*, %struct.lame_global_flags** %gfp.addr, align 8, !tbaa !1
  %stereo = getelementptr inbounds %struct.lame_global_flags, %struct.lame_global_flags* %60, i32 0, i32 46
  %61 = load i32, i32* %stereo, align 4, !tbaa !20
  %cmp99 = icmp slt i32 %59, %61
  br i1 %cmp99, label %for.body.101, label %for.end.116

for.body.101:                                     ; preds = %for.cond.98
  %62 = load i32, i32* %ch, align 4, !tbaa !12
  %idxprom102 = sext i32 %62 to i64
  %63 = load i32, i32* %gr, align 4, !tbaa !12
  %idxprom103 = sext i32 %63 to i64
  %64 = load %struct.III_side_info_t*, %struct.III_side_info_t** %l3_side.addr, align 8, !tbaa !1
  %gr104 = getelementptr inbounds %struct.III_side_info_t, %struct.III_side_info_t* %64, i32 0, i32 4
  %arrayidx105 = getelementptr inbounds [2 x %struct.anon], [2 x %struct.anon]* %gr104, i32 0, i64 %idxprom103
  %ch106 = getelementptr inbounds %struct.anon, %struct.anon* %arrayidx105, i32 0, i32 0
  %arrayidx107 = getelementptr inbounds [2 x %struct.gr_info_ss], [2 x %struct.gr_info_ss]* %ch106, i32 0, i64 %idxprom102
  %65 = bitcast %struct.gr_info_ss* %arrayidx107 to %struct.gr_info*
  store %struct.gr_info* %65, %struct.gr_info** %cod_info, align 8, !tbaa !1
  %66 = load %struct.gr_info*, %struct.gr_info** %cod_info, align 8, !tbaa !1
  %block_type = getelementptr inbounds %struct.gr_info, %struct.gr_info* %66, i32 0, i32 6
  %67 = load i32, i32* %block_type, align 4, !tbaa !21
  %cmp108 = icmp eq i32 %67, 2
  br i1 %cmp108, label %if.then.110, label %if.else

if.then.110:                                      ; preds = %for.body.101
  %68 = load %struct.gr_info*, %struct.gr_info** %cod_info, align 8, !tbaa !1
  %sfb_lmax = getelementptr inbounds %struct.gr_info, %struct.gr_info* %68, i32 0, i32 16
  store i32 0, i32* %sfb_lmax, align 4, !tbaa !23
  %69 = load %struct.gr_info*, %struct.gr_info** %cod_info, align 8, !tbaa !1
  %sfb_smax = getelementptr inbounds %struct.gr_info, %struct.gr_info* %69, i32 0, i32 17
  store i32 0, i32* %sfb_smax, align 4, !tbaa !24
  br label %if.end.113

if.else:                                          ; preds = %for.body.101
  %70 = load %struct.gr_info*, %struct.gr_info** %cod_info, align 8, !tbaa !1
  %sfb_lmax111 = getelementptr inbounds %struct.gr_info, %struct.gr_info* %70, i32 0, i32 16
  store i32 21, i32* %sfb_lmax111, align 4, !tbaa !23
  %71 = load %struct.gr_info*, %struct.gr_info** %cod_info, align 8, !tbaa !1
  %sfb_smax112 = getelementptr inbounds %struct.gr_info, %struct.gr_info* %71, i32 0, i32 17
  store i32 12, i32* %sfb_smax112, align 4, !tbaa !24
  br label %if.end.113

if.end.113:                                       ; preds = %if.else, %if.then.110
  br label %for.inc.114

for.inc.114:                                      ; preds = %if.end.113
  %72 = load i32, i32* %ch, align 4, !tbaa !12
  %inc115 = add nsw i32 %72, 1
  store i32 %inc115, i32* %ch, align 4, !tbaa !12
  br label %for.cond.98

for.end.116:                                      ; preds = %for.cond.98
  br label %for.inc.117

for.inc.117:                                      ; preds = %for.end.116
  %73 = load i32, i32* %gr, align 4, !tbaa !12
  %inc118 = add nsw i32 %73, 1
  store i32 %inc118, i32* %gr, align 4, !tbaa !12
  br label %for.cond.94

for.end.119:                                      ; preds = %for.cond.94
  store i32 0, i32* %ch, align 4, !tbaa !12
  br label %for.cond.120

for.cond.120:                                     ; preds = %for.inc.136, %for.end.119
  %74 = load i32, i32* %ch, align 4, !tbaa !12
  %75 = load %struct.lame_global_flags*, %struct.lame_global_flags** %gfp.addr, align 8, !tbaa !1
  %stereo121 = getelementptr inbounds %struct.lame_global_flags, %struct.lame_global_flags* %75, i32 0, i32 46
  %76 = load i32, i32* %stereo121, align 4, !tbaa !20
  %cmp122 = icmp slt i32 %74, %76
  br i1 %cmp122, label %for.body.124, label %for.end.138

for.body.124:                                     ; preds = %for.cond.120
  store i32 0, i32* %i, align 4, !tbaa !12
  br label %for.cond.125

for.cond.125:                                     ; preds = %for.inc.133, %for.body.124
  %77 = load i32, i32* %i, align 4, !tbaa !12
  %cmp126 = icmp slt i32 %77, 4
  br i1 %cmp126, label %for.body.128, label %for.end.135

for.body.128:                                     ; preds = %for.cond.125
  %78 = load i32, i32* %i, align 4, !tbaa !12
  %idxprom129 = sext i32 %78 to i64
  %79 = load i32, i32* %ch, align 4, !tbaa !12
  %idxprom130 = sext i32 %79 to i64
  %80 = load %struct.III_side_info_t*, %struct.III_side_info_t** %l3_side.addr, align 8, !tbaa !1
  %scfsi = getelementptr inbounds %struct.III_side_info_t, %struct.III_side_info_t* %80, i32 0, i32 3
  %arrayidx131 = getelementptr inbounds [2 x [4 x i32]], [2 x [4 x i32]]* %scfsi, i32 0, i64 %idxprom130
  %arrayidx132 = getelementptr inbounds [4 x i32], [4 x i32]* %arrayidx131, i32 0, i64 %idxprom129
  store i32 0, i32* %arrayidx132, align 4, !tbaa !12
  br label %for.inc.133

for.inc.133:                                      ; preds = %for.body.128
  %81 = load i32, i32* %i, align 4, !tbaa !12
  %inc134 = add nsw i32 %81, 1
  store i32 %inc134, i32* %i, align 4, !tbaa !12
  br label %for.cond.125

for.end.135:                                      ; preds = %for.cond.125
  br label %for.inc.136

for.inc.136:                                      ; preds = %for.end.135
  %82 = load i32, i32* %ch, align 4, !tbaa !12
  %inc137 = add nsw i32 %82, 1
  store i32 %inc137, i32* %ch, align 4, !tbaa !12
  br label %for.cond.120

for.end.138:                                      ; preds = %for.cond.120
  %83 = bitcast i32* %i to i8*
  call void @llvm.lifetime.end(i64 4, i8* %83) #1
  %84 = bitcast i32* %gr to i8*
  call void @llvm.lifetime.end(i64 4, i8* %84) #1
  %85 = bitcast i32* %ch to i8*
  call void @llvm.lifetime.end(i64 4, i8* %85) #1
  %86 = bitcast %struct.gr_info** %cod_info to i8*
  call void @llvm.lifetime.end(i64 8, i8* %86) #1
  ret void
}

; Function Attrs: nounwind
declare void @llvm.lifetime.start(i64, i8* nocapture) #1

; Function Attrs: nounwind uwtable
define void @compute_ath(%struct.lame_global_flags* %gfp, double* %ATH_l, double* %ATH_s) #0 {
entry:
  %gfp.addr = alloca %struct.lame_global_flags*, align 8
  %ATH_l.addr = alloca double*, align 8
  %ATH_s.addr = alloca double*, align 8
  %sfb = alloca i32, align 4
  %i = alloca i32, align 4
  %start = alloca i32, align 4
  %end = alloca i32, align 4
  %ATH_f = alloca double, align 8
  %samp_freq = alloca double, align 8
  store %struct.lame_global_flags* %gfp, %struct.lame_global_flags** %gfp.addr, align 8, !tbaa !1
  store double* %ATH_l, double** %ATH_l.addr, align 8, !tbaa !1
  store double* %ATH_s, double** %ATH_s.addr, align 8, !tbaa !1
  %0 = bitcast i32* %sfb to i8*
  call void @llvm.lifetime.start(i64 4, i8* %0) #1
  %1 = bitcast i32* %i to i8*
  call void @llvm.lifetime.start(i64 4, i8* %1) #1
  %2 = bitcast i32* %start to i8*
  call void @llvm.lifetime.start(i64 4, i8* %2) #1
  %3 = bitcast i32* %end to i8*
  call void @llvm.lifetime.start(i64 4, i8* %3) #1
  %4 = bitcast double* %ATH_f to i8*
  call void @llvm.lifetime.start(i64 8, i8* %4) #1
  %5 = bitcast double* %samp_freq to i8*
  call void @llvm.lifetime.start(i64 8, i8* %5) #1
  %6 = load %struct.lame_global_flags*, %struct.lame_global_flags** %gfp.addr, align 8, !tbaa !1
  %out_samplerate = getelementptr inbounds %struct.lame_global_flags, %struct.lame_global_flags* %6, i32 0, i32 3
  %7 = load i32, i32* %out_samplerate, align 4, !tbaa !25
  %conv = sitofp i32 %7 to double
  %div = fdiv double %conv, 1.000000e+03
  store double %div, double* %samp_freq, align 8, !tbaa !16
  store i32 0, i32* %sfb, align 4, !tbaa !12
  br label %for.cond

for.cond:                                         ; preds = %for.inc.20, %entry
  %8 = load i32, i32* %sfb, align 4, !tbaa !12
  %cmp = icmp slt i32 %8, 21
  br i1 %cmp, label %for.body, label %for.end.22

for.body:                                         ; preds = %for.cond
  %9 = load i32, i32* %sfb, align 4, !tbaa !12
  %idxprom = sext i32 %9 to i64
  %arrayidx = getelementptr inbounds [23 x i32], [23 x i32]* getelementptr inbounds (%struct.scalefac_struct, %struct.scalefac_struct* @scalefac_band, i32 0, i32 0), i32 0, i64 %idxprom
  %10 = load i32, i32* %arrayidx, align 4, !tbaa !12
  store i32 %10, i32* %start, align 4, !tbaa !12
  %11 = load i32, i32* %sfb, align 4, !tbaa !12
  %add = add nsw i32 %11, 1
  %idxprom2 = sext i32 %add to i64
  %arrayidx3 = getelementptr inbounds [23 x i32], [23 x i32]* getelementptr inbounds (%struct.scalefac_struct, %struct.scalefac_struct* @scalefac_band, i32 0, i32 0), i32 0, i64 %idxprom2
  %12 = load i32, i32* %arrayidx3, align 4, !tbaa !12
  store i32 %12, i32* %end, align 4, !tbaa !12
  %13 = load i32, i32* %sfb, align 4, !tbaa !12
  %idxprom4 = sext i32 %13 to i64
  %14 = load double*, double** %ATH_l.addr, align 8, !tbaa !1
  %arrayidx5 = getelementptr inbounds double, double* %14, i64 %idxprom4
  store double 1.000000e+99, double* %arrayidx5, align 8, !tbaa !16
  %15 = load i32, i32* %start, align 4, !tbaa !12
  store i32 %15, i32* %i, align 4, !tbaa !12
  br label %for.cond.6

for.cond.6:                                       ; preds = %for.inc, %for.body
  %16 = load i32, i32* %i, align 4, !tbaa !12
  %17 = load i32, i32* %end, align 4, !tbaa !12
  %cmp7 = icmp slt i32 %16, %17
  br i1 %cmp7, label %for.body.9, label %for.end

for.body.9:                                       ; preds = %for.cond.6
  %18 = load %struct.lame_global_flags*, %struct.lame_global_flags** %gfp.addr, align 8, !tbaa !1
  %19 = load double, double* %samp_freq, align 8, !tbaa !16
  %20 = load i32, i32* %i, align 4, !tbaa !12
  %conv10 = sitofp i32 %20 to double
  %mul = fmul double %19, %conv10
  %div11 = fdiv double %mul, 1.152000e+03
  %call = call double @ATHformula(%struct.lame_global_flags* %18, double %div11)
  store double %call, double* %ATH_f, align 8, !tbaa !16
  %21 = load i32, i32* %sfb, align 4, !tbaa !12
  %idxprom12 = sext i32 %21 to i64
  %22 = load double*, double** %ATH_l.addr, align 8, !tbaa !1
  %arrayidx13 = getelementptr inbounds double, double* %22, i64 %idxprom12
  %23 = load double, double* %arrayidx13, align 8, !tbaa !16
  %24 = load double, double* %ATH_f, align 8, !tbaa !16
  %cmp14 = fcmp olt double %23, %24
  br i1 %cmp14, label %cond.true, label %cond.false

cond.true:                                        ; preds = %for.body.9
  %25 = load i32, i32* %sfb, align 4, !tbaa !12
  %idxprom16 = sext i32 %25 to i64
  %26 = load double*, double** %ATH_l.addr, align 8, !tbaa !1
  %arrayidx17 = getelementptr inbounds double, double* %26, i64 %idxprom16
  %27 = load double, double* %arrayidx17, align 8, !tbaa !16
  br label %cond.end

cond.false:                                       ; preds = %for.body.9
  %28 = load double, double* %ATH_f, align 8, !tbaa !16
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi double [ %27, %cond.true ], [ %28, %cond.false ]
  %29 = load i32, i32* %sfb, align 4, !tbaa !12
  %idxprom18 = sext i32 %29 to i64
  %30 = load double*, double** %ATH_l.addr, align 8, !tbaa !1
  %arrayidx19 = getelementptr inbounds double, double* %30, i64 %idxprom18
  store double %cond, double* %arrayidx19, align 8, !tbaa !16
  br label %for.inc

for.inc:                                          ; preds = %cond.end
  %31 = load i32, i32* %i, align 4, !tbaa !12
  %inc = add nsw i32 %31, 1
  store i32 %inc, i32* %i, align 4, !tbaa !12
  br label %for.cond.6

for.end:                                          ; preds = %for.cond.6
  br label %for.inc.20

for.inc.20:                                       ; preds = %for.end
  %32 = load i32, i32* %sfb, align 4, !tbaa !12
  %inc21 = add nsw i32 %32, 1
  store i32 %inc21, i32* %sfb, align 4, !tbaa !12
  br label %for.cond

for.end.22:                                       ; preds = %for.cond
  store i32 0, i32* %sfb, align 4, !tbaa !12
  br label %for.cond.23

for.cond.23:                                      ; preds = %for.inc.57, %for.end.22
  %33 = load i32, i32* %sfb, align 4, !tbaa !12
  %cmp24 = icmp slt i32 %33, 12
  br i1 %cmp24, label %for.body.26, label %for.end.59

for.body.26:                                      ; preds = %for.cond.23
  %34 = load i32, i32* %sfb, align 4, !tbaa !12
  %idxprom27 = sext i32 %34 to i64
  %arrayidx28 = getelementptr inbounds [14 x i32], [14 x i32]* getelementptr inbounds (%struct.scalefac_struct, %struct.scalefac_struct* @scalefac_band, i32 0, i32 1), i32 0, i64 %idxprom27
  %35 = load i32, i32* %arrayidx28, align 4, !tbaa !12
  store i32 %35, i32* %start, align 4, !tbaa !12
  %36 = load i32, i32* %sfb, align 4, !tbaa !12
  %add29 = add nsw i32 %36, 1
  %idxprom30 = sext i32 %add29 to i64
  %arrayidx31 = getelementptr inbounds [14 x i32], [14 x i32]* getelementptr inbounds (%struct.scalefac_struct, %struct.scalefac_struct* @scalefac_band, i32 0, i32 1), i32 0, i64 %idxprom30
  %37 = load i32, i32* %arrayidx31, align 4, !tbaa !12
  store i32 %37, i32* %end, align 4, !tbaa !12
  %38 = load i32, i32* %sfb, align 4, !tbaa !12
  %idxprom32 = sext i32 %38 to i64
  %39 = load double*, double** %ATH_s.addr, align 8, !tbaa !1
  %arrayidx33 = getelementptr inbounds double, double* %39, i64 %idxprom32
  store double 1.000000e+99, double* %arrayidx33, align 8, !tbaa !16
  %40 = load i32, i32* %start, align 4, !tbaa !12
  store i32 %40, i32* %i, align 4, !tbaa !12
  br label %for.cond.34

for.cond.34:                                      ; preds = %for.inc.54, %for.body.26
  %41 = load i32, i32* %i, align 4, !tbaa !12
  %42 = load i32, i32* %end, align 4, !tbaa !12
  %cmp35 = icmp slt i32 %41, %42
  br i1 %cmp35, label %for.body.37, label %for.end.56

for.body.37:                                      ; preds = %for.cond.34
  %43 = load %struct.lame_global_flags*, %struct.lame_global_flags** %gfp.addr, align 8, !tbaa !1
  %44 = load double, double* %samp_freq, align 8, !tbaa !16
  %45 = load i32, i32* %i, align 4, !tbaa !12
  %conv38 = sitofp i32 %45 to double
  %mul39 = fmul double %44, %conv38
  %div40 = fdiv double %mul39, 3.840000e+02
  %call41 = call double @ATHformula(%struct.lame_global_flags* %43, double %div40)
  store double %call41, double* %ATH_f, align 8, !tbaa !16
  %46 = load i32, i32* %sfb, align 4, !tbaa !12
  %idxprom42 = sext i32 %46 to i64
  %47 = load double*, double** %ATH_s.addr, align 8, !tbaa !1
  %arrayidx43 = getelementptr inbounds double, double* %47, i64 %idxprom42
  %48 = load double, double* %arrayidx43, align 8, !tbaa !16
  %49 = load double, double* %ATH_f, align 8, !tbaa !16
  %cmp44 = fcmp olt double %48, %49
  br i1 %cmp44, label %cond.true.46, label %cond.false.49

cond.true.46:                                     ; preds = %for.body.37
  %50 = load i32, i32* %sfb, align 4, !tbaa !12
  %idxprom47 = sext i32 %50 to i64
  %51 = load double*, double** %ATH_s.addr, align 8, !tbaa !1
  %arrayidx48 = getelementptr inbounds double, double* %51, i64 %idxprom47
  %52 = load double, double* %arrayidx48, align 8, !tbaa !16
  br label %cond.end.50

cond.false.49:                                    ; preds = %for.body.37
  %53 = load double, double* %ATH_f, align 8, !tbaa !16
  br label %cond.end.50

cond.end.50:                                      ; preds = %cond.false.49, %cond.true.46
  %cond51 = phi double [ %52, %cond.true.46 ], [ %53, %cond.false.49 ]
  %54 = load i32, i32* %sfb, align 4, !tbaa !12
  %idxprom52 = sext i32 %54 to i64
  %55 = load double*, double** %ATH_s.addr, align 8, !tbaa !1
  %arrayidx53 = getelementptr inbounds double, double* %55, i64 %idxprom52
  store double %cond51, double* %arrayidx53, align 8, !tbaa !16
  br label %for.inc.54

for.inc.54:                                       ; preds = %cond.end.50
  %56 = load i32, i32* %i, align 4, !tbaa !12
  %inc55 = add nsw i32 %56, 1
  store i32 %inc55, i32* %i, align 4, !tbaa !12
  br label %for.cond.34

for.end.56:                                       ; preds = %for.cond.34
  br label %for.inc.57

for.inc.57:                                       ; preds = %for.end.56
  %57 = load i32, i32* %sfb, align 4, !tbaa !12
  %inc58 = add nsw i32 %57, 1
  store i32 %inc58, i32* %sfb, align 4, !tbaa !12
  br label %for.cond.23

for.end.59:                                       ; preds = %for.cond.23
  %58 = bitcast double* %samp_freq to i8*
  call void @llvm.lifetime.end(i64 8, i8* %58) #1
  %59 = bitcast double* %ATH_f to i8*
  call void @llvm.lifetime.end(i64 8, i8* %59) #1
  %60 = bitcast i32* %end to i8*
  call void @llvm.lifetime.end(i64 4, i8* %60) #1
  %61 = bitcast i32* %start to i8*
  call void @llvm.lifetime.end(i64 4, i8* %61) #1
  %62 = bitcast i32* %i to i8*
  call void @llvm.lifetime.end(i64 4, i8* %62) #1
  %63 = bitcast i32* %sfb to i8*
  call void @llvm.lifetime.end(i64 4, i8* %63) #1
  ret void
}

; Function Attrs: nounwind
declare double @pow(double, double) #2

; Function Attrs: nounwind
declare void @llvm.lifetime.end(i64, i8* nocapture) #1

; Function Attrs: nounwind uwtable
define double @ATHformula(%struct.lame_global_flags* %gfp, double %f) #0 {
entry:
  %gfp.addr = alloca %struct.lame_global_flags*, align 8
  %f.addr = alloca double, align 8
  %ath = alloca double, align 8
  store %struct.lame_global_flags* %gfp, %struct.lame_global_flags** %gfp.addr, align 8, !tbaa !1
  store double %f, double* %f.addr, align 8, !tbaa !16
  %0 = bitcast double* %ath to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #1
  %1 = load double, double* %f.addr, align 8, !tbaa !16
  %cmp = fcmp ogt double 2.000000e-02, %1
  br i1 %cmp, label %cond.true, label %cond.false

cond.true:                                        ; preds = %entry
  br label %cond.end

cond.false:                                       ; preds = %entry
  %2 = load double, double* %f.addr, align 8, !tbaa !16
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi double [ 2.000000e-02, %cond.true ], [ %2, %cond.false ]
  store double %cond, double* %f.addr, align 8, !tbaa !16
  %3 = load double, double* %f.addr, align 8, !tbaa !16
  %call = call double @pow(double %3, double -8.000000e-01) #1
  %mul = fmul double 3.640000e+00, %call
  %4 = load double, double* %f.addr, align 8, !tbaa !16
  %sub = fsub double %4, 3.300000e+00
  %call1 = call double @pow(double %sub, double 2.000000e+00) #1
  %mul2 = fmul double -6.000000e-01, %call1
  %call3 = call double @exp(double %mul2) #1
  %mul4 = fmul double 6.500000e+00, %call3
  %sub5 = fsub double %mul, %mul4
  %5 = load double, double* %f.addr, align 8, !tbaa !16
  %call6 = call double @pow(double %5, double 4.000000e+00) #1
  %mul7 = fmul double 1.000000e-03, %call6
  %add = fadd double %sub5, %mul7
  store double %add, double* %ath, align 8, !tbaa !16
  %6 = load %struct.lame_global_flags*, %struct.lame_global_flags** %gfp.addr, align 8, !tbaa !1
  %noATH = getelementptr inbounds %struct.lame_global_flags, %struct.lame_global_flags* %6, i32 0, i32 34
  %7 = load i32, i32* %noATH, align 4, !tbaa !26
  %tobool = icmp ne i32 %7, 0
  br i1 %tobool, label %if.then, label %if.else

if.then:                                          ; preds = %cond.end
  %8 = load double, double* %ath, align 8, !tbaa !16
  %sub8 = fsub double %8, 2.000000e+02
  store double %sub8, double* %ath, align 8, !tbaa !16
  br label %if.end

if.else:                                          ; preds = %cond.end
  %9 = load double, double* %ath, align 8, !tbaa !16
  %sub9 = fsub double %9, 1.140000e+02
  store double %sub9, double* %ath, align 8, !tbaa !16
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %10 = load double, double* %ath, align 8, !tbaa !16
  %div = fdiv double %10, 1.000000e+01
  %call10 = call double @pow(double 1.000000e+01, double %div) #1
  store double %call10, double* %ath, align 8, !tbaa !16
  %11 = load double, double* %ath, align 8, !tbaa !16
  %12 = bitcast double* %ath to i8*
  call void @llvm.lifetime.end(i64 8, i8* %12) #1
  ret double %11
}

; Function Attrs: nounwind
declare double @exp(double) #2

; Function Attrs: nounwind uwtable
define void @ms_convert([576 x double]* %xr, [576 x double]* %xr_org) #0 {
entry:
  %xr.addr = alloca [576 x double]*, align 8
  %xr_org.addr = alloca [576 x double]*, align 8
  %i = alloca i32, align 4
  %l = alloca double, align 8
  %r = alloca double, align 8
  store [576 x double]* %xr, [576 x double]** %xr.addr, align 8, !tbaa !1
  store [576 x double]* %xr_org, [576 x double]** %xr_org.addr, align 8, !tbaa !1
  %0 = bitcast i32* %i to i8*
  call void @llvm.lifetime.start(i64 4, i8* %0) #1
  store i32 0, i32* %i, align 4, !tbaa !12
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %1 = load i32, i32* %i, align 4, !tbaa !12
  %cmp = icmp slt i32 %1, 576
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %2 = bitcast double* %l to i8*
  call void @llvm.lifetime.start(i64 8, i8* %2) #1
  %3 = load i32, i32* %i, align 4, !tbaa !12
  %idxprom = sext i32 %3 to i64
  %4 = load [576 x double]*, [576 x double]** %xr_org.addr, align 8, !tbaa !1
  %arrayidx = getelementptr inbounds [576 x double], [576 x double]* %4, i64 0
  %arrayidx1 = getelementptr inbounds [576 x double], [576 x double]* %arrayidx, i32 0, i64 %idxprom
  %5 = load double, double* %arrayidx1, align 8, !tbaa !16
  store double %5, double* %l, align 8, !tbaa !16
  %6 = bitcast double* %r to i8*
  call void @llvm.lifetime.start(i64 8, i8* %6) #1
  %7 = load i32, i32* %i, align 4, !tbaa !12
  %idxprom2 = sext i32 %7 to i64
  %8 = load [576 x double]*, [576 x double]** %xr_org.addr, align 8, !tbaa !1
  %arrayidx3 = getelementptr inbounds [576 x double], [576 x double]* %8, i64 1
  %arrayidx4 = getelementptr inbounds [576 x double], [576 x double]* %arrayidx3, i32 0, i64 %idxprom2
  %9 = load double, double* %arrayidx4, align 8, !tbaa !16
  store double %9, double* %r, align 8, !tbaa !16
  %10 = load double, double* %l, align 8, !tbaa !16
  %11 = load double, double* %r, align 8, !tbaa !16
  %add = fadd double %10, %11
  %mul = fmul double %add, 0x3FE6A09E667F3BCD
  %12 = load i32, i32* %i, align 4, !tbaa !12
  %idxprom5 = sext i32 %12 to i64
  %13 = load [576 x double]*, [576 x double]** %xr.addr, align 8, !tbaa !1
  %arrayidx6 = getelementptr inbounds [576 x double], [576 x double]* %13, i64 0
  %arrayidx7 = getelementptr inbounds [576 x double], [576 x double]* %arrayidx6, i32 0, i64 %idxprom5
  store double %mul, double* %arrayidx7, align 8, !tbaa !16
  %14 = load double, double* %l, align 8, !tbaa !16
  %15 = load double, double* %r, align 8, !tbaa !16
  %sub = fsub double %14, %15
  %mul8 = fmul double %sub, 0x3FE6A09E667F3BCD
  %16 = load i32, i32* %i, align 4, !tbaa !12
  %idxprom9 = sext i32 %16 to i64
  %17 = load [576 x double]*, [576 x double]** %xr.addr, align 8, !tbaa !1
  %arrayidx10 = getelementptr inbounds [576 x double], [576 x double]* %17, i64 1
  %arrayidx11 = getelementptr inbounds [576 x double], [576 x double]* %arrayidx10, i32 0, i64 %idxprom9
  store double %mul8, double* %arrayidx11, align 8, !tbaa !16
  %18 = bitcast double* %r to i8*
  call void @llvm.lifetime.end(i64 8, i8* %18) #1
  %19 = bitcast double* %l to i8*
  call void @llvm.lifetime.end(i64 8, i8* %19) #1
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %20 = load i32, i32* %i, align 4, !tbaa !12
  %inc = add nsw i32 %20, 1
  store i32 %inc, i32* %i, align 4, !tbaa !12
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %21 = bitcast i32* %i to i8*
  call void @llvm.lifetime.end(i64 4, i8* %21) #1
  ret void
}

; Function Attrs: nounwind uwtable
define void @on_pe(%struct.lame_global_flags* %gfp, [2 x double]* %pe, %struct.III_side_info_t* %l3_side, i32* %targ_bits, i32 %mean_bits, i32 %gr) #0 {
entry:
  %gfp.addr = alloca %struct.lame_global_flags*, align 8
  %pe.addr = alloca [2 x double]*, align 8
  %l3_side.addr = alloca %struct.III_side_info_t*, align 8
  %targ_bits.addr = alloca i32*, align 8
  %mean_bits.addr = alloca i32, align 4
  %gr.addr = alloca i32, align 4
  %cod_info = alloca %struct.gr_info*, align 8
  %extra_bits = alloca i32, align 4
  %tbits = alloca i32, align 4
  %bits = alloca i32, align 4
  %add_bits = alloca [2 x i32], align 4
  %ch = alloca i32, align 4
  store %struct.lame_global_flags* %gfp, %struct.lame_global_flags** %gfp.addr, align 8, !tbaa !1
  store [2 x double]* %pe, [2 x double]** %pe.addr, align 8, !tbaa !1
  store %struct.III_side_info_t* %l3_side, %struct.III_side_info_t** %l3_side.addr, align 8, !tbaa !1
  store i32* %targ_bits, i32** %targ_bits.addr, align 8, !tbaa !1
  store i32 %mean_bits, i32* %mean_bits.addr, align 4, !tbaa !12
  store i32 %gr, i32* %gr.addr, align 4, !tbaa !12
  %0 = bitcast %struct.gr_info** %cod_info to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #1
  %1 = bitcast i32* %extra_bits to i8*
  call void @llvm.lifetime.start(i64 4, i8* %1) #1
  %2 = bitcast i32* %tbits to i8*
  call void @llvm.lifetime.start(i64 4, i8* %2) #1
  %3 = bitcast i32* %bits to i8*
  call void @llvm.lifetime.start(i64 4, i8* %3) #1
  %4 = bitcast [2 x i32]* %add_bits to i8*
  call void @llvm.lifetime.start(i64 8, i8* %4) #1
  %5 = bitcast i32* %ch to i8*
  call void @llvm.lifetime.start(i64 4, i8* %5) #1
  %6 = load i32, i32* %mean_bits.addr, align 4, !tbaa !12
  %7 = load i32, i32* %gr.addr, align 4, !tbaa !12
  call void @ResvMaxBits(i32 %6, i32* %tbits, i32* %extra_bits, i32 %7)
  store i32 0, i32* %ch, align 4, !tbaa !12
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %8 = load i32, i32* %ch, align 4, !tbaa !12
  %9 = load %struct.lame_global_flags*, %struct.lame_global_flags** %gfp.addr, align 8, !tbaa !1
  %stereo = getelementptr inbounds %struct.lame_global_flags, %struct.lame_global_flags* %9, i32 0, i32 46
  %10 = load i32, i32* %stereo, align 4, !tbaa !20
  %cmp = icmp slt i32 %8, %10
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %11 = load i32, i32* %ch, align 4, !tbaa !12
  %idxprom = sext i32 %11 to i64
  %12 = load i32, i32* %gr.addr, align 4, !tbaa !12
  %idxprom1 = sext i32 %12 to i64
  %13 = load %struct.III_side_info_t*, %struct.III_side_info_t** %l3_side.addr, align 8, !tbaa !1
  %gr2 = getelementptr inbounds %struct.III_side_info_t, %struct.III_side_info_t* %13, i32 0, i32 4
  %arrayidx = getelementptr inbounds [2 x %struct.anon], [2 x %struct.anon]* %gr2, i32 0, i64 %idxprom1
  %ch3 = getelementptr inbounds %struct.anon, %struct.anon* %arrayidx, i32 0, i32 0
  %arrayidx4 = getelementptr inbounds [2 x %struct.gr_info_ss], [2 x %struct.gr_info_ss]* %ch3, i32 0, i64 %idxprom
  %tt = getelementptr inbounds %struct.gr_info_ss, %struct.gr_info_ss* %arrayidx4, i32 0, i32 0
  store %struct.gr_info* %tt, %struct.gr_info** %cod_info, align 8, !tbaa !1
  %14 = load i32, i32* %tbits, align 4, !tbaa !12
  %15 = load %struct.lame_global_flags*, %struct.lame_global_flags** %gfp.addr, align 8, !tbaa !1
  %stereo5 = getelementptr inbounds %struct.lame_global_flags, %struct.lame_global_flags* %15, i32 0, i32 46
  %16 = load i32, i32* %stereo5, align 4, !tbaa !20
  %div = sdiv i32 %14, %16
  %17 = load i32, i32* %ch, align 4, !tbaa !12
  %idxprom6 = sext i32 %17 to i64
  %18 = load i32*, i32** %targ_bits.addr, align 8, !tbaa !1
  %arrayidx7 = getelementptr inbounds i32, i32* %18, i64 %idxprom6
  store i32 %div, i32* %arrayidx7, align 4, !tbaa !12
  store i32 0, i32* %bits, align 4, !tbaa !12
  %19 = load i32, i32* %ch, align 4, !tbaa !12
  %idxprom8 = sext i32 %19 to i64
  %20 = load i32, i32* %gr.addr, align 4, !tbaa !12
  %idxprom9 = sext i32 %20 to i64
  %21 = load [2 x double]*, [2 x double]** %pe.addr, align 8, !tbaa !1
  %arrayidx10 = getelementptr inbounds [2 x double], [2 x double]* %21, i64 %idxprom9
  %arrayidx11 = getelementptr inbounds [2 x double], [2 x double]* %arrayidx10, i32 0, i64 %idxprom8
  %22 = load double, double* %arrayidx11, align 8, !tbaa !16
  %sub = fsub double %22, 7.500000e+02
  %div12 = fdiv double %sub, 1.550000e+00
  %conv = fptosi double %div12 to i32
  %23 = load i32, i32* %ch, align 4, !tbaa !12
  %idxprom13 = sext i32 %23 to i64
  %arrayidx14 = getelementptr inbounds [2 x i32], [2 x i32]* %add_bits, i32 0, i64 %idxprom13
  store i32 %conv, i32* %arrayidx14, align 4, !tbaa !12
  %24 = load %struct.gr_info*, %struct.gr_info** %cod_info, align 8, !tbaa !1
  %block_type = getelementptr inbounds %struct.gr_info, %struct.gr_info* %24, i32 0, i32 6
  %25 = load i32, i32* %block_type, align 4, !tbaa !21
  %cmp15 = icmp eq i32 %25, 2
  br i1 %cmp15, label %if.then, label %if.end.24

if.then:                                          ; preds = %for.body
  %26 = load i32, i32* %ch, align 4, !tbaa !12
  %idxprom17 = sext i32 %26 to i64
  %arrayidx18 = getelementptr inbounds [2 x i32], [2 x i32]* %add_bits, i32 0, i64 %idxprom17
  %27 = load i32, i32* %arrayidx18, align 4, !tbaa !12
  %cmp19 = icmp slt i32 %27, 500
  br i1 %cmp19, label %if.then.21, label %if.end

if.then.21:                                       ; preds = %if.then
  %28 = load i32, i32* %ch, align 4, !tbaa !12
  %idxprom22 = sext i32 %28 to i64
  %arrayidx23 = getelementptr inbounds [2 x i32], [2 x i32]* %add_bits, i32 0, i64 %idxprom22
  store i32 500, i32* %arrayidx23, align 4, !tbaa !12
  br label %if.end

if.end:                                           ; preds = %if.then.21, %if.then
  br label %if.end.24

if.end.24:                                        ; preds = %if.end, %for.body
  %29 = load i32, i32* %ch, align 4, !tbaa !12
  %idxprom25 = sext i32 %29 to i64
  %arrayidx26 = getelementptr inbounds [2 x i32], [2 x i32]* %add_bits, i32 0, i64 %idxprom25
  %30 = load i32, i32* %arrayidx26, align 4, !tbaa !12
  %cmp27 = icmp slt i32 %30, 0
  br i1 %cmp27, label %if.then.29, label %if.end.32

if.then.29:                                       ; preds = %if.end.24
  %31 = load i32, i32* %ch, align 4, !tbaa !12
  %idxprom30 = sext i32 %31 to i64
  %arrayidx31 = getelementptr inbounds [2 x i32], [2 x i32]* %add_bits, i32 0, i64 %idxprom30
  store i32 0, i32* %arrayidx31, align 4, !tbaa !12
  br label %if.end.32

if.end.32:                                        ; preds = %if.then.29, %if.end.24
  %32 = load i32, i32* %ch, align 4, !tbaa !12
  %idxprom33 = sext i32 %32 to i64
  %arrayidx34 = getelementptr inbounds [2 x i32], [2 x i32]* %add_bits, i32 0, i64 %idxprom33
  %33 = load i32, i32* %arrayidx34, align 4, !tbaa !12
  %34 = load i32, i32* %bits, align 4, !tbaa !12
  %add = add nsw i32 %34, %33
  store i32 %add, i32* %bits, align 4, !tbaa !12
  %35 = load i32, i32* %bits, align 4, !tbaa !12
  %36 = load i32, i32* %extra_bits, align 4, !tbaa !12
  %cmp35 = icmp sgt i32 %35, %36
  br i1 %cmp35, label %if.then.37, label %if.end.43

if.then.37:                                       ; preds = %if.end.32
  %37 = load i32, i32* %extra_bits, align 4, !tbaa !12
  %38 = load i32, i32* %ch, align 4, !tbaa !12
  %idxprom38 = sext i32 %38 to i64
  %arrayidx39 = getelementptr inbounds [2 x i32], [2 x i32]* %add_bits, i32 0, i64 %idxprom38
  %39 = load i32, i32* %arrayidx39, align 4, !tbaa !12
  %mul = mul nsw i32 %37, %39
  %40 = load i32, i32* %bits, align 4, !tbaa !12
  %div40 = sdiv i32 %mul, %40
  %41 = load i32, i32* %ch, align 4, !tbaa !12
  %idxprom41 = sext i32 %41 to i64
  %arrayidx42 = getelementptr inbounds [2 x i32], [2 x i32]* %add_bits, i32 0, i64 %idxprom41
  store i32 %div40, i32* %arrayidx42, align 4, !tbaa !12
  br label %if.end.43

if.end.43:                                        ; preds = %if.then.37, %if.end.32
  %42 = load i32, i32* %ch, align 4, !tbaa !12
  %idxprom44 = sext i32 %42 to i64
  %43 = load i32*, i32** %targ_bits.addr, align 8, !tbaa !1
  %arrayidx45 = getelementptr inbounds i32, i32* %43, i64 %idxprom44
  %44 = load i32, i32* %arrayidx45, align 4, !tbaa !12
  %45 = load i32, i32* %ch, align 4, !tbaa !12
  %idxprom46 = sext i32 %45 to i64
  %arrayidx47 = getelementptr inbounds [2 x i32], [2 x i32]* %add_bits, i32 0, i64 %idxprom46
  %46 = load i32, i32* %arrayidx47, align 4, !tbaa !12
  %add48 = add nsw i32 %44, %46
  %cmp49 = icmp sgt i32 %add48, 4095
  br i1 %cmp49, label %if.then.51, label %if.end.57

if.then.51:                                       ; preds = %if.end.43
  %47 = load i32, i32* %ch, align 4, !tbaa !12
  %idxprom52 = sext i32 %47 to i64
  %48 = load i32*, i32** %targ_bits.addr, align 8, !tbaa !1
  %arrayidx53 = getelementptr inbounds i32, i32* %48, i64 %idxprom52
  %49 = load i32, i32* %arrayidx53, align 4, !tbaa !12
  %sub54 = sub nsw i32 4095, %49
  %50 = load i32, i32* %ch, align 4, !tbaa !12
  %idxprom55 = sext i32 %50 to i64
  %arrayidx56 = getelementptr inbounds [2 x i32], [2 x i32]* %add_bits, i32 0, i64 %idxprom55
  store i32 %sub54, i32* %arrayidx56, align 4, !tbaa !12
  br label %if.end.57

if.end.57:                                        ; preds = %if.then.51, %if.end.43
  %51 = load i32, i32* %ch, align 4, !tbaa !12
  %idxprom58 = sext i32 %51 to i64
  %52 = load i32*, i32** %targ_bits.addr, align 8, !tbaa !1
  %arrayidx59 = getelementptr inbounds i32, i32* %52, i64 %idxprom58
  %53 = load i32, i32* %arrayidx59, align 4, !tbaa !12
  %54 = load i32, i32* %ch, align 4, !tbaa !12
  %idxprom60 = sext i32 %54 to i64
  %arrayidx61 = getelementptr inbounds [2 x i32], [2 x i32]* %add_bits, i32 0, i64 %idxprom60
  %55 = load i32, i32* %arrayidx61, align 4, !tbaa !12
  %add62 = add nsw i32 %53, %55
  %56 = load i32, i32* %ch, align 4, !tbaa !12
  %idxprom63 = sext i32 %56 to i64
  %57 = load i32*, i32** %targ_bits.addr, align 8, !tbaa !1
  %arrayidx64 = getelementptr inbounds i32, i32* %57, i64 %idxprom63
  store i32 %add62, i32* %arrayidx64, align 4, !tbaa !12
  %58 = load i32, i32* %ch, align 4, !tbaa !12
  %idxprom65 = sext i32 %58 to i64
  %arrayidx66 = getelementptr inbounds [2 x i32], [2 x i32]* %add_bits, i32 0, i64 %idxprom65
  %59 = load i32, i32* %arrayidx66, align 4, !tbaa !12
  %60 = load i32, i32* %extra_bits, align 4, !tbaa !12
  %sub67 = sub nsw i32 %60, %59
  store i32 %sub67, i32* %extra_bits, align 4, !tbaa !12
  br label %for.inc

for.inc:                                          ; preds = %if.end.57
  %61 = load i32, i32* %ch, align 4, !tbaa !12
  %inc = add nsw i32 %61, 1
  store i32 %inc, i32* %ch, align 4, !tbaa !12
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %62 = bitcast i32* %ch to i8*
  call void @llvm.lifetime.end(i64 4, i8* %62) #1
  %63 = bitcast [2 x i32]* %add_bits to i8*
  call void @llvm.lifetime.end(i64 8, i8* %63) #1
  %64 = bitcast i32* %bits to i8*
  call void @llvm.lifetime.end(i64 4, i8* %64) #1
  %65 = bitcast i32* %tbits to i8*
  call void @llvm.lifetime.end(i64 4, i8* %65) #1
  %66 = bitcast i32* %extra_bits to i8*
  call void @llvm.lifetime.end(i64 4, i8* %66) #1
  %67 = bitcast %struct.gr_info** %cod_info to i8*
  call void @llvm.lifetime.end(i64 8, i8* %67) #1
  ret void
}

declare void @ResvMaxBits(i32, i32*, i32*, i32) #3

; Function Attrs: nounwind uwtable
define void @reduce_side(i32* %targ_bits, double %ms_ener_ratio, i32 %mean_bits) #0 {
entry:
  %targ_bits.addr = alloca i32*, align 8
  %ms_ener_ratio.addr = alloca double, align 8
  %mean_bits.addr = alloca i32, align 4
  %ch = alloca i32, align 4
  %numchn = alloca i32, align 4
  %fac = alloca float, align 4
  %max_bits = alloca i32, align 4
  store i32* %targ_bits, i32** %targ_bits.addr, align 8, !tbaa !1
  store double %ms_ener_ratio, double* %ms_ener_ratio.addr, align 8, !tbaa !16
  store i32 %mean_bits, i32* %mean_bits.addr, align 4, !tbaa !12
  %0 = bitcast i32* %ch to i8*
  call void @llvm.lifetime.start(i64 4, i8* %0) #1
  %1 = bitcast i32* %numchn to i8*
  call void @llvm.lifetime.start(i64 4, i8* %1) #1
  store i32 2, i32* %numchn, align 4, !tbaa !12
  %2 = bitcast float* %fac to i8*
  call void @llvm.lifetime.start(i64 4, i8* %2) #1
  %3 = load double, double* %ms_ener_ratio.addr, align 8, !tbaa !16
  %sub = fsub double 5.000000e-01, %3
  %mul = fmul double 3.300000e-01, %sub
  %div = fdiv double %mul, 5.000000e-01
  %conv = fptrunc double %div to float
  store float %conv, float* %fac, align 4, !tbaa !27
  %4 = load float, float* %fac, align 4, !tbaa !27
  %cmp = fcmp olt float %4, 0.000000e+00
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store float 0.000000e+00, float* %fac, align 4, !tbaa !27
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %5 = load i32*, i32** %targ_bits.addr, align 8, !tbaa !1
  %arrayidx = getelementptr inbounds i32, i32* %5, i64 1
  %6 = load i32, i32* %arrayidx, align 4, !tbaa !12
  %cmp2 = icmp sge i32 %6, 125
  br i1 %cmp2, label %if.then.4, label %if.end.33

if.then.4:                                        ; preds = %if.end
  %7 = load i32*, i32** %targ_bits.addr, align 8, !tbaa !1
  %arrayidx5 = getelementptr inbounds i32, i32* %7, i64 1
  %8 = load i32, i32* %arrayidx5, align 4, !tbaa !12
  %conv6 = sitofp i32 %8 to float
  %9 = load i32*, i32** %targ_bits.addr, align 8, !tbaa !1
  %arrayidx7 = getelementptr inbounds i32, i32* %9, i64 1
  %10 = load i32, i32* %arrayidx7, align 4, !tbaa !12
  %conv8 = sitofp i32 %10 to float
  %11 = load float, float* %fac, align 4, !tbaa !27
  %mul9 = fmul float %conv8, %11
  %sub10 = fsub float %conv6, %mul9
  %cmp11 = fcmp ogt float %sub10, 1.250000e+02
  br i1 %cmp11, label %if.then.13, label %if.else

if.then.13:                                       ; preds = %if.then.4
  %12 = load i32*, i32** %targ_bits.addr, align 8, !tbaa !1
  %arrayidx14 = getelementptr inbounds i32, i32* %12, i64 1
  %13 = load i32, i32* %arrayidx14, align 4, !tbaa !12
  %conv15 = sitofp i32 %13 to float
  %14 = load float, float* %fac, align 4, !tbaa !27
  %mul16 = fmul float %conv15, %14
  %15 = load i32*, i32** %targ_bits.addr, align 8, !tbaa !1
  %arrayidx17 = getelementptr inbounds i32, i32* %15, i64 0
  %16 = load i32, i32* %arrayidx17, align 4, !tbaa !12
  %conv18 = sitofp i32 %16 to float
  %add = fadd float %conv18, %mul16
  %conv19 = fptosi float %add to i32
  store i32 %conv19, i32* %arrayidx17, align 4, !tbaa !12
  %17 = load i32*, i32** %targ_bits.addr, align 8, !tbaa !1
  %arrayidx20 = getelementptr inbounds i32, i32* %17, i64 1
  %18 = load i32, i32* %arrayidx20, align 4, !tbaa !12
  %conv21 = sitofp i32 %18 to float
  %19 = load float, float* %fac, align 4, !tbaa !27
  %mul22 = fmul float %conv21, %19
  %20 = load i32*, i32** %targ_bits.addr, align 8, !tbaa !1
  %arrayidx23 = getelementptr inbounds i32, i32* %20, i64 1
  %21 = load i32, i32* %arrayidx23, align 4, !tbaa !12
  %conv24 = sitofp i32 %21 to float
  %sub25 = fsub float %conv24, %mul22
  %conv26 = fptosi float %sub25 to i32
  store i32 %conv26, i32* %arrayidx23, align 4, !tbaa !12
  br label %if.end.32

if.else:                                          ; preds = %if.then.4
  %22 = load i32*, i32** %targ_bits.addr, align 8, !tbaa !1
  %arrayidx27 = getelementptr inbounds i32, i32* %22, i64 1
  %23 = load i32, i32* %arrayidx27, align 4, !tbaa !12
  %sub28 = sub nsw i32 %23, 125
  %24 = load i32*, i32** %targ_bits.addr, align 8, !tbaa !1
  %arrayidx29 = getelementptr inbounds i32, i32* %24, i64 0
  %25 = load i32, i32* %arrayidx29, align 4, !tbaa !12
  %add30 = add nsw i32 %25, %sub28
  store i32 %add30, i32* %arrayidx29, align 4, !tbaa !12
  %26 = load i32*, i32** %targ_bits.addr, align 8, !tbaa !1
  %arrayidx31 = getelementptr inbounds i32, i32* %26, i64 1
  store i32 125, i32* %arrayidx31, align 4, !tbaa !12
  br label %if.end.32

if.end.32:                                        ; preds = %if.else, %if.then.13
  br label %if.end.33

if.end.33:                                        ; preds = %if.end.32, %if.end
  store i32 0, i32* %ch, align 4, !tbaa !12
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end.33
  %27 = load i32, i32* %ch, align 4, !tbaa !12
  %28 = load i32, i32* %numchn, align 4, !tbaa !12
  %cmp34 = icmp slt i32 %27, %28
  br i1 %cmp34, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %29 = bitcast i32* %max_bits to i8*
  call void @llvm.lifetime.start(i64 4, i8* %29) #1
  %30 = load i32, i32* %mean_bits.addr, align 4, !tbaa !12
  %div36 = sdiv i32 %30, 2
  %add37 = add nsw i32 %div36, 1200
  %cmp38 = icmp slt i32 4095, %add37
  br i1 %cmp38, label %cond.true, label %cond.false

cond.true:                                        ; preds = %for.body
  br label %cond.end

cond.false:                                       ; preds = %for.body
  %31 = load i32, i32* %mean_bits.addr, align 4, !tbaa !12
  %div40 = sdiv i32 %31, 2
  %add41 = add nsw i32 %div40, 1200
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ 4095, %cond.true ], [ %add41, %cond.false ]
  store i32 %cond, i32* %max_bits, align 4, !tbaa !12
  %32 = load i32, i32* %ch, align 4, !tbaa !12
  %idxprom = sext i32 %32 to i64
  %33 = load i32*, i32** %targ_bits.addr, align 8, !tbaa !1
  %arrayidx42 = getelementptr inbounds i32, i32* %33, i64 %idxprom
  %34 = load i32, i32* %arrayidx42, align 4, !tbaa !12
  %35 = load i32, i32* %max_bits, align 4, !tbaa !12
  %cmp43 = icmp sgt i32 %34, %35
  br i1 %cmp43, label %if.then.45, label %if.end.48

if.then.45:                                       ; preds = %cond.end
  %36 = load i32, i32* %max_bits, align 4, !tbaa !12
  %37 = load i32, i32* %ch, align 4, !tbaa !12
  %idxprom46 = sext i32 %37 to i64
  %38 = load i32*, i32** %targ_bits.addr, align 8, !tbaa !1
  %arrayidx47 = getelementptr inbounds i32, i32* %38, i64 %idxprom46
  store i32 %36, i32* %arrayidx47, align 4, !tbaa !12
  br label %if.end.48

if.end.48:                                        ; preds = %if.then.45, %cond.end
  %39 = bitcast i32* %max_bits to i8*
  call void @llvm.lifetime.end(i64 4, i8* %39) #1
  br label %for.inc

for.inc:                                          ; preds = %if.end.48
  %40 = load i32, i32* %ch, align 4, !tbaa !12
  %inc = add nsw i32 %40, 1
  store i32 %inc, i32* %ch, align 4, !tbaa !12
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %41 = bitcast float* %fac to i8*
  call void @llvm.lifetime.end(i64 4, i8* %41) #1
  %42 = bitcast i32* %numchn to i8*
  call void @llvm.lifetime.end(i64 4, i8* %42) #1
  %43 = bitcast i32* %ch to i8*
  call void @llvm.lifetime.end(i64 4, i8* %43) #1
  ret void
}

; Function Attrs: nounwind uwtable
define i32 @inner_loop(%struct.lame_global_flags* %gfp, double* %xrpow, i32* %l3_enc, i32 %max_bits, %struct.gr_info* %cod_info) #0 {
entry:
  %gfp.addr = alloca %struct.lame_global_flags*, align 8
  %xrpow.addr = alloca double*, align 8
  %l3_enc.addr = alloca i32*, align 8
  %max_bits.addr = alloca i32, align 4
  %cod_info.addr = alloca %struct.gr_info*, align 8
  %bits = alloca i32, align 4
  store %struct.lame_global_flags* %gfp, %struct.lame_global_flags** %gfp.addr, align 8, !tbaa !1
  store double* %xrpow, double** %xrpow.addr, align 8, !tbaa !1
  store i32* %l3_enc, i32** %l3_enc.addr, align 8, !tbaa !1
  store i32 %max_bits, i32* %max_bits.addr, align 4, !tbaa !12
  store %struct.gr_info* %cod_info, %struct.gr_info** %cod_info.addr, align 8, !tbaa !1
  %0 = bitcast i32* %bits to i8*
  call void @llvm.lifetime.start(i64 4, i8* %0) #1
  %1 = load %struct.gr_info*, %struct.gr_info** %cod_info.addr, align 8, !tbaa !1
  %global_gain = getelementptr inbounds %struct.gr_info, %struct.gr_info* %1, i32 0, i32 3
  %2 = load i32, i32* %global_gain, align 4, !tbaa !28
  %dec = add i32 %2, -1
  store i32 %dec, i32* %global_gain, align 4, !tbaa !28
  br label %do.body

do.body:                                          ; preds = %do.cond, %entry
  %3 = load %struct.gr_info*, %struct.gr_info** %cod_info.addr, align 8, !tbaa !1
  %global_gain1 = getelementptr inbounds %struct.gr_info, %struct.gr_info* %3, i32 0, i32 3
  %4 = load i32, i32* %global_gain1, align 4, !tbaa !28
  %inc = add i32 %4, 1
  store i32 %inc, i32* %global_gain1, align 4, !tbaa !28
  %5 = load %struct.lame_global_flags*, %struct.lame_global_flags** %gfp.addr, align 8, !tbaa !1
  %6 = load i32*, i32** %l3_enc.addr, align 8, !tbaa !1
  %7 = load double*, double** %xrpow.addr, align 8, !tbaa !1
  %8 = load %struct.gr_info*, %struct.gr_info** %cod_info.addr, align 8, !tbaa !1
  %call = call i32 @count_bits(%struct.lame_global_flags* %5, i32* %6, double* %7, %struct.gr_info* %8)
  store i32 %call, i32* %bits, align 4, !tbaa !12
  br label %do.cond

do.cond:                                          ; preds = %do.body
  %9 = load i32, i32* %bits, align 4, !tbaa !12
  %10 = load i32, i32* %max_bits.addr, align 4, !tbaa !12
  %cmp = icmp sgt i32 %9, %10
  br i1 %cmp, label %do.body, label %do.end

do.end:                                           ; preds = %do.cond
  %11 = load i32, i32* %bits, align 4, !tbaa !12
  %12 = bitcast i32* %bits to i8*
  call void @llvm.lifetime.end(i64 4, i8* %12) #1
  ret i32 %11
}

declare i32 @count_bits(%struct.lame_global_flags*, i32*, double*, %struct.gr_info*) #3

; Function Attrs: nounwind uwtable
define i32 @scale_bitcount(%struct.III_scalefac_t* %scalefac, %struct.gr_info* %cod_info) #0 {
entry:
  %scalefac.addr = alloca %struct.III_scalefac_t*, align 8
  %cod_info.addr = alloca %struct.gr_info*, align 8
  %i = alloca i32, align 4
  %k = alloca i32, align 4
  %sfb = alloca i32, align 4
  %max_slen1 = alloca i32, align 4
  %max_slen2 = alloca i32, align 4
  %ep = alloca i32, align 4
  %tab = alloca i32*, align 8
  store %struct.III_scalefac_t* %scalefac, %struct.III_scalefac_t** %scalefac.addr, align 8, !tbaa !1
  store %struct.gr_info* %cod_info, %struct.gr_info** %cod_info.addr, align 8, !tbaa !1
  %0 = bitcast i32* %i to i8*
  call void @llvm.lifetime.start(i64 4, i8* %0) #1
  %1 = bitcast i32* %k to i8*
  call void @llvm.lifetime.start(i64 4, i8* %1) #1
  %2 = bitcast i32* %sfb to i8*
  call void @llvm.lifetime.start(i64 4, i8* %2) #1
  %3 = bitcast i32* %max_slen1 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %3) #1
  store i32 0, i32* %max_slen1, align 4, !tbaa !12
  %4 = bitcast i32* %max_slen2 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %4) #1
  store i32 0, i32* %max_slen2, align 4, !tbaa !12
  %5 = bitcast i32* %ep to i8*
  call void @llvm.lifetime.start(i64 4, i8* %5) #1
  store i32 2, i32* %ep, align 4, !tbaa !12
  %6 = bitcast i32** %tab to i8*
  call void @llvm.lifetime.start(i64 8, i8* %6) #1
  %7 = load %struct.gr_info*, %struct.gr_info** %cod_info.addr, align 8, !tbaa !1
  %block_type = getelementptr inbounds %struct.gr_info, %struct.gr_info* %7, i32 0, i32 6
  %8 = load i32, i32* %block_type, align 4, !tbaa !21
  %cmp = icmp eq i32 %8, 2
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  store i32* getelementptr inbounds ([16 x i32], [16 x i32]* @scale_bitcount.slen1_tab, i32 0, i32 0), i32** %tab, align 8, !tbaa !1
  store i32 0, i32* %i, align 4, !tbaa !12
  br label %for.cond

for.cond:                                         ; preds = %for.inc.33, %if.then
  %9 = load i32, i32* %i, align 4, !tbaa !12
  %cmp1 = icmp slt i32 %9, 3
  br i1 %cmp1, label %for.body, label %for.end.35

for.body:                                         ; preds = %for.cond
  store i32 0, i32* %sfb, align 4, !tbaa !12
  br label %for.cond.2

for.cond.2:                                       ; preds = %for.inc, %for.body
  %10 = load i32, i32* %sfb, align 4, !tbaa !12
  %cmp3 = icmp slt i32 %10, 6
  br i1 %cmp3, label %for.body.4, label %for.end

for.body.4:                                       ; preds = %for.cond.2
  %11 = load i32, i32* %i, align 4, !tbaa !12
  %idxprom = sext i32 %11 to i64
  %12 = load i32, i32* %sfb, align 4, !tbaa !12
  %idxprom5 = sext i32 %12 to i64
  %13 = load %struct.III_scalefac_t*, %struct.III_scalefac_t** %scalefac.addr, align 8, !tbaa !1
  %s = getelementptr inbounds %struct.III_scalefac_t, %struct.III_scalefac_t* %13, i32 0, i32 1
  %arrayidx = getelementptr inbounds [13 x [3 x i32]], [13 x [3 x i32]]* %s, i32 0, i64 %idxprom5
  %arrayidx6 = getelementptr inbounds [3 x i32], [3 x i32]* %arrayidx, i32 0, i64 %idxprom
  %14 = load i32, i32* %arrayidx6, align 4, !tbaa !12
  %15 = load i32, i32* %max_slen1, align 4, !tbaa !12
  %cmp7 = icmp sgt i32 %14, %15
  br i1 %cmp7, label %if.then.8, label %if.end

if.then.8:                                        ; preds = %for.body.4
  %16 = load i32, i32* %i, align 4, !tbaa !12
  %idxprom9 = sext i32 %16 to i64
  %17 = load i32, i32* %sfb, align 4, !tbaa !12
  %idxprom10 = sext i32 %17 to i64
  %18 = load %struct.III_scalefac_t*, %struct.III_scalefac_t** %scalefac.addr, align 8, !tbaa !1
  %s11 = getelementptr inbounds %struct.III_scalefac_t, %struct.III_scalefac_t* %18, i32 0, i32 1
  %arrayidx12 = getelementptr inbounds [13 x [3 x i32]], [13 x [3 x i32]]* %s11, i32 0, i64 %idxprom10
  %arrayidx13 = getelementptr inbounds [3 x i32], [3 x i32]* %arrayidx12, i32 0, i64 %idxprom9
  %19 = load i32, i32* %arrayidx13, align 4, !tbaa !12
  store i32 %19, i32* %max_slen1, align 4, !tbaa !12
  br label %if.end

if.end:                                           ; preds = %if.then.8, %for.body.4
  br label %for.inc

for.inc:                                          ; preds = %if.end
  %20 = load i32, i32* %sfb, align 4, !tbaa !12
  %inc = add nsw i32 %20, 1
  store i32 %inc, i32* %sfb, align 4, !tbaa !12
  br label %for.cond.2

for.end:                                          ; preds = %for.cond.2
  store i32 6, i32* %sfb, align 4, !tbaa !12
  br label %for.cond.14

for.cond.14:                                      ; preds = %for.inc.30, %for.end
  %21 = load i32, i32* %sfb, align 4, !tbaa !12
  %cmp15 = icmp slt i32 %21, 12
  br i1 %cmp15, label %for.body.16, label %for.end.32

for.body.16:                                      ; preds = %for.cond.14
  %22 = load i32, i32* %i, align 4, !tbaa !12
  %idxprom17 = sext i32 %22 to i64
  %23 = load i32, i32* %sfb, align 4, !tbaa !12
  %idxprom18 = sext i32 %23 to i64
  %24 = load %struct.III_scalefac_t*, %struct.III_scalefac_t** %scalefac.addr, align 8, !tbaa !1
  %s19 = getelementptr inbounds %struct.III_scalefac_t, %struct.III_scalefac_t* %24, i32 0, i32 1
  %arrayidx20 = getelementptr inbounds [13 x [3 x i32]], [13 x [3 x i32]]* %s19, i32 0, i64 %idxprom18
  %arrayidx21 = getelementptr inbounds [3 x i32], [3 x i32]* %arrayidx20, i32 0, i64 %idxprom17
  %25 = load i32, i32* %arrayidx21, align 4, !tbaa !12
  %26 = load i32, i32* %max_slen2, align 4, !tbaa !12
  %cmp22 = icmp sgt i32 %25, %26
  br i1 %cmp22, label %if.then.23, label %if.end.29

if.then.23:                                       ; preds = %for.body.16
  %27 = load i32, i32* %i, align 4, !tbaa !12
  %idxprom24 = sext i32 %27 to i64
  %28 = load i32, i32* %sfb, align 4, !tbaa !12
  %idxprom25 = sext i32 %28 to i64
  %29 = load %struct.III_scalefac_t*, %struct.III_scalefac_t** %scalefac.addr, align 8, !tbaa !1
  %s26 = getelementptr inbounds %struct.III_scalefac_t, %struct.III_scalefac_t* %29, i32 0, i32 1
  %arrayidx27 = getelementptr inbounds [13 x [3 x i32]], [13 x [3 x i32]]* %s26, i32 0, i64 %idxprom25
  %arrayidx28 = getelementptr inbounds [3 x i32], [3 x i32]* %arrayidx27, i32 0, i64 %idxprom24
  %30 = load i32, i32* %arrayidx28, align 4, !tbaa !12
  store i32 %30, i32* %max_slen2, align 4, !tbaa !12
  br label %if.end.29

if.end.29:                                        ; preds = %if.then.23, %for.body.16
  br label %for.inc.30

for.inc.30:                                       ; preds = %if.end.29
  %31 = load i32, i32* %sfb, align 4, !tbaa !12
  %inc31 = add nsw i32 %31, 1
  store i32 %inc31, i32* %sfb, align 4, !tbaa !12
  br label %for.cond.14

for.end.32:                                       ; preds = %for.cond.14
  br label %for.inc.33

for.inc.33:                                       ; preds = %for.end.32
  %32 = load i32, i32* %i, align 4, !tbaa !12
  %inc34 = add nsw i32 %32, 1
  store i32 %inc34, i32* %i, align 4, !tbaa !12
  br label %for.cond

for.end.35:                                       ; preds = %for.cond
  br label %if.end.96

if.else:                                          ; preds = %entry
  store i32* getelementptr inbounds ([16 x i32], [16 x i32]* @scale_bitcount.slen2_tab, i32 0, i32 0), i32** %tab, align 8, !tbaa !1
  store i32 0, i32* %sfb, align 4, !tbaa !12
  br label %for.cond.36

for.cond.36:                                      ; preds = %for.inc.47, %if.else
  %33 = load i32, i32* %sfb, align 4, !tbaa !12
  %cmp37 = icmp slt i32 %33, 11
  br i1 %cmp37, label %for.body.38, label %for.end.49

for.body.38:                                      ; preds = %for.cond.36
  %34 = load i32, i32* %sfb, align 4, !tbaa !12
  %idxprom39 = sext i32 %34 to i64
  %35 = load %struct.III_scalefac_t*, %struct.III_scalefac_t** %scalefac.addr, align 8, !tbaa !1
  %l = getelementptr inbounds %struct.III_scalefac_t, %struct.III_scalefac_t* %35, i32 0, i32 0
  %arrayidx40 = getelementptr inbounds [22 x i32], [22 x i32]* %l, i32 0, i64 %idxprom39
  %36 = load i32, i32* %arrayidx40, align 4, !tbaa !12
  %37 = load i32, i32* %max_slen1, align 4, !tbaa !12
  %cmp41 = icmp sgt i32 %36, %37
  br i1 %cmp41, label %if.then.42, label %if.end.46

if.then.42:                                       ; preds = %for.body.38
  %38 = load i32, i32* %sfb, align 4, !tbaa !12
  %idxprom43 = sext i32 %38 to i64
  %39 = load %struct.III_scalefac_t*, %struct.III_scalefac_t** %scalefac.addr, align 8, !tbaa !1
  %l44 = getelementptr inbounds %struct.III_scalefac_t, %struct.III_scalefac_t* %39, i32 0, i32 0
  %arrayidx45 = getelementptr inbounds [22 x i32], [22 x i32]* %l44, i32 0, i64 %idxprom43
  %40 = load i32, i32* %arrayidx45, align 4, !tbaa !12
  store i32 %40, i32* %max_slen1, align 4, !tbaa !12
  br label %if.end.46

if.end.46:                                        ; preds = %if.then.42, %for.body.38
  br label %for.inc.47

for.inc.47:                                       ; preds = %if.end.46
  %41 = load i32, i32* %sfb, align 4, !tbaa !12
  %inc48 = add nsw i32 %41, 1
  store i32 %inc48, i32* %sfb, align 4, !tbaa !12
  br label %for.cond.36

for.end.49:                                       ; preds = %for.cond.36
  %42 = load %struct.gr_info*, %struct.gr_info** %cod_info.addr, align 8, !tbaa !1
  %preflag = getelementptr inbounds %struct.gr_info, %struct.gr_info* %42, i32 0, i32 12
  %43 = load i32, i32* %preflag, align 4, !tbaa !29
  %tobool = icmp ne i32 %43, 0
  br i1 %tobool, label %if.end.80, label %if.then.50

if.then.50:                                       ; preds = %for.end.49
  store i32 11, i32* %sfb, align 4, !tbaa !12
  br label %for.cond.51

for.cond.51:                                      ; preds = %for.inc.62, %if.then.50
  %44 = load i32, i32* %sfb, align 4, !tbaa !12
  %cmp52 = icmp slt i32 %44, 21
  br i1 %cmp52, label %for.body.53, label %for.end.64

for.body.53:                                      ; preds = %for.cond.51
  %45 = load i32, i32* %sfb, align 4, !tbaa !12
  %idxprom54 = sext i32 %45 to i64
  %46 = load %struct.III_scalefac_t*, %struct.III_scalefac_t** %scalefac.addr, align 8, !tbaa !1
  %l55 = getelementptr inbounds %struct.III_scalefac_t, %struct.III_scalefac_t* %46, i32 0, i32 0
  %arrayidx56 = getelementptr inbounds [22 x i32], [22 x i32]* %l55, i32 0, i64 %idxprom54
  %47 = load i32, i32* %arrayidx56, align 4, !tbaa !12
  %48 = load i32, i32* %sfb, align 4, !tbaa !12
  %idxprom57 = sext i32 %48 to i64
  %arrayidx58 = getelementptr inbounds [21 x i32], [21 x i32]* @pretab, i32 0, i64 %idxprom57
  %49 = load i32, i32* %arrayidx58, align 4, !tbaa !12
  %cmp59 = icmp slt i32 %47, %49
  br i1 %cmp59, label %if.then.60, label %if.end.61

if.then.60:                                       ; preds = %for.body.53
  br label %for.end.64

if.end.61:                                        ; preds = %for.body.53
  br label %for.inc.62

for.inc.62:                                       ; preds = %if.end.61
  %50 = load i32, i32* %sfb, align 4, !tbaa !12
  %inc63 = add nsw i32 %50, 1
  store i32 %inc63, i32* %sfb, align 4, !tbaa !12
  br label %for.cond.51

for.end.64:                                       ; preds = %if.then.60, %for.cond.51
  %51 = load i32, i32* %sfb, align 4, !tbaa !12
  %cmp65 = icmp eq i32 %51, 21
  br i1 %cmp65, label %if.then.66, label %if.end.79

if.then.66:                                       ; preds = %for.end.64
  %52 = load %struct.gr_info*, %struct.gr_info** %cod_info.addr, align 8, !tbaa !1
  %preflag67 = getelementptr inbounds %struct.gr_info, %struct.gr_info* %52, i32 0, i32 12
  store i32 1, i32* %preflag67, align 4, !tbaa !29
  store i32 11, i32* %sfb, align 4, !tbaa !12
  br label %for.cond.68

for.cond.68:                                      ; preds = %for.inc.76, %if.then.66
  %53 = load i32, i32* %sfb, align 4, !tbaa !12
  %cmp69 = icmp slt i32 %53, 21
  br i1 %cmp69, label %for.body.70, label %for.end.78

for.body.70:                                      ; preds = %for.cond.68
  %54 = load i32, i32* %sfb, align 4, !tbaa !12
  %idxprom71 = sext i32 %54 to i64
  %arrayidx72 = getelementptr inbounds [21 x i32], [21 x i32]* @pretab, i32 0, i64 %idxprom71
  %55 = load i32, i32* %arrayidx72, align 4, !tbaa !12
  %56 = load i32, i32* %sfb, align 4, !tbaa !12
  %idxprom73 = sext i32 %56 to i64
  %57 = load %struct.III_scalefac_t*, %struct.III_scalefac_t** %scalefac.addr, align 8, !tbaa !1
  %l74 = getelementptr inbounds %struct.III_scalefac_t, %struct.III_scalefac_t* %57, i32 0, i32 0
  %arrayidx75 = getelementptr inbounds [22 x i32], [22 x i32]* %l74, i32 0, i64 %idxprom73
  %58 = load i32, i32* %arrayidx75, align 4, !tbaa !12
  %sub = sub nsw i32 %58, %55
  store i32 %sub, i32* %arrayidx75, align 4, !tbaa !12
  br label %for.inc.76

for.inc.76:                                       ; preds = %for.body.70
  %59 = load i32, i32* %sfb, align 4, !tbaa !12
  %inc77 = add nsw i32 %59, 1
  store i32 %inc77, i32* %sfb, align 4, !tbaa !12
  br label %for.cond.68

for.end.78:                                       ; preds = %for.cond.68
  br label %if.end.79

if.end.79:                                        ; preds = %for.end.78, %for.end.64
  br label %if.end.80

if.end.80:                                        ; preds = %if.end.79, %for.end.49
  store i32 11, i32* %sfb, align 4, !tbaa !12
  br label %for.cond.81

for.cond.81:                                      ; preds = %for.inc.93, %if.end.80
  %60 = load i32, i32* %sfb, align 4, !tbaa !12
  %cmp82 = icmp slt i32 %60, 21
  br i1 %cmp82, label %for.body.83, label %for.end.95

for.body.83:                                      ; preds = %for.cond.81
  %61 = load i32, i32* %sfb, align 4, !tbaa !12
  %idxprom84 = sext i32 %61 to i64
  %62 = load %struct.III_scalefac_t*, %struct.III_scalefac_t** %scalefac.addr, align 8, !tbaa !1
  %l85 = getelementptr inbounds %struct.III_scalefac_t, %struct.III_scalefac_t* %62, i32 0, i32 0
  %arrayidx86 = getelementptr inbounds [22 x i32], [22 x i32]* %l85, i32 0, i64 %idxprom84
  %63 = load i32, i32* %arrayidx86, align 4, !tbaa !12
  %64 = load i32, i32* %max_slen2, align 4, !tbaa !12
  %cmp87 = icmp sgt i32 %63, %64
  br i1 %cmp87, label %if.then.88, label %if.end.92

if.then.88:                                       ; preds = %for.body.83
  %65 = load i32, i32* %sfb, align 4, !tbaa !12
  %idxprom89 = sext i32 %65 to i64
  %66 = load %struct.III_scalefac_t*, %struct.III_scalefac_t** %scalefac.addr, align 8, !tbaa !1
  %l90 = getelementptr inbounds %struct.III_scalefac_t, %struct.III_scalefac_t* %66, i32 0, i32 0
  %arrayidx91 = getelementptr inbounds [22 x i32], [22 x i32]* %l90, i32 0, i64 %idxprom89
  %67 = load i32, i32* %arrayidx91, align 4, !tbaa !12
  store i32 %67, i32* %max_slen2, align 4, !tbaa !12
  br label %if.end.92

if.end.92:                                        ; preds = %if.then.88, %for.body.83
  br label %for.inc.93

for.inc.93:                                       ; preds = %if.end.92
  %68 = load i32, i32* %sfb, align 4, !tbaa !12
  %inc94 = add nsw i32 %68, 1
  store i32 %inc94, i32* %sfb, align 4, !tbaa !12
  br label %for.cond.81

for.end.95:                                       ; preds = %for.cond.81
  br label %if.end.96

if.end.96:                                        ; preds = %for.end.95, %for.end.35
  %69 = load %struct.gr_info*, %struct.gr_info** %cod_info.addr, align 8, !tbaa !1
  %part2_length = getelementptr inbounds %struct.gr_info, %struct.gr_info* %69, i32 0, i32 15
  store i32 100000, i32* %part2_length, align 4, !tbaa !30
  store i32 0, i32* %k, align 4, !tbaa !12
  br label %for.cond.97

for.cond.97:                                      ; preds = %for.inc.116, %if.end.96
  %70 = load i32, i32* %k, align 4, !tbaa !12
  %cmp98 = icmp slt i32 %70, 16
  br i1 %cmp98, label %for.body.99, label %for.end.118

for.body.99:                                      ; preds = %for.cond.97
  %71 = load i32, i32* %max_slen1, align 4, !tbaa !12
  %72 = load i32, i32* %k, align 4, !tbaa !12
  %idxprom100 = sext i32 %72 to i64
  %arrayidx101 = getelementptr inbounds [16 x i32], [16 x i32]* @scale_bitcount.slen1, i32 0, i64 %idxprom100
  %73 = load i32, i32* %arrayidx101, align 4, !tbaa !12
  %cmp102 = icmp slt i32 %71, %73
  br i1 %cmp102, label %land.lhs.true, label %if.end.115

land.lhs.true:                                    ; preds = %for.body.99
  %74 = load i32, i32* %max_slen2, align 4, !tbaa !12
  %75 = load i32, i32* %k, align 4, !tbaa !12
  %idxprom103 = sext i32 %75 to i64
  %arrayidx104 = getelementptr inbounds [16 x i32], [16 x i32]* @scale_bitcount.slen2, i32 0, i64 %idxprom103
  %76 = load i32, i32* %arrayidx104, align 4, !tbaa !12
  %cmp105 = icmp slt i32 %74, %76
  br i1 %cmp105, label %land.lhs.true.106, label %if.end.115

land.lhs.true.106:                                ; preds = %land.lhs.true
  %77 = load %struct.gr_info*, %struct.gr_info** %cod_info.addr, align 8, !tbaa !1
  %part2_length107 = getelementptr inbounds %struct.gr_info, %struct.gr_info* %77, i32 0, i32 15
  %78 = load i32, i32* %part2_length107, align 4, !tbaa !30
  %79 = load i32, i32* %k, align 4, !tbaa !12
  %idxprom108 = sext i32 %79 to i64
  %80 = load i32*, i32** %tab, align 8, !tbaa !1
  %arrayidx109 = getelementptr inbounds i32, i32* %80, i64 %idxprom108
  %81 = load i32, i32* %arrayidx109, align 4, !tbaa !12
  %cmp110 = icmp sgt i32 %78, %81
  br i1 %cmp110, label %if.then.111, label %if.end.115

if.then.111:                                      ; preds = %land.lhs.true.106
  %82 = load i32, i32* %k, align 4, !tbaa !12
  %idxprom112 = sext i32 %82 to i64
  %83 = load i32*, i32** %tab, align 8, !tbaa !1
  %arrayidx113 = getelementptr inbounds i32, i32* %83, i64 %idxprom112
  %84 = load i32, i32* %arrayidx113, align 4, !tbaa !12
  %85 = load %struct.gr_info*, %struct.gr_info** %cod_info.addr, align 8, !tbaa !1
  %part2_length114 = getelementptr inbounds %struct.gr_info, %struct.gr_info* %85, i32 0, i32 15
  store i32 %84, i32* %part2_length114, align 4, !tbaa !30
  %86 = load i32, i32* %k, align 4, !tbaa !12
  %87 = load %struct.gr_info*, %struct.gr_info** %cod_info.addr, align 8, !tbaa !1
  %scalefac_compress = getelementptr inbounds %struct.gr_info, %struct.gr_info* %87, i32 0, i32 4
  store i32 %86, i32* %scalefac_compress, align 4, !tbaa !31
  store i32 0, i32* %ep, align 4, !tbaa !12
  br label %if.end.115

if.end.115:                                       ; preds = %if.then.111, %land.lhs.true.106, %land.lhs.true, %for.body.99
  br label %for.inc.116

for.inc.116:                                      ; preds = %if.end.115
  %88 = load i32, i32* %k, align 4, !tbaa !12
  %inc117 = add nsw i32 %88, 1
  store i32 %inc117, i32* %k, align 4, !tbaa !12
  br label %for.cond.97

for.end.118:                                      ; preds = %for.cond.97
  %89 = load i32, i32* %ep, align 4, !tbaa !12
  %90 = bitcast i32** %tab to i8*
  call void @llvm.lifetime.end(i64 8, i8* %90) #1
  %91 = bitcast i32* %ep to i8*
  call void @llvm.lifetime.end(i64 4, i8* %91) #1
  %92 = bitcast i32* %max_slen2 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %92) #1
  %93 = bitcast i32* %max_slen1 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %93) #1
  %94 = bitcast i32* %sfb to i8*
  call void @llvm.lifetime.end(i64 4, i8* %94) #1
  %95 = bitcast i32* %k to i8*
  call void @llvm.lifetime.end(i64 4, i8* %95) #1
  %96 = bitcast i32* %i to i8*
  call void @llvm.lifetime.end(i64 4, i8* %96) #1
  ret i32 %89
}

; Function Attrs: nounwind uwtable
define i32 @scale_bitcount_lsf(%struct.III_scalefac_t* %scalefac, %struct.gr_info* %cod_info) #0 {
entry:
  %scalefac.addr = alloca %struct.III_scalefac_t*, align 8
  %cod_info.addr = alloca %struct.gr_info*, align 8
  %table_number = alloca i32, align 4
  %row_in_table = alloca i32, align 4
  %partition = alloca i32, align 4
  %nr_sfb = alloca i32, align 4
  %window = alloca i32, align 4
  %over = alloca i32, align 4
  %i = alloca i32, align 4
  %sfb = alloca i32, align 4
  %max_sfac = alloca [4 x i32], align 16
  %partition_table = alloca i32*, align 8
  %slen1 = alloca i32, align 4
  %slen2 = alloca i32, align 4
  %slen3 = alloca i32, align 4
  %slen4 = alloca i32, align 4
  store %struct.III_scalefac_t* %scalefac, %struct.III_scalefac_t** %scalefac.addr, align 8, !tbaa !1
  store %struct.gr_info* %cod_info, %struct.gr_info** %cod_info.addr, align 8, !tbaa !1
  %0 = bitcast i32* %table_number to i8*
  call void @llvm.lifetime.start(i64 4, i8* %0) #1
  %1 = bitcast i32* %row_in_table to i8*
  call void @llvm.lifetime.start(i64 4, i8* %1) #1
  %2 = bitcast i32* %partition to i8*
  call void @llvm.lifetime.start(i64 4, i8* %2) #1
  %3 = bitcast i32* %nr_sfb to i8*
  call void @llvm.lifetime.start(i64 4, i8* %3) #1
  %4 = bitcast i32* %window to i8*
  call void @llvm.lifetime.start(i64 4, i8* %4) #1
  %5 = bitcast i32* %over to i8*
  call void @llvm.lifetime.start(i64 4, i8* %5) #1
  %6 = bitcast i32* %i to i8*
  call void @llvm.lifetime.start(i64 4, i8* %6) #1
  %7 = bitcast i32* %sfb to i8*
  call void @llvm.lifetime.start(i64 4, i8* %7) #1
  %8 = bitcast [4 x i32]* %max_sfac to i8*
  call void @llvm.lifetime.start(i64 16, i8* %8) #1
  %9 = bitcast i32** %partition_table to i8*
  call void @llvm.lifetime.start(i64 8, i8* %9) #1
  %10 = load %struct.gr_info*, %struct.gr_info** %cod_info.addr, align 8, !tbaa !1
  %preflag = getelementptr inbounds %struct.gr_info, %struct.gr_info* %10, i32 0, i32 12
  %11 = load i32, i32* %preflag, align 4, !tbaa !29
  %tobool = icmp ne i32 %11, 0
  br i1 %tobool, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  store i32 2, i32* %table_number, align 4, !tbaa !12
  br label %if.end

if.else:                                          ; preds = %entry
  store i32 0, i32* %table_number, align 4, !tbaa !12
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  store i32 0, i32* %i, align 4, !tbaa !12
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end
  %12 = load i32, i32* %i, align 4, !tbaa !12
  %cmp = icmp slt i32 %12, 4
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %13 = load i32, i32* %i, align 4, !tbaa !12
  %idxprom = sext i32 %13 to i64
  %arrayidx = getelementptr inbounds [4 x i32], [4 x i32]* %max_sfac, i32 0, i64 %idxprom
  store i32 0, i32* %arrayidx, align 4, !tbaa !12
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %14 = load i32, i32* %i, align 4, !tbaa !12
  %inc = add nsw i32 %14, 1
  store i32 %inc, i32* %i, align 4, !tbaa !12
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %15 = load %struct.gr_info*, %struct.gr_info** %cod_info.addr, align 8, !tbaa !1
  %block_type = getelementptr inbounds %struct.gr_info, %struct.gr_info* %15, i32 0, i32 6
  %16 = load i32, i32* %block_type, align 4, !tbaa !21
  %cmp1 = icmp eq i32 %16, 2
  br i1 %cmp1, label %if.then.2, label %if.else.45

if.then.2:                                        ; preds = %for.end
  store i32 1, i32* %row_in_table, align 4, !tbaa !12
  %17 = load i32, i32* %row_in_table, align 4, !tbaa !12
  %idxprom3 = sext i32 %17 to i64
  %18 = load i32, i32* %table_number, align 4, !tbaa !12
  %idxprom4 = sext i32 %18 to i64
  %arrayidx5 = getelementptr inbounds [6 x [3 x [4 x i32]]], [6 x [3 x [4 x i32]]]* @nr_of_sfb_block, i32 0, i64 %idxprom4
  %arrayidx6 = getelementptr inbounds [3 x [4 x i32]], [3 x [4 x i32]]* %arrayidx5, i32 0, i64 %idxprom3
  %arrayidx7 = getelementptr inbounds [4 x i32], [4 x i32]* %arrayidx6, i32 0, i64 0
  store i32* %arrayidx7, i32** %partition_table, align 8, !tbaa !1
  store i32 0, i32* %sfb, align 4, !tbaa !12
  store i32 0, i32* %partition, align 4, !tbaa !12
  br label %for.cond.8

for.cond.8:                                       ; preds = %for.inc.42, %if.then.2
  %19 = load i32, i32* %partition, align 4, !tbaa !12
  %cmp9 = icmp slt i32 %19, 4
  br i1 %cmp9, label %for.body.10, label %for.end.44

for.body.10:                                      ; preds = %for.cond.8
  %20 = load i32, i32* %partition, align 4, !tbaa !12
  %idxprom11 = sext i32 %20 to i64
  %21 = load i32*, i32** %partition_table, align 8, !tbaa !1
  %arrayidx12 = getelementptr inbounds i32, i32* %21, i64 %idxprom11
  %22 = load i32, i32* %arrayidx12, align 4, !tbaa !12
  %div = udiv i32 %22, 3
  store i32 %div, i32* %nr_sfb, align 4, !tbaa !12
  store i32 0, i32* %i, align 4, !tbaa !12
  br label %for.cond.13

for.cond.13:                                      ; preds = %for.inc.38, %for.body.10
  %23 = load i32, i32* %i, align 4, !tbaa !12
  %24 = load i32, i32* %nr_sfb, align 4, !tbaa !12
  %cmp14 = icmp slt i32 %23, %24
  br i1 %cmp14, label %for.body.15, label %for.end.41

for.body.15:                                      ; preds = %for.cond.13
  store i32 0, i32* %window, align 4, !tbaa !12
  br label %for.cond.16

for.cond.16:                                      ; preds = %for.inc.35, %for.body.15
  %25 = load i32, i32* %window, align 4, !tbaa !12
  %cmp17 = icmp slt i32 %25, 3
  br i1 %cmp17, label %for.body.18, label %for.end.37

for.body.18:                                      ; preds = %for.cond.16
  %26 = load i32, i32* %window, align 4, !tbaa !12
  %idxprom19 = sext i32 %26 to i64
  %27 = load i32, i32* %sfb, align 4, !tbaa !12
  %idxprom20 = sext i32 %27 to i64
  %28 = load %struct.III_scalefac_t*, %struct.III_scalefac_t** %scalefac.addr, align 8, !tbaa !1
  %s = getelementptr inbounds %struct.III_scalefac_t, %struct.III_scalefac_t* %28, i32 0, i32 1
  %arrayidx21 = getelementptr inbounds [13 x [3 x i32]], [13 x [3 x i32]]* %s, i32 0, i64 %idxprom20
  %arrayidx22 = getelementptr inbounds [3 x i32], [3 x i32]* %arrayidx21, i32 0, i64 %idxprom19
  %29 = load i32, i32* %arrayidx22, align 4, !tbaa !12
  %30 = load i32, i32* %partition, align 4, !tbaa !12
  %idxprom23 = sext i32 %30 to i64
  %arrayidx24 = getelementptr inbounds [4 x i32], [4 x i32]* %max_sfac, i32 0, i64 %idxprom23
  %31 = load i32, i32* %arrayidx24, align 4, !tbaa !12
  %cmp25 = icmp sgt i32 %29, %31
  br i1 %cmp25, label %if.then.26, label %if.end.34

if.then.26:                                       ; preds = %for.body.18
  %32 = load i32, i32* %window, align 4, !tbaa !12
  %idxprom27 = sext i32 %32 to i64
  %33 = load i32, i32* %sfb, align 4, !tbaa !12
  %idxprom28 = sext i32 %33 to i64
  %34 = load %struct.III_scalefac_t*, %struct.III_scalefac_t** %scalefac.addr, align 8, !tbaa !1
  %s29 = getelementptr inbounds %struct.III_scalefac_t, %struct.III_scalefac_t* %34, i32 0, i32 1
  %arrayidx30 = getelementptr inbounds [13 x [3 x i32]], [13 x [3 x i32]]* %s29, i32 0, i64 %idxprom28
  %arrayidx31 = getelementptr inbounds [3 x i32], [3 x i32]* %arrayidx30, i32 0, i64 %idxprom27
  %35 = load i32, i32* %arrayidx31, align 4, !tbaa !12
  %36 = load i32, i32* %partition, align 4, !tbaa !12
  %idxprom32 = sext i32 %36 to i64
  %arrayidx33 = getelementptr inbounds [4 x i32], [4 x i32]* %max_sfac, i32 0, i64 %idxprom32
  store i32 %35, i32* %arrayidx33, align 4, !tbaa !12
  br label %if.end.34

if.end.34:                                        ; preds = %if.then.26, %for.body.18
  br label %for.inc.35

for.inc.35:                                       ; preds = %if.end.34
  %37 = load i32, i32* %window, align 4, !tbaa !12
  %inc36 = add nsw i32 %37, 1
  store i32 %inc36, i32* %window, align 4, !tbaa !12
  br label %for.cond.16

for.end.37:                                       ; preds = %for.cond.16
  br label %for.inc.38

for.inc.38:                                       ; preds = %for.end.37
  %38 = load i32, i32* %i, align 4, !tbaa !12
  %inc39 = add nsw i32 %38, 1
  store i32 %inc39, i32* %i, align 4, !tbaa !12
  %39 = load i32, i32* %sfb, align 4, !tbaa !12
  %inc40 = add nsw i32 %39, 1
  store i32 %inc40, i32* %sfb, align 4, !tbaa !12
  br label %for.cond.13

for.end.41:                                       ; preds = %for.cond.13
  br label %for.inc.42

for.inc.42:                                       ; preds = %for.end.41
  %40 = load i32, i32* %partition, align 4, !tbaa !12
  %inc43 = add nsw i32 %40, 1
  store i32 %inc43, i32* %partition, align 4, !tbaa !12
  br label %for.cond.8

for.end.44:                                       ; preds = %for.cond.8
  br label %if.end.78

if.else.45:                                       ; preds = %for.end
  store i32 0, i32* %row_in_table, align 4, !tbaa !12
  %41 = load i32, i32* %row_in_table, align 4, !tbaa !12
  %idxprom46 = sext i32 %41 to i64
  %42 = load i32, i32* %table_number, align 4, !tbaa !12
  %idxprom47 = sext i32 %42 to i64
  %arrayidx48 = getelementptr inbounds [6 x [3 x [4 x i32]]], [6 x [3 x [4 x i32]]]* @nr_of_sfb_block, i32 0, i64 %idxprom47
  %arrayidx49 = getelementptr inbounds [3 x [4 x i32]], [3 x [4 x i32]]* %arrayidx48, i32 0, i64 %idxprom46
  %arrayidx50 = getelementptr inbounds [4 x i32], [4 x i32]* %arrayidx49, i32 0, i64 0
  store i32* %arrayidx50, i32** %partition_table, align 8, !tbaa !1
  store i32 0, i32* %sfb, align 4, !tbaa !12
  store i32 0, i32* %partition, align 4, !tbaa !12
  br label %for.cond.51

for.cond.51:                                      ; preds = %for.inc.75, %if.else.45
  %43 = load i32, i32* %partition, align 4, !tbaa !12
  %cmp52 = icmp slt i32 %43, 4
  br i1 %cmp52, label %for.body.53, label %for.end.77

for.body.53:                                      ; preds = %for.cond.51
  %44 = load i32, i32* %partition, align 4, !tbaa !12
  %idxprom54 = sext i32 %44 to i64
  %45 = load i32*, i32** %partition_table, align 8, !tbaa !1
  %arrayidx55 = getelementptr inbounds i32, i32* %45, i64 %idxprom54
  %46 = load i32, i32* %arrayidx55, align 4, !tbaa !12
  store i32 %46, i32* %nr_sfb, align 4, !tbaa !12
  store i32 0, i32* %i, align 4, !tbaa !12
  br label %for.cond.56

for.cond.56:                                      ; preds = %for.inc.71, %for.body.53
  %47 = load i32, i32* %i, align 4, !tbaa !12
  %48 = load i32, i32* %nr_sfb, align 4, !tbaa !12
  %cmp57 = icmp slt i32 %47, %48
  br i1 %cmp57, label %for.body.58, label %for.end.74

for.body.58:                                      ; preds = %for.cond.56
  %49 = load i32, i32* %sfb, align 4, !tbaa !12
  %idxprom59 = sext i32 %49 to i64
  %50 = load %struct.III_scalefac_t*, %struct.III_scalefac_t** %scalefac.addr, align 8, !tbaa !1
  %l = getelementptr inbounds %struct.III_scalefac_t, %struct.III_scalefac_t* %50, i32 0, i32 0
  %arrayidx60 = getelementptr inbounds [22 x i32], [22 x i32]* %l, i32 0, i64 %idxprom59
  %51 = load i32, i32* %arrayidx60, align 4, !tbaa !12
  %52 = load i32, i32* %partition, align 4, !tbaa !12
  %idxprom61 = sext i32 %52 to i64
  %arrayidx62 = getelementptr inbounds [4 x i32], [4 x i32]* %max_sfac, i32 0, i64 %idxprom61
  %53 = load i32, i32* %arrayidx62, align 4, !tbaa !12
  %cmp63 = icmp sgt i32 %51, %53
  br i1 %cmp63, label %if.then.64, label %if.end.70

if.then.64:                                       ; preds = %for.body.58
  %54 = load i32, i32* %sfb, align 4, !tbaa !12
  %idxprom65 = sext i32 %54 to i64
  %55 = load %struct.III_scalefac_t*, %struct.III_scalefac_t** %scalefac.addr, align 8, !tbaa !1
  %l66 = getelementptr inbounds %struct.III_scalefac_t, %struct.III_scalefac_t* %55, i32 0, i32 0
  %arrayidx67 = getelementptr inbounds [22 x i32], [22 x i32]* %l66, i32 0, i64 %idxprom65
  %56 = load i32, i32* %arrayidx67, align 4, !tbaa !12
  %57 = load i32, i32* %partition, align 4, !tbaa !12
  %idxprom68 = sext i32 %57 to i64
  %arrayidx69 = getelementptr inbounds [4 x i32], [4 x i32]* %max_sfac, i32 0, i64 %idxprom68
  store i32 %56, i32* %arrayidx69, align 4, !tbaa !12
  br label %if.end.70

if.end.70:                                        ; preds = %if.then.64, %for.body.58
  br label %for.inc.71

for.inc.71:                                       ; preds = %if.end.70
  %58 = load i32, i32* %i, align 4, !tbaa !12
  %inc72 = add nsw i32 %58, 1
  store i32 %inc72, i32* %i, align 4, !tbaa !12
  %59 = load i32, i32* %sfb, align 4, !tbaa !12
  %inc73 = add nsw i32 %59, 1
  store i32 %inc73, i32* %sfb, align 4, !tbaa !12
  br label %for.cond.56

for.end.74:                                       ; preds = %for.cond.56
  br label %for.inc.75

for.inc.75:                                       ; preds = %for.end.74
  %60 = load i32, i32* %partition, align 4, !tbaa !12
  %inc76 = add nsw i32 %60, 1
  store i32 %inc76, i32* %partition, align 4, !tbaa !12
  br label %for.cond.51

for.end.77:                                       ; preds = %for.cond.51
  br label %if.end.78

if.end.78:                                        ; preds = %for.end.77, %for.end.44
  store i32 0, i32* %over, align 4, !tbaa !12
  store i32 0, i32* %partition, align 4, !tbaa !12
  br label %for.cond.79

for.cond.79:                                      ; preds = %for.inc.92, %if.end.78
  %61 = load i32, i32* %partition, align 4, !tbaa !12
  %cmp80 = icmp slt i32 %61, 4
  br i1 %cmp80, label %for.body.81, label %for.end.94

for.body.81:                                      ; preds = %for.cond.79
  %62 = load i32, i32* %partition, align 4, !tbaa !12
  %idxprom82 = sext i32 %62 to i64
  %arrayidx83 = getelementptr inbounds [4 x i32], [4 x i32]* %max_sfac, i32 0, i64 %idxprom82
  %63 = load i32, i32* %arrayidx83, align 4, !tbaa !12
  %64 = load i32, i32* %partition, align 4, !tbaa !12
  %idxprom84 = sext i32 %64 to i64
  %65 = load i32, i32* %table_number, align 4, !tbaa !12
  %idxprom85 = sext i32 %65 to i64
  %arrayidx86 = getelementptr inbounds [6 x [4 x i32]], [6 x [4 x i32]]* @max_range_sfac_tab, i32 0, i64 %idxprom85
  %arrayidx87 = getelementptr inbounds [4 x i32], [4 x i32]* %arrayidx86, i32 0, i64 %idxprom84
  %66 = load i32, i32* %arrayidx87, align 4, !tbaa !12
  %cmp88 = icmp sgt i32 %63, %66
  br i1 %cmp88, label %if.then.89, label %if.end.91

if.then.89:                                       ; preds = %for.body.81
  %67 = load i32, i32* %over, align 4, !tbaa !12
  %inc90 = add nsw i32 %67, 1
  store i32 %inc90, i32* %over, align 4, !tbaa !12
  br label %if.end.91

if.end.91:                                        ; preds = %if.then.89, %for.body.81
  br label %for.inc.92

for.inc.92:                                       ; preds = %if.end.91
  %68 = load i32, i32* %partition, align 4, !tbaa !12
  %inc93 = add nsw i32 %68, 1
  store i32 %inc93, i32* %partition, align 4, !tbaa !12
  br label %for.cond.79

for.end.94:                                       ; preds = %for.cond.79
  %69 = load i32, i32* %over, align 4, !tbaa !12
  %tobool95 = icmp ne i32 %69, 0
  br i1 %tobool95, label %if.end.137, label %if.then.96

if.then.96:                                       ; preds = %for.end.94
  %70 = bitcast i32* %slen1 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %70) #1
  %71 = bitcast i32* %slen2 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %71) #1
  %72 = bitcast i32* %slen3 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %72) #1
  %73 = bitcast i32* %slen4 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %73) #1
  %74 = load i32, i32* %row_in_table, align 4, !tbaa !12
  %idxprom97 = sext i32 %74 to i64
  %75 = load i32, i32* %table_number, align 4, !tbaa !12
  %idxprom98 = sext i32 %75 to i64
  %arrayidx99 = getelementptr inbounds [6 x [3 x [4 x i32]]], [6 x [3 x [4 x i32]]]* @nr_of_sfb_block, i32 0, i64 %idxprom98
  %arrayidx100 = getelementptr inbounds [3 x [4 x i32]], [3 x [4 x i32]]* %arrayidx99, i32 0, i64 %idxprom97
  %arrayidx101 = getelementptr inbounds [4 x i32], [4 x i32]* %arrayidx100, i32 0, i64 0
  %76 = load %struct.gr_info*, %struct.gr_info** %cod_info.addr, align 8, !tbaa !1
  %sfb_partition_table = getelementptr inbounds %struct.gr_info, %struct.gr_info* %76, i32 0, i32 19
  store i32* %arrayidx101, i32** %sfb_partition_table, align 8, !tbaa !32
  store i32 0, i32* %partition, align 4, !tbaa !12
  br label %for.cond.102

for.cond.102:                                     ; preds = %for.inc.111, %if.then.96
  %77 = load i32, i32* %partition, align 4, !tbaa !12
  %cmp103 = icmp slt i32 %77, 4
  br i1 %cmp103, label %for.body.104, label %for.end.113

for.body.104:                                     ; preds = %for.cond.102
  %78 = load i32, i32* %partition, align 4, !tbaa !12
  %idxprom105 = sext i32 %78 to i64
  %arrayidx106 = getelementptr inbounds [4 x i32], [4 x i32]* %max_sfac, i32 0, i64 %idxprom105
  %79 = load i32, i32* %arrayidx106, align 4, !tbaa !12
  %idxprom107 = sext i32 %79 to i64
  %arrayidx108 = getelementptr inbounds [16 x i32], [16 x i32]* @scale_bitcount_lsf.log2tab, i32 0, i64 %idxprom107
  %80 = load i32, i32* %arrayidx108, align 4, !tbaa !12
  %81 = load i32, i32* %partition, align 4, !tbaa !12
  %idxprom109 = sext i32 %81 to i64
  %82 = load %struct.gr_info*, %struct.gr_info** %cod_info.addr, align 8, !tbaa !1
  %slen = getelementptr inbounds %struct.gr_info, %struct.gr_info* %82, i32 0, i32 20
  %arrayidx110 = getelementptr inbounds [4 x i32], [4 x i32]* %slen, i32 0, i64 %idxprom109
  store i32 %80, i32* %arrayidx110, align 4, !tbaa !12
  br label %for.inc.111

for.inc.111:                                      ; preds = %for.body.104
  %83 = load i32, i32* %partition, align 4, !tbaa !12
  %inc112 = add nsw i32 %83, 1
  store i32 %inc112, i32* %partition, align 4, !tbaa !12
  br label %for.cond.102

for.end.113:                                      ; preds = %for.cond.102
  %84 = load %struct.gr_info*, %struct.gr_info** %cod_info.addr, align 8, !tbaa !1
  %slen114 = getelementptr inbounds %struct.gr_info, %struct.gr_info* %84, i32 0, i32 20
  %arrayidx115 = getelementptr inbounds [4 x i32], [4 x i32]* %slen114, i32 0, i64 0
  %85 = load i32, i32* %arrayidx115, align 4, !tbaa !12
  store i32 %85, i32* %slen1, align 4, !tbaa !12
  %86 = load %struct.gr_info*, %struct.gr_info** %cod_info.addr, align 8, !tbaa !1
  %slen116 = getelementptr inbounds %struct.gr_info, %struct.gr_info* %86, i32 0, i32 20
  %arrayidx117 = getelementptr inbounds [4 x i32], [4 x i32]* %slen116, i32 0, i64 1
  %87 = load i32, i32* %arrayidx117, align 4, !tbaa !12
  store i32 %87, i32* %slen2, align 4, !tbaa !12
  %88 = load %struct.gr_info*, %struct.gr_info** %cod_info.addr, align 8, !tbaa !1
  %slen118 = getelementptr inbounds %struct.gr_info, %struct.gr_info* %88, i32 0, i32 20
  %arrayidx119 = getelementptr inbounds [4 x i32], [4 x i32]* %slen118, i32 0, i64 2
  %89 = load i32, i32* %arrayidx119, align 4, !tbaa !12
  store i32 %89, i32* %slen3, align 4, !tbaa !12
  %90 = load %struct.gr_info*, %struct.gr_info** %cod_info.addr, align 8, !tbaa !1
  %slen120 = getelementptr inbounds %struct.gr_info, %struct.gr_info* %90, i32 0, i32 20
  %arrayidx121 = getelementptr inbounds [4 x i32], [4 x i32]* %slen120, i32 0, i64 3
  %91 = load i32, i32* %arrayidx121, align 4, !tbaa !12
  store i32 %91, i32* %slen4, align 4, !tbaa !12
  %92 = load i32, i32* %table_number, align 4, !tbaa !12
  switch i32 %92, label %sw.default [
    i32 0, label %sw.bb
    i32 1, label %sw.bb.125
    i32 2, label %sw.bb.132
  ]

sw.bb:                                            ; preds = %for.end.113
  %93 = load i32, i32* %slen1, align 4, !tbaa !12
  %mul = mul i32 %93, 5
  %94 = load i32, i32* %slen2, align 4, !tbaa !12
  %add = add i32 %mul, %94
  %shl = shl i32 %add, 4
  %95 = load i32, i32* %slen3, align 4, !tbaa !12
  %shl122 = shl i32 %95, 2
  %add123 = add i32 %shl, %shl122
  %96 = load i32, i32* %slen4, align 4, !tbaa !12
  %add124 = add i32 %add123, %96
  %97 = load %struct.gr_info*, %struct.gr_info** %cod_info.addr, align 8, !tbaa !1
  %scalefac_compress = getelementptr inbounds %struct.gr_info, %struct.gr_info* %97, i32 0, i32 4
  store i32 %add124, i32* %scalefac_compress, align 4, !tbaa !31
  br label %sw.epilog

sw.bb.125:                                        ; preds = %for.end.113
  %98 = load i32, i32* %slen1, align 4, !tbaa !12
  %mul126 = mul i32 %98, 5
  %99 = load i32, i32* %slen2, align 4, !tbaa !12
  %add127 = add i32 %mul126, %99
  %shl128 = shl i32 %add127, 2
  %add129 = add i32 400, %shl128
  %100 = load i32, i32* %slen3, align 4, !tbaa !12
  %add130 = add i32 %add129, %100
  %101 = load %struct.gr_info*, %struct.gr_info** %cod_info.addr, align 8, !tbaa !1
  %scalefac_compress131 = getelementptr inbounds %struct.gr_info, %struct.gr_info* %101, i32 0, i32 4
  store i32 %add130, i32* %scalefac_compress131, align 4, !tbaa !31
  br label %sw.epilog

sw.bb.132:                                        ; preds = %for.end.113
  %102 = load i32, i32* %slen1, align 4, !tbaa !12
  %mul133 = mul i32 %102, 3
  %add134 = add i32 500, %mul133
  %103 = load i32, i32* %slen2, align 4, !tbaa !12
  %add135 = add i32 %add134, %103
  %104 = load %struct.gr_info*, %struct.gr_info** %cod_info.addr, align 8, !tbaa !1
  %scalefac_compress136 = getelementptr inbounds %struct.gr_info, %struct.gr_info* %104, i32 0, i32 4
  store i32 %add135, i32* %scalefac_compress136, align 4, !tbaa !31
  br label %sw.epilog

sw.default:                                       ; preds = %for.end.113
  %105 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !tbaa !1
  %call = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %105, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str, i32 0, i32 0))
  call void @exit(i32 1) #6
  unreachable

sw.epilog:                                        ; preds = %sw.bb.132, %sw.bb.125, %sw.bb
  %106 = bitcast i32* %slen4 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %106) #1
  %107 = bitcast i32* %slen3 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %107) #1
  %108 = bitcast i32* %slen2 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %108) #1
  %109 = bitcast i32* %slen1 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %109) #1
  br label %if.end.137

if.end.137:                                       ; preds = %sw.epilog, %for.end.94
  %110 = load i32, i32* %over, align 4, !tbaa !12
  %tobool138 = icmp ne i32 %110, 0
  br i1 %tobool138, label %if.end.155, label %if.then.139

if.then.139:                                      ; preds = %if.end.137
  %111 = load %struct.gr_info*, %struct.gr_info** %cod_info.addr, align 8, !tbaa !1
  %part2_length = getelementptr inbounds %struct.gr_info, %struct.gr_info* %111, i32 0, i32 15
  store i32 0, i32* %part2_length, align 4, !tbaa !30
  store i32 0, i32* %partition, align 4, !tbaa !12
  br label %for.cond.140

for.cond.140:                                     ; preds = %for.inc.152, %if.then.139
  %112 = load i32, i32* %partition, align 4, !tbaa !12
  %cmp141 = icmp slt i32 %112, 4
  br i1 %cmp141, label %for.body.142, label %for.end.154

for.body.142:                                     ; preds = %for.cond.140
  %113 = load i32, i32* %partition, align 4, !tbaa !12
  %idxprom143 = sext i32 %113 to i64
  %114 = load %struct.gr_info*, %struct.gr_info** %cod_info.addr, align 8, !tbaa !1
  %slen144 = getelementptr inbounds %struct.gr_info, %struct.gr_info* %114, i32 0, i32 20
  %arrayidx145 = getelementptr inbounds [4 x i32], [4 x i32]* %slen144, i32 0, i64 %idxprom143
  %115 = load i32, i32* %arrayidx145, align 4, !tbaa !12
  %116 = load i32, i32* %partition, align 4, !tbaa !12
  %idxprom146 = sext i32 %116 to i64
  %117 = load %struct.gr_info*, %struct.gr_info** %cod_info.addr, align 8, !tbaa !1
  %sfb_partition_table147 = getelementptr inbounds %struct.gr_info, %struct.gr_info* %117, i32 0, i32 19
  %118 = load i32*, i32** %sfb_partition_table147, align 8, !tbaa !32
  %arrayidx148 = getelementptr inbounds i32, i32* %118, i64 %idxprom146
  %119 = load i32, i32* %arrayidx148, align 4, !tbaa !12
  %mul149 = mul i32 %115, %119
  %120 = load %struct.gr_info*, %struct.gr_info** %cod_info.addr, align 8, !tbaa !1
  %part2_length150 = getelementptr inbounds %struct.gr_info, %struct.gr_info* %120, i32 0, i32 15
  %121 = load i32, i32* %part2_length150, align 4, !tbaa !30
  %add151 = add i32 %121, %mul149
  store i32 %add151, i32* %part2_length150, align 4, !tbaa !30
  br label %for.inc.152

for.inc.152:                                      ; preds = %for.body.142
  %122 = load i32, i32* %partition, align 4, !tbaa !12
  %inc153 = add nsw i32 %122, 1
  store i32 %inc153, i32* %partition, align 4, !tbaa !12
  br label %for.cond.140

for.end.154:                                      ; preds = %for.cond.140
  br label %if.end.155

if.end.155:                                       ; preds = %for.end.154, %if.end.137
  %123 = load i32, i32* %over, align 4, !tbaa !12
  %124 = bitcast i32** %partition_table to i8*
  call void @llvm.lifetime.end(i64 8, i8* %124) #1
  %125 = bitcast [4 x i32]* %max_sfac to i8*
  call void @llvm.lifetime.end(i64 16, i8* %125) #1
  %126 = bitcast i32* %sfb to i8*
  call void @llvm.lifetime.end(i64 4, i8* %126) #1
  %127 = bitcast i32* %i to i8*
  call void @llvm.lifetime.end(i64 4, i8* %127) #1
  %128 = bitcast i32* %over to i8*
  call void @llvm.lifetime.end(i64 4, i8* %128) #1
  %129 = bitcast i32* %window to i8*
  call void @llvm.lifetime.end(i64 4, i8* %129) #1
  %130 = bitcast i32* %nr_sfb to i8*
  call void @llvm.lifetime.end(i64 4, i8* %130) #1
  %131 = bitcast i32* %partition to i8*
  call void @llvm.lifetime.end(i64 4, i8* %131) #1
  %132 = bitcast i32* %row_in_table to i8*
  call void @llvm.lifetime.end(i64 4, i8* %132) #1
  %133 = bitcast i32* %table_number to i8*
  call void @llvm.lifetime.end(i64 4, i8* %133) #1
  ret i32 %123
}

declare i32 @fprintf(%struct._IO_FILE*, i8*, ...) #3

; Function Attrs: noreturn nounwind
declare void @exit(i32) #4

; Function Attrs: nounwind uwtable
define i32 @calc_xmin(%struct.lame_global_flags* %gfp, double* %xr, %struct.III_psy_ratio* %ratio, %struct.gr_info* %cod_info, %struct.III_psy_xmin* %l3_xmin) #0 {
entry:
  %gfp.addr = alloca %struct.lame_global_flags*, align 8
  %xr.addr = alloca double*, align 8
  %ratio.addr = alloca %struct.III_psy_ratio*, align 8
  %cod_info.addr = alloca %struct.gr_info*, align 8
  %l3_xmin.addr = alloca %struct.III_psy_xmin*, align 8
  %start = alloca i32, align 4
  %end = alloca i32, align 4
  %bw = alloca i32, align 4
  %l = alloca i32, align 4
  %b = alloca i32, align 4
  %ath_over = alloca i32, align 4
  %sfb = alloca i32, align 4
  %en0 = alloca double, align 8
  %xmin = alloca double, align 8
  %ener = alloca double, align 8
  store %struct.lame_global_flags* %gfp, %struct.lame_global_flags** %gfp.addr, align 8, !tbaa !1
  store double* %xr, double** %xr.addr, align 8, !tbaa !1
  store %struct.III_psy_ratio* %ratio, %struct.III_psy_ratio** %ratio.addr, align 8, !tbaa !1
  store %struct.gr_info* %cod_info, %struct.gr_info** %cod_info.addr, align 8, !tbaa !1
  store %struct.III_psy_xmin* %l3_xmin, %struct.III_psy_xmin** %l3_xmin.addr, align 8, !tbaa !1
  %0 = bitcast i32* %start to i8*
  call void @llvm.lifetime.start(i64 4, i8* %0) #1
  %1 = bitcast i32* %end to i8*
  call void @llvm.lifetime.start(i64 4, i8* %1) #1
  %2 = bitcast i32* %bw to i8*
  call void @llvm.lifetime.start(i64 4, i8* %2) #1
  %3 = bitcast i32* %l to i8*
  call void @llvm.lifetime.start(i64 4, i8* %3) #1
  %4 = bitcast i32* %b to i8*
  call void @llvm.lifetime.start(i64 4, i8* %4) #1
  %5 = bitcast i32* %ath_over to i8*
  call void @llvm.lifetime.start(i64 4, i8* %5) #1
  store i32 0, i32* %ath_over, align 4, !tbaa !12
  %6 = bitcast i32* %sfb to i8*
  call void @llvm.lifetime.start(i64 4, i8* %6) #1
  %7 = bitcast double* %en0 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %7) #1
  %8 = bitcast double* %xmin to i8*
  call void @llvm.lifetime.start(i64 8, i8* %8) #1
  %9 = bitcast double* %ener to i8*
  call void @llvm.lifetime.start(i64 8, i8* %9) #1
  %10 = load %struct.lame_global_flags*, %struct.lame_global_flags** %gfp.addr, align 8, !tbaa !1
  %ATHonly = getelementptr inbounds %struct.lame_global_flags, %struct.lame_global_flags* %10, i32 0, i32 33
  %11 = load i32, i32* %ATHonly, align 4, !tbaa !33
  %tobool = icmp ne i32 %11, 0
  br i1 %tobool, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %12 = load %struct.gr_info*, %struct.gr_info** %cod_info.addr, align 8, !tbaa !1
  %sfb_smax = getelementptr inbounds %struct.gr_info, %struct.gr_info* %12, i32 0, i32 17
  %13 = load i32, i32* %sfb_smax, align 4, !tbaa !24
  store i32 %13, i32* %sfb, align 4, !tbaa !12
  br label %for.cond

for.cond:                                         ; preds = %for.inc.8, %if.then
  %14 = load i32, i32* %sfb, align 4, !tbaa !12
  %cmp = icmp ult i32 %14, 12
  br i1 %cmp, label %for.body, label %for.end.10

for.body:                                         ; preds = %for.cond
  store i32 0, i32* %b, align 4, !tbaa !12
  br label %for.cond.1

for.cond.1:                                       ; preds = %for.inc, %for.body
  %15 = load i32, i32* %b, align 4, !tbaa !12
  %cmp2 = icmp slt i32 %15, 3
  br i1 %cmp2, label %for.body.3, label %for.end

for.body.3:                                       ; preds = %for.cond.1
  %16 = load i32, i32* %sfb, align 4, !tbaa !12
  %idxprom = zext i32 %16 to i64
  %arrayidx = getelementptr inbounds [21 x double], [21 x double]* @ATH_s, i32 0, i64 %idxprom
  %17 = load double, double* %arrayidx, align 8, !tbaa !16
  %18 = load i32, i32* %b, align 4, !tbaa !12
  %idxprom4 = sext i32 %18 to i64
  %19 = load i32, i32* %sfb, align 4, !tbaa !12
  %idxprom5 = zext i32 %19 to i64
  %20 = load %struct.III_psy_xmin*, %struct.III_psy_xmin** %l3_xmin.addr, align 8, !tbaa !1
  %s = getelementptr inbounds %struct.III_psy_xmin, %struct.III_psy_xmin* %20, i32 0, i32 1
  %arrayidx6 = getelementptr inbounds [13 x [3 x double]], [13 x [3 x double]]* %s, i32 0, i64 %idxprom5
  %arrayidx7 = getelementptr inbounds [3 x double], [3 x double]* %arrayidx6, i32 0, i64 %idxprom4
  store double %17, double* %arrayidx7, align 8, !tbaa !16
  br label %for.inc

for.inc:                                          ; preds = %for.body.3
  %21 = load i32, i32* %b, align 4, !tbaa !12
  %inc = add nsw i32 %21, 1
  store i32 %inc, i32* %b, align 4, !tbaa !12
  br label %for.cond.1

for.end:                                          ; preds = %for.cond.1
  br label %for.inc.8

for.inc.8:                                        ; preds = %for.end
  %22 = load i32, i32* %sfb, align 4, !tbaa !12
  %inc9 = add i32 %22, 1
  store i32 %inc9, i32* %sfb, align 4, !tbaa !12
  br label %for.cond

for.end.10:                                       ; preds = %for.cond
  store i32 0, i32* %sfb, align 4, !tbaa !12
  br label %for.cond.11

for.cond.11:                                      ; preds = %for.inc.19, %for.end.10
  %23 = load i32, i32* %sfb, align 4, !tbaa !12
  %24 = load %struct.gr_info*, %struct.gr_info** %cod_info.addr, align 8, !tbaa !1
  %sfb_lmax = getelementptr inbounds %struct.gr_info, %struct.gr_info* %24, i32 0, i32 16
  %25 = load i32, i32* %sfb_lmax, align 4, !tbaa !23
  %cmp12 = icmp ult i32 %23, %25
  br i1 %cmp12, label %for.body.13, label %for.end.21

for.body.13:                                      ; preds = %for.cond.11
  %26 = load i32, i32* %sfb, align 4, !tbaa !12
  %idxprom14 = zext i32 %26 to i64
  %arrayidx15 = getelementptr inbounds [21 x double], [21 x double]* @ATH_l, i32 0, i64 %idxprom14
  %27 = load double, double* %arrayidx15, align 8, !tbaa !16
  %28 = load i32, i32* %sfb, align 4, !tbaa !12
  %idxprom16 = zext i32 %28 to i64
  %29 = load %struct.III_psy_xmin*, %struct.III_psy_xmin** %l3_xmin.addr, align 8, !tbaa !1
  %l17 = getelementptr inbounds %struct.III_psy_xmin, %struct.III_psy_xmin* %29, i32 0, i32 0
  %arrayidx18 = getelementptr inbounds [22 x double], [22 x double]* %l17, i32 0, i64 %idxprom16
  store double %27, double* %arrayidx18, align 8, !tbaa !16
  br label %for.inc.19

for.inc.19:                                       ; preds = %for.body.13
  %30 = load i32, i32* %sfb, align 4, !tbaa !12
  %inc20 = add i32 %30, 1
  store i32 %inc20, i32* %sfb, align 4, !tbaa !12
  br label %for.cond.11

for.end.21:                                       ; preds = %for.cond.11
  br label %if.end.150

if.else:                                          ; preds = %entry
  %31 = load %struct.gr_info*, %struct.gr_info** %cod_info.addr, align 8, !tbaa !1
  %sfb_smax22 = getelementptr inbounds %struct.gr_info, %struct.gr_info* %31, i32 0, i32 17
  %32 = load i32, i32* %sfb_smax22, align 4, !tbaa !24
  store i32 %32, i32* %sfb, align 4, !tbaa !12
  br label %for.cond.23

for.cond.23:                                      ; preds = %for.inc.82, %if.else
  %33 = load i32, i32* %sfb, align 4, !tbaa !12
  %cmp24 = icmp ult i32 %33, 12
  br i1 %cmp24, label %for.body.25, label %for.end.84

for.body.25:                                      ; preds = %for.cond.23
  %34 = load i32, i32* %sfb, align 4, !tbaa !12
  %idxprom26 = zext i32 %34 to i64
  %arrayidx27 = getelementptr inbounds [14 x i32], [14 x i32]* getelementptr inbounds (%struct.scalefac_struct, %struct.scalefac_struct* @scalefac_band, i32 0, i32 1), i32 0, i64 %idxprom26
  %35 = load i32, i32* %arrayidx27, align 4, !tbaa !12
  store i32 %35, i32* %start, align 4, !tbaa !12
  %36 = load i32, i32* %sfb, align 4, !tbaa !12
  %add = add i32 %36, 1
  %idxprom28 = zext i32 %add to i64
  %arrayidx29 = getelementptr inbounds [14 x i32], [14 x i32]* getelementptr inbounds (%struct.scalefac_struct, %struct.scalefac_struct* @scalefac_band, i32 0, i32 1), i32 0, i64 %idxprom28
  %37 = load i32, i32* %arrayidx29, align 4, !tbaa !12
  store i32 %37, i32* %end, align 4, !tbaa !12
  %38 = load i32, i32* %end, align 4, !tbaa !12
  %39 = load i32, i32* %start, align 4, !tbaa !12
  %sub = sub nsw i32 %38, %39
  store i32 %sub, i32* %bw, align 4, !tbaa !12
  store i32 0, i32* %b, align 4, !tbaa !12
  br label %for.cond.30

for.cond.30:                                      ; preds = %for.inc.79, %for.body.25
  %40 = load i32, i32* %b, align 4, !tbaa !12
  %cmp31 = icmp slt i32 %40, 3
  br i1 %cmp31, label %for.body.32, label %for.end.81

for.body.32:                                      ; preds = %for.cond.30
  store double 0.000000e+00, double* %en0, align 8, !tbaa !16
  %41 = load i32, i32* %start, align 4, !tbaa !12
  store i32 %41, i32* %l, align 4, !tbaa !12
  br label %for.cond.33

for.cond.33:                                      ; preds = %for.inc.41, %for.body.32
  %42 = load i32, i32* %l, align 4, !tbaa !12
  %43 = load i32, i32* %end, align 4, !tbaa !12
  %cmp34 = icmp slt i32 %42, %43
  br i1 %cmp34, label %for.body.35, label %for.end.43

for.body.35:                                      ; preds = %for.cond.33
  %44 = load i32, i32* %l, align 4, !tbaa !12
  %mul = mul nsw i32 %44, 3
  %45 = load i32, i32* %b, align 4, !tbaa !12
  %add36 = add nsw i32 %mul, %45
  %idxprom37 = sext i32 %add36 to i64
  %46 = load double*, double** %xr.addr, align 8, !tbaa !1
  %arrayidx38 = getelementptr inbounds double, double* %46, i64 %idxprom37
  %47 = load double, double* %arrayidx38, align 8, !tbaa !16
  store double %47, double* %ener, align 8, !tbaa !16
  %48 = load double, double* %ener, align 8, !tbaa !16
  %49 = load double, double* %ener, align 8, !tbaa !16
  %mul39 = fmul double %48, %49
  store double %mul39, double* %ener, align 8, !tbaa !16
  %50 = load double, double* %ener, align 8, !tbaa !16
  %51 = load double, double* %en0, align 8, !tbaa !16
  %add40 = fadd double %51, %50
  store double %add40, double* %en0, align 8, !tbaa !16
  br label %for.inc.41

for.inc.41:                                       ; preds = %for.body.35
  %52 = load i32, i32* %l, align 4, !tbaa !12
  %inc42 = add nsw i32 %52, 1
  store i32 %inc42, i32* %l, align 4, !tbaa !12
  br label %for.cond.33

for.end.43:                                       ; preds = %for.cond.33
  %53 = load i32, i32* %bw, align 4, !tbaa !12
  %conv = sitofp i32 %53 to double
  %54 = load double, double* %en0, align 8, !tbaa !16
  %div = fdiv double %54, %conv
  store double %div, double* %en0, align 8, !tbaa !16
  %55 = load i32, i32* %b, align 4, !tbaa !12
  %idxprom44 = sext i32 %55 to i64
  %56 = load i32, i32* %sfb, align 4, !tbaa !12
  %idxprom45 = zext i32 %56 to i64
  %57 = load %struct.III_psy_ratio*, %struct.III_psy_ratio** %ratio.addr, align 8, !tbaa !1
  %en = getelementptr inbounds %struct.III_psy_ratio, %struct.III_psy_ratio* %57, i32 0, i32 1
  %s46 = getelementptr inbounds %struct.III_psy_xmin, %struct.III_psy_xmin* %en, i32 0, i32 1
  %arrayidx47 = getelementptr inbounds [13 x [3 x double]], [13 x [3 x double]]* %s46, i32 0, i64 %idxprom45
  %arrayidx48 = getelementptr inbounds [3 x double], [3 x double]* %arrayidx47, i32 0, i64 %idxprom44
  %58 = load double, double* %arrayidx48, align 8, !tbaa !16
  store double %58, double* %xmin, align 8, !tbaa !16
  %59 = load double, double* %xmin, align 8, !tbaa !16
  %cmp49 = fcmp ogt double %59, 0.000000e+00
  br i1 %cmp49, label %if.then.51, label %if.end

if.then.51:                                       ; preds = %for.end.43
  %60 = load double, double* %en0, align 8, !tbaa !16
  %61 = load i32, i32* %b, align 4, !tbaa !12
  %idxprom52 = sext i32 %61 to i64
  %62 = load i32, i32* %sfb, align 4, !tbaa !12
  %idxprom53 = zext i32 %62 to i64
  %63 = load %struct.III_psy_ratio*, %struct.III_psy_ratio** %ratio.addr, align 8, !tbaa !1
  %thm = getelementptr inbounds %struct.III_psy_ratio, %struct.III_psy_ratio* %63, i32 0, i32 0
  %s54 = getelementptr inbounds %struct.III_psy_xmin, %struct.III_psy_xmin* %thm, i32 0, i32 1
  %arrayidx55 = getelementptr inbounds [13 x [3 x double]], [13 x [3 x double]]* %s54, i32 0, i64 %idxprom53
  %arrayidx56 = getelementptr inbounds [3 x double], [3 x double]* %arrayidx55, i32 0, i64 %idxprom52
  %64 = load double, double* %arrayidx56, align 8, !tbaa !16
  %mul57 = fmul double %60, %64
  %65 = load float, float* @masking_lower, align 4, !tbaa !27
  %conv58 = fpext float %65 to double
  %mul59 = fmul double %mul57, %conv58
  %66 = load double, double* %xmin, align 8, !tbaa !16
  %div60 = fdiv double %mul59, %66
  store double %div60, double* %xmin, align 8, !tbaa !16
  br label %if.end

if.end:                                           ; preds = %if.then.51, %for.end.43
  %67 = load i32, i32* %sfb, align 4, !tbaa !12
  %idxprom61 = zext i32 %67 to i64
  %arrayidx62 = getelementptr inbounds [21 x double], [21 x double]* @ATH_s, i32 0, i64 %idxprom61
  %68 = load double, double* %arrayidx62, align 8, !tbaa !16
  %69 = load double, double* %xmin, align 8, !tbaa !16
  %cmp63 = fcmp ogt double %68, %69
  br i1 %cmp63, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.end
  %70 = load i32, i32* %sfb, align 4, !tbaa !12
  %idxprom65 = zext i32 %70 to i64
  %arrayidx66 = getelementptr inbounds [21 x double], [21 x double]* @ATH_s, i32 0, i64 %idxprom65
  %71 = load double, double* %arrayidx66, align 8, !tbaa !16
  br label %cond.end

cond.false:                                       ; preds = %if.end
  %72 = load double, double* %xmin, align 8, !tbaa !16
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi double [ %71, %cond.true ], [ %72, %cond.false ]
  %73 = load i32, i32* %b, align 4, !tbaa !12
  %idxprom67 = sext i32 %73 to i64
  %74 = load i32, i32* %sfb, align 4, !tbaa !12
  %idxprom68 = zext i32 %74 to i64
  %75 = load %struct.III_psy_xmin*, %struct.III_psy_xmin** %l3_xmin.addr, align 8, !tbaa !1
  %s69 = getelementptr inbounds %struct.III_psy_xmin, %struct.III_psy_xmin* %75, i32 0, i32 1
  %arrayidx70 = getelementptr inbounds [13 x [3 x double]], [13 x [3 x double]]* %s69, i32 0, i64 %idxprom68
  %arrayidx71 = getelementptr inbounds [3 x double], [3 x double]* %arrayidx70, i32 0, i64 %idxprom67
  store double %cond, double* %arrayidx71, align 8, !tbaa !16
  %76 = load double, double* %en0, align 8, !tbaa !16
  %77 = load i32, i32* %sfb, align 4, !tbaa !12
  %idxprom72 = zext i32 %77 to i64
  %arrayidx73 = getelementptr inbounds [21 x double], [21 x double]* @ATH_s, i32 0, i64 %idxprom72
  %78 = load double, double* %arrayidx73, align 8, !tbaa !16
  %cmp74 = fcmp ogt double %76, %78
  br i1 %cmp74, label %if.then.76, label %if.end.78

if.then.76:                                       ; preds = %cond.end
  %79 = load i32, i32* %ath_over, align 4, !tbaa !12
  %inc77 = add nsw i32 %79, 1
  store i32 %inc77, i32* %ath_over, align 4, !tbaa !12
  br label %if.end.78

if.end.78:                                        ; preds = %if.then.76, %cond.end
  br label %for.inc.79

for.inc.79:                                       ; preds = %if.end.78
  %80 = load i32, i32* %b, align 4, !tbaa !12
  %inc80 = add nsw i32 %80, 1
  store i32 %inc80, i32* %b, align 4, !tbaa !12
  br label %for.cond.30

for.end.81:                                       ; preds = %for.cond.30
  br label %for.inc.82

for.inc.82:                                       ; preds = %for.end.81
  %81 = load i32, i32* %sfb, align 4, !tbaa !12
  %inc83 = add i32 %81, 1
  store i32 %inc83, i32* %sfb, align 4, !tbaa !12
  br label %for.cond.23

for.end.84:                                       ; preds = %for.cond.23
  store i32 0, i32* %sfb, align 4, !tbaa !12
  br label %for.cond.85

for.cond.85:                                      ; preds = %for.inc.147, %for.end.84
  %82 = load i32, i32* %sfb, align 4, !tbaa !12
  %83 = load %struct.gr_info*, %struct.gr_info** %cod_info.addr, align 8, !tbaa !1
  %sfb_lmax86 = getelementptr inbounds %struct.gr_info, %struct.gr_info* %83, i32 0, i32 16
  %84 = load i32, i32* %sfb_lmax86, align 4, !tbaa !23
  %cmp87 = icmp ult i32 %82, %84
  br i1 %cmp87, label %for.body.89, label %for.end.149

for.body.89:                                      ; preds = %for.cond.85
  %85 = load i32, i32* %sfb, align 4, !tbaa !12
  %idxprom90 = zext i32 %85 to i64
  %arrayidx91 = getelementptr inbounds [23 x i32], [23 x i32]* getelementptr inbounds (%struct.scalefac_struct, %struct.scalefac_struct* @scalefac_band, i32 0, i32 0), i32 0, i64 %idxprom90
  %86 = load i32, i32* %arrayidx91, align 4, !tbaa !12
  store i32 %86, i32* %start, align 4, !tbaa !12
  %87 = load i32, i32* %sfb, align 4, !tbaa !12
  %add92 = add i32 %87, 1
  %idxprom93 = zext i32 %add92 to i64
  %arrayidx94 = getelementptr inbounds [23 x i32], [23 x i32]* getelementptr inbounds (%struct.scalefac_struct, %struct.scalefac_struct* @scalefac_band, i32 0, i32 0), i32 0, i64 %idxprom93
  %88 = load i32, i32* %arrayidx94, align 4, !tbaa !12
  store i32 %88, i32* %end, align 4, !tbaa !12
  %89 = load i32, i32* %end, align 4, !tbaa !12
  %90 = load i32, i32* %start, align 4, !tbaa !12
  %sub95 = sub nsw i32 %89, %90
  store i32 %sub95, i32* %bw, align 4, !tbaa !12
  store double 0.000000e+00, double* %en0, align 8, !tbaa !16
  %91 = load i32, i32* %start, align 4, !tbaa !12
  store i32 %91, i32* %l, align 4, !tbaa !12
  br label %for.cond.96

for.cond.96:                                      ; preds = %for.inc.106, %for.body.89
  %92 = load i32, i32* %l, align 4, !tbaa !12
  %93 = load i32, i32* %end, align 4, !tbaa !12
  %cmp97 = icmp slt i32 %92, %93
  br i1 %cmp97, label %for.body.99, label %for.end.108

for.body.99:                                      ; preds = %for.cond.96
  %94 = load i32, i32* %l, align 4, !tbaa !12
  %idxprom100 = sext i32 %94 to i64
  %95 = load double*, double** %xr.addr, align 8, !tbaa !1
  %arrayidx101 = getelementptr inbounds double, double* %95, i64 %idxprom100
  %96 = load double, double* %arrayidx101, align 8, !tbaa !16
  %97 = load i32, i32* %l, align 4, !tbaa !12
  %idxprom102 = sext i32 %97 to i64
  %98 = load double*, double** %xr.addr, align 8, !tbaa !1
  %arrayidx103 = getelementptr inbounds double, double* %98, i64 %idxprom102
  %99 = load double, double* %arrayidx103, align 8, !tbaa !16
  %mul104 = fmul double %96, %99
  store double %mul104, double* %ener, align 8, !tbaa !16
  %100 = load double, double* %ener, align 8, !tbaa !16
  %101 = load double, double* %en0, align 8, !tbaa !16
  %add105 = fadd double %101, %100
  store double %add105, double* %en0, align 8, !tbaa !16
  br label %for.inc.106

for.inc.106:                                      ; preds = %for.body.99
  %102 = load i32, i32* %l, align 4, !tbaa !12
  %inc107 = add nsw i32 %102, 1
  store i32 %inc107, i32* %l, align 4, !tbaa !12
  br label %for.cond.96

for.end.108:                                      ; preds = %for.cond.96
  %103 = load i32, i32* %bw, align 4, !tbaa !12
  %conv109 = sitofp i32 %103 to double
  %104 = load double, double* %en0, align 8, !tbaa !16
  %div110 = fdiv double %104, %conv109
  store double %div110, double* %en0, align 8, !tbaa !16
  %105 = load i32, i32* %sfb, align 4, !tbaa !12
  %idxprom111 = zext i32 %105 to i64
  %106 = load %struct.III_psy_ratio*, %struct.III_psy_ratio** %ratio.addr, align 8, !tbaa !1
  %en112 = getelementptr inbounds %struct.III_psy_ratio, %struct.III_psy_ratio* %106, i32 0, i32 1
  %l113 = getelementptr inbounds %struct.III_psy_xmin, %struct.III_psy_xmin* %en112, i32 0, i32 0
  %arrayidx114 = getelementptr inbounds [22 x double], [22 x double]* %l113, i32 0, i64 %idxprom111
  %107 = load double, double* %arrayidx114, align 8, !tbaa !16
  store double %107, double* %xmin, align 8, !tbaa !16
  %108 = load double, double* %xmin, align 8, !tbaa !16
  %cmp115 = fcmp ogt double %108, 0.000000e+00
  br i1 %cmp115, label %if.then.117, label %if.end.126

if.then.117:                                      ; preds = %for.end.108
  %109 = load double, double* %en0, align 8, !tbaa !16
  %110 = load i32, i32* %sfb, align 4, !tbaa !12
  %idxprom118 = zext i32 %110 to i64
  %111 = load %struct.III_psy_ratio*, %struct.III_psy_ratio** %ratio.addr, align 8, !tbaa !1
  %thm119 = getelementptr inbounds %struct.III_psy_ratio, %struct.III_psy_ratio* %111, i32 0, i32 0
  %l120 = getelementptr inbounds %struct.III_psy_xmin, %struct.III_psy_xmin* %thm119, i32 0, i32 0
  %arrayidx121 = getelementptr inbounds [22 x double], [22 x double]* %l120, i32 0, i64 %idxprom118
  %112 = load double, double* %arrayidx121, align 8, !tbaa !16
  %mul122 = fmul double %109, %112
  %113 = load float, float* @masking_lower, align 4, !tbaa !27
  %conv123 = fpext float %113 to double
  %mul124 = fmul double %mul122, %conv123
  %114 = load double, double* %xmin, align 8, !tbaa !16
  %div125 = fdiv double %mul124, %114
  store double %div125, double* %xmin, align 8, !tbaa !16
  br label %if.end.126

if.end.126:                                       ; preds = %if.then.117, %for.end.108
  %115 = load i32, i32* %sfb, align 4, !tbaa !12
  %idxprom127 = zext i32 %115 to i64
  %arrayidx128 = getelementptr inbounds [21 x double], [21 x double]* @ATH_l, i32 0, i64 %idxprom127
  %116 = load double, double* %arrayidx128, align 8, !tbaa !16
  %117 = load double, double* %xmin, align 8, !tbaa !16
  %cmp129 = fcmp ogt double %116, %117
  br i1 %cmp129, label %cond.true.131, label %cond.false.134

cond.true.131:                                    ; preds = %if.end.126
  %118 = load i32, i32* %sfb, align 4, !tbaa !12
  %idxprom132 = zext i32 %118 to i64
  %arrayidx133 = getelementptr inbounds [21 x double], [21 x double]* @ATH_l, i32 0, i64 %idxprom132
  %119 = load double, double* %arrayidx133, align 8, !tbaa !16
  br label %cond.end.135

cond.false.134:                                   ; preds = %if.end.126
  %120 = load double, double* %xmin, align 8, !tbaa !16
  br label %cond.end.135

cond.end.135:                                     ; preds = %cond.false.134, %cond.true.131
  %cond136 = phi double [ %119, %cond.true.131 ], [ %120, %cond.false.134 ]
  %121 = load i32, i32* %sfb, align 4, !tbaa !12
  %idxprom137 = zext i32 %121 to i64
  %122 = load %struct.III_psy_xmin*, %struct.III_psy_xmin** %l3_xmin.addr, align 8, !tbaa !1
  %l138 = getelementptr inbounds %struct.III_psy_xmin, %struct.III_psy_xmin* %122, i32 0, i32 0
  %arrayidx139 = getelementptr inbounds [22 x double], [22 x double]* %l138, i32 0, i64 %idxprom137
  store double %cond136, double* %arrayidx139, align 8, !tbaa !16
  %123 = load double, double* %en0, align 8, !tbaa !16
  %124 = load i32, i32* %sfb, align 4, !tbaa !12
  %idxprom140 = zext i32 %124 to i64
  %arrayidx141 = getelementptr inbounds [21 x double], [21 x double]* @ATH_l, i32 0, i64 %idxprom140
  %125 = load double, double* %arrayidx141, align 8, !tbaa !16
  %cmp142 = fcmp ogt double %123, %125
  br i1 %cmp142, label %if.then.144, label %if.end.146

if.then.144:                                      ; preds = %cond.end.135
  %126 = load i32, i32* %ath_over, align 4, !tbaa !12
  %inc145 = add nsw i32 %126, 1
  store i32 %inc145, i32* %ath_over, align 4, !tbaa !12
  br label %if.end.146

if.end.146:                                       ; preds = %if.then.144, %cond.end.135
  br label %for.inc.147

for.inc.147:                                      ; preds = %if.end.146
  %127 = load i32, i32* %sfb, align 4, !tbaa !12
  %inc148 = add i32 %127, 1
  store i32 %inc148, i32* %sfb, align 4, !tbaa !12
  br label %for.cond.85

for.end.149:                                      ; preds = %for.cond.85
  br label %if.end.150

if.end.150:                                       ; preds = %for.end.149, %for.end.21
  %128 = load i32, i32* %ath_over, align 4, !tbaa !12
  %129 = bitcast double* %ener to i8*
  call void @llvm.lifetime.end(i64 8, i8* %129) #1
  %130 = bitcast double* %xmin to i8*
  call void @llvm.lifetime.end(i64 8, i8* %130) #1
  %131 = bitcast double* %en0 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %131) #1
  %132 = bitcast i32* %sfb to i8*
  call void @llvm.lifetime.end(i64 4, i8* %132) #1
  %133 = bitcast i32* %ath_over to i8*
  call void @llvm.lifetime.end(i64 4, i8* %133) #1
  %134 = bitcast i32* %b to i8*
  call void @llvm.lifetime.end(i64 4, i8* %134) #1
  %135 = bitcast i32* %l to i8*
  call void @llvm.lifetime.end(i64 4, i8* %135) #1
  %136 = bitcast i32* %bw to i8*
  call void @llvm.lifetime.end(i64 4, i8* %136) #1
  %137 = bitcast i32* %end to i8*
  call void @llvm.lifetime.end(i64 4, i8* %137) #1
  %138 = bitcast i32* %start to i8*
  call void @llvm.lifetime.end(i64 4, i8* %138) #1
  ret i32 %128
}

; Function Attrs: nounwind uwtable
define i32 @loop_break(%struct.III_scalefac_t* %scalefac, %struct.gr_info* %cod_info) #0 {
entry:
  %retval = alloca i32, align 4
  %scalefac.addr = alloca %struct.III_scalefac_t*, align 8
  %cod_info.addr = alloca %struct.gr_info*, align 8
  %i = alloca i32, align 4
  %sfb = alloca i32, align 4
  %cleanup.dest.slot = alloca i32
  store %struct.III_scalefac_t* %scalefac, %struct.III_scalefac_t** %scalefac.addr, align 8, !tbaa !1
  store %struct.gr_info* %cod_info, %struct.gr_info** %cod_info.addr, align 8, !tbaa !1
  %0 = bitcast i32* %i to i8*
  call void @llvm.lifetime.start(i64 4, i8* %0) #1
  %1 = bitcast i32* %sfb to i8*
  call void @llvm.lifetime.start(i64 4, i8* %1) #1
  store i32 0, i32* %sfb, align 4, !tbaa !12
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %2 = load i32, i32* %sfb, align 4, !tbaa !12
  %3 = load %struct.gr_info*, %struct.gr_info** %cod_info.addr, align 8, !tbaa !1
  %sfb_lmax = getelementptr inbounds %struct.gr_info, %struct.gr_info* %3, i32 0, i32 16
  %4 = load i32, i32* %sfb_lmax, align 4, !tbaa !23
  %cmp = icmp ult i32 %2, %4
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %5 = load i32, i32* %sfb, align 4, !tbaa !12
  %idxprom = zext i32 %5 to i64
  %6 = load %struct.III_scalefac_t*, %struct.III_scalefac_t** %scalefac.addr, align 8, !tbaa !1
  %l = getelementptr inbounds %struct.III_scalefac_t, %struct.III_scalefac_t* %6, i32 0, i32 0
  %arrayidx = getelementptr inbounds [22 x i32], [22 x i32]* %l, i32 0, i64 %idxprom
  %7 = load i32, i32* %arrayidx, align 4, !tbaa !12
  %cmp1 = icmp eq i32 %7, 0
  br i1 %cmp1, label %if.then, label %if.end

if.then:                                          ; preds = %for.body
  store i32 0, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end:                                           ; preds = %for.body
  br label %for.inc

for.inc:                                          ; preds = %if.end
  %8 = load i32, i32* %sfb, align 4, !tbaa !12
  %inc = add i32 %8, 1
  store i32 %inc, i32* %sfb, align 4, !tbaa !12
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %9 = load %struct.gr_info*, %struct.gr_info** %cod_info.addr, align 8, !tbaa !1
  %sfb_smax = getelementptr inbounds %struct.gr_info, %struct.gr_info* %9, i32 0, i32 17
  %10 = load i32, i32* %sfb_smax, align 4, !tbaa !24
  store i32 %10, i32* %sfb, align 4, !tbaa !12
  br label %for.cond.2

for.cond.2:                                       ; preds = %for.inc.18, %for.end
  %11 = load i32, i32* %sfb, align 4, !tbaa !12
  %cmp3 = icmp ult i32 %11, 12
  br i1 %cmp3, label %for.body.4, label %for.end.20

for.body.4:                                       ; preds = %for.cond.2
  store i32 0, i32* %i, align 4, !tbaa !12
  br label %for.cond.5

for.cond.5:                                       ; preds = %for.inc.15, %for.body.4
  %12 = load i32, i32* %i, align 4, !tbaa !12
  %cmp6 = icmp slt i32 %12, 3
  br i1 %cmp6, label %for.body.7, label %for.end.17

for.body.7:                                       ; preds = %for.cond.5
  %13 = load i32, i32* %i, align 4, !tbaa !12
  %idxprom8 = sext i32 %13 to i64
  %14 = load i32, i32* %sfb, align 4, !tbaa !12
  %idxprom9 = zext i32 %14 to i64
  %15 = load %struct.III_scalefac_t*, %struct.III_scalefac_t** %scalefac.addr, align 8, !tbaa !1
  %s = getelementptr inbounds %struct.III_scalefac_t, %struct.III_scalefac_t* %15, i32 0, i32 1
  %arrayidx10 = getelementptr inbounds [13 x [3 x i32]], [13 x [3 x i32]]* %s, i32 0, i64 %idxprom9
  %arrayidx11 = getelementptr inbounds [3 x i32], [3 x i32]* %arrayidx10, i32 0, i64 %idxprom8
  %16 = load i32, i32* %arrayidx11, align 4, !tbaa !12
  %cmp12 = icmp eq i32 %16, 0
  br i1 %cmp12, label %if.then.13, label %if.end.14

if.then.13:                                       ; preds = %for.body.7
  store i32 0, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.14:                                        ; preds = %for.body.7
  br label %for.inc.15

for.inc.15:                                       ; preds = %if.end.14
  %17 = load i32, i32* %i, align 4, !tbaa !12
  %inc16 = add nsw i32 %17, 1
  store i32 %inc16, i32* %i, align 4, !tbaa !12
  br label %for.cond.5

for.end.17:                                       ; preds = %for.cond.5
  br label %for.inc.18

for.inc.18:                                       ; preds = %for.end.17
  %18 = load i32, i32* %sfb, align 4, !tbaa !12
  %inc19 = add i32 %18, 1
  store i32 %inc19, i32* %sfb, align 4, !tbaa !12
  br label %for.cond.2

for.end.20:                                       ; preds = %for.cond.2
  store i32 1, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %for.end.20, %if.then.13, %if.then
  %19 = bitcast i32* %sfb to i8*
  call void @llvm.lifetime.end(i64 4, i8* %19) #1
  %20 = bitcast i32* %i to i8*
  call void @llvm.lifetime.end(i64 4, i8* %20) #1
  %21 = load i32, i32* %retval
  ret i32 %21
}

; Function Attrs: nounwind uwtable
define i32 @bin_search_StepSize2(%struct.lame_global_flags* %gfp, i32 %desired_rate, i32 %start, i32* %ix, double* %xrspow, %struct.gr_info* %cod_info) #0 {
entry:
  %gfp.addr = alloca %struct.lame_global_flags*, align 8
  %desired_rate.addr = alloca i32, align 4
  %start.addr = alloca i32, align 4
  %ix.addr = alloca i32*, align 8
  %xrspow.addr = alloca double*, align 8
  %cod_info.addr = alloca %struct.gr_info*, align 8
  %nBits = alloca i32, align 4
  %flag_GoneOver = alloca i32, align 4
  %StepSize = alloca i32, align 4
  %Direction = alloca i32, align 4
  store %struct.lame_global_flags* %gfp, %struct.lame_global_flags** %gfp.addr, align 8, !tbaa !1
  store i32 %desired_rate, i32* %desired_rate.addr, align 4, !tbaa !12
  store i32 %start, i32* %start.addr, align 4, !tbaa !12
  store i32* %ix, i32** %ix.addr, align 8, !tbaa !1
  store double* %xrspow, double** %xrspow.addr, align 8, !tbaa !1
  store %struct.gr_info* %cod_info, %struct.gr_info** %cod_info.addr, align 8, !tbaa !1
  %0 = bitcast i32* %nBits to i8*
  call void @llvm.lifetime.start(i64 4, i8* %0) #1
  %1 = bitcast i32* %flag_GoneOver to i8*
  call void @llvm.lifetime.start(i64 4, i8* %1) #1
  store i32 0, i32* %flag_GoneOver, align 4, !tbaa !12
  %2 = bitcast i32* %StepSize to i8*
  call void @llvm.lifetime.start(i64 4, i8* %2) #1
  %3 = load i32, i32* %start.addr, align 4, !tbaa !12
  store i32 %3, i32* %StepSize, align 4, !tbaa !12
  %4 = bitcast i32* %Direction to i8*
  call void @llvm.lifetime.start(i64 4, i8* %4) #1
  store i32 0, i32* %Direction, align 4, !tbaa !34
  br label %do.body

do.body:                                          ; preds = %do.cond, %entry
  %5 = load i32, i32* %StepSize, align 4, !tbaa !12
  %6 = load %struct.gr_info*, %struct.gr_info** %cod_info.addr, align 8, !tbaa !1
  %global_gain = getelementptr inbounds %struct.gr_info, %struct.gr_info* %6, i32 0, i32 3
  store i32 %5, i32* %global_gain, align 4, !tbaa !28
  %7 = load %struct.lame_global_flags*, %struct.lame_global_flags** %gfp.addr, align 8, !tbaa !1
  %8 = load i32*, i32** %ix.addr, align 8, !tbaa !1
  %9 = load double*, double** %xrspow.addr, align 8, !tbaa !1
  %10 = load %struct.gr_info*, %struct.gr_info** %cod_info.addr, align 8, !tbaa !1
  %call = call i32 @count_bits(%struct.lame_global_flags* %7, i32* %8, double* %9, %struct.gr_info* %10)
  store i32 %call, i32* %nBits, align 4, !tbaa !12
  %11 = load i32, i32* @bin_search_StepSize2.CurrentStep, align 4, !tbaa !12
  %cmp = icmp eq i32 %11, 1
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %do.body
  br label %do.end

if.end:                                           ; preds = %do.body
  %12 = load i32, i32* %flag_GoneOver, align 4, !tbaa !12
  %tobool = icmp ne i32 %12, 0
  br i1 %tobool, label %if.then.1, label %if.end.2

if.then.1:                                        ; preds = %if.end
  %13 = load i32, i32* @bin_search_StepSize2.CurrentStep, align 4, !tbaa !12
  %div = sdiv i32 %13, 2
  store i32 %div, i32* @bin_search_StepSize2.CurrentStep, align 4, !tbaa !12
  br label %if.end.2

if.end.2:                                         ; preds = %if.then.1, %if.end
  %14 = load i32, i32* %nBits, align 4, !tbaa !12
  %15 = load i32, i32* %desired_rate.addr, align 4, !tbaa !12
  %cmp3 = icmp sgt i32 %14, %15
  br i1 %cmp3, label %if.then.4, label %if.else

if.then.4:                                        ; preds = %if.end.2
  %16 = load i32, i32* %Direction, align 4, !tbaa !34
  %cmp5 = icmp eq i32 %16, 2
  br i1 %cmp5, label %land.lhs.true, label %if.end.9

land.lhs.true:                                    ; preds = %if.then.4
  %17 = load i32, i32* %flag_GoneOver, align 4, !tbaa !12
  %tobool6 = icmp ne i32 %17, 0
  br i1 %tobool6, label %if.end.9, label %if.then.7

if.then.7:                                        ; preds = %land.lhs.true
  store i32 1, i32* %flag_GoneOver, align 4, !tbaa !12
  %18 = load i32, i32* @bin_search_StepSize2.CurrentStep, align 4, !tbaa !12
  %div8 = sdiv i32 %18, 2
  store i32 %div8, i32* @bin_search_StepSize2.CurrentStep, align 4, !tbaa !12
  br label %if.end.9

if.end.9:                                         ; preds = %if.then.7, %land.lhs.true, %if.then.4
  store i32 1, i32* %Direction, align 4, !tbaa !34
  %19 = load i32, i32* @bin_search_StepSize2.CurrentStep, align 4, !tbaa !12
  %20 = load i32, i32* %StepSize, align 4, !tbaa !12
  %add = add nsw i32 %20, %19
  store i32 %add, i32* %StepSize, align 4, !tbaa !12
  %21 = load i32, i32* %StepSize, align 4, !tbaa !12
  %cmp10 = icmp sgt i32 %21, 255
  br i1 %cmp10, label %if.then.11, label %if.end.12

if.then.11:                                       ; preds = %if.end.9
  br label %do.end

if.end.12:                                        ; preds = %if.end.9
  br label %if.end.26

if.else:                                          ; preds = %if.end.2
  %22 = load i32, i32* %nBits, align 4, !tbaa !12
  %23 = load i32, i32* %desired_rate.addr, align 4, !tbaa !12
  %cmp13 = icmp slt i32 %22, %23
  br i1 %cmp13, label %if.then.14, label %if.else.24

if.then.14:                                       ; preds = %if.else
  %24 = load i32, i32* %Direction, align 4, !tbaa !34
  %cmp15 = icmp eq i32 %24, 1
  br i1 %cmp15, label %land.lhs.true.16, label %if.end.20

land.lhs.true.16:                                 ; preds = %if.then.14
  %25 = load i32, i32* %flag_GoneOver, align 4, !tbaa !12
  %tobool17 = icmp ne i32 %25, 0
  br i1 %tobool17, label %if.end.20, label %if.then.18

if.then.18:                                       ; preds = %land.lhs.true.16
  store i32 1, i32* %flag_GoneOver, align 4, !tbaa !12
  %26 = load i32, i32* @bin_search_StepSize2.CurrentStep, align 4, !tbaa !12
  %div19 = sdiv i32 %26, 2
  store i32 %div19, i32* @bin_search_StepSize2.CurrentStep, align 4, !tbaa !12
  br label %if.end.20

if.end.20:                                        ; preds = %if.then.18, %land.lhs.true.16, %if.then.14
  store i32 2, i32* %Direction, align 4, !tbaa !34
  %27 = load i32, i32* @bin_search_StepSize2.CurrentStep, align 4, !tbaa !12
  %28 = load i32, i32* %StepSize, align 4, !tbaa !12
  %sub = sub nsw i32 %28, %27
  store i32 %sub, i32* %StepSize, align 4, !tbaa !12
  %29 = load i32, i32* %StepSize, align 4, !tbaa !12
  %cmp21 = icmp slt i32 %29, 0
  br i1 %cmp21, label %if.then.22, label %if.end.23

if.then.22:                                       ; preds = %if.end.20
  br label %do.end

if.end.23:                                        ; preds = %if.end.20
  br label %if.end.25

if.else.24:                                       ; preds = %if.else
  br label %do.end

if.end.25:                                        ; preds = %if.end.23
  br label %if.end.26

if.end.26:                                        ; preds = %if.end.25, %if.end.12
  br label %do.cond

do.cond:                                          ; preds = %if.end.26
  br i1 true, label %do.body, label %do.end

do.end:                                           ; preds = %do.cond, %if.else.24, %if.then.22, %if.then.11, %if.then
  %30 = load i32, i32* %start.addr, align 4, !tbaa !12
  %31 = load i32, i32* %StepSize, align 4, !tbaa !12
  %sub27 = sub nsw i32 %30, %31
  %call28 = call i32 @abs(i32 %sub27) #7
  store i32 %call28, i32* @bin_search_StepSize2.CurrentStep, align 4, !tbaa !12
  %32 = load i32, i32* @bin_search_StepSize2.CurrentStep, align 4, !tbaa !12
  %cmp29 = icmp sge i32 %32, 4
  br i1 %cmp29, label %if.then.30, label %if.else.31

if.then.30:                                       ; preds = %do.end
  store i32 4, i32* @bin_search_StepSize2.CurrentStep, align 4, !tbaa !12
  br label %if.end.32

if.else.31:                                       ; preds = %do.end
  store i32 2, i32* @bin_search_StepSize2.CurrentStep, align 4, !tbaa !12
  br label %if.end.32

if.end.32:                                        ; preds = %if.else.31, %if.then.30
  %33 = load i32, i32* %nBits, align 4, !tbaa !12
  %34 = bitcast i32* %Direction to i8*
  call void @llvm.lifetime.end(i64 4, i8* %34) #1
  %35 = bitcast i32* %StepSize to i8*
  call void @llvm.lifetime.end(i64 4, i8* %35) #1
  %36 = bitcast i32* %flag_GoneOver to i8*
  call void @llvm.lifetime.end(i64 4, i8* %36) #1
  %37 = bitcast i32* %nBits to i8*
  call void @llvm.lifetime.end(i64 4, i8* %37) #1
  ret i32 %33
}

; Function Attrs: nounwind readnone
declare i32 @abs(i32) #5

; Function Attrs: nounwind uwtable
define void @quantize_xrpow(double* %xr, i32* %ix, %struct.gr_info* %cod_info) #0 {
entry:
  %xr.addr = alloca double*, align 8
  %ix.addr = alloca i32*, align 8
  %cod_info.addr = alloca %struct.gr_info*, align 8
  %istep = alloca double, align 8
  %j = alloca i32, align 4
  %x1 = alloca double, align 8
  %x2 = alloca double, align 8
  %x3 = alloca double, align 8
  %x4 = alloca double, align 8
  %x5 = alloca double, align 8
  %x6 = alloca double, align 8
  %x7 = alloca double, align 8
  %x8 = alloca double, align 8
  %rx1 = alloca i32, align 4
  %rx2 = alloca i32, align 4
  %rx3 = alloca i32, align 4
  %rx4 = alloca i32, align 4
  %rx5 = alloca i32, align 4
  %rx6 = alloca i32, align 4
  %rx7 = alloca i32, align 4
  %rx8 = alloca i32, align 4
  store double* %xr, double** %xr.addr, align 8, !tbaa !1
  store i32* %ix, i32** %ix.addr, align 8, !tbaa !1
  store %struct.gr_info* %cod_info, %struct.gr_info** %cod_info.addr, align 8, !tbaa !1
  %0 = bitcast double* %istep to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #1
  %1 = load %struct.gr_info*, %struct.gr_info** %cod_info.addr, align 8, !tbaa !1
  %global_gain = getelementptr inbounds %struct.gr_info, %struct.gr_info* %1, i32 0, i32 3
  %2 = load i32, i32* %global_gain, align 4, !tbaa !28
  %idxprom = zext i32 %2 to i64
  %arrayidx = getelementptr inbounds [256 x double], [256 x double]* @ipow20, i32 0, i64 %idxprom
  %3 = load double, double* %arrayidx, align 8, !tbaa !16
  store double %3, double* %istep, align 8, !tbaa !16
  %4 = bitcast i32* %j to i8*
  call void @llvm.lifetime.start(i64 4, i8* %4) #1
  store i32 72, i32* %j, align 4, !tbaa !12
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %5 = load i32, i32* %j, align 4, !tbaa !12
  %cmp = icmp sgt i32 %5, 0
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %6 = bitcast double* %x1 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %6) #1
  %7 = bitcast double* %x2 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %7) #1
  %8 = bitcast double* %x3 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %8) #1
  %9 = bitcast double* %x4 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %9) #1
  %10 = bitcast double* %x5 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %10) #1
  %11 = bitcast double* %x6 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %11) #1
  %12 = bitcast double* %x7 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %12) #1
  %13 = bitcast double* %x8 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %13) #1
  %14 = bitcast i32* %rx1 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %14) #1
  %15 = bitcast i32* %rx2 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %15) #1
  %16 = bitcast i32* %rx3 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %16) #1
  %17 = bitcast i32* %rx4 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %17) #1
  %18 = bitcast i32* %rx5 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %18) #1
  %19 = bitcast i32* %rx6 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %19) #1
  %20 = bitcast i32* %rx7 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %20) #1
  %21 = bitcast i32* %rx8 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %21) #1
  %22 = load double*, double** %xr.addr, align 8, !tbaa !1
  %incdec.ptr = getelementptr inbounds double, double* %22, i32 1
  store double* %incdec.ptr, double** %xr.addr, align 8, !tbaa !1
  %23 = load double, double* %22, align 8, !tbaa !16
  %24 = load double, double* %istep, align 8, !tbaa !16
  %mul = fmul double %23, %24
  store double %mul, double* %x1, align 8, !tbaa !16
  %25 = load double*, double** %xr.addr, align 8, !tbaa !1
  %incdec.ptr1 = getelementptr inbounds double, double* %25, i32 1
  store double* %incdec.ptr1, double** %xr.addr, align 8, !tbaa !1
  %26 = load double, double* %25, align 8, !tbaa !16
  %27 = load double, double* %istep, align 8, !tbaa !16
  %mul2 = fmul double %26, %27
  store double %mul2, double* %x2, align 8, !tbaa !16
  %28 = load double, double* %x1, align 8, !tbaa !16
  %conv = fptosi double %28 to i32
  store i32 %conv, i32* %rx1, align 4, !tbaa !12
  %29 = load double*, double** %xr.addr, align 8, !tbaa !1
  %incdec.ptr3 = getelementptr inbounds double, double* %29, i32 1
  store double* %incdec.ptr3, double** %xr.addr, align 8, !tbaa !1
  %30 = load double, double* %29, align 8, !tbaa !16
  %31 = load double, double* %istep, align 8, !tbaa !16
  %mul4 = fmul double %30, %31
  store double %mul4, double* %x3, align 8, !tbaa !16
  %32 = load double, double* %x2, align 8, !tbaa !16
  %conv5 = fptosi double %32 to i32
  store i32 %conv5, i32* %rx2, align 4, !tbaa !12
  %33 = load double*, double** %xr.addr, align 8, !tbaa !1
  %incdec.ptr6 = getelementptr inbounds double, double* %33, i32 1
  store double* %incdec.ptr6, double** %xr.addr, align 8, !tbaa !1
  %34 = load double, double* %33, align 8, !tbaa !16
  %35 = load double, double* %istep, align 8, !tbaa !16
  %mul7 = fmul double %34, %35
  store double %mul7, double* %x4, align 8, !tbaa !16
  %36 = load double, double* %x3, align 8, !tbaa !16
  %conv8 = fptosi double %36 to i32
  store i32 %conv8, i32* %rx3, align 4, !tbaa !12
  %37 = load double*, double** %xr.addr, align 8, !tbaa !1
  %incdec.ptr9 = getelementptr inbounds double, double* %37, i32 1
  store double* %incdec.ptr9, double** %xr.addr, align 8, !tbaa !1
  %38 = load double, double* %37, align 8, !tbaa !16
  %39 = load double, double* %istep, align 8, !tbaa !16
  %mul10 = fmul double %38, %39
  store double %mul10, double* %x5, align 8, !tbaa !16
  %40 = load double, double* %x4, align 8, !tbaa !16
  %conv11 = fptosi double %40 to i32
  store i32 %conv11, i32* %rx4, align 4, !tbaa !12
  %41 = load double*, double** %xr.addr, align 8, !tbaa !1
  %incdec.ptr12 = getelementptr inbounds double, double* %41, i32 1
  store double* %incdec.ptr12, double** %xr.addr, align 8, !tbaa !1
  %42 = load double, double* %41, align 8, !tbaa !16
  %43 = load double, double* %istep, align 8, !tbaa !16
  %mul13 = fmul double %42, %43
  store double %mul13, double* %x6, align 8, !tbaa !16
  %44 = load double, double* %x5, align 8, !tbaa !16
  %conv14 = fptosi double %44 to i32
  store i32 %conv14, i32* %rx5, align 4, !tbaa !12
  %45 = load double*, double** %xr.addr, align 8, !tbaa !1
  %incdec.ptr15 = getelementptr inbounds double, double* %45, i32 1
  store double* %incdec.ptr15, double** %xr.addr, align 8, !tbaa !1
  %46 = load double, double* %45, align 8, !tbaa !16
  %47 = load double, double* %istep, align 8, !tbaa !16
  %mul16 = fmul double %46, %47
  store double %mul16, double* %x7, align 8, !tbaa !16
  %48 = load double, double* %x6, align 8, !tbaa !16
  %conv17 = fptosi double %48 to i32
  store i32 %conv17, i32* %rx6, align 4, !tbaa !12
  %49 = load double*, double** %xr.addr, align 8, !tbaa !1
  %incdec.ptr18 = getelementptr inbounds double, double* %49, i32 1
  store double* %incdec.ptr18, double** %xr.addr, align 8, !tbaa !1
  %50 = load double, double* %49, align 8, !tbaa !16
  %51 = load double, double* %istep, align 8, !tbaa !16
  %mul19 = fmul double %50, %51
  store double %mul19, double* %x8, align 8, !tbaa !16
  %52 = load double, double* %x7, align 8, !tbaa !16
  %conv20 = fptosi double %52 to i32
  store i32 %conv20, i32* %rx7, align 4, !tbaa !12
  %53 = load i32, i32* %rx1, align 4, !tbaa !12
  %idxprom21 = sext i32 %53 to i64
  %arrayidx22 = getelementptr inbounds [8208 x double], [8208 x double]* @adj43, i32 0, i64 %idxprom21
  %54 = load double, double* %arrayidx22, align 8, !tbaa !16
  %55 = load double, double* %x1, align 8, !tbaa !16
  %add = fadd double %55, %54
  store double %add, double* %x1, align 8, !tbaa !16
  %56 = load double, double* %x8, align 8, !tbaa !16
  %conv23 = fptosi double %56 to i32
  store i32 %conv23, i32* %rx8, align 4, !tbaa !12
  %57 = load i32, i32* %rx2, align 4, !tbaa !12
  %idxprom24 = sext i32 %57 to i64
  %arrayidx25 = getelementptr inbounds [8208 x double], [8208 x double]* @adj43, i32 0, i64 %idxprom24
  %58 = load double, double* %arrayidx25, align 8, !tbaa !16
  %59 = load double, double* %x2, align 8, !tbaa !16
  %add26 = fadd double %59, %58
  store double %add26, double* %x2, align 8, !tbaa !16
  %60 = load double, double* %x1, align 8, !tbaa !16
  %conv27 = fptosi double %60 to i32
  %61 = load i32*, i32** %ix.addr, align 8, !tbaa !1
  %incdec.ptr28 = getelementptr inbounds i32, i32* %61, i32 1
  store i32* %incdec.ptr28, i32** %ix.addr, align 8, !tbaa !1
  store i32 %conv27, i32* %61, align 4, !tbaa !12
  %62 = load i32, i32* %rx3, align 4, !tbaa !12
  %idxprom29 = sext i32 %62 to i64
  %arrayidx30 = getelementptr inbounds [8208 x double], [8208 x double]* @adj43, i32 0, i64 %idxprom29
  %63 = load double, double* %arrayidx30, align 8, !tbaa !16
  %64 = load double, double* %x3, align 8, !tbaa !16
  %add31 = fadd double %64, %63
  store double %add31, double* %x3, align 8, !tbaa !16
  %65 = load double, double* %x2, align 8, !tbaa !16
  %conv32 = fptosi double %65 to i32
  %66 = load i32*, i32** %ix.addr, align 8, !tbaa !1
  %incdec.ptr33 = getelementptr inbounds i32, i32* %66, i32 1
  store i32* %incdec.ptr33, i32** %ix.addr, align 8, !tbaa !1
  store i32 %conv32, i32* %66, align 4, !tbaa !12
  %67 = load i32, i32* %rx4, align 4, !tbaa !12
  %idxprom34 = sext i32 %67 to i64
  %arrayidx35 = getelementptr inbounds [8208 x double], [8208 x double]* @adj43, i32 0, i64 %idxprom34
  %68 = load double, double* %arrayidx35, align 8, !tbaa !16
  %69 = load double, double* %x4, align 8, !tbaa !16
  %add36 = fadd double %69, %68
  store double %add36, double* %x4, align 8, !tbaa !16
  %70 = load double, double* %x3, align 8, !tbaa !16
  %conv37 = fptosi double %70 to i32
  %71 = load i32*, i32** %ix.addr, align 8, !tbaa !1
  %incdec.ptr38 = getelementptr inbounds i32, i32* %71, i32 1
  store i32* %incdec.ptr38, i32** %ix.addr, align 8, !tbaa !1
  store i32 %conv37, i32* %71, align 4, !tbaa !12
  %72 = load i32, i32* %rx5, align 4, !tbaa !12
  %idxprom39 = sext i32 %72 to i64
  %arrayidx40 = getelementptr inbounds [8208 x double], [8208 x double]* @adj43, i32 0, i64 %idxprom39
  %73 = load double, double* %arrayidx40, align 8, !tbaa !16
  %74 = load double, double* %x5, align 8, !tbaa !16
  %add41 = fadd double %74, %73
  store double %add41, double* %x5, align 8, !tbaa !16
  %75 = load double, double* %x4, align 8, !tbaa !16
  %conv42 = fptosi double %75 to i32
  %76 = load i32*, i32** %ix.addr, align 8, !tbaa !1
  %incdec.ptr43 = getelementptr inbounds i32, i32* %76, i32 1
  store i32* %incdec.ptr43, i32** %ix.addr, align 8, !tbaa !1
  store i32 %conv42, i32* %76, align 4, !tbaa !12
  %77 = load i32, i32* %rx6, align 4, !tbaa !12
  %idxprom44 = sext i32 %77 to i64
  %arrayidx45 = getelementptr inbounds [8208 x double], [8208 x double]* @adj43, i32 0, i64 %idxprom44
  %78 = load double, double* %arrayidx45, align 8, !tbaa !16
  %79 = load double, double* %x6, align 8, !tbaa !16
  %add46 = fadd double %79, %78
  store double %add46, double* %x6, align 8, !tbaa !16
  %80 = load double, double* %x5, align 8, !tbaa !16
  %conv47 = fptosi double %80 to i32
  %81 = load i32*, i32** %ix.addr, align 8, !tbaa !1
  %incdec.ptr48 = getelementptr inbounds i32, i32* %81, i32 1
  store i32* %incdec.ptr48, i32** %ix.addr, align 8, !tbaa !1
  store i32 %conv47, i32* %81, align 4, !tbaa !12
  %82 = load i32, i32* %rx7, align 4, !tbaa !12
  %idxprom49 = sext i32 %82 to i64
  %arrayidx50 = getelementptr inbounds [8208 x double], [8208 x double]* @adj43, i32 0, i64 %idxprom49
  %83 = load double, double* %arrayidx50, align 8, !tbaa !16
  %84 = load double, double* %x7, align 8, !tbaa !16
  %add51 = fadd double %84, %83
  store double %add51, double* %x7, align 8, !tbaa !16
  %85 = load double, double* %x6, align 8, !tbaa !16
  %conv52 = fptosi double %85 to i32
  %86 = load i32*, i32** %ix.addr, align 8, !tbaa !1
  %incdec.ptr53 = getelementptr inbounds i32, i32* %86, i32 1
  store i32* %incdec.ptr53, i32** %ix.addr, align 8, !tbaa !1
  store i32 %conv52, i32* %86, align 4, !tbaa !12
  %87 = load i32, i32* %rx8, align 4, !tbaa !12
  %idxprom54 = sext i32 %87 to i64
  %arrayidx55 = getelementptr inbounds [8208 x double], [8208 x double]* @adj43, i32 0, i64 %idxprom54
  %88 = load double, double* %arrayidx55, align 8, !tbaa !16
  %89 = load double, double* %x8, align 8, !tbaa !16
  %add56 = fadd double %89, %88
  store double %add56, double* %x8, align 8, !tbaa !16
  %90 = load double, double* %x7, align 8, !tbaa !16
  %conv57 = fptosi double %90 to i32
  %91 = load i32*, i32** %ix.addr, align 8, !tbaa !1
  %incdec.ptr58 = getelementptr inbounds i32, i32* %91, i32 1
  store i32* %incdec.ptr58, i32** %ix.addr, align 8, !tbaa !1
  store i32 %conv57, i32* %91, align 4, !tbaa !12
  %92 = load double, double* %x8, align 8, !tbaa !16
  %conv59 = fptosi double %92 to i32
  %93 = load i32*, i32** %ix.addr, align 8, !tbaa !1
  %incdec.ptr60 = getelementptr inbounds i32, i32* %93, i32 1
  store i32* %incdec.ptr60, i32** %ix.addr, align 8, !tbaa !1
  store i32 %conv59, i32* %93, align 4, !tbaa !12
  %94 = bitcast i32* %rx8 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %94) #1
  %95 = bitcast i32* %rx7 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %95) #1
  %96 = bitcast i32* %rx6 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %96) #1
  %97 = bitcast i32* %rx5 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %97) #1
  %98 = bitcast i32* %rx4 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %98) #1
  %99 = bitcast i32* %rx3 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %99) #1
  %100 = bitcast i32* %rx2 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %100) #1
  %101 = bitcast i32* %rx1 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %101) #1
  %102 = bitcast double* %x8 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %102) #1
  %103 = bitcast double* %x7 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %103) #1
  %104 = bitcast double* %x6 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %104) #1
  %105 = bitcast double* %x5 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %105) #1
  %106 = bitcast double* %x4 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %106) #1
  %107 = bitcast double* %x3 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %107) #1
  %108 = bitcast double* %x2 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %108) #1
  %109 = bitcast double* %x1 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %109) #1
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %110 = load i32, i32* %j, align 4, !tbaa !12
  %dec = add nsw i32 %110, -1
  store i32 %dec, i32* %j, align 4, !tbaa !12
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %111 = bitcast i32* %j to i8*
  call void @llvm.lifetime.end(i64 4, i8* %111) #1
  %112 = bitcast double* %istep to i8*
  call void @llvm.lifetime.end(i64 8, i8* %112) #1
  ret void
}

; Function Attrs: nounwind uwtable
define void @quantize_xrpow_ISO(double* %xr, i32* %ix, %struct.gr_info* %cod_info) #0 {
entry:
  %xr.addr = alloca double*, align 8
  %ix.addr = alloca i32*, align 8
  %cod_info.addr = alloca %struct.gr_info*, align 8
  %istep = alloca double, align 8
  %j = alloca i32, align 4
  %compareval0 = alloca double, align 8
  store double* %xr, double** %xr.addr, align 8, !tbaa !1
  store i32* %ix, i32** %ix.addr, align 8, !tbaa !1
  store %struct.gr_info* %cod_info, %struct.gr_info** %cod_info.addr, align 8, !tbaa !1
  %0 = bitcast double* %istep to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #1
  %1 = load %struct.gr_info*, %struct.gr_info** %cod_info.addr, align 8, !tbaa !1
  %global_gain = getelementptr inbounds %struct.gr_info, %struct.gr_info* %1, i32 0, i32 3
  %2 = load i32, i32* %global_gain, align 4, !tbaa !28
  %idxprom = zext i32 %2 to i64
  %arrayidx = getelementptr inbounds [256 x double], [256 x double]* @ipow20, i32 0, i64 %idxprom
  %3 = load double, double* %arrayidx, align 8, !tbaa !16
  store double %3, double* %istep, align 8, !tbaa !16
  %4 = bitcast i32* %j to i8*
  call void @llvm.lifetime.start(i64 4, i8* %4) #1
  %5 = bitcast double* %compareval0 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %5) #1
  %6 = load double, double* %istep, align 8, !tbaa !16
  %div = fdiv double 5.946000e-01, %6
  store double %div, double* %compareval0, align 8, !tbaa !16
  store i32 576, i32* %j, align 4, !tbaa !12
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %7 = load i32, i32* %j, align 4, !tbaa !12
  %cmp = icmp sgt i32 %7, 0
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %8 = load double, double* %compareval0, align 8, !tbaa !16
  %9 = load double*, double** %xr.addr, align 8, !tbaa !1
  %10 = load double, double* %9, align 8, !tbaa !16
  %cmp1 = fcmp ogt double %8, %10
  br i1 %cmp1, label %if.then, label %if.else

if.then:                                          ; preds = %for.body
  %11 = load i32*, i32** %ix.addr, align 8, !tbaa !1
  %incdec.ptr = getelementptr inbounds i32, i32* %11, i32 1
  store i32* %incdec.ptr, i32** %ix.addr, align 8, !tbaa !1
  store i32 0, i32* %11, align 4, !tbaa !12
  %12 = load double*, double** %xr.addr, align 8, !tbaa !1
  %incdec.ptr2 = getelementptr inbounds double, double* %12, i32 1
  store double* %incdec.ptr2, double** %xr.addr, align 8, !tbaa !1
  br label %if.end

if.else:                                          ; preds = %for.body
  %13 = load double, double* %istep, align 8, !tbaa !16
  %14 = load double*, double** %xr.addr, align 8, !tbaa !1
  %incdec.ptr3 = getelementptr inbounds double, double* %14, i32 1
  store double* %incdec.ptr3, double** %xr.addr, align 8, !tbaa !1
  %15 = load double, double* %14, align 8, !tbaa !16
  %mul = fmul double %13, %15
  %add = fadd double %mul, 4.054000e-01
  %conv = fptosi double %add to i32
  %16 = load i32*, i32** %ix.addr, align 8, !tbaa !1
  %incdec.ptr4 = getelementptr inbounds i32, i32* %16, i32 1
  store i32* %incdec.ptr4, i32** %ix.addr, align 8, !tbaa !1
  store i32 %conv, i32* %16, align 4, !tbaa !12
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  br label %for.inc

for.inc:                                          ; preds = %if.end
  %17 = load i32, i32* %j, align 4, !tbaa !12
  %dec = add nsw i32 %17, -1
  store i32 %dec, i32* %j, align 4, !tbaa !12
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %18 = bitcast double* %compareval0 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %18) #1
  %19 = bitcast i32* %j to i8*
  call void @llvm.lifetime.end(i64 4, i8* %19) #1
  %20 = bitcast double* %istep to i8*
  call void @llvm.lifetime.end(i64 8, i8* %20) #1
  ret void
}

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { nounwind "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { noreturn nounwind "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #5 = { nounwind readnone "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #6 = { noreturn nounwind }
attributes #7 = { nounwind readnone }

!llvm.ident = !{!0}

!0 = !{!"clang version 3.7.0 (tags/RELEASE_370/final)"}
!1 = !{!2, !2, i64 0}
!2 = !{!"any pointer", !3, i64 0}
!3 = !{!"omnipotent char", !4, i64 0}
!4 = !{!"Simple C/C++ TBAA"}
!5 = !{!6, !7, i64 8}
!6 = !{!"", !7, i64 0, !7, i64 4, !7, i64 8, !3, i64 12, !3, i64 48}
!7 = !{!"int", !3, i64 0}
!8 = !{!9, !10, i64 168}
!9 = !{!"", !10, i64 0, !7, i64 8, !7, i64 12, !7, i64 16, !7, i64 20, !7, i64 24, !7, i64 28, !7, i64 32, !7, i64 36, !7, i64 40, !7, i64 44, !7, i64 48, !7, i64 52, !7, i64 56, !7, i64 60, !7, i64 64, !7, i64 68, !7, i64 72, !7, i64 76, !7, i64 80, !7, i64 84, !7, i64 88, !7, i64 92, !7, i64 96, !7, i64 100, !7, i64 104, !7, i64 108, !7, i64 112, !7, i64 116, !3, i64 120, !7, i64 124, !2, i64 128, !2, i64 136, !7, i64 144, !7, i64 148, !11, i64 152, !7, i64 156, !7, i64 160, !7, i64 164, !10, i64 168, !10, i64 176, !7, i64 184, !7, i64 188, !7, i64 192, !7, i64 196, !7, i64 200, !7, i64 204, !7, i64 208, !7, i64 212, !11, i64 216, !7, i64 220, !7, i64 224, !7, i64 228, !11, i64 232, !11, i64 236, !11, i64 240, !11, i64 244, !7, i64 248, !7, i64 252, !7, i64 256, !7, i64 260, !7, i64 264, !7, i64 268, !7, i64 272, !7, i64 276}
!10 = !{!"long", !3, i64 0}
!11 = !{!"float", !3, i64 0}
!12 = !{!7, !7, i64 0}
!13 = !{!9, !7, i64 224}
!14 = !{!9, !7, i64 192}
!15 = !{!6, !7, i64 0}
!16 = !{!17, !17, i64 0}
!17 = !{!"double", !3, i64 0}
!18 = !{!9, !7, i64 228}
!19 = !{!9, !7, i64 200}
!20 = !{!9, !7, i64 204}
!21 = !{!22, !7, i64 24}
!22 = !{!"", !7, i64 0, !7, i64 4, !7, i64 8, !7, i64 12, !7, i64 16, !7, i64 20, !7, i64 24, !7, i64 28, !3, i64 32, !3, i64 44, !7, i64 56, !7, i64 60, !7, i64 64, !7, i64 68, !7, i64 72, !7, i64 76, !7, i64 80, !7, i64 84, !7, i64 88, !2, i64 96, !3, i64 104}
!23 = !{!22, !7, i64 80}
!24 = !{!22, !7, i64 84}
!25 = !{!9, !7, i64 16}
!26 = !{!9, !7, i64 148}
!27 = !{!11, !11, i64 0}
!28 = !{!22, !7, i64 12}
!29 = !{!22, !7, i64 64}
!30 = !{!22, !7, i64 76}
!31 = !{!22, !7, i64 16}
!32 = !{!22, !2, i64 96}
!33 = !{!9, !7, i64 144}
!34 = !{!3, !3, i64 0}
