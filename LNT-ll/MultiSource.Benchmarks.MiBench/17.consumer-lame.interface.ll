; ModuleID = './MultiSource.Benchmarks.MiBench/17.consumer-lame.interface.bc'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mpstr = type { %struct.buf*, %struct.buf*, i32, i32, i32, %struct.frame, [2 x [2304 x i8]], [2 x [2 x [576 x double]]], [2 x i32], i64, i32, [2 x [2 x [272 x double]]], i32 }
%struct.buf = type { i8*, i64, i64, %struct.buf*, %struct.buf* }
%struct.frame = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct._IO_FILE = type { i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, %struct._IO_marker*, %struct._IO_FILE*, i32, i32, i64, i16, i8, [1 x i8], i8*, i64, i8*, i8*, i8*, i8*, i64, i32, [20 x i8] }
%struct._IO_marker = type { %struct._IO_marker*, %struct._IO_FILE*, i32 }

@gmp = common global %struct.mpstr* null, align 8
@stderr = external global %struct._IO_FILE*, align 8
@.str = private unnamed_addr constant [19 x i8] c"To less out space\0A\00", align 1
@wordpointer = external global i8*, align 8
@bitindex = external global i32, align 4
@.str.1 = private unnamed_addr constant [22 x i8] c"Can't step back %ld!\0A\00", align 1
@.str.2 = private unnamed_addr constant [16 x i8] c"Out of memory!\0A\00", align 1
@.str.3 = private unnamed_addr constant [14 x i8] c"Fatal error!\0A\00", align 1

; Function Attrs: nounwind uwtable
define i32 @InitMP3(%struct.mpstr* %mp) #0 {
entry:
  %mp.addr = alloca %struct.mpstr*, align 8
  store %struct.mpstr* %mp, %struct.mpstr** %mp.addr, align 8, !tbaa !1
  %0 = load %struct.mpstr*, %struct.mpstr** %mp.addr, align 8, !tbaa !1
  %1 = bitcast %struct.mpstr* %0 to i8*
  call void @llvm.memset.p0i8.i64(i8* %1, i8 0, i64 31880, i32 8, i1 false)
  %2 = load %struct.mpstr*, %struct.mpstr** %mp.addr, align 8, !tbaa !1
  %framesize = getelementptr inbounds %struct.mpstr, %struct.mpstr* %2, i32 0, i32 3
  store i32 0, i32* %framesize, align 4, !tbaa !5
  %3 = load %struct.mpstr*, %struct.mpstr** %mp.addr, align 8, !tbaa !1
  %fsizeold = getelementptr inbounds %struct.mpstr, %struct.mpstr* %3, i32 0, i32 4
  store i32 -1, i32* %fsizeold, align 4, !tbaa !10
  %4 = load %struct.mpstr*, %struct.mpstr** %mp.addr, align 8, !tbaa !1
  %bsize = getelementptr inbounds %struct.mpstr, %struct.mpstr* %4, i32 0, i32 2
  store i32 0, i32* %bsize, align 4, !tbaa !11
  %5 = load %struct.mpstr*, %struct.mpstr** %mp.addr, align 8, !tbaa !1
  %tail = getelementptr inbounds %struct.mpstr, %struct.mpstr* %5, i32 0, i32 1
  store %struct.buf* null, %struct.buf** %tail, align 8, !tbaa !12
  %6 = load %struct.mpstr*, %struct.mpstr** %mp.addr, align 8, !tbaa !1
  %head = getelementptr inbounds %struct.mpstr, %struct.mpstr* %6, i32 0, i32 0
  store %struct.buf* null, %struct.buf** %head, align 8, !tbaa !13
  %7 = load %struct.mpstr*, %struct.mpstr** %mp.addr, align 8, !tbaa !1
  %fr = getelementptr inbounds %struct.mpstr, %struct.mpstr* %7, i32 0, i32 5
  %single = getelementptr inbounds %struct.frame, %struct.frame* %fr, i32 0, i32 2
  store i32 -1, i32* %single, align 4, !tbaa !14
  %8 = load %struct.mpstr*, %struct.mpstr** %mp.addr, align 8, !tbaa !1
  %bsnum = getelementptr inbounds %struct.mpstr, %struct.mpstr* %8, i32 0, i32 10
  store i32 0, i32* %bsnum, align 4, !tbaa !15
  %9 = load %struct.mpstr*, %struct.mpstr** %mp.addr, align 8, !tbaa !1
  %synth_bo = getelementptr inbounds %struct.mpstr, %struct.mpstr* %9, i32 0, i32 12
  store i32 1, i32* %synth_bo, align 4, !tbaa !16
  call void @make_decode_tables(i64 32767)
  call void @init_layer3(i32 32)
  ret i32 1
}

; Function Attrs: nounwind
declare void @llvm.memset.p0i8.i64(i8* nocapture, i8, i64, i32, i1) #1

declare void @make_decode_tables(i64) #2

declare void @init_layer3(i32) #2

; Function Attrs: nounwind uwtable
define void @ExitMP3(%struct.mpstr* %mp) #0 {
entry:
  %mp.addr = alloca %struct.mpstr*, align 8
  %b = alloca %struct.buf*, align 8
  %bn = alloca %struct.buf*, align 8
  store %struct.mpstr* %mp, %struct.mpstr** %mp.addr, align 8, !tbaa !1
  %0 = bitcast %struct.buf** %b to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #1
  %1 = bitcast %struct.buf** %bn to i8*
  call void @llvm.lifetime.start(i64 8, i8* %1) #1
  %2 = load %struct.mpstr*, %struct.mpstr** %mp.addr, align 8, !tbaa !1
  %tail = getelementptr inbounds %struct.mpstr, %struct.mpstr* %2, i32 0, i32 1
  %3 = load %struct.buf*, %struct.buf** %tail, align 8, !tbaa !12
  store %struct.buf* %3, %struct.buf** %b, align 8, !tbaa !1
  br label %while.cond

while.cond:                                       ; preds = %while.body, %entry
  %4 = load %struct.buf*, %struct.buf** %b, align 8, !tbaa !1
  %tobool = icmp ne %struct.buf* %4, null
  br i1 %tobool, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %5 = load %struct.buf*, %struct.buf** %b, align 8, !tbaa !1
  %pnt = getelementptr inbounds %struct.buf, %struct.buf* %5, i32 0, i32 0
  %6 = load i8*, i8** %pnt, align 8, !tbaa !17
  call void @free(i8* %6) #1
  %7 = load %struct.buf*, %struct.buf** %b, align 8, !tbaa !1
  %next = getelementptr inbounds %struct.buf, %struct.buf* %7, i32 0, i32 3
  %8 = load %struct.buf*, %struct.buf** %next, align 8, !tbaa !19
  store %struct.buf* %8, %struct.buf** %bn, align 8, !tbaa !1
  %9 = load %struct.buf*, %struct.buf** %b, align 8, !tbaa !1
  %10 = bitcast %struct.buf* %9 to i8*
  call void @free(i8* %10) #1
  %11 = load %struct.buf*, %struct.buf** %bn, align 8, !tbaa !1
  store %struct.buf* %11, %struct.buf** %b, align 8, !tbaa !1
  br label %while.cond

while.end:                                        ; preds = %while.cond
  %12 = bitcast %struct.buf** %bn to i8*
  call void @llvm.lifetime.end(i64 8, i8* %12) #1
  %13 = bitcast %struct.buf** %b to i8*
  call void @llvm.lifetime.end(i64 8, i8* %13) #1
  ret void
}

; Function Attrs: nounwind
declare void @llvm.lifetime.start(i64, i8* nocapture) #1

; Function Attrs: nounwind
declare void @free(i8*) #3

; Function Attrs: nounwind
declare void @llvm.lifetime.end(i64, i8* nocapture) #1

; Function Attrs: nounwind uwtable
define i32 @decodeMP3(%struct.mpstr* %mp, i8* %in, i32 %isize, i8* %out, i32 %osize, i32* %done) #0 {
entry:
  %retval = alloca i32, align 4
  %mp.addr = alloca %struct.mpstr*, align 8
  %in.addr = alloca i8*, align 8
  %isize.addr = alloca i32, align 4
  %out.addr = alloca i8*, align 8
  %osize.addr = alloca i32, align 4
  %done.addr = alloca i32*, align 8
  %len = alloca i32, align 4
  %cleanup.dest.slot = alloca i32
  %nlen = alloca i32, align 4
  %blen = alloca i32, align 4
  store %struct.mpstr* %mp, %struct.mpstr** %mp.addr, align 8, !tbaa !1
  store i8* %in, i8** %in.addr, align 8, !tbaa !1
  store i32 %isize, i32* %isize.addr, align 4, !tbaa !20
  store i8* %out, i8** %out.addr, align 8, !tbaa !1
  store i32 %osize, i32* %osize.addr, align 4, !tbaa !20
  store i32* %done, i32** %done.addr, align 8, !tbaa !1
  %0 = bitcast i32* %len to i8*
  call void @llvm.lifetime.start(i64 4, i8* %0) #1
  %1 = load %struct.mpstr*, %struct.mpstr** %mp.addr, align 8, !tbaa !1
  store %struct.mpstr* %1, %struct.mpstr** @gmp, align 8, !tbaa !1
  %2 = load i32, i32* %osize.addr, align 4, !tbaa !20
  %cmp = icmp slt i32 %2, 4608
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %3 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !tbaa !1
  %call = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %3, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i32 0, i32 0))
  store i32 -1, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end:                                           ; preds = %entry
  %4 = load i8*, i8** %in.addr, align 8, !tbaa !1
  %tobool = icmp ne i8* %4, null
  br i1 %tobool, label %if.then.1, label %if.end.6

if.then.1:                                        ; preds = %if.end
  %5 = load %struct.mpstr*, %struct.mpstr** %mp.addr, align 8, !tbaa !1
  %6 = load i8*, i8** %in.addr, align 8, !tbaa !1
  %7 = load i32, i32* %isize.addr, align 4, !tbaa !20
  %call2 = call %struct.buf* @addbuf(%struct.mpstr* %5, i8* %6, i32 %7)
  %cmp3 = icmp eq %struct.buf* %call2, null
  br i1 %cmp3, label %if.then.4, label %if.end.5

if.then.4:                                        ; preds = %if.then.1
  store i32 -1, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.5:                                         ; preds = %if.then.1
  br label %if.end.6

if.end.6:                                         ; preds = %if.end.5, %if.end
  %8 = load %struct.mpstr*, %struct.mpstr** %mp.addr, align 8, !tbaa !1
  %framesize = getelementptr inbounds %struct.mpstr, %struct.mpstr* %8, i32 0, i32 3
  %9 = load i32, i32* %framesize, align 4, !tbaa !5
  %cmp7 = icmp eq i32 %9, 0
  br i1 %cmp7, label %if.then.8, label %if.end.16

if.then.8:                                        ; preds = %if.end.6
  %10 = load %struct.mpstr*, %struct.mpstr** %mp.addr, align 8, !tbaa !1
  %bsize = getelementptr inbounds %struct.mpstr, %struct.mpstr* %10, i32 0, i32 2
  %11 = load i32, i32* %bsize, align 4, !tbaa !11
  %cmp9 = icmp slt i32 %11, 4
  br i1 %cmp9, label %if.then.10, label %if.end.11

if.then.10:                                       ; preds = %if.then.8
  store i32 1, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.11:                                        ; preds = %if.then.8
  %12 = load %struct.mpstr*, %struct.mpstr** %mp.addr, align 8, !tbaa !1
  call void @read_head(%struct.mpstr* %12)
  %13 = load %struct.mpstr*, %struct.mpstr** %mp.addr, align 8, !tbaa !1
  %fr = getelementptr inbounds %struct.mpstr, %struct.mpstr* %13, i32 0, i32 5
  %14 = load %struct.mpstr*, %struct.mpstr** %mp.addr, align 8, !tbaa !1
  %header = getelementptr inbounds %struct.mpstr, %struct.mpstr* %14, i32 0, i32 9
  %15 = load i64, i64* %header, align 8, !tbaa !21
  %call12 = call i32 @decode_header(%struct.frame* %fr, i64 %15)
  %16 = load %struct.mpstr*, %struct.mpstr** %mp.addr, align 8, !tbaa !1
  %fr13 = getelementptr inbounds %struct.mpstr, %struct.mpstr* %16, i32 0, i32 5
  %framesize14 = getelementptr inbounds %struct.frame, %struct.frame* %fr13, i32 0, i32 17
  %17 = load i32, i32* %framesize14, align 4, !tbaa !22
  %18 = load %struct.mpstr*, %struct.mpstr** %mp.addr, align 8, !tbaa !1
  %framesize15 = getelementptr inbounds %struct.mpstr, %struct.mpstr* %18, i32 0, i32 3
  store i32 %17, i32* %framesize15, align 4, !tbaa !5
  br label %if.end.16

if.end.16:                                        ; preds = %if.end.11, %if.end.6
  %19 = load %struct.mpstr*, %struct.mpstr** %mp.addr, align 8, !tbaa !1
  %fr17 = getelementptr inbounds %struct.mpstr, %struct.mpstr* %19, i32 0, i32 5
  %framesize18 = getelementptr inbounds %struct.frame, %struct.frame* %fr17, i32 0, i32 17
  %20 = load i32, i32* %framesize18, align 4, !tbaa !22
  %21 = load %struct.mpstr*, %struct.mpstr** %mp.addr, align 8, !tbaa !1
  %bsize19 = getelementptr inbounds %struct.mpstr, %struct.mpstr* %21, i32 0, i32 2
  %22 = load i32, i32* %bsize19, align 4, !tbaa !11
  %cmp20 = icmp sgt i32 %20, %22
  br i1 %cmp20, label %if.then.21, label %if.end.22

if.then.21:                                       ; preds = %if.end.16
  store i32 1, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.22:                                        ; preds = %if.end.16
  %23 = load %struct.mpstr*, %struct.mpstr** %mp.addr, align 8, !tbaa !1
  %bsnum = getelementptr inbounds %struct.mpstr, %struct.mpstr* %23, i32 0, i32 10
  %24 = load i32, i32* %bsnum, align 4, !tbaa !15
  %idxprom = sext i32 %24 to i64
  %25 = load %struct.mpstr*, %struct.mpstr** %mp.addr, align 8, !tbaa !1
  %bsspace = getelementptr inbounds %struct.mpstr, %struct.mpstr* %25, i32 0, i32 6
  %arrayidx = getelementptr inbounds [2 x [2304 x i8]], [2 x [2304 x i8]]* %bsspace, i32 0, i64 %idxprom
  %arraydecay = getelementptr inbounds [2304 x i8], [2304 x i8]* %arrayidx, i32 0, i32 0
  %add.ptr = getelementptr inbounds i8, i8* %arraydecay, i64 512
  store i8* %add.ptr, i8** @wordpointer, align 8, !tbaa !1
  %26 = load %struct.mpstr*, %struct.mpstr** %mp.addr, align 8, !tbaa !1
  %bsnum23 = getelementptr inbounds %struct.mpstr, %struct.mpstr* %26, i32 0, i32 10
  %27 = load i32, i32* %bsnum23, align 4, !tbaa !15
  %add = add nsw i32 %27, 1
  %and = and i32 %add, 1
  %28 = load %struct.mpstr*, %struct.mpstr** %mp.addr, align 8, !tbaa !1
  %bsnum24 = getelementptr inbounds %struct.mpstr, %struct.mpstr* %28, i32 0, i32 10
  store i32 %and, i32* %bsnum24, align 4, !tbaa !15
  store i32 0, i32* @bitindex, align 4, !tbaa !20
  store i32 0, i32* %len, align 4, !tbaa !20
  br label %while.cond

while.cond:                                       ; preds = %if.end.56, %if.end.22
  %29 = load i32, i32* %len, align 4, !tbaa !20
  %30 = load %struct.mpstr*, %struct.mpstr** %mp.addr, align 8, !tbaa !1
  %framesize25 = getelementptr inbounds %struct.mpstr, %struct.mpstr* %30, i32 0, i32 3
  %31 = load i32, i32* %framesize25, align 4, !tbaa !5
  %cmp26 = icmp slt i32 %29, %31
  br i1 %cmp26, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %32 = bitcast i32* %nlen to i8*
  call void @llvm.lifetime.start(i64 4, i8* %32) #1
  %33 = bitcast i32* %blen to i8*
  call void @llvm.lifetime.start(i64 4, i8* %33) #1
  %34 = load %struct.mpstr*, %struct.mpstr** %mp.addr, align 8, !tbaa !1
  %tail = getelementptr inbounds %struct.mpstr, %struct.mpstr* %34, i32 0, i32 1
  %35 = load %struct.buf*, %struct.buf** %tail, align 8, !tbaa !12
  %size = getelementptr inbounds %struct.buf, %struct.buf* %35, i32 0, i32 1
  %36 = load i64, i64* %size, align 8, !tbaa !23
  %37 = load %struct.mpstr*, %struct.mpstr** %mp.addr, align 8, !tbaa !1
  %tail27 = getelementptr inbounds %struct.mpstr, %struct.mpstr* %37, i32 0, i32 1
  %38 = load %struct.buf*, %struct.buf** %tail27, align 8, !tbaa !12
  %pos = getelementptr inbounds %struct.buf, %struct.buf* %38, i32 0, i32 2
  %39 = load i64, i64* %pos, align 8, !tbaa !24
  %sub = sub nsw i64 %36, %39
  %conv = trunc i64 %sub to i32
  store i32 %conv, i32* %blen, align 4, !tbaa !20
  %40 = load %struct.mpstr*, %struct.mpstr** %mp.addr, align 8, !tbaa !1
  %framesize28 = getelementptr inbounds %struct.mpstr, %struct.mpstr* %40, i32 0, i32 3
  %41 = load i32, i32* %framesize28, align 4, !tbaa !5
  %42 = load i32, i32* %len, align 4, !tbaa !20
  %sub29 = sub nsw i32 %41, %42
  %43 = load i32, i32* %blen, align 4, !tbaa !20
  %cmp30 = icmp sle i32 %sub29, %43
  br i1 %cmp30, label %if.then.32, label %if.else

if.then.32:                                       ; preds = %while.body
  %44 = load %struct.mpstr*, %struct.mpstr** %mp.addr, align 8, !tbaa !1
  %framesize33 = getelementptr inbounds %struct.mpstr, %struct.mpstr* %44, i32 0, i32 3
  %45 = load i32, i32* %framesize33, align 4, !tbaa !5
  %46 = load i32, i32* %len, align 4, !tbaa !20
  %sub34 = sub nsw i32 %45, %46
  store i32 %sub34, i32* %nlen, align 4, !tbaa !20
  br label %if.end.35

if.else:                                          ; preds = %while.body
  %47 = load i32, i32* %blen, align 4, !tbaa !20
  store i32 %47, i32* %nlen, align 4, !tbaa !20
  br label %if.end.35

if.end.35:                                        ; preds = %if.else, %if.then.32
  %48 = load i8*, i8** @wordpointer, align 8, !tbaa !1
  %49 = load i32, i32* %len, align 4, !tbaa !20
  %idx.ext = sext i32 %49 to i64
  %add.ptr36 = getelementptr inbounds i8, i8* %48, i64 %idx.ext
  %50 = load %struct.mpstr*, %struct.mpstr** %mp.addr, align 8, !tbaa !1
  %tail37 = getelementptr inbounds %struct.mpstr, %struct.mpstr* %50, i32 0, i32 1
  %51 = load %struct.buf*, %struct.buf** %tail37, align 8, !tbaa !12
  %pnt = getelementptr inbounds %struct.buf, %struct.buf* %51, i32 0, i32 0
  %52 = load i8*, i8** %pnt, align 8, !tbaa !17
  %53 = load %struct.mpstr*, %struct.mpstr** %mp.addr, align 8, !tbaa !1
  %tail38 = getelementptr inbounds %struct.mpstr, %struct.mpstr* %53, i32 0, i32 1
  %54 = load %struct.buf*, %struct.buf** %tail38, align 8, !tbaa !12
  %pos39 = getelementptr inbounds %struct.buf, %struct.buf* %54, i32 0, i32 2
  %55 = load i64, i64* %pos39, align 8, !tbaa !24
  %add.ptr40 = getelementptr inbounds i8, i8* %52, i64 %55
  %56 = load i32, i32* %nlen, align 4, !tbaa !20
  %conv41 = sext i32 %56 to i64
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %add.ptr36, i8* %add.ptr40, i64 %conv41, i32 1, i1 false)
  %57 = load i32, i32* %nlen, align 4, !tbaa !20
  %58 = load i32, i32* %len, align 4, !tbaa !20
  %add42 = add nsw i32 %58, %57
  store i32 %add42, i32* %len, align 4, !tbaa !20
  %59 = load i32, i32* %nlen, align 4, !tbaa !20
  %conv43 = sext i32 %59 to i64
  %60 = load %struct.mpstr*, %struct.mpstr** %mp.addr, align 8, !tbaa !1
  %tail44 = getelementptr inbounds %struct.mpstr, %struct.mpstr* %60, i32 0, i32 1
  %61 = load %struct.buf*, %struct.buf** %tail44, align 8, !tbaa !12
  %pos45 = getelementptr inbounds %struct.buf, %struct.buf* %61, i32 0, i32 2
  %62 = load i64, i64* %pos45, align 8, !tbaa !24
  %add46 = add nsw i64 %62, %conv43
  store i64 %add46, i64* %pos45, align 8, !tbaa !24
  %63 = load i32, i32* %nlen, align 4, !tbaa !20
  %64 = load %struct.mpstr*, %struct.mpstr** %mp.addr, align 8, !tbaa !1
  %bsize47 = getelementptr inbounds %struct.mpstr, %struct.mpstr* %64, i32 0, i32 2
  %65 = load i32, i32* %bsize47, align 4, !tbaa !11
  %sub48 = sub nsw i32 %65, %63
  store i32 %sub48, i32* %bsize47, align 4, !tbaa !11
  %66 = load %struct.mpstr*, %struct.mpstr** %mp.addr, align 8, !tbaa !1
  %tail49 = getelementptr inbounds %struct.mpstr, %struct.mpstr* %66, i32 0, i32 1
  %67 = load %struct.buf*, %struct.buf** %tail49, align 8, !tbaa !12
  %pos50 = getelementptr inbounds %struct.buf, %struct.buf* %67, i32 0, i32 2
  %68 = load i64, i64* %pos50, align 8, !tbaa !24
  %69 = load %struct.mpstr*, %struct.mpstr** %mp.addr, align 8, !tbaa !1
  %tail51 = getelementptr inbounds %struct.mpstr, %struct.mpstr* %69, i32 0, i32 1
  %70 = load %struct.buf*, %struct.buf** %tail51, align 8, !tbaa !12
  %size52 = getelementptr inbounds %struct.buf, %struct.buf* %70, i32 0, i32 1
  %71 = load i64, i64* %size52, align 8, !tbaa !23
  %cmp53 = icmp eq i64 %68, %71
  br i1 %cmp53, label %if.then.55, label %if.end.56

if.then.55:                                       ; preds = %if.end.35
  %72 = load %struct.mpstr*, %struct.mpstr** %mp.addr, align 8, !tbaa !1
  call void @remove_buf(%struct.mpstr* %72)
  br label %if.end.56

if.end.56:                                        ; preds = %if.then.55, %if.end.35
  %73 = bitcast i32* %blen to i8*
  call void @llvm.lifetime.end(i64 4, i8* %73) #1
  %74 = bitcast i32* %nlen to i8*
  call void @llvm.lifetime.end(i64 4, i8* %74) #1
  br label %while.cond

while.end:                                        ; preds = %while.cond
  %75 = load i32*, i32** %done.addr, align 8, !tbaa !1
  store i32 0, i32* %75, align 4, !tbaa !20
  %76 = load %struct.mpstr*, %struct.mpstr** %mp.addr, align 8, !tbaa !1
  %fr57 = getelementptr inbounds %struct.mpstr, %struct.mpstr* %76, i32 0, i32 5
  %error_protection = getelementptr inbounds %struct.frame, %struct.frame* %fr57, i32 0, i32 7
  %77 = load i32, i32* %error_protection, align 4, !tbaa !25
  %tobool58 = icmp ne i32 %77, 0
  br i1 %tobool58, label %if.then.59, label %if.end.61

if.then.59:                                       ; preds = %while.end
  %call60 = call i32 @getbits(i32 16)
  br label %if.end.61

if.end.61:                                        ; preds = %if.then.59, %while.end
  %78 = load %struct.mpstr*, %struct.mpstr** %mp.addr, align 8, !tbaa !1
  %fr62 = getelementptr inbounds %struct.mpstr, %struct.mpstr* %78, i32 0, i32 5
  %79 = load i8*, i8** %out.addr, align 8, !tbaa !1
  %80 = load i32*, i32** %done.addr, align 8, !tbaa !1
  %call63 = call i32 @do_layer3(%struct.frame* %fr62, i8* %79, i32* %80)
  %81 = load %struct.mpstr*, %struct.mpstr** %mp.addr, align 8, !tbaa !1
  %framesize64 = getelementptr inbounds %struct.mpstr, %struct.mpstr* %81, i32 0, i32 3
  %82 = load i32, i32* %framesize64, align 4, !tbaa !5
  %83 = load %struct.mpstr*, %struct.mpstr** %mp.addr, align 8, !tbaa !1
  %fsizeold = getelementptr inbounds %struct.mpstr, %struct.mpstr* %83, i32 0, i32 4
  store i32 %82, i32* %fsizeold, align 4, !tbaa !10
  %84 = load %struct.mpstr*, %struct.mpstr** %mp.addr, align 8, !tbaa !1
  %framesize65 = getelementptr inbounds %struct.mpstr, %struct.mpstr* %84, i32 0, i32 3
  store i32 0, i32* %framesize65, align 4, !tbaa !5
  store i32 0, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %if.end.61, %if.then.21, %if.then.10, %if.then.4, %if.then
  %85 = bitcast i32* %len to i8*
  call void @llvm.lifetime.end(i64 4, i8* %85) #1
  %86 = load i32, i32* %retval
  ret i32 %86
}

declare i32 @fprintf(%struct._IO_FILE*, i8*, ...) #2

; Function Attrs: nounwind uwtable
define internal %struct.buf* @addbuf(%struct.mpstr* %mp, i8* %buf, i32 %size) #0 {
entry:
  %retval = alloca %struct.buf*, align 8
  %mp.addr = alloca %struct.mpstr*, align 8
  %buf.addr = alloca i8*, align 8
  %size.addr = alloca i32, align 4
  %nbuf = alloca %struct.buf*, align 8
  %cleanup.dest.slot = alloca i32
  store %struct.mpstr* %mp, %struct.mpstr** %mp.addr, align 8, !tbaa !1
  store i8* %buf, i8** %buf.addr, align 8, !tbaa !1
  store i32 %size, i32* %size.addr, align 4, !tbaa !20
  %0 = bitcast %struct.buf** %nbuf to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #1
  %call = call noalias i8* @malloc(i64 40) #1
  %1 = bitcast i8* %call to %struct.buf*
  store %struct.buf* %1, %struct.buf** %nbuf, align 8, !tbaa !1
  %2 = load %struct.buf*, %struct.buf** %nbuf, align 8, !tbaa !1
  %tobool = icmp ne %struct.buf* %2, null
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  %3 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !tbaa !1
  %call1 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %3, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.2, i32 0, i32 0))
  store %struct.buf* null, %struct.buf** %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end:                                           ; preds = %entry
  %4 = load i32, i32* %size.addr, align 4, !tbaa !20
  %conv = sext i32 %4 to i64
  %call2 = call noalias i8* @malloc(i64 %conv) #1
  %5 = load %struct.buf*, %struct.buf** %nbuf, align 8, !tbaa !1
  %pnt = getelementptr inbounds %struct.buf, %struct.buf* %5, i32 0, i32 0
  store i8* %call2, i8** %pnt, align 8, !tbaa !17
  %6 = load %struct.buf*, %struct.buf** %nbuf, align 8, !tbaa !1
  %pnt3 = getelementptr inbounds %struct.buf, %struct.buf* %6, i32 0, i32 0
  %7 = load i8*, i8** %pnt3, align 8, !tbaa !17
  %tobool4 = icmp ne i8* %7, null
  br i1 %tobool4, label %if.end.6, label %if.then.5

if.then.5:                                        ; preds = %if.end
  %8 = load %struct.buf*, %struct.buf** %nbuf, align 8, !tbaa !1
  %9 = bitcast %struct.buf* %8 to i8*
  call void @free(i8* %9) #1
  store %struct.buf* null, %struct.buf** %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.6:                                         ; preds = %if.end
  %10 = load i32, i32* %size.addr, align 4, !tbaa !20
  %conv7 = sext i32 %10 to i64
  %11 = load %struct.buf*, %struct.buf** %nbuf, align 8, !tbaa !1
  %size8 = getelementptr inbounds %struct.buf, %struct.buf* %11, i32 0, i32 1
  store i64 %conv7, i64* %size8, align 8, !tbaa !23
  %12 = load %struct.buf*, %struct.buf** %nbuf, align 8, !tbaa !1
  %pnt9 = getelementptr inbounds %struct.buf, %struct.buf* %12, i32 0, i32 0
  %13 = load i8*, i8** %pnt9, align 8, !tbaa !17
  %14 = load i8*, i8** %buf.addr, align 8, !tbaa !1
  %15 = load i32, i32* %size.addr, align 4, !tbaa !20
  %conv10 = sext i32 %15 to i64
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %13, i8* %14, i64 %conv10, i32 1, i1 false)
  %16 = load %struct.buf*, %struct.buf** %nbuf, align 8, !tbaa !1
  %next = getelementptr inbounds %struct.buf, %struct.buf* %16, i32 0, i32 3
  store %struct.buf* null, %struct.buf** %next, align 8, !tbaa !19
  %17 = load %struct.mpstr*, %struct.mpstr** %mp.addr, align 8, !tbaa !1
  %head = getelementptr inbounds %struct.mpstr, %struct.mpstr* %17, i32 0, i32 0
  %18 = load %struct.buf*, %struct.buf** %head, align 8, !tbaa !13
  %19 = load %struct.buf*, %struct.buf** %nbuf, align 8, !tbaa !1
  %prev = getelementptr inbounds %struct.buf, %struct.buf* %19, i32 0, i32 4
  store %struct.buf* %18, %struct.buf** %prev, align 8, !tbaa !26
  %20 = load %struct.buf*, %struct.buf** %nbuf, align 8, !tbaa !1
  %pos = getelementptr inbounds %struct.buf, %struct.buf* %20, i32 0, i32 2
  store i64 0, i64* %pos, align 8, !tbaa !24
  %21 = load %struct.mpstr*, %struct.mpstr** %mp.addr, align 8, !tbaa !1
  %tail = getelementptr inbounds %struct.mpstr, %struct.mpstr* %21, i32 0, i32 1
  %22 = load %struct.buf*, %struct.buf** %tail, align 8, !tbaa !12
  %tobool11 = icmp ne %struct.buf* %22, null
  br i1 %tobool11, label %if.else, label %if.then.12

if.then.12:                                       ; preds = %if.end.6
  %23 = load %struct.buf*, %struct.buf** %nbuf, align 8, !tbaa !1
  %24 = load %struct.mpstr*, %struct.mpstr** %mp.addr, align 8, !tbaa !1
  %tail13 = getelementptr inbounds %struct.mpstr, %struct.mpstr* %24, i32 0, i32 1
  store %struct.buf* %23, %struct.buf** %tail13, align 8, !tbaa !12
  br label %if.end.16

if.else:                                          ; preds = %if.end.6
  %25 = load %struct.buf*, %struct.buf** %nbuf, align 8, !tbaa !1
  %26 = load %struct.mpstr*, %struct.mpstr** %mp.addr, align 8, !tbaa !1
  %head14 = getelementptr inbounds %struct.mpstr, %struct.mpstr* %26, i32 0, i32 0
  %27 = load %struct.buf*, %struct.buf** %head14, align 8, !tbaa !13
  %next15 = getelementptr inbounds %struct.buf, %struct.buf* %27, i32 0, i32 3
  store %struct.buf* %25, %struct.buf** %next15, align 8, !tbaa !19
  br label %if.end.16

if.end.16:                                        ; preds = %if.else, %if.then.12
  %28 = load %struct.buf*, %struct.buf** %nbuf, align 8, !tbaa !1
  %29 = load %struct.mpstr*, %struct.mpstr** %mp.addr, align 8, !tbaa !1
  %head17 = getelementptr inbounds %struct.mpstr, %struct.mpstr* %29, i32 0, i32 0
  store %struct.buf* %28, %struct.buf** %head17, align 8, !tbaa !13
  %30 = load i32, i32* %size.addr, align 4, !tbaa !20
  %31 = load %struct.mpstr*, %struct.mpstr** %mp.addr, align 8, !tbaa !1
  %bsize = getelementptr inbounds %struct.mpstr, %struct.mpstr* %31, i32 0, i32 2
  %32 = load i32, i32* %bsize, align 4, !tbaa !11
  %add = add nsw i32 %32, %30
  store i32 %add, i32* %bsize, align 4, !tbaa !11
  %33 = load %struct.buf*, %struct.buf** %nbuf, align 8, !tbaa !1
  store %struct.buf* %33, %struct.buf** %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %if.end.16, %if.then.5, %if.then
  %34 = bitcast %struct.buf** %nbuf to i8*
  call void @llvm.lifetime.end(i64 8, i8* %34) #1
  %35 = load %struct.buf*, %struct.buf** %retval
  ret %struct.buf* %35
}

; Function Attrs: nounwind uwtable
define internal void @read_head(%struct.mpstr* %mp) #0 {
entry:
  %mp.addr = alloca %struct.mpstr*, align 8
  %head = alloca i64, align 8
  store %struct.mpstr* %mp, %struct.mpstr** %mp.addr, align 8, !tbaa !1
  %0 = bitcast i64* %head to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #1
  %1 = load %struct.mpstr*, %struct.mpstr** %mp.addr, align 8, !tbaa !1
  %call = call i32 @read_buf_byte(%struct.mpstr* %1)
  %conv = sext i32 %call to i64
  store i64 %conv, i64* %head, align 8, !tbaa !27
  %2 = load i64, i64* %head, align 8, !tbaa !27
  %shl = shl i64 %2, 8
  store i64 %shl, i64* %head, align 8, !tbaa !27
  %3 = load %struct.mpstr*, %struct.mpstr** %mp.addr, align 8, !tbaa !1
  %call1 = call i32 @read_buf_byte(%struct.mpstr* %3)
  %conv2 = sext i32 %call1 to i64
  %4 = load i64, i64* %head, align 8, !tbaa !27
  %or = or i64 %4, %conv2
  store i64 %or, i64* %head, align 8, !tbaa !27
  %5 = load i64, i64* %head, align 8, !tbaa !27
  %shl3 = shl i64 %5, 8
  store i64 %shl3, i64* %head, align 8, !tbaa !27
  %6 = load %struct.mpstr*, %struct.mpstr** %mp.addr, align 8, !tbaa !1
  %call4 = call i32 @read_buf_byte(%struct.mpstr* %6)
  %conv5 = sext i32 %call4 to i64
  %7 = load i64, i64* %head, align 8, !tbaa !27
  %or6 = or i64 %7, %conv5
  store i64 %or6, i64* %head, align 8, !tbaa !27
  %8 = load i64, i64* %head, align 8, !tbaa !27
  %shl7 = shl i64 %8, 8
  store i64 %shl7, i64* %head, align 8, !tbaa !27
  %9 = load %struct.mpstr*, %struct.mpstr** %mp.addr, align 8, !tbaa !1
  %call8 = call i32 @read_buf_byte(%struct.mpstr* %9)
  %conv9 = sext i32 %call8 to i64
  %10 = load i64, i64* %head, align 8, !tbaa !27
  %or10 = or i64 %10, %conv9
  store i64 %or10, i64* %head, align 8, !tbaa !27
  %11 = load i64, i64* %head, align 8, !tbaa !27
  %12 = load %struct.mpstr*, %struct.mpstr** %mp.addr, align 8, !tbaa !1
  %header = getelementptr inbounds %struct.mpstr, %struct.mpstr* %12, i32 0, i32 9
  store i64 %11, i64* %header, align 8, !tbaa !21
  %13 = bitcast i64* %head to i8*
  call void @llvm.lifetime.end(i64 8, i8* %13) #1
  ret void
}

declare i32 @decode_header(%struct.frame*, i64) #2

; Function Attrs: nounwind
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* nocapture, i8* nocapture readonly, i64, i32, i1) #1

; Function Attrs: nounwind uwtable
define internal void @remove_buf(%struct.mpstr* %mp) #0 {
entry:
  %mp.addr = alloca %struct.mpstr*, align 8
  %buf = alloca %struct.buf*, align 8
  store %struct.mpstr* %mp, %struct.mpstr** %mp.addr, align 8, !tbaa !1
  %0 = bitcast %struct.buf** %buf to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #1
  %1 = load %struct.mpstr*, %struct.mpstr** %mp.addr, align 8, !tbaa !1
  %tail = getelementptr inbounds %struct.mpstr, %struct.mpstr* %1, i32 0, i32 1
  %2 = load %struct.buf*, %struct.buf** %tail, align 8, !tbaa !12
  store %struct.buf* %2, %struct.buf** %buf, align 8, !tbaa !1
  %3 = load %struct.buf*, %struct.buf** %buf, align 8, !tbaa !1
  %next = getelementptr inbounds %struct.buf, %struct.buf* %3, i32 0, i32 3
  %4 = load %struct.buf*, %struct.buf** %next, align 8, !tbaa !19
  %5 = load %struct.mpstr*, %struct.mpstr** %mp.addr, align 8, !tbaa !1
  %tail1 = getelementptr inbounds %struct.mpstr, %struct.mpstr* %5, i32 0, i32 1
  store %struct.buf* %4, %struct.buf** %tail1, align 8, !tbaa !12
  %6 = load %struct.mpstr*, %struct.mpstr** %mp.addr, align 8, !tbaa !1
  %tail2 = getelementptr inbounds %struct.mpstr, %struct.mpstr* %6, i32 0, i32 1
  %7 = load %struct.buf*, %struct.buf** %tail2, align 8, !tbaa !12
  %tobool = icmp ne %struct.buf* %7, null
  br i1 %tobool, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %8 = load %struct.mpstr*, %struct.mpstr** %mp.addr, align 8, !tbaa !1
  %tail3 = getelementptr inbounds %struct.mpstr, %struct.mpstr* %8, i32 0, i32 1
  %9 = load %struct.buf*, %struct.buf** %tail3, align 8, !tbaa !12
  %prev = getelementptr inbounds %struct.buf, %struct.buf* %9, i32 0, i32 4
  store %struct.buf* null, %struct.buf** %prev, align 8, !tbaa !26
  br label %if.end

if.else:                                          ; preds = %entry
  %10 = load %struct.mpstr*, %struct.mpstr** %mp.addr, align 8, !tbaa !1
  %head = getelementptr inbounds %struct.mpstr, %struct.mpstr* %10, i32 0, i32 0
  store %struct.buf* null, %struct.buf** %head, align 8, !tbaa !13
  %11 = load %struct.mpstr*, %struct.mpstr** %mp.addr, align 8, !tbaa !1
  %tail4 = getelementptr inbounds %struct.mpstr, %struct.mpstr* %11, i32 0, i32 1
  store %struct.buf* null, %struct.buf** %tail4, align 8, !tbaa !12
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %12 = load %struct.buf*, %struct.buf** %buf, align 8, !tbaa !1
  %pnt = getelementptr inbounds %struct.buf, %struct.buf* %12, i32 0, i32 0
  %13 = load i8*, i8** %pnt, align 8, !tbaa !17
  call void @free(i8* %13) #1
  %14 = load %struct.buf*, %struct.buf** %buf, align 8, !tbaa !1
  %15 = bitcast %struct.buf* %14 to i8*
  call void @free(i8* %15) #1
  %16 = bitcast %struct.buf** %buf to i8*
  call void @llvm.lifetime.end(i64 8, i8* %16) #1
  ret void
}

declare i32 @getbits(i32) #2

declare i32 @do_layer3(%struct.frame*, i8*, i32*) #2

; Function Attrs: nounwind uwtable
define i32 @set_pointer(i64 %backstep) #0 {
entry:
  %retval = alloca i32, align 4
  %backstep.addr = alloca i64, align 8
  %bsbufold = alloca i8*, align 8
  %cleanup.dest.slot = alloca i32
  store i64 %backstep, i64* %backstep.addr, align 8, !tbaa !27
  %0 = bitcast i8** %bsbufold to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #1
  %1 = load %struct.mpstr*, %struct.mpstr** @gmp, align 8, !tbaa !1
  %fsizeold = getelementptr inbounds %struct.mpstr, %struct.mpstr* %1, i32 0, i32 4
  %2 = load i32, i32* %fsizeold, align 4, !tbaa !10
  %cmp = icmp slt i32 %2, 0
  br i1 %cmp, label %land.lhs.true, label %if.end

land.lhs.true:                                    ; preds = %entry
  %3 = load i64, i64* %backstep.addr, align 8, !tbaa !27
  %cmp1 = icmp sgt i64 %3, 0
  br i1 %cmp1, label %if.then, label %if.end

if.then:                                          ; preds = %land.lhs.true
  %4 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !tbaa !1
  %5 = load i64, i64* %backstep.addr, align 8, !tbaa !27
  %call = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %4, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.1, i32 0, i32 0), i64 %5)
  store i32 -1, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end:                                           ; preds = %land.lhs.true, %entry
  %6 = load %struct.mpstr*, %struct.mpstr** @gmp, align 8, !tbaa !1
  %bsnum = getelementptr inbounds %struct.mpstr, %struct.mpstr* %6, i32 0, i32 10
  %7 = load i32, i32* %bsnum, align 4, !tbaa !15
  %idxprom = sext i32 %7 to i64
  %8 = load %struct.mpstr*, %struct.mpstr** @gmp, align 8, !tbaa !1
  %bsspace = getelementptr inbounds %struct.mpstr, %struct.mpstr* %8, i32 0, i32 6
  %arrayidx = getelementptr inbounds [2 x [2304 x i8]], [2 x [2304 x i8]]* %bsspace, i32 0, i64 %idxprom
  %arraydecay = getelementptr inbounds [2304 x i8], [2304 x i8]* %arrayidx, i32 0, i32 0
  %add.ptr = getelementptr inbounds i8, i8* %arraydecay, i64 512
  store i8* %add.ptr, i8** %bsbufold, align 8, !tbaa !1
  %9 = load i64, i64* %backstep.addr, align 8, !tbaa !27
  %10 = load i8*, i8** @wordpointer, align 8, !tbaa !1
  %idx.neg = sub i64 0, %9
  %add.ptr2 = getelementptr inbounds i8, i8* %10, i64 %idx.neg
  store i8* %add.ptr2, i8** @wordpointer, align 8, !tbaa !1
  %11 = load i64, i64* %backstep.addr, align 8, !tbaa !27
  %tobool = icmp ne i64 %11, 0
  br i1 %tobool, label %if.then.3, label %if.end.8

if.then.3:                                        ; preds = %if.end
  %12 = load i8*, i8** @wordpointer, align 8, !tbaa !1
  %13 = load i8*, i8** %bsbufold, align 8, !tbaa !1
  %14 = load %struct.mpstr*, %struct.mpstr** @gmp, align 8, !tbaa !1
  %fsizeold4 = getelementptr inbounds %struct.mpstr, %struct.mpstr* %14, i32 0, i32 4
  %15 = load i32, i32* %fsizeold4, align 4, !tbaa !10
  %idx.ext = sext i32 %15 to i64
  %add.ptr5 = getelementptr inbounds i8, i8* %13, i64 %idx.ext
  %16 = load i64, i64* %backstep.addr, align 8, !tbaa !27
  %idx.neg6 = sub i64 0, %16
  %add.ptr7 = getelementptr inbounds i8, i8* %add.ptr5, i64 %idx.neg6
  %17 = load i64, i64* %backstep.addr, align 8, !tbaa !27
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %12, i8* %add.ptr7, i64 %17, i32 1, i1 false)
  br label %if.end.8

if.end.8:                                         ; preds = %if.then.3, %if.end
  store i32 0, i32* @bitindex, align 4, !tbaa !20
  store i32 0, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %if.end.8, %if.then
  %18 = bitcast i8** %bsbufold to i8*
  call void @llvm.lifetime.end(i64 8, i8* %18) #1
  %19 = load i32, i32* %retval
  ret i32 %19
}

; Function Attrs: nounwind
declare noalias i8* @malloc(i64) #3

; Function Attrs: nounwind uwtable
define internal i32 @read_buf_byte(%struct.mpstr* %mp) #0 {
entry:
  %mp.addr = alloca %struct.mpstr*, align 8
  %b = alloca i32, align 4
  %pos = alloca i32, align 4
  store %struct.mpstr* %mp, %struct.mpstr** %mp.addr, align 8, !tbaa !1
  %0 = bitcast i32* %b to i8*
  call void @llvm.lifetime.start(i64 4, i8* %0) #1
  %1 = bitcast i32* %pos to i8*
  call void @llvm.lifetime.start(i64 4, i8* %1) #1
  %2 = load %struct.mpstr*, %struct.mpstr** %mp.addr, align 8, !tbaa !1
  %tail = getelementptr inbounds %struct.mpstr, %struct.mpstr* %2, i32 0, i32 1
  %3 = load %struct.buf*, %struct.buf** %tail, align 8, !tbaa !12
  %pos1 = getelementptr inbounds %struct.buf, %struct.buf* %3, i32 0, i32 2
  %4 = load i64, i64* %pos1, align 8, !tbaa !24
  %conv = trunc i64 %4 to i32
  store i32 %conv, i32* %pos, align 4, !tbaa !20
  br label %while.cond

while.cond:                                       ; preds = %if.end, %entry
  %5 = load i32, i32* %pos, align 4, !tbaa !20
  %conv2 = sext i32 %5 to i64
  %6 = load %struct.mpstr*, %struct.mpstr** %mp.addr, align 8, !tbaa !1
  %tail3 = getelementptr inbounds %struct.mpstr, %struct.mpstr* %6, i32 0, i32 1
  %7 = load %struct.buf*, %struct.buf** %tail3, align 8, !tbaa !12
  %size = getelementptr inbounds %struct.buf, %struct.buf* %7, i32 0, i32 1
  %8 = load i64, i64* %size, align 8, !tbaa !23
  %cmp = icmp sge i64 %conv2, %8
  br i1 %cmp, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %9 = load %struct.mpstr*, %struct.mpstr** %mp.addr, align 8, !tbaa !1
  call void @remove_buf(%struct.mpstr* %9)
  %10 = load %struct.mpstr*, %struct.mpstr** %mp.addr, align 8, !tbaa !1
  %tail5 = getelementptr inbounds %struct.mpstr, %struct.mpstr* %10, i32 0, i32 1
  %11 = load %struct.buf*, %struct.buf** %tail5, align 8, !tbaa !12
  %pos6 = getelementptr inbounds %struct.buf, %struct.buf* %11, i32 0, i32 2
  %12 = load i64, i64* %pos6, align 8, !tbaa !24
  %conv7 = trunc i64 %12 to i32
  store i32 %conv7, i32* %pos, align 4, !tbaa !20
  %13 = load %struct.mpstr*, %struct.mpstr** %mp.addr, align 8, !tbaa !1
  %tail8 = getelementptr inbounds %struct.mpstr, %struct.mpstr* %13, i32 0, i32 1
  %14 = load %struct.buf*, %struct.buf** %tail8, align 8, !tbaa !12
  %tobool = icmp ne %struct.buf* %14, null
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %while.body
  %15 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !tbaa !1
  %call = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %15, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.3, i32 0, i32 0))
  call void @exit(i32 1) #5
  unreachable

if.end:                                           ; preds = %while.body
  br label %while.cond

while.end:                                        ; preds = %while.cond
  %16 = load i32, i32* %pos, align 4, !tbaa !20
  %idxprom = sext i32 %16 to i64
  %17 = load %struct.mpstr*, %struct.mpstr** %mp.addr, align 8, !tbaa !1
  %tail9 = getelementptr inbounds %struct.mpstr, %struct.mpstr* %17, i32 0, i32 1
  %18 = load %struct.buf*, %struct.buf** %tail9, align 8, !tbaa !12
  %pnt = getelementptr inbounds %struct.buf, %struct.buf* %18, i32 0, i32 0
  %19 = load i8*, i8** %pnt, align 8, !tbaa !17
  %arrayidx = getelementptr inbounds i8, i8* %19, i64 %idxprom
  %20 = load i8, i8* %arrayidx, align 1, !tbaa !28
  %conv10 = zext i8 %20 to i32
  store i32 %conv10, i32* %b, align 4, !tbaa !20
  %21 = load %struct.mpstr*, %struct.mpstr** %mp.addr, align 8, !tbaa !1
  %bsize = getelementptr inbounds %struct.mpstr, %struct.mpstr* %21, i32 0, i32 2
  %22 = load i32, i32* %bsize, align 4, !tbaa !11
  %dec = add nsw i32 %22, -1
  store i32 %dec, i32* %bsize, align 4, !tbaa !11
  %23 = load %struct.mpstr*, %struct.mpstr** %mp.addr, align 8, !tbaa !1
  %tail11 = getelementptr inbounds %struct.mpstr, %struct.mpstr* %23, i32 0, i32 1
  %24 = load %struct.buf*, %struct.buf** %tail11, align 8, !tbaa !12
  %pos12 = getelementptr inbounds %struct.buf, %struct.buf* %24, i32 0, i32 2
  %25 = load i64, i64* %pos12, align 8, !tbaa !24
  %inc = add nsw i64 %25, 1
  store i64 %inc, i64* %pos12, align 8, !tbaa !24
  %26 = load i32, i32* %b, align 4, !tbaa !20
  %27 = bitcast i32* %pos to i8*
  call void @llvm.lifetime.end(i64 4, i8* %27) #1
  %28 = bitcast i32* %b to i8*
  call void @llvm.lifetime.end(i64 4, i8* %28) #1
  ret i32 %26
}

; Function Attrs: noreturn nounwind
declare void @exit(i32) #4

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { noreturn nounwind "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #5 = { noreturn nounwind }

!llvm.ident = !{!0}

!0 = !{!"clang version 3.7.0 (tags/RELEASE_370/final)"}
!1 = !{!2, !2, i64 0}
!2 = !{!"any pointer", !3, i64 0}
!3 = !{!"omnipotent char", !4, i64 0}
!4 = !{!"Simple C/C++ TBAA"}
!5 = !{!6, !7, i64 20}
!6 = !{!"mpstr", !2, i64 0, !2, i64 8, !7, i64 16, !7, i64 20, !7, i64 24, !8, i64 28, !3, i64 100, !3, i64 4712, !3, i64 23144, !9, i64 23152, !7, i64 23160, !3, i64 23168, !7, i64 31872}
!7 = !{!"int", !3, i64 0}
!8 = !{!"frame", !7, i64 0, !7, i64 4, !7, i64 8, !7, i64 12, !7, i64 16, !7, i64 20, !7, i64 24, !7, i64 28, !7, i64 32, !7, i64 36, !7, i64 40, !7, i64 44, !7, i64 48, !7, i64 52, !7, i64 56, !7, i64 60, !7, i64 64, !7, i64 68}
!9 = !{!"long", !3, i64 0}
!10 = !{!6, !7, i64 24}
!11 = !{!6, !7, i64 16}
!12 = !{!6, !2, i64 8}
!13 = !{!6, !2, i64 0}
!14 = !{!6, !7, i64 36}
!15 = !{!6, !7, i64 23160}
!16 = !{!6, !7, i64 31872}
!17 = !{!18, !2, i64 0}
!18 = !{!"buf", !2, i64 0, !9, i64 8, !9, i64 16, !2, i64 24, !2, i64 32}
!19 = !{!18, !2, i64 24}
!20 = !{!7, !7, i64 0}
!21 = !{!6, !9, i64 23152}
!22 = !{!6, !7, i64 96}
!23 = !{!18, !9, i64 8}
!24 = !{!18, !9, i64 16}
!25 = !{!6, !7, i64 56}
!26 = !{!18, !2, i64 32}
!27 = !{!9, !9, i64 0}
!28 = !{!3, !3, i64 0}
