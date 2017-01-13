; ModuleID = './MultiSource.Applications.JM/25.ldecod.output.bc'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.storable_picture = type { i32, i32, i32, i32, i32, [50 x [6 x [33 x i64]]], [50 x [6 x [33 x i64]]], [50 x [6 x [33 x i64]]], [50 x [6 x [33 x i64]]], i32, i32, i32, i32, i32, i32, i32, i32, i32, i16, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i16**, i16***, i8*, i16**, i8***, i64***, i64***, i16****, i8**, i8**, %struct.storable_picture*, %struct.storable_picture*, %struct.storable_picture*, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [2 x i32], i32, %struct.DecRefPicMarking_s*, i32 }
%struct.DecRefPicMarking_s = type { i32, i32, i32, i32, i32, %struct.DecRefPicMarking_s* }
%struct.img_par = type { i32, i32, i32, i32, i32*, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [16 x [16 x i16]], [6 x [32 x i32]], [16 x [16 x i32]], [4 x [12 x [4 x [4 x i32]]]], [16 x i32], i8**, i32*, i32***, i32**, i32, i32, i32, i32, %struct.Slice*, %struct.macroblock*, i32, i32, i32, i32, i32, i32, %struct.DecRefPicMarking_s*, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [3 x i32], i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32***, i32***, i32****, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [3 x [2 x i32]], [3 x [2 x i32]], i32, i32, i64, i64, %struct.timeb, %struct.timeb, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.Slice = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, %struct.datapartition*, %struct.MotionInfoContexts*, %struct.TextureInfoContexts*, i32, i32*, i32*, i32*, i32, i32*, i32*, i32*, i32 (%struct.img_par*, %struct.inp_par*)*, i32, i32, i32, i32 }
%struct.datapartition = type { %struct.Bitstream*, %struct.DecodingEnvironment, i32 (%struct.syntaxelement*, %struct.img_par*, %struct.datapartition*)* }
%struct.Bitstream = type { i32, i32, i32, i32, i8*, i32 }
%struct.DecodingEnvironment = type { i32, i32, i32, i32, i32, i8*, i32* }
%struct.syntaxelement = type { i32, i32, i32, i32, i32, i32, i32, i32, void (i32, i32, i32*, i32*)*, void (%struct.syntaxelement*, %struct.img_par*, %struct.DecodingEnvironment*)* }
%struct.MotionInfoContexts = type { [4 x [11 x %struct.BiContextType]], [2 x [9 x %struct.BiContextType]], [2 x [10 x %struct.BiContextType]], [2 x [6 x %struct.BiContextType]], [4 x %struct.BiContextType], [4 x %struct.BiContextType], [3 x %struct.BiContextType] }
%struct.BiContextType = type { i16, i8 }
%struct.TextureInfoContexts = type { [2 x %struct.BiContextType], [4 x %struct.BiContextType], [3 x [4 x %struct.BiContextType]], [10 x [4 x %struct.BiContextType]], [10 x [15 x %struct.BiContextType]], [10 x [15 x %struct.BiContextType]], [10 x [5 x %struct.BiContextType]], [10 x [5 x %struct.BiContextType]], [10 x [15 x %struct.BiContextType]], [10 x [15 x %struct.BiContextType]] }
%struct.inp_par = type { [1000 x i8], [1000 x i8], [1000 x i8], i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.macroblock = type { i32, [2 x i32], i32, i32, %struct.macroblock*, %struct.macroblock*, i32, [2 x [4 x [4 x [2 x i32]]]], i32, i64, i64, i32, i32, [4 x i8], [4 x i8], i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.timeb = type { i64, i16, i16, i16 }
%struct.seq_parameter_set_rbsp_t = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [8 x i32], [6 x [16 x i32]], [2 x [64 x i32]], [6 x i32], [2 x i32], i32, i32, i32, i32, i32, i32, i32, i32, i32, [256 x i32], i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, %struct.vui_seq_parameters_t }
%struct.vui_seq_parameters_t = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, %struct.hrd_parameters_t, i32, %struct.hrd_parameters_t, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.hrd_parameters_t = type { i32, i32, i32, [32 x i32], [32 x i32], [32 x i32], i32, i32, i32, i32 }
%struct.frame_store = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, %struct.storable_picture*, %struct.storable_picture*, %struct.storable_picture* }
%struct.snr_par = type { i32, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float }
%struct.pic_parameter_set_rbsp_t = type { i32, i32, i32, i32, i32, i32, [8 x i32], [6 x [16 x i32]], [2 x [64 x i32]], [6 x i32], [2 x i32], i32, i32, i32, [8 x i32], [8 x i32], [8 x i32], i32, i32, i32, i32*, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct._IO_FILE = type { i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, %struct._IO_marker*, %struct._IO_FILE*, i32, i32, i64, i16, i8, [1 x i8], i8*, i64, i8*, i8*, i8*, i8*, i64, i32, [20 x i8] }
%struct._IO_marker = type { %struct._IO_marker*, %struct._IO_FILE*, i32 }

@pending_output = global %struct.storable_picture* null, align 8
@pending_output_state = global i32 0, align 4
@recovery_flag = global i32 0, align 4
@.str = private unnamed_addr constant [78 x i8] c"writing only to formats of 8, 16 or 32 bit allowed on big endian architecture\00", align 1
@write_out_picture.SubWidthC = private unnamed_addr constant [4 x i32] [i32 1, i32 2, i32 2, i32 1], align 16
@write_out_picture.SubHeightC = private unnamed_addr constant [4 x i32] [i32 1, i32 2, i32 1, i32 1], align 16
@img = external global %struct.img_par*, align 8
@active_sps = common global %struct.seq_parameter_set_rbsp_t* null, align 8
@.str.1 = private unnamed_addr constant [23 x i8] c"write_out_picture: buf\00", align 1
@input = external global %struct.inp_par*, align 8
@out_buffer = common global %struct.frame_store* null, align 8
@non_conforming_stream = external global i32, align 4
@p_ref = common global i32 0, align 4
@snr = external global %struct.snr_par*, align 8
@active_pps = common global %struct.pic_parameter_set_rbsp_t* null, align 8
@imgY_ref = common global i16** null, align 8
@imgUV_ref = common global i16*** null, align 8
@PicPos = common global i32** null, align 8
@ReMapRef = common global [20 x i32] zeroinitializer, align 16
@Bframe_ctr = common global i32 0, align 4
@frame_no = common global i32 0, align 4
@g_nFrame = common global i32 0, align 4
@TopFieldForSkip_Y = common global [16 x [16 x i32]] zeroinitializer, align 16
@TopFieldForSkip_UV = common global [2 x [16 x [16 x i32]]] zeroinitializer, align 16
@InvLevelScale4x4Luma_Intra = common global [6 x [4 x [4 x i32]]] zeroinitializer, align 16
@InvLevelScale4x4Chroma_Intra = common global [2 x [6 x [4 x [4 x i32]]]] zeroinitializer, align 16
@InvLevelScale4x4Luma_Inter = common global [6 x [4 x [4 x i32]]] zeroinitializer, align 16
@InvLevelScale4x4Chroma_Inter = common global [2 x [6 x [4 x [4 x i32]]]] zeroinitializer, align 16
@InvLevelScale8x8Luma_Intra = common global [6 x [8 x [8 x i32]]] zeroinitializer, align 16
@InvLevelScale8x8Luma_Inter = common global [6 x [8 x [8 x i32]]] zeroinitializer, align 16
@qmatrix = common global [8 x i32*] zeroinitializer, align 16
@errortext = common global [300 x i8] zeroinitializer, align 16
@tot_time = common global i64 0, align 8
@p_out = common global i32 0, align 4
@p_log = common global %struct._IO_FILE* null, align 8
@previous_frame_num = common global i32 0, align 4
@ref_flag = common global [17 x i32] zeroinitializer, align 16
@Is_primary_correct = common global i32 0, align 4
@Is_redundant_correct = common global i32 0, align 4
@redundant_slice_ref_idx = common global i32 0, align 4
@nal_startcode_follows = common global i32 (%struct.img_par*, i32)* null, align 8

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
  %ipos = alloca i32, align 4
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
  br label %if.end.154

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
  %tobool95 = icmp ne i32 %85, 0
  br i1 %tobool95, label %if.then.104, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.end
  %86 = load i32, i32* %crop_bottom.addr, align 4
  %tobool96 = icmp ne i32 %86, 0
  br i1 %tobool96, label %if.then.104, label %lor.lhs.false.97

lor.lhs.false.97:                                 ; preds = %lor.lhs.false
  %87 = load i32, i32* %crop_left.addr, align 4
  %tobool98 = icmp ne i32 %87, 0
  br i1 %tobool98, label %if.then.104, label %lor.lhs.false.99

lor.lhs.false.99:                                 ; preds = %lor.lhs.false.97
  %88 = load i32, i32* %crop_right.addr, align 4
  %tobool100 = icmp ne i32 %88, 0
  br i1 %tobool100, label %if.then.104, label %lor.lhs.false.101

lor.lhs.false.101:                                ; preds = %lor.lhs.false.99
  %89 = load i32, i32* %size, align 4
  %cmp102 = icmp ne i32 %89, 1
  br i1 %cmp102, label %if.then.104, label %if.else.133

if.then.104:                                      ; preds = %lor.lhs.false.101, %lor.lhs.false.99, %lor.lhs.false.97, %lor.lhs.false, %if.end
  %90 = load i32, i32* %crop_top.addr, align 4
  store i32 %90, i32* %i, align 4
  br label %for.cond.105

for.cond.105:                                     ; preds = %for.inc.130, %if.then.104
  %91 = load i32, i32* %i, align 4
  %92 = load i32, i32* %size_y.addr, align 4
  %93 = load i32, i32* %crop_bottom.addr, align 4
  %sub106 = sub nsw i32 %92, %93
  %cmp107 = icmp slt i32 %91, %sub106
  br i1 %cmp107, label %for.body.109, label %for.end.132

for.body.109:                                     ; preds = %for.cond.105
  %94 = load i32, i32* %i, align 4
  %95 = load i32, i32* %crop_top.addr, align 4
  %sub110 = sub nsw i32 %94, %95
  %96 = load i32, i32* %twidth, align 4
  %mul111 = mul nsw i32 %sub110, %96
  store i32 %mul111, i32* %ipos, align 4
  %97 = load i32, i32* %crop_left.addr, align 4
  store i32 %97, i32* %j, align 4
  br label %for.cond.112

for.cond.112:                                     ; preds = %for.inc.127, %for.body.109
  %98 = load i32, i32* %j, align 4
  %99 = load i32, i32* %size_x.addr, align 4
  %100 = load i32, i32* %crop_right.addr, align 4
  %sub113 = sub nsw i32 %99, %100
  %cmp114 = icmp slt i32 %98, %sub113
  br i1 %cmp114, label %for.body.116, label %for.end.129

for.body.116:                                     ; preds = %for.cond.112
  %101 = load i8*, i8** %buf.addr, align 8
  %102 = load i32, i32* %j, align 4
  %103 = load i32, i32* %crop_left.addr, align 4
  %sub117 = sub nsw i32 %102, %103
  %104 = load i32, i32* %ipos, align 4
  %add118 = add nsw i32 %sub117, %104
  %105 = load i32, i32* %symbol_size_in_bytes.addr, align 4
  %mul119 = mul nsw i32 %add118, %105
  %idx.ext120 = sext i32 %mul119 to i64
  %add.ptr121 = getelementptr inbounds i8, i8* %101, i64 %idx.ext120
  %106 = load i32, i32* %j, align 4
  %idxprom122 = sext i32 %106 to i64
  %107 = load i32, i32* %i, align 4
  %idxprom123 = sext i32 %107 to i64
  %108 = load i16**, i16*** %imgX.addr, align 8
  %arrayidx124 = getelementptr inbounds i16*, i16** %108, i64 %idxprom123
  %109 = load i16*, i16** %arrayidx124, align 8
  %arrayidx125 = getelementptr inbounds i16, i16* %109, i64 %idxprom122
  %110 = bitcast i16* %arrayidx125 to i8*
  %111 = load i32, i32* %size, align 4
  %conv126 = sext i32 %111 to i64
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %add.ptr121, i8* %110, i64 %conv126, i32 1, i1 false)
  br label %for.inc.127

for.inc.127:                                      ; preds = %for.body.116
  %112 = load i32, i32* %j, align 4
  %inc128 = add nsw i32 %112, 1
  store i32 %inc128, i32* %j, align 4
  br label %for.cond.112

for.end.129:                                      ; preds = %for.cond.112
  br label %for.inc.130

for.inc.130:                                      ; preds = %for.end.129
  %113 = load i32, i32* %i, align 4
  %inc131 = add nsw i32 %113, 1
  store i32 %inc131, i32* %i, align 4
  br label %for.cond.105

for.end.132:                                      ; preds = %for.cond.105
  br label %if.end.153

if.else.133:                                      ; preds = %lor.lhs.false.101
  store i32 0, i32* %i, align 4
  br label %for.cond.134

for.cond.134:                                     ; preds = %for.inc.150, %if.else.133
  %114 = load i32, i32* %i, align 4
  %115 = load i32, i32* %size_y.addr, align 4
  %cmp135 = icmp slt i32 %114, %115
  br i1 %cmp135, label %for.body.137, label %for.end.152

for.body.137:                                     ; preds = %for.cond.134
  store i32 0, i32* %j, align 4
  br label %for.cond.138

for.cond.138:                                     ; preds = %for.inc.147, %for.body.137
  %116 = load i32, i32* %j, align 4
  %117 = load i32, i32* %size_x.addr, align 4
  %cmp139 = icmp slt i32 %116, %117
  br i1 %cmp139, label %for.body.141, label %for.end.149

for.body.141:                                     ; preds = %for.cond.138
  %118 = load i32, i32* %j, align 4
  %idxprom142 = sext i32 %118 to i64
  %119 = load i32, i32* %i, align 4
  %idxprom143 = sext i32 %119 to i64
  %120 = load i16**, i16*** %imgX.addr, align 8
  %arrayidx144 = getelementptr inbounds i16*, i16** %120, i64 %idxprom143
  %121 = load i16*, i16** %arrayidx144, align 8
  %arrayidx145 = getelementptr inbounds i16, i16* %121, i64 %idxprom142
  %122 = load i16, i16* %arrayidx145, align 2
  %conv146 = trunc i16 %122 to i8
  %123 = load i8*, i8** %buf.addr, align 8
  %incdec.ptr = getelementptr inbounds i8, i8* %123, i32 1
  store i8* %incdec.ptr, i8** %buf.addr, align 8
  store i8 %conv146, i8* %123, align 1
  br label %for.inc.147

for.inc.147:                                      ; preds = %for.body.141
  %124 = load i32, i32* %j, align 4
  %inc148 = add nsw i32 %124, 1
  store i32 %inc148, i32* %j, align 4
  br label %for.cond.138

for.end.149:                                      ; preds = %for.cond.138
  br label %for.inc.150

for.inc.150:                                      ; preds = %for.end.149
  %125 = load i32, i32* %i, align 4
  %inc151 = add nsw i32 %125, 1
  store i32 %inc151, i32* %i, align 4
  br label %for.cond.134

for.end.152:                                      ; preds = %for.cond.134
  br label %if.end.153

if.end.153:                                       ; preds = %for.end.152, %for.end.132
  br label %if.end.154

if.end.154:                                       ; preds = %if.end.153, %sw.epilog
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
  %i = alloca i32, align 4
  %j = alloca i32, align 4
  %cr_val = alloca i16, align 2
  store %struct.storable_picture* %p, %struct.storable_picture** %p.addr, align 8
  store i32 %p_out, i32* %p_out.addr, align 4
  %0 = bitcast [4 x i32]* %SubWidthC to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %0, i8* bitcast ([4 x i32]* @write_out_picture.SubWidthC to i8*), i64 16, i32 16, i1 false)
  %1 = bitcast [4 x i32]* %SubHeightC to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %1, i8* bitcast ([4 x i32]* @write_out_picture.SubHeightC to i8*), i64 16, i32 16, i1 false)
  %2 = load %struct.img_par*, %struct.img_par** @img, align 8
  %pic_unit_bitsize_on_disk = getelementptr inbounds %struct.img_par, %struct.img_par* %2, i32 0, i32 100
  %3 = load i32, i32* %pic_unit_bitsize_on_disk, align 4
  %div = sdiv i32 %3, 8
  store i32 %div, i32* %symbol_size_in_bytes, align 4
  %4 = load %struct.seq_parameter_set_rbsp_t*, %struct.seq_parameter_set_rbsp_t** @active_sps, align 8
  %vui_seq_parameters = getelementptr inbounds %struct.seq_parameter_set_rbsp_t, %struct.seq_parameter_set_rbsp_t* %4, i32 0, i32 38
  %matrix_coefficients = getelementptr inbounds %struct.vui_seq_parameters_t, %struct.vui_seq_parameters_t* %vui_seq_parameters, i32 0, i32 12
  %5 = load i32, i32* %matrix_coefficients, align 4
  %cmp = icmp eq i32 %5, 0
  %conv = zext i1 %cmp to i32
  store i32 %conv, i32* %rgb_output, align 4
  %6 = load %struct.storable_picture*, %struct.storable_picture** %p.addr, align 8
  %non_existing = getelementptr inbounds %struct.storable_picture, %struct.storable_picture* %6, i32 0, i32 17
  %7 = load i32, i32* %non_existing, align 4
  %tobool = icmp ne i32 %7, 0
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  br label %return

if.end:                                           ; preds = %entry
  %8 = load %struct.storable_picture*, %struct.storable_picture** %p.addr, align 8
  %frame_cropping_flag = getelementptr inbounds %struct.storable_picture, %struct.storable_picture* %8, i32 0, i32 52
  %9 = load i32, i32* %frame_cropping_flag, align 4
  %tobool1 = icmp ne i32 %9, 0
  br i1 %tobool1, label %if.then.2, label %if.else

if.then.2:                                        ; preds = %if.end
  %10 = load %struct.storable_picture*, %struct.storable_picture** %p.addr, align 8
  %chroma_format_idc = getelementptr inbounds %struct.storable_picture, %struct.storable_picture* %10, i32 0, i32 50
  %11 = load i32, i32* %chroma_format_idc, align 4
  %idxprom = sext i32 %11 to i64
  %arrayidx = getelementptr inbounds [4 x i32], [4 x i32]* %SubWidthC, i32 0, i64 %idxprom
  %12 = load i32, i32* %arrayidx, align 4
  %13 = load %struct.storable_picture*, %struct.storable_picture** %p.addr, align 8
  %frame_cropping_rect_left_offset = getelementptr inbounds %struct.storable_picture, %struct.storable_picture* %13, i32 0, i32 53
  %14 = load i32, i32* %frame_cropping_rect_left_offset, align 4
  %mul = mul nsw i32 %12, %14
  store i32 %mul, i32* %crop_left, align 4
  %15 = load %struct.storable_picture*, %struct.storable_picture** %p.addr, align 8
  %chroma_format_idc3 = getelementptr inbounds %struct.storable_picture, %struct.storable_picture* %15, i32 0, i32 50
  %16 = load i32, i32* %chroma_format_idc3, align 4
  %idxprom4 = sext i32 %16 to i64
  %arrayidx5 = getelementptr inbounds [4 x i32], [4 x i32]* %SubWidthC, i32 0, i64 %idxprom4
  %17 = load i32, i32* %arrayidx5, align 4
  %18 = load %struct.storable_picture*, %struct.storable_picture** %p.addr, align 8
  %frame_cropping_rect_right_offset = getelementptr inbounds %struct.storable_picture, %struct.storable_picture* %18, i32 0, i32 54
  %19 = load i32, i32* %frame_cropping_rect_right_offset, align 4
  %mul6 = mul nsw i32 %17, %19
  store i32 %mul6, i32* %crop_right, align 4
  %20 = load %struct.storable_picture*, %struct.storable_picture** %p.addr, align 8
  %chroma_format_idc7 = getelementptr inbounds %struct.storable_picture, %struct.storable_picture* %20, i32 0, i32 50
  %21 = load i32, i32* %chroma_format_idc7, align 4
  %idxprom8 = sext i32 %21 to i64
  %arrayidx9 = getelementptr inbounds [4 x i32], [4 x i32]* %SubHeightC, i32 0, i64 %idxprom8
  %22 = load i32, i32* %arrayidx9, align 4
  %23 = load %struct.storable_picture*, %struct.storable_picture** %p.addr, align 8
  %frame_mbs_only_flag = getelementptr inbounds %struct.storable_picture, %struct.storable_picture* %23, i32 0, i32 51
  %24 = load i32, i32* %frame_mbs_only_flag, align 4
  %sub = sub nsw i32 2, %24
  %mul10 = mul nsw i32 %22, %sub
  %25 = load %struct.storable_picture*, %struct.storable_picture** %p.addr, align 8
  %frame_cropping_rect_top_offset = getelementptr inbounds %struct.storable_picture, %struct.storable_picture* %25, i32 0, i32 55
  %26 = load i32, i32* %frame_cropping_rect_top_offset, align 4
  %mul11 = mul nsw i32 %mul10, %26
  store i32 %mul11, i32* %crop_top, align 4
  %27 = load %struct.storable_picture*, %struct.storable_picture** %p.addr, align 8
  %chroma_format_idc12 = getelementptr inbounds %struct.storable_picture, %struct.storable_picture* %27, i32 0, i32 50
  %28 = load i32, i32* %chroma_format_idc12, align 4
  %idxprom13 = sext i32 %28 to i64
  %arrayidx14 = getelementptr inbounds [4 x i32], [4 x i32]* %SubHeightC, i32 0, i64 %idxprom13
  %29 = load i32, i32* %arrayidx14, align 4
  %30 = load %struct.storable_picture*, %struct.storable_picture** %p.addr, align 8
  %frame_mbs_only_flag15 = getelementptr inbounds %struct.storable_picture, %struct.storable_picture* %30, i32 0, i32 51
  %31 = load i32, i32* %frame_mbs_only_flag15, align 4
  %sub16 = sub nsw i32 2, %31
  %mul17 = mul nsw i32 %29, %sub16
  %32 = load %struct.storable_picture*, %struct.storable_picture** %p.addr, align 8
  %frame_cropping_rect_bottom_offset = getelementptr inbounds %struct.storable_picture, %struct.storable_picture* %32, i32 0, i32 56
  %33 = load i32, i32* %frame_cropping_rect_bottom_offset, align 4
  %mul18 = mul nsw i32 %mul17, %33
  store i32 %mul18, i32* %crop_bottom, align 4
  br label %if.end.19

if.else:                                          ; preds = %if.end
  store i32 0, i32* %crop_bottom, align 4
  store i32 0, i32* %crop_top, align 4
  store i32 0, i32* %crop_right, align 4
  store i32 0, i32* %crop_left, align 4
  br label %if.end.19

if.end.19:                                        ; preds = %if.else, %if.then.2
  %34 = load %struct.storable_picture*, %struct.storable_picture** %p.addr, align 8
  %size_x = getelementptr inbounds %struct.storable_picture, %struct.storable_picture* %34, i32 0, i32 19
  %35 = load i32, i32* %size_x, align 4
  %36 = load %struct.storable_picture*, %struct.storable_picture** %p.addr, align 8
  %size_y = getelementptr inbounds %struct.storable_picture, %struct.storable_picture* %36, i32 0, i32 20
  %37 = load i32, i32* %size_y, align 4
  %mul20 = mul nsw i32 %35, %37
  %38 = load i32, i32* %symbol_size_in_bytes, align 4
  %mul21 = mul nsw i32 %mul20, %38
  %conv22 = sext i32 %mul21 to i64
  %call = call noalias i8* @malloc(i64 %conv22) #1
  store i8* %call, i8** %buf, align 8
  %39 = load i8*, i8** %buf, align 8
  %cmp23 = icmp eq i8* null, %39
  br i1 %cmp23, label %if.then.25, label %if.end.26

if.then.25:                                       ; preds = %if.end.19
  call void @no_mem_exit(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.1, i32 0, i32 0))
  br label %if.end.26

if.end.26:                                        ; preds = %if.then.25, %if.end.19
  %40 = load i32, i32* %rgb_output, align 4
  %tobool27 = icmp ne i32 %40, 0
  br i1 %tobool27, label %if.then.28, label %if.end.81

if.then.28:                                       ; preds = %if.end.26
  %41 = load %struct.storable_picture*, %struct.storable_picture** %p.addr, align 8
  %frame_cropping_rect_left_offset29 = getelementptr inbounds %struct.storable_picture, %struct.storable_picture* %41, i32 0, i32 53
  %42 = load i32, i32* %frame_cropping_rect_left_offset29, align 4
  store i32 %42, i32* %crop_left, align 4
  %43 = load %struct.storable_picture*, %struct.storable_picture** %p.addr, align 8
  %frame_cropping_rect_right_offset30 = getelementptr inbounds %struct.storable_picture, %struct.storable_picture* %43, i32 0, i32 54
  %44 = load i32, i32* %frame_cropping_rect_right_offset30, align 4
  store i32 %44, i32* %crop_right, align 4
  %45 = load %struct.storable_picture*, %struct.storable_picture** %p.addr, align 8
  %frame_mbs_only_flag31 = getelementptr inbounds %struct.storable_picture, %struct.storable_picture* %45, i32 0, i32 51
  %46 = load i32, i32* %frame_mbs_only_flag31, align 4
  %sub32 = sub nsw i32 2, %46
  %47 = load %struct.storable_picture*, %struct.storable_picture** %p.addr, align 8
  %frame_cropping_rect_top_offset33 = getelementptr inbounds %struct.storable_picture, %struct.storable_picture* %47, i32 0, i32 55
  %48 = load i32, i32* %frame_cropping_rect_top_offset33, align 4
  %mul34 = mul nsw i32 %sub32, %48
  store i32 %mul34, i32* %crop_top, align 4
  %49 = load %struct.storable_picture*, %struct.storable_picture** %p.addr, align 8
  %frame_mbs_only_flag35 = getelementptr inbounds %struct.storable_picture, %struct.storable_picture* %49, i32 0, i32 51
  %50 = load i32, i32* %frame_mbs_only_flag35, align 4
  %sub36 = sub nsw i32 2, %50
  %51 = load %struct.storable_picture*, %struct.storable_picture** %p.addr, align 8
  %frame_cropping_rect_bottom_offset37 = getelementptr inbounds %struct.storable_picture, %struct.storable_picture* %51, i32 0, i32 56
  %52 = load i32, i32* %frame_cropping_rect_bottom_offset37, align 4
  %mul38 = mul nsw i32 %sub36, %52
  store i32 %mul38, i32* %crop_bottom, align 4
  %53 = load %struct.storable_picture*, %struct.storable_picture** %p.addr, align 8
  %imgUV = getelementptr inbounds %struct.storable_picture, %struct.storable_picture* %53, i32 0, i32 33
  %54 = load i16***, i16**** %imgUV, align 8
  %arrayidx39 = getelementptr inbounds i16**, i16*** %54, i64 1
  %55 = load i16**, i16*** %arrayidx39, align 8
  %56 = load i8*, i8** %buf, align 8
  %57 = load %struct.storable_picture*, %struct.storable_picture** %p.addr, align 8
  %size_x_cr = getelementptr inbounds %struct.storable_picture, %struct.storable_picture* %57, i32 0, i32 21
  %58 = load i32, i32* %size_x_cr, align 4
  %59 = load %struct.storable_picture*, %struct.storable_picture** %p.addr, align 8
  %size_y_cr = getelementptr inbounds %struct.storable_picture, %struct.storable_picture* %59, i32 0, i32 22
  %60 = load i32, i32* %size_y_cr, align 4
  %61 = load i32, i32* %symbol_size_in_bytes, align 4
  %62 = load i32, i32* %crop_left, align 4
  %63 = load i32, i32* %crop_right, align 4
  %64 = load i32, i32* %crop_top, align 4
  %65 = load i32, i32* %crop_bottom, align 4
  call void @img2buf(i16** %55, i8* %56, i32 %58, i32 %60, i32 %61, i32 %62, i32 %63, i32 %64, i32 %65)
  %66 = load i32, i32* %p_out.addr, align 4
  %67 = load i8*, i8** %buf, align 8
  %68 = load %struct.storable_picture*, %struct.storable_picture** %p.addr, align 8
  %size_y_cr40 = getelementptr inbounds %struct.storable_picture, %struct.storable_picture* %68, i32 0, i32 22
  %69 = load i32, i32* %size_y_cr40, align 4
  %70 = load i32, i32* %crop_bottom, align 4
  %sub41 = sub nsw i32 %69, %70
  %71 = load i32, i32* %crop_top, align 4
  %sub42 = sub nsw i32 %sub41, %71
  %72 = load %struct.storable_picture*, %struct.storable_picture** %p.addr, align 8
  %size_x_cr43 = getelementptr inbounds %struct.storable_picture, %struct.storable_picture* %72, i32 0, i32 21
  %73 = load i32, i32* %size_x_cr43, align 4
  %74 = load i32, i32* %crop_right, align 4
  %sub44 = sub nsw i32 %73, %74
  %75 = load i32, i32* %crop_left, align 4
  %sub45 = sub nsw i32 %sub44, %75
  %mul46 = mul nsw i32 %sub42, %sub45
  %76 = load i32, i32* %symbol_size_in_bytes, align 4
  %mul47 = mul nsw i32 %mul46, %76
  %conv48 = sext i32 %mul47 to i64
  %call49 = call i64 @write(i32 %66, i8* %67, i64 %conv48)
  %77 = load %struct.storable_picture*, %struct.storable_picture** %p.addr, align 8
  %frame_cropping_flag50 = getelementptr inbounds %struct.storable_picture, %struct.storable_picture* %77, i32 0, i32 52
  %78 = load i32, i32* %frame_cropping_flag50, align 4
  %tobool51 = icmp ne i32 %78, 0
  br i1 %tobool51, label %if.then.52, label %if.else.79

if.then.52:                                       ; preds = %if.then.28
  %79 = load %struct.storable_picture*, %struct.storable_picture** %p.addr, align 8
  %chroma_format_idc53 = getelementptr inbounds %struct.storable_picture, %struct.storable_picture* %79, i32 0, i32 50
  %80 = load i32, i32* %chroma_format_idc53, align 4
  %idxprom54 = sext i32 %80 to i64
  %arrayidx55 = getelementptr inbounds [4 x i32], [4 x i32]* %SubWidthC, i32 0, i64 %idxprom54
  %81 = load i32, i32* %arrayidx55, align 4
  %82 = load %struct.storable_picture*, %struct.storable_picture** %p.addr, align 8
  %frame_cropping_rect_left_offset56 = getelementptr inbounds %struct.storable_picture, %struct.storable_picture* %82, i32 0, i32 53
  %83 = load i32, i32* %frame_cropping_rect_left_offset56, align 4
  %mul57 = mul nsw i32 %81, %83
  store i32 %mul57, i32* %crop_left, align 4
  %84 = load %struct.storable_picture*, %struct.storable_picture** %p.addr, align 8
  %chroma_format_idc58 = getelementptr inbounds %struct.storable_picture, %struct.storable_picture* %84, i32 0, i32 50
  %85 = load i32, i32* %chroma_format_idc58, align 4
  %idxprom59 = sext i32 %85 to i64
  %arrayidx60 = getelementptr inbounds [4 x i32], [4 x i32]* %SubWidthC, i32 0, i64 %idxprom59
  %86 = load i32, i32* %arrayidx60, align 4
  %87 = load %struct.storable_picture*, %struct.storable_picture** %p.addr, align 8
  %frame_cropping_rect_right_offset61 = getelementptr inbounds %struct.storable_picture, %struct.storable_picture* %87, i32 0, i32 54
  %88 = load i32, i32* %frame_cropping_rect_right_offset61, align 4
  %mul62 = mul nsw i32 %86, %88
  store i32 %mul62, i32* %crop_right, align 4
  %89 = load %struct.storable_picture*, %struct.storable_picture** %p.addr, align 8
  %chroma_format_idc63 = getelementptr inbounds %struct.storable_picture, %struct.storable_picture* %89, i32 0, i32 50
  %90 = load i32, i32* %chroma_format_idc63, align 4
  %idxprom64 = sext i32 %90 to i64
  %arrayidx65 = getelementptr inbounds [4 x i32], [4 x i32]* %SubHeightC, i32 0, i64 %idxprom64
  %91 = load i32, i32* %arrayidx65, align 4
  %92 = load %struct.storable_picture*, %struct.storable_picture** %p.addr, align 8
  %frame_mbs_only_flag66 = getelementptr inbounds %struct.storable_picture, %struct.storable_picture* %92, i32 0, i32 51
  %93 = load i32, i32* %frame_mbs_only_flag66, align 4
  %sub67 = sub nsw i32 2, %93
  %mul68 = mul nsw i32 %91, %sub67
  %94 = load %struct.storable_picture*, %struct.storable_picture** %p.addr, align 8
  %frame_cropping_rect_top_offset69 = getelementptr inbounds %struct.storable_picture, %struct.storable_picture* %94, i32 0, i32 55
  %95 = load i32, i32* %frame_cropping_rect_top_offset69, align 4
  %mul70 = mul nsw i32 %mul68, %95
  store i32 %mul70, i32* %crop_top, align 4
  %96 = load %struct.storable_picture*, %struct.storable_picture** %p.addr, align 8
  %chroma_format_idc71 = getelementptr inbounds %struct.storable_picture, %struct.storable_picture* %96, i32 0, i32 50
  %97 = load i32, i32* %chroma_format_idc71, align 4
  %idxprom72 = sext i32 %97 to i64
  %arrayidx73 = getelementptr inbounds [4 x i32], [4 x i32]* %SubHeightC, i32 0, i64 %idxprom72
  %98 = load i32, i32* %arrayidx73, align 4
  %99 = load %struct.storable_picture*, %struct.storable_picture** %p.addr, align 8
  %frame_mbs_only_flag74 = getelementptr inbounds %struct.storable_picture, %struct.storable_picture* %99, i32 0, i32 51
  %100 = load i32, i32* %frame_mbs_only_flag74, align 4
  %sub75 = sub nsw i32 2, %100
  %mul76 = mul nsw i32 %98, %sub75
  %101 = load %struct.storable_picture*, %struct.storable_picture** %p.addr, align 8
  %frame_cropping_rect_bottom_offset77 = getelementptr inbounds %struct.storable_picture, %struct.storable_picture* %101, i32 0, i32 56
  %102 = load i32, i32* %frame_cropping_rect_bottom_offset77, align 4
  %mul78 = mul nsw i32 %mul76, %102
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
  %103 = load %struct.storable_picture*, %struct.storable_picture** %p.addr, align 8
  %imgY = getelementptr inbounds %struct.storable_picture, %struct.storable_picture* %103, i32 0, i32 32
  %104 = load i16**, i16*** %imgY, align 8
  %105 = load i8*, i8** %buf, align 8
  %106 = load %struct.storable_picture*, %struct.storable_picture** %p.addr, align 8
  %size_x82 = getelementptr inbounds %struct.storable_picture, %struct.storable_picture* %106, i32 0, i32 19
  %107 = load i32, i32* %size_x82, align 4
  %108 = load %struct.storable_picture*, %struct.storable_picture** %p.addr, align 8
  %size_y83 = getelementptr inbounds %struct.storable_picture, %struct.storable_picture* %108, i32 0, i32 20
  %109 = load i32, i32* %size_y83, align 4
  %110 = load i32, i32* %symbol_size_in_bytes, align 4
  %111 = load i32, i32* %crop_left, align 4
  %112 = load i32, i32* %crop_right, align 4
  %113 = load i32, i32* %crop_top, align 4
  %114 = load i32, i32* %crop_bottom, align 4
  call void @img2buf(i16** %104, i8* %105, i32 %107, i32 %109, i32 %110, i32 %111, i32 %112, i32 %113, i32 %114)
  %115 = load i32, i32* %p_out.addr, align 4
  %116 = load i8*, i8** %buf, align 8
  %117 = load %struct.storable_picture*, %struct.storable_picture** %p.addr, align 8
  %size_y84 = getelementptr inbounds %struct.storable_picture, %struct.storable_picture* %117, i32 0, i32 20
  %118 = load i32, i32* %size_y84, align 4
  %119 = load i32, i32* %crop_bottom, align 4
  %sub85 = sub nsw i32 %118, %119
  %120 = load i32, i32* %crop_top, align 4
  %sub86 = sub nsw i32 %sub85, %120
  %121 = load %struct.storable_picture*, %struct.storable_picture** %p.addr, align 8
  %size_x87 = getelementptr inbounds %struct.storable_picture, %struct.storable_picture* %121, i32 0, i32 19
  %122 = load i32, i32* %size_x87, align 4
  %123 = load i32, i32* %crop_right, align 4
  %sub88 = sub nsw i32 %122, %123
  %124 = load i32, i32* %crop_left, align 4
  %sub89 = sub nsw i32 %sub88, %124
  %mul90 = mul nsw i32 %sub86, %sub89
  %125 = load i32, i32* %symbol_size_in_bytes, align 4
  %mul91 = mul nsw i32 %mul90, %125
  %conv92 = sext i32 %mul91 to i64
  %call93 = call i64 @write(i32 %115, i8* %116, i64 %conv92)
  %126 = load %struct.storable_picture*, %struct.storable_picture** %p.addr, align 8
  %chroma_format_idc94 = getelementptr inbounds %struct.storable_picture, %struct.storable_picture* %126, i32 0, i32 50
  %127 = load i32, i32* %chroma_format_idc94, align 4
  %cmp95 = icmp ne i32 %127, 0
  br i1 %cmp95, label %if.then.97, label %if.else.139

if.then.97:                                       ; preds = %if.end.81
  %128 = load %struct.storable_picture*, %struct.storable_picture** %p.addr, align 8
  %frame_cropping_rect_left_offset98 = getelementptr inbounds %struct.storable_picture, %struct.storable_picture* %128, i32 0, i32 53
  %129 = load i32, i32* %frame_cropping_rect_left_offset98, align 4
  store i32 %129, i32* %crop_left, align 4
  %130 = load %struct.storable_picture*, %struct.storable_picture** %p.addr, align 8
  %frame_cropping_rect_right_offset99 = getelementptr inbounds %struct.storable_picture, %struct.storable_picture* %130, i32 0, i32 54
  %131 = load i32, i32* %frame_cropping_rect_right_offset99, align 4
  store i32 %131, i32* %crop_right, align 4
  %132 = load %struct.storable_picture*, %struct.storable_picture** %p.addr, align 8
  %frame_mbs_only_flag100 = getelementptr inbounds %struct.storable_picture, %struct.storable_picture* %132, i32 0, i32 51
  %133 = load i32, i32* %frame_mbs_only_flag100, align 4
  %sub101 = sub nsw i32 2, %133
  %134 = load %struct.storable_picture*, %struct.storable_picture** %p.addr, align 8
  %frame_cropping_rect_top_offset102 = getelementptr inbounds %struct.storable_picture, %struct.storable_picture* %134, i32 0, i32 55
  %135 = load i32, i32* %frame_cropping_rect_top_offset102, align 4
  %mul103 = mul nsw i32 %sub101, %135
  store i32 %mul103, i32* %crop_top, align 4
  %136 = load %struct.storable_picture*, %struct.storable_picture** %p.addr, align 8
  %frame_mbs_only_flag104 = getelementptr inbounds %struct.storable_picture, %struct.storable_picture* %136, i32 0, i32 51
  %137 = load i32, i32* %frame_mbs_only_flag104, align 4
  %sub105 = sub nsw i32 2, %137
  %138 = load %struct.storable_picture*, %struct.storable_picture** %p.addr, align 8
  %frame_cropping_rect_bottom_offset106 = getelementptr inbounds %struct.storable_picture, %struct.storable_picture* %138, i32 0, i32 56
  %139 = load i32, i32* %frame_cropping_rect_bottom_offset106, align 4
  %mul107 = mul nsw i32 %sub105, %139
  store i32 %mul107, i32* %crop_bottom, align 4
  %140 = load %struct.storable_picture*, %struct.storable_picture** %p.addr, align 8
  %imgUV108 = getelementptr inbounds %struct.storable_picture, %struct.storable_picture* %140, i32 0, i32 33
  %141 = load i16***, i16**** %imgUV108, align 8
  %arrayidx109 = getelementptr inbounds i16**, i16*** %141, i64 0
  %142 = load i16**, i16*** %arrayidx109, align 8
  %143 = load i8*, i8** %buf, align 8
  %144 = load %struct.storable_picture*, %struct.storable_picture** %p.addr, align 8
  %size_x_cr110 = getelementptr inbounds %struct.storable_picture, %struct.storable_picture* %144, i32 0, i32 21
  %145 = load i32, i32* %size_x_cr110, align 4
  %146 = load %struct.storable_picture*, %struct.storable_picture** %p.addr, align 8
  %size_y_cr111 = getelementptr inbounds %struct.storable_picture, %struct.storable_picture* %146, i32 0, i32 22
  %147 = load i32, i32* %size_y_cr111, align 4
  %148 = load i32, i32* %symbol_size_in_bytes, align 4
  %149 = load i32, i32* %crop_left, align 4
  %150 = load i32, i32* %crop_right, align 4
  %151 = load i32, i32* %crop_top, align 4
  %152 = load i32, i32* %crop_bottom, align 4
  call void @img2buf(i16** %142, i8* %143, i32 %145, i32 %147, i32 %148, i32 %149, i32 %150, i32 %151, i32 %152)
  %153 = load i32, i32* %p_out.addr, align 4
  %154 = load i8*, i8** %buf, align 8
  %155 = load %struct.storable_picture*, %struct.storable_picture** %p.addr, align 8
  %size_y_cr112 = getelementptr inbounds %struct.storable_picture, %struct.storable_picture* %155, i32 0, i32 22
  %156 = load i32, i32* %size_y_cr112, align 4
  %157 = load i32, i32* %crop_bottom, align 4
  %sub113 = sub nsw i32 %156, %157
  %158 = load i32, i32* %crop_top, align 4
  %sub114 = sub nsw i32 %sub113, %158
  %159 = load %struct.storable_picture*, %struct.storable_picture** %p.addr, align 8
  %size_x_cr115 = getelementptr inbounds %struct.storable_picture, %struct.storable_picture* %159, i32 0, i32 21
  %160 = load i32, i32* %size_x_cr115, align 4
  %161 = load i32, i32* %crop_right, align 4
  %sub116 = sub nsw i32 %160, %161
  %162 = load i32, i32* %crop_left, align 4
  %sub117 = sub nsw i32 %sub116, %162
  %mul118 = mul nsw i32 %sub114, %sub117
  %163 = load i32, i32* %symbol_size_in_bytes, align 4
  %mul119 = mul nsw i32 %mul118, %163
  %conv120 = sext i32 %mul119 to i64
  %call121 = call i64 @write(i32 %153, i8* %154, i64 %conv120)
  %164 = load i32, i32* %rgb_output, align 4
  %tobool122 = icmp ne i32 %164, 0
  br i1 %tobool122, label %if.end.138, label %if.then.123

if.then.123:                                      ; preds = %if.then.97
  %165 = load %struct.storable_picture*, %struct.storable_picture** %p.addr, align 8
  %imgUV124 = getelementptr inbounds %struct.storable_picture, %struct.storable_picture* %165, i32 0, i32 33
  %166 = load i16***, i16**** %imgUV124, align 8
  %arrayidx125 = getelementptr inbounds i16**, i16*** %166, i64 1
  %167 = load i16**, i16*** %arrayidx125, align 8
  %168 = load i8*, i8** %buf, align 8
  %169 = load %struct.storable_picture*, %struct.storable_picture** %p.addr, align 8
  %size_x_cr126 = getelementptr inbounds %struct.storable_picture, %struct.storable_picture* %169, i32 0, i32 21
  %170 = load i32, i32* %size_x_cr126, align 4
  %171 = load %struct.storable_picture*, %struct.storable_picture** %p.addr, align 8
  %size_y_cr127 = getelementptr inbounds %struct.storable_picture, %struct.storable_picture* %171, i32 0, i32 22
  %172 = load i32, i32* %size_y_cr127, align 4
  %173 = load i32, i32* %symbol_size_in_bytes, align 4
  %174 = load i32, i32* %crop_left, align 4
  %175 = load i32, i32* %crop_right, align 4
  %176 = load i32, i32* %crop_top, align 4
  %177 = load i32, i32* %crop_bottom, align 4
  call void @img2buf(i16** %167, i8* %168, i32 %170, i32 %172, i32 %173, i32 %174, i32 %175, i32 %176, i32 %177)
  %178 = load i32, i32* %p_out.addr, align 4
  %179 = load i8*, i8** %buf, align 8
  %180 = load %struct.storable_picture*, %struct.storable_picture** %p.addr, align 8
  %size_y_cr128 = getelementptr inbounds %struct.storable_picture, %struct.storable_picture* %180, i32 0, i32 22
  %181 = load i32, i32* %size_y_cr128, align 4
  %182 = load i32, i32* %crop_bottom, align 4
  %sub129 = sub nsw i32 %181, %182
  %183 = load i32, i32* %crop_top, align 4
  %sub130 = sub nsw i32 %sub129, %183
  %184 = load %struct.storable_picture*, %struct.storable_picture** %p.addr, align 8
  %size_x_cr131 = getelementptr inbounds %struct.storable_picture, %struct.storable_picture* %184, i32 0, i32 21
  %185 = load i32, i32* %size_x_cr131, align 4
  %186 = load i32, i32* %crop_right, align 4
  %sub132 = sub nsw i32 %185, %186
  %187 = load i32, i32* %crop_left, align 4
  %sub133 = sub nsw i32 %sub132, %187
  %mul134 = mul nsw i32 %sub130, %sub133
  %188 = load i32, i32* %symbol_size_in_bytes, align 4
  %mul135 = mul nsw i32 %mul134, %188
  %conv136 = sext i32 %mul135 to i64
  %call137 = call i64 @write(i32 %178, i8* %179, i64 %conv136)
  br label %if.end.138

if.end.138:                                       ; preds = %if.then.123, %if.then.97
  br label %if.end.206

if.else.139:                                      ; preds = %if.end.81
  %189 = load %struct.inp_par*, %struct.inp_par** @input, align 8
  %write_uv = getelementptr inbounds %struct.inp_par, %struct.inp_par* %189, i32 0, i32 6
  %190 = load i32, i32* %write_uv, align 4
  %tobool140 = icmp ne i32 %190, 0
  br i1 %tobool140, label %if.then.141, label %if.end.205

if.then.141:                                      ; preds = %if.else.139
  %191 = load %struct.img_par*, %struct.img_par** @img, align 8
  %bitdepth_luma = getelementptr inbounds %struct.img_par, %struct.img_par* %191, i32 0, i32 101
  %192 = load i32, i32* %bitdepth_luma, align 4
  %sub142 = sub nsw i32 %192, 1
  %shl = shl i32 1, %sub142
  %conv143 = trunc i32 %shl to i16
  store i16 %conv143, i16* %cr_val, align 2
  %193 = load %struct.storable_picture*, %struct.storable_picture** %p.addr, align 8
  %imgUV144 = getelementptr inbounds %struct.storable_picture, %struct.storable_picture* %193, i32 0, i32 33
  %194 = load %struct.storable_picture*, %struct.storable_picture** %p.addr, align 8
  %size_y145 = getelementptr inbounds %struct.storable_picture, %struct.storable_picture* %194, i32 0, i32 20
  %195 = load i32, i32* %size_y145, align 4
  %div146 = sdiv i32 %195, 2
  %196 = load %struct.storable_picture*, %struct.storable_picture** %p.addr, align 8
  %size_x147 = getelementptr inbounds %struct.storable_picture, %struct.storable_picture* %196, i32 0, i32 19
  %197 = load i32, i32* %size_x147, align 4
  %div148 = sdiv i32 %197, 2
  %call149 = call i32 @get_mem3Dpel(i16**** %imgUV144, i32 1, i32 %div146, i32 %div148)
  store i32 0, i32* %j, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc.166, %if.then.141
  %198 = load i32, i32* %j, align 4
  %199 = load %struct.storable_picture*, %struct.storable_picture** %p.addr, align 8
  %size_y150 = getelementptr inbounds %struct.storable_picture, %struct.storable_picture* %199, i32 0, i32 20
  %200 = load i32, i32* %size_y150, align 4
  %div151 = sdiv i32 %200, 2
  %cmp152 = icmp slt i32 %198, %div151
  br i1 %cmp152, label %for.body, label %for.end.168

for.body:                                         ; preds = %for.cond
  store i32 0, i32* %i, align 4
  br label %for.cond.154

for.cond.154:                                     ; preds = %for.inc, %for.body
  %201 = load i32, i32* %i, align 4
  %202 = load %struct.storable_picture*, %struct.storable_picture** %p.addr, align 8
  %size_x155 = getelementptr inbounds %struct.storable_picture, %struct.storable_picture* %202, i32 0, i32 19
  %203 = load i32, i32* %size_x155, align 4
  %div156 = sdiv i32 %203, 2
  %cmp157 = icmp slt i32 %201, %div156
  br i1 %cmp157, label %for.body.159, label %for.end

for.body.159:                                     ; preds = %for.cond.154
  %204 = load i16, i16* %cr_val, align 2
  %205 = load i32, i32* %i, align 4
  %idxprom160 = sext i32 %205 to i64
  %206 = load i32, i32* %j, align 4
  %idxprom161 = sext i32 %206 to i64
  %207 = load %struct.storable_picture*, %struct.storable_picture** %p.addr, align 8
  %imgUV162 = getelementptr inbounds %struct.storable_picture, %struct.storable_picture* %207, i32 0, i32 33
  %208 = load i16***, i16**** %imgUV162, align 8
  %arrayidx163 = getelementptr inbounds i16**, i16*** %208, i64 0
  %209 = load i16**, i16*** %arrayidx163, align 8
  %arrayidx164 = getelementptr inbounds i16*, i16** %209, i64 %idxprom161
  %210 = load i16*, i16** %arrayidx164, align 8
  %arrayidx165 = getelementptr inbounds i16, i16* %210, i64 %idxprom160
  store i16 %204, i16* %arrayidx165, align 2
  br label %for.inc

for.inc:                                          ; preds = %for.body.159
  %211 = load i32, i32* %i, align 4
  %inc = add nsw i32 %211, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond.154

for.end:                                          ; preds = %for.cond.154
  br label %for.inc.166

for.inc.166:                                      ; preds = %for.end
  %212 = load i32, i32* %j, align 4
  %inc167 = add nsw i32 %212, 1
  store i32 %inc167, i32* %j, align 4
  br label %for.cond

for.end.168:                                      ; preds = %for.cond
  %213 = load %struct.storable_picture*, %struct.storable_picture** %p.addr, align 8
  %imgUV169 = getelementptr inbounds %struct.storable_picture, %struct.storable_picture* %213, i32 0, i32 33
  %214 = load i16***, i16**** %imgUV169, align 8
  %arrayidx170 = getelementptr inbounds i16**, i16*** %214, i64 0
  %215 = load i16**, i16*** %arrayidx170, align 8
  %216 = load i8*, i8** %buf, align 8
  %217 = load %struct.storable_picture*, %struct.storable_picture** %p.addr, align 8
  %size_x171 = getelementptr inbounds %struct.storable_picture, %struct.storable_picture* %217, i32 0, i32 19
  %218 = load i32, i32* %size_x171, align 4
  %div172 = sdiv i32 %218, 2
  %219 = load %struct.storable_picture*, %struct.storable_picture** %p.addr, align 8
  %size_y173 = getelementptr inbounds %struct.storable_picture, %struct.storable_picture* %219, i32 0, i32 20
  %220 = load i32, i32* %size_y173, align 4
  %div174 = sdiv i32 %220, 2
  %221 = load i32, i32* %symbol_size_in_bytes, align 4
  %222 = load i32, i32* %crop_left, align 4
  %div175 = sdiv i32 %222, 2
  %223 = load i32, i32* %crop_right, align 4
  %div176 = sdiv i32 %223, 2
  %224 = load i32, i32* %crop_top, align 4
  %div177 = sdiv i32 %224, 2
  %225 = load i32, i32* %crop_bottom, align 4
  %div178 = sdiv i32 %225, 2
  call void @img2buf(i16** %215, i8* %216, i32 %div172, i32 %div174, i32 %221, i32 %div175, i32 %div176, i32 %div177, i32 %div178)
  %226 = load i32, i32* %p_out.addr, align 4
  %227 = load i8*, i8** %buf, align 8
  %228 = load i32, i32* %symbol_size_in_bytes, align 4
  %229 = load %struct.storable_picture*, %struct.storable_picture** %p.addr, align 8
  %size_y179 = getelementptr inbounds %struct.storable_picture, %struct.storable_picture* %229, i32 0, i32 20
  %230 = load i32, i32* %size_y179, align 4
  %231 = load i32, i32* %crop_bottom, align 4
  %sub180 = sub nsw i32 %230, %231
  %232 = load i32, i32* %crop_top, align 4
  %sub181 = sub nsw i32 %sub180, %232
  %mul182 = mul nsw i32 %228, %sub181
  %div183 = sdiv i32 %mul182, 2
  %233 = load %struct.storable_picture*, %struct.storable_picture** %p.addr, align 8
  %size_x184 = getelementptr inbounds %struct.storable_picture, %struct.storable_picture* %233, i32 0, i32 19
  %234 = load i32, i32* %size_x184, align 4
  %235 = load i32, i32* %crop_right, align 4
  %sub185 = sub nsw i32 %234, %235
  %236 = load i32, i32* %crop_left, align 4
  %sub186 = sub nsw i32 %sub185, %236
  %mul187 = mul nsw i32 %div183, %sub186
  %div188 = sdiv i32 %mul187, 2
  %conv189 = sext i32 %div188 to i64
  %call190 = call i64 @write(i32 %226, i8* %227, i64 %conv189)
  %237 = load i32, i32* %p_out.addr, align 4
  %238 = load i8*, i8** %buf, align 8
  %239 = load i32, i32* %symbol_size_in_bytes, align 4
  %240 = load %struct.storable_picture*, %struct.storable_picture** %p.addr, align 8
  %size_y191 = getelementptr inbounds %struct.storable_picture, %struct.storable_picture* %240, i32 0, i32 20
  %241 = load i32, i32* %size_y191, align 4
  %242 = load i32, i32* %crop_bottom, align 4
  %sub192 = sub nsw i32 %241, %242
  %243 = load i32, i32* %crop_top, align 4
  %sub193 = sub nsw i32 %sub192, %243
  %mul194 = mul nsw i32 %239, %sub193
  %div195 = sdiv i32 %mul194, 2
  %244 = load %struct.storable_picture*, %struct.storable_picture** %p.addr, align 8
  %size_x196 = getelementptr inbounds %struct.storable_picture, %struct.storable_picture* %244, i32 0, i32 19
  %245 = load i32, i32* %size_x196, align 4
  %246 = load i32, i32* %crop_right, align 4
  %sub197 = sub nsw i32 %245, %246
  %247 = load i32, i32* %crop_left, align 4
  %sub198 = sub nsw i32 %sub197, %247
  %mul199 = mul nsw i32 %div195, %sub198
  %div200 = sdiv i32 %mul199, 2
  %conv201 = sext i32 %div200 to i64
  %call202 = call i64 @write(i32 %237, i8* %238, i64 %conv201)
  %248 = load %struct.storable_picture*, %struct.storable_picture** %p.addr, align 8
  %imgUV203 = getelementptr inbounds %struct.storable_picture, %struct.storable_picture* %248, i32 0, i32 33
  %249 = load i16***, i16**** %imgUV203, align 8
  call void @free_mem3Dpel(i16*** %249, i32 1)
  %250 = load %struct.storable_picture*, %struct.storable_picture** %p.addr, align 8
  %imgUV204 = getelementptr inbounds %struct.storable_picture, %struct.storable_picture* %250, i32 0, i32 33
  store i16*** null, i16**** %imgUV204, align 8
  br label %if.end.205

if.end.205:                                       ; preds = %for.end.168, %if.else.139
  br label %if.end.206

if.end.206:                                       ; preds = %if.end.205, %if.end.138
  %251 = load i8*, i8** %buf, align 8
  call void @free(i8* %251) #1
  br label %return

return:                                           ; preds = %if.end.206, %if.then
  ret void
}

; Function Attrs: nounwind
declare noalias i8* @malloc(i64) #3

declare void @no_mem_exit(i8*) #2

declare i64 @write(i32, i8*, i64) #2

declare i32 @get_mem3Dpel(i16****, i32, i32, i32) #2

declare void @free_mem3Dpel(i16***, i32) #2

; Function Attrs: nounwind
declare void @free(i8*) #3

; Function Attrs: nounwind uwtable
define void @init_out_buffer() #0 {
entry:
  %call = call %struct.frame_store* @alloc_frame_store()
  store %struct.frame_store* %call, %struct.frame_store** @out_buffer, align 8
  ret void
}

declare %struct.frame_store* @alloc_frame_store() #2

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
  %j = alloca i32, align 4
  store %struct.storable_picture* %p, %struct.storable_picture** %p.addr, align 8
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc.6, %entry
  %0 = load i32, i32* %i, align 4
  %1 = load %struct.storable_picture*, %struct.storable_picture** %p.addr, align 8
  %size_y = getelementptr inbounds %struct.storable_picture, %struct.storable_picture* %1, i32 0, i32 20
  %2 = load i32, i32* %size_y, align 4
  %cmp = icmp slt i32 %0, %2
  br i1 %cmp, label %for.body, label %for.end.8

for.body:                                         ; preds = %for.cond
  store i32 0, i32* %j, align 4
  br label %for.cond.1

for.cond.1:                                       ; preds = %for.inc, %for.body
  %3 = load i32, i32* %j, align 4
  %4 = load %struct.storable_picture*, %struct.storable_picture** %p.addr, align 8
  %size_x = getelementptr inbounds %struct.storable_picture, %struct.storable_picture* %4, i32 0, i32 19
  %5 = load i32, i32* %size_x, align 4
  %cmp2 = icmp slt i32 %3, %5
  br i1 %cmp2, label %for.body.3, label %for.end

for.body.3:                                       ; preds = %for.cond.1
  %6 = load %struct.img_par*, %struct.img_par** @img, align 8
  %dc_pred_value_luma = getelementptr inbounds %struct.img_par, %struct.img_par* %6, i32 0, i32 105
  %7 = load i32, i32* %dc_pred_value_luma, align 4
  %conv = trunc i32 %7 to i16
  %8 = load i32, i32* %j, align 4
  %idxprom = sext i32 %8 to i64
  %9 = load i32, i32* %i, align 4
  %idxprom4 = sext i32 %9 to i64
  %10 = load %struct.storable_picture*, %struct.storable_picture** %p.addr, align 8
  %imgY = getelementptr inbounds %struct.storable_picture, %struct.storable_picture* %10, i32 0, i32 32
  %11 = load i16**, i16*** %imgY, align 8
  %arrayidx = getelementptr inbounds i16*, i16** %11, i64 %idxprom4
  %12 = load i16*, i16** %arrayidx, align 8
  %arrayidx5 = getelementptr inbounds i16, i16* %12, i64 %idxprom
  store i16 %conv, i16* %arrayidx5, align 2
  br label %for.inc

for.inc:                                          ; preds = %for.body.3
  %13 = load i32, i32* %j, align 4
  %inc = add nsw i32 %13, 1
  store i32 %inc, i32* %j, align 4
  br label %for.cond.1

for.end:                                          ; preds = %for.cond.1
  br label %for.inc.6

for.inc.6:                                        ; preds = %for.end
  %14 = load i32, i32* %i, align 4
  %inc7 = add nsw i32 %14, 1
  store i32 %inc7, i32* %i, align 4
  br label %for.cond

for.end.8:                                        ; preds = %for.cond
  store i32 0, i32* %i, align 4
  br label %for.cond.9

for.cond.9:                                       ; preds = %for.inc.26, %for.end.8
  %15 = load i32, i32* %i, align 4
  %16 = load %struct.storable_picture*, %struct.storable_picture** %p.addr, align 8
  %size_y_cr = getelementptr inbounds %struct.storable_picture, %struct.storable_picture* %16, i32 0, i32 22
  %17 = load i32, i32* %size_y_cr, align 4
  %cmp10 = icmp slt i32 %15, %17
  br i1 %cmp10, label %for.body.12, label %for.end.28

for.body.12:                                      ; preds = %for.cond.9
  store i32 0, i32* %j, align 4
  br label %for.cond.13

for.cond.13:                                      ; preds = %for.inc.23, %for.body.12
  %18 = load i32, i32* %j, align 4
  %19 = load %struct.storable_picture*, %struct.storable_picture** %p.addr, align 8
  %size_x_cr = getelementptr inbounds %struct.storable_picture, %struct.storable_picture* %19, i32 0, i32 21
  %20 = load i32, i32* %size_x_cr, align 4
  %cmp14 = icmp slt i32 %18, %20
  br i1 %cmp14, label %for.body.16, label %for.end.25

for.body.16:                                      ; preds = %for.cond.13
  %21 = load %struct.img_par*, %struct.img_par** @img, align 8
  %dc_pred_value_chroma = getelementptr inbounds %struct.img_par, %struct.img_par* %21, i32 0, i32 106
  %22 = load i32, i32* %dc_pred_value_chroma, align 4
  %conv17 = trunc i32 %22 to i16
  %23 = load i32, i32* %j, align 4
  %idxprom18 = sext i32 %23 to i64
  %24 = load i32, i32* %i, align 4
  %idxprom19 = sext i32 %24 to i64
  %25 = load %struct.storable_picture*, %struct.storable_picture** %p.addr, align 8
  %imgUV = getelementptr inbounds %struct.storable_picture, %struct.storable_picture* %25, i32 0, i32 33
  %26 = load i16***, i16**** %imgUV, align 8
  %arrayidx20 = getelementptr inbounds i16**, i16*** %26, i64 0
  %27 = load i16**, i16*** %arrayidx20, align 8
  %arrayidx21 = getelementptr inbounds i16*, i16** %27, i64 %idxprom19
  %28 = load i16*, i16** %arrayidx21, align 8
  %arrayidx22 = getelementptr inbounds i16, i16* %28, i64 %idxprom18
  store i16 %conv17, i16* %arrayidx22, align 2
  br label %for.inc.23

for.inc.23:                                       ; preds = %for.body.16
  %29 = load i32, i32* %j, align 4
  %inc24 = add nsw i32 %29, 1
  store i32 %inc24, i32* %j, align 4
  br label %for.cond.13

for.end.25:                                       ; preds = %for.cond.13
  br label %for.inc.26

for.inc.26:                                       ; preds = %for.end.25
  %30 = load i32, i32* %i, align 4
  %inc27 = add nsw i32 %30, 1
  store i32 %inc27, i32* %i, align 4
  br label %for.cond.9

for.end.28:                                       ; preds = %for.cond.9
  store i32 0, i32* %i, align 4
  br label %for.cond.29

for.cond.29:                                      ; preds = %for.inc.50, %for.end.28
  %31 = load i32, i32* %i, align 4
  %32 = load %struct.storable_picture*, %struct.storable_picture** %p.addr, align 8
  %size_y_cr30 = getelementptr inbounds %struct.storable_picture, %struct.storable_picture* %32, i32 0, i32 22
  %33 = load i32, i32* %size_y_cr30, align 4
  %cmp31 = icmp slt i32 %31, %33
  br i1 %cmp31, label %for.body.33, label %for.end.52

for.body.33:                                      ; preds = %for.cond.29
  store i32 0, i32* %j, align 4
  br label %for.cond.34

for.cond.34:                                      ; preds = %for.inc.47, %for.body.33
  %34 = load i32, i32* %j, align 4
  %35 = load %struct.storable_picture*, %struct.storable_picture** %p.addr, align 8
  %size_x_cr35 = getelementptr inbounds %struct.storable_picture, %struct.storable_picture* %35, i32 0, i32 21
  %36 = load i32, i32* %size_x_cr35, align 4
  %cmp36 = icmp slt i32 %34, %36
  br i1 %cmp36, label %for.body.38, label %for.end.49

for.body.38:                                      ; preds = %for.cond.34
  %37 = load %struct.img_par*, %struct.img_par** @img, align 8
  %dc_pred_value_chroma39 = getelementptr inbounds %struct.img_par, %struct.img_par* %37, i32 0, i32 106
  %38 = load i32, i32* %dc_pred_value_chroma39, align 4
  %conv40 = trunc i32 %38 to i16
  %39 = load i32, i32* %j, align 4
  %idxprom41 = sext i32 %39 to i64
  %40 = load i32, i32* %i, align 4
  %idxprom42 = sext i32 %40 to i64
  %41 = load %struct.storable_picture*, %struct.storable_picture** %p.addr, align 8
  %imgUV43 = getelementptr inbounds %struct.storable_picture, %struct.storable_picture* %41, i32 0, i32 33
  %42 = load i16***, i16**** %imgUV43, align 8
  %arrayidx44 = getelementptr inbounds i16**, i16*** %42, i64 1
  %43 = load i16**, i16*** %arrayidx44, align 8
  %arrayidx45 = getelementptr inbounds i16*, i16** %43, i64 %idxprom42
  %44 = load i16*, i16** %arrayidx45, align 8
  %arrayidx46 = getelementptr inbounds i16, i16* %44, i64 %idxprom41
  store i16 %conv40, i16* %arrayidx46, align 2
  br label %for.inc.47

for.inc.47:                                       ; preds = %for.body.38
  %45 = load i32, i32* %j, align 4
  %inc48 = add nsw i32 %45, 1
  store i32 %inc48, i32* %j, align 4
  br label %for.cond.34

for.end.49:                                       ; preds = %for.cond.34
  br label %for.inc.50

for.inc.50:                                       ; preds = %for.end.49
  %46 = load i32, i32* %i, align 4
  %inc51 = add nsw i32 %46, 1
  store i32 %inc51, i32* %i, align 4
  br label %for.cond.29

for.end.52:                                       ; preds = %for.cond.29
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
  %top_field = getelementptr inbounds %struct.frame_store, %struct.frame_store* %2, i32 0, i32 13
  %3 = load %struct.storable_picture*, %struct.storable_picture** %top_field, align 8
  store %struct.storable_picture* %3, %struct.storable_picture** %p, align 8
  %4 = load %struct.storable_picture*, %struct.storable_picture** %p, align 8
  %size_x = getelementptr inbounds %struct.storable_picture, %struct.storable_picture* %4, i32 0, i32 19
  %5 = load i32, i32* %size_x, align 4
  %6 = load %struct.storable_picture*, %struct.storable_picture** %p, align 8
  %size_y = getelementptr inbounds %struct.storable_picture, %struct.storable_picture* %6, i32 0, i32 20
  %7 = load i32, i32* %size_y, align 4
  %mul = mul nsw i32 2, %7
  %8 = load %struct.storable_picture*, %struct.storable_picture** %p, align 8
  %size_x_cr = getelementptr inbounds %struct.storable_picture, %struct.storable_picture* %8, i32 0, i32 21
  %9 = load i32, i32* %size_x_cr, align 4
  %10 = load %struct.storable_picture*, %struct.storable_picture** %p, align 8
  %size_y_cr = getelementptr inbounds %struct.storable_picture, %struct.storable_picture* %10, i32 0, i32 22
  %11 = load i32, i32* %size_y_cr, align 4
  %mul1 = mul nsw i32 2, %11
  %call = call %struct.storable_picture* @alloc_storable_picture(i32 2, i32 %5, i32 %mul, i32 %9, i32 %mul1)
  %12 = load %struct.frame_store*, %struct.frame_store** %fs.addr, align 8
  %bottom_field = getelementptr inbounds %struct.frame_store, %struct.frame_store* %12, i32 0, i32 14
  store %struct.storable_picture* %call, %struct.storable_picture** %bottom_field, align 8
  %13 = load %struct.storable_picture*, %struct.storable_picture** %p, align 8
  %chroma_format_idc = getelementptr inbounds %struct.storable_picture, %struct.storable_picture* %13, i32 0, i32 50
  %14 = load i32, i32* %chroma_format_idc, align 4
  %15 = load %struct.frame_store*, %struct.frame_store** %fs.addr, align 8
  %bottom_field2 = getelementptr inbounds %struct.frame_store, %struct.frame_store* %15, i32 0, i32 14
  %16 = load %struct.storable_picture*, %struct.storable_picture** %bottom_field2, align 8
  %chroma_format_idc3 = getelementptr inbounds %struct.storable_picture, %struct.storable_picture* %16, i32 0, i32 50
  store i32 %14, i32* %chroma_format_idc3, align 4
  %17 = load %struct.frame_store*, %struct.frame_store** %fs.addr, align 8
  %bottom_field4 = getelementptr inbounds %struct.frame_store, %struct.frame_store* %17, i32 0, i32 14
  %18 = load %struct.storable_picture*, %struct.storable_picture** %bottom_field4, align 8
  call void @clear_picture(%struct.storable_picture* %18)
  %19 = load %struct.frame_store*, %struct.frame_store** %fs.addr, align 8
  call void @dpb_combine_field_yuv(%struct.frame_store* %19)
  %20 = load %struct.frame_store*, %struct.frame_store** %fs.addr, align 8
  %frame = getelementptr inbounds %struct.frame_store, %struct.frame_store* %20, i32 0, i32 12
  %21 = load %struct.storable_picture*, %struct.storable_picture** %frame, align 8
  %22 = load i32, i32* %p_out.addr, align 4
  call void @write_picture(%struct.storable_picture* %21, i32 %22, i32 1)
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %23 = load %struct.frame_store*, %struct.frame_store** %fs.addr, align 8
  %is_used5 = getelementptr inbounds %struct.frame_store, %struct.frame_store* %23, i32 0, i32 0
  %24 = load i32, i32* %is_used5, align 4
  %and6 = and i32 %24, 2
  %tobool7 = icmp ne i32 %and6, 0
  br i1 %tobool7, label %if.then.8, label %if.end.43

if.then.8:                                        ; preds = %if.end
  %25 = load %struct.frame_store*, %struct.frame_store** %fs.addr, align 8
  %bottom_field9 = getelementptr inbounds %struct.frame_store, %struct.frame_store* %25, i32 0, i32 14
  %26 = load %struct.storable_picture*, %struct.storable_picture** %bottom_field9, align 8
  store %struct.storable_picture* %26, %struct.storable_picture** %p, align 8
  %27 = load %struct.storable_picture*, %struct.storable_picture** %p, align 8
  %size_x10 = getelementptr inbounds %struct.storable_picture, %struct.storable_picture* %27, i32 0, i32 19
  %28 = load i32, i32* %size_x10, align 4
  %29 = load %struct.storable_picture*, %struct.storable_picture** %p, align 8
  %size_y11 = getelementptr inbounds %struct.storable_picture, %struct.storable_picture* %29, i32 0, i32 20
  %30 = load i32, i32* %size_y11, align 4
  %mul12 = mul nsw i32 2, %30
  %31 = load %struct.storable_picture*, %struct.storable_picture** %p, align 8
  %size_x_cr13 = getelementptr inbounds %struct.storable_picture, %struct.storable_picture* %31, i32 0, i32 21
  %32 = load i32, i32* %size_x_cr13, align 4
  %33 = load %struct.storable_picture*, %struct.storable_picture** %p, align 8
  %size_y_cr14 = getelementptr inbounds %struct.storable_picture, %struct.storable_picture* %33, i32 0, i32 22
  %34 = load i32, i32* %size_y_cr14, align 4
  %mul15 = mul nsw i32 2, %34
  %call16 = call %struct.storable_picture* @alloc_storable_picture(i32 1, i32 %28, i32 %mul12, i32 %32, i32 %mul15)
  %35 = load %struct.frame_store*, %struct.frame_store** %fs.addr, align 8
  %top_field17 = getelementptr inbounds %struct.frame_store, %struct.frame_store* %35, i32 0, i32 13
  store %struct.storable_picture* %call16, %struct.storable_picture** %top_field17, align 8
  %36 = load %struct.storable_picture*, %struct.storable_picture** %p, align 8
  %chroma_format_idc18 = getelementptr inbounds %struct.storable_picture, %struct.storable_picture* %36, i32 0, i32 50
  %37 = load i32, i32* %chroma_format_idc18, align 4
  %38 = load %struct.frame_store*, %struct.frame_store** %fs.addr, align 8
  %top_field19 = getelementptr inbounds %struct.frame_store, %struct.frame_store* %38, i32 0, i32 13
  %39 = load %struct.storable_picture*, %struct.storable_picture** %top_field19, align 8
  %chroma_format_idc20 = getelementptr inbounds %struct.storable_picture, %struct.storable_picture* %39, i32 0, i32 50
  store i32 %37, i32* %chroma_format_idc20, align 4
  %40 = load %struct.frame_store*, %struct.frame_store** %fs.addr, align 8
  %top_field21 = getelementptr inbounds %struct.frame_store, %struct.frame_store* %40, i32 0, i32 13
  %41 = load %struct.storable_picture*, %struct.storable_picture** %top_field21, align 8
  call void @clear_picture(%struct.storable_picture* %41)
  %42 = load %struct.frame_store*, %struct.frame_store** %fs.addr, align 8
  %bottom_field22 = getelementptr inbounds %struct.frame_store, %struct.frame_store* %42, i32 0, i32 14
  %43 = load %struct.storable_picture*, %struct.storable_picture** %bottom_field22, align 8
  %frame_cropping_flag = getelementptr inbounds %struct.storable_picture, %struct.storable_picture* %43, i32 0, i32 52
  %44 = load i32, i32* %frame_cropping_flag, align 4
  %45 = load %struct.frame_store*, %struct.frame_store** %fs.addr, align 8
  %top_field23 = getelementptr inbounds %struct.frame_store, %struct.frame_store* %45, i32 0, i32 13
  %46 = load %struct.storable_picture*, %struct.storable_picture** %top_field23, align 8
  %frame_cropping_flag24 = getelementptr inbounds %struct.storable_picture, %struct.storable_picture* %46, i32 0, i32 52
  store i32 %44, i32* %frame_cropping_flag24, align 4
  %47 = load %struct.frame_store*, %struct.frame_store** %fs.addr, align 8
  %top_field25 = getelementptr inbounds %struct.frame_store, %struct.frame_store* %47, i32 0, i32 13
  %48 = load %struct.storable_picture*, %struct.storable_picture** %top_field25, align 8
  %frame_cropping_flag26 = getelementptr inbounds %struct.storable_picture, %struct.storable_picture* %48, i32 0, i32 52
  %49 = load i32, i32* %frame_cropping_flag26, align 4
  %tobool27 = icmp ne i32 %49, 0
  br i1 %tobool27, label %if.then.28, label %if.end.41

if.then.28:                                       ; preds = %if.then.8
  %50 = load %struct.frame_store*, %struct.frame_store** %fs.addr, align 8
  %bottom_field29 = getelementptr inbounds %struct.frame_store, %struct.frame_store* %50, i32 0, i32 14
  %51 = load %struct.storable_picture*, %struct.storable_picture** %bottom_field29, align 8
  %frame_cropping_rect_top_offset = getelementptr inbounds %struct.storable_picture, %struct.storable_picture* %51, i32 0, i32 55
  %52 = load i32, i32* %frame_cropping_rect_top_offset, align 4
  %53 = load %struct.frame_store*, %struct.frame_store** %fs.addr, align 8
  %top_field30 = getelementptr inbounds %struct.frame_store, %struct.frame_store* %53, i32 0, i32 13
  %54 = load %struct.storable_picture*, %struct.storable_picture** %top_field30, align 8
  %frame_cropping_rect_top_offset31 = getelementptr inbounds %struct.storable_picture, %struct.storable_picture* %54, i32 0, i32 55
  store i32 %52, i32* %frame_cropping_rect_top_offset31, align 4
  %55 = load %struct.frame_store*, %struct.frame_store** %fs.addr, align 8
  %bottom_field32 = getelementptr inbounds %struct.frame_store, %struct.frame_store* %55, i32 0, i32 14
  %56 = load %struct.storable_picture*, %struct.storable_picture** %bottom_field32, align 8
  %frame_cropping_rect_bottom_offset = getelementptr inbounds %struct.storable_picture, %struct.storable_picture* %56, i32 0, i32 56
  %57 = load i32, i32* %frame_cropping_rect_bottom_offset, align 4
  %58 = load %struct.frame_store*, %struct.frame_store** %fs.addr, align 8
  %top_field33 = getelementptr inbounds %struct.frame_store, %struct.frame_store* %58, i32 0, i32 13
  %59 = load %struct.storable_picture*, %struct.storable_picture** %top_field33, align 8
  %frame_cropping_rect_bottom_offset34 = getelementptr inbounds %struct.storable_picture, %struct.storable_picture* %59, i32 0, i32 56
  store i32 %57, i32* %frame_cropping_rect_bottom_offset34, align 4
  %60 = load %struct.frame_store*, %struct.frame_store** %fs.addr, align 8
  %bottom_field35 = getelementptr inbounds %struct.frame_store, %struct.frame_store* %60, i32 0, i32 14
  %61 = load %struct.storable_picture*, %struct.storable_picture** %bottom_field35, align 8
  %frame_cropping_rect_left_offset = getelementptr inbounds %struct.storable_picture, %struct.storable_picture* %61, i32 0, i32 53
  %62 = load i32, i32* %frame_cropping_rect_left_offset, align 4
  %63 = load %struct.frame_store*, %struct.frame_store** %fs.addr, align 8
  %top_field36 = getelementptr inbounds %struct.frame_store, %struct.frame_store* %63, i32 0, i32 13
  %64 = load %struct.storable_picture*, %struct.storable_picture** %top_field36, align 8
  %frame_cropping_rect_left_offset37 = getelementptr inbounds %struct.storable_picture, %struct.storable_picture* %64, i32 0, i32 53
  store i32 %62, i32* %frame_cropping_rect_left_offset37, align 4
  %65 = load %struct.frame_store*, %struct.frame_store** %fs.addr, align 8
  %bottom_field38 = getelementptr inbounds %struct.frame_store, %struct.frame_store* %65, i32 0, i32 14
  %66 = load %struct.storable_picture*, %struct.storable_picture** %bottom_field38, align 8
  %frame_cropping_rect_right_offset = getelementptr inbounds %struct.storable_picture, %struct.storable_picture* %66, i32 0, i32 54
  %67 = load i32, i32* %frame_cropping_rect_right_offset, align 4
  %68 = load %struct.frame_store*, %struct.frame_store** %fs.addr, align 8
  %top_field39 = getelementptr inbounds %struct.frame_store, %struct.frame_store* %68, i32 0, i32 13
  %69 = load %struct.storable_picture*, %struct.storable_picture** %top_field39, align 8
  %frame_cropping_rect_right_offset40 = getelementptr inbounds %struct.storable_picture, %struct.storable_picture* %69, i32 0, i32 54
  store i32 %67, i32* %frame_cropping_rect_right_offset40, align 4
  br label %if.end.41

if.end.41:                                        ; preds = %if.then.28, %if.then.8
  %70 = load %struct.frame_store*, %struct.frame_store** %fs.addr, align 8
  call void @dpb_combine_field_yuv(%struct.frame_store* %70)
  %71 = load %struct.frame_store*, %struct.frame_store** %fs.addr, align 8
  %frame42 = getelementptr inbounds %struct.frame_store, %struct.frame_store* %71, i32 0, i32 12
  %72 = load %struct.storable_picture*, %struct.storable_picture** %frame42, align 8
  %73 = load i32, i32* %p_out.addr, align 4
  call void @write_picture(%struct.storable_picture* %72, i32 %73, i32 2)
  br label %if.end.43

if.end.43:                                        ; preds = %if.end.41, %if.end
  %74 = load %struct.frame_store*, %struct.frame_store** %fs.addr, align 8
  %is_used44 = getelementptr inbounds %struct.frame_store, %struct.frame_store* %74, i32 0, i32 0
  store i32 3, i32* %is_used44, align 4
  ret void
}

declare %struct.storable_picture* @alloc_storable_picture(i32, i32, i32, i32, i32) #2

declare void @dpb_combine_field_yuv(%struct.frame_store*) #2

; Function Attrs: nounwind uwtable
define void @flush_direct_output(i32 %p_out) #0 {
entry:
  %p_out.addr = alloca i32, align 4
  store i32 %p_out, i32* %p_out.addr, align 4
  %0 = load %struct.frame_store*, %struct.frame_store** @out_buffer, align 8
  %1 = load i32, i32* %p_out.addr, align 4
  call void @write_unpaired_field(%struct.frame_store* %0, i32 %1)
  %2 = load %struct.frame_store*, %struct.frame_store** @out_buffer, align 8
  %frame = getelementptr inbounds %struct.frame_store, %struct.frame_store* %2, i32 0, i32 12
  %3 = load %struct.storable_picture*, %struct.storable_picture** %frame, align 8
  call void @free_storable_picture(%struct.storable_picture* %3)
  %4 = load %struct.frame_store*, %struct.frame_store** @out_buffer, align 8
  %frame1 = getelementptr inbounds %struct.frame_store, %struct.frame_store* %4, i32 0, i32 12
  store %struct.storable_picture* null, %struct.storable_picture** %frame1, align 8
  %5 = load %struct.frame_store*, %struct.frame_store** @out_buffer, align 8
  %top_field = getelementptr inbounds %struct.frame_store, %struct.frame_store* %5, i32 0, i32 13
  %6 = load %struct.storable_picture*, %struct.storable_picture** %top_field, align 8
  call void @free_storable_picture(%struct.storable_picture* %6)
  %7 = load %struct.frame_store*, %struct.frame_store** @out_buffer, align 8
  %top_field2 = getelementptr inbounds %struct.frame_store, %struct.frame_store* %7, i32 0, i32 13
  store %struct.storable_picture* null, %struct.storable_picture** %top_field2, align 8
  %8 = load %struct.frame_store*, %struct.frame_store** @out_buffer, align 8
  %bottom_field = getelementptr inbounds %struct.frame_store, %struct.frame_store* %8, i32 0, i32 14
  %9 = load %struct.storable_picture*, %struct.storable_picture** %bottom_field, align 8
  call void @free_storable_picture(%struct.storable_picture* %9)
  %10 = load %struct.frame_store*, %struct.frame_store** @out_buffer, align 8
  %bottom_field3 = getelementptr inbounds %struct.frame_store, %struct.frame_store* %10, i32 0, i32 14
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
  br label %if.end.6

if.else:                                          ; preds = %entry
  %5 = load %struct.frame_store*, %struct.frame_store** %fs.addr, align 8
  %recovery_frame = getelementptr inbounds %struct.frame_store, %struct.frame_store* %5, i32 0, i32 6
  %6 = load i32, i32* %recovery_frame, align 4
  %tobool = icmp ne i32 %6, 0
  br i1 %tobool, label %if.then.1, label %if.end

if.then.1:                                        ; preds = %if.else
  store i32 1, i32* @recovery_flag, align 4
  br label %if.end

if.end:                                           ; preds = %if.then.1, %if.else
  %7 = load i32, i32* @non_conforming_stream, align 4
  %tobool2 = icmp ne i32 %7, 0
  br i1 %tobool2, label %lor.lhs.false, label %if.then.4

lor.lhs.false:                                    ; preds = %if.end
  %8 = load i32, i32* @recovery_flag, align 4
  %tobool3 = icmp ne i32 %8, 0
  br i1 %tobool3, label %if.then.4, label %if.end.5

if.then.4:                                        ; preds = %lor.lhs.false, %if.end
  %9 = load %struct.frame_store*, %struct.frame_store** %fs.addr, align 8
  %frame = getelementptr inbounds %struct.frame_store, %struct.frame_store* %9, i32 0, i32 12
  %10 = load %struct.storable_picture*, %struct.storable_picture** %frame, align 8
  %11 = load i32, i32* %p_out.addr, align 4
  call void @write_picture(%struct.storable_picture* %10, i32 %11, i32 0)
  br label %if.end.5

if.end.5:                                         ; preds = %if.then.4, %lor.lhs.false
  br label %if.end.6

if.end.6:                                         ; preds = %if.end.5, %if.then
  %12 = load %struct.frame_store*, %struct.frame_store** %fs.addr, align 8
  %is_output = getelementptr inbounds %struct.frame_store, %struct.frame_store* %12, i32 0, i32 9
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
  br i1 %cmp, label %if.then, label %if.end.3

if.then:                                          ; preds = %entry
  %2 = load i32, i32* %p_out.addr, align 4
  call void @flush_direct_output(i32 %2)
  %3 = load %struct.storable_picture*, %struct.storable_picture** %p.addr, align 8
  %4 = load i32, i32* %p_out.addr, align 4
  call void @write_picture(%struct.storable_picture* %3, i32 %4, i32 0)
  %5 = load i32, i32* @p_ref, align 4
  %cmp1 = icmp ne i32 -1, %5
  br i1 %cmp1, label %land.lhs.true, label %if.end

land.lhs.true:                                    ; preds = %if.then
  %6 = load %struct.inp_par*, %struct.inp_par** @input, align 8
  %silent = getelementptr inbounds %struct.inp_par, %struct.inp_par* %6, i32 0, i32 7
  %7 = load i32, i32* %silent, align 4
  %tobool = icmp ne i32 %7, 0
  br i1 %tobool, label %if.end, label %if.then.2

if.then.2:                                        ; preds = %land.lhs.true
  %8 = load %struct.snr_par*, %struct.snr_par** @snr, align 8
  %9 = load %struct.storable_picture*, %struct.storable_picture** %p.addr, align 8
  %10 = load i32, i32* @p_ref, align 4
  call void @find_snr(%struct.snr_par* %8, %struct.storable_picture* %9, i32 %10)
  br label %if.end

if.end:                                           ; preds = %if.then.2, %land.lhs.true, %if.then
  %11 = load %struct.storable_picture*, %struct.storable_picture** %p.addr, align 8
  call void @free_storable_picture(%struct.storable_picture* %11)
  br label %if.end.40

if.end.3:                                         ; preds = %entry
  %12 = load %struct.storable_picture*, %struct.storable_picture** %p.addr, align 8
  %structure4 = getelementptr inbounds %struct.storable_picture, %struct.storable_picture* %12, i32 0, i32 0
  %13 = load i32, i32* %structure4, align 4
  %cmp5 = icmp eq i32 %13, 1
  br i1 %cmp5, label %if.then.6, label %if.end.11

if.then.6:                                        ; preds = %if.end.3
  %14 = load %struct.frame_store*, %struct.frame_store** @out_buffer, align 8
  %is_used = getelementptr inbounds %struct.frame_store, %struct.frame_store* %14, i32 0, i32 0
  %15 = load i32, i32* %is_used, align 4
  %and = and i32 %15, 1
  %tobool7 = icmp ne i32 %and, 0
  br i1 %tobool7, label %if.then.8, label %if.end.9

if.then.8:                                        ; preds = %if.then.6
  %16 = load i32, i32* %p_out.addr, align 4
  call void @flush_direct_output(i32 %16)
  br label %if.end.9

if.end.9:                                         ; preds = %if.then.8, %if.then.6
  %17 = load %struct.storable_picture*, %struct.storable_picture** %p.addr, align 8
  %18 = load %struct.frame_store*, %struct.frame_store** @out_buffer, align 8
  %top_field = getelementptr inbounds %struct.frame_store, %struct.frame_store* %18, i32 0, i32 13
  store %struct.storable_picture* %17, %struct.storable_picture** %top_field, align 8
  %19 = load %struct.frame_store*, %struct.frame_store** @out_buffer, align 8
  %is_used10 = getelementptr inbounds %struct.frame_store, %struct.frame_store* %19, i32 0, i32 0
  %20 = load i32, i32* %is_used10, align 4
  %or = or i32 %20, 1
  store i32 %or, i32* %is_used10, align 4
  br label %if.end.11

if.end.11:                                        ; preds = %if.end.9, %if.end.3
  %21 = load %struct.storable_picture*, %struct.storable_picture** %p.addr, align 8
  %structure12 = getelementptr inbounds %struct.storable_picture, %struct.storable_picture* %21, i32 0, i32 0
  %22 = load i32, i32* %structure12, align 4
  %cmp13 = icmp eq i32 %22, 2
  br i1 %cmp13, label %if.then.14, label %if.end.22

if.then.14:                                       ; preds = %if.end.11
  %23 = load %struct.frame_store*, %struct.frame_store** @out_buffer, align 8
  %is_used15 = getelementptr inbounds %struct.frame_store, %struct.frame_store* %23, i32 0, i32 0
  %24 = load i32, i32* %is_used15, align 4
  %and16 = and i32 %24, 2
  %tobool17 = icmp ne i32 %and16, 0
  br i1 %tobool17, label %if.then.18, label %if.end.19

if.then.18:                                       ; preds = %if.then.14
  %25 = load i32, i32* %p_out.addr, align 4
  call void @flush_direct_output(i32 %25)
  br label %if.end.19

if.end.19:                                        ; preds = %if.then.18, %if.then.14
  %26 = load %struct.storable_picture*, %struct.storable_picture** %p.addr, align 8
  %27 = load %struct.frame_store*, %struct.frame_store** @out_buffer, align 8
  %bottom_field = getelementptr inbounds %struct.frame_store, %struct.frame_store* %27, i32 0, i32 14
  store %struct.storable_picture* %26, %struct.storable_picture** %bottom_field, align 8
  %28 = load %struct.frame_store*, %struct.frame_store** @out_buffer, align 8
  %is_used20 = getelementptr inbounds %struct.frame_store, %struct.frame_store* %28, i32 0, i32 0
  %29 = load i32, i32* %is_used20, align 4
  %or21 = or i32 %29, 2
  store i32 %or21, i32* %is_used20, align 4
  br label %if.end.22

if.end.22:                                        ; preds = %if.end.19, %if.end.11
  %30 = load %struct.frame_store*, %struct.frame_store** @out_buffer, align 8
  %is_used23 = getelementptr inbounds %struct.frame_store, %struct.frame_store* %30, i32 0, i32 0
  %31 = load i32, i32* %is_used23, align 4
  %cmp24 = icmp eq i32 %31, 3
  br i1 %cmp24, label %if.then.25, label %if.end.40

if.then.25:                                       ; preds = %if.end.22
  %32 = load %struct.frame_store*, %struct.frame_store** @out_buffer, align 8
  call void @dpb_combine_field_yuv(%struct.frame_store* %32)
  %33 = load %struct.frame_store*, %struct.frame_store** @out_buffer, align 8
  %frame = getelementptr inbounds %struct.frame_store, %struct.frame_store* %33, i32 0, i32 12
  %34 = load %struct.storable_picture*, %struct.storable_picture** %frame, align 8
  %35 = load i32, i32* %p_out.addr, align 4
  call void @write_picture(%struct.storable_picture* %34, i32 %35, i32 0)
  %36 = load i32, i32* @p_ref, align 4
  %cmp26 = icmp ne i32 -1, %36
  br i1 %cmp26, label %land.lhs.true.27, label %if.end.32

land.lhs.true.27:                                 ; preds = %if.then.25
  %37 = load %struct.inp_par*, %struct.inp_par** @input, align 8
  %silent28 = getelementptr inbounds %struct.inp_par, %struct.inp_par* %37, i32 0, i32 7
  %38 = load i32, i32* %silent28, align 4
  %tobool29 = icmp ne i32 %38, 0
  br i1 %tobool29, label %if.end.32, label %if.then.30

if.then.30:                                       ; preds = %land.lhs.true.27
  %39 = load %struct.snr_par*, %struct.snr_par** @snr, align 8
  %40 = load %struct.frame_store*, %struct.frame_store** @out_buffer, align 8
  %frame31 = getelementptr inbounds %struct.frame_store, %struct.frame_store* %40, i32 0, i32 12
  %41 = load %struct.storable_picture*, %struct.storable_picture** %frame31, align 8
  %42 = load i32, i32* @p_ref, align 4
  call void @find_snr(%struct.snr_par* %39, %struct.storable_picture* %41, i32 %42)
  br label %if.end.32

if.end.32:                                        ; preds = %if.then.30, %land.lhs.true.27, %if.then.25
  %43 = load %struct.frame_store*, %struct.frame_store** @out_buffer, align 8
  %frame33 = getelementptr inbounds %struct.frame_store, %struct.frame_store* %43, i32 0, i32 12
  %44 = load %struct.storable_picture*, %struct.storable_picture** %frame33, align 8
  call void @free_storable_picture(%struct.storable_picture* %44)
  %45 = load %struct.frame_store*, %struct.frame_store** @out_buffer, align 8
  %frame34 = getelementptr inbounds %struct.frame_store, %struct.frame_store* %45, i32 0, i32 12
  store %struct.storable_picture* null, %struct.storable_picture** %frame34, align 8
  %46 = load %struct.frame_store*, %struct.frame_store** @out_buffer, align 8
  %top_field35 = getelementptr inbounds %struct.frame_store, %struct.frame_store* %46, i32 0, i32 13
  %47 = load %struct.storable_picture*, %struct.storable_picture** %top_field35, align 8
  call void @free_storable_picture(%struct.storable_picture* %47)
  %48 = load %struct.frame_store*, %struct.frame_store** @out_buffer, align 8
  %top_field36 = getelementptr inbounds %struct.frame_store, %struct.frame_store* %48, i32 0, i32 13
  store %struct.storable_picture* null, %struct.storable_picture** %top_field36, align 8
  %49 = load %struct.frame_store*, %struct.frame_store** @out_buffer, align 8
  %bottom_field37 = getelementptr inbounds %struct.frame_store, %struct.frame_store* %49, i32 0, i32 14
  %50 = load %struct.storable_picture*, %struct.storable_picture** %bottom_field37, align 8
  call void @free_storable_picture(%struct.storable_picture* %50)
  %51 = load %struct.frame_store*, %struct.frame_store** @out_buffer, align 8
  %bottom_field38 = getelementptr inbounds %struct.frame_store, %struct.frame_store* %51, i32 0, i32 14
  store %struct.storable_picture* null, %struct.storable_picture** %bottom_field38, align 8
  %52 = load %struct.frame_store*, %struct.frame_store** @out_buffer, align 8
  %is_used39 = getelementptr inbounds %struct.frame_store, %struct.frame_store* %52, i32 0, i32 0
  store i32 0, i32* %is_used39, align 4
  br label %if.end.40

if.end.40:                                        ; preds = %if.end, %if.end.32, %if.end.22
  ret void
}

declare void @find_snr(%struct.snr_par*, %struct.storable_picture*, i32) #2

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.ident = !{!0}

!0 = !{!"clang version 3.7.0 (tags/RELEASE_370/final)"}
