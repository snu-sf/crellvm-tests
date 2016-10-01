; ModuleID = './MultiSource.Applications.JM/21.ldecod.errorconcealment.bc'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pic_parameter_set_rbsp_t = type { i32, i32, i32, i32, i32, i32, [8 x i32], [6 x [16 x i32]], [2 x [64 x i32]], [6 x i32], [2 x i32], i32, i32, i32, [8 x i32], [8 x i32], [8 x i32], i32, i32, i32, i32*, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.seq_parameter_set_rbsp_t = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [8 x i32], [6 x [16 x i32]], [2 x [64 x i32]], [6 x i32], [2 x i32], i32, i32, i32, i32, i32, i32, i32, i32, i32, [256 x i32], i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, %struct.vui_seq_parameters_t }
%struct.vui_seq_parameters_t = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, %struct.hrd_parameters_t, i32, %struct.hrd_parameters_t, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.hrd_parameters_t = type { i32, i32, i32, [32 x i32], [32 x i32], [32 x i32], i32, i32, i32, i32 }
%struct._IO_FILE = type { i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, %struct._IO_marker*, %struct._IO_FILE*, i32, i32, i64, i16, i8, [1 x i8], i8*, i64, i8*, i8*, i8*, i8*, i64, i32, [20 x i8] }
%struct._IO_marker = type { %struct._IO_marker*, %struct._IO_FILE*, i32 }
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
%struct.DecRefPicMarking_s = type { i32, i32, i32, i32, i32, %struct.DecRefPicMarking_s* }
%struct.timeb = type { i64, i16, i16, i16 }

@ec_flag = internal global [20 x i32] zeroinitializer, align 16
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
@errortext = common global [300 x i8] zeroinitializer, align 16
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
define i32 @set_ec_flag(i32 %se) #0 {
entry:
  %se.addr = alloca i32, align 4
  store i32 %se, i32* %se.addr, align 4
  %0 = load i32, i32* %se.addr, align 4
  switch i32 %0, label %sw.default [
    i32 0, label %sw.bb
    i32 1, label %sw.bb.1
    i32 2, label %sw.bb.2
    i32 3, label %sw.bb.3
    i32 4, label %sw.bb.4
    i32 5, label %sw.bb.5
  ]

sw.bb:                                            ; preds = %entry
  store i32 1, i32* getelementptr inbounds ([20 x i32], [20 x i32]* @ec_flag, i32 0, i64 0), align 4
  br label %sw.bb.1

sw.bb.1:                                          ; preds = %entry, %sw.bb
  store i32 1, i32* getelementptr inbounds ([20 x i32], [20 x i32]* @ec_flag, i32 0, i64 1), align 4
  br label %sw.bb.2

sw.bb.2:                                          ; preds = %entry, %sw.bb.1
  store i32 1, i32* getelementptr inbounds ([20 x i32], [20 x i32]* @ec_flag, i32 0, i64 2), align 4
  br label %sw.bb.3

sw.bb.3:                                          ; preds = %entry, %sw.bb.2
  store i32 1, i32* getelementptr inbounds ([20 x i32], [20 x i32]* @ec_flag, i32 0, i64 3), align 4
  store i32 1, i32* getelementptr inbounds ([20 x i32], [20 x i32]* @ec_flag, i32 0, i64 5), align 4
  store i32 11, i32* %se.addr, align 4
  br label %sw.epilog

sw.bb.4:                                          ; preds = %entry
  store i32 1, i32* getelementptr inbounds ([20 x i32], [20 x i32]* @ec_flag, i32 0, i64 4), align 4
  store i32 6, i32* %se.addr, align 4
  br label %sw.epilog

sw.bb.5:                                          ; preds = %entry
  store i32 1, i32* getelementptr inbounds ([20 x i32], [20 x i32]* @ec_flag, i32 0, i64 5), align 4
  store i32 11, i32* %se.addr, align 4
  br label %sw.epilog

sw.default:                                       ; preds = %entry
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.default, %sw.bb.5, %sw.bb.4, %sw.bb.3
  %1 = load i32, i32* %se.addr, align 4
  switch i32 %1, label %sw.default.18 [
    i32 6, label %sw.bb.6
    i32 7, label %sw.bb.7
    i32 8, label %sw.bb.8
    i32 9, label %sw.bb.9
    i32 10, label %sw.bb.10
    i32 11, label %sw.bb.11
    i32 12, label %sw.bb.12
    i32 13, label %sw.bb.13
    i32 14, label %sw.bb.14
    i32 15, label %sw.bb.15
    i32 16, label %sw.bb.16
    i32 17, label %sw.bb.17
  ]

sw.bb.6:                                          ; preds = %sw.epilog
  store i32 1, i32* getelementptr inbounds ([20 x i32], [20 x i32]* @ec_flag, i32 0, i64 6), align 4
  br label %sw.bb.7

sw.bb.7:                                          ; preds = %sw.epilog, %sw.bb.6
  store i32 1, i32* getelementptr inbounds ([20 x i32], [20 x i32]* @ec_flag, i32 0, i64 7), align 4
  br label %sw.bb.8

sw.bb.8:                                          ; preds = %sw.epilog, %sw.bb.7
  store i32 1, i32* getelementptr inbounds ([20 x i32], [20 x i32]* @ec_flag, i32 0, i64 8), align 4
  br label %sw.bb.9

sw.bb.9:                                          ; preds = %sw.epilog, %sw.bb.8
  store i32 1, i32* getelementptr inbounds ([20 x i32], [20 x i32]* @ec_flag, i32 0, i64 9), align 4
  br label %sw.bb.10

sw.bb.10:                                         ; preds = %sw.epilog, %sw.bb.9
  store i32 1, i32* getelementptr inbounds ([20 x i32], [20 x i32]* @ec_flag, i32 0, i64 10), align 4
  br label %sw.epilog.19

sw.bb.11:                                         ; preds = %sw.epilog
  store i32 1, i32* getelementptr inbounds ([20 x i32], [20 x i32]* @ec_flag, i32 0, i64 11), align 4
  br label %sw.bb.12

sw.bb.12:                                         ; preds = %sw.epilog, %sw.bb.11
  store i32 1, i32* getelementptr inbounds ([20 x i32], [20 x i32]* @ec_flag, i32 0, i64 12), align 4
  br label %sw.bb.13

sw.bb.13:                                         ; preds = %sw.epilog, %sw.bb.12
  store i32 1, i32* getelementptr inbounds ([20 x i32], [20 x i32]* @ec_flag, i32 0, i64 13), align 4
  br label %sw.bb.14

sw.bb.14:                                         ; preds = %sw.epilog, %sw.bb.13
  store i32 1, i32* getelementptr inbounds ([20 x i32], [20 x i32]* @ec_flag, i32 0, i64 14), align 4
  br label %sw.bb.15

sw.bb.15:                                         ; preds = %sw.epilog, %sw.bb.14
  store i32 1, i32* getelementptr inbounds ([20 x i32], [20 x i32]* @ec_flag, i32 0, i64 15), align 4
  br label %sw.epilog.19

sw.bb.16:                                         ; preds = %sw.epilog
  store i32 1, i32* getelementptr inbounds ([20 x i32], [20 x i32]* @ec_flag, i32 0, i64 16), align 4
  br label %sw.epilog.19

sw.bb.17:                                         ; preds = %sw.epilog
  store i32 1, i32* getelementptr inbounds ([20 x i32], [20 x i32]* @ec_flag, i32 0, i64 17), align 4
  br label %sw.epilog.19

sw.default.18:                                    ; preds = %sw.epilog
  br label %sw.epilog.19

sw.epilog.19:                                     ; preds = %sw.default.18, %sw.bb.17, %sw.bb.16, %sw.bb.15, %sw.bb.10
  ret i32 1
}

; Function Attrs: nounwind uwtable
define void @reset_ec_flags() #0 {
entry:
  %i = alloca i32, align 4
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %0 = load i32, i32* %i, align 4
  %cmp = icmp slt i32 %0, 20
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %1 = load i32, i32* %i, align 4
  %idxprom = sext i32 %1 to i64
  %arrayidx = getelementptr inbounds [20 x i32], [20 x i32]* @ec_flag, i32 0, i64 %idxprom
  store i32 0, i32* %arrayidx, align 4
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %2 = load i32, i32* %i, align 4
  %inc = add nsw i32 %2, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  ret void
}

; Function Attrs: nounwind uwtable
define i32 @get_concealed_element(%struct.syntaxelement* %sym) #0 {
entry:
  %retval = alloca i32, align 4
  %sym.addr = alloca %struct.syntaxelement*, align 8
  store %struct.syntaxelement* %sym, %struct.syntaxelement** %sym.addr, align 8
  %0 = load %struct.syntaxelement*, %struct.syntaxelement** %sym.addr, align 8
  %type = getelementptr inbounds %struct.syntaxelement, %struct.syntaxelement* %0, i32 0, i32 0
  %1 = load i32, i32* %type, align 4
  %idxprom = sext i32 %1 to i64
  %arrayidx = getelementptr inbounds [20 x i32], [20 x i32]* @ec_flag, i32 0, i64 %idxprom
  %2 = load i32, i32* %arrayidx, align 4
  %cmp = icmp eq i32 %2, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store i32 0, i32* %retval
  br label %return

if.end:                                           ; preds = %entry
  %3 = load %struct.syntaxelement*, %struct.syntaxelement** %sym.addr, align 8
  %type1 = getelementptr inbounds %struct.syntaxelement, %struct.syntaxelement* %3, i32 0, i32 0
  %4 = load i32, i32* %type1, align 4
  switch i32 %4, label %sw.default [
    i32 0, label %sw.bb
    i32 1, label %sw.bb.2
    i32 2, label %sw.bb.2
    i32 3, label %sw.bb.2
    i32 4, label %sw.bb.5
    i32 5, label %sw.bb.5
    i32 6, label %sw.bb.8
    i32 7, label %sw.bb.11
    i32 8, label %sw.bb.11
    i32 9, label %sw.bb.11
    i32 10, label %sw.bb.11
    i32 11, label %sw.bb.14
    i32 12, label %sw.bb.17
    i32 13, label %sw.bb.17
    i32 14, label %sw.bb.17
    i32 15, label %sw.bb.17
    i32 16, label %sw.bb.20
    i32 17, label %sw.bb.23
  ]

sw.bb:                                            ; preds = %if.end
  %5 = load %struct.syntaxelement*, %struct.syntaxelement** %sym.addr, align 8
  %len = getelementptr inbounds %struct.syntaxelement, %struct.syntaxelement* %5, i32 0, i32 3
  store i32 31, i32* %len, align 4
  %6 = load %struct.syntaxelement*, %struct.syntaxelement** %sym.addr, align 8
  %inf = getelementptr inbounds %struct.syntaxelement, %struct.syntaxelement* %6, i32 0, i32 4
  store i32 0, i32* %inf, align 4
  br label %sw.epilog

sw.bb.2:                                          ; preds = %if.end, %if.end, %if.end
  %7 = load %struct.syntaxelement*, %struct.syntaxelement** %sym.addr, align 8
  %len3 = getelementptr inbounds %struct.syntaxelement, %struct.syntaxelement* %7, i32 0, i32 3
  store i32 1, i32* %len3, align 4
  %8 = load %struct.syntaxelement*, %struct.syntaxelement** %sym.addr, align 8
  %inf4 = getelementptr inbounds %struct.syntaxelement, %struct.syntaxelement* %8, i32 0, i32 4
  store i32 0, i32* %inf4, align 4
  br label %sw.epilog

sw.bb.5:                                          ; preds = %if.end, %if.end
  %9 = load %struct.syntaxelement*, %struct.syntaxelement** %sym.addr, align 8
  %len6 = getelementptr inbounds %struct.syntaxelement, %struct.syntaxelement* %9, i32 0, i32 3
  store i32 1, i32* %len6, align 4
  %10 = load %struct.syntaxelement*, %struct.syntaxelement** %sym.addr, align 8
  %inf7 = getelementptr inbounds %struct.syntaxelement, %struct.syntaxelement* %10, i32 0, i32 4
  store i32 0, i32* %inf7, align 4
  br label %sw.epilog

sw.bb.8:                                          ; preds = %if.end
  %11 = load %struct.syntaxelement*, %struct.syntaxelement** %sym.addr, align 8
  %len9 = getelementptr inbounds %struct.syntaxelement, %struct.syntaxelement* %11, i32 0, i32 3
  store i32 5, i32* %len9, align 4
  %12 = load %struct.syntaxelement*, %struct.syntaxelement** %sym.addr, align 8
  %inf10 = getelementptr inbounds %struct.syntaxelement, %struct.syntaxelement* %12, i32 0, i32 4
  store i32 0, i32* %inf10, align 4
  br label %sw.epilog

sw.bb.11:                                         ; preds = %if.end, %if.end, %if.end, %if.end
  %13 = load %struct.syntaxelement*, %struct.syntaxelement** %sym.addr, align 8
  %len12 = getelementptr inbounds %struct.syntaxelement, %struct.syntaxelement* %13, i32 0, i32 3
  store i32 1, i32* %len12, align 4
  %14 = load %struct.syntaxelement*, %struct.syntaxelement** %sym.addr, align 8
  %inf13 = getelementptr inbounds %struct.syntaxelement, %struct.syntaxelement* %14, i32 0, i32 4
  store i32 0, i32* %inf13, align 4
  br label %sw.epilog

sw.bb.14:                                         ; preds = %if.end
  %15 = load %struct.syntaxelement*, %struct.syntaxelement** %sym.addr, align 8
  %len15 = getelementptr inbounds %struct.syntaxelement, %struct.syntaxelement* %15, i32 0, i32 3
  store i32 1, i32* %len15, align 4
  %16 = load %struct.syntaxelement*, %struct.syntaxelement** %sym.addr, align 8
  %inf16 = getelementptr inbounds %struct.syntaxelement, %struct.syntaxelement* %16, i32 0, i32 4
  store i32 0, i32* %inf16, align 4
  br label %sw.epilog

sw.bb.17:                                         ; preds = %if.end, %if.end, %if.end, %if.end
  %17 = load %struct.syntaxelement*, %struct.syntaxelement** %sym.addr, align 8
  %len18 = getelementptr inbounds %struct.syntaxelement, %struct.syntaxelement* %17, i32 0, i32 3
  store i32 1, i32* %len18, align 4
  %18 = load %struct.syntaxelement*, %struct.syntaxelement** %sym.addr, align 8
  %inf19 = getelementptr inbounds %struct.syntaxelement, %struct.syntaxelement* %18, i32 0, i32 4
  store i32 0, i32* %inf19, align 4
  br label %sw.epilog

sw.bb.20:                                         ; preds = %if.end
  %19 = load %struct.syntaxelement*, %struct.syntaxelement** %sym.addr, align 8
  %len21 = getelementptr inbounds %struct.syntaxelement, %struct.syntaxelement* %19, i32 0, i32 3
  store i32 1, i32* %len21, align 4
  %20 = load %struct.syntaxelement*, %struct.syntaxelement** %sym.addr, align 8
  %inf22 = getelementptr inbounds %struct.syntaxelement, %struct.syntaxelement* %20, i32 0, i32 4
  store i32 0, i32* %inf22, align 4
  br label %sw.epilog

sw.bb.23:                                         ; preds = %if.end
  %21 = load %struct.syntaxelement*, %struct.syntaxelement** %sym.addr, align 8
  %len24 = getelementptr inbounds %struct.syntaxelement, %struct.syntaxelement* %21, i32 0, i32 3
  store i32 1, i32* %len24, align 4
  %22 = load %struct.syntaxelement*, %struct.syntaxelement** %sym.addr, align 8
  %inf25 = getelementptr inbounds %struct.syntaxelement, %struct.syntaxelement* %22, i32 0, i32 4
  store i32 0, i32* %inf25, align 4
  br label %sw.epilog

sw.default:                                       ; preds = %if.end
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.default, %sw.bb.23, %sw.bb.20, %sw.bb.17, %sw.bb.14, %sw.bb.11, %sw.bb.8, %sw.bb.5, %sw.bb.2, %sw.bb
  store i32 1, i32* %retval
  br label %return

return:                                           ; preds = %sw.epilog, %if.then
  %23 = load i32, i32* %retval
  ret i32 %23
}

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.ident = !{!0}

!0 = !{!"clang version 3.7.0 (tags/RELEASE_370/final)"}
