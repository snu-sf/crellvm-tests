; ModuleID = './MultiSource.Benchmarks.MiBench/32.consumer-lame.lame.bc'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bit_stream_struc = type { i8*, i32, %struct._IO_FILE*, i8*, i32, i64, i32, i32 }
%struct._IO_FILE = type { i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, %struct._IO_marker*, %struct._IO_FILE*, i32, i32, i64, i16, i8, [1 x i8], i8*, i64, i8*, i8*, i8*, i8*, i64, i32, [20 x i8] }
%struct._IO_marker = type { %struct._IO_marker*, %struct._IO_FILE*, i32 }
%struct.III_side_info_t = type { i32, i32, i32, [2 x [4 x i32]], [2 x %struct.anon] }
%struct.anon = type { [2 x %struct.gr_info_ss] }
%struct.gr_info_ss = type { %struct.gr_info }
%struct.gr_info = type { i32, i32, i32, i32, i32, i32, i32, i32, [3 x i32], [3 x i32], i32, i32, i32, i32, i32, i32, i32, i32, i32, i32*, [4 x i32] }
%struct.ID3TAGDATA = type { i32, i32, [31 x i8], [31 x i8], [31 x i8], [5 x i8], [31 x i8], [128 x i8], [1 x i8], i8 }
%struct.scalefac_struct = type { [23 x i32], [14 x i32] }
%struct.lame_global_flags = type { i64, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i8*, i8*, i32, i32, float, i32, i32, i32, i64, i64, i32, i32, i32, i32, i32, i32, i32, i32, float, i32, i32, i32, float, float, float, float, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.III_psy_ratio = type { %struct.III_psy_xmin, %struct.III_psy_xmin }
%struct.III_psy_xmin = type { [22 x double], [13 x [3 x double]] }
%struct.III_scalefac_t = type { [22 x i32], [13 x [3 x i32]] }

@bs = internal global %struct.bit_stream_struc zeroinitializer, align 8
@l3_side = internal global %struct.III_side_info_t zeroinitializer, align 8
@stderr = external global %struct._IO_FILE*, align 8
@.str = private unnamed_addr constant [65 x i8] c"Warning: highpass filter disabled.  highpass frequency to small\0A\00", align 1
@id3tag = external global %struct.ID3TAGDATA, align 4
@sfBandIndex = external global [6 x %struct.scalefac_struct], align 16
@scalefac_band = external global %struct.scalefac_struct, align 4
@lame_print_config.mode_names = internal global [4 x i8*] [i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.2, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.3, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.4, i32 0, i32 0)], align 16
@.str.1 = private unnamed_addr constant [7 x i8] c"stereo\00", align 1
@.str.2 = private unnamed_addr constant [9 x i8] c"j-stereo\00", align 1
@.str.3 = private unnamed_addr constant [8 x i8] c"dual-ch\00", align 1
@.str.4 = private unnamed_addr constant [10 x i8] c"single-ch\00", align 1
@.str.5 = private unnamed_addr constant [68 x i8] c"Autoconverting from stereo to mono. Setting encoding to mono mode.\0A\00", align 1
@.str.6 = private unnamed_addr constant [40 x i8] c"Resampling:  input=%ikHz  output=%ikHz\0A\00", align 1
@.str.7 = private unnamed_addr constant [70 x i8] c"Using polyphase highpass filter, transition band: %.0f Hz -  %.0f Hz\0A\00", align 1
@.str.8 = private unnamed_addr constant [70 x i8] c"Using polyphase lowpass filter,  transition band:  %.0f Hz - %.0f Hz\0A\00", align 1
@.str.9 = private unnamed_addr constant [15 x i8] c"Analyzing %s \0A\00", align 1
@.str.10 = private unnamed_addr constant [19 x i8] c"Encoding %s to %s\0A\00", align 1
@.str.11 = private unnamed_addr constant [2 x i8] c"-\00", align 1
@.str.12 = private unnamed_addr constant [6 x i8] c"stdin\00", align 1
@.str.13 = private unnamed_addr constant [7 x i8] c"stdout\00", align 1
@.str.14 = private unnamed_addr constant [59 x i8] c"Encoding as %.1fkHz VBR(q=%i) %s MPEG%i LayerIII  qval=%i\0A\00", align 1
@.str.15 = private unnamed_addr constant [67 x i8] c"Encoding as %.1f kHz %d kbps %s MPEG%i LayerIII (%4.1fx)  qval=%i\0A\00", align 1
@lame_encode_frame.frameBits = internal global i64 0, align 8
@lame_encode_frame.bitsPerSlot = internal global i64 0, align 8
@lame_encode_frame.frac_SpF = internal global double 0.000000e+00, align 8
@lame_encode_frame.slot_lag = internal global double 0.000000e+00, align 8
@lame_encode_frame.sentBits = internal global i64 0, align 8
@lame_encode_frame.ms_ratio = internal global [2 x double] zeroinitializer, align 16
@lame_encode_frame.ms_ener_ratio = internal global [2 x double] zeroinitializer, align 16
@.str.16 = private unnamed_addr constant [36 x i8] c"Sent %ld bits = %ld slots plus %ld\0A\00", align 1
@fill_buffer_resample.itime = internal global [2 x double] zeroinitializer, align 16
@fill_buffer_resample.inbuf_old = internal global [2 x [5 x i16]] zeroinitializer, align 16
@fill_buffer_resample.init = internal global [2 x i32] zeroinitializer, align 4
@lame_encode_buffer.frame_buffered = internal global i32 0, align 4
@mfbuf = internal global [2 x [3056 x i16]] zeroinitializer, align 16
@mf_samples_to_encode = internal global i32 0, align 4
@mf_size = internal global i32 0, align 4
@lame_encode_buffer_interleaved.frame_buffered = internal global i32 0, align 4
@.str.17 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1

; Function Attrs: nounwind uwtable
define void @lame_init_params(%struct.lame_global_flags* %gfp) #0 {
entry:
  %gfp.addr = alloca %struct.lame_global_flags*, align 8
  %i = alloca i32, align 4
  %compression_ratio = alloca float, align 4
  %band = alloca i32, align 4
  %band305 = alloca i32, align 4
  %maxband = alloca i32, align 4
  %minband = alloca i32, align 4
  %amp = alloca double, align 8
  %freq = alloca double, align 8
  store %struct.lame_global_flags* %gfp, %struct.lame_global_flags** %gfp.addr, align 8, !tbaa !1
  %0 = bitcast i32* %i to i8*
  call void @llvm.lifetime.start(i64 4, i8* %0) #1
  %1 = bitcast float* %compression_ratio to i8*
  call void @llvm.lifetime.start(i64 4, i8* %1) #1
  call void @llvm.memset.p0i8.i64(i8* bitcast (%struct.bit_stream_struc* @bs to i8*), i8 0, i64 56, i32 8, i1 false)
  call void @llvm.memset.p0i8.i64(i8* bitcast (%struct.III_side_info_t* @l3_side to i8*), i8 0, i64 528, i32 8, i1 false)
  %2 = load %struct.lame_global_flags*, %struct.lame_global_flags** %gfp.addr, align 8, !tbaa !1
  %frameNum = getelementptr inbounds %struct.lame_global_flags, %struct.lame_global_flags* %2, i32 0, i32 39
  store i64 0, i64* %frameNum, align 8, !tbaa !5
  call void @InitFormatBitStream()
  %3 = load %struct.lame_global_flags*, %struct.lame_global_flags** %gfp.addr, align 8, !tbaa !1
  %num_channels = getelementptr inbounds %struct.lame_global_flags, %struct.lame_global_flags* %3, i32 0, i32 1
  %4 = load i32, i32* %num_channels, align 4, !tbaa !10
  %cmp = icmp eq i32 %4, 1
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %5 = load %struct.lame_global_flags*, %struct.lame_global_flags** %gfp.addr, align 8, !tbaa !1
  %mode = getelementptr inbounds %struct.lame_global_flags, %struct.lame_global_flags* %5, i32 0, i32 8
  store i32 3, i32* %mode, align 4, !tbaa !11
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %6 = load %struct.lame_global_flags*, %struct.lame_global_flags** %gfp.addr, align 8, !tbaa !1
  %stereo = getelementptr inbounds %struct.lame_global_flags, %struct.lame_global_flags* %6, i32 0, i32 46
  store i32 2, i32* %stereo, align 4, !tbaa !12
  %7 = load %struct.lame_global_flags*, %struct.lame_global_flags** %gfp.addr, align 8, !tbaa !1
  %mode1 = getelementptr inbounds %struct.lame_global_flags, %struct.lame_global_flags* %7, i32 0, i32 8
  %8 = load i32, i32* %mode1, align 4, !tbaa !11
  %cmp2 = icmp eq i32 %8, 3
  br i1 %cmp2, label %if.then.3, label %if.end.5

if.then.3:                                        ; preds = %if.end
  %9 = load %struct.lame_global_flags*, %struct.lame_global_flags** %gfp.addr, align 8, !tbaa !1
  %stereo4 = getelementptr inbounds %struct.lame_global_flags, %struct.lame_global_flags* %9, i32 0, i32 46
  store i32 1, i32* %stereo4, align 4, !tbaa !12
  br label %if.end.5

if.end.5:                                         ; preds = %if.then.3, %if.end
  %10 = load %struct.lame_global_flags*, %struct.lame_global_flags** %gfp.addr, align 8, !tbaa !1
  %out_samplerate = getelementptr inbounds %struct.lame_global_flags, %struct.lame_global_flags* %10, i32 0, i32 3
  %11 = load i32, i32* %out_samplerate, align 4, !tbaa !13
  %cmp6 = icmp eq i32 %11, 0
  br i1 %cmp6, label %if.then.7, label %if.end.98

if.then.7:                                        ; preds = %if.end.5
  %12 = load %struct.lame_global_flags*, %struct.lame_global_flags** %gfp.addr, align 8, !tbaa !1
  %in_samplerate = getelementptr inbounds %struct.lame_global_flags, %struct.lame_global_flags* %12, i32 0, i32 2
  %13 = load i32, i32* %in_samplerate, align 4, !tbaa !14
  %14 = load %struct.lame_global_flags*, %struct.lame_global_flags** %gfp.addr, align 8, !tbaa !1
  %out_samplerate8 = getelementptr inbounds %struct.lame_global_flags, %struct.lame_global_flags* %14, i32 0, i32 3
  store i32 %13, i32* %out_samplerate8, align 4, !tbaa !13
  %15 = load %struct.lame_global_flags*, %struct.lame_global_flags** %gfp.addr, align 8, !tbaa !1
  %out_samplerate9 = getelementptr inbounds %struct.lame_global_flags, %struct.lame_global_flags* %15, i32 0, i32 3
  %16 = load i32, i32* %out_samplerate9, align 4, !tbaa !13
  %cmp10 = icmp sge i32 %16, 48000
  br i1 %cmp10, label %if.then.11, label %if.else

if.then.11:                                       ; preds = %if.then.7
  %17 = load %struct.lame_global_flags*, %struct.lame_global_flags** %gfp.addr, align 8, !tbaa !1
  %out_samplerate12 = getelementptr inbounds %struct.lame_global_flags, %struct.lame_global_flags* %17, i32 0, i32 3
  store i32 48000, i32* %out_samplerate12, align 4, !tbaa !13
  br label %if.end.38

if.else:                                          ; preds = %if.then.7
  %18 = load %struct.lame_global_flags*, %struct.lame_global_flags** %gfp.addr, align 8, !tbaa !1
  %out_samplerate13 = getelementptr inbounds %struct.lame_global_flags, %struct.lame_global_flags* %18, i32 0, i32 3
  %19 = load i32, i32* %out_samplerate13, align 4, !tbaa !13
  %cmp14 = icmp sge i32 %19, 44100
  br i1 %cmp14, label %if.then.15, label %if.else.17

if.then.15:                                       ; preds = %if.else
  %20 = load %struct.lame_global_flags*, %struct.lame_global_flags** %gfp.addr, align 8, !tbaa !1
  %out_samplerate16 = getelementptr inbounds %struct.lame_global_flags, %struct.lame_global_flags* %20, i32 0, i32 3
  store i32 44100, i32* %out_samplerate16, align 4, !tbaa !13
  br label %if.end.37

if.else.17:                                       ; preds = %if.else
  %21 = load %struct.lame_global_flags*, %struct.lame_global_flags** %gfp.addr, align 8, !tbaa !1
  %out_samplerate18 = getelementptr inbounds %struct.lame_global_flags, %struct.lame_global_flags* %21, i32 0, i32 3
  %22 = load i32, i32* %out_samplerate18, align 4, !tbaa !13
  %cmp19 = icmp sge i32 %22, 32000
  br i1 %cmp19, label %if.then.20, label %if.else.22

if.then.20:                                       ; preds = %if.else.17
  %23 = load %struct.lame_global_flags*, %struct.lame_global_flags** %gfp.addr, align 8, !tbaa !1
  %out_samplerate21 = getelementptr inbounds %struct.lame_global_flags, %struct.lame_global_flags* %23, i32 0, i32 3
  store i32 32000, i32* %out_samplerate21, align 4, !tbaa !13
  br label %if.end.36

if.else.22:                                       ; preds = %if.else.17
  %24 = load %struct.lame_global_flags*, %struct.lame_global_flags** %gfp.addr, align 8, !tbaa !1
  %out_samplerate23 = getelementptr inbounds %struct.lame_global_flags, %struct.lame_global_flags* %24, i32 0, i32 3
  %25 = load i32, i32* %out_samplerate23, align 4, !tbaa !13
  %cmp24 = icmp sge i32 %25, 24000
  br i1 %cmp24, label %if.then.25, label %if.else.27

if.then.25:                                       ; preds = %if.else.22
  %26 = load %struct.lame_global_flags*, %struct.lame_global_flags** %gfp.addr, align 8, !tbaa !1
  %out_samplerate26 = getelementptr inbounds %struct.lame_global_flags, %struct.lame_global_flags* %26, i32 0, i32 3
  store i32 24000, i32* %out_samplerate26, align 4, !tbaa !13
  br label %if.end.35

if.else.27:                                       ; preds = %if.else.22
  %27 = load %struct.lame_global_flags*, %struct.lame_global_flags** %gfp.addr, align 8, !tbaa !1
  %out_samplerate28 = getelementptr inbounds %struct.lame_global_flags, %struct.lame_global_flags* %27, i32 0, i32 3
  %28 = load i32, i32* %out_samplerate28, align 4, !tbaa !13
  %cmp29 = icmp sge i32 %28, 22050
  br i1 %cmp29, label %if.then.30, label %if.else.32

if.then.30:                                       ; preds = %if.else.27
  %29 = load %struct.lame_global_flags*, %struct.lame_global_flags** %gfp.addr, align 8, !tbaa !1
  %out_samplerate31 = getelementptr inbounds %struct.lame_global_flags, %struct.lame_global_flags* %29, i32 0, i32 3
  store i32 22050, i32* %out_samplerate31, align 4, !tbaa !13
  br label %if.end.34

if.else.32:                                       ; preds = %if.else.27
  %30 = load %struct.lame_global_flags*, %struct.lame_global_flags** %gfp.addr, align 8, !tbaa !1
  %out_samplerate33 = getelementptr inbounds %struct.lame_global_flags, %struct.lame_global_flags* %30, i32 0, i32 3
  store i32 16000, i32* %out_samplerate33, align 4, !tbaa !13
  br label %if.end.34

if.end.34:                                        ; preds = %if.else.32, %if.then.30
  br label %if.end.35

if.end.35:                                        ; preds = %if.end.34, %if.then.25
  br label %if.end.36

if.end.36:                                        ; preds = %if.end.35, %if.then.20
  br label %if.end.37

if.end.37:                                        ; preds = %if.end.36, %if.then.15
  br label %if.end.38

if.end.38:                                        ; preds = %if.end.37, %if.then.11
  %31 = load %struct.lame_global_flags*, %struct.lame_global_flags** %gfp.addr, align 8, !tbaa !1
  %brate = getelementptr inbounds %struct.lame_global_flags, %struct.lame_global_flags* %31, i32 0, i32 11
  %32 = load i32, i32* %brate, align 4, !tbaa !15
  %cmp39 = icmp sgt i32 %32, 0
  br i1 %cmp39, label %if.then.40, label %if.end.97

if.then.40:                                       ; preds = %if.end.38
  %33 = load %struct.lame_global_flags*, %struct.lame_global_flags** %gfp.addr, align 8, !tbaa !1
  %out_samplerate41 = getelementptr inbounds %struct.lame_global_flags, %struct.lame_global_flags* %33, i32 0, i32 3
  %34 = load i32, i32* %out_samplerate41, align 4, !tbaa !13
  %mul = mul nsw i32 %34, 16
  %35 = load %struct.lame_global_flags*, %struct.lame_global_flags** %gfp.addr, align 8, !tbaa !1
  %stereo42 = getelementptr inbounds %struct.lame_global_flags, %struct.lame_global_flags* %35, i32 0, i32 46
  %36 = load i32, i32* %stereo42, align 4, !tbaa !12
  %mul43 = mul nsw i32 %mul, %36
  %conv = sitofp i32 %mul43 to double
  %37 = load %struct.lame_global_flags*, %struct.lame_global_flags** %gfp.addr, align 8, !tbaa !1
  %brate44 = getelementptr inbounds %struct.lame_global_flags, %struct.lame_global_flags* %37, i32 0, i32 11
  %38 = load i32, i32* %brate44, align 4, !tbaa !15
  %conv45 = sitofp i32 %38 to double
  %mul46 = fmul double 1.000000e+03, %conv45
  %div = fdiv double %conv, %mul46
  %conv47 = fptrunc double %div to float
  store float %conv47, float* %compression_ratio, align 4, !tbaa !16
  %39 = load %struct.lame_global_flags*, %struct.lame_global_flags** %gfp.addr, align 8, !tbaa !1
  %VBR = getelementptr inbounds %struct.lame_global_flags, %struct.lame_global_flags* %39, i32 0, i32 21
  %40 = load i32, i32* %VBR, align 4, !tbaa !17
  %tobool = icmp ne i32 %40, 0
  br i1 %tobool, label %if.end.96, label %land.lhs.true

land.lhs.true:                                    ; preds = %if.then.40
  %41 = load float, float* %compression_ratio, align 4, !tbaa !16
  %cmp48 = fcmp ogt float %41, 1.300000e+01
  br i1 %cmp48, label %if.then.50, label %if.end.96

if.then.50:                                       ; preds = %land.lhs.true
  %42 = load %struct.lame_global_flags*, %struct.lame_global_flags** %gfp.addr, align 8, !tbaa !1
  %brate51 = getelementptr inbounds %struct.lame_global_flags, %struct.lame_global_flags* %42, i32 0, i32 11
  %43 = load i32, i32* %brate51, align 4, !tbaa !15
  %conv52 = sitofp i32 %43 to double
  %mul53 = fmul double 1.000000e+04, %conv52
  %44 = load %struct.lame_global_flags*, %struct.lame_global_flags** %gfp.addr, align 8, !tbaa !1
  %stereo54 = getelementptr inbounds %struct.lame_global_flags, %struct.lame_global_flags* %44, i32 0, i32 46
  %45 = load i32, i32* %stereo54, align 4, !tbaa !12
  %mul55 = mul nsw i32 16, %45
  %conv56 = sitofp i32 %mul55 to double
  %div57 = fdiv double %mul53, %conv56
  %conv58 = fptosi double %div57 to i32
  %46 = load %struct.lame_global_flags*, %struct.lame_global_flags** %gfp.addr, align 8, !tbaa !1
  %out_samplerate59 = getelementptr inbounds %struct.lame_global_flags, %struct.lame_global_flags* %46, i32 0, i32 3
  store i32 %conv58, i32* %out_samplerate59, align 4, !tbaa !13
  %47 = load %struct.lame_global_flags*, %struct.lame_global_flags** %gfp.addr, align 8, !tbaa !1
  %out_samplerate60 = getelementptr inbounds %struct.lame_global_flags, %struct.lame_global_flags* %47, i32 0, i32 3
  %48 = load i32, i32* %out_samplerate60, align 4, !tbaa !13
  %cmp61 = icmp sle i32 %48, 16000
  br i1 %cmp61, label %if.then.63, label %if.else.65

if.then.63:                                       ; preds = %if.then.50
  %49 = load %struct.lame_global_flags*, %struct.lame_global_flags** %gfp.addr, align 8, !tbaa !1
  %out_samplerate64 = getelementptr inbounds %struct.lame_global_flags, %struct.lame_global_flags* %49, i32 0, i32 3
  store i32 16000, i32* %out_samplerate64, align 4, !tbaa !13
  br label %if.end.95

if.else.65:                                       ; preds = %if.then.50
  %50 = load %struct.lame_global_flags*, %struct.lame_global_flags** %gfp.addr, align 8, !tbaa !1
  %out_samplerate66 = getelementptr inbounds %struct.lame_global_flags, %struct.lame_global_flags* %50, i32 0, i32 3
  %51 = load i32, i32* %out_samplerate66, align 4, !tbaa !13
  %cmp67 = icmp sle i32 %51, 22050
  br i1 %cmp67, label %if.then.69, label %if.else.71

if.then.69:                                       ; preds = %if.else.65
  %52 = load %struct.lame_global_flags*, %struct.lame_global_flags** %gfp.addr, align 8, !tbaa !1
  %out_samplerate70 = getelementptr inbounds %struct.lame_global_flags, %struct.lame_global_flags* %52, i32 0, i32 3
  store i32 22050, i32* %out_samplerate70, align 4, !tbaa !13
  br label %if.end.94

if.else.71:                                       ; preds = %if.else.65
  %53 = load %struct.lame_global_flags*, %struct.lame_global_flags** %gfp.addr, align 8, !tbaa !1
  %out_samplerate72 = getelementptr inbounds %struct.lame_global_flags, %struct.lame_global_flags* %53, i32 0, i32 3
  %54 = load i32, i32* %out_samplerate72, align 4, !tbaa !13
  %cmp73 = icmp sle i32 %54, 24000
  br i1 %cmp73, label %if.then.75, label %if.else.77

if.then.75:                                       ; preds = %if.else.71
  %55 = load %struct.lame_global_flags*, %struct.lame_global_flags** %gfp.addr, align 8, !tbaa !1
  %out_samplerate76 = getelementptr inbounds %struct.lame_global_flags, %struct.lame_global_flags* %55, i32 0, i32 3
  store i32 24000, i32* %out_samplerate76, align 4, !tbaa !13
  br label %if.end.93

if.else.77:                                       ; preds = %if.else.71
  %56 = load %struct.lame_global_flags*, %struct.lame_global_flags** %gfp.addr, align 8, !tbaa !1
  %out_samplerate78 = getelementptr inbounds %struct.lame_global_flags, %struct.lame_global_flags* %56, i32 0, i32 3
  %57 = load i32, i32* %out_samplerate78, align 4, !tbaa !13
  %cmp79 = icmp sle i32 %57, 32000
  br i1 %cmp79, label %if.then.81, label %if.else.83

if.then.81:                                       ; preds = %if.else.77
  %58 = load %struct.lame_global_flags*, %struct.lame_global_flags** %gfp.addr, align 8, !tbaa !1
  %out_samplerate82 = getelementptr inbounds %struct.lame_global_flags, %struct.lame_global_flags* %58, i32 0, i32 3
  store i32 32000, i32* %out_samplerate82, align 4, !tbaa !13
  br label %if.end.92

if.else.83:                                       ; preds = %if.else.77
  %59 = load %struct.lame_global_flags*, %struct.lame_global_flags** %gfp.addr, align 8, !tbaa !1
  %out_samplerate84 = getelementptr inbounds %struct.lame_global_flags, %struct.lame_global_flags* %59, i32 0, i32 3
  %60 = load i32, i32* %out_samplerate84, align 4, !tbaa !13
  %cmp85 = icmp sle i32 %60, 44100
  br i1 %cmp85, label %if.then.87, label %if.else.89

if.then.87:                                       ; preds = %if.else.83
  %61 = load %struct.lame_global_flags*, %struct.lame_global_flags** %gfp.addr, align 8, !tbaa !1
  %out_samplerate88 = getelementptr inbounds %struct.lame_global_flags, %struct.lame_global_flags* %61, i32 0, i32 3
  store i32 44100, i32* %out_samplerate88, align 4, !tbaa !13
  br label %if.end.91

if.else.89:                                       ; preds = %if.else.83
  %62 = load %struct.lame_global_flags*, %struct.lame_global_flags** %gfp.addr, align 8, !tbaa !1
  %out_samplerate90 = getelementptr inbounds %struct.lame_global_flags, %struct.lame_global_flags* %62, i32 0, i32 3
  store i32 48000, i32* %out_samplerate90, align 4, !tbaa !13
  br label %if.end.91

if.end.91:                                        ; preds = %if.else.89, %if.then.87
  br label %if.end.92

if.end.92:                                        ; preds = %if.end.91, %if.then.81
  br label %if.end.93

if.end.93:                                        ; preds = %if.end.92, %if.then.75
  br label %if.end.94

if.end.94:                                        ; preds = %if.end.93, %if.then.69
  br label %if.end.95

if.end.95:                                        ; preds = %if.end.94, %if.then.63
  br label %if.end.96

if.end.96:                                        ; preds = %if.end.95, %land.lhs.true, %if.then.40
  br label %if.end.97

if.end.97:                                        ; preds = %if.end.96, %if.end.38
  br label %if.end.98

if.end.98:                                        ; preds = %if.end.97, %if.end.5
  %63 = load %struct.lame_global_flags*, %struct.lame_global_flags** %gfp.addr, align 8, !tbaa !1
  %out_samplerate99 = getelementptr inbounds %struct.lame_global_flags, %struct.lame_global_flags* %63, i32 0, i32 3
  %64 = load i32, i32* %out_samplerate99, align 4, !tbaa !13
  %cmp100 = icmp sle i32 %64, 24000
  %cond = select i1 %cmp100, i32 1, i32 2
  %65 = load %struct.lame_global_flags*, %struct.lame_global_flags** %gfp.addr, align 8, !tbaa !1
  %mode_gr = getelementptr inbounds %struct.lame_global_flags, %struct.lame_global_flags* %65, i32 0, i32 45
  store i32 %cond, i32* %mode_gr, align 4, !tbaa !18
  %66 = load %struct.lame_global_flags*, %struct.lame_global_flags** %gfp.addr, align 8, !tbaa !1
  %encoder_delay = getelementptr inbounds %struct.lame_global_flags, %struct.lame_global_flags* %66, i32 0, i32 41
  store i32 800, i32* %encoder_delay, align 4, !tbaa !19
  %67 = load %struct.lame_global_flags*, %struct.lame_global_flags** %gfp.addr, align 8, !tbaa !1
  %mode_gr102 = getelementptr inbounds %struct.lame_global_flags, %struct.lame_global_flags* %67, i32 0, i32 45
  %68 = load i32, i32* %mode_gr102, align 4, !tbaa !18
  %mul103 = mul nsw i32 %68, 576
  %69 = load %struct.lame_global_flags*, %struct.lame_global_flags** %gfp.addr, align 8, !tbaa !1
  %framesize = getelementptr inbounds %struct.lame_global_flags, %struct.lame_global_flags* %69, i32 0, i32 42
  store i32 %mul103, i32* %framesize, align 4, !tbaa !20
  %70 = load %struct.lame_global_flags*, %struct.lame_global_flags** %gfp.addr, align 8, !tbaa !1
  %brate104 = getelementptr inbounds %struct.lame_global_flags, %struct.lame_global_flags* %70, i32 0, i32 11
  %71 = load i32, i32* %brate104, align 4, !tbaa !15
  %cmp105 = icmp eq i32 %71, 0
  br i1 %cmp105, label %if.then.107, label %if.end.115

if.then.107:                                      ; preds = %if.end.98
  %72 = load %struct.lame_global_flags*, %struct.lame_global_flags** %gfp.addr, align 8, !tbaa !1
  %brate108 = getelementptr inbounds %struct.lame_global_flags, %struct.lame_global_flags* %72, i32 0, i32 11
  store i32 128, i32* %brate108, align 4, !tbaa !15
  %73 = load %struct.lame_global_flags*, %struct.lame_global_flags** %gfp.addr, align 8, !tbaa !1
  %mode_gr109 = getelementptr inbounds %struct.lame_global_flags, %struct.lame_global_flags* %73, i32 0, i32 45
  %74 = load i32, i32* %mode_gr109, align 4, !tbaa !18
  %cmp110 = icmp eq i32 %74, 1
  br i1 %cmp110, label %if.then.112, label %if.end.114

if.then.112:                                      ; preds = %if.then.107
  %75 = load %struct.lame_global_flags*, %struct.lame_global_flags** %gfp.addr, align 8, !tbaa !1
  %brate113 = getelementptr inbounds %struct.lame_global_flags, %struct.lame_global_flags* %75, i32 0, i32 11
  store i32 64, i32* %brate113, align 4, !tbaa !15
  br label %if.end.114

if.end.114:                                       ; preds = %if.then.112, %if.then.107
  br label %if.end.115

if.end.115:                                       ; preds = %if.end.114, %if.end.98
  %76 = load %struct.lame_global_flags*, %struct.lame_global_flags** %gfp.addr, align 8, !tbaa !1
  %resample_ratio = getelementptr inbounds %struct.lame_global_flags, %struct.lame_global_flags* %76, i32 0, i32 49
  store float 1.000000e+00, float* %resample_ratio, align 4, !tbaa !21
  %77 = load %struct.lame_global_flags*, %struct.lame_global_flags** %gfp.addr, align 8, !tbaa !1
  %out_samplerate116 = getelementptr inbounds %struct.lame_global_flags, %struct.lame_global_flags* %77, i32 0, i32 3
  %78 = load i32, i32* %out_samplerate116, align 4, !tbaa !13
  %79 = load %struct.lame_global_flags*, %struct.lame_global_flags** %gfp.addr, align 8, !tbaa !1
  %in_samplerate117 = getelementptr inbounds %struct.lame_global_flags, %struct.lame_global_flags* %79, i32 0, i32 2
  %80 = load i32, i32* %in_samplerate117, align 4, !tbaa !14
  %cmp118 = icmp ne i32 %78, %80
  br i1 %cmp118, label %if.then.120, label %if.end.127

if.then.120:                                      ; preds = %if.end.115
  %81 = load %struct.lame_global_flags*, %struct.lame_global_flags** %gfp.addr, align 8, !tbaa !1
  %in_samplerate121 = getelementptr inbounds %struct.lame_global_flags, %struct.lame_global_flags* %81, i32 0, i32 2
  %82 = load i32, i32* %in_samplerate121, align 4, !tbaa !14
  %conv122 = sitofp i32 %82 to float
  %83 = load %struct.lame_global_flags*, %struct.lame_global_flags** %gfp.addr, align 8, !tbaa !1
  %out_samplerate123 = getelementptr inbounds %struct.lame_global_flags, %struct.lame_global_flags* %83, i32 0, i32 3
  %84 = load i32, i32* %out_samplerate123, align 4, !tbaa !13
  %conv124 = sitofp i32 %84 to float
  %div125 = fdiv float %conv122, %conv124
  %85 = load %struct.lame_global_flags*, %struct.lame_global_flags** %gfp.addr, align 8, !tbaa !1
  %resample_ratio126 = getelementptr inbounds %struct.lame_global_flags, %struct.lame_global_flags* %85, i32 0, i32 49
  store float %div125, float* %resample_ratio126, align 4, !tbaa !21
  br label %if.end.127

if.end.127:                                       ; preds = %if.then.120, %if.end.115
  %86 = load %struct.lame_global_flags*, %struct.lame_global_flags** %gfp.addr, align 8, !tbaa !1
  %totalframes = getelementptr inbounds %struct.lame_global_flags, %struct.lame_global_flags* %86, i32 0, i32 40
  store i64 0, i64* %totalframes, align 8, !tbaa !22
  %87 = load %struct.lame_global_flags*, %struct.lame_global_flags** %gfp.addr, align 8, !tbaa !1
  %num_samples = getelementptr inbounds %struct.lame_global_flags, %struct.lame_global_flags* %87, i32 0, i32 0
  %88 = load i64, i64* %num_samples, align 8, !tbaa !23
  %conv128 = uitofp i64 %88 to float
  %89 = load %struct.lame_global_flags*, %struct.lame_global_flags** %gfp.addr, align 8, !tbaa !1
  %resample_ratio129 = getelementptr inbounds %struct.lame_global_flags, %struct.lame_global_flags* %89, i32 0, i32 49
  %90 = load float, float* %resample_ratio129, align 4, !tbaa !21
  %91 = load %struct.lame_global_flags*, %struct.lame_global_flags** %gfp.addr, align 8, !tbaa !1
  %framesize130 = getelementptr inbounds %struct.lame_global_flags, %struct.lame_global_flags* %91, i32 0, i32 42
  %92 = load i32, i32* %framesize130, align 4, !tbaa !20
  %conv131 = sitofp i32 %92 to float
  %mul132 = fmul float %90, %conv131
  %div133 = fdiv float %conv128, %mul132
  %add = fadd float 2.000000e+00, %div133
  %conv134 = fptosi float %add to i64
  %93 = load %struct.lame_global_flags*, %struct.lame_global_flags** %gfp.addr, align 8, !tbaa !1
  %totalframes135 = getelementptr inbounds %struct.lame_global_flags, %struct.lame_global_flags* %93, i32 0, i32 40
  store i64 %conv134, i64* %totalframes135, align 8, !tbaa !22
  %94 = load %struct.lame_global_flags*, %struct.lame_global_flags** %gfp.addr, align 8, !tbaa !1
  %brate136 = getelementptr inbounds %struct.lame_global_flags, %struct.lame_global_flags* %94, i32 0, i32 11
  %95 = load i32, i32* %brate136, align 4, !tbaa !15
  %cmp137 = icmp sge i32 %95, 320
  br i1 %cmp137, label %if.then.139, label %if.end.141

if.then.139:                                      ; preds = %if.end.127
  %96 = load %struct.lame_global_flags*, %struct.lame_global_flags** %gfp.addr, align 8, !tbaa !1
  %VBR140 = getelementptr inbounds %struct.lame_global_flags, %struct.lame_global_flags* %96, i32 0, i32 21
  store i32 0, i32* %VBR140, align 4, !tbaa !17
  br label %if.end.141

if.end.141:                                       ; preds = %if.then.139, %if.end.127
  %97 = load %struct.lame_global_flags*, %struct.lame_global_flags** %gfp.addr, align 8, !tbaa !1
  %out_samplerate142 = getelementptr inbounds %struct.lame_global_flags, %struct.lame_global_flags* %97, i32 0, i32 3
  %98 = load i32, i32* %out_samplerate142, align 4, !tbaa !13
  %mul143 = mul nsw i32 %98, 16
  %99 = load %struct.lame_global_flags*, %struct.lame_global_flags** %gfp.addr, align 8, !tbaa !1
  %stereo144 = getelementptr inbounds %struct.lame_global_flags, %struct.lame_global_flags* %99, i32 0, i32 46
  %100 = load i32, i32* %stereo144, align 4, !tbaa !12
  %mul145 = mul nsw i32 %mul143, %100
  %conv146 = sitofp i32 %mul145 to double
  %101 = load %struct.lame_global_flags*, %struct.lame_global_flags** %gfp.addr, align 8, !tbaa !1
  %brate147 = getelementptr inbounds %struct.lame_global_flags, %struct.lame_global_flags* %101, i32 0, i32 11
  %102 = load i32, i32* %brate147, align 4, !tbaa !15
  %conv148 = sitofp i32 %102 to double
  %mul149 = fmul double 1.000000e+03, %conv148
  %div150 = fdiv double %conv146, %mul149
  %conv151 = fptrunc double %div150 to float
  store float %conv151, float* %compression_ratio, align 4, !tbaa !16
  %103 = load %struct.lame_global_flags*, %struct.lame_global_flags** %gfp.addr, align 8, !tbaa !1
  %VBR152 = getelementptr inbounds %struct.lame_global_flags, %struct.lame_global_flags* %103, i32 0, i32 21
  %104 = load i32, i32* %VBR152, align 4, !tbaa !17
  %tobool153 = icmp ne i32 %104, 0
  br i1 %tobool153, label %land.lhs.true.154, label %if.end.161

land.lhs.true.154:                                ; preds = %if.end.141
  %105 = load float, float* %compression_ratio, align 4, !tbaa !16
  %cmp155 = fcmp ogt float %105, 1.100000e+01
  br i1 %cmp155, label %if.then.157, label %if.end.161

if.then.157:                                      ; preds = %land.lhs.true.154
  %106 = load %struct.lame_global_flags*, %struct.lame_global_flags** %gfp.addr, align 8, !tbaa !1
  %VBR_q = getelementptr inbounds %struct.lame_global_flags, %struct.lame_global_flags* %106, i32 0, i32 22
  %107 = load i32, i32* %VBR_q, align 4, !tbaa !24
  %conv158 = sitofp i32 %107 to double
  %add159 = fadd double 4.400000e+00, %conv158
  %conv160 = fptrunc double %add159 to float
  store float %conv160, float* %compression_ratio, align 4, !tbaa !16
  br label %if.end.161

if.end.161:                                       ; preds = %if.then.157, %land.lhs.true.154, %if.end.141
  %108 = load %struct.lame_global_flags*, %struct.lame_global_flags** %gfp.addr, align 8, !tbaa !1
  %mode_fixed = getelementptr inbounds %struct.lame_global_flags, %struct.lame_global_flags* %108, i32 0, i32 9
  %109 = load i32, i32* %mode_fixed, align 4, !tbaa !25
  %tobool162 = icmp ne i32 %109, 0
  br i1 %tobool162, label %if.end.173, label %land.lhs.true.163

land.lhs.true.163:                                ; preds = %if.end.161
  %110 = load %struct.lame_global_flags*, %struct.lame_global_flags** %gfp.addr, align 8, !tbaa !1
  %mode164 = getelementptr inbounds %struct.lame_global_flags, %struct.lame_global_flags* %110, i32 0, i32 8
  %111 = load i32, i32* %mode164, align 4, !tbaa !11
  %cmp165 = icmp ne i32 %111, 3
  br i1 %cmp165, label %if.then.167, label %if.end.173

if.then.167:                                      ; preds = %land.lhs.true.163
  %112 = load float, float* %compression_ratio, align 4, !tbaa !16
  %cmp168 = fcmp olt float %112, 9.000000e+00
  br i1 %cmp168, label %if.then.170, label %if.end.172

if.then.170:                                      ; preds = %if.then.167
  %113 = load %struct.lame_global_flags*, %struct.lame_global_flags** %gfp.addr, align 8, !tbaa !1
  %mode171 = getelementptr inbounds %struct.lame_global_flags, %struct.lame_global_flags* %113, i32 0, i32 8
  store i32 0, i32* %mode171, align 4, !tbaa !11
  br label %if.end.172

if.end.172:                                       ; preds = %if.then.170, %if.then.167
  br label %if.end.173

if.end.173:                                       ; preds = %if.end.172, %land.lhs.true.163, %if.end.161
  %114 = load %struct.lame_global_flags*, %struct.lame_global_flags** %gfp.addr, align 8, !tbaa !1
  %lowpassfreq = getelementptr inbounds %struct.lame_global_flags, %struct.lame_global_flags* %114, i32 0, i32 25
  %115 = load i32, i32* %lowpassfreq, align 4, !tbaa !26
  %cmp174 = icmp eq i32 %115, 0
  br i1 %cmp174, label %if.then.176, label %if.end.193

if.then.176:                                      ; preds = %if.end.173
  %116 = bitcast i32* %band to i8*
  call void @llvm.lifetime.start(i64 4, i8* %116) #1
  %117 = load float, float* %compression_ratio, align 4, !tbaa !16
  %conv177 = fpext float %117 to double
  %div178 = fdiv double %conv177, 1.600000e+01
  %call = call double @log(double %div178) #1
  %mul179 = fmul double 1.800000e+01, %call
  %sub = fsub double 1.450000e+01, %mul179
  %call180 = call double @floor(double %sub) #7
  %add181 = fadd double 1.000000e+00, %call180
  %conv182 = fptosi double %add181 to i32
  store i32 %conv182, i32* %band, align 4, !tbaa !27
  %118 = load i32, i32* %band, align 4, !tbaa !27
  %cmp183 = icmp slt i32 %118, 31
  br i1 %cmp183, label %if.then.185, label %if.end.192

if.then.185:                                      ; preds = %if.then.176
  %119 = load i32, i32* %band, align 4, !tbaa !27
  %conv186 = sitofp i32 %119 to double
  %div187 = fdiv double %conv186, 3.100000e+01
  %conv188 = fptrunc double %div187 to float
  %120 = load %struct.lame_global_flags*, %struct.lame_global_flags** %gfp.addr, align 8, !tbaa !1
  %lowpass1 = getelementptr inbounds %struct.lame_global_flags, %struct.lame_global_flags* %120, i32 0, i32 53
  store float %conv188, float* %lowpass1, align 4, !tbaa !28
  %121 = load i32, i32* %band, align 4, !tbaa !27
  %conv189 = sitofp i32 %121 to double
  %div190 = fdiv double %conv189, 3.100000e+01
  %conv191 = fptrunc double %div190 to float
  %122 = load %struct.lame_global_flags*, %struct.lame_global_flags** %gfp.addr, align 8, !tbaa !1
  %lowpass2 = getelementptr inbounds %struct.lame_global_flags, %struct.lame_global_flags* %122, i32 0, i32 54
  store float %conv191, float* %lowpass2, align 4, !tbaa !29
  br label %if.end.192

if.end.192:                                       ; preds = %if.then.185, %if.then.176
  %123 = bitcast i32* %band to i8*
  call void @llvm.lifetime.end(i64 4, i8* %123) #1
  br label %if.end.193

if.end.193:                                       ; preds = %if.end.192, %if.end.173
  %124 = load %struct.lame_global_flags*, %struct.lame_global_flags** %gfp.addr, align 8, !tbaa !1
  %highpassfreq = getelementptr inbounds %struct.lame_global_flags, %struct.lame_global_flags* %124, i32 0, i32 26
  %125 = load i32, i32* %highpassfreq, align 4, !tbaa !30
  %cmp194 = icmp sgt i32 %125, 0
  br i1 %cmp194, label %if.then.196, label %if.end.241

if.then.196:                                      ; preds = %if.end.193
  %126 = load %struct.lame_global_flags*, %struct.lame_global_flags** %gfp.addr, align 8, !tbaa !1
  %highpassfreq197 = getelementptr inbounds %struct.lame_global_flags, %struct.lame_global_flags* %126, i32 0, i32 26
  %127 = load i32, i32* %highpassfreq197, align 4, !tbaa !30
  %conv198 = sitofp i32 %127 to double
  %mul199 = fmul double 2.000000e+00, %conv198
  %128 = load %struct.lame_global_flags*, %struct.lame_global_flags** %gfp.addr, align 8, !tbaa !1
  %out_samplerate200 = getelementptr inbounds %struct.lame_global_flags, %struct.lame_global_flags* %128, i32 0, i32 3
  %129 = load i32, i32* %out_samplerate200, align 4, !tbaa !13
  %conv201 = sitofp i32 %129 to double
  %div202 = fdiv double %mul199, %conv201
  %conv203 = fptrunc double %div202 to float
  %130 = load %struct.lame_global_flags*, %struct.lame_global_flags** %gfp.addr, align 8, !tbaa !1
  %highpass1 = getelementptr inbounds %struct.lame_global_flags, %struct.lame_global_flags* %130, i32 0, i32 55
  store float %conv203, float* %highpass1, align 4, !tbaa !31
  %131 = load %struct.lame_global_flags*, %struct.lame_global_flags** %gfp.addr, align 8, !tbaa !1
  %highpasswidth = getelementptr inbounds %struct.lame_global_flags, %struct.lame_global_flags* %131, i32 0, i32 28
  %132 = load i32, i32* %highpasswidth, align 4, !tbaa !32
  %cmp204 = icmp sge i32 %132, 0
  br i1 %cmp204, label %if.then.206, label %if.else.216

if.then.206:                                      ; preds = %if.then.196
  %133 = load %struct.lame_global_flags*, %struct.lame_global_flags** %gfp.addr, align 8, !tbaa !1
  %highpassfreq207 = getelementptr inbounds %struct.lame_global_flags, %struct.lame_global_flags* %133, i32 0, i32 26
  %134 = load i32, i32* %highpassfreq207, align 4, !tbaa !30
  %135 = load %struct.lame_global_flags*, %struct.lame_global_flags** %gfp.addr, align 8, !tbaa !1
  %highpasswidth208 = getelementptr inbounds %struct.lame_global_flags, %struct.lame_global_flags* %135, i32 0, i32 28
  %136 = load i32, i32* %highpasswidth208, align 4, !tbaa !32
  %add209 = add nsw i32 %134, %136
  %conv210 = sitofp i32 %add209 to double
  %mul211 = fmul double 2.000000e+00, %conv210
  %137 = load %struct.lame_global_flags*, %struct.lame_global_flags** %gfp.addr, align 8, !tbaa !1
  %out_samplerate212 = getelementptr inbounds %struct.lame_global_flags, %struct.lame_global_flags* %137, i32 0, i32 3
  %138 = load i32, i32* %out_samplerate212, align 4, !tbaa !13
  %conv213 = sitofp i32 %138 to double
  %div214 = fdiv double %mul211, %conv213
  %conv215 = fptrunc double %div214 to float
  %139 = load %struct.lame_global_flags*, %struct.lame_global_flags** %gfp.addr, align 8, !tbaa !1
  %highpass2 = getelementptr inbounds %struct.lame_global_flags, %struct.lame_global_flags* %139, i32 0, i32 56
  store float %conv215, float* %highpass2, align 4, !tbaa !33
  br label %if.end.225

if.else.216:                                      ; preds = %if.then.196
  %140 = load %struct.lame_global_flags*, %struct.lame_global_flags** %gfp.addr, align 8, !tbaa !1
  %highpassfreq217 = getelementptr inbounds %struct.lame_global_flags, %struct.lame_global_flags* %140, i32 0, i32 26
  %141 = load i32, i32* %highpassfreq217, align 4, !tbaa !30
  %conv218 = sitofp i32 %141 to double
  %mul219 = fmul double 2.000000e+00, %conv218
  %142 = load %struct.lame_global_flags*, %struct.lame_global_flags** %gfp.addr, align 8, !tbaa !1
  %out_samplerate220 = getelementptr inbounds %struct.lame_global_flags, %struct.lame_global_flags* %142, i32 0, i32 3
  %143 = load i32, i32* %out_samplerate220, align 4, !tbaa !13
  %conv221 = sitofp i32 %143 to double
  %div222 = fdiv double %mul219, %conv221
  %conv223 = fptrunc double %div222 to float
  %144 = load %struct.lame_global_flags*, %struct.lame_global_flags** %gfp.addr, align 8, !tbaa !1
  %highpass2224 = getelementptr inbounds %struct.lame_global_flags, %struct.lame_global_flags* %144, i32 0, i32 56
  store float %conv223, float* %highpass2224, align 4, !tbaa !33
  br label %if.end.225

if.end.225:                                       ; preds = %if.else.216, %if.then.206
  %145 = load %struct.lame_global_flags*, %struct.lame_global_flags** %gfp.addr, align 8, !tbaa !1
  %highpass1226 = getelementptr inbounds %struct.lame_global_flags, %struct.lame_global_flags* %145, i32 0, i32 55
  %146 = load float, float* %highpass1226, align 4, !tbaa !31
  %cmp227 = fcmp olt float 1.000000e+00, %146
  br i1 %cmp227, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.end.225
  br label %cond.end

cond.false:                                       ; preds = %if.end.225
  %147 = load %struct.lame_global_flags*, %struct.lame_global_flags** %gfp.addr, align 8, !tbaa !1
  %highpass1229 = getelementptr inbounds %struct.lame_global_flags, %struct.lame_global_flags* %147, i32 0, i32 55
  %148 = load float, float* %highpass1229, align 4, !tbaa !31
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond230 = phi float [ 1.000000e+00, %cond.true ], [ %148, %cond.false ]
  %149 = load %struct.lame_global_flags*, %struct.lame_global_flags** %gfp.addr, align 8, !tbaa !1
  %highpass1231 = getelementptr inbounds %struct.lame_global_flags, %struct.lame_global_flags* %149, i32 0, i32 55
  store float %cond230, float* %highpass1231, align 4, !tbaa !31
  %150 = load %struct.lame_global_flags*, %struct.lame_global_flags** %gfp.addr, align 8, !tbaa !1
  %highpass2232 = getelementptr inbounds %struct.lame_global_flags, %struct.lame_global_flags* %150, i32 0, i32 56
  %151 = load float, float* %highpass2232, align 4, !tbaa !33
  %cmp233 = fcmp olt float 1.000000e+00, %151
  br i1 %cmp233, label %cond.true.235, label %cond.false.236

cond.true.235:                                    ; preds = %cond.end
  br label %cond.end.238

cond.false.236:                                   ; preds = %cond.end
  %152 = load %struct.lame_global_flags*, %struct.lame_global_flags** %gfp.addr, align 8, !tbaa !1
  %highpass2237 = getelementptr inbounds %struct.lame_global_flags, %struct.lame_global_flags* %152, i32 0, i32 56
  %153 = load float, float* %highpass2237, align 4, !tbaa !33
  br label %cond.end.238

cond.end.238:                                     ; preds = %cond.false.236, %cond.true.235
  %cond239 = phi float [ 1.000000e+00, %cond.true.235 ], [ %153, %cond.false.236 ]
  %154 = load %struct.lame_global_flags*, %struct.lame_global_flags** %gfp.addr, align 8, !tbaa !1
  %highpass2240 = getelementptr inbounds %struct.lame_global_flags, %struct.lame_global_flags* %154, i32 0, i32 56
  store float %cond239, float* %highpass2240, align 4, !tbaa !33
  br label %if.end.241

if.end.241:                                       ; preds = %cond.end.238, %if.end.193
  %155 = load %struct.lame_global_flags*, %struct.lame_global_flags** %gfp.addr, align 8, !tbaa !1
  %lowpassfreq242 = getelementptr inbounds %struct.lame_global_flags, %struct.lame_global_flags* %155, i32 0, i32 25
  %156 = load i32, i32* %lowpassfreq242, align 4, !tbaa !26
  %cmp243 = icmp sgt i32 %156, 0
  br i1 %cmp243, label %if.then.245, label %if.end.301

if.then.245:                                      ; preds = %if.end.241
  %157 = load %struct.lame_global_flags*, %struct.lame_global_flags** %gfp.addr, align 8, !tbaa !1
  %lowpassfreq246 = getelementptr inbounds %struct.lame_global_flags, %struct.lame_global_flags* %157, i32 0, i32 25
  %158 = load i32, i32* %lowpassfreq246, align 4, !tbaa !26
  %conv247 = sitofp i32 %158 to double
  %mul248 = fmul double 2.000000e+00, %conv247
  %159 = load %struct.lame_global_flags*, %struct.lame_global_flags** %gfp.addr, align 8, !tbaa !1
  %out_samplerate249 = getelementptr inbounds %struct.lame_global_flags, %struct.lame_global_flags* %159, i32 0, i32 3
  %160 = load i32, i32* %out_samplerate249, align 4, !tbaa !13
  %conv250 = sitofp i32 %160 to double
  %div251 = fdiv double %mul248, %conv250
  %conv252 = fptrunc double %div251 to float
  %161 = load %struct.lame_global_flags*, %struct.lame_global_flags** %gfp.addr, align 8, !tbaa !1
  %lowpass2253 = getelementptr inbounds %struct.lame_global_flags, %struct.lame_global_flags* %161, i32 0, i32 54
  store float %conv252, float* %lowpass2253, align 4, !tbaa !29
  %162 = load %struct.lame_global_flags*, %struct.lame_global_flags** %gfp.addr, align 8, !tbaa !1
  %lowpasswidth = getelementptr inbounds %struct.lame_global_flags, %struct.lame_global_flags* %162, i32 0, i32 27
  %163 = load i32, i32* %lowpasswidth, align 4, !tbaa !34
  %cmp254 = icmp sge i32 %163, 0
  br i1 %cmp254, label %if.then.256, label %if.else.273

if.then.256:                                      ; preds = %if.then.245
  %164 = load %struct.lame_global_flags*, %struct.lame_global_flags** %gfp.addr, align 8, !tbaa !1
  %lowpassfreq257 = getelementptr inbounds %struct.lame_global_flags, %struct.lame_global_flags* %164, i32 0, i32 25
  %165 = load i32, i32* %lowpassfreq257, align 4, !tbaa !26
  %166 = load %struct.lame_global_flags*, %struct.lame_global_flags** %gfp.addr, align 8, !tbaa !1
  %lowpasswidth258 = getelementptr inbounds %struct.lame_global_flags, %struct.lame_global_flags* %166, i32 0, i32 27
  %167 = load i32, i32* %lowpasswidth258, align 4, !tbaa !34
  %sub259 = sub nsw i32 %165, %167
  %conv260 = sitofp i32 %sub259 to double
  %mul261 = fmul double 2.000000e+00, %conv260
  %168 = load %struct.lame_global_flags*, %struct.lame_global_flags** %gfp.addr, align 8, !tbaa !1
  %out_samplerate262 = getelementptr inbounds %struct.lame_global_flags, %struct.lame_global_flags* %168, i32 0, i32 3
  %169 = load i32, i32* %out_samplerate262, align 4, !tbaa !13
  %conv263 = sitofp i32 %169 to double
  %div264 = fdiv double %mul261, %conv263
  %conv265 = fptrunc double %div264 to float
  %170 = load %struct.lame_global_flags*, %struct.lame_global_flags** %gfp.addr, align 8, !tbaa !1
  %lowpass1266 = getelementptr inbounds %struct.lame_global_flags, %struct.lame_global_flags* %170, i32 0, i32 53
  store float %conv265, float* %lowpass1266, align 4, !tbaa !28
  %171 = load %struct.lame_global_flags*, %struct.lame_global_flags** %gfp.addr, align 8, !tbaa !1
  %lowpass1267 = getelementptr inbounds %struct.lame_global_flags, %struct.lame_global_flags* %171, i32 0, i32 53
  %172 = load float, float* %lowpass1267, align 4, !tbaa !28
  %cmp268 = fcmp olt float %172, 0.000000e+00
  br i1 %cmp268, label %if.then.270, label %if.end.272

if.then.270:                                      ; preds = %if.then.256
  %173 = load %struct.lame_global_flags*, %struct.lame_global_flags** %gfp.addr, align 8, !tbaa !1
  %lowpass1271 = getelementptr inbounds %struct.lame_global_flags, %struct.lame_global_flags* %173, i32 0, i32 53
  store float 0.000000e+00, float* %lowpass1271, align 4, !tbaa !28
  br label %if.end.272

if.end.272:                                       ; preds = %if.then.270, %if.then.256
  br label %if.end.282

if.else.273:                                      ; preds = %if.then.245
  %174 = load %struct.lame_global_flags*, %struct.lame_global_flags** %gfp.addr, align 8, !tbaa !1
  %lowpassfreq274 = getelementptr inbounds %struct.lame_global_flags, %struct.lame_global_flags* %174, i32 0, i32 25
  %175 = load i32, i32* %lowpassfreq274, align 4, !tbaa !26
  %conv275 = sitofp i32 %175 to double
  %mul276 = fmul double 2.000000e+00, %conv275
  %176 = load %struct.lame_global_flags*, %struct.lame_global_flags** %gfp.addr, align 8, !tbaa !1
  %out_samplerate277 = getelementptr inbounds %struct.lame_global_flags, %struct.lame_global_flags* %176, i32 0, i32 3
  %177 = load i32, i32* %out_samplerate277, align 4, !tbaa !13
  %conv278 = sitofp i32 %177 to double
  %div279 = fdiv double %mul276, %conv278
  %conv280 = fptrunc double %div279 to float
  %178 = load %struct.lame_global_flags*, %struct.lame_global_flags** %gfp.addr, align 8, !tbaa !1
  %lowpass1281 = getelementptr inbounds %struct.lame_global_flags, %struct.lame_global_flags* %178, i32 0, i32 53
  store float %conv280, float* %lowpass1281, align 4, !tbaa !28
  br label %if.end.282

if.end.282:                                       ; preds = %if.else.273, %if.end.272
  %179 = load %struct.lame_global_flags*, %struct.lame_global_flags** %gfp.addr, align 8, !tbaa !1
  %lowpass1283 = getelementptr inbounds %struct.lame_global_flags, %struct.lame_global_flags* %179, i32 0, i32 53
  %180 = load float, float* %lowpass1283, align 4, !tbaa !28
  %cmp284 = fcmp olt float 1.000000e+00, %180
  br i1 %cmp284, label %cond.true.286, label %cond.false.287

cond.true.286:                                    ; preds = %if.end.282
  br label %cond.end.289

cond.false.287:                                   ; preds = %if.end.282
  %181 = load %struct.lame_global_flags*, %struct.lame_global_flags** %gfp.addr, align 8, !tbaa !1
  %lowpass1288 = getelementptr inbounds %struct.lame_global_flags, %struct.lame_global_flags* %181, i32 0, i32 53
  %182 = load float, float* %lowpass1288, align 4, !tbaa !28
  br label %cond.end.289

cond.end.289:                                     ; preds = %cond.false.287, %cond.true.286
  %cond290 = phi float [ 1.000000e+00, %cond.true.286 ], [ %182, %cond.false.287 ]
  %183 = load %struct.lame_global_flags*, %struct.lame_global_flags** %gfp.addr, align 8, !tbaa !1
  %lowpass1291 = getelementptr inbounds %struct.lame_global_flags, %struct.lame_global_flags* %183, i32 0, i32 53
  store float %cond290, float* %lowpass1291, align 4, !tbaa !28
  %184 = load %struct.lame_global_flags*, %struct.lame_global_flags** %gfp.addr, align 8, !tbaa !1
  %lowpass2292 = getelementptr inbounds %struct.lame_global_flags, %struct.lame_global_flags* %184, i32 0, i32 54
  %185 = load float, float* %lowpass2292, align 4, !tbaa !29
  %cmp293 = fcmp olt float 1.000000e+00, %185
  br i1 %cmp293, label %cond.true.295, label %cond.false.296

cond.true.295:                                    ; preds = %cond.end.289
  br label %cond.end.298

cond.false.296:                                   ; preds = %cond.end.289
  %186 = load %struct.lame_global_flags*, %struct.lame_global_flags** %gfp.addr, align 8, !tbaa !1
  %lowpass2297 = getelementptr inbounds %struct.lame_global_flags, %struct.lame_global_flags* %186, i32 0, i32 54
  %187 = load float, float* %lowpass2297, align 4, !tbaa !29
  br label %cond.end.298

cond.end.298:                                     ; preds = %cond.false.296, %cond.true.295
  %cond299 = phi float [ 1.000000e+00, %cond.true.295 ], [ %187, %cond.false.296 ]
  %188 = load %struct.lame_global_flags*, %struct.lame_global_flags** %gfp.addr, align 8, !tbaa !1
  %lowpass2300 = getelementptr inbounds %struct.lame_global_flags, %struct.lame_global_flags* %188, i32 0, i32 54
  store float %cond299, float* %lowpass2300, align 4, !tbaa !29
  br label %if.end.301

if.end.301:                                       ; preds = %cond.end.298, %if.end.241
  %189 = load %struct.lame_global_flags*, %struct.lame_global_flags** %gfp.addr, align 8, !tbaa !1
  %filter_type = getelementptr inbounds %struct.lame_global_flags, %struct.lame_global_flags* %189, i32 0, i32 59
  %190 = load i32, i32* %filter_type, align 4, !tbaa !35
  %cmp302 = icmp eq i32 %190, 0
  br i1 %cmp302, label %if.then.304, label %if.end.479

if.then.304:                                      ; preds = %if.end.301
  %191 = bitcast i32* %band305 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %191) #1
  %192 = bitcast i32* %maxband to i8*
  call void @llvm.lifetime.start(i64 4, i8* %192) #1
  %193 = bitcast i32* %minband to i8*
  call void @llvm.lifetime.start(i64 4, i8* %193) #1
  %194 = bitcast double* %amp to i8*
  call void @llvm.lifetime.start(i64 8, i8* %194) #1
  %195 = bitcast double* %freq to i8*
  call void @llvm.lifetime.start(i64 8, i8* %195) #1
  %196 = load %struct.lame_global_flags*, %struct.lame_global_flags** %gfp.addr, align 8, !tbaa !1
  %lowpass1306 = getelementptr inbounds %struct.lame_global_flags, %struct.lame_global_flags* %196, i32 0, i32 53
  %197 = load float, float* %lowpass1306, align 4, !tbaa !28
  %cmp307 = fcmp ogt float %197, 0.000000e+00
  br i1 %cmp307, label %if.then.309, label %if.end.382

if.then.309:                                      ; preds = %if.then.304
  store i32 999, i32* %minband, align 4, !tbaa !27
  store i32 -1, i32* %maxband, align 4, !tbaa !27
  store i32 0, i32* %band305, align 4, !tbaa !27
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.then.309
  %198 = load i32, i32* %band305, align 4, !tbaa !27
  %cmp310 = icmp sle i32 %198, 31
  br i1 %cmp310, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %199 = load i32, i32* %band305, align 4, !tbaa !27
  %conv312 = sitofp i32 %199 to double
  %div313 = fdiv double %conv312, 3.100000e+01
  store double %div313, double* %freq, align 8, !tbaa !36
  store double 1.000000e+00, double* %amp, align 8, !tbaa !36
  %200 = load double, double* %freq, align 8, !tbaa !36
  %201 = load %struct.lame_global_flags*, %struct.lame_global_flags** %gfp.addr, align 8, !tbaa !1
  %lowpass2314 = getelementptr inbounds %struct.lame_global_flags, %struct.lame_global_flags* %201, i32 0, i32 54
  %202 = load float, float* %lowpass2314, align 4, !tbaa !29
  %conv315 = fpext float %202 to double
  %cmp316 = fcmp oge double %200, %conv315
  br i1 %cmp316, label %if.then.318, label %if.end.327

if.then.318:                                      ; preds = %for.body
  %203 = load %struct.lame_global_flags*, %struct.lame_global_flags** %gfp.addr, align 8, !tbaa !1
  %lowpass_band = getelementptr inbounds %struct.lame_global_flags, %struct.lame_global_flags* %203, i32 0, i32 57
  %204 = load i32, i32* %lowpass_band, align 4, !tbaa !38
  %205 = load i32, i32* %band305, align 4, !tbaa !27
  %cmp319 = icmp slt i32 %204, %205
  br i1 %cmp319, label %cond.true.321, label %cond.false.323

cond.true.321:                                    ; preds = %if.then.318
  %206 = load %struct.lame_global_flags*, %struct.lame_global_flags** %gfp.addr, align 8, !tbaa !1
  %lowpass_band322 = getelementptr inbounds %struct.lame_global_flags, %struct.lame_global_flags* %206, i32 0, i32 57
  %207 = load i32, i32* %lowpass_band322, align 4, !tbaa !38
  br label %cond.end.324

cond.false.323:                                   ; preds = %if.then.318
  %208 = load i32, i32* %band305, align 4, !tbaa !27
  br label %cond.end.324

cond.end.324:                                     ; preds = %cond.false.323, %cond.true.321
  %cond325 = phi i32 [ %207, %cond.true.321 ], [ %208, %cond.false.323 ]
  %209 = load %struct.lame_global_flags*, %struct.lame_global_flags** %gfp.addr, align 8, !tbaa !1
  %lowpass_band326 = getelementptr inbounds %struct.lame_global_flags, %struct.lame_global_flags* %209, i32 0, i32 57
  store i32 %cond325, i32* %lowpass_band326, align 4, !tbaa !38
  store double 0.000000e+00, double* %amp, align 8, !tbaa !36
  br label %if.end.327

if.end.327:                                       ; preds = %cond.end.324, %for.body
  %210 = load %struct.lame_global_flags*, %struct.lame_global_flags** %gfp.addr, align 8, !tbaa !1
  %lowpass1328 = getelementptr inbounds %struct.lame_global_flags, %struct.lame_global_flags* %210, i32 0, i32 53
  %211 = load float, float* %lowpass1328, align 4, !tbaa !28
  %conv329 = fpext float %211 to double
  %212 = load double, double* %freq, align 8, !tbaa !36
  %cmp330 = fcmp olt double %conv329, %212
  br i1 %cmp330, label %land.lhs.true.332, label %if.end.360

land.lhs.true.332:                                ; preds = %if.end.327
  %213 = load double, double* %freq, align 8, !tbaa !36
  %214 = load %struct.lame_global_flags*, %struct.lame_global_flags** %gfp.addr, align 8, !tbaa !1
  %lowpass2333 = getelementptr inbounds %struct.lame_global_flags, %struct.lame_global_flags* %214, i32 0, i32 54
  %215 = load float, float* %lowpass2333, align 4, !tbaa !29
  %conv334 = fpext float %215 to double
  %cmp335 = fcmp olt double %213, %conv334
  br i1 %cmp335, label %if.then.337, label %if.end.360

if.then.337:                                      ; preds = %land.lhs.true.332
  %216 = load i32, i32* %minband, align 4, !tbaa !27
  %217 = load i32, i32* %band305, align 4, !tbaa !27
  %cmp338 = icmp slt i32 %216, %217
  br i1 %cmp338, label %cond.true.340, label %cond.false.341

cond.true.340:                                    ; preds = %if.then.337
  %218 = load i32, i32* %minband, align 4, !tbaa !27
  br label %cond.end.342

cond.false.341:                                   ; preds = %if.then.337
  %219 = load i32, i32* %band305, align 4, !tbaa !27
  br label %cond.end.342

cond.end.342:                                     ; preds = %cond.false.341, %cond.true.340
  %cond343 = phi i32 [ %218, %cond.true.340 ], [ %219, %cond.false.341 ]
  store i32 %cond343, i32* %minband, align 4, !tbaa !27
  %220 = load i32, i32* %maxband, align 4, !tbaa !27
  %221 = load i32, i32* %band305, align 4, !tbaa !27
  %cmp344 = icmp sgt i32 %220, %221
  br i1 %cmp344, label %cond.true.346, label %cond.false.347

cond.true.346:                                    ; preds = %cond.end.342
  %222 = load i32, i32* %maxband, align 4, !tbaa !27
  br label %cond.end.348

cond.false.347:                                   ; preds = %cond.end.342
  %223 = load i32, i32* %band305, align 4, !tbaa !27
  br label %cond.end.348

cond.end.348:                                     ; preds = %cond.false.347, %cond.true.346
  %cond349 = phi i32 [ %222, %cond.true.346 ], [ %223, %cond.false.347 ]
  store i32 %cond349, i32* %maxband, align 4, !tbaa !27
  %224 = load %struct.lame_global_flags*, %struct.lame_global_flags** %gfp.addr, align 8, !tbaa !1
  %lowpass1350 = getelementptr inbounds %struct.lame_global_flags, %struct.lame_global_flags* %224, i32 0, i32 53
  %225 = load float, float* %lowpass1350, align 4, !tbaa !28
  %conv351 = fpext float %225 to double
  %226 = load double, double* %freq, align 8, !tbaa !36
  %sub352 = fsub double %conv351, %226
  %mul353 = fmul double 0x3FF921FB54442D18, %sub352
  %227 = load %struct.lame_global_flags*, %struct.lame_global_flags** %gfp.addr, align 8, !tbaa !1
  %lowpass2354 = getelementptr inbounds %struct.lame_global_flags, %struct.lame_global_flags* %227, i32 0, i32 54
  %228 = load float, float* %lowpass2354, align 4, !tbaa !29
  %229 = load %struct.lame_global_flags*, %struct.lame_global_flags** %gfp.addr, align 8, !tbaa !1
  %lowpass1355 = getelementptr inbounds %struct.lame_global_flags, %struct.lame_global_flags* %229, i32 0, i32 53
  %230 = load float, float* %lowpass1355, align 4, !tbaa !28
  %sub356 = fsub float %228, %230
  %conv357 = fpext float %sub356 to double
  %div358 = fdiv double %mul353, %conv357
  %call359 = call double @cos(double %div358) #1
  store double %call359, double* %amp, align 8, !tbaa !36
  br label %if.end.360

if.end.360:                                       ; preds = %cond.end.348, %land.lhs.true.332, %if.end.327
  br label %for.inc

for.inc:                                          ; preds = %if.end.360
  %231 = load i32, i32* %band305, align 4, !tbaa !27
  %inc = add nsw i32 %231, 1
  store i32 %inc, i32* %band305, align 4, !tbaa !27
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %232 = load i32, i32* %minband, align 4, !tbaa !27
  %cmp361 = icmp eq i32 %232, 999
  br i1 %cmp361, label %if.then.363, label %if.else.370

if.then.363:                                      ; preds = %for.end
  %233 = load %struct.lame_global_flags*, %struct.lame_global_flags** %gfp.addr, align 8, !tbaa !1
  %lowpass_band364 = getelementptr inbounds %struct.lame_global_flags, %struct.lame_global_flags* %233, i32 0, i32 57
  %234 = load i32, i32* %lowpass_band364, align 4, !tbaa !38
  %conv365 = sitofp i32 %234 to double
  %sub366 = fsub double %conv365, 7.500000e-01
  %div367 = fdiv double %sub366, 3.100000e+01
  %conv368 = fptrunc double %div367 to float
  %235 = load %struct.lame_global_flags*, %struct.lame_global_flags** %gfp.addr, align 8, !tbaa !1
  %lowpass1369 = getelementptr inbounds %struct.lame_global_flags, %struct.lame_global_flags* %235, i32 0, i32 53
  store float %conv368, float* %lowpass1369, align 4, !tbaa !28
  br label %if.end.376

if.else.370:                                      ; preds = %for.end
  %236 = load i32, i32* %minband, align 4, !tbaa !27
  %conv371 = sitofp i32 %236 to double
  %sub372 = fsub double %conv371, 7.500000e-01
  %div373 = fdiv double %sub372, 3.100000e+01
  %conv374 = fptrunc double %div373 to float
  %237 = load %struct.lame_global_flags*, %struct.lame_global_flags** %gfp.addr, align 8, !tbaa !1
  %lowpass1375 = getelementptr inbounds %struct.lame_global_flags, %struct.lame_global_flags* %237, i32 0, i32 53
  store float %conv374, float* %lowpass1375, align 4, !tbaa !28
  br label %if.end.376

if.end.376:                                       ; preds = %if.else.370, %if.then.363
  %238 = load %struct.lame_global_flags*, %struct.lame_global_flags** %gfp.addr, align 8, !tbaa !1
  %lowpass_band377 = getelementptr inbounds %struct.lame_global_flags, %struct.lame_global_flags* %238, i32 0, i32 57
  %239 = load i32, i32* %lowpass_band377, align 4, !tbaa !38
  %conv378 = sitofp i32 %239 to double
  %div379 = fdiv double %conv378, 3.100000e+01
  %conv380 = fptrunc double %div379 to float
  %240 = load %struct.lame_global_flags*, %struct.lame_global_flags** %gfp.addr, align 8, !tbaa !1
  %lowpass2381 = getelementptr inbounds %struct.lame_global_flags, %struct.lame_global_flags* %240, i32 0, i32 54
  store float %conv380, float* %lowpass2381, align 4, !tbaa !29
  br label %if.end.382

if.end.382:                                       ; preds = %if.end.376, %if.then.304
  %241 = load %struct.lame_global_flags*, %struct.lame_global_flags** %gfp.addr, align 8, !tbaa !1
  %highpass2383 = getelementptr inbounds %struct.lame_global_flags, %struct.lame_global_flags* %241, i32 0, i32 56
  %242 = load float, float* %highpass2383, align 4, !tbaa !33
  %cmp384 = fcmp ogt float %242, 0.000000e+00
  br i1 %cmp384, label %if.then.386, label %if.end.396

if.then.386:                                      ; preds = %if.end.382
  %243 = load %struct.lame_global_flags*, %struct.lame_global_flags** %gfp.addr, align 8, !tbaa !1
  %highpass2387 = getelementptr inbounds %struct.lame_global_flags, %struct.lame_global_flags* %243, i32 0, i32 56
  %244 = load float, float* %highpass2387, align 4, !tbaa !33
  %conv388 = fpext float %244 to double
  %cmp389 = fcmp olt double %conv388, 0x3F964BF964BF964C
  br i1 %cmp389, label %if.then.391, label %if.end.395

if.then.391:                                      ; preds = %if.then.386
  %245 = load %struct.lame_global_flags*, %struct.lame_global_flags** %gfp.addr, align 8, !tbaa !1
  %highpass1392 = getelementptr inbounds %struct.lame_global_flags, %struct.lame_global_flags* %245, i32 0, i32 55
  store float 0.000000e+00, float* %highpass1392, align 4, !tbaa !31
  %246 = load %struct.lame_global_flags*, %struct.lame_global_flags** %gfp.addr, align 8, !tbaa !1
  %highpass2393 = getelementptr inbounds %struct.lame_global_flags, %struct.lame_global_flags* %246, i32 0, i32 56
  store float 0.000000e+00, float* %highpass2393, align 4, !tbaa !33
  %247 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !tbaa !1
  %call394 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %247, i8* getelementptr inbounds ([65 x i8], [65 x i8]* @.str, i32 0, i32 0))
  br label %if.end.395

if.end.395:                                       ; preds = %if.then.391, %if.then.386
  br label %if.end.396

if.end.396:                                       ; preds = %if.end.395, %if.end.382
  %248 = load %struct.lame_global_flags*, %struct.lame_global_flags** %gfp.addr, align 8, !tbaa !1
  %highpass2397 = getelementptr inbounds %struct.lame_global_flags, %struct.lame_global_flags* %248, i32 0, i32 56
  %249 = load float, float* %highpass2397, align 4, !tbaa !33
  %cmp398 = fcmp ogt float %249, 0.000000e+00
  br i1 %cmp398, label %if.then.400, label %if.end.478

if.then.400:                                      ; preds = %if.end.396
  store i32 999, i32* %minband, align 4, !tbaa !27
  store i32 -1, i32* %maxband, align 4, !tbaa !27
  store i32 0, i32* %band305, align 4, !tbaa !27
  br label %for.cond.401

for.cond.401:                                     ; preds = %for.inc.454, %if.then.400
  %250 = load i32, i32* %band305, align 4, !tbaa !27
  %cmp402 = icmp sle i32 %250, 31
  br i1 %cmp402, label %for.body.404, label %for.end.456

for.body.404:                                     ; preds = %for.cond.401
  %251 = load i32, i32* %band305, align 4, !tbaa !27
  %conv405 = sitofp i32 %251 to double
  %div406 = fdiv double %conv405, 3.100000e+01
  store double %div406, double* %freq, align 8, !tbaa !36
  store double 1.000000e+00, double* %amp, align 8, !tbaa !36
  %252 = load double, double* %freq, align 8, !tbaa !36
  %253 = load %struct.lame_global_flags*, %struct.lame_global_flags** %gfp.addr, align 8, !tbaa !1
  %highpass1407 = getelementptr inbounds %struct.lame_global_flags, %struct.lame_global_flags* %253, i32 0, i32 55
  %254 = load float, float* %highpass1407, align 4, !tbaa !31
  %conv408 = fpext float %254 to double
  %cmp409 = fcmp ole double %252, %conv408
  br i1 %cmp409, label %if.then.411, label %if.end.420

if.then.411:                                      ; preds = %for.body.404
  %255 = load %struct.lame_global_flags*, %struct.lame_global_flags** %gfp.addr, align 8, !tbaa !1
  %highpass_band = getelementptr inbounds %struct.lame_global_flags, %struct.lame_global_flags* %255, i32 0, i32 58
  %256 = load i32, i32* %highpass_band, align 4, !tbaa !39
  %257 = load i32, i32* %band305, align 4, !tbaa !27
  %cmp412 = icmp sgt i32 %256, %257
  br i1 %cmp412, label %cond.true.414, label %cond.false.416

cond.true.414:                                    ; preds = %if.then.411
  %258 = load %struct.lame_global_flags*, %struct.lame_global_flags** %gfp.addr, align 8, !tbaa !1
  %highpass_band415 = getelementptr inbounds %struct.lame_global_flags, %struct.lame_global_flags* %258, i32 0, i32 58
  %259 = load i32, i32* %highpass_band415, align 4, !tbaa !39
  br label %cond.end.417

cond.false.416:                                   ; preds = %if.then.411
  %260 = load i32, i32* %band305, align 4, !tbaa !27
  br label %cond.end.417

cond.end.417:                                     ; preds = %cond.false.416, %cond.true.414
  %cond418 = phi i32 [ %259, %cond.true.414 ], [ %260, %cond.false.416 ]
  %261 = load %struct.lame_global_flags*, %struct.lame_global_flags** %gfp.addr, align 8, !tbaa !1
  %highpass_band419 = getelementptr inbounds %struct.lame_global_flags, %struct.lame_global_flags* %261, i32 0, i32 58
  store i32 %cond418, i32* %highpass_band419, align 4, !tbaa !39
  store double 0.000000e+00, double* %amp, align 8, !tbaa !36
  br label %if.end.420

if.end.420:                                       ; preds = %cond.end.417, %for.body.404
  %262 = load %struct.lame_global_flags*, %struct.lame_global_flags** %gfp.addr, align 8, !tbaa !1
  %highpass1421 = getelementptr inbounds %struct.lame_global_flags, %struct.lame_global_flags* %262, i32 0, i32 55
  %263 = load float, float* %highpass1421, align 4, !tbaa !31
  %conv422 = fpext float %263 to double
  %264 = load double, double* %freq, align 8, !tbaa !36
  %cmp423 = fcmp olt double %conv422, %264
  br i1 %cmp423, label %land.lhs.true.425, label %if.end.453

land.lhs.true.425:                                ; preds = %if.end.420
  %265 = load double, double* %freq, align 8, !tbaa !36
  %266 = load %struct.lame_global_flags*, %struct.lame_global_flags** %gfp.addr, align 8, !tbaa !1
  %highpass2426 = getelementptr inbounds %struct.lame_global_flags, %struct.lame_global_flags* %266, i32 0, i32 56
  %267 = load float, float* %highpass2426, align 4, !tbaa !33
  %conv427 = fpext float %267 to double
  %cmp428 = fcmp olt double %265, %conv427
  br i1 %cmp428, label %if.then.430, label %if.end.453

if.then.430:                                      ; preds = %land.lhs.true.425
  %268 = load i32, i32* %minband, align 4, !tbaa !27
  %269 = load i32, i32* %band305, align 4, !tbaa !27
  %cmp431 = icmp slt i32 %268, %269
  br i1 %cmp431, label %cond.true.433, label %cond.false.434

cond.true.433:                                    ; preds = %if.then.430
  %270 = load i32, i32* %minband, align 4, !tbaa !27
  br label %cond.end.435

cond.false.434:                                   ; preds = %if.then.430
  %271 = load i32, i32* %band305, align 4, !tbaa !27
  br label %cond.end.435

cond.end.435:                                     ; preds = %cond.false.434, %cond.true.433
  %cond436 = phi i32 [ %270, %cond.true.433 ], [ %271, %cond.false.434 ]
  store i32 %cond436, i32* %minband, align 4, !tbaa !27
  %272 = load i32, i32* %maxband, align 4, !tbaa !27
  %273 = load i32, i32* %band305, align 4, !tbaa !27
  %cmp437 = icmp sgt i32 %272, %273
  br i1 %cmp437, label %cond.true.439, label %cond.false.440

cond.true.439:                                    ; preds = %cond.end.435
  %274 = load i32, i32* %maxband, align 4, !tbaa !27
  br label %cond.end.441

cond.false.440:                                   ; preds = %cond.end.435
  %275 = load i32, i32* %band305, align 4, !tbaa !27
  br label %cond.end.441

cond.end.441:                                     ; preds = %cond.false.440, %cond.true.439
  %cond442 = phi i32 [ %274, %cond.true.439 ], [ %275, %cond.false.440 ]
  store i32 %cond442, i32* %maxband, align 4, !tbaa !27
  %276 = load %struct.lame_global_flags*, %struct.lame_global_flags** %gfp.addr, align 8, !tbaa !1
  %highpass2443 = getelementptr inbounds %struct.lame_global_flags, %struct.lame_global_flags* %276, i32 0, i32 56
  %277 = load float, float* %highpass2443, align 4, !tbaa !33
  %conv444 = fpext float %277 to double
  %278 = load double, double* %freq, align 8, !tbaa !36
  %sub445 = fsub double %conv444, %278
  %mul446 = fmul double 0x3FF921FB54442D18, %sub445
  %279 = load %struct.lame_global_flags*, %struct.lame_global_flags** %gfp.addr, align 8, !tbaa !1
  %highpass2447 = getelementptr inbounds %struct.lame_global_flags, %struct.lame_global_flags* %279, i32 0, i32 56
  %280 = load float, float* %highpass2447, align 4, !tbaa !33
  %281 = load %struct.lame_global_flags*, %struct.lame_global_flags** %gfp.addr, align 8, !tbaa !1
  %highpass1448 = getelementptr inbounds %struct.lame_global_flags, %struct.lame_global_flags* %281, i32 0, i32 55
  %282 = load float, float* %highpass1448, align 4, !tbaa !31
  %sub449 = fsub float %280, %282
  %conv450 = fpext float %sub449 to double
  %div451 = fdiv double %mul446, %conv450
  %call452 = call double @cos(double %div451) #1
  store double %call452, double* %amp, align 8, !tbaa !36
  br label %if.end.453

if.end.453:                                       ; preds = %cond.end.441, %land.lhs.true.425, %if.end.420
  br label %for.inc.454

for.inc.454:                                      ; preds = %if.end.453
  %283 = load i32, i32* %band305, align 4, !tbaa !27
  %inc455 = add nsw i32 %283, 1
  store i32 %inc455, i32* %band305, align 4, !tbaa !27
  br label %for.cond.401

for.end.456:                                      ; preds = %for.cond.401
  %284 = load %struct.lame_global_flags*, %struct.lame_global_flags** %gfp.addr, align 8, !tbaa !1
  %highpass_band457 = getelementptr inbounds %struct.lame_global_flags, %struct.lame_global_flags* %284, i32 0, i32 58
  %285 = load i32, i32* %highpass_band457, align 4, !tbaa !39
  %conv458 = sitofp i32 %285 to double
  %div459 = fdiv double %conv458, 3.100000e+01
  %conv460 = fptrunc double %div459 to float
  %286 = load %struct.lame_global_flags*, %struct.lame_global_flags** %gfp.addr, align 8, !tbaa !1
  %highpass1461 = getelementptr inbounds %struct.lame_global_flags, %struct.lame_global_flags* %286, i32 0, i32 55
  store float %conv460, float* %highpass1461, align 4, !tbaa !31
  %287 = load i32, i32* %maxband, align 4, !tbaa !27
  %cmp462 = icmp eq i32 %287, -1
  br i1 %cmp462, label %if.then.464, label %if.else.471

if.then.464:                                      ; preds = %for.end.456
  %288 = load %struct.lame_global_flags*, %struct.lame_global_flags** %gfp.addr, align 8, !tbaa !1
  %highpass_band465 = getelementptr inbounds %struct.lame_global_flags, %struct.lame_global_flags* %288, i32 0, i32 58
  %289 = load i32, i32* %highpass_band465, align 4, !tbaa !39
  %conv466 = sitofp i32 %289 to double
  %add467 = fadd double %conv466, 7.500000e-01
  %div468 = fdiv double %add467, 3.100000e+01
  %conv469 = fptrunc double %div468 to float
  %290 = load %struct.lame_global_flags*, %struct.lame_global_flags** %gfp.addr, align 8, !tbaa !1
  %highpass2470 = getelementptr inbounds %struct.lame_global_flags, %struct.lame_global_flags* %290, i32 0, i32 56
  store float %conv469, float* %highpass2470, align 4, !tbaa !33
  br label %if.end.477

if.else.471:                                      ; preds = %for.end.456
  %291 = load i32, i32* %maxband, align 4, !tbaa !27
  %conv472 = sitofp i32 %291 to double
  %add473 = fadd double %conv472, 7.500000e-01
  %div474 = fdiv double %add473, 3.100000e+01
  %conv475 = fptrunc double %div474 to float
  %292 = load %struct.lame_global_flags*, %struct.lame_global_flags** %gfp.addr, align 8, !tbaa !1
  %highpass2476 = getelementptr inbounds %struct.lame_global_flags, %struct.lame_global_flags* %292, i32 0, i32 56
  store float %conv475, float* %highpass2476, align 4, !tbaa !33
  br label %if.end.477

if.end.477:                                       ; preds = %if.else.471, %if.then.464
  br label %if.end.478

if.end.478:                                       ; preds = %if.end.477, %if.end.396
  %293 = bitcast double* %freq to i8*
  call void @llvm.lifetime.end(i64 8, i8* %293) #1
  %294 = bitcast double* %amp to i8*
  call void @llvm.lifetime.end(i64 8, i8* %294) #1
  %295 = bitcast i32* %minband to i8*
  call void @llvm.lifetime.end(i64 4, i8* %295) #1
  %296 = bitcast i32* %maxband to i8*
  call void @llvm.lifetime.end(i64 4, i8* %296) #1
  %297 = bitcast i32* %band305 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %297) #1
  br label %if.end.479

if.end.479:                                       ; preds = %if.end.478, %if.end.301
  %298 = load %struct.lame_global_flags*, %struct.lame_global_flags** %gfp.addr, align 8, !tbaa !1
  %filter_type480 = getelementptr inbounds %struct.lame_global_flags, %struct.lame_global_flags* %298, i32 0, i32 59
  %299 = load i32, i32* %filter_type480, align 4, !tbaa !35
  %cmp481 = icmp eq i32 %299, 1
  br i1 %cmp481, label %if.then.483, label %if.end.484

if.then.483:                                      ; preds = %if.end.479
  br label %if.end.484

if.end.484:                                       ; preds = %if.then.483, %if.end.479
  %300 = load %struct.lame_global_flags*, %struct.lame_global_flags** %gfp.addr, align 8, !tbaa !1
  %mode_ext = getelementptr inbounds %struct.lame_global_flags, %struct.lame_global_flags* %300, i32 0, i32 52
  store i32 0, i32* %mode_ext, align 4, !tbaa !40
  %301 = load %struct.lame_global_flags*, %struct.lame_global_flags** %gfp.addr, align 8, !tbaa !1
  %mode485 = getelementptr inbounds %struct.lame_global_flags, %struct.lame_global_flags* %301, i32 0, i32 8
  %302 = load i32, i32* %mode485, align 4, !tbaa !11
  %cmp486 = icmp eq i32 %302, 3
  %cond488 = select i1 %cmp486, i32 1, i32 2
  %303 = load %struct.lame_global_flags*, %struct.lame_global_flags** %gfp.addr, align 8, !tbaa !1
  %stereo489 = getelementptr inbounds %struct.lame_global_flags, %struct.lame_global_flags* %303, i32 0, i32 46
  store i32 %cond488, i32* %stereo489, align 4, !tbaa !12
  %304 = load %struct.lame_global_flags*, %struct.lame_global_flags** %gfp.addr, align 8, !tbaa !1
  %out_samplerate490 = getelementptr inbounds %struct.lame_global_flags, %struct.lame_global_flags* %304, i32 0, i32 3
  %305 = load i32, i32* %out_samplerate490, align 4, !tbaa !13
  %conv491 = sext i32 %305 to i64
  %306 = load %struct.lame_global_flags*, %struct.lame_global_flags** %gfp.addr, align 8, !tbaa !1
  %version = getelementptr inbounds %struct.lame_global_flags, %struct.lame_global_flags* %306, i32 0, i32 43
  %call492 = call i32 @SmpFrqIndex(i64 %conv491, i32* %version)
  %307 = load %struct.lame_global_flags*, %struct.lame_global_flags** %gfp.addr, align 8, !tbaa !1
  %samplerate_index = getelementptr inbounds %struct.lame_global_flags, %struct.lame_global_flags* %307, i32 0, i32 51
  store i32 %call492, i32* %samplerate_index, align 4, !tbaa !41
  %308 = load %struct.lame_global_flags*, %struct.lame_global_flags** %gfp.addr, align 8, !tbaa !1
  %samplerate_index493 = getelementptr inbounds %struct.lame_global_flags, %struct.lame_global_flags* %308, i32 0, i32 51
  %309 = load i32, i32* %samplerate_index493, align 4, !tbaa !41
  %cmp494 = icmp slt i32 %309, 0
  br i1 %cmp494, label %if.then.496, label %if.end.497

if.then.496:                                      ; preds = %if.end.484
  %310 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !tbaa !1
  call void @display_bitrates(%struct._IO_FILE* %310)
  call void @exit(i32 1) #8
  unreachable

if.end.497:                                       ; preds = %if.end.484
  %311 = load %struct.lame_global_flags*, %struct.lame_global_flags** %gfp.addr, align 8, !tbaa !1
  %brate498 = getelementptr inbounds %struct.lame_global_flags, %struct.lame_global_flags* %311, i32 0, i32 11
  %312 = load i32, i32* %brate498, align 4, !tbaa !15
  %313 = load %struct.lame_global_flags*, %struct.lame_global_flags** %gfp.addr, align 8, !tbaa !1
  %version499 = getelementptr inbounds %struct.lame_global_flags, %struct.lame_global_flags* %313, i32 0, i32 43
  %314 = load i32, i32* %version499, align 4, !tbaa !42
  %315 = load %struct.lame_global_flags*, %struct.lame_global_flags** %gfp.addr, align 8, !tbaa !1
  %out_samplerate500 = getelementptr inbounds %struct.lame_global_flags, %struct.lame_global_flags* %315, i32 0, i32 3
  %316 = load i32, i32* %out_samplerate500, align 4, !tbaa !13
  %call501 = call i32 @BitrateIndex(i32 %312, i32 %314, i32 %316)
  %317 = load %struct.lame_global_flags*, %struct.lame_global_flags** %gfp.addr, align 8, !tbaa !1
  %bitrate_index = getelementptr inbounds %struct.lame_global_flags, %struct.lame_global_flags* %317, i32 0, i32 50
  store i32 %call501, i32* %bitrate_index, align 4, !tbaa !43
  %cmp502 = icmp slt i32 %call501, 0
  br i1 %cmp502, label %if.then.504, label %if.end.505

if.then.504:                                      ; preds = %if.end.497
  %318 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !tbaa !1
  call void @display_bitrates(%struct._IO_FILE* %318)
  call void @exit(i32 1) #8
  unreachable

if.end.505:                                       ; preds = %if.end.497
  %319 = load %struct.lame_global_flags*, %struct.lame_global_flags** %gfp.addr, align 8, !tbaa !1
  %VBR506 = getelementptr inbounds %struct.lame_global_flags, %struct.lame_global_flags* %319, i32 0, i32 21
  %320 = load i32, i32* %VBR506, align 4, !tbaa !17
  %tobool507 = icmp ne i32 %320, 0
  br i1 %tobool507, label %if.then.508, label %if.end.561

if.then.508:                                      ; preds = %if.end.505
  %321 = load %struct.lame_global_flags*, %struct.lame_global_flags** %gfp.addr, align 8, !tbaa !1
  %VBR_max_bitrate_kbps = getelementptr inbounds %struct.lame_global_flags, %struct.lame_global_flags* %321, i32 0, i32 24
  %322 = load i32, i32* %VBR_max_bitrate_kbps, align 4, !tbaa !44
  %cmp509 = icmp eq i32 0, %322
  br i1 %cmp509, label %if.then.511, label %if.else.535

if.then.511:                                      ; preds = %if.then.508
  %323 = load %struct.lame_global_flags*, %struct.lame_global_flags** %gfp.addr, align 8, !tbaa !1
  %VBR_max_bitrate = getelementptr inbounds %struct.lame_global_flags, %struct.lame_global_flags* %323, i32 0, i32 48
  store i32 13, i32* %VBR_max_bitrate, align 4, !tbaa !45
  %324 = load %struct.lame_global_flags*, %struct.lame_global_flags** %gfp.addr, align 8, !tbaa !1
  %VBR_min_bitrate_kbps = getelementptr inbounds %struct.lame_global_flags, %struct.lame_global_flags* %324, i32 0, i32 23
  %325 = load i32, i32* %VBR_min_bitrate_kbps, align 4, !tbaa !46
  %cmp512 = icmp sge i32 %325, 256
  br i1 %cmp512, label %if.then.514, label %if.end.516

if.then.514:                                      ; preds = %if.then.511
  %326 = load %struct.lame_global_flags*, %struct.lame_global_flags** %gfp.addr, align 8, !tbaa !1
  %VBR_max_bitrate515 = getelementptr inbounds %struct.lame_global_flags, %struct.lame_global_flags* %326, i32 0, i32 48
  store i32 14, i32* %VBR_max_bitrate515, align 4, !tbaa !45
  br label %if.end.516

if.end.516:                                       ; preds = %if.then.514, %if.then.511
  %327 = load %struct.lame_global_flags*, %struct.lame_global_flags** %gfp.addr, align 8, !tbaa !1
  %VBR_q517 = getelementptr inbounds %struct.lame_global_flags, %struct.lame_global_flags* %327, i32 0, i32 22
  %328 = load i32, i32* %VBR_q517, align 4, !tbaa !24
  %cmp518 = icmp eq i32 %328, 0
  br i1 %cmp518, label %if.then.520, label %if.end.522

if.then.520:                                      ; preds = %if.end.516
  %329 = load %struct.lame_global_flags*, %struct.lame_global_flags** %gfp.addr, align 8, !tbaa !1
  %VBR_max_bitrate521 = getelementptr inbounds %struct.lame_global_flags, %struct.lame_global_flags* %329, i32 0, i32 48
  store i32 14, i32* %VBR_max_bitrate521, align 4, !tbaa !45
  br label %if.end.522

if.end.522:                                       ; preds = %if.then.520, %if.end.516
  %330 = load %struct.lame_global_flags*, %struct.lame_global_flags** %gfp.addr, align 8, !tbaa !1
  %VBR_q523 = getelementptr inbounds %struct.lame_global_flags, %struct.lame_global_flags* %330, i32 0, i32 22
  %331 = load i32, i32* %VBR_q523, align 4, !tbaa !24
  %cmp524 = icmp sge i32 %331, 4
  br i1 %cmp524, label %if.then.526, label %if.end.528

if.then.526:                                      ; preds = %if.end.522
  %332 = load %struct.lame_global_flags*, %struct.lame_global_flags** %gfp.addr, align 8, !tbaa !1
  %VBR_max_bitrate527 = getelementptr inbounds %struct.lame_global_flags, %struct.lame_global_flags* %332, i32 0, i32 48
  store i32 12, i32* %VBR_max_bitrate527, align 4, !tbaa !45
  br label %if.end.528

if.end.528:                                       ; preds = %if.then.526, %if.end.522
  %333 = load %struct.lame_global_flags*, %struct.lame_global_flags** %gfp.addr, align 8, !tbaa !1
  %VBR_q529 = getelementptr inbounds %struct.lame_global_flags, %struct.lame_global_flags* %333, i32 0, i32 22
  %334 = load i32, i32* %VBR_q529, align 4, !tbaa !24
  %cmp530 = icmp sge i32 %334, 8
  br i1 %cmp530, label %if.then.532, label %if.end.534

if.then.532:                                      ; preds = %if.end.528
  %335 = load %struct.lame_global_flags*, %struct.lame_global_flags** %gfp.addr, align 8, !tbaa !1
  %VBR_max_bitrate533 = getelementptr inbounds %struct.lame_global_flags, %struct.lame_global_flags* %335, i32 0, i32 48
  store i32 9, i32* %VBR_max_bitrate533, align 4, !tbaa !45
  br label %if.end.534

if.end.534:                                       ; preds = %if.then.532, %if.end.528
  br label %if.end.545

if.else.535:                                      ; preds = %if.then.508
  %336 = load %struct.lame_global_flags*, %struct.lame_global_flags** %gfp.addr, align 8, !tbaa !1
  %VBR_max_bitrate_kbps536 = getelementptr inbounds %struct.lame_global_flags, %struct.lame_global_flags* %336, i32 0, i32 24
  %337 = load i32, i32* %VBR_max_bitrate_kbps536, align 4, !tbaa !44
  %338 = load %struct.lame_global_flags*, %struct.lame_global_flags** %gfp.addr, align 8, !tbaa !1
  %version537 = getelementptr inbounds %struct.lame_global_flags, %struct.lame_global_flags* %338, i32 0, i32 43
  %339 = load i32, i32* %version537, align 4, !tbaa !42
  %340 = load %struct.lame_global_flags*, %struct.lame_global_flags** %gfp.addr, align 8, !tbaa !1
  %out_samplerate538 = getelementptr inbounds %struct.lame_global_flags, %struct.lame_global_flags* %340, i32 0, i32 3
  %341 = load i32, i32* %out_samplerate538, align 4, !tbaa !13
  %call539 = call i32 @BitrateIndex(i32 %337, i32 %339, i32 %341)
  %342 = load %struct.lame_global_flags*, %struct.lame_global_flags** %gfp.addr, align 8, !tbaa !1
  %VBR_max_bitrate540 = getelementptr inbounds %struct.lame_global_flags, %struct.lame_global_flags* %342, i32 0, i32 48
  store i32 %call539, i32* %VBR_max_bitrate540, align 4, !tbaa !45
  %cmp541 = icmp slt i32 %call539, 0
  br i1 %cmp541, label %if.then.543, label %if.end.544

if.then.543:                                      ; preds = %if.else.535
  %343 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !tbaa !1
  call void @display_bitrates(%struct._IO_FILE* %343)
  call void @exit(i32 1) #8
  unreachable

if.end.544:                                       ; preds = %if.else.535
  br label %if.end.545

if.end.545:                                       ; preds = %if.end.544, %if.end.534
  %344 = load %struct.lame_global_flags*, %struct.lame_global_flags** %gfp.addr, align 8, !tbaa !1
  %VBR_min_bitrate_kbps546 = getelementptr inbounds %struct.lame_global_flags, %struct.lame_global_flags* %344, i32 0, i32 23
  %345 = load i32, i32* %VBR_min_bitrate_kbps546, align 4, !tbaa !46
  %cmp547 = icmp eq i32 0, %345
  br i1 %cmp547, label %if.then.549, label %if.else.550

if.then.549:                                      ; preds = %if.end.545
  %346 = load %struct.lame_global_flags*, %struct.lame_global_flags** %gfp.addr, align 8, !tbaa !1
  %VBR_min_bitrate = getelementptr inbounds %struct.lame_global_flags, %struct.lame_global_flags* %346, i32 0, i32 47
  store i32 1, i32* %VBR_min_bitrate, align 4, !tbaa !47
  br label %if.end.560

if.else.550:                                      ; preds = %if.end.545
  %347 = load %struct.lame_global_flags*, %struct.lame_global_flags** %gfp.addr, align 8, !tbaa !1
  %VBR_min_bitrate_kbps551 = getelementptr inbounds %struct.lame_global_flags, %struct.lame_global_flags* %347, i32 0, i32 23
  %348 = load i32, i32* %VBR_min_bitrate_kbps551, align 4, !tbaa !46
  %349 = load %struct.lame_global_flags*, %struct.lame_global_flags** %gfp.addr, align 8, !tbaa !1
  %version552 = getelementptr inbounds %struct.lame_global_flags, %struct.lame_global_flags* %349, i32 0, i32 43
  %350 = load i32, i32* %version552, align 4, !tbaa !42
  %351 = load %struct.lame_global_flags*, %struct.lame_global_flags** %gfp.addr, align 8, !tbaa !1
  %out_samplerate553 = getelementptr inbounds %struct.lame_global_flags, %struct.lame_global_flags* %351, i32 0, i32 3
  %352 = load i32, i32* %out_samplerate553, align 4, !tbaa !13
  %call554 = call i32 @BitrateIndex(i32 %348, i32 %350, i32 %352)
  %353 = load %struct.lame_global_flags*, %struct.lame_global_flags** %gfp.addr, align 8, !tbaa !1
  %VBR_min_bitrate555 = getelementptr inbounds %struct.lame_global_flags, %struct.lame_global_flags* %353, i32 0, i32 47
  store i32 %call554, i32* %VBR_min_bitrate555, align 4, !tbaa !47
  %cmp556 = icmp slt i32 %call554, 0
  br i1 %cmp556, label %if.then.558, label %if.end.559

if.then.558:                                      ; preds = %if.else.550
  %354 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !tbaa !1
  call void @display_bitrates(%struct._IO_FILE* %354)
  call void @exit(i32 1) #8
  unreachable

if.end.559:                                       ; preds = %if.else.550
  br label %if.end.560

if.end.560:                                       ; preds = %if.end.559, %if.then.549
  br label %if.end.561

if.end.561:                                       ; preds = %if.end.560, %if.end.505
  %355 = load %struct.lame_global_flags*, %struct.lame_global_flags** %gfp.addr, align 8, !tbaa !1
  %VBR562 = getelementptr inbounds %struct.lame_global_flags, %struct.lame_global_flags* %355, i32 0, i32 21
  %356 = load i32, i32* %VBR562, align 4, !tbaa !17
  %tobool563 = icmp ne i32 %356, 0
  br i1 %tobool563, label %if.then.564, label %if.end.573

if.then.564:                                      ; preds = %if.end.561
  %357 = load %struct.lame_global_flags*, %struct.lame_global_flags** %gfp.addr, align 8, !tbaa !1
  %quality = getelementptr inbounds %struct.lame_global_flags, %struct.lame_global_flags* %357, i32 0, i32 6
  %358 = load i32, i32* %quality, align 4, !tbaa !48
  %cmp565 = icmp slt i32 %358, 2
  br i1 %cmp565, label %cond.true.567, label %cond.false.569

cond.true.567:                                    ; preds = %if.then.564
  %359 = load %struct.lame_global_flags*, %struct.lame_global_flags** %gfp.addr, align 8, !tbaa !1
  %quality568 = getelementptr inbounds %struct.lame_global_flags, %struct.lame_global_flags* %359, i32 0, i32 6
  %360 = load i32, i32* %quality568, align 4, !tbaa !48
  br label %cond.end.570

cond.false.569:                                   ; preds = %if.then.564
  br label %cond.end.570

cond.end.570:                                     ; preds = %cond.false.569, %cond.true.567
  %cond571 = phi i32 [ %360, %cond.true.567 ], [ 2, %cond.false.569 ]
  %361 = load %struct.lame_global_flags*, %struct.lame_global_flags** %gfp.addr, align 8, !tbaa !1
  %quality572 = getelementptr inbounds %struct.lame_global_flags, %struct.lame_global_flags* %361, i32 0, i32 6
  store i32 %cond571, i32* %quality572, align 4, !tbaa !48
  br label %if.end.573

if.end.573:                                       ; preds = %cond.end.570, %if.end.561
  %362 = load %struct.lame_global_flags*, %struct.lame_global_flags** %gfp.addr, align 8, !tbaa !1
  %mode574 = getelementptr inbounds %struct.lame_global_flags, %struct.lame_global_flags* %362, i32 0, i32 8
  %363 = load i32, i32* %mode574, align 4, !tbaa !11
  %cmp575 = icmp eq i32 %363, 3
  br i1 %cmp575, label %if.then.577, label %if.end.578

if.then.577:                                      ; preds = %if.end.573
  %364 = load %struct.lame_global_flags*, %struct.lame_global_flags** %gfp.addr, align 8, !tbaa !1
  %force_ms = getelementptr inbounds %struct.lame_global_flags, %struct.lame_global_flags* %364, i32 0, i32 10
  store i32 0, i32* %force_ms, align 4, !tbaa !49
  br label %if.end.578

if.end.578:                                       ; preds = %if.then.577, %if.end.573
  %365 = load %struct.lame_global_flags*, %struct.lame_global_flags** %gfp.addr, align 8, !tbaa !1
  %VBR579 = getelementptr inbounds %struct.lame_global_flags, %struct.lame_global_flags* %365, i32 0, i32 21
  %366 = load i32, i32* %VBR579, align 4, !tbaa !17
  %cmp580 = icmp eq i32 %366, 0
  br i1 %cmp580, label %if.then.582, label %if.end.583

if.then.582:                                      ; preds = %if.end.578
  %367 = load %struct.lame_global_flags*, %struct.lame_global_flags** %gfp.addr, align 8, !tbaa !1
  %bWriteVbrTag = getelementptr inbounds %struct.lame_global_flags, %struct.lame_global_flags* %367, i32 0, i32 5
  store i32 0, i32* %bWriteVbrTag, align 4, !tbaa !50
  br label %if.end.583

if.end.583:                                       ; preds = %if.then.582, %if.end.578
  %368 = load %struct.lame_global_flags*, %struct.lame_global_flags** %gfp.addr, align 8, !tbaa !1
  %outPath = getelementptr inbounds %struct.lame_global_flags, %struct.lame_global_flags* %368, i32 0, i32 32
  %369 = load i8*, i8** %outPath, align 8, !tbaa !51
  %cmp584 = icmp ne i8* %369, null
  br i1 %cmp584, label %land.lhs.true.586, label %if.end.593

land.lhs.true.586:                                ; preds = %if.end.583
  %370 = load %struct.lame_global_flags*, %struct.lame_global_flags** %gfp.addr, align 8, !tbaa !1
  %outPath587 = getelementptr inbounds %struct.lame_global_flags, %struct.lame_global_flags* %370, i32 0, i32 32
  %371 = load i8*, i8** %outPath587, align 8, !tbaa !51
  %arrayidx = getelementptr inbounds i8, i8* %371, i64 0
  %372 = load i8, i8* %arrayidx, align 1, !tbaa !52
  %conv588 = sext i8 %372 to i32
  %cmp589 = icmp eq i32 %conv588, 45
  br i1 %cmp589, label %if.then.591, label %if.end.593

if.then.591:                                      ; preds = %land.lhs.true.586
  %373 = load %struct.lame_global_flags*, %struct.lame_global_flags** %gfp.addr, align 8, !tbaa !1
  %bWriteVbrTag592 = getelementptr inbounds %struct.lame_global_flags, %struct.lame_global_flags* %373, i32 0, i32 5
  store i32 0, i32* %bWriteVbrTag592, align 4, !tbaa !50
  br label %if.end.593

if.end.593:                                       ; preds = %if.then.591, %land.lhs.true.586, %if.end.583
  %374 = load %struct.lame_global_flags*, %struct.lame_global_flags** %gfp.addr, align 8, !tbaa !1
  %outPath594 = getelementptr inbounds %struct.lame_global_flags, %struct.lame_global_flags* %374, i32 0, i32 32
  %375 = load i8*, i8** %outPath594, align 8, !tbaa !51
  %cmp595 = icmp eq i8* %375, null
  br i1 %cmp595, label %if.then.602, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.end.593
  %376 = load %struct.lame_global_flags*, %struct.lame_global_flags** %gfp.addr, align 8, !tbaa !1
  %outPath597 = getelementptr inbounds %struct.lame_global_flags, %struct.lame_global_flags* %376, i32 0, i32 32
  %377 = load i8*, i8** %outPath597, align 8, !tbaa !51
  %arrayidx598 = getelementptr inbounds i8, i8* %377, i64 0
  %378 = load i8, i8* %arrayidx598, align 1, !tbaa !52
  %conv599 = sext i8 %378 to i32
  %cmp600 = icmp eq i32 %conv599, 45
  br i1 %cmp600, label %if.then.602, label %if.end.603

if.then.602:                                      ; preds = %lor.lhs.false, %if.end.593
  store i32 0, i32* getelementptr inbounds (%struct.ID3TAGDATA, %struct.ID3TAGDATA* @id3tag, i32 0, i32 0), align 4, !tbaa !53
  br label %if.end.603

if.end.603:                                       ; preds = %if.then.602, %lor.lhs.false
  %379 = load %struct.lame_global_flags*, %struct.lame_global_flags** %gfp.addr, align 8, !tbaa !1
  %gtkflag = getelementptr inbounds %struct.lame_global_flags, %struct.lame_global_flags* %379, i32 0, i32 4
  %380 = load i32, i32* %gtkflag, align 4, !tbaa !55
  %tobool604 = icmp ne i32 %380, 0
  br i1 %tobool604, label %if.then.605, label %if.end.607

if.then.605:                                      ; preds = %if.end.603
  %381 = load %struct.lame_global_flags*, %struct.lame_global_flags** %gfp.addr, align 8, !tbaa !1
  %bWriteVbrTag606 = getelementptr inbounds %struct.lame_global_flags, %struct.lame_global_flags* %381, i32 0, i32 5
  store i32 0, i32* %bWriteVbrTag606, align 4, !tbaa !50
  br label %if.end.607

if.end.607:                                       ; preds = %if.then.605, %if.end.603
  call void @init_bit_stream_w(%struct.bit_stream_struc* @bs)
  %382 = load %struct.lame_global_flags*, %struct.lame_global_flags** %gfp.addr, align 8, !tbaa !1
  %quality608 = getelementptr inbounds %struct.lame_global_flags, %struct.lame_global_flags* %382, i32 0, i32 6
  %383 = load i32, i32* %quality608, align 4, !tbaa !48
  %cmp609 = icmp eq i32 %383, 9
  br i1 %cmp609, label %if.then.611, label %if.end.613

if.then.611:                                      ; preds = %if.end.607
  %384 = load %struct.lame_global_flags*, %struct.lame_global_flags** %gfp.addr, align 8, !tbaa !1
  %filter_type612 = getelementptr inbounds %struct.lame_global_flags, %struct.lame_global_flags* %384, i32 0, i32 59
  store i32 0, i32* %filter_type612, align 4, !tbaa !35
  %385 = load %struct.lame_global_flags*, %struct.lame_global_flags** %gfp.addr, align 8, !tbaa !1
  %psymodel = getelementptr inbounds %struct.lame_global_flags, %struct.lame_global_flags* %385, i32 0, i32 63
  store i32 0, i32* %psymodel, align 4, !tbaa !56
  %386 = load %struct.lame_global_flags*, %struct.lame_global_flags** %gfp.addr, align 8, !tbaa !1
  %quantization = getelementptr inbounds %struct.lame_global_flags, %struct.lame_global_flags* %386, i32 0, i32 60
  store i32 0, i32* %quantization, align 4, !tbaa !57
  %387 = load %struct.lame_global_flags*, %struct.lame_global_flags** %gfp.addr, align 8, !tbaa !1
  %noise_shaping = getelementptr inbounds %struct.lame_global_flags, %struct.lame_global_flags* %387, i32 0, i32 61
  store i32 0, i32* %noise_shaping, align 4, !tbaa !58
  %388 = load %struct.lame_global_flags*, %struct.lame_global_flags** %gfp.addr, align 8, !tbaa !1
  %noise_shaping_stop = getelementptr inbounds %struct.lame_global_flags, %struct.lame_global_flags* %388, i32 0, i32 62
  store i32 0, i32* %noise_shaping_stop, align 4, !tbaa !59
  %389 = load %struct.lame_global_flags*, %struct.lame_global_flags** %gfp.addr, align 8, !tbaa !1
  %use_best_huffman = getelementptr inbounds %struct.lame_global_flags, %struct.lame_global_flags* %389, i32 0, i32 64
  store i32 0, i32* %use_best_huffman, align 4, !tbaa !60
  br label %if.end.613

if.end.613:                                       ; preds = %if.then.611, %if.end.607
  %390 = load %struct.lame_global_flags*, %struct.lame_global_flags** %gfp.addr, align 8, !tbaa !1
  %quality614 = getelementptr inbounds %struct.lame_global_flags, %struct.lame_global_flags* %390, i32 0, i32 6
  %391 = load i32, i32* %quality614, align 4, !tbaa !48
  %cmp615 = icmp eq i32 %391, 8
  br i1 %cmp615, label %if.then.617, label %if.end.619

if.then.617:                                      ; preds = %if.end.613
  %392 = load %struct.lame_global_flags*, %struct.lame_global_flags** %gfp.addr, align 8, !tbaa !1
  %quality618 = getelementptr inbounds %struct.lame_global_flags, %struct.lame_global_flags* %392, i32 0, i32 6
  store i32 7, i32* %quality618, align 4, !tbaa !48
  br label %if.end.619

if.end.619:                                       ; preds = %if.then.617, %if.end.613
  %393 = load %struct.lame_global_flags*, %struct.lame_global_flags** %gfp.addr, align 8, !tbaa !1
  %quality620 = getelementptr inbounds %struct.lame_global_flags, %struct.lame_global_flags* %393, i32 0, i32 6
  %394 = load i32, i32* %quality620, align 4, !tbaa !48
  %cmp621 = icmp eq i32 %394, 7
  br i1 %cmp621, label %if.then.623, label %if.end.630

if.then.623:                                      ; preds = %if.end.619
  %395 = load %struct.lame_global_flags*, %struct.lame_global_flags** %gfp.addr, align 8, !tbaa !1
  %filter_type624 = getelementptr inbounds %struct.lame_global_flags, %struct.lame_global_flags* %395, i32 0, i32 59
  store i32 0, i32* %filter_type624, align 4, !tbaa !35
  %396 = load %struct.lame_global_flags*, %struct.lame_global_flags** %gfp.addr, align 8, !tbaa !1
  %psymodel625 = getelementptr inbounds %struct.lame_global_flags, %struct.lame_global_flags* %396, i32 0, i32 63
  store i32 1, i32* %psymodel625, align 4, !tbaa !56
  %397 = load %struct.lame_global_flags*, %struct.lame_global_flags** %gfp.addr, align 8, !tbaa !1
  %quantization626 = getelementptr inbounds %struct.lame_global_flags, %struct.lame_global_flags* %397, i32 0, i32 60
  store i32 0, i32* %quantization626, align 4, !tbaa !57
  %398 = load %struct.lame_global_flags*, %struct.lame_global_flags** %gfp.addr, align 8, !tbaa !1
  %noise_shaping627 = getelementptr inbounds %struct.lame_global_flags, %struct.lame_global_flags* %398, i32 0, i32 61
  store i32 0, i32* %noise_shaping627, align 4, !tbaa !58
  %399 = load %struct.lame_global_flags*, %struct.lame_global_flags** %gfp.addr, align 8, !tbaa !1
  %noise_shaping_stop628 = getelementptr inbounds %struct.lame_global_flags, %struct.lame_global_flags* %399, i32 0, i32 62
  store i32 0, i32* %noise_shaping_stop628, align 4, !tbaa !59
  %400 = load %struct.lame_global_flags*, %struct.lame_global_flags** %gfp.addr, align 8, !tbaa !1
  %use_best_huffman629 = getelementptr inbounds %struct.lame_global_flags, %struct.lame_global_flags* %400, i32 0, i32 64
  store i32 0, i32* %use_best_huffman629, align 4, !tbaa !60
  br label %if.end.630

if.end.630:                                       ; preds = %if.then.623, %if.end.619
  %401 = load %struct.lame_global_flags*, %struct.lame_global_flags** %gfp.addr, align 8, !tbaa !1
  %quality631 = getelementptr inbounds %struct.lame_global_flags, %struct.lame_global_flags* %401, i32 0, i32 6
  %402 = load i32, i32* %quality631, align 4, !tbaa !48
  %cmp632 = icmp eq i32 %402, 6
  br i1 %cmp632, label %if.then.634, label %if.end.636

if.then.634:                                      ; preds = %if.end.630
  %403 = load %struct.lame_global_flags*, %struct.lame_global_flags** %gfp.addr, align 8, !tbaa !1
  %quality635 = getelementptr inbounds %struct.lame_global_flags, %struct.lame_global_flags* %403, i32 0, i32 6
  store i32 5, i32* %quality635, align 4, !tbaa !48
  br label %if.end.636

if.end.636:                                       ; preds = %if.then.634, %if.end.630
  %404 = load %struct.lame_global_flags*, %struct.lame_global_flags** %gfp.addr, align 8, !tbaa !1
  %quality637 = getelementptr inbounds %struct.lame_global_flags, %struct.lame_global_flags* %404, i32 0, i32 6
  %405 = load i32, i32* %quality637, align 4, !tbaa !48
  %cmp638 = icmp eq i32 %405, 5
  br i1 %cmp638, label %if.then.640, label %if.end.647

if.then.640:                                      ; preds = %if.end.636
  %406 = load %struct.lame_global_flags*, %struct.lame_global_flags** %gfp.addr, align 8, !tbaa !1
  %filter_type641 = getelementptr inbounds %struct.lame_global_flags, %struct.lame_global_flags* %406, i32 0, i32 59
  store i32 0, i32* %filter_type641, align 4, !tbaa !35
  %407 = load %struct.lame_global_flags*, %struct.lame_global_flags** %gfp.addr, align 8, !tbaa !1
  %psymodel642 = getelementptr inbounds %struct.lame_global_flags, %struct.lame_global_flags* %407, i32 0, i32 63
  store i32 1, i32* %psymodel642, align 4, !tbaa !56
  %408 = load %struct.lame_global_flags*, %struct.lame_global_flags** %gfp.addr, align 8, !tbaa !1
  %quantization643 = getelementptr inbounds %struct.lame_global_flags, %struct.lame_global_flags* %408, i32 0, i32 60
  store i32 0, i32* %quantization643, align 4, !tbaa !57
  %409 = load %struct.lame_global_flags*, %struct.lame_global_flags** %gfp.addr, align 8, !tbaa !1
  %noise_shaping644 = getelementptr inbounds %struct.lame_global_flags, %struct.lame_global_flags* %409, i32 0, i32 61
  store i32 1, i32* %noise_shaping644, align 4, !tbaa !58
  %410 = load %struct.lame_global_flags*, %struct.lame_global_flags** %gfp.addr, align 8, !tbaa !1
  %noise_shaping_stop645 = getelementptr inbounds %struct.lame_global_flags, %struct.lame_global_flags* %410, i32 0, i32 62
  store i32 0, i32* %noise_shaping_stop645, align 4, !tbaa !59
  %411 = load %struct.lame_global_flags*, %struct.lame_global_flags** %gfp.addr, align 8, !tbaa !1
  %use_best_huffman646 = getelementptr inbounds %struct.lame_global_flags, %struct.lame_global_flags* %411, i32 0, i32 64
  store i32 0, i32* %use_best_huffman646, align 4, !tbaa !60
  br label %if.end.647

if.end.647:                                       ; preds = %if.then.640, %if.end.636
  %412 = load %struct.lame_global_flags*, %struct.lame_global_flags** %gfp.addr, align 8, !tbaa !1
  %quality648 = getelementptr inbounds %struct.lame_global_flags, %struct.lame_global_flags* %412, i32 0, i32 6
  %413 = load i32, i32* %quality648, align 4, !tbaa !48
  %cmp649 = icmp eq i32 %413, 4
  br i1 %cmp649, label %if.then.651, label %if.end.653

if.then.651:                                      ; preds = %if.end.647
  %414 = load %struct.lame_global_flags*, %struct.lame_global_flags** %gfp.addr, align 8, !tbaa !1
  %quality652 = getelementptr inbounds %struct.lame_global_flags, %struct.lame_global_flags* %414, i32 0, i32 6
  store i32 2, i32* %quality652, align 4, !tbaa !48
  br label %if.end.653

if.end.653:                                       ; preds = %if.then.651, %if.end.647
  %415 = load %struct.lame_global_flags*, %struct.lame_global_flags** %gfp.addr, align 8, !tbaa !1
  %quality654 = getelementptr inbounds %struct.lame_global_flags, %struct.lame_global_flags* %415, i32 0, i32 6
  %416 = load i32, i32* %quality654, align 4, !tbaa !48
  %cmp655 = icmp eq i32 %416, 3
  br i1 %cmp655, label %if.then.657, label %if.end.659

if.then.657:                                      ; preds = %if.end.653
  %417 = load %struct.lame_global_flags*, %struct.lame_global_flags** %gfp.addr, align 8, !tbaa !1
  %quality658 = getelementptr inbounds %struct.lame_global_flags, %struct.lame_global_flags* %417, i32 0, i32 6
  store i32 2, i32* %quality658, align 4, !tbaa !48
  br label %if.end.659

if.end.659:                                       ; preds = %if.then.657, %if.end.653
  %418 = load %struct.lame_global_flags*, %struct.lame_global_flags** %gfp.addr, align 8, !tbaa !1
  %quality660 = getelementptr inbounds %struct.lame_global_flags, %struct.lame_global_flags* %418, i32 0, i32 6
  %419 = load i32, i32* %quality660, align 4, !tbaa !48
  %cmp661 = icmp eq i32 %419, 2
  br i1 %cmp661, label %if.then.663, label %if.end.670

if.then.663:                                      ; preds = %if.end.659
  %420 = load %struct.lame_global_flags*, %struct.lame_global_flags** %gfp.addr, align 8, !tbaa !1
  %filter_type664 = getelementptr inbounds %struct.lame_global_flags, %struct.lame_global_flags* %420, i32 0, i32 59
  store i32 0, i32* %filter_type664, align 4, !tbaa !35
  %421 = load %struct.lame_global_flags*, %struct.lame_global_flags** %gfp.addr, align 8, !tbaa !1
  %psymodel665 = getelementptr inbounds %struct.lame_global_flags, %struct.lame_global_flags* %421, i32 0, i32 63
  store i32 1, i32* %psymodel665, align 4, !tbaa !56
  %422 = load %struct.lame_global_flags*, %struct.lame_global_flags** %gfp.addr, align 8, !tbaa !1
  %quantization666 = getelementptr inbounds %struct.lame_global_flags, %struct.lame_global_flags* %422, i32 0, i32 60
  store i32 1, i32* %quantization666, align 4, !tbaa !57
  %423 = load %struct.lame_global_flags*, %struct.lame_global_flags** %gfp.addr, align 8, !tbaa !1
  %noise_shaping667 = getelementptr inbounds %struct.lame_global_flags, %struct.lame_global_flags* %423, i32 0, i32 61
  store i32 1, i32* %noise_shaping667, align 4, !tbaa !58
  %424 = load %struct.lame_global_flags*, %struct.lame_global_flags** %gfp.addr, align 8, !tbaa !1
  %noise_shaping_stop668 = getelementptr inbounds %struct.lame_global_flags, %struct.lame_global_flags* %424, i32 0, i32 62
  store i32 0, i32* %noise_shaping_stop668, align 4, !tbaa !59
  %425 = load %struct.lame_global_flags*, %struct.lame_global_flags** %gfp.addr, align 8, !tbaa !1
  %use_best_huffman669 = getelementptr inbounds %struct.lame_global_flags, %struct.lame_global_flags* %425, i32 0, i32 64
  store i32 1, i32* %use_best_huffman669, align 4, !tbaa !60
  br label %if.end.670

if.end.670:                                       ; preds = %if.then.663, %if.end.659
  %426 = load %struct.lame_global_flags*, %struct.lame_global_flags** %gfp.addr, align 8, !tbaa !1
  %quality671 = getelementptr inbounds %struct.lame_global_flags, %struct.lame_global_flags* %426, i32 0, i32 6
  %427 = load i32, i32* %quality671, align 4, !tbaa !48
  %cmp672 = icmp eq i32 %427, 1
  br i1 %cmp672, label %if.then.674, label %if.end.681

if.then.674:                                      ; preds = %if.end.670
  %428 = load %struct.lame_global_flags*, %struct.lame_global_flags** %gfp.addr, align 8, !tbaa !1
  %filter_type675 = getelementptr inbounds %struct.lame_global_flags, %struct.lame_global_flags* %428, i32 0, i32 59
  store i32 0, i32* %filter_type675, align 4, !tbaa !35
  %429 = load %struct.lame_global_flags*, %struct.lame_global_flags** %gfp.addr, align 8, !tbaa !1
  %psymodel676 = getelementptr inbounds %struct.lame_global_flags, %struct.lame_global_flags* %429, i32 0, i32 63
  store i32 1, i32* %psymodel676, align 4, !tbaa !56
  %430 = load %struct.lame_global_flags*, %struct.lame_global_flags** %gfp.addr, align 8, !tbaa !1
  %quantization677 = getelementptr inbounds %struct.lame_global_flags, %struct.lame_global_flags* %430, i32 0, i32 60
  store i32 1, i32* %quantization677, align 4, !tbaa !57
  %431 = load %struct.lame_global_flags*, %struct.lame_global_flags** %gfp.addr, align 8, !tbaa !1
  %noise_shaping678 = getelementptr inbounds %struct.lame_global_flags, %struct.lame_global_flags* %431, i32 0, i32 61
  store i32 1, i32* %noise_shaping678, align 4, !tbaa !58
  %432 = load %struct.lame_global_flags*, %struct.lame_global_flags** %gfp.addr, align 8, !tbaa !1
  %noise_shaping_stop679 = getelementptr inbounds %struct.lame_global_flags, %struct.lame_global_flags* %432, i32 0, i32 62
  store i32 1, i32* %noise_shaping_stop679, align 4, !tbaa !59
  %433 = load %struct.lame_global_flags*, %struct.lame_global_flags** %gfp.addr, align 8, !tbaa !1
  %use_best_huffman680 = getelementptr inbounds %struct.lame_global_flags, %struct.lame_global_flags* %433, i32 0, i32 64
  store i32 1, i32* %use_best_huffman680, align 4, !tbaa !60
  br label %if.end.681

if.end.681:                                       ; preds = %if.then.674, %if.end.670
  %434 = load %struct.lame_global_flags*, %struct.lame_global_flags** %gfp.addr, align 8, !tbaa !1
  %quality682 = getelementptr inbounds %struct.lame_global_flags, %struct.lame_global_flags* %434, i32 0, i32 6
  %435 = load i32, i32* %quality682, align 4, !tbaa !48
  %cmp683 = icmp eq i32 %435, 0
  br i1 %cmp683, label %if.then.685, label %if.end.692

if.then.685:                                      ; preds = %if.end.681
  %436 = load %struct.lame_global_flags*, %struct.lame_global_flags** %gfp.addr, align 8, !tbaa !1
  %filter_type686 = getelementptr inbounds %struct.lame_global_flags, %struct.lame_global_flags* %436, i32 0, i32 59
  store i32 1, i32* %filter_type686, align 4, !tbaa !35
  %437 = load %struct.lame_global_flags*, %struct.lame_global_flags** %gfp.addr, align 8, !tbaa !1
  %psymodel687 = getelementptr inbounds %struct.lame_global_flags, %struct.lame_global_flags* %437, i32 0, i32 63
  store i32 1, i32* %psymodel687, align 4, !tbaa !56
  %438 = load %struct.lame_global_flags*, %struct.lame_global_flags** %gfp.addr, align 8, !tbaa !1
  %quantization688 = getelementptr inbounds %struct.lame_global_flags, %struct.lame_global_flags* %438, i32 0, i32 60
  store i32 1, i32* %quantization688, align 4, !tbaa !57
  %439 = load %struct.lame_global_flags*, %struct.lame_global_flags** %gfp.addr, align 8, !tbaa !1
  %noise_shaping689 = getelementptr inbounds %struct.lame_global_flags, %struct.lame_global_flags* %439, i32 0, i32 61
  store i32 3, i32* %noise_shaping689, align 4, !tbaa !58
  %440 = load %struct.lame_global_flags*, %struct.lame_global_flags** %gfp.addr, align 8, !tbaa !1
  %noise_shaping_stop690 = getelementptr inbounds %struct.lame_global_flags, %struct.lame_global_flags* %440, i32 0, i32 62
  store i32 2, i32* %noise_shaping_stop690, align 4, !tbaa !59
  %441 = load %struct.lame_global_flags*, %struct.lame_global_flags** %gfp.addr, align 8, !tbaa !1
  %use_best_huffman691 = getelementptr inbounds %struct.lame_global_flags, %struct.lame_global_flags* %441, i32 0, i32 64
  store i32 2, i32* %use_best_huffman691, align 4, !tbaa !60
  call void @exit(i32 -99) #8
  unreachable

if.end.692:                                       ; preds = %if.end.681
  store i32 0, i32* %i, align 4, !tbaa !27
  br label %for.cond.693

for.cond.693:                                     ; preds = %for.inc.706, %if.end.692
  %442 = load i32, i32* %i, align 4, !tbaa !27
  %cmp694 = icmp slt i32 %442, 23
  br i1 %cmp694, label %for.body.696, label %for.end.708

for.body.696:                                     ; preds = %for.cond.693
  %443 = load i32, i32* %i, align 4, !tbaa !27
  %idxprom = sext i32 %443 to i64
  %444 = load %struct.lame_global_flags*, %struct.lame_global_flags** %gfp.addr, align 8, !tbaa !1
  %samplerate_index697 = getelementptr inbounds %struct.lame_global_flags, %struct.lame_global_flags* %444, i32 0, i32 51
  %445 = load i32, i32* %samplerate_index697, align 4, !tbaa !41
  %446 = load %struct.lame_global_flags*, %struct.lame_global_flags** %gfp.addr, align 8, !tbaa !1
  %version698 = getelementptr inbounds %struct.lame_global_flags, %struct.lame_global_flags* %446, i32 0, i32 43
  %447 = load i32, i32* %version698, align 4, !tbaa !42
  %mul699 = mul nsw i32 %447, 3
  %add700 = add nsw i32 %445, %mul699
  %idxprom701 = sext i32 %add700 to i64
  %arrayidx702 = getelementptr inbounds [6 x %struct.scalefac_struct], [6 x %struct.scalefac_struct]* @sfBandIndex, i32 0, i64 %idxprom701
  %l = getelementptr inbounds %struct.scalefac_struct, %struct.scalefac_struct* %arrayidx702, i32 0, i32 0
  %arrayidx703 = getelementptr inbounds [23 x i32], [23 x i32]* %l, i32 0, i64 %idxprom
  %448 = load i32, i32* %arrayidx703, align 4, !tbaa !27
  %449 = load i32, i32* %i, align 4, !tbaa !27
  %idxprom704 = sext i32 %449 to i64
  %arrayidx705 = getelementptr inbounds [23 x i32], [23 x i32]* getelementptr inbounds (%struct.scalefac_struct, %struct.scalefac_struct* @scalefac_band, i32 0, i32 0), i32 0, i64 %idxprom704
  store i32 %448, i32* %arrayidx705, align 4, !tbaa !27
  br label %for.inc.706

for.inc.706:                                      ; preds = %for.body.696
  %450 = load i32, i32* %i, align 4, !tbaa !27
  %inc707 = add nsw i32 %450, 1
  store i32 %inc707, i32* %i, align 4, !tbaa !27
  br label %for.cond.693

for.end.708:                                      ; preds = %for.cond.693
  store i32 0, i32* %i, align 4, !tbaa !27
  br label %for.cond.709

for.cond.709:                                     ; preds = %for.inc.723, %for.end.708
  %451 = load i32, i32* %i, align 4, !tbaa !27
  %cmp710 = icmp slt i32 %451, 14
  br i1 %cmp710, label %for.body.712, label %for.end.725

for.body.712:                                     ; preds = %for.cond.709
  %452 = load i32, i32* %i, align 4, !tbaa !27
  %idxprom713 = sext i32 %452 to i64
  %453 = load %struct.lame_global_flags*, %struct.lame_global_flags** %gfp.addr, align 8, !tbaa !1
  %samplerate_index714 = getelementptr inbounds %struct.lame_global_flags, %struct.lame_global_flags* %453, i32 0, i32 51
  %454 = load i32, i32* %samplerate_index714, align 4, !tbaa !41
  %455 = load %struct.lame_global_flags*, %struct.lame_global_flags** %gfp.addr, align 8, !tbaa !1
  %version715 = getelementptr inbounds %struct.lame_global_flags, %struct.lame_global_flags* %455, i32 0, i32 43
  %456 = load i32, i32* %version715, align 4, !tbaa !42
  %mul716 = mul nsw i32 %456, 3
  %add717 = add nsw i32 %454, %mul716
  %idxprom718 = sext i32 %add717 to i64
  %arrayidx719 = getelementptr inbounds [6 x %struct.scalefac_struct], [6 x %struct.scalefac_struct]* @sfBandIndex, i32 0, i64 %idxprom718
  %s = getelementptr inbounds %struct.scalefac_struct, %struct.scalefac_struct* %arrayidx719, i32 0, i32 1
  %arrayidx720 = getelementptr inbounds [14 x i32], [14 x i32]* %s, i32 0, i64 %idxprom713
  %457 = load i32, i32* %arrayidx720, align 4, !tbaa !27
  %458 = load i32, i32* %i, align 4, !tbaa !27
  %idxprom721 = sext i32 %458 to i64
  %arrayidx722 = getelementptr inbounds [14 x i32], [14 x i32]* getelementptr inbounds (%struct.scalefac_struct, %struct.scalefac_struct* @scalefac_band, i32 0, i32 1), i32 0, i64 %idxprom721
  store i32 %457, i32* %arrayidx722, align 4, !tbaa !27
  br label %for.inc.723

for.inc.723:                                      ; preds = %for.body.712
  %459 = load i32, i32* %i, align 4, !tbaa !27
  %inc724 = add nsw i32 %459, 1
  store i32 %inc724, i32* %i, align 4, !tbaa !27
  br label %for.cond.709

for.end.725:                                      ; preds = %for.cond.709
  %460 = load %struct.lame_global_flags*, %struct.lame_global_flags** %gfp.addr, align 8, !tbaa !1
  %bWriteVbrTag726 = getelementptr inbounds %struct.lame_global_flags, %struct.lame_global_flags* %460, i32 0, i32 5
  %461 = load i32, i32* %bWriteVbrTag726, align 4, !tbaa !50
  %tobool727 = icmp ne i32 %461, 0
  br i1 %tobool727, label %if.then.728, label %if.end.734

if.then.728:                                      ; preds = %for.end.725
  %462 = load %struct.lame_global_flags*, %struct.lame_global_flags** %gfp.addr, align 8, !tbaa !1
  %version729 = getelementptr inbounds %struct.lame_global_flags, %struct.lame_global_flags* %462, i32 0, i32 43
  %463 = load i32, i32* %version729, align 4, !tbaa !42
  %sub730 = sub nsw i32 1, %463
  %464 = load %struct.lame_global_flags*, %struct.lame_global_flags** %gfp.addr, align 8, !tbaa !1
  %mode731 = getelementptr inbounds %struct.lame_global_flags, %struct.lame_global_flags* %464, i32 0, i32 8
  %465 = load i32, i32* %mode731, align 4, !tbaa !11
  %466 = load %struct.lame_global_flags*, %struct.lame_global_flags** %gfp.addr, align 8, !tbaa !1
  %samplerate_index732 = getelementptr inbounds %struct.lame_global_flags, %struct.lame_global_flags* %466, i32 0, i32 51
  %467 = load i32, i32* %samplerate_index732, align 4, !tbaa !41
  %call733 = call i32 @InitVbrTag(%struct.bit_stream_struc* @bs, i32 %sub730, i32 %465, i32 %467)
  br label %if.end.734

if.end.734:                                       ; preds = %if.then.728, %for.end.725
  %468 = bitcast float* %compression_ratio to i8*
  call void @llvm.lifetime.end(i64 4, i8* %468) #1
  %469 = bitcast i32* %i to i8*
  call void @llvm.lifetime.end(i64 4, i8* %469) #1
  ret void
}

; Function Attrs: nounwind
declare void @llvm.lifetime.start(i64, i8* nocapture) #1

; Function Attrs: nounwind
declare void @llvm.memset.p0i8.i64(i8* nocapture, i8, i64, i32, i1) #1

declare void @InitFormatBitStream() #2

; Function Attrs: nounwind readnone
declare double @floor(double) #3

; Function Attrs: nounwind
declare double @log(double) #4

; Function Attrs: nounwind
declare void @llvm.lifetime.end(i64, i8* nocapture) #1

; Function Attrs: nounwind
declare double @cos(double) #4

declare i32 @fprintf(%struct._IO_FILE*, i8*, ...) #2

declare i32 @SmpFrqIndex(i64, i32*) #2

declare void @display_bitrates(%struct._IO_FILE*) #2

; Function Attrs: noreturn nounwind
declare void @exit(i32) #5

declare i32 @BitrateIndex(i32, i32, i32) #2

declare void @init_bit_stream_w(%struct.bit_stream_struc*) #2

declare i32 @InitVbrTag(%struct.bit_stream_struc*, i32, i32, i32) #2

; Function Attrs: nounwind uwtable
define void @lame_print_config(%struct.lame_global_flags* %gfp) #0 {
entry:
  %gfp.addr = alloca %struct.lame_global_flags*, align 8
  %out_samplerate = alloca float, align 4
  %in_samplerate = alloca float, align 4
  %compression = alloca float, align 4
  %__s1_len = alloca i64, align 8
  %__s2_len = alloca i64, align 8
  %tmp = alloca i32, align 4
  %__s1 = alloca i8*, align 8
  %__result = alloca i32, align 4
  %tmp89 = alloca i32, align 4
  %__s1_len100 = alloca i64, align 8
  %__s2_len102 = alloca i64, align 8
  %tmp103 = alloca i32, align 4
  %__s1109 = alloca i8*, align 8
  %__result111 = alloca i32, align 4
  %tmp149 = alloca i32, align 4
  store %struct.lame_global_flags* %gfp, %struct.lame_global_flags** %gfp.addr, align 8, !tbaa !1
  %0 = bitcast float* %out_samplerate to i8*
  call void @llvm.lifetime.start(i64 4, i8* %0) #1
  %1 = load %struct.lame_global_flags*, %struct.lame_global_flags** %gfp.addr, align 8, !tbaa !1
  %out_samplerate1 = getelementptr inbounds %struct.lame_global_flags, %struct.lame_global_flags* %1, i32 0, i32 3
  %2 = load i32, i32* %out_samplerate1, align 4, !tbaa !13
  %conv = sitofp i32 %2 to double
  %div = fdiv double %conv, 1.000000e+03
  %conv2 = fptrunc double %div to float
  store float %conv2, float* %out_samplerate, align 4, !tbaa !16
  %3 = bitcast float* %in_samplerate to i8*
  call void @llvm.lifetime.start(i64 4, i8* %3) #1
  %4 = load %struct.lame_global_flags*, %struct.lame_global_flags** %gfp.addr, align 8, !tbaa !1
  %resample_ratio = getelementptr inbounds %struct.lame_global_flags, %struct.lame_global_flags* %4, i32 0, i32 49
  %5 = load float, float* %resample_ratio, align 4, !tbaa !21
  %6 = load float, float* %out_samplerate, align 4, !tbaa !16
  %mul = fmul float %5, %6
  store float %mul, float* %in_samplerate, align 4, !tbaa !16
  %7 = bitcast float* %compression to i8*
  call void @llvm.lifetime.start(i64 4, i8* %7) #1
  %8 = load %struct.lame_global_flags*, %struct.lame_global_flags** %gfp.addr, align 8, !tbaa !1
  %stereo = getelementptr inbounds %struct.lame_global_flags, %struct.lame_global_flags* %8, i32 0, i32 46
  %9 = load i32, i32* %stereo, align 4, !tbaa !12
  %mul3 = mul nsw i32 %9, 16
  %conv4 = sitofp i32 %mul3 to float
  %10 = load float, float* %out_samplerate, align 4, !tbaa !16
  %mul5 = fmul float %conv4, %10
  %11 = load %struct.lame_global_flags*, %struct.lame_global_flags** %gfp.addr, align 8, !tbaa !1
  %brate = getelementptr inbounds %struct.lame_global_flags, %struct.lame_global_flags* %11, i32 0, i32 11
  %12 = load i32, i32* %brate, align 4, !tbaa !15
  %conv6 = sitofp i32 %12 to float
  %div7 = fdiv float %mul5, %conv6
  store float %div7, float* %compression, align 4, !tbaa !16
  %13 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !tbaa !1
  call void @lame_print_version(%struct._IO_FILE* %13)
  %14 = load %struct.lame_global_flags*, %struct.lame_global_flags** %gfp.addr, align 8, !tbaa !1
  %num_channels = getelementptr inbounds %struct.lame_global_flags, %struct.lame_global_flags* %14, i32 0, i32 1
  %15 = load i32, i32* %num_channels, align 4, !tbaa !10
  %cmp = icmp eq i32 %15, 2
  br i1 %cmp, label %land.lhs.true, label %if.end

land.lhs.true:                                    ; preds = %entry
  %16 = load %struct.lame_global_flags*, %struct.lame_global_flags** %gfp.addr, align 8, !tbaa !1
  %stereo9 = getelementptr inbounds %struct.lame_global_flags, %struct.lame_global_flags* %16, i32 0, i32 46
  %17 = load i32, i32* %stereo9, align 4, !tbaa !12
  %cmp10 = icmp eq i32 %17, 1
  br i1 %cmp10, label %if.then, label %if.end

if.then:                                          ; preds = %land.lhs.true
  %18 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !tbaa !1
  %call = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %18, i8* getelementptr inbounds ([68 x i8], [68 x i8]* @.str.5, i32 0, i32 0))
  br label %if.end

if.end:                                           ; preds = %if.then, %land.lhs.true, %entry
  %19 = load %struct.lame_global_flags*, %struct.lame_global_flags** %gfp.addr, align 8, !tbaa !1
  %resample_ratio12 = getelementptr inbounds %struct.lame_global_flags, %struct.lame_global_flags* %19, i32 0, i32 49
  %20 = load float, float* %resample_ratio12, align 4, !tbaa !21
  %cmp13 = fcmp une float %20, 1.000000e+00
  br i1 %cmp13, label %if.then.15, label %if.end.19

if.then.15:                                       ; preds = %if.end
  %21 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !tbaa !1
  %22 = load float, float* %in_samplerate, align 4, !tbaa !16
  %conv16 = fptosi float %22 to i32
  %23 = load float, float* %out_samplerate, align 4, !tbaa !16
  %conv17 = fptosi float %23 to i32
  %call18 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %21, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.6, i32 0, i32 0), i32 %conv16, i32 %conv17)
  br label %if.end.19

if.end.19:                                        ; preds = %if.then.15, %if.end
  %24 = load %struct.lame_global_flags*, %struct.lame_global_flags** %gfp.addr, align 8, !tbaa !1
  %highpass2 = getelementptr inbounds %struct.lame_global_flags, %struct.lame_global_flags* %24, i32 0, i32 56
  %25 = load float, float* %highpass2, align 4, !tbaa !33
  %conv20 = fpext float %25 to double
  %cmp21 = fcmp ogt double %conv20, 0.000000e+00
  br i1 %cmp21, label %if.then.23, label %if.end.32

if.then.23:                                       ; preds = %if.end.19
  %26 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !tbaa !1
  %27 = load %struct.lame_global_flags*, %struct.lame_global_flags** %gfp.addr, align 8, !tbaa !1
  %highpass1 = getelementptr inbounds %struct.lame_global_flags, %struct.lame_global_flags* %27, i32 0, i32 55
  %28 = load float, float* %highpass1, align 4, !tbaa !31
  %29 = load float, float* %out_samplerate, align 4, !tbaa !16
  %mul24 = fmul float %28, %29
  %mul25 = fmul float %mul24, 5.000000e+02
  %conv26 = fpext float %mul25 to double
  %30 = load %struct.lame_global_flags*, %struct.lame_global_flags** %gfp.addr, align 8, !tbaa !1
  %highpass227 = getelementptr inbounds %struct.lame_global_flags, %struct.lame_global_flags* %30, i32 0, i32 56
  %31 = load float, float* %highpass227, align 4, !tbaa !33
  %32 = load float, float* %out_samplerate, align 4, !tbaa !16
  %mul28 = fmul float %31, %32
  %mul29 = fmul float %mul28, 5.000000e+02
  %conv30 = fpext float %mul29 to double
  %call31 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %26, i8* getelementptr inbounds ([70 x i8], [70 x i8]* @.str.7, i32 0, i32 0), double %conv26, double %conv30)
  br label %if.end.32

if.end.32:                                        ; preds = %if.then.23, %if.end.19
  %33 = load %struct.lame_global_flags*, %struct.lame_global_flags** %gfp.addr, align 8, !tbaa !1
  %lowpass1 = getelementptr inbounds %struct.lame_global_flags, %struct.lame_global_flags* %33, i32 0, i32 53
  %34 = load float, float* %lowpass1, align 4, !tbaa !28
  %conv33 = fpext float %34 to double
  %cmp34 = fcmp ogt double %conv33, 0.000000e+00
  br i1 %cmp34, label %if.then.36, label %if.end.45

if.then.36:                                       ; preds = %if.end.32
  %35 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !tbaa !1
  %36 = load %struct.lame_global_flags*, %struct.lame_global_flags** %gfp.addr, align 8, !tbaa !1
  %lowpass137 = getelementptr inbounds %struct.lame_global_flags, %struct.lame_global_flags* %36, i32 0, i32 53
  %37 = load float, float* %lowpass137, align 4, !tbaa !28
  %38 = load float, float* %out_samplerate, align 4, !tbaa !16
  %mul38 = fmul float %37, %38
  %mul39 = fmul float %mul38, 5.000000e+02
  %conv40 = fpext float %mul39 to double
  %39 = load %struct.lame_global_flags*, %struct.lame_global_flags** %gfp.addr, align 8, !tbaa !1
  %lowpass2 = getelementptr inbounds %struct.lame_global_flags, %struct.lame_global_flags* %39, i32 0, i32 54
  %40 = load float, float* %lowpass2, align 4, !tbaa !29
  %41 = load float, float* %out_samplerate, align 4, !tbaa !16
  %mul41 = fmul float %40, %41
  %mul42 = fmul float %mul41, 5.000000e+02
  %conv43 = fpext float %mul42 to double
  %call44 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %35, i8* getelementptr inbounds ([70 x i8], [70 x i8]* @.str.8, i32 0, i32 0), double %conv40, double %conv43)
  br label %if.end.45

if.end.45:                                        ; preds = %if.then.36, %if.end.32
  %42 = load %struct.lame_global_flags*, %struct.lame_global_flags** %gfp.addr, align 8, !tbaa !1
  %gtkflag = getelementptr inbounds %struct.lame_global_flags, %struct.lame_global_flags* %42, i32 0, i32 4
  %43 = load i32, i32* %gtkflag, align 4, !tbaa !55
  %tobool = icmp ne i32 %43, 0
  br i1 %tobool, label %if.then.46, label %if.else

if.then.46:                                       ; preds = %if.end.45
  %44 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !tbaa !1
  %45 = load %struct.lame_global_flags*, %struct.lame_global_flags** %gfp.addr, align 8, !tbaa !1
  %inPath = getelementptr inbounds %struct.lame_global_flags, %struct.lame_global_flags* %45, i32 0, i32 31
  %46 = load i8*, i8** %inPath, align 8, !tbaa !61
  %call47 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %44, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.9, i32 0, i32 0), i8* %46)
  br label %if.end.185

if.else:                                          ; preds = %if.end.45
  %47 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !tbaa !1
  %48 = bitcast i64* %__s1_len to i8*
  call void @llvm.lifetime.start(i64 8, i8* %48) #1
  %49 = bitcast i64* %__s2_len to i8*
  call void @llvm.lifetime.start(i64 8, i8* %49) #1
  br i1 icmp eq (i64 sub (i64 ptrtoint (i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.11, i32 0, i64 1) to i64), i64 ptrtoint ([2 x i8]* @.str.11 to i64)), i64 1), label %land.lhs.true.48, label %cond.false

land.lhs.true.48:                                 ; preds = %if.else
  store i64 1, i64* %__s2_len, align 8, !tbaa !62
  %50 = load i64, i64* %__s2_len, align 8, !tbaa !62
  %cmp49 = icmp ult i64 %50, 4
  br i1 %cmp49, label %cond.true, label %cond.false

cond.true:                                        ; preds = %land.lhs.true.48
  %51 = bitcast i8** %__s1 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %51) #1
  %52 = load %struct.lame_global_flags*, %struct.lame_global_flags** %gfp.addr, align 8, !tbaa !1
  %inPath52 = getelementptr inbounds %struct.lame_global_flags, %struct.lame_global_flags* %52, i32 0, i32 31
  %53 = load i8*, i8** %inPath52, align 8, !tbaa !61
  store i8* %53, i8** %__s1, align 8, !tbaa !1
  %54 = bitcast i32* %__result to i8*
  call void @llvm.lifetime.start(i64 4, i8* %54) #1
  %55 = load i8*, i8** %__s1, align 8, !tbaa !1
  %arrayidx = getelementptr inbounds i8, i8* %55, i64 0
  %56 = load i8, i8* %arrayidx, align 1, !tbaa !52
  %conv54 = zext i8 %56 to i32
  %57 = load i8, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.11, i32 0, i32 0), align 1, !tbaa !52
  %conv55 = zext i8 %57 to i32
  %sub = sub nsw i32 %conv54, %conv55
  store i32 %sub, i32* %__result, align 4, !tbaa !27
  %58 = load i64, i64* %__s2_len, align 8, !tbaa !62
  %cmp56 = icmp ugt i64 %58, 0
  br i1 %cmp56, label %land.lhs.true.58, label %if.end.88

land.lhs.true.58:                                 ; preds = %cond.true
  %59 = load i32, i32* %__result, align 4, !tbaa !27
  %cmp59 = icmp eq i32 %59, 0
  br i1 %cmp59, label %if.then.61, label %if.end.88

if.then.61:                                       ; preds = %land.lhs.true.58
  %60 = load i8*, i8** %__s1, align 8, !tbaa !1
  %arrayidx62 = getelementptr inbounds i8, i8* %60, i64 1
  %61 = load i8, i8* %arrayidx62, align 1, !tbaa !52
  %conv63 = zext i8 %61 to i32
  %62 = load i8, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.11, i32 0, i64 1), align 1, !tbaa !52
  %conv64 = zext i8 %62 to i32
  %sub65 = sub nsw i32 %conv63, %conv64
  store i32 %sub65, i32* %__result, align 4, !tbaa !27
  %63 = load i64, i64* %__s2_len, align 8, !tbaa !62
  %cmp66 = icmp ugt i64 %63, 1
  br i1 %cmp66, label %land.lhs.true.68, label %if.end.87

land.lhs.true.68:                                 ; preds = %if.then.61
  %64 = load i32, i32* %__result, align 4, !tbaa !27
  %cmp69 = icmp eq i32 %64, 0
  br i1 %cmp69, label %if.then.71, label %if.end.87

if.then.71:                                       ; preds = %land.lhs.true.68
  %65 = load i8*, i8** %__s1, align 8, !tbaa !1
  %arrayidx72 = getelementptr inbounds i8, i8* %65, i64 2
  %66 = load i8, i8* %arrayidx72, align 1, !tbaa !52
  %conv73 = zext i8 %66 to i32
  %67 = load i8, i8* getelementptr inbounds (i8, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.11, i32 0, i32 0), i64 2), align 1, !tbaa !52
  %conv74 = zext i8 %67 to i32
  %sub75 = sub nsw i32 %conv73, %conv74
  store i32 %sub75, i32* %__result, align 4, !tbaa !27
  %68 = load i64, i64* %__s2_len, align 8, !tbaa !62
  %cmp76 = icmp ugt i64 %68, 2
  br i1 %cmp76, label %land.lhs.true.78, label %if.end.86

land.lhs.true.78:                                 ; preds = %if.then.71
  %69 = load i32, i32* %__result, align 4, !tbaa !27
  %cmp79 = icmp eq i32 %69, 0
  br i1 %cmp79, label %if.then.81, label %if.end.86

if.then.81:                                       ; preds = %land.lhs.true.78
  %70 = load i8*, i8** %__s1, align 8, !tbaa !1
  %arrayidx82 = getelementptr inbounds i8, i8* %70, i64 3
  %71 = load i8, i8* %arrayidx82, align 1, !tbaa !52
  %conv83 = zext i8 %71 to i32
  %72 = load i8, i8* getelementptr inbounds (i8, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.11, i32 0, i32 0), i64 3), align 1, !tbaa !52
  %conv84 = zext i8 %72 to i32
  %sub85 = sub nsw i32 %conv83, %conv84
  store i32 %sub85, i32* %__result, align 4, !tbaa !27
  br label %if.end.86

if.end.86:                                        ; preds = %if.then.81, %land.lhs.true.78, %if.then.71
  br label %if.end.87

if.end.87:                                        ; preds = %if.end.86, %land.lhs.true.68, %if.then.61
  br label %if.end.88

if.end.88:                                        ; preds = %if.end.87, %land.lhs.true.58, %cond.true
  %73 = load i32, i32* %__result, align 4, !tbaa !27
  store i32 %73, i32* %tmp89, !tbaa !27
  %74 = bitcast i32* %__result to i8*
  call void @llvm.lifetime.end(i64 4, i8* %74) #1
  %75 = bitcast i8** %__s1 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %75) #1
  %76 = load i32, i32* %tmp89, !tbaa !27
  br label %cond.end

cond.false:                                       ; preds = %land.lhs.true.48, %if.else
  %77 = load %struct.lame_global_flags*, %struct.lame_global_flags** %gfp.addr, align 8, !tbaa !1
  %inPath90 = getelementptr inbounds %struct.lame_global_flags, %struct.lame_global_flags* %77, i32 0, i32 31
  %78 = load i8*, i8** %inPath90, align 8, !tbaa !61
  %call91 = call i32 @strcmp(i8* %78, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.11, i32 0, i32 0)) #1
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %if.end.88
  %cond = phi i32 [ %76, %if.end.88 ], [ %call91, %cond.false ]
  store i32 %cond, i32* %tmp, !tbaa !27
  %79 = bitcast i64* %__s2_len to i8*
  call void @llvm.lifetime.end(i64 8, i8* %79) #1
  %80 = bitcast i64* %__s1_len to i8*
  call void @llvm.lifetime.end(i64 8, i8* %80) #1
  %81 = load i32, i32* %tmp, !tbaa !27
  %tobool92 = icmp ne i32 %81, 0
  br i1 %tobool92, label %cond.true.93, label %cond.false.96

cond.true.93:                                     ; preds = %cond.end
  %82 = load %struct.lame_global_flags*, %struct.lame_global_flags** %gfp.addr, align 8, !tbaa !1
  %inPath94 = getelementptr inbounds %struct.lame_global_flags, %struct.lame_global_flags* %82, i32 0, i32 31
  %83 = load i8*, i8** %inPath94, align 8, !tbaa !61
  %call95 = call i8* @mybasename(i8* %83)
  br label %cond.end.97

cond.false.96:                                    ; preds = %cond.end
  br label %cond.end.97

cond.end.97:                                      ; preds = %cond.false.96, %cond.true.93
  %cond98 = phi i8* [ %call95, %cond.true.93 ], [ getelementptr inbounds ([6 x i8], [6 x i8]* @.str.12, i32 0, i32 0), %cond.false.96 ]
  %84 = bitcast i64* %__s1_len100 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %84) #1
  %85 = bitcast i64* %__s2_len102 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %85) #1
  br i1 icmp eq (i64 sub (i64 ptrtoint (i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.11, i32 0, i64 1) to i64), i64 ptrtoint ([2 x i8]* @.str.11 to i64)), i64 1), label %land.lhs.true.104, label %cond.false.150

land.lhs.true.104:                                ; preds = %cond.end.97
  store i64 1, i64* %__s2_len102, align 8, !tbaa !62
  %86 = load i64, i64* %__s2_len102, align 8, !tbaa !62
  %cmp105 = icmp ult i64 %86, 4
  br i1 %cmp105, label %cond.true.107, label %cond.false.150

cond.true.107:                                    ; preds = %land.lhs.true.104
  %87 = bitcast i8** %__s1109 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %87) #1
  %88 = load %struct.lame_global_flags*, %struct.lame_global_flags** %gfp.addr, align 8, !tbaa !1
  %outPath = getelementptr inbounds %struct.lame_global_flags, %struct.lame_global_flags* %88, i32 0, i32 32
  %89 = load i8*, i8** %outPath, align 8, !tbaa !51
  store i8* %89, i8** %__s1109, align 8, !tbaa !1
  %90 = bitcast i32* %__result111 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %90) #1
  %91 = load i8*, i8** %__s1109, align 8, !tbaa !1
  %arrayidx112 = getelementptr inbounds i8, i8* %91, i64 0
  %92 = load i8, i8* %arrayidx112, align 1, !tbaa !52
  %conv113 = zext i8 %92 to i32
  %93 = load i8, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.11, i32 0, i32 0), align 1, !tbaa !52
  %conv114 = zext i8 %93 to i32
  %sub115 = sub nsw i32 %conv113, %conv114
  store i32 %sub115, i32* %__result111, align 4, !tbaa !27
  %94 = load i64, i64* %__s2_len102, align 8, !tbaa !62
  %cmp116 = icmp ugt i64 %94, 0
  br i1 %cmp116, label %land.lhs.true.118, label %if.end.148

land.lhs.true.118:                                ; preds = %cond.true.107
  %95 = load i32, i32* %__result111, align 4, !tbaa !27
  %cmp119 = icmp eq i32 %95, 0
  br i1 %cmp119, label %if.then.121, label %if.end.148

if.then.121:                                      ; preds = %land.lhs.true.118
  %96 = load i8*, i8** %__s1109, align 8, !tbaa !1
  %arrayidx122 = getelementptr inbounds i8, i8* %96, i64 1
  %97 = load i8, i8* %arrayidx122, align 1, !tbaa !52
  %conv123 = zext i8 %97 to i32
  %98 = load i8, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.11, i32 0, i64 1), align 1, !tbaa !52
  %conv124 = zext i8 %98 to i32
  %sub125 = sub nsw i32 %conv123, %conv124
  store i32 %sub125, i32* %__result111, align 4, !tbaa !27
  %99 = load i64, i64* %__s2_len102, align 8, !tbaa !62
  %cmp126 = icmp ugt i64 %99, 1
  br i1 %cmp126, label %land.lhs.true.128, label %if.end.147

land.lhs.true.128:                                ; preds = %if.then.121
  %100 = load i32, i32* %__result111, align 4, !tbaa !27
  %cmp129 = icmp eq i32 %100, 0
  br i1 %cmp129, label %if.then.131, label %if.end.147

if.then.131:                                      ; preds = %land.lhs.true.128
  %101 = load i8*, i8** %__s1109, align 8, !tbaa !1
  %arrayidx132 = getelementptr inbounds i8, i8* %101, i64 2
  %102 = load i8, i8* %arrayidx132, align 1, !tbaa !52
  %conv133 = zext i8 %102 to i32
  %103 = load i8, i8* getelementptr inbounds (i8, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.11, i32 0, i32 0), i64 2), align 1, !tbaa !52
  %conv134 = zext i8 %103 to i32
  %sub135 = sub nsw i32 %conv133, %conv134
  store i32 %sub135, i32* %__result111, align 4, !tbaa !27
  %104 = load i64, i64* %__s2_len102, align 8, !tbaa !62
  %cmp136 = icmp ugt i64 %104, 2
  br i1 %cmp136, label %land.lhs.true.138, label %if.end.146

land.lhs.true.138:                                ; preds = %if.then.131
  %105 = load i32, i32* %__result111, align 4, !tbaa !27
  %cmp139 = icmp eq i32 %105, 0
  br i1 %cmp139, label %if.then.141, label %if.end.146

if.then.141:                                      ; preds = %land.lhs.true.138
  %106 = load i8*, i8** %__s1109, align 8, !tbaa !1
  %arrayidx142 = getelementptr inbounds i8, i8* %106, i64 3
  %107 = load i8, i8* %arrayidx142, align 1, !tbaa !52
  %conv143 = zext i8 %107 to i32
  %108 = load i8, i8* getelementptr inbounds (i8, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.11, i32 0, i32 0), i64 3), align 1, !tbaa !52
  %conv144 = zext i8 %108 to i32
  %sub145 = sub nsw i32 %conv143, %conv144
  store i32 %sub145, i32* %__result111, align 4, !tbaa !27
  br label %if.end.146

if.end.146:                                       ; preds = %if.then.141, %land.lhs.true.138, %if.then.131
  br label %if.end.147

if.end.147:                                       ; preds = %if.end.146, %land.lhs.true.128, %if.then.121
  br label %if.end.148

if.end.148:                                       ; preds = %if.end.147, %land.lhs.true.118, %cond.true.107
  %109 = load i32, i32* %__result111, align 4, !tbaa !27
  store i32 %109, i32* %tmp149, !tbaa !27
  %110 = bitcast i32* %__result111 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %110) #1
  %111 = bitcast i8** %__s1109 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %111) #1
  %112 = load i32, i32* %tmp149, !tbaa !27
  br label %cond.end.153

cond.false.150:                                   ; preds = %land.lhs.true.104, %cond.end.97
  %113 = load %struct.lame_global_flags*, %struct.lame_global_flags** %gfp.addr, align 8, !tbaa !1
  %outPath151 = getelementptr inbounds %struct.lame_global_flags, %struct.lame_global_flags* %113, i32 0, i32 32
  %114 = load i8*, i8** %outPath151, align 8, !tbaa !51
  %call152 = call i32 @strcmp(i8* %114, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.11, i32 0, i32 0)) #1
  br label %cond.end.153

cond.end.153:                                     ; preds = %cond.false.150, %if.end.148
  %cond154 = phi i32 [ %112, %if.end.148 ], [ %call152, %cond.false.150 ]
  store i32 %cond154, i32* %tmp103, !tbaa !27
  %115 = bitcast i64* %__s2_len102 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %115) #1
  %116 = bitcast i64* %__s1_len100 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %116) #1
  %117 = load i32, i32* %tmp103, !tbaa !27
  %tobool155 = icmp ne i32 %117, 0
  br i1 %tobool155, label %cond.true.156, label %cond.false.159

cond.true.156:                                    ; preds = %cond.end.153
  %118 = load %struct.lame_global_flags*, %struct.lame_global_flags** %gfp.addr, align 8, !tbaa !1
  %outPath157 = getelementptr inbounds %struct.lame_global_flags, %struct.lame_global_flags* %118, i32 0, i32 32
  %119 = load i8*, i8** %outPath157, align 8, !tbaa !51
  %call158 = call i8* @mybasename(i8* %119)
  br label %cond.end.160

cond.false.159:                                   ; preds = %cond.end.153
  br label %cond.end.160

cond.end.160:                                     ; preds = %cond.false.159, %cond.true.156
  %cond161 = phi i8* [ %call158, %cond.true.156 ], [ getelementptr inbounds ([7 x i8], [7 x i8]* @.str.13, i32 0, i32 0), %cond.false.159 ]
  %call162 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %47, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.10, i32 0, i32 0), i8* %cond98, i8* %cond161)
  %120 = load %struct.lame_global_flags*, %struct.lame_global_flags** %gfp.addr, align 8, !tbaa !1
  %VBR = getelementptr inbounds %struct.lame_global_flags, %struct.lame_global_flags* %120, i32 0, i32 21
  %121 = load i32, i32* %VBR, align 4, !tbaa !17
  %tobool163 = icmp ne i32 %121, 0
  br i1 %tobool163, label %if.then.164, label %if.else.171

if.then.164:                                      ; preds = %cond.end.160
  %122 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !tbaa !1
  %123 = load %struct.lame_global_flags*, %struct.lame_global_flags** %gfp.addr, align 8, !tbaa !1
  %out_samplerate165 = getelementptr inbounds %struct.lame_global_flags, %struct.lame_global_flags* %123, i32 0, i32 3
  %124 = load i32, i32* %out_samplerate165, align 4, !tbaa !13
  %conv166 = sitofp i32 %124 to double
  %div167 = fdiv double %conv166, 1.000000e+03
  %125 = load %struct.lame_global_flags*, %struct.lame_global_flags** %gfp.addr, align 8, !tbaa !1
  %VBR_q = getelementptr inbounds %struct.lame_global_flags, %struct.lame_global_flags* %125, i32 0, i32 22
  %126 = load i32, i32* %VBR_q, align 4, !tbaa !24
  %127 = load %struct.lame_global_flags*, %struct.lame_global_flags** %gfp.addr, align 8, !tbaa !1
  %mode = getelementptr inbounds %struct.lame_global_flags, %struct.lame_global_flags* %127, i32 0, i32 8
  %128 = load i32, i32* %mode, align 4, !tbaa !11
  %idxprom = sext i32 %128 to i64
  %arrayidx168 = getelementptr inbounds [4 x i8*], [4 x i8*]* @lame_print_config.mode_names, i32 0, i64 %idxprom
  %129 = load i8*, i8** %arrayidx168, align 8, !tbaa !1
  %130 = load %struct.lame_global_flags*, %struct.lame_global_flags** %gfp.addr, align 8, !tbaa !1
  %version = getelementptr inbounds %struct.lame_global_flags, %struct.lame_global_flags* %130, i32 0, i32 43
  %131 = load i32, i32* %version, align 4, !tbaa !42
  %sub169 = sub nsw i32 2, %131
  %132 = load %struct.lame_global_flags*, %struct.lame_global_flags** %gfp.addr, align 8, !tbaa !1
  %quality = getelementptr inbounds %struct.lame_global_flags, %struct.lame_global_flags* %132, i32 0, i32 6
  %133 = load i32, i32* %quality, align 4, !tbaa !48
  %call170 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %122, i8* getelementptr inbounds ([59 x i8], [59 x i8]* @.str.14, i32 0, i32 0), double %div167, i32 %126, i8* %129, i32 %sub169, i32 %133)
  br label %if.end.184

if.else.171:                                      ; preds = %cond.end.160
  %134 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !tbaa !1
  %135 = load %struct.lame_global_flags*, %struct.lame_global_flags** %gfp.addr, align 8, !tbaa !1
  %out_samplerate172 = getelementptr inbounds %struct.lame_global_flags, %struct.lame_global_flags* %135, i32 0, i32 3
  %136 = load i32, i32* %out_samplerate172, align 4, !tbaa !13
  %conv173 = sitofp i32 %136 to double
  %div174 = fdiv double %conv173, 1.000000e+03
  %137 = load %struct.lame_global_flags*, %struct.lame_global_flags** %gfp.addr, align 8, !tbaa !1
  %brate175 = getelementptr inbounds %struct.lame_global_flags, %struct.lame_global_flags* %137, i32 0, i32 11
  %138 = load i32, i32* %brate175, align 4, !tbaa !15
  %139 = load %struct.lame_global_flags*, %struct.lame_global_flags** %gfp.addr, align 8, !tbaa !1
  %mode176 = getelementptr inbounds %struct.lame_global_flags, %struct.lame_global_flags* %139, i32 0, i32 8
  %140 = load i32, i32* %mode176, align 4, !tbaa !11
  %idxprom177 = sext i32 %140 to i64
  %arrayidx178 = getelementptr inbounds [4 x i8*], [4 x i8*]* @lame_print_config.mode_names, i32 0, i64 %idxprom177
  %141 = load i8*, i8** %arrayidx178, align 8, !tbaa !1
  %142 = load %struct.lame_global_flags*, %struct.lame_global_flags** %gfp.addr, align 8, !tbaa !1
  %version179 = getelementptr inbounds %struct.lame_global_flags, %struct.lame_global_flags* %142, i32 0, i32 43
  %143 = load i32, i32* %version179, align 4, !tbaa !42
  %sub180 = sub nsw i32 2, %143
  %144 = load float, float* %compression, align 4, !tbaa !16
  %conv181 = fpext float %144 to double
  %145 = load %struct.lame_global_flags*, %struct.lame_global_flags** %gfp.addr, align 8, !tbaa !1
  %quality182 = getelementptr inbounds %struct.lame_global_flags, %struct.lame_global_flags* %145, i32 0, i32 6
  %146 = load i32, i32* %quality182, align 4, !tbaa !48
  %call183 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %134, i8* getelementptr inbounds ([67 x i8], [67 x i8]* @.str.15, i32 0, i32 0), double %div174, i32 %138, i8* %141, i32 %sub180, double %conv181, i32 %146)
  br label %if.end.184

if.end.184:                                       ; preds = %if.else.171, %if.then.164
  br label %if.end.185

if.end.185:                                       ; preds = %if.end.184, %if.then.46
  %147 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !tbaa !1
  %call186 = call i32 @fflush(%struct._IO_FILE* %147)
  %148 = bitcast float* %compression to i8*
  call void @llvm.lifetime.end(i64 4, i8* %148) #1
  %149 = bitcast float* %in_samplerate to i8*
  call void @llvm.lifetime.end(i64 4, i8* %149) #1
  %150 = bitcast float* %out_samplerate to i8*
  call void @llvm.lifetime.end(i64 4, i8* %150) #1
  ret void
}

declare void @lame_print_version(%struct._IO_FILE*) #2

; Function Attrs: nounwind
declare i32 @strcmp(i8*, i8*) #4

; Function Attrs: nounwind uwtable
define internal i8* @mybasename(i8* %str) #0 {
entry:
  %str.addr = alloca i8*, align 8
  %base = alloca i8*, align 8
  store i8* %str, i8** %str.addr, align 8, !tbaa !1
  %0 = bitcast i8** %base to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #1
  %1 = load i8*, i8** %str.addr, align 8, !tbaa !1
  %call = call i8* @strrchr(i8* %1, i32 47) #9
  store i8* %call, i8** %base, align 8, !tbaa !1
  %2 = load i8*, i8** %base, align 8, !tbaa !1
  %tobool = icmp ne i8* %2, null
  br i1 %tobool, label %cond.true, label %cond.false

cond.true:                                        ; preds = %entry
  %3 = load i8*, i8** %base, align 8, !tbaa !1
  %add.ptr = getelementptr inbounds i8, i8* %3, i64 1
  br label %cond.end

cond.false:                                       ; preds = %entry
  %4 = load i8*, i8** %str.addr, align 8, !tbaa !1
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i8* [ %add.ptr, %cond.true ], [ %4, %cond.false ]
  %5 = bitcast i8** %base to i8*
  call void @llvm.lifetime.end(i64 8, i8* %5) #1
  ret i8* %cond
}

declare i32 @fflush(%struct._IO_FILE*) #2

; Function Attrs: nounwind uwtable
define i32 @lame_encode_frame(%struct.lame_global_flags* %gfp, i16* %inbuf_l, i16* %inbuf_r, i32 %mf_size, i8* %mp3buf, i32 %mp3buf_size) #0 {
entry:
  %gfp.addr = alloca %struct.lame_global_flags*, align 8
  %inbuf_l.addr = alloca i16*, align 8
  %inbuf_r.addr = alloca i16*, align 8
  %mf_size.addr = alloca i32, align 4
  %mp3buf.addr = alloca i8*, align 8
  %mp3buf_size.addr = alloca i32, align 4
  %xr = alloca [2 x [2 x [576 x double]]], align 16
  %l3_enc = alloca [2 x [2 x [576 x i32]]], align 16
  %mp3count = alloca i32, align 4
  %masking_ratio = alloca [2 x [2 x %struct.III_psy_ratio]], align 16
  %masking_MS_ratio = alloca [2 x [2 x %struct.III_psy_ratio]], align 16
  %masking = alloca [2 x [2 x %struct.III_psy_ratio]]*, align 8
  %scalefac = alloca [2 x [2 x %struct.III_scalefac_t]], align 16
  %inbuf = alloca [2 x i16*], align 16
  %pe = alloca [2 x [2 x double]], align 16
  %pe_MS = alloca [2 x [2 x double]], align 16
  %pe_use = alloca [2 x [2 x double]]*, align 8
  %ch = alloca i32, align 4
  %gr = alloca i32, align 4
  %mean_bits = alloca i32, align 4
  %bitsPerFrame = alloca i32, align 4
  %check_ms_stereo = alloca i32, align 4
  %ms_ratio_next = alloca double, align 8
  %ms_ratio_prev = alloca double, align 8
  %avg_slots_per_frame = alloca double, align 8
  %sampfreq = alloca double, align 8
  %bit_rate = alloca i32, align 4
  %mod = alloca i32, align 4
  %bufp = alloca [2 x i16*], align 16
  %blocktype = alloca [2 x i32], align 4
  %cod_info = alloca %struct.gr_info*, align 8
  %ms_ratio_ave = alloca double, align 8
  %ms_ener_ratio_ave = alloca double, align 8
  store %struct.lame_global_flags* %gfp, %struct.lame_global_flags** %gfp.addr, align 8, !tbaa !1
  store i16* %inbuf_l, i16** %inbuf_l.addr, align 8, !tbaa !1
  store i16* %inbuf_r, i16** %inbuf_r.addr, align 8, !tbaa !1
  store i32 %mf_size, i32* %mf_size.addr, align 4, !tbaa !27
  store i8* %mp3buf, i8** %mp3buf.addr, align 8, !tbaa !1
  store i32 %mp3buf_size, i32* %mp3buf_size.addr, align 4, !tbaa !27
  %0 = bitcast [2 x [2 x [576 x double]]]* %xr to i8*
  call void @llvm.lifetime.start(i64 18432, i8* %0) #1
  %1 = bitcast [2 x [2 x [576 x i32]]]* %l3_enc to i8*
  call void @llvm.lifetime.start(i64 9216, i8* %1) #1
  %2 = bitcast i32* %mp3count to i8*
  call void @llvm.lifetime.start(i64 4, i8* %2) #1
  %3 = bitcast [2 x [2 x %struct.III_psy_ratio]]* %masking_ratio to i8*
  call void @llvm.lifetime.start(i64 3904, i8* %3) #1
  %4 = bitcast [2 x [2 x %struct.III_psy_ratio]]* %masking_MS_ratio to i8*
  call void @llvm.lifetime.start(i64 3904, i8* %4) #1
  %5 = bitcast [2 x [2 x %struct.III_psy_ratio]]** %masking to i8*
  call void @llvm.lifetime.start(i64 8, i8* %5) #1
  %6 = bitcast [2 x [2 x %struct.III_scalefac_t]]* %scalefac to i8*
  call void @llvm.lifetime.start(i64 976, i8* %6) #1
  %7 = bitcast [2 x i16*]* %inbuf to i8*
  call void @llvm.lifetime.start(i64 16, i8* %7) #1
  %8 = bitcast [2 x [2 x double]]* %pe to i8*
  call void @llvm.lifetime.start(i64 32, i8* %8) #1
  %9 = bitcast [2 x [2 x double]]* %pe_MS to i8*
  call void @llvm.lifetime.start(i64 32, i8* %9) #1
  %10 = bitcast [2 x [2 x double]]** %pe_use to i8*
  call void @llvm.lifetime.start(i64 8, i8* %10) #1
  %11 = bitcast i32* %ch to i8*
  call void @llvm.lifetime.start(i64 4, i8* %11) #1
  %12 = bitcast i32* %gr to i8*
  call void @llvm.lifetime.start(i64 4, i8* %12) #1
  %13 = bitcast i32* %mean_bits to i8*
  call void @llvm.lifetime.start(i64 4, i8* %13) #1
  %14 = bitcast i32* %bitsPerFrame to i8*
  call void @llvm.lifetime.start(i64 4, i8* %14) #1
  %15 = bitcast i32* %check_ms_stereo to i8*
  call void @llvm.lifetime.start(i64 4, i8* %15) #1
  %16 = bitcast double* %ms_ratio_next to i8*
  call void @llvm.lifetime.start(i64 8, i8* %16) #1
  store double 0.000000e+00, double* %ms_ratio_next, align 8, !tbaa !36
  %17 = bitcast double* %ms_ratio_prev to i8*
  call void @llvm.lifetime.start(i64 8, i8* %17) #1
  store double 0.000000e+00, double* %ms_ratio_prev, align 8, !tbaa !36
  %arraydecay = getelementptr inbounds [2 x [2 x %struct.III_psy_ratio]], [2 x [2 x %struct.III_psy_ratio]]* %masking_ratio, i32 0, i32 0
  %18 = bitcast [2 x %struct.III_psy_ratio]* %arraydecay to i8*
  call void @llvm.memset.p0i8.i64(i8* %18, i8 0, i64 3904, i32 1, i1 false)
  %arraydecay1 = getelementptr inbounds [2 x [2 x %struct.III_psy_ratio]], [2 x [2 x %struct.III_psy_ratio]]* %masking_MS_ratio, i32 0, i32 0
  %19 = bitcast [2 x %struct.III_psy_ratio]* %arraydecay1 to i8*
  call void @llvm.memset.p0i8.i64(i8* %19, i8 0, i64 3904, i32 1, i1 false)
  %arraydecay2 = getelementptr inbounds [2 x [2 x %struct.III_scalefac_t]], [2 x [2 x %struct.III_scalefac_t]]* %scalefac, i32 0, i32 0
  %20 = bitcast [2 x %struct.III_scalefac_t]* %arraydecay2 to i8*
  call void @llvm.memset.p0i8.i64(i8* %20, i8 0, i64 976, i32 1, i1 false)
  %21 = load i16*, i16** %inbuf_l.addr, align 8, !tbaa !1
  %arrayidx = getelementptr inbounds [2 x i16*], [2 x i16*]* %inbuf, i32 0, i64 0
  store i16* %21, i16** %arrayidx, align 8, !tbaa !1
  %22 = load i16*, i16** %inbuf_r.addr, align 8, !tbaa !1
  %arrayidx3 = getelementptr inbounds [2 x i16*], [2 x i16*]* %inbuf, i32 0, i64 1
  store i16* %22, i16** %arrayidx3, align 8, !tbaa !1
  %23 = load %struct.lame_global_flags*, %struct.lame_global_flags** %gfp.addr, align 8, !tbaa !1
  %mode_ext = getelementptr inbounds %struct.lame_global_flags, %struct.lame_global_flags* %23, i32 0, i32 52
  store i32 0, i32* %mode_ext, align 4, !tbaa !40
  %24 = load %struct.lame_global_flags*, %struct.lame_global_flags** %gfp.addr, align 8, !tbaa !1
  %frameNum = getelementptr inbounds %struct.lame_global_flags, %struct.lame_global_flags* %24, i32 0, i32 39
  %25 = load i64, i64* %frameNum, align 8, !tbaa !5
  %cmp = icmp eq i64 %25, 0
  br i1 %cmp, label %if.then, label %if.end.18

if.then:                                          ; preds = %entry
  %26 = bitcast double* %avg_slots_per_frame to i8*
  call void @llvm.lifetime.start(i64 8, i8* %26) #1
  %27 = bitcast double* %sampfreq to i8*
  call void @llvm.lifetime.start(i64 8, i8* %27) #1
  %28 = load %struct.lame_global_flags*, %struct.lame_global_flags** %gfp.addr, align 8, !tbaa !1
  %out_samplerate = getelementptr inbounds %struct.lame_global_flags, %struct.lame_global_flags* %28, i32 0, i32 3
  %29 = load i32, i32* %out_samplerate, align 4, !tbaa !13
  %conv = sitofp i32 %29 to double
  %div = fdiv double %conv, 1.000000e+03
  store double %div, double* %sampfreq, align 8, !tbaa !36
  %30 = bitcast i32* %bit_rate to i8*
  call void @llvm.lifetime.start(i64 4, i8* %30) #1
  %31 = load %struct.lame_global_flags*, %struct.lame_global_flags** %gfp.addr, align 8, !tbaa !1
  %brate = getelementptr inbounds %struct.lame_global_flags, %struct.lame_global_flags* %31, i32 0, i32 11
  %32 = load i32, i32* %brate, align 4, !tbaa !15
  store i32 %32, i32* %bit_rate, align 4, !tbaa !27
  store i64 0, i64* @lame_encode_frame.sentBits, align 8, !tbaa !62
  store i64 8, i64* @lame_encode_frame.bitsPerSlot, align 8, !tbaa !62
  %33 = load i32, i32* %bit_rate, align 4, !tbaa !27
  %34 = load %struct.lame_global_flags*, %struct.lame_global_flags** %gfp.addr, align 8, !tbaa !1
  %framesize = getelementptr inbounds %struct.lame_global_flags, %struct.lame_global_flags* %34, i32 0, i32 42
  %35 = load i32, i32* %framesize, align 4, !tbaa !20
  %mul = mul nsw i32 %33, %35
  %conv4 = sitofp i32 %mul to double
  %36 = load double, double* %sampfreq, align 8, !tbaa !36
  %37 = load i64, i64* @lame_encode_frame.bitsPerSlot, align 8, !tbaa !62
  %conv5 = uitofp i64 %37 to double
  %mul6 = fmul double %36, %conv5
  %div7 = fdiv double %conv4, %mul6
  store double %div7, double* %avg_slots_per_frame, align 8, !tbaa !36
  %38 = load double, double* %avg_slots_per_frame, align 8, !tbaa !36
  %39 = load double, double* %avg_slots_per_frame, align 8, !tbaa !36
  %add = fadd double %39, 1.000000e-09
  %call = call double @floor(double %add) #7
  %sub = fsub double %38, %call
  store double %sub, double* @lame_encode_frame.frac_SpF, align 8, !tbaa !36
  %40 = load double, double* @lame_encode_frame.frac_SpF, align 8, !tbaa !36
  %call8 = call double @fabs(double %40) #7
  %cmp9 = fcmp olt double %call8, 1.000000e-09
  br i1 %cmp9, label %if.then.11, label %if.end

if.then.11:                                       ; preds = %if.then
  store double 0.000000e+00, double* @lame_encode_frame.frac_SpF, align 8, !tbaa !36
  br label %if.end

if.end:                                           ; preds = %if.then.11, %if.then
  %41 = load double, double* @lame_encode_frame.frac_SpF, align 8, !tbaa !36
  %sub12 = fsub double -0.000000e+00, %41
  store double %sub12, double* @lame_encode_frame.slot_lag, align 8, !tbaa !36
  %42 = load %struct.lame_global_flags*, %struct.lame_global_flags** %gfp.addr, align 8, !tbaa !1
  %padding = getelementptr inbounds %struct.lame_global_flags, %struct.lame_global_flags* %42, i32 0, i32 44
  store i32 1, i32* %padding, align 4, !tbaa !63
  %43 = load double, double* @lame_encode_frame.frac_SpF, align 8, !tbaa !36
  %cmp13 = fcmp oeq double %43, 0.000000e+00
  br i1 %cmp13, label %if.then.15, label %if.end.17

if.then.15:                                       ; preds = %if.end
  %44 = load %struct.lame_global_flags*, %struct.lame_global_flags** %gfp.addr, align 8, !tbaa !1
  %padding16 = getelementptr inbounds %struct.lame_global_flags, %struct.lame_global_flags* %44, i32 0, i32 44
  store i32 0, i32* %padding16, align 4, !tbaa !63
  br label %if.end.17

if.end.17:                                        ; preds = %if.then.15, %if.end
  %45 = bitcast i32* %bit_rate to i8*
  call void @llvm.lifetime.end(i64 4, i8* %45) #1
  %46 = bitcast double* %sampfreq to i8*
  call void @llvm.lifetime.end(i64 8, i8* %46) #1
  %47 = bitcast double* %avg_slots_per_frame to i8*
  call void @llvm.lifetime.end(i64 8, i8* %47) #1
  br label %if.end.18

if.end.18:                                        ; preds = %if.end.17, %entry
  %48 = load %struct.lame_global_flags*, %struct.lame_global_flags** %gfp.addr, align 8, !tbaa !1
  %padding_type = getelementptr inbounds %struct.lame_global_flags, %struct.lame_global_flags* %48, i32 0, i32 15
  %49 = load i32, i32* %padding_type, align 4, !tbaa !64
  switch i32 %49, label %sw.default [
    i32 0, label %sw.bb
    i32 1, label %sw.bb.20
    i32 2, label %sw.bb.22
  ]

sw.bb:                                            ; preds = %if.end.18
  %50 = load %struct.lame_global_flags*, %struct.lame_global_flags** %gfp.addr, align 8, !tbaa !1
  %padding19 = getelementptr inbounds %struct.lame_global_flags, %struct.lame_global_flags* %50, i32 0, i32 44
  store i32 0, i32* %padding19, align 4, !tbaa !63
  br label %sw.epilog

sw.bb.20:                                         ; preds = %if.end.18
  %51 = load %struct.lame_global_flags*, %struct.lame_global_flags** %gfp.addr, align 8, !tbaa !1
  %padding21 = getelementptr inbounds %struct.lame_global_flags, %struct.lame_global_flags* %51, i32 0, i32 44
  store i32 1, i32* %padding21, align 4, !tbaa !63
  br label %sw.epilog

sw.bb.22:                                         ; preds = %if.end.18
  br label %sw.default

sw.default:                                       ; preds = %if.end.18, %sw.bb.22
  %52 = load %struct.lame_global_flags*, %struct.lame_global_flags** %gfp.addr, align 8, !tbaa !1
  %VBR = getelementptr inbounds %struct.lame_global_flags, %struct.lame_global_flags* %52, i32 0, i32 21
  %53 = load i32, i32* %VBR, align 4, !tbaa !17
  %tobool = icmp ne i32 %53, 0
  br i1 %tobool, label %if.then.23, label %if.else

if.then.23:                                       ; preds = %sw.default
  %54 = load %struct.lame_global_flags*, %struct.lame_global_flags** %gfp.addr, align 8, !tbaa !1
  %padding24 = getelementptr inbounds %struct.lame_global_flags, %struct.lame_global_flags* %54, i32 0, i32 44
  store i32 0, i32* %padding24, align 4, !tbaa !63
  br label %if.end.45

if.else:                                          ; preds = %sw.default
  %55 = load %struct.lame_global_flags*, %struct.lame_global_flags** %gfp.addr, align 8, !tbaa !1
  %disable_reservoir = getelementptr inbounds %struct.lame_global_flags, %struct.lame_global_flags* %55, i32 0, i32 17
  %56 = load i32, i32* %disable_reservoir, align 4, !tbaa !65
  %tobool25 = icmp ne i32 %56, 0
  br i1 %tobool25, label %if.then.26, label %if.else.28

if.then.26:                                       ; preds = %if.else
  %57 = load %struct.lame_global_flags*, %struct.lame_global_flags** %gfp.addr, align 8, !tbaa !1
  %padding27 = getelementptr inbounds %struct.lame_global_flags, %struct.lame_global_flags* %57, i32 0, i32 44
  store i32 0, i32* %padding27, align 4, !tbaa !63
  br label %if.end.44

if.else.28:                                       ; preds = %if.else
  %58 = load double, double* @lame_encode_frame.frac_SpF, align 8, !tbaa !36
  %cmp29 = fcmp une double %58, 0.000000e+00
  br i1 %cmp29, label %if.then.31, label %if.end.43

if.then.31:                                       ; preds = %if.else.28
  %59 = load double, double* @lame_encode_frame.slot_lag, align 8, !tbaa !36
  %60 = load double, double* @lame_encode_frame.frac_SpF, align 8, !tbaa !36
  %sub32 = fsub double %60, 1.000000e+00
  %cmp33 = fcmp ogt double %59, %sub32
  br i1 %cmp33, label %if.then.35, label %if.else.38

if.then.35:                                       ; preds = %if.then.31
  %61 = load double, double* @lame_encode_frame.frac_SpF, align 8, !tbaa !36
  %62 = load double, double* @lame_encode_frame.slot_lag, align 8, !tbaa !36
  %sub36 = fsub double %62, %61
  store double %sub36, double* @lame_encode_frame.slot_lag, align 8, !tbaa !36
  %63 = load %struct.lame_global_flags*, %struct.lame_global_flags** %gfp.addr, align 8, !tbaa !1
  %padding37 = getelementptr inbounds %struct.lame_global_flags, %struct.lame_global_flags* %63, i32 0, i32 44
  store i32 0, i32* %padding37, align 4, !tbaa !63
  br label %if.end.42

if.else.38:                                       ; preds = %if.then.31
  %64 = load %struct.lame_global_flags*, %struct.lame_global_flags** %gfp.addr, align 8, !tbaa !1
  %padding39 = getelementptr inbounds %struct.lame_global_flags, %struct.lame_global_flags* %64, i32 0, i32 44
  store i32 1, i32* %padding39, align 4, !tbaa !63
  %65 = load double, double* @lame_encode_frame.frac_SpF, align 8, !tbaa !36
  %sub40 = fsub double 1.000000e+00, %65
  %66 = load double, double* @lame_encode_frame.slot_lag, align 8, !tbaa !36
  %add41 = fadd double %66, %sub40
  store double %add41, double* @lame_encode_frame.slot_lag, align 8, !tbaa !36
  br label %if.end.42

if.end.42:                                        ; preds = %if.else.38, %if.then.35
  br label %if.end.43

if.end.43:                                        ; preds = %if.end.42, %if.else.28
  br label %if.end.44

if.end.44:                                        ; preds = %if.end.43, %if.then.26
  br label %if.end.45

if.end.45:                                        ; preds = %if.end.44, %if.then.23
  br label %sw.epilog

sw.epilog:                                        ; preds = %if.end.45, %sw.bb.20, %sw.bb
  %67 = load %struct.lame_global_flags*, %struct.lame_global_flags** %gfp.addr, align 8, !tbaa !1
  %gtkflag = getelementptr inbounds %struct.lame_global_flags, %struct.lame_global_flags* %67, i32 0, i32 4
  %68 = load i32, i32* %gtkflag, align 4, !tbaa !55
  %tobool46 = icmp ne i32 %68, 0
  br i1 %tobool46, label %if.end.60, label %land.lhs.true

land.lhs.true:                                    ; preds = %sw.epilog
  %69 = load %struct.lame_global_flags*, %struct.lame_global_flags** %gfp.addr, align 8, !tbaa !1
  %silent = getelementptr inbounds %struct.lame_global_flags, %struct.lame_global_flags* %69, i32 0, i32 7
  %70 = load i32, i32* %silent, align 4, !tbaa !66
  %tobool47 = icmp ne i32 %70, 0
  br i1 %tobool47, label %if.end.60, label %if.then.48

if.then.48:                                       ; preds = %land.lhs.true
  %71 = bitcast i32* %mod to i8*
  call void @llvm.lifetime.start(i64 4, i8* %71) #1
  %72 = load %struct.lame_global_flags*, %struct.lame_global_flags** %gfp.addr, align 8, !tbaa !1
  %version = getelementptr inbounds %struct.lame_global_flags, %struct.lame_global_flags* %72, i32 0, i32 43
  %73 = load i32, i32* %version, align 4, !tbaa !42
  %cmp49 = icmp eq i32 %73, 0
  %cond = select i1 %cmp49, i32 200, i32 50
  store i32 %cond, i32* %mod, align 4, !tbaa !27
  %74 = load %struct.lame_global_flags*, %struct.lame_global_flags** %gfp.addr, align 8, !tbaa !1
  %frameNum51 = getelementptr inbounds %struct.lame_global_flags, %struct.lame_global_flags* %74, i32 0, i32 39
  %75 = load i64, i64* %frameNum51, align 8, !tbaa !5
  %76 = load i32, i32* %mod, align 4, !tbaa !27
  %conv52 = sext i32 %76 to i64
  %rem = srem i64 %75, %conv52
  %cmp53 = icmp eq i64 %rem, 0
  br i1 %cmp53, label %if.then.55, label %if.end.59

if.then.55:                                       ; preds = %if.then.48
  %77 = load %struct.lame_global_flags*, %struct.lame_global_flags** %gfp.addr, align 8, !tbaa !1
  %out_samplerate56 = getelementptr inbounds %struct.lame_global_flags, %struct.lame_global_flags* %77, i32 0, i32 3
  %78 = load i32, i32* %out_samplerate56, align 4, !tbaa !13
  %79 = load %struct.lame_global_flags*, %struct.lame_global_flags** %gfp.addr, align 8, !tbaa !1
  %frameNum57 = getelementptr inbounds %struct.lame_global_flags, %struct.lame_global_flags* %79, i32 0, i32 39
  %80 = load i64, i64* %frameNum57, align 8, !tbaa !5
  %81 = load %struct.lame_global_flags*, %struct.lame_global_flags** %gfp.addr, align 8, !tbaa !1
  %totalframes = getelementptr inbounds %struct.lame_global_flags, %struct.lame_global_flags* %81, i32 0, i32 40
  %82 = load i64, i64* %totalframes, align 8, !tbaa !22
  %83 = load %struct.lame_global_flags*, %struct.lame_global_flags** %gfp.addr, align 8, !tbaa !1
  %framesize58 = getelementptr inbounds %struct.lame_global_flags, %struct.lame_global_flags* %83, i32 0, i32 42
  %84 = load i32, i32* %framesize58, align 4, !tbaa !20
  call void @timestatus(i32 %78, i64 %80, i64 %82, i32 %84)
  br label %if.end.59

if.end.59:                                        ; preds = %if.then.55, %if.then.48
  %85 = bitcast i32* %mod to i8*
  call void @llvm.lifetime.end(i64 4, i8* %85) #1
  br label %if.end.60

if.end.60:                                        ; preds = %if.end.59, %land.lhs.true, %sw.epilog
  %86 = load %struct.lame_global_flags*, %struct.lame_global_flags** %gfp.addr, align 8, !tbaa !1
  %psymodel = getelementptr inbounds %struct.lame_global_flags, %struct.lame_global_flags* %86, i32 0, i32 63
  %87 = load i32, i32* %psymodel, align 4, !tbaa !56
  %tobool61 = icmp ne i32 %87, 0
  br i1 %tobool61, label %if.then.62, label %if.else.113

if.then.62:                                       ; preds = %if.end.60
  %88 = bitcast [2 x i16*]* %bufp to i8*
  call void @llvm.lifetime.start(i64 16, i8* %88) #1
  %89 = bitcast [2 x i32]* %blocktype to i8*
  call void @llvm.lifetime.start(i64 8, i8* %89) #1
  %90 = load %struct.lame_global_flags*, %struct.lame_global_flags** %gfp.addr, align 8, !tbaa !1
  %mode_gr = getelementptr inbounds %struct.lame_global_flags, %struct.lame_global_flags* %90, i32 0, i32 45
  %91 = load i32, i32* %mode_gr, align 4, !tbaa !18
  %sub63 = sub nsw i32 %91, 1
  %idxprom = sext i32 %sub63 to i64
  %arrayidx64 = getelementptr inbounds [2 x double], [2 x double]* @lame_encode_frame.ms_ratio, i32 0, i64 %idxprom
  %92 = load double, double* %arrayidx64, align 8, !tbaa !36
  store double %92, double* %ms_ratio_prev, align 8, !tbaa !36
  store i32 0, i32* %gr, align 4, !tbaa !27
  br label %for.cond

for.cond:                                         ; preds = %for.inc.110, %if.then.62
  %93 = load i32, i32* %gr, align 4, !tbaa !27
  %94 = load %struct.lame_global_flags*, %struct.lame_global_flags** %gfp.addr, align 8, !tbaa !1
  %mode_gr65 = getelementptr inbounds %struct.lame_global_flags, %struct.lame_global_flags* %94, i32 0, i32 45
  %95 = load i32, i32* %mode_gr65, align 4, !tbaa !18
  %cmp66 = icmp slt i32 %93, %95
  br i1 %cmp66, label %for.body, label %for.end.112

for.body:                                         ; preds = %for.cond
  store i32 0, i32* %ch, align 4, !tbaa !27
  br label %for.cond.68

for.cond.68:                                      ; preds = %for.inc, %for.body
  %96 = load i32, i32* %ch, align 4, !tbaa !27
  %97 = load %struct.lame_global_flags*, %struct.lame_global_flags** %gfp.addr, align 8, !tbaa !1
  %stereo = getelementptr inbounds %struct.lame_global_flags, %struct.lame_global_flags* %97, i32 0, i32 46
  %98 = load i32, i32* %stereo, align 4, !tbaa !12
  %cmp69 = icmp slt i32 %96, %98
  br i1 %cmp69, label %for.body.71, label %for.end

for.body.71:                                      ; preds = %for.cond.68
  %99 = load i32, i32* %gr, align 4, !tbaa !27
  %mul72 = mul nsw i32 %99, 576
  %add73 = add nsw i32 576, %mul72
  %sub74 = sub nsw i32 %add73, 272
  %idxprom75 = sext i32 %sub74 to i64
  %100 = load i32, i32* %ch, align 4, !tbaa !27
  %idxprom76 = sext i32 %100 to i64
  %arrayidx77 = getelementptr inbounds [2 x i16*], [2 x i16*]* %inbuf, i32 0, i64 %idxprom76
  %101 = load i16*, i16** %arrayidx77, align 8, !tbaa !1
  %arrayidx78 = getelementptr inbounds i16, i16* %101, i64 %idxprom75
  %102 = load i32, i32* %ch, align 4, !tbaa !27
  %idxprom79 = sext i32 %102 to i64
  %arrayidx80 = getelementptr inbounds [2 x i16*], [2 x i16*]* %bufp, i32 0, i64 %idxprom79
  store i16* %arrayidx78, i16** %arrayidx80, align 8, !tbaa !1
  br label %for.inc

for.inc:                                          ; preds = %for.body.71
  %103 = load i32, i32* %ch, align 4, !tbaa !27
  %inc = add nsw i32 %103, 1
  store i32 %inc, i32* %ch, align 4, !tbaa !27
  br label %for.cond.68

for.end:                                          ; preds = %for.cond.68
  %104 = load %struct.lame_global_flags*, %struct.lame_global_flags** %gfp.addr, align 8, !tbaa !1
  %arraydecay81 = getelementptr inbounds [2 x i16*], [2 x i16*]* %bufp, i32 0, i32 0
  %105 = load i32, i32* %gr, align 4, !tbaa !27
  %106 = load i32, i32* %gr, align 4, !tbaa !27
  %idxprom82 = sext i32 %106 to i64
  %arrayidx83 = getelementptr inbounds [2 x double], [2 x double]* @lame_encode_frame.ms_ratio, i32 0, i64 %idxprom82
  %107 = load i32, i32* %gr, align 4, !tbaa !27
  %idxprom84 = sext i32 %107 to i64
  %arrayidx85 = getelementptr inbounds [2 x double], [2 x double]* @lame_encode_frame.ms_ener_ratio, i32 0, i64 %idxprom84
  %arraydecay86 = getelementptr inbounds [2 x [2 x %struct.III_psy_ratio]], [2 x [2 x %struct.III_psy_ratio]]* %masking_ratio, i32 0, i32 0
  %arraydecay87 = getelementptr inbounds [2 x [2 x %struct.III_psy_ratio]], [2 x [2 x %struct.III_psy_ratio]]* %masking_MS_ratio, i32 0, i32 0
  %108 = load i32, i32* %gr, align 4, !tbaa !27
  %idxprom88 = sext i32 %108 to i64
  %arrayidx89 = getelementptr inbounds [2 x [2 x double]], [2 x [2 x double]]* %pe, i32 0, i64 %idxprom88
  %arraydecay90 = getelementptr inbounds [2 x double], [2 x double]* %arrayidx89, i32 0, i32 0
  %109 = load i32, i32* %gr, align 4, !tbaa !27
  %idxprom91 = sext i32 %109 to i64
  %arrayidx92 = getelementptr inbounds [2 x [2 x double]], [2 x [2 x double]]* %pe_MS, i32 0, i64 %idxprom91
  %arraydecay93 = getelementptr inbounds [2 x double], [2 x double]* %arrayidx92, i32 0, i32 0
  %arraydecay94 = getelementptr inbounds [2 x i32], [2 x i32]* %blocktype, i32 0, i32 0
  call void @L3psycho_anal(%struct.lame_global_flags* %104, i16** %arraydecay81, i32 %105, double* %arrayidx83, double* %ms_ratio_next, double* %arrayidx85, [2 x %struct.III_psy_ratio]* %arraydecay86, [2 x %struct.III_psy_ratio]* %arraydecay87, double* %arraydecay90, double* %arraydecay93, i32* %arraydecay94)
  store i32 0, i32* %ch, align 4, !tbaa !27
  br label %for.cond.95

for.cond.95:                                      ; preds = %for.inc.107, %for.end
  %110 = load i32, i32* %ch, align 4, !tbaa !27
  %111 = load %struct.lame_global_flags*, %struct.lame_global_flags** %gfp.addr, align 8, !tbaa !1
  %stereo96 = getelementptr inbounds %struct.lame_global_flags, %struct.lame_global_flags* %111, i32 0, i32 46
  %112 = load i32, i32* %stereo96, align 4, !tbaa !12
  %cmp97 = icmp slt i32 %110, %112
  br i1 %cmp97, label %for.body.99, label %for.end.109

for.body.99:                                      ; preds = %for.cond.95
  %113 = load i32, i32* %ch, align 4, !tbaa !27
  %idxprom100 = sext i32 %113 to i64
  %arrayidx101 = getelementptr inbounds [2 x i32], [2 x i32]* %blocktype, i32 0, i64 %idxprom100
  %114 = load i32, i32* %arrayidx101, align 4, !tbaa !27
  %115 = load i32, i32* %ch, align 4, !tbaa !27
  %idxprom102 = sext i32 %115 to i64
  %116 = load i32, i32* %gr, align 4, !tbaa !27
  %idxprom103 = sext i32 %116 to i64
  %arrayidx104 = getelementptr inbounds [2 x %struct.anon], [2 x %struct.anon]* getelementptr inbounds (%struct.III_side_info_t, %struct.III_side_info_t* @l3_side, i32 0, i32 4), i32 0, i64 %idxprom103
  %ch105 = getelementptr inbounds %struct.anon, %struct.anon* %arrayidx104, i32 0, i32 0
  %arrayidx106 = getelementptr inbounds [2 x %struct.gr_info_ss], [2 x %struct.gr_info_ss]* %ch105, i32 0, i64 %idxprom102
  %tt = getelementptr inbounds %struct.gr_info_ss, %struct.gr_info_ss* %arrayidx106, i32 0, i32 0
  %block_type = getelementptr inbounds %struct.gr_info, %struct.gr_info* %tt, i32 0, i32 6
  store i32 %114, i32* %block_type, align 4, !tbaa !67
  br label %for.inc.107

for.inc.107:                                      ; preds = %for.body.99
  %117 = load i32, i32* %ch, align 4, !tbaa !27
  %inc108 = add nsw i32 %117, 1
  store i32 %inc108, i32* %ch, align 4, !tbaa !27
  br label %for.cond.95

for.end.109:                                      ; preds = %for.cond.95
  br label %for.inc.110

for.inc.110:                                      ; preds = %for.end.109
  %118 = load i32, i32* %gr, align 4, !tbaa !27
  %inc111 = add nsw i32 %118, 1
  store i32 %inc111, i32* %gr, align 4, !tbaa !27
  br label %for.cond

for.end.112:                                      ; preds = %for.cond
  %119 = bitcast [2 x i32]* %blocktype to i8*
  call void @llvm.lifetime.end(i64 8, i8* %119) #1
  %120 = bitcast [2 x i16*]* %bufp to i8*
  call void @llvm.lifetime.end(i64 16, i8* %120) #1
  br label %if.end.141

if.else.113:                                      ; preds = %if.end.60
  store i32 0, i32* %gr, align 4, !tbaa !27
  br label %for.cond.114

for.cond.114:                                     ; preds = %for.inc.138, %if.else.113
  %121 = load i32, i32* %gr, align 4, !tbaa !27
  %122 = load %struct.lame_global_flags*, %struct.lame_global_flags** %gfp.addr, align 8, !tbaa !1
  %mode_gr115 = getelementptr inbounds %struct.lame_global_flags, %struct.lame_global_flags* %122, i32 0, i32 45
  %123 = load i32, i32* %mode_gr115, align 4, !tbaa !18
  %cmp116 = icmp slt i32 %121, %123
  br i1 %cmp116, label %for.body.118, label %for.end.140

for.body.118:                                     ; preds = %for.cond.114
  store i32 0, i32* %ch, align 4, !tbaa !27
  br label %for.cond.119

for.cond.119:                                     ; preds = %for.inc.135, %for.body.118
  %124 = load i32, i32* %ch, align 4, !tbaa !27
  %125 = load %struct.lame_global_flags*, %struct.lame_global_flags** %gfp.addr, align 8, !tbaa !1
  %stereo120 = getelementptr inbounds %struct.lame_global_flags, %struct.lame_global_flags* %125, i32 0, i32 46
  %126 = load i32, i32* %stereo120, align 4, !tbaa !12
  %cmp121 = icmp slt i32 %124, %126
  br i1 %cmp121, label %for.body.123, label %for.end.137

for.body.123:                                     ; preds = %for.cond.119
  %127 = load i32, i32* %ch, align 4, !tbaa !27
  %idxprom124 = sext i32 %127 to i64
  %128 = load i32, i32* %gr, align 4, !tbaa !27
  %idxprom125 = sext i32 %128 to i64
  %arrayidx126 = getelementptr inbounds [2 x %struct.anon], [2 x %struct.anon]* getelementptr inbounds (%struct.III_side_info_t, %struct.III_side_info_t* @l3_side, i32 0, i32 4), i32 0, i64 %idxprom125
  %ch127 = getelementptr inbounds %struct.anon, %struct.anon* %arrayidx126, i32 0, i32 0
  %arrayidx128 = getelementptr inbounds [2 x %struct.gr_info_ss], [2 x %struct.gr_info_ss]* %ch127, i32 0, i64 %idxprom124
  %tt129 = getelementptr inbounds %struct.gr_info_ss, %struct.gr_info_ss* %arrayidx128, i32 0, i32 0
  %block_type130 = getelementptr inbounds %struct.gr_info, %struct.gr_info* %tt129, i32 0, i32 6
  store i32 0, i32* %block_type130, align 4, !tbaa !67
  %129 = load i32, i32* %ch, align 4, !tbaa !27
  %idxprom131 = sext i32 %129 to i64
  %130 = load i32, i32* %gr, align 4, !tbaa !27
  %idxprom132 = sext i32 %130 to i64
  %arrayidx133 = getelementptr inbounds [2 x [2 x double]], [2 x [2 x double]]* %pe, i32 0, i64 %idxprom132
  %arrayidx134 = getelementptr inbounds [2 x double], [2 x double]* %arrayidx133, i32 0, i64 %idxprom131
  store double 7.000000e+02, double* %arrayidx134, align 8, !tbaa !36
  br label %for.inc.135

for.inc.135:                                      ; preds = %for.body.123
  %131 = load i32, i32* %ch, align 4, !tbaa !27
  %inc136 = add nsw i32 %131, 1
  store i32 %inc136, i32* %ch, align 4, !tbaa !27
  br label %for.cond.119

for.end.137:                                      ; preds = %for.cond.119
  br label %for.inc.138

for.inc.138:                                      ; preds = %for.end.137
  %132 = load i32, i32* %gr, align 4, !tbaa !27
  %inc139 = add nsw i32 %132, 1
  store i32 %inc139, i32* %gr, align 4, !tbaa !27
  br label %for.cond.114

for.end.140:                                      ; preds = %for.cond.114
  br label %if.end.141

if.end.141:                                       ; preds = %for.end.140, %for.end.112
  store i32 0, i32* %gr, align 4, !tbaa !27
  br label %for.cond.142

for.cond.142:                                     ; preds = %for.inc.168, %if.end.141
  %133 = load i32, i32* %gr, align 4, !tbaa !27
  %134 = load %struct.lame_global_flags*, %struct.lame_global_flags** %gfp.addr, align 8, !tbaa !1
  %mode_gr143 = getelementptr inbounds %struct.lame_global_flags, %struct.lame_global_flags* %134, i32 0, i32 45
  %135 = load i32, i32* %mode_gr143, align 4, !tbaa !18
  %cmp144 = icmp slt i32 %133, %135
  br i1 %cmp144, label %for.body.146, label %for.end.170

for.body.146:                                     ; preds = %for.cond.142
  store i32 0, i32* %ch, align 4, !tbaa !27
  br label %for.cond.147

for.cond.147:                                     ; preds = %for.inc.165, %for.body.146
  %136 = load i32, i32* %ch, align 4, !tbaa !27
  %137 = load %struct.lame_global_flags*, %struct.lame_global_flags** %gfp.addr, align 8, !tbaa !1
  %stereo148 = getelementptr inbounds %struct.lame_global_flags, %struct.lame_global_flags* %137, i32 0, i32 46
  %138 = load i32, i32* %stereo148, align 4, !tbaa !12
  %cmp149 = icmp slt i32 %136, %138
  br i1 %cmp149, label %for.body.151, label %for.end.167

for.body.151:                                     ; preds = %for.cond.147
  %139 = bitcast %struct.gr_info** %cod_info to i8*
  call void @llvm.lifetime.start(i64 8, i8* %139) #1
  %140 = load i32, i32* %ch, align 4, !tbaa !27
  %idxprom152 = sext i32 %140 to i64
  %141 = load i32, i32* %gr, align 4, !tbaa !27
  %idxprom153 = sext i32 %141 to i64
  %arrayidx154 = getelementptr inbounds [2 x %struct.anon], [2 x %struct.anon]* getelementptr inbounds (%struct.III_side_info_t, %struct.III_side_info_t* @l3_side, i32 0, i32 4), i32 0, i64 %idxprom153
  %ch155 = getelementptr inbounds %struct.anon, %struct.anon* %arrayidx154, i32 0, i32 0
  %arrayidx156 = getelementptr inbounds [2 x %struct.gr_info_ss], [2 x %struct.gr_info_ss]* %ch155, i32 0, i64 %idxprom152
  %tt157 = getelementptr inbounds %struct.gr_info_ss, %struct.gr_info_ss* %arrayidx156, i32 0, i32 0
  store %struct.gr_info* %tt157, %struct.gr_info** %cod_info, align 8, !tbaa !1
  %142 = load %struct.gr_info*, %struct.gr_info** %cod_info, align 8, !tbaa !1
  %mixed_block_flag = getelementptr inbounds %struct.gr_info, %struct.gr_info* %142, i32 0, i32 7
  store i32 0, i32* %mixed_block_flag, align 4, !tbaa !70
  %143 = load %struct.gr_info*, %struct.gr_info** %cod_info, align 8, !tbaa !1
  %block_type158 = getelementptr inbounds %struct.gr_info, %struct.gr_info* %143, i32 0, i32 6
  %144 = load i32, i32* %block_type158, align 4, !tbaa !71
  %cmp159 = icmp eq i32 %144, 0
  br i1 %cmp159, label %if.then.161, label %if.else.162

if.then.161:                                      ; preds = %for.body.151
  %145 = load %struct.gr_info*, %struct.gr_info** %cod_info, align 8, !tbaa !1
  %window_switching_flag = getelementptr inbounds %struct.gr_info, %struct.gr_info* %145, i32 0, i32 5
  store i32 0, i32* %window_switching_flag, align 4, !tbaa !72
  br label %if.end.164

if.else.162:                                      ; preds = %for.body.151
  %146 = load %struct.gr_info*, %struct.gr_info** %cod_info, align 8, !tbaa !1
  %window_switching_flag163 = getelementptr inbounds %struct.gr_info, %struct.gr_info* %146, i32 0, i32 5
  store i32 1, i32* %window_switching_flag163, align 4, !tbaa !72
  br label %if.end.164

if.end.164:                                       ; preds = %if.else.162, %if.then.161
  %147 = bitcast %struct.gr_info** %cod_info to i8*
  call void @llvm.lifetime.end(i64 8, i8* %147) #1
  br label %for.inc.165

for.inc.165:                                      ; preds = %if.end.164
  %148 = load i32, i32* %ch, align 4, !tbaa !27
  %inc166 = add nsw i32 %148, 1
  store i32 %inc166, i32* %ch, align 4, !tbaa !27
  br label %for.cond.147

for.end.167:                                      ; preds = %for.cond.147
  br label %for.inc.168

for.inc.168:                                      ; preds = %for.end.167
  %149 = load i32, i32* %gr, align 4, !tbaa !27
  %inc169 = add nsw i32 %149, 1
  store i32 %inc169, i32* %gr, align 4, !tbaa !27
  br label %for.cond.142

for.end.170:                                      ; preds = %for.cond.142
  %150 = load %struct.lame_global_flags*, %struct.lame_global_flags** %gfp.addr, align 8, !tbaa !1
  %arrayidx171 = getelementptr inbounds [2 x i16*], [2 x i16*]* %inbuf, i32 0, i64 0
  %151 = load i16*, i16** %arrayidx171, align 8, !tbaa !1
  %arrayidx172 = getelementptr inbounds [2 x i16*], [2 x i16*]* %inbuf, i32 0, i64 1
  %152 = load i16*, i16** %arrayidx172, align 8, !tbaa !1
  %arraydecay173 = getelementptr inbounds [2 x [2 x [576 x double]]], [2 x [2 x [576 x double]]]* %xr, i32 0, i32 0
  call void @mdct_sub48(%struct.lame_global_flags* %150, i16* %151, i16* %152, [2 x [576 x double]]* %arraydecay173, %struct.III_side_info_t* @l3_side)
  %153 = load %struct.lame_global_flags*, %struct.lame_global_flags** %gfp.addr, align 8, !tbaa !1
  %mode = getelementptr inbounds %struct.lame_global_flags, %struct.lame_global_flags* %153, i32 0, i32 8
  %154 = load i32, i32* %mode, align 4, !tbaa !11
  %cmp174 = icmp eq i32 %154, 1
  %conv175 = zext i1 %cmp174 to i32
  store i32 %conv175, i32* %check_ms_stereo, align 4, !tbaa !27
  %155 = load i32, i32* %check_ms_stereo, align 4, !tbaa !27
  %tobool176 = icmp ne i32 %155, 0
  br i1 %tobool176, label %if.then.177, label %if.end.182

if.then.177:                                      ; preds = %for.end.170
  %156 = load i32, i32* getelementptr inbounds (%struct.III_side_info_t, %struct.III_side_info_t* @l3_side, i32 0, i32 4, i64 0, i32 0, i64 0, i32 0, i32 6), align 4, !tbaa !67
  %157 = load i32, i32* getelementptr inbounds (%struct.III_side_info_t, %struct.III_side_info_t* @l3_side, i32 0, i32 4, i64 0, i32 0, i64 1, i32 0, i32 6), align 4, !tbaa !67
  %cmp178 = icmp eq i32 %156, %157
  br i1 %cmp178, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %if.then.177
  %158 = load i32, i32* getelementptr inbounds (%struct.III_side_info_t, %struct.III_side_info_t* @l3_side, i32 0, i32 4, i64 1, i32 0, i64 0, i32 0, i32 6), align 4, !tbaa !67
  %159 = load i32, i32* getelementptr inbounds (%struct.III_side_info_t, %struct.III_side_info_t* @l3_side, i32 0, i32 4, i64 1, i32 0, i64 1, i32 0, i32 6), align 4, !tbaa !67
  %cmp180 = icmp eq i32 %158, %159
  br label %land.end

land.end:                                         ; preds = %land.rhs, %if.then.177
  %160 = phi i1 [ false, %if.then.177 ], [ %cmp180, %land.rhs ]
  %land.ext = zext i1 %160 to i32
  store i32 %land.ext, i32* %check_ms_stereo, align 4, !tbaa !27
  br label %if.end.182

if.end.182:                                       ; preds = %land.end, %for.end.170
  %161 = load i32, i32* %check_ms_stereo, align 4, !tbaa !27
  %tobool183 = icmp ne i32 %161, 0
  br i1 %tobool183, label %if.then.184, label %if.end.196

if.then.184:                                      ; preds = %if.end.182
  %162 = bitcast double* %ms_ratio_ave to i8*
  call void @llvm.lifetime.start(i64 8, i8* %162) #1
  %163 = bitcast double* %ms_ener_ratio_ave to i8*
  call void @llvm.lifetime.start(i64 8, i8* %163) #1
  %164 = load double, double* getelementptr inbounds ([2 x double], [2 x double]* @lame_encode_frame.ms_ratio, i32 0, i64 0), align 8, !tbaa !36
  %165 = load double, double* getelementptr inbounds ([2 x double], [2 x double]* @lame_encode_frame.ms_ratio, i32 0, i64 1), align 8, !tbaa !36
  %add185 = fadd double %164, %165
  %166 = load double, double* %ms_ratio_prev, align 8, !tbaa !36
  %add186 = fadd double %add185, %166
  %167 = load double, double* %ms_ratio_next, align 8, !tbaa !36
  %add187 = fadd double %add186, %167
  %mul188 = fmul double 2.500000e-01, %add187
  store double %mul188, double* %ms_ratio_ave, align 8, !tbaa !36
  %168 = load double, double* getelementptr inbounds ([2 x double], [2 x double]* @lame_encode_frame.ms_ener_ratio, i32 0, i64 0), align 8, !tbaa !36
  %169 = load double, double* getelementptr inbounds ([2 x double], [2 x double]* @lame_encode_frame.ms_ener_ratio, i32 0, i64 1), align 8, !tbaa !36
  %add189 = fadd double %168, %169
  %mul190 = fmul double 5.000000e-01, %add189
  store double %mul190, double* %ms_ener_ratio_ave, align 8, !tbaa !36
  %170 = load double, double* %ms_ratio_ave, align 8, !tbaa !36
  %cmp191 = fcmp olt double %170, 3.500000e-01
  br i1 %cmp191, label %if.then.193, label %if.end.195

if.then.193:                                      ; preds = %if.then.184
  %171 = load %struct.lame_global_flags*, %struct.lame_global_flags** %gfp.addr, align 8, !tbaa !1
  %mode_ext194 = getelementptr inbounds %struct.lame_global_flags, %struct.lame_global_flags* %171, i32 0, i32 52
  store i32 2, i32* %mode_ext194, align 4, !tbaa !40
  br label %if.end.195

if.end.195:                                       ; preds = %if.then.193, %if.then.184
  %172 = bitcast double* %ms_ener_ratio_ave to i8*
  call void @llvm.lifetime.end(i64 8, i8* %172) #1
  %173 = bitcast double* %ms_ratio_ave to i8*
  call void @llvm.lifetime.end(i64 8, i8* %173) #1
  br label %if.end.196

if.end.196:                                       ; preds = %if.end.195, %if.end.182
  %174 = load %struct.lame_global_flags*, %struct.lame_global_flags** %gfp.addr, align 8, !tbaa !1
  %force_ms = getelementptr inbounds %struct.lame_global_flags, %struct.lame_global_flags* %174, i32 0, i32 10
  %175 = load i32, i32* %force_ms, align 4, !tbaa !49
  %tobool197 = icmp ne i32 %175, 0
  br i1 %tobool197, label %if.then.198, label %if.end.200

if.then.198:                                      ; preds = %if.end.196
  %176 = load %struct.lame_global_flags*, %struct.lame_global_flags** %gfp.addr, align 8, !tbaa !1
  %mode_ext199 = getelementptr inbounds %struct.lame_global_flags, %struct.lame_global_flags* %176, i32 0, i32 52
  store i32 2, i32* %mode_ext199, align 4, !tbaa !40
  br label %if.end.200

if.end.200:                                       ; preds = %if.then.198, %if.end.196
  %177 = load %struct.lame_global_flags*, %struct.lame_global_flags** %gfp.addr, align 8, !tbaa !1
  %mode_ext201 = getelementptr inbounds %struct.lame_global_flags, %struct.lame_global_flags* %177, i32 0, i32 52
  %178 = load i32, i32* %mode_ext201, align 4, !tbaa !40
  %cmp202 = icmp eq i32 2, %178
  br i1 %cmp202, label %if.then.204, label %if.else.205

if.then.204:                                      ; preds = %if.end.200
  store [2 x [2 x %struct.III_psy_ratio]]* %masking_MS_ratio, [2 x [2 x %struct.III_psy_ratio]]** %masking, align 8, !tbaa !1
  store [2 x [2 x double]]* %pe_MS, [2 x [2 x double]]** %pe_use, align 8, !tbaa !1
  br label %if.end.206

if.else.205:                                      ; preds = %if.end.200
  store [2 x [2 x %struct.III_psy_ratio]]* %masking_ratio, [2 x [2 x %struct.III_psy_ratio]]** %masking, align 8, !tbaa !1
  store [2 x [2 x double]]* %pe, [2 x [2 x double]]** %pe_use, align 8, !tbaa !1
  br label %if.end.206

if.end.206:                                       ; preds = %if.else.205, %if.then.204
  %179 = load %struct.lame_global_flags*, %struct.lame_global_flags** %gfp.addr, align 8, !tbaa !1
  %VBR207 = getelementptr inbounds %struct.lame_global_flags, %struct.lame_global_flags* %179, i32 0, i32 21
  %180 = load i32, i32* %VBR207, align 4, !tbaa !17
  %tobool208 = icmp ne i32 %180, 0
  br i1 %tobool208, label %if.then.209, label %if.else.215

if.then.209:                                      ; preds = %if.end.206
  %181 = load %struct.lame_global_flags*, %struct.lame_global_flags** %gfp.addr, align 8, !tbaa !1
  %182 = load [2 x [2 x double]]*, [2 x [2 x double]]** %pe_use, align 8, !tbaa !1
  %arraydecay210 = getelementptr inbounds [2 x [2 x double]], [2 x [2 x double]]* %182, i32 0, i32 0
  %arraydecay211 = getelementptr inbounds [2 x [2 x [576 x double]]], [2 x [2 x [576 x double]]]* %xr, i32 0, i32 0
  %183 = load [2 x [2 x %struct.III_psy_ratio]]*, [2 x [2 x %struct.III_psy_ratio]]** %masking, align 8, !tbaa !1
  %arraydecay212 = getelementptr inbounds [2 x [2 x %struct.III_psy_ratio]], [2 x [2 x %struct.III_psy_ratio]]* %183, i32 0, i32 0
  %arraydecay213 = getelementptr inbounds [2 x [2 x [576 x i32]]], [2 x [2 x [576 x i32]]]* %l3_enc, i32 0, i32 0
  %arraydecay214 = getelementptr inbounds [2 x [2 x %struct.III_scalefac_t]], [2 x [2 x %struct.III_scalefac_t]]* %scalefac, i32 0, i32 0
  call void @VBR_iteration_loop(%struct.lame_global_flags* %181, [2 x double]* %arraydecay210, double* getelementptr inbounds ([2 x double], [2 x double]* @lame_encode_frame.ms_ratio, i32 0, i32 0), [2 x [576 x double]]* %arraydecay211, [2 x %struct.III_psy_ratio]* %arraydecay212, %struct.III_side_info_t* @l3_side, [2 x [576 x i32]]* %arraydecay213, [2 x %struct.III_scalefac_t]* %arraydecay214)
  br label %if.end.221

if.else.215:                                      ; preds = %if.end.206
  %184 = load %struct.lame_global_flags*, %struct.lame_global_flags** %gfp.addr, align 8, !tbaa !1
  %185 = load [2 x [2 x double]]*, [2 x [2 x double]]** %pe_use, align 8, !tbaa !1
  %arraydecay216 = getelementptr inbounds [2 x [2 x double]], [2 x [2 x double]]* %185, i32 0, i32 0
  %arraydecay217 = getelementptr inbounds [2 x [2 x [576 x double]]], [2 x [2 x [576 x double]]]* %xr, i32 0, i32 0
  %186 = load [2 x [2 x %struct.III_psy_ratio]]*, [2 x [2 x %struct.III_psy_ratio]]** %masking, align 8, !tbaa !1
  %arraydecay218 = getelementptr inbounds [2 x [2 x %struct.III_psy_ratio]], [2 x [2 x %struct.III_psy_ratio]]* %186, i32 0, i32 0
  %arraydecay219 = getelementptr inbounds [2 x [2 x [576 x i32]]], [2 x [2 x [576 x i32]]]* %l3_enc, i32 0, i32 0
  %arraydecay220 = getelementptr inbounds [2 x [2 x %struct.III_scalefac_t]], [2 x [2 x %struct.III_scalefac_t]]* %scalefac, i32 0, i32 0
  call void @iteration_loop(%struct.lame_global_flags* %184, [2 x double]* %arraydecay216, double* getelementptr inbounds ([2 x double], [2 x double]* @lame_encode_frame.ms_ratio, i32 0, i32 0), [2 x [576 x double]]* %arraydecay217, [2 x %struct.III_psy_ratio]* %arraydecay218, %struct.III_side_info_t* @l3_side, [2 x [576 x i32]]* %arraydecay219, [2 x %struct.III_scalefac_t]* %arraydecay220)
  br label %if.end.221

if.end.221:                                       ; preds = %if.else.215, %if.then.209
  %187 = load %struct.lame_global_flags*, %struct.lame_global_flags** %gfp.addr, align 8, !tbaa !1
  call void @getframebits(%struct.lame_global_flags* %187, i32* %bitsPerFrame, i32* %mean_bits)
  %188 = load %struct.lame_global_flags*, %struct.lame_global_flags** %gfp.addr, align 8, !tbaa !1
  %189 = load i32, i32* %bitsPerFrame, align 4, !tbaa !27
  %arraydecay222 = getelementptr inbounds [2 x [2 x [576 x i32]]], [2 x [2 x [576 x i32]]]* %l3_enc, i32 0, i32 0
  %arraydecay223 = getelementptr inbounds [2 x [2 x %struct.III_scalefac_t]], [2 x [2 x %struct.III_scalefac_t]]* %scalefac, i32 0, i32 0
  call void @III_format_bitstream(%struct.lame_global_flags* %188, i32 %189, [2 x [576 x i32]]* %arraydecay222, %struct.III_side_info_t* @l3_side, [2 x %struct.III_scalefac_t]* %arraydecay223, %struct.bit_stream_struc* @bs)
  %190 = load i64, i64* getelementptr inbounds (%struct.bit_stream_struc, %struct.bit_stream_struc* @bs, i32 0, i32 5), align 8, !tbaa !73
  %191 = load i64, i64* @lame_encode_frame.sentBits, align 8, !tbaa !62
  %sub224 = sub i64 %190, %191
  store i64 %sub224, i64* @lame_encode_frame.frameBits, align 8, !tbaa !62
  %192 = load i64, i64* @lame_encode_frame.frameBits, align 8, !tbaa !62
  %193 = load i64, i64* @lame_encode_frame.bitsPerSlot, align 8, !tbaa !62
  %rem225 = urem i64 %192, %193
  %tobool226 = icmp ne i64 %rem225, 0
  br i1 %tobool226, label %if.then.227, label %if.end.231

if.then.227:                                      ; preds = %if.end.221
  %194 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !tbaa !1
  %195 = load i64, i64* @lame_encode_frame.frameBits, align 8, !tbaa !62
  %196 = load i64, i64* @lame_encode_frame.frameBits, align 8, !tbaa !62
  %197 = load i64, i64* @lame_encode_frame.bitsPerSlot, align 8, !tbaa !62
  %div228 = udiv i64 %196, %197
  %198 = load i64, i64* @lame_encode_frame.frameBits, align 8, !tbaa !62
  %199 = load i64, i64* @lame_encode_frame.bitsPerSlot, align 8, !tbaa !62
  %rem229 = urem i64 %198, %199
  %call230 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %194, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.16, i32 0, i32 0), i64 %195, i64 %div228, i64 %rem229)
  br label %if.end.231

if.end.231:                                       ; preds = %if.then.227, %if.end.221
  %200 = load i64, i64* @lame_encode_frame.frameBits, align 8, !tbaa !62
  %201 = load i64, i64* @lame_encode_frame.sentBits, align 8, !tbaa !62
  %add232 = add i64 %201, %200
  store i64 %add232, i64* @lame_encode_frame.sentBits, align 8, !tbaa !62
  %202 = load i8*, i8** %mp3buf.addr, align 8, !tbaa !1
  %203 = load i32, i32* %mp3buf_size.addr, align 4, !tbaa !27
  %call233 = call i32 @copy_buffer(i8* %202, i32 %203, %struct.bit_stream_struc* @bs)
  store i32 %call233, i32* %mp3count, align 4, !tbaa !27
  %204 = load %struct.lame_global_flags*, %struct.lame_global_flags** %gfp.addr, align 8, !tbaa !1
  %bWriteVbrTag = getelementptr inbounds %struct.lame_global_flags, %struct.lame_global_flags* %204, i32 0, i32 5
  %205 = load i32, i32* %bWriteVbrTag, align 4, !tbaa !50
  %tobool234 = icmp ne i32 %205, 0
  br i1 %tobool234, label %if.then.235, label %if.end.238

if.then.235:                                      ; preds = %if.end.231
  %206 = load i64, i64* @lame_encode_frame.sentBits, align 8, !tbaa !62
  %div236 = udiv i64 %206, 8
  %conv237 = trunc i64 %div236 to i32
  call void @AddVbrFrame(i32 %conv237)
  br label %if.end.238

if.end.238:                                       ; preds = %if.then.235, %if.end.231
  %207 = load %struct.lame_global_flags*, %struct.lame_global_flags** %gfp.addr, align 8, !tbaa !1
  %frameNum239 = getelementptr inbounds %struct.lame_global_flags, %struct.lame_global_flags* %207, i32 0, i32 39
  %208 = load i64, i64* %frameNum239, align 8, !tbaa !5
  %inc240 = add nsw i64 %208, 1
  store i64 %inc240, i64* %frameNum239, align 8, !tbaa !5
  %209 = load i32, i32* %mp3count, align 4, !tbaa !27
  %210 = bitcast double* %ms_ratio_prev to i8*
  call void @llvm.lifetime.end(i64 8, i8* %210) #1
  %211 = bitcast double* %ms_ratio_next to i8*
  call void @llvm.lifetime.end(i64 8, i8* %211) #1
  %212 = bitcast i32* %check_ms_stereo to i8*
  call void @llvm.lifetime.end(i64 4, i8* %212) #1
  %213 = bitcast i32* %bitsPerFrame to i8*
  call void @llvm.lifetime.end(i64 4, i8* %213) #1
  %214 = bitcast i32* %mean_bits to i8*
  call void @llvm.lifetime.end(i64 4, i8* %214) #1
  %215 = bitcast i32* %gr to i8*
  call void @llvm.lifetime.end(i64 4, i8* %215) #1
  %216 = bitcast i32* %ch to i8*
  call void @llvm.lifetime.end(i64 4, i8* %216) #1
  %217 = bitcast [2 x [2 x double]]** %pe_use to i8*
  call void @llvm.lifetime.end(i64 8, i8* %217) #1
  %218 = bitcast [2 x [2 x double]]* %pe_MS to i8*
  call void @llvm.lifetime.end(i64 32, i8* %218) #1
  %219 = bitcast [2 x [2 x double]]* %pe to i8*
  call void @llvm.lifetime.end(i64 32, i8* %219) #1
  %220 = bitcast [2 x i16*]* %inbuf to i8*
  call void @llvm.lifetime.end(i64 16, i8* %220) #1
  %221 = bitcast [2 x [2 x %struct.III_scalefac_t]]* %scalefac to i8*
  call void @llvm.lifetime.end(i64 976, i8* %221) #1
  %222 = bitcast [2 x [2 x %struct.III_psy_ratio]]** %masking to i8*
  call void @llvm.lifetime.end(i64 8, i8* %222) #1
  %223 = bitcast [2 x [2 x %struct.III_psy_ratio]]* %masking_MS_ratio to i8*
  call void @llvm.lifetime.end(i64 3904, i8* %223) #1
  %224 = bitcast [2 x [2 x %struct.III_psy_ratio]]* %masking_ratio to i8*
  call void @llvm.lifetime.end(i64 3904, i8* %224) #1
  %225 = bitcast i32* %mp3count to i8*
  call void @llvm.lifetime.end(i64 4, i8* %225) #1
  %226 = bitcast [2 x [2 x [576 x i32]]]* %l3_enc to i8*
  call void @llvm.lifetime.end(i64 9216, i8* %226) #1
  %227 = bitcast [2 x [2 x [576 x double]]]* %xr to i8*
  call void @llvm.lifetime.end(i64 18432, i8* %227) #1
  ret i32 %209
}

; Function Attrs: nounwind readnone
declare double @fabs(double) #3

declare void @timestatus(i32, i64, i64, i32) #2

declare void @L3psycho_anal(%struct.lame_global_flags*, i16**, i32, double*, double*, double*, [2 x %struct.III_psy_ratio]*, [2 x %struct.III_psy_ratio]*, double*, double*, i32*) #2

declare void @mdct_sub48(%struct.lame_global_flags*, i16*, i16*, [2 x [576 x double]]*, %struct.III_side_info_t*) #2

declare void @VBR_iteration_loop(%struct.lame_global_flags*, [2 x double]*, double*, [2 x [576 x double]]*, [2 x %struct.III_psy_ratio]*, %struct.III_side_info_t*, [2 x [576 x i32]]*, [2 x %struct.III_scalefac_t]*) #2

declare void @iteration_loop(%struct.lame_global_flags*, [2 x double]*, double*, [2 x [576 x double]]*, [2 x %struct.III_psy_ratio]*, %struct.III_side_info_t*, [2 x [576 x i32]]*, [2 x %struct.III_scalefac_t]*) #2

declare void @getframebits(%struct.lame_global_flags*, i32*, i32*) #2

declare void @III_format_bitstream(%struct.lame_global_flags*, i32, [2 x [576 x i32]]*, %struct.III_side_info_t*, [2 x %struct.III_scalefac_t]*, %struct.bit_stream_struc*) #2

declare i32 @copy_buffer(i8*, i32, %struct.bit_stream_struc*) #2

declare void @AddVbrFrame(i32) #2

; Function Attrs: nounwind uwtable
define i32 @fill_buffer_resample(%struct.lame_global_flags* %gfp, i16* %outbuf, i32 %desired_len, i16* %inbuf, i32 %len, i32* %num_used, i32 %ch) #0 {
entry:
  %gfp.addr = alloca %struct.lame_global_flags*, align 8
  %outbuf.addr = alloca i16*, align 8
  %desired_len.addr = alloca i32, align 4
  %inbuf.addr = alloca i16*, align 8
  %len.addr = alloca i32, align 4
  %num_used.addr = alloca i32*, align 8
  %ch.addr = alloca i32, align 4
  %i = alloca i32, align 4
  %j = alloca i32, align 4
  %k = alloca i32, align 4
  %linear = alloca i32, align 4
  %value = alloca i32, align 4
  %y0 = alloca i32, align 4
  %y1 = alloca i32, align 4
  %y2 = alloca i32, align 4
  %y3 = alloca i32, align 4
  %x0 = alloca double, align 8
  %x1 = alloca double, align 8
  %x2 = alloca double, align 8
  %x3 = alloca double, align 8
  %time0 = alloca double, align 8
  %cleanup.dest.slot = alloca i32
  store %struct.lame_global_flags* %gfp, %struct.lame_global_flags** %gfp.addr, align 8, !tbaa !1
  store i16* %outbuf, i16** %outbuf.addr, align 8, !tbaa !1
  store i32 %desired_len, i32* %desired_len.addr, align 4, !tbaa !27
  store i16* %inbuf, i16** %inbuf.addr, align 8, !tbaa !1
  store i32 %len, i32* %len.addr, align 4, !tbaa !27
  store i32* %num_used, i32** %num_used.addr, align 8, !tbaa !1
  store i32 %ch, i32* %ch.addr, align 4, !tbaa !27
  %0 = bitcast i32* %i to i8*
  call void @llvm.lifetime.start(i64 4, i8* %0) #1
  %1 = bitcast i32* %j to i8*
  call void @llvm.lifetime.start(i64 4, i8* %1) #1
  store i32 0, i32* %j, align 4, !tbaa !27
  %2 = bitcast i32* %k to i8*
  call void @llvm.lifetime.start(i64 4, i8* %2) #1
  %3 = bitcast i32* %linear to i8*
  call void @llvm.lifetime.start(i64 4, i8* %3) #1
  %4 = bitcast i32* %value to i8*
  call void @llvm.lifetime.start(i64 4, i8* %4) #1
  %5 = load %struct.lame_global_flags*, %struct.lame_global_flags** %gfp.addr, align 8, !tbaa !1
  %frameNum = getelementptr inbounds %struct.lame_global_flags, %struct.lame_global_flags* %5, i32 0, i32 39
  %6 = load i64, i64* %frameNum, align 8, !tbaa !5
  %cmp = icmp eq i64 %6, 0
  br i1 %cmp, label %land.lhs.true, label %if.end

land.lhs.true:                                    ; preds = %entry
  %7 = load i32, i32* %ch.addr, align 4, !tbaa !27
  %idxprom = sext i32 %7 to i64
  %arrayidx = getelementptr inbounds [2 x i32], [2 x i32]* @fill_buffer_resample.init, i32 0, i64 %idxprom
  %8 = load i32, i32* %arrayidx, align 4, !tbaa !27
  %tobool = icmp ne i32 %8, 0
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %land.lhs.true
  %9 = load i32, i32* %ch.addr, align 4, !tbaa !27
  %idxprom1 = sext i32 %9 to i64
  %arrayidx2 = getelementptr inbounds [2 x i32], [2 x i32]* @fill_buffer_resample.init, i32 0, i64 %idxprom1
  store i32 1, i32* %arrayidx2, align 4, !tbaa !27
  %10 = load i32, i32* %ch.addr, align 4, !tbaa !27
  %idxprom3 = sext i32 %10 to i64
  %arrayidx4 = getelementptr inbounds [2 x double], [2 x double]* @fill_buffer_resample.itime, i32 0, i64 %idxprom3
  store double 0.000000e+00, double* %arrayidx4, align 8, !tbaa !36
  %11 = load i32, i32* %ch.addr, align 4, !tbaa !27
  %idxprom5 = sext i32 %11 to i64
  %arrayidx6 = getelementptr inbounds [2 x [5 x i16]], [2 x [5 x i16]]* @fill_buffer_resample.inbuf_old, i32 0, i64 %idxprom5
  %arraydecay = getelementptr inbounds [5 x i16], [5 x i16]* %arrayidx6, i32 0, i32 0
  %12 = bitcast i16* %arraydecay to i8*
  call void @llvm.memset.p0i8.i64(i8* %12, i8 0, i64 10, i32 1, i1 false)
  br label %if.end

if.end:                                           ; preds = %if.then, %land.lhs.true, %entry
  %13 = load %struct.lame_global_flags*, %struct.lame_global_flags** %gfp.addr, align 8, !tbaa !1
  %frameNum7 = getelementptr inbounds %struct.lame_global_flags, %struct.lame_global_flags* %13, i32 0, i32 39
  %14 = load i64, i64* %frameNum7, align 8, !tbaa !5
  %cmp8 = icmp ne i64 %14, 0
  br i1 %cmp8, label %if.then.9, label %if.end.12

if.then.9:                                        ; preds = %if.end
  %15 = load i32, i32* %ch.addr, align 4, !tbaa !27
  %idxprom10 = sext i32 %15 to i64
  %arrayidx11 = getelementptr inbounds [2 x i32], [2 x i32]* @fill_buffer_resample.init, i32 0, i64 %idxprom10
  store i32 0, i32* %arrayidx11, align 4, !tbaa !27
  br label %if.end.12

if.end.12:                                        ; preds = %if.then.9, %if.end
  %16 = load %struct.lame_global_flags*, %struct.lame_global_flags** %gfp.addr, align 8, !tbaa !1
  %resample_ratio = getelementptr inbounds %struct.lame_global_flags, %struct.lame_global_flags* %16, i32 0, i32 49
  %17 = load float, float* %resample_ratio, align 4, !tbaa !21
  %conv = fpext float %17 to double
  %18 = load %struct.lame_global_flags*, %struct.lame_global_flags** %gfp.addr, align 8, !tbaa !1
  %resample_ratio13 = getelementptr inbounds %struct.lame_global_flags, %struct.lame_global_flags* %18, i32 0, i32 49
  %19 = load float, float* %resample_ratio13, align 4, !tbaa !21
  %conv14 = fpext float %19 to double
  %add = fadd double 5.000000e-01, %conv14
  %call = call double @floor(double %add) #7
  %sub = fsub double %conv, %call
  %call15 = call double @fabs(double %sub) #7
  %cmp16 = fcmp olt double %call15, 1.000000e-04
  %conv17 = zext i1 %cmp16 to i32
  store i32 %conv17, i32* %linear, align 4, !tbaa !27
  store i32 0, i32* %k, align 4, !tbaa !27
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end.12
  %20 = load i32, i32* %k, align 4, !tbaa !27
  %21 = load i32, i32* %desired_len.addr, align 4, !tbaa !27
  %cmp18 = icmp slt i32 %20, %21
  br i1 %cmp18, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %22 = bitcast i32* %y0 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %22) #1
  %23 = bitcast i32* %y1 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %23) #1
  %24 = bitcast i32* %y2 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %24) #1
  %25 = bitcast i32* %y3 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %25) #1
  %26 = bitcast double* %x0 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %26) #1
  %27 = bitcast double* %x1 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %27) #1
  %28 = bitcast double* %x2 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %28) #1
  %29 = bitcast double* %x3 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %29) #1
  %30 = bitcast double* %time0 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %30) #1
  %31 = load i32, i32* %k, align 4, !tbaa !27
  %conv20 = sitofp i32 %31 to float
  %32 = load %struct.lame_global_flags*, %struct.lame_global_flags** %gfp.addr, align 8, !tbaa !1
  %resample_ratio21 = getelementptr inbounds %struct.lame_global_flags, %struct.lame_global_flags* %32, i32 0, i32 49
  %33 = load float, float* %resample_ratio21, align 4, !tbaa !21
  %mul = fmul float %conv20, %33
  %conv22 = fpext float %mul to double
  store double %conv22, double* %time0, align 8, !tbaa !36
  %34 = load double, double* %time0, align 8, !tbaa !36
  %35 = load i32, i32* %ch.addr, align 4, !tbaa !27
  %idxprom23 = sext i32 %35 to i64
  %arrayidx24 = getelementptr inbounds [2 x double], [2 x double]* @fill_buffer_resample.itime, i32 0, i64 %idxprom23
  %36 = load double, double* %arrayidx24, align 8, !tbaa !36
  %sub25 = fsub double %34, %36
  %call26 = call double @floor(double %sub25) #7
  %conv27 = fptosi double %call26 to i32
  store i32 %conv27, i32* %j, align 4, !tbaa !27
  %37 = load i32, i32* %j, align 4, !tbaa !27
  %add28 = add nsw i32 %37, 2
  %38 = load i32, i32* %len.addr, align 4, !tbaa !27
  %cmp29 = icmp sge i32 %add28, %38
  br i1 %cmp29, label %if.then.31, label %if.end.32

if.then.31:                                       ; preds = %for.body
  store i32 2, i32* %cleanup.dest.slot
  br label %cleanup

if.end.32:                                        ; preds = %for.body
  %39 = load double, double* %time0, align 8, !tbaa !36
  %40 = load i32, i32* %ch.addr, align 4, !tbaa !27
  %idxprom33 = sext i32 %40 to i64
  %arrayidx34 = getelementptr inbounds [2 x double], [2 x double]* @fill_buffer_resample.itime, i32 0, i64 %idxprom33
  %41 = load double, double* %arrayidx34, align 8, !tbaa !36
  %42 = load i32, i32* %j, align 4, !tbaa !27
  %conv35 = sitofp i32 %42 to double
  %add36 = fadd double %41, %conv35
  %sub37 = fsub double %39, %add36
  store double %sub37, double* %x1, align 8, !tbaa !36
  %43 = load double, double* %x1, align 8, !tbaa !36
  %sub38 = fsub double %43, 1.000000e+00
  store double %sub38, double* %x2, align 8, !tbaa !36
  %44 = load i32, i32* %j, align 4, !tbaa !27
  %cmp39 = icmp slt i32 %44, 0
  br i1 %cmp39, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.end.32
  %45 = load i32, i32* %j, align 4, !tbaa !27
  %add41 = add nsw i32 5, %45
  %idxprom42 = sext i32 %add41 to i64
  %46 = load i32, i32* %ch.addr, align 4, !tbaa !27
  %idxprom43 = sext i32 %46 to i64
  %arrayidx44 = getelementptr inbounds [2 x [5 x i16]], [2 x [5 x i16]]* @fill_buffer_resample.inbuf_old, i32 0, i64 %idxprom43
  %arrayidx45 = getelementptr inbounds [5 x i16], [5 x i16]* %arrayidx44, i32 0, i64 %idxprom42
  %47 = load i16, i16* %arrayidx45, align 2, !tbaa !75
  %conv46 = sext i16 %47 to i32
  br label %cond.end

cond.false:                                       ; preds = %if.end.32
  %48 = load i32, i32* %j, align 4, !tbaa !27
  %idxprom47 = sext i32 %48 to i64
  %49 = load i16*, i16** %inbuf.addr, align 8, !tbaa !1
  %arrayidx48 = getelementptr inbounds i16, i16* %49, i64 %idxprom47
  %50 = load i16, i16* %arrayidx48, align 2, !tbaa !75
  %conv49 = sext i16 %50 to i32
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %conv46, %cond.true ], [ %conv49, %cond.false ]
  store i32 %cond, i32* %y1, align 4, !tbaa !27
  %51 = load i32, i32* %j, align 4, !tbaa !27
  %add50 = add nsw i32 1, %51
  %cmp51 = icmp slt i32 %add50, 0
  br i1 %cmp51, label %cond.true.53, label %cond.false.60

cond.true.53:                                     ; preds = %cond.end
  %52 = load i32, i32* %j, align 4, !tbaa !27
  %add54 = add nsw i32 6, %52
  %idxprom55 = sext i32 %add54 to i64
  %53 = load i32, i32* %ch.addr, align 4, !tbaa !27
  %idxprom56 = sext i32 %53 to i64
  %arrayidx57 = getelementptr inbounds [2 x [5 x i16]], [2 x [5 x i16]]* @fill_buffer_resample.inbuf_old, i32 0, i64 %idxprom56
  %arrayidx58 = getelementptr inbounds [5 x i16], [5 x i16]* %arrayidx57, i32 0, i64 %idxprom55
  %54 = load i16, i16* %arrayidx58, align 2, !tbaa !75
  %conv59 = sext i16 %54 to i32
  br label %cond.end.65

cond.false.60:                                    ; preds = %cond.end
  %55 = load i32, i32* %j, align 4, !tbaa !27
  %add61 = add nsw i32 1, %55
  %idxprom62 = sext i32 %add61 to i64
  %56 = load i16*, i16** %inbuf.addr, align 8, !tbaa !1
  %arrayidx63 = getelementptr inbounds i16, i16* %56, i64 %idxprom62
  %57 = load i16, i16* %arrayidx63, align 2, !tbaa !75
  %conv64 = sext i16 %57 to i32
  br label %cond.end.65

cond.end.65:                                      ; preds = %cond.false.60, %cond.true.53
  %cond66 = phi i32 [ %conv59, %cond.true.53 ], [ %conv64, %cond.false.60 ]
  store i32 %cond66, i32* %y2, align 4, !tbaa !27
  %58 = load i32, i32* %linear, align 4, !tbaa !27
  %tobool67 = icmp ne i32 %58, 0
  br i1 %tobool67, label %if.then.68, label %if.else

if.then.68:                                       ; preds = %cond.end.65
  %59 = load i32, i32* %y2, align 4, !tbaa !27
  %conv69 = sitofp i32 %59 to double
  %60 = load double, double* %x1, align 8, !tbaa !36
  %mul70 = fmul double %conv69, %60
  %61 = load i32, i32* %y1, align 4, !tbaa !27
  %conv71 = sitofp i32 %61 to double
  %62 = load double, double* %x2, align 8, !tbaa !36
  %mul72 = fmul double %conv71, %62
  %sub73 = fsub double %mul70, %mul72
  %add74 = fadd double 5.000000e-01, %sub73
  %call75 = call double @floor(double %add74) #7
  %conv76 = fptosi double %call75 to i16
  %63 = load i32, i32* %k, align 4, !tbaa !27
  %idxprom77 = sext i32 %63 to i64
  %64 = load i16*, i16** %outbuf.addr, align 8, !tbaa !1
  %arrayidx78 = getelementptr inbounds i16, i16* %64, i64 %idxprom77
  store i16 %conv76, i16* %arrayidx78, align 2, !tbaa !75
  br label %if.end.160

if.else:                                          ; preds = %cond.end.65
  %65 = load double, double* %x1, align 8, !tbaa !36
  %add79 = fadd double %65, 1.000000e+00
  store double %add79, double* %x0, align 8, !tbaa !36
  %66 = load double, double* %x1, align 8, !tbaa !36
  %sub80 = fsub double %66, 2.000000e+00
  store double %sub80, double* %x3, align 8, !tbaa !36
  %67 = load i32, i32* %j, align 4, !tbaa !27
  %sub81 = sub nsw i32 %67, 1
  %cmp82 = icmp slt i32 %sub81, 0
  br i1 %cmp82, label %cond.true.84, label %cond.false.92

cond.true.84:                                     ; preds = %if.else
  %68 = load i32, i32* %j, align 4, !tbaa !27
  %sub85 = sub nsw i32 %68, 1
  %add86 = add nsw i32 5, %sub85
  %idxprom87 = sext i32 %add86 to i64
  %69 = load i32, i32* %ch.addr, align 4, !tbaa !27
  %idxprom88 = sext i32 %69 to i64
  %arrayidx89 = getelementptr inbounds [2 x [5 x i16]], [2 x [5 x i16]]* @fill_buffer_resample.inbuf_old, i32 0, i64 %idxprom88
  %arrayidx90 = getelementptr inbounds [5 x i16], [5 x i16]* %arrayidx89, i32 0, i64 %idxprom87
  %70 = load i16, i16* %arrayidx90, align 2, !tbaa !75
  %conv91 = sext i16 %70 to i32
  br label %cond.end.97

cond.false.92:                                    ; preds = %if.else
  %71 = load i32, i32* %j, align 4, !tbaa !27
  %sub93 = sub nsw i32 %71, 1
  %idxprom94 = sext i32 %sub93 to i64
  %72 = load i16*, i16** %inbuf.addr, align 8, !tbaa !1
  %arrayidx95 = getelementptr inbounds i16, i16* %72, i64 %idxprom94
  %73 = load i16, i16* %arrayidx95, align 2, !tbaa !75
  %conv96 = sext i16 %73 to i32
  br label %cond.end.97

cond.end.97:                                      ; preds = %cond.false.92, %cond.true.84
  %cond98 = phi i32 [ %conv91, %cond.true.84 ], [ %conv96, %cond.false.92 ]
  store i32 %cond98, i32* %y0, align 4, !tbaa !27
  %74 = load i32, i32* %j, align 4, !tbaa !27
  %add99 = add nsw i32 %74, 2
  %cmp100 = icmp slt i32 %add99, 0
  br i1 %cmp100, label %cond.true.102, label %cond.false.110

cond.true.102:                                    ; preds = %cond.end.97
  %75 = load i32, i32* %j, align 4, !tbaa !27
  %add103 = add nsw i32 %75, 2
  %add104 = add nsw i32 5, %add103
  %idxprom105 = sext i32 %add104 to i64
  %76 = load i32, i32* %ch.addr, align 4, !tbaa !27
  %idxprom106 = sext i32 %76 to i64
  %arrayidx107 = getelementptr inbounds [2 x [5 x i16]], [2 x [5 x i16]]* @fill_buffer_resample.inbuf_old, i32 0, i64 %idxprom106
  %arrayidx108 = getelementptr inbounds [5 x i16], [5 x i16]* %arrayidx107, i32 0, i64 %idxprom105
  %77 = load i16, i16* %arrayidx108, align 2, !tbaa !75
  %conv109 = sext i16 %77 to i32
  br label %cond.end.115

cond.false.110:                                   ; preds = %cond.end.97
  %78 = load i32, i32* %j, align 4, !tbaa !27
  %add111 = add nsw i32 %78, 2
  %idxprom112 = sext i32 %add111 to i64
  %79 = load i16*, i16** %inbuf.addr, align 8, !tbaa !1
  %arrayidx113 = getelementptr inbounds i16, i16* %79, i64 %idxprom112
  %80 = load i16, i16* %arrayidx113, align 2, !tbaa !75
  %conv114 = sext i16 %80 to i32
  br label %cond.end.115

cond.end.115:                                     ; preds = %cond.false.110, %cond.true.102
  %cond116 = phi i32 [ %conv109, %cond.true.102 ], [ %conv114, %cond.false.110 ]
  store i32 %cond116, i32* %y3, align 4, !tbaa !27
  %81 = load i32, i32* %y0, align 4, !tbaa !27
  %sub117 = sub nsw i32 0, %81
  %conv118 = sitofp i32 %sub117 to double
  %82 = load double, double* %x1, align 8, !tbaa !36
  %mul119 = fmul double %conv118, %82
  %83 = load double, double* %x2, align 8, !tbaa !36
  %mul120 = fmul double %mul119, %83
  %84 = load double, double* %x3, align 8, !tbaa !36
  %mul121 = fmul double %mul120, %84
  %div = fdiv double %mul121, 6.000000e+00
  %add122 = fadd double 5.000000e-01, %div
  %85 = load i32, i32* %y1, align 4, !tbaa !27
  %conv123 = sitofp i32 %85 to double
  %86 = load double, double* %x0, align 8, !tbaa !36
  %mul124 = fmul double %conv123, %86
  %87 = load double, double* %x2, align 8, !tbaa !36
  %mul125 = fmul double %mul124, %87
  %88 = load double, double* %x3, align 8, !tbaa !36
  %mul126 = fmul double %mul125, %88
  %div127 = fdiv double %mul126, 2.000000e+00
  %add128 = fadd double %add122, %div127
  %89 = load i32, i32* %y2, align 4, !tbaa !27
  %conv129 = sitofp i32 %89 to double
  %90 = load double, double* %x0, align 8, !tbaa !36
  %mul130 = fmul double %conv129, %90
  %91 = load double, double* %x1, align 8, !tbaa !36
  %mul131 = fmul double %mul130, %91
  %92 = load double, double* %x3, align 8, !tbaa !36
  %mul132 = fmul double %mul131, %92
  %div133 = fdiv double %mul132, 2.000000e+00
  %sub134 = fsub double %add128, %div133
  %93 = load i32, i32* %y3, align 4, !tbaa !27
  %conv135 = sitofp i32 %93 to double
  %94 = load double, double* %x0, align 8, !tbaa !36
  %mul136 = fmul double %conv135, %94
  %95 = load double, double* %x1, align 8, !tbaa !36
  %mul137 = fmul double %mul136, %95
  %96 = load double, double* %x2, align 8, !tbaa !36
  %mul138 = fmul double %mul137, %96
  %div139 = fdiv double %mul138, 6.000000e+00
  %add140 = fadd double %sub134, %div139
  %call141 = call double @floor(double %add140) #7
  %conv142 = fptosi double %call141 to i32
  store i32 %conv142, i32* %value, align 4, !tbaa !27
  %97 = load i32, i32* %value, align 4, !tbaa !27
  %cmp143 = icmp sgt i32 %97, 32767
  br i1 %cmp143, label %if.then.145, label %if.else.148

if.then.145:                                      ; preds = %cond.end.115
  %98 = load i32, i32* %k, align 4, !tbaa !27
  %idxprom146 = sext i32 %98 to i64
  %99 = load i16*, i16** %outbuf.addr, align 8, !tbaa !1
  %arrayidx147 = getelementptr inbounds i16, i16* %99, i64 %idxprom146
  store i16 32767, i16* %arrayidx147, align 2, !tbaa !75
  br label %if.end.159

if.else.148:                                      ; preds = %cond.end.115
  %100 = load i32, i32* %value, align 4, !tbaa !27
  %cmp149 = icmp slt i32 %100, -32767
  br i1 %cmp149, label %if.then.151, label %if.else.154

if.then.151:                                      ; preds = %if.else.148
  %101 = load i32, i32* %k, align 4, !tbaa !27
  %idxprom152 = sext i32 %101 to i64
  %102 = load i16*, i16** %outbuf.addr, align 8, !tbaa !1
  %arrayidx153 = getelementptr inbounds i16, i16* %102, i64 %idxprom152
  store i16 -32767, i16* %arrayidx153, align 2, !tbaa !75
  br label %if.end.158

if.else.154:                                      ; preds = %if.else.148
  %103 = load i32, i32* %value, align 4, !tbaa !27
  %conv155 = trunc i32 %103 to i16
  %104 = load i32, i32* %k, align 4, !tbaa !27
  %idxprom156 = sext i32 %104 to i64
  %105 = load i16*, i16** %outbuf.addr, align 8, !tbaa !1
  %arrayidx157 = getelementptr inbounds i16, i16* %105, i64 %idxprom156
  store i16 %conv155, i16* %arrayidx157, align 2, !tbaa !75
  br label %if.end.158

if.end.158:                                       ; preds = %if.else.154, %if.then.151
  br label %if.end.159

if.end.159:                                       ; preds = %if.end.158, %if.then.145
  br label %if.end.160

if.end.160:                                       ; preds = %if.end.159, %if.then.68
  store i32 0, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %if.end.160, %if.then.31
  %106 = bitcast double* %time0 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %106) #1
  %107 = bitcast double* %x3 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %107) #1
  %108 = bitcast double* %x2 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %108) #1
  %109 = bitcast double* %x1 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %109) #1
  %110 = bitcast double* %x0 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %110) #1
  %111 = bitcast i32* %y3 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %111) #1
  %112 = bitcast i32* %y2 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %112) #1
  %113 = bitcast i32* %y1 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %113) #1
  %114 = bitcast i32* %y0 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %114) #1
  %cleanup.dest = load i32, i32* %cleanup.dest.slot
  switch i32 %cleanup.dest, label %unreachable [
    i32 0, label %cleanup.cont
    i32 2, label %for.end
  ]

cleanup.cont:                                     ; preds = %cleanup
  br label %for.inc

for.inc:                                          ; preds = %cleanup.cont
  %115 = load i32, i32* %k, align 4, !tbaa !27
  %inc = add nsw i32 %115, 1
  store i32 %inc, i32* %k, align 4, !tbaa !27
  br label %for.cond

for.end:                                          ; preds = %cleanup, %for.cond
  %116 = load i32, i32* %len.addr, align 4, !tbaa !27
  %117 = load i32, i32* %j, align 4, !tbaa !27
  %add169 = add nsw i32 %117, 2
  %cmp170 = icmp slt i32 %116, %add169
  br i1 %cmp170, label %cond.true.172, label %cond.false.173

cond.true.172:                                    ; preds = %for.end
  %118 = load i32, i32* %len.addr, align 4, !tbaa !27
  br label %cond.end.175

cond.false.173:                                   ; preds = %for.end
  %119 = load i32, i32* %j, align 4, !tbaa !27
  %add174 = add nsw i32 %119, 2
  br label %cond.end.175

cond.end.175:                                     ; preds = %cond.false.173, %cond.true.172
  %cond176 = phi i32 [ %118, %cond.true.172 ], [ %add174, %cond.false.173 ]
  %120 = load i32*, i32** %num_used.addr, align 8, !tbaa !1
  store i32 %cond176, i32* %120, align 4, !tbaa !27
  %121 = load i32*, i32** %num_used.addr, align 8, !tbaa !1
  %122 = load i32, i32* %121, align 4, !tbaa !27
  %conv177 = sitofp i32 %122 to float
  %123 = load i32, i32* %k, align 4, !tbaa !27
  %conv178 = sitofp i32 %123 to float
  %124 = load %struct.lame_global_flags*, %struct.lame_global_flags** %gfp.addr, align 8, !tbaa !1
  %resample_ratio179 = getelementptr inbounds %struct.lame_global_flags, %struct.lame_global_flags* %124, i32 0, i32 49
  %125 = load float, float* %resample_ratio179, align 4, !tbaa !21
  %mul180 = fmul float %conv178, %125
  %sub181 = fsub float %conv177, %mul180
  %conv182 = fpext float %sub181 to double
  %126 = load i32, i32* %ch.addr, align 4, !tbaa !27
  %idxprom183 = sext i32 %126 to i64
  %arrayidx184 = getelementptr inbounds [2 x double], [2 x double]* @fill_buffer_resample.itime, i32 0, i64 %idxprom183
  %127 = load double, double* %arrayidx184, align 8, !tbaa !36
  %add185 = fadd double %127, %conv182
  store double %add185, double* %arrayidx184, align 8, !tbaa !36
  store i32 0, i32* %i, align 4, !tbaa !27
  br label %for.cond.186

for.cond.186:                                     ; preds = %for.inc.198, %cond.end.175
  %128 = load i32, i32* %i, align 4, !tbaa !27
  %cmp187 = icmp slt i32 %128, 5
  br i1 %cmp187, label %for.body.189, label %for.end.200

for.body.189:                                     ; preds = %for.cond.186
  %129 = load i32*, i32** %num_used.addr, align 8, !tbaa !1
  %130 = load i32, i32* %129, align 4, !tbaa !27
  %131 = load i32, i32* %i, align 4, !tbaa !27
  %add190 = add nsw i32 %130, %131
  %sub191 = sub nsw i32 %add190, 5
  %idxprom192 = sext i32 %sub191 to i64
  %132 = load i16*, i16** %inbuf.addr, align 8, !tbaa !1
  %arrayidx193 = getelementptr inbounds i16, i16* %132, i64 %idxprom192
  %133 = load i16, i16* %arrayidx193, align 2, !tbaa !75
  %134 = load i32, i32* %i, align 4, !tbaa !27
  %idxprom194 = sext i32 %134 to i64
  %135 = load i32, i32* %ch.addr, align 4, !tbaa !27
  %idxprom195 = sext i32 %135 to i64
  %arrayidx196 = getelementptr inbounds [2 x [5 x i16]], [2 x [5 x i16]]* @fill_buffer_resample.inbuf_old, i32 0, i64 %idxprom195
  %arrayidx197 = getelementptr inbounds [5 x i16], [5 x i16]* %arrayidx196, i32 0, i64 %idxprom194
  store i16 %133, i16* %arrayidx197, align 2, !tbaa !75
  br label %for.inc.198

for.inc.198:                                      ; preds = %for.body.189
  %136 = load i32, i32* %i, align 4, !tbaa !27
  %inc199 = add nsw i32 %136, 1
  store i32 %inc199, i32* %i, align 4, !tbaa !27
  br label %for.cond.186

for.end.200:                                      ; preds = %for.cond.186
  %137 = load i32, i32* %k, align 4, !tbaa !27
  store i32 1, i32* %cleanup.dest.slot
  %138 = bitcast i32* %value to i8*
  call void @llvm.lifetime.end(i64 4, i8* %138) #1
  %139 = bitcast i32* %linear to i8*
  call void @llvm.lifetime.end(i64 4, i8* %139) #1
  %140 = bitcast i32* %k to i8*
  call void @llvm.lifetime.end(i64 4, i8* %140) #1
  %141 = bitcast i32* %j to i8*
  call void @llvm.lifetime.end(i64 4, i8* %141) #1
  %142 = bitcast i32* %i to i8*
  call void @llvm.lifetime.end(i64 4, i8* %142) #1
  ret i32 %137

unreachable:                                      ; preds = %cleanup
  unreachable
}

; Function Attrs: nounwind uwtable
define i32 @fill_buffer(%struct.lame_global_flags* %gfp, i16* %outbuf, i32 %desired_len, i16* %inbuf, i32 %len) #0 {
entry:
  %gfp.addr = alloca %struct.lame_global_flags*, align 8
  %outbuf.addr = alloca i16*, align 8
  %desired_len.addr = alloca i32, align 4
  %inbuf.addr = alloca i16*, align 8
  %len.addr = alloca i32, align 4
  %j = alloca i32, align 4
  store %struct.lame_global_flags* %gfp, %struct.lame_global_flags** %gfp.addr, align 8, !tbaa !1
  store i16* %outbuf, i16** %outbuf.addr, align 8, !tbaa !1
  store i32 %desired_len, i32* %desired_len.addr, align 4, !tbaa !27
  store i16* %inbuf, i16** %inbuf.addr, align 8, !tbaa !1
  store i32 %len, i32* %len.addr, align 4, !tbaa !27
  %0 = bitcast i32* %j to i8*
  call void @llvm.lifetime.start(i64 4, i8* %0) #1
  %1 = load i32, i32* %desired_len.addr, align 4, !tbaa !27
  %2 = load i32, i32* %len.addr, align 4, !tbaa !27
  %cmp = icmp slt i32 %1, %2
  br i1 %cmp, label %cond.true, label %cond.false

cond.true:                                        ; preds = %entry
  %3 = load i32, i32* %desired_len.addr, align 4, !tbaa !27
  br label %cond.end

cond.false:                                       ; preds = %entry
  %4 = load i32, i32* %len.addr, align 4, !tbaa !27
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %3, %cond.true ], [ %4, %cond.false ]
  store i32 %cond, i32* %j, align 4, !tbaa !27
  %5 = load i16*, i16** %outbuf.addr, align 8, !tbaa !1
  %6 = bitcast i16* %5 to i8*
  %7 = load i16*, i16** %inbuf.addr, align 8, !tbaa !1
  %8 = bitcast i16* %7 to i8*
  %9 = load i32, i32* %j, align 4, !tbaa !27
  %conv = sext i32 %9 to i64
  %mul = mul i64 2, %conv
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %6, i8* %8, i64 %mul, i32 1, i1 false)
  %10 = load i32, i32* %j, align 4, !tbaa !27
  %11 = bitcast i32* %j to i8*
  call void @llvm.lifetime.end(i64 4, i8* %11) #1
  ret i32 %10
}

; Function Attrs: nounwind
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* nocapture, i8* nocapture readonly, i64, i32, i1) #1

; Function Attrs: nounwind uwtable
define i32 @lame_encode_buffer(%struct.lame_global_flags* %gfp, i16* %buffer_l, i16* %buffer_r, i32 %nsamples, i8* %mp3buf, i32 %mp3buf_size) #0 {
entry:
  %retval = alloca i32, align 4
  %gfp.addr = alloca %struct.lame_global_flags*, align 8
  %buffer_l.addr = alloca i16*, align 8
  %buffer_r.addr = alloca i16*, align 8
  %nsamples.addr = alloca i32, align 4
  %mp3buf.addr = alloca i8*, align 8
  %mp3buf_size.addr = alloca i32, align 4
  %mp3size = alloca i32, align 4
  %ret = alloca i32, align 4
  %i = alloca i32, align 4
  %ch = alloca i32, align 4
  %mf_needed = alloca i32, align 4
  %in_buffer = alloca [2 x i16*], align 16
  %n_in = alloca i32, align 4
  %n_out = alloca i32, align 4
  %cleanup.dest.slot = alloca i32
  store %struct.lame_global_flags* %gfp, %struct.lame_global_flags** %gfp.addr, align 8, !tbaa !1
  store i16* %buffer_l, i16** %buffer_l.addr, align 8, !tbaa !1
  store i16* %buffer_r, i16** %buffer_r.addr, align 8, !tbaa !1
  store i32 %nsamples, i32* %nsamples.addr, align 4, !tbaa !27
  store i8* %mp3buf, i8** %mp3buf.addr, align 8, !tbaa !1
  store i32 %mp3buf_size, i32* %mp3buf_size.addr, align 4, !tbaa !27
  %0 = bitcast i32* %mp3size to i8*
  call void @llvm.lifetime.start(i64 4, i8* %0) #1
  store i32 0, i32* %mp3size, align 4, !tbaa !27
  %1 = bitcast i32* %ret to i8*
  call void @llvm.lifetime.start(i64 4, i8* %1) #1
  %2 = bitcast i32* %i to i8*
  call void @llvm.lifetime.start(i64 4, i8* %2) #1
  %3 = bitcast i32* %ch to i8*
  call void @llvm.lifetime.start(i64 4, i8* %3) #1
  %4 = bitcast i32* %mf_needed to i8*
  call void @llvm.lifetime.start(i64 4, i8* %4) #1
  %5 = bitcast [2 x i16*]* %in_buffer to i8*
  call void @llvm.lifetime.start(i64 16, i8* %5) #1
  %6 = load i16*, i16** %buffer_l.addr, align 8, !tbaa !1
  %arrayidx = getelementptr inbounds [2 x i16*], [2 x i16*]* %in_buffer, i32 0, i64 0
  store i16* %6, i16** %arrayidx, align 8, !tbaa !1
  %7 = load i16*, i16** %buffer_r.addr, align 8, !tbaa !1
  %arrayidx1 = getelementptr inbounds [2 x i16*], [2 x i16*]* %in_buffer, i32 0, i64 1
  store i16* %7, i16** %arrayidx1, align 8, !tbaa !1
  %8 = load %struct.lame_global_flags*, %struct.lame_global_flags** %gfp.addr, align 8, !tbaa !1
  %framesize = getelementptr inbounds %struct.lame_global_flags, %struct.lame_global_flags* %8, i32 0, i32 42
  %9 = load i32, i32* %framesize, align 4, !tbaa !20
  %add = add nsw i32 1024, %9
  %sub = sub nsw i32 %add, 272
  store i32 %sub, i32* %mf_needed, align 4, !tbaa !27
  %10 = load %struct.lame_global_flags*, %struct.lame_global_flags** %gfp.addr, align 8, !tbaa !1
  %frameNum = getelementptr inbounds %struct.lame_global_flags, %struct.lame_global_flags* %10, i32 0, i32 39
  %11 = load i64, i64* %frameNum, align 8, !tbaa !5
  %cmp = icmp eq i64 %11, 0
  br i1 %cmp, label %land.lhs.true, label %if.end

land.lhs.true:                                    ; preds = %entry
  %12 = load i32, i32* @lame_encode_buffer.frame_buffered, align 4, !tbaa !27
  %tobool = icmp ne i32 %12, 0
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %land.lhs.true
  call void @llvm.memset.p0i8.i64(i8* bitcast ([2 x [3056 x i16]]* @mfbuf to i8*), i8 0, i64 12224, i32 1, i1 false)
  store i32 1, i32* @lame_encode_buffer.frame_buffered, align 4, !tbaa !27
  store i32 1088, i32* @mf_samples_to_encode, align 4, !tbaa !27
  store i32 752, i32* @mf_size, align 4, !tbaa !27
  br label %if.end

if.end:                                           ; preds = %if.then, %land.lhs.true, %entry
  %13 = load %struct.lame_global_flags*, %struct.lame_global_flags** %gfp.addr, align 8, !tbaa !1
  %frameNum2 = getelementptr inbounds %struct.lame_global_flags, %struct.lame_global_flags* %13, i32 0, i32 39
  %14 = load i64, i64* %frameNum2, align 8, !tbaa !5
  %cmp3 = icmp eq i64 %14, 1
  br i1 %cmp3, label %if.then.4, label %if.end.5

if.then.4:                                        ; preds = %if.end
  store i32 0, i32* @lame_encode_buffer.frame_buffered, align 4, !tbaa !27
  br label %if.end.5

if.end.5:                                         ; preds = %if.then.4, %if.end
  %15 = load %struct.lame_global_flags*, %struct.lame_global_flags** %gfp.addr, align 8, !tbaa !1
  %num_channels = getelementptr inbounds %struct.lame_global_flags, %struct.lame_global_flags* %15, i32 0, i32 1
  %16 = load i32, i32* %num_channels, align 4, !tbaa !10
  %cmp6 = icmp eq i32 %16, 2
  br i1 %cmp6, label %land.lhs.true.7, label %if.end.25

land.lhs.true.7:                                  ; preds = %if.end.5
  %17 = load %struct.lame_global_flags*, %struct.lame_global_flags** %gfp.addr, align 8, !tbaa !1
  %stereo = getelementptr inbounds %struct.lame_global_flags, %struct.lame_global_flags* %17, i32 0, i32 46
  %18 = load i32, i32* %stereo, align 4, !tbaa !12
  %cmp8 = icmp eq i32 %18, 1
  br i1 %cmp8, label %if.then.9, label %if.end.25

if.then.9:                                        ; preds = %land.lhs.true.7
  store i32 0, i32* %i, align 4, !tbaa !27
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.then.9
  %19 = load i32, i32* %i, align 4, !tbaa !27
  %20 = load i32, i32* %nsamples.addr, align 4, !tbaa !27
  %cmp10 = icmp slt i32 %19, %20
  br i1 %cmp10, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %21 = load i32, i32* %i, align 4, !tbaa !27
  %idxprom = sext i32 %21 to i64
  %arrayidx11 = getelementptr inbounds [2 x i16*], [2 x i16*]* %in_buffer, i32 0, i64 0
  %22 = load i16*, i16** %arrayidx11, align 8, !tbaa !1
  %arrayidx12 = getelementptr inbounds i16, i16* %22, i64 %idxprom
  %23 = load i16, i16* %arrayidx12, align 2, !tbaa !75
  %conv = sext i16 %23 to i32
  %24 = load i32, i32* %i, align 4, !tbaa !27
  %idxprom13 = sext i32 %24 to i64
  %arrayidx14 = getelementptr inbounds [2 x i16*], [2 x i16*]* %in_buffer, i32 0, i64 1
  %25 = load i16*, i16** %arrayidx14, align 8, !tbaa !1
  %arrayidx15 = getelementptr inbounds i16, i16* %25, i64 %idxprom13
  %26 = load i16, i16* %arrayidx15, align 2, !tbaa !75
  %conv16 = sext i16 %26 to i32
  %add17 = add nsw i32 %conv, %conv16
  %div = sdiv i32 %add17, 2
  %conv18 = trunc i32 %div to i16
  %27 = load i32, i32* %i, align 4, !tbaa !27
  %idxprom19 = sext i32 %27 to i64
  %arrayidx20 = getelementptr inbounds [2 x i16*], [2 x i16*]* %in_buffer, i32 0, i64 0
  %28 = load i16*, i16** %arrayidx20, align 8, !tbaa !1
  %arrayidx21 = getelementptr inbounds i16, i16* %28, i64 %idxprom19
  store i16 %conv18, i16* %arrayidx21, align 2, !tbaa !75
  %29 = load i32, i32* %i, align 4, !tbaa !27
  %idxprom22 = sext i32 %29 to i64
  %arrayidx23 = getelementptr inbounds [2 x i16*], [2 x i16*]* %in_buffer, i32 0, i64 1
  %30 = load i16*, i16** %arrayidx23, align 8, !tbaa !1
  %arrayidx24 = getelementptr inbounds i16, i16* %30, i64 %idxprom22
  store i16 0, i16* %arrayidx24, align 2, !tbaa !75
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %31 = load i32, i32* %i, align 4, !tbaa !27
  %inc = add nsw i32 %31, 1
  store i32 %inc, i32* %i, align 4, !tbaa !27
  br label %for.cond

for.end:                                          ; preds = %for.cond
  br label %if.end.25

if.end.25:                                        ; preds = %for.end, %land.lhs.true.7, %if.end.5
  br label %while.cond

while.cond:                                       ; preds = %cleanup.cont, %if.end.25
  %32 = load i32, i32* %nsamples.addr, align 4, !tbaa !27
  %cmp26 = icmp sgt i32 %32, 0
  br i1 %cmp26, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %33 = bitcast i32* %n_in to i8*
  call void @llvm.lifetime.start(i64 4, i8* %33) #1
  store i32 0, i32* %n_in, align 4, !tbaa !27
  %34 = bitcast i32* %n_out to i8*
  call void @llvm.lifetime.start(i64 4, i8* %34) #1
  store i32 0, i32* %n_out, align 4, !tbaa !27
  store i32 0, i32* %ch, align 4, !tbaa !27
  br label %for.cond.28

for.cond.28:                                      ; preds = %for.inc.54, %while.body
  %35 = load i32, i32* %ch, align 4, !tbaa !27
  %36 = load %struct.lame_global_flags*, %struct.lame_global_flags** %gfp.addr, align 8, !tbaa !1
  %stereo29 = getelementptr inbounds %struct.lame_global_flags, %struct.lame_global_flags* %36, i32 0, i32 46
  %37 = load i32, i32* %stereo29, align 4, !tbaa !12
  %cmp30 = icmp slt i32 %35, %37
  br i1 %cmp30, label %for.body.32, label %for.end.56

for.body.32:                                      ; preds = %for.cond.28
  %38 = load %struct.lame_global_flags*, %struct.lame_global_flags** %gfp.addr, align 8, !tbaa !1
  %resample_ratio = getelementptr inbounds %struct.lame_global_flags, %struct.lame_global_flags* %38, i32 0, i32 49
  %39 = load float, float* %resample_ratio, align 4, !tbaa !21
  %cmp33 = fcmp une float %39, 1.000000e+00
  br i1 %cmp33, label %if.then.35, label %if.else

if.then.35:                                       ; preds = %for.body.32
  %40 = load %struct.lame_global_flags*, %struct.lame_global_flags** %gfp.addr, align 8, !tbaa !1
  %41 = load i32, i32* @mf_size, align 4, !tbaa !27
  %idxprom36 = sext i32 %41 to i64
  %42 = load i32, i32* %ch, align 4, !tbaa !27
  %idxprom37 = sext i32 %42 to i64
  %arrayidx38 = getelementptr inbounds [2 x [3056 x i16]], [2 x [3056 x i16]]* @mfbuf, i32 0, i64 %idxprom37
  %arrayidx39 = getelementptr inbounds [3056 x i16], [3056 x i16]* %arrayidx38, i32 0, i64 %idxprom36
  %43 = load %struct.lame_global_flags*, %struct.lame_global_flags** %gfp.addr, align 8, !tbaa !1
  %framesize40 = getelementptr inbounds %struct.lame_global_flags, %struct.lame_global_flags* %43, i32 0, i32 42
  %44 = load i32, i32* %framesize40, align 4, !tbaa !20
  %45 = load i32, i32* %ch, align 4, !tbaa !27
  %idxprom41 = sext i32 %45 to i64
  %arrayidx42 = getelementptr inbounds [2 x i16*], [2 x i16*]* %in_buffer, i32 0, i64 %idxprom41
  %46 = load i16*, i16** %arrayidx42, align 8, !tbaa !1
  %47 = load i32, i32* %nsamples.addr, align 4, !tbaa !27
  %48 = load i32, i32* %ch, align 4, !tbaa !27
  %call = call i32 @fill_buffer_resample(%struct.lame_global_flags* %40, i16* %arrayidx39, i32 %44, i16* %46, i32 %47, i32* %n_in, i32 %48)
  store i32 %call, i32* %n_out, align 4, !tbaa !27
  br label %if.end.51

if.else:                                          ; preds = %for.body.32
  %49 = load %struct.lame_global_flags*, %struct.lame_global_flags** %gfp.addr, align 8, !tbaa !1
  %50 = load i32, i32* @mf_size, align 4, !tbaa !27
  %idxprom43 = sext i32 %50 to i64
  %51 = load i32, i32* %ch, align 4, !tbaa !27
  %idxprom44 = sext i32 %51 to i64
  %arrayidx45 = getelementptr inbounds [2 x [3056 x i16]], [2 x [3056 x i16]]* @mfbuf, i32 0, i64 %idxprom44
  %arrayidx46 = getelementptr inbounds [3056 x i16], [3056 x i16]* %arrayidx45, i32 0, i64 %idxprom43
  %52 = load %struct.lame_global_flags*, %struct.lame_global_flags** %gfp.addr, align 8, !tbaa !1
  %framesize47 = getelementptr inbounds %struct.lame_global_flags, %struct.lame_global_flags* %52, i32 0, i32 42
  %53 = load i32, i32* %framesize47, align 4, !tbaa !20
  %54 = load i32, i32* %ch, align 4, !tbaa !27
  %idxprom48 = sext i32 %54 to i64
  %arrayidx49 = getelementptr inbounds [2 x i16*], [2 x i16*]* %in_buffer, i32 0, i64 %idxprom48
  %55 = load i16*, i16** %arrayidx49, align 8, !tbaa !1
  %56 = load i32, i32* %nsamples.addr, align 4, !tbaa !27
  %call50 = call i32 @fill_buffer(%struct.lame_global_flags* %49, i16* %arrayidx46, i32 %53, i16* %55, i32 %56)
  store i32 %call50, i32* %n_out, align 4, !tbaa !27
  %57 = load i32, i32* %n_out, align 4, !tbaa !27
  store i32 %57, i32* %n_in, align 4, !tbaa !27
  br label %if.end.51

if.end.51:                                        ; preds = %if.else, %if.then.35
  %58 = load i32, i32* %n_in, align 4, !tbaa !27
  %59 = load i32, i32* %ch, align 4, !tbaa !27
  %idxprom52 = sext i32 %59 to i64
  %arrayidx53 = getelementptr inbounds [2 x i16*], [2 x i16*]* %in_buffer, i32 0, i64 %idxprom52
  %60 = load i16*, i16** %arrayidx53, align 8, !tbaa !1
  %idx.ext = sext i32 %58 to i64
  %add.ptr = getelementptr inbounds i16, i16* %60, i64 %idx.ext
  store i16* %add.ptr, i16** %arrayidx53, align 8, !tbaa !1
  br label %for.inc.54

for.inc.54:                                       ; preds = %if.end.51
  %61 = load i32, i32* %ch, align 4, !tbaa !27
  %inc55 = add nsw i32 %61, 1
  store i32 %inc55, i32* %ch, align 4, !tbaa !27
  br label %for.cond.28

for.end.56:                                       ; preds = %for.cond.28
  %62 = load i32, i32* %n_in, align 4, !tbaa !27
  %63 = load i32, i32* %nsamples.addr, align 4, !tbaa !27
  %sub57 = sub nsw i32 %63, %62
  store i32 %sub57, i32* %nsamples.addr, align 4, !tbaa !27
  %64 = load i32, i32* %n_out, align 4, !tbaa !27
  %65 = load i32, i32* @mf_size, align 4, !tbaa !27
  %add58 = add nsw i32 %65, %64
  store i32 %add58, i32* @mf_size, align 4, !tbaa !27
  %66 = load i32, i32* %n_out, align 4, !tbaa !27
  %67 = load i32, i32* @mf_samples_to_encode, align 4, !tbaa !27
  %add59 = add nsw i32 %67, %66
  store i32 %add59, i32* @mf_samples_to_encode, align 4, !tbaa !27
  %68 = load i32, i32* @mf_size, align 4, !tbaa !27
  %69 = load i32, i32* %mf_needed, align 4, !tbaa !27
  %cmp60 = icmp sge i32 %68, %69
  br i1 %cmp60, label %if.then.62, label %if.end.100

if.then.62:                                       ; preds = %for.end.56
  %70 = load %struct.lame_global_flags*, %struct.lame_global_flags** %gfp.addr, align 8, !tbaa !1
  %71 = load i32, i32* @mf_size, align 4, !tbaa !27
  %72 = load i8*, i8** %mp3buf.addr, align 8, !tbaa !1
  %73 = load i32, i32* %mp3buf_size.addr, align 4, !tbaa !27
  %call63 = call i32 @lame_encode_frame(%struct.lame_global_flags* %70, i16* getelementptr inbounds ([2 x [3056 x i16]], [2 x [3056 x i16]]* @mfbuf, i32 0, i64 0, i32 0), i16* getelementptr inbounds ([2 x [3056 x i16]], [2 x [3056 x i16]]* @mfbuf, i32 0, i64 1, i32 0), i32 %71, i8* %72, i32 %73)
  store i32 %call63, i32* %ret, align 4, !tbaa !27
  %74 = load i32, i32* %ret, align 4, !tbaa !27
  %cmp64 = icmp eq i32 %74, -1
  br i1 %cmp64, label %if.then.66, label %if.end.67

if.then.66:                                       ; preds = %if.then.62
  store i32 -1, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.67:                                        ; preds = %if.then.62
  %75 = load i32, i32* %ret, align 4, !tbaa !27
  %76 = load i8*, i8** %mp3buf.addr, align 8, !tbaa !1
  %idx.ext68 = sext i32 %75 to i64
  %add.ptr69 = getelementptr inbounds i8, i8* %76, i64 %idx.ext68
  store i8* %add.ptr69, i8** %mp3buf.addr, align 8, !tbaa !1
  %77 = load i32, i32* %ret, align 4, !tbaa !27
  %78 = load i32, i32* %mp3size, align 4, !tbaa !27
  %add70 = add nsw i32 %78, %77
  store i32 %add70, i32* %mp3size, align 4, !tbaa !27
  %79 = load %struct.lame_global_flags*, %struct.lame_global_flags** %gfp.addr, align 8, !tbaa !1
  %framesize71 = getelementptr inbounds %struct.lame_global_flags, %struct.lame_global_flags* %79, i32 0, i32 42
  %80 = load i32, i32* %framesize71, align 4, !tbaa !20
  %81 = load i32, i32* @mf_size, align 4, !tbaa !27
  %sub72 = sub nsw i32 %81, %80
  store i32 %sub72, i32* @mf_size, align 4, !tbaa !27
  %82 = load %struct.lame_global_flags*, %struct.lame_global_flags** %gfp.addr, align 8, !tbaa !1
  %framesize73 = getelementptr inbounds %struct.lame_global_flags, %struct.lame_global_flags* %82, i32 0, i32 42
  %83 = load i32, i32* %framesize73, align 4, !tbaa !20
  %84 = load i32, i32* @mf_samples_to_encode, align 4, !tbaa !27
  %sub74 = sub nsw i32 %84, %83
  store i32 %sub74, i32* @mf_samples_to_encode, align 4, !tbaa !27
  store i32 0, i32* %ch, align 4, !tbaa !27
  br label %for.cond.75

for.cond.75:                                      ; preds = %for.inc.97, %if.end.67
  %85 = load i32, i32* %ch, align 4, !tbaa !27
  %86 = load %struct.lame_global_flags*, %struct.lame_global_flags** %gfp.addr, align 8, !tbaa !1
  %stereo76 = getelementptr inbounds %struct.lame_global_flags, %struct.lame_global_flags* %86, i32 0, i32 46
  %87 = load i32, i32* %stereo76, align 4, !tbaa !12
  %cmp77 = icmp slt i32 %85, %87
  br i1 %cmp77, label %for.body.79, label %for.end.99

for.body.79:                                      ; preds = %for.cond.75
  store i32 0, i32* %i, align 4, !tbaa !27
  br label %for.cond.80

for.cond.80:                                      ; preds = %for.inc.94, %for.body.79
  %88 = load i32, i32* %i, align 4, !tbaa !27
  %89 = load i32, i32* @mf_size, align 4, !tbaa !27
  %cmp81 = icmp slt i32 %88, %89
  br i1 %cmp81, label %for.body.83, label %for.end.96

for.body.83:                                      ; preds = %for.cond.80
  %90 = load i32, i32* %i, align 4, !tbaa !27
  %91 = load %struct.lame_global_flags*, %struct.lame_global_flags** %gfp.addr, align 8, !tbaa !1
  %framesize84 = getelementptr inbounds %struct.lame_global_flags, %struct.lame_global_flags* %91, i32 0, i32 42
  %92 = load i32, i32* %framesize84, align 4, !tbaa !20
  %add85 = add nsw i32 %90, %92
  %idxprom86 = sext i32 %add85 to i64
  %93 = load i32, i32* %ch, align 4, !tbaa !27
  %idxprom87 = sext i32 %93 to i64
  %arrayidx88 = getelementptr inbounds [2 x [3056 x i16]], [2 x [3056 x i16]]* @mfbuf, i32 0, i64 %idxprom87
  %arrayidx89 = getelementptr inbounds [3056 x i16], [3056 x i16]* %arrayidx88, i32 0, i64 %idxprom86
  %94 = load i16, i16* %arrayidx89, align 2, !tbaa !75
  %95 = load i32, i32* %i, align 4, !tbaa !27
  %idxprom90 = sext i32 %95 to i64
  %96 = load i32, i32* %ch, align 4, !tbaa !27
  %idxprom91 = sext i32 %96 to i64
  %arrayidx92 = getelementptr inbounds [2 x [3056 x i16]], [2 x [3056 x i16]]* @mfbuf, i32 0, i64 %idxprom91
  %arrayidx93 = getelementptr inbounds [3056 x i16], [3056 x i16]* %arrayidx92, i32 0, i64 %idxprom90
  store i16 %94, i16* %arrayidx93, align 2, !tbaa !75
  br label %for.inc.94

for.inc.94:                                       ; preds = %for.body.83
  %97 = load i32, i32* %i, align 4, !tbaa !27
  %inc95 = add nsw i32 %97, 1
  store i32 %inc95, i32* %i, align 4, !tbaa !27
  br label %for.cond.80

for.end.96:                                       ; preds = %for.cond.80
  br label %for.inc.97

for.inc.97:                                       ; preds = %for.end.96
  %98 = load i32, i32* %ch, align 4, !tbaa !27
  %inc98 = add nsw i32 %98, 1
  store i32 %inc98, i32* %ch, align 4, !tbaa !27
  br label %for.cond.75

for.end.99:                                       ; preds = %for.cond.75
  br label %if.end.100

if.end.100:                                       ; preds = %for.end.99, %for.end.56
  store i32 0, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %if.end.100, %if.then.66
  %99 = bitcast i32* %n_out to i8*
  call void @llvm.lifetime.end(i64 4, i8* %99) #1
  %100 = bitcast i32* %n_in to i8*
  call void @llvm.lifetime.end(i64 4, i8* %100) #1
  %cleanup.dest = load i32, i32* %cleanup.dest.slot
  switch i32 %cleanup.dest, label %cleanup.102 [
    i32 0, label %cleanup.cont
  ]

cleanup.cont:                                     ; preds = %cleanup
  br label %while.cond

while.end:                                        ; preds = %while.cond
  %101 = load i32, i32* %mp3size, align 4, !tbaa !27
  store i32 %101, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.102

cleanup.102:                                      ; preds = %while.end, %cleanup
  %102 = bitcast [2 x i16*]* %in_buffer to i8*
  call void @llvm.lifetime.end(i64 16, i8* %102) #1
  %103 = bitcast i32* %mf_needed to i8*
  call void @llvm.lifetime.end(i64 4, i8* %103) #1
  %104 = bitcast i32* %ch to i8*
  call void @llvm.lifetime.end(i64 4, i8* %104) #1
  %105 = bitcast i32* %i to i8*
  call void @llvm.lifetime.end(i64 4, i8* %105) #1
  %106 = bitcast i32* %ret to i8*
  call void @llvm.lifetime.end(i64 4, i8* %106) #1
  %107 = bitcast i32* %mp3size to i8*
  call void @llvm.lifetime.end(i64 4, i8* %107) #1
  %108 = load i32, i32* %retval
  ret i32 %108
}

; Function Attrs: nounwind uwtable
define i32 @lame_encode_buffer_interleaved(%struct.lame_global_flags* %gfp, i16* %buffer, i32 %nsamples, i8* %mp3buf, i32 %mp3buf_size) #0 {
entry:
  %retval = alloca i32, align 4
  %gfp.addr = alloca %struct.lame_global_flags*, align 8
  %buffer.addr = alloca i16*, align 8
  %nsamples.addr = alloca i32, align 4
  %mp3buf.addr = alloca i8*, align 8
  %mp3buf_size.addr = alloca i32, align 4
  %mp3size = alloca i32, align 4
  %ret = alloca i32, align 4
  %i = alloca i32, align 4
  %ch = alloca i32, align 4
  %mf_needed = alloca i32, align 4
  %cleanup.dest.slot = alloca i32
  %buffer_l = alloca i16*, align 8
  %buffer_r = alloca i16*, align 8
  %n_out = alloca i32, align 4
  store %struct.lame_global_flags* %gfp, %struct.lame_global_flags** %gfp.addr, align 8, !tbaa !1
  store i16* %buffer, i16** %buffer.addr, align 8, !tbaa !1
  store i32 %nsamples, i32* %nsamples.addr, align 4, !tbaa !27
  store i8* %mp3buf, i8** %mp3buf.addr, align 8, !tbaa !1
  store i32 %mp3buf_size, i32* %mp3buf_size.addr, align 4, !tbaa !27
  %0 = bitcast i32* %mp3size to i8*
  call void @llvm.lifetime.start(i64 4, i8* %0) #1
  store i32 0, i32* %mp3size, align 4, !tbaa !27
  %1 = bitcast i32* %ret to i8*
  call void @llvm.lifetime.start(i64 4, i8* %1) #1
  %2 = bitcast i32* %i to i8*
  call void @llvm.lifetime.start(i64 4, i8* %2) #1
  %3 = bitcast i32* %ch to i8*
  call void @llvm.lifetime.start(i64 4, i8* %3) #1
  %4 = bitcast i32* %mf_needed to i8*
  call void @llvm.lifetime.start(i64 4, i8* %4) #1
  %5 = load %struct.lame_global_flags*, %struct.lame_global_flags** %gfp.addr, align 8, !tbaa !1
  %framesize = getelementptr inbounds %struct.lame_global_flags, %struct.lame_global_flags* %5, i32 0, i32 42
  %6 = load i32, i32* %framesize, align 4, !tbaa !20
  %add = add nsw i32 1024, %6
  %sub = sub nsw i32 %add, 272
  store i32 %sub, i32* %mf_needed, align 4, !tbaa !27
  %7 = load %struct.lame_global_flags*, %struct.lame_global_flags** %gfp.addr, align 8, !tbaa !1
  %num_channels = getelementptr inbounds %struct.lame_global_flags, %struct.lame_global_flags* %7, i32 0, i32 1
  %8 = load i32, i32* %num_channels, align 4, !tbaa !10
  %cmp = icmp eq i32 %8, 1
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %9 = load %struct.lame_global_flags*, %struct.lame_global_flags** %gfp.addr, align 8, !tbaa !1
  %10 = load i16*, i16** %buffer.addr, align 8, !tbaa !1
  %11 = load i32, i32* %nsamples.addr, align 4, !tbaa !27
  %12 = load i8*, i8** %mp3buf.addr, align 8, !tbaa !1
  %13 = load i32, i32* %mp3buf_size.addr, align 4, !tbaa !27
  %call = call i32 @lame_encode_buffer(%struct.lame_global_flags* %9, i16* %10, i16* null, i32 %11, i8* %12, i32 %13)
  store i32 %call, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.141

if.end:                                           ; preds = %entry
  %14 = load %struct.lame_global_flags*, %struct.lame_global_flags** %gfp.addr, align 8, !tbaa !1
  %resample_ratio = getelementptr inbounds %struct.lame_global_flags, %struct.lame_global_flags* %14, i32 0, i32 49
  %15 = load float, float* %resample_ratio, align 4, !tbaa !21
  %cmp1 = fcmp une float %15, 1.000000e+00
  br i1 %cmp1, label %if.then.2, label %if.end.26

if.then.2:                                        ; preds = %if.end
  %16 = bitcast i16** %buffer_l to i8*
  call void @llvm.lifetime.start(i64 8, i8* %16) #1
  %17 = bitcast i16** %buffer_r to i8*
  call void @llvm.lifetime.start(i64 8, i8* %17) #1
  %18 = load i32, i32* %nsamples.addr, align 4, !tbaa !27
  %conv = sext i32 %18 to i64
  %mul = mul i64 2, %conv
  %call3 = call noalias i8* @malloc(i64 %mul) #1
  %19 = bitcast i8* %call3 to i16*
  store i16* %19, i16** %buffer_l, align 8, !tbaa !1
  %20 = load i32, i32* %nsamples.addr, align 4, !tbaa !27
  %conv4 = sext i32 %20 to i64
  %mul5 = mul i64 2, %conv4
  %call6 = call noalias i8* @malloc(i64 %mul5) #1
  %21 = bitcast i8* %call6 to i16*
  store i16* %21, i16** %buffer_r, align 8, !tbaa !1
  %22 = load i16*, i16** %buffer_l, align 8, !tbaa !1
  %cmp7 = icmp eq i16* %22, null
  br i1 %cmp7, label %if.then.11, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.then.2
  %23 = load i16*, i16** %buffer_r, align 8, !tbaa !1
  %cmp9 = icmp eq i16* %23, null
  br i1 %cmp9, label %if.then.11, label %if.end.12

if.then.11:                                       ; preds = %lor.lhs.false, %if.then.2
  store i32 -1, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.12:                                        ; preds = %lor.lhs.false
  store i32 0, i32* %i, align 4, !tbaa !27
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end.12
  %24 = load i32, i32* %i, align 4, !tbaa !27
  %25 = load i32, i32* %nsamples.addr, align 4, !tbaa !27
  %cmp13 = icmp slt i32 %24, %25
  br i1 %cmp13, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %26 = load i32, i32* %i, align 4, !tbaa !27
  %mul15 = mul nsw i32 2, %26
  %idxprom = sext i32 %mul15 to i64
  %27 = load i16*, i16** %buffer.addr, align 8, !tbaa !1
  %arrayidx = getelementptr inbounds i16, i16* %27, i64 %idxprom
  %28 = load i16, i16* %arrayidx, align 2, !tbaa !75
  %29 = load i32, i32* %i, align 4, !tbaa !27
  %idxprom16 = sext i32 %29 to i64
  %30 = load i16*, i16** %buffer_l, align 8, !tbaa !1
  %arrayidx17 = getelementptr inbounds i16, i16* %30, i64 %idxprom16
  store i16 %28, i16* %arrayidx17, align 2, !tbaa !75
  %31 = load i32, i32* %i, align 4, !tbaa !27
  %mul18 = mul nsw i32 2, %31
  %add19 = add nsw i32 %mul18, 1
  %idxprom20 = sext i32 %add19 to i64
  %32 = load i16*, i16** %buffer.addr, align 8, !tbaa !1
  %arrayidx21 = getelementptr inbounds i16, i16* %32, i64 %idxprom20
  %33 = load i16, i16* %arrayidx21, align 2, !tbaa !75
  %34 = load i32, i32* %i, align 4, !tbaa !27
  %idxprom22 = sext i32 %34 to i64
  %35 = load i16*, i16** %buffer_r, align 8, !tbaa !1
  %arrayidx23 = getelementptr inbounds i16, i16* %35, i64 %idxprom22
  store i16 %33, i16* %arrayidx23, align 2, !tbaa !75
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %36 = load i32, i32* %i, align 4, !tbaa !27
  %inc = add nsw i32 %36, 1
  store i32 %inc, i32* %i, align 4, !tbaa !27
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %37 = load %struct.lame_global_flags*, %struct.lame_global_flags** %gfp.addr, align 8, !tbaa !1
  %38 = load i16*, i16** %buffer_l, align 8, !tbaa !1
  %39 = load i16*, i16** %buffer_r, align 8, !tbaa !1
  %40 = load i32, i32* %nsamples.addr, align 4, !tbaa !27
  %41 = load i8*, i8** %mp3buf.addr, align 8, !tbaa !1
  %42 = load i32, i32* %mp3buf_size.addr, align 4, !tbaa !27
  %call24 = call i32 @lame_encode_buffer(%struct.lame_global_flags* %37, i16* %38, i16* %39, i32 %40, i8* %41, i32 %42)
  store i32 %call24, i32* %ret, align 4, !tbaa !27
  %43 = load i16*, i16** %buffer_l, align 8, !tbaa !1
  %44 = bitcast i16* %43 to i8*
  call void @free(i8* %44) #1
  %45 = load i16*, i16** %buffer_r, align 8, !tbaa !1
  %46 = bitcast i16* %45 to i8*
  call void @free(i8* %46) #1
  %47 = load i32, i32* %ret, align 4, !tbaa !27
  store i32 %47, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %for.end, %if.then.11
  %48 = bitcast i16** %buffer_r to i8*
  call void @llvm.lifetime.end(i64 8, i8* %48) #1
  %49 = bitcast i16** %buffer_l to i8*
  call void @llvm.lifetime.end(i64 8, i8* %49) #1
  br label %cleanup.141

if.end.26:                                        ; preds = %if.end
  %50 = load %struct.lame_global_flags*, %struct.lame_global_flags** %gfp.addr, align 8, !tbaa !1
  %frameNum = getelementptr inbounds %struct.lame_global_flags, %struct.lame_global_flags* %50, i32 0, i32 39
  %51 = load i64, i64* %frameNum, align 8, !tbaa !5
  %cmp27 = icmp eq i64 %51, 0
  br i1 %cmp27, label %land.lhs.true, label %if.end.30

land.lhs.true:                                    ; preds = %if.end.26
  %52 = load i32, i32* @lame_encode_buffer_interleaved.frame_buffered, align 4, !tbaa !27
  %tobool = icmp ne i32 %52, 0
  br i1 %tobool, label %if.end.30, label %if.then.29

if.then.29:                                       ; preds = %land.lhs.true
  call void @llvm.memset.p0i8.i64(i8* bitcast ([2 x [3056 x i16]]* @mfbuf to i8*), i8 0, i64 12224, i32 1, i1 false)
  store i32 1, i32* @lame_encode_buffer_interleaved.frame_buffered, align 4, !tbaa !27
  store i32 1088, i32* @mf_samples_to_encode, align 4, !tbaa !27
  store i32 752, i32* @mf_size, align 4, !tbaa !27
  br label %if.end.30

if.end.30:                                        ; preds = %if.then.29, %land.lhs.true, %if.end.26
  %53 = load %struct.lame_global_flags*, %struct.lame_global_flags** %gfp.addr, align 8, !tbaa !1
  %frameNum31 = getelementptr inbounds %struct.lame_global_flags, %struct.lame_global_flags* %53, i32 0, i32 39
  %54 = load i64, i64* %frameNum31, align 8, !tbaa !5
  %cmp32 = icmp eq i64 %54, 1
  br i1 %cmp32, label %if.then.34, label %if.end.35

if.then.34:                                       ; preds = %if.end.30
  store i32 0, i32* @lame_encode_buffer_interleaved.frame_buffered, align 4, !tbaa !27
  br label %if.end.35

if.end.35:                                        ; preds = %if.then.34, %if.end.30
  %55 = load %struct.lame_global_flags*, %struct.lame_global_flags** %gfp.addr, align 8, !tbaa !1
  %num_channels36 = getelementptr inbounds %struct.lame_global_flags, %struct.lame_global_flags* %55, i32 0, i32 1
  %56 = load i32, i32* %num_channels36, align 4, !tbaa !10
  %cmp37 = icmp eq i32 %56, 2
  br i1 %cmp37, label %land.lhs.true.39, label %if.end.68

land.lhs.true.39:                                 ; preds = %if.end.35
  %57 = load %struct.lame_global_flags*, %struct.lame_global_flags** %gfp.addr, align 8, !tbaa !1
  %stereo = getelementptr inbounds %struct.lame_global_flags, %struct.lame_global_flags* %57, i32 0, i32 46
  %58 = load i32, i32* %stereo, align 4, !tbaa !12
  %cmp40 = icmp eq i32 %58, 1
  br i1 %cmp40, label %if.then.42, label %if.end.68

if.then.42:                                       ; preds = %land.lhs.true.39
  store i32 0, i32* %i, align 4, !tbaa !27
  br label %for.cond.43

for.cond.43:                                      ; preds = %for.inc.65, %if.then.42
  %59 = load i32, i32* %i, align 4, !tbaa !27
  %60 = load i32, i32* %nsamples.addr, align 4, !tbaa !27
  %cmp44 = icmp slt i32 %59, %60
  br i1 %cmp44, label %for.body.46, label %for.end.67

for.body.46:                                      ; preds = %for.cond.43
  %61 = load i32, i32* %i, align 4, !tbaa !27
  %mul47 = mul nsw i32 2, %61
  %idxprom48 = sext i32 %mul47 to i64
  %62 = load i16*, i16** %buffer.addr, align 8, !tbaa !1
  %arrayidx49 = getelementptr inbounds i16, i16* %62, i64 %idxprom48
  %63 = load i16, i16* %arrayidx49, align 2, !tbaa !75
  %conv50 = sext i16 %63 to i32
  %64 = load i32, i32* %i, align 4, !tbaa !27
  %mul51 = mul nsw i32 2, %64
  %add52 = add nsw i32 %mul51, 1
  %idxprom53 = sext i32 %add52 to i64
  %65 = load i16*, i16** %buffer.addr, align 8, !tbaa !1
  %arrayidx54 = getelementptr inbounds i16, i16* %65, i64 %idxprom53
  %66 = load i16, i16* %arrayidx54, align 2, !tbaa !75
  %conv55 = sext i16 %66 to i32
  %add56 = add nsw i32 %conv50, %conv55
  %div = sdiv i32 %add56, 2
  %conv57 = trunc i32 %div to i16
  %67 = load i32, i32* %i, align 4, !tbaa !27
  %mul58 = mul nsw i32 2, %67
  %idxprom59 = sext i32 %mul58 to i64
  %68 = load i16*, i16** %buffer.addr, align 8, !tbaa !1
  %arrayidx60 = getelementptr inbounds i16, i16* %68, i64 %idxprom59
  store i16 %conv57, i16* %arrayidx60, align 2, !tbaa !75
  %69 = load i32, i32* %i, align 4, !tbaa !27
  %mul61 = mul nsw i32 2, %69
  %add62 = add nsw i32 %mul61, 1
  %idxprom63 = sext i32 %add62 to i64
  %70 = load i16*, i16** %buffer.addr, align 8, !tbaa !1
  %arrayidx64 = getelementptr inbounds i16, i16* %70, i64 %idxprom63
  store i16 0, i16* %arrayidx64, align 2, !tbaa !75
  br label %for.inc.65

for.inc.65:                                       ; preds = %for.body.46
  %71 = load i32, i32* %i, align 4, !tbaa !27
  %inc66 = add nsw i32 %71, 1
  store i32 %inc66, i32* %i, align 4, !tbaa !27
  br label %for.cond.43

for.end.67:                                       ; preds = %for.cond.43
  br label %if.end.68

if.end.68:                                        ; preds = %for.end.67, %land.lhs.true.39, %if.end.35
  br label %while.cond

while.cond:                                       ; preds = %cleanup.cont, %if.end.68
  %72 = load i32, i32* %nsamples.addr, align 4, !tbaa !27
  %cmp69 = icmp sgt i32 %72, 0
  br i1 %cmp69, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %73 = bitcast i32* %n_out to i8*
  call void @llvm.lifetime.start(i64 4, i8* %73) #1
  %74 = load %struct.lame_global_flags*, %struct.lame_global_flags** %gfp.addr, align 8, !tbaa !1
  %framesize71 = getelementptr inbounds %struct.lame_global_flags, %struct.lame_global_flags* %74, i32 0, i32 42
  %75 = load i32, i32* %framesize71, align 4, !tbaa !20
  %76 = load i32, i32* %nsamples.addr, align 4, !tbaa !27
  %cmp72 = icmp slt i32 %75, %76
  br i1 %cmp72, label %cond.true, label %cond.false

cond.true:                                        ; preds = %while.body
  %77 = load %struct.lame_global_flags*, %struct.lame_global_flags** %gfp.addr, align 8, !tbaa !1
  %framesize74 = getelementptr inbounds %struct.lame_global_flags, %struct.lame_global_flags* %77, i32 0, i32 42
  %78 = load i32, i32* %framesize74, align 4, !tbaa !20
  br label %cond.end

cond.false:                                       ; preds = %while.body
  %79 = load i32, i32* %nsamples.addr, align 4, !tbaa !27
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %78, %cond.true ], [ %79, %cond.false ]
  store i32 %cond, i32* %n_out, align 4, !tbaa !27
  store i32 0, i32* %i, align 4, !tbaa !27
  br label %for.cond.75

for.cond.75:                                      ; preds = %for.inc.92, %cond.end
  %80 = load i32, i32* %i, align 4, !tbaa !27
  %81 = load i32, i32* %n_out, align 4, !tbaa !27
  %cmp76 = icmp slt i32 %80, %81
  br i1 %cmp76, label %for.body.78, label %for.end.94

for.body.78:                                      ; preds = %for.cond.75
  %82 = load i32, i32* %i, align 4, !tbaa !27
  %mul79 = mul nsw i32 2, %82
  %idxprom80 = sext i32 %mul79 to i64
  %83 = load i16*, i16** %buffer.addr, align 8, !tbaa !1
  %arrayidx81 = getelementptr inbounds i16, i16* %83, i64 %idxprom80
  %84 = load i16, i16* %arrayidx81, align 2, !tbaa !75
  %85 = load i32, i32* @mf_size, align 4, !tbaa !27
  %86 = load i32, i32* %i, align 4, !tbaa !27
  %add82 = add nsw i32 %85, %86
  %idxprom83 = sext i32 %add82 to i64
  %arrayidx84 = getelementptr inbounds [3056 x i16], [3056 x i16]* getelementptr inbounds ([2 x [3056 x i16]], [2 x [3056 x i16]]* @mfbuf, i32 0, i64 0), i32 0, i64 %idxprom83
  store i16 %84, i16* %arrayidx84, align 2, !tbaa !75
  %87 = load i32, i32* %i, align 4, !tbaa !27
  %mul85 = mul nsw i32 2, %87
  %add86 = add nsw i32 %mul85, 1
  %idxprom87 = sext i32 %add86 to i64
  %88 = load i16*, i16** %buffer.addr, align 8, !tbaa !1
  %arrayidx88 = getelementptr inbounds i16, i16* %88, i64 %idxprom87
  %89 = load i16, i16* %arrayidx88, align 2, !tbaa !75
  %90 = load i32, i32* @mf_size, align 4, !tbaa !27
  %91 = load i32, i32* %i, align 4, !tbaa !27
  %add89 = add nsw i32 %90, %91
  %idxprom90 = sext i32 %add89 to i64
  %arrayidx91 = getelementptr inbounds [3056 x i16], [3056 x i16]* getelementptr inbounds ([2 x [3056 x i16]], [2 x [3056 x i16]]* @mfbuf, i32 0, i64 1), i32 0, i64 %idxprom90
  store i16 %89, i16* %arrayidx91, align 2, !tbaa !75
  br label %for.inc.92

for.inc.92:                                       ; preds = %for.body.78
  %92 = load i32, i32* %i, align 4, !tbaa !27
  %inc93 = add nsw i32 %92, 1
  store i32 %inc93, i32* %i, align 4, !tbaa !27
  br label %for.cond.75

for.end.94:                                       ; preds = %for.cond.75
  %93 = load i32, i32* %n_out, align 4, !tbaa !27
  %mul95 = mul nsw i32 2, %93
  %94 = load i16*, i16** %buffer.addr, align 8, !tbaa !1
  %idx.ext = sext i32 %mul95 to i64
  %add.ptr = getelementptr inbounds i16, i16* %94, i64 %idx.ext
  store i16* %add.ptr, i16** %buffer.addr, align 8, !tbaa !1
  %95 = load i32, i32* %n_out, align 4, !tbaa !27
  %96 = load i32, i32* %nsamples.addr, align 4, !tbaa !27
  %sub96 = sub nsw i32 %96, %95
  store i32 %sub96, i32* %nsamples.addr, align 4, !tbaa !27
  %97 = load i32, i32* %n_out, align 4, !tbaa !27
  %98 = load i32, i32* @mf_size, align 4, !tbaa !27
  %add97 = add nsw i32 %98, %97
  store i32 %add97, i32* @mf_size, align 4, !tbaa !27
  %99 = load i32, i32* %n_out, align 4, !tbaa !27
  %100 = load i32, i32* @mf_samples_to_encode, align 4, !tbaa !27
  %add98 = add nsw i32 %100, %99
  store i32 %add98, i32* @mf_samples_to_encode, align 4, !tbaa !27
  %101 = load i32, i32* @mf_size, align 4, !tbaa !27
  %102 = load i32, i32* %mf_needed, align 4, !tbaa !27
  %cmp99 = icmp sge i32 %101, %102
  br i1 %cmp99, label %if.then.101, label %if.end.139

if.then.101:                                      ; preds = %for.end.94
  %103 = load %struct.lame_global_flags*, %struct.lame_global_flags** %gfp.addr, align 8, !tbaa !1
  %104 = load i32, i32* @mf_size, align 4, !tbaa !27
  %105 = load i8*, i8** %mp3buf.addr, align 8, !tbaa !1
  %106 = load i32, i32* %mp3buf_size.addr, align 4, !tbaa !27
  %call102 = call i32 @lame_encode_frame(%struct.lame_global_flags* %103, i16* getelementptr inbounds ([2 x [3056 x i16]], [2 x [3056 x i16]]* @mfbuf, i32 0, i64 0, i32 0), i16* getelementptr inbounds ([2 x [3056 x i16]], [2 x [3056 x i16]]* @mfbuf, i32 0, i64 1, i32 0), i32 %104, i8* %105, i32 %106)
  store i32 %call102, i32* %ret, align 4, !tbaa !27
  %107 = load i32, i32* %ret, align 4, !tbaa !27
  %cmp103 = icmp eq i32 %107, -1
  br i1 %cmp103, label %if.then.105, label %if.end.106

if.then.105:                                      ; preds = %if.then.101
  store i32 -1, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.140

if.end.106:                                       ; preds = %if.then.101
  %108 = load i32, i32* %ret, align 4, !tbaa !27
  %109 = load i8*, i8** %mp3buf.addr, align 8, !tbaa !1
  %idx.ext107 = sext i32 %108 to i64
  %add.ptr108 = getelementptr inbounds i8, i8* %109, i64 %idx.ext107
  store i8* %add.ptr108, i8** %mp3buf.addr, align 8, !tbaa !1
  %110 = load i32, i32* %ret, align 4, !tbaa !27
  %111 = load i32, i32* %mp3size, align 4, !tbaa !27
  %add109 = add nsw i32 %111, %110
  store i32 %add109, i32* %mp3size, align 4, !tbaa !27
  %112 = load %struct.lame_global_flags*, %struct.lame_global_flags** %gfp.addr, align 8, !tbaa !1
  %framesize110 = getelementptr inbounds %struct.lame_global_flags, %struct.lame_global_flags* %112, i32 0, i32 42
  %113 = load i32, i32* %framesize110, align 4, !tbaa !20
  %114 = load i32, i32* @mf_size, align 4, !tbaa !27
  %sub111 = sub nsw i32 %114, %113
  store i32 %sub111, i32* @mf_size, align 4, !tbaa !27
  %115 = load %struct.lame_global_flags*, %struct.lame_global_flags** %gfp.addr, align 8, !tbaa !1
  %framesize112 = getelementptr inbounds %struct.lame_global_flags, %struct.lame_global_flags* %115, i32 0, i32 42
  %116 = load i32, i32* %framesize112, align 4, !tbaa !20
  %117 = load i32, i32* @mf_samples_to_encode, align 4, !tbaa !27
  %sub113 = sub nsw i32 %117, %116
  store i32 %sub113, i32* @mf_samples_to_encode, align 4, !tbaa !27
  store i32 0, i32* %ch, align 4, !tbaa !27
  br label %for.cond.114

for.cond.114:                                     ; preds = %for.inc.136, %if.end.106
  %118 = load i32, i32* %ch, align 4, !tbaa !27
  %119 = load %struct.lame_global_flags*, %struct.lame_global_flags** %gfp.addr, align 8, !tbaa !1
  %stereo115 = getelementptr inbounds %struct.lame_global_flags, %struct.lame_global_flags* %119, i32 0, i32 46
  %120 = load i32, i32* %stereo115, align 4, !tbaa !12
  %cmp116 = icmp slt i32 %118, %120
  br i1 %cmp116, label %for.body.118, label %for.end.138

for.body.118:                                     ; preds = %for.cond.114
  store i32 0, i32* %i, align 4, !tbaa !27
  br label %for.cond.119

for.cond.119:                                     ; preds = %for.inc.133, %for.body.118
  %121 = load i32, i32* %i, align 4, !tbaa !27
  %122 = load i32, i32* @mf_size, align 4, !tbaa !27
  %cmp120 = icmp slt i32 %121, %122
  br i1 %cmp120, label %for.body.122, label %for.end.135

for.body.122:                                     ; preds = %for.cond.119
  %123 = load i32, i32* %i, align 4, !tbaa !27
  %124 = load %struct.lame_global_flags*, %struct.lame_global_flags** %gfp.addr, align 8, !tbaa !1
  %framesize123 = getelementptr inbounds %struct.lame_global_flags, %struct.lame_global_flags* %124, i32 0, i32 42
  %125 = load i32, i32* %framesize123, align 4, !tbaa !20
  %add124 = add nsw i32 %123, %125
  %idxprom125 = sext i32 %add124 to i64
  %126 = load i32, i32* %ch, align 4, !tbaa !27
  %idxprom126 = sext i32 %126 to i64
  %arrayidx127 = getelementptr inbounds [2 x [3056 x i16]], [2 x [3056 x i16]]* @mfbuf, i32 0, i64 %idxprom126
  %arrayidx128 = getelementptr inbounds [3056 x i16], [3056 x i16]* %arrayidx127, i32 0, i64 %idxprom125
  %127 = load i16, i16* %arrayidx128, align 2, !tbaa !75
  %128 = load i32, i32* %i, align 4, !tbaa !27
  %idxprom129 = sext i32 %128 to i64
  %129 = load i32, i32* %ch, align 4, !tbaa !27
  %idxprom130 = sext i32 %129 to i64
  %arrayidx131 = getelementptr inbounds [2 x [3056 x i16]], [2 x [3056 x i16]]* @mfbuf, i32 0, i64 %idxprom130
  %arrayidx132 = getelementptr inbounds [3056 x i16], [3056 x i16]* %arrayidx131, i32 0, i64 %idxprom129
  store i16 %127, i16* %arrayidx132, align 2, !tbaa !75
  br label %for.inc.133

for.inc.133:                                      ; preds = %for.body.122
  %130 = load i32, i32* %i, align 4, !tbaa !27
  %inc134 = add nsw i32 %130, 1
  store i32 %inc134, i32* %i, align 4, !tbaa !27
  br label %for.cond.119

for.end.135:                                      ; preds = %for.cond.119
  br label %for.inc.136

for.inc.136:                                      ; preds = %for.end.135
  %131 = load i32, i32* %ch, align 4, !tbaa !27
  %inc137 = add nsw i32 %131, 1
  store i32 %inc137, i32* %ch, align 4, !tbaa !27
  br label %for.cond.114

for.end.138:                                      ; preds = %for.cond.114
  br label %if.end.139

if.end.139:                                       ; preds = %for.end.138, %for.end.94
  store i32 0, i32* %cleanup.dest.slot
  br label %cleanup.140

cleanup.140:                                      ; preds = %if.end.139, %if.then.105
  %132 = bitcast i32* %n_out to i8*
  call void @llvm.lifetime.end(i64 4, i8* %132) #1
  %cleanup.dest = load i32, i32* %cleanup.dest.slot
  switch i32 %cleanup.dest, label %cleanup.141 [
    i32 0, label %cleanup.cont
  ]

cleanup.cont:                                     ; preds = %cleanup.140
  br label %while.cond

while.end:                                        ; preds = %while.cond
  %133 = load i32, i32* %mp3size, align 4, !tbaa !27
  store i32 %133, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.141

cleanup.141:                                      ; preds = %while.end, %cleanup.140, %cleanup, %if.then
  %134 = bitcast i32* %mf_needed to i8*
  call void @llvm.lifetime.end(i64 4, i8* %134) #1
  %135 = bitcast i32* %ch to i8*
  call void @llvm.lifetime.end(i64 4, i8* %135) #1
  %136 = bitcast i32* %i to i8*
  call void @llvm.lifetime.end(i64 4, i8* %136) #1
  %137 = bitcast i32* %ret to i8*
  call void @llvm.lifetime.end(i64 4, i8* %137) #1
  %138 = bitcast i32* %mp3size to i8*
  call void @llvm.lifetime.end(i64 4, i8* %138) #1
  %139 = load i32, i32* %retval
  ret i32 %139
}

; Function Attrs: nounwind
declare noalias i8* @malloc(i64) #4

; Function Attrs: nounwind
declare void @free(i8*) #4

; Function Attrs: nounwind uwtable
define i32 @lame_encode(%struct.lame_global_flags* %gfp, [1152 x i16]* %in_buffer, i8* %mp3buf, i32 %size) #0 {
entry:
  %gfp.addr = alloca %struct.lame_global_flags*, align 8
  %in_buffer.addr = alloca [1152 x i16]*, align 8
  %mp3buf.addr = alloca i8*, align 8
  %size.addr = alloca i32, align 4
  %imp3 = alloca i32, align 4
  %save = alloca i32, align 4
  store %struct.lame_global_flags* %gfp, %struct.lame_global_flags** %gfp.addr, align 8, !tbaa !1
  store [1152 x i16]* %in_buffer, [1152 x i16]** %in_buffer.addr, align 8, !tbaa !1
  store i8* %mp3buf, i8** %mp3buf.addr, align 8, !tbaa !1
  store i32 %size, i32* %size.addr, align 4, !tbaa !27
  %0 = bitcast i32* %imp3 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %0) #1
  %1 = bitcast i32* %save to i8*
  call void @llvm.lifetime.start(i64 4, i8* %1) #1
  %2 = load i32, i32* @mf_samples_to_encode, align 4, !tbaa !27
  store i32 %2, i32* %save, align 4, !tbaa !27
  %3 = load %struct.lame_global_flags*, %struct.lame_global_flags** %gfp.addr, align 8, !tbaa !1
  %4 = load [1152 x i16]*, [1152 x i16]** %in_buffer.addr, align 8, !tbaa !1
  %arrayidx = getelementptr inbounds [1152 x i16], [1152 x i16]* %4, i64 0
  %arraydecay = getelementptr inbounds [1152 x i16], [1152 x i16]* %arrayidx, i32 0, i32 0
  %5 = load [1152 x i16]*, [1152 x i16]** %in_buffer.addr, align 8, !tbaa !1
  %arrayidx1 = getelementptr inbounds [1152 x i16], [1152 x i16]* %5, i64 1
  %arraydecay2 = getelementptr inbounds [1152 x i16], [1152 x i16]* %arrayidx1, i32 0, i32 0
  %6 = load %struct.lame_global_flags*, %struct.lame_global_flags** %gfp.addr, align 8, !tbaa !1
  %mode_gr = getelementptr inbounds %struct.lame_global_flags, %struct.lame_global_flags* %6, i32 0, i32 45
  %7 = load i32, i32* %mode_gr, align 4, !tbaa !18
  %mul = mul nsw i32 576, %7
  %8 = load i8*, i8** %mp3buf.addr, align 8, !tbaa !1
  %9 = load i32, i32* %size.addr, align 4, !tbaa !27
  %call = call i32 @lame_encode_buffer(%struct.lame_global_flags* %3, i16* %arraydecay, i16* %arraydecay2, i32 %mul, i8* %8, i32 %9)
  store i32 %call, i32* %imp3, align 4, !tbaa !27
  %10 = load i32, i32* %save, align 4, !tbaa !27
  store i32 %10, i32* @mf_samples_to_encode, align 4, !tbaa !27
  %11 = load i32, i32* %imp3, align 4, !tbaa !27
  %12 = bitcast i32* %save to i8*
  call void @llvm.lifetime.end(i64 4, i8* %12) #1
  %13 = bitcast i32* %imp3 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %13) #1
  ret i32 %11
}

; Function Attrs: nounwind uwtable
define void @lame_init(%struct.lame_global_flags* %gfp) #0 {
entry:
  %gfp.addr = alloca %struct.lame_global_flags*, align 8
  store %struct.lame_global_flags* %gfp, %struct.lame_global_flags** %gfp.addr, align 8, !tbaa !1
  %0 = load %struct.lame_global_flags*, %struct.lame_global_flags** %gfp.addr, align 8, !tbaa !1
  %allow_diff_short = getelementptr inbounds %struct.lame_global_flags, %struct.lame_global_flags* %0, i32 0, i32 36
  store i32 0, i32* %allow_diff_short, align 4, !tbaa !77
  %1 = load %struct.lame_global_flags*, %struct.lame_global_flags** %gfp.addr, align 8, !tbaa !1
  %ATHonly = getelementptr inbounds %struct.lame_global_flags, %struct.lame_global_flags* %1, i32 0, i32 33
  store i32 0, i32* %ATHonly, align 4, !tbaa !78
  %2 = load %struct.lame_global_flags*, %struct.lame_global_flags** %gfp.addr, align 8, !tbaa !1
  %noATH = getelementptr inbounds %struct.lame_global_flags, %struct.lame_global_flags* %2, i32 0, i32 34
  store i32 0, i32* %noATH, align 4, !tbaa !79
  %3 = load %struct.lame_global_flags*, %struct.lame_global_flags** %gfp.addr, align 8, !tbaa !1
  %bWriteVbrTag = getelementptr inbounds %struct.lame_global_flags, %struct.lame_global_flags* %3, i32 0, i32 5
  store i32 1, i32* %bWriteVbrTag, align 4, !tbaa !50
  %4 = load %struct.lame_global_flags*, %struct.lame_global_flags** %gfp.addr, align 8, !tbaa !1
  %cwlimit = getelementptr inbounds %struct.lame_global_flags, %struct.lame_global_flags* %4, i32 0, i32 35
  store float 0.000000e+00, float* %cwlimit, align 4, !tbaa !80
  %5 = load %struct.lame_global_flags*, %struct.lame_global_flags** %gfp.addr, align 8, !tbaa !1
  %disable_reservoir = getelementptr inbounds %struct.lame_global_flags, %struct.lame_global_flags* %5, i32 0, i32 17
  store i32 0, i32* %disable_reservoir, align 4, !tbaa !65
  %6 = load %struct.lame_global_flags*, %struct.lame_global_flags** %gfp.addr, align 8, !tbaa !1
  %experimentalX = getelementptr inbounds %struct.lame_global_flags, %struct.lame_global_flags* %6, i32 0, i32 18
  store i32 0, i32* %experimentalX, align 4, !tbaa !81
  %7 = load %struct.lame_global_flags*, %struct.lame_global_flags** %gfp.addr, align 8, !tbaa !1
  %experimentalY = getelementptr inbounds %struct.lame_global_flags, %struct.lame_global_flags* %7, i32 0, i32 19
  store i32 0, i32* %experimentalY, align 4, !tbaa !82
  %8 = load %struct.lame_global_flags*, %struct.lame_global_flags** %gfp.addr, align 8, !tbaa !1
  %experimentalZ = getelementptr inbounds %struct.lame_global_flags, %struct.lame_global_flags* %8, i32 0, i32 20
  store i32 0, i32* %experimentalZ, align 4, !tbaa !83
  %9 = load %struct.lame_global_flags*, %struct.lame_global_flags** %gfp.addr, align 8, !tbaa !1
  %frameNum = getelementptr inbounds %struct.lame_global_flags, %struct.lame_global_flags* %9, i32 0, i32 39
  store i64 0, i64* %frameNum, align 8, !tbaa !5
  %10 = load %struct.lame_global_flags*, %struct.lame_global_flags** %gfp.addr, align 8, !tbaa !1
  %gtkflag = getelementptr inbounds %struct.lame_global_flags, %struct.lame_global_flags* %10, i32 0, i32 4
  store i32 0, i32* %gtkflag, align 4, !tbaa !55
  %11 = load %struct.lame_global_flags*, %struct.lame_global_flags** %gfp.addr, align 8, !tbaa !1
  %quality = getelementptr inbounds %struct.lame_global_flags, %struct.lame_global_flags* %11, i32 0, i32 6
  store i32 5, i32* %quality, align 4, !tbaa !48
  %12 = load %struct.lame_global_flags*, %struct.lame_global_flags** %gfp.addr, align 8, !tbaa !1
  %input_format = getelementptr inbounds %struct.lame_global_flags, %struct.lame_global_flags* %12, i32 0, i32 29
  store i32 0, i32* %input_format, align 4, !tbaa !84
  %13 = load %struct.lame_global_flags*, %struct.lame_global_flags** %gfp.addr, align 8, !tbaa !1
  %filter_type = getelementptr inbounds %struct.lame_global_flags, %struct.lame_global_flags* %13, i32 0, i32 59
  store i32 0, i32* %filter_type, align 4, !tbaa !35
  %14 = load %struct.lame_global_flags*, %struct.lame_global_flags** %gfp.addr, align 8, !tbaa !1
  %lowpassfreq = getelementptr inbounds %struct.lame_global_flags, %struct.lame_global_flags* %14, i32 0, i32 25
  store i32 0, i32* %lowpassfreq, align 4, !tbaa !26
  %15 = load %struct.lame_global_flags*, %struct.lame_global_flags** %gfp.addr, align 8, !tbaa !1
  %highpassfreq = getelementptr inbounds %struct.lame_global_flags, %struct.lame_global_flags* %15, i32 0, i32 26
  store i32 0, i32* %highpassfreq, align 4, !tbaa !30
  %16 = load %struct.lame_global_flags*, %struct.lame_global_flags** %gfp.addr, align 8, !tbaa !1
  %lowpasswidth = getelementptr inbounds %struct.lame_global_flags, %struct.lame_global_flags* %16, i32 0, i32 27
  store i32 -1, i32* %lowpasswidth, align 4, !tbaa !34
  %17 = load %struct.lame_global_flags*, %struct.lame_global_flags** %gfp.addr, align 8, !tbaa !1
  %highpasswidth = getelementptr inbounds %struct.lame_global_flags, %struct.lame_global_flags* %17, i32 0, i32 28
  store i32 -1, i32* %highpasswidth, align 4, !tbaa !32
  %18 = load %struct.lame_global_flags*, %struct.lame_global_flags** %gfp.addr, align 8, !tbaa !1
  %lowpass1 = getelementptr inbounds %struct.lame_global_flags, %struct.lame_global_flags* %18, i32 0, i32 53
  store float 0.000000e+00, float* %lowpass1, align 4, !tbaa !28
  %19 = load %struct.lame_global_flags*, %struct.lame_global_flags** %gfp.addr, align 8, !tbaa !1
  %lowpass2 = getelementptr inbounds %struct.lame_global_flags, %struct.lame_global_flags* %19, i32 0, i32 54
  store float 0.000000e+00, float* %lowpass2, align 4, !tbaa !29
  %20 = load %struct.lame_global_flags*, %struct.lame_global_flags** %gfp.addr, align 8, !tbaa !1
  %highpass1 = getelementptr inbounds %struct.lame_global_flags, %struct.lame_global_flags* %20, i32 0, i32 55
  store float 0.000000e+00, float* %highpass1, align 4, !tbaa !31
  %21 = load %struct.lame_global_flags*, %struct.lame_global_flags** %gfp.addr, align 8, !tbaa !1
  %highpass2 = getelementptr inbounds %struct.lame_global_flags, %struct.lame_global_flags* %21, i32 0, i32 56
  store float 0.000000e+00, float* %highpass2, align 4, !tbaa !33
  %22 = load %struct.lame_global_flags*, %struct.lame_global_flags** %gfp.addr, align 8, !tbaa !1
  %lowpass_band = getelementptr inbounds %struct.lame_global_flags, %struct.lame_global_flags* %22, i32 0, i32 57
  store i32 32, i32* %lowpass_band, align 4, !tbaa !38
  %23 = load %struct.lame_global_flags*, %struct.lame_global_flags** %gfp.addr, align 8, !tbaa !1
  %highpass_band = getelementptr inbounds %struct.lame_global_flags, %struct.lame_global_flags* %23, i32 0, i32 58
  store i32 -1, i32* %highpass_band, align 4, !tbaa !39
  %24 = load %struct.lame_global_flags*, %struct.lame_global_flags** %gfp.addr, align 8, !tbaa !1
  %no_short_blocks = getelementptr inbounds %struct.lame_global_flags, %struct.lame_global_flags* %24, i32 0, i32 37
  store i32 0, i32* %no_short_blocks, align 4, !tbaa !85
  %25 = load %struct.lame_global_flags*, %struct.lame_global_flags** %gfp.addr, align 8, !tbaa !1
  %resample_ratio = getelementptr inbounds %struct.lame_global_flags, %struct.lame_global_flags* %25, i32 0, i32 49
  store float 1.000000e+00, float* %resample_ratio, align 4, !tbaa !21
  %26 = load %struct.lame_global_flags*, %struct.lame_global_flags** %gfp.addr, align 8, !tbaa !1
  %padding_type = getelementptr inbounds %struct.lame_global_flags, %struct.lame_global_flags* %26, i32 0, i32 15
  store i32 2, i32* %padding_type, align 4, !tbaa !64
  %27 = load %struct.lame_global_flags*, %struct.lame_global_flags** %gfp.addr, align 8, !tbaa !1
  %padding = getelementptr inbounds %struct.lame_global_flags, %struct.lame_global_flags* %27, i32 0, i32 44
  store i32 0, i32* %padding, align 4, !tbaa !63
  %28 = load %struct.lame_global_flags*, %struct.lame_global_flags** %gfp.addr, align 8, !tbaa !1
  %swapbytes = getelementptr inbounds %struct.lame_global_flags, %struct.lame_global_flags* %28, i32 0, i32 30
  store i32 0, i32* %swapbytes, align 4, !tbaa !86
  %29 = load %struct.lame_global_flags*, %struct.lame_global_flags** %gfp.addr, align 8, !tbaa !1
  %silent = getelementptr inbounds %struct.lame_global_flags, %struct.lame_global_flags* %29, i32 0, i32 7
  store i32 0, i32* %silent, align 4, !tbaa !66
  %30 = load %struct.lame_global_flags*, %struct.lame_global_flags** %gfp.addr, align 8, !tbaa !1
  %totalframes = getelementptr inbounds %struct.lame_global_flags, %struct.lame_global_flags* %30, i32 0, i32 40
  store i64 0, i64* %totalframes, align 8, !tbaa !22
  %31 = load %struct.lame_global_flags*, %struct.lame_global_flags** %gfp.addr, align 8, !tbaa !1
  %VBR = getelementptr inbounds %struct.lame_global_flags, %struct.lame_global_flags* %31, i32 0, i32 21
  store i32 0, i32* %VBR, align 4, !tbaa !17
  %32 = load %struct.lame_global_flags*, %struct.lame_global_flags** %gfp.addr, align 8, !tbaa !1
  %VBR_q = getelementptr inbounds %struct.lame_global_flags, %struct.lame_global_flags* %32, i32 0, i32 22
  store i32 4, i32* %VBR_q, align 4, !tbaa !24
  %33 = load %struct.lame_global_flags*, %struct.lame_global_flags** %gfp.addr, align 8, !tbaa !1
  %VBR_min_bitrate_kbps = getelementptr inbounds %struct.lame_global_flags, %struct.lame_global_flags* %33, i32 0, i32 23
  store i32 0, i32* %VBR_min_bitrate_kbps, align 4, !tbaa !46
  %34 = load %struct.lame_global_flags*, %struct.lame_global_flags** %gfp.addr, align 8, !tbaa !1
  %VBR_max_bitrate_kbps = getelementptr inbounds %struct.lame_global_flags, %struct.lame_global_flags* %34, i32 0, i32 24
  store i32 0, i32* %VBR_max_bitrate_kbps, align 4, !tbaa !44
  %35 = load %struct.lame_global_flags*, %struct.lame_global_flags** %gfp.addr, align 8, !tbaa !1
  %VBR_min_bitrate = getelementptr inbounds %struct.lame_global_flags, %struct.lame_global_flags* %35, i32 0, i32 47
  store i32 1, i32* %VBR_min_bitrate, align 4, !tbaa !47
  %36 = load %struct.lame_global_flags*, %struct.lame_global_flags** %gfp.addr, align 8, !tbaa !1
  %VBR_max_bitrate = getelementptr inbounds %struct.lame_global_flags, %struct.lame_global_flags* %36, i32 0, i32 48
  store i32 13, i32* %VBR_max_bitrate, align 4, !tbaa !45
  %37 = load %struct.lame_global_flags*, %struct.lame_global_flags** %gfp.addr, align 8, !tbaa !1
  %version = getelementptr inbounds %struct.lame_global_flags, %struct.lame_global_flags* %37, i32 0, i32 43
  store i32 1, i32* %version, align 4, !tbaa !42
  %38 = load %struct.lame_global_flags*, %struct.lame_global_flags** %gfp.addr, align 8, !tbaa !1
  %mode = getelementptr inbounds %struct.lame_global_flags, %struct.lame_global_flags* %38, i32 0, i32 8
  store i32 1, i32* %mode, align 4, !tbaa !11
  %39 = load %struct.lame_global_flags*, %struct.lame_global_flags** %gfp.addr, align 8, !tbaa !1
  %mode_fixed = getelementptr inbounds %struct.lame_global_flags, %struct.lame_global_flags* %39, i32 0, i32 9
  store i32 0, i32* %mode_fixed, align 4, !tbaa !25
  %40 = load %struct.lame_global_flags*, %struct.lame_global_flags** %gfp.addr, align 8, !tbaa !1
  %force_ms = getelementptr inbounds %struct.lame_global_flags, %struct.lame_global_flags* %40, i32 0, i32 10
  store i32 0, i32* %force_ms, align 4, !tbaa !49
  %41 = load %struct.lame_global_flags*, %struct.lame_global_flags** %gfp.addr, align 8, !tbaa !1
  %brate = getelementptr inbounds %struct.lame_global_flags, %struct.lame_global_flags* %41, i32 0, i32 11
  store i32 0, i32* %brate, align 4, !tbaa !15
  %42 = load %struct.lame_global_flags*, %struct.lame_global_flags** %gfp.addr, align 8, !tbaa !1
  %copyright = getelementptr inbounds %struct.lame_global_flags, %struct.lame_global_flags* %42, i32 0, i32 12
  store i32 0, i32* %copyright, align 4, !tbaa !87
  %43 = load %struct.lame_global_flags*, %struct.lame_global_flags** %gfp.addr, align 8, !tbaa !1
  %original = getelementptr inbounds %struct.lame_global_flags, %struct.lame_global_flags* %43, i32 0, i32 13
  store i32 1, i32* %original, align 4, !tbaa !88
  %44 = load %struct.lame_global_flags*, %struct.lame_global_flags** %gfp.addr, align 8, !tbaa !1
  %extension = getelementptr inbounds %struct.lame_global_flags, %struct.lame_global_flags* %44, i32 0, i32 16
  store i32 0, i32* %extension, align 4, !tbaa !89
  %45 = load %struct.lame_global_flags*, %struct.lame_global_flags** %gfp.addr, align 8, !tbaa !1
  %error_protection = getelementptr inbounds %struct.lame_global_flags, %struct.lame_global_flags* %45, i32 0, i32 14
  store i32 0, i32* %error_protection, align 4, !tbaa !90
  %46 = load %struct.lame_global_flags*, %struct.lame_global_flags** %gfp.addr, align 8, !tbaa !1
  %emphasis = getelementptr inbounds %struct.lame_global_flags, %struct.lame_global_flags* %46, i32 0, i32 38
  store i32 0, i32* %emphasis, align 4, !tbaa !91
  %47 = load %struct.lame_global_flags*, %struct.lame_global_flags** %gfp.addr, align 8, !tbaa !1
  %in_samplerate = getelementptr inbounds %struct.lame_global_flags, %struct.lame_global_flags* %47, i32 0, i32 2
  store i32 44100, i32* %in_samplerate, align 4, !tbaa !14
  %48 = load %struct.lame_global_flags*, %struct.lame_global_flags** %gfp.addr, align 8, !tbaa !1
  %out_samplerate = getelementptr inbounds %struct.lame_global_flags, %struct.lame_global_flags* %48, i32 0, i32 3
  store i32 0, i32* %out_samplerate, align 4, !tbaa !13
  %49 = load %struct.lame_global_flags*, %struct.lame_global_flags** %gfp.addr, align 8, !tbaa !1
  %num_channels = getelementptr inbounds %struct.lame_global_flags, %struct.lame_global_flags* %49, i32 0, i32 1
  store i32 2, i32* %num_channels, align 4, !tbaa !10
  %50 = load %struct.lame_global_flags*, %struct.lame_global_flags** %gfp.addr, align 8, !tbaa !1
  %num_samples = getelementptr inbounds %struct.lame_global_flags, %struct.lame_global_flags* %50, i32 0, i32 0
  store i64 4294967295, i64* %num_samples, align 8, !tbaa !23
  %51 = load %struct.lame_global_flags*, %struct.lame_global_flags** %gfp.addr, align 8, !tbaa !1
  %inPath = getelementptr inbounds %struct.lame_global_flags, %struct.lame_global_flags* %51, i32 0, i32 31
  store i8* null, i8** %inPath, align 8, !tbaa !61
  %52 = load %struct.lame_global_flags*, %struct.lame_global_flags** %gfp.addr, align 8, !tbaa !1
  %outPath = getelementptr inbounds %struct.lame_global_flags, %struct.lame_global_flags* %52, i32 0, i32 32
  store i8* null, i8** %outPath, align 8, !tbaa !51
  store i32 0, i32* getelementptr inbounds (%struct.ID3TAGDATA, %struct.ID3TAGDATA* @id3tag, i32 0, i32 0), align 4, !tbaa !53
  ret void
}

; Function Attrs: nounwind uwtable
define i32 @lame_encode_finish(%struct.lame_global_flags* %gfp, i8* %mp3buffer, i32 %mp3buffer_size) #0 {
entry:
  %retval = alloca i32, align 4
  %gfp.addr = alloca %struct.lame_global_flags*, align 8
  %mp3buffer.addr = alloca i8*, align 8
  %mp3buffer_size.addr = alloca i32, align 4
  %imp3 = alloca i32, align 4
  %mp3count = alloca i32, align 4
  %mp3buffer_size_remaining = alloca i32, align 4
  %buffer = alloca [2 x [1152 x i16]], align 16
  %cleanup.dest.slot = alloca i32
  store %struct.lame_global_flags* %gfp, %struct.lame_global_flags** %gfp.addr, align 8, !tbaa !1
  store i8* %mp3buffer, i8** %mp3buffer.addr, align 8, !tbaa !1
  store i32 %mp3buffer_size, i32* %mp3buffer_size.addr, align 4, !tbaa !27
  %0 = bitcast i32* %imp3 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %0) #1
  %1 = bitcast i32* %mp3count to i8*
  call void @llvm.lifetime.start(i64 4, i8* %1) #1
  %2 = bitcast i32* %mp3buffer_size_remaining to i8*
  call void @llvm.lifetime.start(i64 4, i8* %2) #1
  %3 = bitcast [2 x [1152 x i16]]* %buffer to i8*
  call void @llvm.lifetime.start(i64 4608, i8* %3) #1
  %arraydecay = getelementptr inbounds [2 x [1152 x i16]], [2 x [1152 x i16]]* %buffer, i32 0, i32 0
  %4 = bitcast [1152 x i16]* %arraydecay to i8*
  call void @llvm.memset.p0i8.i64(i8* %4, i8 0, i64 4608, i32 1, i1 false)
  store i32 0, i32* %mp3count, align 4, !tbaa !27
  br label %while.cond

while.cond:                                       ; preds = %if.end.5, %entry
  %5 = load i32, i32* @mf_samples_to_encode, align 4, !tbaa !27
  %cmp = icmp sgt i32 %5, 0
  br i1 %cmp, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %6 = load i32, i32* %mp3buffer_size.addr, align 4, !tbaa !27
  %7 = load i32, i32* %mp3count, align 4, !tbaa !27
  %sub = sub nsw i32 %6, %7
  store i32 %sub, i32* %mp3buffer_size_remaining, align 4, !tbaa !27
  %8 = load i32, i32* %mp3buffer_size.addr, align 4, !tbaa !27
  %cmp1 = icmp eq i32 %8, 0
  br i1 %cmp1, label %if.then, label %if.end

if.then:                                          ; preds = %while.body
  store i32 0, i32* %mp3buffer_size_remaining, align 4, !tbaa !27
  br label %if.end

if.end:                                           ; preds = %if.then, %while.body
  %9 = load %struct.lame_global_flags*, %struct.lame_global_flags** %gfp.addr, align 8, !tbaa !1
  %arraydecay2 = getelementptr inbounds [2 x [1152 x i16]], [2 x [1152 x i16]]* %buffer, i32 0, i32 0
  %10 = load i8*, i8** %mp3buffer.addr, align 8, !tbaa !1
  %11 = load i32, i32* %mp3buffer_size_remaining, align 4, !tbaa !27
  %call = call i32 @lame_encode(%struct.lame_global_flags* %9, [1152 x i16]* %arraydecay2, i8* %10, i32 %11)
  store i32 %call, i32* %imp3, align 4, !tbaa !27
  %12 = load i32, i32* %imp3, align 4, !tbaa !27
  %cmp3 = icmp eq i32 %12, -1
  br i1 %cmp3, label %if.then.4, label %if.end.5

if.then.4:                                        ; preds = %if.end
  call void @desalloc_buffer(%struct.bit_stream_struc* @bs)
  store i32 -1, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.5:                                         ; preds = %if.end
  %13 = load i32, i32* %imp3, align 4, !tbaa !27
  %14 = load i8*, i8** %mp3buffer.addr, align 8, !tbaa !1
  %idx.ext = sext i32 %13 to i64
  %add.ptr = getelementptr inbounds i8, i8* %14, i64 %idx.ext
  store i8* %add.ptr, i8** %mp3buffer.addr, align 8, !tbaa !1
  %15 = load i32, i32* %imp3, align 4, !tbaa !27
  %16 = load i32, i32* %mp3count, align 4, !tbaa !27
  %add = add nsw i32 %16, %15
  store i32 %add, i32* %mp3count, align 4, !tbaa !27
  %17 = load %struct.lame_global_flags*, %struct.lame_global_flags** %gfp.addr, align 8, !tbaa !1
  %framesize = getelementptr inbounds %struct.lame_global_flags, %struct.lame_global_flags* %17, i32 0, i32 42
  %18 = load i32, i32* %framesize, align 4, !tbaa !20
  %19 = load i32, i32* @mf_samples_to_encode, align 4, !tbaa !27
  %sub6 = sub nsw i32 %19, %18
  store i32 %sub6, i32* @mf_samples_to_encode, align 4, !tbaa !27
  br label %while.cond

while.end:                                        ; preds = %while.cond
  %20 = load %struct.lame_global_flags*, %struct.lame_global_flags** %gfp.addr, align 8, !tbaa !1
  %frameNum = getelementptr inbounds %struct.lame_global_flags, %struct.lame_global_flags* %20, i32 0, i32 39
  %21 = load i64, i64* %frameNum, align 8, !tbaa !5
  %dec = add nsw i64 %21, -1
  store i64 %dec, i64* %frameNum, align 8, !tbaa !5
  %22 = load %struct.lame_global_flags*, %struct.lame_global_flags** %gfp.addr, align 8, !tbaa !1
  %gtkflag = getelementptr inbounds %struct.lame_global_flags, %struct.lame_global_flags* %22, i32 0, i32 4
  %23 = load i32, i32* %gtkflag, align 4, !tbaa !55
  %tobool = icmp ne i32 %23, 0
  br i1 %tobool, label %if.end.13, label %land.lhs.true

land.lhs.true:                                    ; preds = %while.end
  %24 = load %struct.lame_global_flags*, %struct.lame_global_flags** %gfp.addr, align 8, !tbaa !1
  %silent = getelementptr inbounds %struct.lame_global_flags, %struct.lame_global_flags* %24, i32 0, i32 7
  %25 = load i32, i32* %silent, align 4, !tbaa !66
  %tobool7 = icmp ne i32 %25, 0
  br i1 %tobool7, label %if.end.13, label %if.then.8

if.then.8:                                        ; preds = %land.lhs.true
  %26 = load %struct.lame_global_flags*, %struct.lame_global_flags** %gfp.addr, align 8, !tbaa !1
  %out_samplerate = getelementptr inbounds %struct.lame_global_flags, %struct.lame_global_flags* %26, i32 0, i32 3
  %27 = load i32, i32* %out_samplerate, align 4, !tbaa !13
  %28 = load %struct.lame_global_flags*, %struct.lame_global_flags** %gfp.addr, align 8, !tbaa !1
  %frameNum9 = getelementptr inbounds %struct.lame_global_flags, %struct.lame_global_flags* %28, i32 0, i32 39
  %29 = load i64, i64* %frameNum9, align 8, !tbaa !5
  %30 = load %struct.lame_global_flags*, %struct.lame_global_flags** %gfp.addr, align 8, !tbaa !1
  %totalframes = getelementptr inbounds %struct.lame_global_flags, %struct.lame_global_flags* %30, i32 0, i32 40
  %31 = load i64, i64* %totalframes, align 8, !tbaa !22
  %32 = load %struct.lame_global_flags*, %struct.lame_global_flags** %gfp.addr, align 8, !tbaa !1
  %framesize10 = getelementptr inbounds %struct.lame_global_flags, %struct.lame_global_flags* %32, i32 0, i32 42
  %33 = load i32, i32* %framesize10, align 4, !tbaa !20
  call void @timestatus(i32 %27, i64 %29, i64 %31, i32 %33)
  %34 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !tbaa !1
  %call11 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %34, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.17, i32 0, i32 0))
  %35 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !tbaa !1
  %call12 = call i32 @fflush(%struct._IO_FILE* %35)
  br label %if.end.13

if.end.13:                                        ; preds = %if.then.8, %land.lhs.true, %while.end
  call void @III_FlushBitstream()
  %36 = load i32, i32* %mp3buffer_size.addr, align 4, !tbaa !27
  %37 = load i32, i32* %mp3count, align 4, !tbaa !27
  %sub14 = sub nsw i32 %36, %37
  store i32 %sub14, i32* %mp3buffer_size_remaining, align 4, !tbaa !27
  %38 = load i32, i32* %mp3buffer_size.addr, align 4, !tbaa !27
  %cmp15 = icmp eq i32 %38, 0
  br i1 %cmp15, label %if.then.16, label %if.end.17

if.then.16:                                       ; preds = %if.end.13
  store i32 0, i32* %mp3buffer_size_remaining, align 4, !tbaa !27
  br label %if.end.17

if.end.17:                                        ; preds = %if.then.16, %if.end.13
  %39 = load i8*, i8** %mp3buffer.addr, align 8, !tbaa !1
  %40 = load i32, i32* %mp3buffer_size_remaining, align 4, !tbaa !27
  %call18 = call i32 @copy_buffer(i8* %39, i32 %40, %struct.bit_stream_struc* @bs)
  store i32 %call18, i32* %imp3, align 4, !tbaa !27
  %41 = load i32, i32* %imp3, align 4, !tbaa !27
  %cmp19 = icmp eq i32 %41, -1
  br i1 %cmp19, label %if.then.20, label %if.end.21

if.then.20:                                       ; preds = %if.end.17
  call void @desalloc_buffer(%struct.bit_stream_struc* @bs)
  store i32 -1, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.21:                                        ; preds = %if.end.17
  %42 = load i32, i32* %imp3, align 4, !tbaa !27
  %43 = load i32, i32* %mp3count, align 4, !tbaa !27
  %add22 = add nsw i32 %43, %42
  store i32 %add22, i32* %mp3count, align 4, !tbaa !27
  call void @desalloc_buffer(%struct.bit_stream_struc* @bs)
  %44 = load i32, i32* %mp3count, align 4, !tbaa !27
  store i32 %44, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %if.end.21, %if.then.20, %if.then.4
  %45 = bitcast [2 x [1152 x i16]]* %buffer to i8*
  call void @llvm.lifetime.end(i64 4608, i8* %45) #1
  %46 = bitcast i32* %mp3buffer_size_remaining to i8*
  call void @llvm.lifetime.end(i64 4, i8* %46) #1
  %47 = bitcast i32* %mp3count to i8*
  call void @llvm.lifetime.end(i64 4, i8* %47) #1
  %48 = bitcast i32* %imp3 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %48) #1
  %49 = load i32, i32* %retval
  ret i32 %49
}

declare void @desalloc_buffer(%struct.bit_stream_struc*) #2

declare void @III_FlushBitstream() #2

; Function Attrs: nounwind uwtable
define void @lame_mp3_tags(%struct.lame_global_flags* %gfp) #0 {
entry:
  %gfp.addr = alloca %struct.lame_global_flags*, align 8
  %nQuality = alloca i32, align 4
  store %struct.lame_global_flags* %gfp, %struct.lame_global_flags** %gfp.addr, align 8, !tbaa !1
  %0 = load %struct.lame_global_flags*, %struct.lame_global_flags** %gfp.addr, align 8, !tbaa !1
  %bWriteVbrTag = getelementptr inbounds %struct.lame_global_flags, %struct.lame_global_flags* %0, i32 0, i32 5
  %1 = load i32, i32* %bWriteVbrTag, align 4, !tbaa !50
  %tobool = icmp ne i32 %1, 0
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %2 = bitcast i32* %nQuality to i8*
  call void @llvm.lifetime.start(i64 4, i8* %2) #1
  %3 = load %struct.lame_global_flags*, %struct.lame_global_flags** %gfp.addr, align 8, !tbaa !1
  %VBR_q = getelementptr inbounds %struct.lame_global_flags, %struct.lame_global_flags* %3, i32 0, i32 22
  %4 = load i32, i32* %VBR_q, align 4, !tbaa !24
  %mul = mul nsw i32 %4, 100
  %div = sdiv i32 %mul, 9
  store i32 %div, i32* %nQuality, align 4, !tbaa !27
  %5 = load %struct.lame_global_flags*, %struct.lame_global_flags** %gfp.addr, align 8, !tbaa !1
  %outPath = getelementptr inbounds %struct.lame_global_flags, %struct.lame_global_flags* %5, i32 0, i32 32
  %6 = load i8*, i8** %outPath, align 8, !tbaa !51
  %7 = load i32, i32* %nQuality, align 4, !tbaa !27
  %8 = load %struct.lame_global_flags*, %struct.lame_global_flags** %gfp.addr, align 8, !tbaa !1
  %version = getelementptr inbounds %struct.lame_global_flags, %struct.lame_global_flags* %8, i32 0, i32 43
  %9 = load i32, i32* %version, align 4, !tbaa !42
  %sub = sub nsw i32 1, %9
  %call = call i32 @PutVbrTag(i8* %6, i32 %7, i32 %sub)
  %10 = bitcast i32* %nQuality to i8*
  call void @llvm.lifetime.end(i64 4, i8* %10) #1
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %11 = load i32, i32* getelementptr inbounds (%struct.ID3TAGDATA, %struct.ID3TAGDATA* @id3tag, i32 0, i32 0), align 4, !tbaa !53
  %tobool1 = icmp ne i32 %11, 0
  br i1 %tobool1, label %if.then.2, label %if.end.5

if.then.2:                                        ; preds = %if.end
  call void @id3_buildtag(%struct.ID3TAGDATA* @id3tag)
  %12 = load %struct.lame_global_flags*, %struct.lame_global_flags** %gfp.addr, align 8, !tbaa !1
  %outPath3 = getelementptr inbounds %struct.lame_global_flags, %struct.lame_global_flags* %12, i32 0, i32 32
  %13 = load i8*, i8** %outPath3, align 8, !tbaa !51
  %call4 = call i32 @id3_writetag(i8* %13, %struct.ID3TAGDATA* @id3tag)
  br label %if.end.5

if.end.5:                                         ; preds = %if.then.2, %if.end
  ret void
}

declare i32 @PutVbrTag(i8*, i32, i32) #2

declare void @id3_buildtag(%struct.ID3TAGDATA*) #2

declare i32 @id3_writetag(i8*, %struct.ID3TAGDATA*) #2

; Function Attrs: nounwind uwtable
define void @lame_version(%struct.lame_global_flags* %gfp, i8* %ostring) #0 {
entry:
  %gfp.addr = alloca %struct.lame_global_flags*, align 8
  %ostring.addr = alloca i8*, align 8
  store %struct.lame_global_flags* %gfp, %struct.lame_global_flags** %gfp.addr, align 8, !tbaa !1
  store i8* %ostring, i8** %ostring.addr, align 8, !tbaa !1
  %0 = load i8*, i8** %ostring.addr, align 8, !tbaa !1
  %call = call i8* @get_lame_version()
  %call1 = call i8* @strncpy(i8* %0, i8* %call, i64 20) #1
  ret void
}

; Function Attrs: nounwind
declare i8* @strncpy(i8*, i8*, i64) #4

declare i8* @get_lame_version() #2

; Function Attrs: nounwind readonly
declare i8* @strrchr(i8*, i32) #6

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind readnone "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { nounwind "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #5 = { noreturn nounwind "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #6 = { nounwind readonly "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #7 = { nounwind readnone }
attributes #8 = { noreturn nounwind }
attributes #9 = { nounwind readonly }

!llvm.ident = !{!0}

!0 = !{!"clang version 3.7.0 (tags/RELEASE_370/final)"}
!1 = !{!2, !2, i64 0}
!2 = !{!"any pointer", !3, i64 0}
!3 = !{!"omnipotent char", !4, i64 0}
!4 = !{!"Simple C/C++ TBAA"}
!5 = !{!6, !7, i64 168}
!6 = !{!"", !7, i64 0, !8, i64 8, !8, i64 12, !8, i64 16, !8, i64 20, !8, i64 24, !8, i64 28, !8, i64 32, !8, i64 36, !8, i64 40, !8, i64 44, !8, i64 48, !8, i64 52, !8, i64 56, !8, i64 60, !8, i64 64, !8, i64 68, !8, i64 72, !8, i64 76, !8, i64 80, !8, i64 84, !8, i64 88, !8, i64 92, !8, i64 96, !8, i64 100, !8, i64 104, !8, i64 108, !8, i64 112, !8, i64 116, !3, i64 120, !8, i64 124, !2, i64 128, !2, i64 136, !8, i64 144, !8, i64 148, !9, i64 152, !8, i64 156, !8, i64 160, !8, i64 164, !7, i64 168, !7, i64 176, !8, i64 184, !8, i64 188, !8, i64 192, !8, i64 196, !8, i64 200, !8, i64 204, !8, i64 208, !8, i64 212, !9, i64 216, !8, i64 220, !8, i64 224, !8, i64 228, !9, i64 232, !9, i64 236, !9, i64 240, !9, i64 244, !8, i64 248, !8, i64 252, !8, i64 256, !8, i64 260, !8, i64 264, !8, i64 268, !8, i64 272, !8, i64 276}
!7 = !{!"long", !3, i64 0}
!8 = !{!"int", !3, i64 0}
!9 = !{!"float", !3, i64 0}
!10 = !{!6, !8, i64 8}
!11 = !{!6, !8, i64 36}
!12 = !{!6, !8, i64 204}
!13 = !{!6, !8, i64 16}
!14 = !{!6, !8, i64 12}
!15 = !{!6, !8, i64 48}
!16 = !{!9, !9, i64 0}
!17 = !{!6, !8, i64 88}
!18 = !{!6, !8, i64 200}
!19 = !{!6, !8, i64 184}
!20 = !{!6, !8, i64 188}
!21 = !{!6, !9, i64 216}
!22 = !{!6, !7, i64 176}
!23 = !{!6, !7, i64 0}
!24 = !{!6, !8, i64 92}
!25 = !{!6, !8, i64 40}
!26 = !{!6, !8, i64 104}
!27 = !{!8, !8, i64 0}
!28 = !{!6, !9, i64 232}
!29 = !{!6, !9, i64 236}
!30 = !{!6, !8, i64 108}
!31 = !{!6, !9, i64 240}
!32 = !{!6, !8, i64 116}
!33 = !{!6, !9, i64 244}
!34 = !{!6, !8, i64 112}
!35 = !{!6, !8, i64 256}
!36 = !{!37, !37, i64 0}
!37 = !{!"double", !3, i64 0}
!38 = !{!6, !8, i64 248}
!39 = !{!6, !8, i64 252}
!40 = !{!6, !8, i64 228}
!41 = !{!6, !8, i64 224}
!42 = !{!6, !8, i64 192}
!43 = !{!6, !8, i64 220}
!44 = !{!6, !8, i64 100}
!45 = !{!6, !8, i64 212}
!46 = !{!6, !8, i64 96}
!47 = !{!6, !8, i64 208}
!48 = !{!6, !8, i64 28}
!49 = !{!6, !8, i64 44}
!50 = !{!6, !8, i64 24}
!51 = !{!6, !2, i64 136}
!52 = !{!3, !3, i64 0}
!53 = !{!54, !8, i64 0}
!54 = !{!"", !8, i64 0, !8, i64 4, !3, i64 8, !3, i64 39, !3, i64 70, !3, i64 101, !3, i64 106, !3, i64 137, !3, i64 265, !3, i64 266}
!55 = !{!6, !8, i64 20}
!56 = !{!6, !8, i64 272}
!57 = !{!6, !8, i64 260}
!58 = !{!6, !8, i64 264}
!59 = !{!6, !8, i64 268}
!60 = !{!6, !8, i64 276}
!61 = !{!6, !2, i64 128}
!62 = !{!7, !7, i64 0}
!63 = !{!6, !8, i64 196}
!64 = !{!6, !8, i64 64}
!65 = !{!6, !8, i64 72}
!66 = !{!6, !8, i64 32}
!67 = !{!68, !8, i64 24}
!68 = !{!"gr_info_ss", !69, i64 0}
!69 = !{!"", !8, i64 0, !8, i64 4, !8, i64 8, !8, i64 12, !8, i64 16, !8, i64 20, !8, i64 24, !8, i64 28, !3, i64 32, !3, i64 44, !8, i64 56, !8, i64 60, !8, i64 64, !8, i64 68, !8, i64 72, !8, i64 76, !8, i64 80, !8, i64 84, !8, i64 88, !2, i64 96, !3, i64 104}
!70 = !{!69, !8, i64 28}
!71 = !{!69, !8, i64 24}
!72 = !{!69, !8, i64 20}
!73 = !{!74, !7, i64 40}
!74 = !{!"bit_stream_struc", !2, i64 0, !8, i64 8, !2, i64 16, !2, i64 24, !8, i64 32, !7, i64 40, !8, i64 48, !8, i64 52}
!75 = !{!76, !76, i64 0}
!76 = !{!"short", !3, i64 0}
!77 = !{!6, !8, i64 156}
!78 = !{!6, !8, i64 144}
!79 = !{!6, !8, i64 148}
!80 = !{!6, !9, i64 152}
!81 = !{!6, !8, i64 76}
!82 = !{!6, !8, i64 80}
!83 = !{!6, !8, i64 84}
!84 = !{!6, !3, i64 120}
!85 = !{!6, !8, i64 160}
!86 = !{!6, !8, i64 124}
!87 = !{!6, !8, i64 52}
!88 = !{!6, !8, i64 56}
!89 = !{!6, !8, i64 68}
!90 = !{!6, !8, i64 60}
!91 = !{!6, !8, i64 164}
