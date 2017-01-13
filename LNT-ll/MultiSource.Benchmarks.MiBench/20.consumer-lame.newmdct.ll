; ModuleID = './MultiSource.Benchmarks.MiBench/20.consumer-lame.newmdct.bc'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.lame_global_flags = type { i64, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i8*, i8*, i32, i32, float, i32, i32, i32, i64, i64, i32, i32, i32, i32, i32, i32, i32, i32, float, i32, i32, i32, float, float, float, float, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.III_side_info_t = type { i32, i32, i32, [2 x [4 x i32]], [2 x %struct.anon] }
%struct.anon = type { [2 x %struct.gr_info_ss] }
%struct.gr_info_ss = type { %struct.gr_info }
%struct.gr_info = type { i32, i32, i32, i32, i32, i32, i32, i32, [3 x i32], [3 x i32], i32, i32, i32, i32, i32, i32, i32, i32, i32, i32*, [4 x i32] }

@mdct_sub48.init = internal global i32 0, align 4
@sb_sample = internal global [2 x [2 x [18 x [32 x double]]]] zeroinitializer, align 16
@win = internal global [4 x [36 x double]] zeroinitializer, align 16
@ca = internal global [8 x double] zeroinitializer, align 16
@cs = internal global [8 x double] zeroinitializer, align 16
@mdct_init48.c = internal constant [8 x double] [double -6.000000e-01, double -5.350000e-01, double -3.300000e-01, double -1.850000e-01, double -9.500000e-02, double -4.100000e-02, double -1.420000e-02, double -3.700000e-03], align 16
@cos_l = internal global [244 x double] zeroinitializer, align 16
@mdct_init48.d3 = internal constant [4 x i32] [i32 1, i32 7, i32 10, i32 16], align 16
@mdct_init48.d9 = internal constant [2 x i32] [i32 4, i32 13], align 4
@all = internal constant [12 x i32] [i32 0, i32 2, i32 3, i32 5, i32 6, i32 8, i32 9, i32 11, i32 12, i32 14, i32 15, i32 17], align 16
@enwindow = internal global [256 x double] [double 0x3FA251E002C5BE4C, double 0x3F924E1FFC2760F6, double 3.134727e-03, double 2.457142e-03, double 9.713170e-04, double 2.188680e-04, double 1.015660e-04, double 1.382800e-05, double 0x3FA24EFFFE8EA200, double 3.401756e-03, double 9.837150e-04, double 9.918200e-05, double -4.770000e-07, double 1.039510e-04, double 9.536740e-04, double 2.841473e-03, double 1.239800e-05, double 1.912120e-04, double 2.283096e-03, double 0x3F9166FFFA87D736, double 0x3F9334FFF82E8B95, double 2.630711e-03, double 2.474780e-04, double 1.478200e-05, double 0x3FA2467FFD4C82A1, double 3.643036e-03, double 9.918210e-04, double 9.632100e-05, double -4.770000e-07, double 1.058580e-04, double 9.307860e-04, double 2.521515e-03, double 1.144400e-05, double 1.654620e-04, double 2.110004e-03, double 0x3F907FDFF8E84D76, double 0x3F941B0002FC8112, double 2.803326e-03, double 2.770420e-04, double 1.668900e-05, double 0x3FA2385FFEFF602E, double 3.858566e-03, double 9.951590e-04, double 9.346000e-05, double -4.770000e-07, double 1.072880e-04, double 9.026530e-04, double 2.174854e-03, double 1.001400e-05, double 1.401900e-04, double 1.937389e-03, double 0x3F8F32C00A8B630F, double 0x3F94FFC002FEA6D3, double 2.974033e-03, double 3.075600e-04, double 1.812000e-05, double 3.543520e-02, double 4.049301e-03, double 9.942050e-04, double 9.059900e-05, double -4.770000e-07, double 1.082420e-04, double 8.687970e-04, double 1.800537e-03, double 9.060000e-06, double 1.163480e-04, double 1.766682e-03, double 0x3F8D680010E953B9, double 0x3F95E29FFB661AF0, double 3.141880e-03, double 3.390310e-04, double 1.955000e-05, double 0x3FA20B4002AD0C1B, double 4.215240e-03, double 9.894370e-04, double 8.726100e-05, double -4.770000e-07, double 1.087190e-04, double 8.292200e-04, double 1.399517e-03, double 8.106000e-06, double 9.393700e-05, double 1.597881e-03, double 0x3F8BA03FF357727A, double 0x3F96C320035E36F6, double 3.306866e-03, double 3.714560e-04, double 2.145800e-05, double 3.500700e-02, double 4.357815e-03, double 9.808540e-04, double 8.392300e-05, double -4.770000e-07, double 1.087190e-04, double 7.839200e-04, double 9.713170e-04, double 7.629000e-06, double 7.295600e-05, double 1.432419e-03, double 0x3F89DC800CEF6B77, double 2.307415e-02, double 3.467083e-03, double 4.043580e-04, double 2.336500e-05, double 0x3FA1C82FFC6969F3, double 4.477024e-03, double 9.689330e-04, double 8.058500e-05, double -9.540000e-07, double 1.082420e-04, double 7.319450e-04, double 5.159380e-04, double 6.676000e-06, double 5.292900e-05, double 1.269817e-03, double 0x3F881D80076614A1, double 0x3F987B2006DB9161, double 3.622532e-03, double 4.382130e-04, double 2.527200e-05, double 0x3FA19E90011D1416, double 4.573822e-03, double 9.541510e-04, double 7.677100e-05, double -9.540000e-07, double 1.068120e-04, double 6.742480e-04, double 3.337900e-05, double 6.199000e-06, double 3.433200e-05, double 1.111031e-03, double 0x3F86643FF91CEA7A, double 0x3F99519FFD2D5F2B, double 3.771782e-03, double 4.725460e-04, double 2.765700e-05, double 3.405571e-02, double 4.649162e-03, double 9.355550e-04, double 7.343300e-05, double -9.540000e-07, double 1.053810e-04, double 6.103520e-04, double -4.758830e-04, double 5.245000e-06, double 1.716600e-05, double 9.565350e-04, double 0x3F84B1400FA0C315, double 2.552700e-02, double 3.914356e-03, double 5.073550e-04, double 3.004100e-05, double 0x3FA13BE000055E64, double 4.703045e-03, double 9.150510e-04, double 7.009500e-05, double -9.540000e-07, double 1.025200e-04, double 5.393030e-04, double -1.011848e-03, double 4.768000e-06, double 9.540000e-07, double 8.068080e-04, double 9.287834e-03, double 0x3F9AF14004E3FBA4, double 4.048824e-03, double 5.421640e-04, double 3.242500e-05, double 0x3FA102EFFD062E20, double 4.737377e-03, double 8.916850e-04, double 6.628000e-05, double -1.431000e-06, double 9.918200e-05, double 4.625320e-04, double -1.573563e-03, double 4.292000e-06, double -1.382800e-05, double 6.618500e-04, double 8.487225e-03, double 2.707386e-02, double 4.174709e-03, double 5.769730e-04, double 3.480900e-05, double 0x3FA0C53FFF633BD3, double 4.752159e-03, double 8.664130e-04, double 6.294300e-05, double -1.431000e-06, double 9.536700e-05, double 3.786090e-04, double -2.161503e-03, double 3.815000e-06, double -2.718000e-05, double 5.221370e-04, double 7.703304e-03, double 0x3F9C7BA000DE43BA, double 4.290581e-03, double 6.117820e-04, double 3.767000e-05, double 3.224802e-02, double 4.748821e-03, double 8.387570e-04, double 5.960500e-05, double -1.907000e-06, double 9.012200e-05, double 2.884860e-04, double -2.774239e-03, double 3.338000e-06, double -3.957700e-05, double 3.881450e-04, double 6.937027e-03, double 0x3F9D37C002307E44, double 4.395962e-03, double 6.465910e-04, double 4.053100e-05, double 3.170681e-02, double 4.728317e-03, double 8.096690e-04, double 5.579000e-05, double -1.907000e-06, double 8.440000e-05, double 1.916890e-04, double -3.411293e-03, double 3.338000e-06, double -5.054500e-05, double 2.598760e-04, double 6.189346e-03, double 0x3F9DED20070F1B84, double 4.489899e-03, double 6.809230e-04, double 4.339200e-05, double 0x3F9FE13FFEFC278C, double 4.691124e-03, double 7.791520e-04, double 5.292900e-05, double -2.384000e-06, double 7.772400e-05, double 8.821500e-05, double -4.072189e-03, double 2.861000e-06, double -6.055800e-05, double 1.373290e-04, double 5.462170e-03, double 2.989006e-02, double 4.570484e-03, double 7.143020e-04, double 4.625300e-05, double 0x3F9F425FFF77A281, double 4.638195e-03, double 7.472040e-04, double 4.959100e-05, double 4.756451e-03, double 2.145800e-05, double -6.961800e-05, double 2.384000e-06], align 16
@mm = internal global [16 x [31 x double]] zeroinitializer, align 16
@cos_s = internal global [6 x [6 x double]] zeroinitializer, align 16

; Function Attrs: nounwind uwtable
define void @mdct_sub48(%struct.lame_global_flags* %gfp, i16* %w0, i16* %w1, [2 x [576 x double]]* %mdct_freq, %struct.III_side_info_t* %l3_side) #0 {
entry:
  %gfp.addr = alloca %struct.lame_global_flags*, align 8
  %w0.addr = alloca i16*, align 8
  %w1.addr = alloca i16*, align 8
  %mdct_freq.addr = alloca [2 x [576 x double]]*, align 8
  %l3_side.addr = alloca %struct.III_side_info_t*, align 8
  %gr = alloca i32, align 4
  %k = alloca i32, align 4
  %ch = alloca i32, align 4
  %wk = alloca i16*, align 8
  %band = alloca i32, align 4
  %mdct_enc = alloca double*, align 8
  %gi = alloca %struct.gr_info*, align 8
  %samp = alloca double*, align 8
  %amp = alloca double, align 8
  %freq = alloca double, align 8
  %type = alloca i32, align 4
  %w1132 = alloca double, align 8
  %cleanup.dest.slot = alloca i32
  %bu = alloca double, align 8
  %bd = alloca double, align 8
  store %struct.lame_global_flags* %gfp, %struct.lame_global_flags** %gfp.addr, align 8, !tbaa !1
  store i16* %w0, i16** %w0.addr, align 8, !tbaa !1
  store i16* %w1, i16** %w1.addr, align 8, !tbaa !1
  store [2 x [576 x double]]* %mdct_freq, [2 x [576 x double]]** %mdct_freq.addr, align 8, !tbaa !1
  store %struct.III_side_info_t* %l3_side, %struct.III_side_info_t** %l3_side.addr, align 8, !tbaa !1
  %0 = bitcast i32* %gr to i8*
  call void @llvm.lifetime.start(i64 4, i8* %0) #1
  %1 = bitcast i32* %k to i8*
  call void @llvm.lifetime.start(i64 4, i8* %1) #1
  %2 = bitcast i32* %ch to i8*
  call void @llvm.lifetime.start(i64 4, i8* %2) #1
  %3 = bitcast i16** %wk to i8*
  call void @llvm.lifetime.start(i64 8, i8* %3) #1
  %4 = load i32, i32* @mdct_sub48.init, align 4, !tbaa !5
  %cmp = icmp eq i32 %4, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  call void @mdct_init48()
  %5 = load i32, i32* @mdct_sub48.init, align 4, !tbaa !5
  %inc = add nsw i32 %5, 1
  store i32 %inc, i32* @mdct_sub48.init, align 4, !tbaa !5
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %6 = load i16*, i16** %w0.addr, align 8, !tbaa !1
  store i16* %6, i16** %wk, align 8, !tbaa !1
  store i32 0, i32* %ch, align 4, !tbaa !5
  br label %for.cond

for.cond:                                         ; preds = %for.inc.416, %if.end
  %7 = load i32, i32* %ch, align 4, !tbaa !5
  %8 = load %struct.lame_global_flags*, %struct.lame_global_flags** %gfp.addr, align 8, !tbaa !1
  %stereo = getelementptr inbounds %struct.lame_global_flags, %struct.lame_global_flags* %8, i32 0, i32 46
  %9 = load i32, i32* %stereo, align 4, !tbaa !7
  %cmp1 = icmp slt i32 %7, %9
  br i1 %cmp1, label %for.body, label %for.end.418

for.body:                                         ; preds = %for.cond
  store i32 0, i32* %gr, align 4, !tbaa !5
  br label %for.cond.2

for.cond.2:                                       ; preds = %for.inc.402, %for.body
  %10 = load i32, i32* %gr, align 4, !tbaa !5
  %11 = load %struct.lame_global_flags*, %struct.lame_global_flags** %gfp.addr, align 8, !tbaa !1
  %mode_gr = getelementptr inbounds %struct.lame_global_flags, %struct.lame_global_flags* %11, i32 0, i32 45
  %12 = load i32, i32* %mode_gr, align 4, !tbaa !11
  %cmp3 = icmp slt i32 %10, %12
  br i1 %cmp3, label %for.body.4, label %for.end.404

for.body.4:                                       ; preds = %for.cond.2
  %13 = bitcast i32* %band to i8*
  call void @llvm.lifetime.start(i64 4, i8* %13) #1
  %14 = bitcast double** %mdct_enc to i8*
  call void @llvm.lifetime.start(i64 8, i8* %14) #1
  %15 = load i32, i32* %ch, align 4, !tbaa !5
  %idxprom = sext i32 %15 to i64
  %16 = load i32, i32* %gr, align 4, !tbaa !5
  %idxprom5 = sext i32 %16 to i64
  %17 = load [2 x [576 x double]]*, [2 x [576 x double]]** %mdct_freq.addr, align 8, !tbaa !1
  %arrayidx = getelementptr inbounds [2 x [576 x double]], [2 x [576 x double]]* %17, i64 %idxprom5
  %arrayidx6 = getelementptr inbounds [2 x [576 x double]], [2 x [576 x double]]* %arrayidx, i32 0, i64 %idxprom
  %arraydecay = getelementptr inbounds [576 x double], [576 x double]* %arrayidx6, i32 0, i32 0
  store double* %arraydecay, double** %mdct_enc, align 8, !tbaa !1
  %18 = bitcast %struct.gr_info** %gi to i8*
  call void @llvm.lifetime.start(i64 8, i8* %18) #1
  %19 = load i32, i32* %ch, align 4, !tbaa !5
  %idxprom7 = sext i32 %19 to i64
  %20 = load i32, i32* %gr, align 4, !tbaa !5
  %idxprom8 = sext i32 %20 to i64
  %21 = load %struct.III_side_info_t*, %struct.III_side_info_t** %l3_side.addr, align 8, !tbaa !1
  %gr9 = getelementptr inbounds %struct.III_side_info_t, %struct.III_side_info_t* %21, i32 0, i32 4
  %arrayidx10 = getelementptr inbounds [2 x %struct.anon], [2 x %struct.anon]* %gr9, i32 0, i64 %idxprom8
  %ch11 = getelementptr inbounds %struct.anon, %struct.anon* %arrayidx10, i32 0, i32 0
  %arrayidx12 = getelementptr inbounds [2 x %struct.gr_info_ss], [2 x %struct.gr_info_ss]* %ch11, i32 0, i64 %idxprom7
  %tt = getelementptr inbounds %struct.gr_info_ss, %struct.gr_info_ss* %arrayidx12, i32 0, i32 0
  store %struct.gr_info* %tt, %struct.gr_info** %gi, align 8, !tbaa !1
  %22 = bitcast double** %samp to i8*
  call void @llvm.lifetime.start(i64 8, i8* %22) #1
  %23 = load i32, i32* %gr, align 4, !tbaa !5
  %sub = sub nsw i32 1, %23
  %idxprom13 = sext i32 %sub to i64
  %24 = load i32, i32* %ch, align 4, !tbaa !5
  %idxprom14 = sext i32 %24 to i64
  %arrayidx15 = getelementptr inbounds [2 x [2 x [18 x [32 x double]]]], [2 x [2 x [18 x [32 x double]]]]* @sb_sample, i32 0, i64 %idxprom14
  %arrayidx16 = getelementptr inbounds [2 x [18 x [32 x double]]], [2 x [18 x [32 x double]]]* %arrayidx15, i32 0, i64 %idxprom13
  %arrayidx17 = getelementptr inbounds [18 x [32 x double]], [18 x [32 x double]]* %arrayidx16, i32 0, i64 0
  %arraydecay18 = getelementptr inbounds [32 x double], [32 x double]* %arrayidx17, i32 0, i32 0
  store double* %arraydecay18, double** %samp, align 8, !tbaa !1
  store i32 0, i32* %k, align 4, !tbaa !5
  br label %for.cond.19

for.cond.19:                                      ; preds = %for.inc.31, %for.body.4
  %25 = load i32, i32* %k, align 4, !tbaa !5
  %cmp20 = icmp slt i32 %25, 9
  br i1 %cmp20, label %for.body.21, label %for.end.33

for.body.21:                                      ; preds = %for.cond.19
  %26 = load i16*, i16** %wk, align 8, !tbaa !1
  %27 = load double*, double** %samp, align 8, !tbaa !1
  call void @window_subband(i16* %26, double* %27, double* getelementptr inbounds ([4 x [36 x double]], [4 x [36 x double]]* @win, i32 0, i64 2, i64 4))
  %28 = load i16*, i16** %wk, align 8, !tbaa !1
  %add.ptr = getelementptr inbounds i16, i16* %28, i64 32
  %29 = load double*, double** %samp, align 8, !tbaa !1
  %add.ptr22 = getelementptr inbounds double, double* %29, i64 32
  call void @window_subband(i16* %add.ptr, double* %add.ptr22, double* getelementptr inbounds ([4 x [36 x double]], [4 x [36 x double]]* @win, i32 0, i64 2, i64 4))
  store i32 1, i32* %band, align 4, !tbaa !5
  br label %for.cond.23

for.cond.23:                                      ; preds = %for.inc, %for.body.21
  %30 = load i32, i32* %band, align 4, !tbaa !5
  %cmp24 = icmp slt i32 %30, 32
  br i1 %cmp24, label %for.body.25, label %for.end

for.body.25:                                      ; preds = %for.cond.23
  %31 = load i32, i32* %band, align 4, !tbaa !5
  %add = add nsw i32 %31, 32
  %idxprom26 = sext i32 %add to i64
  %32 = load double*, double** %samp, align 8, !tbaa !1
  %arrayidx27 = getelementptr inbounds double, double* %32, i64 %idxprom26
  %33 = load double, double* %arrayidx27, align 8, !tbaa !12
  %mul = fmul double %33, -1.000000e+00
  store double %mul, double* %arrayidx27, align 8, !tbaa !12
  br label %for.inc

for.inc:                                          ; preds = %for.body.25
  %34 = load i32, i32* %band, align 4, !tbaa !5
  %add28 = add nsw i32 %34, 2
  store i32 %add28, i32* %band, align 4, !tbaa !5
  br label %for.cond.23

for.end:                                          ; preds = %for.cond.23
  %35 = load double*, double** %samp, align 8, !tbaa !1
  %add.ptr29 = getelementptr inbounds double, double* %35, i64 64
  store double* %add.ptr29, double** %samp, align 8, !tbaa !1
  %36 = load i16*, i16** %wk, align 8, !tbaa !1
  %add.ptr30 = getelementptr inbounds i16, i16* %36, i64 64
  store i16* %add.ptr30, i16** %wk, align 8, !tbaa !1
  br label %for.inc.31

for.inc.31:                                       ; preds = %for.end
  %37 = load i32, i32* %k, align 4, !tbaa !5
  %inc32 = add nsw i32 %37, 1
  store i32 %inc32, i32* %k, align 4, !tbaa !5
  br label %for.cond.19

for.end.33:                                       ; preds = %for.cond.19
  %38 = load %struct.lame_global_flags*, %struct.lame_global_flags** %gfp.addr, align 8, !tbaa !1
  %filter_type = getelementptr inbounds %struct.lame_global_flags, %struct.lame_global_flags* %38, i32 0, i32 59
  %39 = load i32, i32* %filter_type, align 4, !tbaa !14
  %cmp34 = icmp eq i32 %39, 0
  br i1 %cmp34, label %if.then.35, label %if.end.113

if.then.35:                                       ; preds = %for.end.33
  %40 = bitcast double* %amp to i8*
  call void @llvm.lifetime.start(i64 8, i8* %40) #1
  %41 = bitcast double* %freq to i8*
  call void @llvm.lifetime.start(i64 8, i8* %41) #1
  %42 = load %struct.lame_global_flags*, %struct.lame_global_flags** %gfp.addr, align 8, !tbaa !1
  %highpass_band = getelementptr inbounds %struct.lame_global_flags, %struct.lame_global_flags* %42, i32 0, i32 58
  %43 = load i32, i32* %highpass_band, align 4, !tbaa !15
  %add36 = add nsw i32 %43, 1
  store i32 %add36, i32* %band, align 4, !tbaa !5
  br label %for.cond.37

for.cond.37:                                      ; preds = %for.inc.110, %if.then.35
  %44 = load i32, i32* %band, align 4, !tbaa !5
  %45 = load %struct.lame_global_flags*, %struct.lame_global_flags** %gfp.addr, align 8, !tbaa !1
  %lowpass_band = getelementptr inbounds %struct.lame_global_flags, %struct.lame_global_flags* %45, i32 0, i32 57
  %46 = load i32, i32* %lowpass_band, align 4, !tbaa !16
  %cmp38 = icmp slt i32 %44, %46
  br i1 %cmp38, label %for.body.39, label %for.end.112

for.body.39:                                      ; preds = %for.cond.37
  %47 = load i32, i32* %band, align 4, !tbaa !5
  %conv = sitofp i32 %47 to double
  %div = fdiv double %conv, 3.100000e+01
  store double %div, double* %freq, align 8, !tbaa !12
  %48 = load %struct.lame_global_flags*, %struct.lame_global_flags** %gfp.addr, align 8, !tbaa !1
  %lowpass1 = getelementptr inbounds %struct.lame_global_flags, %struct.lame_global_flags* %48, i32 0, i32 53
  %49 = load float, float* %lowpass1, align 4, !tbaa !17
  %conv40 = fpext float %49 to double
  %50 = load double, double* %freq, align 8, !tbaa !12
  %cmp41 = fcmp olt double %conv40, %50
  br i1 %cmp41, label %land.lhs.true, label %if.end.73

land.lhs.true:                                    ; preds = %for.body.39
  %51 = load double, double* %freq, align 8, !tbaa !12
  %52 = load %struct.lame_global_flags*, %struct.lame_global_flags** %gfp.addr, align 8, !tbaa !1
  %lowpass2 = getelementptr inbounds %struct.lame_global_flags, %struct.lame_global_flags* %52, i32 0, i32 54
  %53 = load float, float* %lowpass2, align 4, !tbaa !18
  %conv43 = fpext float %53 to double
  %cmp44 = fcmp olt double %51, %conv43
  br i1 %cmp44, label %if.then.46, label %if.end.73

if.then.46:                                       ; preds = %land.lhs.true
  %54 = load %struct.lame_global_flags*, %struct.lame_global_flags** %gfp.addr, align 8, !tbaa !1
  %lowpass147 = getelementptr inbounds %struct.lame_global_flags, %struct.lame_global_flags* %54, i32 0, i32 53
  %55 = load float, float* %lowpass147, align 4, !tbaa !17
  %conv48 = fpext float %55 to double
  %56 = load double, double* %freq, align 8, !tbaa !12
  %sub49 = fsub double %conv48, %56
  %mul50 = fmul double 0x3FF921FB54442D18, %sub49
  %57 = load %struct.lame_global_flags*, %struct.lame_global_flags** %gfp.addr, align 8, !tbaa !1
  %lowpass251 = getelementptr inbounds %struct.lame_global_flags, %struct.lame_global_flags* %57, i32 0, i32 54
  %58 = load float, float* %lowpass251, align 4, !tbaa !18
  %59 = load %struct.lame_global_flags*, %struct.lame_global_flags** %gfp.addr, align 8, !tbaa !1
  %lowpass152 = getelementptr inbounds %struct.lame_global_flags, %struct.lame_global_flags* %59, i32 0, i32 53
  %60 = load float, float* %lowpass152, align 4, !tbaa !17
  %sub53 = fsub float %58, %60
  %conv54 = fpext float %sub53 to double
  %div55 = fdiv double %mul50, %conv54
  %call = call double @cos(double %div55) #1
  store double %call, double* %amp, align 8, !tbaa !12
  store i32 0, i32* %k, align 4, !tbaa !5
  br label %for.cond.56

for.cond.56:                                      ; preds = %for.inc.70, %if.then.46
  %61 = load i32, i32* %k, align 4, !tbaa !5
  %cmp57 = icmp slt i32 %61, 18
  br i1 %cmp57, label %for.body.59, label %for.end.72

for.body.59:                                      ; preds = %for.cond.56
  %62 = load double, double* %amp, align 8, !tbaa !12
  %63 = load i32, i32* %band, align 4, !tbaa !5
  %idxprom60 = sext i32 %63 to i64
  %64 = load i32, i32* %k, align 4, !tbaa !5
  %idxprom61 = sext i32 %64 to i64
  %65 = load i32, i32* %gr, align 4, !tbaa !5
  %sub62 = sub nsw i32 1, %65
  %idxprom63 = sext i32 %sub62 to i64
  %66 = load i32, i32* %ch, align 4, !tbaa !5
  %idxprom64 = sext i32 %66 to i64
  %arrayidx65 = getelementptr inbounds [2 x [2 x [18 x [32 x double]]]], [2 x [2 x [18 x [32 x double]]]]* @sb_sample, i32 0, i64 %idxprom64
  %arrayidx66 = getelementptr inbounds [2 x [18 x [32 x double]]], [2 x [18 x [32 x double]]]* %arrayidx65, i32 0, i64 %idxprom63
  %arrayidx67 = getelementptr inbounds [18 x [32 x double]], [18 x [32 x double]]* %arrayidx66, i32 0, i64 %idxprom61
  %arrayidx68 = getelementptr inbounds [32 x double], [32 x double]* %arrayidx67, i32 0, i64 %idxprom60
  %67 = load double, double* %arrayidx68, align 8, !tbaa !12
  %mul69 = fmul double %67, %62
  store double %mul69, double* %arrayidx68, align 8, !tbaa !12
  br label %for.inc.70

for.inc.70:                                       ; preds = %for.body.59
  %68 = load i32, i32* %k, align 4, !tbaa !5
  %inc71 = add nsw i32 %68, 1
  store i32 %inc71, i32* %k, align 4, !tbaa !5
  br label %for.cond.56

for.end.72:                                       ; preds = %for.cond.56
  br label %if.end.73

if.end.73:                                        ; preds = %for.end.72, %land.lhs.true, %for.body.39
  %69 = load %struct.lame_global_flags*, %struct.lame_global_flags** %gfp.addr, align 8, !tbaa !1
  %highpass1 = getelementptr inbounds %struct.lame_global_flags, %struct.lame_global_flags* %69, i32 0, i32 55
  %70 = load float, float* %highpass1, align 4, !tbaa !19
  %conv74 = fpext float %70 to double
  %71 = load double, double* %freq, align 8, !tbaa !12
  %cmp75 = fcmp olt double %conv74, %71
  br i1 %cmp75, label %land.lhs.true.77, label %if.end.109

land.lhs.true.77:                                 ; preds = %if.end.73
  %72 = load double, double* %freq, align 8, !tbaa !12
  %73 = load %struct.lame_global_flags*, %struct.lame_global_flags** %gfp.addr, align 8, !tbaa !1
  %highpass2 = getelementptr inbounds %struct.lame_global_flags, %struct.lame_global_flags* %73, i32 0, i32 56
  %74 = load float, float* %highpass2, align 4, !tbaa !20
  %conv78 = fpext float %74 to double
  %cmp79 = fcmp olt double %72, %conv78
  br i1 %cmp79, label %if.then.81, label %if.end.109

if.then.81:                                       ; preds = %land.lhs.true.77
  %75 = load %struct.lame_global_flags*, %struct.lame_global_flags** %gfp.addr, align 8, !tbaa !1
  %highpass282 = getelementptr inbounds %struct.lame_global_flags, %struct.lame_global_flags* %75, i32 0, i32 56
  %76 = load float, float* %highpass282, align 4, !tbaa !20
  %conv83 = fpext float %76 to double
  %77 = load double, double* %freq, align 8, !tbaa !12
  %sub84 = fsub double %conv83, %77
  %mul85 = fmul double 0x3FF921FB54442D18, %sub84
  %78 = load %struct.lame_global_flags*, %struct.lame_global_flags** %gfp.addr, align 8, !tbaa !1
  %highpass286 = getelementptr inbounds %struct.lame_global_flags, %struct.lame_global_flags* %78, i32 0, i32 56
  %79 = load float, float* %highpass286, align 4, !tbaa !20
  %80 = load %struct.lame_global_flags*, %struct.lame_global_flags** %gfp.addr, align 8, !tbaa !1
  %highpass187 = getelementptr inbounds %struct.lame_global_flags, %struct.lame_global_flags* %80, i32 0, i32 55
  %81 = load float, float* %highpass187, align 4, !tbaa !19
  %sub88 = fsub float %79, %81
  %conv89 = fpext float %sub88 to double
  %div90 = fdiv double %mul85, %conv89
  %call91 = call double @cos(double %div90) #1
  store double %call91, double* %amp, align 8, !tbaa !12
  store i32 0, i32* %k, align 4, !tbaa !5
  br label %for.cond.92

for.cond.92:                                      ; preds = %for.inc.106, %if.then.81
  %82 = load i32, i32* %k, align 4, !tbaa !5
  %cmp93 = icmp slt i32 %82, 18
  br i1 %cmp93, label %for.body.95, label %for.end.108

for.body.95:                                      ; preds = %for.cond.92
  %83 = load double, double* %amp, align 8, !tbaa !12
  %84 = load i32, i32* %band, align 4, !tbaa !5
  %idxprom96 = sext i32 %84 to i64
  %85 = load i32, i32* %k, align 4, !tbaa !5
  %idxprom97 = sext i32 %85 to i64
  %86 = load i32, i32* %gr, align 4, !tbaa !5
  %sub98 = sub nsw i32 1, %86
  %idxprom99 = sext i32 %sub98 to i64
  %87 = load i32, i32* %ch, align 4, !tbaa !5
  %idxprom100 = sext i32 %87 to i64
  %arrayidx101 = getelementptr inbounds [2 x [2 x [18 x [32 x double]]]], [2 x [2 x [18 x [32 x double]]]]* @sb_sample, i32 0, i64 %idxprom100
  %arrayidx102 = getelementptr inbounds [2 x [18 x [32 x double]]], [2 x [18 x [32 x double]]]* %arrayidx101, i32 0, i64 %idxprom99
  %arrayidx103 = getelementptr inbounds [18 x [32 x double]], [18 x [32 x double]]* %arrayidx102, i32 0, i64 %idxprom97
  %arrayidx104 = getelementptr inbounds [32 x double], [32 x double]* %arrayidx103, i32 0, i64 %idxprom96
  %88 = load double, double* %arrayidx104, align 8, !tbaa !12
  %mul105 = fmul double %88, %83
  store double %mul105, double* %arrayidx104, align 8, !tbaa !12
  br label %for.inc.106

for.inc.106:                                      ; preds = %for.body.95
  %89 = load i32, i32* %k, align 4, !tbaa !5
  %inc107 = add nsw i32 %89, 1
  store i32 %inc107, i32* %k, align 4, !tbaa !5
  br label %for.cond.92

for.end.108:                                      ; preds = %for.cond.92
  br label %if.end.109

if.end.109:                                       ; preds = %for.end.108, %land.lhs.true.77, %if.end.73
  br label %for.inc.110

for.inc.110:                                      ; preds = %if.end.109
  %90 = load i32, i32* %band, align 4, !tbaa !5
  %inc111 = add nsw i32 %90, 1
  store i32 %inc111, i32* %band, align 4, !tbaa !5
  br label %for.cond.37

for.end.112:                                      ; preds = %for.cond.37
  %91 = bitcast double* %freq to i8*
  call void @llvm.lifetime.end(i64 8, i8* %91) #1
  %92 = bitcast double* %amp to i8*
  call void @llvm.lifetime.end(i64 8, i8* %92) #1
  br label %if.end.113

if.end.113:                                       ; preds = %for.end.112, %for.end.33
  store i32 0, i32* %band, align 4, !tbaa !5
  br label %for.cond.114

for.cond.114:                                     ; preds = %for.inc.398, %if.end.113
  %93 = load i32, i32* %band, align 4, !tbaa !5
  %cmp115 = icmp slt i32 %93, 32
  br i1 %cmp115, label %for.body.117, label %for.end.401

for.body.117:                                     ; preds = %for.cond.114
  %94 = bitcast i32* %type to i8*
  call void @llvm.lifetime.start(i64 4, i8* %94) #1
  %95 = load %struct.gr_info*, %struct.gr_info** %gi, align 8, !tbaa !1
  %block_type = getelementptr inbounds %struct.gr_info, %struct.gr_info* %95, i32 0, i32 6
  %96 = load i32, i32* %block_type, align 4, !tbaa !21
  store i32 %96, i32* %type, align 4, !tbaa !5
  %97 = load i32, i32* %band, align 4, !tbaa !5
  %98 = load %struct.lame_global_flags*, %struct.lame_global_flags** %gfp.addr, align 8, !tbaa !1
  %lowpass_band118 = getelementptr inbounds %struct.lame_global_flags, %struct.lame_global_flags* %98, i32 0, i32 57
  %99 = load i32, i32* %lowpass_band118, align 4, !tbaa !16
  %cmp119 = icmp sge i32 %97, %99
  br i1 %cmp119, label %if.then.124, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %for.body.117
  %100 = load i32, i32* %band, align 4, !tbaa !5
  %101 = load %struct.lame_global_flags*, %struct.lame_global_flags** %gfp.addr, align 8, !tbaa !1
  %highpass_band121 = getelementptr inbounds %struct.lame_global_flags, %struct.lame_global_flags* %101, i32 0, i32 58
  %102 = load i32, i32* %highpass_band121, align 4, !tbaa !15
  %cmp122 = icmp sle i32 %100, %102
  br i1 %cmp122, label %if.then.124, label %if.else

if.then.124:                                      ; preds = %lor.lhs.false, %for.body.117
  %103 = load double*, double** %mdct_enc, align 8, !tbaa !1
  %104 = bitcast double* %103 to i8*
  call void @llvm.memset.p0i8.i64(i8* %104, i8 0, i64 144, i32 1, i1 false)
  br label %if.end.353

if.else:                                          ; preds = %lor.lhs.false
  %105 = load i32, i32* %type, align 4, !tbaa !5
  %cmp125 = icmp eq i32 %105, 2
  br i1 %cmp125, label %if.then.127, label %if.else.278

if.then.127:                                      ; preds = %if.else
  store i32 2, i32* %k, align 4, !tbaa !5
  br label %for.cond.128

for.cond.128:                                     ; preds = %for.inc.276, %if.then.127
  %106 = load i32, i32* %k, align 4, !tbaa !5
  %cmp129 = icmp sge i32 %106, 0
  br i1 %cmp129, label %for.body.131, label %for.end.277

for.body.131:                                     ; preds = %for.cond.128
  %107 = bitcast double* %w1132 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %107) #1
  %108 = load i32, i32* %k, align 4, !tbaa !5
  %idxprom133 = sext i32 %108 to i64
  %arrayidx134 = getelementptr inbounds [36 x double], [36 x double]* getelementptr inbounds ([4 x [36 x double]], [4 x [36 x double]]* @win, i32 0, i64 2), i32 0, i64 %idxprom133
  %109 = load double, double* %arrayidx134, align 8, !tbaa !12
  store double %109, double* %w1132, align 8, !tbaa !12
  %110 = load i32, i32* %band, align 4, !tbaa !5
  %idxprom135 = sext i32 %110 to i64
  %111 = load i32, i32* %k, align 4, !tbaa !5
  %add136 = add nsw i32 %111, 6
  %idxprom137 = sext i32 %add136 to i64
  %112 = load i32, i32* %gr, align 4, !tbaa !5
  %idxprom138 = sext i32 %112 to i64
  %113 = load i32, i32* %ch, align 4, !tbaa !5
  %idxprom139 = sext i32 %113 to i64
  %arrayidx140 = getelementptr inbounds [2 x [2 x [18 x [32 x double]]]], [2 x [2 x [18 x [32 x double]]]]* @sb_sample, i32 0, i64 %idxprom139
  %arrayidx141 = getelementptr inbounds [2 x [18 x [32 x double]]], [2 x [18 x [32 x double]]]* %arrayidx140, i32 0, i64 %idxprom138
  %arrayidx142 = getelementptr inbounds [18 x [32 x double]], [18 x [32 x double]]* %arrayidx141, i32 0, i64 %idxprom137
  %arrayidx143 = getelementptr inbounds [32 x double], [32 x double]* %arrayidx142, i32 0, i64 %idxprom135
  %114 = load double, double* %arrayidx143, align 8, !tbaa !12
  %115 = load double, double* %w1132, align 8, !tbaa !12
  %mul144 = fmul double %114, %115
  %116 = load i32, i32* %band, align 4, !tbaa !5
  %idxprom145 = sext i32 %116 to i64
  %117 = load i32, i32* %k, align 4, !tbaa !5
  %sub146 = sub nsw i32 11, %117
  %idxprom147 = sext i32 %sub146 to i64
  %118 = load i32, i32* %gr, align 4, !tbaa !5
  %idxprom148 = sext i32 %118 to i64
  %119 = load i32, i32* %ch, align 4, !tbaa !5
  %idxprom149 = sext i32 %119 to i64
  %arrayidx150 = getelementptr inbounds [2 x [2 x [18 x [32 x double]]]], [2 x [2 x [18 x [32 x double]]]]* @sb_sample, i32 0, i64 %idxprom149
  %arrayidx151 = getelementptr inbounds [2 x [18 x [32 x double]]], [2 x [18 x [32 x double]]]* %arrayidx150, i32 0, i64 %idxprom148
  %arrayidx152 = getelementptr inbounds [18 x [32 x double]], [18 x [32 x double]]* %arrayidx151, i32 0, i64 %idxprom147
  %arrayidx153 = getelementptr inbounds [32 x double], [32 x double]* %arrayidx152, i32 0, i64 %idxprom145
  %120 = load double, double* %arrayidx153, align 8, !tbaa !12
  %sub154 = fsub double %mul144, %120
  %121 = load i32, i32* %k, align 4, !tbaa !5
  %idxprom155 = sext i32 %121 to i64
  %arrayidx156 = getelementptr inbounds double, double* getelementptr inbounds ([4 x [36 x double]], [4 x [36 x double]]* @win, i32 0, i64 2, i64 4), i64 %idxprom155
  store double %sub154, double* %arrayidx156, align 8, !tbaa !12
  %122 = load i32, i32* %band, align 4, !tbaa !5
  %idxprom157 = sext i32 %122 to i64
  %123 = load i32, i32* %k, align 4, !tbaa !5
  %add158 = add nsw i32 %123, 12
  %idxprom159 = sext i32 %add158 to i64
  %124 = load i32, i32* %gr, align 4, !tbaa !5
  %idxprom160 = sext i32 %124 to i64
  %125 = load i32, i32* %ch, align 4, !tbaa !5
  %idxprom161 = sext i32 %125 to i64
  %arrayidx162 = getelementptr inbounds [2 x [2 x [18 x [32 x double]]]], [2 x [2 x [18 x [32 x double]]]]* @sb_sample, i32 0, i64 %idxprom161
  %arrayidx163 = getelementptr inbounds [2 x [18 x [32 x double]]], [2 x [18 x [32 x double]]]* %arrayidx162, i32 0, i64 %idxprom160
  %arrayidx164 = getelementptr inbounds [18 x [32 x double]], [18 x [32 x double]]* %arrayidx163, i32 0, i64 %idxprom159
  %arrayidx165 = getelementptr inbounds [32 x double], [32 x double]* %arrayidx164, i32 0, i64 %idxprom157
  %126 = load double, double* %arrayidx165, align 8, !tbaa !12
  %127 = load i32, i32* %band, align 4, !tbaa !5
  %idxprom166 = sext i32 %127 to i64
  %128 = load i32, i32* %k, align 4, !tbaa !5
  %sub167 = sub nsw i32 17, %128
  %idxprom168 = sext i32 %sub167 to i64
  %129 = load i32, i32* %gr, align 4, !tbaa !5
  %idxprom169 = sext i32 %129 to i64
  %130 = load i32, i32* %ch, align 4, !tbaa !5
  %idxprom170 = sext i32 %130 to i64
  %arrayidx171 = getelementptr inbounds [2 x [2 x [18 x [32 x double]]]], [2 x [2 x [18 x [32 x double]]]]* @sb_sample, i32 0, i64 %idxprom170
  %arrayidx172 = getelementptr inbounds [2 x [18 x [32 x double]]], [2 x [18 x [32 x double]]]* %arrayidx171, i32 0, i64 %idxprom169
  %arrayidx173 = getelementptr inbounds [18 x [32 x double]], [18 x [32 x double]]* %arrayidx172, i32 0, i64 %idxprom168
  %arrayidx174 = getelementptr inbounds [32 x double], [32 x double]* %arrayidx173, i32 0, i64 %idxprom166
  %131 = load double, double* %arrayidx174, align 8, !tbaa !12
  %132 = load double, double* %w1132, align 8, !tbaa !12
  %mul175 = fmul double %131, %132
  %add176 = fadd double %126, %mul175
  %133 = load i32, i32* %k, align 4, !tbaa !5
  %add177 = add nsw i32 %133, 3
  %idxprom178 = sext i32 %add177 to i64
  %arrayidx179 = getelementptr inbounds double, double* getelementptr inbounds ([4 x [36 x double]], [4 x [36 x double]]* @win, i32 0, i64 2, i64 4), i64 %idxprom178
  store double %add176, double* %arrayidx179, align 8, !tbaa !12
  %134 = load i32, i32* %band, align 4, !tbaa !5
  %idxprom180 = sext i32 %134 to i64
  %135 = load i32, i32* %k, align 4, !tbaa !5
  %add181 = add nsw i32 %135, 12
  %idxprom182 = sext i32 %add181 to i64
  %136 = load i32, i32* %gr, align 4, !tbaa !5
  %idxprom183 = sext i32 %136 to i64
  %137 = load i32, i32* %ch, align 4, !tbaa !5
  %idxprom184 = sext i32 %137 to i64
  %arrayidx185 = getelementptr inbounds [2 x [2 x [18 x [32 x double]]]], [2 x [2 x [18 x [32 x double]]]]* @sb_sample, i32 0, i64 %idxprom184
  %arrayidx186 = getelementptr inbounds [2 x [18 x [32 x double]]], [2 x [18 x [32 x double]]]* %arrayidx185, i32 0, i64 %idxprom183
  %arrayidx187 = getelementptr inbounds [18 x [32 x double]], [18 x [32 x double]]* %arrayidx186, i32 0, i64 %idxprom182
  %arrayidx188 = getelementptr inbounds [32 x double], [32 x double]* %arrayidx187, i32 0, i64 %idxprom180
  %138 = load double, double* %arrayidx188, align 8, !tbaa !12
  %139 = load double, double* %w1132, align 8, !tbaa !12
  %mul189 = fmul double %138, %139
  %140 = load i32, i32* %band, align 4, !tbaa !5
  %idxprom190 = sext i32 %140 to i64
  %141 = load i32, i32* %k, align 4, !tbaa !5
  %sub191 = sub nsw i32 17, %141
  %idxprom192 = sext i32 %sub191 to i64
  %142 = load i32, i32* %gr, align 4, !tbaa !5
  %idxprom193 = sext i32 %142 to i64
  %143 = load i32, i32* %ch, align 4, !tbaa !5
  %idxprom194 = sext i32 %143 to i64
  %arrayidx195 = getelementptr inbounds [2 x [2 x [18 x [32 x double]]]], [2 x [2 x [18 x [32 x double]]]]* @sb_sample, i32 0, i64 %idxprom194
  %arrayidx196 = getelementptr inbounds [2 x [18 x [32 x double]]], [2 x [18 x [32 x double]]]* %arrayidx195, i32 0, i64 %idxprom193
  %arrayidx197 = getelementptr inbounds [18 x [32 x double]], [18 x [32 x double]]* %arrayidx196, i32 0, i64 %idxprom192
  %arrayidx198 = getelementptr inbounds [32 x double], [32 x double]* %arrayidx197, i32 0, i64 %idxprom190
  %144 = load double, double* %arrayidx198, align 8, !tbaa !12
  %sub199 = fsub double %mul189, %144
  %145 = load i32, i32* %k, align 4, !tbaa !5
  %add200 = add nsw i32 %145, 6
  %idxprom201 = sext i32 %add200 to i64
  %arrayidx202 = getelementptr inbounds double, double* getelementptr inbounds ([4 x [36 x double]], [4 x [36 x double]]* @win, i32 0, i64 2, i64 4), i64 %idxprom201
  store double %sub199, double* %arrayidx202, align 8, !tbaa !12
  %146 = load i32, i32* %band, align 4, !tbaa !5
  %idxprom203 = sext i32 %146 to i64
  %147 = load i32, i32* %k, align 4, !tbaa !5
  %idxprom204 = sext i32 %147 to i64
  %148 = load i32, i32* %gr, align 4, !tbaa !5
  %sub205 = sub nsw i32 1, %148
  %idxprom206 = sext i32 %sub205 to i64
  %149 = load i32, i32* %ch, align 4, !tbaa !5
  %idxprom207 = sext i32 %149 to i64
  %arrayidx208 = getelementptr inbounds [2 x [2 x [18 x [32 x double]]]], [2 x [2 x [18 x [32 x double]]]]* @sb_sample, i32 0, i64 %idxprom207
  %arrayidx209 = getelementptr inbounds [2 x [18 x [32 x double]]], [2 x [18 x [32 x double]]]* %arrayidx208, i32 0, i64 %idxprom206
  %arrayidx210 = getelementptr inbounds [18 x [32 x double]], [18 x [32 x double]]* %arrayidx209, i32 0, i64 %idxprom204
  %arrayidx211 = getelementptr inbounds [32 x double], [32 x double]* %arrayidx210, i32 0, i64 %idxprom203
  %150 = load double, double* %arrayidx211, align 8, !tbaa !12
  %151 = load i32, i32* %band, align 4, !tbaa !5
  %idxprom212 = sext i32 %151 to i64
  %152 = load i32, i32* %k, align 4, !tbaa !5
  %sub213 = sub nsw i32 5, %152
  %idxprom214 = sext i32 %sub213 to i64
  %153 = load i32, i32* %gr, align 4, !tbaa !5
  %sub215 = sub nsw i32 1, %153
  %idxprom216 = sext i32 %sub215 to i64
  %154 = load i32, i32* %ch, align 4, !tbaa !5
  %idxprom217 = sext i32 %154 to i64
  %arrayidx218 = getelementptr inbounds [2 x [2 x [18 x [32 x double]]]], [2 x [2 x [18 x [32 x double]]]]* @sb_sample, i32 0, i64 %idxprom217
  %arrayidx219 = getelementptr inbounds [2 x [18 x [32 x double]]], [2 x [18 x [32 x double]]]* %arrayidx218, i32 0, i64 %idxprom216
  %arrayidx220 = getelementptr inbounds [18 x [32 x double]], [18 x [32 x double]]* %arrayidx219, i32 0, i64 %idxprom214
  %arrayidx221 = getelementptr inbounds [32 x double], [32 x double]* %arrayidx220, i32 0, i64 %idxprom212
  %155 = load double, double* %arrayidx221, align 8, !tbaa !12
  %156 = load double, double* %w1132, align 8, !tbaa !12
  %mul222 = fmul double %155, %156
  %add223 = fadd double %150, %mul222
  %157 = load i32, i32* %k, align 4, !tbaa !5
  %add224 = add nsw i32 %157, 9
  %idxprom225 = sext i32 %add224 to i64
  %arrayidx226 = getelementptr inbounds double, double* getelementptr inbounds ([4 x [36 x double]], [4 x [36 x double]]* @win, i32 0, i64 2, i64 4), i64 %idxprom225
  store double %add223, double* %arrayidx226, align 8, !tbaa !12
  %158 = load i32, i32* %band, align 4, !tbaa !5
  %idxprom227 = sext i32 %158 to i64
  %159 = load i32, i32* %k, align 4, !tbaa !5
  %idxprom228 = sext i32 %159 to i64
  %160 = load i32, i32* %gr, align 4, !tbaa !5
  %sub229 = sub nsw i32 1, %160
  %idxprom230 = sext i32 %sub229 to i64
  %161 = load i32, i32* %ch, align 4, !tbaa !5
  %idxprom231 = sext i32 %161 to i64
  %arrayidx232 = getelementptr inbounds [2 x [2 x [18 x [32 x double]]]], [2 x [2 x [18 x [32 x double]]]]* @sb_sample, i32 0, i64 %idxprom231
  %arrayidx233 = getelementptr inbounds [2 x [18 x [32 x double]]], [2 x [18 x [32 x double]]]* %arrayidx232, i32 0, i64 %idxprom230
  %arrayidx234 = getelementptr inbounds [18 x [32 x double]], [18 x [32 x double]]* %arrayidx233, i32 0, i64 %idxprom228
  %arrayidx235 = getelementptr inbounds [32 x double], [32 x double]* %arrayidx234, i32 0, i64 %idxprom227
  %162 = load double, double* %arrayidx235, align 8, !tbaa !12
  %163 = load double, double* %w1132, align 8, !tbaa !12
  %mul236 = fmul double %162, %163
  %164 = load i32, i32* %band, align 4, !tbaa !5
  %idxprom237 = sext i32 %164 to i64
  %165 = load i32, i32* %k, align 4, !tbaa !5
  %sub238 = sub nsw i32 5, %165
  %idxprom239 = sext i32 %sub238 to i64
  %166 = load i32, i32* %gr, align 4, !tbaa !5
  %sub240 = sub nsw i32 1, %166
  %idxprom241 = sext i32 %sub240 to i64
  %167 = load i32, i32* %ch, align 4, !tbaa !5
  %idxprom242 = sext i32 %167 to i64
  %arrayidx243 = getelementptr inbounds [2 x [2 x [18 x [32 x double]]]], [2 x [2 x [18 x [32 x double]]]]* @sb_sample, i32 0, i64 %idxprom242
  %arrayidx244 = getelementptr inbounds [2 x [18 x [32 x double]]], [2 x [18 x [32 x double]]]* %arrayidx243, i32 0, i64 %idxprom241
  %arrayidx245 = getelementptr inbounds [18 x [32 x double]], [18 x [32 x double]]* %arrayidx244, i32 0, i64 %idxprom239
  %arrayidx246 = getelementptr inbounds [32 x double], [32 x double]* %arrayidx245, i32 0, i64 %idxprom237
  %168 = load double, double* %arrayidx246, align 8, !tbaa !12
  %sub247 = fsub double %mul236, %168
  %169 = load i32, i32* %k, align 4, !tbaa !5
  %add248 = add nsw i32 %169, 12
  %idxprom249 = sext i32 %add248 to i64
  %arrayidx250 = getelementptr inbounds double, double* getelementptr inbounds ([4 x [36 x double]], [4 x [36 x double]]* @win, i32 0, i64 2, i64 4), i64 %idxprom249
  store double %sub247, double* %arrayidx250, align 8, !tbaa !12
  %170 = load i32, i32* %band, align 4, !tbaa !5
  %idxprom251 = sext i32 %170 to i64
  %171 = load i32, i32* %k, align 4, !tbaa !5
  %add252 = add nsw i32 %171, 6
  %idxprom253 = sext i32 %add252 to i64
  %172 = load i32, i32* %gr, align 4, !tbaa !5
  %sub254 = sub nsw i32 1, %172
  %idxprom255 = sext i32 %sub254 to i64
  %173 = load i32, i32* %ch, align 4, !tbaa !5
  %idxprom256 = sext i32 %173 to i64
  %arrayidx257 = getelementptr inbounds [2 x [2 x [18 x [32 x double]]]], [2 x [2 x [18 x [32 x double]]]]* @sb_sample, i32 0, i64 %idxprom256
  %arrayidx258 = getelementptr inbounds [2 x [18 x [32 x double]]], [2 x [18 x [32 x double]]]* %arrayidx257, i32 0, i64 %idxprom255
  %arrayidx259 = getelementptr inbounds [18 x [32 x double]], [18 x [32 x double]]* %arrayidx258, i32 0, i64 %idxprom253
  %arrayidx260 = getelementptr inbounds [32 x double], [32 x double]* %arrayidx259, i32 0, i64 %idxprom251
  %174 = load double, double* %arrayidx260, align 8, !tbaa !12
  %175 = load i32, i32* %band, align 4, !tbaa !5
  %idxprom261 = sext i32 %175 to i64
  %176 = load i32, i32* %k, align 4, !tbaa !5
  %sub262 = sub nsw i32 11, %176
  %idxprom263 = sext i32 %sub262 to i64
  %177 = load i32, i32* %gr, align 4, !tbaa !5
  %sub264 = sub nsw i32 1, %177
  %idxprom265 = sext i32 %sub264 to i64
  %178 = load i32, i32* %ch, align 4, !tbaa !5
  %idxprom266 = sext i32 %178 to i64
  %arrayidx267 = getelementptr inbounds [2 x [2 x [18 x [32 x double]]]], [2 x [2 x [18 x [32 x double]]]]* @sb_sample, i32 0, i64 %idxprom266
  %arrayidx268 = getelementptr inbounds [2 x [18 x [32 x double]]], [2 x [18 x [32 x double]]]* %arrayidx267, i32 0, i64 %idxprom265
  %arrayidx269 = getelementptr inbounds [18 x [32 x double]], [18 x [32 x double]]* %arrayidx268, i32 0, i64 %idxprom263
  %arrayidx270 = getelementptr inbounds [32 x double], [32 x double]* %arrayidx269, i32 0, i64 %idxprom261
  %179 = load double, double* %arrayidx270, align 8, !tbaa !12
  %180 = load double, double* %w1132, align 8, !tbaa !12
  %mul271 = fmul double %179, %180
  %add272 = fadd double %174, %mul271
  %181 = load i32, i32* %k, align 4, !tbaa !5
  %add273 = add nsw i32 %181, 15
  %idxprom274 = sext i32 %add273 to i64
  %arrayidx275 = getelementptr inbounds double, double* getelementptr inbounds ([4 x [36 x double]], [4 x [36 x double]]* @win, i32 0, i64 2, i64 4), i64 %idxprom274
  store double %add272, double* %arrayidx275, align 8, !tbaa !12
  %182 = bitcast double* %w1132 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %182) #1
  br label %for.inc.276

for.inc.276:                                      ; preds = %for.body.131
  %183 = load i32, i32* %k, align 4, !tbaa !5
  %dec = add nsw i32 %183, -1
  store i32 %dec, i32* %k, align 4, !tbaa !5
  br label %for.cond.128

for.end.277:                                      ; preds = %for.cond.128
  %184 = load double*, double** %mdct_enc, align 8, !tbaa !1
  call void @mdct_short(double* %184, double* getelementptr inbounds ([4 x [36 x double]], [4 x [36 x double]]* @win, i32 0, i64 2, i64 4))
  br label %if.end.352

if.else.278:                                      ; preds = %if.else
  store i32 8, i32* %k, align 4, !tbaa !5
  br label %for.cond.279

for.cond.279:                                     ; preds = %for.inc.349, %if.else.278
  %185 = load i32, i32* %k, align 4, !tbaa !5
  %cmp280 = icmp sge i32 %185, 0
  br i1 %cmp280, label %for.body.282, label %for.end.351

for.body.282:                                     ; preds = %for.cond.279
  %186 = load i32, i32* %k, align 4, !tbaa !5
  %idxprom283 = sext i32 %186 to i64
  %187 = load i32, i32* %type, align 4, !tbaa !5
  %idxprom284 = sext i32 %187 to i64
  %arrayidx285 = getelementptr inbounds [4 x [36 x double]], [4 x [36 x double]]* @win, i32 0, i64 %idxprom284
  %arrayidx286 = getelementptr inbounds [36 x double], [36 x double]* %arrayidx285, i32 0, i64 %idxprom283
  %188 = load double, double* %arrayidx286, align 8, !tbaa !12
  %189 = load i32, i32* %band, align 4, !tbaa !5
  %idxprom287 = sext i32 %189 to i64
  %190 = load i32, i32* %k, align 4, !tbaa !5
  %idxprom288 = sext i32 %190 to i64
  %191 = load i32, i32* %gr, align 4, !tbaa !5
  %idxprom289 = sext i32 %191 to i64
  %192 = load i32, i32* %ch, align 4, !tbaa !5
  %idxprom290 = sext i32 %192 to i64
  %arrayidx291 = getelementptr inbounds [2 x [2 x [18 x [32 x double]]]], [2 x [2 x [18 x [32 x double]]]]* @sb_sample, i32 0, i64 %idxprom290
  %arrayidx292 = getelementptr inbounds [2 x [18 x [32 x double]]], [2 x [18 x [32 x double]]]* %arrayidx291, i32 0, i64 %idxprom289
  %arrayidx293 = getelementptr inbounds [18 x [32 x double]], [18 x [32 x double]]* %arrayidx292, i32 0, i64 %idxprom288
  %arrayidx294 = getelementptr inbounds [32 x double], [32 x double]* %arrayidx293, i32 0, i64 %idxprom287
  %193 = load double, double* %arrayidx294, align 8, !tbaa !12
  %mul295 = fmul double %188, %193
  %194 = load i32, i32* %k, align 4, !tbaa !5
  %add296 = add nsw i32 %194, 9
  %idxprom297 = sext i32 %add296 to i64
  %195 = load i32, i32* %type, align 4, !tbaa !5
  %idxprom298 = sext i32 %195 to i64
  %arrayidx299 = getelementptr inbounds [4 x [36 x double]], [4 x [36 x double]]* @win, i32 0, i64 %idxprom298
  %arrayidx300 = getelementptr inbounds [36 x double], [36 x double]* %arrayidx299, i32 0, i64 %idxprom297
  %196 = load double, double* %arrayidx300, align 8, !tbaa !12
  %197 = load i32, i32* %band, align 4, !tbaa !5
  %idxprom301 = sext i32 %197 to i64
  %198 = load i32, i32* %k, align 4, !tbaa !5
  %sub302 = sub nsw i32 17, %198
  %idxprom303 = sext i32 %sub302 to i64
  %199 = load i32, i32* %gr, align 4, !tbaa !5
  %idxprom304 = sext i32 %199 to i64
  %200 = load i32, i32* %ch, align 4, !tbaa !5
  %idxprom305 = sext i32 %200 to i64
  %arrayidx306 = getelementptr inbounds [2 x [2 x [18 x [32 x double]]]], [2 x [2 x [18 x [32 x double]]]]* @sb_sample, i32 0, i64 %idxprom305
  %arrayidx307 = getelementptr inbounds [2 x [18 x [32 x double]]], [2 x [18 x [32 x double]]]* %arrayidx306, i32 0, i64 %idxprom304
  %arrayidx308 = getelementptr inbounds [18 x [32 x double]], [18 x [32 x double]]* %arrayidx307, i32 0, i64 %idxprom303
  %arrayidx309 = getelementptr inbounds [32 x double], [32 x double]* %arrayidx308, i32 0, i64 %idxprom301
  %201 = load double, double* %arrayidx309, align 8, !tbaa !12
  %mul310 = fmul double %196, %201
  %sub311 = fsub double %mul295, %mul310
  %202 = load i32, i32* %k, align 4, !tbaa !5
  %idxprom312 = sext i32 %202 to i64
  %arrayidx313 = getelementptr inbounds double, double* getelementptr inbounds ([4 x [36 x double]], [4 x [36 x double]]* @win, i32 0, i64 2, i64 4), i64 %idxprom312
  store double %sub311, double* %arrayidx313, align 8, !tbaa !12
  %203 = load i32, i32* %k, align 4, !tbaa !5
  %add314 = add nsw i32 %203, 18
  %idxprom315 = sext i32 %add314 to i64
  %204 = load i32, i32* %type, align 4, !tbaa !5
  %idxprom316 = sext i32 %204 to i64
  %arrayidx317 = getelementptr inbounds [4 x [36 x double]], [4 x [36 x double]]* @win, i32 0, i64 %idxprom316
  %arrayidx318 = getelementptr inbounds [36 x double], [36 x double]* %arrayidx317, i32 0, i64 %idxprom315
  %205 = load double, double* %arrayidx318, align 8, !tbaa !12
  %206 = load i32, i32* %band, align 4, !tbaa !5
  %idxprom319 = sext i32 %206 to i64
  %207 = load i32, i32* %k, align 4, !tbaa !5
  %idxprom320 = sext i32 %207 to i64
  %208 = load i32, i32* %gr, align 4, !tbaa !5
  %sub321 = sub nsw i32 1, %208
  %idxprom322 = sext i32 %sub321 to i64
  %209 = load i32, i32* %ch, align 4, !tbaa !5
  %idxprom323 = sext i32 %209 to i64
  %arrayidx324 = getelementptr inbounds [2 x [2 x [18 x [32 x double]]]], [2 x [2 x [18 x [32 x double]]]]* @sb_sample, i32 0, i64 %idxprom323
  %arrayidx325 = getelementptr inbounds [2 x [18 x [32 x double]]], [2 x [18 x [32 x double]]]* %arrayidx324, i32 0, i64 %idxprom322
  %arrayidx326 = getelementptr inbounds [18 x [32 x double]], [18 x [32 x double]]* %arrayidx325, i32 0, i64 %idxprom320
  %arrayidx327 = getelementptr inbounds [32 x double], [32 x double]* %arrayidx326, i32 0, i64 %idxprom319
  %210 = load double, double* %arrayidx327, align 8, !tbaa !12
  %mul328 = fmul double %205, %210
  %211 = load i32, i32* %k, align 4, !tbaa !5
  %add329 = add nsw i32 %211, 27
  %idxprom330 = sext i32 %add329 to i64
  %212 = load i32, i32* %type, align 4, !tbaa !5
  %idxprom331 = sext i32 %212 to i64
  %arrayidx332 = getelementptr inbounds [4 x [36 x double]], [4 x [36 x double]]* @win, i32 0, i64 %idxprom331
  %arrayidx333 = getelementptr inbounds [36 x double], [36 x double]* %arrayidx332, i32 0, i64 %idxprom330
  %213 = load double, double* %arrayidx333, align 8, !tbaa !12
  %214 = load i32, i32* %band, align 4, !tbaa !5
  %idxprom334 = sext i32 %214 to i64
  %215 = load i32, i32* %k, align 4, !tbaa !5
  %sub335 = sub nsw i32 17, %215
  %idxprom336 = sext i32 %sub335 to i64
  %216 = load i32, i32* %gr, align 4, !tbaa !5
  %sub337 = sub nsw i32 1, %216
  %idxprom338 = sext i32 %sub337 to i64
  %217 = load i32, i32* %ch, align 4, !tbaa !5
  %idxprom339 = sext i32 %217 to i64
  %arrayidx340 = getelementptr inbounds [2 x [2 x [18 x [32 x double]]]], [2 x [2 x [18 x [32 x double]]]]* @sb_sample, i32 0, i64 %idxprom339
  %arrayidx341 = getelementptr inbounds [2 x [18 x [32 x double]]], [2 x [18 x [32 x double]]]* %arrayidx340, i32 0, i64 %idxprom338
  %arrayidx342 = getelementptr inbounds [18 x [32 x double]], [18 x [32 x double]]* %arrayidx341, i32 0, i64 %idxprom336
  %arrayidx343 = getelementptr inbounds [32 x double], [32 x double]* %arrayidx342, i32 0, i64 %idxprom334
  %218 = load double, double* %arrayidx343, align 8, !tbaa !12
  %mul344 = fmul double %213, %218
  %add345 = fadd double %mul328, %mul344
  %219 = load i32, i32* %k, align 4, !tbaa !5
  %add346 = add nsw i32 9, %219
  %idxprom347 = sext i32 %add346 to i64
  %arrayidx348 = getelementptr inbounds double, double* getelementptr inbounds ([4 x [36 x double]], [4 x [36 x double]]* @win, i32 0, i64 2, i64 4), i64 %idxprom347
  store double %add345, double* %arrayidx348, align 8, !tbaa !12
  br label %for.inc.349

for.inc.349:                                      ; preds = %for.body.282
  %220 = load i32, i32* %k, align 4, !tbaa !5
  %dec350 = add nsw i32 %220, -1
  store i32 %dec350, i32* %k, align 4, !tbaa !5
  br label %for.cond.279

for.end.351:                                      ; preds = %for.cond.279
  %221 = load double*, double** %mdct_enc, align 8, !tbaa !1
  call void @mdct_long(double* %221, double* getelementptr inbounds ([4 x [36 x double]], [4 x [36 x double]]* @win, i32 0, i64 2, i64 4))
  br label %if.end.352

if.end.352:                                       ; preds = %for.end.351, %for.end.277
  br label %if.end.353

if.end.353:                                       ; preds = %if.end.352, %if.then.124
  %222 = load i32, i32* %type, align 4, !tbaa !5
  %cmp354 = icmp ne i32 %222, 2
  br i1 %cmp354, label %if.then.356, label %if.end.397

if.then.356:                                      ; preds = %if.end.353
  %223 = load i32, i32* %band, align 4, !tbaa !5
  %cmp357 = icmp eq i32 %223, 0
  br i1 %cmp357, label %if.then.359, label %if.end.360

if.then.359:                                      ; preds = %if.then.356
  store i32 25, i32* %cleanup.dest.slot
  br label %cleanup

if.end.360:                                       ; preds = %if.then.356
  store i32 7, i32* %k, align 4, !tbaa !5
  br label %for.cond.361

for.cond.361:                                     ; preds = %for.inc.394, %if.end.360
  %224 = load i32, i32* %k, align 4, !tbaa !5
  %cmp362 = icmp sge i32 %224, 0
  br i1 %cmp362, label %for.body.364, label %for.end.396

for.body.364:                                     ; preds = %for.cond.361
  %225 = bitcast double* %bu to i8*
  call void @llvm.lifetime.start(i64 8, i8* %225) #1
  %226 = bitcast double* %bd to i8*
  call void @llvm.lifetime.start(i64 8, i8* %226) #1
  %227 = load i32, i32* %k, align 4, !tbaa !5
  %idxprom365 = sext i32 %227 to i64
  %228 = load double*, double** %mdct_enc, align 8, !tbaa !1
  %arrayidx366 = getelementptr inbounds double, double* %228, i64 %idxprom365
  %229 = load double, double* %arrayidx366, align 8, !tbaa !12
  %230 = load i32, i32* %k, align 4, !tbaa !5
  %idxprom367 = sext i32 %230 to i64
  %arrayidx368 = getelementptr inbounds [8 x double], [8 x double]* @ca, i32 0, i64 %idxprom367
  %231 = load double, double* %arrayidx368, align 8, !tbaa !12
  %mul369 = fmul double %229, %231
  %232 = load i32, i32* %k, align 4, !tbaa !5
  %sub370 = sub nsw i32 -1, %232
  %idxprom371 = sext i32 %sub370 to i64
  %233 = load double*, double** %mdct_enc, align 8, !tbaa !1
  %arrayidx372 = getelementptr inbounds double, double* %233, i64 %idxprom371
  %234 = load double, double* %arrayidx372, align 8, !tbaa !12
  %235 = load i32, i32* %k, align 4, !tbaa !5
  %idxprom373 = sext i32 %235 to i64
  %arrayidx374 = getelementptr inbounds [8 x double], [8 x double]* @cs, i32 0, i64 %idxprom373
  %236 = load double, double* %arrayidx374, align 8, !tbaa !12
  %mul375 = fmul double %234, %236
  %add376 = fadd double %mul369, %mul375
  store double %add376, double* %bu, align 8, !tbaa !12
  %237 = load i32, i32* %k, align 4, !tbaa !5
  %idxprom377 = sext i32 %237 to i64
  %238 = load double*, double** %mdct_enc, align 8, !tbaa !1
  %arrayidx378 = getelementptr inbounds double, double* %238, i64 %idxprom377
  %239 = load double, double* %arrayidx378, align 8, !tbaa !12
  %240 = load i32, i32* %k, align 4, !tbaa !5
  %idxprom379 = sext i32 %240 to i64
  %arrayidx380 = getelementptr inbounds [8 x double], [8 x double]* @cs, i32 0, i64 %idxprom379
  %241 = load double, double* %arrayidx380, align 8, !tbaa !12
  %mul381 = fmul double %239, %241
  %242 = load i32, i32* %k, align 4, !tbaa !5
  %sub382 = sub nsw i32 -1, %242
  %idxprom383 = sext i32 %sub382 to i64
  %243 = load double*, double** %mdct_enc, align 8, !tbaa !1
  %arrayidx384 = getelementptr inbounds double, double* %243, i64 %idxprom383
  %244 = load double, double* %arrayidx384, align 8, !tbaa !12
  %245 = load i32, i32* %k, align 4, !tbaa !5
  %idxprom385 = sext i32 %245 to i64
  %arrayidx386 = getelementptr inbounds [8 x double], [8 x double]* @ca, i32 0, i64 %idxprom385
  %246 = load double, double* %arrayidx386, align 8, !tbaa !12
  %mul387 = fmul double %244, %246
  %sub388 = fsub double %mul381, %mul387
  store double %sub388, double* %bd, align 8, !tbaa !12
  %247 = load double, double* %bu, align 8, !tbaa !12
  %248 = load i32, i32* %k, align 4, !tbaa !5
  %sub389 = sub nsw i32 -1, %248
  %idxprom390 = sext i32 %sub389 to i64
  %249 = load double*, double** %mdct_enc, align 8, !tbaa !1
  %arrayidx391 = getelementptr inbounds double, double* %249, i64 %idxprom390
  store double %247, double* %arrayidx391, align 8, !tbaa !12
  %250 = load double, double* %bd, align 8, !tbaa !12
  %251 = load i32, i32* %k, align 4, !tbaa !5
  %idxprom392 = sext i32 %251 to i64
  %252 = load double*, double** %mdct_enc, align 8, !tbaa !1
  %arrayidx393 = getelementptr inbounds double, double* %252, i64 %idxprom392
  store double %250, double* %arrayidx393, align 8, !tbaa !12
  %253 = bitcast double* %bd to i8*
  call void @llvm.lifetime.end(i64 8, i8* %253) #1
  %254 = bitcast double* %bu to i8*
  call void @llvm.lifetime.end(i64 8, i8* %254) #1
  br label %for.inc.394

for.inc.394:                                      ; preds = %for.body.364
  %255 = load i32, i32* %k, align 4, !tbaa !5
  %dec395 = add nsw i32 %255, -1
  store i32 %dec395, i32* %k, align 4, !tbaa !5
  br label %for.cond.361

for.end.396:                                      ; preds = %for.cond.361
  br label %if.end.397

if.end.397:                                       ; preds = %for.end.396, %if.end.353
  store i32 0, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %if.end.397, %if.then.359
  %256 = bitcast i32* %type to i8*
  call void @llvm.lifetime.end(i64 4, i8* %256) #1
  %cleanup.dest = load i32, i32* %cleanup.dest.slot
  switch i32 %cleanup.dest, label %unreachable [
    i32 0, label %cleanup.cont
    i32 25, label %for.inc.398
  ]

cleanup.cont:                                     ; preds = %cleanup
  br label %for.inc.398

for.inc.398:                                      ; preds = %cleanup.cont, %cleanup
  %257 = load i32, i32* %band, align 4, !tbaa !5
  %inc399 = add nsw i32 %257, 1
  store i32 %inc399, i32* %band, align 4, !tbaa !5
  %258 = load double*, double** %mdct_enc, align 8, !tbaa !1
  %add.ptr400 = getelementptr inbounds double, double* %258, i64 18
  store double* %add.ptr400, double** %mdct_enc, align 8, !tbaa !1
  br label %for.cond.114

for.end.401:                                      ; preds = %for.cond.114
  %259 = bitcast double** %samp to i8*
  call void @llvm.lifetime.end(i64 8, i8* %259) #1
  %260 = bitcast %struct.gr_info** %gi to i8*
  call void @llvm.lifetime.end(i64 8, i8* %260) #1
  %261 = bitcast double** %mdct_enc to i8*
  call void @llvm.lifetime.end(i64 8, i8* %261) #1
  %262 = bitcast i32* %band to i8*
  call void @llvm.lifetime.end(i64 4, i8* %262) #1
  br label %for.inc.402

for.inc.402:                                      ; preds = %for.end.401
  %263 = load i32, i32* %gr, align 4, !tbaa !5
  %inc403 = add nsw i32 %263, 1
  store i32 %inc403, i32* %gr, align 4, !tbaa !5
  br label %for.cond.2

for.end.404:                                      ; preds = %for.cond.2
  %264 = load i16*, i16** %w1.addr, align 8, !tbaa !1
  store i16* %264, i16** %wk, align 8, !tbaa !1
  %265 = load %struct.lame_global_flags*, %struct.lame_global_flags** %gfp.addr, align 8, !tbaa !1
  %mode_gr405 = getelementptr inbounds %struct.lame_global_flags, %struct.lame_global_flags* %265, i32 0, i32 45
  %266 = load i32, i32* %mode_gr405, align 4, !tbaa !11
  %cmp406 = icmp eq i32 %266, 1
  br i1 %cmp406, label %if.then.408, label %if.end.415

if.then.408:                                      ; preds = %for.end.404
  %267 = load i32, i32* %ch, align 4, !tbaa !5
  %idxprom409 = sext i32 %267 to i64
  %arrayidx410 = getelementptr inbounds [2 x [2 x [18 x [32 x double]]]], [2 x [2 x [18 x [32 x double]]]]* @sb_sample, i32 0, i64 %idxprom409
  %arrayidx411 = getelementptr inbounds [2 x [18 x [32 x double]]], [2 x [18 x [32 x double]]]* %arrayidx410, i32 0, i64 0
  %268 = bitcast [18 x [32 x double]]* %arrayidx411 to i8*
  %269 = load i32, i32* %ch, align 4, !tbaa !5
  %idxprom412 = sext i32 %269 to i64
  %arrayidx413 = getelementptr inbounds [2 x [2 x [18 x [32 x double]]]], [2 x [2 x [18 x [32 x double]]]]* @sb_sample, i32 0, i64 %idxprom412
  %arrayidx414 = getelementptr inbounds [2 x [18 x [32 x double]]], [2 x [18 x [32 x double]]]* %arrayidx413, i32 0, i64 1
  %270 = bitcast [18 x [32 x double]]* %arrayidx414 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %268, i8* %270, i64 4608, i32 8, i1 false)
  br label %if.end.415

if.end.415:                                       ; preds = %if.then.408, %for.end.404
  br label %for.inc.416

for.inc.416:                                      ; preds = %if.end.415
  %271 = load i32, i32* %ch, align 4, !tbaa !5
  %inc417 = add nsw i32 %271, 1
  store i32 %inc417, i32* %ch, align 4, !tbaa !5
  br label %for.cond

for.end.418:                                      ; preds = %for.cond
  %272 = bitcast i16** %wk to i8*
  call void @llvm.lifetime.end(i64 8, i8* %272) #1
  %273 = bitcast i32* %ch to i8*
  call void @llvm.lifetime.end(i64 4, i8* %273) #1
  %274 = bitcast i32* %k to i8*
  call void @llvm.lifetime.end(i64 4, i8* %274) #1
  %275 = bitcast i32* %gr to i8*
  call void @llvm.lifetime.end(i64 4, i8* %275) #1
  ret void

unreachable:                                      ; preds = %cleanup
  unreachable
}

; Function Attrs: nounwind
declare void @llvm.lifetime.start(i64, i8* nocapture) #1

; Function Attrs: nounwind uwtable
define void @mdct_init48() #0 {
entry:
  %i = alloca i32, align 4
  %k = alloca i32, align 4
  %m = alloca i32, align 4
  %sq = alloca double, align 8
  %max = alloca double, align 8
  %cos_l0 = alloca double*, align 8
  %j = alloca i32, align 4
  %wp = alloca double*, align 8
  %wr = alloca double*, align 8
  %mmax = alloca [31 x double], align 16
  %w = alloca double, align 8
  %w202 = alloca double, align 8
  %a = alloca double, align 8
  %w2 = alloca double, align 8
  %0 = bitcast i32* %i to i8*
  call void @llvm.lifetime.start(i64 4, i8* %0) #1
  %1 = bitcast i32* %k to i8*
  call void @llvm.lifetime.start(i64 4, i8* %1) #1
  %2 = bitcast i32* %m to i8*
  call void @llvm.lifetime.start(i64 4, i8* %2) #1
  %3 = bitcast double* %sq to i8*
  call void @llvm.lifetime.start(i64 8, i8* %3) #1
  %4 = bitcast double* %max to i8*
  call void @llvm.lifetime.start(i64 8, i8* %4) #1
  store i32 0, i32* %k, align 4, !tbaa !5
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %5 = load i32, i32* %k, align 4, !tbaa !5
  %cmp = icmp slt i32 %5, 8
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %6 = load i32, i32* %k, align 4, !tbaa !5
  %idxprom = sext i32 %6 to i64
  %arrayidx = getelementptr inbounds [8 x double], [8 x double]* @mdct_init48.c, i32 0, i64 %idxprom
  %7 = load double, double* %arrayidx, align 8, !tbaa !12
  %8 = load i32, i32* %k, align 4, !tbaa !5
  %idxprom1 = sext i32 %8 to i64
  %arrayidx2 = getelementptr inbounds [8 x double], [8 x double]* @mdct_init48.c, i32 0, i64 %idxprom1
  %9 = load double, double* %arrayidx2, align 8, !tbaa !12
  %mul = fmul double %7, %9
  %add = fadd double 1.000000e+00, %mul
  store double %add, double* %sq, align 8, !tbaa !12
  %10 = load double, double* %sq, align 8, !tbaa !12
  %call = call double @sqrt(double %10) #1
  store double %call, double* %sq, align 8, !tbaa !12
  %11 = load i32, i32* %k, align 4, !tbaa !5
  %idxprom3 = sext i32 %11 to i64
  %arrayidx4 = getelementptr inbounds [8 x double], [8 x double]* @mdct_init48.c, i32 0, i64 %idxprom3
  %12 = load double, double* %arrayidx4, align 8, !tbaa !12
  %13 = load double, double* %sq, align 8, !tbaa !12
  %div = fdiv double %12, %13
  %14 = load i32, i32* %k, align 4, !tbaa !5
  %idxprom5 = sext i32 %14 to i64
  %arrayidx6 = getelementptr inbounds [8 x double], [8 x double]* @ca, i32 0, i64 %idxprom5
  store double %div, double* %arrayidx6, align 8, !tbaa !12
  %15 = load double, double* %sq, align 8, !tbaa !12
  %div7 = fdiv double 1.000000e+00, %15
  %16 = load i32, i32* %k, align 4, !tbaa !5
  %idxprom8 = sext i32 %16 to i64
  %arrayidx9 = getelementptr inbounds [8 x double], [8 x double]* @cs, i32 0, i64 %idxprom8
  store double %div7, double* %arrayidx9, align 8, !tbaa !12
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %17 = load i32, i32* %k, align 4, !tbaa !5
  %inc = add nsw i32 %17, 1
  store i32 %inc, i32* %k, align 4, !tbaa !5
  br label %for.cond

for.end:                                          ; preds = %for.cond
  store i32 0, i32* %i, align 4, !tbaa !5
  br label %for.cond.10

for.cond.10:                                      ; preds = %for.inc.18, %for.end
  %18 = load i32, i32* %i, align 4, !tbaa !5
  %cmp11 = icmp slt i32 %18, 36
  br i1 %cmp11, label %for.body.12, label %for.end.20

for.body.12:                                      ; preds = %for.cond.10
  %19 = load i32, i32* %i, align 4, !tbaa !5
  %conv = sitofp i32 %19 to double
  %add13 = fadd double %conv, 5.000000e-01
  %mul14 = fmul double 0x3FB657184AE74487, %add13
  %call15 = call double @sin(double %mul14) #1
  %20 = load i32, i32* %i, align 4, !tbaa !5
  %idxprom16 = sext i32 %20 to i64
  %arrayidx17 = getelementptr inbounds [36 x double], [36 x double]* getelementptr inbounds ([4 x [36 x double]], [4 x [36 x double]]* @win, i32 0, i64 0), i32 0, i64 %idxprom16
  store double %call15, double* %arrayidx17, align 8, !tbaa !12
  br label %for.inc.18

for.inc.18:                                       ; preds = %for.body.12
  %21 = load i32, i32* %i, align 4, !tbaa !5
  %inc19 = add nsw i32 %21, 1
  store i32 %inc19, i32* %i, align 4, !tbaa !5
  br label %for.cond.10

for.end.20:                                       ; preds = %for.cond.10
  store i32 0, i32* %i, align 4, !tbaa !5
  br label %for.cond.21

for.cond.21:                                      ; preds = %for.inc.29, %for.end.20
  %22 = load i32, i32* %i, align 4, !tbaa !5
  %cmp22 = icmp slt i32 %22, 18
  br i1 %cmp22, label %for.body.24, label %for.end.31

for.body.24:                                      ; preds = %for.cond.21
  %23 = load i32, i32* %i, align 4, !tbaa !5
  %idxprom25 = sext i32 %23 to i64
  %arrayidx26 = getelementptr inbounds [36 x double], [36 x double]* getelementptr inbounds ([4 x [36 x double]], [4 x [36 x double]]* @win, i32 0, i64 0), i32 0, i64 %idxprom25
  %24 = load double, double* %arrayidx26, align 8, !tbaa !12
  %25 = load i32, i32* %i, align 4, !tbaa !5
  %idxprom27 = sext i32 %25 to i64
  %arrayidx28 = getelementptr inbounds [36 x double], [36 x double]* getelementptr inbounds ([4 x [36 x double]], [4 x [36 x double]]* @win, i32 0, i64 1), i32 0, i64 %idxprom27
  store double %24, double* %arrayidx28, align 8, !tbaa !12
  br label %for.inc.29

for.inc.29:                                       ; preds = %for.body.24
  %26 = load i32, i32* %i, align 4, !tbaa !5
  %inc30 = add nsw i32 %26, 1
  store i32 %inc30, i32* %i, align 4, !tbaa !5
  br label %for.cond.21

for.end.31:                                       ; preds = %for.cond.21
  br label %for.cond.32

for.cond.32:                                      ; preds = %for.inc.38, %for.end.31
  %27 = load i32, i32* %i, align 4, !tbaa !5
  %cmp33 = icmp slt i32 %27, 24
  br i1 %cmp33, label %for.body.35, label %for.end.40

for.body.35:                                      ; preds = %for.cond.32
  %28 = load i32, i32* %i, align 4, !tbaa !5
  %idxprom36 = sext i32 %28 to i64
  %arrayidx37 = getelementptr inbounds [36 x double], [36 x double]* getelementptr inbounds ([4 x [36 x double]], [4 x [36 x double]]* @win, i32 0, i64 1), i32 0, i64 %idxprom36
  store double 1.000000e+00, double* %arrayidx37, align 8, !tbaa !12
  br label %for.inc.38

for.inc.38:                                       ; preds = %for.body.35
  %29 = load i32, i32* %i, align 4, !tbaa !5
  %inc39 = add nsw i32 %29, 1
  store i32 %inc39, i32* %i, align 4, !tbaa !5
  br label %for.cond.32

for.end.40:                                       ; preds = %for.cond.32
  br label %for.cond.41

for.cond.41:                                      ; preds = %for.inc.51, %for.end.40
  %30 = load i32, i32* %i, align 4, !tbaa !5
  %cmp42 = icmp slt i32 %30, 30
  br i1 %cmp42, label %for.body.44, label %for.end.53

for.body.44:                                      ; preds = %for.cond.41
  %31 = load i32, i32* %i, align 4, !tbaa !5
  %conv45 = sitofp i32 %31 to double
  %add46 = fadd double %conv45, 5.000000e-01
  %mul47 = fmul double 0x3FD0C152382D7365, %add46
  %call48 = call double @cos(double %mul47) #1
  %32 = load i32, i32* %i, align 4, !tbaa !5
  %idxprom49 = sext i32 %32 to i64
  %arrayidx50 = getelementptr inbounds [36 x double], [36 x double]* getelementptr inbounds ([4 x [36 x double]], [4 x [36 x double]]* @win, i32 0, i64 1), i32 0, i64 %idxprom49
  store double %call48, double* %arrayidx50, align 8, !tbaa !12
  br label %for.inc.51

for.inc.51:                                       ; preds = %for.body.44
  %33 = load i32, i32* %i, align 4, !tbaa !5
  %inc52 = add nsw i32 %33, 1
  store i32 %inc52, i32* %i, align 4, !tbaa !5
  br label %for.cond.41

for.end.53:                                       ; preds = %for.cond.41
  br label %for.cond.54

for.cond.54:                                      ; preds = %for.inc.60, %for.end.53
  %34 = load i32, i32* %i, align 4, !tbaa !5
  %cmp55 = icmp slt i32 %34, 36
  br i1 %cmp55, label %for.body.57, label %for.end.62

for.body.57:                                      ; preds = %for.cond.54
  %35 = load i32, i32* %i, align 4, !tbaa !5
  %idxprom58 = sext i32 %35 to i64
  %arrayidx59 = getelementptr inbounds [36 x double], [36 x double]* getelementptr inbounds ([4 x [36 x double]], [4 x [36 x double]]* @win, i32 0, i64 1), i32 0, i64 %idxprom58
  store double 0.000000e+00, double* %arrayidx59, align 8, !tbaa !12
  br label %for.inc.60

for.inc.60:                                       ; preds = %for.body.57
  %36 = load i32, i32* %i, align 4, !tbaa !5
  %inc61 = add nsw i32 %36, 1
  store i32 %inc61, i32* %i, align 4, !tbaa !5
  br label %for.cond.54

for.end.62:                                       ; preds = %for.cond.54
  store i32 0, i32* %i, align 4, !tbaa !5
  br label %for.cond.63

for.cond.63:                                      ; preds = %for.inc.71, %for.end.62
  %37 = load i32, i32* %i, align 4, !tbaa !5
  %cmp64 = icmp slt i32 %37, 36
  br i1 %cmp64, label %for.body.66, label %for.end.73

for.body.66:                                      ; preds = %for.cond.63
  %38 = load i32, i32* %i, align 4, !tbaa !5
  %sub = sub nsw i32 35, %38
  %idxprom67 = sext i32 %sub to i64
  %arrayidx68 = getelementptr inbounds [36 x double], [36 x double]* getelementptr inbounds ([4 x [36 x double]], [4 x [36 x double]]* @win, i32 0, i64 1), i32 0, i64 %idxprom67
  %39 = load double, double* %arrayidx68, align 8, !tbaa !12
  %40 = load i32, i32* %i, align 4, !tbaa !5
  %idxprom69 = sext i32 %40 to i64
  %arrayidx70 = getelementptr inbounds [36 x double], [36 x double]* getelementptr inbounds ([4 x [36 x double]], [4 x [36 x double]]* @win, i32 0, i64 3), i32 0, i64 %idxprom69
  store double %39, double* %arrayidx70, align 8, !tbaa !12
  br label %for.inc.71

for.inc.71:                                       ; preds = %for.body.66
  %41 = load i32, i32* %i, align 4, !tbaa !5
  %inc72 = add nsw i32 %41, 1
  store i32 %inc72, i32* %i, align 4, !tbaa !5
  br label %for.cond.63

for.end.73:                                       ; preds = %for.cond.63
  store double 0x3FBC71C71C71C71C, double* %sq, align 8, !tbaa !12
  %42 = bitcast double** %cos_l0 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %42) #1
  store double* getelementptr inbounds ([244 x double], [244 x double]* @cos_l, i32 0, i32 0), double** %cos_l0, align 8, !tbaa !1
  %43 = bitcast i32* %j to i8*
  call void @llvm.lifetime.start(i64 4, i8* %43) #1
  store i32 11, i32* %j, align 4, !tbaa !5
  br label %do.body

do.body:                                          ; preds = %do.cond, %for.end.73
  %44 = load i32, i32* %j, align 4, !tbaa !5
  %idxprom74 = sext i32 %44 to i64
  %arrayidx75 = getelementptr inbounds [12 x i32], [12 x i32]* @all, i32 0, i64 %idxprom74
  %45 = load i32, i32* %arrayidx75, align 4, !tbaa !5
  store i32 %45, i32* %m, align 4, !tbaa !5
  store i32 0, i32* %k, align 4, !tbaa !5
  br label %for.cond.76

for.cond.76:                                      ; preds = %for.inc.91, %do.body
  %46 = load i32, i32* %k, align 4, !tbaa !5
  %cmp77 = icmp slt i32 %46, 9
  br i1 %cmp77, label %for.body.79, label %for.end.93

for.body.79:                                      ; preds = %for.cond.76
  %47 = load double, double* %sq, align 8, !tbaa !12
  %48 = load i32, i32* %m, align 4, !tbaa !5
  %mul80 = mul nsw i32 2, %48
  %add81 = add nsw i32 %mul80, 1
  %conv82 = sitofp i32 %add81 to double
  %mul83 = fmul double 0x3F9657184AE74487, %conv82
  %49 = load i32, i32* %k, align 4, !tbaa !5
  %mul84 = mul nsw i32 4, %49
  %add85 = add nsw i32 %mul84, 2
  %add86 = add nsw i32 %add85, 36
  %conv87 = sitofp i32 %add86 to double
  %mul88 = fmul double %mul83, %conv87
  %call89 = call double @cos(double %mul88) #1
  %mul90 = fmul double %47, %call89
  %50 = load double*, double** %cos_l0, align 8, !tbaa !1
  %incdec.ptr = getelementptr inbounds double, double* %50, i32 1
  store double* %incdec.ptr, double** %cos_l0, align 8, !tbaa !1
  store double %mul90, double* %50, align 8, !tbaa !12
  br label %for.inc.91

for.inc.91:                                       ; preds = %for.body.79
  %51 = load i32, i32* %k, align 4, !tbaa !5
  %inc92 = add nsw i32 %51, 1
  store i32 %inc92, i32* %k, align 4, !tbaa !5
  br label %for.cond.76

for.end.93:                                       ; preds = %for.cond.76
  store i32 0, i32* %k, align 4, !tbaa !5
  br label %for.cond.94

for.cond.94:                                      ; preds = %for.inc.110, %for.end.93
  %52 = load i32, i32* %k, align 4, !tbaa !5
  %cmp95 = icmp slt i32 %52, 9
  br i1 %cmp95, label %for.body.97, label %for.end.112

for.body.97:                                      ; preds = %for.cond.94
  %53 = load double, double* %sq, align 8, !tbaa !12
  %54 = load i32, i32* %m, align 4, !tbaa !5
  %mul98 = mul nsw i32 2, %54
  %add99 = add nsw i32 %mul98, 1
  %conv100 = sitofp i32 %add99 to double
  %mul101 = fmul double 0x3F9657184AE74487, %conv100
  %55 = load i32, i32* %k, align 4, !tbaa !5
  %mul102 = mul nsw i32 4, %55
  %add103 = add nsw i32 %mul102, 2
  %add104 = add nsw i32 %add103, 108
  %conv105 = sitofp i32 %add104 to double
  %mul106 = fmul double %mul101, %conv105
  %call107 = call double @cos(double %mul106) #1
  %mul108 = fmul double %53, %call107
  %56 = load double*, double** %cos_l0, align 8, !tbaa !1
  %incdec.ptr109 = getelementptr inbounds double, double* %56, i32 1
  store double* %incdec.ptr109, double** %cos_l0, align 8, !tbaa !1
  store double %mul108, double* %56, align 8, !tbaa !12
  br label %for.inc.110

for.inc.110:                                      ; preds = %for.body.97
  %57 = load i32, i32* %k, align 4, !tbaa !5
  %inc111 = add nsw i32 %57, 1
  store i32 %inc111, i32* %k, align 4, !tbaa !5
  br label %for.cond.94

for.end.112:                                      ; preds = %for.cond.94
  br label %do.cond

do.cond:                                          ; preds = %for.end.112
  %58 = load i32, i32* %j, align 4, !tbaa !5
  %dec = add nsw i32 %58, -1
  store i32 %dec, i32* %j, align 4, !tbaa !5
  %cmp113 = icmp sge i32 %dec, 0
  br i1 %cmp113, label %do.body, label %do.end

do.end:                                           ; preds = %do.cond
  store i32 3, i32* %j, align 4, !tbaa !5
  br label %do.body.115

do.body.115:                                      ; preds = %do.cond.156, %do.end
  %59 = load i32, i32* %j, align 4, !tbaa !5
  %idxprom116 = sext i32 %59 to i64
  %arrayidx117 = getelementptr inbounds [4 x i32], [4 x i32]* @mdct_init48.d3, i32 0, i64 %idxprom116
  %60 = load i32, i32* %arrayidx117, align 4, !tbaa !5
  store i32 %60, i32* %m, align 4, !tbaa !5
  store i32 0, i32* %k, align 4, !tbaa !5
  br label %for.cond.118

for.cond.118:                                     ; preds = %for.inc.134, %do.body.115
  %61 = load i32, i32* %k, align 4, !tbaa !5
  %cmp119 = icmp slt i32 %61, 3
  br i1 %cmp119, label %for.body.121, label %for.end.136

for.body.121:                                     ; preds = %for.cond.118
  %62 = load double, double* %sq, align 8, !tbaa !12
  %63 = load i32, i32* %m, align 4, !tbaa !5
  %mul122 = mul nsw i32 2, %63
  %add123 = add nsw i32 %mul122, 1
  %conv124 = sitofp i32 %add123 to double
  %mul125 = fmul double 0x3F9657184AE74487, %conv124
  %64 = load i32, i32* %k, align 4, !tbaa !5
  %mul126 = mul nsw i32 4, %64
  %add127 = add nsw i32 %mul126, 2
  %add128 = add nsw i32 %add127, 36
  %conv129 = sitofp i32 %add128 to double
  %mul130 = fmul double %mul125, %conv129
  %call131 = call double @cos(double %mul130) #1
  %mul132 = fmul double %62, %call131
  %65 = load double*, double** %cos_l0, align 8, !tbaa !1
  %incdec.ptr133 = getelementptr inbounds double, double* %65, i32 1
  store double* %incdec.ptr133, double** %cos_l0, align 8, !tbaa !1
  store double %mul132, double* %65, align 8, !tbaa !12
  br label %for.inc.134

for.inc.134:                                      ; preds = %for.body.121
  %66 = load i32, i32* %k, align 4, !tbaa !5
  %inc135 = add nsw i32 %66, 1
  store i32 %inc135, i32* %k, align 4, !tbaa !5
  br label %for.cond.118

for.end.136:                                      ; preds = %for.cond.118
  store i32 6, i32* %k, align 4, !tbaa !5
  br label %for.cond.137

for.cond.137:                                     ; preds = %for.inc.153, %for.end.136
  %67 = load i32, i32* %k, align 4, !tbaa !5
  %cmp138 = icmp slt i32 %67, 9
  br i1 %cmp138, label %for.body.140, label %for.end.155

for.body.140:                                     ; preds = %for.cond.137
  %68 = load double, double* %sq, align 8, !tbaa !12
  %69 = load i32, i32* %m, align 4, !tbaa !5
  %mul141 = mul nsw i32 2, %69
  %add142 = add nsw i32 %mul141, 1
  %conv143 = sitofp i32 %add142 to double
  %mul144 = fmul double 0x3F9657184AE74487, %conv143
  %70 = load i32, i32* %k, align 4, !tbaa !5
  %mul145 = mul nsw i32 4, %70
  %add146 = add nsw i32 %mul145, 2
  %add147 = add nsw i32 %add146, 36
  %conv148 = sitofp i32 %add147 to double
  %mul149 = fmul double %mul144, %conv148
  %call150 = call double @cos(double %mul149) #1
  %mul151 = fmul double %68, %call150
  %71 = load double*, double** %cos_l0, align 8, !tbaa !1
  %incdec.ptr152 = getelementptr inbounds double, double* %71, i32 1
  store double* %incdec.ptr152, double** %cos_l0, align 8, !tbaa !1
  store double %mul151, double* %71, align 8, !tbaa !12
  br label %for.inc.153

for.inc.153:                                      ; preds = %for.body.140
  %72 = load i32, i32* %k, align 4, !tbaa !5
  %inc154 = add nsw i32 %72, 1
  store i32 %inc154, i32* %k, align 4, !tbaa !5
  br label %for.cond.137

for.end.155:                                      ; preds = %for.cond.137
  br label %do.cond.156

do.cond.156:                                      ; preds = %for.end.155
  %73 = load i32, i32* %j, align 4, !tbaa !5
  %dec157 = add nsw i32 %73, -1
  store i32 %dec157, i32* %j, align 4, !tbaa !5
  %cmp158 = icmp sge i32 %dec157, 0
  br i1 %cmp158, label %do.body.115, label %do.end.160

do.end.160:                                       ; preds = %do.cond.156
  store i32 1, i32* %j, align 4, !tbaa !5
  br label %do.body.161

do.body.161:                                      ; preds = %do.cond.180, %do.end.160
  %74 = load i32, i32* %j, align 4, !tbaa !5
  %idxprom162 = sext i32 %74 to i64
  %arrayidx163 = getelementptr inbounds [2 x i32], [2 x i32]* @mdct_init48.d9, i32 0, i64 %idxprom162
  %75 = load i32, i32* %arrayidx163, align 4, !tbaa !5
  store i32 %75, i32* %m, align 4, !tbaa !5
  %76 = load double, double* %sq, align 8, !tbaa !12
  %77 = load i32, i32* %m, align 4, !tbaa !5
  %mul164 = mul nsw i32 2, %77
  %add165 = add nsw i32 %mul164, 1
  %conv166 = sitofp i32 %add165 to double
  %mul167 = fmul double 0x3F9657184AE74487, %conv166
  %mul168 = fmul double %mul167, 3.800000e+01
  %call169 = call double @cos(double %mul168) #1
  %mul170 = fmul double %76, %call169
  %78 = load double*, double** %cos_l0, align 8, !tbaa !1
  %incdec.ptr171 = getelementptr inbounds double, double* %78, i32 1
  store double* %incdec.ptr171, double** %cos_l0, align 8, !tbaa !1
  store double %mul170, double* %78, align 8, !tbaa !12
  %79 = load double, double* %sq, align 8, !tbaa !12
  %80 = load i32, i32* %m, align 4, !tbaa !5
  %mul172 = mul nsw i32 2, %80
  %add173 = add nsw i32 %mul172, 1
  %conv174 = sitofp i32 %add173 to double
  %mul175 = fmul double 0x3F9657184AE74487, %conv174
  %mul176 = fmul double %mul175, 4.600000e+01
  %call177 = call double @cos(double %mul176) #1
  %mul178 = fmul double %79, %call177
  %81 = load double*, double** %cos_l0, align 8, !tbaa !1
  %incdec.ptr179 = getelementptr inbounds double, double* %81, i32 1
  store double* %incdec.ptr179, double** %cos_l0, align 8, !tbaa !1
  store double %mul178, double* %81, align 8, !tbaa !12
  br label %do.cond.180

do.cond.180:                                      ; preds = %do.body.161
  %82 = load i32, i32* %j, align 4, !tbaa !5
  %dec181 = add nsw i32 %82, -1
  store i32 %dec181, i32* %j, align 4, !tbaa !5
  %cmp182 = icmp sge i32 %dec181, 0
  br i1 %cmp182, label %do.body.161, label %do.end.184

do.end.184:                                       ; preds = %do.cond.180
  %83 = bitcast i32* %j to i8*
  call void @llvm.lifetime.end(i64 4, i8* %83) #1
  %84 = bitcast double** %cos_l0 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %84) #1
  %85 = load double, double* getelementptr inbounds ([256 x double], [256 x double]* @enwindow, i32 0, i64 248), align 8, !tbaa !12
  store double %85, double* %max, align 8, !tbaa !12
  %86 = bitcast double** %wp to i8*
  call void @llvm.lifetime.start(i64 8, i8* %86) #1
  store double* getelementptr inbounds ([256 x double], [256 x double]* @enwindow, i32 0, i32 0), double** %wp, align 8, !tbaa !1
  %87 = bitcast double** %wr to i8*
  call void @llvm.lifetime.start(i64 8, i8* %87) #1
  store double* getelementptr inbounds ([256 x double], [256 x double]* @enwindow, i32 0, i32 0), double** %wr, align 8, !tbaa !1
  %88 = bitcast [31 x double]* %mmax to i8*
  call void @llvm.lifetime.start(i64 248, i8* %88) #1
  %89 = bitcast double* %w to i8*
  call void @llvm.lifetime.start(i64 8, i8* %89) #1
  %90 = load double*, double** %wp, align 8, !tbaa !1
  %incdec.ptr185 = getelementptr inbounds double, double* %90, i32 1
  store double* %incdec.ptr185, double** %wp, align 8, !tbaa !1
  %91 = load double, double* %90, align 8, !tbaa !12
  store double %91, double* %w, align 8, !tbaa !12
  %92 = load double, double* %w, align 8, !tbaa !12
  %93 = load double, double* %max, align 8, !tbaa !12
  %div186 = fdiv double %92, %93
  %arrayidx187 = getelementptr inbounds [31 x double], [31 x double]* %mmax, i32 0, i64 15
  store double %div186, double* %arrayidx187, align 8, !tbaa !12
  store i32 0, i32* %k, align 4, !tbaa !5
  br label %for.cond.188

for.cond.188:                                     ; preds = %for.inc.195, %do.end.184
  %94 = load i32, i32* %k, align 4, !tbaa !5
  %cmp189 = icmp slt i32 %94, 7
  br i1 %cmp189, label %for.body.191, label %for.end.197

for.body.191:                                     ; preds = %for.cond.188
  %95 = load double*, double** %wp, align 8, !tbaa !1
  %incdec.ptr192 = getelementptr inbounds double, double* %95, i32 1
  store double* %incdec.ptr192, double** %wp, align 8, !tbaa !1
  %96 = load double, double* %95, align 8, !tbaa !12
  %97 = load double, double* %w, align 8, !tbaa !12
  %div193 = fdiv double %96, %97
  %98 = load double*, double** %wr, align 8, !tbaa !1
  %incdec.ptr194 = getelementptr inbounds double, double* %98, i32 1
  store double* %incdec.ptr194, double** %wr, align 8, !tbaa !1
  store double %div193, double* %98, align 8, !tbaa !12
  br label %for.inc.195

for.inc.195:                                      ; preds = %for.body.191
  %99 = load i32, i32* %k, align 4, !tbaa !5
  %inc196 = add nsw i32 %99, 1
  store i32 %inc196, i32* %k, align 4, !tbaa !5
  br label %for.cond.188

for.end.197:                                      ; preds = %for.cond.188
  %100 = bitcast double* %w to i8*
  call void @llvm.lifetime.end(i64 8, i8* %100) #1
  store i32 14, i32* %i, align 4, !tbaa !5
  br label %for.cond.198

for.cond.198:                                     ; preds = %for.inc.220, %for.end.197
  %101 = load i32, i32* %i, align 4, !tbaa !5
  %cmp199 = icmp sge i32 %101, 0
  br i1 %cmp199, label %for.body.201, label %for.end.222

for.body.201:                                     ; preds = %for.cond.198
  %102 = bitcast double* %w202 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %102) #1
  %103 = load double*, double** %wp, align 8, !tbaa !1
  %incdec.ptr203 = getelementptr inbounds double, double* %103, i32 1
  store double* %incdec.ptr203, double** %wp, align 8, !tbaa !1
  %104 = load double, double* %103, align 8, !tbaa !12
  store double %104, double* %w202, align 8, !tbaa !12
  %105 = load double, double* %w202, align 8, !tbaa !12
  %106 = load double, double* %max, align 8, !tbaa !12
  %div204 = fdiv double %105, %106
  %107 = load i32, i32* %i, align 4, !tbaa !5
  %sub205 = sub nsw i32 30, %107
  %idxprom206 = sext i32 %sub205 to i64
  %arrayidx207 = getelementptr inbounds [31 x double], [31 x double]* %mmax, i32 0, i64 %idxprom206
  store double %div204, double* %arrayidx207, align 8, !tbaa !12
  %108 = load i32, i32* %i, align 4, !tbaa !5
  %idxprom208 = sext i32 %108 to i64
  %arrayidx209 = getelementptr inbounds [31 x double], [31 x double]* %mmax, i32 0, i64 %idxprom208
  store double %div204, double* %arrayidx209, align 8, !tbaa !12
  store i32 0, i32* %k, align 4, !tbaa !5
  br label %for.cond.210

for.cond.210:                                     ; preds = %for.inc.217, %for.body.201
  %109 = load i32, i32* %k, align 4, !tbaa !5
  %cmp211 = icmp slt i32 %109, 15
  br i1 %cmp211, label %for.body.213, label %for.end.219

for.body.213:                                     ; preds = %for.cond.210
  %110 = load double*, double** %wp, align 8, !tbaa !1
  %incdec.ptr214 = getelementptr inbounds double, double* %110, i32 1
  store double* %incdec.ptr214, double** %wp, align 8, !tbaa !1
  %111 = load double, double* %110, align 8, !tbaa !12
  %112 = load double, double* %w202, align 8, !tbaa !12
  %div215 = fdiv double %111, %112
  %113 = load double*, double** %wr, align 8, !tbaa !1
  %incdec.ptr216 = getelementptr inbounds double, double* %113, i32 1
  store double* %incdec.ptr216, double** %wr, align 8, !tbaa !1
  store double %div215, double* %113, align 8, !tbaa !12
  br label %for.inc.217

for.inc.217:                                      ; preds = %for.body.213
  %114 = load i32, i32* %k, align 4, !tbaa !5
  %inc218 = add nsw i32 %114, 1
  store i32 %inc218, i32* %k, align 4, !tbaa !5
  br label %for.cond.210

for.end.219:                                      ; preds = %for.cond.210
  %115 = bitcast double* %w202 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %115) #1
  br label %for.inc.220

for.inc.220:                                      ; preds = %for.end.219
  %116 = load i32, i32* %i, align 4, !tbaa !5
  %dec221 = add nsw i32 %116, -1
  store i32 %dec221, i32* %i, align 4, !tbaa !5
  br label %for.cond.198

for.end.222:                                      ; preds = %for.cond.198
  %117 = load double*, double** %wp, align 8, !tbaa !1
  %incdec.ptr223 = getelementptr inbounds double, double* %117, i32 1
  store double* %incdec.ptr223, double** %wp, align 8, !tbaa !1
  store i32 0, i32* %k, align 4, !tbaa !5
  br label %for.cond.224

for.cond.224:                                     ; preds = %for.inc.231, %for.end.222
  %118 = load i32, i32* %k, align 4, !tbaa !5
  %cmp225 = icmp slt i32 %118, 7
  br i1 %cmp225, label %for.body.227, label %for.end.233

for.body.227:                                     ; preds = %for.cond.224
  %119 = load double*, double** %wp, align 8, !tbaa !1
  %incdec.ptr228 = getelementptr inbounds double, double* %119, i32 1
  store double* %incdec.ptr228, double** %wp, align 8, !tbaa !1
  %120 = load double, double* %119, align 8, !tbaa !12
  %121 = load double, double* %max, align 8, !tbaa !12
  %div229 = fdiv double %120, %121
  %122 = load double*, double** %wr, align 8, !tbaa !1
  %incdec.ptr230 = getelementptr inbounds double, double* %122, i32 1
  store double* %incdec.ptr230, double** %wr, align 8, !tbaa !1
  store double %div229, double* %122, align 8, !tbaa !12
  br label %for.inc.231

for.inc.231:                                      ; preds = %for.body.227
  %123 = load i32, i32* %k, align 4, !tbaa !5
  %inc232 = add nsw i32 %123, 1
  store i32 %inc232, i32* %k, align 4, !tbaa !5
  br label %for.cond.224

for.end.233:                                      ; preds = %for.cond.224
  store double* getelementptr inbounds ([16 x [31 x double]], [16 x [31 x double]]* @mm, i32 0, i64 0, i64 0), double** %wp, align 8, !tbaa !1
  store i32 15, i32* %i, align 4, !tbaa !5
  br label %for.cond.234

for.cond.234:                                     ; preds = %for.inc.257, %for.end.233
  %124 = load i32, i32* %i, align 4, !tbaa !5
  %cmp235 = icmp sge i32 %124, 0
  br i1 %cmp235, label %for.body.237, label %for.end.259

for.body.237:                                     ; preds = %for.cond.234
  store i32 1, i32* %k, align 4, !tbaa !5
  br label %for.cond.238

for.cond.238:                                     ; preds = %for.inc.254, %for.body.237
  %125 = load i32, i32* %k, align 4, !tbaa !5
  %cmp239 = icmp slt i32 %125, 32
  br i1 %cmp239, label %for.body.241, label %for.end.256

for.body.241:                                     ; preds = %for.cond.238
  %126 = load i32, i32* %i, align 4, !tbaa !5
  %mul242 = mul nsw i32 2, %126
  %add243 = add nsw i32 %mul242, 1
  %127 = load i32, i32* %k, align 4, !tbaa !5
  %mul244 = mul nsw i32 %add243, %127
  %conv245 = sitofp i32 %mul244 to double
  %mul246 = fmul double %conv245, 0x400921FB54442D18
  %div247 = fdiv double %mul246, 6.400000e+01
  %call248 = call double @cos(double %div247) #1
  %128 = load i32, i32* %k, align 4, !tbaa !5
  %sub249 = sub nsw i32 %128, 1
  %idxprom250 = sext i32 %sub249 to i64
  %arrayidx251 = getelementptr inbounds [31 x double], [31 x double]* %mmax, i32 0, i64 %idxprom250
  %129 = load double, double* %arrayidx251, align 8, !tbaa !12
  %mul252 = fmul double %call248, %129
  %130 = load double*, double** %wp, align 8, !tbaa !1
  %incdec.ptr253 = getelementptr inbounds double, double* %130, i32 1
  store double* %incdec.ptr253, double** %wp, align 8, !tbaa !1
  store double %mul252, double* %130, align 8, !tbaa !12
  br label %for.inc.254

for.inc.254:                                      ; preds = %for.body.241
  %131 = load i32, i32* %k, align 4, !tbaa !5
  %inc255 = add nsw i32 %131, 1
  store i32 %inc255, i32* %k, align 4, !tbaa !5
  br label %for.cond.238

for.end.256:                                      ; preds = %for.cond.238
  br label %for.inc.257

for.inc.257:                                      ; preds = %for.end.256
  %132 = load i32, i32* %i, align 4, !tbaa !5
  %dec258 = add nsw i32 %132, -1
  store i32 %dec258, i32* %i, align 4, !tbaa !5
  br label %for.cond.234

for.end.259:                                      ; preds = %for.cond.234
  %133 = bitcast [31 x double]* %mmax to i8*
  call void @llvm.lifetime.end(i64 248, i8* %133) #1
  %134 = bitcast double** %wr to i8*
  call void @llvm.lifetime.end(i64 8, i8* %134) #1
  %135 = bitcast double** %wp to i8*
  call void @llvm.lifetime.end(i64 8, i8* %135) #1
  store i32 0, i32* %k, align 4, !tbaa !5
  br label %for.cond.260

for.cond.260:                                     ; preds = %for.inc.336, %for.end.259
  %136 = load i32, i32* %k, align 4, !tbaa !5
  %cmp261 = icmp slt i32 %136, 4
  br i1 %cmp261, label %for.body.263, label %for.end.338

for.body.263:                                     ; preds = %for.cond.260
  %137 = bitcast double* %a to i8*
  call void @llvm.lifetime.start(i64 8, i8* %137) #1
  %138 = load i32, i32* %k, align 4, !tbaa !5
  %sub264 = sub nsw i32 17, %138
  %idxprom265 = sext i32 %sub264 to i64
  %arrayidx266 = getelementptr inbounds [36 x double], [36 x double]* getelementptr inbounds ([4 x [36 x double]], [4 x [36 x double]]* @win, i32 0, i64 0), i32 0, i64 %idxprom265
  %139 = load double, double* %arrayidx266, align 8, !tbaa !12
  store double %139, double* %a, align 8, !tbaa !12
  %140 = load i32, i32* %k, align 4, !tbaa !5
  %add267 = add nsw i32 9, %140
  %idxprom268 = sext i32 %add267 to i64
  %arrayidx269 = getelementptr inbounds [36 x double], [36 x double]* getelementptr inbounds ([4 x [36 x double]], [4 x [36 x double]]* @win, i32 0, i64 0), i32 0, i64 %idxprom268
  %141 = load double, double* %arrayidx269, align 8, !tbaa !12
  %142 = load i32, i32* %k, align 4, !tbaa !5
  %sub270 = sub nsw i32 17, %142
  %idxprom271 = sext i32 %sub270 to i64
  %arrayidx272 = getelementptr inbounds [36 x double], [36 x double]* getelementptr inbounds ([4 x [36 x double]], [4 x [36 x double]]* @win, i32 0, i64 0), i32 0, i64 %idxprom271
  store double %141, double* %arrayidx272, align 8, !tbaa !12
  %143 = load double, double* %a, align 8, !tbaa !12
  %144 = load i32, i32* %k, align 4, !tbaa !5
  %add273 = add nsw i32 9, %144
  %idxprom274 = sext i32 %add273 to i64
  %arrayidx275 = getelementptr inbounds [36 x double], [36 x double]* getelementptr inbounds ([4 x [36 x double]], [4 x [36 x double]]* @win, i32 0, i64 0), i32 0, i64 %idxprom274
  store double %143, double* %arrayidx275, align 8, !tbaa !12
  %145 = load i32, i32* %k, align 4, !tbaa !5
  %sub276 = sub nsw i32 35, %145
  %idxprom277 = sext i32 %sub276 to i64
  %arrayidx278 = getelementptr inbounds [36 x double], [36 x double]* getelementptr inbounds ([4 x [36 x double]], [4 x [36 x double]]* @win, i32 0, i64 0), i32 0, i64 %idxprom277
  %146 = load double, double* %arrayidx278, align 8, !tbaa !12
  store double %146, double* %a, align 8, !tbaa !12
  %147 = load i32, i32* %k, align 4, !tbaa !5
  %add279 = add nsw i32 27, %147
  %idxprom280 = sext i32 %add279 to i64
  %arrayidx281 = getelementptr inbounds [36 x double], [36 x double]* getelementptr inbounds ([4 x [36 x double]], [4 x [36 x double]]* @win, i32 0, i64 0), i32 0, i64 %idxprom280
  %148 = load double, double* %arrayidx281, align 8, !tbaa !12
  %149 = load i32, i32* %k, align 4, !tbaa !5
  %sub282 = sub nsw i32 35, %149
  %idxprom283 = sext i32 %sub282 to i64
  %arrayidx284 = getelementptr inbounds [36 x double], [36 x double]* getelementptr inbounds ([4 x [36 x double]], [4 x [36 x double]]* @win, i32 0, i64 0), i32 0, i64 %idxprom283
  store double %148, double* %arrayidx284, align 8, !tbaa !12
  %150 = load double, double* %a, align 8, !tbaa !12
  %151 = load i32, i32* %k, align 4, !tbaa !5
  %add285 = add nsw i32 27, %151
  %idxprom286 = sext i32 %add285 to i64
  %arrayidx287 = getelementptr inbounds [36 x double], [36 x double]* getelementptr inbounds ([4 x [36 x double]], [4 x [36 x double]]* @win, i32 0, i64 0), i32 0, i64 %idxprom286
  store double %150, double* %arrayidx287, align 8, !tbaa !12
  %152 = load i32, i32* %k, align 4, !tbaa !5
  %sub288 = sub nsw i32 17, %152
  %idxprom289 = sext i32 %sub288 to i64
  %arrayidx290 = getelementptr inbounds [36 x double], [36 x double]* getelementptr inbounds ([4 x [36 x double]], [4 x [36 x double]]* @win, i32 0, i64 1), i32 0, i64 %idxprom289
  %153 = load double, double* %arrayidx290, align 8, !tbaa !12
  store double %153, double* %a, align 8, !tbaa !12
  %154 = load i32, i32* %k, align 4, !tbaa !5
  %add291 = add nsw i32 9, %154
  %idxprom292 = sext i32 %add291 to i64
  %arrayidx293 = getelementptr inbounds [36 x double], [36 x double]* getelementptr inbounds ([4 x [36 x double]], [4 x [36 x double]]* @win, i32 0, i64 1), i32 0, i64 %idxprom292
  %155 = load double, double* %arrayidx293, align 8, !tbaa !12
  %156 = load i32, i32* %k, align 4, !tbaa !5
  %sub294 = sub nsw i32 17, %156
  %idxprom295 = sext i32 %sub294 to i64
  %arrayidx296 = getelementptr inbounds [36 x double], [36 x double]* getelementptr inbounds ([4 x [36 x double]], [4 x [36 x double]]* @win, i32 0, i64 1), i32 0, i64 %idxprom295
  store double %155, double* %arrayidx296, align 8, !tbaa !12
  %157 = load double, double* %a, align 8, !tbaa !12
  %158 = load i32, i32* %k, align 4, !tbaa !5
  %add297 = add nsw i32 9, %158
  %idxprom298 = sext i32 %add297 to i64
  %arrayidx299 = getelementptr inbounds [36 x double], [36 x double]* getelementptr inbounds ([4 x [36 x double]], [4 x [36 x double]]* @win, i32 0, i64 1), i32 0, i64 %idxprom298
  store double %157, double* %arrayidx299, align 8, !tbaa !12
  %159 = load i32, i32* %k, align 4, !tbaa !5
  %sub300 = sub nsw i32 35, %159
  %idxprom301 = sext i32 %sub300 to i64
  %arrayidx302 = getelementptr inbounds [36 x double], [36 x double]* getelementptr inbounds ([4 x [36 x double]], [4 x [36 x double]]* @win, i32 0, i64 1), i32 0, i64 %idxprom301
  %160 = load double, double* %arrayidx302, align 8, !tbaa !12
  store double %160, double* %a, align 8, !tbaa !12
  %161 = load i32, i32* %k, align 4, !tbaa !5
  %add303 = add nsw i32 27, %161
  %idxprom304 = sext i32 %add303 to i64
  %arrayidx305 = getelementptr inbounds [36 x double], [36 x double]* getelementptr inbounds ([4 x [36 x double]], [4 x [36 x double]]* @win, i32 0, i64 1), i32 0, i64 %idxprom304
  %162 = load double, double* %arrayidx305, align 8, !tbaa !12
  %163 = load i32, i32* %k, align 4, !tbaa !5
  %sub306 = sub nsw i32 35, %163
  %idxprom307 = sext i32 %sub306 to i64
  %arrayidx308 = getelementptr inbounds [36 x double], [36 x double]* getelementptr inbounds ([4 x [36 x double]], [4 x [36 x double]]* @win, i32 0, i64 1), i32 0, i64 %idxprom307
  store double %162, double* %arrayidx308, align 8, !tbaa !12
  %164 = load double, double* %a, align 8, !tbaa !12
  %165 = load i32, i32* %k, align 4, !tbaa !5
  %add309 = add nsw i32 27, %165
  %idxprom310 = sext i32 %add309 to i64
  %arrayidx311 = getelementptr inbounds [36 x double], [36 x double]* getelementptr inbounds ([4 x [36 x double]], [4 x [36 x double]]* @win, i32 0, i64 1), i32 0, i64 %idxprom310
  store double %164, double* %arrayidx311, align 8, !tbaa !12
  %166 = load i32, i32* %k, align 4, !tbaa !5
  %sub312 = sub nsw i32 17, %166
  %idxprom313 = sext i32 %sub312 to i64
  %arrayidx314 = getelementptr inbounds [36 x double], [36 x double]* getelementptr inbounds ([4 x [36 x double]], [4 x [36 x double]]* @win, i32 0, i64 3), i32 0, i64 %idxprom313
  %167 = load double, double* %arrayidx314, align 8, !tbaa !12
  store double %167, double* %a, align 8, !tbaa !12
  %168 = load i32, i32* %k, align 4, !tbaa !5
  %add315 = add nsw i32 9, %168
  %idxprom316 = sext i32 %add315 to i64
  %arrayidx317 = getelementptr inbounds [36 x double], [36 x double]* getelementptr inbounds ([4 x [36 x double]], [4 x [36 x double]]* @win, i32 0, i64 3), i32 0, i64 %idxprom316
  %169 = load double, double* %arrayidx317, align 8, !tbaa !12
  %170 = load i32, i32* %k, align 4, !tbaa !5
  %sub318 = sub nsw i32 17, %170
  %idxprom319 = sext i32 %sub318 to i64
  %arrayidx320 = getelementptr inbounds [36 x double], [36 x double]* getelementptr inbounds ([4 x [36 x double]], [4 x [36 x double]]* @win, i32 0, i64 3), i32 0, i64 %idxprom319
  store double %169, double* %arrayidx320, align 8, !tbaa !12
  %171 = load double, double* %a, align 8, !tbaa !12
  %172 = load i32, i32* %k, align 4, !tbaa !5
  %add321 = add nsw i32 9, %172
  %idxprom322 = sext i32 %add321 to i64
  %arrayidx323 = getelementptr inbounds [36 x double], [36 x double]* getelementptr inbounds ([4 x [36 x double]], [4 x [36 x double]]* @win, i32 0, i64 3), i32 0, i64 %idxprom322
  store double %171, double* %arrayidx323, align 8, !tbaa !12
  %173 = load i32, i32* %k, align 4, !tbaa !5
  %sub324 = sub nsw i32 35, %173
  %idxprom325 = sext i32 %sub324 to i64
  %arrayidx326 = getelementptr inbounds [36 x double], [36 x double]* getelementptr inbounds ([4 x [36 x double]], [4 x [36 x double]]* @win, i32 0, i64 3), i32 0, i64 %idxprom325
  %174 = load double, double* %arrayidx326, align 8, !tbaa !12
  store double %174, double* %a, align 8, !tbaa !12
  %175 = load i32, i32* %k, align 4, !tbaa !5
  %add327 = add nsw i32 27, %175
  %idxprom328 = sext i32 %add327 to i64
  %arrayidx329 = getelementptr inbounds [36 x double], [36 x double]* getelementptr inbounds ([4 x [36 x double]], [4 x [36 x double]]* @win, i32 0, i64 3), i32 0, i64 %idxprom328
  %176 = load double, double* %arrayidx329, align 8, !tbaa !12
  %177 = load i32, i32* %k, align 4, !tbaa !5
  %sub330 = sub nsw i32 35, %177
  %idxprom331 = sext i32 %sub330 to i64
  %arrayidx332 = getelementptr inbounds [36 x double], [36 x double]* getelementptr inbounds ([4 x [36 x double]], [4 x [36 x double]]* @win, i32 0, i64 3), i32 0, i64 %idxprom331
  store double %176, double* %arrayidx332, align 8, !tbaa !12
  %178 = load double, double* %a, align 8, !tbaa !12
  %179 = load i32, i32* %k, align 4, !tbaa !5
  %add333 = add nsw i32 27, %179
  %idxprom334 = sext i32 %add333 to i64
  %arrayidx335 = getelementptr inbounds [36 x double], [36 x double]* getelementptr inbounds ([4 x [36 x double]], [4 x [36 x double]]* @win, i32 0, i64 3), i32 0, i64 %idxprom334
  store double %178, double* %arrayidx335, align 8, !tbaa !12
  %180 = bitcast double* %a to i8*
  call void @llvm.lifetime.end(i64 8, i8* %180) #1
  br label %for.inc.336

for.inc.336:                                      ; preds = %for.body.263
  %181 = load i32, i32* %k, align 4, !tbaa !5
  %inc337 = add nsw i32 %181, 1
  store i32 %inc337, i32* %k, align 4, !tbaa !5
  br label %for.cond.260

for.end.338:                                      ; preds = %for.cond.260
  store i32 0, i32* %i, align 4, !tbaa !5
  br label %for.cond.339

for.cond.339:                                     ; preds = %for.inc.355, %for.end.338
  %182 = load i32, i32* %i, align 4, !tbaa !5
  %cmp340 = icmp slt i32 %182, 36
  br i1 %cmp340, label %for.body.342, label %for.end.357

for.body.342:                                     ; preds = %for.cond.339
  %183 = load double, double* %max, align 8, !tbaa !12
  %div343 = fdiv double %183, 3.276800e+04
  %184 = load i32, i32* %i, align 4, !tbaa !5
  %idxprom344 = sext i32 %184 to i64
  %arrayidx345 = getelementptr inbounds [36 x double], [36 x double]* getelementptr inbounds ([4 x [36 x double]], [4 x [36 x double]]* @win, i32 0, i64 0), i32 0, i64 %idxprom344
  %185 = load double, double* %arrayidx345, align 8, !tbaa !12
  %mul346 = fmul double %185, %div343
  store double %mul346, double* %arrayidx345, align 8, !tbaa !12
  %186 = load double, double* %max, align 8, !tbaa !12
  %div347 = fdiv double %186, 3.276800e+04
  %187 = load i32, i32* %i, align 4, !tbaa !5
  %idxprom348 = sext i32 %187 to i64
  %arrayidx349 = getelementptr inbounds [36 x double], [36 x double]* getelementptr inbounds ([4 x [36 x double]], [4 x [36 x double]]* @win, i32 0, i64 1), i32 0, i64 %idxprom348
  %188 = load double, double* %arrayidx349, align 8, !tbaa !12
  %mul350 = fmul double %188, %div347
  store double %mul350, double* %arrayidx349, align 8, !tbaa !12
  %189 = load double, double* %max, align 8, !tbaa !12
  %div351 = fdiv double %189, 3.276800e+04
  %190 = load i32, i32* %i, align 4, !tbaa !5
  %idxprom352 = sext i32 %190 to i64
  %arrayidx353 = getelementptr inbounds [36 x double], [36 x double]* getelementptr inbounds ([4 x [36 x double]], [4 x [36 x double]]* @win, i32 0, i64 3), i32 0, i64 %idxprom352
  %191 = load double, double* %arrayidx353, align 8, !tbaa !12
  %mul354 = fmul double %191, %div351
  store double %mul354, double* %arrayidx353, align 8, !tbaa !12
  br label %for.inc.355

for.inc.355:                                      ; preds = %for.body.342
  %192 = load i32, i32* %i, align 4, !tbaa !5
  %inc356 = add nsw i32 %192, 1
  store i32 %inc356, i32* %i, align 4, !tbaa !5
  br label %for.cond.339

for.end.357:                                      ; preds = %for.cond.339
  store double 0x3FD5555555555555, double* %sq, align 8, !tbaa !12
  store i32 0, i32* %i, align 4, !tbaa !5
  br label %for.cond.358

for.cond.358:                                     ; preds = %for.inc.413, %for.end.357
  %193 = load i32, i32* %i, align 4, !tbaa !5
  %cmp359 = icmp slt i32 %193, 3
  br i1 %cmp359, label %for.body.361, label %for.end.415

for.body.361:                                     ; preds = %for.cond.358
  %194 = bitcast double* %w2 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %194) #1
  %195 = load i32, i32* %i, align 4, !tbaa !5
  %conv362 = sitofp i32 %195 to double
  %add363 = fadd double %conv362, 5.000000e-01
  %mul364 = fmul double 0x3FD0C152382D7365, %add363
  %call365 = call double @cos(double %mul364) #1
  %196 = load double, double* %max, align 8, !tbaa !12
  %mul366 = fmul double %call365, %196
  %div367 = fdiv double %mul366, 3.276800e+04
  %197 = load double, double* %sq, align 8, !tbaa !12
  %mul368 = fmul double %div367, %197
  store double %mul368, double* %w2, align 8, !tbaa !12
  %198 = load i32, i32* %i, align 4, !tbaa !5
  %conv369 = sitofp i32 %198 to double
  %add370 = fadd double %conv369, 5.000000e-01
  %mul371 = fmul double 0x3FD0C152382D7365, %add370
  %call372 = call double @tan(double %mul371) #1
  %199 = load i32, i32* %i, align 4, !tbaa !5
  %idxprom373 = sext i32 %199 to i64
  %arrayidx374 = getelementptr inbounds [36 x double], [36 x double]* getelementptr inbounds ([4 x [36 x double]], [4 x [36 x double]]* @win, i32 0, i64 2), i32 0, i64 %idxprom373
  store double %call372, double* %arrayidx374, align 8, !tbaa !12
  store i32 0, i32* %m, align 4, !tbaa !5
  br label %for.cond.375

for.cond.375:                                     ; preds = %for.inc.410, %for.body.361
  %200 = load i32, i32* %m, align 4, !tbaa !5
  %cmp376 = icmp slt i32 %200, 6
  br i1 %cmp376, label %for.body.378, label %for.end.412

for.body.378:                                     ; preds = %for.cond.375
  %201 = load double, double* %w2, align 8, !tbaa !12
  %202 = load i32, i32* %m, align 4, !tbaa !5
  %mul379 = mul nsw i32 2, %202
  %add380 = add nsw i32 %mul379, 1
  %conv381 = sitofp i32 %add380 to double
  %mul382 = fmul double 0x3FB0C152382D7365, %conv381
  %203 = load i32, i32* %i, align 4, !tbaa !5
  %mul383 = mul nsw i32 4, %203
  %add384 = add nsw i32 %mul383, 2
  %add385 = add nsw i32 %add384, 12
  %conv386 = sitofp i32 %add385 to double
  %mul387 = fmul double %mul382, %conv386
  %call388 = call double @cos(double %mul387) #1
  %mul389 = fmul double %201, %call388
  %204 = load i32, i32* %i, align 4, !tbaa !5
  %idxprom390 = sext i32 %204 to i64
  %205 = load i32, i32* %m, align 4, !tbaa !5
  %idxprom391 = sext i32 %205 to i64
  %arrayidx392 = getelementptr inbounds [6 x [6 x double]], [6 x [6 x double]]* @cos_s, i32 0, i64 %idxprom391
  %arrayidx393 = getelementptr inbounds [6 x double], [6 x double]* %arrayidx392, i32 0, i64 %idxprom390
  store double %mul389, double* %arrayidx393, align 8, !tbaa !12
  %206 = load double, double* %w2, align 8, !tbaa !12
  %207 = load i32, i32* %m, align 4, !tbaa !5
  %mul394 = mul nsw i32 2, %207
  %add395 = add nsw i32 %mul394, 1
  %conv396 = sitofp i32 %add395 to double
  %mul397 = fmul double 0x3FB0C152382D7365, %conv396
  %208 = load i32, i32* %i, align 4, !tbaa !5
  %mul398 = mul nsw i32 4, %208
  %add399 = add nsw i32 %mul398, 2
  %add400 = add nsw i32 %add399, 36
  %conv401 = sitofp i32 %add400 to double
  %mul402 = fmul double %mul397, %conv401
  %call403 = call double @cos(double %mul402) #1
  %mul404 = fmul double %206, %call403
  %209 = load i32, i32* %i, align 4, !tbaa !5
  %add405 = add nsw i32 %209, 3
  %idxprom406 = sext i32 %add405 to i64
  %210 = load i32, i32* %m, align 4, !tbaa !5
  %idxprom407 = sext i32 %210 to i64
  %arrayidx408 = getelementptr inbounds [6 x [6 x double]], [6 x [6 x double]]* @cos_s, i32 0, i64 %idxprom407
  %arrayidx409 = getelementptr inbounds [6 x double], [6 x double]* %arrayidx408, i32 0, i64 %idxprom406
  store double %mul404, double* %arrayidx409, align 8, !tbaa !12
  br label %for.inc.410

for.inc.410:                                      ; preds = %for.body.378
  %211 = load i32, i32* %m, align 4, !tbaa !5
  %inc411 = add nsw i32 %211, 1
  store i32 %inc411, i32* %m, align 4, !tbaa !5
  br label %for.cond.375

for.end.412:                                      ; preds = %for.cond.375
  %212 = bitcast double* %w2 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %212) #1
  br label %for.inc.413

for.inc.413:                                      ; preds = %for.end.412
  %213 = load i32, i32* %i, align 4, !tbaa !5
  %inc414 = add nsw i32 %213, 1
  store i32 %inc414, i32* %i, align 4, !tbaa !5
  br label %for.cond.358

for.end.415:                                      ; preds = %for.cond.358
  %214 = bitcast double* %max to i8*
  call void @llvm.lifetime.end(i64 8, i8* %214) #1
  %215 = bitcast double* %sq to i8*
  call void @llvm.lifetime.end(i64 8, i8* %215) #1
  %216 = bitcast i32* %m to i8*
  call void @llvm.lifetime.end(i64 4, i8* %216) #1
  %217 = bitcast i32* %k to i8*
  call void @llvm.lifetime.end(i64 4, i8* %217) #1
  %218 = bitcast i32* %i to i8*
  call void @llvm.lifetime.end(i64 4, i8* %218) #1
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @window_subband(i16* %xk, double* %d, double* %in) #0 {
entry:
  %xk.addr = alloca i16*, align 8
  %d.addr = alloca double*, align 8
  %in.addr = alloca double*, align 8
  %i = alloca i32, align 4
  %s = alloca double, align 8
  %t = alloca double, align 8
  %wp = alloca double*, align 8
  %x1 = alloca i16*, align 8
  %x2 = alloca i16*, align 8
  %w = alloca double, align 8
  %j = alloca i32, align 4
  %s0 = alloca double, align 8
  %s1 = alloca double, align 8
  store i16* %xk, i16** %xk.addr, align 8, !tbaa !1
  store double* %d, double** %d.addr, align 8, !tbaa !1
  store double* %in, double** %in.addr, align 8, !tbaa !1
  %0 = bitcast i32* %i to i8*
  call void @llvm.lifetime.start(i64 4, i8* %0) #1
  %1 = bitcast double* %s to i8*
  call void @llvm.lifetime.start(i64 8, i8* %1) #1
  %2 = bitcast double* %t to i8*
  call void @llvm.lifetime.start(i64 8, i8* %2) #1
  %3 = bitcast double** %wp to i8*
  call void @llvm.lifetime.start(i64 8, i8* %3) #1
  store double* getelementptr inbounds ([256 x double], [256 x double]* @enwindow, i32 0, i32 0), double** %wp, align 8, !tbaa !1
  %4 = load i16*, i16** %xk.addr, align 8, !tbaa !1
  %arrayidx = getelementptr inbounds i16, i16* %4, i64 255
  %5 = load i16, i16* %arrayidx, align 2, !tbaa !23
  %conv = sitofp i16 %5 to double
  store double %conv, double* %t, align 8, !tbaa !12
  %6 = load i16*, i16** %xk.addr, align 8, !tbaa !1
  %arrayidx1 = getelementptr inbounds i16, i16* %6, i64 223
  %7 = load i16, i16* %arrayidx1, align 2, !tbaa !23
  %conv2 = sext i16 %7 to i32
  %8 = load i16*, i16** %xk.addr, align 8, !tbaa !1
  %arrayidx3 = getelementptr inbounds i16, i16* %8, i64 287
  %9 = load i16, i16* %arrayidx3, align 2, !tbaa !23
  %conv4 = sext i16 %9 to i32
  %sub = sub nsw i32 %conv2, %conv4
  %conv5 = sitofp i32 %sub to double
  %10 = load double*, double** %wp, align 8, !tbaa !1
  %incdec.ptr = getelementptr inbounds double, double* %10, i32 1
  store double* %incdec.ptr, double** %wp, align 8, !tbaa !1
  %11 = load double, double* %10, align 8, !tbaa !12
  %mul = fmul double %conv5, %11
  %12 = load double, double* %t, align 8, !tbaa !12
  %add = fadd double %12, %mul
  store double %add, double* %t, align 8, !tbaa !12
  %13 = load i16*, i16** %xk.addr, align 8, !tbaa !1
  %arrayidx6 = getelementptr inbounds i16, i16* %13, i64 191
  %14 = load i16, i16* %arrayidx6, align 2, !tbaa !23
  %conv7 = sext i16 %14 to i32
  %15 = load i16*, i16** %xk.addr, align 8, !tbaa !1
  %arrayidx8 = getelementptr inbounds i16, i16* %15, i64 319
  %16 = load i16, i16* %arrayidx8, align 2, !tbaa !23
  %conv9 = sext i16 %16 to i32
  %add10 = add nsw i32 %conv7, %conv9
  %conv11 = sitofp i32 %add10 to double
  %17 = load double*, double** %wp, align 8, !tbaa !1
  %incdec.ptr12 = getelementptr inbounds double, double* %17, i32 1
  store double* %incdec.ptr12, double** %wp, align 8, !tbaa !1
  %18 = load double, double* %17, align 8, !tbaa !12
  %mul13 = fmul double %conv11, %18
  %19 = load double, double* %t, align 8, !tbaa !12
  %add14 = fadd double %19, %mul13
  store double %add14, double* %t, align 8, !tbaa !12
  %20 = load i16*, i16** %xk.addr, align 8, !tbaa !1
  %arrayidx15 = getelementptr inbounds i16, i16* %20, i64 159
  %21 = load i16, i16* %arrayidx15, align 2, !tbaa !23
  %conv16 = sext i16 %21 to i32
  %22 = load i16*, i16** %xk.addr, align 8, !tbaa !1
  %arrayidx17 = getelementptr inbounds i16, i16* %22, i64 351
  %23 = load i16, i16* %arrayidx17, align 2, !tbaa !23
  %conv18 = sext i16 %23 to i32
  %sub19 = sub nsw i32 %conv16, %conv18
  %conv20 = sitofp i32 %sub19 to double
  %24 = load double*, double** %wp, align 8, !tbaa !1
  %incdec.ptr21 = getelementptr inbounds double, double* %24, i32 1
  store double* %incdec.ptr21, double** %wp, align 8, !tbaa !1
  %25 = load double, double* %24, align 8, !tbaa !12
  %mul22 = fmul double %conv20, %25
  %26 = load double, double* %t, align 8, !tbaa !12
  %add23 = fadd double %26, %mul22
  store double %add23, double* %t, align 8, !tbaa !12
  %27 = load i16*, i16** %xk.addr, align 8, !tbaa !1
  %arrayidx24 = getelementptr inbounds i16, i16* %27, i64 127
  %28 = load i16, i16* %arrayidx24, align 2, !tbaa !23
  %conv25 = sext i16 %28 to i32
  %29 = load i16*, i16** %xk.addr, align 8, !tbaa !1
  %arrayidx26 = getelementptr inbounds i16, i16* %29, i64 383
  %30 = load i16, i16* %arrayidx26, align 2, !tbaa !23
  %conv27 = sext i16 %30 to i32
  %add28 = add nsw i32 %conv25, %conv27
  %conv29 = sitofp i32 %add28 to double
  %31 = load double*, double** %wp, align 8, !tbaa !1
  %incdec.ptr30 = getelementptr inbounds double, double* %31, i32 1
  store double* %incdec.ptr30, double** %wp, align 8, !tbaa !1
  %32 = load double, double* %31, align 8, !tbaa !12
  %mul31 = fmul double %conv29, %32
  %33 = load double, double* %t, align 8, !tbaa !12
  %add32 = fadd double %33, %mul31
  store double %add32, double* %t, align 8, !tbaa !12
  %34 = load i16*, i16** %xk.addr, align 8, !tbaa !1
  %arrayidx33 = getelementptr inbounds i16, i16* %34, i64 95
  %35 = load i16, i16* %arrayidx33, align 2, !tbaa !23
  %conv34 = sext i16 %35 to i32
  %36 = load i16*, i16** %xk.addr, align 8, !tbaa !1
  %arrayidx35 = getelementptr inbounds i16, i16* %36, i64 415
  %37 = load i16, i16* %arrayidx35, align 2, !tbaa !23
  %conv36 = sext i16 %37 to i32
  %sub37 = sub nsw i32 %conv34, %conv36
  %conv38 = sitofp i32 %sub37 to double
  %38 = load double*, double** %wp, align 8, !tbaa !1
  %incdec.ptr39 = getelementptr inbounds double, double* %38, i32 1
  store double* %incdec.ptr39, double** %wp, align 8, !tbaa !1
  %39 = load double, double* %38, align 8, !tbaa !12
  %mul40 = fmul double %conv38, %39
  %40 = load double, double* %t, align 8, !tbaa !12
  %add41 = fadd double %40, %mul40
  store double %add41, double* %t, align 8, !tbaa !12
  %41 = load i16*, i16** %xk.addr, align 8, !tbaa !1
  %arrayidx42 = getelementptr inbounds i16, i16* %41, i64 63
  %42 = load i16, i16* %arrayidx42, align 2, !tbaa !23
  %conv43 = sext i16 %42 to i32
  %43 = load i16*, i16** %xk.addr, align 8, !tbaa !1
  %arrayidx44 = getelementptr inbounds i16, i16* %43, i64 447
  %44 = load i16, i16* %arrayidx44, align 2, !tbaa !23
  %conv45 = sext i16 %44 to i32
  %add46 = add nsw i32 %conv43, %conv45
  %conv47 = sitofp i32 %add46 to double
  %45 = load double*, double** %wp, align 8, !tbaa !1
  %incdec.ptr48 = getelementptr inbounds double, double* %45, i32 1
  store double* %incdec.ptr48, double** %wp, align 8, !tbaa !1
  %46 = load double, double* %45, align 8, !tbaa !12
  %mul49 = fmul double %conv47, %46
  %47 = load double, double* %t, align 8, !tbaa !12
  %add50 = fadd double %47, %mul49
  store double %add50, double* %t, align 8, !tbaa !12
  %48 = load i16*, i16** %xk.addr, align 8, !tbaa !1
  %arrayidx51 = getelementptr inbounds i16, i16* %48, i64 31
  %49 = load i16, i16* %arrayidx51, align 2, !tbaa !23
  %conv52 = sext i16 %49 to i32
  %50 = load i16*, i16** %xk.addr, align 8, !tbaa !1
  %arrayidx53 = getelementptr inbounds i16, i16* %50, i64 479
  %51 = load i16, i16* %arrayidx53, align 2, !tbaa !23
  %conv54 = sext i16 %51 to i32
  %sub55 = sub nsw i32 %conv52, %conv54
  %conv56 = sitofp i32 %sub55 to double
  %52 = load double*, double** %wp, align 8, !tbaa !1
  %incdec.ptr57 = getelementptr inbounds double, double* %52, i32 1
  store double* %incdec.ptr57, double** %wp, align 8, !tbaa !1
  %53 = load double, double* %52, align 8, !tbaa !12
  %mul58 = fmul double %conv56, %53
  %54 = load double, double* %t, align 8, !tbaa !12
  %add59 = fadd double %54, %mul58
  store double %add59, double* %t, align 8, !tbaa !12
  %55 = load double, double* %t, align 8, !tbaa !12
  %56 = load double*, double** %in.addr, align 8, !tbaa !1
  %arrayidx60 = getelementptr inbounds double, double* %56, i64 15
  store double %55, double* %arrayidx60, align 8, !tbaa !12
  store i32 14, i32* %i, align 4, !tbaa !5
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %57 = load i32, i32* %i, align 4, !tbaa !5
  %cmp = icmp sge i32 %57, 0
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %58 = bitcast i16** %x1 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %58) #1
  %59 = load i32, i32* %i, align 4, !tbaa !5
  %idxprom = sext i32 %59 to i64
  %60 = load i16*, i16** %xk.addr, align 8, !tbaa !1
  %arrayidx62 = getelementptr inbounds i16, i16* %60, i64 %idxprom
  store i16* %arrayidx62, i16** %x1, align 8, !tbaa !1
  %61 = bitcast i16** %x2 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %61) #1
  %62 = load i32, i32* %i, align 4, !tbaa !5
  %sub63 = sub nsw i32 0, %62
  %idxprom64 = sext i32 %sub63 to i64
  %63 = load i16*, i16** %xk.addr, align 8, !tbaa !1
  %arrayidx65 = getelementptr inbounds i16, i16* %63, i64 %idxprom64
  store i16* %arrayidx65, i16** %x2, align 8, !tbaa !1
  %64 = bitcast double* %w to i8*
  call void @llvm.lifetime.start(i64 8, i8* %64) #1
  %65 = load i16*, i16** %x2, align 8, !tbaa !1
  %arrayidx66 = getelementptr inbounds i16, i16* %65, i64 270
  %66 = load i16, i16* %arrayidx66, align 2, !tbaa !23
  %conv67 = sitofp i16 %66 to double
  store double %conv67, double* %s, align 8, !tbaa !12
  %67 = load i16*, i16** %x1, align 8, !tbaa !1
  %arrayidx68 = getelementptr inbounds i16, i16* %67, i64 240
  %68 = load i16, i16* %arrayidx68, align 2, !tbaa !23
  %conv69 = sitofp i16 %68 to double
  store double %conv69, double* %t, align 8, !tbaa !12
  %69 = load double*, double** %wp, align 8, !tbaa !1
  %incdec.ptr70 = getelementptr inbounds double, double* %69, i32 1
  store double* %incdec.ptr70, double** %wp, align 8, !tbaa !1
  %70 = load double, double* %69, align 8, !tbaa !12
  store double %70, double* %w, align 8, !tbaa !12
  %71 = load i16*, i16** %x2, align 8, !tbaa !1
  %arrayidx71 = getelementptr inbounds i16, i16* %71, i64 334
  %72 = load i16, i16* %arrayidx71, align 2, !tbaa !23
  %conv72 = sext i16 %72 to i32
  %conv73 = sitofp i32 %conv72 to double
  %73 = load double, double* %w, align 8, !tbaa !12
  %mul74 = fmul double %conv73, %73
  %74 = load double, double* %s, align 8, !tbaa !12
  %add75 = fadd double %74, %mul74
  store double %add75, double* %s, align 8, !tbaa !12
  %75 = load i16*, i16** %x1, align 8, !tbaa !1
  %arrayidx76 = getelementptr inbounds i16, i16* %75, i64 176
  %76 = load i16, i16* %arrayidx76, align 2, !tbaa !23
  %conv77 = sext i16 %76 to i32
  %conv78 = sitofp i32 %conv77 to double
  %77 = load double, double* %w, align 8, !tbaa !12
  %mul79 = fmul double %conv78, %77
  %78 = load double, double* %t, align 8, !tbaa !12
  %add80 = fadd double %78, %mul79
  store double %add80, double* %t, align 8, !tbaa !12
  %79 = load double*, double** %wp, align 8, !tbaa !1
  %incdec.ptr81 = getelementptr inbounds double, double* %79, i32 1
  store double* %incdec.ptr81, double** %wp, align 8, !tbaa !1
  %80 = load double, double* %79, align 8, !tbaa !12
  store double %80, double* %w, align 8, !tbaa !12
  %81 = load i16*, i16** %x2, align 8, !tbaa !1
  %arrayidx82 = getelementptr inbounds i16, i16* %81, i64 398
  %82 = load i16, i16* %arrayidx82, align 2, !tbaa !23
  %conv83 = sext i16 %82 to i32
  %conv84 = sitofp i32 %conv83 to double
  %83 = load double, double* %w, align 8, !tbaa !12
  %mul85 = fmul double %conv84, %83
  %84 = load double, double* %s, align 8, !tbaa !12
  %add86 = fadd double %84, %mul85
  store double %add86, double* %s, align 8, !tbaa !12
  %85 = load i16*, i16** %x1, align 8, !tbaa !1
  %arrayidx87 = getelementptr inbounds i16, i16* %85, i64 112
  %86 = load i16, i16* %arrayidx87, align 2, !tbaa !23
  %conv88 = sext i16 %86 to i32
  %conv89 = sitofp i32 %conv88 to double
  %87 = load double, double* %w, align 8, !tbaa !12
  %mul90 = fmul double %conv89, %87
  %88 = load double, double* %t, align 8, !tbaa !12
  %add91 = fadd double %88, %mul90
  store double %add91, double* %t, align 8, !tbaa !12
  %89 = load double*, double** %wp, align 8, !tbaa !1
  %incdec.ptr92 = getelementptr inbounds double, double* %89, i32 1
  store double* %incdec.ptr92, double** %wp, align 8, !tbaa !1
  %90 = load double, double* %89, align 8, !tbaa !12
  store double %90, double* %w, align 8, !tbaa !12
  %91 = load i16*, i16** %x2, align 8, !tbaa !1
  %arrayidx93 = getelementptr inbounds i16, i16* %91, i64 462
  %92 = load i16, i16* %arrayidx93, align 2, !tbaa !23
  %conv94 = sext i16 %92 to i32
  %conv95 = sitofp i32 %conv94 to double
  %93 = load double, double* %w, align 8, !tbaa !12
  %mul96 = fmul double %conv95, %93
  %94 = load double, double* %s, align 8, !tbaa !12
  %add97 = fadd double %94, %mul96
  store double %add97, double* %s, align 8, !tbaa !12
  %95 = load i16*, i16** %x1, align 8, !tbaa !1
  %arrayidx98 = getelementptr inbounds i16, i16* %95, i64 48
  %96 = load i16, i16* %arrayidx98, align 2, !tbaa !23
  %conv99 = sext i16 %96 to i32
  %conv100 = sitofp i32 %conv99 to double
  %97 = load double, double* %w, align 8, !tbaa !12
  %mul101 = fmul double %conv100, %97
  %98 = load double, double* %t, align 8, !tbaa !12
  %add102 = fadd double %98, %mul101
  store double %add102, double* %t, align 8, !tbaa !12
  %99 = load double*, double** %wp, align 8, !tbaa !1
  %incdec.ptr103 = getelementptr inbounds double, double* %99, i32 1
  store double* %incdec.ptr103, double** %wp, align 8, !tbaa !1
  %100 = load double, double* %99, align 8, !tbaa !12
  store double %100, double* %w, align 8, !tbaa !12
  %101 = load i16*, i16** %x2, align 8, !tbaa !1
  %arrayidx104 = getelementptr inbounds i16, i16* %101, i64 14
  %102 = load i16, i16* %arrayidx104, align 2, !tbaa !23
  %conv105 = sext i16 %102 to i32
  %conv106 = sitofp i32 %conv105 to double
  %103 = load double, double* %w, align 8, !tbaa !12
  %mul107 = fmul double %conv106, %103
  %104 = load double, double* %s, align 8, !tbaa !12
  %add108 = fadd double %104, %mul107
  store double %add108, double* %s, align 8, !tbaa !12
  %105 = load i16*, i16** %x1, align 8, !tbaa !1
  %arrayidx109 = getelementptr inbounds i16, i16* %105, i64 496
  %106 = load i16, i16* %arrayidx109, align 2, !tbaa !23
  %conv110 = sext i16 %106 to i32
  %conv111 = sitofp i32 %conv110 to double
  %107 = load double, double* %w, align 8, !tbaa !12
  %mul112 = fmul double %conv111, %107
  %108 = load double, double* %t, align 8, !tbaa !12
  %add113 = fadd double %108, %mul112
  store double %add113, double* %t, align 8, !tbaa !12
  %109 = load double*, double** %wp, align 8, !tbaa !1
  %incdec.ptr114 = getelementptr inbounds double, double* %109, i32 1
  store double* %incdec.ptr114, double** %wp, align 8, !tbaa !1
  %110 = load double, double* %109, align 8, !tbaa !12
  store double %110, double* %w, align 8, !tbaa !12
  %111 = load i16*, i16** %x2, align 8, !tbaa !1
  %arrayidx115 = getelementptr inbounds i16, i16* %111, i64 78
  %112 = load i16, i16* %arrayidx115, align 2, !tbaa !23
  %conv116 = sext i16 %112 to i32
  %conv117 = sitofp i32 %conv116 to double
  %113 = load double, double* %w, align 8, !tbaa !12
  %mul118 = fmul double %conv117, %113
  %114 = load double, double* %s, align 8, !tbaa !12
  %add119 = fadd double %114, %mul118
  store double %add119, double* %s, align 8, !tbaa !12
  %115 = load i16*, i16** %x1, align 8, !tbaa !1
  %arrayidx120 = getelementptr inbounds i16, i16* %115, i64 432
  %116 = load i16, i16* %arrayidx120, align 2, !tbaa !23
  %conv121 = sext i16 %116 to i32
  %conv122 = sitofp i32 %conv121 to double
  %117 = load double, double* %w, align 8, !tbaa !12
  %mul123 = fmul double %conv122, %117
  %118 = load double, double* %t, align 8, !tbaa !12
  %add124 = fadd double %118, %mul123
  store double %add124, double* %t, align 8, !tbaa !12
  %119 = load double*, double** %wp, align 8, !tbaa !1
  %incdec.ptr125 = getelementptr inbounds double, double* %119, i32 1
  store double* %incdec.ptr125, double** %wp, align 8, !tbaa !1
  %120 = load double, double* %119, align 8, !tbaa !12
  store double %120, double* %w, align 8, !tbaa !12
  %121 = load i16*, i16** %x2, align 8, !tbaa !1
  %arrayidx126 = getelementptr inbounds i16, i16* %121, i64 142
  %122 = load i16, i16* %arrayidx126, align 2, !tbaa !23
  %conv127 = sext i16 %122 to i32
  %conv128 = sitofp i32 %conv127 to double
  %123 = load double, double* %w, align 8, !tbaa !12
  %mul129 = fmul double %conv128, %123
  %124 = load double, double* %s, align 8, !tbaa !12
  %add130 = fadd double %124, %mul129
  store double %add130, double* %s, align 8, !tbaa !12
  %125 = load i16*, i16** %x1, align 8, !tbaa !1
  %arrayidx131 = getelementptr inbounds i16, i16* %125, i64 368
  %126 = load i16, i16* %arrayidx131, align 2, !tbaa !23
  %conv132 = sext i16 %126 to i32
  %conv133 = sitofp i32 %conv132 to double
  %127 = load double, double* %w, align 8, !tbaa !12
  %mul134 = fmul double %conv133, %127
  %128 = load double, double* %t, align 8, !tbaa !12
  %add135 = fadd double %128, %mul134
  store double %add135, double* %t, align 8, !tbaa !12
  %129 = load double*, double** %wp, align 8, !tbaa !1
  %incdec.ptr136 = getelementptr inbounds double, double* %129, i32 1
  store double* %incdec.ptr136, double** %wp, align 8, !tbaa !1
  %130 = load double, double* %129, align 8, !tbaa !12
  store double %130, double* %w, align 8, !tbaa !12
  %131 = load i16*, i16** %x2, align 8, !tbaa !1
  %arrayidx137 = getelementptr inbounds i16, i16* %131, i64 206
  %132 = load i16, i16* %arrayidx137, align 2, !tbaa !23
  %conv138 = sext i16 %132 to i32
  %conv139 = sitofp i32 %conv138 to double
  %133 = load double, double* %w, align 8, !tbaa !12
  %mul140 = fmul double %conv139, %133
  %134 = load double, double* %s, align 8, !tbaa !12
  %add141 = fadd double %134, %mul140
  store double %add141, double* %s, align 8, !tbaa !12
  %135 = load i16*, i16** %x1, align 8, !tbaa !1
  %arrayidx142 = getelementptr inbounds i16, i16* %135, i64 304
  %136 = load i16, i16* %arrayidx142, align 2, !tbaa !23
  %conv143 = sext i16 %136 to i32
  %conv144 = sitofp i32 %conv143 to double
  %137 = load double, double* %w, align 8, !tbaa !12
  %mul145 = fmul double %conv144, %137
  %138 = load double, double* %t, align 8, !tbaa !12
  %add146 = fadd double %138, %mul145
  store double %add146, double* %t, align 8, !tbaa !12
  %139 = load double*, double** %wp, align 8, !tbaa !1
  %incdec.ptr147 = getelementptr inbounds double, double* %139, i32 1
  store double* %incdec.ptr147, double** %wp, align 8, !tbaa !1
  %140 = load double, double* %139, align 8, !tbaa !12
  store double %140, double* %w, align 8, !tbaa !12
  %141 = load i16*, i16** %x1, align 8, !tbaa !1
  %arrayidx148 = getelementptr inbounds i16, i16* %141, i64 16
  %142 = load i16, i16* %arrayidx148, align 2, !tbaa !23
  %conv149 = sext i16 %142 to i32
  %conv150 = sitofp i32 %conv149 to double
  %143 = load double, double* %w, align 8, !tbaa !12
  %mul151 = fmul double %conv150, %143
  %144 = load double, double* %s, align 8, !tbaa !12
  %add152 = fadd double %144, %mul151
  store double %add152, double* %s, align 8, !tbaa !12
  %145 = load i16*, i16** %x2, align 8, !tbaa !1
  %arrayidx153 = getelementptr inbounds i16, i16* %145, i64 494
  %146 = load i16, i16* %arrayidx153, align 2, !tbaa !23
  %conv154 = sext i16 %146 to i32
  %conv155 = sitofp i32 %conv154 to double
  %147 = load double, double* %w, align 8, !tbaa !12
  %mul156 = fmul double %conv155, %147
  %148 = load double, double* %t, align 8, !tbaa !12
  %sub157 = fsub double %148, %mul156
  store double %sub157, double* %t, align 8, !tbaa !12
  %149 = load double*, double** %wp, align 8, !tbaa !1
  %incdec.ptr158 = getelementptr inbounds double, double* %149, i32 1
  store double* %incdec.ptr158, double** %wp, align 8, !tbaa !1
  %150 = load double, double* %149, align 8, !tbaa !12
  store double %150, double* %w, align 8, !tbaa !12
  %151 = load i16*, i16** %x1, align 8, !tbaa !1
  %arrayidx159 = getelementptr inbounds i16, i16* %151, i64 80
  %152 = load i16, i16* %arrayidx159, align 2, !tbaa !23
  %conv160 = sext i16 %152 to i32
  %conv161 = sitofp i32 %conv160 to double
  %153 = load double, double* %w, align 8, !tbaa !12
  %mul162 = fmul double %conv161, %153
  %154 = load double, double* %s, align 8, !tbaa !12
  %add163 = fadd double %154, %mul162
  store double %add163, double* %s, align 8, !tbaa !12
  %155 = load i16*, i16** %x2, align 8, !tbaa !1
  %arrayidx164 = getelementptr inbounds i16, i16* %155, i64 430
  %156 = load i16, i16* %arrayidx164, align 2, !tbaa !23
  %conv165 = sext i16 %156 to i32
  %conv166 = sitofp i32 %conv165 to double
  %157 = load double, double* %w, align 8, !tbaa !12
  %mul167 = fmul double %conv166, %157
  %158 = load double, double* %t, align 8, !tbaa !12
  %sub168 = fsub double %158, %mul167
  store double %sub168, double* %t, align 8, !tbaa !12
  %159 = load double*, double** %wp, align 8, !tbaa !1
  %incdec.ptr169 = getelementptr inbounds double, double* %159, i32 1
  store double* %incdec.ptr169, double** %wp, align 8, !tbaa !1
  %160 = load double, double* %159, align 8, !tbaa !12
  store double %160, double* %w, align 8, !tbaa !12
  %161 = load i16*, i16** %x1, align 8, !tbaa !1
  %arrayidx170 = getelementptr inbounds i16, i16* %161, i64 144
  %162 = load i16, i16* %arrayidx170, align 2, !tbaa !23
  %conv171 = sext i16 %162 to i32
  %conv172 = sitofp i32 %conv171 to double
  %163 = load double, double* %w, align 8, !tbaa !12
  %mul173 = fmul double %conv172, %163
  %164 = load double, double* %s, align 8, !tbaa !12
  %add174 = fadd double %164, %mul173
  store double %add174, double* %s, align 8, !tbaa !12
  %165 = load i16*, i16** %x2, align 8, !tbaa !1
  %arrayidx175 = getelementptr inbounds i16, i16* %165, i64 366
  %166 = load i16, i16* %arrayidx175, align 2, !tbaa !23
  %conv176 = sext i16 %166 to i32
  %conv177 = sitofp i32 %conv176 to double
  %167 = load double, double* %w, align 8, !tbaa !12
  %mul178 = fmul double %conv177, %167
  %168 = load double, double* %t, align 8, !tbaa !12
  %sub179 = fsub double %168, %mul178
  store double %sub179, double* %t, align 8, !tbaa !12
  %169 = load double*, double** %wp, align 8, !tbaa !1
  %incdec.ptr180 = getelementptr inbounds double, double* %169, i32 1
  store double* %incdec.ptr180, double** %wp, align 8, !tbaa !1
  %170 = load double, double* %169, align 8, !tbaa !12
  store double %170, double* %w, align 8, !tbaa !12
  %171 = load i16*, i16** %x1, align 8, !tbaa !1
  %arrayidx181 = getelementptr inbounds i16, i16* %171, i64 208
  %172 = load i16, i16* %arrayidx181, align 2, !tbaa !23
  %conv182 = sext i16 %172 to i32
  %conv183 = sitofp i32 %conv182 to double
  %173 = load double, double* %w, align 8, !tbaa !12
  %mul184 = fmul double %conv183, %173
  %174 = load double, double* %s, align 8, !tbaa !12
  %add185 = fadd double %174, %mul184
  store double %add185, double* %s, align 8, !tbaa !12
  %175 = load i16*, i16** %x2, align 8, !tbaa !1
  %arrayidx186 = getelementptr inbounds i16, i16* %175, i64 302
  %176 = load i16, i16* %arrayidx186, align 2, !tbaa !23
  %conv187 = sext i16 %176 to i32
  %conv188 = sitofp i32 %conv187 to double
  %177 = load double, double* %w, align 8, !tbaa !12
  %mul189 = fmul double %conv188, %177
  %178 = load double, double* %t, align 8, !tbaa !12
  %sub190 = fsub double %178, %mul189
  store double %sub190, double* %t, align 8, !tbaa !12
  %179 = load double*, double** %wp, align 8, !tbaa !1
  %incdec.ptr191 = getelementptr inbounds double, double* %179, i32 1
  store double* %incdec.ptr191, double** %wp, align 8, !tbaa !1
  %180 = load double, double* %179, align 8, !tbaa !12
  store double %180, double* %w, align 8, !tbaa !12
  %181 = load i16*, i16** %x1, align 8, !tbaa !1
  %arrayidx192 = getelementptr inbounds i16, i16* %181, i64 272
  %182 = load i16, i16* %arrayidx192, align 2, !tbaa !23
  %conv193 = sext i16 %182 to i32
  %conv194 = sitofp i32 %conv193 to double
  %183 = load double, double* %w, align 8, !tbaa !12
  %mul195 = fmul double %conv194, %183
  %184 = load double, double* %s, align 8, !tbaa !12
  %sub196 = fsub double %184, %mul195
  store double %sub196, double* %s, align 8, !tbaa !12
  %185 = load i16*, i16** %x2, align 8, !tbaa !1
  %arrayidx197 = getelementptr inbounds i16, i16* %185, i64 238
  %186 = load i16, i16* %arrayidx197, align 2, !tbaa !23
  %conv198 = sext i16 %186 to i32
  %conv199 = sitofp i32 %conv198 to double
  %187 = load double, double* %w, align 8, !tbaa !12
  %mul200 = fmul double %conv199, %187
  %188 = load double, double* %t, align 8, !tbaa !12
  %add201 = fadd double %188, %mul200
  store double %add201, double* %t, align 8, !tbaa !12
  %189 = load double*, double** %wp, align 8, !tbaa !1
  %incdec.ptr202 = getelementptr inbounds double, double* %189, i32 1
  store double* %incdec.ptr202, double** %wp, align 8, !tbaa !1
  %190 = load double, double* %189, align 8, !tbaa !12
  store double %190, double* %w, align 8, !tbaa !12
  %191 = load i16*, i16** %x1, align 8, !tbaa !1
  %arrayidx203 = getelementptr inbounds i16, i16* %191, i64 336
  %192 = load i16, i16* %arrayidx203, align 2, !tbaa !23
  %conv204 = sext i16 %192 to i32
  %conv205 = sitofp i32 %conv204 to double
  %193 = load double, double* %w, align 8, !tbaa !12
  %mul206 = fmul double %conv205, %193
  %194 = load double, double* %s, align 8, !tbaa !12
  %sub207 = fsub double %194, %mul206
  store double %sub207, double* %s, align 8, !tbaa !12
  %195 = load i16*, i16** %x2, align 8, !tbaa !1
  %arrayidx208 = getelementptr inbounds i16, i16* %195, i64 174
  %196 = load i16, i16* %arrayidx208, align 2, !tbaa !23
  %conv209 = sext i16 %196 to i32
  %conv210 = sitofp i32 %conv209 to double
  %197 = load double, double* %w, align 8, !tbaa !12
  %mul211 = fmul double %conv210, %197
  %198 = load double, double* %t, align 8, !tbaa !12
  %add212 = fadd double %198, %mul211
  store double %add212, double* %t, align 8, !tbaa !12
  %199 = load double*, double** %wp, align 8, !tbaa !1
  %incdec.ptr213 = getelementptr inbounds double, double* %199, i32 1
  store double* %incdec.ptr213, double** %wp, align 8, !tbaa !1
  %200 = load double, double* %199, align 8, !tbaa !12
  store double %200, double* %w, align 8, !tbaa !12
  %201 = load i16*, i16** %x1, align 8, !tbaa !1
  %arrayidx214 = getelementptr inbounds i16, i16* %201, i64 400
  %202 = load i16, i16* %arrayidx214, align 2, !tbaa !23
  %conv215 = sext i16 %202 to i32
  %conv216 = sitofp i32 %conv215 to double
  %203 = load double, double* %w, align 8, !tbaa !12
  %mul217 = fmul double %conv216, %203
  %204 = load double, double* %s, align 8, !tbaa !12
  %sub218 = fsub double %204, %mul217
  store double %sub218, double* %s, align 8, !tbaa !12
  %205 = load i16*, i16** %x2, align 8, !tbaa !1
  %arrayidx219 = getelementptr inbounds i16, i16* %205, i64 110
  %206 = load i16, i16* %arrayidx219, align 2, !tbaa !23
  %conv220 = sext i16 %206 to i32
  %conv221 = sitofp i32 %conv220 to double
  %207 = load double, double* %w, align 8, !tbaa !12
  %mul222 = fmul double %conv221, %207
  %208 = load double, double* %t, align 8, !tbaa !12
  %add223 = fadd double %208, %mul222
  store double %add223, double* %t, align 8, !tbaa !12
  %209 = load double*, double** %wp, align 8, !tbaa !1
  %incdec.ptr224 = getelementptr inbounds double, double* %209, i32 1
  store double* %incdec.ptr224, double** %wp, align 8, !tbaa !1
  %210 = load double, double* %209, align 8, !tbaa !12
  store double %210, double* %w, align 8, !tbaa !12
  %211 = load i16*, i16** %x1, align 8, !tbaa !1
  %arrayidx225 = getelementptr inbounds i16, i16* %211, i64 464
  %212 = load i16, i16* %arrayidx225, align 2, !tbaa !23
  %conv226 = sext i16 %212 to i32
  %conv227 = sitofp i32 %conv226 to double
  %213 = load double, double* %w, align 8, !tbaa !12
  %mul228 = fmul double %conv227, %213
  %214 = load double, double* %s, align 8, !tbaa !12
  %sub229 = fsub double %214, %mul228
  store double %sub229, double* %s, align 8, !tbaa !12
  %215 = load i16*, i16** %x2, align 8, !tbaa !1
  %arrayidx230 = getelementptr inbounds i16, i16* %215, i64 46
  %216 = load i16, i16* %arrayidx230, align 2, !tbaa !23
  %conv231 = sext i16 %216 to i32
  %conv232 = sitofp i32 %conv231 to double
  %217 = load double, double* %w, align 8, !tbaa !12
  %mul233 = fmul double %conv232, %217
  %218 = load double, double* %t, align 8, !tbaa !12
  %add234 = fadd double %218, %mul233
  store double %add234, double* %t, align 8, !tbaa !12
  %219 = load double, double* %s, align 8, !tbaa !12
  %220 = load i32, i32* %i, align 4, !tbaa !5
  %sub235 = sub nsw i32 30, %220
  %idxprom236 = sext i32 %sub235 to i64
  %221 = load double*, double** %in.addr, align 8, !tbaa !1
  %arrayidx237 = getelementptr inbounds double, double* %221, i64 %idxprom236
  store double %219, double* %arrayidx237, align 8, !tbaa !12
  %222 = load double, double* %t, align 8, !tbaa !12
  %223 = load i32, i32* %i, align 4, !tbaa !5
  %idxprom238 = sext i32 %223 to i64
  %224 = load double*, double** %in.addr, align 8, !tbaa !1
  %arrayidx239 = getelementptr inbounds double, double* %224, i64 %idxprom238
  store double %222, double* %arrayidx239, align 8, !tbaa !12
  %225 = bitcast double* %w to i8*
  call void @llvm.lifetime.end(i64 8, i8* %225) #1
  %226 = bitcast i16** %x2 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %226) #1
  %227 = bitcast i16** %x1 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %227) #1
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %228 = load i32, i32* %i, align 4, !tbaa !5
  %dec = add nsw i32 %228, -1
  store i32 %dec, i32* %i, align 4, !tbaa !5
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %229 = load i16*, i16** %xk.addr, align 8, !tbaa !1
  %arrayidx240 = getelementptr inbounds i16, i16* %229, i64 239
  %230 = load i16, i16* %arrayidx240, align 2, !tbaa !23
  %conv241 = sitofp i16 %230 to double
  store double %conv241, double* %s, align 8, !tbaa !12
  %231 = load i16*, i16** %xk.addr, align 8, !tbaa !1
  %arrayidx242 = getelementptr inbounds i16, i16* %231, i64 175
  %232 = load i16, i16* %arrayidx242, align 2, !tbaa !23
  %conv243 = sext i16 %232 to i32
  %conv244 = sitofp i32 %conv243 to double
  %233 = load double*, double** %wp, align 8, !tbaa !1
  %incdec.ptr245 = getelementptr inbounds double, double* %233, i32 1
  store double* %incdec.ptr245, double** %wp, align 8, !tbaa !1
  %234 = load double, double* %233, align 8, !tbaa !12
  %mul246 = fmul double %conv244, %234
  %235 = load double, double* %s, align 8, !tbaa !12
  %add247 = fadd double %235, %mul246
  store double %add247, double* %s, align 8, !tbaa !12
  %236 = load i16*, i16** %xk.addr, align 8, !tbaa !1
  %arrayidx248 = getelementptr inbounds i16, i16* %236, i64 111
  %237 = load i16, i16* %arrayidx248, align 2, !tbaa !23
  %conv249 = sext i16 %237 to i32
  %conv250 = sitofp i32 %conv249 to double
  %238 = load double*, double** %wp, align 8, !tbaa !1
  %incdec.ptr251 = getelementptr inbounds double, double* %238, i32 1
  store double* %incdec.ptr251, double** %wp, align 8, !tbaa !1
  %239 = load double, double* %238, align 8, !tbaa !12
  %mul252 = fmul double %conv250, %239
  %240 = load double, double* %s, align 8, !tbaa !12
  %add253 = fadd double %240, %mul252
  store double %add253, double* %s, align 8, !tbaa !12
  %241 = load i16*, i16** %xk.addr, align 8, !tbaa !1
  %arrayidx254 = getelementptr inbounds i16, i16* %241, i64 47
  %242 = load i16, i16* %arrayidx254, align 2, !tbaa !23
  %conv255 = sext i16 %242 to i32
  %conv256 = sitofp i32 %conv255 to double
  %243 = load double*, double** %wp, align 8, !tbaa !1
  %incdec.ptr257 = getelementptr inbounds double, double* %243, i32 1
  store double* %incdec.ptr257, double** %wp, align 8, !tbaa !1
  %244 = load double, double* %243, align 8, !tbaa !12
  %mul258 = fmul double %conv256, %244
  %245 = load double, double* %s, align 8, !tbaa !12
  %add259 = fadd double %245, %mul258
  store double %add259, double* %s, align 8, !tbaa !12
  %246 = load i16*, i16** %xk.addr, align 8, !tbaa !1
  %arrayidx260 = getelementptr inbounds i16, i16* %246, i64 303
  %247 = load i16, i16* %arrayidx260, align 2, !tbaa !23
  %conv261 = sext i16 %247 to i32
  %conv262 = sitofp i32 %conv261 to double
  %248 = load double*, double** %wp, align 8, !tbaa !1
  %incdec.ptr263 = getelementptr inbounds double, double* %248, i32 1
  store double* %incdec.ptr263, double** %wp, align 8, !tbaa !1
  %249 = load double, double* %248, align 8, !tbaa !12
  %mul264 = fmul double %conv262, %249
  %250 = load double, double* %s, align 8, !tbaa !12
  %sub265 = fsub double %250, %mul264
  store double %sub265, double* %s, align 8, !tbaa !12
  %251 = load i16*, i16** %xk.addr, align 8, !tbaa !1
  %arrayidx266 = getelementptr inbounds i16, i16* %251, i64 367
  %252 = load i16, i16* %arrayidx266, align 2, !tbaa !23
  %conv267 = sext i16 %252 to i32
  %conv268 = sitofp i32 %conv267 to double
  %253 = load double*, double** %wp, align 8, !tbaa !1
  %incdec.ptr269 = getelementptr inbounds double, double* %253, i32 1
  store double* %incdec.ptr269, double** %wp, align 8, !tbaa !1
  %254 = load double, double* %253, align 8, !tbaa !12
  %mul270 = fmul double %conv268, %254
  %255 = load double, double* %s, align 8, !tbaa !12
  %sub271 = fsub double %255, %mul270
  store double %sub271, double* %s, align 8, !tbaa !12
  %256 = load i16*, i16** %xk.addr, align 8, !tbaa !1
  %arrayidx272 = getelementptr inbounds i16, i16* %256, i64 431
  %257 = load i16, i16* %arrayidx272, align 2, !tbaa !23
  %conv273 = sext i16 %257 to i32
  %conv274 = sitofp i32 %conv273 to double
  %258 = load double*, double** %wp, align 8, !tbaa !1
  %incdec.ptr275 = getelementptr inbounds double, double* %258, i32 1
  store double* %incdec.ptr275, double** %wp, align 8, !tbaa !1
  %259 = load double, double* %258, align 8, !tbaa !12
  %mul276 = fmul double %conv274, %259
  %260 = load double, double* %s, align 8, !tbaa !12
  %sub277 = fsub double %260, %mul276
  store double %sub277, double* %s, align 8, !tbaa !12
  %261 = load i16*, i16** %xk.addr, align 8, !tbaa !1
  %arrayidx278 = getelementptr inbounds i16, i16* %261, i64 495
  %262 = load i16, i16* %arrayidx278, align 2, !tbaa !23
  %conv279 = sext i16 %262 to i32
  %conv280 = sitofp i32 %conv279 to double
  %263 = load double*, double** %wp, align 8, !tbaa !1
  %incdec.ptr281 = getelementptr inbounds double, double* %263, i32 1
  store double* %incdec.ptr281, double** %wp, align 8, !tbaa !1
  %264 = load double, double* %263, align 8, !tbaa !12
  %mul282 = fmul double %conv280, %264
  %265 = load double, double* %s, align 8, !tbaa !12
  %sub283 = fsub double %265, %mul282
  store double %sub283, double* %s, align 8, !tbaa !12
  %266 = load double*, double** %in.addr, align 8, !tbaa !1
  %incdec.ptr284 = getelementptr inbounds double, double* %266, i32 1
  store double* %incdec.ptr284, double** %in.addr, align 8, !tbaa !1
  store double* getelementptr inbounds ([16 x [31 x double]], [16 x [31 x double]]* @mm, i32 0, i64 0, i64 0), double** %wp, align 8, !tbaa !1
  store i32 15, i32* %i, align 4, !tbaa !5
  br label %for.cond.285

for.cond.285:                                     ; preds = %for.inc.313, %for.end
  %267 = load i32, i32* %i, align 4, !tbaa !5
  %cmp286 = icmp sge i32 %267, 0
  br i1 %cmp286, label %for.body.288, label %for.end.315

for.body.288:                                     ; preds = %for.cond.285
  %268 = bitcast i32* %j to i8*
  call void @llvm.lifetime.start(i64 4, i8* %268) #1
  %269 = bitcast double* %s0 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %269) #1
  %270 = load double, double* %s, align 8, !tbaa !12
  store double %270, double* %s0, align 8, !tbaa !12
  %271 = bitcast double* %s1 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %271) #1
  %272 = load double, double* %t, align 8, !tbaa !12
  %273 = load double*, double** %wp, align 8, !tbaa !1
  %incdec.ptr289 = getelementptr inbounds double, double* %273, i32 1
  store double* %incdec.ptr289, double** %wp, align 8, !tbaa !1
  %274 = load double, double* %273, align 8, !tbaa !12
  %mul290 = fmul double %272, %274
  store double %mul290, double* %s1, align 8, !tbaa !12
  store i32 14, i32* %j, align 4, !tbaa !5
  br label %for.cond.291

for.cond.291:                                     ; preds = %for.inc.303, %for.body.288
  %275 = load i32, i32* %j, align 4, !tbaa !5
  %cmp292 = icmp sge i32 %275, 0
  br i1 %cmp292, label %for.body.294, label %for.end.305

for.body.294:                                     ; preds = %for.cond.291
  %276 = load double*, double** %wp, align 8, !tbaa !1
  %incdec.ptr295 = getelementptr inbounds double, double* %276, i32 1
  store double* %incdec.ptr295, double** %wp, align 8, !tbaa !1
  %277 = load double, double* %276, align 8, !tbaa !12
  %278 = load double*, double** %in.addr, align 8, !tbaa !1
  %incdec.ptr296 = getelementptr inbounds double, double* %278, i32 1
  store double* %incdec.ptr296, double** %in.addr, align 8, !tbaa !1
  %279 = load double, double* %278, align 8, !tbaa !12
  %mul297 = fmul double %277, %279
  %280 = load double, double* %s0, align 8, !tbaa !12
  %add298 = fadd double %280, %mul297
  store double %add298, double* %s0, align 8, !tbaa !12
  %281 = load double*, double** %wp, align 8, !tbaa !1
  %incdec.ptr299 = getelementptr inbounds double, double* %281, i32 1
  store double* %incdec.ptr299, double** %wp, align 8, !tbaa !1
  %282 = load double, double* %281, align 8, !tbaa !12
  %283 = load double*, double** %in.addr, align 8, !tbaa !1
  %incdec.ptr300 = getelementptr inbounds double, double* %283, i32 1
  store double* %incdec.ptr300, double** %in.addr, align 8, !tbaa !1
  %284 = load double, double* %283, align 8, !tbaa !12
  %mul301 = fmul double %282, %284
  %285 = load double, double* %s1, align 8, !tbaa !12
  %add302 = fadd double %285, %mul301
  store double %add302, double* %s1, align 8, !tbaa !12
  br label %for.inc.303

for.inc.303:                                      ; preds = %for.body.294
  %286 = load i32, i32* %j, align 4, !tbaa !5
  %dec304 = add nsw i32 %286, -1
  store i32 %dec304, i32* %j, align 4, !tbaa !5
  br label %for.cond.291

for.end.305:                                      ; preds = %for.cond.291
  %287 = load double*, double** %in.addr, align 8, !tbaa !1
  %add.ptr = getelementptr inbounds double, double* %287, i64 -30
  store double* %add.ptr, double** %in.addr, align 8, !tbaa !1
  %288 = load double, double* %s0, align 8, !tbaa !12
  %289 = load double, double* %s1, align 8, !tbaa !12
  %add306 = fadd double %288, %289
  %290 = load i32, i32* %i, align 4, !tbaa !5
  %idxprom307 = sext i32 %290 to i64
  %291 = load double*, double** %d.addr, align 8, !tbaa !1
  %arrayidx308 = getelementptr inbounds double, double* %291, i64 %idxprom307
  store double %add306, double* %arrayidx308, align 8, !tbaa !12
  %292 = load double, double* %s0, align 8, !tbaa !12
  %293 = load double, double* %s1, align 8, !tbaa !12
  %sub309 = fsub double %292, %293
  %294 = load i32, i32* %i, align 4, !tbaa !5
  %sub310 = sub nsw i32 31, %294
  %idxprom311 = sext i32 %sub310 to i64
  %295 = load double*, double** %d.addr, align 8, !tbaa !1
  %arrayidx312 = getelementptr inbounds double, double* %295, i64 %idxprom311
  store double %sub309, double* %arrayidx312, align 8, !tbaa !12
  %296 = bitcast double* %s1 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %296) #1
  %297 = bitcast double* %s0 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %297) #1
  %298 = bitcast i32* %j to i8*
  call void @llvm.lifetime.end(i64 4, i8* %298) #1
  br label %for.inc.313

for.inc.313:                                      ; preds = %for.end.305
  %299 = load i32, i32* %i, align 4, !tbaa !5
  %dec314 = add nsw i32 %299, -1
  store i32 %dec314, i32* %i, align 4, !tbaa !5
  br label %for.cond.285

for.end.315:                                      ; preds = %for.cond.285
  %300 = bitcast double** %wp to i8*
  call void @llvm.lifetime.end(i64 8, i8* %300) #1
  %301 = bitcast double* %t to i8*
  call void @llvm.lifetime.end(i64 8, i8* %301) #1
  %302 = bitcast double* %s to i8*
  call void @llvm.lifetime.end(i64 8, i8* %302) #1
  %303 = bitcast i32* %i to i8*
  call void @llvm.lifetime.end(i64 4, i8* %303) #1
  ret void
}

; Function Attrs: nounwind
declare double @cos(double) #2

; Function Attrs: nounwind
declare void @llvm.lifetime.end(i64, i8* nocapture) #1

; Function Attrs: nounwind
declare void @llvm.memset.p0i8.i64(i8* nocapture, i8, i64, i32, i1) #1

; Function Attrs: nounwind uwtable
define internal void @mdct_short(double* %out, double* %in) #0 {
entry:
  %out.addr = alloca double*, align 8
  %in.addr = alloca double*, align 8
  %m = alloca i32, align 4
  %l = alloca i32, align 4
  %a0 = alloca double, align 8
  %a1 = alloca double, align 8
  %a2 = alloca double, align 8
  %a3 = alloca double, align 8
  %a4 = alloca double, align 8
  %a5 = alloca double, align 8
  store double* %out, double** %out.addr, align 8, !tbaa !1
  store double* %in, double** %in.addr, align 8, !tbaa !1
  %0 = bitcast i32* %m to i8*
  call void @llvm.lifetime.start(i64 4, i8* %0) #1
  store i32 5, i32* %m, align 4, !tbaa !5
  br label %for.cond

for.cond:                                         ; preds = %for.inc.56, %entry
  %1 = load i32, i32* %m, align 4, !tbaa !5
  %cmp = icmp sge i32 %1, 0
  br i1 %cmp, label %for.body, label %for.end.58

for.body:                                         ; preds = %for.cond
  %2 = bitcast i32* %l to i8*
  call void @llvm.lifetime.start(i64 4, i8* %2) #1
  %3 = bitcast double* %a0 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %3) #1
  %4 = bitcast double* %a1 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %4) #1
  %5 = bitcast double* %a2 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %5) #1
  %6 = bitcast double* %a3 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %6) #1
  %7 = bitcast double* %a4 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %7) #1
  %8 = bitcast double* %a5 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %8) #1
  %9 = load i32, i32* %m, align 4, !tbaa !5
  %idxprom = sext i32 %9 to i64
  %arrayidx = getelementptr inbounds [6 x [6 x double]], [6 x [6 x double]]* @cos_s, i32 0, i64 %idxprom
  %arrayidx1 = getelementptr inbounds [6 x double], [6 x double]* %arrayidx, i32 0, i64 0
  %10 = load double, double* %arrayidx1, align 8, !tbaa !12
  store double %10, double* %a0, align 8, !tbaa !12
  %11 = load i32, i32* %m, align 4, !tbaa !5
  %idxprom2 = sext i32 %11 to i64
  %arrayidx3 = getelementptr inbounds [6 x [6 x double]], [6 x [6 x double]]* @cos_s, i32 0, i64 %idxprom2
  %arrayidx4 = getelementptr inbounds [6 x double], [6 x double]* %arrayidx3, i32 0, i64 1
  %12 = load double, double* %arrayidx4, align 8, !tbaa !12
  store double %12, double* %a1, align 8, !tbaa !12
  %13 = load i32, i32* %m, align 4, !tbaa !5
  %idxprom5 = sext i32 %13 to i64
  %arrayidx6 = getelementptr inbounds [6 x [6 x double]], [6 x [6 x double]]* @cos_s, i32 0, i64 %idxprom5
  %arrayidx7 = getelementptr inbounds [6 x double], [6 x double]* %arrayidx6, i32 0, i64 2
  %14 = load double, double* %arrayidx7, align 8, !tbaa !12
  store double %14, double* %a2, align 8, !tbaa !12
  %15 = load i32, i32* %m, align 4, !tbaa !5
  %idxprom8 = sext i32 %15 to i64
  %arrayidx9 = getelementptr inbounds [6 x [6 x double]], [6 x [6 x double]]* @cos_s, i32 0, i64 %idxprom8
  %arrayidx10 = getelementptr inbounds [6 x double], [6 x double]* %arrayidx9, i32 0, i64 3
  %16 = load double, double* %arrayidx10, align 8, !tbaa !12
  store double %16, double* %a3, align 8, !tbaa !12
  %17 = load i32, i32* %m, align 4, !tbaa !5
  %idxprom11 = sext i32 %17 to i64
  %arrayidx12 = getelementptr inbounds [6 x [6 x double]], [6 x [6 x double]]* @cos_s, i32 0, i64 %idxprom11
  %arrayidx13 = getelementptr inbounds [6 x double], [6 x double]* %arrayidx12, i32 0, i64 4
  %18 = load double, double* %arrayidx13, align 8, !tbaa !12
  store double %18, double* %a4, align 8, !tbaa !12
  %19 = load i32, i32* %m, align 4, !tbaa !5
  %idxprom14 = sext i32 %19 to i64
  %arrayidx15 = getelementptr inbounds [6 x [6 x double]], [6 x [6 x double]]* @cos_s, i32 0, i64 %idxprom14
  %arrayidx16 = getelementptr inbounds [6 x double], [6 x double]* %arrayidx15, i32 0, i64 5
  %20 = load double, double* %arrayidx16, align 8, !tbaa !12
  store double %20, double* %a5, align 8, !tbaa !12
  store i32 2, i32* %l, align 4, !tbaa !5
  br label %for.cond.17

for.cond.17:                                      ; preds = %for.inc, %for.body
  %21 = load i32, i32* %l, align 4, !tbaa !5
  %cmp18 = icmp sge i32 %21, 0
  br i1 %cmp18, label %for.body.19, label %for.end

for.body.19:                                      ; preds = %for.cond.17
  %22 = load double, double* %a0, align 8, !tbaa !12
  %23 = load i32, i32* %l, align 4, !tbaa !5
  %mul = mul nsw i32 6, %23
  %idxprom20 = sext i32 %mul to i64
  %24 = load double*, double** %in.addr, align 8, !tbaa !1
  %arrayidx21 = getelementptr inbounds double, double* %24, i64 %idxprom20
  %25 = load double, double* %arrayidx21, align 8, !tbaa !12
  %mul22 = fmul double %22, %25
  %26 = load double, double* %a1, align 8, !tbaa !12
  %27 = load i32, i32* %l, align 4, !tbaa !5
  %mul23 = mul nsw i32 6, %27
  %add = add nsw i32 %mul23, 1
  %idxprom24 = sext i32 %add to i64
  %28 = load double*, double** %in.addr, align 8, !tbaa !1
  %arrayidx25 = getelementptr inbounds double, double* %28, i64 %idxprom24
  %29 = load double, double* %arrayidx25, align 8, !tbaa !12
  %mul26 = fmul double %26, %29
  %add27 = fadd double %mul22, %mul26
  %30 = load double, double* %a2, align 8, !tbaa !12
  %31 = load i32, i32* %l, align 4, !tbaa !5
  %mul28 = mul nsw i32 6, %31
  %add29 = add nsw i32 %mul28, 2
  %idxprom30 = sext i32 %add29 to i64
  %32 = load double*, double** %in.addr, align 8, !tbaa !1
  %arrayidx31 = getelementptr inbounds double, double* %32, i64 %idxprom30
  %33 = load double, double* %arrayidx31, align 8, !tbaa !12
  %mul32 = fmul double %30, %33
  %add33 = fadd double %add27, %mul32
  %34 = load double, double* %a3, align 8, !tbaa !12
  %35 = load i32, i32* %l, align 4, !tbaa !5
  %mul34 = mul nsw i32 6, %35
  %add35 = add nsw i32 %mul34, 3
  %idxprom36 = sext i32 %add35 to i64
  %36 = load double*, double** %in.addr, align 8, !tbaa !1
  %arrayidx37 = getelementptr inbounds double, double* %36, i64 %idxprom36
  %37 = load double, double* %arrayidx37, align 8, !tbaa !12
  %mul38 = fmul double %34, %37
  %add39 = fadd double %add33, %mul38
  %38 = load double, double* %a4, align 8, !tbaa !12
  %39 = load i32, i32* %l, align 4, !tbaa !5
  %mul40 = mul nsw i32 6, %39
  %add41 = add nsw i32 %mul40, 4
  %idxprom42 = sext i32 %add41 to i64
  %40 = load double*, double** %in.addr, align 8, !tbaa !1
  %arrayidx43 = getelementptr inbounds double, double* %40, i64 %idxprom42
  %41 = load double, double* %arrayidx43, align 8, !tbaa !12
  %mul44 = fmul double %38, %41
  %add45 = fadd double %add39, %mul44
  %42 = load double, double* %a5, align 8, !tbaa !12
  %43 = load i32, i32* %l, align 4, !tbaa !5
  %mul46 = mul nsw i32 6, %43
  %add47 = add nsw i32 %mul46, 5
  %idxprom48 = sext i32 %add47 to i64
  %44 = load double*, double** %in.addr, align 8, !tbaa !1
  %arrayidx49 = getelementptr inbounds double, double* %44, i64 %idxprom48
  %45 = load double, double* %arrayidx49, align 8, !tbaa !12
  %mul50 = fmul double %42, %45
  %add51 = fadd double %add45, %mul50
  %46 = load i32, i32* %m, align 4, !tbaa !5
  %mul52 = mul nsw i32 3, %46
  %47 = load i32, i32* %l, align 4, !tbaa !5
  %add53 = add nsw i32 %mul52, %47
  %idxprom54 = sext i32 %add53 to i64
  %48 = load double*, double** %out.addr, align 8, !tbaa !1
  %arrayidx55 = getelementptr inbounds double, double* %48, i64 %idxprom54
  store double %add51, double* %arrayidx55, align 8, !tbaa !12
  br label %for.inc

for.inc:                                          ; preds = %for.body.19
  %49 = load i32, i32* %l, align 4, !tbaa !5
  %dec = add nsw i32 %49, -1
  store i32 %dec, i32* %l, align 4, !tbaa !5
  br label %for.cond.17

for.end:                                          ; preds = %for.cond.17
  %50 = bitcast double* %a5 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %50) #1
  %51 = bitcast double* %a4 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %51) #1
  %52 = bitcast double* %a3 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %52) #1
  %53 = bitcast double* %a2 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %53) #1
  %54 = bitcast double* %a1 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %54) #1
  %55 = bitcast double* %a0 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %55) #1
  %56 = bitcast i32* %l to i8*
  call void @llvm.lifetime.end(i64 4, i8* %56) #1
  br label %for.inc.56

for.inc.56:                                       ; preds = %for.end
  %57 = load i32, i32* %m, align 4, !tbaa !5
  %dec57 = add nsw i32 %57, -1
  store i32 %dec57, i32* %m, align 4, !tbaa !5
  br label %for.cond

for.end.58:                                       ; preds = %for.cond
  %58 = bitcast i32* %m to i8*
  call void @llvm.lifetime.end(i64 4, i8* %58) #1
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @mdct_long(double* %out, double* %in) #0 {
entry:
  %out.addr = alloca double*, align 8
  %in.addr = alloca double*, align 8
  %s0 = alloca double, align 8
  %s1 = alloca double, align 8
  %s2 = alloca double, align 8
  %s3 = alloca double, align 8
  %s4 = alloca double, align 8
  %s5 = alloca double, align 8
  %j = alloca i32, align 4
  %cos_l0 = alloca double*, align 8
  store double* %out, double** %out.addr, align 8, !tbaa !1
  store double* %in, double** %in.addr, align 8, !tbaa !1
  %0 = bitcast double* %s0 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #1
  %1 = bitcast double* %s1 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %1) #1
  %2 = bitcast double* %s2 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %2) #1
  %3 = bitcast double* %s3 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %3) #1
  %4 = bitcast double* %s4 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %4) #1
  %5 = bitcast double* %s5 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %5) #1
  %6 = bitcast i32* %j to i8*
  call void @llvm.lifetime.start(i64 4, i8* %6) #1
  store i32 11, i32* %j, align 4, !tbaa !5
  %7 = bitcast double** %cos_l0 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %7) #1
  store double* getelementptr inbounds ([244 x double], [244 x double]* @cos_l, i32 0, i32 0), double** %cos_l0, align 8, !tbaa !1
  br label %do.body

do.body:                                          ; preds = %do.cond, %entry
  %8 = load double*, double** %in.addr, align 8, !tbaa !1
  %arrayidx = getelementptr inbounds double, double* %8, i64 0
  %9 = load double, double* %arrayidx, align 8, !tbaa !12
  %10 = load double*, double** %cos_l0, align 8, !tbaa !1
  %arrayidx1 = getelementptr inbounds double, double* %10, i64 0
  %11 = load double, double* %arrayidx1, align 8, !tbaa !12
  %mul = fmul double %9, %11
  %12 = load double*, double** %in.addr, align 8, !tbaa !1
  %arrayidx2 = getelementptr inbounds double, double* %12, i64 1
  %13 = load double, double* %arrayidx2, align 8, !tbaa !12
  %14 = load double*, double** %cos_l0, align 8, !tbaa !1
  %arrayidx3 = getelementptr inbounds double, double* %14, i64 1
  %15 = load double, double* %arrayidx3, align 8, !tbaa !12
  %mul4 = fmul double %13, %15
  %add = fadd double %mul, %mul4
  %16 = load double*, double** %in.addr, align 8, !tbaa !1
  %arrayidx5 = getelementptr inbounds double, double* %16, i64 2
  %17 = load double, double* %arrayidx5, align 8, !tbaa !12
  %18 = load double*, double** %cos_l0, align 8, !tbaa !1
  %arrayidx6 = getelementptr inbounds double, double* %18, i64 2
  %19 = load double, double* %arrayidx6, align 8, !tbaa !12
  %mul7 = fmul double %17, %19
  %add8 = fadd double %add, %mul7
  %20 = load double*, double** %in.addr, align 8, !tbaa !1
  %arrayidx9 = getelementptr inbounds double, double* %20, i64 3
  %21 = load double, double* %arrayidx9, align 8, !tbaa !12
  %22 = load double*, double** %cos_l0, align 8, !tbaa !1
  %arrayidx10 = getelementptr inbounds double, double* %22, i64 3
  %23 = load double, double* %arrayidx10, align 8, !tbaa !12
  %mul11 = fmul double %21, %23
  %add12 = fadd double %add8, %mul11
  %24 = load double*, double** %in.addr, align 8, !tbaa !1
  %arrayidx13 = getelementptr inbounds double, double* %24, i64 4
  %25 = load double, double* %arrayidx13, align 8, !tbaa !12
  %26 = load double*, double** %cos_l0, align 8, !tbaa !1
  %arrayidx14 = getelementptr inbounds double, double* %26, i64 4
  %27 = load double, double* %arrayidx14, align 8, !tbaa !12
  %mul15 = fmul double %25, %27
  %add16 = fadd double %add12, %mul15
  %28 = load double*, double** %in.addr, align 8, !tbaa !1
  %arrayidx17 = getelementptr inbounds double, double* %28, i64 5
  %29 = load double, double* %arrayidx17, align 8, !tbaa !12
  %30 = load double*, double** %cos_l0, align 8, !tbaa !1
  %arrayidx18 = getelementptr inbounds double, double* %30, i64 5
  %31 = load double, double* %arrayidx18, align 8, !tbaa !12
  %mul19 = fmul double %29, %31
  %add20 = fadd double %add16, %mul19
  %32 = load double*, double** %in.addr, align 8, !tbaa !1
  %arrayidx21 = getelementptr inbounds double, double* %32, i64 6
  %33 = load double, double* %arrayidx21, align 8, !tbaa !12
  %34 = load double*, double** %cos_l0, align 8, !tbaa !1
  %arrayidx22 = getelementptr inbounds double, double* %34, i64 6
  %35 = load double, double* %arrayidx22, align 8, !tbaa !12
  %mul23 = fmul double %33, %35
  %add24 = fadd double %add20, %mul23
  %36 = load double*, double** %in.addr, align 8, !tbaa !1
  %arrayidx25 = getelementptr inbounds double, double* %36, i64 7
  %37 = load double, double* %arrayidx25, align 8, !tbaa !12
  %38 = load double*, double** %cos_l0, align 8, !tbaa !1
  %arrayidx26 = getelementptr inbounds double, double* %38, i64 7
  %39 = load double, double* %arrayidx26, align 8, !tbaa !12
  %mul27 = fmul double %37, %39
  %add28 = fadd double %add24, %mul27
  %40 = load double*, double** %in.addr, align 8, !tbaa !1
  %arrayidx29 = getelementptr inbounds double, double* %40, i64 8
  %41 = load double, double* %arrayidx29, align 8, !tbaa !12
  %42 = load double*, double** %cos_l0, align 8, !tbaa !1
  %arrayidx30 = getelementptr inbounds double, double* %42, i64 8
  %43 = load double, double* %arrayidx30, align 8, !tbaa !12
  %mul31 = fmul double %41, %43
  %add32 = fadd double %add28, %mul31
  %44 = load double*, double** %in.addr, align 8, !tbaa !1
  %arrayidx33 = getelementptr inbounds double, double* %44, i64 9
  %45 = load double, double* %arrayidx33, align 8, !tbaa !12
  %46 = load double*, double** %cos_l0, align 8, !tbaa !1
  %arrayidx34 = getelementptr inbounds double, double* %46, i64 9
  %47 = load double, double* %arrayidx34, align 8, !tbaa !12
  %mul35 = fmul double %45, %47
  %add36 = fadd double %add32, %mul35
  %48 = load double*, double** %in.addr, align 8, !tbaa !1
  %arrayidx37 = getelementptr inbounds double, double* %48, i64 10
  %49 = load double, double* %arrayidx37, align 8, !tbaa !12
  %50 = load double*, double** %cos_l0, align 8, !tbaa !1
  %arrayidx38 = getelementptr inbounds double, double* %50, i64 10
  %51 = load double, double* %arrayidx38, align 8, !tbaa !12
  %mul39 = fmul double %49, %51
  %add40 = fadd double %add36, %mul39
  %52 = load double*, double** %in.addr, align 8, !tbaa !1
  %arrayidx41 = getelementptr inbounds double, double* %52, i64 11
  %53 = load double, double* %arrayidx41, align 8, !tbaa !12
  %54 = load double*, double** %cos_l0, align 8, !tbaa !1
  %arrayidx42 = getelementptr inbounds double, double* %54, i64 11
  %55 = load double, double* %arrayidx42, align 8, !tbaa !12
  %mul43 = fmul double %53, %55
  %add44 = fadd double %add40, %mul43
  %56 = load double*, double** %in.addr, align 8, !tbaa !1
  %arrayidx45 = getelementptr inbounds double, double* %56, i64 12
  %57 = load double, double* %arrayidx45, align 8, !tbaa !12
  %58 = load double*, double** %cos_l0, align 8, !tbaa !1
  %arrayidx46 = getelementptr inbounds double, double* %58, i64 12
  %59 = load double, double* %arrayidx46, align 8, !tbaa !12
  %mul47 = fmul double %57, %59
  %add48 = fadd double %add44, %mul47
  %60 = load double*, double** %in.addr, align 8, !tbaa !1
  %arrayidx49 = getelementptr inbounds double, double* %60, i64 13
  %61 = load double, double* %arrayidx49, align 8, !tbaa !12
  %62 = load double*, double** %cos_l0, align 8, !tbaa !1
  %arrayidx50 = getelementptr inbounds double, double* %62, i64 13
  %63 = load double, double* %arrayidx50, align 8, !tbaa !12
  %mul51 = fmul double %61, %63
  %add52 = fadd double %add48, %mul51
  %64 = load double*, double** %in.addr, align 8, !tbaa !1
  %arrayidx53 = getelementptr inbounds double, double* %64, i64 14
  %65 = load double, double* %arrayidx53, align 8, !tbaa !12
  %66 = load double*, double** %cos_l0, align 8, !tbaa !1
  %arrayidx54 = getelementptr inbounds double, double* %66, i64 14
  %67 = load double, double* %arrayidx54, align 8, !tbaa !12
  %mul55 = fmul double %65, %67
  %add56 = fadd double %add52, %mul55
  %68 = load double*, double** %in.addr, align 8, !tbaa !1
  %arrayidx57 = getelementptr inbounds double, double* %68, i64 15
  %69 = load double, double* %arrayidx57, align 8, !tbaa !12
  %70 = load double*, double** %cos_l0, align 8, !tbaa !1
  %arrayidx58 = getelementptr inbounds double, double* %70, i64 15
  %71 = load double, double* %arrayidx58, align 8, !tbaa !12
  %mul59 = fmul double %69, %71
  %add60 = fadd double %add56, %mul59
  %72 = load double*, double** %in.addr, align 8, !tbaa !1
  %arrayidx61 = getelementptr inbounds double, double* %72, i64 16
  %73 = load double, double* %arrayidx61, align 8, !tbaa !12
  %74 = load double*, double** %cos_l0, align 8, !tbaa !1
  %arrayidx62 = getelementptr inbounds double, double* %74, i64 16
  %75 = load double, double* %arrayidx62, align 8, !tbaa !12
  %mul63 = fmul double %73, %75
  %add64 = fadd double %add60, %mul63
  %76 = load double*, double** %in.addr, align 8, !tbaa !1
  %arrayidx65 = getelementptr inbounds double, double* %76, i64 17
  %77 = load double, double* %arrayidx65, align 8, !tbaa !12
  %78 = load double*, double** %cos_l0, align 8, !tbaa !1
  %arrayidx66 = getelementptr inbounds double, double* %78, i64 17
  %79 = load double, double* %arrayidx66, align 8, !tbaa !12
  %mul67 = fmul double %77, %79
  %add68 = fadd double %add64, %mul67
  %80 = load i32, i32* %j, align 4, !tbaa !5
  %idxprom = sext i32 %80 to i64
  %arrayidx69 = getelementptr inbounds [12 x i32], [12 x i32]* @all, i32 0, i64 %idxprom
  %81 = load i32, i32* %arrayidx69, align 4, !tbaa !5
  %idxprom70 = sext i32 %81 to i64
  %82 = load double*, double** %out.addr, align 8, !tbaa !1
  %arrayidx71 = getelementptr inbounds double, double* %82, i64 %idxprom70
  store double %add68, double* %arrayidx71, align 8, !tbaa !12
  %83 = load double*, double** %cos_l0, align 8, !tbaa !1
  %add.ptr = getelementptr inbounds double, double* %83, i64 18
  store double* %add.ptr, double** %cos_l0, align 8, !tbaa !1
  br label %do.cond

do.cond:                                          ; preds = %do.body
  %84 = load i32, i32* %j, align 4, !tbaa !5
  %dec = add nsw i32 %84, -1
  store i32 %dec, i32* %j, align 4, !tbaa !5
  %cmp = icmp sge i32 %dec, 0
  br i1 %cmp, label %do.body, label %do.end

do.end:                                           ; preds = %do.cond
  %85 = load double*, double** %in.addr, align 8, !tbaa !1
  %arrayidx72 = getelementptr inbounds double, double* %85, i64 0
  %86 = load double, double* %arrayidx72, align 8, !tbaa !12
  %87 = load double*, double** %in.addr, align 8, !tbaa !1
  %arrayidx73 = getelementptr inbounds double, double* %87, i64 5
  %88 = load double, double* %arrayidx73, align 8, !tbaa !12
  %add74 = fadd double %86, %88
  %89 = load double*, double** %in.addr, align 8, !tbaa !1
  %arrayidx75 = getelementptr inbounds double, double* %89, i64 15
  %90 = load double, double* %arrayidx75, align 8, !tbaa !12
  %add76 = fadd double %add74, %90
  store double %add76, double* %s0, align 8, !tbaa !12
  %91 = load double*, double** %in.addr, align 8, !tbaa !1
  %arrayidx77 = getelementptr inbounds double, double* %91, i64 1
  %92 = load double, double* %arrayidx77, align 8, !tbaa !12
  %93 = load double*, double** %in.addr, align 8, !tbaa !1
  %arrayidx78 = getelementptr inbounds double, double* %93, i64 4
  %94 = load double, double* %arrayidx78, align 8, !tbaa !12
  %add79 = fadd double %92, %94
  %95 = load double*, double** %in.addr, align 8, !tbaa !1
  %arrayidx80 = getelementptr inbounds double, double* %95, i64 16
  %96 = load double, double* %arrayidx80, align 8, !tbaa !12
  %add81 = fadd double %add79, %96
  store double %add81, double* %s1, align 8, !tbaa !12
  %97 = load double*, double** %in.addr, align 8, !tbaa !1
  %arrayidx82 = getelementptr inbounds double, double* %97, i64 2
  %98 = load double, double* %arrayidx82, align 8, !tbaa !12
  %99 = load double*, double** %in.addr, align 8, !tbaa !1
  %arrayidx83 = getelementptr inbounds double, double* %99, i64 3
  %100 = load double, double* %arrayidx83, align 8, !tbaa !12
  %add84 = fadd double %98, %100
  %101 = load double*, double** %in.addr, align 8, !tbaa !1
  %arrayidx85 = getelementptr inbounds double, double* %101, i64 17
  %102 = load double, double* %arrayidx85, align 8, !tbaa !12
  %add86 = fadd double %add84, %102
  store double %add86, double* %s2, align 8, !tbaa !12
  %103 = load double*, double** %in.addr, align 8, !tbaa !1
  %arrayidx87 = getelementptr inbounds double, double* %103, i64 6
  %104 = load double, double* %arrayidx87, align 8, !tbaa !12
  %105 = load double*, double** %in.addr, align 8, !tbaa !1
  %arrayidx88 = getelementptr inbounds double, double* %105, i64 9
  %106 = load double, double* %arrayidx88, align 8, !tbaa !12
  %sub = fsub double %104, %106
  %107 = load double*, double** %in.addr, align 8, !tbaa !1
  %arrayidx89 = getelementptr inbounds double, double* %107, i64 14
  %108 = load double, double* %arrayidx89, align 8, !tbaa !12
  %add90 = fadd double %sub, %108
  store double %add90, double* %s3, align 8, !tbaa !12
  %109 = load double*, double** %in.addr, align 8, !tbaa !1
  %arrayidx91 = getelementptr inbounds double, double* %109, i64 7
  %110 = load double, double* %arrayidx91, align 8, !tbaa !12
  %111 = load double*, double** %in.addr, align 8, !tbaa !1
  %arrayidx92 = getelementptr inbounds double, double* %111, i64 10
  %112 = load double, double* %arrayidx92, align 8, !tbaa !12
  %sub93 = fsub double %110, %112
  %113 = load double*, double** %in.addr, align 8, !tbaa !1
  %arrayidx94 = getelementptr inbounds double, double* %113, i64 13
  %114 = load double, double* %arrayidx94, align 8, !tbaa !12
  %add95 = fadd double %sub93, %114
  store double %add95, double* %s4, align 8, !tbaa !12
  %115 = load double*, double** %in.addr, align 8, !tbaa !1
  %arrayidx96 = getelementptr inbounds double, double* %115, i64 8
  %116 = load double, double* %arrayidx96, align 8, !tbaa !12
  %117 = load double*, double** %in.addr, align 8, !tbaa !1
  %arrayidx97 = getelementptr inbounds double, double* %117, i64 11
  %118 = load double, double* %arrayidx97, align 8, !tbaa !12
  %sub98 = fsub double %116, %118
  %119 = load double*, double** %in.addr, align 8, !tbaa !1
  %arrayidx99 = getelementptr inbounds double, double* %119, i64 12
  %120 = load double, double* %arrayidx99, align 8, !tbaa !12
  %add100 = fadd double %sub98, %120
  store double %add100, double* %s5, align 8, !tbaa !12
  %121 = load double, double* %s0, align 8, !tbaa !12
  %122 = load double*, double** %cos_l0, align 8, !tbaa !1
  %arrayidx101 = getelementptr inbounds double, double* %122, i64 0
  %123 = load double, double* %arrayidx101, align 8, !tbaa !12
  %mul102 = fmul double %121, %123
  %124 = load double, double* %s1, align 8, !tbaa !12
  %125 = load double*, double** %cos_l0, align 8, !tbaa !1
  %arrayidx103 = getelementptr inbounds double, double* %125, i64 1
  %126 = load double, double* %arrayidx103, align 8, !tbaa !12
  %mul104 = fmul double %124, %126
  %add105 = fadd double %mul102, %mul104
  %127 = load double, double* %s2, align 8, !tbaa !12
  %128 = load double*, double** %cos_l0, align 8, !tbaa !1
  %arrayidx106 = getelementptr inbounds double, double* %128, i64 2
  %129 = load double, double* %arrayidx106, align 8, !tbaa !12
  %mul107 = fmul double %127, %129
  %add108 = fadd double %add105, %mul107
  %130 = load double, double* %s3, align 8, !tbaa !12
  %131 = load double*, double** %cos_l0, align 8, !tbaa !1
  %arrayidx109 = getelementptr inbounds double, double* %131, i64 3
  %132 = load double, double* %arrayidx109, align 8, !tbaa !12
  %mul110 = fmul double %130, %132
  %add111 = fadd double %add108, %mul110
  %133 = load double, double* %s4, align 8, !tbaa !12
  %134 = load double*, double** %cos_l0, align 8, !tbaa !1
  %arrayidx112 = getelementptr inbounds double, double* %134, i64 4
  %135 = load double, double* %arrayidx112, align 8, !tbaa !12
  %mul113 = fmul double %133, %135
  %add114 = fadd double %add111, %mul113
  %136 = load double, double* %s5, align 8, !tbaa !12
  %137 = load double*, double** %cos_l0, align 8, !tbaa !1
  %arrayidx115 = getelementptr inbounds double, double* %137, i64 5
  %138 = load double, double* %arrayidx115, align 8, !tbaa !12
  %mul116 = fmul double %136, %138
  %add117 = fadd double %add114, %mul116
  %139 = load double*, double** %out.addr, align 8, !tbaa !1
  %arrayidx118 = getelementptr inbounds double, double* %139, i64 16
  store double %add117, double* %arrayidx118, align 8, !tbaa !12
  %140 = load double*, double** %cos_l0, align 8, !tbaa !1
  %add.ptr119 = getelementptr inbounds double, double* %140, i64 6
  store double* %add.ptr119, double** %cos_l0, align 8, !tbaa !1
  %141 = load double, double* %s0, align 8, !tbaa !12
  %142 = load double*, double** %cos_l0, align 8, !tbaa !1
  %arrayidx120 = getelementptr inbounds double, double* %142, i64 0
  %143 = load double, double* %arrayidx120, align 8, !tbaa !12
  %mul121 = fmul double %141, %143
  %144 = load double, double* %s1, align 8, !tbaa !12
  %145 = load double*, double** %cos_l0, align 8, !tbaa !1
  %arrayidx122 = getelementptr inbounds double, double* %145, i64 1
  %146 = load double, double* %arrayidx122, align 8, !tbaa !12
  %mul123 = fmul double %144, %146
  %add124 = fadd double %mul121, %mul123
  %147 = load double, double* %s2, align 8, !tbaa !12
  %148 = load double*, double** %cos_l0, align 8, !tbaa !1
  %arrayidx125 = getelementptr inbounds double, double* %148, i64 2
  %149 = load double, double* %arrayidx125, align 8, !tbaa !12
  %mul126 = fmul double %147, %149
  %add127 = fadd double %add124, %mul126
  %150 = load double, double* %s3, align 8, !tbaa !12
  %151 = load double*, double** %cos_l0, align 8, !tbaa !1
  %arrayidx128 = getelementptr inbounds double, double* %151, i64 3
  %152 = load double, double* %arrayidx128, align 8, !tbaa !12
  %mul129 = fmul double %150, %152
  %add130 = fadd double %add127, %mul129
  %153 = load double, double* %s4, align 8, !tbaa !12
  %154 = load double*, double** %cos_l0, align 8, !tbaa !1
  %arrayidx131 = getelementptr inbounds double, double* %154, i64 4
  %155 = load double, double* %arrayidx131, align 8, !tbaa !12
  %mul132 = fmul double %153, %155
  %add133 = fadd double %add130, %mul132
  %156 = load double, double* %s5, align 8, !tbaa !12
  %157 = load double*, double** %cos_l0, align 8, !tbaa !1
  %arrayidx134 = getelementptr inbounds double, double* %157, i64 5
  %158 = load double, double* %arrayidx134, align 8, !tbaa !12
  %mul135 = fmul double %156, %158
  %add136 = fadd double %add133, %mul135
  %159 = load double*, double** %out.addr, align 8, !tbaa !1
  %arrayidx137 = getelementptr inbounds double, double* %159, i64 10
  store double %add136, double* %arrayidx137, align 8, !tbaa !12
  %160 = load double*, double** %cos_l0, align 8, !tbaa !1
  %add.ptr138 = getelementptr inbounds double, double* %160, i64 6
  store double* %add.ptr138, double** %cos_l0, align 8, !tbaa !1
  %161 = load double, double* %s0, align 8, !tbaa !12
  %162 = load double*, double** %cos_l0, align 8, !tbaa !1
  %arrayidx139 = getelementptr inbounds double, double* %162, i64 0
  %163 = load double, double* %arrayidx139, align 8, !tbaa !12
  %mul140 = fmul double %161, %163
  %164 = load double, double* %s1, align 8, !tbaa !12
  %165 = load double*, double** %cos_l0, align 8, !tbaa !1
  %arrayidx141 = getelementptr inbounds double, double* %165, i64 1
  %166 = load double, double* %arrayidx141, align 8, !tbaa !12
  %mul142 = fmul double %164, %166
  %add143 = fadd double %mul140, %mul142
  %167 = load double, double* %s2, align 8, !tbaa !12
  %168 = load double*, double** %cos_l0, align 8, !tbaa !1
  %arrayidx144 = getelementptr inbounds double, double* %168, i64 2
  %169 = load double, double* %arrayidx144, align 8, !tbaa !12
  %mul145 = fmul double %167, %169
  %add146 = fadd double %add143, %mul145
  %170 = load double, double* %s3, align 8, !tbaa !12
  %171 = load double*, double** %cos_l0, align 8, !tbaa !1
  %arrayidx147 = getelementptr inbounds double, double* %171, i64 3
  %172 = load double, double* %arrayidx147, align 8, !tbaa !12
  %mul148 = fmul double %170, %172
  %add149 = fadd double %add146, %mul148
  %173 = load double, double* %s4, align 8, !tbaa !12
  %174 = load double*, double** %cos_l0, align 8, !tbaa !1
  %arrayidx150 = getelementptr inbounds double, double* %174, i64 4
  %175 = load double, double* %arrayidx150, align 8, !tbaa !12
  %mul151 = fmul double %173, %175
  %add152 = fadd double %add149, %mul151
  %176 = load double, double* %s5, align 8, !tbaa !12
  %177 = load double*, double** %cos_l0, align 8, !tbaa !1
  %arrayidx153 = getelementptr inbounds double, double* %177, i64 5
  %178 = load double, double* %arrayidx153, align 8, !tbaa !12
  %mul154 = fmul double %176, %178
  %add155 = fadd double %add152, %mul154
  %179 = load double*, double** %out.addr, align 8, !tbaa !1
  %arrayidx156 = getelementptr inbounds double, double* %179, i64 7
  store double %add155, double* %arrayidx156, align 8, !tbaa !12
  %180 = load double*, double** %cos_l0, align 8, !tbaa !1
  %add.ptr157 = getelementptr inbounds double, double* %180, i64 6
  store double* %add.ptr157, double** %cos_l0, align 8, !tbaa !1
  %181 = load double, double* %s0, align 8, !tbaa !12
  %182 = load double*, double** %cos_l0, align 8, !tbaa !1
  %arrayidx158 = getelementptr inbounds double, double* %182, i64 0
  %183 = load double, double* %arrayidx158, align 8, !tbaa !12
  %mul159 = fmul double %181, %183
  %184 = load double, double* %s1, align 8, !tbaa !12
  %185 = load double*, double** %cos_l0, align 8, !tbaa !1
  %arrayidx160 = getelementptr inbounds double, double* %185, i64 1
  %186 = load double, double* %arrayidx160, align 8, !tbaa !12
  %mul161 = fmul double %184, %186
  %add162 = fadd double %mul159, %mul161
  %187 = load double, double* %s2, align 8, !tbaa !12
  %188 = load double*, double** %cos_l0, align 8, !tbaa !1
  %arrayidx163 = getelementptr inbounds double, double* %188, i64 2
  %189 = load double, double* %arrayidx163, align 8, !tbaa !12
  %mul164 = fmul double %187, %189
  %add165 = fadd double %add162, %mul164
  %190 = load double, double* %s3, align 8, !tbaa !12
  %191 = load double*, double** %cos_l0, align 8, !tbaa !1
  %arrayidx166 = getelementptr inbounds double, double* %191, i64 3
  %192 = load double, double* %arrayidx166, align 8, !tbaa !12
  %mul167 = fmul double %190, %192
  %add168 = fadd double %add165, %mul167
  %193 = load double, double* %s4, align 8, !tbaa !12
  %194 = load double*, double** %cos_l0, align 8, !tbaa !1
  %arrayidx169 = getelementptr inbounds double, double* %194, i64 4
  %195 = load double, double* %arrayidx169, align 8, !tbaa !12
  %mul170 = fmul double %193, %195
  %add171 = fadd double %add168, %mul170
  %196 = load double, double* %s5, align 8, !tbaa !12
  %197 = load double*, double** %cos_l0, align 8, !tbaa !1
  %arrayidx172 = getelementptr inbounds double, double* %197, i64 5
  %198 = load double, double* %arrayidx172, align 8, !tbaa !12
  %mul173 = fmul double %196, %198
  %add174 = fadd double %add171, %mul173
  %199 = load double*, double** %out.addr, align 8, !tbaa !1
  %arrayidx175 = getelementptr inbounds double, double* %199, i64 1
  store double %add174, double* %arrayidx175, align 8, !tbaa !12
  %200 = load double*, double** %cos_l0, align 8, !tbaa !1
  %add.ptr176 = getelementptr inbounds double, double* %200, i64 6
  store double* %add.ptr176, double** %cos_l0, align 8, !tbaa !1
  %201 = load double, double* %s0, align 8, !tbaa !12
  %202 = load double, double* %s1, align 8, !tbaa !12
  %sub177 = fsub double %201, %202
  %203 = load double, double* %s5, align 8, !tbaa !12
  %add178 = fadd double %sub177, %203
  store double %add178, double* %s0, align 8, !tbaa !12
  %204 = load double, double* %s2, align 8, !tbaa !12
  %205 = load double, double* %s3, align 8, !tbaa !12
  %sub179 = fsub double %204, %205
  %206 = load double, double* %s4, align 8, !tbaa !12
  %sub180 = fsub double %sub179, %206
  store double %sub180, double* %s2, align 8, !tbaa !12
  %207 = load double, double* %s0, align 8, !tbaa !12
  %208 = load double*, double** %cos_l0, align 8, !tbaa !1
  %arrayidx181 = getelementptr inbounds double, double* %208, i64 0
  %209 = load double, double* %arrayidx181, align 8, !tbaa !12
  %mul182 = fmul double %207, %209
  %210 = load double, double* %s2, align 8, !tbaa !12
  %211 = load double*, double** %cos_l0, align 8, !tbaa !1
  %arrayidx183 = getelementptr inbounds double, double* %211, i64 1
  %212 = load double, double* %arrayidx183, align 8, !tbaa !12
  %mul184 = fmul double %210, %212
  %add185 = fadd double %mul182, %mul184
  %213 = load double*, double** %out.addr, align 8, !tbaa !1
  %arrayidx186 = getelementptr inbounds double, double* %213, i64 13
  store double %add185, double* %arrayidx186, align 8, !tbaa !12
  %214 = load double, double* %s0, align 8, !tbaa !12
  %215 = load double*, double** %cos_l0, align 8, !tbaa !1
  %arrayidx187 = getelementptr inbounds double, double* %215, i64 2
  %216 = load double, double* %arrayidx187, align 8, !tbaa !12
  %mul188 = fmul double %214, %216
  %217 = load double, double* %s2, align 8, !tbaa !12
  %218 = load double*, double** %cos_l0, align 8, !tbaa !1
  %arrayidx189 = getelementptr inbounds double, double* %218, i64 3
  %219 = load double, double* %arrayidx189, align 8, !tbaa !12
  %mul190 = fmul double %217, %219
  %add191 = fadd double %mul188, %mul190
  %220 = load double*, double** %out.addr, align 8, !tbaa !1
  %arrayidx192 = getelementptr inbounds double, double* %220, i64 4
  store double %add191, double* %arrayidx192, align 8, !tbaa !12
  %221 = bitcast double** %cos_l0 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %221) #1
  %222 = bitcast i32* %j to i8*
  call void @llvm.lifetime.end(i64 4, i8* %222) #1
  %223 = bitcast double* %s5 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %223) #1
  %224 = bitcast double* %s4 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %224) #1
  %225 = bitcast double* %s3 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %225) #1
  %226 = bitcast double* %s2 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %226) #1
  %227 = bitcast double* %s1 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %227) #1
  %228 = bitcast double* %s0 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %228) #1
  ret void
}

; Function Attrs: nounwind
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* nocapture, i8* nocapture readonly, i64, i32, i1) #1

; Function Attrs: nounwind
declare double @sqrt(double) #2

; Function Attrs: nounwind
declare double @sin(double) #2

; Function Attrs: nounwind
declare double @tan(double) #2

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { nounwind "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.ident = !{!0}

!0 = !{!"clang version 3.7.0 (tags/RELEASE_370/final)"}
!1 = !{!2, !2, i64 0}
!2 = !{!"any pointer", !3, i64 0}
!3 = !{!"omnipotent char", !4, i64 0}
!4 = !{!"Simple C/C++ TBAA"}
!5 = !{!6, !6, i64 0}
!6 = !{!"int", !3, i64 0}
!7 = !{!8, !6, i64 204}
!8 = !{!"", !9, i64 0, !6, i64 8, !6, i64 12, !6, i64 16, !6, i64 20, !6, i64 24, !6, i64 28, !6, i64 32, !6, i64 36, !6, i64 40, !6, i64 44, !6, i64 48, !6, i64 52, !6, i64 56, !6, i64 60, !6, i64 64, !6, i64 68, !6, i64 72, !6, i64 76, !6, i64 80, !6, i64 84, !6, i64 88, !6, i64 92, !6, i64 96, !6, i64 100, !6, i64 104, !6, i64 108, !6, i64 112, !6, i64 116, !3, i64 120, !6, i64 124, !2, i64 128, !2, i64 136, !6, i64 144, !6, i64 148, !10, i64 152, !6, i64 156, !6, i64 160, !6, i64 164, !9, i64 168, !9, i64 176, !6, i64 184, !6, i64 188, !6, i64 192, !6, i64 196, !6, i64 200, !6, i64 204, !6, i64 208, !6, i64 212, !10, i64 216, !6, i64 220, !6, i64 224, !6, i64 228, !10, i64 232, !10, i64 236, !10, i64 240, !10, i64 244, !6, i64 248, !6, i64 252, !6, i64 256, !6, i64 260, !6, i64 264, !6, i64 268, !6, i64 272, !6, i64 276}
!9 = !{!"long", !3, i64 0}
!10 = !{!"float", !3, i64 0}
!11 = !{!8, !6, i64 200}
!12 = !{!13, !13, i64 0}
!13 = !{!"double", !3, i64 0}
!14 = !{!8, !6, i64 256}
!15 = !{!8, !6, i64 252}
!16 = !{!8, !6, i64 248}
!17 = !{!8, !10, i64 232}
!18 = !{!8, !10, i64 236}
!19 = !{!8, !10, i64 240}
!20 = !{!8, !10, i64 244}
!21 = !{!22, !6, i64 24}
!22 = !{!"", !6, i64 0, !6, i64 4, !6, i64 8, !6, i64 12, !6, i64 16, !6, i64 20, !6, i64 24, !6, i64 28, !3, i64 32, !3, i64 44, !6, i64 56, !6, i64 60, !6, i64 64, !6, i64 68, !6, i64 72, !6, i64 76, !6, i64 80, !6, i64 84, !6, i64 88, !2, i64 96, !3, i64 104}
!23 = !{!24, !24, i64 0}
!24 = !{!"short", !3, i64 0}
