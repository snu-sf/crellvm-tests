; ModuleID = 'output.c'
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
%struct.InputParameters = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [8 x [2 x i32]], [8 x [2 x i32]], i32, i32, i32, i32, [200 x i8], [200 x i8], [200 x i8], [200 x i8], [200 x i8], i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [1024 x i8], i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, double, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [200 x i8], [200 x i8], i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [200 x i8], i32, i32, i32*, i32*, i8*, i32*, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [8 x i32], i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [6 x double], [200 x i8], i32 }
%struct.seq_parameter_set_rbsp_t = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [8 x i32], i32, i32, i32, i32, i32, i32, i32, i32, i32, [256 x i32], i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, %struct.vui_seq_parameters_t }
%struct.vui_seq_parameters_t = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, %struct.hrd_parameters_t, i32, %struct.hrd_parameters_t, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.hrd_parameters_t = type { i32, i32, i32, [32 x i32], [32 x i32], [32 x i32], i32, i32, i32, i32 }
%struct.frame_store = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, %struct.storable_picture*, %struct.storable_picture*, %struct.storable_picture* }
%struct.storable_picture = type { i32, i32, i32, i32, i32, i32, [6 x [33 x i64]], [6 x [33 x i64]], [6 x [33 x i64]], [6 x [33 x i64]], i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i16**, i16*, i16*, i16**, i16**, i16***, i8*, i16***, i64***, i64***, i16****, i8**, i8**, %struct.storable_picture*, %struct.storable_picture*, %struct.storable_picture*, i32, i32, i32, i32, i32, i32, i32 }

@.str = private unnamed_addr constant [78 x i8] c"writing only to formats of 8, 16 or 32 bit allowed on big endian architecture\00", align 1
@write_out_picture.SubWidthC = private unnamed_addr constant [4 x i32] [i32 1, i32 2, i32 2, i32 1], align 16
@write_out_picture.SubHeightC = private unnamed_addr constant [4 x i32] [i32 1, i32 2, i32 1, i32 1], align 16
@img = external global %struct.ImageParameters*, align 8
@input = external global %struct.InputParameters*, align 8
@.str.1 = private unnamed_addr constant [23 x i8] c"write_out_picture: buf\00", align 1
@active_sps = external global %struct.seq_parameter_set_rbsp_t*, align 8
@out_buffer = common global %struct.frame_store* null, align 8

; Function Attrs: nounwind uwtable
define i32 @testEndian() #0 {
entry:
  %s = alloca i16, align 2
  %p = alloca i8*, align 8
  %0 = bitcast i16* %s to i8*
  store i8* %0, i8** %p, align 8
  store i16 1, i16* %s, align 2
  %1 = load i8*, i8** %p, align 8
  %2 = load i8, i8* %1, align 1
  %conv = zext i8 %2 to i32
  %cmp = icmp eq i32 %conv, 0
  %conv1 = zext i1 %cmp to i32
  ret i32 %conv1
}

; Function Attrs: nounwind uwtable
define void @img2buf(i16** %imgX, i8* %buf, i32 %size_x, i32 %size_y, i32 %symbol_size_in_bytes, i32 %crop_left, i32 %crop_right, i32 %crop_top, i32 %crop_bottom) #0 {
entry:
  %imgX.addr = alloca i16**, align 8
  %buf.addr = alloca i8*, align 8
  %size_x.addr = alloca i32, align 4
  %size_y.addr = alloca i32, align 4
  %symbol_size_in_bytes.addr = alloca i32, align 4
  %crop_left.addr = alloca i32, align 4
  %crop_right.addr = alloca i32, align 4
  %crop_top.addr = alloca i32, align 4
  %crop_bottom.addr = alloca i32, align 4
  %i = alloca i32, align 4
  %j = alloca i32, align 4
  %twidth = alloca i32, align 4
  %theight = alloca i32, align 4
  %size = alloca i32, align 4
  %ui8 = alloca i8, align 1
  %tmp16 = alloca i16, align 2
  %ui16 = alloca i16, align 2
  %tmp32 = alloca i64, align 8
  %ui32 = alloca i64, align 8
  store i16** %imgX, i16*** %imgX.addr, align 8
  store i8* %buf, i8** %buf.addr, align 8
  store i32 %size_x, i32* %size_x.addr, align 4
  store i32 %size_y, i32* %size_y.addr, align 4
  store i32 %symbol_size_in_bytes, i32* %symbol_size_in_bytes.addr, align 4
  store i32 %crop_left, i32* %crop_left.addr, align 4
  store i32 %crop_right, i32* %crop_right.addr, align 4
  store i32 %crop_top, i32* %crop_top.addr, align 4
  store i32 %crop_bottom, i32* %crop_bottom.addr, align 4
  %0 = load i32, i32* %size_x.addr, align 4
  %1 = load i32, i32* %crop_left.addr, align 4
  %sub = sub nsw i32 %0, %1
  %2 = load i32, i32* %crop_right.addr, align 4
  %sub1 = sub nsw i32 %sub, %2
  store i32 %sub1, i32* %twidth, align 4
  %3 = load i32, i32* %size_y.addr, align 4
  %4 = load i32, i32* %crop_top.addr, align 4
  %sub2 = sub nsw i32 %3, %4
  %5 = load i32, i32* %crop_bottom.addr, align 4
  %sub3 = sub nsw i32 %sub2, %5
  store i32 %sub3, i32* %theight, align 4
  store i32 0, i32* %size, align 4
  %call = call i32 @testEndian()
  %tobool = icmp ne i32 %call, 0
  br i1 %tobool, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %6 = load i32, i32* %symbol_size_in_bytes.addr, align 4
  switch i32 %6, label %sw.default [
    i32 1, label %sw.bb
    i32 2, label %sw.bb.18
    i32 4, label %sw.bb.47
  ]

sw.bb:                                            ; preds = %if.then
  %7 = load i32, i32* %crop_top.addr, align 4
  store i32 %7, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc.15, %sw.bb
  %8 = load i32, i32* %i, align 4
  %9 = load i32, i32* %size_y.addr, align 4
  %10 = load i32, i32* %crop_bottom.addr, align 4
  %sub4 = sub nsw i32 %9, %10
  %cmp = icmp slt i32 %8, %sub4
  br i1 %cmp, label %for.body, label %for.end.17

for.body:                                         ; preds = %for.cond
  %11 = load i32, i32* %crop_left.addr, align 4
  store i32 %11, i32* %j, align 4
  br label %for.cond.5

for.cond.5:                                       ; preds = %for.inc, %for.body
  %12 = load i32, i32* %j, align 4
  %13 = load i32, i32* %size_x.addr, align 4
  %14 = load i32, i32* %crop_right.addr, align 4
  %sub6 = sub nsw i32 %13, %14
  %cmp7 = icmp slt i32 %12, %sub6
  br i1 %cmp7, label %for.body.8, label %for.end

for.body.8:                                       ; preds = %for.cond.5
  %15 = load i32, i32* %j, align 4
  %idxprom = sext i32 %15 to i64
  %16 = load i32, i32* %i, align 4
  %idxprom9 = sext i32 %16 to i64
  %17 = load i16**, i16*** %imgX.addr, align 8
  %arrayidx = getelementptr inbounds i16*, i16** %17, i64 %idxprom9
  %18 = load i16*, i16** %arrayidx, align 8
  %arrayidx10 = getelementptr inbounds i16, i16* %18, i64 %idxprom
  %19 = load i16, i16* %arrayidx10, align 2
  %conv = trunc i16 %19 to i8
  store i8 %conv, i8* %ui8, align 1
  %20 = load i8, i8* %ui8, align 1
  %21 = load i32, i32* %j, align 4
  %22 = load i32, i32* %crop_left.addr, align 4
  %sub11 = sub nsw i32 %21, %22
  %23 = load i32, i32* %i, align 4
  %24 = load i32, i32* %crop_top.addr, align 4
  %sub12 = sub nsw i32 %23, %24
  %25 = load i32, i32* %twidth, align 4
  %mul = mul nsw i32 %sub12, %25
  %add = add nsw i32 %sub11, %mul
  %idxprom13 = sext i32 %add to i64
  %26 = load i8*, i8** %buf.addr, align 8
  %arrayidx14 = getelementptr inbounds i8, i8* %26, i64 %idxprom13
  store i8 %20, i8* %arrayidx14, align 1
  br label %for.inc

for.inc:                                          ; preds = %for.body.8
  %27 = load i32, i32* %j, align 4
  %inc = add nsw i32 %27, 1
  store i32 %inc, i32* %j, align 4
  br label %for.cond.5

for.end:                                          ; preds = %for.cond.5
  br label %for.inc.15

for.inc.15:                                       ; preds = %for.end
  %28 = load i32, i32* %i, align 4
  %inc16 = add nsw i32 %28, 1
  store i32 %inc16, i32* %i, align 4
  br label %for.cond

for.end.17:                                       ; preds = %for.cond
  br label %sw.epilog

sw.bb.18:                                         ; preds = %if.then
  %29 = load i32, i32* %crop_top.addr, align 4
  store i32 %29, i32* %i, align 4
  br label %for.cond.19

for.cond.19:                                      ; preds = %for.inc.44, %sw.bb.18
  %30 = load i32, i32* %i, align 4
  %31 = load i32, i32* %size_y.addr, align 4
  %32 = load i32, i32* %crop_bottom.addr, align 4
  %sub20 = sub nsw i32 %31, %32
  %cmp21 = icmp slt i32 %30, %sub20
  br i1 %cmp21, label %for.body.23, label %for.end.46

for.body.23:                                      ; preds = %for.cond.19
  %33 = load i32, i32* %crop_left.addr, align 4
  store i32 %33, i32* %j, align 4
  br label %for.cond.24

for.cond.24:                                      ; preds = %for.inc.41, %for.body.23
  %34 = load i32, i32* %j, align 4
  %35 = load i32, i32* %size_x.addr, align 4
  %36 = load i32, i32* %crop_right.addr, align 4
  %sub25 = sub nsw i32 %35, %36
  %cmp26 = icmp slt i32 %34, %sub25
  br i1 %cmp26, label %for.body.28, label %for.end.43

for.body.28:                                      ; preds = %for.cond.24
  %37 = load i32, i32* %j, align 4
  %idxprom29 = sext i32 %37 to i64
  %38 = load i32, i32* %i, align 4
  %idxprom30 = sext i32 %38 to i64
  %39 = load i16**, i16*** %imgX.addr, align 8
  %arrayidx31 = getelementptr inbounds i16*, i16** %39, i64 %idxprom30
  %40 = load i16*, i16** %arrayidx31, align 8
  %arrayidx32 = getelementptr inbounds i16, i16* %40, i64 %idxprom29
  %41 = load i16, i16* %arrayidx32, align 2
  store i16 %41, i16* %tmp16, align 2
  %42 = load i16, i16* %tmp16, align 2
  %conv33 = zext i16 %42 to i32
  %shr = ashr i32 %conv33, 8
  %43 = load i16, i16* %tmp16, align 2
  %conv34 = zext i16 %43 to i32
  %and = and i32 %conv34, 255
  %shl = shl i32 %and, 8
  %or = or i32 %shr, %shl
  %conv35 = trunc i32 %or to i16
  store i16 %conv35, i16* %ui16, align 2
  %44 = load i8*, i8** %buf.addr, align 8
  %45 = load i32, i32* %j, align 4
  %46 = load i32, i32* %crop_left.addr, align 4
  %sub36 = sub nsw i32 %45, %46
  %47 = load i32, i32* %i, align 4
  %48 = load i32, i32* %crop_top.addr, align 4
  %sub37 = sub nsw i32 %47, %48
  %49 = load i32, i32* %twidth, align 4
  %mul38 = mul nsw i32 %sub37, %49
  %add39 = add nsw i32 %sub36, %mul38
  %mul40 = mul nsw i32 %add39, 2
  %idx.ext = sext i32 %mul40 to i64
  %add.ptr = getelementptr inbounds i8, i8* %44, i64 %idx.ext
  %50 = bitcast i16* %ui16 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %add.ptr, i8* %50, i64 2, i32 1, i1 false)
  br label %for.inc.41

for.inc.41:                                       ; preds = %for.body.28
  %51 = load i32, i32* %j, align 4
  %inc42 = add nsw i32 %51, 1
  store i32 %inc42, i32* %j, align 4
  br label %for.cond.24

for.end.43:                                       ; preds = %for.cond.24
  br label %for.inc.44

for.inc.44:                                       ; preds = %for.end.43
  %52 = load i32, i32* %i, align 4
  %inc45 = add nsw i32 %52, 1
  store i32 %inc45, i32* %i, align 4
  br label %for.cond.19

for.end.46:                                       ; preds = %for.cond.19
  br label %sw.epilog

sw.bb.47:                                         ; preds = %if.then
  %53 = load i32, i32* %crop_top.addr, align 4
  store i32 %53, i32* %i, align 4
  br label %for.cond.48

for.cond.48:                                      ; preds = %for.inc.84, %sw.bb.47
  %54 = load i32, i32* %i, align 4
  %55 = load i32, i32* %size_y.addr, align 4
  %56 = load i32, i32* %crop_bottom.addr, align 4
  %sub49 = sub nsw i32 %55, %56
  %cmp50 = icmp slt i32 %54, %sub49
  br i1 %cmp50, label %for.body.52, label %for.end.86

for.body.52:                                      ; preds = %for.cond.48
  %57 = load i32, i32* %crop_left.addr, align 4
  store i32 %57, i32* %j, align 4
  br label %for.cond.53

for.cond.53:                                      ; preds = %for.inc.81, %for.body.52
  %58 = load i32, i32* %j, align 4
  %59 = load i32, i32* %size_x.addr, align 4
  %60 = load i32, i32* %crop_right.addr, align 4
  %sub54 = sub nsw i32 %59, %60
  %cmp55 = icmp slt i32 %58, %sub54
  br i1 %cmp55, label %for.body.57, label %for.end.83

for.body.57:                                      ; preds = %for.cond.53
  %61 = load i32, i32* %j, align 4
  %idxprom58 = sext i32 %61 to i64
  %62 = load i32, i32* %i, align 4
  %idxprom59 = sext i32 %62 to i64
  %63 = load i16**, i16*** %imgX.addr, align 8
  %arrayidx60 = getelementptr inbounds i16*, i16** %63, i64 %idxprom59
  %64 = load i16*, i16** %arrayidx60, align 8
  %arrayidx61 = getelementptr inbounds i16, i16* %64, i64 %idxprom58
  %65 = load i16, i16* %arrayidx61, align 2
  %conv62 = zext i16 %65 to i64
  store i64 %conv62, i64* %tmp32, align 8
  %66 = load i64, i64* %tmp32, align 8
  %and63 = and i64 %66, 65280
  %shl64 = shl i64 %and63, 8
  %67 = load i64, i64* %tmp32, align 8
  %and65 = and i64 %67, 255
  %shl66 = shl i64 %and65, 24
  %or67 = or i64 %shl64, %shl66
  %68 = load i64, i64* %tmp32, align 8
  %and68 = and i64 %68, 16711680
  %shr69 = lshr i64 %and68, 8
  %or70 = or i64 %or67, %shr69
  %69 = load i64, i64* %tmp32, align 8
  %and71 = and i64 %69, 4278190080
  %shr72 = lshr i64 %and71, 24
  %or73 = or i64 %or70, %shr72
  store i64 %or73, i64* %ui32, align 8
  %70 = load i8*, i8** %buf.addr, align 8
  %71 = load i32, i32* %j, align 4
  %72 = load i32, i32* %crop_left.addr, align 4
  %sub74 = sub nsw i32 %71, %72
  %73 = load i32, i32* %i, align 4
  %74 = load i32, i32* %crop_top.addr, align 4
  %sub75 = sub nsw i32 %73, %74
  %75 = load i32, i32* %twidth, align 4
  %mul76 = mul nsw i32 %sub75, %75
  %add77 = add nsw i32 %sub74, %mul76
  %mul78 = mul nsw i32 %add77, 4
  %idx.ext79 = sext i32 %mul78 to i64
  %add.ptr80 = getelementptr inbounds i8, i8* %70, i64 %idx.ext79
  %76 = bitcast i64* %ui32 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %add.ptr80, i8* %76, i64 4, i32 1, i1 false)
  br label %for.inc.81

for.inc.81:                                       ; preds = %for.body.57
  %77 = load i32, i32* %j, align 4
  %inc82 = add nsw i32 %77, 1
  store i32 %inc82, i32* %j, align 4
  br label %for.cond.53

for.end.83:                                       ; preds = %for.cond.53
  br label %for.inc.84

for.inc.84:                                       ; preds = %for.end.83
  %78 = load i32, i32* %i, align 4
  %inc85 = add nsw i32 %78, 1
  store i32 %inc85, i32* %i, align 4
  br label %for.cond.48

for.end.86:                                       ; preds = %for.cond.48
  br label %sw.epilog

sw.default:                                       ; preds = %if.then
  call void @error(i8* getelementptr inbounds ([78 x i8], [78 x i8]* @.str, i32 0, i32 0), i32 500)
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.default, %for.end.86, %for.end.46, %for.end.17
  br label %if.end.123

if.else:                                          ; preds = %entry
  %79 = load i32, i32* %symbol_size_in_bytes.addr, align 4
  %conv87 = sext i32 %79 to i64
  %cmp88 = icmp ult i64 2, %conv87
  br i1 %cmp88, label %if.then.90, label %if.else.94

if.then.90:                                       ; preds = %if.else
  store i32 2, i32* %size, align 4
  %80 = load i8*, i8** %buf.addr, align 8
  %81 = load i32, i32* %twidth, align 4
  %82 = load i32, i32* %theight, align 4
  %mul91 = mul nsw i32 %81, %82
  %83 = load i32, i32* %symbol_size_in_bytes.addr, align 4
  %mul92 = mul nsw i32 %mul91, %83
  %conv93 = sext i32 %mul92 to i64
  call void @llvm.memset.p0i8.i64(i8* %80, i8 0, i64 %conv93, i32 1, i1 false)
  br label %if.end

if.else.94:                                       ; preds = %if.else
  %84 = load i32, i32* %symbol_size_in_bytes.addr, align 4
  store i32 %84, i32* %size, align 4
  br label %if.end

if.end:                                           ; preds = %if.else.94, %if.then.90
  %85 = load i32, i32* %crop_top.addr, align 4
  store i32 %85, i32* %i, align 4
  br label %for.cond.95

for.cond.95:                                      ; preds = %for.inc.120, %if.end
  %86 = load i32, i32* %i, align 4
  %87 = load i32, i32* %size_y.addr, align 4
  %88 = load i32, i32* %crop_bottom.addr, align 4
  %sub96 = sub nsw i32 %87, %88
  %cmp97 = icmp slt i32 %86, %sub96
  br i1 %cmp97, label %for.body.99, label %for.end.122

for.body.99:                                      ; preds = %for.cond.95
  %89 = load i32, i32* %crop_left.addr, align 4
  store i32 %89, i32* %j, align 4
  br label %for.cond.100

for.cond.100:                                     ; preds = %for.inc.117, %for.body.99
  %90 = load i32, i32* %j, align 4
  %91 = load i32, i32* %size_x.addr, align 4
  %92 = load i32, i32* %crop_right.addr, align 4
  %sub101 = sub nsw i32 %91, %92
  %cmp102 = icmp slt i32 %90, %sub101
  br i1 %cmp102, label %for.body.104, label %for.end.119

for.body.104:                                     ; preds = %for.cond.100
  %93 = load i8*, i8** %buf.addr, align 8
  %94 = load i32, i32* %j, align 4
  %95 = load i32, i32* %crop_left.addr, align 4
  %sub105 = sub nsw i32 %94, %95
  %96 = load i32, i32* %i, align 4
  %97 = load i32, i32* %crop_top.addr, align 4
  %sub106 = sub nsw i32 %96, %97
  %98 = load i32, i32* %twidth, align 4
  %mul107 = mul nsw i32 %sub106, %98
  %add108 = add nsw i32 %sub105, %mul107
  %99 = load i32, i32* %symbol_size_in_bytes.addr, align 4
  %mul109 = mul nsw i32 %add108, %99
  %idx.ext110 = sext i32 %mul109 to i64
  %add.ptr111 = getelementptr inbounds i8, i8* %93, i64 %idx.ext110
  %100 = load i32, i32* %j, align 4
  %idxprom112 = sext i32 %100 to i64
  %101 = load i32, i32* %i, align 4
  %idxprom113 = sext i32 %101 to i64
  %102 = load i16**, i16*** %imgX.addr, align 8
  %arrayidx114 = getelementptr inbounds i16*, i16** %102, i64 %idxprom113
  %103 = load i16*, i16** %arrayidx114, align 8
  %arrayidx115 = getelementptr inbounds i16, i16* %103, i64 %idxprom112
  %104 = bitcast i16* %arrayidx115 to i8*
  %105 = load i32, i32* %size, align 4
  %conv116 = sext i32 %105 to i64
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %add.ptr111, i8* %104, i64 %conv116, i32 1, i1 false)
  br label %for.inc.117

for.inc.117:                                      ; preds = %for.body.104
  %106 = load i32, i32* %j, align 4
  %inc118 = add nsw i32 %106, 1
  store i32 %inc118, i32* %j, align 4
  br label %for.cond.100

for.end.119:                                      ; preds = %for.cond.100
  br label %for.inc.120

for.inc.120:                                      ; preds = %for.end.119
  %107 = load i32, i32* %i, align 4
  %inc121 = add nsw i32 %107, 1
  store i32 %inc121, i32* %i, align 4
  br label %for.cond.95

for.end.122:                                      ; preds = %for.cond.95
  br label %if.end.123

if.end.123:                                       ; preds = %for.end.122, %sw.epilog
  ret void
}

; Function Attrs: nounwind
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* nocapture, i8* nocapture readonly, i64, i32, i1) #1

declare void @error(i8*, i32) #2

; Function Attrs: nounwind
declare void @llvm.memset.p0i8.i64(i8* nocapture, i8, i64, i32, i1) #1

; Function Attrs: nounwind uwtable
define void @write_picture(%struct.storable_picture* %p, i32 %p_out, i32 %real_structure) #0 {
entry:
  %p.addr = alloca %struct.storable_picture*, align 8
  %p_out.addr = alloca i32, align 4
  %real_structure.addr = alloca i32, align 4
  store %struct.storable_picture* %p, %struct.storable_picture** %p.addr, align 8
  store i32 %p_out, i32* %p_out.addr, align 4
  store i32 %real_structure, i32* %real_structure.addr, align 4
  %0 = load %struct.storable_picture*, %struct.storable_picture** %p.addr, align 8
  %1 = load i32, i32* %p_out.addr, align 4
  call void @write_out_picture(%struct.storable_picture* %0, i32 %1)
  ret void
}

; Function Attrs: nounwind uwtable
define void @write_out_picture(%struct.storable_picture* %p, i32 %p_out) #0 {
entry:
  %p.addr = alloca %struct.storable_picture*, align 8
  %p_out.addr = alloca i32, align 4
  %SubWidthC = alloca [4 x i32], align 16
  %SubHeightC = alloca [4 x i32], align 16
  %crop_left = alloca i32, align 4
  %crop_right = alloca i32, align 4
  %crop_top = alloca i32, align 4
  %crop_bottom = alloca i32, align 4
  %symbol_size_in_bytes = alloca i32, align 4
  %rgb_output = alloca i32, align 4
  %buf = alloca i8*, align 8
  store %struct.storable_picture* %p, %struct.storable_picture** %p.addr, align 8
  store i32 %p_out, i32* %p_out.addr, align 4
  %0 = bitcast [4 x i32]* %SubWidthC to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %0, i8* bitcast ([4 x i32]* @write_out_picture.SubWidthC to i8*), i64 16, i32 16, i1 false)
  %1 = bitcast [4 x i32]* %SubHeightC to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %1, i8* bitcast ([4 x i32]* @write_out_picture.SubHeightC to i8*), i64 16, i32 16, i1 false)
  %2 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %pic_unit_size_on_disk = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %2, i32 0, i32 148
  %3 = load i32, i32* %pic_unit_size_on_disk, align 4
  %div = sdiv i32 %3, 8
  store i32 %div, i32* %symbol_size_in_bytes, align 4
  %4 = load %struct.InputParameters*, %struct.InputParameters** @input, align 8
  %rgb_input_flag = getelementptr inbounds %struct.InputParameters, %struct.InputParameters* %4, i32 0, i32 139
  %5 = load i32, i32* %rgb_input_flag, align 4
  %tobool = icmp ne i32 %5, 0
  br i1 %tobool, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %entry
  %6 = load %struct.InputParameters*, %struct.InputParameters** @input, align 8
  %yuv_format = getelementptr inbounds %struct.InputParameters, %struct.InputParameters* %6, i32 0, i32 18
  %7 = load i32, i32* %yuv_format, align 4
  %cmp = icmp eq i32 %7, 3
  br label %land.end

land.end:                                         ; preds = %land.rhs, %entry
  %8 = phi i1 [ false, %entry ], [ %cmp, %land.rhs ]
  %land.ext = zext i1 %8 to i32
  store i32 %land.ext, i32* %rgb_output, align 4
  %9 = load %struct.storable_picture*, %struct.storable_picture** %p.addr, align 8
  %non_existing = getelementptr inbounds %struct.storable_picture, %struct.storable_picture* %9, i32 0, i32 17
  %10 = load i32, i32* %non_existing, align 4
  %tobool1 = icmp ne i32 %10, 0
  br i1 %tobool1, label %if.then, label %if.end

if.then:                                          ; preds = %land.end
  br label %return

if.end:                                           ; preds = %land.end
  %11 = load %struct.storable_picture*, %struct.storable_picture** %p.addr, align 8
  %frame_cropping_flag = getelementptr inbounds %struct.storable_picture, %struct.storable_picture* %11, i32 0, i32 43
  %12 = load i32, i32* %frame_cropping_flag, align 4
  %tobool2 = icmp ne i32 %12, 0
  br i1 %tobool2, label %if.then.3, label %if.else

if.then.3:                                        ; preds = %if.end
  %13 = load %struct.storable_picture*, %struct.storable_picture** %p.addr, align 8
  %chroma_format_idc = getelementptr inbounds %struct.storable_picture, %struct.storable_picture* %13, i32 0, i32 41
  %14 = load i32, i32* %chroma_format_idc, align 4
  %idxprom = sext i32 %14 to i64
  %arrayidx = getelementptr inbounds [4 x i32], [4 x i32]* %SubWidthC, i32 0, i64 %idxprom
  %15 = load i32, i32* %arrayidx, align 4
  %16 = load %struct.storable_picture*, %struct.storable_picture** %p.addr, align 8
  %frame_cropping_rect_left_offset = getelementptr inbounds %struct.storable_picture, %struct.storable_picture* %16, i32 0, i32 44
  %17 = load i32, i32* %frame_cropping_rect_left_offset, align 4
  %mul = mul nsw i32 %15, %17
  store i32 %mul, i32* %crop_left, align 4
  %18 = load %struct.storable_picture*, %struct.storable_picture** %p.addr, align 8
  %chroma_format_idc4 = getelementptr inbounds %struct.storable_picture, %struct.storable_picture* %18, i32 0, i32 41
  %19 = load i32, i32* %chroma_format_idc4, align 4
  %idxprom5 = sext i32 %19 to i64
  %arrayidx6 = getelementptr inbounds [4 x i32], [4 x i32]* %SubWidthC, i32 0, i64 %idxprom5
  %20 = load i32, i32* %arrayidx6, align 4
  %21 = load %struct.storable_picture*, %struct.storable_picture** %p.addr, align 8
  %frame_cropping_rect_right_offset = getelementptr inbounds %struct.storable_picture, %struct.storable_picture* %21, i32 0, i32 45
  %22 = load i32, i32* %frame_cropping_rect_right_offset, align 4
  %mul7 = mul nsw i32 %20, %22
  store i32 %mul7, i32* %crop_right, align 4
  %23 = load %struct.storable_picture*, %struct.storable_picture** %p.addr, align 8
  %chroma_format_idc8 = getelementptr inbounds %struct.storable_picture, %struct.storable_picture* %23, i32 0, i32 41
  %24 = load i32, i32* %chroma_format_idc8, align 4
  %idxprom9 = sext i32 %24 to i64
  %arrayidx10 = getelementptr inbounds [4 x i32], [4 x i32]* %SubHeightC, i32 0, i64 %idxprom9
  %25 = load i32, i32* %arrayidx10, align 4
  %26 = load %struct.storable_picture*, %struct.storable_picture** %p.addr, align 8
  %frame_mbs_only_flag = getelementptr inbounds %struct.storable_picture, %struct.storable_picture* %26, i32 0, i32 42
  %27 = load i32, i32* %frame_mbs_only_flag, align 4
  %sub = sub nsw i32 2, %27
  %mul11 = mul nsw i32 %25, %sub
  %28 = load %struct.storable_picture*, %struct.storable_picture** %p.addr, align 8
  %frame_cropping_rect_top_offset = getelementptr inbounds %struct.storable_picture, %struct.storable_picture* %28, i32 0, i32 46
  %29 = load i32, i32* %frame_cropping_rect_top_offset, align 4
  %mul12 = mul nsw i32 %mul11, %29
  store i32 %mul12, i32* %crop_top, align 4
  %30 = load %struct.storable_picture*, %struct.storable_picture** %p.addr, align 8
  %chroma_format_idc13 = getelementptr inbounds %struct.storable_picture, %struct.storable_picture* %30, i32 0, i32 41
  %31 = load i32, i32* %chroma_format_idc13, align 4
  %idxprom14 = sext i32 %31 to i64
  %arrayidx15 = getelementptr inbounds [4 x i32], [4 x i32]* %SubHeightC, i32 0, i64 %idxprom14
  %32 = load i32, i32* %arrayidx15, align 4
  %33 = load %struct.storable_picture*, %struct.storable_picture** %p.addr, align 8
  %frame_mbs_only_flag16 = getelementptr inbounds %struct.storable_picture, %struct.storable_picture* %33, i32 0, i32 42
  %34 = load i32, i32* %frame_mbs_only_flag16, align 4
  %sub17 = sub nsw i32 2, %34
  %mul18 = mul nsw i32 %32, %sub17
  %35 = load %struct.storable_picture*, %struct.storable_picture** %p.addr, align 8
  %frame_cropping_rect_bottom_offset = getelementptr inbounds %struct.storable_picture, %struct.storable_picture* %35, i32 0, i32 47
  %36 = load i32, i32* %frame_cropping_rect_bottom_offset, align 4
  %mul19 = mul nsw i32 %mul18, %36
  store i32 %mul19, i32* %crop_bottom, align 4
  br label %if.end.20

if.else:                                          ; preds = %if.end
  store i32 0, i32* %crop_bottom, align 4
  store i32 0, i32* %crop_top, align 4
  store i32 0, i32* %crop_right, align 4
  store i32 0, i32* %crop_left, align 4
  br label %if.end.20

if.end.20:                                        ; preds = %if.else, %if.then.3
  %37 = load %struct.storable_picture*, %struct.storable_picture** %p.addr, align 8
  %size_x = getelementptr inbounds %struct.storable_picture, %struct.storable_picture* %37, i32 0, i32 18
  %38 = load i32, i32* %size_x, align 4
  %39 = load %struct.storable_picture*, %struct.storable_picture** %p.addr, align 8
  %size_y = getelementptr inbounds %struct.storable_picture, %struct.storable_picture* %39, i32 0, i32 19
  %40 = load i32, i32* %size_y, align 4
  %mul21 = mul nsw i32 %38, %40
  %41 = load i32, i32* %symbol_size_in_bytes, align 4
  %mul22 = mul nsw i32 %mul21, %41
  %conv = sext i32 %mul22 to i64
  %call = call noalias i8* @malloc(i64 %conv) #1
  store i8* %call, i8** %buf, align 8
  %cmp23 = icmp eq i8* null, %call
  br i1 %cmp23, label %if.then.25, label %if.end.26

if.then.25:                                       ; preds = %if.end.20
  call void @no_mem_exit(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.1, i32 0, i32 0))
  br label %if.end.26

if.end.26:                                        ; preds = %if.then.25, %if.end.20
  %42 = load i32, i32* %rgb_output, align 4
  %tobool27 = icmp ne i32 %42, 0
  br i1 %tobool27, label %if.then.28, label %if.end.81

if.then.28:                                       ; preds = %if.end.26
  %43 = load %struct.storable_picture*, %struct.storable_picture** %p.addr, align 8
  %frame_cropping_rect_left_offset29 = getelementptr inbounds %struct.storable_picture, %struct.storable_picture* %43, i32 0, i32 44
  %44 = load i32, i32* %frame_cropping_rect_left_offset29, align 4
  store i32 %44, i32* %crop_left, align 4
  %45 = load %struct.storable_picture*, %struct.storable_picture** %p.addr, align 8
  %frame_cropping_rect_right_offset30 = getelementptr inbounds %struct.storable_picture, %struct.storable_picture* %45, i32 0, i32 45
  %46 = load i32, i32* %frame_cropping_rect_right_offset30, align 4
  store i32 %46, i32* %crop_right, align 4
  %47 = load %struct.storable_picture*, %struct.storable_picture** %p.addr, align 8
  %frame_mbs_only_flag31 = getelementptr inbounds %struct.storable_picture, %struct.storable_picture* %47, i32 0, i32 42
  %48 = load i32, i32* %frame_mbs_only_flag31, align 4
  %sub32 = sub nsw i32 2, %48
  %49 = load %struct.storable_picture*, %struct.storable_picture** %p.addr, align 8
  %frame_cropping_rect_top_offset33 = getelementptr inbounds %struct.storable_picture, %struct.storable_picture* %49, i32 0, i32 46
  %50 = load i32, i32* %frame_cropping_rect_top_offset33, align 4
  %mul34 = mul nsw i32 %sub32, %50
  store i32 %mul34, i32* %crop_top, align 4
  %51 = load %struct.storable_picture*, %struct.storable_picture** %p.addr, align 8
  %frame_mbs_only_flag35 = getelementptr inbounds %struct.storable_picture, %struct.storable_picture* %51, i32 0, i32 42
  %52 = load i32, i32* %frame_mbs_only_flag35, align 4
  %sub36 = sub nsw i32 2, %52
  %53 = load %struct.storable_picture*, %struct.storable_picture** %p.addr, align 8
  %frame_cropping_rect_bottom_offset37 = getelementptr inbounds %struct.storable_picture, %struct.storable_picture* %53, i32 0, i32 47
  %54 = load i32, i32* %frame_cropping_rect_bottom_offset37, align 4
  %mul38 = mul nsw i32 %sub36, %54
  store i32 %mul38, i32* %crop_bottom, align 4
  %55 = load %struct.storable_picture*, %struct.storable_picture** %p.addr, align 8
  %imgUV = getelementptr inbounds %struct.storable_picture, %struct.storable_picture* %55, i32 0, i32 30
  %56 = load i16***, i16**** %imgUV, align 8
  %arrayidx39 = getelementptr inbounds i16**, i16*** %56, i64 1
  %57 = load i16**, i16*** %arrayidx39, align 8
  %58 = load i8*, i8** %buf, align 8
  %59 = load %struct.storable_picture*, %struct.storable_picture** %p.addr, align 8
  %size_x_cr = getelementptr inbounds %struct.storable_picture, %struct.storable_picture* %59, i32 0, i32 20
  %60 = load i32, i32* %size_x_cr, align 4
  %61 = load %struct.storable_picture*, %struct.storable_picture** %p.addr, align 8
  %size_y_cr = getelementptr inbounds %struct.storable_picture, %struct.storable_picture* %61, i32 0, i32 21
  %62 = load i32, i32* %size_y_cr, align 4
  %63 = load i32, i32* %symbol_size_in_bytes, align 4
  %64 = load i32, i32* %crop_left, align 4
  %65 = load i32, i32* %crop_right, align 4
  %66 = load i32, i32* %crop_top, align 4
  %67 = load i32, i32* %crop_bottom, align 4
  call void @img2buf(i16** %57, i8* %58, i32 %60, i32 %62, i32 %63, i32 %64, i32 %65, i32 %66, i32 %67)
  %68 = load i32, i32* %p_out.addr, align 4
  %69 = load i8*, i8** %buf, align 8
  %70 = load %struct.storable_picture*, %struct.storable_picture** %p.addr, align 8
  %size_y_cr40 = getelementptr inbounds %struct.storable_picture, %struct.storable_picture* %70, i32 0, i32 21
  %71 = load i32, i32* %size_y_cr40, align 4
  %72 = load i32, i32* %crop_bottom, align 4
  %sub41 = sub nsw i32 %71, %72
  %73 = load i32, i32* %crop_top, align 4
  %sub42 = sub nsw i32 %sub41, %73
  %74 = load %struct.storable_picture*, %struct.storable_picture** %p.addr, align 8
  %size_x_cr43 = getelementptr inbounds %struct.storable_picture, %struct.storable_picture* %74, i32 0, i32 20
  %75 = load i32, i32* %size_x_cr43, align 4
  %76 = load i32, i32* %crop_right, align 4
  %sub44 = sub nsw i32 %75, %76
  %77 = load i32, i32* %crop_left, align 4
  %sub45 = sub nsw i32 %sub44, %77
  %mul46 = mul nsw i32 %sub42, %sub45
  %78 = load i32, i32* %symbol_size_in_bytes, align 4
  %mul47 = mul nsw i32 %mul46, %78
  %conv48 = sext i32 %mul47 to i64
  %call49 = call i64 @write(i32 %68, i8* %69, i64 %conv48)
  %79 = load %struct.seq_parameter_set_rbsp_t*, %struct.seq_parameter_set_rbsp_t** @active_sps, align 8
  %frame_cropping_flag50 = getelementptr inbounds %struct.seq_parameter_set_rbsp_t, %struct.seq_parameter_set_rbsp_t* %79, i32 0, i32 28
  %80 = load i32, i32* %frame_cropping_flag50, align 4
  %tobool51 = icmp ne i32 %80, 0
  br i1 %tobool51, label %if.then.52, label %if.else.79

if.then.52:                                       ; preds = %if.then.28
  %81 = load %struct.storable_picture*, %struct.storable_picture** %p.addr, align 8
  %chroma_format_idc53 = getelementptr inbounds %struct.storable_picture, %struct.storable_picture* %81, i32 0, i32 41
  %82 = load i32, i32* %chroma_format_idc53, align 4
  %idxprom54 = sext i32 %82 to i64
  %arrayidx55 = getelementptr inbounds [4 x i32], [4 x i32]* %SubWidthC, i32 0, i64 %idxprom54
  %83 = load i32, i32* %arrayidx55, align 4
  %84 = load %struct.storable_picture*, %struct.storable_picture** %p.addr, align 8
  %frame_cropping_rect_left_offset56 = getelementptr inbounds %struct.storable_picture, %struct.storable_picture* %84, i32 0, i32 44
  %85 = load i32, i32* %frame_cropping_rect_left_offset56, align 4
  %mul57 = mul nsw i32 %83, %85
  store i32 %mul57, i32* %crop_left, align 4
  %86 = load %struct.storable_picture*, %struct.storable_picture** %p.addr, align 8
  %chroma_format_idc58 = getelementptr inbounds %struct.storable_picture, %struct.storable_picture* %86, i32 0, i32 41
  %87 = load i32, i32* %chroma_format_idc58, align 4
  %idxprom59 = sext i32 %87 to i64
  %arrayidx60 = getelementptr inbounds [4 x i32], [4 x i32]* %SubWidthC, i32 0, i64 %idxprom59
  %88 = load i32, i32* %arrayidx60, align 4
  %89 = load %struct.storable_picture*, %struct.storable_picture** %p.addr, align 8
  %frame_cropping_rect_right_offset61 = getelementptr inbounds %struct.storable_picture, %struct.storable_picture* %89, i32 0, i32 45
  %90 = load i32, i32* %frame_cropping_rect_right_offset61, align 4
  %mul62 = mul nsw i32 %88, %90
  store i32 %mul62, i32* %crop_right, align 4
  %91 = load %struct.storable_picture*, %struct.storable_picture** %p.addr, align 8
  %chroma_format_idc63 = getelementptr inbounds %struct.storable_picture, %struct.storable_picture* %91, i32 0, i32 41
  %92 = load i32, i32* %chroma_format_idc63, align 4
  %idxprom64 = sext i32 %92 to i64
  %arrayidx65 = getelementptr inbounds [4 x i32], [4 x i32]* %SubHeightC, i32 0, i64 %idxprom64
  %93 = load i32, i32* %arrayidx65, align 4
  %94 = load %struct.storable_picture*, %struct.storable_picture** %p.addr, align 8
  %frame_mbs_only_flag66 = getelementptr inbounds %struct.storable_picture, %struct.storable_picture* %94, i32 0, i32 42
  %95 = load i32, i32* %frame_mbs_only_flag66, align 4
  %sub67 = sub nsw i32 2, %95
  %mul68 = mul nsw i32 %93, %sub67
  %96 = load %struct.storable_picture*, %struct.storable_picture** %p.addr, align 8
  %frame_cropping_rect_top_offset69 = getelementptr inbounds %struct.storable_picture, %struct.storable_picture* %96, i32 0, i32 46
  %97 = load i32, i32* %frame_cropping_rect_top_offset69, align 4
  %mul70 = mul nsw i32 %mul68, %97
  store i32 %mul70, i32* %crop_top, align 4
  %98 = load %struct.storable_picture*, %struct.storable_picture** %p.addr, align 8
  %chroma_format_idc71 = getelementptr inbounds %struct.storable_picture, %struct.storable_picture* %98, i32 0, i32 41
  %99 = load i32, i32* %chroma_format_idc71, align 4
  %idxprom72 = sext i32 %99 to i64
  %arrayidx73 = getelementptr inbounds [4 x i32], [4 x i32]* %SubHeightC, i32 0, i64 %idxprom72
  %100 = load i32, i32* %arrayidx73, align 4
  %101 = load %struct.storable_picture*, %struct.storable_picture** %p.addr, align 8
  %frame_mbs_only_flag74 = getelementptr inbounds %struct.storable_picture, %struct.storable_picture* %101, i32 0, i32 42
  %102 = load i32, i32* %frame_mbs_only_flag74, align 4
  %sub75 = sub nsw i32 2, %102
  %mul76 = mul nsw i32 %100, %sub75
  %103 = load %struct.storable_picture*, %struct.storable_picture** %p.addr, align 8
  %frame_cropping_rect_bottom_offset77 = getelementptr inbounds %struct.storable_picture, %struct.storable_picture* %103, i32 0, i32 47
  %104 = load i32, i32* %frame_cropping_rect_bottom_offset77, align 4
  %mul78 = mul nsw i32 %mul76, %104
  store i32 %mul78, i32* %crop_bottom, align 4
  br label %if.end.80

if.else.79:                                       ; preds = %if.then.28
  store i32 0, i32* %crop_bottom, align 4
  store i32 0, i32* %crop_top, align 4
  store i32 0, i32* %crop_right, align 4
  store i32 0, i32* %crop_left, align 4
  br label %if.end.80

if.end.80:                                        ; preds = %if.else.79, %if.then.52
  br label %if.end.81

if.end.81:                                        ; preds = %if.end.80, %if.end.26
  %105 = load %struct.storable_picture*, %struct.storable_picture** %p.addr, align 8
  %imgY = getelementptr inbounds %struct.storable_picture, %struct.storable_picture* %105, i32 0, i32 25
  %106 = load i16**, i16*** %imgY, align 8
  %107 = load i8*, i8** %buf, align 8
  %108 = load %struct.storable_picture*, %struct.storable_picture** %p.addr, align 8
  %size_x82 = getelementptr inbounds %struct.storable_picture, %struct.storable_picture* %108, i32 0, i32 18
  %109 = load i32, i32* %size_x82, align 4
  %110 = load %struct.storable_picture*, %struct.storable_picture** %p.addr, align 8
  %size_y83 = getelementptr inbounds %struct.storable_picture, %struct.storable_picture* %110, i32 0, i32 19
  %111 = load i32, i32* %size_y83, align 4
  %112 = load i32, i32* %symbol_size_in_bytes, align 4
  %113 = load i32, i32* %crop_left, align 4
  %114 = load i32, i32* %crop_right, align 4
  %115 = load i32, i32* %crop_top, align 4
  %116 = load i32, i32* %crop_bottom, align 4
  call void @img2buf(i16** %106, i8* %107, i32 %109, i32 %111, i32 %112, i32 %113, i32 %114, i32 %115, i32 %116)
  %117 = load i32, i32* %p_out.addr, align 4
  %118 = load i8*, i8** %buf, align 8
  %119 = load %struct.storable_picture*, %struct.storable_picture** %p.addr, align 8
  %size_y84 = getelementptr inbounds %struct.storable_picture, %struct.storable_picture* %119, i32 0, i32 19
  %120 = load i32, i32* %size_y84, align 4
  %121 = load i32, i32* %crop_bottom, align 4
  %sub85 = sub nsw i32 %120, %121
  %122 = load i32, i32* %crop_top, align 4
  %sub86 = sub nsw i32 %sub85, %122
  %123 = load %struct.storable_picture*, %struct.storable_picture** %p.addr, align 8
  %size_x87 = getelementptr inbounds %struct.storable_picture, %struct.storable_picture* %123, i32 0, i32 18
  %124 = load i32, i32* %size_x87, align 4
  %125 = load i32, i32* %crop_right, align 4
  %sub88 = sub nsw i32 %124, %125
  %126 = load i32, i32* %crop_left, align 4
  %sub89 = sub nsw i32 %sub88, %126
  %mul90 = mul nsw i32 %sub86, %sub89
  %127 = load i32, i32* %symbol_size_in_bytes, align 4
  %mul91 = mul nsw i32 %mul90, %127
  %conv92 = sext i32 %mul91 to i64
  %call93 = call i64 @write(i32 %117, i8* %118, i64 %conv92)
  %128 = load %struct.storable_picture*, %struct.storable_picture** %p.addr, align 8
  %chroma_format_idc94 = getelementptr inbounds %struct.storable_picture, %struct.storable_picture* %128, i32 0, i32 41
  %129 = load i32, i32* %chroma_format_idc94, align 4
  %cmp95 = icmp ne i32 %129, 0
  br i1 %cmp95, label %if.then.97, label %if.end.139

if.then.97:                                       ; preds = %if.end.81
  %130 = load %struct.storable_picture*, %struct.storable_picture** %p.addr, align 8
  %frame_cropping_rect_left_offset98 = getelementptr inbounds %struct.storable_picture, %struct.storable_picture* %130, i32 0, i32 44
  %131 = load i32, i32* %frame_cropping_rect_left_offset98, align 4
  store i32 %131, i32* %crop_left, align 4
  %132 = load %struct.storable_picture*, %struct.storable_picture** %p.addr, align 8
  %frame_cropping_rect_right_offset99 = getelementptr inbounds %struct.storable_picture, %struct.storable_picture* %132, i32 0, i32 45
  %133 = load i32, i32* %frame_cropping_rect_right_offset99, align 4
  store i32 %133, i32* %crop_right, align 4
  %134 = load %struct.storable_picture*, %struct.storable_picture** %p.addr, align 8
  %frame_mbs_only_flag100 = getelementptr inbounds %struct.storable_picture, %struct.storable_picture* %134, i32 0, i32 42
  %135 = load i32, i32* %frame_mbs_only_flag100, align 4
  %sub101 = sub nsw i32 2, %135
  %136 = load %struct.storable_picture*, %struct.storable_picture** %p.addr, align 8
  %frame_cropping_rect_top_offset102 = getelementptr inbounds %struct.storable_picture, %struct.storable_picture* %136, i32 0, i32 46
  %137 = load i32, i32* %frame_cropping_rect_top_offset102, align 4
  %mul103 = mul nsw i32 %sub101, %137
  store i32 %mul103, i32* %crop_top, align 4
  %138 = load %struct.storable_picture*, %struct.storable_picture** %p.addr, align 8
  %frame_mbs_only_flag104 = getelementptr inbounds %struct.storable_picture, %struct.storable_picture* %138, i32 0, i32 42
  %139 = load i32, i32* %frame_mbs_only_flag104, align 4
  %sub105 = sub nsw i32 2, %139
  %140 = load %struct.storable_picture*, %struct.storable_picture** %p.addr, align 8
  %frame_cropping_rect_bottom_offset106 = getelementptr inbounds %struct.storable_picture, %struct.storable_picture* %140, i32 0, i32 47
  %141 = load i32, i32* %frame_cropping_rect_bottom_offset106, align 4
  %mul107 = mul nsw i32 %sub105, %141
  store i32 %mul107, i32* %crop_bottom, align 4
  %142 = load %struct.storable_picture*, %struct.storable_picture** %p.addr, align 8
  %imgUV108 = getelementptr inbounds %struct.storable_picture, %struct.storable_picture* %142, i32 0, i32 30
  %143 = load i16***, i16**** %imgUV108, align 8
  %arrayidx109 = getelementptr inbounds i16**, i16*** %143, i64 0
  %144 = load i16**, i16*** %arrayidx109, align 8
  %145 = load i8*, i8** %buf, align 8
  %146 = load %struct.storable_picture*, %struct.storable_picture** %p.addr, align 8
  %size_x_cr110 = getelementptr inbounds %struct.storable_picture, %struct.storable_picture* %146, i32 0, i32 20
  %147 = load i32, i32* %size_x_cr110, align 4
  %148 = load %struct.storable_picture*, %struct.storable_picture** %p.addr, align 8
  %size_y_cr111 = getelementptr inbounds %struct.storable_picture, %struct.storable_picture* %148, i32 0, i32 21
  %149 = load i32, i32* %size_y_cr111, align 4
  %150 = load i32, i32* %symbol_size_in_bytes, align 4
  %151 = load i32, i32* %crop_left, align 4
  %152 = load i32, i32* %crop_right, align 4
  %153 = load i32, i32* %crop_top, align 4
  %154 = load i32, i32* %crop_bottom, align 4
  call void @img2buf(i16** %144, i8* %145, i32 %147, i32 %149, i32 %150, i32 %151, i32 %152, i32 %153, i32 %154)
  %155 = load i32, i32* %p_out.addr, align 4
  %156 = load i8*, i8** %buf, align 8
  %157 = load %struct.storable_picture*, %struct.storable_picture** %p.addr, align 8
  %size_y_cr112 = getelementptr inbounds %struct.storable_picture, %struct.storable_picture* %157, i32 0, i32 21
  %158 = load i32, i32* %size_y_cr112, align 4
  %159 = load i32, i32* %crop_bottom, align 4
  %sub113 = sub nsw i32 %158, %159
  %160 = load i32, i32* %crop_top, align 4
  %sub114 = sub nsw i32 %sub113, %160
  %161 = load %struct.storable_picture*, %struct.storable_picture** %p.addr, align 8
  %size_x_cr115 = getelementptr inbounds %struct.storable_picture, %struct.storable_picture* %161, i32 0, i32 20
  %162 = load i32, i32* %size_x_cr115, align 4
  %163 = load i32, i32* %crop_right, align 4
  %sub116 = sub nsw i32 %162, %163
  %164 = load i32, i32* %crop_left, align 4
  %sub117 = sub nsw i32 %sub116, %164
  %mul118 = mul nsw i32 %sub114, %sub117
  %165 = load i32, i32* %symbol_size_in_bytes, align 4
  %mul119 = mul nsw i32 %mul118, %165
  %conv120 = sext i32 %mul119 to i64
  %call121 = call i64 @write(i32 %155, i8* %156, i64 %conv120)
  %166 = load i32, i32* %rgb_output, align 4
  %tobool122 = icmp ne i32 %166, 0
  br i1 %tobool122, label %if.end.138, label %if.then.123

if.then.123:                                      ; preds = %if.then.97
  %167 = load %struct.storable_picture*, %struct.storable_picture** %p.addr, align 8
  %imgUV124 = getelementptr inbounds %struct.storable_picture, %struct.storable_picture* %167, i32 0, i32 30
  %168 = load i16***, i16**** %imgUV124, align 8
  %arrayidx125 = getelementptr inbounds i16**, i16*** %168, i64 1
  %169 = load i16**, i16*** %arrayidx125, align 8
  %170 = load i8*, i8** %buf, align 8
  %171 = load %struct.storable_picture*, %struct.storable_picture** %p.addr, align 8
  %size_x_cr126 = getelementptr inbounds %struct.storable_picture, %struct.storable_picture* %171, i32 0, i32 20
  %172 = load i32, i32* %size_x_cr126, align 4
  %173 = load %struct.storable_picture*, %struct.storable_picture** %p.addr, align 8
  %size_y_cr127 = getelementptr inbounds %struct.storable_picture, %struct.storable_picture* %173, i32 0, i32 21
  %174 = load i32, i32* %size_y_cr127, align 4
  %175 = load i32, i32* %symbol_size_in_bytes, align 4
  %176 = load i32, i32* %crop_left, align 4
  %177 = load i32, i32* %crop_right, align 4
  %178 = load i32, i32* %crop_top, align 4
  %179 = load i32, i32* %crop_bottom, align 4
  call void @img2buf(i16** %169, i8* %170, i32 %172, i32 %174, i32 %175, i32 %176, i32 %177, i32 %178, i32 %179)
  %180 = load i32, i32* %p_out.addr, align 4
  %181 = load i8*, i8** %buf, align 8
  %182 = load %struct.storable_picture*, %struct.storable_picture** %p.addr, align 8
  %size_y_cr128 = getelementptr inbounds %struct.storable_picture, %struct.storable_picture* %182, i32 0, i32 21
  %183 = load i32, i32* %size_y_cr128, align 4
  %184 = load i32, i32* %crop_bottom, align 4
  %sub129 = sub nsw i32 %183, %184
  %185 = load i32, i32* %crop_top, align 4
  %sub130 = sub nsw i32 %sub129, %185
  %186 = load %struct.storable_picture*, %struct.storable_picture** %p.addr, align 8
  %size_x_cr131 = getelementptr inbounds %struct.storable_picture, %struct.storable_picture* %186, i32 0, i32 20
  %187 = load i32, i32* %size_x_cr131, align 4
  %188 = load i32, i32* %crop_right, align 4
  %sub132 = sub nsw i32 %187, %188
  %189 = load i32, i32* %crop_left, align 4
  %sub133 = sub nsw i32 %sub132, %189
  %mul134 = mul nsw i32 %sub130, %sub133
  %190 = load i32, i32* %symbol_size_in_bytes, align 4
  %mul135 = mul nsw i32 %mul134, %190
  %conv136 = sext i32 %mul135 to i64
  %call137 = call i64 @write(i32 %180, i8* %181, i64 %conv136)
  br label %if.end.138

if.end.138:                                       ; preds = %if.then.123, %if.then.97
  br label %if.end.139

if.end.139:                                       ; preds = %if.end.138, %if.end.81
  %191 = load i8*, i8** %buf, align 8
  call void @free(i8* %191) #1
  br label %return

return:                                           ; preds = %if.end.139, %if.then
  ret void
}

; Function Attrs: nounwind
declare noalias i8* @malloc(i64) #3

declare void @no_mem_exit(i8*) #2

declare i64 @write(i32, i8*, i64) #2

; Function Attrs: nounwind
declare void @free(i8*) #3

; Function Attrs: nounwind uwtable
define void @init_out_buffer() #0 {
entry:
  %call = call %struct.frame_store* (...) @alloc_frame_store()
  store %struct.frame_store* %call, %struct.frame_store** @out_buffer, align 8
  ret void
}

declare %struct.frame_store* @alloc_frame_store(...) #2

; Function Attrs: nounwind uwtable
define void @uninit_out_buffer() #0 {
entry:
  %0 = load %struct.frame_store*, %struct.frame_store** @out_buffer, align 8
  call void @free_frame_store(%struct.frame_store* %0)
  store %struct.frame_store* null, %struct.frame_store** @out_buffer, align 8
  ret void
}

declare void @free_frame_store(%struct.frame_store*) #2

; Function Attrs: nounwind uwtable
define void @clear_picture(%struct.storable_picture* %p) #0 {
entry:
  %p.addr = alloca %struct.storable_picture*, align 8
  %i = alloca i32, align 4
  store %struct.storable_picture* %p, %struct.storable_picture** %p.addr, align 8
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %0 = load i32, i32* %i, align 4
  %1 = load %struct.storable_picture*, %struct.storable_picture** %p.addr, align 8
  %size_y = getelementptr inbounds %struct.storable_picture, %struct.storable_picture* %1, i32 0, i32 19
  %2 = load i32, i32* %size_y, align 4
  %cmp = icmp slt i32 %0, %2
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %3 = load i32, i32* %i, align 4
  %idxprom = sext i32 %3 to i64
  %4 = load %struct.storable_picture*, %struct.storable_picture** %p.addr, align 8
  %imgY = getelementptr inbounds %struct.storable_picture, %struct.storable_picture* %4, i32 0, i32 25
  %5 = load i16**, i16*** %imgY, align 8
  %arrayidx = getelementptr inbounds i16*, i16** %5, i64 %idxprom
  %6 = load i16*, i16** %arrayidx, align 8
  %7 = bitcast i16* %6 to i8*
  %8 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %dc_pred_value = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %8, i32 0, i32 154
  %9 = load i32, i32* %dc_pred_value, align 4
  %10 = trunc i32 %9 to i8
  %11 = load %struct.storable_picture*, %struct.storable_picture** %p.addr, align 8
  %size_x = getelementptr inbounds %struct.storable_picture, %struct.storable_picture* %11, i32 0, i32 18
  %12 = load i32, i32* %size_x, align 4
  %conv = sext i32 %12 to i64
  %mul = mul i64 %conv, 2
  call void @llvm.memset.p0i8.i64(i8* %7, i8 %10, i64 %mul, i32 2, i1 false)
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %13 = load i32, i32* %i, align 4
  %inc = add nsw i32 %13, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  store i32 0, i32* %i, align 4
  br label %for.cond.1

for.cond.1:                                       ; preds = %for.inc.11, %for.end
  %14 = load i32, i32* %i, align 4
  %15 = load %struct.storable_picture*, %struct.storable_picture** %p.addr, align 8
  %size_y_cr = getelementptr inbounds %struct.storable_picture, %struct.storable_picture* %15, i32 0, i32 21
  %16 = load i32, i32* %size_y_cr, align 4
  %cmp2 = icmp slt i32 %14, %16
  br i1 %cmp2, label %for.body.4, label %for.end.13

for.body.4:                                       ; preds = %for.cond.1
  %17 = load i32, i32* %i, align 4
  %idxprom5 = sext i32 %17 to i64
  %18 = load %struct.storable_picture*, %struct.storable_picture** %p.addr, align 8
  %imgUV = getelementptr inbounds %struct.storable_picture, %struct.storable_picture* %18, i32 0, i32 30
  %19 = load i16***, i16**** %imgUV, align 8
  %arrayidx6 = getelementptr inbounds i16**, i16*** %19, i64 0
  %20 = load i16**, i16*** %arrayidx6, align 8
  %arrayidx7 = getelementptr inbounds i16*, i16** %20, i64 %idxprom5
  %21 = load i16*, i16** %arrayidx7, align 8
  %22 = bitcast i16* %21 to i8*
  %23 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %dc_pred_value8 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %23, i32 0, i32 154
  %24 = load i32, i32* %dc_pred_value8, align 4
  %25 = trunc i32 %24 to i8
  %26 = load %struct.storable_picture*, %struct.storable_picture** %p.addr, align 8
  %size_x_cr = getelementptr inbounds %struct.storable_picture, %struct.storable_picture* %26, i32 0, i32 20
  %27 = load i32, i32* %size_x_cr, align 4
  %conv9 = sext i32 %27 to i64
  %mul10 = mul i64 %conv9, 2
  call void @llvm.memset.p0i8.i64(i8* %22, i8 %25, i64 %mul10, i32 2, i1 false)
  br label %for.inc.11

for.inc.11:                                       ; preds = %for.body.4
  %28 = load i32, i32* %i, align 4
  %inc12 = add nsw i32 %28, 1
  store i32 %inc12, i32* %i, align 4
  br label %for.cond.1

for.end.13:                                       ; preds = %for.cond.1
  store i32 0, i32* %i, align 4
  br label %for.cond.14

for.cond.14:                                      ; preds = %for.inc.27, %for.end.13
  %29 = load i32, i32* %i, align 4
  %30 = load %struct.storable_picture*, %struct.storable_picture** %p.addr, align 8
  %size_y_cr15 = getelementptr inbounds %struct.storable_picture, %struct.storable_picture* %30, i32 0, i32 21
  %31 = load i32, i32* %size_y_cr15, align 4
  %cmp16 = icmp slt i32 %29, %31
  br i1 %cmp16, label %for.body.18, label %for.end.29

for.body.18:                                      ; preds = %for.cond.14
  %32 = load i32, i32* %i, align 4
  %idxprom19 = sext i32 %32 to i64
  %33 = load %struct.storable_picture*, %struct.storable_picture** %p.addr, align 8
  %imgUV20 = getelementptr inbounds %struct.storable_picture, %struct.storable_picture* %33, i32 0, i32 30
  %34 = load i16***, i16**** %imgUV20, align 8
  %arrayidx21 = getelementptr inbounds i16**, i16*** %34, i64 1
  %35 = load i16**, i16*** %arrayidx21, align 8
  %arrayidx22 = getelementptr inbounds i16*, i16** %35, i64 %idxprom19
  %36 = load i16*, i16** %arrayidx22, align 8
  %37 = bitcast i16* %36 to i8*
  %38 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %dc_pred_value23 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %38, i32 0, i32 154
  %39 = load i32, i32* %dc_pred_value23, align 4
  %40 = trunc i32 %39 to i8
  %41 = load %struct.storable_picture*, %struct.storable_picture** %p.addr, align 8
  %size_x_cr24 = getelementptr inbounds %struct.storable_picture, %struct.storable_picture* %41, i32 0, i32 20
  %42 = load i32, i32* %size_x_cr24, align 4
  %conv25 = sext i32 %42 to i64
  %mul26 = mul i64 %conv25, 2
  call void @llvm.memset.p0i8.i64(i8* %37, i8 %40, i64 %mul26, i32 2, i1 false)
  br label %for.inc.27

for.inc.27:                                       ; preds = %for.body.18
  %43 = load i32, i32* %i, align 4
  %inc28 = add nsw i32 %43, 1
  store i32 %inc28, i32* %i, align 4
  br label %for.cond.14

for.end.29:                                       ; preds = %for.cond.14
  ret void
}

; Function Attrs: nounwind uwtable
define void @write_unpaired_field(%struct.frame_store* %fs, i32 %p_out) #0 {
entry:
  %fs.addr = alloca %struct.frame_store*, align 8
  %p_out.addr = alloca i32, align 4
  %p = alloca %struct.storable_picture*, align 8
  store %struct.frame_store* %fs, %struct.frame_store** %fs.addr, align 8
  store i32 %p_out, i32* %p_out.addr, align 4
  %0 = load %struct.frame_store*, %struct.frame_store** %fs.addr, align 8
  %is_used = getelementptr inbounds %struct.frame_store, %struct.frame_store* %0, i32 0, i32 0
  %1 = load i32, i32* %is_used, align 4
  %and = and i32 %1, 1
  %tobool = icmp ne i32 %and, 0
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %2 = load %struct.frame_store*, %struct.frame_store** %fs.addr, align 8
  %top_field = getelementptr inbounds %struct.frame_store, %struct.frame_store* %2, i32 0, i32 11
  %3 = load %struct.storable_picture*, %struct.storable_picture** %top_field, align 8
  store %struct.storable_picture* %3, %struct.storable_picture** %p, align 8
  %4 = load %struct.storable_picture*, %struct.storable_picture** %p, align 8
  %size_x = getelementptr inbounds %struct.storable_picture, %struct.storable_picture* %4, i32 0, i32 18
  %5 = load i32, i32* %size_x, align 4
  %6 = load %struct.storable_picture*, %struct.storable_picture** %p, align 8
  %size_y = getelementptr inbounds %struct.storable_picture, %struct.storable_picture* %6, i32 0, i32 19
  %7 = load i32, i32* %size_y, align 4
  %8 = load %struct.storable_picture*, %struct.storable_picture** %p, align 8
  %size_x_cr = getelementptr inbounds %struct.storable_picture, %struct.storable_picture* %8, i32 0, i32 20
  %9 = load i32, i32* %size_x_cr, align 4
  %10 = load %struct.storable_picture*, %struct.storable_picture** %p, align 8
  %size_y_cr = getelementptr inbounds %struct.storable_picture, %struct.storable_picture* %10, i32 0, i32 21
  %11 = load i32, i32* %size_y_cr, align 4
  %call = call %struct.storable_picture* @alloc_storable_picture(i32 2, i32 %5, i32 %7, i32 %9, i32 %11)
  %12 = load %struct.frame_store*, %struct.frame_store** %fs.addr, align 8
  %bottom_field = getelementptr inbounds %struct.frame_store, %struct.frame_store* %12, i32 0, i32 12
  store %struct.storable_picture* %call, %struct.storable_picture** %bottom_field, align 8
  %13 = load %struct.frame_store*, %struct.frame_store** %fs.addr, align 8
  %bottom_field1 = getelementptr inbounds %struct.frame_store, %struct.frame_store* %13, i32 0, i32 12
  %14 = load %struct.storable_picture*, %struct.storable_picture** %bottom_field1, align 8
  call void @clear_picture(%struct.storable_picture* %14)
  %15 = load %struct.frame_store*, %struct.frame_store** %fs.addr, align 8
  call void @dpb_combine_field(%struct.frame_store* %15)
  %16 = load %struct.frame_store*, %struct.frame_store** %fs.addr, align 8
  %frame = getelementptr inbounds %struct.frame_store, %struct.frame_store* %16, i32 0, i32 10
  %17 = load %struct.storable_picture*, %struct.storable_picture** %frame, align 8
  %18 = load i32, i32* %p_out.addr, align 4
  call void @write_picture(%struct.storable_picture* %17, i32 %18, i32 1)
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %19 = load %struct.frame_store*, %struct.frame_store** %fs.addr, align 8
  %is_used2 = getelementptr inbounds %struct.frame_store, %struct.frame_store* %19, i32 0, i32 0
  %20 = load i32, i32* %is_used2, align 4
  %and3 = and i32 %20, 2
  %tobool4 = icmp ne i32 %and3, 0
  br i1 %tobool4, label %if.then.5, label %if.end.15

if.then.5:                                        ; preds = %if.end
  %21 = load %struct.frame_store*, %struct.frame_store** %fs.addr, align 8
  %bottom_field6 = getelementptr inbounds %struct.frame_store, %struct.frame_store* %21, i32 0, i32 12
  %22 = load %struct.storable_picture*, %struct.storable_picture** %bottom_field6, align 8
  store %struct.storable_picture* %22, %struct.storable_picture** %p, align 8
  %23 = load %struct.storable_picture*, %struct.storable_picture** %p, align 8
  %size_x7 = getelementptr inbounds %struct.storable_picture, %struct.storable_picture* %23, i32 0, i32 18
  %24 = load i32, i32* %size_x7, align 4
  %25 = load %struct.storable_picture*, %struct.storable_picture** %p, align 8
  %size_y8 = getelementptr inbounds %struct.storable_picture, %struct.storable_picture* %25, i32 0, i32 19
  %26 = load i32, i32* %size_y8, align 4
  %27 = load %struct.storable_picture*, %struct.storable_picture** %p, align 8
  %size_x_cr9 = getelementptr inbounds %struct.storable_picture, %struct.storable_picture* %27, i32 0, i32 20
  %28 = load i32, i32* %size_x_cr9, align 4
  %29 = load %struct.storable_picture*, %struct.storable_picture** %p, align 8
  %size_y_cr10 = getelementptr inbounds %struct.storable_picture, %struct.storable_picture* %29, i32 0, i32 21
  %30 = load i32, i32* %size_y_cr10, align 4
  %call11 = call %struct.storable_picture* @alloc_storable_picture(i32 1, i32 %24, i32 %26, i32 %28, i32 %30)
  %31 = load %struct.frame_store*, %struct.frame_store** %fs.addr, align 8
  %top_field12 = getelementptr inbounds %struct.frame_store, %struct.frame_store* %31, i32 0, i32 11
  store %struct.storable_picture* %call11, %struct.storable_picture** %top_field12, align 8
  %32 = load %struct.frame_store*, %struct.frame_store** %fs.addr, align 8
  %top_field13 = getelementptr inbounds %struct.frame_store, %struct.frame_store* %32, i32 0, i32 11
  %33 = load %struct.storable_picture*, %struct.storable_picture** %top_field13, align 8
  call void @clear_picture(%struct.storable_picture* %33)
  %34 = load %struct.frame_store*, %struct.frame_store** %fs.addr, align 8
  call void @dpb_combine_field(%struct.frame_store* %34)
  %35 = load %struct.frame_store*, %struct.frame_store** %fs.addr, align 8
  %frame14 = getelementptr inbounds %struct.frame_store, %struct.frame_store* %35, i32 0, i32 10
  %36 = load %struct.storable_picture*, %struct.storable_picture** %frame14, align 8
  %37 = load i32, i32* %p_out.addr, align 4
  call void @write_picture(%struct.storable_picture* %36, i32 %37, i32 2)
  br label %if.end.15

if.end.15:                                        ; preds = %if.then.5, %if.end
  %38 = load %struct.frame_store*, %struct.frame_store** %fs.addr, align 8
  %is_used16 = getelementptr inbounds %struct.frame_store, %struct.frame_store* %38, i32 0, i32 0
  store i32 3, i32* %is_used16, align 4
  ret void
}

declare %struct.storable_picture* @alloc_storable_picture(i32, i32, i32, i32, i32) #2

declare void @dpb_combine_field(%struct.frame_store*) #2

; Function Attrs: nounwind uwtable
define void @flush_direct_output(i32 %p_out) #0 {
entry:
  %p_out.addr = alloca i32, align 4
  store i32 %p_out, i32* %p_out.addr, align 4
  %0 = load %struct.frame_store*, %struct.frame_store** @out_buffer, align 8
  %1 = load i32, i32* %p_out.addr, align 4
  call void @write_unpaired_field(%struct.frame_store* %0, i32 %1)
  %2 = load %struct.frame_store*, %struct.frame_store** @out_buffer, align 8
  %frame = getelementptr inbounds %struct.frame_store, %struct.frame_store* %2, i32 0, i32 10
  %3 = load %struct.storable_picture*, %struct.storable_picture** %frame, align 8
  call void @free_storable_picture(%struct.storable_picture* %3)
  %4 = load %struct.frame_store*, %struct.frame_store** @out_buffer, align 8
  %frame1 = getelementptr inbounds %struct.frame_store, %struct.frame_store* %4, i32 0, i32 10
  store %struct.storable_picture* null, %struct.storable_picture** %frame1, align 8
  %5 = load %struct.frame_store*, %struct.frame_store** @out_buffer, align 8
  %top_field = getelementptr inbounds %struct.frame_store, %struct.frame_store* %5, i32 0, i32 11
  %6 = load %struct.storable_picture*, %struct.storable_picture** %top_field, align 8
  call void @free_storable_picture(%struct.storable_picture* %6)
  %7 = load %struct.frame_store*, %struct.frame_store** @out_buffer, align 8
  %top_field2 = getelementptr inbounds %struct.frame_store, %struct.frame_store* %7, i32 0, i32 11
  store %struct.storable_picture* null, %struct.storable_picture** %top_field2, align 8
  %8 = load %struct.frame_store*, %struct.frame_store** @out_buffer, align 8
  %bottom_field = getelementptr inbounds %struct.frame_store, %struct.frame_store* %8, i32 0, i32 12
  %9 = load %struct.storable_picture*, %struct.storable_picture** %bottom_field, align 8
  call void @free_storable_picture(%struct.storable_picture* %9)
  %10 = load %struct.frame_store*, %struct.frame_store** @out_buffer, align 8
  %bottom_field3 = getelementptr inbounds %struct.frame_store, %struct.frame_store* %10, i32 0, i32 12
  store %struct.storable_picture* null, %struct.storable_picture** %bottom_field3, align 8
  %11 = load %struct.frame_store*, %struct.frame_store** @out_buffer, align 8
  %is_used = getelementptr inbounds %struct.frame_store, %struct.frame_store* %11, i32 0, i32 0
  store i32 0, i32* %is_used, align 4
  ret void
}

declare void @free_storable_picture(%struct.storable_picture*) #2

; Function Attrs: nounwind uwtable
define void @write_stored_frame(%struct.frame_store* %fs, i32 %p_out) #0 {
entry:
  %fs.addr = alloca %struct.frame_store*, align 8
  %p_out.addr = alloca i32, align 4
  store %struct.frame_store* %fs, %struct.frame_store** %fs.addr, align 8
  store i32 %p_out, i32* %p_out.addr, align 4
  %0 = load i32, i32* %p_out.addr, align 4
  call void @flush_direct_output(i32 %0)
  %1 = load %struct.frame_store*, %struct.frame_store** %fs.addr, align 8
  %is_used = getelementptr inbounds %struct.frame_store, %struct.frame_store* %1, i32 0, i32 0
  %2 = load i32, i32* %is_used, align 4
  %cmp = icmp slt i32 %2, 3
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %3 = load %struct.frame_store*, %struct.frame_store** %fs.addr, align 8
  %4 = load i32, i32* %p_out.addr, align 4
  call void @write_unpaired_field(%struct.frame_store* %3, i32 %4)
  br label %if.end

if.else:                                          ; preds = %entry
  %5 = load %struct.frame_store*, %struct.frame_store** %fs.addr, align 8
  %frame = getelementptr inbounds %struct.frame_store, %struct.frame_store* %5, i32 0, i32 10
  %6 = load %struct.storable_picture*, %struct.storable_picture** %frame, align 8
  %7 = load i32, i32* %p_out.addr, align 4
  call void @write_picture(%struct.storable_picture* %6, i32 %7, i32 0)
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %8 = load %struct.frame_store*, %struct.frame_store** %fs.addr, align 8
  %is_output = getelementptr inbounds %struct.frame_store, %struct.frame_store* %8, i32 0, i32 8
  store i32 1, i32* %is_output, align 4
  ret void
}

; Function Attrs: nounwind uwtable
define void @direct_output(%struct.storable_picture* %p, i32 %p_out) #0 {
entry:
  %p.addr = alloca %struct.storable_picture*, align 8
  %p_out.addr = alloca i32, align 4
  store %struct.storable_picture* %p, %struct.storable_picture** %p.addr, align 8
  store i32 %p_out, i32* %p_out.addr, align 4
  %0 = load %struct.storable_picture*, %struct.storable_picture** %p.addr, align 8
  %structure = getelementptr inbounds %struct.storable_picture, %struct.storable_picture* %0, i32 0, i32 0
  %1 = load i32, i32* %structure, align 4
  %cmp = icmp eq i32 %1, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %2 = load i32, i32* %p_out.addr, align 4
  call void @flush_direct_output(i32 %2)
  %3 = load %struct.storable_picture*, %struct.storable_picture** %p.addr, align 8
  %4 = load i32, i32* %p_out.addr, align 4
  call void @write_picture(%struct.storable_picture* %3, i32 %4, i32 0)
  %5 = load %struct.storable_picture*, %struct.storable_picture** %p.addr, align 8
  call void @free_storable_picture(%struct.storable_picture* %5)
  br label %if.end.29

if.end:                                           ; preds = %entry
  %6 = load %struct.storable_picture*, %struct.storable_picture** %p.addr, align 8
  %structure1 = getelementptr inbounds %struct.storable_picture, %struct.storable_picture* %6, i32 0, i32 0
  %7 = load i32, i32* %structure1, align 4
  %cmp2 = icmp eq i32 %7, 1
  br i1 %cmp2, label %if.then.3, label %if.end.7

if.then.3:                                        ; preds = %if.end
  %8 = load %struct.frame_store*, %struct.frame_store** @out_buffer, align 8
  %is_used = getelementptr inbounds %struct.frame_store, %struct.frame_store* %8, i32 0, i32 0
  %9 = load i32, i32* %is_used, align 4
  %and = and i32 %9, 1
  %tobool = icmp ne i32 %and, 0
  br i1 %tobool, label %if.then.4, label %if.end.5

if.then.4:                                        ; preds = %if.then.3
  %10 = load i32, i32* %p_out.addr, align 4
  call void @flush_direct_output(i32 %10)
  br label %if.end.5

if.end.5:                                         ; preds = %if.then.4, %if.then.3
  %11 = load %struct.storable_picture*, %struct.storable_picture** %p.addr, align 8
  %12 = load %struct.frame_store*, %struct.frame_store** @out_buffer, align 8
  %top_field = getelementptr inbounds %struct.frame_store, %struct.frame_store* %12, i32 0, i32 11
  store %struct.storable_picture* %11, %struct.storable_picture** %top_field, align 8
  %13 = load %struct.frame_store*, %struct.frame_store** @out_buffer, align 8
  %is_used6 = getelementptr inbounds %struct.frame_store, %struct.frame_store* %13, i32 0, i32 0
  %14 = load i32, i32* %is_used6, align 4
  %or = or i32 %14, 1
  store i32 %or, i32* %is_used6, align 4
  br label %if.end.7

if.end.7:                                         ; preds = %if.end.5, %if.end
  %15 = load %struct.storable_picture*, %struct.storable_picture** %p.addr, align 8
  %structure8 = getelementptr inbounds %struct.storable_picture, %struct.storable_picture* %15, i32 0, i32 0
  %16 = load i32, i32* %structure8, align 4
  %cmp9 = icmp eq i32 %16, 2
  br i1 %cmp9, label %if.then.10, label %if.end.18

if.then.10:                                       ; preds = %if.end.7
  %17 = load %struct.frame_store*, %struct.frame_store** @out_buffer, align 8
  %is_used11 = getelementptr inbounds %struct.frame_store, %struct.frame_store* %17, i32 0, i32 0
  %18 = load i32, i32* %is_used11, align 4
  %and12 = and i32 %18, 2
  %tobool13 = icmp ne i32 %and12, 0
  br i1 %tobool13, label %if.then.14, label %if.end.15

if.then.14:                                       ; preds = %if.then.10
  %19 = load i32, i32* %p_out.addr, align 4
  call void @flush_direct_output(i32 %19)
  br label %if.end.15

if.end.15:                                        ; preds = %if.then.14, %if.then.10
  %20 = load %struct.storable_picture*, %struct.storable_picture** %p.addr, align 8
  %21 = load %struct.frame_store*, %struct.frame_store** @out_buffer, align 8
  %bottom_field = getelementptr inbounds %struct.frame_store, %struct.frame_store* %21, i32 0, i32 12
  store %struct.storable_picture* %20, %struct.storable_picture** %bottom_field, align 8
  %22 = load %struct.frame_store*, %struct.frame_store** @out_buffer, align 8
  %is_used16 = getelementptr inbounds %struct.frame_store, %struct.frame_store* %22, i32 0, i32 0
  %23 = load i32, i32* %is_used16, align 4
  %or17 = or i32 %23, 2
  store i32 %or17, i32* %is_used16, align 4
  br label %if.end.18

if.end.18:                                        ; preds = %if.end.15, %if.end.7
  %24 = load %struct.frame_store*, %struct.frame_store** @out_buffer, align 8
  %is_used19 = getelementptr inbounds %struct.frame_store, %struct.frame_store* %24, i32 0, i32 0
  %25 = load i32, i32* %is_used19, align 4
  %cmp20 = icmp eq i32 %25, 3
  br i1 %cmp20, label %if.then.21, label %if.end.29

if.then.21:                                       ; preds = %if.end.18
  %26 = load %struct.frame_store*, %struct.frame_store** @out_buffer, align 8
  call void @dpb_combine_field(%struct.frame_store* %26)
  %27 = load %struct.frame_store*, %struct.frame_store** @out_buffer, align 8
  %frame = getelementptr inbounds %struct.frame_store, %struct.frame_store* %27, i32 0, i32 10
  %28 = load %struct.storable_picture*, %struct.storable_picture** %frame, align 8
  %29 = load i32, i32* %p_out.addr, align 4
  call void @write_picture(%struct.storable_picture* %28, i32 %29, i32 0)
  %30 = load %struct.frame_store*, %struct.frame_store** @out_buffer, align 8
  %frame22 = getelementptr inbounds %struct.frame_store, %struct.frame_store* %30, i32 0, i32 10
  %31 = load %struct.storable_picture*, %struct.storable_picture** %frame22, align 8
  call void @free_storable_picture(%struct.storable_picture* %31)
  %32 = load %struct.frame_store*, %struct.frame_store** @out_buffer, align 8
  %frame23 = getelementptr inbounds %struct.frame_store, %struct.frame_store* %32, i32 0, i32 10
  store %struct.storable_picture* null, %struct.storable_picture** %frame23, align 8
  %33 = load %struct.frame_store*, %struct.frame_store** @out_buffer, align 8
  %top_field24 = getelementptr inbounds %struct.frame_store, %struct.frame_store* %33, i32 0, i32 11
  %34 = load %struct.storable_picture*, %struct.storable_picture** %top_field24, align 8
  call void @free_storable_picture(%struct.storable_picture* %34)
  %35 = load %struct.frame_store*, %struct.frame_store** @out_buffer, align 8
  %top_field25 = getelementptr inbounds %struct.frame_store, %struct.frame_store* %35, i32 0, i32 11
  store %struct.storable_picture* null, %struct.storable_picture** %top_field25, align 8
  %36 = load %struct.frame_store*, %struct.frame_store** @out_buffer, align 8
  %bottom_field26 = getelementptr inbounds %struct.frame_store, %struct.frame_store* %36, i32 0, i32 12
  %37 = load %struct.storable_picture*, %struct.storable_picture** %bottom_field26, align 8
  call void @free_storable_picture(%struct.storable_picture* %37)
  %38 = load %struct.frame_store*, %struct.frame_store** @out_buffer, align 8
  %bottom_field27 = getelementptr inbounds %struct.frame_store, %struct.frame_store* %38, i32 0, i32 12
  store %struct.storable_picture* null, %struct.storable_picture** %bottom_field27, align 8
  %39 = load %struct.frame_store*, %struct.frame_store** @out_buffer, align 8
  %is_used28 = getelementptr inbounds %struct.frame_store, %struct.frame_store* %39, i32 0, i32 0
  store i32 0, i32* %is_used28, align 4
  br label %if.end.29

if.end.29:                                        ; preds = %if.then, %if.then.21, %if.end.18
  ret void
}

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.ident = !{!0}

!0 = !{!"clang version 3.7.0 (tags/RELEASE_370/final)"}
