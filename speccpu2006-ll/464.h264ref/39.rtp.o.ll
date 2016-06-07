; ModuleID = 'rtp.c'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct._IO_FILE = type { i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, %struct._IO_marker*, %struct._IO_FILE*, i32, i32, i64, i16, i8, [1 x i8], i8*, i64, i8*, i8*, i8*, i8*, i64, i32, [20 x i8] }
%struct._IO_marker = type { %struct._IO_marker*, %struct._IO_FILE*, i32 }
%struct.RTPpacket_t = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i8*, i32, i8*, i32 }
%struct.NALU_t = type { i32, i32, i32, i32, i32, i32, i8* }

@CurrentRTPTimestamp = global i32 0, align 4
@CurrentRTPSequenceNumber = global i32 0, align 4
@.str = private unnamed_addr constant [15 x i8] c"RTPWriteNALU-1\00", align 1
@.str.1 = private unnamed_addr constant [15 x i8] c"RTPWriteNALU-2\00", align 1
@.str.2 = private unnamed_addr constant [15 x i8] c"RTPWriteNALU-3\00", align 1
@.str.3 = private unnamed_addr constant [33 x i8] c"Cannot compose RTP packet, exit\0A\00", align 1
@f = common global %struct._IO_FILE* null, align 8
@.str.4 = private unnamed_addr constant [54 x i8] c"Cannot write %d bytes of RTP packet to outfile, exit\0A\00", align 1
@RTPUpdateTimestamp.oldtr = internal global i32 -1, align 4
@.str.5 = private unnamed_addr constant [3 x i8] c"wb\00", align 1
@.str.6 = private unnamed_addr constant [51 x i8] c"Fatal: cannot open bitstream file '%s', exit (-1)\0A\00", align 1

; Function Attrs: nounwind uwtable
define i32 @ComposeRTPPacket(%struct.RTPpacket_t* %p) #0 {
entry:
  %p.addr = alloca %struct.RTPpacket_t*, align 8
  store %struct.RTPpacket_t* %p, %struct.RTPpacket_t** %p.addr, align 8
  %0 = load %struct.RTPpacket_t*, %struct.RTPpacket_t** %p.addr, align 8
  %v = getelementptr inbounds %struct.RTPpacket_t, %struct.RTPpacket_t* %0, i32 0, i32 0
  %1 = load i32, i32* %v, align 4
  %2 = load %struct.RTPpacket_t*, %struct.RTPpacket_t** %p.addr, align 8
  %p1 = getelementptr inbounds %struct.RTPpacket_t, %struct.RTPpacket_t* %2, i32 0, i32 1
  %3 = load i32, i32* %p1, align 4
  %shl = shl i32 %3, 2
  %or = or i32 %1, %shl
  %4 = load %struct.RTPpacket_t*, %struct.RTPpacket_t** %p.addr, align 8
  %x = getelementptr inbounds %struct.RTPpacket_t, %struct.RTPpacket_t* %4, i32 0, i32 2
  %5 = load i32, i32* %x, align 4
  %shl2 = shl i32 %5, 3
  %or3 = or i32 %or, %shl2
  %6 = load %struct.RTPpacket_t*, %struct.RTPpacket_t** %p.addr, align 8
  %cc = getelementptr inbounds %struct.RTPpacket_t, %struct.RTPpacket_t* %6, i32 0, i32 3
  %7 = load i32, i32* %cc, align 4
  %shl4 = shl i32 %7, 4
  %or5 = or i32 %or3, %shl4
  %conv = trunc i32 %or5 to i8
  %8 = load %struct.RTPpacket_t*, %struct.RTPpacket_t** %p.addr, align 8
  %packet = getelementptr inbounds %struct.RTPpacket_t, %struct.RTPpacket_t* %8, i32 0, i32 11
  %9 = load i8*, i8** %packet, align 8
  %arrayidx = getelementptr inbounds i8, i8* %9, i64 0
  store i8 %conv, i8* %arrayidx, align 1
  %10 = load %struct.RTPpacket_t*, %struct.RTPpacket_t** %p.addr, align 8
  %m = getelementptr inbounds %struct.RTPpacket_t, %struct.RTPpacket_t* %10, i32 0, i32 4
  %11 = load i32, i32* %m, align 4
  %12 = load %struct.RTPpacket_t*, %struct.RTPpacket_t** %p.addr, align 8
  %pt = getelementptr inbounds %struct.RTPpacket_t, %struct.RTPpacket_t* %12, i32 0, i32 5
  %13 = load i32, i32* %pt, align 4
  %shl6 = shl i32 %13, 1
  %or7 = or i32 %11, %shl6
  %conv8 = trunc i32 %or7 to i8
  %14 = load %struct.RTPpacket_t*, %struct.RTPpacket_t** %p.addr, align 8
  %packet9 = getelementptr inbounds %struct.RTPpacket_t, %struct.RTPpacket_t* %14, i32 0, i32 11
  %15 = load i8*, i8** %packet9, align 8
  %arrayidx10 = getelementptr inbounds i8, i8* %15, i64 1
  store i8 %conv8, i8* %arrayidx10, align 1
  %16 = load %struct.RTPpacket_t*, %struct.RTPpacket_t** %p.addr, align 8
  %seq = getelementptr inbounds %struct.RTPpacket_t, %struct.RTPpacket_t* %16, i32 0, i32 6
  %17 = load i32, i32* %seq, align 4
  %and = and i32 %17, 255
  %conv11 = trunc i32 %and to i8
  %18 = load %struct.RTPpacket_t*, %struct.RTPpacket_t** %p.addr, align 8
  %packet12 = getelementptr inbounds %struct.RTPpacket_t, %struct.RTPpacket_t* %18, i32 0, i32 11
  %19 = load i8*, i8** %packet12, align 8
  %arrayidx13 = getelementptr inbounds i8, i8* %19, i64 2
  store i8 %conv11, i8* %arrayidx13, align 1
  %20 = load %struct.RTPpacket_t*, %struct.RTPpacket_t** %p.addr, align 8
  %seq14 = getelementptr inbounds %struct.RTPpacket_t, %struct.RTPpacket_t* %20, i32 0, i32 6
  %21 = load i32, i32* %seq14, align 4
  %shr = lshr i32 %21, 8
  %and15 = and i32 %shr, 255
  %conv16 = trunc i32 %and15 to i8
  %22 = load %struct.RTPpacket_t*, %struct.RTPpacket_t** %p.addr, align 8
  %packet17 = getelementptr inbounds %struct.RTPpacket_t, %struct.RTPpacket_t* %22, i32 0, i32 11
  %23 = load i8*, i8** %packet17, align 8
  %arrayidx18 = getelementptr inbounds i8, i8* %23, i64 3
  store i8 %conv16, i8* %arrayidx18, align 1
  %24 = load %struct.RTPpacket_t*, %struct.RTPpacket_t** %p.addr, align 8
  %packet19 = getelementptr inbounds %struct.RTPpacket_t, %struct.RTPpacket_t* %24, i32 0, i32 11
  %25 = load i8*, i8** %packet19, align 8
  %arrayidx20 = getelementptr inbounds i8, i8* %25, i64 4
  %26 = load %struct.RTPpacket_t*, %struct.RTPpacket_t** %p.addr, align 8
  %timestamp = getelementptr inbounds %struct.RTPpacket_t, %struct.RTPpacket_t* %26, i32 0, i32 7
  %27 = bitcast i32* %timestamp to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %arrayidx20, i8* %27, i64 4, i32 1, i1 false)
  %28 = load %struct.RTPpacket_t*, %struct.RTPpacket_t** %p.addr, align 8
  %packet21 = getelementptr inbounds %struct.RTPpacket_t, %struct.RTPpacket_t* %28, i32 0, i32 11
  %29 = load i8*, i8** %packet21, align 8
  %arrayidx22 = getelementptr inbounds i8, i8* %29, i64 8
  %30 = load %struct.RTPpacket_t*, %struct.RTPpacket_t** %p.addr, align 8
  %ssrc = getelementptr inbounds %struct.RTPpacket_t, %struct.RTPpacket_t* %30, i32 0, i32 8
  %31 = bitcast i32* %ssrc to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %arrayidx22, i8* %31, i64 4, i32 1, i1 false)
  %32 = load %struct.RTPpacket_t*, %struct.RTPpacket_t** %p.addr, align 8
  %packet23 = getelementptr inbounds %struct.RTPpacket_t, %struct.RTPpacket_t* %32, i32 0, i32 11
  %33 = load i8*, i8** %packet23, align 8
  %arrayidx24 = getelementptr inbounds i8, i8* %33, i64 12
  %34 = load %struct.RTPpacket_t*, %struct.RTPpacket_t** %p.addr, align 8
  %payload = getelementptr inbounds %struct.RTPpacket_t, %struct.RTPpacket_t* %34, i32 0, i32 9
  %35 = load i8*, i8** %payload, align 8
  %36 = load %struct.RTPpacket_t*, %struct.RTPpacket_t** %p.addr, align 8
  %paylen = getelementptr inbounds %struct.RTPpacket_t, %struct.RTPpacket_t* %36, i32 0, i32 10
  %37 = load i32, i32* %paylen, align 4
  %conv25 = zext i32 %37 to i64
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %arrayidx24, i8* %35, i64 %conv25, i32 1, i1 false)
  %38 = load %struct.RTPpacket_t*, %struct.RTPpacket_t** %p.addr, align 8
  %paylen26 = getelementptr inbounds %struct.RTPpacket_t, %struct.RTPpacket_t* %38, i32 0, i32 10
  %39 = load i32, i32* %paylen26, align 4
  %add = add i32 %39, 12
  %40 = load %struct.RTPpacket_t*, %struct.RTPpacket_t** %p.addr, align 8
  %packlen = getelementptr inbounds %struct.RTPpacket_t, %struct.RTPpacket_t* %40, i32 0, i32 12
  store i32 %add, i32* %packlen, align 4
  ret i32 0
}

; Function Attrs: nounwind
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* nocapture, i8* nocapture readonly, i64, i32, i1) #1

; Function Attrs: nounwind uwtable
define i32 @WriteRTPPacket(%struct.RTPpacket_t* %p, %struct._IO_FILE* %f) #0 {
entry:
  %retval = alloca i32, align 4
  %p.addr = alloca %struct.RTPpacket_t*, align 8
  %f.addr = alloca %struct._IO_FILE*, align 8
  %intime = alloca i32, align 4
  store %struct.RTPpacket_t* %p, %struct.RTPpacket_t** %p.addr, align 8
  store %struct._IO_FILE* %f, %struct._IO_FILE** %f.addr, align 8
  store i32 -1, i32* %intime, align 4
  %0 = load %struct.RTPpacket_t*, %struct.RTPpacket_t** %p.addr, align 8
  %packlen = getelementptr inbounds %struct.RTPpacket_t, %struct.RTPpacket_t* %0, i32 0, i32 12
  %1 = bitcast i32* %packlen to i8*
  %2 = load %struct._IO_FILE*, %struct._IO_FILE** %f.addr, align 8
  %call = call i64 @fwrite(i8* %1, i64 4, i64 1, %struct._IO_FILE* %2)
  %cmp = icmp ne i64 1, %call
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store i32 -1, i32* %retval
  br label %return

if.end:                                           ; preds = %entry
  %3 = bitcast i32* %intime to i8*
  %4 = load %struct._IO_FILE*, %struct._IO_FILE** %f.addr, align 8
  %call1 = call i64 @fwrite(i8* %3, i64 4, i64 1, %struct._IO_FILE* %4)
  %cmp2 = icmp ne i64 1, %call1
  br i1 %cmp2, label %if.then.3, label %if.end.4

if.then.3:                                        ; preds = %if.end
  store i32 -1, i32* %retval
  br label %return

if.end.4:                                         ; preds = %if.end
  %5 = load %struct.RTPpacket_t*, %struct.RTPpacket_t** %p.addr, align 8
  %packet = getelementptr inbounds %struct.RTPpacket_t, %struct.RTPpacket_t* %5, i32 0, i32 11
  %6 = load i8*, i8** %packet, align 8
  %7 = load %struct.RTPpacket_t*, %struct.RTPpacket_t** %p.addr, align 8
  %packlen5 = getelementptr inbounds %struct.RTPpacket_t, %struct.RTPpacket_t* %7, i32 0, i32 12
  %8 = load i32, i32* %packlen5, align 4
  %conv = zext i32 %8 to i64
  %9 = load %struct._IO_FILE*, %struct._IO_FILE** %f.addr, align 8
  %call6 = call i64 @fwrite(i8* %6, i64 %conv, i64 1, %struct._IO_FILE* %9)
  %cmp7 = icmp ne i64 1, %call6
  br i1 %cmp7, label %if.then.9, label %if.end.10

if.then.9:                                        ; preds = %if.end.4
  store i32 -1, i32* %retval
  br label %return

if.end.10:                                        ; preds = %if.end.4
  store i32 0, i32* %retval
  br label %return

return:                                           ; preds = %if.end.10, %if.then.9, %if.then.3, %if.then
  %10 = load i32, i32* %retval
  ret i32 %10
}

declare i64 @fwrite(i8*, i64, i64, %struct._IO_FILE*) #2

; Function Attrs: nounwind uwtable
define i32 @WriteRTPNALU(%struct.NALU_t* %n) #0 {
entry:
  %n.addr = alloca %struct.NALU_t*, align 8
  %p = alloca %struct.RTPpacket_t*, align 8
  store %struct.NALU_t* %n, %struct.NALU_t** %n.addr, align 8
  %0 = load %struct.NALU_t*, %struct.NALU_t** %n.addr, align 8
  %forbidden_bit = getelementptr inbounds %struct.NALU_t, %struct.NALU_t* %0, i32 0, i32 5
  %1 = load i32, i32* %forbidden_bit, align 4
  %shl = shl i32 %1, 7
  %2 = load %struct.NALU_t*, %struct.NALU_t** %n.addr, align 8
  %nal_reference_idc = getelementptr inbounds %struct.NALU_t, %struct.NALU_t* %2, i32 0, i32 4
  %3 = load i32, i32* %nal_reference_idc, align 4
  %shl1 = shl i32 %3, 5
  %or = or i32 %shl, %shl1
  %4 = load %struct.NALU_t*, %struct.NALU_t** %n.addr, align 8
  %nal_unit_type = getelementptr inbounds %struct.NALU_t, %struct.NALU_t* %4, i32 0, i32 3
  %5 = load i32, i32* %nal_unit_type, align 4
  %or2 = or i32 %or, %5
  %conv = trunc i32 %or2 to i8
  %6 = load %struct.NALU_t*, %struct.NALU_t** %n.addr, align 8
  %buf = getelementptr inbounds %struct.NALU_t, %struct.NALU_t* %6, i32 0, i32 6
  %7 = load i8*, i8** %buf, align 8
  %arrayidx = getelementptr inbounds i8, i8* %7, i64 0
  store i8 %conv, i8* %arrayidx, align 1
  %call = call noalias i8* @malloc(i64 72) #1
  %8 = bitcast i8* %call to %struct.RTPpacket_t*
  store %struct.RTPpacket_t* %8, %struct.RTPpacket_t** %p, align 8
  %cmp = icmp eq %struct.RTPpacket_t* %8, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  call void @no_mem_exit(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i32 0, i32 0))
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %call4 = call noalias i8* @malloc(i64 65508) #1
  %9 = load %struct.RTPpacket_t*, %struct.RTPpacket_t** %p, align 8
  %packet = getelementptr inbounds %struct.RTPpacket_t, %struct.RTPpacket_t* %9, i32 0, i32 11
  store i8* %call4, i8** %packet, align 8
  %cmp5 = icmp eq i8* %call4, null
  br i1 %cmp5, label %if.then.7, label %if.end.8

if.then.7:                                        ; preds = %if.end
  call void @no_mem_exit(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.1, i32 0, i32 0))
  br label %if.end.8

if.end.8:                                         ; preds = %if.then.7, %if.end
  %call9 = call noalias i8* @malloc(i64 65508) #1
  %10 = load %struct.RTPpacket_t*, %struct.RTPpacket_t** %p, align 8
  %payload = getelementptr inbounds %struct.RTPpacket_t, %struct.RTPpacket_t* %10, i32 0, i32 9
  store i8* %call9, i8** %payload, align 8
  %cmp10 = icmp eq i8* %call9, null
  br i1 %cmp10, label %if.then.12, label %if.end.13

if.then.12:                                       ; preds = %if.end.8
  call void @no_mem_exit(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.2, i32 0, i32 0))
  br label %if.end.13

if.end.13:                                        ; preds = %if.then.12, %if.end.8
  %11 = load %struct.RTPpacket_t*, %struct.RTPpacket_t** %p, align 8
  %v = getelementptr inbounds %struct.RTPpacket_t, %struct.RTPpacket_t* %11, i32 0, i32 0
  store i32 2, i32* %v, align 4
  %12 = load %struct.RTPpacket_t*, %struct.RTPpacket_t** %p, align 8
  %p14 = getelementptr inbounds %struct.RTPpacket_t, %struct.RTPpacket_t* %12, i32 0, i32 1
  store i32 0, i32* %p14, align 4
  %13 = load %struct.RTPpacket_t*, %struct.RTPpacket_t** %p, align 8
  %x = getelementptr inbounds %struct.RTPpacket_t, %struct.RTPpacket_t* %13, i32 0, i32 2
  store i32 0, i32* %x, align 4
  %14 = load %struct.RTPpacket_t*, %struct.RTPpacket_t** %p, align 8
  %cc = getelementptr inbounds %struct.RTPpacket_t, %struct.RTPpacket_t* %14, i32 0, i32 3
  store i32 0, i32* %cc, align 4
  %15 = load %struct.NALU_t*, %struct.NALU_t** %n.addr, align 8
  %startcodeprefix_len = getelementptr inbounds %struct.NALU_t, %struct.NALU_t* %15, i32 0, i32 0
  %16 = load i32, i32* %startcodeprefix_len, align 4
  %cmp15 = icmp eq i32 %16, 4
  %conv16 = zext i1 %cmp15 to i32
  %and = and i32 %conv16, 1
  %17 = load %struct.RTPpacket_t*, %struct.RTPpacket_t** %p, align 8
  %m = getelementptr inbounds %struct.RTPpacket_t, %struct.RTPpacket_t* %17, i32 0, i32 4
  store i32 %and, i32* %m, align 4
  %18 = load %struct.RTPpacket_t*, %struct.RTPpacket_t** %p, align 8
  %pt = getelementptr inbounds %struct.RTPpacket_t, %struct.RTPpacket_t* %18, i32 0, i32 5
  store i32 105, i32* %pt, align 4
  %19 = load i32, i32* @CurrentRTPSequenceNumber, align 4
  %inc = add nsw i32 %19, 1
  store i32 %inc, i32* @CurrentRTPSequenceNumber, align 4
  %20 = load %struct.RTPpacket_t*, %struct.RTPpacket_t** %p, align 8
  %seq = getelementptr inbounds %struct.RTPpacket_t, %struct.RTPpacket_t* %20, i32 0, i32 6
  store i32 %19, i32* %seq, align 4
  %21 = load i32, i32* @CurrentRTPTimestamp, align 4
  %22 = load %struct.RTPpacket_t*, %struct.RTPpacket_t** %p, align 8
  %timestamp = getelementptr inbounds %struct.RTPpacket_t, %struct.RTPpacket_t* %22, i32 0, i32 7
  store i32 %21, i32* %timestamp, align 4
  %23 = load %struct.RTPpacket_t*, %struct.RTPpacket_t** %p, align 8
  %ssrc = getelementptr inbounds %struct.RTPpacket_t, %struct.RTPpacket_t* %23, i32 0, i32 8
  store i32 305419896, i32* %ssrc, align 4
  %24 = load %struct.NALU_t*, %struct.NALU_t** %n.addr, align 8
  %len = getelementptr inbounds %struct.NALU_t, %struct.NALU_t* %24, i32 0, i32 1
  %25 = load i32, i32* %len, align 4
  %26 = load %struct.RTPpacket_t*, %struct.RTPpacket_t** %p, align 8
  %paylen = getelementptr inbounds %struct.RTPpacket_t, %struct.RTPpacket_t* %26, i32 0, i32 10
  store i32 %25, i32* %paylen, align 4
  %27 = load %struct.RTPpacket_t*, %struct.RTPpacket_t** %p, align 8
  %payload17 = getelementptr inbounds %struct.RTPpacket_t, %struct.RTPpacket_t* %27, i32 0, i32 9
  %28 = load i8*, i8** %payload17, align 8
  %29 = load %struct.NALU_t*, %struct.NALU_t** %n.addr, align 8
  %buf18 = getelementptr inbounds %struct.NALU_t, %struct.NALU_t* %29, i32 0, i32 6
  %30 = load i8*, i8** %buf18, align 8
  %31 = load %struct.NALU_t*, %struct.NALU_t** %n.addr, align 8
  %len19 = getelementptr inbounds %struct.NALU_t, %struct.NALU_t* %31, i32 0, i32 1
  %32 = load i32, i32* %len19, align 4
  %conv20 = zext i32 %32 to i64
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %28, i8* %30, i64 %conv20, i32 1, i1 false)
  %33 = load %struct.RTPpacket_t*, %struct.RTPpacket_t** %p, align 8
  %call21 = call i32 @ComposeRTPPacket(%struct.RTPpacket_t* %33)
  %cmp22 = icmp slt i32 %call21, 0
  br i1 %cmp22, label %if.then.24, label %if.end.26

if.then.24:                                       ; preds = %if.end.13
  %call25 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.3, i32 0, i32 0))
  call void @exit(i32 -1) #5
  unreachable

if.end.26:                                        ; preds = %if.end.13
  %34 = load %struct.RTPpacket_t*, %struct.RTPpacket_t** %p, align 8
  %35 = load %struct._IO_FILE*, %struct._IO_FILE** @f, align 8
  %call27 = call i32 @WriteRTPPacket(%struct.RTPpacket_t* %34, %struct._IO_FILE* %35)
  %cmp28 = icmp slt i32 %call27, 0
  br i1 %cmp28, label %if.then.30, label %if.end.32

if.then.30:                                       ; preds = %if.end.26
  %36 = load %struct.RTPpacket_t*, %struct.RTPpacket_t** %p, align 8
  %packlen = getelementptr inbounds %struct.RTPpacket_t, %struct.RTPpacket_t* %36, i32 0, i32 12
  %37 = load i32, i32* %packlen, align 4
  %call31 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([54 x i8], [54 x i8]* @.str.4, i32 0, i32 0), i32 %37)
  call void @exit(i32 -1) #5
  unreachable

if.end.32:                                        ; preds = %if.end.26
  %38 = load %struct.RTPpacket_t*, %struct.RTPpacket_t** %p, align 8
  %packet33 = getelementptr inbounds %struct.RTPpacket_t, %struct.RTPpacket_t* %38, i32 0, i32 11
  %39 = load i8*, i8** %packet33, align 8
  call void @free(i8* %39) #1
  %40 = load %struct.RTPpacket_t*, %struct.RTPpacket_t** %p, align 8
  %payload34 = getelementptr inbounds %struct.RTPpacket_t, %struct.RTPpacket_t* %40, i32 0, i32 9
  %41 = load i8*, i8** %payload34, align 8
  call void @free(i8* %41) #1
  %42 = load %struct.RTPpacket_t*, %struct.RTPpacket_t** %p, align 8
  %43 = bitcast %struct.RTPpacket_t* %42 to i8*
  call void @free(i8* %43) #1
  %44 = load %struct.NALU_t*, %struct.NALU_t** %n.addr, align 8
  %len35 = getelementptr inbounds %struct.NALU_t, %struct.NALU_t* %44, i32 0, i32 1
  %45 = load i32, i32* %len35, align 4
  %mul = mul i32 %45, 8
  ret i32 %mul
}

; Function Attrs: nounwind
declare noalias i8* @malloc(i64) #3

declare void @no_mem_exit(i8*) #2

declare i32 @printf(i8*, ...) #2

; Function Attrs: noreturn nounwind
declare void @exit(i32) #4

; Function Attrs: nounwind
declare void @free(i8*) #3

; Function Attrs: nounwind uwtable
define void @RTPUpdateTimestamp(i32 %tr) #0 {
entry:
  %tr.addr = alloca i32, align 4
  %delta = alloca i32, align 4
  store i32 %tr, i32* %tr.addr, align 4
  %0 = load i32, i32* @RTPUpdateTimestamp.oldtr, align 4
  %cmp = icmp eq i32 %0, -1
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store i32 0, i32* @CurrentRTPTimestamp, align 4
  store i32 0, i32* @RTPUpdateTimestamp.oldtr, align 4
  br label %return

if.end:                                           ; preds = %entry
  %1 = load i32, i32* %tr.addr, align 4
  %2 = load i32, i32* @RTPUpdateTimestamp.oldtr, align 4
  %sub = sub nsw i32 %1, %2
  store i32 %sub, i32* %delta, align 4
  %3 = load i32, i32* %delta, align 4
  %cmp1 = icmp slt i32 %3, -10
  br i1 %cmp1, label %if.then.2, label %if.end.3

if.then.2:                                        ; preds = %if.end
  %4 = load i32, i32* %delta, align 4
  %add = add nsw i32 %4, 256
  store i32 %add, i32* %delta, align 4
  br label %if.end.3

if.end.3:                                         ; preds = %if.then.2, %if.end
  %5 = load i32, i32* %delta, align 4
  %mul = mul nsw i32 %5, 1000
  %6 = load i32, i32* @CurrentRTPTimestamp, align 4
  %add4 = add nsw i32 %6, %mul
  store i32 %add4, i32* @CurrentRTPTimestamp, align 4
  %7 = load i32, i32* %tr.addr, align 4
  store i32 %7, i32* @RTPUpdateTimestamp.oldtr, align 4
  br label %return

return:                                           ; preds = %if.end.3, %if.then
  ret void
}

; Function Attrs: nounwind uwtable
define void @OpenRTPFile(i8* %Filename) #0 {
entry:
  %Filename.addr = alloca i8*, align 8
  store i8* %Filename, i8** %Filename.addr, align 8
  %0 = load i8*, i8** %Filename.addr, align 8
  %call = call %struct._IO_FILE* @fopen(i8* %0, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.5, i32 0, i32 0))
  store %struct._IO_FILE* %call, %struct._IO_FILE** @f, align 8
  %cmp = icmp eq %struct._IO_FILE* %call, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %1 = load i8*, i8** %Filename.addr, align 8
  %call1 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str.6, i32 0, i32 0), i8* %1)
  call void @exit(i32 -1) #5
  unreachable

if.end:                                           ; preds = %entry
  ret void
}

declare %struct._IO_FILE* @fopen(i8*, i8*) #2

; Function Attrs: nounwind uwtable
define void @CloseRTPFile() #0 {
entry:
  %0 = load %struct._IO_FILE*, %struct._IO_FILE** @f, align 8
  %call = call i32 @fclose(%struct._IO_FILE* %0)
  ret void
}

declare i32 @fclose(%struct._IO_FILE*) #2

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { noreturn nounwind "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #5 = { noreturn nounwind }

!llvm.ident = !{!0}

!0 = !{!"clang version 3.7.0 (tags/RELEASE_370/final)"}
