; ModuleID = 'nal.c'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ImageParameters = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, float, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32**, i32**, i32, i32***, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [9 x [16 x [16 x i16]]], [5 x [16 x [16 x i16]]], [9 x [8 x [8 x i16]]], [2 x [4 x [16 x [16 x i16]]]], [16 x [16 x i16]], [16 x [16 x i32]], i32****, i32***, %struct.Picture*, %struct.Slice*, %struct.macroblock*, [1200 x %struct.syntaxelement], i32*, i32*, i32, i32, i32, i32, [4 x [4 x i32]], i32, i32, i32, i32, i32, double, i32, i32, i32, i32, i16******, i16******, i16******, i16******, [15 x i16], i32, i32, i32, i32, i32, i32, i32, i32, [6 x [15 x i32]], i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [1 x i32], i32, i32, [2 x i32], i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, %struct.DecRefPicMarking_s*, i32, i32, i32, i32, i32, double, i32, i32, i32, i32, i32, i32, i32, double*, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [2 x i32], i32, i32, i32 }
%struct.Picture = type { i32, i32, [100 x %struct.Slice*], i32, float, float, float }
%struct.Slice = type { i32, i32, i32, i32, i32, i32, %struct.datapartition*, %struct.MotionInfoContexts*, %struct.TextureInfoContexts*, %struct.RMPNIbuffer_s*, i32, i32*, i32*, i32*, i32, i32*, i32*, i32*, i32 (i32)*, [3 x [2 x i32]] }
%struct.datapartition = type { %struct.Bitstream*, %struct.EncodingEnvironment, i32 (%struct.syntaxelement*, %struct.datapartition*)* }
%struct.Bitstream = type { i32, i32, i8, i32, i32, i8, i8, i32, i32, i8*, i32 }
%struct.EncodingEnvironment = type { i32, i32, i32, i32, i32, i8*, i32*, i32, i32, i32, i32, i32, i8*, i32*, i32, i32, i32, i32, i32, i32 }
%struct.syntaxelement = type { i32, i32, i32, i32, i32, i32, i32, i32, void (i32, i32, i32*, i32*)*, void (%struct.syntaxelement*, %struct.EncodingEnvironment*)* }
%struct.MotionInfoContexts = type { [3 x [11 x %struct.BiContextType]], [2 x [9 x %struct.BiContextType]], [2 x [10 x %struct.BiContextType]], [2 x [6 x %struct.BiContextType]], [4 x %struct.BiContextType], [4 x %struct.BiContextType], [3 x %struct.BiContextType] }
%struct.BiContextType = type { i16, i8, i64 }
%struct.TextureInfoContexts = type { [2 x %struct.BiContextType], [4 x %struct.BiContextType], [3 x [4 x %struct.BiContextType]], [10 x [4 x %struct.BiContextType]], [10 x [15 x %struct.BiContextType]], [10 x [15 x %struct.BiContextType]], [10 x [5 x %struct.BiContextType]], [10 x [5 x %struct.BiContextType]], [10 x [15 x %struct.BiContextType]], [10 x [15 x %struct.BiContextType]] }
%struct.RMPNIbuffer_s = type { i32, i32, %struct.RMPNIbuffer_s* }
%struct.macroblock = type { i32, i32, i32, i32, i32, [8 x i32], %struct.macroblock*, %struct.macroblock*, i32, [2 x [4 x [4 x [2 x i32]]]], [16 x i32], [16 x i32], i32, i64, [4 x i32], [4 x i32], i64, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, double, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.DecRefPicMarking_s = type { i32, i32, i32, i32, i32, %struct.DecRefPicMarking_s* }
%struct.StatParameters = type { i32, i32, float, float, i32, i32, i32, i32, [5 x [2 x i32]], [5 x [15 x i32]], [5 x [15 x i32]], [4 x i32], i32*, i32*, i32, i32, i32, float, float, float, [5 x [15 x i32]], [5 x [15 x i32]], [5 x i32], [5 x i32], [5 x i32], [5 x i32], [5 x i32], [5 x i32], [5 x i32], i32, i32, i32*, i32, i32 }
%struct.InputParameters = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [8 x [2 x i32]], [8 x [2 x i32]], i32, i32, i32, i32, [200 x i8], [200 x i8], [200 x i8], [200 x i8], [200 x i8], i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [1024 x i8], i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, double, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [200 x i8], [200 x i8], i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [200 x i8], i32, i32, i32*, i32*, i8*, i32*, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [8 x i32], i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [6 x double], [200 x i8], i32 }

@NAL_Payload_buffer = internal global i8* null, align 8
@img = external global %struct.ImageParameters*, align 8
@stats = external global %struct.StatParameters*, align 8
@input = external global %struct.InputParameters*, align 8

; Function Attrs: nounwind uwtable
define void @SODBtoRBSP(%struct.Bitstream* %currStream) #0 {
entry:
  %currStream.addr = alloca %struct.Bitstream*, align 8
  store %struct.Bitstream* %currStream, %struct.Bitstream** %currStream.addr, align 8
  %0 = load %struct.Bitstream*, %struct.Bitstream** %currStream.addr, align 8
  %byte_buf = getelementptr inbounds %struct.Bitstream, %struct.Bitstream* %0, i32 0, i32 2
  %1 = load i8, i8* %byte_buf, align 1
  %conv = zext i8 %1 to i32
  %shl = shl i32 %conv, 1
  %conv1 = trunc i32 %shl to i8
  store i8 %conv1, i8* %byte_buf, align 1
  %2 = load %struct.Bitstream*, %struct.Bitstream** %currStream.addr, align 8
  %byte_buf2 = getelementptr inbounds %struct.Bitstream, %struct.Bitstream* %2, i32 0, i32 2
  %3 = load i8, i8* %byte_buf2, align 1
  %conv3 = zext i8 %3 to i32
  %or = or i32 %conv3, 1
  %conv4 = trunc i32 %or to i8
  store i8 %conv4, i8* %byte_buf2, align 1
  %4 = load %struct.Bitstream*, %struct.Bitstream** %currStream.addr, align 8
  %bits_to_go = getelementptr inbounds %struct.Bitstream, %struct.Bitstream* %4, i32 0, i32 1
  %5 = load i32, i32* %bits_to_go, align 4
  %dec = add nsw i32 %5, -1
  store i32 %dec, i32* %bits_to_go, align 4
  %6 = load %struct.Bitstream*, %struct.Bitstream** %currStream.addr, align 8
  %bits_to_go5 = getelementptr inbounds %struct.Bitstream, %struct.Bitstream* %6, i32 0, i32 1
  %7 = load i32, i32* %bits_to_go5, align 4
  %8 = load %struct.Bitstream*, %struct.Bitstream** %currStream.addr, align 8
  %byte_buf6 = getelementptr inbounds %struct.Bitstream, %struct.Bitstream* %8, i32 0, i32 2
  %9 = load i8, i8* %byte_buf6, align 1
  %conv7 = zext i8 %9 to i32
  %shl8 = shl i32 %conv7, %7
  %conv9 = trunc i32 %shl8 to i8
  store i8 %conv9, i8* %byte_buf6, align 1
  %10 = load %struct.Bitstream*, %struct.Bitstream** %currStream.addr, align 8
  %byte_buf10 = getelementptr inbounds %struct.Bitstream, %struct.Bitstream* %10, i32 0, i32 2
  %11 = load i8, i8* %byte_buf10, align 1
  %12 = load %struct.Bitstream*, %struct.Bitstream** %currStream.addr, align 8
  %byte_pos = getelementptr inbounds %struct.Bitstream, %struct.Bitstream* %12, i32 0, i32 0
  %13 = load i32, i32* %byte_pos, align 4
  %inc = add nsw i32 %13, 1
  store i32 %inc, i32* %byte_pos, align 4
  %idxprom = sext i32 %13 to i64
  %14 = load %struct.Bitstream*, %struct.Bitstream** %currStream.addr, align 8
  %streamBuffer = getelementptr inbounds %struct.Bitstream, %struct.Bitstream* %14, i32 0, i32 9
  %15 = load i8*, i8** %streamBuffer, align 8
  %arrayidx = getelementptr inbounds i8, i8* %15, i64 %idxprom
  store i8 %11, i8* %arrayidx, align 1
  %16 = load %struct.Bitstream*, %struct.Bitstream** %currStream.addr, align 8
  %bits_to_go11 = getelementptr inbounds %struct.Bitstream, %struct.Bitstream* %16, i32 0, i32 1
  store i32 8, i32* %bits_to_go11, align 4
  %17 = load %struct.Bitstream*, %struct.Bitstream** %currStream.addr, align 8
  %byte_buf12 = getelementptr inbounds %struct.Bitstream, %struct.Bitstream* %17, i32 0, i32 2
  store i8 0, i8* %byte_buf12, align 1
  ret void
}

; Function Attrs: nounwind uwtable
define i32 @RBSPtoEBSP(i8* %streamBuffer, i32 %begin_bytepos, i32 %end_bytepos, i32 %min_num_bytes) #0 {
entry:
  %streamBuffer.addr = alloca i8*, align 8
  %begin_bytepos.addr = alloca i32, align 4
  %end_bytepos.addr = alloca i32, align 4
  %min_num_bytes.addr = alloca i32, align 4
  %i = alloca i32, align 4
  %j = alloca i32, align 4
  %count = alloca i32, align 4
  store i8* %streamBuffer, i8** %streamBuffer.addr, align 8
  store i32 %begin_bytepos, i32* %begin_bytepos.addr, align 4
  store i32 %end_bytepos, i32* %end_bytepos.addr, align 4
  store i32 %min_num_bytes, i32* %min_num_bytes.addr, align 4
  %0 = load i32, i32* %begin_bytepos.addr, align 4
  store i32 %0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %1 = load i32, i32* %i, align 4
  %2 = load i32, i32* %end_bytepos.addr, align 4
  %cmp = icmp slt i32 %1, %2
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %3 = load i32, i32* %i, align 4
  %idxprom = sext i32 %3 to i64
  %4 = load i8*, i8** %streamBuffer.addr, align 8
  %arrayidx = getelementptr inbounds i8, i8* %4, i64 %idxprom
  %5 = load i8, i8* %arrayidx, align 1
  %6 = load i32, i32* %i, align 4
  %idxprom1 = sext i32 %6 to i64
  %7 = load i8*, i8** @NAL_Payload_buffer, align 8
  %arrayidx2 = getelementptr inbounds i8, i8* %7, i64 %idxprom1
  store i8 %5, i8* %arrayidx2, align 1
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %8 = load i32, i32* %i, align 4
  %inc = add nsw i32 %8, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  store i32 0, i32* %count, align 4
  %9 = load i32, i32* %begin_bytepos.addr, align 4
  store i32 %9, i32* %j, align 4
  %10 = load i32, i32* %begin_bytepos.addr, align 4
  store i32 %10, i32* %i, align 4
  br label %for.cond.3

for.cond.3:                                       ; preds = %for.inc.25, %for.end
  %11 = load i32, i32* %i, align 4
  %12 = load i32, i32* %end_bytepos.addr, align 4
  %cmp4 = icmp slt i32 %11, %12
  br i1 %cmp4, label %for.body.5, label %for.end.27

for.body.5:                                       ; preds = %for.cond.3
  %13 = load i32, i32* %count, align 4
  %cmp6 = icmp eq i32 %13, 2
  br i1 %cmp6, label %land.lhs.true, label %if.end

land.lhs.true:                                    ; preds = %for.body.5
  %14 = load i32, i32* %i, align 4
  %idxprom7 = sext i32 %14 to i64
  %15 = load i8*, i8** @NAL_Payload_buffer, align 8
  %arrayidx8 = getelementptr inbounds i8, i8* %15, i64 %idxprom7
  %16 = load i8, i8* %arrayidx8, align 1
  %conv = zext i8 %16 to i32
  %and = and i32 %conv, 252
  %tobool = icmp ne i32 %and, 0
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %land.lhs.true
  %17 = load i32, i32* %j, align 4
  %idxprom9 = sext i32 %17 to i64
  %18 = load i8*, i8** %streamBuffer.addr, align 8
  %arrayidx10 = getelementptr inbounds i8, i8* %18, i64 %idxprom9
  store i8 3, i8* %arrayidx10, align 1
  %19 = load i32, i32* %j, align 4
  %inc11 = add nsw i32 %19, 1
  store i32 %inc11, i32* %j, align 4
  store i32 0, i32* %count, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %land.lhs.true, %for.body.5
  %20 = load i32, i32* %i, align 4
  %idxprom12 = sext i32 %20 to i64
  %21 = load i8*, i8** @NAL_Payload_buffer, align 8
  %arrayidx13 = getelementptr inbounds i8, i8* %21, i64 %idxprom12
  %22 = load i8, i8* %arrayidx13, align 1
  %23 = load i32, i32* %j, align 4
  %idxprom14 = sext i32 %23 to i64
  %24 = load i8*, i8** %streamBuffer.addr, align 8
  %arrayidx15 = getelementptr inbounds i8, i8* %24, i64 %idxprom14
  store i8 %22, i8* %arrayidx15, align 1
  %25 = load i32, i32* %i, align 4
  %idxprom16 = sext i32 %25 to i64
  %26 = load i8*, i8** @NAL_Payload_buffer, align 8
  %arrayidx17 = getelementptr inbounds i8, i8* %26, i64 %idxprom16
  %27 = load i8, i8* %arrayidx17, align 1
  %conv18 = zext i8 %27 to i32
  %cmp19 = icmp eq i32 %conv18, 0
  br i1 %cmp19, label %if.then.21, label %if.else

if.then.21:                                       ; preds = %if.end
  %28 = load i32, i32* %count, align 4
  %inc22 = add nsw i32 %28, 1
  store i32 %inc22, i32* %count, align 4
  br label %if.end.23

if.else:                                          ; preds = %if.end
  store i32 0, i32* %count, align 4
  br label %if.end.23

if.end.23:                                        ; preds = %if.else, %if.then.21
  %29 = load i32, i32* %j, align 4
  %inc24 = add nsw i32 %29, 1
  store i32 %inc24, i32* %j, align 4
  br label %for.inc.25

for.inc.25:                                       ; preds = %if.end.23
  %30 = load i32, i32* %i, align 4
  %inc26 = add nsw i32 %30, 1
  store i32 %inc26, i32* %i, align 4
  br label %for.cond.3

for.end.27:                                       ; preds = %for.cond.3
  br label %while.cond

while.cond:                                       ; preds = %while.body, %for.end.27
  %31 = load i32, i32* %j, align 4
  %32 = load i32, i32* %begin_bytepos.addr, align 4
  %33 = load i32, i32* %min_num_bytes.addr, align 4
  %add = add nsw i32 %32, %33
  %cmp28 = icmp slt i32 %31, %add
  br i1 %cmp28, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %34 = load i32, i32* %j, align 4
  %idxprom30 = sext i32 %34 to i64
  %35 = load i8*, i8** %streamBuffer.addr, align 8
  %arrayidx31 = getelementptr inbounds i8, i8* %35, i64 %idxprom30
  store i8 0, i8* %arrayidx31, align 1
  %36 = load i32, i32* %j, align 4
  %add32 = add nsw i32 %36, 1
  %idxprom33 = sext i32 %add32 to i64
  %37 = load i8*, i8** %streamBuffer.addr, align 8
  %arrayidx34 = getelementptr inbounds i8, i8* %37, i64 %idxprom33
  store i8 0, i8* %arrayidx34, align 1
  %38 = load i32, i32* %j, align 4
  %add35 = add nsw i32 %38, 2
  %idxprom36 = sext i32 %add35 to i64
  %39 = load i8*, i8** %streamBuffer.addr, align 8
  %arrayidx37 = getelementptr inbounds i8, i8* %39, i64 %idxprom36
  store i8 3, i8* %arrayidx37, align 1
  %40 = load i32, i32* %j, align 4
  %add38 = add nsw i32 %40, 3
  store i32 %add38, i32* %j, align 4
  %41 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %type = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %41, i32 0, i32 6
  %42 = load i32, i32* %type, align 4
  %idxprom39 = sext i32 %42 to i64
  %43 = load %struct.StatParameters*, %struct.StatParameters** @stats, align 8
  %bit_use_stuffingBits = getelementptr inbounds %struct.StatParameters, %struct.StatParameters* %43, i32 0, i32 22
  %arrayidx40 = getelementptr inbounds [5 x i32], [5 x i32]* %bit_use_stuffingBits, i32 0, i64 %idxprom39
  %44 = load i32, i32* %arrayidx40, align 4
  %add41 = add nsw i32 %44, 16
  store i32 %add41, i32* %arrayidx40, align 4
  br label %while.cond

while.end:                                        ; preds = %while.cond
  %45 = load i32, i32* %j, align 4
  ret i32 %45
}

; Function Attrs: nounwind uwtable
define void @AllocNalPayloadBuffer() #0 {
entry:
  %buffer_size = alloca i32, align 4
  %0 = load %struct.InputParameters*, %struct.InputParameters** @input, align 8
  %img_width = getelementptr inbounds %struct.InputParameters, %struct.InputParameters* %0, i32 0, i32 16
  %1 = load i32, i32* %img_width, align 4
  %2 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %auto_crop_right = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %2, i32 0, i32 165
  %3 = load i32, i32* %auto_crop_right, align 4
  %add = add nsw i32 %1, %3
  %4 = load %struct.InputParameters*, %struct.InputParameters** @input, align 8
  %img_height = getelementptr inbounds %struct.InputParameters, %struct.InputParameters* %4, i32 0, i32 17
  %5 = load i32, i32* %img_height, align 4
  %6 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %auto_crop_bottom = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %6, i32 0, i32 166
  %7 = load i32, i32* %auto_crop_bottom, align 4
  %add1 = add nsw i32 %5, %7
  %mul = mul nsw i32 %add, %add1
  %mul2 = mul nsw i32 %mul, 4
  store i32 %mul2, i32* %buffer_size, align 4
  call void @FreeNalPayloadBuffer()
  %8 = load i32, i32* %buffer_size, align 4
  %conv = sext i32 %8 to i64
  %call = call noalias i8* @calloc(i64 %conv, i64 1) #2
  store i8* %call, i8** @NAL_Payload_buffer, align 8
  ret void
}

; Function Attrs: nounwind
declare noalias i8* @calloc(i64, i64) #1

; Function Attrs: nounwind uwtable
define void @FreeNalPayloadBuffer() #0 {
entry:
  %0 = load i8*, i8** @NAL_Payload_buffer, align 8
  %tobool = icmp ne i8* %0, null
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %1 = load i8*, i8** @NAL_Payload_buffer, align 8
  call void @free(i8* %1) #2
  store i8* null, i8** @NAL_Payload_buffer, align 8
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  ret void
}

; Function Attrs: nounwind
declare void @free(i8*) #1

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind }

!llvm.ident = !{!0}

!0 = !{!"clang version 3.7.0 (tags/RELEASE_370/final)"}
