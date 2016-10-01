; ModuleID = './MultiSource.Benchmarks.MiBench/34.consumer-lame.main.bc'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct._IO_FILE = type { i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, %struct._IO_marker*, %struct._IO_FILE*, i32, i32, i64, i16, i8, [1 x i8], i8*, i64, i8*, i8*, i8*, i8*, i64, i32, [20 x i8] }
%struct._IO_marker = type { %struct._IO_marker*, %struct._IO_FILE*, i32 }
%struct.lame_global_flags = type { i64, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i8*, i8*, i32, i32, float, i32, i32, i32, i64, i64, i32, i32, i32, i32, i32, i32, i32, i32, float, i32, i32, i32, float, float, float, float, i32, i32, i32, i32, i32, i32, i32, i32 }

@.str = private unnamed_addr constant [2 x i8] c"-\00", align 1
@stdout = external global %struct._IO_FILE*, align 8
@.str.1 = private unnamed_addr constant [3 x i8] c"wb\00", align 1
@stderr = external global %struct._IO_FILE*, align 8
@.str.2 = private unnamed_addr constant [24 x i8] c"Could not create \22%s\22.\0A\00", align 1
@.str.3 = private unnamed_addr constant [34 x i8] c"mp3 buffer is not big enough... \0A\00", align 1
@.str.4 = private unnamed_addr constant [25 x i8] c"Error writing mp3 output\00", align 1

; Function Attrs: nounwind uwtable
define i32 @main(i32 %argc, i8** %argv) #0 {
entry:
  %retval = alloca i32, align 4
  %argc.addr = alloca i32, align 4
  %argv.addr = alloca i8**, align 8
  %mp3buffer = alloca [16384 x i8], align 16
  %Buffer = alloca [2 x [1152 x i16]], align 16
  %iread = alloca i32, align 4
  %imp3 = alloca i32, align 4
  %gf = alloca %struct.lame_global_flags, align 8
  %outf = alloca %struct._IO_FILE*, align 8
  %__s1_len = alloca i64, align 8
  %__s2_len = alloca i64, align 8
  %tmp = alloca i32, align 4
  %__s1 = alloca i8*, align 8
  %__result = alloca i32, align 4
  %tmp40 = alloca i32, align 4
  store i32 0, i32* %retval
  store i32 %argc, i32* %argc.addr, align 4, !tbaa !1
  store i8** %argv, i8*** %argv.addr, align 8, !tbaa !5
  %0 = bitcast [16384 x i8]* %mp3buffer to i8*
  call void @llvm.lifetime.start(i64 16384, i8* %0) #1
  %1 = bitcast [2 x [1152 x i16]]* %Buffer to i8*
  call void @llvm.lifetime.start(i64 4608, i8* %1) #1
  %2 = bitcast i32* %iread to i8*
  call void @llvm.lifetime.start(i64 4, i8* %2) #1
  %3 = bitcast i32* %imp3 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %3) #1
  %4 = bitcast %struct.lame_global_flags* %gf to i8*
  call void @llvm.lifetime.start(i64 280, i8* %4) #1
  %5 = bitcast %struct._IO_FILE** %outf to i8*
  call void @llvm.lifetime.start(i64 8, i8* %5) #1
  call void @lame_init(%struct.lame_global_flags* %gf)
  %6 = load i32, i32* %argc.addr, align 4, !tbaa !1
  %cmp = icmp eq i32 %6, 1
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %7 = load i8**, i8*** %argv.addr, align 8, !tbaa !5
  %arrayidx = getelementptr inbounds i8*, i8** %7, i64 0
  %8 = load i8*, i8** %arrayidx, align 8, !tbaa !5
  call void @lame_usage(%struct.lame_global_flags* %gf, i8* %8)
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %9 = load i32, i32* %argc.addr, align 4, !tbaa !1
  %10 = load i8**, i8*** %argv.addr, align 8, !tbaa !5
  call void @lame_parse_args(%struct.lame_global_flags* %gf, i32 %9, i8** %10)
  %gtkflag = getelementptr inbounds %struct.lame_global_flags, %struct.lame_global_flags* %gf, i32 0, i32 4
  %11 = load i32, i32* %gtkflag, align 4, !tbaa !7
  %tobool = icmp ne i32 %11, 0
  br i1 %tobool, label %if.end.53, label %if.then.1

if.then.1:                                        ; preds = %if.end
  %12 = bitcast i64* %__s1_len to i8*
  call void @llvm.lifetime.start(i64 8, i8* %12) #1
  %13 = bitcast i64* %__s2_len to i8*
  call void @llvm.lifetime.start(i64 8, i8* %13) #1
  br i1 icmp eq (i64 sub (i64 ptrtoint (i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i32 0, i64 1) to i64), i64 ptrtoint ([2 x i8]* @.str to i64)), i64 1), label %land.lhs.true, label %cond.false

land.lhs.true:                                    ; preds = %if.then.1
  store i64 1, i64* %__s2_len, align 8, !tbaa !11
  %14 = load i64, i64* %__s2_len, align 8, !tbaa !11
  %cmp2 = icmp ult i64 %14, 4
  br i1 %cmp2, label %cond.true, label %cond.false

cond.true:                                        ; preds = %land.lhs.true
  %15 = bitcast i8** %__s1 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %15) #1
  %outPath = getelementptr inbounds %struct.lame_global_flags, %struct.lame_global_flags* %gf, i32 0, i32 32
  %16 = load i8*, i8** %outPath, align 8, !tbaa !12
  store i8* %16, i8** %__s1, align 8, !tbaa !5
  %17 = bitcast i32* %__result to i8*
  call void @llvm.lifetime.start(i64 4, i8* %17) #1
  %18 = load i8*, i8** %__s1, align 8, !tbaa !5
  %arrayidx5 = getelementptr inbounds i8, i8* %18, i64 0
  %19 = load i8, i8* %arrayidx5, align 1, !tbaa !13
  %conv = zext i8 %19 to i32
  %20 = load i8, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i32 0, i32 0), align 1, !tbaa !13
  %conv6 = zext i8 %20 to i32
  %sub = sub nsw i32 %conv, %conv6
  store i32 %sub, i32* %__result, align 4, !tbaa !1
  %21 = load i64, i64* %__s2_len, align 8, !tbaa !11
  %cmp7 = icmp ugt i64 %21, 0
  br i1 %cmp7, label %land.lhs.true.9, label %if.end.39

land.lhs.true.9:                                  ; preds = %cond.true
  %22 = load i32, i32* %__result, align 4, !tbaa !1
  %cmp10 = icmp eq i32 %22, 0
  br i1 %cmp10, label %if.then.12, label %if.end.39

if.then.12:                                       ; preds = %land.lhs.true.9
  %23 = load i8*, i8** %__s1, align 8, !tbaa !5
  %arrayidx13 = getelementptr inbounds i8, i8* %23, i64 1
  %24 = load i8, i8* %arrayidx13, align 1, !tbaa !13
  %conv14 = zext i8 %24 to i32
  %25 = load i8, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i32 0, i64 1), align 1, !tbaa !13
  %conv15 = zext i8 %25 to i32
  %sub16 = sub nsw i32 %conv14, %conv15
  store i32 %sub16, i32* %__result, align 4, !tbaa !1
  %26 = load i64, i64* %__s2_len, align 8, !tbaa !11
  %cmp17 = icmp ugt i64 %26, 1
  br i1 %cmp17, label %land.lhs.true.19, label %if.end.38

land.lhs.true.19:                                 ; preds = %if.then.12
  %27 = load i32, i32* %__result, align 4, !tbaa !1
  %cmp20 = icmp eq i32 %27, 0
  br i1 %cmp20, label %if.then.22, label %if.end.38

if.then.22:                                       ; preds = %land.lhs.true.19
  %28 = load i8*, i8** %__s1, align 8, !tbaa !5
  %arrayidx23 = getelementptr inbounds i8, i8* %28, i64 2
  %29 = load i8, i8* %arrayidx23, align 1, !tbaa !13
  %conv24 = zext i8 %29 to i32
  %30 = load i8, i8* getelementptr inbounds (i8, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i32 0, i32 0), i64 2), align 1, !tbaa !13
  %conv25 = zext i8 %30 to i32
  %sub26 = sub nsw i32 %conv24, %conv25
  store i32 %sub26, i32* %__result, align 4, !tbaa !1
  %31 = load i64, i64* %__s2_len, align 8, !tbaa !11
  %cmp27 = icmp ugt i64 %31, 2
  br i1 %cmp27, label %land.lhs.true.29, label %if.end.37

land.lhs.true.29:                                 ; preds = %if.then.22
  %32 = load i32, i32* %__result, align 4, !tbaa !1
  %cmp30 = icmp eq i32 %32, 0
  br i1 %cmp30, label %if.then.32, label %if.end.37

if.then.32:                                       ; preds = %land.lhs.true.29
  %33 = load i8*, i8** %__s1, align 8, !tbaa !5
  %arrayidx33 = getelementptr inbounds i8, i8* %33, i64 3
  %34 = load i8, i8* %arrayidx33, align 1, !tbaa !13
  %conv34 = zext i8 %34 to i32
  %35 = load i8, i8* getelementptr inbounds (i8, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i32 0, i32 0), i64 3), align 1, !tbaa !13
  %conv35 = zext i8 %35 to i32
  %sub36 = sub nsw i32 %conv34, %conv35
  store i32 %sub36, i32* %__result, align 4, !tbaa !1
  br label %if.end.37

if.end.37:                                        ; preds = %if.then.32, %land.lhs.true.29, %if.then.22
  br label %if.end.38

if.end.38:                                        ; preds = %if.end.37, %land.lhs.true.19, %if.then.12
  br label %if.end.39

if.end.39:                                        ; preds = %if.end.38, %land.lhs.true.9, %cond.true
  %36 = load i32, i32* %__result, align 4, !tbaa !1
  store i32 %36, i32* %tmp40, !tbaa !1
  %37 = bitcast i32* %__result to i8*
  call void @llvm.lifetime.end(i64 4, i8* %37) #1
  %38 = bitcast i8** %__s1 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %38) #1
  %39 = load i32, i32* %tmp40, !tbaa !1
  br label %cond.end

cond.false:                                       ; preds = %land.lhs.true, %if.then.1
  %outPath41 = getelementptr inbounds %struct.lame_global_flags, %struct.lame_global_flags* %gf, i32 0, i32 32
  %40 = load i8*, i8** %outPath41, align 8, !tbaa !12
  %call = call i32 @strcmp(i8* %40, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i32 0, i32 0)) #1
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %if.end.39
  %cond = phi i32 [ %39, %if.end.39 ], [ %call, %cond.false ]
  store i32 %cond, i32* %tmp, !tbaa !1
  %41 = bitcast i64* %__s2_len to i8*
  call void @llvm.lifetime.end(i64 8, i8* %41) #1
  %42 = bitcast i64* %__s1_len to i8*
  call void @llvm.lifetime.end(i64 8, i8* %42) #1
  %43 = load i32, i32* %tmp, !tbaa !1
  %tobool42 = icmp ne i32 %43, 0
  br i1 %tobool42, label %if.else, label %if.then.43

if.then.43:                                       ; preds = %cond.end
  %44 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !tbaa !5
  store %struct._IO_FILE* %44, %struct._IO_FILE** %outf, align 8, !tbaa !5
  br label %if.end.52

if.else:                                          ; preds = %cond.end
  %outPath44 = getelementptr inbounds %struct.lame_global_flags, %struct.lame_global_flags* %gf, i32 0, i32 32
  %45 = load i8*, i8** %outPath44, align 8, !tbaa !12
  %call45 = call %struct._IO_FILE* @fopen(i8* %45, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i32 0, i32 0))
  store %struct._IO_FILE* %call45, %struct._IO_FILE** %outf, align 8, !tbaa !5
  %cmp46 = icmp eq %struct._IO_FILE* %call45, null
  br i1 %cmp46, label %if.then.48, label %if.end.51

if.then.48:                                       ; preds = %if.else
  %46 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !tbaa !5
  %outPath49 = getelementptr inbounds %struct.lame_global_flags, %struct.lame_global_flags* %gf, i32 0, i32 32
  %47 = load i8*, i8** %outPath49, align 8, !tbaa !12
  %call50 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %46, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.2, i32 0, i32 0), i8* %47)
  call void @exit(i32 1) #5
  unreachable

if.end.51:                                        ; preds = %if.else
  br label %if.end.52

if.end.52:                                        ; preds = %if.end.51, %if.then.43
  br label %if.end.53

if.end.53:                                        ; preds = %if.end.52, %if.end
  call void @lame_init_infile(%struct.lame_global_flags* %gf)
  call void @lame_init_params(%struct.lame_global_flags* %gf)
  call void @lame_print_config(%struct.lame_global_flags* %gf)
  br label %do.body

do.body:                                          ; preds = %do.cond, %if.end.53
  %arraydecay = getelementptr inbounds [2 x [1152 x i16]], [2 x [1152 x i16]]* %Buffer, i32 0, i32 0
  %call54 = call i32 @lame_readframe(%struct.lame_global_flags* %gf, [1152 x i16]* %arraydecay)
  store i32 %call54, i32* %iread, align 4, !tbaa !1
  %arrayidx55 = getelementptr inbounds [2 x [1152 x i16]], [2 x [1152 x i16]]* %Buffer, i32 0, i64 0
  %arraydecay56 = getelementptr inbounds [1152 x i16], [1152 x i16]* %arrayidx55, i32 0, i32 0
  %arrayidx57 = getelementptr inbounds [2 x [1152 x i16]], [2 x [1152 x i16]]* %Buffer, i32 0, i64 1
  %arraydecay58 = getelementptr inbounds [1152 x i16], [1152 x i16]* %arrayidx57, i32 0, i32 0
  %48 = load i32, i32* %iread, align 4, !tbaa !1
  %arraydecay59 = getelementptr inbounds [16384 x i8], [16384 x i8]* %mp3buffer, i32 0, i32 0
  %call60 = call i32 @lame_encode_buffer(%struct.lame_global_flags* %gf, i16* %arraydecay56, i16* %arraydecay58, i32 %48, i8* %arraydecay59, i32 16384)
  store i32 %call60, i32* %imp3, align 4, !tbaa !1
  %49 = load i32, i32* %imp3, align 4, !tbaa !1
  %cmp61 = icmp eq i32 %49, -1
  br i1 %cmp61, label %if.then.63, label %if.end.65

if.then.63:                                       ; preds = %do.body
  %50 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !tbaa !5
  %call64 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %50, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.3, i32 0, i32 0))
  call void @exit(i32 1) #5
  unreachable

if.end.65:                                        ; preds = %do.body
  %arraydecay66 = getelementptr inbounds [16384 x i8], [16384 x i8]* %mp3buffer, i32 0, i32 0
  %51 = load i32, i32* %imp3, align 4, !tbaa !1
  %conv67 = sext i32 %51 to i64
  %52 = load %struct._IO_FILE*, %struct._IO_FILE** %outf, align 8, !tbaa !5
  %call68 = call i64 @fwrite(i8* %arraydecay66, i64 1, i64 %conv67, %struct._IO_FILE* %52)
  %53 = load i32, i32* %imp3, align 4, !tbaa !1
  %conv69 = sext i32 %53 to i64
  %cmp70 = icmp ne i64 %call68, %conv69
  br i1 %cmp70, label %if.then.72, label %if.end.74

if.then.72:                                       ; preds = %if.end.65
  %54 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !tbaa !5
  %call73 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %54, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.4, i32 0, i32 0))
  call void @exit(i32 1) #5
  unreachable

if.end.74:                                        ; preds = %if.end.65
  br label %do.cond

do.cond:                                          ; preds = %if.end.74
  %55 = load i32, i32* %iread, align 4, !tbaa !1
  %tobool75 = icmp ne i32 %55, 0
  br i1 %tobool75, label %do.body, label %do.end

do.end:                                           ; preds = %do.cond
  %arraydecay76 = getelementptr inbounds [16384 x i8], [16384 x i8]* %mp3buffer, i32 0, i32 0
  %call77 = call i32 @lame_encode_finish(%struct.lame_global_flags* %gf, i8* %arraydecay76, i32 16384)
  store i32 %call77, i32* %imp3, align 4, !tbaa !1
  %arraydecay78 = getelementptr inbounds [16384 x i8], [16384 x i8]* %mp3buffer, i32 0, i32 0
  %56 = load i32, i32* %imp3, align 4, !tbaa !1
  %conv79 = sext i32 %56 to i64
  %57 = load %struct._IO_FILE*, %struct._IO_FILE** %outf, align 8, !tbaa !5
  %call80 = call i64 @fwrite(i8* %arraydecay78, i64 1, i64 %conv79, %struct._IO_FILE* %57)
  %58 = load %struct._IO_FILE*, %struct._IO_FILE** %outf, align 8, !tbaa !5
  %call81 = call i32 @fclose(%struct._IO_FILE* %58)
  call void @lame_close_infile(%struct.lame_global_flags* %gf)
  call void @lame_mp3_tags(%struct.lame_global_flags* %gf)
  %59 = bitcast %struct._IO_FILE** %outf to i8*
  call void @llvm.lifetime.end(i64 8, i8* %59) #1
  %60 = bitcast %struct.lame_global_flags* %gf to i8*
  call void @llvm.lifetime.end(i64 280, i8* %60) #1
  %61 = bitcast i32* %imp3 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %61) #1
  %62 = bitcast i32* %iread to i8*
  call void @llvm.lifetime.end(i64 4, i8* %62) #1
  %63 = bitcast [2 x [1152 x i16]]* %Buffer to i8*
  call void @llvm.lifetime.end(i64 4608, i8* %63) #1
  %64 = bitcast [16384 x i8]* %mp3buffer to i8*
  call void @llvm.lifetime.end(i64 16384, i8* %64) #1
  ret i32 0
}

; Function Attrs: nounwind
declare void @llvm.lifetime.start(i64, i8* nocapture) #1

declare void @lame_init(%struct.lame_global_flags*) #2

declare void @lame_usage(%struct.lame_global_flags*, i8*) #2

declare void @lame_parse_args(%struct.lame_global_flags*, i32, i8**) #2

; Function Attrs: nounwind
declare void @llvm.lifetime.end(i64, i8* nocapture) #1

; Function Attrs: nounwind
declare i32 @strcmp(i8*, i8*) #3

declare %struct._IO_FILE* @fopen(i8*, i8*) #2

declare i32 @fprintf(%struct._IO_FILE*, i8*, ...) #2

; Function Attrs: noreturn nounwind
declare void @exit(i32) #4

declare void @lame_init_infile(%struct.lame_global_flags*) #2

declare void @lame_init_params(%struct.lame_global_flags*) #2

declare void @lame_print_config(%struct.lame_global_flags*) #2

declare i32 @lame_readframe(%struct.lame_global_flags*, [1152 x i16]*) #2

declare i32 @lame_encode_buffer(%struct.lame_global_flags*, i16*, i16*, i32, i8*, i32) #2

declare i64 @fwrite(i8*, i64, i64, %struct._IO_FILE*) #2

declare i32 @lame_encode_finish(%struct.lame_global_flags*, i8*, i32) #2

declare i32 @fclose(%struct._IO_FILE*) #2

declare void @lame_close_infile(%struct.lame_global_flags*) #2

declare void @lame_mp3_tags(%struct.lame_global_flags*) #2

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { noreturn nounwind "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #5 = { noreturn nounwind }

!llvm.ident = !{!0}

!0 = !{!"clang version 3.7.0 (tags/RELEASE_370/final)"}
!1 = !{!2, !2, i64 0}
!2 = !{!"int", !3, i64 0}
!3 = !{!"omnipotent char", !4, i64 0}
!4 = !{!"Simple C/C++ TBAA"}
!5 = !{!6, !6, i64 0}
!6 = !{!"any pointer", !3, i64 0}
!7 = !{!8, !2, i64 20}
!8 = !{!"", !9, i64 0, !2, i64 8, !2, i64 12, !2, i64 16, !2, i64 20, !2, i64 24, !2, i64 28, !2, i64 32, !2, i64 36, !2, i64 40, !2, i64 44, !2, i64 48, !2, i64 52, !2, i64 56, !2, i64 60, !2, i64 64, !2, i64 68, !2, i64 72, !2, i64 76, !2, i64 80, !2, i64 84, !2, i64 88, !2, i64 92, !2, i64 96, !2, i64 100, !2, i64 104, !2, i64 108, !2, i64 112, !2, i64 116, !3, i64 120, !2, i64 124, !6, i64 128, !6, i64 136, !2, i64 144, !2, i64 148, !10, i64 152, !2, i64 156, !2, i64 160, !2, i64 164, !9, i64 168, !9, i64 176, !2, i64 184, !2, i64 188, !2, i64 192, !2, i64 196, !2, i64 200, !2, i64 204, !2, i64 208, !2, i64 212, !10, i64 216, !2, i64 220, !2, i64 224, !2, i64 228, !10, i64 232, !10, i64 236, !10, i64 240, !10, i64 244, !2, i64 248, !2, i64 252, !2, i64 256, !2, i64 260, !2, i64 264, !2, i64 268, !2, i64 272, !2, i64 276}
!9 = !{!"long", !3, i64 0}
!10 = !{!"float", !3, i64 0}
!11 = !{!9, !9, i64 0}
!12 = !{!8, !6, i64 136}
!13 = !{!3, !3, i64 0}
