; ModuleID = 'rdopt_coding_state.c'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.InputParameters = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [8 x [2 x i32]], [8 x [2 x i32]], i32, i32, i32, i32, [200 x i8], [200 x i8], [200 x i8], [200 x i8], [200 x i8], i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [1024 x i8], i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, double, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [200 x i8], [200 x i8], i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [200 x i8], i32, i32, i32*, i32*, i8*, i32*, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [8 x i32], i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [6 x double], [200 x i8], i32 }
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
%struct.CSobj = type { i32, %struct.EncodingEnvironment*, %struct.Bitstream*, i32, %struct.MotionInfoContexts*, %struct.TextureInfoContexts*, i32, [8 x i32], [2 x [4 x [4 x [2 x i32]]]], i64 }

@.str = private unnamed_addr constant [22 x i8] c"init_coding_state: cs\00", align 1
@input = external global %struct.InputParameters*, align 8
@.str.1 = private unnamed_addr constant [30 x i8] c"init_coding_state: cs->encenv\00", align 1
@.str.2 = private unnamed_addr constant [33 x i8] c"init_coding_state: cs->bitstream\00", align 1
@img = external global %struct.ImageParameters*, align 8

; Function Attrs: nounwind uwtable
define void @delete_coding_state(%struct.CSobj* %cs) #0 {
entry:
  %cs.addr = alloca %struct.CSobj*, align 8
  store %struct.CSobj* %cs, %struct.CSobj** %cs.addr, align 8
  %0 = load %struct.CSobj*, %struct.CSobj** %cs.addr, align 8
  %cmp = icmp ne %struct.CSobj* %0, null
  br i1 %cmp, label %if.then, label %if.end.8

if.then:                                          ; preds = %entry
  %1 = load %struct.CSobj*, %struct.CSobj** %cs.addr, align 8
  %encenv = getelementptr inbounds %struct.CSobj, %struct.CSobj* %1, i32 0, i32 1
  %2 = load %struct.EncodingEnvironment*, %struct.EncodingEnvironment** %encenv, align 8
  %cmp1 = icmp ne %struct.EncodingEnvironment* %2, null
  br i1 %cmp1, label %if.then.2, label %if.end

if.then.2:                                        ; preds = %if.then
  %3 = load %struct.CSobj*, %struct.CSobj** %cs.addr, align 8
  %encenv3 = getelementptr inbounds %struct.CSobj, %struct.CSobj* %3, i32 0, i32 1
  %4 = load %struct.EncodingEnvironment*, %struct.EncodingEnvironment** %encenv3, align 8
  %5 = bitcast %struct.EncodingEnvironment* %4 to i8*
  call void @free(i8* %5) #3
  br label %if.end

if.end:                                           ; preds = %if.then.2, %if.then
  %6 = load %struct.CSobj*, %struct.CSobj** %cs.addr, align 8
  %bitstream = getelementptr inbounds %struct.CSobj, %struct.CSobj* %6, i32 0, i32 2
  %7 = load %struct.Bitstream*, %struct.Bitstream** %bitstream, align 8
  %cmp4 = icmp ne %struct.Bitstream* %7, null
  br i1 %cmp4, label %if.then.5, label %if.end.7

if.then.5:                                        ; preds = %if.end
  %8 = load %struct.CSobj*, %struct.CSobj** %cs.addr, align 8
  %bitstream6 = getelementptr inbounds %struct.CSobj, %struct.CSobj* %8, i32 0, i32 2
  %9 = load %struct.Bitstream*, %struct.Bitstream** %bitstream6, align 8
  %10 = bitcast %struct.Bitstream* %9 to i8*
  call void @free(i8* %10) #3
  br label %if.end.7

if.end.7:                                         ; preds = %if.then.5, %if.end
  %11 = load %struct.CSobj*, %struct.CSobj** %cs.addr, align 8
  %mot_ctx = getelementptr inbounds %struct.CSobj, %struct.CSobj* %11, i32 0, i32 4
  %12 = load %struct.MotionInfoContexts*, %struct.MotionInfoContexts** %mot_ctx, align 8
  call void @delete_contexts_MotionInfo(%struct.MotionInfoContexts* %12)
  %13 = load %struct.CSobj*, %struct.CSobj** %cs.addr, align 8
  %tex_ctx = getelementptr inbounds %struct.CSobj, %struct.CSobj* %13, i32 0, i32 5
  %14 = load %struct.TextureInfoContexts*, %struct.TextureInfoContexts** %tex_ctx, align 8
  call void @delete_contexts_TextureInfo(%struct.TextureInfoContexts* %14)
  %15 = load %struct.CSobj*, %struct.CSobj** %cs.addr, align 8
  %16 = bitcast %struct.CSobj* %15 to i8*
  call void @free(i8* %16) #3
  store %struct.CSobj* null, %struct.CSobj** %cs.addr, align 8
  br label %if.end.8

if.end.8:                                         ; preds = %if.end.7, %entry
  ret void
}

; Function Attrs: nounwind
declare void @free(i8*) #1

declare void @delete_contexts_MotionInfo(%struct.MotionInfoContexts*) #2

declare void @delete_contexts_TextureInfo(%struct.TextureInfoContexts*) #2

; Function Attrs: nounwind uwtable
define %struct.CSobj* @create_coding_state() #0 {
entry:
  %cs = alloca %struct.CSobj*, align 8
  %call = call noalias i8* @calloc(i64 1, i64 352) #3
  %0 = bitcast i8* %call to %struct.CSobj*
  store %struct.CSobj* %0, %struct.CSobj** %cs, align 8
  %cmp = icmp eq %struct.CSobj* %0, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  call void @no_mem_exit(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str, i32 0, i32 0))
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %1 = load %struct.InputParameters*, %struct.InputParameters** @input, align 8
  %partition_mode = getelementptr inbounds %struct.InputParameters, %struct.InputParameters* %1, i32 0, i32 61
  %2 = load i32, i32* %partition_mode, align 4
  %cmp1 = icmp eq i32 %2, 0
  %cond = select i1 %cmp1, i32 1, i32 3
  %3 = load %struct.CSobj*, %struct.CSobj** %cs, align 8
  %no_part = getelementptr inbounds %struct.CSobj, %struct.CSobj* %3, i32 0, i32 0
  store i32 %cond, i32* %no_part, align 4
  %4 = load %struct.InputParameters*, %struct.InputParameters** @input, align 8
  %symbol_mode = getelementptr inbounds %struct.InputParameters, %struct.InputParameters* %4, i32 0, i32 59
  %5 = load i32, i32* %symbol_mode, align 4
  %cmp2 = icmp eq i32 %5, 1
  br i1 %cmp2, label %if.then.3, label %if.else

if.then.3:                                        ; preds = %if.end
  %6 = load %struct.CSobj*, %struct.CSobj** %cs, align 8
  %no_part4 = getelementptr inbounds %struct.CSobj, %struct.CSobj* %6, i32 0, i32 0
  %7 = load i32, i32* %no_part4, align 4
  %conv = sext i32 %7 to i64
  %call5 = call noalias i8* @calloc(i64 %conv, i64 104) #3
  %8 = bitcast i8* %call5 to %struct.EncodingEnvironment*
  %9 = load %struct.CSobj*, %struct.CSobj** %cs, align 8
  %encenv = getelementptr inbounds %struct.CSobj, %struct.CSobj* %9, i32 0, i32 1
  store %struct.EncodingEnvironment* %8, %struct.EncodingEnvironment** %encenv, align 8
  %cmp6 = icmp eq %struct.EncodingEnvironment* %8, null
  br i1 %cmp6, label %if.then.8, label %if.end.9

if.then.8:                                        ; preds = %if.then.3
  call void @no_mem_exit(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.1, i32 0, i32 0))
  br label %if.end.9

if.end.9:                                         ; preds = %if.then.8, %if.then.3
  br label %if.end.11

if.else:                                          ; preds = %if.end
  %10 = load %struct.CSobj*, %struct.CSobj** %cs, align 8
  %encenv10 = getelementptr inbounds %struct.CSobj, %struct.CSobj* %10, i32 0, i32 1
  store %struct.EncodingEnvironment* null, %struct.EncodingEnvironment** %encenv10, align 8
  br label %if.end.11

if.end.11:                                        ; preds = %if.else, %if.end.9
  %11 = load %struct.CSobj*, %struct.CSobj** %cs, align 8
  %no_part12 = getelementptr inbounds %struct.CSobj, %struct.CSobj* %11, i32 0, i32 0
  %12 = load i32, i32* %no_part12, align 4
  %conv13 = sext i32 %12 to i64
  %call14 = call noalias i8* @calloc(i64 %conv13, i64 48) #3
  %13 = bitcast i8* %call14 to %struct.Bitstream*
  %14 = load %struct.CSobj*, %struct.CSobj** %cs, align 8
  %bitstream = getelementptr inbounds %struct.CSobj, %struct.CSobj* %14, i32 0, i32 2
  store %struct.Bitstream* %13, %struct.Bitstream** %bitstream, align 8
  %cmp15 = icmp eq %struct.Bitstream* %13, null
  br i1 %cmp15, label %if.then.17, label %if.end.18

if.then.17:                                       ; preds = %if.end.11
  call void @no_mem_exit(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.2, i32 0, i32 0))
  br label %if.end.18

if.end.18:                                        ; preds = %if.then.17, %if.end.11
  %15 = load %struct.InputParameters*, %struct.InputParameters** @input, align 8
  %symbol_mode19 = getelementptr inbounds %struct.InputParameters, %struct.InputParameters* %15, i32 0, i32 59
  %16 = load i32, i32* %symbol_mode19, align 4
  %17 = load %struct.CSobj*, %struct.CSobj** %cs, align 8
  %symbol_mode20 = getelementptr inbounds %struct.CSobj, %struct.CSobj* %17, i32 0, i32 3
  store i32 %16, i32* %symbol_mode20, align 4
  %18 = load %struct.CSobj*, %struct.CSobj** %cs, align 8
  %symbol_mode21 = getelementptr inbounds %struct.CSobj, %struct.CSobj* %18, i32 0, i32 3
  %19 = load i32, i32* %symbol_mode21, align 4
  %cmp22 = icmp eq i32 %19, 1
  br i1 %cmp22, label %if.then.24, label %if.else.27

if.then.24:                                       ; preds = %if.end.18
  %call25 = call %struct.MotionInfoContexts* @create_contexts_MotionInfo()
  %20 = load %struct.CSobj*, %struct.CSobj** %cs, align 8
  %mot_ctx = getelementptr inbounds %struct.CSobj, %struct.CSobj* %20, i32 0, i32 4
  store %struct.MotionInfoContexts* %call25, %struct.MotionInfoContexts** %mot_ctx, align 8
  %call26 = call %struct.TextureInfoContexts* @create_contexts_TextureInfo()
  %21 = load %struct.CSobj*, %struct.CSobj** %cs, align 8
  %tex_ctx = getelementptr inbounds %struct.CSobj, %struct.CSobj* %21, i32 0, i32 5
  store %struct.TextureInfoContexts* %call26, %struct.TextureInfoContexts** %tex_ctx, align 8
  br label %if.end.30

if.else.27:                                       ; preds = %if.end.18
  %22 = load %struct.CSobj*, %struct.CSobj** %cs, align 8
  %mot_ctx28 = getelementptr inbounds %struct.CSobj, %struct.CSobj* %22, i32 0, i32 4
  store %struct.MotionInfoContexts* null, %struct.MotionInfoContexts** %mot_ctx28, align 8
  %23 = load %struct.CSobj*, %struct.CSobj** %cs, align 8
  %tex_ctx29 = getelementptr inbounds %struct.CSobj, %struct.CSobj* %23, i32 0, i32 5
  store %struct.TextureInfoContexts* null, %struct.TextureInfoContexts** %tex_ctx29, align 8
  br label %if.end.30

if.end.30:                                        ; preds = %if.else.27, %if.then.24
  %24 = load %struct.CSobj*, %struct.CSobj** %cs, align 8
  ret %struct.CSobj* %24
}

; Function Attrs: nounwind
declare noalias i8* @calloc(i64, i64) #1

declare void @no_mem_exit(i8*) #2

declare %struct.MotionInfoContexts* @create_contexts_MotionInfo() #2

declare %struct.TextureInfoContexts* @create_contexts_TextureInfo() #2

; Function Attrs: nounwind uwtable
define void @store_coding_state(%struct.CSobj* %cs) #0 {
entry:
  %cs.addr = alloca %struct.CSobj*, align 8
  %i = alloca i32, align 4
  %ee_src = alloca %struct.EncodingEnvironment*, align 8
  %ee_dest = alloca %struct.EncodingEnvironment*, align 8
  %bs_src = alloca %struct.Bitstream*, align 8
  %bs_dest = alloca %struct.Bitstream*, align 8
  %mc_src = alloca %struct.MotionInfoContexts*, align 8
  %tc_src = alloca %struct.TextureInfoContexts*, align 8
  %mc_dest = alloca %struct.MotionInfoContexts*, align 8
  %tc_dest = alloca %struct.TextureInfoContexts*, align 8
  %currMB = alloca %struct.macroblock*, align 8
  store %struct.CSobj* %cs, %struct.CSobj** %cs.addr, align 8
  %0 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %currentSlice = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %0, i32 0, i32 50
  %1 = load %struct.Slice*, %struct.Slice** %currentSlice, align 8
  %mot_ctx = getelementptr inbounds %struct.Slice, %struct.Slice* %1, i32 0, i32 7
  %2 = load %struct.MotionInfoContexts*, %struct.MotionInfoContexts** %mot_ctx, align 8
  store %struct.MotionInfoContexts* %2, %struct.MotionInfoContexts** %mc_src, align 8
  %3 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %currentSlice1 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %3, i32 0, i32 50
  %4 = load %struct.Slice*, %struct.Slice** %currentSlice1, align 8
  %tex_ctx = getelementptr inbounds %struct.Slice, %struct.Slice* %4, i32 0, i32 8
  %5 = load %struct.TextureInfoContexts*, %struct.TextureInfoContexts** %tex_ctx, align 8
  store %struct.TextureInfoContexts* %5, %struct.TextureInfoContexts** %tc_src, align 8
  %6 = load %struct.CSobj*, %struct.CSobj** %cs.addr, align 8
  %mot_ctx2 = getelementptr inbounds %struct.CSobj, %struct.CSobj* %6, i32 0, i32 4
  %7 = load %struct.MotionInfoContexts*, %struct.MotionInfoContexts** %mot_ctx2, align 8
  store %struct.MotionInfoContexts* %7, %struct.MotionInfoContexts** %mc_dest, align 8
  %8 = load %struct.CSobj*, %struct.CSobj** %cs.addr, align 8
  %tex_ctx3 = getelementptr inbounds %struct.CSobj, %struct.CSobj* %8, i32 0, i32 5
  %9 = load %struct.TextureInfoContexts*, %struct.TextureInfoContexts** %tex_ctx3, align 8
  store %struct.TextureInfoContexts* %9, %struct.TextureInfoContexts** %tc_dest, align 8
  %10 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %current_mb_nr = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %10, i32 0, i32 3
  %11 = load i32, i32* %current_mb_nr, align 4
  %idxprom = sext i32 %11 to i64
  %12 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %mb_data = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %12, i32 0, i32 51
  %13 = load %struct.macroblock*, %struct.macroblock** %mb_data, align 8
  %arrayidx = getelementptr inbounds %struct.macroblock, %struct.macroblock* %13, i64 %idxprom
  store %struct.macroblock* %arrayidx, %struct.macroblock** %currMB, align 8
  %14 = load %struct.InputParameters*, %struct.InputParameters** @input, align 8
  %rdopt = getelementptr inbounds %struct.InputParameters, %struct.InputParameters* %14, i32 0, i32 85
  %15 = load i32, i32* %rdopt, align 4
  %tobool = icmp ne i32 %15, 0
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  br label %return

if.end:                                           ; preds = %entry
  %16 = load %struct.CSobj*, %struct.CSobj** %cs.addr, align 8
  %symbol_mode = getelementptr inbounds %struct.CSobj, %struct.CSobj* %16, i32 0, i32 3
  %17 = load i32, i32* %symbol_mode, align 4
  %cmp = icmp eq i32 %17, 1
  br i1 %cmp, label %if.then.4, label %if.else

if.then.4:                                        ; preds = %if.end
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.then.4
  %18 = load i32, i32* %i, align 4
  %19 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %currentPicture = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %19, i32 0, i32 49
  %20 = load %struct.Picture*, %struct.Picture** %currentPicture, align 8
  %idr_flag = getelementptr inbounds %struct.Picture, %struct.Picture* %20, i32 0, i32 1
  %21 = load i32, i32* %idr_flag, align 4
  %tobool5 = icmp ne i32 %21, 0
  br i1 %tobool5, label %cond.true, label %cond.false

cond.true:                                        ; preds = %for.cond
  br label %cond.end

cond.false:                                       ; preds = %for.cond
  %22 = load %struct.CSobj*, %struct.CSobj** %cs.addr, align 8
  %no_part = getelementptr inbounds %struct.CSobj, %struct.CSobj* %22, i32 0, i32 0
  %23 = load i32, i32* %no_part, align 4
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ 1, %cond.true ], [ %23, %cond.false ]
  %cmp6 = icmp slt i32 %18, %cond
  br i1 %cmp6, label %for.body, label %for.end

for.body:                                         ; preds = %cond.end
  %24 = load i32, i32* %i, align 4
  %idxprom7 = sext i32 %24 to i64
  %25 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %currentSlice8 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %25, i32 0, i32 50
  %26 = load %struct.Slice*, %struct.Slice** %currentSlice8, align 8
  %partArr = getelementptr inbounds %struct.Slice, %struct.Slice* %26, i32 0, i32 6
  %27 = load %struct.datapartition*, %struct.datapartition** %partArr, align 8
  %arrayidx9 = getelementptr inbounds %struct.datapartition, %struct.datapartition* %27, i64 %idxprom7
  %ee_cabac = getelementptr inbounds %struct.datapartition, %struct.datapartition* %arrayidx9, i32 0, i32 1
  store %struct.EncodingEnvironment* %ee_cabac, %struct.EncodingEnvironment** %ee_src, align 8
  %28 = load i32, i32* %i, align 4
  %idxprom10 = sext i32 %28 to i64
  %29 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %currentSlice11 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %29, i32 0, i32 50
  %30 = load %struct.Slice*, %struct.Slice** %currentSlice11, align 8
  %partArr12 = getelementptr inbounds %struct.Slice, %struct.Slice* %30, i32 0, i32 6
  %31 = load %struct.datapartition*, %struct.datapartition** %partArr12, align 8
  %arrayidx13 = getelementptr inbounds %struct.datapartition, %struct.datapartition* %31, i64 %idxprom10
  %bitstream = getelementptr inbounds %struct.datapartition, %struct.datapartition* %arrayidx13, i32 0, i32 0
  %32 = load %struct.Bitstream*, %struct.Bitstream** %bitstream, align 8
  store %struct.Bitstream* %32, %struct.Bitstream** %bs_src, align 8
  %33 = load i32, i32* %i, align 4
  %idxprom14 = sext i32 %33 to i64
  %34 = load %struct.CSobj*, %struct.CSobj** %cs.addr, align 8
  %encenv = getelementptr inbounds %struct.CSobj, %struct.CSobj* %34, i32 0, i32 1
  %35 = load %struct.EncodingEnvironment*, %struct.EncodingEnvironment** %encenv, align 8
  %arrayidx15 = getelementptr inbounds %struct.EncodingEnvironment, %struct.EncodingEnvironment* %35, i64 %idxprom14
  store %struct.EncodingEnvironment* %arrayidx15, %struct.EncodingEnvironment** %ee_dest, align 8
  %36 = load i32, i32* %i, align 4
  %idxprom16 = sext i32 %36 to i64
  %37 = load %struct.CSobj*, %struct.CSobj** %cs.addr, align 8
  %bitstream17 = getelementptr inbounds %struct.CSobj, %struct.CSobj* %37, i32 0, i32 2
  %38 = load %struct.Bitstream*, %struct.Bitstream** %bitstream17, align 8
  %arrayidx18 = getelementptr inbounds %struct.Bitstream, %struct.Bitstream* %38, i64 %idxprom16
  store %struct.Bitstream* %arrayidx18, %struct.Bitstream** %bs_dest, align 8
  %39 = load %struct.EncodingEnvironment*, %struct.EncodingEnvironment** %ee_dest, align 8
  %40 = bitcast %struct.EncodingEnvironment* %39 to i8*
  %41 = load %struct.EncodingEnvironment*, %struct.EncodingEnvironment** %ee_src, align 8
  %42 = bitcast %struct.EncodingEnvironment* %41 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %40, i8* %42, i64 104, i32 8, i1 false)
  %43 = load %struct.Bitstream*, %struct.Bitstream** %bs_dest, align 8
  %44 = bitcast %struct.Bitstream* %43 to i8*
  %45 = load %struct.Bitstream*, %struct.Bitstream** %bs_src, align 8
  %46 = bitcast %struct.Bitstream* %45 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %44, i8* %46, i64 48, i32 8, i1 false)
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %47 = load i32, i32* %i, align 4
  %inc = add nsw i32 %47, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond

for.end:                                          ; preds = %cond.end
  %48 = load %struct.MotionInfoContexts*, %struct.MotionInfoContexts** %mc_dest, align 8
  %49 = bitcast %struct.MotionInfoContexts* %48 to i8*
  %50 = load %struct.MotionInfoContexts*, %struct.MotionInfoContexts** %mc_src, align 8
  %51 = bitcast %struct.MotionInfoContexts* %50 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %49, i8* %51, i64 1504, i32 8, i1 false)
  %52 = load %struct.TextureInfoContexts*, %struct.TextureInfoContexts** %tc_dest, align 8
  %53 = bitcast %struct.TextureInfoContexts* %52 to i8*
  %54 = load %struct.TextureInfoContexts*, %struct.TextureInfoContexts** %tc_src, align 8
  %55 = bitcast %struct.TextureInfoContexts* %54 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %53, i8* %55, i64 12128, i32 8, i1 false)
  br label %if.end.41

if.else:                                          ; preds = %if.end
  store i32 0, i32* %i, align 4
  br label %for.cond.19

for.cond.19:                                      ; preds = %for.inc.38, %if.else
  %56 = load i32, i32* %i, align 4
  %57 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %currentPicture20 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %57, i32 0, i32 49
  %58 = load %struct.Picture*, %struct.Picture** %currentPicture20, align 8
  %idr_flag21 = getelementptr inbounds %struct.Picture, %struct.Picture* %58, i32 0, i32 1
  %59 = load i32, i32* %idr_flag21, align 4
  %tobool22 = icmp ne i32 %59, 0
  br i1 %tobool22, label %cond.true.23, label %cond.false.24

cond.true.23:                                     ; preds = %for.cond.19
  br label %cond.end.26

cond.false.24:                                    ; preds = %for.cond.19
  %60 = load %struct.CSobj*, %struct.CSobj** %cs.addr, align 8
  %no_part25 = getelementptr inbounds %struct.CSobj, %struct.CSobj* %60, i32 0, i32 0
  %61 = load i32, i32* %no_part25, align 4
  br label %cond.end.26

cond.end.26:                                      ; preds = %cond.false.24, %cond.true.23
  %cond27 = phi i32 [ 1, %cond.true.23 ], [ %61, %cond.false.24 ]
  %cmp28 = icmp slt i32 %56, %cond27
  br i1 %cmp28, label %for.body.29, label %for.end.40

for.body.29:                                      ; preds = %cond.end.26
  %62 = load i32, i32* %i, align 4
  %idxprom30 = sext i32 %62 to i64
  %63 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %currentSlice31 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %63, i32 0, i32 50
  %64 = load %struct.Slice*, %struct.Slice** %currentSlice31, align 8
  %partArr32 = getelementptr inbounds %struct.Slice, %struct.Slice* %64, i32 0, i32 6
  %65 = load %struct.datapartition*, %struct.datapartition** %partArr32, align 8
  %arrayidx33 = getelementptr inbounds %struct.datapartition, %struct.datapartition* %65, i64 %idxprom30
  %bitstream34 = getelementptr inbounds %struct.datapartition, %struct.datapartition* %arrayidx33, i32 0, i32 0
  %66 = load %struct.Bitstream*, %struct.Bitstream** %bitstream34, align 8
  store %struct.Bitstream* %66, %struct.Bitstream** %bs_src, align 8
  %67 = load i32, i32* %i, align 4
  %idxprom35 = sext i32 %67 to i64
  %68 = load %struct.CSobj*, %struct.CSobj** %cs.addr, align 8
  %bitstream36 = getelementptr inbounds %struct.CSobj, %struct.CSobj* %68, i32 0, i32 2
  %69 = load %struct.Bitstream*, %struct.Bitstream** %bitstream36, align 8
  %arrayidx37 = getelementptr inbounds %struct.Bitstream, %struct.Bitstream* %69, i64 %idxprom35
  store %struct.Bitstream* %arrayidx37, %struct.Bitstream** %bs_dest, align 8
  %70 = load %struct.Bitstream*, %struct.Bitstream** %bs_dest, align 8
  %71 = bitcast %struct.Bitstream* %70 to i8*
  %72 = load %struct.Bitstream*, %struct.Bitstream** %bs_src, align 8
  %73 = bitcast %struct.Bitstream* %72 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %71, i8* %73, i64 48, i32 8, i1 false)
  br label %for.inc.38

for.inc.38:                                       ; preds = %for.body.29
  %74 = load i32, i32* %i, align 4
  %inc39 = add nsw i32 %74, 1
  store i32 %inc39, i32* %i, align 4
  br label %for.cond.19

for.end.40:                                       ; preds = %cond.end.26
  br label %if.end.41

if.end.41:                                        ; preds = %for.end.40, %for.end
  %75 = load %struct.macroblock*, %struct.macroblock** %currMB, align 8
  %currSEnr = getelementptr inbounds %struct.macroblock, %struct.macroblock* %75, i32 0, i32 0
  %76 = load i32, i32* %currSEnr, align 4
  %77 = load %struct.CSobj*, %struct.CSobj** %cs.addr, align 8
  %currSEnr42 = getelementptr inbounds %struct.CSobj, %struct.CSobj* %77, i32 0, i32 6
  store i32 %76, i32* %currSEnr42, align 4
  %78 = load %struct.CSobj*, %struct.CSobj** %cs.addr, align 8
  %bitcounter = getelementptr inbounds %struct.CSobj, %struct.CSobj* %78, i32 0, i32 7
  %79 = bitcast [8 x i32]* %bitcounter to i8*
  %80 = load %struct.macroblock*, %struct.macroblock** %currMB, align 8
  %bitcounter43 = getelementptr inbounds %struct.macroblock, %struct.macroblock* %80, i32 0, i32 5
  %81 = bitcast [8 x i32]* %bitcounter43 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %79, i8* %81, i64 32, i32 4, i1 false)
  %82 = load %struct.CSobj*, %struct.CSobj** %cs.addr, align 8
  %mvd = getelementptr inbounds %struct.CSobj, %struct.CSobj* %82, i32 0, i32 8
  %83 = bitcast [2 x [4 x [4 x [2 x i32]]]]* %mvd to i8*
  %84 = load %struct.macroblock*, %struct.macroblock** %currMB, align 8
  %mvd44 = getelementptr inbounds %struct.macroblock, %struct.macroblock* %84, i32 0, i32 9
  %85 = bitcast [2 x [4 x [4 x [2 x i32]]]]* %mvd44 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %83, i8* %85, i64 256, i32 4, i1 false)
  %86 = load %struct.macroblock*, %struct.macroblock** %currMB, align 8
  %cbp_bits = getelementptr inbounds %struct.macroblock, %struct.macroblock* %86, i32 0, i32 16
  %87 = load i64, i64* %cbp_bits, align 8
  %88 = load %struct.CSobj*, %struct.CSobj** %cs.addr, align 8
  %cbp_bits45 = getelementptr inbounds %struct.CSobj, %struct.CSobj* %88, i32 0, i32 9
  store i64 %87, i64* %cbp_bits45, align 8
  br label %return

return:                                           ; preds = %if.end.41, %if.then
  ret void
}

; Function Attrs: nounwind
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* nocapture, i8* nocapture readonly, i64, i32, i1) #3

; Function Attrs: nounwind uwtable
define void @reset_coding_state(%struct.CSobj* %cs) #0 {
entry:
  %cs.addr = alloca %struct.CSobj*, align 8
  %i = alloca i32, align 4
  %ee_src = alloca %struct.EncodingEnvironment*, align 8
  %ee_dest = alloca %struct.EncodingEnvironment*, align 8
  %bs_src = alloca %struct.Bitstream*, align 8
  %bs_dest = alloca %struct.Bitstream*, align 8
  %mc_dest = alloca %struct.MotionInfoContexts*, align 8
  %tc_dest = alloca %struct.TextureInfoContexts*, align 8
  %mc_src = alloca %struct.MotionInfoContexts*, align 8
  %tc_src = alloca %struct.TextureInfoContexts*, align 8
  %currMB = alloca %struct.macroblock*, align 8
  store %struct.CSobj* %cs, %struct.CSobj** %cs.addr, align 8
  %0 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %currentSlice = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %0, i32 0, i32 50
  %1 = load %struct.Slice*, %struct.Slice** %currentSlice, align 8
  %mot_ctx = getelementptr inbounds %struct.Slice, %struct.Slice* %1, i32 0, i32 7
  %2 = load %struct.MotionInfoContexts*, %struct.MotionInfoContexts** %mot_ctx, align 8
  store %struct.MotionInfoContexts* %2, %struct.MotionInfoContexts** %mc_dest, align 8
  %3 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %currentSlice1 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %3, i32 0, i32 50
  %4 = load %struct.Slice*, %struct.Slice** %currentSlice1, align 8
  %tex_ctx = getelementptr inbounds %struct.Slice, %struct.Slice* %4, i32 0, i32 8
  %5 = load %struct.TextureInfoContexts*, %struct.TextureInfoContexts** %tex_ctx, align 8
  store %struct.TextureInfoContexts* %5, %struct.TextureInfoContexts** %tc_dest, align 8
  %6 = load %struct.CSobj*, %struct.CSobj** %cs.addr, align 8
  %mot_ctx2 = getelementptr inbounds %struct.CSobj, %struct.CSobj* %6, i32 0, i32 4
  %7 = load %struct.MotionInfoContexts*, %struct.MotionInfoContexts** %mot_ctx2, align 8
  store %struct.MotionInfoContexts* %7, %struct.MotionInfoContexts** %mc_src, align 8
  %8 = load %struct.CSobj*, %struct.CSobj** %cs.addr, align 8
  %tex_ctx3 = getelementptr inbounds %struct.CSobj, %struct.CSobj* %8, i32 0, i32 5
  %9 = load %struct.TextureInfoContexts*, %struct.TextureInfoContexts** %tex_ctx3, align 8
  store %struct.TextureInfoContexts* %9, %struct.TextureInfoContexts** %tc_src, align 8
  %10 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %current_mb_nr = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %10, i32 0, i32 3
  %11 = load i32, i32* %current_mb_nr, align 4
  %idxprom = sext i32 %11 to i64
  %12 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %mb_data = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %12, i32 0, i32 51
  %13 = load %struct.macroblock*, %struct.macroblock** %mb_data, align 8
  %arrayidx = getelementptr inbounds %struct.macroblock, %struct.macroblock* %13, i64 %idxprom
  store %struct.macroblock* %arrayidx, %struct.macroblock** %currMB, align 8
  %14 = load %struct.InputParameters*, %struct.InputParameters** @input, align 8
  %rdopt = getelementptr inbounds %struct.InputParameters, %struct.InputParameters* %14, i32 0, i32 85
  %15 = load i32, i32* %rdopt, align 4
  %tobool = icmp ne i32 %15, 0
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  br label %return

if.end:                                           ; preds = %entry
  %16 = load %struct.CSobj*, %struct.CSobj** %cs.addr, align 8
  %symbol_mode = getelementptr inbounds %struct.CSobj, %struct.CSobj* %16, i32 0, i32 3
  %17 = load i32, i32* %symbol_mode, align 4
  %cmp = icmp eq i32 %17, 1
  br i1 %cmp, label %if.then.4, label %if.else

if.then.4:                                        ; preds = %if.end
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.then.4
  %18 = load i32, i32* %i, align 4
  %19 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %currentPicture = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %19, i32 0, i32 49
  %20 = load %struct.Picture*, %struct.Picture** %currentPicture, align 8
  %idr_flag = getelementptr inbounds %struct.Picture, %struct.Picture* %20, i32 0, i32 1
  %21 = load i32, i32* %idr_flag, align 4
  %tobool5 = icmp ne i32 %21, 0
  br i1 %tobool5, label %cond.true, label %cond.false

cond.true:                                        ; preds = %for.cond
  br label %cond.end

cond.false:                                       ; preds = %for.cond
  %22 = load %struct.CSobj*, %struct.CSobj** %cs.addr, align 8
  %no_part = getelementptr inbounds %struct.CSobj, %struct.CSobj* %22, i32 0, i32 0
  %23 = load i32, i32* %no_part, align 4
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ 1, %cond.true ], [ %23, %cond.false ]
  %cmp6 = icmp slt i32 %18, %cond
  br i1 %cmp6, label %for.body, label %for.end

for.body:                                         ; preds = %cond.end
  %24 = load i32, i32* %i, align 4
  %idxprom7 = sext i32 %24 to i64
  %25 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %currentSlice8 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %25, i32 0, i32 50
  %26 = load %struct.Slice*, %struct.Slice** %currentSlice8, align 8
  %partArr = getelementptr inbounds %struct.Slice, %struct.Slice* %26, i32 0, i32 6
  %27 = load %struct.datapartition*, %struct.datapartition** %partArr, align 8
  %arrayidx9 = getelementptr inbounds %struct.datapartition, %struct.datapartition* %27, i64 %idxprom7
  %ee_cabac = getelementptr inbounds %struct.datapartition, %struct.datapartition* %arrayidx9, i32 0, i32 1
  store %struct.EncodingEnvironment* %ee_cabac, %struct.EncodingEnvironment** %ee_dest, align 8
  %28 = load i32, i32* %i, align 4
  %idxprom10 = sext i32 %28 to i64
  %29 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %currentSlice11 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %29, i32 0, i32 50
  %30 = load %struct.Slice*, %struct.Slice** %currentSlice11, align 8
  %partArr12 = getelementptr inbounds %struct.Slice, %struct.Slice* %30, i32 0, i32 6
  %31 = load %struct.datapartition*, %struct.datapartition** %partArr12, align 8
  %arrayidx13 = getelementptr inbounds %struct.datapartition, %struct.datapartition* %31, i64 %idxprom10
  %bitstream = getelementptr inbounds %struct.datapartition, %struct.datapartition* %arrayidx13, i32 0, i32 0
  %32 = load %struct.Bitstream*, %struct.Bitstream** %bitstream, align 8
  store %struct.Bitstream* %32, %struct.Bitstream** %bs_dest, align 8
  %33 = load i32, i32* %i, align 4
  %idxprom14 = sext i32 %33 to i64
  %34 = load %struct.CSobj*, %struct.CSobj** %cs.addr, align 8
  %encenv = getelementptr inbounds %struct.CSobj, %struct.CSobj* %34, i32 0, i32 1
  %35 = load %struct.EncodingEnvironment*, %struct.EncodingEnvironment** %encenv, align 8
  %arrayidx15 = getelementptr inbounds %struct.EncodingEnvironment, %struct.EncodingEnvironment* %35, i64 %idxprom14
  store %struct.EncodingEnvironment* %arrayidx15, %struct.EncodingEnvironment** %ee_src, align 8
  %36 = load i32, i32* %i, align 4
  %idxprom16 = sext i32 %36 to i64
  %37 = load %struct.CSobj*, %struct.CSobj** %cs.addr, align 8
  %bitstream17 = getelementptr inbounds %struct.CSobj, %struct.CSobj* %37, i32 0, i32 2
  %38 = load %struct.Bitstream*, %struct.Bitstream** %bitstream17, align 8
  %arrayidx18 = getelementptr inbounds %struct.Bitstream, %struct.Bitstream* %38, i64 %idxprom16
  store %struct.Bitstream* %arrayidx18, %struct.Bitstream** %bs_src, align 8
  %39 = load %struct.EncodingEnvironment*, %struct.EncodingEnvironment** %ee_dest, align 8
  %40 = bitcast %struct.EncodingEnvironment* %39 to i8*
  %41 = load %struct.EncodingEnvironment*, %struct.EncodingEnvironment** %ee_src, align 8
  %42 = bitcast %struct.EncodingEnvironment* %41 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %40, i8* %42, i64 104, i32 8, i1 false)
  %43 = load %struct.Bitstream*, %struct.Bitstream** %bs_dest, align 8
  %44 = bitcast %struct.Bitstream* %43 to i8*
  %45 = load %struct.Bitstream*, %struct.Bitstream** %bs_src, align 8
  %46 = bitcast %struct.Bitstream* %45 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %44, i8* %46, i64 48, i32 8, i1 false)
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %47 = load i32, i32* %i, align 4
  %inc = add nsw i32 %47, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond

for.end:                                          ; preds = %cond.end
  %48 = load %struct.MotionInfoContexts*, %struct.MotionInfoContexts** %mc_dest, align 8
  %49 = bitcast %struct.MotionInfoContexts* %48 to i8*
  %50 = load %struct.MotionInfoContexts*, %struct.MotionInfoContexts** %mc_src, align 8
  %51 = bitcast %struct.MotionInfoContexts* %50 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %49, i8* %51, i64 1504, i32 8, i1 false)
  %52 = load %struct.TextureInfoContexts*, %struct.TextureInfoContexts** %tc_dest, align 8
  %53 = bitcast %struct.TextureInfoContexts* %52 to i8*
  %54 = load %struct.TextureInfoContexts*, %struct.TextureInfoContexts** %tc_src, align 8
  %55 = bitcast %struct.TextureInfoContexts* %54 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %53, i8* %55, i64 12128, i32 8, i1 false)
  br label %if.end.41

if.else:                                          ; preds = %if.end
  store i32 0, i32* %i, align 4
  br label %for.cond.19

for.cond.19:                                      ; preds = %for.inc.38, %if.else
  %56 = load i32, i32* %i, align 4
  %57 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %currentPicture20 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %57, i32 0, i32 49
  %58 = load %struct.Picture*, %struct.Picture** %currentPicture20, align 8
  %idr_flag21 = getelementptr inbounds %struct.Picture, %struct.Picture* %58, i32 0, i32 1
  %59 = load i32, i32* %idr_flag21, align 4
  %tobool22 = icmp ne i32 %59, 0
  br i1 %tobool22, label %cond.true.23, label %cond.false.24

cond.true.23:                                     ; preds = %for.cond.19
  br label %cond.end.26

cond.false.24:                                    ; preds = %for.cond.19
  %60 = load %struct.CSobj*, %struct.CSobj** %cs.addr, align 8
  %no_part25 = getelementptr inbounds %struct.CSobj, %struct.CSobj* %60, i32 0, i32 0
  %61 = load i32, i32* %no_part25, align 4
  br label %cond.end.26

cond.end.26:                                      ; preds = %cond.false.24, %cond.true.23
  %cond27 = phi i32 [ 1, %cond.true.23 ], [ %61, %cond.false.24 ]
  %cmp28 = icmp slt i32 %56, %cond27
  br i1 %cmp28, label %for.body.29, label %for.end.40

for.body.29:                                      ; preds = %cond.end.26
  %62 = load i32, i32* %i, align 4
  %idxprom30 = sext i32 %62 to i64
  %63 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %currentSlice31 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %63, i32 0, i32 50
  %64 = load %struct.Slice*, %struct.Slice** %currentSlice31, align 8
  %partArr32 = getelementptr inbounds %struct.Slice, %struct.Slice* %64, i32 0, i32 6
  %65 = load %struct.datapartition*, %struct.datapartition** %partArr32, align 8
  %arrayidx33 = getelementptr inbounds %struct.datapartition, %struct.datapartition* %65, i64 %idxprom30
  %bitstream34 = getelementptr inbounds %struct.datapartition, %struct.datapartition* %arrayidx33, i32 0, i32 0
  %66 = load %struct.Bitstream*, %struct.Bitstream** %bitstream34, align 8
  store %struct.Bitstream* %66, %struct.Bitstream** %bs_dest, align 8
  %67 = load i32, i32* %i, align 4
  %idxprom35 = sext i32 %67 to i64
  %68 = load %struct.CSobj*, %struct.CSobj** %cs.addr, align 8
  %bitstream36 = getelementptr inbounds %struct.CSobj, %struct.CSobj* %68, i32 0, i32 2
  %69 = load %struct.Bitstream*, %struct.Bitstream** %bitstream36, align 8
  %arrayidx37 = getelementptr inbounds %struct.Bitstream, %struct.Bitstream* %69, i64 %idxprom35
  store %struct.Bitstream* %arrayidx37, %struct.Bitstream** %bs_src, align 8
  %70 = load %struct.Bitstream*, %struct.Bitstream** %bs_dest, align 8
  %71 = bitcast %struct.Bitstream* %70 to i8*
  %72 = load %struct.Bitstream*, %struct.Bitstream** %bs_src, align 8
  %73 = bitcast %struct.Bitstream* %72 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %71, i8* %73, i64 48, i32 8, i1 false)
  br label %for.inc.38

for.inc.38:                                       ; preds = %for.body.29
  %74 = load i32, i32* %i, align 4
  %inc39 = add nsw i32 %74, 1
  store i32 %inc39, i32* %i, align 4
  br label %for.cond.19

for.end.40:                                       ; preds = %cond.end.26
  br label %if.end.41

if.end.41:                                        ; preds = %for.end.40, %for.end
  %75 = load %struct.CSobj*, %struct.CSobj** %cs.addr, align 8
  %currSEnr = getelementptr inbounds %struct.CSobj, %struct.CSobj* %75, i32 0, i32 6
  %76 = load i32, i32* %currSEnr, align 4
  %77 = load %struct.macroblock*, %struct.macroblock** %currMB, align 8
  %currSEnr42 = getelementptr inbounds %struct.macroblock, %struct.macroblock* %77, i32 0, i32 0
  store i32 %76, i32* %currSEnr42, align 4
  %78 = load %struct.macroblock*, %struct.macroblock** %currMB, align 8
  %bitcounter = getelementptr inbounds %struct.macroblock, %struct.macroblock* %78, i32 0, i32 5
  %79 = bitcast [8 x i32]* %bitcounter to i8*
  %80 = load %struct.CSobj*, %struct.CSobj** %cs.addr, align 8
  %bitcounter43 = getelementptr inbounds %struct.CSobj, %struct.CSobj* %80, i32 0, i32 7
  %81 = bitcast [8 x i32]* %bitcounter43 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %79, i8* %81, i64 32, i32 4, i1 false)
  %82 = load %struct.macroblock*, %struct.macroblock** %currMB, align 8
  %mvd = getelementptr inbounds %struct.macroblock, %struct.macroblock* %82, i32 0, i32 9
  %83 = bitcast [2 x [4 x [4 x [2 x i32]]]]* %mvd to i8*
  %84 = load %struct.CSobj*, %struct.CSobj** %cs.addr, align 8
  %mvd44 = getelementptr inbounds %struct.CSobj, %struct.CSobj* %84, i32 0, i32 8
  %85 = bitcast [2 x [4 x [4 x [2 x i32]]]]* %mvd44 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %83, i8* %85, i64 256, i32 4, i1 false)
  %86 = load %struct.CSobj*, %struct.CSobj** %cs.addr, align 8
  %cbp_bits = getelementptr inbounds %struct.CSobj, %struct.CSobj* %86, i32 0, i32 9
  %87 = load i64, i64* %cbp_bits, align 8
  %88 = load %struct.macroblock*, %struct.macroblock** %currMB, align 8
  %cbp_bits45 = getelementptr inbounds %struct.macroblock, %struct.macroblock* %88, i32 0, i32 16
  store i64 %87, i64* %cbp_bits45, align 8
  br label %return

return:                                           ; preds = %if.end.41, %if.then
  ret void
}

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind }

!llvm.ident = !{!0}

!0 = !{!"clang version 3.7.0 (tags/RELEASE_370/final)"}
