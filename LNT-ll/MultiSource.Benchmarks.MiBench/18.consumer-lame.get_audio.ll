; ModuleID = './MultiSource.Benchmarks.MiBench/18.consumer-lame.get_audio.bc'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct._IO_FILE = type { i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, %struct._IO_marker*, %struct._IO_FILE*, i32, i32, i64, i16, i8, [1 x i8], i8*, i64, i8*, i8*, i8*, i8*, i64, i32, [20 x i8] }
%struct._IO_marker = type { %struct._IO_marker*, %struct._IO_FILE*, i32 }
%struct.lame_global_flags = type { i64, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i8*, i8*, i32, i32, float, i32, i32, i32, i64, i64, i32, i32, i32, i32, i32, i32, i32, i32, float, i32, i32, i32, float, float, float, float, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.stat = type { i64, i64, i64, i32, i32, i32, i32, i64, i64, i64, i64, %struct.timespec, %struct.timespec, %struct.timespec, [3 x i64] }
%struct.timespec = type { i64, i64 }
%struct.fmt_chunk_data_struct = type { i16, i16, i64, i64, i16, i16 }
%struct.IFF_AIFF_struct = type { i16, i64, i16, float, i64, %struct.blockAlign_struct }
%struct.blockAlign_struct = type { i64, i64 }

@count_samples_carefully = internal global i32 0, align 4
@get_audio.num_samples_read = internal global i64 0, align 8
@num_samples = internal global i64 0, align 8
@musicin = internal global %struct._IO_FILE* null, align 8
@input_bitrate = internal global i32 0, align 4
@stderr = external global %struct._IO_FILE*, align 8
@.str = private unnamed_addr constant [34 x i8] c"Could not close audio input file\0A\00", align 1
@samp_freq = internal global i32 0, align 4
@num_channels = internal global i32 0, align 4
@.str.1 = private unnamed_addr constant [2 x i8] c"-\00", align 1
@stdin = external global %struct._IO_FILE*, align 8
@.str.2 = private unnamed_addr constant [3 x i8] c"rb\00", align 1
@.str.3 = private unnamed_addr constant [22 x i8] c"Could not find \22%s\22.\0A\00", align 1
@.str.4 = private unnamed_addr constant [45 x i8] c"Error reading headers in mp3 input file %s.\0A\00", align 1
@.str.5 = private unnamed_addr constant [28 x i8] c"Assuming raw pcm input file\00", align 1
@.str.6 = private unnamed_addr constant [26 x i8] c" : Forcing byte-swapping\0A\00", align 1
@.str.7 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@.str.8 = private unnamed_addr constant [26 x i8] c"Error reading input file\0A\00", align 1
@NativeByteOrder = external global i32, align 4
@.str.9 = private unnamed_addr constant [27 x i8] c"byte order not determined\0A\00", align 1
@.str.10 = private unnamed_addr constant [5 x i8] c"name\00", align 1
@.str.11 = private unnamed_addr constant [38 x i8] c"%d-bit sample-size is not supported!\0A\00", align 1
@.str.12 = private unnamed_addr constant [32 x i8] c"Sound data is not PCM in \22%s\22.\0A\00", align 1
@.str.13 = private unnamed_addr constant [36 x i8] c"Sound data is not %d bits in \22%s\22.\0A\00", align 1
@.str.14 = private unnamed_addr constant [43 x i8] c"Sound data is not mono or stereo in \22%s\22.\0A\00", align 1
@.str.15 = private unnamed_addr constant [37 x i8] c"Block size is not %d bytes in \22%s\22.\0A\00", align 1
@.str.16 = private unnamed_addr constant [39 x i8] c"Block offset is not %d bytes in \22%s\22.\0A\00", align 1

; Function Attrs: nounwind uwtable
define void @lame_init_infile(%struct.lame_global_flags* %gfp) #0 {
entry:
  %gfp.addr = alloca %struct.lame_global_flags*, align 8
  store %struct.lame_global_flags* %gfp, %struct.lame_global_flags** %gfp.addr, align 8, !tbaa !1
  store i32 0, i32* @count_samples_carefully, align 4, !tbaa !5
  %0 = load %struct.lame_global_flags*, %struct.lame_global_flags** %gfp.addr, align 8, !tbaa !1
  %1 = load %struct.lame_global_flags*, %struct.lame_global_flags** %gfp.addr, align 8, !tbaa !1
  %inPath = getelementptr inbounds %struct.lame_global_flags, %struct.lame_global_flags* %1, i32 0, i32 31
  %2 = load i8*, i8** %inPath, align 8, !tbaa !7
  %3 = load %struct.lame_global_flags*, %struct.lame_global_flags** %gfp.addr, align 8, !tbaa !1
  %in_samplerate = getelementptr inbounds %struct.lame_global_flags, %struct.lame_global_flags* %3, i32 0, i32 2
  %4 = load i32, i32* %in_samplerate, align 4, !tbaa !11
  %5 = load %struct.lame_global_flags*, %struct.lame_global_flags** %gfp.addr, align 8, !tbaa !1
  %num_channels = getelementptr inbounds %struct.lame_global_flags, %struct.lame_global_flags* %5, i32 0, i32 1
  %6 = load i32, i32* %num_channels, align 4, !tbaa !12
  %call = call %struct._IO_FILE* @OpenSndFile(%struct.lame_global_flags* %0, i8* %2, i32 %4, i32 %6)
  %call1 = call i32 @GetSndSampleRate()
  %tobool = icmp ne i32 %call1, 0
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %call2 = call i32 @GetSndSampleRate()
  %7 = load %struct.lame_global_flags*, %struct.lame_global_flags** %gfp.addr, align 8, !tbaa !1
  %in_samplerate3 = getelementptr inbounds %struct.lame_global_flags, %struct.lame_global_flags* %7, i32 0, i32 2
  store i32 %call2, i32* %in_samplerate3, align 4, !tbaa !11
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %call4 = call i32 @GetSndChannels()
  %tobool5 = icmp ne i32 %call4, 0
  br i1 %tobool5, label %if.then.6, label %if.end.9

if.then.6:                                        ; preds = %if.end
  %call7 = call i32 @GetSndChannels()
  %8 = load %struct.lame_global_flags*, %struct.lame_global_flags** %gfp.addr, align 8, !tbaa !1
  %num_channels8 = getelementptr inbounds %struct.lame_global_flags, %struct.lame_global_flags* %8, i32 0, i32 1
  store i32 %call7, i32* %num_channels8, align 4, !tbaa !12
  br label %if.end.9

if.end.9:                                         ; preds = %if.then.6, %if.end
  %call10 = call i64 @GetSndSamples()
  %9 = load %struct.lame_global_flags*, %struct.lame_global_flags** %gfp.addr, align 8, !tbaa !1
  %num_samples = getelementptr inbounds %struct.lame_global_flags, %struct.lame_global_flags* %9, i32 0, i32 0
  store i64 %call10, i64* %num_samples, align 8, !tbaa !13
  ret void
}

; Function Attrs: nounwind uwtable
define %struct._IO_FILE* @OpenSndFile(%struct.lame_global_flags* %gfp, i8* %inPath, i32 %default_samp, i32 %default_channels) #0 {
entry:
  %gfp.addr = alloca %struct.lame_global_flags*, align 8
  %inPath.addr = alloca i8*, align 8
  %default_samp.addr = alloca i32, align 4
  %default_channels.addr = alloca i32, align 4
  %sb = alloca %struct.stat, align 8
  %__s1_len = alloca i64, align 8
  %__s2_len = alloca i64, align 8
  %tmp = alloca i32, align 4
  %__s1 = alloca i8*, align 8
  %__result = alloca i32, align 4
  %tmp35 = alloca i32, align 4
  %totalseconds = alloca float, align 4
  store %struct.lame_global_flags* %gfp, %struct.lame_global_flags** %gfp.addr, align 8, !tbaa !1
  store i8* %inPath, i8** %inPath.addr, align 8, !tbaa !1
  store i32 %default_samp, i32* %default_samp.addr, align 4, !tbaa !5
  store i32 %default_channels, i32* %default_channels.addr, align 4, !tbaa !5
  %0 = bitcast %struct.stat* %sb to i8*
  call void @llvm.lifetime.start(i64 144, i8* %0) #1
  store i64 4294967295, i64* @num_samples, align 8, !tbaa !14
  %1 = load i32, i32* %default_samp.addr, align 4, !tbaa !5
  store i32 %1, i32* @samp_freq, align 4, !tbaa !5
  %2 = load i32, i32* %default_channels.addr, align 4, !tbaa !5
  store i32 %2, i32* @num_channels, align 4, !tbaa !5
  %3 = bitcast i64* %__s1_len to i8*
  call void @llvm.lifetime.start(i64 8, i8* %3) #1
  %4 = bitcast i64* %__s2_len to i8*
  call void @llvm.lifetime.start(i64 8, i8* %4) #1
  br i1 icmp eq (i64 sub (i64 ptrtoint (i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i32 0, i64 1) to i64), i64 ptrtoint ([2 x i8]* @.str.1 to i64)), i64 1), label %land.lhs.true, label %cond.false

land.lhs.true:                                    ; preds = %entry
  store i64 1, i64* %__s2_len, align 8, !tbaa !14
  %5 = load i64, i64* %__s2_len, align 8, !tbaa !14
  %cmp = icmp ult i64 %5, 4
  br i1 %cmp, label %cond.true, label %cond.false

cond.true:                                        ; preds = %land.lhs.true
  %6 = bitcast i8** %__s1 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %6) #1
  %7 = load i8*, i8** %inPath.addr, align 8, !tbaa !1
  store i8* %7, i8** %__s1, align 8, !tbaa !1
  %8 = bitcast i32* %__result to i8*
  call void @llvm.lifetime.start(i64 4, i8* %8) #1
  %9 = load i8*, i8** %__s1, align 8, !tbaa !1
  %arrayidx = getelementptr inbounds i8, i8* %9, i64 0
  %10 = load i8, i8* %arrayidx, align 1, !tbaa !15
  %conv = zext i8 %10 to i32
  %11 = load i8, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i32 0, i32 0), align 1, !tbaa !15
  %conv3 = zext i8 %11 to i32
  %sub = sub nsw i32 %conv, %conv3
  store i32 %sub, i32* %__result, align 4, !tbaa !5
  %12 = load i64, i64* %__s2_len, align 8, !tbaa !14
  %cmp4 = icmp ugt i64 %12, 0
  br i1 %cmp4, label %land.lhs.true.6, label %if.end.34

land.lhs.true.6:                                  ; preds = %cond.true
  %13 = load i32, i32* %__result, align 4, !tbaa !5
  %cmp7 = icmp eq i32 %13, 0
  br i1 %cmp7, label %if.then, label %if.end.34

if.then:                                          ; preds = %land.lhs.true.6
  %14 = load i8*, i8** %__s1, align 8, !tbaa !1
  %arrayidx9 = getelementptr inbounds i8, i8* %14, i64 1
  %15 = load i8, i8* %arrayidx9, align 1, !tbaa !15
  %conv10 = zext i8 %15 to i32
  %16 = load i8, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i32 0, i64 1), align 1, !tbaa !15
  %conv11 = zext i8 %16 to i32
  %sub12 = sub nsw i32 %conv10, %conv11
  store i32 %sub12, i32* %__result, align 4, !tbaa !5
  %17 = load i64, i64* %__s2_len, align 8, !tbaa !14
  %cmp13 = icmp ugt i64 %17, 1
  br i1 %cmp13, label %land.lhs.true.15, label %if.end.33

land.lhs.true.15:                                 ; preds = %if.then
  %18 = load i32, i32* %__result, align 4, !tbaa !5
  %cmp16 = icmp eq i32 %18, 0
  br i1 %cmp16, label %if.then.18, label %if.end.33

if.then.18:                                       ; preds = %land.lhs.true.15
  %19 = load i8*, i8** %__s1, align 8, !tbaa !1
  %arrayidx19 = getelementptr inbounds i8, i8* %19, i64 2
  %20 = load i8, i8* %arrayidx19, align 1, !tbaa !15
  %conv20 = zext i8 %20 to i32
  %21 = load i8, i8* getelementptr inbounds (i8, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i32 0, i32 0), i64 2), align 1, !tbaa !15
  %conv21 = zext i8 %21 to i32
  %sub22 = sub nsw i32 %conv20, %conv21
  store i32 %sub22, i32* %__result, align 4, !tbaa !5
  %22 = load i64, i64* %__s2_len, align 8, !tbaa !14
  %cmp23 = icmp ugt i64 %22, 2
  br i1 %cmp23, label %land.lhs.true.25, label %if.end

land.lhs.true.25:                                 ; preds = %if.then.18
  %23 = load i32, i32* %__result, align 4, !tbaa !5
  %cmp26 = icmp eq i32 %23, 0
  br i1 %cmp26, label %if.then.28, label %if.end

if.then.28:                                       ; preds = %land.lhs.true.25
  %24 = load i8*, i8** %__s1, align 8, !tbaa !1
  %arrayidx29 = getelementptr inbounds i8, i8* %24, i64 3
  %25 = load i8, i8* %arrayidx29, align 1, !tbaa !15
  %conv30 = zext i8 %25 to i32
  %26 = load i8, i8* getelementptr inbounds (i8, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i32 0, i32 0), i64 3), align 1, !tbaa !15
  %conv31 = zext i8 %26 to i32
  %sub32 = sub nsw i32 %conv30, %conv31
  store i32 %sub32, i32* %__result, align 4, !tbaa !5
  br label %if.end

if.end:                                           ; preds = %if.then.28, %land.lhs.true.25, %if.then.18
  br label %if.end.33

if.end.33:                                        ; preds = %if.end, %land.lhs.true.15, %if.then
  br label %if.end.34

if.end.34:                                        ; preds = %if.end.33, %land.lhs.true.6, %cond.true
  %27 = load i32, i32* %__result, align 4, !tbaa !5
  store i32 %27, i32* %tmp35, !tbaa !5
  %28 = bitcast i32* %__result to i8*
  call void @llvm.lifetime.end(i64 4, i8* %28) #1
  %29 = bitcast i8** %__s1 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %29) #1
  %30 = load i32, i32* %tmp35, !tbaa !5
  br label %cond.end

cond.false:                                       ; preds = %land.lhs.true, %entry
  %31 = load i8*, i8** %inPath.addr, align 8, !tbaa !1
  %call = call i32 @strcmp(i8* %31, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i32 0, i32 0)) #1
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %if.end.34
  %cond = phi i32 [ %30, %if.end.34 ], [ %call, %cond.false ]
  store i32 %cond, i32* %tmp, !tbaa !5
  %32 = bitcast i64* %__s2_len to i8*
  call void @llvm.lifetime.end(i64 8, i8* %32) #1
  %33 = bitcast i64* %__s1_len to i8*
  call void @llvm.lifetime.end(i64 8, i8* %33) #1
  %34 = load i32, i32* %tmp, !tbaa !5
  %tobool = icmp ne i32 %34, 0
  br i1 %tobool, label %if.else, label %if.then.36

if.then.36:                                       ; preds = %cond.end
  %35 = load %struct._IO_FILE*, %struct._IO_FILE** @stdin, align 8, !tbaa !1
  store %struct._IO_FILE* %35, %struct._IO_FILE** @musicin, align 8, !tbaa !1
  br label %if.end.43

if.else:                                          ; preds = %cond.end
  %36 = load i8*, i8** %inPath.addr, align 8, !tbaa !1
  %call37 = call %struct._IO_FILE* @fopen(i8* %36, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.2, i32 0, i32 0))
  store %struct._IO_FILE* %call37, %struct._IO_FILE** @musicin, align 8, !tbaa !1
  %cmp38 = icmp eq %struct._IO_FILE* %call37, null
  br i1 %cmp38, label %if.then.40, label %if.end.42

if.then.40:                                       ; preds = %if.else
  %37 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !tbaa !1
  %38 = load i8*, i8** %inPath.addr, align 8, !tbaa !1
  %call41 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %37, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.3, i32 0, i32 0), i8* %38)
  call void @exit(i32 1) #6
  unreachable

if.end.42:                                        ; preds = %if.else
  br label %if.end.43

if.end.43:                                        ; preds = %if.end.42, %if.then.36
  store i32 0, i32* @input_bitrate, align 4, !tbaa !5
  %39 = load %struct.lame_global_flags*, %struct.lame_global_flags** %gfp.addr, align 8, !tbaa !1
  %input_format = getelementptr inbounds %struct.lame_global_flags, %struct.lame_global_flags* %39, i32 0, i32 29
  %40 = load i32, i32* %input_format, align 4, !tbaa !16
  %cmp44 = icmp eq i32 %40, 3
  br i1 %cmp44, label %if.then.46, label %if.else.53

if.then.46:                                       ; preds = %if.end.43
  %41 = load %struct._IO_FILE*, %struct._IO_FILE** @musicin, align 8, !tbaa !1
  %call47 = call i32 @lame_decode_initfile(%struct._IO_FILE* %41, i32* @num_channels, i32* @samp_freq, i32* @input_bitrate, i64* @num_samples)
  %cmp48 = icmp eq i32 -1, %call47
  br i1 %cmp48, label %if.then.50, label %if.end.52

if.then.50:                                       ; preds = %if.then.46
  %42 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !tbaa !1
  %43 = load i8*, i8** %inPath.addr, align 8, !tbaa !1
  %call51 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %42, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.4, i32 0, i32 0), i8* %43)
  call void @exit(i32 1) #6
  unreachable

if.end.52:                                        ; preds = %if.then.46
  br label %if.end.72

if.else.53:                                       ; preds = %if.end.43
  %44 = load %struct.lame_global_flags*, %struct.lame_global_flags** %gfp.addr, align 8, !tbaa !1
  %input_format54 = getelementptr inbounds %struct.lame_global_flags, %struct.lame_global_flags* %44, i32 0, i32 29
  %45 = load i32, i32* %input_format54, align 4, !tbaa !16
  %cmp55 = icmp ne i32 %45, 4
  br i1 %cmp55, label %if.then.57, label %if.end.58

if.then.57:                                       ; preds = %if.else.53
  %46 = load %struct.lame_global_flags*, %struct.lame_global_flags** %gfp.addr, align 8, !tbaa !1
  %47 = load %struct._IO_FILE*, %struct._IO_FILE** @musicin, align 8, !tbaa !1
  call void @parse_file_header(%struct.lame_global_flags* %46, %struct._IO_FILE* %47)
  br label %if.end.58

if.end.58:                                        ; preds = %if.then.57, %if.else.53
  %48 = load %struct.lame_global_flags*, %struct.lame_global_flags** %gfp.addr, align 8, !tbaa !1
  %input_format59 = getelementptr inbounds %struct.lame_global_flags, %struct.lame_global_flags* %48, i32 0, i32 29
  %49 = load i32, i32* %input_format59, align 4, !tbaa !16
  %cmp60 = icmp eq i32 %49, 4
  br i1 %cmp60, label %if.then.62, label %if.end.71

if.then.62:                                       ; preds = %if.end.58
  %50 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !tbaa !1
  %call63 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %50, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.5, i32 0, i32 0))
  %51 = load %struct.lame_global_flags*, %struct.lame_global_flags** %gfp.addr, align 8, !tbaa !1
  %swapbytes = getelementptr inbounds %struct.lame_global_flags, %struct.lame_global_flags* %51, i32 0, i32 30
  %52 = load i32, i32* %swapbytes, align 4, !tbaa !17
  %cmp64 = icmp eq i32 %52, 1
  br i1 %cmp64, label %if.then.66, label %if.else.68

if.then.66:                                       ; preds = %if.then.62
  %53 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !tbaa !1
  %call67 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %53, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.6, i32 0, i32 0))
  br label %if.end.70

if.else.68:                                       ; preds = %if.then.62
  %54 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !tbaa !1
  %call69 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %54, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.7, i32 0, i32 0))
  br label %if.end.70

if.end.70:                                        ; preds = %if.else.68, %if.then.66
  br label %if.end.71

if.end.71:                                        ; preds = %if.end.70, %if.end.58
  br label %if.end.72

if.end.72:                                        ; preds = %if.end.71, %if.end.52
  %55 = load i64, i64* @num_samples, align 8, !tbaa !14
  %cmp73 = icmp eq i64 %55, 4294967295
  br i1 %cmp73, label %land.lhs.true.75, label %if.end.105

land.lhs.true.75:                                 ; preds = %if.end.72
  %56 = load %struct._IO_FILE*, %struct._IO_FILE** @musicin, align 8, !tbaa !1
  %57 = load %struct._IO_FILE*, %struct._IO_FILE** @stdin, align 8, !tbaa !1
  %cmp76 = icmp ne %struct._IO_FILE* %56, %57
  br i1 %cmp76, label %if.then.78, label %if.end.105

if.then.78:                                       ; preds = %land.lhs.true.75
  %58 = load i8*, i8** %inPath.addr, align 8, !tbaa !1
  %call79 = call i32 @stat(i8* %58, %struct.stat* %sb) #1
  %cmp80 = icmp eq i32 0, %call79
  br i1 %cmp80, label %if.then.82, label %if.end.104

if.then.82:                                       ; preds = %if.then.78
  %59 = load %struct.lame_global_flags*, %struct.lame_global_flags** %gfp.addr, align 8, !tbaa !1
  %input_format83 = getelementptr inbounds %struct.lame_global_flags, %struct.lame_global_flags* %59, i32 0, i32 29
  %60 = load i32, i32* %input_format83, align 4, !tbaa !16
  %cmp84 = icmp eq i32 %60, 3
  br i1 %cmp84, label %if.then.86, label %if.else.97

if.then.86:                                       ; preds = %if.then.82
  %61 = bitcast float* %totalseconds to i8*
  call void @llvm.lifetime.start(i64 4, i8* %61) #1
  %st_size = getelementptr inbounds %struct.stat, %struct.stat* %sb, i32 0, i32 8
  %62 = load i64, i64* %st_size, align 8, !tbaa !18
  %conv88 = sitofp i64 %62 to double
  %mul = fmul double %conv88, 8.000000e+00
  %call89 = call i32 @GetSndBitrate()
  %conv90 = sitofp i32 %call89 to double
  %mul91 = fmul double 1.000000e+03, %conv90
  %div = fdiv double %mul, %mul91
  %conv92 = fptrunc double %div to float
  store float %conv92, float* %totalseconds, align 4, !tbaa !21
  %63 = load float, float* %totalseconds, align 4, !tbaa !21
  %call93 = call i32 @GetSndSampleRate()
  %conv94 = sitofp i32 %call93 to float
  %mul95 = fmul float %63, %conv94
  %conv96 = fptoui float %mul95 to i64
  store i64 %conv96, i64* @num_samples, align 8, !tbaa !14
  %64 = bitcast float* %totalseconds to i8*
  call void @llvm.lifetime.end(i64 4, i8* %64) #1
  br label %if.end.103

if.else.97:                                       ; preds = %if.then.82
  %st_size98 = getelementptr inbounds %struct.stat, %struct.stat* %sb, i32 0, i32 8
  %65 = load i64, i64* %st_size98, align 8, !tbaa !18
  %call99 = call i32 @GetSndChannels()
  %mul100 = mul nsw i32 2, %call99
  %conv101 = sext i32 %mul100 to i64
  %div102 = sdiv i64 %65, %conv101
  store i64 %div102, i64* @num_samples, align 8, !tbaa !14
  br label %if.end.103

if.end.103:                                       ; preds = %if.else.97, %if.then.86
  br label %if.end.104

if.end.104:                                       ; preds = %if.end.103, %if.then.78
  br label %if.end.105

if.end.105:                                       ; preds = %if.end.104, %land.lhs.true.75, %if.end.72
  %66 = load %struct._IO_FILE*, %struct._IO_FILE** @musicin, align 8, !tbaa !1
  %67 = bitcast %struct.stat* %sb to i8*
  call void @llvm.lifetime.end(i64 144, i8* %67) #1
  ret %struct._IO_FILE* %66
}

; Function Attrs: nounwind uwtable
define i32 @GetSndSampleRate() #0 {
entry:
  %0 = load i32, i32* @samp_freq, align 4, !tbaa !5
  ret i32 %0
}

; Function Attrs: nounwind uwtable
define i32 @GetSndChannels() #0 {
entry:
  %0 = load i32, i32* @num_channels, align 4, !tbaa !5
  ret i32 %0
}

; Function Attrs: nounwind uwtable
define i64 @GetSndSamples() #0 {
entry:
  %0 = load i64, i64* @num_samples, align 8, !tbaa !14
  ret i64 %0
}

; Function Attrs: nounwind uwtable
define void @lame_close_infile(%struct.lame_global_flags* %gfp) #0 {
entry:
  %gfp.addr = alloca %struct.lame_global_flags*, align 8
  store %struct.lame_global_flags* %gfp, %struct.lame_global_flags** %gfp.addr, align 8, !tbaa !1
  %0 = load %struct.lame_global_flags*, %struct.lame_global_flags** %gfp.addr, align 8, !tbaa !1
  call void @CloseSndFile(%struct.lame_global_flags* %0)
  ret void
}

; Function Attrs: nounwind uwtable
define void @CloseSndFile(%struct.lame_global_flags* %gfp) #0 {
entry:
  %gfp.addr = alloca %struct.lame_global_flags*, align 8
  store %struct.lame_global_flags* %gfp, %struct.lame_global_flags** %gfp.addr, align 8, !tbaa !1
  %0 = load %struct._IO_FILE*, %struct._IO_FILE** @musicin, align 8, !tbaa !1
  %call = call i32 @fclose(%struct._IO_FILE* %0)
  %cmp = icmp ne i32 %call, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %1 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !tbaa !1
  %call1 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %1, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str, i32 0, i32 0))
  call void @exit(i32 2) #6
  unreachable

if.end:                                           ; preds = %entry
  ret void
}

; Function Attrs: nounwind uwtable
define i32 @lame_readframe(%struct.lame_global_flags* %gfp, [1152 x i16]* %Buffer) #0 {
entry:
  %gfp.addr = alloca %struct.lame_global_flags*, align 8
  %Buffer.addr = alloca [1152 x i16]*, align 8
  %iread = alloca i32, align 4
  store %struct.lame_global_flags* %gfp, %struct.lame_global_flags** %gfp.addr, align 8, !tbaa !1
  store [1152 x i16]* %Buffer, [1152 x i16]** %Buffer.addr, align 8, !tbaa !1
  %0 = bitcast i32* %iread to i8*
  call void @llvm.lifetime.start(i64 4, i8* %0) #1
  %1 = load %struct.lame_global_flags*, %struct.lame_global_flags** %gfp.addr, align 8, !tbaa !1
  %2 = load [1152 x i16]*, [1152 x i16]** %Buffer.addr, align 8, !tbaa !1
  %3 = load %struct.lame_global_flags*, %struct.lame_global_flags** %gfp.addr, align 8, !tbaa !1
  %stereo = getelementptr inbounds %struct.lame_global_flags, %struct.lame_global_flags* %3, i32 0, i32 46
  %4 = load i32, i32* %stereo, align 4, !tbaa !22
  %call = call i32 @get_audio(%struct.lame_global_flags* %1, [1152 x i16]* %2, i32 %4)
  store i32 %call, i32* %iread, align 4, !tbaa !5
  %5 = load i32, i32* %iread, align 4, !tbaa !5
  %cmp = icmp eq i32 %5, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %6 = load %struct.lame_global_flags*, %struct.lame_global_flags** %gfp.addr, align 8, !tbaa !1
  %totalframes = getelementptr inbounds %struct.lame_global_flags, %struct.lame_global_flags* %6, i32 0, i32 40
  %7 = load i64, i64* %totalframes, align 8, !tbaa !23
  %8 = load %struct.lame_global_flags*, %struct.lame_global_flags** %gfp.addr, align 8, !tbaa !1
  %frameNum = getelementptr inbounds %struct.lame_global_flags, %struct.lame_global_flags* %8, i32 0, i32 39
  %9 = load i64, i64* %frameNum, align 8, !tbaa !24
  %add = add nsw i64 %9, 2
  %cmp1 = icmp slt i64 %7, %add
  br i1 %cmp1, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.then
  %10 = load %struct.lame_global_flags*, %struct.lame_global_flags** %gfp.addr, align 8, !tbaa !1
  %totalframes2 = getelementptr inbounds %struct.lame_global_flags, %struct.lame_global_flags* %10, i32 0, i32 40
  %11 = load i64, i64* %totalframes2, align 8, !tbaa !23
  br label %cond.end

cond.false:                                       ; preds = %if.then
  %12 = load %struct.lame_global_flags*, %struct.lame_global_flags** %gfp.addr, align 8, !tbaa !1
  %frameNum3 = getelementptr inbounds %struct.lame_global_flags, %struct.lame_global_flags* %12, i32 0, i32 39
  %13 = load i64, i64* %frameNum3, align 8, !tbaa !24
  %add4 = add nsw i64 %13, 2
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i64 [ %11, %cond.true ], [ %add4, %cond.false ]
  %14 = load %struct.lame_global_flags*, %struct.lame_global_flags** %gfp.addr, align 8, !tbaa !1
  %totalframes5 = getelementptr inbounds %struct.lame_global_flags, %struct.lame_global_flags* %14, i32 0, i32 40
  store i64 %cond, i64* %totalframes5, align 8, !tbaa !23
  br label %if.end

if.end:                                           ; preds = %cond.end, %entry
  %15 = load %struct.lame_global_flags*, %struct.lame_global_flags** %gfp.addr, align 8, !tbaa !1
  %frameNum6 = getelementptr inbounds %struct.lame_global_flags, %struct.lame_global_flags* %15, i32 0, i32 39
  %16 = load i64, i64* %frameNum6, align 8, !tbaa !24
  %17 = load %struct.lame_global_flags*, %struct.lame_global_flags** %gfp.addr, align 8, !tbaa !1
  %totalframes7 = getelementptr inbounds %struct.lame_global_flags, %struct.lame_global_flags* %17, i32 0, i32 40
  %18 = load i64, i64* %totalframes7, align 8, !tbaa !23
  %sub = sub nsw i64 %18, 1
  %cmp8 = icmp sgt i64 %16, %sub
  br i1 %cmp8, label %if.then.9, label %if.end.12

if.then.9:                                        ; preds = %if.end
  %19 = load %struct.lame_global_flags*, %struct.lame_global_flags** %gfp.addr, align 8, !tbaa !1
  %frameNum10 = getelementptr inbounds %struct.lame_global_flags, %struct.lame_global_flags* %19, i32 0, i32 39
  %20 = load i64, i64* %frameNum10, align 8, !tbaa !24
  %21 = load %struct.lame_global_flags*, %struct.lame_global_flags** %gfp.addr, align 8, !tbaa !1
  %totalframes11 = getelementptr inbounds %struct.lame_global_flags, %struct.lame_global_flags* %21, i32 0, i32 40
  store i64 %20, i64* %totalframes11, align 8, !tbaa !23
  br label %if.end.12

if.end.12:                                        ; preds = %if.then.9, %if.end
  %22 = load i32, i32* %iread, align 4, !tbaa !5
  %23 = bitcast i32* %iread to i8*
  call void @llvm.lifetime.end(i64 4, i8* %23) #1
  ret i32 %22
}

; Function Attrs: nounwind
declare void @llvm.lifetime.start(i64, i8* nocapture) #1

; Function Attrs: nounwind uwtable
define i32 @get_audio(%struct.lame_global_flags* %gfp, [1152 x i16]* %buffer, i32 %stereo) #0 {
entry:
  %gfp.addr = alloca %struct.lame_global_flags*, align 8
  %buffer.addr = alloca [1152 x i16]*, align 8
  %stereo.addr = alloca i32, align 4
  %j = alloca i32, align 4
  %insamp = alloca [2304 x i16], align 16
  %samples_read = alloca i32, align 4
  %framesize = alloca i32, align 4
  %samples_to_read = alloca i32, align 4
  %remaining = alloca i64, align 8
  %num_channels = alloca i32, align 4
  store %struct.lame_global_flags* %gfp, %struct.lame_global_flags** %gfp.addr, align 8, !tbaa !1
  store [1152 x i16]* %buffer, [1152 x i16]** %buffer.addr, align 8, !tbaa !1
  store i32 %stereo, i32* %stereo.addr, align 4, !tbaa !5
  %0 = bitcast i32* %j to i8*
  call void @llvm.lifetime.start(i64 4, i8* %0) #1
  %1 = bitcast [2304 x i16]* %insamp to i8*
  call void @llvm.lifetime.start(i64 4608, i8* %1) #1
  %2 = bitcast i32* %samples_read to i8*
  call void @llvm.lifetime.start(i64 4, i8* %2) #1
  %3 = bitcast i32* %framesize to i8*
  call void @llvm.lifetime.start(i64 4, i8* %3) #1
  %4 = bitcast i32* %samples_to_read to i8*
  call void @llvm.lifetime.start(i64 4, i8* %4) #1
  %5 = bitcast i64* %remaining to i8*
  call void @llvm.lifetime.start(i64 8, i8* %5) #1
  %6 = bitcast i32* %num_channels to i8*
  call void @llvm.lifetime.start(i64 4, i8* %6) #1
  %7 = load %struct.lame_global_flags*, %struct.lame_global_flags** %gfp.addr, align 8, !tbaa !1
  %num_channels1 = getelementptr inbounds %struct.lame_global_flags, %struct.lame_global_flags* %7, i32 0, i32 1
  %8 = load i32, i32* %num_channels1, align 4, !tbaa !12
  store i32 %8, i32* %num_channels, align 4, !tbaa !5
  %9 = load %struct.lame_global_flags*, %struct.lame_global_flags** %gfp.addr, align 8, !tbaa !1
  %frameNum = getelementptr inbounds %struct.lame_global_flags, %struct.lame_global_flags* %9, i32 0, i32 39
  %10 = load i64, i64* %frameNum, align 8, !tbaa !24
  %cmp = icmp eq i64 %10, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store i64 0, i64* @get_audio.num_samples_read, align 8, !tbaa !14
  %call = call i64 @GetSndSamples()
  store i64 %call, i64* @num_samples, align 8, !tbaa !14
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %11 = load %struct.lame_global_flags*, %struct.lame_global_flags** %gfp.addr, align 8, !tbaa !1
  %mode_gr = getelementptr inbounds %struct.lame_global_flags, %struct.lame_global_flags* %11, i32 0, i32 45
  %12 = load i32, i32* %mode_gr, align 4, !tbaa !25
  %mul = mul nsw i32 %12, 576
  store i32 %mul, i32* %framesize, align 4, !tbaa !5
  %13 = load i32, i32* %framesize, align 4, !tbaa !5
  store i32 %13, i32* %samples_to_read, align 4, !tbaa !5
  %14 = load i32, i32* @count_samples_carefully, align 4, !tbaa !5
  %tobool = icmp ne i32 %14, 0
  br i1 %tobool, label %if.then.2, label %if.end.9

if.then.2:                                        ; preds = %if.end
  %15 = load i64, i64* @num_samples, align 8, !tbaa !14
  %16 = load i64, i64* @num_samples, align 8, !tbaa !14
  %17 = load i64, i64* @get_audio.num_samples_read, align 8, !tbaa !14
  %cmp3 = icmp ult i64 %16, %17
  br i1 %cmp3, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.then.2
  %18 = load i64, i64* @num_samples, align 8, !tbaa !14
  br label %cond.end

cond.false:                                       ; preds = %if.then.2
  %19 = load i64, i64* @get_audio.num_samples_read, align 8, !tbaa !14
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i64 [ %18, %cond.true ], [ %19, %cond.false ]
  %sub = sub i64 %15, %cond
  store i64 %sub, i64* %remaining, align 8, !tbaa !14
  %20 = load i64, i64* %remaining, align 8, !tbaa !14
  %21 = load i32, i32* %framesize, align 4, !tbaa !5
  %conv = sext i32 %21 to i64
  %cmp4 = icmp ult i64 %20, %conv
  br i1 %cmp4, label %if.then.6, label %if.end.8

if.then.6:                                        ; preds = %cond.end
  %22 = load i64, i64* %remaining, align 8, !tbaa !14
  %conv7 = trunc i64 %22 to i32
  store i32 %conv7, i32* %samples_to_read, align 4, !tbaa !5
  br label %if.end.8

if.end.8:                                         ; preds = %if.then.6, %cond.end
  br label %if.end.9

if.end.9:                                         ; preds = %if.end.8, %if.end
  %23 = load %struct.lame_global_flags*, %struct.lame_global_flags** %gfp.addr, align 8, !tbaa !1
  %input_format = getelementptr inbounds %struct.lame_global_flags, %struct.lame_global_flags* %23, i32 0, i32 29
  %24 = load i32, i32* %input_format, align 4, !tbaa !16
  %cmp10 = icmp eq i32 %24, 3
  br i1 %cmp10, label %if.then.12, label %if.else

if.then.12:                                       ; preds = %if.end.9
  %25 = load %struct.lame_global_flags*, %struct.lame_global_flags** %gfp.addr, align 8, !tbaa !1
  %26 = load %struct._IO_FILE*, %struct._IO_FILE** @musicin, align 8, !tbaa !1
  %27 = load [1152 x i16]*, [1152 x i16]** %buffer.addr, align 8, !tbaa !1
  %28 = load i32, i32* %num_channels, align 4, !tbaa !5
  %call13 = call i32 @read_samples_mp3(%struct.lame_global_flags* %25, %struct._IO_FILE* %26, [1152 x i16]* %27, i32 %28)
  store i32 %call13, i32* %samples_read, align 4, !tbaa !5
  br label %if.end.37

if.else:                                          ; preds = %if.end.9
  %29 = load %struct.lame_global_flags*, %struct.lame_global_flags** %gfp.addr, align 8, !tbaa !1
  %arraydecay = getelementptr inbounds [2304 x i16], [2304 x i16]* %insamp, i32 0, i32 0
  %30 = load i32, i32* %num_channels, align 4, !tbaa !5
  %31 = load i32, i32* %framesize, align 4, !tbaa !5
  %mul14 = mul nsw i32 %30, %31
  %32 = load i32, i32* %num_channels, align 4, !tbaa !5
  %33 = load i32, i32* %samples_to_read, align 4, !tbaa !5
  %mul15 = mul nsw i32 %32, %33
  %call16 = call i32 @read_samples_pcm(%struct.lame_global_flags* %29, i16* %arraydecay, i32 %mul14, i32 %mul15)
  store i32 %call16, i32* %samples_read, align 4, !tbaa !5
  %34 = load i32, i32* %num_channels, align 4, !tbaa !5
  %35 = load i32, i32* %samples_read, align 4, !tbaa !5
  %div = sdiv i32 %35, %34
  store i32 %div, i32* %samples_read, align 4, !tbaa !5
  store i32 0, i32* %j, align 4, !tbaa !5
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.else
  %36 = load i32, i32* %j, align 4, !tbaa !5
  %37 = load i32, i32* %framesize, align 4, !tbaa !5
  %cmp17 = icmp slt i32 %36, %37
  br i1 %cmp17, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %38 = load i32, i32* %num_channels, align 4, !tbaa !5
  %39 = load i32, i32* %j, align 4, !tbaa !5
  %mul19 = mul nsw i32 %38, %39
  %idxprom = sext i32 %mul19 to i64
  %arrayidx = getelementptr inbounds [2304 x i16], [2304 x i16]* %insamp, i32 0, i64 %idxprom
  %40 = load i16, i16* %arrayidx, align 2, !tbaa !26
  %41 = load i32, i32* %j, align 4, !tbaa !5
  %idxprom20 = sext i32 %41 to i64
  %42 = load [1152 x i16]*, [1152 x i16]** %buffer.addr, align 8, !tbaa !1
  %arrayidx21 = getelementptr inbounds [1152 x i16], [1152 x i16]* %42, i64 0
  %arrayidx22 = getelementptr inbounds [1152 x i16], [1152 x i16]* %arrayidx21, i32 0, i64 %idxprom20
  store i16 %40, i16* %arrayidx22, align 2, !tbaa !26
  %43 = load i32, i32* %num_channels, align 4, !tbaa !5
  %cmp23 = icmp eq i32 %43, 2
  br i1 %cmp23, label %if.then.25, label %if.else.32

if.then.25:                                       ; preds = %for.body
  %44 = load i32, i32* %j, align 4, !tbaa !5
  %mul26 = mul nsw i32 2, %44
  %add = add nsw i32 %mul26, 1
  %idxprom27 = sext i32 %add to i64
  %arrayidx28 = getelementptr inbounds [2304 x i16], [2304 x i16]* %insamp, i32 0, i64 %idxprom27
  %45 = load i16, i16* %arrayidx28, align 2, !tbaa !26
  %46 = load i32, i32* %j, align 4, !tbaa !5
  %idxprom29 = sext i32 %46 to i64
  %47 = load [1152 x i16]*, [1152 x i16]** %buffer.addr, align 8, !tbaa !1
  %arrayidx30 = getelementptr inbounds [1152 x i16], [1152 x i16]* %47, i64 1
  %arrayidx31 = getelementptr inbounds [1152 x i16], [1152 x i16]* %arrayidx30, i32 0, i64 %idxprom29
  store i16 %45, i16* %arrayidx31, align 2, !tbaa !26
  br label %if.end.36

if.else.32:                                       ; preds = %for.body
  %48 = load i32, i32* %j, align 4, !tbaa !5
  %idxprom33 = sext i32 %48 to i64
  %49 = load [1152 x i16]*, [1152 x i16]** %buffer.addr, align 8, !tbaa !1
  %arrayidx34 = getelementptr inbounds [1152 x i16], [1152 x i16]* %49, i64 1
  %arrayidx35 = getelementptr inbounds [1152 x i16], [1152 x i16]* %arrayidx34, i32 0, i64 %idxprom33
  store i16 0, i16* %arrayidx35, align 2, !tbaa !26
  br label %if.end.36

if.end.36:                                        ; preds = %if.else.32, %if.then.25
  br label %for.inc

for.inc:                                          ; preds = %if.end.36
  %50 = load i32, i32* %j, align 4, !tbaa !5
  %inc = add nsw i32 %50, 1
  store i32 %inc, i32* %j, align 4, !tbaa !5
  br label %for.cond

for.end:                                          ; preds = %for.cond
  br label %if.end.37

if.end.37:                                        ; preds = %for.end, %if.then.12
  %51 = load i64, i64* @num_samples, align 8, !tbaa !14
  %cmp38 = icmp ne i64 %51, 4294967295
  br i1 %cmp38, label %if.then.40, label %if.end.43

if.then.40:                                       ; preds = %if.end.37
  %52 = load i32, i32* %samples_read, align 4, !tbaa !5
  %conv41 = sext i32 %52 to i64
  %53 = load i64, i64* @get_audio.num_samples_read, align 8, !tbaa !14
  %add42 = add i64 %53, %conv41
  store i64 %add42, i64* @get_audio.num_samples_read, align 8, !tbaa !14
  br label %if.end.43

if.end.43:                                        ; preds = %if.then.40, %if.end.37
  %54 = load i32, i32* %samples_read, align 4, !tbaa !5
  %55 = bitcast i32* %num_channels to i8*
  call void @llvm.lifetime.end(i64 4, i8* %55) #1
  %56 = bitcast i64* %remaining to i8*
  call void @llvm.lifetime.end(i64 8, i8* %56) #1
  %57 = bitcast i32* %samples_to_read to i8*
  call void @llvm.lifetime.end(i64 4, i8* %57) #1
  %58 = bitcast i32* %framesize to i8*
  call void @llvm.lifetime.end(i64 4, i8* %58) #1
  %59 = bitcast i32* %samples_read to i8*
  call void @llvm.lifetime.end(i64 4, i8* %59) #1
  %60 = bitcast [2304 x i16]* %insamp to i8*
  call void @llvm.lifetime.end(i64 4608, i8* %60) #1
  %61 = bitcast i32* %j to i8*
  call void @llvm.lifetime.end(i64 4, i8* %61) #1
  ret i32 %54
}

; Function Attrs: nounwind
declare void @llvm.lifetime.end(i64, i8* nocapture) #1

; Function Attrs: nounwind uwtable
define i32 @read_samples_mp3(%struct.lame_global_flags* %gfp, %struct._IO_FILE* %musicin, [1152 x i16]* %mpg123pcm, i32 %stereo) #0 {
entry:
  %retval = alloca i32, align 4
  %gfp.addr = alloca %struct.lame_global_flags*, align 8
  %musicin.addr = alloca %struct._IO_FILE*, align 8
  %mpg123pcm.addr = alloca [1152 x i16]*, align 8
  %stereo.addr = alloca i32, align 4
  %j = alloca i32, align 4
  %out = alloca i32, align 4
  %cleanup.dest.slot = alloca i32
  store %struct.lame_global_flags* %gfp, %struct.lame_global_flags** %gfp.addr, align 8, !tbaa !1
  store %struct._IO_FILE* %musicin, %struct._IO_FILE** %musicin.addr, align 8, !tbaa !1
  store [1152 x i16]* %mpg123pcm, [1152 x i16]** %mpg123pcm.addr, align 8, !tbaa !1
  store i32 %stereo, i32* %stereo.addr, align 4, !tbaa !5
  %0 = bitcast i32* %j to i8*
  call void @llvm.lifetime.start(i64 4, i8* %0) #1
  %1 = bitcast i32* %out to i8*
  call void @llvm.lifetime.start(i64 4, i8* %1) #1
  store i32 0, i32* %out, align 4, !tbaa !5
  %2 = load %struct._IO_FILE*, %struct._IO_FILE** %musicin.addr, align 8, !tbaa !1
  %3 = load [1152 x i16]*, [1152 x i16]** %mpg123pcm.addr, align 8, !tbaa !1
  %arrayidx = getelementptr inbounds [1152 x i16], [1152 x i16]* %3, i64 0
  %arraydecay = getelementptr inbounds [1152 x i16], [1152 x i16]* %arrayidx, i32 0, i32 0
  %4 = load [1152 x i16]*, [1152 x i16]** %mpg123pcm.addr, align 8, !tbaa !1
  %arrayidx1 = getelementptr inbounds [1152 x i16], [1152 x i16]* %4, i64 1
  %arraydecay2 = getelementptr inbounds [1152 x i16], [1152 x i16]* %arrayidx1, i32 0, i32 0
  %call = call i32 @lame_decode_fromfile(%struct._IO_FILE* %2, i16* %arraydecay, i16* %arraydecay2)
  store i32 %call, i32* %out, align 4, !tbaa !5
  %5 = load i32, i32* %out, align 4, !tbaa !5
  %cmp = icmp eq i32 %5, -1
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store i32 0, i32* %j, align 4, !tbaa !5
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.then
  %6 = load i32, i32* %j, align 4, !tbaa !5
  %cmp3 = icmp slt i32 %6, 1152
  br i1 %cmp3, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %7 = load i32, i32* %j, align 4, !tbaa !5
  %idxprom = sext i32 %7 to i64
  %8 = load [1152 x i16]*, [1152 x i16]** %mpg123pcm.addr, align 8, !tbaa !1
  %arrayidx4 = getelementptr inbounds [1152 x i16], [1152 x i16]* %8, i64 0
  %arrayidx5 = getelementptr inbounds [1152 x i16], [1152 x i16]* %arrayidx4, i32 0, i64 %idxprom
  store i16 0, i16* %arrayidx5, align 2, !tbaa !26
  %9 = load i32, i32* %j, align 4, !tbaa !5
  %idxprom6 = sext i32 %9 to i64
  %10 = load [1152 x i16]*, [1152 x i16]** %mpg123pcm.addr, align 8, !tbaa !1
  %arrayidx7 = getelementptr inbounds [1152 x i16], [1152 x i16]* %10, i64 1
  %arrayidx8 = getelementptr inbounds [1152 x i16], [1152 x i16]* %arrayidx7, i32 0, i64 %idxprom6
  store i16 0, i16* %arrayidx8, align 2, !tbaa !26
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %11 = load i32, i32* %j, align 4, !tbaa !5
  %inc = add nsw i32 %11, 1
  store i32 %inc, i32* %j, align 4, !tbaa !5
  br label %for.cond

for.end:                                          ; preds = %for.cond
  br label %if.end

if.end:                                           ; preds = %for.end, %entry
  %12 = load i32, i32* %out, align 4, !tbaa !5
  %cmp9 = icmp eq i32 %12, -1
  br i1 %cmp9, label %if.then.10, label %if.else

if.then.10:                                       ; preds = %if.end
  store i32 0, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.else:                                          ; preds = %if.end
  %13 = load i32, i32* %out, align 4, !tbaa !5
  store i32 %13, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %if.else, %if.then.10
  %14 = bitcast i32* %out to i8*
  call void @llvm.lifetime.end(i64 4, i8* %14) #1
  %15 = bitcast i32* %j to i8*
  call void @llvm.lifetime.end(i64 4, i8* %15) #1
  %16 = load i32, i32* %retval
  ret i32 %16
}

; Function Attrs: nounwind uwtable
define i32 @read_samples_pcm(%struct.lame_global_flags* %gfp, i16* %sample_buffer, i32 %frame_size, i32 %samples_to_read) #0 {
entry:
  %gfp.addr = alloca %struct.lame_global_flags*, align 8
  %sample_buffer.addr = alloca i16*, align 8
  %frame_size.addr = alloca i32, align 4
  %samples_to_read.addr = alloca i32, align 4
  %samples_read = alloca i32, align 4
  %rcode = alloca i32, align 4
  %iswav = alloca i32, align 4
  store %struct.lame_global_flags* %gfp, %struct.lame_global_flags** %gfp.addr, align 8, !tbaa !1
  store i16* %sample_buffer, i16** %sample_buffer.addr, align 8, !tbaa !1
  store i32 %frame_size, i32* %frame_size.addr, align 4, !tbaa !5
  store i32 %samples_to_read, i32* %samples_to_read.addr, align 4, !tbaa !5
  %0 = bitcast i32* %samples_read to i8*
  call void @llvm.lifetime.start(i64 4, i8* %0) #1
  %1 = bitcast i32* %rcode to i8*
  call void @llvm.lifetime.start(i64 4, i8* %1) #1
  %2 = bitcast i32* %iswav to i8*
  call void @llvm.lifetime.start(i64 4, i8* %2) #1
  %3 = load %struct.lame_global_flags*, %struct.lame_global_flags** %gfp.addr, align 8, !tbaa !1
  %input_format = getelementptr inbounds %struct.lame_global_flags, %struct.lame_global_flags* %3, i32 0, i32 29
  %4 = load i32, i32* %input_format, align 4, !tbaa !16
  %cmp = icmp eq i32 %4, 1
  %conv = zext i1 %cmp to i32
  store i32 %conv, i32* %iswav, align 4, !tbaa !5
  %5 = load i16*, i16** %sample_buffer.addr, align 8, !tbaa !1
  %6 = bitcast i16* %5 to i8*
  %7 = load i32, i32* %samples_to_read.addr, align 4, !tbaa !5
  %conv1 = sext i32 %7 to i64
  %8 = load %struct._IO_FILE*, %struct._IO_FILE** @musicin, align 8, !tbaa !1
  %call = call i64 @fread(i8* %6, i64 2, i64 %conv1, %struct._IO_FILE* %8)
  %conv2 = trunc i64 %call to i32
  store i32 %conv2, i32* %samples_read, align 4, !tbaa !5
  %9 = load %struct._IO_FILE*, %struct._IO_FILE** @musicin, align 8, !tbaa !1
  %call3 = call i32 @ferror(%struct._IO_FILE* %9) #1
  %tobool = icmp ne i32 %call3, 0
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %10 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !tbaa !1
  %call4 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %10, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.8, i32 0, i32 0))
  call void @exit(i32 2) #6
  unreachable

if.end:                                           ; preds = %entry
  %11 = load i32, i32* @NativeByteOrder, align 4, !tbaa !15
  %cmp5 = icmp eq i32 %11, 0
  br i1 %cmp5, label %if.then.7, label %if.end.14

if.then.7:                                        ; preds = %if.end
  %call8 = call i32 @DetermineByteOrder()
  store i32 %call8, i32* @NativeByteOrder, align 4, !tbaa !15
  %12 = load i32, i32* @NativeByteOrder, align 4, !tbaa !15
  %cmp9 = icmp eq i32 %12, 0
  br i1 %cmp9, label %if.then.11, label %if.end.13

if.then.11:                                       ; preds = %if.then.7
  %13 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !tbaa !1
  %call12 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %13, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.9, i32 0, i32 0))
  call void @exit(i32 1) #6
  unreachable

if.end.13:                                        ; preds = %if.then.7
  br label %if.end.14

if.end.14:                                        ; preds = %if.end.13, %if.end
  %14 = load i32, i32* %iswav, align 4, !tbaa !5
  %tobool15 = icmp ne i32 %14, 0
  br i1 %tobool15, label %if.end.19, label %land.lhs.true

land.lhs.true:                                    ; preds = %if.end.14
  %15 = load i32, i32* @NativeByteOrder, align 4, !tbaa !15
  %cmp16 = icmp eq i32 %15, 2
  br i1 %cmp16, label %if.then.18, label %if.end.19

if.then.18:                                       ; preds = %land.lhs.true
  %16 = load i16*, i16** %sample_buffer.addr, align 8, !tbaa !1
  %17 = load i32, i32* %samples_read, align 4, !tbaa !5
  call void @SwapBytesInWords(i16* %16, i32 %17)
  br label %if.end.19

if.end.19:                                        ; preds = %if.then.18, %land.lhs.true, %if.end.14
  %18 = load i32, i32* %iswav, align 4, !tbaa !5
  %tobool20 = icmp ne i32 %18, 0
  br i1 %tobool20, label %land.lhs.true.21, label %if.end.25

land.lhs.true.21:                                 ; preds = %if.end.19
  %19 = load i32, i32* @NativeByteOrder, align 4, !tbaa !15
  %cmp22 = icmp eq i32 %19, 1
  br i1 %cmp22, label %if.then.24, label %if.end.25

if.then.24:                                       ; preds = %land.lhs.true.21
  %20 = load i16*, i16** %sample_buffer.addr, align 8, !tbaa !1
  %21 = load i32, i32* %samples_read, align 4, !tbaa !5
  call void @SwapBytesInWords(i16* %20, i32 %21)
  br label %if.end.25

if.end.25:                                        ; preds = %if.then.24, %land.lhs.true.21, %if.end.19
  %22 = load %struct.lame_global_flags*, %struct.lame_global_flags** %gfp.addr, align 8, !tbaa !1
  %swapbytes = getelementptr inbounds %struct.lame_global_flags, %struct.lame_global_flags* %22, i32 0, i32 30
  %23 = load i32, i32* %swapbytes, align 4, !tbaa !17
  %cmp26 = icmp eq i32 %23, 1
  br i1 %cmp26, label %if.then.28, label %if.end.29

if.then.28:                                       ; preds = %if.end.25
  %24 = load i16*, i16** %sample_buffer.addr, align 8, !tbaa !1
  %25 = load i32, i32* %samples_read, align 4, !tbaa !5
  call void @SwapBytesInWords(i16* %24, i32 %25)
  br label %if.end.29

if.end.29:                                        ; preds = %if.then.28, %if.end.25
  %26 = load i32, i32* %samples_read, align 4, !tbaa !5
  store i32 %26, i32* %rcode, align 4, !tbaa !5
  %27 = load i32, i32* %samples_read, align 4, !tbaa !5
  %28 = load i32, i32* %frame_size.addr, align 4, !tbaa !5
  %cmp30 = icmp slt i32 %27, %28
  br i1 %cmp30, label %if.then.32, label %if.end.39

if.then.32:                                       ; preds = %if.end.29
  %29 = load i32, i32* %samples_read, align 4, !tbaa !5
  %cmp33 = icmp slt i32 %29, 0
  br i1 %cmp33, label %if.then.35, label %if.end.36

if.then.35:                                       ; preds = %if.then.32
  store i32 0, i32* %samples_read, align 4, !tbaa !5
  br label %if.end.36

if.end.36:                                        ; preds = %if.then.35, %if.then.32
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end.36
  %30 = load i32, i32* %samples_read, align 4, !tbaa !5
  %31 = load i32, i32* %frame_size.addr, align 4, !tbaa !5
  %cmp37 = icmp slt i32 %30, %31
  br i1 %cmp37, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %32 = load i32, i32* %samples_read, align 4, !tbaa !5
  %inc = add nsw i32 %32, 1
  store i32 %inc, i32* %samples_read, align 4, !tbaa !5
  %idxprom = sext i32 %32 to i64
  %33 = load i16*, i16** %sample_buffer.addr, align 8, !tbaa !1
  %arrayidx = getelementptr inbounds i16, i16* %33, i64 %idxprom
  store i16 0, i16* %arrayidx, align 2, !tbaa !26
  br label %for.cond

for.end:                                          ; preds = %for.cond
  br label %if.end.39

if.end.39:                                        ; preds = %for.end, %if.end.29
  %34 = load i32, i32* %rcode, align 4, !tbaa !5
  %35 = bitcast i32* %iswav to i8*
  call void @llvm.lifetime.end(i64 4, i8* %35) #1
  %36 = bitcast i32* %rcode to i8*
  call void @llvm.lifetime.end(i64 4, i8* %36) #1
  %37 = bitcast i32* %samples_read to i8*
  call void @llvm.lifetime.end(i64 4, i8* %37) #1
  ret i32 %34
}

; Function Attrs: nounwind uwtable
define i32 @GetSndBitrate() #0 {
entry:
  %0 = load i32, i32* @input_bitrate, align 4, !tbaa !5
  ret i32 %0
}

declare i32 @lame_decode_fromfile(%struct._IO_FILE*, i16*, i16*) #2

; Function Attrs: nounwind uwtable
define i32 @fskip(%struct._IO_FILE* %sf, i64 %num_bytes, i32 %dummy) #0 {
entry:
  %sf.addr = alloca %struct._IO_FILE*, align 8
  %num_bytes.addr = alloca i64, align 8
  %dummy.addr = alloca i32, align 4
  %data = alloca [1024 x i8], align 16
  %nskip = alloca i32, align 4
  store %struct._IO_FILE* %sf, %struct._IO_FILE** %sf.addr, align 8, !tbaa !1
  store i64 %num_bytes, i64* %num_bytes.addr, align 8, !tbaa !14
  store i32 %dummy, i32* %dummy.addr, align 4, !tbaa !5
  %0 = bitcast [1024 x i8]* %data to i8*
  call void @llvm.lifetime.start(i64 1024, i8* %0) #1
  %1 = bitcast i32* %nskip to i8*
  call void @llvm.lifetime.start(i64 4, i8* %1) #1
  store i32 0, i32* %nskip, align 4, !tbaa !5
  br label %while.cond

while.cond:                                       ; preds = %cond.end, %entry
  %2 = load i64, i64* %num_bytes.addr, align 8, !tbaa !14
  %cmp = icmp sgt i64 %2, 0
  br i1 %cmp, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %3 = load i64, i64* %num_bytes.addr, align 8, !tbaa !14
  %cmp1 = icmp sgt i64 %3, 1024
  br i1 %cmp1, label %cond.true, label %cond.false

cond.true:                                        ; preds = %while.body
  br label %cond.end

cond.false:                                       ; preds = %while.body
  %4 = load i64, i64* %num_bytes.addr, align 8, !tbaa !14
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i64 [ 1024, %cond.true ], [ %4, %cond.false ]
  %conv = trunc i64 %cond to i32
  store i32 %conv, i32* %nskip, align 4, !tbaa !5
  %arraydecay = getelementptr inbounds [1024 x i8], [1024 x i8]* %data, i32 0, i32 0
  %5 = load i32, i32* %nskip, align 4, !tbaa !5
  %conv2 = sext i32 %5 to i64
  %6 = load %struct._IO_FILE*, %struct._IO_FILE** %sf.addr, align 8, !tbaa !1
  %call = call i64 @fread(i8* %arraydecay, i64 1, i64 %conv2, %struct._IO_FILE* %6)
  %7 = load i64, i64* %num_bytes.addr, align 8, !tbaa !14
  %sub = sub i64 %7, %call
  store i64 %sub, i64* %num_bytes.addr, align 8, !tbaa !14
  br label %while.cond

while.end:                                        ; preds = %while.cond
  %8 = load i64, i64* %num_bytes.addr, align 8, !tbaa !14
  %conv3 = trunc i64 %8 to i32
  %9 = bitcast i32* %nskip to i8*
  call void @llvm.lifetime.end(i64 4, i8* %9) #1
  %10 = bitcast [1024 x i8]* %data to i8*
  call void @llvm.lifetime.end(i64 1024, i8* %10) #1
  ret i32 %conv3
}

declare i64 @fread(i8*, i64, i64, %struct._IO_FILE*) #2

declare i32 @fclose(%struct._IO_FILE*) #2

declare i32 @fprintf(%struct._IO_FILE*, i8*, ...) #2

; Function Attrs: noreturn nounwind
declare void @exit(i32) #3

; Function Attrs: nounwind
declare i32 @strcmp(i8*, i8*) #4

declare %struct._IO_FILE* @fopen(i8*, i8*) #2

declare i32 @lame_decode_initfile(%struct._IO_FILE*, i32*, i32*, i32*, i64*) #2

; Function Attrs: nounwind uwtable
define void @parse_file_header(%struct.lame_global_flags* %gfp, %struct._IO_FILE* %sf) #0 {
entry:
  %gfp.addr = alloca %struct.lame_global_flags*, align 8
  %sf.addr = alloca %struct._IO_FILE*, align 8
  %type = alloca i32, align 4
  store %struct.lame_global_flags* %gfp, %struct.lame_global_flags** %gfp.addr, align 8, !tbaa !1
  store %struct._IO_FILE* %sf, %struct._IO_FILE** %sf.addr, align 8, !tbaa !1
  %0 = bitcast i32* %type to i8*
  call void @llvm.lifetime.start(i64 4, i8* %0) #1
  store i32 0, i32* %type, align 4, !tbaa !5
  %1 = load %struct._IO_FILE*, %struct._IO_FILE** %sf.addr, align 8, !tbaa !1
  %call = call i32 @Read32BitsHighLow(%struct._IO_FILE* %1)
  store i32 %call, i32* %type, align 4, !tbaa !5
  store i32 0, i32* @count_samples_carefully, align 4, !tbaa !5
  %2 = load %struct.lame_global_flags*, %struct.lame_global_flags** %gfp.addr, align 8, !tbaa !1
  %input_format = getelementptr inbounds %struct.lame_global_flags, %struct.lame_global_flags* %2, i32 0, i32 29
  store i32 4, i32* %input_format, align 4, !tbaa !16
  %3 = load i32, i32* %type, align 4, !tbaa !5
  %cmp = icmp eq i32 %3, 1380533830
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %4 = load %struct._IO_FILE*, %struct._IO_FILE** %sf.addr, align 8, !tbaa !1
  %call1 = call i32 @parse_wave_header(%struct._IO_FILE* %4)
  %tobool = icmp ne i32 %call1, 0
  br i1 %tobool, label %if.then.2, label %if.end

if.then.2:                                        ; preds = %if.then
  %5 = load %struct.lame_global_flags*, %struct.lame_global_flags** %gfp.addr, align 8, !tbaa !1
  %input_format3 = getelementptr inbounds %struct.lame_global_flags, %struct.lame_global_flags* %5, i32 0, i32 29
  store i32 1, i32* %input_format3, align 4, !tbaa !16
  store i32 1, i32* @count_samples_carefully, align 4, !tbaa !5
  br label %if.end

if.end:                                           ; preds = %if.then.2, %if.then
  br label %if.end.12

if.else:                                          ; preds = %entry
  %6 = load i32, i32* %type, align 4, !tbaa !5
  %cmp4 = icmp eq i32 %6, 1179603533
  br i1 %cmp4, label %if.then.5, label %if.end.11

if.then.5:                                        ; preds = %if.else
  %7 = load %struct._IO_FILE*, %struct._IO_FILE** %sf.addr, align 8, !tbaa !1
  %call6 = call i32 @parse_aiff_header(%struct._IO_FILE* %7)
  %tobool7 = icmp ne i32 %call6, 0
  br i1 %tobool7, label %if.then.8, label %if.end.10

if.then.8:                                        ; preds = %if.then.5
  %8 = load %struct.lame_global_flags*, %struct.lame_global_flags** %gfp.addr, align 8, !tbaa !1
  %input_format9 = getelementptr inbounds %struct.lame_global_flags, %struct.lame_global_flags* %8, i32 0, i32 29
  store i32 2, i32* %input_format9, align 4, !tbaa !16
  store i32 1, i32* @count_samples_carefully, align 4, !tbaa !5
  br label %if.end.10

if.end.10:                                        ; preds = %if.then.8, %if.then.5
  br label %if.end.11

if.end.11:                                        ; preds = %if.end.10, %if.else
  br label %if.end.12

if.end.12:                                        ; preds = %if.end.11, %if.end
  %9 = load %struct.lame_global_flags*, %struct.lame_global_flags** %gfp.addr, align 8, !tbaa !1
  %input_format13 = getelementptr inbounds %struct.lame_global_flags, %struct.lame_global_flags* %9, i32 0, i32 29
  %10 = load i32, i32* %input_format13, align 4, !tbaa !16
  %cmp14 = icmp eq i32 %10, 4
  br i1 %cmp14, label %if.then.15, label %if.end.21

if.then.15:                                       ; preds = %if.end.12
  %11 = load %struct._IO_FILE*, %struct._IO_FILE** %sf.addr, align 8, !tbaa !1
  %call16 = call i32 @fseek(%struct._IO_FILE* %11, i64 0, i32 0)
  %cmp17 = icmp ne i32 %call16, 0
  br i1 %cmp17, label %if.then.18, label %if.end.19

if.then.18:                                       ; preds = %if.then.15
  br label %if.end.19

if.end.19:                                        ; preds = %if.then.18, %if.then.15
  %12 = load %struct.lame_global_flags*, %struct.lame_global_flags** %gfp.addr, align 8, !tbaa !1
  %input_format20 = getelementptr inbounds %struct.lame_global_flags, %struct.lame_global_flags* %12, i32 0, i32 29
  store i32 4, i32* %input_format20, align 4, !tbaa !16
  br label %if.end.21

if.end.21:                                        ; preds = %if.end.19, %if.end.12
  %13 = bitcast i32* %type to i8*
  call void @llvm.lifetime.end(i64 4, i8* %13) #1
  ret void
}

; Function Attrs: inlinehint nounwind uwtable
define available_externally i32 @stat(i8* nonnull %__path, %struct.stat* nonnull %__statbuf) #5 {
entry:
  %__path.addr = alloca i8*, align 8
  %__statbuf.addr = alloca %struct.stat*, align 8
  store i8* %__path, i8** %__path.addr, align 8, !tbaa !1
  store %struct.stat* %__statbuf, %struct.stat** %__statbuf.addr, align 8, !tbaa !1
  %0 = load i8*, i8** %__path.addr, align 8, !tbaa !1
  %1 = load %struct.stat*, %struct.stat** %__statbuf.addr, align 8, !tbaa !1
  %call = call i32 @__xstat(i32 1, i8* %0, %struct.stat* %1) #1
  ret i32 %call
}

; Function Attrs: nounwind
declare i32 @ferror(%struct._IO_FILE*) #4

declare i32 @DetermineByteOrder() #2

declare void @SwapBytesInWords(i16*, i32) #2

declare i32 @Read32BitsHighLow(%struct._IO_FILE*) #2

; Function Attrs: nounwind uwtable
define internal i32 @parse_wave_header(%struct._IO_FILE* %sf) #0 {
entry:
  %retval = alloca i32, align 4
  %sf.addr = alloca %struct._IO_FILE*, align 8
  %wave_info = alloca %struct.fmt_chunk_data_struct, align 8
  %is_wav = alloca i32, align 4
  %data_length = alloca i64, align 8
  %file_length = alloca i64, align 8
  %subSize = alloca i64, align 8
  %loop_sanity = alloca i32, align 4
  %cleanup.dest.slot = alloca i32
  %type = alloca i32, align 4
  store %struct._IO_FILE* %sf, %struct._IO_FILE** %sf.addr, align 8, !tbaa !1
  %0 = bitcast %struct.fmt_chunk_data_struct* %wave_info to i8*
  call void @llvm.lifetime.start(i64 32, i8* %0) #1
  %1 = bitcast i32* %is_wav to i8*
  call void @llvm.lifetime.start(i64 4, i8* %1) #1
  store i32 0, i32* %is_wav, align 4, !tbaa !5
  %2 = bitcast i64* %data_length to i8*
  call void @llvm.lifetime.start(i64 8, i8* %2) #1
  store i64 0, i64* %data_length, align 8, !tbaa !14
  %3 = bitcast i64* %file_length to i8*
  call void @llvm.lifetime.start(i64 8, i8* %3) #1
  %4 = bitcast i64* %subSize to i8*
  call void @llvm.lifetime.start(i64 8, i8* %4) #1
  store i64 0, i64* %subSize, align 8, !tbaa !14
  %5 = bitcast i32* %loop_sanity to i8*
  call void @llvm.lifetime.start(i64 4, i8* %5) #1
  store i32 0, i32* %loop_sanity, align 4, !tbaa !5
  %6 = bitcast %struct.fmt_chunk_data_struct* %wave_info to i8*
  call void @llvm.memset.p0i8.i64(i8* %6, i8 0, i64 32, i32 8, i1 false)
  %7 = load %struct._IO_FILE*, %struct._IO_FILE** %sf.addr, align 8, !tbaa !1
  %call = call i32 @Read32BitsHighLow(%struct._IO_FILE* %7)
  %conv = sext i32 %call to i64
  store i64 %conv, i64* %file_length, align 8, !tbaa !14
  %8 = load %struct._IO_FILE*, %struct._IO_FILE** %sf.addr, align 8, !tbaa !1
  %call1 = call i32 @Read32BitsHighLow(%struct._IO_FILE* %8)
  %cmp = icmp ne i32 %call1, 1463899717
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store i32 0, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.68

if.end:                                           ; preds = %entry
  store i32 0, i32* %loop_sanity, align 4, !tbaa !5
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end
  %9 = load i32, i32* %loop_sanity, align 4, !tbaa !5
  %cmp3 = icmp slt i32 %9, 20
  br i1 %cmp3, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %10 = bitcast i32* %type to i8*
  call void @llvm.lifetime.start(i64 4, i8* %10) #1
  %11 = load %struct._IO_FILE*, %struct._IO_FILE** %sf.addr, align 8, !tbaa !1
  %call5 = call i32 @Read32BitsHighLow(%struct._IO_FILE* %11)
  store i32 %call5, i32* %type, align 4, !tbaa !5
  %12 = load i32, i32* %type, align 4, !tbaa !5
  %cmp6 = icmp eq i32 %12, 1718449184
  br i1 %cmp6, label %if.then.8, label %if.else

if.then.8:                                        ; preds = %for.body
  %13 = load %struct._IO_FILE*, %struct._IO_FILE** %sf.addr, align 8, !tbaa !1
  %call9 = call i32 @Read32Bits(%struct._IO_FILE* %13)
  %conv10 = sext i32 %call9 to i64
  store i64 %conv10, i64* %subSize, align 8, !tbaa !14
  %14 = load i64, i64* %subSize, align 8, !tbaa !14
  %cmp11 = icmp slt i64 %14, 16
  br i1 %cmp11, label %if.then.13, label %if.end.14

if.then.13:                                       ; preds = %if.then.8
  store i32 0, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.14:                                        ; preds = %if.then.8
  %15 = load %struct._IO_FILE*, %struct._IO_FILE** %sf.addr, align 8, !tbaa !1
  %call15 = call i32 @Read16BitsLowHigh(%struct._IO_FILE* %15)
  %conv16 = trunc i32 %call15 to i16
  %format_tag = getelementptr inbounds %struct.fmt_chunk_data_struct, %struct.fmt_chunk_data_struct* %wave_info, i32 0, i32 0
  store i16 %conv16, i16* %format_tag, align 2, !tbaa !28
  %16 = load i64, i64* %subSize, align 8, !tbaa !14
  %sub = sub nsw i64 %16, 2
  store i64 %sub, i64* %subSize, align 8, !tbaa !14
  %17 = load %struct._IO_FILE*, %struct._IO_FILE** %sf.addr, align 8, !tbaa !1
  %call17 = call i32 @Read16BitsLowHigh(%struct._IO_FILE* %17)
  %conv18 = trunc i32 %call17 to i16
  %channels = getelementptr inbounds %struct.fmt_chunk_data_struct, %struct.fmt_chunk_data_struct* %wave_info, i32 0, i32 1
  store i16 %conv18, i16* %channels, align 2, !tbaa !30
  %18 = load i64, i64* %subSize, align 8, !tbaa !14
  %sub19 = sub nsw i64 %18, 2
  store i64 %sub19, i64* %subSize, align 8, !tbaa !14
  %19 = load %struct._IO_FILE*, %struct._IO_FILE** %sf.addr, align 8, !tbaa !1
  %call20 = call i32 @Read32Bits(%struct._IO_FILE* %19)
  %conv21 = sext i32 %call20 to i64
  %samples_per_sec = getelementptr inbounds %struct.fmt_chunk_data_struct, %struct.fmt_chunk_data_struct* %wave_info, i32 0, i32 2
  store i64 %conv21, i64* %samples_per_sec, align 8, !tbaa !31
  %20 = load i64, i64* %subSize, align 8, !tbaa !14
  %sub22 = sub nsw i64 %20, 4
  store i64 %sub22, i64* %subSize, align 8, !tbaa !14
  %21 = load %struct._IO_FILE*, %struct._IO_FILE** %sf.addr, align 8, !tbaa !1
  %call23 = call i32 @Read32Bits(%struct._IO_FILE* %21)
  %conv24 = sext i32 %call23 to i64
  %avg_bytes_per_sec = getelementptr inbounds %struct.fmt_chunk_data_struct, %struct.fmt_chunk_data_struct* %wave_info, i32 0, i32 3
  store i64 %conv24, i64* %avg_bytes_per_sec, align 8, !tbaa !32
  %22 = load i64, i64* %subSize, align 8, !tbaa !14
  %sub25 = sub nsw i64 %22, 4
  store i64 %sub25, i64* %subSize, align 8, !tbaa !14
  %23 = load %struct._IO_FILE*, %struct._IO_FILE** %sf.addr, align 8, !tbaa !1
  %call26 = call i32 @Read16BitsLowHigh(%struct._IO_FILE* %23)
  %conv27 = trunc i32 %call26 to i16
  %block_align = getelementptr inbounds %struct.fmt_chunk_data_struct, %struct.fmt_chunk_data_struct* %wave_info, i32 0, i32 4
  store i16 %conv27, i16* %block_align, align 2, !tbaa !33
  %24 = load i64, i64* %subSize, align 8, !tbaa !14
  %sub28 = sub nsw i64 %24, 2
  store i64 %sub28, i64* %subSize, align 8, !tbaa !14
  %25 = load %struct._IO_FILE*, %struct._IO_FILE** %sf.addr, align 8, !tbaa !1
  %call29 = call i32 @Read16BitsLowHigh(%struct._IO_FILE* %25)
  %conv30 = trunc i32 %call29 to i16
  %bits_per_sample = getelementptr inbounds %struct.fmt_chunk_data_struct, %struct.fmt_chunk_data_struct* %wave_info, i32 0, i32 5
  store i16 %conv30, i16* %bits_per_sample, align 2, !tbaa !34
  %26 = load i64, i64* %subSize, align 8, !tbaa !14
  %sub31 = sub nsw i64 %26, 2
  store i64 %sub31, i64* %subSize, align 8, !tbaa !14
  %27 = load i64, i64* %subSize, align 8, !tbaa !14
  %cmp32 = icmp sgt i64 %27, 0
  br i1 %cmp32, label %if.then.34, label %if.end.40

if.then.34:                                       ; preds = %if.end.14
  %28 = load %struct._IO_FILE*, %struct._IO_FILE** %sf.addr, align 8, !tbaa !1
  %29 = load i64, i64* %subSize, align 8, !tbaa !14
  %call35 = call i32 @fskip(%struct._IO_FILE* %28, i64 %29, i32 1)
  %cmp36 = icmp ne i32 %call35, 0
  br i1 %cmp36, label %if.then.38, label %if.end.39

if.then.38:                                       ; preds = %if.then.34
  store i32 0, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.39:                                        ; preds = %if.then.34
  br label %if.end.40

if.end.40:                                        ; preds = %if.end.39, %if.end.14
  br label %if.end.55

if.else:                                          ; preds = %for.body
  %30 = load i32, i32* %type, align 4, !tbaa !5
  %cmp41 = icmp eq i32 %30, 1684108385
  br i1 %cmp41, label %if.then.43, label %if.else.46

if.then.43:                                       ; preds = %if.else
  %31 = load %struct._IO_FILE*, %struct._IO_FILE** %sf.addr, align 8, !tbaa !1
  %call44 = call i32 @Read32Bits(%struct._IO_FILE* %31)
  %conv45 = sext i32 %call44 to i64
  store i64 %conv45, i64* %subSize, align 8, !tbaa !14
  %32 = load i64, i64* %subSize, align 8, !tbaa !14
  store i64 %32, i64* %data_length, align 8, !tbaa !14
  store i32 1, i32* %is_wav, align 4, !tbaa !5
  store i32 2, i32* %cleanup.dest.slot
  br label %cleanup

if.else.46:                                       ; preds = %if.else
  %33 = load %struct._IO_FILE*, %struct._IO_FILE** %sf.addr, align 8, !tbaa !1
  %call47 = call i32 @Read32Bits(%struct._IO_FILE* %33)
  %conv48 = sext i32 %call47 to i64
  store i64 %conv48, i64* %subSize, align 8, !tbaa !14
  %34 = load %struct._IO_FILE*, %struct._IO_FILE** %sf.addr, align 8, !tbaa !1
  %35 = load i64, i64* %subSize, align 8, !tbaa !14
  %call49 = call i32 @fskip(%struct._IO_FILE* %34, i64 %35, i32 1)
  %cmp50 = icmp ne i32 %call49, 0
  br i1 %cmp50, label %if.then.52, label %if.end.53

if.then.52:                                       ; preds = %if.else.46
  store i32 0, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.53:                                        ; preds = %if.else.46
  br label %if.end.54

if.end.54:                                        ; preds = %if.end.53
  br label %if.end.55

if.end.55:                                        ; preds = %if.end.54, %if.end.40
  store i32 0, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %if.end.55, %if.then.52, %if.then.43, %if.then.38, %if.then.13
  %36 = bitcast i32* %type to i8*
  call void @llvm.lifetime.end(i64 4, i8* %36) #1
  %cleanup.dest = load i32, i32* %cleanup.dest.slot
  switch i32 %cleanup.dest, label %cleanup.68 [
    i32 0, label %cleanup.cont
    i32 2, label %for.end
  ]

cleanup.cont:                                     ; preds = %cleanup
  br label %for.inc

for.inc:                                          ; preds = %cleanup.cont
  %37 = load i32, i32* %loop_sanity, align 4, !tbaa !5
  %inc = add nsw i32 %37, 1
  store i32 %inc, i32* %loop_sanity, align 4, !tbaa !5
  br label %for.cond

for.end:                                          ; preds = %cleanup, %for.cond
  %38 = load i32, i32* %is_wav, align 4, !tbaa !5
  %tobool = icmp ne i32 %38, 0
  br i1 %tobool, label %if.then.56, label %if.end.67

if.then.56:                                       ; preds = %for.end
  call void @wave_check(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.10, i32 0, i32 0), %struct.fmt_chunk_data_struct* %wave_info)
  %channels57 = getelementptr inbounds %struct.fmt_chunk_data_struct, %struct.fmt_chunk_data_struct* %wave_info, i32 0, i32 1
  %39 = load i16, i16* %channels57, align 2, !tbaa !30
  %conv58 = zext i16 %39 to i32
  store i32 %conv58, i32* @num_channels, align 4, !tbaa !5
  %samples_per_sec59 = getelementptr inbounds %struct.fmt_chunk_data_struct, %struct.fmt_chunk_data_struct* %wave_info, i32 0, i32 2
  %40 = load i64, i64* %samples_per_sec59, align 8, !tbaa !31
  %conv60 = trunc i64 %40 to i32
  store i32 %conv60, i32* @samp_freq, align 4, !tbaa !5
  %41 = load i64, i64* %data_length, align 8, !tbaa !14
  %channels61 = getelementptr inbounds %struct.fmt_chunk_data_struct, %struct.fmt_chunk_data_struct* %wave_info, i32 0, i32 1
  %42 = load i16, i16* %channels61, align 2, !tbaa !30
  %conv62 = zext i16 %42 to i32
  %bits_per_sample63 = getelementptr inbounds %struct.fmt_chunk_data_struct, %struct.fmt_chunk_data_struct* %wave_info, i32 0, i32 5
  %43 = load i16, i16* %bits_per_sample63, align 2, !tbaa !34
  %conv64 = zext i16 %43 to i32
  %mul = mul nsw i32 %conv62, %conv64
  %div = sdiv i32 %mul, 8
  %conv65 = sext i32 %div to i64
  %div66 = sdiv i64 %41, %conv65
  store i64 %div66, i64* @num_samples, align 8, !tbaa !14
  br label %if.end.67

if.end.67:                                        ; preds = %if.then.56, %for.end
  %44 = load i32, i32* %is_wav, align 4, !tbaa !5
  store i32 %44, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.68

cleanup.68:                                       ; preds = %if.end.67, %cleanup, %if.then
  %45 = bitcast i32* %loop_sanity to i8*
  call void @llvm.lifetime.end(i64 4, i8* %45) #1
  %46 = bitcast i64* %subSize to i8*
  call void @llvm.lifetime.end(i64 8, i8* %46) #1
  %47 = bitcast i64* %file_length to i8*
  call void @llvm.lifetime.end(i64 8, i8* %47) #1
  %48 = bitcast i64* %data_length to i8*
  call void @llvm.lifetime.end(i64 8, i8* %48) #1
  %49 = bitcast i32* %is_wav to i8*
  call void @llvm.lifetime.end(i64 4, i8* %49) #1
  %50 = bitcast %struct.fmt_chunk_data_struct* %wave_info to i8*
  call void @llvm.lifetime.end(i64 32, i8* %50) #1
  %51 = load i32, i32* %retval
  ret i32 %51
}

; Function Attrs: nounwind uwtable
define internal i32 @parse_aiff_header(%struct._IO_FILE* %sf) #0 {
entry:
  %retval = alloca i32, align 4
  %sf.addr = alloca %struct._IO_FILE*, align 8
  %is_aiff = alloca i32, align 4
  %chunkSize = alloca i64, align 8
  %subSize = alloca i64, align 8
  %aiff_info = alloca %struct.IFF_AIFF_struct, align 8
  %cleanup.dest.slot = alloca i32
  %type = alloca i32, align 4
  store %struct._IO_FILE* %sf, %struct._IO_FILE** %sf.addr, align 8, !tbaa !1
  %0 = bitcast i32* %is_aiff to i8*
  call void @llvm.lifetime.start(i64 4, i8* %0) #1
  store i32 0, i32* %is_aiff, align 4, !tbaa !5
  %1 = bitcast i64* %chunkSize to i8*
  call void @llvm.lifetime.start(i64 8, i8* %1) #1
  store i64 0, i64* %chunkSize, align 8, !tbaa !14
  %2 = bitcast i64* %subSize to i8*
  call void @llvm.lifetime.start(i64 8, i8* %2) #1
  store i64 0, i64* %subSize, align 8, !tbaa !14
  %3 = bitcast %struct.IFF_AIFF_struct* %aiff_info to i8*
  call void @llvm.lifetime.start(i64 48, i8* %3) #1
  %4 = bitcast %struct.IFF_AIFF_struct* %aiff_info to i8*
  call void @llvm.memset.p0i8.i64(i8* %4, i8 0, i64 48, i32 8, i1 false)
  %5 = load %struct._IO_FILE*, %struct._IO_FILE** %sf.addr, align 8, !tbaa !1
  %call = call i32 @Read32BitsHighLow(%struct._IO_FILE* %5)
  %conv = sext i32 %call to i64
  store i64 %conv, i64* %chunkSize, align 8, !tbaa !14
  %6 = load %struct._IO_FILE*, %struct._IO_FILE** %sf.addr, align 8, !tbaa !1
  %call1 = call i32 @Read32BitsHighLow(%struct._IO_FILE* %6)
  %cmp = icmp ne i32 %call1, 1095321158
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store i32 0, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.67

if.end:                                           ; preds = %entry
  br label %while.cond

while.cond:                                       ; preds = %cleanup.cont, %if.end
  %7 = load i64, i64* %chunkSize, align 8, !tbaa !14
  %cmp3 = icmp sgt i64 %7, 0
  br i1 %cmp3, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %8 = bitcast i32* %type to i8*
  call void @llvm.lifetime.start(i64 4, i8* %8) #1
  store i32 0, i32* %type, align 4, !tbaa !5
  %9 = load i64, i64* %chunkSize, align 8, !tbaa !14
  %sub = sub nsw i64 %9, 4
  store i64 %sub, i64* %chunkSize, align 8, !tbaa !14
  %10 = load %struct._IO_FILE*, %struct._IO_FILE** %sf.addr, align 8, !tbaa !1
  %call5 = call i32 @Read32BitsHighLow(%struct._IO_FILE* %10)
  store i32 %call5, i32* %type, align 4, !tbaa !5
  %11 = load i32, i32* %type, align 4, !tbaa !5
  %cmp6 = icmp eq i32 %11, 1129270605
  br i1 %cmp6, label %if.then.8, label %if.else

if.then.8:                                        ; preds = %while.body
  %12 = load %struct._IO_FILE*, %struct._IO_FILE** %sf.addr, align 8, !tbaa !1
  %call9 = call i32 @Read32BitsHighLow(%struct._IO_FILE* %12)
  %conv10 = sext i32 %call9 to i64
  store i64 %conv10, i64* %subSize, align 8, !tbaa !14
  %13 = load i64, i64* %subSize, align 8, !tbaa !14
  %14 = load i64, i64* %chunkSize, align 8, !tbaa !14
  %sub11 = sub nsw i64 %14, %13
  store i64 %sub11, i64* %chunkSize, align 8, !tbaa !14
  %15 = load %struct._IO_FILE*, %struct._IO_FILE** %sf.addr, align 8, !tbaa !1
  %call12 = call i32 @Read16BitsHighLow(%struct._IO_FILE* %15)
  %conv13 = trunc i32 %call12 to i16
  %numChannels = getelementptr inbounds %struct.IFF_AIFF_struct, %struct.IFF_AIFF_struct* %aiff_info, i32 0, i32 0
  store i16 %conv13, i16* %numChannels, align 2, !tbaa !35
  %16 = load i64, i64* %subSize, align 8, !tbaa !14
  %sub14 = sub nsw i64 %16, 2
  store i64 %sub14, i64* %subSize, align 8, !tbaa !14
  %17 = load %struct._IO_FILE*, %struct._IO_FILE** %sf.addr, align 8, !tbaa !1
  %call15 = call i32 @Read32BitsHighLow(%struct._IO_FILE* %17)
  %conv16 = sext i32 %call15 to i64
  %numSampleFrames = getelementptr inbounds %struct.IFF_AIFF_struct, %struct.IFF_AIFF_struct* %aiff_info, i32 0, i32 1
  store i64 %conv16, i64* %numSampleFrames, align 8, !tbaa !38
  %18 = load i64, i64* %subSize, align 8, !tbaa !14
  %sub17 = sub nsw i64 %18, 4
  store i64 %sub17, i64* %subSize, align 8, !tbaa !14
  %19 = load %struct._IO_FILE*, %struct._IO_FILE** %sf.addr, align 8, !tbaa !1
  %call18 = call i32 @Read16BitsHighLow(%struct._IO_FILE* %19)
  %conv19 = trunc i32 %call18 to i16
  %sampleSize = getelementptr inbounds %struct.IFF_AIFF_struct, %struct.IFF_AIFF_struct* %aiff_info, i32 0, i32 2
  store i16 %conv19, i16* %sampleSize, align 2, !tbaa !39
  %20 = load i64, i64* %subSize, align 8, !tbaa !14
  %sub20 = sub nsw i64 %20, 2
  store i64 %sub20, i64* %subSize, align 8, !tbaa !14
  %21 = load %struct._IO_FILE*, %struct._IO_FILE** %sf.addr, align 8, !tbaa !1
  %call21 = call double @ReadIeeeExtendedHighLow(%struct._IO_FILE* %21)
  %conv22 = fptrunc double %call21 to float
  %sampleRate = getelementptr inbounds %struct.IFF_AIFF_struct, %struct.IFF_AIFF_struct* %aiff_info, i32 0, i32 3
  store float %conv22, float* %sampleRate, align 4, !tbaa !40
  %22 = load i64, i64* %subSize, align 8, !tbaa !14
  %sub23 = sub nsw i64 %22, 10
  store i64 %sub23, i64* %subSize, align 8, !tbaa !14
  %23 = load %struct._IO_FILE*, %struct._IO_FILE** %sf.addr, align 8, !tbaa !1
  %24 = load i64, i64* %subSize, align 8, !tbaa !14
  %call24 = call i32 @fskip(%struct._IO_FILE* %23, i64 %24, i32 1)
  %cmp25 = icmp ne i32 %call24, 0
  br i1 %cmp25, label %if.then.27, label %if.end.28

if.then.27:                                       ; preds = %if.then.8
  store i32 0, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.28:                                        ; preds = %if.then.8
  br label %if.end.59

if.else:                                          ; preds = %while.body
  %25 = load i32, i32* %type, align 4, !tbaa !5
  %cmp29 = icmp eq i32 %25, 1397968452
  br i1 %cmp29, label %if.then.31, label %if.else.49

if.then.31:                                       ; preds = %if.else
  %26 = load %struct._IO_FILE*, %struct._IO_FILE** %sf.addr, align 8, !tbaa !1
  %call32 = call i32 @Read32BitsHighLow(%struct._IO_FILE* %26)
  %conv33 = sext i32 %call32 to i64
  store i64 %conv33, i64* %subSize, align 8, !tbaa !14
  %27 = load i64, i64* %subSize, align 8, !tbaa !14
  %28 = load i64, i64* %chunkSize, align 8, !tbaa !14
  %sub34 = sub nsw i64 %28, %27
  store i64 %sub34, i64* %chunkSize, align 8, !tbaa !14
  %29 = load %struct._IO_FILE*, %struct._IO_FILE** %sf.addr, align 8, !tbaa !1
  %call35 = call i32 @Read32BitsHighLow(%struct._IO_FILE* %29)
  %conv36 = sext i32 %call35 to i64
  %blkAlgn = getelementptr inbounds %struct.IFF_AIFF_struct, %struct.IFF_AIFF_struct* %aiff_info, i32 0, i32 5
  %offset = getelementptr inbounds %struct.blockAlign_struct, %struct.blockAlign_struct* %blkAlgn, i32 0, i32 0
  store i64 %conv36, i64* %offset, align 8, !tbaa !41
  %30 = load i64, i64* %subSize, align 8, !tbaa !14
  %sub37 = sub nsw i64 %30, 4
  store i64 %sub37, i64* %subSize, align 8, !tbaa !14
  %31 = load %struct._IO_FILE*, %struct._IO_FILE** %sf.addr, align 8, !tbaa !1
  %call38 = call i32 @Read32BitsHighLow(%struct._IO_FILE* %31)
  %conv39 = sext i32 %call38 to i64
  %blkAlgn40 = getelementptr inbounds %struct.IFF_AIFF_struct, %struct.IFF_AIFF_struct* %aiff_info, i32 0, i32 5
  %blockSize = getelementptr inbounds %struct.blockAlign_struct, %struct.blockAlign_struct* %blkAlgn40, i32 0, i32 1
  store i64 %conv39, i64* %blockSize, align 8, !tbaa !42
  %32 = load i64, i64* %subSize, align 8, !tbaa !14
  %sub41 = sub nsw i64 %32, 4
  store i64 %sub41, i64* %subSize, align 8, !tbaa !14
  %33 = load %struct._IO_FILE*, %struct._IO_FILE** %sf.addr, align 8, !tbaa !1
  %blkAlgn42 = getelementptr inbounds %struct.IFF_AIFF_struct, %struct.IFF_AIFF_struct* %aiff_info, i32 0, i32 5
  %offset43 = getelementptr inbounds %struct.blockAlign_struct, %struct.blockAlign_struct* %blkAlgn42, i32 0, i32 0
  %34 = load i64, i64* %offset43, align 8, !tbaa !41
  %call44 = call i32 @fskip(%struct._IO_FILE* %33, i64 %34, i32 1)
  %cmp45 = icmp ne i32 %call44, 0
  br i1 %cmp45, label %if.then.47, label %if.end.48

if.then.47:                                       ; preds = %if.then.31
  store i32 0, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.48:                                        ; preds = %if.then.31
  %sampleType = getelementptr inbounds %struct.IFF_AIFF_struct, %struct.IFF_AIFF_struct* %aiff_info, i32 0, i32 4
  store i64 1397968452, i64* %sampleType, align 8, !tbaa !43
  store i32 1, i32* %is_aiff, align 4, !tbaa !5
  store i32 3, i32* %cleanup.dest.slot
  br label %cleanup

if.else.49:                                       ; preds = %if.else
  %35 = load %struct._IO_FILE*, %struct._IO_FILE** %sf.addr, align 8, !tbaa !1
  %call50 = call i32 @Read32BitsHighLow(%struct._IO_FILE* %35)
  %conv51 = sext i32 %call50 to i64
  store i64 %conv51, i64* %subSize, align 8, !tbaa !14
  %36 = load i64, i64* %subSize, align 8, !tbaa !14
  %37 = load i64, i64* %chunkSize, align 8, !tbaa !14
  %sub52 = sub nsw i64 %37, %36
  store i64 %sub52, i64* %chunkSize, align 8, !tbaa !14
  %38 = load %struct._IO_FILE*, %struct._IO_FILE** %sf.addr, align 8, !tbaa !1
  %39 = load i64, i64* %subSize, align 8, !tbaa !14
  %call53 = call i32 @fskip(%struct._IO_FILE* %38, i64 %39, i32 1)
  %cmp54 = icmp ne i32 %call53, 0
  br i1 %cmp54, label %if.then.56, label %if.end.57

if.then.56:                                       ; preds = %if.else.49
  store i32 0, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.57:                                        ; preds = %if.else.49
  br label %if.end.58

if.end.58:                                        ; preds = %if.end.57
  br label %if.end.59

if.end.59:                                        ; preds = %if.end.58, %if.end.28
  store i32 0, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %if.end.59, %if.then.56, %if.end.48, %if.then.47, %if.then.27
  %40 = bitcast i32* %type to i8*
  call void @llvm.lifetime.end(i64 4, i8* %40) #1
  %cleanup.dest = load i32, i32* %cleanup.dest.slot
  switch i32 %cleanup.dest, label %cleanup.67 [
    i32 0, label %cleanup.cont
    i32 3, label %while.end
  ]

cleanup.cont:                                     ; preds = %cleanup
  br label %while.cond

while.end:                                        ; preds = %cleanup, %while.cond
  %41 = load i32, i32* %is_aiff, align 4, !tbaa !5
  %tobool = icmp ne i32 %41, 0
  br i1 %tobool, label %if.then.60, label %if.end.66

if.then.60:                                       ; preds = %while.end
  call void @aiff_check2(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.10, i32 0, i32 0), %struct.IFF_AIFF_struct* %aiff_info)
  %numChannels61 = getelementptr inbounds %struct.IFF_AIFF_struct, %struct.IFF_AIFF_struct* %aiff_info, i32 0, i32 0
  %42 = load i16, i16* %numChannels61, align 2, !tbaa !35
  %conv62 = sext i16 %42 to i32
  store i32 %conv62, i32* @num_channels, align 4, !tbaa !5
  %sampleRate63 = getelementptr inbounds %struct.IFF_AIFF_struct, %struct.IFF_AIFF_struct* %aiff_info, i32 0, i32 3
  %43 = load float, float* %sampleRate63, align 4, !tbaa !40
  %conv64 = fptosi float %43 to i32
  store i32 %conv64, i32* @samp_freq, align 4, !tbaa !5
  %numSampleFrames65 = getelementptr inbounds %struct.IFF_AIFF_struct, %struct.IFF_AIFF_struct* %aiff_info, i32 0, i32 1
  %44 = load i64, i64* %numSampleFrames65, align 8, !tbaa !38
  store i64 %44, i64* @num_samples, align 8, !tbaa !14
  br label %if.end.66

if.end.66:                                        ; preds = %if.then.60, %while.end
  %45 = load i32, i32* %is_aiff, align 4, !tbaa !5
  store i32 %45, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.67

cleanup.67:                                       ; preds = %if.end.66, %cleanup, %if.then
  %46 = bitcast %struct.IFF_AIFF_struct* %aiff_info to i8*
  call void @llvm.lifetime.end(i64 48, i8* %46) #1
  %47 = bitcast i64* %subSize to i8*
  call void @llvm.lifetime.end(i64 8, i8* %47) #1
  %48 = bitcast i64* %chunkSize to i8*
  call void @llvm.lifetime.end(i64 8, i8* %48) #1
  %49 = bitcast i32* %is_aiff to i8*
  call void @llvm.lifetime.end(i64 4, i8* %49) #1
  %50 = load i32, i32* %retval
  ret i32 %50
}

declare i32 @fseek(%struct._IO_FILE*, i64, i32) #2

; Function Attrs: nounwind
declare i32 @__xstat(i32, i8*, %struct.stat*) #4

; Function Attrs: nounwind
declare void @llvm.memset.p0i8.i64(i8* nocapture, i8, i64, i32, i1) #1

declare i32 @Read32Bits(%struct._IO_FILE*) #2

declare i32 @Read16BitsLowHigh(%struct._IO_FILE*) #2

; Function Attrs: nounwind uwtable
define internal void @wave_check(i8* %file_name, %struct.fmt_chunk_data_struct* %wave_info) #0 {
entry:
  %file_name.addr = alloca i8*, align 8
  %wave_info.addr = alloca %struct.fmt_chunk_data_struct*, align 8
  store i8* %file_name, i8** %file_name.addr, align 8, !tbaa !1
  store %struct.fmt_chunk_data_struct* %wave_info, %struct.fmt_chunk_data_struct** %wave_info.addr, align 8, !tbaa !1
  %0 = load %struct.fmt_chunk_data_struct*, %struct.fmt_chunk_data_struct** %wave_info.addr, align 8, !tbaa !1
  %bits_per_sample = getelementptr inbounds %struct.fmt_chunk_data_struct, %struct.fmt_chunk_data_struct* %0, i32 0, i32 5
  %1 = load i16, i16* %bits_per_sample, align 2, !tbaa !34
  %conv = zext i16 %1 to i32
  %cmp = icmp ne i32 %conv, 16
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %2 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !tbaa !1
  %3 = load %struct.fmt_chunk_data_struct*, %struct.fmt_chunk_data_struct** %wave_info.addr, align 8, !tbaa !1
  %bits_per_sample2 = getelementptr inbounds %struct.fmt_chunk_data_struct, %struct.fmt_chunk_data_struct* %3, i32 0, i32 5
  %4 = load i16, i16* %bits_per_sample2, align 2, !tbaa !34
  %conv3 = zext i16 %4 to i32
  %call = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %2, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.11, i32 0, i32 0), i32 %conv3)
  call void @exit(i32 1) #6
  unreachable

if.end:                                           ; preds = %entry
  ret void
}

declare i32 @Read16BitsHighLow(%struct._IO_FILE*) #2

declare double @ReadIeeeExtendedHighLow(%struct._IO_FILE*) #2

; Function Attrs: nounwind uwtable
define internal void @aiff_check2(i8* %file_name, %struct.IFF_AIFF_struct* %pcm_aiff_data) #0 {
entry:
  %file_name.addr = alloca i8*, align 8
  %pcm_aiff_data.addr = alloca %struct.IFF_AIFF_struct*, align 8
  store i8* %file_name, i8** %file_name.addr, align 8, !tbaa !1
  store %struct.IFF_AIFF_struct* %pcm_aiff_data, %struct.IFF_AIFF_struct** %pcm_aiff_data.addr, align 8, !tbaa !1
  %0 = load %struct.IFF_AIFF_struct*, %struct.IFF_AIFF_struct** %pcm_aiff_data.addr, align 8, !tbaa !1
  %sampleType = getelementptr inbounds %struct.IFF_AIFF_struct, %struct.IFF_AIFF_struct* %0, i32 0, i32 4
  %1 = load i64, i64* %sampleType, align 8, !tbaa !43
  %cmp = icmp ne i64 %1, 1397968452
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %2 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !tbaa !1
  %3 = load i8*, i8** %file_name.addr, align 8, !tbaa !1
  %call = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %2, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.12, i32 0, i32 0), i8* %3)
  call void @exit(i32 1) #6
  unreachable

if.end:                                           ; preds = %entry
  %4 = load %struct.IFF_AIFF_struct*, %struct.IFF_AIFF_struct** %pcm_aiff_data.addr, align 8, !tbaa !1
  %sampleSize = getelementptr inbounds %struct.IFF_AIFF_struct, %struct.IFF_AIFF_struct* %4, i32 0, i32 2
  %5 = load i16, i16* %sampleSize, align 2, !tbaa !39
  %conv = sext i16 %5 to i64
  %cmp1 = icmp ne i64 %conv, 16
  br i1 %cmp1, label %if.then.3, label %if.end.5

if.then.3:                                        ; preds = %if.end
  %6 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !tbaa !1
  %7 = load i8*, i8** %file_name.addr, align 8, !tbaa !1
  %call4 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %6, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.13, i32 0, i32 0), i32 16, i8* %7)
  call void @exit(i32 1) #6
  unreachable

if.end.5:                                         ; preds = %if.end
  %8 = load %struct.IFF_AIFF_struct*, %struct.IFF_AIFF_struct** %pcm_aiff_data.addr, align 8, !tbaa !1
  %numChannels = getelementptr inbounds %struct.IFF_AIFF_struct, %struct.IFF_AIFF_struct* %8, i32 0, i32 0
  %9 = load i16, i16* %numChannels, align 2, !tbaa !35
  %conv6 = sext i16 %9 to i32
  %cmp7 = icmp ne i32 %conv6, 1
  br i1 %cmp7, label %land.lhs.true, label %if.end.15

land.lhs.true:                                    ; preds = %if.end.5
  %10 = load %struct.IFF_AIFF_struct*, %struct.IFF_AIFF_struct** %pcm_aiff_data.addr, align 8, !tbaa !1
  %numChannels9 = getelementptr inbounds %struct.IFF_AIFF_struct, %struct.IFF_AIFF_struct* %10, i32 0, i32 0
  %11 = load i16, i16* %numChannels9, align 2, !tbaa !35
  %conv10 = sext i16 %11 to i32
  %cmp11 = icmp ne i32 %conv10, 2
  br i1 %cmp11, label %if.then.13, label %if.end.15

if.then.13:                                       ; preds = %land.lhs.true
  %12 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !tbaa !1
  %13 = load i8*, i8** %file_name.addr, align 8, !tbaa !1
  %call14 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %12, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.14, i32 0, i32 0), i8* %13)
  call void @exit(i32 1) #6
  unreachable

if.end.15:                                        ; preds = %land.lhs.true, %if.end.5
  %14 = load %struct.IFF_AIFF_struct*, %struct.IFF_AIFF_struct** %pcm_aiff_data.addr, align 8, !tbaa !1
  %blkAlgn = getelementptr inbounds %struct.IFF_AIFF_struct, %struct.IFF_AIFF_struct* %14, i32 0, i32 5
  %blockSize = getelementptr inbounds %struct.blockAlign_struct, %struct.blockAlign_struct* %blkAlgn, i32 0, i32 1
  %15 = load i64, i64* %blockSize, align 8, !tbaa !42
  %cmp16 = icmp ne i64 %15, 0
  br i1 %cmp16, label %if.then.18, label %if.end.20

if.then.18:                                       ; preds = %if.end.15
  %16 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !tbaa !1
  %17 = load i8*, i8** %file_name.addr, align 8, !tbaa !1
  %call19 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %16, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.15, i32 0, i32 0), i32 0, i8* %17)
  call void @exit(i32 1) #6
  unreachable

if.end.20:                                        ; preds = %if.end.15
  %18 = load %struct.IFF_AIFF_struct*, %struct.IFF_AIFF_struct** %pcm_aiff_data.addr, align 8, !tbaa !1
  %blkAlgn21 = getelementptr inbounds %struct.IFF_AIFF_struct, %struct.IFF_AIFF_struct* %18, i32 0, i32 5
  %offset = getelementptr inbounds %struct.blockAlign_struct, %struct.blockAlign_struct* %blkAlgn21, i32 0, i32 0
  %19 = load i64, i64* %offset, align 8, !tbaa !41
  %cmp22 = icmp ne i64 %19, 0
  br i1 %cmp22, label %if.then.24, label %if.end.26

if.then.24:                                       ; preds = %if.end.20
  %20 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !tbaa !1
  %21 = load i8*, i8** %file_name.addr, align 8, !tbaa !1
  %call25 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %20, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.16, i32 0, i32 0), i32 0, i8* %21)
  call void @exit(i32 1) #6
  unreachable

if.end.26:                                        ; preds = %if.end.20
  ret void
}

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { noreturn nounwind "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { nounwind "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #5 = { inlinehint nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #6 = { noreturn nounwind }

!llvm.ident = !{!0}

!0 = !{!"clang version 3.7.0 (tags/RELEASE_370/final)"}
!1 = !{!2, !2, i64 0}
!2 = !{!"any pointer", !3, i64 0}
!3 = !{!"omnipotent char", !4, i64 0}
!4 = !{!"Simple C/C++ TBAA"}
!5 = !{!6, !6, i64 0}
!6 = !{!"int", !3, i64 0}
!7 = !{!8, !2, i64 128}
!8 = !{!"", !9, i64 0, !6, i64 8, !6, i64 12, !6, i64 16, !6, i64 20, !6, i64 24, !6, i64 28, !6, i64 32, !6, i64 36, !6, i64 40, !6, i64 44, !6, i64 48, !6, i64 52, !6, i64 56, !6, i64 60, !6, i64 64, !6, i64 68, !6, i64 72, !6, i64 76, !6, i64 80, !6, i64 84, !6, i64 88, !6, i64 92, !6, i64 96, !6, i64 100, !6, i64 104, !6, i64 108, !6, i64 112, !6, i64 116, !3, i64 120, !6, i64 124, !2, i64 128, !2, i64 136, !6, i64 144, !6, i64 148, !10, i64 152, !6, i64 156, !6, i64 160, !6, i64 164, !9, i64 168, !9, i64 176, !6, i64 184, !6, i64 188, !6, i64 192, !6, i64 196, !6, i64 200, !6, i64 204, !6, i64 208, !6, i64 212, !10, i64 216, !6, i64 220, !6, i64 224, !6, i64 228, !10, i64 232, !10, i64 236, !10, i64 240, !10, i64 244, !6, i64 248, !6, i64 252, !6, i64 256, !6, i64 260, !6, i64 264, !6, i64 268, !6, i64 272, !6, i64 276}
!9 = !{!"long", !3, i64 0}
!10 = !{!"float", !3, i64 0}
!11 = !{!8, !6, i64 12}
!12 = !{!8, !6, i64 8}
!13 = !{!8, !9, i64 0}
!14 = !{!9, !9, i64 0}
!15 = !{!3, !3, i64 0}
!16 = !{!8, !3, i64 120}
!17 = !{!8, !6, i64 124}
!18 = !{!19, !9, i64 48}
!19 = !{!"stat", !9, i64 0, !9, i64 8, !9, i64 16, !6, i64 24, !6, i64 28, !6, i64 32, !6, i64 36, !9, i64 40, !9, i64 48, !9, i64 56, !9, i64 64, !20, i64 72, !20, i64 88, !20, i64 104, !3, i64 120}
!20 = !{!"timespec", !9, i64 0, !9, i64 8}
!21 = !{!10, !10, i64 0}
!22 = !{!8, !6, i64 204}
!23 = !{!8, !9, i64 176}
!24 = !{!8, !9, i64 168}
!25 = !{!8, !6, i64 200}
!26 = !{!27, !27, i64 0}
!27 = !{!"short", !3, i64 0}
!28 = !{!29, !27, i64 0}
!29 = !{!"fmt_chunk_data_struct", !27, i64 0, !27, i64 2, !9, i64 8, !9, i64 16, !27, i64 24, !27, i64 26}
!30 = !{!29, !27, i64 2}
!31 = !{!29, !9, i64 8}
!32 = !{!29, !9, i64 16}
!33 = !{!29, !27, i64 24}
!34 = !{!29, !27, i64 26}
!35 = !{!36, !27, i64 0}
!36 = !{!"IFF_AIFF_struct", !27, i64 0, !9, i64 8, !27, i64 16, !10, i64 20, !9, i64 24, !37, i64 32}
!37 = !{!"blockAlign_struct", !9, i64 0, !9, i64 8}
!38 = !{!36, !9, i64 8}
!39 = !{!36, !27, i64 16}
!40 = !{!36, !10, i64 20}
!41 = !{!36, !9, i64 32}
!42 = !{!36, !9, i64 40}
!43 = !{!36, !9, i64 24}
