; ModuleID = 'decoder.c'
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
%struct.storable_picture = type { i32, i32, i32, i32, i32, i32, [6 x [33 x i64]], [6 x [33 x i64]], [6 x [33 x i64]], [6 x [33 x i64]], i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i16**, i16*, i16*, i16**, i16**, i16***, i8*, i16***, i64***, i64***, i16****, i8**, i8**, %struct.storable_picture*, %struct.storable_picture*, %struct.storable_picture*, i32, i32, i32, i32, i32, i32, i32 }
%struct.Decoders = type { i32**, i16***, i16****, i16***, i16**, i8**, i8** }
%struct.InputParameters = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [8 x [2 x i32]], [8 x [2 x i32]], i32, i32, i32, i32, [200 x i8], [200 x i8], [200 x i8], [200 x i8], [200 x i8], i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [1024 x i8], i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, double, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [200 x i8], [200 x i8], i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [200 x i8], i32, i32, i32*, i32*, i8*, i32*, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [8 x i32], i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [6 x double], [200 x i8], i32 }

@img = external global %struct.ImageParameters*, align 8
@start_frame_no_in_this_IGOP = external global i32, align 4
@enc_picture = external global %struct.storable_picture*, align 8
@decs = external global %struct.Decoders*, align 8
@enc_frame_picture = external global %struct.storable_picture*, align 8
@Get_Reference_Pixel.COEF = internal constant [6 x i32] [i32 1, i32 -5, i32 20, i32 20, i32 -5, i32 1], align 16
@input = external global %struct.InputParameters*, align 8

; Function Attrs: nounwind uwtable
define void @decode_one_b8block(i32 %decoder, i32 %mbmode, i32 %b8block, i32 %b8mode, i32 %b8ref) #0 {
entry:
  %decoder.addr = alloca i32, align 4
  %mbmode.addr = alloca i32, align 4
  %b8block.addr = alloca i32, align 4
  %b8mode.addr = alloca i32, align 4
  %b8ref.addr = alloca i32, align 4
  %i = alloca i32, align 4
  %j = alloca i32, align 4
  %block_y = alloca i32, align 4
  %block_x = alloca i32, align 4
  %bx = alloca i32, align 4
  %by = alloca i32, align 4
  %ref_inx = alloca i32, align 4
  %mv = alloca [2 x [4 x [4 x i32]]], align 16
  %resY_tmp = alloca [16 x [16 x i32]], align 16
  %i0 = alloca i32, align 4
  %i1 = alloca i32, align 4
  %bx0 = alloca i32, align 4
  %bx1 = alloca i32, align 4
  %j0 = alloca i32, align 4
  %j1 = alloca i32, align 4
  %by0 = alloca i32, align 4
  %by1 = alloca i32, align 4
  store i32 %decoder, i32* %decoder.addr, align 4
  store i32 %mbmode, i32* %mbmode.addr, align 4
  store i32 %b8block, i32* %b8block.addr, align 4
  store i32 %b8mode, i32* %b8mode.addr, align 4
  store i32 %b8ref, i32* %b8ref.addr, align 4
  %0 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %number = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %0, i32 0, i32 0
  %1 = load i32, i32* %number, align 4
  %2 = load i32, i32* @start_frame_no_in_this_IGOP, align 4
  %sub = sub nsw i32 %1, %2
  %sub1 = sub nsw i32 %sub, 1
  %3 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %num_ref_frames = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %3, i32 0, i32 8
  %4 = load i32, i32* %num_ref_frames, align 4
  %rem = srem i32 %sub1, %4
  store i32 %rem, i32* %ref_inx, align 4
  %5 = load i32, i32* %b8block.addr, align 4
  %rem2 = srem i32 %5, 2
  %shl = shl i32 %rem2, 3
  store i32 %shl, i32* %i0, align 4
  %6 = load i32, i32* %i0, align 4
  %add = add nsw i32 %6, 8
  store i32 %add, i32* %i1, align 4
  %7 = load i32, i32* %i0, align 4
  %shr = ashr i32 %7, 2
  store i32 %shr, i32* %bx0, align 4
  %8 = load i32, i32* %bx0, align 4
  %add3 = add nsw i32 %8, 2
  store i32 %add3, i32* %bx1, align 4
  %9 = load i32, i32* %b8block.addr, align 4
  %div = sdiv i32 %9, 2
  %shl4 = shl i32 %div, 3
  store i32 %shl4, i32* %j0, align 4
  %10 = load i32, i32* %j0, align 4
  %add5 = add nsw i32 %10, 8
  store i32 %add5, i32* %j1, align 4
  %11 = load i32, i32* %j0, align 4
  %shr6 = ashr i32 %11, 2
  store i32 %shr6, i32* %by0, align 4
  %12 = load i32, i32* %by0, align 4
  %add7 = add nsw i32 %12, 2
  store i32 %add7, i32* %by1, align 4
  %13 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %type = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %13, i32 0, i32 6
  %14 = load i32, i32* %type, align 4
  %cmp = icmp eq i32 %14, 2
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %15 = load i32, i32* %i0, align 4
  store i32 %15, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc.26, %if.then
  %16 = load i32, i32* %i, align 4
  %17 = load i32, i32* %i1, align 4
  %cmp8 = icmp slt i32 %16, %17
  br i1 %cmp8, label %for.body, label %for.end.28

for.body:                                         ; preds = %for.cond
  %18 = load i32, i32* %j0, align 4
  store i32 %18, i32* %j, align 4
  br label %for.cond.9

for.cond.9:                                       ; preds = %for.inc, %for.body
  %19 = load i32, i32* %j, align 4
  %20 = load i32, i32* %j1, align 4
  %cmp10 = icmp slt i32 %19, %20
  br i1 %cmp10, label %for.body.11, label %for.end

for.body.11:                                      ; preds = %for.cond.9
  %21 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %pix_x = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %21, i32 0, i32 33
  %22 = load i32, i32* %pix_x, align 4
  %23 = load i32, i32* %i, align 4
  %add12 = add nsw i32 %22, %23
  %idxprom = sext i32 %add12 to i64
  %24 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %pix_y = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %24, i32 0, i32 34
  %25 = load i32, i32* %pix_y, align 4
  %26 = load i32, i32* %j, align 4
  %add13 = add nsw i32 %25, %26
  %idxprom14 = sext i32 %add13 to i64
  %27 = load %struct.storable_picture*, %struct.storable_picture** @enc_picture, align 8
  %imgY = getelementptr inbounds %struct.storable_picture, %struct.storable_picture* %27, i32 0, i32 25
  %28 = load i16**, i16*** %imgY, align 8
  %arrayidx = getelementptr inbounds i16*, i16** %28, i64 %idxprom14
  %29 = load i16*, i16** %arrayidx, align 8
  %arrayidx15 = getelementptr inbounds i16, i16* %29, i64 %idxprom
  %30 = load i16, i16* %arrayidx15, align 2
  %31 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %pix_x16 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %31, i32 0, i32 33
  %32 = load i32, i32* %pix_x16, align 4
  %33 = load i32, i32* %i, align 4
  %add17 = add nsw i32 %32, %33
  %idxprom18 = sext i32 %add17 to i64
  %34 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %pix_y19 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %34, i32 0, i32 34
  %35 = load i32, i32* %pix_y19, align 4
  %36 = load i32, i32* %j, align 4
  %add20 = add nsw i32 %35, %36
  %idxprom21 = sext i32 %add20 to i64
  %37 = load i32, i32* %decoder.addr, align 4
  %idxprom22 = sext i32 %37 to i64
  %38 = load %struct.Decoders*, %struct.Decoders** @decs, align 8
  %decY = getelementptr inbounds %struct.Decoders, %struct.Decoders* %38, i32 0, i32 1
  %39 = load i16***, i16**** %decY, align 8
  %arrayidx23 = getelementptr inbounds i16**, i16*** %39, i64 %idxprom22
  %40 = load i16**, i16*** %arrayidx23, align 8
  %arrayidx24 = getelementptr inbounds i16*, i16** %40, i64 %idxprom21
  %41 = load i16*, i16** %arrayidx24, align 8
  %arrayidx25 = getelementptr inbounds i16, i16* %41, i64 %idxprom18
  store i16 %30, i16* %arrayidx25, align 2
  br label %for.inc

for.inc:                                          ; preds = %for.body.11
  %42 = load i32, i32* %j, align 4
  %inc = add nsw i32 %42, 1
  store i32 %inc, i32* %j, align 4
  br label %for.cond.9

for.end:                                          ; preds = %for.cond.9
  br label %for.inc.26

for.inc.26:                                       ; preds = %for.end
  %43 = load i32, i32* %i, align 4
  %inc27 = add nsw i32 %43, 1
  store i32 %inc27, i32* %i, align 4
  br label %for.cond

for.end.28:                                       ; preds = %for.cond
  br label %if.end.315

if.else:                                          ; preds = %entry
  %44 = load i32, i32* %mbmode.addr, align 4
  %cmp29 = icmp eq i32 %44, 0
  br i1 %cmp29, label %land.lhs.true, label %if.else.75

land.lhs.true:                                    ; preds = %if.else
  %45 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %type30 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %45, i32 0, i32 6
  %46 = load i32, i32* %type30, align 4
  %cmp31 = icmp eq i32 %46, 0
  br i1 %cmp31, label %if.then.36, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %land.lhs.true
  %47 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %type32 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %47, i32 0, i32 6
  %48 = load i32, i32* %type32, align 4
  %cmp33 = icmp eq i32 %48, 1
  br i1 %cmp33, label %land.lhs.true.34, label %if.else.75

land.lhs.true.34:                                 ; preds = %lor.lhs.false
  %49 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %nal_reference_idc = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %49, i32 0, i32 113
  %50 = load i32, i32* %nal_reference_idc, align 4
  %cmp35 = icmp sgt i32 %50, 0
  br i1 %cmp35, label %if.then.36, label %if.else.75

if.then.36:                                       ; preds = %land.lhs.true.34, %land.lhs.true
  %51 = load i32, i32* %i0, align 4
  store i32 %51, i32* %i, align 4
  br label %for.cond.37

for.cond.37:                                      ; preds = %for.inc.50, %if.then.36
  %52 = load i32, i32* %i, align 4
  %53 = load i32, i32* %i1, align 4
  %cmp38 = icmp slt i32 %52, %53
  br i1 %cmp38, label %for.body.39, label %for.end.52

for.body.39:                                      ; preds = %for.cond.37
  %54 = load i32, i32* %j0, align 4
  store i32 %54, i32* %j, align 4
  br label %for.cond.40

for.cond.40:                                      ; preds = %for.inc.47, %for.body.39
  %55 = load i32, i32* %j, align 4
  %56 = load i32, i32* %j1, align 4
  %cmp41 = icmp slt i32 %55, %56
  br i1 %cmp41, label %for.body.42, label %for.end.49

for.body.42:                                      ; preds = %for.cond.40
  %57 = load i32, i32* %i, align 4
  %idxprom43 = sext i32 %57 to i64
  %58 = load i32, i32* %j, align 4
  %idxprom44 = sext i32 %58 to i64
  %arrayidx45 = getelementptr inbounds [16 x [16 x i32]], [16 x [16 x i32]]* %resY_tmp, i32 0, i64 %idxprom44
  %arrayidx46 = getelementptr inbounds [16 x i32], [16 x i32]* %arrayidx45, i32 0, i64 %idxprom43
  store i32 0, i32* %arrayidx46, align 4
  br label %for.inc.47

for.inc.47:                                       ; preds = %for.body.42
  %59 = load i32, i32* %j, align 4
  %inc48 = add nsw i32 %59, 1
  store i32 %inc48, i32* %j, align 4
  br label %for.cond.40

for.end.49:                                       ; preds = %for.cond.40
  br label %for.inc.50

for.inc.50:                                       ; preds = %for.end.49
  %60 = load i32, i32* %i, align 4
  %inc51 = add nsw i32 %60, 1
  store i32 %inc51, i32* %i, align 4
  br label %for.cond.37

for.end.52:                                       ; preds = %for.cond.37
  %61 = load i32, i32* %by0, align 4
  store i32 %61, i32* %by, align 4
  br label %for.cond.53

for.cond.53:                                      ; preds = %for.inc.72, %for.end.52
  %62 = load i32, i32* %by, align 4
  %63 = load i32, i32* %by1, align 4
  %cmp54 = icmp slt i32 %62, %63
  br i1 %cmp54, label %for.body.55, label %for.end.74

for.body.55:                                      ; preds = %for.cond.53
  %64 = load i32, i32* %bx0, align 4
  store i32 %64, i32* %bx, align 4
  br label %for.cond.56

for.cond.56:                                      ; preds = %for.inc.69, %for.body.55
  %65 = load i32, i32* %bx, align 4
  %66 = load i32, i32* %bx1, align 4
  %cmp57 = icmp slt i32 %65, %66
  br i1 %cmp57, label %for.body.58, label %for.end.71

for.body.58:                                      ; preds = %for.cond.56
  %67 = load i32, i32* %bx, align 4
  %idxprom59 = sext i32 %67 to i64
  %68 = load i32, i32* %by, align 4
  %idxprom60 = sext i32 %68 to i64
  %arrayidx61 = getelementptr inbounds [2 x [4 x [4 x i32]]], [2 x [4 x [4 x i32]]]* %mv, i32 0, i64 1
  %arrayidx62 = getelementptr inbounds [4 x [4 x i32]], [4 x [4 x i32]]* %arrayidx61, i32 0, i64 %idxprom60
  %arrayidx63 = getelementptr inbounds [4 x i32], [4 x i32]* %arrayidx62, i32 0, i64 %idxprom59
  store i32 0, i32* %arrayidx63, align 4
  %69 = load i32, i32* %bx, align 4
  %idxprom64 = sext i32 %69 to i64
  %70 = load i32, i32* %by, align 4
  %idxprom65 = sext i32 %70 to i64
  %arrayidx66 = getelementptr inbounds [2 x [4 x [4 x i32]]], [2 x [4 x [4 x i32]]]* %mv, i32 0, i64 0
  %arrayidx67 = getelementptr inbounds [4 x [4 x i32]], [4 x [4 x i32]]* %arrayidx66, i32 0, i64 %idxprom65
  %arrayidx68 = getelementptr inbounds [4 x i32], [4 x i32]* %arrayidx67, i32 0, i64 %idxprom64
  store i32 0, i32* %arrayidx68, align 4
  br label %for.inc.69

for.inc.69:                                       ; preds = %for.body.58
  %71 = load i32, i32* %bx, align 4
  %inc70 = add nsw i32 %71, 1
  store i32 %inc70, i32* %bx, align 4
  br label %for.cond.56

for.end.71:                                       ; preds = %for.cond.56
  br label %for.inc.72

for.inc.72:                                       ; preds = %for.end.71
  %72 = load i32, i32* %by, align 4
  %inc73 = add nsw i32 %72, 1
  store i32 %inc73, i32* %by, align 4
  br label %for.cond.53

for.end.74:                                       ; preds = %for.cond.53
  br label %if.end.171

if.else.75:                                       ; preds = %land.lhs.true.34, %lor.lhs.false, %if.else
  %73 = load i32, i32* %b8mode.addr, align 4
  %cmp76 = icmp sge i32 %73, 1
  br i1 %cmp76, label %land.lhs.true.77, label %if.else.124

land.lhs.true.77:                                 ; preds = %if.else.75
  %74 = load i32, i32* %b8mode.addr, align 4
  %cmp78 = icmp sle i32 %74, 7
  br i1 %cmp78, label %if.then.79, label %if.else.124

if.then.79:                                       ; preds = %land.lhs.true.77
  %75 = load i32, i32* %by0, align 4
  store i32 %75, i32* %by, align 4
  br label %for.cond.80

for.cond.80:                                      ; preds = %for.inc.121, %if.then.79
  %76 = load i32, i32* %by, align 4
  %77 = load i32, i32* %by1, align 4
  %cmp81 = icmp slt i32 %76, %77
  br i1 %cmp81, label %for.body.82, label %for.end.123

for.body.82:                                      ; preds = %for.cond.80
  %78 = load i32, i32* %bx0, align 4
  store i32 %78, i32* %bx, align 4
  br label %for.cond.83

for.cond.83:                                      ; preds = %for.inc.118, %for.body.82
  %79 = load i32, i32* %bx, align 4
  %80 = load i32, i32* %bx1, align 4
  %cmp84 = icmp slt i32 %79, %80
  br i1 %cmp84, label %for.body.85, label %for.end.120

for.body.85:                                      ; preds = %for.cond.83
  %81 = load i32, i32* %b8mode.addr, align 4
  %idxprom86 = sext i32 %81 to i64
  %82 = load i32, i32* %b8ref.addr, align 4
  %idxprom87 = sext i32 %82 to i64
  %83 = load i32, i32* %by, align 4
  %idxprom88 = sext i32 %83 to i64
  %84 = load i32, i32* %bx, align 4
  %idxprom89 = sext i32 %84 to i64
  %85 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %all_mv = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %85, i32 0, i32 71
  %86 = load i16******, i16******* %all_mv, align 8
  %arrayidx90 = getelementptr inbounds i16*****, i16****** %86, i64 %idxprom89
  %87 = load i16*****, i16****** %arrayidx90, align 8
  %arrayidx91 = getelementptr inbounds i16****, i16***** %87, i64 %idxprom88
  %88 = load i16****, i16***** %arrayidx91, align 8
  %arrayidx92 = getelementptr inbounds i16***, i16**** %88, i64 0
  %89 = load i16***, i16**** %arrayidx92, align 8
  %arrayidx93 = getelementptr inbounds i16**, i16*** %89, i64 %idxprom87
  %90 = load i16**, i16*** %arrayidx93, align 8
  %arrayidx94 = getelementptr inbounds i16*, i16** %90, i64 %idxprom86
  %91 = load i16*, i16** %arrayidx94, align 8
  %arrayidx95 = getelementptr inbounds i16, i16* %91, i64 0
  %92 = load i16, i16* %arrayidx95, align 2
  %conv = sext i16 %92 to i32
  %93 = load i32, i32* %bx, align 4
  %idxprom96 = sext i32 %93 to i64
  %94 = load i32, i32* %by, align 4
  %idxprom97 = sext i32 %94 to i64
  %arrayidx98 = getelementptr inbounds [2 x [4 x [4 x i32]]], [2 x [4 x [4 x i32]]]* %mv, i32 0, i64 0
  %arrayidx99 = getelementptr inbounds [4 x [4 x i32]], [4 x [4 x i32]]* %arrayidx98, i32 0, i64 %idxprom97
  %arrayidx100 = getelementptr inbounds [4 x i32], [4 x i32]* %arrayidx99, i32 0, i64 %idxprom96
  store i32 %conv, i32* %arrayidx100, align 4
  %95 = load i32, i32* %b8mode.addr, align 4
  %idxprom101 = sext i32 %95 to i64
  %96 = load i32, i32* %b8ref.addr, align 4
  %idxprom102 = sext i32 %96 to i64
  %97 = load i32, i32* %by, align 4
  %idxprom103 = sext i32 %97 to i64
  %98 = load i32, i32* %bx, align 4
  %idxprom104 = sext i32 %98 to i64
  %99 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %all_mv105 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %99, i32 0, i32 71
  %100 = load i16******, i16******* %all_mv105, align 8
  %arrayidx106 = getelementptr inbounds i16*****, i16****** %100, i64 %idxprom104
  %101 = load i16*****, i16****** %arrayidx106, align 8
  %arrayidx107 = getelementptr inbounds i16****, i16***** %101, i64 %idxprom103
  %102 = load i16****, i16***** %arrayidx107, align 8
  %arrayidx108 = getelementptr inbounds i16***, i16**** %102, i64 0
  %103 = load i16***, i16**** %arrayidx108, align 8
  %arrayidx109 = getelementptr inbounds i16**, i16*** %103, i64 %idxprom102
  %104 = load i16**, i16*** %arrayidx109, align 8
  %arrayidx110 = getelementptr inbounds i16*, i16** %104, i64 %idxprom101
  %105 = load i16*, i16** %arrayidx110, align 8
  %arrayidx111 = getelementptr inbounds i16, i16* %105, i64 1
  %106 = load i16, i16* %arrayidx111, align 2
  %conv112 = sext i16 %106 to i32
  %107 = load i32, i32* %bx, align 4
  %idxprom113 = sext i32 %107 to i64
  %108 = load i32, i32* %by, align 4
  %idxprom114 = sext i32 %108 to i64
  %arrayidx115 = getelementptr inbounds [2 x [4 x [4 x i32]]], [2 x [4 x [4 x i32]]]* %mv, i32 0, i64 1
  %arrayidx116 = getelementptr inbounds [4 x [4 x i32]], [4 x [4 x i32]]* %arrayidx115, i32 0, i64 %idxprom114
  %arrayidx117 = getelementptr inbounds [4 x i32], [4 x i32]* %arrayidx116, i32 0, i64 %idxprom113
  store i32 %conv112, i32* %arrayidx117, align 4
  br label %for.inc.118

for.inc.118:                                      ; preds = %for.body.85
  %109 = load i32, i32* %bx, align 4
  %inc119 = add nsw i32 %109, 1
  store i32 %inc119, i32* %bx, align 4
  br label %for.cond.83

for.end.120:                                      ; preds = %for.cond.83
  br label %for.inc.121

for.inc.121:                                      ; preds = %for.end.120
  %110 = load i32, i32* %by, align 4
  %inc122 = add nsw i32 %110, 1
  store i32 %inc122, i32* %by, align 4
  br label %for.cond.80

for.end.123:                                      ; preds = %for.cond.80
  br label %if.end

if.else.124:                                      ; preds = %land.lhs.true.77, %if.else.75
  %111 = load i32, i32* %by0, align 4
  store i32 %111, i32* %by, align 4
  br label %for.cond.125

for.cond.125:                                     ; preds = %for.inc.146, %if.else.124
  %112 = load i32, i32* %by, align 4
  %113 = load i32, i32* %by1, align 4
  %cmp126 = icmp slt i32 %112, %113
  br i1 %cmp126, label %for.body.128, label %for.end.148

for.body.128:                                     ; preds = %for.cond.125
  %114 = load i32, i32* %bx0, align 4
  store i32 %114, i32* %bx, align 4
  br label %for.cond.129

for.cond.129:                                     ; preds = %for.inc.143, %for.body.128
  %115 = load i32, i32* %bx, align 4
  %116 = load i32, i32* %bx1, align 4
  %cmp130 = icmp slt i32 %115, %116
  br i1 %cmp130, label %for.body.132, label %for.end.145

for.body.132:                                     ; preds = %for.cond.129
  %117 = load i32, i32* %bx, align 4
  %idxprom133 = sext i32 %117 to i64
  %118 = load i32, i32* %by, align 4
  %idxprom134 = sext i32 %118 to i64
  %arrayidx135 = getelementptr inbounds [2 x [4 x [4 x i32]]], [2 x [4 x [4 x i32]]]* %mv, i32 0, i64 1
  %arrayidx136 = getelementptr inbounds [4 x [4 x i32]], [4 x [4 x i32]]* %arrayidx135, i32 0, i64 %idxprom134
  %arrayidx137 = getelementptr inbounds [4 x i32], [4 x i32]* %arrayidx136, i32 0, i64 %idxprom133
  store i32 0, i32* %arrayidx137, align 4
  %119 = load i32, i32* %bx, align 4
  %idxprom138 = sext i32 %119 to i64
  %120 = load i32, i32* %by, align 4
  %idxprom139 = sext i32 %120 to i64
  %arrayidx140 = getelementptr inbounds [2 x [4 x [4 x i32]]], [2 x [4 x [4 x i32]]]* %mv, i32 0, i64 0
  %arrayidx141 = getelementptr inbounds [4 x [4 x i32]], [4 x [4 x i32]]* %arrayidx140, i32 0, i64 %idxprom139
  %arrayidx142 = getelementptr inbounds [4 x i32], [4 x i32]* %arrayidx141, i32 0, i64 %idxprom138
  store i32 0, i32* %arrayidx142, align 4
  br label %for.inc.143

for.inc.143:                                      ; preds = %for.body.132
  %121 = load i32, i32* %bx, align 4
  %inc144 = add nsw i32 %121, 1
  store i32 %inc144, i32* %bx, align 4
  br label %for.cond.129

for.end.145:                                      ; preds = %for.cond.129
  br label %for.inc.146

for.inc.146:                                      ; preds = %for.end.145
  %122 = load i32, i32* %by, align 4
  %inc147 = add nsw i32 %122, 1
  store i32 %inc147, i32* %by, align 4
  br label %for.cond.125

for.end.148:                                      ; preds = %for.cond.125
  br label %if.end

if.end:                                           ; preds = %for.end.148, %for.end.123
  %123 = load i32, i32* %i0, align 4
  store i32 %123, i32* %i, align 4
  br label %for.cond.149

for.cond.149:                                     ; preds = %for.inc.168, %if.end
  %124 = load i32, i32* %i, align 4
  %125 = load i32, i32* %i1, align 4
  %cmp150 = icmp slt i32 %124, %125
  br i1 %cmp150, label %for.body.152, label %for.end.170

for.body.152:                                     ; preds = %for.cond.149
  %126 = load i32, i32* %j0, align 4
  store i32 %126, i32* %j, align 4
  br label %for.cond.153

for.cond.153:                                     ; preds = %for.inc.165, %for.body.152
  %127 = load i32, i32* %j, align 4
  %128 = load i32, i32* %j1, align 4
  %cmp154 = icmp slt i32 %127, %128
  br i1 %cmp154, label %for.body.156, label %for.end.167

for.body.156:                                     ; preds = %for.cond.153
  %129 = load i32, i32* %i, align 4
  %idxprom157 = sext i32 %129 to i64
  %130 = load i32, i32* %j, align 4
  %idxprom158 = sext i32 %130 to i64
  %131 = load %struct.Decoders*, %struct.Decoders** @decs, align 8
  %resY = getelementptr inbounds %struct.Decoders, %struct.Decoders* %131, i32 0, i32 0
  %132 = load i32**, i32*** %resY, align 8
  %arrayidx159 = getelementptr inbounds i32*, i32** %132, i64 %idxprom158
  %133 = load i32*, i32** %arrayidx159, align 8
  %arrayidx160 = getelementptr inbounds i32, i32* %133, i64 %idxprom157
  %134 = load i32, i32* %arrayidx160, align 4
  %135 = load i32, i32* %i, align 4
  %idxprom161 = sext i32 %135 to i64
  %136 = load i32, i32* %j, align 4
  %idxprom162 = sext i32 %136 to i64
  %arrayidx163 = getelementptr inbounds [16 x [16 x i32]], [16 x [16 x i32]]* %resY_tmp, i32 0, i64 %idxprom162
  %arrayidx164 = getelementptr inbounds [16 x i32], [16 x i32]* %arrayidx163, i32 0, i64 %idxprom161
  store i32 %134, i32* %arrayidx164, align 4
  br label %for.inc.165

for.inc.165:                                      ; preds = %for.body.156
  %137 = load i32, i32* %j, align 4
  %inc166 = add nsw i32 %137, 1
  store i32 %inc166, i32* %j, align 4
  br label %for.cond.153

for.end.167:                                      ; preds = %for.cond.153
  br label %for.inc.168

for.inc.168:                                      ; preds = %for.end.167
  %138 = load i32, i32* %i, align 4
  %inc169 = add nsw i32 %138, 1
  store i32 %inc169, i32* %i, align 4
  br label %for.cond.149

for.end.170:                                      ; preds = %for.cond.149
  br label %if.end.171

if.end.171:                                       ; preds = %for.end.170, %for.end.74
  %139 = load i32, i32* %b8mode.addr, align 4
  %cmp172 = icmp sge i32 %139, 1
  br i1 %cmp172, label %land.lhs.true.174, label %lor.lhs.false.177

land.lhs.true.174:                                ; preds = %if.end.171
  %140 = load i32, i32* %b8mode.addr, align 4
  %cmp175 = icmp sle i32 %140, 7
  br i1 %cmp175, label %if.then.192, label %lor.lhs.false.177

lor.lhs.false.177:                                ; preds = %land.lhs.true.174, %if.end.171
  %141 = load i32, i32* %mbmode.addr, align 4
  %cmp178 = icmp eq i32 %141, 0
  br i1 %cmp178, label %land.lhs.true.180, label %if.else.279

land.lhs.true.180:                                ; preds = %lor.lhs.false.177
  %142 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %type181 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %142, i32 0, i32 6
  %143 = load i32, i32* %type181, align 4
  %cmp182 = icmp eq i32 %143, 0
  br i1 %cmp182, label %if.then.192, label %lor.lhs.false.184

lor.lhs.false.184:                                ; preds = %land.lhs.true.180
  %144 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %type185 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %144, i32 0, i32 6
  %145 = load i32, i32* %type185, align 4
  %cmp186 = icmp eq i32 %145, 1
  br i1 %cmp186, label %land.lhs.true.188, label %if.else.279

land.lhs.true.188:                                ; preds = %lor.lhs.false.184
  %146 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %nal_reference_idc189 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %146, i32 0, i32 113
  %147 = load i32, i32* %nal_reference_idc189, align 4
  %cmp190 = icmp sgt i32 %147, 0
  br i1 %cmp190, label %if.then.192, label %if.else.279

if.then.192:                                      ; preds = %land.lhs.true.188, %land.lhs.true.180, %land.lhs.true.174
  %148 = load i32, i32* %by0, align 4
  store i32 %148, i32* %by, align 4
  br label %for.cond.193

for.cond.193:                                     ; preds = %for.inc.276, %if.then.192
  %149 = load i32, i32* %by, align 4
  %150 = load i32, i32* %by1, align 4
  %cmp194 = icmp slt i32 %149, %150
  br i1 %cmp194, label %for.body.196, label %for.end.278

for.body.196:                                     ; preds = %for.cond.193
  %151 = load i32, i32* %bx0, align 4
  store i32 %151, i32* %bx, align 4
  br label %for.cond.197

for.cond.197:                                     ; preds = %for.inc.273, %for.body.196
  %152 = load i32, i32* %bx, align 4
  %153 = load i32, i32* %bx1, align 4
  %cmp198 = icmp slt i32 %152, %153
  br i1 %cmp198, label %for.body.200, label %for.end.275

for.body.200:                                     ; preds = %for.cond.197
  %154 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %block_x201 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %154, i32 0, i32 31
  %155 = load i32, i32* %block_x201, align 4
  %156 = load i32, i32* %bx, align 4
  %add202 = add nsw i32 %155, %156
  store i32 %add202, i32* %block_x, align 4
  %157 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %block_y203 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %157, i32 0, i32 32
  %158 = load i32, i32* %block_y203, align 4
  %159 = load i32, i32* %by, align 4
  %add204 = add nsw i32 %158, %159
  store i32 %add204, i32* %block_y, align 4
  %160 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %type205 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %160, i32 0, i32 6
  %161 = load i32, i32* %type205, align 4
  %cmp206 = icmp eq i32 %161, 1
  br i1 %cmp206, label %land.lhs.true.208, label %if.end.218

land.lhs.true.208:                                ; preds = %for.body.200
  %162 = load %struct.storable_picture*, %struct.storable_picture** @enc_picture, align 8
  %163 = load %struct.storable_picture*, %struct.storable_picture** @enc_frame_picture, align 8
  %cmp209 = icmp ne %struct.storable_picture* %162, %163
  br i1 %cmp209, label %if.then.211, label %if.end.218

if.then.211:                                      ; preds = %land.lhs.true.208
  %164 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %number212 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %164, i32 0, i32 0
  %165 = load i32, i32* %number212, align 4
  %166 = load i32, i32* @start_frame_no_in_this_IGOP, align 4
  %sub213 = sub nsw i32 %165, %166
  %167 = load i32, i32* %b8ref.addr, align 4
  %sub214 = sub nsw i32 %sub213, %167
  %sub215 = sub nsw i32 %sub214, 2
  %168 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %num_ref_frames216 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %168, i32 0, i32 8
  %169 = load i32, i32* %num_ref_frames216, align 4
  %rem217 = srem i32 %sub215, %169
  store i32 %rem217, i32* %ref_inx, align 4
  br label %if.end.218

if.end.218:                                       ; preds = %if.then.211, %land.lhs.true.208, %for.body.200
  %170 = load i32, i32* %ref_inx, align 4
  %idxprom219 = sext i32 %170 to i64
  %171 = load i32, i32* %decoder.addr, align 4
  %idxprom220 = sext i32 %171 to i64
  %172 = load %struct.Decoders*, %struct.Decoders** @decs, align 8
  %decref = getelementptr inbounds %struct.Decoders, %struct.Decoders* %172, i32 0, i32 2
  %173 = load i16****, i16***** %decref, align 8
  %arrayidx221 = getelementptr inbounds i16***, i16**** %173, i64 %idxprom220
  %174 = load i16***, i16**** %arrayidx221, align 8
  %arrayidx222 = getelementptr inbounds i16**, i16*** %174, i64 %idxprom219
  %175 = load i16**, i16*** %arrayidx222, align 8
  %176 = load i32, i32* %block_y, align 4
  %177 = load i32, i32* %block_x, align 4
  %178 = load i32, i32* %bx, align 4
  %idxprom223 = sext i32 %178 to i64
  %179 = load i32, i32* %by, align 4
  %idxprom224 = sext i32 %179 to i64
  %arrayidx225 = getelementptr inbounds [2 x [4 x [4 x i32]]], [2 x [4 x [4 x i32]]]* %mv, i32 0, i64 0
  %arrayidx226 = getelementptr inbounds [4 x [4 x i32]], [4 x [4 x i32]]* %arrayidx225, i32 0, i64 %idxprom224
  %arrayidx227 = getelementptr inbounds [4 x i32], [4 x i32]* %arrayidx226, i32 0, i64 %idxprom223
  %180 = load i32, i32* %arrayidx227, align 4
  %181 = load i32, i32* %bx, align 4
  %idxprom228 = sext i32 %181 to i64
  %182 = load i32, i32* %by, align 4
  %idxprom229 = sext i32 %182 to i64
  %arrayidx230 = getelementptr inbounds [2 x [4 x [4 x i32]]], [2 x [4 x [4 x i32]]]* %mv, i32 0, i64 1
  %arrayidx231 = getelementptr inbounds [4 x [4 x i32]], [4 x [4 x i32]]* %arrayidx230, i32 0, i64 %idxprom229
  %arrayidx232 = getelementptr inbounds [4 x i32], [4 x i32]* %arrayidx231, i32 0, i64 %idxprom228
  %183 = load i32, i32* %arrayidx232, align 4
  %184 = load %struct.Decoders*, %struct.Decoders** @decs, align 8
  %RefBlock = getelementptr inbounds %struct.Decoders, %struct.Decoders* %184, i32 0, i32 4
  %185 = load i16**, i16*** %RefBlock, align 8
  call void @Get_Reference_Block(i16** %175, i32 %176, i32 %177, i32 %180, i32 %183, i16** %185)
  store i32 0, i32* %j, align 4
  br label %for.cond.233

for.cond.233:                                     ; preds = %for.inc.270, %if.end.218
  %186 = load i32, i32* %j, align 4
  %cmp234 = icmp slt i32 %186, 4
  br i1 %cmp234, label %for.body.236, label %for.end.272

for.body.236:                                     ; preds = %for.cond.233
  store i32 0, i32* %i, align 4
  br label %for.cond.237

for.cond.237:                                     ; preds = %for.inc.267, %for.body.236
  %187 = load i32, i32* %i, align 4
  %cmp238 = icmp slt i32 %187, 4
  br i1 %cmp238, label %for.body.240, label %for.end.269

for.body.240:                                     ; preds = %for.cond.237
  %188 = load i32, i32* %bx, align 4
  %mul = mul nsw i32 %188, 4
  %189 = load i32, i32* %i, align 4
  %add241 = add nsw i32 %mul, %189
  %idxprom242 = sext i32 %add241 to i64
  %190 = load i32, i32* %by, align 4
  %mul243 = mul nsw i32 %190, 4
  %191 = load i32, i32* %j, align 4
  %add244 = add nsw i32 %mul243, %191
  %idxprom245 = sext i32 %add244 to i64
  %arrayidx246 = getelementptr inbounds [16 x [16 x i32]], [16 x [16 x i32]]* %resY_tmp, i32 0, i64 %idxprom245
  %arrayidx247 = getelementptr inbounds [16 x i32], [16 x i32]* %arrayidx246, i32 0, i64 %idxprom242
  %192 = load i32, i32* %arrayidx247, align 4
  %193 = load i32, i32* %i, align 4
  %idxprom248 = sext i32 %193 to i64
  %194 = load i32, i32* %j, align 4
  %idxprom249 = sext i32 %194 to i64
  %195 = load %struct.Decoders*, %struct.Decoders** @decs, align 8
  %RefBlock250 = getelementptr inbounds %struct.Decoders, %struct.Decoders* %195, i32 0, i32 4
  %196 = load i16**, i16*** %RefBlock250, align 8
  %arrayidx251 = getelementptr inbounds i16*, i16** %196, i64 %idxprom249
  %197 = load i16*, i16** %arrayidx251, align 8
  %arrayidx252 = getelementptr inbounds i16, i16* %197, i64 %idxprom248
  %198 = load i16, i16* %arrayidx252, align 2
  %conv253 = zext i16 %198 to i32
  %add254 = add nsw i32 %192, %conv253
  %conv255 = trunc i32 %add254 to i16
  %199 = load i32, i32* %block_x, align 4
  %mul256 = mul nsw i32 %199, 4
  %200 = load i32, i32* %i, align 4
  %add257 = add nsw i32 %mul256, %200
  %idxprom258 = sext i32 %add257 to i64
  %201 = load i32, i32* %block_y, align 4
  %mul259 = mul nsw i32 %201, 4
  %202 = load i32, i32* %j, align 4
  %add260 = add nsw i32 %mul259, %202
  %idxprom261 = sext i32 %add260 to i64
  %203 = load i32, i32* %decoder.addr, align 4
  %idxprom262 = sext i32 %203 to i64
  %204 = load %struct.Decoders*, %struct.Decoders** @decs, align 8
  %decY263 = getelementptr inbounds %struct.Decoders, %struct.Decoders* %204, i32 0, i32 1
  %205 = load i16***, i16**** %decY263, align 8
  %arrayidx264 = getelementptr inbounds i16**, i16*** %205, i64 %idxprom262
  %206 = load i16**, i16*** %arrayidx264, align 8
  %arrayidx265 = getelementptr inbounds i16*, i16** %206, i64 %idxprom261
  %207 = load i16*, i16** %arrayidx265, align 8
  %arrayidx266 = getelementptr inbounds i16, i16* %207, i64 %idxprom258
  store i16 %conv255, i16* %arrayidx266, align 2
  br label %for.inc.267

for.inc.267:                                      ; preds = %for.body.240
  %208 = load i32, i32* %i, align 4
  %inc268 = add nsw i32 %208, 1
  store i32 %inc268, i32* %i, align 4
  br label %for.cond.237

for.end.269:                                      ; preds = %for.cond.237
  br label %for.inc.270

for.inc.270:                                      ; preds = %for.end.269
  %209 = load i32, i32* %j, align 4
  %inc271 = add nsw i32 %209, 1
  store i32 %inc271, i32* %j, align 4
  br label %for.cond.233

for.end.272:                                      ; preds = %for.cond.233
  br label %for.inc.273

for.inc.273:                                      ; preds = %for.end.272
  %210 = load i32, i32* %bx, align 4
  %inc274 = add nsw i32 %210, 1
  store i32 %inc274, i32* %bx, align 4
  br label %for.cond.197

for.end.275:                                      ; preds = %for.cond.197
  br label %for.inc.276

for.inc.276:                                      ; preds = %for.end.275
  %211 = load i32, i32* %by, align 4
  %inc277 = add nsw i32 %211, 1
  store i32 %inc277, i32* %by, align 4
  br label %for.cond.193

for.end.278:                                      ; preds = %for.cond.193
  br label %if.end.314

if.else.279:                                      ; preds = %land.lhs.true.188, %lor.lhs.false.184, %lor.lhs.false.177
  %212 = load i32, i32* %i0, align 4
  store i32 %212, i32* %i, align 4
  br label %for.cond.280

for.cond.280:                                     ; preds = %for.inc.311, %if.else.279
  %213 = load i32, i32* %i, align 4
  %214 = load i32, i32* %i1, align 4
  %cmp281 = icmp slt i32 %213, %214
  br i1 %cmp281, label %for.body.283, label %for.end.313

for.body.283:                                     ; preds = %for.cond.280
  %215 = load i32, i32* %j0, align 4
  store i32 %215, i32* %j, align 4
  br label %for.cond.284

for.cond.284:                                     ; preds = %for.inc.308, %for.body.283
  %216 = load i32, i32* %j, align 4
  %217 = load i32, i32* %j1, align 4
  %cmp285 = icmp slt i32 %216, %217
  br i1 %cmp285, label %for.body.287, label %for.end.310

for.body.287:                                     ; preds = %for.cond.284
  %218 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %pix_x288 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %218, i32 0, i32 33
  %219 = load i32, i32* %pix_x288, align 4
  %220 = load i32, i32* %i, align 4
  %add289 = add nsw i32 %219, %220
  %idxprom290 = sext i32 %add289 to i64
  %221 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %pix_y291 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %221, i32 0, i32 34
  %222 = load i32, i32* %pix_y291, align 4
  %223 = load i32, i32* %j, align 4
  %add292 = add nsw i32 %222, %223
  %idxprom293 = sext i32 %add292 to i64
  %224 = load %struct.storable_picture*, %struct.storable_picture** @enc_picture, align 8
  %imgY294 = getelementptr inbounds %struct.storable_picture, %struct.storable_picture* %224, i32 0, i32 25
  %225 = load i16**, i16*** %imgY294, align 8
  %arrayidx295 = getelementptr inbounds i16*, i16** %225, i64 %idxprom293
  %226 = load i16*, i16** %arrayidx295, align 8
  %arrayidx296 = getelementptr inbounds i16, i16* %226, i64 %idxprom290
  %227 = load i16, i16* %arrayidx296, align 2
  %228 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %pix_x297 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %228, i32 0, i32 33
  %229 = load i32, i32* %pix_x297, align 4
  %230 = load i32, i32* %i, align 4
  %add298 = add nsw i32 %229, %230
  %idxprom299 = sext i32 %add298 to i64
  %231 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %pix_y300 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %231, i32 0, i32 34
  %232 = load i32, i32* %pix_y300, align 4
  %233 = load i32, i32* %j, align 4
  %add301 = add nsw i32 %232, %233
  %idxprom302 = sext i32 %add301 to i64
  %234 = load i32, i32* %decoder.addr, align 4
  %idxprom303 = sext i32 %234 to i64
  %235 = load %struct.Decoders*, %struct.Decoders** @decs, align 8
  %decY304 = getelementptr inbounds %struct.Decoders, %struct.Decoders* %235, i32 0, i32 1
  %236 = load i16***, i16**** %decY304, align 8
  %arrayidx305 = getelementptr inbounds i16**, i16*** %236, i64 %idxprom303
  %237 = load i16**, i16*** %arrayidx305, align 8
  %arrayidx306 = getelementptr inbounds i16*, i16** %237, i64 %idxprom302
  %238 = load i16*, i16** %arrayidx306, align 8
  %arrayidx307 = getelementptr inbounds i16, i16* %238, i64 %idxprom299
  store i16 %227, i16* %arrayidx307, align 2
  br label %for.inc.308

for.inc.308:                                      ; preds = %for.body.287
  %239 = load i32, i32* %j, align 4
  %inc309 = add nsw i32 %239, 1
  store i32 %inc309, i32* %j, align 4
  br label %for.cond.284

for.end.310:                                      ; preds = %for.cond.284
  br label %for.inc.311

for.inc.311:                                      ; preds = %for.end.310
  %240 = load i32, i32* %i, align 4
  %inc312 = add nsw i32 %240, 1
  store i32 %inc312, i32* %i, align 4
  br label %for.cond.280

for.end.313:                                      ; preds = %for.cond.280
  br label %if.end.314

if.end.314:                                       ; preds = %for.end.313, %for.end.278
  br label %if.end.315

if.end.315:                                       ; preds = %if.end.314, %for.end.28
  ret void
}

; Function Attrs: nounwind uwtable
define void @Get_Reference_Block(i16** %imY, i32 %block_y, i32 %block_x, i32 %mvhor, i32 %mvver, i16** %out) #0 {
entry:
  %imY.addr = alloca i16**, align 8
  %block_y.addr = alloca i32, align 4
  %block_x.addr = alloca i32, align 4
  %mvhor.addr = alloca i32, align 4
  %mvver.addr = alloca i32, align 4
  %out.addr = alloca i16**, align 8
  %i = alloca i32, align 4
  %j = alloca i32, align 4
  %y = alloca i32, align 4
  %x = alloca i32, align 4
  store i16** %imY, i16*** %imY.addr, align 8
  store i32 %block_y, i32* %block_y.addr, align 4
  store i32 %block_x, i32* %block_x.addr, align 4
  store i32 %mvhor, i32* %mvhor.addr, align 4
  store i32 %mvver, i32* %mvver.addr, align 4
  store i16** %out, i16*** %out.addr, align 8
  %0 = load i32, i32* %block_y.addr, align 4
  %mul = mul nsw i32 %0, 4
  %mul1 = mul nsw i32 %mul, 4
  %1 = load i32, i32* %mvver.addr, align 4
  %add = add nsw i32 %mul1, %1
  store i32 %add, i32* %y, align 4
  %2 = load i32, i32* %block_x.addr, align 4
  %mul2 = mul nsw i32 %2, 4
  %mul3 = mul nsw i32 %mul2, 4
  %3 = load i32, i32* %mvhor.addr, align 4
  %add4 = add nsw i32 %mul3, %3
  store i32 %add4, i32* %x, align 4
  store i32 0, i32* %j, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc.14, %entry
  %4 = load i32, i32* %j, align 4
  %cmp = icmp slt i32 %4, 4
  br i1 %cmp, label %for.body, label %for.end.16

for.body:                                         ; preds = %for.cond
  store i32 0, i32* %i, align 4
  br label %for.cond.5

for.cond.5:                                       ; preds = %for.inc, %for.body
  %5 = load i32, i32* %i, align 4
  %cmp6 = icmp slt i32 %5, 4
  br i1 %cmp6, label %for.body.7, label %for.end

for.body.7:                                       ; preds = %for.cond.5
  %6 = load i16**, i16*** %imY.addr, align 8
  %7 = load i32, i32* %y, align 4
  %8 = load i32, i32* %j, align 4
  %mul8 = mul nsw i32 %8, 4
  %add9 = add nsw i32 %7, %mul8
  %9 = load i32, i32* %x, align 4
  %10 = load i32, i32* %i, align 4
  %mul10 = mul nsw i32 %10, 4
  %add11 = add nsw i32 %9, %mul10
  %call = call zeroext i8 @Get_Reference_Pixel(i16** %6, i32 %add9, i32 %add11)
  %conv = zext i8 %call to i16
  %11 = load i32, i32* %i, align 4
  %idxprom = sext i32 %11 to i64
  %12 = load i32, i32* %j, align 4
  %idxprom12 = sext i32 %12 to i64
  %13 = load i16**, i16*** %out.addr, align 8
  %arrayidx = getelementptr inbounds i16*, i16** %13, i64 %idxprom12
  %14 = load i16*, i16** %arrayidx, align 8
  %arrayidx13 = getelementptr inbounds i16, i16* %14, i64 %idxprom
  store i16 %conv, i16* %arrayidx13, align 2
  br label %for.inc

for.inc:                                          ; preds = %for.body.7
  %15 = load i32, i32* %i, align 4
  %inc = add nsw i32 %15, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond.5

for.end:                                          ; preds = %for.cond.5
  br label %for.inc.14

for.inc.14:                                       ; preds = %for.end
  %16 = load i32, i32* %j, align 4
  %inc15 = add nsw i32 %16, 1
  store i32 %inc15, i32* %j, align 4
  br label %for.cond

for.end.16:                                       ; preds = %for.cond
  ret void
}

; Function Attrs: nounwind uwtable
define void @decode_one_mb(i32 %decoder, %struct.macroblock* %currMB) #0 {
entry:
  %decoder.addr = alloca i32, align 4
  %currMB.addr = alloca %struct.macroblock*, align 8
  store i32 %decoder, i32* %decoder.addr, align 4
  store %struct.macroblock* %currMB, %struct.macroblock** %currMB.addr, align 8
  ret void
}

; Function Attrs: nounwind uwtable
define zeroext i8 @Get_Reference_Pixel(i16** %imY, i32 %y_pos, i32 %x_pos) #0 {
entry:
  %imY.addr = alloca i16**, align 8
  %y_pos.addr = alloca i32, align 4
  %x_pos.addr = alloca i32, align 4
  %dx = alloca i32, align 4
  %x = alloca i32, align 4
  %dy = alloca i32, align 4
  %y = alloca i32, align 4
  %maxold_x = alloca i32, align 4
  %maxold_y = alloca i32, align 4
  %result = alloca i32, align 4
  %result1 = alloca i32, align 4
  %result2 = alloca i32, align 4
  %pres_x = alloca i32, align 4
  %pres_y = alloca i32, align 4
  %tmp_res = alloca [6 x i32], align 16
  store i16** %imY, i16*** %imY.addr, align 8
  store i32 %y_pos, i32* %y_pos.addr, align 4
  store i32 %x_pos, i32* %x_pos.addr, align 4
  store i32 0, i32* %result, align 4
  %0 = load i32, i32* %x_pos.addr, align 4
  %and = and i32 %0, 3
  store i32 %and, i32* %dx, align 4
  %1 = load i32, i32* %y_pos.addr, align 4
  %and1 = and i32 %1, 3
  store i32 %and1, i32* %dy, align 4
  %2 = load i32, i32* %x_pos.addr, align 4
  %3 = load i32, i32* %dx, align 4
  %sub = sub nsw i32 %2, %3
  %div = sdiv i32 %sub, 4
  store i32 %div, i32* %x_pos.addr, align 4
  %4 = load i32, i32* %y_pos.addr, align 4
  %5 = load i32, i32* %dy, align 4
  %sub2 = sub nsw i32 %4, %5
  %div3 = sdiv i32 %sub2, 4
  store i32 %div3, i32* %y_pos.addr, align 4
  %6 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %width = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %6, i32 0, i32 13
  %7 = load i32, i32* %width, align 4
  %sub4 = sub nsw i32 %7, 1
  store i32 %sub4, i32* %maxold_x, align 4
  %8 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %height = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %8, i32 0, i32 15
  %9 = load i32, i32* %height, align 4
  %sub5 = sub nsw i32 %9, 1
  store i32 %sub5, i32* %maxold_y, align 4
  %10 = load i32, i32* %dx, align 4
  %cmp = icmp eq i32 %10, 0
  br i1 %cmp, label %land.lhs.true, label %if.else

land.lhs.true:                                    ; preds = %entry
  %11 = load i32, i32* %dy, align 4
  %cmp6 = icmp eq i32 %11, 0
  br i1 %cmp6, label %if.then, label %if.else

if.then:                                          ; preds = %land.lhs.true
  %12 = load i32, i32* %maxold_x, align 4
  %13 = load i32, i32* %x_pos.addr, align 4
  %cmp7 = icmp slt i32 %12, %13
  br i1 %cmp7, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.then
  %14 = load i32, i32* %maxold_x, align 4
  br label %cond.end

cond.false:                                       ; preds = %if.then
  %15 = load i32, i32* %x_pos.addr, align 4
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %14, %cond.true ], [ %15, %cond.false ]
  %cmp8 = icmp sgt i32 0, %cond
  br i1 %cmp8, label %cond.true.9, label %cond.false.10

cond.true.9:                                      ; preds = %cond.end
  br label %cond.end.16

cond.false.10:                                    ; preds = %cond.end
  %16 = load i32, i32* %maxold_x, align 4
  %17 = load i32, i32* %x_pos.addr, align 4
  %cmp11 = icmp slt i32 %16, %17
  br i1 %cmp11, label %cond.true.12, label %cond.false.13

cond.true.12:                                     ; preds = %cond.false.10
  %18 = load i32, i32* %maxold_x, align 4
  br label %cond.end.14

cond.false.13:                                    ; preds = %cond.false.10
  %19 = load i32, i32* %x_pos.addr, align 4
  br label %cond.end.14

cond.end.14:                                      ; preds = %cond.false.13, %cond.true.12
  %cond15 = phi i32 [ %18, %cond.true.12 ], [ %19, %cond.false.13 ]
  br label %cond.end.16

cond.end.16:                                      ; preds = %cond.end.14, %cond.true.9
  %cond17 = phi i32 [ 0, %cond.true.9 ], [ %cond15, %cond.end.14 ]
  %idxprom = sext i32 %cond17 to i64
  %20 = load i32, i32* %maxold_y, align 4
  %21 = load i32, i32* %y_pos.addr, align 4
  %cmp18 = icmp slt i32 %20, %21
  br i1 %cmp18, label %cond.true.19, label %cond.false.20

cond.true.19:                                     ; preds = %cond.end.16
  %22 = load i32, i32* %maxold_y, align 4
  br label %cond.end.21

cond.false.20:                                    ; preds = %cond.end.16
  %23 = load i32, i32* %y_pos.addr, align 4
  br label %cond.end.21

cond.end.21:                                      ; preds = %cond.false.20, %cond.true.19
  %cond22 = phi i32 [ %22, %cond.true.19 ], [ %23, %cond.false.20 ]
  %cmp23 = icmp sgt i32 0, %cond22
  br i1 %cmp23, label %cond.true.24, label %cond.false.25

cond.true.24:                                     ; preds = %cond.end.21
  br label %cond.end.31

cond.false.25:                                    ; preds = %cond.end.21
  %24 = load i32, i32* %maxold_y, align 4
  %25 = load i32, i32* %y_pos.addr, align 4
  %cmp26 = icmp slt i32 %24, %25
  br i1 %cmp26, label %cond.true.27, label %cond.false.28

cond.true.27:                                     ; preds = %cond.false.25
  %26 = load i32, i32* %maxold_y, align 4
  br label %cond.end.29

cond.false.28:                                    ; preds = %cond.false.25
  %27 = load i32, i32* %y_pos.addr, align 4
  br label %cond.end.29

cond.end.29:                                      ; preds = %cond.false.28, %cond.true.27
  %cond30 = phi i32 [ %26, %cond.true.27 ], [ %27, %cond.false.28 ]
  br label %cond.end.31

cond.end.31:                                      ; preds = %cond.end.29, %cond.true.24
  %cond32 = phi i32 [ 0, %cond.true.24 ], [ %cond30, %cond.end.29 ]
  %idxprom33 = sext i32 %cond32 to i64
  %28 = load i16**, i16*** %imY.addr, align 8
  %arrayidx = getelementptr inbounds i16*, i16** %28, i64 %idxprom33
  %29 = load i16*, i16** %arrayidx, align 8
  %arrayidx34 = getelementptr inbounds i16, i16* %29, i64 %idxprom
  %30 = load i16, i16* %arrayidx34, align 2
  %conv = zext i16 %30 to i32
  store i32 %conv, i32* %result, align 4
  br label %if.end.926

if.else:                                          ; preds = %land.lhs.true, %entry
  %31 = load i32, i32* %dy, align 4
  %cmp35 = icmp eq i32 %31, 0
  br i1 %cmp35, label %if.then.37, label %if.else.179

if.then.37:                                       ; preds = %if.else
  %32 = load i32, i32* %maxold_y, align 4
  %33 = load i32, i32* %y_pos.addr, align 4
  %cmp38 = icmp slt i32 %32, %33
  br i1 %cmp38, label %cond.true.40, label %cond.false.41

cond.true.40:                                     ; preds = %if.then.37
  %34 = load i32, i32* %maxold_y, align 4
  br label %cond.end.42

cond.false.41:                                    ; preds = %if.then.37
  %35 = load i32, i32* %y_pos.addr, align 4
  br label %cond.end.42

cond.end.42:                                      ; preds = %cond.false.41, %cond.true.40
  %cond43 = phi i32 [ %34, %cond.true.40 ], [ %35, %cond.false.41 ]
  %cmp44 = icmp sgt i32 0, %cond43
  br i1 %cmp44, label %cond.true.46, label %cond.false.47

cond.true.46:                                     ; preds = %cond.end.42
  br label %cond.end.54

cond.false.47:                                    ; preds = %cond.end.42
  %36 = load i32, i32* %maxold_y, align 4
  %37 = load i32, i32* %y_pos.addr, align 4
  %cmp48 = icmp slt i32 %36, %37
  br i1 %cmp48, label %cond.true.50, label %cond.false.51

cond.true.50:                                     ; preds = %cond.false.47
  %38 = load i32, i32* %maxold_y, align 4
  br label %cond.end.52

cond.false.51:                                    ; preds = %cond.false.47
  %39 = load i32, i32* %y_pos.addr, align 4
  br label %cond.end.52

cond.end.52:                                      ; preds = %cond.false.51, %cond.true.50
  %cond53 = phi i32 [ %38, %cond.true.50 ], [ %39, %cond.false.51 ]
  br label %cond.end.54

cond.end.54:                                      ; preds = %cond.end.52, %cond.true.46
  %cond55 = phi i32 [ 0, %cond.true.46 ], [ %cond53, %cond.end.52 ]
  store i32 %cond55, i32* %pres_y, align 4
  store i32 -2, i32* %x, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %cond.end.54
  %40 = load i32, i32* %x, align 4
  %cmp56 = icmp slt i32 %40, 4
  br i1 %cmp56, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %41 = load i32, i32* %maxold_x, align 4
  %42 = load i32, i32* %x_pos.addr, align 4
  %43 = load i32, i32* %x, align 4
  %add = add nsw i32 %42, %43
  %cmp58 = icmp slt i32 %41, %add
  br i1 %cmp58, label %cond.true.60, label %cond.false.61

cond.true.60:                                     ; preds = %for.body
  %44 = load i32, i32* %maxold_x, align 4
  br label %cond.end.63

cond.false.61:                                    ; preds = %for.body
  %45 = load i32, i32* %x_pos.addr, align 4
  %46 = load i32, i32* %x, align 4
  %add62 = add nsw i32 %45, %46
  br label %cond.end.63

cond.end.63:                                      ; preds = %cond.false.61, %cond.true.60
  %cond64 = phi i32 [ %44, %cond.true.60 ], [ %add62, %cond.false.61 ]
  %cmp65 = icmp sgt i32 0, %cond64
  br i1 %cmp65, label %cond.true.67, label %cond.false.68

cond.true.67:                                     ; preds = %cond.end.63
  br label %cond.end.77

cond.false.68:                                    ; preds = %cond.end.63
  %47 = load i32, i32* %maxold_x, align 4
  %48 = load i32, i32* %x_pos.addr, align 4
  %49 = load i32, i32* %x, align 4
  %add69 = add nsw i32 %48, %49
  %cmp70 = icmp slt i32 %47, %add69
  br i1 %cmp70, label %cond.true.72, label %cond.false.73

cond.true.72:                                     ; preds = %cond.false.68
  %50 = load i32, i32* %maxold_x, align 4
  br label %cond.end.75

cond.false.73:                                    ; preds = %cond.false.68
  %51 = load i32, i32* %x_pos.addr, align 4
  %52 = load i32, i32* %x, align 4
  %add74 = add nsw i32 %51, %52
  br label %cond.end.75

cond.end.75:                                      ; preds = %cond.false.73, %cond.true.72
  %cond76 = phi i32 [ %50, %cond.true.72 ], [ %add74, %cond.false.73 ]
  br label %cond.end.77

cond.end.77:                                      ; preds = %cond.end.75, %cond.true.67
  %cond78 = phi i32 [ 0, %cond.true.67 ], [ %cond76, %cond.end.75 ]
  store i32 %cond78, i32* %pres_x, align 4
  %53 = load i32, i32* %pres_x, align 4
  %idxprom79 = sext i32 %53 to i64
  %54 = load i32, i32* %pres_y, align 4
  %idxprom80 = sext i32 %54 to i64
  %55 = load i16**, i16*** %imY.addr, align 8
  %arrayidx81 = getelementptr inbounds i16*, i16** %55, i64 %idxprom80
  %56 = load i16*, i16** %arrayidx81, align 8
  %arrayidx82 = getelementptr inbounds i16, i16* %56, i64 %idxprom79
  %57 = load i16, i16* %arrayidx82, align 2
  %conv83 = zext i16 %57 to i32
  %58 = load i32, i32* %x, align 4
  %add84 = add nsw i32 %58, 2
  %idxprom85 = sext i32 %add84 to i64
  %arrayidx86 = getelementptr inbounds [6 x i32], [6 x i32]* @Get_Reference_Pixel.COEF, i32 0, i64 %idxprom85
  %59 = load i32, i32* %arrayidx86, align 4
  %mul = mul nsw i32 %conv83, %59
  %60 = load i32, i32* %result, align 4
  %add87 = add nsw i32 %60, %mul
  store i32 %add87, i32* %result, align 4
  br label %for.inc

for.inc:                                          ; preds = %cond.end.77
  %61 = load i32, i32* %x, align 4
  %inc = add nsw i32 %61, 1
  store i32 %inc, i32* %x, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %62 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %max_imgpel_value = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %62, i32 0, i32 155
  %63 = load i32, i32* %max_imgpel_value, align 4
  %64 = load i32, i32* %result, align 4
  %add88 = add nsw i32 %64, 16
  %div89 = sdiv i32 %add88, 32
  %cmp90 = icmp slt i32 %63, %div89
  br i1 %cmp90, label %cond.true.92, label %cond.false.94

cond.true.92:                                     ; preds = %for.end
  %65 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %max_imgpel_value93 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %65, i32 0, i32 155
  %66 = load i32, i32* %max_imgpel_value93, align 4
  br label %cond.end.97

cond.false.94:                                    ; preds = %for.end
  %67 = load i32, i32* %result, align 4
  %add95 = add nsw i32 %67, 16
  %div96 = sdiv i32 %add95, 32
  br label %cond.end.97

cond.end.97:                                      ; preds = %cond.false.94, %cond.true.92
  %cond98 = phi i32 [ %66, %cond.true.92 ], [ %div96, %cond.false.94 ]
  %cmp99 = icmp sgt i32 0, %cond98
  br i1 %cmp99, label %cond.true.101, label %cond.false.102

cond.true.101:                                    ; preds = %cond.end.97
  br label %cond.end.115

cond.false.102:                                   ; preds = %cond.end.97
  %68 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %max_imgpel_value103 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %68, i32 0, i32 155
  %69 = load i32, i32* %max_imgpel_value103, align 4
  %70 = load i32, i32* %result, align 4
  %add104 = add nsw i32 %70, 16
  %div105 = sdiv i32 %add104, 32
  %cmp106 = icmp slt i32 %69, %div105
  br i1 %cmp106, label %cond.true.108, label %cond.false.110

cond.true.108:                                    ; preds = %cond.false.102
  %71 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %max_imgpel_value109 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %71, i32 0, i32 155
  %72 = load i32, i32* %max_imgpel_value109, align 4
  br label %cond.end.113

cond.false.110:                                   ; preds = %cond.false.102
  %73 = load i32, i32* %result, align 4
  %add111 = add nsw i32 %73, 16
  %div112 = sdiv i32 %add111, 32
  br label %cond.end.113

cond.end.113:                                     ; preds = %cond.false.110, %cond.true.108
  %cond114 = phi i32 [ %72, %cond.true.108 ], [ %div112, %cond.false.110 ]
  br label %cond.end.115

cond.end.115:                                     ; preds = %cond.end.113, %cond.true.101
  %cond116 = phi i32 [ 0, %cond.true.101 ], [ %cond114, %cond.end.113 ]
  store i32 %cond116, i32* %result, align 4
  %74 = load i32, i32* %dx, align 4
  %cmp117 = icmp eq i32 %74, 1
  br i1 %cmp117, label %if.then.119, label %if.else.145

if.then.119:                                      ; preds = %cond.end.115
  %75 = load i32, i32* %result, align 4
  %76 = load i32, i32* %maxold_x, align 4
  %77 = load i32, i32* %x_pos.addr, align 4
  %cmp120 = icmp slt i32 %76, %77
  br i1 %cmp120, label %cond.true.122, label %cond.false.123

cond.true.122:                                    ; preds = %if.then.119
  %78 = load i32, i32* %maxold_x, align 4
  br label %cond.end.124

cond.false.123:                                   ; preds = %if.then.119
  %79 = load i32, i32* %x_pos.addr, align 4
  br label %cond.end.124

cond.end.124:                                     ; preds = %cond.false.123, %cond.true.122
  %cond125 = phi i32 [ %78, %cond.true.122 ], [ %79, %cond.false.123 ]
  %cmp126 = icmp sgt i32 0, %cond125
  br i1 %cmp126, label %cond.true.128, label %cond.false.129

cond.true.128:                                    ; preds = %cond.end.124
  br label %cond.end.136

cond.false.129:                                   ; preds = %cond.end.124
  %80 = load i32, i32* %maxold_x, align 4
  %81 = load i32, i32* %x_pos.addr, align 4
  %cmp130 = icmp slt i32 %80, %81
  br i1 %cmp130, label %cond.true.132, label %cond.false.133

cond.true.132:                                    ; preds = %cond.false.129
  %82 = load i32, i32* %maxold_x, align 4
  br label %cond.end.134

cond.false.133:                                   ; preds = %cond.false.129
  %83 = load i32, i32* %x_pos.addr, align 4
  br label %cond.end.134

cond.end.134:                                     ; preds = %cond.false.133, %cond.true.132
  %cond135 = phi i32 [ %82, %cond.true.132 ], [ %83, %cond.false.133 ]
  br label %cond.end.136

cond.end.136:                                     ; preds = %cond.end.134, %cond.true.128
  %cond137 = phi i32 [ 0, %cond.true.128 ], [ %cond135, %cond.end.134 ]
  %idxprom138 = sext i32 %cond137 to i64
  %84 = load i32, i32* %pres_y, align 4
  %idxprom139 = sext i32 %84 to i64
  %85 = load i16**, i16*** %imY.addr, align 8
  %arrayidx140 = getelementptr inbounds i16*, i16** %85, i64 %idxprom139
  %86 = load i16*, i16** %arrayidx140, align 8
  %arrayidx141 = getelementptr inbounds i16, i16* %86, i64 %idxprom138
  %87 = load i16, i16* %arrayidx141, align 2
  %conv142 = zext i16 %87 to i32
  %add143 = add nsw i32 %75, %conv142
  %div144 = sdiv i32 %add143, 2
  store i32 %div144, i32* %result, align 4
  br label %if.end.178

if.else.145:                                      ; preds = %cond.end.115
  %88 = load i32, i32* %dx, align 4
  %cmp146 = icmp eq i32 %88, 3
  br i1 %cmp146, label %if.then.148, label %if.end

if.then.148:                                      ; preds = %if.else.145
  %89 = load i32, i32* %result, align 4
  %90 = load i32, i32* %maxold_x, align 4
  %91 = load i32, i32* %x_pos.addr, align 4
  %add149 = add nsw i32 %91, 1
  %cmp150 = icmp slt i32 %90, %add149
  br i1 %cmp150, label %cond.true.152, label %cond.false.153

cond.true.152:                                    ; preds = %if.then.148
  %92 = load i32, i32* %maxold_x, align 4
  br label %cond.end.155

cond.false.153:                                   ; preds = %if.then.148
  %93 = load i32, i32* %x_pos.addr, align 4
  %add154 = add nsw i32 %93, 1
  br label %cond.end.155

cond.end.155:                                     ; preds = %cond.false.153, %cond.true.152
  %cond156 = phi i32 [ %92, %cond.true.152 ], [ %add154, %cond.false.153 ]
  %cmp157 = icmp sgt i32 0, %cond156
  br i1 %cmp157, label %cond.true.159, label %cond.false.160

cond.true.159:                                    ; preds = %cond.end.155
  br label %cond.end.169

cond.false.160:                                   ; preds = %cond.end.155
  %94 = load i32, i32* %maxold_x, align 4
  %95 = load i32, i32* %x_pos.addr, align 4
  %add161 = add nsw i32 %95, 1
  %cmp162 = icmp slt i32 %94, %add161
  br i1 %cmp162, label %cond.true.164, label %cond.false.165

cond.true.164:                                    ; preds = %cond.false.160
  %96 = load i32, i32* %maxold_x, align 4
  br label %cond.end.167

cond.false.165:                                   ; preds = %cond.false.160
  %97 = load i32, i32* %x_pos.addr, align 4
  %add166 = add nsw i32 %97, 1
  br label %cond.end.167

cond.end.167:                                     ; preds = %cond.false.165, %cond.true.164
  %cond168 = phi i32 [ %96, %cond.true.164 ], [ %add166, %cond.false.165 ]
  br label %cond.end.169

cond.end.169:                                     ; preds = %cond.end.167, %cond.true.159
  %cond170 = phi i32 [ 0, %cond.true.159 ], [ %cond168, %cond.end.167 ]
  %idxprom171 = sext i32 %cond170 to i64
  %98 = load i32, i32* %pres_y, align 4
  %idxprom172 = sext i32 %98 to i64
  %99 = load i16**, i16*** %imY.addr, align 8
  %arrayidx173 = getelementptr inbounds i16*, i16** %99, i64 %idxprom172
  %100 = load i16*, i16** %arrayidx173, align 8
  %arrayidx174 = getelementptr inbounds i16, i16* %100, i64 %idxprom171
  %101 = load i16, i16* %arrayidx174, align 2
  %conv175 = zext i16 %101 to i32
  %add176 = add nsw i32 %89, %conv175
  %div177 = sdiv i32 %add176, 2
  store i32 %div177, i32* %result, align 4
  br label %if.end

if.end:                                           ; preds = %cond.end.169, %if.else.145
  br label %if.end.178

if.end.178:                                       ; preds = %if.end, %cond.end.136
  br label %if.end.925

if.else.179:                                      ; preds = %if.else
  %102 = load i32, i32* %dx, align 4
  %cmp180 = icmp eq i32 %102, 0
  br i1 %cmp180, label %if.then.182, label %if.else.333

if.then.182:                                      ; preds = %if.else.179
  %103 = load i32, i32* %maxold_x, align 4
  %104 = load i32, i32* %x_pos.addr, align 4
  %cmp183 = icmp slt i32 %103, %104
  br i1 %cmp183, label %cond.true.185, label %cond.false.186

cond.true.185:                                    ; preds = %if.then.182
  %105 = load i32, i32* %maxold_x, align 4
  br label %cond.end.187

cond.false.186:                                   ; preds = %if.then.182
  %106 = load i32, i32* %x_pos.addr, align 4
  br label %cond.end.187

cond.end.187:                                     ; preds = %cond.false.186, %cond.true.185
  %cond188 = phi i32 [ %105, %cond.true.185 ], [ %106, %cond.false.186 ]
  %cmp189 = icmp sgt i32 0, %cond188
  br i1 %cmp189, label %cond.true.191, label %cond.false.192

cond.true.191:                                    ; preds = %cond.end.187
  br label %cond.end.199

cond.false.192:                                   ; preds = %cond.end.187
  %107 = load i32, i32* %maxold_x, align 4
  %108 = load i32, i32* %x_pos.addr, align 4
  %cmp193 = icmp slt i32 %107, %108
  br i1 %cmp193, label %cond.true.195, label %cond.false.196

cond.true.195:                                    ; preds = %cond.false.192
  %109 = load i32, i32* %maxold_x, align 4
  br label %cond.end.197

cond.false.196:                                   ; preds = %cond.false.192
  %110 = load i32, i32* %x_pos.addr, align 4
  br label %cond.end.197

cond.end.197:                                     ; preds = %cond.false.196, %cond.true.195
  %cond198 = phi i32 [ %109, %cond.true.195 ], [ %110, %cond.false.196 ]
  br label %cond.end.199

cond.end.199:                                     ; preds = %cond.end.197, %cond.true.191
  %cond200 = phi i32 [ 0, %cond.true.191 ], [ %cond198, %cond.end.197 ]
  store i32 %cond200, i32* %pres_x, align 4
  store i32 -2, i32* %y, align 4
  br label %for.cond.201

for.cond.201:                                     ; preds = %for.inc.237, %cond.end.199
  %111 = load i32, i32* %y, align 4
  %cmp202 = icmp slt i32 %111, 4
  br i1 %cmp202, label %for.body.204, label %for.end.239

for.body.204:                                     ; preds = %for.cond.201
  %112 = load i32, i32* %maxold_y, align 4
  %113 = load i32, i32* %y_pos.addr, align 4
  %114 = load i32, i32* %y, align 4
  %add205 = add nsw i32 %113, %114
  %cmp206 = icmp slt i32 %112, %add205
  br i1 %cmp206, label %cond.true.208, label %cond.false.209

cond.true.208:                                    ; preds = %for.body.204
  %115 = load i32, i32* %maxold_y, align 4
  br label %cond.end.211

cond.false.209:                                   ; preds = %for.body.204
  %116 = load i32, i32* %y_pos.addr, align 4
  %117 = load i32, i32* %y, align 4
  %add210 = add nsw i32 %116, %117
  br label %cond.end.211

cond.end.211:                                     ; preds = %cond.false.209, %cond.true.208
  %cond212 = phi i32 [ %115, %cond.true.208 ], [ %add210, %cond.false.209 ]
  %cmp213 = icmp sgt i32 0, %cond212
  br i1 %cmp213, label %cond.true.215, label %cond.false.216

cond.true.215:                                    ; preds = %cond.end.211
  br label %cond.end.225

cond.false.216:                                   ; preds = %cond.end.211
  %118 = load i32, i32* %maxold_y, align 4
  %119 = load i32, i32* %y_pos.addr, align 4
  %120 = load i32, i32* %y, align 4
  %add217 = add nsw i32 %119, %120
  %cmp218 = icmp slt i32 %118, %add217
  br i1 %cmp218, label %cond.true.220, label %cond.false.221

cond.true.220:                                    ; preds = %cond.false.216
  %121 = load i32, i32* %maxold_y, align 4
  br label %cond.end.223

cond.false.221:                                   ; preds = %cond.false.216
  %122 = load i32, i32* %y_pos.addr, align 4
  %123 = load i32, i32* %y, align 4
  %add222 = add nsw i32 %122, %123
  br label %cond.end.223

cond.end.223:                                     ; preds = %cond.false.221, %cond.true.220
  %cond224 = phi i32 [ %121, %cond.true.220 ], [ %add222, %cond.false.221 ]
  br label %cond.end.225

cond.end.225:                                     ; preds = %cond.end.223, %cond.true.215
  %cond226 = phi i32 [ 0, %cond.true.215 ], [ %cond224, %cond.end.223 ]
  store i32 %cond226, i32* %pres_y, align 4
  %124 = load i32, i32* %pres_x, align 4
  %idxprom227 = sext i32 %124 to i64
  %125 = load i32, i32* %pres_y, align 4
  %idxprom228 = sext i32 %125 to i64
  %126 = load i16**, i16*** %imY.addr, align 8
  %arrayidx229 = getelementptr inbounds i16*, i16** %126, i64 %idxprom228
  %127 = load i16*, i16** %arrayidx229, align 8
  %arrayidx230 = getelementptr inbounds i16, i16* %127, i64 %idxprom227
  %128 = load i16, i16* %arrayidx230, align 2
  %conv231 = zext i16 %128 to i32
  %129 = load i32, i32* %y, align 4
  %add232 = add nsw i32 %129, 2
  %idxprom233 = sext i32 %add232 to i64
  %arrayidx234 = getelementptr inbounds [6 x i32], [6 x i32]* @Get_Reference_Pixel.COEF, i32 0, i64 %idxprom233
  %130 = load i32, i32* %arrayidx234, align 4
  %mul235 = mul nsw i32 %conv231, %130
  %131 = load i32, i32* %result, align 4
  %add236 = add nsw i32 %131, %mul235
  store i32 %add236, i32* %result, align 4
  br label %for.inc.237

for.inc.237:                                      ; preds = %cond.end.225
  %132 = load i32, i32* %y, align 4
  %inc238 = add nsw i32 %132, 1
  store i32 %inc238, i32* %y, align 4
  br label %for.cond.201

for.end.239:                                      ; preds = %for.cond.201
  %133 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %max_imgpel_value240 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %133, i32 0, i32 155
  %134 = load i32, i32* %max_imgpel_value240, align 4
  %135 = load i32, i32* %result, align 4
  %add241 = add nsw i32 %135, 16
  %div242 = sdiv i32 %add241, 32
  %cmp243 = icmp slt i32 %134, %div242
  br i1 %cmp243, label %cond.true.245, label %cond.false.247

cond.true.245:                                    ; preds = %for.end.239
  %136 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %max_imgpel_value246 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %136, i32 0, i32 155
  %137 = load i32, i32* %max_imgpel_value246, align 4
  br label %cond.end.250

cond.false.247:                                   ; preds = %for.end.239
  %138 = load i32, i32* %result, align 4
  %add248 = add nsw i32 %138, 16
  %div249 = sdiv i32 %add248, 32
  br label %cond.end.250

cond.end.250:                                     ; preds = %cond.false.247, %cond.true.245
  %cond251 = phi i32 [ %137, %cond.true.245 ], [ %div249, %cond.false.247 ]
  %cmp252 = icmp sgt i32 0, %cond251
  br i1 %cmp252, label %cond.true.254, label %cond.false.255

cond.true.254:                                    ; preds = %cond.end.250
  br label %cond.end.268

cond.false.255:                                   ; preds = %cond.end.250
  %139 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %max_imgpel_value256 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %139, i32 0, i32 155
  %140 = load i32, i32* %max_imgpel_value256, align 4
  %141 = load i32, i32* %result, align 4
  %add257 = add nsw i32 %141, 16
  %div258 = sdiv i32 %add257, 32
  %cmp259 = icmp slt i32 %140, %div258
  br i1 %cmp259, label %cond.true.261, label %cond.false.263

cond.true.261:                                    ; preds = %cond.false.255
  %142 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %max_imgpel_value262 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %142, i32 0, i32 155
  %143 = load i32, i32* %max_imgpel_value262, align 4
  br label %cond.end.266

cond.false.263:                                   ; preds = %cond.false.255
  %144 = load i32, i32* %result, align 4
  %add264 = add nsw i32 %144, 16
  %div265 = sdiv i32 %add264, 32
  br label %cond.end.266

cond.end.266:                                     ; preds = %cond.false.263, %cond.true.261
  %cond267 = phi i32 [ %143, %cond.true.261 ], [ %div265, %cond.false.263 ]
  br label %cond.end.268

cond.end.268:                                     ; preds = %cond.end.266, %cond.true.254
  %cond269 = phi i32 [ 0, %cond.true.254 ], [ %cond267, %cond.end.266 ]
  store i32 %cond269, i32* %result, align 4
  %145 = load i32, i32* %dy, align 4
  %cmp270 = icmp eq i32 %145, 1
  br i1 %cmp270, label %if.then.272, label %if.else.298

if.then.272:                                      ; preds = %cond.end.268
  %146 = load i32, i32* %result, align 4
  %147 = load i32, i32* %pres_x, align 4
  %idxprom273 = sext i32 %147 to i64
  %148 = load i32, i32* %maxold_y, align 4
  %149 = load i32, i32* %y_pos.addr, align 4
  %cmp274 = icmp slt i32 %148, %149
  br i1 %cmp274, label %cond.true.276, label %cond.false.277

cond.true.276:                                    ; preds = %if.then.272
  %150 = load i32, i32* %maxold_y, align 4
  br label %cond.end.278

cond.false.277:                                   ; preds = %if.then.272
  %151 = load i32, i32* %y_pos.addr, align 4
  br label %cond.end.278

cond.end.278:                                     ; preds = %cond.false.277, %cond.true.276
  %cond279 = phi i32 [ %150, %cond.true.276 ], [ %151, %cond.false.277 ]
  %cmp280 = icmp sgt i32 0, %cond279
  br i1 %cmp280, label %cond.true.282, label %cond.false.283

cond.true.282:                                    ; preds = %cond.end.278
  br label %cond.end.290

cond.false.283:                                   ; preds = %cond.end.278
  %152 = load i32, i32* %maxold_y, align 4
  %153 = load i32, i32* %y_pos.addr, align 4
  %cmp284 = icmp slt i32 %152, %153
  br i1 %cmp284, label %cond.true.286, label %cond.false.287

cond.true.286:                                    ; preds = %cond.false.283
  %154 = load i32, i32* %maxold_y, align 4
  br label %cond.end.288

cond.false.287:                                   ; preds = %cond.false.283
  %155 = load i32, i32* %y_pos.addr, align 4
  br label %cond.end.288

cond.end.288:                                     ; preds = %cond.false.287, %cond.true.286
  %cond289 = phi i32 [ %154, %cond.true.286 ], [ %155, %cond.false.287 ]
  br label %cond.end.290

cond.end.290:                                     ; preds = %cond.end.288, %cond.true.282
  %cond291 = phi i32 [ 0, %cond.true.282 ], [ %cond289, %cond.end.288 ]
  %idxprom292 = sext i32 %cond291 to i64
  %156 = load i16**, i16*** %imY.addr, align 8
  %arrayidx293 = getelementptr inbounds i16*, i16** %156, i64 %idxprom292
  %157 = load i16*, i16** %arrayidx293, align 8
  %arrayidx294 = getelementptr inbounds i16, i16* %157, i64 %idxprom273
  %158 = load i16, i16* %arrayidx294, align 2
  %conv295 = zext i16 %158 to i32
  %add296 = add nsw i32 %146, %conv295
  %div297 = sdiv i32 %add296, 2
  store i32 %div297, i32* %result, align 4
  br label %if.end.332

if.else.298:                                      ; preds = %cond.end.268
  %159 = load i32, i32* %dy, align 4
  %cmp299 = icmp eq i32 %159, 3
  br i1 %cmp299, label %if.then.301, label %if.end.331

if.then.301:                                      ; preds = %if.else.298
  %160 = load i32, i32* %result, align 4
  %161 = load i32, i32* %pres_x, align 4
  %idxprom302 = sext i32 %161 to i64
  %162 = load i32, i32* %maxold_y, align 4
  %163 = load i32, i32* %y_pos.addr, align 4
  %add303 = add nsw i32 %163, 1
  %cmp304 = icmp slt i32 %162, %add303
  br i1 %cmp304, label %cond.true.306, label %cond.false.307

cond.true.306:                                    ; preds = %if.then.301
  %164 = load i32, i32* %maxold_y, align 4
  br label %cond.end.309

cond.false.307:                                   ; preds = %if.then.301
  %165 = load i32, i32* %y_pos.addr, align 4
  %add308 = add nsw i32 %165, 1
  br label %cond.end.309

cond.end.309:                                     ; preds = %cond.false.307, %cond.true.306
  %cond310 = phi i32 [ %164, %cond.true.306 ], [ %add308, %cond.false.307 ]
  %cmp311 = icmp sgt i32 0, %cond310
  br i1 %cmp311, label %cond.true.313, label %cond.false.314

cond.true.313:                                    ; preds = %cond.end.309
  br label %cond.end.323

cond.false.314:                                   ; preds = %cond.end.309
  %166 = load i32, i32* %maxold_y, align 4
  %167 = load i32, i32* %y_pos.addr, align 4
  %add315 = add nsw i32 %167, 1
  %cmp316 = icmp slt i32 %166, %add315
  br i1 %cmp316, label %cond.true.318, label %cond.false.319

cond.true.318:                                    ; preds = %cond.false.314
  %168 = load i32, i32* %maxold_y, align 4
  br label %cond.end.321

cond.false.319:                                   ; preds = %cond.false.314
  %169 = load i32, i32* %y_pos.addr, align 4
  %add320 = add nsw i32 %169, 1
  br label %cond.end.321

cond.end.321:                                     ; preds = %cond.false.319, %cond.true.318
  %cond322 = phi i32 [ %168, %cond.true.318 ], [ %add320, %cond.false.319 ]
  br label %cond.end.323

cond.end.323:                                     ; preds = %cond.end.321, %cond.true.313
  %cond324 = phi i32 [ 0, %cond.true.313 ], [ %cond322, %cond.end.321 ]
  %idxprom325 = sext i32 %cond324 to i64
  %170 = load i16**, i16*** %imY.addr, align 8
  %arrayidx326 = getelementptr inbounds i16*, i16** %170, i64 %idxprom325
  %171 = load i16*, i16** %arrayidx326, align 8
  %arrayidx327 = getelementptr inbounds i16, i16* %171, i64 %idxprom302
  %172 = load i16, i16* %arrayidx327, align 2
  %conv328 = zext i16 %172 to i32
  %add329 = add nsw i32 %160, %conv328
  %div330 = sdiv i32 %add329, 2
  store i32 %div330, i32* %result, align 4
  br label %if.end.331

if.end.331:                                       ; preds = %cond.end.323, %if.else.298
  br label %if.end.332

if.end.332:                                       ; preds = %if.end.331, %cond.end.290
  br label %if.end.924

if.else.333:                                      ; preds = %if.else.179
  %173 = load i32, i32* %dx, align 4
  %cmp334 = icmp eq i32 %173, 2
  br i1 %cmp334, label %if.then.336, label %if.else.534

if.then.336:                                      ; preds = %if.else.333
  store i32 -2, i32* %y, align 4
  br label %for.cond.337

for.cond.337:                                     ; preds = %for.inc.405, %if.then.336
  %174 = load i32, i32* %y, align 4
  %cmp338 = icmp slt i32 %174, 4
  br i1 %cmp338, label %for.body.340, label %for.end.407

for.body.340:                                     ; preds = %for.cond.337
  store i32 0, i32* %result, align 4
  %175 = load i32, i32* %maxold_y, align 4
  %176 = load i32, i32* %y_pos.addr, align 4
  %177 = load i32, i32* %y, align 4
  %add341 = add nsw i32 %176, %177
  %cmp342 = icmp slt i32 %175, %add341
  br i1 %cmp342, label %cond.true.344, label %cond.false.345

cond.true.344:                                    ; preds = %for.body.340
  %178 = load i32, i32* %maxold_y, align 4
  br label %cond.end.347

cond.false.345:                                   ; preds = %for.body.340
  %179 = load i32, i32* %y_pos.addr, align 4
  %180 = load i32, i32* %y, align 4
  %add346 = add nsw i32 %179, %180
  br label %cond.end.347

cond.end.347:                                     ; preds = %cond.false.345, %cond.true.344
  %cond348 = phi i32 [ %178, %cond.true.344 ], [ %add346, %cond.false.345 ]
  %cmp349 = icmp sgt i32 0, %cond348
  br i1 %cmp349, label %cond.true.351, label %cond.false.352

cond.true.351:                                    ; preds = %cond.end.347
  br label %cond.end.361

cond.false.352:                                   ; preds = %cond.end.347
  %181 = load i32, i32* %maxold_y, align 4
  %182 = load i32, i32* %y_pos.addr, align 4
  %183 = load i32, i32* %y, align 4
  %add353 = add nsw i32 %182, %183
  %cmp354 = icmp slt i32 %181, %add353
  br i1 %cmp354, label %cond.true.356, label %cond.false.357

cond.true.356:                                    ; preds = %cond.false.352
  %184 = load i32, i32* %maxold_y, align 4
  br label %cond.end.359

cond.false.357:                                   ; preds = %cond.false.352
  %185 = load i32, i32* %y_pos.addr, align 4
  %186 = load i32, i32* %y, align 4
  %add358 = add nsw i32 %185, %186
  br label %cond.end.359

cond.end.359:                                     ; preds = %cond.false.357, %cond.true.356
  %cond360 = phi i32 [ %184, %cond.true.356 ], [ %add358, %cond.false.357 ]
  br label %cond.end.361

cond.end.361:                                     ; preds = %cond.end.359, %cond.true.351
  %cond362 = phi i32 [ 0, %cond.true.351 ], [ %cond360, %cond.end.359 ]
  store i32 %cond362, i32* %pres_y, align 4
  store i32 -2, i32* %x, align 4
  br label %for.cond.363

for.cond.363:                                     ; preds = %for.inc.399, %cond.end.361
  %187 = load i32, i32* %x, align 4
  %cmp364 = icmp slt i32 %187, 4
  br i1 %cmp364, label %for.body.366, label %for.end.401

for.body.366:                                     ; preds = %for.cond.363
  %188 = load i32, i32* %maxold_x, align 4
  %189 = load i32, i32* %x_pos.addr, align 4
  %190 = load i32, i32* %x, align 4
  %add367 = add nsw i32 %189, %190
  %cmp368 = icmp slt i32 %188, %add367
  br i1 %cmp368, label %cond.true.370, label %cond.false.371

cond.true.370:                                    ; preds = %for.body.366
  %191 = load i32, i32* %maxold_x, align 4
  br label %cond.end.373

cond.false.371:                                   ; preds = %for.body.366
  %192 = load i32, i32* %x_pos.addr, align 4
  %193 = load i32, i32* %x, align 4
  %add372 = add nsw i32 %192, %193
  br label %cond.end.373

cond.end.373:                                     ; preds = %cond.false.371, %cond.true.370
  %cond374 = phi i32 [ %191, %cond.true.370 ], [ %add372, %cond.false.371 ]
  %cmp375 = icmp sgt i32 0, %cond374
  br i1 %cmp375, label %cond.true.377, label %cond.false.378

cond.true.377:                                    ; preds = %cond.end.373
  br label %cond.end.387

cond.false.378:                                   ; preds = %cond.end.373
  %194 = load i32, i32* %maxold_x, align 4
  %195 = load i32, i32* %x_pos.addr, align 4
  %196 = load i32, i32* %x, align 4
  %add379 = add nsw i32 %195, %196
  %cmp380 = icmp slt i32 %194, %add379
  br i1 %cmp380, label %cond.true.382, label %cond.false.383

cond.true.382:                                    ; preds = %cond.false.378
  %197 = load i32, i32* %maxold_x, align 4
  br label %cond.end.385

cond.false.383:                                   ; preds = %cond.false.378
  %198 = load i32, i32* %x_pos.addr, align 4
  %199 = load i32, i32* %x, align 4
  %add384 = add nsw i32 %198, %199
  br label %cond.end.385

cond.end.385:                                     ; preds = %cond.false.383, %cond.true.382
  %cond386 = phi i32 [ %197, %cond.true.382 ], [ %add384, %cond.false.383 ]
  br label %cond.end.387

cond.end.387:                                     ; preds = %cond.end.385, %cond.true.377
  %cond388 = phi i32 [ 0, %cond.true.377 ], [ %cond386, %cond.end.385 ]
  store i32 %cond388, i32* %pres_x, align 4
  %200 = load i32, i32* %pres_x, align 4
  %idxprom389 = sext i32 %200 to i64
  %201 = load i32, i32* %pres_y, align 4
  %idxprom390 = sext i32 %201 to i64
  %202 = load i16**, i16*** %imY.addr, align 8
  %arrayidx391 = getelementptr inbounds i16*, i16** %202, i64 %idxprom390
  %203 = load i16*, i16** %arrayidx391, align 8
  %arrayidx392 = getelementptr inbounds i16, i16* %203, i64 %idxprom389
  %204 = load i16, i16* %arrayidx392, align 2
  %conv393 = zext i16 %204 to i32
  %205 = load i32, i32* %x, align 4
  %add394 = add nsw i32 %205, 2
  %idxprom395 = sext i32 %add394 to i64
  %arrayidx396 = getelementptr inbounds [6 x i32], [6 x i32]* @Get_Reference_Pixel.COEF, i32 0, i64 %idxprom395
  %206 = load i32, i32* %arrayidx396, align 4
  %mul397 = mul nsw i32 %conv393, %206
  %207 = load i32, i32* %result, align 4
  %add398 = add nsw i32 %207, %mul397
  store i32 %add398, i32* %result, align 4
  br label %for.inc.399

for.inc.399:                                      ; preds = %cond.end.387
  %208 = load i32, i32* %x, align 4
  %inc400 = add nsw i32 %208, 1
  store i32 %inc400, i32* %x, align 4
  br label %for.cond.363

for.end.401:                                      ; preds = %for.cond.363
  %209 = load i32, i32* %result, align 4
  %210 = load i32, i32* %y, align 4
  %add402 = add nsw i32 %210, 2
  %idxprom403 = sext i32 %add402 to i64
  %arrayidx404 = getelementptr inbounds [6 x i32], [6 x i32]* %tmp_res, i32 0, i64 %idxprom403
  store i32 %209, i32* %arrayidx404, align 4
  br label %for.inc.405

for.inc.405:                                      ; preds = %for.end.401
  %211 = load i32, i32* %y, align 4
  %inc406 = add nsw i32 %211, 1
  store i32 %inc406, i32* %y, align 4
  br label %for.cond.337

for.end.407:                                      ; preds = %for.cond.337
  store i32 0, i32* %result, align 4
  store i32 -2, i32* %y, align 4
  br label %for.cond.408

for.cond.408:                                     ; preds = %for.inc.420, %for.end.407
  %212 = load i32, i32* %y, align 4
  %cmp409 = icmp slt i32 %212, 4
  br i1 %cmp409, label %for.body.411, label %for.end.422

for.body.411:                                     ; preds = %for.cond.408
  %213 = load i32, i32* %y, align 4
  %add412 = add nsw i32 %213, 2
  %idxprom413 = sext i32 %add412 to i64
  %arrayidx414 = getelementptr inbounds [6 x i32], [6 x i32]* %tmp_res, i32 0, i64 %idxprom413
  %214 = load i32, i32* %arrayidx414, align 4
  %215 = load i32, i32* %y, align 4
  %add415 = add nsw i32 %215, 2
  %idxprom416 = sext i32 %add415 to i64
  %arrayidx417 = getelementptr inbounds [6 x i32], [6 x i32]* @Get_Reference_Pixel.COEF, i32 0, i64 %idxprom416
  %216 = load i32, i32* %arrayidx417, align 4
  %mul418 = mul nsw i32 %214, %216
  %217 = load i32, i32* %result, align 4
  %add419 = add nsw i32 %217, %mul418
  store i32 %add419, i32* %result, align 4
  br label %for.inc.420

for.inc.420:                                      ; preds = %for.body.411
  %218 = load i32, i32* %y, align 4
  %inc421 = add nsw i32 %218, 1
  store i32 %inc421, i32* %y, align 4
  br label %for.cond.408

for.end.422:                                      ; preds = %for.cond.408
  %219 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %max_imgpel_value423 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %219, i32 0, i32 155
  %220 = load i32, i32* %max_imgpel_value423, align 4
  %221 = load i32, i32* %result, align 4
  %add424 = add nsw i32 %221, 512
  %div425 = sdiv i32 %add424, 1024
  %cmp426 = icmp slt i32 %220, %div425
  br i1 %cmp426, label %cond.true.428, label %cond.false.430

cond.true.428:                                    ; preds = %for.end.422
  %222 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %max_imgpel_value429 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %222, i32 0, i32 155
  %223 = load i32, i32* %max_imgpel_value429, align 4
  br label %cond.end.433

cond.false.430:                                   ; preds = %for.end.422
  %224 = load i32, i32* %result, align 4
  %add431 = add nsw i32 %224, 512
  %div432 = sdiv i32 %add431, 1024
  br label %cond.end.433

cond.end.433:                                     ; preds = %cond.false.430, %cond.true.428
  %cond434 = phi i32 [ %223, %cond.true.428 ], [ %div432, %cond.false.430 ]
  %cmp435 = icmp sgt i32 0, %cond434
  br i1 %cmp435, label %cond.true.437, label %cond.false.438

cond.true.437:                                    ; preds = %cond.end.433
  br label %cond.end.451

cond.false.438:                                   ; preds = %cond.end.433
  %225 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %max_imgpel_value439 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %225, i32 0, i32 155
  %226 = load i32, i32* %max_imgpel_value439, align 4
  %227 = load i32, i32* %result, align 4
  %add440 = add nsw i32 %227, 512
  %div441 = sdiv i32 %add440, 1024
  %cmp442 = icmp slt i32 %226, %div441
  br i1 %cmp442, label %cond.true.444, label %cond.false.446

cond.true.444:                                    ; preds = %cond.false.438
  %228 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %max_imgpel_value445 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %228, i32 0, i32 155
  %229 = load i32, i32* %max_imgpel_value445, align 4
  br label %cond.end.449

cond.false.446:                                   ; preds = %cond.false.438
  %230 = load i32, i32* %result, align 4
  %add447 = add nsw i32 %230, 512
  %div448 = sdiv i32 %add447, 1024
  br label %cond.end.449

cond.end.449:                                     ; preds = %cond.false.446, %cond.true.444
  %cond450 = phi i32 [ %229, %cond.true.444 ], [ %div448, %cond.false.446 ]
  br label %cond.end.451

cond.end.451:                                     ; preds = %cond.end.449, %cond.true.437
  %cond452 = phi i32 [ 0, %cond.true.437 ], [ %cond450, %cond.end.449 ]
  store i32 %cond452, i32* %result, align 4
  %231 = load i32, i32* %dy, align 4
  %cmp453 = icmp eq i32 %231, 1
  br i1 %cmp453, label %if.then.455, label %if.else.492

if.then.455:                                      ; preds = %cond.end.451
  %232 = load i32, i32* %result, align 4
  %233 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %max_imgpel_value456 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %233, i32 0, i32 155
  %234 = load i32, i32* %max_imgpel_value456, align 4
  %arrayidx457 = getelementptr inbounds [6 x i32], [6 x i32]* %tmp_res, i32 0, i64 2
  %235 = load i32, i32* %arrayidx457, align 4
  %add458 = add nsw i32 %235, 16
  %div459 = sdiv i32 %add458, 32
  %cmp460 = icmp slt i32 %234, %div459
  br i1 %cmp460, label %cond.true.462, label %cond.false.464

cond.true.462:                                    ; preds = %if.then.455
  %236 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %max_imgpel_value463 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %236, i32 0, i32 155
  %237 = load i32, i32* %max_imgpel_value463, align 4
  br label %cond.end.468

cond.false.464:                                   ; preds = %if.then.455
  %arrayidx465 = getelementptr inbounds [6 x i32], [6 x i32]* %tmp_res, i32 0, i64 2
  %238 = load i32, i32* %arrayidx465, align 4
  %add466 = add nsw i32 %238, 16
  %div467 = sdiv i32 %add466, 32
  br label %cond.end.468

cond.end.468:                                     ; preds = %cond.false.464, %cond.true.462
  %cond469 = phi i32 [ %237, %cond.true.462 ], [ %div467, %cond.false.464 ]
  %cmp470 = icmp sgt i32 0, %cond469
  br i1 %cmp470, label %cond.true.472, label %cond.false.473

cond.true.472:                                    ; preds = %cond.end.468
  br label %cond.end.488

cond.false.473:                                   ; preds = %cond.end.468
  %239 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %max_imgpel_value474 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %239, i32 0, i32 155
  %240 = load i32, i32* %max_imgpel_value474, align 4
  %arrayidx475 = getelementptr inbounds [6 x i32], [6 x i32]* %tmp_res, i32 0, i64 2
  %241 = load i32, i32* %arrayidx475, align 4
  %add476 = add nsw i32 %241, 16
  %div477 = sdiv i32 %add476, 32
  %cmp478 = icmp slt i32 %240, %div477
  br i1 %cmp478, label %cond.true.480, label %cond.false.482

cond.true.480:                                    ; preds = %cond.false.473
  %242 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %max_imgpel_value481 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %242, i32 0, i32 155
  %243 = load i32, i32* %max_imgpel_value481, align 4
  br label %cond.end.486

cond.false.482:                                   ; preds = %cond.false.473
  %arrayidx483 = getelementptr inbounds [6 x i32], [6 x i32]* %tmp_res, i32 0, i64 2
  %244 = load i32, i32* %arrayidx483, align 4
  %add484 = add nsw i32 %244, 16
  %div485 = sdiv i32 %add484, 32
  br label %cond.end.486

cond.end.486:                                     ; preds = %cond.false.482, %cond.true.480
  %cond487 = phi i32 [ %243, %cond.true.480 ], [ %div485, %cond.false.482 ]
  br label %cond.end.488

cond.end.488:                                     ; preds = %cond.end.486, %cond.true.472
  %cond489 = phi i32 [ 0, %cond.true.472 ], [ %cond487, %cond.end.486 ]
  %add490 = add nsw i32 %232, %cond489
  %div491 = sdiv i32 %add490, 2
  store i32 %div491, i32* %result, align 4
  br label %if.end.533

if.else.492:                                      ; preds = %cond.end.451
  %245 = load i32, i32* %dy, align 4
  %cmp493 = icmp eq i32 %245, 3
  br i1 %cmp493, label %if.then.495, label %if.end.532

if.then.495:                                      ; preds = %if.else.492
  %246 = load i32, i32* %result, align 4
  %247 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %max_imgpel_value496 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %247, i32 0, i32 155
  %248 = load i32, i32* %max_imgpel_value496, align 4
  %arrayidx497 = getelementptr inbounds [6 x i32], [6 x i32]* %tmp_res, i32 0, i64 3
  %249 = load i32, i32* %arrayidx497, align 4
  %add498 = add nsw i32 %249, 16
  %div499 = sdiv i32 %add498, 32
  %cmp500 = icmp slt i32 %248, %div499
  br i1 %cmp500, label %cond.true.502, label %cond.false.504

cond.true.502:                                    ; preds = %if.then.495
  %250 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %max_imgpel_value503 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %250, i32 0, i32 155
  %251 = load i32, i32* %max_imgpel_value503, align 4
  br label %cond.end.508

cond.false.504:                                   ; preds = %if.then.495
  %arrayidx505 = getelementptr inbounds [6 x i32], [6 x i32]* %tmp_res, i32 0, i64 3
  %252 = load i32, i32* %arrayidx505, align 4
  %add506 = add nsw i32 %252, 16
  %div507 = sdiv i32 %add506, 32
  br label %cond.end.508

cond.end.508:                                     ; preds = %cond.false.504, %cond.true.502
  %cond509 = phi i32 [ %251, %cond.true.502 ], [ %div507, %cond.false.504 ]
  %cmp510 = icmp sgt i32 0, %cond509
  br i1 %cmp510, label %cond.true.512, label %cond.false.513

cond.true.512:                                    ; preds = %cond.end.508
  br label %cond.end.528

cond.false.513:                                   ; preds = %cond.end.508
  %253 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %max_imgpel_value514 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %253, i32 0, i32 155
  %254 = load i32, i32* %max_imgpel_value514, align 4
  %arrayidx515 = getelementptr inbounds [6 x i32], [6 x i32]* %tmp_res, i32 0, i64 3
  %255 = load i32, i32* %arrayidx515, align 4
  %add516 = add nsw i32 %255, 16
  %div517 = sdiv i32 %add516, 32
  %cmp518 = icmp slt i32 %254, %div517
  br i1 %cmp518, label %cond.true.520, label %cond.false.522

cond.true.520:                                    ; preds = %cond.false.513
  %256 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %max_imgpel_value521 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %256, i32 0, i32 155
  %257 = load i32, i32* %max_imgpel_value521, align 4
  br label %cond.end.526

cond.false.522:                                   ; preds = %cond.false.513
  %arrayidx523 = getelementptr inbounds [6 x i32], [6 x i32]* %tmp_res, i32 0, i64 3
  %258 = load i32, i32* %arrayidx523, align 4
  %add524 = add nsw i32 %258, 16
  %div525 = sdiv i32 %add524, 32
  br label %cond.end.526

cond.end.526:                                     ; preds = %cond.false.522, %cond.true.520
  %cond527 = phi i32 [ %257, %cond.true.520 ], [ %div525, %cond.false.522 ]
  br label %cond.end.528

cond.end.528:                                     ; preds = %cond.end.526, %cond.true.512
  %cond529 = phi i32 [ 0, %cond.true.512 ], [ %cond527, %cond.end.526 ]
  %add530 = add nsw i32 %246, %cond529
  %div531 = sdiv i32 %add530, 2
  store i32 %div531, i32* %result, align 4
  br label %if.end.532

if.end.532:                                       ; preds = %cond.end.528, %if.else.492
  br label %if.end.533

if.end.533:                                       ; preds = %if.end.532, %cond.end.488
  br label %if.end.923

if.else.534:                                      ; preds = %if.else.333
  %259 = load i32, i32* %dy, align 4
  %cmp535 = icmp eq i32 %259, 2
  br i1 %cmp535, label %if.then.537, label %if.else.731

if.then.537:                                      ; preds = %if.else.534
  store i32 -2, i32* %x, align 4
  br label %for.cond.538

for.cond.538:                                     ; preds = %for.inc.606, %if.then.537
  %260 = load i32, i32* %x, align 4
  %cmp539 = icmp slt i32 %260, 4
  br i1 %cmp539, label %for.body.541, label %for.end.608

for.body.541:                                     ; preds = %for.cond.538
  store i32 0, i32* %result, align 4
  %261 = load i32, i32* %maxold_x, align 4
  %262 = load i32, i32* %x_pos.addr, align 4
  %263 = load i32, i32* %x, align 4
  %add542 = add nsw i32 %262, %263
  %cmp543 = icmp slt i32 %261, %add542
  br i1 %cmp543, label %cond.true.545, label %cond.false.546

cond.true.545:                                    ; preds = %for.body.541
  %264 = load i32, i32* %maxold_x, align 4
  br label %cond.end.548

cond.false.546:                                   ; preds = %for.body.541
  %265 = load i32, i32* %x_pos.addr, align 4
  %266 = load i32, i32* %x, align 4
  %add547 = add nsw i32 %265, %266
  br label %cond.end.548

cond.end.548:                                     ; preds = %cond.false.546, %cond.true.545
  %cond549 = phi i32 [ %264, %cond.true.545 ], [ %add547, %cond.false.546 ]
  %cmp550 = icmp sgt i32 0, %cond549
  br i1 %cmp550, label %cond.true.552, label %cond.false.553

cond.true.552:                                    ; preds = %cond.end.548
  br label %cond.end.562

cond.false.553:                                   ; preds = %cond.end.548
  %267 = load i32, i32* %maxold_x, align 4
  %268 = load i32, i32* %x_pos.addr, align 4
  %269 = load i32, i32* %x, align 4
  %add554 = add nsw i32 %268, %269
  %cmp555 = icmp slt i32 %267, %add554
  br i1 %cmp555, label %cond.true.557, label %cond.false.558

cond.true.557:                                    ; preds = %cond.false.553
  %270 = load i32, i32* %maxold_x, align 4
  br label %cond.end.560

cond.false.558:                                   ; preds = %cond.false.553
  %271 = load i32, i32* %x_pos.addr, align 4
  %272 = load i32, i32* %x, align 4
  %add559 = add nsw i32 %271, %272
  br label %cond.end.560

cond.end.560:                                     ; preds = %cond.false.558, %cond.true.557
  %cond561 = phi i32 [ %270, %cond.true.557 ], [ %add559, %cond.false.558 ]
  br label %cond.end.562

cond.end.562:                                     ; preds = %cond.end.560, %cond.true.552
  %cond563 = phi i32 [ 0, %cond.true.552 ], [ %cond561, %cond.end.560 ]
  store i32 %cond563, i32* %pres_x, align 4
  store i32 -2, i32* %y, align 4
  br label %for.cond.564

for.cond.564:                                     ; preds = %for.inc.600, %cond.end.562
  %273 = load i32, i32* %y, align 4
  %cmp565 = icmp slt i32 %273, 4
  br i1 %cmp565, label %for.body.567, label %for.end.602

for.body.567:                                     ; preds = %for.cond.564
  %274 = load i32, i32* %maxold_y, align 4
  %275 = load i32, i32* %y_pos.addr, align 4
  %276 = load i32, i32* %y, align 4
  %add568 = add nsw i32 %275, %276
  %cmp569 = icmp slt i32 %274, %add568
  br i1 %cmp569, label %cond.true.571, label %cond.false.572

cond.true.571:                                    ; preds = %for.body.567
  %277 = load i32, i32* %maxold_y, align 4
  br label %cond.end.574

cond.false.572:                                   ; preds = %for.body.567
  %278 = load i32, i32* %y_pos.addr, align 4
  %279 = load i32, i32* %y, align 4
  %add573 = add nsw i32 %278, %279
  br label %cond.end.574

cond.end.574:                                     ; preds = %cond.false.572, %cond.true.571
  %cond575 = phi i32 [ %277, %cond.true.571 ], [ %add573, %cond.false.572 ]
  %cmp576 = icmp sgt i32 0, %cond575
  br i1 %cmp576, label %cond.true.578, label %cond.false.579

cond.true.578:                                    ; preds = %cond.end.574
  br label %cond.end.588

cond.false.579:                                   ; preds = %cond.end.574
  %280 = load i32, i32* %maxold_y, align 4
  %281 = load i32, i32* %y_pos.addr, align 4
  %282 = load i32, i32* %y, align 4
  %add580 = add nsw i32 %281, %282
  %cmp581 = icmp slt i32 %280, %add580
  br i1 %cmp581, label %cond.true.583, label %cond.false.584

cond.true.583:                                    ; preds = %cond.false.579
  %283 = load i32, i32* %maxold_y, align 4
  br label %cond.end.586

cond.false.584:                                   ; preds = %cond.false.579
  %284 = load i32, i32* %y_pos.addr, align 4
  %285 = load i32, i32* %y, align 4
  %add585 = add nsw i32 %284, %285
  br label %cond.end.586

cond.end.586:                                     ; preds = %cond.false.584, %cond.true.583
  %cond587 = phi i32 [ %283, %cond.true.583 ], [ %add585, %cond.false.584 ]
  br label %cond.end.588

cond.end.588:                                     ; preds = %cond.end.586, %cond.true.578
  %cond589 = phi i32 [ 0, %cond.true.578 ], [ %cond587, %cond.end.586 ]
  store i32 %cond589, i32* %pres_y, align 4
  %286 = load i32, i32* %pres_x, align 4
  %idxprom590 = sext i32 %286 to i64
  %287 = load i32, i32* %pres_y, align 4
  %idxprom591 = sext i32 %287 to i64
  %288 = load i16**, i16*** %imY.addr, align 8
  %arrayidx592 = getelementptr inbounds i16*, i16** %288, i64 %idxprom591
  %289 = load i16*, i16** %arrayidx592, align 8
  %arrayidx593 = getelementptr inbounds i16, i16* %289, i64 %idxprom590
  %290 = load i16, i16* %arrayidx593, align 2
  %conv594 = zext i16 %290 to i32
  %291 = load i32, i32* %y, align 4
  %add595 = add nsw i32 %291, 2
  %idxprom596 = sext i32 %add595 to i64
  %arrayidx597 = getelementptr inbounds [6 x i32], [6 x i32]* @Get_Reference_Pixel.COEF, i32 0, i64 %idxprom596
  %292 = load i32, i32* %arrayidx597, align 4
  %mul598 = mul nsw i32 %conv594, %292
  %293 = load i32, i32* %result, align 4
  %add599 = add nsw i32 %293, %mul598
  store i32 %add599, i32* %result, align 4
  br label %for.inc.600

for.inc.600:                                      ; preds = %cond.end.588
  %294 = load i32, i32* %y, align 4
  %inc601 = add nsw i32 %294, 1
  store i32 %inc601, i32* %y, align 4
  br label %for.cond.564

for.end.602:                                      ; preds = %for.cond.564
  %295 = load i32, i32* %result, align 4
  %296 = load i32, i32* %x, align 4
  %add603 = add nsw i32 %296, 2
  %idxprom604 = sext i32 %add603 to i64
  %arrayidx605 = getelementptr inbounds [6 x i32], [6 x i32]* %tmp_res, i32 0, i64 %idxprom604
  store i32 %295, i32* %arrayidx605, align 4
  br label %for.inc.606

for.inc.606:                                      ; preds = %for.end.602
  %297 = load i32, i32* %x, align 4
  %inc607 = add nsw i32 %297, 1
  store i32 %inc607, i32* %x, align 4
  br label %for.cond.538

for.end.608:                                      ; preds = %for.cond.538
  store i32 0, i32* %result, align 4
  store i32 -2, i32* %x, align 4
  br label %for.cond.609

for.cond.609:                                     ; preds = %for.inc.621, %for.end.608
  %298 = load i32, i32* %x, align 4
  %cmp610 = icmp slt i32 %298, 4
  br i1 %cmp610, label %for.body.612, label %for.end.623

for.body.612:                                     ; preds = %for.cond.609
  %299 = load i32, i32* %x, align 4
  %add613 = add nsw i32 %299, 2
  %idxprom614 = sext i32 %add613 to i64
  %arrayidx615 = getelementptr inbounds [6 x i32], [6 x i32]* %tmp_res, i32 0, i64 %idxprom614
  %300 = load i32, i32* %arrayidx615, align 4
  %301 = load i32, i32* %x, align 4
  %add616 = add nsw i32 %301, 2
  %idxprom617 = sext i32 %add616 to i64
  %arrayidx618 = getelementptr inbounds [6 x i32], [6 x i32]* @Get_Reference_Pixel.COEF, i32 0, i64 %idxprom617
  %302 = load i32, i32* %arrayidx618, align 4
  %mul619 = mul nsw i32 %300, %302
  %303 = load i32, i32* %result, align 4
  %add620 = add nsw i32 %303, %mul619
  store i32 %add620, i32* %result, align 4
  br label %for.inc.621

for.inc.621:                                      ; preds = %for.body.612
  %304 = load i32, i32* %x, align 4
  %inc622 = add nsw i32 %304, 1
  store i32 %inc622, i32* %x, align 4
  br label %for.cond.609

for.end.623:                                      ; preds = %for.cond.609
  %305 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %max_imgpel_value624 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %305, i32 0, i32 155
  %306 = load i32, i32* %max_imgpel_value624, align 4
  %307 = load i32, i32* %result, align 4
  %add625 = add nsw i32 %307, 512
  %div626 = sdiv i32 %add625, 1024
  %cmp627 = icmp slt i32 %306, %div626
  br i1 %cmp627, label %cond.true.629, label %cond.false.631

cond.true.629:                                    ; preds = %for.end.623
  %308 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %max_imgpel_value630 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %308, i32 0, i32 155
  %309 = load i32, i32* %max_imgpel_value630, align 4
  br label %cond.end.634

cond.false.631:                                   ; preds = %for.end.623
  %310 = load i32, i32* %result, align 4
  %add632 = add nsw i32 %310, 512
  %div633 = sdiv i32 %add632, 1024
  br label %cond.end.634

cond.end.634:                                     ; preds = %cond.false.631, %cond.true.629
  %cond635 = phi i32 [ %309, %cond.true.629 ], [ %div633, %cond.false.631 ]
  %cmp636 = icmp sgt i32 0, %cond635
  br i1 %cmp636, label %cond.true.638, label %cond.false.639

cond.true.638:                                    ; preds = %cond.end.634
  br label %cond.end.652

cond.false.639:                                   ; preds = %cond.end.634
  %311 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %max_imgpel_value640 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %311, i32 0, i32 155
  %312 = load i32, i32* %max_imgpel_value640, align 4
  %313 = load i32, i32* %result, align 4
  %add641 = add nsw i32 %313, 512
  %div642 = sdiv i32 %add641, 1024
  %cmp643 = icmp slt i32 %312, %div642
  br i1 %cmp643, label %cond.true.645, label %cond.false.647

cond.true.645:                                    ; preds = %cond.false.639
  %314 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %max_imgpel_value646 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %314, i32 0, i32 155
  %315 = load i32, i32* %max_imgpel_value646, align 4
  br label %cond.end.650

cond.false.647:                                   ; preds = %cond.false.639
  %316 = load i32, i32* %result, align 4
  %add648 = add nsw i32 %316, 512
  %div649 = sdiv i32 %add648, 1024
  br label %cond.end.650

cond.end.650:                                     ; preds = %cond.false.647, %cond.true.645
  %cond651 = phi i32 [ %315, %cond.true.645 ], [ %div649, %cond.false.647 ]
  br label %cond.end.652

cond.end.652:                                     ; preds = %cond.end.650, %cond.true.638
  %cond653 = phi i32 [ 0, %cond.true.638 ], [ %cond651, %cond.end.650 ]
  store i32 %cond653, i32* %result, align 4
  %317 = load i32, i32* %dx, align 4
  %cmp654 = icmp eq i32 %317, 1
  br i1 %cmp654, label %if.then.656, label %if.else.693

if.then.656:                                      ; preds = %cond.end.652
  %318 = load i32, i32* %result, align 4
  %319 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %max_imgpel_value657 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %319, i32 0, i32 155
  %320 = load i32, i32* %max_imgpel_value657, align 4
  %arrayidx658 = getelementptr inbounds [6 x i32], [6 x i32]* %tmp_res, i32 0, i64 2
  %321 = load i32, i32* %arrayidx658, align 4
  %add659 = add nsw i32 %321, 16
  %div660 = sdiv i32 %add659, 32
  %cmp661 = icmp slt i32 %320, %div660
  br i1 %cmp661, label %cond.true.663, label %cond.false.665

cond.true.663:                                    ; preds = %if.then.656
  %322 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %max_imgpel_value664 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %322, i32 0, i32 155
  %323 = load i32, i32* %max_imgpel_value664, align 4
  br label %cond.end.669

cond.false.665:                                   ; preds = %if.then.656
  %arrayidx666 = getelementptr inbounds [6 x i32], [6 x i32]* %tmp_res, i32 0, i64 2
  %324 = load i32, i32* %arrayidx666, align 4
  %add667 = add nsw i32 %324, 16
  %div668 = sdiv i32 %add667, 32
  br label %cond.end.669

cond.end.669:                                     ; preds = %cond.false.665, %cond.true.663
  %cond670 = phi i32 [ %323, %cond.true.663 ], [ %div668, %cond.false.665 ]
  %cmp671 = icmp sgt i32 0, %cond670
  br i1 %cmp671, label %cond.true.673, label %cond.false.674

cond.true.673:                                    ; preds = %cond.end.669
  br label %cond.end.689

cond.false.674:                                   ; preds = %cond.end.669
  %325 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %max_imgpel_value675 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %325, i32 0, i32 155
  %326 = load i32, i32* %max_imgpel_value675, align 4
  %arrayidx676 = getelementptr inbounds [6 x i32], [6 x i32]* %tmp_res, i32 0, i64 2
  %327 = load i32, i32* %arrayidx676, align 4
  %add677 = add nsw i32 %327, 16
  %div678 = sdiv i32 %add677, 32
  %cmp679 = icmp slt i32 %326, %div678
  br i1 %cmp679, label %cond.true.681, label %cond.false.683

cond.true.681:                                    ; preds = %cond.false.674
  %328 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %max_imgpel_value682 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %328, i32 0, i32 155
  %329 = load i32, i32* %max_imgpel_value682, align 4
  br label %cond.end.687

cond.false.683:                                   ; preds = %cond.false.674
  %arrayidx684 = getelementptr inbounds [6 x i32], [6 x i32]* %tmp_res, i32 0, i64 2
  %330 = load i32, i32* %arrayidx684, align 4
  %add685 = add nsw i32 %330, 16
  %div686 = sdiv i32 %add685, 32
  br label %cond.end.687

cond.end.687:                                     ; preds = %cond.false.683, %cond.true.681
  %cond688 = phi i32 [ %329, %cond.true.681 ], [ %div686, %cond.false.683 ]
  br label %cond.end.689

cond.end.689:                                     ; preds = %cond.end.687, %cond.true.673
  %cond690 = phi i32 [ 0, %cond.true.673 ], [ %cond688, %cond.end.687 ]
  %add691 = add nsw i32 %318, %cond690
  %div692 = sdiv i32 %add691, 2
  store i32 %div692, i32* %result, align 4
  br label %if.end.730

if.else.693:                                      ; preds = %cond.end.652
  %331 = load i32, i32* %result, align 4
  %332 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %max_imgpel_value694 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %332, i32 0, i32 155
  %333 = load i32, i32* %max_imgpel_value694, align 4
  %arrayidx695 = getelementptr inbounds [6 x i32], [6 x i32]* %tmp_res, i32 0, i64 3
  %334 = load i32, i32* %arrayidx695, align 4
  %add696 = add nsw i32 %334, 16
  %div697 = sdiv i32 %add696, 32
  %cmp698 = icmp slt i32 %333, %div697
  br i1 %cmp698, label %cond.true.700, label %cond.false.702

cond.true.700:                                    ; preds = %if.else.693
  %335 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %max_imgpel_value701 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %335, i32 0, i32 155
  %336 = load i32, i32* %max_imgpel_value701, align 4
  br label %cond.end.706

cond.false.702:                                   ; preds = %if.else.693
  %arrayidx703 = getelementptr inbounds [6 x i32], [6 x i32]* %tmp_res, i32 0, i64 3
  %337 = load i32, i32* %arrayidx703, align 4
  %add704 = add nsw i32 %337, 16
  %div705 = sdiv i32 %add704, 32
  br label %cond.end.706

cond.end.706:                                     ; preds = %cond.false.702, %cond.true.700
  %cond707 = phi i32 [ %336, %cond.true.700 ], [ %div705, %cond.false.702 ]
  %cmp708 = icmp sgt i32 0, %cond707
  br i1 %cmp708, label %cond.true.710, label %cond.false.711

cond.true.710:                                    ; preds = %cond.end.706
  br label %cond.end.726

cond.false.711:                                   ; preds = %cond.end.706
  %338 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %max_imgpel_value712 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %338, i32 0, i32 155
  %339 = load i32, i32* %max_imgpel_value712, align 4
  %arrayidx713 = getelementptr inbounds [6 x i32], [6 x i32]* %tmp_res, i32 0, i64 3
  %340 = load i32, i32* %arrayidx713, align 4
  %add714 = add nsw i32 %340, 16
  %div715 = sdiv i32 %add714, 32
  %cmp716 = icmp slt i32 %339, %div715
  br i1 %cmp716, label %cond.true.718, label %cond.false.720

cond.true.718:                                    ; preds = %cond.false.711
  %341 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %max_imgpel_value719 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %341, i32 0, i32 155
  %342 = load i32, i32* %max_imgpel_value719, align 4
  br label %cond.end.724

cond.false.720:                                   ; preds = %cond.false.711
  %arrayidx721 = getelementptr inbounds [6 x i32], [6 x i32]* %tmp_res, i32 0, i64 3
  %343 = load i32, i32* %arrayidx721, align 4
  %add722 = add nsw i32 %343, 16
  %div723 = sdiv i32 %add722, 32
  br label %cond.end.724

cond.end.724:                                     ; preds = %cond.false.720, %cond.true.718
  %cond725 = phi i32 [ %342, %cond.true.718 ], [ %div723, %cond.false.720 ]
  br label %cond.end.726

cond.end.726:                                     ; preds = %cond.end.724, %cond.true.710
  %cond727 = phi i32 [ 0, %cond.true.710 ], [ %cond725, %cond.end.724 ]
  %add728 = add nsw i32 %331, %cond727
  %div729 = sdiv i32 %add728, 2
  store i32 %div729, i32* %result, align 4
  br label %if.end.730

if.end.730:                                       ; preds = %cond.end.726, %cond.end.689
  br label %if.end.922

if.else.731:                                      ; preds = %if.else.534
  store i32 0, i32* %result, align 4
  %344 = load i32, i32* %dy, align 4
  %cmp732 = icmp eq i32 %344, 1
  br i1 %cmp732, label %cond.true.734, label %cond.false.735

cond.true.734:                                    ; preds = %if.else.731
  %345 = load i32, i32* %y_pos.addr, align 4
  br label %cond.end.737

cond.false.735:                                   ; preds = %if.else.731
  %346 = load i32, i32* %y_pos.addr, align 4
  %add736 = add nsw i32 %346, 1
  br label %cond.end.737

cond.end.737:                                     ; preds = %cond.false.735, %cond.true.734
  %cond738 = phi i32 [ %345, %cond.true.734 ], [ %add736, %cond.false.735 ]
  store i32 %cond738, i32* %pres_y, align 4
  %347 = load i32, i32* %maxold_y, align 4
  %348 = load i32, i32* %pres_y, align 4
  %cmp739 = icmp slt i32 %347, %348
  br i1 %cmp739, label %cond.true.741, label %cond.false.742

cond.true.741:                                    ; preds = %cond.end.737
  %349 = load i32, i32* %maxold_y, align 4
  br label %cond.end.743

cond.false.742:                                   ; preds = %cond.end.737
  %350 = load i32, i32* %pres_y, align 4
  br label %cond.end.743

cond.end.743:                                     ; preds = %cond.false.742, %cond.true.741
  %cond744 = phi i32 [ %349, %cond.true.741 ], [ %350, %cond.false.742 ]
  %cmp745 = icmp sgt i32 0, %cond744
  br i1 %cmp745, label %cond.true.747, label %cond.false.748

cond.true.747:                                    ; preds = %cond.end.743
  br label %cond.end.755

cond.false.748:                                   ; preds = %cond.end.743
  %351 = load i32, i32* %maxold_y, align 4
  %352 = load i32, i32* %pres_y, align 4
  %cmp749 = icmp slt i32 %351, %352
  br i1 %cmp749, label %cond.true.751, label %cond.false.752

cond.true.751:                                    ; preds = %cond.false.748
  %353 = load i32, i32* %maxold_y, align 4
  br label %cond.end.753

cond.false.752:                                   ; preds = %cond.false.748
  %354 = load i32, i32* %pres_y, align 4
  br label %cond.end.753

cond.end.753:                                     ; preds = %cond.false.752, %cond.true.751
  %cond754 = phi i32 [ %353, %cond.true.751 ], [ %354, %cond.false.752 ]
  br label %cond.end.755

cond.end.755:                                     ; preds = %cond.end.753, %cond.true.747
  %cond756 = phi i32 [ 0, %cond.true.747 ], [ %cond754, %cond.end.753 ]
  store i32 %cond756, i32* %pres_y, align 4
  store i32 -2, i32* %x, align 4
  br label %for.cond.757

for.cond.757:                                     ; preds = %for.inc.793, %cond.end.755
  %355 = load i32, i32* %x, align 4
  %cmp758 = icmp slt i32 %355, 4
  br i1 %cmp758, label %for.body.760, label %for.end.795

for.body.760:                                     ; preds = %for.cond.757
  %356 = load i32, i32* %maxold_x, align 4
  %357 = load i32, i32* %x_pos.addr, align 4
  %358 = load i32, i32* %x, align 4
  %add761 = add nsw i32 %357, %358
  %cmp762 = icmp slt i32 %356, %add761
  br i1 %cmp762, label %cond.true.764, label %cond.false.765

cond.true.764:                                    ; preds = %for.body.760
  %359 = load i32, i32* %maxold_x, align 4
  br label %cond.end.767

cond.false.765:                                   ; preds = %for.body.760
  %360 = load i32, i32* %x_pos.addr, align 4
  %361 = load i32, i32* %x, align 4
  %add766 = add nsw i32 %360, %361
  br label %cond.end.767

cond.end.767:                                     ; preds = %cond.false.765, %cond.true.764
  %cond768 = phi i32 [ %359, %cond.true.764 ], [ %add766, %cond.false.765 ]
  %cmp769 = icmp sgt i32 0, %cond768
  br i1 %cmp769, label %cond.true.771, label %cond.false.772

cond.true.771:                                    ; preds = %cond.end.767
  br label %cond.end.781

cond.false.772:                                   ; preds = %cond.end.767
  %362 = load i32, i32* %maxold_x, align 4
  %363 = load i32, i32* %x_pos.addr, align 4
  %364 = load i32, i32* %x, align 4
  %add773 = add nsw i32 %363, %364
  %cmp774 = icmp slt i32 %362, %add773
  br i1 %cmp774, label %cond.true.776, label %cond.false.777

cond.true.776:                                    ; preds = %cond.false.772
  %365 = load i32, i32* %maxold_x, align 4
  br label %cond.end.779

cond.false.777:                                   ; preds = %cond.false.772
  %366 = load i32, i32* %x_pos.addr, align 4
  %367 = load i32, i32* %x, align 4
  %add778 = add nsw i32 %366, %367
  br label %cond.end.779

cond.end.779:                                     ; preds = %cond.false.777, %cond.true.776
  %cond780 = phi i32 [ %365, %cond.true.776 ], [ %add778, %cond.false.777 ]
  br label %cond.end.781

cond.end.781:                                     ; preds = %cond.end.779, %cond.true.771
  %cond782 = phi i32 [ 0, %cond.true.771 ], [ %cond780, %cond.end.779 ]
  store i32 %cond782, i32* %pres_x, align 4
  %368 = load i32, i32* %pres_x, align 4
  %idxprom783 = sext i32 %368 to i64
  %369 = load i32, i32* %pres_y, align 4
  %idxprom784 = sext i32 %369 to i64
  %370 = load i16**, i16*** %imY.addr, align 8
  %arrayidx785 = getelementptr inbounds i16*, i16** %370, i64 %idxprom784
  %371 = load i16*, i16** %arrayidx785, align 8
  %arrayidx786 = getelementptr inbounds i16, i16* %371, i64 %idxprom783
  %372 = load i16, i16* %arrayidx786, align 2
  %conv787 = zext i16 %372 to i32
  %373 = load i32, i32* %x, align 4
  %add788 = add nsw i32 %373, 2
  %idxprom789 = sext i32 %add788 to i64
  %arrayidx790 = getelementptr inbounds [6 x i32], [6 x i32]* @Get_Reference_Pixel.COEF, i32 0, i64 %idxprom789
  %374 = load i32, i32* %arrayidx790, align 4
  %mul791 = mul nsw i32 %conv787, %374
  %375 = load i32, i32* %result, align 4
  %add792 = add nsw i32 %375, %mul791
  store i32 %add792, i32* %result, align 4
  br label %for.inc.793

for.inc.793:                                      ; preds = %cond.end.781
  %376 = load i32, i32* %x, align 4
  %inc794 = add nsw i32 %376, 1
  store i32 %inc794, i32* %x, align 4
  br label %for.cond.757

for.end.795:                                      ; preds = %for.cond.757
  %377 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %max_imgpel_value796 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %377, i32 0, i32 155
  %378 = load i32, i32* %max_imgpel_value796, align 4
  %379 = load i32, i32* %result, align 4
  %add797 = add nsw i32 %379, 16
  %div798 = sdiv i32 %add797, 32
  %cmp799 = icmp slt i32 %378, %div798
  br i1 %cmp799, label %cond.true.801, label %cond.false.803

cond.true.801:                                    ; preds = %for.end.795
  %380 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %max_imgpel_value802 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %380, i32 0, i32 155
  %381 = load i32, i32* %max_imgpel_value802, align 4
  br label %cond.end.806

cond.false.803:                                   ; preds = %for.end.795
  %382 = load i32, i32* %result, align 4
  %add804 = add nsw i32 %382, 16
  %div805 = sdiv i32 %add804, 32
  br label %cond.end.806

cond.end.806:                                     ; preds = %cond.false.803, %cond.true.801
  %cond807 = phi i32 [ %381, %cond.true.801 ], [ %div805, %cond.false.803 ]
  %cmp808 = icmp sgt i32 0, %cond807
  br i1 %cmp808, label %cond.true.810, label %cond.false.811

cond.true.810:                                    ; preds = %cond.end.806
  br label %cond.end.824

cond.false.811:                                   ; preds = %cond.end.806
  %383 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %max_imgpel_value812 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %383, i32 0, i32 155
  %384 = load i32, i32* %max_imgpel_value812, align 4
  %385 = load i32, i32* %result, align 4
  %add813 = add nsw i32 %385, 16
  %div814 = sdiv i32 %add813, 32
  %cmp815 = icmp slt i32 %384, %div814
  br i1 %cmp815, label %cond.true.817, label %cond.false.819

cond.true.817:                                    ; preds = %cond.false.811
  %386 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %max_imgpel_value818 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %386, i32 0, i32 155
  %387 = load i32, i32* %max_imgpel_value818, align 4
  br label %cond.end.822

cond.false.819:                                   ; preds = %cond.false.811
  %388 = load i32, i32* %result, align 4
  %add820 = add nsw i32 %388, 16
  %div821 = sdiv i32 %add820, 32
  br label %cond.end.822

cond.end.822:                                     ; preds = %cond.false.819, %cond.true.817
  %cond823 = phi i32 [ %387, %cond.true.817 ], [ %div821, %cond.false.819 ]
  br label %cond.end.824

cond.end.824:                                     ; preds = %cond.end.822, %cond.true.810
  %cond825 = phi i32 [ 0, %cond.true.810 ], [ %cond823, %cond.end.822 ]
  store i32 %cond825, i32* %result1, align 4
  store i32 0, i32* %result, align 4
  %389 = load i32, i32* %dx, align 4
  %cmp826 = icmp eq i32 %389, 1
  br i1 %cmp826, label %cond.true.828, label %cond.false.829

cond.true.828:                                    ; preds = %cond.end.824
  %390 = load i32, i32* %x_pos.addr, align 4
  br label %cond.end.831

cond.false.829:                                   ; preds = %cond.end.824
  %391 = load i32, i32* %x_pos.addr, align 4
  %add830 = add nsw i32 %391, 1
  br label %cond.end.831

cond.end.831:                                     ; preds = %cond.false.829, %cond.true.828
  %cond832 = phi i32 [ %390, %cond.true.828 ], [ %add830, %cond.false.829 ]
  store i32 %cond832, i32* %pres_x, align 4
  %392 = load i32, i32* %maxold_x, align 4
  %393 = load i32, i32* %pres_x, align 4
  %cmp833 = icmp slt i32 %392, %393
  br i1 %cmp833, label %cond.true.835, label %cond.false.836

cond.true.835:                                    ; preds = %cond.end.831
  %394 = load i32, i32* %maxold_x, align 4
  br label %cond.end.837

cond.false.836:                                   ; preds = %cond.end.831
  %395 = load i32, i32* %pres_x, align 4
  br label %cond.end.837

cond.end.837:                                     ; preds = %cond.false.836, %cond.true.835
  %cond838 = phi i32 [ %394, %cond.true.835 ], [ %395, %cond.false.836 ]
  %cmp839 = icmp sgt i32 0, %cond838
  br i1 %cmp839, label %cond.true.841, label %cond.false.842

cond.true.841:                                    ; preds = %cond.end.837
  br label %cond.end.849

cond.false.842:                                   ; preds = %cond.end.837
  %396 = load i32, i32* %maxold_x, align 4
  %397 = load i32, i32* %pres_x, align 4
  %cmp843 = icmp slt i32 %396, %397
  br i1 %cmp843, label %cond.true.845, label %cond.false.846

cond.true.845:                                    ; preds = %cond.false.842
  %398 = load i32, i32* %maxold_x, align 4
  br label %cond.end.847

cond.false.846:                                   ; preds = %cond.false.842
  %399 = load i32, i32* %pres_x, align 4
  br label %cond.end.847

cond.end.847:                                     ; preds = %cond.false.846, %cond.true.845
  %cond848 = phi i32 [ %398, %cond.true.845 ], [ %399, %cond.false.846 ]
  br label %cond.end.849

cond.end.849:                                     ; preds = %cond.end.847, %cond.true.841
  %cond850 = phi i32 [ 0, %cond.true.841 ], [ %cond848, %cond.end.847 ]
  store i32 %cond850, i32* %pres_x, align 4
  store i32 -2, i32* %y, align 4
  br label %for.cond.851

for.cond.851:                                     ; preds = %for.inc.887, %cond.end.849
  %400 = load i32, i32* %y, align 4
  %cmp852 = icmp slt i32 %400, 4
  br i1 %cmp852, label %for.body.854, label %for.end.889

for.body.854:                                     ; preds = %for.cond.851
  %401 = load i32, i32* %maxold_y, align 4
  %402 = load i32, i32* %y_pos.addr, align 4
  %403 = load i32, i32* %y, align 4
  %add855 = add nsw i32 %402, %403
  %cmp856 = icmp slt i32 %401, %add855
  br i1 %cmp856, label %cond.true.858, label %cond.false.859

cond.true.858:                                    ; preds = %for.body.854
  %404 = load i32, i32* %maxold_y, align 4
  br label %cond.end.861

cond.false.859:                                   ; preds = %for.body.854
  %405 = load i32, i32* %y_pos.addr, align 4
  %406 = load i32, i32* %y, align 4
  %add860 = add nsw i32 %405, %406
  br label %cond.end.861

cond.end.861:                                     ; preds = %cond.false.859, %cond.true.858
  %cond862 = phi i32 [ %404, %cond.true.858 ], [ %add860, %cond.false.859 ]
  %cmp863 = icmp sgt i32 0, %cond862
  br i1 %cmp863, label %cond.true.865, label %cond.false.866

cond.true.865:                                    ; preds = %cond.end.861
  br label %cond.end.875

cond.false.866:                                   ; preds = %cond.end.861
  %407 = load i32, i32* %maxold_y, align 4
  %408 = load i32, i32* %y_pos.addr, align 4
  %409 = load i32, i32* %y, align 4
  %add867 = add nsw i32 %408, %409
  %cmp868 = icmp slt i32 %407, %add867
  br i1 %cmp868, label %cond.true.870, label %cond.false.871

cond.true.870:                                    ; preds = %cond.false.866
  %410 = load i32, i32* %maxold_y, align 4
  br label %cond.end.873

cond.false.871:                                   ; preds = %cond.false.866
  %411 = load i32, i32* %y_pos.addr, align 4
  %412 = load i32, i32* %y, align 4
  %add872 = add nsw i32 %411, %412
  br label %cond.end.873

cond.end.873:                                     ; preds = %cond.false.871, %cond.true.870
  %cond874 = phi i32 [ %410, %cond.true.870 ], [ %add872, %cond.false.871 ]
  br label %cond.end.875

cond.end.875:                                     ; preds = %cond.end.873, %cond.true.865
  %cond876 = phi i32 [ 0, %cond.true.865 ], [ %cond874, %cond.end.873 ]
  store i32 %cond876, i32* %pres_y, align 4
  %413 = load i32, i32* %pres_x, align 4
  %idxprom877 = sext i32 %413 to i64
  %414 = load i32, i32* %pres_y, align 4
  %idxprom878 = sext i32 %414 to i64
  %415 = load i16**, i16*** %imY.addr, align 8
  %arrayidx879 = getelementptr inbounds i16*, i16** %415, i64 %idxprom878
  %416 = load i16*, i16** %arrayidx879, align 8
  %arrayidx880 = getelementptr inbounds i16, i16* %416, i64 %idxprom877
  %417 = load i16, i16* %arrayidx880, align 2
  %conv881 = zext i16 %417 to i32
  %418 = load i32, i32* %y, align 4
  %add882 = add nsw i32 %418, 2
  %idxprom883 = sext i32 %add882 to i64
  %arrayidx884 = getelementptr inbounds [6 x i32], [6 x i32]* @Get_Reference_Pixel.COEF, i32 0, i64 %idxprom883
  %419 = load i32, i32* %arrayidx884, align 4
  %mul885 = mul nsw i32 %conv881, %419
  %420 = load i32, i32* %result, align 4
  %add886 = add nsw i32 %420, %mul885
  store i32 %add886, i32* %result, align 4
  br label %for.inc.887

for.inc.887:                                      ; preds = %cond.end.875
  %421 = load i32, i32* %y, align 4
  %inc888 = add nsw i32 %421, 1
  store i32 %inc888, i32* %y, align 4
  br label %for.cond.851

for.end.889:                                      ; preds = %for.cond.851
  %422 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %max_imgpel_value890 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %422, i32 0, i32 155
  %423 = load i32, i32* %max_imgpel_value890, align 4
  %424 = load i32, i32* %result, align 4
  %add891 = add nsw i32 %424, 16
  %div892 = sdiv i32 %add891, 32
  %cmp893 = icmp slt i32 %423, %div892
  br i1 %cmp893, label %cond.true.895, label %cond.false.897

cond.true.895:                                    ; preds = %for.end.889
  %425 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %max_imgpel_value896 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %425, i32 0, i32 155
  %426 = load i32, i32* %max_imgpel_value896, align 4
  br label %cond.end.900

cond.false.897:                                   ; preds = %for.end.889
  %427 = load i32, i32* %result, align 4
  %add898 = add nsw i32 %427, 16
  %div899 = sdiv i32 %add898, 32
  br label %cond.end.900

cond.end.900:                                     ; preds = %cond.false.897, %cond.true.895
  %cond901 = phi i32 [ %426, %cond.true.895 ], [ %div899, %cond.false.897 ]
  %cmp902 = icmp sgt i32 0, %cond901
  br i1 %cmp902, label %cond.true.904, label %cond.false.905

cond.true.904:                                    ; preds = %cond.end.900
  br label %cond.end.918

cond.false.905:                                   ; preds = %cond.end.900
  %428 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %max_imgpel_value906 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %428, i32 0, i32 155
  %429 = load i32, i32* %max_imgpel_value906, align 4
  %430 = load i32, i32* %result, align 4
  %add907 = add nsw i32 %430, 16
  %div908 = sdiv i32 %add907, 32
  %cmp909 = icmp slt i32 %429, %div908
  br i1 %cmp909, label %cond.true.911, label %cond.false.913

cond.true.911:                                    ; preds = %cond.false.905
  %431 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %max_imgpel_value912 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %431, i32 0, i32 155
  %432 = load i32, i32* %max_imgpel_value912, align 4
  br label %cond.end.916

cond.false.913:                                   ; preds = %cond.false.905
  %433 = load i32, i32* %result, align 4
  %add914 = add nsw i32 %433, 16
  %div915 = sdiv i32 %add914, 32
  br label %cond.end.916

cond.end.916:                                     ; preds = %cond.false.913, %cond.true.911
  %cond917 = phi i32 [ %432, %cond.true.911 ], [ %div915, %cond.false.913 ]
  br label %cond.end.918

cond.end.918:                                     ; preds = %cond.end.916, %cond.true.904
  %cond919 = phi i32 [ 0, %cond.true.904 ], [ %cond917, %cond.end.916 ]
  store i32 %cond919, i32* %result2, align 4
  %434 = load i32, i32* %result1, align 4
  %435 = load i32, i32* %result2, align 4
  %add920 = add nsw i32 %434, %435
  %div921 = sdiv i32 %add920, 2
  store i32 %div921, i32* %result, align 4
  br label %if.end.922

if.end.922:                                       ; preds = %cond.end.918, %if.end.730
  br label %if.end.923

if.end.923:                                       ; preds = %if.end.922, %if.end.533
  br label %if.end.924

if.end.924:                                       ; preds = %if.end.923, %if.end.332
  br label %if.end.925

if.end.925:                                       ; preds = %if.end.924, %if.end.178
  br label %if.end.926

if.end.926:                                       ; preds = %if.end.925, %cond.end.31
  %436 = load i32, i32* %result, align 4
  %conv927 = trunc i32 %436 to i8
  ret i8 %conv927
}

; Function Attrs: nounwind uwtable
define void @UpdateDecoders() #0 {
entry:
  %k = alloca i32, align 4
  store i32 0, i32* %k, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %0 = load i32, i32* %k, align 4
  %1 = load %struct.InputParameters*, %struct.InputParameters** @input, align 8
  %NoOfDecoders = getelementptr inbounds %struct.InputParameters, %struct.InputParameters* %1, i32 0, i32 97
  %2 = load i32, i32* %NoOfDecoders, align 4
  %cmp = icmp slt i32 %0, %2
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %3 = load %struct.Decoders*, %struct.Decoders** @decs, align 8
  %status_map = getelementptr inbounds %struct.Decoders, %struct.Decoders* %3, i32 0, i32 5
  %4 = load i8**, i8*** %status_map, align 8
  call void @Build_Status_Map(i8** %4)
  %5 = load i32, i32* %k, align 4
  %idxprom = sext i32 %5 to i64
  %6 = load %struct.Decoders*, %struct.Decoders** @decs, align 8
  %decY_best = getelementptr inbounds %struct.Decoders, %struct.Decoders* %6, i32 0, i32 3
  %7 = load i16***, i16**** %decY_best, align 8
  %arrayidx = getelementptr inbounds i16**, i16*** %7, i64 %idxprom
  %8 = load i16**, i16*** %arrayidx, align 8
  %9 = load %struct.Decoders*, %struct.Decoders** @decs, align 8
  %status_map1 = getelementptr inbounds %struct.Decoders, %struct.Decoders* %9, i32 0, i32 5
  %10 = load i8**, i8*** %status_map1, align 8
  %11 = load i32, i32* %k, align 4
  %idxprom2 = sext i32 %11 to i64
  %12 = load %struct.Decoders*, %struct.Decoders** @decs, align 8
  %decref = getelementptr inbounds %struct.Decoders, %struct.Decoders* %12, i32 0, i32 2
  %13 = load i16****, i16***** %decref, align 8
  %arrayidx3 = getelementptr inbounds i16***, i16**** %13, i64 %idxprom2
  %14 = load i16***, i16**** %arrayidx3, align 8
  call void @Error_Concealment(i16** %8, i8** %10, i16*** %14)
  %15 = load i32, i32* %k, align 4
  %idxprom4 = sext i32 %15 to i64
  %16 = load %struct.Decoders*, %struct.Decoders** @decs, align 8
  %decY_best5 = getelementptr inbounds %struct.Decoders, %struct.Decoders* %16, i32 0, i32 3
  %17 = load i16***, i16**** %decY_best5, align 8
  %arrayidx6 = getelementptr inbounds i16**, i16*** %17, i64 %idxprom4
  %18 = load i16**, i16*** %arrayidx6, align 8
  %19 = load i32, i32* %k, align 4
  %idxprom7 = sext i32 %19 to i64
  %20 = load %struct.Decoders*, %struct.Decoders** @decs, align 8
  %decref8 = getelementptr inbounds %struct.Decoders, %struct.Decoders* %20, i32 0, i32 2
  %21 = load i16****, i16***** %decref8, align 8
  %arrayidx9 = getelementptr inbounds i16***, i16**** %21, i64 %idxprom7
  %22 = load i16***, i16**** %arrayidx9, align 8
  call void @DecOneForthPix(i16** %18, i16*** %22)
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %23 = load i32, i32* %k, align 4
  %inc = add nsw i32 %23, 1
  store i32 %inc, i32* %k, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  ret void
}

; Function Attrs: nounwind uwtable
define void @Build_Status_Map(i8** %s_map) #0 {
entry:
  %s_map.addr = alloca i8**, align 8
  %i = alloca i32, align 4
  %j = alloca i32, align 4
  %slice = alloca i32, align 4
  %mb = alloca i32, align 4
  %jj = alloca i32, align 4
  %ii = alloca i32, align 4
  %packet_lost = alloca i32, align 4
  store i8** %s_map, i8*** %s_map.addr, align 8
  store i32 -1, i32* %slice, align 4
  store i32 0, i32* %mb, align 4
  store i32 0, i32* %packet_lost, align 4
  %0 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %height = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %0, i32 0, i32 15
  %1 = load i32, i32* %height, align 4
  %div = sdiv i32 %1, 16
  store i32 %div, i32* %jj, align 4
  %2 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %width = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %2, i32 0, i32 13
  %3 = load i32, i32* %width, align 4
  %div1 = sdiv i32 %3, 16
  store i32 %div1, i32* %ii, align 4
  store i32 0, i32* %j, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc.53, %entry
  %4 = load i32, i32* %j, align 4
  %5 = load i32, i32* %jj, align 4
  %cmp = icmp slt i32 %4, %5
  br i1 %cmp, label %for.body, label %for.end.55

for.body:                                         ; preds = %for.cond
  store i32 0, i32* %i, align 4
  br label %for.cond.2

for.cond.2:                                       ; preds = %for.inc, %for.body
  %6 = load i32, i32* %i, align 4
  %7 = load i32, i32* %ii, align 4
  %cmp3 = icmp slt i32 %6, %7
  br i1 %cmp3, label %for.body.4, label %for.end

for.body.4:                                       ; preds = %for.cond.2
  %8 = load %struct.InputParameters*, %struct.InputParameters** @input, align 8
  %slice_mode = getelementptr inbounds %struct.InputParameters, %struct.InputParameters* %8, i32 0, i32 22
  %9 = load i32, i32* %slice_mode, align 4
  %tobool = icmp ne i32 %9, 0
  br i1 %tobool, label %lor.lhs.false, label %if.then

lor.lhs.false:                                    ; preds = %for.body.4
  %10 = load i32, i32* %mb, align 4
  %idxprom = sext i32 %10 to i64
  %11 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %mb_data = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %11, i32 0, i32 51
  %12 = load %struct.macroblock*, %struct.macroblock** %mb_data, align 8
  %arrayidx = getelementptr inbounds %struct.macroblock, %struct.macroblock* %12, i64 %idxprom
  %slice_nr = getelementptr inbounds %struct.macroblock, %struct.macroblock* %arrayidx, i32 0, i32 1
  %13 = load i32, i32* %slice_nr, align 4
  %14 = load i32, i32* %slice, align 4
  %cmp5 = icmp ne i32 %13, %14
  br i1 %cmp5, label %if.then, label %if.end.30

if.then:                                          ; preds = %lor.lhs.false, %for.body.4
  store i32 0, i32* %packet_lost, align 4
  %call = call double @spec_rand()
  %mul = fmul double %call, 0x41DFFFFFFFC00000
  %div6 = fdiv double %mul, 0x41DFFFFFFFC00000
  %mul7 = fmul double %div6, 1.000000e+02
  %15 = load %struct.InputParameters*, %struct.InputParameters** @input, align 8
  %LossRateC = getelementptr inbounds %struct.InputParameters, %struct.InputParameters* %15, i32 0, i32 96
  %16 = load i32, i32* %LossRateC, align 4
  %conv = sitofp i32 %16 to double
  %cmp8 = fcmp olt double %mul7, %conv
  br i1 %cmp8, label %if.then.10, label %if.end

if.then.10:                                       ; preds = %if.then
  %17 = load i32, i32* %packet_lost, align 4
  %add = add nsw i32 %17, 3
  store i32 %add, i32* %packet_lost, align 4
  br label %if.end

if.end:                                           ; preds = %if.then.10, %if.then
  %call11 = call double @spec_rand()
  %mul12 = fmul double %call11, 0x41DFFFFFFFC00000
  %div13 = fdiv double %mul12, 0x41DFFFFFFFC00000
  %mul14 = fmul double %div13, 1.000000e+02
  %18 = load %struct.InputParameters*, %struct.InputParameters** @input, align 8
  %LossRateB = getelementptr inbounds %struct.InputParameters, %struct.InputParameters* %18, i32 0, i32 95
  %19 = load i32, i32* %LossRateB, align 4
  %conv15 = sitofp i32 %19 to double
  %cmp16 = fcmp olt double %mul14, %conv15
  br i1 %cmp16, label %if.then.18, label %if.end.20

if.then.18:                                       ; preds = %if.end
  %20 = load i32, i32* %packet_lost, align 4
  %add19 = add nsw i32 %20, 2
  store i32 %add19, i32* %packet_lost, align 4
  br label %if.end.20

if.end.20:                                        ; preds = %if.then.18, %if.end
  %call21 = call double @spec_rand()
  %mul22 = fmul double %call21, 0x41DFFFFFFFC00000
  %div23 = fdiv double %mul22, 0x41DFFFFFFFC00000
  %mul24 = fmul double %div23, 1.000000e+02
  %21 = load %struct.InputParameters*, %struct.InputParameters** @input, align 8
  %LossRateA = getelementptr inbounds %struct.InputParameters, %struct.InputParameters* %21, i32 0, i32 94
  %22 = load i32, i32* %LossRateA, align 4
  %conv25 = sitofp i32 %22 to double
  %cmp26 = fcmp olt double %mul24, %conv25
  br i1 %cmp26, label %if.then.28, label %if.end.29

if.then.28:                                       ; preds = %if.end.20
  store i32 1, i32* %packet_lost, align 4
  br label %if.end.29

if.end.29:                                        ; preds = %if.then.28, %if.end.20
  %23 = load i32, i32* %slice, align 4
  %inc = add nsw i32 %23, 1
  store i32 %inc, i32* %slice, align 4
  br label %if.end.30

if.end.30:                                        ; preds = %if.end.29, %lor.lhs.false
  %24 = load i32, i32* %packet_lost, align 4
  %tobool31 = icmp ne i32 %24, 0
  br i1 %tobool31, label %if.else, label %if.then.32

if.then.32:                                       ; preds = %if.end.30
  %25 = load i32, i32* %i, align 4
  %idxprom33 = sext i32 %25 to i64
  %26 = load i32, i32* %j, align 4
  %idxprom34 = sext i32 %26 to i64
  %27 = load i8**, i8*** %s_map.addr, align 8
  %arrayidx35 = getelementptr inbounds i8*, i8** %27, i64 %idxprom34
  %28 = load i8*, i8** %arrayidx35, align 8
  %arrayidx36 = getelementptr inbounds i8, i8* %28, i64 %idxprom33
  store i8 0, i8* %arrayidx36, align 1
  br label %if.end.50

if.else:                                          ; preds = %if.end.30
  %29 = load i32, i32* %packet_lost, align 4
  %conv37 = trunc i32 %29 to i8
  %30 = load i32, i32* %i, align 4
  %idxprom38 = sext i32 %30 to i64
  %31 = load i32, i32* %j, align 4
  %idxprom39 = sext i32 %31 to i64
  %32 = load i8**, i8*** %s_map.addr, align 8
  %arrayidx40 = getelementptr inbounds i8*, i8** %32, i64 %idxprom39
  %33 = load i8*, i8** %arrayidx40, align 8
  %arrayidx41 = getelementptr inbounds i8, i8* %33, i64 %idxprom38
  store i8 %conv37, i8* %arrayidx41, align 1
  %34 = load %struct.InputParameters*, %struct.InputParameters** @input, align 8
  %partition_mode = getelementptr inbounds %struct.InputParameters, %struct.InputParameters* %34, i32 0, i32 61
  %35 = load i32, i32* %partition_mode, align 4
  %cmp42 = icmp eq i32 %35, 0
  br i1 %cmp42, label %if.then.44, label %if.end.49

if.then.44:                                       ; preds = %if.else
  %36 = load i32, i32* %i, align 4
  %idxprom45 = sext i32 %36 to i64
  %37 = load i32, i32* %j, align 4
  %idxprom46 = sext i32 %37 to i64
  %38 = load i8**, i8*** %s_map.addr, align 8
  %arrayidx47 = getelementptr inbounds i8*, i8** %38, i64 %idxprom46
  %39 = load i8*, i8** %arrayidx47, align 8
  %arrayidx48 = getelementptr inbounds i8, i8* %39, i64 %idxprom45
  store i8 1, i8* %arrayidx48, align 1
  br label %if.end.49

if.end.49:                                        ; preds = %if.then.44, %if.else
  br label %if.end.50

if.end.50:                                        ; preds = %if.end.49, %if.then.32
  %40 = load i32, i32* %mb, align 4
  %inc51 = add nsw i32 %40, 1
  store i32 %inc51, i32* %mb, align 4
  br label %for.inc

for.inc:                                          ; preds = %if.end.50
  %41 = load i32, i32* %i, align 4
  %inc52 = add nsw i32 %41, 1
  store i32 %inc52, i32* %i, align 4
  br label %for.cond.2

for.end:                                          ; preds = %for.cond.2
  br label %for.inc.53

for.inc.53:                                       ; preds = %for.end
  %42 = load i32, i32* %j, align 4
  %inc54 = add nsw i32 %42, 1
  store i32 %inc54, i32* %j, align 4
  br label %for.cond

for.end.55:                                       ; preds = %for.cond
  ret void
}

; Function Attrs: nounwind uwtable
define void @Error_Concealment(i16** %inY, i8** %s_map, i16*** %refY) #0 {
entry:
  %inY.addr = alloca i16**, align 8
  %s_map.addr = alloca i8**, align 8
  %refY.addr = alloca i16***, align 8
  %mb_y = alloca i32, align 4
  %mb_x = alloca i32, align 4
  %mb_h = alloca i32, align 4
  %mb_w = alloca i32, align 4
  store i16** %inY, i16*** %inY.addr, align 8
  store i8** %s_map, i8*** %s_map.addr, align 8
  store i16*** %refY, i16**** %refY.addr, align 8
  %0 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %height = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %0, i32 0, i32 15
  %1 = load i32, i32* %height, align 4
  %div = sdiv i32 %1, 16
  store i32 %div, i32* %mb_h, align 4
  %2 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %width = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %2, i32 0, i32 13
  %3 = load i32, i32* %width, align 4
  %div1 = sdiv i32 %3, 16
  store i32 %div1, i32* %mb_w, align 4
  store i32 0, i32* %mb_y, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc.7, %entry
  %4 = load i32, i32* %mb_y, align 4
  %5 = load i32, i32* %mb_h, align 4
  %cmp = icmp slt i32 %4, %5
  br i1 %cmp, label %for.body, label %for.end.9

for.body:                                         ; preds = %for.cond
  store i32 0, i32* %mb_x, align 4
  br label %for.cond.2

for.cond.2:                                       ; preds = %for.inc, %for.body
  %6 = load i32, i32* %mb_x, align 4
  %7 = load i32, i32* %mb_w, align 4
  %cmp3 = icmp slt i32 %6, %7
  br i1 %cmp3, label %for.body.4, label %for.end

for.body.4:                                       ; preds = %for.cond.2
  %8 = load i32, i32* %mb_x, align 4
  %idxprom = sext i32 %8 to i64
  %9 = load i32, i32* %mb_y, align 4
  %idxprom5 = sext i32 %9 to i64
  %10 = load i8**, i8*** %s_map.addr, align 8
  %arrayidx = getelementptr inbounds i8*, i8** %10, i64 %idxprom5
  %11 = load i8*, i8** %arrayidx, align 8
  %arrayidx6 = getelementptr inbounds i8, i8* %11, i64 %idxprom
  %12 = load i8, i8* %arrayidx6, align 1
  %tobool = icmp ne i8 %12, 0
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %for.body.4
  %13 = load i16**, i16*** %inY.addr, align 8
  %14 = load i32, i32* %mb_y, align 4
  %15 = load i32, i32* %mb_x, align 4
  %16 = load i16***, i16**** %refY.addr, align 8
  %17 = load i8**, i8*** %s_map.addr, align 8
  call void @Conceal_Error(i16** %13, i32 %14, i32 %15, i16*** %16, i8** %17)
  br label %if.end

if.end:                                           ; preds = %if.then, %for.body.4
  br label %for.inc

for.inc:                                          ; preds = %if.end
  %18 = load i32, i32* %mb_x, align 4
  %inc = add nsw i32 %18, 1
  store i32 %inc, i32* %mb_x, align 4
  br label %for.cond.2

for.end:                                          ; preds = %for.cond.2
  br label %for.inc.7

for.inc.7:                                        ; preds = %for.end
  %19 = load i32, i32* %mb_y, align 4
  %inc8 = add nsw i32 %19, 1
  store i32 %inc8, i32* %mb_y, align 4
  br label %for.cond

for.end.9:                                        ; preds = %for.cond
  ret void
}

; Function Attrs: nounwind uwtable
define void @DecOneForthPix(i16** %dY, i16*** %dref) #0 {
entry:
  %dY.addr = alloca i16**, align 8
  %dref.addr = alloca i16***, align 8
  %j = alloca i32, align 4
  %ref = alloca i32, align 4
  store i16** %dY, i16*** %dY.addr, align 8
  store i16*** %dref, i16**** %dref.addr, align 8
  %0 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %number = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %0, i32 0, i32 0
  %1 = load i32, i32* %number, align 4
  %2 = load i32, i32* @start_frame_no_in_this_IGOP, align 4
  %sub = sub nsw i32 %1, %2
  %3 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %buf_cycle = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %3, i32 0, i32 84
  %4 = load i32, i32* %buf_cycle, align 4
  %rem = srem i32 %sub, %4
  store i32 %rem, i32* %ref, align 4
  store i32 0, i32* %j, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %5 = load i32, i32* %j, align 4
  %6 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %height = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %6, i32 0, i32 15
  %7 = load i32, i32* %height, align 4
  %cmp = icmp slt i32 %5, %7
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %8 = load i32, i32* %j, align 4
  %idxprom = sext i32 %8 to i64
  %9 = load i32, i32* %ref, align 4
  %idxprom1 = sext i32 %9 to i64
  %10 = load i16***, i16**** %dref.addr, align 8
  %arrayidx = getelementptr inbounds i16**, i16*** %10, i64 %idxprom1
  %11 = load i16**, i16*** %arrayidx, align 8
  %arrayidx2 = getelementptr inbounds i16*, i16** %11, i64 %idxprom
  %12 = load i16*, i16** %arrayidx2, align 8
  %13 = bitcast i16* %12 to i8*
  %14 = load i32, i32* %j, align 4
  %idxprom3 = sext i32 %14 to i64
  %15 = load i16**, i16*** %dY.addr, align 8
  %arrayidx4 = getelementptr inbounds i16*, i16** %15, i64 %idxprom3
  %16 = load i16*, i16** %arrayidx4, align 8
  %17 = bitcast i16* %16 to i8*
  %18 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %width = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %18, i32 0, i32 13
  %19 = load i32, i32* %width, align 4
  %conv = sext i32 %19 to i64
  %mul = mul i64 %conv, 2
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %13, i8* %17, i64 %mul, i32 2, i1 false)
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %20 = load i32, i32* %j, align 4
  %inc = add nsw i32 %20, 1
  store i32 %inc, i32* %j, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  ret void
}

; Function Attrs: nounwind
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* nocapture, i8* nocapture readonly, i64, i32, i1) #1

; Function Attrs: nounwind uwtable
define void @compute_residue_b8block(i32 %b8block, i32 %i16mode) #0 {
entry:
  %b8block.addr = alloca i32, align 4
  %i16mode.addr = alloca i32, align 4
  %i = alloca i32, align 4
  %j = alloca i32, align 4
  %i0 = alloca i32, align 4
  %i1 = alloca i32, align 4
  %j0 = alloca i32, align 4
  %j1 = alloca i32, align 4
  store i32 %b8block, i32* %b8block.addr, align 4
  store i32 %i16mode, i32* %i16mode.addr, align 4
  %0 = load i32, i32* %b8block.addr, align 4
  %rem = srem i32 %0, 2
  %shl = shl i32 %rem, 3
  store i32 %shl, i32* %i0, align 4
  %1 = load i32, i32* %i0, align 4
  %add = add nsw i32 %1, 8
  store i32 %add, i32* %i1, align 4
  %2 = load i32, i32* %b8block.addr, align 4
  %div = sdiv i32 %2, 2
  %shl1 = shl i32 %div, 3
  store i32 %shl1, i32* %j0, align 4
  %3 = load i32, i32* %j0, align 4
  %add2 = add nsw i32 %3, 8
  store i32 %add2, i32* %j1, align 4
  %4 = load i32, i32* %i16mode.addr, align 4
  %cmp = icmp sge i32 %4, 0
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %5 = load i32, i32* %i0, align 4
  store i32 %5, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc.22, %if.then
  %6 = load i32, i32* %i, align 4
  %7 = load i32, i32* %i1, align 4
  %cmp3 = icmp slt i32 %6, %7
  br i1 %cmp3, label %for.body, label %for.end.24

for.body:                                         ; preds = %for.cond
  %8 = load i32, i32* %j0, align 4
  store i32 %8, i32* %j, align 4
  br label %for.cond.4

for.cond.4:                                       ; preds = %for.inc, %for.body
  %9 = load i32, i32* %j, align 4
  %10 = load i32, i32* %j1, align 4
  %cmp5 = icmp slt i32 %9, %10
  br i1 %cmp5, label %for.body.6, label %for.end

for.body.6:                                       ; preds = %for.cond.4
  %11 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %pix_x = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %11, i32 0, i32 33
  %12 = load i32, i32* %pix_x, align 4
  %13 = load i32, i32* %i, align 4
  %add7 = add nsw i32 %12, %13
  %idxprom = sext i32 %add7 to i64
  %14 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %pix_y = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %14, i32 0, i32 34
  %15 = load i32, i32* %pix_y, align 4
  %16 = load i32, i32* %j, align 4
  %add8 = add nsw i32 %15, %16
  %idxprom9 = sext i32 %add8 to i64
  %17 = load %struct.storable_picture*, %struct.storable_picture** @enc_picture, align 8
  %imgY = getelementptr inbounds %struct.storable_picture, %struct.storable_picture* %17, i32 0, i32 25
  %18 = load i16**, i16*** %imgY, align 8
  %arrayidx = getelementptr inbounds i16*, i16** %18, i64 %idxprom9
  %19 = load i16*, i16** %arrayidx, align 8
  %arrayidx10 = getelementptr inbounds i16, i16* %19, i64 %idxprom
  %20 = load i16, i16* %arrayidx10, align 2
  %conv = zext i16 %20 to i32
  %21 = load i32, i32* %i, align 4
  %idxprom11 = sext i32 %21 to i64
  %22 = load i32, i32* %j, align 4
  %idxprom12 = sext i32 %22 to i64
  %23 = load i32, i32* %i16mode.addr, align 4
  %idxprom13 = sext i32 %23 to i64
  %24 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %mprr_2 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %24, i32 0, i32 42
  %arrayidx14 = getelementptr inbounds [5 x [16 x [16 x i16]]], [5 x [16 x [16 x i16]]]* %mprr_2, i32 0, i64 %idxprom13
  %arrayidx15 = getelementptr inbounds [16 x [16 x i16]], [16 x [16 x i16]]* %arrayidx14, i32 0, i64 %idxprom12
  %arrayidx16 = getelementptr inbounds [16 x i16], [16 x i16]* %arrayidx15, i32 0, i64 %idxprom11
  %25 = load i16, i16* %arrayidx16, align 2
  %conv17 = zext i16 %25 to i32
  %sub = sub nsw i32 %conv, %conv17
  %26 = load i32, i32* %i, align 4
  %idxprom18 = sext i32 %26 to i64
  %27 = load i32, i32* %j, align 4
  %idxprom19 = sext i32 %27 to i64
  %28 = load %struct.Decoders*, %struct.Decoders** @decs, align 8
  %resY = getelementptr inbounds %struct.Decoders, %struct.Decoders* %28, i32 0, i32 0
  %29 = load i32**, i32*** %resY, align 8
  %arrayidx20 = getelementptr inbounds i32*, i32** %29, i64 %idxprom19
  %30 = load i32*, i32** %arrayidx20, align 8
  %arrayidx21 = getelementptr inbounds i32, i32* %30, i64 %idxprom18
  store i32 %sub, i32* %arrayidx21, align 4
  br label %for.inc

for.inc:                                          ; preds = %for.body.6
  %31 = load i32, i32* %j, align 4
  %inc = add nsw i32 %31, 1
  store i32 %inc, i32* %j, align 4
  br label %for.cond.4

for.end:                                          ; preds = %for.cond.4
  br label %for.inc.22

for.inc.22:                                       ; preds = %for.end
  %32 = load i32, i32* %i, align 4
  %inc23 = add nsw i32 %32, 1
  store i32 %inc23, i32* %i, align 4
  br label %for.cond

for.end.24:                                       ; preds = %for.cond
  br label %if.end

if.else:                                          ; preds = %entry
  %33 = load i32, i32* %i0, align 4
  store i32 %33, i32* %i, align 4
  br label %for.cond.25

for.cond.25:                                      ; preds = %for.inc.57, %if.else
  %34 = load i32, i32* %i, align 4
  %35 = load i32, i32* %i1, align 4
  %cmp26 = icmp slt i32 %34, %35
  br i1 %cmp26, label %for.body.28, label %for.end.59

for.body.28:                                      ; preds = %for.cond.25
  %36 = load i32, i32* %j0, align 4
  store i32 %36, i32* %j, align 4
  br label %for.cond.29

for.cond.29:                                      ; preds = %for.inc.54, %for.body.28
  %37 = load i32, i32* %j, align 4
  %38 = load i32, i32* %j1, align 4
  %cmp30 = icmp slt i32 %37, %38
  br i1 %cmp30, label %for.body.32, label %for.end.56

for.body.32:                                      ; preds = %for.cond.29
  %39 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %pix_x33 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %39, i32 0, i32 33
  %40 = load i32, i32* %pix_x33, align 4
  %41 = load i32, i32* %i, align 4
  %add34 = add nsw i32 %40, %41
  %idxprom35 = sext i32 %add34 to i64
  %42 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %pix_y36 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %42, i32 0, i32 34
  %43 = load i32, i32* %pix_y36, align 4
  %44 = load i32, i32* %j, align 4
  %add37 = add nsw i32 %43, %44
  %idxprom38 = sext i32 %add37 to i64
  %45 = load %struct.storable_picture*, %struct.storable_picture** @enc_picture, align 8
  %imgY39 = getelementptr inbounds %struct.storable_picture, %struct.storable_picture* %45, i32 0, i32 25
  %46 = load i16**, i16*** %imgY39, align 8
  %arrayidx40 = getelementptr inbounds i16*, i16** %46, i64 %idxprom38
  %47 = load i16*, i16** %arrayidx40, align 8
  %arrayidx41 = getelementptr inbounds i16, i16* %47, i64 %idxprom35
  %48 = load i16, i16* %arrayidx41, align 2
  %conv42 = zext i16 %48 to i32
  %49 = load i32, i32* %j, align 4
  %idxprom43 = sext i32 %49 to i64
  %50 = load i32, i32* %i, align 4
  %idxprom44 = sext i32 %50 to i64
  %51 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %mpr = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %51, i32 0, i32 45
  %arrayidx45 = getelementptr inbounds [16 x [16 x i16]], [16 x [16 x i16]]* %mpr, i32 0, i64 %idxprom44
  %arrayidx46 = getelementptr inbounds [16 x i16], [16 x i16]* %arrayidx45, i32 0, i64 %idxprom43
  %52 = load i16, i16* %arrayidx46, align 2
  %conv47 = zext i16 %52 to i32
  %sub48 = sub nsw i32 %conv42, %conv47
  %53 = load i32, i32* %i, align 4
  %idxprom49 = sext i32 %53 to i64
  %54 = load i32, i32* %j, align 4
  %idxprom50 = sext i32 %54 to i64
  %55 = load %struct.Decoders*, %struct.Decoders** @decs, align 8
  %resY51 = getelementptr inbounds %struct.Decoders, %struct.Decoders* %55, i32 0, i32 0
  %56 = load i32**, i32*** %resY51, align 8
  %arrayidx52 = getelementptr inbounds i32*, i32** %56, i64 %idxprom50
  %57 = load i32*, i32** %arrayidx52, align 8
  %arrayidx53 = getelementptr inbounds i32, i32* %57, i64 %idxprom49
  store i32 %sub48, i32* %arrayidx53, align 4
  br label %for.inc.54

for.inc.54:                                       ; preds = %for.body.32
  %58 = load i32, i32* %j, align 4
  %inc55 = add nsw i32 %58, 1
  store i32 %inc55, i32* %j, align 4
  br label %for.cond.29

for.end.56:                                       ; preds = %for.cond.29
  br label %for.inc.57

for.inc.57:                                       ; preds = %for.end.56
  %59 = load i32, i32* %i, align 4
  %inc58 = add nsw i32 %59, 1
  store i32 %inc58, i32* %i, align 4
  br label %for.cond.25

for.end.59:                                       ; preds = %for.cond.25
  br label %if.end

if.end:                                           ; preds = %for.end.59, %for.end.24
  ret void
}

; Function Attrs: nounwind uwtable
define void @compute_residue_mb(i32 %i16mode) #0 {
entry:
  %i16mode.addr = alloca i32, align 4
  store i32 %i16mode, i32* %i16mode.addr, align 4
  %0 = load i32, i32* %i16mode.addr, align 4
  call void @compute_residue_b8block(i32 0, i32 %0)
  %1 = load i32, i32* %i16mode.addr, align 4
  call void @compute_residue_b8block(i32 1, i32 %1)
  %2 = load i32, i32* %i16mode.addr, align 4
  call void @compute_residue_b8block(i32 2, i32 %2)
  %3 = load i32, i32* %i16mode.addr, align 4
  call void @compute_residue_b8block(i32 3, i32 %3)
  ret void
}

declare double @spec_rand() #2

; Function Attrs: nounwind uwtable
define void @Conceal_Error(i16** %inY, i32 %mb_y, i32 %mb_x, i16*** %refY, i8** %s_map) #0 {
entry:
  %inY.addr = alloca i16**, align 8
  %mb_y.addr = alloca i32, align 4
  %mb_x.addr = alloca i32, align 4
  %refY.addr = alloca i16***, align 8
  %s_map.addr = alloca i8**, align 8
  %i = alloca i32, align 4
  %j = alloca i32, align 4
  %block_x = alloca i32, align 4
  %block_y = alloca i32, align 4
  %ref_inx = alloca i32, align 4
  %pos_y = alloca i32, align 4
  %pos_x = alloca i32, align 4
  %mv = alloca [2 x [4 x [4 x i32]]], align 16
  %resY = alloca [16 x [16 x i32]], align 16
  %copy = alloca i32, align 4
  %inter = alloca i32, align 4
  %tmp_mv = alloca i16***, align 8
  store i16** %inY, i16*** %inY.addr, align 8
  store i32 %mb_y, i32* %mb_y.addr, align 4
  store i32 %mb_x, i32* %mb_x.addr, align 4
  store i16*** %refY, i16**** %refY.addr, align 8
  store i8** %s_map, i8*** %s_map.addr, align 8
  %0 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %number = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %0, i32 0, i32 0
  %1 = load i32, i32* %number, align 4
  %2 = load i32, i32* @start_frame_no_in_this_IGOP, align 4
  %sub = sub nsw i32 %1, %2
  %sub1 = sub nsw i32 %sub, 1
  %3 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %num_ref_frames = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %3, i32 0, i32 8
  %4 = load i32, i32* %num_ref_frames, align 4
  %rem = srem i32 %sub1, %4
  store i32 %rem, i32* %ref_inx, align 4
  %5 = load i32, i32* %mb_y.addr, align 4
  %mul = mul nsw i32 %5, 16
  store i32 %mul, i32* %pos_y, align 4
  %6 = load i32, i32* %mb_x.addr, align 4
  %mul2 = mul nsw i32 %6, 16
  store i32 %mul2, i32* %pos_x, align 4
  %7 = load i32, i32* %mb_y.addr, align 4
  %idxprom = sext i32 %7 to i64
  %8 = load i32, i32* %mb_x.addr, align 4
  %idxprom3 = sext i32 %8 to i64
  %9 = load %struct.Decoders*, %struct.Decoders** @decs, align 8
  %dec_mb_mode = getelementptr inbounds %struct.Decoders, %struct.Decoders* %9, i32 0, i32 6
  %10 = load i8**, i8*** %dec_mb_mode, align 8
  %arrayidx = getelementptr inbounds i8*, i8** %10, i64 %idxprom3
  %11 = load i8*, i8** %arrayidx, align 8
  %arrayidx4 = getelementptr inbounds i8, i8* %11, i64 %idxprom
  %12 = load i8, i8* %arrayidx4, align 1
  %conv = zext i8 %12 to i32
  %cmp = icmp eq i32 %conv, 0
  br i1 %cmp, label %land.rhs, label %land.end.14

land.rhs:                                         ; preds = %entry
  %13 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %type = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %13, i32 0, i32 6
  %14 = load i32, i32* %type, align 4
  %cmp6 = icmp eq i32 %14, 0
  br i1 %cmp6, label %lor.end, label %lor.rhs

lor.rhs:                                          ; preds = %land.rhs
  %15 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %type8 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %15, i32 0, i32 6
  %16 = load i32, i32* %type8, align 4
  %cmp9 = icmp eq i32 %16, 1
  br i1 %cmp9, label %land.rhs.11, label %land.end

land.rhs.11:                                      ; preds = %lor.rhs
  %17 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %nal_reference_idc = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %17, i32 0, i32 113
  %18 = load i32, i32* %nal_reference_idc, align 4
  %cmp12 = icmp sgt i32 %18, 0
  br label %land.end

land.end:                                         ; preds = %land.rhs.11, %lor.rhs
  %19 = phi i1 [ false, %lor.rhs ], [ %cmp12, %land.rhs.11 ]
  br label %lor.end

lor.end:                                          ; preds = %land.end, %land.rhs
  %20 = phi i1 [ true, %land.rhs ], [ %19, %land.end ]
  br label %land.end.14

land.end.14:                                      ; preds = %lor.end, %entry
  %21 = phi i1 [ false, %entry ], [ %20, %lor.end ]
  %land.ext = zext i1 %21 to i32
  store i32 %land.ext, i32* %copy, align 4
  %22 = load i32, i32* %mb_y.addr, align 4
  %idxprom15 = sext i32 %22 to i64
  %23 = load i32, i32* %mb_x.addr, align 4
  %idxprom16 = sext i32 %23 to i64
  %24 = load %struct.Decoders*, %struct.Decoders** @decs, align 8
  %dec_mb_mode17 = getelementptr inbounds %struct.Decoders, %struct.Decoders* %24, i32 0, i32 6
  %25 = load i8**, i8*** %dec_mb_mode17, align 8
  %arrayidx18 = getelementptr inbounds i8*, i8** %25, i64 %idxprom16
  %26 = load i8*, i8** %arrayidx18, align 8
  %arrayidx19 = getelementptr inbounds i8, i8* %26, i64 %idxprom15
  %27 = load i8, i8* %arrayidx19, align 1
  %conv20 = zext i8 %27 to i32
  %cmp21 = icmp sge i32 %conv20, 1
  br i1 %cmp21, label %land.lhs.true, label %lor.lhs.false

land.lhs.true:                                    ; preds = %land.end.14
  %28 = load i32, i32* %mb_y.addr, align 4
  %idxprom23 = sext i32 %28 to i64
  %29 = load i32, i32* %mb_x.addr, align 4
  %idxprom24 = sext i32 %29 to i64
  %30 = load %struct.Decoders*, %struct.Decoders** @decs, align 8
  %dec_mb_mode25 = getelementptr inbounds %struct.Decoders, %struct.Decoders* %30, i32 0, i32 6
  %31 = load i8**, i8*** %dec_mb_mode25, align 8
  %arrayidx26 = getelementptr inbounds i8*, i8** %31, i64 %idxprom24
  %32 = load i8*, i8** %arrayidx26, align 8
  %arrayidx27 = getelementptr inbounds i8, i8* %32, i64 %idxprom23
  %33 = load i8, i8* %arrayidx27, align 1
  %conv28 = zext i8 %33 to i32
  %cmp29 = icmp sle i32 %conv28, 3
  br i1 %cmp29, label %land.rhs.39, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %land.lhs.true, %land.end.14
  %34 = load i32, i32* %mb_y.addr, align 4
  %idxprom31 = sext i32 %34 to i64
  %35 = load i32, i32* %mb_x.addr, align 4
  %idxprom32 = sext i32 %35 to i64
  %36 = load %struct.Decoders*, %struct.Decoders** @decs, align 8
  %dec_mb_mode33 = getelementptr inbounds %struct.Decoders, %struct.Decoders* %36, i32 0, i32 6
  %37 = load i8**, i8*** %dec_mb_mode33, align 8
  %arrayidx34 = getelementptr inbounds i8*, i8** %37, i64 %idxprom32
  %38 = load i8*, i8** %arrayidx34, align 8
  %arrayidx35 = getelementptr inbounds i8, i8* %38, i64 %idxprom31
  %39 = load i8, i8* %arrayidx35, align 1
  %conv36 = zext i8 %39 to i32
  %cmp37 = icmp eq i32 %conv36, 8
  br i1 %cmp37, label %land.rhs.39, label %land.end.54

land.rhs.39:                                      ; preds = %lor.lhs.false, %land.lhs.true
  %40 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %type40 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %40, i32 0, i32 6
  %41 = load i32, i32* %type40, align 4
  %cmp41 = icmp eq i32 %41, 0
  br i1 %cmp41, label %lor.end.53, label %lor.rhs.43

lor.rhs.43:                                       ; preds = %land.rhs.39
  %42 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %type44 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %42, i32 0, i32 6
  %43 = load i32, i32* %type44, align 4
  %cmp45 = icmp eq i32 %43, 1
  br i1 %cmp45, label %land.rhs.47, label %land.end.51

land.rhs.47:                                      ; preds = %lor.rhs.43
  %44 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %nal_reference_idc48 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %44, i32 0, i32 113
  %45 = load i32, i32* %nal_reference_idc48, align 4
  %cmp49 = icmp sgt i32 %45, 0
  br label %land.end.51

land.end.51:                                      ; preds = %land.rhs.47, %lor.rhs.43
  %46 = phi i1 [ false, %lor.rhs.43 ], [ %cmp49, %land.rhs.47 ]
  br label %lor.end.53

lor.end.53:                                       ; preds = %land.end.51, %land.rhs.39
  %47 = phi i1 [ true, %land.rhs.39 ], [ %46, %land.end.51 ]
  br label %land.end.54

land.end.54:                                      ; preds = %lor.end.53, %lor.lhs.false
  %48 = phi i1 [ false, %lor.lhs.false ], [ %47, %lor.end.53 ]
  %land.ext55 = zext i1 %48 to i32
  store i32 %land.ext55, i32* %inter, align 4
  %49 = load %struct.storable_picture*, %struct.storable_picture** @enc_picture, align 8
  %mv56 = getelementptr inbounds %struct.storable_picture, %struct.storable_picture* %49, i32 0, i32 35
  %50 = load i16****, i16***** %mv56, align 8
  %arrayidx57 = getelementptr inbounds i16***, i16**** %50, i64 0
  %51 = load i16***, i16**** %arrayidx57, align 8
  store i16*** %51, i16**** %tmp_mv, align 8
  %52 = load i32, i32* %mb_x.addr, align 4
  %idxprom58 = sext i32 %52 to i64
  %53 = load i32, i32* %mb_y.addr, align 4
  %idxprom59 = sext i32 %53 to i64
  %54 = load i8**, i8*** %s_map.addr, align 8
  %arrayidx60 = getelementptr inbounds i8*, i8** %54, i64 %idxprom59
  %55 = load i8*, i8** %arrayidx60, align 8
  %arrayidx61 = getelementptr inbounds i8, i8* %55, i64 %idxprom58
  %56 = load i8, i8* %arrayidx61, align 1
  %conv62 = zext i8 %56 to i32
  switch i32 %conv62, label %sw.epilog [
    i32 1, label %sw.bb
    i32 5, label %sw.bb.108
    i32 3, label %sw.bb.322
    i32 2, label %sw.bb.488
  ]

sw.bb:                                            ; preds = %land.end.54
  %57 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %type63 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %57, i32 0, i32 6
  %58 = load i32, i32* %type63, align 4
  %cmp64 = icmp ne i32 %58, 2
  br i1 %cmp64, label %if.then, label %if.else

if.then:                                          ; preds = %sw.bb
  store i32 0, i32* %j, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc.85, %if.then
  %59 = load i32, i32* %j, align 4
  %cmp66 = icmp slt i32 %59, 16
  br i1 %cmp66, label %for.body, label %for.end.87

for.body:                                         ; preds = %for.cond
  store i32 0, i32* %i, align 4
  br label %for.cond.68

for.cond.68:                                      ; preds = %for.inc, %for.body
  %60 = load i32, i32* %i, align 4
  %cmp69 = icmp slt i32 %60, 16
  br i1 %cmp69, label %for.body.71, label %for.end

for.body.71:                                      ; preds = %for.cond.68
  %61 = load i32, i32* %pos_x, align 4
  %62 = load i32, i32* %i, align 4
  %add = add nsw i32 %61, %62
  %idxprom72 = sext i32 %add to i64
  %63 = load i32, i32* %pos_y, align 4
  %64 = load i32, i32* %j, align 4
  %add73 = add nsw i32 %63, %64
  %idxprom74 = sext i32 %add73 to i64
  %65 = load i32, i32* %ref_inx, align 4
  %idxprom75 = sext i32 %65 to i64
  %66 = load i16***, i16**** %refY.addr, align 8
  %arrayidx76 = getelementptr inbounds i16**, i16*** %66, i64 %idxprom75
  %67 = load i16**, i16*** %arrayidx76, align 8
  %arrayidx77 = getelementptr inbounds i16*, i16** %67, i64 %idxprom74
  %68 = load i16*, i16** %arrayidx77, align 8
  %arrayidx78 = getelementptr inbounds i16, i16* %68, i64 %idxprom72
  %69 = load i16, i16* %arrayidx78, align 2
  %70 = load i32, i32* %pos_x, align 4
  %71 = load i32, i32* %i, align 4
  %add79 = add nsw i32 %70, %71
  %idxprom80 = sext i32 %add79 to i64
  %72 = load i32, i32* %pos_y, align 4
  %73 = load i32, i32* %j, align 4
  %add81 = add nsw i32 %72, %73
  %idxprom82 = sext i32 %add81 to i64
  %74 = load i16**, i16*** %inY.addr, align 8
  %arrayidx83 = getelementptr inbounds i16*, i16** %74, i64 %idxprom82
  %75 = load i16*, i16** %arrayidx83, align 8
  %arrayidx84 = getelementptr inbounds i16, i16* %75, i64 %idxprom80
  store i16 %69, i16* %arrayidx84, align 2
  br label %for.inc

for.inc:                                          ; preds = %for.body.71
  %76 = load i32, i32* %i, align 4
  %inc = add nsw i32 %76, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond.68

for.end:                                          ; preds = %for.cond.68
  br label %for.inc.85

for.inc.85:                                       ; preds = %for.end
  %77 = load i32, i32* %j, align 4
  %inc86 = add nsw i32 %77, 1
  store i32 %inc86, i32* %j, align 4
  br label %for.cond

for.end.87:                                       ; preds = %for.cond
  br label %if.end

if.else:                                          ; preds = %sw.bb
  store i32 0, i32* %j, align 4
  br label %for.cond.88

for.cond.88:                                      ; preds = %for.inc.105, %if.else
  %78 = load i32, i32* %j, align 4
  %cmp89 = icmp slt i32 %78, 16
  br i1 %cmp89, label %for.body.91, label %for.end.107

for.body.91:                                      ; preds = %for.cond.88
  store i32 0, i32* %i, align 4
  br label %for.cond.92

for.cond.92:                                      ; preds = %for.inc.102, %for.body.91
  %79 = load i32, i32* %i, align 4
  %cmp93 = icmp slt i32 %79, 16
  br i1 %cmp93, label %for.body.95, label %for.end.104

for.body.95:                                      ; preds = %for.cond.92
  %80 = load i32, i32* %pos_x, align 4
  %81 = load i32, i32* %i, align 4
  %add96 = add nsw i32 %80, %81
  %idxprom97 = sext i32 %add96 to i64
  %82 = load i32, i32* %pos_y, align 4
  %83 = load i32, i32* %j, align 4
  %add98 = add nsw i32 %82, %83
  %idxprom99 = sext i32 %add98 to i64
  %84 = load i16**, i16*** %inY.addr, align 8
  %arrayidx100 = getelementptr inbounds i16*, i16** %84, i64 %idxprom99
  %85 = load i16*, i16** %arrayidx100, align 8
  %arrayidx101 = getelementptr inbounds i16, i16* %85, i64 %idxprom97
  store i16 127, i16* %arrayidx101, align 2
  br label %for.inc.102

for.inc.102:                                      ; preds = %for.body.95
  %86 = load i32, i32* %i, align 4
  %inc103 = add nsw i32 %86, 1
  store i32 %inc103, i32* %i, align 4
  br label %for.cond.92

for.end.104:                                      ; preds = %for.cond.92
  br label %for.inc.105

for.inc.105:                                      ; preds = %for.end.104
  %87 = load i32, i32* %j, align 4
  %inc106 = add nsw i32 %87, 1
  store i32 %inc106, i32* %j, align 4
  br label %for.cond.88

for.end.107:                                      ; preds = %for.cond.88
  br label %if.end

if.end:                                           ; preds = %for.end.107, %for.end.87
  br label %sw.epilog

sw.bb.108:                                        ; preds = %land.end.54
  store i32 0, i32* %block_y, align 4
  br label %for.cond.109

for.cond.109:                                     ; preds = %for.inc.145, %sw.bb.108
  %88 = load i32, i32* %block_y, align 4
  %cmp110 = icmp slt i32 %88, 4
  br i1 %cmp110, label %for.body.112, label %for.end.147

for.body.112:                                     ; preds = %for.cond.109
  store i32 0, i32* %block_x, align 4
  br label %for.cond.113

for.cond.113:                                     ; preds = %for.inc.142, %for.body.112
  %89 = load i32, i32* %block_x, align 4
  %cmp114 = icmp slt i32 %89, 4
  br i1 %cmp114, label %for.body.116, label %for.end.144

for.body.116:                                     ; preds = %for.cond.113
  store i32 0, i32* %i, align 4
  br label %for.cond.117

for.cond.117:                                     ; preds = %for.inc.139, %for.body.116
  %90 = load i32, i32* %i, align 4
  %cmp118 = icmp slt i32 %90, 2
  br i1 %cmp118, label %for.body.120, label %for.end.141

for.body.120:                                     ; preds = %for.cond.117
  %91 = load i32, i32* %i, align 4
  %idxprom121 = sext i32 %91 to i64
  %92 = load i32, i32* %mb_y.addr, align 4
  %mul122 = mul nsw i32 %92, 4
  %93 = load i32, i32* %block_y, align 4
  %add123 = add nsw i32 %mul122, %93
  %idxprom124 = sext i32 %add123 to i64
  %94 = load i32, i32* %mb_x.addr, align 4
  %mul125 = mul nsw i32 %94, 4
  %95 = load i32, i32* %block_x, align 4
  %add126 = add nsw i32 %mul125, %95
  %add127 = add nsw i32 %add126, 4
  %idxprom128 = sext i32 %add127 to i64
  %96 = load i16***, i16**** %tmp_mv, align 8
  %arrayidx129 = getelementptr inbounds i16**, i16*** %96, i64 %idxprom128
  %97 = load i16**, i16*** %arrayidx129, align 8
  %arrayidx130 = getelementptr inbounds i16*, i16** %97, i64 %idxprom124
  %98 = load i16*, i16** %arrayidx130, align 8
  %arrayidx131 = getelementptr inbounds i16, i16* %98, i64 %idxprom121
  %99 = load i16, i16* %arrayidx131, align 2
  %conv132 = sext i16 %99 to i32
  %100 = load i32, i32* %block_x, align 4
  %idxprom133 = sext i32 %100 to i64
  %101 = load i32, i32* %block_y, align 4
  %idxprom134 = sext i32 %101 to i64
  %102 = load i32, i32* %i, align 4
  %idxprom135 = sext i32 %102 to i64
  %arrayidx136 = getelementptr inbounds [2 x [4 x [4 x i32]]], [2 x [4 x [4 x i32]]]* %mv, i32 0, i64 %idxprom135
  %arrayidx137 = getelementptr inbounds [4 x [4 x i32]], [4 x [4 x i32]]* %arrayidx136, i32 0, i64 %idxprom134
  %arrayidx138 = getelementptr inbounds [4 x i32], [4 x i32]* %arrayidx137, i32 0, i64 %idxprom133
  store i32 %conv132, i32* %arrayidx138, align 4
  br label %for.inc.139

for.inc.139:                                      ; preds = %for.body.120
  %103 = load i32, i32* %i, align 4
  %inc140 = add nsw i32 %103, 1
  store i32 %inc140, i32* %i, align 4
  br label %for.cond.117

for.end.141:                                      ; preds = %for.cond.117
  br label %for.inc.142

for.inc.142:                                      ; preds = %for.end.141
  %104 = load i32, i32* %block_x, align 4
  %inc143 = add nsw i32 %104, 1
  store i32 %inc143, i32* %block_x, align 4
  br label %for.cond.113

for.end.144:                                      ; preds = %for.cond.113
  br label %for.inc.145

for.inc.145:                                      ; preds = %for.end.144
  %105 = load i32, i32* %block_y, align 4
  %inc146 = add nsw i32 %105, 1
  store i32 %inc146, i32* %block_y, align 4
  br label %for.cond.109

for.end.147:                                      ; preds = %for.cond.109
  store i32 0, i32* %i, align 4
  br label %for.cond.148

for.cond.148:                                     ; preds = %for.inc.163, %for.end.147
  %106 = load i32, i32* %i, align 4
  %cmp149 = icmp slt i32 %106, 16
  br i1 %cmp149, label %for.body.151, label %for.end.165

for.body.151:                                     ; preds = %for.cond.148
  store i32 0, i32* %j, align 4
  br label %for.cond.152

for.cond.152:                                     ; preds = %for.inc.160, %for.body.151
  %107 = load i32, i32* %j, align 4
  %cmp153 = icmp slt i32 %107, 16
  br i1 %cmp153, label %for.body.155, label %for.end.162

for.body.155:                                     ; preds = %for.cond.152
  %108 = load i32, i32* %i, align 4
  %idxprom156 = sext i32 %108 to i64
  %109 = load i32, i32* %j, align 4
  %idxprom157 = sext i32 %109 to i64
  %arrayidx158 = getelementptr inbounds [16 x [16 x i32]], [16 x [16 x i32]]* %resY, i32 0, i64 %idxprom157
  %arrayidx159 = getelementptr inbounds [16 x i32], [16 x i32]* %arrayidx158, i32 0, i64 %idxprom156
  store i32 0, i32* %arrayidx159, align 4
  br label %for.inc.160

for.inc.160:                                      ; preds = %for.body.155
  %110 = load i32, i32* %j, align 4
  %inc161 = add nsw i32 %110, 1
  store i32 %inc161, i32* %j, align 4
  br label %for.cond.152

for.end.162:                                      ; preds = %for.cond.152
  br label %for.inc.163

for.inc.163:                                      ; preds = %for.end.162
  %111 = load i32, i32* %i, align 4
  %inc164 = add nsw i32 %111, 1
  store i32 %inc164, i32* %i, align 4
  br label %for.cond.148

for.end.165:                                      ; preds = %for.cond.148
  %112 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %type166 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %112, i32 0, i32 6
  %113 = load i32, i32* %type166, align 4
  %cmp167 = icmp ne i32 %113, 2
  br i1 %cmp167, label %if.then.169, label %if.else.300

if.then.169:                                      ; preds = %for.end.165
  %114 = load i32, i32* %copy, align 4
  %tobool = icmp ne i32 %114, 0
  br i1 %tobool, label %if.then.170, label %if.else.199

if.then.170:                                      ; preds = %if.then.169
  store i32 0, i32* %j, align 4
  br label %for.cond.171

for.cond.171:                                     ; preds = %for.inc.196, %if.then.170
  %115 = load i32, i32* %j, align 4
  %cmp172 = icmp slt i32 %115, 16
  br i1 %cmp172, label %for.body.174, label %for.end.198

for.body.174:                                     ; preds = %for.cond.171
  store i32 0, i32* %i, align 4
  br label %for.cond.175

for.cond.175:                                     ; preds = %for.inc.193, %for.body.174
  %116 = load i32, i32* %i, align 4
  %cmp176 = icmp slt i32 %116, 16
  br i1 %cmp176, label %for.body.178, label %for.end.195

for.body.178:                                     ; preds = %for.cond.175
  %117 = load i32, i32* %pos_x, align 4
  %118 = load i32, i32* %i, align 4
  %add179 = add nsw i32 %117, %118
  %idxprom180 = sext i32 %add179 to i64
  %119 = load i32, i32* %pos_y, align 4
  %120 = load i32, i32* %j, align 4
  %add181 = add nsw i32 %119, %120
  %idxprom182 = sext i32 %add181 to i64
  %121 = load i32, i32* %ref_inx, align 4
  %idxprom183 = sext i32 %121 to i64
  %122 = load i16***, i16**** %refY.addr, align 8
  %arrayidx184 = getelementptr inbounds i16**, i16*** %122, i64 %idxprom183
  %123 = load i16**, i16*** %arrayidx184, align 8
  %arrayidx185 = getelementptr inbounds i16*, i16** %123, i64 %idxprom182
  %124 = load i16*, i16** %arrayidx185, align 8
  %arrayidx186 = getelementptr inbounds i16, i16* %124, i64 %idxprom180
  %125 = load i16, i16* %arrayidx186, align 2
  %126 = load i32, i32* %pos_x, align 4
  %127 = load i32, i32* %i, align 4
  %add187 = add nsw i32 %126, %127
  %idxprom188 = sext i32 %add187 to i64
  %128 = load i32, i32* %pos_y, align 4
  %129 = load i32, i32* %j, align 4
  %add189 = add nsw i32 %128, %129
  %idxprom190 = sext i32 %add189 to i64
  %130 = load i16**, i16*** %inY.addr, align 8
  %arrayidx191 = getelementptr inbounds i16*, i16** %130, i64 %idxprom190
  %131 = load i16*, i16** %arrayidx191, align 8
  %arrayidx192 = getelementptr inbounds i16, i16* %131, i64 %idxprom188
  store i16 %125, i16* %arrayidx192, align 2
  br label %for.inc.193

for.inc.193:                                      ; preds = %for.body.178
  %132 = load i32, i32* %i, align 4
  %inc194 = add nsw i32 %132, 1
  store i32 %inc194, i32* %i, align 4
  br label %for.cond.175

for.end.195:                                      ; preds = %for.cond.175
  br label %for.inc.196

for.inc.196:                                      ; preds = %for.end.195
  %133 = load i32, i32* %j, align 4
  %inc197 = add nsw i32 %133, 1
  store i32 %inc197, i32* %j, align 4
  br label %for.cond.171

for.end.198:                                      ; preds = %for.cond.171
  br label %if.end.299

if.else.199:                                      ; preds = %if.then.169
  %134 = load i32, i32* %inter, align 4
  %tobool200 = icmp ne i32 %134, 0
  br i1 %tobool200, label %if.then.201, label %if.else.269

if.then.201:                                      ; preds = %if.else.199
  %135 = load i32, i32* %mb_y.addr, align 4
  %mul202 = mul nsw i32 %135, 4
  store i32 %mul202, i32* %block_y, align 4
  br label %for.cond.203

for.cond.203:                                     ; preds = %for.inc.266, %if.then.201
  %136 = load i32, i32* %block_y, align 4
  %137 = load i32, i32* %mb_y.addr, align 4
  %mul204 = mul nsw i32 %137, 4
  %add205 = add nsw i32 %mul204, 4
  %cmp206 = icmp slt i32 %136, %add205
  br i1 %cmp206, label %for.body.208, label %for.end.268

for.body.208:                                     ; preds = %for.cond.203
  %138 = load i32, i32* %mb_x.addr, align 4
  %mul209 = mul nsw i32 %138, 4
  store i32 %mul209, i32* %block_x, align 4
  br label %for.cond.210

for.cond.210:                                     ; preds = %for.inc.263, %for.body.208
  %139 = load i32, i32* %block_x, align 4
  %140 = load i32, i32* %mb_x.addr, align 4
  %mul211 = mul nsw i32 %140, 4
  %add212 = add nsw i32 %mul211, 4
  %cmp213 = icmp slt i32 %139, %add212
  br i1 %cmp213, label %for.body.215, label %for.end.265

for.body.215:                                     ; preds = %for.cond.210
  %141 = load i32, i32* %ref_inx, align 4
  %idxprom216 = sext i32 %141 to i64
  %142 = load i16***, i16**** %refY.addr, align 8
  %arrayidx217 = getelementptr inbounds i16**, i16*** %142, i64 %idxprom216
  %143 = load i16**, i16*** %arrayidx217, align 8
  %144 = load i32, i32* %block_y, align 4
  %145 = load i32, i32* %block_x, align 4
  %146 = load i32, i32* %block_x, align 4
  %147 = load i32, i32* %mb_x.addr, align 4
  %mul218 = mul nsw i32 %147, 4
  %sub219 = sub nsw i32 %146, %mul218
  %idxprom220 = sext i32 %sub219 to i64
  %148 = load i32, i32* %block_y, align 4
  %149 = load i32, i32* %mb_y.addr, align 4
  %mul221 = mul nsw i32 %149, 4
  %sub222 = sub nsw i32 %148, %mul221
  %idxprom223 = sext i32 %sub222 to i64
  %arrayidx224 = getelementptr inbounds [2 x [4 x [4 x i32]]], [2 x [4 x [4 x i32]]]* %mv, i32 0, i64 0
  %arrayidx225 = getelementptr inbounds [4 x [4 x i32]], [4 x [4 x i32]]* %arrayidx224, i32 0, i64 %idxprom223
  %arrayidx226 = getelementptr inbounds [4 x i32], [4 x i32]* %arrayidx225, i32 0, i64 %idxprom220
  %150 = load i32, i32* %arrayidx226, align 4
  %151 = load i32, i32* %block_x, align 4
  %152 = load i32, i32* %mb_x.addr, align 4
  %mul227 = mul nsw i32 %152, 4
  %sub228 = sub nsw i32 %151, %mul227
  %idxprom229 = sext i32 %sub228 to i64
  %153 = load i32, i32* %block_y, align 4
  %154 = load i32, i32* %mb_y.addr, align 4
  %mul230 = mul nsw i32 %154, 4
  %sub231 = sub nsw i32 %153, %mul230
  %idxprom232 = sext i32 %sub231 to i64
  %arrayidx233 = getelementptr inbounds [2 x [4 x [4 x i32]]], [2 x [4 x [4 x i32]]]* %mv, i32 0, i64 1
  %arrayidx234 = getelementptr inbounds [4 x [4 x i32]], [4 x [4 x i32]]* %arrayidx233, i32 0, i64 %idxprom232
  %arrayidx235 = getelementptr inbounds [4 x i32], [4 x i32]* %arrayidx234, i32 0, i64 %idxprom229
  %155 = load i32, i32* %arrayidx235, align 4
  %156 = load %struct.Decoders*, %struct.Decoders** @decs, align 8
  %RefBlock = getelementptr inbounds %struct.Decoders, %struct.Decoders* %156, i32 0, i32 4
  %157 = load i16**, i16*** %RefBlock, align 8
  call void @Get_Reference_Block(i16** %143, i32 %144, i32 %145, i32 %150, i32 %155, i16** %157)
  store i32 0, i32* %j, align 4
  br label %for.cond.236

for.cond.236:                                     ; preds = %for.inc.260, %for.body.215
  %158 = load i32, i32* %j, align 4
  %cmp237 = icmp slt i32 %158, 4
  br i1 %cmp237, label %for.body.239, label %for.end.262

for.body.239:                                     ; preds = %for.cond.236
  store i32 0, i32* %i, align 4
  br label %for.cond.240

for.cond.240:                                     ; preds = %for.inc.257, %for.body.239
  %159 = load i32, i32* %i, align 4
  %cmp241 = icmp slt i32 %159, 4
  br i1 %cmp241, label %for.body.243, label %for.end.259

for.body.243:                                     ; preds = %for.cond.240
  %160 = load i32, i32* %i, align 4
  %idxprom244 = sext i32 %160 to i64
  %161 = load i32, i32* %j, align 4
  %idxprom245 = sext i32 %161 to i64
  %162 = load %struct.Decoders*, %struct.Decoders** @decs, align 8
  %RefBlock246 = getelementptr inbounds %struct.Decoders, %struct.Decoders* %162, i32 0, i32 4
  %163 = load i16**, i16*** %RefBlock246, align 8
  %arrayidx247 = getelementptr inbounds i16*, i16** %163, i64 %idxprom245
  %164 = load i16*, i16** %arrayidx247, align 8
  %arrayidx248 = getelementptr inbounds i16, i16* %164, i64 %idxprom244
  %165 = load i16, i16* %arrayidx248, align 2
  %166 = load i32, i32* %block_x, align 4
  %mul249 = mul nsw i32 %166, 4
  %167 = load i32, i32* %i, align 4
  %add250 = add nsw i32 %mul249, %167
  %idxprom251 = sext i32 %add250 to i64
  %168 = load i32, i32* %block_y, align 4
  %mul252 = mul nsw i32 %168, 4
  %169 = load i32, i32* %j, align 4
  %add253 = add nsw i32 %mul252, %169
  %idxprom254 = sext i32 %add253 to i64
  %170 = load i16**, i16*** %inY.addr, align 8
  %arrayidx255 = getelementptr inbounds i16*, i16** %170, i64 %idxprom254
  %171 = load i16*, i16** %arrayidx255, align 8
  %arrayidx256 = getelementptr inbounds i16, i16* %171, i64 %idxprom251
  store i16 %165, i16* %arrayidx256, align 2
  br label %for.inc.257

for.inc.257:                                      ; preds = %for.body.243
  %172 = load i32, i32* %i, align 4
  %inc258 = add nsw i32 %172, 1
  store i32 %inc258, i32* %i, align 4
  br label %for.cond.240

for.end.259:                                      ; preds = %for.cond.240
  br label %for.inc.260

for.inc.260:                                      ; preds = %for.end.259
  %173 = load i32, i32* %j, align 4
  %inc261 = add nsw i32 %173, 1
  store i32 %inc261, i32* %j, align 4
  br label %for.cond.236

for.end.262:                                      ; preds = %for.cond.236
  br label %for.inc.263

for.inc.263:                                      ; preds = %for.end.262
  %174 = load i32, i32* %block_x, align 4
  %inc264 = add nsw i32 %174, 1
  store i32 %inc264, i32* %block_x, align 4
  br label %for.cond.210

for.end.265:                                      ; preds = %for.cond.210
  br label %for.inc.266

for.inc.266:                                      ; preds = %for.end.265
  %175 = load i32, i32* %block_y, align 4
  %inc267 = add nsw i32 %175, 1
  store i32 %inc267, i32* %block_y, align 4
  br label %for.cond.203

for.end.268:                                      ; preds = %for.cond.203
  br label %if.end.298

if.else.269:                                      ; preds = %if.else.199
  store i32 0, i32* %j, align 4
  br label %for.cond.270

for.cond.270:                                     ; preds = %for.inc.295, %if.else.269
  %176 = load i32, i32* %j, align 4
  %cmp271 = icmp slt i32 %176, 16
  br i1 %cmp271, label %for.body.273, label %for.end.297

for.body.273:                                     ; preds = %for.cond.270
  store i32 0, i32* %i, align 4
  br label %for.cond.274

for.cond.274:                                     ; preds = %for.inc.292, %for.body.273
  %177 = load i32, i32* %i, align 4
  %cmp275 = icmp slt i32 %177, 16
  br i1 %cmp275, label %for.body.277, label %for.end.294

for.body.277:                                     ; preds = %for.cond.274
  %178 = load i32, i32* %pos_x, align 4
  %179 = load i32, i32* %i, align 4
  %add278 = add nsw i32 %178, %179
  %idxprom279 = sext i32 %add278 to i64
  %180 = load i32, i32* %pos_y, align 4
  %181 = load i32, i32* %j, align 4
  %add280 = add nsw i32 %180, %181
  %idxprom281 = sext i32 %add280 to i64
  %182 = load i32, i32* %ref_inx, align 4
  %idxprom282 = sext i32 %182 to i64
  %183 = load i16***, i16**** %refY.addr, align 8
  %arrayidx283 = getelementptr inbounds i16**, i16*** %183, i64 %idxprom282
  %184 = load i16**, i16*** %arrayidx283, align 8
  %arrayidx284 = getelementptr inbounds i16*, i16** %184, i64 %idxprom281
  %185 = load i16*, i16** %arrayidx284, align 8
  %arrayidx285 = getelementptr inbounds i16, i16* %185, i64 %idxprom279
  %186 = load i16, i16* %arrayidx285, align 2
  %187 = load i32, i32* %pos_x, align 4
  %188 = load i32, i32* %i, align 4
  %add286 = add nsw i32 %187, %188
  %idxprom287 = sext i32 %add286 to i64
  %189 = load i32, i32* %pos_y, align 4
  %190 = load i32, i32* %j, align 4
  %add288 = add nsw i32 %189, %190
  %idxprom289 = sext i32 %add288 to i64
  %191 = load i16**, i16*** %inY.addr, align 8
  %arrayidx290 = getelementptr inbounds i16*, i16** %191, i64 %idxprom289
  %192 = load i16*, i16** %arrayidx290, align 8
  %arrayidx291 = getelementptr inbounds i16, i16* %192, i64 %idxprom287
  store i16 %186, i16* %arrayidx291, align 2
  br label %for.inc.292

for.inc.292:                                      ; preds = %for.body.277
  %193 = load i32, i32* %i, align 4
  %inc293 = add nsw i32 %193, 1
  store i32 %inc293, i32* %i, align 4
  br label %for.cond.274

for.end.294:                                      ; preds = %for.cond.274
  br label %for.inc.295

for.inc.295:                                      ; preds = %for.end.294
  %194 = load i32, i32* %j, align 4
  %inc296 = add nsw i32 %194, 1
  store i32 %inc296, i32* %j, align 4
  br label %for.cond.270

for.end.297:                                      ; preds = %for.cond.270
  br label %if.end.298

if.end.298:                                       ; preds = %for.end.297, %for.end.268
  br label %if.end.299

if.end.299:                                       ; preds = %if.end.298, %for.end.198
  br label %if.end.321

if.else.300:                                      ; preds = %for.end.165
  store i32 0, i32* %j, align 4
  br label %for.cond.301

for.cond.301:                                     ; preds = %for.inc.318, %if.else.300
  %195 = load i32, i32* %j, align 4
  %cmp302 = icmp slt i32 %195, 16
  br i1 %cmp302, label %for.body.304, label %for.end.320

for.body.304:                                     ; preds = %for.cond.301
  store i32 0, i32* %i, align 4
  br label %for.cond.305

for.cond.305:                                     ; preds = %for.inc.315, %for.body.304
  %196 = load i32, i32* %i, align 4
  %cmp306 = icmp slt i32 %196, 16
  br i1 %cmp306, label %for.body.308, label %for.end.317

for.body.308:                                     ; preds = %for.cond.305
  %197 = load i32, i32* %pos_x, align 4
  %198 = load i32, i32* %i, align 4
  %add309 = add nsw i32 %197, %198
  %idxprom310 = sext i32 %add309 to i64
  %199 = load i32, i32* %pos_y, align 4
  %200 = load i32, i32* %j, align 4
  %add311 = add nsw i32 %199, %200
  %idxprom312 = sext i32 %add311 to i64
  %201 = load i16**, i16*** %inY.addr, align 8
  %arrayidx313 = getelementptr inbounds i16*, i16** %201, i64 %idxprom312
  %202 = load i16*, i16** %arrayidx313, align 8
  %arrayidx314 = getelementptr inbounds i16, i16* %202, i64 %idxprom310
  store i16 127, i16* %arrayidx314, align 2
  br label %for.inc.315

for.inc.315:                                      ; preds = %for.body.308
  %203 = load i32, i32* %i, align 4
  %inc316 = add nsw i32 %203, 1
  store i32 %inc316, i32* %i, align 4
  br label %for.cond.305

for.end.317:                                      ; preds = %for.cond.305
  br label %for.inc.318

for.inc.318:                                      ; preds = %for.end.317
  %204 = load i32, i32* %j, align 4
  %inc319 = add nsw i32 %204, 1
  store i32 %inc319, i32* %j, align 4
  br label %for.cond.301

for.end.320:                                      ; preds = %for.cond.301
  br label %if.end.321

if.end.321:                                       ; preds = %for.end.320, %if.end.299
  br label %sw.epilog

sw.bb.322:                                        ; preds = %land.end.54
  %205 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %type323 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %205, i32 0, i32 6
  %206 = load i32, i32* %type323, align 4
  %cmp324 = icmp ne i32 %206, 2
  br i1 %cmp324, label %if.then.326, label %if.end.487

if.then.326:                                      ; preds = %sw.bb.322
  store i32 0, i32* %block_y, align 4
  br label %for.cond.327

for.cond.327:                                     ; preds = %for.inc.363, %if.then.326
  %207 = load i32, i32* %block_y, align 4
  %cmp328 = icmp slt i32 %207, 4
  br i1 %cmp328, label %for.body.330, label %for.end.365

for.body.330:                                     ; preds = %for.cond.327
  store i32 0, i32* %block_x, align 4
  br label %for.cond.331

for.cond.331:                                     ; preds = %for.inc.360, %for.body.330
  %208 = load i32, i32* %block_x, align 4
  %cmp332 = icmp slt i32 %208, 4
  br i1 %cmp332, label %for.body.334, label %for.end.362

for.body.334:                                     ; preds = %for.cond.331
  store i32 0, i32* %i, align 4
  br label %for.cond.335

for.cond.335:                                     ; preds = %for.inc.357, %for.body.334
  %209 = load i32, i32* %i, align 4
  %cmp336 = icmp slt i32 %209, 2
  br i1 %cmp336, label %for.body.338, label %for.end.359

for.body.338:                                     ; preds = %for.cond.335
  %210 = load i32, i32* %i, align 4
  %idxprom339 = sext i32 %210 to i64
  %211 = load i32, i32* %mb_y.addr, align 4
  %mul340 = mul nsw i32 %211, 4
  %212 = load i32, i32* %block_y, align 4
  %add341 = add nsw i32 %mul340, %212
  %idxprom342 = sext i32 %add341 to i64
  %213 = load i32, i32* %mb_x.addr, align 4
  %mul343 = mul nsw i32 %213, 4
  %214 = load i32, i32* %block_x, align 4
  %add344 = add nsw i32 %mul343, %214
  %add345 = add nsw i32 %add344, 4
  %idxprom346 = sext i32 %add345 to i64
  %215 = load i16***, i16**** %tmp_mv, align 8
  %arrayidx347 = getelementptr inbounds i16**, i16*** %215, i64 %idxprom346
  %216 = load i16**, i16*** %arrayidx347, align 8
  %arrayidx348 = getelementptr inbounds i16*, i16** %216, i64 %idxprom342
  %217 = load i16*, i16** %arrayidx348, align 8
  %arrayidx349 = getelementptr inbounds i16, i16* %217, i64 %idxprom339
  %218 = load i16, i16* %arrayidx349, align 2
  %conv350 = sext i16 %218 to i32
  %219 = load i32, i32* %block_x, align 4
  %idxprom351 = sext i32 %219 to i64
  %220 = load i32, i32* %block_y, align 4
  %idxprom352 = sext i32 %220 to i64
  %221 = load i32, i32* %i, align 4
  %idxprom353 = sext i32 %221 to i64
  %arrayidx354 = getelementptr inbounds [2 x [4 x [4 x i32]]], [2 x [4 x [4 x i32]]]* %mv, i32 0, i64 %idxprom353
  %arrayidx355 = getelementptr inbounds [4 x [4 x i32]], [4 x [4 x i32]]* %arrayidx354, i32 0, i64 %idxprom352
  %arrayidx356 = getelementptr inbounds [4 x i32], [4 x i32]* %arrayidx355, i32 0, i64 %idxprom351
  store i32 %conv350, i32* %arrayidx356, align 4
  br label %for.inc.357

for.inc.357:                                      ; preds = %for.body.338
  %222 = load i32, i32* %i, align 4
  %inc358 = add nsw i32 %222, 1
  store i32 %inc358, i32* %i, align 4
  br label %for.cond.335

for.end.359:                                      ; preds = %for.cond.335
  br label %for.inc.360

for.inc.360:                                      ; preds = %for.end.359
  %223 = load i32, i32* %block_x, align 4
  %inc361 = add nsw i32 %223, 1
  store i32 %inc361, i32* %block_x, align 4
  br label %for.cond.331

for.end.362:                                      ; preds = %for.cond.331
  br label %for.inc.363

for.inc.363:                                      ; preds = %for.end.362
  %224 = load i32, i32* %block_y, align 4
  %inc364 = add nsw i32 %224, 1
  store i32 %inc364, i32* %block_y, align 4
  br label %for.cond.327

for.end.365:                                      ; preds = %for.cond.327
  store i32 0, i32* %i, align 4
  br label %for.cond.366

for.cond.366:                                     ; preds = %for.inc.381, %for.end.365
  %225 = load i32, i32* %i, align 4
  %cmp367 = icmp slt i32 %225, 16
  br i1 %cmp367, label %for.body.369, label %for.end.383

for.body.369:                                     ; preds = %for.cond.366
  store i32 0, i32* %j, align 4
  br label %for.cond.370

for.cond.370:                                     ; preds = %for.inc.378, %for.body.369
  %226 = load i32, i32* %j, align 4
  %cmp371 = icmp slt i32 %226, 16
  br i1 %cmp371, label %for.body.373, label %for.end.380

for.body.373:                                     ; preds = %for.cond.370
  %227 = load i32, i32* %i, align 4
  %idxprom374 = sext i32 %227 to i64
  %228 = load i32, i32* %j, align 4
  %idxprom375 = sext i32 %228 to i64
  %arrayidx376 = getelementptr inbounds [16 x [16 x i32]], [16 x [16 x i32]]* %resY, i32 0, i64 %idxprom375
  %arrayidx377 = getelementptr inbounds [16 x i32], [16 x i32]* %arrayidx376, i32 0, i64 %idxprom374
  store i32 0, i32* %arrayidx377, align 4
  br label %for.inc.378

for.inc.378:                                      ; preds = %for.body.373
  %229 = load i32, i32* %j, align 4
  %inc379 = add nsw i32 %229, 1
  store i32 %inc379, i32* %j, align 4
  br label %for.cond.370

for.end.380:                                      ; preds = %for.cond.370
  br label %for.inc.381

for.inc.381:                                      ; preds = %for.end.380
  %230 = load i32, i32* %i, align 4
  %inc382 = add nsw i32 %230, 1
  store i32 %inc382, i32* %i, align 4
  br label %for.cond.366

for.end.383:                                      ; preds = %for.cond.366
  %231 = load i32, i32* %copy, align 4
  %tobool384 = icmp ne i32 %231, 0
  br i1 %tobool384, label %if.then.385, label %if.else.414

if.then.385:                                      ; preds = %for.end.383
  store i32 0, i32* %j, align 4
  br label %for.cond.386

for.cond.386:                                     ; preds = %for.inc.411, %if.then.385
  %232 = load i32, i32* %j, align 4
  %cmp387 = icmp slt i32 %232, 16
  br i1 %cmp387, label %for.body.389, label %for.end.413

for.body.389:                                     ; preds = %for.cond.386
  store i32 0, i32* %i, align 4
  br label %for.cond.390

for.cond.390:                                     ; preds = %for.inc.408, %for.body.389
  %233 = load i32, i32* %i, align 4
  %cmp391 = icmp slt i32 %233, 16
  br i1 %cmp391, label %for.body.393, label %for.end.410

for.body.393:                                     ; preds = %for.cond.390
  %234 = load i32, i32* %pos_x, align 4
  %235 = load i32, i32* %i, align 4
  %add394 = add nsw i32 %234, %235
  %idxprom395 = sext i32 %add394 to i64
  %236 = load i32, i32* %pos_y, align 4
  %237 = load i32, i32* %j, align 4
  %add396 = add nsw i32 %236, %237
  %idxprom397 = sext i32 %add396 to i64
  %238 = load i32, i32* %ref_inx, align 4
  %idxprom398 = sext i32 %238 to i64
  %239 = load i16***, i16**** %refY.addr, align 8
  %arrayidx399 = getelementptr inbounds i16**, i16*** %239, i64 %idxprom398
  %240 = load i16**, i16*** %arrayidx399, align 8
  %arrayidx400 = getelementptr inbounds i16*, i16** %240, i64 %idxprom397
  %241 = load i16*, i16** %arrayidx400, align 8
  %arrayidx401 = getelementptr inbounds i16, i16* %241, i64 %idxprom395
  %242 = load i16, i16* %arrayidx401, align 2
  %243 = load i32, i32* %pos_x, align 4
  %244 = load i32, i32* %i, align 4
  %add402 = add nsw i32 %243, %244
  %idxprom403 = sext i32 %add402 to i64
  %245 = load i32, i32* %pos_y, align 4
  %246 = load i32, i32* %j, align 4
  %add404 = add nsw i32 %245, %246
  %idxprom405 = sext i32 %add404 to i64
  %247 = load i16**, i16*** %inY.addr, align 8
  %arrayidx406 = getelementptr inbounds i16*, i16** %247, i64 %idxprom405
  %248 = load i16*, i16** %arrayidx406, align 8
  %arrayidx407 = getelementptr inbounds i16, i16* %248, i64 %idxprom403
  store i16 %242, i16* %arrayidx407, align 2
  br label %for.inc.408

for.inc.408:                                      ; preds = %for.body.393
  %249 = load i32, i32* %i, align 4
  %inc409 = add nsw i32 %249, 1
  store i32 %inc409, i32* %i, align 4
  br label %for.cond.390

for.end.410:                                      ; preds = %for.cond.390
  br label %for.inc.411

for.inc.411:                                      ; preds = %for.end.410
  %250 = load i32, i32* %j, align 4
  %inc412 = add nsw i32 %250, 1
  store i32 %inc412, i32* %j, align 4
  br label %for.cond.386

for.end.413:                                      ; preds = %for.cond.386
  br label %if.end.486

if.else.414:                                      ; preds = %for.end.383
  %251 = load i32, i32* %inter, align 4
  %tobool415 = icmp ne i32 %251, 0
  br i1 %tobool415, label %if.then.416, label %if.end.485

if.then.416:                                      ; preds = %if.else.414
  %252 = load i32, i32* %mb_y.addr, align 4
  %mul417 = mul nsw i32 %252, 4
  store i32 %mul417, i32* %block_y, align 4
  br label %for.cond.418

for.cond.418:                                     ; preds = %for.inc.482, %if.then.416
  %253 = load i32, i32* %block_y, align 4
  %254 = load i32, i32* %mb_y.addr, align 4
  %mul419 = mul nsw i32 %254, 4
  %add420 = add nsw i32 %mul419, 4
  %cmp421 = icmp slt i32 %253, %add420
  br i1 %cmp421, label %for.body.423, label %for.end.484

for.body.423:                                     ; preds = %for.cond.418
  %255 = load i32, i32* %mb_x.addr, align 4
  %mul424 = mul nsw i32 %255, 4
  store i32 %mul424, i32* %block_x, align 4
  br label %for.cond.425

for.cond.425:                                     ; preds = %for.inc.479, %for.body.423
  %256 = load i32, i32* %block_x, align 4
  %257 = load i32, i32* %mb_x.addr, align 4
  %mul426 = mul nsw i32 %257, 4
  %add427 = add nsw i32 %mul426, 4
  %cmp428 = icmp slt i32 %256, %add427
  br i1 %cmp428, label %for.body.430, label %for.end.481

for.body.430:                                     ; preds = %for.cond.425
  %258 = load i32, i32* %ref_inx, align 4
  %idxprom431 = sext i32 %258 to i64
  %259 = load i16***, i16**** %refY.addr, align 8
  %arrayidx432 = getelementptr inbounds i16**, i16*** %259, i64 %idxprom431
  %260 = load i16**, i16*** %arrayidx432, align 8
  %261 = load i32, i32* %block_y, align 4
  %262 = load i32, i32* %block_x, align 4
  %263 = load i32, i32* %block_x, align 4
  %264 = load i32, i32* %mb_x.addr, align 4
  %mul433 = mul nsw i32 %264, 4
  %sub434 = sub nsw i32 %263, %mul433
  %idxprom435 = sext i32 %sub434 to i64
  %265 = load i32, i32* %block_y, align 4
  %266 = load i32, i32* %mb_y.addr, align 4
  %mul436 = mul nsw i32 %266, 4
  %sub437 = sub nsw i32 %265, %mul436
  %idxprom438 = sext i32 %sub437 to i64
  %arrayidx439 = getelementptr inbounds [2 x [4 x [4 x i32]]], [2 x [4 x [4 x i32]]]* %mv, i32 0, i64 0
  %arrayidx440 = getelementptr inbounds [4 x [4 x i32]], [4 x [4 x i32]]* %arrayidx439, i32 0, i64 %idxprom438
  %arrayidx441 = getelementptr inbounds [4 x i32], [4 x i32]* %arrayidx440, i32 0, i64 %idxprom435
  %267 = load i32, i32* %arrayidx441, align 4
  %268 = load i32, i32* %block_x, align 4
  %269 = load i32, i32* %mb_x.addr, align 4
  %mul442 = mul nsw i32 %269, 4
  %sub443 = sub nsw i32 %268, %mul442
  %idxprom444 = sext i32 %sub443 to i64
  %270 = load i32, i32* %block_y, align 4
  %271 = load i32, i32* %mb_y.addr, align 4
  %mul445 = mul nsw i32 %271, 4
  %sub446 = sub nsw i32 %270, %mul445
  %idxprom447 = sext i32 %sub446 to i64
  %arrayidx448 = getelementptr inbounds [2 x [4 x [4 x i32]]], [2 x [4 x [4 x i32]]]* %mv, i32 0, i64 1
  %arrayidx449 = getelementptr inbounds [4 x [4 x i32]], [4 x [4 x i32]]* %arrayidx448, i32 0, i64 %idxprom447
  %arrayidx450 = getelementptr inbounds [4 x i32], [4 x i32]* %arrayidx449, i32 0, i64 %idxprom444
  %272 = load i32, i32* %arrayidx450, align 4
  %273 = load %struct.Decoders*, %struct.Decoders** @decs, align 8
  %RefBlock451 = getelementptr inbounds %struct.Decoders, %struct.Decoders* %273, i32 0, i32 4
  %274 = load i16**, i16*** %RefBlock451, align 8
  call void @Get_Reference_Block(i16** %260, i32 %261, i32 %262, i32 %267, i32 %272, i16** %274)
  store i32 0, i32* %j, align 4
  br label %for.cond.452

for.cond.452:                                     ; preds = %for.inc.476, %for.body.430
  %275 = load i32, i32* %j, align 4
  %cmp453 = icmp slt i32 %275, 4
  br i1 %cmp453, label %for.body.455, label %for.end.478

for.body.455:                                     ; preds = %for.cond.452
  store i32 0, i32* %i, align 4
  br label %for.cond.456

for.cond.456:                                     ; preds = %for.inc.473, %for.body.455
  %276 = load i32, i32* %i, align 4
  %cmp457 = icmp slt i32 %276, 4
  br i1 %cmp457, label %for.body.459, label %for.end.475

for.body.459:                                     ; preds = %for.cond.456
  %277 = load i32, i32* %i, align 4
  %idxprom460 = sext i32 %277 to i64
  %278 = load i32, i32* %j, align 4
  %idxprom461 = sext i32 %278 to i64
  %279 = load %struct.Decoders*, %struct.Decoders** @decs, align 8
  %RefBlock462 = getelementptr inbounds %struct.Decoders, %struct.Decoders* %279, i32 0, i32 4
  %280 = load i16**, i16*** %RefBlock462, align 8
  %arrayidx463 = getelementptr inbounds i16*, i16** %280, i64 %idxprom461
  %281 = load i16*, i16** %arrayidx463, align 8
  %arrayidx464 = getelementptr inbounds i16, i16* %281, i64 %idxprom460
  %282 = load i16, i16* %arrayidx464, align 2
  %283 = load i32, i32* %block_x, align 4
  %mul465 = mul nsw i32 %283, 4
  %284 = load i32, i32* %i, align 4
  %add466 = add nsw i32 %mul465, %284
  %idxprom467 = sext i32 %add466 to i64
  %285 = load i32, i32* %block_y, align 4
  %mul468 = mul nsw i32 %285, 4
  %286 = load i32, i32* %j, align 4
  %add469 = add nsw i32 %mul468, %286
  %idxprom470 = sext i32 %add469 to i64
  %287 = load i16**, i16*** %inY.addr, align 8
  %arrayidx471 = getelementptr inbounds i16*, i16** %287, i64 %idxprom470
  %288 = load i16*, i16** %arrayidx471, align 8
  %arrayidx472 = getelementptr inbounds i16, i16* %288, i64 %idxprom467
  store i16 %282, i16* %arrayidx472, align 2
  br label %for.inc.473

for.inc.473:                                      ; preds = %for.body.459
  %289 = load i32, i32* %i, align 4
  %inc474 = add nsw i32 %289, 1
  store i32 %inc474, i32* %i, align 4
  br label %for.cond.456

for.end.475:                                      ; preds = %for.cond.456
  br label %for.inc.476

for.inc.476:                                      ; preds = %for.end.475
  %290 = load i32, i32* %j, align 4
  %inc477 = add nsw i32 %290, 1
  store i32 %inc477, i32* %j, align 4
  br label %for.cond.452

for.end.478:                                      ; preds = %for.cond.452
  br label %for.inc.479

for.inc.479:                                      ; preds = %for.end.478
  %291 = load i32, i32* %block_x, align 4
  %inc480 = add nsw i32 %291, 1
  store i32 %inc480, i32* %block_x, align 4
  br label %for.cond.425

for.end.481:                                      ; preds = %for.cond.425
  br label %for.inc.482

for.inc.482:                                      ; preds = %for.end.481
  %292 = load i32, i32* %block_y, align 4
  %inc483 = add nsw i32 %292, 1
  store i32 %inc483, i32* %block_y, align 4
  br label %for.cond.418

for.end.484:                                      ; preds = %for.cond.418
  br label %if.end.485

if.end.485:                                       ; preds = %for.end.484, %if.else.414
  br label %if.end.486

if.end.486:                                       ; preds = %if.end.485, %for.end.413
  br label %if.end.487

if.end.487:                                       ; preds = %if.end.486, %sw.bb.322
  br label %sw.epilog

sw.bb.488:                                        ; preds = %land.end.54
  %293 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %type489 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %293, i32 0, i32 6
  %294 = load i32, i32* %type489, align 4
  %cmp490 = icmp ne i32 %294, 2
  br i1 %cmp490, label %if.then.492, label %if.else.524

if.then.492:                                      ; preds = %sw.bb.488
  %295 = load i32, i32* %inter, align 4
  %tobool493 = icmp ne i32 %295, 0
  br i1 %tobool493, label %if.end.523, label %if.then.494

if.then.494:                                      ; preds = %if.then.492
  store i32 0, i32* %j, align 4
  br label %for.cond.495

for.cond.495:                                     ; preds = %for.inc.520, %if.then.494
  %296 = load i32, i32* %j, align 4
  %cmp496 = icmp slt i32 %296, 16
  br i1 %cmp496, label %for.body.498, label %for.end.522

for.body.498:                                     ; preds = %for.cond.495
  store i32 0, i32* %i, align 4
  br label %for.cond.499

for.cond.499:                                     ; preds = %for.inc.517, %for.body.498
  %297 = load i32, i32* %i, align 4
  %cmp500 = icmp slt i32 %297, 16
  br i1 %cmp500, label %for.body.502, label %for.end.519

for.body.502:                                     ; preds = %for.cond.499
  %298 = load i32, i32* %pos_x, align 4
  %299 = load i32, i32* %i, align 4
  %add503 = add nsw i32 %298, %299
  %idxprom504 = sext i32 %add503 to i64
  %300 = load i32, i32* %pos_y, align 4
  %301 = load i32, i32* %j, align 4
  %add505 = add nsw i32 %300, %301
  %idxprom506 = sext i32 %add505 to i64
  %302 = load i32, i32* %ref_inx, align 4
  %idxprom507 = sext i32 %302 to i64
  %303 = load i16***, i16**** %refY.addr, align 8
  %arrayidx508 = getelementptr inbounds i16**, i16*** %303, i64 %idxprom507
  %304 = load i16**, i16*** %arrayidx508, align 8
  %arrayidx509 = getelementptr inbounds i16*, i16** %304, i64 %idxprom506
  %305 = load i16*, i16** %arrayidx509, align 8
  %arrayidx510 = getelementptr inbounds i16, i16* %305, i64 %idxprom504
  %306 = load i16, i16* %arrayidx510, align 2
  %307 = load i32, i32* %pos_x, align 4
  %308 = load i32, i32* %i, align 4
  %add511 = add nsw i32 %307, %308
  %idxprom512 = sext i32 %add511 to i64
  %309 = load i32, i32* %pos_y, align 4
  %310 = load i32, i32* %j, align 4
  %add513 = add nsw i32 %309, %310
  %idxprom514 = sext i32 %add513 to i64
  %311 = load i16**, i16*** %inY.addr, align 8
  %arrayidx515 = getelementptr inbounds i16*, i16** %311, i64 %idxprom514
  %312 = load i16*, i16** %arrayidx515, align 8
  %arrayidx516 = getelementptr inbounds i16, i16* %312, i64 %idxprom512
  store i16 %306, i16* %arrayidx516, align 2
  br label %for.inc.517

for.inc.517:                                      ; preds = %for.body.502
  %313 = load i32, i32* %i, align 4
  %inc518 = add nsw i32 %313, 1
  store i32 %inc518, i32* %i, align 4
  br label %for.cond.499

for.end.519:                                      ; preds = %for.cond.499
  br label %for.inc.520

for.inc.520:                                      ; preds = %for.end.519
  %314 = load i32, i32* %j, align 4
  %inc521 = add nsw i32 %314, 1
  store i32 %inc521, i32* %j, align 4
  br label %for.cond.495

for.end.522:                                      ; preds = %for.cond.495
  br label %if.end.523

if.end.523:                                       ; preds = %for.end.522, %if.then.492
  br label %if.end.545

if.else.524:                                      ; preds = %sw.bb.488
  store i32 0, i32* %j, align 4
  br label %for.cond.525

for.cond.525:                                     ; preds = %for.inc.542, %if.else.524
  %315 = load i32, i32* %j, align 4
  %cmp526 = icmp slt i32 %315, 16
  br i1 %cmp526, label %for.body.528, label %for.end.544

for.body.528:                                     ; preds = %for.cond.525
  store i32 0, i32* %i, align 4
  br label %for.cond.529

for.cond.529:                                     ; preds = %for.inc.539, %for.body.528
  %316 = load i32, i32* %i, align 4
  %cmp530 = icmp slt i32 %316, 16
  br i1 %cmp530, label %for.body.532, label %for.end.541

for.body.532:                                     ; preds = %for.cond.529
  %317 = load i32, i32* %pos_x, align 4
  %318 = load i32, i32* %i, align 4
  %add533 = add nsw i32 %317, %318
  %idxprom534 = sext i32 %add533 to i64
  %319 = load i32, i32* %pos_y, align 4
  %320 = load i32, i32* %j, align 4
  %add535 = add nsw i32 %319, %320
  %idxprom536 = sext i32 %add535 to i64
  %321 = load i16**, i16*** %inY.addr, align 8
  %arrayidx537 = getelementptr inbounds i16*, i16** %321, i64 %idxprom536
  %322 = load i16*, i16** %arrayidx537, align 8
  %arrayidx538 = getelementptr inbounds i16, i16* %322, i64 %idxprom534
  store i16 127, i16* %arrayidx538, align 2
  br label %for.inc.539

for.inc.539:                                      ; preds = %for.body.532
  %323 = load i32, i32* %i, align 4
  %inc540 = add nsw i32 %323, 1
  store i32 %inc540, i32* %i, align 4
  br label %for.cond.529

for.end.541:                                      ; preds = %for.cond.529
  br label %for.inc.542

for.inc.542:                                      ; preds = %for.end.541
  %324 = load i32, i32* %j, align 4
  %inc543 = add nsw i32 %324, 1
  store i32 %inc543, i32* %j, align 4
  br label %for.cond.525

for.end.544:                                      ; preds = %for.cond.525
  br label %if.end.545

if.end.545:                                       ; preds = %for.end.544, %if.end.523
  br label %sw.epilog

sw.epilog:                                        ; preds = %land.end.54, %if.end.545, %if.end.487, %if.end.321, %if.end
  ret void
}

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.ident = !{!0}

!0 = !{!"clang version 3.7.0 (tags/RELEASE_370/final)"}
