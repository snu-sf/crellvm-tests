; ModuleID = 'biariencode.c'
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

@rLPS_table_64x4 = constant [64 x [4 x i8]] [[4 x i8] c"\80\B0\D0\F0", [4 x i8] c"\80\A7\C5\E3", [4 x i8] c"\80\9E\BB\D8", [4 x i8] c"{\96\B2\CD", [4 x i8] c"t\8E\A9\C3", [4 x i8] c"o\87\A0\B9", [4 x i8] c"i\80\98\AF", [4 x i8] c"dz\90\A6", [4 x i8] c"_t\89\9E", [4 x i8] c"Zn\82\96", [4 x i8] c"Uh{\8E", [4 x i8] c"Qcu\87", [4 x i8] c"M^o\80", [4 x i8] c"IYiz", [4 x i8] c"EUdt", [4 x i8] c"BP_n", [4 x i8] c">LZh", [4 x i8] c";HVc", [4 x i8] c"8EQ^", [4 x i8] c"5AMY", [4 x i8] c"3>IU", [4 x i8] c"0;EP", [4 x i8] c".8BL", [4 x i8] c"+5?H", [4 x i8] c")2;E", [4 x i8] c"'08A", [4 x i8] c"%-6>", [4 x i8] c"#+3;", [4 x i8] c"!)08", [4 x i8] c" '.5", [4 x i8] c"\1E%+2", [4 x i8] c"\1D#)0", [4 x i8] c"\1B!'-", [4 x i8] c"\1A\1F%+", [4 x i8] c"\18\1E#)", [4 x i8] c"\17\1C!'", [4 x i8] c"\16\1B %", [4 x i8] c"\15\1A\1E#", [4 x i8] c"\14\18\1D!", [4 x i8] c"\13\17\1B\1F", [4 x i8] c"\12\16\1A\1E", [4 x i8] c"\11\15\19\1C", [4 x i8] c"\10\14\17\1B", [4 x i8] c"\0F\13\16\19", [4 x i8] c"\0E\12\15\18", [4 x i8] c"\0E\11\14\17", [4 x i8] c"\0D\10\13\16", [4 x i8] c"\0C\0F\12\15", [4 x i8] c"\0C\0E\11\14", [4 x i8] c"\0B\0E\10\13", [4 x i8] c"\0B\0D\0F\12", [4 x i8] c"\0A\0C\0F\11", [4 x i8] c"\0A\0C\0E\10", [4 x i8] c"\09\0B\0D\0F", [4 x i8] c"\09\0B\0C\0E", [4 x i8] c"\08\0A\0C\0E", [4 x i8] c"\08\09\0B\0D", [4 x i8] c"\07\09\0B\0C", [4 x i8] c"\07\09\0A\0C", [4 x i8] c"\07\08\0A\0B", [4 x i8] c"\06\08\09\0B", [4 x i8] c"\06\07\09\0A", [4 x i8] c"\06\07\08\09", [4 x i8] c"\02\02\02\02"], align 16
@AC_next_state_MPS_64 = constant [64 x i16] [i16 1, i16 2, i16 3, i16 4, i16 5, i16 6, i16 7, i16 8, i16 9, i16 10, i16 11, i16 12, i16 13, i16 14, i16 15, i16 16, i16 17, i16 18, i16 19, i16 20, i16 21, i16 22, i16 23, i16 24, i16 25, i16 26, i16 27, i16 28, i16 29, i16 30, i16 31, i16 32, i16 33, i16 34, i16 35, i16 36, i16 37, i16 38, i16 39, i16 40, i16 41, i16 42, i16 43, i16 44, i16 45, i16 46, i16 47, i16 48, i16 49, i16 50, i16 51, i16 52, i16 53, i16 54, i16 55, i16 56, i16 57, i16 58, i16 59, i16 60, i16 61, i16 62, i16 62, i16 63], align 16
@AC_next_state_LPS_64 = constant [64 x i16] [i16 0, i16 0, i16 1, i16 2, i16 2, i16 4, i16 4, i16 5, i16 6, i16 7, i16 8, i16 9, i16 9, i16 11, i16 11, i16 12, i16 13, i16 13, i16 15, i16 15, i16 16, i16 16, i16 18, i16 18, i16 19, i16 19, i16 21, i16 21, i16 22, i16 22, i16 23, i16 24, i16 24, i16 25, i16 26, i16 26, i16 27, i16 27, i16 28, i16 29, i16 29, i16 30, i16 30, i16 30, i16 31, i16 32, i16 32, i16 33, i16 33, i16 33, i16 34, i16 34, i16 35, i16 35, i16 35, i16 36, i16 36, i16 36, i16 37, i16 37, i16 37, i16 38, i16 38, i16 63], align 16
@binCount = global i32 0, align 4
@.str = private unnamed_addr constant [41 x i8] c"arienco_create_encoding_environment: eep\00", align 1
@errortext = external global [300 x i8], align 16
@.str.1 = private unnamed_addr constant [33 x i8] c"Error freeing eep (NULL pointer)\00", align 1
@img = external global %struct.ImageParameters*, align 8
@stats = external global %struct.StatParameters*, align 8
@cabac_encoding = external global i32, align 4

; Function Attrs: nounwind uwtable
define %struct.EncodingEnvironment* @arienco_create_encoding_environment() #0 {
entry:
  %eep = alloca %struct.EncodingEnvironment*, align 8
  %call = call noalias i8* @calloc(i64 1, i64 104) #3
  %0 = bitcast i8* %call to %struct.EncodingEnvironment*
  store %struct.EncodingEnvironment* %0, %struct.EncodingEnvironment** %eep, align 8
  %cmp = icmp eq %struct.EncodingEnvironment* %0, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  call void @no_mem_exit(i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str, i32 0, i32 0))
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %1 = load %struct.EncodingEnvironment*, %struct.EncodingEnvironment** %eep, align 8
  ret %struct.EncodingEnvironment* %1
}

; Function Attrs: nounwind
declare noalias i8* @calloc(i64, i64) #1

declare void @no_mem_exit(i8*) #2

; Function Attrs: nounwind uwtable
define void @arienco_delete_encoding_environment(%struct.EncodingEnvironment* %eep) #0 {
entry:
  %eep.addr = alloca %struct.EncodingEnvironment*, align 8
  store %struct.EncodingEnvironment* %eep, %struct.EncodingEnvironment** %eep.addr, align 8
  %0 = load %struct.EncodingEnvironment*, %struct.EncodingEnvironment** %eep.addr, align 8
  %cmp = icmp eq %struct.EncodingEnvironment* %0, null
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %call = call i32 (i8*, i64, i8*, ...) @snprintf(i8* getelementptr inbounds ([300 x i8], [300 x i8]* @errortext, i32 0, i32 0), i64 300, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.1, i32 0, i32 0)) #3
  call void @error(i8* getelementptr inbounds ([300 x i8], [300 x i8]* @errortext, i32 0, i32 0), i32 200)
  br label %if.end

if.else:                                          ; preds = %entry
  %1 = load %struct.EncodingEnvironment*, %struct.EncodingEnvironment** %eep.addr, align 8
  %2 = bitcast %struct.EncodingEnvironment* %1 to i8*
  call void @free(i8* %2) #3
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  ret void
}

; Function Attrs: nounwind
declare i32 @snprintf(i8*, i64, i8*, ...) #1

declare void @error(i8*, i32) #2

; Function Attrs: nounwind
declare void @free(i8*) #1

; Function Attrs: nounwind uwtable
define void @arienco_start_encoding(%struct.EncodingEnvironment* %eep, i8* %code_buffer, i32* %code_len, i32 %slice_type) #0 {
entry:
  %eep.addr = alloca %struct.EncodingEnvironment*, align 8
  %code_buffer.addr = alloca i8*, align 8
  %code_len.addr = alloca i32*, align 8
  %slice_type.addr = alloca i32, align 4
  store %struct.EncodingEnvironment* %eep, %struct.EncodingEnvironment** %eep.addr, align 8
  store i8* %code_buffer, i8** %code_buffer.addr, align 8
  store i32* %code_len, i32** %code_len.addr, align 8
  store i32 %slice_type, i32* %slice_type.addr, align 4
  %0 = load %struct.EncodingEnvironment*, %struct.EncodingEnvironment** %eep.addr, align 8
  %Elow = getelementptr inbounds %struct.EncodingEnvironment, %struct.EncodingEnvironment* %0, i32 0, i32 0
  store i32 0, i32* %Elow, align 4
  %1 = load %struct.EncodingEnvironment*, %struct.EncodingEnvironment** %eep.addr, align 8
  %Ebits_to_follow = getelementptr inbounds %struct.EncodingEnvironment, %struct.EncodingEnvironment* %1, i32 0, i32 4
  store i32 0, i32* %Ebits_to_follow, align 4
  %2 = load %struct.EncodingEnvironment*, %struct.EncodingEnvironment** %eep.addr, align 8
  %Ebuffer = getelementptr inbounds %struct.EncodingEnvironment, %struct.EncodingEnvironment* %2, i32 0, i32 2
  store i32 0, i32* %Ebuffer, align 4
  %3 = load %struct.EncodingEnvironment*, %struct.EncodingEnvironment** %eep.addr, align 8
  %Ebits_to_go = getelementptr inbounds %struct.EncodingEnvironment, %struct.EncodingEnvironment* %3, i32 0, i32 3
  store i32 9, i32* %Ebits_to_go, align 4
  %4 = load i8*, i8** %code_buffer.addr, align 8
  %5 = load %struct.EncodingEnvironment*, %struct.EncodingEnvironment** %eep.addr, align 8
  %Ecodestrm = getelementptr inbounds %struct.EncodingEnvironment, %struct.EncodingEnvironment* %5, i32 0, i32 5
  store i8* %4, i8** %Ecodestrm, align 8
  %6 = load i32*, i32** %code_len.addr, align 8
  %7 = load %struct.EncodingEnvironment*, %struct.EncodingEnvironment** %eep.addr, align 8
  %Ecodestrm_len = getelementptr inbounds %struct.EncodingEnvironment, %struct.EncodingEnvironment* %7, i32 0, i32 6
  store i32* %6, i32** %Ecodestrm_len, align 8
  %8 = load %struct.EncodingEnvironment*, %struct.EncodingEnvironment** %eep.addr, align 8
  %Erange = getelementptr inbounds %struct.EncodingEnvironment, %struct.EncodingEnvironment* %8, i32 0, i32 1
  store i32 510, i32* %Erange, align 4
  %9 = load %struct.EncodingEnvironment*, %struct.EncodingEnvironment** %eep.addr, align 8
  %C = getelementptr inbounds %struct.EncodingEnvironment, %struct.EncodingEnvironment* %9, i32 0, i32 14
  store i32 0, i32* %C, align 4
  %10 = load i32*, i32** %code_len.addr, align 8
  %11 = load i32, i32* %10, align 4
  %12 = load %struct.EncodingEnvironment*, %struct.EncodingEnvironment** %eep.addr, align 8
  %B = getelementptr inbounds %struct.EncodingEnvironment, %struct.EncodingEnvironment* %12, i32 0, i32 18
  store i32 %11, i32* %B, align 4
  %13 = load %struct.EncodingEnvironment*, %struct.EncodingEnvironment** %eep.addr, align 8
  %E = getelementptr inbounds %struct.EncodingEnvironment, %struct.EncodingEnvironment* %13, i32 0, i32 16
  store i32 0, i32* %E, align 4
  ret void
}

; Function Attrs: nounwind uwtable
define i32 @arienco_bits_written(%struct.EncodingEnvironment* %eep) #0 {
entry:
  %eep.addr = alloca %struct.EncodingEnvironment*, align 8
  store %struct.EncodingEnvironment* %eep, %struct.EncodingEnvironment** %eep.addr, align 8
  %0 = load %struct.EncodingEnvironment*, %struct.EncodingEnvironment** %eep.addr, align 8
  %Ecodestrm_len = getelementptr inbounds %struct.EncodingEnvironment, %struct.EncodingEnvironment* %0, i32 0, i32 6
  %1 = load i32*, i32** %Ecodestrm_len, align 8
  %2 = load i32, i32* %1, align 4
  %mul = mul nsw i32 8, %2
  %3 = load %struct.EncodingEnvironment*, %struct.EncodingEnvironment** %eep.addr, align 8
  %Ebits_to_follow = getelementptr inbounds %struct.EncodingEnvironment, %struct.EncodingEnvironment* %3, i32 0, i32 4
  %4 = load i32, i32* %Ebits_to_follow, align 4
  %add = add i32 %mul, %4
  %add1 = add i32 %add, 8
  %5 = load %struct.EncodingEnvironment*, %struct.EncodingEnvironment** %eep.addr, align 8
  %Ebits_to_go = getelementptr inbounds %struct.EncodingEnvironment, %struct.EncodingEnvironment* %5, i32 0, i32 3
  %6 = load i32, i32* %Ebits_to_go, align 4
  %sub = sub i32 %add1, %6
  ret i32 %sub
}

; Function Attrs: nounwind uwtable
define void @arienco_done_encoding(%struct.EncodingEnvironment* %eep) #0 {
entry:
  %eep.addr = alloca %struct.EncodingEnvironment*, align 8
  store %struct.EncodingEnvironment* %eep, %struct.EncodingEnvironment** %eep.addr, align 8
  %0 = load %struct.EncodingEnvironment*, %struct.EncodingEnvironment** %eep.addr, align 8
  %Ebuffer = getelementptr inbounds %struct.EncodingEnvironment, %struct.EncodingEnvironment* %0, i32 0, i32 2
  %1 = load i32, i32* %Ebuffer, align 4
  %shl = shl i32 %1, 1
  store i32 %shl, i32* %Ebuffer, align 4
  %2 = load %struct.EncodingEnvironment*, %struct.EncodingEnvironment** %eep.addr, align 8
  %Elow = getelementptr inbounds %struct.EncodingEnvironment, %struct.EncodingEnvironment* %2, i32 0, i32 0
  %3 = load i32, i32* %Elow, align 4
  %shr = lshr i32 %3, 9
  %and = and i32 %shr, 1
  %4 = load %struct.EncodingEnvironment*, %struct.EncodingEnvironment** %eep.addr, align 8
  %Ebuffer1 = getelementptr inbounds %struct.EncodingEnvironment, %struct.EncodingEnvironment* %4, i32 0, i32 2
  %5 = load i32, i32* %Ebuffer1, align 4
  %or = or i32 %5, %and
  store i32 %or, i32* %Ebuffer1, align 4
  %6 = load %struct.EncodingEnvironment*, %struct.EncodingEnvironment** %eep.addr, align 8
  %Ebits_to_go = getelementptr inbounds %struct.EncodingEnvironment, %struct.EncodingEnvironment* %6, i32 0, i32 3
  %7 = load i32, i32* %Ebits_to_go, align 4
  %dec = add i32 %7, -1
  store i32 %dec, i32* %Ebits_to_go, align 4
  %cmp = icmp eq i32 %dec, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %8 = load %struct.EncodingEnvironment*, %struct.EncodingEnvironment** %eep.addr, align 8
  %Ebuffer2 = getelementptr inbounds %struct.EncodingEnvironment, %struct.EncodingEnvironment* %8, i32 0, i32 2
  %9 = load i32, i32* %Ebuffer2, align 4
  %conv = trunc i32 %9 to i8
  %10 = load %struct.EncodingEnvironment*, %struct.EncodingEnvironment** %eep.addr, align 8
  %Ecodestrm_len = getelementptr inbounds %struct.EncodingEnvironment, %struct.EncodingEnvironment* %10, i32 0, i32 6
  %11 = load i32*, i32** %Ecodestrm_len, align 8
  %12 = load i32, i32* %11, align 4
  %inc = add nsw i32 %12, 1
  store i32 %inc, i32* %11, align 4
  %idxprom = sext i32 %12 to i64
  %13 = load %struct.EncodingEnvironment*, %struct.EncodingEnvironment** %eep.addr, align 8
  %Ecodestrm = getelementptr inbounds %struct.EncodingEnvironment, %struct.EncodingEnvironment* %13, i32 0, i32 5
  %14 = load i8*, i8** %Ecodestrm, align 8
  %arrayidx = getelementptr inbounds i8, i8* %14, i64 %idxprom
  store i8 %conv, i8* %arrayidx, align 1
  %15 = load %struct.EncodingEnvironment*, %struct.EncodingEnvironment** %eep.addr, align 8
  %Ebits_to_go3 = getelementptr inbounds %struct.EncodingEnvironment, %struct.EncodingEnvironment* %15, i32 0, i32 3
  store i32 8, i32* %Ebits_to_go3, align 4
  br label %while.cond

while.cond:                                       ; preds = %while.body, %if.then
  %16 = load %struct.EncodingEnvironment*, %struct.EncodingEnvironment** %eep.addr, align 8
  %C = getelementptr inbounds %struct.EncodingEnvironment, %struct.EncodingEnvironment* %16, i32 0, i32 14
  %17 = load i32, i32* %C, align 4
  %cmp4 = icmp sgt i32 %17, 7
  br i1 %cmp4, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %18 = load %struct.EncodingEnvironment*, %struct.EncodingEnvironment** %eep.addr, align 8
  %C6 = getelementptr inbounds %struct.EncodingEnvironment, %struct.EncodingEnvironment* %18, i32 0, i32 14
  %19 = load i32, i32* %C6, align 4
  %sub = sub nsw i32 %19, 8
  store i32 %sub, i32* %C6, align 4
  %20 = load %struct.EncodingEnvironment*, %struct.EncodingEnvironment** %eep.addr, align 8
  %E = getelementptr inbounds %struct.EncodingEnvironment, %struct.EncodingEnvironment* %20, i32 0, i32 16
  %21 = load i32, i32* %E, align 4
  %inc7 = add nsw i32 %21, 1
  store i32 %inc7, i32* %E, align 4
  br label %while.cond

while.end:                                        ; preds = %while.cond
  br label %if.end

if.end:                                           ; preds = %while.end, %entry
  br label %while.cond.8

while.cond.8:                                     ; preds = %if.end.44, %if.end
  %22 = load %struct.EncodingEnvironment*, %struct.EncodingEnvironment** %eep.addr, align 8
  %Ebits_to_follow = getelementptr inbounds %struct.EncodingEnvironment, %struct.EncodingEnvironment* %22, i32 0, i32 4
  %23 = load i32, i32* %Ebits_to_follow, align 4
  %cmp9 = icmp ugt i32 %23, 0
  br i1 %cmp9, label %while.body.11, label %while.end.45

while.body.11:                                    ; preds = %while.cond.8
  %24 = load %struct.EncodingEnvironment*, %struct.EncodingEnvironment** %eep.addr, align 8
  %Ebits_to_follow12 = getelementptr inbounds %struct.EncodingEnvironment, %struct.EncodingEnvironment* %24, i32 0, i32 4
  %25 = load i32, i32* %Ebits_to_follow12, align 4
  %dec13 = add i32 %25, -1
  store i32 %dec13, i32* %Ebits_to_follow12, align 4
  %26 = load %struct.EncodingEnvironment*, %struct.EncodingEnvironment** %eep.addr, align 8
  %Ebuffer14 = getelementptr inbounds %struct.EncodingEnvironment, %struct.EncodingEnvironment* %26, i32 0, i32 2
  %27 = load i32, i32* %Ebuffer14, align 4
  %shl15 = shl i32 %27, 1
  store i32 %shl15, i32* %Ebuffer14, align 4
  %28 = load %struct.EncodingEnvironment*, %struct.EncodingEnvironment** %eep.addr, align 8
  %Elow16 = getelementptr inbounds %struct.EncodingEnvironment, %struct.EncodingEnvironment* %28, i32 0, i32 0
  %29 = load i32, i32* %Elow16, align 4
  %shr17 = lshr i32 %29, 9
  %and18 = and i32 %shr17, 1
  %tobool = icmp ne i32 %and18, 0
  %lnot = xor i1 %tobool, true
  %lnot.ext = zext i1 %lnot to i32
  %30 = load %struct.EncodingEnvironment*, %struct.EncodingEnvironment** %eep.addr, align 8
  %Ebuffer19 = getelementptr inbounds %struct.EncodingEnvironment, %struct.EncodingEnvironment* %30, i32 0, i32 2
  %31 = load i32, i32* %Ebuffer19, align 4
  %or20 = or i32 %31, %lnot.ext
  store i32 %or20, i32* %Ebuffer19, align 4
  %32 = load %struct.EncodingEnvironment*, %struct.EncodingEnvironment** %eep.addr, align 8
  %Ebits_to_go21 = getelementptr inbounds %struct.EncodingEnvironment, %struct.EncodingEnvironment* %32, i32 0, i32 3
  %33 = load i32, i32* %Ebits_to_go21, align 4
  %dec22 = add i32 %33, -1
  store i32 %dec22, i32* %Ebits_to_go21, align 4
  %cmp23 = icmp eq i32 %dec22, 0
  br i1 %cmp23, label %if.then.25, label %if.end.44

if.then.25:                                       ; preds = %while.body.11
  %34 = load %struct.EncodingEnvironment*, %struct.EncodingEnvironment** %eep.addr, align 8
  %Ebuffer26 = getelementptr inbounds %struct.EncodingEnvironment, %struct.EncodingEnvironment* %34, i32 0, i32 2
  %35 = load i32, i32* %Ebuffer26, align 4
  %conv27 = trunc i32 %35 to i8
  %36 = load %struct.EncodingEnvironment*, %struct.EncodingEnvironment** %eep.addr, align 8
  %Ecodestrm_len28 = getelementptr inbounds %struct.EncodingEnvironment, %struct.EncodingEnvironment* %36, i32 0, i32 6
  %37 = load i32*, i32** %Ecodestrm_len28, align 8
  %38 = load i32, i32* %37, align 4
  %inc29 = add nsw i32 %38, 1
  store i32 %inc29, i32* %37, align 4
  %idxprom30 = sext i32 %38 to i64
  %39 = load %struct.EncodingEnvironment*, %struct.EncodingEnvironment** %eep.addr, align 8
  %Ecodestrm31 = getelementptr inbounds %struct.EncodingEnvironment, %struct.EncodingEnvironment* %39, i32 0, i32 5
  %40 = load i8*, i8** %Ecodestrm31, align 8
  %arrayidx32 = getelementptr inbounds i8, i8* %40, i64 %idxprom30
  store i8 %conv27, i8* %arrayidx32, align 1
  %41 = load %struct.EncodingEnvironment*, %struct.EncodingEnvironment** %eep.addr, align 8
  %Ebits_to_go33 = getelementptr inbounds %struct.EncodingEnvironment, %struct.EncodingEnvironment* %41, i32 0, i32 3
  store i32 8, i32* %Ebits_to_go33, align 4
  br label %while.cond.34

while.cond.34:                                    ; preds = %while.body.38, %if.then.25
  %42 = load %struct.EncodingEnvironment*, %struct.EncodingEnvironment** %eep.addr, align 8
  %C35 = getelementptr inbounds %struct.EncodingEnvironment, %struct.EncodingEnvironment* %42, i32 0, i32 14
  %43 = load i32, i32* %C35, align 4
  %cmp36 = icmp sgt i32 %43, 7
  br i1 %cmp36, label %while.body.38, label %while.end.43

while.body.38:                                    ; preds = %while.cond.34
  %44 = load %struct.EncodingEnvironment*, %struct.EncodingEnvironment** %eep.addr, align 8
  %C39 = getelementptr inbounds %struct.EncodingEnvironment, %struct.EncodingEnvironment* %44, i32 0, i32 14
  %45 = load i32, i32* %C39, align 4
  %sub40 = sub nsw i32 %45, 8
  store i32 %sub40, i32* %C39, align 4
  %46 = load %struct.EncodingEnvironment*, %struct.EncodingEnvironment** %eep.addr, align 8
  %E41 = getelementptr inbounds %struct.EncodingEnvironment, %struct.EncodingEnvironment* %46, i32 0, i32 16
  %47 = load i32, i32* %E41, align 4
  %inc42 = add nsw i32 %47, 1
  store i32 %inc42, i32* %E41, align 4
  br label %while.cond.34

while.end.43:                                     ; preds = %while.cond.34
  br label %if.end.44

if.end.44:                                        ; preds = %while.end.43, %while.body.11
  br label %while.cond.8

while.end.45:                                     ; preds = %while.cond.8
  %48 = load %struct.EncodingEnvironment*, %struct.EncodingEnvironment** %eep.addr, align 8
  %Ebuffer46 = getelementptr inbounds %struct.EncodingEnvironment, %struct.EncodingEnvironment* %48, i32 0, i32 2
  %49 = load i32, i32* %Ebuffer46, align 4
  %shl47 = shl i32 %49, 1
  store i32 %shl47, i32* %Ebuffer46, align 4
  %50 = load %struct.EncodingEnvironment*, %struct.EncodingEnvironment** %eep.addr, align 8
  %Elow48 = getelementptr inbounds %struct.EncodingEnvironment, %struct.EncodingEnvironment* %50, i32 0, i32 0
  %51 = load i32, i32* %Elow48, align 4
  %shr49 = lshr i32 %51, 8
  %and50 = and i32 %shr49, 1
  %52 = load %struct.EncodingEnvironment*, %struct.EncodingEnvironment** %eep.addr, align 8
  %Ebuffer51 = getelementptr inbounds %struct.EncodingEnvironment, %struct.EncodingEnvironment* %52, i32 0, i32 2
  %53 = load i32, i32* %Ebuffer51, align 4
  %or52 = or i32 %53, %and50
  store i32 %or52, i32* %Ebuffer51, align 4
  %54 = load %struct.EncodingEnvironment*, %struct.EncodingEnvironment** %eep.addr, align 8
  %Ebits_to_go53 = getelementptr inbounds %struct.EncodingEnvironment, %struct.EncodingEnvironment* %54, i32 0, i32 3
  %55 = load i32, i32* %Ebits_to_go53, align 4
  %dec54 = add i32 %55, -1
  store i32 %dec54, i32* %Ebits_to_go53, align 4
  %cmp55 = icmp eq i32 %dec54, 0
  br i1 %cmp55, label %if.then.57, label %if.end.76

if.then.57:                                       ; preds = %while.end.45
  %56 = load %struct.EncodingEnvironment*, %struct.EncodingEnvironment** %eep.addr, align 8
  %Ebuffer58 = getelementptr inbounds %struct.EncodingEnvironment, %struct.EncodingEnvironment* %56, i32 0, i32 2
  %57 = load i32, i32* %Ebuffer58, align 4
  %conv59 = trunc i32 %57 to i8
  %58 = load %struct.EncodingEnvironment*, %struct.EncodingEnvironment** %eep.addr, align 8
  %Ecodestrm_len60 = getelementptr inbounds %struct.EncodingEnvironment, %struct.EncodingEnvironment* %58, i32 0, i32 6
  %59 = load i32*, i32** %Ecodestrm_len60, align 8
  %60 = load i32, i32* %59, align 4
  %inc61 = add nsw i32 %60, 1
  store i32 %inc61, i32* %59, align 4
  %idxprom62 = sext i32 %60 to i64
  %61 = load %struct.EncodingEnvironment*, %struct.EncodingEnvironment** %eep.addr, align 8
  %Ecodestrm63 = getelementptr inbounds %struct.EncodingEnvironment, %struct.EncodingEnvironment* %61, i32 0, i32 5
  %62 = load i8*, i8** %Ecodestrm63, align 8
  %arrayidx64 = getelementptr inbounds i8, i8* %62, i64 %idxprom62
  store i8 %conv59, i8* %arrayidx64, align 1
  %63 = load %struct.EncodingEnvironment*, %struct.EncodingEnvironment** %eep.addr, align 8
  %Ebits_to_go65 = getelementptr inbounds %struct.EncodingEnvironment, %struct.EncodingEnvironment* %63, i32 0, i32 3
  store i32 8, i32* %Ebits_to_go65, align 4
  br label %while.cond.66

while.cond.66:                                    ; preds = %while.body.70, %if.then.57
  %64 = load %struct.EncodingEnvironment*, %struct.EncodingEnvironment** %eep.addr, align 8
  %C67 = getelementptr inbounds %struct.EncodingEnvironment, %struct.EncodingEnvironment* %64, i32 0, i32 14
  %65 = load i32, i32* %C67, align 4
  %cmp68 = icmp sgt i32 %65, 7
  br i1 %cmp68, label %while.body.70, label %while.end.75

while.body.70:                                    ; preds = %while.cond.66
  %66 = load %struct.EncodingEnvironment*, %struct.EncodingEnvironment** %eep.addr, align 8
  %C71 = getelementptr inbounds %struct.EncodingEnvironment, %struct.EncodingEnvironment* %66, i32 0, i32 14
  %67 = load i32, i32* %C71, align 4
  %sub72 = sub nsw i32 %67, 8
  store i32 %sub72, i32* %C71, align 4
  %68 = load %struct.EncodingEnvironment*, %struct.EncodingEnvironment** %eep.addr, align 8
  %E73 = getelementptr inbounds %struct.EncodingEnvironment, %struct.EncodingEnvironment* %68, i32 0, i32 16
  %69 = load i32, i32* %E73, align 4
  %inc74 = add nsw i32 %69, 1
  store i32 %inc74, i32* %E73, align 4
  br label %while.cond.66

while.end.75:                                     ; preds = %while.cond.66
  br label %if.end.76

if.end.76:                                        ; preds = %while.end.75, %while.end.45
  %70 = load %struct.EncodingEnvironment*, %struct.EncodingEnvironment** %eep.addr, align 8
  %Ebuffer77 = getelementptr inbounds %struct.EncodingEnvironment, %struct.EncodingEnvironment* %70, i32 0, i32 2
  %71 = load i32, i32* %Ebuffer77, align 4
  %shl78 = shl i32 %71, 1
  store i32 %shl78, i32* %Ebuffer77, align 4
  %72 = load %struct.EncodingEnvironment*, %struct.EncodingEnvironment** %eep.addr, align 8
  %Ebuffer79 = getelementptr inbounds %struct.EncodingEnvironment, %struct.EncodingEnvironment* %72, i32 0, i32 2
  %73 = load i32, i32* %Ebuffer79, align 4
  %or80 = or i32 %73, 1
  store i32 %or80, i32* %Ebuffer79, align 4
  %74 = load %struct.EncodingEnvironment*, %struct.EncodingEnvironment** %eep.addr, align 8
  %Ebits_to_go81 = getelementptr inbounds %struct.EncodingEnvironment, %struct.EncodingEnvironment* %74, i32 0, i32 3
  %75 = load i32, i32* %Ebits_to_go81, align 4
  %dec82 = add i32 %75, -1
  store i32 %dec82, i32* %Ebits_to_go81, align 4
  %cmp83 = icmp eq i32 %dec82, 0
  br i1 %cmp83, label %if.then.85, label %if.end.104

if.then.85:                                       ; preds = %if.end.76
  %76 = load %struct.EncodingEnvironment*, %struct.EncodingEnvironment** %eep.addr, align 8
  %Ebuffer86 = getelementptr inbounds %struct.EncodingEnvironment, %struct.EncodingEnvironment* %76, i32 0, i32 2
  %77 = load i32, i32* %Ebuffer86, align 4
  %conv87 = trunc i32 %77 to i8
  %78 = load %struct.EncodingEnvironment*, %struct.EncodingEnvironment** %eep.addr, align 8
  %Ecodestrm_len88 = getelementptr inbounds %struct.EncodingEnvironment, %struct.EncodingEnvironment* %78, i32 0, i32 6
  %79 = load i32*, i32** %Ecodestrm_len88, align 8
  %80 = load i32, i32* %79, align 4
  %inc89 = add nsw i32 %80, 1
  store i32 %inc89, i32* %79, align 4
  %idxprom90 = sext i32 %80 to i64
  %81 = load %struct.EncodingEnvironment*, %struct.EncodingEnvironment** %eep.addr, align 8
  %Ecodestrm91 = getelementptr inbounds %struct.EncodingEnvironment, %struct.EncodingEnvironment* %81, i32 0, i32 5
  %82 = load i8*, i8** %Ecodestrm91, align 8
  %arrayidx92 = getelementptr inbounds i8, i8* %82, i64 %idxprom90
  store i8 %conv87, i8* %arrayidx92, align 1
  %83 = load %struct.EncodingEnvironment*, %struct.EncodingEnvironment** %eep.addr, align 8
  %Ebits_to_go93 = getelementptr inbounds %struct.EncodingEnvironment, %struct.EncodingEnvironment* %83, i32 0, i32 3
  store i32 8, i32* %Ebits_to_go93, align 4
  br label %while.cond.94

while.cond.94:                                    ; preds = %while.body.98, %if.then.85
  %84 = load %struct.EncodingEnvironment*, %struct.EncodingEnvironment** %eep.addr, align 8
  %C95 = getelementptr inbounds %struct.EncodingEnvironment, %struct.EncodingEnvironment* %84, i32 0, i32 14
  %85 = load i32, i32* %C95, align 4
  %cmp96 = icmp sgt i32 %85, 7
  br i1 %cmp96, label %while.body.98, label %while.end.103

while.body.98:                                    ; preds = %while.cond.94
  %86 = load %struct.EncodingEnvironment*, %struct.EncodingEnvironment** %eep.addr, align 8
  %C99 = getelementptr inbounds %struct.EncodingEnvironment, %struct.EncodingEnvironment* %86, i32 0, i32 14
  %87 = load i32, i32* %C99, align 4
  %sub100 = sub nsw i32 %87, 8
  store i32 %sub100, i32* %C99, align 4
  %88 = load %struct.EncodingEnvironment*, %struct.EncodingEnvironment** %eep.addr, align 8
  %E101 = getelementptr inbounds %struct.EncodingEnvironment, %struct.EncodingEnvironment* %88, i32 0, i32 16
  %89 = load i32, i32* %E101, align 4
  %inc102 = add nsw i32 %89, 1
  store i32 %inc102, i32* %E101, align 4
  br label %while.cond.94

while.end.103:                                    ; preds = %while.cond.94
  br label %if.end.104

if.end.104:                                       ; preds = %while.end.103, %if.end.76
  %90 = load %struct.EncodingEnvironment*, %struct.EncodingEnvironment** %eep.addr, align 8
  %Ebits_to_go105 = getelementptr inbounds %struct.EncodingEnvironment, %struct.EncodingEnvironment* %90, i32 0, i32 3
  %91 = load i32, i32* %Ebits_to_go105, align 4
  %sub106 = sub i32 8, %91
  %92 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %type = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %92, i32 0, i32 6
  %93 = load i32, i32* %type, align 4
  %idxprom107 = sext i32 %93 to i64
  %94 = load %struct.StatParameters*, %struct.StatParameters** @stats, align 8
  %bit_use_stuffingBits = getelementptr inbounds %struct.StatParameters, %struct.StatParameters* %94, i32 0, i32 22
  %arrayidx108 = getelementptr inbounds [5 x i32], [5 x i32]* %bit_use_stuffingBits, i32 0, i64 %idxprom107
  %95 = load i32, i32* %arrayidx108, align 4
  %add = add i32 %95, %sub106
  store i32 %add, i32* %arrayidx108, align 4
  br label %while.cond.109

while.cond.109:                                   ; preds = %if.end.140, %if.end.104
  %96 = load %struct.EncodingEnvironment*, %struct.EncodingEnvironment** %eep.addr, align 8
  %Ebits_to_go110 = getelementptr inbounds %struct.EncodingEnvironment, %struct.EncodingEnvironment* %96, i32 0, i32 3
  %97 = load i32, i32* %Ebits_to_go110, align 4
  %cmp111 = icmp ne i32 %97, 8
  br i1 %cmp111, label %while.body.113, label %while.end.141

while.body.113:                                   ; preds = %while.cond.109
  %98 = load %struct.EncodingEnvironment*, %struct.EncodingEnvironment** %eep.addr, align 8
  %Ebuffer114 = getelementptr inbounds %struct.EncodingEnvironment, %struct.EncodingEnvironment* %98, i32 0, i32 2
  %99 = load i32, i32* %Ebuffer114, align 4
  %shl115 = shl i32 %99, 1
  store i32 %shl115, i32* %Ebuffer114, align 4
  %100 = load %struct.EncodingEnvironment*, %struct.EncodingEnvironment** %eep.addr, align 8
  %Ebuffer116 = getelementptr inbounds %struct.EncodingEnvironment, %struct.EncodingEnvironment* %100, i32 0, i32 2
  %101 = load i32, i32* %Ebuffer116, align 4
  store i32 %101, i32* %Ebuffer116, align 4
  %102 = load %struct.EncodingEnvironment*, %struct.EncodingEnvironment** %eep.addr, align 8
  %Ebits_to_go117 = getelementptr inbounds %struct.EncodingEnvironment, %struct.EncodingEnvironment* %102, i32 0, i32 3
  %103 = load i32, i32* %Ebits_to_go117, align 4
  %dec118 = add i32 %103, -1
  store i32 %dec118, i32* %Ebits_to_go117, align 4
  %cmp119 = icmp eq i32 %dec118, 0
  br i1 %cmp119, label %if.then.121, label %if.end.140

if.then.121:                                      ; preds = %while.body.113
  %104 = load %struct.EncodingEnvironment*, %struct.EncodingEnvironment** %eep.addr, align 8
  %Ebuffer122 = getelementptr inbounds %struct.EncodingEnvironment, %struct.EncodingEnvironment* %104, i32 0, i32 2
  %105 = load i32, i32* %Ebuffer122, align 4
  %conv123 = trunc i32 %105 to i8
  %106 = load %struct.EncodingEnvironment*, %struct.EncodingEnvironment** %eep.addr, align 8
  %Ecodestrm_len124 = getelementptr inbounds %struct.EncodingEnvironment, %struct.EncodingEnvironment* %106, i32 0, i32 6
  %107 = load i32*, i32** %Ecodestrm_len124, align 8
  %108 = load i32, i32* %107, align 4
  %inc125 = add nsw i32 %108, 1
  store i32 %inc125, i32* %107, align 4
  %idxprom126 = sext i32 %108 to i64
  %109 = load %struct.EncodingEnvironment*, %struct.EncodingEnvironment** %eep.addr, align 8
  %Ecodestrm127 = getelementptr inbounds %struct.EncodingEnvironment, %struct.EncodingEnvironment* %109, i32 0, i32 5
  %110 = load i8*, i8** %Ecodestrm127, align 8
  %arrayidx128 = getelementptr inbounds i8, i8* %110, i64 %idxprom126
  store i8 %conv123, i8* %arrayidx128, align 1
  %111 = load %struct.EncodingEnvironment*, %struct.EncodingEnvironment** %eep.addr, align 8
  %Ebits_to_go129 = getelementptr inbounds %struct.EncodingEnvironment, %struct.EncodingEnvironment* %111, i32 0, i32 3
  store i32 8, i32* %Ebits_to_go129, align 4
  br label %while.cond.130

while.cond.130:                                   ; preds = %while.body.134, %if.then.121
  %112 = load %struct.EncodingEnvironment*, %struct.EncodingEnvironment** %eep.addr, align 8
  %C131 = getelementptr inbounds %struct.EncodingEnvironment, %struct.EncodingEnvironment* %112, i32 0, i32 14
  %113 = load i32, i32* %C131, align 4
  %cmp132 = icmp sgt i32 %113, 7
  br i1 %cmp132, label %while.body.134, label %while.end.139

while.body.134:                                   ; preds = %while.cond.130
  %114 = load %struct.EncodingEnvironment*, %struct.EncodingEnvironment** %eep.addr, align 8
  %C135 = getelementptr inbounds %struct.EncodingEnvironment, %struct.EncodingEnvironment* %114, i32 0, i32 14
  %115 = load i32, i32* %C135, align 4
  %sub136 = sub nsw i32 %115, 8
  store i32 %sub136, i32* %C135, align 4
  %116 = load %struct.EncodingEnvironment*, %struct.EncodingEnvironment** %eep.addr, align 8
  %E137 = getelementptr inbounds %struct.EncodingEnvironment, %struct.EncodingEnvironment* %116, i32 0, i32 16
  %117 = load i32, i32* %E137, align 4
  %inc138 = add nsw i32 %117, 1
  store i32 %inc138, i32* %E137, align 4
  br label %while.cond.130

while.end.139:                                    ; preds = %while.cond.130
  br label %if.end.140

if.end.140:                                       ; preds = %while.end.139, %while.body.113
  br label %while.cond.109

while.end.141:                                    ; preds = %while.cond.109
  %118 = load %struct.EncodingEnvironment*, %struct.EncodingEnvironment** %eep.addr, align 8
  %E142 = getelementptr inbounds %struct.EncodingEnvironment, %struct.EncodingEnvironment* %118, i32 0, i32 16
  %119 = load i32, i32* %E142, align 4
  %mul = mul nsw i32 %119, 8
  %120 = load %struct.EncodingEnvironment*, %struct.EncodingEnvironment** %eep.addr, align 8
  %C143 = getelementptr inbounds %struct.EncodingEnvironment, %struct.EncodingEnvironment* %120, i32 0, i32 14
  %121 = load i32, i32* %C143, align 4
  %add144 = add nsw i32 %mul, %121
  %122 = load %struct.EncodingEnvironment*, %struct.EncodingEnvironment** %eep.addr, align 8
  %E145 = getelementptr inbounds %struct.EncodingEnvironment, %struct.EncodingEnvironment* %122, i32 0, i32 16
  store i32 %add144, i32* %E145, align 4
  %123 = load %struct.EncodingEnvironment*, %struct.EncodingEnvironment** %eep.addr, align 8
  %Ecodestrm_len146 = getelementptr inbounds %struct.EncodingEnvironment, %struct.EncodingEnvironment* %123, i32 0, i32 6
  %124 = load i32*, i32** %Ecodestrm_len146, align 8
  %125 = load i32, i32* %124, align 4
  %126 = load %struct.EncodingEnvironment*, %struct.EncodingEnvironment** %eep.addr, align 8
  %B = getelementptr inbounds %struct.EncodingEnvironment, %struct.EncodingEnvironment* %126, i32 0, i32 18
  %127 = load i32, i32* %B, align 4
  %sub147 = sub nsw i32 %125, %127
  %128 = load %struct.EncodingEnvironment*, %struct.EncodingEnvironment** %eep.addr, align 8
  %B148 = getelementptr inbounds %struct.EncodingEnvironment, %struct.EncodingEnvironment* %128, i32 0, i32 18
  store i32 %sub147, i32* %B148, align 4
  %129 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %current_mb_nr = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %129, i32 0, i32 3
  %130 = load i32, i32* %current_mb_nr, align 4
  %131 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %currentSlice = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %131, i32 0, i32 50
  %132 = load %struct.Slice*, %struct.Slice** %currentSlice, align 8
  %start_mb_nr = getelementptr inbounds %struct.Slice, %struct.Slice* %132, i32 0, i32 3
  %133 = load i32, i32* %start_mb_nr, align 4
  %sub149 = sub nsw i32 %130, %133
  %134 = load %struct.EncodingEnvironment*, %struct.EncodingEnvironment** %eep.addr, align 8
  %E150 = getelementptr inbounds %struct.EncodingEnvironment, %struct.EncodingEnvironment* %134, i32 0, i32 16
  %135 = load i32, i32* %E150, align 4
  %sub151 = sub nsw i32 %135, %sub149
  store i32 %sub151, i32* %E150, align 4
  %136 = load %struct.EncodingEnvironment*, %struct.EncodingEnvironment** %eep.addr, align 8
  %E152 = getelementptr inbounds %struct.EncodingEnvironment, %struct.EncodingEnvironment* %136, i32 0, i32 16
  %137 = load i32, i32* %E152, align 4
  %add153 = add nsw i32 %137, 31
  %shr154 = ashr i32 %add153, 5
  %138 = load %struct.EncodingEnvironment*, %struct.EncodingEnvironment** %eep.addr, align 8
  %E155 = getelementptr inbounds %struct.EncodingEnvironment, %struct.EncodingEnvironment* %138, i32 0, i32 16
  store i32 %shr154, i32* %E155, align 4
  ret void
}

; Function Attrs: nounwind uwtable
define void @biari_encode_symbol(%struct.EncodingEnvironment* %eep, i16 signext %symbol, %struct.BiContextType* %bi_ct) #0 {
entry:
  %eep.addr = alloca %struct.EncodingEnvironment*, align 8
  %symbol.addr = alloca i16, align 2
  %bi_ct.addr = alloca %struct.BiContextType*, align 8
  %range = alloca i32, align 4
  %low = alloca i32, align 4
  %rLPS = alloca i32, align 4
  store %struct.EncodingEnvironment* %eep, %struct.EncodingEnvironment** %eep.addr, align 8
  store i16 %symbol, i16* %symbol.addr, align 2
  store %struct.BiContextType* %bi_ct, %struct.BiContextType** %bi_ct.addr, align 8
  %0 = load %struct.EncodingEnvironment*, %struct.EncodingEnvironment** %eep.addr, align 8
  %Erange = getelementptr inbounds %struct.EncodingEnvironment, %struct.EncodingEnvironment* %0, i32 0, i32 1
  %1 = load i32, i32* %Erange, align 4
  store i32 %1, i32* %range, align 4
  %2 = load %struct.EncodingEnvironment*, %struct.EncodingEnvironment** %eep.addr, align 8
  %Elow = getelementptr inbounds %struct.EncodingEnvironment, %struct.EncodingEnvironment* %2, i32 0, i32 0
  %3 = load i32, i32* %Elow, align 4
  store i32 %3, i32* %low, align 4
  %4 = load i32, i32* %range, align 4
  %shr = lshr i32 %4, 6
  %and = and i32 %shr, 3
  %idxprom = zext i32 %and to i64
  %5 = load %struct.BiContextType*, %struct.BiContextType** %bi_ct.addr, align 8
  %state = getelementptr inbounds %struct.BiContextType, %struct.BiContextType* %5, i32 0, i32 0
  %6 = load i16, i16* %state, align 2
  %idxprom1 = zext i16 %6 to i64
  %arrayidx = getelementptr inbounds [64 x [4 x i8]], [64 x [4 x i8]]* @rLPS_table_64x4, i32 0, i64 %idxprom1
  %arrayidx2 = getelementptr inbounds [4 x i8], [4 x i8]* %arrayidx, i32 0, i64 %idxprom
  %7 = load i8, i8* %arrayidx2, align 1
  %conv = zext i8 %7 to i32
  store i32 %conv, i32* %rLPS, align 4
  %8 = load i32, i32* @cabac_encoding, align 4
  %tobool = icmp ne i32 %8, 0
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %9 = load %struct.BiContextType*, %struct.BiContextType** %bi_ct.addr, align 8
  %count = getelementptr inbounds %struct.BiContextType, %struct.BiContextType* %9, i32 0, i32 2
  %10 = load i64, i64* %count, align 8
  %inc = add i64 %10, 1
  store i64 %inc, i64* %count, align 8
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %11 = load i16, i16* %symbol.addr, align 2
  %conv3 = sext i16 %11 to i32
  %cmp = icmp ne i32 %conv3, 0
  br i1 %cmp, label %if.then.5, label %if.end.6

if.then.5:                                        ; preds = %if.end
  store i16 1, i16* %symbol.addr, align 2
  br label %if.end.6

if.end.6:                                         ; preds = %if.then.5, %if.end
  %12 = load i32, i32* %rLPS, align 4
  %13 = load i32, i32* %range, align 4
  %sub = sub i32 %13, %12
  store i32 %sub, i32* %range, align 4
  %14 = load i16, i16* %symbol.addr, align 2
  %conv7 = sext i16 %14 to i32
  %15 = load %struct.BiContextType*, %struct.BiContextType** %bi_ct.addr, align 8
  %MPS = getelementptr inbounds %struct.BiContextType, %struct.BiContextType* %15, i32 0, i32 1
  %16 = load i8, i8* %MPS, align 1
  %conv8 = zext i8 %16 to i32
  %cmp9 = icmp ne i32 %conv7, %conv8
  br i1 %cmp9, label %if.then.11, label %if.else

if.then.11:                                       ; preds = %if.end.6
  %17 = load i32, i32* %range, align 4
  %18 = load i32, i32* %low, align 4
  %add = add i32 %18, %17
  store i32 %add, i32* %low, align 4
  %19 = load i32, i32* %rLPS, align 4
  store i32 %19, i32* %range, align 4
  %20 = load %struct.BiContextType*, %struct.BiContextType** %bi_ct.addr, align 8
  %state12 = getelementptr inbounds %struct.BiContextType, %struct.BiContextType* %20, i32 0, i32 0
  %21 = load i16, i16* %state12, align 2
  %tobool13 = icmp ne i16 %21, 0
  br i1 %tobool13, label %if.end.19, label %if.then.14

if.then.14:                                       ; preds = %if.then.11
  %22 = load %struct.BiContextType*, %struct.BiContextType** %bi_ct.addr, align 8
  %MPS15 = getelementptr inbounds %struct.BiContextType, %struct.BiContextType* %22, i32 0, i32 1
  %23 = load i8, i8* %MPS15, align 1
  %conv16 = zext i8 %23 to i32
  %xor = xor i32 %conv16, 1
  %conv17 = trunc i32 %xor to i8
  %24 = load %struct.BiContextType*, %struct.BiContextType** %bi_ct.addr, align 8
  %MPS18 = getelementptr inbounds %struct.BiContextType, %struct.BiContextType* %24, i32 0, i32 1
  store i8 %conv17, i8* %MPS18, align 1
  br label %if.end.19

if.end.19:                                        ; preds = %if.then.14, %if.then.11
  %25 = load %struct.BiContextType*, %struct.BiContextType** %bi_ct.addr, align 8
  %state20 = getelementptr inbounds %struct.BiContextType, %struct.BiContextType* %25, i32 0, i32 0
  %26 = load i16, i16* %state20, align 2
  %idxprom21 = zext i16 %26 to i64
  %arrayidx22 = getelementptr inbounds [64 x i16], [64 x i16]* @AC_next_state_LPS_64, i32 0, i64 %idxprom21
  %27 = load i16, i16* %arrayidx22, align 2
  %28 = load %struct.BiContextType*, %struct.BiContextType** %bi_ct.addr, align 8
  %state23 = getelementptr inbounds %struct.BiContextType, %struct.BiContextType* %28, i32 0, i32 0
  store i16 %27, i16* %state23, align 2
  br label %if.end.28

if.else:                                          ; preds = %if.end.6
  %29 = load %struct.BiContextType*, %struct.BiContextType** %bi_ct.addr, align 8
  %state24 = getelementptr inbounds %struct.BiContextType, %struct.BiContextType* %29, i32 0, i32 0
  %30 = load i16, i16* %state24, align 2
  %idxprom25 = zext i16 %30 to i64
  %arrayidx26 = getelementptr inbounds [64 x i16], [64 x i16]* @AC_next_state_MPS_64, i32 0, i64 %idxprom25
  %31 = load i16, i16* %arrayidx26, align 2
  %32 = load %struct.BiContextType*, %struct.BiContextType** %bi_ct.addr, align 8
  %state27 = getelementptr inbounds %struct.BiContextType, %struct.BiContextType* %32, i32 0, i32 0
  store i16 %31, i16* %state27, align 2
  br label %if.end.28

if.end.28:                                        ; preds = %if.else, %if.end.19
  br label %while.cond

while.cond:                                       ; preds = %if.end.159, %if.end.28
  %33 = load i32, i32* %range, align 4
  %cmp29 = icmp ult i32 %33, 256
  br i1 %cmp29, label %while.body, label %while.end.162

while.body:                                       ; preds = %while.cond
  %34 = load i32, i32* %low, align 4
  %cmp31 = icmp uge i32 %34, 512
  br i1 %cmp31, label %if.then.33, label %if.else.87

if.then.33:                                       ; preds = %while.body
  %35 = load %struct.EncodingEnvironment*, %struct.EncodingEnvironment** %eep.addr, align 8
  %Ebuffer = getelementptr inbounds %struct.EncodingEnvironment, %struct.EncodingEnvironment* %35, i32 0, i32 2
  %36 = load i32, i32* %Ebuffer, align 4
  %shl = shl i32 %36, 1
  store i32 %shl, i32* %Ebuffer, align 4
  %37 = load %struct.EncodingEnvironment*, %struct.EncodingEnvironment** %eep.addr, align 8
  %Ebuffer34 = getelementptr inbounds %struct.EncodingEnvironment, %struct.EncodingEnvironment* %37, i32 0, i32 2
  %38 = load i32, i32* %Ebuffer34, align 4
  %or = or i32 %38, 1
  store i32 %or, i32* %Ebuffer34, align 4
  %39 = load %struct.EncodingEnvironment*, %struct.EncodingEnvironment** %eep.addr, align 8
  %Ebits_to_go = getelementptr inbounds %struct.EncodingEnvironment, %struct.EncodingEnvironment* %39, i32 0, i32 3
  %40 = load i32, i32* %Ebits_to_go, align 4
  %dec = add i32 %40, -1
  store i32 %dec, i32* %Ebits_to_go, align 4
  %cmp35 = icmp eq i32 %dec, 0
  br i1 %cmp35, label %if.then.37, label %if.end.51

if.then.37:                                       ; preds = %if.then.33
  %41 = load %struct.EncodingEnvironment*, %struct.EncodingEnvironment** %eep.addr, align 8
  %Ebuffer38 = getelementptr inbounds %struct.EncodingEnvironment, %struct.EncodingEnvironment* %41, i32 0, i32 2
  %42 = load i32, i32* %Ebuffer38, align 4
  %conv39 = trunc i32 %42 to i8
  %43 = load %struct.EncodingEnvironment*, %struct.EncodingEnvironment** %eep.addr, align 8
  %Ecodestrm_len = getelementptr inbounds %struct.EncodingEnvironment, %struct.EncodingEnvironment* %43, i32 0, i32 6
  %44 = load i32*, i32** %Ecodestrm_len, align 8
  %45 = load i32, i32* %44, align 4
  %inc40 = add nsw i32 %45, 1
  store i32 %inc40, i32* %44, align 4
  %idxprom41 = sext i32 %45 to i64
  %46 = load %struct.EncodingEnvironment*, %struct.EncodingEnvironment** %eep.addr, align 8
  %Ecodestrm = getelementptr inbounds %struct.EncodingEnvironment, %struct.EncodingEnvironment* %46, i32 0, i32 5
  %47 = load i8*, i8** %Ecodestrm, align 8
  %arrayidx42 = getelementptr inbounds i8, i8* %47, i64 %idxprom41
  store i8 %conv39, i8* %arrayidx42, align 1
  %48 = load %struct.EncodingEnvironment*, %struct.EncodingEnvironment** %eep.addr, align 8
  %Ebits_to_go43 = getelementptr inbounds %struct.EncodingEnvironment, %struct.EncodingEnvironment* %48, i32 0, i32 3
  store i32 8, i32* %Ebits_to_go43, align 4
  br label %while.cond.44

while.cond.44:                                    ; preds = %while.body.47, %if.then.37
  %49 = load %struct.EncodingEnvironment*, %struct.EncodingEnvironment** %eep.addr, align 8
  %C = getelementptr inbounds %struct.EncodingEnvironment, %struct.EncodingEnvironment* %49, i32 0, i32 14
  %50 = load i32, i32* %C, align 4
  %cmp45 = icmp sgt i32 %50, 7
  br i1 %cmp45, label %while.body.47, label %while.end

while.body.47:                                    ; preds = %while.cond.44
  %51 = load %struct.EncodingEnvironment*, %struct.EncodingEnvironment** %eep.addr, align 8
  %C48 = getelementptr inbounds %struct.EncodingEnvironment, %struct.EncodingEnvironment* %51, i32 0, i32 14
  %52 = load i32, i32* %C48, align 4
  %sub49 = sub nsw i32 %52, 8
  store i32 %sub49, i32* %C48, align 4
  %53 = load %struct.EncodingEnvironment*, %struct.EncodingEnvironment** %eep.addr, align 8
  %E = getelementptr inbounds %struct.EncodingEnvironment, %struct.EncodingEnvironment* %53, i32 0, i32 16
  %54 = load i32, i32* %E, align 4
  %inc50 = add nsw i32 %54, 1
  store i32 %inc50, i32* %E, align 4
  br label %while.cond.44

while.end:                                        ; preds = %while.cond.44
  br label %if.end.51

if.end.51:                                        ; preds = %while.end, %if.then.33
  br label %while.cond.52

while.cond.52:                                    ; preds = %if.end.84, %if.end.51
  %55 = load %struct.EncodingEnvironment*, %struct.EncodingEnvironment** %eep.addr, align 8
  %Ebits_to_follow = getelementptr inbounds %struct.EncodingEnvironment, %struct.EncodingEnvironment* %55, i32 0, i32 4
  %56 = load i32, i32* %Ebits_to_follow, align 4
  %cmp53 = icmp ugt i32 %56, 0
  br i1 %cmp53, label %while.body.55, label %while.end.85

while.body.55:                                    ; preds = %while.cond.52
  %57 = load %struct.EncodingEnvironment*, %struct.EncodingEnvironment** %eep.addr, align 8
  %Ebits_to_follow56 = getelementptr inbounds %struct.EncodingEnvironment, %struct.EncodingEnvironment* %57, i32 0, i32 4
  %58 = load i32, i32* %Ebits_to_follow56, align 4
  %dec57 = add i32 %58, -1
  store i32 %dec57, i32* %Ebits_to_follow56, align 4
  %59 = load %struct.EncodingEnvironment*, %struct.EncodingEnvironment** %eep.addr, align 8
  %Ebuffer58 = getelementptr inbounds %struct.EncodingEnvironment, %struct.EncodingEnvironment* %59, i32 0, i32 2
  %60 = load i32, i32* %Ebuffer58, align 4
  %shl59 = shl i32 %60, 1
  store i32 %shl59, i32* %Ebuffer58, align 4
  %61 = load %struct.EncodingEnvironment*, %struct.EncodingEnvironment** %eep.addr, align 8
  %Ebuffer60 = getelementptr inbounds %struct.EncodingEnvironment, %struct.EncodingEnvironment* %61, i32 0, i32 2
  %62 = load i32, i32* %Ebuffer60, align 4
  store i32 %62, i32* %Ebuffer60, align 4
  %63 = load %struct.EncodingEnvironment*, %struct.EncodingEnvironment** %eep.addr, align 8
  %Ebits_to_go61 = getelementptr inbounds %struct.EncodingEnvironment, %struct.EncodingEnvironment* %63, i32 0, i32 3
  %64 = load i32, i32* %Ebits_to_go61, align 4
  %dec62 = add i32 %64, -1
  store i32 %dec62, i32* %Ebits_to_go61, align 4
  %cmp63 = icmp eq i32 %dec62, 0
  br i1 %cmp63, label %if.then.65, label %if.end.84

if.then.65:                                       ; preds = %while.body.55
  %65 = load %struct.EncodingEnvironment*, %struct.EncodingEnvironment** %eep.addr, align 8
  %Ebuffer66 = getelementptr inbounds %struct.EncodingEnvironment, %struct.EncodingEnvironment* %65, i32 0, i32 2
  %66 = load i32, i32* %Ebuffer66, align 4
  %conv67 = trunc i32 %66 to i8
  %67 = load %struct.EncodingEnvironment*, %struct.EncodingEnvironment** %eep.addr, align 8
  %Ecodestrm_len68 = getelementptr inbounds %struct.EncodingEnvironment, %struct.EncodingEnvironment* %67, i32 0, i32 6
  %68 = load i32*, i32** %Ecodestrm_len68, align 8
  %69 = load i32, i32* %68, align 4
  %inc69 = add nsw i32 %69, 1
  store i32 %inc69, i32* %68, align 4
  %idxprom70 = sext i32 %69 to i64
  %70 = load %struct.EncodingEnvironment*, %struct.EncodingEnvironment** %eep.addr, align 8
  %Ecodestrm71 = getelementptr inbounds %struct.EncodingEnvironment, %struct.EncodingEnvironment* %70, i32 0, i32 5
  %71 = load i8*, i8** %Ecodestrm71, align 8
  %arrayidx72 = getelementptr inbounds i8, i8* %71, i64 %idxprom70
  store i8 %conv67, i8* %arrayidx72, align 1
  %72 = load %struct.EncodingEnvironment*, %struct.EncodingEnvironment** %eep.addr, align 8
  %Ebits_to_go73 = getelementptr inbounds %struct.EncodingEnvironment, %struct.EncodingEnvironment* %72, i32 0, i32 3
  store i32 8, i32* %Ebits_to_go73, align 4
  br label %while.cond.74

while.cond.74:                                    ; preds = %while.body.78, %if.then.65
  %73 = load %struct.EncodingEnvironment*, %struct.EncodingEnvironment** %eep.addr, align 8
  %C75 = getelementptr inbounds %struct.EncodingEnvironment, %struct.EncodingEnvironment* %73, i32 0, i32 14
  %74 = load i32, i32* %C75, align 4
  %cmp76 = icmp sgt i32 %74, 7
  br i1 %cmp76, label %while.body.78, label %while.end.83

while.body.78:                                    ; preds = %while.cond.74
  %75 = load %struct.EncodingEnvironment*, %struct.EncodingEnvironment** %eep.addr, align 8
  %C79 = getelementptr inbounds %struct.EncodingEnvironment, %struct.EncodingEnvironment* %75, i32 0, i32 14
  %76 = load i32, i32* %C79, align 4
  %sub80 = sub nsw i32 %76, 8
  store i32 %sub80, i32* %C79, align 4
  %77 = load %struct.EncodingEnvironment*, %struct.EncodingEnvironment** %eep.addr, align 8
  %E81 = getelementptr inbounds %struct.EncodingEnvironment, %struct.EncodingEnvironment* %77, i32 0, i32 16
  %78 = load i32, i32* %E81, align 4
  %inc82 = add nsw i32 %78, 1
  store i32 %inc82, i32* %E81, align 4
  br label %while.cond.74

while.end.83:                                     ; preds = %while.cond.74
  br label %if.end.84

if.end.84:                                        ; preds = %while.end.83, %while.body.55
  br label %while.cond.52

while.end.85:                                     ; preds = %while.cond.52
  %79 = load i32, i32* %low, align 4
  %sub86 = sub i32 %79, 512
  store i32 %sub86, i32* %low, align 4
  br label %if.end.159

if.else.87:                                       ; preds = %while.body
  %80 = load i32, i32* %low, align 4
  %cmp88 = icmp ult i32 %80, 256
  br i1 %cmp88, label %if.then.90, label %if.else.154

if.then.90:                                       ; preds = %if.else.87
  %81 = load %struct.EncodingEnvironment*, %struct.EncodingEnvironment** %eep.addr, align 8
  %Ebuffer91 = getelementptr inbounds %struct.EncodingEnvironment, %struct.EncodingEnvironment* %81, i32 0, i32 2
  %82 = load i32, i32* %Ebuffer91, align 4
  %shl92 = shl i32 %82, 1
  store i32 %shl92, i32* %Ebuffer91, align 4
  %83 = load %struct.EncodingEnvironment*, %struct.EncodingEnvironment** %eep.addr, align 8
  %Ebuffer93 = getelementptr inbounds %struct.EncodingEnvironment, %struct.EncodingEnvironment* %83, i32 0, i32 2
  %84 = load i32, i32* %Ebuffer93, align 4
  store i32 %84, i32* %Ebuffer93, align 4
  %85 = load %struct.EncodingEnvironment*, %struct.EncodingEnvironment** %eep.addr, align 8
  %Ebits_to_go94 = getelementptr inbounds %struct.EncodingEnvironment, %struct.EncodingEnvironment* %85, i32 0, i32 3
  %86 = load i32, i32* %Ebits_to_go94, align 4
  %dec95 = add i32 %86, -1
  store i32 %dec95, i32* %Ebits_to_go94, align 4
  %cmp96 = icmp eq i32 %dec95, 0
  br i1 %cmp96, label %if.then.98, label %if.end.117

if.then.98:                                       ; preds = %if.then.90
  %87 = load %struct.EncodingEnvironment*, %struct.EncodingEnvironment** %eep.addr, align 8
  %Ebuffer99 = getelementptr inbounds %struct.EncodingEnvironment, %struct.EncodingEnvironment* %87, i32 0, i32 2
  %88 = load i32, i32* %Ebuffer99, align 4
  %conv100 = trunc i32 %88 to i8
  %89 = load %struct.EncodingEnvironment*, %struct.EncodingEnvironment** %eep.addr, align 8
  %Ecodestrm_len101 = getelementptr inbounds %struct.EncodingEnvironment, %struct.EncodingEnvironment* %89, i32 0, i32 6
  %90 = load i32*, i32** %Ecodestrm_len101, align 8
  %91 = load i32, i32* %90, align 4
  %inc102 = add nsw i32 %91, 1
  store i32 %inc102, i32* %90, align 4
  %idxprom103 = sext i32 %91 to i64
  %92 = load %struct.EncodingEnvironment*, %struct.EncodingEnvironment** %eep.addr, align 8
  %Ecodestrm104 = getelementptr inbounds %struct.EncodingEnvironment, %struct.EncodingEnvironment* %92, i32 0, i32 5
  %93 = load i8*, i8** %Ecodestrm104, align 8
  %arrayidx105 = getelementptr inbounds i8, i8* %93, i64 %idxprom103
  store i8 %conv100, i8* %arrayidx105, align 1
  %94 = load %struct.EncodingEnvironment*, %struct.EncodingEnvironment** %eep.addr, align 8
  %Ebits_to_go106 = getelementptr inbounds %struct.EncodingEnvironment, %struct.EncodingEnvironment* %94, i32 0, i32 3
  store i32 8, i32* %Ebits_to_go106, align 4
  br label %while.cond.107

while.cond.107:                                   ; preds = %while.body.111, %if.then.98
  %95 = load %struct.EncodingEnvironment*, %struct.EncodingEnvironment** %eep.addr, align 8
  %C108 = getelementptr inbounds %struct.EncodingEnvironment, %struct.EncodingEnvironment* %95, i32 0, i32 14
  %96 = load i32, i32* %C108, align 4
  %cmp109 = icmp sgt i32 %96, 7
  br i1 %cmp109, label %while.body.111, label %while.end.116

while.body.111:                                   ; preds = %while.cond.107
  %97 = load %struct.EncodingEnvironment*, %struct.EncodingEnvironment** %eep.addr, align 8
  %C112 = getelementptr inbounds %struct.EncodingEnvironment, %struct.EncodingEnvironment* %97, i32 0, i32 14
  %98 = load i32, i32* %C112, align 4
  %sub113 = sub nsw i32 %98, 8
  store i32 %sub113, i32* %C112, align 4
  %99 = load %struct.EncodingEnvironment*, %struct.EncodingEnvironment** %eep.addr, align 8
  %E114 = getelementptr inbounds %struct.EncodingEnvironment, %struct.EncodingEnvironment* %99, i32 0, i32 16
  %100 = load i32, i32* %E114, align 4
  %inc115 = add nsw i32 %100, 1
  store i32 %inc115, i32* %E114, align 4
  br label %while.cond.107

while.end.116:                                    ; preds = %while.cond.107
  br label %if.end.117

if.end.117:                                       ; preds = %while.end.116, %if.then.90
  br label %while.cond.118

while.cond.118:                                   ; preds = %if.end.152, %if.end.117
  %101 = load %struct.EncodingEnvironment*, %struct.EncodingEnvironment** %eep.addr, align 8
  %Ebits_to_follow119 = getelementptr inbounds %struct.EncodingEnvironment, %struct.EncodingEnvironment* %101, i32 0, i32 4
  %102 = load i32, i32* %Ebits_to_follow119, align 4
  %cmp120 = icmp ugt i32 %102, 0
  br i1 %cmp120, label %while.body.122, label %while.end.153

while.body.122:                                   ; preds = %while.cond.118
  %103 = load %struct.EncodingEnvironment*, %struct.EncodingEnvironment** %eep.addr, align 8
  %Ebits_to_follow123 = getelementptr inbounds %struct.EncodingEnvironment, %struct.EncodingEnvironment* %103, i32 0, i32 4
  %104 = load i32, i32* %Ebits_to_follow123, align 4
  %dec124 = add i32 %104, -1
  store i32 %dec124, i32* %Ebits_to_follow123, align 4
  %105 = load %struct.EncodingEnvironment*, %struct.EncodingEnvironment** %eep.addr, align 8
  %Ebuffer125 = getelementptr inbounds %struct.EncodingEnvironment, %struct.EncodingEnvironment* %105, i32 0, i32 2
  %106 = load i32, i32* %Ebuffer125, align 4
  %shl126 = shl i32 %106, 1
  store i32 %shl126, i32* %Ebuffer125, align 4
  %107 = load %struct.EncodingEnvironment*, %struct.EncodingEnvironment** %eep.addr, align 8
  %Ebuffer127 = getelementptr inbounds %struct.EncodingEnvironment, %struct.EncodingEnvironment* %107, i32 0, i32 2
  %108 = load i32, i32* %Ebuffer127, align 4
  %or128 = or i32 %108, 1
  store i32 %or128, i32* %Ebuffer127, align 4
  %109 = load %struct.EncodingEnvironment*, %struct.EncodingEnvironment** %eep.addr, align 8
  %Ebits_to_go129 = getelementptr inbounds %struct.EncodingEnvironment, %struct.EncodingEnvironment* %109, i32 0, i32 3
  %110 = load i32, i32* %Ebits_to_go129, align 4
  %dec130 = add i32 %110, -1
  store i32 %dec130, i32* %Ebits_to_go129, align 4
  %cmp131 = icmp eq i32 %dec130, 0
  br i1 %cmp131, label %if.then.133, label %if.end.152

if.then.133:                                      ; preds = %while.body.122
  %111 = load %struct.EncodingEnvironment*, %struct.EncodingEnvironment** %eep.addr, align 8
  %Ebuffer134 = getelementptr inbounds %struct.EncodingEnvironment, %struct.EncodingEnvironment* %111, i32 0, i32 2
  %112 = load i32, i32* %Ebuffer134, align 4
  %conv135 = trunc i32 %112 to i8
  %113 = load %struct.EncodingEnvironment*, %struct.EncodingEnvironment** %eep.addr, align 8
  %Ecodestrm_len136 = getelementptr inbounds %struct.EncodingEnvironment, %struct.EncodingEnvironment* %113, i32 0, i32 6
  %114 = load i32*, i32** %Ecodestrm_len136, align 8
  %115 = load i32, i32* %114, align 4
  %inc137 = add nsw i32 %115, 1
  store i32 %inc137, i32* %114, align 4
  %idxprom138 = sext i32 %115 to i64
  %116 = load %struct.EncodingEnvironment*, %struct.EncodingEnvironment** %eep.addr, align 8
  %Ecodestrm139 = getelementptr inbounds %struct.EncodingEnvironment, %struct.EncodingEnvironment* %116, i32 0, i32 5
  %117 = load i8*, i8** %Ecodestrm139, align 8
  %arrayidx140 = getelementptr inbounds i8, i8* %117, i64 %idxprom138
  store i8 %conv135, i8* %arrayidx140, align 1
  %118 = load %struct.EncodingEnvironment*, %struct.EncodingEnvironment** %eep.addr, align 8
  %Ebits_to_go141 = getelementptr inbounds %struct.EncodingEnvironment, %struct.EncodingEnvironment* %118, i32 0, i32 3
  store i32 8, i32* %Ebits_to_go141, align 4
  br label %while.cond.142

while.cond.142:                                   ; preds = %while.body.146, %if.then.133
  %119 = load %struct.EncodingEnvironment*, %struct.EncodingEnvironment** %eep.addr, align 8
  %C143 = getelementptr inbounds %struct.EncodingEnvironment, %struct.EncodingEnvironment* %119, i32 0, i32 14
  %120 = load i32, i32* %C143, align 4
  %cmp144 = icmp sgt i32 %120, 7
  br i1 %cmp144, label %while.body.146, label %while.end.151

while.body.146:                                   ; preds = %while.cond.142
  %121 = load %struct.EncodingEnvironment*, %struct.EncodingEnvironment** %eep.addr, align 8
  %C147 = getelementptr inbounds %struct.EncodingEnvironment, %struct.EncodingEnvironment* %121, i32 0, i32 14
  %122 = load i32, i32* %C147, align 4
  %sub148 = sub nsw i32 %122, 8
  store i32 %sub148, i32* %C147, align 4
  %123 = load %struct.EncodingEnvironment*, %struct.EncodingEnvironment** %eep.addr, align 8
  %E149 = getelementptr inbounds %struct.EncodingEnvironment, %struct.EncodingEnvironment* %123, i32 0, i32 16
  %124 = load i32, i32* %E149, align 4
  %inc150 = add nsw i32 %124, 1
  store i32 %inc150, i32* %E149, align 4
  br label %while.cond.142

while.end.151:                                    ; preds = %while.cond.142
  br label %if.end.152

if.end.152:                                       ; preds = %while.end.151, %while.body.122
  br label %while.cond.118

while.end.153:                                    ; preds = %while.cond.118
  br label %if.end.158

if.else.154:                                      ; preds = %if.else.87
  %125 = load %struct.EncodingEnvironment*, %struct.EncodingEnvironment** %eep.addr, align 8
  %Ebits_to_follow155 = getelementptr inbounds %struct.EncodingEnvironment, %struct.EncodingEnvironment* %125, i32 0, i32 4
  %126 = load i32, i32* %Ebits_to_follow155, align 4
  %inc156 = add i32 %126, 1
  store i32 %inc156, i32* %Ebits_to_follow155, align 4
  %127 = load i32, i32* %low, align 4
  %sub157 = sub i32 %127, 256
  store i32 %sub157, i32* %low, align 4
  br label %if.end.158

if.end.158:                                       ; preds = %if.else.154, %while.end.153
  br label %if.end.159

if.end.159:                                       ; preds = %if.end.158, %while.end.85
  %128 = load i32, i32* %low, align 4
  %shl160 = shl i32 %128, 1
  store i32 %shl160, i32* %low, align 4
  %129 = load i32, i32* %range, align 4
  %shl161 = shl i32 %129, 1
  store i32 %shl161, i32* %range, align 4
  br label %while.cond

while.end.162:                                    ; preds = %while.cond
  %130 = load i32, i32* %range, align 4
  %131 = load %struct.EncodingEnvironment*, %struct.EncodingEnvironment** %eep.addr, align 8
  %Erange163 = getelementptr inbounds %struct.EncodingEnvironment, %struct.EncodingEnvironment* %131, i32 0, i32 1
  store i32 %130, i32* %Erange163, align 4
  %132 = load i32, i32* %low, align 4
  %133 = load %struct.EncodingEnvironment*, %struct.EncodingEnvironment** %eep.addr, align 8
  %Elow164 = getelementptr inbounds %struct.EncodingEnvironment, %struct.EncodingEnvironment* %133, i32 0, i32 0
  store i32 %132, i32* %Elow164, align 4
  %134 = load %struct.EncodingEnvironment*, %struct.EncodingEnvironment** %eep.addr, align 8
  %C165 = getelementptr inbounds %struct.EncodingEnvironment, %struct.EncodingEnvironment* %134, i32 0, i32 14
  %135 = load i32, i32* %C165, align 4
  %inc166 = add nsw i32 %135, 1
  store i32 %inc166, i32* %C165, align 4
  ret void
}

; Function Attrs: nounwind uwtable
define void @biari_encode_symbol_eq_prob(%struct.EncodingEnvironment* %eep, i16 signext %symbol) #0 {
entry:
  %eep.addr = alloca %struct.EncodingEnvironment*, align 8
  %symbol.addr = alloca i16, align 2
  %low = alloca i32, align 4
  store %struct.EncodingEnvironment* %eep, %struct.EncodingEnvironment** %eep.addr, align 8
  store i16 %symbol, i16* %symbol.addr, align 2
  %0 = load %struct.EncodingEnvironment*, %struct.EncodingEnvironment** %eep.addr, align 8
  %Elow = getelementptr inbounds %struct.EncodingEnvironment, %struct.EncodingEnvironment* %0, i32 0, i32 0
  %1 = load i32, i32* %Elow, align 4
  %shl = shl i32 %1, 1
  store i32 %shl, i32* %low, align 4
  %2 = load i16, i16* %symbol.addr, align 2
  %conv = sext i16 %2 to i32
  %cmp = icmp ne i32 %conv, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %3 = load %struct.EncodingEnvironment*, %struct.EncodingEnvironment** %eep.addr, align 8
  %Erange = getelementptr inbounds %struct.EncodingEnvironment, %struct.EncodingEnvironment* %3, i32 0, i32 1
  %4 = load i32, i32* %Erange, align 4
  %5 = load i32, i32* %low, align 4
  %add = add i32 %5, %4
  store i32 %add, i32* %low, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %6 = load i32, i32* %low, align 4
  %cmp2 = icmp uge i32 %6, 1024
  br i1 %cmp2, label %if.then.4, label %if.else

if.then.4:                                        ; preds = %if.end
  %7 = load %struct.EncodingEnvironment*, %struct.EncodingEnvironment** %eep.addr, align 8
  %Ebuffer = getelementptr inbounds %struct.EncodingEnvironment, %struct.EncodingEnvironment* %7, i32 0, i32 2
  %8 = load i32, i32* %Ebuffer, align 4
  %shl5 = shl i32 %8, 1
  store i32 %shl5, i32* %Ebuffer, align 4
  %9 = load %struct.EncodingEnvironment*, %struct.EncodingEnvironment** %eep.addr, align 8
  %Ebuffer6 = getelementptr inbounds %struct.EncodingEnvironment, %struct.EncodingEnvironment* %9, i32 0, i32 2
  %10 = load i32, i32* %Ebuffer6, align 4
  %or = or i32 %10, 1
  store i32 %or, i32* %Ebuffer6, align 4
  %11 = load %struct.EncodingEnvironment*, %struct.EncodingEnvironment** %eep.addr, align 8
  %Ebits_to_go = getelementptr inbounds %struct.EncodingEnvironment, %struct.EncodingEnvironment* %11, i32 0, i32 3
  %12 = load i32, i32* %Ebits_to_go, align 4
  %dec = add i32 %12, -1
  store i32 %dec, i32* %Ebits_to_go, align 4
  %cmp7 = icmp eq i32 %dec, 0
  br i1 %cmp7, label %if.then.9, label %if.end.17

if.then.9:                                        ; preds = %if.then.4
  %13 = load %struct.EncodingEnvironment*, %struct.EncodingEnvironment** %eep.addr, align 8
  %Ebuffer10 = getelementptr inbounds %struct.EncodingEnvironment, %struct.EncodingEnvironment* %13, i32 0, i32 2
  %14 = load i32, i32* %Ebuffer10, align 4
  %conv11 = trunc i32 %14 to i8
  %15 = load %struct.EncodingEnvironment*, %struct.EncodingEnvironment** %eep.addr, align 8
  %Ecodestrm_len = getelementptr inbounds %struct.EncodingEnvironment, %struct.EncodingEnvironment* %15, i32 0, i32 6
  %16 = load i32*, i32** %Ecodestrm_len, align 8
  %17 = load i32, i32* %16, align 4
  %inc = add nsw i32 %17, 1
  store i32 %inc, i32* %16, align 4
  %idxprom = sext i32 %17 to i64
  %18 = load %struct.EncodingEnvironment*, %struct.EncodingEnvironment** %eep.addr, align 8
  %Ecodestrm = getelementptr inbounds %struct.EncodingEnvironment, %struct.EncodingEnvironment* %18, i32 0, i32 5
  %19 = load i8*, i8** %Ecodestrm, align 8
  %arrayidx = getelementptr inbounds i8, i8* %19, i64 %idxprom
  store i8 %conv11, i8* %arrayidx, align 1
  %20 = load %struct.EncodingEnvironment*, %struct.EncodingEnvironment** %eep.addr, align 8
  %Ebits_to_go12 = getelementptr inbounds %struct.EncodingEnvironment, %struct.EncodingEnvironment* %20, i32 0, i32 3
  store i32 8, i32* %Ebits_to_go12, align 4
  br label %while.cond

while.cond:                                       ; preds = %while.body, %if.then.9
  %21 = load %struct.EncodingEnvironment*, %struct.EncodingEnvironment** %eep.addr, align 8
  %C = getelementptr inbounds %struct.EncodingEnvironment, %struct.EncodingEnvironment* %21, i32 0, i32 14
  %22 = load i32, i32* %C, align 4
  %cmp13 = icmp sgt i32 %22, 7
  br i1 %cmp13, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %23 = load %struct.EncodingEnvironment*, %struct.EncodingEnvironment** %eep.addr, align 8
  %C15 = getelementptr inbounds %struct.EncodingEnvironment, %struct.EncodingEnvironment* %23, i32 0, i32 14
  %24 = load i32, i32* %C15, align 4
  %sub = sub nsw i32 %24, 8
  store i32 %sub, i32* %C15, align 4
  %25 = load %struct.EncodingEnvironment*, %struct.EncodingEnvironment** %eep.addr, align 8
  %E = getelementptr inbounds %struct.EncodingEnvironment, %struct.EncodingEnvironment* %25, i32 0, i32 16
  %26 = load i32, i32* %E, align 4
  %inc16 = add nsw i32 %26, 1
  store i32 %inc16, i32* %E, align 4
  br label %while.cond

while.end:                                        ; preds = %while.cond
  br label %if.end.17

if.end.17:                                        ; preds = %while.end, %if.then.4
  br label %while.cond.18

while.cond.18:                                    ; preds = %if.end.50, %if.end.17
  %27 = load %struct.EncodingEnvironment*, %struct.EncodingEnvironment** %eep.addr, align 8
  %Ebits_to_follow = getelementptr inbounds %struct.EncodingEnvironment, %struct.EncodingEnvironment* %27, i32 0, i32 4
  %28 = load i32, i32* %Ebits_to_follow, align 4
  %cmp19 = icmp ugt i32 %28, 0
  br i1 %cmp19, label %while.body.21, label %while.end.51

while.body.21:                                    ; preds = %while.cond.18
  %29 = load %struct.EncodingEnvironment*, %struct.EncodingEnvironment** %eep.addr, align 8
  %Ebits_to_follow22 = getelementptr inbounds %struct.EncodingEnvironment, %struct.EncodingEnvironment* %29, i32 0, i32 4
  %30 = load i32, i32* %Ebits_to_follow22, align 4
  %dec23 = add i32 %30, -1
  store i32 %dec23, i32* %Ebits_to_follow22, align 4
  %31 = load %struct.EncodingEnvironment*, %struct.EncodingEnvironment** %eep.addr, align 8
  %Ebuffer24 = getelementptr inbounds %struct.EncodingEnvironment, %struct.EncodingEnvironment* %31, i32 0, i32 2
  %32 = load i32, i32* %Ebuffer24, align 4
  %shl25 = shl i32 %32, 1
  store i32 %shl25, i32* %Ebuffer24, align 4
  %33 = load %struct.EncodingEnvironment*, %struct.EncodingEnvironment** %eep.addr, align 8
  %Ebuffer26 = getelementptr inbounds %struct.EncodingEnvironment, %struct.EncodingEnvironment* %33, i32 0, i32 2
  %34 = load i32, i32* %Ebuffer26, align 4
  store i32 %34, i32* %Ebuffer26, align 4
  %35 = load %struct.EncodingEnvironment*, %struct.EncodingEnvironment** %eep.addr, align 8
  %Ebits_to_go27 = getelementptr inbounds %struct.EncodingEnvironment, %struct.EncodingEnvironment* %35, i32 0, i32 3
  %36 = load i32, i32* %Ebits_to_go27, align 4
  %dec28 = add i32 %36, -1
  store i32 %dec28, i32* %Ebits_to_go27, align 4
  %cmp29 = icmp eq i32 %dec28, 0
  br i1 %cmp29, label %if.then.31, label %if.end.50

if.then.31:                                       ; preds = %while.body.21
  %37 = load %struct.EncodingEnvironment*, %struct.EncodingEnvironment** %eep.addr, align 8
  %Ebuffer32 = getelementptr inbounds %struct.EncodingEnvironment, %struct.EncodingEnvironment* %37, i32 0, i32 2
  %38 = load i32, i32* %Ebuffer32, align 4
  %conv33 = trunc i32 %38 to i8
  %39 = load %struct.EncodingEnvironment*, %struct.EncodingEnvironment** %eep.addr, align 8
  %Ecodestrm_len34 = getelementptr inbounds %struct.EncodingEnvironment, %struct.EncodingEnvironment* %39, i32 0, i32 6
  %40 = load i32*, i32** %Ecodestrm_len34, align 8
  %41 = load i32, i32* %40, align 4
  %inc35 = add nsw i32 %41, 1
  store i32 %inc35, i32* %40, align 4
  %idxprom36 = sext i32 %41 to i64
  %42 = load %struct.EncodingEnvironment*, %struct.EncodingEnvironment** %eep.addr, align 8
  %Ecodestrm37 = getelementptr inbounds %struct.EncodingEnvironment, %struct.EncodingEnvironment* %42, i32 0, i32 5
  %43 = load i8*, i8** %Ecodestrm37, align 8
  %arrayidx38 = getelementptr inbounds i8, i8* %43, i64 %idxprom36
  store i8 %conv33, i8* %arrayidx38, align 1
  %44 = load %struct.EncodingEnvironment*, %struct.EncodingEnvironment** %eep.addr, align 8
  %Ebits_to_go39 = getelementptr inbounds %struct.EncodingEnvironment, %struct.EncodingEnvironment* %44, i32 0, i32 3
  store i32 8, i32* %Ebits_to_go39, align 4
  br label %while.cond.40

while.cond.40:                                    ; preds = %while.body.44, %if.then.31
  %45 = load %struct.EncodingEnvironment*, %struct.EncodingEnvironment** %eep.addr, align 8
  %C41 = getelementptr inbounds %struct.EncodingEnvironment, %struct.EncodingEnvironment* %45, i32 0, i32 14
  %46 = load i32, i32* %C41, align 4
  %cmp42 = icmp sgt i32 %46, 7
  br i1 %cmp42, label %while.body.44, label %while.end.49

while.body.44:                                    ; preds = %while.cond.40
  %47 = load %struct.EncodingEnvironment*, %struct.EncodingEnvironment** %eep.addr, align 8
  %C45 = getelementptr inbounds %struct.EncodingEnvironment, %struct.EncodingEnvironment* %47, i32 0, i32 14
  %48 = load i32, i32* %C45, align 4
  %sub46 = sub nsw i32 %48, 8
  store i32 %sub46, i32* %C45, align 4
  %49 = load %struct.EncodingEnvironment*, %struct.EncodingEnvironment** %eep.addr, align 8
  %E47 = getelementptr inbounds %struct.EncodingEnvironment, %struct.EncodingEnvironment* %49, i32 0, i32 16
  %50 = load i32, i32* %E47, align 4
  %inc48 = add nsw i32 %50, 1
  store i32 %inc48, i32* %E47, align 4
  br label %while.cond.40

while.end.49:                                     ; preds = %while.cond.40
  br label %if.end.50

if.end.50:                                        ; preds = %while.end.49, %while.body.21
  br label %while.cond.18

while.end.51:                                     ; preds = %while.cond.18
  %51 = load i32, i32* %low, align 4
  %sub52 = sub i32 %51, 1024
  store i32 %sub52, i32* %low, align 4
  br label %if.end.124

if.else:                                          ; preds = %if.end
  %52 = load i32, i32* %low, align 4
  %cmp53 = icmp ult i32 %52, 512
  br i1 %cmp53, label %if.then.55, label %if.else.119

if.then.55:                                       ; preds = %if.else
  %53 = load %struct.EncodingEnvironment*, %struct.EncodingEnvironment** %eep.addr, align 8
  %Ebuffer56 = getelementptr inbounds %struct.EncodingEnvironment, %struct.EncodingEnvironment* %53, i32 0, i32 2
  %54 = load i32, i32* %Ebuffer56, align 4
  %shl57 = shl i32 %54, 1
  store i32 %shl57, i32* %Ebuffer56, align 4
  %55 = load %struct.EncodingEnvironment*, %struct.EncodingEnvironment** %eep.addr, align 8
  %Ebuffer58 = getelementptr inbounds %struct.EncodingEnvironment, %struct.EncodingEnvironment* %55, i32 0, i32 2
  %56 = load i32, i32* %Ebuffer58, align 4
  store i32 %56, i32* %Ebuffer58, align 4
  %57 = load %struct.EncodingEnvironment*, %struct.EncodingEnvironment** %eep.addr, align 8
  %Ebits_to_go59 = getelementptr inbounds %struct.EncodingEnvironment, %struct.EncodingEnvironment* %57, i32 0, i32 3
  %58 = load i32, i32* %Ebits_to_go59, align 4
  %dec60 = add i32 %58, -1
  store i32 %dec60, i32* %Ebits_to_go59, align 4
  %cmp61 = icmp eq i32 %dec60, 0
  br i1 %cmp61, label %if.then.63, label %if.end.82

if.then.63:                                       ; preds = %if.then.55
  %59 = load %struct.EncodingEnvironment*, %struct.EncodingEnvironment** %eep.addr, align 8
  %Ebuffer64 = getelementptr inbounds %struct.EncodingEnvironment, %struct.EncodingEnvironment* %59, i32 0, i32 2
  %60 = load i32, i32* %Ebuffer64, align 4
  %conv65 = trunc i32 %60 to i8
  %61 = load %struct.EncodingEnvironment*, %struct.EncodingEnvironment** %eep.addr, align 8
  %Ecodestrm_len66 = getelementptr inbounds %struct.EncodingEnvironment, %struct.EncodingEnvironment* %61, i32 0, i32 6
  %62 = load i32*, i32** %Ecodestrm_len66, align 8
  %63 = load i32, i32* %62, align 4
  %inc67 = add nsw i32 %63, 1
  store i32 %inc67, i32* %62, align 4
  %idxprom68 = sext i32 %63 to i64
  %64 = load %struct.EncodingEnvironment*, %struct.EncodingEnvironment** %eep.addr, align 8
  %Ecodestrm69 = getelementptr inbounds %struct.EncodingEnvironment, %struct.EncodingEnvironment* %64, i32 0, i32 5
  %65 = load i8*, i8** %Ecodestrm69, align 8
  %arrayidx70 = getelementptr inbounds i8, i8* %65, i64 %idxprom68
  store i8 %conv65, i8* %arrayidx70, align 1
  %66 = load %struct.EncodingEnvironment*, %struct.EncodingEnvironment** %eep.addr, align 8
  %Ebits_to_go71 = getelementptr inbounds %struct.EncodingEnvironment, %struct.EncodingEnvironment* %66, i32 0, i32 3
  store i32 8, i32* %Ebits_to_go71, align 4
  br label %while.cond.72

while.cond.72:                                    ; preds = %while.body.76, %if.then.63
  %67 = load %struct.EncodingEnvironment*, %struct.EncodingEnvironment** %eep.addr, align 8
  %C73 = getelementptr inbounds %struct.EncodingEnvironment, %struct.EncodingEnvironment* %67, i32 0, i32 14
  %68 = load i32, i32* %C73, align 4
  %cmp74 = icmp sgt i32 %68, 7
  br i1 %cmp74, label %while.body.76, label %while.end.81

while.body.76:                                    ; preds = %while.cond.72
  %69 = load %struct.EncodingEnvironment*, %struct.EncodingEnvironment** %eep.addr, align 8
  %C77 = getelementptr inbounds %struct.EncodingEnvironment, %struct.EncodingEnvironment* %69, i32 0, i32 14
  %70 = load i32, i32* %C77, align 4
  %sub78 = sub nsw i32 %70, 8
  store i32 %sub78, i32* %C77, align 4
  %71 = load %struct.EncodingEnvironment*, %struct.EncodingEnvironment** %eep.addr, align 8
  %E79 = getelementptr inbounds %struct.EncodingEnvironment, %struct.EncodingEnvironment* %71, i32 0, i32 16
  %72 = load i32, i32* %E79, align 4
  %inc80 = add nsw i32 %72, 1
  store i32 %inc80, i32* %E79, align 4
  br label %while.cond.72

while.end.81:                                     ; preds = %while.cond.72
  br label %if.end.82

if.end.82:                                        ; preds = %while.end.81, %if.then.55
  br label %while.cond.83

while.cond.83:                                    ; preds = %if.end.117, %if.end.82
  %73 = load %struct.EncodingEnvironment*, %struct.EncodingEnvironment** %eep.addr, align 8
  %Ebits_to_follow84 = getelementptr inbounds %struct.EncodingEnvironment, %struct.EncodingEnvironment* %73, i32 0, i32 4
  %74 = load i32, i32* %Ebits_to_follow84, align 4
  %cmp85 = icmp ugt i32 %74, 0
  br i1 %cmp85, label %while.body.87, label %while.end.118

while.body.87:                                    ; preds = %while.cond.83
  %75 = load %struct.EncodingEnvironment*, %struct.EncodingEnvironment** %eep.addr, align 8
  %Ebits_to_follow88 = getelementptr inbounds %struct.EncodingEnvironment, %struct.EncodingEnvironment* %75, i32 0, i32 4
  %76 = load i32, i32* %Ebits_to_follow88, align 4
  %dec89 = add i32 %76, -1
  store i32 %dec89, i32* %Ebits_to_follow88, align 4
  %77 = load %struct.EncodingEnvironment*, %struct.EncodingEnvironment** %eep.addr, align 8
  %Ebuffer90 = getelementptr inbounds %struct.EncodingEnvironment, %struct.EncodingEnvironment* %77, i32 0, i32 2
  %78 = load i32, i32* %Ebuffer90, align 4
  %shl91 = shl i32 %78, 1
  store i32 %shl91, i32* %Ebuffer90, align 4
  %79 = load %struct.EncodingEnvironment*, %struct.EncodingEnvironment** %eep.addr, align 8
  %Ebuffer92 = getelementptr inbounds %struct.EncodingEnvironment, %struct.EncodingEnvironment* %79, i32 0, i32 2
  %80 = load i32, i32* %Ebuffer92, align 4
  %or93 = or i32 %80, 1
  store i32 %or93, i32* %Ebuffer92, align 4
  %81 = load %struct.EncodingEnvironment*, %struct.EncodingEnvironment** %eep.addr, align 8
  %Ebits_to_go94 = getelementptr inbounds %struct.EncodingEnvironment, %struct.EncodingEnvironment* %81, i32 0, i32 3
  %82 = load i32, i32* %Ebits_to_go94, align 4
  %dec95 = add i32 %82, -1
  store i32 %dec95, i32* %Ebits_to_go94, align 4
  %cmp96 = icmp eq i32 %dec95, 0
  br i1 %cmp96, label %if.then.98, label %if.end.117

if.then.98:                                       ; preds = %while.body.87
  %83 = load %struct.EncodingEnvironment*, %struct.EncodingEnvironment** %eep.addr, align 8
  %Ebuffer99 = getelementptr inbounds %struct.EncodingEnvironment, %struct.EncodingEnvironment* %83, i32 0, i32 2
  %84 = load i32, i32* %Ebuffer99, align 4
  %conv100 = trunc i32 %84 to i8
  %85 = load %struct.EncodingEnvironment*, %struct.EncodingEnvironment** %eep.addr, align 8
  %Ecodestrm_len101 = getelementptr inbounds %struct.EncodingEnvironment, %struct.EncodingEnvironment* %85, i32 0, i32 6
  %86 = load i32*, i32** %Ecodestrm_len101, align 8
  %87 = load i32, i32* %86, align 4
  %inc102 = add nsw i32 %87, 1
  store i32 %inc102, i32* %86, align 4
  %idxprom103 = sext i32 %87 to i64
  %88 = load %struct.EncodingEnvironment*, %struct.EncodingEnvironment** %eep.addr, align 8
  %Ecodestrm104 = getelementptr inbounds %struct.EncodingEnvironment, %struct.EncodingEnvironment* %88, i32 0, i32 5
  %89 = load i8*, i8** %Ecodestrm104, align 8
  %arrayidx105 = getelementptr inbounds i8, i8* %89, i64 %idxprom103
  store i8 %conv100, i8* %arrayidx105, align 1
  %90 = load %struct.EncodingEnvironment*, %struct.EncodingEnvironment** %eep.addr, align 8
  %Ebits_to_go106 = getelementptr inbounds %struct.EncodingEnvironment, %struct.EncodingEnvironment* %90, i32 0, i32 3
  store i32 8, i32* %Ebits_to_go106, align 4
  br label %while.cond.107

while.cond.107:                                   ; preds = %while.body.111, %if.then.98
  %91 = load %struct.EncodingEnvironment*, %struct.EncodingEnvironment** %eep.addr, align 8
  %C108 = getelementptr inbounds %struct.EncodingEnvironment, %struct.EncodingEnvironment* %91, i32 0, i32 14
  %92 = load i32, i32* %C108, align 4
  %cmp109 = icmp sgt i32 %92, 7
  br i1 %cmp109, label %while.body.111, label %while.end.116

while.body.111:                                   ; preds = %while.cond.107
  %93 = load %struct.EncodingEnvironment*, %struct.EncodingEnvironment** %eep.addr, align 8
  %C112 = getelementptr inbounds %struct.EncodingEnvironment, %struct.EncodingEnvironment* %93, i32 0, i32 14
  %94 = load i32, i32* %C112, align 4
  %sub113 = sub nsw i32 %94, 8
  store i32 %sub113, i32* %C112, align 4
  %95 = load %struct.EncodingEnvironment*, %struct.EncodingEnvironment** %eep.addr, align 8
  %E114 = getelementptr inbounds %struct.EncodingEnvironment, %struct.EncodingEnvironment* %95, i32 0, i32 16
  %96 = load i32, i32* %E114, align 4
  %inc115 = add nsw i32 %96, 1
  store i32 %inc115, i32* %E114, align 4
  br label %while.cond.107

while.end.116:                                    ; preds = %while.cond.107
  br label %if.end.117

if.end.117:                                       ; preds = %while.end.116, %while.body.87
  br label %while.cond.83

while.end.118:                                    ; preds = %while.cond.83
  br label %if.end.123

if.else.119:                                      ; preds = %if.else
  %97 = load %struct.EncodingEnvironment*, %struct.EncodingEnvironment** %eep.addr, align 8
  %Ebits_to_follow120 = getelementptr inbounds %struct.EncodingEnvironment, %struct.EncodingEnvironment* %97, i32 0, i32 4
  %98 = load i32, i32* %Ebits_to_follow120, align 4
  %inc121 = add i32 %98, 1
  store i32 %inc121, i32* %Ebits_to_follow120, align 4
  %99 = load i32, i32* %low, align 4
  %sub122 = sub i32 %99, 512
  store i32 %sub122, i32* %low, align 4
  br label %if.end.123

if.end.123:                                       ; preds = %if.else.119, %while.end.118
  br label %if.end.124

if.end.124:                                       ; preds = %if.end.123, %while.end.51
  %100 = load i32, i32* %low, align 4
  %101 = load %struct.EncodingEnvironment*, %struct.EncodingEnvironment** %eep.addr, align 8
  %Elow125 = getelementptr inbounds %struct.EncodingEnvironment, %struct.EncodingEnvironment* %101, i32 0, i32 0
  store i32 %100, i32* %Elow125, align 4
  %102 = load %struct.EncodingEnvironment*, %struct.EncodingEnvironment** %eep.addr, align 8
  %C126 = getelementptr inbounds %struct.EncodingEnvironment, %struct.EncodingEnvironment* %102, i32 0, i32 14
  %103 = load i32, i32* %C126, align 4
  %inc127 = add nsw i32 %103, 1
  store i32 %inc127, i32* %C126, align 4
  ret void
}

; Function Attrs: nounwind uwtable
define void @biari_encode_symbol_final(%struct.EncodingEnvironment* %eep, i16 signext %symbol) #0 {
entry:
  %eep.addr = alloca %struct.EncodingEnvironment*, align 8
  %symbol.addr = alloca i16, align 2
  %range = alloca i32, align 4
  %low = alloca i32, align 4
  store %struct.EncodingEnvironment* %eep, %struct.EncodingEnvironment** %eep.addr, align 8
  store i16 %symbol, i16* %symbol.addr, align 2
  %0 = load %struct.EncodingEnvironment*, %struct.EncodingEnvironment** %eep.addr, align 8
  %Erange = getelementptr inbounds %struct.EncodingEnvironment, %struct.EncodingEnvironment* %0, i32 0, i32 1
  %1 = load i32, i32* %Erange, align 4
  %sub = sub i32 %1, 2
  store i32 %sub, i32* %range, align 4
  %2 = load %struct.EncodingEnvironment*, %struct.EncodingEnvironment** %eep.addr, align 8
  %Elow = getelementptr inbounds %struct.EncodingEnvironment, %struct.EncodingEnvironment* %2, i32 0, i32 0
  %3 = load i32, i32* %Elow, align 4
  store i32 %3, i32* %low, align 4
  %4 = load i16, i16* %symbol.addr, align 2
  %tobool = icmp ne i16 %4, 0
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %5 = load i32, i32* %range, align 4
  %6 = load i32, i32* %low, align 4
  %add = add i32 %6, %5
  store i32 %add, i32* %low, align 4
  store i32 2, i32* %range, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  br label %while.cond

while.cond:                                       ; preds = %if.end.122, %if.end
  %7 = load i32, i32* %range, align 4
  %cmp = icmp ult i32 %7, 256
  br i1 %cmp, label %while.body, label %while.end.125

while.body:                                       ; preds = %while.cond
  %8 = load i32, i32* %low, align 4
  %cmp1 = icmp uge i32 %8, 512
  br i1 %cmp1, label %if.then.2, label %if.else

if.then.2:                                        ; preds = %while.body
  %9 = load %struct.EncodingEnvironment*, %struct.EncodingEnvironment** %eep.addr, align 8
  %Ebuffer = getelementptr inbounds %struct.EncodingEnvironment, %struct.EncodingEnvironment* %9, i32 0, i32 2
  %10 = load i32, i32* %Ebuffer, align 4
  %shl = shl i32 %10, 1
  store i32 %shl, i32* %Ebuffer, align 4
  %11 = load %struct.EncodingEnvironment*, %struct.EncodingEnvironment** %eep.addr, align 8
  %Ebuffer3 = getelementptr inbounds %struct.EncodingEnvironment, %struct.EncodingEnvironment* %11, i32 0, i32 2
  %12 = load i32, i32* %Ebuffer3, align 4
  %or = or i32 %12, 1
  store i32 %or, i32* %Ebuffer3, align 4
  %13 = load %struct.EncodingEnvironment*, %struct.EncodingEnvironment** %eep.addr, align 8
  %Ebits_to_go = getelementptr inbounds %struct.EncodingEnvironment, %struct.EncodingEnvironment* %13, i32 0, i32 3
  %14 = load i32, i32* %Ebits_to_go, align 4
  %dec = add i32 %14, -1
  store i32 %dec, i32* %Ebits_to_go, align 4
  %cmp4 = icmp eq i32 %dec, 0
  br i1 %cmp4, label %if.then.5, label %if.end.15

if.then.5:                                        ; preds = %if.then.2
  %15 = load %struct.EncodingEnvironment*, %struct.EncodingEnvironment** %eep.addr, align 8
  %Ebuffer6 = getelementptr inbounds %struct.EncodingEnvironment, %struct.EncodingEnvironment* %15, i32 0, i32 2
  %16 = load i32, i32* %Ebuffer6, align 4
  %conv = trunc i32 %16 to i8
  %17 = load %struct.EncodingEnvironment*, %struct.EncodingEnvironment** %eep.addr, align 8
  %Ecodestrm_len = getelementptr inbounds %struct.EncodingEnvironment, %struct.EncodingEnvironment* %17, i32 0, i32 6
  %18 = load i32*, i32** %Ecodestrm_len, align 8
  %19 = load i32, i32* %18, align 4
  %inc = add nsw i32 %19, 1
  store i32 %inc, i32* %18, align 4
  %idxprom = sext i32 %19 to i64
  %20 = load %struct.EncodingEnvironment*, %struct.EncodingEnvironment** %eep.addr, align 8
  %Ecodestrm = getelementptr inbounds %struct.EncodingEnvironment, %struct.EncodingEnvironment* %20, i32 0, i32 5
  %21 = load i8*, i8** %Ecodestrm, align 8
  %arrayidx = getelementptr inbounds i8, i8* %21, i64 %idxprom
  store i8 %conv, i8* %arrayidx, align 1
  %22 = load %struct.EncodingEnvironment*, %struct.EncodingEnvironment** %eep.addr, align 8
  %Ebits_to_go7 = getelementptr inbounds %struct.EncodingEnvironment, %struct.EncodingEnvironment* %22, i32 0, i32 3
  store i32 8, i32* %Ebits_to_go7, align 4
  br label %while.cond.8

while.cond.8:                                     ; preds = %while.body.11, %if.then.5
  %23 = load %struct.EncodingEnvironment*, %struct.EncodingEnvironment** %eep.addr, align 8
  %C = getelementptr inbounds %struct.EncodingEnvironment, %struct.EncodingEnvironment* %23, i32 0, i32 14
  %24 = load i32, i32* %C, align 4
  %cmp9 = icmp sgt i32 %24, 7
  br i1 %cmp9, label %while.body.11, label %while.end

while.body.11:                                    ; preds = %while.cond.8
  %25 = load %struct.EncodingEnvironment*, %struct.EncodingEnvironment** %eep.addr, align 8
  %C12 = getelementptr inbounds %struct.EncodingEnvironment, %struct.EncodingEnvironment* %25, i32 0, i32 14
  %26 = load i32, i32* %C12, align 4
  %sub13 = sub nsw i32 %26, 8
  store i32 %sub13, i32* %C12, align 4
  %27 = load %struct.EncodingEnvironment*, %struct.EncodingEnvironment** %eep.addr, align 8
  %E = getelementptr inbounds %struct.EncodingEnvironment, %struct.EncodingEnvironment* %27, i32 0, i32 16
  %28 = load i32, i32* %E, align 4
  %inc14 = add nsw i32 %28, 1
  store i32 %inc14, i32* %E, align 4
  br label %while.cond.8

while.end:                                        ; preds = %while.cond.8
  br label %if.end.15

if.end.15:                                        ; preds = %while.end, %if.then.2
  br label %while.cond.16

while.cond.16:                                    ; preds = %if.end.48, %if.end.15
  %29 = load %struct.EncodingEnvironment*, %struct.EncodingEnvironment** %eep.addr, align 8
  %Ebits_to_follow = getelementptr inbounds %struct.EncodingEnvironment, %struct.EncodingEnvironment* %29, i32 0, i32 4
  %30 = load i32, i32* %Ebits_to_follow, align 4
  %cmp17 = icmp ugt i32 %30, 0
  br i1 %cmp17, label %while.body.19, label %while.end.49

while.body.19:                                    ; preds = %while.cond.16
  %31 = load %struct.EncodingEnvironment*, %struct.EncodingEnvironment** %eep.addr, align 8
  %Ebits_to_follow20 = getelementptr inbounds %struct.EncodingEnvironment, %struct.EncodingEnvironment* %31, i32 0, i32 4
  %32 = load i32, i32* %Ebits_to_follow20, align 4
  %dec21 = add i32 %32, -1
  store i32 %dec21, i32* %Ebits_to_follow20, align 4
  %33 = load %struct.EncodingEnvironment*, %struct.EncodingEnvironment** %eep.addr, align 8
  %Ebuffer22 = getelementptr inbounds %struct.EncodingEnvironment, %struct.EncodingEnvironment* %33, i32 0, i32 2
  %34 = load i32, i32* %Ebuffer22, align 4
  %shl23 = shl i32 %34, 1
  store i32 %shl23, i32* %Ebuffer22, align 4
  %35 = load %struct.EncodingEnvironment*, %struct.EncodingEnvironment** %eep.addr, align 8
  %Ebuffer24 = getelementptr inbounds %struct.EncodingEnvironment, %struct.EncodingEnvironment* %35, i32 0, i32 2
  %36 = load i32, i32* %Ebuffer24, align 4
  store i32 %36, i32* %Ebuffer24, align 4
  %37 = load %struct.EncodingEnvironment*, %struct.EncodingEnvironment** %eep.addr, align 8
  %Ebits_to_go25 = getelementptr inbounds %struct.EncodingEnvironment, %struct.EncodingEnvironment* %37, i32 0, i32 3
  %38 = load i32, i32* %Ebits_to_go25, align 4
  %dec26 = add i32 %38, -1
  store i32 %dec26, i32* %Ebits_to_go25, align 4
  %cmp27 = icmp eq i32 %dec26, 0
  br i1 %cmp27, label %if.then.29, label %if.end.48

if.then.29:                                       ; preds = %while.body.19
  %39 = load %struct.EncodingEnvironment*, %struct.EncodingEnvironment** %eep.addr, align 8
  %Ebuffer30 = getelementptr inbounds %struct.EncodingEnvironment, %struct.EncodingEnvironment* %39, i32 0, i32 2
  %40 = load i32, i32* %Ebuffer30, align 4
  %conv31 = trunc i32 %40 to i8
  %41 = load %struct.EncodingEnvironment*, %struct.EncodingEnvironment** %eep.addr, align 8
  %Ecodestrm_len32 = getelementptr inbounds %struct.EncodingEnvironment, %struct.EncodingEnvironment* %41, i32 0, i32 6
  %42 = load i32*, i32** %Ecodestrm_len32, align 8
  %43 = load i32, i32* %42, align 4
  %inc33 = add nsw i32 %43, 1
  store i32 %inc33, i32* %42, align 4
  %idxprom34 = sext i32 %43 to i64
  %44 = load %struct.EncodingEnvironment*, %struct.EncodingEnvironment** %eep.addr, align 8
  %Ecodestrm35 = getelementptr inbounds %struct.EncodingEnvironment, %struct.EncodingEnvironment* %44, i32 0, i32 5
  %45 = load i8*, i8** %Ecodestrm35, align 8
  %arrayidx36 = getelementptr inbounds i8, i8* %45, i64 %idxprom34
  store i8 %conv31, i8* %arrayidx36, align 1
  %46 = load %struct.EncodingEnvironment*, %struct.EncodingEnvironment** %eep.addr, align 8
  %Ebits_to_go37 = getelementptr inbounds %struct.EncodingEnvironment, %struct.EncodingEnvironment* %46, i32 0, i32 3
  store i32 8, i32* %Ebits_to_go37, align 4
  br label %while.cond.38

while.cond.38:                                    ; preds = %while.body.42, %if.then.29
  %47 = load %struct.EncodingEnvironment*, %struct.EncodingEnvironment** %eep.addr, align 8
  %C39 = getelementptr inbounds %struct.EncodingEnvironment, %struct.EncodingEnvironment* %47, i32 0, i32 14
  %48 = load i32, i32* %C39, align 4
  %cmp40 = icmp sgt i32 %48, 7
  br i1 %cmp40, label %while.body.42, label %while.end.47

while.body.42:                                    ; preds = %while.cond.38
  %49 = load %struct.EncodingEnvironment*, %struct.EncodingEnvironment** %eep.addr, align 8
  %C43 = getelementptr inbounds %struct.EncodingEnvironment, %struct.EncodingEnvironment* %49, i32 0, i32 14
  %50 = load i32, i32* %C43, align 4
  %sub44 = sub nsw i32 %50, 8
  store i32 %sub44, i32* %C43, align 4
  %51 = load %struct.EncodingEnvironment*, %struct.EncodingEnvironment** %eep.addr, align 8
  %E45 = getelementptr inbounds %struct.EncodingEnvironment, %struct.EncodingEnvironment* %51, i32 0, i32 16
  %52 = load i32, i32* %E45, align 4
  %inc46 = add nsw i32 %52, 1
  store i32 %inc46, i32* %E45, align 4
  br label %while.cond.38

while.end.47:                                     ; preds = %while.cond.38
  br label %if.end.48

if.end.48:                                        ; preds = %while.end.47, %while.body.19
  br label %while.cond.16

while.end.49:                                     ; preds = %while.cond.16
  %53 = load i32, i32* %low, align 4
  %sub50 = sub i32 %53, 512
  store i32 %sub50, i32* %low, align 4
  br label %if.end.122

if.else:                                          ; preds = %while.body
  %54 = load i32, i32* %low, align 4
  %cmp51 = icmp ult i32 %54, 256
  br i1 %cmp51, label %if.then.53, label %if.else.117

if.then.53:                                       ; preds = %if.else
  %55 = load %struct.EncodingEnvironment*, %struct.EncodingEnvironment** %eep.addr, align 8
  %Ebuffer54 = getelementptr inbounds %struct.EncodingEnvironment, %struct.EncodingEnvironment* %55, i32 0, i32 2
  %56 = load i32, i32* %Ebuffer54, align 4
  %shl55 = shl i32 %56, 1
  store i32 %shl55, i32* %Ebuffer54, align 4
  %57 = load %struct.EncodingEnvironment*, %struct.EncodingEnvironment** %eep.addr, align 8
  %Ebuffer56 = getelementptr inbounds %struct.EncodingEnvironment, %struct.EncodingEnvironment* %57, i32 0, i32 2
  %58 = load i32, i32* %Ebuffer56, align 4
  store i32 %58, i32* %Ebuffer56, align 4
  %59 = load %struct.EncodingEnvironment*, %struct.EncodingEnvironment** %eep.addr, align 8
  %Ebits_to_go57 = getelementptr inbounds %struct.EncodingEnvironment, %struct.EncodingEnvironment* %59, i32 0, i32 3
  %60 = load i32, i32* %Ebits_to_go57, align 4
  %dec58 = add i32 %60, -1
  store i32 %dec58, i32* %Ebits_to_go57, align 4
  %cmp59 = icmp eq i32 %dec58, 0
  br i1 %cmp59, label %if.then.61, label %if.end.80

if.then.61:                                       ; preds = %if.then.53
  %61 = load %struct.EncodingEnvironment*, %struct.EncodingEnvironment** %eep.addr, align 8
  %Ebuffer62 = getelementptr inbounds %struct.EncodingEnvironment, %struct.EncodingEnvironment* %61, i32 0, i32 2
  %62 = load i32, i32* %Ebuffer62, align 4
  %conv63 = trunc i32 %62 to i8
  %63 = load %struct.EncodingEnvironment*, %struct.EncodingEnvironment** %eep.addr, align 8
  %Ecodestrm_len64 = getelementptr inbounds %struct.EncodingEnvironment, %struct.EncodingEnvironment* %63, i32 0, i32 6
  %64 = load i32*, i32** %Ecodestrm_len64, align 8
  %65 = load i32, i32* %64, align 4
  %inc65 = add nsw i32 %65, 1
  store i32 %inc65, i32* %64, align 4
  %idxprom66 = sext i32 %65 to i64
  %66 = load %struct.EncodingEnvironment*, %struct.EncodingEnvironment** %eep.addr, align 8
  %Ecodestrm67 = getelementptr inbounds %struct.EncodingEnvironment, %struct.EncodingEnvironment* %66, i32 0, i32 5
  %67 = load i8*, i8** %Ecodestrm67, align 8
  %arrayidx68 = getelementptr inbounds i8, i8* %67, i64 %idxprom66
  store i8 %conv63, i8* %arrayidx68, align 1
  %68 = load %struct.EncodingEnvironment*, %struct.EncodingEnvironment** %eep.addr, align 8
  %Ebits_to_go69 = getelementptr inbounds %struct.EncodingEnvironment, %struct.EncodingEnvironment* %68, i32 0, i32 3
  store i32 8, i32* %Ebits_to_go69, align 4
  br label %while.cond.70

while.cond.70:                                    ; preds = %while.body.74, %if.then.61
  %69 = load %struct.EncodingEnvironment*, %struct.EncodingEnvironment** %eep.addr, align 8
  %C71 = getelementptr inbounds %struct.EncodingEnvironment, %struct.EncodingEnvironment* %69, i32 0, i32 14
  %70 = load i32, i32* %C71, align 4
  %cmp72 = icmp sgt i32 %70, 7
  br i1 %cmp72, label %while.body.74, label %while.end.79

while.body.74:                                    ; preds = %while.cond.70
  %71 = load %struct.EncodingEnvironment*, %struct.EncodingEnvironment** %eep.addr, align 8
  %C75 = getelementptr inbounds %struct.EncodingEnvironment, %struct.EncodingEnvironment* %71, i32 0, i32 14
  %72 = load i32, i32* %C75, align 4
  %sub76 = sub nsw i32 %72, 8
  store i32 %sub76, i32* %C75, align 4
  %73 = load %struct.EncodingEnvironment*, %struct.EncodingEnvironment** %eep.addr, align 8
  %E77 = getelementptr inbounds %struct.EncodingEnvironment, %struct.EncodingEnvironment* %73, i32 0, i32 16
  %74 = load i32, i32* %E77, align 4
  %inc78 = add nsw i32 %74, 1
  store i32 %inc78, i32* %E77, align 4
  br label %while.cond.70

while.end.79:                                     ; preds = %while.cond.70
  br label %if.end.80

if.end.80:                                        ; preds = %while.end.79, %if.then.53
  br label %while.cond.81

while.cond.81:                                    ; preds = %if.end.115, %if.end.80
  %75 = load %struct.EncodingEnvironment*, %struct.EncodingEnvironment** %eep.addr, align 8
  %Ebits_to_follow82 = getelementptr inbounds %struct.EncodingEnvironment, %struct.EncodingEnvironment* %75, i32 0, i32 4
  %76 = load i32, i32* %Ebits_to_follow82, align 4
  %cmp83 = icmp ugt i32 %76, 0
  br i1 %cmp83, label %while.body.85, label %while.end.116

while.body.85:                                    ; preds = %while.cond.81
  %77 = load %struct.EncodingEnvironment*, %struct.EncodingEnvironment** %eep.addr, align 8
  %Ebits_to_follow86 = getelementptr inbounds %struct.EncodingEnvironment, %struct.EncodingEnvironment* %77, i32 0, i32 4
  %78 = load i32, i32* %Ebits_to_follow86, align 4
  %dec87 = add i32 %78, -1
  store i32 %dec87, i32* %Ebits_to_follow86, align 4
  %79 = load %struct.EncodingEnvironment*, %struct.EncodingEnvironment** %eep.addr, align 8
  %Ebuffer88 = getelementptr inbounds %struct.EncodingEnvironment, %struct.EncodingEnvironment* %79, i32 0, i32 2
  %80 = load i32, i32* %Ebuffer88, align 4
  %shl89 = shl i32 %80, 1
  store i32 %shl89, i32* %Ebuffer88, align 4
  %81 = load %struct.EncodingEnvironment*, %struct.EncodingEnvironment** %eep.addr, align 8
  %Ebuffer90 = getelementptr inbounds %struct.EncodingEnvironment, %struct.EncodingEnvironment* %81, i32 0, i32 2
  %82 = load i32, i32* %Ebuffer90, align 4
  %or91 = or i32 %82, 1
  store i32 %or91, i32* %Ebuffer90, align 4
  %83 = load %struct.EncodingEnvironment*, %struct.EncodingEnvironment** %eep.addr, align 8
  %Ebits_to_go92 = getelementptr inbounds %struct.EncodingEnvironment, %struct.EncodingEnvironment* %83, i32 0, i32 3
  %84 = load i32, i32* %Ebits_to_go92, align 4
  %dec93 = add i32 %84, -1
  store i32 %dec93, i32* %Ebits_to_go92, align 4
  %cmp94 = icmp eq i32 %dec93, 0
  br i1 %cmp94, label %if.then.96, label %if.end.115

if.then.96:                                       ; preds = %while.body.85
  %85 = load %struct.EncodingEnvironment*, %struct.EncodingEnvironment** %eep.addr, align 8
  %Ebuffer97 = getelementptr inbounds %struct.EncodingEnvironment, %struct.EncodingEnvironment* %85, i32 0, i32 2
  %86 = load i32, i32* %Ebuffer97, align 4
  %conv98 = trunc i32 %86 to i8
  %87 = load %struct.EncodingEnvironment*, %struct.EncodingEnvironment** %eep.addr, align 8
  %Ecodestrm_len99 = getelementptr inbounds %struct.EncodingEnvironment, %struct.EncodingEnvironment* %87, i32 0, i32 6
  %88 = load i32*, i32** %Ecodestrm_len99, align 8
  %89 = load i32, i32* %88, align 4
  %inc100 = add nsw i32 %89, 1
  store i32 %inc100, i32* %88, align 4
  %idxprom101 = sext i32 %89 to i64
  %90 = load %struct.EncodingEnvironment*, %struct.EncodingEnvironment** %eep.addr, align 8
  %Ecodestrm102 = getelementptr inbounds %struct.EncodingEnvironment, %struct.EncodingEnvironment* %90, i32 0, i32 5
  %91 = load i8*, i8** %Ecodestrm102, align 8
  %arrayidx103 = getelementptr inbounds i8, i8* %91, i64 %idxprom101
  store i8 %conv98, i8* %arrayidx103, align 1
  %92 = load %struct.EncodingEnvironment*, %struct.EncodingEnvironment** %eep.addr, align 8
  %Ebits_to_go104 = getelementptr inbounds %struct.EncodingEnvironment, %struct.EncodingEnvironment* %92, i32 0, i32 3
  store i32 8, i32* %Ebits_to_go104, align 4
  br label %while.cond.105

while.cond.105:                                   ; preds = %while.body.109, %if.then.96
  %93 = load %struct.EncodingEnvironment*, %struct.EncodingEnvironment** %eep.addr, align 8
  %C106 = getelementptr inbounds %struct.EncodingEnvironment, %struct.EncodingEnvironment* %93, i32 0, i32 14
  %94 = load i32, i32* %C106, align 4
  %cmp107 = icmp sgt i32 %94, 7
  br i1 %cmp107, label %while.body.109, label %while.end.114

while.body.109:                                   ; preds = %while.cond.105
  %95 = load %struct.EncodingEnvironment*, %struct.EncodingEnvironment** %eep.addr, align 8
  %C110 = getelementptr inbounds %struct.EncodingEnvironment, %struct.EncodingEnvironment* %95, i32 0, i32 14
  %96 = load i32, i32* %C110, align 4
  %sub111 = sub nsw i32 %96, 8
  store i32 %sub111, i32* %C110, align 4
  %97 = load %struct.EncodingEnvironment*, %struct.EncodingEnvironment** %eep.addr, align 8
  %E112 = getelementptr inbounds %struct.EncodingEnvironment, %struct.EncodingEnvironment* %97, i32 0, i32 16
  %98 = load i32, i32* %E112, align 4
  %inc113 = add nsw i32 %98, 1
  store i32 %inc113, i32* %E112, align 4
  br label %while.cond.105

while.end.114:                                    ; preds = %while.cond.105
  br label %if.end.115

if.end.115:                                       ; preds = %while.end.114, %while.body.85
  br label %while.cond.81

while.end.116:                                    ; preds = %while.cond.81
  br label %if.end.121

if.else.117:                                      ; preds = %if.else
  %99 = load %struct.EncodingEnvironment*, %struct.EncodingEnvironment** %eep.addr, align 8
  %Ebits_to_follow118 = getelementptr inbounds %struct.EncodingEnvironment, %struct.EncodingEnvironment* %99, i32 0, i32 4
  %100 = load i32, i32* %Ebits_to_follow118, align 4
  %inc119 = add i32 %100, 1
  store i32 %inc119, i32* %Ebits_to_follow118, align 4
  %101 = load i32, i32* %low, align 4
  %sub120 = sub i32 %101, 256
  store i32 %sub120, i32* %low, align 4
  br label %if.end.121

if.end.121:                                       ; preds = %if.else.117, %while.end.116
  br label %if.end.122

if.end.122:                                       ; preds = %if.end.121, %while.end.49
  %102 = load i32, i32* %low, align 4
  %shl123 = shl i32 %102, 1
  store i32 %shl123, i32* %low, align 4
  %103 = load i32, i32* %range, align 4
  %shl124 = shl i32 %103, 1
  store i32 %shl124, i32* %range, align 4
  br label %while.cond

while.end.125:                                    ; preds = %while.cond
  %104 = load i32, i32* %range, align 4
  %105 = load %struct.EncodingEnvironment*, %struct.EncodingEnvironment** %eep.addr, align 8
  %Erange126 = getelementptr inbounds %struct.EncodingEnvironment, %struct.EncodingEnvironment* %105, i32 0, i32 1
  store i32 %104, i32* %Erange126, align 4
  %106 = load i32, i32* %low, align 4
  %107 = load %struct.EncodingEnvironment*, %struct.EncodingEnvironment** %eep.addr, align 8
  %Elow127 = getelementptr inbounds %struct.EncodingEnvironment, %struct.EncodingEnvironment* %107, i32 0, i32 0
  store i32 %106, i32* %Elow127, align 4
  %108 = load %struct.EncodingEnvironment*, %struct.EncodingEnvironment** %eep.addr, align 8
  %C128 = getelementptr inbounds %struct.EncodingEnvironment, %struct.EncodingEnvironment* %108, i32 0, i32 14
  %109 = load i32, i32* %C128, align 4
  %inc129 = add nsw i32 %109, 1
  store i32 %inc129, i32* %C128, align 4
  ret void
}

; Function Attrs: nounwind uwtable
define void @biari_init_context(%struct.BiContextType* %ctx, i32* %ini) #0 {
entry:
  %ctx.addr = alloca %struct.BiContextType*, align 8
  %ini.addr = alloca i32*, align 8
  %pstate = alloca i32, align 4
  store %struct.BiContextType* %ctx, %struct.BiContextType** %ctx.addr, align 8
  store i32* %ini, i32** %ini.addr, align 8
  %0 = load i32*, i32** %ini.addr, align 8
  %arrayidx = getelementptr inbounds i32, i32* %0, i64 0
  %1 = load i32, i32* %arrayidx, align 4
  %2 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %qp = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %2, i32 0, i32 10
  %3 = load i32, i32* %qp, align 4
  %cmp = icmp sgt i32 0, %3
  br i1 %cmp, label %cond.true, label %cond.false

cond.true:                                        ; preds = %entry
  br label %cond.end

cond.false:                                       ; preds = %entry
  %4 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %qp1 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %4, i32 0, i32 10
  %5 = load i32, i32* %qp1, align 4
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ 0, %cond.true ], [ %5, %cond.false ]
  %mul = mul nsw i32 %1, %cond
  %shr = ashr i32 %mul, 4
  %6 = load i32*, i32** %ini.addr, align 8
  %arrayidx2 = getelementptr inbounds i32, i32* %6, i64 1
  %7 = load i32, i32* %arrayidx2, align 4
  %add = add nsw i32 %shr, %7
  store i32 %add, i32* %pstate, align 4
  %8 = load i32, i32* %pstate, align 4
  %cmp3 = icmp sgt i32 1, %8
  br i1 %cmp3, label %cond.true.4, label %cond.false.5

cond.true.4:                                      ; preds = %cond.end
  br label %cond.end.6

cond.false.5:                                     ; preds = %cond.end
  %9 = load i32, i32* %pstate, align 4
  br label %cond.end.6

cond.end.6:                                       ; preds = %cond.false.5, %cond.true.4
  %cond7 = phi i32 [ 1, %cond.true.4 ], [ %9, %cond.false.5 ]
  %cmp8 = icmp slt i32 %cond7, 126
  br i1 %cmp8, label %cond.true.9, label %cond.false.15

cond.true.9:                                      ; preds = %cond.end.6
  %10 = load i32, i32* %pstate, align 4
  %cmp10 = icmp sgt i32 1, %10
  br i1 %cmp10, label %cond.true.11, label %cond.false.12

cond.true.11:                                     ; preds = %cond.true.9
  br label %cond.end.13

cond.false.12:                                    ; preds = %cond.true.9
  %11 = load i32, i32* %pstate, align 4
  br label %cond.end.13

cond.end.13:                                      ; preds = %cond.false.12, %cond.true.11
  %cond14 = phi i32 [ 1, %cond.true.11 ], [ %11, %cond.false.12 ]
  br label %cond.end.16

cond.false.15:                                    ; preds = %cond.end.6
  br label %cond.end.16

cond.end.16:                                      ; preds = %cond.false.15, %cond.end.13
  %cond17 = phi i32 [ %cond14, %cond.end.13 ], [ 126, %cond.false.15 ]
  store i32 %cond17, i32* %pstate, align 4
  %12 = load i32, i32* %pstate, align 4
  %cmp18 = icmp sge i32 %12, 64
  br i1 %cmp18, label %if.then, label %if.else

if.then:                                          ; preds = %cond.end.16
  %13 = load i32, i32* %pstate, align 4
  %sub = sub nsw i32 %13, 64
  %conv = trunc i32 %sub to i16
  %14 = load %struct.BiContextType*, %struct.BiContextType** %ctx.addr, align 8
  %state = getelementptr inbounds %struct.BiContextType, %struct.BiContextType* %14, i32 0, i32 0
  store i16 %conv, i16* %state, align 2
  %15 = load %struct.BiContextType*, %struct.BiContextType** %ctx.addr, align 8
  %MPS = getelementptr inbounds %struct.BiContextType, %struct.BiContextType* %15, i32 0, i32 1
  store i8 1, i8* %MPS, align 1
  br label %if.end

if.else:                                          ; preds = %cond.end.16
  %16 = load i32, i32* %pstate, align 4
  %sub19 = sub nsw i32 63, %16
  %conv20 = trunc i32 %sub19 to i16
  %17 = load %struct.BiContextType*, %struct.BiContextType** %ctx.addr, align 8
  %state21 = getelementptr inbounds %struct.BiContextType, %struct.BiContextType* %17, i32 0, i32 0
  store i16 %conv20, i16* %state21, align 2
  %18 = load %struct.BiContextType*, %struct.BiContextType** %ctx.addr, align 8
  %MPS22 = getelementptr inbounds %struct.BiContextType, %struct.BiContextType* %18, i32 0, i32 1
  store i8 0, i8* %MPS22, align 1
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %19 = load %struct.BiContextType*, %struct.BiContextType** %ctx.addr, align 8
  %count = getelementptr inbounds %struct.BiContextType, %struct.BiContextType* %19, i32 0, i32 2
  store i64 0, i64* %count, align 8
  ret void
}

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind }

!llvm.ident = !{!0}

!0 = !{!"clang version 3.7.0 (tags/RELEASE_370/final)"}
