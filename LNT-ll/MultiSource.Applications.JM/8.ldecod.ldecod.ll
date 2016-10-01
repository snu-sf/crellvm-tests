; ModuleID = './MultiSource.Applications.JM/8.ldecod.ldecod.bc'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct._IO_FILE = type { i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, %struct._IO_marker*, %struct._IO_FILE*, i32, i32, i64, i16, i8, [1 x i8], i8*, i64, i8*, i8*, i8*, i8*, i64, i32, [20 x i8] }
%struct._IO_marker = type { %struct._IO_marker*, %struct._IO_FILE*, i32 }
%struct.inp_par = type { [1000 x i8], [1000 x i8], [1000 x i8], i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.snr_par = type { i32, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float }
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
%struct.storable_picture = type { i32, i32, i32, i32, i32, [50 x [6 x [33 x i64]]], [50 x [6 x [33 x i64]]], [50 x [6 x [33 x i64]]], [50 x [6 x [33 x i64]]], i32, i32, i32, i32, i32, i32, i32, i32, i32, i16, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i16**, i16***, i8*, i16**, i8***, i64***, i64***, i16****, i8**, i8**, %struct.storable_picture*, %struct.storable_picture*, %struct.storable_picture*, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [2 x i32], i32, %struct.DecRefPicMarking_s*, i32 }
%struct.decoded_picture_buffer = type { %struct.frame_store**, %struct.frame_store**, %struct.frame_store**, i32, i32, i32, i32, i32, i32, i32, i32, %struct.frame_store* }
%struct.frame_store = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, %struct.storable_picture*, %struct.storable_picture*, %struct.storable_picture* }
%struct.ercVariables_s = type { i32, i32, i32*, i32*, i32*, %struct.ercSegment_s*, i32, i32*, i32, i32, i32 }
%struct.ercSegment_s = type { i32, i32, i32 }
%struct.colocated_params = type { i32, i32, i32, [6 x [33 x i64]], i8***, i64***, i16****, i8**, [6 x [33 x i64]], i8***, i64***, i16****, i8**, [6 x [33 x i64]], i8***, i64***, i16****, i8**, i8, i8** }
%struct.seq_parameter_set_rbsp_t = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [8 x i32], [6 x [16 x i32]], [2 x [64 x i32]], [6 x i32], [2 x i32], i32, i32, i32, i32, i32, i32, i32, i32, i32, [256 x i32], i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, %struct.vui_seq_parameters_t }
%struct.vui_seq_parameters_t = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, %struct.hrd_parameters_t, i32, %struct.hrd_parameters_t, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.hrd_parameters_t = type { i32, i32, i32, [32 x i32], [32 x i32], [32 x i32], i32, i32, i32, i32 }
%struct.pic_parameter_set_rbsp_t = type { i32, i32, i32, i32, i32, i32, [8 x i32], [6 x [16 x i32]], [2 x [64 x i32]], [6 x i32], [2 x i32], i32, i32, i32, [8 x i32], [8 x i32], [8 x i32], i32, i32, i32, i32*, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.tm = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i64, i8* }

@global_init_done = global i32 0, align 4
@stderr = external global %struct._IO_FILE*, align 8
@.str = private unnamed_addr constant [783 x i8] c"\0A   ldecod [-h] {[defdec.cfg] | {[-p pocScale][-i bitstream.264]...[-o output.yuv] [-r reference.yuv] [-uv]}}\0A\0A## Parameters\0A\0A## Options\0A   -h  :  prints function usage\0A       :  parse <defdec.cfg> for decoder operation.\0A   -i  :  Input file name. \0A   -o  :  Output file name. If not specified default output is set as test_dec.yuv\0A\0A   -r  :  Reference file name. If not specified default output is set as test_rec.yuv\0A\0A   -p  :  Poc Scale. \0A   -uv :  write chroma components for monochrome streams(4:2:0)\0A\0A## Supported video file formats\0A   Input : .264 -> H.264 bitstream files. \0A   Output: .yuv -> RAW file. Format depends on bitstream information. \0A\0A## Examples of usage:\0A   ldecod\0A   ldecod  -h\0A   ldecod  default.cfg\0A   ldecod  -i bitstream.264 -o output.yuv -r reference.yuv\0A\00", align 1
@input = common global %struct.inp_par* null, align 8
@.str.1 = private unnamed_addr constant [9 x i8] c"test.264\00", align 1
@.str.2 = private unnamed_addr constant [13 x i8] c"test_dec.yuv\00", align 1
@.str.3 = private unnamed_addr constant [13 x i8] c"test_rec.yuv\00", align 1
@.str.4 = private unnamed_addr constant [3 x i8] c"-h\00", align 1
@.str.5 = private unnamed_addr constant [3 x i8] c"-s\00", align 1
@.str.6 = private unnamed_addr constant [3 x i8] c"-i\00", align 1
@.str.7 = private unnamed_addr constant [3 x i8] c"-o\00", align 1
@.str.8 = private unnamed_addr constant [3 x i8] c"-r\00", align 1
@.str.9 = private unnamed_addr constant [3 x i8] c"-p\00", align 1
@.str.10 = private unnamed_addr constant [3 x i8] c"%d\00", align 1
@.str.11 = private unnamed_addr constant [4 x i8] c"-uv\00", align 1
@errortext = common global [300 x i8] zeroinitializer, align 16
@.str.12 = private unnamed_addr constant [47 x i8] c"Invalid syntax. Use ldecod -h for proper usage\00", align 1
@p_out = common global i32 0, align 4
@.str.13 = private unnamed_addr constant [20 x i8] c"Error open file %s \00", align 1
@stdout = external global %struct._IO_FILE*, align 8
@.str.14 = private unnamed_addr constant [70 x i8] c"----------------------------- JM %s %s -----------------------------\0A\00", align 1
@.str.15 = private unnamed_addr constant [5 x i8] c"12.1\00", align 1
@.str.16 = private unnamed_addr constant [8 x i8] c"(FRExt)\00", align 1
@.str.17 = private unnamed_addr constant [47 x i8] c" Decoder config file                    : %s \0A\00", align 1
@.str.18 = private unnamed_addr constant [76 x i8] c"--------------------------------------------------------------------------\0A\00", align 1
@.str.19 = private unnamed_addr constant [47 x i8] c" Input H.264 bitstream                  : %s \0A\00", align 1
@.str.20 = private unnamed_addr constant [47 x i8] c" Output decoded YUV                     : %s \0A\00", align 1
@.str.21 = private unnamed_addr constant [47 x i8] c" Output status file                     : %s \0A\00", align 1
@.str.22 = private unnamed_addr constant [8 x i8] c"log.dec\00", align 1
@p_ref = common global i32 0, align 4
@.str.23 = private unnamed_addr constant [62 x i8] c" Input reference file                   : %s does not exist \0A\00", align 1
@.str.24 = private unnamed_addr constant [72 x i8] c"                                          SNR values are not available\0A\00", align 1
@.str.25 = private unnamed_addr constant [47 x i8] c" Input reference file                   : %s \0A\00", align 1
@.str.26 = private unnamed_addr constant [52 x i8] c"POC must = frame# or field# for SNRs to be correct\0A\00", align 1
@.str.27 = private unnamed_addr constant [72 x i8] c"  Frame       POC   Pic#   QP   SnrY    SnrU    SnrV   Y:U:V  Time(ms)\0A\00", align 1
@.str.28 = private unnamed_addr constant [12 x i8] c"main: input\00", align 1
@snr = common global %struct.snr_par* null, align 8
@.str.29 = private unnamed_addr constant [10 x i8] c"main: snr\00", align 1
@img = common global %struct.img_par* null, align 8
@.str.30 = private unnamed_addr constant [10 x i8] c"main: img\00", align 1
@.str.31 = private unnamed_addr constant [34 x i8] c"Unsupported file format %d, exit\0A\00", align 1
@dec_picture = external global %struct.storable_picture*, align 8
@dpb = external global %struct.decoded_picture_buffer, align 8
@g_nFrame = common global i32 0, align 4
@Bframe_ctr = common global i32 0, align 4
@tot_time = common global i64 0, align 8
@ref_flag = common global [17 x i32] zeroinitializer, align 16
@erc_errorVar = external global %struct.ercVariables_s*, align 8
@Co_located = external global %struct.colocated_params*, align 8
@imgY_ref = common global i16** null, align 8
@imgUV_ref = common global i16*** null, align 8
@active_sps = common global %struct.seq_parameter_set_rbsp_t* null, align 8
@.str.32 = private unnamed_addr constant [2 x i8] c"r\00", align 1
@.str.33 = private unnamed_addr constant [34 x i8] c"Error: Control file %s not found\0A\00", align 1
@.str.34 = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@.str.35 = private unnamed_addr constant [7 x i8] c"%*[^\0A]\00", align 1
@.str.36 = private unnamed_addr constant [29 x i8] c"NAL mode %i is not supported\00", align 1
@.str.37 = private unnamed_addr constant [4 x i8] c"%d,\00", align 1
@.str.38 = private unnamed_addr constant [51 x i8] c"Poc Scale is %d. It has to be within range 1 to 10\00", align 1
@.str.39 = private unnamed_addr constant [5 x i8] c"%ld,\00", align 1
@report.yuv_formats = private unnamed_addr constant [4 x [4 x i8]] [[4 x i8] c"400\00", [4 x i8] c"420\00", [4 x i8] c"422\00", [4 x i8] c"444\00"], align 16
@.str.40 = private unnamed_addr constant [76 x i8] c"-------------------- Average SNR all frames ------------------------------\0A\00", align 1
@.str.41 = private unnamed_addr constant [30 x i8] c" SNR Y(dB)           : %5.2f\0A\00", align 1
@.str.42 = private unnamed_addr constant [30 x i8] c" SNR U(dB)           : %5.2f\0A\00", align 1
@.str.43 = private unnamed_addr constant [30 x i8] c" SNR V(dB)           : %5.2f\0A\00", align 1
@.str.44 = private unnamed_addr constant [29 x i8] c" Exit JM %s decoder, ver %s \00", align 1
@.str.45 = private unnamed_addr constant [11 x i8] c"12 (FRExt)\00", align 1
@.str.46 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@.str.47 = private unnamed_addr constant [77 x i8] c"\0A----------------------- Decoding Completed -------------------------------\0A\00", align 1
@.str.48 = private unnamed_addr constant [2 x i8] c"a\00", align 1
@.str.49 = private unnamed_addr constant [33 x i8] c"Error open file %s for appending\00", align 1
@.str.50 = private unnamed_addr constant [118 x i8] c" -------------------------------------------------------------------------------------------------------------------\0A\00", align 1
@.str.51 = private unnamed_addr constant [94 x i8] c"|  Decoder statistics. This file is made first time, later runs are appended               |\0A\00", align 1
@.str.52 = private unnamed_addr constant [119 x i8] c" ------------------------------------------------------------------------------------------------------------------- \0A\00", align 1
@.str.53 = private unnamed_addr constant [119 x i8] c"|   ver  | Date  | Time  |    Sequence        |#Img| Format  | YUV |Coding|SNRY 1|SNRU 1|SNRV 1|SNRY N|SNRU N|SNRV N|\0A\00", align 1
@.str.54 = private unnamed_addr constant [9 x i8] c"|%s/%-4s\00", align 1
@.str.55 = private unnamed_addr constant [9 x i8] c"%d-%b-%Y\00", align 1
@.str.56 = private unnamed_addr constant [10 x i8] c"| %1.5s |\00", align 1
@.str.57 = private unnamed_addr constant [9 x i8] c"%H:%M:%S\00", align 1
@.str.58 = private unnamed_addr constant [9 x i8] c"%20.20s|\00", align 1
@.str.59 = private unnamed_addr constant [6 x i8] c"%3d |\00", align 1
@.str.60 = private unnamed_addr constant [10 x i8] c"%4dx%-4d|\00", align 1
@.str.61 = private unnamed_addr constant [6 x i8] c" %s |\00", align 1
@active_pps = common global %struct.pic_parameter_set_rbsp_t* null, align 8
@.str.62 = private unnamed_addr constant [8 x i8] c" CAVLC|\00", align 1
@.str.63 = private unnamed_addr constant [8 x i8] c" CABAC|\00", align 1
@.str.64 = private unnamed_addr constant [7 x i8] c"%6.3f|\00", align 1
@.str.65 = private unnamed_addr constant [8 x i8] c"%6.3f|\0A\00", align 1
@.str.66 = private unnamed_addr constant [12 x i8] c"dataDec.txt\00", align 1
@.str.67 = private unnamed_addr constant [79 x i8] c"%3d %2d %2d %2.2f %2.2f %2.2f %5d %2.2f %2.2f %2.2f %5d %2.2f %2.2f %2.2f %5d\0A\00", align 1
@.str.68 = private unnamed_addr constant [60 x i8] c"AllocPartition: Memory allocation for Data Partition failed\00", align 1
@.str.69 = private unnamed_addr constant [55 x i8] c"AllocPartition: Memory allocation for Bitstream failed\00", align 1
@.str.70 = private unnamed_addr constant [58 x i8] c"AllocPartition: Memory allocation for streamBuffer failed\00", align 1
@.str.71 = private unnamed_addr constant [61 x i8] c"Memory allocation for Slice datastruct in NAL-mode %d failed\00", align 1
@.str.72 = private unnamed_addr constant [34 x i8] c"init_global_buffers: img->mb_data\00", align 1
@.str.73 = private unnamed_addr constant [38 x i8] c"init_global_buffers: img->intra_block\00", align 1
@PicPos = common global i32** null, align 8
@.str.74 = private unnamed_addr constant [20 x i8] c"init_img: img->quad\00", align 1
@ReMapRef = common global [20 x i32] zeroinitializer, align 16
@frame_no = common global i32 0, align 4
@TopFieldForSkip_Y = common global [16 x [16 x i32]] zeroinitializer, align 16
@TopFieldForSkip_UV = common global [2 x [16 x [16 x i32]]] zeroinitializer, align 16
@InvLevelScale4x4Luma_Intra = common global [6 x [4 x [4 x i32]]] zeroinitializer, align 16
@InvLevelScale4x4Chroma_Intra = common global [2 x [6 x [4 x [4 x i32]]]] zeroinitializer, align 16
@InvLevelScale4x4Luma_Inter = common global [6 x [4 x [4 x i32]]] zeroinitializer, align 16
@InvLevelScale4x4Chroma_Inter = common global [2 x [6 x [4 x [4 x i32]]]] zeroinitializer, align 16
@InvLevelScale8x8Luma_Intra = common global [6 x [8 x [8 x i32]]] zeroinitializer, align 16
@InvLevelScale8x8Luma_Inter = common global [6 x [8 x [8 x i32]]] zeroinitializer, align 16
@qmatrix = common global [8 x i32*] zeroinitializer, align 16
@p_log = common global %struct._IO_FILE* null, align 8
@previous_frame_num = common global i32 0, align 4
@Is_primary_correct = common global i32 0, align 4
@Is_redundant_correct = common global i32 0, align 4
@redundant_slice_ref_idx = common global i32 0, align 4
@nal_startcode_follows = common global i32 (%struct.img_par*, i32)* null, align 8
@last_out_fs = common global %struct.frame_store* null, align 8
@pocs_in_dpb = common global [100 x i32] zeroinitializer, align 16

; Function Attrs: nounwind uwtable
define void @JMDecHelpExit() #0 {
entry:
  %0 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %call = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %0, i8* getelementptr inbounds ([783 x i8], [783 x i8]* @.str, i32 0, i32 0))
  call void @exit(i32 -1) #6
  unreachable

return:                                           ; No predecessors!
  ret void
}

declare i32 @fprintf(%struct._IO_FILE*, i8*, ...) #1

; Function Attrs: noreturn nounwind
declare void @exit(i32) #2

; Function Attrs: nounwind uwtable
define void @Configure(i32 %ac, i8** %av) #0 {
entry:
  %ac.addr = alloca i32, align 4
  %av.addr = alloca i8**, align 8
  %CLcount = alloca i32, align 4
  %config_filename = alloca i8*, align 8
  store i32 %ac, i32* %ac.addr, align 4
  store i8** %av, i8*** %av.addr, align 8
  store i8* null, i8** %config_filename, align 8
  store i32 1, i32* %CLcount, align 4
  %0 = load %struct.inp_par*, %struct.inp_par** @input, align 8
  %infile = getelementptr inbounds %struct.inp_par, %struct.inp_par* %0, i32 0, i32 0
  %arraydecay = getelementptr inbounds [1000 x i8], [1000 x i8]* %infile, i32 0, i32 0
  %call = call i8* @strcpy(i8* %arraydecay, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.1, i32 0, i32 0)) #5
  %1 = load %struct.inp_par*, %struct.inp_par** @input, align 8
  %outfile = getelementptr inbounds %struct.inp_par, %struct.inp_par* %1, i32 0, i32 1
  %arraydecay1 = getelementptr inbounds [1000 x i8], [1000 x i8]* %outfile, i32 0, i32 0
  %call2 = call i8* @strcpy(i8* %arraydecay1, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.2, i32 0, i32 0)) #5
  %2 = load %struct.inp_par*, %struct.inp_par** @input, align 8
  %reffile = getelementptr inbounds %struct.inp_par, %struct.inp_par* %2, i32 0, i32 2
  %arraydecay3 = getelementptr inbounds [1000 x i8], [1000 x i8]* %reffile, i32 0, i32 0
  %call4 = call i8* @strcpy(i8* %arraydecay3, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.3, i32 0, i32 0)) #5
  %3 = load %struct.inp_par*, %struct.inp_par** @input, align 8
  %FileFormat = getelementptr inbounds %struct.inp_par, %struct.inp_par* %3, i32 0, i32 3
  store i32 0, i32* %FileFormat, align 4
  %4 = load %struct.inp_par*, %struct.inp_par** @input, align 8
  %ref_offset = getelementptr inbounds %struct.inp_par, %struct.inp_par* %4, i32 0, i32 4
  store i32 0, i32* %ref_offset, align 4
  %5 = load %struct.inp_par*, %struct.inp_par** @input, align 8
  %poc_scale = getelementptr inbounds %struct.inp_par, %struct.inp_par* %5, i32 0, i32 5
  store i32 2, i32* %poc_scale, align 4
  %6 = load %struct.inp_par*, %struct.inp_par** @input, align 8
  %silent = getelementptr inbounds %struct.inp_par, %struct.inp_par* %6, i32 0, i32 7
  store i32 0, i32* %silent, align 4
  %7 = load i32, i32* %ac.addr, align 4
  %cmp = icmp eq i32 %7, 2
  br i1 %cmp, label %if.then, label %if.end.17

if.then:                                          ; preds = %entry
  %8 = load i8**, i8*** %av.addr, align 8
  %arrayidx = getelementptr inbounds i8*, i8** %8, i64 1
  %9 = load i8*, i8** %arrayidx, align 8
  %call5 = call i32 @strncmp(i8* %9, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.4, i32 0, i32 0), i64 2) #7
  %cmp6 = icmp eq i32 0, %call5
  br i1 %cmp6, label %if.then.7, label %if.else

if.then.7:                                        ; preds = %if.then
  call void @JMDecHelpExit()
  br label %if.end.16

if.else:                                          ; preds = %if.then
  %10 = load i8**, i8*** %av.addr, align 8
  %arrayidx8 = getelementptr inbounds i8*, i8** %10, i64 1
  %11 = load i8*, i8** %arrayidx8, align 8
  %call9 = call i32 @strncmp(i8* %11, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.5, i32 0, i32 0), i64 2) #7
  %cmp10 = icmp eq i32 0, %call9
  br i1 %cmp10, label %if.then.11, label %if.else.13

if.then.11:                                       ; preds = %if.else
  %12 = load %struct.inp_par*, %struct.inp_par** @input, align 8
  %silent12 = getelementptr inbounds %struct.inp_par, %struct.inp_par* %12, i32 0, i32 7
  store i32 1, i32* %silent12, align 4
  br label %if.end

if.else.13:                                       ; preds = %if.else
  %13 = load i8**, i8*** %av.addr, align 8
  %arrayidx14 = getelementptr inbounds i8*, i8** %13, i64 1
  %14 = load i8*, i8** %arrayidx14, align 8
  store i8* %14, i8** %config_filename, align 8
  %15 = load %struct.inp_par*, %struct.inp_par** @input, align 8
  %16 = load i8**, i8*** %av.addr, align 8
  %arrayidx15 = getelementptr inbounds i8*, i8** %16, i64 1
  %17 = load i8*, i8** %arrayidx15, align 8
  call void @init_conf(%struct.inp_par* %15, i8* %17)
  br label %if.end

if.end:                                           ; preds = %if.else.13, %if.then.11
  br label %if.end.16

if.end.16:                                        ; preds = %if.end, %if.then.7
  store i32 2, i32* %CLcount, align 4
  br label %if.end.17

if.end.17:                                        ; preds = %if.end.16, %entry
  %18 = load i32, i32* %ac.addr, align 4
  %cmp18 = icmp sge i32 %18, 3
  br i1 %cmp18, label %if.then.19, label %if.end.40

if.then.19:                                       ; preds = %if.end.17
  %19 = load i8**, i8*** %av.addr, align 8
  %arrayidx20 = getelementptr inbounds i8*, i8** %19, i64 1
  %20 = load i8*, i8** %arrayidx20, align 8
  %call21 = call i32 @strncmp(i8* %20, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.6, i32 0, i32 0), i64 2) #7
  %cmp22 = icmp eq i32 0, %call21
  br i1 %cmp22, label %if.then.23, label %if.end.28

if.then.23:                                       ; preds = %if.then.19
  %21 = load %struct.inp_par*, %struct.inp_par** @input, align 8
  %infile24 = getelementptr inbounds %struct.inp_par, %struct.inp_par* %21, i32 0, i32 0
  %arraydecay25 = getelementptr inbounds [1000 x i8], [1000 x i8]* %infile24, i32 0, i32 0
  %22 = load i8**, i8*** %av.addr, align 8
  %arrayidx26 = getelementptr inbounds i8*, i8** %22, i64 2
  %23 = load i8*, i8** %arrayidx26, align 8
  %call27 = call i8* @strcpy(i8* %arraydecay25, i8* %23) #5
  store i32 3, i32* %CLcount, align 4
  br label %if.end.28

if.end.28:                                        ; preds = %if.then.23, %if.then.19
  %24 = load i8**, i8*** %av.addr, align 8
  %arrayidx29 = getelementptr inbounds i8*, i8** %24, i64 1
  %25 = load i8*, i8** %arrayidx29, align 8
  %call30 = call i32 @strncmp(i8* %25, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.4, i32 0, i32 0), i64 2) #7
  %cmp31 = icmp eq i32 0, %call30
  br i1 %cmp31, label %if.then.32, label %if.end.33

if.then.32:                                       ; preds = %if.end.28
  call void @JMDecHelpExit()
  br label %if.end.33

if.end.33:                                        ; preds = %if.then.32, %if.end.28
  %26 = load i8**, i8*** %av.addr, align 8
  %arrayidx34 = getelementptr inbounds i8*, i8** %26, i64 1
  %27 = load i8*, i8** %arrayidx34, align 8
  %call35 = call i32 @strncmp(i8* %27, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.5, i32 0, i32 0), i64 2) #7
  %cmp36 = icmp eq i32 0, %call35
  br i1 %cmp36, label %if.then.37, label %if.end.39

if.then.37:                                       ; preds = %if.end.33
  %28 = load %struct.inp_par*, %struct.inp_par** @input, align 8
  %silent38 = getelementptr inbounds %struct.inp_par, %struct.inp_par* %28, i32 0, i32 7
  store i32 1, i32* %silent38, align 4
  br label %if.end.39

if.end.39:                                        ; preds = %if.then.37, %if.end.33
  br label %if.end.40

if.end.40:                                        ; preds = %if.end.39, %if.end.17
  br label %while.cond

while.cond:                                       ; preds = %if.end.116, %if.end.40
  %29 = load i32, i32* %CLcount, align 4
  %30 = load i32, i32* %ac.addr, align 4
  %cmp41 = icmp slt i32 %29, %30
  br i1 %cmp41, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %31 = load i32, i32* %CLcount, align 4
  %idxprom = sext i32 %31 to i64
  %32 = load i8**, i8*** %av.addr, align 8
  %arrayidx42 = getelementptr inbounds i8*, i8** %32, i64 %idxprom
  %33 = load i8*, i8** %arrayidx42, align 8
  %call43 = call i32 @strncmp(i8* %33, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.4, i32 0, i32 0), i64 2) #7
  %cmp44 = icmp eq i32 0, %call43
  br i1 %cmp44, label %if.then.45, label %if.end.46

if.then.45:                                       ; preds = %while.body
  call void @JMDecHelpExit()
  br label %if.end.46

if.end.46:                                        ; preds = %if.then.45, %while.body
  %34 = load i32, i32* %CLcount, align 4
  %idxprom47 = sext i32 %34 to i64
  %35 = load i8**, i8*** %av.addr, align 8
  %arrayidx48 = getelementptr inbounds i8*, i8** %35, i64 %idxprom47
  %36 = load i8*, i8** %arrayidx48, align 8
  %call49 = call i32 @strncmp(i8* %36, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.5, i32 0, i32 0), i64 2) #7
  %cmp50 = icmp eq i32 0, %call49
  br i1 %cmp50, label %if.then.51, label %if.end.53

if.then.51:                                       ; preds = %if.end.46
  %37 = load %struct.inp_par*, %struct.inp_par** @input, align 8
  %silent52 = getelementptr inbounds %struct.inp_par, %struct.inp_par* %37, i32 0, i32 7
  store i32 1, i32* %silent52, align 4
  %38 = load i32, i32* %CLcount, align 4
  %inc = add nsw i32 %38, 1
  store i32 %inc, i32* %CLcount, align 4
  br label %if.end.53

if.end.53:                                        ; preds = %if.then.51, %if.end.46
  %39 = load i32, i32* %CLcount, align 4
  %idxprom54 = sext i32 %39 to i64
  %40 = load i8**, i8*** %av.addr, align 8
  %arrayidx55 = getelementptr inbounds i8*, i8** %40, i64 %idxprom54
  %41 = load i8*, i8** %arrayidx55, align 8
  %call56 = call i32 @strncmp(i8* %41, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.6, i32 0, i32 0), i64 2) #7
  %cmp57 = icmp eq i32 0, %call56
  br i1 %cmp57, label %if.then.58, label %if.else.65

if.then.58:                                       ; preds = %if.end.53
  %42 = load %struct.inp_par*, %struct.inp_par** @input, align 8
  %infile59 = getelementptr inbounds %struct.inp_par, %struct.inp_par* %42, i32 0, i32 0
  %arraydecay60 = getelementptr inbounds [1000 x i8], [1000 x i8]* %infile59, i32 0, i32 0
  %43 = load i32, i32* %CLcount, align 4
  %add = add nsw i32 %43, 1
  %idxprom61 = sext i32 %add to i64
  %44 = load i8**, i8*** %av.addr, align 8
  %arrayidx62 = getelementptr inbounds i8*, i8** %44, i64 %idxprom61
  %45 = load i8*, i8** %arrayidx62, align 8
  %call63 = call i8* @strcpy(i8* %arraydecay60, i8* %45) #5
  %46 = load i32, i32* %CLcount, align 4
  %add64 = add nsw i32 %46, 2
  store i32 %add64, i32* %CLcount, align 4
  br label %if.end.116

if.else.65:                                       ; preds = %if.end.53
  %47 = load i32, i32* %CLcount, align 4
  %idxprom66 = sext i32 %47 to i64
  %48 = load i8**, i8*** %av.addr, align 8
  %arrayidx67 = getelementptr inbounds i8*, i8** %48, i64 %idxprom66
  %49 = load i8*, i8** %arrayidx67, align 8
  %call68 = call i32 @strncmp(i8* %49, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.7, i32 0, i32 0), i64 2) #7
  %cmp69 = icmp eq i32 0, %call68
  br i1 %cmp69, label %if.then.70, label %if.else.78

if.then.70:                                       ; preds = %if.else.65
  %50 = load %struct.inp_par*, %struct.inp_par** @input, align 8
  %outfile71 = getelementptr inbounds %struct.inp_par, %struct.inp_par* %50, i32 0, i32 1
  %arraydecay72 = getelementptr inbounds [1000 x i8], [1000 x i8]* %outfile71, i32 0, i32 0
  %51 = load i32, i32* %CLcount, align 4
  %add73 = add nsw i32 %51, 1
  %idxprom74 = sext i32 %add73 to i64
  %52 = load i8**, i8*** %av.addr, align 8
  %arrayidx75 = getelementptr inbounds i8*, i8** %52, i64 %idxprom74
  %53 = load i8*, i8** %arrayidx75, align 8
  %call76 = call i8* @strcpy(i8* %arraydecay72, i8* %53) #5
  %54 = load i32, i32* %CLcount, align 4
  %add77 = add nsw i32 %54, 2
  store i32 %add77, i32* %CLcount, align 4
  br label %if.end.115

if.else.78:                                       ; preds = %if.else.65
  %55 = load i32, i32* %CLcount, align 4
  %idxprom79 = sext i32 %55 to i64
  %56 = load i8**, i8*** %av.addr, align 8
  %arrayidx80 = getelementptr inbounds i8*, i8** %56, i64 %idxprom79
  %57 = load i8*, i8** %arrayidx80, align 8
  %call81 = call i32 @strncmp(i8* %57, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.8, i32 0, i32 0), i64 2) #7
  %cmp82 = icmp eq i32 0, %call81
  br i1 %cmp82, label %if.then.83, label %if.else.91

if.then.83:                                       ; preds = %if.else.78
  %58 = load %struct.inp_par*, %struct.inp_par** @input, align 8
  %reffile84 = getelementptr inbounds %struct.inp_par, %struct.inp_par* %58, i32 0, i32 2
  %arraydecay85 = getelementptr inbounds [1000 x i8], [1000 x i8]* %reffile84, i32 0, i32 0
  %59 = load i32, i32* %CLcount, align 4
  %add86 = add nsw i32 %59, 1
  %idxprom87 = sext i32 %add86 to i64
  %60 = load i8**, i8*** %av.addr, align 8
  %arrayidx88 = getelementptr inbounds i8*, i8** %60, i64 %idxprom87
  %61 = load i8*, i8** %arrayidx88, align 8
  %call89 = call i8* @strcpy(i8* %arraydecay85, i8* %61) #5
  %62 = load i32, i32* %CLcount, align 4
  %add90 = add nsw i32 %62, 2
  store i32 %add90, i32* %CLcount, align 4
  br label %if.end.114

if.else.91:                                       ; preds = %if.else.78
  %63 = load i32, i32* %CLcount, align 4
  %idxprom92 = sext i32 %63 to i64
  %64 = load i8**, i8*** %av.addr, align 8
  %arrayidx93 = getelementptr inbounds i8*, i8** %64, i64 %idxprom92
  %65 = load i8*, i8** %arrayidx93, align 8
  %call94 = call i32 @strncmp(i8* %65, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.9, i32 0, i32 0), i64 2) #7
  %cmp95 = icmp eq i32 0, %call94
  br i1 %cmp95, label %if.then.96, label %if.else.103

if.then.96:                                       ; preds = %if.else.91
  %66 = load i32, i32* %CLcount, align 4
  %add97 = add nsw i32 %66, 1
  %idxprom98 = sext i32 %add97 to i64
  %67 = load i8**, i8*** %av.addr, align 8
  %arrayidx99 = getelementptr inbounds i8*, i8** %67, i64 %idxprom98
  %68 = load i8*, i8** %arrayidx99, align 8
  %69 = load %struct.inp_par*, %struct.inp_par** @input, align 8
  %poc_scale100 = getelementptr inbounds %struct.inp_par, %struct.inp_par* %69, i32 0, i32 5
  %call101 = call i32 (i8*, i8*, ...) @__isoc99_sscanf(i8* %68, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.10, i32 0, i32 0), i32* %poc_scale100) #5
  %70 = load i32, i32* %CLcount, align 4
  %add102 = add nsw i32 %70, 2
  store i32 %add102, i32* %CLcount, align 4
  br label %if.end.113

if.else.103:                                      ; preds = %if.else.91
  %71 = load i32, i32* %CLcount, align 4
  %idxprom104 = sext i32 %71 to i64
  %72 = load i8**, i8*** %av.addr, align 8
  %arrayidx105 = getelementptr inbounds i8*, i8** %72, i64 %idxprom104
  %73 = load i8*, i8** %arrayidx105, align 8
  %call106 = call i32 @strncmp(i8* %73, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.11, i32 0, i32 0), i64 3) #7
  %cmp107 = icmp eq i32 0, %call106
  br i1 %cmp107, label %if.then.108, label %if.else.110

if.then.108:                                      ; preds = %if.else.103
  %74 = load %struct.inp_par*, %struct.inp_par** @input, align 8
  %write_uv = getelementptr inbounds %struct.inp_par, %struct.inp_par* %74, i32 0, i32 6
  store i32 1, i32* %write_uv, align 4
  %75 = load i32, i32* %CLcount, align 4
  %inc109 = add nsw i32 %75, 1
  store i32 %inc109, i32* %CLcount, align 4
  br label %if.end.112

if.else.110:                                      ; preds = %if.else.103
  %call111 = call i32 (i8*, i64, i8*, ...) @snprintf(i8* getelementptr inbounds ([300 x i8], [300 x i8]* @errortext, i32 0, i32 0), i64 300, i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str.12, i32 0, i32 0)) #5
  call void @error(i8* getelementptr inbounds ([300 x i8], [300 x i8]* @errortext, i32 0, i32 0), i32 300)
  br label %if.end.112

if.end.112:                                       ; preds = %if.else.110, %if.then.108
  br label %if.end.113

if.end.113:                                       ; preds = %if.end.112, %if.then.96
  br label %if.end.114

if.end.114:                                       ; preds = %if.end.113, %if.then.83
  br label %if.end.115

if.end.115:                                       ; preds = %if.end.114, %if.then.70
  br label %if.end.116

if.end.116:                                       ; preds = %if.end.115, %if.then.58
  br label %while.cond

while.end:                                        ; preds = %while.cond
  %76 = load %struct.inp_par*, %struct.inp_par** @input, align 8
  %outfile117 = getelementptr inbounds %struct.inp_par, %struct.inp_par* %76, i32 0, i32 1
  %arraydecay118 = getelementptr inbounds [1000 x i8], [1000 x i8]* %outfile117, i32 0, i32 0
  %call119 = call i32 (i8*, i32, ...) @open64(i8* %arraydecay118, i32 577, i32 384)
  store i32 %call119, i32* @p_out, align 4
  %cmp120 = icmp eq i32 %call119, -1
  br i1 %cmp120, label %if.then.121, label %if.end.125

if.then.121:                                      ; preds = %while.end
  %77 = load %struct.inp_par*, %struct.inp_par** @input, align 8
  %outfile122 = getelementptr inbounds %struct.inp_par, %struct.inp_par* %77, i32 0, i32 1
  %arraydecay123 = getelementptr inbounds [1000 x i8], [1000 x i8]* %outfile122, i32 0, i32 0
  %call124 = call i32 (i8*, i64, i8*, ...) @snprintf(i8* getelementptr inbounds ([300 x i8], [300 x i8]* @errortext, i32 0, i32 0), i64 300, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.13, i32 0, i32 0), i8* %arraydecay123) #5
  call void @error(i8* getelementptr inbounds ([300 x i8], [300 x i8]* @errortext, i32 0, i32 0), i32 500)
  br label %if.end.125

if.end.125:                                       ; preds = %if.then.121, %while.end
  %78 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8
  %call126 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %78, i8* getelementptr inbounds ([70 x i8], [70 x i8]* @.str.14, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.15, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.16, i32 0, i32 0))
  %79 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8
  %80 = load i8*, i8** %config_filename, align 8
  %call127 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %79, i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str.17, i32 0, i32 0), i8* %80)
  %81 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8
  %call128 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %81, i8* getelementptr inbounds ([76 x i8], [76 x i8]* @.str.18, i32 0, i32 0))
  %82 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8
  %83 = load %struct.inp_par*, %struct.inp_par** @input, align 8
  %infile129 = getelementptr inbounds %struct.inp_par, %struct.inp_par* %83, i32 0, i32 0
  %arraydecay130 = getelementptr inbounds [1000 x i8], [1000 x i8]* %infile129, i32 0, i32 0
  %call131 = call i8* @mybasename(i8* %arraydecay130)
  %call132 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %82, i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str.19, i32 0, i32 0), i8* %call131)
  %84 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8
  %85 = load %struct.inp_par*, %struct.inp_par** @input, align 8
  %outfile133 = getelementptr inbounds %struct.inp_par, %struct.inp_par* %85, i32 0, i32 1
  %arraydecay134 = getelementptr inbounds [1000 x i8], [1000 x i8]* %outfile133, i32 0, i32 0
  %call135 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %84, i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str.20, i32 0, i32 0), i8* %arraydecay134)
  %86 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8
  %call136 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %86, i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str.21, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.22, i32 0, i32 0))
  %87 = load %struct.inp_par*, %struct.inp_par** @input, align 8
  %reffile137 = getelementptr inbounds %struct.inp_par, %struct.inp_par* %87, i32 0, i32 2
  %arraydecay138 = getelementptr inbounds [1000 x i8], [1000 x i8]* %reffile137, i32 0, i32 0
  %call139 = call i32 (i8*, i32, ...) @open64(i8* %arraydecay138, i32 0)
  store i32 %call139, i32* @p_ref, align 4
  %cmp140 = icmp eq i32 %call139, -1
  br i1 %cmp140, label %if.then.141, label %if.else.147

if.then.141:                                      ; preds = %if.end.125
  %88 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8
  %89 = load %struct.inp_par*, %struct.inp_par** @input, align 8
  %reffile142 = getelementptr inbounds %struct.inp_par, %struct.inp_par* %89, i32 0, i32 2
  %arraydecay143 = getelementptr inbounds [1000 x i8], [1000 x i8]* %reffile142, i32 0, i32 0
  %call144 = call i8* @mybasename(i8* %arraydecay143)
  %call145 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %88, i8* getelementptr inbounds ([62 x i8], [62 x i8]* @.str.23, i32 0, i32 0), i8* %call144)
  %90 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8
  %call146 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %90, i8* getelementptr inbounds ([72 x i8], [72 x i8]* @.str.24, i32 0, i32 0))
  br label %if.end.152

if.else.147:                                      ; preds = %if.end.125
  %91 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8
  %92 = load %struct.inp_par*, %struct.inp_par** @input, align 8
  %reffile148 = getelementptr inbounds %struct.inp_par, %struct.inp_par* %92, i32 0, i32 2
  %arraydecay149 = getelementptr inbounds [1000 x i8], [1000 x i8]* %reffile148, i32 0, i32 0
  %call150 = call i8* @mybasename(i8* %arraydecay149)
  %call151 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %91, i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str.25, i32 0, i32 0), i8* %call150)
  br label %if.end.152

if.end.152:                                       ; preds = %if.else.147, %if.then.141
  %93 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8
  %call153 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %93, i8* getelementptr inbounds ([76 x i8], [76 x i8]* @.str.18, i32 0, i32 0))
  %94 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8
  %call154 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %94, i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str.26, i32 0, i32 0))
  %95 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8
  %call155 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %95, i8* getelementptr inbounds ([76 x i8], [76 x i8]* @.str.18, i32 0, i32 0))
  %96 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8
  %call156 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %96, i8* getelementptr inbounds ([72 x i8], [72 x i8]* @.str.27, i32 0, i32 0))
  %97 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8
  %call157 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %97, i8* getelementptr inbounds ([76 x i8], [76 x i8]* @.str.18, i32 0, i32 0))
  ret void
}

; Function Attrs: nounwind
declare i8* @strcpy(i8*, i8*) #3

; Function Attrs: nounwind readonly
declare i32 @strncmp(i8*, i8*, i64) #4

; Function Attrs: nounwind uwtable
define void @init_conf(%struct.inp_par* %inp, i8* %config_filename) #0 {
entry:
  %inp.addr = alloca %struct.inp_par*, align 8
  %config_filename.addr = alloca i8*, align 8
  %fd = alloca %struct._IO_FILE*, align 8
  %NAL_mode = alloca i32, align 4
  %temp = alloca i64, align 8
  %tempval = alloca [100 x i8], align 16
  store %struct.inp_par* %inp, %struct.inp_par** %inp.addr, align 8
  store i8* %config_filename, i8** %config_filename.addr, align 8
  %0 = load i8*, i8** %config_filename.addr, align 8
  %call = call %struct._IO_FILE* @fopen64(i8* %0, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.32, i32 0, i32 0))
  store %struct._IO_FILE* %call, %struct._IO_FILE** %fd, align 8
  %cmp = icmp eq %struct._IO_FILE* %call, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %1 = load i8*, i8** %config_filename.addr, align 8
  %call1 = call i32 (i8*, i64, i8*, ...) @snprintf(i8* getelementptr inbounds ([300 x i8], [300 x i8]* @errortext, i32 0, i32 0), i64 300, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.33, i32 0, i32 0), i8* %1) #5
  call void @error(i8* getelementptr inbounds ([300 x i8], [300 x i8]* @errortext, i32 0, i32 0), i32 300)
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %2 = load %struct._IO_FILE*, %struct._IO_FILE** %fd, align 8
  %3 = load %struct.inp_par*, %struct.inp_par** %inp.addr, align 8
  %infile = getelementptr inbounds %struct.inp_par, %struct.inp_par* %3, i32 0, i32 0
  %arraydecay = getelementptr inbounds [1000 x i8], [1000 x i8]* %infile, i32 0, i32 0
  %call2 = call i32 (%struct._IO_FILE*, i8*, ...) @__isoc99_fscanf(%struct._IO_FILE* %2, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.34, i32 0, i32 0), i8* %arraydecay)
  %4 = load %struct._IO_FILE*, %struct._IO_FILE** %fd, align 8
  %call3 = call i32 (%struct._IO_FILE*, i8*, ...) @__isoc99_fscanf(%struct._IO_FILE* %4, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.35, i32 0, i32 0))
  %5 = load %struct._IO_FILE*, %struct._IO_FILE** %fd, align 8
  %6 = load %struct.inp_par*, %struct.inp_par** %inp.addr, align 8
  %outfile = getelementptr inbounds %struct.inp_par, %struct.inp_par* %6, i32 0, i32 1
  %arraydecay4 = getelementptr inbounds [1000 x i8], [1000 x i8]* %outfile, i32 0, i32 0
  %call5 = call i32 (%struct._IO_FILE*, i8*, ...) @__isoc99_fscanf(%struct._IO_FILE* %5, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.34, i32 0, i32 0), i8* %arraydecay4)
  %7 = load %struct._IO_FILE*, %struct._IO_FILE** %fd, align 8
  %call6 = call i32 (%struct._IO_FILE*, i8*, ...) @__isoc99_fscanf(%struct._IO_FILE* %7, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.35, i32 0, i32 0))
  %8 = load %struct._IO_FILE*, %struct._IO_FILE** %fd, align 8
  %9 = load %struct.inp_par*, %struct.inp_par** %inp.addr, align 8
  %reffile = getelementptr inbounds %struct.inp_par, %struct.inp_par* %9, i32 0, i32 2
  %arraydecay7 = getelementptr inbounds [1000 x i8], [1000 x i8]* %reffile, i32 0, i32 0
  %call8 = call i32 (%struct._IO_FILE*, i8*, ...) @__isoc99_fscanf(%struct._IO_FILE* %8, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.34, i32 0, i32 0), i8* %arraydecay7)
  %10 = load %struct._IO_FILE*, %struct._IO_FILE** %fd, align 8
  %call9 = call i32 (%struct._IO_FILE*, i8*, ...) @__isoc99_fscanf(%struct._IO_FILE* %10, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.35, i32 0, i32 0))
  %11 = load %struct._IO_FILE*, %struct._IO_FILE** %fd, align 8
  %12 = load %struct.inp_par*, %struct.inp_par** %inp.addr, align 8
  %write_uv = getelementptr inbounds %struct.inp_par, %struct.inp_par* %12, i32 0, i32 6
  %call10 = call i32 (%struct._IO_FILE*, i8*, ...) @__isoc99_fscanf(%struct._IO_FILE* %11, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.10, i32 0, i32 0), i32* %write_uv)
  %13 = load %struct._IO_FILE*, %struct._IO_FILE** %fd, align 8
  %call11 = call i32 (%struct._IO_FILE*, i8*, ...) @__isoc99_fscanf(%struct._IO_FILE* %13, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.35, i32 0, i32 0))
  %14 = load %struct._IO_FILE*, %struct._IO_FILE** %fd, align 8
  %call12 = call i32 (%struct._IO_FILE*, i8*, ...) @__isoc99_fscanf(%struct._IO_FILE* %14, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.10, i32 0, i32 0), i32* %NAL_mode)
  %15 = load %struct._IO_FILE*, %struct._IO_FILE** %fd, align 8
  %call13 = call i32 (%struct._IO_FILE*, i8*, ...) @__isoc99_fscanf(%struct._IO_FILE* %15, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.35, i32 0, i32 0))
  %16 = load i32, i32* %NAL_mode, align 4
  switch i32 %16, label %sw.default [
    i32 0, label %sw.bb
    i32 1, label %sw.bb.14
  ]

sw.bb:                                            ; preds = %if.end
  %17 = load %struct.inp_par*, %struct.inp_par** %inp.addr, align 8
  %FileFormat = getelementptr inbounds %struct.inp_par, %struct.inp_par* %17, i32 0, i32 3
  store i32 0, i32* %FileFormat, align 4
  br label %sw.epilog

sw.bb.14:                                         ; preds = %if.end
  %18 = load %struct.inp_par*, %struct.inp_par** %inp.addr, align 8
  %FileFormat15 = getelementptr inbounds %struct.inp_par, %struct.inp_par* %18, i32 0, i32 3
  store i32 1, i32* %FileFormat15, align 4
  br label %sw.epilog

sw.default:                                       ; preds = %if.end
  %19 = load i32, i32* %NAL_mode, align 4
  %call16 = call i32 (i8*, i64, i8*, ...) @snprintf(i8* getelementptr inbounds ([300 x i8], [300 x i8]* @errortext, i32 0, i32 0), i64 300, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.36, i32 0, i32 0), i32 %19) #5
  call void @error(i8* getelementptr inbounds ([300 x i8], [300 x i8]* @errortext, i32 0, i32 0), i32 400)
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.default, %sw.bb.14, %sw.bb
  %20 = load %struct._IO_FILE*, %struct._IO_FILE** %fd, align 8
  %21 = load %struct.inp_par*, %struct.inp_par** %inp.addr, align 8
  %ref_offset = getelementptr inbounds %struct.inp_par, %struct.inp_par* %21, i32 0, i32 4
  %call17 = call i32 (%struct._IO_FILE*, i8*, ...) @__isoc99_fscanf(%struct._IO_FILE* %20, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.37, i32 0, i32 0), i32* %ref_offset)
  %22 = load %struct._IO_FILE*, %struct._IO_FILE** %fd, align 8
  %call18 = call i32 (%struct._IO_FILE*, i8*, ...) @__isoc99_fscanf(%struct._IO_FILE* %22, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.35, i32 0, i32 0))
  %23 = load %struct._IO_FILE*, %struct._IO_FILE** %fd, align 8
  %24 = load %struct.inp_par*, %struct.inp_par** %inp.addr, align 8
  %poc_scale = getelementptr inbounds %struct.inp_par, %struct.inp_par* %24, i32 0, i32 5
  %call19 = call i32 (%struct._IO_FILE*, i8*, ...) @__isoc99_fscanf(%struct._IO_FILE* %23, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.37, i32 0, i32 0), i32* %poc_scale)
  %25 = load %struct._IO_FILE*, %struct._IO_FILE** %fd, align 8
  %call20 = call i32 (%struct._IO_FILE*, i8*, ...) @__isoc99_fscanf(%struct._IO_FILE* %25, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.35, i32 0, i32 0))
  %26 = load %struct.inp_par*, %struct.inp_par** %inp.addr, align 8
  %poc_scale21 = getelementptr inbounds %struct.inp_par, %struct.inp_par* %26, i32 0, i32 5
  %27 = load i32, i32* %poc_scale21, align 4
  %cmp22 = icmp slt i32 %27, 1
  br i1 %cmp22, label %if.then.25, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %sw.epilog
  %28 = load %struct.inp_par*, %struct.inp_par** %inp.addr, align 8
  %poc_scale23 = getelementptr inbounds %struct.inp_par, %struct.inp_par* %28, i32 0, i32 5
  %29 = load i32, i32* %poc_scale23, align 4
  %cmp24 = icmp sgt i32 %29, 10
  br i1 %cmp24, label %if.then.25, label %if.end.28

if.then.25:                                       ; preds = %lor.lhs.false, %sw.epilog
  %30 = load %struct.inp_par*, %struct.inp_par** %inp.addr, align 8
  %poc_scale26 = getelementptr inbounds %struct.inp_par, %struct.inp_par* %30, i32 0, i32 5
  %31 = load i32, i32* %poc_scale26, align 4
  %call27 = call i32 (i8*, i64, i8*, ...) @snprintf(i8* getelementptr inbounds ([300 x i8], [300 x i8]* @errortext, i32 0, i32 0), i64 300, i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str.38, i32 0, i32 0), i32 %31) #5
  call void @error(i8* getelementptr inbounds ([300 x i8], [300 x i8]* @errortext, i32 0, i32 0), i32 1)
  br label %if.end.28

if.end.28:                                        ; preds = %if.then.25, %lor.lhs.false
  %32 = load %struct.inp_par*, %struct.inp_par** %inp.addr, align 8
  %write_uv29 = getelementptr inbounds %struct.inp_par, %struct.inp_par* %32, i32 0, i32 6
  store i32 1, i32* %write_uv29, align 4
  %33 = load %struct.inp_par*, %struct.inp_par** %inp.addr, align 8
  %conceal_mode = getelementptr inbounds %struct.inp_par, %struct.inp_par* %33, i32 0, i32 8
  store i32 0, i32* %conceal_mode, align 4
  %34 = load %struct.img_par*, %struct.img_par** @img, align 8
  %conceal_mode30 = getelementptr inbounds %struct.img_par, %struct.img_par* %34, i32 0, i32 130
  store i32 0, i32* %conceal_mode30, align 4
  %35 = load %struct.inp_par*, %struct.inp_par** %inp.addr, align 8
  %ref_poc_gap = getelementptr inbounds %struct.inp_par, %struct.inp_par* %35, i32 0, i32 9
  store i32 2, i32* %ref_poc_gap, align 4
  %36 = load %struct.img_par*, %struct.img_par** @img, align 8
  %ref_poc_gap31 = getelementptr inbounds %struct.img_par, %struct.img_par* %36, i32 0, i32 128
  store i32 2, i32* %ref_poc_gap31, align 4
  %37 = load %struct.inp_par*, %struct.inp_par** %inp.addr, align 8
  %poc_gap = getelementptr inbounds %struct.inp_par, %struct.inp_par* %37, i32 0, i32 10
  store i32 2, i32* %poc_gap, align 4
  %38 = load %struct.img_par*, %struct.img_par** @img, align 8
  %poc_gap32 = getelementptr inbounds %struct.img_par, %struct.img_par* %38, i32 0, i32 129
  store i32 2, i32* %poc_gap32, align 4
  %39 = load %struct._IO_FILE*, %struct._IO_FILE** %fd, align 8
  %call33 = call i32 (%struct._IO_FILE*, i8*, ...) @__isoc99_fscanf(%struct._IO_FILE* %39, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.39, i32 0, i32 0), i64* %temp)
  %40 = load %struct._IO_FILE*, %struct._IO_FILE** %fd, align 8
  %call34 = call i32 (%struct._IO_FILE*, i8*, ...) @__isoc99_fscanf(%struct._IO_FILE* %40, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.35, i32 0, i32 0))
  %41 = load %struct._IO_FILE*, %struct._IO_FILE** %fd, align 8
  %call35 = call i32 (%struct._IO_FILE*, i8*, ...) @__isoc99_fscanf(%struct._IO_FILE* %41, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.39, i32 0, i32 0), i64* %temp)
  %42 = load %struct._IO_FILE*, %struct._IO_FILE** %fd, align 8
  %call36 = call i32 (%struct._IO_FILE*, i8*, ...) @__isoc99_fscanf(%struct._IO_FILE* %42, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.35, i32 0, i32 0))
  %43 = load %struct._IO_FILE*, %struct._IO_FILE** %fd, align 8
  %call37 = call i32 (%struct._IO_FILE*, i8*, ...) @__isoc99_fscanf(%struct._IO_FILE* %43, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.39, i32 0, i32 0), i64* %temp)
  %44 = load %struct._IO_FILE*, %struct._IO_FILE** %fd, align 8
  %call38 = call i32 (%struct._IO_FILE*, i8*, ...) @__isoc99_fscanf(%struct._IO_FILE* %44, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.35, i32 0, i32 0))
  %45 = load %struct._IO_FILE*, %struct._IO_FILE** %fd, align 8
  %arraydecay39 = getelementptr inbounds [100 x i8], [100 x i8]* %tempval, i32 0, i32 0
  %call40 = call i32 (%struct._IO_FILE*, i8*, ...) @__isoc99_fscanf(%struct._IO_FILE* %45, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.34, i32 0, i32 0), i8* %arraydecay39)
  %46 = load %struct._IO_FILE*, %struct._IO_FILE** %fd, align 8
  %call41 = call i32 (%struct._IO_FILE*, i8*, ...) @__isoc99_fscanf(%struct._IO_FILE* %46, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.35, i32 0, i32 0))
  %47 = load %struct._IO_FILE*, %struct._IO_FILE** %fd, align 8
  %48 = load %struct.inp_par*, %struct.inp_par** %inp.addr, align 8
  %conceal_mode42 = getelementptr inbounds %struct.inp_par, %struct.inp_par* %48, i32 0, i32 8
  %call43 = call i32 (%struct._IO_FILE*, i8*, ...) @__isoc99_fscanf(%struct._IO_FILE* %47, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.10, i32 0, i32 0), i32* %conceal_mode42)
  %49 = load %struct._IO_FILE*, %struct._IO_FILE** %fd, align 8
  %call44 = call i32 (%struct._IO_FILE*, i8*, ...) @__isoc99_fscanf(%struct._IO_FILE* %49, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.35, i32 0, i32 0))
  %50 = load %struct.inp_par*, %struct.inp_par** %inp.addr, align 8
  %conceal_mode45 = getelementptr inbounds %struct.inp_par, %struct.inp_par* %50, i32 0, i32 8
  %51 = load i32, i32* %conceal_mode45, align 4
  %52 = load %struct.img_par*, %struct.img_par** @img, align 8
  %conceal_mode46 = getelementptr inbounds %struct.img_par, %struct.img_par* %52, i32 0, i32 130
  store i32 %51, i32* %conceal_mode46, align 4
  %53 = load %struct._IO_FILE*, %struct._IO_FILE** %fd, align 8
  %54 = load %struct.inp_par*, %struct.inp_par** %inp.addr, align 8
  %ref_poc_gap47 = getelementptr inbounds %struct.inp_par, %struct.inp_par* %54, i32 0, i32 9
  %call48 = call i32 (%struct._IO_FILE*, i8*, ...) @__isoc99_fscanf(%struct._IO_FILE* %53, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.10, i32 0, i32 0), i32* %ref_poc_gap47)
  %55 = load %struct._IO_FILE*, %struct._IO_FILE** %fd, align 8
  %call49 = call i32 (%struct._IO_FILE*, i8*, ...) @__isoc99_fscanf(%struct._IO_FILE* %55, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.35, i32 0, i32 0))
  %56 = load %struct.inp_par*, %struct.inp_par** %inp.addr, align 8
  %ref_poc_gap50 = getelementptr inbounds %struct.inp_par, %struct.inp_par* %56, i32 0, i32 9
  %57 = load i32, i32* %ref_poc_gap50, align 4
  %58 = load %struct.img_par*, %struct.img_par** @img, align 8
  %ref_poc_gap51 = getelementptr inbounds %struct.img_par, %struct.img_par* %58, i32 0, i32 128
  store i32 %57, i32* %ref_poc_gap51, align 4
  %59 = load %struct._IO_FILE*, %struct._IO_FILE** %fd, align 8
  %60 = load %struct.inp_par*, %struct.inp_par** %inp.addr, align 8
  %poc_gap52 = getelementptr inbounds %struct.inp_par, %struct.inp_par* %60, i32 0, i32 10
  %call53 = call i32 (%struct._IO_FILE*, i8*, ...) @__isoc99_fscanf(%struct._IO_FILE* %59, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.10, i32 0, i32 0), i32* %poc_gap52)
  %61 = load %struct._IO_FILE*, %struct._IO_FILE** %fd, align 8
  %call54 = call i32 (%struct._IO_FILE*, i8*, ...) @__isoc99_fscanf(%struct._IO_FILE* %61, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.35, i32 0, i32 0))
  %62 = load %struct.inp_par*, %struct.inp_par** %inp.addr, align 8
  %poc_gap55 = getelementptr inbounds %struct.inp_par, %struct.inp_par* %62, i32 0, i32 10
  %63 = load i32, i32* %poc_gap55, align 4
  %64 = load %struct.img_par*, %struct.img_par** @img, align 8
  %poc_gap56 = getelementptr inbounds %struct.img_par, %struct.img_par* %64, i32 0, i32 129
  store i32 %63, i32* %poc_gap56, align 4
  %65 = load %struct._IO_FILE*, %struct._IO_FILE** %fd, align 8
  %66 = load %struct.inp_par*, %struct.inp_par** %inp.addr, align 8
  %silent = getelementptr inbounds %struct.inp_par, %struct.inp_par* %66, i32 0, i32 7
  %call57 = call i32 (%struct._IO_FILE*, i8*, ...) @__isoc99_fscanf(%struct._IO_FILE* %65, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.37, i32 0, i32 0), i32* %silent)
  %67 = load %struct._IO_FILE*, %struct._IO_FILE** %fd, align 8
  %call58 = call i32 (%struct._IO_FILE*, i8*, ...) @__isoc99_fscanf(%struct._IO_FILE* %67, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.35, i32 0, i32 0))
  %68 = load %struct._IO_FILE*, %struct._IO_FILE** %fd, align 8
  %call59 = call i32 @fclose(%struct._IO_FILE* %68)
  ret void
}

; Function Attrs: nounwind
declare i32 @__isoc99_sscanf(i8*, i8*, ...) #3

; Function Attrs: nounwind
declare i32 @snprintf(i8*, i64, i8*, ...) #3

declare void @error(i8*, i32) #1

declare i32 @open64(i8*, i32, ...) #1

; Function Attrs: nounwind uwtable
define internal i8* @mybasename(i8* %str) #0 {
entry:
  %str.addr = alloca i8*, align 8
  %base = alloca i8*, align 8
  store i8* %str, i8** %str.addr, align 8
  %0 = load i8*, i8** %str.addr, align 8
  %call = call i8* @strrchr(i8* %0, i32 47) #7
  store i8* %call, i8** %base, align 8
  %1 = load i8*, i8** %base, align 8
  %tobool = icmp ne i8* %1, null
  br i1 %tobool, label %cond.true, label %cond.false

cond.true:                                        ; preds = %entry
  %2 = load i8*, i8** %base, align 8
  %add.ptr = getelementptr inbounds i8, i8* %2, i64 1
  br label %cond.end

cond.false:                                       ; preds = %entry
  %3 = load i8*, i8** %str.addr, align 8
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i8* [ %add.ptr, %cond.true ], [ %3, %cond.false ]
  ret i8* %cond
}

; Function Attrs: nounwind uwtable
define i32 @main(i32 %argc, i8** %argv) #0 {
entry:
  %retval = alloca i32, align 4
  %argc.addr = alloca i32, align 4
  %argv.addr = alloca i8**, align 8
  %i = alloca i32, align 4
  store i32 0, i32* %retval
  store i32 %argc, i32* %argc.addr, align 4
  store i8** %argv, i8*** %argv.addr, align 8
  %call = call noalias i8* @calloc(i64 1, i64 3032) #5
  %0 = bitcast i8* %call to %struct.inp_par*
  store %struct.inp_par* %0, %struct.inp_par** @input, align 8
  %cmp = icmp eq %struct.inp_par* %0, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  call void @no_mem_exit(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.28, i32 0, i32 0))
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %call1 = call noalias i8* @calloc(i64 1, i64 64) #5
  %1 = bitcast i8* %call1 to %struct.snr_par*
  store %struct.snr_par* %1, %struct.snr_par** @snr, align 8
  %cmp2 = icmp eq %struct.snr_par* %1, null
  br i1 %cmp2, label %if.then.3, label %if.end.4

if.then.3:                                        ; preds = %if.end
  call void @no_mem_exit(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.29, i32 0, i32 0))
  br label %if.end.4

if.end.4:                                         ; preds = %if.then.3, %if.end
  %call5 = call noalias i8* @calloc(i64 1, i64 6112) #5
  %2 = bitcast i8* %call5 to %struct.img_par*
  store %struct.img_par* %2, %struct.img_par** @img, align 8
  %cmp6 = icmp eq %struct.img_par* %2, null
  br i1 %cmp6, label %if.then.7, label %if.end.8

if.then.7:                                        ; preds = %if.end.4
  call void @no_mem_exit(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.30, i32 0, i32 0))
  br label %if.end.8

if.end.8:                                         ; preds = %if.then.7, %if.end.4
  %3 = load i32, i32* %argc.addr, align 4
  %4 = load i8**, i8*** %argv.addr, align 8
  call void @Configure(i32 %3, i8** %4)
  call void (...) @init_old_slice()
  %5 = load %struct.inp_par*, %struct.inp_par** @input, align 8
  %FileFormat = getelementptr inbounds %struct.inp_par, %struct.inp_par* %5, i32 0, i32 3
  %6 = load i32, i32* %FileFormat, align 4
  switch i32 %6, label %sw.default [
    i32 0, label %sw.bb
    i32 1, label %sw.bb.9
  ]

sw.bb:                                            ; preds = %if.end.8
  %7 = load %struct.inp_par*, %struct.inp_par** @input, align 8
  %infile = getelementptr inbounds %struct.inp_par, %struct.inp_par* %7, i32 0, i32 0
  %arraydecay = getelementptr inbounds [1000 x i8], [1000 x i8]* %infile, i32 0, i32 0
  call void @OpenBitstreamFile(i8* %arraydecay)
  br label %sw.epilog

sw.bb.9:                                          ; preds = %if.end.8
  %8 = load %struct.inp_par*, %struct.inp_par** @input, align 8
  %infile10 = getelementptr inbounds %struct.inp_par, %struct.inp_par* %8, i32 0, i32 0
  %arraydecay11 = getelementptr inbounds [1000 x i8], [1000 x i8]* %infile10, i32 0, i32 0
  call void @OpenRTPFile(i8* %arraydecay11)
  br label %sw.epilog

sw.default:                                       ; preds = %if.end.8
  %9 = load %struct.inp_par*, %struct.inp_par** @input, align 8
  %FileFormat12 = getelementptr inbounds %struct.inp_par, %struct.inp_par* %9, i32 0, i32 3
  %10 = load i32, i32* %FileFormat12, align 4
  %call13 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.31, i32 0, i32 0), i32 %10)
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.default, %sw.bb.9, %sw.bb
  %11 = load %struct.inp_par*, %struct.inp_par** @input, align 8
  %12 = load %struct.img_par*, %struct.img_par** @img, align 8
  call void @malloc_slice(%struct.inp_par* %11, %struct.img_par* %12)
  %13 = load %struct.img_par*, %struct.img_par** @img, align 8
  call void @init(%struct.img_par* %13)
  store %struct.storable_picture* null, %struct.storable_picture** @dec_picture, align 8
  store i32 0, i32* getelementptr inbounds (%struct.decoded_picture_buffer, %struct.decoded_picture_buffer* @dpb, i32 0, i32 9), align 4
  store i32 0, i32* @g_nFrame, align 4
  call void (...) @init_out_buffer()
  %14 = load %struct.inp_par*, %struct.inp_par** @input, align 8
  %ref_offset = getelementptr inbounds %struct.inp_par, %struct.inp_par* %14, i32 0, i32 4
  %15 = load i32, i32* %ref_offset, align 4
  %16 = load %struct.img_par*, %struct.img_par** @img, align 8
  %idr_psnr_number = getelementptr inbounds %struct.img_par, %struct.img_par* %16, i32 0, i32 121
  store i32 %15, i32* %idr_psnr_number, align 4
  %17 = load %struct.img_par*, %struct.img_par** @img, align 8
  %psnr_number = getelementptr inbounds %struct.img_par, %struct.img_par* %17, i32 0, i32 122
  store i32 0, i32* %psnr_number, align 4
  %18 = load %struct.img_par*, %struct.img_par** @img, align 8
  %number = getelementptr inbounds %struct.img_par, %struct.img_par* %18, i32 0, i32 0
  store i32 0, i32* %number, align 4
  %19 = load %struct.img_par*, %struct.img_par** @img, align 8
  %type = getelementptr inbounds %struct.img_par, %struct.img_par* %19, i32 0, i32 10
  store i32 2, i32* %type, align 4
  %20 = load %struct.img_par*, %struct.img_par** @img, align 8
  %dec_ref_pic_marking_buffer = getelementptr inbounds %struct.img_par, %struct.img_par* %20, i32 0, i32 46
  store %struct.DecRefPicMarking_s* null, %struct.DecRefPicMarking_s** %dec_ref_pic_marking_buffer, align 8
  %21 = load %struct.snr_par*, %struct.snr_par** @snr, align 8
  %frame_ctr = getelementptr inbounds %struct.snr_par, %struct.snr_par* %21, i32 0, i32 0
  store i32 0, i32* %frame_ctr, align 4
  store i32 0, i32* @Bframe_ctr, align 4
  store i64 0, i64* @tot_time, align 8
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %sw.epilog
  %22 = load i32, i32* %i, align 4
  %cmp14 = icmp slt i32 %22, 17
  br i1 %cmp14, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %23 = load i32, i32* %i, align 4
  %idxprom = sext i32 %23 to i64
  %arrayidx = getelementptr inbounds [17 x i32], [17 x i32]* @ref_flag, i32 0, i64 %idxprom
  store i32 1, i32* %arrayidx, align 4
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %24 = load i32, i32* %i, align 4
  %inc = add nsw i32 %24, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  br label %while.cond

while.cond:                                       ; preds = %while.body, %for.end
  %25 = load %struct.img_par*, %struct.img_par** @img, align 8
  %26 = load %struct.inp_par*, %struct.inp_par** @input, align 8
  %27 = load %struct.snr_par*, %struct.snr_par** @snr, align 8
  %call15 = call i32 @decode_one_frame(%struct.img_par* %25, %struct.inp_par* %26, %struct.snr_par* %27)
  %cmp16 = icmp ne i32 %call15, 1
  br i1 %cmp16, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  br label %while.cond

while.end:                                        ; preds = %while.cond
  %28 = load %struct.inp_par*, %struct.inp_par** @input, align 8
  %29 = load %struct.img_par*, %struct.img_par** @img, align 8
  %30 = load %struct.snr_par*, %struct.snr_par** @snr, align 8
  call void @report(%struct.inp_par* %28, %struct.img_par* %29, %struct.snr_par* %30)
  %31 = load %struct.inp_par*, %struct.inp_par** @input, align 8
  %32 = load %struct.img_par*, %struct.img_par** @img, align 8
  call void @free_slice(%struct.inp_par* %31, %struct.img_par* %32)
  %call17 = call i32 (...) @FmoFinit()
  call void @free_global_buffers()
  call void @flush_dpb()
  call void (...) @CloseBitstreamFile()
  %33 = load i32, i32* @p_out, align 4
  %call18 = call i32 @close(i32 %33)
  %34 = load i32, i32* @p_ref, align 4
  %cmp19 = icmp ne i32 %34, -1
  br i1 %cmp19, label %if.then.20, label %if.end.22

if.then.20:                                       ; preds = %while.end
  %35 = load i32, i32* @p_ref, align 4
  %call21 = call i32 @close(i32 %35)
  br label %if.end.22

if.end.22:                                        ; preds = %if.then.20, %while.end
  %36 = load %struct.ercVariables_s*, %struct.ercVariables_s** @erc_errorVar, align 8
  call void @ercClose(%struct.ercVariables_s* %36)
  call void (...) @CleanUpPPS()
  call void @free_dpb()
  call void (...) @uninit_out_buffer()
  %37 = load %struct.colocated_params*, %struct.colocated_params** @Co_located, align 8
  call void @free_colocated(%struct.colocated_params* %37)
  %38 = load %struct.inp_par*, %struct.inp_par** @input, align 8
  %39 = bitcast %struct.inp_par* %38 to i8*
  call void @free(i8* %39) #5
  %40 = load %struct.snr_par*, %struct.snr_par** @snr, align 8
  %41 = bitcast %struct.snr_par* %40 to i8*
  call void @free(i8* %41) #5
  %42 = load %struct.img_par*, %struct.img_par** @img, align 8
  %43 = bitcast %struct.img_par* %42 to i8*
  call void @free(i8* %43) #5
  ret i32 0
}

; Function Attrs: nounwind
declare noalias i8* @calloc(i64, i64) #3

declare void @no_mem_exit(i8*) #1

declare void @init_old_slice(...) #1

declare void @OpenBitstreamFile(i8*) #1

declare void @OpenRTPFile(i8*) #1

declare i32 @printf(i8*, ...) #1

; Function Attrs: nounwind uwtable
define void @malloc_slice(%struct.inp_par* %inp, %struct.img_par* %img) #0 {
entry:
  %inp.addr = alloca %struct.inp_par*, align 8
  %img.addr = alloca %struct.img_par*, align 8
  %currSlice = alloca %struct.Slice*, align 8
  store %struct.inp_par* %inp, %struct.inp_par** %inp.addr, align 8
  store %struct.img_par* %img, %struct.img_par** %img.addr, align 8
  %call = call noalias i8* @calloc(i64 1, i64 152) #5
  %0 = bitcast i8* %call to %struct.Slice*
  %1 = load %struct.img_par*, %struct.img_par** %img.addr, align 8
  %currentSlice = getelementptr inbounds %struct.img_par, %struct.img_par* %1, i32 0, i32 38
  store %struct.Slice* %0, %struct.Slice** %currentSlice, align 8
  %2 = load %struct.img_par*, %struct.img_par** %img.addr, align 8
  %currentSlice1 = getelementptr inbounds %struct.img_par, %struct.img_par* %2, i32 0, i32 38
  %3 = load %struct.Slice*, %struct.Slice** %currentSlice1, align 8
  store %struct.Slice* %3, %struct.Slice** %currSlice, align 8
  %cmp = icmp eq %struct.Slice* %3, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %4 = load %struct.inp_par*, %struct.inp_par** %inp.addr, align 8
  %FileFormat = getelementptr inbounds %struct.inp_par, %struct.inp_par* %4, i32 0, i32 3
  %5 = load i32, i32* %FileFormat, align 4
  %call2 = call i32 (i8*, i64, i8*, ...) @snprintf(i8* getelementptr inbounds ([300 x i8], [300 x i8]* @errortext, i32 0, i32 0), i64 300, i8* getelementptr inbounds ([61 x i8], [61 x i8]* @.str.71, i32 0, i32 0), i32 %5) #5
  call void @error(i8* getelementptr inbounds ([300 x i8], [300 x i8]* @errortext, i32 0, i32 0), i32 100)
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %call3 = call %struct.MotionInfoContexts* @create_contexts_MotionInfo()
  %6 = load %struct.Slice*, %struct.Slice** %currSlice, align 8
  %mot_ctx = getelementptr inbounds %struct.Slice, %struct.Slice* %6, i32 0, i32 10
  store %struct.MotionInfoContexts* %call3, %struct.MotionInfoContexts** %mot_ctx, align 8
  %call4 = call %struct.TextureInfoContexts* @create_contexts_TextureInfo()
  %7 = load %struct.Slice*, %struct.Slice** %currSlice, align 8
  %tex_ctx = getelementptr inbounds %struct.Slice, %struct.Slice* %7, i32 0, i32 11
  store %struct.TextureInfoContexts* %call4, %struct.TextureInfoContexts** %tex_ctx, align 8
  %8 = load %struct.Slice*, %struct.Slice** %currSlice, align 8
  %max_part_nr = getelementptr inbounds %struct.Slice, %struct.Slice* %8, i32 0, i32 6
  store i32 3, i32* %max_part_nr, align 4
  %9 = load %struct.Slice*, %struct.Slice** %currSlice, align 8
  %max_part_nr5 = getelementptr inbounds %struct.Slice, %struct.Slice* %9, i32 0, i32 6
  %10 = load i32, i32* %max_part_nr5, align 4
  %call6 = call %struct.datapartition* @AllocPartition(i32 %10)
  %11 = load %struct.Slice*, %struct.Slice** %currSlice, align 8
  %partArr = getelementptr inbounds %struct.Slice, %struct.Slice* %11, i32 0, i32 9
  store %struct.datapartition* %call6, %struct.datapartition** %partArr, align 8
  ret void
}

; Function Attrs: nounwind uwtable
define void @init(%struct.img_par* %img) #0 {
entry:
  %img.addr = alloca %struct.img_par*, align 8
  store %struct.img_par* %img, %struct.img_par** %img.addr, align 8
  %0 = load %struct.img_par*, %struct.img_par** %img.addr, align 8
  %oldFrameSizeInMbs = getelementptr inbounds %struct.img_par, %struct.img_par* %0, i32 0, i32 93
  store i32 -1, i32* %oldFrameSizeInMbs, align 4
  store i16** null, i16*** @imgY_ref, align 8
  store i16*** null, i16**** @imgUV_ref, align 8
  %1 = load %struct.img_par*, %struct.img_par** %img.addr, align 8
  %recovery_point = getelementptr inbounds %struct.img_par, %struct.img_par* %1, i32 0, i32 135
  store i32 0, i32* %recovery_point, align 4
  %2 = load %struct.img_par*, %struct.img_par** %img.addr, align 8
  %recovery_point_found = getelementptr inbounds %struct.img_par, %struct.img_par* %2, i32 0, i32 136
  store i32 0, i32* %recovery_point_found, align 4
  %3 = load %struct.img_par*, %struct.img_par** %img.addr, align 8
  %recovery_poc = getelementptr inbounds %struct.img_par, %struct.img_par* %3, i32 0, i32 139
  store i32 2147483647, i32* %recovery_poc, align 4
  ret void
}

declare void @init_out_buffer(...) #1

declare i32 @decode_one_frame(%struct.img_par*, %struct.inp_par*, %struct.snr_par*) #1

; Function Attrs: nounwind uwtable
define void @report(%struct.inp_par* %inp, %struct.img_par* %img, %struct.snr_par* %snr) #0 {
entry:
  %inp.addr = alloca %struct.inp_par*, align 8
  %img.addr = alloca %struct.img_par*, align 8
  %snr.addr = alloca %struct.snr_par*, align 8
  %string = alloca [255 x i8], align 16
  %p_log = alloca %struct._IO_FILE*, align 8
  %yuv_formats = alloca [4 x [4 x i8]], align 16
  %now = alloca i64, align 8
  %l_time = alloca %struct.tm*, align 8
  store %struct.inp_par* %inp, %struct.inp_par** %inp.addr, align 8
  store %struct.img_par* %img, %struct.img_par** %img.addr, align 8
  store %struct.snr_par* %snr, %struct.snr_par** %snr.addr, align 8
  %0 = bitcast [4 x [4 x i8]]* %yuv_formats to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %0, i8* getelementptr inbounds ([4 x [4 x i8]], [4 x [4 x i8]]* @report.yuv_formats, i32 0, i32 0, i32 0), i64 16, i32 16, i1 false)
  %1 = load %struct.inp_par*, %struct.inp_par** @input, align 8
  %silent = getelementptr inbounds %struct.inp_par, %struct.inp_par* %1, i32 0, i32 7
  %2 = load i32, i32* %silent, align 4
  %cmp = icmp eq i32 %2, 0
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %3 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8
  %call = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %3, i8* getelementptr inbounds ([76 x i8], [76 x i8]* @.str.40, i32 0, i32 0))
  %4 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8
  %5 = load %struct.snr_par*, %struct.snr_par** %snr.addr, align 8
  %snr_ya = getelementptr inbounds %struct.snr_par, %struct.snr_par* %5, i32 0, i32 7
  %6 = load float, float* %snr_ya, align 4
  %conv = fpext float %6 to double
  %call1 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %4, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.41, i32 0, i32 0), double %conv)
  %7 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8
  %8 = load %struct.snr_par*, %struct.snr_par** %snr.addr, align 8
  %snr_ua = getelementptr inbounds %struct.snr_par, %struct.snr_par* %8, i32 0, i32 8
  %9 = load float, float* %snr_ua, align 4
  %conv2 = fpext float %9 to double
  %call3 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %7, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.42, i32 0, i32 0), double %conv2)
  %10 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8
  %11 = load %struct.snr_par*, %struct.snr_par** %snr.addr, align 8
  %snr_va = getelementptr inbounds %struct.snr_par, %struct.snr_par* %11, i32 0, i32 9
  %12 = load float, float* %snr_va, align 4
  %conv4 = fpext float %12 to double
  %call5 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %10, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.43, i32 0, i32 0), double %conv4)
  %13 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8
  %call6 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %13, i8* getelementptr inbounds ([76 x i8], [76 x i8]* @.str.18, i32 0, i32 0))
  %14 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8
  %call7 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %14, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.44, i32 0, i32 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.45, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.15, i32 0, i32 0))
  %15 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8
  %call8 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %15, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.46, i32 0, i32 0))
  br label %if.end

if.else:                                          ; preds = %entry
  %16 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8
  %call9 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %16, i8* getelementptr inbounds ([77 x i8], [77 x i8]* @.str.47, i32 0, i32 0))
  %17 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8
  %call10 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %17, i8* getelementptr inbounds ([76 x i8], [76 x i8]* @.str.18, i32 0, i32 0))
  %18 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8
  %call11 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %18, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.44, i32 0, i32 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.45, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.15, i32 0, i32 0))
  %19 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8
  %call12 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %19, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.46, i32 0, i32 0))
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %arraydecay = getelementptr inbounds [255 x i8], [255 x i8]* %string, i32 0, i32 0
  %call13 = call i32 (i8*, i64, i8*, ...) @snprintf(i8* %arraydecay, i64 255, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.34, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.22, i32 0, i32 0)) #5
  %arraydecay14 = getelementptr inbounds [255 x i8], [255 x i8]* %string, i32 0, i32 0
  %call15 = call %struct._IO_FILE* @fopen64(i8* %arraydecay14, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.32, i32 0, i32 0))
  store %struct._IO_FILE* %call15, %struct._IO_FILE** %p_log, align 8
  %cmp16 = icmp eq %struct._IO_FILE* %call15, null
  br i1 %cmp16, label %if.then.18, label %if.else.33

if.then.18:                                       ; preds = %if.end
  %arraydecay19 = getelementptr inbounds [255 x i8], [255 x i8]* %string, i32 0, i32 0
  %call20 = call %struct._IO_FILE* @fopen64(i8* %arraydecay19, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.48, i32 0, i32 0))
  store %struct._IO_FILE* %call20, %struct._IO_FILE** %p_log, align 8
  %cmp21 = icmp eq %struct._IO_FILE* %call20, null
  br i1 %cmp21, label %if.then.23, label %if.else.26

if.then.23:                                       ; preds = %if.then.18
  %arraydecay24 = getelementptr inbounds [255 x i8], [255 x i8]* %string, i32 0, i32 0
  %call25 = call i32 (i8*, i64, i8*, ...) @snprintf(i8* getelementptr inbounds ([300 x i8], [300 x i8]* @errortext, i32 0, i32 0), i64 300, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.49, i32 0, i32 0), i8* %arraydecay24) #5
  call void @error(i8* getelementptr inbounds ([300 x i8], [300 x i8]* @errortext, i32 0, i32 0), i32 500)
  br label %if.end.32

if.else.26:                                       ; preds = %if.then.18
  %20 = load %struct._IO_FILE*, %struct._IO_FILE** %p_log, align 8
  %call27 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %20, i8* getelementptr inbounds ([118 x i8], [118 x i8]* @.str.50, i32 0, i32 0))
  %21 = load %struct._IO_FILE*, %struct._IO_FILE** %p_log, align 8
  %call28 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %21, i8* getelementptr inbounds ([94 x i8], [94 x i8]* @.str.51, i32 0, i32 0))
  %22 = load %struct._IO_FILE*, %struct._IO_FILE** %p_log, align 8
  %call29 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %22, i8* getelementptr inbounds ([119 x i8], [119 x i8]* @.str.52, i32 0, i32 0))
  %23 = load %struct._IO_FILE*, %struct._IO_FILE** %p_log, align 8
  %call30 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %23, i8* getelementptr inbounds ([119 x i8], [119 x i8]* @.str.53, i32 0, i32 0))
  %24 = load %struct._IO_FILE*, %struct._IO_FILE** %p_log, align 8
  %call31 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %24, i8* getelementptr inbounds ([118 x i8], [118 x i8]* @.str.50, i32 0, i32 0))
  br label %if.end.32

if.end.32:                                        ; preds = %if.else.26, %if.then.23
  br label %if.end.37

if.else.33:                                       ; preds = %if.end
  %25 = load %struct._IO_FILE*, %struct._IO_FILE** %p_log, align 8
  %call34 = call i32 @fclose(%struct._IO_FILE* %25)
  %arraydecay35 = getelementptr inbounds [255 x i8], [255 x i8]* %string, i32 0, i32 0
  %call36 = call %struct._IO_FILE* @fopen64(i8* %arraydecay35, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.48, i32 0, i32 0))
  store %struct._IO_FILE* %call36, %struct._IO_FILE** %p_log, align 8
  br label %if.end.37

if.end.37:                                        ; preds = %if.else.33, %if.end.32
  %26 = load %struct._IO_FILE*, %struct._IO_FILE** %p_log, align 8
  %call38 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %26, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.54, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.15, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.16, i32 0, i32 0))
  %call39 = call i64 @time(i64* null) #5
  store i64 %call39, i64* %now, align 8
  %call40 = call i64 @time(i64* %now) #5
  %call41 = call %struct.tm* @localtime(i64* %now) #5
  store %struct.tm* %call41, %struct.tm** %l_time, align 8
  %arraydecay42 = getelementptr inbounds [255 x i8], [255 x i8]* %string, i32 0, i32 0
  %27 = load %struct.tm*, %struct.tm** %l_time, align 8
  %call43 = call i64 @strftime(i8* %arraydecay42, i64 255, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.55, i32 0, i32 0), %struct.tm* %27) #5
  %28 = load %struct._IO_FILE*, %struct._IO_FILE** %p_log, align 8
  %arraydecay44 = getelementptr inbounds [255 x i8], [255 x i8]* %string, i32 0, i32 0
  %call45 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %28, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.56, i32 0, i32 0), i8* %arraydecay44)
  %arraydecay46 = getelementptr inbounds [255 x i8], [255 x i8]* %string, i32 0, i32 0
  %29 = load %struct.tm*, %struct.tm** %l_time, align 8
  %call47 = call i64 @strftime(i8* %arraydecay46, i64 255, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.57, i32 0, i32 0), %struct.tm* %29) #5
  %30 = load %struct._IO_FILE*, %struct._IO_FILE** %p_log, align 8
  %arraydecay48 = getelementptr inbounds [255 x i8], [255 x i8]* %string, i32 0, i32 0
  %call49 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %30, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.56, i32 0, i32 0), i8* %arraydecay48)
  %31 = load %struct._IO_FILE*, %struct._IO_FILE** %p_log, align 8
  %32 = load %struct.inp_par*, %struct.inp_par** %inp.addr, align 8
  %infile = getelementptr inbounds %struct.inp_par, %struct.inp_par* %32, i32 0, i32 0
  %arraydecay50 = getelementptr inbounds [1000 x i8], [1000 x i8]* %infile, i32 0, i32 0
  %call51 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %31, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.58, i32 0, i32 0), i8* %arraydecay50)
  %33 = load %struct._IO_FILE*, %struct._IO_FILE** %p_log, align 8
  %34 = load %struct.img_par*, %struct.img_par** %img.addr, align 8
  %number = getelementptr inbounds %struct.img_par, %struct.img_par* %34, i32 0, i32 0
  %35 = load i32, i32* %number, align 4
  %call52 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %33, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.59, i32 0, i32 0), i32 %35)
  %36 = load %struct._IO_FILE*, %struct._IO_FILE** %p_log, align 8
  %37 = load %struct.img_par*, %struct.img_par** %img.addr, align 8
  %width = getelementptr inbounds %struct.img_par, %struct.img_par* %37, i32 0, i32 11
  %38 = load i32, i32* %width, align 4
  %39 = load %struct.img_par*, %struct.img_par** %img.addr, align 8
  %height = getelementptr inbounds %struct.img_par, %struct.img_par* %39, i32 0, i32 12
  %40 = load i32, i32* %height, align 4
  %call53 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %36, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.60, i32 0, i32 0), i32 %38, i32 %40)
  %41 = load %struct._IO_FILE*, %struct._IO_FILE** %p_log, align 8
  %42 = load %struct.img_par*, %struct.img_par** %img.addr, align 8
  %yuv_format = getelementptr inbounds %struct.img_par, %struct.img_par* %42, i32 0, i32 111
  %43 = load i32, i32* %yuv_format, align 4
  %idxprom = sext i32 %43 to i64
  %arrayidx = getelementptr inbounds [4 x [4 x i8]], [4 x [4 x i8]]* %yuv_formats, i32 0, i64 %idxprom
  %arrayidx54 = getelementptr inbounds [4 x i8], [4 x i8]* %arrayidx, i32 0, i64 0
  %call55 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %41, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.61, i32 0, i32 0), i8* %arrayidx54)
  %44 = load %struct.pic_parameter_set_rbsp_t*, %struct.pic_parameter_set_rbsp_t** @active_pps, align 8
  %tobool = icmp ne %struct.pic_parameter_set_rbsp_t* %44, null
  br i1 %tobool, label %if.then.56, label %if.end.64

if.then.56:                                       ; preds = %if.end.37
  %45 = load %struct.pic_parameter_set_rbsp_t*, %struct.pic_parameter_set_rbsp_t** @active_pps, align 8
  %entropy_coding_mode_flag = getelementptr inbounds %struct.pic_parameter_set_rbsp_t, %struct.pic_parameter_set_rbsp_t* %45, i32 0, i32 3
  %46 = load i32, i32* %entropy_coding_mode_flag, align 4
  %cmp57 = icmp eq i32 %46, 0
  br i1 %cmp57, label %if.then.59, label %if.else.61

if.then.59:                                       ; preds = %if.then.56
  %47 = load %struct._IO_FILE*, %struct._IO_FILE** %p_log, align 8
  %call60 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %47, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.62, i32 0, i32 0))
  br label %if.end.63

if.else.61:                                       ; preds = %if.then.56
  %48 = load %struct._IO_FILE*, %struct._IO_FILE** %p_log, align 8
  %call62 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %48, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.63, i32 0, i32 0))
  br label %if.end.63

if.end.63:                                        ; preds = %if.else.61, %if.then.59
  br label %if.end.64

if.end.64:                                        ; preds = %if.end.63, %if.end.37
  %49 = load %struct._IO_FILE*, %struct._IO_FILE** %p_log, align 8
  %50 = load %struct.snr_par*, %struct.snr_par** %snr.addr, align 8
  %snr_y1 = getelementptr inbounds %struct.snr_par, %struct.snr_par* %50, i32 0, i32 4
  %51 = load float, float* %snr_y1, align 4
  %conv65 = fpext float %51 to double
  %call66 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %49, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.64, i32 0, i32 0), double %conv65)
  %52 = load %struct._IO_FILE*, %struct._IO_FILE** %p_log, align 8
  %53 = load %struct.snr_par*, %struct.snr_par** %snr.addr, align 8
  %snr_u1 = getelementptr inbounds %struct.snr_par, %struct.snr_par* %53, i32 0, i32 5
  %54 = load float, float* %snr_u1, align 4
  %conv67 = fpext float %54 to double
  %call68 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %52, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.64, i32 0, i32 0), double %conv67)
  %55 = load %struct._IO_FILE*, %struct._IO_FILE** %p_log, align 8
  %56 = load %struct.snr_par*, %struct.snr_par** %snr.addr, align 8
  %snr_v1 = getelementptr inbounds %struct.snr_par, %struct.snr_par* %56, i32 0, i32 6
  %57 = load float, float* %snr_v1, align 4
  %conv69 = fpext float %57 to double
  %call70 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %55, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.64, i32 0, i32 0), double %conv69)
  %58 = load %struct._IO_FILE*, %struct._IO_FILE** %p_log, align 8
  %59 = load %struct.snr_par*, %struct.snr_par** %snr.addr, align 8
  %snr_ya71 = getelementptr inbounds %struct.snr_par, %struct.snr_par* %59, i32 0, i32 7
  %60 = load float, float* %snr_ya71, align 4
  %conv72 = fpext float %60 to double
  %call73 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %58, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.64, i32 0, i32 0), double %conv72)
  %61 = load %struct._IO_FILE*, %struct._IO_FILE** %p_log, align 8
  %62 = load %struct.snr_par*, %struct.snr_par** %snr.addr, align 8
  %snr_ua74 = getelementptr inbounds %struct.snr_par, %struct.snr_par* %62, i32 0, i32 8
  %63 = load float, float* %snr_ua74, align 4
  %conv75 = fpext float %63 to double
  %call76 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %61, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.64, i32 0, i32 0), double %conv75)
  %64 = load %struct._IO_FILE*, %struct._IO_FILE** %p_log, align 8
  %65 = load %struct.snr_par*, %struct.snr_par** %snr.addr, align 8
  %snr_va77 = getelementptr inbounds %struct.snr_par, %struct.snr_par* %65, i32 0, i32 9
  %66 = load float, float* %snr_va77, align 4
  %conv78 = fpext float %66 to double
  %call79 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %64, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.65, i32 0, i32 0), double %conv78)
  %67 = load %struct._IO_FILE*, %struct._IO_FILE** %p_log, align 8
  %call80 = call i32 @fclose(%struct._IO_FILE* %67)
  %arraydecay81 = getelementptr inbounds [255 x i8], [255 x i8]* %string, i32 0, i32 0
  %call82 = call i32 (i8*, i64, i8*, ...) @snprintf(i8* %arraydecay81, i64 255, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.34, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.66, i32 0, i32 0)) #5
  %arraydecay83 = getelementptr inbounds [255 x i8], [255 x i8]* %string, i32 0, i32 0
  %call84 = call %struct._IO_FILE* @fopen64(i8* %arraydecay83, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.48, i32 0, i32 0))
  store %struct._IO_FILE* %call84, %struct._IO_FILE** %p_log, align 8
  %68 = load i32, i32* @Bframe_ctr, align 4
  %cmp85 = icmp ne i32 %68, 0
  br i1 %cmp85, label %if.then.87, label %if.else.102

if.then.87:                                       ; preds = %if.end.64
  %69 = load %struct._IO_FILE*, %struct._IO_FILE** %p_log, align 8
  %70 = load %struct.img_par*, %struct.img_par** %img.addr, align 8
  %number88 = getelementptr inbounds %struct.img_par, %struct.img_par* %70, i32 0, i32 0
  %71 = load i32, i32* %number88, align 4
  %72 = load %struct.img_par*, %struct.img_par** %img.addr, align 8
  %qp = getelementptr inbounds %struct.img_par, %struct.img_par* %72, i32 0, i32 6
  %73 = load i32, i32* %qp, align 4
  %74 = load %struct.snr_par*, %struct.snr_par** %snr.addr, align 8
  %snr_y189 = getelementptr inbounds %struct.snr_par, %struct.snr_par* %74, i32 0, i32 4
  %75 = load float, float* %snr_y189, align 4
  %conv90 = fpext float %75 to double
  %76 = load %struct.snr_par*, %struct.snr_par** %snr.addr, align 8
  %snr_u191 = getelementptr inbounds %struct.snr_par, %struct.snr_par* %76, i32 0, i32 5
  %77 = load float, float* %snr_u191, align 4
  %conv92 = fpext float %77 to double
  %78 = load %struct.snr_par*, %struct.snr_par** %snr.addr, align 8
  %snr_v193 = getelementptr inbounds %struct.snr_par, %struct.snr_par* %78, i32 0, i32 6
  %79 = load float, float* %snr_v193, align 4
  %conv94 = fpext float %79 to double
  %80 = load %struct.snr_par*, %struct.snr_par** %snr.addr, align 8
  %snr_ya95 = getelementptr inbounds %struct.snr_par, %struct.snr_par* %80, i32 0, i32 7
  %81 = load float, float* %snr_ya95, align 4
  %conv96 = fpext float %81 to double
  %82 = load %struct.snr_par*, %struct.snr_par** %snr.addr, align 8
  %snr_ua97 = getelementptr inbounds %struct.snr_par, %struct.snr_par* %82, i32 0, i32 8
  %83 = load float, float* %snr_ua97, align 4
  %conv98 = fpext float %83 to double
  %84 = load %struct.snr_par*, %struct.snr_par** %snr.addr, align 8
  %snr_va99 = getelementptr inbounds %struct.snr_par, %struct.snr_par* %84, i32 0, i32 9
  %85 = load float, float* %snr_va99, align 4
  %conv100 = fpext float %85 to double
  %call101 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %69, i8* getelementptr inbounds ([79 x i8], [79 x i8]* @.str.67, i32 0, i32 0), i32 %71, i32 0, i32 %73, double %conv90, double %conv92, double %conv94, i32 0, double 0.000000e+00, double 0.000000e+00, double 0.000000e+00, i32 0, double %conv96, double %conv98, double %conv100, i32 0)
  br label %if.end.118

if.else.102:                                      ; preds = %if.end.64
  %86 = load %struct._IO_FILE*, %struct._IO_FILE** %p_log, align 8
  %87 = load %struct.img_par*, %struct.img_par** %img.addr, align 8
  %number103 = getelementptr inbounds %struct.img_par, %struct.img_par* %87, i32 0, i32 0
  %88 = load i32, i32* %number103, align 4
  %89 = load %struct.img_par*, %struct.img_par** %img.addr, align 8
  %qp104 = getelementptr inbounds %struct.img_par, %struct.img_par* %89, i32 0, i32 6
  %90 = load i32, i32* %qp104, align 4
  %91 = load %struct.snr_par*, %struct.snr_par** %snr.addr, align 8
  %snr_y1105 = getelementptr inbounds %struct.snr_par, %struct.snr_par* %91, i32 0, i32 4
  %92 = load float, float* %snr_y1105, align 4
  %conv106 = fpext float %92 to double
  %93 = load %struct.snr_par*, %struct.snr_par** %snr.addr, align 8
  %snr_u1107 = getelementptr inbounds %struct.snr_par, %struct.snr_par* %93, i32 0, i32 5
  %94 = load float, float* %snr_u1107, align 4
  %conv108 = fpext float %94 to double
  %95 = load %struct.snr_par*, %struct.snr_par** %snr.addr, align 8
  %snr_v1109 = getelementptr inbounds %struct.snr_par, %struct.snr_par* %95, i32 0, i32 6
  %96 = load float, float* %snr_v1109, align 4
  %conv110 = fpext float %96 to double
  %97 = load %struct.snr_par*, %struct.snr_par** %snr.addr, align 8
  %snr_ya111 = getelementptr inbounds %struct.snr_par, %struct.snr_par* %97, i32 0, i32 7
  %98 = load float, float* %snr_ya111, align 4
  %conv112 = fpext float %98 to double
  %99 = load %struct.snr_par*, %struct.snr_par** %snr.addr, align 8
  %snr_ua113 = getelementptr inbounds %struct.snr_par, %struct.snr_par* %99, i32 0, i32 8
  %100 = load float, float* %snr_ua113, align 4
  %conv114 = fpext float %100 to double
  %101 = load %struct.snr_par*, %struct.snr_par** %snr.addr, align 8
  %snr_va115 = getelementptr inbounds %struct.snr_par, %struct.snr_par* %101, i32 0, i32 9
  %102 = load float, float* %snr_va115, align 4
  %conv116 = fpext float %102 to double
  %call117 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %86, i8* getelementptr inbounds ([79 x i8], [79 x i8]* @.str.67, i32 0, i32 0), i32 %88, i32 0, i32 %90, double %conv106, double %conv108, double %conv110, i32 0, double 0.000000e+00, double 0.000000e+00, double 0.000000e+00, i32 0, double %conv112, double %conv114, double %conv116, i32 0)
  br label %if.end.118

if.end.118:                                       ; preds = %if.else.102, %if.then.87
  %103 = load %struct._IO_FILE*, %struct._IO_FILE** %p_log, align 8
  %call119 = call i32 @fclose(%struct._IO_FILE* %103)
  ret void
}

; Function Attrs: nounwind uwtable
define void @free_slice(%struct.inp_par* %inp, %struct.img_par* %img) #0 {
entry:
  %inp.addr = alloca %struct.inp_par*, align 8
  %img.addr = alloca %struct.img_par*, align 8
  %currSlice = alloca %struct.Slice*, align 8
  store %struct.inp_par* %inp, %struct.inp_par** %inp.addr, align 8
  store %struct.img_par* %img, %struct.img_par** %img.addr, align 8
  %0 = load %struct.img_par*, %struct.img_par** %img.addr, align 8
  %currentSlice = getelementptr inbounds %struct.img_par, %struct.img_par* %0, i32 0, i32 38
  %1 = load %struct.Slice*, %struct.Slice** %currentSlice, align 8
  store %struct.Slice* %1, %struct.Slice** %currSlice, align 8
  %2 = load %struct.Slice*, %struct.Slice** %currSlice, align 8
  %partArr = getelementptr inbounds %struct.Slice, %struct.Slice* %2, i32 0, i32 9
  %3 = load %struct.datapartition*, %struct.datapartition** %partArr, align 8
  call void @FreePartition(%struct.datapartition* %3, i32 3)
  %4 = load %struct.Slice*, %struct.Slice** %currSlice, align 8
  %mot_ctx = getelementptr inbounds %struct.Slice, %struct.Slice* %4, i32 0, i32 10
  %5 = load %struct.MotionInfoContexts*, %struct.MotionInfoContexts** %mot_ctx, align 8
  call void @delete_contexts_MotionInfo(%struct.MotionInfoContexts* %5)
  %6 = load %struct.Slice*, %struct.Slice** %currSlice, align 8
  %tex_ctx = getelementptr inbounds %struct.Slice, %struct.Slice* %6, i32 0, i32 11
  %7 = load %struct.TextureInfoContexts*, %struct.TextureInfoContexts** %tex_ctx, align 8
  call void @delete_contexts_TextureInfo(%struct.TextureInfoContexts* %7)
  %8 = load %struct.img_par*, %struct.img_par** %img.addr, align 8
  %currentSlice1 = getelementptr inbounds %struct.img_par, %struct.img_par* %8, i32 0, i32 38
  %9 = load %struct.Slice*, %struct.Slice** %currentSlice1, align 8
  %10 = bitcast %struct.Slice* %9 to i8*
  call void @free(i8* %10) #5
  store %struct.Slice* null, %struct.Slice** %currSlice, align 8
  ret void
}

declare i32 @FmoFinit(...) #1

declare void @flush_dpb() #1

declare void @CloseBitstreamFile(...) #1

declare i32 @close(i32) #1

declare void @ercClose(%struct.ercVariables_s*) #1

declare void @CleanUpPPS(...) #1

declare void @free_dpb() #1

declare void @uninit_out_buffer(...) #1

declare void @free_colocated(%struct.colocated_params*) #1

; Function Attrs: nounwind
declare void @free(i8*) #3

; Function Attrs: nounwind uwtable
define void @init_frext(%struct.img_par* %img) #0 {
entry:
  %img.addr = alloca %struct.img_par*, align 8
  store %struct.img_par* %img, %struct.img_par** %img.addr, align 8
  %0 = load %struct.img_par*, %struct.img_par** %img.addr, align 8
  %bitdepth_luma = getelementptr inbounds %struct.img_par, %struct.img_par* %0, i32 0, i32 101
  %1 = load i32, i32* %bitdepth_luma, align 4
  %sub = sub nsw i32 %1, 8
  %mul = mul nsw i32 6, %sub
  %2 = load %struct.img_par*, %struct.img_par** %img.addr, align 8
  %bitdepth_luma_qp_scale = getelementptr inbounds %struct.img_par, %struct.img_par* %2, i32 0, i32 103
  store i32 %mul, i32* %bitdepth_luma_qp_scale, align 4
  %3 = load %struct.img_par*, %struct.img_par** %img.addr, align 8
  %bitdepth_luma1 = getelementptr inbounds %struct.img_par, %struct.img_par* %3, i32 0, i32 101
  %4 = load i32, i32* %bitdepth_luma1, align 4
  %5 = load %struct.img_par*, %struct.img_par** %img.addr, align 8
  %bitdepth_chroma = getelementptr inbounds %struct.img_par, %struct.img_par* %5, i32 0, i32 102
  %6 = load i32, i32* %bitdepth_chroma, align 4
  %cmp = icmp sgt i32 %4, %6
  br i1 %cmp, label %if.then, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %entry
  %7 = load %struct.seq_parameter_set_rbsp_t*, %struct.seq_parameter_set_rbsp_t** @active_sps, align 8
  %chroma_format_idc = getelementptr inbounds %struct.seq_parameter_set_rbsp_t, %struct.seq_parameter_set_rbsp_t* %7, i32 0, i32 8
  %8 = load i32, i32* %chroma_format_idc, align 4
  %cmp2 = icmp eq i32 %8, 0
  br i1 %cmp2, label %if.then, label %if.else

if.then:                                          ; preds = %lor.lhs.false, %entry
  %9 = load %struct.img_par*, %struct.img_par** %img.addr, align 8
  %bitdepth_luma3 = getelementptr inbounds %struct.img_par, %struct.img_par* %9, i32 0, i32 101
  %10 = load i32, i32* %bitdepth_luma3, align 4
  %cmp4 = icmp sgt i32 %10, 8
  %cond = select i1 %cmp4, i32 16, i32 8
  %11 = load %struct.img_par*, %struct.img_par** %img.addr, align 8
  %pic_unit_bitsize_on_disk = getelementptr inbounds %struct.img_par, %struct.img_par* %11, i32 0, i32 100
  store i32 %cond, i32* %pic_unit_bitsize_on_disk, align 4
  br label %if.end

if.else:                                          ; preds = %lor.lhs.false
  %12 = load %struct.img_par*, %struct.img_par** %img.addr, align 8
  %bitdepth_chroma5 = getelementptr inbounds %struct.img_par, %struct.img_par* %12, i32 0, i32 102
  %13 = load i32, i32* %bitdepth_chroma5, align 4
  %cmp6 = icmp sgt i32 %13, 8
  %cond7 = select i1 %cmp6, i32 16, i32 8
  %14 = load %struct.img_par*, %struct.img_par** %img.addr, align 8
  %pic_unit_bitsize_on_disk8 = getelementptr inbounds %struct.img_par, %struct.img_par* %14, i32 0, i32 100
  store i32 %cond7, i32* %pic_unit_bitsize_on_disk8, align 4
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %15 = load %struct.img_par*, %struct.img_par** %img.addr, align 8
  %bitdepth_luma9 = getelementptr inbounds %struct.img_par, %struct.img_par* %15, i32 0, i32 101
  %16 = load i32, i32* %bitdepth_luma9, align 4
  %sub10 = sub nsw i32 %16, 1
  %shl = shl i32 1, %sub10
  %17 = load %struct.img_par*, %struct.img_par** %img.addr, align 8
  %dc_pred_value_luma = getelementptr inbounds %struct.img_par, %struct.img_par* %17, i32 0, i32 105
  store i32 %shl, i32* %dc_pred_value_luma, align 4
  %18 = load %struct.img_par*, %struct.img_par** %img.addr, align 8
  %bitdepth_luma11 = getelementptr inbounds %struct.img_par, %struct.img_par* %18, i32 0, i32 101
  %19 = load i32, i32* %bitdepth_luma11, align 4
  %shl12 = shl i32 1, %19
  %sub13 = sub nsw i32 %shl12, 1
  %20 = load %struct.img_par*, %struct.img_par** %img.addr, align 8
  %max_imgpel_value = getelementptr inbounds %struct.img_par, %struct.img_par* %20, i32 0, i32 107
  store i32 %sub13, i32* %max_imgpel_value, align 4
  %21 = load %struct.img_par*, %struct.img_par** %img.addr, align 8
  %mb_size = getelementptr inbounds %struct.img_par, %struct.img_par* %21, i32 0, i32 119
  %arrayidx = getelementptr inbounds [3 x [2 x i32]], [3 x [2 x i32]]* %mb_size, i32 0, i64 0
  %arrayidx14 = getelementptr inbounds [2 x i32], [2 x i32]* %arrayidx, i32 0, i64 1
  store i32 16, i32* %arrayidx14, align 4
  %22 = load %struct.img_par*, %struct.img_par** %img.addr, align 8
  %mb_size15 = getelementptr inbounds %struct.img_par, %struct.img_par* %22, i32 0, i32 119
  %arrayidx16 = getelementptr inbounds [3 x [2 x i32]], [3 x [2 x i32]]* %mb_size15, i32 0, i64 0
  %arrayidx17 = getelementptr inbounds [2 x i32], [2 x i32]* %arrayidx16, i32 0, i64 0
  store i32 16, i32* %arrayidx17, align 4
  %23 = load %struct.seq_parameter_set_rbsp_t*, %struct.seq_parameter_set_rbsp_t** @active_sps, align 8
  %chroma_format_idc18 = getelementptr inbounds %struct.seq_parameter_set_rbsp_t, %struct.seq_parameter_set_rbsp_t* %23, i32 0, i32 8
  %24 = load i32, i32* %chroma_format_idc18, align 4
  %cmp19 = icmp ne i32 %24, 0
  br i1 %cmp19, label %if.then.20, label %if.else.58

if.then.20:                                       ; preds = %if.end
  %25 = load %struct.img_par*, %struct.img_par** %img.addr, align 8
  %bitdepth_chroma21 = getelementptr inbounds %struct.img_par, %struct.img_par* %25, i32 0, i32 102
  %26 = load i32, i32* %bitdepth_chroma21, align 4
  %sub22 = sub nsw i32 %26, 8
  %mul23 = mul nsw i32 6, %sub22
  %27 = load %struct.img_par*, %struct.img_par** %img.addr, align 8
  %bitdepth_chroma_qp_scale = getelementptr inbounds %struct.img_par, %struct.img_par* %27, i32 0, i32 104
  store i32 %mul23, i32* %bitdepth_chroma_qp_scale, align 4
  %28 = load %struct.img_par*, %struct.img_par** %img.addr, align 8
  %bitdepth_chroma24 = getelementptr inbounds %struct.img_par, %struct.img_par* %28, i32 0, i32 102
  %29 = load i32, i32* %bitdepth_chroma24, align 4
  %sub25 = sub nsw i32 %29, 1
  %shl26 = shl i32 1, %sub25
  %30 = load %struct.img_par*, %struct.img_par** %img.addr, align 8
  %dc_pred_value_chroma = getelementptr inbounds %struct.img_par, %struct.img_par* %30, i32 0, i32 106
  store i32 %shl26, i32* %dc_pred_value_chroma, align 4
  %31 = load %struct.img_par*, %struct.img_par** %img.addr, align 8
  %bitdepth_chroma27 = getelementptr inbounds %struct.img_par, %struct.img_par* %31, i32 0, i32 102
  %32 = load i32, i32* %bitdepth_chroma27, align 4
  %shl28 = shl i32 1, %32
  %sub29 = sub nsw i32 %shl28, 1
  %33 = load %struct.img_par*, %struct.img_par** %img.addr, align 8
  %max_imgpel_value_uv = getelementptr inbounds %struct.img_par, %struct.img_par* %33, i32 0, i32 108
  store i32 %sub29, i32* %max_imgpel_value_uv, align 4
  %34 = load %struct.seq_parameter_set_rbsp_t*, %struct.seq_parameter_set_rbsp_t** @active_sps, align 8
  %chroma_format_idc30 = getelementptr inbounds %struct.seq_parameter_set_rbsp_t, %struct.seq_parameter_set_rbsp_t* %34, i32 0, i32 8
  %35 = load i32, i32* %chroma_format_idc30, align 4
  %shl31 = shl i32 1, %35
  %and = and i32 %shl31, -2
  %36 = load %struct.img_par*, %struct.img_par** %img.addr, align 8
  %num_blk8x8_uv = getelementptr inbounds %struct.img_par, %struct.img_par* %36, i32 0, i32 113
  store i32 %and, i32* %num_blk8x8_uv, align 4
  %37 = load %struct.img_par*, %struct.img_par** %img.addr, align 8
  %num_blk8x8_uv32 = getelementptr inbounds %struct.img_par, %struct.img_par* %37, i32 0, i32 113
  %38 = load i32, i32* %num_blk8x8_uv32, align 4
  %shl33 = shl i32 %38, 1
  %39 = load %struct.img_par*, %struct.img_par** %img.addr, align 8
  %num_cdc_coeff = getelementptr inbounds %struct.img_par, %struct.img_par* %39, i32 0, i32 114
  store i32 %shl33, i32* %num_cdc_coeff, align 4
  %40 = load %struct.seq_parameter_set_rbsp_t*, %struct.seq_parameter_set_rbsp_t** @active_sps, align 8
  %chroma_format_idc34 = getelementptr inbounds %struct.seq_parameter_set_rbsp_t, %struct.seq_parameter_set_rbsp_t* %40, i32 0, i32 8
  %41 = load i32, i32* %chroma_format_idc34, align 4
  %cmp35 = icmp eq i32 %41, 1
  br i1 %cmp35, label %lor.end, label %lor.rhs

lor.rhs:                                          ; preds = %if.then.20
  %42 = load %struct.seq_parameter_set_rbsp_t*, %struct.seq_parameter_set_rbsp_t** @active_sps, align 8
  %chroma_format_idc36 = getelementptr inbounds %struct.seq_parameter_set_rbsp_t, %struct.seq_parameter_set_rbsp_t* %42, i32 0, i32 8
  %43 = load i32, i32* %chroma_format_idc36, align 4
  %cmp37 = icmp eq i32 %43, 2
  br label %lor.end

lor.end:                                          ; preds = %lor.rhs, %if.then.20
  %44 = phi i1 [ true, %if.then.20 ], [ %cmp37, %lor.rhs ]
  %cond38 = select i1 %44, i32 8, i32 16
  %45 = load %struct.img_par*, %struct.img_par** %img.addr, align 8
  %mb_cr_size_x = getelementptr inbounds %struct.img_par, %struct.img_par* %45, i32 0, i32 115
  store i32 %cond38, i32* %mb_cr_size_x, align 4
  %46 = load %struct.img_par*, %struct.img_par** %img.addr, align 8
  %mb_size39 = getelementptr inbounds %struct.img_par, %struct.img_par* %46, i32 0, i32 119
  %arrayidx40 = getelementptr inbounds [3 x [2 x i32]], [3 x [2 x i32]]* %mb_size39, i32 0, i64 2
  %arrayidx41 = getelementptr inbounds [2 x i32], [2 x i32]* %arrayidx40, i32 0, i64 0
  store i32 %cond38, i32* %arrayidx41, align 4
  %47 = load %struct.img_par*, %struct.img_par** %img.addr, align 8
  %mb_size42 = getelementptr inbounds %struct.img_par, %struct.img_par* %47, i32 0, i32 119
  %arrayidx43 = getelementptr inbounds [3 x [2 x i32]], [3 x [2 x i32]]* %mb_size42, i32 0, i64 1
  %arrayidx44 = getelementptr inbounds [2 x i32], [2 x i32]* %arrayidx43, i32 0, i64 0
  store i32 %cond38, i32* %arrayidx44, align 4
  %48 = load %struct.seq_parameter_set_rbsp_t*, %struct.seq_parameter_set_rbsp_t** @active_sps, align 8
  %chroma_format_idc45 = getelementptr inbounds %struct.seq_parameter_set_rbsp_t, %struct.seq_parameter_set_rbsp_t* %48, i32 0, i32 8
  %49 = load i32, i32* %chroma_format_idc45, align 4
  %cmp46 = icmp eq i32 %49, 3
  br i1 %cmp46, label %lor.end.50, label %lor.rhs.47

lor.rhs.47:                                       ; preds = %lor.end
  %50 = load %struct.seq_parameter_set_rbsp_t*, %struct.seq_parameter_set_rbsp_t** @active_sps, align 8
  %chroma_format_idc48 = getelementptr inbounds %struct.seq_parameter_set_rbsp_t, %struct.seq_parameter_set_rbsp_t* %50, i32 0, i32 8
  %51 = load i32, i32* %chroma_format_idc48, align 4
  %cmp49 = icmp eq i32 %51, 2
  br label %lor.end.50

lor.end.50:                                       ; preds = %lor.rhs.47, %lor.end
  %52 = phi i1 [ true, %lor.end ], [ %cmp49, %lor.rhs.47 ]
  %cond51 = select i1 %52, i32 16, i32 8
  %53 = load %struct.img_par*, %struct.img_par** %img.addr, align 8
  %mb_cr_size_y = getelementptr inbounds %struct.img_par, %struct.img_par* %53, i32 0, i32 116
  store i32 %cond51, i32* %mb_cr_size_y, align 4
  %54 = load %struct.img_par*, %struct.img_par** %img.addr, align 8
  %mb_size52 = getelementptr inbounds %struct.img_par, %struct.img_par* %54, i32 0, i32 119
  %arrayidx53 = getelementptr inbounds [3 x [2 x i32]], [3 x [2 x i32]]* %mb_size52, i32 0, i64 2
  %arrayidx54 = getelementptr inbounds [2 x i32], [2 x i32]* %arrayidx53, i32 0, i64 1
  store i32 %cond51, i32* %arrayidx54, align 4
  %55 = load %struct.img_par*, %struct.img_par** %img.addr, align 8
  %mb_size55 = getelementptr inbounds %struct.img_par, %struct.img_par* %55, i32 0, i32 119
  %arrayidx56 = getelementptr inbounds [3 x [2 x i32]], [3 x [2 x i32]]* %mb_size55, i32 0, i64 1
  %arrayidx57 = getelementptr inbounds [2 x i32], [2 x i32]* %arrayidx56, i32 0, i64 1
  store i32 %cond51, i32* %arrayidx57, align 4
  br label %if.end.77

if.else.58:                                       ; preds = %if.end
  %56 = load %struct.img_par*, %struct.img_par** %img.addr, align 8
  %bitdepth_chroma_qp_scale59 = getelementptr inbounds %struct.img_par, %struct.img_par* %56, i32 0, i32 104
  store i32 0, i32* %bitdepth_chroma_qp_scale59, align 4
  %57 = load %struct.img_par*, %struct.img_par** %img.addr, align 8
  %max_imgpel_value_uv60 = getelementptr inbounds %struct.img_par, %struct.img_par* %57, i32 0, i32 108
  store i32 0, i32* %max_imgpel_value_uv60, align 4
  %58 = load %struct.img_par*, %struct.img_par** %img.addr, align 8
  %num_blk8x8_uv61 = getelementptr inbounds %struct.img_par, %struct.img_par* %58, i32 0, i32 113
  store i32 0, i32* %num_blk8x8_uv61, align 4
  %59 = load %struct.img_par*, %struct.img_par** %img.addr, align 8
  %num_cdc_coeff62 = getelementptr inbounds %struct.img_par, %struct.img_par* %59, i32 0, i32 114
  store i32 0, i32* %num_cdc_coeff62, align 4
  %60 = load %struct.img_par*, %struct.img_par** %img.addr, align 8
  %mb_cr_size_x63 = getelementptr inbounds %struct.img_par, %struct.img_par* %60, i32 0, i32 115
  store i32 0, i32* %mb_cr_size_x63, align 4
  %61 = load %struct.img_par*, %struct.img_par** %img.addr, align 8
  %mb_size64 = getelementptr inbounds %struct.img_par, %struct.img_par* %61, i32 0, i32 119
  %arrayidx65 = getelementptr inbounds [3 x [2 x i32]], [3 x [2 x i32]]* %mb_size64, i32 0, i64 2
  %arrayidx66 = getelementptr inbounds [2 x i32], [2 x i32]* %arrayidx65, i32 0, i64 0
  store i32 0, i32* %arrayidx66, align 4
  %62 = load %struct.img_par*, %struct.img_par** %img.addr, align 8
  %mb_size67 = getelementptr inbounds %struct.img_par, %struct.img_par* %62, i32 0, i32 119
  %arrayidx68 = getelementptr inbounds [3 x [2 x i32]], [3 x [2 x i32]]* %mb_size67, i32 0, i64 1
  %arrayidx69 = getelementptr inbounds [2 x i32], [2 x i32]* %arrayidx68, i32 0, i64 0
  store i32 0, i32* %arrayidx69, align 4
  %63 = load %struct.img_par*, %struct.img_par** %img.addr, align 8
  %mb_cr_size_y70 = getelementptr inbounds %struct.img_par, %struct.img_par* %63, i32 0, i32 116
  store i32 0, i32* %mb_cr_size_y70, align 4
  %64 = load %struct.img_par*, %struct.img_par** %img.addr, align 8
  %mb_size71 = getelementptr inbounds %struct.img_par, %struct.img_par* %64, i32 0, i32 119
  %arrayidx72 = getelementptr inbounds [3 x [2 x i32]], [3 x [2 x i32]]* %mb_size71, i32 0, i64 2
  %arrayidx73 = getelementptr inbounds [2 x i32], [2 x i32]* %arrayidx72, i32 0, i64 1
  store i32 0, i32* %arrayidx73, align 4
  %65 = load %struct.img_par*, %struct.img_par** %img.addr, align 8
  %mb_size74 = getelementptr inbounds %struct.img_par, %struct.img_par* %65, i32 0, i32 119
  %arrayidx75 = getelementptr inbounds [3 x [2 x i32]], [3 x [2 x i32]]* %mb_size74, i32 0, i64 1
  %arrayidx76 = getelementptr inbounds [2 x i32], [2 x i32]* %arrayidx75, i32 0, i64 1
  store i32 0, i32* %arrayidx76, align 4
  br label %if.end.77

if.end.77:                                        ; preds = %if.else.58, %lor.end.50
  %66 = load %struct.img_par*, %struct.img_par** %img.addr, align 8
  %mb_size78 = getelementptr inbounds %struct.img_par, %struct.img_par* %66, i32 0, i32 119
  %arrayidx79 = getelementptr inbounds [3 x [2 x i32]], [3 x [2 x i32]]* %mb_size78, i32 0, i64 0
  %arrayidx80 = getelementptr inbounds [2 x i32], [2 x i32]* %arrayidx79, i32 0, i64 0
  %67 = load i32, i32* %arrayidx80, align 4
  %shr = ashr i32 %67, 2
  %68 = load %struct.img_par*, %struct.img_par** %img.addr, align 8
  %mb_size_blk = getelementptr inbounds %struct.img_par, %struct.img_par* %68, i32 0, i32 120
  %arrayidx81 = getelementptr inbounds [3 x [2 x i32]], [3 x [2 x i32]]* %mb_size_blk, i32 0, i64 0
  %arrayidx82 = getelementptr inbounds [2 x i32], [2 x i32]* %arrayidx81, i32 0, i64 1
  store i32 %shr, i32* %arrayidx82, align 4
  %69 = load %struct.img_par*, %struct.img_par** %img.addr, align 8
  %mb_size_blk83 = getelementptr inbounds %struct.img_par, %struct.img_par* %69, i32 0, i32 120
  %arrayidx84 = getelementptr inbounds [3 x [2 x i32]], [3 x [2 x i32]]* %mb_size_blk83, i32 0, i64 0
  %arrayidx85 = getelementptr inbounds [2 x i32], [2 x i32]* %arrayidx84, i32 0, i64 0
  store i32 %shr, i32* %arrayidx85, align 4
  %70 = load %struct.img_par*, %struct.img_par** %img.addr, align 8
  %mb_size86 = getelementptr inbounds %struct.img_par, %struct.img_par* %70, i32 0, i32 119
  %arrayidx87 = getelementptr inbounds [3 x [2 x i32]], [3 x [2 x i32]]* %mb_size86, i32 0, i64 1
  %arrayidx88 = getelementptr inbounds [2 x i32], [2 x i32]* %arrayidx87, i32 0, i64 0
  %71 = load i32, i32* %arrayidx88, align 4
  %shr89 = ashr i32 %71, 2
  %72 = load %struct.img_par*, %struct.img_par** %img.addr, align 8
  %mb_size_blk90 = getelementptr inbounds %struct.img_par, %struct.img_par* %72, i32 0, i32 120
  %arrayidx91 = getelementptr inbounds [3 x [2 x i32]], [3 x [2 x i32]]* %mb_size_blk90, i32 0, i64 2
  %arrayidx92 = getelementptr inbounds [2 x i32], [2 x i32]* %arrayidx91, i32 0, i64 0
  store i32 %shr89, i32* %arrayidx92, align 4
  %73 = load %struct.img_par*, %struct.img_par** %img.addr, align 8
  %mb_size_blk93 = getelementptr inbounds %struct.img_par, %struct.img_par* %73, i32 0, i32 120
  %arrayidx94 = getelementptr inbounds [3 x [2 x i32]], [3 x [2 x i32]]* %mb_size_blk93, i32 0, i64 1
  %arrayidx95 = getelementptr inbounds [2 x i32], [2 x i32]* %arrayidx94, i32 0, i64 0
  store i32 %shr89, i32* %arrayidx95, align 4
  %74 = load %struct.img_par*, %struct.img_par** %img.addr, align 8
  %mb_size96 = getelementptr inbounds %struct.img_par, %struct.img_par* %74, i32 0, i32 119
  %arrayidx97 = getelementptr inbounds [3 x [2 x i32]], [3 x [2 x i32]]* %mb_size96, i32 0, i64 1
  %arrayidx98 = getelementptr inbounds [2 x i32], [2 x i32]* %arrayidx97, i32 0, i64 1
  %75 = load i32, i32* %arrayidx98, align 4
  %shr99 = ashr i32 %75, 2
  %76 = load %struct.img_par*, %struct.img_par** %img.addr, align 8
  %mb_size_blk100 = getelementptr inbounds %struct.img_par, %struct.img_par* %76, i32 0, i32 120
  %arrayidx101 = getelementptr inbounds [3 x [2 x i32]], [3 x [2 x i32]]* %mb_size_blk100, i32 0, i64 2
  %arrayidx102 = getelementptr inbounds [2 x i32], [2 x i32]* %arrayidx101, i32 0, i64 1
  store i32 %shr99, i32* %arrayidx102, align 4
  %77 = load %struct.img_par*, %struct.img_par** %img.addr, align 8
  %mb_size_blk103 = getelementptr inbounds %struct.img_par, %struct.img_par* %77, i32 0, i32 120
  %arrayidx104 = getelementptr inbounds [3 x [2 x i32]], [3 x [2 x i32]]* %mb_size_blk103, i32 0, i64 1
  %arrayidx105 = getelementptr inbounds [2 x i32], [2 x i32]* %arrayidx104, i32 0, i64 1
  store i32 %shr99, i32* %arrayidx105, align 4
  ret void
}

declare %struct._IO_FILE* @fopen64(i8*, i8*) #1

declare i32 @__isoc99_fscanf(%struct._IO_FILE*, i8*, ...) #1

declare i32 @fclose(%struct._IO_FILE*) #1

; Function Attrs: nounwind
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* nocapture, i8* nocapture readonly, i64, i32, i1) #5

; Function Attrs: nounwind
declare i64 @time(i64*) #3

; Function Attrs: nounwind
declare %struct.tm* @localtime(i64*) #3

; Function Attrs: nounwind
declare i64 @strftime(i8*, i64, i8*, %struct.tm*) #3

; Function Attrs: nounwind uwtable
define %struct.datapartition* @AllocPartition(i32 %n) #0 {
entry:
  %n.addr = alloca i32, align 4
  %partArr = alloca %struct.datapartition*, align 8
  %dataPart = alloca %struct.datapartition*, align 8
  %i = alloca i32, align 4
  store i32 %n, i32* %n.addr, align 4
  %0 = load i32, i32* %n.addr, align 4
  %conv = sext i32 %0 to i64
  %call = call noalias i8* @calloc(i64 %conv, i64 56) #5
  %1 = bitcast i8* %call to %struct.datapartition*
  store %struct.datapartition* %1, %struct.datapartition** %partArr, align 8
  %2 = load %struct.datapartition*, %struct.datapartition** %partArr, align 8
  %cmp = icmp eq %struct.datapartition* %2, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %call2 = call i32 (i8*, i64, i8*, ...) @snprintf(i8* getelementptr inbounds ([300 x i8], [300 x i8]* @errortext, i32 0, i32 0), i64 300, i8* getelementptr inbounds ([60 x i8], [60 x i8]* @.str.68, i32 0, i32 0)) #5
  call void @error(i8* getelementptr inbounds ([300 x i8], [300 x i8]* @errortext, i32 0, i32 0), i32 100)
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end
  %3 = load i32, i32* %i, align 4
  %4 = load i32, i32* %n.addr, align 4
  %cmp3 = icmp slt i32 %3, %4
  br i1 %cmp3, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %5 = load i32, i32* %i, align 4
  %idxprom = sext i32 %5 to i64
  %6 = load %struct.datapartition*, %struct.datapartition** %partArr, align 8
  %arrayidx = getelementptr inbounds %struct.datapartition, %struct.datapartition* %6, i64 %idxprom
  store %struct.datapartition* %arrayidx, %struct.datapartition** %dataPart, align 8
  %call5 = call noalias i8* @calloc(i64 1, i64 32) #5
  %7 = bitcast i8* %call5 to %struct.Bitstream*
  %8 = load %struct.datapartition*, %struct.datapartition** %dataPart, align 8
  %bitstream = getelementptr inbounds %struct.datapartition, %struct.datapartition* %8, i32 0, i32 0
  store %struct.Bitstream* %7, %struct.Bitstream** %bitstream, align 8
  %9 = load %struct.datapartition*, %struct.datapartition** %dataPart, align 8
  %bitstream6 = getelementptr inbounds %struct.datapartition, %struct.datapartition* %9, i32 0, i32 0
  %10 = load %struct.Bitstream*, %struct.Bitstream** %bitstream6, align 8
  %cmp7 = icmp eq %struct.Bitstream* %10, null
  br i1 %cmp7, label %if.then.9, label %if.end.11

if.then.9:                                        ; preds = %for.body
  %call10 = call i32 (i8*, i64, i8*, ...) @snprintf(i8* getelementptr inbounds ([300 x i8], [300 x i8]* @errortext, i32 0, i32 0), i64 300, i8* getelementptr inbounds ([55 x i8], [55 x i8]* @.str.69, i32 0, i32 0)) #5
  call void @error(i8* getelementptr inbounds ([300 x i8], [300 x i8]* @errortext, i32 0, i32 0), i32 100)
  br label %if.end.11

if.end.11:                                        ; preds = %if.then.9, %for.body
  %call12 = call noalias i8* @calloc(i64 8000000, i64 1) #5
  %11 = load %struct.datapartition*, %struct.datapartition** %dataPart, align 8
  %bitstream13 = getelementptr inbounds %struct.datapartition, %struct.datapartition* %11, i32 0, i32 0
  %12 = load %struct.Bitstream*, %struct.Bitstream** %bitstream13, align 8
  %streamBuffer = getelementptr inbounds %struct.Bitstream, %struct.Bitstream* %12, i32 0, i32 4
  store i8* %call12, i8** %streamBuffer, align 8
  %13 = load %struct.datapartition*, %struct.datapartition** %dataPart, align 8
  %bitstream14 = getelementptr inbounds %struct.datapartition, %struct.datapartition* %13, i32 0, i32 0
  %14 = load %struct.Bitstream*, %struct.Bitstream** %bitstream14, align 8
  %streamBuffer15 = getelementptr inbounds %struct.Bitstream, %struct.Bitstream* %14, i32 0, i32 4
  %15 = load i8*, i8** %streamBuffer15, align 8
  %cmp16 = icmp eq i8* %15, null
  br i1 %cmp16, label %if.then.18, label %if.end.20

if.then.18:                                       ; preds = %if.end.11
  %call19 = call i32 (i8*, i64, i8*, ...) @snprintf(i8* getelementptr inbounds ([300 x i8], [300 x i8]* @errortext, i32 0, i32 0), i64 300, i8* getelementptr inbounds ([58 x i8], [58 x i8]* @.str.70, i32 0, i32 0)) #5
  call void @error(i8* getelementptr inbounds ([300 x i8], [300 x i8]* @errortext, i32 0, i32 0), i32 100)
  br label %if.end.20

if.end.20:                                        ; preds = %if.then.18, %if.end.11
  br label %for.inc

for.inc:                                          ; preds = %if.end.20
  %16 = load i32, i32* %i, align 4
  %inc = add nsw i32 %16, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %17 = load %struct.datapartition*, %struct.datapartition** %partArr, align 8
  ret %struct.datapartition* %17
}

; Function Attrs: nounwind uwtable
define void @FreePartition(%struct.datapartition* %dp, i32 %n) #0 {
entry:
  %dp.addr = alloca %struct.datapartition*, align 8
  %n.addr = alloca i32, align 4
  %i = alloca i32, align 4
  store %struct.datapartition* %dp, %struct.datapartition** %dp.addr, align 8
  store i32 %n, i32* %n.addr, align 4
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %0 = load i32, i32* %i, align 4
  %1 = load i32, i32* %n.addr, align 4
  %cmp = icmp slt i32 %0, %1
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %2 = load i32, i32* %i, align 4
  %idxprom = sext i32 %2 to i64
  %3 = load %struct.datapartition*, %struct.datapartition** %dp.addr, align 8
  %arrayidx = getelementptr inbounds %struct.datapartition, %struct.datapartition* %3, i64 %idxprom
  %bitstream = getelementptr inbounds %struct.datapartition, %struct.datapartition* %arrayidx, i32 0, i32 0
  %4 = load %struct.Bitstream*, %struct.Bitstream** %bitstream, align 8
  %streamBuffer = getelementptr inbounds %struct.Bitstream, %struct.Bitstream* %4, i32 0, i32 4
  %5 = load i8*, i8** %streamBuffer, align 8
  call void @free(i8* %5) #5
  %6 = load i32, i32* %i, align 4
  %idxprom1 = sext i32 %6 to i64
  %7 = load %struct.datapartition*, %struct.datapartition** %dp.addr, align 8
  %arrayidx2 = getelementptr inbounds %struct.datapartition, %struct.datapartition* %7, i64 %idxprom1
  %bitstream3 = getelementptr inbounds %struct.datapartition, %struct.datapartition* %arrayidx2, i32 0, i32 0
  %8 = load %struct.Bitstream*, %struct.Bitstream** %bitstream3, align 8
  %9 = bitcast %struct.Bitstream* %8 to i8*
  call void @free(i8* %9) #5
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %10 = load i32, i32* %i, align 4
  %inc = add nsw i32 %10, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %11 = load %struct.datapartition*, %struct.datapartition** %dp.addr, align 8
  %12 = bitcast %struct.datapartition* %11 to i8*
  call void @free(i8* %12) #5
  ret void
}

declare %struct.MotionInfoContexts* @create_contexts_MotionInfo() #1

declare %struct.TextureInfoContexts* @create_contexts_TextureInfo() #1

declare void @delete_contexts_MotionInfo(%struct.MotionInfoContexts*) #1

declare void @delete_contexts_TextureInfo(%struct.TextureInfoContexts*) #1

; Function Attrs: nounwind uwtable
define i32 @init_global_buffers() #0 {
entry:
  %memory_size = alloca i32, align 4
  %quad_range = alloca i32, align 4
  %i = alloca i32, align 4
  store i32 0, i32* %memory_size, align 4
  %0 = load i32, i32* @global_init_done, align 4
  %tobool = icmp ne i32 %0, 0
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  call void @free_global_buffers()
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %1 = load %struct.img_par*, %struct.img_par** @img, align 8
  %height = getelementptr inbounds %struct.img_par, %struct.img_par* %1, i32 0, i32 12
  %2 = load i32, i32* %height, align 4
  %3 = load %struct.img_par*, %struct.img_par** @img, align 8
  %width = getelementptr inbounds %struct.img_par, %struct.img_par* %3, i32 0, i32 11
  %4 = load i32, i32* %width, align 4
  %call = call i32 @get_mem2Dpel(i16*** @imgY_ref, i32 %2, i32 %4)
  %5 = load i32, i32* %memory_size, align 4
  %add = add nsw i32 %5, %call
  store i32 %add, i32* %memory_size, align 4
  %6 = load %struct.seq_parameter_set_rbsp_t*, %struct.seq_parameter_set_rbsp_t** @active_sps, align 8
  %chroma_format_idc = getelementptr inbounds %struct.seq_parameter_set_rbsp_t, %struct.seq_parameter_set_rbsp_t* %6, i32 0, i32 8
  %7 = load i32, i32* %chroma_format_idc, align 4
  %cmp = icmp ne i32 %7, 0
  br i1 %cmp, label %if.then.1, label %if.else

if.then.1:                                        ; preds = %if.end
  %8 = load %struct.img_par*, %struct.img_par** @img, align 8
  %height_cr = getelementptr inbounds %struct.img_par, %struct.img_par* %8, i32 0, i32 15
  %9 = load i32, i32* %height_cr, align 4
  %10 = load %struct.img_par*, %struct.img_par** @img, align 8
  %width_cr = getelementptr inbounds %struct.img_par, %struct.img_par* %10, i32 0, i32 13
  %11 = load i32, i32* %width_cr, align 4
  %call2 = call i32 @get_mem3Dpel(i16**** @imgUV_ref, i32 2, i32 %9, i32 %11)
  %12 = load i32, i32* %memory_size, align 4
  %add3 = add nsw i32 %12, %call2
  store i32 %add3, i32* %memory_size, align 4
  br label %if.end.4

if.else:                                          ; preds = %if.end
  store i16*** null, i16**** @imgUV_ref, align 8
  br label %if.end.4

if.end.4:                                         ; preds = %if.else, %if.then.1
  %13 = load %struct.img_par*, %struct.img_par** @img, align 8
  %FrameSizeInMbs = getelementptr inbounds %struct.img_par, %struct.img_par* %13, i32 0, i32 92
  %14 = load i32, i32* %FrameSizeInMbs, align 4
  %conv = zext i32 %14 to i64
  %call5 = call noalias i8* @calloc(i64 %conv, i64 408) #5
  %15 = bitcast i8* %call5 to %struct.macroblock*
  %16 = load %struct.img_par*, %struct.img_par** @img, align 8
  %mb_data = getelementptr inbounds %struct.img_par, %struct.img_par* %16, i32 0, i32 39
  store %struct.macroblock* %15, %struct.macroblock** %mb_data, align 8
  %cmp6 = icmp eq %struct.macroblock* %15, null
  br i1 %cmp6, label %if.then.8, label %if.end.9

if.then.8:                                        ; preds = %if.end.4
  call void @no_mem_exit(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.72, i32 0, i32 0))
  br label %if.end.9

if.end.9:                                         ; preds = %if.then.8, %if.end.4
  %17 = load %struct.img_par*, %struct.img_par** @img, align 8
  %FrameSizeInMbs10 = getelementptr inbounds %struct.img_par, %struct.img_par* %17, i32 0, i32 92
  %18 = load i32, i32* %FrameSizeInMbs10, align 4
  %conv11 = zext i32 %18 to i64
  %call12 = call noalias i8* @calloc(i64 %conv11, i64 4) #5
  %19 = bitcast i8* %call12 to i32*
  %20 = load %struct.img_par*, %struct.img_par** @img, align 8
  %intra_block = getelementptr inbounds %struct.img_par, %struct.img_par* %20, i32 0, i32 4
  store i32* %19, i32** %intra_block, align 8
  %cmp13 = icmp eq i32* %19, null
  br i1 %cmp13, label %if.then.15, label %if.end.16

if.then.15:                                       ; preds = %if.end.9
  call void @no_mem_exit(i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.73, i32 0, i32 0))
  br label %if.end.16

if.end.16:                                        ; preds = %if.then.15, %if.end.9
  %21 = load %struct.img_par*, %struct.img_par** @img, align 8
  %FrameSizeInMbs17 = getelementptr inbounds %struct.img_par, %struct.img_par* %21, i32 0, i32 92
  %22 = load i32, i32* %FrameSizeInMbs17, align 4
  %add18 = add i32 %22, 1
  %call19 = call i32 @get_mem2Dint(i32*** @PicPos, i32 %add18, i32 2)
  %23 = load i32, i32* %memory_size, align 4
  %add20 = add nsw i32 %23, %call19
  store i32 %add20, i32* %memory_size, align 4
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end.16
  %24 = load i32, i32* %i, align 4
  %25 = load %struct.img_par*, %struct.img_par** @img, align 8
  %FrameSizeInMbs21 = getelementptr inbounds %struct.img_par, %struct.img_par* %25, i32 0, i32 92
  %26 = load i32, i32* %FrameSizeInMbs21, align 4
  %add22 = add nsw i32 %26, 1
  %cmp23 = icmp slt i32 %24, %add22
  br i1 %cmp23, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %27 = load i32, i32* %i, align 4
  %28 = load %struct.img_par*, %struct.img_par** @img, align 8
  %PicWidthInMbs = getelementptr inbounds %struct.img_par, %struct.img_par* %28, i32 0, i32 87
  %29 = load i32, i32* %PicWidthInMbs, align 4
  %rem = urem i32 %27, %29
  %30 = load i32, i32* %i, align 4
  %idxprom = sext i32 %30 to i64
  %31 = load i32**, i32*** @PicPos, align 8
  %arrayidx = getelementptr inbounds i32*, i32** %31, i64 %idxprom
  %32 = load i32*, i32** %arrayidx, align 8
  %arrayidx25 = getelementptr inbounds i32, i32* %32, i64 0
  store i32 %rem, i32* %arrayidx25, align 4
  %33 = load i32, i32* %i, align 4
  %34 = load %struct.img_par*, %struct.img_par** @img, align 8
  %PicWidthInMbs26 = getelementptr inbounds %struct.img_par, %struct.img_par* %34, i32 0, i32 87
  %35 = load i32, i32* %PicWidthInMbs26, align 4
  %div = udiv i32 %33, %35
  %36 = load i32, i32* %i, align 4
  %idxprom27 = sext i32 %36 to i64
  %37 = load i32**, i32*** @PicPos, align 8
  %arrayidx28 = getelementptr inbounds i32*, i32** %37, i64 %idxprom27
  %38 = load i32*, i32** %arrayidx28, align 8
  %arrayidx29 = getelementptr inbounds i32, i32* %38, i64 1
  store i32 %div, i32* %arrayidx29, align 4
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %39 = load i32, i32* %i, align 4
  %inc = add nsw i32 %39, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %40 = load %struct.img_par*, %struct.img_par** @img, align 8
  %ipredmode = getelementptr inbounds %struct.img_par, %struct.img_par* %40, i32 0, i32 30
  %41 = load %struct.img_par*, %struct.img_par** @img, align 8
  %FrameHeightInMbs = getelementptr inbounds %struct.img_par, %struct.img_par* %41, i32 0, i32 89
  %42 = load i32, i32* %FrameHeightInMbs, align 4
  %mul = mul i32 4, %42
  %43 = load %struct.img_par*, %struct.img_par** @img, align 8
  %PicWidthInMbs30 = getelementptr inbounds %struct.img_par, %struct.img_par* %43, i32 0, i32 87
  %44 = load i32, i32* %PicWidthInMbs30, align 4
  %mul31 = mul i32 4, %44
  %call32 = call i32 @get_mem2D(i8*** %ipredmode, i32 %mul, i32 %mul31)
  %45 = load i32, i32* %memory_size, align 4
  %add33 = add nsw i32 %45, %call32
  store i32 %add33, i32* %memory_size, align 4
  %46 = load %struct.img_par*, %struct.img_par** @img, align 8
  %wp_weight = getelementptr inbounds %struct.img_par, %struct.img_par* %46, i32 0, i32 77
  %call34 = call i32 @get_mem3Dint(i32**** %wp_weight, i32 2, i32 32, i32 3)
  %47 = load i32, i32* %memory_size, align 4
  %add35 = add nsw i32 %47, %call34
  store i32 %add35, i32* %memory_size, align 4
  %48 = load %struct.img_par*, %struct.img_par** @img, align 8
  %wp_offset = getelementptr inbounds %struct.img_par, %struct.img_par* %48, i32 0, i32 78
  %call36 = call i32 @get_mem3Dint(i32**** %wp_offset, i32 6, i32 32, i32 3)
  %49 = load i32, i32* %memory_size, align 4
  %add37 = add nsw i32 %49, %call36
  store i32 %add37, i32* %memory_size, align 4
  %50 = load %struct.img_par*, %struct.img_par** @img, align 8
  %wbp_weight = getelementptr inbounds %struct.img_par, %struct.img_par* %50, i32 0, i32 79
  %call38 = call i32 @get_mem4Dint(i32***** %wbp_weight, i32 6, i32 32, i32 32, i32 3)
  %51 = load i32, i32* %memory_size, align 4
  %add39 = add nsw i32 %51, %call38
  store i32 %add39, i32* %memory_size, align 4
  %52 = load %struct.img_par*, %struct.img_par** @img, align 8
  %nz_coeff = getelementptr inbounds %struct.img_par, %struct.img_par* %52, i32 0, i32 32
  %53 = load %struct.img_par*, %struct.img_par** @img, align 8
  %FrameSizeInMbs40 = getelementptr inbounds %struct.img_par, %struct.img_par* %53, i32 0, i32 92
  %54 = load i32, i32* %FrameSizeInMbs40, align 4
  %55 = load %struct.img_par*, %struct.img_par** @img, align 8
  %num_blk8x8_uv = getelementptr inbounds %struct.img_par, %struct.img_par* %55, i32 0, i32 113
  %56 = load i32, i32* %num_blk8x8_uv, align 4
  %add41 = add nsw i32 4, %56
  %call42 = call i32 @get_mem3Dint(i32**** %nz_coeff, i32 %54, i32 4, i32 %add41)
  %57 = load i32, i32* %memory_size, align 4
  %add43 = add nsw i32 %57, %call42
  store i32 %add43, i32* %memory_size, align 4
  %58 = load %struct.img_par*, %struct.img_par** @img, align 8
  %siblock = getelementptr inbounds %struct.img_par, %struct.img_par* %58, i32 0, i32 33
  %59 = load %struct.img_par*, %struct.img_par** @img, align 8
  %FrameHeightInMbs44 = getelementptr inbounds %struct.img_par, %struct.img_par* %59, i32 0, i32 89
  %60 = load i32, i32* %FrameHeightInMbs44, align 4
  %61 = load %struct.img_par*, %struct.img_par** @img, align 8
  %PicWidthInMbs45 = getelementptr inbounds %struct.img_par, %struct.img_par* %61, i32 0, i32 87
  %62 = load i32, i32* %PicWidthInMbs45, align 4
  %call46 = call i32 @get_mem2Dint(i32*** %siblock, i32 %60, i32 %62)
  %63 = load i32, i32* %memory_size, align 4
  %add47 = add nsw i32 %63, %call46
  store i32 %add47, i32* %memory_size, align 4
  %64 = load %struct.img_par*, %struct.img_par** @img, align 8
  %max_imgpel_value = getelementptr inbounds %struct.img_par, %struct.img_par* %64, i32 0, i32 107
  %65 = load i32, i32* %max_imgpel_value, align 4
  %66 = load %struct.img_par*, %struct.img_par** @img, align 8
  %max_imgpel_value_uv = getelementptr inbounds %struct.img_par, %struct.img_par* %66, i32 0, i32 108
  %67 = load i32, i32* %max_imgpel_value_uv, align 4
  %cmp48 = icmp sgt i32 %65, %67
  br i1 %cmp48, label %if.then.53, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %for.end
  %68 = load %struct.seq_parameter_set_rbsp_t*, %struct.seq_parameter_set_rbsp_t** @active_sps, align 8
  %chroma_format_idc50 = getelementptr inbounds %struct.seq_parameter_set_rbsp_t, %struct.seq_parameter_set_rbsp_t* %68, i32 0, i32 8
  %69 = load i32, i32* %chroma_format_idc50, align 4
  %cmp51 = icmp eq i32 %69, 0
  br i1 %cmp51, label %if.then.53, label %if.else.57

if.then.53:                                       ; preds = %lor.lhs.false, %for.end
  %70 = load %struct.img_par*, %struct.img_par** @img, align 8
  %max_imgpel_value54 = getelementptr inbounds %struct.img_par, %struct.img_par* %70, i32 0, i32 107
  %71 = load i32, i32* %max_imgpel_value54, align 4
  %add55 = add nsw i32 %71, 1
  %mul56 = mul nsw i32 %add55, 2
  store i32 %mul56, i32* %quad_range, align 4
  br label %if.end.61

if.else.57:                                       ; preds = %lor.lhs.false
  %72 = load %struct.img_par*, %struct.img_par** @img, align 8
  %max_imgpel_value_uv58 = getelementptr inbounds %struct.img_par, %struct.img_par* %72, i32 0, i32 108
  %73 = load i32, i32* %max_imgpel_value_uv58, align 4
  %add59 = add nsw i32 %73, 1
  %mul60 = mul nsw i32 %add59, 2
  store i32 %mul60, i32* %quad_range, align 4
  br label %if.end.61

if.end.61:                                        ; preds = %if.else.57, %if.then.53
  %74 = load i32, i32* %quad_range, align 4
  %conv62 = sext i32 %74 to i64
  %call63 = call noalias i8* @calloc(i64 %conv62, i64 4) #5
  %75 = bitcast i8* %call63 to i32*
  %76 = load %struct.img_par*, %struct.img_par** @img, align 8
  %quad = getelementptr inbounds %struct.img_par, %struct.img_par* %76, i32 0, i32 31
  store i32* %75, i32** %quad, align 8
  %cmp64 = icmp eq i32* %75, null
  br i1 %cmp64, label %if.then.66, label %if.end.67

if.then.66:                                       ; preds = %if.end.61
  call void @no_mem_exit(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.74, i32 0, i32 0))
  br label %if.end.67

if.end.67:                                        ; preds = %if.then.66, %if.end.61
  %77 = load i32, i32* %quad_range, align 4
  %div68 = sdiv i32 %77, 2
  %78 = load %struct.img_par*, %struct.img_par** @img, align 8
  %quad69 = getelementptr inbounds %struct.img_par, %struct.img_par* %78, i32 0, i32 31
  %79 = load i32*, i32** %quad69, align 8
  %idx.ext = sext i32 %div68 to i64
  %add.ptr = getelementptr inbounds i32, i32* %79, i64 %idx.ext
  store i32* %add.ptr, i32** %quad69, align 8
  store i32 0, i32* %i, align 4
  br label %for.cond.70

for.cond.70:                                      ; preds = %for.inc.82, %if.end.67
  %80 = load i32, i32* %i, align 4
  %81 = load i32, i32* %quad_range, align 4
  %div71 = sdiv i32 %81, 2
  %cmp72 = icmp slt i32 %80, %div71
  br i1 %cmp72, label %for.body.74, label %for.end.84

for.body.74:                                      ; preds = %for.cond.70
  %82 = load i32, i32* %i, align 4
  %83 = load i32, i32* %i, align 4
  %mul75 = mul nsw i32 %82, %83
  %84 = load i32, i32* %i, align 4
  %sub = sub nsw i32 0, %84
  %idxprom76 = sext i32 %sub to i64
  %85 = load %struct.img_par*, %struct.img_par** @img, align 8
  %quad77 = getelementptr inbounds %struct.img_par, %struct.img_par* %85, i32 0, i32 31
  %86 = load i32*, i32** %quad77, align 8
  %arrayidx78 = getelementptr inbounds i32, i32* %86, i64 %idxprom76
  store i32 %mul75, i32* %arrayidx78, align 4
  %87 = load i32, i32* %i, align 4
  %idxprom79 = sext i32 %87 to i64
  %88 = load %struct.img_par*, %struct.img_par** @img, align 8
  %quad80 = getelementptr inbounds %struct.img_par, %struct.img_par* %88, i32 0, i32 31
  %89 = load i32*, i32** %quad80, align 8
  %arrayidx81 = getelementptr inbounds i32, i32* %89, i64 %idxprom79
  store i32 %mul75, i32* %arrayidx81, align 4
  br label %for.inc.82

for.inc.82:                                       ; preds = %for.body.74
  %90 = load i32, i32* %i, align 4
  %inc83 = add nsw i32 %90, 1
  store i32 %inc83, i32* %i, align 4
  br label %for.cond.70

for.end.84:                                       ; preds = %for.cond.70
  store i32 1, i32* @global_init_done, align 4
  %91 = load %struct.img_par*, %struct.img_par** @img, align 8
  %FrameSizeInMbs85 = getelementptr inbounds %struct.img_par, %struct.img_par* %91, i32 0, i32 92
  %92 = load i32, i32* %FrameSizeInMbs85, align 4
  %93 = load %struct.img_par*, %struct.img_par** @img, align 8
  %oldFrameSizeInMbs = getelementptr inbounds %struct.img_par, %struct.img_par* %93, i32 0, i32 93
  store i32 %92, i32* %oldFrameSizeInMbs, align 4
  %94 = load i32, i32* %memory_size, align 4
  ret i32 %94
}

declare i32 @get_mem2Dpel(i16***, i32, i32) #1

declare i32 @get_mem3Dpel(i16****, i32, i32, i32) #1

declare i32 @get_mem2Dint(i32***, i32, i32) #1

declare i32 @get_mem2D(i8***, i32, i32) #1

declare i32 @get_mem3Dint(i32****, i32, i32, i32) #1

declare i32 @get_mem4Dint(i32*****, i32, i32, i32, i32) #1

; Function Attrs: nounwind uwtable
define void @free_global_buffers() #0 {
entry:
  %0 = load i16**, i16*** @imgY_ref, align 8
  call void @free_mem2Dpel(i16** %0)
  %1 = load i16***, i16**** @imgUV_ref, align 8
  %tobool = icmp ne i16*** %1, null
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %2 = load i16***, i16**** @imgUV_ref, align 8
  call void @free_mem3Dpel(i16*** %2, i32 2)
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %3 = load %struct.img_par*, %struct.img_par** @img, align 8
  %nz_coeff = getelementptr inbounds %struct.img_par, %struct.img_par* %3, i32 0, i32 32
  %4 = load i32***, i32**** %nz_coeff, align 8
  %5 = load %struct.img_par*, %struct.img_par** @img, align 8
  %oldFrameSizeInMbs = getelementptr inbounds %struct.img_par, %struct.img_par* %5, i32 0, i32 93
  %6 = load i32, i32* %oldFrameSizeInMbs, align 4
  call void @free_mem3Dint(i32*** %4, i32 %6)
  %7 = load %struct.img_par*, %struct.img_par** @img, align 8
  %siblock = getelementptr inbounds %struct.img_par, %struct.img_par* %7, i32 0, i32 33
  %8 = load i32**, i32*** %siblock, align 8
  call void @free_mem2Dint(i32** %8)
  %9 = load %struct.img_par*, %struct.img_par** @img, align 8
  %mb_data = getelementptr inbounds %struct.img_par, %struct.img_par* %9, i32 0, i32 39
  %10 = load %struct.macroblock*, %struct.macroblock** %mb_data, align 8
  %cmp = icmp ne %struct.macroblock* %10, null
  br i1 %cmp, label %if.then.1, label %if.end.3

if.then.1:                                        ; preds = %if.end
  %11 = load %struct.img_par*, %struct.img_par** @img, align 8
  %mb_data2 = getelementptr inbounds %struct.img_par, %struct.img_par* %11, i32 0, i32 39
  %12 = load %struct.macroblock*, %struct.macroblock** %mb_data2, align 8
  %13 = bitcast %struct.macroblock* %12 to i8*
  call void @free(i8* %13) #5
  br label %if.end.3

if.end.3:                                         ; preds = %if.then.1, %if.end
  %14 = load i32**, i32*** @PicPos, align 8
  call void @free_mem2Dint(i32** %14)
  %15 = load %struct.img_par*, %struct.img_par** @img, align 8
  %intra_block = getelementptr inbounds %struct.img_par, %struct.img_par* %15, i32 0, i32 4
  %16 = load i32*, i32** %intra_block, align 8
  %17 = bitcast i32* %16 to i8*
  call void @free(i8* %17) #5
  %18 = load %struct.img_par*, %struct.img_par** @img, align 8
  %ipredmode = getelementptr inbounds %struct.img_par, %struct.img_par* %18, i32 0, i32 30
  %19 = load i8**, i8*** %ipredmode, align 8
  call void @free_mem2D(i8** %19)
  %20 = load %struct.img_par*, %struct.img_par** @img, align 8
  %wp_weight = getelementptr inbounds %struct.img_par, %struct.img_par* %20, i32 0, i32 77
  %21 = load i32***, i32**** %wp_weight, align 8
  call void @free_mem3Dint(i32*** %21, i32 2)
  %22 = load %struct.img_par*, %struct.img_par** @img, align 8
  %wp_offset = getelementptr inbounds %struct.img_par, %struct.img_par* %22, i32 0, i32 78
  %23 = load i32***, i32**** %wp_offset, align 8
  call void @free_mem3Dint(i32*** %23, i32 6)
  %24 = load %struct.img_par*, %struct.img_par** @img, align 8
  %wbp_weight = getelementptr inbounds %struct.img_par, %struct.img_par* %24, i32 0, i32 79
  %25 = load i32****, i32***** %wbp_weight, align 8
  call void @free_mem4Dint(i32**** %25, i32 6, i32 32)
  %26 = load %struct.img_par*, %struct.img_par** @img, align 8
  %max_imgpel_value = getelementptr inbounds %struct.img_par, %struct.img_par* %26, i32 0, i32 107
  %27 = load i32, i32* %max_imgpel_value, align 4
  %28 = load %struct.img_par*, %struct.img_par** @img, align 8
  %max_imgpel_value_uv = getelementptr inbounds %struct.img_par, %struct.img_par* %28, i32 0, i32 108
  %29 = load i32, i32* %max_imgpel_value_uv, align 4
  %cmp4 = icmp sgt i32 %27, %29
  br i1 %cmp4, label %if.then.5, label %if.else

if.then.5:                                        ; preds = %if.end.3
  %30 = load %struct.img_par*, %struct.img_par** @img, align 8
  %quad = getelementptr inbounds %struct.img_par, %struct.img_par* %30, i32 0, i32 31
  %31 = load i32*, i32** %quad, align 8
  %32 = load %struct.img_par*, %struct.img_par** @img, align 8
  %max_imgpel_value6 = getelementptr inbounds %struct.img_par, %struct.img_par* %32, i32 0, i32 107
  %33 = load i32, i32* %max_imgpel_value6, align 4
  %add = add nsw i32 %33, 1
  %idx.ext = sext i32 %add to i64
  %idx.neg = sub i64 0, %idx.ext
  %add.ptr = getelementptr inbounds i32, i32* %31, i64 %idx.neg
  %34 = bitcast i32* %add.ptr to i8*
  call void @free(i8* %34) #5
  br label %if.end.13

if.else:                                          ; preds = %if.end.3
  %35 = load %struct.img_par*, %struct.img_par** @img, align 8
  %quad7 = getelementptr inbounds %struct.img_par, %struct.img_par* %35, i32 0, i32 31
  %36 = load i32*, i32** %quad7, align 8
  %37 = load %struct.img_par*, %struct.img_par** @img, align 8
  %max_imgpel_value_uv8 = getelementptr inbounds %struct.img_par, %struct.img_par* %37, i32 0, i32 108
  %38 = load i32, i32* %max_imgpel_value_uv8, align 4
  %add9 = add nsw i32 %38, 1
  %idx.ext10 = sext i32 %add9 to i64
  %idx.neg11 = sub i64 0, %idx.ext10
  %add.ptr12 = getelementptr inbounds i32, i32* %36, i64 %idx.neg11
  %39 = bitcast i32* %add.ptr12 to i8*
  call void @free(i8* %39) #5
  br label %if.end.13

if.end.13:                                        ; preds = %if.else, %if.then.5
  store i32 0, i32* @global_init_done, align 4
  ret void
}

declare void @free_mem2Dpel(i16**) #1

declare void @free_mem3Dpel(i16***, i32) #1

declare void @free_mem3Dint(i32***, i32) #1

declare void @free_mem2Dint(i32**) #1

declare void @free_mem2D(i8**) #1

declare void @free_mem4Dint(i32****, i32, i32) #1

; Function Attrs: nounwind readonly
declare i8* @strrchr(i8*, i32) #4

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { noreturn nounwind "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { nounwind readonly "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #5 = { nounwind }
attributes #6 = { noreturn nounwind }
attributes #7 = { nounwind readonly }

!llvm.ident = !{!0}

!0 = !{!"clang version 3.7.0 (tags/RELEASE_370/final)"}
