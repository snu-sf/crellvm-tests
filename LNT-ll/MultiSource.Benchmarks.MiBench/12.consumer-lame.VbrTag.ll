; ModuleID = './MultiSource.Benchmarks.MiBench/12.consumer-lame.VbrTag.bc'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct._IO_FILE = type { i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, %struct._IO_marker*, %struct._IO_FILE*, i32, i32, i64, i16, i8, [1 x i8], i8*, i64, i8*, i8*, i8*, i8*, i64, i32, [20 x i8] }
%struct._IO_marker = type { %struct._IO_marker*, %struct._IO_FILE*, i32 }
%struct.VBRTAGDATA = type { i32, i32, i32, i32, i32, i32, [100 x i8] }
%struct.bit_stream_struc = type { i8*, i32, %struct._IO_FILE*, i8*, i32, i64, i32, i32 }

@SizeOfEmptyFrame = global [2 x [2 x i32]] [[2 x i32] [i32 32, i32 17], [2 x i32] [i32 17, i32 9]], align 16
@pVbrFrames = global i32* null, align 8
@nVbrNumFrames = global i32 0, align 4
@nVbrFrameBufferSize = global i32 0, align 4
@VBRTag = internal global [5 x i8] c"Xing\00", align 1
@GetVbrTag.sr_table = internal global [4 x i32] [i32 44100, i32 48000, i32 32000, i32 99999], align 16
@g_Position = internal global [100 x i64] zeroinitializer, align 16
@pbtStreamBuffer = internal global [216 x i8] zeroinitializer, align 16
@nZeroStreamSize = internal global i32 0, align 4
@InitVbrTag.framesize = internal constant [3 x i32] [i32 208, i32 192, i32 288], align 4
@stderr = external global %struct._IO_FILE*, align 8
@.str = private unnamed_addr constant [34 x i8] c"illegal sampling frequency index\0A\00", align 1
@TotalFrameSize = internal global i32 0, align 4
@.str.1 = private unnamed_addr constant [34 x i8] c"Xing VBR header problem...use -t\0A\00", align 1
@.str.2 = private unnamed_addr constant [4 x i8] c"rb+\00", align 1
@.str.3 = private unnamed_addr constant [7 x i8] c"LAME%s\00", align 1

; Function Attrs: nounwind uwtable
define void @AddVbrFrame(i32 %nStreamPos) #0 {
entry:
  %nStreamPos.addr = alloca i32, align 4
  store i32 %nStreamPos, i32* %nStreamPos.addr, align 4, !tbaa !1
  %0 = load i32*, i32** @pVbrFrames, align 8, !tbaa !5
  %cmp = icmp eq i32* %0, null
  br i1 %cmp, label %if.then, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %entry
  %1 = load i32, i32* @nVbrFrameBufferSize, align 4, !tbaa !1
  %cmp1 = icmp eq i32 %1, 0
  br i1 %cmp1, label %if.then, label %if.end

if.then:                                          ; preds = %lor.lhs.false, %entry
  store i32 100, i32* @nVbrFrameBufferSize, align 4, !tbaa !1
  %2 = load i32, i32* @nVbrFrameBufferSize, align 4, !tbaa !1
  %conv = sext i32 %2 to i64
  %mul = mul i64 %conv, 4
  %call = call noalias i8* @malloc(i64 %mul) #2
  %3 = bitcast i8* %call to i32*
  store i32* %3, i32** @pVbrFrames, align 8, !tbaa !5
  br label %if.end

if.end:                                           ; preds = %if.then, %lor.lhs.false
  %4 = load i32, i32* @nVbrNumFrames, align 4, !tbaa !1
  %5 = load i32, i32* @nVbrFrameBufferSize, align 4, !tbaa !1
  %cmp2 = icmp eq i32 %4, %5
  br i1 %cmp2, label %if.then.4, label %if.end.9

if.then.4:                                        ; preds = %if.end
  %6 = load i32, i32* @nVbrFrameBufferSize, align 4, !tbaa !1
  %mul5 = mul nsw i32 %6, 2
  store i32 %mul5, i32* @nVbrFrameBufferSize, align 4, !tbaa !1
  %7 = load i32*, i32** @pVbrFrames, align 8, !tbaa !5
  %8 = bitcast i32* %7 to i8*
  %9 = load i32, i32* @nVbrFrameBufferSize, align 4, !tbaa !1
  %conv6 = sext i32 %9 to i64
  %mul7 = mul i64 %conv6, 4
  %call8 = call i8* @realloc(i8* %8, i64 %mul7) #2
  %10 = bitcast i8* %call8 to i32*
  store i32* %10, i32** @pVbrFrames, align 8, !tbaa !5
  br label %if.end.9

if.end.9:                                         ; preds = %if.then.4, %if.end
  %11 = load i32, i32* %nStreamPos.addr, align 4, !tbaa !1
  %12 = load i32, i32* @nVbrNumFrames, align 4, !tbaa !1
  %inc = add nsw i32 %12, 1
  store i32 %inc, i32* @nVbrNumFrames, align 4, !tbaa !1
  %idxprom = sext i32 %12 to i64
  %13 = load i32*, i32** @pVbrFrames, align 8, !tbaa !5
  %arrayidx = getelementptr inbounds i32, i32* %13, i64 %idxprom
  store i32 %11, i32* %arrayidx, align 4, !tbaa !1
  ret void
}

; Function Attrs: nounwind
declare noalias i8* @malloc(i64) #1

; Function Attrs: nounwind
declare i8* @realloc(i8*, i64) #1

; Function Attrs: nounwind uwtable
define void @CreateI4(i8* %buf, i32 %nValue) #0 {
entry:
  %buf.addr = alloca i8*, align 8
  %nValue.addr = alloca i32, align 4
  store i8* %buf, i8** %buf.addr, align 8, !tbaa !5
  store i32 %nValue, i32* %nValue.addr, align 4, !tbaa !1
  %0 = load i32, i32* %nValue.addr, align 4, !tbaa !1
  %shr = ashr i32 %0, 24
  %and = and i32 %shr, 255
  %conv = trunc i32 %and to i8
  %1 = load i8*, i8** %buf.addr, align 8, !tbaa !5
  %arrayidx = getelementptr inbounds i8, i8* %1, i64 0
  store i8 %conv, i8* %arrayidx, align 1, !tbaa !7
  %2 = load i32, i32* %nValue.addr, align 4, !tbaa !1
  %shr1 = ashr i32 %2, 16
  %and2 = and i32 %shr1, 255
  %conv3 = trunc i32 %and2 to i8
  %3 = load i8*, i8** %buf.addr, align 8, !tbaa !5
  %arrayidx4 = getelementptr inbounds i8, i8* %3, i64 1
  store i8 %conv3, i8* %arrayidx4, align 1, !tbaa !7
  %4 = load i32, i32* %nValue.addr, align 4, !tbaa !1
  %shr5 = ashr i32 %4, 8
  %and6 = and i32 %shr5, 255
  %conv7 = trunc i32 %and6 to i8
  %5 = load i8*, i8** %buf.addr, align 8, !tbaa !5
  %arrayidx8 = getelementptr inbounds i8, i8* %5, i64 2
  store i8 %conv7, i8* %arrayidx8, align 1, !tbaa !7
  %6 = load i32, i32* %nValue.addr, align 4, !tbaa !1
  %and9 = and i32 %6, 255
  %conv10 = trunc i32 %and9 to i8
  %7 = load i8*, i8** %buf.addr, align 8, !tbaa !5
  %arrayidx11 = getelementptr inbounds i8, i8* %7, i64 3
  store i8 %conv10, i8* %arrayidx11, align 1, !tbaa !7
  ret void
}

; Function Attrs: nounwind uwtable
define i32 @CheckVbrTag(i8* %buf) #0 {
entry:
  %retval = alloca i32, align 4
  %buf.addr = alloca i8*, align 8
  %h_id = alloca i32, align 4
  %h_mode = alloca i32, align 4
  %h_sr_index = alloca i32, align 4
  %cleanup.dest.slot = alloca i32
  store i8* %buf, i8** %buf.addr, align 8, !tbaa !5
  %0 = bitcast i32* %h_id to i8*
  call void @llvm.lifetime.start(i64 4, i8* %0) #2
  %1 = bitcast i32* %h_mode to i8*
  call void @llvm.lifetime.start(i64 4, i8* %1) #2
  %2 = bitcast i32* %h_sr_index to i8*
  call void @llvm.lifetime.start(i64 4, i8* %2) #2
  %3 = load i8*, i8** %buf.addr, align 8, !tbaa !5
  %arrayidx = getelementptr inbounds i8, i8* %3, i64 1
  %4 = load i8, i8* %arrayidx, align 1, !tbaa !7
  %conv = zext i8 %4 to i32
  %shr = ashr i32 %conv, 3
  %and = and i32 %shr, 1
  store i32 %and, i32* %h_id, align 4, !tbaa !1
  %5 = load i8*, i8** %buf.addr, align 8, !tbaa !5
  %arrayidx1 = getelementptr inbounds i8, i8* %5, i64 2
  %6 = load i8, i8* %arrayidx1, align 1, !tbaa !7
  %conv2 = zext i8 %6 to i32
  %shr3 = ashr i32 %conv2, 2
  %and4 = and i32 %shr3, 3
  store i32 %and4, i32* %h_sr_index, align 4, !tbaa !1
  %7 = load i8*, i8** %buf.addr, align 8, !tbaa !5
  %arrayidx5 = getelementptr inbounds i8, i8* %7, i64 3
  %8 = load i8, i8* %arrayidx5, align 1, !tbaa !7
  %conv6 = zext i8 %8 to i32
  %shr7 = ashr i32 %conv6, 6
  %and8 = and i32 %shr7, 3
  store i32 %and8, i32* %h_mode, align 4, !tbaa !1
  %9 = load i32, i32* %h_id, align 4, !tbaa !1
  %tobool = icmp ne i32 %9, 0
  br i1 %tobool, label %if.then, label %if.else.12

if.then:                                          ; preds = %entry
  %10 = load i32, i32* %h_mode, align 4, !tbaa !1
  %cmp = icmp ne i32 %10, 3
  br i1 %cmp, label %if.then.10, label %if.else

if.then.10:                                       ; preds = %if.then
  %11 = load i8*, i8** %buf.addr, align 8, !tbaa !5
  %add.ptr = getelementptr inbounds i8, i8* %11, i64 36
  store i8* %add.ptr, i8** %buf.addr, align 8, !tbaa !5
  br label %if.end

if.else:                                          ; preds = %if.then
  %12 = load i8*, i8** %buf.addr, align 8, !tbaa !5
  %add.ptr11 = getelementptr inbounds i8, i8* %12, i64 21
  store i8* %add.ptr11, i8** %buf.addr, align 8, !tbaa !5
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then.10
  br label %if.end.20

if.else.12:                                       ; preds = %entry
  %13 = load i32, i32* %h_mode, align 4, !tbaa !1
  %cmp13 = icmp ne i32 %13, 3
  br i1 %cmp13, label %if.then.15, label %if.else.17

if.then.15:                                       ; preds = %if.else.12
  %14 = load i8*, i8** %buf.addr, align 8, !tbaa !5
  %add.ptr16 = getelementptr inbounds i8, i8* %14, i64 21
  store i8* %add.ptr16, i8** %buf.addr, align 8, !tbaa !5
  br label %if.end.19

if.else.17:                                       ; preds = %if.else.12
  %15 = load i8*, i8** %buf.addr, align 8, !tbaa !5
  %add.ptr18 = getelementptr inbounds i8, i8* %15, i64 13
  store i8* %add.ptr18, i8** %buf.addr, align 8, !tbaa !5
  br label %if.end.19

if.end.19:                                        ; preds = %if.else.17, %if.then.15
  br label %if.end.20

if.end.20:                                        ; preds = %if.end.19, %if.end
  %16 = load i8*, i8** %buf.addr, align 8, !tbaa !5
  %arrayidx21 = getelementptr inbounds i8, i8* %16, i64 0
  %17 = load i8, i8* %arrayidx21, align 1, !tbaa !7
  %conv22 = zext i8 %17 to i32
  %18 = load i8, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @VBRTag, i32 0, i64 0), align 1, !tbaa !7
  %conv23 = sext i8 %18 to i32
  %cmp24 = icmp ne i32 %conv22, %conv23
  br i1 %cmp24, label %if.then.26, label %if.end.27

if.then.26:                                       ; preds = %if.end.20
  store i32 0, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.27:                                        ; preds = %if.end.20
  %19 = load i8*, i8** %buf.addr, align 8, !tbaa !5
  %arrayidx28 = getelementptr inbounds i8, i8* %19, i64 1
  %20 = load i8, i8* %arrayidx28, align 1, !tbaa !7
  %conv29 = zext i8 %20 to i32
  %21 = load i8, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @VBRTag, i32 0, i64 1), align 1, !tbaa !7
  %conv30 = sext i8 %21 to i32
  %cmp31 = icmp ne i32 %conv29, %conv30
  br i1 %cmp31, label %if.then.33, label %if.end.34

if.then.33:                                       ; preds = %if.end.27
  store i32 0, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.34:                                        ; preds = %if.end.27
  %22 = load i8*, i8** %buf.addr, align 8, !tbaa !5
  %arrayidx35 = getelementptr inbounds i8, i8* %22, i64 2
  %23 = load i8, i8* %arrayidx35, align 1, !tbaa !7
  %conv36 = zext i8 %23 to i32
  %24 = load i8, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @VBRTag, i32 0, i64 2), align 1, !tbaa !7
  %conv37 = sext i8 %24 to i32
  %cmp38 = icmp ne i32 %conv36, %conv37
  br i1 %cmp38, label %if.then.40, label %if.end.41

if.then.40:                                       ; preds = %if.end.34
  store i32 0, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.41:                                        ; preds = %if.end.34
  %25 = load i8*, i8** %buf.addr, align 8, !tbaa !5
  %arrayidx42 = getelementptr inbounds i8, i8* %25, i64 3
  %26 = load i8, i8* %arrayidx42, align 1, !tbaa !7
  %conv43 = zext i8 %26 to i32
  %27 = load i8, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @VBRTag, i32 0, i64 3), align 1, !tbaa !7
  %conv44 = sext i8 %27 to i32
  %cmp45 = icmp ne i32 %conv43, %conv44
  br i1 %cmp45, label %if.then.47, label %if.end.48

if.then.47:                                       ; preds = %if.end.41
  store i32 0, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.48:                                        ; preds = %if.end.41
  store i32 1, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %if.end.48, %if.then.47, %if.then.40, %if.then.33, %if.then.26
  %28 = bitcast i32* %h_sr_index to i8*
  call void @llvm.lifetime.end(i64 4, i8* %28) #2
  %29 = bitcast i32* %h_mode to i8*
  call void @llvm.lifetime.end(i64 4, i8* %29) #2
  %30 = bitcast i32* %h_id to i8*
  call void @llvm.lifetime.end(i64 4, i8* %30) #2
  %31 = load i32, i32* %retval
  ret i32 %31
}

; Function Attrs: nounwind
declare void @llvm.lifetime.start(i64, i8* nocapture) #2

; Function Attrs: nounwind
declare void @llvm.lifetime.end(i64, i8* nocapture) #2

; Function Attrs: nounwind uwtable
define i32 @GetVbrTag(%struct.VBRTAGDATA* %pTagData, i8* %buf) #0 {
entry:
  %retval = alloca i32, align 4
  %pTagData.addr = alloca %struct.VBRTAGDATA*, align 8
  %buf.addr = alloca i8*, align 8
  %i = alloca i32, align 4
  %head_flags = alloca i32, align 4
  %h_id = alloca i32, align 4
  %h_mode = alloca i32, align 4
  %h_sr_index = alloca i32, align 4
  %cleanup.dest.slot = alloca i32
  store %struct.VBRTAGDATA* %pTagData, %struct.VBRTAGDATA** %pTagData.addr, align 8, !tbaa !5
  store i8* %buf, i8** %buf.addr, align 8, !tbaa !5
  %0 = bitcast i32* %i to i8*
  call void @llvm.lifetime.start(i64 4, i8* %0) #2
  %1 = bitcast i32* %head_flags to i8*
  call void @llvm.lifetime.start(i64 4, i8* %1) #2
  %2 = bitcast i32* %h_id to i8*
  call void @llvm.lifetime.start(i64 4, i8* %2) #2
  %3 = bitcast i32* %h_mode to i8*
  call void @llvm.lifetime.start(i64 4, i8* %3) #2
  %4 = bitcast i32* %h_sr_index to i8*
  call void @llvm.lifetime.start(i64 4, i8* %4) #2
  %5 = load %struct.VBRTAGDATA*, %struct.VBRTAGDATA** %pTagData.addr, align 8, !tbaa !5
  %flags = getelementptr inbounds %struct.VBRTAGDATA, %struct.VBRTAGDATA* %5, i32 0, i32 2
  store i32 0, i32* %flags, align 4, !tbaa !8
  %6 = load i8*, i8** %buf.addr, align 8, !tbaa !5
  %arrayidx = getelementptr inbounds i8, i8* %6, i64 1
  %7 = load i8, i8* %arrayidx, align 1, !tbaa !7
  %conv = zext i8 %7 to i32
  %shr = ashr i32 %conv, 3
  %and = and i32 %shr, 1
  store i32 %and, i32* %h_id, align 4, !tbaa !1
  %8 = load i8*, i8** %buf.addr, align 8, !tbaa !5
  %arrayidx1 = getelementptr inbounds i8, i8* %8, i64 2
  %9 = load i8, i8* %arrayidx1, align 1, !tbaa !7
  %conv2 = zext i8 %9 to i32
  %shr3 = ashr i32 %conv2, 2
  %and4 = and i32 %shr3, 3
  store i32 %and4, i32* %h_sr_index, align 4, !tbaa !1
  %10 = load i8*, i8** %buf.addr, align 8, !tbaa !5
  %arrayidx5 = getelementptr inbounds i8, i8* %10, i64 3
  %11 = load i8, i8* %arrayidx5, align 1, !tbaa !7
  %conv6 = zext i8 %11 to i32
  %shr7 = ashr i32 %conv6, 6
  %and8 = and i32 %shr7, 3
  store i32 %and8, i32* %h_mode, align 4, !tbaa !1
  %12 = load i32, i32* %h_id, align 4, !tbaa !1
  %tobool = icmp ne i32 %12, 0
  br i1 %tobool, label %if.then, label %if.else.12

if.then:                                          ; preds = %entry
  %13 = load i32, i32* %h_mode, align 4, !tbaa !1
  %cmp = icmp ne i32 %13, 3
  br i1 %cmp, label %if.then.10, label %if.else

if.then.10:                                       ; preds = %if.then
  %14 = load i8*, i8** %buf.addr, align 8, !tbaa !5
  %add.ptr = getelementptr inbounds i8, i8* %14, i64 36
  store i8* %add.ptr, i8** %buf.addr, align 8, !tbaa !5
  br label %if.end

if.else:                                          ; preds = %if.then
  %15 = load i8*, i8** %buf.addr, align 8, !tbaa !5
  %add.ptr11 = getelementptr inbounds i8, i8* %15, i64 21
  store i8* %add.ptr11, i8** %buf.addr, align 8, !tbaa !5
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then.10
  br label %if.end.20

if.else.12:                                       ; preds = %entry
  %16 = load i32, i32* %h_mode, align 4, !tbaa !1
  %cmp13 = icmp ne i32 %16, 3
  br i1 %cmp13, label %if.then.15, label %if.else.17

if.then.15:                                       ; preds = %if.else.12
  %17 = load i8*, i8** %buf.addr, align 8, !tbaa !5
  %add.ptr16 = getelementptr inbounds i8, i8* %17, i64 21
  store i8* %add.ptr16, i8** %buf.addr, align 8, !tbaa !5
  br label %if.end.19

if.else.17:                                       ; preds = %if.else.12
  %18 = load i8*, i8** %buf.addr, align 8, !tbaa !5
  %add.ptr18 = getelementptr inbounds i8, i8* %18, i64 13
  store i8* %add.ptr18, i8** %buf.addr, align 8, !tbaa !5
  br label %if.end.19

if.end.19:                                        ; preds = %if.else.17, %if.then.15
  br label %if.end.20

if.end.20:                                        ; preds = %if.end.19, %if.end
  %19 = load i8*, i8** %buf.addr, align 8, !tbaa !5
  %arrayidx21 = getelementptr inbounds i8, i8* %19, i64 0
  %20 = load i8, i8* %arrayidx21, align 1, !tbaa !7
  %conv22 = zext i8 %20 to i32
  %21 = load i8, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @VBRTag, i32 0, i64 0), align 1, !tbaa !7
  %conv23 = sext i8 %21 to i32
  %cmp24 = icmp ne i32 %conv22, %conv23
  br i1 %cmp24, label %if.then.26, label %if.end.27

if.then.26:                                       ; preds = %if.end.20
  store i32 0, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.27:                                        ; preds = %if.end.20
  %22 = load i8*, i8** %buf.addr, align 8, !tbaa !5
  %arrayidx28 = getelementptr inbounds i8, i8* %22, i64 1
  %23 = load i8, i8* %arrayidx28, align 1, !tbaa !7
  %conv29 = zext i8 %23 to i32
  %24 = load i8, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @VBRTag, i32 0, i64 1), align 1, !tbaa !7
  %conv30 = sext i8 %24 to i32
  %cmp31 = icmp ne i32 %conv29, %conv30
  br i1 %cmp31, label %if.then.33, label %if.end.34

if.then.33:                                       ; preds = %if.end.27
  store i32 0, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.34:                                        ; preds = %if.end.27
  %25 = load i8*, i8** %buf.addr, align 8, !tbaa !5
  %arrayidx35 = getelementptr inbounds i8, i8* %25, i64 2
  %26 = load i8, i8* %arrayidx35, align 1, !tbaa !7
  %conv36 = zext i8 %26 to i32
  %27 = load i8, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @VBRTag, i32 0, i64 2), align 1, !tbaa !7
  %conv37 = sext i8 %27 to i32
  %cmp38 = icmp ne i32 %conv36, %conv37
  br i1 %cmp38, label %if.then.40, label %if.end.41

if.then.40:                                       ; preds = %if.end.34
  store i32 0, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.41:                                        ; preds = %if.end.34
  %28 = load i8*, i8** %buf.addr, align 8, !tbaa !5
  %arrayidx42 = getelementptr inbounds i8, i8* %28, i64 3
  %29 = load i8, i8* %arrayidx42, align 1, !tbaa !7
  %conv43 = zext i8 %29 to i32
  %30 = load i8, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @VBRTag, i32 0, i64 3), align 1, !tbaa !7
  %conv44 = sext i8 %30 to i32
  %cmp45 = icmp ne i32 %conv43, %conv44
  br i1 %cmp45, label %if.then.47, label %if.end.48

if.then.47:                                       ; preds = %if.end.41
  store i32 0, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.48:                                        ; preds = %if.end.41
  %31 = load i8*, i8** %buf.addr, align 8, !tbaa !5
  %add.ptr49 = getelementptr inbounds i8, i8* %31, i64 4
  store i8* %add.ptr49, i8** %buf.addr, align 8, !tbaa !5
  %32 = load i32, i32* %h_id, align 4, !tbaa !1
  %33 = load %struct.VBRTAGDATA*, %struct.VBRTAGDATA** %pTagData.addr, align 8, !tbaa !5
  %h_id50 = getelementptr inbounds %struct.VBRTAGDATA, %struct.VBRTAGDATA* %33, i32 0, i32 0
  store i32 %32, i32* %h_id50, align 4, !tbaa !10
  %34 = load i32, i32* %h_sr_index, align 4, !tbaa !1
  %idxprom = sext i32 %34 to i64
  %arrayidx51 = getelementptr inbounds [4 x i32], [4 x i32]* @GetVbrTag.sr_table, i32 0, i64 %idxprom
  %35 = load i32, i32* %arrayidx51, align 4, !tbaa !1
  %36 = load %struct.VBRTAGDATA*, %struct.VBRTAGDATA** %pTagData.addr, align 8, !tbaa !5
  %samprate = getelementptr inbounds %struct.VBRTAGDATA, %struct.VBRTAGDATA* %36, i32 0, i32 1
  store i32 %35, i32* %samprate, align 4, !tbaa !11
  %37 = load i32, i32* %h_id, align 4, !tbaa !1
  %cmp52 = icmp eq i32 %37, 0
  br i1 %cmp52, label %if.then.54, label %if.end.57

if.then.54:                                       ; preds = %if.end.48
  %38 = load %struct.VBRTAGDATA*, %struct.VBRTAGDATA** %pTagData.addr, align 8, !tbaa !5
  %samprate55 = getelementptr inbounds %struct.VBRTAGDATA, %struct.VBRTAGDATA* %38, i32 0, i32 1
  %39 = load i32, i32* %samprate55, align 4, !tbaa !11
  %shr56 = ashr i32 %39, 1
  store i32 %shr56, i32* %samprate55, align 4, !tbaa !11
  br label %if.end.57

if.end.57:                                        ; preds = %if.then.54, %if.end.48
  %40 = load i8*, i8** %buf.addr, align 8, !tbaa !5
  %call = call i32 @ExtractI4(i8* %40)
  %41 = load %struct.VBRTAGDATA*, %struct.VBRTAGDATA** %pTagData.addr, align 8, !tbaa !5
  %flags58 = getelementptr inbounds %struct.VBRTAGDATA, %struct.VBRTAGDATA* %41, i32 0, i32 2
  store i32 %call, i32* %flags58, align 4, !tbaa !8
  store i32 %call, i32* %head_flags, align 4, !tbaa !1
  %42 = load i8*, i8** %buf.addr, align 8, !tbaa !5
  %add.ptr59 = getelementptr inbounds i8, i8* %42, i64 4
  store i8* %add.ptr59, i8** %buf.addr, align 8, !tbaa !5
  %43 = load i32, i32* %head_flags, align 4, !tbaa !1
  %and60 = and i32 %43, 1
  %tobool61 = icmp ne i32 %and60, 0
  br i1 %tobool61, label %if.then.62, label %if.end.65

if.then.62:                                       ; preds = %if.end.57
  %44 = load i8*, i8** %buf.addr, align 8, !tbaa !5
  %call63 = call i32 @ExtractI4(i8* %44)
  %45 = load %struct.VBRTAGDATA*, %struct.VBRTAGDATA** %pTagData.addr, align 8, !tbaa !5
  %frames = getelementptr inbounds %struct.VBRTAGDATA, %struct.VBRTAGDATA* %45, i32 0, i32 3
  store i32 %call63, i32* %frames, align 4, !tbaa !12
  %46 = load i8*, i8** %buf.addr, align 8, !tbaa !5
  %add.ptr64 = getelementptr inbounds i8, i8* %46, i64 4
  store i8* %add.ptr64, i8** %buf.addr, align 8, !tbaa !5
  br label %if.end.65

if.end.65:                                        ; preds = %if.then.62, %if.end.57
  %47 = load i32, i32* %head_flags, align 4, !tbaa !1
  %and66 = and i32 %47, 2
  %tobool67 = icmp ne i32 %and66, 0
  br i1 %tobool67, label %if.then.68, label %if.end.71

if.then.68:                                       ; preds = %if.end.65
  %48 = load i8*, i8** %buf.addr, align 8, !tbaa !5
  %call69 = call i32 @ExtractI4(i8* %48)
  %49 = load %struct.VBRTAGDATA*, %struct.VBRTAGDATA** %pTagData.addr, align 8, !tbaa !5
  %bytes = getelementptr inbounds %struct.VBRTAGDATA, %struct.VBRTAGDATA* %49, i32 0, i32 4
  store i32 %call69, i32* %bytes, align 4, !tbaa !13
  %50 = load i8*, i8** %buf.addr, align 8, !tbaa !5
  %add.ptr70 = getelementptr inbounds i8, i8* %50, i64 4
  store i8* %add.ptr70, i8** %buf.addr, align 8, !tbaa !5
  br label %if.end.71

if.end.71:                                        ; preds = %if.then.68, %if.end.65
  %51 = load i32, i32* %head_flags, align 4, !tbaa !1
  %and72 = and i32 %51, 4
  %tobool73 = icmp ne i32 %and72, 0
  br i1 %tobool73, label %if.then.74, label %if.end.87

if.then.74:                                       ; preds = %if.end.71
  %52 = load %struct.VBRTAGDATA*, %struct.VBRTAGDATA** %pTagData.addr, align 8, !tbaa !5
  %toc = getelementptr inbounds %struct.VBRTAGDATA, %struct.VBRTAGDATA* %52, i32 0, i32 6
  %arraydecay = getelementptr inbounds [100 x i8], [100 x i8]* %toc, i32 0, i32 0
  %cmp75 = icmp ne i8* %arraydecay, null
  br i1 %cmp75, label %if.then.77, label %if.end.85

if.then.77:                                       ; preds = %if.then.74
  store i32 0, i32* %i, align 4, !tbaa !1
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.then.77
  %53 = load i32, i32* %i, align 4, !tbaa !1
  %cmp78 = icmp slt i32 %53, 100
  br i1 %cmp78, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %54 = load i32, i32* %i, align 4, !tbaa !1
  %idxprom80 = sext i32 %54 to i64
  %55 = load i8*, i8** %buf.addr, align 8, !tbaa !5
  %arrayidx81 = getelementptr inbounds i8, i8* %55, i64 %idxprom80
  %56 = load i8, i8* %arrayidx81, align 1, !tbaa !7
  %57 = load i32, i32* %i, align 4, !tbaa !1
  %idxprom82 = sext i32 %57 to i64
  %58 = load %struct.VBRTAGDATA*, %struct.VBRTAGDATA** %pTagData.addr, align 8, !tbaa !5
  %toc83 = getelementptr inbounds %struct.VBRTAGDATA, %struct.VBRTAGDATA* %58, i32 0, i32 6
  %arrayidx84 = getelementptr inbounds [100 x i8], [100 x i8]* %toc83, i32 0, i64 %idxprom82
  store i8 %56, i8* %arrayidx84, align 1, !tbaa !7
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %59 = load i32, i32* %i, align 4, !tbaa !1
  %inc = add nsw i32 %59, 1
  store i32 %inc, i32* %i, align 4, !tbaa !1
  br label %for.cond

for.end:                                          ; preds = %for.cond
  br label %if.end.85

if.end.85:                                        ; preds = %for.end, %if.then.74
  %60 = load i8*, i8** %buf.addr, align 8, !tbaa !5
  %add.ptr86 = getelementptr inbounds i8, i8* %60, i64 100
  store i8* %add.ptr86, i8** %buf.addr, align 8, !tbaa !5
  br label %if.end.87

if.end.87:                                        ; preds = %if.end.85, %if.end.71
  %61 = load %struct.VBRTAGDATA*, %struct.VBRTAGDATA** %pTagData.addr, align 8, !tbaa !5
  %vbr_scale = getelementptr inbounds %struct.VBRTAGDATA, %struct.VBRTAGDATA* %61, i32 0, i32 5
  store i32 -1, i32* %vbr_scale, align 4, !tbaa !14
  %62 = load i32, i32* %head_flags, align 4, !tbaa !1
  %and88 = and i32 %62, 8
  %tobool89 = icmp ne i32 %and88, 0
  br i1 %tobool89, label %if.then.90, label %if.end.94

if.then.90:                                       ; preds = %if.end.87
  %63 = load i8*, i8** %buf.addr, align 8, !tbaa !5
  %call91 = call i32 @ExtractI4(i8* %63)
  %64 = load %struct.VBRTAGDATA*, %struct.VBRTAGDATA** %pTagData.addr, align 8, !tbaa !5
  %vbr_scale92 = getelementptr inbounds %struct.VBRTAGDATA, %struct.VBRTAGDATA* %64, i32 0, i32 5
  store i32 %call91, i32* %vbr_scale92, align 4, !tbaa !14
  %65 = load i8*, i8** %buf.addr, align 8, !tbaa !5
  %add.ptr93 = getelementptr inbounds i8, i8* %65, i64 4
  store i8* %add.ptr93, i8** %buf.addr, align 8, !tbaa !5
  br label %if.end.94

if.end.94:                                        ; preds = %if.then.90, %if.end.87
  store i32 1, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %if.end.94, %if.then.47, %if.then.40, %if.then.33, %if.then.26
  %66 = bitcast i32* %h_sr_index to i8*
  call void @llvm.lifetime.end(i64 4, i8* %66) #2
  %67 = bitcast i32* %h_mode to i8*
  call void @llvm.lifetime.end(i64 4, i8* %67) #2
  %68 = bitcast i32* %h_id to i8*
  call void @llvm.lifetime.end(i64 4, i8* %68) #2
  %69 = bitcast i32* %head_flags to i8*
  call void @llvm.lifetime.end(i64 4, i8* %69) #2
  %70 = bitcast i32* %i to i8*
  call void @llvm.lifetime.end(i64 4, i8* %70) #2
  %71 = load i32, i32* %retval
  ret i32 %71
}

; Function Attrs: nounwind uwtable
define internal i32 @ExtractI4(i8* %buf) #0 {
entry:
  %buf.addr = alloca i8*, align 8
  %x = alloca i32, align 4
  store i8* %buf, i8** %buf.addr, align 8, !tbaa !5
  %0 = bitcast i32* %x to i8*
  call void @llvm.lifetime.start(i64 4, i8* %0) #2
  %1 = load i8*, i8** %buf.addr, align 8, !tbaa !5
  %arrayidx = getelementptr inbounds i8, i8* %1, i64 0
  %2 = load i8, i8* %arrayidx, align 1, !tbaa !7
  %conv = zext i8 %2 to i32
  store i32 %conv, i32* %x, align 4, !tbaa !1
  %3 = load i32, i32* %x, align 4, !tbaa !1
  %shl = shl i32 %3, 8
  store i32 %shl, i32* %x, align 4, !tbaa !1
  %4 = load i8*, i8** %buf.addr, align 8, !tbaa !5
  %arrayidx1 = getelementptr inbounds i8, i8* %4, i64 1
  %5 = load i8, i8* %arrayidx1, align 1, !tbaa !7
  %conv2 = zext i8 %5 to i32
  %6 = load i32, i32* %x, align 4, !tbaa !1
  %or = or i32 %6, %conv2
  store i32 %or, i32* %x, align 4, !tbaa !1
  %7 = load i32, i32* %x, align 4, !tbaa !1
  %shl3 = shl i32 %7, 8
  store i32 %shl3, i32* %x, align 4, !tbaa !1
  %8 = load i8*, i8** %buf.addr, align 8, !tbaa !5
  %arrayidx4 = getelementptr inbounds i8, i8* %8, i64 2
  %9 = load i8, i8* %arrayidx4, align 1, !tbaa !7
  %conv5 = zext i8 %9 to i32
  %10 = load i32, i32* %x, align 4, !tbaa !1
  %or6 = or i32 %10, %conv5
  store i32 %or6, i32* %x, align 4, !tbaa !1
  %11 = load i32, i32* %x, align 4, !tbaa !1
  %shl7 = shl i32 %11, 8
  store i32 %shl7, i32* %x, align 4, !tbaa !1
  %12 = load i8*, i8** %buf.addr, align 8, !tbaa !5
  %arrayidx8 = getelementptr inbounds i8, i8* %12, i64 3
  %13 = load i8, i8* %arrayidx8, align 1, !tbaa !7
  %conv9 = zext i8 %13 to i32
  %14 = load i32, i32* %x, align 4, !tbaa !1
  %or10 = or i32 %14, %conv9
  store i32 %or10, i32* %x, align 4, !tbaa !1
  %15 = load i32, i32* %x, align 4, !tbaa !1
  %16 = bitcast i32* %x to i8*
  call void @llvm.lifetime.end(i64 4, i8* %16) #2
  ret i32 %15
}

; Function Attrs: nounwind uwtable
define i32 @InitVbrTag(%struct.bit_stream_struc* %pBs, i32 %nVersion, i32 %nMode, i32 %SampIndex) #0 {
entry:
  %pBs.addr = alloca %struct.bit_stream_struc*, align 8
  %nVersion.addr = alloca i32, align 4
  %nMode.addr = alloca i32, align 4
  %SampIndex.addr = alloca i32, align 4
  %i = alloca i32, align 4
  %tot = alloca i32, align 4
  store %struct.bit_stream_struc* %pBs, %struct.bit_stream_struc** %pBs.addr, align 8, !tbaa !5
  store i32 %nVersion, i32* %nVersion.addr, align 4, !tbaa !1
  store i32 %nMode, i32* %nMode.addr, align 4, !tbaa !1
  store i32 %SampIndex, i32* %SampIndex.addr, align 4, !tbaa !1
  %0 = bitcast i32* %i to i8*
  call void @llvm.lifetime.start(i64 4, i8* %0) #2
  store i32* null, i32** @pVbrFrames, align 8, !tbaa !5
  store i32 0, i32* @nVbrNumFrames, align 4, !tbaa !1
  store i32 0, i32* @nVbrFrameBufferSize, align 4, !tbaa !1
  call void @llvm.memset.p0i8.i64(i8* bitcast ([100 x i64]* @g_Position to i8*), i8 0, i64 800, i32 16, i1 false)
  call void @llvm.memset.p0i8.i64(i8* getelementptr inbounds ([216 x i8], [216 x i8]* @pbtStreamBuffer, i32 0, i32 0), i8 0, i64 216, i32 16, i1 false)
  store i32 0, i32* %i, align 4, !tbaa !1
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %1 = load i32, i32* %i, align 4, !tbaa !1
  %cmp = icmp slt i32 %1, 100
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %2 = load i32, i32* %i, align 4, !tbaa !1
  %idxprom = sext i32 %2 to i64
  %arrayidx = getelementptr inbounds [100 x i64], [100 x i64]* @g_Position, i32 0, i64 %idxprom
  store i64 -1, i64* %arrayidx, align 8, !tbaa !15
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %3 = load i32, i32* %i, align 4, !tbaa !1
  %inc = add nsw i32 %3, 1
  store i32 %inc, i32* %i, align 4, !tbaa !1
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %4 = load i32, i32* %nMode.addr, align 4, !tbaa !1
  %cmp1 = icmp eq i32 %4, 3
  br i1 %cmp1, label %if.then, label %if.else

if.then:                                          ; preds = %for.end
  %5 = load i32, i32* %nVersion.addr, align 4, !tbaa !1
  %idxprom2 = sext i32 %5 to i64
  %arrayidx3 = getelementptr inbounds [2 x [2 x i32]], [2 x [2 x i32]]* @SizeOfEmptyFrame, i32 0, i64 %idxprom2
  %arrayidx4 = getelementptr inbounds [2 x i32], [2 x i32]* %arrayidx3, i32 0, i64 1
  %6 = load i32, i32* %arrayidx4, align 4, !tbaa !1
  %add = add nsw i32 %6, 4
  store i32 %add, i32* @nZeroStreamSize, align 4, !tbaa !1
  br label %if.end

if.else:                                          ; preds = %for.end
  %7 = load i32, i32* %nVersion.addr, align 4, !tbaa !1
  %idxprom5 = sext i32 %7 to i64
  %arrayidx6 = getelementptr inbounds [2 x [2 x i32]], [2 x [2 x i32]]* @SizeOfEmptyFrame, i32 0, i64 %idxprom5
  %arrayidx7 = getelementptr inbounds [2 x i32], [2 x i32]* %arrayidx6, i32 0, i64 0
  %8 = load i32, i32* %arrayidx7, align 4, !tbaa !1
  %add8 = add nsw i32 %8, 4
  store i32 %add8, i32* @nZeroStreamSize, align 4, !tbaa !1
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %9 = bitcast i32* %tot to i8*
  call void @llvm.lifetime.start(i64 4, i8* %9) #2
  %10 = load i32, i32* %SampIndex.addr, align 4, !tbaa !1
  %cmp9 = icmp sgt i32 %10, 2
  br i1 %cmp9, label %if.then.10, label %if.end.11

if.then.10:                                       ; preds = %if.end
  %11 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !tbaa !5
  %call = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %11, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str, i32 0, i32 0))
  call void @exit(i32 -1) #6
  unreachable

if.end.11:                                        ; preds = %if.end
  %12 = load i32, i32* %SampIndex.addr, align 4, !tbaa !1
  %idxprom12 = sext i32 %12 to i64
  %arrayidx13 = getelementptr inbounds [3 x i32], [3 x i32]* @InitVbrTag.framesize, i32 0, i64 %idxprom12
  %13 = load i32, i32* %arrayidx13, align 4, !tbaa !1
  store i32 %13, i32* @TotalFrameSize, align 4, !tbaa !1
  %14 = load i32, i32* @nZeroStreamSize, align 4, !tbaa !1
  %add14 = add nsw i32 %14, 120
  store i32 %add14, i32* %tot, align 4, !tbaa !1
  %15 = load i32, i32* %tot, align 4, !tbaa !1
  %add15 = add nsw i32 %15, 20
  store i32 %add15, i32* %tot, align 4, !tbaa !1
  %16 = load i32, i32* @TotalFrameSize, align 4, !tbaa !1
  %17 = load i32, i32* %tot, align 4, !tbaa !1
  %cmp16 = icmp slt i32 %16, %17
  br i1 %cmp16, label %if.then.17, label %if.end.19

if.then.17:                                       ; preds = %if.end.11
  %18 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !tbaa !5
  %call18 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %18, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.1, i32 0, i32 0))
  call void @exit(i32 -1) #6
  unreachable

if.end.19:                                        ; preds = %if.end.11
  %19 = bitcast i32* %tot to i8*
  call void @llvm.lifetime.end(i64 4, i8* %19) #2
  store i32 0, i32* %i, align 4, !tbaa !1
  br label %for.cond.20

for.cond.20:                                      ; preds = %for.inc.23, %if.end.19
  %20 = load i32, i32* %i, align 4, !tbaa !1
  %21 = load i32, i32* @TotalFrameSize, align 4, !tbaa !1
  %cmp21 = icmp slt i32 %20, %21
  br i1 %cmp21, label %for.body.22, label %for.end.25

for.body.22:                                      ; preds = %for.cond.20
  %22 = load %struct.bit_stream_struc*, %struct.bit_stream_struc** %pBs.addr, align 8, !tbaa !5
  call void @putbits(%struct.bit_stream_struc* %22, i32 0, i32 8)
  br label %for.inc.23

for.inc.23:                                       ; preds = %for.body.22
  %23 = load i32, i32* %i, align 4, !tbaa !1
  %inc24 = add nsw i32 %23, 1
  store i32 %inc24, i32* %i, align 4, !tbaa !1
  br label %for.cond.20

for.end.25:                                       ; preds = %for.cond.20
  %24 = bitcast i32* %i to i8*
  call void @llvm.lifetime.end(i64 4, i8* %24) #2
  ret i32 0
}

; Function Attrs: nounwind
declare void @llvm.memset.p0i8.i64(i8* nocapture, i8, i64, i32, i1) #2

declare i32 @fprintf(%struct._IO_FILE*, i8*, ...) #3

; Function Attrs: noreturn nounwind
declare void @exit(i32) #4

declare void @putbits(%struct.bit_stream_struc*, i32, i32) #3

; Function Attrs: nounwind uwtable
define i32 @PutVbrTag(i8* %lpszFileName, i32 %nVbrScale, i32 %nVersion) #0 {
entry:
  %retval = alloca i32, align 4
  %lpszFileName.addr = alloca i8*, align 8
  %nVbrScale.addr = alloca i32, align 4
  %nVersion.addr = alloca i32, align 4
  %i = alloca i32, align 4
  %lFileSize = alloca i64, align 8
  %nStreamIndex = alloca i32, align 4
  %abyte = alloca i8, align 1
  %btToc = alloca [100 x i8], align 16
  %fpStream = alloca %struct._IO_FILE*, align 8
  %str1 = alloca [80 x i8], align 16
  %cleanup.dest.slot = alloca i32
  %frameNum = alloca i32, align 4
  %fRelStreamPos = alloca float, align 4
  store i8* %lpszFileName, i8** %lpszFileName.addr, align 8, !tbaa !5
  store i32 %nVbrScale, i32* %nVbrScale.addr, align 4, !tbaa !1
  store i32 %nVersion, i32* %nVersion.addr, align 4, !tbaa !1
  %0 = bitcast i32* %i to i8*
  call void @llvm.lifetime.start(i64 4, i8* %0) #2
  %1 = bitcast i64* %lFileSize to i8*
  call void @llvm.lifetime.start(i64 8, i8* %1) #2
  %2 = bitcast i32* %nStreamIndex to i8*
  call void @llvm.lifetime.start(i64 4, i8* %2) #2
  call void @llvm.lifetime.start(i64 1, i8* %abyte) #2
  %3 = bitcast [100 x i8]* %btToc to i8*
  call void @llvm.lifetime.start(i64 100, i8* %3) #2
  %4 = bitcast %struct._IO_FILE** %fpStream to i8*
  call void @llvm.lifetime.start(i64 8, i8* %4) #2
  %5 = bitcast [80 x i8]* %str1 to i8*
  call void @llvm.lifetime.start(i64 80, i8* %5) #2
  %6 = load i32, i32* @nVbrNumFrames, align 4, !tbaa !1
  %cmp = icmp eq i32 %6, 0
  br i1 %cmp, label %if.then, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %entry
  %7 = load i32*, i32** @pVbrFrames, align 8, !tbaa !5
  %cmp1 = icmp eq i32* %7, null
  br i1 %cmp1, label %if.then, label %if.end

if.then:                                          ; preds = %lor.lhs.false, %entry
  store i32 -1, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end:                                           ; preds = %lor.lhs.false
  %8 = load i8*, i8** %lpszFileName.addr, align 8, !tbaa !5
  %call = call %struct._IO_FILE* @fopen(i8* %8, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2, i32 0, i32 0))
  store %struct._IO_FILE* %call, %struct._IO_FILE** %fpStream, align 8, !tbaa !5
  %9 = load %struct._IO_FILE*, %struct._IO_FILE** %fpStream, align 8, !tbaa !5
  %cmp2 = icmp eq %struct._IO_FILE* %9, null
  br i1 %cmp2, label %if.then.3, label %if.end.4

if.then.3:                                        ; preds = %if.end
  store i32 -1, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.4:                                         ; preds = %if.end
  call void @llvm.memset.p0i8.i64(i8* getelementptr inbounds ([216 x i8], [216 x i8]* @pbtStreamBuffer, i32 0, i32 0), i8 0, i64 216, i32 16, i1 false)
  %10 = load %struct._IO_FILE*, %struct._IO_FILE** %fpStream, align 8, !tbaa !5
  %call5 = call i32 @fseek(%struct._IO_FILE* %10, i64 0, i32 2)
  %11 = load %struct._IO_FILE*, %struct._IO_FILE** %fpStream, align 8, !tbaa !5
  %call6 = call i64 @ftell(%struct._IO_FILE* %11)
  store i64 %call6, i64* %lFileSize, align 8, !tbaa !15
  %12 = load i64, i64* %lFileSize, align 8, !tbaa !15
  %cmp7 = icmp eq i64 %12, 0
  br i1 %cmp7, label %if.then.8, label %if.end.9

if.then.8:                                        ; preds = %if.end.4
  store i32 -1, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.9:                                         ; preds = %if.end.4
  %13 = load %struct._IO_FILE*, %struct._IO_FILE** %fpStream, align 8, !tbaa !5
  %14 = load i32, i32* @TotalFrameSize, align 4, !tbaa !1
  %conv = sext i32 %14 to i64
  %call10 = call i32 @fseek(%struct._IO_FILE* %13, i64 %conv, i32 0)
  %15 = load %struct._IO_FILE*, %struct._IO_FILE** %fpStream, align 8, !tbaa !5
  %call11 = call i64 @fread(i8* getelementptr inbounds ([216 x i8], [216 x i8]* @pbtStreamBuffer, i32 0, i32 0), i64 4, i64 1, %struct._IO_FILE* %15)
  store i8 -1, i8* getelementptr inbounds ([216 x i8], [216 x i8]* @pbtStreamBuffer, i32 0, i64 0), align 1, !tbaa !7
  %16 = load i32, i32* %nVersion.addr, align 4, !tbaa !1
  %cmp12 = icmp eq i32 %16, 0
  br i1 %cmp12, label %if.then.14, label %if.else

if.then.14:                                       ; preds = %if.end.9
  store i8 -5, i8* getelementptr inbounds ([216 x i8], [216 x i8]* @pbtStreamBuffer, i32 0, i64 1), align 1, !tbaa !7
  %17 = load i8, i8* getelementptr inbounds ([216 x i8], [216 x i8]* @pbtStreamBuffer, i32 0, i64 2), align 1, !tbaa !7
  %conv15 = zext i8 %17 to i32
  %and = and i32 %conv15, 12
  %conv16 = trunc i32 %and to i8
  store i8 %conv16, i8* %abyte, align 1, !tbaa !7
  %18 = load i8, i8* %abyte, align 1, !tbaa !7
  %conv17 = sext i8 %18 to i32
  %or = or i32 80, %conv17
  %conv18 = trunc i32 %or to i8
  store i8 %conv18, i8* getelementptr inbounds ([216 x i8], [216 x i8]* @pbtStreamBuffer, i32 0, i64 2), align 1, !tbaa !7
  br label %if.end.25

if.else:                                          ; preds = %if.end.9
  store i8 -13, i8* getelementptr inbounds ([216 x i8], [216 x i8]* @pbtStreamBuffer, i32 0, i64 1), align 1, !tbaa !7
  %19 = load i8, i8* getelementptr inbounds ([216 x i8], [216 x i8]* @pbtStreamBuffer, i32 0, i64 2), align 1, !tbaa !7
  %conv19 = zext i8 %19 to i32
  %and20 = and i32 %conv19, 12
  %conv21 = trunc i32 %and20 to i8
  store i8 %conv21, i8* %abyte, align 1, !tbaa !7
  %20 = load i8, i8* %abyte, align 1, !tbaa !7
  %conv22 = sext i8 %20 to i32
  %or23 = or i32 -128, %conv22
  %conv24 = trunc i32 %or23 to i8
  store i8 %conv24, i8* getelementptr inbounds ([216 x i8], [216 x i8]* @pbtStreamBuffer, i32 0, i64 2), align 1, !tbaa !7
  br label %if.end.25

if.end.25:                                        ; preds = %if.else, %if.then.14
  %21 = load %struct._IO_FILE*, %struct._IO_FILE** %fpStream, align 8, !tbaa !5
  %call26 = call i32 @fseek(%struct._IO_FILE* %21, i64 0, i32 0)
  %22 = bitcast [100 x i8]* %btToc to i8*
  call void @llvm.memset.p0i8.i64(i8* %22, i8 0, i64 100, i32 16, i1 false)
  store i32 1, i32* %i, align 4, !tbaa !1
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end.25
  %23 = load i32, i32* %i, align 4, !tbaa !1
  %cmp27 = icmp slt i32 %23, 100
  br i1 %cmp27, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %24 = bitcast i32* %frameNum to i8*
  call void @llvm.lifetime.start(i64 4, i8* %24) #2
  %25 = load i32, i32* %i, align 4, !tbaa !1
  %conv29 = sitofp i32 %25 to double
  %mul = fmul double 1.000000e-02, %conv29
  %26 = load i32, i32* @nVbrNumFrames, align 4, !tbaa !1
  %conv30 = sitofp i32 %26 to double
  %mul31 = fmul double %mul, %conv30
  %call32 = call double @floor(double %mul31) #7
  %conv33 = fptosi double %call32 to i32
  store i32 %conv33, i32* %frameNum, align 4, !tbaa !1
  %27 = bitcast float* %fRelStreamPos to i8*
  call void @llvm.lifetime.start(i64 4, i8* %27) #2
  %28 = load i32, i32* %frameNum, align 4, !tbaa !1
  %idxprom = sext i32 %28 to i64
  %29 = load i32*, i32** @pVbrFrames, align 8, !tbaa !5
  %arrayidx = getelementptr inbounds i32, i32* %29, i64 %idxprom
  %30 = load i32, i32* %arrayidx, align 4, !tbaa !1
  %conv34 = sitofp i32 %30 to float
  %mul35 = fmul float 2.560000e+02, %conv34
  %31 = load i64, i64* %lFileSize, align 8, !tbaa !15
  %conv36 = sitofp i64 %31 to float
  %div = fdiv float %mul35, %conv36
  store float %div, float* %fRelStreamPos, align 4, !tbaa !17
  %32 = load float, float* %fRelStreamPos, align 4, !tbaa !17
  %cmp37 = fcmp ogt float %32, 2.550000e+02
  br i1 %cmp37, label %if.then.39, label %if.end.40

if.then.39:                                       ; preds = %for.body
  store float 2.550000e+02, float* %fRelStreamPos, align 4, !tbaa !17
  br label %if.end.40

if.end.40:                                        ; preds = %if.then.39, %for.body
  %33 = load float, float* %fRelStreamPos, align 4, !tbaa !17
  %conv41 = fptoui float %33 to i8
  %34 = load i32, i32* %i, align 4, !tbaa !1
  %idxprom42 = sext i32 %34 to i64
  %arrayidx43 = getelementptr inbounds [100 x i8], [100 x i8]* %btToc, i32 0, i64 %idxprom42
  store i8 %conv41, i8* %arrayidx43, align 1, !tbaa !7
  %35 = bitcast float* %fRelStreamPos to i8*
  call void @llvm.lifetime.end(i64 4, i8* %35) #2
  %36 = bitcast i32* %frameNum to i8*
  call void @llvm.lifetime.end(i64 4, i8* %36) #2
  br label %for.inc

for.inc:                                          ; preds = %if.end.40
  %37 = load i32, i32* %i, align 4, !tbaa !1
  %inc = add nsw i32 %37, 1
  store i32 %inc, i32* %i, align 4, !tbaa !1
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %38 = load i32, i32* @nZeroStreamSize, align 4, !tbaa !1
  store i32 %38, i32* %nStreamIndex, align 4, !tbaa !1
  %39 = load i8, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @VBRTag, i32 0, i64 0), align 1, !tbaa !7
  %40 = load i32, i32* %nStreamIndex, align 4, !tbaa !1
  %inc44 = add nsw i32 %40, 1
  store i32 %inc44, i32* %nStreamIndex, align 4, !tbaa !1
  %idxprom45 = sext i32 %40 to i64
  %arrayidx46 = getelementptr inbounds [216 x i8], [216 x i8]* @pbtStreamBuffer, i32 0, i64 %idxprom45
  store i8 %39, i8* %arrayidx46, align 1, !tbaa !7
  %41 = load i8, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @VBRTag, i32 0, i64 1), align 1, !tbaa !7
  %42 = load i32, i32* %nStreamIndex, align 4, !tbaa !1
  %inc47 = add nsw i32 %42, 1
  store i32 %inc47, i32* %nStreamIndex, align 4, !tbaa !1
  %idxprom48 = sext i32 %42 to i64
  %arrayidx49 = getelementptr inbounds [216 x i8], [216 x i8]* @pbtStreamBuffer, i32 0, i64 %idxprom48
  store i8 %41, i8* %arrayidx49, align 1, !tbaa !7
  %43 = load i8, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @VBRTag, i32 0, i64 2), align 1, !tbaa !7
  %44 = load i32, i32* %nStreamIndex, align 4, !tbaa !1
  %inc50 = add nsw i32 %44, 1
  store i32 %inc50, i32* %nStreamIndex, align 4, !tbaa !1
  %idxprom51 = sext i32 %44 to i64
  %arrayidx52 = getelementptr inbounds [216 x i8], [216 x i8]* @pbtStreamBuffer, i32 0, i64 %idxprom51
  store i8 %43, i8* %arrayidx52, align 1, !tbaa !7
  %45 = load i8, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @VBRTag, i32 0, i64 3), align 1, !tbaa !7
  %46 = load i32, i32* %nStreamIndex, align 4, !tbaa !1
  %inc53 = add nsw i32 %46, 1
  store i32 %inc53, i32* %nStreamIndex, align 4, !tbaa !1
  %idxprom54 = sext i32 %46 to i64
  %arrayidx55 = getelementptr inbounds [216 x i8], [216 x i8]* @pbtStreamBuffer, i32 0, i64 %idxprom54
  store i8 %45, i8* %arrayidx55, align 1, !tbaa !7
  %47 = load i32, i32* %nStreamIndex, align 4, !tbaa !1
  %idxprom56 = sext i32 %47 to i64
  %arrayidx57 = getelementptr inbounds [216 x i8], [216 x i8]* @pbtStreamBuffer, i32 0, i64 %idxprom56
  call void @CreateI4(i8* %arrayidx57, i32 15)
  %48 = load i32, i32* %nStreamIndex, align 4, !tbaa !1
  %add = add nsw i32 %48, 4
  store i32 %add, i32* %nStreamIndex, align 4, !tbaa !1
  %49 = load i32, i32* %nStreamIndex, align 4, !tbaa !1
  %idxprom58 = sext i32 %49 to i64
  %arrayidx59 = getelementptr inbounds [216 x i8], [216 x i8]* @pbtStreamBuffer, i32 0, i64 %idxprom58
  %50 = load i32, i32* @nVbrNumFrames, align 4, !tbaa !1
  call void @CreateI4(i8* %arrayidx59, i32 %50)
  %51 = load i32, i32* %nStreamIndex, align 4, !tbaa !1
  %add60 = add nsw i32 %51, 4
  store i32 %add60, i32* %nStreamIndex, align 4, !tbaa !1
  %52 = load i32, i32* %nStreamIndex, align 4, !tbaa !1
  %idxprom61 = sext i32 %52 to i64
  %arrayidx62 = getelementptr inbounds [216 x i8], [216 x i8]* @pbtStreamBuffer, i32 0, i64 %idxprom61
  %53 = load i64, i64* %lFileSize, align 8, !tbaa !15
  %conv63 = trunc i64 %53 to i32
  call void @CreateI4(i8* %arrayidx62, i32 %conv63)
  %54 = load i32, i32* %nStreamIndex, align 4, !tbaa !1
  %add64 = add nsw i32 %54, 4
  store i32 %add64, i32* %nStreamIndex, align 4, !tbaa !1
  %55 = load i32, i32* %nStreamIndex, align 4, !tbaa !1
  %idxprom65 = sext i32 %55 to i64
  %arrayidx66 = getelementptr inbounds [216 x i8], [216 x i8]* @pbtStreamBuffer, i32 0, i64 %idxprom65
  %56 = bitcast [100 x i8]* %btToc to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %arrayidx66, i8* %56, i64 100, i32 1, i1 false)
  %57 = load i32, i32* %nStreamIndex, align 4, !tbaa !1
  %conv67 = sext i32 %57 to i64
  %add68 = add i64 %conv67, 100
  %conv69 = trunc i64 %add68 to i32
  store i32 %conv69, i32* %nStreamIndex, align 4, !tbaa !1
  %58 = load i32, i32* %nStreamIndex, align 4, !tbaa !1
  %idxprom70 = sext i32 %58 to i64
  %arrayidx71 = getelementptr inbounds [216 x i8], [216 x i8]* @pbtStreamBuffer, i32 0, i64 %idxprom70
  %59 = load i32, i32* %nVbrScale.addr, align 4, !tbaa !1
  call void @CreateI4(i8* %arrayidx71, i32 %59)
  %60 = load i32, i32* %nStreamIndex, align 4, !tbaa !1
  %add72 = add nsw i32 %60, 4
  store i32 %add72, i32* %nStreamIndex, align 4, !tbaa !1
  %arraydecay = getelementptr inbounds [80 x i8], [80 x i8]* %str1, i32 0, i32 0
  %call73 = call i8* @get_lame_version()
  %call74 = call i32 (i8*, i8*, ...) @sprintf(i8* %arraydecay, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.3, i32 0, i32 0), i8* %call73) #2
  %61 = load i32, i32* %nStreamIndex, align 4, !tbaa !1
  %idxprom75 = sext i32 %61 to i64
  %arrayidx76 = getelementptr inbounds [216 x i8], [216 x i8]* @pbtStreamBuffer, i32 0, i64 %idxprom75
  %arraydecay77 = getelementptr inbounds [80 x i8], [80 x i8]* %str1, i32 0, i32 0
  %call78 = call i8* @strncpy(i8* %arrayidx76, i8* %arraydecay77, i64 20) #2
  %62 = load i32, i32* %nStreamIndex, align 4, !tbaa !1
  %add79 = add nsw i32 %62, 20
  store i32 %add79, i32* %nStreamIndex, align 4, !tbaa !1
  %63 = load i32, i32* @TotalFrameSize, align 4, !tbaa !1
  %conv80 = sext i32 %63 to i64
  %64 = load %struct._IO_FILE*, %struct._IO_FILE** %fpStream, align 8, !tbaa !5
  %call81 = call i64 @fwrite(i8* getelementptr inbounds ([216 x i8], [216 x i8]* @pbtStreamBuffer, i32 0, i32 0), i64 %conv80, i64 1, %struct._IO_FILE* %64)
  %cmp82 = icmp ne i64 %call81, 1
  br i1 %cmp82, label %if.then.84, label %if.end.85

if.then.84:                                       ; preds = %for.end
  store i32 -1, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.85:                                        ; preds = %for.end
  %65 = load %struct._IO_FILE*, %struct._IO_FILE** %fpStream, align 8, !tbaa !5
  %call86 = call i32 @fclose(%struct._IO_FILE* %65)
  %66 = load i32*, i32** @pVbrFrames, align 8, !tbaa !5
  %67 = bitcast i32* %66 to i8*
  call void @free(i8* %67) #2
  store i32* null, i32** @pVbrFrames, align 8, !tbaa !5
  store i32 0, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %if.end.85, %if.then.84, %if.then.8, %if.then.3, %if.then
  %68 = bitcast [80 x i8]* %str1 to i8*
  call void @llvm.lifetime.end(i64 80, i8* %68) #2
  %69 = bitcast %struct._IO_FILE** %fpStream to i8*
  call void @llvm.lifetime.end(i64 8, i8* %69) #2
  %70 = bitcast [100 x i8]* %btToc to i8*
  call void @llvm.lifetime.end(i64 100, i8* %70) #2
  call void @llvm.lifetime.end(i64 1, i8* %abyte) #2
  %71 = bitcast i32* %nStreamIndex to i8*
  call void @llvm.lifetime.end(i64 4, i8* %71) #2
  %72 = bitcast i64* %lFileSize to i8*
  call void @llvm.lifetime.end(i64 8, i8* %72) #2
  %73 = bitcast i32* %i to i8*
  call void @llvm.lifetime.end(i64 4, i8* %73) #2
  %74 = load i32, i32* %retval
  ret i32 %74
}

declare %struct._IO_FILE* @fopen(i8*, i8*) #3

declare i32 @fseek(%struct._IO_FILE*, i64, i32) #3

declare i64 @ftell(%struct._IO_FILE*) #3

declare i64 @fread(i8*, i64, i64, %struct._IO_FILE*) #3

; Function Attrs: nounwind readnone
declare double @floor(double) #5

; Function Attrs: nounwind
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* nocapture, i8* nocapture readonly, i64, i32, i1) #2

; Function Attrs: nounwind
declare i32 @sprintf(i8*, i8*, ...) #1

declare i8* @get_lame_version() #3

; Function Attrs: nounwind
declare i8* @strncpy(i8*, i8*, i64) #1

declare i64 @fwrite(i8*, i64, i64, %struct._IO_FILE*) #3

declare i32 @fclose(%struct._IO_FILE*) #3

; Function Attrs: nounwind
declare void @free(i8*) #1

; Function Attrs: nounwind uwtable
define i32 @SeekPoint(i8* %TOC, i32 %file_bytes, float %percent) #0 {
entry:
  %TOC.addr = alloca i8*, align 8
  %file_bytes.addr = alloca i32, align 4
  %percent.addr = alloca float, align 4
  %a = alloca i32, align 4
  %seekpoint = alloca i32, align 4
  %fa = alloca float, align 4
  %fb = alloca float, align 4
  %fx = alloca float, align 4
  store i8* %TOC, i8** %TOC.addr, align 8, !tbaa !5
  store i32 %file_bytes, i32* %file_bytes.addr, align 4, !tbaa !1
  store float %percent, float* %percent.addr, align 4, !tbaa !17
  %0 = bitcast i32* %a to i8*
  call void @llvm.lifetime.start(i64 4, i8* %0) #2
  %1 = bitcast i32* %seekpoint to i8*
  call void @llvm.lifetime.start(i64 4, i8* %1) #2
  %2 = bitcast float* %fa to i8*
  call void @llvm.lifetime.start(i64 4, i8* %2) #2
  %3 = bitcast float* %fb to i8*
  call void @llvm.lifetime.start(i64 4, i8* %3) #2
  %4 = bitcast float* %fx to i8*
  call void @llvm.lifetime.start(i64 4, i8* %4) #2
  %5 = load float, float* %percent.addr, align 4, !tbaa !17
  %cmp = fcmp olt float %5, 0.000000e+00
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store float 0.000000e+00, float* %percent.addr, align 4, !tbaa !17
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %6 = load float, float* %percent.addr, align 4, !tbaa !17
  %cmp1 = fcmp ogt float %6, 1.000000e+02
  br i1 %cmp1, label %if.then.2, label %if.end.3

if.then.2:                                        ; preds = %if.end
  store float 1.000000e+02, float* %percent.addr, align 4, !tbaa !17
  br label %if.end.3

if.end.3:                                         ; preds = %if.then.2, %if.end
  %7 = load float, float* %percent.addr, align 4, !tbaa !17
  %conv = fptosi float %7 to i32
  store i32 %conv, i32* %a, align 4, !tbaa !1
  %8 = load i32, i32* %a, align 4, !tbaa !1
  %cmp4 = icmp sgt i32 %8, 99
  br i1 %cmp4, label %if.then.6, label %if.end.7

if.then.6:                                        ; preds = %if.end.3
  store i32 99, i32* %a, align 4, !tbaa !1
  br label %if.end.7

if.end.7:                                         ; preds = %if.then.6, %if.end.3
  %9 = load i32, i32* %a, align 4, !tbaa !1
  %idxprom = sext i32 %9 to i64
  %10 = load i8*, i8** %TOC.addr, align 8, !tbaa !5
  %arrayidx = getelementptr inbounds i8, i8* %10, i64 %idxprom
  %11 = load i8, i8* %arrayidx, align 1, !tbaa !7
  %conv8 = uitofp i8 %11 to float
  store float %conv8, float* %fa, align 4, !tbaa !17
  %12 = load i32, i32* %a, align 4, !tbaa !1
  %cmp9 = icmp slt i32 %12, 99
  br i1 %cmp9, label %if.then.11, label %if.else

if.then.11:                                       ; preds = %if.end.7
  %13 = load i32, i32* %a, align 4, !tbaa !1
  %add = add nsw i32 %13, 1
  %idxprom12 = sext i32 %add to i64
  %14 = load i8*, i8** %TOC.addr, align 8, !tbaa !5
  %arrayidx13 = getelementptr inbounds i8, i8* %14, i64 %idxprom12
  %15 = load i8, i8* %arrayidx13, align 1, !tbaa !7
  %conv14 = uitofp i8 %15 to float
  store float %conv14, float* %fb, align 4, !tbaa !17
  br label %if.end.15

if.else:                                          ; preds = %if.end.7
  store float 2.560000e+02, float* %fb, align 4, !tbaa !17
  br label %if.end.15

if.end.15:                                        ; preds = %if.else, %if.then.11
  %16 = load float, float* %fa, align 4, !tbaa !17
  %17 = load float, float* %fb, align 4, !tbaa !17
  %18 = load float, float* %fa, align 4, !tbaa !17
  %sub = fsub float %17, %18
  %19 = load float, float* %percent.addr, align 4, !tbaa !17
  %20 = load i32, i32* %a, align 4, !tbaa !1
  %conv16 = sitofp i32 %20 to float
  %sub17 = fsub float %19, %conv16
  %mul = fmul float %sub, %sub17
  %add18 = fadd float %16, %mul
  store float %add18, float* %fx, align 4, !tbaa !17
  %21 = load float, float* %fx, align 4, !tbaa !17
  %mul19 = fmul float 3.906250e-03, %21
  %22 = load i32, i32* %file_bytes.addr, align 4, !tbaa !1
  %conv20 = sitofp i32 %22 to float
  %mul21 = fmul float %mul19, %conv20
  %conv22 = fptosi float %mul21 to i32
  store i32 %conv22, i32* %seekpoint, align 4, !tbaa !1
  %23 = load i32, i32* %seekpoint, align 4, !tbaa !1
  %24 = bitcast float* %fx to i8*
  call void @llvm.lifetime.end(i64 4, i8* %24) #2
  %25 = bitcast float* %fb to i8*
  call void @llvm.lifetime.end(i64 4, i8* %25) #2
  %26 = bitcast float* %fa to i8*
  call void @llvm.lifetime.end(i64 4, i8* %26) #2
  %27 = bitcast i32* %seekpoint to i8*
  call void @llvm.lifetime.end(i64 4, i8* %27) #2
  %28 = bitcast i32* %a to i8*
  call void @llvm.lifetime.end(i64 4, i8* %28) #2
  ret i32 %23
}

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind }
attributes #3 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { noreturn nounwind "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #5 = { nounwind readnone "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #6 = { noreturn nounwind }
attributes #7 = { nounwind readnone }

!llvm.ident = !{!0}

!0 = !{!"clang version 3.7.0 (tags/RELEASE_370/final)"}
!1 = !{!2, !2, i64 0}
!2 = !{!"int", !3, i64 0}
!3 = !{!"omnipotent char", !4, i64 0}
!4 = !{!"Simple C/C++ TBAA"}
!5 = !{!6, !6, i64 0}
!6 = !{!"any pointer", !3, i64 0}
!7 = !{!3, !3, i64 0}
!8 = !{!9, !2, i64 8}
!9 = !{!"", !2, i64 0, !2, i64 4, !2, i64 8, !2, i64 12, !2, i64 16, !2, i64 20, !3, i64 24}
!10 = !{!9, !2, i64 0}
!11 = !{!9, !2, i64 4}
!12 = !{!9, !2, i64 12}
!13 = !{!9, !2, i64 16}
!14 = !{!9, !2, i64 20}
!15 = !{!16, !16, i64 0}
!16 = !{!"long", !3, i64 0}
!17 = !{!18, !18, i64 0}
!18 = !{!"float", !3, i64 0}
