; ModuleID = './MultiSource.Applications.JM/14.ldecod.nal.bc'
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

@.str = private unnamed_addr constant [41 x i8] c" Panic: All zero data sequence in RBSP \0A\00", align 1
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
define i32 @RBSPtoSODB(i8* %streamBuffer, i32 %last_byte_pos) #0 {
entry:
  %streamBuffer.addr = alloca i8*, align 8
  %last_byte_pos.addr = alloca i32, align 4
  %ctr_bit = alloca i32, align 4
  %bitoffset = alloca i32, align 4
  store i8* %streamBuffer, i8** %streamBuffer.addr, align 8
  store i32 %last_byte_pos, i32* %last_byte_pos.addr, align 4
  store i32 0, i32* %bitoffset, align 4
  %0 = load i32, i32* %last_byte_pos.addr, align 4
  %sub = sub nsw i32 %0, 1
  %idxprom = sext i32 %sub to i64
  %1 = load i8*, i8** %streamBuffer.addr, align 8
  %arrayidx = getelementptr inbounds i8, i8* %1, i64 %idxprom
  %2 = load i8, i8* %arrayidx, align 1
  %conv = zext i8 %2 to i32
  %3 = load i32, i32* %bitoffset, align 4
  %shl = shl i32 1, %3
  %and = and i32 %conv, %shl
  store i32 %and, i32* %ctr_bit, align 4
  br label %while.cond

while.cond:                                       ; preds = %if.end.8, %entry
  %4 = load i32, i32* %ctr_bit, align 4
  %cmp = icmp eq i32 %4, 0
  br i1 %cmp, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %5 = load i32, i32* %bitoffset, align 4
  %inc = add nsw i32 %5, 1
  store i32 %inc, i32* %bitoffset, align 4
  %6 = load i32, i32* %bitoffset, align 4
  %cmp2 = icmp eq i32 %6, 8
  br i1 %cmp2, label %if.then, label %if.end.8

if.then:                                          ; preds = %while.body
  %7 = load i32, i32* %last_byte_pos.addr, align 4
  %cmp4 = icmp eq i32 %7, 0
  br i1 %cmp4, label %if.then.6, label %if.end

if.then.6:                                        ; preds = %if.then
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str, i32 0, i32 0))
  br label %if.end

if.end:                                           ; preds = %if.then.6, %if.then
  %8 = load i32, i32* %last_byte_pos.addr, align 4
  %sub7 = sub nsw i32 %8, 1
  store i32 %sub7, i32* %last_byte_pos.addr, align 4
  store i32 0, i32* %bitoffset, align 4
  br label %if.end.8

if.end.8:                                         ; preds = %if.end, %while.body
  %9 = load i32, i32* %last_byte_pos.addr, align 4
  %sub9 = sub nsw i32 %9, 1
  %idxprom10 = sext i32 %sub9 to i64
  %10 = load i8*, i8** %streamBuffer.addr, align 8
  %arrayidx11 = getelementptr inbounds i8, i8* %10, i64 %idxprom10
  %11 = load i8, i8* %arrayidx11, align 1
  %conv12 = zext i8 %11 to i32
  %12 = load i32, i32* %bitoffset, align 4
  %shl13 = shl i32 1, %12
  %and14 = and i32 %conv12, %shl13
  store i32 %and14, i32* %ctr_bit, align 4
  br label %while.cond

while.end:                                        ; preds = %while.cond
  %13 = load i32, i32* %last_byte_pos.addr, align 4
  ret i32 %13
}

declare i32 @printf(i8*, ...) #1

; Function Attrs: nounwind uwtable
define i32 @EBSPtoRBSP(i8* %streamBuffer, i32 %end_bytepos, i32 %begin_bytepos) #0 {
entry:
  %retval = alloca i32, align 4
  %streamBuffer.addr = alloca i8*, align 8
  %end_bytepos.addr = alloca i32, align 4
  %begin_bytepos.addr = alloca i32, align 4
  %i = alloca i32, align 4
  %j = alloca i32, align 4
  %count = alloca i32, align 4
  store i8* %streamBuffer, i8** %streamBuffer.addr, align 8
  store i32 %end_bytepos, i32* %end_bytepos.addr, align 4
  store i32 %begin_bytepos, i32* %begin_bytepos.addr, align 4
  store i32 0, i32* %count, align 4
  %0 = load i32, i32* %end_bytepos.addr, align 4
  %1 = load i32, i32* %begin_bytepos.addr, align 4
  %cmp = icmp slt i32 %0, %1
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %2 = load i32, i32* %end_bytepos.addr, align 4
  store i32 %2, i32* %retval
  br label %return

if.end:                                           ; preds = %entry
  %3 = load i32, i32* %begin_bytepos.addr, align 4
  store i32 %3, i32* %j, align 4
  %4 = load i32, i32* %begin_bytepos.addr, align 4
  store i32 %4, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end
  %5 = load i32, i32* %i, align 4
  %6 = load i32, i32* %end_bytepos.addr, align 4
  %cmp1 = icmp slt i32 %5, %6
  br i1 %cmp1, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %7 = load i32, i32* %count, align 4
  %cmp2 = icmp eq i32 %7, 2
  br i1 %cmp2, label %land.lhs.true, label %if.end.6

land.lhs.true:                                    ; preds = %for.body
  %8 = load i32, i32* %i, align 4
  %idxprom = sext i32 %8 to i64
  %9 = load i8*, i8** %streamBuffer.addr, align 8
  %arrayidx = getelementptr inbounds i8, i8* %9, i64 %idxprom
  %10 = load i8, i8* %arrayidx, align 1
  %conv = zext i8 %10 to i32
  %cmp3 = icmp eq i32 %conv, 3
  br i1 %cmp3, label %if.then.5, label %if.end.6

if.then.5:                                        ; preds = %land.lhs.true
  %11 = load i32, i32* %i, align 4
  %inc = add nsw i32 %11, 1
  store i32 %inc, i32* %i, align 4
  store i32 0, i32* %count, align 4
  br label %if.end.6

if.end.6:                                         ; preds = %if.then.5, %land.lhs.true, %for.body
  %12 = load i32, i32* %i, align 4
  %idxprom7 = sext i32 %12 to i64
  %13 = load i8*, i8** %streamBuffer.addr, align 8
  %arrayidx8 = getelementptr inbounds i8, i8* %13, i64 %idxprom7
  %14 = load i8, i8* %arrayidx8, align 1
  %15 = load i32, i32* %j, align 4
  %idxprom9 = sext i32 %15 to i64
  %16 = load i8*, i8** %streamBuffer.addr, align 8
  %arrayidx10 = getelementptr inbounds i8, i8* %16, i64 %idxprom9
  store i8 %14, i8* %arrayidx10, align 1
  %17 = load i32, i32* %i, align 4
  %idxprom11 = sext i32 %17 to i64
  %18 = load i8*, i8** %streamBuffer.addr, align 8
  %arrayidx12 = getelementptr inbounds i8, i8* %18, i64 %idxprom11
  %19 = load i8, i8* %arrayidx12, align 1
  %conv13 = zext i8 %19 to i32
  %cmp14 = icmp eq i32 %conv13, 0
  br i1 %cmp14, label %if.then.16, label %if.else

if.then.16:                                       ; preds = %if.end.6
  %20 = load i32, i32* %count, align 4
  %inc17 = add nsw i32 %20, 1
  store i32 %inc17, i32* %count, align 4
  br label %if.end.18

if.else:                                          ; preds = %if.end.6
  store i32 0, i32* %count, align 4
  br label %if.end.18

if.end.18:                                        ; preds = %if.else, %if.then.16
  %21 = load i32, i32* %j, align 4
  %inc19 = add nsw i32 %21, 1
  store i32 %inc19, i32* %j, align 4
  br label %for.inc

for.inc:                                          ; preds = %if.end.18
  %22 = load i32, i32* %i, align 4
  %inc20 = add nsw i32 %22, 1
  store i32 %inc20, i32* %i, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %23 = load i32, i32* %j, align 4
  store i32 %23, i32* %retval
  br label %return

return:                                           ; preds = %for.end, %if.then
  %24 = load i32, i32* %retval
  ret i32 %24
}

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.ident = !{!0}

!0 = !{!"clang version 3.7.0 (tags/RELEASE_370/final)"}
