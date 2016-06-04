; ModuleID = 'image.c'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.storable_picture = type { i32, i32, i32, i32, i32, i32, [6 x [33 x i64]], [6 x [33 x i64]], [6 x [33 x i64]], [6 x [33 x i64]], i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i16**, i16*, i16*, i16**, i16**, i16***, i8*, i16***, i64***, i64***, i16****, i8**, i8**, %struct.storable_picture*, %struct.storable_picture*, %struct.storable_picture*, i32, i32, i32, i32, i32, i32, i32 }
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
%struct.pic_parameter_set_rbsp_t = type { i32, i32, i32, i32, i32, i32, [8 x i32], i32, i32, i32, [8 x i32], [8 x i32], [8 x i32], i32, i32, i32, i8*, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.seq_parameter_set_rbsp_t = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [8 x i32], i32, i32, i32, i32, i32, i32, i32, i32, i32, [256 x i32], i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, %struct.vui_seq_parameters_t }
%struct.vui_seq_parameters_t = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, %struct.hrd_parameters_t, i32, %struct.hrd_parameters_t, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.hrd_parameters_t = type { i32, i32, i32, [32 x i32], [32 x i32], [32 x i32], i32, i32, i32, i32 }
%struct.StatParameters = type { i32, i32, float, float, i32, i32, i32, i32, [5 x [2 x i32]], [5 x [15 x i32]], [5 x [15 x i32]], [4 x i32], i32*, i32*, i32, i32, i32, float, float, float, [5 x [15 x i32]], [5 x [15 x i32]], [5 x i32], [5 x i32], [5 x i32], [5 x i32], [5 x i32], [5 x i32], [5 x i32], i32, i32, i32*, i32, i32 }
%struct.Decoders = type { i32**, i16***, i16****, i16***, i16**, i8**, i8** }
%struct.SNRParameters = type { float, float, float, float, float, float, [3 x float], [3 x float], [3 x float], float, float, float }
%struct.RD_DATA = type { double, [16 x [16 x i32]], [16 x [16 x i32]], [16 x [16 x i32]], i32****, i32***, i32, i32, [4 x i32], [4 x i32], i32**, [16 x i32], i32, i64, i32, i16******, i16******, i16******, i16******, [2 x [4 x [4 x i16]]], i32, i32, i32, i32, i32, i32, i32 }
%struct.NALU_t = type { i32, i32, i32, i32, i32, i32, i8* }
%struct.GOP_DATA = type { i32, i32, i32, i32, i32, i32 }
%struct.timeb = type { i64, i16, i16, i16 }

@ONE_FOURTH_TAP = constant [3 x [2 x i32]] [[2 x i32] [i32 20, i32 20], [2 x i32] [i32 -5, i32 -4], [2 x i32] [i32 1, i32 0]], align 16
@enc_picture = common global %struct.storable_picture* null, align 8
@img = external global %struct.ImageParameters*, align 8
@start_frame_no_in_this_IGOP = external global i32, align 4
@input = external global %struct.InputParameters*, align 8
@active_pps = external global %struct.pic_parameter_set_rbsp_t*, align 8
@active_sps = external global %struct.seq_parameter_set_rbsp_t*, align 8
@stats = external global %struct.StatParameters*, align 8
@decs = external global %struct.Decoders*, align 8
@encode_one_frame.prev_frame_no = internal global i32 0, align 4
@encode_one_frame.consecutive_non_reference_pictures = internal global i32 0, align 4
@me_time = external global i32, align 4
@enc_frame_picture = common global %struct.storable_picture* null, align 8
@enc_frame_picture2 = common global %struct.storable_picture* null, align 8
@enc_frame_picture3 = common global %struct.storable_picture* null, align 8
@Bframe_ctr = external global i32, align 4
@Iframe_ctr = external global i32, align 4
@Pframe_ctr = external global i32, align 4
@top_pic = external global %struct.Picture*, align 8
@bottom_pic = external global %struct.Picture*, align 8
@mb_adaptive = external global i32, align 4
@QP = external global i32, align 4
@PicParSet = external global [256 x %struct.pic_parameter_set_rbsp_t], align 16
@frame_pic = external global %struct.Picture*, align 8
@frame_pic3 = external global %struct.Picture*, align 8
@frame_pic2 = external global %struct.Picture*, align 8
@tot_time = external global i32, align 4
@enc_bottom_picture = common global %struct.storable_picture* null, align 8
@total_frame_buffer = external global i64, align 8
@Bit_Buffer = external global [10000 x i64], align 16
@frame_no = external global i32, align 4
@.str = private unnamed_addr constant [137 x i8] c"POC type 2 cannot be applied for the coding pattern where the encoding /decoding order of pictures are different from the output order.\0A\00", align 1
@Pprev_bits = external global i32, align 4
@snr = external global %struct.SNRParameters*, align 8
@enc_top_picture = common global %struct.storable_picture* null, align 8
@nextP_tr_fld = external global i32, align 4
@.str.1 = private unnamed_addr constant [35 x i8] c"alloc_storable_picture: s->imgY_11\00", align 1
@.str.2 = private unnamed_addr constant [37 x i8] c"alloc_storable_picture: s->imgY_11_w\00", align 1
@img4Y_tmp = external global i32**, align 8
@rdopt = external global %struct.RD_DATA*, align 8
@.str.3 = private unnamed_addr constant [110 x i8] c"Source picture has higher bit depth than imgpel data type. Please recompile with larger data type for imgpel.\00", align 1
@.str.4 = private unnamed_addr constant [80 x i8] c"reading only from formats of 8, 16 or 32 bit allowed on big endian architecture\00", align 1
@last_P_no = common global i32* null, align 8
@last_P_no_frm = common global i32* null, align 8
@last_P_no_fld = common global i32* null, align 8
@WriteNALU = external global i32 (%struct.NALU_t*)*, align 8
@imgY_org_frm = external global i16**, align 8
@imgY_org = external global i16**, align 8
@imgUV_org_frm = external global i16***, align 8
@imgUV_org = external global i16***, align 8
@start_tr_in_this_IGOP = external global i32, align 4
@nextP_tr_frm = external global i32, align 4
@gop_structure = external global %struct.GOP_DATA*, align 8
@imgY_com = external global i16**, align 8
@imgUV_com = external global i16***, align 8
@.str.5 = private unnamed_addr constant [15 x i8] c"%04d(NVB)%8d \0A\00", align 1
@.str.6 = private unnamed_addr constant [65 x i8] c"%04d(IDR)%8d %1d %2d %7.3f %7.3f %7.3f  %7d   %5d     %3s   %3d\0A\00", align 1
@.str.7 = private unnamed_addr constant [4 x i8] c"FLD\00", align 1
@.str.8 = private unnamed_addr constant [4 x i8] c"FRM\00", align 1
@intras = external global i32, align 4
@Iprev_bits = external global i32, align 4
@.str.9 = private unnamed_addr constant [65 x i8] c"%04d(I)  %8d %1d %2d %7.3f %7.3f %7.3f  %7d   %5d     %3s   %3d\0A\00", align 1
@.str.10 = private unnamed_addr constant [65 x i8] c"%04d(SP) %8d %1d %2d %7.3f %7.3f %7.3f  %7d   %5d     %3s   %3d\0A\00", align 1
@.str.11 = private unnamed_addr constant [69 x i8] c"%04d(RB) %8d %1d %2d %7.3f %7.3f %7.3f  %7d   %5d     %3s   %3d %1d\0A\00", align 1
@.str.12 = private unnamed_addr constant [69 x i8] c"%04d(B)  %8d %1d %2d %7.3f %7.3f %7.3f  %7d   %5d     %3s   %3d %1d\0A\00", align 1
@.str.13 = private unnamed_addr constant [65 x i8] c"%04d(P)  %8d %1d %2d %7.3f %7.3f %7.3f  %7d   %5d     %3s   %3d\0A\00", align 1
@.str.14 = private unnamed_addr constant [18 x i8] c"ReadOneFrame: buf\00", align 1
@p_in = external global i32, align 4
@.str.15 = private unnamed_addr constant [52 x i8] c"ReadOneFrame: cannot fseek to (Header size) in p_in\00", align 1
@errortext = external global [300 x i8], align 16
@.str.16 = private unnamed_addr constant [67 x i8] c"ReadOneFrame: cannot advance file pointer in p_in beyond frame %d\0A\00", align 1
@.str.17 = private unnamed_addr constant [77 x i8] c"ReadOneFrame: cannot read %d bytes from input file, unexpected EOF?, exiting\00", align 1
@.str.18 = private unnamed_addr constant [75 x i8] c"ReadOneFrame (NOT IMPLEMENTED): pic unit size on disk must be divided by 8\00", align 1
@imgY_org_top = external global i16**, align 8
@imgUV_org_top = external global i16***, align 8
@imgY_org_bot = external global i16**, align 8
@imgUV_org_bot = external global i16***, align 8

; Function Attrs: nounwind uwtable
define void @MbAffPostProc() #0 {
entry:
  %temp = alloca [16 x [32 x i16]], align 16
  %imgY = alloca i16**, align 8
  %imgUV = alloca i16***, align 8
  %i = alloca i32, align 4
  %x = alloca i32, align 4
  %y = alloca i32, align 4
  %x0 = alloca i32, align 4
  %y0 = alloca i32, align 4
  %uv = alloca i32, align 4
  %0 = load %struct.storable_picture*, %struct.storable_picture** @enc_picture, align 8
  %imgY1 = getelementptr inbounds %struct.storable_picture, %struct.storable_picture* %0, i32 0, i32 25
  %1 = load i16**, i16*** %imgY1, align 8
  store i16** %1, i16*** %imgY, align 8
  %2 = load %struct.storable_picture*, %struct.storable_picture** @enc_picture, align 8
  %imgUV2 = getelementptr inbounds %struct.storable_picture, %struct.storable_picture* %2, i32 0, i32 30
  %3 = load i16***, i16**** %imgUV2, align 8
  store i16*** %3, i16**** %imgUV, align 8
  %4 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %yuv_format = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %4, i32 0, i32 159
  %5 = load i32, i32* %yuv_format, align 4
  %cmp = icmp ne i32 %5, 0
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc.137, %if.then
  %6 = load i32, i32* %i, align 4
  %7 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %PicSizeInMbs = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %7, i32 0, i32 110
  %8 = load i32, i32* %PicSizeInMbs, align 4
  %cmp3 = icmp slt i32 %6, %8
  br i1 %cmp3, label %for.body, label %for.end.139

for.body:                                         ; preds = %for.cond
  %9 = load i32, i32* %i, align 4
  %idxprom = sext i32 %9 to i64
  %10 = load %struct.storable_picture*, %struct.storable_picture** @enc_picture, align 8
  %mb_field = getelementptr inbounds %struct.storable_picture, %struct.storable_picture* %10, i32 0, i32 31
  %11 = load i8*, i8** %mb_field, align 8
  %arrayidx = getelementptr inbounds i8, i8* %11, i64 %idxprom
  %12 = load i8, i8* %arrayidx, align 1
  %tobool = icmp ne i8 %12, 0
  br i1 %tobool, label %if.then.4, label %if.end

if.then.4:                                        ; preds = %for.body
  %13 = load i32, i32* %i, align 4
  call void @get_mb_pos(i32 %13, i32* %x0, i32* %y0)
  store i32 0, i32* %y, align 4
  br label %for.cond.5

for.cond.5:                                       ; preds = %for.inc.20, %if.then.4
  %14 = load i32, i32* %y, align 4
  %cmp6 = icmp slt i32 %14, 32
  br i1 %cmp6, label %for.body.7, label %for.end.22

for.body.7:                                       ; preds = %for.cond.5
  store i32 0, i32* %x, align 4
  br label %for.cond.8

for.cond.8:                                       ; preds = %for.inc, %for.body.7
  %15 = load i32, i32* %x, align 4
  %cmp9 = icmp slt i32 %15, 16
  br i1 %cmp9, label %for.body.10, label %for.end

for.body.10:                                      ; preds = %for.cond.8
  %16 = load i32, i32* %x0, align 4
  %17 = load i32, i32* %x, align 4
  %add = add nsw i32 %16, %17
  %idxprom11 = sext i32 %add to i64
  %18 = load i32, i32* %y0, align 4
  %19 = load i32, i32* %y, align 4
  %add12 = add nsw i32 %18, %19
  %idxprom13 = sext i32 %add12 to i64
  %20 = load i16**, i16*** %imgY, align 8
  %arrayidx14 = getelementptr inbounds i16*, i16** %20, i64 %idxprom13
  %21 = load i16*, i16** %arrayidx14, align 8
  %arrayidx15 = getelementptr inbounds i16, i16* %21, i64 %idxprom11
  %22 = load i16, i16* %arrayidx15, align 2
  %23 = load i32, i32* %y, align 4
  %idxprom16 = sext i32 %23 to i64
  %24 = load i32, i32* %x, align 4
  %idxprom17 = sext i32 %24 to i64
  %arrayidx18 = getelementptr inbounds [16 x [32 x i16]], [16 x [32 x i16]]* %temp, i32 0, i64 %idxprom17
  %arrayidx19 = getelementptr inbounds [32 x i16], [32 x i16]* %arrayidx18, i32 0, i64 %idxprom16
  store i16 %22, i16* %arrayidx19, align 2
  br label %for.inc

for.inc:                                          ; preds = %for.body.10
  %25 = load i32, i32* %x, align 4
  %inc = add nsw i32 %25, 1
  store i32 %inc, i32* %x, align 4
  br label %for.cond.8

for.end:                                          ; preds = %for.cond.8
  br label %for.inc.20

for.inc.20:                                       ; preds = %for.end
  %26 = load i32, i32* %y, align 4
  %inc21 = add nsw i32 %26, 1
  store i32 %inc21, i32* %y, align 4
  br label %for.cond.5

for.end.22:                                       ; preds = %for.cond.5
  store i32 0, i32* %y, align 4
  br label %for.cond.23

for.cond.23:                                      ; preds = %for.inc.55, %for.end.22
  %27 = load i32, i32* %y, align 4
  %cmp24 = icmp slt i32 %27, 16
  br i1 %cmp24, label %for.body.25, label %for.end.57

for.body.25:                                      ; preds = %for.cond.23
  store i32 0, i32* %x, align 4
  br label %for.cond.26

for.cond.26:                                      ; preds = %for.inc.52, %for.body.25
  %28 = load i32, i32* %x, align 4
  %cmp27 = icmp slt i32 %28, 16
  br i1 %cmp27, label %for.body.28, label %for.end.54

for.body.28:                                      ; preds = %for.cond.26
  %29 = load i32, i32* %y, align 4
  %idxprom29 = sext i32 %29 to i64
  %30 = load i32, i32* %x, align 4
  %idxprom30 = sext i32 %30 to i64
  %arrayidx31 = getelementptr inbounds [16 x [32 x i16]], [16 x [32 x i16]]* %temp, i32 0, i64 %idxprom30
  %arrayidx32 = getelementptr inbounds [32 x i16], [32 x i16]* %arrayidx31, i32 0, i64 %idxprom29
  %31 = load i16, i16* %arrayidx32, align 2
  %32 = load i32, i32* %x0, align 4
  %33 = load i32, i32* %x, align 4
  %add33 = add nsw i32 %32, %33
  %idxprom34 = sext i32 %add33 to i64
  %34 = load i32, i32* %y0, align 4
  %35 = load i32, i32* %y, align 4
  %mul = mul nsw i32 2, %35
  %add35 = add nsw i32 %34, %mul
  %idxprom36 = sext i32 %add35 to i64
  %36 = load i16**, i16*** %imgY, align 8
  %arrayidx37 = getelementptr inbounds i16*, i16** %36, i64 %idxprom36
  %37 = load i16*, i16** %arrayidx37, align 8
  %arrayidx38 = getelementptr inbounds i16, i16* %37, i64 %idxprom34
  store i16 %31, i16* %arrayidx38, align 2
  %38 = load i32, i32* %y, align 4
  %add39 = add nsw i32 %38, 16
  %idxprom40 = sext i32 %add39 to i64
  %39 = load i32, i32* %x, align 4
  %idxprom41 = sext i32 %39 to i64
  %arrayidx42 = getelementptr inbounds [16 x [32 x i16]], [16 x [32 x i16]]* %temp, i32 0, i64 %idxprom41
  %arrayidx43 = getelementptr inbounds [32 x i16], [32 x i16]* %arrayidx42, i32 0, i64 %idxprom40
  %40 = load i16, i16* %arrayidx43, align 2
  %41 = load i32, i32* %x0, align 4
  %42 = load i32, i32* %x, align 4
  %add44 = add nsw i32 %41, %42
  %idxprom45 = sext i32 %add44 to i64
  %43 = load i32, i32* %y0, align 4
  %44 = load i32, i32* %y, align 4
  %mul46 = mul nsw i32 2, %44
  %add47 = add nsw i32 %mul46, 1
  %add48 = add nsw i32 %43, %add47
  %idxprom49 = sext i32 %add48 to i64
  %45 = load i16**, i16*** %imgY, align 8
  %arrayidx50 = getelementptr inbounds i16*, i16** %45, i64 %idxprom49
  %46 = load i16*, i16** %arrayidx50, align 8
  %arrayidx51 = getelementptr inbounds i16, i16* %46, i64 %idxprom45
  store i16 %40, i16* %arrayidx51, align 2
  br label %for.inc.52

for.inc.52:                                       ; preds = %for.body.28
  %47 = load i32, i32* %x, align 4
  %inc53 = add nsw i32 %47, 1
  store i32 %inc53, i32* %x, align 4
  br label %for.cond.26

for.end.54:                                       ; preds = %for.cond.26
  br label %for.inc.55

for.inc.55:                                       ; preds = %for.end.54
  %48 = load i32, i32* %y, align 4
  %inc56 = add nsw i32 %48, 1
  store i32 %inc56, i32* %y, align 4
  br label %for.cond.23

for.end.57:                                       ; preds = %for.cond.23
  %49 = load i32, i32* %x0, align 4
  %50 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %mb_cr_size_x = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %50, i32 0, i32 161
  %51 = load i32, i32* %mb_cr_size_x, align 4
  %div = sdiv i32 16, %51
  %div58 = sdiv i32 %49, %div
  store i32 %div58, i32* %x0, align 4
  %52 = load i32, i32* %y0, align 4
  %53 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %mb_cr_size_y = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %53, i32 0, i32 162
  %54 = load i32, i32* %mb_cr_size_y, align 4
  %div59 = sdiv i32 16, %54
  %div60 = sdiv i32 %52, %div59
  store i32 %div60, i32* %y0, align 4
  store i32 0, i32* %uv, align 4
  br label %for.cond.61

for.cond.61:                                      ; preds = %for.inc.134, %for.end.57
  %55 = load i32, i32* %uv, align 4
  %cmp62 = icmp slt i32 %55, 2
  br i1 %cmp62, label %for.body.63, label %for.end.136

for.body.63:                                      ; preds = %for.cond.61
  store i32 0, i32* %y, align 4
  br label %for.cond.64

for.cond.64:                                      ; preds = %for.inc.88, %for.body.63
  %56 = load i32, i32* %y, align 4
  %57 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %mb_cr_size_y65 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %57, i32 0, i32 162
  %58 = load i32, i32* %mb_cr_size_y65, align 4
  %mul66 = mul nsw i32 2, %58
  %cmp67 = icmp slt i32 %56, %mul66
  br i1 %cmp67, label %for.body.68, label %for.end.90

for.body.68:                                      ; preds = %for.cond.64
  store i32 0, i32* %x, align 4
  br label %for.cond.69

for.cond.69:                                      ; preds = %for.inc.85, %for.body.68
  %59 = load i32, i32* %x, align 4
  %60 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %mb_cr_size_x70 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %60, i32 0, i32 161
  %61 = load i32, i32* %mb_cr_size_x70, align 4
  %cmp71 = icmp slt i32 %59, %61
  br i1 %cmp71, label %for.body.72, label %for.end.87

for.body.72:                                      ; preds = %for.cond.69
  %62 = load i32, i32* %x0, align 4
  %63 = load i32, i32* %x, align 4
  %add73 = add nsw i32 %62, %63
  %idxprom74 = sext i32 %add73 to i64
  %64 = load i32, i32* %y0, align 4
  %65 = load i32, i32* %y, align 4
  %add75 = add nsw i32 %64, %65
  %idxprom76 = sext i32 %add75 to i64
  %66 = load i32, i32* %uv, align 4
  %idxprom77 = sext i32 %66 to i64
  %67 = load i16***, i16**** %imgUV, align 8
  %arrayidx78 = getelementptr inbounds i16**, i16*** %67, i64 %idxprom77
  %68 = load i16**, i16*** %arrayidx78, align 8
  %arrayidx79 = getelementptr inbounds i16*, i16** %68, i64 %idxprom76
  %69 = load i16*, i16** %arrayidx79, align 8
  %arrayidx80 = getelementptr inbounds i16, i16* %69, i64 %idxprom74
  %70 = load i16, i16* %arrayidx80, align 2
  %71 = load i32, i32* %y, align 4
  %idxprom81 = sext i32 %71 to i64
  %72 = load i32, i32* %x, align 4
  %idxprom82 = sext i32 %72 to i64
  %arrayidx83 = getelementptr inbounds [16 x [32 x i16]], [16 x [32 x i16]]* %temp, i32 0, i64 %idxprom82
  %arrayidx84 = getelementptr inbounds [32 x i16], [32 x i16]* %arrayidx83, i32 0, i64 %idxprom81
  store i16 %70, i16* %arrayidx84, align 2
  br label %for.inc.85

for.inc.85:                                       ; preds = %for.body.72
  %73 = load i32, i32* %x, align 4
  %inc86 = add nsw i32 %73, 1
  store i32 %inc86, i32* %x, align 4
  br label %for.cond.69

for.end.87:                                       ; preds = %for.cond.69
  br label %for.inc.88

for.inc.88:                                       ; preds = %for.end.87
  %74 = load i32, i32* %y, align 4
  %inc89 = add nsw i32 %74, 1
  store i32 %inc89, i32* %y, align 4
  br label %for.cond.64

for.end.90:                                       ; preds = %for.cond.64
  store i32 0, i32* %y, align 4
  br label %for.cond.91

for.cond.91:                                      ; preds = %for.inc.131, %for.end.90
  %75 = load i32, i32* %y, align 4
  %76 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %mb_cr_size_y92 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %76, i32 0, i32 162
  %77 = load i32, i32* %mb_cr_size_y92, align 4
  %cmp93 = icmp slt i32 %75, %77
  br i1 %cmp93, label %for.body.94, label %for.end.133

for.body.94:                                      ; preds = %for.cond.91
  store i32 0, i32* %x, align 4
  br label %for.cond.95

for.cond.95:                                      ; preds = %for.inc.128, %for.body.94
  %78 = load i32, i32* %x, align 4
  %79 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %mb_cr_size_x96 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %79, i32 0, i32 161
  %80 = load i32, i32* %mb_cr_size_x96, align 4
  %cmp97 = icmp slt i32 %78, %80
  br i1 %cmp97, label %for.body.98, label %for.end.130

for.body.98:                                      ; preds = %for.cond.95
  %81 = load i32, i32* %y, align 4
  %idxprom99 = sext i32 %81 to i64
  %82 = load i32, i32* %x, align 4
  %idxprom100 = sext i32 %82 to i64
  %arrayidx101 = getelementptr inbounds [16 x [32 x i16]], [16 x [32 x i16]]* %temp, i32 0, i64 %idxprom100
  %arrayidx102 = getelementptr inbounds [32 x i16], [32 x i16]* %arrayidx101, i32 0, i64 %idxprom99
  %83 = load i16, i16* %arrayidx102, align 2
  %84 = load i32, i32* %x0, align 4
  %85 = load i32, i32* %x, align 4
  %add103 = add nsw i32 %84, %85
  %idxprom104 = sext i32 %add103 to i64
  %86 = load i32, i32* %y0, align 4
  %87 = load i32, i32* %y, align 4
  %mul105 = mul nsw i32 2, %87
  %add106 = add nsw i32 %86, %mul105
  %idxprom107 = sext i32 %add106 to i64
  %88 = load i32, i32* %uv, align 4
  %idxprom108 = sext i32 %88 to i64
  %89 = load i16***, i16**** %imgUV, align 8
  %arrayidx109 = getelementptr inbounds i16**, i16*** %89, i64 %idxprom108
  %90 = load i16**, i16*** %arrayidx109, align 8
  %arrayidx110 = getelementptr inbounds i16*, i16** %90, i64 %idxprom107
  %91 = load i16*, i16** %arrayidx110, align 8
  %arrayidx111 = getelementptr inbounds i16, i16* %91, i64 %idxprom104
  store i16 %83, i16* %arrayidx111, align 2
  %92 = load i32, i32* %y, align 4
  %93 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %mb_cr_size_y112 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %93, i32 0, i32 162
  %94 = load i32, i32* %mb_cr_size_y112, align 4
  %add113 = add nsw i32 %92, %94
  %idxprom114 = sext i32 %add113 to i64
  %95 = load i32, i32* %x, align 4
  %idxprom115 = sext i32 %95 to i64
  %arrayidx116 = getelementptr inbounds [16 x [32 x i16]], [16 x [32 x i16]]* %temp, i32 0, i64 %idxprom115
  %arrayidx117 = getelementptr inbounds [32 x i16], [32 x i16]* %arrayidx116, i32 0, i64 %idxprom114
  %96 = load i16, i16* %arrayidx117, align 2
  %97 = load i32, i32* %x0, align 4
  %98 = load i32, i32* %x, align 4
  %add118 = add nsw i32 %97, %98
  %idxprom119 = sext i32 %add118 to i64
  %99 = load i32, i32* %y0, align 4
  %100 = load i32, i32* %y, align 4
  %mul120 = mul nsw i32 2, %100
  %add121 = add nsw i32 %mul120, 1
  %add122 = add nsw i32 %99, %add121
  %idxprom123 = sext i32 %add122 to i64
  %101 = load i32, i32* %uv, align 4
  %idxprom124 = sext i32 %101 to i64
  %102 = load i16***, i16**** %imgUV, align 8
  %arrayidx125 = getelementptr inbounds i16**, i16*** %102, i64 %idxprom124
  %103 = load i16**, i16*** %arrayidx125, align 8
  %arrayidx126 = getelementptr inbounds i16*, i16** %103, i64 %idxprom123
  %104 = load i16*, i16** %arrayidx126, align 8
  %arrayidx127 = getelementptr inbounds i16, i16* %104, i64 %idxprom119
  store i16 %96, i16* %arrayidx127, align 2
  br label %for.inc.128

for.inc.128:                                      ; preds = %for.body.98
  %105 = load i32, i32* %x, align 4
  %inc129 = add nsw i32 %105, 1
  store i32 %inc129, i32* %x, align 4
  br label %for.cond.95

for.end.130:                                      ; preds = %for.cond.95
  br label %for.inc.131

for.inc.131:                                      ; preds = %for.end.130
  %106 = load i32, i32* %y, align 4
  %inc132 = add nsw i32 %106, 1
  store i32 %inc132, i32* %y, align 4
  br label %for.cond.91

for.end.133:                                      ; preds = %for.cond.91
  br label %for.inc.134

for.inc.134:                                      ; preds = %for.end.133
  %107 = load i32, i32* %uv, align 4
  %inc135 = add nsw i32 %107, 1
  store i32 %inc135, i32* %uv, align 4
  br label %for.cond.61

for.end.136:                                      ; preds = %for.cond.61
  br label %if.end

if.end:                                           ; preds = %for.end.136, %for.body
  br label %for.inc.137

for.inc.137:                                      ; preds = %if.end
  %108 = load i32, i32* %i, align 4
  %add138 = add nsw i32 %108, 2
  store i32 %add138, i32* %i, align 4
  br label %for.cond

for.end.139:                                      ; preds = %for.cond
  br label %if.end.211

if.else:                                          ; preds = %entry
  store i32 0, i32* %i, align 4
  br label %for.cond.140

for.cond.140:                                     ; preds = %for.inc.208, %if.else
  %109 = load i32, i32* %i, align 4
  %110 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %PicSizeInMbs141 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %110, i32 0, i32 110
  %111 = load i32, i32* %PicSizeInMbs141, align 4
  %cmp142 = icmp slt i32 %109, %111
  br i1 %cmp142, label %for.body.143, label %for.end.210

for.body.143:                                     ; preds = %for.cond.140
  %112 = load i32, i32* %i, align 4
  %idxprom144 = sext i32 %112 to i64
  %113 = load %struct.storable_picture*, %struct.storable_picture** @enc_picture, align 8
  %mb_field145 = getelementptr inbounds %struct.storable_picture, %struct.storable_picture* %113, i32 0, i32 31
  %114 = load i8*, i8** %mb_field145, align 8
  %arrayidx146 = getelementptr inbounds i8, i8* %114, i64 %idxprom144
  %115 = load i8, i8* %arrayidx146, align 1
  %tobool147 = icmp ne i8 %115, 0
  br i1 %tobool147, label %if.then.148, label %if.end.207

if.then.148:                                      ; preds = %for.body.143
  %116 = load i32, i32* %i, align 4
  call void @get_mb_pos(i32 %116, i32* %x0, i32* %y0)
  store i32 0, i32* %y, align 4
  br label %for.cond.149

for.cond.149:                                     ; preds = %for.inc.168, %if.then.148
  %117 = load i32, i32* %y, align 4
  %cmp150 = icmp slt i32 %117, 32
  br i1 %cmp150, label %for.body.151, label %for.end.170

for.body.151:                                     ; preds = %for.cond.149
  store i32 0, i32* %x, align 4
  br label %for.cond.152

for.cond.152:                                     ; preds = %for.inc.165, %for.body.151
  %118 = load i32, i32* %x, align 4
  %cmp153 = icmp slt i32 %118, 16
  br i1 %cmp153, label %for.body.154, label %for.end.167

for.body.154:                                     ; preds = %for.cond.152
  %119 = load i32, i32* %x0, align 4
  %120 = load i32, i32* %x, align 4
  %add155 = add nsw i32 %119, %120
  %idxprom156 = sext i32 %add155 to i64
  %121 = load i32, i32* %y0, align 4
  %122 = load i32, i32* %y, align 4
  %add157 = add nsw i32 %121, %122
  %idxprom158 = sext i32 %add157 to i64
  %123 = load i16**, i16*** %imgY, align 8
  %arrayidx159 = getelementptr inbounds i16*, i16** %123, i64 %idxprom158
  %124 = load i16*, i16** %arrayidx159, align 8
  %arrayidx160 = getelementptr inbounds i16, i16* %124, i64 %idxprom156
  %125 = load i16, i16* %arrayidx160, align 2
  %126 = load i32, i32* %y, align 4
  %idxprom161 = sext i32 %126 to i64
  %127 = load i32, i32* %x, align 4
  %idxprom162 = sext i32 %127 to i64
  %arrayidx163 = getelementptr inbounds [16 x [32 x i16]], [16 x [32 x i16]]* %temp, i32 0, i64 %idxprom162
  %arrayidx164 = getelementptr inbounds [32 x i16], [32 x i16]* %arrayidx163, i32 0, i64 %idxprom161
  store i16 %125, i16* %arrayidx164, align 2
  br label %for.inc.165

for.inc.165:                                      ; preds = %for.body.154
  %128 = load i32, i32* %x, align 4
  %inc166 = add nsw i32 %128, 1
  store i32 %inc166, i32* %x, align 4
  br label %for.cond.152

for.end.167:                                      ; preds = %for.cond.152
  br label %for.inc.168

for.inc.168:                                      ; preds = %for.end.167
  %129 = load i32, i32* %y, align 4
  %inc169 = add nsw i32 %129, 1
  store i32 %inc169, i32* %y, align 4
  br label %for.cond.149

for.end.170:                                      ; preds = %for.cond.149
  store i32 0, i32* %y, align 4
  br label %for.cond.171

for.cond.171:                                     ; preds = %for.inc.204, %for.end.170
  %130 = load i32, i32* %y, align 4
  %cmp172 = icmp slt i32 %130, 16
  br i1 %cmp172, label %for.body.173, label %for.end.206

for.body.173:                                     ; preds = %for.cond.171
  store i32 0, i32* %x, align 4
  br label %for.cond.174

for.cond.174:                                     ; preds = %for.inc.201, %for.body.173
  %131 = load i32, i32* %x, align 4
  %cmp175 = icmp slt i32 %131, 16
  br i1 %cmp175, label %for.body.176, label %for.end.203

for.body.176:                                     ; preds = %for.cond.174
  %132 = load i32, i32* %y, align 4
  %idxprom177 = sext i32 %132 to i64
  %133 = load i32, i32* %x, align 4
  %idxprom178 = sext i32 %133 to i64
  %arrayidx179 = getelementptr inbounds [16 x [32 x i16]], [16 x [32 x i16]]* %temp, i32 0, i64 %idxprom178
  %arrayidx180 = getelementptr inbounds [32 x i16], [32 x i16]* %arrayidx179, i32 0, i64 %idxprom177
  %134 = load i16, i16* %arrayidx180, align 2
  %135 = load i32, i32* %x0, align 4
  %136 = load i32, i32* %x, align 4
  %add181 = add nsw i32 %135, %136
  %idxprom182 = sext i32 %add181 to i64
  %137 = load i32, i32* %y0, align 4
  %138 = load i32, i32* %y, align 4
  %mul183 = mul nsw i32 2, %138
  %add184 = add nsw i32 %137, %mul183
  %idxprom185 = sext i32 %add184 to i64
  %139 = load i16**, i16*** %imgY, align 8
  %arrayidx186 = getelementptr inbounds i16*, i16** %139, i64 %idxprom185
  %140 = load i16*, i16** %arrayidx186, align 8
  %arrayidx187 = getelementptr inbounds i16, i16* %140, i64 %idxprom182
  store i16 %134, i16* %arrayidx187, align 2
  %141 = load i32, i32* %y, align 4
  %add188 = add nsw i32 %141, 16
  %idxprom189 = sext i32 %add188 to i64
  %142 = load i32, i32* %x, align 4
  %idxprom190 = sext i32 %142 to i64
  %arrayidx191 = getelementptr inbounds [16 x [32 x i16]], [16 x [32 x i16]]* %temp, i32 0, i64 %idxprom190
  %arrayidx192 = getelementptr inbounds [32 x i16], [32 x i16]* %arrayidx191, i32 0, i64 %idxprom189
  %143 = load i16, i16* %arrayidx192, align 2
  %144 = load i32, i32* %x0, align 4
  %145 = load i32, i32* %x, align 4
  %add193 = add nsw i32 %144, %145
  %idxprom194 = sext i32 %add193 to i64
  %146 = load i32, i32* %y0, align 4
  %147 = load i32, i32* %y, align 4
  %mul195 = mul nsw i32 2, %147
  %add196 = add nsw i32 %mul195, 1
  %add197 = add nsw i32 %146, %add196
  %idxprom198 = sext i32 %add197 to i64
  %148 = load i16**, i16*** %imgY, align 8
  %arrayidx199 = getelementptr inbounds i16*, i16** %148, i64 %idxprom198
  %149 = load i16*, i16** %arrayidx199, align 8
  %arrayidx200 = getelementptr inbounds i16, i16* %149, i64 %idxprom194
  store i16 %143, i16* %arrayidx200, align 2
  br label %for.inc.201

for.inc.201:                                      ; preds = %for.body.176
  %150 = load i32, i32* %x, align 4
  %inc202 = add nsw i32 %150, 1
  store i32 %inc202, i32* %x, align 4
  br label %for.cond.174

for.end.203:                                      ; preds = %for.cond.174
  br label %for.inc.204

for.inc.204:                                      ; preds = %for.end.203
  %151 = load i32, i32* %y, align 4
  %inc205 = add nsw i32 %151, 1
  store i32 %inc205, i32* %y, align 4
  br label %for.cond.171

for.end.206:                                      ; preds = %for.cond.171
  br label %if.end.207

if.end.207:                                       ; preds = %for.end.206, %for.body.143
  br label %for.inc.208

for.inc.208:                                      ; preds = %if.end.207
  %152 = load i32, i32* %i, align 4
  %add209 = add nsw i32 %152, 2
  store i32 %add209, i32* %i, align 4
  br label %for.cond.140

for.end.210:                                      ; preds = %for.cond.140
  br label %if.end.211

if.end.211:                                       ; preds = %for.end.210, %for.end.139
  ret void
}

declare void @get_mb_pos(i32, i32*, i32*) #1

; Function Attrs: nounwind uwtable
define void @code_a_picture(%struct.Picture* %pic) #0 {
entry:
  %pic.addr = alloca %struct.Picture*, align 8
  %NumberOfCodedMBs = alloca i32, align 4
  %SliceGroup = alloca i32, align 4
  %j = alloca i32, align 4
  store %struct.Picture* %pic, %struct.Picture** %pic.addr, align 8
  store i32 0, i32* %NumberOfCodedMBs, align 4
  store i32 0, i32* %SliceGroup, align 4
  %0 = load %struct.Picture*, %struct.Picture** %pic.addr, align 8
  %1 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %currentPicture = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %1, i32 0, i32 49
  store %struct.Picture* %0, %struct.Picture** %currentPicture, align 8
  %2 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %number = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %2, i32 0, i32 0
  %3 = load i32, i32* %number, align 4
  %4 = load i32, i32* @start_frame_no_in_this_IGOP, align 4
  %sub = sub nsw i32 %3, %4
  %tobool = icmp ne i32 %sub, 0
  br i1 %tobool, label %lor.rhs, label %land.lhs.true

land.lhs.true:                                    ; preds = %entry
  %5 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %structure = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %5, i32 0, i32 7
  %6 = load i32, i32* %structure, align 4
  %cmp = icmp eq i32 %6, 2
  br i1 %cmp, label %lor.rhs, label %lor.end

lor.rhs:                                          ; preds = %land.lhs.true, %entry
  %7 = load %struct.InputParameters*, %struct.InputParameters** @input, align 8
  %idr_enable = getelementptr inbounds %struct.InputParameters, %struct.InputParameters* %7, i32 0, i32 32
  %8 = load i32, i32* %idr_enable, align 4
  %tobool1 = icmp ne i32 %8, 0
  br i1 %tobool1, label %land.lhs.true.2, label %land.end

land.lhs.true.2:                                  ; preds = %lor.rhs
  %9 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %type = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %9, i32 0, i32 6
  %10 = load i32, i32* %type, align 4
  %cmp3 = icmp eq i32 %10, 2
  br i1 %cmp3, label %land.rhs, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %land.lhs.true.2
  %11 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %type4 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %11, i32 0, i32 6
  %12 = load i32, i32* %type4, align 4
  %cmp5 = icmp eq i32 %12, 3
  br i1 %cmp5, label %land.rhs, label %lor.lhs.false.6

lor.lhs.false.6:                                  ; preds = %lor.lhs.false
  %13 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %type7 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %13, i32 0, i32 6
  %14 = load i32, i32* %type7, align 4
  %cmp8 = icmp eq i32 %14, 4
  br i1 %cmp8, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %lor.lhs.false.6, %lor.lhs.false, %land.lhs.true.2
  %15 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %structure9 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %15, i32 0, i32 7
  %16 = load i32, i32* %structure9, align 4
  %cmp10 = icmp eq i32 %16, 2
  %lnot = xor i1 %cmp10, true
  br label %land.end

land.end:                                         ; preds = %land.rhs, %lor.lhs.false.6, %lor.rhs
  %17 = phi i1 [ false, %lor.lhs.false.6 ], [ false, %lor.rhs ], [ %lnot, %land.rhs ]
  br label %lor.end

lor.end:                                          ; preds = %land.end, %land.lhs.true
  %18 = phi i1 [ true, %land.lhs.true ], [ %17, %land.end ]
  %lor.ext = zext i1 %18 to i32
  %19 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %currentPicture11 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %19, i32 0, i32 49
  %20 = load %struct.Picture*, %struct.Picture** %currentPicture11, align 8
  %idr_flag = getelementptr inbounds %struct.Picture, %struct.Picture* %20, i32 0, i32 1
  store i32 %lor.ext, i32* %idr_flag, align 4
  %21 = load %struct.Picture*, %struct.Picture** %pic.addr, align 8
  %no_slices = getelementptr inbounds %struct.Picture, %struct.Picture* %21, i32 0, i32 0
  store i32 0, i32* %no_slices, align 4
  %22 = load %struct.Picture*, %struct.Picture** %pic.addr, align 8
  %distortion_y = getelementptr inbounds %struct.Picture, %struct.Picture* %22, i32 0, i32 4
  store float 0.000000e+00, float* %distortion_y, align 4
  %23 = load %struct.Picture*, %struct.Picture** %pic.addr, align 8
  %distortion_v = getelementptr inbounds %struct.Picture, %struct.Picture* %23, i32 0, i32 6
  store float 0.000000e+00, float* %distortion_v, align 4
  %24 = load %struct.Picture*, %struct.Picture** %pic.addr, align 8
  %distortion_u = getelementptr inbounds %struct.Picture, %struct.Picture* %24, i32 0, i32 5
  store float 0.000000e+00, float* %distortion_u, align 4
  call void (...) @RandomIntraNewPicture()
  %25 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %slice_group_change_cycle = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %25, i32 0, i32 147
  store i32 1, i32* %slice_group_change_cycle, align 4
  %26 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %27 = load %struct.pic_parameter_set_rbsp_t*, %struct.pic_parameter_set_rbsp_t** @active_pps, align 8
  %28 = load %struct.seq_parameter_set_rbsp_t*, %struct.seq_parameter_set_rbsp_t** @active_sps, align 8
  %call = call i32 @FmoInit(%struct.ImageParameters* %26, %struct.pic_parameter_set_rbsp_t* %27, %struct.seq_parameter_set_rbsp_t* %28)
  %call12 = call i32 (...) @FmoStartPicture()
  call void (...) @CalculateQuantParam()
  call void (...) @CalculateOffsetParam()
  %29 = load %struct.InputParameters*, %struct.InputParameters** @input, align 8
  %AllowTransform8x8 = getelementptr inbounds %struct.InputParameters, %struct.InputParameters* %29, i32 0, i32 123
  %30 = load i32, i32* %AllowTransform8x8, align 4
  %tobool13 = icmp ne i32 %30, 0
  br i1 %tobool13, label %if.then, label %if.end

if.then:                                          ; preds = %lor.end
  call void (...) @CalculateQuant8Param()
  call void (...) @CalculateOffset8Param()
  br label %if.end

if.end:                                           ; preds = %if.then, %lor.end
  br label %while.cond

while.cond:                                       ; preds = %while.end, %if.end
  %31 = load i32, i32* %NumberOfCodedMBs, align 4
  %32 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %total_number_mb = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %32, i32 0, i32 4
  %33 = load i32, i32* %total_number_mb, align 4
  %cmp14 = icmp slt i32 %31, %33
  br i1 %cmp14, label %while.body, label %while.end.22

while.body:                                       ; preds = %while.cond
  br label %while.cond.15

while.cond.15:                                    ; preds = %while.body.19, %while.body
  %34 = load i32, i32* %SliceGroup, align 4
  %call16 = call i32 @FmoSliceGroupCompletelyCoded(i32 %34)
  %tobool17 = icmp ne i32 %call16, 0
  %lnot18 = xor i1 %tobool17, true
  br i1 %lnot18, label %while.body.19, label %while.end

while.body.19:                                    ; preds = %while.cond.15
  %35 = load i32, i32* %SliceGroup, align 4
  %36 = load %struct.Picture*, %struct.Picture** %pic.addr, align 8
  %call20 = call i32 @encode_one_slice(i32 %35, %struct.Picture* %36)
  %37 = load i32, i32* %NumberOfCodedMBs, align 4
  %add = add nsw i32 %37, %call20
  store i32 %add, i32* %NumberOfCodedMBs, align 4
  %38 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %current_mb_nr = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %38, i32 0, i32 3
  %39 = load i32, i32* %current_mb_nr, align 4
  call void @FmoSetLastMacroblockInSlice(i32 %39)
  %40 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %current_slice_nr = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %40, i32 0, i32 5
  %41 = load i32, i32* %current_slice_nr, align 4
  %inc = add nsw i32 %41, 1
  store i32 %inc, i32* %current_slice_nr, align 4
  %42 = load %struct.StatParameters*, %struct.StatParameters** @stats, align 8
  %bit_slice = getelementptr inbounds %struct.StatParameters, %struct.StatParameters* %42, i32 0, i32 6
  store i32 0, i32* %bit_slice, align 4
  br label %while.cond.15

while.end:                                        ; preds = %while.cond.15
  %43 = load i32, i32* %SliceGroup, align 4
  %inc21 = add nsw i32 %43, 1
  store i32 %inc21, i32* %SliceGroup, align 4
  br label %while.cond

while.end.22:                                     ; preds = %while.cond
  %call23 = call i32 (...) @FmoEndPicture()
  %44 = load %struct.InputParameters*, %struct.InputParameters** @input, align 8
  %rdopt = getelementptr inbounds %struct.InputParameters, %struct.InputParameters* %44, i32 0, i32 85
  %45 = load i32, i32* %rdopt, align 4
  %cmp24 = icmp eq i32 %45, 2
  br i1 %cmp24, label %land.lhs.true.25, label %if.end.31

land.lhs.true.25:                                 ; preds = %while.end.22
  %46 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %type26 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %46, i32 0, i32 6
  %47 = load i32, i32* %type26, align 4
  %cmp27 = icmp ne i32 %47, 1
  br i1 %cmp27, label %if.then.28, label %if.end.31

if.then.28:                                       ; preds = %land.lhs.true.25
  store i32 0, i32* %j, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.then.28
  %48 = load i32, i32* %j, align 4
  %49 = load %struct.InputParameters*, %struct.InputParameters** @input, align 8
  %NoOfDecoders = getelementptr inbounds %struct.InputParameters, %struct.InputParameters* %49, i32 0, i32 97
  %50 = load i32, i32* %NoOfDecoders, align 4
  %cmp29 = icmp slt i32 %48, %50
  br i1 %cmp29, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %51 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %52 = load i32, i32* %j, align 4
  %idxprom = sext i32 %52 to i64
  %53 = load %struct.Decoders*, %struct.Decoders** @decs, align 8
  %decY_best = getelementptr inbounds %struct.Decoders, %struct.Decoders* %53, i32 0, i32 3
  %54 = load i16***, i16**** %decY_best, align 8
  %arrayidx = getelementptr inbounds i16**, i16*** %54, i64 %idxprom
  %55 = load i16**, i16*** %arrayidx, align 8
  call void @DeblockFrame(%struct.ImageParameters* %51, i16** %55, i16*** null)
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %56 = load i32, i32* %j, align 4
  %inc30 = add nsw i32 %56, 1
  store i32 %inc30, i32* %j, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  br label %if.end.31

if.end.31:                                        ; preds = %for.end, %land.lhs.true.25, %while.end.22
  %57 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %58 = load %struct.storable_picture*, %struct.storable_picture** @enc_picture, align 8
  %imgY = getelementptr inbounds %struct.storable_picture, %struct.storable_picture* %58, i32 0, i32 25
  %59 = load i16**, i16*** %imgY, align 8
  %60 = load %struct.storable_picture*, %struct.storable_picture** @enc_picture, align 8
  %imgUV = getelementptr inbounds %struct.storable_picture, %struct.storable_picture* %60, i32 0, i32 30
  %61 = load i16***, i16**** %imgUV, align 8
  call void @DeblockFrame(%struct.ImageParameters* %57, i16** %59, i16*** %61)
  %62 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %MbaffFrameFlag = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %62, i32 0, i32 90
  %63 = load i32, i32* %MbaffFrameFlag, align 4
  %tobool32 = icmp ne i32 %63, 0
  br i1 %tobool32, label %if.then.33, label %if.end.34

if.then.33:                                       ; preds = %if.end.31
  call void @MbAffPostProc()
  br label %if.end.34

if.end.34:                                        ; preds = %if.then.33, %if.end.31
  ret void
}

declare void @RandomIntraNewPicture(...) #1

declare i32 @FmoInit(%struct.ImageParameters*, %struct.pic_parameter_set_rbsp_t*, %struct.seq_parameter_set_rbsp_t*) #1

declare i32 @FmoStartPicture(...) #1

declare void @CalculateQuantParam(...) #1

declare void @CalculateOffsetParam(...) #1

declare void @CalculateQuant8Param(...) #1

declare void @CalculateOffset8Param(...) #1

declare i32 @FmoSliceGroupCompletelyCoded(i32) #1

declare i32 @encode_one_slice(i32, %struct.Picture*) #1

declare void @FmoSetLastMacroblockInSlice(i32) #1

declare i32 @FmoEndPicture(...) #1

declare void @DeblockFrame(%struct.ImageParameters*, i16**, i16***) #1

; Function Attrs: nounwind uwtable
define i32 @encode_one_frame() #0 {
entry:
  %retval = alloca i32, align 4
  %FrameNumberInFile = alloca i32, align 4
  %ltime1 = alloca i64, align 8
  %ltime2 = alloca i64, align 8
  %tstruct1 = alloca %struct.timeb, align 8
  %tstruct2 = alloca %struct.timeb, align 8
  %tmp_time = alloca i32, align 4
  %bits_frm = alloca i32, align 4
  %bits_fld = alloca i32, align 4
  %dis_frm = alloca float, align 4
  %dis_frm_y = alloca float, align 4
  %dis_frm_u = alloca float, align 4
  %dis_frm_v = alloca float, align 4
  %dis_fld = alloca float, align 4
  %dis_fld_y = alloca float, align 4
  %dis_fld_u = alloca float, align 4
  %dis_fld_v = alloca float, align 4
  %pic_type = alloca i32, align 4
  %bits = alloca i32, align 4
  store i32 0, i32* %bits_frm, align 4
  store i32 0, i32* %bits_fld, align 4
  store float 0.000000e+00, float* %dis_frm, align 4
  store float 0.000000e+00, float* %dis_frm_y, align 4
  store float 0.000000e+00, float* %dis_frm_u, align 4
  store float 0.000000e+00, float* %dis_frm_v, align 4
  store float 0.000000e+00, float* %dis_fld, align 4
  store float 0.000000e+00, float* %dis_fld_y, align 4
  store float 0.000000e+00, float* %dis_fld_u, align 4
  store float 0.000000e+00, float* %dis_fld_v, align 4
  store i32 0, i32* %bits, align 4
  store i32 0, i32* @me_time, align 4
  %0 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %rd_pass = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %0, i32 0, i32 58
  store i32 0, i32* %rd_pass, align 4
  store %struct.storable_picture* null, %struct.storable_picture** @enc_frame_picture, align 8
  store %struct.storable_picture* null, %struct.storable_picture** @enc_frame_picture2, align 8
  store %struct.storable_picture* null, %struct.storable_picture** @enc_frame_picture3, align 8
  %time = getelementptr inbounds %struct.timeb, %struct.timeb* %tstruct1, i32 0, i32 0
  store i64 0, i64* %time, align 8
  %millitm = getelementptr inbounds %struct.timeb, %struct.timeb* %tstruct1, i32 0, i32 1
  store i16 0, i16* %millitm, align 2
  %timezone = getelementptr inbounds %struct.timeb, %struct.timeb* %tstruct1, i32 0, i32 2
  store i16 0, i16* %timezone, align 2
  %dstflag = getelementptr inbounds %struct.timeb, %struct.timeb* %tstruct1, i32 0, i32 3
  store i16 0, i16* %dstflag, align 2
  store i64 0, i64* %ltime1, align 8
  %1 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %write_macroblock = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %1, i32 0, i32 140
  store i32 0, i32* %write_macroblock, align 4
  %2 = load %struct.InputParameters*, %struct.InputParameters** @input, align 8
  %ResendPPS = getelementptr inbounds %struct.InputParameters, %struct.InputParameters* %2, i32 0, i32 14
  %3 = load i32, i32* %ResendPPS, align 4
  %tobool = icmp ne i32 %3, 0
  br i1 %tobool, label %land.lhs.true, label %if.end

land.lhs.true:                                    ; preds = %entry
  %4 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %number = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %4, i32 0, i32 0
  %5 = load i32, i32* %number, align 4
  %cmp = icmp ne i32 %5, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %land.lhs.true
  %call = call i32 @write_PPS(i32 0, i32 0)
  %6 = load %struct.StatParameters*, %struct.StatParameters** @stats, align 8
  %bit_ctr_parametersets_n = getelementptr inbounds %struct.StatParameters, %struct.StatParameters* %6, i32 0, i32 33
  store i32 %call, i32* %bit_ctr_parametersets_n, align 4
  %7 = load %struct.StatParameters*, %struct.StatParameters** @stats, align 8
  %bit_ctr_parametersets_n1 = getelementptr inbounds %struct.StatParameters, %struct.StatParameters* %7, i32 0, i32 33
  %8 = load i32, i32* %bit_ctr_parametersets_n1, align 4
  %9 = load %struct.StatParameters*, %struct.StatParameters** @stats, align 8
  %bit_ctr_parametersets = getelementptr inbounds %struct.StatParameters, %struct.StatParameters* %9, i32 0, i32 32
  %10 = load i32, i32* %bit_ctr_parametersets, align 4
  %add = add nsw i32 %10, %8
  store i32 %add, i32* %bit_ctr_parametersets, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %land.lhs.true, %entry
  call void @put_buffer_frame()
  call void @init_frame()
  %call2 = call i32 @CalculateFrameNumber()
  store i32 %call2, i32* %FrameNumberInFile, align 4
  %11 = load i32, i32* %FrameNumberInFile, align 4
  %12 = load %struct.InputParameters*, %struct.InputParameters** @input, align 8
  %infile_header = getelementptr inbounds %struct.InputParameters, %struct.InputParameters* %12, i32 0, i32 25
  %13 = load i32, i32* %infile_header, align 4
  %14 = load %struct.InputParameters*, %struct.InputParameters** @input, align 8
  %img_width = getelementptr inbounds %struct.InputParameters, %struct.InputParameters* %14, i32 0, i32 16
  %15 = load i32, i32* %img_width, align 4
  %16 = load %struct.InputParameters*, %struct.InputParameters** @input, align 8
  %img_height = getelementptr inbounds %struct.InputParameters, %struct.InputParameters* %16, i32 0, i32 17
  %17 = load i32, i32* %img_height, align 4
  %18 = load %struct.InputParameters*, %struct.InputParameters** @input, align 8
  %img_width_cr = getelementptr inbounds %struct.InputParameters, %struct.InputParameters* %18, i32 0, i32 138
  %19 = load i32, i32* %img_width_cr, align 4
  %20 = load %struct.InputParameters*, %struct.InputParameters** @input, align 8
  %img_height_cr = getelementptr inbounds %struct.InputParameters, %struct.InputParameters* %20, i32 0, i32 137
  %21 = load i32, i32* %img_height_cr, align 4
  call void @ReadOneFrame(i32 %11, i32 %13, i32 %15, i32 %17, i32 %19, i32 %21)
  %22 = load %struct.InputParameters*, %struct.InputParameters** @input, align 8
  %img_width3 = getelementptr inbounds %struct.InputParameters, %struct.InputParameters* %22, i32 0, i32 16
  %23 = load i32, i32* %img_width3, align 4
  %24 = load %struct.InputParameters*, %struct.InputParameters** @input, align 8
  %img_height4 = getelementptr inbounds %struct.InputParameters, %struct.InputParameters* %24, i32 0, i32 17
  %25 = load i32, i32* %img_height4, align 4
  %26 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %width = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %26, i32 0, i32 13
  %27 = load i32, i32* %width, align 4
  %28 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %height = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %28, i32 0, i32 15
  %29 = load i32, i32* %height, align 4
  %30 = load %struct.InputParameters*, %struct.InputParameters** @input, align 8
  %img_width_cr5 = getelementptr inbounds %struct.InputParameters, %struct.InputParameters* %30, i32 0, i32 138
  %31 = load i32, i32* %img_width_cr5, align 4
  %32 = load %struct.InputParameters*, %struct.InputParameters** @input, align 8
  %img_height_cr6 = getelementptr inbounds %struct.InputParameters, %struct.InputParameters* %32, i32 0, i32 137
  %33 = load i32, i32* %img_height_cr6, align 4
  %34 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %width_cr = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %34, i32 0, i32 14
  %35 = load i32, i32* %width_cr, align 4
  %36 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %height_cr = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %36, i32 0, i32 16
  %37 = load i32, i32* %height_cr, align 4
  call void @PaddAutoCropBorders(i32 %23, i32 %25, i32 %27, i32 %29, i32 %31, i32 %33, i32 %35, i32 %37)
  %38 = load %struct.InputParameters*, %struct.InputParameters** @input, align 8
  %direct_spatial_mv_pred_flag = getelementptr inbounds %struct.InputParameters, %struct.InputParameters* %38, i32 0, i32 37
  %39 = load i32, i32* %direct_spatial_mv_pred_flag, align 4
  %40 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %direct_spatial_mv_pred_flag7 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %40, i32 0, i32 78
  store i32 %39, i32* %direct_spatial_mv_pred_flag7, align 4
  %41 = load %struct.InputParameters*, %struct.InputParameters** @input, align 8
  %LFDisableIdc = getelementptr inbounds %struct.InputParameters, %struct.InputParameters* %41, i32 0, i32 103
  %42 = load i32, i32* %LFDisableIdc, align 4
  %43 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %LFDisableIdc8 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %43, i32 0, i32 75
  store i32 %42, i32* %LFDisableIdc8, align 4
  %44 = load %struct.InputParameters*, %struct.InputParameters** @input, align 8
  %LFAlphaC0Offset = getelementptr inbounds %struct.InputParameters, %struct.InputParameters* %44, i32 0, i32 104
  %45 = load i32, i32* %LFAlphaC0Offset, align 4
  %46 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %LFAlphaC0Offset9 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %46, i32 0, i32 76
  store i32 %45, i32* %LFAlphaC0Offset9, align 4
  %47 = load %struct.InputParameters*, %struct.InputParameters** @input, align 8
  %LFBetaOffset = getelementptr inbounds %struct.InputParameters, %struct.InputParameters* %47, i32 0, i32 105
  %48 = load i32, i32* %LFBetaOffset, align 4
  %49 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %LFBetaOffset10 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %49, i32 0, i32 77
  store i32 %48, i32* %LFBetaOffset10, align 4
  %50 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %type = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %50, i32 0, i32 6
  %51 = load i32, i32* %type, align 4
  %cmp11 = icmp eq i32 %51, 1
  br i1 %cmp11, label %if.then.12, label %if.else

if.then.12:                                       ; preds = %if.end
  %52 = load i32, i32* @Bframe_ctr, align 4
  %inc = add nsw i32 %52, 1
  store i32 %inc, i32* @Bframe_ctr, align 4
  br label %if.end.20

if.else:                                          ; preds = %if.end
  %53 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %type13 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %53, i32 0, i32 6
  %54 = load i32, i32* %type13, align 4
  %cmp14 = icmp eq i32 %54, 2
  br i1 %cmp14, label %if.then.15, label %if.else.17

if.then.15:                                       ; preds = %if.else
  %55 = load i32, i32* @Iframe_ctr, align 4
  %inc16 = add nsw i32 %55, 1
  store i32 %inc16, i32* @Iframe_ctr, align 4
  br label %if.end.19

if.else.17:                                       ; preds = %if.else
  %56 = load i32, i32* @Pframe_ctr, align 4
  %inc18 = add nsw i32 %56, 1
  store i32 %inc18, i32* @Pframe_ctr, align 4
  br label %if.end.19

if.end.19:                                        ; preds = %if.else.17, %if.then.15
  br label %if.end.20

if.end.20:                                        ; preds = %if.end.19, %if.then.12
  %57 = load %struct.InputParameters*, %struct.InputParameters** @input, align 8
  %PicInterlace = getelementptr inbounds %struct.InputParameters, %struct.InputParameters* %57, i32 0, i32 91
  %58 = load i32, i32* %PicInterlace, align 4
  %cmp21 = icmp eq i32 %58, 1
  br i1 %cmp21, label %if.then.22, label %if.else.23

if.then.22:                                       ; preds = %if.end.20
  %59 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %FieldControl = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %59, i32 0, i32 134
  store i32 1, i32* %FieldControl, align 4
  %60 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %field_picture = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %60, i32 0, i32 100
  store i32 1, i32* %field_picture, align 4
  %61 = load %struct.Picture*, %struct.Picture** @top_pic, align 8
  %62 = load %struct.Picture*, %struct.Picture** @bottom_pic, align 8
  call void @field_picture(%struct.Picture* %61, %struct.Picture* %62)
  %63 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %fld_flag = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %63, i32 0, i32 57
  store i32 1, i32* %fld_flag, align 4
  br label %if.end.91

if.else.23:                                       ; preds = %if.end.20
  %64 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %FieldControl24 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %64, i32 0, i32 134
  store i32 0, i32* %FieldControl24, align 4
  %65 = load %struct.InputParameters*, %struct.InputParameters** @input, align 8
  %MbInterlace = getelementptr inbounds %struct.InputParameters, %struct.InputParameters* %65, i32 0, i32 92
  %66 = load i32, i32* %MbInterlace, align 4
  %tobool25 = icmp ne i32 %66, 0
  br i1 %tobool25, label %if.then.26, label %if.end.27

if.then.26:                                       ; preds = %if.else.23
  store i32 1, i32* @mb_adaptive, align 4
  br label %if.end.27

if.end.27:                                        ; preds = %if.then.26, %if.else.23
  %67 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %field_picture28 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %67, i32 0, i32 100
  store i32 0, i32* %field_picture28, align 4
  %68 = load %struct.InputParameters*, %struct.InputParameters** @input, align 8
  %RCEnable = getelementptr inbounds %struct.InputParameters, %struct.InputParameters* %68, i32 0, i32 127
  %69 = load i32, i32* %RCEnable, align 4
  %tobool29 = icmp ne i32 %69, 0
  br i1 %tobool29, label %if.then.30, label %if.end.48

if.then.30:                                       ; preds = %if.end.27
  %70 = load %struct.InputParameters*, %struct.InputParameters** @input, align 8
  %MbInterlace31 = getelementptr inbounds %struct.InputParameters, %struct.InputParameters* %70, i32 0, i32 92
  %71 = load i32, i32* %MbInterlace31, align 4
  %tobool32 = icmp ne i32 %71, 0
  br i1 %tobool32, label %land.lhs.true.33, label %if.else.42

land.lhs.true.33:                                 ; preds = %if.then.30
  %72 = load %struct.InputParameters*, %struct.InputParameters** @input, align 8
  %basicunit = getelementptr inbounds %struct.InputParameters, %struct.InputParameters* %72, i32 0, i32 130
  %73 = load i32, i32* %basicunit, align 4
  %74 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %Frame_Total_Number_MB = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %74, i32 0, i32 136
  %75 = load i32, i32* %Frame_Total_Number_MB, align 4
  %cmp34 = icmp slt i32 %73, %75
  br i1 %cmp34, label %land.lhs.true.35, label %if.else.42

land.lhs.true.35:                                 ; preds = %land.lhs.true.33
  %76 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %type36 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %76, i32 0, i32 6
  %77 = load i32, i32* %type36, align 4
  %cmp37 = icmp eq i32 %77, 0
  br i1 %cmp37, label %land.lhs.true.38, label %if.else.42

land.lhs.true.38:                                 ; preds = %land.lhs.true.35
  %78 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %IFLAG = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %78, i32 0, i32 137
  %79 = load i32, i32* %IFLAG, align 4
  %cmp39 = icmp eq i32 %79, 0
  br i1 %cmp39, label %if.then.40, label %if.else.42

if.then.40:                                       ; preds = %land.lhs.true.38
  %80 = load %struct.InputParameters*, %struct.InputParameters** @input, align 8
  %basicunit41 = getelementptr inbounds %struct.InputParameters, %struct.InputParameters* %80, i32 0, i32 130
  %81 = load i32, i32* %basicunit41, align 4
  %mul = mul nsw i32 %81, 2
  %82 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %BasicUnit = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %82, i32 0, i32 139
  store i32 %mul, i32* %BasicUnit, align 4
  br label %if.end.45

if.else.42:                                       ; preds = %land.lhs.true.38, %land.lhs.true.35, %land.lhs.true.33, %if.then.30
  %83 = load %struct.InputParameters*, %struct.InputParameters** @input, align 8
  %basicunit43 = getelementptr inbounds %struct.InputParameters, %struct.InputParameters* %83, i32 0, i32 130
  %84 = load i32, i32* %basicunit43, align 4
  %85 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %BasicUnit44 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %85, i32 0, i32 139
  store i32 %84, i32* %BasicUnit44, align 4
  br label %if.end.45

if.end.45:                                        ; preds = %if.else.42, %if.then.40
  call void @rc_init_pict(i32 1, i32 0, i32 1)
  %call46 = call i32 @updateQuantizationParameter(i32 0)
  %86 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %qp = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %86, i32 0, i32 10
  store i32 %call46, i32* %qp, align 4
  %87 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %type47 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %87, i32 0, i32 6
  %88 = load i32, i32* %type47, align 4
  store i32 %88, i32* %pic_type, align 4
  store i32 0, i32* @QP, align 4
  br label %if.end.48

if.end.48:                                        ; preds = %if.end.45, %if.end.27
  %89 = load %struct.seq_parameter_set_rbsp_t*, %struct.seq_parameter_set_rbsp_t** @active_sps, align 8
  %frame_mbs_only_flag = getelementptr inbounds %struct.seq_parameter_set_rbsp_t, %struct.seq_parameter_set_rbsp_t* %89, i32 0, i32 25
  %90 = load i32, i32* %frame_mbs_only_flag, align 4
  %tobool49 = icmp ne i32 %90, 0
  br i1 %tobool49, label %if.then.50, label %if.end.51

if.then.50:                                       ; preds = %if.end.48
  %91 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %TopFieldFlag = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %91, i32 0, i32 133
  store i32 0, i32* %TopFieldFlag, align 4
  br label %if.end.51

if.end.51:                                        ; preds = %if.then.50, %if.end.48
  %92 = load %struct.InputParameters*, %struct.InputParameters** @input, align 8
  %GenerateMultiplePPS = getelementptr inbounds %struct.InputParameters, %struct.InputParameters* %92, i32 0, i32 15
  %93 = load i32, i32* %GenerateMultiplePPS, align 4
  %tobool52 = icmp ne i32 %93, 0
  br i1 %tobool52, label %if.then.53, label %if.end.54

if.then.53:                                       ; preds = %if.end.51
  store %struct.pic_parameter_set_rbsp_t* getelementptr inbounds ([256 x %struct.pic_parameter_set_rbsp_t], [256 x %struct.pic_parameter_set_rbsp_t]* @PicParSet, i32 0, i64 0), %struct.pic_parameter_set_rbsp_t** @active_pps, align 8
  br label %if.end.54

if.end.54:                                        ; preds = %if.then.53, %if.end.51
  %94 = load %struct.Picture*, %struct.Picture** @frame_pic, align 8
  call void @frame_picture(%struct.Picture* %94, i32 0)
  %95 = load %struct.InputParameters*, %struct.InputParameters** @input, align 8
  %RDPictureIntra = getelementptr inbounds %struct.InputParameters, %struct.InputParameters* %95, i32 0, i32 50
  %96 = load i32, i32* %RDPictureIntra, align 4
  %tobool55 = icmp ne i32 %96, 0
  br i1 %tobool55, label %land.lhs.true.58, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.end.54
  %97 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %type56 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %97, i32 0, i32 6
  %98 = load i32, i32* %type56, align 4
  %cmp57 = icmp ne i32 %98, 2
  br i1 %cmp57, label %land.lhs.true.58, label %if.end.61

land.lhs.true.58:                                 ; preds = %lor.lhs.false, %if.end.54
  %99 = load %struct.InputParameters*, %struct.InputParameters** @input, align 8
  %RDPictureDecision = getelementptr inbounds %struct.InputParameters, %struct.InputParameters* %99, i32 0, i32 49
  %100 = load i32, i32* %RDPictureDecision, align 4
  %tobool59 = icmp ne i32 %100, 0
  br i1 %tobool59, label %if.then.60, label %if.end.61

if.then.60:                                       ; preds = %land.lhs.true.58
  call void @rdPictureCoding()
  br label %if.end.61

if.end.61:                                        ; preds = %if.then.60, %land.lhs.true.58, %lor.lhs.false
  %101 = load %struct.InputParameters*, %struct.InputParameters** @input, align 8
  %MbInterlace62 = getelementptr inbounds %struct.InputParameters, %struct.InputParameters* %101, i32 0, i32 92
  %102 = load i32, i32* %MbInterlace62, align 4
  %tobool63 = icmp ne i32 %102, 0
  br i1 %tobool63, label %if.then.64, label %if.end.65

if.then.64:                                       ; preds = %if.end.61
  store i32 0, i32* @mb_adaptive, align 4
  br label %if.end.65

if.end.65:                                        ; preds = %if.then.64, %if.end.61
  %103 = load %struct.InputParameters*, %struct.InputParameters** @input, align 8
  %PicInterlace66 = getelementptr inbounds %struct.InputParameters, %struct.InputParameters* %103, i32 0, i32 91
  %104 = load i32, i32* %PicInterlace66, align 4
  %cmp67 = icmp eq i32 %104, 2
  br i1 %cmp67, label %if.then.68, label %if.else.88

if.then.68:                                       ; preds = %if.end.65
  %105 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %FieldControl69 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %105, i32 0, i32 134
  store i32 1, i32* %FieldControl69, align 4
  %106 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %write_macroblock70 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %106, i32 0, i32 140
  store i32 0, i32* %write_macroblock70, align 4
  %107 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %bot_MB = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %107, i32 0, i32 141
  store i32 0, i32* %bot_MB, align 4
  %108 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %field_picture71 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %108, i32 0, i32 100
  store i32 1, i32* %field_picture71, align 4
  %109 = load %struct.Picture*, %struct.Picture** @top_pic, align 8
  %110 = load %struct.Picture*, %struct.Picture** @bottom_pic, align 8
  call void @field_picture(%struct.Picture* %109, %struct.Picture* %110)
  %111 = load %struct.Picture*, %struct.Picture** @top_pic, align 8
  %distortion_y = getelementptr inbounds %struct.Picture, %struct.Picture* %111, i32 0, i32 4
  %112 = load float, float* %distortion_y, align 4
  %113 = load %struct.Picture*, %struct.Picture** @top_pic, align 8
  %distortion_u = getelementptr inbounds %struct.Picture, %struct.Picture* %113, i32 0, i32 5
  %114 = load float, float* %distortion_u, align 4
  %add72 = fadd float %112, %114
  %115 = load %struct.Picture*, %struct.Picture** @top_pic, align 8
  %distortion_v = getelementptr inbounds %struct.Picture, %struct.Picture* %115, i32 0, i32 6
  %116 = load float, float* %distortion_v, align 4
  %add73 = fadd float %add72, %116
  store float %add73, float* %dis_fld, align 4
  %117 = load %struct.Picture*, %struct.Picture** @frame_pic, align 8
  %distortion_y74 = getelementptr inbounds %struct.Picture, %struct.Picture* %117, i32 0, i32 4
  %118 = load float, float* %distortion_y74, align 4
  %119 = load %struct.Picture*, %struct.Picture** @frame_pic, align 8
  %distortion_u75 = getelementptr inbounds %struct.Picture, %struct.Picture* %119, i32 0, i32 5
  %120 = load float, float* %distortion_u75, align 4
  %add76 = fadd float %118, %120
  %121 = load %struct.Picture*, %struct.Picture** @frame_pic, align 8
  %distortion_v77 = getelementptr inbounds %struct.Picture, %struct.Picture* %121, i32 0, i32 6
  %122 = load float, float* %distortion_v77, align 4
  %add78 = fadd float %add76, %122
  store float %add78, float* %dis_frm, align 4
  %123 = load %struct.Picture*, %struct.Picture** @frame_pic, align 8
  %124 = load %struct.Picture*, %struct.Picture** @top_pic, align 8
  %125 = load %struct.Picture*, %struct.Picture** @bottom_pic, align 8
  %call79 = call i32 @picture_structure_decision(%struct.Picture* %123, %struct.Picture* %124, %struct.Picture* %125)
  %126 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %fld_flag80 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %126, i32 0, i32 57
  store i32 %call79, i32* %fld_flag80, align 4
  %127 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %fld_flag81 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %127, i32 0, i32 57
  %128 = load i32, i32* %fld_flag81, align 4
  call void @update_field_frame_contexts(i32 %128)
  %129 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %fld_flag82 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %129, i32 0, i32 57
  %130 = load i32, i32* %fld_flag82, align 4
  %cmp83 = icmp eq i32 %130, 0
  br i1 %cmp83, label %if.then.84, label %if.else.85

if.then.84:                                       ; preds = %if.then.68
  %131 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %FieldFrame = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %131, i32 0, i32 135
  store i32 1, i32* %FieldFrame, align 4
  br label %if.end.87

if.else.85:                                       ; preds = %if.then.68
  %132 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %FieldFrame86 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %132, i32 0, i32 135
  store i32 0, i32* %FieldFrame86, align 4
  br label %if.end.87

if.end.87:                                        ; preds = %if.else.85, %if.then.84
  br label %if.end.90

if.else.88:                                       ; preds = %if.end.65
  %133 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %fld_flag89 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %133, i32 0, i32 57
  store i32 0, i32* %fld_flag89, align 4
  br label %if.end.90

if.end.90:                                        ; preds = %if.else.88, %if.end.87
  br label %if.end.91

if.end.91:                                        ; preds = %if.end.90, %if.then.22
  %134 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %fld_flag92 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %134, i32 0, i32 57
  %135 = load i32, i32* %fld_flag92, align 4
  %tobool93 = icmp ne i32 %135, 0
  br i1 %tobool93, label %if.then.94, label %if.else.96

if.then.94:                                       ; preds = %if.end.91
  %136 = load %struct.StatParameters*, %struct.StatParameters** @stats, align 8
  %em_prev_bits_fld = getelementptr inbounds %struct.StatParameters, %struct.StatParameters* %136, i32 0, i32 30
  %137 = load i32, i32* %em_prev_bits_fld, align 4
  %138 = load %struct.StatParameters*, %struct.StatParameters** @stats, align 8
  %bit_ctr_emulationprevention = getelementptr inbounds %struct.StatParameters, %struct.StatParameters* %138, i32 0, i32 7
  %139 = load i32, i32* %bit_ctr_emulationprevention, align 4
  %add95 = add nsw i32 %139, %137
  store i32 %add95, i32* %bit_ctr_emulationprevention, align 4
  br label %if.end.99

if.else.96:                                       ; preds = %if.end.91
  %140 = load %struct.StatParameters*, %struct.StatParameters** @stats, align 8
  %em_prev_bits_frm = getelementptr inbounds %struct.StatParameters, %struct.StatParameters* %140, i32 0, i32 29
  %141 = load i32, i32* %em_prev_bits_frm, align 4
  %142 = load %struct.StatParameters*, %struct.StatParameters** @stats, align 8
  %bit_ctr_emulationprevention97 = getelementptr inbounds %struct.StatParameters, %struct.StatParameters* %142, i32 0, i32 7
  %143 = load i32, i32* %bit_ctr_emulationprevention97, align 4
  %add98 = add nsw i32 %143, %141
  store i32 %add98, i32* %bit_ctr_emulationprevention97, align 4
  br label %if.end.99

if.end.99:                                        ; preds = %if.else.96, %if.then.94
  %144 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %type100 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %144, i32 0, i32 6
  %145 = load i32, i32* %type100, align 4
  %cmp101 = icmp ne i32 %145, 1
  br i1 %cmp101, label %if.then.102, label %if.end.104

if.then.102:                                      ; preds = %if.end.99
  %146 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %fld_flag103 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %146, i32 0, i32 57
  %147 = load i32, i32* %fld_flag103, align 4
  %148 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %pstruct_next_P = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %148, i32 0, i32 60
  store i32 %147, i32* %pstruct_next_P, align 4
  br label %if.end.104

if.end.104:                                       ; preds = %if.then.102, %if.end.99
  %149 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %fld_flag105 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %149, i32 0, i32 57
  %150 = load i32, i32* %fld_flag105, align 4
  %tobool106 = icmp ne i32 %150, 0
  br i1 %tobool106, label %if.then.107, label %if.else.110

if.then.107:                                      ; preds = %if.end.104
  %151 = load i32, i32* %bits_fld, align 4
  %152 = load float, float* %dis_fld_y, align 4
  %153 = load float, float* %dis_fld_u, align 4
  %154 = load float, float* %dis_fld_v, align 4
  call void @field_mode_buffer(i32 %151, float %152, float %153, float %154)
  %155 = load %struct.Picture*, %struct.Picture** @top_pic, align 8
  %call108 = call i32 @writeout_picture(%struct.Picture* %155)
  %156 = load %struct.Picture*, %struct.Picture** @bottom_pic, align 8
  %call109 = call i32 @writeout_picture(%struct.Picture* %156)
  br label %if.end.130

if.else.110:                                      ; preds = %if.end.104
  %157 = load i32, i32* %bits_frm, align 4
  %158 = load float, float* %dis_frm_y, align 4
  %159 = load float, float* %dis_frm_u, align 4
  %160 = load float, float* %dis_frm_v, align 4
  call void @frame_mode_buffer(i32 %157, float %158, float %159, float %160)
  %161 = load %struct.InputParameters*, %struct.InputParameters** @input, align 8
  %RDPictureDecision111 = getelementptr inbounds %struct.InputParameters, %struct.InputParameters* %161, i32 0, i32 49
  %162 = load i32, i32* %RDPictureDecision111, align 4
  %tobool112 = icmp ne i32 %162, 0
  br i1 %tobool112, label %land.lhs.true.113, label %if.else.118

land.lhs.true.113:                                ; preds = %if.else.110
  %163 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %rd_pass114 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %163, i32 0, i32 58
  %164 = load i32, i32* %rd_pass114, align 4
  %cmp115 = icmp eq i32 %164, 2
  br i1 %cmp115, label %if.then.116, label %if.else.118

if.then.116:                                      ; preds = %land.lhs.true.113
  %165 = load %struct.Picture*, %struct.Picture** @frame_pic3, align 8
  %call117 = call i32 @writeout_picture(%struct.Picture* %165)
  br label %if.end.129

if.else.118:                                      ; preds = %land.lhs.true.113, %if.else.110
  %166 = load %struct.InputParameters*, %struct.InputParameters** @input, align 8
  %RDPictureDecision119 = getelementptr inbounds %struct.InputParameters, %struct.InputParameters* %166, i32 0, i32 49
  %167 = load i32, i32* %RDPictureDecision119, align 4
  %tobool120 = icmp ne i32 %167, 0
  br i1 %tobool120, label %land.lhs.true.121, label %if.else.126

land.lhs.true.121:                                ; preds = %if.else.118
  %168 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %rd_pass122 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %168, i32 0, i32 58
  %169 = load i32, i32* %rd_pass122, align 4
  %cmp123 = icmp eq i32 %169, 1
  br i1 %cmp123, label %if.then.124, label %if.else.126

if.then.124:                                      ; preds = %land.lhs.true.121
  %170 = load %struct.Picture*, %struct.Picture** @frame_pic2, align 8
  %call125 = call i32 @writeout_picture(%struct.Picture* %170)
  br label %if.end.128

if.else.126:                                      ; preds = %land.lhs.true.121, %if.else.118
  %171 = load %struct.Picture*, %struct.Picture** @frame_pic, align 8
  %call127 = call i32 @writeout_picture(%struct.Picture* %171)
  br label %if.end.128

if.end.128:                                       ; preds = %if.else.126, %if.then.124
  br label %if.end.129

if.end.129:                                       ; preds = %if.end.128, %if.then.116
  br label %if.end.130

if.end.130:                                       ; preds = %if.end.129, %if.then.107
  %172 = load %struct.Picture*, %struct.Picture** @frame_pic3, align 8
  %tobool131 = icmp ne %struct.Picture* %172, null
  br i1 %tobool131, label %if.then.132, label %if.end.133

if.then.132:                                      ; preds = %if.end.130
  %173 = load %struct.Picture*, %struct.Picture** @frame_pic3, align 8
  call void @free_slice_list(%struct.Picture* %173)
  br label %if.end.133

if.end.133:                                       ; preds = %if.then.132, %if.end.130
  %174 = load %struct.Picture*, %struct.Picture** @frame_pic2, align 8
  %tobool134 = icmp ne %struct.Picture* %174, null
  br i1 %tobool134, label %if.then.135, label %if.end.136

if.then.135:                                      ; preds = %if.end.133
  %175 = load %struct.Picture*, %struct.Picture** @frame_pic2, align 8
  call void @free_slice_list(%struct.Picture* %175)
  br label %if.end.136

if.end.136:                                       ; preds = %if.then.135, %if.end.133
  %176 = load %struct.Picture*, %struct.Picture** @frame_pic, align 8
  %tobool137 = icmp ne %struct.Picture* %176, null
  br i1 %tobool137, label %if.then.138, label %if.end.139

if.then.138:                                      ; preds = %if.end.136
  %177 = load %struct.Picture*, %struct.Picture** @frame_pic, align 8
  call void @free_slice_list(%struct.Picture* %177)
  br label %if.end.139

if.end.139:                                       ; preds = %if.then.138, %if.end.136
  %178 = load %struct.Picture*, %struct.Picture** @top_pic, align 8
  %tobool140 = icmp ne %struct.Picture* %178, null
  br i1 %tobool140, label %if.then.141, label %if.end.142

if.then.141:                                      ; preds = %if.end.139
  %179 = load %struct.Picture*, %struct.Picture** @top_pic, align 8
  call void @free_slice_list(%struct.Picture* %179)
  br label %if.end.142

if.end.142:                                       ; preds = %if.then.141, %if.end.139
  %180 = load %struct.Picture*, %struct.Picture** @bottom_pic, align 8
  %tobool143 = icmp ne %struct.Picture* %180, null
  br i1 %tobool143, label %if.then.144, label %if.end.145

if.then.144:                                      ; preds = %if.end.142
  %181 = load %struct.Picture*, %struct.Picture** @bottom_pic, align 8
  call void @free_slice_list(%struct.Picture* %181)
  br label %if.end.145

if.end.145:                                       ; preds = %if.then.144, %if.end.142
  %182 = load %struct.InputParameters*, %struct.InputParameters** @input, align 8
  %RCEnable146 = getelementptr inbounds %struct.InputParameters, %struct.InputParameters* %182, i32 0, i32 127
  %183 = load i32, i32* %RCEnable146, align 4
  %tobool147 = icmp ne i32 %183, 0
  br i1 %tobool147, label %if.then.148, label %if.end.149

if.then.148:                                      ; preds = %if.end.145
  %184 = load %struct.StatParameters*, %struct.StatParameters** @stats, align 8
  %bit_ctr = getelementptr inbounds %struct.StatParameters, %struct.StatParameters* %184, i32 0, i32 4
  %185 = load i32, i32* %bit_ctr, align 4
  %186 = load %struct.StatParameters*, %struct.StatParameters** @stats, align 8
  %bit_ctr_n = getelementptr inbounds %struct.StatParameters, %struct.StatParameters* %186, i32 0, i32 5
  %187 = load i32, i32* %bit_ctr_n, align 4
  %sub = sub nsw i32 %185, %187
  store i32 %sub, i32* %bits, align 4
  %188 = load i32, i32* %bits, align 4
  call void @rc_update_pict_frame(i32 %188)
  br label %if.end.149

if.end.149:                                       ; preds = %if.then.148, %if.end.145
  call void @find_snr()
  store i64 0, i64* %ltime2, align 8
  %time150 = getelementptr inbounds %struct.timeb, %struct.timeb* %tstruct2, i32 0, i32 0
  store i64 0, i64* %time150, align 8
  %millitm151 = getelementptr inbounds %struct.timeb, %struct.timeb* %tstruct2, i32 0, i32 1
  store i16 0, i16* %millitm151, align 2
  %timezone152 = getelementptr inbounds %struct.timeb, %struct.timeb* %tstruct2, i32 0, i32 2
  store i16 0, i16* %timezone152, align 2
  %dstflag153 = getelementptr inbounds %struct.timeb, %struct.timeb* %tstruct2, i32 0, i32 3
  store i16 0, i16* %dstflag153, align 2
  %189 = load i64, i64* %ltime2, align 8
  %mul154 = mul nsw i64 %189, 1000
  %millitm155 = getelementptr inbounds %struct.timeb, %struct.timeb* %tstruct2, i32 0, i32 1
  %190 = load i16, i16* %millitm155, align 2
  %conv = zext i16 %190 to i64
  %add156 = add nsw i64 %mul154, %conv
  %191 = load i64, i64* %ltime1, align 8
  %mul157 = mul nsw i64 %191, 1000
  %millitm158 = getelementptr inbounds %struct.timeb, %struct.timeb* %tstruct1, i32 0, i32 1
  %192 = load i16, i16* %millitm158, align 2
  %conv159 = zext i16 %192 to i64
  %add160 = add nsw i64 %mul157, %conv159
  %sub161 = sub nsw i64 %add156, %add160
  %conv162 = trunc i64 %sub161 to i32
  store i32 %conv162, i32* %tmp_time, align 4
  %193 = load i32, i32* @tot_time, align 4
  %194 = load i32, i32* %tmp_time, align 4
  %add163 = add nsw i32 %193, %194
  store i32 %add163, i32* @tot_time, align 4
  %195 = load %struct.InputParameters*, %struct.InputParameters** @input, align 8
  %PicInterlace164 = getelementptr inbounds %struct.InputParameters, %struct.InputParameters* %195, i32 0, i32 91
  %196 = load i32, i32* %PicInterlace164, align 4
  %cmp165 = icmp eq i32 %196, 2
  br i1 %cmp165, label %if.then.167, label %if.else.173

if.then.167:                                      ; preds = %if.end.149
  %197 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %fld_flag168 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %197, i32 0, i32 57
  %198 = load i32, i32* %fld_flag168, align 4
  %tobool169 = icmp ne i32 %198, 0
  br i1 %tobool169, label %if.then.170, label %if.else.171

if.then.170:                                      ; preds = %if.then.167
  %199 = load %struct.storable_picture*, %struct.storable_picture** @enc_bottom_picture, align 8
  call void @store_picture_in_dpb(%struct.storable_picture* %199)
  %200 = load %struct.storable_picture*, %struct.storable_picture** @enc_frame_picture, align 8
  call void @free_storable_picture(%struct.storable_picture* %200)
  br label %if.end.172

if.else.171:                                      ; preds = %if.then.167
  %201 = load %struct.storable_picture*, %struct.storable_picture** @enc_frame_picture, align 8
  call void @replace_top_pic_with_frame(%struct.storable_picture* %201)
  %202 = load %struct.storable_picture*, %struct.storable_picture** @enc_bottom_picture, align 8
  call void @free_storable_picture(%struct.storable_picture* %202)
  br label %if.end.172

if.end.172:                                       ; preds = %if.else.171, %if.then.170
  br label %if.end.191

if.else.173:                                      ; preds = %if.end.149
  %203 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %fld_flag174 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %203, i32 0, i32 57
  %204 = load i32, i32* %fld_flag174, align 4
  %tobool175 = icmp ne i32 %204, 0
  br i1 %tobool175, label %if.then.176, label %if.else.177

if.then.176:                                      ; preds = %if.else.173
  %205 = load %struct.storable_picture*, %struct.storable_picture** @enc_bottom_picture, align 8
  call void @store_picture_in_dpb(%struct.storable_picture* %205)
  br label %if.end.190

if.else.177:                                      ; preds = %if.else.173
  %206 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %rd_pass178 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %206, i32 0, i32 58
  %207 = load i32, i32* %rd_pass178, align 4
  %cmp179 = icmp eq i32 %207, 2
  br i1 %cmp179, label %if.then.181, label %if.else.182

if.then.181:                                      ; preds = %if.else.177
  %208 = load %struct.storable_picture*, %struct.storable_picture** @enc_frame_picture3, align 8
  call void @store_picture_in_dpb(%struct.storable_picture* %208)
  %209 = load %struct.storable_picture*, %struct.storable_picture** @enc_frame_picture, align 8
  call void @free_storable_picture(%struct.storable_picture* %209)
  %210 = load %struct.storable_picture*, %struct.storable_picture** @enc_frame_picture2, align 8
  call void @free_storable_picture(%struct.storable_picture* %210)
  br label %if.end.189

if.else.182:                                      ; preds = %if.else.177
  %211 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %rd_pass183 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %211, i32 0, i32 58
  %212 = load i32, i32* %rd_pass183, align 4
  %cmp184 = icmp eq i32 %212, 1
  br i1 %cmp184, label %if.then.186, label %if.else.187

if.then.186:                                      ; preds = %if.else.182
  %213 = load %struct.storable_picture*, %struct.storable_picture** @enc_frame_picture2, align 8
  call void @store_picture_in_dpb(%struct.storable_picture* %213)
  %214 = load %struct.storable_picture*, %struct.storable_picture** @enc_frame_picture, align 8
  call void @free_storable_picture(%struct.storable_picture* %214)
  %215 = load %struct.storable_picture*, %struct.storable_picture** @enc_frame_picture3, align 8
  call void @free_storable_picture(%struct.storable_picture* %215)
  br label %if.end.188

if.else.187:                                      ; preds = %if.else.182
  %216 = load %struct.storable_picture*, %struct.storable_picture** @enc_frame_picture, align 8
  call void @store_picture_in_dpb(%struct.storable_picture* %216)
  %217 = load %struct.storable_picture*, %struct.storable_picture** @enc_frame_picture2, align 8
  call void @free_storable_picture(%struct.storable_picture* %217)
  %218 = load %struct.storable_picture*, %struct.storable_picture** @enc_frame_picture3, align 8
  call void @free_storable_picture(%struct.storable_picture* %218)
  br label %if.end.188

if.end.188:                                       ; preds = %if.else.187, %if.then.186
  br label %if.end.189

if.end.189:                                       ; preds = %if.end.188, %if.then.181
  br label %if.end.190

if.end.190:                                       ; preds = %if.end.189, %if.then.176
  br label %if.end.191

if.end.191:                                       ; preds = %if.end.190, %if.end.172
  %219 = load %struct.StatParameters*, %struct.StatParameters** @stats, align 8
  %bit_ctr192 = getelementptr inbounds %struct.StatParameters, %struct.StatParameters* %219, i32 0, i32 4
  %220 = load i32, i32* %bit_ctr192, align 4
  %221 = load %struct.StatParameters*, %struct.StatParameters** @stats, align 8
  %bit_ctr_n193 = getelementptr inbounds %struct.StatParameters, %struct.StatParameters* %221, i32 0, i32 5
  %222 = load i32, i32* %bit_ctr_n193, align 4
  %sub194 = sub nsw i32 %220, %222
  %conv195 = sext i32 %sub194 to i64
  %223 = load i64, i64* @total_frame_buffer, align 8
  %arrayidx = getelementptr inbounds [10000 x i64], [10000 x i64]* @Bit_Buffer, i32 0, i64 %223
  store i64 %conv195, i64* %arrayidx, align 8
  %224 = load i64, i64* @total_frame_buffer, align 8
  %inc196 = add i64 %224, 1
  store i64 %inc196, i64* @total_frame_buffer, align 8
  %225 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %pic_order_cnt_type = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %225, i32 0, i32 91
  %226 = load i32, i32* %pic_order_cnt_type, align 4
  %cmp197 = icmp eq i32 %226, 2
  br i1 %cmp197, label %if.then.199, label %if.end.212

if.then.199:                                      ; preds = %if.end.191
  %227 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %nal_reference_idc = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %227, i32 0, i32 113
  %228 = load i32, i32* %nal_reference_idc, align 4
  %tobool200 = icmp ne i32 %228, 0
  br i1 %tobool200, label %if.else.203, label %if.then.201

if.then.201:                                      ; preds = %if.then.199
  %229 = load i32, i32* @encode_one_frame.consecutive_non_reference_pictures, align 4
  %inc202 = add nsw i32 %229, 1
  store i32 %inc202, i32* @encode_one_frame.consecutive_non_reference_pictures, align 4
  br label %if.end.204

if.else.203:                                      ; preds = %if.then.199
  store i32 0, i32* @encode_one_frame.consecutive_non_reference_pictures, align 4
  br label %if.end.204

if.end.204:                                       ; preds = %if.else.203, %if.then.201
  %230 = load i32, i32* @frame_no, align 4
  %231 = load i32, i32* @encode_one_frame.prev_frame_no, align 4
  %cmp205 = icmp slt i32 %230, %231
  br i1 %cmp205, label %if.then.210, label %lor.lhs.false.207

lor.lhs.false.207:                                ; preds = %if.end.204
  %232 = load i32, i32* @encode_one_frame.consecutive_non_reference_pictures, align 4
  %cmp208 = icmp sgt i32 %232, 1
  br i1 %cmp208, label %if.then.210, label %if.end.211

if.then.210:                                      ; preds = %lor.lhs.false.207, %if.end.204
  call void @error(i8* getelementptr inbounds ([137 x i8], [137 x i8]* @.str, i32 0, i32 0), i32 -1)
  br label %if.end.211

if.end.211:                                       ; preds = %if.then.210, %lor.lhs.false.207
  %233 = load i32, i32* @frame_no, align 4
  store i32 %233, i32* @encode_one_frame.prev_frame_no, align 4
  br label %if.end.212

if.end.212:                                       ; preds = %if.end.211, %if.end.191
  %234 = load %struct.StatParameters*, %struct.StatParameters** @stats, align 8
  %bit_ctr_parametersets_n213 = getelementptr inbounds %struct.StatParameters, %struct.StatParameters* %234, i32 0, i32 33
  %235 = load i32, i32* %bit_ctr_parametersets_n213, align 4
  %cmp214 = icmp ne i32 %235, 0
  br i1 %cmp214, label %if.then.216, label %if.end.217

if.then.216:                                      ; preds = %if.end.212
  %236 = load i32, i32* %tmp_time, align 4
  %237 = load i32, i32* @me_time, align 4
  call void @ReportNALNonVLCBits(i32 %236, i32 %237)
  br label %if.end.217

if.end.217:                                       ; preds = %if.then.216, %if.end.212
  %238 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %number218 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %238, i32 0, i32 0
  %239 = load i32, i32* %number218, align 4
  %240 = load i32, i32* @start_frame_no_in_this_IGOP, align 4
  %sub219 = sub nsw i32 %239, %240
  %cmp220 = icmp eq i32 %sub219, 0
  br i1 %cmp220, label %if.then.222, label %if.else.223

if.then.222:                                      ; preds = %if.end.217
  %241 = load i32, i32* %tmp_time, align 4
  %242 = load i32, i32* @me_time, align 4
  call void @ReportFirstframe(i32 %241, i32 %242)
  br label %if.end.268

if.else.223:                                      ; preds = %if.end.217
  %243 = load %struct.InputParameters*, %struct.InputParameters** @input, align 8
  %RCEnable224 = getelementptr inbounds %struct.InputParameters, %struct.InputParameters* %243, i32 0, i32 127
  %244 = load i32, i32* %RCEnable224, align 4
  %tobool225 = icmp ne i32 %244, 0
  br i1 %tobool225, label %if.then.226, label %if.end.241

if.then.226:                                      ; preds = %if.else.223
  %245 = load %struct.InputParameters*, %struct.InputParameters** @input, align 8
  %PicInterlace227 = getelementptr inbounds %struct.InputParameters, %struct.InputParameters* %245, i32 0, i32 91
  %246 = load i32, i32* %PicInterlace227, align 4
  %tobool228 = icmp ne i32 %246, 0
  br i1 %tobool228, label %if.else.236, label %land.lhs.true.229

land.lhs.true.229:                                ; preds = %if.then.226
  %247 = load %struct.InputParameters*, %struct.InputParameters** @input, align 8
  %MbInterlace230 = getelementptr inbounds %struct.InputParameters, %struct.InputParameters* %247, i32 0, i32 92
  %248 = load i32, i32* %MbInterlace230, align 4
  %tobool231 = icmp ne i32 %248, 0
  br i1 %tobool231, label %if.else.236, label %if.then.232

if.then.232:                                      ; preds = %land.lhs.true.229
  %249 = load %struct.StatParameters*, %struct.StatParameters** @stats, align 8
  %bit_ctr233 = getelementptr inbounds %struct.StatParameters, %struct.StatParameters* %249, i32 0, i32 4
  %250 = load i32, i32* %bit_ctr233, align 4
  %251 = load %struct.StatParameters*, %struct.StatParameters** @stats, align 8
  %bit_ctr_n234 = getelementptr inbounds %struct.StatParameters, %struct.StatParameters* %251, i32 0, i32 5
  %252 = load i32, i32* %bit_ctr_n234, align 4
  %sub235 = sub nsw i32 %250, %252
  store i32 %sub235, i32* %bits, align 4
  br label %if.end.240

if.else.236:                                      ; preds = %land.lhs.true.229, %if.then.226
  %253 = load %struct.StatParameters*, %struct.StatParameters** @stats, align 8
  %bit_ctr237 = getelementptr inbounds %struct.StatParameters, %struct.StatParameters* %253, i32 0, i32 4
  %254 = load i32, i32* %bit_ctr237, align 4
  %255 = load i32, i32* @Pprev_bits, align 4
  %sub238 = sub nsw i32 %254, %255
  store i32 %sub238, i32* %bits, align 4
  %256 = load %struct.StatParameters*, %struct.StatParameters** @stats, align 8
  %bit_ctr239 = getelementptr inbounds %struct.StatParameters, %struct.StatParameters* %256, i32 0, i32 4
  %257 = load i32, i32* %bit_ctr239, align 4
  store i32 %257, i32* @Pprev_bits, align 4
  br label %if.end.240

if.end.240:                                       ; preds = %if.else.236, %if.then.232
  br label %if.end.241

if.end.241:                                       ; preds = %if.end.240, %if.else.223
  %258 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %type242 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %258, i32 0, i32 6
  %259 = load i32, i32* %type242, align 4
  switch i32 %259, label %sw.default [
    i32 2, label %sw.bb
    i32 3, label %sw.bb.247
    i32 1, label %sw.bb.252
  ]

sw.bb:                                            ; preds = %if.end.241
  %260 = load %struct.StatParameters*, %struct.StatParameters** @stats, align 8
  %bit_ctr243 = getelementptr inbounds %struct.StatParameters, %struct.StatParameters* %260, i32 0, i32 4
  %261 = load i32, i32* %bit_ctr243, align 4
  %262 = load %struct.StatParameters*, %struct.StatParameters** @stats, align 8
  %bit_ctr_n244 = getelementptr inbounds %struct.StatParameters, %struct.StatParameters* %262, i32 0, i32 5
  %263 = load i32, i32* %bit_ctr_n244, align 4
  %sub245 = sub nsw i32 %261, %263
  %264 = load %struct.StatParameters*, %struct.StatParameters** @stats, align 8
  %bit_ctr_I = getelementptr inbounds %struct.StatParameters, %struct.StatParameters* %264, i32 0, i32 14
  %265 = load i32, i32* %bit_ctr_I, align 4
  %add246 = add nsw i32 %265, %sub245
  store i32 %add246, i32* %bit_ctr_I, align 4
  %266 = load i32, i32* %tmp_time, align 4
  %267 = load i32, i32* @me_time, align 4
  call void @ReportIntra(i32 %266, i32 %267)
  br label %sw.epilog

sw.bb.247:                                        ; preds = %if.end.241
  %268 = load %struct.StatParameters*, %struct.StatParameters** @stats, align 8
  %bit_ctr248 = getelementptr inbounds %struct.StatParameters, %struct.StatParameters* %268, i32 0, i32 4
  %269 = load i32, i32* %bit_ctr248, align 4
  %270 = load %struct.StatParameters*, %struct.StatParameters** @stats, align 8
  %bit_ctr_n249 = getelementptr inbounds %struct.StatParameters, %struct.StatParameters* %270, i32 0, i32 5
  %271 = load i32, i32* %bit_ctr_n249, align 4
  %sub250 = sub nsw i32 %269, %271
  %272 = load %struct.StatParameters*, %struct.StatParameters** @stats, align 8
  %bit_ctr_P = getelementptr inbounds %struct.StatParameters, %struct.StatParameters* %272, i32 0, i32 15
  %273 = load i32, i32* %bit_ctr_P, align 4
  %add251 = add nsw i32 %273, %sub250
  store i32 %add251, i32* %bit_ctr_P, align 4
  %274 = load i32, i32* %tmp_time, align 4
  %275 = load i32, i32* @me_time, align 4
  call void @ReportSP(i32 %274, i32 %275)
  br label %sw.epilog

sw.bb.252:                                        ; preds = %if.end.241
  %276 = load %struct.StatParameters*, %struct.StatParameters** @stats, align 8
  %bit_ctr253 = getelementptr inbounds %struct.StatParameters, %struct.StatParameters* %276, i32 0, i32 4
  %277 = load i32, i32* %bit_ctr253, align 4
  %278 = load %struct.StatParameters*, %struct.StatParameters** @stats, align 8
  %bit_ctr_n254 = getelementptr inbounds %struct.StatParameters, %struct.StatParameters* %278, i32 0, i32 5
  %279 = load i32, i32* %bit_ctr_n254, align 4
  %sub255 = sub nsw i32 %277, %279
  %280 = load %struct.StatParameters*, %struct.StatParameters** @stats, align 8
  %bit_ctr_B = getelementptr inbounds %struct.StatParameters, %struct.StatParameters* %280, i32 0, i32 16
  %281 = load i32, i32* %bit_ctr_B, align 4
  %add256 = add nsw i32 %281, %sub255
  store i32 %add256, i32* %bit_ctr_B, align 4
  %282 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %nal_reference_idc257 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %282, i32 0, i32 113
  %283 = load i32, i32* %nal_reference_idc257, align 4
  %cmp258 = icmp sgt i32 %283, 0
  br i1 %cmp258, label %if.then.260, label %if.else.261

if.then.260:                                      ; preds = %sw.bb.252
  %284 = load i32, i32* %tmp_time, align 4
  %285 = load i32, i32* @me_time, align 4
  call void @ReportRB(i32 %284, i32 %285)
  br label %if.end.262

if.else.261:                                      ; preds = %sw.bb.252
  %286 = load i32, i32* %tmp_time, align 4
  %287 = load i32, i32* @me_time, align 4
  call void @ReportB(i32 %286, i32 %287)
  br label %if.end.262

if.end.262:                                       ; preds = %if.else.261, %if.then.260
  br label %sw.epilog

sw.default:                                       ; preds = %if.end.241
  %288 = load %struct.StatParameters*, %struct.StatParameters** @stats, align 8
  %bit_ctr263 = getelementptr inbounds %struct.StatParameters, %struct.StatParameters* %288, i32 0, i32 4
  %289 = load i32, i32* %bit_ctr263, align 4
  %290 = load %struct.StatParameters*, %struct.StatParameters** @stats, align 8
  %bit_ctr_n264 = getelementptr inbounds %struct.StatParameters, %struct.StatParameters* %290, i32 0, i32 5
  %291 = load i32, i32* %bit_ctr_n264, align 4
  %sub265 = sub nsw i32 %289, %291
  %292 = load %struct.StatParameters*, %struct.StatParameters** @stats, align 8
  %bit_ctr_P266 = getelementptr inbounds %struct.StatParameters, %struct.StatParameters* %292, i32 0, i32 15
  %293 = load i32, i32* %bit_ctr_P266, align 4
  %add267 = add nsw i32 %293, %sub265
  store i32 %add267, i32* %bit_ctr_P266, align 4
  %294 = load i32, i32* %tmp_time, align 4
  %295 = load i32, i32* @me_time, align 4
  call void @ReportP(i32 %294, i32 %295)
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.default, %if.end.262, %sw.bb.247, %sw.bb
  br label %if.end.268

if.end.268:                                       ; preds = %sw.epilog, %if.then.222
  %296 = load %struct.StatParameters*, %struct.StatParameters** @stats, align 8
  %bit_ctr269 = getelementptr inbounds %struct.StatParameters, %struct.StatParameters* %296, i32 0, i32 4
  %297 = load i32, i32* %bit_ctr269, align 4
  %298 = load %struct.StatParameters*, %struct.StatParameters** @stats, align 8
  %bit_ctr_n270 = getelementptr inbounds %struct.StatParameters, %struct.StatParameters* %298, i32 0, i32 5
  store i32 %297, i32* %bit_ctr_n270, align 4
  %299 = load %struct.InputParameters*, %struct.InputParameters** @input, align 8
  %RCEnable271 = getelementptr inbounds %struct.InputParameters, %struct.InputParameters* %299, i32 0, i32 127
  %300 = load i32, i32* %RCEnable271, align 4
  %tobool272 = icmp ne i32 %300, 0
  br i1 %tobool272, label %if.then.273, label %if.end.295

if.then.273:                                      ; preds = %if.end.268
  %301 = load i32, i32* %bits, align 4
  call void @rc_update_pict(i32 %301)
  %302 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %type274 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %302, i32 0, i32 6
  %303 = load i32, i32* %type274, align 4
  %cmp275 = icmp eq i32 %303, 0
  br i1 %cmp275, label %land.lhs.true.277, label %if.else.281

land.lhs.true.277:                                ; preds = %if.then.273
  %304 = load %struct.seq_parameter_set_rbsp_t*, %struct.seq_parameter_set_rbsp_t** @active_sps, align 8
  %frame_mbs_only_flag278 = getelementptr inbounds %struct.seq_parameter_set_rbsp_t, %struct.seq_parameter_set_rbsp_t* %304, i32 0, i32 25
  %305 = load i32, i32* %frame_mbs_only_flag278, align 4
  %tobool279 = icmp ne i32 %305, 0
  br i1 %tobool279, label %if.then.280, label %if.else.281

if.then.280:                                      ; preds = %land.lhs.true.277
  call void (...) @updateRCModel()
  br label %if.end.294

if.else.281:                                      ; preds = %land.lhs.true.277, %if.then.273
  %306 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %type282 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %306, i32 0, i32 6
  %307 = load i32, i32* %type282, align 4
  %cmp283 = icmp eq i32 %307, 0
  br i1 %cmp283, label %land.lhs.true.285, label %if.end.293

land.lhs.true.285:                                ; preds = %if.else.281
  %308 = load %struct.seq_parameter_set_rbsp_t*, %struct.seq_parameter_set_rbsp_t** @active_sps, align 8
  %frame_mbs_only_flag286 = getelementptr inbounds %struct.seq_parameter_set_rbsp_t, %struct.seq_parameter_set_rbsp_t* %308, i32 0, i32 25
  %309 = load i32, i32* %frame_mbs_only_flag286, align 4
  %tobool287 = icmp ne i32 %309, 0
  br i1 %tobool287, label %if.end.293, label %land.lhs.true.288

land.lhs.true.288:                                ; preds = %land.lhs.true.285
  %310 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %IFLAG289 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %310, i32 0, i32 137
  %311 = load i32, i32* %IFLAG289, align 4
  %cmp290 = icmp eq i32 %311, 0
  br i1 %cmp290, label %if.then.292, label %if.end.293

if.then.292:                                      ; preds = %land.lhs.true.288
  call void (...) @updateRCModel()
  br label %if.end.293

if.end.293:                                       ; preds = %if.then.292, %land.lhs.true.288, %land.lhs.true.285, %if.else.281
  br label %if.end.294

if.end.294:                                       ; preds = %if.end.293, %if.then.280
  br label %if.end.295

if.end.295:                                       ; preds = %if.end.294, %if.end.268
  %312 = load %struct.StatParameters*, %struct.StatParameters** @stats, align 8
  %bit_ctr_parametersets_n296 = getelementptr inbounds %struct.StatParameters, %struct.StatParameters* %312, i32 0, i32 33
  store i32 0, i32* %bit_ctr_parametersets_n296, align 4
  %313 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %number297 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %313, i32 0, i32 0
  %314 = load i32, i32* %number297, align 4
  %315 = load i32, i32* @start_frame_no_in_this_IGOP, align 4
  %sub298 = sub nsw i32 %314, %315
  %cmp299 = icmp eq i32 %sub298, 0
  br i1 %cmp299, label %if.then.301, label %if.else.302

if.then.301:                                      ; preds = %if.end.295
  store i32 0, i32* %retval
  br label %return

if.else.302:                                      ; preds = %if.end.295
  store i32 1, i32* %retval
  br label %return

return:                                           ; preds = %if.else.302, %if.then.301
  %316 = load i32, i32* %retval
  ret i32 %316
}

declare i32 @write_PPS(i32, i32) #1

; Function Attrs: nounwind uwtable
define internal void @ReadOneFrame(i32 %FrameNoInFile, i32 %HeaderSize, i32 %xs, i32 %ys, i32 %xs_cr, i32 %ys_cr) #0 {
entry:
  %FrameNoInFile.addr = alloca i32, align 4
  %HeaderSize.addr = alloca i32, align 4
  %xs.addr = alloca i32, align 4
  %ys.addr = alloca i32, align 4
  %xs_cr.addr = alloca i32, align 4
  %ys_cr.addr = alloca i32, align 4
  %symbol_size_in_bytes = alloca i32, align 4
  %imgsize_y = alloca i32, align 4
  %imgsize_uv = alloca i32, align 4
  %bytes_y = alloca i32, align 4
  %bytes_uv = alloca i32, align 4
  %framesize_in_bytes = alloca i64, align 8
  %buf = alloca i8*, align 8
  %rgb_input = alloca i32, align 4
  store i32 %FrameNoInFile, i32* %FrameNoInFile.addr, align 4
  store i32 %HeaderSize, i32* %HeaderSize.addr, align 4
  store i32 %xs, i32* %xs.addr, align 4
  store i32 %ys, i32* %ys.addr, align 4
  store i32 %xs_cr, i32* %xs_cr.addr, align 4
  store i32 %ys_cr, i32* %ys_cr.addr, align 4
  %0 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %pic_unit_size_on_disk = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %0, i32 0, i32 148
  %1 = load i32, i32* %pic_unit_size_on_disk, align 4
  %div = sdiv i32 %1, 8
  store i32 %div, i32* %symbol_size_in_bytes, align 4
  %2 = load i32, i32* %xs.addr, align 4
  %3 = load i32, i32* %ys.addr, align 4
  %mul = mul nsw i32 %2, %3
  store i32 %mul, i32* %imgsize_y, align 4
  %4 = load i32, i32* %xs_cr.addr, align 4
  %5 = load i32, i32* %ys_cr.addr, align 4
  %mul1 = mul nsw i32 %4, %5
  store i32 %mul1, i32* %imgsize_uv, align 4
  %6 = load i32, i32* %imgsize_y, align 4
  %7 = load i32, i32* %symbol_size_in_bytes, align 4
  %mul2 = mul i32 %6, %7
  store i32 %mul2, i32* %bytes_y, align 4
  %8 = load i32, i32* %imgsize_uv, align 4
  %9 = load i32, i32* %symbol_size_in_bytes, align 4
  %mul3 = mul i32 %8, %9
  store i32 %mul3, i32* %bytes_uv, align 4
  %10 = load i32, i32* %bytes_y, align 4
  %11 = load i32, i32* %bytes_uv, align 4
  %mul4 = mul nsw i32 2, %11
  %add = add nsw i32 %10, %mul4
  %conv = sext i32 %add to i64
  store i64 %conv, i64* %framesize_in_bytes, align 8
  %12 = load %struct.InputParameters*, %struct.InputParameters** @input, align 8
  %rgb_input_flag = getelementptr inbounds %struct.InputParameters, %struct.InputParameters* %12, i32 0, i32 139
  %13 = load i32, i32* %rgb_input_flag, align 4
  %cmp = icmp eq i32 %13, 1
  br i1 %cmp, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %entry
  %14 = load %struct.InputParameters*, %struct.InputParameters** @input, align 8
  %yuv_format = getelementptr inbounds %struct.InputParameters, %struct.InputParameters* %14, i32 0, i32 18
  %15 = load i32, i32* %yuv_format, align 4
  %cmp6 = icmp eq i32 %15, 3
  br label %land.end

land.end:                                         ; preds = %land.rhs, %entry
  %16 = phi i1 [ false, %entry ], [ %cmp6, %land.rhs ]
  %land.ext = zext i1 %16 to i32
  store i32 %land.ext, i32* %rgb_input, align 4
  %17 = load i32, i32* %xs.addr, align 4
  %18 = load i32, i32* %ys.addr, align 4
  %mul8 = mul nsw i32 %17, %18
  %19 = load i32, i32* %symbol_size_in_bytes, align 4
  %mul9 = mul i32 %mul8, %19
  %conv10 = zext i32 %mul9 to i64
  %call = call noalias i8* @malloc(i64 %conv10) #3
  store i8* %call, i8** %buf, align 8
  %cmp11 = icmp eq i8* null, %call
  br i1 %cmp11, label %if.then, label %if.end

if.then:                                          ; preds = %land.end
  call void @no_mem_exit(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.14, i32 0, i32 0))
  br label %if.end

if.end:                                           ; preds = %if.then, %land.end
  %20 = load i32, i32* @p_in, align 4
  %21 = load i32, i32* %HeaderSize.addr, align 4
  %conv13 = sext i32 %21 to i64
  %call14 = call i64 @lseek(i32 %20, i64 %conv13, i32 0) #3
  %22 = load i32, i32* %HeaderSize.addr, align 4
  %conv15 = sext i32 %22 to i64
  %cmp16 = icmp ne i64 %call14, %conv15
  br i1 %cmp16, label %if.then.18, label %if.end.19

if.then.18:                                       ; preds = %if.end
  call void @error(i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str.15, i32 0, i32 0), i32 -1)
  br label %if.end.19

if.end.19:                                        ; preds = %if.then.18, %if.end
  %23 = load i32, i32* @p_in, align 4
  %24 = load i64, i64* %framesize_in_bytes, align 8
  %25 = load %struct.InputParameters*, %struct.InputParameters** @input, align 8
  %start_frame = getelementptr inbounds %struct.InputParameters, %struct.InputParameters* %25, i32 0, i32 33
  %26 = load i32, i32* %start_frame, align 4
  %conv20 = sext i32 %26 to i64
  %mul21 = mul nsw i64 %24, %conv20
  %call22 = call i64 @lseek(i32 %23, i64 %mul21, i32 1) #3
  %cmp23 = icmp eq i64 %call22, -1
  br i1 %cmp23, label %if.then.25, label %if.end.28

if.then.25:                                       ; preds = %if.end.19
  %27 = load %struct.InputParameters*, %struct.InputParameters** @input, align 8
  %start_frame26 = getelementptr inbounds %struct.InputParameters, %struct.InputParameters* %27, i32 0, i32 33
  %28 = load i32, i32* %start_frame26, align 4
  %call27 = call i32 (i8*, i64, i8*, ...) @snprintf(i8* getelementptr inbounds ([300 x i8], [300 x i8]* @errortext, i32 0, i32 0), i64 300, i8* getelementptr inbounds ([67 x i8], [67 x i8]* @.str.16, i32 0, i32 0), i32 %28) #3
  call void @error(i8* getelementptr inbounds ([300 x i8], [300 x i8]* @errortext, i32 0, i32 0), i32 -1)
  br label %if.end.28

if.end.28:                                        ; preds = %if.then.25, %if.end.19
  %29 = load i32, i32* @p_in, align 4
  %30 = load i64, i64* %framesize_in_bytes, align 8
  %31 = load i32, i32* %FrameNoInFile.addr, align 4
  %conv29 = sext i32 %31 to i64
  %mul30 = mul nsw i64 %30, %conv29
  %call31 = call i64 @lseek(i32 %29, i64 %mul30, i32 1) #3
  %cmp32 = icmp eq i64 %call31, -1
  br i1 %cmp32, label %if.then.34, label %if.end.38

if.then.34:                                       ; preds = %if.end.28
  %32 = load %struct.InputParameters*, %struct.InputParameters** @input, align 8
  %start_frame35 = getelementptr inbounds %struct.InputParameters, %struct.InputParameters* %32, i32 0, i32 33
  %33 = load i32, i32* %start_frame35, align 4
  %34 = load i32, i32* %FrameNoInFile.addr, align 4
  %add36 = add nsw i32 %33, %34
  %call37 = call i32 (i8*, i64, i8*, ...) @snprintf(i8* getelementptr inbounds ([300 x i8], [300 x i8]* @errortext, i32 0, i32 0), i64 300, i8* getelementptr inbounds ([67 x i8], [67 x i8]* @.str.16, i32 0, i32 0), i32 %add36) #3
  call void @error(i8* getelementptr inbounds ([300 x i8], [300 x i8]* @errortext, i32 0, i32 0), i32 -1)
  br label %if.end.38

if.end.38:                                        ; preds = %if.then.34, %if.end.28
  %35 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %pic_unit_size_on_disk39 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %35, i32 0, i32 148
  %36 = load i32, i32* %pic_unit_size_on_disk39, align 4
  %rem = srem i32 %36, 8
  %cmp40 = icmp eq i32 %rem, 0
  br i1 %cmp40, label %if.then.42, label %if.else

if.then.42:                                       ; preds = %if.end.38
  %37 = load i32, i32* %rgb_input, align 4
  %tobool = icmp ne i32 %37, 0
  br i1 %tobool, label %if.then.43, label %if.end.46

if.then.43:                                       ; preds = %if.then.42
  %38 = load i32, i32* @p_in, align 4
  %39 = load i64, i64* %framesize_in_bytes, align 8
  %div44 = sdiv i64 %39, 3
  %call45 = call i64 @lseek(i32 %38, i64 %div44, i32 1) #3
  br label %if.end.46

if.end.46:                                        ; preds = %if.then.43, %if.then.42
  %40 = load i32, i32* @p_in, align 4
  %41 = load i8*, i8** %buf, align 8
  %42 = load i32, i32* %bytes_y, align 4
  %conv47 = sext i32 %42 to i64
  %call48 = call i64 @read(i32 %40, i8* %41, i64 %conv47)
  %43 = load i32, i32* %bytes_y, align 4
  %conv49 = sext i32 %43 to i64
  %cmp50 = icmp ne i64 %call48, %conv49
  br i1 %cmp50, label %if.then.52, label %if.end.54

if.then.52:                                       ; preds = %if.end.46
  %44 = load i32, i32* %bytes_y, align 4
  %call53 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([77 x i8], [77 x i8]* @.str.17, i32 0, i32 0), i32 %44)
  call void (...) @report_stats_on_error()
  call void @exit(i32 -1) #6
  unreachable

if.end.54:                                        ; preds = %if.end.46
  %45 = load i16**, i16*** @imgY_org_frm, align 8
  %46 = load i8*, i8** %buf, align 8
  %47 = load i32, i32* %xs.addr, align 4
  %48 = load i32, i32* %ys.addr, align 4
  %49 = load i32, i32* %symbol_size_in_bytes, align 4
  call void @buf2img(i16** %45, i8* %46, i32 %47, i32 %48, i32 %49)
  %50 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %yuv_format55 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %50, i32 0, i32 159
  %51 = load i32, i32* %yuv_format55, align 4
  %cmp56 = icmp ne i32 %51, 0
  br i1 %cmp56, label %if.then.58, label %if.end.86

if.then.58:                                       ; preds = %if.end.54
  %52 = load i32, i32* @p_in, align 4
  %53 = load i8*, i8** %buf, align 8
  %54 = load i32, i32* %bytes_uv, align 4
  %conv59 = sext i32 %54 to i64
  %call60 = call i64 @read(i32 %52, i8* %53, i64 %conv59)
  %55 = load i32, i32* %bytes_uv, align 4
  %conv61 = sext i32 %55 to i64
  %cmp62 = icmp ne i64 %call60, %conv61
  br i1 %cmp62, label %if.then.64, label %if.end.66

if.then.64:                                       ; preds = %if.then.58
  %56 = load i32, i32* %bytes_y, align 4
  %call65 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([77 x i8], [77 x i8]* @.str.17, i32 0, i32 0), i32 %56)
  call void (...) @report_stats_on_error()
  call void @exit(i32 -1) #6
  unreachable

if.end.66:                                        ; preds = %if.then.58
  %57 = load i16***, i16**** @imgUV_org_frm, align 8
  %arrayidx = getelementptr inbounds i16**, i16*** %57, i64 0
  %58 = load i16**, i16*** %arrayidx, align 8
  %59 = load i8*, i8** %buf, align 8
  %60 = load i32, i32* %xs_cr.addr, align 4
  %61 = load i32, i32* %ys_cr.addr, align 4
  %62 = load i32, i32* %symbol_size_in_bytes, align 4
  call void @buf2img(i16** %58, i8* %59, i32 %60, i32 %61, i32 %62)
  %63 = load i32, i32* %rgb_input, align 4
  %tobool67 = icmp ne i32 %63, 0
  br i1 %tobool67, label %if.then.68, label %if.end.70

if.then.68:                                       ; preds = %if.end.66
  %64 = load i32, i32* @p_in, align 4
  %65 = load i64, i64* %framesize_in_bytes, align 8
  %sub = sub nsw i64 0, %65
  %call69 = call i64 @lseek(i32 %64, i64 %sub, i32 1) #3
  br label %if.end.70

if.end.70:                                        ; preds = %if.then.68, %if.end.66
  %66 = load i32, i32* @p_in, align 4
  %67 = load i8*, i8** %buf, align 8
  %68 = load i32, i32* %bytes_uv, align 4
  %conv71 = sext i32 %68 to i64
  %call72 = call i64 @read(i32 %66, i8* %67, i64 %conv71)
  %69 = load i32, i32* %bytes_uv, align 4
  %conv73 = sext i32 %69 to i64
  %cmp74 = icmp ne i64 %call72, %conv73
  br i1 %cmp74, label %if.then.76, label %if.end.78

if.then.76:                                       ; preds = %if.end.70
  %70 = load i32, i32* %bytes_y, align 4
  %call77 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([77 x i8], [77 x i8]* @.str.17, i32 0, i32 0), i32 %70)
  call void (...) @report_stats_on_error()
  call void @exit(i32 -1) #6
  unreachable

if.end.78:                                        ; preds = %if.end.70
  %71 = load i16***, i16**** @imgUV_org_frm, align 8
  %arrayidx79 = getelementptr inbounds i16**, i16*** %71, i64 1
  %72 = load i16**, i16*** %arrayidx79, align 8
  %73 = load i8*, i8** %buf, align 8
  %74 = load i32, i32* %xs_cr.addr, align 4
  %75 = load i32, i32* %ys_cr.addr, align 4
  %76 = load i32, i32* %symbol_size_in_bytes, align 4
  call void @buf2img(i16** %72, i8* %73, i32 %74, i32 %75, i32 %76)
  %77 = load i32, i32* %rgb_input, align 4
  %tobool80 = icmp ne i32 %77, 0
  br i1 %tobool80, label %if.then.81, label %if.end.85

if.then.81:                                       ; preds = %if.end.78
  %78 = load i32, i32* @p_in, align 4
  %79 = load i64, i64* %framesize_in_bytes, align 8
  %mul82 = mul nsw i64 %79, 2
  %div83 = sdiv i64 %mul82, 3
  %call84 = call i64 @lseek(i32 %78, i64 %div83, i32 1) #3
  br label %if.end.85

if.end.85:                                        ; preds = %if.then.81, %if.end.78
  br label %if.end.86

if.end.86:                                        ; preds = %if.end.85, %if.end.54
  br label %if.end.88

if.else:                                          ; preds = %if.end.38
  %call87 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([75 x i8], [75 x i8]* @.str.18, i32 0, i32 0))
  call void @exit(i32 -1) #6
  unreachable

if.end.88:                                        ; preds = %if.end.86
  %80 = load i8*, i8** %buf, align 8
  call void @free(i8* %80) #3
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @PaddAutoCropBorders(i32 %org_size_x, i32 %org_size_y, i32 %img_size_x, i32 %img_size_y, i32 %org_size_x_cr, i32 %org_size_y_cr, i32 %img_size_x_cr, i32 %img_size_y_cr) #0 {
entry:
  %org_size_x.addr = alloca i32, align 4
  %org_size_y.addr = alloca i32, align 4
  %img_size_x.addr = alloca i32, align 4
  %img_size_y.addr = alloca i32, align 4
  %org_size_x_cr.addr = alloca i32, align 4
  %org_size_y_cr.addr = alloca i32, align 4
  %img_size_x_cr.addr = alloca i32, align 4
  %img_size_y_cr.addr = alloca i32, align 4
  %x = alloca i32, align 4
  %y = alloca i32, align 4
  store i32 %org_size_x, i32* %org_size_x.addr, align 4
  store i32 %org_size_y, i32* %org_size_y.addr, align 4
  store i32 %img_size_x, i32* %img_size_x.addr, align 4
  store i32 %img_size_y, i32* %img_size_y.addr, align 4
  store i32 %org_size_x_cr, i32* %org_size_x_cr.addr, align 4
  store i32 %org_size_y_cr, i32* %org_size_y_cr.addr, align 4
  store i32 %img_size_x_cr, i32* %img_size_x_cr.addr, align 4
  store i32 %img_size_y_cr, i32* %img_size_y_cr.addr, align 4
  store i32 0, i32* %y, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc.10, %entry
  %0 = load i32, i32* %y, align 4
  %1 = load i32, i32* %org_size_y.addr, align 4
  %cmp = icmp slt i32 %0, %1
  br i1 %cmp, label %for.body, label %for.end.12

for.body:                                         ; preds = %for.cond
  %2 = load i32, i32* %org_size_x.addr, align 4
  store i32 %2, i32* %x, align 4
  br label %for.cond.1

for.cond.1:                                       ; preds = %for.inc, %for.body
  %3 = load i32, i32* %x, align 4
  %4 = load i32, i32* %img_size_x.addr, align 4
  %cmp2 = icmp slt i32 %3, %4
  br i1 %cmp2, label %for.body.3, label %for.end

for.body.3:                                       ; preds = %for.cond.1
  %5 = load i32, i32* %x, align 4
  %sub = sub nsw i32 %5, 1
  %idxprom = sext i32 %sub to i64
  %6 = load i32, i32* %y, align 4
  %idxprom4 = sext i32 %6 to i64
  %7 = load i16**, i16*** @imgY_org_frm, align 8
  %arrayidx = getelementptr inbounds i16*, i16** %7, i64 %idxprom4
  %8 = load i16*, i16** %arrayidx, align 8
  %arrayidx5 = getelementptr inbounds i16, i16* %8, i64 %idxprom
  %9 = load i16, i16* %arrayidx5, align 2
  %10 = load i32, i32* %x, align 4
  %idxprom6 = sext i32 %10 to i64
  %11 = load i32, i32* %y, align 4
  %idxprom7 = sext i32 %11 to i64
  %12 = load i16**, i16*** @imgY_org_frm, align 8
  %arrayidx8 = getelementptr inbounds i16*, i16** %12, i64 %idxprom7
  %13 = load i16*, i16** %arrayidx8, align 8
  %arrayidx9 = getelementptr inbounds i16, i16* %13, i64 %idxprom6
  store i16 %9, i16* %arrayidx9, align 2
  br label %for.inc

for.inc:                                          ; preds = %for.body.3
  %14 = load i32, i32* %x, align 4
  %inc = add nsw i32 %14, 1
  store i32 %inc, i32* %x, align 4
  br label %for.cond.1

for.end:                                          ; preds = %for.cond.1
  br label %for.inc.10

for.inc.10:                                       ; preds = %for.end
  %15 = load i32, i32* %y, align 4
  %inc11 = add nsw i32 %15, 1
  store i32 %inc11, i32* %y, align 4
  br label %for.cond

for.end.12:                                       ; preds = %for.cond
  %16 = load i32, i32* %org_size_y.addr, align 4
  store i32 %16, i32* %y, align 4
  br label %for.cond.13

for.cond.13:                                      ; preds = %for.inc.31, %for.end.12
  %17 = load i32, i32* %y, align 4
  %18 = load i32, i32* %img_size_y.addr, align 4
  %cmp14 = icmp slt i32 %17, %18
  br i1 %cmp14, label %for.body.15, label %for.end.33

for.body.15:                                      ; preds = %for.cond.13
  store i32 0, i32* %x, align 4
  br label %for.cond.16

for.cond.16:                                      ; preds = %for.inc.28, %for.body.15
  %19 = load i32, i32* %x, align 4
  %20 = load i32, i32* %img_size_x.addr, align 4
  %cmp17 = icmp slt i32 %19, %20
  br i1 %cmp17, label %for.body.18, label %for.end.30

for.body.18:                                      ; preds = %for.cond.16
  %21 = load i32, i32* %x, align 4
  %idxprom19 = sext i32 %21 to i64
  %22 = load i32, i32* %y, align 4
  %sub20 = sub nsw i32 %22, 1
  %idxprom21 = sext i32 %sub20 to i64
  %23 = load i16**, i16*** @imgY_org_frm, align 8
  %arrayidx22 = getelementptr inbounds i16*, i16** %23, i64 %idxprom21
  %24 = load i16*, i16** %arrayidx22, align 8
  %arrayidx23 = getelementptr inbounds i16, i16* %24, i64 %idxprom19
  %25 = load i16, i16* %arrayidx23, align 2
  %26 = load i32, i32* %x, align 4
  %idxprom24 = sext i32 %26 to i64
  %27 = load i32, i32* %y, align 4
  %idxprom25 = sext i32 %27 to i64
  %28 = load i16**, i16*** @imgY_org_frm, align 8
  %arrayidx26 = getelementptr inbounds i16*, i16** %28, i64 %idxprom25
  %29 = load i16*, i16** %arrayidx26, align 8
  %arrayidx27 = getelementptr inbounds i16, i16* %29, i64 %idxprom24
  store i16 %25, i16* %arrayidx27, align 2
  br label %for.inc.28

for.inc.28:                                       ; preds = %for.body.18
  %30 = load i32, i32* %x, align 4
  %inc29 = add nsw i32 %30, 1
  store i32 %inc29, i32* %x, align 4
  br label %for.cond.16

for.end.30:                                       ; preds = %for.cond.16
  br label %for.inc.31

for.inc.31:                                       ; preds = %for.end.30
  %31 = load i32, i32* %y, align 4
  %inc32 = add nsw i32 %31, 1
  store i32 %inc32, i32* %y, align 4
  br label %for.cond.13

for.end.33:                                       ; preds = %for.cond.13
  %32 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %yuv_format = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %32, i32 0, i32 159
  %33 = load i32, i32* %yuv_format, align 4
  %cmp34 = icmp ne i32 %33, 0
  br i1 %cmp34, label %if.then, label %if.end

if.then:                                          ; preds = %for.end.33
  store i32 0, i32* %y, align 4
  br label %for.cond.35

for.cond.35:                                      ; preds = %for.inc.66, %if.then
  %34 = load i32, i32* %y, align 4
  %35 = load i32, i32* %org_size_y_cr.addr, align 4
  %cmp36 = icmp slt i32 %34, %35
  br i1 %cmp36, label %for.body.37, label %for.end.68

for.body.37:                                      ; preds = %for.cond.35
  %36 = load i32, i32* %org_size_x_cr.addr, align 4
  store i32 %36, i32* %x, align 4
  br label %for.cond.38

for.cond.38:                                      ; preds = %for.inc.63, %for.body.37
  %37 = load i32, i32* %x, align 4
  %38 = load i32, i32* %img_size_x_cr.addr, align 4
  %cmp39 = icmp slt i32 %37, %38
  br i1 %cmp39, label %for.body.40, label %for.end.65

for.body.40:                                      ; preds = %for.cond.38
  %39 = load i32, i32* %x, align 4
  %sub41 = sub nsw i32 %39, 1
  %idxprom42 = sext i32 %sub41 to i64
  %40 = load i32, i32* %y, align 4
  %idxprom43 = sext i32 %40 to i64
  %41 = load i16***, i16**** @imgUV_org_frm, align 8
  %arrayidx44 = getelementptr inbounds i16**, i16*** %41, i64 0
  %42 = load i16**, i16*** %arrayidx44, align 8
  %arrayidx45 = getelementptr inbounds i16*, i16** %42, i64 %idxprom43
  %43 = load i16*, i16** %arrayidx45, align 8
  %arrayidx46 = getelementptr inbounds i16, i16* %43, i64 %idxprom42
  %44 = load i16, i16* %arrayidx46, align 2
  %45 = load i32, i32* %x, align 4
  %idxprom47 = sext i32 %45 to i64
  %46 = load i32, i32* %y, align 4
  %idxprom48 = sext i32 %46 to i64
  %47 = load i16***, i16**** @imgUV_org_frm, align 8
  %arrayidx49 = getelementptr inbounds i16**, i16*** %47, i64 0
  %48 = load i16**, i16*** %arrayidx49, align 8
  %arrayidx50 = getelementptr inbounds i16*, i16** %48, i64 %idxprom48
  %49 = load i16*, i16** %arrayidx50, align 8
  %arrayidx51 = getelementptr inbounds i16, i16* %49, i64 %idxprom47
  store i16 %44, i16* %arrayidx51, align 2
  %50 = load i32, i32* %x, align 4
  %sub52 = sub nsw i32 %50, 1
  %idxprom53 = sext i32 %sub52 to i64
  %51 = load i32, i32* %y, align 4
  %idxprom54 = sext i32 %51 to i64
  %52 = load i16***, i16**** @imgUV_org_frm, align 8
  %arrayidx55 = getelementptr inbounds i16**, i16*** %52, i64 1
  %53 = load i16**, i16*** %arrayidx55, align 8
  %arrayidx56 = getelementptr inbounds i16*, i16** %53, i64 %idxprom54
  %54 = load i16*, i16** %arrayidx56, align 8
  %arrayidx57 = getelementptr inbounds i16, i16* %54, i64 %idxprom53
  %55 = load i16, i16* %arrayidx57, align 2
  %56 = load i32, i32* %x, align 4
  %idxprom58 = sext i32 %56 to i64
  %57 = load i32, i32* %y, align 4
  %idxprom59 = sext i32 %57 to i64
  %58 = load i16***, i16**** @imgUV_org_frm, align 8
  %arrayidx60 = getelementptr inbounds i16**, i16*** %58, i64 1
  %59 = load i16**, i16*** %arrayidx60, align 8
  %arrayidx61 = getelementptr inbounds i16*, i16** %59, i64 %idxprom59
  %60 = load i16*, i16** %arrayidx61, align 8
  %arrayidx62 = getelementptr inbounds i16, i16* %60, i64 %idxprom58
  store i16 %55, i16* %arrayidx62, align 2
  br label %for.inc.63

for.inc.63:                                       ; preds = %for.body.40
  %61 = load i32, i32* %x, align 4
  %inc64 = add nsw i32 %61, 1
  store i32 %inc64, i32* %x, align 4
  br label %for.cond.38

for.end.65:                                       ; preds = %for.cond.38
  br label %for.inc.66

for.inc.66:                                       ; preds = %for.end.65
  %62 = load i32, i32* %y, align 4
  %inc67 = add nsw i32 %62, 1
  store i32 %inc67, i32* %y, align 4
  br label %for.cond.35

for.end.68:                                       ; preds = %for.cond.35
  %63 = load i32, i32* %org_size_y_cr.addr, align 4
  store i32 %63, i32* %y, align 4
  br label %for.cond.69

for.cond.69:                                      ; preds = %for.inc.100, %for.end.68
  %64 = load i32, i32* %y, align 4
  %65 = load i32, i32* %img_size_y_cr.addr, align 4
  %cmp70 = icmp slt i32 %64, %65
  br i1 %cmp70, label %for.body.71, label %for.end.102

for.body.71:                                      ; preds = %for.cond.69
  store i32 0, i32* %x, align 4
  br label %for.cond.72

for.cond.72:                                      ; preds = %for.inc.97, %for.body.71
  %66 = load i32, i32* %x, align 4
  %67 = load i32, i32* %img_size_x_cr.addr, align 4
  %cmp73 = icmp slt i32 %66, %67
  br i1 %cmp73, label %for.body.74, label %for.end.99

for.body.74:                                      ; preds = %for.cond.72
  %68 = load i32, i32* %x, align 4
  %idxprom75 = sext i32 %68 to i64
  %69 = load i32, i32* %y, align 4
  %sub76 = sub nsw i32 %69, 1
  %idxprom77 = sext i32 %sub76 to i64
  %70 = load i16***, i16**** @imgUV_org_frm, align 8
  %arrayidx78 = getelementptr inbounds i16**, i16*** %70, i64 0
  %71 = load i16**, i16*** %arrayidx78, align 8
  %arrayidx79 = getelementptr inbounds i16*, i16** %71, i64 %idxprom77
  %72 = load i16*, i16** %arrayidx79, align 8
  %arrayidx80 = getelementptr inbounds i16, i16* %72, i64 %idxprom75
  %73 = load i16, i16* %arrayidx80, align 2
  %74 = load i32, i32* %x, align 4
  %idxprom81 = sext i32 %74 to i64
  %75 = load i32, i32* %y, align 4
  %idxprom82 = sext i32 %75 to i64
  %76 = load i16***, i16**** @imgUV_org_frm, align 8
  %arrayidx83 = getelementptr inbounds i16**, i16*** %76, i64 0
  %77 = load i16**, i16*** %arrayidx83, align 8
  %arrayidx84 = getelementptr inbounds i16*, i16** %77, i64 %idxprom82
  %78 = load i16*, i16** %arrayidx84, align 8
  %arrayidx85 = getelementptr inbounds i16, i16* %78, i64 %idxprom81
  store i16 %73, i16* %arrayidx85, align 2
  %79 = load i32, i32* %x, align 4
  %idxprom86 = sext i32 %79 to i64
  %80 = load i32, i32* %y, align 4
  %sub87 = sub nsw i32 %80, 1
  %idxprom88 = sext i32 %sub87 to i64
  %81 = load i16***, i16**** @imgUV_org_frm, align 8
  %arrayidx89 = getelementptr inbounds i16**, i16*** %81, i64 1
  %82 = load i16**, i16*** %arrayidx89, align 8
  %arrayidx90 = getelementptr inbounds i16*, i16** %82, i64 %idxprom88
  %83 = load i16*, i16** %arrayidx90, align 8
  %arrayidx91 = getelementptr inbounds i16, i16* %83, i64 %idxprom86
  %84 = load i16, i16* %arrayidx91, align 2
  %85 = load i32, i32* %x, align 4
  %idxprom92 = sext i32 %85 to i64
  %86 = load i32, i32* %y, align 4
  %idxprom93 = sext i32 %86 to i64
  %87 = load i16***, i16**** @imgUV_org_frm, align 8
  %arrayidx94 = getelementptr inbounds i16**, i16*** %87, i64 1
  %88 = load i16**, i16*** %arrayidx94, align 8
  %arrayidx95 = getelementptr inbounds i16*, i16** %88, i64 %idxprom93
  %89 = load i16*, i16** %arrayidx95, align 8
  %arrayidx96 = getelementptr inbounds i16, i16* %89, i64 %idxprom92
  store i16 %84, i16* %arrayidx96, align 2
  br label %for.inc.97

for.inc.97:                                       ; preds = %for.body.74
  %90 = load i32, i32* %x, align 4
  %inc98 = add nsw i32 %90, 1
  store i32 %inc98, i32* %x, align 4
  br label %for.cond.72

for.end.99:                                       ; preds = %for.cond.72
  br label %for.inc.100

for.inc.100:                                      ; preds = %for.end.99
  %91 = load i32, i32* %y, align 4
  %inc101 = add nsw i32 %91, 1
  store i32 %inc101, i32* %y, align 4
  br label %for.cond.69

for.end.102:                                      ; preds = %for.cond.69
  br label %if.end

if.end:                                           ; preds = %for.end.102, %for.end.33
  ret void
}

; Function Attrs: nounwind uwtable
define void @field_picture(%struct.Picture* %top, %struct.Picture* %bottom) #0 {
entry:
  %top.addr = alloca %struct.Picture*, align 8
  %bottom.addr = alloca %struct.Picture*, align 8
  %old_pic_type = alloca i32, align 4
  %TopFieldBits = alloca i32, align 4
  store %struct.Picture* %top, %struct.Picture** %top.addr, align 8
  store %struct.Picture* %bottom, %struct.Picture** %bottom.addr, align 8
  %0 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %type = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %0, i32 0, i32 6
  %1 = load i32, i32* %type, align 4
  store i32 %1, i32* %old_pic_type, align 4
  %2 = load %struct.StatParameters*, %struct.StatParameters** @stats, align 8
  %em_prev_bits_fld = getelementptr inbounds %struct.StatParameters, %struct.StatParameters* %2, i32 0, i32 30
  store i32 0, i32* %em_prev_bits_fld, align 4
  %3 = load %struct.StatParameters*, %struct.StatParameters** @stats, align 8
  %em_prev_bits_fld1 = getelementptr inbounds %struct.StatParameters, %struct.StatParameters* %3, i32 0, i32 30
  %4 = load %struct.StatParameters*, %struct.StatParameters** @stats, align 8
  %em_prev_bits = getelementptr inbounds %struct.StatParameters, %struct.StatParameters* %4, i32 0, i32 31
  store i32* %em_prev_bits_fld1, i32** %em_prev_bits, align 8
  %5 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %number = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %5, i32 0, i32 0
  %6 = load i32, i32* %number, align 4
  %mul = mul nsw i32 %6, 2
  store i32 %mul, i32* %number, align 4
  %7 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %buf_cycle = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %7, i32 0, i32 84
  %8 = load i32, i32* %buf_cycle, align 4
  %mul2 = mul nsw i32 %8, 2
  store i32 %mul2, i32* %buf_cycle, align 4
  %9 = load %struct.InputParameters*, %struct.InputParameters** @input, align 8
  %img_height = getelementptr inbounds %struct.InputParameters, %struct.InputParameters* %9, i32 0, i32 17
  %10 = load i32, i32* %img_height, align 4
  %11 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %auto_crop_bottom = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %11, i32 0, i32 166
  %12 = load i32, i32* %auto_crop_bottom, align 4
  %add = add nsw i32 %10, %12
  %div = sdiv i32 %add, 2
  %13 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %height = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %13, i32 0, i32 15
  store i32 %div, i32* %height, align 4
  %14 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %height_cr_frame = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %14, i32 0, i32 17
  %15 = load i32, i32* %height_cr_frame, align 4
  %div3 = sdiv i32 %15, 2
  %16 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %height_cr = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %16, i32 0, i32 16
  store i32 %div3, i32* %height_cr, align 4
  %17 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %fld_flag = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %17, i32 0, i32 57
  store i32 1, i32* %fld_flag, align 4
  %18 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %FrameSizeInMbs = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %18, i32 0, i32 111
  %19 = load i32, i32* %FrameSizeInMbs, align 4
  %div4 = udiv i32 %19, 2
  %20 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %PicSizeInMbs = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %20, i32 0, i32 110
  store i32 %div4, i32* %PicSizeInMbs, align 4
  %21 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %structure = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %21, i32 0, i32 7
  %22 = load i32, i32* %structure, align 4
  %23 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %width = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %23, i32 0, i32 13
  %24 = load i32, i32* %width, align 4
  %25 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %height5 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %25, i32 0, i32 15
  %26 = load i32, i32* %height5, align 4
  %27 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %width_cr = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %27, i32 0, i32 14
  %28 = load i32, i32* %width_cr, align 4
  %29 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %height_cr6 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %29, i32 0, i32 16
  %30 = load i32, i32* %height_cr6, align 4
  %call = call %struct.storable_picture* @alloc_storable_picture(i32 %22, i32 %24, i32 %26, i32 %28, i32 %30)
  store %struct.storable_picture* %call, %struct.storable_picture** @enc_top_picture, align 8
  %31 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %toppoc = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %31, i32 0, i32 101
  %32 = load i32, i32* %toppoc, align 4
  %33 = load %struct.storable_picture*, %struct.storable_picture** @enc_top_picture, align 8
  %poc = getelementptr inbounds %struct.storable_picture, %struct.storable_picture* %33, i32 0, i32 1
  store i32 %32, i32* %poc, align 4
  %34 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %toppoc7 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %34, i32 0, i32 101
  %35 = load i32, i32* %toppoc7, align 4
  %36 = load %struct.storable_picture*, %struct.storable_picture** @enc_top_picture, align 8
  %frame_poc = getelementptr inbounds %struct.storable_picture, %struct.storable_picture* %36, i32 0, i32 4
  store i32 %35, i32* %frame_poc, align 4
  %37 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %frame_num = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %37, i32 0, i32 105
  %38 = load i32, i32* %frame_num, align 4
  %39 = load %struct.storable_picture*, %struct.storable_picture** @enc_top_picture, align 8
  %pic_num = getelementptr inbounds %struct.storable_picture, %struct.storable_picture* %39, i32 0, i32 11
  store i32 %38, i32* %pic_num, align 4
  %40 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %frame_num8 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %40, i32 0, i32 105
  %41 = load i32, i32* %frame_num8, align 4
  %42 = load %struct.storable_picture*, %struct.storable_picture** @enc_top_picture, align 8
  %frame_num9 = getelementptr inbounds %struct.storable_picture, %struct.storable_picture* %42, i32 0, i32 10
  store i32 %41, i32* %frame_num9, align 4
  %43 = load %struct.storable_picture*, %struct.storable_picture** @enc_top_picture, align 8
  %coded_frame = getelementptr inbounds %struct.storable_picture, %struct.storable_picture* %43, i32 0, i32 23
  store i32 0, i32* %coded_frame, align 4
  %44 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %MbaffFrameFlag = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %44, i32 0, i32 90
  store i32 0, i32* %MbaffFrameFlag, align 4
  %45 = load %struct.storable_picture*, %struct.storable_picture** @enc_top_picture, align 8
  %MbaffFrameFlag10 = getelementptr inbounds %struct.storable_picture, %struct.storable_picture* %45, i32 0, i32 24
  store i32 0, i32* %MbaffFrameFlag10, align 4
  %46 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %toppoc11 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %46, i32 0, i32 101
  %47 = load i32, i32* %toppoc11, align 4
  %48 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %ThisPOC = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %48, i32 0, i32 104
  store i32 %47, i32* %ThisPOC, align 4
  %49 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %structure12 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %49, i32 0, i32 7
  store i32 1, i32* %structure12, align 4
  %50 = load %struct.storable_picture*, %struct.storable_picture** @enc_top_picture, align 8
  store %struct.storable_picture* %50, %struct.storable_picture** @enc_picture, align 8
  call void @copy_params()
  call void @put_buffer_top()
  call void @init_field()
  %51 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %type13 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %51, i32 0, i32 6
  %52 = load i32, i32* %type13, align 4
  %cmp = icmp eq i32 %52, 1
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %53 = load i32, i32* @nextP_tr_fld, align 4
  %dec = add nsw i32 %53, -1
  store i32 %dec, i32* @nextP_tr_fld, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %54 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %fld_flag14 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %54, i32 0, i32 57
  store i32 1, i32* %fld_flag14, align 4
  %55 = load %struct.InputParameters*, %struct.InputParameters** @input, align 8
  %RCEnable = getelementptr inbounds %struct.InputParameters, %struct.InputParameters* %55, i32 0, i32 127
  %56 = load i32, i32* %RCEnable, align 4
  %tobool = icmp ne i32 %56, 0
  br i1 %tobool, label %if.then.15, label %if.end.20

if.then.15:                                       ; preds = %if.end
  %57 = load %struct.InputParameters*, %struct.InputParameters** @input, align 8
  %basicunit = getelementptr inbounds %struct.InputParameters, %struct.InputParameters* %57, i32 0, i32 130
  %58 = load i32, i32* %basicunit, align 4
  %59 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %BasicUnit = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %59, i32 0, i32 139
  store i32 %58, i32* %BasicUnit, align 4
  %60 = load %struct.InputParameters*, %struct.InputParameters** @input, align 8
  %PicInterlace = getelementptr inbounds %struct.InputParameters, %struct.InputParameters* %60, i32 0, i32 91
  %61 = load i32, i32* %PicInterlace, align 4
  %cmp16 = icmp eq i32 %61, 1
  br i1 %cmp16, label %if.then.17, label %if.else

if.then.17:                                       ; preds = %if.then.15
  call void @rc_init_pict(i32 0, i32 1, i32 1)
  br label %if.end.18

if.else:                                          ; preds = %if.then.15
  call void @rc_init_pict(i32 0, i32 1, i32 0)
  br label %if.end.18

if.end.18:                                        ; preds = %if.else, %if.then.17
  %call19 = call i32 @updateQuantizationParameter(i32 1)
  %62 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %qp = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %62, i32 0, i32 10
  store i32 %call19, i32* %qp, align 4
  br label %if.end.20

if.end.20:                                        ; preds = %if.end.18, %if.end
  %63 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %TopFieldFlag = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %63, i32 0, i32 133
  store i32 1, i32* %TopFieldFlag, align 4
  %64 = load %struct.Picture*, %struct.Picture** @top_pic, align 8
  call void @code_a_picture(%struct.Picture* %64)
  %65 = load %struct.storable_picture*, %struct.storable_picture** @enc_picture, align 8
  %structure21 = getelementptr inbounds %struct.storable_picture, %struct.storable_picture* %65, i32 0, i32 0
  store i32 1, i32* %structure21, align 4
  %66 = load %struct.storable_picture*, %struct.storable_picture** @enc_top_picture, align 8
  call void @store_picture_in_dpb(%struct.storable_picture* %66)
  %67 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %currentSlice = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %67, i32 0, i32 50
  %68 = load %struct.Slice*, %struct.Slice** %currentSlice, align 8
  %partArr = getelementptr inbounds %struct.Slice, %struct.Slice* %68, i32 0, i32 6
  %69 = load %struct.datapartition*, %struct.datapartition** %partArr, align 8
  %arrayidx = getelementptr inbounds %struct.datapartition, %struct.datapartition* %69, i64 0
  %bitstream = getelementptr inbounds %struct.datapartition, %struct.datapartition* %arrayidx, i32 0, i32 0
  %70 = load %struct.Bitstream*, %struct.Bitstream** %bitstream, align 8
  %byte_pos = getelementptr inbounds %struct.Bitstream, %struct.Bitstream* %70, i32 0, i32 0
  %71 = load i32, i32* %byte_pos, align 4
  %mul22 = mul nsw i32 8, %71
  %72 = load %struct.Picture*, %struct.Picture** %top.addr, align 8
  %bits_per_picture = getelementptr inbounds %struct.Picture, %struct.Picture* %72, i32 0, i32 3
  store i32 %mul22, i32* %bits_per_picture, align 4
  %73 = load %struct.Picture*, %struct.Picture** %top.addr, align 8
  %bits_per_picture23 = getelementptr inbounds %struct.Picture, %struct.Picture* %73, i32 0, i32 3
  %74 = load i32, i32* %bits_per_picture23, align 4
  store i32 %74, i32* %TopFieldBits, align 4
  %75 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %structure24 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %75, i32 0, i32 7
  %76 = load i32, i32* %structure24, align 4
  %77 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %width25 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %77, i32 0, i32 13
  %78 = load i32, i32* %width25, align 4
  %79 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %height26 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %79, i32 0, i32 15
  %80 = load i32, i32* %height26, align 4
  %81 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %width_cr27 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %81, i32 0, i32 14
  %82 = load i32, i32* %width_cr27, align 4
  %83 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %height_cr28 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %83, i32 0, i32 16
  %84 = load i32, i32* %height_cr28, align 4
  %call29 = call %struct.storable_picture* @alloc_storable_picture(i32 %76, i32 %78, i32 %80, i32 %82, i32 %84)
  store %struct.storable_picture* %call29, %struct.storable_picture** @enc_bottom_picture, align 8
  %85 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %bottompoc = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %85, i32 0, i32 102
  %86 = load i32, i32* %bottompoc, align 4
  %87 = load %struct.storable_picture*, %struct.storable_picture** @enc_bottom_picture, align 8
  %poc30 = getelementptr inbounds %struct.storable_picture, %struct.storable_picture* %87, i32 0, i32 1
  store i32 %86, i32* %poc30, align 4
  %88 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %bottompoc31 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %88, i32 0, i32 102
  %89 = load i32, i32* %bottompoc31, align 4
  %90 = load %struct.storable_picture*, %struct.storable_picture** @enc_bottom_picture, align 8
  %frame_poc32 = getelementptr inbounds %struct.storable_picture, %struct.storable_picture* %90, i32 0, i32 4
  store i32 %89, i32* %frame_poc32, align 4
  %91 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %frame_num33 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %91, i32 0, i32 105
  %92 = load i32, i32* %frame_num33, align 4
  %93 = load %struct.storable_picture*, %struct.storable_picture** @enc_bottom_picture, align 8
  %pic_num34 = getelementptr inbounds %struct.storable_picture, %struct.storable_picture* %93, i32 0, i32 11
  store i32 %92, i32* %pic_num34, align 4
  %94 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %frame_num35 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %94, i32 0, i32 105
  %95 = load i32, i32* %frame_num35, align 4
  %96 = load %struct.storable_picture*, %struct.storable_picture** @enc_bottom_picture, align 8
  %frame_num36 = getelementptr inbounds %struct.storable_picture, %struct.storable_picture* %96, i32 0, i32 10
  store i32 %95, i32* %frame_num36, align 4
  %97 = load %struct.storable_picture*, %struct.storable_picture** @enc_bottom_picture, align 8
  %coded_frame37 = getelementptr inbounds %struct.storable_picture, %struct.storable_picture* %97, i32 0, i32 23
  store i32 0, i32* %coded_frame37, align 4
  %98 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %MbaffFrameFlag38 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %98, i32 0, i32 90
  store i32 0, i32* %MbaffFrameFlag38, align 4
  %99 = load %struct.storable_picture*, %struct.storable_picture** @enc_bottom_picture, align 8
  %MbaffFrameFlag39 = getelementptr inbounds %struct.storable_picture, %struct.storable_picture* %99, i32 0, i32 24
  store i32 0, i32* %MbaffFrameFlag39, align 4
  %100 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %bottompoc40 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %100, i32 0, i32 102
  %101 = load i32, i32* %bottompoc40, align 4
  %102 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %ThisPOC41 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %102, i32 0, i32 104
  store i32 %101, i32* %ThisPOC41, align 4
  %103 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %structure42 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %103, i32 0, i32 7
  store i32 2, i32* %structure42, align 4
  %104 = load %struct.storable_picture*, %struct.storable_picture** @enc_bottom_picture, align 8
  store %struct.storable_picture* %104, %struct.storable_picture** @enc_picture, align 8
  call void @copy_params()
  call void @put_buffer_bot()
  %105 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %number43 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %105, i32 0, i32 0
  %106 = load i32, i32* %number43, align 4
  %inc = add nsw i32 %106, 1
  store i32 %inc, i32* %number43, align 4
  call void @init_field()
  %107 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %type44 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %107, i32 0, i32 6
  %108 = load i32, i32* %type44, align 4
  %cmp45 = icmp eq i32 %108, 1
  br i1 %cmp45, label %if.then.46, label %if.end.48

if.then.46:                                       ; preds = %if.end.20
  %109 = load i32, i32* @nextP_tr_fld, align 4
  %inc47 = add nsw i32 %109, 1
  store i32 %inc47, i32* @nextP_tr_fld, align 4
  br label %if.end.48

if.end.48:                                        ; preds = %if.then.46, %if.end.20
  %110 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %type49 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %110, i32 0, i32 6
  %111 = load i32, i32* %type49, align 4
  %cmp50 = icmp eq i32 %111, 2
  br i1 %cmp50, label %land.lhs.true, label %if.end.54

land.lhs.true:                                    ; preds = %if.end.48
  %112 = load %struct.InputParameters*, %struct.InputParameters** @input, align 8
  %IntraBottom = getelementptr inbounds %struct.InputParameters, %struct.InputParameters* %112, i32 0, i32 93
  %113 = load i32, i32* %IntraBottom, align 4
  %cmp51 = icmp ne i32 %113, 1
  br i1 %cmp51, label %if.then.52, label %if.end.54

if.then.52:                                       ; preds = %land.lhs.true
  %114 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %type53 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %114, i32 0, i32 6
  store i32 0, i32* %type53, align 4
  br label %if.end.54

if.end.54:                                        ; preds = %if.then.52, %land.lhs.true, %if.end.48
  %115 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %fld_flag55 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %115, i32 0, i32 57
  store i32 1, i32* %fld_flag55, align 4
  %116 = load %struct.InputParameters*, %struct.InputParameters** @input, align 8
  %RCEnable56 = getelementptr inbounds %struct.InputParameters, %struct.InputParameters* %116, i32 0, i32 127
  %117 = load i32, i32* %RCEnable56, align 4
  %tobool57 = icmp ne i32 %117, 0
  br i1 %tobool57, label %if.then.58, label %if.end.59

if.then.58:                                       ; preds = %if.end.54
  %118 = load i32, i32* %TopFieldBits, align 4
  call void @setbitscount(i32 %118)
  br label %if.end.59

if.end.59:                                        ; preds = %if.then.58, %if.end.54
  %119 = load %struct.InputParameters*, %struct.InputParameters** @input, align 8
  %RCEnable60 = getelementptr inbounds %struct.InputParameters, %struct.InputParameters* %119, i32 0, i32 127
  %120 = load i32, i32* %RCEnable60, align 4
  %tobool61 = icmp ne i32 %120, 0
  br i1 %tobool61, label %if.then.62, label %if.end.65

if.then.62:                                       ; preds = %if.end.59
  call void @rc_init_pict(i32 0, i32 0, i32 0)
  %call63 = call i32 @updateQuantizationParameter(i32 0)
  %121 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %qp64 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %121, i32 0, i32 10
  store i32 %call63, i32* %qp64, align 4
  br label %if.end.65

if.end.65:                                        ; preds = %if.then.62, %if.end.59
  %122 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %TopFieldFlag66 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %122, i32 0, i32 133
  store i32 0, i32* %TopFieldFlag66, align 4
  %123 = load %struct.storable_picture*, %struct.storable_picture** @enc_picture, align 8
  %structure67 = getelementptr inbounds %struct.storable_picture, %struct.storable_picture* %123, i32 0, i32 0
  store i32 2, i32* %structure67, align 4
  %124 = load %struct.Picture*, %struct.Picture** @bottom_pic, align 8
  call void @code_a_picture(%struct.Picture* %124)
  %125 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %currentSlice68 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %125, i32 0, i32 50
  %126 = load %struct.Slice*, %struct.Slice** %currentSlice68, align 8
  %partArr69 = getelementptr inbounds %struct.Slice, %struct.Slice* %126, i32 0, i32 6
  %127 = load %struct.datapartition*, %struct.datapartition** %partArr69, align 8
  %arrayidx70 = getelementptr inbounds %struct.datapartition, %struct.datapartition* %127, i64 0
  %bitstream71 = getelementptr inbounds %struct.datapartition, %struct.datapartition* %arrayidx70, i32 0, i32 0
  %128 = load %struct.Bitstream*, %struct.Bitstream** %bitstream71, align 8
  %byte_pos72 = getelementptr inbounds %struct.Bitstream, %struct.Bitstream* %128, i32 0, i32 0
  %129 = load i32, i32* %byte_pos72, align 4
  %mul73 = mul nsw i32 8, %129
  %130 = load %struct.Picture*, %struct.Picture** %bottom.addr, align 8
  %bits_per_picture74 = getelementptr inbounds %struct.Picture, %struct.Picture* %130, i32 0, i32 3
  store i32 %mul73, i32* %bits_per_picture74, align 4
  %131 = load %struct.Picture*, %struct.Picture** %top.addr, align 8
  %distortion_y = getelementptr inbounds %struct.Picture, %struct.Picture* %131, i32 0, i32 4
  %132 = load %struct.Picture*, %struct.Picture** %top.addr, align 8
  %distortion_u = getelementptr inbounds %struct.Picture, %struct.Picture* %132, i32 0, i32 5
  %133 = load %struct.Picture*, %struct.Picture** %top.addr, align 8
  %distortion_v = getelementptr inbounds %struct.Picture, %struct.Picture* %133, i32 0, i32 6
  call void @distortion_fld(float* %distortion_y, float* %distortion_u, float* %distortion_v)
  ret void
}

declare void @rc_init_pict(i32, i32, i32) #1

declare i32 @updateQuantizationParameter(i32) #1

; Function Attrs: nounwind uwtable
define void @frame_picture(%struct.Picture* %frame, i32 %rd_pass) #0 {
entry:
  %frame.addr = alloca %struct.Picture*, align 8
  %rd_pass.addr = alloca i32, align 4
  store %struct.Picture* %frame, %struct.Picture** %frame.addr, align 8
  store i32 %rd_pass, i32* %rd_pass.addr, align 4
  %0 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %structure = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %0, i32 0, i32 7
  store i32 0, i32* %structure, align 4
  %1 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %FrameSizeInMbs = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %1, i32 0, i32 111
  %2 = load i32, i32* %FrameSizeInMbs, align 4
  %3 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %PicSizeInMbs = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %3, i32 0, i32 110
  store i32 %2, i32* %PicSizeInMbs, align 4
  %4 = load i32, i32* %rd_pass.addr, align 4
  %cmp = icmp eq i32 %4, 2
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %5 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %structure1 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %5, i32 0, i32 7
  %6 = load i32, i32* %structure1, align 4
  %7 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %width = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %7, i32 0, i32 13
  %8 = load i32, i32* %width, align 4
  %9 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %height = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %9, i32 0, i32 15
  %10 = load i32, i32* %height, align 4
  %11 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %width_cr = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %11, i32 0, i32 14
  %12 = load i32, i32* %width_cr, align 4
  %13 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %height_cr = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %13, i32 0, i32 16
  %14 = load i32, i32* %height_cr, align 4
  %call = call %struct.storable_picture* @alloc_storable_picture(i32 %6, i32 %8, i32 %10, i32 %12, i32 %14)
  store %struct.storable_picture* %call, %struct.storable_picture** @enc_frame_picture3, align 8
  %15 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %framepoc = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %15, i32 0, i32 103
  %16 = load i32, i32* %framepoc, align 4
  %17 = load %struct.storable_picture*, %struct.storable_picture** @enc_frame_picture3, align 8
  %poc = getelementptr inbounds %struct.storable_picture, %struct.storable_picture* %17, i32 0, i32 1
  store i32 %16, i32* %poc, align 4
  %18 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %ThisPOC = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %18, i32 0, i32 104
  store i32 %16, i32* %ThisPOC, align 4
  %19 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %toppoc = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %19, i32 0, i32 101
  %20 = load i32, i32* %toppoc, align 4
  %21 = load %struct.storable_picture*, %struct.storable_picture** @enc_frame_picture3, align 8
  %top_poc = getelementptr inbounds %struct.storable_picture, %struct.storable_picture* %21, i32 0, i32 2
  store i32 %20, i32* %top_poc, align 4
  %22 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %bottompoc = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %22, i32 0, i32 102
  %23 = load i32, i32* %bottompoc, align 4
  %24 = load %struct.storable_picture*, %struct.storable_picture** @enc_frame_picture3, align 8
  %bottom_poc = getelementptr inbounds %struct.storable_picture, %struct.storable_picture* %24, i32 0, i32 3
  store i32 %23, i32* %bottom_poc, align 4
  %25 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %framepoc2 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %25, i32 0, i32 103
  %26 = load i32, i32* %framepoc2, align 4
  %27 = load %struct.storable_picture*, %struct.storable_picture** @enc_frame_picture3, align 8
  %frame_poc = getelementptr inbounds %struct.storable_picture, %struct.storable_picture* %27, i32 0, i32 4
  store i32 %26, i32* %frame_poc, align 4
  %28 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %frame_num = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %28, i32 0, i32 105
  %29 = load i32, i32* %frame_num, align 4
  %30 = load %struct.storable_picture*, %struct.storable_picture** @enc_frame_picture3, align 8
  %pic_num = getelementptr inbounds %struct.storable_picture, %struct.storable_picture* %30, i32 0, i32 11
  store i32 %29, i32* %pic_num, align 4
  %31 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %frame_num3 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %31, i32 0, i32 105
  %32 = load i32, i32* %frame_num3, align 4
  %33 = load %struct.storable_picture*, %struct.storable_picture** @enc_frame_picture3, align 8
  %frame_num4 = getelementptr inbounds %struct.storable_picture, %struct.storable_picture* %33, i32 0, i32 10
  store i32 %32, i32* %frame_num4, align 4
  %34 = load %struct.storable_picture*, %struct.storable_picture** @enc_frame_picture3, align 8
  %coded_frame = getelementptr inbounds %struct.storable_picture, %struct.storable_picture* %34, i32 0, i32 23
  store i32 1, i32* %coded_frame, align 4
  %35 = load %struct.InputParameters*, %struct.InputParameters** @input, align 8
  %MbInterlace = getelementptr inbounds %struct.InputParameters, %struct.InputParameters* %35, i32 0, i32 92
  %36 = load i32, i32* %MbInterlace, align 4
  %cmp5 = icmp ne i32 %36, 0
  %conv = zext i1 %cmp5 to i32
  %37 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %MbaffFrameFlag = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %37, i32 0, i32 90
  store i32 %conv, i32* %MbaffFrameFlag, align 4
  %38 = load %struct.storable_picture*, %struct.storable_picture** @enc_frame_picture3, align 8
  %MbaffFrameFlag6 = getelementptr inbounds %struct.storable_picture, %struct.storable_picture* %38, i32 0, i32 24
  store i32 %conv, i32* %MbaffFrameFlag6, align 4
  %39 = load %struct.storable_picture*, %struct.storable_picture** @enc_frame_picture3, align 8
  store %struct.storable_picture* %39, %struct.storable_picture** @enc_picture, align 8
  call void @copy_params()
  br label %if.end.61

if.else:                                          ; preds = %entry
  %40 = load i32, i32* %rd_pass.addr, align 4
  %cmp7 = icmp eq i32 %40, 1
  br i1 %cmp7, label %if.then.9, label %if.else.35

if.then.9:                                        ; preds = %if.else
  %41 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %structure10 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %41, i32 0, i32 7
  %42 = load i32, i32* %structure10, align 4
  %43 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %width11 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %43, i32 0, i32 13
  %44 = load i32, i32* %width11, align 4
  %45 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %height12 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %45, i32 0, i32 15
  %46 = load i32, i32* %height12, align 4
  %47 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %width_cr13 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %47, i32 0, i32 14
  %48 = load i32, i32* %width_cr13, align 4
  %49 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %height_cr14 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %49, i32 0, i32 16
  %50 = load i32, i32* %height_cr14, align 4
  %call15 = call %struct.storable_picture* @alloc_storable_picture(i32 %42, i32 %44, i32 %46, i32 %48, i32 %50)
  store %struct.storable_picture* %call15, %struct.storable_picture** @enc_frame_picture2, align 8
  %51 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %framepoc16 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %51, i32 0, i32 103
  %52 = load i32, i32* %framepoc16, align 4
  %53 = load %struct.storable_picture*, %struct.storable_picture** @enc_frame_picture2, align 8
  %poc17 = getelementptr inbounds %struct.storable_picture, %struct.storable_picture* %53, i32 0, i32 1
  store i32 %52, i32* %poc17, align 4
  %54 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %ThisPOC18 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %54, i32 0, i32 104
  store i32 %52, i32* %ThisPOC18, align 4
  %55 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %toppoc19 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %55, i32 0, i32 101
  %56 = load i32, i32* %toppoc19, align 4
  %57 = load %struct.storable_picture*, %struct.storable_picture** @enc_frame_picture2, align 8
  %top_poc20 = getelementptr inbounds %struct.storable_picture, %struct.storable_picture* %57, i32 0, i32 2
  store i32 %56, i32* %top_poc20, align 4
  %58 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %bottompoc21 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %58, i32 0, i32 102
  %59 = load i32, i32* %bottompoc21, align 4
  %60 = load %struct.storable_picture*, %struct.storable_picture** @enc_frame_picture2, align 8
  %bottom_poc22 = getelementptr inbounds %struct.storable_picture, %struct.storable_picture* %60, i32 0, i32 3
  store i32 %59, i32* %bottom_poc22, align 4
  %61 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %framepoc23 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %61, i32 0, i32 103
  %62 = load i32, i32* %framepoc23, align 4
  %63 = load %struct.storable_picture*, %struct.storable_picture** @enc_frame_picture2, align 8
  %frame_poc24 = getelementptr inbounds %struct.storable_picture, %struct.storable_picture* %63, i32 0, i32 4
  store i32 %62, i32* %frame_poc24, align 4
  %64 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %frame_num25 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %64, i32 0, i32 105
  %65 = load i32, i32* %frame_num25, align 4
  %66 = load %struct.storable_picture*, %struct.storable_picture** @enc_frame_picture2, align 8
  %pic_num26 = getelementptr inbounds %struct.storable_picture, %struct.storable_picture* %66, i32 0, i32 11
  store i32 %65, i32* %pic_num26, align 4
  %67 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %frame_num27 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %67, i32 0, i32 105
  %68 = load i32, i32* %frame_num27, align 4
  %69 = load %struct.storable_picture*, %struct.storable_picture** @enc_frame_picture2, align 8
  %frame_num28 = getelementptr inbounds %struct.storable_picture, %struct.storable_picture* %69, i32 0, i32 10
  store i32 %68, i32* %frame_num28, align 4
  %70 = load %struct.storable_picture*, %struct.storable_picture** @enc_frame_picture2, align 8
  %coded_frame29 = getelementptr inbounds %struct.storable_picture, %struct.storable_picture* %70, i32 0, i32 23
  store i32 1, i32* %coded_frame29, align 4
  %71 = load %struct.InputParameters*, %struct.InputParameters** @input, align 8
  %MbInterlace30 = getelementptr inbounds %struct.InputParameters, %struct.InputParameters* %71, i32 0, i32 92
  %72 = load i32, i32* %MbInterlace30, align 4
  %cmp31 = icmp ne i32 %72, 0
  %conv32 = zext i1 %cmp31 to i32
  %73 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %MbaffFrameFlag33 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %73, i32 0, i32 90
  store i32 %conv32, i32* %MbaffFrameFlag33, align 4
  %74 = load %struct.storable_picture*, %struct.storable_picture** @enc_frame_picture2, align 8
  %MbaffFrameFlag34 = getelementptr inbounds %struct.storable_picture, %struct.storable_picture* %74, i32 0, i32 24
  store i32 %conv32, i32* %MbaffFrameFlag34, align 4
  %75 = load %struct.storable_picture*, %struct.storable_picture** @enc_frame_picture2, align 8
  store %struct.storable_picture* %75, %struct.storable_picture** @enc_picture, align 8
  call void @copy_params()
  br label %if.end

if.else.35:                                       ; preds = %if.else
  %76 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %structure36 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %76, i32 0, i32 7
  %77 = load i32, i32* %structure36, align 4
  %78 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %width37 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %78, i32 0, i32 13
  %79 = load i32, i32* %width37, align 4
  %80 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %height38 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %80, i32 0, i32 15
  %81 = load i32, i32* %height38, align 4
  %82 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %width_cr39 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %82, i32 0, i32 14
  %83 = load i32, i32* %width_cr39, align 4
  %84 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %height_cr40 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %84, i32 0, i32 16
  %85 = load i32, i32* %height_cr40, align 4
  %call41 = call %struct.storable_picture* @alloc_storable_picture(i32 %77, i32 %79, i32 %81, i32 %83, i32 %85)
  store %struct.storable_picture* %call41, %struct.storable_picture** @enc_frame_picture, align 8
  %86 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %framepoc42 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %86, i32 0, i32 103
  %87 = load i32, i32* %framepoc42, align 4
  %88 = load %struct.storable_picture*, %struct.storable_picture** @enc_frame_picture, align 8
  %poc43 = getelementptr inbounds %struct.storable_picture, %struct.storable_picture* %88, i32 0, i32 1
  store i32 %87, i32* %poc43, align 4
  %89 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %ThisPOC44 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %89, i32 0, i32 104
  store i32 %87, i32* %ThisPOC44, align 4
  %90 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %toppoc45 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %90, i32 0, i32 101
  %91 = load i32, i32* %toppoc45, align 4
  %92 = load %struct.storable_picture*, %struct.storable_picture** @enc_frame_picture, align 8
  %top_poc46 = getelementptr inbounds %struct.storable_picture, %struct.storable_picture* %92, i32 0, i32 2
  store i32 %91, i32* %top_poc46, align 4
  %93 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %bottompoc47 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %93, i32 0, i32 102
  %94 = load i32, i32* %bottompoc47, align 4
  %95 = load %struct.storable_picture*, %struct.storable_picture** @enc_frame_picture, align 8
  %bottom_poc48 = getelementptr inbounds %struct.storable_picture, %struct.storable_picture* %95, i32 0, i32 3
  store i32 %94, i32* %bottom_poc48, align 4
  %96 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %framepoc49 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %96, i32 0, i32 103
  %97 = load i32, i32* %framepoc49, align 4
  %98 = load %struct.storable_picture*, %struct.storable_picture** @enc_frame_picture, align 8
  %frame_poc50 = getelementptr inbounds %struct.storable_picture, %struct.storable_picture* %98, i32 0, i32 4
  store i32 %97, i32* %frame_poc50, align 4
  %99 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %frame_num51 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %99, i32 0, i32 105
  %100 = load i32, i32* %frame_num51, align 4
  %101 = load %struct.storable_picture*, %struct.storable_picture** @enc_frame_picture, align 8
  %pic_num52 = getelementptr inbounds %struct.storable_picture, %struct.storable_picture* %101, i32 0, i32 11
  store i32 %100, i32* %pic_num52, align 4
  %102 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %frame_num53 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %102, i32 0, i32 105
  %103 = load i32, i32* %frame_num53, align 4
  %104 = load %struct.storable_picture*, %struct.storable_picture** @enc_frame_picture, align 8
  %frame_num54 = getelementptr inbounds %struct.storable_picture, %struct.storable_picture* %104, i32 0, i32 10
  store i32 %103, i32* %frame_num54, align 4
  %105 = load %struct.storable_picture*, %struct.storable_picture** @enc_frame_picture, align 8
  %coded_frame55 = getelementptr inbounds %struct.storable_picture, %struct.storable_picture* %105, i32 0, i32 23
  store i32 1, i32* %coded_frame55, align 4
  %106 = load %struct.InputParameters*, %struct.InputParameters** @input, align 8
  %MbInterlace56 = getelementptr inbounds %struct.InputParameters, %struct.InputParameters* %106, i32 0, i32 92
  %107 = load i32, i32* %MbInterlace56, align 4
  %cmp57 = icmp ne i32 %107, 0
  %conv58 = zext i1 %cmp57 to i32
  %108 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %MbaffFrameFlag59 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %108, i32 0, i32 90
  store i32 %conv58, i32* %MbaffFrameFlag59, align 4
  %109 = load %struct.storable_picture*, %struct.storable_picture** @enc_frame_picture, align 8
  %MbaffFrameFlag60 = getelementptr inbounds %struct.storable_picture, %struct.storable_picture* %109, i32 0, i32 24
  store i32 %conv58, i32* %MbaffFrameFlag60, align 4
  %110 = load %struct.storable_picture*, %struct.storable_picture** @enc_frame_picture, align 8
  store %struct.storable_picture* %110, %struct.storable_picture** @enc_picture, align 8
  call void @copy_params()
  br label %if.end

if.end:                                           ; preds = %if.else.35, %if.then.9
  br label %if.end.61

if.end.61:                                        ; preds = %if.end, %if.then
  %111 = load %struct.StatParameters*, %struct.StatParameters** @stats, align 8
  %em_prev_bits_frm = getelementptr inbounds %struct.StatParameters, %struct.StatParameters* %111, i32 0, i32 29
  store i32 0, i32* %em_prev_bits_frm, align 4
  %112 = load %struct.StatParameters*, %struct.StatParameters** @stats, align 8
  %em_prev_bits_frm62 = getelementptr inbounds %struct.StatParameters, %struct.StatParameters* %112, i32 0, i32 29
  %113 = load %struct.StatParameters*, %struct.StatParameters** @stats, align 8
  %em_prev_bits = getelementptr inbounds %struct.StatParameters, %struct.StatParameters* %113, i32 0, i32 31
  store i32* %em_prev_bits_frm62, i32** %em_prev_bits, align 8
  %114 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %fld_flag = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %114, i32 0, i32 57
  store i32 0, i32* %fld_flag, align 4
  %115 = load %struct.Picture*, %struct.Picture** %frame.addr, align 8
  call void @code_a_picture(%struct.Picture* %115)
  %116 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %currentSlice = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %116, i32 0, i32 50
  %117 = load %struct.Slice*, %struct.Slice** %currentSlice, align 8
  %partArr = getelementptr inbounds %struct.Slice, %struct.Slice* %117, i32 0, i32 6
  %118 = load %struct.datapartition*, %struct.datapartition** %partArr, align 8
  %arrayidx = getelementptr inbounds %struct.datapartition, %struct.datapartition* %118, i64 0
  %bitstream = getelementptr inbounds %struct.datapartition, %struct.datapartition* %arrayidx, i32 0, i32 0
  %119 = load %struct.Bitstream*, %struct.Bitstream** %bitstream, align 8
  %byte_pos = getelementptr inbounds %struct.Bitstream, %struct.Bitstream* %119, i32 0, i32 0
  %120 = load i32, i32* %byte_pos, align 4
  %mul = mul nsw i32 8, %120
  %121 = load %struct.Picture*, %struct.Picture** %frame.addr, align 8
  %bits_per_picture = getelementptr inbounds %struct.Picture, %struct.Picture* %121, i32 0, i32 3
  store i32 %mul, i32* %bits_per_picture, align 4
  %122 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %structure63 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %122, i32 0, i32 7
  %123 = load i32, i32* %structure63, align 4
  %cmp64 = icmp eq i32 %123, 0
  br i1 %cmp64, label %if.then.66, label %if.end.67

if.then.66:                                       ; preds = %if.end.61
  %124 = load %struct.SNRParameters*, %struct.SNRParameters** @snr, align 8
  %125 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  call void @find_distortion()
  %126 = load %struct.SNRParameters*, %struct.SNRParameters** @snr, align 8
  %snr_y = getelementptr inbounds %struct.SNRParameters, %struct.SNRParameters* %126, i32 0, i32 0
  %127 = load float, float* %snr_y, align 4
  %128 = load %struct.Picture*, %struct.Picture** %frame.addr, align 8
  %distortion_y = getelementptr inbounds %struct.Picture, %struct.Picture* %128, i32 0, i32 4
  store float %127, float* %distortion_y, align 4
  %129 = load %struct.SNRParameters*, %struct.SNRParameters** @snr, align 8
  %snr_u = getelementptr inbounds %struct.SNRParameters, %struct.SNRParameters* %129, i32 0, i32 1
  %130 = load float, float* %snr_u, align 4
  %131 = load %struct.Picture*, %struct.Picture** %frame.addr, align 8
  %distortion_u = getelementptr inbounds %struct.Picture, %struct.Picture* %131, i32 0, i32 5
  store float %130, float* %distortion_u, align 4
  %132 = load %struct.SNRParameters*, %struct.SNRParameters** @snr, align 8
  %snr_v = getelementptr inbounds %struct.SNRParameters, %struct.SNRParameters* %132, i32 0, i32 2
  %133 = load float, float* %snr_v, align 4
  %134 = load %struct.Picture*, %struct.Picture** %frame.addr, align 8
  %distortion_v = getelementptr inbounds %struct.Picture, %struct.Picture* %134, i32 0, i32 6
  store float %133, float* %distortion_v, align 4
  br label %if.end.67

if.end.67:                                        ; preds = %if.then.66, %if.end.61
  ret void
}

; Function Attrs: nounwind uwtable
define internal i32 @picture_structure_decision(%struct.Picture* %frame, %struct.Picture* %top, %struct.Picture* %bot) #0 {
entry:
  %frame.addr = alloca %struct.Picture*, align 8
  %top.addr = alloca %struct.Picture*, align 8
  %bot.addr = alloca %struct.Picture*, align 8
  %lambda_picture = alloca double, align 8
  %bframe = alloca i32, align 4
  %snr_frame = alloca float, align 4
  %snr_field = alloca float, align 4
  %bit_frame = alloca i32, align 4
  %bit_field = alloca i32, align 4
  store %struct.Picture* %frame, %struct.Picture** %frame.addr, align 8
  store %struct.Picture* %top, %struct.Picture** %top.addr, align 8
  store %struct.Picture* %bot, %struct.Picture** %bot.addr, align 8
  %0 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %type = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %0, i32 0, i32 6
  %1 = load i32, i32* %type, align 4
  %cmp = icmp eq i32 %1, 1
  %conv = zext i1 %cmp to i32
  store i32 %conv, i32* %bframe, align 4
  %2 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %bitdepth_lambda_scale = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %2, i32 0, i32 153
  %3 = load i32, i32* %bitdepth_lambda_scale, align 4
  %conv1 = sitofp i32 %3 to double
  %4 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %qp = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %4, i32 0, i32 10
  %5 = load i32, i32* %qp, align 4
  %sub = sub nsw i32 %5, 12
  %conv2 = sitofp i32 %sub to double
  %div = fdiv double %conv2, 3.000000e+00
  %add = fadd double %conv1, %div
  %call = call double @pow(double 2.000000e+00, double %add) #3
  %mul = fmul double 8.500000e-01, %call
  %6 = load i32, i32* %bframe, align 4
  %tobool = icmp ne i32 %6, 0
  %cond = select i1 %tobool, i32 4, i32 1
  %conv3 = sitofp i32 %cond to double
  %mul4 = fmul double %mul, %conv3
  store double %mul4, double* %lambda_picture, align 8
  %7 = load %struct.Picture*, %struct.Picture** %frame.addr, align 8
  %distortion_y = getelementptr inbounds %struct.Picture, %struct.Picture* %7, i32 0, i32 4
  %8 = load float, float* %distortion_y, align 4
  %9 = load %struct.Picture*, %struct.Picture** %frame.addr, align 8
  %distortion_u = getelementptr inbounds %struct.Picture, %struct.Picture* %9, i32 0, i32 5
  %10 = load float, float* %distortion_u, align 4
  %add5 = fadd float %8, %10
  %11 = load %struct.Picture*, %struct.Picture** %frame.addr, align 8
  %distortion_v = getelementptr inbounds %struct.Picture, %struct.Picture* %11, i32 0, i32 6
  %12 = load float, float* %distortion_v, align 4
  %add6 = fadd float %add5, %12
  store float %add6, float* %snr_frame, align 4
  %13 = load %struct.Picture*, %struct.Picture** %top.addr, align 8
  %distortion_y7 = getelementptr inbounds %struct.Picture, %struct.Picture* %13, i32 0, i32 4
  %14 = load float, float* %distortion_y7, align 4
  %15 = load %struct.Picture*, %struct.Picture** %top.addr, align 8
  %distortion_u8 = getelementptr inbounds %struct.Picture, %struct.Picture* %15, i32 0, i32 5
  %16 = load float, float* %distortion_u8, align 4
  %add9 = fadd float %14, %16
  %17 = load %struct.Picture*, %struct.Picture** %top.addr, align 8
  %distortion_v10 = getelementptr inbounds %struct.Picture, %struct.Picture* %17, i32 0, i32 6
  %18 = load float, float* %distortion_v10, align 4
  %add11 = fadd float %add9, %18
  store float %add11, float* %snr_field, align 4
  %19 = load %struct.Picture*, %struct.Picture** %top.addr, align 8
  %bits_per_picture = getelementptr inbounds %struct.Picture, %struct.Picture* %19, i32 0, i32 3
  %20 = load i32, i32* %bits_per_picture, align 4
  %21 = load %struct.Picture*, %struct.Picture** %bot.addr, align 8
  %bits_per_picture12 = getelementptr inbounds %struct.Picture, %struct.Picture* %21, i32 0, i32 3
  %22 = load i32, i32* %bits_per_picture12, align 4
  %add13 = add nsw i32 %20, %22
  store i32 %add13, i32* %bit_field, align 4
  %23 = load %struct.Picture*, %struct.Picture** %frame.addr, align 8
  %bits_per_picture14 = getelementptr inbounds %struct.Picture, %struct.Picture* %23, i32 0, i32 3
  %24 = load i32, i32* %bits_per_picture14, align 4
  store i32 %24, i32* %bit_frame, align 4
  %25 = load float, float* %snr_frame, align 4
  %26 = load float, float* %snr_field, align 4
  %27 = load i32, i32* %bit_field, align 4
  %28 = load i32, i32* %bit_frame, align 4
  %29 = load double, double* %lambda_picture, align 8
  %call15 = call i32 @decide_fld_frame(float %25, float %26, i32 %27, i32 %28, double %29)
  ret i32 %call15
}

declare void @update_field_frame_contexts(i32) #1

; Function Attrs: nounwind uwtable
define internal void @field_mode_buffer(i32 %bit_field, float %snr_field_y, float %snr_field_u, float %snr_field_v) #0 {
entry:
  %bit_field.addr = alloca i32, align 4
  %snr_field_y.addr = alloca float, align 4
  %snr_field_u.addr = alloca float, align 4
  %snr_field_v.addr = alloca float, align 4
  store i32 %bit_field, i32* %bit_field.addr, align 4
  store float %snr_field_y, float* %snr_field_y.addr, align 4
  store float %snr_field_u, float* %snr_field_u.addr, align 4
  store float %snr_field_v, float* %snr_field_v.addr, align 4
  call void @put_buffer_frame()
  %0 = load float, float* %snr_field_y.addr, align 4
  %1 = load %struct.SNRParameters*, %struct.SNRParameters** @snr, align 8
  %snr_y = getelementptr inbounds %struct.SNRParameters, %struct.SNRParameters* %1, i32 0, i32 0
  store float %0, float* %snr_y, align 4
  %2 = load float, float* %snr_field_u.addr, align 4
  %3 = load %struct.SNRParameters*, %struct.SNRParameters** @snr, align 8
  %snr_u = getelementptr inbounds %struct.SNRParameters, %struct.SNRParameters* %3, i32 0, i32 1
  store float %2, float* %snr_u, align 4
  %4 = load float, float* %snr_field_v.addr, align 4
  %5 = load %struct.SNRParameters*, %struct.SNRParameters** @snr, align 8
  %snr_v = getelementptr inbounds %struct.SNRParameters, %struct.SNRParameters* %5, i32 0, i32 2
  store float %4, float* %snr_v, align 4
  ret void
}

; Function Attrs: nounwind uwtable
define internal i32 @writeout_picture(%struct.Picture* %pic) #0 {
entry:
  %pic.addr = alloca %struct.Picture*, align 8
  %currStream = alloca %struct.Bitstream*, align 8
  %partition = alloca i32, align 4
  %slice = alloca i32, align 4
  %currSlice = alloca %struct.Slice*, align 8
  store %struct.Picture* %pic, %struct.Picture** %pic.addr, align 8
  %0 = load %struct.Picture*, %struct.Picture** %pic.addr, align 8
  %1 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %currentPicture = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %1, i32 0, i32 49
  store %struct.Picture* %0, %struct.Picture** %currentPicture, align 8
  store i32 0, i32* %slice, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc.10, %entry
  %2 = load i32, i32* %slice, align 4
  %3 = load %struct.Picture*, %struct.Picture** %pic.addr, align 8
  %no_slices = getelementptr inbounds %struct.Picture, %struct.Picture* %3, i32 0, i32 0
  %4 = load i32, i32* %no_slices, align 4
  %cmp = icmp slt i32 %2, %4
  br i1 %cmp, label %for.body, label %for.end.12

for.body:                                         ; preds = %for.cond
  %5 = load i32, i32* %slice, align 4
  %idxprom = sext i32 %5 to i64
  %6 = load %struct.Picture*, %struct.Picture** %pic.addr, align 8
  %slices = getelementptr inbounds %struct.Picture, %struct.Picture* %6, i32 0, i32 2
  %arrayidx = getelementptr inbounds [100 x %struct.Slice*], [100 x %struct.Slice*]* %slices, i32 0, i64 %idxprom
  %7 = load %struct.Slice*, %struct.Slice** %arrayidx, align 8
  store %struct.Slice* %7, %struct.Slice** %currSlice, align 8
  store i32 0, i32* %partition, align 4
  br label %for.cond.1

for.cond.1:                                       ; preds = %for.inc, %for.body
  %8 = load i32, i32* %partition, align 4
  %9 = load %struct.Slice*, %struct.Slice** %currSlice, align 8
  %max_part_nr = getelementptr inbounds %struct.Slice, %struct.Slice* %9, i32 0, i32 4
  %10 = load i32, i32* %max_part_nr, align 4
  %cmp2 = icmp slt i32 %8, %10
  br i1 %cmp2, label %for.body.3, label %for.end

for.body.3:                                       ; preds = %for.cond.1
  %11 = load i32, i32* %partition, align 4
  %idxprom4 = sext i32 %11 to i64
  %12 = load %struct.Slice*, %struct.Slice** %currSlice, align 8
  %partArr = getelementptr inbounds %struct.Slice, %struct.Slice* %12, i32 0, i32 6
  %13 = load %struct.datapartition*, %struct.datapartition** %partArr, align 8
  %arrayidx5 = getelementptr inbounds %struct.datapartition, %struct.datapartition* %13, i64 %idxprom4
  %bitstream = getelementptr inbounds %struct.datapartition, %struct.datapartition* %arrayidx5, i32 0, i32 0
  %14 = load %struct.Bitstream*, %struct.Bitstream** %bitstream, align 8
  store %struct.Bitstream* %14, %struct.Bitstream** %currStream, align 8
  %15 = load i32, i32* %partition, align 4
  %idxprom6 = sext i32 %15 to i64
  %16 = load %struct.Slice*, %struct.Slice** %currSlice, align 8
  %partArr7 = getelementptr inbounds %struct.Slice, %struct.Slice* %16, i32 0, i32 6
  %17 = load %struct.datapartition*, %struct.datapartition** %partArr7, align 8
  %arrayidx8 = getelementptr inbounds %struct.datapartition, %struct.datapartition* %17, i64 %idxprom6
  %bitstream9 = getelementptr inbounds %struct.datapartition, %struct.datapartition* %arrayidx8, i32 0, i32 0
  %18 = load %struct.Bitstream*, %struct.Bitstream** %bitstream9, align 8
  %19 = load i32, i32* %partition, align 4
  call void @writeUnit(%struct.Bitstream* %18, i32 %19)
  br label %for.inc

for.inc:                                          ; preds = %for.body.3
  %20 = load i32, i32* %partition, align 4
  %inc = add nsw i32 %20, 1
  store i32 %inc, i32* %partition, align 4
  br label %for.cond.1

for.end:                                          ; preds = %for.cond.1
  br label %for.inc.10

for.inc.10:                                       ; preds = %for.end
  %21 = load i32, i32* %slice, align 4
  %inc11 = add nsw i32 %21, 1
  store i32 %inc11, i32* %slice, align 4
  br label %for.cond

for.end.12:                                       ; preds = %for.cond
  ret i32 0
}

; Function Attrs: nounwind uwtable
define internal void @frame_mode_buffer(i32 %bit_frame, float %snr_frame_y, float %snr_frame_u, float %snr_frame_v) #0 {
entry:
  %bit_frame.addr = alloca i32, align 4
  %snr_frame_y.addr = alloca float, align 4
  %snr_frame_u.addr = alloca float, align 4
  %snr_frame_v.addr = alloca float, align 4
  store i32 %bit_frame, i32* %bit_frame.addr, align 4
  store float %snr_frame_y, float* %snr_frame_y.addr, align 4
  store float %snr_frame_u, float* %snr_frame_u.addr, align 4
  store float %snr_frame_v, float* %snr_frame_v.addr, align 4
  call void @put_buffer_frame()
  %0 = load %struct.InputParameters*, %struct.InputParameters** @input, align 8
  %PicInterlace = getelementptr inbounds %struct.InputParameters, %struct.InputParameters* %0, i32 0, i32 91
  %1 = load i32, i32* %PicInterlace, align 4
  %cmp = icmp ne i32 %1, 0
  br i1 %cmp, label %if.then, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %entry
  %2 = load %struct.InputParameters*, %struct.InputParameters** @input, align 8
  %MbInterlace = getelementptr inbounds %struct.InputParameters, %struct.InputParameters* %2, i32 0, i32 92
  %3 = load i32, i32* %MbInterlace, align 4
  %cmp1 = icmp ne i32 %3, 0
  br i1 %cmp1, label %if.then, label %if.end

if.then:                                          ; preds = %lor.lhs.false, %entry
  %4 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %height = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %4, i32 0, i32 15
  %5 = load i32, i32* %height, align 4
  %div = sdiv i32 %5, 2
  %6 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %height2 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %6, i32 0, i32 15
  store i32 %div, i32* %height2, align 4
  %7 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %height_cr = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %7, i32 0, i32 16
  %8 = load i32, i32* %height_cr, align 4
  %div3 = sdiv i32 %8, 2
  %9 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %height_cr4 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %9, i32 0, i32 16
  store i32 %div3, i32* %height_cr4, align 4
  %10 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %number = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %10, i32 0, i32 0
  %11 = load i32, i32* %number, align 4
  %mul = mul nsw i32 %11, 2
  store i32 %mul, i32* %number, align 4
  call void @put_buffer_top()
  %12 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %number5 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %12, i32 0, i32 0
  %13 = load i32, i32* %number5, align 4
  %inc = add nsw i32 %13, 1
  store i32 %inc, i32* %number5, align 4
  call void @put_buffer_bot()
  %14 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %number6 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %14, i32 0, i32 0
  %15 = load i32, i32* %number6, align 4
  %div7 = sdiv i32 %15, 2
  store i32 %div7, i32* %number6, align 4
  %16 = load %struct.InputParameters*, %struct.InputParameters** @input, align 8
  %img_height = getelementptr inbounds %struct.InputParameters, %struct.InputParameters* %16, i32 0, i32 17
  %17 = load i32, i32* %img_height, align 4
  %18 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %auto_crop_bottom = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %18, i32 0, i32 166
  %19 = load i32, i32* %auto_crop_bottom, align 4
  %add = add nsw i32 %17, %19
  %20 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %height8 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %20, i32 0, i32 15
  store i32 %add, i32* %height8, align 4
  %21 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %height_cr_frame = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %21, i32 0, i32 17
  %22 = load i32, i32* %height_cr_frame, align 4
  %23 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %height_cr9 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %23, i32 0, i32 16
  store i32 %22, i32* %height_cr9, align 4
  %24 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %width = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %24, i32 0, i32 13
  %25 = load i32, i32* %width, align 4
  %26 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %height10 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %26, i32 0, i32 15
  %27 = load i32, i32* %height10, align 4
  %mul11 = mul nsw i32 %25, %27
  %div12 = sdiv i32 %mul11, 256
  %28 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %total_number_mb = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %28, i32 0, i32 4
  store i32 %div12, i32* %total_number_mb, align 4
  %29 = load float, float* %snr_frame_y.addr, align 4
  %30 = load %struct.SNRParameters*, %struct.SNRParameters** @snr, align 8
  %snr_y = getelementptr inbounds %struct.SNRParameters, %struct.SNRParameters* %30, i32 0, i32 0
  store float %29, float* %snr_y, align 4
  %31 = load float, float* %snr_frame_u.addr, align 4
  %32 = load %struct.SNRParameters*, %struct.SNRParameters** @snr, align 8
  %snr_u = getelementptr inbounds %struct.SNRParameters, %struct.SNRParameters* %32, i32 0, i32 1
  store float %31, float* %snr_u, align 4
  %33 = load float, float* %snr_frame_v.addr, align 4
  %34 = load %struct.SNRParameters*, %struct.SNRParameters** @snr, align 8
  %snr_v = getelementptr inbounds %struct.SNRParameters, %struct.SNRParameters* %34, i32 0, i32 2
  store float %33, float* %snr_v, align 4
  call void @put_buffer_frame()
  br label %if.end

if.end:                                           ; preds = %if.then, %lor.lhs.false
  ret void
}

declare void @free_slice_list(%struct.Picture*) #1

declare void @rc_update_pict_frame(i32) #1

declare void @store_picture_in_dpb(%struct.storable_picture*) #1

declare void @free_storable_picture(%struct.storable_picture*) #1

declare void @replace_top_pic_with_frame(%struct.storable_picture*) #1

declare void @error(i8*, i32) #1

; Function Attrs: nounwind uwtable
define internal void @ReportNALNonVLCBits(i32 %tmp_time, i32 %me_time) #0 {
entry:
  %tmp_time.addr = alloca i32, align 4
  %me_time.addr = alloca i32, align 4
  store i32 %tmp_time, i32* %tmp_time.addr, align 4
  store i32 %me_time, i32* %me_time.addr, align 4
  %0 = load i32, i32* @frame_no, align 4
  %1 = load %struct.StatParameters*, %struct.StatParameters** @stats, align 8
  %bit_ctr_parametersets_n = getelementptr inbounds %struct.StatParameters, %struct.StatParameters* %1, i32 0, i32 33
  %2 = load i32, i32* %bit_ctr_parametersets_n, align 4
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.5, i32 0, i32 0), i32 %0, i32 %2)
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @ReportFirstframe(i32 %tmp_time, i32 %me_time) #0 {
entry:
  %tmp_time.addr = alloca i32, align 4
  %me_time.addr = alloca i32, align 4
  %bits = alloca i32, align 4
  store i32 %tmp_time, i32* %tmp_time.addr, align 4
  store i32 %me_time, i32* %me_time.addr, align 4
  %0 = load i32, i32* @frame_no, align 4
  %1 = load %struct.StatParameters*, %struct.StatParameters** @stats, align 8
  %bit_ctr = getelementptr inbounds %struct.StatParameters, %struct.StatParameters* %1, i32 0, i32 4
  %2 = load i32, i32* %bit_ctr, align 4
  %3 = load %struct.StatParameters*, %struct.StatParameters** @stats, align 8
  %bit_ctr_n = getelementptr inbounds %struct.StatParameters, %struct.StatParameters* %3, i32 0, i32 5
  %4 = load i32, i32* %bit_ctr_n, align 4
  %sub = sub nsw i32 %2, %4
  %5 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %qp = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %5, i32 0, i32 10
  %6 = load i32, i32* %qp, align 4
  %7 = load %struct.SNRParameters*, %struct.SNRParameters** @snr, align 8
  %snr_y = getelementptr inbounds %struct.SNRParameters, %struct.SNRParameters* %7, i32 0, i32 0
  %8 = load float, float* %snr_y, align 4
  %conv = fpext float %8 to double
  %9 = load %struct.SNRParameters*, %struct.SNRParameters** @snr, align 8
  %snr_u = getelementptr inbounds %struct.SNRParameters, %struct.SNRParameters* %9, i32 0, i32 1
  %10 = load float, float* %snr_u, align 4
  %conv1 = fpext float %10 to double
  %11 = load %struct.SNRParameters*, %struct.SNRParameters** @snr, align 8
  %snr_v = getelementptr inbounds %struct.SNRParameters, %struct.SNRParameters* %11, i32 0, i32 2
  %12 = load float, float* %snr_v, align 4
  %conv2 = fpext float %12 to double
  %13 = load i32, i32* %tmp_time.addr, align 4
  %14 = load i32, i32* %me_time.addr, align 4
  %15 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %fld_flag = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %15, i32 0, i32 57
  %16 = load i32, i32* %fld_flag, align 4
  %tobool = icmp ne i32 %16, 0
  %cond = select i1 %tobool, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.7, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.8, i32 0, i32 0)
  %17 = load i32, i32* @intras, align 4
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([65 x i8], [65 x i8]* @.str.6, i32 0, i32 0), i32 %0, i32 %sub, i32 0, i32 %6, double %conv, double %conv1, double %conv2, i32 %13, i32 %14, i8* %cond, i32 %17)
  %18 = load %struct.InputParameters*, %struct.InputParameters** @input, align 8
  %RCEnable = getelementptr inbounds %struct.InputParameters, %struct.InputParameters* %18, i32 0, i32 127
  %19 = load i32, i32* %RCEnable, align 4
  %tobool3 = icmp ne i32 %19, 0
  br i1 %tobool3, label %if.then, label %if.end.13

if.then:                                          ; preds = %entry
  %20 = load %struct.InputParameters*, %struct.InputParameters** @input, align 8
  %PicInterlace = getelementptr inbounds %struct.InputParameters, %struct.InputParameters* %20, i32 0, i32 91
  %21 = load i32, i32* %PicInterlace, align 4
  %tobool4 = icmp ne i32 %21, 0
  br i1 %tobool4, label %if.else, label %land.lhs.true

land.lhs.true:                                    ; preds = %if.then
  %22 = load %struct.InputParameters*, %struct.InputParameters** @input, align 8
  %MbInterlace = getelementptr inbounds %struct.InputParameters, %struct.InputParameters* %22, i32 0, i32 92
  %23 = load i32, i32* %MbInterlace, align 4
  %tobool5 = icmp ne i32 %23, 0
  br i1 %tobool5, label %if.else, label %if.then.6

if.then.6:                                        ; preds = %land.lhs.true
  %24 = load %struct.StatParameters*, %struct.StatParameters** @stats, align 8
  %bit_ctr7 = getelementptr inbounds %struct.StatParameters, %struct.StatParameters* %24, i32 0, i32 4
  %25 = load i32, i32* %bit_ctr7, align 4
  %26 = load %struct.StatParameters*, %struct.StatParameters** @stats, align 8
  %bit_ctr_n8 = getelementptr inbounds %struct.StatParameters, %struct.StatParameters* %26, i32 0, i32 5
  %27 = load i32, i32* %bit_ctr_n8, align 4
  %sub9 = sub nsw i32 %25, %27
  store i32 %sub9, i32* %bits, align 4
  br label %if.end

if.else:                                          ; preds = %land.lhs.true, %if.then
  %28 = load %struct.StatParameters*, %struct.StatParameters** @stats, align 8
  %bit_ctr10 = getelementptr inbounds %struct.StatParameters, %struct.StatParameters* %28, i32 0, i32 4
  %29 = load i32, i32* %bit_ctr10, align 4
  %30 = load i32, i32* @Iprev_bits, align 4
  %sub11 = sub nsw i32 %29, %30
  store i32 %sub11, i32* %bits, align 4
  %31 = load %struct.StatParameters*, %struct.StatParameters** @stats, align 8
  %bit_ctr12 = getelementptr inbounds %struct.StatParameters, %struct.StatParameters* %31, i32 0, i32 4
  %32 = load i32, i32* %bit_ctr12, align 4
  store i32 %32, i32* @Iprev_bits, align 4
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then.6
  br label %if.end.13

if.end.13:                                        ; preds = %if.end, %entry
  %33 = load %struct.StatParameters*, %struct.StatParameters** @stats, align 8
  %bit_ctr14 = getelementptr inbounds %struct.StatParameters, %struct.StatParameters* %33, i32 0, i32 4
  %34 = load i32, i32* %bit_ctr14, align 4
  %35 = load %struct.StatParameters*, %struct.StatParameters** @stats, align 8
  %bit_ctr_I = getelementptr inbounds %struct.StatParameters, %struct.StatParameters* %35, i32 0, i32 14
  store i32 %34, i32* %bit_ctr_I, align 4
  %36 = load %struct.StatParameters*, %struct.StatParameters** @stats, align 8
  %bit_ctr15 = getelementptr inbounds %struct.StatParameters, %struct.StatParameters* %36, i32 0, i32 4
  store i32 0, i32* %bit_ctr15, align 4
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @ReportIntra(i32 %tmp_time, i32 %me_time) #0 {
entry:
  %tmp_time.addr = alloca i32, align 4
  %me_time.addr = alloca i32, align 4
  store i32 %tmp_time, i32* %tmp_time.addr, align 4
  store i32 %me_time, i32* %me_time.addr, align 4
  %0 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %currentPicture = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %0, i32 0, i32 49
  %1 = load %struct.Picture*, %struct.Picture** %currentPicture, align 8
  %idr_flag = getelementptr inbounds %struct.Picture, %struct.Picture* %1, i32 0, i32 1
  %2 = load i32, i32* %idr_flag, align 4
  %cmp = icmp eq i32 %2, 1
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %3 = load i32, i32* @frame_no, align 4
  %4 = load %struct.StatParameters*, %struct.StatParameters** @stats, align 8
  %bit_ctr = getelementptr inbounds %struct.StatParameters, %struct.StatParameters* %4, i32 0, i32 4
  %5 = load i32, i32* %bit_ctr, align 4
  %6 = load %struct.StatParameters*, %struct.StatParameters** @stats, align 8
  %bit_ctr_n = getelementptr inbounds %struct.StatParameters, %struct.StatParameters* %6, i32 0, i32 5
  %7 = load i32, i32* %bit_ctr_n, align 4
  %sub = sub nsw i32 %5, %7
  %8 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %qp = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %8, i32 0, i32 10
  %9 = load i32, i32* %qp, align 4
  %10 = load %struct.SNRParameters*, %struct.SNRParameters** @snr, align 8
  %snr_y = getelementptr inbounds %struct.SNRParameters, %struct.SNRParameters* %10, i32 0, i32 0
  %11 = load float, float* %snr_y, align 4
  %conv = fpext float %11 to double
  %12 = load %struct.SNRParameters*, %struct.SNRParameters** @snr, align 8
  %snr_u = getelementptr inbounds %struct.SNRParameters, %struct.SNRParameters* %12, i32 0, i32 1
  %13 = load float, float* %snr_u, align 4
  %conv1 = fpext float %13 to double
  %14 = load %struct.SNRParameters*, %struct.SNRParameters** @snr, align 8
  %snr_v = getelementptr inbounds %struct.SNRParameters, %struct.SNRParameters* %14, i32 0, i32 2
  %15 = load float, float* %snr_v, align 4
  %conv2 = fpext float %15 to double
  %16 = load i32, i32* %tmp_time.addr, align 4
  %17 = load i32, i32* %me_time.addr, align 4
  %18 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %fld_flag = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %18, i32 0, i32 57
  %19 = load i32, i32* %fld_flag, align 4
  %tobool = icmp ne i32 %19, 0
  %cond = select i1 %tobool, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.7, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.8, i32 0, i32 0)
  %20 = load i32, i32* @intras, align 4
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([65 x i8], [65 x i8]* @.str.6, i32 0, i32 0), i32 %3, i32 %sub, i32 0, i32 %9, double %conv, double %conv1, double %conv2, i32 %16, i32 %17, i8* %cond, i32 %20)
  br label %if.end

if.else:                                          ; preds = %entry
  %21 = load i32, i32* @frame_no, align 4
  %22 = load %struct.StatParameters*, %struct.StatParameters** @stats, align 8
  %bit_ctr3 = getelementptr inbounds %struct.StatParameters, %struct.StatParameters* %22, i32 0, i32 4
  %23 = load i32, i32* %bit_ctr3, align 4
  %24 = load %struct.StatParameters*, %struct.StatParameters** @stats, align 8
  %bit_ctr_n4 = getelementptr inbounds %struct.StatParameters, %struct.StatParameters* %24, i32 0, i32 5
  %25 = load i32, i32* %bit_ctr_n4, align 4
  %sub5 = sub nsw i32 %23, %25
  %26 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %qp6 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %26, i32 0, i32 10
  %27 = load i32, i32* %qp6, align 4
  %28 = load %struct.SNRParameters*, %struct.SNRParameters** @snr, align 8
  %snr_y7 = getelementptr inbounds %struct.SNRParameters, %struct.SNRParameters* %28, i32 0, i32 0
  %29 = load float, float* %snr_y7, align 4
  %conv8 = fpext float %29 to double
  %30 = load %struct.SNRParameters*, %struct.SNRParameters** @snr, align 8
  %snr_u9 = getelementptr inbounds %struct.SNRParameters, %struct.SNRParameters* %30, i32 0, i32 1
  %31 = load float, float* %snr_u9, align 4
  %conv10 = fpext float %31 to double
  %32 = load %struct.SNRParameters*, %struct.SNRParameters** @snr, align 8
  %snr_v11 = getelementptr inbounds %struct.SNRParameters, %struct.SNRParameters* %32, i32 0, i32 2
  %33 = load float, float* %snr_v11, align 4
  %conv12 = fpext float %33 to double
  %34 = load i32, i32* %tmp_time.addr, align 4
  %35 = load i32, i32* %me_time.addr, align 4
  %36 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %fld_flag13 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %36, i32 0, i32 57
  %37 = load i32, i32* %fld_flag13, align 4
  %tobool14 = icmp ne i32 %37, 0
  %cond15 = select i1 %tobool14, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.7, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.8, i32 0, i32 0)
  %38 = load i32, i32* @intras, align 4
  %call16 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([65 x i8], [65 x i8]* @.str.9, i32 0, i32 0), i32 %21, i32 %sub5, i32 0, i32 %27, double %conv8, double %conv10, double %conv12, i32 %34, i32 %35, i8* %cond15, i32 %38)
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @ReportSP(i32 %tmp_time, i32 %me_time) #0 {
entry:
  %tmp_time.addr = alloca i32, align 4
  %me_time.addr = alloca i32, align 4
  store i32 %tmp_time, i32* %tmp_time.addr, align 4
  store i32 %me_time, i32* %me_time.addr, align 4
  %0 = load i32, i32* @frame_no, align 4
  %1 = load %struct.StatParameters*, %struct.StatParameters** @stats, align 8
  %bit_ctr = getelementptr inbounds %struct.StatParameters, %struct.StatParameters* %1, i32 0, i32 4
  %2 = load i32, i32* %bit_ctr, align 4
  %3 = load %struct.StatParameters*, %struct.StatParameters** @stats, align 8
  %bit_ctr_n = getelementptr inbounds %struct.StatParameters, %struct.StatParameters* %3, i32 0, i32 5
  %4 = load i32, i32* %bit_ctr_n, align 4
  %sub = sub nsw i32 %2, %4
  %5 = load %struct.pic_parameter_set_rbsp_t*, %struct.pic_parameter_set_rbsp_t** @active_pps, align 8
  %weighted_pred_flag = getelementptr inbounds %struct.pic_parameter_set_rbsp_t, %struct.pic_parameter_set_rbsp_t* %5, i32 0, i32 19
  %6 = load i32, i32* %weighted_pred_flag, align 4
  %7 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %qp = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %7, i32 0, i32 10
  %8 = load i32, i32* %qp, align 4
  %9 = load %struct.SNRParameters*, %struct.SNRParameters** @snr, align 8
  %snr_y = getelementptr inbounds %struct.SNRParameters, %struct.SNRParameters* %9, i32 0, i32 0
  %10 = load float, float* %snr_y, align 4
  %conv = fpext float %10 to double
  %11 = load %struct.SNRParameters*, %struct.SNRParameters** @snr, align 8
  %snr_u = getelementptr inbounds %struct.SNRParameters, %struct.SNRParameters* %11, i32 0, i32 1
  %12 = load float, float* %snr_u, align 4
  %conv1 = fpext float %12 to double
  %13 = load %struct.SNRParameters*, %struct.SNRParameters** @snr, align 8
  %snr_v = getelementptr inbounds %struct.SNRParameters, %struct.SNRParameters* %13, i32 0, i32 2
  %14 = load float, float* %snr_v, align 4
  %conv2 = fpext float %14 to double
  %15 = load i32, i32* %tmp_time.addr, align 4
  %16 = load i32, i32* %me_time.addr, align 4
  %17 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %fld_flag = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %17, i32 0, i32 57
  %18 = load i32, i32* %fld_flag, align 4
  %tobool = icmp ne i32 %18, 0
  %cond = select i1 %tobool, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.7, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.8, i32 0, i32 0)
  %19 = load i32, i32* @intras, align 4
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([65 x i8], [65 x i8]* @.str.10, i32 0, i32 0), i32 %0, i32 %sub, i32 %6, i32 %8, double %conv, double %conv1, double %conv2, i32 %15, i32 %16, i8* %cond, i32 %19)
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @ReportRB(i32 %tmp_time, i32 %me_time) #0 {
entry:
  %tmp_time.addr = alloca i32, align 4
  %me_time.addr = alloca i32, align 4
  store i32 %tmp_time, i32* %tmp_time.addr, align 4
  store i32 %me_time, i32* %me_time.addr, align 4
  %0 = load i32, i32* @frame_no, align 4
  %1 = load %struct.StatParameters*, %struct.StatParameters** @stats, align 8
  %bit_ctr = getelementptr inbounds %struct.StatParameters, %struct.StatParameters* %1, i32 0, i32 4
  %2 = load i32, i32* %bit_ctr, align 4
  %3 = load %struct.StatParameters*, %struct.StatParameters** @stats, align 8
  %bit_ctr_n = getelementptr inbounds %struct.StatParameters, %struct.StatParameters* %3, i32 0, i32 5
  %4 = load i32, i32* %bit_ctr_n, align 4
  %sub = sub nsw i32 %2, %4
  %5 = load %struct.pic_parameter_set_rbsp_t*, %struct.pic_parameter_set_rbsp_t** @active_pps, align 8
  %weighted_bipred_idc = getelementptr inbounds %struct.pic_parameter_set_rbsp_t, %struct.pic_parameter_set_rbsp_t* %5, i32 0, i32 20
  %6 = load i32, i32* %weighted_bipred_idc, align 4
  %7 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %qp = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %7, i32 0, i32 10
  %8 = load i32, i32* %qp, align 4
  %9 = load %struct.SNRParameters*, %struct.SNRParameters** @snr, align 8
  %snr_y = getelementptr inbounds %struct.SNRParameters, %struct.SNRParameters* %9, i32 0, i32 0
  %10 = load float, float* %snr_y, align 4
  %conv = fpext float %10 to double
  %11 = load %struct.SNRParameters*, %struct.SNRParameters** @snr, align 8
  %snr_u = getelementptr inbounds %struct.SNRParameters, %struct.SNRParameters* %11, i32 0, i32 1
  %12 = load float, float* %snr_u, align 4
  %conv1 = fpext float %12 to double
  %13 = load %struct.SNRParameters*, %struct.SNRParameters** @snr, align 8
  %snr_v = getelementptr inbounds %struct.SNRParameters, %struct.SNRParameters* %13, i32 0, i32 2
  %14 = load float, float* %snr_v, align 4
  %conv2 = fpext float %14 to double
  %15 = load i32, i32* %tmp_time.addr, align 4
  %16 = load i32, i32* %me_time.addr, align 4
  %17 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %fld_flag = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %17, i32 0, i32 57
  %18 = load i32, i32* %fld_flag, align 4
  %tobool = icmp ne i32 %18, 0
  %cond = select i1 %tobool, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.7, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.8, i32 0, i32 0)
  %19 = load i32, i32* @intras, align 4
  %20 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %direct_spatial_mv_pred_flag = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %20, i32 0, i32 78
  %21 = load i32, i32* %direct_spatial_mv_pred_flag, align 4
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([69 x i8], [69 x i8]* @.str.11, i32 0, i32 0), i32 %0, i32 %sub, i32 %6, i32 %8, double %conv, double %conv1, double %conv2, i32 %15, i32 %16, i8* %cond, i32 %19, i32 %21)
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @ReportB(i32 %tmp_time, i32 %me_time) #0 {
entry:
  %tmp_time.addr = alloca i32, align 4
  %me_time.addr = alloca i32, align 4
  store i32 %tmp_time, i32* %tmp_time.addr, align 4
  store i32 %me_time, i32* %me_time.addr, align 4
  %0 = load i32, i32* @frame_no, align 4
  %1 = load %struct.StatParameters*, %struct.StatParameters** @stats, align 8
  %bit_ctr = getelementptr inbounds %struct.StatParameters, %struct.StatParameters* %1, i32 0, i32 4
  %2 = load i32, i32* %bit_ctr, align 4
  %3 = load %struct.StatParameters*, %struct.StatParameters** @stats, align 8
  %bit_ctr_n = getelementptr inbounds %struct.StatParameters, %struct.StatParameters* %3, i32 0, i32 5
  %4 = load i32, i32* %bit_ctr_n, align 4
  %sub = sub nsw i32 %2, %4
  %5 = load %struct.pic_parameter_set_rbsp_t*, %struct.pic_parameter_set_rbsp_t** @active_pps, align 8
  %weighted_bipred_idc = getelementptr inbounds %struct.pic_parameter_set_rbsp_t, %struct.pic_parameter_set_rbsp_t* %5, i32 0, i32 20
  %6 = load i32, i32* %weighted_bipred_idc, align 4
  %7 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %qp = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %7, i32 0, i32 10
  %8 = load i32, i32* %qp, align 4
  %9 = load %struct.SNRParameters*, %struct.SNRParameters** @snr, align 8
  %snr_y = getelementptr inbounds %struct.SNRParameters, %struct.SNRParameters* %9, i32 0, i32 0
  %10 = load float, float* %snr_y, align 4
  %conv = fpext float %10 to double
  %11 = load %struct.SNRParameters*, %struct.SNRParameters** @snr, align 8
  %snr_u = getelementptr inbounds %struct.SNRParameters, %struct.SNRParameters* %11, i32 0, i32 1
  %12 = load float, float* %snr_u, align 4
  %conv1 = fpext float %12 to double
  %13 = load %struct.SNRParameters*, %struct.SNRParameters** @snr, align 8
  %snr_v = getelementptr inbounds %struct.SNRParameters, %struct.SNRParameters* %13, i32 0, i32 2
  %14 = load float, float* %snr_v, align 4
  %conv2 = fpext float %14 to double
  %15 = load i32, i32* %tmp_time.addr, align 4
  %16 = load i32, i32* %me_time.addr, align 4
  %17 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %fld_flag = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %17, i32 0, i32 57
  %18 = load i32, i32* %fld_flag, align 4
  %tobool = icmp ne i32 %18, 0
  %cond = select i1 %tobool, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.7, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.8, i32 0, i32 0)
  %19 = load i32, i32* @intras, align 4
  %20 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %direct_spatial_mv_pred_flag = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %20, i32 0, i32 78
  %21 = load i32, i32* %direct_spatial_mv_pred_flag, align 4
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([69 x i8], [69 x i8]* @.str.12, i32 0, i32 0), i32 %0, i32 %sub, i32 %6, i32 %8, double %conv, double %conv1, double %conv2, i32 %15, i32 %16, i8* %cond, i32 %19, i32 %21)
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @ReportP(i32 %tmp_time, i32 %me_time) #0 {
entry:
  %tmp_time.addr = alloca i32, align 4
  %me_time.addr = alloca i32, align 4
  store i32 %tmp_time, i32* %tmp_time.addr, align 4
  store i32 %me_time, i32* %me_time.addr, align 4
  %0 = load i32, i32* @frame_no, align 4
  %1 = load %struct.StatParameters*, %struct.StatParameters** @stats, align 8
  %bit_ctr = getelementptr inbounds %struct.StatParameters, %struct.StatParameters* %1, i32 0, i32 4
  %2 = load i32, i32* %bit_ctr, align 4
  %3 = load %struct.StatParameters*, %struct.StatParameters** @stats, align 8
  %bit_ctr_n = getelementptr inbounds %struct.StatParameters, %struct.StatParameters* %3, i32 0, i32 5
  %4 = load i32, i32* %bit_ctr_n, align 4
  %sub = sub nsw i32 %2, %4
  %5 = load %struct.pic_parameter_set_rbsp_t*, %struct.pic_parameter_set_rbsp_t** @active_pps, align 8
  %weighted_pred_flag = getelementptr inbounds %struct.pic_parameter_set_rbsp_t, %struct.pic_parameter_set_rbsp_t* %5, i32 0, i32 19
  %6 = load i32, i32* %weighted_pred_flag, align 4
  %7 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %qp = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %7, i32 0, i32 10
  %8 = load i32, i32* %qp, align 4
  %9 = load %struct.SNRParameters*, %struct.SNRParameters** @snr, align 8
  %snr_y = getelementptr inbounds %struct.SNRParameters, %struct.SNRParameters* %9, i32 0, i32 0
  %10 = load float, float* %snr_y, align 4
  %conv = fpext float %10 to double
  %11 = load %struct.SNRParameters*, %struct.SNRParameters** @snr, align 8
  %snr_u = getelementptr inbounds %struct.SNRParameters, %struct.SNRParameters* %11, i32 0, i32 1
  %12 = load float, float* %snr_u, align 4
  %conv1 = fpext float %12 to double
  %13 = load %struct.SNRParameters*, %struct.SNRParameters** @snr, align 8
  %snr_v = getelementptr inbounds %struct.SNRParameters, %struct.SNRParameters* %13, i32 0, i32 2
  %14 = load float, float* %snr_v, align 4
  %conv2 = fpext float %14 to double
  %15 = load i32, i32* %tmp_time.addr, align 4
  %16 = load i32, i32* %me_time.addr, align 4
  %17 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %fld_flag = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %17, i32 0, i32 57
  %18 = load i32, i32* %fld_flag, align 4
  %tobool = icmp ne i32 %18, 0
  %cond = select i1 %tobool, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.7, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.8, i32 0, i32 0)
  %19 = load i32, i32* @intras, align 4
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([65 x i8], [65 x i8]* @.str.13, i32 0, i32 0), i32 %0, i32 %sub, i32 %6, i32 %8, double %conv, double %conv1, double %conv2, i32 %15, i32 %16, i8* %cond, i32 %19)
  ret void
}

declare void @rc_update_pict(i32) #1

declare void @updateRCModel(...) #1

; Function Attrs: nounwind uwtable
define void @copy_params() #0 {
entry:
  %0 = load %struct.seq_parameter_set_rbsp_t*, %struct.seq_parameter_set_rbsp_t** @active_sps, align 8
  %frame_mbs_only_flag = getelementptr inbounds %struct.seq_parameter_set_rbsp_t, %struct.seq_parameter_set_rbsp_t* %0, i32 0, i32 25
  %1 = load i32, i32* %frame_mbs_only_flag, align 4
  %2 = load %struct.storable_picture*, %struct.storable_picture** @enc_picture, align 8
  %frame_mbs_only_flag1 = getelementptr inbounds %struct.storable_picture, %struct.storable_picture* %2, i32 0, i32 42
  store i32 %1, i32* %frame_mbs_only_flag1, align 4
  %3 = load %struct.seq_parameter_set_rbsp_t*, %struct.seq_parameter_set_rbsp_t** @active_sps, align 8
  %frame_cropping_flag = getelementptr inbounds %struct.seq_parameter_set_rbsp_t, %struct.seq_parameter_set_rbsp_t* %3, i32 0, i32 28
  %4 = load i32, i32* %frame_cropping_flag, align 4
  %5 = load %struct.storable_picture*, %struct.storable_picture** @enc_picture, align 8
  %frame_cropping_flag2 = getelementptr inbounds %struct.storable_picture, %struct.storable_picture* %5, i32 0, i32 43
  store i32 %4, i32* %frame_cropping_flag2, align 4
  %6 = load %struct.seq_parameter_set_rbsp_t*, %struct.seq_parameter_set_rbsp_t** @active_sps, align 8
  %chroma_format_idc = getelementptr inbounds %struct.seq_parameter_set_rbsp_t, %struct.seq_parameter_set_rbsp_t* %6, i32 0, i32 8
  %7 = load i32, i32* %chroma_format_idc, align 4
  %8 = load %struct.storable_picture*, %struct.storable_picture** @enc_picture, align 8
  %chroma_format_idc3 = getelementptr inbounds %struct.storable_picture, %struct.storable_picture* %8, i32 0, i32 41
  store i32 %7, i32* %chroma_format_idc3, align 4
  %9 = load %struct.seq_parameter_set_rbsp_t*, %struct.seq_parameter_set_rbsp_t** @active_sps, align 8
  %frame_cropping_flag4 = getelementptr inbounds %struct.seq_parameter_set_rbsp_t, %struct.seq_parameter_set_rbsp_t* %9, i32 0, i32 28
  %10 = load i32, i32* %frame_cropping_flag4, align 4
  %tobool = icmp ne i32 %10, 0
  br i1 %tobool, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %11 = load %struct.seq_parameter_set_rbsp_t*, %struct.seq_parameter_set_rbsp_t** @active_sps, align 8
  %frame_cropping_rect_left_offset = getelementptr inbounds %struct.seq_parameter_set_rbsp_t, %struct.seq_parameter_set_rbsp_t* %11, i32 0, i32 29
  %12 = load i32, i32* %frame_cropping_rect_left_offset, align 4
  %13 = load %struct.storable_picture*, %struct.storable_picture** @enc_picture, align 8
  %frame_cropping_rect_left_offset5 = getelementptr inbounds %struct.storable_picture, %struct.storable_picture* %13, i32 0, i32 44
  store i32 %12, i32* %frame_cropping_rect_left_offset5, align 4
  %14 = load %struct.seq_parameter_set_rbsp_t*, %struct.seq_parameter_set_rbsp_t** @active_sps, align 8
  %frame_cropping_rect_right_offset = getelementptr inbounds %struct.seq_parameter_set_rbsp_t, %struct.seq_parameter_set_rbsp_t* %14, i32 0, i32 30
  %15 = load i32, i32* %frame_cropping_rect_right_offset, align 4
  %16 = load %struct.storable_picture*, %struct.storable_picture** @enc_picture, align 8
  %frame_cropping_rect_right_offset6 = getelementptr inbounds %struct.storable_picture, %struct.storable_picture* %16, i32 0, i32 45
  store i32 %15, i32* %frame_cropping_rect_right_offset6, align 4
  %17 = load %struct.seq_parameter_set_rbsp_t*, %struct.seq_parameter_set_rbsp_t** @active_sps, align 8
  %frame_cropping_rect_top_offset = getelementptr inbounds %struct.seq_parameter_set_rbsp_t, %struct.seq_parameter_set_rbsp_t* %17, i32 0, i32 31
  %18 = load i32, i32* %frame_cropping_rect_top_offset, align 4
  %19 = load %struct.storable_picture*, %struct.storable_picture** @enc_picture, align 8
  %frame_cropping_rect_top_offset7 = getelementptr inbounds %struct.storable_picture, %struct.storable_picture* %19, i32 0, i32 46
  store i32 %18, i32* %frame_cropping_rect_top_offset7, align 4
  %20 = load %struct.seq_parameter_set_rbsp_t*, %struct.seq_parameter_set_rbsp_t** @active_sps, align 8
  %frame_cropping_rect_bottom_offset = getelementptr inbounds %struct.seq_parameter_set_rbsp_t, %struct.seq_parameter_set_rbsp_t* %20, i32 0, i32 32
  %21 = load i32, i32* %frame_cropping_rect_bottom_offset, align 4
  %22 = load %struct.storable_picture*, %struct.storable_picture** @enc_picture, align 8
  %frame_cropping_rect_bottom_offset8 = getelementptr inbounds %struct.storable_picture, %struct.storable_picture* %22, i32 0, i32 47
  store i32 %21, i32* %frame_cropping_rect_bottom_offset8, align 4
  br label %if.end

if.else:                                          ; preds = %entry
  %23 = load %struct.storable_picture*, %struct.storable_picture** @enc_picture, align 8
  %frame_cropping_rect_left_offset9 = getelementptr inbounds %struct.storable_picture, %struct.storable_picture* %23, i32 0, i32 44
  store i32 0, i32* %frame_cropping_rect_left_offset9, align 4
  %24 = load %struct.storable_picture*, %struct.storable_picture** @enc_picture, align 8
  %frame_cropping_rect_right_offset10 = getelementptr inbounds %struct.storable_picture, %struct.storable_picture* %24, i32 0, i32 45
  store i32 0, i32* %frame_cropping_rect_right_offset10, align 4
  %25 = load %struct.storable_picture*, %struct.storable_picture** @enc_picture, align 8
  %frame_cropping_rect_top_offset11 = getelementptr inbounds %struct.storable_picture, %struct.storable_picture* %25, i32 0, i32 46
  store i32 0, i32* %frame_cropping_rect_top_offset11, align 4
  %26 = load %struct.storable_picture*, %struct.storable_picture** @enc_picture, align 8
  %frame_cropping_rect_bottom_offset12 = getelementptr inbounds %struct.storable_picture, %struct.storable_picture* %26, i32 0, i32 47
  store i32 0, i32* %frame_cropping_rect_bottom_offset12, align 4
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  ret void
}

declare %struct.storable_picture* @alloc_storable_picture(i32, i32, i32, i32, i32) #1

declare void @setbitscount(i32) #1

; Function Attrs: nounwind uwtable
define internal void @distortion_fld(float* %dis_fld_y, float* %dis_fld_u, float* %dis_fld_v) #0 {
entry:
  %dis_fld_y.addr = alloca float*, align 8
  %dis_fld_u.addr = alloca float*, align 8
  %dis_fld_v.addr = alloca float*, align 8
  store float* %dis_fld_y, float** %dis_fld_y.addr, align 8
  store float* %dis_fld_u, float** %dis_fld_u.addr, align 8
  store float* %dis_fld_v, float** %dis_fld_v.addr, align 8
  %0 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %number = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %0, i32 0, i32 0
  %1 = load i32, i32* %number, align 4
  %div = sdiv i32 %1, 2
  store i32 %div, i32* %number, align 4
  %2 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %buf_cycle = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %2, i32 0, i32 84
  %3 = load i32, i32* %buf_cycle, align 4
  %div1 = sdiv i32 %3, 2
  store i32 %div1, i32* %buf_cycle, align 4
  %4 = load %struct.InputParameters*, %struct.InputParameters** @input, align 8
  %img_height = getelementptr inbounds %struct.InputParameters, %struct.InputParameters* %4, i32 0, i32 17
  %5 = load i32, i32* %img_height, align 4
  %6 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %auto_crop_bottom = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %6, i32 0, i32 166
  %7 = load i32, i32* %auto_crop_bottom, align 4
  %add = add nsw i32 %5, %7
  %8 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %height = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %8, i32 0, i32 15
  store i32 %add, i32* %height, align 4
  %9 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %height_cr_frame = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %9, i32 0, i32 17
  %10 = load i32, i32* %height_cr_frame, align 4
  %11 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %height_cr = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %11, i32 0, i32 16
  store i32 %10, i32* %height_cr, align 4
  %12 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %width = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %12, i32 0, i32 13
  %13 = load i32, i32* %width, align 4
  %14 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %height2 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %14, i32 0, i32 15
  %15 = load i32, i32* %height2, align 4
  %mul = mul nsw i32 %13, %15
  %div3 = sdiv i32 %mul, 256
  %16 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %total_number_mb = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %16, i32 0, i32 4
  store i32 %div3, i32* %total_number_mb, align 4
  call void (...) @combine_field()
  %17 = load i16**, i16*** @imgY_org_frm, align 8
  store i16** %17, i16*** @imgY_org, align 8
  %18 = load i16***, i16**** @imgUV_org_frm, align 8
  store i16*** %18, i16**** @imgUV_org, align 8
  %19 = load %struct.SNRParameters*, %struct.SNRParameters** @snr, align 8
  %20 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  call void @find_distortion()
  %21 = load %struct.SNRParameters*, %struct.SNRParameters** @snr, align 8
  %snr_y = getelementptr inbounds %struct.SNRParameters, %struct.SNRParameters* %21, i32 0, i32 0
  %22 = load float, float* %snr_y, align 4
  %23 = load float*, float** %dis_fld_y.addr, align 8
  store float %22, float* %23, align 4
  %24 = load %struct.SNRParameters*, %struct.SNRParameters** @snr, align 8
  %snr_u = getelementptr inbounds %struct.SNRParameters, %struct.SNRParameters* %24, i32 0, i32 1
  %25 = load float, float* %snr_u, align 4
  %26 = load float*, float** %dis_fld_u.addr, align 8
  store float %25, float* %26, align 4
  %27 = load %struct.SNRParameters*, %struct.SNRParameters** @snr, align 8
  %snr_v = getelementptr inbounds %struct.SNRParameters, %struct.SNRParameters* %27, i32 0, i32 2
  %28 = load float, float* %snr_v, align 4
  %29 = load float*, float** %dis_fld_v.addr, align 8
  store float %28, float* %29, align 4
  ret void
}

; Function Attrs: nounwind uwtable
define void @UnifiedOneForthPix(%struct.storable_picture* %s) #0 {
entry:
  %s.addr = alloca %struct.storable_picture*, align 8
  %is = alloca i32, align 4
  %i = alloca i32, align 4
  %j = alloca i32, align 4
  %j4 = alloca i32, align 4
  %ie2 = alloca i32, align 4
  %je2 = alloca i32, align 4
  %jj = alloca i32, align 4
  %maxy = alloca i32, align 4
  %out4Y = alloca i16**, align 8
  %ref11 = alloca i16*, align 8
  %imgY = alloca i16**, align 8
  %img_width = alloca i32, align 4
  %img_height = alloca i32, align 4
  store %struct.storable_picture* %s, %struct.storable_picture** %s.addr, align 8
  %0 = load %struct.storable_picture*, %struct.storable_picture** %s.addr, align 8
  %imgY1 = getelementptr inbounds %struct.storable_picture, %struct.storable_picture* %0, i32 0, i32 25
  %1 = load i16**, i16*** %imgY1, align 8
  store i16** %1, i16*** %imgY, align 8
  %2 = load %struct.storable_picture*, %struct.storable_picture** %s.addr, align 8
  %size_x = getelementptr inbounds %struct.storable_picture, %struct.storable_picture* %2, i32 0, i32 18
  %3 = load i32, i32* %size_x, align 4
  store i32 %3, i32* %img_width, align 4
  %4 = load %struct.storable_picture*, %struct.storable_picture** %s.addr, align 8
  %size_y = getelementptr inbounds %struct.storable_picture, %struct.storable_picture* %4, i32 0, i32 19
  %5 = load i32, i32* %size_y, align 4
  store i32 %5, i32* %img_height, align 4
  %6 = load %struct.storable_picture*, %struct.storable_picture** %s.addr, align 8
  %imgY_ups = getelementptr inbounds %struct.storable_picture, %struct.storable_picture* %6, i32 0, i32 28
  %7 = load i16**, i16*** %imgY_ups, align 8
  %tobool = icmp ne i16** %7, null
  br i1 %tobool, label %if.then, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %entry
  %8 = load %struct.storable_picture*, %struct.storable_picture** %s.addr, align 8
  %imgY_11 = getelementptr inbounds %struct.storable_picture, %struct.storable_picture* %8, i32 0, i32 26
  %9 = load i16*, i16** %imgY_11, align 8
  %tobool2 = icmp ne i16* %9, null
  br i1 %tobool2, label %if.then, label %if.end

if.then:                                          ; preds = %lor.lhs.false, %entry
  br label %return

if.end:                                           ; preds = %lor.lhs.false
  %10 = load %struct.storable_picture*, %struct.storable_picture** %s.addr, align 8
  %size_x3 = getelementptr inbounds %struct.storable_picture, %struct.storable_picture* %10, i32 0, i32 18
  %11 = load i32, i32* %size_x3, align 4
  %12 = load %struct.storable_picture*, %struct.storable_picture** %s.addr, align 8
  %size_y4 = getelementptr inbounds %struct.storable_picture, %struct.storable_picture* %12, i32 0, i32 19
  %13 = load i32, i32* %size_y4, align 4
  %mul = mul nsw i32 %11, %13
  %conv = sext i32 %mul to i64
  %mul5 = mul i64 %conv, 2
  %call = call noalias i8* @malloc(i64 %mul5) #3
  %14 = bitcast i8* %call to i16*
  %15 = load %struct.storable_picture*, %struct.storable_picture** %s.addr, align 8
  %imgY_116 = getelementptr inbounds %struct.storable_picture, %struct.storable_picture* %15, i32 0, i32 26
  store i16* %14, i16** %imgY_116, align 8
  %16 = load %struct.storable_picture*, %struct.storable_picture** %s.addr, align 8
  %imgY_117 = getelementptr inbounds %struct.storable_picture, %struct.storable_picture* %16, i32 0, i32 26
  %17 = load i16*, i16** %imgY_117, align 8
  %cmp = icmp eq i16* null, %17
  br i1 %cmp, label %if.then.9, label %if.end.10

if.then.9:                                        ; preds = %if.end
  call void @no_mem_exit(i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.1, i32 0, i32 0))
  br label %if.end.10

if.end.10:                                        ; preds = %if.then.9, %if.end
  %18 = load %struct.storable_picture*, %struct.storable_picture** %s.addr, align 8
  %imgY_ups11 = getelementptr inbounds %struct.storable_picture, %struct.storable_picture* %18, i32 0, i32 28
  %19 = load %struct.storable_picture*, %struct.storable_picture** %s.addr, align 8
  %size_y12 = getelementptr inbounds %struct.storable_picture, %struct.storable_picture* %19, i32 0, i32 19
  %20 = load i32, i32* %size_y12, align 4
  %add = add nsw i32 8, %20
  %mul13 = mul nsw i32 %add, 4
  %21 = load %struct.storable_picture*, %struct.storable_picture** %s.addr, align 8
  %size_x14 = getelementptr inbounds %struct.storable_picture, %struct.storable_picture* %21, i32 0, i32 18
  %22 = load i32, i32* %size_x14, align 4
  %add15 = add nsw i32 8, %22
  %mul16 = mul nsw i32 %add15, 4
  %call17 = call i32 @get_mem2Dpel(i16*** %imgY_ups11, i32 %mul13, i32 %mul16)
  %23 = load %struct.InputParameters*, %struct.InputParameters** @input, align 8
  %WeightedPrediction = getelementptr inbounds %struct.InputParameters, %struct.InputParameters* %23, i32 0, i32 46
  %24 = load i32, i32* %WeightedPrediction, align 4
  %tobool18 = icmp ne i32 %24, 0
  br i1 %tobool18, label %if.then.23, label %lor.lhs.false.19

lor.lhs.false.19:                                 ; preds = %if.end.10
  %25 = load %struct.InputParameters*, %struct.InputParameters** @input, align 8
  %WeightedBiprediction = getelementptr inbounds %struct.InputParameters, %struct.InputParameters* %25, i32 0, i32 47
  %26 = load i32, i32* %WeightedBiprediction, align 4
  %tobool20 = icmp ne i32 %26, 0
  br i1 %tobool20, label %if.then.23, label %lor.lhs.false.21

lor.lhs.false.21:                                 ; preds = %lor.lhs.false.19
  %27 = load %struct.InputParameters*, %struct.InputParameters** @input, align 8
  %GenerateMultiplePPS = getelementptr inbounds %struct.InputParameters, %struct.InputParameters* %27, i32 0, i32 15
  %28 = load i32, i32* %GenerateMultiplePPS, align 4
  %tobool22 = icmp ne i32 %28, 0
  br i1 %tobool22, label %if.then.23, label %if.end.42

if.then.23:                                       ; preds = %lor.lhs.false.21, %lor.lhs.false.19, %if.end.10
  %29 = load %struct.storable_picture*, %struct.storable_picture** %s.addr, align 8
  %size_x24 = getelementptr inbounds %struct.storable_picture, %struct.storable_picture* %29, i32 0, i32 18
  %30 = load i32, i32* %size_x24, align 4
  %31 = load %struct.storable_picture*, %struct.storable_picture** %s.addr, align 8
  %size_y25 = getelementptr inbounds %struct.storable_picture, %struct.storable_picture* %31, i32 0, i32 19
  %32 = load i32, i32* %size_y25, align 4
  %mul26 = mul nsw i32 %30, %32
  %conv27 = sext i32 %mul26 to i64
  %mul28 = mul i64 %conv27, 2
  %call29 = call noalias i8* @malloc(i64 %mul28) #3
  %33 = bitcast i8* %call29 to i16*
  %34 = load %struct.storable_picture*, %struct.storable_picture** %s.addr, align 8
  %imgY_11_w = getelementptr inbounds %struct.storable_picture, %struct.storable_picture* %34, i32 0, i32 27
  store i16* %33, i16** %imgY_11_w, align 8
  %35 = load %struct.storable_picture*, %struct.storable_picture** %s.addr, align 8
  %imgY_11_w30 = getelementptr inbounds %struct.storable_picture, %struct.storable_picture* %35, i32 0, i32 27
  %36 = load i16*, i16** %imgY_11_w30, align 8
  %cmp31 = icmp eq i16* null, %36
  br i1 %cmp31, label %if.then.33, label %if.end.34

if.then.33:                                       ; preds = %if.then.23
  call void @no_mem_exit(i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.2, i32 0, i32 0))
  br label %if.end.34

if.end.34:                                        ; preds = %if.then.33, %if.then.23
  %37 = load %struct.storable_picture*, %struct.storable_picture** %s.addr, align 8
  %imgY_ups_w = getelementptr inbounds %struct.storable_picture, %struct.storable_picture* %37, i32 0, i32 29
  %38 = load %struct.storable_picture*, %struct.storable_picture** %s.addr, align 8
  %size_y35 = getelementptr inbounds %struct.storable_picture, %struct.storable_picture* %38, i32 0, i32 19
  %39 = load i32, i32* %size_y35, align 4
  %add36 = add nsw i32 8, %39
  %mul37 = mul nsw i32 %add36, 4
  %40 = load %struct.storable_picture*, %struct.storable_picture** %s.addr, align 8
  %size_x38 = getelementptr inbounds %struct.storable_picture, %struct.storable_picture* %40, i32 0, i32 18
  %41 = load i32, i32* %size_x38, align 4
  %add39 = add nsw i32 8, %41
  %mul40 = mul nsw i32 %add39, 4
  %call41 = call i32 @get_mem2Dpel(i16*** %imgY_ups_w, i32 %mul37, i32 %mul40)
  br label %if.end.42

if.end.42:                                        ; preds = %if.end.34, %lor.lhs.false.21
  %42 = load %struct.storable_picture*, %struct.storable_picture** %s.addr, align 8
  %imgY_ups43 = getelementptr inbounds %struct.storable_picture, %struct.storable_picture* %42, i32 0, i32 28
  %43 = load i16**, i16*** %imgY_ups43, align 8
  store i16** %43, i16*** %out4Y, align 8
  %44 = load %struct.storable_picture*, %struct.storable_picture** %s.addr, align 8
  %imgY_1144 = getelementptr inbounds %struct.storable_picture, %struct.storable_picture* %44, i32 0, i32 26
  %45 = load i16*, i16** %imgY_1144, align 8
  store i16* %45, i16** %ref11, align 8
  store i32 -4, i32* %j, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc.336, %if.end.42
  %46 = load i32, i32* %j, align 4
  %47 = load %struct.storable_picture*, %struct.storable_picture** %s.addr, align 8
  %size_y45 = getelementptr inbounds %struct.storable_picture, %struct.storable_picture* %47, i32 0, i32 19
  %48 = load i32, i32* %size_y45, align 4
  %add46 = add nsw i32 %48, 4
  %cmp47 = icmp slt i32 %46, %add46
  br i1 %cmp47, label %for.body, label %for.end.338

for.body:                                         ; preds = %for.cond
  store i32 -4, i32* %i, align 4
  br label %for.cond.49

for.cond.49:                                      ; preds = %for.inc, %for.body
  %49 = load i32, i32* %i, align 4
  %50 = load %struct.storable_picture*, %struct.storable_picture** %s.addr, align 8
  %size_x50 = getelementptr inbounds %struct.storable_picture, %struct.storable_picture* %50, i32 0, i32 18
  %51 = load i32, i32* %size_x50, align 4
  %add51 = add nsw i32 %51, 4
  %cmp52 = icmp slt i32 %49, %add51
  br i1 %cmp52, label %for.body.54, label %for.end

for.body.54:                                      ; preds = %for.cond.49
  %52 = load %struct.storable_picture*, %struct.storable_picture** %s.addr, align 8
  %size_y55 = getelementptr inbounds %struct.storable_picture, %struct.storable_picture* %52, i32 0, i32 19
  %53 = load i32, i32* %size_y55, align 4
  %sub = sub nsw i32 %53, 1
  %54 = load i32, i32* %j, align 4
  %cmp56 = icmp slt i32 %sub, %54
  br i1 %cmp56, label %cond.true, label %cond.false

cond.true:                                        ; preds = %for.body.54
  %55 = load %struct.storable_picture*, %struct.storable_picture** %s.addr, align 8
  %size_y58 = getelementptr inbounds %struct.storable_picture, %struct.storable_picture* %55, i32 0, i32 19
  %56 = load i32, i32* %size_y58, align 4
  %sub59 = sub nsw i32 %56, 1
  br label %cond.end

cond.false:                                       ; preds = %for.body.54
  %57 = load i32, i32* %j, align 4
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %sub59, %cond.true ], [ %57, %cond.false ]
  %cmp60 = icmp sgt i32 0, %cond
  br i1 %cmp60, label %cond.true.62, label %cond.false.63

cond.true.62:                                     ; preds = %cond.end
  br label %cond.end.74

cond.false.63:                                    ; preds = %cond.end
  %58 = load %struct.storable_picture*, %struct.storable_picture** %s.addr, align 8
  %size_y64 = getelementptr inbounds %struct.storable_picture, %struct.storable_picture* %58, i32 0, i32 19
  %59 = load i32, i32* %size_y64, align 4
  %sub65 = sub nsw i32 %59, 1
  %60 = load i32, i32* %j, align 4
  %cmp66 = icmp slt i32 %sub65, %60
  br i1 %cmp66, label %cond.true.68, label %cond.false.71

cond.true.68:                                     ; preds = %cond.false.63
  %61 = load %struct.storable_picture*, %struct.storable_picture** %s.addr, align 8
  %size_y69 = getelementptr inbounds %struct.storable_picture, %struct.storable_picture* %61, i32 0, i32 19
  %62 = load i32, i32* %size_y69, align 4
  %sub70 = sub nsw i32 %62, 1
  br label %cond.end.72

cond.false.71:                                    ; preds = %cond.false.63
  %63 = load i32, i32* %j, align 4
  br label %cond.end.72

cond.end.72:                                      ; preds = %cond.false.71, %cond.true.68
  %cond73 = phi i32 [ %sub70, %cond.true.68 ], [ %63, %cond.false.71 ]
  br label %cond.end.74

cond.end.74:                                      ; preds = %cond.end.72, %cond.true.62
  %cond75 = phi i32 [ 0, %cond.true.62 ], [ %cond73, %cond.end.72 ]
  store i32 %cond75, i32* %jj, align 4
  %64 = load i32, i32* getelementptr inbounds ([3 x [2 x i32]], [3 x [2 x i32]]* @ONE_FOURTH_TAP, i32 0, i64 0, i64 0), align 4
  %65 = load %struct.storable_picture*, %struct.storable_picture** %s.addr, align 8
  %size_x76 = getelementptr inbounds %struct.storable_picture, %struct.storable_picture* %65, i32 0, i32 18
  %66 = load i32, i32* %size_x76, align 4
  %sub77 = sub nsw i32 %66, 1
  %67 = load i32, i32* %i, align 4
  %cmp78 = icmp slt i32 %sub77, %67
  br i1 %cmp78, label %cond.true.80, label %cond.false.83

cond.true.80:                                     ; preds = %cond.end.74
  %68 = load %struct.storable_picture*, %struct.storable_picture** %s.addr, align 8
  %size_x81 = getelementptr inbounds %struct.storable_picture, %struct.storable_picture* %68, i32 0, i32 18
  %69 = load i32, i32* %size_x81, align 4
  %sub82 = sub nsw i32 %69, 1
  br label %cond.end.84

cond.false.83:                                    ; preds = %cond.end.74
  %70 = load i32, i32* %i, align 4
  br label %cond.end.84

cond.end.84:                                      ; preds = %cond.false.83, %cond.true.80
  %cond85 = phi i32 [ %sub82, %cond.true.80 ], [ %70, %cond.false.83 ]
  %cmp86 = icmp sgt i32 0, %cond85
  br i1 %cmp86, label %cond.true.88, label %cond.false.89

cond.true.88:                                     ; preds = %cond.end.84
  br label %cond.end.100

cond.false.89:                                    ; preds = %cond.end.84
  %71 = load %struct.storable_picture*, %struct.storable_picture** %s.addr, align 8
  %size_x90 = getelementptr inbounds %struct.storable_picture, %struct.storable_picture* %71, i32 0, i32 18
  %72 = load i32, i32* %size_x90, align 4
  %sub91 = sub nsw i32 %72, 1
  %73 = load i32, i32* %i, align 4
  %cmp92 = icmp slt i32 %sub91, %73
  br i1 %cmp92, label %cond.true.94, label %cond.false.97

cond.true.94:                                     ; preds = %cond.false.89
  %74 = load %struct.storable_picture*, %struct.storable_picture** %s.addr, align 8
  %size_x95 = getelementptr inbounds %struct.storable_picture, %struct.storable_picture* %74, i32 0, i32 18
  %75 = load i32, i32* %size_x95, align 4
  %sub96 = sub nsw i32 %75, 1
  br label %cond.end.98

cond.false.97:                                    ; preds = %cond.false.89
  %76 = load i32, i32* %i, align 4
  br label %cond.end.98

cond.end.98:                                      ; preds = %cond.false.97, %cond.true.94
  %cond99 = phi i32 [ %sub96, %cond.true.94 ], [ %76, %cond.false.97 ]
  br label %cond.end.100

cond.end.100:                                     ; preds = %cond.end.98, %cond.true.88
  %cond101 = phi i32 [ 0, %cond.true.88 ], [ %cond99, %cond.end.98 ]
  %idxprom = sext i32 %cond101 to i64
  %77 = load i32, i32* %jj, align 4
  %idxprom102 = sext i32 %77 to i64
  %78 = load i16**, i16*** %imgY, align 8
  %arrayidx = getelementptr inbounds i16*, i16** %78, i64 %idxprom102
  %79 = load i16*, i16** %arrayidx, align 8
  %arrayidx103 = getelementptr inbounds i16, i16* %79, i64 %idxprom
  %80 = load i16, i16* %arrayidx103, align 2
  %conv104 = zext i16 %80 to i32
  %81 = load %struct.storable_picture*, %struct.storable_picture** %s.addr, align 8
  %size_x105 = getelementptr inbounds %struct.storable_picture, %struct.storable_picture* %81, i32 0, i32 18
  %82 = load i32, i32* %size_x105, align 4
  %sub106 = sub nsw i32 %82, 1
  %83 = load i32, i32* %i, align 4
  %add107 = add nsw i32 %83, 1
  %cmp108 = icmp slt i32 %sub106, %add107
  br i1 %cmp108, label %cond.true.110, label %cond.false.113

cond.true.110:                                    ; preds = %cond.end.100
  %84 = load %struct.storable_picture*, %struct.storable_picture** %s.addr, align 8
  %size_x111 = getelementptr inbounds %struct.storable_picture, %struct.storable_picture* %84, i32 0, i32 18
  %85 = load i32, i32* %size_x111, align 4
  %sub112 = sub nsw i32 %85, 1
  br label %cond.end.115

cond.false.113:                                   ; preds = %cond.end.100
  %86 = load i32, i32* %i, align 4
  %add114 = add nsw i32 %86, 1
  br label %cond.end.115

cond.end.115:                                     ; preds = %cond.false.113, %cond.true.110
  %cond116 = phi i32 [ %sub112, %cond.true.110 ], [ %add114, %cond.false.113 ]
  %cmp117 = icmp sgt i32 0, %cond116
  br i1 %cmp117, label %cond.true.119, label %cond.false.120

cond.true.119:                                    ; preds = %cond.end.115
  br label %cond.end.133

cond.false.120:                                   ; preds = %cond.end.115
  %87 = load %struct.storable_picture*, %struct.storable_picture** %s.addr, align 8
  %size_x121 = getelementptr inbounds %struct.storable_picture, %struct.storable_picture* %87, i32 0, i32 18
  %88 = load i32, i32* %size_x121, align 4
  %sub122 = sub nsw i32 %88, 1
  %89 = load i32, i32* %i, align 4
  %add123 = add nsw i32 %89, 1
  %cmp124 = icmp slt i32 %sub122, %add123
  br i1 %cmp124, label %cond.true.126, label %cond.false.129

cond.true.126:                                    ; preds = %cond.false.120
  %90 = load %struct.storable_picture*, %struct.storable_picture** %s.addr, align 8
  %size_x127 = getelementptr inbounds %struct.storable_picture, %struct.storable_picture* %90, i32 0, i32 18
  %91 = load i32, i32* %size_x127, align 4
  %sub128 = sub nsw i32 %91, 1
  br label %cond.end.131

cond.false.129:                                   ; preds = %cond.false.120
  %92 = load i32, i32* %i, align 4
  %add130 = add nsw i32 %92, 1
  br label %cond.end.131

cond.end.131:                                     ; preds = %cond.false.129, %cond.true.126
  %cond132 = phi i32 [ %sub128, %cond.true.126 ], [ %add130, %cond.false.129 ]
  br label %cond.end.133

cond.end.133:                                     ; preds = %cond.end.131, %cond.true.119
  %cond134 = phi i32 [ 0, %cond.true.119 ], [ %cond132, %cond.end.131 ]
  %idxprom135 = sext i32 %cond134 to i64
  %93 = load i32, i32* %jj, align 4
  %idxprom136 = sext i32 %93 to i64
  %94 = load i16**, i16*** %imgY, align 8
  %arrayidx137 = getelementptr inbounds i16*, i16** %94, i64 %idxprom136
  %95 = load i16*, i16** %arrayidx137, align 8
  %arrayidx138 = getelementptr inbounds i16, i16* %95, i64 %idxprom135
  %96 = load i16, i16* %arrayidx138, align 2
  %conv139 = zext i16 %96 to i32
  %add140 = add nsw i32 %conv104, %conv139
  %mul141 = mul nsw i32 %64, %add140
  %97 = load i32, i32* getelementptr inbounds ([3 x [2 x i32]], [3 x [2 x i32]]* @ONE_FOURTH_TAP, i32 0, i64 1, i64 0), align 4
  %98 = load %struct.storable_picture*, %struct.storable_picture** %s.addr, align 8
  %size_x142 = getelementptr inbounds %struct.storable_picture, %struct.storable_picture* %98, i32 0, i32 18
  %99 = load i32, i32* %size_x142, align 4
  %sub143 = sub nsw i32 %99, 1
  %100 = load i32, i32* %i, align 4
  %sub144 = sub nsw i32 %100, 1
  %cmp145 = icmp slt i32 %sub143, %sub144
  br i1 %cmp145, label %cond.true.147, label %cond.false.150

cond.true.147:                                    ; preds = %cond.end.133
  %101 = load %struct.storable_picture*, %struct.storable_picture** %s.addr, align 8
  %size_x148 = getelementptr inbounds %struct.storable_picture, %struct.storable_picture* %101, i32 0, i32 18
  %102 = load i32, i32* %size_x148, align 4
  %sub149 = sub nsw i32 %102, 1
  br label %cond.end.152

cond.false.150:                                   ; preds = %cond.end.133
  %103 = load i32, i32* %i, align 4
  %sub151 = sub nsw i32 %103, 1
  br label %cond.end.152

cond.end.152:                                     ; preds = %cond.false.150, %cond.true.147
  %cond153 = phi i32 [ %sub149, %cond.true.147 ], [ %sub151, %cond.false.150 ]
  %cmp154 = icmp sgt i32 0, %cond153
  br i1 %cmp154, label %cond.true.156, label %cond.false.157

cond.true.156:                                    ; preds = %cond.end.152
  br label %cond.end.170

cond.false.157:                                   ; preds = %cond.end.152
  %104 = load %struct.storable_picture*, %struct.storable_picture** %s.addr, align 8
  %size_x158 = getelementptr inbounds %struct.storable_picture, %struct.storable_picture* %104, i32 0, i32 18
  %105 = load i32, i32* %size_x158, align 4
  %sub159 = sub nsw i32 %105, 1
  %106 = load i32, i32* %i, align 4
  %sub160 = sub nsw i32 %106, 1
  %cmp161 = icmp slt i32 %sub159, %sub160
  br i1 %cmp161, label %cond.true.163, label %cond.false.166

cond.true.163:                                    ; preds = %cond.false.157
  %107 = load %struct.storable_picture*, %struct.storable_picture** %s.addr, align 8
  %size_x164 = getelementptr inbounds %struct.storable_picture, %struct.storable_picture* %107, i32 0, i32 18
  %108 = load i32, i32* %size_x164, align 4
  %sub165 = sub nsw i32 %108, 1
  br label %cond.end.168

cond.false.166:                                   ; preds = %cond.false.157
  %109 = load i32, i32* %i, align 4
  %sub167 = sub nsw i32 %109, 1
  br label %cond.end.168

cond.end.168:                                     ; preds = %cond.false.166, %cond.true.163
  %cond169 = phi i32 [ %sub165, %cond.true.163 ], [ %sub167, %cond.false.166 ]
  br label %cond.end.170

cond.end.170:                                     ; preds = %cond.end.168, %cond.true.156
  %cond171 = phi i32 [ 0, %cond.true.156 ], [ %cond169, %cond.end.168 ]
  %idxprom172 = sext i32 %cond171 to i64
  %110 = load i32, i32* %jj, align 4
  %idxprom173 = sext i32 %110 to i64
  %111 = load i16**, i16*** %imgY, align 8
  %arrayidx174 = getelementptr inbounds i16*, i16** %111, i64 %idxprom173
  %112 = load i16*, i16** %arrayidx174, align 8
  %arrayidx175 = getelementptr inbounds i16, i16* %112, i64 %idxprom172
  %113 = load i16, i16* %arrayidx175, align 2
  %conv176 = zext i16 %113 to i32
  %114 = load %struct.storable_picture*, %struct.storable_picture** %s.addr, align 8
  %size_x177 = getelementptr inbounds %struct.storable_picture, %struct.storable_picture* %114, i32 0, i32 18
  %115 = load i32, i32* %size_x177, align 4
  %sub178 = sub nsw i32 %115, 1
  %116 = load i32, i32* %i, align 4
  %add179 = add nsw i32 %116, 2
  %cmp180 = icmp slt i32 %sub178, %add179
  br i1 %cmp180, label %cond.true.182, label %cond.false.185

cond.true.182:                                    ; preds = %cond.end.170
  %117 = load %struct.storable_picture*, %struct.storable_picture** %s.addr, align 8
  %size_x183 = getelementptr inbounds %struct.storable_picture, %struct.storable_picture* %117, i32 0, i32 18
  %118 = load i32, i32* %size_x183, align 4
  %sub184 = sub nsw i32 %118, 1
  br label %cond.end.187

cond.false.185:                                   ; preds = %cond.end.170
  %119 = load i32, i32* %i, align 4
  %add186 = add nsw i32 %119, 2
  br label %cond.end.187

cond.end.187:                                     ; preds = %cond.false.185, %cond.true.182
  %cond188 = phi i32 [ %sub184, %cond.true.182 ], [ %add186, %cond.false.185 ]
  %cmp189 = icmp sgt i32 0, %cond188
  br i1 %cmp189, label %cond.true.191, label %cond.false.192

cond.true.191:                                    ; preds = %cond.end.187
  br label %cond.end.205

cond.false.192:                                   ; preds = %cond.end.187
  %120 = load %struct.storable_picture*, %struct.storable_picture** %s.addr, align 8
  %size_x193 = getelementptr inbounds %struct.storable_picture, %struct.storable_picture* %120, i32 0, i32 18
  %121 = load i32, i32* %size_x193, align 4
  %sub194 = sub nsw i32 %121, 1
  %122 = load i32, i32* %i, align 4
  %add195 = add nsw i32 %122, 2
  %cmp196 = icmp slt i32 %sub194, %add195
  br i1 %cmp196, label %cond.true.198, label %cond.false.201

cond.true.198:                                    ; preds = %cond.false.192
  %123 = load %struct.storable_picture*, %struct.storable_picture** %s.addr, align 8
  %size_x199 = getelementptr inbounds %struct.storable_picture, %struct.storable_picture* %123, i32 0, i32 18
  %124 = load i32, i32* %size_x199, align 4
  %sub200 = sub nsw i32 %124, 1
  br label %cond.end.203

cond.false.201:                                   ; preds = %cond.false.192
  %125 = load i32, i32* %i, align 4
  %add202 = add nsw i32 %125, 2
  br label %cond.end.203

cond.end.203:                                     ; preds = %cond.false.201, %cond.true.198
  %cond204 = phi i32 [ %sub200, %cond.true.198 ], [ %add202, %cond.false.201 ]
  br label %cond.end.205

cond.end.205:                                     ; preds = %cond.end.203, %cond.true.191
  %cond206 = phi i32 [ 0, %cond.true.191 ], [ %cond204, %cond.end.203 ]
  %idxprom207 = sext i32 %cond206 to i64
  %126 = load i32, i32* %jj, align 4
  %idxprom208 = sext i32 %126 to i64
  %127 = load i16**, i16*** %imgY, align 8
  %arrayidx209 = getelementptr inbounds i16*, i16** %127, i64 %idxprom208
  %128 = load i16*, i16** %arrayidx209, align 8
  %arrayidx210 = getelementptr inbounds i16, i16* %128, i64 %idxprom207
  %129 = load i16, i16* %arrayidx210, align 2
  %conv211 = zext i16 %129 to i32
  %add212 = add nsw i32 %conv176, %conv211
  %mul213 = mul nsw i32 %97, %add212
  %add214 = add nsw i32 %mul141, %mul213
  %130 = load i32, i32* getelementptr inbounds ([3 x [2 x i32]], [3 x [2 x i32]]* @ONE_FOURTH_TAP, i32 0, i64 2, i64 0), align 4
  %131 = load %struct.storable_picture*, %struct.storable_picture** %s.addr, align 8
  %size_x215 = getelementptr inbounds %struct.storable_picture, %struct.storable_picture* %131, i32 0, i32 18
  %132 = load i32, i32* %size_x215, align 4
  %sub216 = sub nsw i32 %132, 1
  %133 = load i32, i32* %i, align 4
  %sub217 = sub nsw i32 %133, 2
  %cmp218 = icmp slt i32 %sub216, %sub217
  br i1 %cmp218, label %cond.true.220, label %cond.false.223

cond.true.220:                                    ; preds = %cond.end.205
  %134 = load %struct.storable_picture*, %struct.storable_picture** %s.addr, align 8
  %size_x221 = getelementptr inbounds %struct.storable_picture, %struct.storable_picture* %134, i32 0, i32 18
  %135 = load i32, i32* %size_x221, align 4
  %sub222 = sub nsw i32 %135, 1
  br label %cond.end.225

cond.false.223:                                   ; preds = %cond.end.205
  %136 = load i32, i32* %i, align 4
  %sub224 = sub nsw i32 %136, 2
  br label %cond.end.225

cond.end.225:                                     ; preds = %cond.false.223, %cond.true.220
  %cond226 = phi i32 [ %sub222, %cond.true.220 ], [ %sub224, %cond.false.223 ]
  %cmp227 = icmp sgt i32 0, %cond226
  br i1 %cmp227, label %cond.true.229, label %cond.false.230

cond.true.229:                                    ; preds = %cond.end.225
  br label %cond.end.243

cond.false.230:                                   ; preds = %cond.end.225
  %137 = load %struct.storable_picture*, %struct.storable_picture** %s.addr, align 8
  %size_x231 = getelementptr inbounds %struct.storable_picture, %struct.storable_picture* %137, i32 0, i32 18
  %138 = load i32, i32* %size_x231, align 4
  %sub232 = sub nsw i32 %138, 1
  %139 = load i32, i32* %i, align 4
  %sub233 = sub nsw i32 %139, 2
  %cmp234 = icmp slt i32 %sub232, %sub233
  br i1 %cmp234, label %cond.true.236, label %cond.false.239

cond.true.236:                                    ; preds = %cond.false.230
  %140 = load %struct.storable_picture*, %struct.storable_picture** %s.addr, align 8
  %size_x237 = getelementptr inbounds %struct.storable_picture, %struct.storable_picture* %140, i32 0, i32 18
  %141 = load i32, i32* %size_x237, align 4
  %sub238 = sub nsw i32 %141, 1
  br label %cond.end.241

cond.false.239:                                   ; preds = %cond.false.230
  %142 = load i32, i32* %i, align 4
  %sub240 = sub nsw i32 %142, 2
  br label %cond.end.241

cond.end.241:                                     ; preds = %cond.false.239, %cond.true.236
  %cond242 = phi i32 [ %sub238, %cond.true.236 ], [ %sub240, %cond.false.239 ]
  br label %cond.end.243

cond.end.243:                                     ; preds = %cond.end.241, %cond.true.229
  %cond244 = phi i32 [ 0, %cond.true.229 ], [ %cond242, %cond.end.241 ]
  %idxprom245 = sext i32 %cond244 to i64
  %143 = load i32, i32* %jj, align 4
  %idxprom246 = sext i32 %143 to i64
  %144 = load i16**, i16*** %imgY, align 8
  %arrayidx247 = getelementptr inbounds i16*, i16** %144, i64 %idxprom246
  %145 = load i16*, i16** %arrayidx247, align 8
  %arrayidx248 = getelementptr inbounds i16, i16* %145, i64 %idxprom245
  %146 = load i16, i16* %arrayidx248, align 2
  %conv249 = zext i16 %146 to i32
  %147 = load %struct.storable_picture*, %struct.storable_picture** %s.addr, align 8
  %size_x250 = getelementptr inbounds %struct.storable_picture, %struct.storable_picture* %147, i32 0, i32 18
  %148 = load i32, i32* %size_x250, align 4
  %sub251 = sub nsw i32 %148, 1
  %149 = load i32, i32* %i, align 4
  %add252 = add nsw i32 %149, 3
  %cmp253 = icmp slt i32 %sub251, %add252
  br i1 %cmp253, label %cond.true.255, label %cond.false.258

cond.true.255:                                    ; preds = %cond.end.243
  %150 = load %struct.storable_picture*, %struct.storable_picture** %s.addr, align 8
  %size_x256 = getelementptr inbounds %struct.storable_picture, %struct.storable_picture* %150, i32 0, i32 18
  %151 = load i32, i32* %size_x256, align 4
  %sub257 = sub nsw i32 %151, 1
  br label %cond.end.260

cond.false.258:                                   ; preds = %cond.end.243
  %152 = load i32, i32* %i, align 4
  %add259 = add nsw i32 %152, 3
  br label %cond.end.260

cond.end.260:                                     ; preds = %cond.false.258, %cond.true.255
  %cond261 = phi i32 [ %sub257, %cond.true.255 ], [ %add259, %cond.false.258 ]
  %cmp262 = icmp sgt i32 0, %cond261
  br i1 %cmp262, label %cond.true.264, label %cond.false.265

cond.true.264:                                    ; preds = %cond.end.260
  br label %cond.end.278

cond.false.265:                                   ; preds = %cond.end.260
  %153 = load %struct.storable_picture*, %struct.storable_picture** %s.addr, align 8
  %size_x266 = getelementptr inbounds %struct.storable_picture, %struct.storable_picture* %153, i32 0, i32 18
  %154 = load i32, i32* %size_x266, align 4
  %sub267 = sub nsw i32 %154, 1
  %155 = load i32, i32* %i, align 4
  %add268 = add nsw i32 %155, 3
  %cmp269 = icmp slt i32 %sub267, %add268
  br i1 %cmp269, label %cond.true.271, label %cond.false.274

cond.true.271:                                    ; preds = %cond.false.265
  %156 = load %struct.storable_picture*, %struct.storable_picture** %s.addr, align 8
  %size_x272 = getelementptr inbounds %struct.storable_picture, %struct.storable_picture* %156, i32 0, i32 18
  %157 = load i32, i32* %size_x272, align 4
  %sub273 = sub nsw i32 %157, 1
  br label %cond.end.276

cond.false.274:                                   ; preds = %cond.false.265
  %158 = load i32, i32* %i, align 4
  %add275 = add nsw i32 %158, 3
  br label %cond.end.276

cond.end.276:                                     ; preds = %cond.false.274, %cond.true.271
  %cond277 = phi i32 [ %sub273, %cond.true.271 ], [ %add275, %cond.false.274 ]
  br label %cond.end.278

cond.end.278:                                     ; preds = %cond.end.276, %cond.true.264
  %cond279 = phi i32 [ 0, %cond.true.264 ], [ %cond277, %cond.end.276 ]
  %idxprom280 = sext i32 %cond279 to i64
  %159 = load i32, i32* %jj, align 4
  %idxprom281 = sext i32 %159 to i64
  %160 = load i16**, i16*** %imgY, align 8
  %arrayidx282 = getelementptr inbounds i16*, i16** %160, i64 %idxprom281
  %161 = load i16*, i16** %arrayidx282, align 8
  %arrayidx283 = getelementptr inbounds i16, i16* %161, i64 %idxprom280
  %162 = load i16, i16* %arrayidx283, align 2
  %conv284 = zext i16 %162 to i32
  %add285 = add nsw i32 %conv249, %conv284
  %mul286 = mul nsw i32 %130, %add285
  %add287 = add nsw i32 %add214, %mul286
  store i32 %add287, i32* %is, align 4
  %163 = load %struct.storable_picture*, %struct.storable_picture** %s.addr, align 8
  %size_x288 = getelementptr inbounds %struct.storable_picture, %struct.storable_picture* %163, i32 0, i32 18
  %164 = load i32, i32* %size_x288, align 4
  %sub289 = sub nsw i32 %164, 1
  %165 = load i32, i32* %i, align 4
  %cmp290 = icmp slt i32 %sub289, %165
  br i1 %cmp290, label %cond.true.292, label %cond.false.295

cond.true.292:                                    ; preds = %cond.end.278
  %166 = load %struct.storable_picture*, %struct.storable_picture** %s.addr, align 8
  %size_x293 = getelementptr inbounds %struct.storable_picture, %struct.storable_picture* %166, i32 0, i32 18
  %167 = load i32, i32* %size_x293, align 4
  %sub294 = sub nsw i32 %167, 1
  br label %cond.end.296

cond.false.295:                                   ; preds = %cond.end.278
  %168 = load i32, i32* %i, align 4
  br label %cond.end.296

cond.end.296:                                     ; preds = %cond.false.295, %cond.true.292
  %cond297 = phi i32 [ %sub294, %cond.true.292 ], [ %168, %cond.false.295 ]
  %cmp298 = icmp sgt i32 0, %cond297
  br i1 %cmp298, label %cond.true.300, label %cond.false.301

cond.true.300:                                    ; preds = %cond.end.296
  br label %cond.end.312

cond.false.301:                                   ; preds = %cond.end.296
  %169 = load %struct.storable_picture*, %struct.storable_picture** %s.addr, align 8
  %size_x302 = getelementptr inbounds %struct.storable_picture, %struct.storable_picture* %169, i32 0, i32 18
  %170 = load i32, i32* %size_x302, align 4
  %sub303 = sub nsw i32 %170, 1
  %171 = load i32, i32* %i, align 4
  %cmp304 = icmp slt i32 %sub303, %171
  br i1 %cmp304, label %cond.true.306, label %cond.false.309

cond.true.306:                                    ; preds = %cond.false.301
  %172 = load %struct.storable_picture*, %struct.storable_picture** %s.addr, align 8
  %size_x307 = getelementptr inbounds %struct.storable_picture, %struct.storable_picture* %172, i32 0, i32 18
  %173 = load i32, i32* %size_x307, align 4
  %sub308 = sub nsw i32 %173, 1
  br label %cond.end.310

cond.false.309:                                   ; preds = %cond.false.301
  %174 = load i32, i32* %i, align 4
  br label %cond.end.310

cond.end.310:                                     ; preds = %cond.false.309, %cond.true.306
  %cond311 = phi i32 [ %sub308, %cond.true.306 ], [ %174, %cond.false.309 ]
  br label %cond.end.312

cond.end.312:                                     ; preds = %cond.end.310, %cond.true.300
  %cond313 = phi i32 [ 0, %cond.true.300 ], [ %cond311, %cond.end.310 ]
  %idxprom314 = sext i32 %cond313 to i64
  %175 = load i32, i32* %jj, align 4
  %idxprom315 = sext i32 %175 to i64
  %176 = load i16**, i16*** %imgY, align 8
  %arrayidx316 = getelementptr inbounds i16*, i16** %176, i64 %idxprom315
  %177 = load i16*, i16** %arrayidx316, align 8
  %arrayidx317 = getelementptr inbounds i16, i16* %177, i64 %idxprom314
  %178 = load i16, i16* %arrayidx317, align 2
  %conv318 = zext i16 %178 to i32
  %mul319 = mul nsw i32 %conv318, 1024
  %179 = load i32, i32* %i, align 4
  %add320 = add nsw i32 %179, 4
  %mul321 = mul nsw i32 %add320, 2
  %idxprom322 = sext i32 %mul321 to i64
  %180 = load i32, i32* %j, align 4
  %add323 = add nsw i32 %180, 4
  %idxprom324 = sext i32 %add323 to i64
  %181 = load i32**, i32*** @img4Y_tmp, align 8
  %arrayidx325 = getelementptr inbounds i32*, i32** %181, i64 %idxprom324
  %182 = load i32*, i32** %arrayidx325, align 8
  %arrayidx326 = getelementptr inbounds i32, i32* %182, i64 %idxprom322
  store i32 %mul319, i32* %arrayidx326, align 4
  %183 = load i32, i32* %is, align 4
  %mul327 = mul nsw i32 %183, 32
  %184 = load i32, i32* %i, align 4
  %add328 = add nsw i32 %184, 4
  %mul329 = mul nsw i32 %add328, 2
  %add330 = add nsw i32 %mul329, 1
  %idxprom331 = sext i32 %add330 to i64
  %185 = load i32, i32* %j, align 4
  %add332 = add nsw i32 %185, 4
  %idxprom333 = sext i32 %add332 to i64
  %186 = load i32**, i32*** @img4Y_tmp, align 8
  %arrayidx334 = getelementptr inbounds i32*, i32** %186, i64 %idxprom333
  %187 = load i32*, i32** %arrayidx334, align 8
  %arrayidx335 = getelementptr inbounds i32, i32* %187, i64 %idxprom331
  store i32 %mul327, i32* %arrayidx335, align 4
  br label %for.inc

for.inc:                                          ; preds = %cond.end.312
  %188 = load i32, i32* %i, align 4
  %inc = add nsw i32 %188, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond.49

for.end:                                          ; preds = %for.cond.49
  br label %for.inc.336

for.inc.336:                                      ; preds = %for.end
  %189 = load i32, i32* %j, align 4
  %inc337 = add nsw i32 %189, 1
  store i32 %inc337, i32* %j, align 4
  br label %for.cond

for.end.338:                                      ; preds = %for.cond
  store i32 0, i32* %i, align 4
  br label %for.cond.339

for.cond.339:                                     ; preds = %for.inc.517, %for.end.338
  %190 = load i32, i32* %i, align 4
  %191 = load %struct.storable_picture*, %struct.storable_picture** %s.addr, align 8
  %size_x340 = getelementptr inbounds %struct.storable_picture, %struct.storable_picture* %191, i32 0, i32 18
  %192 = load i32, i32* %size_x340, align 4
  %add341 = add nsw i32 %192, 8
  %mul342 = mul nsw i32 %add341, 2
  %cmp343 = icmp slt i32 %190, %mul342
  br i1 %cmp343, label %for.body.345, label %for.end.519

for.body.345:                                     ; preds = %for.cond.339
  store i32 0, i32* %j, align 4
  br label %for.cond.346

for.cond.346:                                     ; preds = %for.inc.514, %for.body.345
  %193 = load i32, i32* %j, align 4
  %194 = load %struct.storable_picture*, %struct.storable_picture** %s.addr, align 8
  %size_y347 = getelementptr inbounds %struct.storable_picture, %struct.storable_picture* %194, i32 0, i32 19
  %195 = load i32, i32* %size_y347, align 4
  %add348 = add nsw i32 %195, 8
  %cmp349 = icmp slt i32 %193, %add348
  br i1 %cmp349, label %for.body.351, label %for.end.516

for.body.351:                                     ; preds = %for.cond.346
  %196 = load i32, i32* %j, align 4
  %mul352 = mul nsw i32 %196, 4
  store i32 %mul352, i32* %j4, align 4
  %197 = load %struct.storable_picture*, %struct.storable_picture** %s.addr, align 8
  %size_y353 = getelementptr inbounds %struct.storable_picture, %struct.storable_picture* %197, i32 0, i32 19
  %198 = load i32, i32* %size_y353, align 4
  %add354 = add nsw i32 %198, 8
  %sub355 = sub nsw i32 %add354, 1
  store i32 %sub355, i32* %maxy, align 4
  %199 = load i32, i32* getelementptr inbounds ([3 x [2 x i32]], [3 x [2 x i32]]* @ONE_FOURTH_TAP, i32 0, i64 0, i64 0), align 4
  %200 = load i32, i32* %i, align 4
  %idxprom356 = sext i32 %200 to i64
  %201 = load i32, i32* %j, align 4
  %idxprom357 = sext i32 %201 to i64
  %202 = load i32**, i32*** @img4Y_tmp, align 8
  %arrayidx358 = getelementptr inbounds i32*, i32** %202, i64 %idxprom357
  %203 = load i32*, i32** %arrayidx358, align 8
  %arrayidx359 = getelementptr inbounds i32, i32* %203, i64 %idxprom356
  %204 = load i32, i32* %arrayidx359, align 4
  %205 = load i32, i32* %i, align 4
  %idxprom360 = sext i32 %205 to i64
  %206 = load i32, i32* %maxy, align 4
  %207 = load i32, i32* %j, align 4
  %add361 = add nsw i32 %207, 1
  %cmp362 = icmp slt i32 %206, %add361
  br i1 %cmp362, label %cond.true.364, label %cond.false.365

cond.true.364:                                    ; preds = %for.body.351
  %208 = load i32, i32* %maxy, align 4
  br label %cond.end.367

cond.false.365:                                   ; preds = %for.body.351
  %209 = load i32, i32* %j, align 4
  %add366 = add nsw i32 %209, 1
  br label %cond.end.367

cond.end.367:                                     ; preds = %cond.false.365, %cond.true.364
  %cond368 = phi i32 [ %208, %cond.true.364 ], [ %add366, %cond.false.365 ]
  %idxprom369 = sext i32 %cond368 to i64
  %210 = load i32**, i32*** @img4Y_tmp, align 8
  %arrayidx370 = getelementptr inbounds i32*, i32** %210, i64 %idxprom369
  %211 = load i32*, i32** %arrayidx370, align 8
  %arrayidx371 = getelementptr inbounds i32, i32* %211, i64 %idxprom360
  %212 = load i32, i32* %arrayidx371, align 4
  %add372 = add nsw i32 %204, %212
  %mul373 = mul nsw i32 %199, %add372
  %213 = load i32, i32* getelementptr inbounds ([3 x [2 x i32]], [3 x [2 x i32]]* @ONE_FOURTH_TAP, i32 0, i64 1, i64 0), align 4
  %214 = load i32, i32* %i, align 4
  %idxprom374 = sext i32 %214 to i64
  %215 = load i32, i32* %j, align 4
  %sub375 = sub nsw i32 %215, 1
  %cmp376 = icmp sgt i32 0, %sub375
  br i1 %cmp376, label %cond.true.378, label %cond.false.379

cond.true.378:                                    ; preds = %cond.end.367
  br label %cond.end.381

cond.false.379:                                   ; preds = %cond.end.367
  %216 = load i32, i32* %j, align 4
  %sub380 = sub nsw i32 %216, 1
  br label %cond.end.381

cond.end.381:                                     ; preds = %cond.false.379, %cond.true.378
  %cond382 = phi i32 [ 0, %cond.true.378 ], [ %sub380, %cond.false.379 ]
  %idxprom383 = sext i32 %cond382 to i64
  %217 = load i32**, i32*** @img4Y_tmp, align 8
  %arrayidx384 = getelementptr inbounds i32*, i32** %217, i64 %idxprom383
  %218 = load i32*, i32** %arrayidx384, align 8
  %arrayidx385 = getelementptr inbounds i32, i32* %218, i64 %idxprom374
  %219 = load i32, i32* %arrayidx385, align 4
  %220 = load i32, i32* %i, align 4
  %idxprom386 = sext i32 %220 to i64
  %221 = load i32, i32* %maxy, align 4
  %222 = load i32, i32* %j, align 4
  %add387 = add nsw i32 %222, 2
  %cmp388 = icmp slt i32 %221, %add387
  br i1 %cmp388, label %cond.true.390, label %cond.false.391

cond.true.390:                                    ; preds = %cond.end.381
  %223 = load i32, i32* %maxy, align 4
  br label %cond.end.393

cond.false.391:                                   ; preds = %cond.end.381
  %224 = load i32, i32* %j, align 4
  %add392 = add nsw i32 %224, 2
  br label %cond.end.393

cond.end.393:                                     ; preds = %cond.false.391, %cond.true.390
  %cond394 = phi i32 [ %223, %cond.true.390 ], [ %add392, %cond.false.391 ]
  %idxprom395 = sext i32 %cond394 to i64
  %225 = load i32**, i32*** @img4Y_tmp, align 8
  %arrayidx396 = getelementptr inbounds i32*, i32** %225, i64 %idxprom395
  %226 = load i32*, i32** %arrayidx396, align 8
  %arrayidx397 = getelementptr inbounds i32, i32* %226, i64 %idxprom386
  %227 = load i32, i32* %arrayidx397, align 4
  %add398 = add nsw i32 %219, %227
  %mul399 = mul nsw i32 %213, %add398
  %add400 = add nsw i32 %mul373, %mul399
  %228 = load i32, i32* getelementptr inbounds ([3 x [2 x i32]], [3 x [2 x i32]]* @ONE_FOURTH_TAP, i32 0, i64 2, i64 0), align 4
  %229 = load i32, i32* %i, align 4
  %idxprom401 = sext i32 %229 to i64
  %230 = load i32, i32* %j, align 4
  %sub402 = sub nsw i32 %230, 2
  %cmp403 = icmp sgt i32 0, %sub402
  br i1 %cmp403, label %cond.true.405, label %cond.false.406

cond.true.405:                                    ; preds = %cond.end.393
  br label %cond.end.408

cond.false.406:                                   ; preds = %cond.end.393
  %231 = load i32, i32* %j, align 4
  %sub407 = sub nsw i32 %231, 2
  br label %cond.end.408

cond.end.408:                                     ; preds = %cond.false.406, %cond.true.405
  %cond409 = phi i32 [ 0, %cond.true.405 ], [ %sub407, %cond.false.406 ]
  %idxprom410 = sext i32 %cond409 to i64
  %232 = load i32**, i32*** @img4Y_tmp, align 8
  %arrayidx411 = getelementptr inbounds i32*, i32** %232, i64 %idxprom410
  %233 = load i32*, i32** %arrayidx411, align 8
  %arrayidx412 = getelementptr inbounds i32, i32* %233, i64 %idxprom401
  %234 = load i32, i32* %arrayidx412, align 4
  %235 = load i32, i32* %i, align 4
  %idxprom413 = sext i32 %235 to i64
  %236 = load i32, i32* %maxy, align 4
  %237 = load i32, i32* %j, align 4
  %add414 = add nsw i32 %237, 3
  %cmp415 = icmp slt i32 %236, %add414
  br i1 %cmp415, label %cond.true.417, label %cond.false.418

cond.true.417:                                    ; preds = %cond.end.408
  %238 = load i32, i32* %maxy, align 4
  br label %cond.end.420

cond.false.418:                                   ; preds = %cond.end.408
  %239 = load i32, i32* %j, align 4
  %add419 = add nsw i32 %239, 3
  br label %cond.end.420

cond.end.420:                                     ; preds = %cond.false.418, %cond.true.417
  %cond421 = phi i32 [ %238, %cond.true.417 ], [ %add419, %cond.false.418 ]
  %idxprom422 = sext i32 %cond421 to i64
  %240 = load i32**, i32*** @img4Y_tmp, align 8
  %arrayidx423 = getelementptr inbounds i32*, i32** %240, i64 %idxprom422
  %241 = load i32*, i32** %arrayidx423, align 8
  %arrayidx424 = getelementptr inbounds i32, i32* %241, i64 %idxprom413
  %242 = load i32, i32* %arrayidx424, align 4
  %add425 = add nsw i32 %234, %242
  %mul426 = mul nsw i32 %228, %add425
  %add427 = add nsw i32 %add400, %mul426
  %div = sdiv i32 %add427, 32
  store i32 %div, i32* %is, align 4
  %243 = load i16**, i16*** %out4Y, align 8
  %244 = load i32, i32* %j, align 4
  %sub428 = sub nsw i32 %244, 4
  %mul429 = mul nsw i32 %sub428, 4
  %245 = load i32, i32* %i, align 4
  %sub430 = sub nsw i32 %245, 8
  %mul431 = mul nsw i32 %sub430, 2
  %246 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %max_imgpel_value = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %246, i32 0, i32 155
  %247 = load i32, i32* %max_imgpel_value, align 4
  %248 = load i32, i32* %i, align 4
  %idxprom432 = sext i32 %248 to i64
  %249 = load i32, i32* %j, align 4
  %idxprom433 = sext i32 %249 to i64
  %250 = load i32**, i32*** @img4Y_tmp, align 8
  %arrayidx434 = getelementptr inbounds i32*, i32** %250, i64 %idxprom433
  %251 = load i32*, i32** %arrayidx434, align 8
  %arrayidx435 = getelementptr inbounds i32, i32* %251, i64 %idxprom432
  %252 = load i32, i32* %arrayidx435, align 4
  %add436 = add nsw i32 %252, 512
  %div437 = sdiv i32 %add436, 1024
  %cmp438 = icmp slt i32 %247, %div437
  br i1 %cmp438, label %cond.true.440, label %cond.false.442

cond.true.440:                                    ; preds = %cond.end.420
  %253 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %max_imgpel_value441 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %253, i32 0, i32 155
  %254 = load i32, i32* %max_imgpel_value441, align 4
  br label %cond.end.449

cond.false.442:                                   ; preds = %cond.end.420
  %255 = load i32, i32* %i, align 4
  %idxprom443 = sext i32 %255 to i64
  %256 = load i32, i32* %j, align 4
  %idxprom444 = sext i32 %256 to i64
  %257 = load i32**, i32*** @img4Y_tmp, align 8
  %arrayidx445 = getelementptr inbounds i32*, i32** %257, i64 %idxprom444
  %258 = load i32*, i32** %arrayidx445, align 8
  %arrayidx446 = getelementptr inbounds i32, i32* %258, i64 %idxprom443
  %259 = load i32, i32* %arrayidx446, align 4
  %add447 = add nsw i32 %259, 512
  %div448 = sdiv i32 %add447, 1024
  br label %cond.end.449

cond.end.449:                                     ; preds = %cond.false.442, %cond.true.440
  %cond450 = phi i32 [ %254, %cond.true.440 ], [ %div448, %cond.false.442 ]
  %cmp451 = icmp sgt i32 0, %cond450
  br i1 %cmp451, label %cond.true.453, label %cond.false.454

cond.true.453:                                    ; preds = %cond.end.449
  br label %cond.end.475

cond.false.454:                                   ; preds = %cond.end.449
  %260 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %max_imgpel_value455 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %260, i32 0, i32 155
  %261 = load i32, i32* %max_imgpel_value455, align 4
  %262 = load i32, i32* %i, align 4
  %idxprom456 = sext i32 %262 to i64
  %263 = load i32, i32* %j, align 4
  %idxprom457 = sext i32 %263 to i64
  %264 = load i32**, i32*** @img4Y_tmp, align 8
  %arrayidx458 = getelementptr inbounds i32*, i32** %264, i64 %idxprom457
  %265 = load i32*, i32** %arrayidx458, align 8
  %arrayidx459 = getelementptr inbounds i32, i32* %265, i64 %idxprom456
  %266 = load i32, i32* %arrayidx459, align 4
  %add460 = add nsw i32 %266, 512
  %div461 = sdiv i32 %add460, 1024
  %cmp462 = icmp slt i32 %261, %div461
  br i1 %cmp462, label %cond.true.464, label %cond.false.466

cond.true.464:                                    ; preds = %cond.false.454
  %267 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %max_imgpel_value465 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %267, i32 0, i32 155
  %268 = load i32, i32* %max_imgpel_value465, align 4
  br label %cond.end.473

cond.false.466:                                   ; preds = %cond.false.454
  %269 = load i32, i32* %i, align 4
  %idxprom467 = sext i32 %269 to i64
  %270 = load i32, i32* %j, align 4
  %idxprom468 = sext i32 %270 to i64
  %271 = load i32**, i32*** @img4Y_tmp, align 8
  %arrayidx469 = getelementptr inbounds i32*, i32** %271, i64 %idxprom468
  %272 = load i32*, i32** %arrayidx469, align 8
  %arrayidx470 = getelementptr inbounds i32, i32* %272, i64 %idxprom467
  %273 = load i32, i32* %arrayidx470, align 4
  %add471 = add nsw i32 %273, 512
  %div472 = sdiv i32 %add471, 1024
  br label %cond.end.473

cond.end.473:                                     ; preds = %cond.false.466, %cond.true.464
  %cond474 = phi i32 [ %268, %cond.true.464 ], [ %div472, %cond.false.466 ]
  br label %cond.end.475

cond.end.475:                                     ; preds = %cond.end.473, %cond.true.453
  %cond476 = phi i32 [ 0, %cond.true.453 ], [ %cond474, %cond.end.473 ]
  %conv477 = trunc i32 %cond476 to i16
  call void @PutPel_14(i16** %243, i32 %mul429, i32 %mul431, i16 zeroext %conv477)
  %274 = load i16**, i16*** %out4Y, align 8
  %275 = load i32, i32* %j, align 4
  %sub478 = sub nsw i32 %275, 4
  %mul479 = mul nsw i32 %sub478, 4
  %add480 = add nsw i32 %mul479, 2
  %276 = load i32, i32* %i, align 4
  %sub481 = sub nsw i32 %276, 8
  %mul482 = mul nsw i32 %sub481, 2
  %277 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %max_imgpel_value483 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %277, i32 0, i32 155
  %278 = load i32, i32* %max_imgpel_value483, align 4
  %279 = load i32, i32* %is, align 4
  %add484 = add nsw i32 %279, 512
  %div485 = sdiv i32 %add484, 1024
  %cmp486 = icmp slt i32 %278, %div485
  br i1 %cmp486, label %cond.true.488, label %cond.false.490

cond.true.488:                                    ; preds = %cond.end.475
  %280 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %max_imgpel_value489 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %280, i32 0, i32 155
  %281 = load i32, i32* %max_imgpel_value489, align 4
  br label %cond.end.493

cond.false.490:                                   ; preds = %cond.end.475
  %282 = load i32, i32* %is, align 4
  %add491 = add nsw i32 %282, 512
  %div492 = sdiv i32 %add491, 1024
  br label %cond.end.493

cond.end.493:                                     ; preds = %cond.false.490, %cond.true.488
  %cond494 = phi i32 [ %281, %cond.true.488 ], [ %div492, %cond.false.490 ]
  %cmp495 = icmp sgt i32 0, %cond494
  br i1 %cmp495, label %cond.true.497, label %cond.false.498

cond.true.497:                                    ; preds = %cond.end.493
  br label %cond.end.511

cond.false.498:                                   ; preds = %cond.end.493
  %283 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %max_imgpel_value499 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %283, i32 0, i32 155
  %284 = load i32, i32* %max_imgpel_value499, align 4
  %285 = load i32, i32* %is, align 4
  %add500 = add nsw i32 %285, 512
  %div501 = sdiv i32 %add500, 1024
  %cmp502 = icmp slt i32 %284, %div501
  br i1 %cmp502, label %cond.true.504, label %cond.false.506

cond.true.504:                                    ; preds = %cond.false.498
  %286 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %max_imgpel_value505 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %286, i32 0, i32 155
  %287 = load i32, i32* %max_imgpel_value505, align 4
  br label %cond.end.509

cond.false.506:                                   ; preds = %cond.false.498
  %288 = load i32, i32* %is, align 4
  %add507 = add nsw i32 %288, 512
  %div508 = sdiv i32 %add507, 1024
  br label %cond.end.509

cond.end.509:                                     ; preds = %cond.false.506, %cond.true.504
  %cond510 = phi i32 [ %287, %cond.true.504 ], [ %div508, %cond.false.506 ]
  br label %cond.end.511

cond.end.511:                                     ; preds = %cond.end.509, %cond.true.497
  %cond512 = phi i32 [ 0, %cond.true.497 ], [ %cond510, %cond.end.509 ]
  %conv513 = trunc i32 %cond512 to i16
  call void @PutPel_14(i16** %274, i32 %add480, i32 %mul482, i16 zeroext %conv513)
  br label %for.inc.514

for.inc.514:                                      ; preds = %cond.end.511
  %289 = load i32, i32* %j, align 4
  %inc515 = add nsw i32 %289, 1
  store i32 %inc515, i32* %j, align 4
  br label %for.cond.346

for.end.516:                                      ; preds = %for.cond.346
  br label %for.inc.517

for.inc.517:                                      ; preds = %for.end.516
  %290 = load i32, i32* %i, align 4
  %inc518 = add nsw i32 %290, 1
  store i32 %inc518, i32* %i, align 4
  br label %for.cond.339

for.end.519:                                      ; preds = %for.cond.339
  %291 = load %struct.storable_picture*, %struct.storable_picture** %s.addr, align 8
  %size_x520 = getelementptr inbounds %struct.storable_picture, %struct.storable_picture* %291, i32 0, i32 18
  %292 = load i32, i32* %size_x520, align 4
  %add521 = add nsw i32 %292, 8
  %sub522 = sub nsw i32 %add521, 1
  %mul523 = mul nsw i32 %sub522, 4
  store i32 %mul523, i32* %ie2, align 4
  %293 = load %struct.storable_picture*, %struct.storable_picture** %s.addr, align 8
  %size_y524 = getelementptr inbounds %struct.storable_picture, %struct.storable_picture* %293, i32 0, i32 19
  %294 = load i32, i32* %size_y524, align 4
  %add525 = add nsw i32 %294, 8
  %sub526 = sub nsw i32 %add525, 1
  %mul527 = mul nsw i32 %sub526, 4
  store i32 %mul527, i32* %je2, align 4
  store i32 0, i32* %j, align 4
  br label %for.cond.528

for.cond.528:                                     ; preds = %for.inc.651, %for.end.519
  %295 = load i32, i32* %j, align 4
  %296 = load i32, i32* %je2, align 4
  %add529 = add nsw i32 %296, 4
  %cmp530 = icmp slt i32 %295, %add529
  br i1 %cmp530, label %for.body.532, label %for.end.653

for.body.532:                                     ; preds = %for.cond.528
  store i32 0, i32* %i, align 4
  br label %for.cond.533

for.cond.533:                                     ; preds = %for.inc.648, %for.body.532
  %297 = load i32, i32* %i, align 4
  %298 = load i32, i32* %ie2, align 4
  %add534 = add nsw i32 %298, 3
  %cmp535 = icmp slt i32 %297, %add534
  br i1 %cmp535, label %for.body.537, label %for.end.650

for.body.537:                                     ; preds = %for.cond.533
  %299 = load i16**, i16*** %out4Y, align 8
  %300 = load i32, i32* %j, align 4
  %sub538 = sub nsw i32 %300, 16
  %301 = load i32, i32* %i, align 4
  %sub539 = sub nsw i32 %301, 16
  %add540 = add nsw i32 %sub539, 1
  %302 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %max_imgpel_value541 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %302, i32 0, i32 155
  %303 = load i32, i32* %max_imgpel_value541, align 4
  %304 = load i16**, i16*** %out4Y, align 8
  %305 = load i32, i32* %j, align 4
  %sub542 = sub nsw i32 %305, 16
  %306 = load i32, i32* %i, align 4
  %sub543 = sub nsw i32 %306, 16
  %307 = load i32, i32* %img_height, align 4
  %308 = load i32, i32* %img_width, align 4
  %call544 = call zeroext i16 @FastPelY_14(i16** %304, i32 %sub542, i32 %sub543, i32 %307, i32 %308)
  %conv545 = zext i16 %call544 to i32
  %309 = load i16**, i16*** %out4Y, align 8
  %310 = load i32, i32* %j, align 4
  %sub546 = sub nsw i32 %310, 16
  %311 = load i32, i32* %ie2, align 4
  %add547 = add nsw i32 %311, 2
  %312 = load i32, i32* %i, align 4
  %add548 = add nsw i32 %312, 2
  %cmp549 = icmp slt i32 %add547, %add548
  br i1 %cmp549, label %cond.true.551, label %cond.false.553

cond.true.551:                                    ; preds = %for.body.537
  %313 = load i32, i32* %ie2, align 4
  %add552 = add nsw i32 %313, 2
  br label %cond.end.555

cond.false.553:                                   ; preds = %for.body.537
  %314 = load i32, i32* %i, align 4
  %add554 = add nsw i32 %314, 2
  br label %cond.end.555

cond.end.555:                                     ; preds = %cond.false.553, %cond.true.551
  %cond556 = phi i32 [ %add552, %cond.true.551 ], [ %add554, %cond.false.553 ]
  %sub557 = sub nsw i32 %cond556, 16
  %315 = load i32, i32* %img_height, align 4
  %316 = load i32, i32* %img_width, align 4
  %call558 = call zeroext i16 @FastPelY_14(i16** %309, i32 %sub546, i32 %sub557, i32 %315, i32 %316)
  %conv559 = zext i16 %call558 to i32
  %add560 = add nsw i32 %conv545, %conv559
  %add561 = add nsw i32 %add560, 1
  %div562 = sdiv i32 %add561, 2
  %cmp563 = icmp slt i32 %303, %div562
  br i1 %cmp563, label %cond.true.565, label %cond.false.567

cond.true.565:                                    ; preds = %cond.end.555
  %317 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %max_imgpel_value566 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %317, i32 0, i32 155
  %318 = load i32, i32* %max_imgpel_value566, align 4
  br label %cond.end.589

cond.false.567:                                   ; preds = %cond.end.555
  %319 = load i16**, i16*** %out4Y, align 8
  %320 = load i32, i32* %j, align 4
  %sub568 = sub nsw i32 %320, 16
  %321 = load i32, i32* %i, align 4
  %sub569 = sub nsw i32 %321, 16
  %322 = load i32, i32* %img_height, align 4
  %323 = load i32, i32* %img_width, align 4
  %call570 = call zeroext i16 @FastPelY_14(i16** %319, i32 %sub568, i32 %sub569, i32 %322, i32 %323)
  %conv571 = zext i16 %call570 to i32
  %324 = load i16**, i16*** %out4Y, align 8
  %325 = load i32, i32* %j, align 4
  %sub572 = sub nsw i32 %325, 16
  %326 = load i32, i32* %ie2, align 4
  %add573 = add nsw i32 %326, 2
  %327 = load i32, i32* %i, align 4
  %add574 = add nsw i32 %327, 2
  %cmp575 = icmp slt i32 %add573, %add574
  br i1 %cmp575, label %cond.true.577, label %cond.false.579

cond.true.577:                                    ; preds = %cond.false.567
  %328 = load i32, i32* %ie2, align 4
  %add578 = add nsw i32 %328, 2
  br label %cond.end.581

cond.false.579:                                   ; preds = %cond.false.567
  %329 = load i32, i32* %i, align 4
  %add580 = add nsw i32 %329, 2
  br label %cond.end.581

cond.end.581:                                     ; preds = %cond.false.579, %cond.true.577
  %cond582 = phi i32 [ %add578, %cond.true.577 ], [ %add580, %cond.false.579 ]
  %sub583 = sub nsw i32 %cond582, 16
  %330 = load i32, i32* %img_height, align 4
  %331 = load i32, i32* %img_width, align 4
  %call584 = call zeroext i16 @FastPelY_14(i16** %324, i32 %sub572, i32 %sub583, i32 %330, i32 %331)
  %conv585 = zext i16 %call584 to i32
  %add586 = add nsw i32 %conv571, %conv585
  %add587 = add nsw i32 %add586, 1
  %div588 = sdiv i32 %add587, 2
  br label %cond.end.589

cond.end.589:                                     ; preds = %cond.end.581, %cond.true.565
  %cond590 = phi i32 [ %318, %cond.true.565 ], [ %div588, %cond.end.581 ]
  %cmp591 = icmp sgt i32 0, %cond590
  br i1 %cmp591, label %cond.true.593, label %cond.false.594

cond.true.593:                                    ; preds = %cond.end.589
  br label %cond.end.645

cond.false.594:                                   ; preds = %cond.end.589
  %332 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %max_imgpel_value595 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %332, i32 0, i32 155
  %333 = load i32, i32* %max_imgpel_value595, align 4
  %334 = load i16**, i16*** %out4Y, align 8
  %335 = load i32, i32* %j, align 4
  %sub596 = sub nsw i32 %335, 16
  %336 = load i32, i32* %i, align 4
  %sub597 = sub nsw i32 %336, 16
  %337 = load i32, i32* %img_height, align 4
  %338 = load i32, i32* %img_width, align 4
  %call598 = call zeroext i16 @FastPelY_14(i16** %334, i32 %sub596, i32 %sub597, i32 %337, i32 %338)
  %conv599 = zext i16 %call598 to i32
  %339 = load i16**, i16*** %out4Y, align 8
  %340 = load i32, i32* %j, align 4
  %sub600 = sub nsw i32 %340, 16
  %341 = load i32, i32* %ie2, align 4
  %add601 = add nsw i32 %341, 2
  %342 = load i32, i32* %i, align 4
  %add602 = add nsw i32 %342, 2
  %cmp603 = icmp slt i32 %add601, %add602
  br i1 %cmp603, label %cond.true.605, label %cond.false.607

cond.true.605:                                    ; preds = %cond.false.594
  %343 = load i32, i32* %ie2, align 4
  %add606 = add nsw i32 %343, 2
  br label %cond.end.609

cond.false.607:                                   ; preds = %cond.false.594
  %344 = load i32, i32* %i, align 4
  %add608 = add nsw i32 %344, 2
  br label %cond.end.609

cond.end.609:                                     ; preds = %cond.false.607, %cond.true.605
  %cond610 = phi i32 [ %add606, %cond.true.605 ], [ %add608, %cond.false.607 ]
  %sub611 = sub nsw i32 %cond610, 16
  %345 = load i32, i32* %img_height, align 4
  %346 = load i32, i32* %img_width, align 4
  %call612 = call zeroext i16 @FastPelY_14(i16** %339, i32 %sub600, i32 %sub611, i32 %345, i32 %346)
  %conv613 = zext i16 %call612 to i32
  %add614 = add nsw i32 %conv599, %conv613
  %add615 = add nsw i32 %add614, 1
  %div616 = sdiv i32 %add615, 2
  %cmp617 = icmp slt i32 %333, %div616
  br i1 %cmp617, label %cond.true.619, label %cond.false.621

cond.true.619:                                    ; preds = %cond.end.609
  %347 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %max_imgpel_value620 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %347, i32 0, i32 155
  %348 = load i32, i32* %max_imgpel_value620, align 4
  br label %cond.end.643

cond.false.621:                                   ; preds = %cond.end.609
  %349 = load i16**, i16*** %out4Y, align 8
  %350 = load i32, i32* %j, align 4
  %sub622 = sub nsw i32 %350, 16
  %351 = load i32, i32* %i, align 4
  %sub623 = sub nsw i32 %351, 16
  %352 = load i32, i32* %img_height, align 4
  %353 = load i32, i32* %img_width, align 4
  %call624 = call zeroext i16 @FastPelY_14(i16** %349, i32 %sub622, i32 %sub623, i32 %352, i32 %353)
  %conv625 = zext i16 %call624 to i32
  %354 = load i16**, i16*** %out4Y, align 8
  %355 = load i32, i32* %j, align 4
  %sub626 = sub nsw i32 %355, 16
  %356 = load i32, i32* %ie2, align 4
  %add627 = add nsw i32 %356, 2
  %357 = load i32, i32* %i, align 4
  %add628 = add nsw i32 %357, 2
  %cmp629 = icmp slt i32 %add627, %add628
  br i1 %cmp629, label %cond.true.631, label %cond.false.633

cond.true.631:                                    ; preds = %cond.false.621
  %358 = load i32, i32* %ie2, align 4
  %add632 = add nsw i32 %358, 2
  br label %cond.end.635

cond.false.633:                                   ; preds = %cond.false.621
  %359 = load i32, i32* %i, align 4
  %add634 = add nsw i32 %359, 2
  br label %cond.end.635

cond.end.635:                                     ; preds = %cond.false.633, %cond.true.631
  %cond636 = phi i32 [ %add632, %cond.true.631 ], [ %add634, %cond.false.633 ]
  %sub637 = sub nsw i32 %cond636, 16
  %360 = load i32, i32* %img_height, align 4
  %361 = load i32, i32* %img_width, align 4
  %call638 = call zeroext i16 @FastPelY_14(i16** %354, i32 %sub626, i32 %sub637, i32 %360, i32 %361)
  %conv639 = zext i16 %call638 to i32
  %add640 = add nsw i32 %conv625, %conv639
  %add641 = add nsw i32 %add640, 1
  %div642 = sdiv i32 %add641, 2
  br label %cond.end.643

cond.end.643:                                     ; preds = %cond.end.635, %cond.true.619
  %cond644 = phi i32 [ %348, %cond.true.619 ], [ %div642, %cond.end.635 ]
  br label %cond.end.645

cond.end.645:                                     ; preds = %cond.end.643, %cond.true.593
  %cond646 = phi i32 [ 0, %cond.true.593 ], [ %cond644, %cond.end.643 ]
  %conv647 = trunc i32 %cond646 to i16
  call void @PutPel_14(i16** %299, i32 %sub538, i32 %add540, i16 zeroext %conv647)
  br label %for.inc.648

for.inc.648:                                      ; preds = %cond.end.645
  %362 = load i32, i32* %i, align 4
  %add649 = add nsw i32 %362, 2
  store i32 %add649, i32* %i, align 4
  br label %for.cond.533

for.end.650:                                      ; preds = %for.cond.533
  br label %for.inc.651

for.inc.651:                                      ; preds = %for.end.650
  %363 = load i32, i32* %j, align 4
  %add652 = add nsw i32 %363, 2
  store i32 %add652, i32* %j, align 4
  br label %for.cond.528

for.end.653:                                      ; preds = %for.cond.528
  store i32 0, i32* %i, align 4
  br label %for.cond.654

for.cond.654:                                     ; preds = %for.inc.1106, %for.end.653
  %364 = load i32, i32* %i, align 4
  %365 = load i32, i32* %ie2, align 4
  %add655 = add nsw i32 %365, 4
  %cmp656 = icmp slt i32 %364, %add655
  br i1 %cmp656, label %for.body.658, label %for.end.1108

for.body.658:                                     ; preds = %for.cond.654
  store i32 0, i32* %j, align 4
  br label %for.cond.659

for.cond.659:                                     ; preds = %for.inc.1103, %for.body.658
  %366 = load i32, i32* %j, align 4
  %367 = load i32, i32* %je2, align 4
  %add660 = add nsw i32 %367, 3
  %cmp661 = icmp slt i32 %366, %add660
  br i1 %cmp661, label %for.body.663, label %for.end.1105

for.body.663:                                     ; preds = %for.cond.659
  %368 = load i32, i32* %i, align 4
  %rem = srem i32 %368, 2
  %cmp664 = icmp eq i32 %rem, 0
  br i1 %cmp664, label %if.then.666, label %if.else

if.then.666:                                      ; preds = %for.body.663
  %369 = load i16**, i16*** %out4Y, align 8
  %370 = load i32, i32* %j, align 4
  %sub667 = sub nsw i32 %370, 16
  %add668 = add nsw i32 %sub667, 1
  %371 = load i32, i32* %i, align 4
  %sub669 = sub nsw i32 %371, 16
  %372 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %max_imgpel_value670 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %372, i32 0, i32 155
  %373 = load i32, i32* %max_imgpel_value670, align 4
  %374 = load i16**, i16*** %out4Y, align 8
  %375 = load i32, i32* %j, align 4
  %sub671 = sub nsw i32 %375, 16
  %376 = load i32, i32* %i, align 4
  %sub672 = sub nsw i32 %376, 16
  %377 = load i32, i32* %img_height, align 4
  %378 = load i32, i32* %img_width, align 4
  %call673 = call zeroext i16 @FastPelY_14(i16** %374, i32 %sub671, i32 %sub672, i32 %377, i32 %378)
  %conv674 = zext i16 %call673 to i32
  %379 = load i16**, i16*** %out4Y, align 8
  %380 = load i32, i32* %je2, align 4
  %add675 = add nsw i32 %380, 2
  %381 = load i32, i32* %j, align 4
  %add676 = add nsw i32 %381, 2
  %cmp677 = icmp slt i32 %add675, %add676
  br i1 %cmp677, label %cond.true.679, label %cond.false.681

cond.true.679:                                    ; preds = %if.then.666
  %382 = load i32, i32* %je2, align 4
  %add680 = add nsw i32 %382, 2
  br label %cond.end.683

cond.false.681:                                   ; preds = %if.then.666
  %383 = load i32, i32* %j, align 4
  %add682 = add nsw i32 %383, 2
  br label %cond.end.683

cond.end.683:                                     ; preds = %cond.false.681, %cond.true.679
  %cond684 = phi i32 [ %add680, %cond.true.679 ], [ %add682, %cond.false.681 ]
  %sub685 = sub nsw i32 %cond684, 16
  %384 = load i32, i32* %i, align 4
  %sub686 = sub nsw i32 %384, 16
  %385 = load i32, i32* %img_height, align 4
  %386 = load i32, i32* %img_width, align 4
  %call687 = call zeroext i16 @FastPelY_14(i16** %379, i32 %sub685, i32 %sub686, i32 %385, i32 %386)
  %conv688 = zext i16 %call687 to i32
  %add689 = add nsw i32 %conv674, %conv688
  %add690 = add nsw i32 %add689, 1
  %div691 = sdiv i32 %add690, 2
  %cmp692 = icmp slt i32 %373, %div691
  br i1 %cmp692, label %cond.true.694, label %cond.false.696

cond.true.694:                                    ; preds = %cond.end.683
  %387 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %max_imgpel_value695 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %387, i32 0, i32 155
  %388 = load i32, i32* %max_imgpel_value695, align 4
  br label %cond.end.718

cond.false.696:                                   ; preds = %cond.end.683
  %389 = load i16**, i16*** %out4Y, align 8
  %390 = load i32, i32* %j, align 4
  %sub697 = sub nsw i32 %390, 16
  %391 = load i32, i32* %i, align 4
  %sub698 = sub nsw i32 %391, 16
  %392 = load i32, i32* %img_height, align 4
  %393 = load i32, i32* %img_width, align 4
  %call699 = call zeroext i16 @FastPelY_14(i16** %389, i32 %sub697, i32 %sub698, i32 %392, i32 %393)
  %conv700 = zext i16 %call699 to i32
  %394 = load i16**, i16*** %out4Y, align 8
  %395 = load i32, i32* %je2, align 4
  %add701 = add nsw i32 %395, 2
  %396 = load i32, i32* %j, align 4
  %add702 = add nsw i32 %396, 2
  %cmp703 = icmp slt i32 %add701, %add702
  br i1 %cmp703, label %cond.true.705, label %cond.false.707

cond.true.705:                                    ; preds = %cond.false.696
  %397 = load i32, i32* %je2, align 4
  %add706 = add nsw i32 %397, 2
  br label %cond.end.709

cond.false.707:                                   ; preds = %cond.false.696
  %398 = load i32, i32* %j, align 4
  %add708 = add nsw i32 %398, 2
  br label %cond.end.709

cond.end.709:                                     ; preds = %cond.false.707, %cond.true.705
  %cond710 = phi i32 [ %add706, %cond.true.705 ], [ %add708, %cond.false.707 ]
  %sub711 = sub nsw i32 %cond710, 16
  %399 = load i32, i32* %i, align 4
  %sub712 = sub nsw i32 %399, 16
  %400 = load i32, i32* %img_height, align 4
  %401 = load i32, i32* %img_width, align 4
  %call713 = call zeroext i16 @FastPelY_14(i16** %394, i32 %sub711, i32 %sub712, i32 %400, i32 %401)
  %conv714 = zext i16 %call713 to i32
  %add715 = add nsw i32 %conv700, %conv714
  %add716 = add nsw i32 %add715, 1
  %div717 = sdiv i32 %add716, 2
  br label %cond.end.718

cond.end.718:                                     ; preds = %cond.end.709, %cond.true.694
  %cond719 = phi i32 [ %388, %cond.true.694 ], [ %div717, %cond.end.709 ]
  %cmp720 = icmp sgt i32 0, %cond719
  br i1 %cmp720, label %cond.true.722, label %cond.false.723

cond.true.722:                                    ; preds = %cond.end.718
  br label %cond.end.774

cond.false.723:                                   ; preds = %cond.end.718
  %402 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %max_imgpel_value724 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %402, i32 0, i32 155
  %403 = load i32, i32* %max_imgpel_value724, align 4
  %404 = load i16**, i16*** %out4Y, align 8
  %405 = load i32, i32* %j, align 4
  %sub725 = sub nsw i32 %405, 16
  %406 = load i32, i32* %i, align 4
  %sub726 = sub nsw i32 %406, 16
  %407 = load i32, i32* %img_height, align 4
  %408 = load i32, i32* %img_width, align 4
  %call727 = call zeroext i16 @FastPelY_14(i16** %404, i32 %sub725, i32 %sub726, i32 %407, i32 %408)
  %conv728 = zext i16 %call727 to i32
  %409 = load i16**, i16*** %out4Y, align 8
  %410 = load i32, i32* %je2, align 4
  %add729 = add nsw i32 %410, 2
  %411 = load i32, i32* %j, align 4
  %add730 = add nsw i32 %411, 2
  %cmp731 = icmp slt i32 %add729, %add730
  br i1 %cmp731, label %cond.true.733, label %cond.false.735

cond.true.733:                                    ; preds = %cond.false.723
  %412 = load i32, i32* %je2, align 4
  %add734 = add nsw i32 %412, 2
  br label %cond.end.737

cond.false.735:                                   ; preds = %cond.false.723
  %413 = load i32, i32* %j, align 4
  %add736 = add nsw i32 %413, 2
  br label %cond.end.737

cond.end.737:                                     ; preds = %cond.false.735, %cond.true.733
  %cond738 = phi i32 [ %add734, %cond.true.733 ], [ %add736, %cond.false.735 ]
  %sub739 = sub nsw i32 %cond738, 16
  %414 = load i32, i32* %i, align 4
  %sub740 = sub nsw i32 %414, 16
  %415 = load i32, i32* %img_height, align 4
  %416 = load i32, i32* %img_width, align 4
  %call741 = call zeroext i16 @FastPelY_14(i16** %409, i32 %sub739, i32 %sub740, i32 %415, i32 %416)
  %conv742 = zext i16 %call741 to i32
  %add743 = add nsw i32 %conv728, %conv742
  %add744 = add nsw i32 %add743, 1
  %div745 = sdiv i32 %add744, 2
  %cmp746 = icmp slt i32 %403, %div745
  br i1 %cmp746, label %cond.true.748, label %cond.false.750

cond.true.748:                                    ; preds = %cond.end.737
  %417 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %max_imgpel_value749 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %417, i32 0, i32 155
  %418 = load i32, i32* %max_imgpel_value749, align 4
  br label %cond.end.772

cond.false.750:                                   ; preds = %cond.end.737
  %419 = load i16**, i16*** %out4Y, align 8
  %420 = load i32, i32* %j, align 4
  %sub751 = sub nsw i32 %420, 16
  %421 = load i32, i32* %i, align 4
  %sub752 = sub nsw i32 %421, 16
  %422 = load i32, i32* %img_height, align 4
  %423 = load i32, i32* %img_width, align 4
  %call753 = call zeroext i16 @FastPelY_14(i16** %419, i32 %sub751, i32 %sub752, i32 %422, i32 %423)
  %conv754 = zext i16 %call753 to i32
  %424 = load i16**, i16*** %out4Y, align 8
  %425 = load i32, i32* %je2, align 4
  %add755 = add nsw i32 %425, 2
  %426 = load i32, i32* %j, align 4
  %add756 = add nsw i32 %426, 2
  %cmp757 = icmp slt i32 %add755, %add756
  br i1 %cmp757, label %cond.true.759, label %cond.false.761

cond.true.759:                                    ; preds = %cond.false.750
  %427 = load i32, i32* %je2, align 4
  %add760 = add nsw i32 %427, 2
  br label %cond.end.763

cond.false.761:                                   ; preds = %cond.false.750
  %428 = load i32, i32* %j, align 4
  %add762 = add nsw i32 %428, 2
  br label %cond.end.763

cond.end.763:                                     ; preds = %cond.false.761, %cond.true.759
  %cond764 = phi i32 [ %add760, %cond.true.759 ], [ %add762, %cond.false.761 ]
  %sub765 = sub nsw i32 %cond764, 16
  %429 = load i32, i32* %i, align 4
  %sub766 = sub nsw i32 %429, 16
  %430 = load i32, i32* %img_height, align 4
  %431 = load i32, i32* %img_width, align 4
  %call767 = call zeroext i16 @FastPelY_14(i16** %424, i32 %sub765, i32 %sub766, i32 %430, i32 %431)
  %conv768 = zext i16 %call767 to i32
  %add769 = add nsw i32 %conv754, %conv768
  %add770 = add nsw i32 %add769, 1
  %div771 = sdiv i32 %add770, 2
  br label %cond.end.772

cond.end.772:                                     ; preds = %cond.end.763, %cond.true.748
  %cond773 = phi i32 [ %418, %cond.true.748 ], [ %div771, %cond.end.763 ]
  br label %cond.end.774

cond.end.774:                                     ; preds = %cond.end.772, %cond.true.722
  %cond775 = phi i32 [ 0, %cond.true.722 ], [ %cond773, %cond.end.772 ]
  %conv776 = trunc i32 %cond775 to i16
  call void @PutPel_14(i16** %369, i32 %add668, i32 %sub669, i16 zeroext %conv776)
  br label %if.end.1102

if.else:                                          ; preds = %for.body.663
  %432 = load i32, i32* %j, align 4
  %rem777 = srem i32 %432, 4
  %cmp778 = icmp eq i32 %rem777, 0
  br i1 %cmp778, label %land.lhs.true, label %lor.lhs.false.783

land.lhs.true:                                    ; preds = %if.else
  %433 = load i32, i32* %i, align 4
  %rem780 = srem i32 %433, 4
  %cmp781 = icmp eq i32 %rem780, 1
  br i1 %cmp781, label %if.then.791, label %lor.lhs.false.783

lor.lhs.false.783:                                ; preds = %land.lhs.true, %if.else
  %434 = load i32, i32* %j, align 4
  %rem784 = srem i32 %434, 4
  %cmp785 = icmp eq i32 %rem784, 2
  br i1 %cmp785, label %land.lhs.true.787, label %if.else.946

land.lhs.true.787:                                ; preds = %lor.lhs.false.783
  %435 = load i32, i32* %i, align 4
  %rem788 = srem i32 %435, 4
  %cmp789 = icmp eq i32 %rem788, 3
  br i1 %cmp789, label %if.then.791, label %if.else.946

if.then.791:                                      ; preds = %land.lhs.true.787, %land.lhs.true
  %436 = load i16**, i16*** %out4Y, align 8
  %437 = load i32, i32* %j, align 4
  %sub792 = sub nsw i32 %437, 16
  %add793 = add nsw i32 %sub792, 1
  %438 = load i32, i32* %i, align 4
  %sub794 = sub nsw i32 %438, 16
  %439 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %max_imgpel_value795 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %439, i32 0, i32 155
  %440 = load i32, i32* %max_imgpel_value795, align 4
  %441 = load i16**, i16*** %out4Y, align 8
  %442 = load i32, i32* %j, align 4
  %sub796 = sub nsw i32 %442, 16
  %443 = load i32, i32* %ie2, align 4
  %add797 = add nsw i32 %443, 2
  %444 = load i32, i32* %i, align 4
  %add798 = add nsw i32 %444, 1
  %cmp799 = icmp slt i32 %add797, %add798
  br i1 %cmp799, label %cond.true.801, label %cond.false.803

cond.true.801:                                    ; preds = %if.then.791
  %445 = load i32, i32* %ie2, align 4
  %add802 = add nsw i32 %445, 2
  br label %cond.end.805

cond.false.803:                                   ; preds = %if.then.791
  %446 = load i32, i32* %i, align 4
  %add804 = add nsw i32 %446, 1
  br label %cond.end.805

cond.end.805:                                     ; preds = %cond.false.803, %cond.true.801
  %cond806 = phi i32 [ %add802, %cond.true.801 ], [ %add804, %cond.false.803 ]
  %sub807 = sub nsw i32 %cond806, 16
  %447 = load i32, i32* %img_height, align 4
  %448 = load i32, i32* %img_width, align 4
  %call808 = call zeroext i16 @FastPelY_14(i16** %441, i32 %sub796, i32 %sub807, i32 %447, i32 %448)
  %conv809 = zext i16 %call808 to i32
  %449 = load i16**, i16*** %out4Y, align 8
  %450 = load i32, i32* %je2, align 4
  %add810 = add nsw i32 %450, 2
  %451 = load i32, i32* %j, align 4
  %add811 = add nsw i32 %451, 2
  %cmp812 = icmp slt i32 %add810, %add811
  br i1 %cmp812, label %cond.true.814, label %cond.false.816

cond.true.814:                                    ; preds = %cond.end.805
  %452 = load i32, i32* %je2, align 4
  %add815 = add nsw i32 %452, 2
  br label %cond.end.818

cond.false.816:                                   ; preds = %cond.end.805
  %453 = load i32, i32* %j, align 4
  %add817 = add nsw i32 %453, 2
  br label %cond.end.818

cond.end.818:                                     ; preds = %cond.false.816, %cond.true.814
  %cond819 = phi i32 [ %add815, %cond.true.814 ], [ %add817, %cond.false.816 ]
  %sub820 = sub nsw i32 %cond819, 16
  %454 = load i32, i32* %i, align 4
  %sub821 = sub nsw i32 %454, 16
  %sub822 = sub nsw i32 %sub821, 1
  %455 = load i32, i32* %img_height, align 4
  %456 = load i32, i32* %img_width, align 4
  %call823 = call zeroext i16 @FastPelY_14(i16** %449, i32 %sub820, i32 %sub822, i32 %455, i32 %456)
  %conv824 = zext i16 %call823 to i32
  %add825 = add nsw i32 %conv809, %conv824
  %add826 = add nsw i32 %add825, 1
  %div827 = sdiv i32 %add826, 2
  %cmp828 = icmp slt i32 %440, %div827
  br i1 %cmp828, label %cond.true.830, label %cond.false.832

cond.true.830:                                    ; preds = %cond.end.818
  %457 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %max_imgpel_value831 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %457, i32 0, i32 155
  %458 = load i32, i32* %max_imgpel_value831, align 4
  br label %cond.end.865

cond.false.832:                                   ; preds = %cond.end.818
  %459 = load i16**, i16*** %out4Y, align 8
  %460 = load i32, i32* %j, align 4
  %sub833 = sub nsw i32 %460, 16
  %461 = load i32, i32* %ie2, align 4
  %add834 = add nsw i32 %461, 2
  %462 = load i32, i32* %i, align 4
  %add835 = add nsw i32 %462, 1
  %cmp836 = icmp slt i32 %add834, %add835
  br i1 %cmp836, label %cond.true.838, label %cond.false.840

cond.true.838:                                    ; preds = %cond.false.832
  %463 = load i32, i32* %ie2, align 4
  %add839 = add nsw i32 %463, 2
  br label %cond.end.842

cond.false.840:                                   ; preds = %cond.false.832
  %464 = load i32, i32* %i, align 4
  %add841 = add nsw i32 %464, 1
  br label %cond.end.842

cond.end.842:                                     ; preds = %cond.false.840, %cond.true.838
  %cond843 = phi i32 [ %add839, %cond.true.838 ], [ %add841, %cond.false.840 ]
  %sub844 = sub nsw i32 %cond843, 16
  %465 = load i32, i32* %img_height, align 4
  %466 = load i32, i32* %img_width, align 4
  %call845 = call zeroext i16 @FastPelY_14(i16** %459, i32 %sub833, i32 %sub844, i32 %465, i32 %466)
  %conv846 = zext i16 %call845 to i32
  %467 = load i16**, i16*** %out4Y, align 8
  %468 = load i32, i32* %je2, align 4
  %add847 = add nsw i32 %468, 2
  %469 = load i32, i32* %j, align 4
  %add848 = add nsw i32 %469, 2
  %cmp849 = icmp slt i32 %add847, %add848
  br i1 %cmp849, label %cond.true.851, label %cond.false.853

cond.true.851:                                    ; preds = %cond.end.842
  %470 = load i32, i32* %je2, align 4
  %add852 = add nsw i32 %470, 2
  br label %cond.end.855

cond.false.853:                                   ; preds = %cond.end.842
  %471 = load i32, i32* %j, align 4
  %add854 = add nsw i32 %471, 2
  br label %cond.end.855

cond.end.855:                                     ; preds = %cond.false.853, %cond.true.851
  %cond856 = phi i32 [ %add852, %cond.true.851 ], [ %add854, %cond.false.853 ]
  %sub857 = sub nsw i32 %cond856, 16
  %472 = load i32, i32* %i, align 4
  %sub858 = sub nsw i32 %472, 16
  %sub859 = sub nsw i32 %sub858, 1
  %473 = load i32, i32* %img_height, align 4
  %474 = load i32, i32* %img_width, align 4
  %call860 = call zeroext i16 @FastPelY_14(i16** %467, i32 %sub857, i32 %sub859, i32 %473, i32 %474)
  %conv861 = zext i16 %call860 to i32
  %add862 = add nsw i32 %conv846, %conv861
  %add863 = add nsw i32 %add862, 1
  %div864 = sdiv i32 %add863, 2
  br label %cond.end.865

cond.end.865:                                     ; preds = %cond.end.855, %cond.true.830
  %cond866 = phi i32 [ %458, %cond.true.830 ], [ %div864, %cond.end.855 ]
  %cmp867 = icmp sgt i32 0, %cond866
  br i1 %cmp867, label %cond.true.869, label %cond.false.870

cond.true.869:                                    ; preds = %cond.end.865
  br label %cond.end.943

cond.false.870:                                   ; preds = %cond.end.865
  %475 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %max_imgpel_value871 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %475, i32 0, i32 155
  %476 = load i32, i32* %max_imgpel_value871, align 4
  %477 = load i16**, i16*** %out4Y, align 8
  %478 = load i32, i32* %j, align 4
  %sub872 = sub nsw i32 %478, 16
  %479 = load i32, i32* %ie2, align 4
  %add873 = add nsw i32 %479, 2
  %480 = load i32, i32* %i, align 4
  %add874 = add nsw i32 %480, 1
  %cmp875 = icmp slt i32 %add873, %add874
  br i1 %cmp875, label %cond.true.877, label %cond.false.879

cond.true.877:                                    ; preds = %cond.false.870
  %481 = load i32, i32* %ie2, align 4
  %add878 = add nsw i32 %481, 2
  br label %cond.end.881

cond.false.879:                                   ; preds = %cond.false.870
  %482 = load i32, i32* %i, align 4
  %add880 = add nsw i32 %482, 1
  br label %cond.end.881

cond.end.881:                                     ; preds = %cond.false.879, %cond.true.877
  %cond882 = phi i32 [ %add878, %cond.true.877 ], [ %add880, %cond.false.879 ]
  %sub883 = sub nsw i32 %cond882, 16
  %483 = load i32, i32* %img_height, align 4
  %484 = load i32, i32* %img_width, align 4
  %call884 = call zeroext i16 @FastPelY_14(i16** %477, i32 %sub872, i32 %sub883, i32 %483, i32 %484)
  %conv885 = zext i16 %call884 to i32
  %485 = load i16**, i16*** %out4Y, align 8
  %486 = load i32, i32* %je2, align 4
  %add886 = add nsw i32 %486, 2
  %487 = load i32, i32* %j, align 4
  %add887 = add nsw i32 %487, 2
  %cmp888 = icmp slt i32 %add886, %add887
  br i1 %cmp888, label %cond.true.890, label %cond.false.892

cond.true.890:                                    ; preds = %cond.end.881
  %488 = load i32, i32* %je2, align 4
  %add891 = add nsw i32 %488, 2
  br label %cond.end.894

cond.false.892:                                   ; preds = %cond.end.881
  %489 = load i32, i32* %j, align 4
  %add893 = add nsw i32 %489, 2
  br label %cond.end.894

cond.end.894:                                     ; preds = %cond.false.892, %cond.true.890
  %cond895 = phi i32 [ %add891, %cond.true.890 ], [ %add893, %cond.false.892 ]
  %sub896 = sub nsw i32 %cond895, 16
  %490 = load i32, i32* %i, align 4
  %sub897 = sub nsw i32 %490, 16
  %sub898 = sub nsw i32 %sub897, 1
  %491 = load i32, i32* %img_height, align 4
  %492 = load i32, i32* %img_width, align 4
  %call899 = call zeroext i16 @FastPelY_14(i16** %485, i32 %sub896, i32 %sub898, i32 %491, i32 %492)
  %conv900 = zext i16 %call899 to i32
  %add901 = add nsw i32 %conv885, %conv900
  %add902 = add nsw i32 %add901, 1
  %div903 = sdiv i32 %add902, 2
  %cmp904 = icmp slt i32 %476, %div903
  br i1 %cmp904, label %cond.true.906, label %cond.false.908

cond.true.906:                                    ; preds = %cond.end.894
  %493 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %max_imgpel_value907 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %493, i32 0, i32 155
  %494 = load i32, i32* %max_imgpel_value907, align 4
  br label %cond.end.941

cond.false.908:                                   ; preds = %cond.end.894
  %495 = load i16**, i16*** %out4Y, align 8
  %496 = load i32, i32* %j, align 4
  %sub909 = sub nsw i32 %496, 16
  %497 = load i32, i32* %ie2, align 4
  %add910 = add nsw i32 %497, 2
  %498 = load i32, i32* %i, align 4
  %add911 = add nsw i32 %498, 1
  %cmp912 = icmp slt i32 %add910, %add911
  br i1 %cmp912, label %cond.true.914, label %cond.false.916

cond.true.914:                                    ; preds = %cond.false.908
  %499 = load i32, i32* %ie2, align 4
  %add915 = add nsw i32 %499, 2
  br label %cond.end.918

cond.false.916:                                   ; preds = %cond.false.908
  %500 = load i32, i32* %i, align 4
  %add917 = add nsw i32 %500, 1
  br label %cond.end.918

cond.end.918:                                     ; preds = %cond.false.916, %cond.true.914
  %cond919 = phi i32 [ %add915, %cond.true.914 ], [ %add917, %cond.false.916 ]
  %sub920 = sub nsw i32 %cond919, 16
  %501 = load i32, i32* %img_height, align 4
  %502 = load i32, i32* %img_width, align 4
  %call921 = call zeroext i16 @FastPelY_14(i16** %495, i32 %sub909, i32 %sub920, i32 %501, i32 %502)
  %conv922 = zext i16 %call921 to i32
  %503 = load i16**, i16*** %out4Y, align 8
  %504 = load i32, i32* %je2, align 4
  %add923 = add nsw i32 %504, 2
  %505 = load i32, i32* %j, align 4
  %add924 = add nsw i32 %505, 2
  %cmp925 = icmp slt i32 %add923, %add924
  br i1 %cmp925, label %cond.true.927, label %cond.false.929

cond.true.927:                                    ; preds = %cond.end.918
  %506 = load i32, i32* %je2, align 4
  %add928 = add nsw i32 %506, 2
  br label %cond.end.931

cond.false.929:                                   ; preds = %cond.end.918
  %507 = load i32, i32* %j, align 4
  %add930 = add nsw i32 %507, 2
  br label %cond.end.931

cond.end.931:                                     ; preds = %cond.false.929, %cond.true.927
  %cond932 = phi i32 [ %add928, %cond.true.927 ], [ %add930, %cond.false.929 ]
  %sub933 = sub nsw i32 %cond932, 16
  %508 = load i32, i32* %i, align 4
  %sub934 = sub nsw i32 %508, 16
  %sub935 = sub nsw i32 %sub934, 1
  %509 = load i32, i32* %img_height, align 4
  %510 = load i32, i32* %img_width, align 4
  %call936 = call zeroext i16 @FastPelY_14(i16** %503, i32 %sub933, i32 %sub935, i32 %509, i32 %510)
  %conv937 = zext i16 %call936 to i32
  %add938 = add nsw i32 %conv922, %conv937
  %add939 = add nsw i32 %add938, 1
  %div940 = sdiv i32 %add939, 2
  br label %cond.end.941

cond.end.941:                                     ; preds = %cond.end.931, %cond.true.906
  %cond942 = phi i32 [ %494, %cond.true.906 ], [ %div940, %cond.end.931 ]
  br label %cond.end.943

cond.end.943:                                     ; preds = %cond.end.941, %cond.true.869
  %cond944 = phi i32 [ 0, %cond.true.869 ], [ %cond942, %cond.end.941 ]
  %conv945 = trunc i32 %cond944 to i16
  call void @PutPel_14(i16** %436, i32 %add793, i32 %sub794, i16 zeroext %conv945)
  br label %if.end.1101

if.else.946:                                      ; preds = %land.lhs.true.787, %lor.lhs.false.783
  %511 = load i16**, i16*** %out4Y, align 8
  %512 = load i32, i32* %j, align 4
  %sub947 = sub nsw i32 %512, 16
  %add948 = add nsw i32 %sub947, 1
  %513 = load i32, i32* %i, align 4
  %sub949 = sub nsw i32 %513, 16
  %514 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %max_imgpel_value950 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %514, i32 0, i32 155
  %515 = load i32, i32* %max_imgpel_value950, align 4
  %516 = load i16**, i16*** %out4Y, align 8
  %517 = load i32, i32* %j, align 4
  %sub951 = sub nsw i32 %517, 16
  %518 = load i32, i32* %i, align 4
  %sub952 = sub nsw i32 %518, 16
  %sub953 = sub nsw i32 %sub952, 1
  %519 = load i32, i32* %img_height, align 4
  %520 = load i32, i32* %img_width, align 4
  %call954 = call zeroext i16 @FastPelY_14(i16** %516, i32 %sub951, i32 %sub953, i32 %519, i32 %520)
  %conv955 = zext i16 %call954 to i32
  %521 = load i16**, i16*** %out4Y, align 8
  %522 = load i32, i32* %je2, align 4
  %add956 = add nsw i32 %522, 2
  %523 = load i32, i32* %j, align 4
  %add957 = add nsw i32 %523, 2
  %cmp958 = icmp slt i32 %add956, %add957
  br i1 %cmp958, label %cond.true.960, label %cond.false.962

cond.true.960:                                    ; preds = %if.else.946
  %524 = load i32, i32* %je2, align 4
  %add961 = add nsw i32 %524, 2
  br label %cond.end.964

cond.false.962:                                   ; preds = %if.else.946
  %525 = load i32, i32* %j, align 4
  %add963 = add nsw i32 %525, 2
  br label %cond.end.964

cond.end.964:                                     ; preds = %cond.false.962, %cond.true.960
  %cond965 = phi i32 [ %add961, %cond.true.960 ], [ %add963, %cond.false.962 ]
  %sub966 = sub nsw i32 %cond965, 16
  %526 = load i32, i32* %ie2, align 4
  %add967 = add nsw i32 %526, 2
  %527 = load i32, i32* %i, align 4
  %add968 = add nsw i32 %527, 1
  %cmp969 = icmp slt i32 %add967, %add968
  br i1 %cmp969, label %cond.true.971, label %cond.false.973

cond.true.971:                                    ; preds = %cond.end.964
  %528 = load i32, i32* %ie2, align 4
  %add972 = add nsw i32 %528, 2
  br label %cond.end.975

cond.false.973:                                   ; preds = %cond.end.964
  %529 = load i32, i32* %i, align 4
  %add974 = add nsw i32 %529, 1
  br label %cond.end.975

cond.end.975:                                     ; preds = %cond.false.973, %cond.true.971
  %cond976 = phi i32 [ %add972, %cond.true.971 ], [ %add974, %cond.false.973 ]
  %sub977 = sub nsw i32 %cond976, 16
  %530 = load i32, i32* %img_height, align 4
  %531 = load i32, i32* %img_width, align 4
  %call978 = call zeroext i16 @FastPelY_14(i16** %521, i32 %sub966, i32 %sub977, i32 %530, i32 %531)
  %conv979 = zext i16 %call978 to i32
  %add980 = add nsw i32 %conv955, %conv979
  %add981 = add nsw i32 %add980, 1
  %div982 = sdiv i32 %add981, 2
  %cmp983 = icmp slt i32 %515, %div982
  br i1 %cmp983, label %cond.true.985, label %cond.false.987

cond.true.985:                                    ; preds = %cond.end.975
  %532 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %max_imgpel_value986 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %532, i32 0, i32 155
  %533 = load i32, i32* %max_imgpel_value986, align 4
  br label %cond.end.1020

cond.false.987:                                   ; preds = %cond.end.975
  %534 = load i16**, i16*** %out4Y, align 8
  %535 = load i32, i32* %j, align 4
  %sub988 = sub nsw i32 %535, 16
  %536 = load i32, i32* %i, align 4
  %sub989 = sub nsw i32 %536, 16
  %sub990 = sub nsw i32 %sub989, 1
  %537 = load i32, i32* %img_height, align 4
  %538 = load i32, i32* %img_width, align 4
  %call991 = call zeroext i16 @FastPelY_14(i16** %534, i32 %sub988, i32 %sub990, i32 %537, i32 %538)
  %conv992 = zext i16 %call991 to i32
  %539 = load i16**, i16*** %out4Y, align 8
  %540 = load i32, i32* %je2, align 4
  %add993 = add nsw i32 %540, 2
  %541 = load i32, i32* %j, align 4
  %add994 = add nsw i32 %541, 2
  %cmp995 = icmp slt i32 %add993, %add994
  br i1 %cmp995, label %cond.true.997, label %cond.false.999

cond.true.997:                                    ; preds = %cond.false.987
  %542 = load i32, i32* %je2, align 4
  %add998 = add nsw i32 %542, 2
  br label %cond.end.1001

cond.false.999:                                   ; preds = %cond.false.987
  %543 = load i32, i32* %j, align 4
  %add1000 = add nsw i32 %543, 2
  br label %cond.end.1001

cond.end.1001:                                    ; preds = %cond.false.999, %cond.true.997
  %cond1002 = phi i32 [ %add998, %cond.true.997 ], [ %add1000, %cond.false.999 ]
  %sub1003 = sub nsw i32 %cond1002, 16
  %544 = load i32, i32* %ie2, align 4
  %add1004 = add nsw i32 %544, 2
  %545 = load i32, i32* %i, align 4
  %add1005 = add nsw i32 %545, 1
  %cmp1006 = icmp slt i32 %add1004, %add1005
  br i1 %cmp1006, label %cond.true.1008, label %cond.false.1010

cond.true.1008:                                   ; preds = %cond.end.1001
  %546 = load i32, i32* %ie2, align 4
  %add1009 = add nsw i32 %546, 2
  br label %cond.end.1012

cond.false.1010:                                  ; preds = %cond.end.1001
  %547 = load i32, i32* %i, align 4
  %add1011 = add nsw i32 %547, 1
  br label %cond.end.1012

cond.end.1012:                                    ; preds = %cond.false.1010, %cond.true.1008
  %cond1013 = phi i32 [ %add1009, %cond.true.1008 ], [ %add1011, %cond.false.1010 ]
  %sub1014 = sub nsw i32 %cond1013, 16
  %548 = load i32, i32* %img_height, align 4
  %549 = load i32, i32* %img_width, align 4
  %call1015 = call zeroext i16 @FastPelY_14(i16** %539, i32 %sub1003, i32 %sub1014, i32 %548, i32 %549)
  %conv1016 = zext i16 %call1015 to i32
  %add1017 = add nsw i32 %conv992, %conv1016
  %add1018 = add nsw i32 %add1017, 1
  %div1019 = sdiv i32 %add1018, 2
  br label %cond.end.1020

cond.end.1020:                                    ; preds = %cond.end.1012, %cond.true.985
  %cond1021 = phi i32 [ %533, %cond.true.985 ], [ %div1019, %cond.end.1012 ]
  %cmp1022 = icmp sgt i32 0, %cond1021
  br i1 %cmp1022, label %cond.true.1024, label %cond.false.1025

cond.true.1024:                                   ; preds = %cond.end.1020
  br label %cond.end.1098

cond.false.1025:                                  ; preds = %cond.end.1020
  %550 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %max_imgpel_value1026 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %550, i32 0, i32 155
  %551 = load i32, i32* %max_imgpel_value1026, align 4
  %552 = load i16**, i16*** %out4Y, align 8
  %553 = load i32, i32* %j, align 4
  %sub1027 = sub nsw i32 %553, 16
  %554 = load i32, i32* %i, align 4
  %sub1028 = sub nsw i32 %554, 16
  %sub1029 = sub nsw i32 %sub1028, 1
  %555 = load i32, i32* %img_height, align 4
  %556 = load i32, i32* %img_width, align 4
  %call1030 = call zeroext i16 @FastPelY_14(i16** %552, i32 %sub1027, i32 %sub1029, i32 %555, i32 %556)
  %conv1031 = zext i16 %call1030 to i32
  %557 = load i16**, i16*** %out4Y, align 8
  %558 = load i32, i32* %je2, align 4
  %add1032 = add nsw i32 %558, 2
  %559 = load i32, i32* %j, align 4
  %add1033 = add nsw i32 %559, 2
  %cmp1034 = icmp slt i32 %add1032, %add1033
  br i1 %cmp1034, label %cond.true.1036, label %cond.false.1038

cond.true.1036:                                   ; preds = %cond.false.1025
  %560 = load i32, i32* %je2, align 4
  %add1037 = add nsw i32 %560, 2
  br label %cond.end.1040

cond.false.1038:                                  ; preds = %cond.false.1025
  %561 = load i32, i32* %j, align 4
  %add1039 = add nsw i32 %561, 2
  br label %cond.end.1040

cond.end.1040:                                    ; preds = %cond.false.1038, %cond.true.1036
  %cond1041 = phi i32 [ %add1037, %cond.true.1036 ], [ %add1039, %cond.false.1038 ]
  %sub1042 = sub nsw i32 %cond1041, 16
  %562 = load i32, i32* %ie2, align 4
  %add1043 = add nsw i32 %562, 2
  %563 = load i32, i32* %i, align 4
  %add1044 = add nsw i32 %563, 1
  %cmp1045 = icmp slt i32 %add1043, %add1044
  br i1 %cmp1045, label %cond.true.1047, label %cond.false.1049

cond.true.1047:                                   ; preds = %cond.end.1040
  %564 = load i32, i32* %ie2, align 4
  %add1048 = add nsw i32 %564, 2
  br label %cond.end.1051

cond.false.1049:                                  ; preds = %cond.end.1040
  %565 = load i32, i32* %i, align 4
  %add1050 = add nsw i32 %565, 1
  br label %cond.end.1051

cond.end.1051:                                    ; preds = %cond.false.1049, %cond.true.1047
  %cond1052 = phi i32 [ %add1048, %cond.true.1047 ], [ %add1050, %cond.false.1049 ]
  %sub1053 = sub nsw i32 %cond1052, 16
  %566 = load i32, i32* %img_height, align 4
  %567 = load i32, i32* %img_width, align 4
  %call1054 = call zeroext i16 @FastPelY_14(i16** %557, i32 %sub1042, i32 %sub1053, i32 %566, i32 %567)
  %conv1055 = zext i16 %call1054 to i32
  %add1056 = add nsw i32 %conv1031, %conv1055
  %add1057 = add nsw i32 %add1056, 1
  %div1058 = sdiv i32 %add1057, 2
  %cmp1059 = icmp slt i32 %551, %div1058
  br i1 %cmp1059, label %cond.true.1061, label %cond.false.1063

cond.true.1061:                                   ; preds = %cond.end.1051
  %568 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %max_imgpel_value1062 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %568, i32 0, i32 155
  %569 = load i32, i32* %max_imgpel_value1062, align 4
  br label %cond.end.1096

cond.false.1063:                                  ; preds = %cond.end.1051
  %570 = load i16**, i16*** %out4Y, align 8
  %571 = load i32, i32* %j, align 4
  %sub1064 = sub nsw i32 %571, 16
  %572 = load i32, i32* %i, align 4
  %sub1065 = sub nsw i32 %572, 16
  %sub1066 = sub nsw i32 %sub1065, 1
  %573 = load i32, i32* %img_height, align 4
  %574 = load i32, i32* %img_width, align 4
  %call1067 = call zeroext i16 @FastPelY_14(i16** %570, i32 %sub1064, i32 %sub1066, i32 %573, i32 %574)
  %conv1068 = zext i16 %call1067 to i32
  %575 = load i16**, i16*** %out4Y, align 8
  %576 = load i32, i32* %je2, align 4
  %add1069 = add nsw i32 %576, 2
  %577 = load i32, i32* %j, align 4
  %add1070 = add nsw i32 %577, 2
  %cmp1071 = icmp slt i32 %add1069, %add1070
  br i1 %cmp1071, label %cond.true.1073, label %cond.false.1075

cond.true.1073:                                   ; preds = %cond.false.1063
  %578 = load i32, i32* %je2, align 4
  %add1074 = add nsw i32 %578, 2
  br label %cond.end.1077

cond.false.1075:                                  ; preds = %cond.false.1063
  %579 = load i32, i32* %j, align 4
  %add1076 = add nsw i32 %579, 2
  br label %cond.end.1077

cond.end.1077:                                    ; preds = %cond.false.1075, %cond.true.1073
  %cond1078 = phi i32 [ %add1074, %cond.true.1073 ], [ %add1076, %cond.false.1075 ]
  %sub1079 = sub nsw i32 %cond1078, 16
  %580 = load i32, i32* %ie2, align 4
  %add1080 = add nsw i32 %580, 2
  %581 = load i32, i32* %i, align 4
  %add1081 = add nsw i32 %581, 1
  %cmp1082 = icmp slt i32 %add1080, %add1081
  br i1 %cmp1082, label %cond.true.1084, label %cond.false.1086

cond.true.1084:                                   ; preds = %cond.end.1077
  %582 = load i32, i32* %ie2, align 4
  %add1085 = add nsw i32 %582, 2
  br label %cond.end.1088

cond.false.1086:                                  ; preds = %cond.end.1077
  %583 = load i32, i32* %i, align 4
  %add1087 = add nsw i32 %583, 1
  br label %cond.end.1088

cond.end.1088:                                    ; preds = %cond.false.1086, %cond.true.1084
  %cond1089 = phi i32 [ %add1085, %cond.true.1084 ], [ %add1087, %cond.false.1086 ]
  %sub1090 = sub nsw i32 %cond1089, 16
  %584 = load i32, i32* %img_height, align 4
  %585 = load i32, i32* %img_width, align 4
  %call1091 = call zeroext i16 @FastPelY_14(i16** %575, i32 %sub1079, i32 %sub1090, i32 %584, i32 %585)
  %conv1092 = zext i16 %call1091 to i32
  %add1093 = add nsw i32 %conv1068, %conv1092
  %add1094 = add nsw i32 %add1093, 1
  %div1095 = sdiv i32 %add1094, 2
  br label %cond.end.1096

cond.end.1096:                                    ; preds = %cond.end.1088, %cond.true.1061
  %cond1097 = phi i32 [ %569, %cond.true.1061 ], [ %div1095, %cond.end.1088 ]
  br label %cond.end.1098

cond.end.1098:                                    ; preds = %cond.end.1096, %cond.true.1024
  %cond1099 = phi i32 [ 0, %cond.true.1024 ], [ %cond1097, %cond.end.1096 ]
  %conv1100 = trunc i32 %cond1099 to i16
  call void @PutPel_14(i16** %511, i32 %add948, i32 %sub949, i16 zeroext %conv1100)
  br label %if.end.1101

if.end.1101:                                      ; preds = %cond.end.1098, %cond.end.943
  br label %if.end.1102

if.end.1102:                                      ; preds = %if.end.1101, %cond.end.774
  br label %for.inc.1103

for.inc.1103:                                     ; preds = %if.end.1102
  %586 = load i32, i32* %j, align 4
  %add1104 = add nsw i32 %586, 2
  store i32 %add1104, i32* %j, align 4
  br label %for.cond.659

for.end.1105:                                     ; preds = %for.cond.659
  br label %for.inc.1106

for.inc.1106:                                     ; preds = %for.end.1105
  %587 = load i32, i32* %i, align 4
  %inc1107 = add nsw i32 %587, 1
  store i32 %inc1107, i32* %i, align 4
  br label %for.cond.654

for.end.1108:                                     ; preds = %for.cond.654
  %588 = load i16**, i16*** %out4Y, align 8
  %589 = load i16*, i16** %ref11, align 8
  %590 = load %struct.storable_picture*, %struct.storable_picture** %s.addr, align 8
  %size_x1109 = getelementptr inbounds %struct.storable_picture, %struct.storable_picture* %590, i32 0, i32 18
  %591 = load i32, i32* %size_x1109, align 4
  %592 = load %struct.storable_picture*, %struct.storable_picture** %s.addr, align 8
  %size_y1110 = getelementptr inbounds %struct.storable_picture, %struct.storable_picture* %592, i32 0, i32 19
  %593 = load i32, i32* %size_y1110, align 4
  call void @GenerateFullPelRepresentation(i16** %588, i16* %589, i32 %591, i32 %593)
  br label %return

return:                                           ; preds = %for.end.1108, %if.then
  ret void
}

; Function Attrs: nounwind
declare noalias i8* @malloc(i64) #2

declare void @no_mem_exit(i8*) #1

declare i32 @get_mem2Dpel(i16***, i32, i32) #1

declare void @PutPel_14(i16**, i32, i32, i16 zeroext) #1

declare zeroext i16 @FastPelY_14(i16**, i32, i32, i32, i32) #1

; Function Attrs: nounwind uwtable
define internal void @GenerateFullPelRepresentation(i16** %Fourthpel, i16* %Fullpel, i32 %xsize, i32 %ysize) #0 {
entry:
  %Fourthpel.addr = alloca i16**, align 8
  %Fullpel.addr = alloca i16*, align 8
  %xsize.addr = alloca i32, align 4
  %ysize.addr = alloca i32, align 4
  %x = alloca i32, align 4
  %y = alloca i32, align 4
  store i16** %Fourthpel, i16*** %Fourthpel.addr, align 8
  store i16* %Fullpel, i16** %Fullpel.addr, align 8
  store i32 %xsize, i32* %xsize.addr, align 4
  store i32 %ysize, i32* %ysize.addr, align 4
  store i32 0, i32* %y, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc.5, %entry
  %0 = load i32, i32* %y, align 4
  %1 = load i32, i32* %ysize.addr, align 4
  %cmp = icmp slt i32 %0, %1
  br i1 %cmp, label %for.body, label %for.end.7

for.body:                                         ; preds = %for.cond
  store i32 0, i32* %x, align 4
  br label %for.cond.1

for.cond.1:                                       ; preds = %for.inc, %for.body
  %2 = load i32, i32* %x, align 4
  %3 = load i32, i32* %xsize.addr, align 4
  %cmp2 = icmp slt i32 %2, %3
  br i1 %cmp2, label %for.body.3, label %for.end

for.body.3:                                       ; preds = %for.cond.1
  %4 = load i16*, i16** %Fullpel.addr, align 8
  %5 = load i32, i32* %y, align 4
  %6 = load i32, i32* %x, align 4
  %7 = load i16**, i16*** %Fourthpel.addr, align 8
  %8 = load i32, i32* %y, align 4
  %mul = mul nsw i32 %8, 4
  %9 = load i32, i32* %x, align 4
  %mul4 = mul nsw i32 %9, 4
  %10 = load i32, i32* %ysize.addr, align 4
  %11 = load i32, i32* %xsize.addr, align 4
  %call = call zeroext i16 @FastPelY_14(i16** %7, i32 %mul, i32 %mul4, i32 %10, i32 %11)
  %12 = load i32, i32* %xsize.addr, align 4
  call void @PutPel_11(i16* %4, i32 %5, i32 %6, i16 zeroext %call, i32 %12)
  br label %for.inc

for.inc:                                          ; preds = %for.body.3
  %13 = load i32, i32* %x, align 4
  %inc = add nsw i32 %13, 1
  store i32 %inc, i32* %x, align 4
  br label %for.cond.1

for.end:                                          ; preds = %for.cond.1
  br label %for.inc.5

for.inc.5:                                        ; preds = %for.end
  %14 = load i32, i32* %y, align 4
  %inc6 = add nsw i32 %14, 1
  store i32 %inc6, i32* %y, align 4
  br label %for.cond

for.end.7:                                        ; preds = %for.cond
  ret void
}

; Function Attrs: nounwind uwtable
define i32 @dummy_slice_too_big(i32 %bits_slice) #0 {
entry:
  %bits_slice.addr = alloca i32, align 4
  store i32 %bits_slice, i32* %bits_slice.addr, align 4
  ret i32 0
}

; Function Attrs: nounwind uwtable
define void @copy_rdopt_data(i32 %bot_block) #0 {
entry:
  %bot_block.addr = alloca i32, align 4
  %mb_nr = alloca i32, align 4
  %currMB = alloca %struct.macroblock*, align 8
  %i = alloca i32, align 4
  %j = alloca i32, align 4
  %k = alloca i32, align 4
  %l = alloca i32, align 4
  %bframe = alloca i32, align 4
  %mode = alloca i32, align 4
  %b8mode = alloca i32, align 4
  %b8pdir = alloca i32, align 4
  %list_offset = alloca i32, align 4
  store i32 %bot_block, i32* %bot_block.addr, align 4
  %0 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %current_mb_nr = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %0, i32 0, i32 3
  %1 = load i32, i32* %current_mb_nr, align 4
  store i32 %1, i32* %mb_nr, align 4
  %2 = load i32, i32* %mb_nr, align 4
  %idxprom = sext i32 %2 to i64
  %3 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %mb_data = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %3, i32 0, i32 51
  %4 = load %struct.macroblock*, %struct.macroblock** %mb_data, align 8
  %arrayidx = getelementptr inbounds %struct.macroblock, %struct.macroblock* %4, i64 %idxprom
  store %struct.macroblock* %arrayidx, %struct.macroblock** %currMB, align 8
  %5 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %type = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %5, i32 0, i32 6
  %6 = load i32, i32* %type, align 4
  %cmp = icmp eq i32 %6, 1
  %conv = zext i1 %cmp to i32
  store i32 %conv, i32* %bframe, align 4
  %7 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %MbaffFrameFlag = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %7, i32 0, i32 90
  %8 = load i32, i32* %MbaffFrameFlag, align 4
  %tobool = icmp ne i32 %8, 0
  br i1 %tobool, label %land.lhs.true, label %cond.false

land.lhs.true:                                    ; preds = %entry
  %9 = load %struct.macroblock*, %struct.macroblock** %currMB, align 8
  %mb_field = getelementptr inbounds %struct.macroblock, %struct.macroblock* %9, i32 0, i32 22
  %10 = load i32, i32* %mb_field, align 4
  %tobool1 = icmp ne i32 %10, 0
  br i1 %tobool1, label %cond.true, label %cond.false

cond.true:                                        ; preds = %land.lhs.true
  %11 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %current_mb_nr2 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %11, i32 0, i32 3
  %12 = load i32, i32* %current_mb_nr2, align 4
  %rem = srem i32 %12, 2
  %tobool3 = icmp ne i32 %rem, 0
  %cond = select i1 %tobool3, i32 4, i32 2
  br label %cond.end

cond.false:                                       ; preds = %land.lhs.true, %entry
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond4 = phi i32 [ %cond, %cond.true ], [ 0, %cond.false ]
  store i32 %cond4, i32* %list_offset, align 4
  %13 = load %struct.RD_DATA*, %struct.RD_DATA** @rdopt, align 8
  %mode5 = getelementptr inbounds %struct.RD_DATA, %struct.RD_DATA* %13, i32 0, i32 14
  %14 = load i32, i32* %mode5, align 4
  store i32 %14, i32* %mode, align 4
  %15 = load %struct.RD_DATA*, %struct.RD_DATA** @rdopt, align 8
  %mb_type = getelementptr inbounds %struct.RD_DATA, %struct.RD_DATA* %15, i32 0, i32 6
  %16 = load i32, i32* %mb_type, align 4
  %17 = load %struct.macroblock*, %struct.macroblock** %currMB, align 8
  %mb_type6 = getelementptr inbounds %struct.macroblock, %struct.macroblock* %17, i32 0, i32 8
  store i32 %16, i32* %mb_type6, align 4
  %18 = load %struct.RD_DATA*, %struct.RD_DATA** @rdopt, align 8
  %cbp = getelementptr inbounds %struct.RD_DATA, %struct.RD_DATA* %18, i32 0, i32 12
  %19 = load i32, i32* %cbp, align 4
  %20 = load %struct.macroblock*, %struct.macroblock** %currMB, align 8
  %cbp7 = getelementptr inbounds %struct.macroblock, %struct.macroblock* %20, i32 0, i32 12
  store i32 %19, i32* %cbp7, align 4
  %21 = load %struct.RD_DATA*, %struct.RD_DATA** @rdopt, align 8
  %cbp_blk = getelementptr inbounds %struct.RD_DATA, %struct.RD_DATA* %21, i32 0, i32 13
  %22 = load i64, i64* %cbp_blk, align 8
  %23 = load %struct.macroblock*, %struct.macroblock** %currMB, align 8
  %cbp_blk8 = getelementptr inbounds %struct.macroblock, %struct.macroblock* %23, i32 0, i32 13
  store i64 %22, i64* %cbp_blk8, align 8
  %24 = load %struct.RD_DATA*, %struct.RD_DATA** @rdopt, align 8
  %bi_pred_me = getelementptr inbounds %struct.RD_DATA, %struct.RD_DATA* %24, i32 0, i32 7
  %25 = load i32, i32* %bi_pred_me, align 4
  %26 = load %struct.macroblock*, %struct.macroblock** %currMB, align 8
  %bi_pred_me9 = getelementptr inbounds %struct.macroblock, %struct.macroblock* %26, i32 0, i32 34
  store i32 %25, i32* %bi_pred_me9, align 4
  %27 = load %struct.RD_DATA*, %struct.RD_DATA** @rdopt, align 8
  %i16offset = getelementptr inbounds %struct.RD_DATA, %struct.RD_DATA* %27, i32 0, i32 20
  %28 = load i32, i32* %i16offset, align 4
  %29 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %i16offset10 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %29, i32 0, i32 85
  store i32 %28, i32* %i16offset10, align 4
  %30 = load %struct.RD_DATA*, %struct.RD_DATA** @rdopt, align 8
  %prev_qp = getelementptr inbounds %struct.RD_DATA, %struct.RD_DATA* %30, i32 0, i32 25
  %31 = load i32, i32* %prev_qp, align 4
  %32 = load %struct.macroblock*, %struct.macroblock** %currMB, align 8
  %prev_qp11 = getelementptr inbounds %struct.macroblock, %struct.macroblock* %32, i32 0, i32 36
  store i32 %31, i32* %prev_qp11, align 4
  %33 = load %struct.RD_DATA*, %struct.RD_DATA** @rdopt, align 8
  %prev_delta_qp = getelementptr inbounds %struct.RD_DATA, %struct.RD_DATA* %33, i32 0, i32 26
  %34 = load i32, i32* %prev_delta_qp, align 4
  %35 = load %struct.macroblock*, %struct.macroblock** %currMB, align 8
  %prev_delta_qp12 = getelementptr inbounds %struct.macroblock, %struct.macroblock* %35, i32 0, i32 37
  store i32 %34, i32* %prev_delta_qp12, align 4
  %36 = load %struct.RD_DATA*, %struct.RD_DATA** @rdopt, align 8
  %qp = getelementptr inbounds %struct.RD_DATA, %struct.RD_DATA* %36, i32 0, i32 24
  %37 = load i32, i32* %qp, align 4
  %38 = load %struct.macroblock*, %struct.macroblock** %currMB, align 8
  %qp13 = getelementptr inbounds %struct.macroblock, %struct.macroblock* %38, i32 0, i32 3
  store i32 %37, i32* %qp13, align 4
  %39 = load %struct.RD_DATA*, %struct.RD_DATA** @rdopt, align 8
  %c_ipred_mode = getelementptr inbounds %struct.RD_DATA, %struct.RD_DATA* %39, i32 0, i32 21
  %40 = load i32, i32* %c_ipred_mode, align 4
  %41 = load %struct.macroblock*, %struct.macroblock** %currMB, align 8
  %c_ipred_mode14 = getelementptr inbounds %struct.macroblock, %struct.macroblock* %41, i32 0, i32 20
  store i32 %40, i32* %c_ipred_mode14, align 4
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc.52, %cond.end
  %42 = load i32, i32* %i, align 4
  %43 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %num_blk8x8_uv = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %43, i32 0, i32 157
  %44 = load i32, i32* %num_blk8x8_uv, align 4
  %add = add nsw i32 4, %44
  %cmp15 = icmp slt i32 %42, %add
  br i1 %cmp15, label %for.body, label %for.end.54

for.body:                                         ; preds = %for.cond
  store i32 0, i32* %j, align 4
  br label %for.cond.17

for.cond.17:                                      ; preds = %for.inc.49, %for.body
  %45 = load i32, i32* %j, align 4
  %cmp18 = icmp slt i32 %45, 4
  br i1 %cmp18, label %for.body.20, label %for.end.51

for.body.20:                                      ; preds = %for.cond.17
  store i32 0, i32* %k, align 4
  br label %for.cond.21

for.cond.21:                                      ; preds = %for.inc.46, %for.body.20
  %46 = load i32, i32* %k, align 4
  %cmp22 = icmp slt i32 %46, 2
  br i1 %cmp22, label %for.body.24, label %for.end.48

for.body.24:                                      ; preds = %for.cond.21
  store i32 0, i32* %l, align 4
  br label %for.cond.25

for.cond.25:                                      ; preds = %for.inc, %for.body.24
  %47 = load i32, i32* %l, align 4
  %cmp26 = icmp slt i32 %47, 65
  br i1 %cmp26, label %for.body.28, label %for.end

for.body.28:                                      ; preds = %for.cond.25
  %48 = load i32, i32* %l, align 4
  %idxprom29 = sext i32 %48 to i64
  %49 = load i32, i32* %k, align 4
  %idxprom30 = sext i32 %49 to i64
  %50 = load i32, i32* %j, align 4
  %idxprom31 = sext i32 %50 to i64
  %51 = load i32, i32* %i, align 4
  %idxprom32 = sext i32 %51 to i64
  %52 = load %struct.RD_DATA*, %struct.RD_DATA** @rdopt, align 8
  %cofAC = getelementptr inbounds %struct.RD_DATA, %struct.RD_DATA* %52, i32 0, i32 4
  %53 = load i32****, i32***** %cofAC, align 8
  %arrayidx33 = getelementptr inbounds i32***, i32**** %53, i64 %idxprom32
  %54 = load i32***, i32**** %arrayidx33, align 8
  %arrayidx34 = getelementptr inbounds i32**, i32*** %54, i64 %idxprom31
  %55 = load i32**, i32*** %arrayidx34, align 8
  %arrayidx35 = getelementptr inbounds i32*, i32** %55, i64 %idxprom30
  %56 = load i32*, i32** %arrayidx35, align 8
  %arrayidx36 = getelementptr inbounds i32, i32* %56, i64 %idxprom29
  %57 = load i32, i32* %arrayidx36, align 4
  %58 = load i32, i32* %l, align 4
  %idxprom37 = sext i32 %58 to i64
  %59 = load i32, i32* %k, align 4
  %idxprom38 = sext i32 %59 to i64
  %60 = load i32, i32* %j, align 4
  %idxprom39 = sext i32 %60 to i64
  %61 = load i32, i32* %i, align 4
  %idxprom40 = sext i32 %61 to i64
  %62 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %cofAC41 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %62, i32 0, i32 47
  %63 = load i32****, i32***** %cofAC41, align 8
  %arrayidx42 = getelementptr inbounds i32***, i32**** %63, i64 %idxprom40
  %64 = load i32***, i32**** %arrayidx42, align 8
  %arrayidx43 = getelementptr inbounds i32**, i32*** %64, i64 %idxprom39
  %65 = load i32**, i32*** %arrayidx43, align 8
  %arrayidx44 = getelementptr inbounds i32*, i32** %65, i64 %idxprom38
  %66 = load i32*, i32** %arrayidx44, align 8
  %arrayidx45 = getelementptr inbounds i32, i32* %66, i64 %idxprom37
  store i32 %57, i32* %arrayidx45, align 4
  br label %for.inc

for.inc:                                          ; preds = %for.body.28
  %67 = load i32, i32* %l, align 4
  %inc = add nsw i32 %67, 1
  store i32 %inc, i32* %l, align 4
  br label %for.cond.25

for.end:                                          ; preds = %for.cond.25
  br label %for.inc.46

for.inc.46:                                       ; preds = %for.end
  %68 = load i32, i32* %k, align 4
  %inc47 = add nsw i32 %68, 1
  store i32 %inc47, i32* %k, align 4
  br label %for.cond.21

for.end.48:                                       ; preds = %for.cond.21
  br label %for.inc.49

for.inc.49:                                       ; preds = %for.end.48
  %69 = load i32, i32* %j, align 4
  %inc50 = add nsw i32 %69, 1
  store i32 %inc50, i32* %j, align 4
  br label %for.cond.17

for.end.51:                                       ; preds = %for.cond.17
  br label %for.inc.52

for.inc.52:                                       ; preds = %for.end.51
  %70 = load i32, i32* %i, align 4
  %inc53 = add nsw i32 %70, 1
  store i32 %inc53, i32* %i, align 4
  br label %for.cond

for.end.54:                                       ; preds = %for.cond
  store i32 0, i32* %i, align 4
  br label %for.cond.55

for.cond.55:                                      ; preds = %for.inc.86, %for.end.54
  %71 = load i32, i32* %i, align 4
  %cmp56 = icmp slt i32 %71, 3
  br i1 %cmp56, label %for.body.58, label %for.end.88

for.body.58:                                      ; preds = %for.cond.55
  store i32 0, i32* %k, align 4
  br label %for.cond.59

for.cond.59:                                      ; preds = %for.inc.83, %for.body.58
  %72 = load i32, i32* %k, align 4
  %cmp60 = icmp slt i32 %72, 2
  br i1 %cmp60, label %for.body.62, label %for.end.85

for.body.62:                                      ; preds = %for.cond.59
  store i32 0, i32* %l, align 4
  br label %for.cond.63

for.cond.63:                                      ; preds = %for.inc.80, %for.body.62
  %73 = load i32, i32* %l, align 4
  %cmp64 = icmp slt i32 %73, 18
  br i1 %cmp64, label %for.body.66, label %for.end.82

for.body.66:                                      ; preds = %for.cond.63
  %74 = load i32, i32* %l, align 4
  %idxprom67 = sext i32 %74 to i64
  %75 = load i32, i32* %k, align 4
  %idxprom68 = sext i32 %75 to i64
  %76 = load i32, i32* %i, align 4
  %idxprom69 = sext i32 %76 to i64
  %77 = load %struct.RD_DATA*, %struct.RD_DATA** @rdopt, align 8
  %cofDC = getelementptr inbounds %struct.RD_DATA, %struct.RD_DATA* %77, i32 0, i32 5
  %78 = load i32***, i32**** %cofDC, align 8
  %arrayidx70 = getelementptr inbounds i32**, i32*** %78, i64 %idxprom69
  %79 = load i32**, i32*** %arrayidx70, align 8
  %arrayidx71 = getelementptr inbounds i32*, i32** %79, i64 %idxprom68
  %80 = load i32*, i32** %arrayidx71, align 8
  %arrayidx72 = getelementptr inbounds i32, i32* %80, i64 %idxprom67
  %81 = load i32, i32* %arrayidx72, align 4
  %82 = load i32, i32* %l, align 4
  %idxprom73 = sext i32 %82 to i64
  %83 = load i32, i32* %k, align 4
  %idxprom74 = sext i32 %83 to i64
  %84 = load i32, i32* %i, align 4
  %idxprom75 = sext i32 %84 to i64
  %85 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %cofDC76 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %85, i32 0, i32 48
  %86 = load i32***, i32**** %cofDC76, align 8
  %arrayidx77 = getelementptr inbounds i32**, i32*** %86, i64 %idxprom75
  %87 = load i32**, i32*** %arrayidx77, align 8
  %arrayidx78 = getelementptr inbounds i32*, i32** %87, i64 %idxprom74
  %88 = load i32*, i32** %arrayidx78, align 8
  %arrayidx79 = getelementptr inbounds i32, i32* %88, i64 %idxprom73
  store i32 %81, i32* %arrayidx79, align 4
  br label %for.inc.80

for.inc.80:                                       ; preds = %for.body.66
  %89 = load i32, i32* %l, align 4
  %inc81 = add nsw i32 %89, 1
  store i32 %inc81, i32* %l, align 4
  br label %for.cond.63

for.end.82:                                       ; preds = %for.cond.63
  br label %for.inc.83

for.inc.83:                                       ; preds = %for.end.82
  %90 = load i32, i32* %k, align 4
  %inc84 = add nsw i32 %90, 1
  store i32 %inc84, i32* %k, align 4
  br label %for.cond.59

for.end.85:                                       ; preds = %for.cond.59
  br label %for.inc.86

for.inc.86:                                       ; preds = %for.end.85
  %91 = load i32, i32* %i, align 4
  %inc87 = add nsw i32 %91, 1
  store i32 %inc87, i32* %i, align 4
  br label %for.cond.55

for.end.88:                                       ; preds = %for.cond.55
  store i32 0, i32* %j, align 4
  br label %for.cond.89

for.cond.89:                                      ; preds = %for.inc.179, %for.end.88
  %92 = load i32, i32* %j, align 4
  %cmp90 = icmp slt i32 %92, 4
  br i1 %cmp90, label %for.body.92, label %for.end.181

for.body.92:                                      ; preds = %for.cond.89
  store i32 0, i32* %i, align 4
  br label %for.cond.93

for.cond.93:                                      ; preds = %for.inc.176, %for.body.92
  %93 = load i32, i32* %i, align 4
  %cmp94 = icmp slt i32 %93, 4
  br i1 %cmp94, label %for.body.96, label %for.end.178

for.body.96:                                      ; preds = %for.cond.93
  %94 = load i32, i32* %i, align 4
  %idxprom97 = sext i32 %94 to i64
  %95 = load i32, i32* %j, align 4
  %idxprom98 = sext i32 %95 to i64
  %96 = load %struct.RD_DATA*, %struct.RD_DATA** @rdopt, align 8
  %refar = getelementptr inbounds %struct.RD_DATA, %struct.RD_DATA* %96, i32 0, i32 19
  %arrayidx99 = getelementptr inbounds [2 x [4 x [4 x i16]]], [2 x [4 x [4 x i16]]]* %refar, i32 0, i64 0
  %arrayidx100 = getelementptr inbounds [4 x [4 x i16]], [4 x [4 x i16]]* %arrayidx99, i32 0, i64 %idxprom98
  %arrayidx101 = getelementptr inbounds [4 x i16], [4 x i16]* %arrayidx100, i32 0, i64 %idxprom97
  %97 = load i16, i16* %arrayidx101, align 2
  %98 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %block_y = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %98, i32 0, i32 32
  %99 = load i32, i32* %block_y, align 4
  %100 = load i32, i32* %j, align 4
  %add102 = add nsw i32 %99, %100
  %idxprom103 = sext i32 %add102 to i64
  %101 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %block_x = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %101, i32 0, i32 31
  %102 = load i32, i32* %block_x, align 4
  %103 = load i32, i32* %i, align 4
  %add104 = add nsw i32 %102, %103
  %idxprom105 = sext i32 %add104 to i64
  %104 = load %struct.storable_picture*, %struct.storable_picture** @enc_picture, align 8
  %ref_idx = getelementptr inbounds %struct.storable_picture, %struct.storable_picture* %104, i32 0, i32 32
  %105 = load i16***, i16**** %ref_idx, align 8
  %arrayidx106 = getelementptr inbounds i16**, i16*** %105, i64 0
  %106 = load i16**, i16*** %arrayidx106, align 8
  %arrayidx107 = getelementptr inbounds i16*, i16** %106, i64 %idxprom105
  %107 = load i16*, i16** %arrayidx107, align 8
  %arrayidx108 = getelementptr inbounds i16, i16* %107, i64 %idxprom103
  store i16 %97, i16* %arrayidx108, align 2
  %108 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %block_y109 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %108, i32 0, i32 32
  %109 = load i32, i32* %block_y109, align 4
  %110 = load i32, i32* %j, align 4
  %add110 = add nsw i32 %109, %110
  %idxprom111 = sext i32 %add110 to i64
  %111 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %block_x112 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %111, i32 0, i32 31
  %112 = load i32, i32* %block_x112, align 4
  %113 = load i32, i32* %i, align 4
  %add113 = add nsw i32 %112, %113
  %idxprom114 = sext i32 %add113 to i64
  %114 = load %struct.storable_picture*, %struct.storable_picture** @enc_picture, align 8
  %ref_idx115 = getelementptr inbounds %struct.storable_picture, %struct.storable_picture* %114, i32 0, i32 32
  %115 = load i16***, i16**** %ref_idx115, align 8
  %arrayidx116 = getelementptr inbounds i16**, i16*** %115, i64 0
  %116 = load i16**, i16*** %arrayidx116, align 8
  %arrayidx117 = getelementptr inbounds i16*, i16** %116, i64 %idxprom114
  %117 = load i16*, i16** %arrayidx117, align 8
  %arrayidx118 = getelementptr inbounds i16, i16* %117, i64 %idxprom111
  %118 = load i16, i16* %arrayidx118, align 2
  %idxprom119 = sext i16 %118 to i64
  %119 = load i32, i32* %list_offset, align 4
  %add120 = add nsw i32 0, %119
  %idxprom121 = sext i32 %add120 to i64
  %120 = load %struct.storable_picture*, %struct.storable_picture** @enc_picture, align 8
  %ref_pic_num = getelementptr inbounds %struct.storable_picture, %struct.storable_picture* %120, i32 0, i32 6
  %arrayidx122 = getelementptr inbounds [6 x [33 x i64]], [6 x [33 x i64]]* %ref_pic_num, i32 0, i64 %idxprom121
  %arrayidx123 = getelementptr inbounds [33 x i64], [33 x i64]* %arrayidx122, i32 0, i64 %idxprom119
  %121 = load i64, i64* %arrayidx123, align 8
  %122 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %block_y124 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %122, i32 0, i32 32
  %123 = load i32, i32* %block_y124, align 4
  %124 = load i32, i32* %j, align 4
  %add125 = add nsw i32 %123, %124
  %idxprom126 = sext i32 %add125 to i64
  %125 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %block_x127 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %125, i32 0, i32 31
  %126 = load i32, i32* %block_x127, align 4
  %127 = load i32, i32* %i, align 4
  %add128 = add nsw i32 %126, %127
  %idxprom129 = sext i32 %add128 to i64
  %128 = load %struct.storable_picture*, %struct.storable_picture** @enc_picture, align 8
  %ref_pic_id = getelementptr inbounds %struct.storable_picture, %struct.storable_picture* %128, i32 0, i32 33
  %129 = load i64***, i64**** %ref_pic_id, align 8
  %arrayidx130 = getelementptr inbounds i64**, i64*** %129, i64 0
  %130 = load i64**, i64*** %arrayidx130, align 8
  %arrayidx131 = getelementptr inbounds i64*, i64** %130, i64 %idxprom129
  %131 = load i64*, i64** %arrayidx131, align 8
  %arrayidx132 = getelementptr inbounds i64, i64* %131, i64 %idxprom126
  store i64 %121, i64* %arrayidx132, align 8
  %132 = load i32, i32* %bframe, align 4
  %tobool133 = icmp ne i32 %132, 0
  br i1 %tobool133, label %if.then, label %if.end

if.then:                                          ; preds = %for.body.96
  %133 = load i32, i32* %i, align 4
  %idxprom134 = sext i32 %133 to i64
  %134 = load i32, i32* %j, align 4
  %idxprom135 = sext i32 %134 to i64
  %135 = load %struct.RD_DATA*, %struct.RD_DATA** @rdopt, align 8
  %refar136 = getelementptr inbounds %struct.RD_DATA, %struct.RD_DATA* %135, i32 0, i32 19
  %arrayidx137 = getelementptr inbounds [2 x [4 x [4 x i16]]], [2 x [4 x [4 x i16]]]* %refar136, i32 0, i64 1
  %arrayidx138 = getelementptr inbounds [4 x [4 x i16]], [4 x [4 x i16]]* %arrayidx137, i32 0, i64 %idxprom135
  %arrayidx139 = getelementptr inbounds [4 x i16], [4 x i16]* %arrayidx138, i32 0, i64 %idxprom134
  %136 = load i16, i16* %arrayidx139, align 2
  %137 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %block_y140 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %137, i32 0, i32 32
  %138 = load i32, i32* %block_y140, align 4
  %139 = load i32, i32* %j, align 4
  %add141 = add nsw i32 %138, %139
  %idxprom142 = sext i32 %add141 to i64
  %140 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %block_x143 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %140, i32 0, i32 31
  %141 = load i32, i32* %block_x143, align 4
  %142 = load i32, i32* %i, align 4
  %add144 = add nsw i32 %141, %142
  %idxprom145 = sext i32 %add144 to i64
  %143 = load %struct.storable_picture*, %struct.storable_picture** @enc_picture, align 8
  %ref_idx146 = getelementptr inbounds %struct.storable_picture, %struct.storable_picture* %143, i32 0, i32 32
  %144 = load i16***, i16**** %ref_idx146, align 8
  %arrayidx147 = getelementptr inbounds i16**, i16*** %144, i64 1
  %145 = load i16**, i16*** %arrayidx147, align 8
  %arrayidx148 = getelementptr inbounds i16*, i16** %145, i64 %idxprom145
  %146 = load i16*, i16** %arrayidx148, align 8
  %arrayidx149 = getelementptr inbounds i16, i16* %146, i64 %idxprom142
  store i16 %136, i16* %arrayidx149, align 2
  %147 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %block_y150 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %147, i32 0, i32 32
  %148 = load i32, i32* %block_y150, align 4
  %149 = load i32, i32* %j, align 4
  %add151 = add nsw i32 %148, %149
  %idxprom152 = sext i32 %add151 to i64
  %150 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %block_x153 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %150, i32 0, i32 31
  %151 = load i32, i32* %block_x153, align 4
  %152 = load i32, i32* %i, align 4
  %add154 = add nsw i32 %151, %152
  %idxprom155 = sext i32 %add154 to i64
  %153 = load %struct.storable_picture*, %struct.storable_picture** @enc_picture, align 8
  %ref_idx156 = getelementptr inbounds %struct.storable_picture, %struct.storable_picture* %153, i32 0, i32 32
  %154 = load i16***, i16**** %ref_idx156, align 8
  %arrayidx157 = getelementptr inbounds i16**, i16*** %154, i64 1
  %155 = load i16**, i16*** %arrayidx157, align 8
  %arrayidx158 = getelementptr inbounds i16*, i16** %155, i64 %idxprom155
  %156 = load i16*, i16** %arrayidx158, align 8
  %arrayidx159 = getelementptr inbounds i16, i16* %156, i64 %idxprom152
  %157 = load i16, i16* %arrayidx159, align 2
  %idxprom160 = sext i16 %157 to i64
  %158 = load i32, i32* %list_offset, align 4
  %add161 = add nsw i32 1, %158
  %idxprom162 = sext i32 %add161 to i64
  %159 = load %struct.storable_picture*, %struct.storable_picture** @enc_picture, align 8
  %ref_pic_num163 = getelementptr inbounds %struct.storable_picture, %struct.storable_picture* %159, i32 0, i32 6
  %arrayidx164 = getelementptr inbounds [6 x [33 x i64]], [6 x [33 x i64]]* %ref_pic_num163, i32 0, i64 %idxprom162
  %arrayidx165 = getelementptr inbounds [33 x i64], [33 x i64]* %arrayidx164, i32 0, i64 %idxprom160
  %160 = load i64, i64* %arrayidx165, align 8
  %161 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %block_y166 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %161, i32 0, i32 32
  %162 = load i32, i32* %block_y166, align 4
  %163 = load i32, i32* %j, align 4
  %add167 = add nsw i32 %162, %163
  %idxprom168 = sext i32 %add167 to i64
  %164 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %block_x169 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %164, i32 0, i32 31
  %165 = load i32, i32* %block_x169, align 4
  %166 = load i32, i32* %i, align 4
  %add170 = add nsw i32 %165, %166
  %idxprom171 = sext i32 %add170 to i64
  %167 = load %struct.storable_picture*, %struct.storable_picture** @enc_picture, align 8
  %ref_pic_id172 = getelementptr inbounds %struct.storable_picture, %struct.storable_picture* %167, i32 0, i32 33
  %168 = load i64***, i64**** %ref_pic_id172, align 8
  %arrayidx173 = getelementptr inbounds i64**, i64*** %168, i64 1
  %169 = load i64**, i64*** %arrayidx173, align 8
  %arrayidx174 = getelementptr inbounds i64*, i64** %169, i64 %idxprom171
  %170 = load i64*, i64** %arrayidx174, align 8
  %arrayidx175 = getelementptr inbounds i64, i64* %170, i64 %idxprom168
  store i64 %160, i64* %arrayidx175, align 8
  br label %if.end

if.end:                                           ; preds = %if.then, %for.body.96
  br label %for.inc.176

for.inc.176:                                      ; preds = %if.end
  %171 = load i32, i32* %i, align 4
  %inc177 = add nsw i32 %171, 1
  store i32 %inc177, i32* %i, align 4
  br label %for.cond.93

for.end.178:                                      ; preds = %for.cond.93
  br label %for.inc.179

for.inc.179:                                      ; preds = %for.end.178
  %172 = load i32, i32* %j, align 4
  %inc180 = add nsw i32 %172, 1
  store i32 %inc180, i32* %j, align 4
  br label %for.cond.89

for.end.181:                                      ; preds = %for.cond.89
  store i32 0, i32* %j, align 4
  br label %for.cond.182

for.cond.182:                                     ; preds = %for.inc.204, %for.end.181
  %173 = load i32, i32* %j, align 4
  %cmp183 = icmp slt i32 %173, 16
  br i1 %cmp183, label %for.body.185, label %for.end.206

for.body.185:                                     ; preds = %for.cond.182
  store i32 0, i32* %i, align 4
  br label %for.cond.186

for.cond.186:                                     ; preds = %for.inc.201, %for.body.185
  %174 = load i32, i32* %i, align 4
  %cmp187 = icmp slt i32 %174, 16
  br i1 %cmp187, label %for.body.189, label %for.end.203

for.body.189:                                     ; preds = %for.cond.186
  %175 = load i32, i32* %i, align 4
  %idxprom190 = sext i32 %175 to i64
  %176 = load i32, i32* %j, align 4
  %idxprom191 = sext i32 %176 to i64
  %177 = load %struct.RD_DATA*, %struct.RD_DATA** @rdopt, align 8
  %rec_mbY = getelementptr inbounds %struct.RD_DATA, %struct.RD_DATA* %177, i32 0, i32 1
  %arrayidx192 = getelementptr inbounds [16 x [16 x i32]], [16 x [16 x i32]]* %rec_mbY, i32 0, i64 %idxprom191
  %arrayidx193 = getelementptr inbounds [16 x i32], [16 x i32]* %arrayidx192, i32 0, i64 %idxprom190
  %178 = load i32, i32* %arrayidx193, align 4
  %conv194 = trunc i32 %178 to i16
  %179 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %pix_x = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %179, i32 0, i32 33
  %180 = load i32, i32* %pix_x, align 4
  %181 = load i32, i32* %i, align 4
  %add195 = add nsw i32 %180, %181
  %idxprom196 = sext i32 %add195 to i64
  %182 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %pix_y = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %182, i32 0, i32 34
  %183 = load i32, i32* %pix_y, align 4
  %184 = load i32, i32* %j, align 4
  %add197 = add nsw i32 %183, %184
  %idxprom198 = sext i32 %add197 to i64
  %185 = load %struct.storable_picture*, %struct.storable_picture** @enc_picture, align 8
  %imgY = getelementptr inbounds %struct.storable_picture, %struct.storable_picture* %185, i32 0, i32 25
  %186 = load i16**, i16*** %imgY, align 8
  %arrayidx199 = getelementptr inbounds i16*, i16** %186, i64 %idxprom198
  %187 = load i16*, i16** %arrayidx199, align 8
  %arrayidx200 = getelementptr inbounds i16, i16* %187, i64 %idxprom196
  store i16 %conv194, i16* %arrayidx200, align 2
  br label %for.inc.201

for.inc.201:                                      ; preds = %for.body.189
  %188 = load i32, i32* %i, align 4
  %inc202 = add nsw i32 %188, 1
  store i32 %inc202, i32* %i, align 4
  br label %for.cond.186

for.end.203:                                      ; preds = %for.cond.186
  br label %for.inc.204

for.inc.204:                                      ; preds = %for.end.203
  %189 = load i32, i32* %j, align 4
  %inc205 = add nsw i32 %189, 1
  store i32 %inc205, i32* %j, align 4
  br label %for.cond.182

for.end.206:                                      ; preds = %for.cond.182
  %190 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %yuv_format = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %190, i32 0, i32 159
  %191 = load i32, i32* %yuv_format, align 4
  %cmp207 = icmp ne i32 %191, 0
  br i1 %cmp207, label %if.then.209, label %if.end.251

if.then.209:                                      ; preds = %for.end.206
  store i32 0, i32* %j, align 4
  br label %for.cond.210

for.cond.210:                                     ; preds = %for.inc.248, %if.then.209
  %192 = load i32, i32* %j, align 4
  %193 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %mb_cr_size_y = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %193, i32 0, i32 162
  %194 = load i32, i32* %mb_cr_size_y, align 4
  %cmp211 = icmp slt i32 %192, %194
  br i1 %cmp211, label %for.body.213, label %for.end.250

for.body.213:                                     ; preds = %for.cond.210
  store i32 0, i32* %i, align 4
  br label %for.cond.214

for.cond.214:                                     ; preds = %for.inc.245, %for.body.213
  %195 = load i32, i32* %i, align 4
  %196 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %mb_cr_size_x = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %196, i32 0, i32 161
  %197 = load i32, i32* %mb_cr_size_x, align 4
  %cmp215 = icmp slt i32 %195, %197
  br i1 %cmp215, label %for.body.217, label %for.end.247

for.body.217:                                     ; preds = %for.cond.214
  %198 = load i32, i32* %i, align 4
  %idxprom218 = sext i32 %198 to i64
  %199 = load i32, i32* %j, align 4
  %idxprom219 = sext i32 %199 to i64
  %200 = load %struct.RD_DATA*, %struct.RD_DATA** @rdopt, align 8
  %rec_mbU = getelementptr inbounds %struct.RD_DATA, %struct.RD_DATA* %200, i32 0, i32 2
  %arrayidx220 = getelementptr inbounds [16 x [16 x i32]], [16 x [16 x i32]]* %rec_mbU, i32 0, i64 %idxprom219
  %arrayidx221 = getelementptr inbounds [16 x i32], [16 x i32]* %arrayidx220, i32 0, i64 %idxprom218
  %201 = load i32, i32* %arrayidx221, align 4
  %conv222 = trunc i32 %201 to i16
  %202 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %pix_c_x = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %202, i32 0, i32 35
  %203 = load i32, i32* %pix_c_x, align 4
  %204 = load i32, i32* %i, align 4
  %add223 = add nsw i32 %203, %204
  %idxprom224 = sext i32 %add223 to i64
  %205 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %pix_c_y = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %205, i32 0, i32 36
  %206 = load i32, i32* %pix_c_y, align 4
  %207 = load i32, i32* %j, align 4
  %add225 = add nsw i32 %206, %207
  %idxprom226 = sext i32 %add225 to i64
  %208 = load %struct.storable_picture*, %struct.storable_picture** @enc_picture, align 8
  %imgUV = getelementptr inbounds %struct.storable_picture, %struct.storable_picture* %208, i32 0, i32 30
  %209 = load i16***, i16**** %imgUV, align 8
  %arrayidx227 = getelementptr inbounds i16**, i16*** %209, i64 0
  %210 = load i16**, i16*** %arrayidx227, align 8
  %arrayidx228 = getelementptr inbounds i16*, i16** %210, i64 %idxprom226
  %211 = load i16*, i16** %arrayidx228, align 8
  %arrayidx229 = getelementptr inbounds i16, i16* %211, i64 %idxprom224
  store i16 %conv222, i16* %arrayidx229, align 2
  %212 = load i32, i32* %i, align 4
  %idxprom230 = sext i32 %212 to i64
  %213 = load i32, i32* %j, align 4
  %idxprom231 = sext i32 %213 to i64
  %214 = load %struct.RD_DATA*, %struct.RD_DATA** @rdopt, align 8
  %rec_mbV = getelementptr inbounds %struct.RD_DATA, %struct.RD_DATA* %214, i32 0, i32 3
  %arrayidx232 = getelementptr inbounds [16 x [16 x i32]], [16 x [16 x i32]]* %rec_mbV, i32 0, i64 %idxprom231
  %arrayidx233 = getelementptr inbounds [16 x i32], [16 x i32]* %arrayidx232, i32 0, i64 %idxprom230
  %215 = load i32, i32* %arrayidx233, align 4
  %conv234 = trunc i32 %215 to i16
  %216 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %pix_c_x235 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %216, i32 0, i32 35
  %217 = load i32, i32* %pix_c_x235, align 4
  %218 = load i32, i32* %i, align 4
  %add236 = add nsw i32 %217, %218
  %idxprom237 = sext i32 %add236 to i64
  %219 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %pix_c_y238 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %219, i32 0, i32 36
  %220 = load i32, i32* %pix_c_y238, align 4
  %221 = load i32, i32* %j, align 4
  %add239 = add nsw i32 %220, %221
  %idxprom240 = sext i32 %add239 to i64
  %222 = load %struct.storable_picture*, %struct.storable_picture** @enc_picture, align 8
  %imgUV241 = getelementptr inbounds %struct.storable_picture, %struct.storable_picture* %222, i32 0, i32 30
  %223 = load i16***, i16**** %imgUV241, align 8
  %arrayidx242 = getelementptr inbounds i16**, i16*** %223, i64 1
  %224 = load i16**, i16*** %arrayidx242, align 8
  %arrayidx243 = getelementptr inbounds i16*, i16** %224, i64 %idxprom240
  %225 = load i16*, i16** %arrayidx243, align 8
  %arrayidx244 = getelementptr inbounds i16, i16* %225, i64 %idxprom237
  store i16 %conv234, i16* %arrayidx244, align 2
  br label %for.inc.245

for.inc.245:                                      ; preds = %for.body.217
  %226 = load i32, i32* %i, align 4
  %inc246 = add nsw i32 %226, 1
  store i32 %inc246, i32* %i, align 4
  br label %for.cond.214

for.end.247:                                      ; preds = %for.cond.214
  br label %for.inc.248

for.inc.248:                                      ; preds = %for.end.247
  %227 = load i32, i32* %j, align 4
  %inc249 = add nsw i32 %227, 1
  store i32 %inc249, i32* %j, align 4
  br label %for.cond.210

for.end.250:                                      ; preds = %for.cond.210
  br label %if.end.251

if.end.251:                                       ; preds = %for.end.250, %for.end.206
  store i32 0, i32* %i, align 4
  br label %for.cond.252

for.cond.252:                                     ; preds = %for.inc.268, %if.end.251
  %228 = load i32, i32* %i, align 4
  %cmp253 = icmp slt i32 %228, 4
  br i1 %cmp253, label %for.body.255, label %for.end.270

for.body.255:                                     ; preds = %for.cond.252
  %229 = load i32, i32* %i, align 4
  %idxprom256 = sext i32 %229 to i64
  %230 = load %struct.RD_DATA*, %struct.RD_DATA** @rdopt, align 8
  %b8mode257 = getelementptr inbounds %struct.RD_DATA, %struct.RD_DATA* %230, i32 0, i32 8
  %arrayidx258 = getelementptr inbounds [4 x i32], [4 x i32]* %b8mode257, i32 0, i64 %idxprom256
  %231 = load i32, i32* %arrayidx258, align 4
  %232 = load i32, i32* %i, align 4
  %idxprom259 = sext i32 %232 to i64
  %233 = load %struct.macroblock*, %struct.macroblock** %currMB, align 8
  %b8mode260 = getelementptr inbounds %struct.macroblock, %struct.macroblock* %233, i32 0, i32 14
  %arrayidx261 = getelementptr inbounds [4 x i32], [4 x i32]* %b8mode260, i32 0, i64 %idxprom259
  store i32 %231, i32* %arrayidx261, align 4
  %234 = load i32, i32* %i, align 4
  %idxprom262 = sext i32 %234 to i64
  %235 = load %struct.RD_DATA*, %struct.RD_DATA** @rdopt, align 8
  %b8pdir263 = getelementptr inbounds %struct.RD_DATA, %struct.RD_DATA* %235, i32 0, i32 9
  %arrayidx264 = getelementptr inbounds [4 x i32], [4 x i32]* %b8pdir263, i32 0, i64 %idxprom262
  %236 = load i32, i32* %arrayidx264, align 4
  %237 = load i32, i32* %i, align 4
  %idxprom265 = sext i32 %237 to i64
  %238 = load %struct.macroblock*, %struct.macroblock** %currMB, align 8
  %b8pdir266 = getelementptr inbounds %struct.macroblock, %struct.macroblock* %238, i32 0, i32 15
  %arrayidx267 = getelementptr inbounds [4 x i32], [4 x i32]* %b8pdir266, i32 0, i64 %idxprom265
  store i32 %236, i32* %arrayidx267, align 4
  br label %for.inc.268

for.inc.268:                                      ; preds = %for.body.255
  %239 = load i32, i32* %i, align 4
  %inc269 = add nsw i32 %239, 1
  store i32 %inc269, i32* %i, align 4
  br label %for.cond.252

for.end.270:                                      ; preds = %for.cond.252
  %240 = load %struct.RD_DATA*, %struct.RD_DATA** @rdopt, align 8
  %luma_transform_size_8x8_flag = getelementptr inbounds %struct.RD_DATA, %struct.RD_DATA* %240, i32 0, i32 22
  %241 = load i32, i32* %luma_transform_size_8x8_flag, align 4
  %242 = load %struct.macroblock*, %struct.macroblock** %currMB, align 8
  %luma_transform_size_8x8_flag271 = getelementptr inbounds %struct.macroblock, %struct.macroblock* %242, i32 0, i32 32
  store i32 %241, i32* %luma_transform_size_8x8_flag271, align 4
  %243 = load i32, i32* %mode, align 4
  %cmp272 = icmp eq i32 %243, 8
  br i1 %cmp272, label %if.then.274, label %if.else

if.then.274:                                      ; preds = %for.end.270
  store i32 0, i32* %k, align 4
  %244 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %block_y275 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %244, i32 0, i32 32
  %245 = load i32, i32* %block_y275, align 4
  store i32 %245, i32* %j, align 4
  br label %for.cond.276

for.cond.276:                                     ; preds = %for.inc.307, %if.then.274
  %246 = load i32, i32* %j, align 4
  %247 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %block_y277 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %247, i32 0, i32 32
  %248 = load i32, i32* %block_y277, align 4
  %add278 = add nsw i32 %248, 4
  %cmp279 = icmp slt i32 %246, %add278
  br i1 %cmp279, label %for.body.281, label %for.end.309

for.body.281:                                     ; preds = %for.cond.276
  %249 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %block_x282 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %249, i32 0, i32 31
  %250 = load i32, i32* %block_x282, align 4
  store i32 %250, i32* %i, align 4
  br label %for.cond.283

for.cond.283:                                     ; preds = %for.inc.303, %for.body.281
  %251 = load i32, i32* %i, align 4
  %252 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %block_x284 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %252, i32 0, i32 31
  %253 = load i32, i32* %block_x284, align 4
  %add285 = add nsw i32 %253, 4
  %cmp286 = icmp slt i32 %251, %add285
  br i1 %cmp286, label %for.body.288, label %for.end.306

for.body.288:                                     ; preds = %for.cond.283
  %254 = load i32, i32* %j, align 4
  %idxprom289 = sext i32 %254 to i64
  %255 = load i32, i32* %i, align 4
  %idxprom290 = sext i32 %255 to i64
  %256 = load %struct.RD_DATA*, %struct.RD_DATA** @rdopt, align 8
  %ipredmode = getelementptr inbounds %struct.RD_DATA, %struct.RD_DATA* %256, i32 0, i32 10
  %257 = load i32**, i32*** %ipredmode, align 8
  %arrayidx291 = getelementptr inbounds i32*, i32** %257, i64 %idxprom290
  %258 = load i32*, i32** %arrayidx291, align 8
  %arrayidx292 = getelementptr inbounds i32, i32* %258, i64 %idxprom289
  %259 = load i32, i32* %arrayidx292, align 4
  %260 = load i32, i32* %j, align 4
  %idxprom293 = sext i32 %260 to i64
  %261 = load i32, i32* %i, align 4
  %idxprom294 = sext i32 %261 to i64
  %262 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %ipredmode295 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %262, i32 0, i32 25
  %263 = load i32**, i32*** %ipredmode295, align 8
  %arrayidx296 = getelementptr inbounds i32*, i32** %263, i64 %idxprom294
  %264 = load i32*, i32** %arrayidx296, align 8
  %arrayidx297 = getelementptr inbounds i32, i32* %264, i64 %idxprom293
  store i32 %259, i32* %arrayidx297, align 4
  %265 = load i32, i32* %k, align 4
  %idxprom298 = sext i32 %265 to i64
  %266 = load %struct.RD_DATA*, %struct.RD_DATA** @rdopt, align 8
  %intra_pred_modes = getelementptr inbounds %struct.RD_DATA, %struct.RD_DATA* %266, i32 0, i32 11
  %arrayidx299 = getelementptr inbounds [16 x i32], [16 x i32]* %intra_pred_modes, i32 0, i64 %idxprom298
  %267 = load i32, i32* %arrayidx299, align 4
  %268 = load i32, i32* %k, align 4
  %idxprom300 = sext i32 %268 to i64
  %269 = load %struct.macroblock*, %struct.macroblock** %currMB, align 8
  %intra_pred_modes301 = getelementptr inbounds %struct.macroblock, %struct.macroblock* %269, i32 0, i32 10
  %arrayidx302 = getelementptr inbounds [16 x i32], [16 x i32]* %intra_pred_modes301, i32 0, i64 %idxprom300
  store i32 %267, i32* %arrayidx302, align 4
  br label %for.inc.303

for.inc.303:                                      ; preds = %for.body.288
  %270 = load i32, i32* %i, align 4
  %inc304 = add nsw i32 %270, 1
  store i32 %inc304, i32* %i, align 4
  %271 = load i32, i32* %k, align 4
  %inc305 = add nsw i32 %271, 1
  store i32 %inc305, i32* %k, align 4
  br label %for.cond.283

for.end.306:                                      ; preds = %for.cond.283
  br label %for.inc.307

for.inc.307:                                      ; preds = %for.end.306
  %272 = load i32, i32* %j, align 4
  %inc308 = add nsw i32 %272, 1
  store i32 %inc308, i32* %j, align 4
  br label %for.cond.276

for.end.309:                                      ; preds = %for.cond.276
  br label %if.end.390

if.else:                                          ; preds = %for.end.270
  %273 = load i32, i32* %mode, align 4
  %cmp310 = icmp ne i32 %273, 9
  br i1 %cmp310, label %land.lhs.true.312, label %if.else.345

land.lhs.true.312:                                ; preds = %if.else
  %274 = load i32, i32* %mode, align 4
  %cmp313 = icmp ne i32 %274, 13
  br i1 %cmp313, label %if.then.315, label %if.else.345

if.then.315:                                      ; preds = %land.lhs.true.312
  store i32 0, i32* %k, align 4
  %275 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %block_y316 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %275, i32 0, i32 32
  %276 = load i32, i32* %block_y316, align 4
  store i32 %276, i32* %j, align 4
  br label %for.cond.317

for.cond.317:                                     ; preds = %for.inc.342, %if.then.315
  %277 = load i32, i32* %j, align 4
  %278 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %block_y318 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %278, i32 0, i32 32
  %279 = load i32, i32* %block_y318, align 4
  %add319 = add nsw i32 %279, 4
  %cmp320 = icmp slt i32 %277, %add319
  br i1 %cmp320, label %for.body.322, label %for.end.344

for.body.322:                                     ; preds = %for.cond.317
  %280 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %block_x323 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %280, i32 0, i32 31
  %281 = load i32, i32* %block_x323, align 4
  store i32 %281, i32* %i, align 4
  br label %for.cond.324

for.cond.324:                                     ; preds = %for.inc.338, %for.body.322
  %282 = load i32, i32* %i, align 4
  %283 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %block_x325 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %283, i32 0, i32 31
  %284 = load i32, i32* %block_x325, align 4
  %add326 = add nsw i32 %284, 4
  %cmp327 = icmp slt i32 %282, %add326
  br i1 %cmp327, label %for.body.329, label %for.end.341

for.body.329:                                     ; preds = %for.cond.324
  %285 = load i32, i32* %j, align 4
  %idxprom330 = sext i32 %285 to i64
  %286 = load i32, i32* %i, align 4
  %idxprom331 = sext i32 %286 to i64
  %287 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %ipredmode332 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %287, i32 0, i32 25
  %288 = load i32**, i32*** %ipredmode332, align 8
  %arrayidx333 = getelementptr inbounds i32*, i32** %288, i64 %idxprom331
  %289 = load i32*, i32** %arrayidx333, align 8
  %arrayidx334 = getelementptr inbounds i32, i32* %289, i64 %idxprom330
  store i32 2, i32* %arrayidx334, align 4
  %290 = load i32, i32* %k, align 4
  %idxprom335 = sext i32 %290 to i64
  %291 = load %struct.macroblock*, %struct.macroblock** %currMB, align 8
  %intra_pred_modes336 = getelementptr inbounds %struct.macroblock, %struct.macroblock* %291, i32 0, i32 10
  %arrayidx337 = getelementptr inbounds [16 x i32], [16 x i32]* %intra_pred_modes336, i32 0, i64 %idxprom335
  store i32 2, i32* %arrayidx337, align 4
  br label %for.inc.338

for.inc.338:                                      ; preds = %for.body.329
  %292 = load i32, i32* %i, align 4
  %inc339 = add nsw i32 %292, 1
  store i32 %inc339, i32* %i, align 4
  %293 = load i32, i32* %k, align 4
  %inc340 = add nsw i32 %293, 1
  store i32 %inc340, i32* %k, align 4
  br label %for.cond.324

for.end.341:                                      ; preds = %for.cond.324
  br label %for.inc.342

for.inc.342:                                      ; preds = %for.end.341
  %294 = load i32, i32* %j, align 4
  %inc343 = add nsw i32 %294, 1
  store i32 %inc343, i32* %j, align 4
  br label %for.cond.317

for.end.344:                                      ; preds = %for.cond.317
  br label %if.end.389

if.else.345:                                      ; preds = %land.lhs.true.312, %if.else
  %295 = load i32, i32* %mode, align 4
  %cmp346 = icmp eq i32 %295, 9
  br i1 %cmp346, label %if.then.350, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.else.345
  %296 = load i32, i32* %mode, align 4
  %cmp348 = icmp eq i32 %296, 13
  br i1 %cmp348, label %if.then.350, label %if.end.388

if.then.350:                                      ; preds = %lor.lhs.false, %if.else.345
  store i32 0, i32* %k, align 4
  %297 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %block_y351 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %297, i32 0, i32 32
  %298 = load i32, i32* %block_y351, align 4
  store i32 %298, i32* %j, align 4
  br label %for.cond.352

for.cond.352:                                     ; preds = %for.inc.385, %if.then.350
  %299 = load i32, i32* %j, align 4
  %300 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %block_y353 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %300, i32 0, i32 32
  %301 = load i32, i32* %block_y353, align 4
  %add354 = add nsw i32 %301, 4
  %cmp355 = icmp slt i32 %299, %add354
  br i1 %cmp355, label %for.body.357, label %for.end.387

for.body.357:                                     ; preds = %for.cond.352
  %302 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %block_x358 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %302, i32 0, i32 31
  %303 = load i32, i32* %block_x358, align 4
  store i32 %303, i32* %i, align 4
  br label %for.cond.359

for.cond.359:                                     ; preds = %for.inc.381, %for.body.357
  %304 = load i32, i32* %i, align 4
  %305 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %block_x360 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %305, i32 0, i32 31
  %306 = load i32, i32* %block_x360, align 4
  %add361 = add nsw i32 %306, 4
  %cmp362 = icmp slt i32 %304, %add361
  br i1 %cmp362, label %for.body.364, label %for.end.384

for.body.364:                                     ; preds = %for.cond.359
  %307 = load i32, i32* %j, align 4
  %idxprom365 = sext i32 %307 to i64
  %308 = load i32, i32* %i, align 4
  %idxprom366 = sext i32 %308 to i64
  %309 = load %struct.RD_DATA*, %struct.RD_DATA** @rdopt, align 8
  %ipredmode367 = getelementptr inbounds %struct.RD_DATA, %struct.RD_DATA* %309, i32 0, i32 10
  %310 = load i32**, i32*** %ipredmode367, align 8
  %arrayidx368 = getelementptr inbounds i32*, i32** %310, i64 %idxprom366
  %311 = load i32*, i32** %arrayidx368, align 8
  %arrayidx369 = getelementptr inbounds i32, i32* %311, i64 %idxprom365
  %312 = load i32, i32* %arrayidx369, align 4
  %313 = load i32, i32* %j, align 4
  %idxprom370 = sext i32 %313 to i64
  %314 = load i32, i32* %i, align 4
  %idxprom371 = sext i32 %314 to i64
  %315 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %ipredmode372 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %315, i32 0, i32 25
  %316 = load i32**, i32*** %ipredmode372, align 8
  %arrayidx373 = getelementptr inbounds i32*, i32** %316, i64 %idxprom371
  %317 = load i32*, i32** %arrayidx373, align 8
  %arrayidx374 = getelementptr inbounds i32, i32* %317, i64 %idxprom370
  store i32 %312, i32* %arrayidx374, align 4
  %318 = load i32, i32* %k, align 4
  %idxprom375 = sext i32 %318 to i64
  %319 = load %struct.RD_DATA*, %struct.RD_DATA** @rdopt, align 8
  %intra_pred_modes376 = getelementptr inbounds %struct.RD_DATA, %struct.RD_DATA* %319, i32 0, i32 11
  %arrayidx377 = getelementptr inbounds [16 x i32], [16 x i32]* %intra_pred_modes376, i32 0, i64 %idxprom375
  %320 = load i32, i32* %arrayidx377, align 4
  %321 = load i32, i32* %k, align 4
  %idxprom378 = sext i32 %321 to i64
  %322 = load %struct.macroblock*, %struct.macroblock** %currMB, align 8
  %intra_pred_modes379 = getelementptr inbounds %struct.macroblock, %struct.macroblock* %322, i32 0, i32 10
  %arrayidx380 = getelementptr inbounds [16 x i32], [16 x i32]* %intra_pred_modes379, i32 0, i64 %idxprom378
  store i32 %320, i32* %arrayidx380, align 4
  br label %for.inc.381

for.inc.381:                                      ; preds = %for.body.364
  %323 = load i32, i32* %i, align 4
  %inc382 = add nsw i32 %323, 1
  store i32 %inc382, i32* %i, align 4
  %324 = load i32, i32* %k, align 4
  %inc383 = add nsw i32 %324, 1
  store i32 %inc383, i32* %k, align 4
  br label %for.cond.359

for.end.384:                                      ; preds = %for.cond.359
  br label %for.inc.385

for.inc.385:                                      ; preds = %for.end.384
  %325 = load i32, i32* %j, align 4
  %inc386 = add nsw i32 %325, 1
  store i32 %inc386, i32* %j, align 4
  br label %for.cond.352

for.end.387:                                      ; preds = %for.cond.352
  br label %if.end.388

if.end.388:                                       ; preds = %for.end.387, %lor.lhs.false
  br label %if.end.389

if.end.389:                                       ; preds = %if.end.388, %for.end.344
  br label %if.end.390

if.end.390:                                       ; preds = %if.end.389, %for.end.309
  %326 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %MbaffFrameFlag391 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %326, i32 0, i32 90
  %327 = load i32, i32* %MbaffFrameFlag391, align 4
  %tobool392 = icmp ne i32 %327, 0
  br i1 %tobool392, label %if.then.393, label %if.end.662

if.then.393:                                      ; preds = %if.end.390
  call void @copy_motion_vectors_MB()
  %328 = load %struct.macroblock*, %struct.macroblock** %currMB, align 8
  %mb_type394 = getelementptr inbounds %struct.macroblock, %struct.macroblock* %328, i32 0, i32 8
  %329 = load i32, i32* %mb_type394, align 4
  %cmp395 = icmp eq i32 %329, 9
  br i1 %cmp395, label %if.else.599, label %lor.lhs.false.397

lor.lhs.false.397:                                ; preds = %if.then.393
  %330 = load %struct.macroblock*, %struct.macroblock** %currMB, align 8
  %mb_type398 = getelementptr inbounds %struct.macroblock, %struct.macroblock* %330, i32 0, i32 8
  %331 = load i32, i32* %mb_type398, align 4
  %cmp399 = icmp eq i32 %331, 10
  br i1 %cmp399, label %if.else.599, label %lor.lhs.false.401

lor.lhs.false.401:                                ; preds = %lor.lhs.false.397
  %332 = load %struct.macroblock*, %struct.macroblock** %currMB, align 8
  %mb_type402 = getelementptr inbounds %struct.macroblock, %struct.macroblock* %332, i32 0, i32 8
  %333 = load i32, i32* %mb_type402, align 4
  %cmp403 = icmp eq i32 %333, 13
  br i1 %cmp403, label %if.else.599, label %if.then.405

if.then.405:                                      ; preds = %lor.lhs.false.401
  store i32 0, i32* %j, align 4
  br label %for.cond.406

for.cond.406:                                     ; preds = %for.inc.596, %if.then.405
  %334 = load i32, i32* %j, align 4
  %cmp407 = icmp slt i32 %334, 4
  br i1 %cmp407, label %for.body.409, label %for.end.598

for.body.409:                                     ; preds = %for.cond.406
  store i32 0, i32* %i, align 4
  br label %for.cond.410

for.cond.410:                                     ; preds = %for.inc.593, %for.body.409
  %335 = load i32, i32* %i, align 4
  %cmp411 = icmp slt i32 %335, 4
  br i1 %cmp411, label %for.body.413, label %for.end.595

for.body.413:                                     ; preds = %for.cond.410
  %336 = load i32, i32* %i, align 4
  %div = sdiv i32 %336, 2
  %337 = load i32, i32* %j, align 4
  %div414 = sdiv i32 %337, 2
  %mul = mul nsw i32 2, %div414
  %add415 = add nsw i32 %div, %mul
  %idxprom416 = sext i32 %add415 to i64
  %338 = load %struct.macroblock*, %struct.macroblock** %currMB, align 8
  %b8mode417 = getelementptr inbounds %struct.macroblock, %struct.macroblock* %338, i32 0, i32 14
  %arrayidx418 = getelementptr inbounds [4 x i32], [4 x i32]* %b8mode417, i32 0, i64 %idxprom416
  %339 = load i32, i32* %arrayidx418, align 4
  store i32 %339, i32* %b8mode, align 4
  %340 = load i32, i32* %i, align 4
  %div419 = sdiv i32 %340, 2
  %341 = load i32, i32* %j, align 4
  %div420 = sdiv i32 %341, 2
  %mul421 = mul nsw i32 2, %div420
  %add422 = add nsw i32 %div419, %mul421
  %idxprom423 = sext i32 %add422 to i64
  %342 = load %struct.macroblock*, %struct.macroblock** %currMB, align 8
  %b8pdir424 = getelementptr inbounds %struct.macroblock, %struct.macroblock* %342, i32 0, i32 15
  %arrayidx425 = getelementptr inbounds [4 x i32], [4 x i32]* %b8pdir424, i32 0, i64 %idxprom423
  %343 = load i32, i32* %arrayidx425, align 4
  store i32 %343, i32* %b8pdir, align 4
  %344 = load i32, i32* %b8pdir, align 4
  %cmp426 = icmp ne i32 %344, 1
  br i1 %cmp426, label %if.then.428, label %if.else.483

if.then.428:                                      ; preds = %for.body.413
  %345 = load i32, i32* %b8mode, align 4
  %idxprom429 = sext i32 %345 to i64
  %346 = load i32, i32* %i, align 4
  %idxprom430 = sext i32 %346 to i64
  %347 = load i32, i32* %j, align 4
  %idxprom431 = sext i32 %347 to i64
  %348 = load %struct.RD_DATA*, %struct.RD_DATA** @rdopt, align 8
  %refar432 = getelementptr inbounds %struct.RD_DATA, %struct.RD_DATA* %348, i32 0, i32 19
  %arrayidx433 = getelementptr inbounds [2 x [4 x [4 x i16]]], [2 x [4 x [4 x i16]]]* %refar432, i32 0, i64 0
  %arrayidx434 = getelementptr inbounds [4 x [4 x i16]], [4 x [4 x i16]]* %arrayidx433, i32 0, i64 %idxprom431
  %arrayidx435 = getelementptr inbounds [4 x i16], [4 x i16]* %arrayidx434, i32 0, i64 %idxprom430
  %349 = load i16, i16* %arrayidx435, align 2
  %idxprom436 = sext i16 %349 to i64
  %350 = load i32, i32* %j, align 4
  %idxprom437 = sext i32 %350 to i64
  %351 = load i32, i32* %i, align 4
  %idxprom438 = sext i32 %351 to i64
  %352 = load %struct.RD_DATA*, %struct.RD_DATA** @rdopt, align 8
  %all_mv = getelementptr inbounds %struct.RD_DATA, %struct.RD_DATA* %352, i32 0, i32 16
  %353 = load i16******, i16******* %all_mv, align 8
  %arrayidx439 = getelementptr inbounds i16*****, i16****** %353, i64 %idxprom438
  %354 = load i16*****, i16****** %arrayidx439, align 8
  %arrayidx440 = getelementptr inbounds i16****, i16***** %354, i64 %idxprom437
  %355 = load i16****, i16***** %arrayidx440, align 8
  %arrayidx441 = getelementptr inbounds i16***, i16**** %355, i64 0
  %356 = load i16***, i16**** %arrayidx441, align 8
  %arrayidx442 = getelementptr inbounds i16**, i16*** %356, i64 %idxprom436
  %357 = load i16**, i16*** %arrayidx442, align 8
  %arrayidx443 = getelementptr inbounds i16*, i16** %357, i64 %idxprom429
  %358 = load i16*, i16** %arrayidx443, align 8
  %arrayidx444 = getelementptr inbounds i16, i16* %358, i64 0
  %359 = load i16, i16* %arrayidx444, align 2
  %360 = load i32, i32* %j, align 4
  %361 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %block_y445 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %361, i32 0, i32 32
  %362 = load i32, i32* %block_y445, align 4
  %add446 = add nsw i32 %360, %362
  %idxprom447 = sext i32 %add446 to i64
  %363 = load i32, i32* %i, align 4
  %364 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %block_x448 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %364, i32 0, i32 31
  %365 = load i32, i32* %block_x448, align 4
  %add449 = add nsw i32 %363, %365
  %idxprom450 = sext i32 %add449 to i64
  %366 = load %struct.storable_picture*, %struct.storable_picture** @enc_picture, align 8
  %mv = getelementptr inbounds %struct.storable_picture, %struct.storable_picture* %366, i32 0, i32 35
  %367 = load i16****, i16***** %mv, align 8
  %arrayidx451 = getelementptr inbounds i16***, i16**** %367, i64 0
  %368 = load i16***, i16**** %arrayidx451, align 8
  %arrayidx452 = getelementptr inbounds i16**, i16*** %368, i64 %idxprom450
  %369 = load i16**, i16*** %arrayidx452, align 8
  %arrayidx453 = getelementptr inbounds i16*, i16** %369, i64 %idxprom447
  %370 = load i16*, i16** %arrayidx453, align 8
  %arrayidx454 = getelementptr inbounds i16, i16* %370, i64 0
  store i16 %359, i16* %arrayidx454, align 2
  %371 = load i32, i32* %b8mode, align 4
  %idxprom455 = sext i32 %371 to i64
  %372 = load i32, i32* %i, align 4
  %idxprom456 = sext i32 %372 to i64
  %373 = load i32, i32* %j, align 4
  %idxprom457 = sext i32 %373 to i64
  %374 = load %struct.RD_DATA*, %struct.RD_DATA** @rdopt, align 8
  %refar458 = getelementptr inbounds %struct.RD_DATA, %struct.RD_DATA* %374, i32 0, i32 19
  %arrayidx459 = getelementptr inbounds [2 x [4 x [4 x i16]]], [2 x [4 x [4 x i16]]]* %refar458, i32 0, i64 0
  %arrayidx460 = getelementptr inbounds [4 x [4 x i16]], [4 x [4 x i16]]* %arrayidx459, i32 0, i64 %idxprom457
  %arrayidx461 = getelementptr inbounds [4 x i16], [4 x i16]* %arrayidx460, i32 0, i64 %idxprom456
  %375 = load i16, i16* %arrayidx461, align 2
  %idxprom462 = sext i16 %375 to i64
  %376 = load i32, i32* %j, align 4
  %idxprom463 = sext i32 %376 to i64
  %377 = load i32, i32* %i, align 4
  %idxprom464 = sext i32 %377 to i64
  %378 = load %struct.RD_DATA*, %struct.RD_DATA** @rdopt, align 8
  %all_mv465 = getelementptr inbounds %struct.RD_DATA, %struct.RD_DATA* %378, i32 0, i32 16
  %379 = load i16******, i16******* %all_mv465, align 8
  %arrayidx466 = getelementptr inbounds i16*****, i16****** %379, i64 %idxprom464
  %380 = load i16*****, i16****** %arrayidx466, align 8
  %arrayidx467 = getelementptr inbounds i16****, i16***** %380, i64 %idxprom463
  %381 = load i16****, i16***** %arrayidx467, align 8
  %arrayidx468 = getelementptr inbounds i16***, i16**** %381, i64 0
  %382 = load i16***, i16**** %arrayidx468, align 8
  %arrayidx469 = getelementptr inbounds i16**, i16*** %382, i64 %idxprom462
  %383 = load i16**, i16*** %arrayidx469, align 8
  %arrayidx470 = getelementptr inbounds i16*, i16** %383, i64 %idxprom455
  %384 = load i16*, i16** %arrayidx470, align 8
  %arrayidx471 = getelementptr inbounds i16, i16* %384, i64 1
  %385 = load i16, i16* %arrayidx471, align 2
  %386 = load i32, i32* %j, align 4
  %387 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %block_y472 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %387, i32 0, i32 32
  %388 = load i32, i32* %block_y472, align 4
  %add473 = add nsw i32 %386, %388
  %idxprom474 = sext i32 %add473 to i64
  %389 = load i32, i32* %i, align 4
  %390 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %block_x475 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %390, i32 0, i32 31
  %391 = load i32, i32* %block_x475, align 4
  %add476 = add nsw i32 %389, %391
  %idxprom477 = sext i32 %add476 to i64
  %392 = load %struct.storable_picture*, %struct.storable_picture** @enc_picture, align 8
  %mv478 = getelementptr inbounds %struct.storable_picture, %struct.storable_picture* %392, i32 0, i32 35
  %393 = load i16****, i16***** %mv478, align 8
  %arrayidx479 = getelementptr inbounds i16***, i16**** %393, i64 0
  %394 = load i16***, i16**** %arrayidx479, align 8
  %arrayidx480 = getelementptr inbounds i16**, i16*** %394, i64 %idxprom477
  %395 = load i16**, i16*** %arrayidx480, align 8
  %arrayidx481 = getelementptr inbounds i16*, i16** %395, i64 %idxprom474
  %396 = load i16*, i16** %arrayidx481, align 8
  %arrayidx482 = getelementptr inbounds i16, i16* %396, i64 1
  store i16 %385, i16* %arrayidx482, align 2
  br label %if.end.506

if.else.483:                                      ; preds = %for.body.413
  %397 = load i32, i32* %j, align 4
  %398 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %block_y484 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %398, i32 0, i32 32
  %399 = load i32, i32* %block_y484, align 4
  %add485 = add nsw i32 %397, %399
  %idxprom486 = sext i32 %add485 to i64
  %400 = load i32, i32* %i, align 4
  %401 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %block_x487 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %401, i32 0, i32 31
  %402 = load i32, i32* %block_x487, align 4
  %add488 = add nsw i32 %400, %402
  %idxprom489 = sext i32 %add488 to i64
  %403 = load %struct.storable_picture*, %struct.storable_picture** @enc_picture, align 8
  %mv490 = getelementptr inbounds %struct.storable_picture, %struct.storable_picture* %403, i32 0, i32 35
  %404 = load i16****, i16***** %mv490, align 8
  %arrayidx491 = getelementptr inbounds i16***, i16**** %404, i64 0
  %405 = load i16***, i16**** %arrayidx491, align 8
  %arrayidx492 = getelementptr inbounds i16**, i16*** %405, i64 %idxprom489
  %406 = load i16**, i16*** %arrayidx492, align 8
  %arrayidx493 = getelementptr inbounds i16*, i16** %406, i64 %idxprom486
  %407 = load i16*, i16** %arrayidx493, align 8
  %arrayidx494 = getelementptr inbounds i16, i16* %407, i64 0
  store i16 0, i16* %arrayidx494, align 2
  %408 = load i32, i32* %j, align 4
  %409 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %block_y495 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %409, i32 0, i32 32
  %410 = load i32, i32* %block_y495, align 4
  %add496 = add nsw i32 %408, %410
  %idxprom497 = sext i32 %add496 to i64
  %411 = load i32, i32* %i, align 4
  %412 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %block_x498 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %412, i32 0, i32 31
  %413 = load i32, i32* %block_x498, align 4
  %add499 = add nsw i32 %411, %413
  %idxprom500 = sext i32 %add499 to i64
  %414 = load %struct.storable_picture*, %struct.storable_picture** @enc_picture, align 8
  %mv501 = getelementptr inbounds %struct.storable_picture, %struct.storable_picture* %414, i32 0, i32 35
  %415 = load i16****, i16***** %mv501, align 8
  %arrayidx502 = getelementptr inbounds i16***, i16**** %415, i64 0
  %416 = load i16***, i16**** %arrayidx502, align 8
  %arrayidx503 = getelementptr inbounds i16**, i16*** %416, i64 %idxprom500
  %417 = load i16**, i16*** %arrayidx503, align 8
  %arrayidx504 = getelementptr inbounds i16*, i16** %417, i64 %idxprom497
  %418 = load i16*, i16** %arrayidx504, align 8
  %arrayidx505 = getelementptr inbounds i16, i16* %418, i64 1
  store i16 0, i16* %arrayidx505, align 2
  br label %if.end.506

if.end.506:                                       ; preds = %if.else.483, %if.then.428
  %419 = load i32, i32* %bframe, align 4
  %tobool507 = icmp ne i32 %419, 0
  br i1 %tobool507, label %if.then.508, label %if.end.592

if.then.508:                                      ; preds = %if.end.506
  %420 = load i32, i32* %b8pdir, align 4
  %cmp509 = icmp ne i32 %420, 0
  br i1 %cmp509, label %if.then.511, label %if.else.568

if.then.511:                                      ; preds = %if.then.508
  %421 = load i32, i32* %b8mode, align 4
  %idxprom512 = sext i32 %421 to i64
  %422 = load i32, i32* %i, align 4
  %idxprom513 = sext i32 %422 to i64
  %423 = load i32, i32* %j, align 4
  %idxprom514 = sext i32 %423 to i64
  %424 = load %struct.RD_DATA*, %struct.RD_DATA** @rdopt, align 8
  %refar515 = getelementptr inbounds %struct.RD_DATA, %struct.RD_DATA* %424, i32 0, i32 19
  %arrayidx516 = getelementptr inbounds [2 x [4 x [4 x i16]]], [2 x [4 x [4 x i16]]]* %refar515, i32 0, i64 1
  %arrayidx517 = getelementptr inbounds [4 x [4 x i16]], [4 x [4 x i16]]* %arrayidx516, i32 0, i64 %idxprom514
  %arrayidx518 = getelementptr inbounds [4 x i16], [4 x i16]* %arrayidx517, i32 0, i64 %idxprom513
  %425 = load i16, i16* %arrayidx518, align 2
  %idxprom519 = sext i16 %425 to i64
  %426 = load i32, i32* %j, align 4
  %idxprom520 = sext i32 %426 to i64
  %427 = load i32, i32* %i, align 4
  %idxprom521 = sext i32 %427 to i64
  %428 = load %struct.RD_DATA*, %struct.RD_DATA** @rdopt, align 8
  %all_mv522 = getelementptr inbounds %struct.RD_DATA, %struct.RD_DATA* %428, i32 0, i32 16
  %429 = load i16******, i16******* %all_mv522, align 8
  %arrayidx523 = getelementptr inbounds i16*****, i16****** %429, i64 %idxprom521
  %430 = load i16*****, i16****** %arrayidx523, align 8
  %arrayidx524 = getelementptr inbounds i16****, i16***** %430, i64 %idxprom520
  %431 = load i16****, i16***** %arrayidx524, align 8
  %arrayidx525 = getelementptr inbounds i16***, i16**** %431, i64 1
  %432 = load i16***, i16**** %arrayidx525, align 8
  %arrayidx526 = getelementptr inbounds i16**, i16*** %432, i64 %idxprom519
  %433 = load i16**, i16*** %arrayidx526, align 8
  %arrayidx527 = getelementptr inbounds i16*, i16** %433, i64 %idxprom512
  %434 = load i16*, i16** %arrayidx527, align 8
  %arrayidx528 = getelementptr inbounds i16, i16* %434, i64 0
  %435 = load i16, i16* %arrayidx528, align 2
  %436 = load i32, i32* %j, align 4
  %437 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %block_y529 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %437, i32 0, i32 32
  %438 = load i32, i32* %block_y529, align 4
  %add530 = add nsw i32 %436, %438
  %idxprom531 = sext i32 %add530 to i64
  %439 = load i32, i32* %i, align 4
  %440 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %block_x532 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %440, i32 0, i32 31
  %441 = load i32, i32* %block_x532, align 4
  %add533 = add nsw i32 %439, %441
  %idxprom534 = sext i32 %add533 to i64
  %442 = load %struct.storable_picture*, %struct.storable_picture** @enc_picture, align 8
  %mv535 = getelementptr inbounds %struct.storable_picture, %struct.storable_picture* %442, i32 0, i32 35
  %443 = load i16****, i16***** %mv535, align 8
  %arrayidx536 = getelementptr inbounds i16***, i16**** %443, i64 1
  %444 = load i16***, i16**** %arrayidx536, align 8
  %arrayidx537 = getelementptr inbounds i16**, i16*** %444, i64 %idxprom534
  %445 = load i16**, i16*** %arrayidx537, align 8
  %arrayidx538 = getelementptr inbounds i16*, i16** %445, i64 %idxprom531
  %446 = load i16*, i16** %arrayidx538, align 8
  %arrayidx539 = getelementptr inbounds i16, i16* %446, i64 0
  store i16 %435, i16* %arrayidx539, align 2
  %447 = load i32, i32* %b8mode, align 4
  %idxprom540 = sext i32 %447 to i64
  %448 = load i32, i32* %i, align 4
  %idxprom541 = sext i32 %448 to i64
  %449 = load i32, i32* %j, align 4
  %idxprom542 = sext i32 %449 to i64
  %450 = load %struct.RD_DATA*, %struct.RD_DATA** @rdopt, align 8
  %refar543 = getelementptr inbounds %struct.RD_DATA, %struct.RD_DATA* %450, i32 0, i32 19
  %arrayidx544 = getelementptr inbounds [2 x [4 x [4 x i16]]], [2 x [4 x [4 x i16]]]* %refar543, i32 0, i64 1
  %arrayidx545 = getelementptr inbounds [4 x [4 x i16]], [4 x [4 x i16]]* %arrayidx544, i32 0, i64 %idxprom542
  %arrayidx546 = getelementptr inbounds [4 x i16], [4 x i16]* %arrayidx545, i32 0, i64 %idxprom541
  %451 = load i16, i16* %arrayidx546, align 2
  %idxprom547 = sext i16 %451 to i64
  %452 = load i32, i32* %j, align 4
  %idxprom548 = sext i32 %452 to i64
  %453 = load i32, i32* %i, align 4
  %idxprom549 = sext i32 %453 to i64
  %454 = load %struct.RD_DATA*, %struct.RD_DATA** @rdopt, align 8
  %all_mv550 = getelementptr inbounds %struct.RD_DATA, %struct.RD_DATA* %454, i32 0, i32 16
  %455 = load i16******, i16******* %all_mv550, align 8
  %arrayidx551 = getelementptr inbounds i16*****, i16****** %455, i64 %idxprom549
  %456 = load i16*****, i16****** %arrayidx551, align 8
  %arrayidx552 = getelementptr inbounds i16****, i16***** %456, i64 %idxprom548
  %457 = load i16****, i16***** %arrayidx552, align 8
  %arrayidx553 = getelementptr inbounds i16***, i16**** %457, i64 1
  %458 = load i16***, i16**** %arrayidx553, align 8
  %arrayidx554 = getelementptr inbounds i16**, i16*** %458, i64 %idxprom547
  %459 = load i16**, i16*** %arrayidx554, align 8
  %arrayidx555 = getelementptr inbounds i16*, i16** %459, i64 %idxprom540
  %460 = load i16*, i16** %arrayidx555, align 8
  %arrayidx556 = getelementptr inbounds i16, i16* %460, i64 1
  %461 = load i16, i16* %arrayidx556, align 2
  %462 = load i32, i32* %j, align 4
  %463 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %block_y557 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %463, i32 0, i32 32
  %464 = load i32, i32* %block_y557, align 4
  %add558 = add nsw i32 %462, %464
  %idxprom559 = sext i32 %add558 to i64
  %465 = load i32, i32* %i, align 4
  %466 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %block_x560 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %466, i32 0, i32 31
  %467 = load i32, i32* %block_x560, align 4
  %add561 = add nsw i32 %465, %467
  %idxprom562 = sext i32 %add561 to i64
  %468 = load %struct.storable_picture*, %struct.storable_picture** @enc_picture, align 8
  %mv563 = getelementptr inbounds %struct.storable_picture, %struct.storable_picture* %468, i32 0, i32 35
  %469 = load i16****, i16***** %mv563, align 8
  %arrayidx564 = getelementptr inbounds i16***, i16**** %469, i64 1
  %470 = load i16***, i16**** %arrayidx564, align 8
  %arrayidx565 = getelementptr inbounds i16**, i16*** %470, i64 %idxprom562
  %471 = load i16**, i16*** %arrayidx565, align 8
  %arrayidx566 = getelementptr inbounds i16*, i16** %471, i64 %idxprom559
  %472 = load i16*, i16** %arrayidx566, align 8
  %arrayidx567 = getelementptr inbounds i16, i16* %472, i64 1
  store i16 %461, i16* %arrayidx567, align 2
  br label %if.end.591

if.else.568:                                      ; preds = %if.then.508
  %473 = load i32, i32* %j, align 4
  %474 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %block_y569 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %474, i32 0, i32 32
  %475 = load i32, i32* %block_y569, align 4
  %add570 = add nsw i32 %473, %475
  %idxprom571 = sext i32 %add570 to i64
  %476 = load i32, i32* %i, align 4
  %477 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %block_x572 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %477, i32 0, i32 31
  %478 = load i32, i32* %block_x572, align 4
  %add573 = add nsw i32 %476, %478
  %idxprom574 = sext i32 %add573 to i64
  %479 = load %struct.storable_picture*, %struct.storable_picture** @enc_picture, align 8
  %mv575 = getelementptr inbounds %struct.storable_picture, %struct.storable_picture* %479, i32 0, i32 35
  %480 = load i16****, i16***** %mv575, align 8
  %arrayidx576 = getelementptr inbounds i16***, i16**** %480, i64 1
  %481 = load i16***, i16**** %arrayidx576, align 8
  %arrayidx577 = getelementptr inbounds i16**, i16*** %481, i64 %idxprom574
  %482 = load i16**, i16*** %arrayidx577, align 8
  %arrayidx578 = getelementptr inbounds i16*, i16** %482, i64 %idxprom571
  %483 = load i16*, i16** %arrayidx578, align 8
  %arrayidx579 = getelementptr inbounds i16, i16* %483, i64 0
  store i16 0, i16* %arrayidx579, align 2
  %484 = load i32, i32* %j, align 4
  %485 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %block_y580 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %485, i32 0, i32 32
  %486 = load i32, i32* %block_y580, align 4
  %add581 = add nsw i32 %484, %486
  %idxprom582 = sext i32 %add581 to i64
  %487 = load i32, i32* %i, align 4
  %488 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %block_x583 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %488, i32 0, i32 31
  %489 = load i32, i32* %block_x583, align 4
  %add584 = add nsw i32 %487, %489
  %idxprom585 = sext i32 %add584 to i64
  %490 = load %struct.storable_picture*, %struct.storable_picture** @enc_picture, align 8
  %mv586 = getelementptr inbounds %struct.storable_picture, %struct.storable_picture* %490, i32 0, i32 35
  %491 = load i16****, i16***** %mv586, align 8
  %arrayidx587 = getelementptr inbounds i16***, i16**** %491, i64 1
  %492 = load i16***, i16**** %arrayidx587, align 8
  %arrayidx588 = getelementptr inbounds i16**, i16*** %492, i64 %idxprom585
  %493 = load i16**, i16*** %arrayidx588, align 8
  %arrayidx589 = getelementptr inbounds i16*, i16** %493, i64 %idxprom582
  %494 = load i16*, i16** %arrayidx589, align 8
  %arrayidx590 = getelementptr inbounds i16, i16* %494, i64 1
  store i16 0, i16* %arrayidx590, align 2
  br label %if.end.591

if.end.591:                                       ; preds = %if.else.568, %if.then.511
  br label %if.end.592

if.end.592:                                       ; preds = %if.end.591, %if.end.506
  br label %for.inc.593

for.inc.593:                                      ; preds = %if.end.592
  %495 = load i32, i32* %i, align 4
  %inc594 = add nsw i32 %495, 1
  store i32 %inc594, i32* %i, align 4
  br label %for.cond.410

for.end.595:                                      ; preds = %for.cond.410
  br label %for.inc.596

for.inc.596:                                      ; preds = %for.end.595
  %496 = load i32, i32* %j, align 4
  %inc597 = add nsw i32 %496, 1
  store i32 %inc597, i32* %j, align 4
  br label %for.cond.406

for.end.598:                                      ; preds = %for.cond.406
  br label %if.end.661

if.else.599:                                      ; preds = %lor.lhs.false.401, %lor.lhs.false.397, %if.then.393
  store i32 0, i32* %j, align 4
  br label %for.cond.600

for.cond.600:                                     ; preds = %for.inc.658, %if.else.599
  %497 = load i32, i32* %j, align 4
  %cmp601 = icmp slt i32 %497, 4
  br i1 %cmp601, label %for.body.603, label %for.end.660

for.body.603:                                     ; preds = %for.cond.600
  store i32 0, i32* %i, align 4
  br label %for.cond.604

for.cond.604:                                     ; preds = %for.inc.655, %for.body.603
  %498 = load i32, i32* %i, align 4
  %cmp605 = icmp slt i32 %498, 4
  br i1 %cmp605, label %for.body.607, label %for.end.657

for.body.607:                                     ; preds = %for.cond.604
  %499 = load i32, i32* %j, align 4
  %500 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %block_y608 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %500, i32 0, i32 32
  %501 = load i32, i32* %block_y608, align 4
  %add609 = add nsw i32 %499, %501
  %idxprom610 = sext i32 %add609 to i64
  %502 = load i32, i32* %i, align 4
  %503 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %block_x611 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %503, i32 0, i32 31
  %504 = load i32, i32* %block_x611, align 4
  %add612 = add nsw i32 %502, %504
  %idxprom613 = sext i32 %add612 to i64
  %505 = load %struct.storable_picture*, %struct.storable_picture** @enc_picture, align 8
  %mv614 = getelementptr inbounds %struct.storable_picture, %struct.storable_picture* %505, i32 0, i32 35
  %506 = load i16****, i16***** %mv614, align 8
  %arrayidx615 = getelementptr inbounds i16***, i16**** %506, i64 0
  %507 = load i16***, i16**** %arrayidx615, align 8
  %arrayidx616 = getelementptr inbounds i16**, i16*** %507, i64 %idxprom613
  %508 = load i16**, i16*** %arrayidx616, align 8
  %arrayidx617 = getelementptr inbounds i16*, i16** %508, i64 %idxprom610
  %509 = load i16*, i16** %arrayidx617, align 8
  %arrayidx618 = getelementptr inbounds i16, i16* %509, i64 0
  store i16 0, i16* %arrayidx618, align 2
  %510 = load i32, i32* %j, align 4
  %511 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %block_y619 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %511, i32 0, i32 32
  %512 = load i32, i32* %block_y619, align 4
  %add620 = add nsw i32 %510, %512
  %idxprom621 = sext i32 %add620 to i64
  %513 = load i32, i32* %i, align 4
  %514 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %block_x622 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %514, i32 0, i32 31
  %515 = load i32, i32* %block_x622, align 4
  %add623 = add nsw i32 %513, %515
  %idxprom624 = sext i32 %add623 to i64
  %516 = load %struct.storable_picture*, %struct.storable_picture** @enc_picture, align 8
  %mv625 = getelementptr inbounds %struct.storable_picture, %struct.storable_picture* %516, i32 0, i32 35
  %517 = load i16****, i16***** %mv625, align 8
  %arrayidx626 = getelementptr inbounds i16***, i16**** %517, i64 0
  %518 = load i16***, i16**** %arrayidx626, align 8
  %arrayidx627 = getelementptr inbounds i16**, i16*** %518, i64 %idxprom624
  %519 = load i16**, i16*** %arrayidx627, align 8
  %arrayidx628 = getelementptr inbounds i16*, i16** %519, i64 %idxprom621
  %520 = load i16*, i16** %arrayidx628, align 8
  %arrayidx629 = getelementptr inbounds i16, i16* %520, i64 1
  store i16 0, i16* %arrayidx629, align 2
  %521 = load i32, i32* %bframe, align 4
  %tobool630 = icmp ne i32 %521, 0
  br i1 %tobool630, label %if.then.631, label %if.end.654

if.then.631:                                      ; preds = %for.body.607
  %522 = load i32, i32* %j, align 4
  %523 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %block_y632 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %523, i32 0, i32 32
  %524 = load i32, i32* %block_y632, align 4
  %add633 = add nsw i32 %522, %524
  %idxprom634 = sext i32 %add633 to i64
  %525 = load i32, i32* %i, align 4
  %526 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %block_x635 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %526, i32 0, i32 31
  %527 = load i32, i32* %block_x635, align 4
  %add636 = add nsw i32 %525, %527
  %idxprom637 = sext i32 %add636 to i64
  %528 = load %struct.storable_picture*, %struct.storable_picture** @enc_picture, align 8
  %mv638 = getelementptr inbounds %struct.storable_picture, %struct.storable_picture* %528, i32 0, i32 35
  %529 = load i16****, i16***** %mv638, align 8
  %arrayidx639 = getelementptr inbounds i16***, i16**** %529, i64 1
  %530 = load i16***, i16**** %arrayidx639, align 8
  %arrayidx640 = getelementptr inbounds i16**, i16*** %530, i64 %idxprom637
  %531 = load i16**, i16*** %arrayidx640, align 8
  %arrayidx641 = getelementptr inbounds i16*, i16** %531, i64 %idxprom634
  %532 = load i16*, i16** %arrayidx641, align 8
  %arrayidx642 = getelementptr inbounds i16, i16* %532, i64 0
  store i16 0, i16* %arrayidx642, align 2
  %533 = load i32, i32* %j, align 4
  %534 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %block_y643 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %534, i32 0, i32 32
  %535 = load i32, i32* %block_y643, align 4
  %add644 = add nsw i32 %533, %535
  %idxprom645 = sext i32 %add644 to i64
  %536 = load i32, i32* %i, align 4
  %537 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %block_x646 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %537, i32 0, i32 31
  %538 = load i32, i32* %block_x646, align 4
  %add647 = add nsw i32 %536, %538
  %idxprom648 = sext i32 %add647 to i64
  %539 = load %struct.storable_picture*, %struct.storable_picture** @enc_picture, align 8
  %mv649 = getelementptr inbounds %struct.storable_picture, %struct.storable_picture* %539, i32 0, i32 35
  %540 = load i16****, i16***** %mv649, align 8
  %arrayidx650 = getelementptr inbounds i16***, i16**** %540, i64 1
  %541 = load i16***, i16**** %arrayidx650, align 8
  %arrayidx651 = getelementptr inbounds i16**, i16*** %541, i64 %idxprom648
  %542 = load i16**, i16*** %arrayidx651, align 8
  %arrayidx652 = getelementptr inbounds i16*, i16** %542, i64 %idxprom645
  %543 = load i16*, i16** %arrayidx652, align 8
  %arrayidx653 = getelementptr inbounds i16, i16* %543, i64 1
  store i16 0, i16* %arrayidx653, align 2
  br label %if.end.654

if.end.654:                                       ; preds = %if.then.631, %for.body.607
  br label %for.inc.655

for.inc.655:                                      ; preds = %if.end.654
  %544 = load i32, i32* %i, align 4
  %inc656 = add nsw i32 %544, 1
  store i32 %inc656, i32* %i, align 4
  br label %for.cond.604

for.end.657:                                      ; preds = %for.cond.604
  br label %for.inc.658

for.inc.658:                                      ; preds = %for.end.657
  %545 = load i32, i32* %j, align 4
  %inc659 = add nsw i32 %545, 1
  store i32 %inc659, i32* %j, align 4
  br label %for.cond.600

for.end.660:                                      ; preds = %for.cond.600
  br label %if.end.661

if.end.661:                                       ; preds = %for.end.660, %for.end.598
  br label %if.end.662

if.end.662:                                       ; preds = %if.end.661, %if.end.390
  ret void
}

; Function Attrs: nounwind uwtable
define void @buf2img(i16** %imgX, i8* %buf, i32 %size_x, i32 %size_y, i32 %symbol_size_in_bytes) #0 {
entry:
  %imgX.addr = alloca i16**, align 8
  %buf.addr = alloca i8*, align 8
  %size_x.addr = alloca i32, align 4
  %size_y.addr = alloca i32, align 4
  %symbol_size_in_bytes.addr = alloca i32, align 4
  %i = alloca i32, align 4
  %j = alloca i32, align 4
  %tmp16 = alloca i16, align 2
  %ui16 = alloca i16, align 2
  %tmp32 = alloca i64, align 8
  %ui32 = alloca i64, align 8
  store i16** %imgX, i16*** %imgX.addr, align 8
  store i8* %buf, i8** %buf.addr, align 8
  store i32 %size_x, i32* %size_x.addr, align 4
  store i32 %size_y, i32* %size_y.addr, align 4
  store i32 %symbol_size_in_bytes, i32* %symbol_size_in_bytes.addr, align 4
  %0 = load i32, i32* %symbol_size_in_bytes.addr, align 4
  %conv = sext i32 %0 to i64
  %cmp = icmp ugt i64 %conv, 2
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  call void @error(i8* getelementptr inbounds ([110 x i8], [110 x i8]* @.str.3, i32 0, i32 0), i32 500)
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %call = call i32 (...) @testEndian()
  %tobool = icmp ne i32 %call, 0
  br i1 %tobool, label %if.then.2, label %if.else

if.then.2:                                        ; preds = %if.end
  %1 = load i32, i32* %symbol_size_in_bytes.addr, align 4
  switch i32 %1, label %sw.default [
    i32 1, label %sw.bb
    i32 2, label %sw.bb.17
    i32 4, label %sw.bb.42
  ]

sw.bb:                                            ; preds = %if.then.2
  store i32 0, i32* %j, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc.14, %sw.bb
  %2 = load i32, i32* %j, align 4
  %3 = load i32, i32* %size_y.addr, align 4
  %cmp3 = icmp slt i32 %2, %3
  br i1 %cmp3, label %for.body, label %for.end.16

for.body:                                         ; preds = %for.cond
  store i32 0, i32* %i, align 4
  br label %for.cond.5

for.cond.5:                                       ; preds = %for.inc, %for.body
  %4 = load i32, i32* %i, align 4
  %5 = load i32, i32* %size_x.addr, align 4
  %cmp6 = icmp slt i32 %4, %5
  br i1 %cmp6, label %for.body.8, label %for.end

for.body.8:                                       ; preds = %for.cond.5
  %6 = load i32, i32* %i, align 4
  %7 = load i32, i32* %j, align 4
  %8 = load i32, i32* %size_x.addr, align 4
  %mul = mul nsw i32 %7, %8
  %add = add nsw i32 %6, %mul
  %idxprom = sext i32 %add to i64
  %9 = load i8*, i8** %buf.addr, align 8
  %arrayidx = getelementptr inbounds i8, i8* %9, i64 %idxprom
  %10 = load i8, i8* %arrayidx, align 1
  %conv9 = zext i8 %10 to i16
  %11 = load i32, i32* %i, align 4
  %idxprom10 = sext i32 %11 to i64
  %12 = load i32, i32* %j, align 4
  %idxprom11 = sext i32 %12 to i64
  %13 = load i16**, i16*** %imgX.addr, align 8
  %arrayidx12 = getelementptr inbounds i16*, i16** %13, i64 %idxprom11
  %14 = load i16*, i16** %arrayidx12, align 8
  %arrayidx13 = getelementptr inbounds i16, i16* %14, i64 %idxprom10
  store i16 %conv9, i16* %arrayidx13, align 2
  br label %for.inc

for.inc:                                          ; preds = %for.body.8
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
  br label %sw.epilog

sw.bb.17:                                         ; preds = %if.then.2
  store i32 0, i32* %j, align 4
  br label %for.cond.18

for.cond.18:                                      ; preds = %for.inc.39, %sw.bb.17
  %17 = load i32, i32* %j, align 4
  %18 = load i32, i32* %size_y.addr, align 4
  %cmp19 = icmp slt i32 %17, %18
  br i1 %cmp19, label %for.body.21, label %for.end.41

for.body.21:                                      ; preds = %for.cond.18
  store i32 0, i32* %i, align 4
  br label %for.cond.22

for.cond.22:                                      ; preds = %for.inc.36, %for.body.21
  %19 = load i32, i32* %i, align 4
  %20 = load i32, i32* %size_x.addr, align 4
  %cmp23 = icmp slt i32 %19, %20
  br i1 %cmp23, label %for.body.25, label %for.end.38

for.body.25:                                      ; preds = %for.cond.22
  %21 = bitcast i16* %tmp16 to i8*
  %22 = load i8*, i8** %buf.addr, align 8
  %23 = load i32, i32* %i, align 4
  %24 = load i32, i32* %j, align 4
  %25 = load i32, i32* %size_x.addr, align 4
  %mul26 = mul nsw i32 %24, %25
  %add27 = add nsw i32 %23, %mul26
  %mul28 = mul nsw i32 %add27, 2
  %idx.ext = sext i32 %mul28 to i64
  %add.ptr = getelementptr inbounds i8, i8* %22, i64 %idx.ext
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %21, i8* %add.ptr, i64 2, i32 1, i1 false)
  %26 = load i16, i16* %tmp16, align 2
  %conv29 = zext i16 %26 to i32
  %shr = ashr i32 %conv29, 8
  %27 = load i16, i16* %tmp16, align 2
  %conv30 = zext i16 %27 to i32
  %and = and i32 %conv30, 255
  %shl = shl i32 %and, 8
  %or = or i32 %shr, %shl
  %conv31 = trunc i32 %or to i16
  store i16 %conv31, i16* %ui16, align 2
  %28 = load i16, i16* %ui16, align 2
  %29 = load i32, i32* %i, align 4
  %idxprom32 = sext i32 %29 to i64
  %30 = load i32, i32* %j, align 4
  %idxprom33 = sext i32 %30 to i64
  %31 = load i16**, i16*** %imgX.addr, align 8
  %arrayidx34 = getelementptr inbounds i16*, i16** %31, i64 %idxprom33
  %32 = load i16*, i16** %arrayidx34, align 8
  %arrayidx35 = getelementptr inbounds i16, i16* %32, i64 %idxprom32
  store i16 %28, i16* %arrayidx35, align 2
  br label %for.inc.36

for.inc.36:                                       ; preds = %for.body.25
  %33 = load i32, i32* %i, align 4
  %inc37 = add nsw i32 %33, 1
  store i32 %inc37, i32* %i, align 4
  br label %for.cond.22

for.end.38:                                       ; preds = %for.cond.22
  br label %for.inc.39

for.inc.39:                                       ; preds = %for.end.38
  %34 = load i32, i32* %j, align 4
  %inc40 = add nsw i32 %34, 1
  store i32 %inc40, i32* %j, align 4
  br label %for.cond.18

for.end.41:                                       ; preds = %for.cond.18
  br label %sw.epilog

sw.bb.42:                                         ; preds = %if.then.2
  store i32 0, i32* %j, align 4
  br label %for.cond.43

for.cond.43:                                      ; preds = %for.inc.75, %sw.bb.42
  %35 = load i32, i32* %j, align 4
  %36 = load i32, i32* %size_y.addr, align 4
  %cmp44 = icmp slt i32 %35, %36
  br i1 %cmp44, label %for.body.46, label %for.end.77

for.body.46:                                      ; preds = %for.cond.43
  store i32 0, i32* %i, align 4
  br label %for.cond.47

for.cond.47:                                      ; preds = %for.inc.72, %for.body.46
  %37 = load i32, i32* %i, align 4
  %38 = load i32, i32* %size_x.addr, align 4
  %cmp48 = icmp slt i32 %37, %38
  br i1 %cmp48, label %for.body.50, label %for.end.74

for.body.50:                                      ; preds = %for.cond.47
  %39 = bitcast i64* %tmp32 to i8*
  %40 = load i8*, i8** %buf.addr, align 8
  %41 = load i32, i32* %i, align 4
  %42 = load i32, i32* %j, align 4
  %43 = load i32, i32* %size_x.addr, align 4
  %mul51 = mul nsw i32 %42, %43
  %add52 = add nsw i32 %41, %mul51
  %mul53 = mul nsw i32 %add52, 4
  %idx.ext54 = sext i32 %mul53 to i64
  %add.ptr55 = getelementptr inbounds i8, i8* %40, i64 %idx.ext54
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %39, i8* %add.ptr55, i64 4, i32 1, i1 false)
  %44 = load i64, i64* %tmp32, align 8
  %and56 = and i64 %44, 65280
  %shl57 = shl i64 %and56, 8
  %45 = load i64, i64* %tmp32, align 8
  %and58 = and i64 %45, 255
  %shl59 = shl i64 %and58, 24
  %or60 = or i64 %shl57, %shl59
  %46 = load i64, i64* %tmp32, align 8
  %and61 = and i64 %46, 16711680
  %shr62 = lshr i64 %and61, 8
  %or63 = or i64 %or60, %shr62
  %47 = load i64, i64* %tmp32, align 8
  %and64 = and i64 %47, 4278190080
  %shr65 = lshr i64 %and64, 24
  %or66 = or i64 %or63, %shr65
  store i64 %or66, i64* %ui32, align 8
  %48 = load i64, i64* %ui32, align 8
  %conv67 = trunc i64 %48 to i16
  %49 = load i32, i32* %i, align 4
  %idxprom68 = sext i32 %49 to i64
  %50 = load i32, i32* %j, align 4
  %idxprom69 = sext i32 %50 to i64
  %51 = load i16**, i16*** %imgX.addr, align 8
  %arrayidx70 = getelementptr inbounds i16*, i16** %51, i64 %idxprom69
  %52 = load i16*, i16** %arrayidx70, align 8
  %arrayidx71 = getelementptr inbounds i16, i16* %52, i64 %idxprom68
  store i16 %conv67, i16* %arrayidx71, align 2
  br label %for.inc.72

for.inc.72:                                       ; preds = %for.body.50
  %53 = load i32, i32* %i, align 4
  %inc73 = add nsw i32 %53, 1
  store i32 %inc73, i32* %i, align 4
  br label %for.cond.47

for.end.74:                                       ; preds = %for.cond.47
  br label %for.inc.75

for.inc.75:                                       ; preds = %for.end.74
  %54 = load i32, i32* %j, align 4
  %inc76 = add nsw i32 %54, 1
  store i32 %inc76, i32* %j, align 4
  br label %for.cond.43

for.end.77:                                       ; preds = %for.cond.43
  br label %sw.default

sw.default:                                       ; preds = %if.then.2, %for.end.77
  call void @error(i8* getelementptr inbounds ([80 x i8], [80 x i8]* @.str.4, i32 0, i32 0), i32 500)
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.default, %for.end.41, %for.end.16
  br label %if.end.106

if.else:                                          ; preds = %if.end
  store i32 0, i32* %j, align 4
  br label %for.cond.78

for.cond.78:                                      ; preds = %for.inc.103, %if.else
  %55 = load i32, i32* %j, align 4
  %56 = load i32, i32* %size_y.addr, align 4
  %cmp79 = icmp slt i32 %55, %56
  br i1 %cmp79, label %for.body.81, label %for.end.105

for.body.81:                                      ; preds = %for.cond.78
  store i32 0, i32* %i, align 4
  br label %for.cond.82

for.cond.82:                                      ; preds = %for.inc.100, %for.body.81
  %57 = load i32, i32* %i, align 4
  %58 = load i32, i32* %size_x.addr, align 4
  %cmp83 = icmp slt i32 %57, %58
  br i1 %cmp83, label %for.body.85, label %for.end.102

for.body.85:                                      ; preds = %for.cond.82
  %59 = load i32, i32* %i, align 4
  %idxprom86 = sext i32 %59 to i64
  %60 = load i32, i32* %j, align 4
  %idxprom87 = sext i32 %60 to i64
  %61 = load i16**, i16*** %imgX.addr, align 8
  %arrayidx88 = getelementptr inbounds i16*, i16** %61, i64 %idxprom87
  %62 = load i16*, i16** %arrayidx88, align 8
  %arrayidx89 = getelementptr inbounds i16, i16* %62, i64 %idxprom86
  store i16 0, i16* %arrayidx89, align 2
  %63 = load i32, i32* %i, align 4
  %idxprom90 = sext i32 %63 to i64
  %64 = load i32, i32* %j, align 4
  %idxprom91 = sext i32 %64 to i64
  %65 = load i16**, i16*** %imgX.addr, align 8
  %arrayidx92 = getelementptr inbounds i16*, i16** %65, i64 %idxprom91
  %66 = load i16*, i16** %arrayidx92, align 8
  %arrayidx93 = getelementptr inbounds i16, i16* %66, i64 %idxprom90
  %67 = bitcast i16* %arrayidx93 to i8*
  %68 = load i8*, i8** %buf.addr, align 8
  %69 = load i32, i32* %i, align 4
  %70 = load i32, i32* %j, align 4
  %71 = load i32, i32* %size_x.addr, align 4
  %mul94 = mul nsw i32 %70, %71
  %add95 = add nsw i32 %69, %mul94
  %72 = load i32, i32* %symbol_size_in_bytes.addr, align 4
  %mul96 = mul nsw i32 %add95, %72
  %idx.ext97 = sext i32 %mul96 to i64
  %add.ptr98 = getelementptr inbounds i8, i8* %68, i64 %idx.ext97
  %73 = load i32, i32* %symbol_size_in_bytes.addr, align 4
  %conv99 = sext i32 %73 to i64
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %67, i8* %add.ptr98, i64 %conv99, i32 1, i1 false)
  br label %for.inc.100

for.inc.100:                                      ; preds = %for.body.85
  %74 = load i32, i32* %i, align 4
  %inc101 = add nsw i32 %74, 1
  store i32 %inc101, i32* %i, align 4
  br label %for.cond.82

for.end.102:                                      ; preds = %for.cond.82
  br label %for.inc.103

for.inc.103:                                      ; preds = %for.end.102
  %75 = load i32, i32* %j, align 4
  %inc104 = add nsw i32 %75, 1
  store i32 %inc104, i32* %j, align 4
  br label %for.cond.78

for.end.105:                                      ; preds = %for.cond.78
  br label %if.end.106

if.end.106:                                       ; preds = %for.end.105, %sw.epilog
  ret void
}

declare i32 @testEndian(...) #1

; Function Attrs: nounwind
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* nocapture, i8* nocapture readonly, i64, i32, i1) #3

; Function Attrs: nounwind uwtable
define internal void @writeUnit(%struct.Bitstream* %currStream, i32 %partition) #0 {
entry:
  %currStream.addr = alloca %struct.Bitstream*, align 8
  %partition.addr = alloca i32, align 4
  %nalu = alloca %struct.NALU_t*, align 8
  store %struct.Bitstream* %currStream, %struct.Bitstream** %currStream.addr, align 8
  store i32 %partition, i32* %partition.addr, align 4
  %0 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %width = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %0, i32 0, i32 13
  %1 = load i32, i32* %width, align 4
  %2 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %height = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %2, i32 0, i32 15
  %3 = load i32, i32* %height, align 4
  %mul = mul nsw i32 %1, %3
  %mul1 = mul nsw i32 %mul, 4
  %call = call %struct.NALU_t* (i32, ...) bitcast (%struct.NALU_t* (...)* @AllocNALU to %struct.NALU_t* (i32, ...)*)(i32 %mul1)
  store %struct.NALU_t* %call, %struct.NALU_t** %nalu, align 8
  %4 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %current_mb_nr = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %4, i32 0, i32 3
  %5 = load i32, i32* %current_mb_nr, align 4
  %cmp = icmp eq i32 %5, 0
  %cond = select i1 %cmp, i32 3, i32 2
  %add = add nsw i32 2, %cond
  %6 = load %struct.NALU_t*, %struct.NALU_t** %nalu, align 8
  %startcodeprefix_len = getelementptr inbounds %struct.NALU_t, %struct.NALU_t* %6, i32 0, i32 0
  store i32 %add, i32* %startcodeprefix_len, align 4
  %7 = load %struct.Bitstream*, %struct.Bitstream** %currStream.addr, align 8
  %byte_pos = getelementptr inbounds %struct.Bitstream, %struct.Bitstream* %7, i32 0, i32 0
  %8 = load i32, i32* %byte_pos, align 4
  %add2 = add nsw i32 %8, 1
  %9 = load %struct.NALU_t*, %struct.NALU_t** %nalu, align 8
  %len = getelementptr inbounds %struct.NALU_t, %struct.NALU_t* %9, i32 0, i32 1
  store i32 %add2, i32* %len, align 4
  %10 = load %struct.NALU_t*, %struct.NALU_t** %nalu, align 8
  %buf = getelementptr inbounds %struct.NALU_t, %struct.NALU_t* %10, i32 0, i32 6
  %11 = load i8*, i8** %buf, align 8
  %arrayidx = getelementptr inbounds i8, i8* %11, i64 1
  %12 = load %struct.Bitstream*, %struct.Bitstream** %currStream.addr, align 8
  %streamBuffer = getelementptr inbounds %struct.Bitstream, %struct.Bitstream* %12, i32 0, i32 9
  %13 = load i8*, i8** %streamBuffer, align 8
  %14 = load %struct.NALU_t*, %struct.NALU_t** %nalu, align 8
  %len3 = getelementptr inbounds %struct.NALU_t, %struct.NALU_t* %14, i32 0, i32 1
  %15 = load i32, i32* %len3, align 4
  %sub = sub i32 %15, 1
  %conv = zext i32 %sub to i64
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %arrayidx, i8* %13, i64 %conv, i32 1, i1 false)
  %16 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %currentPicture = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %16, i32 0, i32 49
  %17 = load %struct.Picture*, %struct.Picture** %currentPicture, align 8
  %idr_flag = getelementptr inbounds %struct.Picture, %struct.Picture* %17, i32 0, i32 1
  %18 = load i32, i32* %idr_flag, align 4
  %tobool = icmp ne i32 %18, 0
  br i1 %tobool, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %19 = load %struct.NALU_t*, %struct.NALU_t** %nalu, align 8
  %nal_unit_type = getelementptr inbounds %struct.NALU_t, %struct.NALU_t* %19, i32 0, i32 3
  store i32 5, i32* %nal_unit_type, align 4
  %20 = load %struct.NALU_t*, %struct.NALU_t** %nalu, align 8
  %nal_reference_idc = getelementptr inbounds %struct.NALU_t, %struct.NALU_t* %20, i32 0, i32 4
  store i32 3, i32* %nal_reference_idc, align 4
  br label %if.end.41

if.else:                                          ; preds = %entry
  %21 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %type = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %21, i32 0, i32 6
  %22 = load i32, i32* %type, align 4
  %cmp4 = icmp eq i32 %22, 1
  br i1 %cmp4, label %if.then.6, label %if.else.22

if.then.6:                                        ; preds = %if.else
  %23 = load %struct.InputParameters*, %struct.InputParameters** @input, align 8
  %partition_mode = getelementptr inbounds %struct.InputParameters, %struct.InputParameters* %23, i32 0, i32 61
  %24 = load i32, i32* %partition_mode, align 4
  %cmp7 = icmp eq i32 %24, 0
  br i1 %cmp7, label %if.then.9, label %if.else.11

if.then.9:                                        ; preds = %if.then.6
  %25 = load %struct.NALU_t*, %struct.NALU_t** %nalu, align 8
  %nal_unit_type10 = getelementptr inbounds %struct.NALU_t, %struct.NALU_t* %25, i32 0, i32 3
  store i32 1, i32* %nal_unit_type10, align 4
  br label %if.end

if.else.11:                                       ; preds = %if.then.6
  %26 = load i32, i32* %partition.addr, align 4
  %add12 = add nsw i32 2, %26
  %27 = load %struct.NALU_t*, %struct.NALU_t** %nalu, align 8
  %nal_unit_type13 = getelementptr inbounds %struct.NALU_t, %struct.NALU_t* %27, i32 0, i32 3
  store i32 %add12, i32* %nal_unit_type13, align 4
  br label %if.end

if.end:                                           ; preds = %if.else.11, %if.then.9
  %28 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %nal_reference_idc14 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %28, i32 0, i32 113
  %29 = load i32, i32* %nal_reference_idc14, align 4
  %cmp15 = icmp ne i32 %29, 0
  br i1 %cmp15, label %if.then.17, label %if.else.19

if.then.17:                                       ; preds = %if.end
  %30 = load %struct.NALU_t*, %struct.NALU_t** %nalu, align 8
  %nal_reference_idc18 = getelementptr inbounds %struct.NALU_t, %struct.NALU_t* %30, i32 0, i32 4
  store i32 2, i32* %nal_reference_idc18, align 4
  br label %if.end.21

if.else.19:                                       ; preds = %if.end
  %31 = load %struct.NALU_t*, %struct.NALU_t** %nalu, align 8
  %nal_reference_idc20 = getelementptr inbounds %struct.NALU_t, %struct.NALU_t* %31, i32 0, i32 4
  store i32 0, i32* %nal_reference_idc20, align 4
  br label %if.end.21

if.end.21:                                        ; preds = %if.else.19, %if.then.17
  br label %if.end.40

if.else.22:                                       ; preds = %if.else
  %32 = load %struct.InputParameters*, %struct.InputParameters** @input, align 8
  %partition_mode23 = getelementptr inbounds %struct.InputParameters, %struct.InputParameters* %32, i32 0, i32 61
  %33 = load i32, i32* %partition_mode23, align 4
  %cmp24 = icmp eq i32 %33, 0
  br i1 %cmp24, label %if.then.26, label %if.else.28

if.then.26:                                       ; preds = %if.else.22
  %34 = load %struct.NALU_t*, %struct.NALU_t** %nalu, align 8
  %nal_unit_type27 = getelementptr inbounds %struct.NALU_t, %struct.NALU_t* %34, i32 0, i32 3
  store i32 1, i32* %nal_unit_type27, align 4
  br label %if.end.31

if.else.28:                                       ; preds = %if.else.22
  %35 = load i32, i32* %partition.addr, align 4
  %add29 = add nsw i32 2, %35
  %36 = load %struct.NALU_t*, %struct.NALU_t** %nalu, align 8
  %nal_unit_type30 = getelementptr inbounds %struct.NALU_t, %struct.NALU_t* %36, i32 0, i32 3
  store i32 %add29, i32* %nal_unit_type30, align 4
  br label %if.end.31

if.end.31:                                        ; preds = %if.else.28, %if.then.26
  %37 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %nal_reference_idc32 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %37, i32 0, i32 113
  %38 = load i32, i32* %nal_reference_idc32, align 4
  %cmp33 = icmp ne i32 %38, 0
  br i1 %cmp33, label %if.then.35, label %if.else.37

if.then.35:                                       ; preds = %if.end.31
  %39 = load %struct.NALU_t*, %struct.NALU_t** %nalu, align 8
  %nal_reference_idc36 = getelementptr inbounds %struct.NALU_t, %struct.NALU_t* %39, i32 0, i32 4
  store i32 2, i32* %nal_reference_idc36, align 4
  br label %if.end.39

if.else.37:                                       ; preds = %if.end.31
  %40 = load %struct.NALU_t*, %struct.NALU_t** %nalu, align 8
  %nal_reference_idc38 = getelementptr inbounds %struct.NALU_t, %struct.NALU_t* %40, i32 0, i32 4
  store i32 0, i32* %nal_reference_idc38, align 4
  br label %if.end.39

if.end.39:                                        ; preds = %if.else.37, %if.then.35
  br label %if.end.40

if.end.40:                                        ; preds = %if.end.39, %if.end.21
  br label %if.end.41

if.end.41:                                        ; preds = %if.end.40, %if.then
  %41 = load %struct.NALU_t*, %struct.NALU_t** %nalu, align 8
  %forbidden_bit = getelementptr inbounds %struct.NALU_t, %struct.NALU_t* %41, i32 0, i32 5
  store i32 0, i32* %forbidden_bit, align 4
  %42 = load i32 (%struct.NALU_t*)*, i32 (%struct.NALU_t*)** @WriteNALU, align 8
  %43 = load %struct.NALU_t*, %struct.NALU_t** %nalu, align 8
  %call42 = call i32 %42(%struct.NALU_t* %43)
  %44 = load %struct.StatParameters*, %struct.StatParameters** @stats, align 8
  %bit_ctr = getelementptr inbounds %struct.StatParameters, %struct.StatParameters* %44, i32 0, i32 4
  %45 = load i32, i32* %bit_ctr, align 4
  %add43 = add nsw i32 %45, %call42
  store i32 %add43, i32* %bit_ctr, align 4
  %46 = load %struct.NALU_t*, %struct.NALU_t** %nalu, align 8
  call void @FreeNALU(%struct.NALU_t* %46)
  ret void
}

declare %struct.NALU_t* @AllocNALU(...) #1

declare void @FreeNALU(%struct.NALU_t*) #1

declare void @combine_field(...) #1

; Function Attrs: nounwind
declare double @pow(double, double) #2

declare i32 @decide_fld_frame(float, float, i32, i32, double) #1

; Function Attrs: nounwind uwtable
define internal void @init_frame() #0 {
entry:
  %i = alloca i32, align 4
  %prevP_no = alloca i32, align 4
  %nextP_no = alloca i32, align 4
  %0 = load i32*, i32** @last_P_no_frm, align 8
  store i32* %0, i32** @last_P_no, align 8
  %1 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %current_mb_nr = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %1, i32 0, i32 3
  store i32 0, i32* %current_mb_nr, align 4
  %2 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %current_slice_nr = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %2, i32 0, i32 5
  store i32 0, i32* %current_slice_nr, align 4
  %3 = load %struct.StatParameters*, %struct.StatParameters** @stats, align 8
  %bit_slice = getelementptr inbounds %struct.StatParameters, %struct.StatParameters* %3, i32 0, i32 6
  store i32 0, i32* %bit_slice, align 4
  %4 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %mb_x = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %4, i32 0, i32 29
  store i32 0, i32* %mb_x, align 4
  %5 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %mb_y = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %5, i32 0, i32 30
  store i32 0, i32* %mb_y, align 4
  %6 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %pix_c_y = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %6, i32 0, i32 36
  store i32 0, i32* %pix_c_y, align 4
  %7 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %pix_y = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %7, i32 0, i32 34
  store i32 0, i32* %pix_y, align 4
  %8 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %block_y = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %8, i32 0, i32 32
  store i32 0, i32* %block_y, align 4
  %9 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %pix_c_x = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %9, i32 0, i32 35
  store i32 0, i32* %pix_c_x, align 4
  %10 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %block_c_x = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %10, i32 0, i32 24
  store i32 0, i32* %block_c_x, align 4
  %11 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %pix_x = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %11, i32 0, i32 33
  store i32 0, i32* %pix_x, align 4
  %12 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %block_x = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %12, i32 0, i32 31
  store i32 0, i32* %block_x, align 4
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %13 = load i32, i32* %i, align 4
  %14 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %width = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %14, i32 0, i32 13
  %15 = load i32, i32* %width, align 4
  %div = sdiv i32 %15, 16
  %16 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %height = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %16, i32 0, i32 15
  %17 = load i32, i32* %height, align 4
  %div1 = sdiv i32 %17, 16
  %mul = mul nsw i32 %div, %div1
  %cmp = icmp slt i32 %13, %mul
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %18 = load i32, i32* %i, align 4
  %idxprom = sext i32 %18 to i64
  %19 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %mb_data = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %19, i32 0, i32 51
  %20 = load %struct.macroblock*, %struct.macroblock** %mb_data, align 8
  %arrayidx = getelementptr inbounds %struct.macroblock, %struct.macroblock* %20, i64 %idxprom
  %slice_nr = getelementptr inbounds %struct.macroblock, %struct.macroblock* %arrayidx, i32 0, i32 1
  store i32 -1, i32* %slice_nr, align 4
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %21 = load i32, i32* %i, align 4
  %inc = add nsw i32 %21, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %22 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %b_frame_to_code = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %22, i32 0, i32 67
  %23 = load i32, i32* %b_frame_to_code, align 4
  %cmp2 = icmp eq i32 %23, 0
  br i1 %cmp2, label %if.then, label %if.else.63

if.then:                                          ; preds = %for.end
  %24 = load i32, i32* @start_tr_in_this_IGOP, align 4
  %25 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %number = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %25, i32 0, i32 0
  %26 = load i32, i32* %number, align 4
  %27 = load i32, i32* @start_frame_no_in_this_IGOP, align 4
  %sub = sub nsw i32 %26, %27
  %28 = load %struct.InputParameters*, %struct.InputParameters** @input, align 8
  %jumpd = getelementptr inbounds %struct.InputParameters, %struct.InputParameters* %28, i32 0, i32 5
  %29 = load i32, i32* %jumpd, align 4
  %add = add nsw i32 %29, 1
  %mul3 = mul nsw i32 %sub, %add
  %add4 = add nsw i32 %24, %mul3
  %30 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %tr = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %30, i32 0, i32 55
  store i32 %add4, i32* %tr, align 4
  %31 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %imgtr_next_P_frm = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %31, i32 0, i32 61
  %32 = load i32, i32* %imgtr_next_P_frm, align 4
  %33 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %imgtr_last_P_frm = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %33, i32 0, i32 62
  store i32 %32, i32* %imgtr_last_P_frm, align 4
  %34 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %tr5 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %34, i32 0, i32 55
  %35 = load i32, i32* %tr5, align 4
  %36 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %imgtr_next_P_frm6 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %36, i32 0, i32 61
  store i32 %35, i32* %imgtr_next_P_frm6, align 4
  %37 = load %struct.InputParameters*, %struct.InputParameters** @input, align 8
  %last_frame = getelementptr inbounds %struct.InputParameters, %struct.InputParameters* %37, i32 0, i32 79
  %38 = load i32, i32* %last_frame, align 4
  %tobool = icmp ne i32 %38, 0
  br i1 %tobool, label %land.lhs.true, label %if.end

land.lhs.true:                                    ; preds = %if.then
  %39 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %number7 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %39, i32 0, i32 0
  %40 = load i32, i32* %number7, align 4
  %add8 = add nsw i32 %40, 1
  %41 = load %struct.InputParameters*, %struct.InputParameters** @input, align 8
  %no_frames = getelementptr inbounds %struct.InputParameters, %struct.InputParameters* %41, i32 0, i32 2
  %42 = load i32, i32* %no_frames, align 4
  %cmp9 = icmp eq i32 %add8, %42
  br i1 %cmp9, label %if.then.10, label %if.end

if.then.10:                                       ; preds = %land.lhs.true
  %43 = load %struct.InputParameters*, %struct.InputParameters** @input, align 8
  %last_frame11 = getelementptr inbounds %struct.InputParameters, %struct.InputParameters* %43, i32 0, i32 79
  %44 = load i32, i32* %last_frame11, align 4
  %45 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %tr12 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %45, i32 0, i32 55
  store i32 %44, i32* %tr12, align 4
  br label %if.end

if.end:                                           ; preds = %if.then.10, %land.lhs.true, %if.then
  %46 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %number13 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %46, i32 0, i32 0
  %47 = load i32, i32* %number13, align 4
  %48 = load i32, i32* @start_frame_no_in_this_IGOP, align 4
  %sub14 = sub nsw i32 %47, %48
  %cmp15 = icmp ne i32 %sub14, 0
  br i1 %cmp15, label %land.lhs.true.16, label %if.end.20

land.lhs.true.16:                                 ; preds = %if.end
  %49 = load %struct.InputParameters*, %struct.InputParameters** @input, align 8
  %successive_Bframe = getelementptr inbounds %struct.InputParameters, %struct.InputParameters* %49, i32 0, i32 34
  %50 = load i32, i32* %successive_Bframe, align 4
  %cmp17 = icmp ne i32 %50, 0
  br i1 %cmp17, label %if.then.18, label %if.end.20

if.then.18:                                       ; preds = %land.lhs.true.16
  %51 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %tr19 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %51, i32 0, i32 55
  %52 = load i32, i32* %tr19, align 4
  store i32 %52, i32* @nextP_tr_frm, align 4
  br label %if.end.20

if.end.20:                                        ; preds = %if.then.18, %land.lhs.true.16, %if.end
  %53 = load %struct.InputParameters*, %struct.InputParameters** @input, align 8
  %RCEnable = getelementptr inbounds %struct.InputParameters, %struct.InputParameters* %53, i32 0, i32 127
  %54 = load i32, i32* %RCEnable, align 4
  %tobool21 = icmp ne i32 %54, 0
  br i1 %tobool21, label %if.end.52, label %if.then.22

if.then.22:                                       ; preds = %if.end.20
  %55 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %type = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %55, i32 0, i32 6
  %56 = load i32, i32* %type, align 4
  %cmp23 = icmp eq i32 %56, 2
  br i1 %cmp23, label %if.then.24, label %if.else.33

if.then.24:                                       ; preds = %if.then.22
  %57 = load %struct.InputParameters*, %struct.InputParameters** @input, align 8
  %qp2start = getelementptr inbounds %struct.InputParameters, %struct.InputParameters* %57, i32 0, i32 82
  %58 = load i32, i32* %qp2start, align 4
  %cmp25 = icmp sgt i32 %58, 0
  br i1 %cmp25, label %land.lhs.true.26, label %if.else

land.lhs.true.26:                                 ; preds = %if.then.24
  %59 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %tr27 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %59, i32 0, i32 55
  %60 = load i32, i32* %tr27, align 4
  %61 = load %struct.InputParameters*, %struct.InputParameters** @input, align 8
  %qp2start28 = getelementptr inbounds %struct.InputParameters, %struct.InputParameters* %61, i32 0, i32 82
  %62 = load i32, i32* %qp2start28, align 4
  %cmp29 = icmp sge i32 %60, %62
  br i1 %cmp29, label %if.then.30, label %if.else

if.then.30:                                       ; preds = %land.lhs.true.26
  %63 = load %struct.InputParameters*, %struct.InputParameters** @input, align 8
  %qp02 = getelementptr inbounds %struct.InputParameters, %struct.InputParameters* %63, i32 0, i32 83
  %64 = load i32, i32* %qp02, align 4
  %65 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %qp = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %65, i32 0, i32 10
  store i32 %64, i32* %qp, align 4
  br label %if.end.32

if.else:                                          ; preds = %land.lhs.true.26, %if.then.24
  %66 = load %struct.InputParameters*, %struct.InputParameters** @input, align 8
  %qp0 = getelementptr inbounds %struct.InputParameters, %struct.InputParameters* %66, i32 0, i32 3
  %67 = load i32, i32* %qp0, align 4
  %68 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %qp31 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %68, i32 0, i32 10
  store i32 %67, i32* %qp31, align 4
  br label %if.end.32

if.end.32:                                        ; preds = %if.else, %if.then.30
  br label %if.end.51

if.else.33:                                       ; preds = %if.then.22
  %69 = load %struct.InputParameters*, %struct.InputParameters** @input, align 8
  %qp2start34 = getelementptr inbounds %struct.InputParameters, %struct.InputParameters* %69, i32 0, i32 82
  %70 = load i32, i32* %qp2start34, align 4
  %cmp35 = icmp sgt i32 %70, 0
  br i1 %cmp35, label %land.lhs.true.36, label %if.else.42

land.lhs.true.36:                                 ; preds = %if.else.33
  %71 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %tr37 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %71, i32 0, i32 55
  %72 = load i32, i32* %tr37, align 4
  %73 = load %struct.InputParameters*, %struct.InputParameters** @input, align 8
  %qp2start38 = getelementptr inbounds %struct.InputParameters, %struct.InputParameters* %73, i32 0, i32 82
  %74 = load i32, i32* %qp2start38, align 4
  %cmp39 = icmp sge i32 %72, %74
  br i1 %cmp39, label %if.then.40, label %if.else.42

if.then.40:                                       ; preds = %land.lhs.true.36
  %75 = load %struct.InputParameters*, %struct.InputParameters** @input, align 8
  %qpN2 = getelementptr inbounds %struct.InputParameters, %struct.InputParameters* %75, i32 0, i32 80
  %76 = load i32, i32* %qpN2, align 4
  %77 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %qp41 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %77, i32 0, i32 10
  store i32 %76, i32* %qp41, align 4
  br label %if.end.44

if.else.42:                                       ; preds = %land.lhs.true.36, %if.else.33
  %78 = load %struct.InputParameters*, %struct.InputParameters** @input, align 8
  %qpN = getelementptr inbounds %struct.InputParameters, %struct.InputParameters* %78, i32 0, i32 4
  %79 = load i32, i32* %qpN, align 4
  %80 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %qp43 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %80, i32 0, i32 10
  store i32 %79, i32* %qp43, align 4
  br label %if.end.44

if.end.44:                                        ; preds = %if.else.42, %if.then.40
  %81 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %type45 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %81, i32 0, i32 6
  %82 = load i32, i32* %type45, align 4
  %cmp46 = icmp eq i32 %82, 3
  br i1 %cmp46, label %if.then.47, label %if.end.50

if.then.47:                                       ; preds = %if.end.44
  %83 = load %struct.InputParameters*, %struct.InputParameters** @input, align 8
  %qpsp = getelementptr inbounds %struct.InputParameters, %struct.InputParameters* %83, i32 0, i32 44
  %84 = load i32, i32* %qpsp, align 4
  %85 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %qp48 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %85, i32 0, i32 10
  store i32 %84, i32* %qp48, align 4
  %86 = load %struct.InputParameters*, %struct.InputParameters** @input, align 8
  %qpsp_pred = getelementptr inbounds %struct.InputParameters, %struct.InputParameters* %86, i32 0, i32 45
  %87 = load i32, i32* %qpsp_pred, align 4
  %88 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %qpsp49 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %88, i32 0, i32 11
  store i32 %87, i32* %qpsp49, align 4
  br label %if.end.50

if.end.50:                                        ; preds = %if.then.47, %if.end.44
  br label %if.end.51

if.end.51:                                        ; preds = %if.end.50, %if.end.32
  br label %if.end.52

if.end.52:                                        ; preds = %if.end.51, %if.end.20
  %89 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %mb_y_upd = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %89, i32 0, i32 22
  %90 = load i32, i32* %mb_y_upd, align 4
  %91 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %mb_y_intra = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %91, i32 0, i32 23
  store i32 %90, i32* %mb_y_intra, align 4
  %92 = load %struct.InputParameters*, %struct.InputParameters** @input, align 8
  %intra_upd = getelementptr inbounds %struct.InputParameters, %struct.InputParameters* %92, i32 0, i32 19
  %93 = load i32, i32* %intra_upd, align 4
  %cmp53 = icmp sgt i32 %93, 0
  br i1 %cmp53, label %if.then.54, label %if.end.62

if.then.54:                                       ; preds = %if.end.52
  %94 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %number55 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %94, i32 0, i32 0
  %95 = load i32, i32* %number55, align 4
  %96 = load i32, i32* @start_frame_no_in_this_IGOP, align 4
  %sub56 = sub nsw i32 %95, %96
  %97 = load %struct.InputParameters*, %struct.InputParameters** @input, align 8
  %intra_upd57 = getelementptr inbounds %struct.InputParameters, %struct.InputParameters* %97, i32 0, i32 19
  %98 = load i32, i32* %intra_upd57, align 4
  %div58 = sdiv i32 %sub56, %98
  %99 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %height59 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %99, i32 0, i32 15
  %100 = load i32, i32* %height59, align 4
  %div60 = sdiv i32 %100, 16
  %rem = srem i32 %div58, %div60
  %101 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %mb_y_upd61 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %101, i32 0, i32 22
  store i32 %rem, i32* %mb_y_upd61, align 4
  br label %if.end.62

if.end.62:                                        ; preds = %if.then.54, %if.end.52
  br label %if.end.228

if.else.63:                                       ; preds = %for.end
  %102 = load %struct.InputParameters*, %struct.InputParameters** @input, align 8
  %jumpd64 = getelementptr inbounds %struct.InputParameters, %struct.InputParameters* %102, i32 0, i32 5
  %103 = load i32, i32* %jumpd64, align 4
  %add65 = add nsw i32 %103, 1
  %104 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %p_interval = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %104, i32 0, i32 66
  store i32 %add65, i32* %p_interval, align 4
  %105 = load i32, i32* @start_tr_in_this_IGOP, align 4
  %106 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %number66 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %106, i32 0, i32 0
  %107 = load i32, i32* %number66, align 4
  %108 = load i32, i32* @start_frame_no_in_this_IGOP, align 4
  %sub67 = sub nsw i32 %107, %108
  %sub68 = sub nsw i32 %sub67, 1
  %109 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %p_interval69 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %109, i32 0, i32 66
  %110 = load i32, i32* %p_interval69, align 4
  %mul70 = mul nsw i32 %sub68, %110
  %add71 = add nsw i32 %105, %mul70
  store i32 %add71, i32* %prevP_no, align 4
  %111 = load i32, i32* @start_tr_in_this_IGOP, align 4
  %112 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %number72 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %112, i32 0, i32 0
  %113 = load i32, i32* %number72, align 4
  %114 = load i32, i32* @start_frame_no_in_this_IGOP, align 4
  %sub73 = sub nsw i32 %113, %114
  %115 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %p_interval74 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %115, i32 0, i32 66
  %116 = load i32, i32* %p_interval74, align 4
  %mul75 = mul nsw i32 %sub73, %116
  %add76 = add nsw i32 %111, %mul75
  store i32 %add76, i32* %nextP_no, align 4
  %117 = load i32, i32* %prevP_no, align 4
  %118 = load i32*, i32** @last_P_no, align 8
  %arrayidx77 = getelementptr inbounds i32, i32* %118, i64 0
  store i32 %117, i32* %arrayidx77, align 4
  store i32 1, i32* %i, align 4
  br label %for.cond.78

for.cond.78:                                      ; preds = %for.inc.88, %if.else.63
  %119 = load i32, i32* %i, align 4
  %120 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %buf_cycle = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %120, i32 0, i32 84
  %121 = load i32, i32* %buf_cycle, align 4
  %cmp79 = icmp slt i32 %119, %121
  br i1 %cmp79, label %for.body.80, label %for.end.90

for.body.80:                                      ; preds = %for.cond.78
  %122 = load i32, i32* %i, align 4
  %sub81 = sub nsw i32 %122, 1
  %idxprom82 = sext i32 %sub81 to i64
  %123 = load i32*, i32** @last_P_no, align 8
  %arrayidx83 = getelementptr inbounds i32, i32* %123, i64 %idxprom82
  %124 = load i32, i32* %arrayidx83, align 4
  %125 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %p_interval84 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %125, i32 0, i32 66
  %126 = load i32, i32* %p_interval84, align 4
  %sub85 = sub nsw i32 %124, %126
  %127 = load i32, i32* %i, align 4
  %idxprom86 = sext i32 %127 to i64
  %128 = load i32*, i32** @last_P_no, align 8
  %arrayidx87 = getelementptr inbounds i32, i32* %128, i64 %idxprom86
  store i32 %sub85, i32* %arrayidx87, align 4
  br label %for.inc.88

for.inc.88:                                       ; preds = %for.body.80
  %129 = load i32, i32* %i, align 4
  %inc89 = add nsw i32 %129, 1
  store i32 %inc89, i32* %i, align 4
  br label %for.cond.78

for.end.90:                                       ; preds = %for.cond.78
  %130 = load %struct.InputParameters*, %struct.InputParameters** @input, align 8
  %last_frame91 = getelementptr inbounds %struct.InputParameters, %struct.InputParameters* %130, i32 0, i32 79
  %131 = load i32, i32* %last_frame91, align 4
  %tobool92 = icmp ne i32 %131, 0
  br i1 %tobool92, label %land.lhs.true.93, label %if.end.102

land.lhs.true.93:                                 ; preds = %for.end.90
  %132 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %number94 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %132, i32 0, i32 0
  %133 = load i32, i32* %number94, align 4
  %add95 = add nsw i32 %133, 1
  %134 = load %struct.InputParameters*, %struct.InputParameters** @input, align 8
  %no_frames96 = getelementptr inbounds %struct.InputParameters, %struct.InputParameters* %134, i32 0, i32 2
  %135 = load i32, i32* %no_frames96, align 4
  %cmp97 = icmp eq i32 %add95, %135
  br i1 %cmp97, label %if.then.98, label %if.end.102

if.then.98:                                       ; preds = %land.lhs.true.93
  %136 = load %struct.InputParameters*, %struct.InputParameters** @input, align 8
  %last_frame99 = getelementptr inbounds %struct.InputParameters, %struct.InputParameters* %136, i32 0, i32 79
  %137 = load i32, i32* %last_frame99, align 4
  store i32 %137, i32* %nextP_no, align 4
  %138 = load i32, i32* %nextP_no, align 4
  %139 = load i32, i32* %prevP_no, align 4
  %sub100 = sub nsw i32 %138, %139
  %140 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %p_interval101 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %140, i32 0, i32 66
  store i32 %sub100, i32* %p_interval101, align 4
  br label %if.end.102

if.end.102:                                       ; preds = %if.then.98, %land.lhs.true.93, %for.end.90
  %141 = load %struct.InputParameters*, %struct.InputParameters** @input, align 8
  %jumpd103 = getelementptr inbounds %struct.InputParameters, %struct.InputParameters* %141, i32 0, i32 5
  %142 = load i32, i32* %jumpd103, align 4
  %add104 = add nsw i32 %142, 1
  %conv = sitofp i32 %add104 to double
  %143 = load %struct.InputParameters*, %struct.InputParameters** @input, align 8
  %successive_Bframe105 = getelementptr inbounds %struct.InputParameters, %struct.InputParameters* %143, i32 0, i32 34
  %144 = load i32, i32* %successive_Bframe105, align 4
  %conv106 = sitofp i32 %144 to double
  %add107 = fadd double %conv106, 1.000000e+00
  %div108 = fdiv double %conv, %add107
  %145 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %b_interval = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %145, i32 0, i32 65
  store double %div108, double* %b_interval, align 8
  %146 = load %struct.InputParameters*, %struct.InputParameters** @input, align 8
  %PyramidCoding = getelementptr inbounds %struct.InputParameters, %struct.InputParameters* %146, i32 0, i32 55
  %147 = load i32, i32* %PyramidCoding, align 4
  %cmp109 = icmp eq i32 %147, 3
  br i1 %cmp109, label %if.then.111, label %if.end.113

if.then.111:                                      ; preds = %if.end.102
  %148 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %b_interval112 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %148, i32 0, i32 65
  store double 1.000000e+00, double* %b_interval112, align 8
  br label %if.end.113

if.end.113:                                       ; preds = %if.then.111, %if.end.102
  %149 = load %struct.InputParameters*, %struct.InputParameters** @input, align 8
  %PyramidCoding114 = getelementptr inbounds %struct.InputParameters, %struct.InputParameters* %149, i32 0, i32 55
  %150 = load i32, i32* %PyramidCoding114, align 4
  %tobool115 = icmp ne i32 %150, 0
  br i1 %tobool115, label %if.then.116, label %if.else.128

if.then.116:                                      ; preds = %if.end.113
  %151 = load i32, i32* %prevP_no, align 4
  %152 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %b_interval117 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %152, i32 0, i32 65
  %153 = load double, double* %b_interval117, align 8
  %154 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %b_frame_to_code118 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %154, i32 0, i32 67
  %155 = load i32, i32* %b_frame_to_code118, align 4
  %sub119 = sub nsw i32 %155, 1
  %idxprom120 = sext i32 %sub119 to i64
  %156 = load %struct.GOP_DATA*, %struct.GOP_DATA** @gop_structure, align 8
  %arrayidx121 = getelementptr inbounds %struct.GOP_DATA, %struct.GOP_DATA* %156, i64 %idxprom120
  %display_no = getelementptr inbounds %struct.GOP_DATA, %struct.GOP_DATA* %arrayidx121, i32 0, i32 1
  %157 = load i32, i32* %display_no, align 4
  %add122 = add nsw i32 1, %157
  %conv123 = sitofp i32 %add122 to double
  %mul124 = fmul double %153, %conv123
  %conv125 = fptosi double %mul124 to i32
  %add126 = add nsw i32 %151, %conv125
  %158 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %tr127 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %158, i32 0, i32 55
  store i32 %add126, i32* %tr127, align 4
  br label %if.end.136

if.else.128:                                      ; preds = %if.end.113
  %159 = load i32, i32* %prevP_no, align 4
  %160 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %b_interval129 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %160, i32 0, i32 65
  %161 = load double, double* %b_interval129, align 8
  %162 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %b_frame_to_code130 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %162, i32 0, i32 67
  %163 = load i32, i32* %b_frame_to_code130, align 4
  %conv131 = sitofp i32 %163 to double
  %mul132 = fmul double %161, %conv131
  %conv133 = fptosi double %mul132 to i32
  %add134 = add nsw i32 %159, %conv133
  %164 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %tr135 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %164, i32 0, i32 55
  store i32 %add134, i32* %tr135, align 4
  br label %if.end.136

if.end.136:                                       ; preds = %if.else.128, %if.then.116
  %165 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %tr137 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %165, i32 0, i32 55
  %166 = load i32, i32* %tr137, align 4
  %167 = load i32, i32* %nextP_no, align 4
  %cmp138 = icmp sge i32 %166, %167
  br i1 %cmp138, label %if.then.140, label %if.end.143

if.then.140:                                      ; preds = %if.end.136
  %168 = load i32, i32* %nextP_no, align 4
  %sub141 = sub nsw i32 %168, 1
  %169 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %tr142 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %169, i32 0, i32 55
  store i32 %sub141, i32* %tr142, align 4
  br label %if.end.143

if.end.143:                                       ; preds = %if.then.140, %if.end.136
  %170 = load %struct.InputParameters*, %struct.InputParameters** @input, align 8
  %RCEnable144 = getelementptr inbounds %struct.InputParameters, %struct.InputParameters* %170, i32 0, i32 127
  %171 = load i32, i32* %RCEnable144, align 4
  %tobool145 = icmp ne i32 %171, 0
  br i1 %tobool145, label %if.else.216, label %land.lhs.true.146

land.lhs.true.146:                                ; preds = %if.end.143
  %172 = load %struct.InputParameters*, %struct.InputParameters** @input, align 8
  %PyramidCoding147 = getelementptr inbounds %struct.InputParameters, %struct.InputParameters* %172, i32 0, i32 55
  %173 = load i32, i32* %PyramidCoding147, align 4
  %cmp148 = icmp ne i32 %173, 3
  br i1 %cmp148, label %if.then.150, label %if.else.216

if.then.150:                                      ; preds = %land.lhs.true.146
  %174 = load %struct.InputParameters*, %struct.InputParameters** @input, align 8
  %qp2start151 = getelementptr inbounds %struct.InputParameters, %struct.InputParameters* %174, i32 0, i32 82
  %175 = load i32, i32* %qp2start151, align 4
  %cmp152 = icmp sgt i32 %175, 0
  br i1 %cmp152, label %land.lhs.true.154, label %if.else.161

land.lhs.true.154:                                ; preds = %if.then.150
  %176 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %tr155 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %176, i32 0, i32 55
  %177 = load i32, i32* %tr155, align 4
  %178 = load %struct.InputParameters*, %struct.InputParameters** @input, align 8
  %qp2start156 = getelementptr inbounds %struct.InputParameters, %struct.InputParameters* %178, i32 0, i32 82
  %179 = load i32, i32* %qp2start156, align 4
  %cmp157 = icmp sge i32 %177, %179
  br i1 %cmp157, label %if.then.159, label %if.else.161

if.then.159:                                      ; preds = %land.lhs.true.154
  %180 = load %struct.InputParameters*, %struct.InputParameters** @input, align 8
  %qpB2 = getelementptr inbounds %struct.InputParameters, %struct.InputParameters* %180, i32 0, i32 81
  %181 = load i32, i32* %qpB2, align 4
  %182 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %qp160 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %182, i32 0, i32 10
  store i32 %181, i32* %qp160, align 4
  br label %if.end.163

if.else.161:                                      ; preds = %land.lhs.true.154, %if.then.150
  %183 = load %struct.InputParameters*, %struct.InputParameters** @input, align 8
  %qpB = getelementptr inbounds %struct.InputParameters, %struct.InputParameters* %183, i32 0, i32 35
  %184 = load i32, i32* %qpB, align 4
  %185 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %qp162 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %185, i32 0, i32 10
  store i32 %184, i32* %qp162, align 4
  br label %if.end.163

if.end.163:                                       ; preds = %if.else.161, %if.then.159
  %186 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %nal_reference_idc = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %186, i32 0, i32 113
  %187 = load i32, i32* %nal_reference_idc, align 4
  %tobool164 = icmp ne i32 %187, 0
  br i1 %tobool164, label %if.then.165, label %if.end.215

if.then.165:                                      ; preds = %if.end.163
  %188 = load %struct.InputParameters*, %struct.InputParameters** @input, align 8
  %qp2start166 = getelementptr inbounds %struct.InputParameters, %struct.InputParameters* %188, i32 0, i32 82
  %189 = load i32, i32* %qp2start166, align 4
  %cmp167 = icmp sgt i32 %189, 0
  br i1 %cmp167, label %land.lhs.true.169, label %if.else.192

land.lhs.true.169:                                ; preds = %if.then.165
  %190 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %tr170 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %190, i32 0, i32 55
  %191 = load i32, i32* %tr170, align 4
  %192 = load %struct.InputParameters*, %struct.InputParameters** @input, align 8
  %qp2start171 = getelementptr inbounds %struct.InputParameters, %struct.InputParameters* %192, i32 0, i32 82
  %193 = load i32, i32* %qp2start171, align 4
  %cmp172 = icmp sge i32 %191, %193
  br i1 %cmp172, label %if.then.174, label %if.else.192

if.then.174:                                      ; preds = %land.lhs.true.169
  %194 = load %struct.InputParameters*, %struct.InputParameters** @input, align 8
  %qpB2175 = getelementptr inbounds %struct.InputParameters, %struct.InputParameters* %194, i32 0, i32 81
  %195 = load i32, i32* %qpB2175, align 4
  %196 = load %struct.InputParameters*, %struct.InputParameters** @input, align 8
  %qpBRS2Offset = getelementptr inbounds %struct.InputParameters, %struct.InputParameters* %196, i32 0, i32 84
  %197 = load i32, i32* %qpBRS2Offset, align 4
  %add176 = add nsw i32 %195, %197
  %cmp177 = icmp slt i32 %add176, 0
  br i1 %cmp177, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.then.174
  br label %cond.end.189

cond.false:                                       ; preds = %if.then.174
  %198 = load %struct.InputParameters*, %struct.InputParameters** @input, align 8
  %qpB2179 = getelementptr inbounds %struct.InputParameters, %struct.InputParameters* %198, i32 0, i32 81
  %199 = load i32, i32* %qpB2179, align 4
  %200 = load %struct.InputParameters*, %struct.InputParameters** @input, align 8
  %qpBRS2Offset180 = getelementptr inbounds %struct.InputParameters, %struct.InputParameters* %200, i32 0, i32 84
  %201 = load i32, i32* %qpBRS2Offset180, align 4
  %add181 = add nsw i32 %199, %201
  %cmp182 = icmp sgt i32 %add181, 51
  br i1 %cmp182, label %cond.true.184, label %cond.false.185

cond.true.184:                                    ; preds = %cond.false
  br label %cond.end

cond.false.185:                                   ; preds = %cond.false
  %202 = load %struct.InputParameters*, %struct.InputParameters** @input, align 8
  %qpB2186 = getelementptr inbounds %struct.InputParameters, %struct.InputParameters* %202, i32 0, i32 81
  %203 = load i32, i32* %qpB2186, align 4
  %204 = load %struct.InputParameters*, %struct.InputParameters** @input, align 8
  %qpBRS2Offset187 = getelementptr inbounds %struct.InputParameters, %struct.InputParameters* %204, i32 0, i32 84
  %205 = load i32, i32* %qpBRS2Offset187, align 4
  %add188 = add nsw i32 %203, %205
  br label %cond.end

cond.end:                                         ; preds = %cond.false.185, %cond.true.184
  %cond = phi i32 [ 51, %cond.true.184 ], [ %add188, %cond.false.185 ]
  br label %cond.end.189

cond.end.189:                                     ; preds = %cond.end, %cond.true
  %cond190 = phi i32 [ 0, %cond.true ], [ %cond, %cond.end ]
  %206 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %qp191 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %206, i32 0, i32 10
  store i32 %cond190, i32* %qp191, align 4
  br label %if.end.214

if.else.192:                                      ; preds = %land.lhs.true.169, %if.then.165
  %207 = load %struct.InputParameters*, %struct.InputParameters** @input, align 8
  %qpB193 = getelementptr inbounds %struct.InputParameters, %struct.InputParameters* %207, i32 0, i32 35
  %208 = load i32, i32* %qpB193, align 4
  %209 = load %struct.InputParameters*, %struct.InputParameters** @input, align 8
  %qpBRSOffset = getelementptr inbounds %struct.InputParameters, %struct.InputParameters* %209, i32 0, i32 36
  %210 = load i32, i32* %qpBRSOffset, align 4
  %add194 = add nsw i32 %208, %210
  %cmp195 = icmp slt i32 %add194, 0
  br i1 %cmp195, label %cond.true.197, label %cond.false.198

cond.true.197:                                    ; preds = %if.else.192
  br label %cond.end.211

cond.false.198:                                   ; preds = %if.else.192
  %211 = load %struct.InputParameters*, %struct.InputParameters** @input, align 8
  %qpB199 = getelementptr inbounds %struct.InputParameters, %struct.InputParameters* %211, i32 0, i32 35
  %212 = load i32, i32* %qpB199, align 4
  %213 = load %struct.InputParameters*, %struct.InputParameters** @input, align 8
  %qpBRSOffset200 = getelementptr inbounds %struct.InputParameters, %struct.InputParameters* %213, i32 0, i32 36
  %214 = load i32, i32* %qpBRSOffset200, align 4
  %add201 = add nsw i32 %212, %214
  %cmp202 = icmp sgt i32 %add201, 51
  br i1 %cmp202, label %cond.true.204, label %cond.false.205

cond.true.204:                                    ; preds = %cond.false.198
  br label %cond.end.209

cond.false.205:                                   ; preds = %cond.false.198
  %215 = load %struct.InputParameters*, %struct.InputParameters** @input, align 8
  %qpB206 = getelementptr inbounds %struct.InputParameters, %struct.InputParameters* %215, i32 0, i32 35
  %216 = load i32, i32* %qpB206, align 4
  %217 = load %struct.InputParameters*, %struct.InputParameters** @input, align 8
  %qpBRSOffset207 = getelementptr inbounds %struct.InputParameters, %struct.InputParameters* %217, i32 0, i32 36
  %218 = load i32, i32* %qpBRSOffset207, align 4
  %add208 = add nsw i32 %216, %218
  br label %cond.end.209

cond.end.209:                                     ; preds = %cond.false.205, %cond.true.204
  %cond210 = phi i32 [ 51, %cond.true.204 ], [ %add208, %cond.false.205 ]
  br label %cond.end.211

cond.end.211:                                     ; preds = %cond.end.209, %cond.true.197
  %cond212 = phi i32 [ 0, %cond.true.197 ], [ %cond210, %cond.end.209 ]
  %219 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %qp213 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %219, i32 0, i32 10
  store i32 %cond212, i32* %qp213, align 4
  br label %if.end.214

if.end.214:                                       ; preds = %cond.end.211, %cond.end.189
  br label %if.end.215

if.end.215:                                       ; preds = %if.end.214, %if.end.163
  br label %if.end.227

if.else.216:                                      ; preds = %land.lhs.true.146, %if.end.143
  %220 = load %struct.InputParameters*, %struct.InputParameters** @input, align 8
  %PyramidCoding217 = getelementptr inbounds %struct.InputParameters, %struct.InputParameters* %220, i32 0, i32 55
  %221 = load i32, i32* %PyramidCoding217, align 4
  %cmp218 = icmp eq i32 %221, 3
  br i1 %cmp218, label %if.then.220, label %if.end.226

if.then.220:                                      ; preds = %if.else.216
  %222 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %b_frame_to_code221 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %222, i32 0, i32 67
  %223 = load i32, i32* %b_frame_to_code221, align 4
  %sub222 = sub nsw i32 %223, 1
  %idxprom223 = sext i32 %sub222 to i64
  %224 = load %struct.GOP_DATA*, %struct.GOP_DATA** @gop_structure, align 8
  %arrayidx224 = getelementptr inbounds %struct.GOP_DATA, %struct.GOP_DATA* %224, i64 %idxprom223
  %slice_qp = getelementptr inbounds %struct.GOP_DATA, %struct.GOP_DATA* %arrayidx224, i32 0, i32 3
  %225 = load i32, i32* %slice_qp, align 4
  %226 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %qp225 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %226, i32 0, i32 10
  store i32 %225, i32* %qp225, align 4
  br label %if.end.226

if.end.226:                                       ; preds = %if.then.220, %if.else.216
  br label %if.end.227

if.end.227:                                       ; preds = %if.end.226, %if.end.215
  br label %if.end.228

if.end.228:                                       ; preds = %if.end.227, %if.end.62
  %227 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %layer = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %227, i32 0, i32 86
  %228 = load i32, i32* %layer, align 4
  call void @UpdateSubseqInfo(i32 %228)
  call void @UpdateSceneInformation(i32 0, i32 0, i32 0, i32 -1)
  %229 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %width229 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %229, i32 0, i32 13
  %230 = load i32, i32* %width229, align 4
  %231 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %height230 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %231, i32 0, i32 15
  %232 = load i32, i32* %height230, align 4
  %mul231 = mul nsw i32 %230, %232
  %div232 = sdiv i32 %mul231, 256
  %233 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %total_number_mb = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %233, i32 0, i32 4
  store i32 %div232, i32* %total_number_mb, align 4
  %234 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %no_output_of_prior_pics_flag = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %234, i32 0, i32 115
  store i32 0, i32* %no_output_of_prior_pics_flag, align 4
  %235 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %long_term_reference_flag = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %235, i32 0, i32 116
  store i32 0, i32* %long_term_reference_flag, align 4
  call void @init_dec_ref_pic_marking_buffer()
  ret void
}

declare void @UpdateSubseqInfo(i32) #1

declare void @UpdateSceneInformation(i32, i32, i32, i32) #1

; Function Attrs: nounwind uwtable
define internal void @init_dec_ref_pic_marking_buffer() #0 {
entry:
  %0 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %dec_ref_pic_marking_buffer = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %0, i32 0, i32 117
  store %struct.DecRefPicMarking_s* null, %struct.DecRefPicMarking_s** %dec_ref_pic_marking_buffer, align 8
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @init_field() #0 {
entry:
  %i = alloca i32, align 4
  %prevP_no = alloca i32, align 4
  %nextP_no = alloca i32, align 4
  %0 = load i32*, i32** @last_P_no_fld, align 8
  store i32* %0, i32** @last_P_no, align 8
  %1 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %current_mb_nr = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %1, i32 0, i32 3
  store i32 0, i32* %current_mb_nr, align 4
  %2 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %current_slice_nr = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %2, i32 0, i32 5
  store i32 0, i32* %current_slice_nr, align 4
  %3 = load %struct.StatParameters*, %struct.StatParameters** @stats, align 8
  %bit_slice = getelementptr inbounds %struct.StatParameters, %struct.StatParameters* %3, i32 0, i32 6
  store i32 0, i32* %bit_slice, align 4
  %4 = load %struct.InputParameters*, %struct.InputParameters** @input, align 8
  %jumpd = getelementptr inbounds %struct.InputParameters, %struct.InputParameters* %4, i32 0, i32 5
  %5 = load i32, i32* %jumpd, align 4
  %mul = mul nsw i32 %5, 2
  store i32 %mul, i32* %jumpd, align 4
  %6 = load %struct.InputParameters*, %struct.InputParameters** @input, align 8
  %successive_Bframe = getelementptr inbounds %struct.InputParameters, %struct.InputParameters* %6, i32 0, i32 34
  %7 = load i32, i32* %successive_Bframe, align 4
  %mul1 = mul nsw i32 %7, 2
  store i32 %mul1, i32* %successive_Bframe, align 4
  %8 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %number = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %8, i32 0, i32 0
  %9 = load i32, i32* %number, align 4
  %div = sdiv i32 %9, 2
  store i32 %div, i32* %number, align 4
  %10 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %buf_cycle = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %10, i32 0, i32 84
  %11 = load i32, i32* %buf_cycle, align 4
  %div2 = sdiv i32 %11, 2
  store i32 %div2, i32* %buf_cycle, align 4
  %12 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %mb_x = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %12, i32 0, i32 29
  store i32 0, i32* %mb_x, align 4
  %13 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %mb_y = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %13, i32 0, i32 30
  store i32 0, i32* %mb_y, align 4
  %14 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %pix_c_y = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %14, i32 0, i32 36
  store i32 0, i32* %pix_c_y, align 4
  %15 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %pix_y = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %15, i32 0, i32 34
  store i32 0, i32* %pix_y, align 4
  %16 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %block_y = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %16, i32 0, i32 32
  store i32 0, i32* %block_y, align 4
  %17 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %pix_c_x = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %17, i32 0, i32 35
  store i32 0, i32* %pix_c_x, align 4
  %18 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %block_c_x = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %18, i32 0, i32 24
  store i32 0, i32* %block_c_x, align 4
  %19 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %pix_x = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %19, i32 0, i32 33
  store i32 0, i32* %pix_x, align 4
  %20 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %block_x = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %20, i32 0, i32 31
  store i32 0, i32* %block_x, align 4
  %21 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %b_frame_to_code = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %21, i32 0, i32 67
  %22 = load i32, i32* %b_frame_to_code, align 4
  %tobool = icmp ne i32 %22, 0
  br i1 %tobool, label %if.else.67, label %if.then

if.then:                                          ; preds = %entry
  %23 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %number3 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %23, i32 0, i32 0
  %24 = load i32, i32* %number3, align 4
  %25 = load %struct.InputParameters*, %struct.InputParameters** @input, align 8
  %jumpd4 = getelementptr inbounds %struct.InputParameters, %struct.InputParameters* %25, i32 0, i32 5
  %26 = load i32, i32* %jumpd4, align 4
  %add = add nsw i32 %26, 2
  %mul5 = mul nsw i32 %24, %add
  %27 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %fld_type = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %27, i32 0, i32 56
  %28 = load i32, i32* %fld_type, align 4
  %add6 = add nsw i32 %mul5, %28
  %29 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %tr = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %29, i32 0, i32 55
  store i32 %add6, i32* %tr, align 4
  %30 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %fld_type7 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %30, i32 0, i32 56
  %31 = load i32, i32* %fld_type7, align 4
  %tobool8 = icmp ne i32 %31, 0
  br i1 %tobool8, label %if.end, label %if.then.9

if.then.9:                                        ; preds = %if.then
  %32 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %imgtr_next_P_fld = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %32, i32 0, i32 63
  %33 = load i32, i32* %imgtr_next_P_fld, align 4
  %34 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %imgtr_last_P_fld = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %34, i32 0, i32 64
  store i32 %33, i32* %imgtr_last_P_fld, align 4
  %35 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %tr10 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %35, i32 0, i32 55
  %36 = load i32, i32* %tr10, align 4
  %37 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %imgtr_next_P_fld11 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %37, i32 0, i32 63
  store i32 %36, i32* %imgtr_next_P_fld11, align 4
  br label %if.end

if.end:                                           ; preds = %if.then.9, %if.then
  %38 = load %struct.InputParameters*, %struct.InputParameters** @input, align 8
  %last_frame = getelementptr inbounds %struct.InputParameters, %struct.InputParameters* %38, i32 0, i32 79
  %39 = load i32, i32* %last_frame, align 4
  %tobool12 = icmp ne i32 %39, 0
  br i1 %tobool12, label %land.lhs.true, label %if.end.18

land.lhs.true:                                    ; preds = %if.end
  %40 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %number13 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %40, i32 0, i32 0
  %41 = load i32, i32* %number13, align 4
  %add14 = add nsw i32 %41, 1
  %42 = load %struct.InputParameters*, %struct.InputParameters** @input, align 8
  %no_frames = getelementptr inbounds %struct.InputParameters, %struct.InputParameters* %42, i32 0, i32 2
  %43 = load i32, i32* %no_frames, align 4
  %cmp = icmp eq i32 %add14, %43
  br i1 %cmp, label %if.then.15, label %if.end.18

if.then.15:                                       ; preds = %land.lhs.true
  %44 = load %struct.InputParameters*, %struct.InputParameters** @input, align 8
  %last_frame16 = getelementptr inbounds %struct.InputParameters, %struct.InputParameters* %44, i32 0, i32 79
  %45 = load i32, i32* %last_frame16, align 4
  %46 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %tr17 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %46, i32 0, i32 55
  store i32 %45, i32* %tr17, align 4
  br label %if.end.18

if.end.18:                                        ; preds = %if.then.15, %land.lhs.true, %if.end
  %47 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %number19 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %47, i32 0, i32 0
  %48 = load i32, i32* %number19, align 4
  %cmp20 = icmp ne i32 %48, 0
  br i1 %cmp20, label %land.lhs.true.21, label %if.end.26

land.lhs.true.21:                                 ; preds = %if.end.18
  %49 = load %struct.InputParameters*, %struct.InputParameters** @input, align 8
  %successive_Bframe22 = getelementptr inbounds %struct.InputParameters, %struct.InputParameters* %49, i32 0, i32 34
  %50 = load i32, i32* %successive_Bframe22, align 4
  %cmp23 = icmp ne i32 %50, 0
  br i1 %cmp23, label %if.then.24, label %if.end.26

if.then.24:                                       ; preds = %land.lhs.true.21
  %51 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %tr25 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %51, i32 0, i32 55
  %52 = load i32, i32* %tr25, align 4
  store i32 %52, i32* @nextP_tr_fld, align 4
  br label %if.end.26

if.end.26:                                        ; preds = %if.then.24, %land.lhs.true.21, %if.end.18
  %53 = load %struct.InputParameters*, %struct.InputParameters** @input, align 8
  %RCEnable = getelementptr inbounds %struct.InputParameters, %struct.InputParameters* %53, i32 0, i32 127
  %54 = load i32, i32* %RCEnable, align 4
  %tobool27 = icmp ne i32 %54, 0
  br i1 %tobool27, label %if.end.58, label %if.then.28

if.then.28:                                       ; preds = %if.end.26
  %55 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %type = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %55, i32 0, i32 6
  %56 = load i32, i32* %type, align 4
  %cmp29 = icmp eq i32 %56, 2
  br i1 %cmp29, label %if.then.30, label %if.else.39

if.then.30:                                       ; preds = %if.then.28
  %57 = load %struct.InputParameters*, %struct.InputParameters** @input, align 8
  %qp2start = getelementptr inbounds %struct.InputParameters, %struct.InputParameters* %57, i32 0, i32 82
  %58 = load i32, i32* %qp2start, align 4
  %cmp31 = icmp sgt i32 %58, 0
  br i1 %cmp31, label %land.lhs.true.32, label %if.else

land.lhs.true.32:                                 ; preds = %if.then.30
  %59 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %tr33 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %59, i32 0, i32 55
  %60 = load i32, i32* %tr33, align 4
  %61 = load %struct.InputParameters*, %struct.InputParameters** @input, align 8
  %qp2start34 = getelementptr inbounds %struct.InputParameters, %struct.InputParameters* %61, i32 0, i32 82
  %62 = load i32, i32* %qp2start34, align 4
  %cmp35 = icmp sge i32 %60, %62
  br i1 %cmp35, label %if.then.36, label %if.else

if.then.36:                                       ; preds = %land.lhs.true.32
  %63 = load %struct.InputParameters*, %struct.InputParameters** @input, align 8
  %qp02 = getelementptr inbounds %struct.InputParameters, %struct.InputParameters* %63, i32 0, i32 83
  %64 = load i32, i32* %qp02, align 4
  %65 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %qp = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %65, i32 0, i32 10
  store i32 %64, i32* %qp, align 4
  br label %if.end.38

if.else:                                          ; preds = %land.lhs.true.32, %if.then.30
  %66 = load %struct.InputParameters*, %struct.InputParameters** @input, align 8
  %qp0 = getelementptr inbounds %struct.InputParameters, %struct.InputParameters* %66, i32 0, i32 3
  %67 = load i32, i32* %qp0, align 4
  %68 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %qp37 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %68, i32 0, i32 10
  store i32 %67, i32* %qp37, align 4
  br label %if.end.38

if.end.38:                                        ; preds = %if.else, %if.then.36
  br label %if.end.57

if.else.39:                                       ; preds = %if.then.28
  %69 = load %struct.InputParameters*, %struct.InputParameters** @input, align 8
  %qp2start40 = getelementptr inbounds %struct.InputParameters, %struct.InputParameters* %69, i32 0, i32 82
  %70 = load i32, i32* %qp2start40, align 4
  %cmp41 = icmp sgt i32 %70, 0
  br i1 %cmp41, label %land.lhs.true.42, label %if.else.48

land.lhs.true.42:                                 ; preds = %if.else.39
  %71 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %tr43 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %71, i32 0, i32 55
  %72 = load i32, i32* %tr43, align 4
  %73 = load %struct.InputParameters*, %struct.InputParameters** @input, align 8
  %qp2start44 = getelementptr inbounds %struct.InputParameters, %struct.InputParameters* %73, i32 0, i32 82
  %74 = load i32, i32* %qp2start44, align 4
  %cmp45 = icmp sge i32 %72, %74
  br i1 %cmp45, label %if.then.46, label %if.else.48

if.then.46:                                       ; preds = %land.lhs.true.42
  %75 = load %struct.InputParameters*, %struct.InputParameters** @input, align 8
  %qpN2 = getelementptr inbounds %struct.InputParameters, %struct.InputParameters* %75, i32 0, i32 80
  %76 = load i32, i32* %qpN2, align 4
  %77 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %qp47 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %77, i32 0, i32 10
  store i32 %76, i32* %qp47, align 4
  br label %if.end.50

if.else.48:                                       ; preds = %land.lhs.true.42, %if.else.39
  %78 = load %struct.InputParameters*, %struct.InputParameters** @input, align 8
  %qpN = getelementptr inbounds %struct.InputParameters, %struct.InputParameters* %78, i32 0, i32 4
  %79 = load i32, i32* %qpN, align 4
  %80 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %qp49 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %80, i32 0, i32 10
  store i32 %79, i32* %qp49, align 4
  br label %if.end.50

if.end.50:                                        ; preds = %if.else.48, %if.then.46
  %81 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %type51 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %81, i32 0, i32 6
  %82 = load i32, i32* %type51, align 4
  %cmp52 = icmp eq i32 %82, 3
  br i1 %cmp52, label %if.then.53, label %if.end.56

if.then.53:                                       ; preds = %if.end.50
  %83 = load %struct.InputParameters*, %struct.InputParameters** @input, align 8
  %qpsp = getelementptr inbounds %struct.InputParameters, %struct.InputParameters* %83, i32 0, i32 44
  %84 = load i32, i32* %qpsp, align 4
  %85 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %qp54 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %85, i32 0, i32 10
  store i32 %84, i32* %qp54, align 4
  %86 = load %struct.InputParameters*, %struct.InputParameters** @input, align 8
  %qpsp_pred = getelementptr inbounds %struct.InputParameters, %struct.InputParameters* %86, i32 0, i32 45
  %87 = load i32, i32* %qpsp_pred, align 4
  %88 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %qpsp55 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %88, i32 0, i32 11
  store i32 %87, i32* %qpsp55, align 4
  br label %if.end.56

if.end.56:                                        ; preds = %if.then.53, %if.end.50
  br label %if.end.57

if.end.57:                                        ; preds = %if.end.56, %if.end.38
  br label %if.end.58

if.end.58:                                        ; preds = %if.end.57, %if.end.26
  %89 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %mb_y_upd = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %89, i32 0, i32 22
  %90 = load i32, i32* %mb_y_upd, align 4
  %91 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %mb_y_intra = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %91, i32 0, i32 23
  store i32 %90, i32* %mb_y_intra, align 4
  %92 = load %struct.InputParameters*, %struct.InputParameters** @input, align 8
  %intra_upd = getelementptr inbounds %struct.InputParameters, %struct.InputParameters* %92, i32 0, i32 19
  %93 = load i32, i32* %intra_upd, align 4
  %cmp59 = icmp sgt i32 %93, 0
  br i1 %cmp59, label %if.then.60, label %if.end.66

if.then.60:                                       ; preds = %if.end.58
  %94 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %number61 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %94, i32 0, i32 0
  %95 = load i32, i32* %number61, align 4
  %96 = load %struct.InputParameters*, %struct.InputParameters** @input, align 8
  %intra_upd62 = getelementptr inbounds %struct.InputParameters, %struct.InputParameters* %96, i32 0, i32 19
  %97 = load i32, i32* %intra_upd62, align 4
  %div63 = sdiv i32 %95, %97
  %98 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %width = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %98, i32 0, i32 13
  %99 = load i32, i32* %width, align 4
  %div64 = sdiv i32 %99, 16
  %rem = srem i32 %div63, %div64
  %100 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %mb_y_upd65 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %100, i32 0, i32 22
  store i32 %rem, i32* %mb_y_upd65, align 4
  br label %if.end.66

if.end.66:                                        ; preds = %if.then.60, %if.end.58
  br label %if.end.275

if.else.67:                                       ; preds = %entry
  %101 = load %struct.InputParameters*, %struct.InputParameters** @input, align 8
  %jumpd68 = getelementptr inbounds %struct.InputParameters, %struct.InputParameters* %101, i32 0, i32 5
  %102 = load i32, i32* %jumpd68, align 4
  %add69 = add nsw i32 %102, 2
  %103 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %p_interval = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %103, i32 0, i32 66
  store i32 %add69, i32* %p_interval, align 4
  %104 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %number70 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %104, i32 0, i32 0
  %105 = load i32, i32* %number70, align 4
  %sub = sub nsw i32 %105, 1
  %106 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %p_interval71 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %106, i32 0, i32 66
  %107 = load i32, i32* %p_interval71, align 4
  %mul72 = mul nsw i32 %sub, %107
  %108 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %fld_type73 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %108, i32 0, i32 56
  %109 = load i32, i32* %fld_type73, align 4
  %add74 = add nsw i32 %mul72, %109
  store i32 %add74, i32* %prevP_no, align 4
  %110 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %number75 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %110, i32 0, i32 0
  %111 = load i32, i32* %number75, align 4
  %112 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %p_interval76 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %112, i32 0, i32 66
  %113 = load i32, i32* %p_interval76, align 4
  %mul77 = mul nsw i32 %111, %113
  %114 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %fld_type78 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %114, i32 0, i32 56
  %115 = load i32, i32* %fld_type78, align 4
  %add79 = add nsw i32 %mul77, %115
  store i32 %add79, i32* %nextP_no, align 4
  %116 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %fld_type80 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %116, i32 0, i32 56
  %117 = load i32, i32* %fld_type80, align 4
  %tobool81 = icmp ne i32 %117, 0
  br i1 %tobool81, label %if.else.105, label %if.then.82

if.then.82:                                       ; preds = %if.else.67
  %118 = load i32, i32* %prevP_no, align 4
  %add83 = add nsw i32 %118, 1
  %119 = load i32*, i32** @last_P_no, align 8
  %arrayidx = getelementptr inbounds i32, i32* %119, i64 0
  store i32 %add83, i32* %arrayidx, align 4
  %120 = load i32, i32* %prevP_no, align 4
  %121 = load i32*, i32** @last_P_no, align 8
  %arrayidx84 = getelementptr inbounds i32, i32* %121, i64 1
  store i32 %120, i32* %arrayidx84, align 4
  store i32 1, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.then.82
  %122 = load i32, i32* %i, align 4
  %123 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %buf_cycle85 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %123, i32 0, i32 84
  %124 = load i32, i32* %buf_cycle85, align 4
  %cmp86 = icmp sle i32 %122, %124
  br i1 %cmp86, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %125 = load i32, i32* %i, align 4
  %mul87 = mul nsw i32 2, %125
  %sub88 = sub nsw i32 %mul87, 2
  %idxprom = sext i32 %sub88 to i64
  %126 = load i32*, i32** @last_P_no, align 8
  %arrayidx89 = getelementptr inbounds i32, i32* %126, i64 %idxprom
  %127 = load i32, i32* %arrayidx89, align 4
  %128 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %p_interval90 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %128, i32 0, i32 66
  %129 = load i32, i32* %p_interval90, align 4
  %sub91 = sub nsw i32 %127, %129
  %130 = load i32, i32* %i, align 4
  %mul92 = mul nsw i32 2, %130
  %idxprom93 = sext i32 %mul92 to i64
  %131 = load i32*, i32** @last_P_no, align 8
  %arrayidx94 = getelementptr inbounds i32, i32* %131, i64 %idxprom93
  store i32 %sub91, i32* %arrayidx94, align 4
  %132 = load i32, i32* %i, align 4
  %mul95 = mul nsw i32 2, %132
  %sub96 = sub nsw i32 %mul95, 1
  %idxprom97 = sext i32 %sub96 to i64
  %133 = load i32*, i32** @last_P_no, align 8
  %arrayidx98 = getelementptr inbounds i32, i32* %133, i64 %idxprom97
  %134 = load i32, i32* %arrayidx98, align 4
  %135 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %p_interval99 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %135, i32 0, i32 66
  %136 = load i32, i32* %p_interval99, align 4
  %sub100 = sub nsw i32 %134, %136
  %137 = load i32, i32* %i, align 4
  %mul101 = mul nsw i32 2, %137
  %add102 = add nsw i32 %mul101, 1
  %idxprom103 = sext i32 %add102 to i64
  %138 = load i32*, i32** @last_P_no, align 8
  %arrayidx104 = getelementptr inbounds i32, i32* %138, i64 %idxprom103
  store i32 %sub100, i32* %arrayidx104, align 4
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %139 = load i32, i32* %i, align 4
  %inc = add nsw i32 %139, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  br label %if.end.135

if.else.105:                                      ; preds = %if.else.67
  %140 = load i32, i32* %nextP_no, align 4
  %sub106 = sub nsw i32 %140, 1
  %141 = load i32*, i32** @last_P_no, align 8
  %arrayidx107 = getelementptr inbounds i32, i32* %141, i64 0
  store i32 %sub106, i32* %arrayidx107, align 4
  %142 = load i32, i32* %prevP_no, align 4
  %143 = load i32*, i32** @last_P_no, align 8
  %arrayidx108 = getelementptr inbounds i32, i32* %143, i64 1
  store i32 %142, i32* %arrayidx108, align 4
  store i32 1, i32* %i, align 4
  br label %for.cond.109

for.cond.109:                                     ; preds = %for.inc.132, %if.else.105
  %144 = load i32, i32* %i, align 4
  %145 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %buf_cycle110 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %145, i32 0, i32 84
  %146 = load i32, i32* %buf_cycle110, align 4
  %cmp111 = icmp sle i32 %144, %146
  br i1 %cmp111, label %for.body.112, label %for.end.134

for.body.112:                                     ; preds = %for.cond.109
  %147 = load i32, i32* %i, align 4
  %mul113 = mul nsw i32 2, %147
  %sub114 = sub nsw i32 %mul113, 2
  %idxprom115 = sext i32 %sub114 to i64
  %148 = load i32*, i32** @last_P_no, align 8
  %arrayidx116 = getelementptr inbounds i32, i32* %148, i64 %idxprom115
  %149 = load i32, i32* %arrayidx116, align 4
  %150 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %p_interval117 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %150, i32 0, i32 66
  %151 = load i32, i32* %p_interval117, align 4
  %sub118 = sub nsw i32 %149, %151
  %152 = load i32, i32* %i, align 4
  %mul119 = mul nsw i32 2, %152
  %idxprom120 = sext i32 %mul119 to i64
  %153 = load i32*, i32** @last_P_no, align 8
  %arrayidx121 = getelementptr inbounds i32, i32* %153, i64 %idxprom120
  store i32 %sub118, i32* %arrayidx121, align 4
  %154 = load i32, i32* %i, align 4
  %mul122 = mul nsw i32 2, %154
  %sub123 = sub nsw i32 %mul122, 1
  %idxprom124 = sext i32 %sub123 to i64
  %155 = load i32*, i32** @last_P_no, align 8
  %arrayidx125 = getelementptr inbounds i32, i32* %155, i64 %idxprom124
  %156 = load i32, i32* %arrayidx125, align 4
  %157 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %p_interval126 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %157, i32 0, i32 66
  %158 = load i32, i32* %p_interval126, align 4
  %sub127 = sub nsw i32 %156, %158
  %159 = load i32, i32* %i, align 4
  %mul128 = mul nsw i32 2, %159
  %add129 = add nsw i32 %mul128, 1
  %idxprom130 = sext i32 %add129 to i64
  %160 = load i32*, i32** @last_P_no, align 8
  %arrayidx131 = getelementptr inbounds i32, i32* %160, i64 %idxprom130
  store i32 %sub127, i32* %arrayidx131, align 4
  br label %for.inc.132

for.inc.132:                                      ; preds = %for.body.112
  %161 = load i32, i32* %i, align 4
  %inc133 = add nsw i32 %161, 1
  store i32 %inc133, i32* %i, align 4
  br label %for.cond.109

for.end.134:                                      ; preds = %for.cond.109
  br label %if.end.135

if.end.135:                                       ; preds = %for.end.134, %for.end
  %162 = load %struct.InputParameters*, %struct.InputParameters** @input, align 8
  %last_frame136 = getelementptr inbounds %struct.InputParameters, %struct.InputParameters* %162, i32 0, i32 79
  %163 = load i32, i32* %last_frame136, align 4
  %tobool137 = icmp ne i32 %163, 0
  br i1 %tobool137, label %land.lhs.true.138, label %if.end.147

land.lhs.true.138:                                ; preds = %if.end.135
  %164 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %number139 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %164, i32 0, i32 0
  %165 = load i32, i32* %number139, align 4
  %add140 = add nsw i32 %165, 1
  %166 = load %struct.InputParameters*, %struct.InputParameters** @input, align 8
  %no_frames141 = getelementptr inbounds %struct.InputParameters, %struct.InputParameters* %166, i32 0, i32 2
  %167 = load i32, i32* %no_frames141, align 4
  %cmp142 = icmp eq i32 %add140, %167
  br i1 %cmp142, label %if.then.143, label %if.end.147

if.then.143:                                      ; preds = %land.lhs.true.138
  %168 = load %struct.InputParameters*, %struct.InputParameters** @input, align 8
  %last_frame144 = getelementptr inbounds %struct.InputParameters, %struct.InputParameters* %168, i32 0, i32 79
  %169 = load i32, i32* %last_frame144, align 4
  store i32 %169, i32* %nextP_no, align 4
  %170 = load i32, i32* %nextP_no, align 4
  %171 = load i32, i32* %prevP_no, align 4
  %sub145 = sub nsw i32 %170, %171
  %172 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %p_interval146 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %172, i32 0, i32 66
  store i32 %sub145, i32* %p_interval146, align 4
  br label %if.end.147

if.end.147:                                       ; preds = %if.then.143, %land.lhs.true.138, %if.end.135
  %173 = load %struct.InputParameters*, %struct.InputParameters** @input, align 8
  %jumpd148 = getelementptr inbounds %struct.InputParameters, %struct.InputParameters* %173, i32 0, i32 5
  %174 = load i32, i32* %jumpd148, align 4
  %add149 = add nsw i32 %174, 1
  %conv = sitofp i32 %add149 to double
  %175 = load %struct.InputParameters*, %struct.InputParameters** @input, align 8
  %successive_Bframe150 = getelementptr inbounds %struct.InputParameters, %struct.InputParameters* %175, i32 0, i32 34
  %176 = load i32, i32* %successive_Bframe150, align 4
  %conv151 = sitofp i32 %176 to double
  %add152 = fadd double %conv151, 1.000000e+00
  %div153 = fdiv double %conv, %add152
  %177 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %b_interval = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %177, i32 0, i32 65
  store double %div153, double* %b_interval, align 8
  %178 = load %struct.InputParameters*, %struct.InputParameters** @input, align 8
  %PyramidCoding = getelementptr inbounds %struct.InputParameters, %struct.InputParameters* %178, i32 0, i32 55
  %179 = load i32, i32* %PyramidCoding, align 4
  %cmp154 = icmp eq i32 %179, 3
  br i1 %cmp154, label %if.then.156, label %if.end.158

if.then.156:                                      ; preds = %if.end.147
  %180 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %b_interval157 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %180, i32 0, i32 65
  store double 1.000000e+00, double* %b_interval157, align 8
  br label %if.end.158

if.end.158:                                       ; preds = %if.then.156, %if.end.147
  %181 = load %struct.InputParameters*, %struct.InputParameters** @input, align 8
  %PyramidCoding159 = getelementptr inbounds %struct.InputParameters, %struct.InputParameters* %181, i32 0, i32 55
  %182 = load i32, i32* %PyramidCoding159, align 4
  %tobool160 = icmp ne i32 %182, 0
  br i1 %tobool160, label %if.then.161, label %if.else.174

if.then.161:                                      ; preds = %if.end.158
  %183 = load i32, i32* %prevP_no, align 4
  %184 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %b_interval162 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %184, i32 0, i32 65
  %185 = load double, double* %b_interval162, align 8
  %add163 = fadd double %185, 1.000000e+00
  %186 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %b_frame_to_code164 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %186, i32 0, i32 67
  %187 = load i32, i32* %b_frame_to_code164, align 4
  %sub165 = sub nsw i32 %187, 1
  %idxprom166 = sext i32 %sub165 to i64
  %188 = load %struct.GOP_DATA*, %struct.GOP_DATA** @gop_structure, align 8
  %arrayidx167 = getelementptr inbounds %struct.GOP_DATA, %struct.GOP_DATA* %188, i64 %idxprom166
  %display_no = getelementptr inbounds %struct.GOP_DATA, %struct.GOP_DATA* %arrayidx167, i32 0, i32 1
  %189 = load i32, i32* %display_no, align 4
  %add168 = add nsw i32 1, %189
  %conv169 = sitofp i32 %add168 to double
  %mul170 = fmul double %add163, %conv169
  %conv171 = fptosi double %mul170 to i32
  %add172 = add nsw i32 %183, %conv171
  %190 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %tr173 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %190, i32 0, i32 55
  store i32 %add172, i32* %tr173, align 4
  br label %if.end.183

if.else.174:                                      ; preds = %if.end.158
  %191 = load i32, i32* %prevP_no, align 4
  %192 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %b_interval175 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %192, i32 0, i32 65
  %193 = load double, double* %b_interval175, align 8
  %add176 = fadd double %193, 1.000000e+00
  %194 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %b_frame_to_code177 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %194, i32 0, i32 67
  %195 = load i32, i32* %b_frame_to_code177, align 4
  %conv178 = sitofp i32 %195 to double
  %mul179 = fmul double %add176, %conv178
  %conv180 = fptosi double %mul179 to i32
  %add181 = add nsw i32 %191, %conv180
  %196 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %tr182 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %196, i32 0, i32 55
  store i32 %add181, i32* %tr182, align 4
  br label %if.end.183

if.end.183:                                       ; preds = %if.else.174, %if.then.161
  %197 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %tr184 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %197, i32 0, i32 55
  %198 = load i32, i32* %tr184, align 4
  %199 = load i32, i32* %nextP_no, align 4
  %cmp185 = icmp sge i32 %198, %199
  br i1 %cmp185, label %if.then.187, label %if.end.190

if.then.187:                                      ; preds = %if.end.183
  %200 = load i32, i32* %nextP_no, align 4
  %sub188 = sub nsw i32 %200, 1
  %201 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %tr189 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %201, i32 0, i32 55
  store i32 %sub188, i32* %tr189, align 4
  br label %if.end.190

if.end.190:                                       ; preds = %if.then.187, %if.end.183
  %202 = load %struct.InputParameters*, %struct.InputParameters** @input, align 8
  %RCEnable191 = getelementptr inbounds %struct.InputParameters, %struct.InputParameters* %202, i32 0, i32 127
  %203 = load i32, i32* %RCEnable191, align 4
  %tobool192 = icmp ne i32 %203, 0
  br i1 %tobool192, label %if.else.263, label %land.lhs.true.193

land.lhs.true.193:                                ; preds = %if.end.190
  %204 = load %struct.InputParameters*, %struct.InputParameters** @input, align 8
  %PyramidCoding194 = getelementptr inbounds %struct.InputParameters, %struct.InputParameters* %204, i32 0, i32 55
  %205 = load i32, i32* %PyramidCoding194, align 4
  %cmp195 = icmp ne i32 %205, 3
  br i1 %cmp195, label %if.then.197, label %if.else.263

if.then.197:                                      ; preds = %land.lhs.true.193
  %206 = load %struct.InputParameters*, %struct.InputParameters** @input, align 8
  %qp2start198 = getelementptr inbounds %struct.InputParameters, %struct.InputParameters* %206, i32 0, i32 82
  %207 = load i32, i32* %qp2start198, align 4
  %cmp199 = icmp sgt i32 %207, 0
  br i1 %cmp199, label %land.lhs.true.201, label %if.else.208

land.lhs.true.201:                                ; preds = %if.then.197
  %208 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %tr202 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %208, i32 0, i32 55
  %209 = load i32, i32* %tr202, align 4
  %210 = load %struct.InputParameters*, %struct.InputParameters** @input, align 8
  %qp2start203 = getelementptr inbounds %struct.InputParameters, %struct.InputParameters* %210, i32 0, i32 82
  %211 = load i32, i32* %qp2start203, align 4
  %cmp204 = icmp sge i32 %209, %211
  br i1 %cmp204, label %if.then.206, label %if.else.208

if.then.206:                                      ; preds = %land.lhs.true.201
  %212 = load %struct.InputParameters*, %struct.InputParameters** @input, align 8
  %qpB2 = getelementptr inbounds %struct.InputParameters, %struct.InputParameters* %212, i32 0, i32 81
  %213 = load i32, i32* %qpB2, align 4
  %214 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %qp207 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %214, i32 0, i32 10
  store i32 %213, i32* %qp207, align 4
  br label %if.end.210

if.else.208:                                      ; preds = %land.lhs.true.201, %if.then.197
  %215 = load %struct.InputParameters*, %struct.InputParameters** @input, align 8
  %qpB = getelementptr inbounds %struct.InputParameters, %struct.InputParameters* %215, i32 0, i32 35
  %216 = load i32, i32* %qpB, align 4
  %217 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %qp209 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %217, i32 0, i32 10
  store i32 %216, i32* %qp209, align 4
  br label %if.end.210

if.end.210:                                       ; preds = %if.else.208, %if.then.206
  %218 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %nal_reference_idc = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %218, i32 0, i32 113
  %219 = load i32, i32* %nal_reference_idc, align 4
  %tobool211 = icmp ne i32 %219, 0
  br i1 %tobool211, label %if.then.212, label %if.end.262

if.then.212:                                      ; preds = %if.end.210
  %220 = load %struct.InputParameters*, %struct.InputParameters** @input, align 8
  %qp2start213 = getelementptr inbounds %struct.InputParameters, %struct.InputParameters* %220, i32 0, i32 82
  %221 = load i32, i32* %qp2start213, align 4
  %cmp214 = icmp sgt i32 %221, 0
  br i1 %cmp214, label %land.lhs.true.216, label %if.else.239

land.lhs.true.216:                                ; preds = %if.then.212
  %222 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %tr217 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %222, i32 0, i32 55
  %223 = load i32, i32* %tr217, align 4
  %224 = load %struct.InputParameters*, %struct.InputParameters** @input, align 8
  %qp2start218 = getelementptr inbounds %struct.InputParameters, %struct.InputParameters* %224, i32 0, i32 82
  %225 = load i32, i32* %qp2start218, align 4
  %cmp219 = icmp sge i32 %223, %225
  br i1 %cmp219, label %if.then.221, label %if.else.239

if.then.221:                                      ; preds = %land.lhs.true.216
  %226 = load %struct.InputParameters*, %struct.InputParameters** @input, align 8
  %qpB2222 = getelementptr inbounds %struct.InputParameters, %struct.InputParameters* %226, i32 0, i32 81
  %227 = load i32, i32* %qpB2222, align 4
  %228 = load %struct.InputParameters*, %struct.InputParameters** @input, align 8
  %qpBRS2Offset = getelementptr inbounds %struct.InputParameters, %struct.InputParameters* %228, i32 0, i32 84
  %229 = load i32, i32* %qpBRS2Offset, align 4
  %add223 = add nsw i32 %227, %229
  %cmp224 = icmp slt i32 %add223, 0
  br i1 %cmp224, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.then.221
  br label %cond.end.236

cond.false:                                       ; preds = %if.then.221
  %230 = load %struct.InputParameters*, %struct.InputParameters** @input, align 8
  %qpB2226 = getelementptr inbounds %struct.InputParameters, %struct.InputParameters* %230, i32 0, i32 81
  %231 = load i32, i32* %qpB2226, align 4
  %232 = load %struct.InputParameters*, %struct.InputParameters** @input, align 8
  %qpBRS2Offset227 = getelementptr inbounds %struct.InputParameters, %struct.InputParameters* %232, i32 0, i32 84
  %233 = load i32, i32* %qpBRS2Offset227, align 4
  %add228 = add nsw i32 %231, %233
  %cmp229 = icmp sgt i32 %add228, 51
  br i1 %cmp229, label %cond.true.231, label %cond.false.232

cond.true.231:                                    ; preds = %cond.false
  br label %cond.end

cond.false.232:                                   ; preds = %cond.false
  %234 = load %struct.InputParameters*, %struct.InputParameters** @input, align 8
  %qpB2233 = getelementptr inbounds %struct.InputParameters, %struct.InputParameters* %234, i32 0, i32 81
  %235 = load i32, i32* %qpB2233, align 4
  %236 = load %struct.InputParameters*, %struct.InputParameters** @input, align 8
  %qpBRS2Offset234 = getelementptr inbounds %struct.InputParameters, %struct.InputParameters* %236, i32 0, i32 84
  %237 = load i32, i32* %qpBRS2Offset234, align 4
  %add235 = add nsw i32 %235, %237
  br label %cond.end

cond.end:                                         ; preds = %cond.false.232, %cond.true.231
  %cond = phi i32 [ 51, %cond.true.231 ], [ %add235, %cond.false.232 ]
  br label %cond.end.236

cond.end.236:                                     ; preds = %cond.end, %cond.true
  %cond237 = phi i32 [ 0, %cond.true ], [ %cond, %cond.end ]
  %238 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %qp238 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %238, i32 0, i32 10
  store i32 %cond237, i32* %qp238, align 4
  br label %if.end.261

if.else.239:                                      ; preds = %land.lhs.true.216, %if.then.212
  %239 = load %struct.InputParameters*, %struct.InputParameters** @input, align 8
  %qpB240 = getelementptr inbounds %struct.InputParameters, %struct.InputParameters* %239, i32 0, i32 35
  %240 = load i32, i32* %qpB240, align 4
  %241 = load %struct.InputParameters*, %struct.InputParameters** @input, align 8
  %qpBRSOffset = getelementptr inbounds %struct.InputParameters, %struct.InputParameters* %241, i32 0, i32 36
  %242 = load i32, i32* %qpBRSOffset, align 4
  %add241 = add nsw i32 %240, %242
  %cmp242 = icmp slt i32 %add241, 0
  br i1 %cmp242, label %cond.true.244, label %cond.false.245

cond.true.244:                                    ; preds = %if.else.239
  br label %cond.end.258

cond.false.245:                                   ; preds = %if.else.239
  %243 = load %struct.InputParameters*, %struct.InputParameters** @input, align 8
  %qpB246 = getelementptr inbounds %struct.InputParameters, %struct.InputParameters* %243, i32 0, i32 35
  %244 = load i32, i32* %qpB246, align 4
  %245 = load %struct.InputParameters*, %struct.InputParameters** @input, align 8
  %qpBRSOffset247 = getelementptr inbounds %struct.InputParameters, %struct.InputParameters* %245, i32 0, i32 36
  %246 = load i32, i32* %qpBRSOffset247, align 4
  %add248 = add nsw i32 %244, %246
  %cmp249 = icmp sgt i32 %add248, 51
  br i1 %cmp249, label %cond.true.251, label %cond.false.252

cond.true.251:                                    ; preds = %cond.false.245
  br label %cond.end.256

cond.false.252:                                   ; preds = %cond.false.245
  %247 = load %struct.InputParameters*, %struct.InputParameters** @input, align 8
  %qpB253 = getelementptr inbounds %struct.InputParameters, %struct.InputParameters* %247, i32 0, i32 35
  %248 = load i32, i32* %qpB253, align 4
  %249 = load %struct.InputParameters*, %struct.InputParameters** @input, align 8
  %qpBRSOffset254 = getelementptr inbounds %struct.InputParameters, %struct.InputParameters* %249, i32 0, i32 36
  %250 = load i32, i32* %qpBRSOffset254, align 4
  %add255 = add nsw i32 %248, %250
  br label %cond.end.256

cond.end.256:                                     ; preds = %cond.false.252, %cond.true.251
  %cond257 = phi i32 [ 51, %cond.true.251 ], [ %add255, %cond.false.252 ]
  br label %cond.end.258

cond.end.258:                                     ; preds = %cond.end.256, %cond.true.244
  %cond259 = phi i32 [ 0, %cond.true.244 ], [ %cond257, %cond.end.256 ]
  %251 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %qp260 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %251, i32 0, i32 10
  store i32 %cond259, i32* %qp260, align 4
  br label %if.end.261

if.end.261:                                       ; preds = %cond.end.258, %cond.end.236
  br label %if.end.262

if.end.262:                                       ; preds = %if.end.261, %if.end.210
  br label %if.end.274

if.else.263:                                      ; preds = %land.lhs.true.193, %if.end.190
  %252 = load %struct.InputParameters*, %struct.InputParameters** @input, align 8
  %PyramidCoding264 = getelementptr inbounds %struct.InputParameters, %struct.InputParameters* %252, i32 0, i32 55
  %253 = load i32, i32* %PyramidCoding264, align 4
  %cmp265 = icmp eq i32 %253, 3
  br i1 %cmp265, label %if.then.267, label %if.end.273

if.then.267:                                      ; preds = %if.else.263
  %254 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %b_frame_to_code268 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %254, i32 0, i32 67
  %255 = load i32, i32* %b_frame_to_code268, align 4
  %sub269 = sub nsw i32 %255, 1
  %idxprom270 = sext i32 %sub269 to i64
  %256 = load %struct.GOP_DATA*, %struct.GOP_DATA** @gop_structure, align 8
  %arrayidx271 = getelementptr inbounds %struct.GOP_DATA, %struct.GOP_DATA* %256, i64 %idxprom270
  %slice_qp = getelementptr inbounds %struct.GOP_DATA, %struct.GOP_DATA* %arrayidx271, i32 0, i32 3
  %257 = load i32, i32* %slice_qp, align 4
  %258 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %qp272 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %258, i32 0, i32 10
  store i32 %257, i32* %qp272, align 4
  br label %if.end.273

if.end.273:                                       ; preds = %if.then.267, %if.else.263
  br label %if.end.274

if.end.274:                                       ; preds = %if.end.273, %if.end.262
  br label %if.end.275

if.end.275:                                       ; preds = %if.end.274, %if.end.66
  %259 = load %struct.InputParameters*, %struct.InputParameters** @input, align 8
  %jumpd276 = getelementptr inbounds %struct.InputParameters, %struct.InputParameters* %259, i32 0, i32 5
  %260 = load i32, i32* %jumpd276, align 4
  %div277 = sdiv i32 %260, 2
  store i32 %div277, i32* %jumpd276, align 4
  %261 = load %struct.InputParameters*, %struct.InputParameters** @input, align 8
  %successive_Bframe278 = getelementptr inbounds %struct.InputParameters, %struct.InputParameters* %261, i32 0, i32 34
  %262 = load i32, i32* %successive_Bframe278, align 4
  %div279 = sdiv i32 %262, 2
  store i32 %div279, i32* %successive_Bframe278, align 4
  %263 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %buf_cycle280 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %263, i32 0, i32 84
  %264 = load i32, i32* %buf_cycle280, align 4
  %mul281 = mul nsw i32 %264, 2
  store i32 %mul281, i32* %buf_cycle280, align 4
  %265 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %number282 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %265, i32 0, i32 0
  %266 = load i32, i32* %number282, align 4
  %mul283 = mul nsw i32 2, %266
  %267 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %fld_type284 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %267, i32 0, i32 56
  %268 = load i32, i32* %fld_type284, align 4
  %add285 = add nsw i32 %mul283, %268
  %269 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %number286 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %269, i32 0, i32 0
  store i32 %add285, i32* %number286, align 4
  %270 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %width287 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %270, i32 0, i32 13
  %271 = load i32, i32* %width287, align 4
  %272 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %height = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %272, i32 0, i32 15
  %273 = load i32, i32* %height, align 4
  %mul288 = mul nsw i32 %271, %273
  %div289 = sdiv i32 %mul288, 256
  %274 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %total_number_mb = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %274, i32 0, i32 4
  store i32 %div289, i32* %total_number_mb, align 4
  ret void
}

declare void @PutPel_11(i16*, i32, i32, i16 zeroext, i32) #1

; Function Attrs: nounwind uwtable
define internal void @find_snr() #0 {
entry:
  %i = alloca i32, align 4
  %j = alloca i32, align 4
  %diff_y = alloca i64, align 8
  %diff_u = alloca i64, align 8
  %diff_v = alloca i64, align 8
  %impix = alloca i32, align 4
  %impix_cr = alloca i32, align 4
  %max_pix_value_sqd = alloca i32, align 4
  %max_pix_value_sqd_uv = alloca i32, align 4
  store i64 0, i64* %diff_y, align 8
  store i64 0, i64* %diff_u, align 8
  store i64 0, i64* %diff_v, align 8
  %0 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %max_imgpel_value = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %0, i32 0, i32 155
  %1 = load i32, i32* %max_imgpel_value, align 4
  %2 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %max_imgpel_value1 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %2, i32 0, i32 155
  %3 = load i32, i32* %max_imgpel_value1, align 4
  %mul = mul nsw i32 %1, %3
  store i32 %mul, i32* %max_pix_value_sqd, align 4
  %4 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %max_imgpel_value_uv = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %4, i32 0, i32 156
  %5 = load i32, i32* %max_imgpel_value_uv, align 4
  %6 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %max_imgpel_value_uv2 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %6, i32 0, i32 156
  %7 = load i32, i32* %max_imgpel_value_uv2, align 4
  %mul3 = mul nsw i32 %5, %7
  store i32 %mul3, i32* %max_pix_value_sqd_uv, align 4
  %8 = load %struct.InputParameters*, %struct.InputParameters** @input, align 8
  %img_height = getelementptr inbounds %struct.InputParameters, %struct.InputParameters* %8, i32 0, i32 17
  %9 = load i32, i32* %img_height, align 4
  %10 = load %struct.InputParameters*, %struct.InputParameters** @input, align 8
  %img_width = getelementptr inbounds %struct.InputParameters, %struct.InputParameters* %10, i32 0, i32 16
  %11 = load i32, i32* %img_width, align 4
  %mul4 = mul nsw i32 %9, %11
  store i32 %mul4, i32* %impix, align 4
  %12 = load %struct.InputParameters*, %struct.InputParameters** @input, align 8
  %img_height_cr = getelementptr inbounds %struct.InputParameters, %struct.InputParameters* %12, i32 0, i32 137
  %13 = load i32, i32* %img_height_cr, align 4
  %14 = load %struct.InputParameters*, %struct.InputParameters** @input, align 8
  %img_width_cr = getelementptr inbounds %struct.InputParameters, %struct.InputParameters* %14, i32 0, i32 138
  %15 = load i32, i32* %img_width_cr, align 4
  %mul5 = mul nsw i32 %13, %15
  store i32 %mul5, i32* %impix_cr, align 4
  %16 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %fld_flag = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %16, i32 0, i32 57
  %17 = load i32, i32* %fld_flag, align 4
  %cmp = icmp ne i32 %17, 0
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  store i64 0, i64* %diff_y, align 8
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc.22, %if.then
  %18 = load i32, i32* %i, align 4
  %19 = load %struct.InputParameters*, %struct.InputParameters** @input, align 8
  %img_width6 = getelementptr inbounds %struct.InputParameters, %struct.InputParameters* %19, i32 0, i32 16
  %20 = load i32, i32* %img_width6, align 4
  %cmp7 = icmp slt i32 %18, %20
  br i1 %cmp7, label %for.body, label %for.end.24

for.body:                                         ; preds = %for.cond
  store i32 0, i32* %j, align 4
  br label %for.cond.8

for.cond.8:                                       ; preds = %for.inc, %for.body
  %21 = load i32, i32* %j, align 4
  %22 = load %struct.InputParameters*, %struct.InputParameters** @input, align 8
  %img_height9 = getelementptr inbounds %struct.InputParameters, %struct.InputParameters* %22, i32 0, i32 17
  %23 = load i32, i32* %img_height9, align 4
  %cmp10 = icmp slt i32 %21, %23
  br i1 %cmp10, label %for.body.11, label %for.end

for.body.11:                                      ; preds = %for.cond.8
  %24 = load i32, i32* %i, align 4
  %idxprom = sext i32 %24 to i64
  %25 = load i32, i32* %j, align 4
  %idxprom12 = sext i32 %25 to i64
  %26 = load i16**, i16*** @imgY_org, align 8
  %arrayidx = getelementptr inbounds i16*, i16** %26, i64 %idxprom12
  %27 = load i16*, i16** %arrayidx, align 8
  %arrayidx13 = getelementptr inbounds i16, i16* %27, i64 %idxprom
  %28 = load i16, i16* %arrayidx13, align 2
  %conv = zext i16 %28 to i32
  %29 = load i32, i32* %i, align 4
  %idxprom14 = sext i32 %29 to i64
  %30 = load i32, i32* %j, align 4
  %idxprom15 = sext i32 %30 to i64
  %31 = load i16**, i16*** @imgY_com, align 8
  %arrayidx16 = getelementptr inbounds i16*, i16** %31, i64 %idxprom15
  %32 = load i16*, i16** %arrayidx16, align 8
  %arrayidx17 = getelementptr inbounds i16, i16* %32, i64 %idxprom14
  %33 = load i16, i16* %arrayidx17, align 2
  %conv18 = zext i16 %33 to i32
  %sub = sub nsw i32 %conv, %conv18
  %idxprom19 = sext i32 %sub to i64
  %34 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %quad = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %34, i32 0, i32 53
  %35 = load i32*, i32** %quad, align 8
  %arrayidx20 = getelementptr inbounds i32, i32* %35, i64 %idxprom19
  %36 = load i32, i32* %arrayidx20, align 4
  %conv21 = sext i32 %36 to i64
  %37 = load i64, i64* %diff_y, align 8
  %add = add nsw i64 %37, %conv21
  store i64 %add, i64* %diff_y, align 8
  br label %for.inc

for.inc:                                          ; preds = %for.body.11
  %38 = load i32, i32* %j, align 4
  %inc = add nsw i32 %38, 1
  store i32 %inc, i32* %j, align 4
  br label %for.cond.8

for.end:                                          ; preds = %for.cond.8
  br label %for.inc.22

for.inc.22:                                       ; preds = %for.end
  %39 = load i32, i32* %i, align 4
  %inc23 = add nsw i32 %39, 1
  store i32 %inc23, i32* %i, align 4
  br label %for.cond

for.end.24:                                       ; preds = %for.cond
  %40 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %yuv_format = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %40, i32 0, i32 159
  %41 = load i32, i32* %yuv_format, align 4
  %cmp25 = icmp ne i32 %41, 0
  br i1 %cmp25, label %if.then.27, label %if.end

if.then.27:                                       ; preds = %for.end.24
  store i64 0, i64* %diff_u, align 8
  store i64 0, i64* %diff_v, align 8
  store i32 0, i32* %i, align 4
  br label %for.cond.28

for.cond.28:                                      ; preds = %for.inc.77, %if.then.27
  %42 = load i32, i32* %i, align 4
  %43 = load %struct.InputParameters*, %struct.InputParameters** @input, align 8
  %img_width_cr29 = getelementptr inbounds %struct.InputParameters, %struct.InputParameters* %43, i32 0, i32 138
  %44 = load i32, i32* %img_width_cr29, align 4
  %cmp30 = icmp slt i32 %42, %44
  br i1 %cmp30, label %for.body.32, label %for.end.79

for.body.32:                                      ; preds = %for.cond.28
  store i32 0, i32* %j, align 4
  br label %for.cond.33

for.cond.33:                                      ; preds = %for.inc.74, %for.body.32
  %45 = load i32, i32* %j, align 4
  %46 = load %struct.InputParameters*, %struct.InputParameters** @input, align 8
  %img_height_cr34 = getelementptr inbounds %struct.InputParameters, %struct.InputParameters* %46, i32 0, i32 137
  %47 = load i32, i32* %img_height_cr34, align 4
  %cmp35 = icmp slt i32 %45, %47
  br i1 %cmp35, label %for.body.37, label %for.end.76

for.body.37:                                      ; preds = %for.cond.33
  %48 = load i32, i32* %i, align 4
  %idxprom38 = sext i32 %48 to i64
  %49 = load i32, i32* %j, align 4
  %idxprom39 = sext i32 %49 to i64
  %50 = load i16***, i16**** @imgUV_org, align 8
  %arrayidx40 = getelementptr inbounds i16**, i16*** %50, i64 0
  %51 = load i16**, i16*** %arrayidx40, align 8
  %arrayidx41 = getelementptr inbounds i16*, i16** %51, i64 %idxprom39
  %52 = load i16*, i16** %arrayidx41, align 8
  %arrayidx42 = getelementptr inbounds i16, i16* %52, i64 %idxprom38
  %53 = load i16, i16* %arrayidx42, align 2
  %conv43 = zext i16 %53 to i32
  %54 = load i32, i32* %i, align 4
  %idxprom44 = sext i32 %54 to i64
  %55 = load i32, i32* %j, align 4
  %idxprom45 = sext i32 %55 to i64
  %56 = load i16***, i16**** @imgUV_com, align 8
  %arrayidx46 = getelementptr inbounds i16**, i16*** %56, i64 0
  %57 = load i16**, i16*** %arrayidx46, align 8
  %arrayidx47 = getelementptr inbounds i16*, i16** %57, i64 %idxprom45
  %58 = load i16*, i16** %arrayidx47, align 8
  %arrayidx48 = getelementptr inbounds i16, i16* %58, i64 %idxprom44
  %59 = load i16, i16* %arrayidx48, align 2
  %conv49 = zext i16 %59 to i32
  %sub50 = sub nsw i32 %conv43, %conv49
  %idxprom51 = sext i32 %sub50 to i64
  %60 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %quad52 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %60, i32 0, i32 53
  %61 = load i32*, i32** %quad52, align 8
  %arrayidx53 = getelementptr inbounds i32, i32* %61, i64 %idxprom51
  %62 = load i32, i32* %arrayidx53, align 4
  %conv54 = sext i32 %62 to i64
  %63 = load i64, i64* %diff_u, align 8
  %add55 = add nsw i64 %63, %conv54
  store i64 %add55, i64* %diff_u, align 8
  %64 = load i32, i32* %i, align 4
  %idxprom56 = sext i32 %64 to i64
  %65 = load i32, i32* %j, align 4
  %idxprom57 = sext i32 %65 to i64
  %66 = load i16***, i16**** @imgUV_org, align 8
  %arrayidx58 = getelementptr inbounds i16**, i16*** %66, i64 1
  %67 = load i16**, i16*** %arrayidx58, align 8
  %arrayidx59 = getelementptr inbounds i16*, i16** %67, i64 %idxprom57
  %68 = load i16*, i16** %arrayidx59, align 8
  %arrayidx60 = getelementptr inbounds i16, i16* %68, i64 %idxprom56
  %69 = load i16, i16* %arrayidx60, align 2
  %conv61 = zext i16 %69 to i32
  %70 = load i32, i32* %i, align 4
  %idxprom62 = sext i32 %70 to i64
  %71 = load i32, i32* %j, align 4
  %idxprom63 = sext i32 %71 to i64
  %72 = load i16***, i16**** @imgUV_com, align 8
  %arrayidx64 = getelementptr inbounds i16**, i16*** %72, i64 1
  %73 = load i16**, i16*** %arrayidx64, align 8
  %arrayidx65 = getelementptr inbounds i16*, i16** %73, i64 %idxprom63
  %74 = load i16*, i16** %arrayidx65, align 8
  %arrayidx66 = getelementptr inbounds i16, i16* %74, i64 %idxprom62
  %75 = load i16, i16* %arrayidx66, align 2
  %conv67 = zext i16 %75 to i32
  %sub68 = sub nsw i32 %conv61, %conv67
  %idxprom69 = sext i32 %sub68 to i64
  %76 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %quad70 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %76, i32 0, i32 53
  %77 = load i32*, i32** %quad70, align 8
  %arrayidx71 = getelementptr inbounds i32, i32* %77, i64 %idxprom69
  %78 = load i32, i32* %arrayidx71, align 4
  %conv72 = sext i32 %78 to i64
  %79 = load i64, i64* %diff_v, align 8
  %add73 = add nsw i64 %79, %conv72
  store i64 %add73, i64* %diff_v, align 8
  br label %for.inc.74

for.inc.74:                                       ; preds = %for.body.37
  %80 = load i32, i32* %j, align 4
  %inc75 = add nsw i32 %80, 1
  store i32 %inc75, i32* %j, align 4
  br label %for.cond.33

for.end.76:                                       ; preds = %for.cond.33
  br label %for.inc.77

for.inc.77:                                       ; preds = %for.end.76
  %81 = load i32, i32* %i, align 4
  %inc78 = add nsw i32 %81, 1
  store i32 %inc78, i32* %i, align 4
  br label %for.cond.28

for.end.79:                                       ; preds = %for.cond.28
  br label %if.end

if.end:                                           ; preds = %for.end.79, %for.end.24
  br label %if.end.174

if.else:                                          ; preds = %entry
  %82 = load i16**, i16*** @imgY_org_frm, align 8
  store i16** %82, i16*** @imgY_org, align 8
  %83 = load i16***, i16**** @imgUV_org_frm, align 8
  store i16*** %83, i16**** @imgUV_org, align 8
  %84 = load %struct.InputParameters*, %struct.InputParameters** @input, align 8
  %PicInterlace = getelementptr inbounds %struct.InputParameters, %struct.InputParameters* %84, i32 0, i32 91
  %85 = load i32, i32* %PicInterlace, align 4
  %cmp80 = icmp eq i32 %85, 2
  br i1 %cmp80, label %if.then.82, label %if.end.83

if.then.82:                                       ; preds = %if.else
  %86 = load %struct.storable_picture*, %struct.storable_picture** @enc_frame_picture, align 8
  store %struct.storable_picture* %86, %struct.storable_picture** @enc_picture, align 8
  br label %if.end.83

if.end.83:                                        ; preds = %if.then.82, %if.else
  store i64 0, i64* %diff_y, align 8
  store i32 0, i32* %i, align 4
  br label %for.cond.84

for.cond.84:                                      ; preds = %for.inc.113, %if.end.83
  %87 = load i32, i32* %i, align 4
  %88 = load %struct.InputParameters*, %struct.InputParameters** @input, align 8
  %img_width85 = getelementptr inbounds %struct.InputParameters, %struct.InputParameters* %88, i32 0, i32 16
  %89 = load i32, i32* %img_width85, align 4
  %cmp86 = icmp slt i32 %87, %89
  br i1 %cmp86, label %for.body.88, label %for.end.115

for.body.88:                                      ; preds = %for.cond.84
  store i32 0, i32* %j, align 4
  br label %for.cond.89

for.cond.89:                                      ; preds = %for.inc.110, %for.body.88
  %90 = load i32, i32* %j, align 4
  %91 = load %struct.InputParameters*, %struct.InputParameters** @input, align 8
  %img_height90 = getelementptr inbounds %struct.InputParameters, %struct.InputParameters* %91, i32 0, i32 17
  %92 = load i32, i32* %img_height90, align 4
  %cmp91 = icmp slt i32 %90, %92
  br i1 %cmp91, label %for.body.93, label %for.end.112

for.body.93:                                      ; preds = %for.cond.89
  %93 = load i32, i32* %i, align 4
  %idxprom94 = sext i32 %93 to i64
  %94 = load i32, i32* %j, align 4
  %idxprom95 = sext i32 %94 to i64
  %95 = load i16**, i16*** @imgY_org, align 8
  %arrayidx96 = getelementptr inbounds i16*, i16** %95, i64 %idxprom95
  %96 = load i16*, i16** %arrayidx96, align 8
  %arrayidx97 = getelementptr inbounds i16, i16* %96, i64 %idxprom94
  %97 = load i16, i16* %arrayidx97, align 2
  %conv98 = zext i16 %97 to i32
  %98 = load i32, i32* %i, align 4
  %idxprom99 = sext i32 %98 to i64
  %99 = load i32, i32* %j, align 4
  %idxprom100 = sext i32 %99 to i64
  %100 = load %struct.storable_picture*, %struct.storable_picture** @enc_picture, align 8
  %imgY = getelementptr inbounds %struct.storable_picture, %struct.storable_picture* %100, i32 0, i32 25
  %101 = load i16**, i16*** %imgY, align 8
  %arrayidx101 = getelementptr inbounds i16*, i16** %101, i64 %idxprom100
  %102 = load i16*, i16** %arrayidx101, align 8
  %arrayidx102 = getelementptr inbounds i16, i16* %102, i64 %idxprom99
  %103 = load i16, i16* %arrayidx102, align 2
  %conv103 = zext i16 %103 to i32
  %sub104 = sub nsw i32 %conv98, %conv103
  %idxprom105 = sext i32 %sub104 to i64
  %104 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %quad106 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %104, i32 0, i32 53
  %105 = load i32*, i32** %quad106, align 8
  %arrayidx107 = getelementptr inbounds i32, i32* %105, i64 %idxprom105
  %106 = load i32, i32* %arrayidx107, align 4
  %conv108 = sext i32 %106 to i64
  %107 = load i64, i64* %diff_y, align 8
  %add109 = add nsw i64 %107, %conv108
  store i64 %add109, i64* %diff_y, align 8
  br label %for.inc.110

for.inc.110:                                      ; preds = %for.body.93
  %108 = load i32, i32* %j, align 4
  %inc111 = add nsw i32 %108, 1
  store i32 %inc111, i32* %j, align 4
  br label %for.cond.89

for.end.112:                                      ; preds = %for.cond.89
  br label %for.inc.113

for.inc.113:                                      ; preds = %for.end.112
  %109 = load i32, i32* %i, align 4
  %inc114 = add nsw i32 %109, 1
  store i32 %inc114, i32* %i, align 4
  br label %for.cond.84

for.end.115:                                      ; preds = %for.cond.84
  %110 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %yuv_format116 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %110, i32 0, i32 159
  %111 = load i32, i32* %yuv_format116, align 4
  %cmp117 = icmp ne i32 %111, 0
  br i1 %cmp117, label %if.then.119, label %if.end.173

if.then.119:                                      ; preds = %for.end.115
  store i64 0, i64* %diff_u, align 8
  store i64 0, i64* %diff_v, align 8
  store i32 0, i32* %i, align 4
  br label %for.cond.120

for.cond.120:                                     ; preds = %for.inc.170, %if.then.119
  %112 = load i32, i32* %i, align 4
  %113 = load %struct.InputParameters*, %struct.InputParameters** @input, align 8
  %img_width_cr121 = getelementptr inbounds %struct.InputParameters, %struct.InputParameters* %113, i32 0, i32 138
  %114 = load i32, i32* %img_width_cr121, align 4
  %cmp122 = icmp slt i32 %112, %114
  br i1 %cmp122, label %for.body.124, label %for.end.172

for.body.124:                                     ; preds = %for.cond.120
  store i32 0, i32* %j, align 4
  br label %for.cond.125

for.cond.125:                                     ; preds = %for.inc.167, %for.body.124
  %115 = load i32, i32* %j, align 4
  %116 = load %struct.InputParameters*, %struct.InputParameters** @input, align 8
  %img_height_cr126 = getelementptr inbounds %struct.InputParameters, %struct.InputParameters* %116, i32 0, i32 137
  %117 = load i32, i32* %img_height_cr126, align 4
  %cmp127 = icmp slt i32 %115, %117
  br i1 %cmp127, label %for.body.129, label %for.end.169

for.body.129:                                     ; preds = %for.cond.125
  %118 = load i32, i32* %i, align 4
  %idxprom130 = sext i32 %118 to i64
  %119 = load i32, i32* %j, align 4
  %idxprom131 = sext i32 %119 to i64
  %120 = load i16***, i16**** @imgUV_org, align 8
  %arrayidx132 = getelementptr inbounds i16**, i16*** %120, i64 0
  %121 = load i16**, i16*** %arrayidx132, align 8
  %arrayidx133 = getelementptr inbounds i16*, i16** %121, i64 %idxprom131
  %122 = load i16*, i16** %arrayidx133, align 8
  %arrayidx134 = getelementptr inbounds i16, i16* %122, i64 %idxprom130
  %123 = load i16, i16* %arrayidx134, align 2
  %conv135 = zext i16 %123 to i32
  %124 = load i32, i32* %i, align 4
  %idxprom136 = sext i32 %124 to i64
  %125 = load i32, i32* %j, align 4
  %idxprom137 = sext i32 %125 to i64
  %126 = load %struct.storable_picture*, %struct.storable_picture** @enc_picture, align 8
  %imgUV = getelementptr inbounds %struct.storable_picture, %struct.storable_picture* %126, i32 0, i32 30
  %127 = load i16***, i16**** %imgUV, align 8
  %arrayidx138 = getelementptr inbounds i16**, i16*** %127, i64 0
  %128 = load i16**, i16*** %arrayidx138, align 8
  %arrayidx139 = getelementptr inbounds i16*, i16** %128, i64 %idxprom137
  %129 = load i16*, i16** %arrayidx139, align 8
  %arrayidx140 = getelementptr inbounds i16, i16* %129, i64 %idxprom136
  %130 = load i16, i16* %arrayidx140, align 2
  %conv141 = zext i16 %130 to i32
  %sub142 = sub nsw i32 %conv135, %conv141
  %idxprom143 = sext i32 %sub142 to i64
  %131 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %quad144 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %131, i32 0, i32 53
  %132 = load i32*, i32** %quad144, align 8
  %arrayidx145 = getelementptr inbounds i32, i32* %132, i64 %idxprom143
  %133 = load i32, i32* %arrayidx145, align 4
  %conv146 = sext i32 %133 to i64
  %134 = load i64, i64* %diff_u, align 8
  %add147 = add nsw i64 %134, %conv146
  store i64 %add147, i64* %diff_u, align 8
  %135 = load i32, i32* %i, align 4
  %idxprom148 = sext i32 %135 to i64
  %136 = load i32, i32* %j, align 4
  %idxprom149 = sext i32 %136 to i64
  %137 = load i16***, i16**** @imgUV_org, align 8
  %arrayidx150 = getelementptr inbounds i16**, i16*** %137, i64 1
  %138 = load i16**, i16*** %arrayidx150, align 8
  %arrayidx151 = getelementptr inbounds i16*, i16** %138, i64 %idxprom149
  %139 = load i16*, i16** %arrayidx151, align 8
  %arrayidx152 = getelementptr inbounds i16, i16* %139, i64 %idxprom148
  %140 = load i16, i16* %arrayidx152, align 2
  %conv153 = zext i16 %140 to i32
  %141 = load i32, i32* %i, align 4
  %idxprom154 = sext i32 %141 to i64
  %142 = load i32, i32* %j, align 4
  %idxprom155 = sext i32 %142 to i64
  %143 = load %struct.storable_picture*, %struct.storable_picture** @enc_picture, align 8
  %imgUV156 = getelementptr inbounds %struct.storable_picture, %struct.storable_picture* %143, i32 0, i32 30
  %144 = load i16***, i16**** %imgUV156, align 8
  %arrayidx157 = getelementptr inbounds i16**, i16*** %144, i64 1
  %145 = load i16**, i16*** %arrayidx157, align 8
  %arrayidx158 = getelementptr inbounds i16*, i16** %145, i64 %idxprom155
  %146 = load i16*, i16** %arrayidx158, align 8
  %arrayidx159 = getelementptr inbounds i16, i16* %146, i64 %idxprom154
  %147 = load i16, i16* %arrayidx159, align 2
  %conv160 = zext i16 %147 to i32
  %sub161 = sub nsw i32 %conv153, %conv160
  %idxprom162 = sext i32 %sub161 to i64
  %148 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %quad163 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %148, i32 0, i32 53
  %149 = load i32*, i32** %quad163, align 8
  %arrayidx164 = getelementptr inbounds i32, i32* %149, i64 %idxprom162
  %150 = load i32, i32* %arrayidx164, align 4
  %conv165 = sext i32 %150 to i64
  %151 = load i64, i64* %diff_v, align 8
  %add166 = add nsw i64 %151, %conv165
  store i64 %add166, i64* %diff_v, align 8
  br label %for.inc.167

for.inc.167:                                      ; preds = %for.body.129
  %152 = load i32, i32* %j, align 4
  %inc168 = add nsw i32 %152, 1
  store i32 %inc168, i32* %j, align 4
  br label %for.cond.125

for.end.169:                                      ; preds = %for.cond.125
  br label %for.inc.170

for.inc.170:                                      ; preds = %for.end.169
  %153 = load i32, i32* %i, align 4
  %inc171 = add nsw i32 %153, 1
  store i32 %inc171, i32* %i, align 4
  br label %for.cond.120

for.end.172:                                      ; preds = %for.cond.120
  br label %if.end.173

if.end.173:                                       ; preds = %for.end.172, %for.end.115
  br label %if.end.174

if.end.174:                                       ; preds = %if.end.173, %if.end
  %154 = load i64, i64* %diff_y, align 8
  %cmp175 = icmp eq i64 %154, 0
  br i1 %cmp175, label %if.then.177, label %if.end.178

if.then.177:                                      ; preds = %if.end.174
  store i64 1, i64* %diff_y, align 8
  br label %if.end.178

if.end.178:                                       ; preds = %if.then.177, %if.end.174
  %155 = load i64, i64* %diff_u, align 8
  %cmp179 = icmp eq i64 %155, 0
  br i1 %cmp179, label %if.then.181, label %if.end.182

if.then.181:                                      ; preds = %if.end.178
  store i64 1, i64* %diff_u, align 8
  br label %if.end.182

if.end.182:                                       ; preds = %if.then.181, %if.end.178
  %156 = load i64, i64* %diff_v, align 8
  %cmp183 = icmp eq i64 %156, 0
  br i1 %cmp183, label %if.then.185, label %if.end.186

if.then.185:                                      ; preds = %if.end.182
  store i64 1, i64* %diff_v, align 8
  br label %if.end.186

if.end.186:                                       ; preds = %if.then.185, %if.end.182
  %157 = load i64, i64* %diff_y, align 8
  %cmp187 = icmp ne i64 %157, 0
  br i1 %cmp187, label %if.then.189, label %if.end.220

if.then.189:                                      ; preds = %if.end.186
  %158 = load i32, i32* %max_pix_value_sqd, align 4
  %conv190 = uitofp i32 %158 to double
  %159 = load i32, i32* %impix, align 4
  %conv191 = sitofp i32 %159 to double
  %160 = load i64, i64* %diff_y, align 8
  %conv192 = sitofp i64 %160 to double
  %div = fdiv double %conv191, %conv192
  %mul193 = fmul double %conv190, %div
  %call = call double @log10(double %mul193) #3
  %mul194 = fmul double 1.000000e+01, %call
  %conv195 = fptrunc double %mul194 to float
  %161 = load %struct.SNRParameters*, %struct.SNRParameters** @snr, align 8
  %snr_y = getelementptr inbounds %struct.SNRParameters, %struct.SNRParameters* %161, i32 0, i32 0
  store float %conv195, float* %snr_y, align 4
  %162 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %yuv_format196 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %162, i32 0, i32 159
  %163 = load i32, i32* %yuv_format196, align 4
  %cmp197 = icmp ne i32 %163, 0
  br i1 %cmp197, label %if.then.199, label %if.else.216

if.then.199:                                      ; preds = %if.then.189
  %164 = load i32, i32* %max_pix_value_sqd_uv, align 4
  %conv200 = uitofp i32 %164 to double
  %165 = load i32, i32* %impix_cr, align 4
  %conv201 = sitofp i32 %165 to double
  %166 = load i64, i64* %diff_u, align 8
  %conv202 = sitofp i64 %166 to double
  %div203 = fdiv double %conv201, %conv202
  %mul204 = fmul double %conv200, %div203
  %call205 = call double @log10(double %mul204) #3
  %mul206 = fmul double 1.000000e+01, %call205
  %conv207 = fptrunc double %mul206 to float
  %167 = load %struct.SNRParameters*, %struct.SNRParameters** @snr, align 8
  %snr_u = getelementptr inbounds %struct.SNRParameters, %struct.SNRParameters* %167, i32 0, i32 1
  store float %conv207, float* %snr_u, align 4
  %168 = load i32, i32* %max_pix_value_sqd_uv, align 4
  %conv208 = uitofp i32 %168 to double
  %169 = load i32, i32* %impix_cr, align 4
  %conv209 = sitofp i32 %169 to double
  %170 = load i64, i64* %diff_v, align 8
  %conv210 = sitofp i64 %170 to double
  %div211 = fdiv double %conv209, %conv210
  %mul212 = fmul double %conv208, %div211
  %call213 = call double @log10(double %mul212) #3
  %mul214 = fmul double 1.000000e+01, %call213
  %conv215 = fptrunc double %mul214 to float
  %171 = load %struct.SNRParameters*, %struct.SNRParameters** @snr, align 8
  %snr_v = getelementptr inbounds %struct.SNRParameters, %struct.SNRParameters* %171, i32 0, i32 2
  store float %conv215, float* %snr_v, align 4
  br label %if.end.219

if.else.216:                                      ; preds = %if.then.189
  %172 = load %struct.SNRParameters*, %struct.SNRParameters** @snr, align 8
  %snr_u217 = getelementptr inbounds %struct.SNRParameters, %struct.SNRParameters* %172, i32 0, i32 1
  store float 0.000000e+00, float* %snr_u217, align 4
  %173 = load %struct.SNRParameters*, %struct.SNRParameters** @snr, align 8
  %snr_v218 = getelementptr inbounds %struct.SNRParameters, %struct.SNRParameters* %173, i32 0, i32 2
  store float 0.000000e+00, float* %snr_v218, align 4
  br label %if.end.219

if.end.219:                                       ; preds = %if.else.216, %if.then.199
  br label %if.end.220

if.end.220:                                       ; preds = %if.end.219, %if.end.186
  %174 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %number = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %174, i32 0, i32 0
  %175 = load i32, i32* %number, align 4
  %cmp221 = icmp eq i32 %175, 0
  br i1 %cmp221, label %if.then.223, label %if.else.245

if.then.223:                                      ; preds = %if.end.220
  %176 = load %struct.SNRParameters*, %struct.SNRParameters** @snr, align 8
  %snr_y224 = getelementptr inbounds %struct.SNRParameters, %struct.SNRParameters* %176, i32 0, i32 0
  %177 = load float, float* %snr_y224, align 4
  %178 = load %struct.SNRParameters*, %struct.SNRParameters** @snr, align 8
  %snr_y1 = getelementptr inbounds %struct.SNRParameters, %struct.SNRParameters* %178, i32 0, i32 3
  store float %177, float* %snr_y1, align 4
  %179 = load %struct.SNRParameters*, %struct.SNRParameters** @snr, align 8
  %snr_u225 = getelementptr inbounds %struct.SNRParameters, %struct.SNRParameters* %179, i32 0, i32 1
  %180 = load float, float* %snr_u225, align 4
  %181 = load %struct.SNRParameters*, %struct.SNRParameters** @snr, align 8
  %snr_u1 = getelementptr inbounds %struct.SNRParameters, %struct.SNRParameters* %181, i32 0, i32 4
  store float %180, float* %snr_u1, align 4
  %182 = load %struct.SNRParameters*, %struct.SNRParameters** @snr, align 8
  %snr_v226 = getelementptr inbounds %struct.SNRParameters, %struct.SNRParameters* %182, i32 0, i32 2
  %183 = load float, float* %snr_v226, align 4
  %184 = load %struct.SNRParameters*, %struct.SNRParameters** @snr, align 8
  %snr_v1 = getelementptr inbounds %struct.SNRParameters, %struct.SNRParameters* %184, i32 0, i32 5
  store float %183, float* %snr_v1, align 4
  %185 = load %struct.SNRParameters*, %struct.SNRParameters** @snr, align 8
  %snr_y1227 = getelementptr inbounds %struct.SNRParameters, %struct.SNRParameters* %185, i32 0, i32 3
  %186 = load float, float* %snr_y1227, align 4
  %187 = load %struct.SNRParameters*, %struct.SNRParameters** @snr, align 8
  %snr_ya = getelementptr inbounds %struct.SNRParameters, %struct.SNRParameters* %187, i32 0, i32 9
  store float %186, float* %snr_ya, align 4
  %188 = load %struct.SNRParameters*, %struct.SNRParameters** @snr, align 8
  %snr_u1228 = getelementptr inbounds %struct.SNRParameters, %struct.SNRParameters* %188, i32 0, i32 4
  %189 = load float, float* %snr_u1228, align 4
  %190 = load %struct.SNRParameters*, %struct.SNRParameters** @snr, align 8
  %snr_ua = getelementptr inbounds %struct.SNRParameters, %struct.SNRParameters* %190, i32 0, i32 10
  store float %189, float* %snr_ua, align 4
  %191 = load %struct.SNRParameters*, %struct.SNRParameters** @snr, align 8
  %snr_v1229 = getelementptr inbounds %struct.SNRParameters, %struct.SNRParameters* %191, i32 0, i32 5
  %192 = load float, float* %snr_v1229, align 4
  %193 = load %struct.SNRParameters*, %struct.SNRParameters** @snr, align 8
  %snr_va = getelementptr inbounds %struct.SNRParameters, %struct.SNRParameters* %193, i32 0, i32 11
  store float %192, float* %snr_va, align 4
  %194 = load %struct.SNRParameters*, %struct.SNRParameters** @snr, align 8
  %snr_yt = getelementptr inbounds %struct.SNRParameters, %struct.SNRParameters* %194, i32 0, i32 6
  %arrayidx230 = getelementptr inbounds [3 x float], [3 x float]* %snr_yt, i32 0, i64 2
  store float 0.000000e+00, float* %arrayidx230, align 4
  %195 = load %struct.SNRParameters*, %struct.SNRParameters** @snr, align 8
  %snr_ut = getelementptr inbounds %struct.SNRParameters, %struct.SNRParameters* %195, i32 0, i32 7
  %arrayidx231 = getelementptr inbounds [3 x float], [3 x float]* %snr_ut, i32 0, i64 2
  store float 0.000000e+00, float* %arrayidx231, align 4
  %196 = load %struct.SNRParameters*, %struct.SNRParameters** @snr, align 8
  %snr_vt = getelementptr inbounds %struct.SNRParameters, %struct.SNRParameters* %196, i32 0, i32 8
  %arrayidx232 = getelementptr inbounds [3 x float], [3 x float]* %snr_vt, i32 0, i64 2
  store float 0.000000e+00, float* %arrayidx232, align 4
  %197 = load %struct.SNRParameters*, %struct.SNRParameters** @snr, align 8
  %snr_yt233 = getelementptr inbounds %struct.SNRParameters, %struct.SNRParameters* %197, i32 0, i32 6
  %arrayidx234 = getelementptr inbounds [3 x float], [3 x float]* %snr_yt233, i32 0, i64 0
  store float 0.000000e+00, float* %arrayidx234, align 4
  %198 = load %struct.SNRParameters*, %struct.SNRParameters** @snr, align 8
  %snr_ut235 = getelementptr inbounds %struct.SNRParameters, %struct.SNRParameters* %198, i32 0, i32 7
  %arrayidx236 = getelementptr inbounds [3 x float], [3 x float]* %snr_ut235, i32 0, i64 0
  store float 0.000000e+00, float* %arrayidx236, align 4
  %199 = load %struct.SNRParameters*, %struct.SNRParameters** @snr, align 8
  %snr_vt237 = getelementptr inbounds %struct.SNRParameters, %struct.SNRParameters* %199, i32 0, i32 8
  %arrayidx238 = getelementptr inbounds [3 x float], [3 x float]* %snr_vt237, i32 0, i64 0
  store float 0.000000e+00, float* %arrayidx238, align 4
  %200 = load %struct.SNRParameters*, %struct.SNRParameters** @snr, align 8
  %snr_yt239 = getelementptr inbounds %struct.SNRParameters, %struct.SNRParameters* %200, i32 0, i32 6
  %arrayidx240 = getelementptr inbounds [3 x float], [3 x float]* %snr_yt239, i32 0, i64 1
  store float 0.000000e+00, float* %arrayidx240, align 4
  %201 = load %struct.SNRParameters*, %struct.SNRParameters** @snr, align 8
  %snr_ut241 = getelementptr inbounds %struct.SNRParameters, %struct.SNRParameters* %201, i32 0, i32 7
  %arrayidx242 = getelementptr inbounds [3 x float], [3 x float]* %snr_ut241, i32 0, i64 1
  store float 0.000000e+00, float* %arrayidx242, align 4
  %202 = load %struct.SNRParameters*, %struct.SNRParameters** @snr, align 8
  %snr_vt243 = getelementptr inbounds %struct.SNRParameters, %struct.SNRParameters* %202, i32 0, i32 8
  %arrayidx244 = getelementptr inbounds [3 x float], [3 x float]* %snr_vt243, i32 0, i64 1
  store float 0.000000e+00, float* %arrayidx244, align 4
  br label %if.end.285

if.else.245:                                      ; preds = %if.end.220
  %203 = load %struct.SNRParameters*, %struct.SNRParameters** @snr, align 8
  %snr_ya246 = getelementptr inbounds %struct.SNRParameters, %struct.SNRParameters* %203, i32 0, i32 9
  %204 = load float, float* %snr_ya246, align 4
  %205 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %number247 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %205, i32 0, i32 0
  %206 = load i32, i32* %number247, align 4
  %207 = load i32, i32* @Bframe_ctr, align 4
  %add248 = add nsw i32 %206, %207
  %conv249 = sitofp i32 %add248 to float
  %mul250 = fmul float %204, %conv249
  %208 = load %struct.SNRParameters*, %struct.SNRParameters** @snr, align 8
  %snr_y251 = getelementptr inbounds %struct.SNRParameters, %struct.SNRParameters* %208, i32 0, i32 0
  %209 = load float, float* %snr_y251, align 4
  %add252 = fadd float %mul250, %209
  %210 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %number253 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %210, i32 0, i32 0
  %211 = load i32, i32* %number253, align 4
  %212 = load i32, i32* @Bframe_ctr, align 4
  %add254 = add nsw i32 %211, %212
  %add255 = add nsw i32 %add254, 1
  %conv256 = sitofp i32 %add255 to float
  %div257 = fdiv float %add252, %conv256
  %213 = load %struct.SNRParameters*, %struct.SNRParameters** @snr, align 8
  %snr_ya258 = getelementptr inbounds %struct.SNRParameters, %struct.SNRParameters* %213, i32 0, i32 9
  store float %div257, float* %snr_ya258, align 4
  %214 = load %struct.SNRParameters*, %struct.SNRParameters** @snr, align 8
  %snr_ua259 = getelementptr inbounds %struct.SNRParameters, %struct.SNRParameters* %214, i32 0, i32 10
  %215 = load float, float* %snr_ua259, align 4
  %216 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %number260 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %216, i32 0, i32 0
  %217 = load i32, i32* %number260, align 4
  %218 = load i32, i32* @Bframe_ctr, align 4
  %add261 = add nsw i32 %217, %218
  %conv262 = sitofp i32 %add261 to float
  %mul263 = fmul float %215, %conv262
  %219 = load %struct.SNRParameters*, %struct.SNRParameters** @snr, align 8
  %snr_u264 = getelementptr inbounds %struct.SNRParameters, %struct.SNRParameters* %219, i32 0, i32 1
  %220 = load float, float* %snr_u264, align 4
  %add265 = fadd float %mul263, %220
  %221 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %number266 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %221, i32 0, i32 0
  %222 = load i32, i32* %number266, align 4
  %223 = load i32, i32* @Bframe_ctr, align 4
  %add267 = add nsw i32 %222, %223
  %add268 = add nsw i32 %add267, 1
  %conv269 = sitofp i32 %add268 to float
  %div270 = fdiv float %add265, %conv269
  %224 = load %struct.SNRParameters*, %struct.SNRParameters** @snr, align 8
  %snr_ua271 = getelementptr inbounds %struct.SNRParameters, %struct.SNRParameters* %224, i32 0, i32 10
  store float %div270, float* %snr_ua271, align 4
  %225 = load %struct.SNRParameters*, %struct.SNRParameters** @snr, align 8
  %snr_va272 = getelementptr inbounds %struct.SNRParameters, %struct.SNRParameters* %225, i32 0, i32 11
  %226 = load float, float* %snr_va272, align 4
  %227 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %number273 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %227, i32 0, i32 0
  %228 = load i32, i32* %number273, align 4
  %229 = load i32, i32* @Bframe_ctr, align 4
  %add274 = add nsw i32 %228, %229
  %conv275 = sitofp i32 %add274 to float
  %mul276 = fmul float %226, %conv275
  %230 = load %struct.SNRParameters*, %struct.SNRParameters** @snr, align 8
  %snr_v277 = getelementptr inbounds %struct.SNRParameters, %struct.SNRParameters* %230, i32 0, i32 2
  %231 = load float, float* %snr_v277, align 4
  %add278 = fadd float %mul276, %231
  %232 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %number279 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %232, i32 0, i32 0
  %233 = load i32, i32* %number279, align 4
  %234 = load i32, i32* @Bframe_ctr, align 4
  %add280 = add nsw i32 %233, %234
  %add281 = add nsw i32 %add280, 1
  %conv282 = sitofp i32 %add281 to float
  %div283 = fdiv float %add278, %conv282
  %235 = load %struct.SNRParameters*, %struct.SNRParameters** @snr, align 8
  %snr_va284 = getelementptr inbounds %struct.SNRParameters, %struct.SNRParameters* %235, i32 0, i32 11
  store float %div283, float* %snr_va284, align 4
  br label %if.end.285

if.end.285:                                       ; preds = %if.else.245, %if.then.223
  %236 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %type = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %236, i32 0, i32 6
  %237 = load i32, i32* %type, align 4
  %cmp286 = icmp eq i32 %237, 2
  br i1 %cmp286, label %if.then.288, label %if.else.322

if.then.288:                                      ; preds = %if.end.285
  %238 = load %struct.SNRParameters*, %struct.SNRParameters** @snr, align 8
  %snr_yt289 = getelementptr inbounds %struct.SNRParameters, %struct.SNRParameters* %238, i32 0, i32 6
  %arrayidx290 = getelementptr inbounds [3 x float], [3 x float]* %snr_yt289, i32 0, i64 2
  %239 = load float, float* %arrayidx290, align 4
  %240 = load i32, i32* @Iframe_ctr, align 4
  %sub291 = sub nsw i32 %240, 1
  %conv292 = sitofp i32 %sub291 to float
  %mul293 = fmul float %239, %conv292
  %241 = load %struct.SNRParameters*, %struct.SNRParameters** @snr, align 8
  %snr_y294 = getelementptr inbounds %struct.SNRParameters, %struct.SNRParameters* %241, i32 0, i32 0
  %242 = load float, float* %snr_y294, align 4
  %add295 = fadd float %mul293, %242
  %243 = load i32, i32* @Iframe_ctr, align 4
  %conv296 = sitofp i32 %243 to float
  %div297 = fdiv float %add295, %conv296
  %244 = load %struct.SNRParameters*, %struct.SNRParameters** @snr, align 8
  %snr_yt298 = getelementptr inbounds %struct.SNRParameters, %struct.SNRParameters* %244, i32 0, i32 6
  %arrayidx299 = getelementptr inbounds [3 x float], [3 x float]* %snr_yt298, i32 0, i64 2
  store float %div297, float* %arrayidx299, align 4
  %245 = load %struct.SNRParameters*, %struct.SNRParameters** @snr, align 8
  %snr_ut300 = getelementptr inbounds %struct.SNRParameters, %struct.SNRParameters* %245, i32 0, i32 7
  %arrayidx301 = getelementptr inbounds [3 x float], [3 x float]* %snr_ut300, i32 0, i64 2
  %246 = load float, float* %arrayidx301, align 4
  %247 = load i32, i32* @Iframe_ctr, align 4
  %sub302 = sub nsw i32 %247, 1
  %conv303 = sitofp i32 %sub302 to float
  %mul304 = fmul float %246, %conv303
  %248 = load %struct.SNRParameters*, %struct.SNRParameters** @snr, align 8
  %snr_u305 = getelementptr inbounds %struct.SNRParameters, %struct.SNRParameters* %248, i32 0, i32 1
  %249 = load float, float* %snr_u305, align 4
  %add306 = fadd float %mul304, %249
  %250 = load i32, i32* @Iframe_ctr, align 4
  %conv307 = sitofp i32 %250 to float
  %div308 = fdiv float %add306, %conv307
  %251 = load %struct.SNRParameters*, %struct.SNRParameters** @snr, align 8
  %snr_ut309 = getelementptr inbounds %struct.SNRParameters, %struct.SNRParameters* %251, i32 0, i32 7
  %arrayidx310 = getelementptr inbounds [3 x float], [3 x float]* %snr_ut309, i32 0, i64 2
  store float %div308, float* %arrayidx310, align 4
  %252 = load %struct.SNRParameters*, %struct.SNRParameters** @snr, align 8
  %snr_vt311 = getelementptr inbounds %struct.SNRParameters, %struct.SNRParameters* %252, i32 0, i32 8
  %arrayidx312 = getelementptr inbounds [3 x float], [3 x float]* %snr_vt311, i32 0, i64 2
  %253 = load float, float* %arrayidx312, align 4
  %254 = load i32, i32* @Iframe_ctr, align 4
  %sub313 = sub nsw i32 %254, 1
  %conv314 = sitofp i32 %sub313 to float
  %mul315 = fmul float %253, %conv314
  %255 = load %struct.SNRParameters*, %struct.SNRParameters** @snr, align 8
  %snr_v316 = getelementptr inbounds %struct.SNRParameters, %struct.SNRParameters* %255, i32 0, i32 2
  %256 = load float, float* %snr_v316, align 4
  %add317 = fadd float %mul315, %256
  %257 = load i32, i32* @Iframe_ctr, align 4
  %conv318 = sitofp i32 %257 to float
  %div319 = fdiv float %add317, %conv318
  %258 = load %struct.SNRParameters*, %struct.SNRParameters** @snr, align 8
  %snr_vt320 = getelementptr inbounds %struct.SNRParameters, %struct.SNRParameters* %258, i32 0, i32 8
  %arrayidx321 = getelementptr inbounds [3 x float], [3 x float]* %snr_vt320, i32 0, i64 2
  store float %div319, float* %arrayidx321, align 4
  br label %if.end.395

if.else.322:                                      ; preds = %if.end.285
  %259 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %type323 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %259, i32 0, i32 6
  %260 = load i32, i32* %type323, align 4
  %cmp324 = icmp eq i32 %260, 1
  br i1 %cmp324, label %if.then.326, label %if.else.360

if.then.326:                                      ; preds = %if.else.322
  %261 = load %struct.SNRParameters*, %struct.SNRParameters** @snr, align 8
  %snr_yt327 = getelementptr inbounds %struct.SNRParameters, %struct.SNRParameters* %261, i32 0, i32 6
  %arrayidx328 = getelementptr inbounds [3 x float], [3 x float]* %snr_yt327, i32 0, i64 1
  %262 = load float, float* %arrayidx328, align 4
  %263 = load i32, i32* @Bframe_ctr, align 4
  %sub329 = sub nsw i32 %263, 1
  %conv330 = sitofp i32 %sub329 to float
  %mul331 = fmul float %262, %conv330
  %264 = load %struct.SNRParameters*, %struct.SNRParameters** @snr, align 8
  %snr_y332 = getelementptr inbounds %struct.SNRParameters, %struct.SNRParameters* %264, i32 0, i32 0
  %265 = load float, float* %snr_y332, align 4
  %add333 = fadd float %mul331, %265
  %266 = load i32, i32* @Bframe_ctr, align 4
  %conv334 = sitofp i32 %266 to float
  %div335 = fdiv float %add333, %conv334
  %267 = load %struct.SNRParameters*, %struct.SNRParameters** @snr, align 8
  %snr_yt336 = getelementptr inbounds %struct.SNRParameters, %struct.SNRParameters* %267, i32 0, i32 6
  %arrayidx337 = getelementptr inbounds [3 x float], [3 x float]* %snr_yt336, i32 0, i64 1
  store float %div335, float* %arrayidx337, align 4
  %268 = load %struct.SNRParameters*, %struct.SNRParameters** @snr, align 8
  %snr_ut338 = getelementptr inbounds %struct.SNRParameters, %struct.SNRParameters* %268, i32 0, i32 7
  %arrayidx339 = getelementptr inbounds [3 x float], [3 x float]* %snr_ut338, i32 0, i64 1
  %269 = load float, float* %arrayidx339, align 4
  %270 = load i32, i32* @Bframe_ctr, align 4
  %sub340 = sub nsw i32 %270, 1
  %conv341 = sitofp i32 %sub340 to float
  %mul342 = fmul float %269, %conv341
  %271 = load %struct.SNRParameters*, %struct.SNRParameters** @snr, align 8
  %snr_u343 = getelementptr inbounds %struct.SNRParameters, %struct.SNRParameters* %271, i32 0, i32 1
  %272 = load float, float* %snr_u343, align 4
  %add344 = fadd float %mul342, %272
  %273 = load i32, i32* @Bframe_ctr, align 4
  %conv345 = sitofp i32 %273 to float
  %div346 = fdiv float %add344, %conv345
  %274 = load %struct.SNRParameters*, %struct.SNRParameters** @snr, align 8
  %snr_ut347 = getelementptr inbounds %struct.SNRParameters, %struct.SNRParameters* %274, i32 0, i32 7
  %arrayidx348 = getelementptr inbounds [3 x float], [3 x float]* %snr_ut347, i32 0, i64 1
  store float %div346, float* %arrayidx348, align 4
  %275 = load %struct.SNRParameters*, %struct.SNRParameters** @snr, align 8
  %snr_vt349 = getelementptr inbounds %struct.SNRParameters, %struct.SNRParameters* %275, i32 0, i32 8
  %arrayidx350 = getelementptr inbounds [3 x float], [3 x float]* %snr_vt349, i32 0, i64 1
  %276 = load float, float* %arrayidx350, align 4
  %277 = load i32, i32* @Bframe_ctr, align 4
  %sub351 = sub nsw i32 %277, 1
  %conv352 = sitofp i32 %sub351 to float
  %mul353 = fmul float %276, %conv352
  %278 = load %struct.SNRParameters*, %struct.SNRParameters** @snr, align 8
  %snr_v354 = getelementptr inbounds %struct.SNRParameters, %struct.SNRParameters* %278, i32 0, i32 2
  %279 = load float, float* %snr_v354, align 4
  %add355 = fadd float %mul353, %279
  %280 = load i32, i32* @Bframe_ctr, align 4
  %conv356 = sitofp i32 %280 to float
  %div357 = fdiv float %add355, %conv356
  %281 = load %struct.SNRParameters*, %struct.SNRParameters** @snr, align 8
  %snr_vt358 = getelementptr inbounds %struct.SNRParameters, %struct.SNRParameters* %281, i32 0, i32 8
  %arrayidx359 = getelementptr inbounds [3 x float], [3 x float]* %snr_vt358, i32 0, i64 1
  store float %div357, float* %arrayidx359, align 4
  br label %if.end.394

if.else.360:                                      ; preds = %if.else.322
  %282 = load %struct.SNRParameters*, %struct.SNRParameters** @snr, align 8
  %snr_yt361 = getelementptr inbounds %struct.SNRParameters, %struct.SNRParameters* %282, i32 0, i32 6
  %arrayidx362 = getelementptr inbounds [3 x float], [3 x float]* %snr_yt361, i32 0, i64 0
  %283 = load float, float* %arrayidx362, align 4
  %284 = load i32, i32* @Pframe_ctr, align 4
  %sub363 = sub nsw i32 %284, 1
  %conv364 = sitofp i32 %sub363 to float
  %mul365 = fmul float %283, %conv364
  %285 = load %struct.SNRParameters*, %struct.SNRParameters** @snr, align 8
  %snr_y366 = getelementptr inbounds %struct.SNRParameters, %struct.SNRParameters* %285, i32 0, i32 0
  %286 = load float, float* %snr_y366, align 4
  %add367 = fadd float %mul365, %286
  %287 = load i32, i32* @Pframe_ctr, align 4
  %conv368 = sitofp i32 %287 to float
  %div369 = fdiv float %add367, %conv368
  %288 = load %struct.SNRParameters*, %struct.SNRParameters** @snr, align 8
  %snr_yt370 = getelementptr inbounds %struct.SNRParameters, %struct.SNRParameters* %288, i32 0, i32 6
  %arrayidx371 = getelementptr inbounds [3 x float], [3 x float]* %snr_yt370, i32 0, i64 0
  store float %div369, float* %arrayidx371, align 4
  %289 = load %struct.SNRParameters*, %struct.SNRParameters** @snr, align 8
  %snr_ut372 = getelementptr inbounds %struct.SNRParameters, %struct.SNRParameters* %289, i32 0, i32 7
  %arrayidx373 = getelementptr inbounds [3 x float], [3 x float]* %snr_ut372, i32 0, i64 0
  %290 = load float, float* %arrayidx373, align 4
  %291 = load i32, i32* @Pframe_ctr, align 4
  %sub374 = sub nsw i32 %291, 1
  %conv375 = sitofp i32 %sub374 to float
  %mul376 = fmul float %290, %conv375
  %292 = load %struct.SNRParameters*, %struct.SNRParameters** @snr, align 8
  %snr_u377 = getelementptr inbounds %struct.SNRParameters, %struct.SNRParameters* %292, i32 0, i32 1
  %293 = load float, float* %snr_u377, align 4
  %add378 = fadd float %mul376, %293
  %294 = load i32, i32* @Pframe_ctr, align 4
  %conv379 = sitofp i32 %294 to float
  %div380 = fdiv float %add378, %conv379
  %295 = load %struct.SNRParameters*, %struct.SNRParameters** @snr, align 8
  %snr_ut381 = getelementptr inbounds %struct.SNRParameters, %struct.SNRParameters* %295, i32 0, i32 7
  %arrayidx382 = getelementptr inbounds [3 x float], [3 x float]* %snr_ut381, i32 0, i64 0
  store float %div380, float* %arrayidx382, align 4
  %296 = load %struct.SNRParameters*, %struct.SNRParameters** @snr, align 8
  %snr_vt383 = getelementptr inbounds %struct.SNRParameters, %struct.SNRParameters* %296, i32 0, i32 8
  %arrayidx384 = getelementptr inbounds [3 x float], [3 x float]* %snr_vt383, i32 0, i64 0
  %297 = load float, float* %arrayidx384, align 4
  %298 = load i32, i32* @Pframe_ctr, align 4
  %sub385 = sub nsw i32 %298, 1
  %conv386 = sitofp i32 %sub385 to float
  %mul387 = fmul float %297, %conv386
  %299 = load %struct.SNRParameters*, %struct.SNRParameters** @snr, align 8
  %snr_v388 = getelementptr inbounds %struct.SNRParameters, %struct.SNRParameters* %299, i32 0, i32 2
  %300 = load float, float* %snr_v388, align 4
  %add389 = fadd float %mul387, %300
  %301 = load i32, i32* @Pframe_ctr, align 4
  %conv390 = sitofp i32 %301 to float
  %div391 = fdiv float %add389, %conv390
  %302 = load %struct.SNRParameters*, %struct.SNRParameters** @snr, align 8
  %snr_vt392 = getelementptr inbounds %struct.SNRParameters, %struct.SNRParameters* %302, i32 0, i32 8
  %arrayidx393 = getelementptr inbounds [3 x float], [3 x float]* %snr_vt392, i32 0, i64 0
  store float %div391, float* %arrayidx393, align 4
  br label %if.end.394

if.end.394:                                       ; preds = %if.else.360, %if.then.326
  br label %if.end.395

if.end.395:                                       ; preds = %if.end.394, %if.then.288
  ret void
}

; Function Attrs: nounwind
declare double @log10(double) #2

; Function Attrs: nounwind uwtable
define internal void @find_distortion() #0 {
entry:
  %i = alloca i32, align 4
  %j = alloca i32, align 4
  %diff_y = alloca i64, align 8
  %diff_u = alloca i64, align 8
  %diff_v = alloca i64, align 8
  %impix = alloca i32, align 4
  %0 = load %struct.InputParameters*, %struct.InputParameters** @input, align 8
  %img_height = getelementptr inbounds %struct.InputParameters, %struct.InputParameters* %0, i32 0, i32 17
  %1 = load i32, i32* %img_height, align 4
  %2 = load %struct.InputParameters*, %struct.InputParameters** @input, align 8
  %img_width = getelementptr inbounds %struct.InputParameters, %struct.InputParameters* %2, i32 0, i32 16
  %3 = load i32, i32* %img_width, align 4
  %mul = mul nsw i32 %1, %3
  store i32 %mul, i32* %impix, align 4
  %4 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %structure = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %4, i32 0, i32 7
  %5 = load i32, i32* %structure, align 4
  %cmp = icmp ne i32 %5, 0
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  store i64 0, i64* %diff_y, align 8
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc.17, %if.then
  %6 = load i32, i32* %i, align 4
  %7 = load %struct.InputParameters*, %struct.InputParameters** @input, align 8
  %img_width1 = getelementptr inbounds %struct.InputParameters, %struct.InputParameters* %7, i32 0, i32 16
  %8 = load i32, i32* %img_width1, align 4
  %cmp2 = icmp slt i32 %6, %8
  br i1 %cmp2, label %for.body, label %for.end.19

for.body:                                         ; preds = %for.cond
  store i32 0, i32* %j, align 4
  br label %for.cond.3

for.cond.3:                                       ; preds = %for.inc, %for.body
  %9 = load i32, i32* %j, align 4
  %10 = load %struct.InputParameters*, %struct.InputParameters** @input, align 8
  %img_height4 = getelementptr inbounds %struct.InputParameters, %struct.InputParameters* %10, i32 0, i32 17
  %11 = load i32, i32* %img_height4, align 4
  %cmp5 = icmp slt i32 %9, %11
  br i1 %cmp5, label %for.body.6, label %for.end

for.body.6:                                       ; preds = %for.cond.3
  %12 = load i32, i32* %i, align 4
  %idxprom = sext i32 %12 to i64
  %13 = load i32, i32* %j, align 4
  %idxprom7 = sext i32 %13 to i64
  %14 = load i16**, i16*** @imgY_org, align 8
  %arrayidx = getelementptr inbounds i16*, i16** %14, i64 %idxprom7
  %15 = load i16*, i16** %arrayidx, align 8
  %arrayidx8 = getelementptr inbounds i16, i16* %15, i64 %idxprom
  %16 = load i16, i16* %arrayidx8, align 2
  %conv = zext i16 %16 to i32
  %17 = load i32, i32* %i, align 4
  %idxprom9 = sext i32 %17 to i64
  %18 = load i32, i32* %j, align 4
  %idxprom10 = sext i32 %18 to i64
  %19 = load i16**, i16*** @imgY_com, align 8
  %arrayidx11 = getelementptr inbounds i16*, i16** %19, i64 %idxprom10
  %20 = load i16*, i16** %arrayidx11, align 8
  %arrayidx12 = getelementptr inbounds i16, i16* %20, i64 %idxprom9
  %21 = load i16, i16* %arrayidx12, align 2
  %conv13 = zext i16 %21 to i32
  %sub = sub nsw i32 %conv, %conv13
  %call = call i32 @abs(i32 %sub) #7
  %idxprom14 = sext i32 %call to i64
  %22 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %quad = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %22, i32 0, i32 53
  %23 = load i32*, i32** %quad, align 8
  %arrayidx15 = getelementptr inbounds i32, i32* %23, i64 %idxprom14
  %24 = load i32, i32* %arrayidx15, align 4
  %conv16 = sext i32 %24 to i64
  %25 = load i64, i64* %diff_y, align 8
  %add = add nsw i64 %25, %conv16
  store i64 %add, i64* %diff_y, align 8
  br label %for.inc

for.inc:                                          ; preds = %for.body.6
  %26 = load i32, i32* %j, align 4
  %inc = add nsw i32 %26, 1
  store i32 %inc, i32* %j, align 4
  br label %for.cond.3

for.end:                                          ; preds = %for.cond.3
  br label %for.inc.17

for.inc.17:                                       ; preds = %for.end
  %27 = load i32, i32* %i, align 4
  %inc18 = add nsw i32 %27, 1
  store i32 %inc18, i32* %i, align 4
  br label %for.cond

for.end.19:                                       ; preds = %for.cond
  store i64 0, i64* %diff_u, align 8
  store i64 0, i64* %diff_v, align 8
  %28 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %yuv_format = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %28, i32 0, i32 159
  %29 = load i32, i32* %yuv_format, align 4
  %cmp20 = icmp ne i32 %29, 0
  br i1 %cmp20, label %if.then.22, label %if.end

if.then.22:                                       ; preds = %for.end.19
  store i32 0, i32* %i, align 4
  br label %for.cond.23

for.cond.23:                                      ; preds = %for.inc.72, %if.then.22
  %30 = load i32, i32* %i, align 4
  %31 = load %struct.InputParameters*, %struct.InputParameters** @input, align 8
  %img_width_cr = getelementptr inbounds %struct.InputParameters, %struct.InputParameters* %31, i32 0, i32 138
  %32 = load i32, i32* %img_width_cr, align 4
  %cmp24 = icmp slt i32 %30, %32
  br i1 %cmp24, label %for.body.26, label %for.end.74

for.body.26:                                      ; preds = %for.cond.23
  store i32 0, i32* %j, align 4
  br label %for.cond.27

for.cond.27:                                      ; preds = %for.inc.69, %for.body.26
  %33 = load i32, i32* %j, align 4
  %34 = load %struct.InputParameters*, %struct.InputParameters** @input, align 8
  %img_height_cr = getelementptr inbounds %struct.InputParameters, %struct.InputParameters* %34, i32 0, i32 137
  %35 = load i32, i32* %img_height_cr, align 4
  %cmp28 = icmp slt i32 %33, %35
  br i1 %cmp28, label %for.body.30, label %for.end.71

for.body.30:                                      ; preds = %for.cond.27
  %36 = load i32, i32* %i, align 4
  %idxprom31 = sext i32 %36 to i64
  %37 = load i32, i32* %j, align 4
  %idxprom32 = sext i32 %37 to i64
  %38 = load i16***, i16**** @imgUV_org, align 8
  %arrayidx33 = getelementptr inbounds i16**, i16*** %38, i64 0
  %39 = load i16**, i16*** %arrayidx33, align 8
  %arrayidx34 = getelementptr inbounds i16*, i16** %39, i64 %idxprom32
  %40 = load i16*, i16** %arrayidx34, align 8
  %arrayidx35 = getelementptr inbounds i16, i16* %40, i64 %idxprom31
  %41 = load i16, i16* %arrayidx35, align 2
  %conv36 = zext i16 %41 to i32
  %42 = load i32, i32* %i, align 4
  %idxprom37 = sext i32 %42 to i64
  %43 = load i32, i32* %j, align 4
  %idxprom38 = sext i32 %43 to i64
  %44 = load i16***, i16**** @imgUV_com, align 8
  %arrayidx39 = getelementptr inbounds i16**, i16*** %44, i64 0
  %45 = load i16**, i16*** %arrayidx39, align 8
  %arrayidx40 = getelementptr inbounds i16*, i16** %45, i64 %idxprom38
  %46 = load i16*, i16** %arrayidx40, align 8
  %arrayidx41 = getelementptr inbounds i16, i16* %46, i64 %idxprom37
  %47 = load i16, i16* %arrayidx41, align 2
  %conv42 = zext i16 %47 to i32
  %sub43 = sub nsw i32 %conv36, %conv42
  %call44 = call i32 @abs(i32 %sub43) #7
  %idxprom45 = sext i32 %call44 to i64
  %48 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %quad46 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %48, i32 0, i32 53
  %49 = load i32*, i32** %quad46, align 8
  %arrayidx47 = getelementptr inbounds i32, i32* %49, i64 %idxprom45
  %50 = load i32, i32* %arrayidx47, align 4
  %conv48 = sext i32 %50 to i64
  %51 = load i64, i64* %diff_u, align 8
  %add49 = add nsw i64 %51, %conv48
  store i64 %add49, i64* %diff_u, align 8
  %52 = load i32, i32* %i, align 4
  %idxprom50 = sext i32 %52 to i64
  %53 = load i32, i32* %j, align 4
  %idxprom51 = sext i32 %53 to i64
  %54 = load i16***, i16**** @imgUV_org, align 8
  %arrayidx52 = getelementptr inbounds i16**, i16*** %54, i64 1
  %55 = load i16**, i16*** %arrayidx52, align 8
  %arrayidx53 = getelementptr inbounds i16*, i16** %55, i64 %idxprom51
  %56 = load i16*, i16** %arrayidx53, align 8
  %arrayidx54 = getelementptr inbounds i16, i16* %56, i64 %idxprom50
  %57 = load i16, i16* %arrayidx54, align 2
  %conv55 = zext i16 %57 to i32
  %58 = load i32, i32* %i, align 4
  %idxprom56 = sext i32 %58 to i64
  %59 = load i32, i32* %j, align 4
  %idxprom57 = sext i32 %59 to i64
  %60 = load i16***, i16**** @imgUV_com, align 8
  %arrayidx58 = getelementptr inbounds i16**, i16*** %60, i64 1
  %61 = load i16**, i16*** %arrayidx58, align 8
  %arrayidx59 = getelementptr inbounds i16*, i16** %61, i64 %idxprom57
  %62 = load i16*, i16** %arrayidx59, align 8
  %arrayidx60 = getelementptr inbounds i16, i16* %62, i64 %idxprom56
  %63 = load i16, i16* %arrayidx60, align 2
  %conv61 = zext i16 %63 to i32
  %sub62 = sub nsw i32 %conv55, %conv61
  %call63 = call i32 @abs(i32 %sub62) #7
  %idxprom64 = sext i32 %call63 to i64
  %64 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %quad65 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %64, i32 0, i32 53
  %65 = load i32*, i32** %quad65, align 8
  %arrayidx66 = getelementptr inbounds i32, i32* %65, i64 %idxprom64
  %66 = load i32, i32* %arrayidx66, align 4
  %conv67 = sext i32 %66 to i64
  %67 = load i64, i64* %diff_v, align 8
  %add68 = add nsw i64 %67, %conv67
  store i64 %add68, i64* %diff_v, align 8
  br label %for.inc.69

for.inc.69:                                       ; preds = %for.body.30
  %68 = load i32, i32* %j, align 4
  %inc70 = add nsw i32 %68, 1
  store i32 %inc70, i32* %j, align 4
  br label %for.cond.27

for.end.71:                                       ; preds = %for.cond.27
  br label %for.inc.72

for.inc.72:                                       ; preds = %for.end.71
  %69 = load i32, i32* %i, align 4
  %inc73 = add nsw i32 %69, 1
  store i32 %inc73, i32* %i, align 4
  br label %for.cond.23

for.end.74:                                       ; preds = %for.cond.23
  br label %if.end

if.end:                                           ; preds = %for.end.74, %for.end.19
  br label %if.end.168

if.else:                                          ; preds = %entry
  %70 = load i16**, i16*** @imgY_org_frm, align 8
  store i16** %70, i16*** @imgY_org, align 8
  %71 = load i16***, i16**** @imgUV_org_frm, align 8
  store i16*** %71, i16**** @imgUV_org, align 8
  store i64 0, i64* %diff_y, align 8
  store i32 0, i32* %i, align 4
  br label %for.cond.75

for.cond.75:                                      ; preds = %for.inc.105, %if.else
  %72 = load i32, i32* %i, align 4
  %73 = load %struct.InputParameters*, %struct.InputParameters** @input, align 8
  %img_width76 = getelementptr inbounds %struct.InputParameters, %struct.InputParameters* %73, i32 0, i32 16
  %74 = load i32, i32* %img_width76, align 4
  %cmp77 = icmp slt i32 %72, %74
  br i1 %cmp77, label %for.body.79, label %for.end.107

for.body.79:                                      ; preds = %for.cond.75
  store i32 0, i32* %j, align 4
  br label %for.cond.80

for.cond.80:                                      ; preds = %for.inc.102, %for.body.79
  %75 = load i32, i32* %j, align 4
  %76 = load %struct.InputParameters*, %struct.InputParameters** @input, align 8
  %img_height81 = getelementptr inbounds %struct.InputParameters, %struct.InputParameters* %76, i32 0, i32 17
  %77 = load i32, i32* %img_height81, align 4
  %cmp82 = icmp slt i32 %75, %77
  br i1 %cmp82, label %for.body.84, label %for.end.104

for.body.84:                                      ; preds = %for.cond.80
  %78 = load i32, i32* %i, align 4
  %idxprom85 = sext i32 %78 to i64
  %79 = load i32, i32* %j, align 4
  %idxprom86 = sext i32 %79 to i64
  %80 = load i16**, i16*** @imgY_org, align 8
  %arrayidx87 = getelementptr inbounds i16*, i16** %80, i64 %idxprom86
  %81 = load i16*, i16** %arrayidx87, align 8
  %arrayidx88 = getelementptr inbounds i16, i16* %81, i64 %idxprom85
  %82 = load i16, i16* %arrayidx88, align 2
  %conv89 = zext i16 %82 to i32
  %83 = load i32, i32* %i, align 4
  %idxprom90 = sext i32 %83 to i64
  %84 = load i32, i32* %j, align 4
  %idxprom91 = sext i32 %84 to i64
  %85 = load %struct.storable_picture*, %struct.storable_picture** @enc_picture, align 8
  %imgY = getelementptr inbounds %struct.storable_picture, %struct.storable_picture* %85, i32 0, i32 25
  %86 = load i16**, i16*** %imgY, align 8
  %arrayidx92 = getelementptr inbounds i16*, i16** %86, i64 %idxprom91
  %87 = load i16*, i16** %arrayidx92, align 8
  %arrayidx93 = getelementptr inbounds i16, i16* %87, i64 %idxprom90
  %88 = load i16, i16* %arrayidx93, align 2
  %conv94 = zext i16 %88 to i32
  %sub95 = sub nsw i32 %conv89, %conv94
  %call96 = call i32 @abs(i32 %sub95) #7
  %idxprom97 = sext i32 %call96 to i64
  %89 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %quad98 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %89, i32 0, i32 53
  %90 = load i32*, i32** %quad98, align 8
  %arrayidx99 = getelementptr inbounds i32, i32* %90, i64 %idxprom97
  %91 = load i32, i32* %arrayidx99, align 4
  %conv100 = sext i32 %91 to i64
  %92 = load i64, i64* %diff_y, align 8
  %add101 = add nsw i64 %92, %conv100
  store i64 %add101, i64* %diff_y, align 8
  br label %for.inc.102

for.inc.102:                                      ; preds = %for.body.84
  %93 = load i32, i32* %j, align 4
  %inc103 = add nsw i32 %93, 1
  store i32 %inc103, i32* %j, align 4
  br label %for.cond.80

for.end.104:                                      ; preds = %for.cond.80
  br label %for.inc.105

for.inc.105:                                      ; preds = %for.end.104
  %94 = load i32, i32* %i, align 4
  %inc106 = add nsw i32 %94, 1
  store i32 %inc106, i32* %i, align 4
  br label %for.cond.75

for.end.107:                                      ; preds = %for.cond.75
  store i64 0, i64* %diff_u, align 8
  store i64 0, i64* %diff_v, align 8
  %95 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %yuv_format108 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %95, i32 0, i32 159
  %96 = load i32, i32* %yuv_format108, align 4
  %cmp109 = icmp ne i32 %96, 0
  br i1 %cmp109, label %if.then.111, label %if.end.167

if.then.111:                                      ; preds = %for.end.107
  store i32 0, i32* %i, align 4
  br label %for.cond.112

for.cond.112:                                     ; preds = %for.inc.164, %if.then.111
  %97 = load i32, i32* %i, align 4
  %98 = load %struct.InputParameters*, %struct.InputParameters** @input, align 8
  %img_width_cr113 = getelementptr inbounds %struct.InputParameters, %struct.InputParameters* %98, i32 0, i32 138
  %99 = load i32, i32* %img_width_cr113, align 4
  %cmp114 = icmp slt i32 %97, %99
  br i1 %cmp114, label %for.body.116, label %for.end.166

for.body.116:                                     ; preds = %for.cond.112
  store i32 0, i32* %j, align 4
  br label %for.cond.117

for.cond.117:                                     ; preds = %for.inc.161, %for.body.116
  %100 = load i32, i32* %j, align 4
  %101 = load %struct.InputParameters*, %struct.InputParameters** @input, align 8
  %img_height_cr118 = getelementptr inbounds %struct.InputParameters, %struct.InputParameters* %101, i32 0, i32 137
  %102 = load i32, i32* %img_height_cr118, align 4
  %cmp119 = icmp slt i32 %100, %102
  br i1 %cmp119, label %for.body.121, label %for.end.163

for.body.121:                                     ; preds = %for.cond.117
  %103 = load i32, i32* %i, align 4
  %idxprom122 = sext i32 %103 to i64
  %104 = load i32, i32* %j, align 4
  %idxprom123 = sext i32 %104 to i64
  %105 = load i16***, i16**** @imgUV_org, align 8
  %arrayidx124 = getelementptr inbounds i16**, i16*** %105, i64 0
  %106 = load i16**, i16*** %arrayidx124, align 8
  %arrayidx125 = getelementptr inbounds i16*, i16** %106, i64 %idxprom123
  %107 = load i16*, i16** %arrayidx125, align 8
  %arrayidx126 = getelementptr inbounds i16, i16* %107, i64 %idxprom122
  %108 = load i16, i16* %arrayidx126, align 2
  %conv127 = zext i16 %108 to i32
  %109 = load i32, i32* %i, align 4
  %idxprom128 = sext i32 %109 to i64
  %110 = load i32, i32* %j, align 4
  %idxprom129 = sext i32 %110 to i64
  %111 = load %struct.storable_picture*, %struct.storable_picture** @enc_picture, align 8
  %imgUV = getelementptr inbounds %struct.storable_picture, %struct.storable_picture* %111, i32 0, i32 30
  %112 = load i16***, i16**** %imgUV, align 8
  %arrayidx130 = getelementptr inbounds i16**, i16*** %112, i64 0
  %113 = load i16**, i16*** %arrayidx130, align 8
  %arrayidx131 = getelementptr inbounds i16*, i16** %113, i64 %idxprom129
  %114 = load i16*, i16** %arrayidx131, align 8
  %arrayidx132 = getelementptr inbounds i16, i16* %114, i64 %idxprom128
  %115 = load i16, i16* %arrayidx132, align 2
  %conv133 = zext i16 %115 to i32
  %sub134 = sub nsw i32 %conv127, %conv133
  %call135 = call i32 @abs(i32 %sub134) #7
  %idxprom136 = sext i32 %call135 to i64
  %116 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %quad137 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %116, i32 0, i32 53
  %117 = load i32*, i32** %quad137, align 8
  %arrayidx138 = getelementptr inbounds i32, i32* %117, i64 %idxprom136
  %118 = load i32, i32* %arrayidx138, align 4
  %conv139 = sext i32 %118 to i64
  %119 = load i64, i64* %diff_u, align 8
  %add140 = add nsw i64 %119, %conv139
  store i64 %add140, i64* %diff_u, align 8
  %120 = load i32, i32* %i, align 4
  %idxprom141 = sext i32 %120 to i64
  %121 = load i32, i32* %j, align 4
  %idxprom142 = sext i32 %121 to i64
  %122 = load i16***, i16**** @imgUV_org, align 8
  %arrayidx143 = getelementptr inbounds i16**, i16*** %122, i64 1
  %123 = load i16**, i16*** %arrayidx143, align 8
  %arrayidx144 = getelementptr inbounds i16*, i16** %123, i64 %idxprom142
  %124 = load i16*, i16** %arrayidx144, align 8
  %arrayidx145 = getelementptr inbounds i16, i16* %124, i64 %idxprom141
  %125 = load i16, i16* %arrayidx145, align 2
  %conv146 = zext i16 %125 to i32
  %126 = load i32, i32* %i, align 4
  %idxprom147 = sext i32 %126 to i64
  %127 = load i32, i32* %j, align 4
  %idxprom148 = sext i32 %127 to i64
  %128 = load %struct.storable_picture*, %struct.storable_picture** @enc_picture, align 8
  %imgUV149 = getelementptr inbounds %struct.storable_picture, %struct.storable_picture* %128, i32 0, i32 30
  %129 = load i16***, i16**** %imgUV149, align 8
  %arrayidx150 = getelementptr inbounds i16**, i16*** %129, i64 1
  %130 = load i16**, i16*** %arrayidx150, align 8
  %arrayidx151 = getelementptr inbounds i16*, i16** %130, i64 %idxprom148
  %131 = load i16*, i16** %arrayidx151, align 8
  %arrayidx152 = getelementptr inbounds i16, i16* %131, i64 %idxprom147
  %132 = load i16, i16* %arrayidx152, align 2
  %conv153 = zext i16 %132 to i32
  %sub154 = sub nsw i32 %conv146, %conv153
  %call155 = call i32 @abs(i32 %sub154) #7
  %idxprom156 = sext i32 %call155 to i64
  %133 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %quad157 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %133, i32 0, i32 53
  %134 = load i32*, i32** %quad157, align 8
  %arrayidx158 = getelementptr inbounds i32, i32* %134, i64 %idxprom156
  %135 = load i32, i32* %arrayidx158, align 4
  %conv159 = sext i32 %135 to i64
  %136 = load i64, i64* %diff_v, align 8
  %add160 = add nsw i64 %136, %conv159
  store i64 %add160, i64* %diff_v, align 8
  br label %for.inc.161

for.inc.161:                                      ; preds = %for.body.121
  %137 = load i32, i32* %j, align 4
  %inc162 = add nsw i32 %137, 1
  store i32 %inc162, i32* %j, align 4
  br label %for.cond.117

for.end.163:                                      ; preds = %for.cond.117
  br label %for.inc.164

for.inc.164:                                      ; preds = %for.end.163
  %138 = load i32, i32* %i, align 4
  %inc165 = add nsw i32 %138, 1
  store i32 %inc165, i32* %i, align 4
  br label %for.cond.112

for.end.166:                                      ; preds = %for.cond.112
  br label %if.end.167

if.end.167:                                       ; preds = %for.end.166, %for.end.107
  br label %if.end.168

if.end.168:                                       ; preds = %if.end.167, %if.end
  %139 = load i64, i64* %diff_y, align 8
  %conv169 = sitofp i64 %139 to float
  %140 = load %struct.SNRParameters*, %struct.SNRParameters** @snr, align 8
  %snr_y = getelementptr inbounds %struct.SNRParameters, %struct.SNRParameters* %140, i32 0, i32 0
  store float %conv169, float* %snr_y, align 4
  %141 = load i64, i64* %diff_u, align 8
  %conv170 = sitofp i64 %141 to float
  %142 = load %struct.SNRParameters*, %struct.SNRParameters** @snr, align 8
  %snr_u = getelementptr inbounds %struct.SNRParameters, %struct.SNRParameters* %142, i32 0, i32 1
  store float %conv170, float* %snr_u, align 4
  %143 = load i64, i64* %diff_v, align 8
  %conv171 = sitofp i64 %143 to float
  %144 = load %struct.SNRParameters*, %struct.SNRParameters** @snr, align 8
  %snr_v = getelementptr inbounds %struct.SNRParameters, %struct.SNRParameters* %144, i32 0, i32 2
  store float %conv171, float* %snr_v, align 4
  ret void
}

; Function Attrs: nounwind readnone
declare i32 @abs(i32) #4

; Function Attrs: nounwind uwtable
define internal void @copy_motion_vectors_MB() #0 {
entry:
  %i = alloca i32, align 4
  %j = alloca i32, align 4
  %k = alloca i32, align 4
  %l = alloca i32, align 4
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc.365, %entry
  %0 = load i32, i32* %i, align 4
  %cmp = icmp slt i32 %0, 4
  br i1 %cmp, label %for.body, label %for.end.367

for.body:                                         ; preds = %for.cond
  store i32 0, i32* %j, align 4
  br label %for.cond.1

for.cond.1:                                       ; preds = %for.inc.362, %for.body
  %1 = load i32, i32* %j, align 4
  %cmp2 = icmp slt i32 %1, 4
  br i1 %cmp2, label %for.body.3, label %for.end.364

for.body.3:                                       ; preds = %for.cond.1
  store i32 0, i32* %k, align 4
  br label %for.cond.4

for.cond.4:                                       ; preds = %for.inc.359, %for.body.3
  %2 = load i32, i32* %k, align 4
  %3 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %max_num_references = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %3, i32 0, i32 9
  %4 = load i32, i32* %max_num_references, align 4
  %cmp5 = icmp slt i32 %2, %4
  br i1 %cmp5, label %for.body.6, label %for.end.361

for.body.6:                                       ; preds = %for.cond.4
  store i32 0, i32* %l, align 4
  br label %for.cond.7

for.cond.7:                                       ; preds = %for.inc, %for.body.6
  %5 = load i32, i32* %l, align 4
  %cmp8 = icmp slt i32 %5, 9
  br i1 %cmp8, label %for.body.9, label %for.end

for.body.9:                                       ; preds = %for.cond.7
  %6 = load i32, i32* %l, align 4
  %idxprom = sext i32 %6 to i64
  %7 = load i32, i32* %k, align 4
  %idxprom10 = sext i32 %7 to i64
  %8 = load i32, i32* %j, align 4
  %idxprom11 = sext i32 %8 to i64
  %9 = load i32, i32* %i, align 4
  %idxprom12 = sext i32 %9 to i64
  %10 = load %struct.RD_DATA*, %struct.RD_DATA** @rdopt, align 8
  %all_mv = getelementptr inbounds %struct.RD_DATA, %struct.RD_DATA* %10, i32 0, i32 16
  %11 = load i16******, i16******* %all_mv, align 8
  %arrayidx = getelementptr inbounds i16*****, i16****** %11, i64 %idxprom12
  %12 = load i16*****, i16****** %arrayidx, align 8
  %arrayidx13 = getelementptr inbounds i16****, i16***** %12, i64 %idxprom11
  %13 = load i16****, i16***** %arrayidx13, align 8
  %arrayidx14 = getelementptr inbounds i16***, i16**** %13, i64 0
  %14 = load i16***, i16**** %arrayidx14, align 8
  %arrayidx15 = getelementptr inbounds i16**, i16*** %14, i64 %idxprom10
  %15 = load i16**, i16*** %arrayidx15, align 8
  %arrayidx16 = getelementptr inbounds i16*, i16** %15, i64 %idxprom
  %16 = load i16*, i16** %arrayidx16, align 8
  %arrayidx17 = getelementptr inbounds i16, i16* %16, i64 0
  %17 = load i16, i16* %arrayidx17, align 2
  %18 = load i32, i32* %l, align 4
  %idxprom18 = sext i32 %18 to i64
  %19 = load i32, i32* %k, align 4
  %idxprom19 = sext i32 %19 to i64
  %20 = load i32, i32* %j, align 4
  %idxprom20 = sext i32 %20 to i64
  %21 = load i32, i32* %i, align 4
  %idxprom21 = sext i32 %21 to i64
  %22 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %all_mv22 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %22, i32 0, i32 71
  %23 = load i16******, i16******* %all_mv22, align 8
  %arrayidx23 = getelementptr inbounds i16*****, i16****** %23, i64 %idxprom21
  %24 = load i16*****, i16****** %arrayidx23, align 8
  %arrayidx24 = getelementptr inbounds i16****, i16***** %24, i64 %idxprom20
  %25 = load i16****, i16***** %arrayidx24, align 8
  %arrayidx25 = getelementptr inbounds i16***, i16**** %25, i64 0
  %26 = load i16***, i16**** %arrayidx25, align 8
  %arrayidx26 = getelementptr inbounds i16**, i16*** %26, i64 %idxprom19
  %27 = load i16**, i16*** %arrayidx26, align 8
  %arrayidx27 = getelementptr inbounds i16*, i16** %27, i64 %idxprom18
  %28 = load i16*, i16** %arrayidx27, align 8
  %arrayidx28 = getelementptr inbounds i16, i16* %28, i64 0
  store i16 %17, i16* %arrayidx28, align 2
  %29 = load i32, i32* %l, align 4
  %idxprom29 = sext i32 %29 to i64
  %30 = load i32, i32* %k, align 4
  %idxprom30 = sext i32 %30 to i64
  %31 = load i32, i32* %j, align 4
  %idxprom31 = sext i32 %31 to i64
  %32 = load i32, i32* %i, align 4
  %idxprom32 = sext i32 %32 to i64
  %33 = load %struct.RD_DATA*, %struct.RD_DATA** @rdopt, align 8
  %all_mv33 = getelementptr inbounds %struct.RD_DATA, %struct.RD_DATA* %33, i32 0, i32 16
  %34 = load i16******, i16******* %all_mv33, align 8
  %arrayidx34 = getelementptr inbounds i16*****, i16****** %34, i64 %idxprom32
  %35 = load i16*****, i16****** %arrayidx34, align 8
  %arrayidx35 = getelementptr inbounds i16****, i16***** %35, i64 %idxprom31
  %36 = load i16****, i16***** %arrayidx35, align 8
  %arrayidx36 = getelementptr inbounds i16***, i16**** %36, i64 0
  %37 = load i16***, i16**** %arrayidx36, align 8
  %arrayidx37 = getelementptr inbounds i16**, i16*** %37, i64 %idxprom30
  %38 = load i16**, i16*** %arrayidx37, align 8
  %arrayidx38 = getelementptr inbounds i16*, i16** %38, i64 %idxprom29
  %39 = load i16*, i16** %arrayidx38, align 8
  %arrayidx39 = getelementptr inbounds i16, i16* %39, i64 1
  %40 = load i16, i16* %arrayidx39, align 2
  %41 = load i32, i32* %l, align 4
  %idxprom40 = sext i32 %41 to i64
  %42 = load i32, i32* %k, align 4
  %idxprom41 = sext i32 %42 to i64
  %43 = load i32, i32* %j, align 4
  %idxprom42 = sext i32 %43 to i64
  %44 = load i32, i32* %i, align 4
  %idxprom43 = sext i32 %44 to i64
  %45 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %all_mv44 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %45, i32 0, i32 71
  %46 = load i16******, i16******* %all_mv44, align 8
  %arrayidx45 = getelementptr inbounds i16*****, i16****** %46, i64 %idxprom43
  %47 = load i16*****, i16****** %arrayidx45, align 8
  %arrayidx46 = getelementptr inbounds i16****, i16***** %47, i64 %idxprom42
  %48 = load i16****, i16***** %arrayidx46, align 8
  %arrayidx47 = getelementptr inbounds i16***, i16**** %48, i64 0
  %49 = load i16***, i16**** %arrayidx47, align 8
  %arrayidx48 = getelementptr inbounds i16**, i16*** %49, i64 %idxprom41
  %50 = load i16**, i16*** %arrayidx48, align 8
  %arrayidx49 = getelementptr inbounds i16*, i16** %50, i64 %idxprom40
  %51 = load i16*, i16** %arrayidx49, align 8
  %arrayidx50 = getelementptr inbounds i16, i16* %51, i64 1
  store i16 %40, i16* %arrayidx50, align 2
  %52 = load i32, i32* %l, align 4
  %idxprom51 = sext i32 %52 to i64
  %53 = load i32, i32* %k, align 4
  %idxprom52 = sext i32 %53 to i64
  %54 = load i32, i32* %j, align 4
  %idxprom53 = sext i32 %54 to i64
  %55 = load i32, i32* %i, align 4
  %idxprom54 = sext i32 %55 to i64
  %56 = load %struct.RD_DATA*, %struct.RD_DATA** @rdopt, align 8
  %all_mv55 = getelementptr inbounds %struct.RD_DATA, %struct.RD_DATA* %56, i32 0, i32 16
  %57 = load i16******, i16******* %all_mv55, align 8
  %arrayidx56 = getelementptr inbounds i16*****, i16****** %57, i64 %idxprom54
  %58 = load i16*****, i16****** %arrayidx56, align 8
  %arrayidx57 = getelementptr inbounds i16****, i16***** %58, i64 %idxprom53
  %59 = load i16****, i16***** %arrayidx57, align 8
  %arrayidx58 = getelementptr inbounds i16***, i16**** %59, i64 1
  %60 = load i16***, i16**** %arrayidx58, align 8
  %arrayidx59 = getelementptr inbounds i16**, i16*** %60, i64 %idxprom52
  %61 = load i16**, i16*** %arrayidx59, align 8
  %arrayidx60 = getelementptr inbounds i16*, i16** %61, i64 %idxprom51
  %62 = load i16*, i16** %arrayidx60, align 8
  %arrayidx61 = getelementptr inbounds i16, i16* %62, i64 0
  %63 = load i16, i16* %arrayidx61, align 2
  %64 = load i32, i32* %l, align 4
  %idxprom62 = sext i32 %64 to i64
  %65 = load i32, i32* %k, align 4
  %idxprom63 = sext i32 %65 to i64
  %66 = load i32, i32* %j, align 4
  %idxprom64 = sext i32 %66 to i64
  %67 = load i32, i32* %i, align 4
  %idxprom65 = sext i32 %67 to i64
  %68 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %all_mv66 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %68, i32 0, i32 71
  %69 = load i16******, i16******* %all_mv66, align 8
  %arrayidx67 = getelementptr inbounds i16*****, i16****** %69, i64 %idxprom65
  %70 = load i16*****, i16****** %arrayidx67, align 8
  %arrayidx68 = getelementptr inbounds i16****, i16***** %70, i64 %idxprom64
  %71 = load i16****, i16***** %arrayidx68, align 8
  %arrayidx69 = getelementptr inbounds i16***, i16**** %71, i64 1
  %72 = load i16***, i16**** %arrayidx69, align 8
  %arrayidx70 = getelementptr inbounds i16**, i16*** %72, i64 %idxprom63
  %73 = load i16**, i16*** %arrayidx70, align 8
  %arrayidx71 = getelementptr inbounds i16*, i16** %73, i64 %idxprom62
  %74 = load i16*, i16** %arrayidx71, align 8
  %arrayidx72 = getelementptr inbounds i16, i16* %74, i64 0
  store i16 %63, i16* %arrayidx72, align 2
  %75 = load i32, i32* %l, align 4
  %idxprom73 = sext i32 %75 to i64
  %76 = load i32, i32* %k, align 4
  %idxprom74 = sext i32 %76 to i64
  %77 = load i32, i32* %j, align 4
  %idxprom75 = sext i32 %77 to i64
  %78 = load i32, i32* %i, align 4
  %idxprom76 = sext i32 %78 to i64
  %79 = load %struct.RD_DATA*, %struct.RD_DATA** @rdopt, align 8
  %all_mv77 = getelementptr inbounds %struct.RD_DATA, %struct.RD_DATA* %79, i32 0, i32 16
  %80 = load i16******, i16******* %all_mv77, align 8
  %arrayidx78 = getelementptr inbounds i16*****, i16****** %80, i64 %idxprom76
  %81 = load i16*****, i16****** %arrayidx78, align 8
  %arrayidx79 = getelementptr inbounds i16****, i16***** %81, i64 %idxprom75
  %82 = load i16****, i16***** %arrayidx79, align 8
  %arrayidx80 = getelementptr inbounds i16***, i16**** %82, i64 1
  %83 = load i16***, i16**** %arrayidx80, align 8
  %arrayidx81 = getelementptr inbounds i16**, i16*** %83, i64 %idxprom74
  %84 = load i16**, i16*** %arrayidx81, align 8
  %arrayidx82 = getelementptr inbounds i16*, i16** %84, i64 %idxprom73
  %85 = load i16*, i16** %arrayidx82, align 8
  %arrayidx83 = getelementptr inbounds i16, i16* %85, i64 1
  %86 = load i16, i16* %arrayidx83, align 2
  %87 = load i32, i32* %l, align 4
  %idxprom84 = sext i32 %87 to i64
  %88 = load i32, i32* %k, align 4
  %idxprom85 = sext i32 %88 to i64
  %89 = load i32, i32* %j, align 4
  %idxprom86 = sext i32 %89 to i64
  %90 = load i32, i32* %i, align 4
  %idxprom87 = sext i32 %90 to i64
  %91 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %all_mv88 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %91, i32 0, i32 71
  %92 = load i16******, i16******* %all_mv88, align 8
  %arrayidx89 = getelementptr inbounds i16*****, i16****** %92, i64 %idxprom87
  %93 = load i16*****, i16****** %arrayidx89, align 8
  %arrayidx90 = getelementptr inbounds i16****, i16***** %93, i64 %idxprom86
  %94 = load i16****, i16***** %arrayidx90, align 8
  %arrayidx91 = getelementptr inbounds i16***, i16**** %94, i64 1
  %95 = load i16***, i16**** %arrayidx91, align 8
  %arrayidx92 = getelementptr inbounds i16**, i16*** %95, i64 %idxprom85
  %96 = load i16**, i16*** %arrayidx92, align 8
  %arrayidx93 = getelementptr inbounds i16*, i16** %96, i64 %idxprom84
  %97 = load i16*, i16** %arrayidx93, align 8
  %arrayidx94 = getelementptr inbounds i16, i16* %97, i64 1
  store i16 %86, i16* %arrayidx94, align 2
  %98 = load %struct.InputParameters*, %struct.InputParameters** @input, align 8
  %BiPredMotionEstimation = getelementptr inbounds %struct.InputParameters, %struct.InputParameters* %98, i32 0, i32 39
  %99 = load i32, i32* %BiPredMotionEstimation, align 4
  %tobool = icmp ne i32 %99, 0
  br i1 %tobool, label %land.lhs.true, label %if.end

land.lhs.true:                                    ; preds = %for.body.9
  %100 = load i32, i32* %k, align 4
  %cmp95 = icmp eq i32 %100, 1
  br i1 %cmp95, label %land.lhs.true.96, label %if.end

land.lhs.true.96:                                 ; preds = %land.lhs.true
  %101 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %type = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %101, i32 0, i32 6
  %102 = load i32, i32* %type, align 4
  %cmp97 = icmp eq i32 %102, 1
  br i1 %cmp97, label %if.then, label %if.end

if.then:                                          ; preds = %land.lhs.true.96
  %103 = load i32, i32* %l, align 4
  %idxprom98 = sext i32 %103 to i64
  %104 = load i32, i32* %k, align 4
  %idxprom99 = sext i32 %104 to i64
  %105 = load i32, i32* %j, align 4
  %idxprom100 = sext i32 %105 to i64
  %106 = load i32, i32* %i, align 4
  %idxprom101 = sext i32 %106 to i64
  %107 = load %struct.RD_DATA*, %struct.RD_DATA** @rdopt, align 8
  %bipred_mv1 = getelementptr inbounds %struct.RD_DATA, %struct.RD_DATA* %107, i32 0, i32 17
  %108 = load i16******, i16******* %bipred_mv1, align 8
  %arrayidx102 = getelementptr inbounds i16*****, i16****** %108, i64 %idxprom101
  %109 = load i16*****, i16****** %arrayidx102, align 8
  %arrayidx103 = getelementptr inbounds i16****, i16***** %109, i64 %idxprom100
  %110 = load i16****, i16***** %arrayidx103, align 8
  %arrayidx104 = getelementptr inbounds i16***, i16**** %110, i64 0
  %111 = load i16***, i16**** %arrayidx104, align 8
  %arrayidx105 = getelementptr inbounds i16**, i16*** %111, i64 %idxprom99
  %112 = load i16**, i16*** %arrayidx105, align 8
  %arrayidx106 = getelementptr inbounds i16*, i16** %112, i64 %idxprom98
  %113 = load i16*, i16** %arrayidx106, align 8
  %arrayidx107 = getelementptr inbounds i16, i16* %113, i64 0
  %114 = load i16, i16* %arrayidx107, align 2
  %115 = load i32, i32* %l, align 4
  %idxprom108 = sext i32 %115 to i64
  %116 = load i32, i32* %k, align 4
  %idxprom109 = sext i32 %116 to i64
  %117 = load i32, i32* %j, align 4
  %idxprom110 = sext i32 %117 to i64
  %118 = load i32, i32* %i, align 4
  %idxprom111 = sext i32 %118 to i64
  %119 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %bipred_mv1112 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %119, i32 0, i32 72
  %120 = load i16******, i16******* %bipred_mv1112, align 8
  %arrayidx113 = getelementptr inbounds i16*****, i16****** %120, i64 %idxprom111
  %121 = load i16*****, i16****** %arrayidx113, align 8
  %arrayidx114 = getelementptr inbounds i16****, i16***** %121, i64 %idxprom110
  %122 = load i16****, i16***** %arrayidx114, align 8
  %arrayidx115 = getelementptr inbounds i16***, i16**** %122, i64 0
  %123 = load i16***, i16**** %arrayidx115, align 8
  %arrayidx116 = getelementptr inbounds i16**, i16*** %123, i64 %idxprom109
  %124 = load i16**, i16*** %arrayidx116, align 8
  %arrayidx117 = getelementptr inbounds i16*, i16** %124, i64 %idxprom108
  %125 = load i16*, i16** %arrayidx117, align 8
  %arrayidx118 = getelementptr inbounds i16, i16* %125, i64 0
  store i16 %114, i16* %arrayidx118, align 2
  %126 = load i32, i32* %l, align 4
  %idxprom119 = sext i32 %126 to i64
  %127 = load i32, i32* %k, align 4
  %idxprom120 = sext i32 %127 to i64
  %128 = load i32, i32* %j, align 4
  %idxprom121 = sext i32 %128 to i64
  %129 = load i32, i32* %i, align 4
  %idxprom122 = sext i32 %129 to i64
  %130 = load %struct.RD_DATA*, %struct.RD_DATA** @rdopt, align 8
  %bipred_mv1123 = getelementptr inbounds %struct.RD_DATA, %struct.RD_DATA* %130, i32 0, i32 17
  %131 = load i16******, i16******* %bipred_mv1123, align 8
  %arrayidx124 = getelementptr inbounds i16*****, i16****** %131, i64 %idxprom122
  %132 = load i16*****, i16****** %arrayidx124, align 8
  %arrayidx125 = getelementptr inbounds i16****, i16***** %132, i64 %idxprom121
  %133 = load i16****, i16***** %arrayidx125, align 8
  %arrayidx126 = getelementptr inbounds i16***, i16**** %133, i64 0
  %134 = load i16***, i16**** %arrayidx126, align 8
  %arrayidx127 = getelementptr inbounds i16**, i16*** %134, i64 %idxprom120
  %135 = load i16**, i16*** %arrayidx127, align 8
  %arrayidx128 = getelementptr inbounds i16*, i16** %135, i64 %idxprom119
  %136 = load i16*, i16** %arrayidx128, align 8
  %arrayidx129 = getelementptr inbounds i16, i16* %136, i64 1
  %137 = load i16, i16* %arrayidx129, align 2
  %138 = load i32, i32* %l, align 4
  %idxprom130 = sext i32 %138 to i64
  %139 = load i32, i32* %k, align 4
  %idxprom131 = sext i32 %139 to i64
  %140 = load i32, i32* %j, align 4
  %idxprom132 = sext i32 %140 to i64
  %141 = load i32, i32* %i, align 4
  %idxprom133 = sext i32 %141 to i64
  %142 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %bipred_mv1134 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %142, i32 0, i32 72
  %143 = load i16******, i16******* %bipred_mv1134, align 8
  %arrayidx135 = getelementptr inbounds i16*****, i16****** %143, i64 %idxprom133
  %144 = load i16*****, i16****** %arrayidx135, align 8
  %arrayidx136 = getelementptr inbounds i16****, i16***** %144, i64 %idxprom132
  %145 = load i16****, i16***** %arrayidx136, align 8
  %arrayidx137 = getelementptr inbounds i16***, i16**** %145, i64 0
  %146 = load i16***, i16**** %arrayidx137, align 8
  %arrayidx138 = getelementptr inbounds i16**, i16*** %146, i64 %idxprom131
  %147 = load i16**, i16*** %arrayidx138, align 8
  %arrayidx139 = getelementptr inbounds i16*, i16** %147, i64 %idxprom130
  %148 = load i16*, i16** %arrayidx139, align 8
  %arrayidx140 = getelementptr inbounds i16, i16* %148, i64 1
  store i16 %137, i16* %arrayidx140, align 2
  %149 = load i32, i32* %l, align 4
  %idxprom141 = sext i32 %149 to i64
  %150 = load i32, i32* %k, align 4
  %idxprom142 = sext i32 %150 to i64
  %151 = load i32, i32* %j, align 4
  %idxprom143 = sext i32 %151 to i64
  %152 = load i32, i32* %i, align 4
  %idxprom144 = sext i32 %152 to i64
  %153 = load %struct.RD_DATA*, %struct.RD_DATA** @rdopt, align 8
  %bipred_mv1145 = getelementptr inbounds %struct.RD_DATA, %struct.RD_DATA* %153, i32 0, i32 17
  %154 = load i16******, i16******* %bipred_mv1145, align 8
  %arrayidx146 = getelementptr inbounds i16*****, i16****** %154, i64 %idxprom144
  %155 = load i16*****, i16****** %arrayidx146, align 8
  %arrayidx147 = getelementptr inbounds i16****, i16***** %155, i64 %idxprom143
  %156 = load i16****, i16***** %arrayidx147, align 8
  %arrayidx148 = getelementptr inbounds i16***, i16**** %156, i64 1
  %157 = load i16***, i16**** %arrayidx148, align 8
  %arrayidx149 = getelementptr inbounds i16**, i16*** %157, i64 %idxprom142
  %158 = load i16**, i16*** %arrayidx149, align 8
  %arrayidx150 = getelementptr inbounds i16*, i16** %158, i64 %idxprom141
  %159 = load i16*, i16** %arrayidx150, align 8
  %arrayidx151 = getelementptr inbounds i16, i16* %159, i64 0
  %160 = load i16, i16* %arrayidx151, align 2
  %161 = load i32, i32* %l, align 4
  %idxprom152 = sext i32 %161 to i64
  %162 = load i32, i32* %k, align 4
  %idxprom153 = sext i32 %162 to i64
  %163 = load i32, i32* %j, align 4
  %idxprom154 = sext i32 %163 to i64
  %164 = load i32, i32* %i, align 4
  %idxprom155 = sext i32 %164 to i64
  %165 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %bipred_mv1156 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %165, i32 0, i32 72
  %166 = load i16******, i16******* %bipred_mv1156, align 8
  %arrayidx157 = getelementptr inbounds i16*****, i16****** %166, i64 %idxprom155
  %167 = load i16*****, i16****** %arrayidx157, align 8
  %arrayidx158 = getelementptr inbounds i16****, i16***** %167, i64 %idxprom154
  %168 = load i16****, i16***** %arrayidx158, align 8
  %arrayidx159 = getelementptr inbounds i16***, i16**** %168, i64 1
  %169 = load i16***, i16**** %arrayidx159, align 8
  %arrayidx160 = getelementptr inbounds i16**, i16*** %169, i64 %idxprom153
  %170 = load i16**, i16*** %arrayidx160, align 8
  %arrayidx161 = getelementptr inbounds i16*, i16** %170, i64 %idxprom152
  %171 = load i16*, i16** %arrayidx161, align 8
  %arrayidx162 = getelementptr inbounds i16, i16* %171, i64 0
  store i16 %160, i16* %arrayidx162, align 2
  %172 = load i32, i32* %l, align 4
  %idxprom163 = sext i32 %172 to i64
  %173 = load i32, i32* %k, align 4
  %idxprom164 = sext i32 %173 to i64
  %174 = load i32, i32* %j, align 4
  %idxprom165 = sext i32 %174 to i64
  %175 = load i32, i32* %i, align 4
  %idxprom166 = sext i32 %175 to i64
  %176 = load %struct.RD_DATA*, %struct.RD_DATA** @rdopt, align 8
  %bipred_mv1167 = getelementptr inbounds %struct.RD_DATA, %struct.RD_DATA* %176, i32 0, i32 17
  %177 = load i16******, i16******* %bipred_mv1167, align 8
  %arrayidx168 = getelementptr inbounds i16*****, i16****** %177, i64 %idxprom166
  %178 = load i16*****, i16****** %arrayidx168, align 8
  %arrayidx169 = getelementptr inbounds i16****, i16***** %178, i64 %idxprom165
  %179 = load i16****, i16***** %arrayidx169, align 8
  %arrayidx170 = getelementptr inbounds i16***, i16**** %179, i64 1
  %180 = load i16***, i16**** %arrayidx170, align 8
  %arrayidx171 = getelementptr inbounds i16**, i16*** %180, i64 %idxprom164
  %181 = load i16**, i16*** %arrayidx171, align 8
  %arrayidx172 = getelementptr inbounds i16*, i16** %181, i64 %idxprom163
  %182 = load i16*, i16** %arrayidx172, align 8
  %arrayidx173 = getelementptr inbounds i16, i16* %182, i64 1
  %183 = load i16, i16* %arrayidx173, align 2
  %184 = load i32, i32* %l, align 4
  %idxprom174 = sext i32 %184 to i64
  %185 = load i32, i32* %k, align 4
  %idxprom175 = sext i32 %185 to i64
  %186 = load i32, i32* %j, align 4
  %idxprom176 = sext i32 %186 to i64
  %187 = load i32, i32* %i, align 4
  %idxprom177 = sext i32 %187 to i64
  %188 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %bipred_mv1178 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %188, i32 0, i32 72
  %189 = load i16******, i16******* %bipred_mv1178, align 8
  %arrayidx179 = getelementptr inbounds i16*****, i16****** %189, i64 %idxprom177
  %190 = load i16*****, i16****** %arrayidx179, align 8
  %arrayidx180 = getelementptr inbounds i16****, i16***** %190, i64 %idxprom176
  %191 = load i16****, i16***** %arrayidx180, align 8
  %arrayidx181 = getelementptr inbounds i16***, i16**** %191, i64 1
  %192 = load i16***, i16**** %arrayidx181, align 8
  %arrayidx182 = getelementptr inbounds i16**, i16*** %192, i64 %idxprom175
  %193 = load i16**, i16*** %arrayidx182, align 8
  %arrayidx183 = getelementptr inbounds i16*, i16** %193, i64 %idxprom174
  %194 = load i16*, i16** %arrayidx183, align 8
  %arrayidx184 = getelementptr inbounds i16, i16* %194, i64 1
  store i16 %183, i16* %arrayidx184, align 2
  %195 = load i32, i32* %l, align 4
  %idxprom185 = sext i32 %195 to i64
  %196 = load i32, i32* %k, align 4
  %idxprom186 = sext i32 %196 to i64
  %197 = load i32, i32* %j, align 4
  %idxprom187 = sext i32 %197 to i64
  %198 = load i32, i32* %i, align 4
  %idxprom188 = sext i32 %198 to i64
  %199 = load %struct.RD_DATA*, %struct.RD_DATA** @rdopt, align 8
  %bipred_mv2 = getelementptr inbounds %struct.RD_DATA, %struct.RD_DATA* %199, i32 0, i32 18
  %200 = load i16******, i16******* %bipred_mv2, align 8
  %arrayidx189 = getelementptr inbounds i16*****, i16****** %200, i64 %idxprom188
  %201 = load i16*****, i16****** %arrayidx189, align 8
  %arrayidx190 = getelementptr inbounds i16****, i16***** %201, i64 %idxprom187
  %202 = load i16****, i16***** %arrayidx190, align 8
  %arrayidx191 = getelementptr inbounds i16***, i16**** %202, i64 0
  %203 = load i16***, i16**** %arrayidx191, align 8
  %arrayidx192 = getelementptr inbounds i16**, i16*** %203, i64 %idxprom186
  %204 = load i16**, i16*** %arrayidx192, align 8
  %arrayidx193 = getelementptr inbounds i16*, i16** %204, i64 %idxprom185
  %205 = load i16*, i16** %arrayidx193, align 8
  %arrayidx194 = getelementptr inbounds i16, i16* %205, i64 0
  %206 = load i16, i16* %arrayidx194, align 2
  %207 = load i32, i32* %l, align 4
  %idxprom195 = sext i32 %207 to i64
  %208 = load i32, i32* %k, align 4
  %idxprom196 = sext i32 %208 to i64
  %209 = load i32, i32* %j, align 4
  %idxprom197 = sext i32 %209 to i64
  %210 = load i32, i32* %i, align 4
  %idxprom198 = sext i32 %210 to i64
  %211 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %bipred_mv2199 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %211, i32 0, i32 73
  %212 = load i16******, i16******* %bipred_mv2199, align 8
  %arrayidx200 = getelementptr inbounds i16*****, i16****** %212, i64 %idxprom198
  %213 = load i16*****, i16****** %arrayidx200, align 8
  %arrayidx201 = getelementptr inbounds i16****, i16***** %213, i64 %idxprom197
  %214 = load i16****, i16***** %arrayidx201, align 8
  %arrayidx202 = getelementptr inbounds i16***, i16**** %214, i64 0
  %215 = load i16***, i16**** %arrayidx202, align 8
  %arrayidx203 = getelementptr inbounds i16**, i16*** %215, i64 %idxprom196
  %216 = load i16**, i16*** %arrayidx203, align 8
  %arrayidx204 = getelementptr inbounds i16*, i16** %216, i64 %idxprom195
  %217 = load i16*, i16** %arrayidx204, align 8
  %arrayidx205 = getelementptr inbounds i16, i16* %217, i64 0
  store i16 %206, i16* %arrayidx205, align 2
  %218 = load i32, i32* %l, align 4
  %idxprom206 = sext i32 %218 to i64
  %219 = load i32, i32* %k, align 4
  %idxprom207 = sext i32 %219 to i64
  %220 = load i32, i32* %j, align 4
  %idxprom208 = sext i32 %220 to i64
  %221 = load i32, i32* %i, align 4
  %idxprom209 = sext i32 %221 to i64
  %222 = load %struct.RD_DATA*, %struct.RD_DATA** @rdopt, align 8
  %bipred_mv2210 = getelementptr inbounds %struct.RD_DATA, %struct.RD_DATA* %222, i32 0, i32 18
  %223 = load i16******, i16******* %bipred_mv2210, align 8
  %arrayidx211 = getelementptr inbounds i16*****, i16****** %223, i64 %idxprom209
  %224 = load i16*****, i16****** %arrayidx211, align 8
  %arrayidx212 = getelementptr inbounds i16****, i16***** %224, i64 %idxprom208
  %225 = load i16****, i16***** %arrayidx212, align 8
  %arrayidx213 = getelementptr inbounds i16***, i16**** %225, i64 0
  %226 = load i16***, i16**** %arrayidx213, align 8
  %arrayidx214 = getelementptr inbounds i16**, i16*** %226, i64 %idxprom207
  %227 = load i16**, i16*** %arrayidx214, align 8
  %arrayidx215 = getelementptr inbounds i16*, i16** %227, i64 %idxprom206
  %228 = load i16*, i16** %arrayidx215, align 8
  %arrayidx216 = getelementptr inbounds i16, i16* %228, i64 1
  %229 = load i16, i16* %arrayidx216, align 2
  %230 = load i32, i32* %l, align 4
  %idxprom217 = sext i32 %230 to i64
  %231 = load i32, i32* %k, align 4
  %idxprom218 = sext i32 %231 to i64
  %232 = load i32, i32* %j, align 4
  %idxprom219 = sext i32 %232 to i64
  %233 = load i32, i32* %i, align 4
  %idxprom220 = sext i32 %233 to i64
  %234 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %bipred_mv2221 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %234, i32 0, i32 73
  %235 = load i16******, i16******* %bipred_mv2221, align 8
  %arrayidx222 = getelementptr inbounds i16*****, i16****** %235, i64 %idxprom220
  %236 = load i16*****, i16****** %arrayidx222, align 8
  %arrayidx223 = getelementptr inbounds i16****, i16***** %236, i64 %idxprom219
  %237 = load i16****, i16***** %arrayidx223, align 8
  %arrayidx224 = getelementptr inbounds i16***, i16**** %237, i64 0
  %238 = load i16***, i16**** %arrayidx224, align 8
  %arrayidx225 = getelementptr inbounds i16**, i16*** %238, i64 %idxprom218
  %239 = load i16**, i16*** %arrayidx225, align 8
  %arrayidx226 = getelementptr inbounds i16*, i16** %239, i64 %idxprom217
  %240 = load i16*, i16** %arrayidx226, align 8
  %arrayidx227 = getelementptr inbounds i16, i16* %240, i64 1
  store i16 %229, i16* %arrayidx227, align 2
  %241 = load i32, i32* %l, align 4
  %idxprom228 = sext i32 %241 to i64
  %242 = load i32, i32* %k, align 4
  %idxprom229 = sext i32 %242 to i64
  %243 = load i32, i32* %j, align 4
  %idxprom230 = sext i32 %243 to i64
  %244 = load i32, i32* %i, align 4
  %idxprom231 = sext i32 %244 to i64
  %245 = load %struct.RD_DATA*, %struct.RD_DATA** @rdopt, align 8
  %bipred_mv2232 = getelementptr inbounds %struct.RD_DATA, %struct.RD_DATA* %245, i32 0, i32 18
  %246 = load i16******, i16******* %bipred_mv2232, align 8
  %arrayidx233 = getelementptr inbounds i16*****, i16****** %246, i64 %idxprom231
  %247 = load i16*****, i16****** %arrayidx233, align 8
  %arrayidx234 = getelementptr inbounds i16****, i16***** %247, i64 %idxprom230
  %248 = load i16****, i16***** %arrayidx234, align 8
  %arrayidx235 = getelementptr inbounds i16***, i16**** %248, i64 1
  %249 = load i16***, i16**** %arrayidx235, align 8
  %arrayidx236 = getelementptr inbounds i16**, i16*** %249, i64 %idxprom229
  %250 = load i16**, i16*** %arrayidx236, align 8
  %arrayidx237 = getelementptr inbounds i16*, i16** %250, i64 %idxprom228
  %251 = load i16*, i16** %arrayidx237, align 8
  %arrayidx238 = getelementptr inbounds i16, i16* %251, i64 0
  %252 = load i16, i16* %arrayidx238, align 2
  %253 = load i32, i32* %l, align 4
  %idxprom239 = sext i32 %253 to i64
  %254 = load i32, i32* %k, align 4
  %idxprom240 = sext i32 %254 to i64
  %255 = load i32, i32* %j, align 4
  %idxprom241 = sext i32 %255 to i64
  %256 = load i32, i32* %i, align 4
  %idxprom242 = sext i32 %256 to i64
  %257 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %bipred_mv2243 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %257, i32 0, i32 73
  %258 = load i16******, i16******* %bipred_mv2243, align 8
  %arrayidx244 = getelementptr inbounds i16*****, i16****** %258, i64 %idxprom242
  %259 = load i16*****, i16****** %arrayidx244, align 8
  %arrayidx245 = getelementptr inbounds i16****, i16***** %259, i64 %idxprom241
  %260 = load i16****, i16***** %arrayidx245, align 8
  %arrayidx246 = getelementptr inbounds i16***, i16**** %260, i64 1
  %261 = load i16***, i16**** %arrayidx246, align 8
  %arrayidx247 = getelementptr inbounds i16**, i16*** %261, i64 %idxprom240
  %262 = load i16**, i16*** %arrayidx247, align 8
  %arrayidx248 = getelementptr inbounds i16*, i16** %262, i64 %idxprom239
  %263 = load i16*, i16** %arrayidx248, align 8
  %arrayidx249 = getelementptr inbounds i16, i16* %263, i64 0
  store i16 %252, i16* %arrayidx249, align 2
  %264 = load i32, i32* %l, align 4
  %idxprom250 = sext i32 %264 to i64
  %265 = load i32, i32* %k, align 4
  %idxprom251 = sext i32 %265 to i64
  %266 = load i32, i32* %j, align 4
  %idxprom252 = sext i32 %266 to i64
  %267 = load i32, i32* %i, align 4
  %idxprom253 = sext i32 %267 to i64
  %268 = load %struct.RD_DATA*, %struct.RD_DATA** @rdopt, align 8
  %bipred_mv2254 = getelementptr inbounds %struct.RD_DATA, %struct.RD_DATA* %268, i32 0, i32 18
  %269 = load i16******, i16******* %bipred_mv2254, align 8
  %arrayidx255 = getelementptr inbounds i16*****, i16****** %269, i64 %idxprom253
  %270 = load i16*****, i16****** %arrayidx255, align 8
  %arrayidx256 = getelementptr inbounds i16****, i16***** %270, i64 %idxprom252
  %271 = load i16****, i16***** %arrayidx256, align 8
  %arrayidx257 = getelementptr inbounds i16***, i16**** %271, i64 1
  %272 = load i16***, i16**** %arrayidx257, align 8
  %arrayidx258 = getelementptr inbounds i16**, i16*** %272, i64 %idxprom251
  %273 = load i16**, i16*** %arrayidx258, align 8
  %arrayidx259 = getelementptr inbounds i16*, i16** %273, i64 %idxprom250
  %274 = load i16*, i16** %arrayidx259, align 8
  %arrayidx260 = getelementptr inbounds i16, i16* %274, i64 1
  %275 = load i16, i16* %arrayidx260, align 2
  %276 = load i32, i32* %l, align 4
  %idxprom261 = sext i32 %276 to i64
  %277 = load i32, i32* %k, align 4
  %idxprom262 = sext i32 %277 to i64
  %278 = load i32, i32* %j, align 4
  %idxprom263 = sext i32 %278 to i64
  %279 = load i32, i32* %i, align 4
  %idxprom264 = sext i32 %279 to i64
  %280 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %bipred_mv2265 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %280, i32 0, i32 73
  %281 = load i16******, i16******* %bipred_mv2265, align 8
  %arrayidx266 = getelementptr inbounds i16*****, i16****** %281, i64 %idxprom264
  %282 = load i16*****, i16****** %arrayidx266, align 8
  %arrayidx267 = getelementptr inbounds i16****, i16***** %282, i64 %idxprom263
  %283 = load i16****, i16***** %arrayidx267, align 8
  %arrayidx268 = getelementptr inbounds i16***, i16**** %283, i64 1
  %284 = load i16***, i16**** %arrayidx268, align 8
  %arrayidx269 = getelementptr inbounds i16**, i16*** %284, i64 %idxprom262
  %285 = load i16**, i16*** %arrayidx269, align 8
  %arrayidx270 = getelementptr inbounds i16*, i16** %285, i64 %idxprom261
  %286 = load i16*, i16** %arrayidx270, align 8
  %arrayidx271 = getelementptr inbounds i16, i16* %286, i64 1
  store i16 %275, i16* %arrayidx271, align 2
  br label %if.end

if.end:                                           ; preds = %if.then, %land.lhs.true.96, %land.lhs.true, %for.body.9
  %287 = load i32, i32* %l, align 4
  %idxprom272 = sext i32 %287 to i64
  %288 = load i32, i32* %k, align 4
  %idxprom273 = sext i32 %288 to i64
  %289 = load i32, i32* %j, align 4
  %idxprom274 = sext i32 %289 to i64
  %290 = load i32, i32* %i, align 4
  %idxprom275 = sext i32 %290 to i64
  %291 = load %struct.RD_DATA*, %struct.RD_DATA** @rdopt, align 8
  %pred_mv = getelementptr inbounds %struct.RD_DATA, %struct.RD_DATA* %291, i32 0, i32 15
  %292 = load i16******, i16******* %pred_mv, align 8
  %arrayidx276 = getelementptr inbounds i16*****, i16****** %292, i64 %idxprom275
  %293 = load i16*****, i16****** %arrayidx276, align 8
  %arrayidx277 = getelementptr inbounds i16****, i16***** %293, i64 %idxprom274
  %294 = load i16****, i16***** %arrayidx277, align 8
  %arrayidx278 = getelementptr inbounds i16***, i16**** %294, i64 0
  %295 = load i16***, i16**** %arrayidx278, align 8
  %arrayidx279 = getelementptr inbounds i16**, i16*** %295, i64 %idxprom273
  %296 = load i16**, i16*** %arrayidx279, align 8
  %arrayidx280 = getelementptr inbounds i16*, i16** %296, i64 %idxprom272
  %297 = load i16*, i16** %arrayidx280, align 8
  %arrayidx281 = getelementptr inbounds i16, i16* %297, i64 0
  %298 = load i16, i16* %arrayidx281, align 2
  %299 = load i32, i32* %l, align 4
  %idxprom282 = sext i32 %299 to i64
  %300 = load i32, i32* %k, align 4
  %idxprom283 = sext i32 %300 to i64
  %301 = load i32, i32* %j, align 4
  %idxprom284 = sext i32 %301 to i64
  %302 = load i32, i32* %i, align 4
  %idxprom285 = sext i32 %302 to i64
  %303 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %pred_mv286 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %303, i32 0, i32 70
  %304 = load i16******, i16******* %pred_mv286, align 8
  %arrayidx287 = getelementptr inbounds i16*****, i16****** %304, i64 %idxprom285
  %305 = load i16*****, i16****** %arrayidx287, align 8
  %arrayidx288 = getelementptr inbounds i16****, i16***** %305, i64 %idxprom284
  %306 = load i16****, i16***** %arrayidx288, align 8
  %arrayidx289 = getelementptr inbounds i16***, i16**** %306, i64 0
  %307 = load i16***, i16**** %arrayidx289, align 8
  %arrayidx290 = getelementptr inbounds i16**, i16*** %307, i64 %idxprom283
  %308 = load i16**, i16*** %arrayidx290, align 8
  %arrayidx291 = getelementptr inbounds i16*, i16** %308, i64 %idxprom282
  %309 = load i16*, i16** %arrayidx291, align 8
  %arrayidx292 = getelementptr inbounds i16, i16* %309, i64 0
  store i16 %298, i16* %arrayidx292, align 2
  %310 = load i32, i32* %l, align 4
  %idxprom293 = sext i32 %310 to i64
  %311 = load i32, i32* %k, align 4
  %idxprom294 = sext i32 %311 to i64
  %312 = load i32, i32* %j, align 4
  %idxprom295 = sext i32 %312 to i64
  %313 = load i32, i32* %i, align 4
  %idxprom296 = sext i32 %313 to i64
  %314 = load %struct.RD_DATA*, %struct.RD_DATA** @rdopt, align 8
  %pred_mv297 = getelementptr inbounds %struct.RD_DATA, %struct.RD_DATA* %314, i32 0, i32 15
  %315 = load i16******, i16******* %pred_mv297, align 8
  %arrayidx298 = getelementptr inbounds i16*****, i16****** %315, i64 %idxprom296
  %316 = load i16*****, i16****** %arrayidx298, align 8
  %arrayidx299 = getelementptr inbounds i16****, i16***** %316, i64 %idxprom295
  %317 = load i16****, i16***** %arrayidx299, align 8
  %arrayidx300 = getelementptr inbounds i16***, i16**** %317, i64 0
  %318 = load i16***, i16**** %arrayidx300, align 8
  %arrayidx301 = getelementptr inbounds i16**, i16*** %318, i64 %idxprom294
  %319 = load i16**, i16*** %arrayidx301, align 8
  %arrayidx302 = getelementptr inbounds i16*, i16** %319, i64 %idxprom293
  %320 = load i16*, i16** %arrayidx302, align 8
  %arrayidx303 = getelementptr inbounds i16, i16* %320, i64 1
  %321 = load i16, i16* %arrayidx303, align 2
  %322 = load i32, i32* %l, align 4
  %idxprom304 = sext i32 %322 to i64
  %323 = load i32, i32* %k, align 4
  %idxprom305 = sext i32 %323 to i64
  %324 = load i32, i32* %j, align 4
  %idxprom306 = sext i32 %324 to i64
  %325 = load i32, i32* %i, align 4
  %idxprom307 = sext i32 %325 to i64
  %326 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %pred_mv308 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %326, i32 0, i32 70
  %327 = load i16******, i16******* %pred_mv308, align 8
  %arrayidx309 = getelementptr inbounds i16*****, i16****** %327, i64 %idxprom307
  %328 = load i16*****, i16****** %arrayidx309, align 8
  %arrayidx310 = getelementptr inbounds i16****, i16***** %328, i64 %idxprom306
  %329 = load i16****, i16***** %arrayidx310, align 8
  %arrayidx311 = getelementptr inbounds i16***, i16**** %329, i64 0
  %330 = load i16***, i16**** %arrayidx311, align 8
  %arrayidx312 = getelementptr inbounds i16**, i16*** %330, i64 %idxprom305
  %331 = load i16**, i16*** %arrayidx312, align 8
  %arrayidx313 = getelementptr inbounds i16*, i16** %331, i64 %idxprom304
  %332 = load i16*, i16** %arrayidx313, align 8
  %arrayidx314 = getelementptr inbounds i16, i16* %332, i64 1
  store i16 %321, i16* %arrayidx314, align 2
  %333 = load i32, i32* %l, align 4
  %idxprom315 = sext i32 %333 to i64
  %334 = load i32, i32* %k, align 4
  %idxprom316 = sext i32 %334 to i64
  %335 = load i32, i32* %j, align 4
  %idxprom317 = sext i32 %335 to i64
  %336 = load i32, i32* %i, align 4
  %idxprom318 = sext i32 %336 to i64
  %337 = load %struct.RD_DATA*, %struct.RD_DATA** @rdopt, align 8
  %pred_mv319 = getelementptr inbounds %struct.RD_DATA, %struct.RD_DATA* %337, i32 0, i32 15
  %338 = load i16******, i16******* %pred_mv319, align 8
  %arrayidx320 = getelementptr inbounds i16*****, i16****** %338, i64 %idxprom318
  %339 = load i16*****, i16****** %arrayidx320, align 8
  %arrayidx321 = getelementptr inbounds i16****, i16***** %339, i64 %idxprom317
  %340 = load i16****, i16***** %arrayidx321, align 8
  %arrayidx322 = getelementptr inbounds i16***, i16**** %340, i64 1
  %341 = load i16***, i16**** %arrayidx322, align 8
  %arrayidx323 = getelementptr inbounds i16**, i16*** %341, i64 %idxprom316
  %342 = load i16**, i16*** %arrayidx323, align 8
  %arrayidx324 = getelementptr inbounds i16*, i16** %342, i64 %idxprom315
  %343 = load i16*, i16** %arrayidx324, align 8
  %arrayidx325 = getelementptr inbounds i16, i16* %343, i64 0
  %344 = load i16, i16* %arrayidx325, align 2
  %345 = load i32, i32* %l, align 4
  %idxprom326 = sext i32 %345 to i64
  %346 = load i32, i32* %k, align 4
  %idxprom327 = sext i32 %346 to i64
  %347 = load i32, i32* %j, align 4
  %idxprom328 = sext i32 %347 to i64
  %348 = load i32, i32* %i, align 4
  %idxprom329 = sext i32 %348 to i64
  %349 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %pred_mv330 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %349, i32 0, i32 70
  %350 = load i16******, i16******* %pred_mv330, align 8
  %arrayidx331 = getelementptr inbounds i16*****, i16****** %350, i64 %idxprom329
  %351 = load i16*****, i16****** %arrayidx331, align 8
  %arrayidx332 = getelementptr inbounds i16****, i16***** %351, i64 %idxprom328
  %352 = load i16****, i16***** %arrayidx332, align 8
  %arrayidx333 = getelementptr inbounds i16***, i16**** %352, i64 1
  %353 = load i16***, i16**** %arrayidx333, align 8
  %arrayidx334 = getelementptr inbounds i16**, i16*** %353, i64 %idxprom327
  %354 = load i16**, i16*** %arrayidx334, align 8
  %arrayidx335 = getelementptr inbounds i16*, i16** %354, i64 %idxprom326
  %355 = load i16*, i16** %arrayidx335, align 8
  %arrayidx336 = getelementptr inbounds i16, i16* %355, i64 0
  store i16 %344, i16* %arrayidx336, align 2
  %356 = load i32, i32* %l, align 4
  %idxprom337 = sext i32 %356 to i64
  %357 = load i32, i32* %k, align 4
  %idxprom338 = sext i32 %357 to i64
  %358 = load i32, i32* %j, align 4
  %idxprom339 = sext i32 %358 to i64
  %359 = load i32, i32* %i, align 4
  %idxprom340 = sext i32 %359 to i64
  %360 = load %struct.RD_DATA*, %struct.RD_DATA** @rdopt, align 8
  %pred_mv341 = getelementptr inbounds %struct.RD_DATA, %struct.RD_DATA* %360, i32 0, i32 15
  %361 = load i16******, i16******* %pred_mv341, align 8
  %arrayidx342 = getelementptr inbounds i16*****, i16****** %361, i64 %idxprom340
  %362 = load i16*****, i16****** %arrayidx342, align 8
  %arrayidx343 = getelementptr inbounds i16****, i16***** %362, i64 %idxprom339
  %363 = load i16****, i16***** %arrayidx343, align 8
  %arrayidx344 = getelementptr inbounds i16***, i16**** %363, i64 1
  %364 = load i16***, i16**** %arrayidx344, align 8
  %arrayidx345 = getelementptr inbounds i16**, i16*** %364, i64 %idxprom338
  %365 = load i16**, i16*** %arrayidx345, align 8
  %arrayidx346 = getelementptr inbounds i16*, i16** %365, i64 %idxprom337
  %366 = load i16*, i16** %arrayidx346, align 8
  %arrayidx347 = getelementptr inbounds i16, i16* %366, i64 1
  %367 = load i16, i16* %arrayidx347, align 2
  %368 = load i32, i32* %l, align 4
  %idxprom348 = sext i32 %368 to i64
  %369 = load i32, i32* %k, align 4
  %idxprom349 = sext i32 %369 to i64
  %370 = load i32, i32* %j, align 4
  %idxprom350 = sext i32 %370 to i64
  %371 = load i32, i32* %i, align 4
  %idxprom351 = sext i32 %371 to i64
  %372 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %pred_mv352 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %372, i32 0, i32 70
  %373 = load i16******, i16******* %pred_mv352, align 8
  %arrayidx353 = getelementptr inbounds i16*****, i16****** %373, i64 %idxprom351
  %374 = load i16*****, i16****** %arrayidx353, align 8
  %arrayidx354 = getelementptr inbounds i16****, i16***** %374, i64 %idxprom350
  %375 = load i16****, i16***** %arrayidx354, align 8
  %arrayidx355 = getelementptr inbounds i16***, i16**** %375, i64 1
  %376 = load i16***, i16**** %arrayidx355, align 8
  %arrayidx356 = getelementptr inbounds i16**, i16*** %376, i64 %idxprom349
  %377 = load i16**, i16*** %arrayidx356, align 8
  %arrayidx357 = getelementptr inbounds i16*, i16** %377, i64 %idxprom348
  %378 = load i16*, i16** %arrayidx357, align 8
  %arrayidx358 = getelementptr inbounds i16, i16* %378, i64 1
  store i16 %367, i16* %arrayidx358, align 2
  br label %for.inc

for.inc:                                          ; preds = %if.end
  %379 = load i32, i32* %l, align 4
  %inc = add nsw i32 %379, 1
  store i32 %inc, i32* %l, align 4
  br label %for.cond.7

for.end:                                          ; preds = %for.cond.7
  br label %for.inc.359

for.inc.359:                                      ; preds = %for.end
  %380 = load i32, i32* %k, align 4
  %inc360 = add nsw i32 %380, 1
  store i32 %inc360, i32* %k, align 4
  br label %for.cond.4

for.end.361:                                      ; preds = %for.cond.4
  br label %for.inc.362

for.inc.362:                                      ; preds = %for.end.361
  %381 = load i32, i32* %j, align 4
  %inc363 = add nsw i32 %381, 1
  store i32 %inc363, i32* %j, align 4
  br label %for.cond.1

for.end.364:                                      ; preds = %for.cond.1
  br label %for.inc.365

for.inc.365:                                      ; preds = %for.end.364
  %382 = load i32, i32* %i, align 4
  %inc366 = add nsw i32 %382, 1
  store i32 %inc366, i32* %i, align 4
  br label %for.cond

for.end.367:                                      ; preds = %for.cond
  ret void
}

declare i32 @printf(i8*, ...) #1

; Function Attrs: nounwind uwtable
define internal i32 @CalculateFrameNumber() #0 {
entry:
  %0 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %b_frame_to_code = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %0, i32 0, i32 67
  %1 = load i32, i32* %b_frame_to_code, align 4
  %tobool = icmp ne i32 %1, 0
  br i1 %tobool, label %if.then, label %if.else.24

if.then:                                          ; preds = %entry
  %2 = load %struct.InputParameters*, %struct.InputParameters** @input, align 8
  %PyramidCoding = getelementptr inbounds %struct.InputParameters, %struct.InputParameters* %2, i32 0, i32 55
  %3 = load i32, i32* %PyramidCoding, align 4
  %tobool1 = icmp ne i32 %3, 0
  br i1 %tobool1, label %if.then.2, label %if.else

if.then.2:                                        ; preds = %if.then
  %4 = load i32, i32* @start_tr_in_this_IGOP, align 4
  %5 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %number = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %5, i32 0, i32 0
  %6 = load i32, i32* %number, align 4
  %7 = load i32, i32* @start_frame_no_in_this_IGOP, align 4
  %sub = sub nsw i32 %6, %7
  %sub3 = sub nsw i32 %sub, 1
  %8 = load %struct.InputParameters*, %struct.InputParameters** @input, align 8
  %jumpd = getelementptr inbounds %struct.InputParameters, %struct.InputParameters* %8, i32 0, i32 5
  %9 = load i32, i32* %jumpd, align 4
  %add = add nsw i32 %9, 1
  %mul = mul nsw i32 %sub3, %add
  %add4 = add nsw i32 %4, %mul
  %10 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %b_interval = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %10, i32 0, i32 65
  %11 = load double, double* %b_interval, align 8
  %12 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %b_frame_to_code5 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %12, i32 0, i32 67
  %13 = load i32, i32* %b_frame_to_code5, align 4
  %sub6 = sub nsw i32 %13, 1
  %idxprom = sext i32 %sub6 to i64
  %14 = load %struct.GOP_DATA*, %struct.GOP_DATA** @gop_structure, align 8
  %arrayidx = getelementptr inbounds %struct.GOP_DATA, %struct.GOP_DATA* %14, i64 %idxprom
  %display_no = getelementptr inbounds %struct.GOP_DATA, %struct.GOP_DATA* %arrayidx, i32 0, i32 1
  %15 = load i32, i32* %display_no, align 4
  %add7 = add nsw i32 1, %15
  %conv = sitofp i32 %add7 to double
  %mul8 = fmul double %11, %conv
  %conv9 = fptosi double %mul8 to i32
  %add10 = add nsw i32 %add4, %conv9
  store i32 %add10, i32* @frame_no, align 4
  br label %if.end

if.else:                                          ; preds = %if.then
  %16 = load i32, i32* @start_tr_in_this_IGOP, align 4
  %17 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %number11 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %17, i32 0, i32 0
  %18 = load i32, i32* %number11, align 4
  %19 = load i32, i32* @start_frame_no_in_this_IGOP, align 4
  %sub12 = sub nsw i32 %18, %19
  %sub13 = sub nsw i32 %sub12, 1
  %20 = load %struct.InputParameters*, %struct.InputParameters** @input, align 8
  %jumpd14 = getelementptr inbounds %struct.InputParameters, %struct.InputParameters* %20, i32 0, i32 5
  %21 = load i32, i32* %jumpd14, align 4
  %add15 = add nsw i32 %21, 1
  %mul16 = mul nsw i32 %sub13, %add15
  %add17 = add nsw i32 %16, %mul16
  %22 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %b_interval18 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %22, i32 0, i32 65
  %23 = load double, double* %b_interval18, align 8
  %24 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %b_frame_to_code19 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %24, i32 0, i32 67
  %25 = load i32, i32* %b_frame_to_code19, align 4
  %conv20 = sitofp i32 %25 to double
  %mul21 = fmul double %23, %conv20
  %conv22 = fptosi double %mul21 to i32
  %add23 = add nsw i32 %add17, %conv22
  store i32 %add23, i32* @frame_no, align 4
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then.2
  br label %if.end.38

if.else.24:                                       ; preds = %entry
  %26 = load i32, i32* @start_tr_in_this_IGOP, align 4
  %27 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %number25 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %27, i32 0, i32 0
  %28 = load i32, i32* %number25, align 4
  %29 = load i32, i32* @start_frame_no_in_this_IGOP, align 4
  %sub26 = sub nsw i32 %28, %29
  %30 = load %struct.InputParameters*, %struct.InputParameters** @input, align 8
  %jumpd27 = getelementptr inbounds %struct.InputParameters, %struct.InputParameters* %30, i32 0, i32 5
  %31 = load i32, i32* %jumpd27, align 4
  %add28 = add nsw i32 %31, 1
  %mul29 = mul nsw i32 %sub26, %add28
  %add30 = add nsw i32 %26, %mul29
  store i32 %add30, i32* @frame_no, align 4
  %32 = load %struct.InputParameters*, %struct.InputParameters** @input, align 8
  %last_frame = getelementptr inbounds %struct.InputParameters, %struct.InputParameters* %32, i32 0, i32 79
  %33 = load i32, i32* %last_frame, align 4
  %tobool31 = icmp ne i32 %33, 0
  br i1 %tobool31, label %land.lhs.true, label %if.end.37

land.lhs.true:                                    ; preds = %if.else.24
  %34 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %number32 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %34, i32 0, i32 0
  %35 = load i32, i32* %number32, align 4
  %add33 = add nsw i32 %35, 1
  %36 = load %struct.InputParameters*, %struct.InputParameters** @input, align 8
  %no_frames = getelementptr inbounds %struct.InputParameters, %struct.InputParameters* %36, i32 0, i32 2
  %37 = load i32, i32* %no_frames, align 4
  %cmp = icmp eq i32 %add33, %37
  br i1 %cmp, label %if.then.35, label %if.end.37

if.then.35:                                       ; preds = %land.lhs.true
  %38 = load %struct.InputParameters*, %struct.InputParameters** @input, align 8
  %last_frame36 = getelementptr inbounds %struct.InputParameters, %struct.InputParameters* %38, i32 0, i32 79
  %39 = load i32, i32* %last_frame36, align 4
  store i32 %39, i32* @frame_no, align 4
  br label %if.end.37

if.end.37:                                        ; preds = %if.then.35, %land.lhs.true, %if.else.24
  br label %if.end.38

if.end.38:                                        ; preds = %if.end.37, %if.end
  %40 = load i32, i32* @frame_no, align 4
  ret i32 %40
}

; Function Attrs: nounwind
declare i64 @lseek(i32, i64, i32) #2

; Function Attrs: nounwind
declare i32 @snprintf(i8*, i64, i8*, ...) #2

declare i64 @read(i32, i8*, i64) #1

declare void @report_stats_on_error(...) #1

; Function Attrs: noreturn nounwind
declare void @exit(i32) #5

; Function Attrs: nounwind
declare void @free(i8*) #2

; Function Attrs: nounwind uwtable
define internal void @put_buffer_frame() #0 {
entry:
  %0 = load i16**, i16*** @imgY_org_frm, align 8
  store i16** %0, i16*** @imgY_org, align 8
  %1 = load i16***, i16**** @imgUV_org_frm, align 8
  store i16*** %1, i16**** @imgUV_org, align 8
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @put_buffer_top() #0 {
entry:
  %0 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %fld_type = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %0, i32 0, i32 56
  store i32 0, i32* %fld_type, align 4
  %1 = load i16**, i16*** @imgY_org_top, align 8
  store i16** %1, i16*** @imgY_org, align 8
  %2 = load i16***, i16**** @imgUV_org_top, align 8
  store i16*** %2, i16**** @imgUV_org, align 8
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @put_buffer_bot() #0 {
entry:
  %0 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %fld_type = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %0, i32 0, i32 56
  store i32 1, i32* %fld_type, align 4
  %1 = load i16**, i16*** @imgY_org_bot, align 8
  store i16** %1, i16*** @imgY_org, align 8
  %2 = load i16***, i16**** @imgUV_org_bot, align 8
  store i16*** %2, i16**** @imgUV_org, align 8
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @rdPictureCoding() #0 {
entry:
  %second_qp = alloca i32, align 4
  %rd_qp = alloca i32, align 4
  %previntras = alloca i32, align 4
  %prevtype = alloca i32, align 4
  %skip_encode = alloca i32, align 4
  %sec_pps = alloca %struct.pic_parameter_set_rbsp_t*, align 8
  %0 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %qp = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %0, i32 0, i32 10
  %1 = load i32, i32* %qp, align 4
  store i32 %1, i32* %second_qp, align 4
  %2 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %qp1 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %2, i32 0, i32 10
  %3 = load i32, i32* %qp1, align 4
  store i32 %3, i32* %rd_qp, align 4
  %4 = load i32, i32* @intras, align 4
  store i32 %4, i32* %previntras, align 4
  %5 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %type = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %5, i32 0, i32 6
  %6 = load i32, i32* %type, align 4
  store i32 %6, i32* %prevtype, align 4
  store i32 0, i32* %skip_encode, align 4
  %7 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %type2 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %7, i32 0, i32 6
  %8 = load i32, i32* %type2, align 4
  %cmp = icmp ne i32 %8, 2
  br i1 %cmp, label %land.lhs.true, label %if.else.11

land.lhs.true:                                    ; preds = %entry
  %9 = load %struct.InputParameters*, %struct.InputParameters** @input, align 8
  %GenerateMultiplePPS = getelementptr inbounds %struct.InputParameters, %struct.InputParameters* %9, i32 0, i32 15
  %10 = load i32, i32* %GenerateMultiplePPS, align 4
  %tobool = icmp ne i32 %10, 0
  br i1 %tobool, label %if.then, label %if.else.11

if.then:                                          ; preds = %land.lhs.true
  %11 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %type3 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %11, i32 0, i32 6
  %12 = load i32, i32* %type3, align 4
  %cmp4 = icmp eq i32 %12, 0
  br i1 %cmp4, label %if.then.5, label %if.else.9

if.then.5:                                        ; preds = %if.then
  %call = call i32 @test_wp_P_slice(i32 0)
  %cmp6 = icmp eq i32 %call, 1
  br i1 %cmp6, label %if.then.7, label %if.else

if.then.7:                                        ; preds = %if.then.5
  store %struct.pic_parameter_set_rbsp_t* getelementptr inbounds ([256 x %struct.pic_parameter_set_rbsp_t], [256 x %struct.pic_parameter_set_rbsp_t]* @PicParSet, i32 0, i64 1), %struct.pic_parameter_set_rbsp_t** @active_pps, align 8
  br label %if.end

if.else:                                          ; preds = %if.then.5
  %13 = load %struct.InputParameters*, %struct.InputParameters** @input, align 8
  %RDPSliceWeightOnly = getelementptr inbounds %struct.InputParameters, %struct.InputParameters* %13, i32 0, i32 51
  %14 = load i32, i32* %RDPSliceWeightOnly, align 4
  store i32 %14, i32* %skip_encode, align 4
  store %struct.pic_parameter_set_rbsp_t* getelementptr inbounds ([256 x %struct.pic_parameter_set_rbsp_t], [256 x %struct.pic_parameter_set_rbsp_t]* @PicParSet, i32 0, i64 0), %struct.pic_parameter_set_rbsp_t** @active_pps, align 8
  %15 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %qp8 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %15, i32 0, i32 10
  %16 = load i32, i32* %qp8, align 4
  %sub = sub nsw i32 %16, 1
  store i32 %sub, i32* %qp8, align 4
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then.7
  br label %if.end.10

if.else.9:                                        ; preds = %if.then
  store %struct.pic_parameter_set_rbsp_t* getelementptr inbounds ([256 x %struct.pic_parameter_set_rbsp_t], [256 x %struct.pic_parameter_set_rbsp_t]* @PicParSet, i32 0, i64 2), %struct.pic_parameter_set_rbsp_t** @active_pps, align 8
  br label %if.end.10

if.end.10:                                        ; preds = %if.else.9, %if.end
  br label %if.end.14

if.else.11:                                       ; preds = %land.lhs.true, %entry
  %17 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %qp12 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %17, i32 0, i32 10
  %18 = load i32, i32* %qp12, align 4
  %sub13 = sub nsw i32 %18, 1
  store i32 %sub13, i32* %qp12, align 4
  br label %if.end.14

if.end.14:                                        ; preds = %if.else.11, %if.end.10
  %19 = load %struct.pic_parameter_set_rbsp_t*, %struct.pic_parameter_set_rbsp_t** @active_pps, align 8
  store %struct.pic_parameter_set_rbsp_t* %19, %struct.pic_parameter_set_rbsp_t** %sec_pps, align 8
  %20 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %qp15 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %20, i32 0, i32 10
  %21 = load i32, i32* %qp15, align 4
  store i32 %21, i32* %second_qp, align 4
  %22 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %write_macroblock = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %22, i32 0, i32 140
  store i32 0, i32* %write_macroblock, align 4
  %23 = load i32, i32* %skip_encode, align 4
  %tobool16 = icmp ne i32 %23, 0
  br i1 %tobool16, label %if.then.17, label %if.else.18

if.then.17:                                       ; preds = %if.end.14
  %24 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %rd_pass = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %24, i32 0, i32 58
  store i32 0, i32* %rd_pass, align 4
  store %struct.storable_picture* null, %struct.storable_picture** @enc_frame_picture2, align 8
  br label %if.end.21

if.else.18:                                       ; preds = %if.end.14
  %25 = load %struct.Picture*, %struct.Picture** @frame_pic2, align 8
  call void @frame_picture(%struct.Picture* %25, i32 1)
  %26 = load %struct.Picture*, %struct.Picture** @frame_pic, align 8
  %27 = load %struct.Picture*, %struct.Picture** @frame_pic2, align 8
  %28 = load i32, i32* %rd_qp, align 4
  %call19 = call i32 @picture_coding_decision(%struct.Picture* %26, %struct.Picture* %27, i32 %28)
  %29 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %rd_pass20 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %29, i32 0, i32 58
  store i32 %call19, i32* %rd_pass20, align 4
  br label %if.end.21

if.end.21:                                        ; preds = %if.else.18, %if.then.17
  %30 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %rd_pass22 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %30, i32 0, i32 58
  %31 = load i32, i32* %rd_pass22, align 4
  %cmp23 = icmp eq i32 %31, 0
  br i1 %cmp23, label %if.then.24, label %if.else.35

if.then.24:                                       ; preds = %if.end.21
  %32 = load %struct.storable_picture*, %struct.storable_picture** @enc_frame_picture, align 8
  store %struct.storable_picture* %32, %struct.storable_picture** @enc_picture, align 8
  %33 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %type25 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %33, i32 0, i32 6
  %34 = load i32, i32* %type25, align 4
  %cmp26 = icmp ne i32 %34, 2
  br i1 %cmp26, label %land.lhs.true.27, label %if.else.32

land.lhs.true.27:                                 ; preds = %if.then.24
  %35 = load %struct.InputParameters*, %struct.InputParameters** @input, align 8
  %GenerateMultiplePPS28 = getelementptr inbounds %struct.InputParameters, %struct.InputParameters* %35, i32 0, i32 15
  %36 = load i32, i32* %GenerateMultiplePPS28, align 4
  %tobool29 = icmp ne i32 %36, 0
  br i1 %tobool29, label %if.then.30, label %if.else.32

if.then.30:                                       ; preds = %land.lhs.true.27
  %37 = load i32, i32* %rd_qp, align 4
  %38 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %qp31 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %38, i32 0, i32 10
  store i32 %37, i32* %qp31, align 4
  store %struct.pic_parameter_set_rbsp_t* getelementptr inbounds ([256 x %struct.pic_parameter_set_rbsp_t], [256 x %struct.pic_parameter_set_rbsp_t]* @PicParSet, i32 0, i64 0), %struct.pic_parameter_set_rbsp_t** @active_pps, align 8
  br label %if.end.34

if.else.32:                                       ; preds = %land.lhs.true.27, %if.then.24
  %39 = load i32, i32* %rd_qp, align 4
  %40 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %qp33 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %40, i32 0, i32 10
  store i32 %39, i32* %qp33, align 4
  br label %if.end.34

if.end.34:                                        ; preds = %if.else.32, %if.then.30
  %41 = load i32, i32* %previntras, align 4
  store i32 %41, i32* @intras, align 4
  br label %if.end.36

if.else.35:                                       ; preds = %if.end.21
  %42 = load i32, i32* @intras, align 4
  store i32 %42, i32* %previntras, align 4
  br label %if.end.36

if.end.36:                                        ; preds = %if.else.35, %if.end.34
  %43 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %type37 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %43, i32 0, i32 6
  %44 = load i32, i32* %type37, align 4
  %cmp38 = icmp ne i32 %44, 2
  br i1 %cmp38, label %land.lhs.true.39, label %if.else.69

land.lhs.true.39:                                 ; preds = %if.end.36
  %45 = load %struct.InputParameters*, %struct.InputParameters** @input, align 8
  %GenerateMultiplePPS40 = getelementptr inbounds %struct.InputParameters, %struct.InputParameters* %45, i32 0, i32 15
  %46 = load i32, i32* %GenerateMultiplePPS40, align 4
  %tobool41 = icmp ne i32 %46, 0
  br i1 %tobool41, label %if.then.42, label %if.else.69

if.then.42:                                       ; preds = %land.lhs.true.39
  store i32 0, i32* %skip_encode, align 4
  %47 = load i32, i32* %rd_qp, align 4
  %48 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %qp43 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %48, i32 0, i32 10
  store i32 %47, i32* %qp43, align 4
  %49 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %type44 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %49, i32 0, i32 6
  %50 = load i32, i32* %type44, align 4
  %cmp45 = icmp eq i32 %50, 0
  br i1 %cmp45, label %if.then.46, label %if.else.54

if.then.46:                                       ; preds = %if.then.42
  %call47 = call i32 @test_wp_P_slice(i32 1)
  %cmp48 = icmp eq i32 %call47, 1
  br i1 %cmp48, label %if.then.49, label %if.else.50

if.then.49:                                       ; preds = %if.then.46
  store %struct.pic_parameter_set_rbsp_t* getelementptr inbounds ([256 x %struct.pic_parameter_set_rbsp_t], [256 x %struct.pic_parameter_set_rbsp_t]* @PicParSet, i32 0, i64 1), %struct.pic_parameter_set_rbsp_t** @active_pps, align 8
  br label %if.end.53

if.else.50:                                       ; preds = %if.then.46
  %51 = load %struct.InputParameters*, %struct.InputParameters** @input, align 8
  %RDPSliceWeightOnly51 = getelementptr inbounds %struct.InputParameters, %struct.InputParameters* %51, i32 0, i32 51
  %52 = load i32, i32* %RDPSliceWeightOnly51, align 4
  store i32 %52, i32* %skip_encode, align 4
  store %struct.pic_parameter_set_rbsp_t* getelementptr inbounds ([256 x %struct.pic_parameter_set_rbsp_t], [256 x %struct.pic_parameter_set_rbsp_t]* @PicParSet, i32 0, i64 0), %struct.pic_parameter_set_rbsp_t** @active_pps, align 8
  %53 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %qp52 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %53, i32 0, i32 10
  %54 = load i32, i32* %qp52, align 4
  %add = add nsw i32 %54, 1
  store i32 %add, i32* %qp52, align 4
  br label %if.end.53

if.end.53:                                        ; preds = %if.else.50, %if.then.49
  br label %if.end.68

if.else.54:                                       ; preds = %if.then.42
  %call55 = call i32 @test_wp_B_slice(i32 0)
  %cmp56 = icmp eq i32 %call55, 1
  br i1 %cmp56, label %if.then.57, label %if.else.58

if.then.57:                                       ; preds = %if.else.54
  store %struct.pic_parameter_set_rbsp_t* getelementptr inbounds ([256 x %struct.pic_parameter_set_rbsp_t], [256 x %struct.pic_parameter_set_rbsp_t]* @PicParSet, i32 0, i64 1), %struct.pic_parameter_set_rbsp_t** @active_pps, align 8
  br label %if.end.67

if.else.58:                                       ; preds = %if.else.54
  %55 = load %struct.InputParameters*, %struct.InputParameters** @input, align 8
  %RDBSliceWeightOnly = getelementptr inbounds %struct.InputParameters, %struct.InputParameters* %55, i32 0, i32 52
  %56 = load i32, i32* %RDBSliceWeightOnly, align 4
  store i32 %56, i32* %skip_encode, align 4
  %57 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %nal_reference_idc = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %57, i32 0, i32 113
  %58 = load i32, i32* %nal_reference_idc, align 4
  %tobool59 = icmp ne i32 %58, 0
  br i1 %tobool59, label %if.then.60, label %if.else.63

if.then.60:                                       ; preds = %if.else.58
  %59 = load i32, i32* %rd_qp, align 4
  %sub61 = sub nsw i32 %59, 1
  %60 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %qp62 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %60, i32 0, i32 10
  store i32 %sub61, i32* %qp62, align 4
  br label %if.end.66

if.else.63:                                       ; preds = %if.else.58
  %61 = load i32, i32* %rd_qp, align 4
  %add64 = add nsw i32 %61, 1
  %62 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %qp65 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %62, i32 0, i32 10
  store i32 %add64, i32* %qp65, align 4
  br label %if.end.66

if.end.66:                                        ; preds = %if.else.63, %if.then.60
  br label %if.end.67

if.end.67:                                        ; preds = %if.end.66, %if.then.57
  br label %if.end.68

if.end.68:                                        ; preds = %if.end.67, %if.end.53
  br label %if.end.72

if.else.69:                                       ; preds = %land.lhs.true.39, %if.end.36
  store %struct.pic_parameter_set_rbsp_t* getelementptr inbounds ([256 x %struct.pic_parameter_set_rbsp_t], [256 x %struct.pic_parameter_set_rbsp_t]* @PicParSet, i32 0, i64 0), %struct.pic_parameter_set_rbsp_t** @active_pps, align 8
  %63 = load i32, i32* %rd_qp, align 4
  %add70 = add nsw i32 %63, 1
  %64 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %qp71 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %64, i32 0, i32 10
  store i32 %add70, i32* %qp71, align 4
  br label %if.end.72

if.end.72:                                        ; preds = %if.else.69, %if.end.68
  %65 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %type73 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %65, i32 0, i32 6
  %66 = load i32, i32* %type73, align 4
  %cmp74 = icmp eq i32 %66, 0
  br i1 %cmp74, label %land.lhs.true.75, label %if.end.82

land.lhs.true.75:                                 ; preds = %if.end.72
  %67 = load %struct.InputParameters*, %struct.InputParameters** @input, align 8
  %GenerateMultiplePPS76 = getelementptr inbounds %struct.InputParameters, %struct.InputParameters* %67, i32 0, i32 15
  %68 = load i32, i32* %GenerateMultiplePPS76, align 4
  %tobool77 = icmp ne i32 %68, 0
  br i1 %tobool77, label %land.lhs.true.78, label %if.end.82

land.lhs.true.78:                                 ; preds = %land.lhs.true.75
  %69 = load i32, i32* @intras, align 4
  %mul = mul nsw i32 %69, 100
  %70 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %FrameSizeInMbs = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %70, i32 0, i32 111
  %71 = load i32, i32* %FrameSizeInMbs, align 4
  %div = udiv i32 %mul, %71
  %cmp79 = icmp uge i32 %div, 75
  br i1 %cmp79, label %if.then.80, label %if.end.82

if.then.80:                                       ; preds = %land.lhs.true.78
  %72 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %type81 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %72, i32 0, i32 6
  store i32 2, i32* %type81, align 4
  store %struct.pic_parameter_set_rbsp_t* getelementptr inbounds ([256 x %struct.pic_parameter_set_rbsp_t], [256 x %struct.pic_parameter_set_rbsp_t]* @PicParSet, i32 0, i64 0), %struct.pic_parameter_set_rbsp_t** @active_pps, align 8
  br label %if.end.82

if.end.82:                                        ; preds = %if.then.80, %land.lhs.true.78, %land.lhs.true.75, %if.end.72
  %73 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %write_macroblock83 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %73, i32 0, i32 140
  store i32 0, i32* %write_macroblock83, align 4
  %74 = load i32, i32* %skip_encode, align 4
  %tobool84 = icmp ne i32 %74, 0
  br i1 %tobool84, label %if.then.85, label %if.else.87

if.then.85:                                       ; preds = %if.end.82
  store %struct.storable_picture* null, %struct.storable_picture** @enc_frame_picture3, align 8
  %75 = load i32, i32* %rd_qp, align 4
  %76 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %qp86 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %76, i32 0, i32 10
  store i32 %75, i32* %qp86, align 4
  br label %if.end.99

if.else.87:                                       ; preds = %if.end.82
  %77 = load %struct.Picture*, %struct.Picture** @frame_pic3, align 8
  call void @frame_picture(%struct.Picture* %77, i32 2)
  %78 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %rd_pass88 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %78, i32 0, i32 58
  %79 = load i32, i32* %rd_pass88, align 4
  %cmp89 = icmp eq i32 %79, 0
  br i1 %cmp89, label %if.then.90, label %if.else.94

if.then.90:                                       ; preds = %if.else.87
  %80 = load %struct.Picture*, %struct.Picture** @frame_pic, align 8
  %81 = load %struct.Picture*, %struct.Picture** @frame_pic3, align 8
  %82 = load i32, i32* %rd_qp, align 4
  %call91 = call i32 @picture_coding_decision(%struct.Picture* %80, %struct.Picture* %81, i32 %82)
  %mul92 = mul nsw i32 2, %call91
  %83 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %rd_pass93 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %83, i32 0, i32 58
  store i32 %mul92, i32* %rd_pass93, align 4
  br label %if.end.98

if.else.94:                                       ; preds = %if.else.87
  %84 = load %struct.Picture*, %struct.Picture** @frame_pic2, align 8
  %85 = load %struct.Picture*, %struct.Picture** @frame_pic3, align 8
  %86 = load i32, i32* %rd_qp, align 4
  %call95 = call i32 @picture_coding_decision(%struct.Picture* %84, %struct.Picture* %85, i32 %86)
  %87 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %rd_pass96 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %87, i32 0, i32 58
  %88 = load i32, i32* %rd_pass96, align 4
  %add97 = add i32 %88, %call95
  store i32 %add97, i32* %rd_pass96, align 4
  br label %if.end.98

if.end.98:                                        ; preds = %if.else.94, %if.then.90
  br label %if.end.99

if.end.99:                                        ; preds = %if.end.98, %if.then.85
  %89 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %rd_pass100 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %89, i32 0, i32 58
  %90 = load i32, i32* %rd_pass100, align 4
  %cmp101 = icmp eq i32 %90, 0
  br i1 %cmp101, label %if.then.102, label %if.else.105

if.then.102:                                      ; preds = %if.end.99
  %91 = load %struct.storable_picture*, %struct.storable_picture** @enc_frame_picture, align 8
  store %struct.storable_picture* %91, %struct.storable_picture** @enc_picture, align 8
  %92 = load i32, i32* %prevtype, align 4
  %93 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %type103 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %93, i32 0, i32 6
  store i32 %92, i32* %type103, align 4
  store %struct.pic_parameter_set_rbsp_t* getelementptr inbounds ([256 x %struct.pic_parameter_set_rbsp_t], [256 x %struct.pic_parameter_set_rbsp_t]* @PicParSet, i32 0, i64 0), %struct.pic_parameter_set_rbsp_t** @active_pps, align 8
  %94 = load i32, i32* %rd_qp, align 4
  %95 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %qp104 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %95, i32 0, i32 10
  store i32 %94, i32* %qp104, align 4
  %96 = load i32, i32* %previntras, align 4
  store i32 %96, i32* @intras, align 4
  br label %if.end.112

if.else.105:                                      ; preds = %if.end.99
  %97 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %rd_pass106 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %97, i32 0, i32 58
  %98 = load i32, i32* %rd_pass106, align 4
  %cmp107 = icmp eq i32 %98, 1
  br i1 %cmp107, label %if.then.108, label %if.end.111

if.then.108:                                      ; preds = %if.else.105
  %99 = load %struct.storable_picture*, %struct.storable_picture** @enc_frame_picture2, align 8
  store %struct.storable_picture* %99, %struct.storable_picture** @enc_picture, align 8
  %100 = load i32, i32* %prevtype, align 4
  %101 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %type109 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %101, i32 0, i32 6
  store i32 %100, i32* %type109, align 4
  %102 = load %struct.pic_parameter_set_rbsp_t*, %struct.pic_parameter_set_rbsp_t** %sec_pps, align 8
  store %struct.pic_parameter_set_rbsp_t* %102, %struct.pic_parameter_set_rbsp_t** @active_pps, align 8
  %103 = load i32, i32* %second_qp, align 4
  %104 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %qp110 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %104, i32 0, i32 10
  store i32 %103, i32* %qp110, align 4
  %105 = load i32, i32* %previntras, align 4
  store i32 %105, i32* @intras, align 4
  br label %if.end.111

if.end.111:                                       ; preds = %if.then.108, %if.else.105
  br label %if.end.112

if.end.112:                                       ; preds = %if.end.111, %if.then.102
  ret void
}

declare i32 @test_wp_P_slice(i32) #1

declare i32 @picture_coding_decision(%struct.Picture*, %struct.Picture*, i32) #1

declare i32 @test_wp_B_slice(i32) #1

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind }
attributes #4 = { nounwind readnone "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #5 = { noreturn nounwind "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #6 = { noreturn nounwind }
attributes #7 = { nounwind readnone }

!llvm.ident = !{!0}

!0 = !{!"clang version 3.7.0 (tags/RELEASE_370/final)"}
