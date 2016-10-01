; ModuleID = './MultiSource.Benchmarks.MiBench/33.consumer-lame.util.bc'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct._IO_FILE = type { i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, %struct._IO_marker*, %struct._IO_FILE*, i32, i32, i64, i16, i8, [1 x i8], i8*, i64, i8*, i8*, i8*, i8*, i64, i32, [20 x i8] }
%struct._IO_marker = type { %struct._IO_marker*, %struct._IO_FILE*, i32 }
%struct.lame_global_flags = type { i64, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i8*, i8*, i32, i32, float, i32, i32, i32, i64, i64, i32, i32, i32, i32, i32, i32, i32, i32, float, i32, i32, i32, float, float, float, float, i32, i32, i32, i32, i32, i32, i32, i32 }
%union.anon = type { i32 }
%struct.bit_stream_struc = type { i8*, i32, %struct._IO_FILE*, i8*, i32, i64, i32, i32 }

@s_freq_table = global [2 x [4 x double]] [[4 x double] [double 2.205000e+01, double 2.400000e+01, double 1.600000e+01, double 0.000000e+00], [4 x double] [double 4.410000e+01, double 4.800000e+01, double 3.200000e+01, double 0.000000e+00]], align 16
@bitrate_table = global [2 x [15 x i32]] [[15 x i32] [i32 0, i32 8, i32 16, i32 24, i32 32, i32 40, i32 48, i32 56, i32 64, i32 80, i32 96, i32 112, i32 128, i32 144, i32 160], [15 x i32] [i32 0, i32 32, i32 40, i32 48, i32 56, i32 64, i32 80, i32 96, i32 112, i32 128, i32 160, i32 192, i32 224, i32 256, i32 320]], align 16
@NativeByteOrder = global i32 0, align 4
@.str = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@.str.1 = private unnamed_addr constant [37 x i8] c"MPEG1 samplerates(kHz): 32 44.1 48 \0A\00", align 1
@.str.2 = private unnamed_addr constant [16 x i8] c"bitrates(kbs): \00", align 1
@.str.3 = private unnamed_addr constant [4 x i8] c"%i \00", align 1
@.str.4 = private unnamed_addr constant [38 x i8] c"MPEG2 samplerates(kHz): 16 22.05 24 \0A\00", align 1
@stderr = external global %struct._IO_FILE*, align 8
@.str.5 = private unnamed_addr constant [51 x i8] c"Bitrate %dkbs not legal for %iHz output sampling.\0A\00", align 1
@.str.6 = private unnamed_addr constant [47 x i8] c"SmpFrqIndex: %ldHz is not a legal sample rate\0A\00", align 1
@.str.7 = private unnamed_addr constant [23 x i8] c"Unable to allocate %s\0A\00", align 1
@.str.8 = private unnamed_addr constant [5 x i8] c"ABCD\00", align 1
@.str.9 = private unnamed_addr constant [5 x i8] c"DCBA\00", align 1
@.str.10 = private unnamed_addr constant [7 x i8] c"buffer\00", align 1
@putmask = global [9 x i32] [i32 0, i32 1, i32 3, i32 7, i32 15, i32 31, i32 63, i32 127, i32 255], align 16
@.str.11 = private unnamed_addr constant [51 x i8] c"Cannot read or write more than %d bits at a time.\0A\00", align 1

; Function Attrs: nounwind uwtable
define void @getframebits(%struct.lame_global_flags* %gfp, i32* %bitsPerFrame, i32* %mean_bits) #0 {
entry:
  %gfp.addr = alloca %struct.lame_global_flags*, align 8
  %bitsPerFrame.addr = alloca i32*, align 8
  %mean_bits.addr = alloca i32*, align 8
  %whole_SpF = alloca i32, align 4
  %bit_rate = alloca double, align 8
  %samp = alloca double, align 8
  %bitsPerSlot = alloca i32, align 4
  %sideinfo_len = alloca i32, align 4
  store %struct.lame_global_flags* %gfp, %struct.lame_global_flags** %gfp.addr, align 8, !tbaa !1
  store i32* %bitsPerFrame, i32** %bitsPerFrame.addr, align 8, !tbaa !1
  store i32* %mean_bits, i32** %mean_bits.addr, align 8, !tbaa !1
  %0 = bitcast i32* %whole_SpF to i8*
  call void @llvm.lifetime.start(i64 4, i8* %0) #1
  %1 = bitcast double* %bit_rate to i8*
  call void @llvm.lifetime.start(i64 8, i8* %1) #1
  %2 = bitcast double* %samp to i8*
  call void @llvm.lifetime.start(i64 8, i8* %2) #1
  %3 = bitcast i32* %bitsPerSlot to i8*
  call void @llvm.lifetime.start(i64 4, i8* %3) #1
  %4 = bitcast i32* %sideinfo_len to i8*
  call void @llvm.lifetime.start(i64 4, i8* %4) #1
  %5 = load %struct.lame_global_flags*, %struct.lame_global_flags** %gfp.addr, align 8, !tbaa !1
  %out_samplerate = getelementptr inbounds %struct.lame_global_flags, %struct.lame_global_flags* %5, i32 0, i32 3
  %6 = load i32, i32* %out_samplerate, align 4, !tbaa !5
  %conv = sitofp i32 %6 to double
  %div = fdiv double %conv, 1.000000e+03
  store double %div, double* %samp, align 8, !tbaa !10
  %7 = load %struct.lame_global_flags*, %struct.lame_global_flags** %gfp.addr, align 8, !tbaa !1
  %bitrate_index = getelementptr inbounds %struct.lame_global_flags, %struct.lame_global_flags* %7, i32 0, i32 50
  %8 = load i32, i32* %bitrate_index, align 4, !tbaa !12
  %idxprom = sext i32 %8 to i64
  %9 = load %struct.lame_global_flags*, %struct.lame_global_flags** %gfp.addr, align 8, !tbaa !1
  %version = getelementptr inbounds %struct.lame_global_flags, %struct.lame_global_flags* %9, i32 0, i32 43
  %10 = load i32, i32* %version, align 4, !tbaa !13
  %idxprom1 = sext i32 %10 to i64
  %arrayidx = getelementptr inbounds [2 x [15 x i32]], [2 x [15 x i32]]* @bitrate_table, i32 0, i64 %idxprom1
  %arrayidx2 = getelementptr inbounds [15 x i32], [15 x i32]* %arrayidx, i32 0, i64 %idxprom
  %11 = load i32, i32* %arrayidx2, align 4, !tbaa !14
  %conv3 = sitofp i32 %11 to double
  store double %conv3, double* %bit_rate, align 8, !tbaa !10
  store i32 8, i32* %bitsPerSlot, align 4, !tbaa !14
  store i32 32, i32* %sideinfo_len, align 4, !tbaa !14
  %12 = load %struct.lame_global_flags*, %struct.lame_global_flags** %gfp.addr, align 8, !tbaa !1
  %version4 = getelementptr inbounds %struct.lame_global_flags, %struct.lame_global_flags* %12, i32 0, i32 43
  %13 = load i32, i32* %version4, align 4, !tbaa !13
  %cmp = icmp eq i32 %13, 1
  br i1 %cmp, label %if.then, label %if.else.10

if.then:                                          ; preds = %entry
  %14 = load %struct.lame_global_flags*, %struct.lame_global_flags** %gfp.addr, align 8, !tbaa !1
  %stereo = getelementptr inbounds %struct.lame_global_flags, %struct.lame_global_flags* %14, i32 0, i32 46
  %15 = load i32, i32* %stereo, align 4, !tbaa !15
  %cmp6 = icmp eq i32 %15, 1
  br i1 %cmp6, label %if.then.8, label %if.else

if.then.8:                                        ; preds = %if.then
  %16 = load i32, i32* %sideinfo_len, align 4, !tbaa !14
  %add = add nsw i32 %16, 136
  store i32 %add, i32* %sideinfo_len, align 4, !tbaa !14
  br label %if.end

if.else:                                          ; preds = %if.then
  %17 = load i32, i32* %sideinfo_len, align 4, !tbaa !14
  %add9 = add nsw i32 %17, 256
  store i32 %add9, i32* %sideinfo_len, align 4, !tbaa !14
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then.8
  br label %if.end.19

if.else.10:                                       ; preds = %entry
  %18 = load %struct.lame_global_flags*, %struct.lame_global_flags** %gfp.addr, align 8, !tbaa !1
  %stereo11 = getelementptr inbounds %struct.lame_global_flags, %struct.lame_global_flags* %18, i32 0, i32 46
  %19 = load i32, i32* %stereo11, align 4, !tbaa !15
  %cmp12 = icmp eq i32 %19, 1
  br i1 %cmp12, label %if.then.14, label %if.else.16

if.then.14:                                       ; preds = %if.else.10
  %20 = load i32, i32* %sideinfo_len, align 4, !tbaa !14
  %add15 = add nsw i32 %20, 72
  store i32 %add15, i32* %sideinfo_len, align 4, !tbaa !14
  br label %if.end.18

if.else.16:                                       ; preds = %if.else.10
  %21 = load i32, i32* %sideinfo_len, align 4, !tbaa !14
  %add17 = add nsw i32 %21, 136
  store i32 %add17, i32* %sideinfo_len, align 4, !tbaa !14
  br label %if.end.18

if.end.18:                                        ; preds = %if.else.16, %if.then.14
  br label %if.end.19

if.end.19:                                        ; preds = %if.end.18, %if.end
  %22 = load %struct.lame_global_flags*, %struct.lame_global_flags** %gfp.addr, align 8, !tbaa !1
  %error_protection = getelementptr inbounds %struct.lame_global_flags, %struct.lame_global_flags* %22, i32 0, i32 14
  %23 = load i32, i32* %error_protection, align 4, !tbaa !16
  %tobool = icmp ne i32 %23, 0
  br i1 %tobool, label %if.then.20, label %if.end.22

if.then.20:                                       ; preds = %if.end.19
  %24 = load i32, i32* %sideinfo_len, align 4, !tbaa !14
  %add21 = add nsw i32 %24, 16
  store i32 %add21, i32* %sideinfo_len, align 4, !tbaa !14
  br label %if.end.22

if.end.22:                                        ; preds = %if.then.20, %if.end.19
  %25 = load %struct.lame_global_flags*, %struct.lame_global_flags** %gfp.addr, align 8, !tbaa !1
  %framesize = getelementptr inbounds %struct.lame_global_flags, %struct.lame_global_flags* %25, i32 0, i32 42
  %26 = load i32, i32* %framesize, align 4, !tbaa !17
  %conv23 = sitofp i32 %26 to double
  %27 = load double, double* %samp, align 8, !tbaa !10
  %div24 = fdiv double %conv23, %27
  %28 = load double, double* %bit_rate, align 8, !tbaa !10
  %29 = load i32, i32* %bitsPerSlot, align 4, !tbaa !14
  %conv25 = sitofp i32 %29 to double
  %div26 = fdiv double %28, %conv25
  %mul = fmul double %div24, %div26
  %add27 = fadd double %mul, 1.000000e-09
  %call = call double @floor(double %add27) #6
  %conv28 = fptosi double %call to i32
  store i32 %conv28, i32* %whole_SpF, align 4, !tbaa !14
  %30 = load i32, i32* %whole_SpF, align 4, !tbaa !14
  %mul29 = mul nsw i32 8, %30
  %31 = load %struct.lame_global_flags*, %struct.lame_global_flags** %gfp.addr, align 8, !tbaa !1
  %padding = getelementptr inbounds %struct.lame_global_flags, %struct.lame_global_flags* %31, i32 0, i32 44
  %32 = load i32, i32* %padding, align 4, !tbaa !18
  %mul30 = mul nsw i32 %32, 8
  %add31 = add nsw i32 %mul29, %mul30
  %33 = load i32*, i32** %bitsPerFrame.addr, align 8, !tbaa !1
  store i32 %add31, i32* %33, align 4, !tbaa !14
  %34 = load i32*, i32** %bitsPerFrame.addr, align 8, !tbaa !1
  %35 = load i32, i32* %34, align 4, !tbaa !14
  %36 = load i32, i32* %sideinfo_len, align 4, !tbaa !14
  %sub = sub nsw i32 %35, %36
  %37 = load %struct.lame_global_flags*, %struct.lame_global_flags** %gfp.addr, align 8, !tbaa !1
  %mode_gr = getelementptr inbounds %struct.lame_global_flags, %struct.lame_global_flags* %37, i32 0, i32 45
  %38 = load i32, i32* %mode_gr, align 4, !tbaa !19
  %div32 = sdiv i32 %sub, %38
  %39 = load i32*, i32** %mean_bits.addr, align 8, !tbaa !1
  store i32 %div32, i32* %39, align 4, !tbaa !14
  %40 = bitcast i32* %sideinfo_len to i8*
  call void @llvm.lifetime.end(i64 4, i8* %40) #1
  %41 = bitcast i32* %bitsPerSlot to i8*
  call void @llvm.lifetime.end(i64 4, i8* %41) #1
  %42 = bitcast double* %samp to i8*
  call void @llvm.lifetime.end(i64 8, i8* %42) #1
  %43 = bitcast double* %bit_rate to i8*
  call void @llvm.lifetime.end(i64 8, i8* %43) #1
  %44 = bitcast i32* %whole_SpF to i8*
  call void @llvm.lifetime.end(i64 4, i8* %44) #1
  ret void
}

; Function Attrs: nounwind
declare void @llvm.lifetime.start(i64, i8* nocapture) #1

; Function Attrs: nounwind readnone
declare double @floor(double) #2

; Function Attrs: nounwind
declare void @llvm.lifetime.end(i64, i8* nocapture) #1

; Function Attrs: nounwind uwtable
define void @display_bitrates(%struct._IO_FILE* %out_fh) #0 {
entry:
  %out_fh.addr = alloca %struct._IO_FILE*, align 8
  %index = alloca i32, align 4
  %version = alloca i32, align 4
  store %struct._IO_FILE* %out_fh, %struct._IO_FILE** %out_fh.addr, align 8, !tbaa !1
  %0 = bitcast i32* %index to i8*
  call void @llvm.lifetime.start(i64 4, i8* %0) #1
  %1 = bitcast i32* %version to i8*
  call void @llvm.lifetime.start(i64 4, i8* %1) #1
  store i32 1, i32* %version, align 4, !tbaa !14
  %2 = load %struct._IO_FILE*, %struct._IO_FILE** %out_fh.addr, align 8, !tbaa !1
  %call = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %2, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i32 0, i32 0))
  %3 = load %struct._IO_FILE*, %struct._IO_FILE** %out_fh.addr, align 8, !tbaa !1
  %call1 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %3, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.1, i32 0, i32 0))
  %4 = load %struct._IO_FILE*, %struct._IO_FILE** %out_fh.addr, align 8, !tbaa !1
  %call2 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %4, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.2, i32 0, i32 0))
  store i32 1, i32* %index, align 4, !tbaa !14
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %5 = load i32, i32* %index, align 4, !tbaa !14
  %cmp = icmp slt i32 %5, 15
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %6 = load %struct._IO_FILE*, %struct._IO_FILE** %out_fh.addr, align 8, !tbaa !1
  %7 = load i32, i32* %index, align 4, !tbaa !14
  %idxprom = sext i32 %7 to i64
  %8 = load i32, i32* %version, align 4, !tbaa !14
  %idxprom3 = sext i32 %8 to i64
  %arrayidx = getelementptr inbounds [2 x [15 x i32]], [2 x [15 x i32]]* @bitrate_table, i32 0, i64 %idxprom3
  %arrayidx4 = getelementptr inbounds [15 x i32], [15 x i32]* %arrayidx, i32 0, i64 %idxprom
  %9 = load i32, i32* %arrayidx4, align 4, !tbaa !14
  %call5 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %6, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.3, i32 0, i32 0), i32 %9)
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %10 = load i32, i32* %index, align 4, !tbaa !14
  %inc = add nsw i32 %10, 1
  store i32 %inc, i32* %index, align 4, !tbaa !14
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %11 = load %struct._IO_FILE*, %struct._IO_FILE** %out_fh.addr, align 8, !tbaa !1
  %call6 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %11, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i32 0, i32 0))
  store i32 0, i32* %version, align 4, !tbaa !14
  %12 = load %struct._IO_FILE*, %struct._IO_FILE** %out_fh.addr, align 8, !tbaa !1
  %call7 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %12, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i32 0, i32 0))
  %13 = load %struct._IO_FILE*, %struct._IO_FILE** %out_fh.addr, align 8, !tbaa !1
  %call8 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %13, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.4, i32 0, i32 0))
  %14 = load %struct._IO_FILE*, %struct._IO_FILE** %out_fh.addr, align 8, !tbaa !1
  %call9 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %14, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.2, i32 0, i32 0))
  store i32 1, i32* %index, align 4, !tbaa !14
  br label %for.cond.10

for.cond.10:                                      ; preds = %for.inc.18, %for.end
  %15 = load i32, i32* %index, align 4, !tbaa !14
  %cmp11 = icmp slt i32 %15, 15
  br i1 %cmp11, label %for.body.12, label %for.end.20

for.body.12:                                      ; preds = %for.cond.10
  %16 = load %struct._IO_FILE*, %struct._IO_FILE** %out_fh.addr, align 8, !tbaa !1
  %17 = load i32, i32* %index, align 4, !tbaa !14
  %idxprom13 = sext i32 %17 to i64
  %18 = load i32, i32* %version, align 4, !tbaa !14
  %idxprom14 = sext i32 %18 to i64
  %arrayidx15 = getelementptr inbounds [2 x [15 x i32]], [2 x [15 x i32]]* @bitrate_table, i32 0, i64 %idxprom14
  %arrayidx16 = getelementptr inbounds [15 x i32], [15 x i32]* %arrayidx15, i32 0, i64 %idxprom13
  %19 = load i32, i32* %arrayidx16, align 4, !tbaa !14
  %call17 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %16, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.3, i32 0, i32 0), i32 %19)
  br label %for.inc.18

for.inc.18:                                       ; preds = %for.body.12
  %20 = load i32, i32* %index, align 4, !tbaa !14
  %inc19 = add nsw i32 %20, 1
  store i32 %inc19, i32* %index, align 4, !tbaa !14
  br label %for.cond.10

for.end.20:                                       ; preds = %for.cond.10
  %21 = load %struct._IO_FILE*, %struct._IO_FILE** %out_fh.addr, align 8, !tbaa !1
  %call21 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %21, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i32 0, i32 0))
  %22 = bitcast i32* %version to i8*
  call void @llvm.lifetime.end(i64 4, i8* %22) #1
  %23 = bitcast i32* %index to i8*
  call void @llvm.lifetime.end(i64 4, i8* %23) #1
  ret void
}

declare i32 @fprintf(%struct._IO_FILE*, i8*, ...) #3

; Function Attrs: nounwind uwtable
define i32 @BitrateIndex(i32 %bRate, i32 %version, i32 %samplerate) #0 {
entry:
  %retval = alloca i32, align 4
  %bRate.addr = alloca i32, align 4
  %version.addr = alloca i32, align 4
  %samplerate.addr = alloca i32, align 4
  %index = alloca i32, align 4
  %found = alloca i32, align 4
  %cleanup.dest.slot = alloca i32
  store i32 %bRate, i32* %bRate.addr, align 4, !tbaa !14
  store i32 %version, i32* %version.addr, align 4, !tbaa !14
  store i32 %samplerate, i32* %samplerate.addr, align 4, !tbaa !14
  %0 = bitcast i32* %index to i8*
  call void @llvm.lifetime.start(i64 4, i8* %0) #1
  store i32 0, i32* %index, align 4, !tbaa !14
  %1 = bitcast i32* %found to i8*
  call void @llvm.lifetime.start(i64 4, i8* %1) #1
  store i32 0, i32* %found, align 4, !tbaa !14
  br label %while.cond

while.cond:                                       ; preds = %if.end, %entry
  %2 = load i32, i32* %found, align 4, !tbaa !14
  %tobool = icmp ne i32 %2, 0
  br i1 %tobool, label %land.end, label %land.rhs

land.rhs:                                         ; preds = %while.cond
  %3 = load i32, i32* %index, align 4, !tbaa !14
  %cmp = icmp slt i32 %3, 15
  br label %land.end

land.end:                                         ; preds = %land.rhs, %while.cond
  %4 = phi i1 [ false, %while.cond ], [ %cmp, %land.rhs ]
  br i1 %4, label %while.body, label %while.end

while.body:                                       ; preds = %land.end
  %5 = load i32, i32* %index, align 4, !tbaa !14
  %idxprom = sext i32 %5 to i64
  %6 = load i32, i32* %version.addr, align 4, !tbaa !14
  %idxprom1 = sext i32 %6 to i64
  %arrayidx = getelementptr inbounds [2 x [15 x i32]], [2 x [15 x i32]]* @bitrate_table, i32 0, i64 %idxprom1
  %arrayidx2 = getelementptr inbounds [15 x i32], [15 x i32]* %arrayidx, i32 0, i64 %idxprom
  %7 = load i32, i32* %arrayidx2, align 4, !tbaa !14
  %8 = load i32, i32* %bRate.addr, align 4, !tbaa !14
  %cmp3 = icmp eq i32 %7, %8
  br i1 %cmp3, label %if.then, label %if.else

if.then:                                          ; preds = %while.body
  store i32 1, i32* %found, align 4, !tbaa !14
  br label %if.end

if.else:                                          ; preds = %while.body
  %9 = load i32, i32* %index, align 4, !tbaa !14
  %inc = add nsw i32 %9, 1
  store i32 %inc, i32* %index, align 4, !tbaa !14
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  br label %while.cond

while.end:                                        ; preds = %land.end
  %10 = load i32, i32* %found, align 4, !tbaa !14
  %tobool4 = icmp ne i32 %10, 0
  br i1 %tobool4, label %if.then.5, label %if.else.6

if.then.5:                                        ; preds = %while.end
  %11 = load i32, i32* %index, align 4, !tbaa !14
  store i32 %11, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.else.6:                                        ; preds = %while.end
  %12 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !tbaa !1
  %13 = load i32, i32* %bRate.addr, align 4, !tbaa !14
  %14 = load i32, i32* %samplerate.addr, align 4, !tbaa !14
  %call = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %12, i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str.5, i32 0, i32 0), i32 %13, i32 %14)
  store i32 -1, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %if.else.6, %if.then.5
  %15 = bitcast i32* %found to i8*
  call void @llvm.lifetime.end(i64 4, i8* %15) #1
  %16 = bitcast i32* %index to i8*
  call void @llvm.lifetime.end(i64 4, i8* %16) #1
  %17 = load i32, i32* %retval
  ret i32 %17
}

; Function Attrs: nounwind uwtable
define i32 @SmpFrqIndex(i64 %sRate, i32* %version) #0 {
entry:
  %retval = alloca i32, align 4
  %sRate.addr = alloca i64, align 8
  %version.addr = alloca i32*, align 8
  store i64 %sRate, i64* %sRate.addr, align 8, !tbaa !20
  store i32* %version, i32** %version.addr, align 8, !tbaa !1
  %0 = load i32*, i32** %version.addr, align 8, !tbaa !1
  store i32 0, i32* %0, align 4, !tbaa !14
  %1 = load i64, i64* %sRate.addr, align 8, !tbaa !20
  %cmp = icmp eq i64 %1, 44100
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %2 = load i32*, i32** %version.addr, align 8, !tbaa !1
  store i32 1, i32* %2, align 4, !tbaa !14
  store i32 0, i32* %retval
  br label %return

if.else:                                          ; preds = %entry
  %3 = load i64, i64* %sRate.addr, align 8, !tbaa !20
  %cmp1 = icmp eq i64 %3, 48000
  br i1 %cmp1, label %if.then.2, label %if.else.3

if.then.2:                                        ; preds = %if.else
  %4 = load i32*, i32** %version.addr, align 8, !tbaa !1
  store i32 1, i32* %4, align 4, !tbaa !14
  store i32 1, i32* %retval
  br label %return

if.else.3:                                        ; preds = %if.else
  %5 = load i64, i64* %sRate.addr, align 8, !tbaa !20
  %cmp4 = icmp eq i64 %5, 32000
  br i1 %cmp4, label %if.then.5, label %if.else.6

if.then.5:                                        ; preds = %if.else.3
  %6 = load i32*, i32** %version.addr, align 8, !tbaa !1
  store i32 1, i32* %6, align 4, !tbaa !14
  store i32 2, i32* %retval
  br label %return

if.else.6:                                        ; preds = %if.else.3
  %7 = load i64, i64* %sRate.addr, align 8, !tbaa !20
  %cmp7 = icmp eq i64 %7, 24000
  br i1 %cmp7, label %if.then.8, label %if.else.9

if.then.8:                                        ; preds = %if.else.6
  %8 = load i32*, i32** %version.addr, align 8, !tbaa !1
  store i32 0, i32* %8, align 4, !tbaa !14
  store i32 1, i32* %retval
  br label %return

if.else.9:                                        ; preds = %if.else.6
  %9 = load i64, i64* %sRate.addr, align 8, !tbaa !20
  %cmp10 = icmp eq i64 %9, 22050
  br i1 %cmp10, label %if.then.11, label %if.else.12

if.then.11:                                       ; preds = %if.else.9
  %10 = load i32*, i32** %version.addr, align 8, !tbaa !1
  store i32 0, i32* %10, align 4, !tbaa !14
  store i32 0, i32* %retval
  br label %return

if.else.12:                                       ; preds = %if.else.9
  %11 = load i64, i64* %sRate.addr, align 8, !tbaa !20
  %cmp13 = icmp eq i64 %11, 16000
  br i1 %cmp13, label %if.then.14, label %if.else.15

if.then.14:                                       ; preds = %if.else.12
  %12 = load i32*, i32** %version.addr, align 8, !tbaa !1
  store i32 0, i32* %12, align 4, !tbaa !14
  store i32 2, i32* %retval
  br label %return

if.else.15:                                       ; preds = %if.else.12
  %13 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !tbaa !1
  %14 = load i64, i64* %sRate.addr, align 8, !tbaa !20
  %call = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %13, i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str.6, i32 0, i32 0), i64 %14)
  store i32 -1, i32* %retval
  br label %return

return:                                           ; preds = %if.else.15, %if.then.14, %if.then.11, %if.then.8, %if.then.5, %if.then.2, %if.then
  %15 = load i32, i32* %retval
  ret i32 %15
}

; Function Attrs: nounwind uwtable
define i8* @mem_alloc(i64 %block, i8* %item) #0 {
entry:
  %block.addr = alloca i64, align 8
  %item.addr = alloca i8*, align 8
  %ptr = alloca i8*, align 8
  store i64 %block, i64* %block.addr, align 8, !tbaa !20
  store i8* %item, i8** %item.addr, align 8, !tbaa !1
  %0 = bitcast i8** %ptr to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #1
  %1 = load i64, i64* %block.addr, align 8, !tbaa !20
  %call = call noalias i8* @malloc(i64 %1) #1
  store i8* %call, i8** %ptr, align 8, !tbaa !1
  %2 = load i8*, i8** %ptr, align 8, !tbaa !1
  %cmp = icmp ne i8* %2, null
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %3 = load i8*, i8** %ptr, align 8, !tbaa !1
  %4 = load i64, i64* %block.addr, align 8, !tbaa !20
  call void @llvm.memset.p0i8.i64(i8* %3, i8 0, i64 %4, i32 1, i1 false)
  br label %if.end

if.else:                                          ; preds = %entry
  %5 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !tbaa !1
  %6 = load i8*, i8** %item.addr, align 8, !tbaa !1
  %call1 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %5, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.7, i32 0, i32 0), i8* %6)
  call void @exit(i32 1) #7
  unreachable

if.end:                                           ; preds = %if.then
  %7 = load i8*, i8** %ptr, align 8, !tbaa !1
  %8 = bitcast i8** %ptr to i8*
  call void @llvm.lifetime.end(i64 8, i8* %8) #1
  ret i8* %7
}

; Function Attrs: nounwind
declare noalias i8* @malloc(i64) #4

; Function Attrs: nounwind
declare void @llvm.memset.p0i8.i64(i8* nocapture, i8, i64, i32, i1) #1

; Function Attrs: noreturn nounwind
declare void @exit(i32) #5

; Function Attrs: nounwind uwtable
define i32 @DetermineByteOrder() #0 {
entry:
  %retval = alloca i32, align 4
  %s = alloca [5 x i8], align 1
  %probe = alloca %union.anon, align 4
  %__s1_len = alloca i64, align 8
  %__s2_len = alloca i64, align 8
  %tmp = alloca i32, align 4
  %__s1 = alloca i8*, align 8
  %__result = alloca i32, align 4
  %tmp38 = alloca i32, align 4
  %cleanup.dest.slot = alloca i32
  %__s1_len45 = alloca i64, align 8
  %__s2_len47 = alloca i64, align 8
  %tmp48 = alloca i32, align 4
  %__s154 = alloca i8*, align 8
  %__result57 = alloca i32, align 4
  %tmp95 = alloca i32, align 4
  %0 = bitcast [5 x i8]* %s to i8*
  call void @llvm.lifetime.start(i64 5, i8* %0) #1
  %1 = bitcast %union.anon* %probe to i8*
  call void @llvm.lifetime.start(i64 4, i8* %1) #1
  %longval = bitcast %union.anon* %probe to i32*
  store i32 1094861636, i32* %longval, align 4, !tbaa !14
  %arraydecay = getelementptr inbounds [5 x i8], [5 x i8]* %s, i32 0, i32 0
  %charval = bitcast %union.anon* %probe to [4 x i8]*
  %arraydecay1 = getelementptr inbounds [4 x i8], [4 x i8]* %charval, i32 0, i32 0
  %call = call i8* @strncpy(i8* %arraydecay, i8* %arraydecay1, i64 4) #1
  %arrayidx = getelementptr inbounds [5 x i8], [5 x i8]* %s, i32 0, i64 4
  store i8 0, i8* %arrayidx, align 1, !tbaa !21
  %2 = bitcast i64* %__s1_len to i8*
  call void @llvm.lifetime.start(i64 8, i8* %2) #1
  %3 = bitcast i64* %__s2_len to i8*
  call void @llvm.lifetime.start(i64 8, i8* %3) #1
  br i1 icmp eq (i64 sub (i64 ptrtoint (i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.8, i32 0, i64 1) to i64), i64 ptrtoint ([5 x i8]* @.str.8 to i64)), i64 1), label %land.lhs.true, label %cond.false

land.lhs.true:                                    ; preds = %entry
  store i64 4, i64* %__s2_len, align 8, !tbaa !20
  %4 = load i64, i64* %__s2_len, align 8, !tbaa !20
  %cmp = icmp ult i64 %4, 4
  br i1 %cmp, label %cond.true, label %cond.false

cond.true:                                        ; preds = %land.lhs.true
  %5 = bitcast i8** %__s1 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %5) #1
  %arraydecay3 = getelementptr inbounds [5 x i8], [5 x i8]* %s, i32 0, i32 0
  store i8* %arraydecay3, i8** %__s1, align 8, !tbaa !1
  %6 = bitcast i32* %__result to i8*
  call void @llvm.lifetime.start(i64 4, i8* %6) #1
  %7 = load i8*, i8** %__s1, align 8, !tbaa !1
  %arrayidx5 = getelementptr inbounds i8, i8* %7, i64 0
  %8 = load i8, i8* %arrayidx5, align 1, !tbaa !21
  %conv = zext i8 %8 to i32
  %9 = load i8, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.8, i32 0, i32 0), align 1, !tbaa !21
  %conv6 = zext i8 %9 to i32
  %sub = sub nsw i32 %conv, %conv6
  store i32 %sub, i32* %__result, align 4, !tbaa !14
  %10 = load i64, i64* %__s2_len, align 8, !tbaa !20
  %cmp7 = icmp ugt i64 %10, 0
  br i1 %cmp7, label %land.lhs.true.9, label %if.end.37

land.lhs.true.9:                                  ; preds = %cond.true
  %11 = load i32, i32* %__result, align 4, !tbaa !14
  %cmp10 = icmp eq i32 %11, 0
  br i1 %cmp10, label %if.then, label %if.end.37

if.then:                                          ; preds = %land.lhs.true.9
  %12 = load i8*, i8** %__s1, align 8, !tbaa !1
  %arrayidx12 = getelementptr inbounds i8, i8* %12, i64 1
  %13 = load i8, i8* %arrayidx12, align 1, !tbaa !21
  %conv13 = zext i8 %13 to i32
  %14 = load i8, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.8, i32 0, i64 1), align 1, !tbaa !21
  %conv14 = zext i8 %14 to i32
  %sub15 = sub nsw i32 %conv13, %conv14
  store i32 %sub15, i32* %__result, align 4, !tbaa !14
  %15 = load i64, i64* %__s2_len, align 8, !tbaa !20
  %cmp16 = icmp ugt i64 %15, 1
  br i1 %cmp16, label %land.lhs.true.18, label %if.end.36

land.lhs.true.18:                                 ; preds = %if.then
  %16 = load i32, i32* %__result, align 4, !tbaa !14
  %cmp19 = icmp eq i32 %16, 0
  br i1 %cmp19, label %if.then.21, label %if.end.36

if.then.21:                                       ; preds = %land.lhs.true.18
  %17 = load i8*, i8** %__s1, align 8, !tbaa !1
  %arrayidx22 = getelementptr inbounds i8, i8* %17, i64 2
  %18 = load i8, i8* %arrayidx22, align 1, !tbaa !21
  %conv23 = zext i8 %18 to i32
  %19 = load i8, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.8, i32 0, i64 2), align 1, !tbaa !21
  %conv24 = zext i8 %19 to i32
  %sub25 = sub nsw i32 %conv23, %conv24
  store i32 %sub25, i32* %__result, align 4, !tbaa !14
  %20 = load i64, i64* %__s2_len, align 8, !tbaa !20
  %cmp26 = icmp ugt i64 %20, 2
  br i1 %cmp26, label %land.lhs.true.28, label %if.end

land.lhs.true.28:                                 ; preds = %if.then.21
  %21 = load i32, i32* %__result, align 4, !tbaa !14
  %cmp29 = icmp eq i32 %21, 0
  br i1 %cmp29, label %if.then.31, label %if.end

if.then.31:                                       ; preds = %land.lhs.true.28
  %22 = load i8*, i8** %__s1, align 8, !tbaa !1
  %arrayidx32 = getelementptr inbounds i8, i8* %22, i64 3
  %23 = load i8, i8* %arrayidx32, align 1, !tbaa !21
  %conv33 = zext i8 %23 to i32
  %24 = load i8, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.8, i32 0, i64 3), align 1, !tbaa !21
  %conv34 = zext i8 %24 to i32
  %sub35 = sub nsw i32 %conv33, %conv34
  store i32 %sub35, i32* %__result, align 4, !tbaa !14
  br label %if.end

if.end:                                           ; preds = %if.then.31, %land.lhs.true.28, %if.then.21
  br label %if.end.36

if.end.36:                                        ; preds = %if.end, %land.lhs.true.18, %if.then
  br label %if.end.37

if.end.37:                                        ; preds = %if.end.36, %land.lhs.true.9, %cond.true
  %25 = load i32, i32* %__result, align 4, !tbaa !14
  store i32 %25, i32* %tmp38, !tbaa !14
  %26 = bitcast i32* %__result to i8*
  call void @llvm.lifetime.end(i64 4, i8* %26) #1
  %27 = bitcast i8** %__s1 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %27) #1
  %28 = load i32, i32* %tmp38, !tbaa !14
  br label %cond.end

cond.false:                                       ; preds = %land.lhs.true, %entry
  %arraydecay39 = getelementptr inbounds [5 x i8], [5 x i8]* %s, i32 0, i32 0
  %call40 = call i32 @strcmp(i8* %arraydecay39, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.8, i32 0, i32 0)) #1
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %if.end.37
  %cond = phi i32 [ %28, %if.end.37 ], [ %call40, %cond.false ]
  store i32 %cond, i32* %tmp, !tbaa !14
  %29 = bitcast i64* %__s2_len to i8*
  call void @llvm.lifetime.end(i64 8, i8* %29) #1
  %30 = bitcast i64* %__s1_len to i8*
  call void @llvm.lifetime.end(i64 8, i8* %30) #1
  %31 = load i32, i32* %tmp, !tbaa !14
  %cmp41 = icmp eq i32 %31, 0
  br i1 %cmp41, label %if.then.43, label %if.else

if.then.43:                                       ; preds = %cond.end
  store i32 1, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.else:                                          ; preds = %cond.end
  %32 = bitcast i64* %__s1_len45 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %32) #1
  %33 = bitcast i64* %__s2_len47 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %33) #1
  br i1 icmp eq (i64 sub (i64 ptrtoint (i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.9, i32 0, i64 1) to i64), i64 ptrtoint ([5 x i8]* @.str.9 to i64)), i64 1), label %land.lhs.true.49, label %cond.false.96

land.lhs.true.49:                                 ; preds = %if.else
  store i64 4, i64* %__s2_len47, align 8, !tbaa !20
  %34 = load i64, i64* %__s2_len47, align 8, !tbaa !20
  %cmp50 = icmp ult i64 %34, 4
  br i1 %cmp50, label %cond.true.52, label %cond.false.96

cond.true.52:                                     ; preds = %land.lhs.true.49
  %35 = bitcast i8** %__s154 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %35) #1
  %arraydecay55 = getelementptr inbounds [5 x i8], [5 x i8]* %s, i32 0, i32 0
  store i8* %arraydecay55, i8** %__s154, align 8, !tbaa !1
  %36 = bitcast i32* %__result57 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %36) #1
  %37 = load i8*, i8** %__s154, align 8, !tbaa !1
  %arrayidx58 = getelementptr inbounds i8, i8* %37, i64 0
  %38 = load i8, i8* %arrayidx58, align 1, !tbaa !21
  %conv59 = zext i8 %38 to i32
  %39 = load i8, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.9, i32 0, i32 0), align 1, !tbaa !21
  %conv60 = zext i8 %39 to i32
  %sub61 = sub nsw i32 %conv59, %conv60
  store i32 %sub61, i32* %__result57, align 4, !tbaa !14
  %40 = load i64, i64* %__s2_len47, align 8, !tbaa !20
  %cmp62 = icmp ugt i64 %40, 0
  br i1 %cmp62, label %land.lhs.true.64, label %if.end.94

land.lhs.true.64:                                 ; preds = %cond.true.52
  %41 = load i32, i32* %__result57, align 4, !tbaa !14
  %cmp65 = icmp eq i32 %41, 0
  br i1 %cmp65, label %if.then.67, label %if.end.94

if.then.67:                                       ; preds = %land.lhs.true.64
  %42 = load i8*, i8** %__s154, align 8, !tbaa !1
  %arrayidx68 = getelementptr inbounds i8, i8* %42, i64 1
  %43 = load i8, i8* %arrayidx68, align 1, !tbaa !21
  %conv69 = zext i8 %43 to i32
  %44 = load i8, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.9, i32 0, i64 1), align 1, !tbaa !21
  %conv70 = zext i8 %44 to i32
  %sub71 = sub nsw i32 %conv69, %conv70
  store i32 %sub71, i32* %__result57, align 4, !tbaa !14
  %45 = load i64, i64* %__s2_len47, align 8, !tbaa !20
  %cmp72 = icmp ugt i64 %45, 1
  br i1 %cmp72, label %land.lhs.true.74, label %if.end.93

land.lhs.true.74:                                 ; preds = %if.then.67
  %46 = load i32, i32* %__result57, align 4, !tbaa !14
  %cmp75 = icmp eq i32 %46, 0
  br i1 %cmp75, label %if.then.77, label %if.end.93

if.then.77:                                       ; preds = %land.lhs.true.74
  %47 = load i8*, i8** %__s154, align 8, !tbaa !1
  %arrayidx78 = getelementptr inbounds i8, i8* %47, i64 2
  %48 = load i8, i8* %arrayidx78, align 1, !tbaa !21
  %conv79 = zext i8 %48 to i32
  %49 = load i8, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.9, i32 0, i64 2), align 1, !tbaa !21
  %conv80 = zext i8 %49 to i32
  %sub81 = sub nsw i32 %conv79, %conv80
  store i32 %sub81, i32* %__result57, align 4, !tbaa !14
  %50 = load i64, i64* %__s2_len47, align 8, !tbaa !20
  %cmp82 = icmp ugt i64 %50, 2
  br i1 %cmp82, label %land.lhs.true.84, label %if.end.92

land.lhs.true.84:                                 ; preds = %if.then.77
  %51 = load i32, i32* %__result57, align 4, !tbaa !14
  %cmp85 = icmp eq i32 %51, 0
  br i1 %cmp85, label %if.then.87, label %if.end.92

if.then.87:                                       ; preds = %land.lhs.true.84
  %52 = load i8*, i8** %__s154, align 8, !tbaa !1
  %arrayidx88 = getelementptr inbounds i8, i8* %52, i64 3
  %53 = load i8, i8* %arrayidx88, align 1, !tbaa !21
  %conv89 = zext i8 %53 to i32
  %54 = load i8, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.9, i32 0, i64 3), align 1, !tbaa !21
  %conv90 = zext i8 %54 to i32
  %sub91 = sub nsw i32 %conv89, %conv90
  store i32 %sub91, i32* %__result57, align 4, !tbaa !14
  br label %if.end.92

if.end.92:                                        ; preds = %if.then.87, %land.lhs.true.84, %if.then.77
  br label %if.end.93

if.end.93:                                        ; preds = %if.end.92, %land.lhs.true.74, %if.then.67
  br label %if.end.94

if.end.94:                                        ; preds = %if.end.93, %land.lhs.true.64, %cond.true.52
  %55 = load i32, i32* %__result57, align 4, !tbaa !14
  store i32 %55, i32* %tmp95, !tbaa !14
  %56 = bitcast i32* %__result57 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %56) #1
  %57 = bitcast i8** %__s154 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %57) #1
  %58 = load i32, i32* %tmp95, !tbaa !14
  br label %cond.end.99

cond.false.96:                                    ; preds = %land.lhs.true.49, %if.else
  %arraydecay97 = getelementptr inbounds [5 x i8], [5 x i8]* %s, i32 0, i32 0
  %call98 = call i32 @strcmp(i8* %arraydecay97, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.9, i32 0, i32 0)) #1
  br label %cond.end.99

cond.end.99:                                      ; preds = %cond.false.96, %if.end.94
  %cond100 = phi i32 [ %58, %if.end.94 ], [ %call98, %cond.false.96 ]
  store i32 %cond100, i32* %tmp48, !tbaa !14
  %59 = bitcast i64* %__s2_len47 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %59) #1
  %60 = bitcast i64* %__s1_len45 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %60) #1
  %61 = load i32, i32* %tmp48, !tbaa !14
  %cmp101 = icmp eq i32 %61, 0
  br i1 %cmp101, label %if.then.103, label %if.else.104

if.then.103:                                      ; preds = %cond.end.99
  store i32 2, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.else.104:                                      ; preds = %cond.end.99
  store i32 0, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %if.else.104, %if.then.103, %if.then.43
  %62 = bitcast %union.anon* %probe to i8*
  call void @llvm.lifetime.end(i64 4, i8* %62) #1
  %63 = bitcast [5 x i8]* %s to i8*
  call void @llvm.lifetime.end(i64 5, i8* %63) #1
  %64 = load i32, i32* %retval
  ret i32 %64
}

; Function Attrs: nounwind
declare i8* @strncpy(i8*, i8*, i64) #4

; Function Attrs: nounwind
declare i32 @strcmp(i8*, i8*) #4

; Function Attrs: nounwind uwtable
define void @SwapBytesInWords(i16* %loc, i32 %words) #0 {
entry:
  %loc.addr = alloca i16*, align 8
  %words.addr = alloca i32, align 4
  %i = alloca i32, align 4
  %thisval = alloca i16, align 2
  %dst = alloca i8*, align 8
  %src = alloca i8*, align 8
  store i16* %loc, i16** %loc.addr, align 8, !tbaa !1
  store i32 %words, i32* %words.addr, align 4, !tbaa !14
  %0 = bitcast i32* %i to i8*
  call void @llvm.lifetime.start(i64 4, i8* %0) #1
  %1 = bitcast i16* %thisval to i8*
  call void @llvm.lifetime.start(i64 2, i8* %1) #1
  %2 = bitcast i8** %dst to i8*
  call void @llvm.lifetime.start(i64 8, i8* %2) #1
  %3 = bitcast i8** %src to i8*
  call void @llvm.lifetime.start(i64 8, i8* %3) #1
  %4 = bitcast i16* %thisval to i8*
  store i8* %4, i8** %src, align 8, !tbaa !1
  store i32 0, i32* %i, align 4, !tbaa !14
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %5 = load i32, i32* %i, align 4, !tbaa !14
  %6 = load i32, i32* %words.addr, align 4, !tbaa !14
  %cmp = icmp slt i32 %5, %6
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %7 = load i16*, i16** %loc.addr, align 8, !tbaa !1
  %8 = load i16, i16* %7, align 2, !tbaa !22
  store i16 %8, i16* %thisval, align 2, !tbaa !22
  %9 = load i16*, i16** %loc.addr, align 8, !tbaa !1
  %incdec.ptr = getelementptr inbounds i16, i16* %9, i32 1
  store i16* %incdec.ptr, i16** %loc.addr, align 8, !tbaa !1
  %10 = bitcast i16* %9 to i8*
  store i8* %10, i8** %dst, align 8, !tbaa !1
  %11 = load i8*, i8** %src, align 8, !tbaa !1
  %arrayidx = getelementptr inbounds i8, i8* %11, i64 1
  %12 = load i8, i8* %arrayidx, align 1, !tbaa !21
  %13 = load i8*, i8** %dst, align 8, !tbaa !1
  %arrayidx1 = getelementptr inbounds i8, i8* %13, i64 0
  store i8 %12, i8* %arrayidx1, align 1, !tbaa !21
  %14 = load i8*, i8** %src, align 8, !tbaa !1
  %arrayidx2 = getelementptr inbounds i8, i8* %14, i64 0
  %15 = load i8, i8* %arrayidx2, align 1, !tbaa !21
  %16 = load i8*, i8** %dst, align 8, !tbaa !1
  %arrayidx3 = getelementptr inbounds i8, i8* %16, i64 1
  store i8 %15, i8* %arrayidx3, align 1, !tbaa !21
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %17 = load i32, i32* %i, align 4, !tbaa !14
  %inc = add nsw i32 %17, 1
  store i32 %inc, i32* %i, align 4, !tbaa !14
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %18 = bitcast i8** %src to i8*
  call void @llvm.lifetime.end(i64 8, i8* %18) #1
  %19 = bitcast i8** %dst to i8*
  call void @llvm.lifetime.end(i64 8, i8* %19) #1
  %20 = bitcast i16* %thisval to i8*
  call void @llvm.lifetime.end(i64 2, i8* %20) #1
  %21 = bitcast i32* %i to i8*
  call void @llvm.lifetime.end(i64 4, i8* %21) #1
  ret void
}

; Function Attrs: nounwind uwtable
define void @empty_buffer(%struct.bit_stream_struc* %bs) #0 {
entry:
  %bs.addr = alloca %struct.bit_stream_struc*, align 8
  %minimum = alloca i32, align 4
  %cleanup.dest.slot = alloca i32
  store %struct.bit_stream_struc* %bs, %struct.bit_stream_struc** %bs.addr, align 8, !tbaa !1
  %0 = bitcast i32* %minimum to i8*
  call void @llvm.lifetime.start(i64 4, i8* %0) #1
  %1 = load %struct.bit_stream_struc*, %struct.bit_stream_struc** %bs.addr, align 8, !tbaa !1
  %buf_byte_idx = getelementptr inbounds %struct.bit_stream_struc, %struct.bit_stream_struc* %1, i32 0, i32 6
  %2 = load i32, i32* %buf_byte_idx, align 4, !tbaa !24
  %add = add nsw i32 1, %2
  store i32 %add, i32* %minimum, align 4, !tbaa !14
  %3 = load %struct.bit_stream_struc*, %struct.bit_stream_struc** %bs.addr, align 8, !tbaa !1
  %buf_size = getelementptr inbounds %struct.bit_stream_struc, %struct.bit_stream_struc* %3, i32 0, i32 4
  %4 = load i32, i32* %buf_size, align 4, !tbaa !26
  %5 = load i32, i32* %minimum, align 4, !tbaa !14
  %sub = sub nsw i32 %4, %5
  %cmp = icmp sle i32 %sub, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end:                                           ; preds = %entry
  %6 = load %struct.bit_stream_struc*, %struct.bit_stream_struc** %bs.addr, align 8, !tbaa !1
  %buf_size1 = getelementptr inbounds %struct.bit_stream_struc, %struct.bit_stream_struc* %6, i32 0, i32 4
  %7 = load i32, i32* %buf_size1, align 4, !tbaa !26
  %sub2 = sub nsw i32 %7, 1
  %8 = load %struct.bit_stream_struc*, %struct.bit_stream_struc** %bs.addr, align 8, !tbaa !1
  %buf_byte_idx3 = getelementptr inbounds %struct.bit_stream_struc, %struct.bit_stream_struc* %8, i32 0, i32 6
  store i32 %sub2, i32* %buf_byte_idx3, align 4, !tbaa !24
  %9 = load %struct.bit_stream_struc*, %struct.bit_stream_struc** %bs.addr, align 8, !tbaa !1
  %buf_bit_idx = getelementptr inbounds %struct.bit_stream_struc, %struct.bit_stream_struc* %9, i32 0, i32 7
  store i32 8, i32* %buf_bit_idx, align 4, !tbaa !27
  %10 = load %struct.bit_stream_struc*, %struct.bit_stream_struc** %bs.addr, align 8, !tbaa !1
  %buf_byte_idx4 = getelementptr inbounds %struct.bit_stream_struc, %struct.bit_stream_struc* %10, i32 0, i32 6
  %11 = load i32, i32* %buf_byte_idx4, align 4, !tbaa !24
  %idxprom = sext i32 %11 to i64
  %12 = load %struct.bit_stream_struc*, %struct.bit_stream_struc** %bs.addr, align 8, !tbaa !1
  %buf = getelementptr inbounds %struct.bit_stream_struc, %struct.bit_stream_struc* %12, i32 0, i32 3
  %13 = load i8*, i8** %buf, align 8, !tbaa !28
  %arrayidx = getelementptr inbounds i8, i8* %13, i64 %idxprom
  store i8 0, i8* %arrayidx, align 1, !tbaa !21
  store i32 0, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %if.end, %if.then
  %14 = bitcast i32* %minimum to i8*
  call void @llvm.lifetime.end(i64 4, i8* %14) #1
  %cleanup.dest = load i32, i32* %cleanup.dest.slot
  switch i32 %cleanup.dest, label %unreachable [
    i32 0, label %cleanup.cont
    i32 1, label %cleanup.cont
  ]

cleanup.cont:                                     ; preds = %cleanup, %cleanup
  ret void

unreachable:                                      ; preds = %cleanup
  unreachable
}

; Function Attrs: nounwind uwtable
define i32 @copy_buffer(i8* %buffer, i32 %size, %struct.bit_stream_struc* %bs) #0 {
entry:
  %retval = alloca i32, align 4
  %buffer.addr = alloca i8*, align 8
  %size.addr = alloca i32, align 4
  %bs.addr = alloca %struct.bit_stream_struc*, align 8
  %i = alloca i32, align 4
  %j = alloca i32, align 4
  %cleanup.dest.slot = alloca i32
  store i8* %buffer, i8** %buffer.addr, align 8, !tbaa !1
  store i32 %size, i32* %size.addr, align 4, !tbaa !14
  store %struct.bit_stream_struc* %bs, %struct.bit_stream_struc** %bs.addr, align 8, !tbaa !1
  %0 = bitcast i32* %i to i8*
  call void @llvm.lifetime.start(i64 4, i8* %0) #1
  %1 = bitcast i32* %j to i8*
  call void @llvm.lifetime.start(i64 4, i8* %1) #1
  store i32 0, i32* %j, align 4, !tbaa !14
  %2 = load i32, i32* %size.addr, align 4, !tbaa !14
  %cmp = icmp ne i32 %2, 0
  br i1 %cmp, label %land.lhs.true, label %if.end

land.lhs.true:                                    ; preds = %entry
  %3 = load %struct.bit_stream_struc*, %struct.bit_stream_struc** %bs.addr, align 8, !tbaa !1
  %buf_size = getelementptr inbounds %struct.bit_stream_struc, %struct.bit_stream_struc* %3, i32 0, i32 4
  %4 = load i32, i32* %buf_size, align 4, !tbaa !26
  %sub = sub nsw i32 %4, 1
  %5 = load %struct.bit_stream_struc*, %struct.bit_stream_struc** %bs.addr, align 8, !tbaa !1
  %buf_byte_idx = getelementptr inbounds %struct.bit_stream_struc, %struct.bit_stream_struc* %5, i32 0, i32 6
  %6 = load i32, i32* %buf_byte_idx, align 4, !tbaa !24
  %sub1 = sub nsw i32 %sub, %6
  %7 = load i32, i32* %size.addr, align 4, !tbaa !14
  %cmp2 = icmp sgt i32 %sub1, %7
  br i1 %cmp2, label %if.then, label %if.end

if.then:                                          ; preds = %land.lhs.true
  store i32 -1, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end:                                           ; preds = %land.lhs.true, %entry
  %8 = load %struct.bit_stream_struc*, %struct.bit_stream_struc** %bs.addr, align 8, !tbaa !1
  %buf_size3 = getelementptr inbounds %struct.bit_stream_struc, %struct.bit_stream_struc* %8, i32 0, i32 4
  %9 = load i32, i32* %buf_size3, align 4, !tbaa !26
  %sub4 = sub nsw i32 %9, 1
  store i32 %sub4, i32* %i, align 4, !tbaa !14
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end
  %10 = load i32, i32* %i, align 4, !tbaa !14
  %11 = load %struct.bit_stream_struc*, %struct.bit_stream_struc** %bs.addr, align 8, !tbaa !1
  %buf_byte_idx5 = getelementptr inbounds %struct.bit_stream_struc, %struct.bit_stream_struc* %11, i32 0, i32 6
  %12 = load i32, i32* %buf_byte_idx5, align 4, !tbaa !24
  %cmp6 = icmp sgt i32 %10, %12
  br i1 %cmp6, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %13 = load i32, i32* %i, align 4, !tbaa !14
  %idxprom = sext i32 %13 to i64
  %14 = load %struct.bit_stream_struc*, %struct.bit_stream_struc** %bs.addr, align 8, !tbaa !1
  %buf = getelementptr inbounds %struct.bit_stream_struc, %struct.bit_stream_struc* %14, i32 0, i32 3
  %15 = load i8*, i8** %buf, align 8, !tbaa !28
  %arrayidx = getelementptr inbounds i8, i8* %15, i64 %idxprom
  %16 = load i8, i8* %arrayidx, align 1, !tbaa !21
  %17 = load i32, i32* %j, align 4, !tbaa !14
  %inc = add nsw i32 %17, 1
  store i32 %inc, i32* %j, align 4, !tbaa !14
  %idxprom7 = sext i32 %17 to i64
  %18 = load i8*, i8** %buffer.addr, align 8, !tbaa !1
  %arrayidx8 = getelementptr inbounds i8, i8* %18, i64 %idxprom7
  store i8 %16, i8* %arrayidx8, align 1, !tbaa !21
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %19 = load i32, i32* %i, align 4, !tbaa !14
  %dec = add nsw i32 %19, -1
  store i32 %dec, i32* %i, align 4, !tbaa !14
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %20 = load %struct.bit_stream_struc*, %struct.bit_stream_struc** %bs.addr, align 8, !tbaa !1
  call void @empty_buffer(%struct.bit_stream_struc* %20)
  %21 = load i32, i32* %j, align 4, !tbaa !14
  store i32 %21, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %for.end, %if.then
  %22 = bitcast i32* %j to i8*
  call void @llvm.lifetime.end(i64 4, i8* %22) #1
  %23 = bitcast i32* %i to i8*
  call void @llvm.lifetime.end(i64 4, i8* %23) #1
  %24 = load i32, i32* %retval
  ret i32 %24
}

; Function Attrs: nounwind uwtable
define void @init_bit_stream_w(%struct.bit_stream_struc* %bs) #0 {
entry:
  %bs.addr = alloca %struct.bit_stream_struc*, align 8
  store %struct.bit_stream_struc* %bs, %struct.bit_stream_struc** %bs.addr, align 8, !tbaa !1
  %0 = load %struct.bit_stream_struc*, %struct.bit_stream_struc** %bs.addr, align 8, !tbaa !1
  call void @alloc_buffer(%struct.bit_stream_struc* %0, i32 16384)
  %1 = load %struct.bit_stream_struc*, %struct.bit_stream_struc** %bs.addr, align 8, !tbaa !1
  %buf_byte_idx = getelementptr inbounds %struct.bit_stream_struc, %struct.bit_stream_struc* %1, i32 0, i32 6
  store i32 16383, i32* %buf_byte_idx, align 4, !tbaa !24
  %2 = load %struct.bit_stream_struc*, %struct.bit_stream_struc** %bs.addr, align 8, !tbaa !1
  %buf_bit_idx = getelementptr inbounds %struct.bit_stream_struc, %struct.bit_stream_struc* %2, i32 0, i32 7
  store i32 8, i32* %buf_bit_idx, align 4, !tbaa !27
  %3 = load %struct.bit_stream_struc*, %struct.bit_stream_struc** %bs.addr, align 8, !tbaa !1
  %totbit = getelementptr inbounds %struct.bit_stream_struc, %struct.bit_stream_struc* %3, i32 0, i32 5
  store i64 0, i64* %totbit, align 8, !tbaa !29
  ret void
}

; Function Attrs: nounwind uwtable
define void @alloc_buffer(%struct.bit_stream_struc* %bs, i32 %size) #0 {
entry:
  %bs.addr = alloca %struct.bit_stream_struc*, align 8
  %size.addr = alloca i32, align 4
  store %struct.bit_stream_struc* %bs, %struct.bit_stream_struc** %bs.addr, align 8, !tbaa !1
  store i32 %size, i32* %size.addr, align 4, !tbaa !14
  %0 = load i32, i32* %size.addr, align 4, !tbaa !14
  %conv = sext i32 %0 to i64
  %mul = mul i64 %conv, 1
  %call = call i8* @mem_alloc(i64 %mul, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.10, i32 0, i32 0))
  %1 = load %struct.bit_stream_struc*, %struct.bit_stream_struc** %bs.addr, align 8, !tbaa !1
  %buf = getelementptr inbounds %struct.bit_stream_struc, %struct.bit_stream_struc* %1, i32 0, i32 3
  store i8* %call, i8** %buf, align 8, !tbaa !28
  %2 = load i32, i32* %size.addr, align 4, !tbaa !14
  %3 = load %struct.bit_stream_struc*, %struct.bit_stream_struc** %bs.addr, align 8, !tbaa !1
  %buf_size = getelementptr inbounds %struct.bit_stream_struc, %struct.bit_stream_struc* %3, i32 0, i32 4
  store i32 %2, i32* %buf_size, align 4, !tbaa !26
  ret void
}

; Function Attrs: nounwind uwtable
define void @desalloc_buffer(%struct.bit_stream_struc* %bs) #0 {
entry:
  %bs.addr = alloca %struct.bit_stream_struc*, align 8
  store %struct.bit_stream_struc* %bs, %struct.bit_stream_struc** %bs.addr, align 8, !tbaa !1
  %0 = load %struct.bit_stream_struc*, %struct.bit_stream_struc** %bs.addr, align 8, !tbaa !1
  %buf = getelementptr inbounds %struct.bit_stream_struc, %struct.bit_stream_struc* %0, i32 0, i32 3
  %1 = load i8*, i8** %buf, align 8, !tbaa !28
  call void @free(i8* %1) #1
  ret void
}

; Function Attrs: nounwind
declare void @free(i8*) #4

; Function Attrs: nounwind uwtable
define void @putbits(%struct.bit_stream_struc* %bs, i32 %val, i32 %N) #0 {
entry:
  %bs.addr = alloca %struct.bit_stream_struc*, align 8
  %val.addr = alloca i32, align 4
  %N.addr = alloca i32, align 4
  %j = alloca i32, align 4
  %k = alloca i32, align 4
  %tmp = alloca i32, align 4
  store %struct.bit_stream_struc* %bs, %struct.bit_stream_struc** %bs.addr, align 8, !tbaa !1
  store i32 %val, i32* %val.addr, align 4, !tbaa !14
  store i32 %N, i32* %N.addr, align 4, !tbaa !14
  %0 = bitcast i32* %j to i8*
  call void @llvm.lifetime.start(i64 4, i8* %0) #1
  %1 = load i32, i32* %N.addr, align 4, !tbaa !14
  store i32 %1, i32* %j, align 4, !tbaa !14
  %2 = bitcast i32* %k to i8*
  call void @llvm.lifetime.start(i64 4, i8* %2) #1
  %3 = bitcast i32* %tmp to i8*
  call void @llvm.lifetime.start(i64 4, i8* %3) #1
  %4 = load i32, i32* %N.addr, align 4, !tbaa !14
  %cmp = icmp sgt i32 %4, 32
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %5 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !tbaa !1
  %call = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %5, i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str.11, i32 0, i32 0), i32 32)
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %6 = load i32, i32* %N.addr, align 4, !tbaa !14
  %conv = sext i32 %6 to i64
  %7 = load %struct.bit_stream_struc*, %struct.bit_stream_struc** %bs.addr, align 8, !tbaa !1
  %totbit = getelementptr inbounds %struct.bit_stream_struc, %struct.bit_stream_struc* %7, i32 0, i32 5
  %8 = load i64, i64* %totbit, align 8, !tbaa !29
  %add = add i64 %8, %conv
  store i64 %add, i64* %totbit, align 8, !tbaa !29
  br label %while.cond

while.cond:                                       ; preds = %if.end.22, %if.end
  %9 = load i32, i32* %j, align 4, !tbaa !14
  %cmp1 = icmp sgt i32 %9, 0
  br i1 %cmp1, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %10 = load i32, i32* %j, align 4, !tbaa !14
  %11 = load %struct.bit_stream_struc*, %struct.bit_stream_struc** %bs.addr, align 8, !tbaa !1
  %buf_bit_idx = getelementptr inbounds %struct.bit_stream_struc, %struct.bit_stream_struc* %11, i32 0, i32 7
  %12 = load i32, i32* %buf_bit_idx, align 4, !tbaa !27
  %cmp3 = icmp slt i32 %10, %12
  br i1 %cmp3, label %cond.true, label %cond.false

cond.true:                                        ; preds = %while.body
  %13 = load i32, i32* %j, align 4, !tbaa !14
  br label %cond.end

cond.false:                                       ; preds = %while.body
  %14 = load %struct.bit_stream_struc*, %struct.bit_stream_struc** %bs.addr, align 8, !tbaa !1
  %buf_bit_idx5 = getelementptr inbounds %struct.bit_stream_struc, %struct.bit_stream_struc* %14, i32 0, i32 7
  %15 = load i32, i32* %buf_bit_idx5, align 4, !tbaa !27
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %13, %cond.true ], [ %15, %cond.false ]
  store i32 %cond, i32* %k, align 4, !tbaa !14
  %16 = load i32, i32* %val.addr, align 4, !tbaa !14
  %17 = load i32, i32* %j, align 4, !tbaa !14
  %18 = load i32, i32* %k, align 4, !tbaa !14
  %sub = sub nsw i32 %17, %18
  %shr = lshr i32 %16, %sub
  store i32 %shr, i32* %tmp, align 4, !tbaa !14
  %19 = load i32, i32* %tmp, align 4, !tbaa !14
  %20 = load i32, i32* %k, align 4, !tbaa !14
  %idxprom = sext i32 %20 to i64
  %arrayidx = getelementptr inbounds [9 x i32], [9 x i32]* @putmask, i32 0, i64 %idxprom
  %21 = load i32, i32* %arrayidx, align 4, !tbaa !14
  %and = and i32 %19, %21
  %22 = load %struct.bit_stream_struc*, %struct.bit_stream_struc** %bs.addr, align 8, !tbaa !1
  %buf_bit_idx6 = getelementptr inbounds %struct.bit_stream_struc, %struct.bit_stream_struc* %22, i32 0, i32 7
  %23 = load i32, i32* %buf_bit_idx6, align 4, !tbaa !27
  %24 = load i32, i32* %k, align 4, !tbaa !14
  %sub7 = sub nsw i32 %23, %24
  %shl = shl i32 %and, %sub7
  %25 = load %struct.bit_stream_struc*, %struct.bit_stream_struc** %bs.addr, align 8, !tbaa !1
  %buf_byte_idx = getelementptr inbounds %struct.bit_stream_struc, %struct.bit_stream_struc* %25, i32 0, i32 6
  %26 = load i32, i32* %buf_byte_idx, align 4, !tbaa !24
  %idxprom8 = sext i32 %26 to i64
  %27 = load %struct.bit_stream_struc*, %struct.bit_stream_struc** %bs.addr, align 8, !tbaa !1
  %buf = getelementptr inbounds %struct.bit_stream_struc, %struct.bit_stream_struc* %27, i32 0, i32 3
  %28 = load i8*, i8** %buf, align 8, !tbaa !28
  %arrayidx9 = getelementptr inbounds i8, i8* %28, i64 %idxprom8
  %29 = load i8, i8* %arrayidx9, align 1, !tbaa !21
  %conv10 = zext i8 %29 to i32
  %or = or i32 %conv10, %shl
  %conv11 = trunc i32 %or to i8
  store i8 %conv11, i8* %arrayidx9, align 1, !tbaa !21
  %30 = load i32, i32* %k, align 4, !tbaa !14
  %31 = load %struct.bit_stream_struc*, %struct.bit_stream_struc** %bs.addr, align 8, !tbaa !1
  %buf_bit_idx12 = getelementptr inbounds %struct.bit_stream_struc, %struct.bit_stream_struc* %31, i32 0, i32 7
  %32 = load i32, i32* %buf_bit_idx12, align 4, !tbaa !27
  %sub13 = sub nsw i32 %32, %30
  store i32 %sub13, i32* %buf_bit_idx12, align 4, !tbaa !27
  %33 = load %struct.bit_stream_struc*, %struct.bit_stream_struc** %bs.addr, align 8, !tbaa !1
  %buf_bit_idx14 = getelementptr inbounds %struct.bit_stream_struc, %struct.bit_stream_struc* %33, i32 0, i32 7
  %34 = load i32, i32* %buf_bit_idx14, align 4, !tbaa !27
  %tobool = icmp ne i32 %34, 0
  br i1 %tobool, label %if.end.22, label %if.then.15

if.then.15:                                       ; preds = %cond.end
  %35 = load %struct.bit_stream_struc*, %struct.bit_stream_struc** %bs.addr, align 8, !tbaa !1
  %buf_bit_idx16 = getelementptr inbounds %struct.bit_stream_struc, %struct.bit_stream_struc* %35, i32 0, i32 7
  store i32 8, i32* %buf_bit_idx16, align 4, !tbaa !27
  %36 = load %struct.bit_stream_struc*, %struct.bit_stream_struc** %bs.addr, align 8, !tbaa !1
  %buf_byte_idx17 = getelementptr inbounds %struct.bit_stream_struc, %struct.bit_stream_struc* %36, i32 0, i32 6
  %37 = load i32, i32* %buf_byte_idx17, align 4, !tbaa !24
  %dec = add nsw i32 %37, -1
  store i32 %dec, i32* %buf_byte_idx17, align 4, !tbaa !24
  %38 = load %struct.bit_stream_struc*, %struct.bit_stream_struc** %bs.addr, align 8, !tbaa !1
  %buf_byte_idx18 = getelementptr inbounds %struct.bit_stream_struc, %struct.bit_stream_struc* %38, i32 0, i32 6
  %39 = load i32, i32* %buf_byte_idx18, align 4, !tbaa !24
  %idxprom19 = sext i32 %39 to i64
  %40 = load %struct.bit_stream_struc*, %struct.bit_stream_struc** %bs.addr, align 8, !tbaa !1
  %buf20 = getelementptr inbounds %struct.bit_stream_struc, %struct.bit_stream_struc* %40, i32 0, i32 3
  %41 = load i8*, i8** %buf20, align 8, !tbaa !28
  %arrayidx21 = getelementptr inbounds i8, i8* %41, i64 %idxprom19
  store i8 0, i8* %arrayidx21, align 1, !tbaa !21
  br label %if.end.22

if.end.22:                                        ; preds = %if.then.15, %cond.end
  %42 = load i32, i32* %k, align 4, !tbaa !14
  %43 = load i32, i32* %j, align 4, !tbaa !14
  %sub23 = sub nsw i32 %43, %42
  store i32 %sub23, i32* %j, align 4, !tbaa !14
  br label %while.cond

while.end:                                        ; preds = %while.cond
  %44 = bitcast i32* %tmp to i8*
  call void @llvm.lifetime.end(i64 4, i8* %44) #1
  %45 = bitcast i32* %k to i8*
  call void @llvm.lifetime.end(i64 4, i8* %45) #1
  %46 = bitcast i32* %j to i8*
  call void @llvm.lifetime.end(i64 4, i8* %46) #1
  ret void
}

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { nounwind readnone "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { nounwind "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #5 = { noreturn nounwind "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #6 = { nounwind readnone }
attributes #7 = { noreturn nounwind }

!llvm.ident = !{!0}

!0 = !{!"clang version 3.7.0 (tags/RELEASE_370/final)"}
!1 = !{!2, !2, i64 0}
!2 = !{!"any pointer", !3, i64 0}
!3 = !{!"omnipotent char", !4, i64 0}
!4 = !{!"Simple C/C++ TBAA"}
!5 = !{!6, !8, i64 16}
!6 = !{!"", !7, i64 0, !8, i64 8, !8, i64 12, !8, i64 16, !8, i64 20, !8, i64 24, !8, i64 28, !8, i64 32, !8, i64 36, !8, i64 40, !8, i64 44, !8, i64 48, !8, i64 52, !8, i64 56, !8, i64 60, !8, i64 64, !8, i64 68, !8, i64 72, !8, i64 76, !8, i64 80, !8, i64 84, !8, i64 88, !8, i64 92, !8, i64 96, !8, i64 100, !8, i64 104, !8, i64 108, !8, i64 112, !8, i64 116, !3, i64 120, !8, i64 124, !2, i64 128, !2, i64 136, !8, i64 144, !8, i64 148, !9, i64 152, !8, i64 156, !8, i64 160, !8, i64 164, !7, i64 168, !7, i64 176, !8, i64 184, !8, i64 188, !8, i64 192, !8, i64 196, !8, i64 200, !8, i64 204, !8, i64 208, !8, i64 212, !9, i64 216, !8, i64 220, !8, i64 224, !8, i64 228, !9, i64 232, !9, i64 236, !9, i64 240, !9, i64 244, !8, i64 248, !8, i64 252, !8, i64 256, !8, i64 260, !8, i64 264, !8, i64 268, !8, i64 272, !8, i64 276}
!7 = !{!"long", !3, i64 0}
!8 = !{!"int", !3, i64 0}
!9 = !{!"float", !3, i64 0}
!10 = !{!11, !11, i64 0}
!11 = !{!"double", !3, i64 0}
!12 = !{!6, !8, i64 220}
!13 = !{!6, !8, i64 192}
!14 = !{!8, !8, i64 0}
!15 = !{!6, !8, i64 204}
!16 = !{!6, !8, i64 60}
!17 = !{!6, !8, i64 188}
!18 = !{!6, !8, i64 196}
!19 = !{!6, !8, i64 200}
!20 = !{!7, !7, i64 0}
!21 = !{!3, !3, i64 0}
!22 = !{!23, !23, i64 0}
!23 = !{!"short", !3, i64 0}
!24 = !{!25, !8, i64 48}
!25 = !{!"bit_stream_struc", !2, i64 0, !8, i64 8, !2, i64 16, !2, i64 24, !8, i64 32, !7, i64 40, !8, i64 48, !8, i64 52}
!26 = !{!25, !8, i64 32}
!27 = !{!25, !8, i64 52}
!28 = !{!25, !2, i64 24}
!29 = !{!25, !7, i64 40}
