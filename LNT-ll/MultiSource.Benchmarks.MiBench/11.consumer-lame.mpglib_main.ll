; ModuleID = './MultiSource.Benchmarks.MiBench/11.consumer-lame.mpglib_main.bc'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mpstr = type { %struct.buf*, %struct.buf*, i32, i32, i32, %struct.frame, [2 x [2304 x i8]], [2 x [2 x [576 x double]]], [2 x i32], i64, i32, [2 x [2 x [272 x double]]], i32 }
%struct.buf = type { i8*, i64, i64, %struct.buf*, %struct.buf* }
%struct.frame = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct._IO_FILE = type { i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, %struct._IO_marker*, %struct._IO_FILE*, i32, i32, i64, i16, i8, [1 x i8], i8*, i64, i8*, i8*, i8*, i8*, i64, i32, [20 x i8] }
%struct._IO_marker = type { %struct._IO_marker*, %struct._IO_FILE*, i32 }
%struct.VBRTAGDATA = type { i32, i32, i32, i32, i32, i32, [100 x i8] }

@mp = common global %struct.mpstr zeroinitializer, align 8
@buf = internal global [16384 x i8] zeroinitializer, align 16
@out = internal global [8192 x i8] zeroinitializer, align 16
@stderr = external global %struct._IO_FILE*, align 8
@.str = private unnamed_addr constant [50 x i8] c"Opps: first frame of mpglib output will be lost \0A\00", align 1
@freqs = external global [9 x i64], align 16
@tabsel_123 = external global [2 x [3 x [16 x i32]]], align 16
@.str.1 = private unnamed_addr constant [66 x i8] c"Opps: mpg123 returned more than one frame!  Cant handle this... \0A\00", align 1
@.str.2 = private unnamed_addr constant [66 x i8] c"Opps: mpg123 returned more than one frame!  shouldn't happen... \0A\00", align 1

; Function Attrs: nounwind uwtable
define i32 @is_syncword(i8* %header) #0 {
entry:
  %header.addr = alloca i8*, align 8
  store i8* %header, i8** %header.addr, align 8, !tbaa !1
  %0 = load i8*, i8** %header.addr, align 8, !tbaa !1
  %arrayidx = getelementptr inbounds i8, i8* %0, i64 0
  %1 = load i8, i8* %arrayidx, align 1, !tbaa !5
  %conv = sext i8 %1 to i32
  %cmp = icmp eq i32 %conv, -1
  br i1 %cmp, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %entry
  %2 = load i8*, i8** %header.addr, align 8, !tbaa !1
  %arrayidx2 = getelementptr inbounds i8, i8* %2, i64 1
  %3 = load i8, i8* %arrayidx2, align 1, !tbaa !5
  %conv3 = sext i8 %3 to i32
  %and = and i32 %conv3, -16
  %cmp4 = icmp eq i32 %and, -16
  br label %land.end

land.end:                                         ; preds = %land.rhs, %entry
  %4 = phi i1 [ false, %entry ], [ %cmp4, %land.rhs ]
  %land.ext = zext i1 %4 to i32
  ret i32 %land.ext
}

; Function Attrs: nounwind uwtable
define i32 @lame_decode_initfile(%struct._IO_FILE* %fd, i32* %stereo, i32* %samp, i32* %bitrate, i64* %num_samples) #0 {
entry:
  %retval = alloca i32, align 4
  %fd.addr = alloca %struct._IO_FILE*, align 8
  %stereo.addr = alloca i32*, align 8
  %samp.addr = alloca i32*, align 8
  %bitrate.addr = alloca i32*, align 8
  %num_samples.addr = alloca i64*, align 8
  %pTagData = alloca %struct.VBRTAGDATA, align 4
  %ret = alloca i32, align 4
  %size = alloca i32, align 4
  %framesize = alloca i32, align 4
  %num_frames = alloca i64, align 8
  %len = alloca i64, align 8
  %xing_header = alloca i32, align 4
  %cleanup.dest.slot = alloca i32
  store %struct._IO_FILE* %fd, %struct._IO_FILE** %fd.addr, align 8, !tbaa !1
  store i32* %stereo, i32** %stereo.addr, align 8, !tbaa !1
  store i32* %samp, i32** %samp.addr, align 8, !tbaa !1
  store i32* %bitrate, i32** %bitrate.addr, align 8, !tbaa !1
  store i64* %num_samples, i64** %num_samples.addr, align 8, !tbaa !1
  %0 = bitcast %struct.VBRTAGDATA* %pTagData to i8*
  call void @llvm.lifetime.start(i64 124, i8* %0) #1
  %1 = bitcast i32* %ret to i8*
  call void @llvm.lifetime.start(i64 4, i8* %1) #1
  %2 = bitcast i32* %size to i8*
  call void @llvm.lifetime.start(i64 4, i8* %2) #1
  %3 = bitcast i32* %framesize to i8*
  call void @llvm.lifetime.start(i64 4, i8* %3) #1
  %4 = bitcast i64* %num_frames to i8*
  call void @llvm.lifetime.start(i64 8, i8* %4) #1
  store i64 0, i64* %num_frames, align 8, !tbaa !6
  %5 = bitcast i64* %len to i8*
  call void @llvm.lifetime.start(i64 8, i8* %5) #1
  %6 = bitcast i32* %xing_header to i8*
  call void @llvm.lifetime.start(i64 4, i8* %6) #1
  %call = call i32 @InitMP3(%struct.mpstr* @mp)
  call void @llvm.memset.p0i8.i64(i8* getelementptr inbounds ([16384 x i8], [16384 x i8]* @buf, i32 0, i32 0), i8 0, i64 16384, i32 16, i1 false)
  br label %while.cond

while.cond:                                       ; preds = %if.end, %entry
  %call1 = call i32 @is_syncword(i8* getelementptr inbounds ([16384 x i8], [16384 x i8]* @buf, i32 0, i32 0))
  %tobool = icmp ne i32 %call1, 0
  %lnot = xor i1 %tobool, true
  br i1 %lnot, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %7 = load i8, i8* getelementptr inbounds ([16384 x i8], [16384 x i8]* @buf, i32 0, i64 1), align 1, !tbaa !5
  store i8 %7, i8* getelementptr inbounds ([16384 x i8], [16384 x i8]* @buf, i32 0, i64 0), align 1, !tbaa !5
  %8 = load %struct._IO_FILE*, %struct._IO_FILE** %fd.addr, align 8, !tbaa !1
  %call2 = call i64 @fread(i8* getelementptr inbounds ([16384 x i8], [16384 x i8]* @buf, i32 0, i64 1), i64 1, i64 1, %struct._IO_FILE* %8)
  %cmp = icmp eq i64 %call2, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %while.body
  store i32 -1, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end:                                           ; preds = %while.body
  br label %while.cond

while.end:                                        ; preds = %while.cond
  %9 = load %struct._IO_FILE*, %struct._IO_FILE** %fd.addr, align 8, !tbaa !1
  %call3 = call i64 @fread(i8* getelementptr inbounds ([16384 x i8], [16384 x i8]* @buf, i32 0, i64 2), i64 1, i64 46, %struct._IO_FILE* %9)
  store i64 %call3, i64* %len, align 8, !tbaa !6
  %10 = load i64, i64* %len, align 8, !tbaa !6
  %cmp4 = icmp eq i64 %10, 0
  br i1 %cmp4, label %if.then.5, label %if.end.6

if.then.5:                                        ; preds = %while.end
  store i32 -1, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.6:                                         ; preds = %while.end
  %11 = load i64, i64* %len, align 8, !tbaa !6
  %add = add i64 %11, 2
  store i64 %add, i64* %len, align 8, !tbaa !6
  %call7 = call i32 @GetVbrTag(%struct.VBRTAGDATA* %pTagData, i8* getelementptr inbounds ([16384 x i8], [16384 x i8]* @buf, i32 0, i32 0))
  store i32 %call7, i32* %xing_header, align 4, !tbaa !8
  %12 = load i32, i32* %xing_header, align 4, !tbaa !8
  %tobool8 = icmp ne i32 %12, 0
  br i1 %tobool8, label %if.then.9, label %if.end.10

if.then.9:                                        ; preds = %if.end.6
  %frames = getelementptr inbounds %struct.VBRTAGDATA, %struct.VBRTAGDATA* %pTagData, i32 0, i32 3
  %13 = load i32, i32* %frames, align 4, !tbaa !10
  %conv = sext i32 %13 to i64
  store i64 %conv, i64* %num_frames, align 8, !tbaa !6
  br label %if.end.10

if.end.10:                                        ; preds = %if.then.9, %if.end.6
  store i32 0, i32* %size, align 4, !tbaa !8
  %14 = load i64, i64* %len, align 8, !tbaa !6
  %conv11 = trunc i64 %14 to i32
  %call12 = call i32 @decodeMP3(%struct.mpstr* @mp, i8* getelementptr inbounds ([16384 x i8], [16384 x i8]* @buf, i32 0, i32 0), i32 %conv11, i8* getelementptr inbounds ([8192 x i8], [8192 x i8]* @out, i32 0, i32 0), i32 8192, i32* %size)
  store i32 %call12, i32* %ret, align 4, !tbaa !8
  %15 = load i32, i32* %size, align 4, !tbaa !8
  %cmp13 = icmp sgt i32 %15, 0
  br i1 %cmp13, label %land.lhs.true, label %if.end.18

land.lhs.true:                                    ; preds = %if.end.10
  %16 = load i32, i32* %xing_header, align 4, !tbaa !8
  %tobool15 = icmp ne i32 %16, 0
  br i1 %tobool15, label %if.end.18, label %if.then.16

if.then.16:                                       ; preds = %land.lhs.true
  %17 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !tbaa !1
  %call17 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %17, i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str, i32 0, i32 0))
  br label %if.end.18

if.end.18:                                        ; preds = %if.then.16, %land.lhs.true, %if.end.10
  %18 = load i32, i32* getelementptr inbounds (%struct.mpstr, %struct.mpstr* @mp, i32 0, i32 5, i32 0), align 4, !tbaa !12
  %19 = load i32*, i32** %stereo.addr, align 8, !tbaa !1
  store i32 %18, i32* %19, align 4, !tbaa !8
  %20 = load i32, i32* getelementptr inbounds (%struct.mpstr, %struct.mpstr* @mp, i32 0, i32 5, i32 9), align 4, !tbaa !15
  %idxprom = sext i32 %20 to i64
  %arrayidx = getelementptr inbounds [9 x i64], [9 x i64]* @freqs, i32 0, i64 %idxprom
  %21 = load i64, i64* %arrayidx, align 8, !tbaa !6
  %conv19 = trunc i64 %21 to i32
  %22 = load i32*, i32** %samp.addr, align 8, !tbaa !1
  store i32 %conv19, i32* %22, align 4, !tbaa !8
  %23 = load i32, i32* getelementptr inbounds (%struct.mpstr, %struct.mpstr* @mp, i32 0, i32 5, i32 8), align 4, !tbaa !16
  %idxprom20 = sext i32 %23 to i64
  %24 = load i32, i32* getelementptr inbounds (%struct.mpstr, %struct.mpstr* @mp, i32 0, i32 5, i32 6), align 4, !tbaa !17
  %sub = sub nsw i32 %24, 1
  %idxprom21 = sext i32 %sub to i64
  %25 = load i32, i32* getelementptr inbounds (%struct.mpstr, %struct.mpstr* @mp, i32 0, i32 5, i32 3), align 4, !tbaa !18
  %idxprom22 = sext i32 %25 to i64
  %arrayidx23 = getelementptr inbounds [2 x [3 x [16 x i32]]], [2 x [3 x [16 x i32]]]* @tabsel_123, i32 0, i64 %idxprom22
  %arrayidx24 = getelementptr inbounds [3 x [16 x i32]], [3 x [16 x i32]]* %arrayidx23, i32 0, i64 %idxprom21
  %arrayidx25 = getelementptr inbounds [16 x i32], [16 x i32]* %arrayidx24, i32 0, i64 %idxprom20
  %26 = load i32, i32* %arrayidx25, align 4, !tbaa !8
  %27 = load i32*, i32** %bitrate.addr, align 8, !tbaa !1
  store i32 %26, i32* %27, align 4, !tbaa !8
  %28 = load i32, i32* getelementptr inbounds (%struct.mpstr, %struct.mpstr* @mp, i32 0, i32 5, i32 3), align 4, !tbaa !18
  %cmp26 = icmp eq i32 %28, 0
  %cond = select i1 %cmp26, i32 1152, i32 576
  store i32 %cond, i32* %framesize, align 4, !tbaa !8
  %29 = load i64*, i64** %num_samples.addr, align 8, !tbaa !1
  store i64 4294967295, i64* %29, align 8, !tbaa !6
  %30 = load i32, i32* %xing_header, align 4, !tbaa !8
  %tobool28 = icmp ne i32 %30, 0
  br i1 %tobool28, label %land.lhs.true.29, label %if.end.33

land.lhs.true.29:                                 ; preds = %if.end.18
  %31 = load i64, i64* %num_frames, align 8, !tbaa !6
  %tobool30 = icmp ne i64 %31, 0
  br i1 %tobool30, label %if.then.31, label %if.end.33

if.then.31:                                       ; preds = %land.lhs.true.29
  %32 = load i32, i32* %framesize, align 4, !tbaa !8
  %conv32 = sext i32 %32 to i64
  %33 = load i64, i64* %num_frames, align 8, !tbaa !6
  %mul = mul i64 %conv32, %33
  %34 = load i64*, i64** %num_samples.addr, align 8, !tbaa !1
  store i64 %mul, i64* %34, align 8, !tbaa !6
  br label %if.end.33

if.end.33:                                        ; preds = %if.then.31, %land.lhs.true.29, %if.end.18
  store i32 0, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %if.end.33, %if.then.5, %if.then
  %35 = bitcast i32* %xing_header to i8*
  call void @llvm.lifetime.end(i64 4, i8* %35) #1
  %36 = bitcast i64* %len to i8*
  call void @llvm.lifetime.end(i64 8, i8* %36) #1
  %37 = bitcast i64* %num_frames to i8*
  call void @llvm.lifetime.end(i64 8, i8* %37) #1
  %38 = bitcast i32* %framesize to i8*
  call void @llvm.lifetime.end(i64 4, i8* %38) #1
  %39 = bitcast i32* %size to i8*
  call void @llvm.lifetime.end(i64 4, i8* %39) #1
  %40 = bitcast i32* %ret to i8*
  call void @llvm.lifetime.end(i64 4, i8* %40) #1
  %41 = bitcast %struct.VBRTAGDATA* %pTagData to i8*
  call void @llvm.lifetime.end(i64 124, i8* %41) #1
  %42 = load i32, i32* %retval
  ret i32 %42
}

; Function Attrs: nounwind
declare void @llvm.lifetime.start(i64, i8* nocapture) #1

declare i32 @InitMP3(%struct.mpstr*) #2

; Function Attrs: nounwind
declare void @llvm.memset.p0i8.i64(i8* nocapture, i8, i64, i32, i1) #1

declare i64 @fread(i8*, i64, i64, %struct._IO_FILE*) #2

declare i32 @GetVbrTag(%struct.VBRTAGDATA*, i8*) #2

declare i32 @decodeMP3(%struct.mpstr*, i8*, i32, i8*, i32, i32*) #2

declare i32 @fprintf(%struct._IO_FILE*, i8*, ...) #2

; Function Attrs: nounwind
declare void @llvm.lifetime.end(i64, i8* nocapture) #1

; Function Attrs: nounwind uwtable
define i32 @lame_decode_init() #0 {
entry:
  %call = call i32 @InitMP3(%struct.mpstr* @mp)
  call void @llvm.memset.p0i8.i64(i8* getelementptr inbounds ([16384 x i8], [16384 x i8]* @buf, i32 0, i32 0), i8 0, i64 16384, i32 16, i1 false)
  ret i32 0
}

; Function Attrs: nounwind uwtable
define i32 @lame_decode_fromfile(%struct._IO_FILE* %fd, i16* %pcm_l, i16* %pcm_r) #0 {
entry:
  %retval = alloca i32, align 4
  %fd.addr = alloca %struct._IO_FILE*, align 8
  %pcm_l.addr = alloca i16*, align 8
  %pcm_r.addr = alloca i16*, align 8
  %size = alloca i32, align 4
  %stereo = alloca i32, align 4
  %outsize = alloca i32, align 4
  %j = alloca i32, align 4
  %i = alloca i32, align 4
  %ret = alloca i32, align 4
  %len = alloca i64, align 8
  %cleanup.dest.slot = alloca i32
  store %struct._IO_FILE* %fd, %struct._IO_FILE** %fd.addr, align 8, !tbaa !1
  store i16* %pcm_l, i16** %pcm_l.addr, align 8, !tbaa !1
  store i16* %pcm_r, i16** %pcm_r.addr, align 8, !tbaa !1
  %0 = bitcast i32* %size to i8*
  call void @llvm.lifetime.start(i64 4, i8* %0) #1
  %1 = bitcast i32* %stereo to i8*
  call void @llvm.lifetime.start(i64 4, i8* %1) #1
  %2 = bitcast i32* %outsize to i8*
  call void @llvm.lifetime.start(i64 4, i8* %2) #1
  store i32 0, i32* %outsize, align 4, !tbaa !8
  %3 = bitcast i32* %j to i8*
  call void @llvm.lifetime.start(i64 4, i8* %3) #1
  %4 = bitcast i32* %i to i8*
  call void @llvm.lifetime.start(i64 4, i8* %4) #1
  %5 = bitcast i32* %ret to i8*
  call void @llvm.lifetime.start(i64 4, i8* %5) #1
  %6 = bitcast i64* %len to i8*
  call void @llvm.lifetime.start(i64 8, i8* %6) #1
  store i32 0, i32* %size, align 4, !tbaa !8
  %7 = load %struct._IO_FILE*, %struct._IO_FILE** %fd.addr, align 8, !tbaa !1
  %call = call i64 @fread(i8* getelementptr inbounds ([16384 x i8], [16384 x i8]* @buf, i32 0, i32 0), i64 1, i64 64, %struct._IO_FILE* %7)
  store i64 %call, i64* %len, align 8, !tbaa !6
  %8 = load i64, i64* %len, align 8, !tbaa !6
  %cmp = icmp eq i64 %8, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store i32 0, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end:                                           ; preds = %entry
  %9 = load i64, i64* %len, align 8, !tbaa !6
  %conv = trunc i64 %9 to i32
  %call1 = call i32 @decodeMP3(%struct.mpstr* @mp, i8* getelementptr inbounds ([16384 x i8], [16384 x i8]* @buf, i32 0, i32 0), i32 %conv, i8* getelementptr inbounds ([8192 x i8], [8192 x i8]* @out, i32 0, i32 0), i32 8192, i32* %size)
  store i32 %call1, i32* %ret, align 4, !tbaa !8
  br label %while.cond

while.cond:                                       ; preds = %if.end.8, %if.end
  %10 = load i32, i32* %ret, align 4, !tbaa !8
  %cmp2 = icmp eq i32 %10, 1
  br i1 %cmp2, label %lor.end, label %lor.rhs

lor.rhs:                                          ; preds = %while.cond
  %11 = load i32, i32* %size, align 4, !tbaa !8
  %tobool = icmp ne i32 %11, 0
  %lnot = xor i1 %tobool, true
  br label %lor.end

lor.end:                                          ; preds = %lor.rhs, %while.cond
  %12 = phi i1 [ true, %while.cond ], [ %lnot, %lor.rhs ]
  br i1 %12, label %while.body, label %while.end

while.body:                                       ; preds = %lor.end
  %13 = load %struct._IO_FILE*, %struct._IO_FILE** %fd.addr, align 8, !tbaa !1
  %call4 = call i64 @fread(i8* getelementptr inbounds ([16384 x i8], [16384 x i8]* @buf, i32 0, i32 0), i64 1, i64 100, %struct._IO_FILE* %13)
  store i64 %call4, i64* %len, align 8, !tbaa !6
  %14 = load i64, i64* %len, align 8, !tbaa !6
  %cmp5 = icmp eq i64 %14, 0
  br i1 %cmp5, label %if.then.7, label %if.end.8

if.then.7:                                        ; preds = %while.body
  store i32 -1, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.8:                                         ; preds = %while.body
  %15 = load i64, i64* %len, align 8, !tbaa !6
  %conv9 = trunc i64 %15 to i32
  %call10 = call i32 @decodeMP3(%struct.mpstr* @mp, i8* getelementptr inbounds ([16384 x i8], [16384 x i8]* @buf, i32 0, i32 0), i32 %conv9, i8* getelementptr inbounds ([8192 x i8], [8192 x i8]* @out, i32 0, i32 0), i32 8192, i32* %size)
  store i32 %call10, i32* %ret, align 4, !tbaa !8
  br label %while.cond

while.end:                                        ; preds = %lor.end
  %16 = load i32, i32* getelementptr inbounds (%struct.mpstr, %struct.mpstr* @mp, i32 0, i32 5, i32 0), align 4, !tbaa !12
  store i32 %16, i32* %stereo, align 4, !tbaa !8
  %17 = load i32, i32* %ret, align 4, !tbaa !8
  %cmp11 = icmp eq i32 %17, 0
  br i1 %cmp11, label %if.then.13, label %if.end.43

if.then.13:                                       ; preds = %while.end
  %18 = load i32, i32* %size, align 4, !tbaa !8
  %19 = load i32, i32* %stereo, align 4, !tbaa !8
  %mul = mul nsw i32 2, %19
  %div = sdiv i32 %18, %mul
  store i32 %div, i32* %outsize, align 4, !tbaa !8
  %20 = load i32, i32* %outsize, align 4, !tbaa !8
  %cmp14 = icmp ne i32 %20, 576
  br i1 %cmp14, label %land.lhs.true, label %if.end.20

land.lhs.true:                                    ; preds = %if.then.13
  %21 = load i32, i32* %outsize, align 4, !tbaa !8
  %cmp16 = icmp ne i32 %21, 1152
  br i1 %cmp16, label %if.then.18, label %if.end.20

if.then.18:                                       ; preds = %land.lhs.true
  %22 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !tbaa !1
  %call19 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %22, i8* getelementptr inbounds ([66 x i8], [66 x i8]* @.str.1, i32 0, i32 0))
  call void @exit(i32 -50) #4
  unreachable

if.end.20:                                        ; preds = %land.lhs.true, %if.then.13
  store i32 0, i32* %j, align 4, !tbaa !8
  br label %for.cond

for.cond:                                         ; preds = %for.inc.40, %if.end.20
  %23 = load i32, i32* %j, align 4, !tbaa !8
  %24 = load i32, i32* %stereo, align 4, !tbaa !8
  %cmp21 = icmp slt i32 %23, %24
  br i1 %cmp21, label %for.body, label %for.end.42

for.body:                                         ; preds = %for.cond
  store i32 0, i32* %i, align 4, !tbaa !8
  br label %for.cond.23

for.cond.23:                                      ; preds = %for.inc, %for.body
  %25 = load i32, i32* %i, align 4, !tbaa !8
  %26 = load i32, i32* %outsize, align 4, !tbaa !8
  %cmp24 = icmp slt i32 %25, %26
  br i1 %cmp24, label %for.body.26, label %for.end

for.body.26:                                      ; preds = %for.cond.23
  %27 = load i32, i32* %j, align 4, !tbaa !8
  %cmp27 = icmp eq i32 %27, 0
  br i1 %cmp27, label %if.then.29, label %if.else

if.then.29:                                       ; preds = %for.body.26
  %28 = load i32, i32* getelementptr inbounds (%struct.mpstr, %struct.mpstr* @mp, i32 0, i32 5, i32 0), align 4, !tbaa !12
  %29 = load i32, i32* %i, align 4, !tbaa !8
  %mul30 = mul nsw i32 %28, %29
  %30 = load i32, i32* %j, align 4, !tbaa !8
  %add = add nsw i32 %mul30, %30
  %idxprom = sext i32 %add to i64
  %arrayidx = getelementptr inbounds i16, i16* bitcast ([8192 x i8]* @out to i16*), i64 %idxprom
  %31 = load i16, i16* %arrayidx, align 2, !tbaa !19
  %32 = load i32, i32* %i, align 4, !tbaa !8
  %idxprom31 = sext i32 %32 to i64
  %33 = load i16*, i16** %pcm_l.addr, align 8, !tbaa !1
  %arrayidx32 = getelementptr inbounds i16, i16* %33, i64 %idxprom31
  store i16 %31, i16* %arrayidx32, align 2, !tbaa !19
  br label %if.end.39

if.else:                                          ; preds = %for.body.26
  %34 = load i32, i32* getelementptr inbounds (%struct.mpstr, %struct.mpstr* @mp, i32 0, i32 5, i32 0), align 4, !tbaa !12
  %35 = load i32, i32* %i, align 4, !tbaa !8
  %mul33 = mul nsw i32 %34, %35
  %36 = load i32, i32* %j, align 4, !tbaa !8
  %add34 = add nsw i32 %mul33, %36
  %idxprom35 = sext i32 %add34 to i64
  %arrayidx36 = getelementptr inbounds i16, i16* bitcast ([8192 x i8]* @out to i16*), i64 %idxprom35
  %37 = load i16, i16* %arrayidx36, align 2, !tbaa !19
  %38 = load i32, i32* %i, align 4, !tbaa !8
  %idxprom37 = sext i32 %38 to i64
  %39 = load i16*, i16** %pcm_r.addr, align 8, !tbaa !1
  %arrayidx38 = getelementptr inbounds i16, i16* %39, i64 %idxprom37
  store i16 %37, i16* %arrayidx38, align 2, !tbaa !19
  br label %if.end.39

if.end.39:                                        ; preds = %if.else, %if.then.29
  br label %for.inc

for.inc:                                          ; preds = %if.end.39
  %40 = load i32, i32* %i, align 4, !tbaa !8
  %inc = add nsw i32 %40, 1
  store i32 %inc, i32* %i, align 4, !tbaa !8
  br label %for.cond.23

for.end:                                          ; preds = %for.cond.23
  br label %for.inc.40

for.inc.40:                                       ; preds = %for.end
  %41 = load i32, i32* %j, align 4, !tbaa !8
  %inc41 = add nsw i32 %41, 1
  store i32 %inc41, i32* %j, align 4, !tbaa !8
  br label %for.cond

for.end.42:                                       ; preds = %for.cond
  br label %if.end.43

if.end.43:                                        ; preds = %for.end.42, %while.end
  %42 = load i32, i32* %ret, align 4, !tbaa !8
  %cmp44 = icmp eq i32 %42, -1
  br i1 %cmp44, label %if.then.46, label %if.else.47

if.then.46:                                       ; preds = %if.end.43
  store i32 -1, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.else.47:                                       ; preds = %if.end.43
  %43 = load i32, i32* %outsize, align 4, !tbaa !8
  store i32 %43, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %if.else.47, %if.then.46, %if.then.7, %if.then
  %44 = bitcast i64* %len to i8*
  call void @llvm.lifetime.end(i64 8, i8* %44) #1
  %45 = bitcast i32* %ret to i8*
  call void @llvm.lifetime.end(i64 4, i8* %45) #1
  %46 = bitcast i32* %i to i8*
  call void @llvm.lifetime.end(i64 4, i8* %46) #1
  %47 = bitcast i32* %j to i8*
  call void @llvm.lifetime.end(i64 4, i8* %47) #1
  %48 = bitcast i32* %outsize to i8*
  call void @llvm.lifetime.end(i64 4, i8* %48) #1
  %49 = bitcast i32* %stereo to i8*
  call void @llvm.lifetime.end(i64 4, i8* %49) #1
  %50 = bitcast i32* %size to i8*
  call void @llvm.lifetime.end(i64 4, i8* %50) #1
  %51 = load i32, i32* %retval
  ret i32 %51
}

; Function Attrs: noreturn nounwind
declare void @exit(i32) #3

; Function Attrs: nounwind uwtable
define i32 @lame_decode(i8* %buf, i32 %len, i16* %pcm_l, i16* %pcm_r) #0 {
entry:
  %retval = alloca i32, align 4
  %buf.addr = alloca i8*, align 8
  %len.addr = alloca i32, align 4
  %pcm_l.addr = alloca i16*, align 8
  %pcm_r.addr = alloca i16*, align 8
  %size = alloca i32, align 4
  %outsize = alloca i32, align 4
  %j = alloca i32, align 4
  %i = alloca i32, align 4
  %ret = alloca i32, align 4
  %cleanup.dest.slot = alloca i32
  store i8* %buf, i8** %buf.addr, align 8, !tbaa !1
  store i32 %len, i32* %len.addr, align 4, !tbaa !8
  store i16* %pcm_l, i16** %pcm_l.addr, align 8, !tbaa !1
  store i16* %pcm_r, i16** %pcm_r.addr, align 8, !tbaa !1
  %0 = bitcast i32* %size to i8*
  call void @llvm.lifetime.start(i64 4, i8* %0) #1
  %1 = bitcast i32* %outsize to i8*
  call void @llvm.lifetime.start(i64 4, i8* %1) #1
  store i32 0, i32* %outsize, align 4, !tbaa !8
  %2 = bitcast i32* %j to i8*
  call void @llvm.lifetime.start(i64 4, i8* %2) #1
  %3 = bitcast i32* %i to i8*
  call void @llvm.lifetime.start(i64 4, i8* %3) #1
  %4 = bitcast i32* %ret to i8*
  call void @llvm.lifetime.start(i64 4, i8* %4) #1
  %5 = load i8*, i8** %buf.addr, align 8, !tbaa !1
  %6 = load i32, i32* %len.addr, align 4, !tbaa !8
  %call = call i32 @decodeMP3(%struct.mpstr* @mp, i8* %5, i32 %6, i8* getelementptr inbounds ([8192 x i8], [8192 x i8]* @out, i32 0, i32 0), i32 8192, i32* %size)
  store i32 %call, i32* %ret, align 4, !tbaa !8
  %7 = load i32, i32* %ret, align 4, !tbaa !8
  %cmp = icmp eq i32 %7, 0
  br i1 %cmp, label %if.then, label %if.end.23

if.then:                                          ; preds = %entry
  %8 = load i32, i32* %size, align 4, !tbaa !8
  %9 = load i32, i32* getelementptr inbounds (%struct.mpstr, %struct.mpstr* @mp, i32 0, i32 5, i32 0), align 4, !tbaa !12
  %mul = mul nsw i32 2, %9
  %div = sdiv i32 %8, %mul
  store i32 %div, i32* %outsize, align 4, !tbaa !8
  %10 = load i32, i32* %outsize, align 4, !tbaa !8
  %cmp1 = icmp sgt i32 %10, 1152
  br i1 %cmp1, label %if.then.2, label %if.end

if.then.2:                                        ; preds = %if.then
  %11 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !tbaa !1
  %call3 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %11, i8* getelementptr inbounds ([66 x i8], [66 x i8]* @.str.2, i32 0, i32 0))
  call void @exit(i32 -50) #4
  unreachable

if.end:                                           ; preds = %if.then
  store i32 0, i32* %j, align 4, !tbaa !8
  br label %for.cond

for.cond:                                         ; preds = %for.inc.20, %if.end
  %12 = load i32, i32* %j, align 4, !tbaa !8
  %13 = load i32, i32* getelementptr inbounds (%struct.mpstr, %struct.mpstr* @mp, i32 0, i32 5, i32 0), align 4, !tbaa !12
  %cmp4 = icmp slt i32 %12, %13
  br i1 %cmp4, label %for.body, label %for.end.22

for.body:                                         ; preds = %for.cond
  store i32 0, i32* %i, align 4, !tbaa !8
  br label %for.cond.5

for.cond.5:                                       ; preds = %for.inc, %for.body
  %14 = load i32, i32* %i, align 4, !tbaa !8
  %15 = load i32, i32* %outsize, align 4, !tbaa !8
  %cmp6 = icmp slt i32 %14, %15
  br i1 %cmp6, label %for.body.7, label %for.end

for.body.7:                                       ; preds = %for.cond.5
  %16 = load i32, i32* %j, align 4, !tbaa !8
  %cmp8 = icmp eq i32 %16, 0
  br i1 %cmp8, label %if.then.9, label %if.else

if.then.9:                                        ; preds = %for.body.7
  %17 = load i32, i32* getelementptr inbounds (%struct.mpstr, %struct.mpstr* @mp, i32 0, i32 5, i32 0), align 4, !tbaa !12
  %18 = load i32, i32* %i, align 4, !tbaa !8
  %mul10 = mul nsw i32 %17, %18
  %19 = load i32, i32* %j, align 4, !tbaa !8
  %add = add nsw i32 %mul10, %19
  %idxprom = sext i32 %add to i64
  %arrayidx = getelementptr inbounds i16, i16* bitcast ([8192 x i8]* @out to i16*), i64 %idxprom
  %20 = load i16, i16* %arrayidx, align 2, !tbaa !19
  %21 = load i32, i32* %i, align 4, !tbaa !8
  %idxprom11 = sext i32 %21 to i64
  %22 = load i16*, i16** %pcm_l.addr, align 8, !tbaa !1
  %arrayidx12 = getelementptr inbounds i16, i16* %22, i64 %idxprom11
  store i16 %20, i16* %arrayidx12, align 2, !tbaa !19
  br label %if.end.19

if.else:                                          ; preds = %for.body.7
  %23 = load i32, i32* getelementptr inbounds (%struct.mpstr, %struct.mpstr* @mp, i32 0, i32 5, i32 0), align 4, !tbaa !12
  %24 = load i32, i32* %i, align 4, !tbaa !8
  %mul13 = mul nsw i32 %23, %24
  %25 = load i32, i32* %j, align 4, !tbaa !8
  %add14 = add nsw i32 %mul13, %25
  %idxprom15 = sext i32 %add14 to i64
  %arrayidx16 = getelementptr inbounds i16, i16* bitcast ([8192 x i8]* @out to i16*), i64 %idxprom15
  %26 = load i16, i16* %arrayidx16, align 2, !tbaa !19
  %27 = load i32, i32* %i, align 4, !tbaa !8
  %idxprom17 = sext i32 %27 to i64
  %28 = load i16*, i16** %pcm_r.addr, align 8, !tbaa !1
  %arrayidx18 = getelementptr inbounds i16, i16* %28, i64 %idxprom17
  store i16 %26, i16* %arrayidx18, align 2, !tbaa !19
  br label %if.end.19

if.end.19:                                        ; preds = %if.else, %if.then.9
  br label %for.inc

for.inc:                                          ; preds = %if.end.19
  %29 = load i32, i32* %i, align 4, !tbaa !8
  %inc = add nsw i32 %29, 1
  store i32 %inc, i32* %i, align 4, !tbaa !8
  br label %for.cond.5

for.end:                                          ; preds = %for.cond.5
  br label %for.inc.20

for.inc.20:                                       ; preds = %for.end
  %30 = load i32, i32* %j, align 4, !tbaa !8
  %inc21 = add nsw i32 %30, 1
  store i32 %inc21, i32* %j, align 4, !tbaa !8
  br label %for.cond

for.end.22:                                       ; preds = %for.cond
  br label %if.end.23

if.end.23:                                        ; preds = %for.end.22, %entry
  %31 = load i32, i32* %ret, align 4, !tbaa !8
  %cmp24 = icmp eq i32 %31, -1
  br i1 %cmp24, label %if.then.25, label %if.else.26

if.then.25:                                       ; preds = %if.end.23
  store i32 -1, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.else.26:                                       ; preds = %if.end.23
  %32 = load i32, i32* %outsize, align 4, !tbaa !8
  store i32 %32, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %if.else.26, %if.then.25
  %33 = bitcast i32* %ret to i8*
  call void @llvm.lifetime.end(i64 4, i8* %33) #1
  %34 = bitcast i32* %i to i8*
  call void @llvm.lifetime.end(i64 4, i8* %34) #1
  %35 = bitcast i32* %j to i8*
  call void @llvm.lifetime.end(i64 4, i8* %35) #1
  %36 = bitcast i32* %outsize to i8*
  call void @llvm.lifetime.end(i64 4, i8* %36) #1
  %37 = bitcast i32* %size to i8*
  call void @llvm.lifetime.end(i64 4, i8* %37) #1
  %38 = load i32, i32* %retval
  ret i32 %38
}

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { noreturn nounwind "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { noreturn nounwind }

!llvm.ident = !{!0}

!0 = !{!"clang version 3.7.0 (tags/RELEASE_370/final)"}
!1 = !{!2, !2, i64 0}
!2 = !{!"any pointer", !3, i64 0}
!3 = !{!"omnipotent char", !4, i64 0}
!4 = !{!"Simple C/C++ TBAA"}
!5 = !{!3, !3, i64 0}
!6 = !{!7, !7, i64 0}
!7 = !{!"long", !3, i64 0}
!8 = !{!9, !9, i64 0}
!9 = !{!"int", !3, i64 0}
!10 = !{!11, !9, i64 12}
!11 = !{!"", !9, i64 0, !9, i64 4, !9, i64 8, !9, i64 12, !9, i64 16, !9, i64 20, !3, i64 24}
!12 = !{!13, !9, i64 28}
!13 = !{!"mpstr", !2, i64 0, !2, i64 8, !9, i64 16, !9, i64 20, !9, i64 24, !14, i64 28, !3, i64 100, !3, i64 4712, !3, i64 23144, !7, i64 23152, !9, i64 23160, !3, i64 23168, !9, i64 31872}
!14 = !{!"frame", !9, i64 0, !9, i64 4, !9, i64 8, !9, i64 12, !9, i64 16, !9, i64 20, !9, i64 24, !9, i64 28, !9, i64 32, !9, i64 36, !9, i64 40, !9, i64 44, !9, i64 48, !9, i64 52, !9, i64 56, !9, i64 60, !9, i64 64, !9, i64 68}
!15 = !{!13, !9, i64 64}
!16 = !{!13, !9, i64 60}
!17 = !{!13, !9, i64 52}
!18 = !{!13, !9, i64 40}
!19 = !{!20, !20, i64 0}
!20 = !{!"short", !3, i64 0}
