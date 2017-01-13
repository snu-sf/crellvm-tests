; ModuleID = './MultiSource.Benchmarks.MiBench/22.consumer-lame.common.bc'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.parameter = type { i32, i32, i32, i32 }
%struct._IO_FILE = type { i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, %struct._IO_marker*, %struct._IO_FILE*, i32, i32, i64, i16, i8, [1 x i8], i8*, i64, i8*, i8*, i8*, i8*, i64, i32, [20 x i8] }
%struct._IO_marker = type { %struct._IO_marker*, %struct._IO_FILE*, i32 }
%struct.frame = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }

@param = global %struct.parameter { i32 1, i32 1, i32 0, i32 0 }, align 4
@tabsel_123 = global [2 x [3 x [16 x i32]]] [[3 x [16 x i32]] [[16 x i32] [i32 0, i32 32, i32 64, i32 96, i32 128, i32 160, i32 192, i32 224, i32 256, i32 288, i32 320, i32 352, i32 384, i32 416, i32 448, i32 0], [16 x i32] [i32 0, i32 32, i32 48, i32 56, i32 64, i32 80, i32 96, i32 112, i32 128, i32 160, i32 192, i32 224, i32 256, i32 320, i32 384, i32 0], [16 x i32] [i32 0, i32 32, i32 40, i32 48, i32 56, i32 64, i32 80, i32 96, i32 112, i32 128, i32 160, i32 192, i32 224, i32 256, i32 320, i32 0]], [3 x [16 x i32]] [[16 x i32] [i32 0, i32 32, i32 48, i32 56, i32 64, i32 80, i32 96, i32 112, i32 128, i32 144, i32 160, i32 176, i32 192, i32 224, i32 256, i32 0], [16 x i32] [i32 0, i32 8, i32 16, i32 24, i32 32, i32 40, i32 48, i32 56, i32 64, i32 80, i32 96, i32 112, i32 128, i32 144, i32 160, i32 0], [16 x i32] [i32 0, i32 8, i32 16, i32 24, i32 32, i32 40, i32 48, i32 56, i32 64, i32 80, i32 96, i32 112, i32 128, i32 144, i32 160, i32 0]]], align 16
@freqs = global [9 x i64] [i64 44100, i64 48000, i64 32000, i64 22050, i64 24000, i64 16000, i64 11025, i64 12000, i64 8000], align 16
@pcm_point = global i32 0, align 4
@stderr = external global %struct._IO_FILE*, align 8
@.str = private unnamed_addr constant [14 x i8] c"Stream error\0A\00", align 1
@.str.1 = private unnamed_addr constant [28 x i8] c"Free format not supported.\0A\00", align 1
@.str.2 = private unnamed_addr constant [24 x i8] c"layer=1 Not supported!\0A\00", align 1
@.str.3 = private unnamed_addr constant [24 x i8] c"layer=2 Not supported!\0A\00", align 1
@.str.4 = private unnamed_addr constant [28 x i8] c"Sorry, unknown layer type.\0A\00", align 1
@print_header.modes = internal global [4 x i8*] [i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.5, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.6, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.7, i32 0, i32 0), i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.8, i32 0, i32 0)], align 16
@.str.5 = private unnamed_addr constant [7 x i8] c"Stereo\00", align 1
@.str.6 = private unnamed_addr constant [13 x i8] c"Joint-Stereo\00", align 1
@.str.7 = private unnamed_addr constant [13 x i8] c"Dual-Channel\00", align 1
@.str.8 = private unnamed_addr constant [15 x i8] c"Single-Channel\00", align 1
@print_header.layers = internal global [4 x i8*] [i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.9, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.10, i32 0, i32 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.11, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.12, i32 0, i32 0)], align 16
@.str.9 = private unnamed_addr constant [8 x i8] c"Unknown\00", align 1
@.str.10 = private unnamed_addr constant [2 x i8] c"I\00", align 1
@.str.11 = private unnamed_addr constant [3 x i8] c"II\00", align 1
@.str.12 = private unnamed_addr constant [4 x i8] c"III\00", align 1
@.str.13 = private unnamed_addr constant [63 x i8] c"MPEG %s, Layer: %s, Freq: %ld, mode: %s, modext: %d, BPF : %d\0A\00", align 1
@.str.14 = private unnamed_addr constant [4 x i8] c"2.5\00", align 1
@.str.15 = private unnamed_addr constant [4 x i8] c"2.0\00", align 1
@.str.16 = private unnamed_addr constant [4 x i8] c"1.0\00", align 1
@.str.17 = private unnamed_addr constant [67 x i8] c"Channels: %d, copyright: %s, original: %s, CRC: %s, emphasis: %d.\0A\00", align 1
@.str.18 = private unnamed_addr constant [4 x i8] c"Yes\00", align 1
@.str.19 = private unnamed_addr constant [3 x i8] c"No\00", align 1
@.str.20 = private unnamed_addr constant [42 x i8] c"Bitrate: %d Kbits/s, Extension value: %d\0A\00", align 1
@print_header_compact.modes = internal global [4 x i8*] [i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.21, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.22, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.23, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.24, i32 0, i32 0)], align 16
@.str.21 = private unnamed_addr constant [7 x i8] c"stereo\00", align 1
@.str.22 = private unnamed_addr constant [13 x i8] c"joint-stereo\00", align 1
@.str.23 = private unnamed_addr constant [13 x i8] c"dual-channel\00", align 1
@.str.24 = private unnamed_addr constant [5 x i8] c"mono\00", align 1
@print_header_compact.layers = internal global [4 x i8*] [i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.9, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.10, i32 0, i32 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.11, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.12, i32 0, i32 0)], align 16
@.str.25 = private unnamed_addr constant [40 x i8] c"MPEG %s layer %s, %d kbit/s, %ld Hz %s\0A\00", align 1
@wordpointer = common global i8* null, align 8
@bitindex = common global i32 0, align 4
@pcm_sample = common global i8* null, align 8

; Function Attrs: nounwind uwtable
define i32 @decode_header(%struct.frame* %fr, i64 %newhead) #0 {
entry:
  %retval = alloca i32, align 4
  %fr.addr = alloca %struct.frame*, align 8
  %newhead.addr = alloca i64, align 8
  store %struct.frame* %fr, %struct.frame** %fr.addr, align 8, !tbaa !1
  store i64 %newhead, i64* %newhead.addr, align 8, !tbaa !5
  %0 = load i64, i64* %newhead.addr, align 8, !tbaa !5
  %and = and i64 %0, 1048576
  %tobool = icmp ne i64 %and, 0
  br i1 %tobool, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %1 = load i64, i64* %newhead.addr, align 8, !tbaa !5
  %and1 = and i64 %1, 524288
  %tobool2 = icmp ne i64 %and1, 0
  %cond = select i1 %tobool2, i32 0, i32 1
  %2 = load %struct.frame*, %struct.frame** %fr.addr, align 8, !tbaa !1
  %lsf = getelementptr inbounds %struct.frame, %struct.frame* %2, i32 0, i32 3
  store i32 %cond, i32* %lsf, align 4, !tbaa !7
  %3 = load %struct.frame*, %struct.frame** %fr.addr, align 8, !tbaa !1
  %mpeg25 = getelementptr inbounds %struct.frame, %struct.frame* %3, i32 0, i32 4
  store i32 0, i32* %mpeg25, align 4, !tbaa !10
  br label %if.end

if.else:                                          ; preds = %entry
  %4 = load %struct.frame*, %struct.frame** %fr.addr, align 8, !tbaa !1
  %lsf3 = getelementptr inbounds %struct.frame, %struct.frame* %4, i32 0, i32 3
  store i32 1, i32* %lsf3, align 4, !tbaa !7
  %5 = load %struct.frame*, %struct.frame** %fr.addr, align 8, !tbaa !1
  %mpeg254 = getelementptr inbounds %struct.frame, %struct.frame* %5, i32 0, i32 4
  store i32 1, i32* %mpeg254, align 4, !tbaa !10
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %6 = load i64, i64* %newhead.addr, align 8, !tbaa !5
  %shr = lshr i64 %6, 17
  %and5 = and i64 %shr, 3
  %sub = sub i64 4, %and5
  %conv = trunc i64 %sub to i32
  %7 = load %struct.frame*, %struct.frame** %fr.addr, align 8, !tbaa !1
  %lay = getelementptr inbounds %struct.frame, %struct.frame* %7, i32 0, i32 6
  store i32 %conv, i32* %lay, align 4, !tbaa !11
  %8 = load i64, i64* %newhead.addr, align 8, !tbaa !5
  %shr6 = lshr i64 %8, 10
  %and7 = and i64 %shr6, 3
  %cmp = icmp eq i64 %and7, 3
  br i1 %cmp, label %if.then.9, label %if.end.10

if.then.9:                                        ; preds = %if.end
  %9 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !tbaa !1
  %call = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %9, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i32 0, i32 0))
  call void @exit(i32 1) #4
  unreachable

if.end.10:                                        ; preds = %if.end
  %10 = load %struct.frame*, %struct.frame** %fr.addr, align 8, !tbaa !1
  %mpeg2511 = getelementptr inbounds %struct.frame, %struct.frame* %10, i32 0, i32 4
  %11 = load i32, i32* %mpeg2511, align 4, !tbaa !10
  %tobool12 = icmp ne i32 %11, 0
  br i1 %tobool12, label %if.then.13, label %if.else.17

if.then.13:                                       ; preds = %if.end.10
  %12 = load i64, i64* %newhead.addr, align 8, !tbaa !5
  %shr14 = lshr i64 %12, 10
  %and15 = and i64 %shr14, 3
  %add = add i64 6, %and15
  %conv16 = trunc i64 %add to i32
  %13 = load %struct.frame*, %struct.frame** %fr.addr, align 8, !tbaa !1
  %sampling_frequency = getelementptr inbounds %struct.frame, %struct.frame* %13, i32 0, i32 9
  store i32 %conv16, i32* %sampling_frequency, align 4, !tbaa !12
  br label %if.end.25

if.else.17:                                       ; preds = %if.end.10
  %14 = load i64, i64* %newhead.addr, align 8, !tbaa !5
  %shr18 = lshr i64 %14, 10
  %and19 = and i64 %shr18, 3
  %15 = load %struct.frame*, %struct.frame** %fr.addr, align 8, !tbaa !1
  %lsf20 = getelementptr inbounds %struct.frame, %struct.frame* %15, i32 0, i32 3
  %16 = load i32, i32* %lsf20, align 4, !tbaa !7
  %mul = mul nsw i32 %16, 3
  %conv21 = sext i32 %mul to i64
  %add22 = add i64 %and19, %conv21
  %conv23 = trunc i64 %add22 to i32
  %17 = load %struct.frame*, %struct.frame** %fr.addr, align 8, !tbaa !1
  %sampling_frequency24 = getelementptr inbounds %struct.frame, %struct.frame* %17, i32 0, i32 9
  store i32 %conv23, i32* %sampling_frequency24, align 4, !tbaa !12
  br label %if.end.25

if.end.25:                                        ; preds = %if.else.17, %if.then.13
  %18 = load i64, i64* %newhead.addr, align 8, !tbaa !5
  %shr26 = lshr i64 %18, 16
  %and27 = and i64 %shr26, 1
  %xor = xor i64 %and27, 1
  %conv28 = trunc i64 %xor to i32
  %19 = load %struct.frame*, %struct.frame** %fr.addr, align 8, !tbaa !1
  %error_protection = getelementptr inbounds %struct.frame, %struct.frame* %19, i32 0, i32 7
  store i32 %conv28, i32* %error_protection, align 4, !tbaa !13
  %20 = load %struct.frame*, %struct.frame** %fr.addr, align 8, !tbaa !1
  %mpeg2529 = getelementptr inbounds %struct.frame, %struct.frame* %20, i32 0, i32 4
  %21 = load i32, i32* %mpeg2529, align 4, !tbaa !10
  %tobool30 = icmp ne i32 %21, 0
  br i1 %tobool30, label %if.then.31, label %if.end.35

if.then.31:                                       ; preds = %if.end.25
  %22 = load i64, i64* %newhead.addr, align 8, !tbaa !5
  %shr32 = lshr i64 %22, 12
  %and33 = and i64 %shr32, 15
  %conv34 = trunc i64 %and33 to i32
  %23 = load %struct.frame*, %struct.frame** %fr.addr, align 8, !tbaa !1
  %bitrate_index = getelementptr inbounds %struct.frame, %struct.frame* %23, i32 0, i32 8
  store i32 %conv34, i32* %bitrate_index, align 4, !tbaa !14
  br label %if.end.35

if.end.35:                                        ; preds = %if.then.31, %if.end.25
  %24 = load i64, i64* %newhead.addr, align 8, !tbaa !5
  %shr36 = lshr i64 %24, 12
  %and37 = and i64 %shr36, 15
  %conv38 = trunc i64 %and37 to i32
  %25 = load %struct.frame*, %struct.frame** %fr.addr, align 8, !tbaa !1
  %bitrate_index39 = getelementptr inbounds %struct.frame, %struct.frame* %25, i32 0, i32 8
  store i32 %conv38, i32* %bitrate_index39, align 4, !tbaa !14
  %26 = load i64, i64* %newhead.addr, align 8, !tbaa !5
  %shr40 = lshr i64 %26, 9
  %and41 = and i64 %shr40, 1
  %conv42 = trunc i64 %and41 to i32
  %27 = load %struct.frame*, %struct.frame** %fr.addr, align 8, !tbaa !1
  %padding = getelementptr inbounds %struct.frame, %struct.frame* %27, i32 0, i32 10
  store i32 %conv42, i32* %padding, align 4, !tbaa !15
  %28 = load i64, i64* %newhead.addr, align 8, !tbaa !5
  %shr43 = lshr i64 %28, 8
  %and44 = and i64 %shr43, 1
  %conv45 = trunc i64 %and44 to i32
  %29 = load %struct.frame*, %struct.frame** %fr.addr, align 8, !tbaa !1
  %extension = getelementptr inbounds %struct.frame, %struct.frame* %29, i32 0, i32 11
  store i32 %conv45, i32* %extension, align 4, !tbaa !16
  %30 = load i64, i64* %newhead.addr, align 8, !tbaa !5
  %shr46 = lshr i64 %30, 6
  %and47 = and i64 %shr46, 3
  %conv48 = trunc i64 %and47 to i32
  %31 = load %struct.frame*, %struct.frame** %fr.addr, align 8, !tbaa !1
  %mode = getelementptr inbounds %struct.frame, %struct.frame* %31, i32 0, i32 12
  store i32 %conv48, i32* %mode, align 4, !tbaa !17
  %32 = load i64, i64* %newhead.addr, align 8, !tbaa !5
  %shr49 = lshr i64 %32, 4
  %and50 = and i64 %shr49, 3
  %conv51 = trunc i64 %and50 to i32
  %33 = load %struct.frame*, %struct.frame** %fr.addr, align 8, !tbaa !1
  %mode_ext = getelementptr inbounds %struct.frame, %struct.frame* %33, i32 0, i32 13
  store i32 %conv51, i32* %mode_ext, align 4, !tbaa !18
  %34 = load i64, i64* %newhead.addr, align 8, !tbaa !5
  %shr52 = lshr i64 %34, 3
  %and53 = and i64 %shr52, 1
  %conv54 = trunc i64 %and53 to i32
  %35 = load %struct.frame*, %struct.frame** %fr.addr, align 8, !tbaa !1
  %copyright = getelementptr inbounds %struct.frame, %struct.frame* %35, i32 0, i32 14
  store i32 %conv54, i32* %copyright, align 4, !tbaa !19
  %36 = load i64, i64* %newhead.addr, align 8, !tbaa !5
  %shr55 = lshr i64 %36, 2
  %and56 = and i64 %shr55, 1
  %conv57 = trunc i64 %and56 to i32
  %37 = load %struct.frame*, %struct.frame** %fr.addr, align 8, !tbaa !1
  %original = getelementptr inbounds %struct.frame, %struct.frame* %37, i32 0, i32 15
  store i32 %conv57, i32* %original, align 4, !tbaa !20
  %38 = load i64, i64* %newhead.addr, align 8, !tbaa !5
  %and58 = and i64 %38, 3
  %conv59 = trunc i64 %and58 to i32
  %39 = load %struct.frame*, %struct.frame** %fr.addr, align 8, !tbaa !1
  %emphasis = getelementptr inbounds %struct.frame, %struct.frame* %39, i32 0, i32 16
  store i32 %conv59, i32* %emphasis, align 4, !tbaa !21
  %40 = load %struct.frame*, %struct.frame** %fr.addr, align 8, !tbaa !1
  %mode60 = getelementptr inbounds %struct.frame, %struct.frame* %40, i32 0, i32 12
  %41 = load i32, i32* %mode60, align 4, !tbaa !17
  %cmp61 = icmp eq i32 %41, 3
  %cond63 = select i1 %cmp61, i32 1, i32 2
  %42 = load %struct.frame*, %struct.frame** %fr.addr, align 8, !tbaa !1
  %stereo = getelementptr inbounds %struct.frame, %struct.frame* %42, i32 0, i32 0
  store i32 %cond63, i32* %stereo, align 4, !tbaa !22
  %43 = load %struct.frame*, %struct.frame** %fr.addr, align 8, !tbaa !1
  %bitrate_index64 = getelementptr inbounds %struct.frame, %struct.frame* %43, i32 0, i32 8
  %44 = load i32, i32* %bitrate_index64, align 4, !tbaa !14
  %tobool65 = icmp ne i32 %44, 0
  br i1 %tobool65, label %if.end.68, label %if.then.66

if.then.66:                                       ; preds = %if.end.35
  %45 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !tbaa !1
  %call67 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %45, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.1, i32 0, i32 0))
  store i32 0, i32* %retval
  br label %return

if.end.68:                                        ; preds = %if.end.35
  %46 = load %struct.frame*, %struct.frame** %fr.addr, align 8, !tbaa !1
  %lay69 = getelementptr inbounds %struct.frame, %struct.frame* %46, i32 0, i32 6
  %47 = load i32, i32* %lay69, align 4, !tbaa !11
  switch i32 %47, label %sw.default [
    i32 1, label %sw.bb
    i32 2, label %sw.bb.71
    i32 3, label %sw.bb.73
  ]

sw.bb:                                            ; preds = %if.end.68
  %48 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !tbaa !1
  %call70 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %48, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.2, i32 0, i32 0))
  br label %sw.epilog

sw.bb.71:                                         ; preds = %if.end.68
  %49 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !tbaa !1
  %call72 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %49, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.3, i32 0, i32 0))
  br label %sw.epilog

sw.bb.73:                                         ; preds = %if.end.68
  %50 = load %struct.frame*, %struct.frame** %fr.addr, align 8, !tbaa !1
  %bitrate_index74 = getelementptr inbounds %struct.frame, %struct.frame* %50, i32 0, i32 8
  %51 = load i32, i32* %bitrate_index74, align 4, !tbaa !14
  %idxprom = sext i32 %51 to i64
  %52 = load %struct.frame*, %struct.frame** %fr.addr, align 8, !tbaa !1
  %lsf75 = getelementptr inbounds %struct.frame, %struct.frame* %52, i32 0, i32 3
  %53 = load i32, i32* %lsf75, align 4, !tbaa !7
  %idxprom76 = sext i32 %53 to i64
  %arrayidx = getelementptr inbounds [2 x [3 x [16 x i32]]], [2 x [3 x [16 x i32]]]* @tabsel_123, i32 0, i64 %idxprom76
  %arrayidx77 = getelementptr inbounds [3 x [16 x i32]], [3 x [16 x i32]]* %arrayidx, i32 0, i64 2
  %arrayidx78 = getelementptr inbounds [16 x i32], [16 x i32]* %arrayidx77, i32 0, i64 %idxprom
  %54 = load i32, i32* %arrayidx78, align 4, !tbaa !23
  %conv79 = sext i32 %54 to i64
  %mul80 = mul nsw i64 %conv79, 144000
  %conv81 = trunc i64 %mul80 to i32
  %55 = load %struct.frame*, %struct.frame** %fr.addr, align 8, !tbaa !1
  %framesize = getelementptr inbounds %struct.frame, %struct.frame* %55, i32 0, i32 17
  store i32 %conv81, i32* %framesize, align 4, !tbaa !24
  %56 = load %struct.frame*, %struct.frame** %fr.addr, align 8, !tbaa !1
  %sampling_frequency82 = getelementptr inbounds %struct.frame, %struct.frame* %56, i32 0, i32 9
  %57 = load i32, i32* %sampling_frequency82, align 4, !tbaa !12
  %idxprom83 = sext i32 %57 to i64
  %arrayidx84 = getelementptr inbounds [9 x i64], [9 x i64]* @freqs, i32 0, i64 %idxprom83
  %58 = load i64, i64* %arrayidx84, align 8, !tbaa !5
  %59 = load %struct.frame*, %struct.frame** %fr.addr, align 8, !tbaa !1
  %lsf85 = getelementptr inbounds %struct.frame, %struct.frame* %59, i32 0, i32 3
  %60 = load i32, i32* %lsf85, align 4, !tbaa !7
  %sh_prom = zext i32 %60 to i64
  %shl = shl i64 %58, %sh_prom
  %61 = load %struct.frame*, %struct.frame** %fr.addr, align 8, !tbaa !1
  %framesize86 = getelementptr inbounds %struct.frame, %struct.frame* %61, i32 0, i32 17
  %62 = load i32, i32* %framesize86, align 4, !tbaa !24
  %conv87 = sext i32 %62 to i64
  %div = sdiv i64 %conv87, %shl
  %conv88 = trunc i64 %div to i32
  store i32 %conv88, i32* %framesize86, align 4, !tbaa !24
  %63 = load %struct.frame*, %struct.frame** %fr.addr, align 8, !tbaa !1
  %framesize89 = getelementptr inbounds %struct.frame, %struct.frame* %63, i32 0, i32 17
  %64 = load i32, i32* %framesize89, align 4, !tbaa !24
  %65 = load %struct.frame*, %struct.frame** %fr.addr, align 8, !tbaa !1
  %padding90 = getelementptr inbounds %struct.frame, %struct.frame* %65, i32 0, i32 10
  %66 = load i32, i32* %padding90, align 4, !tbaa !15
  %add91 = add nsw i32 %64, %66
  %sub92 = sub nsw i32 %add91, 4
  %67 = load %struct.frame*, %struct.frame** %fr.addr, align 8, !tbaa !1
  %framesize93 = getelementptr inbounds %struct.frame, %struct.frame* %67, i32 0, i32 17
  store i32 %sub92, i32* %framesize93, align 4, !tbaa !24
  br label %sw.epilog

sw.default:                                       ; preds = %if.end.68
  %68 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !tbaa !1
  %call94 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %68, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.4, i32 0, i32 0))
  store i32 0, i32* %retval
  br label %return

sw.epilog:                                        ; preds = %sw.bb.73, %sw.bb.71, %sw.bb
  store i32 1, i32* %retval
  br label %return

return:                                           ; preds = %sw.epilog, %sw.default, %if.then.66
  %69 = load i32, i32* %retval
  ret i32 %69
}

declare i32 @fprintf(%struct._IO_FILE*, i8*, ...) #1

; Function Attrs: noreturn nounwind
declare void @exit(i32) #2

; Function Attrs: nounwind uwtable
define void @print_header(%struct.frame* %fr) #0 {
entry:
  %fr.addr = alloca %struct.frame*, align 8
  store %struct.frame* %fr, %struct.frame** %fr.addr, align 8, !tbaa !1
  %0 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !tbaa !1
  %1 = load %struct.frame*, %struct.frame** %fr.addr, align 8, !tbaa !1
  %mpeg25 = getelementptr inbounds %struct.frame, %struct.frame* %1, i32 0, i32 4
  %2 = load i32, i32* %mpeg25, align 4, !tbaa !10
  %tobool = icmp ne i32 %2, 0
  br i1 %tobool, label %cond.true, label %cond.false

cond.true:                                        ; preds = %entry
  br label %cond.end

cond.false:                                       ; preds = %entry
  %3 = load %struct.frame*, %struct.frame** %fr.addr, align 8, !tbaa !1
  %lsf = getelementptr inbounds %struct.frame, %struct.frame* %3, i32 0, i32 3
  %4 = load i32, i32* %lsf, align 4, !tbaa !7
  %tobool1 = icmp ne i32 %4, 0
  %cond = select i1 %tobool1, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.15, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.16, i32 0, i32 0)
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond2 = phi i8* [ getelementptr inbounds ([4 x i8], [4 x i8]* @.str.14, i32 0, i32 0), %cond.true ], [ %cond, %cond.false ]
  %5 = load %struct.frame*, %struct.frame** %fr.addr, align 8, !tbaa !1
  %lay = getelementptr inbounds %struct.frame, %struct.frame* %5, i32 0, i32 6
  %6 = load i32, i32* %lay, align 4, !tbaa !11
  %idxprom = sext i32 %6 to i64
  %arrayidx = getelementptr inbounds [4 x i8*], [4 x i8*]* @print_header.layers, i32 0, i64 %idxprom
  %7 = load i8*, i8** %arrayidx, align 8, !tbaa !1
  %8 = load %struct.frame*, %struct.frame** %fr.addr, align 8, !tbaa !1
  %sampling_frequency = getelementptr inbounds %struct.frame, %struct.frame* %8, i32 0, i32 9
  %9 = load i32, i32* %sampling_frequency, align 4, !tbaa !12
  %idxprom3 = sext i32 %9 to i64
  %arrayidx4 = getelementptr inbounds [9 x i64], [9 x i64]* @freqs, i32 0, i64 %idxprom3
  %10 = load i64, i64* %arrayidx4, align 8, !tbaa !5
  %11 = load %struct.frame*, %struct.frame** %fr.addr, align 8, !tbaa !1
  %mode = getelementptr inbounds %struct.frame, %struct.frame* %11, i32 0, i32 12
  %12 = load i32, i32* %mode, align 4, !tbaa !17
  %idxprom5 = sext i32 %12 to i64
  %arrayidx6 = getelementptr inbounds [4 x i8*], [4 x i8*]* @print_header.modes, i32 0, i64 %idxprom5
  %13 = load i8*, i8** %arrayidx6, align 8, !tbaa !1
  %14 = load %struct.frame*, %struct.frame** %fr.addr, align 8, !tbaa !1
  %mode_ext = getelementptr inbounds %struct.frame, %struct.frame* %14, i32 0, i32 13
  %15 = load i32, i32* %mode_ext, align 4, !tbaa !18
  %16 = load %struct.frame*, %struct.frame** %fr.addr, align 8, !tbaa !1
  %framesize = getelementptr inbounds %struct.frame, %struct.frame* %16, i32 0, i32 17
  %17 = load i32, i32* %framesize, align 4, !tbaa !24
  %add = add nsw i32 %17, 4
  %call = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %0, i8* getelementptr inbounds ([63 x i8], [63 x i8]* @.str.13, i32 0, i32 0), i8* %cond2, i8* %7, i64 %10, i8* %13, i32 %15, i32 %add)
  %18 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !tbaa !1
  %19 = load %struct.frame*, %struct.frame** %fr.addr, align 8, !tbaa !1
  %stereo = getelementptr inbounds %struct.frame, %struct.frame* %19, i32 0, i32 0
  %20 = load i32, i32* %stereo, align 4, !tbaa !22
  %21 = load %struct.frame*, %struct.frame** %fr.addr, align 8, !tbaa !1
  %copyright = getelementptr inbounds %struct.frame, %struct.frame* %21, i32 0, i32 14
  %22 = load i32, i32* %copyright, align 4, !tbaa !19
  %tobool7 = icmp ne i32 %22, 0
  %cond8 = select i1 %tobool7, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.18, i32 0, i32 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.19, i32 0, i32 0)
  %23 = load %struct.frame*, %struct.frame** %fr.addr, align 8, !tbaa !1
  %original = getelementptr inbounds %struct.frame, %struct.frame* %23, i32 0, i32 15
  %24 = load i32, i32* %original, align 4, !tbaa !20
  %tobool9 = icmp ne i32 %24, 0
  %cond10 = select i1 %tobool9, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.18, i32 0, i32 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.19, i32 0, i32 0)
  %25 = load %struct.frame*, %struct.frame** %fr.addr, align 8, !tbaa !1
  %error_protection = getelementptr inbounds %struct.frame, %struct.frame* %25, i32 0, i32 7
  %26 = load i32, i32* %error_protection, align 4, !tbaa !13
  %tobool11 = icmp ne i32 %26, 0
  %cond12 = select i1 %tobool11, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.18, i32 0, i32 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.19, i32 0, i32 0)
  %27 = load %struct.frame*, %struct.frame** %fr.addr, align 8, !tbaa !1
  %emphasis = getelementptr inbounds %struct.frame, %struct.frame* %27, i32 0, i32 16
  %28 = load i32, i32* %emphasis, align 4, !tbaa !21
  %call13 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %18, i8* getelementptr inbounds ([67 x i8], [67 x i8]* @.str.17, i32 0, i32 0), i32 %20, i8* %cond8, i8* %cond10, i8* %cond12, i32 %28)
  %29 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !tbaa !1
  %30 = load %struct.frame*, %struct.frame** %fr.addr, align 8, !tbaa !1
  %bitrate_index = getelementptr inbounds %struct.frame, %struct.frame* %30, i32 0, i32 8
  %31 = load i32, i32* %bitrate_index, align 4, !tbaa !14
  %idxprom14 = sext i32 %31 to i64
  %32 = load %struct.frame*, %struct.frame** %fr.addr, align 8, !tbaa !1
  %lay15 = getelementptr inbounds %struct.frame, %struct.frame* %32, i32 0, i32 6
  %33 = load i32, i32* %lay15, align 4, !tbaa !11
  %sub = sub nsw i32 %33, 1
  %idxprom16 = sext i32 %sub to i64
  %34 = load %struct.frame*, %struct.frame** %fr.addr, align 8, !tbaa !1
  %lsf17 = getelementptr inbounds %struct.frame, %struct.frame* %34, i32 0, i32 3
  %35 = load i32, i32* %lsf17, align 4, !tbaa !7
  %idxprom18 = sext i32 %35 to i64
  %arrayidx19 = getelementptr inbounds [2 x [3 x [16 x i32]]], [2 x [3 x [16 x i32]]]* @tabsel_123, i32 0, i64 %idxprom18
  %arrayidx20 = getelementptr inbounds [3 x [16 x i32]], [3 x [16 x i32]]* %arrayidx19, i32 0, i64 %idxprom16
  %arrayidx21 = getelementptr inbounds [16 x i32], [16 x i32]* %arrayidx20, i32 0, i64 %idxprom14
  %36 = load i32, i32* %arrayidx21, align 4, !tbaa !23
  %37 = load %struct.frame*, %struct.frame** %fr.addr, align 8, !tbaa !1
  %extension = getelementptr inbounds %struct.frame, %struct.frame* %37, i32 0, i32 11
  %38 = load i32, i32* %extension, align 4, !tbaa !16
  %call22 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %29, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.20, i32 0, i32 0), i32 %36, i32 %38)
  ret void
}

; Function Attrs: nounwind uwtable
define void @print_header_compact(%struct.frame* %fr) #0 {
entry:
  %fr.addr = alloca %struct.frame*, align 8
  store %struct.frame* %fr, %struct.frame** %fr.addr, align 8, !tbaa !1
  %0 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !tbaa !1
  %1 = load %struct.frame*, %struct.frame** %fr.addr, align 8, !tbaa !1
  %mpeg25 = getelementptr inbounds %struct.frame, %struct.frame* %1, i32 0, i32 4
  %2 = load i32, i32* %mpeg25, align 4, !tbaa !10
  %tobool = icmp ne i32 %2, 0
  br i1 %tobool, label %cond.true, label %cond.false

cond.true:                                        ; preds = %entry
  br label %cond.end

cond.false:                                       ; preds = %entry
  %3 = load %struct.frame*, %struct.frame** %fr.addr, align 8, !tbaa !1
  %lsf = getelementptr inbounds %struct.frame, %struct.frame* %3, i32 0, i32 3
  %4 = load i32, i32* %lsf, align 4, !tbaa !7
  %tobool1 = icmp ne i32 %4, 0
  %cond = select i1 %tobool1, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.15, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.16, i32 0, i32 0)
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond2 = phi i8* [ getelementptr inbounds ([4 x i8], [4 x i8]* @.str.14, i32 0, i32 0), %cond.true ], [ %cond, %cond.false ]
  %5 = load %struct.frame*, %struct.frame** %fr.addr, align 8, !tbaa !1
  %lay = getelementptr inbounds %struct.frame, %struct.frame* %5, i32 0, i32 6
  %6 = load i32, i32* %lay, align 4, !tbaa !11
  %idxprom = sext i32 %6 to i64
  %arrayidx = getelementptr inbounds [4 x i8*], [4 x i8*]* @print_header_compact.layers, i32 0, i64 %idxprom
  %7 = load i8*, i8** %arrayidx, align 8, !tbaa !1
  %8 = load %struct.frame*, %struct.frame** %fr.addr, align 8, !tbaa !1
  %bitrate_index = getelementptr inbounds %struct.frame, %struct.frame* %8, i32 0, i32 8
  %9 = load i32, i32* %bitrate_index, align 4, !tbaa !14
  %idxprom3 = sext i32 %9 to i64
  %10 = load %struct.frame*, %struct.frame** %fr.addr, align 8, !tbaa !1
  %lay4 = getelementptr inbounds %struct.frame, %struct.frame* %10, i32 0, i32 6
  %11 = load i32, i32* %lay4, align 4, !tbaa !11
  %sub = sub nsw i32 %11, 1
  %idxprom5 = sext i32 %sub to i64
  %12 = load %struct.frame*, %struct.frame** %fr.addr, align 8, !tbaa !1
  %lsf6 = getelementptr inbounds %struct.frame, %struct.frame* %12, i32 0, i32 3
  %13 = load i32, i32* %lsf6, align 4, !tbaa !7
  %idxprom7 = sext i32 %13 to i64
  %arrayidx8 = getelementptr inbounds [2 x [3 x [16 x i32]]], [2 x [3 x [16 x i32]]]* @tabsel_123, i32 0, i64 %idxprom7
  %arrayidx9 = getelementptr inbounds [3 x [16 x i32]], [3 x [16 x i32]]* %arrayidx8, i32 0, i64 %idxprom5
  %arrayidx10 = getelementptr inbounds [16 x i32], [16 x i32]* %arrayidx9, i32 0, i64 %idxprom3
  %14 = load i32, i32* %arrayidx10, align 4, !tbaa !23
  %15 = load %struct.frame*, %struct.frame** %fr.addr, align 8, !tbaa !1
  %sampling_frequency = getelementptr inbounds %struct.frame, %struct.frame* %15, i32 0, i32 9
  %16 = load i32, i32* %sampling_frequency, align 4, !tbaa !12
  %idxprom11 = sext i32 %16 to i64
  %arrayidx12 = getelementptr inbounds [9 x i64], [9 x i64]* @freqs, i32 0, i64 %idxprom11
  %17 = load i64, i64* %arrayidx12, align 8, !tbaa !5
  %18 = load %struct.frame*, %struct.frame** %fr.addr, align 8, !tbaa !1
  %mode = getelementptr inbounds %struct.frame, %struct.frame* %18, i32 0, i32 12
  %19 = load i32, i32* %mode, align 4, !tbaa !17
  %idxprom13 = sext i32 %19 to i64
  %arrayidx14 = getelementptr inbounds [4 x i8*], [4 x i8*]* @print_header_compact.modes, i32 0, i64 %idxprom13
  %20 = load i8*, i8** %arrayidx14, align 8, !tbaa !1
  %call = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %0, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.25, i32 0, i32 0), i8* %cond2, i8* %7, i32 %14, i64 %17, i8* %20)
  ret void
}

; Function Attrs: nounwind uwtable
define i32 @getbits(i32 %number_of_bits) #0 {
entry:
  %retval = alloca i32, align 4
  %number_of_bits.addr = alloca i32, align 4
  %rval = alloca i64, align 8
  %cleanup.dest.slot = alloca i32
  store i32 %number_of_bits, i32* %number_of_bits.addr, align 4, !tbaa !23
  %0 = bitcast i64* %rval to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #3
  %1 = load i32, i32* %number_of_bits.addr, align 4, !tbaa !23
  %tobool = icmp ne i32 %1, 0
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  store i32 0, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end:                                           ; preds = %entry
  %2 = load i8*, i8** @wordpointer, align 8, !tbaa !1
  %arrayidx = getelementptr inbounds i8, i8* %2, i64 0
  %3 = load i8, i8* %arrayidx, align 1, !tbaa !25
  %conv = zext i8 %3 to i64
  store i64 %conv, i64* %rval, align 8, !tbaa !5
  %4 = load i64, i64* %rval, align 8, !tbaa !5
  %shl = shl i64 %4, 8
  store i64 %shl, i64* %rval, align 8, !tbaa !5
  %5 = load i8*, i8** @wordpointer, align 8, !tbaa !1
  %arrayidx1 = getelementptr inbounds i8, i8* %5, i64 1
  %6 = load i8, i8* %arrayidx1, align 1, !tbaa !25
  %conv2 = zext i8 %6 to i64
  %7 = load i64, i64* %rval, align 8, !tbaa !5
  %or = or i64 %7, %conv2
  store i64 %or, i64* %rval, align 8, !tbaa !5
  %8 = load i64, i64* %rval, align 8, !tbaa !5
  %shl3 = shl i64 %8, 8
  store i64 %shl3, i64* %rval, align 8, !tbaa !5
  %9 = load i8*, i8** @wordpointer, align 8, !tbaa !1
  %arrayidx4 = getelementptr inbounds i8, i8* %9, i64 2
  %10 = load i8, i8* %arrayidx4, align 1, !tbaa !25
  %conv5 = zext i8 %10 to i64
  %11 = load i64, i64* %rval, align 8, !tbaa !5
  %or6 = or i64 %11, %conv5
  store i64 %or6, i64* %rval, align 8, !tbaa !5
  %12 = load i32, i32* @bitindex, align 4, !tbaa !23
  %13 = load i64, i64* %rval, align 8, !tbaa !5
  %sh_prom = zext i32 %12 to i64
  %shl7 = shl i64 %13, %sh_prom
  store i64 %shl7, i64* %rval, align 8, !tbaa !5
  %14 = load i64, i64* %rval, align 8, !tbaa !5
  %and = and i64 %14, 16777215
  store i64 %and, i64* %rval, align 8, !tbaa !5
  %15 = load i32, i32* %number_of_bits.addr, align 4, !tbaa !23
  %16 = load i32, i32* @bitindex, align 4, !tbaa !23
  %add = add nsw i32 %16, %15
  store i32 %add, i32* @bitindex, align 4, !tbaa !23
  %17 = load i32, i32* %number_of_bits.addr, align 4, !tbaa !23
  %sub = sub nsw i32 24, %17
  %18 = load i64, i64* %rval, align 8, !tbaa !5
  %sh_prom8 = zext i32 %sub to i64
  %shr = lshr i64 %18, %sh_prom8
  store i64 %shr, i64* %rval, align 8, !tbaa !5
  %19 = load i32, i32* @bitindex, align 4, !tbaa !23
  %shr9 = ashr i32 %19, 3
  %20 = load i8*, i8** @wordpointer, align 8, !tbaa !1
  %idx.ext = sext i32 %shr9 to i64
  %add.ptr = getelementptr inbounds i8, i8* %20, i64 %idx.ext
  store i8* %add.ptr, i8** @wordpointer, align 8, !tbaa !1
  %21 = load i32, i32* @bitindex, align 4, !tbaa !23
  %and10 = and i32 %21, 7
  store i32 %and10, i32* @bitindex, align 4, !tbaa !23
  %22 = load i64, i64* %rval, align 8, !tbaa !5
  %conv11 = trunc i64 %22 to i32
  store i32 %conv11, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %if.end, %if.then
  %23 = bitcast i64* %rval to i8*
  call void @llvm.lifetime.end(i64 8, i8* %23) #3
  %24 = load i32, i32* %retval
  ret i32 %24
}

; Function Attrs: nounwind
declare void @llvm.lifetime.start(i64, i8* nocapture) #3

; Function Attrs: nounwind
declare void @llvm.lifetime.end(i64, i8* nocapture) #3

; Function Attrs: nounwind uwtable
define i32 @getbits_fast(i32 %number_of_bits) #0 {
entry:
  %number_of_bits.addr = alloca i32, align 4
  %rval = alloca i64, align 8
  store i32 %number_of_bits, i32* %number_of_bits.addr, align 4, !tbaa !23
  %0 = bitcast i64* %rval to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #3
  %1 = load i8*, i8** @wordpointer, align 8, !tbaa !1
  %arrayidx = getelementptr inbounds i8, i8* %1, i64 0
  %2 = load i8, i8* %arrayidx, align 1, !tbaa !25
  %conv = zext i8 %2 to i64
  store i64 %conv, i64* %rval, align 8, !tbaa !5
  %3 = load i64, i64* %rval, align 8, !tbaa !5
  %shl = shl i64 %3, 8
  store i64 %shl, i64* %rval, align 8, !tbaa !5
  %4 = load i8*, i8** @wordpointer, align 8, !tbaa !1
  %arrayidx1 = getelementptr inbounds i8, i8* %4, i64 1
  %5 = load i8, i8* %arrayidx1, align 1, !tbaa !25
  %conv2 = zext i8 %5 to i64
  %6 = load i64, i64* %rval, align 8, !tbaa !5
  %or = or i64 %6, %conv2
  store i64 %or, i64* %rval, align 8, !tbaa !5
  %7 = load i32, i32* @bitindex, align 4, !tbaa !23
  %8 = load i64, i64* %rval, align 8, !tbaa !5
  %sh_prom = zext i32 %7 to i64
  %shl3 = shl i64 %8, %sh_prom
  store i64 %shl3, i64* %rval, align 8, !tbaa !5
  %9 = load i64, i64* %rval, align 8, !tbaa !5
  %and = and i64 %9, 65535
  store i64 %and, i64* %rval, align 8, !tbaa !5
  %10 = load i32, i32* %number_of_bits.addr, align 4, !tbaa !23
  %11 = load i32, i32* @bitindex, align 4, !tbaa !23
  %add = add nsw i32 %11, %10
  store i32 %add, i32* @bitindex, align 4, !tbaa !23
  %12 = load i32, i32* %number_of_bits.addr, align 4, !tbaa !23
  %sub = sub nsw i32 16, %12
  %13 = load i64, i64* %rval, align 8, !tbaa !5
  %sh_prom4 = zext i32 %sub to i64
  %shr = lshr i64 %13, %sh_prom4
  store i64 %shr, i64* %rval, align 8, !tbaa !5
  %14 = load i32, i32* @bitindex, align 4, !tbaa !23
  %shr5 = ashr i32 %14, 3
  %15 = load i8*, i8** @wordpointer, align 8, !tbaa !1
  %idx.ext = sext i32 %shr5 to i64
  %add.ptr = getelementptr inbounds i8, i8* %15, i64 %idx.ext
  store i8* %add.ptr, i8** @wordpointer, align 8, !tbaa !1
  %16 = load i32, i32* @bitindex, align 4, !tbaa !23
  %and6 = and i32 %16, 7
  store i32 %and6, i32* @bitindex, align 4, !tbaa !23
  %17 = load i64, i64* %rval, align 8, !tbaa !5
  %conv7 = trunc i64 %17 to i32
  %18 = bitcast i64* %rval to i8*
  call void @llvm.lifetime.end(i64 8, i8* %18) #3
  ret i32 %conv7
}

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { noreturn nounwind "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind }
attributes #4 = { noreturn nounwind }

!llvm.ident = !{!0}

!0 = !{!"clang version 3.7.0 (tags/RELEASE_370/final)"}
!1 = !{!2, !2, i64 0}
!2 = !{!"any pointer", !3, i64 0}
!3 = !{!"omnipotent char", !4, i64 0}
!4 = !{!"Simple C/C++ TBAA"}
!5 = !{!6, !6, i64 0}
!6 = !{!"long", !3, i64 0}
!7 = !{!8, !9, i64 12}
!8 = !{!"frame", !9, i64 0, !9, i64 4, !9, i64 8, !9, i64 12, !9, i64 16, !9, i64 20, !9, i64 24, !9, i64 28, !9, i64 32, !9, i64 36, !9, i64 40, !9, i64 44, !9, i64 48, !9, i64 52, !9, i64 56, !9, i64 60, !9, i64 64, !9, i64 68}
!9 = !{!"int", !3, i64 0}
!10 = !{!8, !9, i64 16}
!11 = !{!8, !9, i64 24}
!12 = !{!8, !9, i64 36}
!13 = !{!8, !9, i64 28}
!14 = !{!8, !9, i64 32}
!15 = !{!8, !9, i64 40}
!16 = !{!8, !9, i64 44}
!17 = !{!8, !9, i64 48}
!18 = !{!8, !9, i64 52}
!19 = !{!8, !9, i64 56}
!20 = !{!8, !9, i64 60}
!21 = !{!8, !9, i64 64}
!22 = !{!8, !9, i64 0}
!23 = !{!9, !9, i64 0}
!24 = !{!8, !9, i64 68}
!25 = !{!3, !3, i64 0}
