; ModuleID = './MultiSource.Benchmarks.MiBench/15.consumer-lame.quantize.bc'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.scalefac_struct = type { [23 x i32], [14 x i32] }
%struct.lame_global_flags = type { i64, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i8*, i8*, i32, i32, float, i32, i32, i32, i64, i64, i32, i32, i32, i32, i32, i32, i32, i32, float, i32, i32, i32, float, float, float, float, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.III_psy_ratio = type { %struct.III_psy_xmin, %struct.III_psy_xmin }
%struct.III_psy_xmin = type { [22 x double], [13 x [3 x double]] }
%struct.III_side_info_t = type { i32, i32, i32, [2 x [4 x i32]], [2 x %struct.anon] }
%struct.anon = type { [2 x %struct.gr_info_ss] }
%struct.gr_info_ss = type { %struct.gr_info }
%struct.gr_info = type { i32, i32, i32, i32, i32, i32, i32, i32, [3 x i32], [3 x i32], i32, i32, i32, i32, i32, i32, i32, i32, i32, i32*, [4 x i32] }
%struct.III_scalefac_t = type { [22 x i32], [13 x [3 x i32]] }

@bitrate_table = external global [2 x [15 x i32]], align 16
@convert_mdct = external global i32, align 4
@reduce_sidechannel = external global i32, align 4
@masking_lower = external global float, align 4
@nr_of_sfb_block = external global [6 x [3 x [4 x i32]]], align 16
@outer_loop.OldValue = internal global [2 x i32] [i32 180, i32 180], align 4
@pretab = external global [21 x i32], align 16
@pow20 = external global [256 x double], align 16
@scalefac_band = external global %struct.scalefac_struct, align 4
@pow43 = external global [8208 x double], align 16

; Function Attrs: nounwind uwtable
define void @iteration_loop(%struct.lame_global_flags* %gfp, [2 x double]* %pe, double* %ms_ener_ratio, [2 x [576 x double]]* %xr, [2 x %struct.III_psy_ratio]* %ratio, %struct.III_side_info_t* %l3_side, [2 x [576 x i32]]* %l3_enc, [2 x %struct.III_scalefac_t]* %scalefac) #0 {
entry:
  %gfp.addr = alloca %struct.lame_global_flags*, align 8
  %pe.addr = alloca [2 x double]*, align 8
  %ms_ener_ratio.addr = alloca double*, align 8
  %xr.addr = alloca [2 x [576 x double]]*, align 8
  %ratio.addr = alloca [2 x %struct.III_psy_ratio]*, align 8
  %l3_side.addr = alloca %struct.III_side_info_t*, align 8
  %l3_enc.addr = alloca [2 x [576 x i32]]*, align 8
  %scalefac.addr = alloca [2 x %struct.III_scalefac_t]*, align 8
  %xfsf = alloca [4 x [21 x double]], align 16
  %noise = alloca [4 x double], align 16
  %l3_xmin = alloca [2 x %struct.III_psy_xmin], align 16
  %cod_info = alloca %struct.gr_info*, align 8
  %bitsPerFrame = alloca i32, align 4
  %mean_bits = alloca i32, align 4
  %ch = alloca i32, align 4
  %gr = alloca i32, align 4
  %i = alloca i32, align 4
  %bit_rate = alloca i32, align 4
  %targ_bits = alloca [2 x i32], align 4
  store %struct.lame_global_flags* %gfp, %struct.lame_global_flags** %gfp.addr, align 8, !tbaa !1
  store [2 x double]* %pe, [2 x double]** %pe.addr, align 8, !tbaa !1
  store double* %ms_ener_ratio, double** %ms_ener_ratio.addr, align 8, !tbaa !1
  store [2 x [576 x double]]* %xr, [2 x [576 x double]]** %xr.addr, align 8, !tbaa !1
  store [2 x %struct.III_psy_ratio]* %ratio, [2 x %struct.III_psy_ratio]** %ratio.addr, align 8, !tbaa !1
  store %struct.III_side_info_t* %l3_side, %struct.III_side_info_t** %l3_side.addr, align 8, !tbaa !1
  store [2 x [576 x i32]]* %l3_enc, [2 x [576 x i32]]** %l3_enc.addr, align 8, !tbaa !1
  store [2 x %struct.III_scalefac_t]* %scalefac, [2 x %struct.III_scalefac_t]** %scalefac.addr, align 8, !tbaa !1
  %0 = bitcast [4 x [21 x double]]* %xfsf to i8*
  call void @llvm.lifetime.start(i64 672, i8* %0) #1
  %1 = bitcast [4 x double]* %noise to i8*
  call void @llvm.lifetime.start(i64 32, i8* %1) #1
  %2 = bitcast [2 x %struct.III_psy_xmin]* %l3_xmin to i8*
  call void @llvm.lifetime.start(i64 976, i8* %2) #1
  %3 = bitcast %struct.gr_info** %cod_info to i8*
  call void @llvm.lifetime.start(i64 8, i8* %3) #1
  %4 = bitcast i32* %bitsPerFrame to i8*
  call void @llvm.lifetime.start(i64 4, i8* %4) #1
  %5 = bitcast i32* %mean_bits to i8*
  call void @llvm.lifetime.start(i64 4, i8* %5) #1
  %6 = bitcast i32* %ch to i8*
  call void @llvm.lifetime.start(i64 4, i8* %6) #1
  %7 = bitcast i32* %gr to i8*
  call void @llvm.lifetime.start(i64 4, i8* %7) #1
  %8 = bitcast i32* %i to i8*
  call void @llvm.lifetime.start(i64 4, i8* %8) #1
  %9 = bitcast i32* %bit_rate to i8*
  call void @llvm.lifetime.start(i64 4, i8* %9) #1
  %10 = load %struct.lame_global_flags*, %struct.lame_global_flags** %gfp.addr, align 8, !tbaa !1
  %11 = load %struct.III_side_info_t*, %struct.III_side_info_t** %l3_side.addr, align 8, !tbaa !1
  %12 = load [2 x [576 x i32]]*, [2 x [576 x i32]]** %l3_enc.addr, align 8, !tbaa !1
  call void @iteration_init(%struct.lame_global_flags* %10, %struct.III_side_info_t* %11, [2 x [576 x i32]]* %12)
  %13 = load %struct.lame_global_flags*, %struct.lame_global_flags** %gfp.addr, align 8, !tbaa !1
  %bitrate_index = getelementptr inbounds %struct.lame_global_flags, %struct.lame_global_flags* %13, i32 0, i32 50
  %14 = load i32, i32* %bitrate_index, align 4, !tbaa !5
  %idxprom = sext i32 %14 to i64
  %15 = load %struct.lame_global_flags*, %struct.lame_global_flags** %gfp.addr, align 8, !tbaa !1
  %version = getelementptr inbounds %struct.lame_global_flags, %struct.lame_global_flags* %15, i32 0, i32 43
  %16 = load i32, i32* %version, align 4, !tbaa !10
  %idxprom1 = sext i32 %16 to i64
  %arrayidx = getelementptr inbounds [2 x [15 x i32]], [2 x [15 x i32]]* @bitrate_table, i32 0, i64 %idxprom1
  %arrayidx2 = getelementptr inbounds [15 x i32], [15 x i32]* %arrayidx, i32 0, i64 %idxprom
  %17 = load i32, i32* %arrayidx2, align 4, !tbaa !11
  store i32 %17, i32* %bit_rate, align 4, !tbaa !11
  %18 = load %struct.lame_global_flags*, %struct.lame_global_flags** %gfp.addr, align 8, !tbaa !1
  call void @getframebits(%struct.lame_global_flags* %18, i32* %bitsPerFrame, i32* %mean_bits)
  %19 = load %struct.lame_global_flags*, %struct.lame_global_flags** %gfp.addr, align 8, !tbaa !1
  %20 = load %struct.III_side_info_t*, %struct.III_side_info_t** %l3_side.addr, align 8, !tbaa !1
  %21 = load i32, i32* %mean_bits, align 4, !tbaa !11
  %22 = load i32, i32* %bitsPerFrame, align 4, !tbaa !11
  %call = call i32 @ResvFrameBegin(%struct.lame_global_flags* %19, %struct.III_side_info_t* %20, i32 %21, i32 %22)
  store i32 0, i32* %gr, align 4, !tbaa !11
  br label %for.cond

for.cond:                                         ; preds = %for.inc.107, %entry
  %23 = load i32, i32* %gr, align 4, !tbaa !11
  %24 = load %struct.lame_global_flags*, %struct.lame_global_flags** %gfp.addr, align 8, !tbaa !1
  %mode_gr = getelementptr inbounds %struct.lame_global_flags, %struct.lame_global_flags* %24, i32 0, i32 45
  %25 = load i32, i32* %mode_gr, align 4, !tbaa !12
  %cmp = icmp slt i32 %23, %25
  br i1 %cmp, label %for.body, label %for.end.109

for.body:                                         ; preds = %for.cond
  %26 = bitcast [2 x i32]* %targ_bits to i8*
  call void @llvm.lifetime.start(i64 8, i8* %26) #1
  %27 = load i32, i32* @convert_mdct, align 4, !tbaa !11
  %tobool = icmp ne i32 %27, 0
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %for.body
  %28 = load i32, i32* %gr, align 4, !tbaa !11
  %idxprom3 = sext i32 %28 to i64
  %29 = load [2 x [576 x double]]*, [2 x [576 x double]]** %xr.addr, align 8, !tbaa !1
  %arrayidx4 = getelementptr inbounds [2 x [576 x double]], [2 x [576 x double]]* %29, i64 %idxprom3
  %arraydecay = getelementptr inbounds [2 x [576 x double]], [2 x [576 x double]]* %arrayidx4, i32 0, i32 0
  %30 = load i32, i32* %gr, align 4, !tbaa !11
  %idxprom5 = sext i32 %30 to i64
  %31 = load [2 x [576 x double]]*, [2 x [576 x double]]** %xr.addr, align 8, !tbaa !1
  %arrayidx6 = getelementptr inbounds [2 x [576 x double]], [2 x [576 x double]]* %31, i64 %idxprom5
  %arraydecay7 = getelementptr inbounds [2 x [576 x double]], [2 x [576 x double]]* %arrayidx6, i32 0, i32 0
  call void @ms_convert([576 x double]* %arraydecay, [576 x double]* %arraydecay7)
  br label %if.end

if.end:                                           ; preds = %if.then, %for.body
  %32 = load %struct.lame_global_flags*, %struct.lame_global_flags** %gfp.addr, align 8, !tbaa !1
  %33 = load [2 x double]*, [2 x double]** %pe.addr, align 8, !tbaa !1
  %34 = load %struct.III_side_info_t*, %struct.III_side_info_t** %l3_side.addr, align 8, !tbaa !1
  %arraydecay8 = getelementptr inbounds [2 x i32], [2 x i32]* %targ_bits, i32 0, i32 0
  %35 = load i32, i32* %mean_bits, align 4, !tbaa !11
  %36 = load i32, i32* %gr, align 4, !tbaa !11
  call void @on_pe(%struct.lame_global_flags* %32, [2 x double]* %33, %struct.III_side_info_t* %34, i32* %arraydecay8, i32 %35, i32 %36)
  %37 = load i32, i32* @reduce_sidechannel, align 4, !tbaa !11
  %tobool9 = icmp ne i32 %37, 0
  br i1 %tobool9, label %if.then.10, label %if.end.14

if.then.10:                                       ; preds = %if.end
  %arraydecay11 = getelementptr inbounds [2 x i32], [2 x i32]* %targ_bits, i32 0, i32 0
  %38 = load i32, i32* %gr, align 4, !tbaa !11
  %idxprom12 = sext i32 %38 to i64
  %39 = load double*, double** %ms_ener_ratio.addr, align 8, !tbaa !1
  %arrayidx13 = getelementptr inbounds double, double* %39, i64 %idxprom12
  %40 = load double, double* %arrayidx13, align 8, !tbaa !13
  %41 = load i32, i32* %mean_bits, align 4, !tbaa !11
  call void @reduce_side(i32* %arraydecay11, double %40, i32 %41)
  br label %if.end.14

if.end.14:                                        ; preds = %if.then.10, %if.end
  store i32 0, i32* %ch, align 4, !tbaa !11
  br label %for.cond.15

for.cond.15:                                      ; preds = %for.inc.104, %if.end.14
  %42 = load i32, i32* %ch, align 4, !tbaa !11
  %43 = load %struct.lame_global_flags*, %struct.lame_global_flags** %gfp.addr, align 8, !tbaa !1
  %stereo = getelementptr inbounds %struct.lame_global_flags, %struct.lame_global_flags* %43, i32 0, i32 46
  %44 = load i32, i32* %stereo, align 4, !tbaa !15
  %cmp16 = icmp slt i32 %42, %44
  br i1 %cmp16, label %for.body.17, label %for.end.106

for.body.17:                                      ; preds = %for.cond.15
  %45 = load i32, i32* %ch, align 4, !tbaa !11
  %idxprom18 = sext i32 %45 to i64
  %46 = load i32, i32* %gr, align 4, !tbaa !11
  %idxprom19 = sext i32 %46 to i64
  %47 = load %struct.III_side_info_t*, %struct.III_side_info_t** %l3_side.addr, align 8, !tbaa !1
  %gr20 = getelementptr inbounds %struct.III_side_info_t, %struct.III_side_info_t* %47, i32 0, i32 4
  %arrayidx21 = getelementptr inbounds [2 x %struct.anon], [2 x %struct.anon]* %gr20, i32 0, i64 %idxprom19
  %ch22 = getelementptr inbounds %struct.anon, %struct.anon* %arrayidx21, i32 0, i32 0
  %arrayidx23 = getelementptr inbounds [2 x %struct.gr_info_ss], [2 x %struct.gr_info_ss]* %ch22, i32 0, i64 %idxprom18
  %tt = getelementptr inbounds %struct.gr_info_ss, %struct.gr_info_ss* %arrayidx23, i32 0, i32 0
  store %struct.gr_info* %tt, %struct.gr_info** %cod_info, align 8, !tbaa !1
  %48 = load %struct.lame_global_flags*, %struct.lame_global_flags** %gfp.addr, align 8, !tbaa !1
  %49 = load i32, i32* %ch, align 4, !tbaa !11
  %idxprom24 = sext i32 %49 to i64
  %50 = load i32, i32* %gr, align 4, !tbaa !11
  %idxprom25 = sext i32 %50 to i64
  %51 = load [2 x [576 x double]]*, [2 x [576 x double]]** %xr.addr, align 8, !tbaa !1
  %arrayidx26 = getelementptr inbounds [2 x [576 x double]], [2 x [576 x double]]* %51, i64 %idxprom25
  %arrayidx27 = getelementptr inbounds [2 x [576 x double]], [2 x [576 x double]]* %arrayidx26, i32 0, i64 %idxprom24
  %arraydecay28 = getelementptr inbounds [576 x double], [576 x double]* %arrayidx27, i32 0, i32 0
  %52 = load %struct.gr_info*, %struct.gr_info** %cod_info, align 8, !tbaa !1
  %call29 = call i32 @init_outer_loop(%struct.lame_global_flags* %48, double* %arraydecay28, %struct.gr_info* %52)
  %tobool30 = icmp ne i32 %call29, 0
  br i1 %tobool30, label %if.else, label %if.then.31

if.then.31:                                       ; preds = %for.body.17
  %53 = load i32, i32* %ch, align 4, !tbaa !11
  %idxprom32 = sext i32 %53 to i64
  %54 = load i32, i32* %gr, align 4, !tbaa !11
  %idxprom33 = sext i32 %54 to i64
  %55 = load [2 x %struct.III_scalefac_t]*, [2 x %struct.III_scalefac_t]** %scalefac.addr, align 8, !tbaa !1
  %arrayidx34 = getelementptr inbounds [2 x %struct.III_scalefac_t], [2 x %struct.III_scalefac_t]* %55, i64 %idxprom33
  %arrayidx35 = getelementptr inbounds [2 x %struct.III_scalefac_t], [2 x %struct.III_scalefac_t]* %arrayidx34, i32 0, i64 %idxprom32
  %56 = bitcast %struct.III_scalefac_t* %arrayidx35 to i8*
  call void @llvm.memset.p0i8.i64(i8* %56, i8 0, i64 244, i32 4, i1 false)
  %57 = load i32, i32* %ch, align 4, !tbaa !11
  %idxprom36 = sext i32 %57 to i64
  %58 = load i32, i32* %gr, align 4, !tbaa !11
  %idxprom37 = sext i32 %58 to i64
  %59 = load [2 x [576 x i32]]*, [2 x [576 x i32]]** %l3_enc.addr, align 8, !tbaa !1
  %arrayidx38 = getelementptr inbounds [2 x [576 x i32]], [2 x [576 x i32]]* %59, i64 %idxprom37
  %arrayidx39 = getelementptr inbounds [2 x [576 x i32]], [2 x [576 x i32]]* %arrayidx38, i32 0, i64 %idxprom36
  %60 = bitcast [576 x i32]* %arrayidx39 to i8*
  call void @llvm.memset.p0i8.i64(i8* %60, i8 0, i64 2304, i32 4, i1 false)
  %arrayidx40 = getelementptr inbounds [4 x double], [4 x double]* %noise, i32 0, i64 3
  store double 0.000000e+00, double* %arrayidx40, align 8, !tbaa !13
  %arrayidx41 = getelementptr inbounds [4 x double], [4 x double]* %noise, i32 0, i64 2
  store double 0.000000e+00, double* %arrayidx41, align 8, !tbaa !13
  %arrayidx42 = getelementptr inbounds [4 x double], [4 x double]* %noise, i32 0, i64 1
  store double 0.000000e+00, double* %arrayidx42, align 8, !tbaa !13
  %arrayidx43 = getelementptr inbounds [4 x double], [4 x double]* %noise, i32 0, i64 0
  store double 0.000000e+00, double* %arrayidx43, align 8, !tbaa !13
  br label %if.end.76

if.else:                                          ; preds = %for.body.17
  %61 = load %struct.lame_global_flags*, %struct.lame_global_flags** %gfp.addr, align 8, !tbaa !1
  %62 = load i32, i32* %ch, align 4, !tbaa !11
  %idxprom44 = sext i32 %62 to i64
  %63 = load i32, i32* %gr, align 4, !tbaa !11
  %idxprom45 = sext i32 %63 to i64
  %64 = load [2 x [576 x double]]*, [2 x [576 x double]]** %xr.addr, align 8, !tbaa !1
  %arrayidx46 = getelementptr inbounds [2 x [576 x double]], [2 x [576 x double]]* %64, i64 %idxprom45
  %arrayidx47 = getelementptr inbounds [2 x [576 x double]], [2 x [576 x double]]* %arrayidx46, i32 0, i64 %idxprom44
  %arraydecay48 = getelementptr inbounds [576 x double], [576 x double]* %arrayidx47, i32 0, i32 0
  %65 = load i32, i32* %ch, align 4, !tbaa !11
  %idxprom49 = sext i32 %65 to i64
  %66 = load i32, i32* %gr, align 4, !tbaa !11
  %idxprom50 = sext i32 %66 to i64
  %67 = load [2 x %struct.III_psy_ratio]*, [2 x %struct.III_psy_ratio]** %ratio.addr, align 8, !tbaa !1
  %arrayidx51 = getelementptr inbounds [2 x %struct.III_psy_ratio], [2 x %struct.III_psy_ratio]* %67, i64 %idxprom50
  %arrayidx52 = getelementptr inbounds [2 x %struct.III_psy_ratio], [2 x %struct.III_psy_ratio]* %arrayidx51, i32 0, i64 %idxprom49
  %68 = load %struct.gr_info*, %struct.gr_info** %cod_info, align 8, !tbaa !1
  %69 = load i32, i32* %ch, align 4, !tbaa !11
  %idxprom53 = sext i32 %69 to i64
  %arrayidx54 = getelementptr inbounds [2 x %struct.III_psy_xmin], [2 x %struct.III_psy_xmin]* %l3_xmin, i32 0, i64 %idxprom53
  %call55 = call i32 @calc_xmin(%struct.lame_global_flags* %61, double* %arraydecay48, %struct.III_psy_ratio* %arrayidx52, %struct.gr_info* %68, %struct.III_psy_xmin* %arrayidx54)
  %70 = load %struct.lame_global_flags*, %struct.lame_global_flags** %gfp.addr, align 8, !tbaa !1
  %71 = load i32, i32* %ch, align 4, !tbaa !11
  %idxprom56 = sext i32 %71 to i64
  %72 = load i32, i32* %gr, align 4, !tbaa !11
  %idxprom57 = sext i32 %72 to i64
  %73 = load [2 x [576 x double]]*, [2 x [576 x double]]** %xr.addr, align 8, !tbaa !1
  %arrayidx58 = getelementptr inbounds [2 x [576 x double]], [2 x [576 x double]]* %73, i64 %idxprom57
  %arrayidx59 = getelementptr inbounds [2 x [576 x double]], [2 x [576 x double]]* %arrayidx58, i32 0, i64 %idxprom56
  %arraydecay60 = getelementptr inbounds [576 x double], [576 x double]* %arrayidx59, i32 0, i32 0
  %74 = load i32, i32* %ch, align 4, !tbaa !11
  %idxprom61 = sext i32 %74 to i64
  %arrayidx62 = getelementptr inbounds [2 x i32], [2 x i32]* %targ_bits, i32 0, i64 %idxprom61
  %75 = load i32, i32* %arrayidx62, align 4, !tbaa !11
  %arraydecay63 = getelementptr inbounds [4 x double], [4 x double]* %noise, i32 0, i32 0
  %76 = load i32, i32* %ch, align 4, !tbaa !11
  %idxprom64 = sext i32 %76 to i64
  %arrayidx65 = getelementptr inbounds [2 x %struct.III_psy_xmin], [2 x %struct.III_psy_xmin]* %l3_xmin, i32 0, i64 %idxprom64
  %77 = load i32, i32* %ch, align 4, !tbaa !11
  %idxprom66 = sext i32 %77 to i64
  %78 = load i32, i32* %gr, align 4, !tbaa !11
  %idxprom67 = sext i32 %78 to i64
  %79 = load [2 x [576 x i32]]*, [2 x [576 x i32]]** %l3_enc.addr, align 8, !tbaa !1
  %arrayidx68 = getelementptr inbounds [2 x [576 x i32]], [2 x [576 x i32]]* %79, i64 %idxprom67
  %arrayidx69 = getelementptr inbounds [2 x [576 x i32]], [2 x [576 x i32]]* %arrayidx68, i32 0, i64 %idxprom66
  %arraydecay70 = getelementptr inbounds [576 x i32], [576 x i32]* %arrayidx69, i32 0, i32 0
  %80 = load i32, i32* %ch, align 4, !tbaa !11
  %idxprom71 = sext i32 %80 to i64
  %81 = load i32, i32* %gr, align 4, !tbaa !11
  %idxprom72 = sext i32 %81 to i64
  %82 = load [2 x %struct.III_scalefac_t]*, [2 x %struct.III_scalefac_t]** %scalefac.addr, align 8, !tbaa !1
  %arrayidx73 = getelementptr inbounds [2 x %struct.III_scalefac_t], [2 x %struct.III_scalefac_t]* %82, i64 %idxprom72
  %arrayidx74 = getelementptr inbounds [2 x %struct.III_scalefac_t], [2 x %struct.III_scalefac_t]* %arrayidx73, i32 0, i64 %idxprom71
  %83 = load %struct.gr_info*, %struct.gr_info** %cod_info, align 8, !tbaa !1
  %arraydecay75 = getelementptr inbounds [4 x [21 x double]], [4 x [21 x double]]* %xfsf, i32 0, i32 0
  %84 = load i32, i32* %ch, align 4, !tbaa !11
  call void @outer_loop(%struct.lame_global_flags* %70, double* %arraydecay60, i32 %75, double* %arraydecay63, %struct.III_psy_xmin* %arrayidx65, i32* %arraydecay70, %struct.III_scalefac_t* %arrayidx74, %struct.gr_info* %83, [21 x double]* %arraydecay75, i32 %84)
  br label %if.end.76

if.end.76:                                        ; preds = %if.else, %if.then.31
  %85 = load %struct.lame_global_flags*, %struct.lame_global_flags** %gfp.addr, align 8, !tbaa !1
  %86 = load i32, i32* %gr, align 4, !tbaa !11
  %87 = load i32, i32* %ch, align 4, !tbaa !11
  %88 = load [2 x [576 x i32]]*, [2 x [576 x i32]]** %l3_enc.addr, align 8, !tbaa !1
  %89 = load %struct.III_side_info_t*, %struct.III_side_info_t** %l3_side.addr, align 8, !tbaa !1
  %90 = load [2 x %struct.III_scalefac_t]*, [2 x %struct.III_scalefac_t]** %scalefac.addr, align 8, !tbaa !1
  call void @best_scalefac_store(%struct.lame_global_flags* %85, i32 %86, i32 %87, [2 x [576 x i32]]* %88, %struct.III_side_info_t* %89, [2 x %struct.III_scalefac_t]* %90)
  %91 = load %struct.lame_global_flags*, %struct.lame_global_flags** %gfp.addr, align 8, !tbaa !1
  %use_best_huffman = getelementptr inbounds %struct.lame_global_flags, %struct.lame_global_flags* %91, i32 0, i32 64
  %92 = load i32, i32* %use_best_huffman, align 4, !tbaa !16
  %cmp77 = icmp eq i32 %92, 1
  br i1 %cmp77, label %land.lhs.true, label %if.end.85

land.lhs.true:                                    ; preds = %if.end.76
  %93 = load %struct.gr_info*, %struct.gr_info** %cod_info, align 8, !tbaa !1
  %block_type = getelementptr inbounds %struct.gr_info, %struct.gr_info* %93, i32 0, i32 6
  %94 = load i32, i32* %block_type, align 4, !tbaa !17
  %cmp78 = icmp eq i32 %94, 0
  br i1 %cmp78, label %if.then.79, label %if.end.85

if.then.79:                                       ; preds = %land.lhs.true
  %95 = load i32, i32* %gr, align 4, !tbaa !11
  %96 = load i32, i32* %ch, align 4, !tbaa !11
  %97 = load %struct.gr_info*, %struct.gr_info** %cod_info, align 8, !tbaa !1
  %98 = load i32, i32* %ch, align 4, !tbaa !11
  %idxprom80 = sext i32 %98 to i64
  %99 = load i32, i32* %gr, align 4, !tbaa !11
  %idxprom81 = sext i32 %99 to i64
  %100 = load [2 x [576 x i32]]*, [2 x [576 x i32]]** %l3_enc.addr, align 8, !tbaa !1
  %arrayidx82 = getelementptr inbounds [2 x [576 x i32]], [2 x [576 x i32]]* %100, i64 %idxprom81
  %arrayidx83 = getelementptr inbounds [2 x [576 x i32]], [2 x [576 x i32]]* %arrayidx82, i32 0, i64 %idxprom80
  %arraydecay84 = getelementptr inbounds [576 x i32], [576 x i32]* %arrayidx83, i32 0, i32 0
  call void @best_huffman_divide(i32 %95, i32 %96, %struct.gr_info* %97, i32* %arraydecay84)
  br label %if.end.85

if.end.85:                                        ; preds = %if.then.79, %land.lhs.true, %if.end.76
  %101 = load %struct.lame_global_flags*, %struct.lame_global_flags** %gfp.addr, align 8, !tbaa !1
  %102 = load %struct.gr_info*, %struct.gr_info** %cod_info, align 8, !tbaa !1
  %103 = load %struct.III_side_info_t*, %struct.III_side_info_t** %l3_side.addr, align 8, !tbaa !1
  %104 = load i32, i32* %mean_bits, align 4, !tbaa !11
  call void @ResvAdjust(%struct.lame_global_flags* %101, %struct.gr_info* %102, %struct.III_side_info_t* %103, i32 %104)
  store i32 0, i32* %i, align 4, !tbaa !11
  br label %for.cond.86

for.cond.86:                                      ; preds = %for.inc, %if.end.85
  %105 = load i32, i32* %i, align 4, !tbaa !11
  %cmp87 = icmp slt i32 %105, 576
  br i1 %cmp87, label %for.body.88, label %for.end

for.body.88:                                      ; preds = %for.cond.86
  %106 = load i32, i32* %i, align 4, !tbaa !11
  %idxprom89 = sext i32 %106 to i64
  %107 = load i32, i32* %ch, align 4, !tbaa !11
  %idxprom90 = sext i32 %107 to i64
  %108 = load i32, i32* %gr, align 4, !tbaa !11
  %idxprom91 = sext i32 %108 to i64
  %109 = load [2 x [576 x double]]*, [2 x [576 x double]]** %xr.addr, align 8, !tbaa !1
  %arrayidx92 = getelementptr inbounds [2 x [576 x double]], [2 x [576 x double]]* %109, i64 %idxprom91
  %arrayidx93 = getelementptr inbounds [2 x [576 x double]], [2 x [576 x double]]* %arrayidx92, i32 0, i64 %idxprom90
  %arrayidx94 = getelementptr inbounds [576 x double], [576 x double]* %arrayidx93, i32 0, i64 %idxprom89
  %110 = load double, double* %arrayidx94, align 8, !tbaa !13
  %cmp95 = fcmp olt double %110, 0.000000e+00
  br i1 %cmp95, label %if.then.96, label %if.end.103

if.then.96:                                       ; preds = %for.body.88
  %111 = load i32, i32* %i, align 4, !tbaa !11
  %idxprom97 = sext i32 %111 to i64
  %112 = load i32, i32* %ch, align 4, !tbaa !11
  %idxprom98 = sext i32 %112 to i64
  %113 = load i32, i32* %gr, align 4, !tbaa !11
  %idxprom99 = sext i32 %113 to i64
  %114 = load [2 x [576 x i32]]*, [2 x [576 x i32]]** %l3_enc.addr, align 8, !tbaa !1
  %arrayidx100 = getelementptr inbounds [2 x [576 x i32]], [2 x [576 x i32]]* %114, i64 %idxprom99
  %arrayidx101 = getelementptr inbounds [2 x [576 x i32]], [2 x [576 x i32]]* %arrayidx100, i32 0, i64 %idxprom98
  %arrayidx102 = getelementptr inbounds [576 x i32], [576 x i32]* %arrayidx101, i32 0, i64 %idxprom97
  %115 = load i32, i32* %arrayidx102, align 4, !tbaa !11
  %mul = mul nsw i32 %115, -1
  store i32 %mul, i32* %arrayidx102, align 4, !tbaa !11
  br label %if.end.103

if.end.103:                                       ; preds = %if.then.96, %for.body.88
  br label %for.inc

for.inc:                                          ; preds = %if.end.103
  %116 = load i32, i32* %i, align 4, !tbaa !11
  %inc = add nsw i32 %116, 1
  store i32 %inc, i32* %i, align 4, !tbaa !11
  br label %for.cond.86

for.end:                                          ; preds = %for.cond.86
  br label %for.inc.104

for.inc.104:                                      ; preds = %for.end
  %117 = load i32, i32* %ch, align 4, !tbaa !11
  %inc105 = add nsw i32 %117, 1
  store i32 %inc105, i32* %ch, align 4, !tbaa !11
  br label %for.cond.15

for.end.106:                                      ; preds = %for.cond.15
  %118 = bitcast [2 x i32]* %targ_bits to i8*
  call void @llvm.lifetime.end(i64 8, i8* %118) #1
  br label %for.inc.107

for.inc.107:                                      ; preds = %for.end.106
  %119 = load i32, i32* %gr, align 4, !tbaa !11
  %inc108 = add nsw i32 %119, 1
  store i32 %inc108, i32* %gr, align 4, !tbaa !11
  br label %for.cond

for.end.109:                                      ; preds = %for.cond
  %120 = load %struct.lame_global_flags*, %struct.lame_global_flags** %gfp.addr, align 8, !tbaa !1
  %121 = load %struct.III_side_info_t*, %struct.III_side_info_t** %l3_side.addr, align 8, !tbaa !1
  %122 = load i32, i32* %mean_bits, align 4, !tbaa !11
  call void @ResvFrameEnd(%struct.lame_global_flags* %120, %struct.III_side_info_t* %121, i32 %122)
  %123 = bitcast i32* %bit_rate to i8*
  call void @llvm.lifetime.end(i64 4, i8* %123) #1
  %124 = bitcast i32* %i to i8*
  call void @llvm.lifetime.end(i64 4, i8* %124) #1
  %125 = bitcast i32* %gr to i8*
  call void @llvm.lifetime.end(i64 4, i8* %125) #1
  %126 = bitcast i32* %ch to i8*
  call void @llvm.lifetime.end(i64 4, i8* %126) #1
  %127 = bitcast i32* %mean_bits to i8*
  call void @llvm.lifetime.end(i64 4, i8* %127) #1
  %128 = bitcast i32* %bitsPerFrame to i8*
  call void @llvm.lifetime.end(i64 4, i8* %128) #1
  %129 = bitcast %struct.gr_info** %cod_info to i8*
  call void @llvm.lifetime.end(i64 8, i8* %129) #1
  %130 = bitcast [2 x %struct.III_psy_xmin]* %l3_xmin to i8*
  call void @llvm.lifetime.end(i64 976, i8* %130) #1
  %131 = bitcast [4 x double]* %noise to i8*
  call void @llvm.lifetime.end(i64 32, i8* %131) #1
  %132 = bitcast [4 x [21 x double]]* %xfsf to i8*
  call void @llvm.lifetime.end(i64 672, i8* %132) #1
  ret void
}

; Function Attrs: nounwind
declare void @llvm.lifetime.start(i64, i8* nocapture) #1

declare void @iteration_init(%struct.lame_global_flags*, %struct.III_side_info_t*, [2 x [576 x i32]]*) #2

declare void @getframebits(%struct.lame_global_flags*, i32*, i32*) #2

declare i32 @ResvFrameBegin(%struct.lame_global_flags*, %struct.III_side_info_t*, i32, i32) #2

declare void @ms_convert([576 x double]*, [576 x double]*) #2

declare void @on_pe(%struct.lame_global_flags*, [2 x double]*, %struct.III_side_info_t*, i32*, i32, i32) #2

declare void @reduce_side(i32*, double, i32) #2

; Function Attrs: nounwind uwtable
define i32 @init_outer_loop(%struct.lame_global_flags* %gfp, double* %xr, %struct.gr_info* %cod_info) #0 {
entry:
  %retval = alloca i32, align 4
  %gfp.addr = alloca %struct.lame_global_flags*, align 8
  %xr.addr = alloca double*, align 8
  %cod_info.addr = alloca %struct.gr_info*, align 8
  %i = alloca i32, align 4
  %j = alloca i32, align 4
  %b = alloca i32, align 4
  %en = alloca [3 x double], align 16
  %mx = alloca double, align 8
  %cleanup.dest.slot = alloca i32
  store %struct.lame_global_flags* %gfp, %struct.lame_global_flags** %gfp.addr, align 8, !tbaa !1
  store double* %xr, double** %xr.addr, align 8, !tbaa !1
  store %struct.gr_info* %cod_info, %struct.gr_info** %cod_info.addr, align 8, !tbaa !1
  %0 = bitcast i32* %i to i8*
  call void @llvm.lifetime.start(i64 4, i8* %0) #1
  store i32 0, i32* %i, align 4, !tbaa !11
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %1 = load i32, i32* %i, align 4, !tbaa !11
  %cmp = icmp slt i32 %1, 4
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %2 = load i32, i32* %i, align 4, !tbaa !11
  %idxprom = sext i32 %2 to i64
  %3 = load %struct.gr_info*, %struct.gr_info** %cod_info.addr, align 8, !tbaa !1
  %slen = getelementptr inbounds %struct.gr_info, %struct.gr_info* %3, i32 0, i32 20
  %arrayidx = getelementptr inbounds [4 x i32], [4 x i32]* %slen, i32 0, i64 %idxprom
  store i32 0, i32* %arrayidx, align 4, !tbaa !11
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %4 = load i32, i32* %i, align 4, !tbaa !11
  %inc = add nsw i32 %4, 1
  store i32 %inc, i32* %i, align 4, !tbaa !11
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %5 = load %struct.gr_info*, %struct.gr_info** %cod_info.addr, align 8, !tbaa !1
  %sfb_partition_table = getelementptr inbounds %struct.gr_info, %struct.gr_info* %5, i32 0, i32 19
  store i32* getelementptr inbounds ([6 x [3 x [4 x i32]]], [6 x [3 x [4 x i32]]]* @nr_of_sfb_block, i32 0, i64 0, i64 0, i64 0), i32** %sfb_partition_table, align 8, !tbaa !19
  %6 = load %struct.gr_info*, %struct.gr_info** %cod_info.addr, align 8, !tbaa !1
  %part2_3_length = getelementptr inbounds %struct.gr_info, %struct.gr_info* %6, i32 0, i32 0
  store i32 0, i32* %part2_3_length, align 4, !tbaa !20
  %7 = load %struct.gr_info*, %struct.gr_info** %cod_info.addr, align 8, !tbaa !1
  %big_values = getelementptr inbounds %struct.gr_info, %struct.gr_info* %7, i32 0, i32 1
  store i32 0, i32* %big_values, align 4, !tbaa !21
  %8 = load %struct.gr_info*, %struct.gr_info** %cod_info.addr, align 8, !tbaa !1
  %count1 = getelementptr inbounds %struct.gr_info, %struct.gr_info* %8, i32 0, i32 2
  store i32 0, i32* %count1, align 4, !tbaa !22
  %9 = load %struct.gr_info*, %struct.gr_info** %cod_info.addr, align 8, !tbaa !1
  %scalefac_compress = getelementptr inbounds %struct.gr_info, %struct.gr_info* %9, i32 0, i32 4
  store i32 0, i32* %scalefac_compress, align 4, !tbaa !23
  %10 = load %struct.gr_info*, %struct.gr_info** %cod_info.addr, align 8, !tbaa !1
  %table_select = getelementptr inbounds %struct.gr_info, %struct.gr_info* %10, i32 0, i32 8
  %arrayidx1 = getelementptr inbounds [3 x i32], [3 x i32]* %table_select, i32 0, i64 0
  store i32 0, i32* %arrayidx1, align 4, !tbaa !11
  %11 = load %struct.gr_info*, %struct.gr_info** %cod_info.addr, align 8, !tbaa !1
  %table_select2 = getelementptr inbounds %struct.gr_info, %struct.gr_info* %11, i32 0, i32 8
  %arrayidx3 = getelementptr inbounds [3 x i32], [3 x i32]* %table_select2, i32 0, i64 1
  store i32 0, i32* %arrayidx3, align 4, !tbaa !11
  %12 = load %struct.gr_info*, %struct.gr_info** %cod_info.addr, align 8, !tbaa !1
  %table_select4 = getelementptr inbounds %struct.gr_info, %struct.gr_info* %12, i32 0, i32 8
  %arrayidx5 = getelementptr inbounds [3 x i32], [3 x i32]* %table_select4, i32 0, i64 2
  store i32 0, i32* %arrayidx5, align 4, !tbaa !11
  %13 = load %struct.gr_info*, %struct.gr_info** %cod_info.addr, align 8, !tbaa !1
  %subblock_gain = getelementptr inbounds %struct.gr_info, %struct.gr_info* %13, i32 0, i32 9
  %arrayidx6 = getelementptr inbounds [3 x i32], [3 x i32]* %subblock_gain, i32 0, i64 0
  store i32 0, i32* %arrayidx6, align 4, !tbaa !11
  %14 = load %struct.gr_info*, %struct.gr_info** %cod_info.addr, align 8, !tbaa !1
  %subblock_gain7 = getelementptr inbounds %struct.gr_info, %struct.gr_info* %14, i32 0, i32 9
  %arrayidx8 = getelementptr inbounds [3 x i32], [3 x i32]* %subblock_gain7, i32 0, i64 1
  store i32 0, i32* %arrayidx8, align 4, !tbaa !11
  %15 = load %struct.gr_info*, %struct.gr_info** %cod_info.addr, align 8, !tbaa !1
  %subblock_gain9 = getelementptr inbounds %struct.gr_info, %struct.gr_info* %15, i32 0, i32 9
  %arrayidx10 = getelementptr inbounds [3 x i32], [3 x i32]* %subblock_gain9, i32 0, i64 2
  store i32 0, i32* %arrayidx10, align 4, !tbaa !11
  %16 = load %struct.gr_info*, %struct.gr_info** %cod_info.addr, align 8, !tbaa !1
  %region0_count = getelementptr inbounds %struct.gr_info, %struct.gr_info* %16, i32 0, i32 10
  store i32 0, i32* %region0_count, align 4, !tbaa !24
  %17 = load %struct.gr_info*, %struct.gr_info** %cod_info.addr, align 8, !tbaa !1
  %region1_count = getelementptr inbounds %struct.gr_info, %struct.gr_info* %17, i32 0, i32 11
  store i32 0, i32* %region1_count, align 4, !tbaa !25
  %18 = load %struct.gr_info*, %struct.gr_info** %cod_info.addr, align 8, !tbaa !1
  %part2_length = getelementptr inbounds %struct.gr_info, %struct.gr_info* %18, i32 0, i32 15
  store i32 0, i32* %part2_length, align 4, !tbaa !26
  %19 = load %struct.gr_info*, %struct.gr_info** %cod_info.addr, align 8, !tbaa !1
  %preflag = getelementptr inbounds %struct.gr_info, %struct.gr_info* %19, i32 0, i32 12
  store i32 0, i32* %preflag, align 4, !tbaa !27
  %20 = load %struct.gr_info*, %struct.gr_info** %cod_info.addr, align 8, !tbaa !1
  %scalefac_scale = getelementptr inbounds %struct.gr_info, %struct.gr_info* %20, i32 0, i32 13
  store i32 0, i32* %scalefac_scale, align 4, !tbaa !28
  %21 = load %struct.gr_info*, %struct.gr_info** %cod_info.addr, align 8, !tbaa !1
  %global_gain = getelementptr inbounds %struct.gr_info, %struct.gr_info* %21, i32 0, i32 3
  store i32 210, i32* %global_gain, align 4, !tbaa !29
  %22 = load %struct.gr_info*, %struct.gr_info** %cod_info.addr, align 8, !tbaa !1
  %count1table_select = getelementptr inbounds %struct.gr_info, %struct.gr_info* %22, i32 0, i32 14
  store i32 0, i32* %count1table_select, align 4, !tbaa !30
  %23 = load %struct.gr_info*, %struct.gr_info** %cod_info.addr, align 8, !tbaa !1
  %count1bits = getelementptr inbounds %struct.gr_info, %struct.gr_info* %23, i32 0, i32 18
  store i32 0, i32* %count1bits, align 4, !tbaa !31
  %24 = load %struct.lame_global_flags*, %struct.lame_global_flags** %gfp.addr, align 8, !tbaa !1
  %experimentalZ = getelementptr inbounds %struct.lame_global_flags, %struct.lame_global_flags* %24, i32 0, i32 20
  %25 = load i32, i32* %experimentalZ, align 4, !tbaa !32
  %tobool = icmp ne i32 %25, 0
  br i1 %tobool, label %if.then, label %if.end.113

if.then:                                          ; preds = %for.end
  %26 = bitcast i32* %j to i8*
  call void @llvm.lifetime.start(i64 4, i8* %26) #1
  %27 = bitcast i32* %b to i8*
  call void @llvm.lifetime.start(i64 4, i8* %27) #1
  %28 = bitcast [3 x double]* %en to i8*
  call void @llvm.lifetime.start(i64 24, i8* %28) #1
  %29 = bitcast double* %mx to i8*
  call void @llvm.lifetime.start(i64 8, i8* %29) #1
  %30 = load %struct.gr_info*, %struct.gr_info** %cod_info.addr, align 8, !tbaa !1
  %block_type = getelementptr inbounds %struct.gr_info, %struct.gr_info* %30, i32 0, i32 6
  %31 = load i32, i32* %block_type, align 4, !tbaa !17
  %cmp11 = icmp eq i32 %31, 2
  br i1 %cmp11, label %if.then.12, label %if.end.109

if.then.12:                                       ; preds = %if.then
  store i32 0, i32* %b, align 4, !tbaa !11
  br label %for.cond.13

for.cond.13:                                      ; preds = %for.inc.18, %if.then.12
  %32 = load i32, i32* %b, align 4, !tbaa !11
  %cmp14 = icmp slt i32 %32, 3
  br i1 %cmp14, label %for.body.15, label %for.end.20

for.body.15:                                      ; preds = %for.cond.13
  %33 = load i32, i32* %b, align 4, !tbaa !11
  %idxprom16 = sext i32 %33 to i64
  %arrayidx17 = getelementptr inbounds [3 x double], [3 x double]* %en, i32 0, i64 %idxprom16
  store double 0.000000e+00, double* %arrayidx17, align 8, !tbaa !13
  br label %for.inc.18

for.inc.18:                                       ; preds = %for.body.15
  %34 = load i32, i32* %b, align 4, !tbaa !11
  %inc19 = add nsw i32 %34, 1
  store i32 %inc19, i32* %b, align 4, !tbaa !11
  br label %for.cond.13

for.end.20:                                       ; preds = %for.cond.13
  store i32 0, i32* %i, align 4, !tbaa !11
  store i32 0, i32* %j, align 4, !tbaa !11
  br label %for.cond.21

for.cond.21:                                      ; preds = %for.inc.37, %for.end.20
  %35 = load i32, i32* %j, align 4, !tbaa !11
  %cmp22 = icmp slt i32 %35, 192
  br i1 %cmp22, label %for.body.23, label %for.end.39

for.body.23:                                      ; preds = %for.cond.21
  store i32 0, i32* %b, align 4, !tbaa !11
  br label %for.cond.24

for.cond.24:                                      ; preds = %for.inc.34, %for.body.23
  %36 = load i32, i32* %b, align 4, !tbaa !11
  %cmp25 = icmp slt i32 %36, 3
  br i1 %cmp25, label %for.body.26, label %for.end.36

for.body.26:                                      ; preds = %for.cond.24
  %37 = load i32, i32* %i, align 4, !tbaa !11
  %idxprom27 = sext i32 %37 to i64
  %38 = load double*, double** %xr.addr, align 8, !tbaa !1
  %arrayidx28 = getelementptr inbounds double, double* %38, i64 %idxprom27
  %39 = load double, double* %arrayidx28, align 8, !tbaa !13
  %40 = load i32, i32* %i, align 4, !tbaa !11
  %idxprom29 = sext i32 %40 to i64
  %41 = load double*, double** %xr.addr, align 8, !tbaa !1
  %arrayidx30 = getelementptr inbounds double, double* %41, i64 %idxprom29
  %42 = load double, double* %arrayidx30, align 8, !tbaa !13
  %mul = fmul double %39, %42
  %43 = load i32, i32* %b, align 4, !tbaa !11
  %idxprom31 = sext i32 %43 to i64
  %arrayidx32 = getelementptr inbounds [3 x double], [3 x double]* %en, i32 0, i64 %idxprom31
  %44 = load double, double* %arrayidx32, align 8, !tbaa !13
  %add = fadd double %44, %mul
  store double %add, double* %arrayidx32, align 8, !tbaa !13
  %45 = load i32, i32* %i, align 4, !tbaa !11
  %inc33 = add nsw i32 %45, 1
  store i32 %inc33, i32* %i, align 4, !tbaa !11
  br label %for.inc.34

for.inc.34:                                       ; preds = %for.body.26
  %46 = load i32, i32* %b, align 4, !tbaa !11
  %inc35 = add nsw i32 %46, 1
  store i32 %inc35, i32* %b, align 4, !tbaa !11
  br label %for.cond.24

for.end.36:                                       ; preds = %for.cond.24
  br label %for.inc.37

for.inc.37:                                       ; preds = %for.end.36
  %47 = load i32, i32* %j, align 4, !tbaa !11
  %inc38 = add nsw i32 %47, 1
  store i32 %inc38, i32* %j, align 4, !tbaa !11
  br label %for.cond.21

for.end.39:                                       ; preds = %for.cond.21
  store double 1.000000e-12, double* %mx, align 8, !tbaa !13
  store i32 0, i32* %b, align 4, !tbaa !11
  br label %for.cond.40

for.cond.40:                                      ; preds = %for.inc.48, %for.end.39
  %48 = load i32, i32* %b, align 4, !tbaa !11
  %cmp41 = icmp slt i32 %48, 3
  br i1 %cmp41, label %for.body.42, label %for.end.50

for.body.42:                                      ; preds = %for.cond.40
  %49 = load double, double* %mx, align 8, !tbaa !13
  %50 = load i32, i32* %b, align 4, !tbaa !11
  %idxprom43 = sext i32 %50 to i64
  %arrayidx44 = getelementptr inbounds [3 x double], [3 x double]* %en, i32 0, i64 %idxprom43
  %51 = load double, double* %arrayidx44, align 8, !tbaa !13
  %cmp45 = fcmp ogt double %49, %51
  br i1 %cmp45, label %cond.true, label %cond.false

cond.true:                                        ; preds = %for.body.42
  %52 = load double, double* %mx, align 8, !tbaa !13
  br label %cond.end

cond.false:                                       ; preds = %for.body.42
  %53 = load i32, i32* %b, align 4, !tbaa !11
  %idxprom46 = sext i32 %53 to i64
  %arrayidx47 = getelementptr inbounds [3 x double], [3 x double]* %en, i32 0, i64 %idxprom46
  %54 = load double, double* %arrayidx47, align 8, !tbaa !13
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi double [ %52, %cond.true ], [ %54, %cond.false ]
  store double %cond, double* %mx, align 8, !tbaa !13
  br label %for.inc.48

for.inc.48:                                       ; preds = %cond.end
  %55 = load i32, i32* %b, align 4, !tbaa !11
  %inc49 = add nsw i32 %55, 1
  store i32 %inc49, i32* %b, align 4, !tbaa !11
  br label %for.cond.40

for.end.50:                                       ; preds = %for.cond.40
  store i32 0, i32* %b, align 4, !tbaa !11
  br label %for.cond.51

for.cond.51:                                      ; preds = %for.inc.65, %for.end.50
  %56 = load i32, i32* %b, align 4, !tbaa !11
  %cmp52 = icmp slt i32 %56, 3
  br i1 %cmp52, label %for.body.53, label %for.end.67

for.body.53:                                      ; preds = %for.cond.51
  %57 = load i32, i32* %b, align 4, !tbaa !11
  %idxprom54 = sext i32 %57 to i64
  %arrayidx55 = getelementptr inbounds [3 x double], [3 x double]* %en, i32 0, i64 %idxprom54
  %58 = load double, double* %arrayidx55, align 8, !tbaa !13
  %cmp56 = fcmp ogt double %58, 1.000000e-12
  br i1 %cmp56, label %cond.true.57, label %cond.false.60

cond.true.57:                                     ; preds = %for.body.53
  %59 = load i32, i32* %b, align 4, !tbaa !11
  %idxprom58 = sext i32 %59 to i64
  %arrayidx59 = getelementptr inbounds [3 x double], [3 x double]* %en, i32 0, i64 %idxprom58
  %60 = load double, double* %arrayidx59, align 8, !tbaa !13
  br label %cond.end.61

cond.false.60:                                    ; preds = %for.body.53
  br label %cond.end.61

cond.end.61:                                      ; preds = %cond.false.60, %cond.true.57
  %cond62 = phi double [ %60, %cond.true.57 ], [ 1.000000e-12, %cond.false.60 ]
  %61 = load double, double* %mx, align 8, !tbaa !13
  %div = fdiv double %cond62, %61
  %62 = load i32, i32* %b, align 4, !tbaa !11
  %idxprom63 = sext i32 %62 to i64
  %arrayidx64 = getelementptr inbounds [3 x double], [3 x double]* %en, i32 0, i64 %idxprom63
  store double %div, double* %arrayidx64, align 8, !tbaa !13
  br label %for.inc.65

for.inc.65:                                       ; preds = %cond.end.61
  %63 = load i32, i32* %b, align 4, !tbaa !11
  %inc66 = add nsw i32 %63, 1
  store i32 %inc66, i32* %b, align 4, !tbaa !11
  br label %for.cond.51

for.end.67:                                       ; preds = %for.cond.51
  store i32 0, i32* %b, align 4, !tbaa !11
  br label %for.cond.68

for.cond.68:                                      ; preds = %for.inc.98, %for.end.67
  %64 = load i32, i32* %b, align 4, !tbaa !11
  %cmp69 = icmp slt i32 %64, 3
  br i1 %cmp69, label %for.body.70, label %for.end.100

for.body.70:                                      ; preds = %for.cond.68
  %65 = load i32, i32* %b, align 4, !tbaa !11
  %idxprom71 = sext i32 %65 to i64
  %arrayidx72 = getelementptr inbounds [3 x double], [3 x double]* %en, i32 0, i64 %idxprom71
  %66 = load double, double* %arrayidx72, align 8, !tbaa !13
  %call = call double @log(double %66) #1
  %mul73 = fmul double -5.000000e-01, %call
  %div74 = fdiv double %mul73, 0x3FE62E42FEFA39EF
  %add75 = fadd double %div74, 5.000000e-01
  %conv = fptosi double %add75 to i32
  %67 = load i32, i32* %b, align 4, !tbaa !11
  %idxprom76 = sext i32 %67 to i64
  %68 = load %struct.gr_info*, %struct.gr_info** %cod_info.addr, align 8, !tbaa !1
  %subblock_gain77 = getelementptr inbounds %struct.gr_info, %struct.gr_info* %68, i32 0, i32 9
  %arrayidx78 = getelementptr inbounds [3 x i32], [3 x i32]* %subblock_gain77, i32 0, i64 %idxprom76
  store i32 %conv, i32* %arrayidx78, align 4, !tbaa !11
  %69 = load i32, i32* %b, align 4, !tbaa !11
  %idxprom79 = sext i32 %69 to i64
  %70 = load %struct.gr_info*, %struct.gr_info** %cod_info.addr, align 8, !tbaa !1
  %subblock_gain80 = getelementptr inbounds %struct.gr_info, %struct.gr_info* %70, i32 0, i32 9
  %arrayidx81 = getelementptr inbounds [3 x i32], [3 x i32]* %subblock_gain80, i32 0, i64 %idxprom79
  %71 = load i32, i32* %arrayidx81, align 4, !tbaa !11
  %cmp82 = icmp sgt i32 %71, 2
  br i1 %cmp82, label %if.then.84, label %if.end

if.then.84:                                       ; preds = %for.body.70
  %72 = load i32, i32* %b, align 4, !tbaa !11
  %idxprom85 = sext i32 %72 to i64
  %73 = load %struct.gr_info*, %struct.gr_info** %cod_info.addr, align 8, !tbaa !1
  %subblock_gain86 = getelementptr inbounds %struct.gr_info, %struct.gr_info* %73, i32 0, i32 9
  %arrayidx87 = getelementptr inbounds [3 x i32], [3 x i32]* %subblock_gain86, i32 0, i64 %idxprom85
  store i32 2, i32* %arrayidx87, align 4, !tbaa !11
  br label %if.end

if.end:                                           ; preds = %if.then.84, %for.body.70
  %74 = load i32, i32* %b, align 4, !tbaa !11
  %idxprom88 = sext i32 %74 to i64
  %75 = load %struct.gr_info*, %struct.gr_info** %cod_info.addr, align 8, !tbaa !1
  %subblock_gain89 = getelementptr inbounds %struct.gr_info, %struct.gr_info* %75, i32 0, i32 9
  %arrayidx90 = getelementptr inbounds [3 x i32], [3 x i32]* %subblock_gain89, i32 0, i64 %idxprom88
  %76 = load i32, i32* %arrayidx90, align 4, !tbaa !11
  %cmp91 = icmp slt i32 %76, 0
  br i1 %cmp91, label %if.then.93, label %if.end.97

if.then.93:                                       ; preds = %if.end
  %77 = load i32, i32* %b, align 4, !tbaa !11
  %idxprom94 = sext i32 %77 to i64
  %78 = load %struct.gr_info*, %struct.gr_info** %cod_info.addr, align 8, !tbaa !1
  %subblock_gain95 = getelementptr inbounds %struct.gr_info, %struct.gr_info* %78, i32 0, i32 9
  %arrayidx96 = getelementptr inbounds [3 x i32], [3 x i32]* %subblock_gain95, i32 0, i64 %idxprom94
  store i32 0, i32* %arrayidx96, align 4, !tbaa !11
  br label %if.end.97

if.end.97:                                        ; preds = %if.then.93, %if.end
  br label %for.inc.98

for.inc.98:                                       ; preds = %if.end.97
  %79 = load i32, i32* %b, align 4, !tbaa !11
  %inc99 = add nsw i32 %79, 1
  store i32 %inc99, i32* %b, align 4, !tbaa !11
  br label %for.cond.68

for.end.100:                                      ; preds = %for.cond.68
  %arrayidx101 = getelementptr inbounds [3 x double], [3 x double]* %en, i32 0, i64 0
  %80 = load double, double* %arrayidx101, align 8, !tbaa !13
  %arrayidx102 = getelementptr inbounds [3 x double], [3 x double]* %en, i32 0, i64 1
  %81 = load double, double* %arrayidx102, align 8, !tbaa !13
  %add103 = fadd double %80, %81
  %arrayidx104 = getelementptr inbounds [3 x double], [3 x double]* %en, i32 0, i64 2
  %82 = load double, double* %arrayidx104, align 8, !tbaa !13
  %add105 = fadd double %add103, %82
  %cmp106 = fcmp olt double 1.000000e-99, %add105
  br i1 %cmp106, label %if.then.108, label %if.else

if.then.108:                                      ; preds = %for.end.100
  store i32 1, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.else:                                          ; preds = %for.end.100
  store i32 0, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.109:                                       ; preds = %if.then
  store i32 0, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %if.end.109, %if.else, %if.then.108
  %83 = bitcast double* %mx to i8*
  call void @llvm.lifetime.end(i64 8, i8* %83) #1
  %84 = bitcast [3 x double]* %en to i8*
  call void @llvm.lifetime.end(i64 24, i8* %84) #1
  %85 = bitcast i32* %b to i8*
  call void @llvm.lifetime.end(i64 4, i8* %85) #1
  %86 = bitcast i32* %j to i8*
  call void @llvm.lifetime.end(i64 4, i8* %86) #1
  %cleanup.dest = load i32, i32* %cleanup.dest.slot
  switch i32 %cleanup.dest, label %cleanup.128 [
    i32 0, label %cleanup.cont
  ]

cleanup.cont:                                     ; preds = %cleanup
  br label %if.end.113

if.end.113:                                       ; preds = %cleanup.cont, %for.end
  store i32 0, i32* %i, align 4, !tbaa !11
  br label %for.cond.114

for.cond.114:                                     ; preds = %for.inc.125, %if.end.113
  %87 = load i32, i32* %i, align 4, !tbaa !11
  %cmp115 = icmp slt i32 %87, 576
  br i1 %cmp115, label %for.body.117, label %for.end.127

for.body.117:                                     ; preds = %for.cond.114
  %88 = load i32, i32* %i, align 4, !tbaa !11
  %idxprom118 = sext i32 %88 to i64
  %89 = load double*, double** %xr.addr, align 8, !tbaa !1
  %arrayidx119 = getelementptr inbounds double, double* %89, i64 %idxprom118
  %90 = load double, double* %arrayidx119, align 8, !tbaa !13
  %call120 = call double @fabs(double %90) #5
  %cmp121 = fcmp olt double 1.000000e-99, %call120
  br i1 %cmp121, label %if.then.123, label %if.end.124

if.then.123:                                      ; preds = %for.body.117
  store i32 1, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.128

if.end.124:                                       ; preds = %for.body.117
  br label %for.inc.125

for.inc.125:                                      ; preds = %if.end.124
  %91 = load i32, i32* %i, align 4, !tbaa !11
  %inc126 = add nsw i32 %91, 1
  store i32 %inc126, i32* %i, align 4, !tbaa !11
  br label %for.cond.114

for.end.127:                                      ; preds = %for.cond.114
  store i32 0, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.128

cleanup.128:                                      ; preds = %for.end.127, %if.then.123, %cleanup
  %92 = bitcast i32* %i to i8*
  call void @llvm.lifetime.end(i64 4, i8* %92) #1
  %93 = load i32, i32* %retval
  ret i32 %93
}

; Function Attrs: nounwind
declare void @llvm.memset.p0i8.i64(i8* nocapture, i8, i64, i32, i1) #1

declare i32 @calc_xmin(%struct.lame_global_flags*, double*, %struct.III_psy_ratio*, %struct.gr_info*, %struct.III_psy_xmin*) #2

; Function Attrs: nounwind uwtable
define void @outer_loop(%struct.lame_global_flags* %gfp, double* %xr, i32 %targ_bits, double* %best_noise, %struct.III_psy_xmin* %l3_xmin, i32* %l3_enc, %struct.III_scalefac_t* %scalefac, %struct.gr_info* %cod_info, [21 x double]* %xfsf, i32 %ch) #0 {
entry:
  %gfp.addr = alloca %struct.lame_global_flags*, align 8
  %xr.addr = alloca double*, align 8
  %targ_bits.addr = alloca i32, align 4
  %best_noise.addr = alloca double*, align 8
  %l3_xmin.addr = alloca %struct.III_psy_xmin*, align 8
  %l3_enc.addr = alloca i32*, align 8
  %scalefac.addr = alloca %struct.III_scalefac_t*, align 8
  %cod_info.addr = alloca %struct.gr_info*, align 8
  %xfsf.addr = alloca [21 x double]*, align 8
  %ch.addr = alloca i32, align 4
  %scalefac_w = alloca %struct.III_scalefac_t, align 4
  %save_cod_info = alloca %struct.gr_info, align 8
  %l3_enc_w = alloca [576 x i32], align 16
  %i = alloca i32, align 4
  %iteration = alloca i32, align 4
  %status = alloca i32, align 4
  %bits_found = alloca i32, align 4
  %huff_bits = alloca i32, align 4
  %xrpow = alloca [576 x double], align 16
  %temp = alloca double, align 8
  %better = alloca i32, align 4
  %over = alloca i32, align 4
  %max_noise = alloca double, align 8
  %over_noise = alloca double, align 8
  %tot_noise = alloca double, align 8
  %best_over = alloca i32, align 4
  %best_max_noise = alloca double, align 8
  %best_over_noise = alloca double, align 8
  %best_tot_noise = alloca double, align 8
  %xfsf_w = alloca [4 x [21 x double]], align 16
  %distort = alloca [4 x [21 x double]], align 16
  %compute_stepsize = alloca i32, align 4
  %notdone = alloca i32, align 4
  %try_scale = alloca i32, align 4
  %real_bits = alloca i32, align 4
  store %struct.lame_global_flags* %gfp, %struct.lame_global_flags** %gfp.addr, align 8, !tbaa !1
  store double* %xr, double** %xr.addr, align 8, !tbaa !1
  store i32 %targ_bits, i32* %targ_bits.addr, align 4, !tbaa !11
  store double* %best_noise, double** %best_noise.addr, align 8, !tbaa !1
  store %struct.III_psy_xmin* %l3_xmin, %struct.III_psy_xmin** %l3_xmin.addr, align 8, !tbaa !1
  store i32* %l3_enc, i32** %l3_enc.addr, align 8, !tbaa !1
  store %struct.III_scalefac_t* %scalefac, %struct.III_scalefac_t** %scalefac.addr, align 8, !tbaa !1
  store %struct.gr_info* %cod_info, %struct.gr_info** %cod_info.addr, align 8, !tbaa !1
  store [21 x double]* %xfsf, [21 x double]** %xfsf.addr, align 8, !tbaa !1
  store i32 %ch, i32* %ch.addr, align 4, !tbaa !11
  %0 = bitcast %struct.III_scalefac_t* %scalefac_w to i8*
  call void @llvm.lifetime.start(i64 244, i8* %0) #1
  %1 = bitcast %struct.gr_info* %save_cod_info to i8*
  call void @llvm.lifetime.start(i64 120, i8* %1) #1
  %2 = bitcast [576 x i32]* %l3_enc_w to i8*
  call void @llvm.lifetime.start(i64 2304, i8* %2) #1
  %3 = bitcast i32* %i to i8*
  call void @llvm.lifetime.start(i64 4, i8* %3) #1
  %4 = bitcast i32* %iteration to i8*
  call void @llvm.lifetime.start(i64 4, i8* %4) #1
  %5 = bitcast i32* %status to i8*
  call void @llvm.lifetime.start(i64 4, i8* %5) #1
  %6 = bitcast i32* %bits_found to i8*
  call void @llvm.lifetime.start(i64 4, i8* %6) #1
  store i32 0, i32* %bits_found, align 4, !tbaa !11
  %7 = bitcast i32* %huff_bits to i8*
  call void @llvm.lifetime.start(i64 4, i8* %7) #1
  %8 = bitcast [576 x double]* %xrpow to i8*
  call void @llvm.lifetime.start(i64 4608, i8* %8) #1
  %9 = bitcast double* %temp to i8*
  call void @llvm.lifetime.start(i64 8, i8* %9) #1
  %10 = bitcast i32* %better to i8*
  call void @llvm.lifetime.start(i64 4, i8* %10) #1
  %11 = bitcast i32* %over to i8*
  call void @llvm.lifetime.start(i64 4, i8* %11) #1
  store i32 0, i32* %over, align 4, !tbaa !11
  %12 = bitcast double* %max_noise to i8*
  call void @llvm.lifetime.start(i64 8, i8* %12) #1
  %13 = bitcast double* %over_noise to i8*
  call void @llvm.lifetime.start(i64 8, i8* %13) #1
  %14 = bitcast double* %tot_noise to i8*
  call void @llvm.lifetime.start(i64 8, i8* %14) #1
  %15 = bitcast i32* %best_over to i8*
  call void @llvm.lifetime.start(i64 4, i8* %15) #1
  store i32 100, i32* %best_over, align 4, !tbaa !11
  %16 = bitcast double* %best_max_noise to i8*
  call void @llvm.lifetime.start(i64 8, i8* %16) #1
  store double 0.000000e+00, double* %best_max_noise, align 8, !tbaa !13
  %17 = bitcast double* %best_over_noise to i8*
  call void @llvm.lifetime.start(i64 8, i8* %17) #1
  store double 0.000000e+00, double* %best_over_noise, align 8, !tbaa !13
  %18 = bitcast double* %best_tot_noise to i8*
  call void @llvm.lifetime.start(i64 8, i8* %18) #1
  store double 0.000000e+00, double* %best_tot_noise, align 8, !tbaa !13
  %19 = bitcast [4 x [21 x double]]* %xfsf_w to i8*
  call void @llvm.lifetime.start(i64 672, i8* %19) #1
  %20 = bitcast [4 x [21 x double]]* %distort to i8*
  call void @llvm.lifetime.start(i64 672, i8* %20) #1
  %21 = bitcast i32* %compute_stepsize to i8*
  call void @llvm.lifetime.start(i64 4, i8* %21) #1
  store i32 1, i32* %compute_stepsize, align 4, !tbaa !11
  %22 = bitcast i32* %notdone to i8*
  call void @llvm.lifetime.start(i64 4, i8* %22) #1
  store i32 1, i32* %notdone, align 4, !tbaa !11
  store i32 0, i32* %iteration, align 4, !tbaa !11
  br label %while.cond

while.cond:                                       ; preds = %if.end.80, %entry
  %23 = load i32, i32* %notdone, align 4, !tbaa !11
  %tobool = icmp ne i32 %23, 0
  br i1 %tobool, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %24 = bitcast i32* %try_scale to i8*
  call void @llvm.lifetime.start(i64 4, i8* %24) #1
  store i32 0, i32* %try_scale, align 4, !tbaa !11
  %25 = load i32, i32* %iteration, align 4, !tbaa !11
  %inc = add nsw i32 %25, 1
  store i32 %inc, i32* %iteration, align 4, !tbaa !11
  %26 = load i32, i32* %compute_stepsize, align 4, !tbaa !11
  %tobool1 = icmp ne i32 %26, 0
  br i1 %tobool1, label %if.then, label %if.end

if.then:                                          ; preds = %while.body
  store i32 0, i32* %compute_stepsize, align 4, !tbaa !11
  %27 = bitcast %struct.III_scalefac_t* %scalefac_w to i8*
  call void @llvm.memset.p0i8.i64(i8* %27, i8 0, i64 244, i32 4, i1 false)
  store i32 0, i32* %i, align 4, !tbaa !11
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.then
  %28 = load i32, i32* %i, align 4, !tbaa !11
  %cmp = icmp slt i32 %28, 576
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %29 = load i32, i32* %i, align 4, !tbaa !11
  %idxprom = sext i32 %29 to i64
  %30 = load double*, double** %xr.addr, align 8, !tbaa !1
  %arrayidx = getelementptr inbounds double, double* %30, i64 %idxprom
  %31 = load double, double* %arrayidx, align 8, !tbaa !13
  %call = call double @fabs(double %31) #5
  store double %call, double* %temp, align 8, !tbaa !13
  %32 = load double, double* %temp, align 8, !tbaa !13
  %call2 = call double @sqrt(double %32) #1
  %33 = load double, double* %temp, align 8, !tbaa !13
  %mul = fmul double %call2, %33
  %call3 = call double @sqrt(double %mul) #1
  %34 = load i32, i32* %i, align 4, !tbaa !11
  %idxprom4 = sext i32 %34 to i64
  %arrayidx5 = getelementptr inbounds [576 x double], [576 x double]* %xrpow, i32 0, i64 %idxprom4
  store double %call3, double* %arrayidx5, align 8, !tbaa !13
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %35 = load i32, i32* %i, align 4, !tbaa !11
  %inc6 = add nsw i32 %35, 1
  store i32 %inc6, i32* %i, align 4, !tbaa !11
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %36 = load %struct.lame_global_flags*, %struct.lame_global_flags** %gfp.addr, align 8, !tbaa !1
  %37 = load i32, i32* %targ_bits.addr, align 4, !tbaa !11
  %38 = load i32, i32* %ch.addr, align 4, !tbaa !11
  %idxprom7 = sext i32 %38 to i64
  %arrayidx8 = getelementptr inbounds [2 x i32], [2 x i32]* @outer_loop.OldValue, i32 0, i64 %idxprom7
  %39 = load i32, i32* %arrayidx8, align 4, !tbaa !11
  %arraydecay = getelementptr inbounds [576 x i32], [576 x i32]* %l3_enc_w, i32 0, i32 0
  %arraydecay9 = getelementptr inbounds [576 x double], [576 x double]* %xrpow, i32 0, i32 0
  %40 = load %struct.gr_info*, %struct.gr_info** %cod_info.addr, align 8, !tbaa !1
  %call10 = call i32 @bin_search_StepSize2(%struct.lame_global_flags* %36, i32 %37, i32 %39, i32* %arraydecay, double* %arraydecay9, %struct.gr_info* %40)
  store i32 %call10, i32* %bits_found, align 4, !tbaa !11
  %41 = load %struct.gr_info*, %struct.gr_info** %cod_info.addr, align 8, !tbaa !1
  %global_gain = getelementptr inbounds %struct.gr_info, %struct.gr_info* %41, i32 0, i32 3
  %42 = load i32, i32* %global_gain, align 4, !tbaa !29
  %43 = load i32, i32* %ch.addr, align 4, !tbaa !11
  %idxprom11 = sext i32 %43 to i64
  %arrayidx12 = getelementptr inbounds [2 x i32], [2 x i32]* @outer_loop.OldValue, i32 0, i64 %idxprom11
  store i32 %42, i32* %arrayidx12, align 4, !tbaa !11
  br label %if.end

if.end:                                           ; preds = %for.end, %while.body
  %44 = load i32, i32* %targ_bits.addr, align 4, !tbaa !11
  %45 = load %struct.gr_info*, %struct.gr_info** %cod_info.addr, align 8, !tbaa !1
  %part2_length = getelementptr inbounds %struct.gr_info, %struct.gr_info* %45, i32 0, i32 15
  %46 = load i32, i32* %part2_length, align 4, !tbaa !26
  %sub = sub i32 %44, %46
  store i32 %sub, i32* %huff_bits, align 4, !tbaa !11
  %47 = load i32, i32* %huff_bits, align 4, !tbaa !11
  %cmp13 = icmp slt i32 %47, 0
  br i1 %cmp13, label %if.then.14, label %if.else

if.then.14:                                       ; preds = %if.end
  store i32 0, i32* %notdone, align 4, !tbaa !11
  br label %if.end.47

if.else:                                          ; preds = %if.end
  %48 = bitcast i32* %real_bits to i8*
  call void @llvm.lifetime.start(i64 4, i8* %48) #1
  %49 = load i32, i32* %iteration, align 4, !tbaa !11
  %cmp15 = icmp eq i32 %49, 1
  br i1 %cmp15, label %if.then.16, label %if.else.26

if.then.16:                                       ; preds = %if.else
  %50 = load i32, i32* %bits_found, align 4, !tbaa !11
  %51 = load i32, i32* %huff_bits, align 4, !tbaa !11
  %cmp17 = icmp sgt i32 %50, %51
  br i1 %cmp17, label %if.then.18, label %if.else.24

if.then.18:                                       ; preds = %if.then.16
  %52 = load %struct.gr_info*, %struct.gr_info** %cod_info.addr, align 8, !tbaa !1
  %global_gain19 = getelementptr inbounds %struct.gr_info, %struct.gr_info* %52, i32 0, i32 3
  %53 = load i32, i32* %global_gain19, align 4, !tbaa !29
  %inc20 = add i32 %53, 1
  store i32 %inc20, i32* %global_gain19, align 4, !tbaa !29
  %54 = load %struct.lame_global_flags*, %struct.lame_global_flags** %gfp.addr, align 8, !tbaa !1
  %arraydecay21 = getelementptr inbounds [576 x double], [576 x double]* %xrpow, i32 0, i32 0
  %arraydecay22 = getelementptr inbounds [576 x i32], [576 x i32]* %l3_enc_w, i32 0, i32 0
  %55 = load i32, i32* %huff_bits, align 4, !tbaa !11
  %56 = load %struct.gr_info*, %struct.gr_info** %cod_info.addr, align 8, !tbaa !1
  %call23 = call i32 @inner_loop(%struct.lame_global_flags* %54, double* %arraydecay21, i32* %arraydecay22, i32 %55, %struct.gr_info* %56)
  store i32 %call23, i32* %real_bits, align 4, !tbaa !11
  br label %if.end.25

if.else.24:                                       ; preds = %if.then.16
  %57 = load i32, i32* %bits_found, align 4, !tbaa !11
  store i32 %57, i32* %real_bits, align 4, !tbaa !11
  br label %if.end.25

if.end.25:                                        ; preds = %if.else.24, %if.then.18
  br label %if.end.30

if.else.26:                                       ; preds = %if.else
  %58 = load %struct.lame_global_flags*, %struct.lame_global_flags** %gfp.addr, align 8, !tbaa !1
  %arraydecay27 = getelementptr inbounds [576 x double], [576 x double]* %xrpow, i32 0, i32 0
  %arraydecay28 = getelementptr inbounds [576 x i32], [576 x i32]* %l3_enc_w, i32 0, i32 0
  %59 = load i32, i32* %huff_bits, align 4, !tbaa !11
  %60 = load %struct.gr_info*, %struct.gr_info** %cod_info.addr, align 8, !tbaa !1
  %call29 = call i32 @inner_loop(%struct.lame_global_flags* %58, double* %arraydecay27, i32* %arraydecay28, i32 %59, %struct.gr_info* %60)
  store i32 %call29, i32* %real_bits, align 4, !tbaa !11
  br label %if.end.30

if.end.30:                                        ; preds = %if.else.26, %if.end.25
  %61 = load i32, i32* %real_bits, align 4, !tbaa !11
  %62 = load %struct.gr_info*, %struct.gr_info** %cod_info.addr, align 8, !tbaa !1
  %part2_3_length = getelementptr inbounds %struct.gr_info, %struct.gr_info* %62, i32 0, i32 0
  store i32 %61, i32* %part2_3_length, align 4, !tbaa !20
  %63 = load %struct.lame_global_flags*, %struct.lame_global_flags** %gfp.addr, align 8, !tbaa !1
  %noise_shaping = getelementptr inbounds %struct.lame_global_flags, %struct.lame_global_flags* %63, i32 0, i32 61
  %64 = load i32, i32* %noise_shaping, align 4, !tbaa !33
  %cmp31 = icmp eq i32 %64, 0
  br i1 %cmp31, label %if.then.32, label %if.else.33

if.then.32:                                       ; preds = %if.end.30
  store i32 0, i32* %over, align 4, !tbaa !11
  br label %if.end.38

if.else.33:                                       ; preds = %if.end.30
  %65 = load double*, double** %xr.addr, align 8, !tbaa !1
  %arraydecay34 = getelementptr inbounds [576 x i32], [576 x i32]* %l3_enc_w, i32 0, i32 0
  %66 = load %struct.gr_info*, %struct.gr_info** %cod_info.addr, align 8, !tbaa !1
  %arraydecay35 = getelementptr inbounds [4 x [21 x double]], [4 x [21 x double]]* %xfsf_w, i32 0, i32 0
  %arraydecay36 = getelementptr inbounds [4 x [21 x double]], [4 x [21 x double]]* %distort, i32 0, i32 0
  %67 = load %struct.III_psy_xmin*, %struct.III_psy_xmin** %l3_xmin.addr, align 8, !tbaa !1
  %call37 = call i32 @calc_noise1(double* %65, i32* %arraydecay34, %struct.gr_info* %66, [21 x double]* %arraydecay35, [21 x double]* %arraydecay36, %struct.III_psy_xmin* %67, %struct.III_scalefac_t* %scalefac_w, double* %over_noise, double* %tot_noise, double* %max_noise)
  store i32 %call37, i32* %over, align 4, !tbaa !11
  br label %if.end.38

if.end.38:                                        ; preds = %if.else.33, %if.then.32
  %68 = load i32, i32* %iteration, align 4, !tbaa !11
  %cmp39 = icmp eq i32 %68, 1
  br i1 %cmp39, label %if.then.40, label %if.else.41

if.then.40:                                       ; preds = %if.end.38
  store i32 1, i32* %better, align 4, !tbaa !11
  br label %if.end.43

if.else.41:                                       ; preds = %if.end.38
  %69 = load %struct.lame_global_flags*, %struct.lame_global_flags** %gfp.addr, align 8, !tbaa !1
  %experimentalX = getelementptr inbounds %struct.lame_global_flags, %struct.lame_global_flags* %69, i32 0, i32 18
  %70 = load i32, i32* %experimentalX, align 4, !tbaa !34
  %71 = load i32, i32* %best_over, align 4, !tbaa !11
  %72 = load double, double* %best_tot_noise, align 8, !tbaa !13
  %73 = load double, double* %best_over_noise, align 8, !tbaa !13
  %74 = load double, double* %best_max_noise, align 8, !tbaa !13
  %75 = load i32, i32* %over, align 4, !tbaa !11
  %76 = load double, double* %tot_noise, align 8, !tbaa !13
  %77 = load double, double* %over_noise, align 8, !tbaa !13
  %78 = load double, double* %max_noise, align 8, !tbaa !13
  %call42 = call i32 @quant_compare(i32 %70, i32 %71, double %72, double %73, double %74, i32 %75, double %76, double %77, double %78)
  store i32 %call42, i32* %better, align 4, !tbaa !11
  br label %if.end.43

if.end.43:                                        ; preds = %if.else.41, %if.then.40
  %79 = load i32, i32* %better, align 4, !tbaa !11
  %tobool44 = icmp ne i32 %79, 0
  br i1 %tobool44, label %if.then.45, label %if.end.46

if.then.45:                                       ; preds = %if.end.43
  %80 = load i32, i32* %over, align 4, !tbaa !11
  store i32 %80, i32* %best_over, align 4, !tbaa !11
  %81 = load double, double* %max_noise, align 8, !tbaa !13
  store double %81, double* %best_max_noise, align 8, !tbaa !13
  %82 = load double, double* %over_noise, align 8, !tbaa !13
  store double %82, double* %best_over_noise, align 8, !tbaa !13
  %83 = load double, double* %tot_noise, align 8, !tbaa !13
  store double %83, double* %best_tot_noise, align 8, !tbaa !13
  %84 = load %struct.III_scalefac_t*, %struct.III_scalefac_t** %scalefac.addr, align 8, !tbaa !1
  %85 = bitcast %struct.III_scalefac_t* %84 to i8*
  %86 = bitcast %struct.III_scalefac_t* %scalefac_w to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %85, i8* %86, i64 244, i32 4, i1 false)
  %87 = load i32*, i32** %l3_enc.addr, align 8, !tbaa !1
  %88 = bitcast i32* %87 to i8*
  %89 = bitcast [576 x i32]* %l3_enc_w to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %88, i8* %89, i64 2304, i32 4, i1 false)
  %90 = bitcast %struct.gr_info* %save_cod_info to i8*
  %91 = load %struct.gr_info*, %struct.gr_info** %cod_info.addr, align 8, !tbaa !1
  %92 = bitcast %struct.gr_info* %91 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %90, i8* %92, i64 120, i32 8, i1 false)
  br label %if.end.46

if.end.46:                                        ; preds = %if.then.45, %if.end.43
  %93 = bitcast i32* %real_bits to i8*
  call void @llvm.lifetime.end(i64 4, i8* %93) #1
  br label %if.end.47

if.end.47:                                        ; preds = %if.end.46, %if.then.14
  %94 = load %struct.lame_global_flags*, %struct.lame_global_flags** %gfp.addr, align 8, !tbaa !1
  %noise_shaping_stop = getelementptr inbounds %struct.lame_global_flags, %struct.lame_global_flags* %94, i32 0, i32 62
  %95 = load i32, i32* %noise_shaping_stop, align 4, !tbaa !35
  %cmp48 = icmp eq i32 %95, 0
  br i1 %cmp48, label %if.then.49, label %if.end.53

if.then.49:                                       ; preds = %if.end.47
  %96 = load i32, i32* %over, align 4, !tbaa !11
  %cmp50 = icmp eq i32 %96, 0
  br i1 %cmp50, label %if.then.51, label %if.end.52

if.then.51:                                       ; preds = %if.then.49
  store i32 0, i32* %notdone, align 4, !tbaa !11
  br label %if.end.52

if.end.52:                                        ; preds = %if.then.51, %if.then.49
  br label %if.end.53

if.end.53:                                        ; preds = %if.end.52, %if.end.47
  %97 = load i32, i32* %notdone, align 4, !tbaa !11
  %tobool54 = icmp ne i32 %97, 0
  br i1 %tobool54, label %if.then.55, label %if.end.73

if.then.55:                                       ; preds = %if.end.53
  %arraydecay56 = getelementptr inbounds [576 x double], [576 x double]* %xrpow, i32 0, i32 0
  %98 = load %struct.gr_info*, %struct.gr_info** %cod_info.addr, align 8, !tbaa !1
  %arraydecay57 = getelementptr inbounds [4 x [21 x double]], [4 x [21 x double]]* %distort, i32 0, i32 0
  call void @amp_scalefac_bands(double* %arraydecay56, %struct.gr_info* %98, %struct.III_scalefac_t* %scalefac_w, [21 x double]* %arraydecay57)
  %99 = load %struct.gr_info*, %struct.gr_info** %cod_info.addr, align 8, !tbaa !1
  %call58 = call i32 @loop_break(%struct.III_scalefac_t* %scalefac_w, %struct.gr_info* %99)
  store i32 %call58, i32* %status, align 4, !tbaa !11
  %cmp59 = icmp eq i32 %call58, 0
  br i1 %cmp59, label %if.then.60, label %if.end.71

if.then.60:                                       ; preds = %if.then.55
  %100 = load %struct.lame_global_flags*, %struct.lame_global_flags** %gfp.addr, align 8, !tbaa !1
  %version = getelementptr inbounds %struct.lame_global_flags, %struct.lame_global_flags* %100, i32 0, i32 43
  %101 = load i32, i32* %version, align 4, !tbaa !10
  %cmp61 = icmp eq i32 %101, 1
  br i1 %cmp61, label %if.then.62, label %if.else.64

if.then.62:                                       ; preds = %if.then.60
  %102 = load %struct.gr_info*, %struct.gr_info** %cod_info.addr, align 8, !tbaa !1
  %call63 = call i32 @scale_bitcount(%struct.III_scalefac_t* %scalefac_w, %struct.gr_info* %102)
  store i32 %call63, i32* %status, align 4, !tbaa !11
  br label %if.end.66

if.else.64:                                       ; preds = %if.then.60
  %103 = load %struct.gr_info*, %struct.gr_info** %cod_info.addr, align 8, !tbaa !1
  %call65 = call i32 @scale_bitcount_lsf(%struct.III_scalefac_t* %scalefac_w, %struct.gr_info* %103)
  store i32 %call65, i32* %status, align 4, !tbaa !11
  br label %if.end.66

if.end.66:                                        ; preds = %if.else.64, %if.then.62
  %104 = load i32, i32* %status, align 4, !tbaa !11
  %tobool67 = icmp ne i32 %104, 0
  br i1 %tobool67, label %land.lhs.true, label %if.end.70

land.lhs.true:                                    ; preds = %if.end.66
  %105 = load %struct.gr_info*, %struct.gr_info** %cod_info.addr, align 8, !tbaa !1
  %scalefac_scale = getelementptr inbounds %struct.gr_info, %struct.gr_info* %105, i32 0, i32 13
  %106 = load i32, i32* %scalefac_scale, align 4, !tbaa !28
  %cmp68 = icmp eq i32 %106, 0
  br i1 %cmp68, label %if.then.69, label %if.end.70

if.then.69:                                       ; preds = %land.lhs.true
  store i32 1, i32* %try_scale, align 4, !tbaa !11
  br label %if.end.70

if.end.70:                                        ; preds = %if.then.69, %land.lhs.true, %if.end.66
  br label %if.end.71

if.end.71:                                        ; preds = %if.end.70, %if.then.55
  %107 = load i32, i32* %status, align 4, !tbaa !11
  %tobool72 = icmp ne i32 %107, 0
  %lnot = xor i1 %tobool72, true
  %lnot.ext = zext i1 %lnot to i32
  store i32 %lnot.ext, i32* %notdone, align 4, !tbaa !11
  br label %if.end.73

if.end.73:                                        ; preds = %if.end.71, %if.end.53
  %108 = load i32, i32* %try_scale, align 4, !tbaa !11
  %tobool74 = icmp ne i32 %108, 0
  br i1 %tobool74, label %land.lhs.true.75, label %if.end.80

land.lhs.true.75:                                 ; preds = %if.end.73
  %109 = load %struct.lame_global_flags*, %struct.lame_global_flags** %gfp.addr, align 8, !tbaa !1
  %experimentalY = getelementptr inbounds %struct.lame_global_flags, %struct.lame_global_flags* %109, i32 0, i32 19
  %110 = load i32, i32* %experimentalY, align 4, !tbaa !36
  %tobool76 = icmp ne i32 %110, 0
  br i1 %tobool76, label %if.then.77, label %if.end.80

if.then.77:                                       ; preds = %land.lhs.true.75
  %111 = load %struct.lame_global_flags*, %struct.lame_global_flags** %gfp.addr, align 8, !tbaa !1
  %112 = load double*, double** %xr.addr, align 8, !tbaa !1
  %113 = load %struct.gr_info*, %struct.gr_info** %cod_info.addr, align 8, !tbaa !1
  %call78 = call i32 @init_outer_loop(%struct.lame_global_flags* %111, double* %112, %struct.gr_info* %113)
  store i32 1, i32* %compute_stepsize, align 4, !tbaa !11
  store i32 1, i32* %notdone, align 4, !tbaa !11
  %114 = load %struct.gr_info*, %struct.gr_info** %cod_info.addr, align 8, !tbaa !1
  %scalefac_scale79 = getelementptr inbounds %struct.gr_info, %struct.gr_info* %114, i32 0, i32 13
  store i32 1, i32* %scalefac_scale79, align 4, !tbaa !28
  br label %if.end.80

if.end.80:                                        ; preds = %if.then.77, %land.lhs.true.75, %if.end.73
  %115 = bitcast i32* %try_scale to i8*
  call void @llvm.lifetime.end(i64 4, i8* %115) #1
  br label %while.cond

while.end:                                        ; preds = %while.cond
  %116 = load %struct.gr_info*, %struct.gr_info** %cod_info.addr, align 8, !tbaa !1
  %117 = bitcast %struct.gr_info* %116 to i8*
  %118 = bitcast %struct.gr_info* %save_cod_info to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %117, i8* %118, i64 120, i32 8, i1 false)
  %119 = load %struct.gr_info*, %struct.gr_info** %cod_info.addr, align 8, !tbaa !1
  %part2_length81 = getelementptr inbounds %struct.gr_info, %struct.gr_info* %119, i32 0, i32 15
  %120 = load i32, i32* %part2_length81, align 4, !tbaa !26
  %121 = load %struct.gr_info*, %struct.gr_info** %cod_info.addr, align 8, !tbaa !1
  %part2_3_length82 = getelementptr inbounds %struct.gr_info, %struct.gr_info* %121, i32 0, i32 0
  %122 = load i32, i32* %part2_3_length82, align 4, !tbaa !20
  %add = add i32 %122, %120
  store i32 %add, i32* %part2_3_length82, align 4, !tbaa !20
  %123 = load i32, i32* %best_over, align 4, !tbaa !11
  %conv = sitofp i32 %123 to double
  %124 = load double*, double** %best_noise.addr, align 8, !tbaa !1
  %arrayidx83 = getelementptr inbounds double, double* %124, i64 0
  store double %conv, double* %arrayidx83, align 8, !tbaa !13
  %125 = load double, double* %best_max_noise, align 8, !tbaa !13
  %126 = load double*, double** %best_noise.addr, align 8, !tbaa !1
  %arrayidx84 = getelementptr inbounds double, double* %126, i64 1
  store double %125, double* %arrayidx84, align 8, !tbaa !13
  %127 = load double, double* %best_over_noise, align 8, !tbaa !13
  %128 = load double*, double** %best_noise.addr, align 8, !tbaa !1
  %arrayidx85 = getelementptr inbounds double, double* %128, i64 2
  store double %127, double* %arrayidx85, align 8, !tbaa !13
  %129 = load double, double* %best_tot_noise, align 8, !tbaa !13
  %130 = load double*, double** %best_noise.addr, align 8, !tbaa !1
  %arrayidx86 = getelementptr inbounds double, double* %130, i64 3
  store double %129, double* %arrayidx86, align 8, !tbaa !13
  %131 = bitcast i32* %notdone to i8*
  call void @llvm.lifetime.end(i64 4, i8* %131) #1
  %132 = bitcast i32* %compute_stepsize to i8*
  call void @llvm.lifetime.end(i64 4, i8* %132) #1
  %133 = bitcast [4 x [21 x double]]* %distort to i8*
  call void @llvm.lifetime.end(i64 672, i8* %133) #1
  %134 = bitcast [4 x [21 x double]]* %xfsf_w to i8*
  call void @llvm.lifetime.end(i64 672, i8* %134) #1
  %135 = bitcast double* %best_tot_noise to i8*
  call void @llvm.lifetime.end(i64 8, i8* %135) #1
  %136 = bitcast double* %best_over_noise to i8*
  call void @llvm.lifetime.end(i64 8, i8* %136) #1
  %137 = bitcast double* %best_max_noise to i8*
  call void @llvm.lifetime.end(i64 8, i8* %137) #1
  %138 = bitcast i32* %best_over to i8*
  call void @llvm.lifetime.end(i64 4, i8* %138) #1
  %139 = bitcast double* %tot_noise to i8*
  call void @llvm.lifetime.end(i64 8, i8* %139) #1
  %140 = bitcast double* %over_noise to i8*
  call void @llvm.lifetime.end(i64 8, i8* %140) #1
  %141 = bitcast double* %max_noise to i8*
  call void @llvm.lifetime.end(i64 8, i8* %141) #1
  %142 = bitcast i32* %over to i8*
  call void @llvm.lifetime.end(i64 4, i8* %142) #1
  %143 = bitcast i32* %better to i8*
  call void @llvm.lifetime.end(i64 4, i8* %143) #1
  %144 = bitcast double* %temp to i8*
  call void @llvm.lifetime.end(i64 8, i8* %144) #1
  %145 = bitcast [576 x double]* %xrpow to i8*
  call void @llvm.lifetime.end(i64 4608, i8* %145) #1
  %146 = bitcast i32* %huff_bits to i8*
  call void @llvm.lifetime.end(i64 4, i8* %146) #1
  %147 = bitcast i32* %bits_found to i8*
  call void @llvm.lifetime.end(i64 4, i8* %147) #1
  %148 = bitcast i32* %status to i8*
  call void @llvm.lifetime.end(i64 4, i8* %148) #1
  %149 = bitcast i32* %iteration to i8*
  call void @llvm.lifetime.end(i64 4, i8* %149) #1
  %150 = bitcast i32* %i to i8*
  call void @llvm.lifetime.end(i64 4, i8* %150) #1
  %151 = bitcast [576 x i32]* %l3_enc_w to i8*
  call void @llvm.lifetime.end(i64 2304, i8* %151) #1
  %152 = bitcast %struct.gr_info* %save_cod_info to i8*
  call void @llvm.lifetime.end(i64 120, i8* %152) #1
  %153 = bitcast %struct.III_scalefac_t* %scalefac_w to i8*
  call void @llvm.lifetime.end(i64 244, i8* %153) #1
  ret void
}

declare void @best_scalefac_store(%struct.lame_global_flags*, i32, i32, [2 x [576 x i32]]*, %struct.III_side_info_t*, [2 x %struct.III_scalefac_t]*) #2

declare void @best_huffman_divide(i32, i32, %struct.gr_info*, i32*) #2

declare void @ResvAdjust(%struct.lame_global_flags*, %struct.gr_info*, %struct.III_side_info_t*, i32) #2

; Function Attrs: nounwind
declare void @llvm.lifetime.end(i64, i8* nocapture) #1

declare void @ResvFrameEnd(%struct.lame_global_flags*, %struct.III_side_info_t*, i32) #2

; Function Attrs: nounwind uwtable
define void @set_masking_lower(i32 %VBR_q, i32 %nbits) #0 {
entry:
  %VBR_q.addr = alloca i32, align 4
  %nbits.addr = alloca i32, align 4
  %masking_lower_db = alloca float, align 4
  %adjust = alloca float, align 4
  store i32 %VBR_q, i32* %VBR_q.addr, align 4, !tbaa !11
  store i32 %nbits, i32* %nbits.addr, align 4, !tbaa !11
  %0 = bitcast float* %masking_lower_db to i8*
  call void @llvm.lifetime.start(i64 4, i8* %0) #1
  %1 = bitcast float* %adjust to i8*
  call void @llvm.lifetime.start(i64 4, i8* %1) #1
  %2 = load i32, i32* %VBR_q.addr, align 4, !tbaa !11
  %mul = mul nsw i32 2, %2
  %add = add nsw i32 -6, %mul
  %conv = sitofp i32 %add to float
  store float %conv, float* %masking_lower_db, align 4, !tbaa !37
  %3 = load i32, i32* %nbits.addr, align 4, !tbaa !11
  %sub = sub nsw i32 %3, 125
  %conv1 = sitofp i32 %sub to double
  %div = fdiv double %conv1, 2.375000e+03
  %conv2 = fptrunc double %div to float
  store float %conv2, float* %adjust, align 4, !tbaa !37
  %4 = load float, float* %adjust, align 4, !tbaa !37
  %sub3 = fsub float %4, 1.000000e+00
  %mul4 = fmul float 4.000000e+00, %sub3
  store float %mul4, float* %adjust, align 4, !tbaa !37
  %5 = load float, float* %adjust, align 4, !tbaa !37
  %6 = load float, float* %masking_lower_db, align 4, !tbaa !37
  %add5 = fadd float %6, %5
  store float %add5, float* %masking_lower_db, align 4, !tbaa !37
  %7 = load float, float* %masking_lower_db, align 4, !tbaa !37
  %div6 = fdiv float %7, 1.000000e+01
  %conv7 = fpext float %div6 to double
  %call = call double @pow(double 1.000000e+01, double %conv7) #1
  %conv8 = fptrunc double %call to float
  store float %conv8, float* @masking_lower, align 4, !tbaa !37
  %8 = bitcast float* %adjust to i8*
  call void @llvm.lifetime.end(i64 4, i8* %8) #1
  %9 = bitcast float* %masking_lower_db to i8*
  call void @llvm.lifetime.end(i64 4, i8* %9) #1
  ret void
}

; Function Attrs: nounwind
declare double @pow(double, double) #3

; Function Attrs: nounwind uwtable
define void @VBR_iteration_loop(%struct.lame_global_flags* %gfp, [2 x double]* %pe, double* %ms_ener_ratio, [2 x [576 x double]]* %xr, [2 x %struct.III_psy_ratio]* %ratio, %struct.III_side_info_t* %l3_side, [2 x [576 x i32]]* %l3_enc, [2 x %struct.III_scalefac_t]* %scalefac) #0 {
entry:
  %gfp.addr = alloca %struct.lame_global_flags*, align 8
  %pe.addr = alloca [2 x double]*, align 8
  %ms_ener_ratio.addr = alloca double*, align 8
  %xr.addr = alloca [2 x [576 x double]]*, align 8
  %ratio.addr = alloca [2 x %struct.III_psy_ratio]*, align 8
  %l3_side.addr = alloca %struct.III_side_info_t*, align 8
  %l3_enc.addr = alloca [2 x [576 x i32]]*, align 8
  %scalefac.addr = alloca [2 x %struct.III_scalefac_t]*, align 8
  %bst_cod_info = alloca %struct.gr_info, align 8
  %clean_cod_info = alloca %struct.gr_info, align 8
  %bst_scalefac = alloca %struct.III_scalefac_t, align 4
  %bst_l3_enc = alloca [576 x i32], align 16
  %l3_xmin = alloca %struct.III_psy_xmin, align 8
  %cod_info = alloca %struct.gr_info*, align 8
  %save_bits = alloca [2 x [2 x i32]], align 16
  %noise = alloca [4 x double], align 16
  %targ_noise = alloca [4 x double], align 16
  %xfsf = alloca [4 x [21 x double]], align 16
  %this_bits = alloca i32, align 4
  %dbits = alloca i32, align 4
  %used_bits = alloca i32, align 4
  %min_bits = alloca i32, align 4
  %max_bits = alloca i32, align 4
  %min_mean_bits = alloca i32, align 4
  %frameBits = alloca [15 x i32], align 16
  %bitsPerFrame = alloca i32, align 4
  %bits = alloca i32, align 4
  %mean_bits = alloca i32, align 4
  %i = alloca i32, align 4
  %ch = alloca i32, align 4
  %gr = alloca i32, align 4
  %analog_silence = alloca i32, align 4
  %reparted = alloca i32, align 4
  %num_chan = alloca i32, align 4
  %real_bits = alloca i32, align 4
  %cleanup.dest.slot = alloca i32
  %better = alloca i32, align 4
  %fac = alloca double, align 8
  store %struct.lame_global_flags* %gfp, %struct.lame_global_flags** %gfp.addr, align 8, !tbaa !1
  store [2 x double]* %pe, [2 x double]** %pe.addr, align 8, !tbaa !1
  store double* %ms_ener_ratio, double** %ms_ener_ratio.addr, align 8, !tbaa !1
  store [2 x [576 x double]]* %xr, [2 x [576 x double]]** %xr.addr, align 8, !tbaa !1
  store [2 x %struct.III_psy_ratio]* %ratio, [2 x %struct.III_psy_ratio]** %ratio.addr, align 8, !tbaa !1
  store %struct.III_side_info_t* %l3_side, %struct.III_side_info_t** %l3_side.addr, align 8, !tbaa !1
  store [2 x [576 x i32]]* %l3_enc, [2 x [576 x i32]]** %l3_enc.addr, align 8, !tbaa !1
  store [2 x %struct.III_scalefac_t]* %scalefac, [2 x %struct.III_scalefac_t]** %scalefac.addr, align 8, !tbaa !1
  %0 = bitcast %struct.gr_info* %bst_cod_info to i8*
  call void @llvm.lifetime.start(i64 120, i8* %0) #1
  %1 = bitcast %struct.gr_info* %clean_cod_info to i8*
  call void @llvm.lifetime.start(i64 120, i8* %1) #1
  %2 = bitcast %struct.III_scalefac_t* %bst_scalefac to i8*
  call void @llvm.lifetime.start(i64 244, i8* %2) #1
  %3 = bitcast [576 x i32]* %bst_l3_enc to i8*
  call void @llvm.lifetime.start(i64 2304, i8* %3) #1
  %4 = bitcast %struct.III_psy_xmin* %l3_xmin to i8*
  call void @llvm.lifetime.start(i64 488, i8* %4) #1
  %5 = bitcast %struct.gr_info** %cod_info to i8*
  call void @llvm.lifetime.start(i64 8, i8* %5) #1
  store %struct.gr_info* null, %struct.gr_info** %cod_info, align 8, !tbaa !1
  %6 = bitcast [2 x [2 x i32]]* %save_bits to i8*
  call void @llvm.lifetime.start(i64 16, i8* %6) #1
  %7 = bitcast [4 x double]* %noise to i8*
  call void @llvm.lifetime.start(i64 32, i8* %7) #1
  %8 = bitcast [4 x double]* %targ_noise to i8*
  call void @llvm.lifetime.start(i64 32, i8* %8) #1
  %9 = bitcast [4 x [21 x double]]* %xfsf to i8*
  call void @llvm.lifetime.start(i64 672, i8* %9) #1
  %10 = bitcast i32* %this_bits to i8*
  call void @llvm.lifetime.start(i64 4, i8* %10) #1
  %11 = bitcast i32* %dbits to i8*
  call void @llvm.lifetime.start(i64 4, i8* %11) #1
  %12 = bitcast i32* %used_bits to i8*
  call void @llvm.lifetime.start(i64 4, i8* %12) #1
  store i32 0, i32* %used_bits, align 4, !tbaa !11
  %13 = bitcast i32* %min_bits to i8*
  call void @llvm.lifetime.start(i64 4, i8* %13) #1
  %14 = bitcast i32* %max_bits to i8*
  call void @llvm.lifetime.start(i64 4, i8* %14) #1
  %15 = bitcast i32* %min_mean_bits to i8*
  call void @llvm.lifetime.start(i64 4, i8* %15) #1
  store i32 0, i32* %min_mean_bits, align 4, !tbaa !11
  %16 = bitcast [15 x i32]* %frameBits to i8*
  call void @llvm.lifetime.start(i64 60, i8* %16) #1
  %17 = bitcast i32* %bitsPerFrame to i8*
  call void @llvm.lifetime.start(i64 4, i8* %17) #1
  %18 = bitcast i32* %bits to i8*
  call void @llvm.lifetime.start(i64 4, i8* %18) #1
  %19 = bitcast i32* %mean_bits to i8*
  call void @llvm.lifetime.start(i64 4, i8* %19) #1
  %20 = bitcast i32* %i to i8*
  call void @llvm.lifetime.start(i64 4, i8* %20) #1
  %21 = bitcast i32* %ch to i8*
  call void @llvm.lifetime.start(i64 4, i8* %21) #1
  %22 = bitcast i32* %gr to i8*
  call void @llvm.lifetime.start(i64 4, i8* %22) #1
  %23 = bitcast i32* %analog_silence to i8*
  call void @llvm.lifetime.start(i64 4, i8* %23) #1
  %24 = bitcast i32* %reparted to i8*
  call void @llvm.lifetime.start(i64 4, i8* %24) #1
  store i32 0, i32* %reparted, align 4, !tbaa !11
  %25 = load %struct.lame_global_flags*, %struct.lame_global_flags** %gfp.addr, align 8, !tbaa !1
  %26 = load %struct.III_side_info_t*, %struct.III_side_info_t** %l3_side.addr, align 8, !tbaa !1
  %27 = load [2 x [576 x i32]]*, [2 x [576 x i32]]** %l3_enc.addr, align 8, !tbaa !1
  call void @iteration_init(%struct.lame_global_flags* %25, %struct.III_side_info_t* %26, [2 x [576 x i32]]* %27)
  %28 = load %struct.lame_global_flags*, %struct.lame_global_flags** %gfp.addr, align 8, !tbaa !1
  %bitrate_index = getelementptr inbounds %struct.lame_global_flags, %struct.lame_global_flags* %28, i32 0, i32 50
  store i32 1, i32* %bitrate_index, align 4, !tbaa !5
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %29 = load %struct.lame_global_flags*, %struct.lame_global_flags** %gfp.addr, align 8, !tbaa !1
  %bitrate_index1 = getelementptr inbounds %struct.lame_global_flags, %struct.lame_global_flags* %29, i32 0, i32 50
  %30 = load i32, i32* %bitrate_index1, align 4, !tbaa !5
  %31 = load %struct.lame_global_flags*, %struct.lame_global_flags** %gfp.addr, align 8, !tbaa !1
  %VBR_max_bitrate = getelementptr inbounds %struct.lame_global_flags, %struct.lame_global_flags* %31, i32 0, i32 48
  %32 = load i32, i32* %VBR_max_bitrate, align 4, !tbaa !38
  %cmp = icmp sle i32 %30, %32
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %33 = load %struct.lame_global_flags*, %struct.lame_global_flags** %gfp.addr, align 8, !tbaa !1
  call void @getframebits(%struct.lame_global_flags* %33, i32* %bitsPerFrame, i32* %mean_bits)
  %34 = load %struct.lame_global_flags*, %struct.lame_global_flags** %gfp.addr, align 8, !tbaa !1
  %bitrate_index2 = getelementptr inbounds %struct.lame_global_flags, %struct.lame_global_flags* %34, i32 0, i32 50
  %35 = load i32, i32* %bitrate_index2, align 4, !tbaa !5
  %36 = load %struct.lame_global_flags*, %struct.lame_global_flags** %gfp.addr, align 8, !tbaa !1
  %VBR_min_bitrate = getelementptr inbounds %struct.lame_global_flags, %struct.lame_global_flags* %36, i32 0, i32 47
  %37 = load i32, i32* %VBR_min_bitrate, align 4, !tbaa !39
  %cmp3 = icmp eq i32 %35, %37
  br i1 %cmp3, label %if.then, label %if.end

if.then:                                          ; preds = %for.body
  %38 = load i32, i32* %mean_bits, align 4, !tbaa !11
  %39 = load %struct.lame_global_flags*, %struct.lame_global_flags** %gfp.addr, align 8, !tbaa !1
  %stereo = getelementptr inbounds %struct.lame_global_flags, %struct.lame_global_flags* %39, i32 0, i32 46
  %40 = load i32, i32* %stereo, align 4, !tbaa !15
  %div = sdiv i32 %38, %40
  store i32 %div, i32* %min_mean_bits, align 4, !tbaa !11
  br label %if.end

if.end:                                           ; preds = %if.then, %for.body
  %41 = load %struct.lame_global_flags*, %struct.lame_global_flags** %gfp.addr, align 8, !tbaa !1
  %42 = load %struct.III_side_info_t*, %struct.III_side_info_t** %l3_side.addr, align 8, !tbaa !1
  %43 = load i32, i32* %mean_bits, align 4, !tbaa !11
  %44 = load i32, i32* %bitsPerFrame, align 4, !tbaa !11
  %call = call i32 @ResvFrameBegin(%struct.lame_global_flags* %41, %struct.III_side_info_t* %42, i32 %43, i32 %44)
  %45 = load %struct.lame_global_flags*, %struct.lame_global_flags** %gfp.addr, align 8, !tbaa !1
  %bitrate_index4 = getelementptr inbounds %struct.lame_global_flags, %struct.lame_global_flags* %45, i32 0, i32 50
  %46 = load i32, i32* %bitrate_index4, align 4, !tbaa !5
  %idxprom = sext i32 %46 to i64
  %arrayidx = getelementptr inbounds [15 x i32], [15 x i32]* %frameBits, i32 0, i64 %idxprom
  store i32 %call, i32* %arrayidx, align 4, !tbaa !11
  br label %for.inc

for.inc:                                          ; preds = %if.end
  %47 = load %struct.lame_global_flags*, %struct.lame_global_flags** %gfp.addr, align 8, !tbaa !1
  %bitrate_index5 = getelementptr inbounds %struct.lame_global_flags, %struct.lame_global_flags* %47, i32 0, i32 50
  %48 = load i32, i32* %bitrate_index5, align 4, !tbaa !5
  %inc = add nsw i32 %48, 1
  store i32 %inc, i32* %bitrate_index5, align 4, !tbaa !5
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %49 = load %struct.lame_global_flags*, %struct.lame_global_flags** %gfp.addr, align 8, !tbaa !1
  %VBR_max_bitrate6 = getelementptr inbounds %struct.lame_global_flags, %struct.lame_global_flags* %49, i32 0, i32 48
  %50 = load i32, i32* %VBR_max_bitrate6, align 4, !tbaa !38
  %51 = load %struct.lame_global_flags*, %struct.lame_global_flags** %gfp.addr, align 8, !tbaa !1
  %bitrate_index7 = getelementptr inbounds %struct.lame_global_flags, %struct.lame_global_flags* %51, i32 0, i32 50
  store i32 %50, i32* %bitrate_index7, align 4, !tbaa !5
  store i32 0, i32* %analog_silence, align 4, !tbaa !11
  store i32 0, i32* %gr, align 4, !tbaa !11
  br label %for.cond.8

for.cond.8:                                       ; preds = %for.inc.222, %for.end
  %52 = load i32, i32* %gr, align 4, !tbaa !11
  %53 = load %struct.lame_global_flags*, %struct.lame_global_flags** %gfp.addr, align 8, !tbaa !1
  %mode_gr = getelementptr inbounds %struct.lame_global_flags, %struct.lame_global_flags* %53, i32 0, i32 45
  %54 = load i32, i32* %mode_gr, align 4, !tbaa !12
  %cmp9 = icmp slt i32 %52, %54
  br i1 %cmp9, label %for.body.10, label %for.end.224

for.body.10:                                      ; preds = %for.cond.8
  %55 = bitcast i32* %num_chan to i8*
  call void @llvm.lifetime.start(i64 4, i8* %55) #1
  %56 = load %struct.lame_global_flags*, %struct.lame_global_flags** %gfp.addr, align 8, !tbaa !1
  %stereo11 = getelementptr inbounds %struct.lame_global_flags, %struct.lame_global_flags* %56, i32 0, i32 46
  %57 = load i32, i32* %stereo11, align 4, !tbaa !15
  store i32 %57, i32* %num_chan, align 4, !tbaa !11
  %58 = load i32, i32* @reduce_sidechannel, align 4, !tbaa !11
  %tobool = icmp ne i32 %58, 0
  br i1 %tobool, label %if.then.12, label %if.end.13

if.then.12:                                       ; preds = %for.body.10
  store i32 1, i32* %num_chan, align 4, !tbaa !11
  br label %if.end.13

if.end.13:                                        ; preds = %if.then.12, %for.body.10
  %59 = load i32, i32* @convert_mdct, align 4, !tbaa !11
  %tobool14 = icmp ne i32 %59, 0
  br i1 %tobool14, label %if.then.15, label %if.end.21

if.then.15:                                       ; preds = %if.end.13
  %60 = load i32, i32* %gr, align 4, !tbaa !11
  %idxprom16 = sext i32 %60 to i64
  %61 = load [2 x [576 x double]]*, [2 x [576 x double]]** %xr.addr, align 8, !tbaa !1
  %arrayidx17 = getelementptr inbounds [2 x [576 x double]], [2 x [576 x double]]* %61, i64 %idxprom16
  %arraydecay = getelementptr inbounds [2 x [576 x double]], [2 x [576 x double]]* %arrayidx17, i32 0, i32 0
  %62 = load i32, i32* %gr, align 4, !tbaa !11
  %idxprom18 = sext i32 %62 to i64
  %63 = load [2 x [576 x double]]*, [2 x [576 x double]]** %xr.addr, align 8, !tbaa !1
  %arrayidx19 = getelementptr inbounds [2 x [576 x double]], [2 x [576 x double]]* %63, i64 %idxprom18
  %arraydecay20 = getelementptr inbounds [2 x [576 x double]], [2 x [576 x double]]* %arrayidx19, i32 0, i32 0
  call void @ms_convert([576 x double]* %arraydecay, [576 x double]* %arraydecay20)
  br label %if.end.21

if.end.21:                                        ; preds = %if.then.15, %if.end.13
  store i32 0, i32* %ch, align 4, !tbaa !11
  br label %for.cond.22

for.cond.22:                                      ; preds = %for.inc.219, %if.end.21
  %64 = load i32, i32* %ch, align 4, !tbaa !11
  %65 = load i32, i32* %num_chan, align 4, !tbaa !11
  %cmp23 = icmp slt i32 %64, %65
  br i1 %cmp23, label %for.body.24, label %for.end.221

for.body.24:                                      ; preds = %for.cond.22
  %66 = bitcast i32* %real_bits to i8*
  call void @llvm.lifetime.start(i64 4, i8* %66) #1
  %67 = load i32, i32* %ch, align 4, !tbaa !11
  %idxprom25 = sext i32 %67 to i64
  %68 = load i32, i32* %gr, align 4, !tbaa !11
  %idxprom26 = sext i32 %68 to i64
  %69 = load %struct.III_side_info_t*, %struct.III_side_info_t** %l3_side.addr, align 8, !tbaa !1
  %gr27 = getelementptr inbounds %struct.III_side_info_t, %struct.III_side_info_t* %69, i32 0, i32 4
  %arrayidx28 = getelementptr inbounds [2 x %struct.anon], [2 x %struct.anon]* %gr27, i32 0, i64 %idxprom26
  %ch29 = getelementptr inbounds %struct.anon, %struct.anon* %arrayidx28, i32 0, i32 0
  %arrayidx30 = getelementptr inbounds [2 x %struct.gr_info_ss], [2 x %struct.gr_info_ss]* %ch29, i32 0, i64 %idxprom25
  %tt = getelementptr inbounds %struct.gr_info_ss, %struct.gr_info_ss* %arrayidx30, i32 0, i32 0
  store %struct.gr_info* %tt, %struct.gr_info** %cod_info, align 8, !tbaa !1
  %70 = load i32, i32* %min_mean_bits, align 4, !tbaa !11
  %cmp31 = icmp sgt i32 125, %70
  br i1 %cmp31, label %cond.true, label %cond.false

cond.true:                                        ; preds = %for.body.24
  br label %cond.end

cond.false:                                       ; preds = %for.body.24
  %71 = load i32, i32* %min_mean_bits, align 4, !tbaa !11
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ 125, %cond.true ], [ %71, %cond.false ]
  store i32 %cond, i32* %min_bits, align 4, !tbaa !11
  %72 = load %struct.lame_global_flags*, %struct.lame_global_flags** %gfp.addr, align 8, !tbaa !1
  %73 = load i32, i32* %ch, align 4, !tbaa !11
  %idxprom32 = sext i32 %73 to i64
  %74 = load i32, i32* %gr, align 4, !tbaa !11
  %idxprom33 = sext i32 %74 to i64
  %75 = load [2 x [576 x double]]*, [2 x [576 x double]]** %xr.addr, align 8, !tbaa !1
  %arrayidx34 = getelementptr inbounds [2 x [576 x double]], [2 x [576 x double]]* %75, i64 %idxprom33
  %arrayidx35 = getelementptr inbounds [2 x [576 x double]], [2 x [576 x double]]* %arrayidx34, i32 0, i64 %idxprom32
  %arraydecay36 = getelementptr inbounds [576 x double], [576 x double]* %arrayidx35, i32 0, i32 0
  %76 = load %struct.gr_info*, %struct.gr_info** %cod_info, align 8, !tbaa !1
  %call37 = call i32 @init_outer_loop(%struct.lame_global_flags* %72, double* %arraydecay36, %struct.gr_info* %76)
  %tobool38 = icmp ne i32 %call37, 0
  br i1 %tobool38, label %if.end.52, label %if.then.39

if.then.39:                                       ; preds = %cond.end
  %77 = load i32, i32* %ch, align 4, !tbaa !11
  %idxprom40 = sext i32 %77 to i64
  %78 = load i32, i32* %gr, align 4, !tbaa !11
  %idxprom41 = sext i32 %78 to i64
  %79 = load [2 x %struct.III_scalefac_t]*, [2 x %struct.III_scalefac_t]** %scalefac.addr, align 8, !tbaa !1
  %arrayidx42 = getelementptr inbounds [2 x %struct.III_scalefac_t], [2 x %struct.III_scalefac_t]* %79, i64 %idxprom41
  %arrayidx43 = getelementptr inbounds [2 x %struct.III_scalefac_t], [2 x %struct.III_scalefac_t]* %arrayidx42, i32 0, i64 %idxprom40
  %80 = bitcast %struct.III_scalefac_t* %arrayidx43 to i8*
  call void @llvm.memset.p0i8.i64(i8* %80, i8 0, i64 244, i32 4, i1 false)
  %81 = load i32, i32* %ch, align 4, !tbaa !11
  %idxprom44 = sext i32 %81 to i64
  %82 = load i32, i32* %gr, align 4, !tbaa !11
  %idxprom45 = sext i32 %82 to i64
  %83 = load [2 x [576 x i32]]*, [2 x [576 x i32]]** %l3_enc.addr, align 8, !tbaa !1
  %arrayidx46 = getelementptr inbounds [2 x [576 x i32]], [2 x [576 x i32]]* %83, i64 %idxprom45
  %arrayidx47 = getelementptr inbounds [2 x [576 x i32]], [2 x [576 x i32]]* %arrayidx46, i32 0, i64 %idxprom44
  %84 = bitcast [576 x i32]* %arrayidx47 to i8*
  call void @llvm.memset.p0i8.i64(i8* %84, i8 0, i64 2304, i32 4, i1 false)
  %85 = load i32, i32* %ch, align 4, !tbaa !11
  %idxprom48 = sext i32 %85 to i64
  %86 = load i32, i32* %gr, align 4, !tbaa !11
  %idxprom49 = sext i32 %86 to i64
  %arrayidx50 = getelementptr inbounds [2 x [2 x i32]], [2 x [2 x i32]]* %save_bits, i32 0, i64 %idxprom49
  %arrayidx51 = getelementptr inbounds [2 x i32], [2 x i32]* %arrayidx50, i32 0, i64 %idxprom48
  store i32 0, i32* %arrayidx51, align 4, !tbaa !11
  store i32 1, i32* %analog_silence, align 4, !tbaa !11
  store i32 10, i32* %cleanup.dest.slot
  br label %cleanup.216

if.end.52:                                        ; preds = %cond.end
  %87 = bitcast %struct.gr_info* %clean_cod_info to i8*
  %88 = load %struct.gr_info*, %struct.gr_info** %cod_info, align 8, !tbaa !1
  %89 = bitcast %struct.gr_info* %88 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %87, i8* %89, i64 120, i32 8, i1 false)
  %90 = load %struct.lame_global_flags*, %struct.lame_global_flags** %gfp.addr, align 8, !tbaa !1
  %VBR_q = getelementptr inbounds %struct.lame_global_flags, %struct.lame_global_flags* %90, i32 0, i32 22
  %91 = load i32, i32* %VBR_q, align 4, !tbaa !40
  call void @set_masking_lower(i32 %91, i32 2500)
  %92 = load %struct.lame_global_flags*, %struct.lame_global_flags** %gfp.addr, align 8, !tbaa !1
  %93 = load i32, i32* %ch, align 4, !tbaa !11
  %idxprom53 = sext i32 %93 to i64
  %94 = load i32, i32* %gr, align 4, !tbaa !11
  %idxprom54 = sext i32 %94 to i64
  %95 = load [2 x [576 x double]]*, [2 x [576 x double]]** %xr.addr, align 8, !tbaa !1
  %arrayidx55 = getelementptr inbounds [2 x [576 x double]], [2 x [576 x double]]* %95, i64 %idxprom54
  %arrayidx56 = getelementptr inbounds [2 x [576 x double]], [2 x [576 x double]]* %arrayidx55, i32 0, i64 %idxprom53
  %arraydecay57 = getelementptr inbounds [576 x double], [576 x double]* %arrayidx56, i32 0, i32 0
  %96 = load i32, i32* %ch, align 4, !tbaa !11
  %idxprom58 = sext i32 %96 to i64
  %97 = load i32, i32* %gr, align 4, !tbaa !11
  %idxprom59 = sext i32 %97 to i64
  %98 = load [2 x %struct.III_psy_ratio]*, [2 x %struct.III_psy_ratio]** %ratio.addr, align 8, !tbaa !1
  %arrayidx60 = getelementptr inbounds [2 x %struct.III_psy_ratio], [2 x %struct.III_psy_ratio]* %98, i64 %idxprom59
  %arrayidx61 = getelementptr inbounds [2 x %struct.III_psy_ratio], [2 x %struct.III_psy_ratio]* %arrayidx60, i32 0, i64 %idxprom58
  %99 = load %struct.gr_info*, %struct.gr_info** %cod_info, align 8, !tbaa !1
  %call62 = call i32 @calc_xmin(%struct.lame_global_flags* %92, double* %arraydecay57, %struct.III_psy_ratio* %arrayidx61, %struct.gr_info* %99, %struct.III_psy_xmin* %l3_xmin)
  %cmp63 = icmp eq i32 0, %call62
  br i1 %cmp63, label %if.then.64, label %if.end.65

if.then.64:                                       ; preds = %if.end.52
  store i32 1, i32* %analog_silence, align 4, !tbaa !11
  store i32 125, i32* %min_bits, align 4, !tbaa !11
  br label %if.end.65

if.end.65:                                        ; preds = %if.then.64, %if.end.52
  %100 = load %struct.gr_info*, %struct.gr_info** %cod_info, align 8, !tbaa !1
  %block_type = getelementptr inbounds %struct.gr_info, %struct.gr_info* %100, i32 0, i32 6
  %101 = load i32, i32* %block_type, align 4, !tbaa !17
  %cmp66 = icmp eq i32 %101, 2
  br i1 %cmp66, label %if.then.67, label %if.end.88

if.then.67:                                       ; preds = %if.end.65
  %102 = load i32, i32* %ch, align 4, !tbaa !11
  %idxprom68 = sext i32 %102 to i64
  %103 = load i32, i32* %gr, align 4, !tbaa !11
  %idxprom69 = sext i32 %103 to i64
  %104 = load [2 x double]*, [2 x double]** %pe.addr, align 8, !tbaa !1
  %arrayidx70 = getelementptr inbounds [2 x double], [2 x double]* %104, i64 %idxprom69
  %arrayidx71 = getelementptr inbounds [2 x double], [2 x double]* %arrayidx70, i32 0, i64 %idxprom68
  %105 = load double, double* %arrayidx71, align 8, !tbaa !13
  %cmp72 = fcmp ogt double 1.100000e+03, %105
  br i1 %cmp72, label %cond.true.73, label %cond.false.74

cond.true.73:                                     ; preds = %if.then.67
  br label %cond.end.79

cond.false.74:                                    ; preds = %if.then.67
  %106 = load i32, i32* %ch, align 4, !tbaa !11
  %idxprom75 = sext i32 %106 to i64
  %107 = load i32, i32* %gr, align 4, !tbaa !11
  %idxprom76 = sext i32 %107 to i64
  %108 = load [2 x double]*, [2 x double]** %pe.addr, align 8, !tbaa !1
  %arrayidx77 = getelementptr inbounds [2 x double], [2 x double]* %108, i64 %idxprom76
  %arrayidx78 = getelementptr inbounds [2 x double], [2 x double]* %arrayidx77, i32 0, i64 %idxprom75
  %109 = load double, double* %arrayidx78, align 8, !tbaa !13
  br label %cond.end.79

cond.end.79:                                      ; preds = %cond.false.74, %cond.true.73
  %cond80 = phi double [ 1.100000e+03, %cond.true.73 ], [ %109, %cond.false.74 ]
  %110 = load i32, i32* %min_bits, align 4, !tbaa !11
  %conv = sitofp i32 %110 to double
  %add = fadd double %conv, %cond80
  %conv81 = fptosi double %add to i32
  store i32 %conv81, i32* %min_bits, align 4, !tbaa !11
  %111 = load i32, i32* %min_bits, align 4, !tbaa !11
  %cmp82 = icmp slt i32 %111, 1800
  br i1 %cmp82, label %cond.true.84, label %cond.false.85

cond.true.84:                                     ; preds = %cond.end.79
  %112 = load i32, i32* %min_bits, align 4, !tbaa !11
  br label %cond.end.86

cond.false.85:                                    ; preds = %cond.end.79
  br label %cond.end.86

cond.end.86:                                      ; preds = %cond.false.85, %cond.true.84
  %cond87 = phi i32 [ %112, %cond.true.84 ], [ 1800, %cond.false.85 ]
  store i32 %cond87, i32* %min_bits, align 4, !tbaa !11
  br label %if.end.88

if.end.88:                                        ; preds = %cond.end.86, %if.end.65
  %113 = load %struct.lame_global_flags*, %struct.lame_global_flags** %gfp.addr, align 8, !tbaa !1
  %VBR_max_bitrate89 = getelementptr inbounds %struct.lame_global_flags, %struct.lame_global_flags* %113, i32 0, i32 48
  %114 = load i32, i32* %VBR_max_bitrate89, align 4, !tbaa !38
  %idxprom90 = sext i32 %114 to i64
  %arrayidx91 = getelementptr inbounds [15 x i32], [15 x i32]* %frameBits, i32 0, i64 %idxprom90
  %115 = load i32, i32* %arrayidx91, align 4, !tbaa !11
  %116 = load %struct.lame_global_flags*, %struct.lame_global_flags** %gfp.addr, align 8, !tbaa !1
  %stereo92 = getelementptr inbounds %struct.lame_global_flags, %struct.lame_global_flags* %116, i32 0, i32 46
  %117 = load i32, i32* %stereo92, align 4, !tbaa !15
  %118 = load %struct.lame_global_flags*, %struct.lame_global_flags** %gfp.addr, align 8, !tbaa !1
  %mode_gr93 = getelementptr inbounds %struct.lame_global_flags, %struct.lame_global_flags* %118, i32 0, i32 45
  %119 = load i32, i32* %mode_gr93, align 4, !tbaa !12
  %mul = mul nsw i32 %117, %119
  %div94 = sdiv i32 %115, %mul
  %add95 = add nsw i32 1200, %div94
  store i32 %add95, i32* %max_bits, align 4, !tbaa !11
  %120 = load i32, i32* %max_bits, align 4, !tbaa !11
  %cmp96 = icmp slt i32 %120, 2500
  br i1 %cmp96, label %cond.true.98, label %cond.false.99

cond.true.98:                                     ; preds = %if.end.88
  %121 = load i32, i32* %max_bits, align 4, !tbaa !11
  br label %cond.end.100

cond.false.99:                                    ; preds = %if.end.88
  br label %cond.end.100

cond.end.100:                                     ; preds = %cond.false.99, %cond.true.98
  %cond101 = phi i32 [ %121, %cond.true.98 ], [ 2500, %cond.false.99 ]
  store i32 %cond101, i32* %max_bits, align 4, !tbaa !11
  %122 = load i32, i32* %max_bits, align 4, !tbaa !11
  %123 = load i32, i32* %min_bits, align 4, !tbaa !11
  %cmp102 = icmp sgt i32 %122, %123
  br i1 %cmp102, label %cond.true.104, label %cond.false.105

cond.true.104:                                    ; preds = %cond.end.100
  %124 = load i32, i32* %max_bits, align 4, !tbaa !11
  br label %cond.end.106

cond.false.105:                                   ; preds = %cond.end.100
  %125 = load i32, i32* %min_bits, align 4, !tbaa !11
  br label %cond.end.106

cond.end.106:                                     ; preds = %cond.false.105, %cond.true.104
  %cond107 = phi i32 [ %124, %cond.true.104 ], [ %125, %cond.false.105 ]
  store i32 %cond107, i32* %max_bits, align 4, !tbaa !11
  %126 = load i32, i32* %max_bits, align 4, !tbaa !11
  %127 = load i32, i32* %min_bits, align 4, !tbaa !11
  %sub = sub nsw i32 %126, %127
  %div108 = sdiv i32 %sub, 4
  store i32 %div108, i32* %dbits, align 4, !tbaa !11
  %128 = load i32, i32* %max_bits, align 4, !tbaa !11
  %129 = load i32, i32* %min_bits, align 4, !tbaa !11
  %add109 = add nsw i32 %128, %129
  %div110 = sdiv i32 %add109, 2
  store i32 %div110, i32* %this_bits, align 4, !tbaa !11
  %130 = load i32, i32* %max_bits, align 4, !tbaa !11
  %add111 = add nsw i32 %130, 1
  store i32 %add111, i32* %real_bits, align 4, !tbaa !11
  br label %do.body

do.body:                                          ; preds = %do.cond, %cond.end.106
  %131 = bitcast i32* %better to i8*
  call void @llvm.lifetime.start(i64 4, i8* %131) #1
  %132 = load i32, i32* %this_bits, align 4, !tbaa !11
  %133 = load i32, i32* %real_bits, align 4, !tbaa !11
  %cmp112 = icmp sge i32 %132, %133
  br i1 %cmp112, label %if.then.114, label %if.end.117

if.then.114:                                      ; preds = %do.body
  %134 = load i32, i32* %dbits, align 4, !tbaa !11
  %135 = load i32, i32* %this_bits, align 4, !tbaa !11
  %sub115 = sub nsw i32 %135, %134
  store i32 %sub115, i32* %this_bits, align 4, !tbaa !11
  %136 = load i32, i32* %dbits, align 4, !tbaa !11
  %div116 = sdiv i32 %136, 2
  store i32 %div116, i32* %dbits, align 4, !tbaa !11
  store i32 12, i32* %cleanup.dest.slot
  br label %cleanup

if.end.117:                                       ; preds = %do.body
  %arrayidx118 = getelementptr inbounds [4 x double], [4 x double]* %targ_noise, i32 0, i64 0
  store double 0.000000e+00, double* %arrayidx118, align 8, !tbaa !13
  %arrayidx119 = getelementptr inbounds [4 x double], [4 x double]* %targ_noise, i32 0, i64 1
  store double 0.000000e+00, double* %arrayidx119, align 8, !tbaa !13
  %arrayidx120 = getelementptr inbounds [4 x double], [4 x double]* %targ_noise, i32 0, i64 2
  store double 0.000000e+00, double* %arrayidx120, align 8, !tbaa !13
  %arrayidx121 = getelementptr inbounds [4 x double], [4 x double]* %targ_noise, i32 0, i64 3
  store double 0.000000e+00, double* %arrayidx121, align 8, !tbaa !13
  %arrayidx122 = getelementptr inbounds [4 x double], [4 x double]* %targ_noise, i32 0, i64 0
  %137 = load double, double* %arrayidx122, align 8, !tbaa !13
  %cmp123 = fcmp ogt double 0.000000e+00, %137
  br i1 %cmp123, label %cond.true.125, label %cond.false.126

cond.true.125:                                    ; preds = %if.end.117
  br label %cond.end.128

cond.false.126:                                   ; preds = %if.end.117
  %arrayidx127 = getelementptr inbounds [4 x double], [4 x double]* %targ_noise, i32 0, i64 0
  %138 = load double, double* %arrayidx127, align 8, !tbaa !13
  br label %cond.end.128

cond.end.128:                                     ; preds = %cond.false.126, %cond.true.125
  %cond129 = phi double [ 0.000000e+00, %cond.true.125 ], [ %138, %cond.false.126 ]
  %arrayidx130 = getelementptr inbounds [4 x double], [4 x double]* %targ_noise, i32 0, i64 0
  store double %cond129, double* %arrayidx130, align 8, !tbaa !13
  %arrayidx131 = getelementptr inbounds [4 x double], [4 x double]* %targ_noise, i32 0, i64 2
  %139 = load double, double* %arrayidx131, align 8, !tbaa !13
  %cmp132 = fcmp ogt double 0.000000e+00, %139
  br i1 %cmp132, label %cond.true.134, label %cond.false.135

cond.true.134:                                    ; preds = %cond.end.128
  br label %cond.end.137

cond.false.135:                                   ; preds = %cond.end.128
  %arrayidx136 = getelementptr inbounds [4 x double], [4 x double]* %targ_noise, i32 0, i64 2
  %140 = load double, double* %arrayidx136, align 8, !tbaa !13
  br label %cond.end.137

cond.end.137:                                     ; preds = %cond.false.135, %cond.true.134
  %cond138 = phi double [ 0.000000e+00, %cond.true.134 ], [ %140, %cond.false.135 ]
  %arrayidx139 = getelementptr inbounds [4 x double], [4 x double]* %targ_noise, i32 0, i64 2
  store double %cond138, double* %arrayidx139, align 8, !tbaa !13
  %141 = load %struct.gr_info*, %struct.gr_info** %cod_info, align 8, !tbaa !1
  %142 = bitcast %struct.gr_info* %141 to i8*
  %143 = bitcast %struct.gr_info* %clean_cod_info to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %142, i8* %143, i64 120, i32 8, i1 false)
  %144 = load %struct.lame_global_flags*, %struct.lame_global_flags** %gfp.addr, align 8, !tbaa !1
  %VBR_q140 = getelementptr inbounds %struct.lame_global_flags, %struct.lame_global_flags* %144, i32 0, i32 22
  %145 = load i32, i32* %VBR_q140, align 4, !tbaa !40
  %146 = load i32, i32* %this_bits, align 4, !tbaa !11
  call void @set_masking_lower(i32 %145, i32 %146)
  %147 = load %struct.lame_global_flags*, %struct.lame_global_flags** %gfp.addr, align 8, !tbaa !1
  %148 = load i32, i32* %ch, align 4, !tbaa !11
  %idxprom141 = sext i32 %148 to i64
  %149 = load i32, i32* %gr, align 4, !tbaa !11
  %idxprom142 = sext i32 %149 to i64
  %150 = load [2 x [576 x double]]*, [2 x [576 x double]]** %xr.addr, align 8, !tbaa !1
  %arrayidx143 = getelementptr inbounds [2 x [576 x double]], [2 x [576 x double]]* %150, i64 %idxprom142
  %arrayidx144 = getelementptr inbounds [2 x [576 x double]], [2 x [576 x double]]* %arrayidx143, i32 0, i64 %idxprom141
  %arraydecay145 = getelementptr inbounds [576 x double], [576 x double]* %arrayidx144, i32 0, i32 0
  %151 = load i32, i32* %ch, align 4, !tbaa !11
  %idxprom146 = sext i32 %151 to i64
  %152 = load i32, i32* %gr, align 4, !tbaa !11
  %idxprom147 = sext i32 %152 to i64
  %153 = load [2 x %struct.III_psy_ratio]*, [2 x %struct.III_psy_ratio]** %ratio.addr, align 8, !tbaa !1
  %arrayidx148 = getelementptr inbounds [2 x %struct.III_psy_ratio], [2 x %struct.III_psy_ratio]* %153, i64 %idxprom147
  %arrayidx149 = getelementptr inbounds [2 x %struct.III_psy_ratio], [2 x %struct.III_psy_ratio]* %arrayidx148, i32 0, i64 %idxprom146
  %154 = load %struct.gr_info*, %struct.gr_info** %cod_info, align 8, !tbaa !1
  %call150 = call i32 @calc_xmin(%struct.lame_global_flags* %147, double* %arraydecay145, %struct.III_psy_ratio* %arrayidx149, %struct.gr_info* %154, %struct.III_psy_xmin* %l3_xmin)
  %155 = load %struct.lame_global_flags*, %struct.lame_global_flags** %gfp.addr, align 8, !tbaa !1
  %156 = load i32, i32* %ch, align 4, !tbaa !11
  %idxprom151 = sext i32 %156 to i64
  %157 = load i32, i32* %gr, align 4, !tbaa !11
  %idxprom152 = sext i32 %157 to i64
  %158 = load [2 x [576 x double]]*, [2 x [576 x double]]** %xr.addr, align 8, !tbaa !1
  %arrayidx153 = getelementptr inbounds [2 x [576 x double]], [2 x [576 x double]]* %158, i64 %idxprom152
  %arrayidx154 = getelementptr inbounds [2 x [576 x double]], [2 x [576 x double]]* %arrayidx153, i32 0, i64 %idxprom151
  %arraydecay155 = getelementptr inbounds [576 x double], [576 x double]* %arrayidx154, i32 0, i32 0
  %159 = load i32, i32* %this_bits, align 4, !tbaa !11
  %arraydecay156 = getelementptr inbounds [4 x double], [4 x double]* %noise, i32 0, i32 0
  %160 = load i32, i32* %ch, align 4, !tbaa !11
  %idxprom157 = sext i32 %160 to i64
  %161 = load i32, i32* %gr, align 4, !tbaa !11
  %idxprom158 = sext i32 %161 to i64
  %162 = load [2 x [576 x i32]]*, [2 x [576 x i32]]** %l3_enc.addr, align 8, !tbaa !1
  %arrayidx159 = getelementptr inbounds [2 x [576 x i32]], [2 x [576 x i32]]* %162, i64 %idxprom158
  %arrayidx160 = getelementptr inbounds [2 x [576 x i32]], [2 x [576 x i32]]* %arrayidx159, i32 0, i64 %idxprom157
  %arraydecay161 = getelementptr inbounds [576 x i32], [576 x i32]* %arrayidx160, i32 0, i32 0
  %163 = load i32, i32* %ch, align 4, !tbaa !11
  %idxprom162 = sext i32 %163 to i64
  %164 = load i32, i32* %gr, align 4, !tbaa !11
  %idxprom163 = sext i32 %164 to i64
  %165 = load [2 x %struct.III_scalefac_t]*, [2 x %struct.III_scalefac_t]** %scalefac.addr, align 8, !tbaa !1
  %arrayidx164 = getelementptr inbounds [2 x %struct.III_scalefac_t], [2 x %struct.III_scalefac_t]* %165, i64 %idxprom163
  %arrayidx165 = getelementptr inbounds [2 x %struct.III_scalefac_t], [2 x %struct.III_scalefac_t]* %arrayidx164, i32 0, i64 %idxprom162
  %166 = load %struct.gr_info*, %struct.gr_info** %cod_info, align 8, !tbaa !1
  %arraydecay166 = getelementptr inbounds [4 x [21 x double]], [4 x [21 x double]]* %xfsf, i32 0, i32 0
  %167 = load i32, i32* %ch, align 4, !tbaa !11
  call void @outer_loop(%struct.lame_global_flags* %155, double* %arraydecay155, i32 %159, double* %arraydecay156, %struct.III_psy_xmin* %l3_xmin, i32* %arraydecay161, %struct.III_scalefac_t* %arrayidx165, %struct.gr_info* %166, [21 x double]* %arraydecay166, i32 %167)
  %arrayidx167 = getelementptr inbounds [4 x double], [4 x double]* %targ_noise, i32 0, i64 0
  %168 = load double, double* %arrayidx167, align 8, !tbaa !13
  %conv168 = fptosi double %168 to i32
  %arrayidx169 = getelementptr inbounds [4 x double], [4 x double]* %targ_noise, i32 0, i64 3
  %169 = load double, double* %arrayidx169, align 8, !tbaa !13
  %arrayidx170 = getelementptr inbounds [4 x double], [4 x double]* %targ_noise, i32 0, i64 2
  %170 = load double, double* %arrayidx170, align 8, !tbaa !13
  %arrayidx171 = getelementptr inbounds [4 x double], [4 x double]* %targ_noise, i32 0, i64 1
  %171 = load double, double* %arrayidx171, align 8, !tbaa !13
  %arrayidx172 = getelementptr inbounds [4 x double], [4 x double]* %noise, i32 0, i64 0
  %172 = load double, double* %arrayidx172, align 8, !tbaa !13
  %conv173 = fptosi double %172 to i32
  %arrayidx174 = getelementptr inbounds [4 x double], [4 x double]* %noise, i32 0, i64 3
  %173 = load double, double* %arrayidx174, align 8, !tbaa !13
  %arrayidx175 = getelementptr inbounds [4 x double], [4 x double]* %noise, i32 0, i64 2
  %174 = load double, double* %arrayidx175, align 8, !tbaa !13
  %arrayidx176 = getelementptr inbounds [4 x double], [4 x double]* %noise, i32 0, i64 1
  %175 = load double, double* %arrayidx176, align 8, !tbaa !13
  %call177 = call i32 @VBR_compare(i32 %conv168, double %169, double %170, double %171, i32 %conv173, double %173, double %174, double %175)
  store i32 %call177, i32* %better, align 4, !tbaa !11
  %176 = load i32, i32* %better, align 4, !tbaa !11
  %tobool178 = icmp ne i32 %176, 0
  br i1 %tobool178, label %if.then.179, label %if.else

if.then.179:                                      ; preds = %cond.end.137
  %177 = load %struct.gr_info*, %struct.gr_info** %cod_info, align 8, !tbaa !1
  %part2_3_length = getelementptr inbounds %struct.gr_info, %struct.gr_info* %177, i32 0, i32 0
  %178 = load i32, i32* %part2_3_length, align 4, !tbaa !20
  store i32 %178, i32* %real_bits, align 4, !tbaa !11
  %179 = bitcast %struct.III_scalefac_t* %bst_scalefac to i8*
  %180 = load i32, i32* %ch, align 4, !tbaa !11
  %idxprom180 = sext i32 %180 to i64
  %181 = load i32, i32* %gr, align 4, !tbaa !11
  %idxprom181 = sext i32 %181 to i64
  %182 = load [2 x %struct.III_scalefac_t]*, [2 x %struct.III_scalefac_t]** %scalefac.addr, align 8, !tbaa !1
  %arrayidx182 = getelementptr inbounds [2 x %struct.III_scalefac_t], [2 x %struct.III_scalefac_t]* %182, i64 %idxprom181
  %arrayidx183 = getelementptr inbounds [2 x %struct.III_scalefac_t], [2 x %struct.III_scalefac_t]* %arrayidx182, i32 0, i64 %idxprom180
  %183 = bitcast %struct.III_scalefac_t* %arrayidx183 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %179, i8* %183, i64 244, i32 4, i1 false)
  %184 = bitcast [576 x i32]* %bst_l3_enc to i8*
  %185 = load i32, i32* %ch, align 4, !tbaa !11
  %idxprom184 = sext i32 %185 to i64
  %186 = load i32, i32* %gr, align 4, !tbaa !11
  %idxprom185 = sext i32 %186 to i64
  %187 = load [2 x [576 x i32]]*, [2 x [576 x i32]]** %l3_enc.addr, align 8, !tbaa !1
  %arrayidx186 = getelementptr inbounds [2 x [576 x i32]], [2 x [576 x i32]]* %187, i64 %idxprom185
  %arrayidx187 = getelementptr inbounds [2 x [576 x i32]], [2 x [576 x i32]]* %arrayidx186, i32 0, i64 %idxprom184
  %188 = bitcast [576 x i32]* %arrayidx187 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %184, i8* %188, i64 2304, i32 4, i1 false)
  %189 = bitcast %struct.gr_info* %bst_cod_info to i8*
  %190 = load %struct.gr_info*, %struct.gr_info** %cod_info, align 8, !tbaa !1
  %191 = bitcast %struct.gr_info* %190 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %189, i8* %191, i64 120, i32 8, i1 false)
  %192 = load i32, i32* %dbits, align 4, !tbaa !11
  %193 = load i32, i32* %this_bits, align 4, !tbaa !11
  %sub188 = sub nsw i32 %193, %192
  store i32 %sub188, i32* %this_bits, align 4, !tbaa !11
  br label %if.end.190

if.else:                                          ; preds = %cond.end.137
  %194 = load i32, i32* %dbits, align 4, !tbaa !11
  %195 = load i32, i32* %this_bits, align 4, !tbaa !11
  %add189 = add nsw i32 %195, %194
  store i32 %add189, i32* %this_bits, align 4, !tbaa !11
  br label %if.end.190

if.end.190:                                       ; preds = %if.else, %if.then.179
  %196 = load i32, i32* %dbits, align 4, !tbaa !11
  %div191 = sdiv i32 %196, 2
  store i32 %div191, i32* %dbits, align 4, !tbaa !11
  store i32 0, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %if.end.190, %if.then.114
  %197 = bitcast i32* %better to i8*
  call void @llvm.lifetime.end(i64 4, i8* %197) #1
  %cleanup.dest = load i32, i32* %cleanup.dest.slot
  switch i32 %cleanup.dest, label %unreachable [
    i32 0, label %cleanup.cont
    i32 12, label %do.cond
  ]

cleanup.cont:                                     ; preds = %cleanup
  br label %do.cond

do.cond:                                          ; preds = %cleanup.cont, %cleanup
  %198 = load i32, i32* %dbits, align 4, !tbaa !11
  %cmp192 = icmp sgt i32 %198, 10
  br i1 %cmp192, label %do.body, label %do.end

do.end:                                           ; preds = %do.cond
  %199 = load i32, i32* %real_bits, align 4, !tbaa !11
  %200 = load i32, i32* %max_bits, align 4, !tbaa !11
  %cmp194 = icmp sle i32 %199, %200
  br i1 %cmp194, label %if.then.196, label %if.end.205

if.then.196:                                      ; preds = %do.end
  %201 = load %struct.gr_info*, %struct.gr_info** %cod_info, align 8, !tbaa !1
  %202 = bitcast %struct.gr_info* %201 to i8*
  %203 = bitcast %struct.gr_info* %bst_cod_info to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %202, i8* %203, i64 120, i32 8, i1 false)
  %204 = load i32, i32* %ch, align 4, !tbaa !11
  %idxprom197 = sext i32 %204 to i64
  %205 = load i32, i32* %gr, align 4, !tbaa !11
  %idxprom198 = sext i32 %205 to i64
  %206 = load [2 x %struct.III_scalefac_t]*, [2 x %struct.III_scalefac_t]** %scalefac.addr, align 8, !tbaa !1
  %arrayidx199 = getelementptr inbounds [2 x %struct.III_scalefac_t], [2 x %struct.III_scalefac_t]* %206, i64 %idxprom198
  %arrayidx200 = getelementptr inbounds [2 x %struct.III_scalefac_t], [2 x %struct.III_scalefac_t]* %arrayidx199, i32 0, i64 %idxprom197
  %207 = bitcast %struct.III_scalefac_t* %arrayidx200 to i8*
  %208 = bitcast %struct.III_scalefac_t* %bst_scalefac to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %207, i8* %208, i64 244, i32 4, i1 false)
  %209 = load i32, i32* %ch, align 4, !tbaa !11
  %idxprom201 = sext i32 %209 to i64
  %210 = load i32, i32* %gr, align 4, !tbaa !11
  %idxprom202 = sext i32 %210 to i64
  %211 = load [2 x [576 x i32]]*, [2 x [576 x i32]]** %l3_enc.addr, align 8, !tbaa !1
  %arrayidx203 = getelementptr inbounds [2 x [576 x i32]], [2 x [576 x i32]]* %211, i64 %idxprom202
  %arrayidx204 = getelementptr inbounds [2 x [576 x i32]], [2 x [576 x i32]]* %arrayidx203, i32 0, i64 %idxprom201
  %212 = bitcast [576 x i32]* %arrayidx204 to i8*
  %213 = bitcast [576 x i32]* %bst_l3_enc to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %212, i8* %213, i64 2304, i32 4, i1 false)
  br label %if.end.205

if.end.205:                                       ; preds = %if.then.196, %do.end
  %214 = load %struct.gr_info*, %struct.gr_info** %cod_info, align 8, !tbaa !1
  %part2_3_length206 = getelementptr inbounds %struct.gr_info, %struct.gr_info* %214, i32 0, i32 0
  %215 = load i32, i32* %part2_3_length206, align 4, !tbaa !20
  %216 = load i32, i32* %ch, align 4, !tbaa !11
  %idxprom207 = sext i32 %216 to i64
  %217 = load i32, i32* %gr, align 4, !tbaa !11
  %idxprom208 = sext i32 %217 to i64
  %arrayidx209 = getelementptr inbounds [2 x [2 x i32]], [2 x [2 x i32]]* %save_bits, i32 0, i64 %idxprom208
  %arrayidx210 = getelementptr inbounds [2 x i32], [2 x i32]* %arrayidx209, i32 0, i64 %idxprom207
  store i32 %215, i32* %arrayidx210, align 4, !tbaa !11
  %218 = load i32, i32* %ch, align 4, !tbaa !11
  %idxprom211 = sext i32 %218 to i64
  %219 = load i32, i32* %gr, align 4, !tbaa !11
  %idxprom212 = sext i32 %219 to i64
  %arrayidx213 = getelementptr inbounds [2 x [2 x i32]], [2 x [2 x i32]]* %save_bits, i32 0, i64 %idxprom212
  %arrayidx214 = getelementptr inbounds [2 x i32], [2 x i32]* %arrayidx213, i32 0, i64 %idxprom211
  %220 = load i32, i32* %arrayidx214, align 4, !tbaa !11
  %221 = load i32, i32* %used_bits, align 4, !tbaa !11
  %add215 = add nsw i32 %221, %220
  store i32 %add215, i32* %used_bits, align 4, !tbaa !11
  store i32 0, i32* %cleanup.dest.slot
  br label %cleanup.216

cleanup.216:                                      ; preds = %if.end.205, %if.then.39
  %222 = bitcast i32* %real_bits to i8*
  call void @llvm.lifetime.end(i64 4, i8* %222) #1
  %cleanup.dest.217 = load i32, i32* %cleanup.dest.slot
  switch i32 %cleanup.dest.217, label %unreachable [
    i32 0, label %cleanup.cont.218
    i32 10, label %for.inc.219
  ]

cleanup.cont.218:                                 ; preds = %cleanup.216
  br label %for.inc.219

for.inc.219:                                      ; preds = %cleanup.cont.218, %cleanup.216
  %223 = load i32, i32* %ch, align 4, !tbaa !11
  %inc220 = add nsw i32 %223, 1
  store i32 %inc220, i32* %ch, align 4, !tbaa !11
  br label %for.cond.22

for.end.221:                                      ; preds = %for.cond.22
  %224 = bitcast i32* %num_chan to i8*
  call void @llvm.lifetime.end(i64 4, i8* %224) #1
  br label %for.inc.222

for.inc.222:                                      ; preds = %for.end.221
  %225 = load i32, i32* %gr, align 4, !tbaa !11
  %inc223 = add nsw i32 %225, 1
  store i32 %inc223, i32* %gr, align 4, !tbaa !11
  br label %for.cond.8

for.end.224:                                      ; preds = %for.cond.8
  %226 = load i32, i32* @reduce_sidechannel, align 4, !tbaa !11
  %tobool225 = icmp ne i32 %226, 0
  br i1 %tobool225, label %if.then.226, label %if.end.271

if.then.226:                                      ; preds = %for.end.224
  store i32 0, i32* %gr, align 4, !tbaa !11
  br label %for.cond.227

for.cond.227:                                     ; preds = %for.inc.268, %if.then.226
  %227 = load i32, i32* %gr, align 4, !tbaa !11
  %228 = load %struct.lame_global_flags*, %struct.lame_global_flags** %gfp.addr, align 8, !tbaa !1
  %mode_gr228 = getelementptr inbounds %struct.lame_global_flags, %struct.lame_global_flags* %228, i32 0, i32 45
  %229 = load i32, i32* %mode_gr228, align 4, !tbaa !12
  %cmp229 = icmp slt i32 %227, %229
  br i1 %cmp229, label %for.body.231, label %for.end.270

for.body.231:                                     ; preds = %for.cond.227
  %230 = bitcast double* %fac to i8*
  call void @llvm.lifetime.start(i64 8, i8* %230) #1
  %231 = load i32, i32* %gr, align 4, !tbaa !11
  %idxprom232 = sext i32 %231 to i64
  %232 = load double*, double** %ms_ener_ratio.addr, align 8, !tbaa !1
  %arrayidx233 = getelementptr inbounds double, double* %232, i64 %idxprom232
  %233 = load double, double* %arrayidx233, align 8, !tbaa !13
  %sub234 = fsub double 5.000000e-01, %233
  %mul235 = fmul double 3.300000e-01, %sub234
  %div236 = fdiv double %mul235, 5.000000e-01
  store double %div236, double* %fac, align 8, !tbaa !13
  %234 = load double, double* %fac, align 8, !tbaa !13
  %sub237 = fsub double 1.000000e+00, %234
  %235 = load double, double* %fac, align 8, !tbaa !13
  %add238 = fadd double 1.000000e+00, %235
  %div239 = fdiv double %sub237, %add238
  %236 = load i32, i32* %gr, align 4, !tbaa !11
  %idxprom240 = sext i32 %236 to i64
  %arrayidx241 = getelementptr inbounds [2 x [2 x i32]], [2 x [2 x i32]]* %save_bits, i32 0, i64 %idxprom240
  %arrayidx242 = getelementptr inbounds [2 x i32], [2 x i32]* %arrayidx241, i32 0, i64 0
  %237 = load i32, i32* %arrayidx242, align 4, !tbaa !11
  %conv243 = sitofp i32 %237 to double
  %mul244 = fmul double %div239, %conv243
  %conv245 = fptosi double %mul244 to i32
  %238 = load i32, i32* %gr, align 4, !tbaa !11
  %idxprom246 = sext i32 %238 to i64
  %arrayidx247 = getelementptr inbounds [2 x [2 x i32]], [2 x [2 x i32]]* %save_bits, i32 0, i64 %idxprom246
  %arrayidx248 = getelementptr inbounds [2 x i32], [2 x i32]* %arrayidx247, i32 0, i64 1
  store i32 %conv245, i32* %arrayidx248, align 4, !tbaa !11
  %239 = load i32, i32* %gr, align 4, !tbaa !11
  %idxprom249 = sext i32 %239 to i64
  %arrayidx250 = getelementptr inbounds [2 x [2 x i32]], [2 x [2 x i32]]* %save_bits, i32 0, i64 %idxprom249
  %arrayidx251 = getelementptr inbounds [2 x i32], [2 x i32]* %arrayidx250, i32 0, i64 1
  %240 = load i32, i32* %arrayidx251, align 4, !tbaa !11
  %cmp252 = icmp sgt i32 125, %240
  br i1 %cmp252, label %cond.true.254, label %cond.false.255

cond.true.254:                                    ; preds = %for.body.231
  br label %cond.end.259

cond.false.255:                                   ; preds = %for.body.231
  %241 = load i32, i32* %gr, align 4, !tbaa !11
  %idxprom256 = sext i32 %241 to i64
  %arrayidx257 = getelementptr inbounds [2 x [2 x i32]], [2 x [2 x i32]]* %save_bits, i32 0, i64 %idxprom256
  %arrayidx258 = getelementptr inbounds [2 x i32], [2 x i32]* %arrayidx257, i32 0, i64 1
  %242 = load i32, i32* %arrayidx258, align 4, !tbaa !11
  br label %cond.end.259

cond.end.259:                                     ; preds = %cond.false.255, %cond.true.254
  %cond260 = phi i32 [ 125, %cond.true.254 ], [ %242, %cond.false.255 ]
  %243 = load i32, i32* %gr, align 4, !tbaa !11
  %idxprom261 = sext i32 %243 to i64
  %arrayidx262 = getelementptr inbounds [2 x [2 x i32]], [2 x [2 x i32]]* %save_bits, i32 0, i64 %idxprom261
  %arrayidx263 = getelementptr inbounds [2 x i32], [2 x i32]* %arrayidx262, i32 0, i64 1
  store i32 %cond260, i32* %arrayidx263, align 4, !tbaa !11
  %244 = load i32, i32* %gr, align 4, !tbaa !11
  %idxprom264 = sext i32 %244 to i64
  %arrayidx265 = getelementptr inbounds [2 x [2 x i32]], [2 x [2 x i32]]* %save_bits, i32 0, i64 %idxprom264
  %arrayidx266 = getelementptr inbounds [2 x i32], [2 x i32]* %arrayidx265, i32 0, i64 1
  %245 = load i32, i32* %arrayidx266, align 4, !tbaa !11
  %246 = load i32, i32* %used_bits, align 4, !tbaa !11
  %add267 = add nsw i32 %246, %245
  store i32 %add267, i32* %used_bits, align 4, !tbaa !11
  %247 = bitcast double* %fac to i8*
  call void @llvm.lifetime.end(i64 8, i8* %247) #1
  br label %for.inc.268

for.inc.268:                                      ; preds = %cond.end.259
  %248 = load i32, i32* %gr, align 4, !tbaa !11
  %inc269 = add nsw i32 %248, 1
  store i32 %inc269, i32* %gr, align 4, !tbaa !11
  br label %for.cond.227

for.end.270:                                      ; preds = %for.cond.227
  br label %if.end.271

if.end.271:                                       ; preds = %for.end.270, %for.end.224
  %249 = load i32, i32* %analog_silence, align 4, !tbaa !11
  %tobool272 = icmp ne i32 %249, 0
  br i1 %tobool272, label %cond.true.273, label %cond.false.274

cond.true.273:                                    ; preds = %if.end.271
  br label %cond.end.276

cond.false.274:                                   ; preds = %if.end.271
  %250 = load %struct.lame_global_flags*, %struct.lame_global_flags** %gfp.addr, align 8, !tbaa !1
  %VBR_min_bitrate275 = getelementptr inbounds %struct.lame_global_flags, %struct.lame_global_flags* %250, i32 0, i32 47
  %251 = load i32, i32* %VBR_min_bitrate275, align 4, !tbaa !39
  br label %cond.end.276

cond.end.276:                                     ; preds = %cond.false.274, %cond.true.273
  %cond277 = phi i32 [ 1, %cond.true.273 ], [ %251, %cond.false.274 ]
  %252 = load %struct.lame_global_flags*, %struct.lame_global_flags** %gfp.addr, align 8, !tbaa !1
  %bitrate_index278 = getelementptr inbounds %struct.lame_global_flags, %struct.lame_global_flags* %252, i32 0, i32 50
  store i32 %cond277, i32* %bitrate_index278, align 4, !tbaa !5
  br label %for.cond.279

for.cond.279:                                     ; preds = %for.inc.292, %cond.end.276
  %253 = load %struct.lame_global_flags*, %struct.lame_global_flags** %gfp.addr, align 8, !tbaa !1
  %bitrate_index280 = getelementptr inbounds %struct.lame_global_flags, %struct.lame_global_flags* %253, i32 0, i32 50
  %254 = load i32, i32* %bitrate_index280, align 4, !tbaa !5
  %255 = load %struct.lame_global_flags*, %struct.lame_global_flags** %gfp.addr, align 8, !tbaa !1
  %VBR_max_bitrate281 = getelementptr inbounds %struct.lame_global_flags, %struct.lame_global_flags* %255, i32 0, i32 48
  %256 = load i32, i32* %VBR_max_bitrate281, align 4, !tbaa !38
  %cmp282 = icmp slt i32 %254, %256
  br i1 %cmp282, label %for.body.284, label %for.end.295

for.body.284:                                     ; preds = %for.cond.279
  %257 = load i32, i32* %used_bits, align 4, !tbaa !11
  %258 = load %struct.lame_global_flags*, %struct.lame_global_flags** %gfp.addr, align 8, !tbaa !1
  %bitrate_index285 = getelementptr inbounds %struct.lame_global_flags, %struct.lame_global_flags* %258, i32 0, i32 50
  %259 = load i32, i32* %bitrate_index285, align 4, !tbaa !5
  %idxprom286 = sext i32 %259 to i64
  %arrayidx287 = getelementptr inbounds [15 x i32], [15 x i32]* %frameBits, i32 0, i64 %idxprom286
  %260 = load i32, i32* %arrayidx287, align 4, !tbaa !11
  %cmp288 = icmp sle i32 %257, %260
  br i1 %cmp288, label %if.then.290, label %if.end.291

if.then.290:                                      ; preds = %for.body.284
  br label %for.end.295

if.end.291:                                       ; preds = %for.body.284
  br label %for.inc.292

for.inc.292:                                      ; preds = %if.end.291
  %261 = load %struct.lame_global_flags*, %struct.lame_global_flags** %gfp.addr, align 8, !tbaa !1
  %bitrate_index293 = getelementptr inbounds %struct.lame_global_flags, %struct.lame_global_flags* %261, i32 0, i32 50
  %262 = load i32, i32* %bitrate_index293, align 4, !tbaa !5
  %inc294 = add nsw i32 %262, 1
  store i32 %inc294, i32* %bitrate_index293, align 4, !tbaa !5
  br label %for.cond.279

for.end.295:                                      ; preds = %if.then.290, %for.cond.279
  %263 = load %struct.lame_global_flags*, %struct.lame_global_flags** %gfp.addr, align 8, !tbaa !1
  call void @getframebits(%struct.lame_global_flags* %263, i32* %bitsPerFrame, i32* %mean_bits)
  %264 = load %struct.lame_global_flags*, %struct.lame_global_flags** %gfp.addr, align 8, !tbaa !1
  %265 = load %struct.III_side_info_t*, %struct.III_side_info_t** %l3_side.addr, align 8, !tbaa !1
  %266 = load i32, i32* %mean_bits, align 4, !tbaa !11
  %267 = load i32, i32* %bitsPerFrame, align 4, !tbaa !11
  %call296 = call i32 @ResvFrameBegin(%struct.lame_global_flags* %264, %struct.III_side_info_t* %265, i32 %266, i32 %267)
  store i32 %call296, i32* %bits, align 4, !tbaa !11
  %268 = load i32, i32* %used_bits, align 4, !tbaa !11
  %269 = load i32, i32* %bits, align 4, !tbaa !11
  %cmp297 = icmp sgt i32 %268, %269
  br i1 %cmp297, label %if.then.299, label %if.end.350

if.then.299:                                      ; preds = %for.end.295
  store i32 1, i32* %reparted, align 4, !tbaa !11
  store i32 0, i32* %gr, align 4, !tbaa !11
  br label %for.cond.300

for.cond.300:                                     ; preds = %for.inc.326, %if.then.299
  %270 = load i32, i32* %gr, align 4, !tbaa !11
  %271 = load %struct.lame_global_flags*, %struct.lame_global_flags** %gfp.addr, align 8, !tbaa !1
  %mode_gr301 = getelementptr inbounds %struct.lame_global_flags, %struct.lame_global_flags* %271, i32 0, i32 45
  %272 = load i32, i32* %mode_gr301, align 4, !tbaa !12
  %cmp302 = icmp slt i32 %270, %272
  br i1 %cmp302, label %for.body.304, label %for.end.328

for.body.304:                                     ; preds = %for.cond.300
  store i32 0, i32* %ch, align 4, !tbaa !11
  br label %for.cond.305

for.cond.305:                                     ; preds = %for.inc.323, %for.body.304
  %273 = load i32, i32* %ch, align 4, !tbaa !11
  %274 = load %struct.lame_global_flags*, %struct.lame_global_flags** %gfp.addr, align 8, !tbaa !1
  %stereo306 = getelementptr inbounds %struct.lame_global_flags, %struct.lame_global_flags* %274, i32 0, i32 46
  %275 = load i32, i32* %stereo306, align 4, !tbaa !15
  %cmp307 = icmp slt i32 %273, %275
  br i1 %cmp307, label %for.body.309, label %for.end.325

for.body.309:                                     ; preds = %for.cond.305
  %276 = load i32, i32* %ch, align 4, !tbaa !11
  %idxprom310 = sext i32 %276 to i64
  %277 = load i32, i32* %gr, align 4, !tbaa !11
  %idxprom311 = sext i32 %277 to i64
  %arrayidx312 = getelementptr inbounds [2 x [2 x i32]], [2 x [2 x i32]]* %save_bits, i32 0, i64 %idxprom311
  %arrayidx313 = getelementptr inbounds [2 x i32], [2 x i32]* %arrayidx312, i32 0, i64 %idxprom310
  %278 = load i32, i32* %arrayidx313, align 4, !tbaa !11
  %279 = load %struct.lame_global_flags*, %struct.lame_global_flags** %gfp.addr, align 8, !tbaa !1
  %bitrate_index314 = getelementptr inbounds %struct.lame_global_flags, %struct.lame_global_flags* %279, i32 0, i32 50
  %280 = load i32, i32* %bitrate_index314, align 4, !tbaa !5
  %idxprom315 = sext i32 %280 to i64
  %arrayidx316 = getelementptr inbounds [15 x i32], [15 x i32]* %frameBits, i32 0, i64 %idxprom315
  %281 = load i32, i32* %arrayidx316, align 4, !tbaa !11
  %mul317 = mul nsw i32 %278, %281
  %282 = load i32, i32* %used_bits, align 4, !tbaa !11
  %div318 = sdiv i32 %mul317, %282
  %283 = load i32, i32* %ch, align 4, !tbaa !11
  %idxprom319 = sext i32 %283 to i64
  %284 = load i32, i32* %gr, align 4, !tbaa !11
  %idxprom320 = sext i32 %284 to i64
  %arrayidx321 = getelementptr inbounds [2 x [2 x i32]], [2 x [2 x i32]]* %save_bits, i32 0, i64 %idxprom320
  %arrayidx322 = getelementptr inbounds [2 x i32], [2 x i32]* %arrayidx321, i32 0, i64 %idxprom319
  store i32 %div318, i32* %arrayidx322, align 4, !tbaa !11
  br label %for.inc.323

for.inc.323:                                      ; preds = %for.body.309
  %285 = load i32, i32* %ch, align 4, !tbaa !11
  %inc324 = add nsw i32 %285, 1
  store i32 %inc324, i32* %ch, align 4, !tbaa !11
  br label %for.cond.305

for.end.325:                                      ; preds = %for.cond.305
  br label %for.inc.326

for.inc.326:                                      ; preds = %for.end.325
  %286 = load i32, i32* %gr, align 4, !tbaa !11
  %inc327 = add nsw i32 %286, 1
  store i32 %inc327, i32* %gr, align 4, !tbaa !11
  br label %for.cond.300

for.end.328:                                      ; preds = %for.cond.300
  store i32 0, i32* %used_bits, align 4, !tbaa !11
  store i32 0, i32* %gr, align 4, !tbaa !11
  br label %for.cond.329

for.cond.329:                                     ; preds = %for.inc.347, %for.end.328
  %287 = load i32, i32* %gr, align 4, !tbaa !11
  %288 = load %struct.lame_global_flags*, %struct.lame_global_flags** %gfp.addr, align 8, !tbaa !1
  %mode_gr330 = getelementptr inbounds %struct.lame_global_flags, %struct.lame_global_flags* %288, i32 0, i32 45
  %289 = load i32, i32* %mode_gr330, align 4, !tbaa !12
  %cmp331 = icmp slt i32 %287, %289
  br i1 %cmp331, label %for.body.333, label %for.end.349

for.body.333:                                     ; preds = %for.cond.329
  store i32 0, i32* %ch, align 4, !tbaa !11
  br label %for.cond.334

for.cond.334:                                     ; preds = %for.inc.344, %for.body.333
  %290 = load i32, i32* %ch, align 4, !tbaa !11
  %291 = load %struct.lame_global_flags*, %struct.lame_global_flags** %gfp.addr, align 8, !tbaa !1
  %stereo335 = getelementptr inbounds %struct.lame_global_flags, %struct.lame_global_flags* %291, i32 0, i32 46
  %292 = load i32, i32* %stereo335, align 4, !tbaa !15
  %cmp336 = icmp slt i32 %290, %292
  br i1 %cmp336, label %for.body.338, label %for.end.346

for.body.338:                                     ; preds = %for.cond.334
  %293 = load i32, i32* %ch, align 4, !tbaa !11
  %idxprom339 = sext i32 %293 to i64
  %294 = load i32, i32* %gr, align 4, !tbaa !11
  %idxprom340 = sext i32 %294 to i64
  %arrayidx341 = getelementptr inbounds [2 x [2 x i32]], [2 x [2 x i32]]* %save_bits, i32 0, i64 %idxprom340
  %arrayidx342 = getelementptr inbounds [2 x i32], [2 x i32]* %arrayidx341, i32 0, i64 %idxprom339
  %295 = load i32, i32* %arrayidx342, align 4, !tbaa !11
  %296 = load i32, i32* %used_bits, align 4, !tbaa !11
  %add343 = add nsw i32 %296, %295
  store i32 %add343, i32* %used_bits, align 4, !tbaa !11
  br label %for.inc.344

for.inc.344:                                      ; preds = %for.body.338
  %297 = load i32, i32* %ch, align 4, !tbaa !11
  %inc345 = add nsw i32 %297, 1
  store i32 %inc345, i32* %ch, align 4, !tbaa !11
  br label %for.cond.334

for.end.346:                                      ; preds = %for.cond.334
  br label %for.inc.347

for.inc.347:                                      ; preds = %for.end.346
  %298 = load i32, i32* %gr, align 4, !tbaa !11
  %inc348 = add nsw i32 %298, 1
  store i32 %inc348, i32* %gr, align 4, !tbaa !11
  br label %for.cond.329

for.end.349:                                      ; preds = %for.cond.329
  br label %if.end.350

if.end.350:                                       ; preds = %for.end.349, %for.end.295
  store i32 0, i32* %gr, align 4, !tbaa !11
  br label %for.cond.351

for.cond.351:                                     ; preds = %for.inc.434, %if.end.350
  %299 = load i32, i32* %gr, align 4, !tbaa !11
  %300 = load %struct.lame_global_flags*, %struct.lame_global_flags** %gfp.addr, align 8, !tbaa !1
  %mode_gr352 = getelementptr inbounds %struct.lame_global_flags, %struct.lame_global_flags* %300, i32 0, i32 45
  %301 = load i32, i32* %mode_gr352, align 4, !tbaa !12
  %cmp353 = icmp slt i32 %299, %301
  br i1 %cmp353, label %for.body.355, label %for.end.436

for.body.355:                                     ; preds = %for.cond.351
  store i32 0, i32* %ch, align 4, !tbaa !11
  br label %for.cond.356

for.cond.356:                                     ; preds = %for.inc.431, %for.body.355
  %302 = load i32, i32* %ch, align 4, !tbaa !11
  %303 = load %struct.lame_global_flags*, %struct.lame_global_flags** %gfp.addr, align 8, !tbaa !1
  %stereo357 = getelementptr inbounds %struct.lame_global_flags, %struct.lame_global_flags* %303, i32 0, i32 46
  %304 = load i32, i32* %stereo357, align 4, !tbaa !15
  %cmp358 = icmp slt i32 %302, %304
  br i1 %cmp358, label %for.body.360, label %for.end.433

for.body.360:                                     ; preds = %for.cond.356
  %305 = load i32, i32* %reparted, align 4, !tbaa !11
  %tobool361 = icmp ne i32 %305, 0
  br i1 %tobool361, label %if.then.365, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %for.body.360
  %306 = load i32, i32* @reduce_sidechannel, align 4, !tbaa !11
  %tobool362 = icmp ne i32 %306, 0
  br i1 %tobool362, label %land.lhs.true, label %if.end.430

land.lhs.true:                                    ; preds = %lor.lhs.false
  %307 = load i32, i32* %ch, align 4, !tbaa !11
  %cmp363 = icmp eq i32 %307, 1
  br i1 %cmp363, label %if.then.365, label %if.end.430

if.then.365:                                      ; preds = %land.lhs.true, %for.body.360
  %308 = load i32, i32* %ch, align 4, !tbaa !11
  %idxprom366 = sext i32 %308 to i64
  %309 = load i32, i32* %gr, align 4, !tbaa !11
  %idxprom367 = sext i32 %309 to i64
  %310 = load %struct.III_side_info_t*, %struct.III_side_info_t** %l3_side.addr, align 8, !tbaa !1
  %gr368 = getelementptr inbounds %struct.III_side_info_t, %struct.III_side_info_t* %310, i32 0, i32 4
  %arrayidx369 = getelementptr inbounds [2 x %struct.anon], [2 x %struct.anon]* %gr368, i32 0, i64 %idxprom367
  %ch370 = getelementptr inbounds %struct.anon, %struct.anon* %arrayidx369, i32 0, i32 0
  %arrayidx371 = getelementptr inbounds [2 x %struct.gr_info_ss], [2 x %struct.gr_info_ss]* %ch370, i32 0, i64 %idxprom366
  %tt372 = getelementptr inbounds %struct.gr_info_ss, %struct.gr_info_ss* %arrayidx371, i32 0, i32 0
  store %struct.gr_info* %tt372, %struct.gr_info** %cod_info, align 8, !tbaa !1
  %311 = load %struct.lame_global_flags*, %struct.lame_global_flags** %gfp.addr, align 8, !tbaa !1
  %312 = load i32, i32* %ch, align 4, !tbaa !11
  %idxprom373 = sext i32 %312 to i64
  %313 = load i32, i32* %gr, align 4, !tbaa !11
  %idxprom374 = sext i32 %313 to i64
  %314 = load [2 x [576 x double]]*, [2 x [576 x double]]** %xr.addr, align 8, !tbaa !1
  %arrayidx375 = getelementptr inbounds [2 x [576 x double]], [2 x [576 x double]]* %314, i64 %idxprom374
  %arrayidx376 = getelementptr inbounds [2 x [576 x double]], [2 x [576 x double]]* %arrayidx375, i32 0, i64 %idxprom373
  %arraydecay377 = getelementptr inbounds [576 x double], [576 x double]* %arrayidx376, i32 0, i32 0
  %315 = load %struct.gr_info*, %struct.gr_info** %cod_info, align 8, !tbaa !1
  %call378 = call i32 @init_outer_loop(%struct.lame_global_flags* %311, double* %arraydecay377, %struct.gr_info* %315)
  %tobool379 = icmp ne i32 %call378, 0
  br i1 %tobool379, label %if.else.393, label %if.then.380

if.then.380:                                      ; preds = %if.then.365
  %316 = load i32, i32* %ch, align 4, !tbaa !11
  %idxprom381 = sext i32 %316 to i64
  %317 = load i32, i32* %gr, align 4, !tbaa !11
  %idxprom382 = sext i32 %317 to i64
  %318 = load [2 x %struct.III_scalefac_t]*, [2 x %struct.III_scalefac_t]** %scalefac.addr, align 8, !tbaa !1
  %arrayidx383 = getelementptr inbounds [2 x %struct.III_scalefac_t], [2 x %struct.III_scalefac_t]* %318, i64 %idxprom382
  %arrayidx384 = getelementptr inbounds [2 x %struct.III_scalefac_t], [2 x %struct.III_scalefac_t]* %arrayidx383, i32 0, i64 %idxprom381
  %319 = bitcast %struct.III_scalefac_t* %arrayidx384 to i8*
  call void @llvm.memset.p0i8.i64(i8* %319, i8 0, i64 244, i32 4, i1 false)
  %320 = load i32, i32* %ch, align 4, !tbaa !11
  %idxprom385 = sext i32 %320 to i64
  %321 = load i32, i32* %gr, align 4, !tbaa !11
  %idxprom386 = sext i32 %321 to i64
  %322 = load [2 x [576 x i32]]*, [2 x [576 x i32]]** %l3_enc.addr, align 8, !tbaa !1
  %arrayidx387 = getelementptr inbounds [2 x [576 x i32]], [2 x [576 x i32]]* %322, i64 %idxprom386
  %arrayidx388 = getelementptr inbounds [2 x [576 x i32]], [2 x [576 x i32]]* %arrayidx387, i32 0, i64 %idxprom385
  %323 = bitcast [576 x i32]* %arrayidx388 to i8*
  call void @llvm.memset.p0i8.i64(i8* %323, i8 0, i64 2304, i32 4, i1 false)
  %arrayidx389 = getelementptr inbounds [4 x double], [4 x double]* %noise, i32 0, i64 3
  store double 0.000000e+00, double* %arrayidx389, align 8, !tbaa !13
  %arrayidx390 = getelementptr inbounds [4 x double], [4 x double]* %noise, i32 0, i64 2
  store double 0.000000e+00, double* %arrayidx390, align 8, !tbaa !13
  %arrayidx391 = getelementptr inbounds [4 x double], [4 x double]* %noise, i32 0, i64 1
  store double 0.000000e+00, double* %arrayidx391, align 8, !tbaa !13
  %arrayidx392 = getelementptr inbounds [4 x double], [4 x double]* %noise, i32 0, i64 0
  store double 0.000000e+00, double* %arrayidx392, align 8, !tbaa !13
  br label %if.end.429

if.else.393:                                      ; preds = %if.then.365
  %324 = load %struct.lame_global_flags*, %struct.lame_global_flags** %gfp.addr, align 8, !tbaa !1
  %VBR_q394 = getelementptr inbounds %struct.lame_global_flags, %struct.lame_global_flags* %324, i32 0, i32 22
  %325 = load i32, i32* %VBR_q394, align 4, !tbaa !40
  %326 = load i32, i32* %ch, align 4, !tbaa !11
  %idxprom395 = sext i32 %326 to i64
  %327 = load i32, i32* %gr, align 4, !tbaa !11
  %idxprom396 = sext i32 %327 to i64
  %arrayidx397 = getelementptr inbounds [2 x [2 x i32]], [2 x [2 x i32]]* %save_bits, i32 0, i64 %idxprom396
  %arrayidx398 = getelementptr inbounds [2 x i32], [2 x i32]* %arrayidx397, i32 0, i64 %idxprom395
  %328 = load i32, i32* %arrayidx398, align 4, !tbaa !11
  call void @set_masking_lower(i32 %325, i32 %328)
  %329 = load %struct.lame_global_flags*, %struct.lame_global_flags** %gfp.addr, align 8, !tbaa !1
  %330 = load i32, i32* %ch, align 4, !tbaa !11
  %idxprom399 = sext i32 %330 to i64
  %331 = load i32, i32* %gr, align 4, !tbaa !11
  %idxprom400 = sext i32 %331 to i64
  %332 = load [2 x [576 x double]]*, [2 x [576 x double]]** %xr.addr, align 8, !tbaa !1
  %arrayidx401 = getelementptr inbounds [2 x [576 x double]], [2 x [576 x double]]* %332, i64 %idxprom400
  %arrayidx402 = getelementptr inbounds [2 x [576 x double]], [2 x [576 x double]]* %arrayidx401, i32 0, i64 %idxprom399
  %arraydecay403 = getelementptr inbounds [576 x double], [576 x double]* %arrayidx402, i32 0, i32 0
  %333 = load i32, i32* %ch, align 4, !tbaa !11
  %idxprom404 = sext i32 %333 to i64
  %334 = load i32, i32* %gr, align 4, !tbaa !11
  %idxprom405 = sext i32 %334 to i64
  %335 = load [2 x %struct.III_psy_ratio]*, [2 x %struct.III_psy_ratio]** %ratio.addr, align 8, !tbaa !1
  %arrayidx406 = getelementptr inbounds [2 x %struct.III_psy_ratio], [2 x %struct.III_psy_ratio]* %335, i64 %idxprom405
  %arrayidx407 = getelementptr inbounds [2 x %struct.III_psy_ratio], [2 x %struct.III_psy_ratio]* %arrayidx406, i32 0, i64 %idxprom404
  %336 = load %struct.gr_info*, %struct.gr_info** %cod_info, align 8, !tbaa !1
  %call408 = call i32 @calc_xmin(%struct.lame_global_flags* %329, double* %arraydecay403, %struct.III_psy_ratio* %arrayidx407, %struct.gr_info* %336, %struct.III_psy_xmin* %l3_xmin)
  %337 = load %struct.lame_global_flags*, %struct.lame_global_flags** %gfp.addr, align 8, !tbaa !1
  %338 = load i32, i32* %ch, align 4, !tbaa !11
  %idxprom409 = sext i32 %338 to i64
  %339 = load i32, i32* %gr, align 4, !tbaa !11
  %idxprom410 = sext i32 %339 to i64
  %340 = load [2 x [576 x double]]*, [2 x [576 x double]]** %xr.addr, align 8, !tbaa !1
  %arrayidx411 = getelementptr inbounds [2 x [576 x double]], [2 x [576 x double]]* %340, i64 %idxprom410
  %arrayidx412 = getelementptr inbounds [2 x [576 x double]], [2 x [576 x double]]* %arrayidx411, i32 0, i64 %idxprom409
  %arraydecay413 = getelementptr inbounds [576 x double], [576 x double]* %arrayidx412, i32 0, i32 0
  %341 = load i32, i32* %ch, align 4, !tbaa !11
  %idxprom414 = sext i32 %341 to i64
  %342 = load i32, i32* %gr, align 4, !tbaa !11
  %idxprom415 = sext i32 %342 to i64
  %arrayidx416 = getelementptr inbounds [2 x [2 x i32]], [2 x [2 x i32]]* %save_bits, i32 0, i64 %idxprom415
  %arrayidx417 = getelementptr inbounds [2 x i32], [2 x i32]* %arrayidx416, i32 0, i64 %idxprom414
  %343 = load i32, i32* %arrayidx417, align 4, !tbaa !11
  %arraydecay418 = getelementptr inbounds [4 x double], [4 x double]* %noise, i32 0, i32 0
  %344 = load i32, i32* %ch, align 4, !tbaa !11
  %idxprom419 = sext i32 %344 to i64
  %345 = load i32, i32* %gr, align 4, !tbaa !11
  %idxprom420 = sext i32 %345 to i64
  %346 = load [2 x [576 x i32]]*, [2 x [576 x i32]]** %l3_enc.addr, align 8, !tbaa !1
  %arrayidx421 = getelementptr inbounds [2 x [576 x i32]], [2 x [576 x i32]]* %346, i64 %idxprom420
  %arrayidx422 = getelementptr inbounds [2 x [576 x i32]], [2 x [576 x i32]]* %arrayidx421, i32 0, i64 %idxprom419
  %arraydecay423 = getelementptr inbounds [576 x i32], [576 x i32]* %arrayidx422, i32 0, i32 0
  %347 = load i32, i32* %ch, align 4, !tbaa !11
  %idxprom424 = sext i32 %347 to i64
  %348 = load i32, i32* %gr, align 4, !tbaa !11
  %idxprom425 = sext i32 %348 to i64
  %349 = load [2 x %struct.III_scalefac_t]*, [2 x %struct.III_scalefac_t]** %scalefac.addr, align 8, !tbaa !1
  %arrayidx426 = getelementptr inbounds [2 x %struct.III_scalefac_t], [2 x %struct.III_scalefac_t]* %349, i64 %idxprom425
  %arrayidx427 = getelementptr inbounds [2 x %struct.III_scalefac_t], [2 x %struct.III_scalefac_t]* %arrayidx426, i32 0, i64 %idxprom424
  %350 = load %struct.gr_info*, %struct.gr_info** %cod_info, align 8, !tbaa !1
  %arraydecay428 = getelementptr inbounds [4 x [21 x double]], [4 x [21 x double]]* %xfsf, i32 0, i32 0
  %351 = load i32, i32* %ch, align 4, !tbaa !11
  call void @outer_loop(%struct.lame_global_flags* %337, double* %arraydecay413, i32 %343, double* %arraydecay418, %struct.III_psy_xmin* %l3_xmin, i32* %arraydecay423, %struct.III_scalefac_t* %arrayidx427, %struct.gr_info* %350, [21 x double]* %arraydecay428, i32 %351)
  br label %if.end.429

if.end.429:                                       ; preds = %if.else.393, %if.then.380
  br label %if.end.430

if.end.430:                                       ; preds = %if.end.429, %land.lhs.true, %lor.lhs.false
  br label %for.inc.431

for.inc.431:                                      ; preds = %if.end.430
  %352 = load i32, i32* %ch, align 4, !tbaa !11
  %inc432 = add nsw i32 %352, 1
  store i32 %inc432, i32* %ch, align 4, !tbaa !11
  br label %for.cond.356

for.end.433:                                      ; preds = %for.cond.356
  br label %for.inc.434

for.inc.434:                                      ; preds = %for.end.433
  %353 = load i32, i32* %gr, align 4, !tbaa !11
  %inc435 = add nsw i32 %353, 1
  store i32 %inc435, i32* %gr, align 4, !tbaa !11
  br label %for.cond.351

for.end.436:                                      ; preds = %for.cond.351
  store i32 0, i32* %gr, align 4, !tbaa !11
  br label %for.cond.437

for.cond.437:                                     ; preds = %for.inc.467, %for.end.436
  %354 = load i32, i32* %gr, align 4, !tbaa !11
  %355 = load %struct.lame_global_flags*, %struct.lame_global_flags** %gfp.addr, align 8, !tbaa !1
  %mode_gr438 = getelementptr inbounds %struct.lame_global_flags, %struct.lame_global_flags* %355, i32 0, i32 45
  %356 = load i32, i32* %mode_gr438, align 4, !tbaa !12
  %cmp439 = icmp slt i32 %354, %356
  br i1 %cmp439, label %for.body.441, label %for.end.469

for.body.441:                                     ; preds = %for.cond.437
  store i32 0, i32* %ch, align 4, !tbaa !11
  br label %for.cond.442

for.cond.442:                                     ; preds = %for.inc.464, %for.body.441
  %357 = load i32, i32* %ch, align 4, !tbaa !11
  %358 = load %struct.lame_global_flags*, %struct.lame_global_flags** %gfp.addr, align 8, !tbaa !1
  %stereo443 = getelementptr inbounds %struct.lame_global_flags, %struct.lame_global_flags* %358, i32 0, i32 46
  %359 = load i32, i32* %stereo443, align 4, !tbaa !15
  %cmp444 = icmp slt i32 %357, %359
  br i1 %cmp444, label %for.body.446, label %for.end.466

for.body.446:                                     ; preds = %for.cond.442
  %360 = load i32, i32* %ch, align 4, !tbaa !11
  %idxprom447 = sext i32 %360 to i64
  %361 = load i32, i32* %gr, align 4, !tbaa !11
  %idxprom448 = sext i32 %361 to i64
  %362 = load %struct.III_side_info_t*, %struct.III_side_info_t** %l3_side.addr, align 8, !tbaa !1
  %gr449 = getelementptr inbounds %struct.III_side_info_t, %struct.III_side_info_t* %362, i32 0, i32 4
  %arrayidx450 = getelementptr inbounds [2 x %struct.anon], [2 x %struct.anon]* %gr449, i32 0, i64 %idxprom448
  %ch451 = getelementptr inbounds %struct.anon, %struct.anon* %arrayidx450, i32 0, i32 0
  %arrayidx452 = getelementptr inbounds [2 x %struct.gr_info_ss], [2 x %struct.gr_info_ss]* %ch451, i32 0, i64 %idxprom447
  %tt453 = getelementptr inbounds %struct.gr_info_ss, %struct.gr_info_ss* %arrayidx452, i32 0, i32 0
  store %struct.gr_info* %tt453, %struct.gr_info** %cod_info, align 8, !tbaa !1
  %363 = load %struct.lame_global_flags*, %struct.lame_global_flags** %gfp.addr, align 8, !tbaa !1
  %364 = load i32, i32* %gr, align 4, !tbaa !11
  %365 = load i32, i32* %ch, align 4, !tbaa !11
  %366 = load [2 x [576 x i32]]*, [2 x [576 x i32]]** %l3_enc.addr, align 8, !tbaa !1
  %367 = load %struct.III_side_info_t*, %struct.III_side_info_t** %l3_side.addr, align 8, !tbaa !1
  %368 = load [2 x %struct.III_scalefac_t]*, [2 x %struct.III_scalefac_t]** %scalefac.addr, align 8, !tbaa !1
  call void @best_scalefac_store(%struct.lame_global_flags* %363, i32 %364, i32 %365, [2 x [576 x i32]]* %366, %struct.III_side_info_t* %367, [2 x %struct.III_scalefac_t]* %368)
  %369 = load %struct.gr_info*, %struct.gr_info** %cod_info, align 8, !tbaa !1
  %block_type454 = getelementptr inbounds %struct.gr_info, %struct.gr_info* %369, i32 0, i32 6
  %370 = load i32, i32* %block_type454, align 4, !tbaa !17
  %cmp455 = icmp eq i32 %370, 0
  br i1 %cmp455, label %if.then.457, label %if.end.463

if.then.457:                                      ; preds = %for.body.446
  %371 = load i32, i32* %gr, align 4, !tbaa !11
  %372 = load i32, i32* %ch, align 4, !tbaa !11
  %373 = load %struct.gr_info*, %struct.gr_info** %cod_info, align 8, !tbaa !1
  %374 = load i32, i32* %ch, align 4, !tbaa !11
  %idxprom458 = sext i32 %374 to i64
  %375 = load i32, i32* %gr, align 4, !tbaa !11
  %idxprom459 = sext i32 %375 to i64
  %376 = load [2 x [576 x i32]]*, [2 x [576 x i32]]** %l3_enc.addr, align 8, !tbaa !1
  %arrayidx460 = getelementptr inbounds [2 x [576 x i32]], [2 x [576 x i32]]* %376, i64 %idxprom459
  %arrayidx461 = getelementptr inbounds [2 x [576 x i32]], [2 x [576 x i32]]* %arrayidx460, i32 0, i64 %idxprom458
  %arraydecay462 = getelementptr inbounds [576 x i32], [576 x i32]* %arrayidx461, i32 0, i32 0
  call void @best_huffman_divide(i32 %371, i32 %372, %struct.gr_info* %373, i32* %arraydecay462)
  br label %if.end.463

if.end.463:                                       ; preds = %if.then.457, %for.body.446
  %377 = load %struct.lame_global_flags*, %struct.lame_global_flags** %gfp.addr, align 8, !tbaa !1
  %378 = load %struct.gr_info*, %struct.gr_info** %cod_info, align 8, !tbaa !1
  %379 = load %struct.III_side_info_t*, %struct.III_side_info_t** %l3_side.addr, align 8, !tbaa !1
  %380 = load i32, i32* %mean_bits, align 4, !tbaa !11
  call void @ResvAdjust(%struct.lame_global_flags* %377, %struct.gr_info* %378, %struct.III_side_info_t* %379, i32 %380)
  br label %for.inc.464

for.inc.464:                                      ; preds = %if.end.463
  %381 = load i32, i32* %ch, align 4, !tbaa !11
  %inc465 = add nsw i32 %381, 1
  store i32 %inc465, i32* %ch, align 4, !tbaa !11
  br label %for.cond.442

for.end.466:                                      ; preds = %for.cond.442
  br label %for.inc.467

for.inc.467:                                      ; preds = %for.end.466
  %382 = load i32, i32* %gr, align 4, !tbaa !11
  %inc468 = add nsw i32 %382, 1
  store i32 %inc468, i32* %gr, align 4, !tbaa !11
  br label %for.cond.437

for.end.469:                                      ; preds = %for.cond.437
  store i32 0, i32* %gr, align 4, !tbaa !11
  br label %for.cond.470

for.cond.470:                                     ; preds = %for.inc.507, %for.end.469
  %383 = load i32, i32* %gr, align 4, !tbaa !11
  %384 = load %struct.lame_global_flags*, %struct.lame_global_flags** %gfp.addr, align 8, !tbaa !1
  %mode_gr471 = getelementptr inbounds %struct.lame_global_flags, %struct.lame_global_flags* %384, i32 0, i32 45
  %385 = load i32, i32* %mode_gr471, align 4, !tbaa !12
  %cmp472 = icmp slt i32 %383, %385
  br i1 %cmp472, label %for.body.474, label %for.end.509

for.body.474:                                     ; preds = %for.cond.470
  store i32 0, i32* %ch, align 4, !tbaa !11
  br label %for.cond.475

for.cond.475:                                     ; preds = %for.inc.504, %for.body.474
  %386 = load i32, i32* %ch, align 4, !tbaa !11
  %387 = load %struct.lame_global_flags*, %struct.lame_global_flags** %gfp.addr, align 8, !tbaa !1
  %stereo476 = getelementptr inbounds %struct.lame_global_flags, %struct.lame_global_flags* %387, i32 0, i32 46
  %388 = load i32, i32* %stereo476, align 4, !tbaa !15
  %cmp477 = icmp slt i32 %386, %388
  br i1 %cmp477, label %for.body.479, label %for.end.506

for.body.479:                                     ; preds = %for.cond.475
  store i32 0, i32* %i, align 4, !tbaa !11
  br label %for.cond.480

for.cond.480:                                     ; preds = %for.inc.501, %for.body.479
  %389 = load i32, i32* %i, align 4, !tbaa !11
  %cmp481 = icmp slt i32 %389, 576
  br i1 %cmp481, label %for.body.483, label %for.end.503

for.body.483:                                     ; preds = %for.cond.480
  %390 = load i32, i32* %i, align 4, !tbaa !11
  %idxprom484 = sext i32 %390 to i64
  %391 = load i32, i32* %ch, align 4, !tbaa !11
  %idxprom485 = sext i32 %391 to i64
  %392 = load i32, i32* %gr, align 4, !tbaa !11
  %idxprom486 = sext i32 %392 to i64
  %393 = load [2 x [576 x double]]*, [2 x [576 x double]]** %xr.addr, align 8, !tbaa !1
  %arrayidx487 = getelementptr inbounds [2 x [576 x double]], [2 x [576 x double]]* %393, i64 %idxprom486
  %arrayidx488 = getelementptr inbounds [2 x [576 x double]], [2 x [576 x double]]* %arrayidx487, i32 0, i64 %idxprom485
  %arrayidx489 = getelementptr inbounds [576 x double], [576 x double]* %arrayidx488, i32 0, i64 %idxprom484
  %394 = load double, double* %arrayidx489, align 8, !tbaa !13
  %cmp490 = fcmp olt double %394, 0.000000e+00
  br i1 %cmp490, label %if.then.492, label %if.end.500

if.then.492:                                      ; preds = %for.body.483
  %395 = load i32, i32* %i, align 4, !tbaa !11
  %idxprom493 = sext i32 %395 to i64
  %396 = load i32, i32* %ch, align 4, !tbaa !11
  %idxprom494 = sext i32 %396 to i64
  %397 = load i32, i32* %gr, align 4, !tbaa !11
  %idxprom495 = sext i32 %397 to i64
  %398 = load [2 x [576 x i32]]*, [2 x [576 x i32]]** %l3_enc.addr, align 8, !tbaa !1
  %arrayidx496 = getelementptr inbounds [2 x [576 x i32]], [2 x [576 x i32]]* %398, i64 %idxprom495
  %arrayidx497 = getelementptr inbounds [2 x [576 x i32]], [2 x [576 x i32]]* %arrayidx496, i32 0, i64 %idxprom494
  %arrayidx498 = getelementptr inbounds [576 x i32], [576 x i32]* %arrayidx497, i32 0, i64 %idxprom493
  %399 = load i32, i32* %arrayidx498, align 4, !tbaa !11
  %mul499 = mul nsw i32 %399, -1
  store i32 %mul499, i32* %arrayidx498, align 4, !tbaa !11
  br label %if.end.500

if.end.500:                                       ; preds = %if.then.492, %for.body.483
  br label %for.inc.501

for.inc.501:                                      ; preds = %if.end.500
  %400 = load i32, i32* %i, align 4, !tbaa !11
  %inc502 = add nsw i32 %400, 1
  store i32 %inc502, i32* %i, align 4, !tbaa !11
  br label %for.cond.480

for.end.503:                                      ; preds = %for.cond.480
  br label %for.inc.504

for.inc.504:                                      ; preds = %for.end.503
  %401 = load i32, i32* %ch, align 4, !tbaa !11
  %inc505 = add nsw i32 %401, 1
  store i32 %inc505, i32* %ch, align 4, !tbaa !11
  br label %for.cond.475

for.end.506:                                      ; preds = %for.cond.475
  br label %for.inc.507

for.inc.507:                                      ; preds = %for.end.506
  %402 = load i32, i32* %gr, align 4, !tbaa !11
  %inc508 = add nsw i32 %402, 1
  store i32 %inc508, i32* %gr, align 4, !tbaa !11
  br label %for.cond.470

for.end.509:                                      ; preds = %for.cond.470
  %403 = load %struct.lame_global_flags*, %struct.lame_global_flags** %gfp.addr, align 8, !tbaa !1
  %404 = load %struct.III_side_info_t*, %struct.III_side_info_t** %l3_side.addr, align 8, !tbaa !1
  %405 = load i32, i32* %mean_bits, align 4, !tbaa !11
  call void @ResvFrameEnd(%struct.lame_global_flags* %403, %struct.III_side_info_t* %404, i32 %405)
  %406 = bitcast i32* %reparted to i8*
  call void @llvm.lifetime.end(i64 4, i8* %406) #1
  %407 = bitcast i32* %analog_silence to i8*
  call void @llvm.lifetime.end(i64 4, i8* %407) #1
  %408 = bitcast i32* %gr to i8*
  call void @llvm.lifetime.end(i64 4, i8* %408) #1
  %409 = bitcast i32* %ch to i8*
  call void @llvm.lifetime.end(i64 4, i8* %409) #1
  %410 = bitcast i32* %i to i8*
  call void @llvm.lifetime.end(i64 4, i8* %410) #1
  %411 = bitcast i32* %mean_bits to i8*
  call void @llvm.lifetime.end(i64 4, i8* %411) #1
  %412 = bitcast i32* %bits to i8*
  call void @llvm.lifetime.end(i64 4, i8* %412) #1
  %413 = bitcast i32* %bitsPerFrame to i8*
  call void @llvm.lifetime.end(i64 4, i8* %413) #1
  %414 = bitcast [15 x i32]* %frameBits to i8*
  call void @llvm.lifetime.end(i64 60, i8* %414) #1
  %415 = bitcast i32* %min_mean_bits to i8*
  call void @llvm.lifetime.end(i64 4, i8* %415) #1
  %416 = bitcast i32* %max_bits to i8*
  call void @llvm.lifetime.end(i64 4, i8* %416) #1
  %417 = bitcast i32* %min_bits to i8*
  call void @llvm.lifetime.end(i64 4, i8* %417) #1
  %418 = bitcast i32* %used_bits to i8*
  call void @llvm.lifetime.end(i64 4, i8* %418) #1
  %419 = bitcast i32* %dbits to i8*
  call void @llvm.lifetime.end(i64 4, i8* %419) #1
  %420 = bitcast i32* %this_bits to i8*
  call void @llvm.lifetime.end(i64 4, i8* %420) #1
  %421 = bitcast [4 x [21 x double]]* %xfsf to i8*
  call void @llvm.lifetime.end(i64 672, i8* %421) #1
  %422 = bitcast [4 x double]* %targ_noise to i8*
  call void @llvm.lifetime.end(i64 32, i8* %422) #1
  %423 = bitcast [4 x double]* %noise to i8*
  call void @llvm.lifetime.end(i64 32, i8* %423) #1
  %424 = bitcast [2 x [2 x i32]]* %save_bits to i8*
  call void @llvm.lifetime.end(i64 16, i8* %424) #1
  %425 = bitcast %struct.gr_info** %cod_info to i8*
  call void @llvm.lifetime.end(i64 8, i8* %425) #1
  %426 = bitcast %struct.III_psy_xmin* %l3_xmin to i8*
  call void @llvm.lifetime.end(i64 488, i8* %426) #1
  %427 = bitcast [576 x i32]* %bst_l3_enc to i8*
  call void @llvm.lifetime.end(i64 2304, i8* %427) #1
  %428 = bitcast %struct.III_scalefac_t* %bst_scalefac to i8*
  call void @llvm.lifetime.end(i64 244, i8* %428) #1
  %429 = bitcast %struct.gr_info* %clean_cod_info to i8*
  call void @llvm.lifetime.end(i64 120, i8* %429) #1
  %430 = bitcast %struct.gr_info* %bst_cod_info to i8*
  call void @llvm.lifetime.end(i64 120, i8* %430) #1
  ret void

unreachable:                                      ; preds = %cleanup.216, %cleanup
  unreachable
}

; Function Attrs: nounwind
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* nocapture, i8* nocapture readonly, i64, i32, i1) #1

; Function Attrs: nounwind uwtable
define i32 @VBR_compare(i32 %best_over, double %best_tot_noise, double %best_over_noise, double %best_max_noise, i32 %over, double %tot_noise, double %over_noise, double %max_noise) #0 {
entry:
  %best_over.addr = alloca i32, align 4
  %best_tot_noise.addr = alloca double, align 8
  %best_over_noise.addr = alloca double, align 8
  %best_max_noise.addr = alloca double, align 8
  %over.addr = alloca i32, align 4
  %tot_noise.addr = alloca double, align 8
  %over_noise.addr = alloca double, align 8
  %max_noise.addr = alloca double, align 8
  %better = alloca i32, align 4
  store i32 %best_over, i32* %best_over.addr, align 4, !tbaa !11
  store double %best_tot_noise, double* %best_tot_noise.addr, align 8, !tbaa !13
  store double %best_over_noise, double* %best_over_noise.addr, align 8, !tbaa !13
  store double %best_max_noise, double* %best_max_noise.addr, align 8, !tbaa !13
  store i32 %over, i32* %over.addr, align 4, !tbaa !11
  store double %tot_noise, double* %tot_noise.addr, align 8, !tbaa !13
  store double %over_noise, double* %over_noise.addr, align 8, !tbaa !13
  store double %max_noise, double* %max_noise.addr, align 8, !tbaa !13
  %0 = bitcast i32* %better to i8*
  call void @llvm.lifetime.start(i64 4, i8* %0) #1
  store i32 0, i32* %better, align 4, !tbaa !11
  %1 = load i32, i32* %over.addr, align 4, !tbaa !11
  %2 = load i32, i32* %best_over.addr, align 4, !tbaa !11
  %cmp = icmp sle i32 %1, %2
  br i1 %cmp, label %land.lhs.true, label %land.end

land.lhs.true:                                    ; preds = %entry
  %3 = load double, double* %over_noise.addr, align 8, !tbaa !13
  %4 = load double, double* %best_over_noise.addr, align 8, !tbaa !13
  %cmp1 = fcmp ole double %3, %4
  br i1 %cmp1, label %land.lhs.true.2, label %land.end

land.lhs.true.2:                                  ; preds = %land.lhs.true
  %5 = load double, double* %tot_noise.addr, align 8, !tbaa !13
  %6 = load double, double* %best_tot_noise.addr, align 8, !tbaa !13
  %cmp3 = fcmp ole double %5, %6
  br i1 %cmp3, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %land.lhs.true.2
  %7 = load double, double* %max_noise.addr, align 8, !tbaa !13
  %8 = load double, double* %best_max_noise.addr, align 8, !tbaa !13
  %cmp4 = fcmp ole double %7, %8
  br label %land.end

land.end:                                         ; preds = %land.rhs, %land.lhs.true.2, %land.lhs.true, %entry
  %9 = phi i1 [ false, %land.lhs.true.2 ], [ false, %land.lhs.true ], [ false, %entry ], [ %cmp4, %land.rhs ]
  %land.ext = zext i1 %9 to i32
  store i32 %land.ext, i32* %better, align 4, !tbaa !11
  %10 = load i32, i32* %better, align 4, !tbaa !11
  %11 = bitcast i32* %better to i8*
  call void @llvm.lifetime.end(i64 4, i8* %11) #1
  ret i32 %10
}

; Function Attrs: nounwind
declare double @log(double) #3

; Function Attrs: nounwind readnone
declare double @fabs(double) #4

; Function Attrs: nounwind
declare double @sqrt(double) #3

declare i32 @bin_search_StepSize2(%struct.lame_global_flags*, i32, i32, i32*, double*, %struct.gr_info*) #2

declare i32 @inner_loop(%struct.lame_global_flags*, double*, i32*, i32, %struct.gr_info*) #2

; Function Attrs: nounwind uwtable
define i32 @calc_noise1(double* %xr, i32* %ix, %struct.gr_info* %cod_info, [21 x double]* %xfsf, [21 x double]* %distort, %struct.III_psy_xmin* %l3_xmin, %struct.III_scalefac_t* %scalefac, double* %over_noise, double* %tot_noise, double* %max_noise) #0 {
entry:
  %xr.addr = alloca double*, align 8
  %ix.addr = alloca i32*, align 8
  %cod_info.addr = alloca %struct.gr_info*, align 8
  %xfsf.addr = alloca [21 x double]*, align 8
  %distort.addr = alloca [21 x double]*, align 8
  %l3_xmin.addr = alloca %struct.III_psy_xmin*, align 8
  %scalefac.addr = alloca %struct.III_scalefac_t*, align 8
  %over_noise.addr = alloca double*, align 8
  %tot_noise.addr = alloca double*, align 8
  %max_noise.addr = alloca double*, align 8
  %start = alloca i32, align 4
  %end = alloca i32, align 4
  %l = alloca i32, align 4
  %i = alloca i32, align 4
  %over = alloca i32, align 4
  %sfb = alloca i32, align 4
  %sum = alloca double, align 8
  %step = alloca double, align 8
  %bw = alloca double, align 8
  %count = alloca i32, align 4
  %noise = alloca double, align 8
  %step1 = alloca double, align 8
  %s = alloca i32, align 4
  %temp = alloca double, align 8
  %s76 = alloca i32, align 4
  %temp104 = alloca double, align 8
  store double* %xr, double** %xr.addr, align 8, !tbaa !1
  store i32* %ix, i32** %ix.addr, align 8, !tbaa !1
  store %struct.gr_info* %cod_info, %struct.gr_info** %cod_info.addr, align 8, !tbaa !1
  store [21 x double]* %xfsf, [21 x double]** %xfsf.addr, align 8, !tbaa !1
  store [21 x double]* %distort, [21 x double]** %distort.addr, align 8, !tbaa !1
  store %struct.III_psy_xmin* %l3_xmin, %struct.III_psy_xmin** %l3_xmin.addr, align 8, !tbaa !1
  store %struct.III_scalefac_t* %scalefac, %struct.III_scalefac_t** %scalefac.addr, align 8, !tbaa !1
  store double* %over_noise, double** %over_noise.addr, align 8, !tbaa !1
  store double* %tot_noise, double** %tot_noise.addr, align 8, !tbaa !1
  store double* %max_noise, double** %max_noise.addr, align 8, !tbaa !1
  %0 = bitcast i32* %start to i8*
  call void @llvm.lifetime.start(i64 4, i8* %0) #1
  %1 = bitcast i32* %end to i8*
  call void @llvm.lifetime.start(i64 4, i8* %1) #1
  %2 = bitcast i32* %l to i8*
  call void @llvm.lifetime.start(i64 4, i8* %2) #1
  %3 = bitcast i32* %i to i8*
  call void @llvm.lifetime.start(i64 4, i8* %3) #1
  %4 = bitcast i32* %over to i8*
  call void @llvm.lifetime.start(i64 4, i8* %4) #1
  store i32 0, i32* %over, align 4, !tbaa !11
  %5 = bitcast i32* %sfb to i8*
  call void @llvm.lifetime.start(i64 4, i8* %5) #1
  %6 = bitcast double* %sum to i8*
  call void @llvm.lifetime.start(i64 8, i8* %6) #1
  %7 = bitcast double* %step to i8*
  call void @llvm.lifetime.start(i64 8, i8* %7) #1
  %8 = bitcast double* %bw to i8*
  call void @llvm.lifetime.start(i64 8, i8* %8) #1
  %9 = bitcast i32* %count to i8*
  call void @llvm.lifetime.start(i64 4, i8* %9) #1
  store i32 0, i32* %count, align 4, !tbaa !11
  %10 = bitcast double* %noise to i8*
  call void @llvm.lifetime.start(i64 8, i8* %10) #1
  %11 = load double*, double** %over_noise.addr, align 8, !tbaa !1
  store double 0.000000e+00, double* %11, align 8, !tbaa !13
  %12 = load double*, double** %tot_noise.addr, align 8, !tbaa !1
  store double 0.000000e+00, double* %12, align 8, !tbaa !13
  %13 = load double*, double** %max_noise.addr, align 8, !tbaa !1
  store double -9.990000e+02, double* %13, align 8, !tbaa !13
  store i32 0, i32* %sfb, align 4, !tbaa !11
  br label %for.cond

for.cond:                                         ; preds = %for.inc.65, %entry
  %14 = load i32, i32* %sfb, align 4, !tbaa !11
  %15 = load %struct.gr_info*, %struct.gr_info** %cod_info.addr, align 8, !tbaa !1
  %sfb_lmax = getelementptr inbounds %struct.gr_info, %struct.gr_info* %15, i32 0, i32 16
  %16 = load i32, i32* %sfb_lmax, align 4, !tbaa !41
  %cmp = icmp ult i32 %14, %16
  br i1 %cmp, label %for.body, label %for.end.67

for.body:                                         ; preds = %for.cond
  %17 = bitcast double* %step1 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %17) #1
  %18 = bitcast i32* %s to i8*
  call void @llvm.lifetime.start(i64 4, i8* %18) #1
  %19 = load i32, i32* %sfb, align 4, !tbaa !11
  %idxprom = zext i32 %19 to i64
  %20 = load %struct.III_scalefac_t*, %struct.III_scalefac_t** %scalefac.addr, align 8, !tbaa !1
  %l2 = getelementptr inbounds %struct.III_scalefac_t, %struct.III_scalefac_t* %20, i32 0, i32 0
  %arrayidx = getelementptr inbounds [22 x i32], [22 x i32]* %l2, i32 0, i64 %idxprom
  %21 = load i32, i32* %arrayidx, align 4, !tbaa !11
  store i32 %21, i32* %s, align 4, !tbaa !11
  %22 = load %struct.gr_info*, %struct.gr_info** %cod_info.addr, align 8, !tbaa !1
  %preflag = getelementptr inbounds %struct.gr_info, %struct.gr_info* %22, i32 0, i32 12
  %23 = load i32, i32* %preflag, align 4, !tbaa !27
  %tobool = icmp ne i32 %23, 0
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %for.body
  %24 = load i32, i32* %sfb, align 4, !tbaa !11
  %idxprom3 = zext i32 %24 to i64
  %arrayidx4 = getelementptr inbounds [21 x i32], [21 x i32]* @pretab, i32 0, i64 %idxprom3
  %25 = load i32, i32* %arrayidx4, align 4, !tbaa !11
  %26 = load i32, i32* %s, align 4, !tbaa !11
  %add = add nsw i32 %26, %25
  store i32 %add, i32* %s, align 4, !tbaa !11
  br label %if.end

if.end:                                           ; preds = %if.then, %for.body
  %27 = load %struct.gr_info*, %struct.gr_info** %cod_info.addr, align 8, !tbaa !1
  %global_gain = getelementptr inbounds %struct.gr_info, %struct.gr_info* %27, i32 0, i32 3
  %28 = load i32, i32* %global_gain, align 4, !tbaa !29
  %29 = load i32, i32* %s, align 4, !tbaa !11
  %30 = load %struct.gr_info*, %struct.gr_info** %cod_info.addr, align 8, !tbaa !1
  %scalefac_scale = getelementptr inbounds %struct.gr_info, %struct.gr_info* %30, i32 0, i32 13
  %31 = load i32, i32* %scalefac_scale, align 4, !tbaa !28
  %add5 = add i32 %31, 1
  %shl = shl i32 %29, %add5
  %sub = sub i32 %28, %shl
  store i32 %sub, i32* %s, align 4, !tbaa !11
  %32 = load i32, i32* %s, align 4, !tbaa !11
  %idxprom6 = sext i32 %32 to i64
  %arrayidx7 = getelementptr inbounds [256 x double], [256 x double]* @pow20, i32 0, i64 %idxprom6
  %33 = load double, double* %arrayidx7, align 8, !tbaa !13
  store double %33, double* %step1, align 8, !tbaa !13
  %34 = load i32, i32* %sfb, align 4, !tbaa !11
  %idxprom8 = zext i32 %34 to i64
  %arrayidx9 = getelementptr inbounds [23 x i32], [23 x i32]* getelementptr inbounds (%struct.scalefac_struct, %struct.scalefac_struct* @scalefac_band, i32 0, i32 0), i32 0, i64 %idxprom8
  %35 = load i32, i32* %arrayidx9, align 4, !tbaa !11
  store i32 %35, i32* %start, align 4, !tbaa !11
  %36 = load i32, i32* %sfb, align 4, !tbaa !11
  %add10 = add i32 %36, 1
  %idxprom11 = zext i32 %add10 to i64
  %arrayidx12 = getelementptr inbounds [23 x i32], [23 x i32]* getelementptr inbounds (%struct.scalefac_struct, %struct.scalefac_struct* @scalefac_band, i32 0, i32 0), i32 0, i64 %idxprom11
  %37 = load i32, i32* %arrayidx12, align 4, !tbaa !11
  store i32 %37, i32* %end, align 4, !tbaa !11
  %38 = load i32, i32* %end, align 4, !tbaa !11
  %39 = load i32, i32* %start, align 4, !tbaa !11
  %sub13 = sub nsw i32 %38, %39
  %conv = sitofp i32 %sub13 to double
  store double %conv, double* %bw, align 8, !tbaa !13
  store double 0.000000e+00, double* %sum, align 8, !tbaa !13
  %40 = load i32, i32* %start, align 4, !tbaa !11
  store i32 %40, i32* %l, align 4, !tbaa !11
  br label %for.cond.14

for.cond.14:                                      ; preds = %for.inc, %if.end
  %41 = load i32, i32* %l, align 4, !tbaa !11
  %42 = load i32, i32* %end, align 4, !tbaa !11
  %cmp15 = icmp slt i32 %41, %42
  br i1 %cmp15, label %for.body.17, label %for.end

for.body.17:                                      ; preds = %for.cond.14
  %43 = bitcast double* %temp to i8*
  call void @llvm.lifetime.start(i64 8, i8* %43) #1
  %44 = load i32, i32* %l, align 4, !tbaa !11
  %idxprom18 = sext i32 %44 to i64
  %45 = load double*, double** %xr.addr, align 8, !tbaa !1
  %arrayidx19 = getelementptr inbounds double, double* %45, i64 %idxprom18
  %46 = load double, double* %arrayidx19, align 8, !tbaa !13
  %call = call double @fabs(double %46) #5
  %47 = load i32, i32* %l, align 4, !tbaa !11
  %idxprom20 = sext i32 %47 to i64
  %48 = load i32*, i32** %ix.addr, align 8, !tbaa !1
  %arrayidx21 = getelementptr inbounds i32, i32* %48, i64 %idxprom20
  %49 = load i32, i32* %arrayidx21, align 4, !tbaa !11
  %idxprom22 = sext i32 %49 to i64
  %arrayidx23 = getelementptr inbounds [8208 x double], [8208 x double]* @pow43, i32 0, i64 %idxprom22
  %50 = load double, double* %arrayidx23, align 8, !tbaa !13
  %51 = load double, double* %step1, align 8, !tbaa !13
  %mul = fmul double %50, %51
  %sub24 = fsub double %call, %mul
  store double %sub24, double* %temp, align 8, !tbaa !13
  %52 = load double, double* %temp, align 8, !tbaa !13
  %53 = load double, double* %temp, align 8, !tbaa !13
  %mul25 = fmul double %52, %53
  %54 = load double, double* %sum, align 8, !tbaa !13
  %add26 = fadd double %54, %mul25
  store double %add26, double* %sum, align 8, !tbaa !13
  %55 = bitcast double* %temp to i8*
  call void @llvm.lifetime.end(i64 8, i8* %55) #1
  br label %for.inc

for.inc:                                          ; preds = %for.body.17
  %56 = load i32, i32* %l, align 4, !tbaa !11
  %inc = add nsw i32 %56, 1
  store i32 %inc, i32* %l, align 4, !tbaa !11
  br label %for.cond.14

for.end:                                          ; preds = %for.cond.14
  %57 = load double, double* %sum, align 8, !tbaa !13
  %58 = load double, double* %bw, align 8, !tbaa !13
  %div = fdiv double %57, %58
  %59 = load i32, i32* %sfb, align 4, !tbaa !11
  %idxprom27 = zext i32 %59 to i64
  %60 = load [21 x double]*, [21 x double]** %xfsf.addr, align 8, !tbaa !1
  %arrayidx28 = getelementptr inbounds [21 x double], [21 x double]* %60, i64 0
  %arrayidx29 = getelementptr inbounds [21 x double], [21 x double]* %arrayidx28, i32 0, i64 %idxprom27
  store double %div, double* %arrayidx29, align 8, !tbaa !13
  %61 = load i32, i32* %sfb, align 4, !tbaa !11
  %idxprom30 = zext i32 %61 to i64
  %62 = load [21 x double]*, [21 x double]** %xfsf.addr, align 8, !tbaa !1
  %arrayidx31 = getelementptr inbounds [21 x double], [21 x double]* %62, i64 0
  %arrayidx32 = getelementptr inbounds [21 x double], [21 x double]* %arrayidx31, i32 0, i64 %idxprom30
  %63 = load double, double* %arrayidx32, align 8, !tbaa !13
  %64 = load i32, i32* %sfb, align 4, !tbaa !11
  %idxprom33 = zext i32 %64 to i64
  %65 = load %struct.III_psy_xmin*, %struct.III_psy_xmin** %l3_xmin.addr, align 8, !tbaa !1
  %l34 = getelementptr inbounds %struct.III_psy_xmin, %struct.III_psy_xmin* %65, i32 0, i32 0
  %arrayidx35 = getelementptr inbounds [22 x double], [22 x double]* %l34, i32 0, i64 %idxprom33
  %66 = load double, double* %arrayidx35, align 8, !tbaa !13
  %div36 = fdiv double %63, %66
  %cmp37 = fcmp ogt double 1.000000e-03, %div36
  br i1 %cmp37, label %cond.true, label %cond.false

cond.true:                                        ; preds = %for.end
  br label %cond.end

cond.false:                                       ; preds = %for.end
  %67 = load i32, i32* %sfb, align 4, !tbaa !11
  %idxprom39 = zext i32 %67 to i64
  %68 = load [21 x double]*, [21 x double]** %xfsf.addr, align 8, !tbaa !1
  %arrayidx40 = getelementptr inbounds [21 x double], [21 x double]* %68, i64 0
  %arrayidx41 = getelementptr inbounds [21 x double], [21 x double]* %arrayidx40, i32 0, i64 %idxprom39
  %69 = load double, double* %arrayidx41, align 8, !tbaa !13
  %70 = load i32, i32* %sfb, align 4, !tbaa !11
  %idxprom42 = zext i32 %70 to i64
  %71 = load %struct.III_psy_xmin*, %struct.III_psy_xmin** %l3_xmin.addr, align 8, !tbaa !1
  %l43 = getelementptr inbounds %struct.III_psy_xmin, %struct.III_psy_xmin* %71, i32 0, i32 0
  %arrayidx44 = getelementptr inbounds [22 x double], [22 x double]* %l43, i32 0, i64 %idxprom42
  %72 = load double, double* %arrayidx44, align 8, !tbaa !13
  %div45 = fdiv double %69, %72
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi double [ 1.000000e-03, %cond.true ], [ %div45, %cond.false ]
  %call46 = call double @log10(double %cond) #1
  %mul47 = fmul double 1.000000e+01, %call46
  store double %mul47, double* %noise, align 8, !tbaa !13
  %73 = load double, double* %noise, align 8, !tbaa !13
  %74 = load i32, i32* %sfb, align 4, !tbaa !11
  %idxprom48 = zext i32 %74 to i64
  %75 = load [21 x double]*, [21 x double]** %distort.addr, align 8, !tbaa !1
  %arrayidx49 = getelementptr inbounds [21 x double], [21 x double]* %75, i64 0
  %arrayidx50 = getelementptr inbounds [21 x double], [21 x double]* %arrayidx49, i32 0, i64 %idxprom48
  store double %73, double* %arrayidx50, align 8, !tbaa !13
  %76 = load double, double* %noise, align 8, !tbaa !13
  %cmp51 = fcmp ogt double %76, 0.000000e+00
  br i1 %cmp51, label %if.then.53, label %if.end.56

if.then.53:                                       ; preds = %cond.end
  %77 = load i32, i32* %over, align 4, !tbaa !11
  %inc54 = add nsw i32 %77, 1
  store i32 %inc54, i32* %over, align 4, !tbaa !11
  %78 = load double, double* %noise, align 8, !tbaa !13
  %79 = load double*, double** %over_noise.addr, align 8, !tbaa !1
  %80 = load double, double* %79, align 8, !tbaa !13
  %add55 = fadd double %80, %78
  store double %add55, double* %79, align 8, !tbaa !13
  br label %if.end.56

if.end.56:                                        ; preds = %if.then.53, %cond.end
  %81 = load double, double* %noise, align 8, !tbaa !13
  %82 = load double*, double** %tot_noise.addr, align 8, !tbaa !1
  %83 = load double, double* %82, align 8, !tbaa !13
  %add57 = fadd double %83, %81
  store double %add57, double* %82, align 8, !tbaa !13
  %84 = load double*, double** %max_noise.addr, align 8, !tbaa !1
  %85 = load double, double* %84, align 8, !tbaa !13
  %86 = load double, double* %noise, align 8, !tbaa !13
  %cmp58 = fcmp ogt double %85, %86
  br i1 %cmp58, label %cond.true.60, label %cond.false.61

cond.true.60:                                     ; preds = %if.end.56
  %87 = load double*, double** %max_noise.addr, align 8, !tbaa !1
  %88 = load double, double* %87, align 8, !tbaa !13
  br label %cond.end.62

cond.false.61:                                    ; preds = %if.end.56
  %89 = load double, double* %noise, align 8, !tbaa !13
  br label %cond.end.62

cond.end.62:                                      ; preds = %cond.false.61, %cond.true.60
  %cond63 = phi double [ %88, %cond.true.60 ], [ %89, %cond.false.61 ]
  %90 = load double*, double** %max_noise.addr, align 8, !tbaa !1
  store double %cond63, double* %90, align 8, !tbaa !13
  %91 = load i32, i32* %count, align 4, !tbaa !11
  %inc64 = add nsw i32 %91, 1
  store i32 %inc64, i32* %count, align 4, !tbaa !11
  %92 = bitcast i32* %s to i8*
  call void @llvm.lifetime.end(i64 4, i8* %92) #1
  %93 = bitcast double* %step1 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %93) #1
  br label %for.inc.65

for.inc.65:                                       ; preds = %cond.end.62
  %94 = load i32, i32* %sfb, align 4, !tbaa !11
  %inc66 = add i32 %94, 1
  store i32 %inc66, i32* %sfb, align 4, !tbaa !11
  br label %for.cond

for.end.67:                                       ; preds = %for.cond
  store i32 0, i32* %i, align 4, !tbaa !11
  br label %for.cond.68

for.cond.68:                                      ; preds = %for.inc.181, %for.end.67
  %95 = load i32, i32* %i, align 4, !tbaa !11
  %cmp69 = icmp slt i32 %95, 3
  br i1 %cmp69, label %for.body.71, label %for.end.183

for.body.71:                                      ; preds = %for.cond.68
  %96 = load %struct.gr_info*, %struct.gr_info** %cod_info.addr, align 8, !tbaa !1
  %sfb_smax = getelementptr inbounds %struct.gr_info, %struct.gr_info* %96, i32 0, i32 17
  %97 = load i32, i32* %sfb_smax, align 4, !tbaa !42
  store i32 %97, i32* %sfb, align 4, !tbaa !11
  br label %for.cond.72

for.cond.72:                                      ; preds = %for.inc.178, %for.body.71
  %98 = load i32, i32* %sfb, align 4, !tbaa !11
  %cmp73 = icmp ult i32 %98, 12
  br i1 %cmp73, label %for.body.75, label %for.end.180

for.body.75:                                      ; preds = %for.cond.72
  %99 = bitcast i32* %s76 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %99) #1
  %100 = load i32, i32* %i, align 4, !tbaa !11
  %idxprom77 = sext i32 %100 to i64
  %101 = load i32, i32* %sfb, align 4, !tbaa !11
  %idxprom78 = zext i32 %101 to i64
  %102 = load %struct.III_scalefac_t*, %struct.III_scalefac_t** %scalefac.addr, align 8, !tbaa !1
  %s79 = getelementptr inbounds %struct.III_scalefac_t, %struct.III_scalefac_t* %102, i32 0, i32 1
  %arrayidx80 = getelementptr inbounds [13 x [3 x i32]], [13 x [3 x i32]]* %s79, i32 0, i64 %idxprom78
  %arrayidx81 = getelementptr inbounds [3 x i32], [3 x i32]* %arrayidx80, i32 0, i64 %idxprom77
  %103 = load i32, i32* %arrayidx81, align 4, !tbaa !11
  %104 = load %struct.gr_info*, %struct.gr_info** %cod_info.addr, align 8, !tbaa !1
  %scalefac_scale82 = getelementptr inbounds %struct.gr_info, %struct.gr_info* %104, i32 0, i32 13
  %105 = load i32, i32* %scalefac_scale82, align 4, !tbaa !28
  %add83 = add i32 %105, 1
  %shl84 = shl i32 %103, %add83
  %106 = load i32, i32* %i, align 4, !tbaa !11
  %idxprom85 = sext i32 %106 to i64
  %107 = load %struct.gr_info*, %struct.gr_info** %cod_info.addr, align 8, !tbaa !1
  %subblock_gain = getelementptr inbounds %struct.gr_info, %struct.gr_info* %107, i32 0, i32 9
  %arrayidx86 = getelementptr inbounds [3 x i32], [3 x i32]* %subblock_gain, i32 0, i64 %idxprom85
  %108 = load i32, i32* %arrayidx86, align 4, !tbaa !11
  %mul87 = mul nsw i32 %108, 8
  %add88 = add nsw i32 %shl84, %mul87
  store i32 %add88, i32* %s76, align 4, !tbaa !11
  %109 = load %struct.gr_info*, %struct.gr_info** %cod_info.addr, align 8, !tbaa !1
  %global_gain89 = getelementptr inbounds %struct.gr_info, %struct.gr_info* %109, i32 0, i32 3
  %110 = load i32, i32* %global_gain89, align 4, !tbaa !29
  %111 = load i32, i32* %s76, align 4, !tbaa !11
  %sub90 = sub i32 %110, %111
  store i32 %sub90, i32* %s76, align 4, !tbaa !11
  %112 = load i32, i32* %s76, align 4, !tbaa !11
  %idxprom91 = sext i32 %112 to i64
  %arrayidx92 = getelementptr inbounds [256 x double], [256 x double]* @pow20, i32 0, i64 %idxprom91
  %113 = load double, double* %arrayidx92, align 8, !tbaa !13
  store double %113, double* %step, align 8, !tbaa !13
  %114 = load i32, i32* %sfb, align 4, !tbaa !11
  %idxprom93 = zext i32 %114 to i64
  %arrayidx94 = getelementptr inbounds [14 x i32], [14 x i32]* getelementptr inbounds (%struct.scalefac_struct, %struct.scalefac_struct* @scalefac_band, i32 0, i32 1), i32 0, i64 %idxprom93
  %115 = load i32, i32* %arrayidx94, align 4, !tbaa !11
  store i32 %115, i32* %start, align 4, !tbaa !11
  %116 = load i32, i32* %sfb, align 4, !tbaa !11
  %add95 = add i32 %116, 1
  %idxprom96 = zext i32 %add95 to i64
  %arrayidx97 = getelementptr inbounds [14 x i32], [14 x i32]* getelementptr inbounds (%struct.scalefac_struct, %struct.scalefac_struct* @scalefac_band, i32 0, i32 1), i32 0, i64 %idxprom96
  %117 = load i32, i32* %arrayidx97, align 4, !tbaa !11
  store i32 %117, i32* %end, align 4, !tbaa !11
  %118 = load i32, i32* %end, align 4, !tbaa !11
  %119 = load i32, i32* %start, align 4, !tbaa !11
  %sub98 = sub nsw i32 %118, %119
  %conv99 = sitofp i32 %sub98 to double
  store double %conv99, double* %bw, align 8, !tbaa !13
  store double 0.000000e+00, double* %sum, align 8, !tbaa !13
  %120 = load i32, i32* %start, align 4, !tbaa !11
  store i32 %120, i32* %l, align 4, !tbaa !11
  br label %for.cond.100

for.cond.100:                                     ; preds = %for.inc.120, %for.body.75
  %121 = load i32, i32* %l, align 4, !tbaa !11
  %122 = load i32, i32* %end, align 4, !tbaa !11
  %cmp101 = icmp slt i32 %121, %122
  br i1 %cmp101, label %for.body.103, label %for.end.122

for.body.103:                                     ; preds = %for.cond.100
  %123 = bitcast double* %temp104 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %123) #1
  %124 = load i32, i32* %l, align 4, !tbaa !11
  %mul105 = mul nsw i32 %124, 3
  %125 = load i32, i32* %i, align 4, !tbaa !11
  %add106 = add nsw i32 %mul105, %125
  %idxprom107 = sext i32 %add106 to i64
  %126 = load double*, double** %xr.addr, align 8, !tbaa !1
  %arrayidx108 = getelementptr inbounds double, double* %126, i64 %idxprom107
  %127 = load double, double* %arrayidx108, align 8, !tbaa !13
  %call109 = call double @fabs(double %127) #5
  %128 = load i32, i32* %l, align 4, !tbaa !11
  %mul110 = mul nsw i32 %128, 3
  %129 = load i32, i32* %i, align 4, !tbaa !11
  %add111 = add nsw i32 %mul110, %129
  %idxprom112 = sext i32 %add111 to i64
  %130 = load i32*, i32** %ix.addr, align 8, !tbaa !1
  %arrayidx113 = getelementptr inbounds i32, i32* %130, i64 %idxprom112
  %131 = load i32, i32* %arrayidx113, align 4, !tbaa !11
  %idxprom114 = sext i32 %131 to i64
  %arrayidx115 = getelementptr inbounds [8208 x double], [8208 x double]* @pow43, i32 0, i64 %idxprom114
  %132 = load double, double* %arrayidx115, align 8, !tbaa !13
  %133 = load double, double* %step, align 8, !tbaa !13
  %mul116 = fmul double %132, %133
  %sub117 = fsub double %call109, %mul116
  store double %sub117, double* %temp104, align 8, !tbaa !13
  %134 = load double, double* %temp104, align 8, !tbaa !13
  %135 = load double, double* %temp104, align 8, !tbaa !13
  %mul118 = fmul double %134, %135
  %136 = load double, double* %sum, align 8, !tbaa !13
  %add119 = fadd double %136, %mul118
  store double %add119, double* %sum, align 8, !tbaa !13
  %137 = bitcast double* %temp104 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %137) #1
  br label %for.inc.120

for.inc.120:                                      ; preds = %for.body.103
  %138 = load i32, i32* %l, align 4, !tbaa !11
  %inc121 = add nsw i32 %138, 1
  store i32 %inc121, i32* %l, align 4, !tbaa !11
  br label %for.cond.100

for.end.122:                                      ; preds = %for.cond.100
  %139 = load double, double* %sum, align 8, !tbaa !13
  %140 = load double, double* %bw, align 8, !tbaa !13
  %div123 = fdiv double %139, %140
  %141 = load i32, i32* %sfb, align 4, !tbaa !11
  %idxprom124 = zext i32 %141 to i64
  %142 = load i32, i32* %i, align 4, !tbaa !11
  %add125 = add nsw i32 %142, 1
  %idxprom126 = sext i32 %add125 to i64
  %143 = load [21 x double]*, [21 x double]** %xfsf.addr, align 8, !tbaa !1
  %arrayidx127 = getelementptr inbounds [21 x double], [21 x double]* %143, i64 %idxprom126
  %arrayidx128 = getelementptr inbounds [21 x double], [21 x double]* %arrayidx127, i32 0, i64 %idxprom124
  store double %div123, double* %arrayidx128, align 8, !tbaa !13
  %144 = load i32, i32* %sfb, align 4, !tbaa !11
  %idxprom129 = zext i32 %144 to i64
  %145 = load i32, i32* %i, align 4, !tbaa !11
  %add130 = add nsw i32 %145, 1
  %idxprom131 = sext i32 %add130 to i64
  %146 = load [21 x double]*, [21 x double]** %xfsf.addr, align 8, !tbaa !1
  %arrayidx132 = getelementptr inbounds [21 x double], [21 x double]* %146, i64 %idxprom131
  %arrayidx133 = getelementptr inbounds [21 x double], [21 x double]* %arrayidx132, i32 0, i64 %idxprom129
  %147 = load double, double* %arrayidx133, align 8, !tbaa !13
  %148 = load i32, i32* %i, align 4, !tbaa !11
  %idxprom134 = sext i32 %148 to i64
  %149 = load i32, i32* %sfb, align 4, !tbaa !11
  %idxprom135 = zext i32 %149 to i64
  %150 = load %struct.III_psy_xmin*, %struct.III_psy_xmin** %l3_xmin.addr, align 8, !tbaa !1
  %s136 = getelementptr inbounds %struct.III_psy_xmin, %struct.III_psy_xmin* %150, i32 0, i32 1
  %arrayidx137 = getelementptr inbounds [13 x [3 x double]], [13 x [3 x double]]* %s136, i32 0, i64 %idxprom135
  %arrayidx138 = getelementptr inbounds [3 x double], [3 x double]* %arrayidx137, i32 0, i64 %idxprom134
  %151 = load double, double* %arrayidx138, align 8, !tbaa !13
  %div139 = fdiv double %147, %151
  %cmp140 = fcmp ogt double 1.000000e-03, %div139
  br i1 %cmp140, label %cond.true.142, label %cond.false.143

cond.true.142:                                    ; preds = %for.end.122
  br label %cond.end.155

cond.false.143:                                   ; preds = %for.end.122
  %152 = load i32, i32* %sfb, align 4, !tbaa !11
  %idxprom144 = zext i32 %152 to i64
  %153 = load i32, i32* %i, align 4, !tbaa !11
  %add145 = add nsw i32 %153, 1
  %idxprom146 = sext i32 %add145 to i64
  %154 = load [21 x double]*, [21 x double]** %xfsf.addr, align 8, !tbaa !1
  %arrayidx147 = getelementptr inbounds [21 x double], [21 x double]* %154, i64 %idxprom146
  %arrayidx148 = getelementptr inbounds [21 x double], [21 x double]* %arrayidx147, i32 0, i64 %idxprom144
  %155 = load double, double* %arrayidx148, align 8, !tbaa !13
  %156 = load i32, i32* %i, align 4, !tbaa !11
  %idxprom149 = sext i32 %156 to i64
  %157 = load i32, i32* %sfb, align 4, !tbaa !11
  %idxprom150 = zext i32 %157 to i64
  %158 = load %struct.III_psy_xmin*, %struct.III_psy_xmin** %l3_xmin.addr, align 8, !tbaa !1
  %s151 = getelementptr inbounds %struct.III_psy_xmin, %struct.III_psy_xmin* %158, i32 0, i32 1
  %arrayidx152 = getelementptr inbounds [13 x [3 x double]], [13 x [3 x double]]* %s151, i32 0, i64 %idxprom150
  %arrayidx153 = getelementptr inbounds [3 x double], [3 x double]* %arrayidx152, i32 0, i64 %idxprom149
  %159 = load double, double* %arrayidx153, align 8, !tbaa !13
  %div154 = fdiv double %155, %159
  br label %cond.end.155

cond.end.155:                                     ; preds = %cond.false.143, %cond.true.142
  %cond156 = phi double [ 1.000000e-03, %cond.true.142 ], [ %div154, %cond.false.143 ]
  %call157 = call double @log10(double %cond156) #1
  %mul158 = fmul double 1.000000e+01, %call157
  store double %mul158, double* %noise, align 8, !tbaa !13
  %160 = load double, double* %noise, align 8, !tbaa !13
  %161 = load i32, i32* %sfb, align 4, !tbaa !11
  %idxprom159 = zext i32 %161 to i64
  %162 = load i32, i32* %i, align 4, !tbaa !11
  %add160 = add nsw i32 %162, 1
  %idxprom161 = sext i32 %add160 to i64
  %163 = load [21 x double]*, [21 x double]** %distort.addr, align 8, !tbaa !1
  %arrayidx162 = getelementptr inbounds [21 x double], [21 x double]* %163, i64 %idxprom161
  %arrayidx163 = getelementptr inbounds [21 x double], [21 x double]* %arrayidx162, i32 0, i64 %idxprom159
  store double %160, double* %arrayidx163, align 8, !tbaa !13
  %164 = load double, double* %noise, align 8, !tbaa !13
  %cmp164 = fcmp ogt double %164, 0.000000e+00
  br i1 %cmp164, label %if.then.166, label %if.end.169

if.then.166:                                      ; preds = %cond.end.155
  %165 = load i32, i32* %over, align 4, !tbaa !11
  %inc167 = add nsw i32 %165, 1
  store i32 %inc167, i32* %over, align 4, !tbaa !11
  %166 = load double, double* %noise, align 8, !tbaa !13
  %167 = load double*, double** %over_noise.addr, align 8, !tbaa !1
  %168 = load double, double* %167, align 8, !tbaa !13
  %add168 = fadd double %168, %166
  store double %add168, double* %167, align 8, !tbaa !13
  br label %if.end.169

if.end.169:                                       ; preds = %if.then.166, %cond.end.155
  %169 = load double, double* %noise, align 8, !tbaa !13
  %170 = load double*, double** %tot_noise.addr, align 8, !tbaa !1
  %171 = load double, double* %170, align 8, !tbaa !13
  %add170 = fadd double %171, %169
  store double %add170, double* %170, align 8, !tbaa !13
  %172 = load double*, double** %max_noise.addr, align 8, !tbaa !1
  %173 = load double, double* %172, align 8, !tbaa !13
  %174 = load double, double* %noise, align 8, !tbaa !13
  %cmp171 = fcmp ogt double %173, %174
  br i1 %cmp171, label %cond.true.173, label %cond.false.174

cond.true.173:                                    ; preds = %if.end.169
  %175 = load double*, double** %max_noise.addr, align 8, !tbaa !1
  %176 = load double, double* %175, align 8, !tbaa !13
  br label %cond.end.175

cond.false.174:                                   ; preds = %if.end.169
  %177 = load double, double* %noise, align 8, !tbaa !13
  br label %cond.end.175

cond.end.175:                                     ; preds = %cond.false.174, %cond.true.173
  %cond176 = phi double [ %176, %cond.true.173 ], [ %177, %cond.false.174 ]
  %178 = load double*, double** %max_noise.addr, align 8, !tbaa !1
  store double %cond176, double* %178, align 8, !tbaa !13
  %179 = load i32, i32* %count, align 4, !tbaa !11
  %inc177 = add nsw i32 %179, 1
  store i32 %inc177, i32* %count, align 4, !tbaa !11
  %180 = bitcast i32* %s76 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %180) #1
  br label %for.inc.178

for.inc.178:                                      ; preds = %cond.end.175
  %181 = load i32, i32* %sfb, align 4, !tbaa !11
  %inc179 = add i32 %181, 1
  store i32 %inc179, i32* %sfb, align 4, !tbaa !11
  br label %for.cond.72

for.end.180:                                      ; preds = %for.cond.72
  br label %for.inc.181

for.inc.181:                                      ; preds = %for.end.180
  %182 = load i32, i32* %i, align 4, !tbaa !11
  %inc182 = add nsw i32 %182, 1
  store i32 %inc182, i32* %i, align 4, !tbaa !11
  br label %for.cond.68

for.end.183:                                      ; preds = %for.cond.68
  %183 = load i32, i32* %count, align 4, !tbaa !11
  %cmp184 = icmp sgt i32 %183, 1
  br i1 %cmp184, label %if.then.186, label %if.end.189

if.then.186:                                      ; preds = %for.end.183
  %184 = load i32, i32* %count, align 4, !tbaa !11
  %conv187 = sitofp i32 %184 to double
  %185 = load double*, double** %tot_noise.addr, align 8, !tbaa !1
  %186 = load double, double* %185, align 8, !tbaa !13
  %div188 = fdiv double %186, %conv187
  store double %div188, double* %185, align 8, !tbaa !13
  br label %if.end.189

if.end.189:                                       ; preds = %if.then.186, %for.end.183
  %187 = load i32, i32* %over, align 4, !tbaa !11
  %cmp190 = icmp sgt i32 %187, 1
  br i1 %cmp190, label %if.then.192, label %if.end.195

if.then.192:                                      ; preds = %if.end.189
  %188 = load i32, i32* %over, align 4, !tbaa !11
  %conv193 = sitofp i32 %188 to double
  %189 = load double*, double** %over_noise.addr, align 8, !tbaa !1
  %190 = load double, double* %189, align 8, !tbaa !13
  %div194 = fdiv double %190, %conv193
  store double %div194, double* %189, align 8, !tbaa !13
  br label %if.end.195

if.end.195:                                       ; preds = %if.then.192, %if.end.189
  %191 = load i32, i32* %over, align 4, !tbaa !11
  %192 = bitcast double* %noise to i8*
  call void @llvm.lifetime.end(i64 8, i8* %192) #1
  %193 = bitcast i32* %count to i8*
  call void @llvm.lifetime.end(i64 4, i8* %193) #1
  %194 = bitcast double* %bw to i8*
  call void @llvm.lifetime.end(i64 8, i8* %194) #1
  %195 = bitcast double* %step to i8*
  call void @llvm.lifetime.end(i64 8, i8* %195) #1
  %196 = bitcast double* %sum to i8*
  call void @llvm.lifetime.end(i64 8, i8* %196) #1
  %197 = bitcast i32* %sfb to i8*
  call void @llvm.lifetime.end(i64 4, i8* %197) #1
  %198 = bitcast i32* %over to i8*
  call void @llvm.lifetime.end(i64 4, i8* %198) #1
  %199 = bitcast i32* %i to i8*
  call void @llvm.lifetime.end(i64 4, i8* %199) #1
  %200 = bitcast i32* %l to i8*
  call void @llvm.lifetime.end(i64 4, i8* %200) #1
  %201 = bitcast i32* %end to i8*
  call void @llvm.lifetime.end(i64 4, i8* %201) #1
  %202 = bitcast i32* %start to i8*
  call void @llvm.lifetime.end(i64 4, i8* %202) #1
  ret i32 %191
}

; Function Attrs: nounwind uwtable
define i32 @quant_compare(i32 %experimentalX, i32 %best_over, double %best_tot_noise, double %best_over_noise, double %best_max_noise, i32 %over, double %tot_noise, double %over_noise, double %max_noise) #0 {
entry:
  %experimentalX.addr = alloca i32, align 4
  %best_over.addr = alloca i32, align 4
  %best_tot_noise.addr = alloca double, align 8
  %best_over_noise.addr = alloca double, align 8
  %best_max_noise.addr = alloca double, align 8
  %over.addr = alloca i32, align 4
  %tot_noise.addr = alloca double, align 8
  %over_noise.addr = alloca double, align 8
  %max_noise.addr = alloca double, align 8
  %better = alloca i32, align 4
  store i32 %experimentalX, i32* %experimentalX.addr, align 4, !tbaa !11
  store i32 %best_over, i32* %best_over.addr, align 4, !tbaa !11
  store double %best_tot_noise, double* %best_tot_noise.addr, align 8, !tbaa !13
  store double %best_over_noise, double* %best_over_noise.addr, align 8, !tbaa !13
  store double %best_max_noise, double* %best_max_noise.addr, align 8, !tbaa !13
  store i32 %over, i32* %over.addr, align 4, !tbaa !11
  store double %tot_noise, double* %tot_noise.addr, align 8, !tbaa !13
  store double %over_noise, double* %over_noise.addr, align 8, !tbaa !13
  store double %max_noise, double* %max_noise.addr, align 8, !tbaa !13
  %0 = bitcast i32* %better to i8*
  call void @llvm.lifetime.start(i64 4, i8* %0) #1
  store i32 0, i32* %better, align 4, !tbaa !11
  %1 = load i32, i32* %experimentalX.addr, align 4, !tbaa !11
  %cmp = icmp eq i32 %1, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %2 = load i32, i32* %over.addr, align 4, !tbaa !11
  %3 = load i32, i32* %best_over.addr, align 4, !tbaa !11
  %cmp1 = icmp slt i32 %2, %3
  br i1 %cmp1, label %lor.end, label %lor.rhs

lor.rhs:                                          ; preds = %if.then
  %4 = load i32, i32* %over.addr, align 4, !tbaa !11
  %5 = load i32, i32* %best_over.addr, align 4, !tbaa !11
  %cmp2 = icmp eq i32 %4, %5
  br i1 %cmp2, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %lor.rhs
  %6 = load double, double* %over_noise.addr, align 8, !tbaa !13
  %7 = load double, double* %best_over_noise.addr, align 8, !tbaa !13
  %cmp3 = fcmp ole double %6, %7
  br label %land.end

land.end:                                         ; preds = %land.rhs, %lor.rhs
  %8 = phi i1 [ false, %lor.rhs ], [ %cmp3, %land.rhs ]
  br label %lor.end

lor.end:                                          ; preds = %land.end, %if.then
  %9 = phi i1 [ true, %if.then ], [ %8, %land.end ]
  %lor.ext = zext i1 %9 to i32
  store i32 %lor.ext, i32* %better, align 4, !tbaa !11
  br label %if.end

if.end:                                           ; preds = %lor.end, %entry
  %10 = load i32, i32* %experimentalX.addr, align 4, !tbaa !11
  %cmp4 = icmp eq i32 %10, 1
  br i1 %cmp4, label %if.then.5, label %if.end.7

if.then.5:                                        ; preds = %if.end
  %11 = load double, double* %max_noise.addr, align 8, !tbaa !13
  %12 = load double, double* %best_max_noise.addr, align 8, !tbaa !13
  %cmp6 = fcmp olt double %11, %12
  %conv = zext i1 %cmp6 to i32
  store i32 %conv, i32* %better, align 4, !tbaa !11
  br label %if.end.7

if.end.7:                                         ; preds = %if.then.5, %if.end
  %13 = load i32, i32* %experimentalX.addr, align 4, !tbaa !11
  %cmp8 = icmp eq i32 %13, 2
  br i1 %cmp8, label %if.then.10, label %if.end.13

if.then.10:                                       ; preds = %if.end.7
  %14 = load double, double* %tot_noise.addr, align 8, !tbaa !13
  %15 = load double, double* %best_tot_noise.addr, align 8, !tbaa !13
  %cmp11 = fcmp olt double %14, %15
  %conv12 = zext i1 %cmp11 to i32
  store i32 %conv12, i32* %better, align 4, !tbaa !11
  br label %if.end.13

if.end.13:                                        ; preds = %if.then.10, %if.end.7
  %16 = load i32, i32* %experimentalX.addr, align 4, !tbaa !11
  %cmp14 = icmp eq i32 %16, 3
  br i1 %cmp14, label %if.then.16, label %if.end.23

if.then.16:                                       ; preds = %if.end.13
  %17 = load double, double* %tot_noise.addr, align 8, !tbaa !13
  %18 = load double, double* %best_tot_noise.addr, align 8, !tbaa !13
  %cmp17 = fcmp olt double %17, %18
  br i1 %cmp17, label %land.rhs.19, label %land.end.22

land.rhs.19:                                      ; preds = %if.then.16
  %19 = load double, double* %max_noise.addr, align 8, !tbaa !13
  %20 = load double, double* %best_max_noise.addr, align 8, !tbaa !13
  %add = fadd double %20, 2.000000e+00
  %cmp20 = fcmp olt double %19, %add
  br label %land.end.22

land.end.22:                                      ; preds = %land.rhs.19, %if.then.16
  %21 = phi i1 [ false, %if.then.16 ], [ %cmp20, %land.rhs.19 ]
  %land.ext = zext i1 %21 to i32
  store i32 %land.ext, i32* %better, align 4, !tbaa !11
  br label %if.end.23

if.end.23:                                        ; preds = %land.end.22, %if.end.13
  %22 = load i32, i32* %experimentalX.addr, align 4, !tbaa !11
  %cmp24 = icmp eq i32 %22, 4
  br i1 %cmp24, label %if.then.26, label %if.end.93

if.then.26:                                       ; preds = %if.end.23
  %23 = load double, double* %max_noise.addr, align 8, !tbaa !13
  %cmp27 = fcmp oge double 0.000000e+00, %23
  br i1 %cmp27, label %land.lhs.true, label %lor.lhs.false

land.lhs.true:                                    ; preds = %if.then.26
  %24 = load double, double* %best_max_noise.addr, align 8, !tbaa !13
  %cmp29 = fcmp ogt double %24, 2.000000e+00
  br i1 %cmp29, label %lor.end.91, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %land.lhs.true, %if.then.26
  %25 = load double, double* %max_noise.addr, align 8, !tbaa !13
  %cmp31 = fcmp oge double 0.000000e+00, %25
  br i1 %cmp31, label %land.lhs.true.33, label %lor.lhs.false.43

land.lhs.true.33:                                 ; preds = %lor.lhs.false
  %26 = load double, double* %best_max_noise.addr, align 8, !tbaa !13
  %cmp34 = fcmp olt double %26, 0.000000e+00
  br i1 %cmp34, label %land.lhs.true.36, label %lor.lhs.false.43

land.lhs.true.36:                                 ; preds = %land.lhs.true.33
  %27 = load double, double* %best_max_noise.addr, align 8, !tbaa !13
  %add37 = fadd double %27, 2.000000e+00
  %28 = load double, double* %max_noise.addr, align 8, !tbaa !13
  %cmp38 = fcmp ogt double %add37, %28
  br i1 %cmp38, label %land.lhs.true.40, label %lor.lhs.false.43

land.lhs.true.40:                                 ; preds = %land.lhs.true.36
  %29 = load double, double* %tot_noise.addr, align 8, !tbaa !13
  %30 = load double, double* %best_tot_noise.addr, align 8, !tbaa !13
  %cmp41 = fcmp olt double %29, %30
  br i1 %cmp41, label %lor.end.91, label %lor.lhs.false.43

lor.lhs.false.43:                                 ; preds = %land.lhs.true.40, %land.lhs.true.36, %land.lhs.true.33, %lor.lhs.false
  %31 = load double, double* %max_noise.addr, align 8, !tbaa !13
  %cmp44 = fcmp oge double 0.000000e+00, %31
  br i1 %cmp44, label %land.lhs.true.46, label %lor.lhs.false.57

land.lhs.true.46:                                 ; preds = %lor.lhs.false.43
  %32 = load double, double* %best_max_noise.addr, align 8, !tbaa !13
  %cmp47 = fcmp ogt double %32, 0.000000e+00
  br i1 %cmp47, label %land.lhs.true.49, label %lor.lhs.false.57

land.lhs.true.49:                                 ; preds = %land.lhs.true.46
  %33 = load double, double* %best_max_noise.addr, align 8, !tbaa !13
  %add50 = fadd double %33, 2.000000e+00
  %34 = load double, double* %max_noise.addr, align 8, !tbaa !13
  %cmp51 = fcmp ogt double %add50, %34
  br i1 %cmp51, label %land.lhs.true.53, label %lor.lhs.false.57

land.lhs.true.53:                                 ; preds = %land.lhs.true.49
  %35 = load double, double* %tot_noise.addr, align 8, !tbaa !13
  %36 = load double, double* %best_tot_noise.addr, align 8, !tbaa !13
  %37 = load double, double* %best_over_noise.addr, align 8, !tbaa !13
  %add54 = fadd double %36, %37
  %cmp55 = fcmp olt double %35, %add54
  br i1 %cmp55, label %lor.end.91, label %lor.lhs.false.57

lor.lhs.false.57:                                 ; preds = %land.lhs.true.53, %land.lhs.true.49, %land.lhs.true.46, %lor.lhs.false.43
  %38 = load double, double* %max_noise.addr, align 8, !tbaa !13
  %cmp58 = fcmp olt double 0.000000e+00, %38
  br i1 %cmp58, label %land.lhs.true.60, label %lor.rhs.72

land.lhs.true.60:                                 ; preds = %lor.lhs.false.57
  %39 = load double, double* %best_max_noise.addr, align 8, !tbaa !13
  %cmp61 = fcmp ogt double %39, -5.000000e-01
  br i1 %cmp61, label %land.lhs.true.63, label %lor.rhs.72

land.lhs.true.63:                                 ; preds = %land.lhs.true.60
  %40 = load double, double* %best_max_noise.addr, align 8, !tbaa !13
  %add64 = fadd double %40, 1.000000e+00
  %41 = load double, double* %max_noise.addr, align 8, !tbaa !13
  %cmp65 = fcmp ogt double %add64, %41
  br i1 %cmp65, label %land.lhs.true.67, label %lor.rhs.72

land.lhs.true.67:                                 ; preds = %land.lhs.true.63
  %42 = load double, double* %tot_noise.addr, align 8, !tbaa !13
  %43 = load double, double* %over_noise.addr, align 8, !tbaa !13
  %add68 = fadd double %42, %43
  %44 = load double, double* %best_tot_noise.addr, align 8, !tbaa !13
  %45 = load double, double* %best_over_noise.addr, align 8, !tbaa !13
  %add69 = fadd double %44, %45
  %cmp70 = fcmp olt double %add68, %add69
  br i1 %cmp70, label %lor.end.91, label %lor.rhs.72

lor.rhs.72:                                       ; preds = %land.lhs.true.67, %land.lhs.true.63, %land.lhs.true.60, %lor.lhs.false.57
  %46 = load double, double* %max_noise.addr, align 8, !tbaa !13
  %cmp73 = fcmp olt double 0.000000e+00, %46
  br i1 %cmp73, label %land.lhs.true.75, label %land.end.89

land.lhs.true.75:                                 ; preds = %lor.rhs.72
  %47 = load double, double* %best_max_noise.addr, align 8, !tbaa !13
  %cmp76 = fcmp ogt double %47, -1.000000e+00
  br i1 %cmp76, label %land.lhs.true.78, label %land.end.89

land.lhs.true.78:                                 ; preds = %land.lhs.true.75
  %48 = load double, double* %best_max_noise.addr, align 8, !tbaa !13
  %add79 = fadd double %48, 1.500000e+00
  %49 = load double, double* %max_noise.addr, align 8, !tbaa !13
  %cmp80 = fcmp ogt double %add79, %49
  br i1 %cmp80, label %land.rhs.82, label %land.end.89

land.rhs.82:                                      ; preds = %land.lhs.true.78
  %50 = load double, double* %tot_noise.addr, align 8, !tbaa !13
  %51 = load double, double* %over_noise.addr, align 8, !tbaa !13
  %add83 = fadd double %50, %51
  %52 = load double, double* %over_noise.addr, align 8, !tbaa !13
  %add84 = fadd double %add83, %52
  %53 = load double, double* %best_tot_noise.addr, align 8, !tbaa !13
  %54 = load double, double* %best_over_noise.addr, align 8, !tbaa !13
  %add85 = fadd double %53, %54
  %55 = load double, double* %best_over_noise.addr, align 8, !tbaa !13
  %add86 = fadd double %add85, %55
  %cmp87 = fcmp olt double %add84, %add86
  br label %land.end.89

land.end.89:                                      ; preds = %land.rhs.82, %land.lhs.true.78, %land.lhs.true.75, %lor.rhs.72
  %56 = phi i1 [ false, %land.lhs.true.78 ], [ false, %land.lhs.true.75 ], [ false, %lor.rhs.72 ], [ %cmp87, %land.rhs.82 ]
  br label %lor.end.91

lor.end.91:                                       ; preds = %land.end.89, %land.lhs.true.67, %land.lhs.true.53, %land.lhs.true.40, %land.lhs.true
  %57 = phi i1 [ true, %land.lhs.true.67 ], [ true, %land.lhs.true.53 ], [ true, %land.lhs.true.40 ], [ true, %land.lhs.true ], [ %56, %land.end.89 ]
  %lor.ext92 = zext i1 %57 to i32
  store i32 %lor.ext92, i32* %better, align 4, !tbaa !11
  br label %if.end.93

if.end.93:                                        ; preds = %lor.end.91, %if.end.23
  %58 = load i32, i32* %experimentalX.addr, align 4, !tbaa !11
  %cmp94 = icmp eq i32 %58, 5
  br i1 %cmp94, label %if.then.96, label %if.end.109

if.then.96:                                       ; preds = %if.end.93
  %59 = load double, double* %over_noise.addr, align 8, !tbaa !13
  %60 = load double, double* %best_over_noise.addr, align 8, !tbaa !13
  %cmp97 = fcmp olt double %59, %60
  br i1 %cmp97, label %lor.end.107, label %lor.rhs.99

lor.rhs.99:                                       ; preds = %if.then.96
  %61 = load double, double* %over_noise.addr, align 8, !tbaa !13
  %62 = load double, double* %best_over_noise.addr, align 8, !tbaa !13
  %cmp100 = fcmp oeq double %61, %62
  br i1 %cmp100, label %land.rhs.102, label %land.end.105

land.rhs.102:                                     ; preds = %lor.rhs.99
  %63 = load double, double* %tot_noise.addr, align 8, !tbaa !13
  %64 = load double, double* %best_tot_noise.addr, align 8, !tbaa !13
  %cmp103 = fcmp olt double %63, %64
  br label %land.end.105

land.end.105:                                     ; preds = %land.rhs.102, %lor.rhs.99
  %65 = phi i1 [ false, %lor.rhs.99 ], [ %cmp103, %land.rhs.102 ]
  br label %lor.end.107

lor.end.107:                                      ; preds = %land.end.105, %if.then.96
  %66 = phi i1 [ true, %if.then.96 ], [ %65, %land.end.105 ]
  %lor.ext108 = zext i1 %66 to i32
  store i32 %lor.ext108, i32* %better, align 4, !tbaa !11
  br label %if.end.109

if.end.109:                                       ; preds = %lor.end.107, %if.end.93
  %67 = load i32, i32* %experimentalX.addr, align 4, !tbaa !11
  %cmp110 = icmp eq i32 %67, 6
  br i1 %cmp110, label %if.then.112, label %if.end.135

if.then.112:                                      ; preds = %if.end.109
  %68 = load double, double* %over_noise.addr, align 8, !tbaa !13
  %69 = load double, double* %best_over_noise.addr, align 8, !tbaa !13
  %cmp113 = fcmp olt double %68, %69
  br i1 %cmp113, label %lor.end.133, label %lor.rhs.115

lor.rhs.115:                                      ; preds = %if.then.112
  %70 = load double, double* %over_noise.addr, align 8, !tbaa !13
  %71 = load double, double* %best_over_noise.addr, align 8, !tbaa !13
  %cmp116 = fcmp oeq double %70, %71
  br i1 %cmp116, label %land.rhs.118, label %land.end.131

land.rhs.118:                                     ; preds = %lor.rhs.115
  %72 = load double, double* %max_noise.addr, align 8, !tbaa !13
  %73 = load double, double* %best_max_noise.addr, align 8, !tbaa !13
  %cmp119 = fcmp olt double %72, %73
  br i1 %cmp119, label %lor.end.129, label %lor.rhs.121

lor.rhs.121:                                      ; preds = %land.rhs.118
  %74 = load double, double* %max_noise.addr, align 8, !tbaa !13
  %75 = load double, double* %best_max_noise.addr, align 8, !tbaa !13
  %cmp122 = fcmp oeq double %74, %75
  br i1 %cmp122, label %land.rhs.124, label %land.end.127

land.rhs.124:                                     ; preds = %lor.rhs.121
  %76 = load double, double* %tot_noise.addr, align 8, !tbaa !13
  %77 = load double, double* %best_tot_noise.addr, align 8, !tbaa !13
  %cmp125 = fcmp ole double %76, %77
  br label %land.end.127

land.end.127:                                     ; preds = %land.rhs.124, %lor.rhs.121
  %78 = phi i1 [ false, %lor.rhs.121 ], [ %cmp125, %land.rhs.124 ]
  br label %lor.end.129

lor.end.129:                                      ; preds = %land.end.127, %land.rhs.118
  %79 = phi i1 [ true, %land.rhs.118 ], [ %78, %land.end.127 ]
  br label %land.end.131

land.end.131:                                     ; preds = %lor.end.129, %lor.rhs.115
  %80 = phi i1 [ false, %lor.rhs.115 ], [ %79, %lor.end.129 ]
  br label %lor.end.133

lor.end.133:                                      ; preds = %land.end.131, %if.then.112
  %81 = phi i1 [ true, %if.then.112 ], [ %80, %land.end.131 ]
  %lor.ext134 = zext i1 %81 to i32
  store i32 %lor.ext134, i32* %better, align 4, !tbaa !11
  br label %if.end.135

if.end.135:                                       ; preds = %lor.end.133, %if.end.109
  %82 = load i32, i32* %better, align 4, !tbaa !11
  %83 = bitcast i32* %better to i8*
  call void @llvm.lifetime.end(i64 4, i8* %83) #1
  ret i32 %82
}

; Function Attrs: nounwind uwtable
define void @amp_scalefac_bands(double* %xrpow, %struct.gr_info* %cod_info, %struct.III_scalefac_t* %scalefac, [21 x double]* %distort) #0 {
entry:
  %xrpow.addr = alloca double*, align 8
  %cod_info.addr = alloca %struct.gr_info*, align 8
  %scalefac.addr = alloca %struct.III_scalefac_t*, align 8
  %distort.addr = alloca [21 x double]*, align 8
  %start = alloca i32, align 4
  %end = alloca i32, align 4
  %l = alloca i32, align 4
  %i = alloca i32, align 4
  %sfb = alloca i32, align 4
  %ifqstep34 = alloca double, align 8
  %distort_thresh = alloca double, align 8
  store double* %xrpow, double** %xrpow.addr, align 8, !tbaa !1
  store %struct.gr_info* %cod_info, %struct.gr_info** %cod_info.addr, align 8, !tbaa !1
  store %struct.III_scalefac_t* %scalefac, %struct.III_scalefac_t** %scalefac.addr, align 8, !tbaa !1
  store [21 x double]* %distort, [21 x double]** %distort.addr, align 8, !tbaa !1
  %0 = bitcast i32* %start to i8*
  call void @llvm.lifetime.start(i64 4, i8* %0) #1
  %1 = bitcast i32* %end to i8*
  call void @llvm.lifetime.start(i64 4, i8* %1) #1
  %2 = bitcast i32* %l to i8*
  call void @llvm.lifetime.start(i64 4, i8* %2) #1
  %3 = bitcast i32* %i to i8*
  call void @llvm.lifetime.start(i64 4, i8* %3) #1
  %4 = bitcast i32* %sfb to i8*
  call void @llvm.lifetime.start(i64 4, i8* %4) #1
  %5 = bitcast double* %ifqstep34 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %5) #1
  %6 = bitcast double* %distort_thresh to i8*
  call void @llvm.lifetime.start(i64 8, i8* %6) #1
  %7 = load %struct.gr_info*, %struct.gr_info** %cod_info.addr, align 8, !tbaa !1
  %scalefac_scale = getelementptr inbounds %struct.gr_info, %struct.gr_info* %7, i32 0, i32 13
  %8 = load i32, i32* %scalefac_scale, align 4, !tbaa !28
  %cmp = icmp eq i32 %8, 0
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  store double 0x3FF4BFDAD5362A27, double* %ifqstep34, align 8, !tbaa !13
  br label %if.end

if.else:                                          ; preds = %entry
  store double 0x3FFAE89F995AD3AE, double* %ifqstep34, align 8, !tbaa !13
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  store double -9.000000e+02, double* %distort_thresh, align 8, !tbaa !13
  store i32 0, i32* %sfb, align 4, !tbaa !11
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end
  %9 = load i32, i32* %sfb, align 4, !tbaa !11
  %10 = load %struct.gr_info*, %struct.gr_info** %cod_info.addr, align 8, !tbaa !1
  %sfb_lmax = getelementptr inbounds %struct.gr_info, %struct.gr_info* %10, i32 0, i32 16
  %11 = load i32, i32* %sfb_lmax, align 4, !tbaa !41
  %cmp1 = icmp ult i32 %9, %11
  br i1 %cmp1, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %12 = load i32, i32* %sfb, align 4, !tbaa !11
  %idxprom = zext i32 %12 to i64
  %13 = load [21 x double]*, [21 x double]** %distort.addr, align 8, !tbaa !1
  %arrayidx = getelementptr inbounds [21 x double], [21 x double]* %13, i64 0
  %arrayidx2 = getelementptr inbounds [21 x double], [21 x double]* %arrayidx, i32 0, i64 %idxprom
  %14 = load double, double* %arrayidx2, align 8, !tbaa !13
  %15 = load double, double* %distort_thresh, align 8, !tbaa !13
  %cmp3 = fcmp ogt double %14, %15
  br i1 %cmp3, label %cond.true, label %cond.false

cond.true:                                        ; preds = %for.body
  %16 = load i32, i32* %sfb, align 4, !tbaa !11
  %idxprom4 = zext i32 %16 to i64
  %17 = load [21 x double]*, [21 x double]** %distort.addr, align 8, !tbaa !1
  %arrayidx5 = getelementptr inbounds [21 x double], [21 x double]* %17, i64 0
  %arrayidx6 = getelementptr inbounds [21 x double], [21 x double]* %arrayidx5, i32 0, i64 %idxprom4
  %18 = load double, double* %arrayidx6, align 8, !tbaa !13
  br label %cond.end

cond.false:                                       ; preds = %for.body
  %19 = load double, double* %distort_thresh, align 8, !tbaa !13
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi double [ %18, %cond.true ], [ %19, %cond.false ]
  store double %cond, double* %distort_thresh, align 8, !tbaa !13
  br label %for.inc

for.inc:                                          ; preds = %cond.end
  %20 = load i32, i32* %sfb, align 4, !tbaa !11
  %inc = add i32 %20, 1
  store i32 %inc, i32* %sfb, align 4, !tbaa !11
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %21 = load %struct.gr_info*, %struct.gr_info** %cod_info.addr, align 8, !tbaa !1
  %sfb_smax = getelementptr inbounds %struct.gr_info, %struct.gr_info* %21, i32 0, i32 17
  %22 = load i32, i32* %sfb_smax, align 4, !tbaa !42
  store i32 %22, i32* %sfb, align 4, !tbaa !11
  br label %for.cond.7

for.cond.7:                                       ; preds = %for.inc.30, %for.end
  %23 = load i32, i32* %sfb, align 4, !tbaa !11
  %cmp8 = icmp ult i32 %23, 12
  br i1 %cmp8, label %for.body.9, label %for.end.32

for.body.9:                                       ; preds = %for.cond.7
  store i32 0, i32* %i, align 4, !tbaa !11
  br label %for.cond.10

for.cond.10:                                      ; preds = %for.inc.27, %for.body.9
  %24 = load i32, i32* %i, align 4, !tbaa !11
  %cmp11 = icmp slt i32 %24, 3
  br i1 %cmp11, label %for.body.12, label %for.end.29

for.body.12:                                      ; preds = %for.cond.10
  %25 = load i32, i32* %sfb, align 4, !tbaa !11
  %idxprom13 = zext i32 %25 to i64
  %26 = load i32, i32* %i, align 4, !tbaa !11
  %add = add nsw i32 %26, 1
  %idxprom14 = sext i32 %add to i64
  %27 = load [21 x double]*, [21 x double]** %distort.addr, align 8, !tbaa !1
  %arrayidx15 = getelementptr inbounds [21 x double], [21 x double]* %27, i64 %idxprom14
  %arrayidx16 = getelementptr inbounds [21 x double], [21 x double]* %arrayidx15, i32 0, i64 %idxprom13
  %28 = load double, double* %arrayidx16, align 8, !tbaa !13
  %29 = load double, double* %distort_thresh, align 8, !tbaa !13
  %cmp17 = fcmp ogt double %28, %29
  br i1 %cmp17, label %cond.true.18, label %cond.false.24

cond.true.18:                                     ; preds = %for.body.12
  %30 = load i32, i32* %sfb, align 4, !tbaa !11
  %idxprom19 = zext i32 %30 to i64
  %31 = load i32, i32* %i, align 4, !tbaa !11
  %add20 = add nsw i32 %31, 1
  %idxprom21 = sext i32 %add20 to i64
  %32 = load [21 x double]*, [21 x double]** %distort.addr, align 8, !tbaa !1
  %arrayidx22 = getelementptr inbounds [21 x double], [21 x double]* %32, i64 %idxprom21
  %arrayidx23 = getelementptr inbounds [21 x double], [21 x double]* %arrayidx22, i32 0, i64 %idxprom19
  %33 = load double, double* %arrayidx23, align 8, !tbaa !13
  br label %cond.end.25

cond.false.24:                                    ; preds = %for.body.12
  %34 = load double, double* %distort_thresh, align 8, !tbaa !13
  br label %cond.end.25

cond.end.25:                                      ; preds = %cond.false.24, %cond.true.18
  %cond26 = phi double [ %33, %cond.true.18 ], [ %34, %cond.false.24 ]
  store double %cond26, double* %distort_thresh, align 8, !tbaa !13
  br label %for.inc.27

for.inc.27:                                       ; preds = %cond.end.25
  %35 = load i32, i32* %i, align 4, !tbaa !11
  %inc28 = add nsw i32 %35, 1
  store i32 %inc28, i32* %i, align 4, !tbaa !11
  br label %for.cond.10

for.end.29:                                       ; preds = %for.cond.10
  br label %for.inc.30

for.inc.30:                                       ; preds = %for.end.29
  %36 = load i32, i32* %sfb, align 4, !tbaa !11
  %inc31 = add i32 %36, 1
  store i32 %inc31, i32* %sfb, align 4, !tbaa !11
  br label %for.cond.7

for.end.32:                                       ; preds = %for.cond.7
  %37 = load double, double* %distort_thresh, align 8, !tbaa !13
  %mul = fmul double %37, 1.050000e+00
  %cmp33 = fcmp olt double %mul, 0.000000e+00
  br i1 %cmp33, label %cond.true.34, label %cond.false.36

cond.true.34:                                     ; preds = %for.end.32
  %38 = load double, double* %distort_thresh, align 8, !tbaa !13
  %mul35 = fmul double %38, 1.050000e+00
  br label %cond.end.37

cond.false.36:                                    ; preds = %for.end.32
  br label %cond.end.37

cond.end.37:                                      ; preds = %cond.false.36, %cond.true.34
  %cond38 = phi double [ %mul35, %cond.true.34 ], [ 0.000000e+00, %cond.false.36 ]
  store double %cond38, double* %distort_thresh, align 8, !tbaa !13
  store i32 0, i32* %sfb, align 4, !tbaa !11
  br label %for.cond.39

for.cond.39:                                      ; preds = %for.inc.67, %cond.end.37
  %39 = load i32, i32* %sfb, align 4, !tbaa !11
  %40 = load %struct.gr_info*, %struct.gr_info** %cod_info.addr, align 8, !tbaa !1
  %sfb_lmax40 = getelementptr inbounds %struct.gr_info, %struct.gr_info* %40, i32 0, i32 16
  %41 = load i32, i32* %sfb_lmax40, align 4, !tbaa !41
  %cmp41 = icmp ult i32 %39, %41
  br i1 %cmp41, label %for.body.42, label %for.end.69

for.body.42:                                      ; preds = %for.cond.39
  %42 = load i32, i32* %sfb, align 4, !tbaa !11
  %idxprom43 = zext i32 %42 to i64
  %43 = load [21 x double]*, [21 x double]** %distort.addr, align 8, !tbaa !1
  %arrayidx44 = getelementptr inbounds [21 x double], [21 x double]* %43, i64 0
  %arrayidx45 = getelementptr inbounds [21 x double], [21 x double]* %arrayidx44, i32 0, i64 %idxprom43
  %44 = load double, double* %arrayidx45, align 8, !tbaa !13
  %45 = load double, double* %distort_thresh, align 8, !tbaa !13
  %cmp46 = fcmp ogt double %44, %45
  br i1 %cmp46, label %if.then.47, label %if.end.66

if.then.47:                                       ; preds = %for.body.42
  %46 = load i32, i32* %sfb, align 4, !tbaa !11
  %idxprom48 = zext i32 %46 to i64
  %47 = load %struct.III_scalefac_t*, %struct.III_scalefac_t** %scalefac.addr, align 8, !tbaa !1
  %l49 = getelementptr inbounds %struct.III_scalefac_t, %struct.III_scalefac_t* %47, i32 0, i32 0
  %arrayidx50 = getelementptr inbounds [22 x i32], [22 x i32]* %l49, i32 0, i64 %idxprom48
  %48 = load i32, i32* %arrayidx50, align 4, !tbaa !11
  %inc51 = add nsw i32 %48, 1
  store i32 %inc51, i32* %arrayidx50, align 4, !tbaa !11
  %49 = load i32, i32* %sfb, align 4, !tbaa !11
  %idxprom52 = zext i32 %49 to i64
  %arrayidx53 = getelementptr inbounds [23 x i32], [23 x i32]* getelementptr inbounds (%struct.scalefac_struct, %struct.scalefac_struct* @scalefac_band, i32 0, i32 0), i32 0, i64 %idxprom52
  %50 = load i32, i32* %arrayidx53, align 4, !tbaa !11
  store i32 %50, i32* %start, align 4, !tbaa !11
  %51 = load i32, i32* %sfb, align 4, !tbaa !11
  %add54 = add i32 %51, 1
  %idxprom55 = zext i32 %add54 to i64
  %arrayidx56 = getelementptr inbounds [23 x i32], [23 x i32]* getelementptr inbounds (%struct.scalefac_struct, %struct.scalefac_struct* @scalefac_band, i32 0, i32 0), i32 0, i64 %idxprom55
  %52 = load i32, i32* %arrayidx56, align 4, !tbaa !11
  store i32 %52, i32* %end, align 4, !tbaa !11
  %53 = load i32, i32* %start, align 4, !tbaa !11
  store i32 %53, i32* %l, align 4, !tbaa !11
  br label %for.cond.57

for.cond.57:                                      ; preds = %for.inc.63, %if.then.47
  %54 = load i32, i32* %l, align 4, !tbaa !11
  %55 = load i32, i32* %end, align 4, !tbaa !11
  %cmp58 = icmp slt i32 %54, %55
  br i1 %cmp58, label %for.body.59, label %for.end.65

for.body.59:                                      ; preds = %for.cond.57
  %56 = load double, double* %ifqstep34, align 8, !tbaa !13
  %57 = load i32, i32* %l, align 4, !tbaa !11
  %idxprom60 = sext i32 %57 to i64
  %58 = load double*, double** %xrpow.addr, align 8, !tbaa !1
  %arrayidx61 = getelementptr inbounds double, double* %58, i64 %idxprom60
  %59 = load double, double* %arrayidx61, align 8, !tbaa !13
  %mul62 = fmul double %59, %56
  store double %mul62, double* %arrayidx61, align 8, !tbaa !13
  br label %for.inc.63

for.inc.63:                                       ; preds = %for.body.59
  %60 = load i32, i32* %l, align 4, !tbaa !11
  %inc64 = add nsw i32 %60, 1
  store i32 %inc64, i32* %l, align 4, !tbaa !11
  br label %for.cond.57

for.end.65:                                       ; preds = %for.cond.57
  br label %if.end.66

if.end.66:                                        ; preds = %for.end.65, %for.body.42
  br label %for.inc.67

for.inc.67:                                       ; preds = %if.end.66
  %61 = load i32, i32* %sfb, align 4, !tbaa !11
  %inc68 = add i32 %61, 1
  store i32 %inc68, i32* %sfb, align 4, !tbaa !11
  br label %for.cond.39

for.end.69:                                       ; preds = %for.cond.39
  store i32 0, i32* %i, align 4, !tbaa !11
  br label %for.cond.70

for.cond.70:                                      ; preds = %for.inc.109, %for.end.69
  %62 = load i32, i32* %i, align 4, !tbaa !11
  %cmp71 = icmp slt i32 %62, 3
  br i1 %cmp71, label %for.body.72, label %for.end.111

for.body.72:                                      ; preds = %for.cond.70
  %63 = load %struct.gr_info*, %struct.gr_info** %cod_info.addr, align 8, !tbaa !1
  %sfb_smax73 = getelementptr inbounds %struct.gr_info, %struct.gr_info* %63, i32 0, i32 17
  %64 = load i32, i32* %sfb_smax73, align 4, !tbaa !42
  store i32 %64, i32* %sfb, align 4, !tbaa !11
  br label %for.cond.74

for.cond.74:                                      ; preds = %for.inc.106, %for.body.72
  %65 = load i32, i32* %sfb, align 4, !tbaa !11
  %cmp75 = icmp ult i32 %65, 12
  br i1 %cmp75, label %for.body.76, label %for.end.108

for.body.76:                                      ; preds = %for.cond.74
  %66 = load i32, i32* %sfb, align 4, !tbaa !11
  %idxprom77 = zext i32 %66 to i64
  %67 = load i32, i32* %i, align 4, !tbaa !11
  %add78 = add nsw i32 %67, 1
  %idxprom79 = sext i32 %add78 to i64
  %68 = load [21 x double]*, [21 x double]** %distort.addr, align 8, !tbaa !1
  %arrayidx80 = getelementptr inbounds [21 x double], [21 x double]* %68, i64 %idxprom79
  %arrayidx81 = getelementptr inbounds [21 x double], [21 x double]* %arrayidx80, i32 0, i64 %idxprom77
  %69 = load double, double* %arrayidx81, align 8, !tbaa !13
  %70 = load double, double* %distort_thresh, align 8, !tbaa !13
  %cmp82 = fcmp ogt double %69, %70
  br i1 %cmp82, label %if.then.83, label %if.end.105

if.then.83:                                       ; preds = %for.body.76
  %71 = load i32, i32* %i, align 4, !tbaa !11
  %idxprom84 = sext i32 %71 to i64
  %72 = load i32, i32* %sfb, align 4, !tbaa !11
  %idxprom85 = zext i32 %72 to i64
  %73 = load %struct.III_scalefac_t*, %struct.III_scalefac_t** %scalefac.addr, align 8, !tbaa !1
  %s = getelementptr inbounds %struct.III_scalefac_t, %struct.III_scalefac_t* %73, i32 0, i32 1
  %arrayidx86 = getelementptr inbounds [13 x [3 x i32]], [13 x [3 x i32]]* %s, i32 0, i64 %idxprom85
  %arrayidx87 = getelementptr inbounds [3 x i32], [3 x i32]* %arrayidx86, i32 0, i64 %idxprom84
  %74 = load i32, i32* %arrayidx87, align 4, !tbaa !11
  %inc88 = add nsw i32 %74, 1
  store i32 %inc88, i32* %arrayidx87, align 4, !tbaa !11
  %75 = load i32, i32* %sfb, align 4, !tbaa !11
  %idxprom89 = zext i32 %75 to i64
  %arrayidx90 = getelementptr inbounds [14 x i32], [14 x i32]* getelementptr inbounds (%struct.scalefac_struct, %struct.scalefac_struct* @scalefac_band, i32 0, i32 1), i32 0, i64 %idxprom89
  %76 = load i32, i32* %arrayidx90, align 4, !tbaa !11
  store i32 %76, i32* %start, align 4, !tbaa !11
  %77 = load i32, i32* %sfb, align 4, !tbaa !11
  %add91 = add i32 %77, 1
  %idxprom92 = zext i32 %add91 to i64
  %arrayidx93 = getelementptr inbounds [14 x i32], [14 x i32]* getelementptr inbounds (%struct.scalefac_struct, %struct.scalefac_struct* @scalefac_band, i32 0, i32 1), i32 0, i64 %idxprom92
  %78 = load i32, i32* %arrayidx93, align 4, !tbaa !11
  store i32 %78, i32* %end, align 4, !tbaa !11
  %79 = load i32, i32* %start, align 4, !tbaa !11
  store i32 %79, i32* %l, align 4, !tbaa !11
  br label %for.cond.94

for.cond.94:                                      ; preds = %for.inc.102, %if.then.83
  %80 = load i32, i32* %l, align 4, !tbaa !11
  %81 = load i32, i32* %end, align 4, !tbaa !11
  %cmp95 = icmp slt i32 %80, %81
  br i1 %cmp95, label %for.body.96, label %for.end.104

for.body.96:                                      ; preds = %for.cond.94
  %82 = load double, double* %ifqstep34, align 8, !tbaa !13
  %83 = load i32, i32* %l, align 4, !tbaa !11
  %mul97 = mul nsw i32 %83, 3
  %84 = load i32, i32* %i, align 4, !tbaa !11
  %add98 = add nsw i32 %mul97, %84
  %idxprom99 = sext i32 %add98 to i64
  %85 = load double*, double** %xrpow.addr, align 8, !tbaa !1
  %arrayidx100 = getelementptr inbounds double, double* %85, i64 %idxprom99
  %86 = load double, double* %arrayidx100, align 8, !tbaa !13
  %mul101 = fmul double %86, %82
  store double %mul101, double* %arrayidx100, align 8, !tbaa !13
  br label %for.inc.102

for.inc.102:                                      ; preds = %for.body.96
  %87 = load i32, i32* %l, align 4, !tbaa !11
  %inc103 = add nsw i32 %87, 1
  store i32 %inc103, i32* %l, align 4, !tbaa !11
  br label %for.cond.94

for.end.104:                                      ; preds = %for.cond.94
  br label %if.end.105

if.end.105:                                       ; preds = %for.end.104, %for.body.76
  br label %for.inc.106

for.inc.106:                                      ; preds = %if.end.105
  %88 = load i32, i32* %sfb, align 4, !tbaa !11
  %inc107 = add i32 %88, 1
  store i32 %inc107, i32* %sfb, align 4, !tbaa !11
  br label %for.cond.74

for.end.108:                                      ; preds = %for.cond.74
  br label %for.inc.109

for.inc.109:                                      ; preds = %for.end.108
  %89 = load i32, i32* %i, align 4, !tbaa !11
  %inc110 = add nsw i32 %89, 1
  store i32 %inc110, i32* %i, align 4, !tbaa !11
  br label %for.cond.70

for.end.111:                                      ; preds = %for.cond.70
  %90 = bitcast double* %distort_thresh to i8*
  call void @llvm.lifetime.end(i64 8, i8* %90) #1
  %91 = bitcast double* %ifqstep34 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %91) #1
  %92 = bitcast i32* %sfb to i8*
  call void @llvm.lifetime.end(i64 4, i8* %92) #1
  %93 = bitcast i32* %i to i8*
  call void @llvm.lifetime.end(i64 4, i8* %93) #1
  %94 = bitcast i32* %l to i8*
  call void @llvm.lifetime.end(i64 4, i8* %94) #1
  %95 = bitcast i32* %end to i8*
  call void @llvm.lifetime.end(i64 4, i8* %95) #1
  %96 = bitcast i32* %start to i8*
  call void @llvm.lifetime.end(i64 4, i8* %96) #1
  ret void
}

declare i32 @loop_break(%struct.III_scalefac_t*, %struct.gr_info*) #2

declare i32 @scale_bitcount(%struct.III_scalefac_t*, %struct.gr_info*) #2

declare i32 @scale_bitcount_lsf(%struct.III_scalefac_t*, %struct.gr_info*) #2

; Function Attrs: nounwind
declare double @log10(double) #3

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { nounwind readnone "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #5 = { nounwind readnone }

!llvm.ident = !{!0}

!0 = !{!"clang version 3.7.0 (tags/RELEASE_370/final)"}
!1 = !{!2, !2, i64 0}
!2 = !{!"any pointer", !3, i64 0}
!3 = !{!"omnipotent char", !4, i64 0}
!4 = !{!"Simple C/C++ TBAA"}
!5 = !{!6, !8, i64 220}
!6 = !{!"", !7, i64 0, !8, i64 8, !8, i64 12, !8, i64 16, !8, i64 20, !8, i64 24, !8, i64 28, !8, i64 32, !8, i64 36, !8, i64 40, !8, i64 44, !8, i64 48, !8, i64 52, !8, i64 56, !8, i64 60, !8, i64 64, !8, i64 68, !8, i64 72, !8, i64 76, !8, i64 80, !8, i64 84, !8, i64 88, !8, i64 92, !8, i64 96, !8, i64 100, !8, i64 104, !8, i64 108, !8, i64 112, !8, i64 116, !3, i64 120, !8, i64 124, !2, i64 128, !2, i64 136, !8, i64 144, !8, i64 148, !9, i64 152, !8, i64 156, !8, i64 160, !8, i64 164, !7, i64 168, !7, i64 176, !8, i64 184, !8, i64 188, !8, i64 192, !8, i64 196, !8, i64 200, !8, i64 204, !8, i64 208, !8, i64 212, !9, i64 216, !8, i64 220, !8, i64 224, !8, i64 228, !9, i64 232, !9, i64 236, !9, i64 240, !9, i64 244, !8, i64 248, !8, i64 252, !8, i64 256, !8, i64 260, !8, i64 264, !8, i64 268, !8, i64 272, !8, i64 276}
!7 = !{!"long", !3, i64 0}
!8 = !{!"int", !3, i64 0}
!9 = !{!"float", !3, i64 0}
!10 = !{!6, !8, i64 192}
!11 = !{!8, !8, i64 0}
!12 = !{!6, !8, i64 200}
!13 = !{!14, !14, i64 0}
!14 = !{!"double", !3, i64 0}
!15 = !{!6, !8, i64 204}
!16 = !{!6, !8, i64 276}
!17 = !{!18, !8, i64 24}
!18 = !{!"", !8, i64 0, !8, i64 4, !8, i64 8, !8, i64 12, !8, i64 16, !8, i64 20, !8, i64 24, !8, i64 28, !3, i64 32, !3, i64 44, !8, i64 56, !8, i64 60, !8, i64 64, !8, i64 68, !8, i64 72, !8, i64 76, !8, i64 80, !8, i64 84, !8, i64 88, !2, i64 96, !3, i64 104}
!19 = !{!18, !2, i64 96}
!20 = !{!18, !8, i64 0}
!21 = !{!18, !8, i64 4}
!22 = !{!18, !8, i64 8}
!23 = !{!18, !8, i64 16}
!24 = !{!18, !8, i64 56}
!25 = !{!18, !8, i64 60}
!26 = !{!18, !8, i64 76}
!27 = !{!18, !8, i64 64}
!28 = !{!18, !8, i64 68}
!29 = !{!18, !8, i64 12}
!30 = !{!18, !8, i64 72}
!31 = !{!18, !8, i64 88}
!32 = !{!6, !8, i64 84}
!33 = !{!6, !8, i64 264}
!34 = !{!6, !8, i64 76}
!35 = !{!6, !8, i64 268}
!36 = !{!6, !8, i64 80}
!37 = !{!9, !9, i64 0}
!38 = !{!6, !8, i64 212}
!39 = !{!6, !8, i64 208}
!40 = !{!6, !8, i64 92}
!41 = !{!18, !8, i64 80}
!42 = !{!18, !8, i64 84}
