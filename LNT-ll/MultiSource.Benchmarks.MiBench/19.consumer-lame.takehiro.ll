; ModuleID = './MultiSource.Benchmarks.MiBench/19.consumer-lame.takehiro.bc'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.anon = type { i32, i32 }
%struct.scalefac_struct = type { [23 x i32], [14 x i32] }
%struct.huffcodetab = type { i32, i32, i64*, i8* }
%struct.lame_global_flags = type { i64, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i8*, i8*, i32, i32, float, i32, i32, i32, i64, i64, i32, i32, i32, i32, i32, i32, i32, i32, float, i32, i32, i32, float, float, float, float, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.gr_info = type { i32, i32, i32, i32, i32, i32, i32, i32, [3 x i32], [3 x i32], i32, i32, i32, i32, i32, i32, i32, i32, i32, i32*, [4 x i32] }
%struct.III_side_info_t = type { i32, i32, i32, [2 x [4 x i32]], [2 x %struct.anon.0] }
%struct.anon.0 = type { [2 x %struct.gr_info_ss] }
%struct.gr_info_ss = type { %struct.gr_info }
%struct.III_scalefac_t = type { [22 x i32], [13 x [3 x i32]] }

@subdv_table = global [23 x %struct.anon] [%struct.anon zeroinitializer, %struct.anon zeroinitializer, %struct.anon zeroinitializer, %struct.anon zeroinitializer, %struct.anon zeroinitializer, %struct.anon { i32 0, i32 1 }, %struct.anon { i32 1, i32 1 }, %struct.anon { i32 1, i32 1 }, %struct.anon { i32 1, i32 2 }, %struct.anon { i32 2, i32 2 }, %struct.anon { i32 2, i32 3 }, %struct.anon { i32 2, i32 3 }, %struct.anon { i32 3, i32 4 }, %struct.anon { i32 3, i32 4 }, %struct.anon { i32 3, i32 4 }, %struct.anon { i32 4, i32 5 }, %struct.anon { i32 4, i32 5 }, %struct.anon { i32 4, i32 6 }, %struct.anon { i32 5, i32 6 }, %struct.anon { i32 5, i32 6 }, %struct.anon { i32 5, i32 7 }, %struct.anon { i32 6, i32 7 }, %struct.anon { i32 6, i32 7 }], align 16
@ipow20 = external global [256 x double], align 16
@scalefac_band = external global %struct.scalefac_struct, align 4
@huf_tbl_noESC = internal constant [15 x i32] [i32 1, i32 2, i32 5, i32 7, i32 7, i32 10, i32 10, i32 13, i32 13, i32 13, i32 13, i32 13, i32 13, i32 13, i32 13], align 16
@ht = external global [34 x %struct.huffcodetab], align 16
@cb_esc_buf = internal global [288 x i32] zeroinitializer, align 16
@cb_esc_sign = internal global i32 0, align 4
@cb_esc_end = internal global i32* null, align 8
@scfsi_calc.scfsi_band = internal constant [5 x i32] [i32 0, i32 6, i32 11, i32 16, i32 21], align 16
@scfsi_calc.slen1_n = internal constant [16 x i32] [i32 0, i32 1, i32 1, i32 1, i32 8, i32 2, i32 2, i32 2, i32 4, i32 4, i32 4, i32 8, i32 8, i32 8, i32 16, i32 16], align 16
@scfsi_calc.slen2_n = internal constant [16 x i32] [i32 0, i32 2, i32 4, i32 8, i32 1, i32 2, i32 4, i32 8, i32 2, i32 4, i32 8, i32 2, i32 4, i32 8, i32 4, i32 8], align 16
@scfsi_calc.slen1_tab = internal constant [16 x i32] [i32 0, i32 0, i32 0, i32 0, i32 3, i32 1, i32 1, i32 1, i32 2, i32 2, i32 2, i32 3, i32 3, i32 3, i32 4, i32 4], align 16
@scfsi_calc.slen2_tab = internal constant [16 x i32] [i32 0, i32 1, i32 2, i32 3, i32 0, i32 1, i32 2, i32 3, i32 1, i32 2, i32 3, i32 1, i32 2, i32 3, i32 2, i32 3], align 16

; Function Attrs: nounwind uwtable
define i32 @count_bits(%struct.lame_global_flags* %gfp, i32* %ix, double* %xr, %struct.gr_info* %cod_info) #0 {
entry:
  %retval = alloca i32, align 4
  %gfp.addr = alloca %struct.lame_global_flags*, align 8
  %ix.addr = alloca i32*, align 8
  %xr.addr = alloca double*, align 8
  %cod_info.addr = alloca %struct.gr_info*, align 8
  %bits = alloca i32, align 4
  %i = alloca i32, align 4
  %w = alloca double, align 8
  %cleanup.dest.slot = alloca i32
  store %struct.lame_global_flags* %gfp, %struct.lame_global_flags** %gfp.addr, align 8, !tbaa !1
  store i32* %ix, i32** %ix.addr, align 8, !tbaa !1
  store double* %xr, double** %xr.addr, align 8, !tbaa !1
  store %struct.gr_info* %cod_info, %struct.gr_info** %cod_info.addr, align 8, !tbaa !1
  %0 = bitcast i32* %bits to i8*
  call void @llvm.lifetime.start(i64 4, i8* %0) #1
  store i32 0, i32* %bits, align 4, !tbaa !5
  %1 = bitcast i32* %i to i8*
  call void @llvm.lifetime.start(i64 4, i8* %1) #1
  %2 = bitcast double* %w to i8*
  call void @llvm.lifetime.start(i64 8, i8* %2) #1
  %3 = load %struct.gr_info*, %struct.gr_info** %cod_info.addr, align 8, !tbaa !1
  %global_gain = getelementptr inbounds %struct.gr_info, %struct.gr_info* %3, i32 0, i32 3
  %4 = load i32, i32* %global_gain, align 4, !tbaa !7
  %idxprom = zext i32 %4 to i64
  %arrayidx = getelementptr inbounds [256 x double], [256 x double]* @ipow20, i32 0, i64 %idxprom
  %5 = load double, double* %arrayidx, align 8, !tbaa !9
  %div = fdiv double 8.206000e+03, %5
  store double %div, double* %w, align 8, !tbaa !9
  store i32 0, i32* %i, align 4, !tbaa !5
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %6 = load i32, i32* %i, align 4, !tbaa !5
  %cmp = icmp slt i32 %6, 576
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %7 = load i32, i32* %i, align 4, !tbaa !5
  %idxprom1 = sext i32 %7 to i64
  %8 = load double*, double** %xr.addr, align 8, !tbaa !1
  %arrayidx2 = getelementptr inbounds double, double* %8, i64 %idxprom1
  %9 = load double, double* %arrayidx2, align 8, !tbaa !9
  %10 = load double, double* %w, align 8, !tbaa !9
  %cmp3 = fcmp ogt double %9, %10
  br i1 %cmp3, label %if.then, label %if.end

if.then:                                          ; preds = %for.body
  store i32 100000, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end:                                           ; preds = %for.body
  br label %for.inc

for.inc:                                          ; preds = %if.end
  %11 = load i32, i32* %i, align 4, !tbaa !5
  %inc = add nsw i32 %11, 1
  store i32 %inc, i32* %i, align 4, !tbaa !5
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %12 = load %struct.lame_global_flags*, %struct.lame_global_flags** %gfp.addr, align 8, !tbaa !1
  %quantization = getelementptr inbounds %struct.lame_global_flags, %struct.lame_global_flags* %12, i32 0, i32 60
  %13 = load i32, i32* %quantization, align 4, !tbaa !11
  %tobool = icmp ne i32 %13, 0
  br i1 %tobool, label %if.then.4, label %if.else

if.then.4:                                        ; preds = %for.end
  %14 = load double*, double** %xr.addr, align 8, !tbaa !1
  %15 = load i32*, i32** %ix.addr, align 8, !tbaa !1
  %16 = load %struct.gr_info*, %struct.gr_info** %cod_info.addr, align 8, !tbaa !1
  call void @quantize_xrpow(double* %14, i32* %15, %struct.gr_info* %16)
  br label %if.end.5

if.else:                                          ; preds = %for.end
  %17 = load double*, double** %xr.addr, align 8, !tbaa !1
  %18 = load i32*, i32** %ix.addr, align 8, !tbaa !1
  %19 = load %struct.gr_info*, %struct.gr_info** %cod_info.addr, align 8, !tbaa !1
  call void @quantize_xrpow_ISO(double* %17, i32* %18, %struct.gr_info* %19)
  br label %if.end.5

if.end.5:                                         ; preds = %if.else, %if.then.4
  %20 = load %struct.gr_info*, %struct.gr_info** %cod_info.addr, align 8, !tbaa !1
  %block_type = getelementptr inbounds %struct.gr_info, %struct.gr_info* %20, i32 0, i32 6
  %21 = load i32, i32* %block_type, align 4, !tbaa !15
  %cmp6 = icmp eq i32 %21, 2
  br i1 %cmp6, label %if.then.7, label %if.else.14

if.then.7:                                        ; preds = %if.end.5
  %22 = load i32*, i32** %ix.addr, align 8, !tbaa !1
  %23 = load i32*, i32** %ix.addr, align 8, !tbaa !1
  %add.ptr = getelementptr inbounds i32, i32* %23, i64 36
  %call = call i32 @choose_table_short(i32* %22, i32* %add.ptr, i32* %bits)
  %24 = load %struct.gr_info*, %struct.gr_info** %cod_info.addr, align 8, !tbaa !1
  %table_select = getelementptr inbounds %struct.gr_info, %struct.gr_info* %24, i32 0, i32 8
  %arrayidx8 = getelementptr inbounds [3 x i32], [3 x i32]* %table_select, i32 0, i64 0
  store i32 %call, i32* %arrayidx8, align 4, !tbaa !5
  %25 = load i32*, i32** %ix.addr, align 8, !tbaa !1
  %add.ptr9 = getelementptr inbounds i32, i32* %25, i64 36
  %26 = load i32*, i32** %ix.addr, align 8, !tbaa !1
  %add.ptr10 = getelementptr inbounds i32, i32* %26, i64 576
  %call11 = call i32 @choose_table_short(i32* %add.ptr9, i32* %add.ptr10, i32* %bits)
  %27 = load %struct.gr_info*, %struct.gr_info** %cod_info.addr, align 8, !tbaa !1
  %table_select12 = getelementptr inbounds %struct.gr_info, %struct.gr_info* %27, i32 0, i32 8
  %arrayidx13 = getelementptr inbounds [3 x i32], [3 x i32]* %table_select12, i32 0, i64 1
  store i32 %call11, i32* %arrayidx13, align 4, !tbaa !5
  %28 = load %struct.gr_info*, %struct.gr_info** %cod_info.addr, align 8, !tbaa !1
  %big_values = getelementptr inbounds %struct.gr_info, %struct.gr_info* %28, i32 0, i32 1
  store i32 288, i32* %big_values, align 4, !tbaa !16
  br label %if.end.21

if.else.14:                                       ; preds = %if.end.5
  %29 = load i32*, i32** %ix.addr, align 8, !tbaa !1
  %30 = load %struct.gr_info*, %struct.gr_info** %cod_info.addr, align 8, !tbaa !1
  %call15 = call i32 @count_bits_long(i32* %29, %struct.gr_info* %30)
  store i32 %call15, i32* %bits, align 4, !tbaa !5
  %31 = load %struct.gr_info*, %struct.gr_info** %cod_info.addr, align 8, !tbaa !1
  %count1 = getelementptr inbounds %struct.gr_info, %struct.gr_info* %31, i32 0, i32 2
  %32 = load i32, i32* %count1, align 4, !tbaa !17
  %33 = load %struct.gr_info*, %struct.gr_info** %cod_info.addr, align 8, !tbaa !1
  %big_values16 = getelementptr inbounds %struct.gr_info, %struct.gr_info* %33, i32 0, i32 1
  %34 = load i32, i32* %big_values16, align 4, !tbaa !16
  %sub = sub i32 %32, %34
  %div17 = udiv i32 %sub, 4
  %35 = load %struct.gr_info*, %struct.gr_info** %cod_info.addr, align 8, !tbaa !1
  %count118 = getelementptr inbounds %struct.gr_info, %struct.gr_info* %35, i32 0, i32 2
  store i32 %div17, i32* %count118, align 4, !tbaa !17
  %36 = load %struct.gr_info*, %struct.gr_info** %cod_info.addr, align 8, !tbaa !1
  %big_values19 = getelementptr inbounds %struct.gr_info, %struct.gr_info* %36, i32 0, i32 1
  %37 = load i32, i32* %big_values19, align 4, !tbaa !16
  %div20 = udiv i32 %37, 2
  store i32 %div20, i32* %big_values19, align 4, !tbaa !16
  br label %if.end.21

if.end.21:                                        ; preds = %if.else.14, %if.then.7
  %38 = load i32, i32* %bits, align 4, !tbaa !5
  store i32 %38, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %if.end.21, %if.then
  %39 = bitcast double* %w to i8*
  call void @llvm.lifetime.end(i64 8, i8* %39) #1
  %40 = bitcast i32* %i to i8*
  call void @llvm.lifetime.end(i64 4, i8* %40) #1
  %41 = bitcast i32* %bits to i8*
  call void @llvm.lifetime.end(i64 4, i8* %41) #1
  %42 = load i32, i32* %retval
  ret i32 %42
}

; Function Attrs: nounwind
declare void @llvm.lifetime.start(i64, i8* nocapture) #1

declare void @quantize_xrpow(double*, i32*, %struct.gr_info*) #2

declare void @quantize_xrpow_ISO(double*, i32*, %struct.gr_info*) #2

; Function Attrs: nounwind uwtable
define internal i32 @choose_table_short(i32* %ix, i32* %end, i32* %s) #0 {
entry:
  %retval = alloca i32, align 4
  %ix.addr = alloca i32*, align 8
  %end.addr = alloca i32*, align 8
  %s.addr = alloca i32*, align 8
  %max = alloca i32, align 4
  %choice0 = alloca i32, align 4
  %sum0 = alloca i32, align 4
  %choice1 = alloca i32, align 4
  %sum1 = alloca i32, align 4
  %cleanup.dest.slot = alloca i32
  store i32* %ix, i32** %ix.addr, align 8, !tbaa !1
  store i32* %end, i32** %end.addr, align 8, !tbaa !1
  store i32* %s, i32** %s.addr, align 8, !tbaa !1
  %0 = bitcast i32* %max to i8*
  call void @llvm.lifetime.start(i64 4, i8* %0) #1
  %1 = bitcast i32* %choice0 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %1) #1
  %2 = bitcast i32* %sum0 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %2) #1
  %3 = bitcast i32* %choice1 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %3) #1
  %4 = bitcast i32* %sum1 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %4) #1
  %5 = load i32*, i32** %ix.addr, align 8, !tbaa !1
  %6 = load i32*, i32** %end.addr, align 8, !tbaa !1
  %call = call i32 @ix_max(i32* %5, i32* %6)
  store i32 %call, i32* %max, align 4, !tbaa !5
  %7 = load i32, i32* %max, align 4, !tbaa !5
  %cmp = icmp sgt i32 %7, 8206
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %8 = load i32*, i32** %s.addr, align 8, !tbaa !1
  store i32 100000, i32* %8, align 4, !tbaa !5
  store i32 -1, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end:                                           ; preds = %entry
  %9 = load i32, i32* %max, align 4, !tbaa !5
  %cmp1 = icmp sle i32 %9, 15
  br i1 %cmp1, label %if.then.2, label %if.else

if.then.2:                                        ; preds = %if.end
  %10 = load i32, i32* %max, align 4, !tbaa !5
  %cmp3 = icmp eq i32 %10, 0
  br i1 %cmp3, label %if.then.4, label %if.end.5

if.then.4:                                        ; preds = %if.then.2
  store i32 0, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.5:                                         ; preds = %if.then.2
  %11 = load i32, i32* %max, align 4, !tbaa !5
  %sub = sub nsw i32 %11, 1
  %idxprom = sext i32 %sub to i64
  %arrayidx = getelementptr inbounds [15 x i32], [15 x i32]* @huf_tbl_noESC, i32 0, i64 %idxprom
  %12 = load i32, i32* %arrayidx, align 4, !tbaa !5
  store i32 %12, i32* %choice0, align 4, !tbaa !5
  %13 = load i32*, i32** %ix.addr, align 8, !tbaa !1
  %14 = load i32*, i32** %end.addr, align 8, !tbaa !1
  %15 = load i32, i32* %choice0, align 4, !tbaa !5
  %call6 = call i32 @count_bit_short_noESC(i32* %13, i32* %14, i32 %15)
  store i32 %call6, i32* %sum0, align 4, !tbaa !5
  %16 = load i32, i32* %choice0, align 4, !tbaa !5
  store i32 %16, i32* %choice1, align 4, !tbaa !5
  %17 = load i32, i32* %choice0, align 4, !tbaa !5
  switch i32 %17, label %sw.default [
    i32 7, label %sw.bb
    i32 10, label %sw.bb
    i32 2, label %sw.bb.11
    i32 5, label %sw.bb.11
    i32 13, label %sw.bb.17
  ]

sw.bb:                                            ; preds = %if.end.5, %if.end.5
  %18 = load i32, i32* %choice1, align 4, !tbaa !5
  %inc = add nsw i32 %18, 1
  store i32 %inc, i32* %choice1, align 4, !tbaa !5
  %19 = load i32, i32* %choice1, align 4, !tbaa !5
  %call7 = call i32 @count_bit_noESC2(i32 %19)
  store i32 %call7, i32* %sum1, align 4, !tbaa !5
  %20 = load i32, i32* %sum0, align 4, !tbaa !5
  %21 = load i32, i32* %sum1, align 4, !tbaa !5
  %cmp8 = icmp sgt i32 %20, %21
  br i1 %cmp8, label %if.then.9, label %if.end.10

if.then.9:                                        ; preds = %sw.bb
  %22 = load i32, i32* %sum1, align 4, !tbaa !5
  store i32 %22, i32* %sum0, align 4, !tbaa !5
  %23 = load i32, i32* %choice1, align 4, !tbaa !5
  store i32 %23, i32* %choice0, align 4, !tbaa !5
  br label %if.end.10

if.end.10:                                        ; preds = %if.then.9, %sw.bb
  br label %sw.bb.11

sw.bb.11:                                         ; preds = %if.end.5, %if.end.5, %if.end.10
  %24 = load i32, i32* %choice1, align 4, !tbaa !5
  %inc12 = add nsw i32 %24, 1
  store i32 %inc12, i32* %choice1, align 4, !tbaa !5
  %25 = load i32, i32* %choice1, align 4, !tbaa !5
  %call13 = call i32 @count_bit_noESC2(i32 %25)
  store i32 %call13, i32* %sum1, align 4, !tbaa !5
  %26 = load i32, i32* %sum0, align 4, !tbaa !5
  %27 = load i32, i32* %sum1, align 4, !tbaa !5
  %cmp14 = icmp sgt i32 %26, %27
  br i1 %cmp14, label %if.then.15, label %if.end.16

if.then.15:                                       ; preds = %sw.bb.11
  %28 = load i32, i32* %sum1, align 4, !tbaa !5
  store i32 %28, i32* %sum0, align 4, !tbaa !5
  %29 = load i32, i32* %choice1, align 4, !tbaa !5
  store i32 %29, i32* %choice0, align 4, !tbaa !5
  br label %if.end.16

if.end.16:                                        ; preds = %if.then.15, %sw.bb.11
  br label %sw.epilog

sw.bb.17:                                         ; preds = %if.end.5
  %30 = load i32, i32* %choice1, align 4, !tbaa !5
  %add = add nsw i32 %30, 2
  store i32 %add, i32* %choice1, align 4, !tbaa !5
  %31 = load i32, i32* %choice1, align 4, !tbaa !5
  %call18 = call i32 @count_bit_noESC2(i32 %31)
  store i32 %call18, i32* %sum1, align 4, !tbaa !5
  %32 = load i32, i32* %sum0, align 4, !tbaa !5
  %33 = load i32, i32* %sum1, align 4, !tbaa !5
  %cmp19 = icmp sgt i32 %32, %33
  br i1 %cmp19, label %if.then.20, label %if.end.21

if.then.20:                                       ; preds = %sw.bb.17
  %34 = load i32, i32* %sum1, align 4, !tbaa !5
  store i32 %34, i32* %sum0, align 4, !tbaa !5
  %35 = load i32, i32* %choice1, align 4, !tbaa !5
  store i32 %35, i32* %choice0, align 4, !tbaa !5
  br label %if.end.21

if.end.21:                                        ; preds = %if.then.20, %sw.bb.17
  br label %sw.epilog

sw.default:                                       ; preds = %if.end.5
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.default, %if.end.21, %if.end.16
  %36 = load i32, i32* %sum0, align 4, !tbaa !5
  %37 = load i32*, i32** %s.addr, align 8, !tbaa !1
  %38 = load i32, i32* %37, align 4, !tbaa !5
  %add22 = add nsw i32 %38, %36
  store i32 %add22, i32* %37, align 4, !tbaa !5
  br label %if.end.45

if.else:                                          ; preds = %if.end
  %39 = load i32, i32* %max, align 4, !tbaa !5
  %sub23 = sub nsw i32 %39, 15
  store i32 %sub23, i32* %max, align 4, !tbaa !5
  store i32 24, i32* %choice1, align 4, !tbaa !5
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.else
  %40 = load i32, i32* %choice1, align 4, !tbaa !5
  %cmp24 = icmp slt i32 %40, 32
  br i1 %cmp24, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %41 = load i32, i32* %choice1, align 4, !tbaa !5
  %idxprom25 = sext i32 %41 to i64
  %arrayidx26 = getelementptr inbounds [34 x %struct.huffcodetab], [34 x %struct.huffcodetab]* @ht, i32 0, i64 %idxprom25
  %linmax = getelementptr inbounds %struct.huffcodetab, %struct.huffcodetab* %arrayidx26, i32 0, i32 1
  %42 = load i32, i32* %linmax, align 4, !tbaa !18
  %43 = load i32, i32* %max, align 4, !tbaa !5
  %cmp27 = icmp sge i32 %42, %43
  br i1 %cmp27, label %if.then.28, label %if.end.29

if.then.28:                                       ; preds = %for.body
  br label %for.end

if.end.29:                                        ; preds = %for.body
  br label %for.inc

for.inc:                                          ; preds = %if.end.29
  %44 = load i32, i32* %choice1, align 4, !tbaa !5
  %inc30 = add nsw i32 %44, 1
  store i32 %inc30, i32* %choice1, align 4, !tbaa !5
  br label %for.cond

for.end:                                          ; preds = %if.then.28, %for.cond
  %45 = load i32, i32* %choice1, align 4, !tbaa !5
  %sub31 = sub nsw i32 %45, 8
  store i32 %sub31, i32* %choice0, align 4, !tbaa !5
  br label %for.cond.32

for.cond.32:                                      ; preds = %for.inc.41, %for.end
  %46 = load i32, i32* %choice0, align 4, !tbaa !5
  %cmp33 = icmp slt i32 %46, 24
  br i1 %cmp33, label %for.body.34, label %for.end.43

for.body.34:                                      ; preds = %for.cond.32
  %47 = load i32, i32* %choice0, align 4, !tbaa !5
  %idxprom35 = sext i32 %47 to i64
  %arrayidx36 = getelementptr inbounds [34 x %struct.huffcodetab], [34 x %struct.huffcodetab]* @ht, i32 0, i64 %idxprom35
  %linmax37 = getelementptr inbounds %struct.huffcodetab, %struct.huffcodetab* %arrayidx36, i32 0, i32 1
  %48 = load i32, i32* %linmax37, align 4, !tbaa !18
  %49 = load i32, i32* %max, align 4, !tbaa !5
  %cmp38 = icmp sge i32 %48, %49
  br i1 %cmp38, label %if.then.39, label %if.end.40

if.then.39:                                       ; preds = %for.body.34
  br label %for.end.43

if.end.40:                                        ; preds = %for.body.34
  br label %for.inc.41

for.inc.41:                                       ; preds = %if.end.40
  %50 = load i32, i32* %choice0, align 4, !tbaa !5
  %inc42 = add nsw i32 %50, 1
  store i32 %inc42, i32* %choice0, align 4, !tbaa !5
  br label %for.cond.32

for.end.43:                                       ; preds = %if.then.39, %for.cond.32
  %51 = load i32*, i32** %ix.addr, align 8, !tbaa !1
  %52 = load i32*, i32** %end.addr, align 8, !tbaa !1
  %53 = load i32, i32* %choice0, align 4, !tbaa !5
  %54 = load i32, i32* %choice1, align 4, !tbaa !5
  %55 = load i32*, i32** %s.addr, align 8, !tbaa !1
  %call44 = call i32 @count_bit_short_ESC(i32* %51, i32* %52, i32 %53, i32 %54, i32* %55)
  store i32 %call44, i32* %choice0, align 4, !tbaa !5
  br label %if.end.45

if.end.45:                                        ; preds = %for.end.43, %sw.epilog
  %56 = load i32, i32* %choice0, align 4, !tbaa !5
  store i32 %56, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %if.end.45, %if.then.4, %if.then
  %57 = bitcast i32* %sum1 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %57) #1
  %58 = bitcast i32* %choice1 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %58) #1
  %59 = bitcast i32* %sum0 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %59) #1
  %60 = bitcast i32* %choice0 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %60) #1
  %61 = bitcast i32* %max to i8*
  call void @llvm.lifetime.end(i64 4, i8* %61) #1
  %62 = load i32, i32* %retval
  ret i32 %62
}

; Function Attrs: nounwind uwtable
define internal i32 @count_bits_long(i32* %ix, %struct.gr_info* %gi) #0 {
entry:
  %retval = alloca i32, align 4
  %ix.addr = alloca i32*, align 8
  %gi.addr = alloca %struct.gr_info*, align 8
  %i = alloca i32, align 4
  %a1 = alloca i32, align 4
  %a2 = alloca i32, align 4
  %bits = alloca i32, align 4
  %p = alloca i32, align 4
  %v = alloca i32, align 4
  %cleanup.dest.slot = alloca i32
  %index = alloca i32, align 4
  %scfb_anz = alloca i32, align 4
  store i32* %ix, i32** %ix.addr, align 8, !tbaa !1
  store %struct.gr_info* %gi, %struct.gr_info** %gi.addr, align 8, !tbaa !1
  %0 = bitcast i32* %i to i8*
  call void @llvm.lifetime.start(i64 4, i8* %0) #1
  %1 = bitcast i32* %a1 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %1) #1
  %2 = bitcast i32* %a2 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %2) #1
  %3 = bitcast i32* %bits to i8*
  call void @llvm.lifetime.start(i64 4, i8* %3) #1
  store i32 0, i32* %bits, align 4, !tbaa !5
  store i32 576, i32* %i, align 4, !tbaa !5
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %4 = load i32, i32* %i, align 4, !tbaa !5
  %cmp = icmp sgt i32 %4, 1
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %5 = load i32, i32* %i, align 4, !tbaa !5
  %sub = sub nsw i32 %5, 1
  %idxprom = sext i32 %sub to i64
  %6 = load i32*, i32** %ix.addr, align 8, !tbaa !1
  %arrayidx = getelementptr inbounds i32, i32* %6, i64 %idxprom
  %7 = load i32, i32* %arrayidx, align 4, !tbaa !5
  %8 = load i32, i32* %i, align 4, !tbaa !5
  %sub1 = sub nsw i32 %8, 2
  %idxprom2 = sext i32 %sub1 to i64
  %9 = load i32*, i32** %ix.addr, align 8, !tbaa !1
  %arrayidx3 = getelementptr inbounds i32, i32* %9, i64 %idxprom2
  %10 = load i32, i32* %arrayidx3, align 4, !tbaa !5
  %or = or i32 %7, %10
  %tobool = icmp ne i32 %or, 0
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %for.body
  br label %for.end

if.end:                                           ; preds = %for.body
  br label %for.inc

for.inc:                                          ; preds = %if.end
  %11 = load i32, i32* %i, align 4, !tbaa !5
  %sub4 = sub nsw i32 %11, 2
  store i32 %sub4, i32* %i, align 4, !tbaa !5
  br label %for.cond

for.end:                                          ; preds = %if.then, %for.cond
  %12 = load i32, i32* %i, align 4, !tbaa !5
  %13 = load %struct.gr_info*, %struct.gr_info** %gi.addr, align 8, !tbaa !1
  %count1 = getelementptr inbounds %struct.gr_info, %struct.gr_info* %13, i32 0, i32 2
  store i32 %12, i32* %count1, align 4, !tbaa !17
  store i32 0, i32* %a1, align 4, !tbaa !5
  br label %for.cond.5

for.cond.5:                                       ; preds = %for.inc.56, %for.end
  %14 = load i32, i32* %i, align 4, !tbaa !5
  %cmp6 = icmp sgt i32 %14, 3
  br i1 %cmp6, label %for.body.7, label %for.end.58

for.body.7:                                       ; preds = %for.cond.5
  %15 = bitcast i32* %p to i8*
  call void @llvm.lifetime.start(i64 4, i8* %15) #1
  %16 = bitcast i32* %v to i8*
  call void @llvm.lifetime.start(i64 4, i8* %16) #1
  %17 = load i32, i32* %i, align 4, !tbaa !5
  %sub8 = sub nsw i32 %17, 1
  %idxprom9 = sext i32 %sub8 to i64
  %18 = load i32*, i32** %ix.addr, align 8, !tbaa !1
  %arrayidx10 = getelementptr inbounds i32, i32* %18, i64 %idxprom9
  %19 = load i32, i32* %arrayidx10, align 4, !tbaa !5
  %20 = load i32, i32* %i, align 4, !tbaa !5
  %sub11 = sub nsw i32 %20, 2
  %idxprom12 = sext i32 %sub11 to i64
  %21 = load i32*, i32** %ix.addr, align 8, !tbaa !1
  %arrayidx13 = getelementptr inbounds i32, i32* %21, i64 %idxprom12
  %22 = load i32, i32* %arrayidx13, align 4, !tbaa !5
  %or14 = or i32 %19, %22
  %23 = load i32, i32* %i, align 4, !tbaa !5
  %sub15 = sub nsw i32 %23, 3
  %idxprom16 = sext i32 %sub15 to i64
  %24 = load i32*, i32** %ix.addr, align 8, !tbaa !1
  %arrayidx17 = getelementptr inbounds i32, i32* %24, i64 %idxprom16
  %25 = load i32, i32* %arrayidx17, align 4, !tbaa !5
  %or18 = or i32 %or14, %25
  %26 = load i32, i32* %i, align 4, !tbaa !5
  %sub19 = sub nsw i32 %26, 4
  %idxprom20 = sext i32 %sub19 to i64
  %27 = load i32*, i32** %ix.addr, align 8, !tbaa !1
  %arrayidx21 = getelementptr inbounds i32, i32* %27, i64 %idxprom20
  %28 = load i32, i32* %arrayidx21, align 4, !tbaa !5
  %or22 = or i32 %or18, %28
  %cmp23 = icmp ugt i32 %or22, 1
  br i1 %cmp23, label %if.then.24, label %if.end.25

if.then.24:                                       ; preds = %for.body.7
  store i32 5, i32* %cleanup.dest.slot
  br label %cleanup

if.end.25:                                        ; preds = %for.body.7
  %29 = load i32, i32* %i, align 4, !tbaa !5
  %sub26 = sub nsw i32 %29, 1
  %idxprom27 = sext i32 %sub26 to i64
  %30 = load i32*, i32** %ix.addr, align 8, !tbaa !1
  %arrayidx28 = getelementptr inbounds i32, i32* %30, i64 %idxprom27
  %31 = load i32, i32* %arrayidx28, align 4, !tbaa !5
  store i32 %31, i32* %v, align 4, !tbaa !5
  %32 = load i32, i32* %v, align 4, !tbaa !5
  store i32 %32, i32* %p, align 4, !tbaa !5
  %33 = load i32, i32* %v, align 4, !tbaa !5
  %34 = load i32, i32* %bits, align 4, !tbaa !5
  %add = add nsw i32 %34, %33
  store i32 %add, i32* %bits, align 4, !tbaa !5
  %35 = load i32, i32* %i, align 4, !tbaa !5
  %sub29 = sub nsw i32 %35, 2
  %idxprom30 = sext i32 %sub29 to i64
  %36 = load i32*, i32** %ix.addr, align 8, !tbaa !1
  %arrayidx31 = getelementptr inbounds i32, i32* %36, i64 %idxprom30
  %37 = load i32, i32* %arrayidx31, align 4, !tbaa !5
  store i32 %37, i32* %v, align 4, !tbaa !5
  %38 = load i32, i32* %v, align 4, !tbaa !5
  %cmp32 = icmp ne i32 %38, 0
  br i1 %cmp32, label %if.then.33, label %if.end.35

if.then.33:                                       ; preds = %if.end.25
  %39 = load i32, i32* %p, align 4, !tbaa !5
  %add34 = add nsw i32 %39, 2
  store i32 %add34, i32* %p, align 4, !tbaa !5
  %40 = load i32, i32* %bits, align 4, !tbaa !5
  %inc = add nsw i32 %40, 1
  store i32 %inc, i32* %bits, align 4, !tbaa !5
  br label %if.end.35

if.end.35:                                        ; preds = %if.then.33, %if.end.25
  %41 = load i32, i32* %i, align 4, !tbaa !5
  %sub36 = sub nsw i32 %41, 3
  %idxprom37 = sext i32 %sub36 to i64
  %42 = load i32*, i32** %ix.addr, align 8, !tbaa !1
  %arrayidx38 = getelementptr inbounds i32, i32* %42, i64 %idxprom37
  %43 = load i32, i32* %arrayidx38, align 4, !tbaa !5
  store i32 %43, i32* %v, align 4, !tbaa !5
  %44 = load i32, i32* %v, align 4, !tbaa !5
  %cmp39 = icmp ne i32 %44, 0
  br i1 %cmp39, label %if.then.40, label %if.end.43

if.then.40:                                       ; preds = %if.end.35
  %45 = load i32, i32* %p, align 4, !tbaa !5
  %add41 = add nsw i32 %45, 4
  store i32 %add41, i32* %p, align 4, !tbaa !5
  %46 = load i32, i32* %bits, align 4, !tbaa !5
  %inc42 = add nsw i32 %46, 1
  store i32 %inc42, i32* %bits, align 4, !tbaa !5
  br label %if.end.43

if.end.43:                                        ; preds = %if.then.40, %if.end.35
  %47 = load i32, i32* %i, align 4, !tbaa !5
  %sub44 = sub nsw i32 %47, 4
  %idxprom45 = sext i32 %sub44 to i64
  %48 = load i32*, i32** %ix.addr, align 8, !tbaa !1
  %arrayidx46 = getelementptr inbounds i32, i32* %48, i64 %idxprom45
  %49 = load i32, i32* %arrayidx46, align 4, !tbaa !5
  store i32 %49, i32* %v, align 4, !tbaa !5
  %50 = load i32, i32* %v, align 4, !tbaa !5
  %cmp47 = icmp ne i32 %50, 0
  br i1 %cmp47, label %if.then.48, label %if.end.51

if.then.48:                                       ; preds = %if.end.43
  %51 = load i32, i32* %p, align 4, !tbaa !5
  %add49 = add nsw i32 %51, 8
  store i32 %add49, i32* %p, align 4, !tbaa !5
  %52 = load i32, i32* %bits, align 4, !tbaa !5
  %inc50 = add nsw i32 %52, 1
  store i32 %inc50, i32* %bits, align 4, !tbaa !5
  br label %if.end.51

if.end.51:                                        ; preds = %if.then.48, %if.end.43
  %53 = load i32, i32* %p, align 4, !tbaa !5
  %idxprom52 = sext i32 %53 to i64
  %54 = load i8*, i8** getelementptr inbounds ([34 x %struct.huffcodetab], [34 x %struct.huffcodetab]* @ht, i32 0, i64 32, i32 3), align 8, !tbaa !20
  %arrayidx53 = getelementptr inbounds i8, i8* %54, i64 %idxprom52
  %55 = load i8, i8* %arrayidx53, align 1, !tbaa !21
  %conv = zext i8 %55 to i32
  %56 = load i32, i32* %a1, align 4, !tbaa !5
  %add54 = add nsw i32 %56, %conv
  store i32 %add54, i32* %a1, align 4, !tbaa !5
  store i32 0, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %if.end.51, %if.then.24
  %57 = bitcast i32* %v to i8*
  call void @llvm.lifetime.end(i64 4, i8* %57) #1
  %58 = bitcast i32* %p to i8*
  call void @llvm.lifetime.end(i64 4, i8* %58) #1
  %cleanup.dest = load i32, i32* %cleanup.dest.slot
  switch i32 %cleanup.dest, label %unreachable [
    i32 0, label %cleanup.cont
    i32 5, label %for.end.58
  ]

cleanup.cont:                                     ; preds = %cleanup
  br label %for.inc.56

for.inc.56:                                       ; preds = %cleanup.cont
  %59 = load i32, i32* %i, align 4, !tbaa !5
  %sub57 = sub nsw i32 %59, 4
  store i32 %sub57, i32* %i, align 4, !tbaa !5
  br label %for.cond.5

for.end.58:                                       ; preds = %cleanup, %for.cond.5
  %60 = load %struct.gr_info*, %struct.gr_info** %gi.addr, align 8, !tbaa !1
  %count159 = getelementptr inbounds %struct.gr_info, %struct.gr_info* %60, i32 0, i32 2
  %61 = load i32, i32* %count159, align 4, !tbaa !17
  %62 = load i32, i32* %i, align 4, !tbaa !5
  %sub60 = sub i32 %61, %62
  store i32 %sub60, i32* %a2, align 4, !tbaa !5
  %63 = load i32, i32* %a1, align 4, !tbaa !5
  %64 = load i32, i32* %a2, align 4, !tbaa !5
  %cmp61 = icmp slt i32 %63, %64
  br i1 %cmp61, label %if.then.63, label %if.else

if.then.63:                                       ; preds = %for.end.58
  %65 = load i32, i32* %a1, align 4, !tbaa !5
  %66 = load i32, i32* %bits, align 4, !tbaa !5
  %add64 = add nsw i32 %66, %65
  store i32 %add64, i32* %bits, align 4, !tbaa !5
  %67 = load %struct.gr_info*, %struct.gr_info** %gi.addr, align 8, !tbaa !1
  %count1table_select = getelementptr inbounds %struct.gr_info, %struct.gr_info* %67, i32 0, i32 14
  store i32 0, i32* %count1table_select, align 4, !tbaa !22
  br label %if.end.67

if.else:                                          ; preds = %for.end.58
  %68 = load i32, i32* %a2, align 4, !tbaa !5
  %69 = load i32, i32* %bits, align 4, !tbaa !5
  %add65 = add nsw i32 %69, %68
  store i32 %add65, i32* %bits, align 4, !tbaa !5
  %70 = load %struct.gr_info*, %struct.gr_info** %gi.addr, align 8, !tbaa !1
  %count1table_select66 = getelementptr inbounds %struct.gr_info, %struct.gr_info* %70, i32 0, i32 14
  store i32 1, i32* %count1table_select66, align 4, !tbaa !22
  br label %if.end.67

if.end.67:                                        ; preds = %if.else, %if.then.63
  %71 = load i32, i32* %bits, align 4, !tbaa !5
  %72 = load %struct.gr_info*, %struct.gr_info** %gi.addr, align 8, !tbaa !1
  %count1bits = getelementptr inbounds %struct.gr_info, %struct.gr_info* %72, i32 0, i32 18
  store i32 %71, i32* %count1bits, align 4, !tbaa !23
  %73 = load i32, i32* %i, align 4, !tbaa !5
  %74 = load %struct.gr_info*, %struct.gr_info** %gi.addr, align 8, !tbaa !1
  %big_values = getelementptr inbounds %struct.gr_info, %struct.gr_info* %74, i32 0, i32 1
  store i32 %73, i32* %big_values, align 4, !tbaa !16
  %75 = load i32, i32* %i, align 4, !tbaa !5
  %cmp68 = icmp eq i32 %75, 0
  br i1 %cmp68, label %if.then.70, label %if.end.71

if.then.70:                                       ; preds = %if.end.67
  %76 = load i32, i32* %bits, align 4, !tbaa !5
  store i32 %76, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.137

if.end.71:                                        ; preds = %if.end.67
  %77 = load %struct.gr_info*, %struct.gr_info** %gi.addr, align 8, !tbaa !1
  %block_type = getelementptr inbounds %struct.gr_info, %struct.gr_info* %77, i32 0, i32 6
  %78 = load i32, i32* %block_type, align 4, !tbaa !15
  %cmp72 = icmp eq i32 %78, 0
  br i1 %cmp72, label %if.then.74, label %if.else.117

if.then.74:                                       ; preds = %if.end.71
  %79 = bitcast i32* %index to i8*
  call void @llvm.lifetime.start(i64 4, i8* %79) #1
  %80 = bitcast i32* %scfb_anz to i8*
  call void @llvm.lifetime.start(i64 4, i8* %80) #1
  store i32 0, i32* %scfb_anz, align 4, !tbaa !5
  br label %while.cond

while.cond:                                       ; preds = %while.body, %if.then.74
  %81 = load i32, i32* %scfb_anz, align 4, !tbaa !5
  %inc75 = add nsw i32 %81, 1
  store i32 %inc75, i32* %scfb_anz, align 4, !tbaa !5
  %idxprom76 = sext i32 %inc75 to i64
  %arrayidx77 = getelementptr inbounds [23 x i32], [23 x i32]* getelementptr inbounds (%struct.scalefac_struct, %struct.scalefac_struct* @scalefac_band, i32 0, i32 0), i32 0, i64 %idxprom76
  %82 = load i32, i32* %arrayidx77, align 4, !tbaa !5
  %83 = load i32, i32* %i, align 4, !tbaa !5
  %cmp78 = icmp slt i32 %82, %83
  br i1 %cmp78, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  br label %while.cond

while.end:                                        ; preds = %while.cond
  %84 = load i32, i32* %scfb_anz, align 4, !tbaa !5
  %idxprom80 = sext i32 %84 to i64
  %arrayidx81 = getelementptr inbounds [23 x %struct.anon], [23 x %struct.anon]* @subdv_table, i32 0, i64 %idxprom80
  %region0_count = getelementptr inbounds %struct.anon, %struct.anon* %arrayidx81, i32 0, i32 0
  %85 = load i32, i32* %region0_count, align 4, !tbaa !24
  store i32 %85, i32* %index, align 4, !tbaa !5
  br label %while.cond.82

while.cond.82:                                    ; preds = %while.body.88, %while.end
  %86 = load i32, i32* %index, align 4, !tbaa !5
  %add83 = add nsw i32 %86, 1
  %idxprom84 = sext i32 %add83 to i64
  %arrayidx85 = getelementptr inbounds [23 x i32], [23 x i32]* getelementptr inbounds (%struct.scalefac_struct, %struct.scalefac_struct* @scalefac_band, i32 0, i32 0), i32 0, i64 %idxprom84
  %87 = load i32, i32* %arrayidx85, align 4, !tbaa !5
  %88 = load i32, i32* %i, align 4, !tbaa !5
  %cmp86 = icmp sgt i32 %87, %88
  br i1 %cmp86, label %while.body.88, label %while.end.89

while.body.88:                                    ; preds = %while.cond.82
  %89 = load i32, i32* %index, align 4, !tbaa !5
  %dec = add nsw i32 %89, -1
  store i32 %dec, i32* %index, align 4, !tbaa !5
  br label %while.cond.82

while.end.89:                                     ; preds = %while.cond.82
  %90 = load i32, i32* %index, align 4, !tbaa !5
  %91 = load %struct.gr_info*, %struct.gr_info** %gi.addr, align 8, !tbaa !1
  %region0_count90 = getelementptr inbounds %struct.gr_info, %struct.gr_info* %91, i32 0, i32 10
  store i32 %90, i32* %region0_count90, align 4, !tbaa !26
  %92 = load i32, i32* %scfb_anz, align 4, !tbaa !5
  %idxprom91 = sext i32 %92 to i64
  %arrayidx92 = getelementptr inbounds [23 x %struct.anon], [23 x %struct.anon]* @subdv_table, i32 0, i64 %idxprom91
  %region1_count = getelementptr inbounds %struct.anon, %struct.anon* %arrayidx92, i32 0, i32 1
  %93 = load i32, i32* %region1_count, align 4, !tbaa !27
  store i32 %93, i32* %index, align 4, !tbaa !5
  br label %while.cond.93

while.cond.93:                                    ; preds = %while.body.101, %while.end.89
  %94 = load i32, i32* %index, align 4, !tbaa !5
  %95 = load %struct.gr_info*, %struct.gr_info** %gi.addr, align 8, !tbaa !1
  %region0_count94 = getelementptr inbounds %struct.gr_info, %struct.gr_info* %95, i32 0, i32 10
  %96 = load i32, i32* %region0_count94, align 4, !tbaa !26
  %add95 = add i32 %94, %96
  %add96 = add i32 %add95, 2
  %idxprom97 = zext i32 %add96 to i64
  %arrayidx98 = getelementptr inbounds [23 x i32], [23 x i32]* getelementptr inbounds (%struct.scalefac_struct, %struct.scalefac_struct* @scalefac_band, i32 0, i32 0), i32 0, i64 %idxprom97
  %97 = load i32, i32* %arrayidx98, align 4, !tbaa !5
  %98 = load i32, i32* %i, align 4, !tbaa !5
  %cmp99 = icmp sgt i32 %97, %98
  br i1 %cmp99, label %while.body.101, label %while.end.103

while.body.101:                                   ; preds = %while.cond.93
  %99 = load i32, i32* %index, align 4, !tbaa !5
  %dec102 = add nsw i32 %99, -1
  store i32 %dec102, i32* %index, align 4, !tbaa !5
  br label %while.cond.93

while.end.103:                                    ; preds = %while.cond.93
  %100 = load i32, i32* %index, align 4, !tbaa !5
  %101 = load %struct.gr_info*, %struct.gr_info** %gi.addr, align 8, !tbaa !1
  %region1_count104 = getelementptr inbounds %struct.gr_info, %struct.gr_info* %101, i32 0, i32 11
  store i32 %100, i32* %region1_count104, align 4, !tbaa !28
  %102 = load %struct.gr_info*, %struct.gr_info** %gi.addr, align 8, !tbaa !1
  %region0_count105 = getelementptr inbounds %struct.gr_info, %struct.gr_info* %102, i32 0, i32 10
  %103 = load i32, i32* %region0_count105, align 4, !tbaa !26
  %add106 = add i32 %103, 1
  %idxprom107 = zext i32 %add106 to i64
  %arrayidx108 = getelementptr inbounds [23 x i32], [23 x i32]* getelementptr inbounds (%struct.scalefac_struct, %struct.scalefac_struct* @scalefac_band, i32 0, i32 0), i32 0, i64 %idxprom107
  %104 = load i32, i32* %arrayidx108, align 4, !tbaa !5
  store i32 %104, i32* %a1, align 4, !tbaa !5
  %105 = load i32, i32* %index, align 4, !tbaa !5
  %106 = load %struct.gr_info*, %struct.gr_info** %gi.addr, align 8, !tbaa !1
  %region0_count109 = getelementptr inbounds %struct.gr_info, %struct.gr_info* %106, i32 0, i32 10
  %107 = load i32, i32* %region0_count109, align 4, !tbaa !26
  %add110 = add i32 %105, %107
  %add111 = add i32 %add110, 2
  %idxprom112 = zext i32 %add111 to i64
  %arrayidx113 = getelementptr inbounds [23 x i32], [23 x i32]* getelementptr inbounds (%struct.scalefac_struct, %struct.scalefac_struct* @scalefac_band, i32 0, i32 0), i32 0, i64 %idxprom112
  %108 = load i32, i32* %arrayidx113, align 4, !tbaa !5
  store i32 %108, i32* %a2, align 4, !tbaa !5
  %109 = load i32*, i32** %ix.addr, align 8, !tbaa !1
  %110 = load i32, i32* %a2, align 4, !tbaa !5
  %idx.ext = sext i32 %110 to i64
  %add.ptr = getelementptr inbounds i32, i32* %109, i64 %idx.ext
  %111 = load i32*, i32** %ix.addr, align 8, !tbaa !1
  %112 = load i32, i32* %i, align 4, !tbaa !5
  %idx.ext114 = sext i32 %112 to i64
  %add.ptr115 = getelementptr inbounds i32, i32* %111, i64 %idx.ext114
  %call = call i32 @choose_table(i32* %add.ptr, i32* %add.ptr115, i32* %bits)
  %113 = load %struct.gr_info*, %struct.gr_info** %gi.addr, align 8, !tbaa !1
  %table_select = getelementptr inbounds %struct.gr_info, %struct.gr_info* %113, i32 0, i32 8
  %arrayidx116 = getelementptr inbounds [3 x i32], [3 x i32]* %table_select, i32 0, i64 2
  store i32 %call, i32* %arrayidx116, align 4, !tbaa !5
  %114 = bitcast i32* %scfb_anz to i8*
  call void @llvm.lifetime.end(i64 4, i8* %114) #1
  %115 = bitcast i32* %index to i8*
  call void @llvm.lifetime.end(i64 4, i8* %115) #1
  br label %if.end.124

if.else.117:                                      ; preds = %if.end.71
  %116 = load %struct.gr_info*, %struct.gr_info** %gi.addr, align 8, !tbaa !1
  %region0_count118 = getelementptr inbounds %struct.gr_info, %struct.gr_info* %116, i32 0, i32 10
  store i32 7, i32* %region0_count118, align 4, !tbaa !26
  %117 = load %struct.gr_info*, %struct.gr_info** %gi.addr, align 8, !tbaa !1
  %region1_count119 = getelementptr inbounds %struct.gr_info, %struct.gr_info* %117, i32 0, i32 11
  store i32 13, i32* %region1_count119, align 4, !tbaa !28
  %118 = load i32, i32* getelementptr inbounds (%struct.scalefac_struct, %struct.scalefac_struct* @scalefac_band, i32 0, i32 0, i64 8), align 4, !tbaa !5
  store i32 %118, i32* %a1, align 4, !tbaa !5
  %119 = load i32, i32* %i, align 4, !tbaa !5
  store i32 %119, i32* %a2, align 4, !tbaa !5
  %120 = load i32, i32* %a1, align 4, !tbaa !5
  %121 = load i32, i32* %a2, align 4, !tbaa !5
  %cmp120 = icmp sgt i32 %120, %121
  br i1 %cmp120, label %if.then.122, label %if.end.123

if.then.122:                                      ; preds = %if.else.117
  %122 = load i32, i32* %a2, align 4, !tbaa !5
  store i32 %122, i32* %a1, align 4, !tbaa !5
  br label %if.end.123

if.end.123:                                       ; preds = %if.then.122, %if.else.117
  br label %if.end.124

if.end.124:                                       ; preds = %if.end.123, %while.end.103
  %123 = load i32*, i32** %ix.addr, align 8, !tbaa !1
  %124 = load i32*, i32** %ix.addr, align 8, !tbaa !1
  %125 = load i32, i32* %a1, align 4, !tbaa !5
  %idx.ext125 = sext i32 %125 to i64
  %add.ptr126 = getelementptr inbounds i32, i32* %124, i64 %idx.ext125
  %call127 = call i32 @choose_table(i32* %123, i32* %add.ptr126, i32* %bits)
  %126 = load %struct.gr_info*, %struct.gr_info** %gi.addr, align 8, !tbaa !1
  %table_select128 = getelementptr inbounds %struct.gr_info, %struct.gr_info* %126, i32 0, i32 8
  %arrayidx129 = getelementptr inbounds [3 x i32], [3 x i32]* %table_select128, i32 0, i64 0
  store i32 %call127, i32* %arrayidx129, align 4, !tbaa !5
  %127 = load i32*, i32** %ix.addr, align 8, !tbaa !1
  %128 = load i32, i32* %a1, align 4, !tbaa !5
  %idx.ext130 = sext i32 %128 to i64
  %add.ptr131 = getelementptr inbounds i32, i32* %127, i64 %idx.ext130
  %129 = load i32*, i32** %ix.addr, align 8, !tbaa !1
  %130 = load i32, i32* %a2, align 4, !tbaa !5
  %idx.ext132 = sext i32 %130 to i64
  %add.ptr133 = getelementptr inbounds i32, i32* %129, i64 %idx.ext132
  %call134 = call i32 @choose_table(i32* %add.ptr131, i32* %add.ptr133, i32* %bits)
  %131 = load %struct.gr_info*, %struct.gr_info** %gi.addr, align 8, !tbaa !1
  %table_select135 = getelementptr inbounds %struct.gr_info, %struct.gr_info* %131, i32 0, i32 8
  %arrayidx136 = getelementptr inbounds [3 x i32], [3 x i32]* %table_select135, i32 0, i64 1
  store i32 %call134, i32* %arrayidx136, align 4, !tbaa !5
  %132 = load i32, i32* %bits, align 4, !tbaa !5
  store i32 %132, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.137

cleanup.137:                                      ; preds = %if.end.124, %if.then.70
  %133 = bitcast i32* %bits to i8*
  call void @llvm.lifetime.end(i64 4, i8* %133) #1
  %134 = bitcast i32* %a2 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %134) #1
  %135 = bitcast i32* %a1 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %135) #1
  %136 = bitcast i32* %i to i8*
  call void @llvm.lifetime.end(i64 4, i8* %136) #1
  %137 = load i32, i32* %retval
  ret i32 %137

unreachable:                                      ; preds = %cleanup
  unreachable
}

; Function Attrs: nounwind
declare void @llvm.lifetime.end(i64, i8* nocapture) #1

; Function Attrs: nounwind uwtable
define void @best_huffman_divide(i32 %gr, i32 %ch, %struct.gr_info* %gi, i32* %ix) #0 {
entry:
  %gr.addr = alloca i32, align 4
  %ch.addr = alloca i32, align 4
  %gi.addr = alloca %struct.gr_info*, align 8
  %ix.addr = alloca i32*, align 8
  %bits = alloca i32*, align 8
  %r0 = alloca i32, align 4
  %r1 = alloca i32, align 4
  %a1 = alloca i32, align 4
  %a2 = alloca i32, align 4
  %bigv = alloca i32, align 4
  %r1_bits = alloca i32, align 4
  %r3_bits = alloca [25 x i32], align 16
  %r3_tbl = alloca [25 x i32], align 16
  %cod_info = alloca %struct.gr_info, align 8
  store i32 %gr, i32* %gr.addr, align 4, !tbaa !5
  store i32 %ch, i32* %ch.addr, align 4, !tbaa !5
  store %struct.gr_info* %gi, %struct.gr_info** %gi.addr, align 8, !tbaa !1
  store i32* %ix, i32** %ix.addr, align 8, !tbaa !1
  %0 = bitcast i32** %bits to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #1
  %1 = bitcast i32* %r0 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %1) #1
  %2 = bitcast i32* %r1 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %2) #1
  %3 = bitcast i32* %a1 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %3) #1
  %4 = bitcast i32* %a2 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %4) #1
  %5 = bitcast i32* %bigv to i8*
  call void @llvm.lifetime.start(i64 4, i8* %5) #1
  %6 = bitcast i32* %r1_bits to i8*
  call void @llvm.lifetime.start(i64 4, i8* %6) #1
  %7 = bitcast [25 x i32]* %r3_bits to i8*
  call void @llvm.lifetime.start(i64 100, i8* %7) #1
  %8 = bitcast [25 x i32]* %r3_tbl to i8*
  call void @llvm.lifetime.start(i64 100, i8* %8) #1
  %9 = bitcast %struct.gr_info* %cod_info to i8*
  call void @llvm.lifetime.start(i64 120, i8* %9) #1
  %10 = bitcast %struct.gr_info* %cod_info to i8*
  %11 = load %struct.gr_info*, %struct.gr_info** %gi.addr, align 8, !tbaa !1
  %12 = bitcast %struct.gr_info* %11 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %10, i8* %12, i64 120, i32 8, i1 false)
  %big_values = getelementptr inbounds %struct.gr_info, %struct.gr_info* %cod_info, i32 0, i32 1
  %13 = load i32, i32* %big_values, align 4, !tbaa !16
  %mul = mul i32 %13, 2
  store i32 %mul, i32* %bigv, align 4, !tbaa !5
  %part2_3_length = getelementptr inbounds %struct.gr_info, %struct.gr_info* %cod_info, i32 0, i32 0
  store i32* %part2_3_length, i32** %bits, align 8, !tbaa !1
  store i32 2, i32* %r0, align 4, !tbaa !5
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %14 = load i32, i32* %r0, align 4, !tbaa !5
  %cmp = icmp slt i32 %14, 23
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %15 = load i32, i32* %r0, align 4, !tbaa !5
  %idxprom = sext i32 %15 to i64
  %arrayidx = getelementptr inbounds [23 x i32], [23 x i32]* getelementptr inbounds (%struct.scalefac_struct, %struct.scalefac_struct* @scalefac_band, i32 0, i32 0), i32 0, i64 %idxprom
  %16 = load i32, i32* %arrayidx, align 4, !tbaa !5
  store i32 %16, i32* %a2, align 4, !tbaa !5
  %17 = load i32, i32* %a2, align 4, !tbaa !5
  %18 = load i32, i32* %bigv, align 4, !tbaa !5
  %cmp1 = icmp sgt i32 %17, %18
  br i1 %cmp1, label %if.then, label %if.end

if.then:                                          ; preds = %for.body
  br label %for.end

if.end:                                           ; preds = %for.body
  %count1bits = getelementptr inbounds %struct.gr_info, %struct.gr_info* %cod_info, i32 0, i32 18
  %19 = load i32, i32* %count1bits, align 4, !tbaa !23
  %part2_length = getelementptr inbounds %struct.gr_info, %struct.gr_info* %cod_info, i32 0, i32 15
  %20 = load i32, i32* %part2_length, align 4, !tbaa !29
  %add = add i32 %19, %20
  %21 = load i32, i32* %r0, align 4, !tbaa !5
  %idxprom2 = sext i32 %21 to i64
  %arrayidx3 = getelementptr inbounds [25 x i32], [25 x i32]* %r3_bits, i32 0, i64 %idxprom2
  store i32 %add, i32* %arrayidx3, align 4, !tbaa !5
  %22 = load i32*, i32** %ix.addr, align 8, !tbaa !1
  %23 = load i32, i32* %a2, align 4, !tbaa !5
  %idx.ext = sext i32 %23 to i64
  %add.ptr = getelementptr inbounds i32, i32* %22, i64 %idx.ext
  %24 = load i32*, i32** %ix.addr, align 8, !tbaa !1
  %25 = load i32, i32* %bigv, align 4, !tbaa !5
  %idx.ext4 = sext i32 %25 to i64
  %add.ptr5 = getelementptr inbounds i32, i32* %24, i64 %idx.ext4
  %26 = load i32, i32* %r0, align 4, !tbaa !5
  %idxprom6 = sext i32 %26 to i64
  %arrayidx7 = getelementptr inbounds [25 x i32], [25 x i32]* %r3_bits, i32 0, i64 %idxprom6
  %call = call i32 @choose_table(i32* %add.ptr, i32* %add.ptr5, i32* %arrayidx7)
  %27 = load i32, i32* %r0, align 4, !tbaa !5
  %idxprom8 = sext i32 %27 to i64
  %arrayidx9 = getelementptr inbounds [25 x i32], [25 x i32]* %r3_tbl, i32 0, i64 %idxprom8
  store i32 %call, i32* %arrayidx9, align 4, !tbaa !5
  br label %for.inc

for.inc:                                          ; preds = %if.end
  %28 = load i32, i32* %r0, align 4, !tbaa !5
  %inc = add nsw i32 %28, 1
  store i32 %inc, i32* %r0, align 4, !tbaa !5
  br label %for.cond

for.end:                                          ; preds = %if.then, %for.cond
  br label %for.cond.10

for.cond.10:                                      ; preds = %for.inc.15, %for.end
  %29 = load i32, i32* %r0, align 4, !tbaa !5
  %cmp11 = icmp sle i32 %29, 24
  br i1 %cmp11, label %for.body.12, label %for.end.17

for.body.12:                                      ; preds = %for.cond.10
  %30 = load i32, i32* %r0, align 4, !tbaa !5
  %idxprom13 = sext i32 %30 to i64
  %arrayidx14 = getelementptr inbounds [25 x i32], [25 x i32]* %r3_bits, i32 0, i64 %idxprom13
  store i32 100000, i32* %arrayidx14, align 4, !tbaa !5
  br label %for.inc.15

for.inc.15:                                       ; preds = %for.body.12
  %31 = load i32, i32* %r0, align 4, !tbaa !5
  %inc16 = add nsw i32 %31, 1
  store i32 %inc16, i32* %r0, align 4, !tbaa !5
  br label %for.cond.10

for.end.17:                                       ; preds = %for.cond.10
  store i32 0, i32* %r0, align 4, !tbaa !5
  br label %for.cond.18

for.cond.18:                                      ; preds = %for.inc.71, %for.end.17
  %32 = load i32, i32* %r0, align 4, !tbaa !5
  %cmp19 = icmp slt i32 %32, 16
  br i1 %cmp19, label %for.body.20, label %for.end.73

for.body.20:                                      ; preds = %for.cond.18
  %33 = load i32, i32* %r0, align 4, !tbaa !5
  %add21 = add nsw i32 %33, 1
  %idxprom22 = sext i32 %add21 to i64
  %arrayidx23 = getelementptr inbounds [23 x i32], [23 x i32]* getelementptr inbounds (%struct.scalefac_struct, %struct.scalefac_struct* @scalefac_band, i32 0, i32 0), i32 0, i64 %idxprom22
  %34 = load i32, i32* %arrayidx23, align 4, !tbaa !5
  store i32 %34, i32* %a1, align 4, !tbaa !5
  %35 = load i32, i32* %a1, align 4, !tbaa !5
  %36 = load i32, i32* %bigv, align 4, !tbaa !5
  %cmp24 = icmp sgt i32 %35, %36
  br i1 %cmp24, label %if.then.25, label %if.end.26

if.then.25:                                       ; preds = %for.body.20
  br label %for.end.73

if.end.26:                                        ; preds = %for.body.20
  %37 = load i32, i32* %r0, align 4, !tbaa !5
  %region0_count = getelementptr inbounds %struct.gr_info, %struct.gr_info* %cod_info, i32 0, i32 10
  store i32 %37, i32* %region0_count, align 4, !tbaa !26
  store i32 0, i32* %r1_bits, align 4, !tbaa !5
  %38 = load i32*, i32** %ix.addr, align 8, !tbaa !1
  %39 = load i32*, i32** %ix.addr, align 8, !tbaa !1
  %40 = load i32, i32* %a1, align 4, !tbaa !5
  %idx.ext27 = sext i32 %40 to i64
  %add.ptr28 = getelementptr inbounds i32, i32* %39, i64 %idx.ext27
  %call29 = call i32 @choose_table(i32* %38, i32* %add.ptr28, i32* %r1_bits)
  %table_select = getelementptr inbounds %struct.gr_info, %struct.gr_info* %cod_info, i32 0, i32 8
  %arrayidx30 = getelementptr inbounds [3 x i32], [3 x i32]* %table_select, i32 0, i64 0
  store i32 %call29, i32* %arrayidx30, align 4, !tbaa !5
  %41 = load %struct.gr_info*, %struct.gr_info** %gi.addr, align 8, !tbaa !1
  %part2_3_length31 = getelementptr inbounds %struct.gr_info, %struct.gr_info* %41, i32 0, i32 0
  %42 = load i32, i32* %part2_3_length31, align 4, !tbaa !30
  %43 = load i32, i32* %r1_bits, align 4, !tbaa !5
  %cmp32 = icmp slt i32 %42, %43
  br i1 %cmp32, label %if.then.33, label %if.end.34

if.then.33:                                       ; preds = %if.end.26
  br label %for.end.73

if.end.34:                                        ; preds = %if.end.26
  store i32 0, i32* %r1, align 4, !tbaa !5
  br label %for.cond.35

for.cond.35:                                      ; preds = %for.inc.68, %if.end.34
  %44 = load i32, i32* %r1, align 4, !tbaa !5
  %cmp36 = icmp slt i32 %44, 8
  br i1 %cmp36, label %for.body.37, label %for.end.70

for.body.37:                                      ; preds = %for.cond.35
  %45 = load i32, i32* %r1_bits, align 4, !tbaa !5
  %46 = load i32, i32* %r0, align 4, !tbaa !5
  %47 = load i32, i32* %r1, align 4, !tbaa !5
  %add38 = add nsw i32 %46, %47
  %add39 = add nsw i32 %add38, 2
  %idxprom40 = sext i32 %add39 to i64
  %arrayidx41 = getelementptr inbounds [25 x i32], [25 x i32]* %r3_bits, i32 0, i64 %idxprom40
  %48 = load i32, i32* %arrayidx41, align 4, !tbaa !5
  %add42 = add nsw i32 %45, %48
  %49 = load i32*, i32** %bits, align 8, !tbaa !1
  store i32 %add42, i32* %49, align 4, !tbaa !5
  %50 = load %struct.gr_info*, %struct.gr_info** %gi.addr, align 8, !tbaa !1
  %part2_3_length43 = getelementptr inbounds %struct.gr_info, %struct.gr_info* %50, i32 0, i32 0
  %51 = load i32, i32* %part2_3_length43, align 4, !tbaa !30
  %52 = load i32*, i32** %bits, align 8, !tbaa !1
  %53 = load i32, i32* %52, align 4, !tbaa !5
  %cmp44 = icmp slt i32 %51, %53
  br i1 %cmp44, label %if.then.45, label %if.end.46

if.then.45:                                       ; preds = %for.body.37
  br label %for.inc.68

if.end.46:                                        ; preds = %for.body.37
  %54 = load i32, i32* %r0, align 4, !tbaa !5
  %55 = load i32, i32* %r1, align 4, !tbaa !5
  %add47 = add nsw i32 %54, %55
  %add48 = add nsw i32 %add47, 2
  %idxprom49 = sext i32 %add48 to i64
  %arrayidx50 = getelementptr inbounds [23 x i32], [23 x i32]* getelementptr inbounds (%struct.scalefac_struct, %struct.scalefac_struct* @scalefac_band, i32 0, i32 0), i32 0, i64 %idxprom49
  %56 = load i32, i32* %arrayidx50, align 4, !tbaa !5
  store i32 %56, i32* %a2, align 4, !tbaa !5
  %57 = load i32*, i32** %ix.addr, align 8, !tbaa !1
  %58 = load i32, i32* %a1, align 4, !tbaa !5
  %idx.ext51 = sext i32 %58 to i64
  %add.ptr52 = getelementptr inbounds i32, i32* %57, i64 %idx.ext51
  %59 = load i32*, i32** %ix.addr, align 8, !tbaa !1
  %60 = load i32, i32* %a2, align 4, !tbaa !5
  %idx.ext53 = sext i32 %60 to i64
  %add.ptr54 = getelementptr inbounds i32, i32* %59, i64 %idx.ext53
  %61 = load i32*, i32** %bits, align 8, !tbaa !1
  %call55 = call i32 @choose_table(i32* %add.ptr52, i32* %add.ptr54, i32* %61)
  %table_select56 = getelementptr inbounds %struct.gr_info, %struct.gr_info* %cod_info, i32 0, i32 8
  %arrayidx57 = getelementptr inbounds [3 x i32], [3 x i32]* %table_select56, i32 0, i64 1
  store i32 %call55, i32* %arrayidx57, align 4, !tbaa !5
  %62 = load %struct.gr_info*, %struct.gr_info** %gi.addr, align 8, !tbaa !1
  %part2_3_length58 = getelementptr inbounds %struct.gr_info, %struct.gr_info* %62, i32 0, i32 0
  %63 = load i32, i32* %part2_3_length58, align 4, !tbaa !30
  %64 = load i32*, i32** %bits, align 8, !tbaa !1
  %65 = load i32, i32* %64, align 4, !tbaa !5
  %cmp59 = icmp slt i32 %63, %65
  br i1 %cmp59, label %if.then.60, label %if.end.61

if.then.60:                                       ; preds = %if.end.46
  br label %for.inc.68

if.end.61:                                        ; preds = %if.end.46
  %66 = load i32, i32* %r1, align 4, !tbaa !5
  %region1_count = getelementptr inbounds %struct.gr_info, %struct.gr_info* %cod_info, i32 0, i32 11
  store i32 %66, i32* %region1_count, align 4, !tbaa !28
  %67 = load i32, i32* %r0, align 4, !tbaa !5
  %68 = load i32, i32* %r1, align 4, !tbaa !5
  %add62 = add nsw i32 %67, %68
  %add63 = add nsw i32 %add62, 2
  %idxprom64 = sext i32 %add63 to i64
  %arrayidx65 = getelementptr inbounds [25 x i32], [25 x i32]* %r3_tbl, i32 0, i64 %idxprom64
  %69 = load i32, i32* %arrayidx65, align 4, !tbaa !5
  %table_select66 = getelementptr inbounds %struct.gr_info, %struct.gr_info* %cod_info, i32 0, i32 8
  %arrayidx67 = getelementptr inbounds [3 x i32], [3 x i32]* %table_select66, i32 0, i64 2
  store i32 %69, i32* %arrayidx67, align 4, !tbaa !5
  %70 = load %struct.gr_info*, %struct.gr_info** %gi.addr, align 8, !tbaa !1
  %71 = bitcast %struct.gr_info* %70 to i8*
  %72 = bitcast %struct.gr_info* %cod_info to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %71, i8* %72, i64 120, i32 8, i1 false)
  br label %for.inc.68

for.inc.68:                                       ; preds = %if.end.61, %if.then.60, %if.then.45
  %73 = load i32, i32* %r1, align 4, !tbaa !5
  %inc69 = add nsw i32 %73, 1
  store i32 %inc69, i32* %r1, align 4, !tbaa !5
  br label %for.cond.35

for.end.70:                                       ; preds = %for.cond.35
  br label %for.inc.71

for.inc.71:                                       ; preds = %for.end.70
  %74 = load i32, i32* %r0, align 4, !tbaa !5
  %inc72 = add nsw i32 %74, 1
  store i32 %inc72, i32* %r0, align 4, !tbaa !5
  br label %for.cond.18

for.end.73:                                       ; preds = %if.then.33, %if.then.25, %for.cond.18
  %75 = bitcast %struct.gr_info* %cod_info to i8*
  call void @llvm.lifetime.end(i64 120, i8* %75) #1
  %76 = bitcast [25 x i32]* %r3_tbl to i8*
  call void @llvm.lifetime.end(i64 100, i8* %76) #1
  %77 = bitcast [25 x i32]* %r3_bits to i8*
  call void @llvm.lifetime.end(i64 100, i8* %77) #1
  %78 = bitcast i32* %r1_bits to i8*
  call void @llvm.lifetime.end(i64 4, i8* %78) #1
  %79 = bitcast i32* %bigv to i8*
  call void @llvm.lifetime.end(i64 4, i8* %79) #1
  %80 = bitcast i32* %a2 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %80) #1
  %81 = bitcast i32* %a1 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %81) #1
  %82 = bitcast i32* %r1 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %82) #1
  %83 = bitcast i32* %r0 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %83) #1
  %84 = bitcast i32** %bits to i8*
  call void @llvm.lifetime.end(i64 8, i8* %84) #1
  ret void
}

; Function Attrs: nounwind
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* nocapture, i8* nocapture readonly, i64, i32, i1) #1

; Function Attrs: nounwind uwtable
define internal i32 @choose_table(i32* %ix, i32* %end, i32* %s) #0 {
entry:
  %retval = alloca i32, align 4
  %ix.addr = alloca i32*, align 8
  %end.addr = alloca i32*, align 8
  %s.addr = alloca i32*, align 8
  %max = alloca i32, align 4
  %choice0 = alloca i32, align 4
  %sum0 = alloca i32, align 4
  %choice1 = alloca i32, align 4
  %sum1 = alloca i32, align 4
  %cleanup.dest.slot = alloca i32
  store i32* %ix, i32** %ix.addr, align 8, !tbaa !1
  store i32* %end, i32** %end.addr, align 8, !tbaa !1
  store i32* %s, i32** %s.addr, align 8, !tbaa !1
  %0 = bitcast i32* %max to i8*
  call void @llvm.lifetime.start(i64 4, i8* %0) #1
  %1 = bitcast i32* %choice0 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %1) #1
  %2 = bitcast i32* %sum0 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %2) #1
  %3 = bitcast i32* %choice1 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %3) #1
  %4 = bitcast i32* %sum1 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %4) #1
  %5 = load i32*, i32** %ix.addr, align 8, !tbaa !1
  %6 = load i32*, i32** %end.addr, align 8, !tbaa !1
  %call = call i32 @ix_max(i32* %5, i32* %6)
  store i32 %call, i32* %max, align 4, !tbaa !5
  %7 = load i32, i32* %max, align 4, !tbaa !5
  %cmp = icmp sgt i32 %7, 8206
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %8 = load i32*, i32** %s.addr, align 8, !tbaa !1
  store i32 100000, i32* %8, align 4, !tbaa !5
  store i32 -1, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end:                                           ; preds = %entry
  %9 = load i32, i32* %max, align 4, !tbaa !5
  %cmp1 = icmp sle i32 %9, 15
  br i1 %cmp1, label %if.then.2, label %if.else

if.then.2:                                        ; preds = %if.end
  %10 = load i32, i32* %max, align 4, !tbaa !5
  %cmp3 = icmp eq i32 %10, 0
  br i1 %cmp3, label %if.then.4, label %if.end.5

if.then.4:                                        ; preds = %if.then.2
  store i32 0, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.5:                                         ; preds = %if.then.2
  %11 = load i32, i32* %max, align 4, !tbaa !5
  %sub = sub nsw i32 %11, 1
  %idxprom = sext i32 %sub to i64
  %arrayidx = getelementptr inbounds [15 x i32], [15 x i32]* @huf_tbl_noESC, i32 0, i64 %idxprom
  %12 = load i32, i32* %arrayidx, align 4, !tbaa !5
  store i32 %12, i32* %choice0, align 4, !tbaa !5
  %13 = load i32*, i32** %ix.addr, align 8, !tbaa !1
  %14 = load i32*, i32** %end.addr, align 8, !tbaa !1
  %15 = load i32, i32* %choice0, align 4, !tbaa !5
  %call6 = call i32 @count_bit_noESC(i32* %13, i32* %14, i32 %15)
  store i32 %call6, i32* %sum0, align 4, !tbaa !5
  %16 = load i32, i32* %choice0, align 4, !tbaa !5
  store i32 %16, i32* %choice1, align 4, !tbaa !5
  %17 = load i32, i32* %choice0, align 4, !tbaa !5
  switch i32 %17, label %sw.default [
    i32 7, label %sw.bb
    i32 10, label %sw.bb
    i32 2, label %sw.bb.11
    i32 5, label %sw.bb.11
    i32 13, label %sw.bb.17
  ]

sw.bb:                                            ; preds = %if.end.5, %if.end.5
  %18 = load i32, i32* %choice1, align 4, !tbaa !5
  %inc = add nsw i32 %18, 1
  store i32 %inc, i32* %choice1, align 4, !tbaa !5
  %19 = load i32, i32* %choice1, align 4, !tbaa !5
  %call7 = call i32 @count_bit_noESC2(i32 %19)
  store i32 %call7, i32* %sum1, align 4, !tbaa !5
  %20 = load i32, i32* %sum0, align 4, !tbaa !5
  %21 = load i32, i32* %sum1, align 4, !tbaa !5
  %cmp8 = icmp sgt i32 %20, %21
  br i1 %cmp8, label %if.then.9, label %if.end.10

if.then.9:                                        ; preds = %sw.bb
  %22 = load i32, i32* %sum1, align 4, !tbaa !5
  store i32 %22, i32* %sum0, align 4, !tbaa !5
  %23 = load i32, i32* %choice1, align 4, !tbaa !5
  store i32 %23, i32* %choice0, align 4, !tbaa !5
  br label %if.end.10

if.end.10:                                        ; preds = %if.then.9, %sw.bb
  br label %sw.bb.11

sw.bb.11:                                         ; preds = %if.end.5, %if.end.5, %if.end.10
  %24 = load i32, i32* %choice1, align 4, !tbaa !5
  %inc12 = add nsw i32 %24, 1
  store i32 %inc12, i32* %choice1, align 4, !tbaa !5
  %25 = load i32, i32* %choice1, align 4, !tbaa !5
  %call13 = call i32 @count_bit_noESC2(i32 %25)
  store i32 %call13, i32* %sum1, align 4, !tbaa !5
  %26 = load i32, i32* %sum0, align 4, !tbaa !5
  %27 = load i32, i32* %sum1, align 4, !tbaa !5
  %cmp14 = icmp sgt i32 %26, %27
  br i1 %cmp14, label %if.then.15, label %if.end.16

if.then.15:                                       ; preds = %sw.bb.11
  %28 = load i32, i32* %sum1, align 4, !tbaa !5
  store i32 %28, i32* %sum0, align 4, !tbaa !5
  %29 = load i32, i32* %choice1, align 4, !tbaa !5
  store i32 %29, i32* %choice0, align 4, !tbaa !5
  br label %if.end.16

if.end.16:                                        ; preds = %if.then.15, %sw.bb.11
  br label %sw.epilog

sw.bb.17:                                         ; preds = %if.end.5
  %30 = load i32, i32* %choice1, align 4, !tbaa !5
  %add = add nsw i32 %30, 2
  store i32 %add, i32* %choice1, align 4, !tbaa !5
  %31 = load i32, i32* %choice1, align 4, !tbaa !5
  %call18 = call i32 @count_bit_noESC2(i32 %31)
  store i32 %call18, i32* %sum1, align 4, !tbaa !5
  %32 = load i32, i32* %sum0, align 4, !tbaa !5
  %33 = load i32, i32* %sum1, align 4, !tbaa !5
  %cmp19 = icmp sgt i32 %32, %33
  br i1 %cmp19, label %if.then.20, label %if.end.21

if.then.20:                                       ; preds = %sw.bb.17
  %34 = load i32, i32* %sum1, align 4, !tbaa !5
  store i32 %34, i32* %sum0, align 4, !tbaa !5
  %35 = load i32, i32* %choice1, align 4, !tbaa !5
  store i32 %35, i32* %choice0, align 4, !tbaa !5
  br label %if.end.21

if.end.21:                                        ; preds = %if.then.20, %sw.bb.17
  br label %sw.epilog

sw.default:                                       ; preds = %if.end.5
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.default, %if.end.21, %if.end.16
  %36 = load i32, i32* %sum0, align 4, !tbaa !5
  %37 = load i32*, i32** %s.addr, align 8, !tbaa !1
  %38 = load i32, i32* %37, align 4, !tbaa !5
  %add22 = add nsw i32 %38, %36
  store i32 %add22, i32* %37, align 4, !tbaa !5
  br label %if.end.45

if.else:                                          ; preds = %if.end
  %39 = load i32, i32* %max, align 4, !tbaa !5
  %sub23 = sub nsw i32 %39, 15
  store i32 %sub23, i32* %max, align 4, !tbaa !5
  store i32 24, i32* %choice1, align 4, !tbaa !5
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.else
  %40 = load i32, i32* %choice1, align 4, !tbaa !5
  %cmp24 = icmp slt i32 %40, 32
  br i1 %cmp24, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %41 = load i32, i32* %choice1, align 4, !tbaa !5
  %idxprom25 = sext i32 %41 to i64
  %arrayidx26 = getelementptr inbounds [34 x %struct.huffcodetab], [34 x %struct.huffcodetab]* @ht, i32 0, i64 %idxprom25
  %linmax = getelementptr inbounds %struct.huffcodetab, %struct.huffcodetab* %arrayidx26, i32 0, i32 1
  %42 = load i32, i32* %linmax, align 4, !tbaa !18
  %43 = load i32, i32* %max, align 4, !tbaa !5
  %cmp27 = icmp sge i32 %42, %43
  br i1 %cmp27, label %if.then.28, label %if.end.29

if.then.28:                                       ; preds = %for.body
  br label %for.end

if.end.29:                                        ; preds = %for.body
  br label %for.inc

for.inc:                                          ; preds = %if.end.29
  %44 = load i32, i32* %choice1, align 4, !tbaa !5
  %inc30 = add nsw i32 %44, 1
  store i32 %inc30, i32* %choice1, align 4, !tbaa !5
  br label %for.cond

for.end:                                          ; preds = %if.then.28, %for.cond
  %45 = load i32, i32* %choice1, align 4, !tbaa !5
  %sub31 = sub nsw i32 %45, 8
  store i32 %sub31, i32* %choice0, align 4, !tbaa !5
  br label %for.cond.32

for.cond.32:                                      ; preds = %for.inc.41, %for.end
  %46 = load i32, i32* %choice0, align 4, !tbaa !5
  %cmp33 = icmp slt i32 %46, 24
  br i1 %cmp33, label %for.body.34, label %for.end.43

for.body.34:                                      ; preds = %for.cond.32
  %47 = load i32, i32* %choice0, align 4, !tbaa !5
  %idxprom35 = sext i32 %47 to i64
  %arrayidx36 = getelementptr inbounds [34 x %struct.huffcodetab], [34 x %struct.huffcodetab]* @ht, i32 0, i64 %idxprom35
  %linmax37 = getelementptr inbounds %struct.huffcodetab, %struct.huffcodetab* %arrayidx36, i32 0, i32 1
  %48 = load i32, i32* %linmax37, align 4, !tbaa !18
  %49 = load i32, i32* %max, align 4, !tbaa !5
  %cmp38 = icmp sge i32 %48, %49
  br i1 %cmp38, label %if.then.39, label %if.end.40

if.then.39:                                       ; preds = %for.body.34
  br label %for.end.43

if.end.40:                                        ; preds = %for.body.34
  br label %for.inc.41

for.inc.41:                                       ; preds = %if.end.40
  %50 = load i32, i32* %choice0, align 4, !tbaa !5
  %inc42 = add nsw i32 %50, 1
  store i32 %inc42, i32* %choice0, align 4, !tbaa !5
  br label %for.cond.32

for.end.43:                                       ; preds = %if.then.39, %for.cond.32
  %51 = load i32*, i32** %ix.addr, align 8, !tbaa !1
  %52 = load i32*, i32** %end.addr, align 8, !tbaa !1
  %53 = load i32, i32* %choice0, align 4, !tbaa !5
  %54 = load i32, i32* %choice1, align 4, !tbaa !5
  %55 = load i32*, i32** %s.addr, align 8, !tbaa !1
  %call44 = call i32 @count_bit_ESC(i32* %51, i32* %52, i32 %53, i32 %54, i32* %55)
  store i32 %call44, i32* %choice0, align 4, !tbaa !5
  br label %if.end.45

if.end.45:                                        ; preds = %for.end.43, %sw.epilog
  %56 = load i32, i32* %choice0, align 4, !tbaa !5
  store i32 %56, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %if.end.45, %if.then.4, %if.then
  %57 = bitcast i32* %sum1 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %57) #1
  %58 = bitcast i32* %choice1 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %58) #1
  %59 = bitcast i32* %sum0 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %59) #1
  %60 = bitcast i32* %choice0 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %60) #1
  %61 = bitcast i32* %max to i8*
  call void @llvm.lifetime.end(i64 4, i8* %61) #1
  %62 = load i32, i32* %retval
  ret i32 %62
}

; Function Attrs: nounwind uwtable
define void @best_scalefac_store(%struct.lame_global_flags* %gfp, i32 %gr, i32 %ch, [2 x [576 x i32]]* %l3_enc, %struct.III_side_info_t* %l3_side, [2 x %struct.III_scalefac_t]* %scalefac) #0 {
entry:
  %gfp.addr = alloca %struct.lame_global_flags*, align 8
  %gr.addr = alloca i32, align 4
  %ch.addr = alloca i32, align 4
  %l3_enc.addr = alloca [2 x [576 x i32]]*, align 8
  %l3_side.addr = alloca %struct.III_side_info_t*, align 8
  %scalefac.addr = alloca [2 x %struct.III_scalefac_t]*, align 8
  %gi = alloca %struct.gr_info*, align 8
  %sfb = alloca i32, align 4
  %i = alloca i32, align 4
  %l = alloca i32, align 4
  %start = alloca i32, align 4
  %end = alloca i32, align 4
  %sfb100 = alloca i32, align 4
  %b = alloca i32, align 4
  %s101 = alloca i32, align 4
  store %struct.lame_global_flags* %gfp, %struct.lame_global_flags** %gfp.addr, align 8, !tbaa !1
  store i32 %gr, i32* %gr.addr, align 4, !tbaa !5
  store i32 %ch, i32* %ch.addr, align 4, !tbaa !5
  store [2 x [576 x i32]]* %l3_enc, [2 x [576 x i32]]** %l3_enc.addr, align 8, !tbaa !1
  store %struct.III_side_info_t* %l3_side, %struct.III_side_info_t** %l3_side.addr, align 8, !tbaa !1
  store [2 x %struct.III_scalefac_t]* %scalefac, [2 x %struct.III_scalefac_t]** %scalefac.addr, align 8, !tbaa !1
  %0 = bitcast %struct.gr_info** %gi to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #1
  %1 = load i32, i32* %ch.addr, align 4, !tbaa !5
  %idxprom = sext i32 %1 to i64
  %2 = load i32, i32* %gr.addr, align 4, !tbaa !5
  %idxprom1 = sext i32 %2 to i64
  %3 = load %struct.III_side_info_t*, %struct.III_side_info_t** %l3_side.addr, align 8, !tbaa !1
  %gr2 = getelementptr inbounds %struct.III_side_info_t, %struct.III_side_info_t* %3, i32 0, i32 4
  %arrayidx = getelementptr inbounds [2 x %struct.anon.0], [2 x %struct.anon.0]* %gr2, i32 0, i64 %idxprom1
  %ch3 = getelementptr inbounds %struct.anon.0, %struct.anon.0* %arrayidx, i32 0, i32 0
  %arrayidx4 = getelementptr inbounds [2 x %struct.gr_info_ss], [2 x %struct.gr_info_ss]* %ch3, i32 0, i64 %idxprom
  %tt = getelementptr inbounds %struct.gr_info_ss, %struct.gr_info_ss* %arrayidx4, i32 0, i32 0
  store %struct.gr_info* %tt, %struct.gr_info** %gi, align 8, !tbaa !1
  %4 = bitcast i32* %sfb to i8*
  call void @llvm.lifetime.start(i64 4, i8* %4) #1
  %5 = bitcast i32* %i to i8*
  call void @llvm.lifetime.start(i64 4, i8* %5) #1
  %6 = bitcast i32* %l to i8*
  call void @llvm.lifetime.start(i64 4, i8* %6) #1
  %7 = bitcast i32* %start to i8*
  call void @llvm.lifetime.start(i64 4, i8* %7) #1
  %8 = bitcast i32* %end to i8*
  call void @llvm.lifetime.start(i64 4, i8* %8) #1
  store i32 0, i32* %sfb, align 4, !tbaa !5
  br label %for.cond

for.cond:                                         ; preds = %for.inc.39, %entry
  %9 = load i32, i32* %sfb, align 4, !tbaa !5
  %10 = load %struct.gr_info*, %struct.gr_info** %gi, align 8, !tbaa !1
  %sfb_lmax = getelementptr inbounds %struct.gr_info, %struct.gr_info* %10, i32 0, i32 16
  %11 = load i32, i32* %sfb_lmax, align 4, !tbaa !31
  %cmp = icmp ult i32 %9, %11
  br i1 %cmp, label %for.body, label %for.end.41

for.body:                                         ; preds = %for.cond
  %12 = load i32, i32* %sfb, align 4, !tbaa !5
  %idxprom5 = sext i32 %12 to i64
  %13 = load i32, i32* %ch.addr, align 4, !tbaa !5
  %idxprom6 = sext i32 %13 to i64
  %14 = load i32, i32* %gr.addr, align 4, !tbaa !5
  %idxprom7 = sext i32 %14 to i64
  %15 = load [2 x %struct.III_scalefac_t]*, [2 x %struct.III_scalefac_t]** %scalefac.addr, align 8, !tbaa !1
  %arrayidx8 = getelementptr inbounds [2 x %struct.III_scalefac_t], [2 x %struct.III_scalefac_t]* %15, i64 %idxprom7
  %arrayidx9 = getelementptr inbounds [2 x %struct.III_scalefac_t], [2 x %struct.III_scalefac_t]* %arrayidx8, i32 0, i64 %idxprom6
  %l10 = getelementptr inbounds %struct.III_scalefac_t, %struct.III_scalefac_t* %arrayidx9, i32 0, i32 0
  %arrayidx11 = getelementptr inbounds [22 x i32], [22 x i32]* %l10, i32 0, i64 %idxprom5
  %16 = load i32, i32* %arrayidx11, align 4, !tbaa !5
  %cmp12 = icmp sgt i32 %16, 0
  br i1 %cmp12, label %if.then, label %if.end.38

if.then:                                          ; preds = %for.body
  %17 = load i32, i32* %sfb, align 4, !tbaa !5
  %idxprom13 = sext i32 %17 to i64
  %arrayidx14 = getelementptr inbounds [23 x i32], [23 x i32]* getelementptr inbounds (%struct.scalefac_struct, %struct.scalefac_struct* @scalefac_band, i32 0, i32 0), i32 0, i64 %idxprom13
  %18 = load i32, i32* %arrayidx14, align 4, !tbaa !5
  store i32 %18, i32* %start, align 4, !tbaa !5
  %19 = load i32, i32* %sfb, align 4, !tbaa !5
  %add = add nsw i32 %19, 1
  %idxprom15 = sext i32 %add to i64
  %arrayidx16 = getelementptr inbounds [23 x i32], [23 x i32]* getelementptr inbounds (%struct.scalefac_struct, %struct.scalefac_struct* @scalefac_band, i32 0, i32 0), i32 0, i64 %idxprom15
  %20 = load i32, i32* %arrayidx16, align 4, !tbaa !5
  store i32 %20, i32* %end, align 4, !tbaa !5
  %21 = load i32, i32* %start, align 4, !tbaa !5
  store i32 %21, i32* %l, align 4, !tbaa !5
  br label %for.cond.17

for.cond.17:                                      ; preds = %for.inc, %if.then
  %22 = load i32, i32* %l, align 4, !tbaa !5
  %23 = load i32, i32* %end, align 4, !tbaa !5
  %cmp18 = icmp slt i32 %22, %23
  br i1 %cmp18, label %for.body.19, label %for.end

for.body.19:                                      ; preds = %for.cond.17
  %24 = load i32, i32* %l, align 4, !tbaa !5
  %idxprom20 = sext i32 %24 to i64
  %25 = load i32, i32* %ch.addr, align 4, !tbaa !5
  %idxprom21 = sext i32 %25 to i64
  %26 = load i32, i32* %gr.addr, align 4, !tbaa !5
  %idxprom22 = sext i32 %26 to i64
  %27 = load [2 x [576 x i32]]*, [2 x [576 x i32]]** %l3_enc.addr, align 8, !tbaa !1
  %arrayidx23 = getelementptr inbounds [2 x [576 x i32]], [2 x [576 x i32]]* %27, i64 %idxprom22
  %arrayidx24 = getelementptr inbounds [2 x [576 x i32]], [2 x [576 x i32]]* %arrayidx23, i32 0, i64 %idxprom21
  %arrayidx25 = getelementptr inbounds [576 x i32], [576 x i32]* %arrayidx24, i32 0, i64 %idxprom20
  %28 = load i32, i32* %arrayidx25, align 4, !tbaa !5
  %cmp26 = icmp ne i32 %28, 0
  br i1 %cmp26, label %if.then.27, label %if.end

if.then.27:                                       ; preds = %for.body.19
  br label %for.end

if.end:                                           ; preds = %for.body.19
  br label %for.inc

for.inc:                                          ; preds = %if.end
  %29 = load i32, i32* %l, align 4, !tbaa !5
  %inc = add nsw i32 %29, 1
  store i32 %inc, i32* %l, align 4, !tbaa !5
  br label %for.cond.17

for.end:                                          ; preds = %if.then.27, %for.cond.17
  %30 = load i32, i32* %l, align 4, !tbaa !5
  %31 = load i32, i32* %end, align 4, !tbaa !5
  %cmp28 = icmp eq i32 %30, %31
  br i1 %cmp28, label %if.then.29, label %if.end.37

if.then.29:                                       ; preds = %for.end
  %32 = load i32, i32* %sfb, align 4, !tbaa !5
  %idxprom30 = sext i32 %32 to i64
  %33 = load i32, i32* %ch.addr, align 4, !tbaa !5
  %idxprom31 = sext i32 %33 to i64
  %34 = load i32, i32* %gr.addr, align 4, !tbaa !5
  %idxprom32 = sext i32 %34 to i64
  %35 = load [2 x %struct.III_scalefac_t]*, [2 x %struct.III_scalefac_t]** %scalefac.addr, align 8, !tbaa !1
  %arrayidx33 = getelementptr inbounds [2 x %struct.III_scalefac_t], [2 x %struct.III_scalefac_t]* %35, i64 %idxprom32
  %arrayidx34 = getelementptr inbounds [2 x %struct.III_scalefac_t], [2 x %struct.III_scalefac_t]* %arrayidx33, i32 0, i64 %idxprom31
  %l35 = getelementptr inbounds %struct.III_scalefac_t, %struct.III_scalefac_t* %arrayidx34, i32 0, i32 0
  %arrayidx36 = getelementptr inbounds [22 x i32], [22 x i32]* %l35, i32 0, i64 %idxprom30
  store i32 0, i32* %arrayidx36, align 4, !tbaa !5
  br label %if.end.37

if.end.37:                                        ; preds = %if.then.29, %for.end
  br label %if.end.38

if.end.38:                                        ; preds = %if.end.37, %for.body
  br label %for.inc.39

for.inc.39:                                       ; preds = %if.end.38
  %36 = load i32, i32* %sfb, align 4, !tbaa !5
  %inc40 = add nsw i32 %36, 1
  store i32 %inc40, i32* %sfb, align 4, !tbaa !5
  br label %for.cond

for.end.41:                                       ; preds = %for.cond
  store i32 0, i32* %i, align 4, !tbaa !5
  br label %for.cond.42

for.cond.42:                                      ; preds = %for.inc.95, %for.end.41
  %37 = load i32, i32* %i, align 4, !tbaa !5
  %cmp43 = icmp slt i32 %37, 3
  br i1 %cmp43, label %for.body.44, label %for.end.97

for.body.44:                                      ; preds = %for.cond.42
  %38 = load %struct.gr_info*, %struct.gr_info** %gi, align 8, !tbaa !1
  %sfb_smax = getelementptr inbounds %struct.gr_info, %struct.gr_info* %38, i32 0, i32 17
  %39 = load i32, i32* %sfb_smax, align 4, !tbaa !32
  store i32 %39, i32* %sfb, align 4, !tbaa !5
  br label %for.cond.45

for.cond.45:                                      ; preds = %for.inc.92, %for.body.44
  %40 = load i32, i32* %sfb, align 4, !tbaa !5
  %cmp46 = icmp slt i32 %40, 12
  br i1 %cmp46, label %for.body.47, label %for.end.94

for.body.47:                                      ; preds = %for.cond.45
  %41 = load i32, i32* %i, align 4, !tbaa !5
  %idxprom48 = sext i32 %41 to i64
  %42 = load i32, i32* %sfb, align 4, !tbaa !5
  %idxprom49 = sext i32 %42 to i64
  %43 = load i32, i32* %ch.addr, align 4, !tbaa !5
  %idxprom50 = sext i32 %43 to i64
  %44 = load i32, i32* %gr.addr, align 4, !tbaa !5
  %idxprom51 = sext i32 %44 to i64
  %45 = load [2 x %struct.III_scalefac_t]*, [2 x %struct.III_scalefac_t]** %scalefac.addr, align 8, !tbaa !1
  %arrayidx52 = getelementptr inbounds [2 x %struct.III_scalefac_t], [2 x %struct.III_scalefac_t]* %45, i64 %idxprom51
  %arrayidx53 = getelementptr inbounds [2 x %struct.III_scalefac_t], [2 x %struct.III_scalefac_t]* %arrayidx52, i32 0, i64 %idxprom50
  %s = getelementptr inbounds %struct.III_scalefac_t, %struct.III_scalefac_t* %arrayidx53, i32 0, i32 1
  %arrayidx54 = getelementptr inbounds [13 x [3 x i32]], [13 x [3 x i32]]* %s, i32 0, i64 %idxprom49
  %arrayidx55 = getelementptr inbounds [3 x i32], [3 x i32]* %arrayidx54, i32 0, i64 %idxprom48
  %46 = load i32, i32* %arrayidx55, align 4, !tbaa !5
  %cmp56 = icmp sgt i32 %46, 0
  br i1 %cmp56, label %if.then.57, label %if.end.91

if.then.57:                                       ; preds = %for.body.47
  %47 = load i32, i32* %sfb, align 4, !tbaa !5
  %idxprom58 = sext i32 %47 to i64
  %arrayidx59 = getelementptr inbounds [14 x i32], [14 x i32]* getelementptr inbounds (%struct.scalefac_struct, %struct.scalefac_struct* @scalefac_band, i32 0, i32 1), i32 0, i64 %idxprom58
  %48 = load i32, i32* %arrayidx59, align 4, !tbaa !5
  store i32 %48, i32* %start, align 4, !tbaa !5
  %49 = load i32, i32* %sfb, align 4, !tbaa !5
  %add60 = add nsw i32 %49, 1
  %idxprom61 = sext i32 %add60 to i64
  %arrayidx62 = getelementptr inbounds [14 x i32], [14 x i32]* getelementptr inbounds (%struct.scalefac_struct, %struct.scalefac_struct* @scalefac_band, i32 0, i32 1), i32 0, i64 %idxprom61
  %50 = load i32, i32* %arrayidx62, align 4, !tbaa !5
  store i32 %50, i32* %end, align 4, !tbaa !5
  %51 = load i32, i32* %start, align 4, !tbaa !5
  store i32 %51, i32* %l, align 4, !tbaa !5
  br label %for.cond.63

for.cond.63:                                      ; preds = %for.inc.76, %if.then.57
  %52 = load i32, i32* %l, align 4, !tbaa !5
  %53 = load i32, i32* %end, align 4, !tbaa !5
  %cmp64 = icmp slt i32 %52, %53
  br i1 %cmp64, label %for.body.65, label %for.end.78

for.body.65:                                      ; preds = %for.cond.63
  %54 = load i32, i32* %l, align 4, !tbaa !5
  %mul = mul nsw i32 3, %54
  %55 = load i32, i32* %i, align 4, !tbaa !5
  %add66 = add nsw i32 %mul, %55
  %idxprom67 = sext i32 %add66 to i64
  %56 = load i32, i32* %ch.addr, align 4, !tbaa !5
  %idxprom68 = sext i32 %56 to i64
  %57 = load i32, i32* %gr.addr, align 4, !tbaa !5
  %idxprom69 = sext i32 %57 to i64
  %58 = load [2 x [576 x i32]]*, [2 x [576 x i32]]** %l3_enc.addr, align 8, !tbaa !1
  %arrayidx70 = getelementptr inbounds [2 x [576 x i32]], [2 x [576 x i32]]* %58, i64 %idxprom69
  %arrayidx71 = getelementptr inbounds [2 x [576 x i32]], [2 x [576 x i32]]* %arrayidx70, i32 0, i64 %idxprom68
  %arrayidx72 = getelementptr inbounds [576 x i32], [576 x i32]* %arrayidx71, i32 0, i64 %idxprom67
  %59 = load i32, i32* %arrayidx72, align 4, !tbaa !5
  %cmp73 = icmp ne i32 %59, 0
  br i1 %cmp73, label %if.then.74, label %if.end.75

if.then.74:                                       ; preds = %for.body.65
  br label %for.end.78

if.end.75:                                        ; preds = %for.body.65
  br label %for.inc.76

for.inc.76:                                       ; preds = %if.end.75
  %60 = load i32, i32* %l, align 4, !tbaa !5
  %inc77 = add nsw i32 %60, 1
  store i32 %inc77, i32* %l, align 4, !tbaa !5
  br label %for.cond.63

for.end.78:                                       ; preds = %if.then.74, %for.cond.63
  %61 = load i32, i32* %l, align 4, !tbaa !5
  %62 = load i32, i32* %end, align 4, !tbaa !5
  %cmp79 = icmp eq i32 %61, %62
  br i1 %cmp79, label %if.then.80, label %if.end.90

if.then.80:                                       ; preds = %for.end.78
  %63 = load i32, i32* %i, align 4, !tbaa !5
  %idxprom81 = sext i32 %63 to i64
  %64 = load i32, i32* %sfb, align 4, !tbaa !5
  %idxprom82 = sext i32 %64 to i64
  %65 = load i32, i32* %ch.addr, align 4, !tbaa !5
  %idxprom83 = sext i32 %65 to i64
  %66 = load i32, i32* %gr.addr, align 4, !tbaa !5
  %idxprom84 = sext i32 %66 to i64
  %67 = load [2 x %struct.III_scalefac_t]*, [2 x %struct.III_scalefac_t]** %scalefac.addr, align 8, !tbaa !1
  %arrayidx85 = getelementptr inbounds [2 x %struct.III_scalefac_t], [2 x %struct.III_scalefac_t]* %67, i64 %idxprom84
  %arrayidx86 = getelementptr inbounds [2 x %struct.III_scalefac_t], [2 x %struct.III_scalefac_t]* %arrayidx85, i32 0, i64 %idxprom83
  %s87 = getelementptr inbounds %struct.III_scalefac_t, %struct.III_scalefac_t* %arrayidx86, i32 0, i32 1
  %arrayidx88 = getelementptr inbounds [13 x [3 x i32]], [13 x [3 x i32]]* %s87, i32 0, i64 %idxprom82
  %arrayidx89 = getelementptr inbounds [3 x i32], [3 x i32]* %arrayidx88, i32 0, i64 %idxprom81
  store i32 0, i32* %arrayidx89, align 4, !tbaa !5
  br label %if.end.90

if.end.90:                                        ; preds = %if.then.80, %for.end.78
  br label %if.end.91

if.end.91:                                        ; preds = %if.end.90, %for.body.47
  br label %for.inc.92

for.inc.92:                                       ; preds = %if.end.91
  %68 = load i32, i32* %sfb, align 4, !tbaa !5
  %inc93 = add nsw i32 %68, 1
  store i32 %inc93, i32* %sfb, align 4, !tbaa !5
  br label %for.cond.45

for.end.94:                                       ; preds = %for.cond.45
  br label %for.inc.95

for.inc.95:                                       ; preds = %for.end.94
  %69 = load i32, i32* %i, align 4, !tbaa !5
  %inc96 = add nsw i32 %69, 1
  store i32 %inc96, i32* %i, align 4, !tbaa !5
  br label %for.cond.42

for.end.97:                                       ; preds = %for.cond.42
  %70 = load %struct.gr_info*, %struct.gr_info** %gi, align 8, !tbaa !1
  %part2_length = getelementptr inbounds %struct.gr_info, %struct.gr_info* %70, i32 0, i32 15
  %71 = load i32, i32* %part2_length, align 4, !tbaa !29
  %72 = load %struct.gr_info*, %struct.gr_info** %gi, align 8, !tbaa !1
  %part2_3_length = getelementptr inbounds %struct.gr_info, %struct.gr_info* %72, i32 0, i32 0
  %73 = load i32, i32* %part2_3_length, align 4, !tbaa !30
  %sub = sub i32 %73, %71
  store i32 %sub, i32* %part2_3_length, align 4, !tbaa !30
  %74 = load %struct.gr_info*, %struct.gr_info** %gi, align 8, !tbaa !1
  %scalefac_scale = getelementptr inbounds %struct.gr_info, %struct.gr_info* %74, i32 0, i32 13
  %75 = load i32, i32* %scalefac_scale, align 4, !tbaa !33
  %tobool = icmp ne i32 %75, 0
  br i1 %tobool, label %if.end.195, label %land.lhs.true

land.lhs.true:                                    ; preds = %for.end.97
  %76 = load %struct.gr_info*, %struct.gr_info** %gi, align 8, !tbaa !1
  %preflag = getelementptr inbounds %struct.gr_info, %struct.gr_info* %76, i32 0, i32 12
  %77 = load i32, i32* %preflag, align 4, !tbaa !34
  %tobool98 = icmp ne i32 %77, 0
  br i1 %tobool98, label %if.end.195, label %if.then.99

if.then.99:                                       ; preds = %land.lhs.true
  %78 = bitcast i32* %sfb100 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %78) #1
  %79 = bitcast i32* %b to i8*
  call void @llvm.lifetime.start(i64 4, i8* %79) #1
  %80 = bitcast i32* %s101 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %80) #1
  store i32 0, i32* %s101, align 4, !tbaa !5
  store i32 0, i32* %sfb100, align 4, !tbaa !5
  br label %for.cond.102

for.cond.102:                                     ; preds = %for.inc.113, %if.then.99
  %81 = load i32, i32* %sfb100, align 4, !tbaa !5
  %82 = load %struct.gr_info*, %struct.gr_info** %gi, align 8, !tbaa !1
  %sfb_lmax103 = getelementptr inbounds %struct.gr_info, %struct.gr_info* %82, i32 0, i32 16
  %83 = load i32, i32* %sfb_lmax103, align 4, !tbaa !31
  %cmp104 = icmp ult i32 %81, %83
  br i1 %cmp104, label %for.body.105, label %for.end.115

for.body.105:                                     ; preds = %for.cond.102
  %84 = load i32, i32* %sfb100, align 4, !tbaa !5
  %idxprom106 = zext i32 %84 to i64
  %85 = load i32, i32* %ch.addr, align 4, !tbaa !5
  %idxprom107 = sext i32 %85 to i64
  %86 = load i32, i32* %gr.addr, align 4, !tbaa !5
  %idxprom108 = sext i32 %86 to i64
  %87 = load [2 x %struct.III_scalefac_t]*, [2 x %struct.III_scalefac_t]** %scalefac.addr, align 8, !tbaa !1
  %arrayidx109 = getelementptr inbounds [2 x %struct.III_scalefac_t], [2 x %struct.III_scalefac_t]* %87, i64 %idxprom108
  %arrayidx110 = getelementptr inbounds [2 x %struct.III_scalefac_t], [2 x %struct.III_scalefac_t]* %arrayidx109, i32 0, i64 %idxprom107
  %l111 = getelementptr inbounds %struct.III_scalefac_t, %struct.III_scalefac_t* %arrayidx110, i32 0, i32 0
  %arrayidx112 = getelementptr inbounds [22 x i32], [22 x i32]* %l111, i32 0, i64 %idxprom106
  %88 = load i32, i32* %arrayidx112, align 4, !tbaa !5
  %89 = load i32, i32* %s101, align 4, !tbaa !5
  %or = or i32 %89, %88
  store i32 %or, i32* %s101, align 4, !tbaa !5
  br label %for.inc.113

for.inc.113:                                      ; preds = %for.body.105
  %90 = load i32, i32* %sfb100, align 4, !tbaa !5
  %inc114 = add i32 %90, 1
  store i32 %inc114, i32* %sfb100, align 4, !tbaa !5
  br label %for.cond.102

for.end.115:                                      ; preds = %for.cond.102
  %91 = load %struct.gr_info*, %struct.gr_info** %gi, align 8, !tbaa !1
  %sfb_smax116 = getelementptr inbounds %struct.gr_info, %struct.gr_info* %91, i32 0, i32 17
  %92 = load i32, i32* %sfb_smax116, align 4, !tbaa !32
  store i32 %92, i32* %sfb100, align 4, !tbaa !5
  br label %for.cond.117

for.cond.117:                                     ; preds = %for.inc.136, %for.end.115
  %93 = load i32, i32* %sfb100, align 4, !tbaa !5
  %cmp118 = icmp ult i32 %93, 12
  br i1 %cmp118, label %for.body.119, label %for.end.138

for.body.119:                                     ; preds = %for.cond.117
  store i32 0, i32* %b, align 4, !tbaa !5
  br label %for.cond.120

for.cond.120:                                     ; preds = %for.inc.133, %for.body.119
  %94 = load i32, i32* %b, align 4, !tbaa !5
  %cmp121 = icmp slt i32 %94, 3
  br i1 %cmp121, label %for.body.122, label %for.end.135

for.body.122:                                     ; preds = %for.cond.120
  %95 = load i32, i32* %b, align 4, !tbaa !5
  %idxprom123 = sext i32 %95 to i64
  %96 = load i32, i32* %sfb100, align 4, !tbaa !5
  %idxprom124 = zext i32 %96 to i64
  %97 = load i32, i32* %ch.addr, align 4, !tbaa !5
  %idxprom125 = sext i32 %97 to i64
  %98 = load i32, i32* %gr.addr, align 4, !tbaa !5
  %idxprom126 = sext i32 %98 to i64
  %99 = load [2 x %struct.III_scalefac_t]*, [2 x %struct.III_scalefac_t]** %scalefac.addr, align 8, !tbaa !1
  %arrayidx127 = getelementptr inbounds [2 x %struct.III_scalefac_t], [2 x %struct.III_scalefac_t]* %99, i64 %idxprom126
  %arrayidx128 = getelementptr inbounds [2 x %struct.III_scalefac_t], [2 x %struct.III_scalefac_t]* %arrayidx127, i32 0, i64 %idxprom125
  %s129 = getelementptr inbounds %struct.III_scalefac_t, %struct.III_scalefac_t* %arrayidx128, i32 0, i32 1
  %arrayidx130 = getelementptr inbounds [13 x [3 x i32]], [13 x [3 x i32]]* %s129, i32 0, i64 %idxprom124
  %arrayidx131 = getelementptr inbounds [3 x i32], [3 x i32]* %arrayidx130, i32 0, i64 %idxprom123
  %100 = load i32, i32* %arrayidx131, align 4, !tbaa !5
  %101 = load i32, i32* %s101, align 4, !tbaa !5
  %or132 = or i32 %101, %100
  store i32 %or132, i32* %s101, align 4, !tbaa !5
  br label %for.inc.133

for.inc.133:                                      ; preds = %for.body.122
  %102 = load i32, i32* %b, align 4, !tbaa !5
  %inc134 = add nsw i32 %102, 1
  store i32 %inc134, i32* %b, align 4, !tbaa !5
  br label %for.cond.120

for.end.135:                                      ; preds = %for.cond.120
  br label %for.inc.136

for.inc.136:                                      ; preds = %for.end.135
  %103 = load i32, i32* %sfb100, align 4, !tbaa !5
  %inc137 = add i32 %103, 1
  store i32 %inc137, i32* %sfb100, align 4, !tbaa !5
  br label %for.cond.117

for.end.138:                                      ; preds = %for.cond.117
  %104 = load i32, i32* %s101, align 4, !tbaa !5
  %and = and i32 %104, 1
  %tobool139 = icmp ne i32 %and, 0
  br i1 %tobool139, label %if.end.194, label %land.lhs.true.140

land.lhs.true.140:                                ; preds = %for.end.138
  %105 = load i32, i32* %s101, align 4, !tbaa !5
  %cmp141 = icmp ne i32 %105, 0
  br i1 %cmp141, label %if.then.142, label %if.end.194

if.then.142:                                      ; preds = %land.lhs.true.140
  store i32 0, i32* %sfb100, align 4, !tbaa !5
  br label %for.cond.143

for.cond.143:                                     ; preds = %for.inc.154, %if.then.142
  %106 = load i32, i32* %sfb100, align 4, !tbaa !5
  %107 = load %struct.gr_info*, %struct.gr_info** %gi, align 8, !tbaa !1
  %sfb_lmax144 = getelementptr inbounds %struct.gr_info, %struct.gr_info* %107, i32 0, i32 16
  %108 = load i32, i32* %sfb_lmax144, align 4, !tbaa !31
  %cmp145 = icmp ult i32 %106, %108
  br i1 %cmp145, label %for.body.146, label %for.end.156

for.body.146:                                     ; preds = %for.cond.143
  %109 = load i32, i32* %sfb100, align 4, !tbaa !5
  %idxprom147 = zext i32 %109 to i64
  %110 = load i32, i32* %ch.addr, align 4, !tbaa !5
  %idxprom148 = sext i32 %110 to i64
  %111 = load i32, i32* %gr.addr, align 4, !tbaa !5
  %idxprom149 = sext i32 %111 to i64
  %112 = load [2 x %struct.III_scalefac_t]*, [2 x %struct.III_scalefac_t]** %scalefac.addr, align 8, !tbaa !1
  %arrayidx150 = getelementptr inbounds [2 x %struct.III_scalefac_t], [2 x %struct.III_scalefac_t]* %112, i64 %idxprom149
  %arrayidx151 = getelementptr inbounds [2 x %struct.III_scalefac_t], [2 x %struct.III_scalefac_t]* %arrayidx150, i32 0, i64 %idxprom148
  %l152 = getelementptr inbounds %struct.III_scalefac_t, %struct.III_scalefac_t* %arrayidx151, i32 0, i32 0
  %arrayidx153 = getelementptr inbounds [22 x i32], [22 x i32]* %l152, i32 0, i64 %idxprom147
  %113 = load i32, i32* %arrayidx153, align 4, !tbaa !5
  %div = sdiv i32 %113, 2
  store i32 %div, i32* %arrayidx153, align 4, !tbaa !5
  br label %for.inc.154

for.inc.154:                                      ; preds = %for.body.146
  %114 = load i32, i32* %sfb100, align 4, !tbaa !5
  %inc155 = add i32 %114, 1
  store i32 %inc155, i32* %sfb100, align 4, !tbaa !5
  br label %for.cond.143

for.end.156:                                      ; preds = %for.cond.143
  %115 = load %struct.gr_info*, %struct.gr_info** %gi, align 8, !tbaa !1
  %sfb_smax157 = getelementptr inbounds %struct.gr_info, %struct.gr_info* %115, i32 0, i32 17
  %116 = load i32, i32* %sfb_smax157, align 4, !tbaa !32
  store i32 %116, i32* %sfb100, align 4, !tbaa !5
  br label %for.cond.158

for.cond.158:                                     ; preds = %for.inc.177, %for.end.156
  %117 = load i32, i32* %sfb100, align 4, !tbaa !5
  %cmp159 = icmp ult i32 %117, 12
  br i1 %cmp159, label %for.body.160, label %for.end.179

for.body.160:                                     ; preds = %for.cond.158
  store i32 0, i32* %b, align 4, !tbaa !5
  br label %for.cond.161

for.cond.161:                                     ; preds = %for.inc.174, %for.body.160
  %118 = load i32, i32* %b, align 4, !tbaa !5
  %cmp162 = icmp slt i32 %118, 3
  br i1 %cmp162, label %for.body.163, label %for.end.176

for.body.163:                                     ; preds = %for.cond.161
  %119 = load i32, i32* %b, align 4, !tbaa !5
  %idxprom164 = sext i32 %119 to i64
  %120 = load i32, i32* %sfb100, align 4, !tbaa !5
  %idxprom165 = zext i32 %120 to i64
  %121 = load i32, i32* %ch.addr, align 4, !tbaa !5
  %idxprom166 = sext i32 %121 to i64
  %122 = load i32, i32* %gr.addr, align 4, !tbaa !5
  %idxprom167 = sext i32 %122 to i64
  %123 = load [2 x %struct.III_scalefac_t]*, [2 x %struct.III_scalefac_t]** %scalefac.addr, align 8, !tbaa !1
  %arrayidx168 = getelementptr inbounds [2 x %struct.III_scalefac_t], [2 x %struct.III_scalefac_t]* %123, i64 %idxprom167
  %arrayidx169 = getelementptr inbounds [2 x %struct.III_scalefac_t], [2 x %struct.III_scalefac_t]* %arrayidx168, i32 0, i64 %idxprom166
  %s170 = getelementptr inbounds %struct.III_scalefac_t, %struct.III_scalefac_t* %arrayidx169, i32 0, i32 1
  %arrayidx171 = getelementptr inbounds [13 x [3 x i32]], [13 x [3 x i32]]* %s170, i32 0, i64 %idxprom165
  %arrayidx172 = getelementptr inbounds [3 x i32], [3 x i32]* %arrayidx171, i32 0, i64 %idxprom164
  %124 = load i32, i32* %arrayidx172, align 4, !tbaa !5
  %div173 = sdiv i32 %124, 2
  store i32 %div173, i32* %arrayidx172, align 4, !tbaa !5
  br label %for.inc.174

for.inc.174:                                      ; preds = %for.body.163
  %125 = load i32, i32* %b, align 4, !tbaa !5
  %inc175 = add nsw i32 %125, 1
  store i32 %inc175, i32* %b, align 4, !tbaa !5
  br label %for.cond.161

for.end.176:                                      ; preds = %for.cond.161
  br label %for.inc.177

for.inc.177:                                      ; preds = %for.end.176
  %126 = load i32, i32* %sfb100, align 4, !tbaa !5
  %inc178 = add i32 %126, 1
  store i32 %inc178, i32* %sfb100, align 4, !tbaa !5
  br label %for.cond.158

for.end.179:                                      ; preds = %for.cond.158
  %127 = load %struct.gr_info*, %struct.gr_info** %gi, align 8, !tbaa !1
  %scalefac_scale180 = getelementptr inbounds %struct.gr_info, %struct.gr_info* %127, i32 0, i32 13
  store i32 1, i32* %scalefac_scale180, align 4, !tbaa !33
  %128 = load %struct.gr_info*, %struct.gr_info** %gi, align 8, !tbaa !1
  %part2_length181 = getelementptr inbounds %struct.gr_info, %struct.gr_info* %128, i32 0, i32 15
  store i32 99999999, i32* %part2_length181, align 4, !tbaa !29
  %129 = load %struct.lame_global_flags*, %struct.lame_global_flags** %gfp.addr, align 8, !tbaa !1
  %mode_gr = getelementptr inbounds %struct.lame_global_flags, %struct.lame_global_flags* %129, i32 0, i32 45
  %130 = load i32, i32* %mode_gr, align 4, !tbaa !35
  %cmp182 = icmp eq i32 %130, 2
  br i1 %cmp182, label %if.then.183, label %if.else

if.then.183:                                      ; preds = %for.end.179
  %131 = load i32, i32* %ch.addr, align 4, !tbaa !5
  %idxprom184 = sext i32 %131 to i64
  %132 = load i32, i32* %gr.addr, align 4, !tbaa !5
  %idxprom185 = sext i32 %132 to i64
  %133 = load [2 x %struct.III_scalefac_t]*, [2 x %struct.III_scalefac_t]** %scalefac.addr, align 8, !tbaa !1
  %arrayidx186 = getelementptr inbounds [2 x %struct.III_scalefac_t], [2 x %struct.III_scalefac_t]* %133, i64 %idxprom185
  %arrayidx187 = getelementptr inbounds [2 x %struct.III_scalefac_t], [2 x %struct.III_scalefac_t]* %arrayidx186, i32 0, i64 %idxprom184
  %134 = load %struct.gr_info*, %struct.gr_info** %gi, align 8, !tbaa !1
  %call = call i32 @scale_bitcount(%struct.III_scalefac_t* %arrayidx187, %struct.gr_info* %134)
  br label %if.end.193

if.else:                                          ; preds = %for.end.179
  %135 = load i32, i32* %ch.addr, align 4, !tbaa !5
  %idxprom188 = sext i32 %135 to i64
  %136 = load i32, i32* %gr.addr, align 4, !tbaa !5
  %idxprom189 = sext i32 %136 to i64
  %137 = load [2 x %struct.III_scalefac_t]*, [2 x %struct.III_scalefac_t]** %scalefac.addr, align 8, !tbaa !1
  %arrayidx190 = getelementptr inbounds [2 x %struct.III_scalefac_t], [2 x %struct.III_scalefac_t]* %137, i64 %idxprom189
  %arrayidx191 = getelementptr inbounds [2 x %struct.III_scalefac_t], [2 x %struct.III_scalefac_t]* %arrayidx190, i32 0, i64 %idxprom188
  %138 = load %struct.gr_info*, %struct.gr_info** %gi, align 8, !tbaa !1
  %call192 = call i32 @scale_bitcount_lsf(%struct.III_scalefac_t* %arrayidx191, %struct.gr_info* %138)
  br label %if.end.193

if.end.193:                                       ; preds = %if.else, %if.then.183
  br label %if.end.194

if.end.194:                                       ; preds = %if.end.193, %land.lhs.true.140, %for.end.138
  %139 = bitcast i32* %s101 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %139) #1
  %140 = bitcast i32* %b to i8*
  call void @llvm.lifetime.end(i64 4, i8* %140) #1
  %141 = bitcast i32* %sfb100 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %141) #1
  br label %if.end.195

if.end.195:                                       ; preds = %if.end.194, %land.lhs.true, %for.end.97
  %142 = load %struct.lame_global_flags*, %struct.lame_global_flags** %gfp.addr, align 8, !tbaa !1
  %mode_gr196 = getelementptr inbounds %struct.lame_global_flags, %struct.lame_global_flags* %142, i32 0, i32 45
  %143 = load i32, i32* %mode_gr196, align 4, !tbaa !35
  %cmp197 = icmp eq i32 %143, 2
  br i1 %cmp197, label %land.lhs.true.198, label %if.end.250

land.lhs.true.198:                                ; preds = %if.end.195
  %144 = load i32, i32* %gr.addr, align 4, !tbaa !5
  %cmp199 = icmp eq i32 %144, 1
  br i1 %cmp199, label %land.lhs.true.200, label %if.end.250

land.lhs.true.200:                                ; preds = %land.lhs.true.198
  %145 = load i32, i32* %ch.addr, align 4, !tbaa !5
  %idxprom201 = sext i32 %145 to i64
  %146 = load %struct.III_side_info_t*, %struct.III_side_info_t** %l3_side.addr, align 8, !tbaa !1
  %gr202 = getelementptr inbounds %struct.III_side_info_t, %struct.III_side_info_t* %146, i32 0, i32 4
  %arrayidx203 = getelementptr inbounds [2 x %struct.anon.0], [2 x %struct.anon.0]* %gr202, i32 0, i64 0
  %ch204 = getelementptr inbounds %struct.anon.0, %struct.anon.0* %arrayidx203, i32 0, i32 0
  %arrayidx205 = getelementptr inbounds [2 x %struct.gr_info_ss], [2 x %struct.gr_info_ss]* %ch204, i32 0, i64 %idxprom201
  %tt206 = getelementptr inbounds %struct.gr_info_ss, %struct.gr_info_ss* %arrayidx205, i32 0, i32 0
  %block_type = getelementptr inbounds %struct.gr_info, %struct.gr_info* %tt206, i32 0, i32 6
  %147 = load i32, i32* %block_type, align 4, !tbaa !36
  %cmp207 = icmp ne i32 %147, 2
  br i1 %cmp207, label %land.lhs.true.208, label %if.end.250

land.lhs.true.208:                                ; preds = %land.lhs.true.200
  %148 = load i32, i32* %ch.addr, align 4, !tbaa !5
  %idxprom209 = sext i32 %148 to i64
  %149 = load %struct.III_side_info_t*, %struct.III_side_info_t** %l3_side.addr, align 8, !tbaa !1
  %gr210 = getelementptr inbounds %struct.III_side_info_t, %struct.III_side_info_t* %149, i32 0, i32 4
  %arrayidx211 = getelementptr inbounds [2 x %struct.anon.0], [2 x %struct.anon.0]* %gr210, i32 0, i64 1
  %ch212 = getelementptr inbounds %struct.anon.0, %struct.anon.0* %arrayidx211, i32 0, i32 0
  %arrayidx213 = getelementptr inbounds [2 x %struct.gr_info_ss], [2 x %struct.gr_info_ss]* %ch212, i32 0, i64 %idxprom209
  %tt214 = getelementptr inbounds %struct.gr_info_ss, %struct.gr_info_ss* %arrayidx213, i32 0, i32 0
  %block_type215 = getelementptr inbounds %struct.gr_info, %struct.gr_info* %tt214, i32 0, i32 6
  %150 = load i32, i32* %block_type215, align 4, !tbaa !36
  %cmp216 = icmp ne i32 %150, 2
  br i1 %cmp216, label %land.lhs.true.217, label %if.end.250

land.lhs.true.217:                                ; preds = %land.lhs.true.208
  %151 = load i32, i32* %ch.addr, align 4, !tbaa !5
  %idxprom218 = sext i32 %151 to i64
  %152 = load %struct.III_side_info_t*, %struct.III_side_info_t** %l3_side.addr, align 8, !tbaa !1
  %gr219 = getelementptr inbounds %struct.III_side_info_t, %struct.III_side_info_t* %152, i32 0, i32 4
  %arrayidx220 = getelementptr inbounds [2 x %struct.anon.0], [2 x %struct.anon.0]* %gr219, i32 0, i64 0
  %ch221 = getelementptr inbounds %struct.anon.0, %struct.anon.0* %arrayidx220, i32 0, i32 0
  %arrayidx222 = getelementptr inbounds [2 x %struct.gr_info_ss], [2 x %struct.gr_info_ss]* %ch221, i32 0, i64 %idxprom218
  %tt223 = getelementptr inbounds %struct.gr_info_ss, %struct.gr_info_ss* %arrayidx222, i32 0, i32 0
  %scalefac_scale224 = getelementptr inbounds %struct.gr_info, %struct.gr_info* %tt223, i32 0, i32 13
  %153 = load i32, i32* %scalefac_scale224, align 4, !tbaa !38
  %154 = load i32, i32* %ch.addr, align 4, !tbaa !5
  %idxprom225 = sext i32 %154 to i64
  %155 = load %struct.III_side_info_t*, %struct.III_side_info_t** %l3_side.addr, align 8, !tbaa !1
  %gr226 = getelementptr inbounds %struct.III_side_info_t, %struct.III_side_info_t* %155, i32 0, i32 4
  %arrayidx227 = getelementptr inbounds [2 x %struct.anon.0], [2 x %struct.anon.0]* %gr226, i32 0, i64 1
  %ch228 = getelementptr inbounds %struct.anon.0, %struct.anon.0* %arrayidx227, i32 0, i32 0
  %arrayidx229 = getelementptr inbounds [2 x %struct.gr_info_ss], [2 x %struct.gr_info_ss]* %ch228, i32 0, i64 %idxprom225
  %tt230 = getelementptr inbounds %struct.gr_info_ss, %struct.gr_info_ss* %arrayidx229, i32 0, i32 0
  %scalefac_scale231 = getelementptr inbounds %struct.gr_info, %struct.gr_info* %tt230, i32 0, i32 13
  %156 = load i32, i32* %scalefac_scale231, align 4, !tbaa !38
  %cmp232 = icmp eq i32 %153, %156
  br i1 %cmp232, label %land.lhs.true.233, label %if.end.250

land.lhs.true.233:                                ; preds = %land.lhs.true.217
  %157 = load i32, i32* %ch.addr, align 4, !tbaa !5
  %idxprom234 = sext i32 %157 to i64
  %158 = load %struct.III_side_info_t*, %struct.III_side_info_t** %l3_side.addr, align 8, !tbaa !1
  %gr235 = getelementptr inbounds %struct.III_side_info_t, %struct.III_side_info_t* %158, i32 0, i32 4
  %arrayidx236 = getelementptr inbounds [2 x %struct.anon.0], [2 x %struct.anon.0]* %gr235, i32 0, i64 0
  %ch237 = getelementptr inbounds %struct.anon.0, %struct.anon.0* %arrayidx236, i32 0, i32 0
  %arrayidx238 = getelementptr inbounds [2 x %struct.gr_info_ss], [2 x %struct.gr_info_ss]* %ch237, i32 0, i64 %idxprom234
  %tt239 = getelementptr inbounds %struct.gr_info_ss, %struct.gr_info_ss* %arrayidx238, i32 0, i32 0
  %preflag240 = getelementptr inbounds %struct.gr_info, %struct.gr_info* %tt239, i32 0, i32 12
  %159 = load i32, i32* %preflag240, align 4, !tbaa !39
  %160 = load i32, i32* %ch.addr, align 4, !tbaa !5
  %idxprom241 = sext i32 %160 to i64
  %161 = load %struct.III_side_info_t*, %struct.III_side_info_t** %l3_side.addr, align 8, !tbaa !1
  %gr242 = getelementptr inbounds %struct.III_side_info_t, %struct.III_side_info_t* %161, i32 0, i32 4
  %arrayidx243 = getelementptr inbounds [2 x %struct.anon.0], [2 x %struct.anon.0]* %gr242, i32 0, i64 1
  %ch244 = getelementptr inbounds %struct.anon.0, %struct.anon.0* %arrayidx243, i32 0, i32 0
  %arrayidx245 = getelementptr inbounds [2 x %struct.gr_info_ss], [2 x %struct.gr_info_ss]* %ch244, i32 0, i64 %idxprom241
  %tt246 = getelementptr inbounds %struct.gr_info_ss, %struct.gr_info_ss* %arrayidx245, i32 0, i32 0
  %preflag247 = getelementptr inbounds %struct.gr_info, %struct.gr_info* %tt246, i32 0, i32 12
  %162 = load i32, i32* %preflag247, align 4, !tbaa !39
  %cmp248 = icmp eq i32 %159, %162
  br i1 %cmp248, label %if.then.249, label %if.end.250

if.then.249:                                      ; preds = %land.lhs.true.233
  %163 = load i32, i32* %ch.addr, align 4, !tbaa !5
  %164 = load %struct.III_side_info_t*, %struct.III_side_info_t** %l3_side.addr, align 8, !tbaa !1
  %165 = load [2 x %struct.III_scalefac_t]*, [2 x %struct.III_scalefac_t]** %scalefac.addr, align 8, !tbaa !1
  call void @scfsi_calc(i32 %163, %struct.III_side_info_t* %164, [2 x %struct.III_scalefac_t]* %165)
  br label %if.end.250

if.end.250:                                       ; preds = %if.then.249, %land.lhs.true.233, %land.lhs.true.217, %land.lhs.true.208, %land.lhs.true.200, %land.lhs.true.198, %if.end.195
  %166 = load %struct.gr_info*, %struct.gr_info** %gi, align 8, !tbaa !1
  %part2_length251 = getelementptr inbounds %struct.gr_info, %struct.gr_info* %166, i32 0, i32 15
  %167 = load i32, i32* %part2_length251, align 4, !tbaa !29
  %168 = load %struct.gr_info*, %struct.gr_info** %gi, align 8, !tbaa !1
  %part2_3_length252 = getelementptr inbounds %struct.gr_info, %struct.gr_info* %168, i32 0, i32 0
  %169 = load i32, i32* %part2_3_length252, align 4, !tbaa !30
  %add253 = add i32 %169, %167
  store i32 %add253, i32* %part2_3_length252, align 4, !tbaa !30
  %170 = bitcast i32* %end to i8*
  call void @llvm.lifetime.end(i64 4, i8* %170) #1
  %171 = bitcast i32* %start to i8*
  call void @llvm.lifetime.end(i64 4, i8* %171) #1
  %172 = bitcast i32* %l to i8*
  call void @llvm.lifetime.end(i64 4, i8* %172) #1
  %173 = bitcast i32* %i to i8*
  call void @llvm.lifetime.end(i64 4, i8* %173) #1
  %174 = bitcast i32* %sfb to i8*
  call void @llvm.lifetime.end(i64 4, i8* %174) #1
  %175 = bitcast %struct.gr_info** %gi to i8*
  call void @llvm.lifetime.end(i64 8, i8* %175) #1
  ret void
}

declare i32 @scale_bitcount(%struct.III_scalefac_t*, %struct.gr_info*) #2

declare i32 @scale_bitcount_lsf(%struct.III_scalefac_t*, %struct.gr_info*) #2

; Function Attrs: nounwind uwtable
define internal void @scfsi_calc(i32 %ch, %struct.III_side_info_t* %l3_side, [2 x %struct.III_scalefac_t]* %scalefac) #0 {
entry:
  %ch.addr = alloca i32, align 4
  %l3_side.addr = alloca %struct.III_side_info_t*, align 8
  %scalefac.addr = alloca [2 x %struct.III_scalefac_t]*, align 8
  %i = alloca i32, align 4
  %s1 = alloca i32, align 4
  %s2 = alloca i32, align 4
  %c1 = alloca i32, align 4
  %c2 = alloca i32, align 4
  %sfb = alloca i32, align 4
  %gi = alloca %struct.gr_info*, align 8
  %c = alloca i32, align 4
  store i32 %ch, i32* %ch.addr, align 4, !tbaa !5
  store %struct.III_side_info_t* %l3_side, %struct.III_side_info_t** %l3_side.addr, align 8, !tbaa !1
  store [2 x %struct.III_scalefac_t]* %scalefac, [2 x %struct.III_scalefac_t]** %scalefac.addr, align 8, !tbaa !1
  %0 = bitcast i32* %i to i8*
  call void @llvm.lifetime.start(i64 4, i8* %0) #1
  %1 = bitcast i32* %s1 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %1) #1
  %2 = bitcast i32* %s2 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %2) #1
  %3 = bitcast i32* %c1 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %3) #1
  %4 = bitcast i32* %c2 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %4) #1
  %5 = bitcast i32* %sfb to i8*
  call void @llvm.lifetime.start(i64 4, i8* %5) #1
  %6 = bitcast %struct.gr_info** %gi to i8*
  call void @llvm.lifetime.start(i64 8, i8* %6) #1
  %7 = load i32, i32* %ch.addr, align 4, !tbaa !5
  %idxprom = sext i32 %7 to i64
  %8 = load %struct.III_side_info_t*, %struct.III_side_info_t** %l3_side.addr, align 8, !tbaa !1
  %gr = getelementptr inbounds %struct.III_side_info_t, %struct.III_side_info_t* %8, i32 0, i32 4
  %arrayidx = getelementptr inbounds [2 x %struct.anon.0], [2 x %struct.anon.0]* %gr, i32 0, i64 1
  %ch1 = getelementptr inbounds %struct.anon.0, %struct.anon.0* %arrayidx, i32 0, i32 0
  %arrayidx2 = getelementptr inbounds [2 x %struct.gr_info_ss], [2 x %struct.gr_info_ss]* %ch1, i32 0, i64 %idxprom
  %tt = getelementptr inbounds %struct.gr_info_ss, %struct.gr_info_ss* %arrayidx2, i32 0, i32 0
  store %struct.gr_info* %tt, %struct.gr_info** %gi, align 8, !tbaa !1
  store i32 0, i32* %i, align 4, !tbaa !5
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %9 = load i32, i32* %i, align 4, !tbaa !5
  %cmp = icmp slt i32 %9, 4
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %10 = load i32, i32* %i, align 4, !tbaa !5
  %idxprom3 = sext i32 %10 to i64
  %11 = load i32, i32* %ch.addr, align 4, !tbaa !5
  %idxprom4 = sext i32 %11 to i64
  %12 = load %struct.III_side_info_t*, %struct.III_side_info_t** %l3_side.addr, align 8, !tbaa !1
  %scfsi = getelementptr inbounds %struct.III_side_info_t, %struct.III_side_info_t* %12, i32 0, i32 3
  %arrayidx5 = getelementptr inbounds [2 x [4 x i32]], [2 x [4 x i32]]* %scfsi, i32 0, i64 %idxprom4
  %arrayidx6 = getelementptr inbounds [4 x i32], [4 x i32]* %arrayidx5, i32 0, i64 %idxprom3
  store i32 0, i32* %arrayidx6, align 4, !tbaa !5
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %13 = load i32, i32* %i, align 4, !tbaa !5
  %inc = add nsw i32 %13, 1
  store i32 %inc, i32* %i, align 4, !tbaa !5
  br label %for.cond

for.end:                                          ; preds = %for.cond
  store i32 0, i32* %i, align 4, !tbaa !5
  br label %for.cond.7

for.cond.7:                                       ; preds = %for.inc.60, %for.end
  %14 = load i32, i32* %i, align 4, !tbaa !5
  %cmp8 = icmp slt i32 %14, 4
  br i1 %cmp8, label %for.body.9, label %for.end.62

for.body.9:                                       ; preds = %for.cond.7
  %15 = load i32, i32* %i, align 4, !tbaa !5
  %idxprom10 = sext i32 %15 to i64
  %arrayidx11 = getelementptr inbounds [5 x i32], [5 x i32]* @scfsi_calc.scfsi_band, i32 0, i64 %idxprom10
  %16 = load i32, i32* %arrayidx11, align 4, !tbaa !5
  store i32 %16, i32* %sfb, align 4, !tbaa !5
  br label %for.cond.12

for.cond.12:                                      ; preds = %for.inc.29, %for.body.9
  %17 = load i32, i32* %sfb, align 4, !tbaa !5
  %18 = load i32, i32* %i, align 4, !tbaa !5
  %add = add nsw i32 %18, 1
  %idxprom13 = sext i32 %add to i64
  %arrayidx14 = getelementptr inbounds [5 x i32], [5 x i32]* @scfsi_calc.scfsi_band, i32 0, i64 %idxprom13
  %19 = load i32, i32* %arrayidx14, align 4, !tbaa !5
  %cmp15 = icmp slt i32 %17, %19
  br i1 %cmp15, label %for.body.16, label %for.end.31

for.body.16:                                      ; preds = %for.cond.12
  %20 = load i32, i32* %sfb, align 4, !tbaa !5
  %idxprom17 = sext i32 %20 to i64
  %21 = load i32, i32* %ch.addr, align 4, !tbaa !5
  %idxprom18 = sext i32 %21 to i64
  %22 = load [2 x %struct.III_scalefac_t]*, [2 x %struct.III_scalefac_t]** %scalefac.addr, align 8, !tbaa !1
  %arrayidx19 = getelementptr inbounds [2 x %struct.III_scalefac_t], [2 x %struct.III_scalefac_t]* %22, i64 0
  %arrayidx20 = getelementptr inbounds [2 x %struct.III_scalefac_t], [2 x %struct.III_scalefac_t]* %arrayidx19, i32 0, i64 %idxprom18
  %l = getelementptr inbounds %struct.III_scalefac_t, %struct.III_scalefac_t* %arrayidx20, i32 0, i32 0
  %arrayidx21 = getelementptr inbounds [22 x i32], [22 x i32]* %l, i32 0, i64 %idxprom17
  %23 = load i32, i32* %arrayidx21, align 4, !tbaa !5
  %24 = load i32, i32* %sfb, align 4, !tbaa !5
  %idxprom22 = sext i32 %24 to i64
  %25 = load i32, i32* %ch.addr, align 4, !tbaa !5
  %idxprom23 = sext i32 %25 to i64
  %26 = load [2 x %struct.III_scalefac_t]*, [2 x %struct.III_scalefac_t]** %scalefac.addr, align 8, !tbaa !1
  %arrayidx24 = getelementptr inbounds [2 x %struct.III_scalefac_t], [2 x %struct.III_scalefac_t]* %26, i64 1
  %arrayidx25 = getelementptr inbounds [2 x %struct.III_scalefac_t], [2 x %struct.III_scalefac_t]* %arrayidx24, i32 0, i64 %idxprom23
  %l26 = getelementptr inbounds %struct.III_scalefac_t, %struct.III_scalefac_t* %arrayidx25, i32 0, i32 0
  %arrayidx27 = getelementptr inbounds [22 x i32], [22 x i32]* %l26, i32 0, i64 %idxprom22
  %27 = load i32, i32* %arrayidx27, align 4, !tbaa !5
  %cmp28 = icmp ne i32 %23, %27
  br i1 %cmp28, label %if.then, label %if.end

if.then:                                          ; preds = %for.body.16
  br label %for.end.31

if.end:                                           ; preds = %for.body.16
  br label %for.inc.29

for.inc.29:                                       ; preds = %if.end
  %28 = load i32, i32* %sfb, align 4, !tbaa !5
  %inc30 = add nsw i32 %28, 1
  store i32 %inc30, i32* %sfb, align 4, !tbaa !5
  br label %for.cond.12

for.end.31:                                       ; preds = %if.then, %for.cond.12
  %29 = load i32, i32* %sfb, align 4, !tbaa !5
  %30 = load i32, i32* %i, align 4, !tbaa !5
  %add32 = add nsw i32 %30, 1
  %idxprom33 = sext i32 %add32 to i64
  %arrayidx34 = getelementptr inbounds [5 x i32], [5 x i32]* @scfsi_calc.scfsi_band, i32 0, i64 %idxprom33
  %31 = load i32, i32* %arrayidx34, align 4, !tbaa !5
  %cmp35 = icmp eq i32 %29, %31
  br i1 %cmp35, label %if.then.36, label %if.end.59

if.then.36:                                       ; preds = %for.end.31
  %32 = load i32, i32* %i, align 4, !tbaa !5
  %idxprom37 = sext i32 %32 to i64
  %arrayidx38 = getelementptr inbounds [5 x i32], [5 x i32]* @scfsi_calc.scfsi_band, i32 0, i64 %idxprom37
  %33 = load i32, i32* %arrayidx38, align 4, !tbaa !5
  store i32 %33, i32* %sfb, align 4, !tbaa !5
  br label %for.cond.39

for.cond.39:                                      ; preds = %for.inc.51, %if.then.36
  %34 = load i32, i32* %sfb, align 4, !tbaa !5
  %35 = load i32, i32* %i, align 4, !tbaa !5
  %add40 = add nsw i32 %35, 1
  %idxprom41 = sext i32 %add40 to i64
  %arrayidx42 = getelementptr inbounds [5 x i32], [5 x i32]* @scfsi_calc.scfsi_band, i32 0, i64 %idxprom41
  %36 = load i32, i32* %arrayidx42, align 4, !tbaa !5
  %cmp43 = icmp slt i32 %34, %36
  br i1 %cmp43, label %for.body.44, label %for.end.53

for.body.44:                                      ; preds = %for.cond.39
  %37 = load i32, i32* %sfb, align 4, !tbaa !5
  %idxprom45 = sext i32 %37 to i64
  %38 = load i32, i32* %ch.addr, align 4, !tbaa !5
  %idxprom46 = sext i32 %38 to i64
  %39 = load [2 x %struct.III_scalefac_t]*, [2 x %struct.III_scalefac_t]** %scalefac.addr, align 8, !tbaa !1
  %arrayidx47 = getelementptr inbounds [2 x %struct.III_scalefac_t], [2 x %struct.III_scalefac_t]* %39, i64 1
  %arrayidx48 = getelementptr inbounds [2 x %struct.III_scalefac_t], [2 x %struct.III_scalefac_t]* %arrayidx47, i32 0, i64 %idxprom46
  %l49 = getelementptr inbounds %struct.III_scalefac_t, %struct.III_scalefac_t* %arrayidx48, i32 0, i32 0
  %arrayidx50 = getelementptr inbounds [22 x i32], [22 x i32]* %l49, i32 0, i64 %idxprom45
  store i32 -1, i32* %arrayidx50, align 4, !tbaa !5
  br label %for.inc.51

for.inc.51:                                       ; preds = %for.body.44
  %40 = load i32, i32* %sfb, align 4, !tbaa !5
  %inc52 = add nsw i32 %40, 1
  store i32 %inc52, i32* %sfb, align 4, !tbaa !5
  br label %for.cond.39

for.end.53:                                       ; preds = %for.cond.39
  %41 = load i32, i32* %i, align 4, !tbaa !5
  %idxprom54 = sext i32 %41 to i64
  %42 = load i32, i32* %ch.addr, align 4, !tbaa !5
  %idxprom55 = sext i32 %42 to i64
  %43 = load %struct.III_side_info_t*, %struct.III_side_info_t** %l3_side.addr, align 8, !tbaa !1
  %scfsi56 = getelementptr inbounds %struct.III_side_info_t, %struct.III_side_info_t* %43, i32 0, i32 3
  %arrayidx57 = getelementptr inbounds [2 x [4 x i32]], [2 x [4 x i32]]* %scfsi56, i32 0, i64 %idxprom55
  %arrayidx58 = getelementptr inbounds [4 x i32], [4 x i32]* %arrayidx57, i32 0, i64 %idxprom54
  store i32 1, i32* %arrayidx58, align 4, !tbaa !5
  br label %if.end.59

if.end.59:                                        ; preds = %for.end.53, %for.end.31
  br label %for.inc.60

for.inc.60:                                       ; preds = %if.end.59
  %44 = load i32, i32* %i, align 4, !tbaa !5
  %inc61 = add nsw i32 %44, 1
  store i32 %inc61, i32* %i, align 4, !tbaa !5
  br label %for.cond.7

for.end.62:                                       ; preds = %for.cond.7
  store i32 0, i32* %c1, align 4, !tbaa !5
  store i32 0, i32* %s1, align 4, !tbaa !5
  store i32 0, i32* %sfb, align 4, !tbaa !5
  br label %for.cond.63

for.cond.63:                                      ; preds = %for.inc.91, %for.end.62
  %45 = load i32, i32* %sfb, align 4, !tbaa !5
  %cmp64 = icmp slt i32 %45, 11
  br i1 %cmp64, label %for.body.65, label %for.end.93

for.body.65:                                      ; preds = %for.cond.63
  %46 = load i32, i32* %sfb, align 4, !tbaa !5
  %idxprom66 = sext i32 %46 to i64
  %47 = load i32, i32* %ch.addr, align 4, !tbaa !5
  %idxprom67 = sext i32 %47 to i64
  %48 = load [2 x %struct.III_scalefac_t]*, [2 x %struct.III_scalefac_t]** %scalefac.addr, align 8, !tbaa !1
  %arrayidx68 = getelementptr inbounds [2 x %struct.III_scalefac_t], [2 x %struct.III_scalefac_t]* %48, i64 1
  %arrayidx69 = getelementptr inbounds [2 x %struct.III_scalefac_t], [2 x %struct.III_scalefac_t]* %arrayidx68, i32 0, i64 %idxprom67
  %l70 = getelementptr inbounds %struct.III_scalefac_t, %struct.III_scalefac_t* %arrayidx69, i32 0, i32 0
  %arrayidx71 = getelementptr inbounds [22 x i32], [22 x i32]* %l70, i32 0, i64 %idxprom66
  %49 = load i32, i32* %arrayidx71, align 4, !tbaa !5
  %cmp72 = icmp slt i32 %49, 0
  br i1 %cmp72, label %if.then.73, label %if.end.74

if.then.73:                                       ; preds = %for.body.65
  br label %for.inc.91

if.end.74:                                        ; preds = %for.body.65
  %50 = load i32, i32* %c1, align 4, !tbaa !5
  %inc75 = add nsw i32 %50, 1
  store i32 %inc75, i32* %c1, align 4, !tbaa !5
  %51 = load i32, i32* %s1, align 4, !tbaa !5
  %52 = load i32, i32* %sfb, align 4, !tbaa !5
  %idxprom76 = sext i32 %52 to i64
  %53 = load i32, i32* %ch.addr, align 4, !tbaa !5
  %idxprom77 = sext i32 %53 to i64
  %54 = load [2 x %struct.III_scalefac_t]*, [2 x %struct.III_scalefac_t]** %scalefac.addr, align 8, !tbaa !1
  %arrayidx78 = getelementptr inbounds [2 x %struct.III_scalefac_t], [2 x %struct.III_scalefac_t]* %54, i64 1
  %arrayidx79 = getelementptr inbounds [2 x %struct.III_scalefac_t], [2 x %struct.III_scalefac_t]* %arrayidx78, i32 0, i64 %idxprom77
  %l80 = getelementptr inbounds %struct.III_scalefac_t, %struct.III_scalefac_t* %arrayidx79, i32 0, i32 0
  %arrayidx81 = getelementptr inbounds [22 x i32], [22 x i32]* %l80, i32 0, i64 %idxprom76
  %55 = load i32, i32* %arrayidx81, align 4, !tbaa !5
  %cmp82 = icmp slt i32 %51, %55
  br i1 %cmp82, label %if.then.83, label %if.end.90

if.then.83:                                       ; preds = %if.end.74
  %56 = load i32, i32* %sfb, align 4, !tbaa !5
  %idxprom84 = sext i32 %56 to i64
  %57 = load i32, i32* %ch.addr, align 4, !tbaa !5
  %idxprom85 = sext i32 %57 to i64
  %58 = load [2 x %struct.III_scalefac_t]*, [2 x %struct.III_scalefac_t]** %scalefac.addr, align 8, !tbaa !1
  %arrayidx86 = getelementptr inbounds [2 x %struct.III_scalefac_t], [2 x %struct.III_scalefac_t]* %58, i64 1
  %arrayidx87 = getelementptr inbounds [2 x %struct.III_scalefac_t], [2 x %struct.III_scalefac_t]* %arrayidx86, i32 0, i64 %idxprom85
  %l88 = getelementptr inbounds %struct.III_scalefac_t, %struct.III_scalefac_t* %arrayidx87, i32 0, i32 0
  %arrayidx89 = getelementptr inbounds [22 x i32], [22 x i32]* %l88, i32 0, i64 %idxprom84
  %59 = load i32, i32* %arrayidx89, align 4, !tbaa !5
  store i32 %59, i32* %s1, align 4, !tbaa !5
  br label %if.end.90

if.end.90:                                        ; preds = %if.then.83, %if.end.74
  br label %for.inc.91

for.inc.91:                                       ; preds = %if.end.90, %if.then.73
  %60 = load i32, i32* %sfb, align 4, !tbaa !5
  %inc92 = add nsw i32 %60, 1
  store i32 %inc92, i32* %sfb, align 4, !tbaa !5
  br label %for.cond.63

for.end.93:                                       ; preds = %for.cond.63
  store i32 0, i32* %c2, align 4, !tbaa !5
  store i32 0, i32* %s2, align 4, !tbaa !5
  br label %for.cond.94

for.cond.94:                                      ; preds = %for.inc.122, %for.end.93
  %61 = load i32, i32* %sfb, align 4, !tbaa !5
  %cmp95 = icmp slt i32 %61, 21
  br i1 %cmp95, label %for.body.96, label %for.end.124

for.body.96:                                      ; preds = %for.cond.94
  %62 = load i32, i32* %sfb, align 4, !tbaa !5
  %idxprom97 = sext i32 %62 to i64
  %63 = load i32, i32* %ch.addr, align 4, !tbaa !5
  %idxprom98 = sext i32 %63 to i64
  %64 = load [2 x %struct.III_scalefac_t]*, [2 x %struct.III_scalefac_t]** %scalefac.addr, align 8, !tbaa !1
  %arrayidx99 = getelementptr inbounds [2 x %struct.III_scalefac_t], [2 x %struct.III_scalefac_t]* %64, i64 1
  %arrayidx100 = getelementptr inbounds [2 x %struct.III_scalefac_t], [2 x %struct.III_scalefac_t]* %arrayidx99, i32 0, i64 %idxprom98
  %l101 = getelementptr inbounds %struct.III_scalefac_t, %struct.III_scalefac_t* %arrayidx100, i32 0, i32 0
  %arrayidx102 = getelementptr inbounds [22 x i32], [22 x i32]* %l101, i32 0, i64 %idxprom97
  %65 = load i32, i32* %arrayidx102, align 4, !tbaa !5
  %cmp103 = icmp slt i32 %65, 0
  br i1 %cmp103, label %if.then.104, label %if.end.105

if.then.104:                                      ; preds = %for.body.96
  br label %for.inc.122

if.end.105:                                       ; preds = %for.body.96
  %66 = load i32, i32* %c2, align 4, !tbaa !5
  %inc106 = add nsw i32 %66, 1
  store i32 %inc106, i32* %c2, align 4, !tbaa !5
  %67 = load i32, i32* %s2, align 4, !tbaa !5
  %68 = load i32, i32* %sfb, align 4, !tbaa !5
  %idxprom107 = sext i32 %68 to i64
  %69 = load i32, i32* %ch.addr, align 4, !tbaa !5
  %idxprom108 = sext i32 %69 to i64
  %70 = load [2 x %struct.III_scalefac_t]*, [2 x %struct.III_scalefac_t]** %scalefac.addr, align 8, !tbaa !1
  %arrayidx109 = getelementptr inbounds [2 x %struct.III_scalefac_t], [2 x %struct.III_scalefac_t]* %70, i64 1
  %arrayidx110 = getelementptr inbounds [2 x %struct.III_scalefac_t], [2 x %struct.III_scalefac_t]* %arrayidx109, i32 0, i64 %idxprom108
  %l111 = getelementptr inbounds %struct.III_scalefac_t, %struct.III_scalefac_t* %arrayidx110, i32 0, i32 0
  %arrayidx112 = getelementptr inbounds [22 x i32], [22 x i32]* %l111, i32 0, i64 %idxprom107
  %71 = load i32, i32* %arrayidx112, align 4, !tbaa !5
  %cmp113 = icmp slt i32 %67, %71
  br i1 %cmp113, label %if.then.114, label %if.end.121

if.then.114:                                      ; preds = %if.end.105
  %72 = load i32, i32* %sfb, align 4, !tbaa !5
  %idxprom115 = sext i32 %72 to i64
  %73 = load i32, i32* %ch.addr, align 4, !tbaa !5
  %idxprom116 = sext i32 %73 to i64
  %74 = load [2 x %struct.III_scalefac_t]*, [2 x %struct.III_scalefac_t]** %scalefac.addr, align 8, !tbaa !1
  %arrayidx117 = getelementptr inbounds [2 x %struct.III_scalefac_t], [2 x %struct.III_scalefac_t]* %74, i64 1
  %arrayidx118 = getelementptr inbounds [2 x %struct.III_scalefac_t], [2 x %struct.III_scalefac_t]* %arrayidx117, i32 0, i64 %idxprom116
  %l119 = getelementptr inbounds %struct.III_scalefac_t, %struct.III_scalefac_t* %arrayidx118, i32 0, i32 0
  %arrayidx120 = getelementptr inbounds [22 x i32], [22 x i32]* %l119, i32 0, i64 %idxprom115
  %75 = load i32, i32* %arrayidx120, align 4, !tbaa !5
  store i32 %75, i32* %s2, align 4, !tbaa !5
  br label %if.end.121

if.end.121:                                       ; preds = %if.then.114, %if.end.105
  br label %for.inc.122

for.inc.122:                                      ; preds = %if.end.121, %if.then.104
  %76 = load i32, i32* %sfb, align 4, !tbaa !5
  %inc123 = add nsw i32 %76, 1
  store i32 %inc123, i32* %sfb, align 4, !tbaa !5
  br label %for.cond.94

for.end.124:                                      ; preds = %for.cond.94
  store i32 0, i32* %i, align 4, !tbaa !5
  br label %for.cond.125

for.cond.125:                                     ; preds = %for.inc.146, %for.end.124
  %77 = load i32, i32* %i, align 4, !tbaa !5
  %cmp126 = icmp slt i32 %77, 16
  br i1 %cmp126, label %for.body.127, label %for.end.148

for.body.127:                                     ; preds = %for.cond.125
  %78 = load i32, i32* %s1, align 4, !tbaa !5
  %79 = load i32, i32* %i, align 4, !tbaa !5
  %idxprom128 = sext i32 %79 to i64
  %arrayidx129 = getelementptr inbounds [16 x i32], [16 x i32]* @scfsi_calc.slen1_n, i32 0, i64 %idxprom128
  %80 = load i32, i32* %arrayidx129, align 4, !tbaa !5
  %cmp130 = icmp slt i32 %78, %80
  br i1 %cmp130, label %land.lhs.true, label %if.end.145

land.lhs.true:                                    ; preds = %for.body.127
  %81 = load i32, i32* %s2, align 4, !tbaa !5
  %82 = load i32, i32* %i, align 4, !tbaa !5
  %idxprom131 = sext i32 %82 to i64
  %arrayidx132 = getelementptr inbounds [16 x i32], [16 x i32]* @scfsi_calc.slen2_n, i32 0, i64 %idxprom131
  %83 = load i32, i32* %arrayidx132, align 4, !tbaa !5
  %cmp133 = icmp slt i32 %81, %83
  br i1 %cmp133, label %if.then.134, label %if.end.145

if.then.134:                                      ; preds = %land.lhs.true
  %84 = bitcast i32* %c to i8*
  call void @llvm.lifetime.start(i64 4, i8* %84) #1
  %85 = load i32, i32* %i, align 4, !tbaa !5
  %idxprom135 = sext i32 %85 to i64
  %arrayidx136 = getelementptr inbounds [16 x i32], [16 x i32]* @scfsi_calc.slen1_tab, i32 0, i64 %idxprom135
  %86 = load i32, i32* %arrayidx136, align 4, !tbaa !5
  %87 = load i32, i32* %c1, align 4, !tbaa !5
  %mul = mul nsw i32 %86, %87
  %88 = load i32, i32* %i, align 4, !tbaa !5
  %idxprom137 = sext i32 %88 to i64
  %arrayidx138 = getelementptr inbounds [16 x i32], [16 x i32]* @scfsi_calc.slen2_tab, i32 0, i64 %idxprom137
  %89 = load i32, i32* %arrayidx138, align 4, !tbaa !5
  %90 = load i32, i32* %c2, align 4, !tbaa !5
  %mul139 = mul nsw i32 %89, %90
  %add140 = add nsw i32 %mul, %mul139
  store i32 %add140, i32* %c, align 4, !tbaa !5
  %91 = load %struct.gr_info*, %struct.gr_info** %gi, align 8, !tbaa !1
  %part2_length = getelementptr inbounds %struct.gr_info, %struct.gr_info* %91, i32 0, i32 15
  %92 = load i32, i32* %part2_length, align 4, !tbaa !29
  %93 = load i32, i32* %c, align 4, !tbaa !5
  %cmp141 = icmp sgt i32 %92, %93
  br i1 %cmp141, label %if.then.142, label %if.end.144

if.then.142:                                      ; preds = %if.then.134
  %94 = load i32, i32* %c, align 4, !tbaa !5
  %95 = load %struct.gr_info*, %struct.gr_info** %gi, align 8, !tbaa !1
  %part2_length143 = getelementptr inbounds %struct.gr_info, %struct.gr_info* %95, i32 0, i32 15
  store i32 %94, i32* %part2_length143, align 4, !tbaa !29
  %96 = load i32, i32* %i, align 4, !tbaa !5
  %97 = load %struct.gr_info*, %struct.gr_info** %gi, align 8, !tbaa !1
  %scalefac_compress = getelementptr inbounds %struct.gr_info, %struct.gr_info* %97, i32 0, i32 4
  store i32 %96, i32* %scalefac_compress, align 4, !tbaa !40
  br label %if.end.144

if.end.144:                                       ; preds = %if.then.142, %if.then.134
  %98 = bitcast i32* %c to i8*
  call void @llvm.lifetime.end(i64 4, i8* %98) #1
  br label %if.end.145

if.end.145:                                       ; preds = %if.end.144, %land.lhs.true, %for.body.127
  br label %for.inc.146

for.inc.146:                                      ; preds = %if.end.145
  %99 = load i32, i32* %i, align 4, !tbaa !5
  %inc147 = add nsw i32 %99, 1
  store i32 %inc147, i32* %i, align 4, !tbaa !5
  br label %for.cond.125

for.end.148:                                      ; preds = %for.cond.125
  %100 = bitcast %struct.gr_info** %gi to i8*
  call void @llvm.lifetime.end(i64 8, i8* %100) #1
  %101 = bitcast i32* %sfb to i8*
  call void @llvm.lifetime.end(i64 4, i8* %101) #1
  %102 = bitcast i32* %c2 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %102) #1
  %103 = bitcast i32* %c1 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %103) #1
  %104 = bitcast i32* %s2 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %104) #1
  %105 = bitcast i32* %s1 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %105) #1
  %106 = bitcast i32* %i to i8*
  call void @llvm.lifetime.end(i64 4, i8* %106) #1
  ret void
}

; Function Attrs: nounwind uwtable
define internal i32 @ix_max(i32* %ix, i32* %end) #0 {
entry:
  %ix.addr = alloca i32*, align 8
  %end.addr = alloca i32*, align 8
  %max = alloca i32, align 4
  %x = alloca i32, align 4
  store i32* %ix, i32** %ix.addr, align 8, !tbaa !1
  store i32* %end, i32** %end.addr, align 8, !tbaa !1
  %0 = bitcast i32* %max to i8*
  call void @llvm.lifetime.start(i64 4, i8* %0) #1
  store i32 0, i32* %max, align 4, !tbaa !5
  br label %while.cond

while.cond:                                       ; preds = %if.end.5, %entry
  %1 = load i32*, i32** %ix.addr, align 8, !tbaa !1
  %2 = load i32*, i32** %end.addr, align 8, !tbaa !1
  %cmp = icmp ult i32* %1, %2
  br i1 %cmp, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %3 = bitcast i32* %x to i8*
  call void @llvm.lifetime.start(i64 4, i8* %3) #1
  %4 = load i32*, i32** %ix.addr, align 8, !tbaa !1
  %incdec.ptr = getelementptr inbounds i32, i32* %4, i32 1
  store i32* %incdec.ptr, i32** %ix.addr, align 8, !tbaa !1
  %5 = load i32, i32* %4, align 4, !tbaa !5
  store i32 %5, i32* %x, align 4, !tbaa !5
  %6 = load i32, i32* %max, align 4, !tbaa !5
  %7 = load i32, i32* %x, align 4, !tbaa !5
  %cmp1 = icmp slt i32 %6, %7
  br i1 %cmp1, label %if.then, label %if.end

if.then:                                          ; preds = %while.body
  %8 = load i32, i32* %x, align 4, !tbaa !5
  store i32 %8, i32* %max, align 4, !tbaa !5
  br label %if.end

if.end:                                           ; preds = %if.then, %while.body
  %9 = load i32*, i32** %ix.addr, align 8, !tbaa !1
  %incdec.ptr2 = getelementptr inbounds i32, i32* %9, i32 1
  store i32* %incdec.ptr2, i32** %ix.addr, align 8, !tbaa !1
  %10 = load i32, i32* %9, align 4, !tbaa !5
  store i32 %10, i32* %x, align 4, !tbaa !5
  %11 = load i32, i32* %max, align 4, !tbaa !5
  %12 = load i32, i32* %x, align 4, !tbaa !5
  %cmp3 = icmp slt i32 %11, %12
  br i1 %cmp3, label %if.then.4, label %if.end.5

if.then.4:                                        ; preds = %if.end
  %13 = load i32, i32* %x, align 4, !tbaa !5
  store i32 %13, i32* %max, align 4, !tbaa !5
  br label %if.end.5

if.end.5:                                         ; preds = %if.then.4, %if.end
  %14 = bitcast i32* %x to i8*
  call void @llvm.lifetime.end(i64 4, i8* %14) #1
  br label %while.cond

while.end:                                        ; preds = %while.cond
  %15 = load i32, i32* %max, align 4, !tbaa !5
  %16 = bitcast i32* %max to i8*
  call void @llvm.lifetime.end(i64 4, i8* %16) #1
  ret i32 %15
}

; Function Attrs: nounwind uwtable
define internal i32 @count_bit_short_noESC(i32* %ix, i32* %end, i32 %table) #0 {
entry:
  %ix.addr = alloca i32*, align 8
  %end.addr = alloca i32*, align 8
  %table.addr = alloca i32, align 4
  %sum = alloca i32, align 4
  %sign = alloca i32, align 4
  %hlen = alloca i8*, align 8
  %p = alloca i32*, align 8
  %i = alloca i32, align 4
  %y = alloca i32, align 4
  %x = alloca i32, align 4
  store i32* %ix, i32** %ix.addr, align 8, !tbaa !1
  store i32* %end, i32** %end.addr, align 8, !tbaa !1
  store i32 %table, i32* %table.addr, align 4, !tbaa !5
  %0 = bitcast i32* %sum to i8*
  call void @llvm.lifetime.start(i64 4, i8* %0) #1
  store i32 0, i32* %sum, align 4, !tbaa !5
  %1 = bitcast i32* %sign to i8*
  call void @llvm.lifetime.start(i64 4, i8* %1) #1
  store i32 0, i32* %sign, align 4, !tbaa !5
  %2 = bitcast i8** %hlen to i8*
  call void @llvm.lifetime.start(i64 8, i8* %2) #1
  %3 = load i32, i32* %table.addr, align 4, !tbaa !5
  %idxprom = zext i32 %3 to i64
  %arrayidx = getelementptr inbounds [34 x %struct.huffcodetab], [34 x %struct.huffcodetab]* @ht, i32 0, i64 %idxprom
  %hlen1 = getelementptr inbounds %struct.huffcodetab, %struct.huffcodetab* %arrayidx, i32 0, i32 3
  %4 = load i8*, i8** %hlen1, align 8, !tbaa !20
  store i8* %4, i8** %hlen, align 8, !tbaa !1
  %5 = bitcast i32** %p to i8*
  call void @llvm.lifetime.start(i64 8, i8* %5) #1
  store i32* getelementptr inbounds ([288 x i32], [288 x i32]* @cb_esc_buf, i32 0, i32 0), i32** %p, align 8, !tbaa !1
  br label %do.body

do.body:                                          ; preds = %do.cond, %entry
  %6 = bitcast i32* %i to i8*
  call void @llvm.lifetime.start(i64 4, i8* %6) #1
  store i32 0, i32* %i, align 4, !tbaa !5
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %do.body
  %7 = load i32, i32* %i, align 4, !tbaa !5
  %cmp = icmp slt i32 %7, 3
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %8 = bitcast i32* %y to i8*
  call void @llvm.lifetime.start(i64 4, i8* %8) #1
  %9 = load i32*, i32** %ix.addr, align 8, !tbaa !1
  %add.ptr = getelementptr inbounds i32, i32* %9, i64 3
  %10 = load i32, i32* %add.ptr, align 4, !tbaa !5
  store i32 %10, i32* %y, align 4, !tbaa !5
  %11 = bitcast i32* %x to i8*
  call void @llvm.lifetime.start(i64 4, i8* %11) #1
  %12 = load i32*, i32** %ix.addr, align 8, !tbaa !1
  %incdec.ptr = getelementptr inbounds i32, i32* %12, i32 1
  store i32* %incdec.ptr, i32** %ix.addr, align 8, !tbaa !1
  %13 = load i32, i32* %12, align 4, !tbaa !5
  store i32 %13, i32* %x, align 4, !tbaa !5
  %14 = load i32, i32* %x, align 4, !tbaa !5
  %cmp2 = icmp ne i32 %14, 0
  br i1 %cmp2, label %if.then, label %if.end

if.then:                                          ; preds = %for.body
  %15 = load i32, i32* %sign, align 4, !tbaa !5
  %inc = add nsw i32 %15, 1
  store i32 %inc, i32* %sign, align 4, !tbaa !5
  %16 = load i32, i32* %x, align 4, !tbaa !5
  %mul = mul nsw i32 %16, 16
  store i32 %mul, i32* %x, align 4, !tbaa !5
  br label %if.end

if.end:                                           ; preds = %if.then, %for.body
  %17 = load i32, i32* %y, align 4, !tbaa !5
  %cmp3 = icmp ne i32 %17, 0
  br i1 %cmp3, label %if.then.4, label %if.end.6

if.then.4:                                        ; preds = %if.end
  %18 = load i32, i32* %sign, align 4, !tbaa !5
  %inc5 = add nsw i32 %18, 1
  store i32 %inc5, i32* %sign, align 4, !tbaa !5
  %19 = load i32, i32* %y, align 4, !tbaa !5
  %20 = load i32, i32* %x, align 4, !tbaa !5
  %add = add nsw i32 %20, %19
  store i32 %add, i32* %x, align 4, !tbaa !5
  br label %if.end.6

if.end.6:                                         ; preds = %if.then.4, %if.end
  %21 = load i32, i32* %x, align 4, !tbaa !5
  %22 = load i32*, i32** %p, align 8, !tbaa !1
  %incdec.ptr7 = getelementptr inbounds i32, i32* %22, i32 1
  store i32* %incdec.ptr7, i32** %p, align 8, !tbaa !1
  store i32 %21, i32* %22, align 4, !tbaa !5
  %23 = load i32, i32* %x, align 4, !tbaa !5
  %idxprom8 = sext i32 %23 to i64
  %24 = load i8*, i8** %hlen, align 8, !tbaa !1
  %arrayidx9 = getelementptr inbounds i8, i8* %24, i64 %idxprom8
  %25 = load i8, i8* %arrayidx9, align 1, !tbaa !21
  %conv = zext i8 %25 to i32
  %26 = load i32, i32* %sum, align 4, !tbaa !5
  %add10 = add nsw i32 %26, %conv
  store i32 %add10, i32* %sum, align 4, !tbaa !5
  %27 = bitcast i32* %x to i8*
  call void @llvm.lifetime.end(i64 4, i8* %27) #1
  %28 = bitcast i32* %y to i8*
  call void @llvm.lifetime.end(i64 4, i8* %28) #1
  br label %for.inc

for.inc:                                          ; preds = %if.end.6
  %29 = load i32, i32* %i, align 4, !tbaa !5
  %inc11 = add nsw i32 %29, 1
  store i32 %inc11, i32* %i, align 4, !tbaa !5
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %30 = load i32*, i32** %ix.addr, align 8, !tbaa !1
  %add.ptr12 = getelementptr inbounds i32, i32* %30, i64 3
  store i32* %add.ptr12, i32** %ix.addr, align 8, !tbaa !1
  %31 = bitcast i32* %i to i8*
  call void @llvm.lifetime.end(i64 4, i8* %31) #1
  br label %do.cond

do.cond:                                          ; preds = %for.end
  %32 = load i32*, i32** %ix.addr, align 8, !tbaa !1
  %33 = load i32*, i32** %end.addr, align 8, !tbaa !1
  %cmp13 = icmp ult i32* %32, %33
  br i1 %cmp13, label %do.body, label %do.end

do.end:                                           ; preds = %do.cond
  %34 = load i32, i32* %sign, align 4, !tbaa !5
  store i32 %34, i32* @cb_esc_sign, align 4, !tbaa !5
  %35 = load i32*, i32** %p, align 8, !tbaa !1
  store i32* %35, i32** @cb_esc_end, align 8, !tbaa !1
  %36 = load i32, i32* %sum, align 4, !tbaa !5
  %37 = load i32, i32* %sign, align 4, !tbaa !5
  %add15 = add nsw i32 %36, %37
  %38 = bitcast i32** %p to i8*
  call void @llvm.lifetime.end(i64 8, i8* %38) #1
  %39 = bitcast i8** %hlen to i8*
  call void @llvm.lifetime.end(i64 8, i8* %39) #1
  %40 = bitcast i32* %sign to i8*
  call void @llvm.lifetime.end(i64 4, i8* %40) #1
  %41 = bitcast i32* %sum to i8*
  call void @llvm.lifetime.end(i64 4, i8* %41) #1
  ret i32 %add15
}

; Function Attrs: nounwind uwtable
define internal i32 @count_bit_noESC2(i32 %table) #0 {
entry:
  %table.addr = alloca i32, align 4
  %sum = alloca i32, align 4
  %p = alloca i32*, align 8
  store i32 %table, i32* %table.addr, align 4, !tbaa !5
  %0 = bitcast i32* %sum to i8*
  call void @llvm.lifetime.start(i64 4, i8* %0) #1
  %1 = load i32, i32* @cb_esc_sign, align 4, !tbaa !5
  store i32 %1, i32* %sum, align 4, !tbaa !5
  %2 = bitcast i32** %p to i8*
  call void @llvm.lifetime.start(i64 8, i8* %2) #1
  store i32* getelementptr inbounds ([288 x i32], [288 x i32]* @cb_esc_buf, i32 0, i32 0), i32** %p, align 8, !tbaa !1
  br label %do.body

do.body:                                          ; preds = %do.cond, %entry
  %3 = load i32*, i32** %p, align 8, !tbaa !1
  %incdec.ptr = getelementptr inbounds i32, i32* %3, i32 1
  store i32* %incdec.ptr, i32** %p, align 8, !tbaa !1
  %4 = load i32, i32* %3, align 4, !tbaa !5
  %idxprom = sext i32 %4 to i64
  %5 = load i32, i32* %table.addr, align 4, !tbaa !5
  %idxprom1 = zext i32 %5 to i64
  %arrayidx = getelementptr inbounds [34 x %struct.huffcodetab], [34 x %struct.huffcodetab]* @ht, i32 0, i64 %idxprom1
  %hlen = getelementptr inbounds %struct.huffcodetab, %struct.huffcodetab* %arrayidx, i32 0, i32 3
  %6 = load i8*, i8** %hlen, align 8, !tbaa !20
  %arrayidx2 = getelementptr inbounds i8, i8* %6, i64 %idxprom
  %7 = load i8, i8* %arrayidx2, align 1, !tbaa !21
  %conv = zext i8 %7 to i32
  %8 = load i32, i32* %sum, align 4, !tbaa !5
  %add = add nsw i32 %8, %conv
  store i32 %add, i32* %sum, align 4, !tbaa !5
  br label %do.cond

do.cond:                                          ; preds = %do.body
  %9 = load i32*, i32** %p, align 8, !tbaa !1
  %10 = load i32*, i32** @cb_esc_end, align 8, !tbaa !1
  %cmp = icmp ult i32* %9, %10
  br i1 %cmp, label %do.body, label %do.end

do.end:                                           ; preds = %do.cond
  %11 = load i32, i32* %sum, align 4, !tbaa !5
  %12 = bitcast i32** %p to i8*
  call void @llvm.lifetime.end(i64 8, i8* %12) #1
  %13 = bitcast i32* %sum to i8*
  call void @llvm.lifetime.end(i64 4, i8* %13) #1
  ret i32 %11
}

; Function Attrs: nounwind uwtable
define internal i32 @count_bit_short_ESC(i32* %ix, i32* %end, i32 %t1, i32 %t2, i32* %s) #0 {
entry:
  %ix.addr = alloca i32*, align 8
  %end.addr = alloca i32*, align 8
  %t1.addr = alloca i32, align 4
  %t2.addr = alloca i32, align 4
  %s.addr = alloca i32*, align 8
  %linbits1 = alloca i32, align 4
  %linbits2 = alloca i32, align 4
  %sum = alloca i32, align 4
  %sum1 = alloca i32, align 4
  %sum2 = alloca i32, align 4
  %i = alloca i32, align 4
  %y = alloca i32, align 4
  %x = alloca i32, align 4
  store i32* %ix, i32** %ix.addr, align 8, !tbaa !1
  store i32* %end, i32** %end.addr, align 8, !tbaa !1
  store i32 %t1, i32* %t1.addr, align 4, !tbaa !5
  store i32 %t2, i32* %t2.addr, align 4, !tbaa !5
  store i32* %s, i32** %s.addr, align 8, !tbaa !1
  %0 = bitcast i32* %linbits1 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %0) #1
  %1 = load i32, i32* %t1.addr, align 4, !tbaa !5
  %idxprom = sext i32 %1 to i64
  %arrayidx = getelementptr inbounds [34 x %struct.huffcodetab], [34 x %struct.huffcodetab]* @ht, i32 0, i64 %idxprom
  %xlen = getelementptr inbounds %struct.huffcodetab, %struct.huffcodetab* %arrayidx, i32 0, i32 0
  %2 = load i32, i32* %xlen, align 4, !tbaa !41
  store i32 %2, i32* %linbits1, align 4, !tbaa !5
  %3 = bitcast i32* %linbits2 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %3) #1
  %4 = load i32, i32* %t2.addr, align 4, !tbaa !5
  %idxprom1 = sext i32 %4 to i64
  %arrayidx2 = getelementptr inbounds [34 x %struct.huffcodetab], [34 x %struct.huffcodetab]* @ht, i32 0, i64 %idxprom1
  %xlen3 = getelementptr inbounds %struct.huffcodetab, %struct.huffcodetab* %arrayidx2, i32 0, i32 0
  %5 = load i32, i32* %xlen3, align 4, !tbaa !41
  store i32 %5, i32* %linbits2, align 4, !tbaa !5
  %6 = bitcast i32* %sum to i8*
  call void @llvm.lifetime.start(i64 4, i8* %6) #1
  store i32 0, i32* %sum, align 4, !tbaa !5
  %7 = bitcast i32* %sum1 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %7) #1
  store i32 0, i32* %sum1, align 4, !tbaa !5
  %8 = bitcast i32* %sum2 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %8) #1
  store i32 0, i32* %sum2, align 4, !tbaa !5
  br label %do.body

do.body:                                          ; preds = %do.cond, %entry
  %9 = bitcast i32* %i to i8*
  call void @llvm.lifetime.start(i64 4, i8* %9) #1
  store i32 0, i32* %i, align 4, !tbaa !5
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %do.body
  %10 = load i32, i32* %i, align 4, !tbaa !5
  %cmp = icmp slt i32 %10, 3
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %11 = bitcast i32* %y to i8*
  call void @llvm.lifetime.start(i64 4, i8* %11) #1
  %12 = load i32*, i32** %ix.addr, align 8, !tbaa !1
  %add.ptr = getelementptr inbounds i32, i32* %12, i64 3
  %13 = load i32, i32* %add.ptr, align 4, !tbaa !5
  store i32 %13, i32* %y, align 4, !tbaa !5
  %14 = bitcast i32* %x to i8*
  call void @llvm.lifetime.start(i64 4, i8* %14) #1
  %15 = load i32*, i32** %ix.addr, align 8, !tbaa !1
  %incdec.ptr = getelementptr inbounds i32, i32* %15, i32 1
  store i32* %incdec.ptr, i32** %ix.addr, align 8, !tbaa !1
  %16 = load i32, i32* %15, align 4, !tbaa !5
  store i32 %16, i32* %x, align 4, !tbaa !5
  %17 = load i32, i32* %x, align 4, !tbaa !5
  %cmp4 = icmp ne i32 %17, 0
  br i1 %cmp4, label %if.then, label %if.end.8

if.then:                                          ; preds = %for.body
  %18 = load i32, i32* %sum, align 4, !tbaa !5
  %inc = add nsw i32 %18, 1
  store i32 %inc, i32* %sum, align 4, !tbaa !5
  %19 = load i32, i32* %x, align 4, !tbaa !5
  %cmp5 = icmp sgt i32 %19, 14
  br i1 %cmp5, label %if.then.6, label %if.end

if.then.6:                                        ; preds = %if.then
  store i32 15, i32* %x, align 4, !tbaa !5
  %20 = load i32, i32* %linbits1, align 4, !tbaa !5
  %21 = load i32, i32* %sum1, align 4, !tbaa !5
  %add = add nsw i32 %21, %20
  store i32 %add, i32* %sum1, align 4, !tbaa !5
  %22 = load i32, i32* %linbits2, align 4, !tbaa !5
  %23 = load i32, i32* %sum2, align 4, !tbaa !5
  %add7 = add nsw i32 %23, %22
  store i32 %add7, i32* %sum2, align 4, !tbaa !5
  br label %if.end

if.end:                                           ; preds = %if.then.6, %if.then
  %24 = load i32, i32* %x, align 4, !tbaa !5
  %mul = mul nsw i32 %24, 16
  store i32 %mul, i32* %x, align 4, !tbaa !5
  br label %if.end.8

if.end.8:                                         ; preds = %if.end, %for.body
  %25 = load i32, i32* %y, align 4, !tbaa !5
  %cmp9 = icmp ne i32 %25, 0
  br i1 %cmp9, label %if.then.10, label %if.end.18

if.then.10:                                       ; preds = %if.end.8
  %26 = load i32, i32* %sum, align 4, !tbaa !5
  %inc11 = add nsw i32 %26, 1
  store i32 %inc11, i32* %sum, align 4, !tbaa !5
  %27 = load i32, i32* %y, align 4, !tbaa !5
  %cmp12 = icmp sgt i32 %27, 14
  br i1 %cmp12, label %if.then.13, label %if.end.16

if.then.13:                                       ; preds = %if.then.10
  store i32 15, i32* %y, align 4, !tbaa !5
  %28 = load i32, i32* %linbits1, align 4, !tbaa !5
  %29 = load i32, i32* %sum1, align 4, !tbaa !5
  %add14 = add nsw i32 %29, %28
  store i32 %add14, i32* %sum1, align 4, !tbaa !5
  %30 = load i32, i32* %linbits2, align 4, !tbaa !5
  %31 = load i32, i32* %sum2, align 4, !tbaa !5
  %add15 = add nsw i32 %31, %30
  store i32 %add15, i32* %sum2, align 4, !tbaa !5
  br label %if.end.16

if.end.16:                                        ; preds = %if.then.13, %if.then.10
  %32 = load i32, i32* %y, align 4, !tbaa !5
  %33 = load i32, i32* %x, align 4, !tbaa !5
  %add17 = add nsw i32 %33, %32
  store i32 %add17, i32* %x, align 4, !tbaa !5
  br label %if.end.18

if.end.18:                                        ; preds = %if.end.16, %if.end.8
  %34 = load i32, i32* %x, align 4, !tbaa !5
  %idxprom19 = sext i32 %34 to i64
  %35 = load i8*, i8** getelementptr inbounds ([34 x %struct.huffcodetab], [34 x %struct.huffcodetab]* @ht, i32 0, i64 16, i32 3), align 8, !tbaa !20
  %arrayidx20 = getelementptr inbounds i8, i8* %35, i64 %idxprom19
  %36 = load i8, i8* %arrayidx20, align 1, !tbaa !21
  %conv = zext i8 %36 to i32
  %37 = load i32, i32* %sum1, align 4, !tbaa !5
  %add21 = add nsw i32 %37, %conv
  store i32 %add21, i32* %sum1, align 4, !tbaa !5
  %38 = load i32, i32* %x, align 4, !tbaa !5
  %idxprom22 = sext i32 %38 to i64
  %39 = load i8*, i8** getelementptr inbounds ([34 x %struct.huffcodetab], [34 x %struct.huffcodetab]* @ht, i32 0, i64 24, i32 3), align 8, !tbaa !20
  %arrayidx23 = getelementptr inbounds i8, i8* %39, i64 %idxprom22
  %40 = load i8, i8* %arrayidx23, align 1, !tbaa !21
  %conv24 = zext i8 %40 to i32
  %41 = load i32, i32* %sum2, align 4, !tbaa !5
  %add25 = add nsw i32 %41, %conv24
  store i32 %add25, i32* %sum2, align 4, !tbaa !5
  %42 = bitcast i32* %x to i8*
  call void @llvm.lifetime.end(i64 4, i8* %42) #1
  %43 = bitcast i32* %y to i8*
  call void @llvm.lifetime.end(i64 4, i8* %43) #1
  br label %for.inc

for.inc:                                          ; preds = %if.end.18
  %44 = load i32, i32* %i, align 4, !tbaa !5
  %inc26 = add nsw i32 %44, 1
  store i32 %inc26, i32* %i, align 4, !tbaa !5
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %45 = load i32*, i32** %ix.addr, align 8, !tbaa !1
  %add.ptr27 = getelementptr inbounds i32, i32* %45, i64 3
  store i32* %add.ptr27, i32** %ix.addr, align 8, !tbaa !1
  %46 = bitcast i32* %i to i8*
  call void @llvm.lifetime.end(i64 4, i8* %46) #1
  br label %do.cond

do.cond:                                          ; preds = %for.end
  %47 = load i32*, i32** %ix.addr, align 8, !tbaa !1
  %48 = load i32*, i32** %end.addr, align 8, !tbaa !1
  %cmp28 = icmp ult i32* %47, %48
  br i1 %cmp28, label %do.body, label %do.end

do.end:                                           ; preds = %do.cond
  %49 = load i32, i32* %sum1, align 4, !tbaa !5
  %50 = load i32, i32* %sum2, align 4, !tbaa !5
  %cmp30 = icmp sgt i32 %49, %50
  br i1 %cmp30, label %if.then.32, label %if.end.33

if.then.32:                                       ; preds = %do.end
  %51 = load i32, i32* %sum2, align 4, !tbaa !5
  store i32 %51, i32* %sum1, align 4, !tbaa !5
  %52 = load i32, i32* %t2.addr, align 4, !tbaa !5
  store i32 %52, i32* %t1.addr, align 4, !tbaa !5
  br label %if.end.33

if.end.33:                                        ; preds = %if.then.32, %do.end
  %53 = load i32, i32* %sum, align 4, !tbaa !5
  %54 = load i32, i32* %sum1, align 4, !tbaa !5
  %add34 = add nsw i32 %53, %54
  %55 = load i32*, i32** %s.addr, align 8, !tbaa !1
  %56 = load i32, i32* %55, align 4, !tbaa !5
  %add35 = add nsw i32 %56, %add34
  store i32 %add35, i32* %55, align 4, !tbaa !5
  %57 = load i32, i32* %t1.addr, align 4, !tbaa !5
  %58 = bitcast i32* %sum2 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %58) #1
  %59 = bitcast i32* %sum1 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %59) #1
  %60 = bitcast i32* %sum to i8*
  call void @llvm.lifetime.end(i64 4, i8* %60) #1
  %61 = bitcast i32* %linbits2 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %61) #1
  %62 = bitcast i32* %linbits1 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %62) #1
  ret i32 %57
}

; Function Attrs: nounwind uwtable
define internal i32 @count_bit_noESC(i32* %ix, i32* %end, i32 %table) #0 {
entry:
  %ix.addr = alloca i32*, align 8
  %end.addr = alloca i32*, align 8
  %table.addr = alloca i32, align 4
  %sum = alloca i32, align 4
  %sign = alloca i32, align 4
  %hlen = alloca i8*, align 8
  %p = alloca i32*, align 8
  %x = alloca i32, align 4
  %y = alloca i32, align 4
  store i32* %ix, i32** %ix.addr, align 8, !tbaa !1
  store i32* %end, i32** %end.addr, align 8, !tbaa !1
  store i32 %table, i32* %table.addr, align 4, !tbaa !5
  %0 = bitcast i32* %sum to i8*
  call void @llvm.lifetime.start(i64 4, i8* %0) #1
  store i32 0, i32* %sum, align 4, !tbaa !5
  %1 = bitcast i32* %sign to i8*
  call void @llvm.lifetime.start(i64 4, i8* %1) #1
  store i32 0, i32* %sign, align 4, !tbaa !5
  %2 = bitcast i8** %hlen to i8*
  call void @llvm.lifetime.start(i64 8, i8* %2) #1
  %3 = load i32, i32* %table.addr, align 4, !tbaa !5
  %idxprom = zext i32 %3 to i64
  %arrayidx = getelementptr inbounds [34 x %struct.huffcodetab], [34 x %struct.huffcodetab]* @ht, i32 0, i64 %idxprom
  %hlen1 = getelementptr inbounds %struct.huffcodetab, %struct.huffcodetab* %arrayidx, i32 0, i32 3
  %4 = load i8*, i8** %hlen1, align 8, !tbaa !20
  store i8* %4, i8** %hlen, align 8, !tbaa !1
  %5 = bitcast i32** %p to i8*
  call void @llvm.lifetime.start(i64 8, i8* %5) #1
  store i32* getelementptr inbounds ([288 x i32], [288 x i32]* @cb_esc_buf, i32 0, i32 0), i32** %p, align 8, !tbaa !1
  br label %do.body

do.body:                                          ; preds = %do.cond, %entry
  %6 = bitcast i32* %x to i8*
  call void @llvm.lifetime.start(i64 4, i8* %6) #1
  %7 = load i32*, i32** %ix.addr, align 8, !tbaa !1
  %incdec.ptr = getelementptr inbounds i32, i32* %7, i32 1
  store i32* %incdec.ptr, i32** %ix.addr, align 8, !tbaa !1
  %8 = load i32, i32* %7, align 4, !tbaa !5
  store i32 %8, i32* %x, align 4, !tbaa !5
  %9 = bitcast i32* %y to i8*
  call void @llvm.lifetime.start(i64 4, i8* %9) #1
  %10 = load i32*, i32** %ix.addr, align 8, !tbaa !1
  %incdec.ptr2 = getelementptr inbounds i32, i32* %10, i32 1
  store i32* %incdec.ptr2, i32** %ix.addr, align 8, !tbaa !1
  %11 = load i32, i32* %10, align 4, !tbaa !5
  store i32 %11, i32* %y, align 4, !tbaa !5
  %12 = load i32, i32* %x, align 4, !tbaa !5
  %cmp = icmp ne i32 %12, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %do.body
  %13 = load i32, i32* %sign, align 4, !tbaa !5
  %inc = add nsw i32 %13, 1
  store i32 %inc, i32* %sign, align 4, !tbaa !5
  %14 = load i32, i32* %x, align 4, !tbaa !5
  %mul = mul nsw i32 %14, 16
  store i32 %mul, i32* %x, align 4, !tbaa !5
  br label %if.end

if.end:                                           ; preds = %if.then, %do.body
  %15 = load i32, i32* %y, align 4, !tbaa !5
  %cmp3 = icmp ne i32 %15, 0
  br i1 %cmp3, label %if.then.4, label %if.end.6

if.then.4:                                        ; preds = %if.end
  %16 = load i32, i32* %sign, align 4, !tbaa !5
  %inc5 = add nsw i32 %16, 1
  store i32 %inc5, i32* %sign, align 4, !tbaa !5
  %17 = load i32, i32* %y, align 4, !tbaa !5
  %18 = load i32, i32* %x, align 4, !tbaa !5
  %add = add nsw i32 %18, %17
  store i32 %add, i32* %x, align 4, !tbaa !5
  br label %if.end.6

if.end.6:                                         ; preds = %if.then.4, %if.end
  %19 = load i32, i32* %x, align 4, !tbaa !5
  %20 = load i32*, i32** %p, align 8, !tbaa !1
  %incdec.ptr7 = getelementptr inbounds i32, i32* %20, i32 1
  store i32* %incdec.ptr7, i32** %p, align 8, !tbaa !1
  store i32 %19, i32* %20, align 4, !tbaa !5
  %21 = load i32, i32* %x, align 4, !tbaa !5
  %idxprom8 = sext i32 %21 to i64
  %22 = load i8*, i8** %hlen, align 8, !tbaa !1
  %arrayidx9 = getelementptr inbounds i8, i8* %22, i64 %idxprom8
  %23 = load i8, i8* %arrayidx9, align 1, !tbaa !21
  %conv = zext i8 %23 to i32
  %24 = load i32, i32* %sum, align 4, !tbaa !5
  %add10 = add nsw i32 %24, %conv
  store i32 %add10, i32* %sum, align 4, !tbaa !5
  %25 = bitcast i32* %y to i8*
  call void @llvm.lifetime.end(i64 4, i8* %25) #1
  %26 = bitcast i32* %x to i8*
  call void @llvm.lifetime.end(i64 4, i8* %26) #1
  br label %do.cond

do.cond:                                          ; preds = %if.end.6
  %27 = load i32*, i32** %ix.addr, align 8, !tbaa !1
  %28 = load i32*, i32** %end.addr, align 8, !tbaa !1
  %cmp11 = icmp ult i32* %27, %28
  br i1 %cmp11, label %do.body, label %do.end

do.end:                                           ; preds = %do.cond
  %29 = load i32, i32* %sign, align 4, !tbaa !5
  store i32 %29, i32* @cb_esc_sign, align 4, !tbaa !5
  %30 = load i32*, i32** %p, align 8, !tbaa !1
  store i32* %30, i32** @cb_esc_end, align 8, !tbaa !1
  %31 = load i32, i32* %sum, align 4, !tbaa !5
  %32 = load i32, i32* %sign, align 4, !tbaa !5
  %add13 = add nsw i32 %31, %32
  %33 = bitcast i32** %p to i8*
  call void @llvm.lifetime.end(i64 8, i8* %33) #1
  %34 = bitcast i8** %hlen to i8*
  call void @llvm.lifetime.end(i64 8, i8* %34) #1
  %35 = bitcast i32* %sign to i8*
  call void @llvm.lifetime.end(i64 4, i8* %35) #1
  %36 = bitcast i32* %sum to i8*
  call void @llvm.lifetime.end(i64 4, i8* %36) #1
  ret i32 %add13
}

; Function Attrs: nounwind uwtable
define internal i32 @count_bit_ESC(i32* %ix, i32* %end, i32 %t1, i32 %t2, i32* %s) #0 {
entry:
  %ix.addr = alloca i32*, align 8
  %end.addr = alloca i32*, align 8
  %t1.addr = alloca i32, align 4
  %t2.addr = alloca i32, align 4
  %s.addr = alloca i32*, align 8
  %linbits1 = alloca i32, align 4
  %linbits2 = alloca i32, align 4
  %sum = alloca i32, align 4
  %sum1 = alloca i32, align 4
  %sum2 = alloca i32, align 4
  %x = alloca i32, align 4
  %y = alloca i32, align 4
  store i32* %ix, i32** %ix.addr, align 8, !tbaa !1
  store i32* %end, i32** %end.addr, align 8, !tbaa !1
  store i32 %t1, i32* %t1.addr, align 4, !tbaa !5
  store i32 %t2, i32* %t2.addr, align 4, !tbaa !5
  store i32* %s, i32** %s.addr, align 8, !tbaa !1
  %0 = bitcast i32* %linbits1 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %0) #1
  %1 = load i32, i32* %t1.addr, align 4, !tbaa !5
  %idxprom = sext i32 %1 to i64
  %arrayidx = getelementptr inbounds [34 x %struct.huffcodetab], [34 x %struct.huffcodetab]* @ht, i32 0, i64 %idxprom
  %xlen = getelementptr inbounds %struct.huffcodetab, %struct.huffcodetab* %arrayidx, i32 0, i32 0
  %2 = load i32, i32* %xlen, align 4, !tbaa !41
  store i32 %2, i32* %linbits1, align 4, !tbaa !5
  %3 = bitcast i32* %linbits2 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %3) #1
  %4 = load i32, i32* %t2.addr, align 4, !tbaa !5
  %idxprom1 = sext i32 %4 to i64
  %arrayidx2 = getelementptr inbounds [34 x %struct.huffcodetab], [34 x %struct.huffcodetab]* @ht, i32 0, i64 %idxprom1
  %xlen3 = getelementptr inbounds %struct.huffcodetab, %struct.huffcodetab* %arrayidx2, i32 0, i32 0
  %5 = load i32, i32* %xlen3, align 4, !tbaa !41
  store i32 %5, i32* %linbits2, align 4, !tbaa !5
  %6 = bitcast i32* %sum to i8*
  call void @llvm.lifetime.start(i64 4, i8* %6) #1
  store i32 0, i32* %sum, align 4, !tbaa !5
  %7 = bitcast i32* %sum1 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %7) #1
  store i32 0, i32* %sum1, align 4, !tbaa !5
  %8 = bitcast i32* %sum2 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %8) #1
  store i32 0, i32* %sum2, align 4, !tbaa !5
  br label %while.cond

while.cond:                                       ; preds = %if.end.19, %entry
  %9 = load i32*, i32** %ix.addr, align 8, !tbaa !1
  %10 = load i32*, i32** %end.addr, align 8, !tbaa !1
  %cmp = icmp ult i32* %9, %10
  br i1 %cmp, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %11 = bitcast i32* %x to i8*
  call void @llvm.lifetime.start(i64 4, i8* %11) #1
  %12 = load i32*, i32** %ix.addr, align 8, !tbaa !1
  %incdec.ptr = getelementptr inbounds i32, i32* %12, i32 1
  store i32* %incdec.ptr, i32** %ix.addr, align 8, !tbaa !1
  %13 = load i32, i32* %12, align 4, !tbaa !5
  store i32 %13, i32* %x, align 4, !tbaa !5
  %14 = bitcast i32* %y to i8*
  call void @llvm.lifetime.start(i64 4, i8* %14) #1
  %15 = load i32*, i32** %ix.addr, align 8, !tbaa !1
  %incdec.ptr4 = getelementptr inbounds i32, i32* %15, i32 1
  store i32* %incdec.ptr4, i32** %ix.addr, align 8, !tbaa !1
  %16 = load i32, i32* %15, align 4, !tbaa !5
  store i32 %16, i32* %y, align 4, !tbaa !5
  %17 = load i32, i32* %x, align 4, !tbaa !5
  %cmp5 = icmp ne i32 %17, 0
  br i1 %cmp5, label %if.then, label %if.end.9

if.then:                                          ; preds = %while.body
  %18 = load i32, i32* %sum, align 4, !tbaa !5
  %inc = add nsw i32 %18, 1
  store i32 %inc, i32* %sum, align 4, !tbaa !5
  %19 = load i32, i32* %x, align 4, !tbaa !5
  %cmp6 = icmp sgt i32 %19, 14
  br i1 %cmp6, label %if.then.7, label %if.end

if.then.7:                                        ; preds = %if.then
  store i32 15, i32* %x, align 4, !tbaa !5
  %20 = load i32, i32* %linbits1, align 4, !tbaa !5
  %21 = load i32, i32* %sum1, align 4, !tbaa !5
  %add = add nsw i32 %21, %20
  store i32 %add, i32* %sum1, align 4, !tbaa !5
  %22 = load i32, i32* %linbits2, align 4, !tbaa !5
  %23 = load i32, i32* %sum2, align 4, !tbaa !5
  %add8 = add nsw i32 %23, %22
  store i32 %add8, i32* %sum2, align 4, !tbaa !5
  br label %if.end

if.end:                                           ; preds = %if.then.7, %if.then
  %24 = load i32, i32* %x, align 4, !tbaa !5
  %mul = mul nsw i32 %24, 16
  store i32 %mul, i32* %x, align 4, !tbaa !5
  br label %if.end.9

if.end.9:                                         ; preds = %if.end, %while.body
  %25 = load i32, i32* %y, align 4, !tbaa !5
  %cmp10 = icmp ne i32 %25, 0
  br i1 %cmp10, label %if.then.11, label %if.end.19

if.then.11:                                       ; preds = %if.end.9
  %26 = load i32, i32* %sum, align 4, !tbaa !5
  %inc12 = add nsw i32 %26, 1
  store i32 %inc12, i32* %sum, align 4, !tbaa !5
  %27 = load i32, i32* %y, align 4, !tbaa !5
  %cmp13 = icmp sgt i32 %27, 14
  br i1 %cmp13, label %if.then.14, label %if.end.17

if.then.14:                                       ; preds = %if.then.11
  store i32 15, i32* %y, align 4, !tbaa !5
  %28 = load i32, i32* %linbits1, align 4, !tbaa !5
  %29 = load i32, i32* %sum1, align 4, !tbaa !5
  %add15 = add nsw i32 %29, %28
  store i32 %add15, i32* %sum1, align 4, !tbaa !5
  %30 = load i32, i32* %linbits2, align 4, !tbaa !5
  %31 = load i32, i32* %sum2, align 4, !tbaa !5
  %add16 = add nsw i32 %31, %30
  store i32 %add16, i32* %sum2, align 4, !tbaa !5
  br label %if.end.17

if.end.17:                                        ; preds = %if.then.14, %if.then.11
  %32 = load i32, i32* %y, align 4, !tbaa !5
  %33 = load i32, i32* %x, align 4, !tbaa !5
  %add18 = add nsw i32 %33, %32
  store i32 %add18, i32* %x, align 4, !tbaa !5
  br label %if.end.19

if.end.19:                                        ; preds = %if.end.17, %if.end.9
  %34 = load i32, i32* %x, align 4, !tbaa !5
  %idxprom20 = sext i32 %34 to i64
  %35 = load i8*, i8** getelementptr inbounds ([34 x %struct.huffcodetab], [34 x %struct.huffcodetab]* @ht, i32 0, i64 16, i32 3), align 8, !tbaa !20
  %arrayidx21 = getelementptr inbounds i8, i8* %35, i64 %idxprom20
  %36 = load i8, i8* %arrayidx21, align 1, !tbaa !21
  %conv = zext i8 %36 to i32
  %37 = load i32, i32* %sum1, align 4, !tbaa !5
  %add22 = add nsw i32 %37, %conv
  store i32 %add22, i32* %sum1, align 4, !tbaa !5
  %38 = load i32, i32* %x, align 4, !tbaa !5
  %idxprom23 = sext i32 %38 to i64
  %39 = load i8*, i8** getelementptr inbounds ([34 x %struct.huffcodetab], [34 x %struct.huffcodetab]* @ht, i32 0, i64 24, i32 3), align 8, !tbaa !20
  %arrayidx24 = getelementptr inbounds i8, i8* %39, i64 %idxprom23
  %40 = load i8, i8* %arrayidx24, align 1, !tbaa !21
  %conv25 = zext i8 %40 to i32
  %41 = load i32, i32* %sum2, align 4, !tbaa !5
  %add26 = add nsw i32 %41, %conv25
  store i32 %add26, i32* %sum2, align 4, !tbaa !5
  %42 = bitcast i32* %y to i8*
  call void @llvm.lifetime.end(i64 4, i8* %42) #1
  %43 = bitcast i32* %x to i8*
  call void @llvm.lifetime.end(i64 4, i8* %43) #1
  br label %while.cond

while.end:                                        ; preds = %while.cond
  %44 = load i32, i32* %sum1, align 4, !tbaa !5
  %45 = load i32, i32* %sum2, align 4, !tbaa !5
  %cmp27 = icmp sgt i32 %44, %45
  br i1 %cmp27, label %if.then.29, label %if.end.30

if.then.29:                                       ; preds = %while.end
  %46 = load i32, i32* %sum2, align 4, !tbaa !5
  store i32 %46, i32* %sum1, align 4, !tbaa !5
  %47 = load i32, i32* %t2.addr, align 4, !tbaa !5
  store i32 %47, i32* %t1.addr, align 4, !tbaa !5
  br label %if.end.30

if.end.30:                                        ; preds = %if.then.29, %while.end
  %48 = load i32, i32* %sum, align 4, !tbaa !5
  %49 = load i32, i32* %sum1, align 4, !tbaa !5
  %add31 = add nsw i32 %48, %49
  %50 = load i32*, i32** %s.addr, align 8, !tbaa !1
  %51 = load i32, i32* %50, align 4, !tbaa !5
  %add32 = add nsw i32 %51, %add31
  store i32 %add32, i32* %50, align 4, !tbaa !5
  %52 = load i32, i32* %t1.addr, align 4, !tbaa !5
  %53 = bitcast i32* %sum2 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %53) #1
  %54 = bitcast i32* %sum1 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %54) #1
  %55 = bitcast i32* %sum to i8*
  call void @llvm.lifetime.end(i64 4, i8* %55) #1
  %56 = bitcast i32* %linbits2 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %56) #1
  %57 = bitcast i32* %linbits1 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %57) #1
  ret i32 %52
}

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.ident = !{!0}

!0 = !{!"clang version 3.7.0 (tags/RELEASE_370/final)"}
!1 = !{!2, !2, i64 0}
!2 = !{!"any pointer", !3, i64 0}
!3 = !{!"omnipotent char", !4, i64 0}
!4 = !{!"Simple C/C++ TBAA"}
!5 = !{!6, !6, i64 0}
!6 = !{!"int", !3, i64 0}
!7 = !{!8, !6, i64 12}
!8 = !{!"", !6, i64 0, !6, i64 4, !6, i64 8, !6, i64 12, !6, i64 16, !6, i64 20, !6, i64 24, !6, i64 28, !3, i64 32, !3, i64 44, !6, i64 56, !6, i64 60, !6, i64 64, !6, i64 68, !6, i64 72, !6, i64 76, !6, i64 80, !6, i64 84, !6, i64 88, !2, i64 96, !3, i64 104}
!9 = !{!10, !10, i64 0}
!10 = !{!"double", !3, i64 0}
!11 = !{!12, !6, i64 260}
!12 = !{!"", !13, i64 0, !6, i64 8, !6, i64 12, !6, i64 16, !6, i64 20, !6, i64 24, !6, i64 28, !6, i64 32, !6, i64 36, !6, i64 40, !6, i64 44, !6, i64 48, !6, i64 52, !6, i64 56, !6, i64 60, !6, i64 64, !6, i64 68, !6, i64 72, !6, i64 76, !6, i64 80, !6, i64 84, !6, i64 88, !6, i64 92, !6, i64 96, !6, i64 100, !6, i64 104, !6, i64 108, !6, i64 112, !6, i64 116, !3, i64 120, !6, i64 124, !2, i64 128, !2, i64 136, !6, i64 144, !6, i64 148, !14, i64 152, !6, i64 156, !6, i64 160, !6, i64 164, !13, i64 168, !13, i64 176, !6, i64 184, !6, i64 188, !6, i64 192, !6, i64 196, !6, i64 200, !6, i64 204, !6, i64 208, !6, i64 212, !14, i64 216, !6, i64 220, !6, i64 224, !6, i64 228, !14, i64 232, !14, i64 236, !14, i64 240, !14, i64 244, !6, i64 248, !6, i64 252, !6, i64 256, !6, i64 260, !6, i64 264, !6, i64 268, !6, i64 272, !6, i64 276}
!13 = !{!"long", !3, i64 0}
!14 = !{!"float", !3, i64 0}
!15 = !{!8, !6, i64 24}
!16 = !{!8, !6, i64 4}
!17 = !{!8, !6, i64 8}
!18 = !{!19, !6, i64 4}
!19 = !{!"huffcodetab", !6, i64 0, !6, i64 4, !2, i64 8, !2, i64 16}
!20 = !{!19, !2, i64 16}
!21 = !{!3, !3, i64 0}
!22 = !{!8, !6, i64 72}
!23 = !{!8, !6, i64 88}
!24 = !{!25, !6, i64 0}
!25 = !{!"", !6, i64 0, !6, i64 4}
!26 = !{!8, !6, i64 56}
!27 = !{!25, !6, i64 4}
!28 = !{!8, !6, i64 60}
!29 = !{!8, !6, i64 76}
!30 = !{!8, !6, i64 0}
!31 = !{!8, !6, i64 80}
!32 = !{!8, !6, i64 84}
!33 = !{!8, !6, i64 68}
!34 = !{!8, !6, i64 64}
!35 = !{!12, !6, i64 200}
!36 = !{!37, !6, i64 24}
!37 = !{!"gr_info_ss", !8, i64 0}
!38 = !{!37, !6, i64 68}
!39 = !{!37, !6, i64 64}
!40 = !{!8, !6, i64 16}
!41 = !{!19, !6, i64 0}
