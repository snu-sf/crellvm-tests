; ModuleID = './MultiSource.Applications.JM/30.ldecod.rtp.bc'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct._IO_FILE = type { i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, %struct._IO_marker*, %struct._IO_FILE*, i32, i32, i64, i16, i8, [1 x i8], i8*, i64, i8*, i8*, i8*, i8*, i64, i32, [20 x i8] }
%struct._IO_marker = type { %struct._IO_marker*, %struct._IO_FILE*, i32 }
%struct.inp_par = type { [1000 x i8], [1000 x i8], [1000 x i8], i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.pic_parameter_set_rbsp_t = type { i32, i32, i32, i32, i32, i32, [8 x i32], [6 x [16 x i32]], [2 x [64 x i32]], [6 x i32], [2 x i32], i32, i32, i32, [8 x i32], [8 x i32], [8 x i32], i32, i32, i32, i32*, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.seq_parameter_set_rbsp_t = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [8 x i32], [6 x [16 x i32]], [2 x [64 x i32]], [6 x i32], [2 x i32], i32, i32, i32, i32, i32, i32, i32, i32, i32, [256 x i32], i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, %struct.vui_seq_parameters_t }
%struct.vui_seq_parameters_t = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, %struct.hrd_parameters_t, i32, %struct.hrd_parameters_t, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.hrd_parameters_t = type { i32, i32, i32, [32 x i32], [32 x i32], [32 x i32], i32, i32, i32, i32 }
%struct.img_par = type { i32, i32, i32, i32, i32*, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [16 x [16 x i16]], [6 x [32 x i32]], [16 x [16 x i32]], [4 x [12 x [4 x [4 x i32]]]], [16 x i32], i8**, i32*, i32***, i32**, i32, i32, i32, i32, %struct.Slice*, %struct.macroblock*, i32, i32, i32, i32, i32, i32, %struct.DecRefPicMarking_s*, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [3 x i32], i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32***, i32***, i32****, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [3 x [2 x i32]], [3 x [2 x i32]], i32, i32, i64, i64, %struct.timeb, %struct.timeb, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.Slice = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, %struct.datapartition*, %struct.MotionInfoContexts*, %struct.TextureInfoContexts*, i32, i32*, i32*, i32*, i32, i32*, i32*, i32*, i32 (%struct.img_par*, %struct.inp_par*)*, i32, i32, i32, i32 }
%struct.datapartition = type { %struct.Bitstream*, %struct.DecodingEnvironment, i32 (%struct.syntaxelement*, %struct.img_par*, %struct.datapartition*)* }
%struct.Bitstream = type { i32, i32, i32, i32, i8*, i32 }
%struct.DecodingEnvironment = type { i32, i32, i32, i32, i32, i8*, i32* }
%struct.syntaxelement = type { i32, i32, i32, i32, i32, i32, i32, i32, void (i32, i32, i32*, i32*)*, void (%struct.syntaxelement*, %struct.img_par*, %struct.DecodingEnvironment*)* }
%struct.MotionInfoContexts = type { [4 x [11 x %struct.BiContextType]], [2 x [9 x %struct.BiContextType]], [2 x [10 x %struct.BiContextType]], [2 x [6 x %struct.BiContextType]], [4 x %struct.BiContextType], [4 x %struct.BiContextType], [3 x %struct.BiContextType] }
%struct.BiContextType = type { i16, i8 }
%struct.TextureInfoContexts = type { [2 x %struct.BiContextType], [4 x %struct.BiContextType], [3 x [4 x %struct.BiContextType]], [10 x [4 x %struct.BiContextType]], [10 x [15 x %struct.BiContextType]], [10 x [15 x %struct.BiContextType]], [10 x [5 x %struct.BiContextType]], [10 x [5 x %struct.BiContextType]], [10 x [15 x %struct.BiContextType]], [10 x [15 x %struct.BiContextType]] }
%struct.macroblock = type { i32, [2 x i32], i32, i32, %struct.macroblock*, %struct.macroblock*, i32, [2 x [4 x [4 x [2 x i32]]]], i32, i64, i64, i32, i32, [4 x i8], [4 x i8], i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.DecRefPicMarking_s = type { i32, i32, i32, i32, i32, %struct.DecRefPicMarking_s* }
%struct.timeb = type { i64, i16, i16, i16 }
%struct.NALU_t = type { i32, i32, i32, i32, i32, i32, i8* }
%struct.RTPpacket_t = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i8*, i32, i8*, i32 }

@.str = private unnamed_addr constant [3 x i8] c"rb\00", align 1
@bits = common global %struct._IO_FILE* null, align 8
@errortext = common global [300 x i8] zeroinitializer, align 16
@.str.1 = private unnamed_addr constant [26 x i8] c"Cannot open RTP file '%s'\00", align 1
@input = external global %struct.inp_par*, align 8
@.str.2 = private unnamed_addr constant [13 x i8] c"GetRTPNALU-1\00", align 1
@.str.3 = private unnamed_addr constant [13 x i8] c"GetRTPNALU-2\00", align 1
@.str.4 = private unnamed_addr constant [13 x i8] c"GetRTPNALU-3\00", align 1
@.str.5 = private unnamed_addr constant [68 x i8] c"DecomposeRTPpacket, RTP header consistency problem, header follows\0A\00", align 1
@.str.6 = private unnamed_addr constant [6 x i8] c"%02x \00", align 1
@.str.7 = private unnamed_addr constant [17 x i8] c"Version (V): %d\0A\00", align 1
@.str.8 = private unnamed_addr constant [17 x i8] c"Padding (P): %d\0A\00", align 1
@.str.9 = private unnamed_addr constant [19 x i8] c"Extension (X): %d\0A\00", align 1
@.str.10 = private unnamed_addr constant [21 x i8] c"CSRC count (CC): %d\0A\00", align 1
@.str.11 = private unnamed_addr constant [20 x i8] c"Marker bit (M): %d\0A\00", align 1
@.str.12 = private unnamed_addr constant [23 x i8] c"Payload Type (PT): %d\0A\00", align 1
@.str.13 = private unnamed_addr constant [21 x i8] c"Sequence Number: %d\0A\00", align 1
@.str.14 = private unnamed_addr constant [15 x i8] c"Timestamp: %d\0A\00", align 1
@.str.15 = private unnamed_addr constant [10 x i8] c"SSRC: %d\0A\00", align 1
@.str.16 = private unnamed_addr constant [64 x i8] c"RTPReadPacket: File corruption, could not read Timestamp, exit\0A\00", align 1
@.str.17 = private unnamed_addr constant [57 x i8] c"RTPReadPacket: File corruption, could not read %d bytes\0A\00", align 1
@.str.18 = private unnamed_addr constant [44 x i8] c"Errors reported by DecomposePacket(), exit\0A\00", align 1
@active_pps = common global %struct.pic_parameter_set_rbsp_t* null, align 8
@active_sps = common global %struct.seq_parameter_set_rbsp_t* null, align 8
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
@tot_time = common global i64 0, align 8
@p_out = common global i32 0, align 4
@p_ref = common global i32 0, align 4
@p_log = common global %struct._IO_FILE* null, align 8
@previous_frame_num = common global i32 0, align 4
@ref_flag = common global [17 x i32] zeroinitializer, align 16
@Is_primary_correct = common global i32 0, align 4
@Is_redundant_correct = common global i32 0, align 4
@redundant_slice_ref_idx = common global i32 0, align 4
@nal_startcode_follows = common global i32 (%struct.img_par*, i32)* null, align 8

; Function Attrs: nounwind uwtable
define void @OpenRTPFile(i8* %fn) #0 {
entry:
  %fn.addr = alloca i8*, align 8
  store i8* %fn, i8** %fn.addr, align 8
  %0 = load i8*, i8** %fn.addr, align 8
  %call = call %struct._IO_FILE* @fopen64(i8* %0, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i32 0, i32 0))
  store %struct._IO_FILE* %call, %struct._IO_FILE** @bits, align 8
  %cmp = icmp eq %struct._IO_FILE* null, %call
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %1 = load %struct.inp_par*, %struct.inp_par** @input, align 8
  %infile = getelementptr inbounds %struct.inp_par, %struct.inp_par* %1, i32 0, i32 0
  %arraydecay = getelementptr inbounds [1000 x i8], [1000 x i8]* %infile, i32 0, i32 0
  %call1 = call i32 (i8*, i64, i8*, ...) @snprintf(i8* getelementptr inbounds ([300 x i8], [300 x i8]* @errortext, i32 0, i32 0), i64 300, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.1, i32 0, i32 0), i8* %arraydecay) #3
  call void @error(i8* getelementptr inbounds ([300 x i8], [300 x i8]* @errortext, i32 0, i32 0), i32 500)
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  ret void
}

declare %struct._IO_FILE* @fopen64(i8*, i8*) #1

; Function Attrs: nounwind
declare i32 @snprintf(i8*, i64, i8*, ...) #2

declare void @error(i8*, i32) #1

; Function Attrs: nounwind uwtable
define void @CloseRTPFile() #0 {
entry:
  %0 = load %struct._IO_FILE*, %struct._IO_FILE** @bits, align 8
  %call = call i32 @fclose(%struct._IO_FILE* %0)
  ret void
}

declare i32 @fclose(%struct._IO_FILE*) #1

; Function Attrs: nounwind uwtable
define i32 @GetRTPNALU(%struct.NALU_t* %nalu) #0 {
entry:
  %retval = alloca i32, align 4
  %nalu.addr = alloca %struct.NALU_t*, align 8
  %p = alloca %struct.RTPpacket_t*, align 8
  %ret = alloca i32, align 4
  store %struct.NALU_t* %nalu, %struct.NALU_t** %nalu.addr, align 8
  %call = call noalias i8* @malloc(i64 72) #3
  %0 = bitcast i8* %call to %struct.RTPpacket_t*
  store %struct.RTPpacket_t* %0, %struct.RTPpacket_t** %p, align 8
  %cmp = icmp eq %struct.RTPpacket_t* %0, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  call void @no_mem_exit(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.2, i32 0, i32 0))
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %call1 = call noalias i8* @malloc(i64 65508) #3
  %1 = load %struct.RTPpacket_t*, %struct.RTPpacket_t** %p, align 8
  %packet = getelementptr inbounds %struct.RTPpacket_t, %struct.RTPpacket_t* %1, i32 0, i32 12
  store i8* %call1, i8** %packet, align 8
  %cmp2 = icmp eq i8* %call1, null
  br i1 %cmp2, label %if.then.3, label %if.end.4

if.then.3:                                        ; preds = %if.end
  call void @no_mem_exit(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.3, i32 0, i32 0))
  br label %if.end.4

if.end.4:                                         ; preds = %if.then.3, %if.end
  %call5 = call noalias i8* @malloc(i64 65508) #3
  %2 = load %struct.RTPpacket_t*, %struct.RTPpacket_t** %p, align 8
  %payload = getelementptr inbounds %struct.RTPpacket_t, %struct.RTPpacket_t* %2, i32 0, i32 10
  store i8* %call5, i8** %payload, align 8
  %cmp6 = icmp eq i8* %call5, null
  br i1 %cmp6, label %if.then.7, label %if.end.8

if.then.7:                                        ; preds = %if.end.4
  call void @no_mem_exit(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.4, i32 0, i32 0))
  br label %if.end.8

if.end.8:                                         ; preds = %if.then.7, %if.end.4
  %3 = load %struct.RTPpacket_t*, %struct.RTPpacket_t** %p, align 8
  %4 = load %struct._IO_FILE*, %struct._IO_FILE** @bits, align 8
  %call9 = call i32 @RTPReadPacket(%struct.RTPpacket_t* %3, %struct._IO_FILE* %4)
  store i32 %call9, i32* %ret, align 4
  %5 = load %struct.NALU_t*, %struct.NALU_t** %nalu.addr, align 8
  %forbidden_bit = getelementptr inbounds %struct.NALU_t, %struct.NALU_t* %5, i32 0, i32 5
  store i32 1, i32* %forbidden_bit, align 4
  %6 = load %struct.NALU_t*, %struct.NALU_t** %nalu.addr, align 8
  %len = getelementptr inbounds %struct.NALU_t, %struct.NALU_t* %6, i32 0, i32 1
  store i32 0, i32* %len, align 4
  %7 = load i32, i32* %ret, align 4
  %cmp10 = icmp slt i32 %7, 0
  br i1 %cmp10, label %if.then.11, label %if.end.12

if.then.11:                                       ; preds = %if.end.8
  store i32 -1, i32* %retval
  br label %return

if.end.12:                                        ; preds = %if.end.8
  %8 = load i32, i32* %ret, align 4
  %cmp13 = icmp eq i32 %8, 0
  br i1 %cmp13, label %if.then.14, label %if.end.15

if.then.14:                                       ; preds = %if.end.12
  store i32 0, i32* %retval
  br label %return

if.end.15:                                        ; preds = %if.end.12
  %9 = load %struct.RTPpacket_t*, %struct.RTPpacket_t** %p, align 8
  %paylen = getelementptr inbounds %struct.RTPpacket_t, %struct.RTPpacket_t* %9, i32 0, i32 11
  %10 = load i32, i32* %paylen, align 4
  %11 = load %struct.NALU_t*, %struct.NALU_t** %nalu.addr, align 8
  %len16 = getelementptr inbounds %struct.NALU_t, %struct.NALU_t* %11, i32 0, i32 1
  store i32 %10, i32* %len16, align 4
  %12 = load %struct.NALU_t*, %struct.NALU_t** %nalu.addr, align 8
  %buf = getelementptr inbounds %struct.NALU_t, %struct.NALU_t* %12, i32 0, i32 6
  %13 = load i8*, i8** %buf, align 8
  %14 = load %struct.RTPpacket_t*, %struct.RTPpacket_t** %p, align 8
  %payload17 = getelementptr inbounds %struct.RTPpacket_t, %struct.RTPpacket_t* %14, i32 0, i32 10
  %15 = load i8*, i8** %payload17, align 8
  %16 = load %struct.RTPpacket_t*, %struct.RTPpacket_t** %p, align 8
  %paylen18 = getelementptr inbounds %struct.RTPpacket_t, %struct.RTPpacket_t* %16, i32 0, i32 11
  %17 = load i32, i32* %paylen18, align 4
  %conv = zext i32 %17 to i64
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %13, i8* %15, i64 %conv, i32 1, i1 false)
  %18 = load %struct.NALU_t*, %struct.NALU_t** %nalu.addr, align 8
  %buf19 = getelementptr inbounds %struct.NALU_t, %struct.NALU_t* %18, i32 0, i32 6
  %19 = load i8*, i8** %buf19, align 8
  %arrayidx = getelementptr inbounds i8, i8* %19, i64 0
  %20 = load i8, i8* %arrayidx, align 1
  %conv20 = zext i8 %20 to i32
  %shr = ashr i32 %conv20, 7
  %and = and i32 %shr, 1
  %21 = load %struct.NALU_t*, %struct.NALU_t** %nalu.addr, align 8
  %forbidden_bit21 = getelementptr inbounds %struct.NALU_t, %struct.NALU_t* %21, i32 0, i32 5
  store i32 %and, i32* %forbidden_bit21, align 4
  %22 = load %struct.NALU_t*, %struct.NALU_t** %nalu.addr, align 8
  %buf22 = getelementptr inbounds %struct.NALU_t, %struct.NALU_t* %22, i32 0, i32 6
  %23 = load i8*, i8** %buf22, align 8
  %arrayidx23 = getelementptr inbounds i8, i8* %23, i64 0
  %24 = load i8, i8* %arrayidx23, align 1
  %conv24 = zext i8 %24 to i32
  %shr25 = ashr i32 %conv24, 5
  %and26 = and i32 %shr25, 3
  %25 = load %struct.NALU_t*, %struct.NALU_t** %nalu.addr, align 8
  %nal_reference_idc = getelementptr inbounds %struct.NALU_t, %struct.NALU_t* %25, i32 0, i32 4
  store i32 %and26, i32* %nal_reference_idc, align 4
  %26 = load %struct.NALU_t*, %struct.NALU_t** %nalu.addr, align 8
  %buf27 = getelementptr inbounds %struct.NALU_t, %struct.NALU_t* %26, i32 0, i32 6
  %27 = load i8*, i8** %buf27, align 8
  %arrayidx28 = getelementptr inbounds i8, i8* %27, i64 0
  %28 = load i8, i8* %arrayidx28, align 1
  %conv29 = zext i8 %28 to i32
  %and30 = and i32 %conv29, 31
  %29 = load %struct.NALU_t*, %struct.NALU_t** %nalu.addr, align 8
  %nal_unit_type = getelementptr inbounds %struct.NALU_t, %struct.NALU_t* %29, i32 0, i32 3
  store i32 %and30, i32* %nal_unit_type, align 4
  %30 = load %struct.RTPpacket_t*, %struct.RTPpacket_t** %p, align 8
  %payload31 = getelementptr inbounds %struct.RTPpacket_t, %struct.RTPpacket_t* %30, i32 0, i32 10
  %31 = load i8*, i8** %payload31, align 8
  call void @free(i8* %31) #3
  %32 = load %struct.RTPpacket_t*, %struct.RTPpacket_t** %p, align 8
  %packet32 = getelementptr inbounds %struct.RTPpacket_t, %struct.RTPpacket_t* %32, i32 0, i32 12
  %33 = load i8*, i8** %packet32, align 8
  call void @free(i8* %33) #3
  %34 = load %struct.RTPpacket_t*, %struct.RTPpacket_t** %p, align 8
  %35 = bitcast %struct.RTPpacket_t* %34 to i8*
  call void @free(i8* %35) #3
  %36 = load %struct.NALU_t*, %struct.NALU_t** %nalu.addr, align 8
  %len33 = getelementptr inbounds %struct.NALU_t, %struct.NALU_t* %36, i32 0, i32 1
  %37 = load i32, i32* %len33, align 4
  store i32 %37, i32* %retval
  br label %return

return:                                           ; preds = %if.end.15, %if.then.14, %if.then.11
  %38 = load i32, i32* %retval
  ret i32 %38
}

; Function Attrs: nounwind
declare noalias i8* @malloc(i64) #2

declare void @no_mem_exit(i8*) #1

; Function Attrs: nounwind uwtable
define i32 @RTPReadPacket(%struct.RTPpacket_t* %p, %struct._IO_FILE* %bits) #0 {
entry:
  %retval = alloca i32, align 4
  %p.addr = alloca %struct.RTPpacket_t*, align 8
  %bits.addr = alloca %struct._IO_FILE*, align 8
  %Filepos = alloca i32, align 4
  %intime = alloca i32, align 4
  store %struct.RTPpacket_t* %p, %struct.RTPpacket_t** %p.addr, align 8
  store %struct._IO_FILE* %bits, %struct._IO_FILE** %bits.addr, align 8
  %0 = load %struct._IO_FILE*, %struct._IO_FILE** %bits.addr, align 8
  %call = call i64 @ftell(%struct._IO_FILE* %0)
  %conv = trunc i64 %call to i32
  store i32 %conv, i32* %Filepos, align 4
  %1 = load %struct.RTPpacket_t*, %struct.RTPpacket_t** %p.addr, align 8
  %packlen = getelementptr inbounds %struct.RTPpacket_t, %struct.RTPpacket_t* %1, i32 0, i32 13
  %2 = bitcast i32* %packlen to i8*
  %3 = load %struct._IO_FILE*, %struct._IO_FILE** %bits.addr, align 8
  %call1 = call i64 @fread(i8* %2, i64 1, i64 4, %struct._IO_FILE* %3)
  %cmp = icmp ne i64 4, %call1
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store i32 0, i32* %retval
  br label %return

if.end:                                           ; preds = %entry
  %4 = bitcast i32* %intime to i8*
  %5 = load %struct._IO_FILE*, %struct._IO_FILE** %bits.addr, align 8
  %call3 = call i64 @fread(i8* %4, i64 1, i64 4, %struct._IO_FILE* %5)
  %cmp4 = icmp ne i64 4, %call3
  br i1 %cmp4, label %if.then.6, label %if.end.10

if.then.6:                                        ; preds = %if.end
  %6 = load %struct._IO_FILE*, %struct._IO_FILE** %bits.addr, align 8
  %7 = load i32, i32* %Filepos, align 4
  %conv7 = sext i32 %7 to i64
  %call8 = call i32 @fseek(%struct._IO_FILE* %6, i64 %conv7, i32 0)
  %call9 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([64 x i8], [64 x i8]* @.str.16, i32 0, i32 0))
  call void @exit(i32 -1) #6
  unreachable

if.end.10:                                        ; preds = %if.end
  %8 = load %struct.RTPpacket_t*, %struct.RTPpacket_t** %p.addr, align 8
  %packlen11 = getelementptr inbounds %struct.RTPpacket_t, %struct.RTPpacket_t* %8, i32 0, i32 13
  %9 = load i32, i32* %packlen11, align 4
  %conv12 = zext i32 %9 to i64
  %10 = load %struct.RTPpacket_t*, %struct.RTPpacket_t** %p.addr, align 8
  %packet = getelementptr inbounds %struct.RTPpacket_t, %struct.RTPpacket_t* %10, i32 0, i32 12
  %11 = load i8*, i8** %packet, align 8
  %12 = load %struct.RTPpacket_t*, %struct.RTPpacket_t** %p.addr, align 8
  %packlen13 = getelementptr inbounds %struct.RTPpacket_t, %struct.RTPpacket_t* %12, i32 0, i32 13
  %13 = load i32, i32* %packlen13, align 4
  %conv14 = zext i32 %13 to i64
  %14 = load %struct._IO_FILE*, %struct._IO_FILE** %bits.addr, align 8
  %call15 = call i64 @fread(i8* %11, i64 1, i64 %conv14, %struct._IO_FILE* %14)
  %cmp16 = icmp ne i64 %conv12, %call15
  br i1 %cmp16, label %if.then.18, label %if.end.21

if.then.18:                                       ; preds = %if.end.10
  %15 = load %struct.RTPpacket_t*, %struct.RTPpacket_t** %p.addr, align 8
  %packlen19 = getelementptr inbounds %struct.RTPpacket_t, %struct.RTPpacket_t* %15, i32 0, i32 13
  %16 = load i32, i32* %packlen19, align 4
  %call20 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([57 x i8], [57 x i8]* @.str.17, i32 0, i32 0), i32 %16)
  call void @exit(i32 -1) #6
  unreachable

if.end.21:                                        ; preds = %if.end.10
  %17 = load %struct.RTPpacket_t*, %struct.RTPpacket_t** %p.addr, align 8
  %call22 = call i32 @DecomposeRTPpacket(%struct.RTPpacket_t* %17)
  %cmp23 = icmp slt i32 %call22, 0
  br i1 %cmp23, label %if.then.25, label %if.end.27

if.then.25:                                       ; preds = %if.end.21
  %call26 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.18, i32 0, i32 0))
  call void @exit(i32 -700) #6
  unreachable

if.end.27:                                        ; preds = %if.end.21
  %18 = load %struct.RTPpacket_t*, %struct.RTPpacket_t** %p.addr, align 8
  %packlen28 = getelementptr inbounds %struct.RTPpacket_t, %struct.RTPpacket_t* %18, i32 0, i32 13
  %19 = load i32, i32* %packlen28, align 4
  store i32 %19, i32* %retval
  br label %return

return:                                           ; preds = %if.end.27, %if.then
  %20 = load i32, i32* %retval
  ret i32 %20
}

; Function Attrs: nounwind
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* nocapture, i8* nocapture readonly, i64, i32, i1) #3

; Function Attrs: nounwind
declare void @free(i8*) #2

; Function Attrs: nounwind uwtable
define i32 @DecomposeRTPpacket(%struct.RTPpacket_t* %p) #0 {
entry:
  %retval = alloca i32, align 4
  %p.addr = alloca %struct.RTPpacket_t*, align 8
  store %struct.RTPpacket_t* %p, %struct.RTPpacket_t** %p.addr, align 8
  %0 = load %struct.RTPpacket_t*, %struct.RTPpacket_t** %p.addr, align 8
  %packet = getelementptr inbounds %struct.RTPpacket_t, %struct.RTPpacket_t* %0, i32 0, i32 12
  %1 = load i8*, i8** %packet, align 8
  %arrayidx = getelementptr inbounds i8, i8* %1, i64 0
  %2 = load i8, i8* %arrayidx, align 1
  %conv = zext i8 %2 to i32
  %shr = ashr i32 %conv, 6
  %and = and i32 %shr, 3
  %3 = load %struct.RTPpacket_t*, %struct.RTPpacket_t** %p.addr, align 8
  %v = getelementptr inbounds %struct.RTPpacket_t, %struct.RTPpacket_t* %3, i32 0, i32 0
  store i32 %and, i32* %v, align 4
  %4 = load %struct.RTPpacket_t*, %struct.RTPpacket_t** %p.addr, align 8
  %packet1 = getelementptr inbounds %struct.RTPpacket_t, %struct.RTPpacket_t* %4, i32 0, i32 12
  %5 = load i8*, i8** %packet1, align 8
  %arrayidx2 = getelementptr inbounds i8, i8* %5, i64 0
  %6 = load i8, i8* %arrayidx2, align 1
  %conv3 = zext i8 %6 to i32
  %shr4 = ashr i32 %conv3, 5
  %and5 = and i32 %shr4, 1
  %7 = load %struct.RTPpacket_t*, %struct.RTPpacket_t** %p.addr, align 8
  %p6 = getelementptr inbounds %struct.RTPpacket_t, %struct.RTPpacket_t* %7, i32 0, i32 1
  store i32 %and5, i32* %p6, align 4
  %8 = load %struct.RTPpacket_t*, %struct.RTPpacket_t** %p.addr, align 8
  %packet7 = getelementptr inbounds %struct.RTPpacket_t, %struct.RTPpacket_t* %8, i32 0, i32 12
  %9 = load i8*, i8** %packet7, align 8
  %arrayidx8 = getelementptr inbounds i8, i8* %9, i64 0
  %10 = load i8, i8* %arrayidx8, align 1
  %conv9 = zext i8 %10 to i32
  %shr10 = ashr i32 %conv9, 4
  %and11 = and i32 %shr10, 1
  %11 = load %struct.RTPpacket_t*, %struct.RTPpacket_t** %p.addr, align 8
  %x = getelementptr inbounds %struct.RTPpacket_t, %struct.RTPpacket_t* %11, i32 0, i32 2
  store i32 %and11, i32* %x, align 4
  %12 = load %struct.RTPpacket_t*, %struct.RTPpacket_t** %p.addr, align 8
  %packet12 = getelementptr inbounds %struct.RTPpacket_t, %struct.RTPpacket_t* %12, i32 0, i32 12
  %13 = load i8*, i8** %packet12, align 8
  %arrayidx13 = getelementptr inbounds i8, i8* %13, i64 0
  %14 = load i8, i8* %arrayidx13, align 1
  %conv14 = zext i8 %14 to i32
  %shr15 = ashr i32 %conv14, 0
  %and16 = and i32 %shr15, 15
  %15 = load %struct.RTPpacket_t*, %struct.RTPpacket_t** %p.addr, align 8
  %cc = getelementptr inbounds %struct.RTPpacket_t, %struct.RTPpacket_t* %15, i32 0, i32 3
  store i32 %and16, i32* %cc, align 4
  %16 = load %struct.RTPpacket_t*, %struct.RTPpacket_t** %p.addr, align 8
  %packet17 = getelementptr inbounds %struct.RTPpacket_t, %struct.RTPpacket_t* %16, i32 0, i32 12
  %17 = load i8*, i8** %packet17, align 8
  %arrayidx18 = getelementptr inbounds i8, i8* %17, i64 1
  %18 = load i8, i8* %arrayidx18, align 1
  %conv19 = zext i8 %18 to i32
  %shr20 = ashr i32 %conv19, 7
  %and21 = and i32 %shr20, 1
  %19 = load %struct.RTPpacket_t*, %struct.RTPpacket_t** %p.addr, align 8
  %m = getelementptr inbounds %struct.RTPpacket_t, %struct.RTPpacket_t* %19, i32 0, i32 4
  store i32 %and21, i32* %m, align 4
  %20 = load %struct.RTPpacket_t*, %struct.RTPpacket_t** %p.addr, align 8
  %packet22 = getelementptr inbounds %struct.RTPpacket_t, %struct.RTPpacket_t* %20, i32 0, i32 12
  %21 = load i8*, i8** %packet22, align 8
  %arrayidx23 = getelementptr inbounds i8, i8* %21, i64 1
  %22 = load i8, i8* %arrayidx23, align 1
  %conv24 = zext i8 %22 to i32
  %shr25 = ashr i32 %conv24, 0
  %and26 = and i32 %shr25, 127
  %23 = load %struct.RTPpacket_t*, %struct.RTPpacket_t** %p.addr, align 8
  %pt = getelementptr inbounds %struct.RTPpacket_t, %struct.RTPpacket_t* %23, i32 0, i32 5
  store i32 %and26, i32* %pt, align 4
  %24 = load %struct.RTPpacket_t*, %struct.RTPpacket_t** %p.addr, align 8
  %seq = getelementptr inbounds %struct.RTPpacket_t, %struct.RTPpacket_t* %24, i32 0, i32 6
  %25 = bitcast i32* %seq to i8*
  %26 = load %struct.RTPpacket_t*, %struct.RTPpacket_t** %p.addr, align 8
  %packet27 = getelementptr inbounds %struct.RTPpacket_t, %struct.RTPpacket_t* %26, i32 0, i32 12
  %27 = load i8*, i8** %packet27, align 8
  %arrayidx28 = getelementptr inbounds i8, i8* %27, i64 2
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %25, i8* %arrayidx28, i64 2, i32 1, i1 false)
  %28 = load %struct.RTPpacket_t*, %struct.RTPpacket_t** %p.addr, align 8
  %seq29 = getelementptr inbounds %struct.RTPpacket_t, %struct.RTPpacket_t* %28, i32 0, i32 6
  %29 = load i32, i32* %seq29, align 4
  %conv30 = trunc i32 %29 to i16
  %call = call zeroext i16 @ntohs(i16 zeroext %conv30) #7
  %conv31 = zext i16 %call to i32
  %30 = load %struct.RTPpacket_t*, %struct.RTPpacket_t** %p.addr, align 8
  %seq32 = getelementptr inbounds %struct.RTPpacket_t, %struct.RTPpacket_t* %30, i32 0, i32 6
  store i32 %conv31, i32* %seq32, align 4
  %31 = load %struct.RTPpacket_t*, %struct.RTPpacket_t** %p.addr, align 8
  %timestamp = getelementptr inbounds %struct.RTPpacket_t, %struct.RTPpacket_t* %31, i32 0, i32 8
  %32 = bitcast i32* %timestamp to i8*
  %33 = load %struct.RTPpacket_t*, %struct.RTPpacket_t** %p.addr, align 8
  %packet33 = getelementptr inbounds %struct.RTPpacket_t, %struct.RTPpacket_t* %33, i32 0, i32 12
  %34 = load i8*, i8** %packet33, align 8
  %arrayidx34 = getelementptr inbounds i8, i8* %34, i64 4
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %32, i8* %arrayidx34, i64 4, i32 1, i1 false)
  %35 = load %struct.RTPpacket_t*, %struct.RTPpacket_t** %p.addr, align 8
  %timestamp35 = getelementptr inbounds %struct.RTPpacket_t, %struct.RTPpacket_t* %35, i32 0, i32 8
  %36 = load i32, i32* %timestamp35, align 4
  %call36 = call i32 @ntohl(i32 %36) #7
  %37 = load %struct.RTPpacket_t*, %struct.RTPpacket_t** %p.addr, align 8
  %timestamp37 = getelementptr inbounds %struct.RTPpacket_t, %struct.RTPpacket_t* %37, i32 0, i32 8
  store i32 %call36, i32* %timestamp37, align 4
  %38 = load %struct.RTPpacket_t*, %struct.RTPpacket_t** %p.addr, align 8
  %ssrc = getelementptr inbounds %struct.RTPpacket_t, %struct.RTPpacket_t* %38, i32 0, i32 9
  %39 = bitcast i32* %ssrc to i8*
  %40 = load %struct.RTPpacket_t*, %struct.RTPpacket_t** %p.addr, align 8
  %packet38 = getelementptr inbounds %struct.RTPpacket_t, %struct.RTPpacket_t* %40, i32 0, i32 12
  %41 = load i8*, i8** %packet38, align 8
  %arrayidx39 = getelementptr inbounds i8, i8* %41, i64 8
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %39, i8* %arrayidx39, i64 4, i32 1, i1 false)
  %42 = load %struct.RTPpacket_t*, %struct.RTPpacket_t** %p.addr, align 8
  %ssrc40 = getelementptr inbounds %struct.RTPpacket_t, %struct.RTPpacket_t* %42, i32 0, i32 9
  %43 = load i32, i32* %ssrc40, align 4
  %call41 = call i32 @ntohl(i32 %43) #7
  %44 = load %struct.RTPpacket_t*, %struct.RTPpacket_t** %p.addr, align 8
  %ssrc42 = getelementptr inbounds %struct.RTPpacket_t, %struct.RTPpacket_t* %44, i32 0, i32 9
  store i32 %call41, i32* %ssrc42, align 4
  %45 = load %struct.RTPpacket_t*, %struct.RTPpacket_t** %p.addr, align 8
  %v43 = getelementptr inbounds %struct.RTPpacket_t, %struct.RTPpacket_t* %45, i32 0, i32 0
  %46 = load i32, i32* %v43, align 4
  %cmp = icmp ne i32 %46, 2
  br i1 %cmp, label %if.then, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %entry
  %47 = load %struct.RTPpacket_t*, %struct.RTPpacket_t** %p.addr, align 8
  %p45 = getelementptr inbounds %struct.RTPpacket_t, %struct.RTPpacket_t* %47, i32 0, i32 1
  %48 = load i32, i32* %p45, align 4
  %cmp46 = icmp ne i32 %48, 0
  br i1 %cmp46, label %if.then, label %lor.lhs.false.48

lor.lhs.false.48:                                 ; preds = %lor.lhs.false
  %49 = load %struct.RTPpacket_t*, %struct.RTPpacket_t** %p.addr, align 8
  %x49 = getelementptr inbounds %struct.RTPpacket_t, %struct.RTPpacket_t* %49, i32 0, i32 2
  %50 = load i32, i32* %x49, align 4
  %cmp50 = icmp ne i32 %50, 0
  br i1 %cmp50, label %if.then, label %lor.lhs.false.52

lor.lhs.false.52:                                 ; preds = %lor.lhs.false.48
  %51 = load %struct.RTPpacket_t*, %struct.RTPpacket_t** %p.addr, align 8
  %cc53 = getelementptr inbounds %struct.RTPpacket_t, %struct.RTPpacket_t* %51, i32 0, i32 3
  %52 = load i32, i32* %cc53, align 4
  %cmp54 = icmp ne i32 %52, 0
  br i1 %cmp54, label %if.then, label %if.end

if.then:                                          ; preds = %lor.lhs.false.52, %lor.lhs.false.48, %lor.lhs.false, %entry
  %call56 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([68 x i8], [68 x i8]* @.str.5, i32 0, i32 0))
  %53 = load %struct.RTPpacket_t*, %struct.RTPpacket_t** %p.addr, align 8
  call void @DumpRTPHeader(%struct.RTPpacket_t* %53)
  store i32 -1, i32* %retval
  br label %return

if.end:                                           ; preds = %lor.lhs.false.52
  %54 = load %struct.RTPpacket_t*, %struct.RTPpacket_t** %p.addr, align 8
  %packlen = getelementptr inbounds %struct.RTPpacket_t, %struct.RTPpacket_t* %54, i32 0, i32 13
  %55 = load i32, i32* %packlen, align 4
  %sub = sub i32 %55, 12
  %56 = load %struct.RTPpacket_t*, %struct.RTPpacket_t** %p.addr, align 8
  %paylen = getelementptr inbounds %struct.RTPpacket_t, %struct.RTPpacket_t* %56, i32 0, i32 11
  store i32 %sub, i32* %paylen, align 4
  %57 = load %struct.RTPpacket_t*, %struct.RTPpacket_t** %p.addr, align 8
  %payload = getelementptr inbounds %struct.RTPpacket_t, %struct.RTPpacket_t* %57, i32 0, i32 10
  %58 = load i8*, i8** %payload, align 8
  %59 = load %struct.RTPpacket_t*, %struct.RTPpacket_t** %p.addr, align 8
  %packet57 = getelementptr inbounds %struct.RTPpacket_t, %struct.RTPpacket_t* %59, i32 0, i32 12
  %60 = load i8*, i8** %packet57, align 8
  %arrayidx58 = getelementptr inbounds i8, i8* %60, i64 12
  %61 = load %struct.RTPpacket_t*, %struct.RTPpacket_t** %p.addr, align 8
  %paylen59 = getelementptr inbounds %struct.RTPpacket_t, %struct.RTPpacket_t* %61, i32 0, i32 11
  %62 = load i32, i32* %paylen59, align 4
  %conv60 = zext i32 %62 to i64
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %58, i8* %arrayidx58, i64 %conv60, i32 1, i1 false)
  store i32 0, i32* %retval
  br label %return

return:                                           ; preds = %if.end, %if.then
  %63 = load i32, i32* %retval
  ret i32 %63
}

; Function Attrs: nounwind readnone
declare zeroext i16 @ntohs(i16 zeroext) #4

; Function Attrs: nounwind readnone
declare i32 @ntohl(i32) #4

declare i32 @printf(i8*, ...) #1

; Function Attrs: nounwind uwtable
define void @DumpRTPHeader(%struct.RTPpacket_t* %p) #0 {
entry:
  %p.addr = alloca %struct.RTPpacket_t*, align 8
  %i = alloca i32, align 4
  store %struct.RTPpacket_t* %p, %struct.RTPpacket_t** %p.addr, align 8
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %0 = load i32, i32* %i, align 4
  %cmp = icmp slt i32 %0, 30
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %1 = load i32, i32* %i, align 4
  %idxprom = sext i32 %1 to i64
  %2 = load %struct.RTPpacket_t*, %struct.RTPpacket_t** %p.addr, align 8
  %packet = getelementptr inbounds %struct.RTPpacket_t, %struct.RTPpacket_t* %2, i32 0, i32 12
  %3 = load i8*, i8** %packet, align 8
  %arrayidx = getelementptr inbounds i8, i8* %3, i64 %idxprom
  %4 = load i8, i8* %arrayidx, align 1
  %conv = zext i8 %4 to i32
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.6, i32 0, i32 0), i32 %conv)
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %5 = load i32, i32* %i, align 4
  %inc = add nsw i32 %5, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %6 = load %struct.RTPpacket_t*, %struct.RTPpacket_t** %p.addr, align 8
  %v = getelementptr inbounds %struct.RTPpacket_t, %struct.RTPpacket_t* %6, i32 0, i32 0
  %7 = load i32, i32* %v, align 4
  %call1 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.7, i32 0, i32 0), i32 %7)
  %8 = load %struct.RTPpacket_t*, %struct.RTPpacket_t** %p.addr, align 8
  %p2 = getelementptr inbounds %struct.RTPpacket_t, %struct.RTPpacket_t* %8, i32 0, i32 1
  %9 = load i32, i32* %p2, align 4
  %call3 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.8, i32 0, i32 0), i32 %9)
  %10 = load %struct.RTPpacket_t*, %struct.RTPpacket_t** %p.addr, align 8
  %x = getelementptr inbounds %struct.RTPpacket_t, %struct.RTPpacket_t* %10, i32 0, i32 2
  %11 = load i32, i32* %x, align 4
  %call4 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.9, i32 0, i32 0), i32 %11)
  %12 = load %struct.RTPpacket_t*, %struct.RTPpacket_t** %p.addr, align 8
  %cc = getelementptr inbounds %struct.RTPpacket_t, %struct.RTPpacket_t* %12, i32 0, i32 3
  %13 = load i32, i32* %cc, align 4
  %call5 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.10, i32 0, i32 0), i32 %13)
  %14 = load %struct.RTPpacket_t*, %struct.RTPpacket_t** %p.addr, align 8
  %m = getelementptr inbounds %struct.RTPpacket_t, %struct.RTPpacket_t* %14, i32 0, i32 4
  %15 = load i32, i32* %m, align 4
  %call6 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.11, i32 0, i32 0), i32 %15)
  %16 = load %struct.RTPpacket_t*, %struct.RTPpacket_t** %p.addr, align 8
  %pt = getelementptr inbounds %struct.RTPpacket_t, %struct.RTPpacket_t* %16, i32 0, i32 5
  %17 = load i32, i32* %pt, align 4
  %call7 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.12, i32 0, i32 0), i32 %17)
  %18 = load %struct.RTPpacket_t*, %struct.RTPpacket_t** %p.addr, align 8
  %seq = getelementptr inbounds %struct.RTPpacket_t, %struct.RTPpacket_t* %18, i32 0, i32 6
  %19 = load i32, i32* %seq, align 4
  %call8 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.13, i32 0, i32 0), i32 %19)
  %20 = load %struct.RTPpacket_t*, %struct.RTPpacket_t** %p.addr, align 8
  %timestamp = getelementptr inbounds %struct.RTPpacket_t, %struct.RTPpacket_t* %20, i32 0, i32 8
  %21 = load i32, i32* %timestamp, align 4
  %call9 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.14, i32 0, i32 0), i32 %21)
  %22 = load %struct.RTPpacket_t*, %struct.RTPpacket_t** %p.addr, align 8
  %ssrc = getelementptr inbounds %struct.RTPpacket_t, %struct.RTPpacket_t* %22, i32 0, i32 9
  %23 = load i32, i32* %ssrc, align 4
  %call10 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.15, i32 0, i32 0), i32 %23)
  ret void
}

declare i64 @ftell(%struct._IO_FILE*) #1

declare i64 @fread(i8*, i64, i64, %struct._IO_FILE*) #1

declare i32 @fseek(%struct._IO_FILE*, i64, i32) #1

; Function Attrs: noreturn nounwind
declare void @exit(i32) #5

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
