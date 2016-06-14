; ModuleID = 'bzlib.c'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct._IO_FILE = type { i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, %struct._IO_marker*, %struct._IO_FILE*, i32, i32, i64, i16, i8, [1 x i8], i8*, i64, i8*, i8*, i8*, i8*, i64, i32, [20 x i8] }
%struct._IO_marker = type { %struct._IO_marker*, %struct._IO_FILE*, i32 }
%struct.bz_stream = type { i8*, i32, i32, i32, i8*, i32, i32, i32, i8*, i8* (i8*, i32, i32)*, void (i8*, i8*)*, i8* }
%struct.EState = type { %struct.bz_stream*, i32, i32, i32, i32*, i32*, i32*, i32, i32*, i8*, i16*, i8*, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [256 x i8], [256 x i8], i32, i32, i32, i32, i32, i32, i32, i32, [258 x i32], [18002 x i8], [18002 x i8], [6 x [258 x i8]], [6 x [258 x i32]], [6 x [258 x i32]], [258 x [4 x i32]] }
%struct.DState = type { %struct.bz_stream*, i32, i8, i32, i8, i32, i32, i32, i32, i32, i8, i32, i32, i32, i32, i32, [256 x i32], i32, [257 x i32], [257 x i32], i32*, i16*, i8*, i32, i32, i32, i32, i32, [256 x i8], [16 x i8], [256 x i8], [4096 x i8], [16 x i32], [18002 x i8], [18002 x i8], [6 x [258 x i8]], [6 x [258 x i32]], [6 x [258 x i32]], [6 x [258 x i32]], [6 x i32], i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32*, i32*, i32* }
%struct.bzFile = type { i32, [5000 x i8], i32, i8, %struct.bz_stream, i32, i8 }

@stderr = external global %struct._IO_FILE*, align 8
@.str = private unnamed_addr constant [269 x i8] c"\0A\0Abzip2/libbzip2: internal error number %d.\0AThis may be a bug in bzip2/libbzip2, %s.\0AIt may also be a bug in your compiler.  Please do not bother the\0Aoriginal author of bzip2 with a bug report for this.  He\0Adoesn't know anything about bzip2 as it appears in CPU2006.\0A\0A\00", align 1
@.str.1 = private unnamed_addr constant [1057 x i8] c"\0A*** A special note about internal error number 1007 ***\0A\0AExperience suggests that a common cause of i.e. 1007\0Ais unreliable memory or other hardware.  The 1007 assertion\0Ajust happens to cross-check the results of huge numbers of\0Amemory reads/writes, and so acts (unintendedly) as a stress\0Atest of your memory system.\0A\0AI suggest the following: try compressing the file again,\0Apossibly monitoring progress in detail with the -vv flag.\0A\0A* If the error cannot be reproduced, and/or happens at different\0A  points in compression, you may have a flaky memory system.\0A  Try a memory-test program.  I have used Memtest86\0A  (www.memtest86.com).  At the time of writing it is free (GPLd).\0A  Memtest86 tests memory much more thorougly than your BIOSs\0A  power-on test, and may find failures that the BIOS doesn't.\0A\0A* If the error can be repeatably reproduced, this is a bug in\0A  bzip2, and I would very much like to hear about it.  Please\0A  let me know, and, ideally, save a copy of the file causing the\0A  problem -- without which I will be unable to investigate it.\0A\0A\00", align 1
@.str.2 = private unnamed_addr constant [18 x i8] c" {0x%08x, 0x%08x}\00", align 1
@.str.3 = private unnamed_addr constant [2 x i8] c"]\00", align 1
@.str.4 = private unnamed_addr constant [55 x i8] c"\0A    combined CRCs: stored = 0x%08x, computed = 0x%08x\00", align 1
@.str.5 = private unnamed_addr constant [19 x i8] c"1.0.3, 15-Feb-2005\00", align 1
@bzerrorstrings = internal global [16 x i8*] [i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.10, i32 0, i32 0), i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.11, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.12, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.13, i32 0, i32 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.14, i32 0, i32 0), i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.15, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.16, i32 0, i32 0), i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.17, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.18, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.19, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.20, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.20, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.20, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.20, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.20, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.20, i32 0, i32 0)], align 16
@BZ2_crc32Table = external global [256 x i32], align 16
@BZ2_rNums = external global [512 x i32], align 16
@.str.6 = private unnamed_addr constant [2 x i8] c"w\00", align 1
@.str.7 = private unnamed_addr constant [2 x i8] c"r\00", align 1
@.str.8 = private unnamed_addr constant [2 x i8] c"b\00", align 1
@.str.9 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.10 = private unnamed_addr constant [3 x i8] c"OK\00", align 1
@.str.11 = private unnamed_addr constant [15 x i8] c"SEQUENCE_ERROR\00", align 1
@.str.12 = private unnamed_addr constant [12 x i8] c"PARAM_ERROR\00", align 1
@.str.13 = private unnamed_addr constant [10 x i8] c"MEM_ERROR\00", align 1
@.str.14 = private unnamed_addr constant [11 x i8] c"DATA_ERROR\00", align 1
@.str.15 = private unnamed_addr constant [17 x i8] c"DATA_ERROR_MAGIC\00", align 1
@.str.16 = private unnamed_addr constant [9 x i8] c"IO_ERROR\00", align 1
@.str.17 = private unnamed_addr constant [15 x i8] c"UNEXPECTED_EOF\00", align 1
@.str.18 = private unnamed_addr constant [13 x i8] c"OUTBUFF_FULL\00", align 1
@.str.19 = private unnamed_addr constant [13 x i8] c"CONFIG_ERROR\00", align 1
@.str.20 = private unnamed_addr constant [4 x i8] c"???\00", align 1

; Function Attrs: nounwind uwtable
define void @BZ2_bz__AssertH__fail(i32 %errcode) #0 {
entry:
  %errcode.addr = alloca i32, align 4
  store i32 %errcode, i32* %errcode.addr, align 4
  %0 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %1 = load i32, i32* %errcode.addr, align 4
  %call = call i8* @BZ2_bzlibVersion()
  %call1 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %0, i8* getelementptr inbounds ([269 x i8], [269 x i8]* @.str, i32 0, i32 0), i32 %1, i8* %call)
  %2 = load i32, i32* %errcode.addr, align 4
  %cmp = icmp eq i32 %2, 1007
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %3 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %call2 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %3, i8* getelementptr inbounds ([1057 x i8], [1057 x i8]* @.str.1, i32 0, i32 0))
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  call void @exit(i32 0) #7
  unreachable

return:                                           ; No predecessors!
  ret void
}

declare i32 @fprintf(%struct._IO_FILE*, i8*, ...) #1

; Function Attrs: nounwind uwtable
define i8* @BZ2_bzlibVersion() #0 {
entry:
  ret i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.5, i32 0, i32 0)
}

; Function Attrs: noreturn nounwind
declare void @exit(i32) #2

; Function Attrs: nounwind uwtable
define i32 @BZ2_bzCompressInit(%struct.bz_stream* %strm, i32 %blockSize100k, i32 %verbosity, i32 %workFactor) #0 {
entry:
  %retval = alloca i32, align 4
  %strm.addr = alloca %struct.bz_stream*, align 8
  %blockSize100k.addr = alloca i32, align 4
  %verbosity.addr = alloca i32, align 4
  %workFactor.addr = alloca i32, align 4
  %n = alloca i32, align 4
  %s = alloca %struct.EState*, align 8
  store %struct.bz_stream* %strm, %struct.bz_stream** %strm.addr, align 8
  store i32 %blockSize100k, i32* %blockSize100k.addr, align 4
  store i32 %verbosity, i32* %verbosity.addr, align 4
  store i32 %workFactor, i32* %workFactor.addr, align 4
  %call = call i32 @bz_config_ok()
  %tobool = icmp ne i32 %call, 0
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  store i32 -9, i32* %retval
  br label %return

if.end:                                           ; preds = %entry
  %0 = load %struct.bz_stream*, %struct.bz_stream** %strm.addr, align 8
  %cmp = icmp eq %struct.bz_stream* %0, null
  br i1 %cmp, label %if.then.8, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.end
  %1 = load i32, i32* %blockSize100k.addr, align 4
  %cmp1 = icmp slt i32 %1, 1
  br i1 %cmp1, label %if.then.8, label %lor.lhs.false.2

lor.lhs.false.2:                                  ; preds = %lor.lhs.false
  %2 = load i32, i32* %blockSize100k.addr, align 4
  %cmp3 = icmp sgt i32 %2, 9
  br i1 %cmp3, label %if.then.8, label %lor.lhs.false.4

lor.lhs.false.4:                                  ; preds = %lor.lhs.false.2
  %3 = load i32, i32* %workFactor.addr, align 4
  %cmp5 = icmp slt i32 %3, 0
  br i1 %cmp5, label %if.then.8, label %lor.lhs.false.6

lor.lhs.false.6:                                  ; preds = %lor.lhs.false.4
  %4 = load i32, i32* %workFactor.addr, align 4
  %cmp7 = icmp sgt i32 %4, 250
  br i1 %cmp7, label %if.then.8, label %if.end.9

if.then.8:                                        ; preds = %lor.lhs.false.6, %lor.lhs.false.4, %lor.lhs.false.2, %lor.lhs.false, %if.end
  store i32 -2, i32* %retval
  br label %return

if.end.9:                                         ; preds = %lor.lhs.false.6
  %5 = load i32, i32* %workFactor.addr, align 4
  %cmp10 = icmp eq i32 %5, 0
  br i1 %cmp10, label %if.then.11, label %if.end.12

if.then.11:                                       ; preds = %if.end.9
  store i32 30, i32* %workFactor.addr, align 4
  br label %if.end.12

if.end.12:                                        ; preds = %if.then.11, %if.end.9
  %6 = load %struct.bz_stream*, %struct.bz_stream** %strm.addr, align 8
  %bzalloc = getelementptr inbounds %struct.bz_stream, %struct.bz_stream* %6, i32 0, i32 9
  %7 = load i8* (i8*, i32, i32)*, i8* (i8*, i32, i32)** %bzalloc, align 8
  %cmp13 = icmp eq i8* (i8*, i32, i32)* %7, null
  br i1 %cmp13, label %if.then.14, label %if.end.16

if.then.14:                                       ; preds = %if.end.12
  %8 = load %struct.bz_stream*, %struct.bz_stream** %strm.addr, align 8
  %bzalloc15 = getelementptr inbounds %struct.bz_stream, %struct.bz_stream* %8, i32 0, i32 9
  store i8* (i8*, i32, i32)* @default_bzalloc, i8* (i8*, i32, i32)** %bzalloc15, align 8
  br label %if.end.16

if.end.16:                                        ; preds = %if.then.14, %if.end.12
  %9 = load %struct.bz_stream*, %struct.bz_stream** %strm.addr, align 8
  %bzfree = getelementptr inbounds %struct.bz_stream, %struct.bz_stream* %9, i32 0, i32 10
  %10 = load void (i8*, i8*)*, void (i8*, i8*)** %bzfree, align 8
  %cmp17 = icmp eq void (i8*, i8*)* %10, null
  br i1 %cmp17, label %if.then.18, label %if.end.20

if.then.18:                                       ; preds = %if.end.16
  %11 = load %struct.bz_stream*, %struct.bz_stream** %strm.addr, align 8
  %bzfree19 = getelementptr inbounds %struct.bz_stream, %struct.bz_stream* %11, i32 0, i32 10
  store void (i8*, i8*)* @default_bzfree, void (i8*, i8*)** %bzfree19, align 8
  br label %if.end.20

if.end.20:                                        ; preds = %if.then.18, %if.end.16
  %12 = load %struct.bz_stream*, %struct.bz_stream** %strm.addr, align 8
  %bzalloc21 = getelementptr inbounds %struct.bz_stream, %struct.bz_stream* %12, i32 0, i32 9
  %13 = load i8* (i8*, i32, i32)*, i8* (i8*, i32, i32)** %bzalloc21, align 8
  %14 = load %struct.bz_stream*, %struct.bz_stream** %strm.addr, align 8
  %opaque = getelementptr inbounds %struct.bz_stream, %struct.bz_stream* %14, i32 0, i32 11
  %15 = load i8*, i8** %opaque, align 8
  %call22 = call i8* %13(i8* %15, i32 55768, i32 1)
  %16 = bitcast i8* %call22 to %struct.EState*
  store %struct.EState* %16, %struct.EState** %s, align 8
  %17 = load %struct.EState*, %struct.EState** %s, align 8
  %cmp23 = icmp eq %struct.EState* %17, null
  br i1 %cmp23, label %if.then.24, label %if.end.25

if.then.24:                                       ; preds = %if.end.20
  store i32 -3, i32* %retval
  br label %return

if.end.25:                                        ; preds = %if.end.20
  %18 = load %struct.bz_stream*, %struct.bz_stream** %strm.addr, align 8
  %19 = load %struct.EState*, %struct.EState** %s, align 8
  %strm26 = getelementptr inbounds %struct.EState, %struct.EState* %19, i32 0, i32 0
  store %struct.bz_stream* %18, %struct.bz_stream** %strm26, align 8
  %20 = load %struct.EState*, %struct.EState** %s, align 8
  %arr1 = getelementptr inbounds %struct.EState, %struct.EState* %20, i32 0, i32 4
  store i32* null, i32** %arr1, align 8
  %21 = load %struct.EState*, %struct.EState** %s, align 8
  %arr2 = getelementptr inbounds %struct.EState, %struct.EState* %21, i32 0, i32 5
  store i32* null, i32** %arr2, align 8
  %22 = load %struct.EState*, %struct.EState** %s, align 8
  %ftab = getelementptr inbounds %struct.EState, %struct.EState* %22, i32 0, i32 6
  store i32* null, i32** %ftab, align 8
  %23 = load i32, i32* %blockSize100k.addr, align 4
  %mul = mul nsw i32 100000, %23
  store i32 %mul, i32* %n, align 4
  %24 = load %struct.bz_stream*, %struct.bz_stream** %strm.addr, align 8
  %bzalloc27 = getelementptr inbounds %struct.bz_stream, %struct.bz_stream* %24, i32 0, i32 9
  %25 = load i8* (i8*, i32, i32)*, i8* (i8*, i32, i32)** %bzalloc27, align 8
  %26 = load %struct.bz_stream*, %struct.bz_stream** %strm.addr, align 8
  %opaque28 = getelementptr inbounds %struct.bz_stream, %struct.bz_stream* %26, i32 0, i32 11
  %27 = load i8*, i8** %opaque28, align 8
  %28 = load i32, i32* %n, align 4
  %conv = sext i32 %28 to i64
  %mul29 = mul i64 %conv, 4
  %conv30 = trunc i64 %mul29 to i32
  %call31 = call i8* %25(i8* %27, i32 %conv30, i32 1)
  %29 = bitcast i8* %call31 to i32*
  %30 = load %struct.EState*, %struct.EState** %s, align 8
  %arr132 = getelementptr inbounds %struct.EState, %struct.EState* %30, i32 0, i32 4
  store i32* %29, i32** %arr132, align 8
  %31 = load %struct.bz_stream*, %struct.bz_stream** %strm.addr, align 8
  %bzalloc33 = getelementptr inbounds %struct.bz_stream, %struct.bz_stream* %31, i32 0, i32 9
  %32 = load i8* (i8*, i32, i32)*, i8* (i8*, i32, i32)** %bzalloc33, align 8
  %33 = load %struct.bz_stream*, %struct.bz_stream** %strm.addr, align 8
  %opaque34 = getelementptr inbounds %struct.bz_stream, %struct.bz_stream* %33, i32 0, i32 11
  %34 = load i8*, i8** %opaque34, align 8
  %35 = load i32, i32* %n, align 4
  %add = add nsw i32 %35, 34
  %conv35 = sext i32 %add to i64
  %mul36 = mul i64 %conv35, 4
  %conv37 = trunc i64 %mul36 to i32
  %call38 = call i8* %32(i8* %34, i32 %conv37, i32 1)
  %36 = bitcast i8* %call38 to i32*
  %37 = load %struct.EState*, %struct.EState** %s, align 8
  %arr239 = getelementptr inbounds %struct.EState, %struct.EState* %37, i32 0, i32 5
  store i32* %36, i32** %arr239, align 8
  %38 = load %struct.bz_stream*, %struct.bz_stream** %strm.addr, align 8
  %bzalloc40 = getelementptr inbounds %struct.bz_stream, %struct.bz_stream* %38, i32 0, i32 9
  %39 = load i8* (i8*, i32, i32)*, i8* (i8*, i32, i32)** %bzalloc40, align 8
  %40 = load %struct.bz_stream*, %struct.bz_stream** %strm.addr, align 8
  %opaque41 = getelementptr inbounds %struct.bz_stream, %struct.bz_stream* %40, i32 0, i32 11
  %41 = load i8*, i8** %opaque41, align 8
  %call42 = call i8* %39(i8* %41, i32 262148, i32 1)
  %42 = bitcast i8* %call42 to i32*
  %43 = load %struct.EState*, %struct.EState** %s, align 8
  %ftab43 = getelementptr inbounds %struct.EState, %struct.EState* %43, i32 0, i32 6
  store i32* %42, i32** %ftab43, align 8
  %44 = load %struct.EState*, %struct.EState** %s, align 8
  %arr144 = getelementptr inbounds %struct.EState, %struct.EState* %44, i32 0, i32 4
  %45 = load i32*, i32** %arr144, align 8
  %cmp45 = icmp eq i32* %45, null
  br i1 %cmp45, label %if.then.55, label %lor.lhs.false.47

lor.lhs.false.47:                                 ; preds = %if.end.25
  %46 = load %struct.EState*, %struct.EState** %s, align 8
  %arr248 = getelementptr inbounds %struct.EState, %struct.EState* %46, i32 0, i32 5
  %47 = load i32*, i32** %arr248, align 8
  %cmp49 = icmp eq i32* %47, null
  br i1 %cmp49, label %if.then.55, label %lor.lhs.false.51

lor.lhs.false.51:                                 ; preds = %lor.lhs.false.47
  %48 = load %struct.EState*, %struct.EState** %s, align 8
  %ftab52 = getelementptr inbounds %struct.EState, %struct.EState* %48, i32 0, i32 6
  %49 = load i32*, i32** %ftab52, align 8
  %cmp53 = icmp eq i32* %49, null
  br i1 %cmp53, label %if.then.55, label %if.end.86

if.then.55:                                       ; preds = %lor.lhs.false.51, %lor.lhs.false.47, %if.end.25
  %50 = load %struct.EState*, %struct.EState** %s, align 8
  %arr156 = getelementptr inbounds %struct.EState, %struct.EState* %50, i32 0, i32 4
  %51 = load i32*, i32** %arr156, align 8
  %cmp57 = icmp ne i32* %51, null
  br i1 %cmp57, label %if.then.59, label %if.end.63

if.then.59:                                       ; preds = %if.then.55
  %52 = load %struct.bz_stream*, %struct.bz_stream** %strm.addr, align 8
  %bzfree60 = getelementptr inbounds %struct.bz_stream, %struct.bz_stream* %52, i32 0, i32 10
  %53 = load void (i8*, i8*)*, void (i8*, i8*)** %bzfree60, align 8
  %54 = load %struct.bz_stream*, %struct.bz_stream** %strm.addr, align 8
  %opaque61 = getelementptr inbounds %struct.bz_stream, %struct.bz_stream* %54, i32 0, i32 11
  %55 = load i8*, i8** %opaque61, align 8
  %56 = load %struct.EState*, %struct.EState** %s, align 8
  %arr162 = getelementptr inbounds %struct.EState, %struct.EState* %56, i32 0, i32 4
  %57 = load i32*, i32** %arr162, align 8
  %58 = bitcast i32* %57 to i8*
  call void %53(i8* %55, i8* %58)
  br label %if.end.63

if.end.63:                                        ; preds = %if.then.59, %if.then.55
  %59 = load %struct.EState*, %struct.EState** %s, align 8
  %arr264 = getelementptr inbounds %struct.EState, %struct.EState* %59, i32 0, i32 5
  %60 = load i32*, i32** %arr264, align 8
  %cmp65 = icmp ne i32* %60, null
  br i1 %cmp65, label %if.then.67, label %if.end.71

if.then.67:                                       ; preds = %if.end.63
  %61 = load %struct.bz_stream*, %struct.bz_stream** %strm.addr, align 8
  %bzfree68 = getelementptr inbounds %struct.bz_stream, %struct.bz_stream* %61, i32 0, i32 10
  %62 = load void (i8*, i8*)*, void (i8*, i8*)** %bzfree68, align 8
  %63 = load %struct.bz_stream*, %struct.bz_stream** %strm.addr, align 8
  %opaque69 = getelementptr inbounds %struct.bz_stream, %struct.bz_stream* %63, i32 0, i32 11
  %64 = load i8*, i8** %opaque69, align 8
  %65 = load %struct.EState*, %struct.EState** %s, align 8
  %arr270 = getelementptr inbounds %struct.EState, %struct.EState* %65, i32 0, i32 5
  %66 = load i32*, i32** %arr270, align 8
  %67 = bitcast i32* %66 to i8*
  call void %62(i8* %64, i8* %67)
  br label %if.end.71

if.end.71:                                        ; preds = %if.then.67, %if.end.63
  %68 = load %struct.EState*, %struct.EState** %s, align 8
  %ftab72 = getelementptr inbounds %struct.EState, %struct.EState* %68, i32 0, i32 6
  %69 = load i32*, i32** %ftab72, align 8
  %cmp73 = icmp ne i32* %69, null
  br i1 %cmp73, label %if.then.75, label %if.end.79

if.then.75:                                       ; preds = %if.end.71
  %70 = load %struct.bz_stream*, %struct.bz_stream** %strm.addr, align 8
  %bzfree76 = getelementptr inbounds %struct.bz_stream, %struct.bz_stream* %70, i32 0, i32 10
  %71 = load void (i8*, i8*)*, void (i8*, i8*)** %bzfree76, align 8
  %72 = load %struct.bz_stream*, %struct.bz_stream** %strm.addr, align 8
  %opaque77 = getelementptr inbounds %struct.bz_stream, %struct.bz_stream* %72, i32 0, i32 11
  %73 = load i8*, i8** %opaque77, align 8
  %74 = load %struct.EState*, %struct.EState** %s, align 8
  %ftab78 = getelementptr inbounds %struct.EState, %struct.EState* %74, i32 0, i32 6
  %75 = load i32*, i32** %ftab78, align 8
  %76 = bitcast i32* %75 to i8*
  call void %71(i8* %73, i8* %76)
  br label %if.end.79

if.end.79:                                        ; preds = %if.then.75, %if.end.71
  %77 = load %struct.EState*, %struct.EState** %s, align 8
  %cmp80 = icmp ne %struct.EState* %77, null
  br i1 %cmp80, label %if.then.82, label %if.end.85

if.then.82:                                       ; preds = %if.end.79
  %78 = load %struct.bz_stream*, %struct.bz_stream** %strm.addr, align 8
  %bzfree83 = getelementptr inbounds %struct.bz_stream, %struct.bz_stream* %78, i32 0, i32 10
  %79 = load void (i8*, i8*)*, void (i8*, i8*)** %bzfree83, align 8
  %80 = load %struct.bz_stream*, %struct.bz_stream** %strm.addr, align 8
  %opaque84 = getelementptr inbounds %struct.bz_stream, %struct.bz_stream* %80, i32 0, i32 11
  %81 = load i8*, i8** %opaque84, align 8
  %82 = load %struct.EState*, %struct.EState** %s, align 8
  %83 = bitcast %struct.EState* %82 to i8*
  call void %79(i8* %81, i8* %83)
  br label %if.end.85

if.end.85:                                        ; preds = %if.then.82, %if.end.79
  store i32 -3, i32* %retval
  br label %return

if.end.86:                                        ; preds = %lor.lhs.false.51
  %84 = load %struct.EState*, %struct.EState** %s, align 8
  %blockNo = getelementptr inbounds %struct.EState, %struct.EState* %84, i32 0, i32 29
  store i32 0, i32* %blockNo, align 4
  %85 = load %struct.EState*, %struct.EState** %s, align 8
  %state = getelementptr inbounds %struct.EState, %struct.EState* %85, i32 0, i32 2
  store i32 2, i32* %state, align 4
  %86 = load %struct.EState*, %struct.EState** %s, align 8
  %mode = getelementptr inbounds %struct.EState, %struct.EState* %86, i32 0, i32 1
  store i32 2, i32* %mode, align 4
  %87 = load %struct.EState*, %struct.EState** %s, align 8
  %combinedCRC = getelementptr inbounds %struct.EState, %struct.EState* %87, i32 0, i32 27
  store i32 0, i32* %combinedCRC, align 4
  %88 = load i32, i32* %blockSize100k.addr, align 4
  %89 = load %struct.EState*, %struct.EState** %s, align 8
  %blockSize100k87 = getelementptr inbounds %struct.EState, %struct.EState* %89, i32 0, i32 30
  store i32 %88, i32* %blockSize100k87, align 4
  %90 = load i32, i32* %blockSize100k.addr, align 4
  %mul88 = mul nsw i32 100000, %90
  %sub = sub nsw i32 %mul88, 19
  %91 = load %struct.EState*, %struct.EState** %s, align 8
  %nblockMAX = getelementptr inbounds %struct.EState, %struct.EState* %91, i32 0, i32 18
  store i32 %sub, i32* %nblockMAX, align 4
  %92 = load i32, i32* %verbosity.addr, align 4
  %93 = load %struct.EState*, %struct.EState** %s, align 8
  %verbosity89 = getelementptr inbounds %struct.EState, %struct.EState* %93, i32 0, i32 28
  store i32 %92, i32* %verbosity89, align 4
  %94 = load i32, i32* %workFactor.addr, align 4
  %95 = load %struct.EState*, %struct.EState** %s, align 8
  %workFactor90 = getelementptr inbounds %struct.EState, %struct.EState* %95, i32 0, i32 12
  store i32 %94, i32* %workFactor90, align 4
  %96 = load %struct.EState*, %struct.EState** %s, align 8
  %arr291 = getelementptr inbounds %struct.EState, %struct.EState* %96, i32 0, i32 5
  %97 = load i32*, i32** %arr291, align 8
  %98 = bitcast i32* %97 to i8*
  %99 = load %struct.EState*, %struct.EState** %s, align 8
  %block = getelementptr inbounds %struct.EState, %struct.EState* %99, i32 0, i32 9
  store i8* %98, i8** %block, align 8
  %100 = load %struct.EState*, %struct.EState** %s, align 8
  %arr192 = getelementptr inbounds %struct.EState, %struct.EState* %100, i32 0, i32 4
  %101 = load i32*, i32** %arr192, align 8
  %102 = bitcast i32* %101 to i16*
  %103 = load %struct.EState*, %struct.EState** %s, align 8
  %mtfv = getelementptr inbounds %struct.EState, %struct.EState* %103, i32 0, i32 10
  store i16* %102, i16** %mtfv, align 8
  %104 = load %struct.EState*, %struct.EState** %s, align 8
  %zbits = getelementptr inbounds %struct.EState, %struct.EState* %104, i32 0, i32 11
  store i8* null, i8** %zbits, align 8
  %105 = load %struct.EState*, %struct.EState** %s, align 8
  %arr193 = getelementptr inbounds %struct.EState, %struct.EState* %105, i32 0, i32 4
  %106 = load i32*, i32** %arr193, align 8
  %107 = load %struct.EState*, %struct.EState** %s, align 8
  %ptr = getelementptr inbounds %struct.EState, %struct.EState* %107, i32 0, i32 8
  store i32* %106, i32** %ptr, align 8
  %108 = load %struct.EState*, %struct.EState** %s, align 8
  %109 = bitcast %struct.EState* %108 to i8*
  %110 = load %struct.bz_stream*, %struct.bz_stream** %strm.addr, align 8
  %state94 = getelementptr inbounds %struct.bz_stream, %struct.bz_stream* %110, i32 0, i32 8
  store i8* %109, i8** %state94, align 8
  %111 = load %struct.bz_stream*, %struct.bz_stream** %strm.addr, align 8
  %total_in_lo32 = getelementptr inbounds %struct.bz_stream, %struct.bz_stream* %111, i32 0, i32 2
  store i32 0, i32* %total_in_lo32, align 4
  %112 = load %struct.bz_stream*, %struct.bz_stream** %strm.addr, align 8
  %total_in_hi32 = getelementptr inbounds %struct.bz_stream, %struct.bz_stream* %112, i32 0, i32 3
  store i32 0, i32* %total_in_hi32, align 4
  %113 = load %struct.bz_stream*, %struct.bz_stream** %strm.addr, align 8
  %total_out_lo32 = getelementptr inbounds %struct.bz_stream, %struct.bz_stream* %113, i32 0, i32 6
  store i32 0, i32* %total_out_lo32, align 4
  %114 = load %struct.bz_stream*, %struct.bz_stream** %strm.addr, align 8
  %total_out_hi32 = getelementptr inbounds %struct.bz_stream, %struct.bz_stream* %114, i32 0, i32 7
  store i32 0, i32* %total_out_hi32, align 4
  %115 = load %struct.EState*, %struct.EState** %s, align 8
  call void @init_RL(%struct.EState* %115)
  %116 = load %struct.EState*, %struct.EState** %s, align 8
  call void @prepare_new_block(%struct.EState* %116)
  store i32 0, i32* %retval
  br label %return

return:                                           ; preds = %if.end.86, %if.end.85, %if.then.24, %if.then.8, %if.then
  %117 = load i32, i32* %retval
  ret i32 %117
}

; Function Attrs: nounwind uwtable
define internal i32 @bz_config_ok() #0 {
entry:
  ret i32 1
}

; Function Attrs: nounwind uwtable
define internal i8* @default_bzalloc(i8* %opaque, i32 %items, i32 %size) #0 {
entry:
  %opaque.addr = alloca i8*, align 8
  %items.addr = alloca i32, align 4
  %size.addr = alloca i32, align 4
  %v = alloca i8*, align 8
  store i8* %opaque, i8** %opaque.addr, align 8
  store i32 %items, i32* %items.addr, align 4
  store i32 %size, i32* %size.addr, align 4
  %0 = load i32, i32* %items.addr, align 4
  %1 = load i32, i32* %size.addr, align 4
  %mul = mul nsw i32 %0, %1
  %conv = sext i32 %mul to i64
  %call = call noalias i8* @malloc(i64 %conv) #4
  store i8* %call, i8** %v, align 8
  %2 = load i8*, i8** %v, align 8
  ret i8* %2
}

; Function Attrs: nounwind uwtable
define internal void @default_bzfree(i8* %opaque, i8* %addr) #0 {
entry:
  %opaque.addr = alloca i8*, align 8
  %addr.addr = alloca i8*, align 8
  store i8* %opaque, i8** %opaque.addr, align 8
  store i8* %addr, i8** %addr.addr, align 8
  %0 = load i8*, i8** %addr.addr, align 8
  %cmp = icmp ne i8* %0, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %1 = load i8*, i8** %addr.addr, align 8
  call void @free(i8* %1) #4
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @init_RL(%struct.EState* %s) #0 {
entry:
  %s.addr = alloca %struct.EState*, align 8
  store %struct.EState* %s, %struct.EState** %s.addr, align 8
  %0 = load %struct.EState*, %struct.EState** %s.addr, align 8
  %state_in_ch = getelementptr inbounds %struct.EState, %struct.EState* %0, i32 0, i32 13
  store i32 256, i32* %state_in_ch, align 4
  %1 = load %struct.EState*, %struct.EState** %s.addr, align 8
  %state_in_len = getelementptr inbounds %struct.EState, %struct.EState* %1, i32 0, i32 14
  store i32 0, i32* %state_in_len, align 4
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @prepare_new_block(%struct.EState* %s) #0 {
entry:
  %s.addr = alloca %struct.EState*, align 8
  %i = alloca i32, align 4
  store %struct.EState* %s, %struct.EState** %s.addr, align 8
  %0 = load %struct.EState*, %struct.EState** %s.addr, align 8
  %nblock = getelementptr inbounds %struct.EState, %struct.EState* %0, i32 0, i32 17
  store i32 0, i32* %nblock, align 4
  %1 = load %struct.EState*, %struct.EState** %s.addr, align 8
  %numZ = getelementptr inbounds %struct.EState, %struct.EState* %1, i32 0, i32 19
  store i32 0, i32* %numZ, align 4
  %2 = load %struct.EState*, %struct.EState** %s.addr, align 8
  %state_out_pos = getelementptr inbounds %struct.EState, %struct.EState* %2, i32 0, i32 20
  store i32 0, i32* %state_out_pos, align 4
  %3 = load %struct.EState*, %struct.EState** %s.addr, align 8
  %blockCRC = getelementptr inbounds %struct.EState, %struct.EState* %3, i32 0, i32 26
  store i32 -1, i32* %blockCRC, align 4
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %4 = load i32, i32* %i, align 4
  %cmp = icmp slt i32 %4, 256
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %5 = load i32, i32* %i, align 4
  %idxprom = sext i32 %5 to i64
  %6 = load %struct.EState*, %struct.EState** %s.addr, align 8
  %inUse = getelementptr inbounds %struct.EState, %struct.EState* %6, i32 0, i32 22
  %arrayidx = getelementptr inbounds [256 x i8], [256 x i8]* %inUse, i32 0, i64 %idxprom
  store i8 0, i8* %arrayidx, align 1
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %7 = load i32, i32* %i, align 4
  %inc = add nsw i32 %7, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %8 = load %struct.EState*, %struct.EState** %s.addr, align 8
  %blockNo = getelementptr inbounds %struct.EState, %struct.EState* %8, i32 0, i32 29
  %9 = load i32, i32* %blockNo, align 4
  %inc1 = add nsw i32 %9, 1
  store i32 %inc1, i32* %blockNo, align 4
  ret void
}

; Function Attrs: nounwind uwtable
define i32 @BZ2_bzCompress(%struct.bz_stream* %strm, i32 %action) #0 {
entry:
  %retval = alloca i32, align 4
  %strm.addr = alloca %struct.bz_stream*, align 8
  %action.addr = alloca i32, align 4
  %progress = alloca i8, align 1
  %s = alloca %struct.EState*, align 8
  store %struct.bz_stream* %strm, %struct.bz_stream** %strm.addr, align 8
  store i32 %action, i32* %action.addr, align 4
  %0 = load %struct.bz_stream*, %struct.bz_stream** %strm.addr, align 8
  %cmp = icmp eq %struct.bz_stream* %0, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store i32 -2, i32* %retval
  br label %return

if.end:                                           ; preds = %entry
  %1 = load %struct.bz_stream*, %struct.bz_stream** %strm.addr, align 8
  %state = getelementptr inbounds %struct.bz_stream, %struct.bz_stream* %1, i32 0, i32 8
  %2 = load i8*, i8** %state, align 8
  %3 = bitcast i8* %2 to %struct.EState*
  store %struct.EState* %3, %struct.EState** %s, align 8
  %4 = load %struct.EState*, %struct.EState** %s, align 8
  %cmp1 = icmp eq %struct.EState* %4, null
  br i1 %cmp1, label %if.then.2, label %if.end.3

if.then.2:                                        ; preds = %if.end
  store i32 -2, i32* %retval
  br label %return

if.end.3:                                         ; preds = %if.end
  %5 = load %struct.EState*, %struct.EState** %s, align 8
  %strm4 = getelementptr inbounds %struct.EState, %struct.EState* %5, i32 0, i32 0
  %6 = load %struct.bz_stream*, %struct.bz_stream** %strm4, align 8
  %7 = load %struct.bz_stream*, %struct.bz_stream** %strm.addr, align 8
  %cmp5 = icmp ne %struct.bz_stream* %6, %7
  br i1 %cmp5, label %if.then.6, label %if.end.7

if.then.6:                                        ; preds = %if.end.3
  store i32 -2, i32* %retval
  br label %return

if.end.7:                                         ; preds = %if.end.3
  br label %preswitch

preswitch:                                        ; preds = %if.then.18, %if.then.13, %if.end.7
  %8 = load %struct.EState*, %struct.EState** %s, align 8
  %mode = getelementptr inbounds %struct.EState, %struct.EState* %8, i32 0, i32 1
  %9 = load i32, i32* %mode, align 4
  switch i32 %9, label %sw.epilog [
    i32 1, label %sw.bb
    i32 2, label %sw.bb.8
    i32 3, label %sw.bb.23
    i32 4, label %sw.bb.47
  ]

sw.bb:                                            ; preds = %preswitch
  store i32 -1, i32* %retval
  br label %return

sw.bb.8:                                          ; preds = %preswitch
  %10 = load i32, i32* %action.addr, align 4
  %cmp9 = icmp eq i32 %10, 0
  br i1 %cmp9, label %if.then.10, label %if.else

if.then.10:                                       ; preds = %sw.bb.8
  %11 = load %struct.bz_stream*, %struct.bz_stream** %strm.addr, align 8
  %call = call zeroext i8 @handle_compress(%struct.bz_stream* %11)
  store i8 %call, i8* %progress, align 1
  %12 = load i8, i8* %progress, align 1
  %conv = zext i8 %12 to i32
  %tobool = icmp ne i32 %conv, 0
  %cond = select i1 %tobool, i32 1, i32 -2
  store i32 %cond, i32* %retval
  br label %return

if.else:                                          ; preds = %sw.bb.8
  %13 = load i32, i32* %action.addr, align 4
  %cmp11 = icmp eq i32 %13, 1
  br i1 %cmp11, label %if.then.13, label %if.else.15

if.then.13:                                       ; preds = %if.else
  %14 = load %struct.bz_stream*, %struct.bz_stream** %strm.addr, align 8
  %avail_in = getelementptr inbounds %struct.bz_stream, %struct.bz_stream* %14, i32 0, i32 1
  %15 = load i32, i32* %avail_in, align 4
  %16 = load %struct.EState*, %struct.EState** %s, align 8
  %avail_in_expect = getelementptr inbounds %struct.EState, %struct.EState* %16, i32 0, i32 3
  store i32 %15, i32* %avail_in_expect, align 4
  %17 = load %struct.EState*, %struct.EState** %s, align 8
  %mode14 = getelementptr inbounds %struct.EState, %struct.EState* %17, i32 0, i32 1
  store i32 3, i32* %mode14, align 4
  br label %preswitch

if.else.15:                                       ; preds = %if.else
  %18 = load i32, i32* %action.addr, align 4
  %cmp16 = icmp eq i32 %18, 2
  br i1 %cmp16, label %if.then.18, label %if.else.22

if.then.18:                                       ; preds = %if.else.15
  %19 = load %struct.bz_stream*, %struct.bz_stream** %strm.addr, align 8
  %avail_in19 = getelementptr inbounds %struct.bz_stream, %struct.bz_stream* %19, i32 0, i32 1
  %20 = load i32, i32* %avail_in19, align 4
  %21 = load %struct.EState*, %struct.EState** %s, align 8
  %avail_in_expect20 = getelementptr inbounds %struct.EState, %struct.EState* %21, i32 0, i32 3
  store i32 %20, i32* %avail_in_expect20, align 4
  %22 = load %struct.EState*, %struct.EState** %s, align 8
  %mode21 = getelementptr inbounds %struct.EState, %struct.EState* %22, i32 0, i32 1
  store i32 4, i32* %mode21, align 4
  br label %preswitch

if.else.22:                                       ; preds = %if.else.15
  store i32 -2, i32* %retval
  br label %return

sw.bb.23:                                         ; preds = %preswitch
  %23 = load i32, i32* %action.addr, align 4
  %cmp24 = icmp ne i32 %23, 1
  br i1 %cmp24, label %if.then.26, label %if.end.27

if.then.26:                                       ; preds = %sw.bb.23
  store i32 -1, i32* %retval
  br label %return

if.end.27:                                        ; preds = %sw.bb.23
  %24 = load %struct.EState*, %struct.EState** %s, align 8
  %avail_in_expect28 = getelementptr inbounds %struct.EState, %struct.EState* %24, i32 0, i32 3
  %25 = load i32, i32* %avail_in_expect28, align 4
  %26 = load %struct.EState*, %struct.EState** %s, align 8
  %strm29 = getelementptr inbounds %struct.EState, %struct.EState* %26, i32 0, i32 0
  %27 = load %struct.bz_stream*, %struct.bz_stream** %strm29, align 8
  %avail_in30 = getelementptr inbounds %struct.bz_stream, %struct.bz_stream* %27, i32 0, i32 1
  %28 = load i32, i32* %avail_in30, align 4
  %cmp31 = icmp ne i32 %25, %28
  br i1 %cmp31, label %if.then.33, label %if.end.34

if.then.33:                                       ; preds = %if.end.27
  store i32 -1, i32* %retval
  br label %return

if.end.34:                                        ; preds = %if.end.27
  %29 = load %struct.bz_stream*, %struct.bz_stream** %strm.addr, align 8
  %call35 = call zeroext i8 @handle_compress(%struct.bz_stream* %29)
  store i8 %call35, i8* %progress, align 1
  %30 = load %struct.EState*, %struct.EState** %s, align 8
  %avail_in_expect36 = getelementptr inbounds %struct.EState, %struct.EState* %30, i32 0, i32 3
  %31 = load i32, i32* %avail_in_expect36, align 4
  %cmp37 = icmp ugt i32 %31, 0
  br i1 %cmp37, label %if.then.44, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.end.34
  %32 = load %struct.EState*, %struct.EState** %s, align 8
  %call39 = call zeroext i8 @isempty_RL(%struct.EState* %32)
  %tobool40 = icmp ne i8 %call39, 0
  br i1 %tobool40, label %lor.lhs.false.41, label %if.then.44

lor.lhs.false.41:                                 ; preds = %lor.lhs.false
  %33 = load %struct.EState*, %struct.EState** %s, align 8
  %state_out_pos = getelementptr inbounds %struct.EState, %struct.EState* %33, i32 0, i32 20
  %34 = load i32, i32* %state_out_pos, align 4
  %35 = load %struct.EState*, %struct.EState** %s, align 8
  %numZ = getelementptr inbounds %struct.EState, %struct.EState* %35, i32 0, i32 19
  %36 = load i32, i32* %numZ, align 4
  %cmp42 = icmp slt i32 %34, %36
  br i1 %cmp42, label %if.then.44, label %if.end.45

if.then.44:                                       ; preds = %lor.lhs.false.41, %lor.lhs.false, %if.end.34
  store i32 2, i32* %retval
  br label %return

if.end.45:                                        ; preds = %lor.lhs.false.41
  %37 = load %struct.EState*, %struct.EState** %s, align 8
  %mode46 = getelementptr inbounds %struct.EState, %struct.EState* %37, i32 0, i32 1
  store i32 2, i32* %mode46, align 4
  store i32 1, i32* %retval
  br label %return

sw.bb.47:                                         ; preds = %preswitch
  %38 = load i32, i32* %action.addr, align 4
  %cmp48 = icmp ne i32 %38, 2
  br i1 %cmp48, label %if.then.50, label %if.end.51

if.then.50:                                       ; preds = %sw.bb.47
  store i32 -1, i32* %retval
  br label %return

if.end.51:                                        ; preds = %sw.bb.47
  %39 = load %struct.EState*, %struct.EState** %s, align 8
  %avail_in_expect52 = getelementptr inbounds %struct.EState, %struct.EState* %39, i32 0, i32 3
  %40 = load i32, i32* %avail_in_expect52, align 4
  %41 = load %struct.EState*, %struct.EState** %s, align 8
  %strm53 = getelementptr inbounds %struct.EState, %struct.EState* %41, i32 0, i32 0
  %42 = load %struct.bz_stream*, %struct.bz_stream** %strm53, align 8
  %avail_in54 = getelementptr inbounds %struct.bz_stream, %struct.bz_stream* %42, i32 0, i32 1
  %43 = load i32, i32* %avail_in54, align 4
  %cmp55 = icmp ne i32 %40, %43
  br i1 %cmp55, label %if.then.57, label %if.end.58

if.then.57:                                       ; preds = %if.end.51
  store i32 -1, i32* %retval
  br label %return

if.end.58:                                        ; preds = %if.end.51
  %44 = load %struct.bz_stream*, %struct.bz_stream** %strm.addr, align 8
  %call59 = call zeroext i8 @handle_compress(%struct.bz_stream* %44)
  store i8 %call59, i8* %progress, align 1
  %45 = load i8, i8* %progress, align 1
  %tobool60 = icmp ne i8 %45, 0
  br i1 %tobool60, label %if.end.62, label %if.then.61

if.then.61:                                       ; preds = %if.end.58
  store i32 -1, i32* %retval
  br label %return

if.end.62:                                        ; preds = %if.end.58
  %46 = load %struct.EState*, %struct.EState** %s, align 8
  %avail_in_expect63 = getelementptr inbounds %struct.EState, %struct.EState* %46, i32 0, i32 3
  %47 = load i32, i32* %avail_in_expect63, align 4
  %cmp64 = icmp ugt i32 %47, 0
  br i1 %cmp64, label %if.then.74, label %lor.lhs.false.66

lor.lhs.false.66:                                 ; preds = %if.end.62
  %48 = load %struct.EState*, %struct.EState** %s, align 8
  %call67 = call zeroext i8 @isempty_RL(%struct.EState* %48)
  %tobool68 = icmp ne i8 %call67, 0
  br i1 %tobool68, label %lor.lhs.false.69, label %if.then.74

lor.lhs.false.69:                                 ; preds = %lor.lhs.false.66
  %49 = load %struct.EState*, %struct.EState** %s, align 8
  %state_out_pos70 = getelementptr inbounds %struct.EState, %struct.EState* %49, i32 0, i32 20
  %50 = load i32, i32* %state_out_pos70, align 4
  %51 = load %struct.EState*, %struct.EState** %s, align 8
  %numZ71 = getelementptr inbounds %struct.EState, %struct.EState* %51, i32 0, i32 19
  %52 = load i32, i32* %numZ71, align 4
  %cmp72 = icmp slt i32 %50, %52
  br i1 %cmp72, label %if.then.74, label %if.end.75

if.then.74:                                       ; preds = %lor.lhs.false.69, %lor.lhs.false.66, %if.end.62
  store i32 3, i32* %retval
  br label %return

if.end.75:                                        ; preds = %lor.lhs.false.69
  %53 = load %struct.EState*, %struct.EState** %s, align 8
  %mode76 = getelementptr inbounds %struct.EState, %struct.EState* %53, i32 0, i32 1
  store i32 1, i32* %mode76, align 4
  store i32 4, i32* %retval
  br label %return

sw.epilog:                                        ; preds = %preswitch
  store i32 0, i32* %retval
  br label %return

return:                                           ; preds = %sw.epilog, %if.end.75, %if.then.74, %if.then.61, %if.then.57, %if.then.50, %if.end.45, %if.then.44, %if.then.33, %if.then.26, %if.else.22, %if.then.10, %sw.bb, %if.then.6, %if.then.2, %if.then
  %54 = load i32, i32* %retval
  ret i32 %54
}

; Function Attrs: nounwind uwtable
define internal zeroext i8 @handle_compress(%struct.bz_stream* %strm) #0 {
entry:
  %strm.addr = alloca %struct.bz_stream*, align 8
  %progress_in = alloca i8, align 1
  %progress_out = alloca i8, align 1
  %s = alloca %struct.EState*, align 8
  store %struct.bz_stream* %strm, %struct.bz_stream** %strm.addr, align 8
  store i8 0, i8* %progress_in, align 1
  store i8 0, i8* %progress_out, align 1
  %0 = load %struct.bz_stream*, %struct.bz_stream** %strm.addr, align 8
  %state = getelementptr inbounds %struct.bz_stream, %struct.bz_stream* %0, i32 0, i32 8
  %1 = load i8*, i8** %state, align 8
  %2 = bitcast i8* %1 to %struct.EState*
  store %struct.EState* %2, %struct.EState** %s, align 8
  br label %while.body

while.body:                                       ; preds = %entry, %if.end.65
  %3 = load %struct.EState*, %struct.EState** %s, align 8
  %state1 = getelementptr inbounds %struct.EState, %struct.EState* %3, i32 0, i32 2
  %4 = load i32, i32* %state1, align 4
  %cmp = icmp eq i32 %4, 1
  br i1 %cmp, label %if.then, label %if.end.30

if.then:                                          ; preds = %while.body
  %5 = load %struct.EState*, %struct.EState** %s, align 8
  %call = call zeroext i8 @copy_output_until_stop(%struct.EState* %5)
  %conv = zext i8 %call to i32
  %6 = load i8, i8* %progress_out, align 1
  %conv2 = zext i8 %6 to i32
  %or = or i32 %conv2, %conv
  %conv3 = trunc i32 %or to i8
  store i8 %conv3, i8* %progress_out, align 1
  %7 = load %struct.EState*, %struct.EState** %s, align 8
  %state_out_pos = getelementptr inbounds %struct.EState, %struct.EState* %7, i32 0, i32 20
  %8 = load i32, i32* %state_out_pos, align 4
  %9 = load %struct.EState*, %struct.EState** %s, align 8
  %numZ = getelementptr inbounds %struct.EState, %struct.EState* %9, i32 0, i32 19
  %10 = load i32, i32* %numZ, align 4
  %cmp4 = icmp slt i32 %8, %10
  br i1 %cmp4, label %if.then.6, label %if.end

if.then.6:                                        ; preds = %if.then
  br label %while.end

if.end:                                           ; preds = %if.then
  %11 = load %struct.EState*, %struct.EState** %s, align 8
  %mode = getelementptr inbounds %struct.EState, %struct.EState* %11, i32 0, i32 1
  %12 = load i32, i32* %mode, align 4
  %cmp7 = icmp eq i32 %12, 4
  br i1 %cmp7, label %land.lhs.true, label %if.end.15

land.lhs.true:                                    ; preds = %if.end
  %13 = load %struct.EState*, %struct.EState** %s, align 8
  %avail_in_expect = getelementptr inbounds %struct.EState, %struct.EState* %13, i32 0, i32 3
  %14 = load i32, i32* %avail_in_expect, align 4
  %cmp9 = icmp eq i32 %14, 0
  br i1 %cmp9, label %land.lhs.true.11, label %if.end.15

land.lhs.true.11:                                 ; preds = %land.lhs.true
  %15 = load %struct.EState*, %struct.EState** %s, align 8
  %call12 = call zeroext i8 @isempty_RL(%struct.EState* %15)
  %conv13 = zext i8 %call12 to i32
  %tobool = icmp ne i32 %conv13, 0
  br i1 %tobool, label %if.then.14, label %if.end.15

if.then.14:                                       ; preds = %land.lhs.true.11
  br label %while.end

if.end.15:                                        ; preds = %land.lhs.true.11, %land.lhs.true, %if.end
  %16 = load %struct.EState*, %struct.EState** %s, align 8
  call void @prepare_new_block(%struct.EState* %16)
  %17 = load %struct.EState*, %struct.EState** %s, align 8
  %state16 = getelementptr inbounds %struct.EState, %struct.EState* %17, i32 0, i32 2
  store i32 2, i32* %state16, align 4
  %18 = load %struct.EState*, %struct.EState** %s, align 8
  %mode17 = getelementptr inbounds %struct.EState, %struct.EState* %18, i32 0, i32 1
  %19 = load i32, i32* %mode17, align 4
  %cmp18 = icmp eq i32 %19, 3
  br i1 %cmp18, label %land.lhs.true.20, label %if.end.29

land.lhs.true.20:                                 ; preds = %if.end.15
  %20 = load %struct.EState*, %struct.EState** %s, align 8
  %avail_in_expect21 = getelementptr inbounds %struct.EState, %struct.EState* %20, i32 0, i32 3
  %21 = load i32, i32* %avail_in_expect21, align 4
  %cmp22 = icmp eq i32 %21, 0
  br i1 %cmp22, label %land.lhs.true.24, label %if.end.29

land.lhs.true.24:                                 ; preds = %land.lhs.true.20
  %22 = load %struct.EState*, %struct.EState** %s, align 8
  %call25 = call zeroext i8 @isempty_RL(%struct.EState* %22)
  %conv26 = zext i8 %call25 to i32
  %tobool27 = icmp ne i32 %conv26, 0
  br i1 %tobool27, label %if.then.28, label %if.end.29

if.then.28:                                       ; preds = %land.lhs.true.24
  br label %while.end

if.end.29:                                        ; preds = %land.lhs.true.24, %land.lhs.true.20, %if.end.15
  br label %if.end.30

if.end.30:                                        ; preds = %if.end.29, %while.body
  %23 = load %struct.EState*, %struct.EState** %s, align 8
  %state31 = getelementptr inbounds %struct.EState, %struct.EState* %23, i32 0, i32 2
  %24 = load i32, i32* %state31, align 4
  %cmp32 = icmp eq i32 %24, 2
  br i1 %cmp32, label %if.then.34, label %if.end.65

if.then.34:                                       ; preds = %if.end.30
  %25 = load %struct.EState*, %struct.EState** %s, align 8
  %call35 = call zeroext i8 @copy_input_until_stop(%struct.EState* %25)
  %conv36 = zext i8 %call35 to i32
  %26 = load i8, i8* %progress_in, align 1
  %conv37 = zext i8 %26 to i32
  %or38 = or i32 %conv37, %conv36
  %conv39 = trunc i32 %or38 to i8
  store i8 %conv39, i8* %progress_in, align 1
  %27 = load %struct.EState*, %struct.EState** %s, align 8
  %mode40 = getelementptr inbounds %struct.EState, %struct.EState* %27, i32 0, i32 1
  %28 = load i32, i32* %mode40, align 4
  %cmp41 = icmp ne i32 %28, 2
  br i1 %cmp41, label %land.lhs.true.43, label %if.else

land.lhs.true.43:                                 ; preds = %if.then.34
  %29 = load %struct.EState*, %struct.EState** %s, align 8
  %avail_in_expect44 = getelementptr inbounds %struct.EState, %struct.EState* %29, i32 0, i32 3
  %30 = load i32, i32* %avail_in_expect44, align 4
  %cmp45 = icmp eq i32 %30, 0
  br i1 %cmp45, label %if.then.47, label %if.else

if.then.47:                                       ; preds = %land.lhs.true.43
  %31 = load %struct.EState*, %struct.EState** %s, align 8
  call void @flush_RL(%struct.EState* %31)
  %32 = load %struct.EState*, %struct.EState** %s, align 8
  %33 = load %struct.EState*, %struct.EState** %s, align 8
  %mode48 = getelementptr inbounds %struct.EState, %struct.EState* %33, i32 0, i32 1
  %34 = load i32, i32* %mode48, align 4
  %cmp49 = icmp eq i32 %34, 4
  %conv50 = zext i1 %cmp49 to i32
  %conv51 = trunc i32 %conv50 to i8
  call void @BZ2_compressBlock(%struct.EState* %32, i8 zeroext %conv51)
  %35 = load %struct.EState*, %struct.EState** %s, align 8
  %state52 = getelementptr inbounds %struct.EState, %struct.EState* %35, i32 0, i32 2
  store i32 1, i32* %state52, align 4
  br label %if.end.64

if.else:                                          ; preds = %land.lhs.true.43, %if.then.34
  %36 = load %struct.EState*, %struct.EState** %s, align 8
  %nblock = getelementptr inbounds %struct.EState, %struct.EState* %36, i32 0, i32 17
  %37 = load i32, i32* %nblock, align 4
  %38 = load %struct.EState*, %struct.EState** %s, align 8
  %nblockMAX = getelementptr inbounds %struct.EState, %struct.EState* %38, i32 0, i32 18
  %39 = load i32, i32* %nblockMAX, align 4
  %cmp53 = icmp sge i32 %37, %39
  br i1 %cmp53, label %if.then.55, label %if.else.57

if.then.55:                                       ; preds = %if.else
  %40 = load %struct.EState*, %struct.EState** %s, align 8
  call void @BZ2_compressBlock(%struct.EState* %40, i8 zeroext 0)
  %41 = load %struct.EState*, %struct.EState** %s, align 8
  %state56 = getelementptr inbounds %struct.EState, %struct.EState* %41, i32 0, i32 2
  store i32 1, i32* %state56, align 4
  br label %if.end.63

if.else.57:                                       ; preds = %if.else
  %42 = load %struct.EState*, %struct.EState** %s, align 8
  %strm58 = getelementptr inbounds %struct.EState, %struct.EState* %42, i32 0, i32 0
  %43 = load %struct.bz_stream*, %struct.bz_stream** %strm58, align 8
  %avail_in = getelementptr inbounds %struct.bz_stream, %struct.bz_stream* %43, i32 0, i32 1
  %44 = load i32, i32* %avail_in, align 4
  %cmp59 = icmp eq i32 %44, 0
  br i1 %cmp59, label %if.then.61, label %if.end.62

if.then.61:                                       ; preds = %if.else.57
  br label %while.end

if.end.62:                                        ; preds = %if.else.57
  br label %if.end.63

if.end.63:                                        ; preds = %if.end.62, %if.then.55
  br label %if.end.64

if.end.64:                                        ; preds = %if.end.63, %if.then.47
  br label %if.end.65

if.end.65:                                        ; preds = %if.end.64, %if.end.30
  br label %while.body

while.end:                                        ; preds = %if.then.61, %if.then.28, %if.then.14, %if.then.6
  %45 = load i8, i8* %progress_in, align 1
  %conv66 = zext i8 %45 to i32
  %tobool67 = icmp ne i32 %conv66, 0
  br i1 %tobool67, label %lor.end, label %lor.rhs

lor.rhs:                                          ; preds = %while.end
  %46 = load i8, i8* %progress_out, align 1
  %conv68 = zext i8 %46 to i32
  %tobool69 = icmp ne i32 %conv68, 0
  br label %lor.end

lor.end:                                          ; preds = %lor.rhs, %while.end
  %47 = phi i1 [ true, %while.end ], [ %tobool69, %lor.rhs ]
  %lor.ext = zext i1 %47 to i32
  %conv70 = trunc i32 %lor.ext to i8
  ret i8 %conv70
}

; Function Attrs: nounwind uwtable
define internal zeroext i8 @isempty_RL(%struct.EState* %s) #0 {
entry:
  %retval = alloca i8, align 1
  %s.addr = alloca %struct.EState*, align 8
  store %struct.EState* %s, %struct.EState** %s.addr, align 8
  %0 = load %struct.EState*, %struct.EState** %s.addr, align 8
  %state_in_ch = getelementptr inbounds %struct.EState, %struct.EState* %0, i32 0, i32 13
  %1 = load i32, i32* %state_in_ch, align 4
  %cmp = icmp ult i32 %1, 256
  br i1 %cmp, label %land.lhs.true, label %if.else

land.lhs.true:                                    ; preds = %entry
  %2 = load %struct.EState*, %struct.EState** %s.addr, align 8
  %state_in_len = getelementptr inbounds %struct.EState, %struct.EState* %2, i32 0, i32 14
  %3 = load i32, i32* %state_in_len, align 4
  %cmp1 = icmp sgt i32 %3, 0
  br i1 %cmp1, label %if.then, label %if.else

if.then:                                          ; preds = %land.lhs.true
  store i8 0, i8* %retval
  br label %return

if.else:                                          ; preds = %land.lhs.true, %entry
  store i8 1, i8* %retval
  br label %return

return:                                           ; preds = %if.else, %if.then
  %4 = load i8, i8* %retval
  ret i8 %4
}

; Function Attrs: nounwind uwtable
define i32 @BZ2_bzCompressEnd(%struct.bz_stream* %strm) #0 {
entry:
  %retval = alloca i32, align 4
  %strm.addr = alloca %struct.bz_stream*, align 8
  %s = alloca %struct.EState*, align 8
  store %struct.bz_stream* %strm, %struct.bz_stream** %strm.addr, align 8
  %0 = load %struct.bz_stream*, %struct.bz_stream** %strm.addr, align 8
  %cmp = icmp eq %struct.bz_stream* %0, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store i32 -2, i32* %retval
  br label %return

if.end:                                           ; preds = %entry
  %1 = load %struct.bz_stream*, %struct.bz_stream** %strm.addr, align 8
  %state = getelementptr inbounds %struct.bz_stream, %struct.bz_stream* %1, i32 0, i32 8
  %2 = load i8*, i8** %state, align 8
  %3 = bitcast i8* %2 to %struct.EState*
  store %struct.EState* %3, %struct.EState** %s, align 8
  %4 = load %struct.EState*, %struct.EState** %s, align 8
  %cmp1 = icmp eq %struct.EState* %4, null
  br i1 %cmp1, label %if.then.2, label %if.end.3

if.then.2:                                        ; preds = %if.end
  store i32 -2, i32* %retval
  br label %return

if.end.3:                                         ; preds = %if.end
  %5 = load %struct.EState*, %struct.EState** %s, align 8
  %strm4 = getelementptr inbounds %struct.EState, %struct.EState* %5, i32 0, i32 0
  %6 = load %struct.bz_stream*, %struct.bz_stream** %strm4, align 8
  %7 = load %struct.bz_stream*, %struct.bz_stream** %strm.addr, align 8
  %cmp5 = icmp ne %struct.bz_stream* %6, %7
  br i1 %cmp5, label %if.then.6, label %if.end.7

if.then.6:                                        ; preds = %if.end.3
  store i32 -2, i32* %retval
  br label %return

if.end.7:                                         ; preds = %if.end.3
  %8 = load %struct.EState*, %struct.EState** %s, align 8
  %arr1 = getelementptr inbounds %struct.EState, %struct.EState* %8, i32 0, i32 4
  %9 = load i32*, i32** %arr1, align 8
  %cmp8 = icmp ne i32* %9, null
  br i1 %cmp8, label %if.then.9, label %if.end.11

if.then.9:                                        ; preds = %if.end.7
  %10 = load %struct.bz_stream*, %struct.bz_stream** %strm.addr, align 8
  %bzfree = getelementptr inbounds %struct.bz_stream, %struct.bz_stream* %10, i32 0, i32 10
  %11 = load void (i8*, i8*)*, void (i8*, i8*)** %bzfree, align 8
  %12 = load %struct.bz_stream*, %struct.bz_stream** %strm.addr, align 8
  %opaque = getelementptr inbounds %struct.bz_stream, %struct.bz_stream* %12, i32 0, i32 11
  %13 = load i8*, i8** %opaque, align 8
  %14 = load %struct.EState*, %struct.EState** %s, align 8
  %arr110 = getelementptr inbounds %struct.EState, %struct.EState* %14, i32 0, i32 4
  %15 = load i32*, i32** %arr110, align 8
  %16 = bitcast i32* %15 to i8*
  call void %11(i8* %13, i8* %16)
  br label %if.end.11

if.end.11:                                        ; preds = %if.then.9, %if.end.7
  %17 = load %struct.EState*, %struct.EState** %s, align 8
  %arr2 = getelementptr inbounds %struct.EState, %struct.EState* %17, i32 0, i32 5
  %18 = load i32*, i32** %arr2, align 8
  %cmp12 = icmp ne i32* %18, null
  br i1 %cmp12, label %if.then.13, label %if.end.17

if.then.13:                                       ; preds = %if.end.11
  %19 = load %struct.bz_stream*, %struct.bz_stream** %strm.addr, align 8
  %bzfree14 = getelementptr inbounds %struct.bz_stream, %struct.bz_stream* %19, i32 0, i32 10
  %20 = load void (i8*, i8*)*, void (i8*, i8*)** %bzfree14, align 8
  %21 = load %struct.bz_stream*, %struct.bz_stream** %strm.addr, align 8
  %opaque15 = getelementptr inbounds %struct.bz_stream, %struct.bz_stream* %21, i32 0, i32 11
  %22 = load i8*, i8** %opaque15, align 8
  %23 = load %struct.EState*, %struct.EState** %s, align 8
  %arr216 = getelementptr inbounds %struct.EState, %struct.EState* %23, i32 0, i32 5
  %24 = load i32*, i32** %arr216, align 8
  %25 = bitcast i32* %24 to i8*
  call void %20(i8* %22, i8* %25)
  br label %if.end.17

if.end.17:                                        ; preds = %if.then.13, %if.end.11
  %26 = load %struct.EState*, %struct.EState** %s, align 8
  %ftab = getelementptr inbounds %struct.EState, %struct.EState* %26, i32 0, i32 6
  %27 = load i32*, i32** %ftab, align 8
  %cmp18 = icmp ne i32* %27, null
  br i1 %cmp18, label %if.then.19, label %if.end.23

if.then.19:                                       ; preds = %if.end.17
  %28 = load %struct.bz_stream*, %struct.bz_stream** %strm.addr, align 8
  %bzfree20 = getelementptr inbounds %struct.bz_stream, %struct.bz_stream* %28, i32 0, i32 10
  %29 = load void (i8*, i8*)*, void (i8*, i8*)** %bzfree20, align 8
  %30 = load %struct.bz_stream*, %struct.bz_stream** %strm.addr, align 8
  %opaque21 = getelementptr inbounds %struct.bz_stream, %struct.bz_stream* %30, i32 0, i32 11
  %31 = load i8*, i8** %opaque21, align 8
  %32 = load %struct.EState*, %struct.EState** %s, align 8
  %ftab22 = getelementptr inbounds %struct.EState, %struct.EState* %32, i32 0, i32 6
  %33 = load i32*, i32** %ftab22, align 8
  %34 = bitcast i32* %33 to i8*
  call void %29(i8* %31, i8* %34)
  br label %if.end.23

if.end.23:                                        ; preds = %if.then.19, %if.end.17
  %35 = load %struct.bz_stream*, %struct.bz_stream** %strm.addr, align 8
  %bzfree24 = getelementptr inbounds %struct.bz_stream, %struct.bz_stream* %35, i32 0, i32 10
  %36 = load void (i8*, i8*)*, void (i8*, i8*)** %bzfree24, align 8
  %37 = load %struct.bz_stream*, %struct.bz_stream** %strm.addr, align 8
  %opaque25 = getelementptr inbounds %struct.bz_stream, %struct.bz_stream* %37, i32 0, i32 11
  %38 = load i8*, i8** %opaque25, align 8
  %39 = load %struct.bz_stream*, %struct.bz_stream** %strm.addr, align 8
  %state26 = getelementptr inbounds %struct.bz_stream, %struct.bz_stream* %39, i32 0, i32 8
  %40 = load i8*, i8** %state26, align 8
  call void %36(i8* %38, i8* %40)
  %41 = load %struct.bz_stream*, %struct.bz_stream** %strm.addr, align 8
  %state27 = getelementptr inbounds %struct.bz_stream, %struct.bz_stream* %41, i32 0, i32 8
  store i8* null, i8** %state27, align 8
  store i32 0, i32* %retval
  br label %return

return:                                           ; preds = %if.end.23, %if.then.6, %if.then.2, %if.then
  %42 = load i32, i32* %retval
  ret i32 %42
}

; Function Attrs: nounwind uwtable
define i32 @BZ2_bzDecompressInit(%struct.bz_stream* %strm, i32 %verbosity, i32 %small) #0 {
entry:
  %retval = alloca i32, align 4
  %strm.addr = alloca %struct.bz_stream*, align 8
  %verbosity.addr = alloca i32, align 4
  %small.addr = alloca i32, align 4
  %s = alloca %struct.DState*, align 8
  store %struct.bz_stream* %strm, %struct.bz_stream** %strm.addr, align 8
  store i32 %verbosity, i32* %verbosity.addr, align 4
  store i32 %small, i32* %small.addr, align 4
  %call = call i32 @bz_config_ok()
  %tobool = icmp ne i32 %call, 0
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  store i32 -9, i32* %retval
  br label %return

if.end:                                           ; preds = %entry
  %0 = load %struct.bz_stream*, %struct.bz_stream** %strm.addr, align 8
  %cmp = icmp eq %struct.bz_stream* %0, null
  br i1 %cmp, label %if.then.1, label %if.end.2

if.then.1:                                        ; preds = %if.end
  store i32 -2, i32* %retval
  br label %return

if.end.2:                                         ; preds = %if.end
  %1 = load i32, i32* %small.addr, align 4
  %cmp3 = icmp ne i32 %1, 0
  br i1 %cmp3, label %land.lhs.true, label %if.end.6

land.lhs.true:                                    ; preds = %if.end.2
  %2 = load i32, i32* %small.addr, align 4
  %cmp4 = icmp ne i32 %2, 1
  br i1 %cmp4, label %if.then.5, label %if.end.6

if.then.5:                                        ; preds = %land.lhs.true
  store i32 -2, i32* %retval
  br label %return

if.end.6:                                         ; preds = %land.lhs.true, %if.end.2
  %3 = load i32, i32* %verbosity.addr, align 4
  %cmp7 = icmp slt i32 %3, 0
  br i1 %cmp7, label %if.then.9, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.end.6
  %4 = load i32, i32* %verbosity.addr, align 4
  %cmp8 = icmp sgt i32 %4, 4
  br i1 %cmp8, label %if.then.9, label %if.end.10

if.then.9:                                        ; preds = %lor.lhs.false, %if.end.6
  store i32 -2, i32* %retval
  br label %return

if.end.10:                                        ; preds = %lor.lhs.false
  %5 = load %struct.bz_stream*, %struct.bz_stream** %strm.addr, align 8
  %bzalloc = getelementptr inbounds %struct.bz_stream, %struct.bz_stream* %5, i32 0, i32 9
  %6 = load i8* (i8*, i32, i32)*, i8* (i8*, i32, i32)** %bzalloc, align 8
  %cmp11 = icmp eq i8* (i8*, i32, i32)* %6, null
  br i1 %cmp11, label %if.then.12, label %if.end.14

if.then.12:                                       ; preds = %if.end.10
  %7 = load %struct.bz_stream*, %struct.bz_stream** %strm.addr, align 8
  %bzalloc13 = getelementptr inbounds %struct.bz_stream, %struct.bz_stream* %7, i32 0, i32 9
  store i8* (i8*, i32, i32)* @default_bzalloc, i8* (i8*, i32, i32)** %bzalloc13, align 8
  br label %if.end.14

if.end.14:                                        ; preds = %if.then.12, %if.end.10
  %8 = load %struct.bz_stream*, %struct.bz_stream** %strm.addr, align 8
  %bzfree = getelementptr inbounds %struct.bz_stream, %struct.bz_stream* %8, i32 0, i32 10
  %9 = load void (i8*, i8*)*, void (i8*, i8*)** %bzfree, align 8
  %cmp15 = icmp eq void (i8*, i8*)* %9, null
  br i1 %cmp15, label %if.then.16, label %if.end.18

if.then.16:                                       ; preds = %if.end.14
  %10 = load %struct.bz_stream*, %struct.bz_stream** %strm.addr, align 8
  %bzfree17 = getelementptr inbounds %struct.bz_stream, %struct.bz_stream* %10, i32 0, i32 10
  store void (i8*, i8*)* @default_bzfree, void (i8*, i8*)** %bzfree17, align 8
  br label %if.end.18

if.end.18:                                        ; preds = %if.then.16, %if.end.14
  %11 = load %struct.bz_stream*, %struct.bz_stream** %strm.addr, align 8
  %bzalloc19 = getelementptr inbounds %struct.bz_stream, %struct.bz_stream* %11, i32 0, i32 9
  %12 = load i8* (i8*, i32, i32)*, i8* (i8*, i32, i32)** %bzalloc19, align 8
  %13 = load %struct.bz_stream*, %struct.bz_stream** %strm.addr, align 8
  %opaque = getelementptr inbounds %struct.bz_stream, %struct.bz_stream* %13, i32 0, i32 11
  %14 = load i8*, i8** %opaque, align 8
  %call20 = call i8* %12(i8* %14, i32 64144, i32 1)
  %15 = bitcast i8* %call20 to %struct.DState*
  store %struct.DState* %15, %struct.DState** %s, align 8
  %16 = load %struct.DState*, %struct.DState** %s, align 8
  %cmp21 = icmp eq %struct.DState* %16, null
  br i1 %cmp21, label %if.then.22, label %if.end.23

if.then.22:                                       ; preds = %if.end.18
  store i32 -3, i32* %retval
  br label %return

if.end.23:                                        ; preds = %if.end.18
  %17 = load %struct.bz_stream*, %struct.bz_stream** %strm.addr, align 8
  %18 = load %struct.DState*, %struct.DState** %s, align 8
  %strm24 = getelementptr inbounds %struct.DState, %struct.DState* %18, i32 0, i32 0
  store %struct.bz_stream* %17, %struct.bz_stream** %strm24, align 8
  %19 = load %struct.DState*, %struct.DState** %s, align 8
  %20 = bitcast %struct.DState* %19 to i8*
  %21 = load %struct.bz_stream*, %struct.bz_stream** %strm.addr, align 8
  %state = getelementptr inbounds %struct.bz_stream, %struct.bz_stream* %21, i32 0, i32 8
  store i8* %20, i8** %state, align 8
  %22 = load %struct.DState*, %struct.DState** %s, align 8
  %state25 = getelementptr inbounds %struct.DState, %struct.DState* %22, i32 0, i32 1
  store i32 10, i32* %state25, align 4
  %23 = load %struct.DState*, %struct.DState** %s, align 8
  %bsLive = getelementptr inbounds %struct.DState, %struct.DState* %23, i32 0, i32 8
  store i32 0, i32* %bsLive, align 4
  %24 = load %struct.DState*, %struct.DState** %s, align 8
  %bsBuff = getelementptr inbounds %struct.DState, %struct.DState* %24, i32 0, i32 7
  store i32 0, i32* %bsBuff, align 4
  %25 = load %struct.DState*, %struct.DState** %s, align 8
  %calculatedCombinedCRC = getelementptr inbounds %struct.DState, %struct.DState* %25, i32 0, i32 26
  store i32 0, i32* %calculatedCombinedCRC, align 4
  %26 = load %struct.bz_stream*, %struct.bz_stream** %strm.addr, align 8
  %total_in_lo32 = getelementptr inbounds %struct.bz_stream, %struct.bz_stream* %26, i32 0, i32 2
  store i32 0, i32* %total_in_lo32, align 4
  %27 = load %struct.bz_stream*, %struct.bz_stream** %strm.addr, align 8
  %total_in_hi32 = getelementptr inbounds %struct.bz_stream, %struct.bz_stream* %27, i32 0, i32 3
  store i32 0, i32* %total_in_hi32, align 4
  %28 = load %struct.bz_stream*, %struct.bz_stream** %strm.addr, align 8
  %total_out_lo32 = getelementptr inbounds %struct.bz_stream, %struct.bz_stream* %28, i32 0, i32 6
  store i32 0, i32* %total_out_lo32, align 4
  %29 = load %struct.bz_stream*, %struct.bz_stream** %strm.addr, align 8
  %total_out_hi32 = getelementptr inbounds %struct.bz_stream, %struct.bz_stream* %29, i32 0, i32 7
  store i32 0, i32* %total_out_hi32, align 4
  %30 = load i32, i32* %small.addr, align 4
  %conv = trunc i32 %30 to i8
  %31 = load %struct.DState*, %struct.DState** %s, align 8
  %smallDecompress = getelementptr inbounds %struct.DState, %struct.DState* %31, i32 0, i32 10
  store i8 %conv, i8* %smallDecompress, align 1
  %32 = load %struct.DState*, %struct.DState** %s, align 8
  %ll4 = getelementptr inbounds %struct.DState, %struct.DState* %32, i32 0, i32 22
  store i8* null, i8** %ll4, align 8
  %33 = load %struct.DState*, %struct.DState** %s, align 8
  %ll16 = getelementptr inbounds %struct.DState, %struct.DState* %33, i32 0, i32 21
  store i16* null, i16** %ll16, align 8
  %34 = load %struct.DState*, %struct.DState** %s, align 8
  %tt = getelementptr inbounds %struct.DState, %struct.DState* %34, i32 0, i32 20
  store i32* null, i32** %tt, align 8
  %35 = load %struct.DState*, %struct.DState** %s, align 8
  %currBlockNo = getelementptr inbounds %struct.DState, %struct.DState* %35, i32 0, i32 11
  store i32 0, i32* %currBlockNo, align 4
  %36 = load i32, i32* %verbosity.addr, align 4
  %37 = load %struct.DState*, %struct.DState** %s, align 8
  %verbosity26 = getelementptr inbounds %struct.DState, %struct.DState* %37, i32 0, i32 12
  store i32 %36, i32* %verbosity26, align 4
  store i32 0, i32* %retval
  br label %return

return:                                           ; preds = %if.end.23, %if.then.22, %if.then.9, %if.then.5, %if.then.1, %if.then
  %38 = load i32, i32* %retval
  ret i32 %38
}

; Function Attrs: nounwind uwtable
define i32 @BZ2_indexIntoF(i32 %indx, i32* %cftab) #0 {
entry:
  %indx.addr = alloca i32, align 4
  %cftab.addr = alloca i32*, align 8
  %nb = alloca i32, align 4
  %na = alloca i32, align 4
  %mid = alloca i32, align 4
  store i32 %indx, i32* %indx.addr, align 4
  store i32* %cftab, i32** %cftab.addr, align 8
  store i32 0, i32* %nb, align 4
  store i32 256, i32* %na, align 4
  br label %do.body

do.body:                                          ; preds = %do.cond, %entry
  %0 = load i32, i32* %nb, align 4
  %1 = load i32, i32* %na, align 4
  %add = add nsw i32 %0, %1
  %shr = ashr i32 %add, 1
  store i32 %shr, i32* %mid, align 4
  %2 = load i32, i32* %indx.addr, align 4
  %3 = load i32, i32* %mid, align 4
  %idxprom = sext i32 %3 to i64
  %4 = load i32*, i32** %cftab.addr, align 8
  %arrayidx = getelementptr inbounds i32, i32* %4, i64 %idxprom
  %5 = load i32, i32* %arrayidx, align 4
  %cmp = icmp sge i32 %2, %5
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %do.body
  %6 = load i32, i32* %mid, align 4
  store i32 %6, i32* %nb, align 4
  br label %if.end

if.else:                                          ; preds = %do.body
  %7 = load i32, i32* %mid, align 4
  store i32 %7, i32* %na, align 4
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  br label %do.cond

do.cond:                                          ; preds = %if.end
  %8 = load i32, i32* %na, align 4
  %9 = load i32, i32* %nb, align 4
  %sub = sub nsw i32 %8, %9
  %cmp1 = icmp ne i32 %sub, 1
  br i1 %cmp1, label %do.body, label %do.end

do.end:                                           ; preds = %do.cond
  %10 = load i32, i32* %nb, align 4
  ret i32 %10
}

; Function Attrs: nounwind uwtable
define i32 @BZ2_bzDecompress(%struct.bz_stream* %strm) #0 {
entry:
  %retval = alloca i32, align 4
  %strm.addr = alloca %struct.bz_stream*, align 8
  %corrupt = alloca i8, align 1
  %s = alloca %struct.DState*, align 8
  %r = alloca i32, align 4
  store %struct.bz_stream* %strm, %struct.bz_stream** %strm.addr, align 8
  %0 = load %struct.bz_stream*, %struct.bz_stream** %strm.addr, align 8
  %cmp = icmp eq %struct.bz_stream* %0, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store i32 -2, i32* %retval
  br label %return

if.end:                                           ; preds = %entry
  %1 = load %struct.bz_stream*, %struct.bz_stream** %strm.addr, align 8
  %state = getelementptr inbounds %struct.bz_stream, %struct.bz_stream* %1, i32 0, i32 8
  %2 = load i8*, i8** %state, align 8
  %3 = bitcast i8* %2 to %struct.DState*
  store %struct.DState* %3, %struct.DState** %s, align 8
  %4 = load %struct.DState*, %struct.DState** %s, align 8
  %cmp1 = icmp eq %struct.DState* %4, null
  br i1 %cmp1, label %if.then.2, label %if.end.3

if.then.2:                                        ; preds = %if.end
  store i32 -2, i32* %retval
  br label %return

if.end.3:                                         ; preds = %if.end
  %5 = load %struct.DState*, %struct.DState** %s, align 8
  %strm4 = getelementptr inbounds %struct.DState, %struct.DState* %5, i32 0, i32 0
  %6 = load %struct.bz_stream*, %struct.bz_stream** %strm4, align 8
  %7 = load %struct.bz_stream*, %struct.bz_stream** %strm.addr, align 8
  %cmp5 = icmp ne %struct.bz_stream* %6, %7
  br i1 %cmp5, label %if.then.6, label %if.end.7

if.then.6:                                        ; preds = %if.end.3
  store i32 -2, i32* %retval
  br label %return

if.end.7:                                         ; preds = %if.end.3
  br label %while.body

while.body:                                       ; preds = %if.end.7, %if.end.70
  %8 = load %struct.DState*, %struct.DState** %s, align 8
  %state8 = getelementptr inbounds %struct.DState, %struct.DState* %8, i32 0, i32 1
  %9 = load i32, i32* %state8, align 4
  %cmp9 = icmp eq i32 %9, 1
  br i1 %cmp9, label %if.then.10, label %if.end.11

if.then.10:                                       ; preds = %while.body
  store i32 -1, i32* %retval
  br label %return

if.end.11:                                        ; preds = %while.body
  %10 = load %struct.DState*, %struct.DState** %s, align 8
  %state12 = getelementptr inbounds %struct.DState, %struct.DState* %10, i32 0, i32 1
  %11 = load i32, i32* %state12, align 4
  %cmp13 = icmp eq i32 %11, 2
  br i1 %cmp13, label %if.then.14, label %if.end.47

if.then.14:                                       ; preds = %if.end.11
  %12 = load %struct.DState*, %struct.DState** %s, align 8
  %smallDecompress = getelementptr inbounds %struct.DState, %struct.DState* %12, i32 0, i32 10
  %13 = load i8, i8* %smallDecompress, align 1
  %tobool = icmp ne i8 %13, 0
  br i1 %tobool, label %if.then.15, label %if.else

if.then.15:                                       ; preds = %if.then.14
  %14 = load %struct.DState*, %struct.DState** %s, align 8
  %call = call zeroext i8 @unRLE_obuf_to_output_SMALL(%struct.DState* %14)
  store i8 %call, i8* %corrupt, align 1
  br label %if.end.17

if.else:                                          ; preds = %if.then.14
  %15 = load %struct.DState*, %struct.DState** %s, align 8
  %call16 = call zeroext i8 @unRLE_obuf_to_output_FAST(%struct.DState* %15)
  store i8 %call16, i8* %corrupt, align 1
  br label %if.end.17

if.end.17:                                        ; preds = %if.else, %if.then.15
  %16 = load i8, i8* %corrupt, align 1
  %tobool18 = icmp ne i8 %16, 0
  br i1 %tobool18, label %if.then.19, label %if.end.20

if.then.19:                                       ; preds = %if.end.17
  store i32 -4, i32* %retval
  br label %return

if.end.20:                                        ; preds = %if.end.17
  %17 = load %struct.DState*, %struct.DState** %s, align 8
  %nblock_used = getelementptr inbounds %struct.DState, %struct.DState* %17, i32 0, i32 17
  %18 = load i32, i32* %nblock_used, align 4
  %19 = load %struct.DState*, %struct.DState** %s, align 8
  %save_nblock = getelementptr inbounds %struct.DState, %struct.DState* %19, i32 0, i32 51
  %20 = load i32, i32* %save_nblock, align 4
  %add = add nsw i32 %20, 1
  %cmp21 = icmp eq i32 %18, %add
  br i1 %cmp21, label %land.lhs.true, label %if.else.45

land.lhs.true:                                    ; preds = %if.end.20
  %21 = load %struct.DState*, %struct.DState** %s, align 8
  %state_out_len = getelementptr inbounds %struct.DState, %struct.DState* %21, i32 0, i32 3
  %22 = load i32, i32* %state_out_len, align 4
  %cmp22 = icmp eq i32 %22, 0
  br i1 %cmp22, label %if.then.23, label %if.else.45

if.then.23:                                       ; preds = %land.lhs.true
  %23 = load %struct.DState*, %struct.DState** %s, align 8
  %calculatedBlockCRC = getelementptr inbounds %struct.DState, %struct.DState* %23, i32 0, i32 25
  %24 = load i32, i32* %calculatedBlockCRC, align 4
  %neg = xor i32 %24, -1
  %25 = load %struct.DState*, %struct.DState** %s, align 8
  %calculatedBlockCRC24 = getelementptr inbounds %struct.DState, %struct.DState* %25, i32 0, i32 25
  store i32 %neg, i32* %calculatedBlockCRC24, align 4
  %26 = load %struct.DState*, %struct.DState** %s, align 8
  %verbosity = getelementptr inbounds %struct.DState, %struct.DState* %26, i32 0, i32 12
  %27 = load i32, i32* %verbosity, align 4
  %cmp25 = icmp sge i32 %27, 3
  br i1 %cmp25, label %if.then.26, label %if.end.29

if.then.26:                                       ; preds = %if.then.23
  %28 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %29 = load %struct.DState*, %struct.DState** %s, align 8
  %storedBlockCRC = getelementptr inbounds %struct.DState, %struct.DState* %29, i32 0, i32 23
  %30 = load i32, i32* %storedBlockCRC, align 4
  %31 = load %struct.DState*, %struct.DState** %s, align 8
  %calculatedBlockCRC27 = getelementptr inbounds %struct.DState, %struct.DState* %31, i32 0, i32 25
  %32 = load i32, i32* %calculatedBlockCRC27, align 4
  %call28 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %28, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.2, i32 0, i32 0), i32 %30, i32 %32)
  br label %if.end.29

if.end.29:                                        ; preds = %if.then.26, %if.then.23
  %33 = load %struct.DState*, %struct.DState** %s, align 8
  %verbosity30 = getelementptr inbounds %struct.DState, %struct.DState* %33, i32 0, i32 12
  %34 = load i32, i32* %verbosity30, align 4
  %cmp31 = icmp sge i32 %34, 2
  br i1 %cmp31, label %if.then.32, label %if.end.34

if.then.32:                                       ; preds = %if.end.29
  %35 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %call33 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %35, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.3, i32 0, i32 0))
  br label %if.end.34

if.end.34:                                        ; preds = %if.then.32, %if.end.29
  %36 = load %struct.DState*, %struct.DState** %s, align 8
  %calculatedBlockCRC35 = getelementptr inbounds %struct.DState, %struct.DState* %36, i32 0, i32 25
  %37 = load i32, i32* %calculatedBlockCRC35, align 4
  %38 = load %struct.DState*, %struct.DState** %s, align 8
  %storedBlockCRC36 = getelementptr inbounds %struct.DState, %struct.DState* %38, i32 0, i32 23
  %39 = load i32, i32* %storedBlockCRC36, align 4
  %cmp37 = icmp ne i32 %37, %39
  br i1 %cmp37, label %if.then.38, label %if.end.39

if.then.38:                                       ; preds = %if.end.34
  store i32 -4, i32* %retval
  br label %return

if.end.39:                                        ; preds = %if.end.34
  %40 = load %struct.DState*, %struct.DState** %s, align 8
  %calculatedCombinedCRC = getelementptr inbounds %struct.DState, %struct.DState* %40, i32 0, i32 26
  %41 = load i32, i32* %calculatedCombinedCRC, align 4
  %shl = shl i32 %41, 1
  %42 = load %struct.DState*, %struct.DState** %s, align 8
  %calculatedCombinedCRC40 = getelementptr inbounds %struct.DState, %struct.DState* %42, i32 0, i32 26
  %43 = load i32, i32* %calculatedCombinedCRC40, align 4
  %shr = lshr i32 %43, 31
  %or = or i32 %shl, %shr
  %44 = load %struct.DState*, %struct.DState** %s, align 8
  %calculatedCombinedCRC41 = getelementptr inbounds %struct.DState, %struct.DState* %44, i32 0, i32 26
  store i32 %or, i32* %calculatedCombinedCRC41, align 4
  %45 = load %struct.DState*, %struct.DState** %s, align 8
  %calculatedBlockCRC42 = getelementptr inbounds %struct.DState, %struct.DState* %45, i32 0, i32 25
  %46 = load i32, i32* %calculatedBlockCRC42, align 4
  %47 = load %struct.DState*, %struct.DState** %s, align 8
  %calculatedCombinedCRC43 = getelementptr inbounds %struct.DState, %struct.DState* %47, i32 0, i32 26
  %48 = load i32, i32* %calculatedCombinedCRC43, align 4
  %xor = xor i32 %48, %46
  store i32 %xor, i32* %calculatedCombinedCRC43, align 4
  %49 = load %struct.DState*, %struct.DState** %s, align 8
  %state44 = getelementptr inbounds %struct.DState, %struct.DState* %49, i32 0, i32 1
  store i32 14, i32* %state44, align 4
  br label %if.end.46

if.else.45:                                       ; preds = %land.lhs.true, %if.end.20
  store i32 0, i32* %retval
  br label %return

if.end.46:                                        ; preds = %if.end.39
  br label %if.end.47

if.end.47:                                        ; preds = %if.end.46, %if.end.11
  %50 = load %struct.DState*, %struct.DState** %s, align 8
  %state48 = getelementptr inbounds %struct.DState, %struct.DState* %50, i32 0, i32 1
  %51 = load i32, i32* %state48, align 4
  %cmp49 = icmp sge i32 %51, 10
  br i1 %cmp49, label %if.then.50, label %if.end.70

if.then.50:                                       ; preds = %if.end.47
  %52 = load %struct.DState*, %struct.DState** %s, align 8
  %call51 = call i32 @BZ2_decompress(%struct.DState* %52)
  store i32 %call51, i32* %r, align 4
  %53 = load i32, i32* %r, align 4
  %cmp52 = icmp eq i32 %53, 4
  br i1 %cmp52, label %if.then.53, label %if.end.65

if.then.53:                                       ; preds = %if.then.50
  %54 = load %struct.DState*, %struct.DState** %s, align 8
  %verbosity54 = getelementptr inbounds %struct.DState, %struct.DState* %54, i32 0, i32 12
  %55 = load i32, i32* %verbosity54, align 4
  %cmp55 = icmp sge i32 %55, 3
  br i1 %cmp55, label %if.then.56, label %if.end.59

if.then.56:                                       ; preds = %if.then.53
  %56 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %57 = load %struct.DState*, %struct.DState** %s, align 8
  %storedCombinedCRC = getelementptr inbounds %struct.DState, %struct.DState* %57, i32 0, i32 24
  %58 = load i32, i32* %storedCombinedCRC, align 4
  %59 = load %struct.DState*, %struct.DState** %s, align 8
  %calculatedCombinedCRC57 = getelementptr inbounds %struct.DState, %struct.DState* %59, i32 0, i32 26
  %60 = load i32, i32* %calculatedCombinedCRC57, align 4
  %call58 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %56, i8* getelementptr inbounds ([55 x i8], [55 x i8]* @.str.4, i32 0, i32 0), i32 %58, i32 %60)
  br label %if.end.59

if.end.59:                                        ; preds = %if.then.56, %if.then.53
  %61 = load %struct.DState*, %struct.DState** %s, align 8
  %calculatedCombinedCRC60 = getelementptr inbounds %struct.DState, %struct.DState* %61, i32 0, i32 26
  %62 = load i32, i32* %calculatedCombinedCRC60, align 4
  %63 = load %struct.DState*, %struct.DState** %s, align 8
  %storedCombinedCRC61 = getelementptr inbounds %struct.DState, %struct.DState* %63, i32 0, i32 24
  %64 = load i32, i32* %storedCombinedCRC61, align 4
  %cmp62 = icmp ne i32 %62, %64
  br i1 %cmp62, label %if.then.63, label %if.end.64

if.then.63:                                       ; preds = %if.end.59
  store i32 -4, i32* %retval
  br label %return

if.end.64:                                        ; preds = %if.end.59
  %65 = load i32, i32* %r, align 4
  store i32 %65, i32* %retval
  br label %return

if.end.65:                                        ; preds = %if.then.50
  %66 = load %struct.DState*, %struct.DState** %s, align 8
  %state66 = getelementptr inbounds %struct.DState, %struct.DState* %66, i32 0, i32 1
  %67 = load i32, i32* %state66, align 4
  %cmp67 = icmp ne i32 %67, 2
  br i1 %cmp67, label %if.then.68, label %if.end.69

if.then.68:                                       ; preds = %if.end.65
  %68 = load i32, i32* %r, align 4
  store i32 %68, i32* %retval
  br label %return

if.end.69:                                        ; preds = %if.end.65
  br label %if.end.70

if.end.70:                                        ; preds = %if.end.69, %if.end.47
  br label %while.body

return:                                           ; preds = %if.then.68, %if.end.64, %if.then.63, %if.else.45, %if.then.38, %if.then.19, %if.then.10, %if.then.6, %if.then.2, %if.then
  %69 = load i32, i32* %retval
  ret i32 %69
}

; Function Attrs: nounwind uwtable
define internal zeroext i8 @unRLE_obuf_to_output_SMALL(%struct.DState* %s) #0 {
entry:
  %retval = alloca i8, align 1
  %s.addr = alloca %struct.DState*, align 8
  %k1 = alloca i8, align 1
  store %struct.DState* %s, %struct.DState** %s.addr, align 8
  %0 = load %struct.DState*, %struct.DState** %s.addr, align 8
  %blockRandomised = getelementptr inbounds %struct.DState, %struct.DState* %0, i32 0, i32 4
  %1 = load i8, i8* %blockRandomised, align 1
  %tobool = icmp ne i8 %1, 0
  br i1 %tobool, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  br label %while.body

while.body:                                       ; preds = %if.then, %if.then.87, %if.then.93, %if.then.155, %if.then.161, %if.then.223, %if.then.229, %if.end.328
  br label %while.body.2

while.body.2:                                     ; preds = %while.body, %if.end.26
  %2 = load %struct.DState*, %struct.DState** %s.addr, align 8
  %strm = getelementptr inbounds %struct.DState, %struct.DState* %2, i32 0, i32 0
  %3 = load %struct.bz_stream*, %struct.bz_stream** %strm, align 8
  %avail_out = getelementptr inbounds %struct.bz_stream, %struct.bz_stream* %3, i32 0, i32 5
  %4 = load i32, i32* %avail_out, align 4
  %cmp = icmp eq i32 %4, 0
  br i1 %cmp, label %if.then.3, label %if.end

if.then.3:                                        ; preds = %while.body.2
  store i8 0, i8* %retval
  br label %return

if.end:                                           ; preds = %while.body.2
  %5 = load %struct.DState*, %struct.DState** %s.addr, align 8
  %state_out_len = getelementptr inbounds %struct.DState, %struct.DState* %5, i32 0, i32 3
  %6 = load i32, i32* %state_out_len, align 4
  %cmp4 = icmp eq i32 %6, 0
  br i1 %cmp4, label %if.then.5, label %if.end.6

if.then.5:                                        ; preds = %if.end
  br label %while.end

if.end.6:                                         ; preds = %if.end
  %7 = load %struct.DState*, %struct.DState** %s.addr, align 8
  %state_out_ch = getelementptr inbounds %struct.DState, %struct.DState* %7, i32 0, i32 2
  %8 = load i8, i8* %state_out_ch, align 1
  %9 = load %struct.DState*, %struct.DState** %s.addr, align 8
  %strm7 = getelementptr inbounds %struct.DState, %struct.DState* %9, i32 0, i32 0
  %10 = load %struct.bz_stream*, %struct.bz_stream** %strm7, align 8
  %next_out = getelementptr inbounds %struct.bz_stream, %struct.bz_stream* %10, i32 0, i32 4
  %11 = load i8*, i8** %next_out, align 8
  store i8 %8, i8* %11, align 1
  %12 = load %struct.DState*, %struct.DState** %s.addr, align 8
  %calculatedBlockCRC = getelementptr inbounds %struct.DState, %struct.DState* %12, i32 0, i32 25
  %13 = load i32, i32* %calculatedBlockCRC, align 4
  %shl = shl i32 %13, 8
  %14 = load %struct.DState*, %struct.DState** %s.addr, align 8
  %calculatedBlockCRC8 = getelementptr inbounds %struct.DState, %struct.DState* %14, i32 0, i32 25
  %15 = load i32, i32* %calculatedBlockCRC8, align 4
  %shr = lshr i32 %15, 24
  %16 = load %struct.DState*, %struct.DState** %s.addr, align 8
  %state_out_ch9 = getelementptr inbounds %struct.DState, %struct.DState* %16, i32 0, i32 2
  %17 = load i8, i8* %state_out_ch9, align 1
  %conv = zext i8 %17 to i32
  %xor = xor i32 %shr, %conv
  %idxprom = zext i32 %xor to i64
  %arrayidx = getelementptr inbounds [256 x i32], [256 x i32]* @BZ2_crc32Table, i32 0, i64 %idxprom
  %18 = load i32, i32* %arrayidx, align 4
  %xor10 = xor i32 %shl, %18
  %19 = load %struct.DState*, %struct.DState** %s.addr, align 8
  %calculatedBlockCRC11 = getelementptr inbounds %struct.DState, %struct.DState* %19, i32 0, i32 25
  store i32 %xor10, i32* %calculatedBlockCRC11, align 4
  %20 = load %struct.DState*, %struct.DState** %s.addr, align 8
  %state_out_len12 = getelementptr inbounds %struct.DState, %struct.DState* %20, i32 0, i32 3
  %21 = load i32, i32* %state_out_len12, align 4
  %dec = add nsw i32 %21, -1
  store i32 %dec, i32* %state_out_len12, align 4
  %22 = load %struct.DState*, %struct.DState** %s.addr, align 8
  %strm13 = getelementptr inbounds %struct.DState, %struct.DState* %22, i32 0, i32 0
  %23 = load %struct.bz_stream*, %struct.bz_stream** %strm13, align 8
  %next_out14 = getelementptr inbounds %struct.bz_stream, %struct.bz_stream* %23, i32 0, i32 4
  %24 = load i8*, i8** %next_out14, align 8
  %incdec.ptr = getelementptr inbounds i8, i8* %24, i32 1
  store i8* %incdec.ptr, i8** %next_out14, align 8
  %25 = load %struct.DState*, %struct.DState** %s.addr, align 8
  %strm15 = getelementptr inbounds %struct.DState, %struct.DState* %25, i32 0, i32 0
  %26 = load %struct.bz_stream*, %struct.bz_stream** %strm15, align 8
  %avail_out16 = getelementptr inbounds %struct.bz_stream, %struct.bz_stream* %26, i32 0, i32 5
  %27 = load i32, i32* %avail_out16, align 4
  %dec17 = add i32 %27, -1
  store i32 %dec17, i32* %avail_out16, align 4
  %28 = load %struct.DState*, %struct.DState** %s.addr, align 8
  %strm18 = getelementptr inbounds %struct.DState, %struct.DState* %28, i32 0, i32 0
  %29 = load %struct.bz_stream*, %struct.bz_stream** %strm18, align 8
  %total_out_lo32 = getelementptr inbounds %struct.bz_stream, %struct.bz_stream* %29, i32 0, i32 6
  %30 = load i32, i32* %total_out_lo32, align 4
  %inc = add i32 %30, 1
  store i32 %inc, i32* %total_out_lo32, align 4
  %31 = load %struct.DState*, %struct.DState** %s.addr, align 8
  %strm19 = getelementptr inbounds %struct.DState, %struct.DState* %31, i32 0, i32 0
  %32 = load %struct.bz_stream*, %struct.bz_stream** %strm19, align 8
  %total_out_lo3220 = getelementptr inbounds %struct.bz_stream, %struct.bz_stream* %32, i32 0, i32 6
  %33 = load i32, i32* %total_out_lo3220, align 4
  %cmp21 = icmp eq i32 %33, 0
  br i1 %cmp21, label %if.then.23, label %if.end.26

if.then.23:                                       ; preds = %if.end.6
  %34 = load %struct.DState*, %struct.DState** %s.addr, align 8
  %strm24 = getelementptr inbounds %struct.DState, %struct.DState* %34, i32 0, i32 0
  %35 = load %struct.bz_stream*, %struct.bz_stream** %strm24, align 8
  %total_out_hi32 = getelementptr inbounds %struct.bz_stream, %struct.bz_stream* %35, i32 0, i32 7
  %36 = load i32, i32* %total_out_hi32, align 4
  %inc25 = add i32 %36, 1
  store i32 %inc25, i32* %total_out_hi32, align 4
  br label %if.end.26

if.end.26:                                        ; preds = %if.then.23, %if.end.6
  br label %while.body.2

while.end:                                        ; preds = %if.then.5
  %37 = load %struct.DState*, %struct.DState** %s.addr, align 8
  %nblock_used = getelementptr inbounds %struct.DState, %struct.DState* %37, i32 0, i32 17
  %38 = load i32, i32* %nblock_used, align 4
  %39 = load %struct.DState*, %struct.DState** %s.addr, align 8
  %save_nblock = getelementptr inbounds %struct.DState, %struct.DState* %39, i32 0, i32 51
  %40 = load i32, i32* %save_nblock, align 4
  %add = add nsw i32 %40, 1
  %cmp27 = icmp eq i32 %38, %add
  br i1 %cmp27, label %if.then.29, label %if.end.30

if.then.29:                                       ; preds = %while.end
  store i8 0, i8* %retval
  br label %return

if.end.30:                                        ; preds = %while.end
  %41 = load %struct.DState*, %struct.DState** %s.addr, align 8
  %nblock_used31 = getelementptr inbounds %struct.DState, %struct.DState* %41, i32 0, i32 17
  %42 = load i32, i32* %nblock_used31, align 4
  %43 = load %struct.DState*, %struct.DState** %s.addr, align 8
  %save_nblock32 = getelementptr inbounds %struct.DState, %struct.DState* %43, i32 0, i32 51
  %44 = load i32, i32* %save_nblock32, align 4
  %add33 = add nsw i32 %44, 1
  %cmp34 = icmp sgt i32 %42, %add33
  br i1 %cmp34, label %if.then.36, label %if.end.37

if.then.36:                                       ; preds = %if.end.30
  store i8 1, i8* %retval
  br label %return

if.end.37:                                        ; preds = %if.end.30
  %45 = load %struct.DState*, %struct.DState** %s.addr, align 8
  %state_out_len38 = getelementptr inbounds %struct.DState, %struct.DState* %45, i32 0, i32 3
  store i32 1, i32* %state_out_len38, align 4
  %46 = load %struct.DState*, %struct.DState** %s.addr, align 8
  %k0 = getelementptr inbounds %struct.DState, %struct.DState* %46, i32 0, i32 15
  %47 = load i32, i32* %k0, align 4
  %conv39 = trunc i32 %47 to i8
  %48 = load %struct.DState*, %struct.DState** %s.addr, align 8
  %state_out_ch40 = getelementptr inbounds %struct.DState, %struct.DState* %48, i32 0, i32 2
  store i8 %conv39, i8* %state_out_ch40, align 1
  %49 = load %struct.DState*, %struct.DState** %s.addr, align 8
  %tPos = getelementptr inbounds %struct.DState, %struct.DState* %49, i32 0, i32 14
  %50 = load i32, i32* %tPos, align 4
  %51 = load %struct.DState*, %struct.DState** %s.addr, align 8
  %cftab = getelementptr inbounds %struct.DState, %struct.DState* %51, i32 0, i32 18
  %arraydecay = getelementptr inbounds [257 x i32], [257 x i32]* %cftab, i32 0, i32 0
  %call = call i32 @BZ2_indexIntoF(i32 %50, i32* %arraydecay)
  %conv41 = trunc i32 %call to i8
  store i8 %conv41, i8* %k1, align 1
  %52 = load %struct.DState*, %struct.DState** %s.addr, align 8
  %tPos42 = getelementptr inbounds %struct.DState, %struct.DState* %52, i32 0, i32 14
  %53 = load i32, i32* %tPos42, align 4
  %idxprom43 = zext i32 %53 to i64
  %54 = load %struct.DState*, %struct.DState** %s.addr, align 8
  %ll16 = getelementptr inbounds %struct.DState, %struct.DState* %54, i32 0, i32 21
  %55 = load i16*, i16** %ll16, align 8
  %arrayidx44 = getelementptr inbounds i16, i16* %55, i64 %idxprom43
  %56 = load i16, i16* %arrayidx44, align 2
  %conv45 = zext i16 %56 to i32
  %57 = load %struct.DState*, %struct.DState** %s.addr, align 8
  %tPos46 = getelementptr inbounds %struct.DState, %struct.DState* %57, i32 0, i32 14
  %58 = load i32, i32* %tPos46, align 4
  %shr47 = lshr i32 %58, 1
  %idxprom48 = zext i32 %shr47 to i64
  %59 = load %struct.DState*, %struct.DState** %s.addr, align 8
  %ll4 = getelementptr inbounds %struct.DState, %struct.DState* %59, i32 0, i32 22
  %60 = load i8*, i8** %ll4, align 8
  %arrayidx49 = getelementptr inbounds i8, i8* %60, i64 %idxprom48
  %61 = load i8, i8* %arrayidx49, align 1
  %conv50 = zext i8 %61 to i32
  %62 = load %struct.DState*, %struct.DState** %s.addr, align 8
  %tPos51 = getelementptr inbounds %struct.DState, %struct.DState* %62, i32 0, i32 14
  %63 = load i32, i32* %tPos51, align 4
  %shl52 = shl i32 %63, 2
  %and = and i32 %shl52, 4
  %shr53 = lshr i32 %conv50, %and
  %and54 = and i32 %shr53, 15
  %shl55 = shl i32 %and54, 16
  %or = or i32 %conv45, %shl55
  %64 = load %struct.DState*, %struct.DState** %s.addr, align 8
  %tPos56 = getelementptr inbounds %struct.DState, %struct.DState* %64, i32 0, i32 14
  store i32 %or, i32* %tPos56, align 4
  %65 = load %struct.DState*, %struct.DState** %s.addr, align 8
  %rNToGo = getelementptr inbounds %struct.DState, %struct.DState* %65, i32 0, i32 5
  %66 = load i32, i32* %rNToGo, align 4
  %cmp57 = icmp eq i32 %66, 0
  br i1 %cmp57, label %if.then.59, label %if.end.71

if.then.59:                                       ; preds = %if.end.37
  %67 = load %struct.DState*, %struct.DState** %s.addr, align 8
  %rTPos = getelementptr inbounds %struct.DState, %struct.DState* %67, i32 0, i32 6
  %68 = load i32, i32* %rTPos, align 4
  %idxprom60 = sext i32 %68 to i64
  %arrayidx61 = getelementptr inbounds [512 x i32], [512 x i32]* @BZ2_rNums, i32 0, i64 %idxprom60
  %69 = load i32, i32* %arrayidx61, align 4
  %70 = load %struct.DState*, %struct.DState** %s.addr, align 8
  %rNToGo62 = getelementptr inbounds %struct.DState, %struct.DState* %70, i32 0, i32 5
  store i32 %69, i32* %rNToGo62, align 4
  %71 = load %struct.DState*, %struct.DState** %s.addr, align 8
  %rTPos63 = getelementptr inbounds %struct.DState, %struct.DState* %71, i32 0, i32 6
  %72 = load i32, i32* %rTPos63, align 4
  %inc64 = add nsw i32 %72, 1
  store i32 %inc64, i32* %rTPos63, align 4
  %73 = load %struct.DState*, %struct.DState** %s.addr, align 8
  %rTPos65 = getelementptr inbounds %struct.DState, %struct.DState* %73, i32 0, i32 6
  %74 = load i32, i32* %rTPos65, align 4
  %cmp66 = icmp eq i32 %74, 512
  br i1 %cmp66, label %if.then.68, label %if.end.70

if.then.68:                                       ; preds = %if.then.59
  %75 = load %struct.DState*, %struct.DState** %s.addr, align 8
  %rTPos69 = getelementptr inbounds %struct.DState, %struct.DState* %75, i32 0, i32 6
  store i32 0, i32* %rTPos69, align 4
  br label %if.end.70

if.end.70:                                        ; preds = %if.then.68, %if.then.59
  br label %if.end.71

if.end.71:                                        ; preds = %if.end.70, %if.end.37
  %76 = load %struct.DState*, %struct.DState** %s.addr, align 8
  %rNToGo72 = getelementptr inbounds %struct.DState, %struct.DState* %76, i32 0, i32 5
  %77 = load i32, i32* %rNToGo72, align 4
  %dec73 = add nsw i32 %77, -1
  store i32 %dec73, i32* %rNToGo72, align 4
  %78 = load %struct.DState*, %struct.DState** %s.addr, align 8
  %rNToGo74 = getelementptr inbounds %struct.DState, %struct.DState* %78, i32 0, i32 5
  %79 = load i32, i32* %rNToGo74, align 4
  %cmp75 = icmp eq i32 %79, 1
  %cond = select i1 %cmp75, i32 1, i32 0
  %80 = load i8, i8* %k1, align 1
  %conv77 = zext i8 %80 to i32
  %xor78 = xor i32 %conv77, %cond
  %conv79 = trunc i32 %xor78 to i8
  store i8 %conv79, i8* %k1, align 1
  %81 = load %struct.DState*, %struct.DState** %s.addr, align 8
  %nblock_used80 = getelementptr inbounds %struct.DState, %struct.DState* %81, i32 0, i32 17
  %82 = load i32, i32* %nblock_used80, align 4
  %inc81 = add nsw i32 %82, 1
  store i32 %inc81, i32* %nblock_used80, align 4
  %83 = load %struct.DState*, %struct.DState** %s.addr, align 8
  %nblock_used82 = getelementptr inbounds %struct.DState, %struct.DState* %83, i32 0, i32 17
  %84 = load i32, i32* %nblock_used82, align 4
  %85 = load %struct.DState*, %struct.DState** %s.addr, align 8
  %save_nblock83 = getelementptr inbounds %struct.DState, %struct.DState* %85, i32 0, i32 51
  %86 = load i32, i32* %save_nblock83, align 4
  %add84 = add nsw i32 %86, 1
  %cmp85 = icmp eq i32 %84, %add84
  br i1 %cmp85, label %if.then.87, label %if.end.88

if.then.87:                                       ; preds = %if.end.71
  br label %while.body

if.end.88:                                        ; preds = %if.end.71
  %87 = load i8, i8* %k1, align 1
  %conv89 = zext i8 %87 to i32
  %88 = load %struct.DState*, %struct.DState** %s.addr, align 8
  %k090 = getelementptr inbounds %struct.DState, %struct.DState* %88, i32 0, i32 15
  %89 = load i32, i32* %k090, align 4
  %cmp91 = icmp ne i32 %conv89, %89
  br i1 %cmp91, label %if.then.93, label %if.end.96

if.then.93:                                       ; preds = %if.end.88
  %90 = load i8, i8* %k1, align 1
  %conv94 = zext i8 %90 to i32
  %91 = load %struct.DState*, %struct.DState** %s.addr, align 8
  %k095 = getelementptr inbounds %struct.DState, %struct.DState* %91, i32 0, i32 15
  store i32 %conv94, i32* %k095, align 4
  br label %while.body

if.end.96:                                        ; preds = %if.end.88
  %92 = load %struct.DState*, %struct.DState** %s.addr, align 8
  %state_out_len97 = getelementptr inbounds %struct.DState, %struct.DState* %92, i32 0, i32 3
  store i32 2, i32* %state_out_len97, align 4
  %93 = load %struct.DState*, %struct.DState** %s.addr, align 8
  %tPos98 = getelementptr inbounds %struct.DState, %struct.DState* %93, i32 0, i32 14
  %94 = load i32, i32* %tPos98, align 4
  %95 = load %struct.DState*, %struct.DState** %s.addr, align 8
  %cftab99 = getelementptr inbounds %struct.DState, %struct.DState* %95, i32 0, i32 18
  %arraydecay100 = getelementptr inbounds [257 x i32], [257 x i32]* %cftab99, i32 0, i32 0
  %call101 = call i32 @BZ2_indexIntoF(i32 %94, i32* %arraydecay100)
  %conv102 = trunc i32 %call101 to i8
  store i8 %conv102, i8* %k1, align 1
  %96 = load %struct.DState*, %struct.DState** %s.addr, align 8
  %tPos103 = getelementptr inbounds %struct.DState, %struct.DState* %96, i32 0, i32 14
  %97 = load i32, i32* %tPos103, align 4
  %idxprom104 = zext i32 %97 to i64
  %98 = load %struct.DState*, %struct.DState** %s.addr, align 8
  %ll16105 = getelementptr inbounds %struct.DState, %struct.DState* %98, i32 0, i32 21
  %99 = load i16*, i16** %ll16105, align 8
  %arrayidx106 = getelementptr inbounds i16, i16* %99, i64 %idxprom104
  %100 = load i16, i16* %arrayidx106, align 2
  %conv107 = zext i16 %100 to i32
  %101 = load %struct.DState*, %struct.DState** %s.addr, align 8
  %tPos108 = getelementptr inbounds %struct.DState, %struct.DState* %101, i32 0, i32 14
  %102 = load i32, i32* %tPos108, align 4
  %shr109 = lshr i32 %102, 1
  %idxprom110 = zext i32 %shr109 to i64
  %103 = load %struct.DState*, %struct.DState** %s.addr, align 8
  %ll4111 = getelementptr inbounds %struct.DState, %struct.DState* %103, i32 0, i32 22
  %104 = load i8*, i8** %ll4111, align 8
  %arrayidx112 = getelementptr inbounds i8, i8* %104, i64 %idxprom110
  %105 = load i8, i8* %arrayidx112, align 1
  %conv113 = zext i8 %105 to i32
  %106 = load %struct.DState*, %struct.DState** %s.addr, align 8
  %tPos114 = getelementptr inbounds %struct.DState, %struct.DState* %106, i32 0, i32 14
  %107 = load i32, i32* %tPos114, align 4
  %shl115 = shl i32 %107, 2
  %and116 = and i32 %shl115, 4
  %shr117 = lshr i32 %conv113, %and116
  %and118 = and i32 %shr117, 15
  %shl119 = shl i32 %and118, 16
  %or120 = or i32 %conv107, %shl119
  %108 = load %struct.DState*, %struct.DState** %s.addr, align 8
  %tPos121 = getelementptr inbounds %struct.DState, %struct.DState* %108, i32 0, i32 14
  store i32 %or120, i32* %tPos121, align 4
  %109 = load %struct.DState*, %struct.DState** %s.addr, align 8
  %rNToGo122 = getelementptr inbounds %struct.DState, %struct.DState* %109, i32 0, i32 5
  %110 = load i32, i32* %rNToGo122, align 4
  %cmp123 = icmp eq i32 %110, 0
  br i1 %cmp123, label %if.then.125, label %if.end.138

if.then.125:                                      ; preds = %if.end.96
  %111 = load %struct.DState*, %struct.DState** %s.addr, align 8
  %rTPos126 = getelementptr inbounds %struct.DState, %struct.DState* %111, i32 0, i32 6
  %112 = load i32, i32* %rTPos126, align 4
  %idxprom127 = sext i32 %112 to i64
  %arrayidx128 = getelementptr inbounds [512 x i32], [512 x i32]* @BZ2_rNums, i32 0, i64 %idxprom127
  %113 = load i32, i32* %arrayidx128, align 4
  %114 = load %struct.DState*, %struct.DState** %s.addr, align 8
  %rNToGo129 = getelementptr inbounds %struct.DState, %struct.DState* %114, i32 0, i32 5
  store i32 %113, i32* %rNToGo129, align 4
  %115 = load %struct.DState*, %struct.DState** %s.addr, align 8
  %rTPos130 = getelementptr inbounds %struct.DState, %struct.DState* %115, i32 0, i32 6
  %116 = load i32, i32* %rTPos130, align 4
  %inc131 = add nsw i32 %116, 1
  store i32 %inc131, i32* %rTPos130, align 4
  %117 = load %struct.DState*, %struct.DState** %s.addr, align 8
  %rTPos132 = getelementptr inbounds %struct.DState, %struct.DState* %117, i32 0, i32 6
  %118 = load i32, i32* %rTPos132, align 4
  %cmp133 = icmp eq i32 %118, 512
  br i1 %cmp133, label %if.then.135, label %if.end.137

if.then.135:                                      ; preds = %if.then.125
  %119 = load %struct.DState*, %struct.DState** %s.addr, align 8
  %rTPos136 = getelementptr inbounds %struct.DState, %struct.DState* %119, i32 0, i32 6
  store i32 0, i32* %rTPos136, align 4
  br label %if.end.137

if.end.137:                                       ; preds = %if.then.135, %if.then.125
  br label %if.end.138

if.end.138:                                       ; preds = %if.end.137, %if.end.96
  %120 = load %struct.DState*, %struct.DState** %s.addr, align 8
  %rNToGo139 = getelementptr inbounds %struct.DState, %struct.DState* %120, i32 0, i32 5
  %121 = load i32, i32* %rNToGo139, align 4
  %dec140 = add nsw i32 %121, -1
  store i32 %dec140, i32* %rNToGo139, align 4
  %122 = load %struct.DState*, %struct.DState** %s.addr, align 8
  %rNToGo141 = getelementptr inbounds %struct.DState, %struct.DState* %122, i32 0, i32 5
  %123 = load i32, i32* %rNToGo141, align 4
  %cmp142 = icmp eq i32 %123, 1
  %cond144 = select i1 %cmp142, i32 1, i32 0
  %124 = load i8, i8* %k1, align 1
  %conv145 = zext i8 %124 to i32
  %xor146 = xor i32 %conv145, %cond144
  %conv147 = trunc i32 %xor146 to i8
  store i8 %conv147, i8* %k1, align 1
  %125 = load %struct.DState*, %struct.DState** %s.addr, align 8
  %nblock_used148 = getelementptr inbounds %struct.DState, %struct.DState* %125, i32 0, i32 17
  %126 = load i32, i32* %nblock_used148, align 4
  %inc149 = add nsw i32 %126, 1
  store i32 %inc149, i32* %nblock_used148, align 4
  %127 = load %struct.DState*, %struct.DState** %s.addr, align 8
  %nblock_used150 = getelementptr inbounds %struct.DState, %struct.DState* %127, i32 0, i32 17
  %128 = load i32, i32* %nblock_used150, align 4
  %129 = load %struct.DState*, %struct.DState** %s.addr, align 8
  %save_nblock151 = getelementptr inbounds %struct.DState, %struct.DState* %129, i32 0, i32 51
  %130 = load i32, i32* %save_nblock151, align 4
  %add152 = add nsw i32 %130, 1
  %cmp153 = icmp eq i32 %128, %add152
  br i1 %cmp153, label %if.then.155, label %if.end.156

if.then.155:                                      ; preds = %if.end.138
  br label %while.body

if.end.156:                                       ; preds = %if.end.138
  %131 = load i8, i8* %k1, align 1
  %conv157 = zext i8 %131 to i32
  %132 = load %struct.DState*, %struct.DState** %s.addr, align 8
  %k0158 = getelementptr inbounds %struct.DState, %struct.DState* %132, i32 0, i32 15
  %133 = load i32, i32* %k0158, align 4
  %cmp159 = icmp ne i32 %conv157, %133
  br i1 %cmp159, label %if.then.161, label %if.end.164

if.then.161:                                      ; preds = %if.end.156
  %134 = load i8, i8* %k1, align 1
  %conv162 = zext i8 %134 to i32
  %135 = load %struct.DState*, %struct.DState** %s.addr, align 8
  %k0163 = getelementptr inbounds %struct.DState, %struct.DState* %135, i32 0, i32 15
  store i32 %conv162, i32* %k0163, align 4
  br label %while.body

if.end.164:                                       ; preds = %if.end.156
  %136 = load %struct.DState*, %struct.DState** %s.addr, align 8
  %state_out_len165 = getelementptr inbounds %struct.DState, %struct.DState* %136, i32 0, i32 3
  store i32 3, i32* %state_out_len165, align 4
  %137 = load %struct.DState*, %struct.DState** %s.addr, align 8
  %tPos166 = getelementptr inbounds %struct.DState, %struct.DState* %137, i32 0, i32 14
  %138 = load i32, i32* %tPos166, align 4
  %139 = load %struct.DState*, %struct.DState** %s.addr, align 8
  %cftab167 = getelementptr inbounds %struct.DState, %struct.DState* %139, i32 0, i32 18
  %arraydecay168 = getelementptr inbounds [257 x i32], [257 x i32]* %cftab167, i32 0, i32 0
  %call169 = call i32 @BZ2_indexIntoF(i32 %138, i32* %arraydecay168)
  %conv170 = trunc i32 %call169 to i8
  store i8 %conv170, i8* %k1, align 1
  %140 = load %struct.DState*, %struct.DState** %s.addr, align 8
  %tPos171 = getelementptr inbounds %struct.DState, %struct.DState* %140, i32 0, i32 14
  %141 = load i32, i32* %tPos171, align 4
  %idxprom172 = zext i32 %141 to i64
  %142 = load %struct.DState*, %struct.DState** %s.addr, align 8
  %ll16173 = getelementptr inbounds %struct.DState, %struct.DState* %142, i32 0, i32 21
  %143 = load i16*, i16** %ll16173, align 8
  %arrayidx174 = getelementptr inbounds i16, i16* %143, i64 %idxprom172
  %144 = load i16, i16* %arrayidx174, align 2
  %conv175 = zext i16 %144 to i32
  %145 = load %struct.DState*, %struct.DState** %s.addr, align 8
  %tPos176 = getelementptr inbounds %struct.DState, %struct.DState* %145, i32 0, i32 14
  %146 = load i32, i32* %tPos176, align 4
  %shr177 = lshr i32 %146, 1
  %idxprom178 = zext i32 %shr177 to i64
  %147 = load %struct.DState*, %struct.DState** %s.addr, align 8
  %ll4179 = getelementptr inbounds %struct.DState, %struct.DState* %147, i32 0, i32 22
  %148 = load i8*, i8** %ll4179, align 8
  %arrayidx180 = getelementptr inbounds i8, i8* %148, i64 %idxprom178
  %149 = load i8, i8* %arrayidx180, align 1
  %conv181 = zext i8 %149 to i32
  %150 = load %struct.DState*, %struct.DState** %s.addr, align 8
  %tPos182 = getelementptr inbounds %struct.DState, %struct.DState* %150, i32 0, i32 14
  %151 = load i32, i32* %tPos182, align 4
  %shl183 = shl i32 %151, 2
  %and184 = and i32 %shl183, 4
  %shr185 = lshr i32 %conv181, %and184
  %and186 = and i32 %shr185, 15
  %shl187 = shl i32 %and186, 16
  %or188 = or i32 %conv175, %shl187
  %152 = load %struct.DState*, %struct.DState** %s.addr, align 8
  %tPos189 = getelementptr inbounds %struct.DState, %struct.DState* %152, i32 0, i32 14
  store i32 %or188, i32* %tPos189, align 4
  %153 = load %struct.DState*, %struct.DState** %s.addr, align 8
  %rNToGo190 = getelementptr inbounds %struct.DState, %struct.DState* %153, i32 0, i32 5
  %154 = load i32, i32* %rNToGo190, align 4
  %cmp191 = icmp eq i32 %154, 0
  br i1 %cmp191, label %if.then.193, label %if.end.206

if.then.193:                                      ; preds = %if.end.164
  %155 = load %struct.DState*, %struct.DState** %s.addr, align 8
  %rTPos194 = getelementptr inbounds %struct.DState, %struct.DState* %155, i32 0, i32 6
  %156 = load i32, i32* %rTPos194, align 4
  %idxprom195 = sext i32 %156 to i64
  %arrayidx196 = getelementptr inbounds [512 x i32], [512 x i32]* @BZ2_rNums, i32 0, i64 %idxprom195
  %157 = load i32, i32* %arrayidx196, align 4
  %158 = load %struct.DState*, %struct.DState** %s.addr, align 8
  %rNToGo197 = getelementptr inbounds %struct.DState, %struct.DState* %158, i32 0, i32 5
  store i32 %157, i32* %rNToGo197, align 4
  %159 = load %struct.DState*, %struct.DState** %s.addr, align 8
  %rTPos198 = getelementptr inbounds %struct.DState, %struct.DState* %159, i32 0, i32 6
  %160 = load i32, i32* %rTPos198, align 4
  %inc199 = add nsw i32 %160, 1
  store i32 %inc199, i32* %rTPos198, align 4
  %161 = load %struct.DState*, %struct.DState** %s.addr, align 8
  %rTPos200 = getelementptr inbounds %struct.DState, %struct.DState* %161, i32 0, i32 6
  %162 = load i32, i32* %rTPos200, align 4
  %cmp201 = icmp eq i32 %162, 512
  br i1 %cmp201, label %if.then.203, label %if.end.205

if.then.203:                                      ; preds = %if.then.193
  %163 = load %struct.DState*, %struct.DState** %s.addr, align 8
  %rTPos204 = getelementptr inbounds %struct.DState, %struct.DState* %163, i32 0, i32 6
  store i32 0, i32* %rTPos204, align 4
  br label %if.end.205

if.end.205:                                       ; preds = %if.then.203, %if.then.193
  br label %if.end.206

if.end.206:                                       ; preds = %if.end.205, %if.end.164
  %164 = load %struct.DState*, %struct.DState** %s.addr, align 8
  %rNToGo207 = getelementptr inbounds %struct.DState, %struct.DState* %164, i32 0, i32 5
  %165 = load i32, i32* %rNToGo207, align 4
  %dec208 = add nsw i32 %165, -1
  store i32 %dec208, i32* %rNToGo207, align 4
  %166 = load %struct.DState*, %struct.DState** %s.addr, align 8
  %rNToGo209 = getelementptr inbounds %struct.DState, %struct.DState* %166, i32 0, i32 5
  %167 = load i32, i32* %rNToGo209, align 4
  %cmp210 = icmp eq i32 %167, 1
  %cond212 = select i1 %cmp210, i32 1, i32 0
  %168 = load i8, i8* %k1, align 1
  %conv213 = zext i8 %168 to i32
  %xor214 = xor i32 %conv213, %cond212
  %conv215 = trunc i32 %xor214 to i8
  store i8 %conv215, i8* %k1, align 1
  %169 = load %struct.DState*, %struct.DState** %s.addr, align 8
  %nblock_used216 = getelementptr inbounds %struct.DState, %struct.DState* %169, i32 0, i32 17
  %170 = load i32, i32* %nblock_used216, align 4
  %inc217 = add nsw i32 %170, 1
  store i32 %inc217, i32* %nblock_used216, align 4
  %171 = load %struct.DState*, %struct.DState** %s.addr, align 8
  %nblock_used218 = getelementptr inbounds %struct.DState, %struct.DState* %171, i32 0, i32 17
  %172 = load i32, i32* %nblock_used218, align 4
  %173 = load %struct.DState*, %struct.DState** %s.addr, align 8
  %save_nblock219 = getelementptr inbounds %struct.DState, %struct.DState* %173, i32 0, i32 51
  %174 = load i32, i32* %save_nblock219, align 4
  %add220 = add nsw i32 %174, 1
  %cmp221 = icmp eq i32 %172, %add220
  br i1 %cmp221, label %if.then.223, label %if.end.224

if.then.223:                                      ; preds = %if.end.206
  br label %while.body

if.end.224:                                       ; preds = %if.end.206
  %175 = load i8, i8* %k1, align 1
  %conv225 = zext i8 %175 to i32
  %176 = load %struct.DState*, %struct.DState** %s.addr, align 8
  %k0226 = getelementptr inbounds %struct.DState, %struct.DState* %176, i32 0, i32 15
  %177 = load i32, i32* %k0226, align 4
  %cmp227 = icmp ne i32 %conv225, %177
  br i1 %cmp227, label %if.then.229, label %if.end.232

if.then.229:                                      ; preds = %if.end.224
  %178 = load i8, i8* %k1, align 1
  %conv230 = zext i8 %178 to i32
  %179 = load %struct.DState*, %struct.DState** %s.addr, align 8
  %k0231 = getelementptr inbounds %struct.DState, %struct.DState* %179, i32 0, i32 15
  store i32 %conv230, i32* %k0231, align 4
  br label %while.body

if.end.232:                                       ; preds = %if.end.224
  %180 = load %struct.DState*, %struct.DState** %s.addr, align 8
  %tPos233 = getelementptr inbounds %struct.DState, %struct.DState* %180, i32 0, i32 14
  %181 = load i32, i32* %tPos233, align 4
  %182 = load %struct.DState*, %struct.DState** %s.addr, align 8
  %cftab234 = getelementptr inbounds %struct.DState, %struct.DState* %182, i32 0, i32 18
  %arraydecay235 = getelementptr inbounds [257 x i32], [257 x i32]* %cftab234, i32 0, i32 0
  %call236 = call i32 @BZ2_indexIntoF(i32 %181, i32* %arraydecay235)
  %conv237 = trunc i32 %call236 to i8
  store i8 %conv237, i8* %k1, align 1
  %183 = load %struct.DState*, %struct.DState** %s.addr, align 8
  %tPos238 = getelementptr inbounds %struct.DState, %struct.DState* %183, i32 0, i32 14
  %184 = load i32, i32* %tPos238, align 4
  %idxprom239 = zext i32 %184 to i64
  %185 = load %struct.DState*, %struct.DState** %s.addr, align 8
  %ll16240 = getelementptr inbounds %struct.DState, %struct.DState* %185, i32 0, i32 21
  %186 = load i16*, i16** %ll16240, align 8
  %arrayidx241 = getelementptr inbounds i16, i16* %186, i64 %idxprom239
  %187 = load i16, i16* %arrayidx241, align 2
  %conv242 = zext i16 %187 to i32
  %188 = load %struct.DState*, %struct.DState** %s.addr, align 8
  %tPos243 = getelementptr inbounds %struct.DState, %struct.DState* %188, i32 0, i32 14
  %189 = load i32, i32* %tPos243, align 4
  %shr244 = lshr i32 %189, 1
  %idxprom245 = zext i32 %shr244 to i64
  %190 = load %struct.DState*, %struct.DState** %s.addr, align 8
  %ll4246 = getelementptr inbounds %struct.DState, %struct.DState* %190, i32 0, i32 22
  %191 = load i8*, i8** %ll4246, align 8
  %arrayidx247 = getelementptr inbounds i8, i8* %191, i64 %idxprom245
  %192 = load i8, i8* %arrayidx247, align 1
  %conv248 = zext i8 %192 to i32
  %193 = load %struct.DState*, %struct.DState** %s.addr, align 8
  %tPos249 = getelementptr inbounds %struct.DState, %struct.DState* %193, i32 0, i32 14
  %194 = load i32, i32* %tPos249, align 4
  %shl250 = shl i32 %194, 2
  %and251 = and i32 %shl250, 4
  %shr252 = lshr i32 %conv248, %and251
  %and253 = and i32 %shr252, 15
  %shl254 = shl i32 %and253, 16
  %or255 = or i32 %conv242, %shl254
  %195 = load %struct.DState*, %struct.DState** %s.addr, align 8
  %tPos256 = getelementptr inbounds %struct.DState, %struct.DState* %195, i32 0, i32 14
  store i32 %or255, i32* %tPos256, align 4
  %196 = load %struct.DState*, %struct.DState** %s.addr, align 8
  %rNToGo257 = getelementptr inbounds %struct.DState, %struct.DState* %196, i32 0, i32 5
  %197 = load i32, i32* %rNToGo257, align 4
  %cmp258 = icmp eq i32 %197, 0
  br i1 %cmp258, label %if.then.260, label %if.end.273

if.then.260:                                      ; preds = %if.end.232
  %198 = load %struct.DState*, %struct.DState** %s.addr, align 8
  %rTPos261 = getelementptr inbounds %struct.DState, %struct.DState* %198, i32 0, i32 6
  %199 = load i32, i32* %rTPos261, align 4
  %idxprom262 = sext i32 %199 to i64
  %arrayidx263 = getelementptr inbounds [512 x i32], [512 x i32]* @BZ2_rNums, i32 0, i64 %idxprom262
  %200 = load i32, i32* %arrayidx263, align 4
  %201 = load %struct.DState*, %struct.DState** %s.addr, align 8
  %rNToGo264 = getelementptr inbounds %struct.DState, %struct.DState* %201, i32 0, i32 5
  store i32 %200, i32* %rNToGo264, align 4
  %202 = load %struct.DState*, %struct.DState** %s.addr, align 8
  %rTPos265 = getelementptr inbounds %struct.DState, %struct.DState* %202, i32 0, i32 6
  %203 = load i32, i32* %rTPos265, align 4
  %inc266 = add nsw i32 %203, 1
  store i32 %inc266, i32* %rTPos265, align 4
  %204 = load %struct.DState*, %struct.DState** %s.addr, align 8
  %rTPos267 = getelementptr inbounds %struct.DState, %struct.DState* %204, i32 0, i32 6
  %205 = load i32, i32* %rTPos267, align 4
  %cmp268 = icmp eq i32 %205, 512
  br i1 %cmp268, label %if.then.270, label %if.end.272

if.then.270:                                      ; preds = %if.then.260
  %206 = load %struct.DState*, %struct.DState** %s.addr, align 8
  %rTPos271 = getelementptr inbounds %struct.DState, %struct.DState* %206, i32 0, i32 6
  store i32 0, i32* %rTPos271, align 4
  br label %if.end.272

if.end.272:                                       ; preds = %if.then.270, %if.then.260
  br label %if.end.273

if.end.273:                                       ; preds = %if.end.272, %if.end.232
  %207 = load %struct.DState*, %struct.DState** %s.addr, align 8
  %rNToGo274 = getelementptr inbounds %struct.DState, %struct.DState* %207, i32 0, i32 5
  %208 = load i32, i32* %rNToGo274, align 4
  %dec275 = add nsw i32 %208, -1
  store i32 %dec275, i32* %rNToGo274, align 4
  %209 = load %struct.DState*, %struct.DState** %s.addr, align 8
  %rNToGo276 = getelementptr inbounds %struct.DState, %struct.DState* %209, i32 0, i32 5
  %210 = load i32, i32* %rNToGo276, align 4
  %cmp277 = icmp eq i32 %210, 1
  %cond279 = select i1 %cmp277, i32 1, i32 0
  %211 = load i8, i8* %k1, align 1
  %conv280 = zext i8 %211 to i32
  %xor281 = xor i32 %conv280, %cond279
  %conv282 = trunc i32 %xor281 to i8
  store i8 %conv282, i8* %k1, align 1
  %212 = load %struct.DState*, %struct.DState** %s.addr, align 8
  %nblock_used283 = getelementptr inbounds %struct.DState, %struct.DState* %212, i32 0, i32 17
  %213 = load i32, i32* %nblock_used283, align 4
  %inc284 = add nsw i32 %213, 1
  store i32 %inc284, i32* %nblock_used283, align 4
  %214 = load i8, i8* %k1, align 1
  %conv285 = zext i8 %214 to i32
  %add286 = add nsw i32 %conv285, 4
  %215 = load %struct.DState*, %struct.DState** %s.addr, align 8
  %state_out_len287 = getelementptr inbounds %struct.DState, %struct.DState* %215, i32 0, i32 3
  store i32 %add286, i32* %state_out_len287, align 4
  %216 = load %struct.DState*, %struct.DState** %s.addr, align 8
  %tPos288 = getelementptr inbounds %struct.DState, %struct.DState* %216, i32 0, i32 14
  %217 = load i32, i32* %tPos288, align 4
  %218 = load %struct.DState*, %struct.DState** %s.addr, align 8
  %cftab289 = getelementptr inbounds %struct.DState, %struct.DState* %218, i32 0, i32 18
  %arraydecay290 = getelementptr inbounds [257 x i32], [257 x i32]* %cftab289, i32 0, i32 0
  %call291 = call i32 @BZ2_indexIntoF(i32 %217, i32* %arraydecay290)
  %219 = load %struct.DState*, %struct.DState** %s.addr, align 8
  %k0292 = getelementptr inbounds %struct.DState, %struct.DState* %219, i32 0, i32 15
  store i32 %call291, i32* %k0292, align 4
  %220 = load %struct.DState*, %struct.DState** %s.addr, align 8
  %tPos293 = getelementptr inbounds %struct.DState, %struct.DState* %220, i32 0, i32 14
  %221 = load i32, i32* %tPos293, align 4
  %idxprom294 = zext i32 %221 to i64
  %222 = load %struct.DState*, %struct.DState** %s.addr, align 8
  %ll16295 = getelementptr inbounds %struct.DState, %struct.DState* %222, i32 0, i32 21
  %223 = load i16*, i16** %ll16295, align 8
  %arrayidx296 = getelementptr inbounds i16, i16* %223, i64 %idxprom294
  %224 = load i16, i16* %arrayidx296, align 2
  %conv297 = zext i16 %224 to i32
  %225 = load %struct.DState*, %struct.DState** %s.addr, align 8
  %tPos298 = getelementptr inbounds %struct.DState, %struct.DState* %225, i32 0, i32 14
  %226 = load i32, i32* %tPos298, align 4
  %shr299 = lshr i32 %226, 1
  %idxprom300 = zext i32 %shr299 to i64
  %227 = load %struct.DState*, %struct.DState** %s.addr, align 8
  %ll4301 = getelementptr inbounds %struct.DState, %struct.DState* %227, i32 0, i32 22
  %228 = load i8*, i8** %ll4301, align 8
  %arrayidx302 = getelementptr inbounds i8, i8* %228, i64 %idxprom300
  %229 = load i8, i8* %arrayidx302, align 1
  %conv303 = zext i8 %229 to i32
  %230 = load %struct.DState*, %struct.DState** %s.addr, align 8
  %tPos304 = getelementptr inbounds %struct.DState, %struct.DState* %230, i32 0, i32 14
  %231 = load i32, i32* %tPos304, align 4
  %shl305 = shl i32 %231, 2
  %and306 = and i32 %shl305, 4
  %shr307 = lshr i32 %conv303, %and306
  %and308 = and i32 %shr307, 15
  %shl309 = shl i32 %and308, 16
  %or310 = or i32 %conv297, %shl309
  %232 = load %struct.DState*, %struct.DState** %s.addr, align 8
  %tPos311 = getelementptr inbounds %struct.DState, %struct.DState* %232, i32 0, i32 14
  store i32 %or310, i32* %tPos311, align 4
  %233 = load %struct.DState*, %struct.DState** %s.addr, align 8
  %rNToGo312 = getelementptr inbounds %struct.DState, %struct.DState* %233, i32 0, i32 5
  %234 = load i32, i32* %rNToGo312, align 4
  %cmp313 = icmp eq i32 %234, 0
  br i1 %cmp313, label %if.then.315, label %if.end.328

if.then.315:                                      ; preds = %if.end.273
  %235 = load %struct.DState*, %struct.DState** %s.addr, align 8
  %rTPos316 = getelementptr inbounds %struct.DState, %struct.DState* %235, i32 0, i32 6
  %236 = load i32, i32* %rTPos316, align 4
  %idxprom317 = sext i32 %236 to i64
  %arrayidx318 = getelementptr inbounds [512 x i32], [512 x i32]* @BZ2_rNums, i32 0, i64 %idxprom317
  %237 = load i32, i32* %arrayidx318, align 4
  %238 = load %struct.DState*, %struct.DState** %s.addr, align 8
  %rNToGo319 = getelementptr inbounds %struct.DState, %struct.DState* %238, i32 0, i32 5
  store i32 %237, i32* %rNToGo319, align 4
  %239 = load %struct.DState*, %struct.DState** %s.addr, align 8
  %rTPos320 = getelementptr inbounds %struct.DState, %struct.DState* %239, i32 0, i32 6
  %240 = load i32, i32* %rTPos320, align 4
  %inc321 = add nsw i32 %240, 1
  store i32 %inc321, i32* %rTPos320, align 4
  %241 = load %struct.DState*, %struct.DState** %s.addr, align 8
  %rTPos322 = getelementptr inbounds %struct.DState, %struct.DState* %241, i32 0, i32 6
  %242 = load i32, i32* %rTPos322, align 4
  %cmp323 = icmp eq i32 %242, 512
  br i1 %cmp323, label %if.then.325, label %if.end.327

if.then.325:                                      ; preds = %if.then.315
  %243 = load %struct.DState*, %struct.DState** %s.addr, align 8
  %rTPos326 = getelementptr inbounds %struct.DState, %struct.DState* %243, i32 0, i32 6
  store i32 0, i32* %rTPos326, align 4
  br label %if.end.327

if.end.327:                                       ; preds = %if.then.325, %if.then.315
  br label %if.end.328

if.end.328:                                       ; preds = %if.end.327, %if.end.273
  %244 = load %struct.DState*, %struct.DState** %s.addr, align 8
  %rNToGo329 = getelementptr inbounds %struct.DState, %struct.DState* %244, i32 0, i32 5
  %245 = load i32, i32* %rNToGo329, align 4
  %dec330 = add nsw i32 %245, -1
  store i32 %dec330, i32* %rNToGo329, align 4
  %246 = load %struct.DState*, %struct.DState** %s.addr, align 8
  %rNToGo331 = getelementptr inbounds %struct.DState, %struct.DState* %246, i32 0, i32 5
  %247 = load i32, i32* %rNToGo331, align 4
  %cmp332 = icmp eq i32 %247, 1
  %cond334 = select i1 %cmp332, i32 1, i32 0
  %248 = load %struct.DState*, %struct.DState** %s.addr, align 8
  %k0335 = getelementptr inbounds %struct.DState, %struct.DState* %248, i32 0, i32 15
  %249 = load i32, i32* %k0335, align 4
  %xor336 = xor i32 %249, %cond334
  store i32 %xor336, i32* %k0335, align 4
  %250 = load %struct.DState*, %struct.DState** %s.addr, align 8
  %nblock_used337 = getelementptr inbounds %struct.DState, %struct.DState* %250, i32 0, i32 17
  %251 = load i32, i32* %nblock_used337, align 4
  %inc338 = add nsw i32 %251, 1
  store i32 %inc338, i32* %nblock_used337, align 4
  br label %while.body

if.else:                                          ; preds = %entry
  br label %while.body.339

while.body.339:                                   ; preds = %if.else, %if.then.437, %if.then.443, %if.then.479, %if.then.485, %if.then.521, %if.then.527, %if.end.530
  br label %while.body.341

while.body.341:                                   ; preds = %while.body.339, %if.end.386
  %252 = load %struct.DState*, %struct.DState** %s.addr, align 8
  %strm342 = getelementptr inbounds %struct.DState, %struct.DState* %252, i32 0, i32 0
  %253 = load %struct.bz_stream*, %struct.bz_stream** %strm342, align 8
  %avail_out343 = getelementptr inbounds %struct.bz_stream, %struct.bz_stream* %253, i32 0, i32 5
  %254 = load i32, i32* %avail_out343, align 4
  %cmp344 = icmp eq i32 %254, 0
  br i1 %cmp344, label %if.then.346, label %if.end.347

if.then.346:                                      ; preds = %while.body.341
  store i8 0, i8* %retval
  br label %return

if.end.347:                                       ; preds = %while.body.341
  %255 = load %struct.DState*, %struct.DState** %s.addr, align 8
  %state_out_len348 = getelementptr inbounds %struct.DState, %struct.DState* %255, i32 0, i32 3
  %256 = load i32, i32* %state_out_len348, align 4
  %cmp349 = icmp eq i32 %256, 0
  br i1 %cmp349, label %if.then.351, label %if.end.352

if.then.351:                                      ; preds = %if.end.347
  br label %while.end.387

if.end.352:                                       ; preds = %if.end.347
  %257 = load %struct.DState*, %struct.DState** %s.addr, align 8
  %state_out_ch353 = getelementptr inbounds %struct.DState, %struct.DState* %257, i32 0, i32 2
  %258 = load i8, i8* %state_out_ch353, align 1
  %259 = load %struct.DState*, %struct.DState** %s.addr, align 8
  %strm354 = getelementptr inbounds %struct.DState, %struct.DState* %259, i32 0, i32 0
  %260 = load %struct.bz_stream*, %struct.bz_stream** %strm354, align 8
  %next_out355 = getelementptr inbounds %struct.bz_stream, %struct.bz_stream* %260, i32 0, i32 4
  %261 = load i8*, i8** %next_out355, align 8
  store i8 %258, i8* %261, align 1
  %262 = load %struct.DState*, %struct.DState** %s.addr, align 8
  %calculatedBlockCRC356 = getelementptr inbounds %struct.DState, %struct.DState* %262, i32 0, i32 25
  %263 = load i32, i32* %calculatedBlockCRC356, align 4
  %shl357 = shl i32 %263, 8
  %264 = load %struct.DState*, %struct.DState** %s.addr, align 8
  %calculatedBlockCRC358 = getelementptr inbounds %struct.DState, %struct.DState* %264, i32 0, i32 25
  %265 = load i32, i32* %calculatedBlockCRC358, align 4
  %shr359 = lshr i32 %265, 24
  %266 = load %struct.DState*, %struct.DState** %s.addr, align 8
  %state_out_ch360 = getelementptr inbounds %struct.DState, %struct.DState* %266, i32 0, i32 2
  %267 = load i8, i8* %state_out_ch360, align 1
  %conv361 = zext i8 %267 to i32
  %xor362 = xor i32 %shr359, %conv361
  %idxprom363 = zext i32 %xor362 to i64
  %arrayidx364 = getelementptr inbounds [256 x i32], [256 x i32]* @BZ2_crc32Table, i32 0, i64 %idxprom363
  %268 = load i32, i32* %arrayidx364, align 4
  %xor365 = xor i32 %shl357, %268
  %269 = load %struct.DState*, %struct.DState** %s.addr, align 8
  %calculatedBlockCRC366 = getelementptr inbounds %struct.DState, %struct.DState* %269, i32 0, i32 25
  store i32 %xor365, i32* %calculatedBlockCRC366, align 4
  %270 = load %struct.DState*, %struct.DState** %s.addr, align 8
  %state_out_len367 = getelementptr inbounds %struct.DState, %struct.DState* %270, i32 0, i32 3
  %271 = load i32, i32* %state_out_len367, align 4
  %dec368 = add nsw i32 %271, -1
  store i32 %dec368, i32* %state_out_len367, align 4
  %272 = load %struct.DState*, %struct.DState** %s.addr, align 8
  %strm369 = getelementptr inbounds %struct.DState, %struct.DState* %272, i32 0, i32 0
  %273 = load %struct.bz_stream*, %struct.bz_stream** %strm369, align 8
  %next_out370 = getelementptr inbounds %struct.bz_stream, %struct.bz_stream* %273, i32 0, i32 4
  %274 = load i8*, i8** %next_out370, align 8
  %incdec.ptr371 = getelementptr inbounds i8, i8* %274, i32 1
  store i8* %incdec.ptr371, i8** %next_out370, align 8
  %275 = load %struct.DState*, %struct.DState** %s.addr, align 8
  %strm372 = getelementptr inbounds %struct.DState, %struct.DState* %275, i32 0, i32 0
  %276 = load %struct.bz_stream*, %struct.bz_stream** %strm372, align 8
  %avail_out373 = getelementptr inbounds %struct.bz_stream, %struct.bz_stream* %276, i32 0, i32 5
  %277 = load i32, i32* %avail_out373, align 4
  %dec374 = add i32 %277, -1
  store i32 %dec374, i32* %avail_out373, align 4
  %278 = load %struct.DState*, %struct.DState** %s.addr, align 8
  %strm375 = getelementptr inbounds %struct.DState, %struct.DState* %278, i32 0, i32 0
  %279 = load %struct.bz_stream*, %struct.bz_stream** %strm375, align 8
  %total_out_lo32376 = getelementptr inbounds %struct.bz_stream, %struct.bz_stream* %279, i32 0, i32 6
  %280 = load i32, i32* %total_out_lo32376, align 4
  %inc377 = add i32 %280, 1
  store i32 %inc377, i32* %total_out_lo32376, align 4
  %281 = load %struct.DState*, %struct.DState** %s.addr, align 8
  %strm378 = getelementptr inbounds %struct.DState, %struct.DState* %281, i32 0, i32 0
  %282 = load %struct.bz_stream*, %struct.bz_stream** %strm378, align 8
  %total_out_lo32379 = getelementptr inbounds %struct.bz_stream, %struct.bz_stream* %282, i32 0, i32 6
  %283 = load i32, i32* %total_out_lo32379, align 4
  %cmp380 = icmp eq i32 %283, 0
  br i1 %cmp380, label %if.then.382, label %if.end.386

if.then.382:                                      ; preds = %if.end.352
  %284 = load %struct.DState*, %struct.DState** %s.addr, align 8
  %strm383 = getelementptr inbounds %struct.DState, %struct.DState* %284, i32 0, i32 0
  %285 = load %struct.bz_stream*, %struct.bz_stream** %strm383, align 8
  %total_out_hi32384 = getelementptr inbounds %struct.bz_stream, %struct.bz_stream* %285, i32 0, i32 7
  %286 = load i32, i32* %total_out_hi32384, align 4
  %inc385 = add i32 %286, 1
  store i32 %inc385, i32* %total_out_hi32384, align 4
  br label %if.end.386

if.end.386:                                       ; preds = %if.then.382, %if.end.352
  br label %while.body.341

while.end.387:                                    ; preds = %if.then.351
  %287 = load %struct.DState*, %struct.DState** %s.addr, align 8
  %nblock_used388 = getelementptr inbounds %struct.DState, %struct.DState* %287, i32 0, i32 17
  %288 = load i32, i32* %nblock_used388, align 4
  %289 = load %struct.DState*, %struct.DState** %s.addr, align 8
  %save_nblock389 = getelementptr inbounds %struct.DState, %struct.DState* %289, i32 0, i32 51
  %290 = load i32, i32* %save_nblock389, align 4
  %add390 = add nsw i32 %290, 1
  %cmp391 = icmp eq i32 %288, %add390
  br i1 %cmp391, label %if.then.393, label %if.end.394

if.then.393:                                      ; preds = %while.end.387
  store i8 0, i8* %retval
  br label %return

if.end.394:                                       ; preds = %while.end.387
  %291 = load %struct.DState*, %struct.DState** %s.addr, align 8
  %nblock_used395 = getelementptr inbounds %struct.DState, %struct.DState* %291, i32 0, i32 17
  %292 = load i32, i32* %nblock_used395, align 4
  %293 = load %struct.DState*, %struct.DState** %s.addr, align 8
  %save_nblock396 = getelementptr inbounds %struct.DState, %struct.DState* %293, i32 0, i32 51
  %294 = load i32, i32* %save_nblock396, align 4
  %add397 = add nsw i32 %294, 1
  %cmp398 = icmp sgt i32 %292, %add397
  br i1 %cmp398, label %if.then.400, label %if.end.401

if.then.400:                                      ; preds = %if.end.394
  store i8 1, i8* %retval
  br label %return

if.end.401:                                       ; preds = %if.end.394
  %295 = load %struct.DState*, %struct.DState** %s.addr, align 8
  %state_out_len402 = getelementptr inbounds %struct.DState, %struct.DState* %295, i32 0, i32 3
  store i32 1, i32* %state_out_len402, align 4
  %296 = load %struct.DState*, %struct.DState** %s.addr, align 8
  %k0403 = getelementptr inbounds %struct.DState, %struct.DState* %296, i32 0, i32 15
  %297 = load i32, i32* %k0403, align 4
  %conv404 = trunc i32 %297 to i8
  %298 = load %struct.DState*, %struct.DState** %s.addr, align 8
  %state_out_ch405 = getelementptr inbounds %struct.DState, %struct.DState* %298, i32 0, i32 2
  store i8 %conv404, i8* %state_out_ch405, align 1
  %299 = load %struct.DState*, %struct.DState** %s.addr, align 8
  %tPos406 = getelementptr inbounds %struct.DState, %struct.DState* %299, i32 0, i32 14
  %300 = load i32, i32* %tPos406, align 4
  %301 = load %struct.DState*, %struct.DState** %s.addr, align 8
  %cftab407 = getelementptr inbounds %struct.DState, %struct.DState* %301, i32 0, i32 18
  %arraydecay408 = getelementptr inbounds [257 x i32], [257 x i32]* %cftab407, i32 0, i32 0
  %call409 = call i32 @BZ2_indexIntoF(i32 %300, i32* %arraydecay408)
  %conv410 = trunc i32 %call409 to i8
  store i8 %conv410, i8* %k1, align 1
  %302 = load %struct.DState*, %struct.DState** %s.addr, align 8
  %tPos411 = getelementptr inbounds %struct.DState, %struct.DState* %302, i32 0, i32 14
  %303 = load i32, i32* %tPos411, align 4
  %idxprom412 = zext i32 %303 to i64
  %304 = load %struct.DState*, %struct.DState** %s.addr, align 8
  %ll16413 = getelementptr inbounds %struct.DState, %struct.DState* %304, i32 0, i32 21
  %305 = load i16*, i16** %ll16413, align 8
  %arrayidx414 = getelementptr inbounds i16, i16* %305, i64 %idxprom412
  %306 = load i16, i16* %arrayidx414, align 2
  %conv415 = zext i16 %306 to i32
  %307 = load %struct.DState*, %struct.DState** %s.addr, align 8
  %tPos416 = getelementptr inbounds %struct.DState, %struct.DState* %307, i32 0, i32 14
  %308 = load i32, i32* %tPos416, align 4
  %shr417 = lshr i32 %308, 1
  %idxprom418 = zext i32 %shr417 to i64
  %309 = load %struct.DState*, %struct.DState** %s.addr, align 8
  %ll4419 = getelementptr inbounds %struct.DState, %struct.DState* %309, i32 0, i32 22
  %310 = load i8*, i8** %ll4419, align 8
  %arrayidx420 = getelementptr inbounds i8, i8* %310, i64 %idxprom418
  %311 = load i8, i8* %arrayidx420, align 1
  %conv421 = zext i8 %311 to i32
  %312 = load %struct.DState*, %struct.DState** %s.addr, align 8
  %tPos422 = getelementptr inbounds %struct.DState, %struct.DState* %312, i32 0, i32 14
  %313 = load i32, i32* %tPos422, align 4
  %shl423 = shl i32 %313, 2
  %and424 = and i32 %shl423, 4
  %shr425 = lshr i32 %conv421, %and424
  %and426 = and i32 %shr425, 15
  %shl427 = shl i32 %and426, 16
  %or428 = or i32 %conv415, %shl427
  %314 = load %struct.DState*, %struct.DState** %s.addr, align 8
  %tPos429 = getelementptr inbounds %struct.DState, %struct.DState* %314, i32 0, i32 14
  store i32 %or428, i32* %tPos429, align 4
  %315 = load %struct.DState*, %struct.DState** %s.addr, align 8
  %nblock_used430 = getelementptr inbounds %struct.DState, %struct.DState* %315, i32 0, i32 17
  %316 = load i32, i32* %nblock_used430, align 4
  %inc431 = add nsw i32 %316, 1
  store i32 %inc431, i32* %nblock_used430, align 4
  %317 = load %struct.DState*, %struct.DState** %s.addr, align 8
  %nblock_used432 = getelementptr inbounds %struct.DState, %struct.DState* %317, i32 0, i32 17
  %318 = load i32, i32* %nblock_used432, align 4
  %319 = load %struct.DState*, %struct.DState** %s.addr, align 8
  %save_nblock433 = getelementptr inbounds %struct.DState, %struct.DState* %319, i32 0, i32 51
  %320 = load i32, i32* %save_nblock433, align 4
  %add434 = add nsw i32 %320, 1
  %cmp435 = icmp eq i32 %318, %add434
  br i1 %cmp435, label %if.then.437, label %if.end.438

if.then.437:                                      ; preds = %if.end.401
  br label %while.body.339

if.end.438:                                       ; preds = %if.end.401
  %321 = load i8, i8* %k1, align 1
  %conv439 = zext i8 %321 to i32
  %322 = load %struct.DState*, %struct.DState** %s.addr, align 8
  %k0440 = getelementptr inbounds %struct.DState, %struct.DState* %322, i32 0, i32 15
  %323 = load i32, i32* %k0440, align 4
  %cmp441 = icmp ne i32 %conv439, %323
  br i1 %cmp441, label %if.then.443, label %if.end.446

if.then.443:                                      ; preds = %if.end.438
  %324 = load i8, i8* %k1, align 1
  %conv444 = zext i8 %324 to i32
  %325 = load %struct.DState*, %struct.DState** %s.addr, align 8
  %k0445 = getelementptr inbounds %struct.DState, %struct.DState* %325, i32 0, i32 15
  store i32 %conv444, i32* %k0445, align 4
  br label %while.body.339

if.end.446:                                       ; preds = %if.end.438
  %326 = load %struct.DState*, %struct.DState** %s.addr, align 8
  %state_out_len447 = getelementptr inbounds %struct.DState, %struct.DState* %326, i32 0, i32 3
  store i32 2, i32* %state_out_len447, align 4
  %327 = load %struct.DState*, %struct.DState** %s.addr, align 8
  %tPos448 = getelementptr inbounds %struct.DState, %struct.DState* %327, i32 0, i32 14
  %328 = load i32, i32* %tPos448, align 4
  %329 = load %struct.DState*, %struct.DState** %s.addr, align 8
  %cftab449 = getelementptr inbounds %struct.DState, %struct.DState* %329, i32 0, i32 18
  %arraydecay450 = getelementptr inbounds [257 x i32], [257 x i32]* %cftab449, i32 0, i32 0
  %call451 = call i32 @BZ2_indexIntoF(i32 %328, i32* %arraydecay450)
  %conv452 = trunc i32 %call451 to i8
  store i8 %conv452, i8* %k1, align 1
  %330 = load %struct.DState*, %struct.DState** %s.addr, align 8
  %tPos453 = getelementptr inbounds %struct.DState, %struct.DState* %330, i32 0, i32 14
  %331 = load i32, i32* %tPos453, align 4
  %idxprom454 = zext i32 %331 to i64
  %332 = load %struct.DState*, %struct.DState** %s.addr, align 8
  %ll16455 = getelementptr inbounds %struct.DState, %struct.DState* %332, i32 0, i32 21
  %333 = load i16*, i16** %ll16455, align 8
  %arrayidx456 = getelementptr inbounds i16, i16* %333, i64 %idxprom454
  %334 = load i16, i16* %arrayidx456, align 2
  %conv457 = zext i16 %334 to i32
  %335 = load %struct.DState*, %struct.DState** %s.addr, align 8
  %tPos458 = getelementptr inbounds %struct.DState, %struct.DState* %335, i32 0, i32 14
  %336 = load i32, i32* %tPos458, align 4
  %shr459 = lshr i32 %336, 1
  %idxprom460 = zext i32 %shr459 to i64
  %337 = load %struct.DState*, %struct.DState** %s.addr, align 8
  %ll4461 = getelementptr inbounds %struct.DState, %struct.DState* %337, i32 0, i32 22
  %338 = load i8*, i8** %ll4461, align 8
  %arrayidx462 = getelementptr inbounds i8, i8* %338, i64 %idxprom460
  %339 = load i8, i8* %arrayidx462, align 1
  %conv463 = zext i8 %339 to i32
  %340 = load %struct.DState*, %struct.DState** %s.addr, align 8
  %tPos464 = getelementptr inbounds %struct.DState, %struct.DState* %340, i32 0, i32 14
  %341 = load i32, i32* %tPos464, align 4
  %shl465 = shl i32 %341, 2
  %and466 = and i32 %shl465, 4
  %shr467 = lshr i32 %conv463, %and466
  %and468 = and i32 %shr467, 15
  %shl469 = shl i32 %and468, 16
  %or470 = or i32 %conv457, %shl469
  %342 = load %struct.DState*, %struct.DState** %s.addr, align 8
  %tPos471 = getelementptr inbounds %struct.DState, %struct.DState* %342, i32 0, i32 14
  store i32 %or470, i32* %tPos471, align 4
  %343 = load %struct.DState*, %struct.DState** %s.addr, align 8
  %nblock_used472 = getelementptr inbounds %struct.DState, %struct.DState* %343, i32 0, i32 17
  %344 = load i32, i32* %nblock_used472, align 4
  %inc473 = add nsw i32 %344, 1
  store i32 %inc473, i32* %nblock_used472, align 4
  %345 = load %struct.DState*, %struct.DState** %s.addr, align 8
  %nblock_used474 = getelementptr inbounds %struct.DState, %struct.DState* %345, i32 0, i32 17
  %346 = load i32, i32* %nblock_used474, align 4
  %347 = load %struct.DState*, %struct.DState** %s.addr, align 8
  %save_nblock475 = getelementptr inbounds %struct.DState, %struct.DState* %347, i32 0, i32 51
  %348 = load i32, i32* %save_nblock475, align 4
  %add476 = add nsw i32 %348, 1
  %cmp477 = icmp eq i32 %346, %add476
  br i1 %cmp477, label %if.then.479, label %if.end.480

if.then.479:                                      ; preds = %if.end.446
  br label %while.body.339

if.end.480:                                       ; preds = %if.end.446
  %349 = load i8, i8* %k1, align 1
  %conv481 = zext i8 %349 to i32
  %350 = load %struct.DState*, %struct.DState** %s.addr, align 8
  %k0482 = getelementptr inbounds %struct.DState, %struct.DState* %350, i32 0, i32 15
  %351 = load i32, i32* %k0482, align 4
  %cmp483 = icmp ne i32 %conv481, %351
  br i1 %cmp483, label %if.then.485, label %if.end.488

if.then.485:                                      ; preds = %if.end.480
  %352 = load i8, i8* %k1, align 1
  %conv486 = zext i8 %352 to i32
  %353 = load %struct.DState*, %struct.DState** %s.addr, align 8
  %k0487 = getelementptr inbounds %struct.DState, %struct.DState* %353, i32 0, i32 15
  store i32 %conv486, i32* %k0487, align 4
  br label %while.body.339

if.end.488:                                       ; preds = %if.end.480
  %354 = load %struct.DState*, %struct.DState** %s.addr, align 8
  %state_out_len489 = getelementptr inbounds %struct.DState, %struct.DState* %354, i32 0, i32 3
  store i32 3, i32* %state_out_len489, align 4
  %355 = load %struct.DState*, %struct.DState** %s.addr, align 8
  %tPos490 = getelementptr inbounds %struct.DState, %struct.DState* %355, i32 0, i32 14
  %356 = load i32, i32* %tPos490, align 4
  %357 = load %struct.DState*, %struct.DState** %s.addr, align 8
  %cftab491 = getelementptr inbounds %struct.DState, %struct.DState* %357, i32 0, i32 18
  %arraydecay492 = getelementptr inbounds [257 x i32], [257 x i32]* %cftab491, i32 0, i32 0
  %call493 = call i32 @BZ2_indexIntoF(i32 %356, i32* %arraydecay492)
  %conv494 = trunc i32 %call493 to i8
  store i8 %conv494, i8* %k1, align 1
  %358 = load %struct.DState*, %struct.DState** %s.addr, align 8
  %tPos495 = getelementptr inbounds %struct.DState, %struct.DState* %358, i32 0, i32 14
  %359 = load i32, i32* %tPos495, align 4
  %idxprom496 = zext i32 %359 to i64
  %360 = load %struct.DState*, %struct.DState** %s.addr, align 8
  %ll16497 = getelementptr inbounds %struct.DState, %struct.DState* %360, i32 0, i32 21
  %361 = load i16*, i16** %ll16497, align 8
  %arrayidx498 = getelementptr inbounds i16, i16* %361, i64 %idxprom496
  %362 = load i16, i16* %arrayidx498, align 2
  %conv499 = zext i16 %362 to i32
  %363 = load %struct.DState*, %struct.DState** %s.addr, align 8
  %tPos500 = getelementptr inbounds %struct.DState, %struct.DState* %363, i32 0, i32 14
  %364 = load i32, i32* %tPos500, align 4
  %shr501 = lshr i32 %364, 1
  %idxprom502 = zext i32 %shr501 to i64
  %365 = load %struct.DState*, %struct.DState** %s.addr, align 8
  %ll4503 = getelementptr inbounds %struct.DState, %struct.DState* %365, i32 0, i32 22
  %366 = load i8*, i8** %ll4503, align 8
  %arrayidx504 = getelementptr inbounds i8, i8* %366, i64 %idxprom502
  %367 = load i8, i8* %arrayidx504, align 1
  %conv505 = zext i8 %367 to i32
  %368 = load %struct.DState*, %struct.DState** %s.addr, align 8
  %tPos506 = getelementptr inbounds %struct.DState, %struct.DState* %368, i32 0, i32 14
  %369 = load i32, i32* %tPos506, align 4
  %shl507 = shl i32 %369, 2
  %and508 = and i32 %shl507, 4
  %shr509 = lshr i32 %conv505, %and508
  %and510 = and i32 %shr509, 15
  %shl511 = shl i32 %and510, 16
  %or512 = or i32 %conv499, %shl511
  %370 = load %struct.DState*, %struct.DState** %s.addr, align 8
  %tPos513 = getelementptr inbounds %struct.DState, %struct.DState* %370, i32 0, i32 14
  store i32 %or512, i32* %tPos513, align 4
  %371 = load %struct.DState*, %struct.DState** %s.addr, align 8
  %nblock_used514 = getelementptr inbounds %struct.DState, %struct.DState* %371, i32 0, i32 17
  %372 = load i32, i32* %nblock_used514, align 4
  %inc515 = add nsw i32 %372, 1
  store i32 %inc515, i32* %nblock_used514, align 4
  %373 = load %struct.DState*, %struct.DState** %s.addr, align 8
  %nblock_used516 = getelementptr inbounds %struct.DState, %struct.DState* %373, i32 0, i32 17
  %374 = load i32, i32* %nblock_used516, align 4
  %375 = load %struct.DState*, %struct.DState** %s.addr, align 8
  %save_nblock517 = getelementptr inbounds %struct.DState, %struct.DState* %375, i32 0, i32 51
  %376 = load i32, i32* %save_nblock517, align 4
  %add518 = add nsw i32 %376, 1
  %cmp519 = icmp eq i32 %374, %add518
  br i1 %cmp519, label %if.then.521, label %if.end.522

if.then.521:                                      ; preds = %if.end.488
  br label %while.body.339

if.end.522:                                       ; preds = %if.end.488
  %377 = load i8, i8* %k1, align 1
  %conv523 = zext i8 %377 to i32
  %378 = load %struct.DState*, %struct.DState** %s.addr, align 8
  %k0524 = getelementptr inbounds %struct.DState, %struct.DState* %378, i32 0, i32 15
  %379 = load i32, i32* %k0524, align 4
  %cmp525 = icmp ne i32 %conv523, %379
  br i1 %cmp525, label %if.then.527, label %if.end.530

if.then.527:                                      ; preds = %if.end.522
  %380 = load i8, i8* %k1, align 1
  %conv528 = zext i8 %380 to i32
  %381 = load %struct.DState*, %struct.DState** %s.addr, align 8
  %k0529 = getelementptr inbounds %struct.DState, %struct.DState* %381, i32 0, i32 15
  store i32 %conv528, i32* %k0529, align 4
  br label %while.body.339

if.end.530:                                       ; preds = %if.end.522
  %382 = load %struct.DState*, %struct.DState** %s.addr, align 8
  %tPos531 = getelementptr inbounds %struct.DState, %struct.DState* %382, i32 0, i32 14
  %383 = load i32, i32* %tPos531, align 4
  %384 = load %struct.DState*, %struct.DState** %s.addr, align 8
  %cftab532 = getelementptr inbounds %struct.DState, %struct.DState* %384, i32 0, i32 18
  %arraydecay533 = getelementptr inbounds [257 x i32], [257 x i32]* %cftab532, i32 0, i32 0
  %call534 = call i32 @BZ2_indexIntoF(i32 %383, i32* %arraydecay533)
  %conv535 = trunc i32 %call534 to i8
  store i8 %conv535, i8* %k1, align 1
  %385 = load %struct.DState*, %struct.DState** %s.addr, align 8
  %tPos536 = getelementptr inbounds %struct.DState, %struct.DState* %385, i32 0, i32 14
  %386 = load i32, i32* %tPos536, align 4
  %idxprom537 = zext i32 %386 to i64
  %387 = load %struct.DState*, %struct.DState** %s.addr, align 8
  %ll16538 = getelementptr inbounds %struct.DState, %struct.DState* %387, i32 0, i32 21
  %388 = load i16*, i16** %ll16538, align 8
  %arrayidx539 = getelementptr inbounds i16, i16* %388, i64 %idxprom537
  %389 = load i16, i16* %arrayidx539, align 2
  %conv540 = zext i16 %389 to i32
  %390 = load %struct.DState*, %struct.DState** %s.addr, align 8
  %tPos541 = getelementptr inbounds %struct.DState, %struct.DState* %390, i32 0, i32 14
  %391 = load i32, i32* %tPos541, align 4
  %shr542 = lshr i32 %391, 1
  %idxprom543 = zext i32 %shr542 to i64
  %392 = load %struct.DState*, %struct.DState** %s.addr, align 8
  %ll4544 = getelementptr inbounds %struct.DState, %struct.DState* %392, i32 0, i32 22
  %393 = load i8*, i8** %ll4544, align 8
  %arrayidx545 = getelementptr inbounds i8, i8* %393, i64 %idxprom543
  %394 = load i8, i8* %arrayidx545, align 1
  %conv546 = zext i8 %394 to i32
  %395 = load %struct.DState*, %struct.DState** %s.addr, align 8
  %tPos547 = getelementptr inbounds %struct.DState, %struct.DState* %395, i32 0, i32 14
  %396 = load i32, i32* %tPos547, align 4
  %shl548 = shl i32 %396, 2
  %and549 = and i32 %shl548, 4
  %shr550 = lshr i32 %conv546, %and549
  %and551 = and i32 %shr550, 15
  %shl552 = shl i32 %and551, 16
  %or553 = or i32 %conv540, %shl552
  %397 = load %struct.DState*, %struct.DState** %s.addr, align 8
  %tPos554 = getelementptr inbounds %struct.DState, %struct.DState* %397, i32 0, i32 14
  store i32 %or553, i32* %tPos554, align 4
  %398 = load %struct.DState*, %struct.DState** %s.addr, align 8
  %nblock_used555 = getelementptr inbounds %struct.DState, %struct.DState* %398, i32 0, i32 17
  %399 = load i32, i32* %nblock_used555, align 4
  %inc556 = add nsw i32 %399, 1
  store i32 %inc556, i32* %nblock_used555, align 4
  %400 = load i8, i8* %k1, align 1
  %conv557 = zext i8 %400 to i32
  %add558 = add nsw i32 %conv557, 4
  %401 = load %struct.DState*, %struct.DState** %s.addr, align 8
  %state_out_len559 = getelementptr inbounds %struct.DState, %struct.DState* %401, i32 0, i32 3
  store i32 %add558, i32* %state_out_len559, align 4
  %402 = load %struct.DState*, %struct.DState** %s.addr, align 8
  %tPos560 = getelementptr inbounds %struct.DState, %struct.DState* %402, i32 0, i32 14
  %403 = load i32, i32* %tPos560, align 4
  %404 = load %struct.DState*, %struct.DState** %s.addr, align 8
  %cftab561 = getelementptr inbounds %struct.DState, %struct.DState* %404, i32 0, i32 18
  %arraydecay562 = getelementptr inbounds [257 x i32], [257 x i32]* %cftab561, i32 0, i32 0
  %call563 = call i32 @BZ2_indexIntoF(i32 %403, i32* %arraydecay562)
  %405 = load %struct.DState*, %struct.DState** %s.addr, align 8
  %k0564 = getelementptr inbounds %struct.DState, %struct.DState* %405, i32 0, i32 15
  store i32 %call563, i32* %k0564, align 4
  %406 = load %struct.DState*, %struct.DState** %s.addr, align 8
  %tPos565 = getelementptr inbounds %struct.DState, %struct.DState* %406, i32 0, i32 14
  %407 = load i32, i32* %tPos565, align 4
  %idxprom566 = zext i32 %407 to i64
  %408 = load %struct.DState*, %struct.DState** %s.addr, align 8
  %ll16567 = getelementptr inbounds %struct.DState, %struct.DState* %408, i32 0, i32 21
  %409 = load i16*, i16** %ll16567, align 8
  %arrayidx568 = getelementptr inbounds i16, i16* %409, i64 %idxprom566
  %410 = load i16, i16* %arrayidx568, align 2
  %conv569 = zext i16 %410 to i32
  %411 = load %struct.DState*, %struct.DState** %s.addr, align 8
  %tPos570 = getelementptr inbounds %struct.DState, %struct.DState* %411, i32 0, i32 14
  %412 = load i32, i32* %tPos570, align 4
  %shr571 = lshr i32 %412, 1
  %idxprom572 = zext i32 %shr571 to i64
  %413 = load %struct.DState*, %struct.DState** %s.addr, align 8
  %ll4573 = getelementptr inbounds %struct.DState, %struct.DState* %413, i32 0, i32 22
  %414 = load i8*, i8** %ll4573, align 8
  %arrayidx574 = getelementptr inbounds i8, i8* %414, i64 %idxprom572
  %415 = load i8, i8* %arrayidx574, align 1
  %conv575 = zext i8 %415 to i32
  %416 = load %struct.DState*, %struct.DState** %s.addr, align 8
  %tPos576 = getelementptr inbounds %struct.DState, %struct.DState* %416, i32 0, i32 14
  %417 = load i32, i32* %tPos576, align 4
  %shl577 = shl i32 %417, 2
  %and578 = and i32 %shl577, 4
  %shr579 = lshr i32 %conv575, %and578
  %and580 = and i32 %shr579, 15
  %shl581 = shl i32 %and580, 16
  %or582 = or i32 %conv569, %shl581
  %418 = load %struct.DState*, %struct.DState** %s.addr, align 8
  %tPos583 = getelementptr inbounds %struct.DState, %struct.DState* %418, i32 0, i32 14
  store i32 %or582, i32* %tPos583, align 4
  %419 = load %struct.DState*, %struct.DState** %s.addr, align 8
  %nblock_used584 = getelementptr inbounds %struct.DState, %struct.DState* %419, i32 0, i32 17
  %420 = load i32, i32* %nblock_used584, align 4
  %inc585 = add nsw i32 %420, 1
  store i32 %inc585, i32* %nblock_used584, align 4
  br label %while.body.339

return:                                           ; preds = %if.then.400, %if.then.393, %if.then.346, %if.then.36, %if.then.29, %if.then.3
  %421 = load i8, i8* %retval
  ret i8 %421
}

; Function Attrs: nounwind uwtable
define internal zeroext i8 @unRLE_obuf_to_output_FAST(%struct.DState* %s) #0 {
entry:
  %retval = alloca i8, align 1
  %s.addr = alloca %struct.DState*, align 8
  %k1 = alloca i8, align 1
  %c_calculatedBlockCRC = alloca i32, align 4
  %c_state_out_ch = alloca i8, align 1
  %c_state_out_len = alloca i32, align 4
  %c_nblock_used = alloca i32, align 4
  %c_k0 = alloca i32, align 4
  %c_tt = alloca i32*, align 8
  %c_tPos = alloca i32, align 4
  %cs_next_out = alloca i8*, align 8
  %cs_avail_out = alloca i32, align 4
  %avail_out_INIT = alloca i32, align 4
  %s_save_nblockPP = alloca i32, align 4
  %total_out_lo32_old = alloca i32, align 4
  store %struct.DState* %s, %struct.DState** %s.addr, align 8
  %0 = load %struct.DState*, %struct.DState** %s.addr, align 8
  %blockRandomised = getelementptr inbounds %struct.DState, %struct.DState* %0, i32 0, i32 4
  %1 = load i8, i8* %blockRandomised, align 1
  %tobool = icmp ne i8 %1, 0
  br i1 %tobool, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  br label %while.body

while.body:                                       ; preds = %if.then, %if.then.78, %if.then.84, %if.then.132, %if.then.138, %if.then.186, %if.then.192, %if.end.265
  br label %while.body.2

while.body.2:                                     ; preds = %while.body, %if.end.26
  %2 = load %struct.DState*, %struct.DState** %s.addr, align 8
  %strm = getelementptr inbounds %struct.DState, %struct.DState* %2, i32 0, i32 0
  %3 = load %struct.bz_stream*, %struct.bz_stream** %strm, align 8
  %avail_out = getelementptr inbounds %struct.bz_stream, %struct.bz_stream* %3, i32 0, i32 5
  %4 = load i32, i32* %avail_out, align 4
  %cmp = icmp eq i32 %4, 0
  br i1 %cmp, label %if.then.3, label %if.end

if.then.3:                                        ; preds = %while.body.2
  store i8 0, i8* %retval
  br label %return

if.end:                                           ; preds = %while.body.2
  %5 = load %struct.DState*, %struct.DState** %s.addr, align 8
  %state_out_len = getelementptr inbounds %struct.DState, %struct.DState* %5, i32 0, i32 3
  %6 = load i32, i32* %state_out_len, align 4
  %cmp4 = icmp eq i32 %6, 0
  br i1 %cmp4, label %if.then.5, label %if.end.6

if.then.5:                                        ; preds = %if.end
  br label %while.end

if.end.6:                                         ; preds = %if.end
  %7 = load %struct.DState*, %struct.DState** %s.addr, align 8
  %state_out_ch = getelementptr inbounds %struct.DState, %struct.DState* %7, i32 0, i32 2
  %8 = load i8, i8* %state_out_ch, align 1
  %9 = load %struct.DState*, %struct.DState** %s.addr, align 8
  %strm7 = getelementptr inbounds %struct.DState, %struct.DState* %9, i32 0, i32 0
  %10 = load %struct.bz_stream*, %struct.bz_stream** %strm7, align 8
  %next_out = getelementptr inbounds %struct.bz_stream, %struct.bz_stream* %10, i32 0, i32 4
  %11 = load i8*, i8** %next_out, align 8
  store i8 %8, i8* %11, align 1
  %12 = load %struct.DState*, %struct.DState** %s.addr, align 8
  %calculatedBlockCRC = getelementptr inbounds %struct.DState, %struct.DState* %12, i32 0, i32 25
  %13 = load i32, i32* %calculatedBlockCRC, align 4
  %shl = shl i32 %13, 8
  %14 = load %struct.DState*, %struct.DState** %s.addr, align 8
  %calculatedBlockCRC8 = getelementptr inbounds %struct.DState, %struct.DState* %14, i32 0, i32 25
  %15 = load i32, i32* %calculatedBlockCRC8, align 4
  %shr = lshr i32 %15, 24
  %16 = load %struct.DState*, %struct.DState** %s.addr, align 8
  %state_out_ch9 = getelementptr inbounds %struct.DState, %struct.DState* %16, i32 0, i32 2
  %17 = load i8, i8* %state_out_ch9, align 1
  %conv = zext i8 %17 to i32
  %xor = xor i32 %shr, %conv
  %idxprom = zext i32 %xor to i64
  %arrayidx = getelementptr inbounds [256 x i32], [256 x i32]* @BZ2_crc32Table, i32 0, i64 %idxprom
  %18 = load i32, i32* %arrayidx, align 4
  %xor10 = xor i32 %shl, %18
  %19 = load %struct.DState*, %struct.DState** %s.addr, align 8
  %calculatedBlockCRC11 = getelementptr inbounds %struct.DState, %struct.DState* %19, i32 0, i32 25
  store i32 %xor10, i32* %calculatedBlockCRC11, align 4
  %20 = load %struct.DState*, %struct.DState** %s.addr, align 8
  %state_out_len12 = getelementptr inbounds %struct.DState, %struct.DState* %20, i32 0, i32 3
  %21 = load i32, i32* %state_out_len12, align 4
  %dec = add nsw i32 %21, -1
  store i32 %dec, i32* %state_out_len12, align 4
  %22 = load %struct.DState*, %struct.DState** %s.addr, align 8
  %strm13 = getelementptr inbounds %struct.DState, %struct.DState* %22, i32 0, i32 0
  %23 = load %struct.bz_stream*, %struct.bz_stream** %strm13, align 8
  %next_out14 = getelementptr inbounds %struct.bz_stream, %struct.bz_stream* %23, i32 0, i32 4
  %24 = load i8*, i8** %next_out14, align 8
  %incdec.ptr = getelementptr inbounds i8, i8* %24, i32 1
  store i8* %incdec.ptr, i8** %next_out14, align 8
  %25 = load %struct.DState*, %struct.DState** %s.addr, align 8
  %strm15 = getelementptr inbounds %struct.DState, %struct.DState* %25, i32 0, i32 0
  %26 = load %struct.bz_stream*, %struct.bz_stream** %strm15, align 8
  %avail_out16 = getelementptr inbounds %struct.bz_stream, %struct.bz_stream* %26, i32 0, i32 5
  %27 = load i32, i32* %avail_out16, align 4
  %dec17 = add i32 %27, -1
  store i32 %dec17, i32* %avail_out16, align 4
  %28 = load %struct.DState*, %struct.DState** %s.addr, align 8
  %strm18 = getelementptr inbounds %struct.DState, %struct.DState* %28, i32 0, i32 0
  %29 = load %struct.bz_stream*, %struct.bz_stream** %strm18, align 8
  %total_out_lo32 = getelementptr inbounds %struct.bz_stream, %struct.bz_stream* %29, i32 0, i32 6
  %30 = load i32, i32* %total_out_lo32, align 4
  %inc = add i32 %30, 1
  store i32 %inc, i32* %total_out_lo32, align 4
  %31 = load %struct.DState*, %struct.DState** %s.addr, align 8
  %strm19 = getelementptr inbounds %struct.DState, %struct.DState* %31, i32 0, i32 0
  %32 = load %struct.bz_stream*, %struct.bz_stream** %strm19, align 8
  %total_out_lo3220 = getelementptr inbounds %struct.bz_stream, %struct.bz_stream* %32, i32 0, i32 6
  %33 = load i32, i32* %total_out_lo3220, align 4
  %cmp21 = icmp eq i32 %33, 0
  br i1 %cmp21, label %if.then.23, label %if.end.26

if.then.23:                                       ; preds = %if.end.6
  %34 = load %struct.DState*, %struct.DState** %s.addr, align 8
  %strm24 = getelementptr inbounds %struct.DState, %struct.DState* %34, i32 0, i32 0
  %35 = load %struct.bz_stream*, %struct.bz_stream** %strm24, align 8
  %total_out_hi32 = getelementptr inbounds %struct.bz_stream, %struct.bz_stream* %35, i32 0, i32 7
  %36 = load i32, i32* %total_out_hi32, align 4
  %inc25 = add i32 %36, 1
  store i32 %inc25, i32* %total_out_hi32, align 4
  br label %if.end.26

if.end.26:                                        ; preds = %if.then.23, %if.end.6
  br label %while.body.2

while.end:                                        ; preds = %if.then.5
  %37 = load %struct.DState*, %struct.DState** %s.addr, align 8
  %nblock_used = getelementptr inbounds %struct.DState, %struct.DState* %37, i32 0, i32 17
  %38 = load i32, i32* %nblock_used, align 4
  %39 = load %struct.DState*, %struct.DState** %s.addr, align 8
  %save_nblock = getelementptr inbounds %struct.DState, %struct.DState* %39, i32 0, i32 51
  %40 = load i32, i32* %save_nblock, align 4
  %add = add nsw i32 %40, 1
  %cmp27 = icmp eq i32 %38, %add
  br i1 %cmp27, label %if.then.29, label %if.end.30

if.then.29:                                       ; preds = %while.end
  store i8 0, i8* %retval
  br label %return

if.end.30:                                        ; preds = %while.end
  %41 = load %struct.DState*, %struct.DState** %s.addr, align 8
  %nblock_used31 = getelementptr inbounds %struct.DState, %struct.DState* %41, i32 0, i32 17
  %42 = load i32, i32* %nblock_used31, align 4
  %43 = load %struct.DState*, %struct.DState** %s.addr, align 8
  %save_nblock32 = getelementptr inbounds %struct.DState, %struct.DState* %43, i32 0, i32 51
  %44 = load i32, i32* %save_nblock32, align 4
  %add33 = add nsw i32 %44, 1
  %cmp34 = icmp sgt i32 %42, %add33
  br i1 %cmp34, label %if.then.36, label %if.end.37

if.then.36:                                       ; preds = %if.end.30
  store i8 1, i8* %retval
  br label %return

if.end.37:                                        ; preds = %if.end.30
  %45 = load %struct.DState*, %struct.DState** %s.addr, align 8
  %state_out_len38 = getelementptr inbounds %struct.DState, %struct.DState* %45, i32 0, i32 3
  store i32 1, i32* %state_out_len38, align 4
  %46 = load %struct.DState*, %struct.DState** %s.addr, align 8
  %k0 = getelementptr inbounds %struct.DState, %struct.DState* %46, i32 0, i32 15
  %47 = load i32, i32* %k0, align 4
  %conv39 = trunc i32 %47 to i8
  %48 = load %struct.DState*, %struct.DState** %s.addr, align 8
  %state_out_ch40 = getelementptr inbounds %struct.DState, %struct.DState* %48, i32 0, i32 2
  store i8 %conv39, i8* %state_out_ch40, align 1
  %49 = load %struct.DState*, %struct.DState** %s.addr, align 8
  %tPos = getelementptr inbounds %struct.DState, %struct.DState* %49, i32 0, i32 14
  %50 = load i32, i32* %tPos, align 4
  %idxprom41 = zext i32 %50 to i64
  %51 = load %struct.DState*, %struct.DState** %s.addr, align 8
  %tt = getelementptr inbounds %struct.DState, %struct.DState* %51, i32 0, i32 20
  %52 = load i32*, i32** %tt, align 8
  %arrayidx42 = getelementptr inbounds i32, i32* %52, i64 %idxprom41
  %53 = load i32, i32* %arrayidx42, align 4
  %54 = load %struct.DState*, %struct.DState** %s.addr, align 8
  %tPos43 = getelementptr inbounds %struct.DState, %struct.DState* %54, i32 0, i32 14
  store i32 %53, i32* %tPos43, align 4
  %55 = load %struct.DState*, %struct.DState** %s.addr, align 8
  %tPos44 = getelementptr inbounds %struct.DState, %struct.DState* %55, i32 0, i32 14
  %56 = load i32, i32* %tPos44, align 4
  %and = and i32 %56, 255
  %conv45 = trunc i32 %and to i8
  store i8 %conv45, i8* %k1, align 1
  %57 = load %struct.DState*, %struct.DState** %s.addr, align 8
  %tPos46 = getelementptr inbounds %struct.DState, %struct.DState* %57, i32 0, i32 14
  %58 = load i32, i32* %tPos46, align 4
  %shr47 = lshr i32 %58, 8
  store i32 %shr47, i32* %tPos46, align 4
  %59 = load %struct.DState*, %struct.DState** %s.addr, align 8
  %rNToGo = getelementptr inbounds %struct.DState, %struct.DState* %59, i32 0, i32 5
  %60 = load i32, i32* %rNToGo, align 4
  %cmp48 = icmp eq i32 %60, 0
  br i1 %cmp48, label %if.then.50, label %if.end.62

if.then.50:                                       ; preds = %if.end.37
  %61 = load %struct.DState*, %struct.DState** %s.addr, align 8
  %rTPos = getelementptr inbounds %struct.DState, %struct.DState* %61, i32 0, i32 6
  %62 = load i32, i32* %rTPos, align 4
  %idxprom51 = sext i32 %62 to i64
  %arrayidx52 = getelementptr inbounds [512 x i32], [512 x i32]* @BZ2_rNums, i32 0, i64 %idxprom51
  %63 = load i32, i32* %arrayidx52, align 4
  %64 = load %struct.DState*, %struct.DState** %s.addr, align 8
  %rNToGo53 = getelementptr inbounds %struct.DState, %struct.DState* %64, i32 0, i32 5
  store i32 %63, i32* %rNToGo53, align 4
  %65 = load %struct.DState*, %struct.DState** %s.addr, align 8
  %rTPos54 = getelementptr inbounds %struct.DState, %struct.DState* %65, i32 0, i32 6
  %66 = load i32, i32* %rTPos54, align 4
  %inc55 = add nsw i32 %66, 1
  store i32 %inc55, i32* %rTPos54, align 4
  %67 = load %struct.DState*, %struct.DState** %s.addr, align 8
  %rTPos56 = getelementptr inbounds %struct.DState, %struct.DState* %67, i32 0, i32 6
  %68 = load i32, i32* %rTPos56, align 4
  %cmp57 = icmp eq i32 %68, 512
  br i1 %cmp57, label %if.then.59, label %if.end.61

if.then.59:                                       ; preds = %if.then.50
  %69 = load %struct.DState*, %struct.DState** %s.addr, align 8
  %rTPos60 = getelementptr inbounds %struct.DState, %struct.DState* %69, i32 0, i32 6
  store i32 0, i32* %rTPos60, align 4
  br label %if.end.61

if.end.61:                                        ; preds = %if.then.59, %if.then.50
  br label %if.end.62

if.end.62:                                        ; preds = %if.end.61, %if.end.37
  %70 = load %struct.DState*, %struct.DState** %s.addr, align 8
  %rNToGo63 = getelementptr inbounds %struct.DState, %struct.DState* %70, i32 0, i32 5
  %71 = load i32, i32* %rNToGo63, align 4
  %dec64 = add nsw i32 %71, -1
  store i32 %dec64, i32* %rNToGo63, align 4
  %72 = load %struct.DState*, %struct.DState** %s.addr, align 8
  %rNToGo65 = getelementptr inbounds %struct.DState, %struct.DState* %72, i32 0, i32 5
  %73 = load i32, i32* %rNToGo65, align 4
  %cmp66 = icmp eq i32 %73, 1
  %cond = select i1 %cmp66, i32 1, i32 0
  %74 = load i8, i8* %k1, align 1
  %conv68 = zext i8 %74 to i32
  %xor69 = xor i32 %conv68, %cond
  %conv70 = trunc i32 %xor69 to i8
  store i8 %conv70, i8* %k1, align 1
  %75 = load %struct.DState*, %struct.DState** %s.addr, align 8
  %nblock_used71 = getelementptr inbounds %struct.DState, %struct.DState* %75, i32 0, i32 17
  %76 = load i32, i32* %nblock_used71, align 4
  %inc72 = add nsw i32 %76, 1
  store i32 %inc72, i32* %nblock_used71, align 4
  %77 = load %struct.DState*, %struct.DState** %s.addr, align 8
  %nblock_used73 = getelementptr inbounds %struct.DState, %struct.DState* %77, i32 0, i32 17
  %78 = load i32, i32* %nblock_used73, align 4
  %79 = load %struct.DState*, %struct.DState** %s.addr, align 8
  %save_nblock74 = getelementptr inbounds %struct.DState, %struct.DState* %79, i32 0, i32 51
  %80 = load i32, i32* %save_nblock74, align 4
  %add75 = add nsw i32 %80, 1
  %cmp76 = icmp eq i32 %78, %add75
  br i1 %cmp76, label %if.then.78, label %if.end.79

if.then.78:                                       ; preds = %if.end.62
  br label %while.body

if.end.79:                                        ; preds = %if.end.62
  %81 = load i8, i8* %k1, align 1
  %conv80 = zext i8 %81 to i32
  %82 = load %struct.DState*, %struct.DState** %s.addr, align 8
  %k081 = getelementptr inbounds %struct.DState, %struct.DState* %82, i32 0, i32 15
  %83 = load i32, i32* %k081, align 4
  %cmp82 = icmp ne i32 %conv80, %83
  br i1 %cmp82, label %if.then.84, label %if.end.87

if.then.84:                                       ; preds = %if.end.79
  %84 = load i8, i8* %k1, align 1
  %conv85 = zext i8 %84 to i32
  %85 = load %struct.DState*, %struct.DState** %s.addr, align 8
  %k086 = getelementptr inbounds %struct.DState, %struct.DState* %85, i32 0, i32 15
  store i32 %conv85, i32* %k086, align 4
  br label %while.body

if.end.87:                                        ; preds = %if.end.79
  %86 = load %struct.DState*, %struct.DState** %s.addr, align 8
  %state_out_len88 = getelementptr inbounds %struct.DState, %struct.DState* %86, i32 0, i32 3
  store i32 2, i32* %state_out_len88, align 4
  %87 = load %struct.DState*, %struct.DState** %s.addr, align 8
  %tPos89 = getelementptr inbounds %struct.DState, %struct.DState* %87, i32 0, i32 14
  %88 = load i32, i32* %tPos89, align 4
  %idxprom90 = zext i32 %88 to i64
  %89 = load %struct.DState*, %struct.DState** %s.addr, align 8
  %tt91 = getelementptr inbounds %struct.DState, %struct.DState* %89, i32 0, i32 20
  %90 = load i32*, i32** %tt91, align 8
  %arrayidx92 = getelementptr inbounds i32, i32* %90, i64 %idxprom90
  %91 = load i32, i32* %arrayidx92, align 4
  %92 = load %struct.DState*, %struct.DState** %s.addr, align 8
  %tPos93 = getelementptr inbounds %struct.DState, %struct.DState* %92, i32 0, i32 14
  store i32 %91, i32* %tPos93, align 4
  %93 = load %struct.DState*, %struct.DState** %s.addr, align 8
  %tPos94 = getelementptr inbounds %struct.DState, %struct.DState* %93, i32 0, i32 14
  %94 = load i32, i32* %tPos94, align 4
  %and95 = and i32 %94, 255
  %conv96 = trunc i32 %and95 to i8
  store i8 %conv96, i8* %k1, align 1
  %95 = load %struct.DState*, %struct.DState** %s.addr, align 8
  %tPos97 = getelementptr inbounds %struct.DState, %struct.DState* %95, i32 0, i32 14
  %96 = load i32, i32* %tPos97, align 4
  %shr98 = lshr i32 %96, 8
  store i32 %shr98, i32* %tPos97, align 4
  %97 = load %struct.DState*, %struct.DState** %s.addr, align 8
  %rNToGo99 = getelementptr inbounds %struct.DState, %struct.DState* %97, i32 0, i32 5
  %98 = load i32, i32* %rNToGo99, align 4
  %cmp100 = icmp eq i32 %98, 0
  br i1 %cmp100, label %if.then.102, label %if.end.115

if.then.102:                                      ; preds = %if.end.87
  %99 = load %struct.DState*, %struct.DState** %s.addr, align 8
  %rTPos103 = getelementptr inbounds %struct.DState, %struct.DState* %99, i32 0, i32 6
  %100 = load i32, i32* %rTPos103, align 4
  %idxprom104 = sext i32 %100 to i64
  %arrayidx105 = getelementptr inbounds [512 x i32], [512 x i32]* @BZ2_rNums, i32 0, i64 %idxprom104
  %101 = load i32, i32* %arrayidx105, align 4
  %102 = load %struct.DState*, %struct.DState** %s.addr, align 8
  %rNToGo106 = getelementptr inbounds %struct.DState, %struct.DState* %102, i32 0, i32 5
  store i32 %101, i32* %rNToGo106, align 4
  %103 = load %struct.DState*, %struct.DState** %s.addr, align 8
  %rTPos107 = getelementptr inbounds %struct.DState, %struct.DState* %103, i32 0, i32 6
  %104 = load i32, i32* %rTPos107, align 4
  %inc108 = add nsw i32 %104, 1
  store i32 %inc108, i32* %rTPos107, align 4
  %105 = load %struct.DState*, %struct.DState** %s.addr, align 8
  %rTPos109 = getelementptr inbounds %struct.DState, %struct.DState* %105, i32 0, i32 6
  %106 = load i32, i32* %rTPos109, align 4
  %cmp110 = icmp eq i32 %106, 512
  br i1 %cmp110, label %if.then.112, label %if.end.114

if.then.112:                                      ; preds = %if.then.102
  %107 = load %struct.DState*, %struct.DState** %s.addr, align 8
  %rTPos113 = getelementptr inbounds %struct.DState, %struct.DState* %107, i32 0, i32 6
  store i32 0, i32* %rTPos113, align 4
  br label %if.end.114

if.end.114:                                       ; preds = %if.then.112, %if.then.102
  br label %if.end.115

if.end.115:                                       ; preds = %if.end.114, %if.end.87
  %108 = load %struct.DState*, %struct.DState** %s.addr, align 8
  %rNToGo116 = getelementptr inbounds %struct.DState, %struct.DState* %108, i32 0, i32 5
  %109 = load i32, i32* %rNToGo116, align 4
  %dec117 = add nsw i32 %109, -1
  store i32 %dec117, i32* %rNToGo116, align 4
  %110 = load %struct.DState*, %struct.DState** %s.addr, align 8
  %rNToGo118 = getelementptr inbounds %struct.DState, %struct.DState* %110, i32 0, i32 5
  %111 = load i32, i32* %rNToGo118, align 4
  %cmp119 = icmp eq i32 %111, 1
  %cond121 = select i1 %cmp119, i32 1, i32 0
  %112 = load i8, i8* %k1, align 1
  %conv122 = zext i8 %112 to i32
  %xor123 = xor i32 %conv122, %cond121
  %conv124 = trunc i32 %xor123 to i8
  store i8 %conv124, i8* %k1, align 1
  %113 = load %struct.DState*, %struct.DState** %s.addr, align 8
  %nblock_used125 = getelementptr inbounds %struct.DState, %struct.DState* %113, i32 0, i32 17
  %114 = load i32, i32* %nblock_used125, align 4
  %inc126 = add nsw i32 %114, 1
  store i32 %inc126, i32* %nblock_used125, align 4
  %115 = load %struct.DState*, %struct.DState** %s.addr, align 8
  %nblock_used127 = getelementptr inbounds %struct.DState, %struct.DState* %115, i32 0, i32 17
  %116 = load i32, i32* %nblock_used127, align 4
  %117 = load %struct.DState*, %struct.DState** %s.addr, align 8
  %save_nblock128 = getelementptr inbounds %struct.DState, %struct.DState* %117, i32 0, i32 51
  %118 = load i32, i32* %save_nblock128, align 4
  %add129 = add nsw i32 %118, 1
  %cmp130 = icmp eq i32 %116, %add129
  br i1 %cmp130, label %if.then.132, label %if.end.133

if.then.132:                                      ; preds = %if.end.115
  br label %while.body

if.end.133:                                       ; preds = %if.end.115
  %119 = load i8, i8* %k1, align 1
  %conv134 = zext i8 %119 to i32
  %120 = load %struct.DState*, %struct.DState** %s.addr, align 8
  %k0135 = getelementptr inbounds %struct.DState, %struct.DState* %120, i32 0, i32 15
  %121 = load i32, i32* %k0135, align 4
  %cmp136 = icmp ne i32 %conv134, %121
  br i1 %cmp136, label %if.then.138, label %if.end.141

if.then.138:                                      ; preds = %if.end.133
  %122 = load i8, i8* %k1, align 1
  %conv139 = zext i8 %122 to i32
  %123 = load %struct.DState*, %struct.DState** %s.addr, align 8
  %k0140 = getelementptr inbounds %struct.DState, %struct.DState* %123, i32 0, i32 15
  store i32 %conv139, i32* %k0140, align 4
  br label %while.body

if.end.141:                                       ; preds = %if.end.133
  %124 = load %struct.DState*, %struct.DState** %s.addr, align 8
  %state_out_len142 = getelementptr inbounds %struct.DState, %struct.DState* %124, i32 0, i32 3
  store i32 3, i32* %state_out_len142, align 4
  %125 = load %struct.DState*, %struct.DState** %s.addr, align 8
  %tPos143 = getelementptr inbounds %struct.DState, %struct.DState* %125, i32 0, i32 14
  %126 = load i32, i32* %tPos143, align 4
  %idxprom144 = zext i32 %126 to i64
  %127 = load %struct.DState*, %struct.DState** %s.addr, align 8
  %tt145 = getelementptr inbounds %struct.DState, %struct.DState* %127, i32 0, i32 20
  %128 = load i32*, i32** %tt145, align 8
  %arrayidx146 = getelementptr inbounds i32, i32* %128, i64 %idxprom144
  %129 = load i32, i32* %arrayidx146, align 4
  %130 = load %struct.DState*, %struct.DState** %s.addr, align 8
  %tPos147 = getelementptr inbounds %struct.DState, %struct.DState* %130, i32 0, i32 14
  store i32 %129, i32* %tPos147, align 4
  %131 = load %struct.DState*, %struct.DState** %s.addr, align 8
  %tPos148 = getelementptr inbounds %struct.DState, %struct.DState* %131, i32 0, i32 14
  %132 = load i32, i32* %tPos148, align 4
  %and149 = and i32 %132, 255
  %conv150 = trunc i32 %and149 to i8
  store i8 %conv150, i8* %k1, align 1
  %133 = load %struct.DState*, %struct.DState** %s.addr, align 8
  %tPos151 = getelementptr inbounds %struct.DState, %struct.DState* %133, i32 0, i32 14
  %134 = load i32, i32* %tPos151, align 4
  %shr152 = lshr i32 %134, 8
  store i32 %shr152, i32* %tPos151, align 4
  %135 = load %struct.DState*, %struct.DState** %s.addr, align 8
  %rNToGo153 = getelementptr inbounds %struct.DState, %struct.DState* %135, i32 0, i32 5
  %136 = load i32, i32* %rNToGo153, align 4
  %cmp154 = icmp eq i32 %136, 0
  br i1 %cmp154, label %if.then.156, label %if.end.169

if.then.156:                                      ; preds = %if.end.141
  %137 = load %struct.DState*, %struct.DState** %s.addr, align 8
  %rTPos157 = getelementptr inbounds %struct.DState, %struct.DState* %137, i32 0, i32 6
  %138 = load i32, i32* %rTPos157, align 4
  %idxprom158 = sext i32 %138 to i64
  %arrayidx159 = getelementptr inbounds [512 x i32], [512 x i32]* @BZ2_rNums, i32 0, i64 %idxprom158
  %139 = load i32, i32* %arrayidx159, align 4
  %140 = load %struct.DState*, %struct.DState** %s.addr, align 8
  %rNToGo160 = getelementptr inbounds %struct.DState, %struct.DState* %140, i32 0, i32 5
  store i32 %139, i32* %rNToGo160, align 4
  %141 = load %struct.DState*, %struct.DState** %s.addr, align 8
  %rTPos161 = getelementptr inbounds %struct.DState, %struct.DState* %141, i32 0, i32 6
  %142 = load i32, i32* %rTPos161, align 4
  %inc162 = add nsw i32 %142, 1
  store i32 %inc162, i32* %rTPos161, align 4
  %143 = load %struct.DState*, %struct.DState** %s.addr, align 8
  %rTPos163 = getelementptr inbounds %struct.DState, %struct.DState* %143, i32 0, i32 6
  %144 = load i32, i32* %rTPos163, align 4
  %cmp164 = icmp eq i32 %144, 512
  br i1 %cmp164, label %if.then.166, label %if.end.168

if.then.166:                                      ; preds = %if.then.156
  %145 = load %struct.DState*, %struct.DState** %s.addr, align 8
  %rTPos167 = getelementptr inbounds %struct.DState, %struct.DState* %145, i32 0, i32 6
  store i32 0, i32* %rTPos167, align 4
  br label %if.end.168

if.end.168:                                       ; preds = %if.then.166, %if.then.156
  br label %if.end.169

if.end.169:                                       ; preds = %if.end.168, %if.end.141
  %146 = load %struct.DState*, %struct.DState** %s.addr, align 8
  %rNToGo170 = getelementptr inbounds %struct.DState, %struct.DState* %146, i32 0, i32 5
  %147 = load i32, i32* %rNToGo170, align 4
  %dec171 = add nsw i32 %147, -1
  store i32 %dec171, i32* %rNToGo170, align 4
  %148 = load %struct.DState*, %struct.DState** %s.addr, align 8
  %rNToGo172 = getelementptr inbounds %struct.DState, %struct.DState* %148, i32 0, i32 5
  %149 = load i32, i32* %rNToGo172, align 4
  %cmp173 = icmp eq i32 %149, 1
  %cond175 = select i1 %cmp173, i32 1, i32 0
  %150 = load i8, i8* %k1, align 1
  %conv176 = zext i8 %150 to i32
  %xor177 = xor i32 %conv176, %cond175
  %conv178 = trunc i32 %xor177 to i8
  store i8 %conv178, i8* %k1, align 1
  %151 = load %struct.DState*, %struct.DState** %s.addr, align 8
  %nblock_used179 = getelementptr inbounds %struct.DState, %struct.DState* %151, i32 0, i32 17
  %152 = load i32, i32* %nblock_used179, align 4
  %inc180 = add nsw i32 %152, 1
  store i32 %inc180, i32* %nblock_used179, align 4
  %153 = load %struct.DState*, %struct.DState** %s.addr, align 8
  %nblock_used181 = getelementptr inbounds %struct.DState, %struct.DState* %153, i32 0, i32 17
  %154 = load i32, i32* %nblock_used181, align 4
  %155 = load %struct.DState*, %struct.DState** %s.addr, align 8
  %save_nblock182 = getelementptr inbounds %struct.DState, %struct.DState* %155, i32 0, i32 51
  %156 = load i32, i32* %save_nblock182, align 4
  %add183 = add nsw i32 %156, 1
  %cmp184 = icmp eq i32 %154, %add183
  br i1 %cmp184, label %if.then.186, label %if.end.187

if.then.186:                                      ; preds = %if.end.169
  br label %while.body

if.end.187:                                       ; preds = %if.end.169
  %157 = load i8, i8* %k1, align 1
  %conv188 = zext i8 %157 to i32
  %158 = load %struct.DState*, %struct.DState** %s.addr, align 8
  %k0189 = getelementptr inbounds %struct.DState, %struct.DState* %158, i32 0, i32 15
  %159 = load i32, i32* %k0189, align 4
  %cmp190 = icmp ne i32 %conv188, %159
  br i1 %cmp190, label %if.then.192, label %if.end.195

if.then.192:                                      ; preds = %if.end.187
  %160 = load i8, i8* %k1, align 1
  %conv193 = zext i8 %160 to i32
  %161 = load %struct.DState*, %struct.DState** %s.addr, align 8
  %k0194 = getelementptr inbounds %struct.DState, %struct.DState* %161, i32 0, i32 15
  store i32 %conv193, i32* %k0194, align 4
  br label %while.body

if.end.195:                                       ; preds = %if.end.187
  %162 = load %struct.DState*, %struct.DState** %s.addr, align 8
  %tPos196 = getelementptr inbounds %struct.DState, %struct.DState* %162, i32 0, i32 14
  %163 = load i32, i32* %tPos196, align 4
  %idxprom197 = zext i32 %163 to i64
  %164 = load %struct.DState*, %struct.DState** %s.addr, align 8
  %tt198 = getelementptr inbounds %struct.DState, %struct.DState* %164, i32 0, i32 20
  %165 = load i32*, i32** %tt198, align 8
  %arrayidx199 = getelementptr inbounds i32, i32* %165, i64 %idxprom197
  %166 = load i32, i32* %arrayidx199, align 4
  %167 = load %struct.DState*, %struct.DState** %s.addr, align 8
  %tPos200 = getelementptr inbounds %struct.DState, %struct.DState* %167, i32 0, i32 14
  store i32 %166, i32* %tPos200, align 4
  %168 = load %struct.DState*, %struct.DState** %s.addr, align 8
  %tPos201 = getelementptr inbounds %struct.DState, %struct.DState* %168, i32 0, i32 14
  %169 = load i32, i32* %tPos201, align 4
  %and202 = and i32 %169, 255
  %conv203 = trunc i32 %and202 to i8
  store i8 %conv203, i8* %k1, align 1
  %170 = load %struct.DState*, %struct.DState** %s.addr, align 8
  %tPos204 = getelementptr inbounds %struct.DState, %struct.DState* %170, i32 0, i32 14
  %171 = load i32, i32* %tPos204, align 4
  %shr205 = lshr i32 %171, 8
  store i32 %shr205, i32* %tPos204, align 4
  %172 = load %struct.DState*, %struct.DState** %s.addr, align 8
  %rNToGo206 = getelementptr inbounds %struct.DState, %struct.DState* %172, i32 0, i32 5
  %173 = load i32, i32* %rNToGo206, align 4
  %cmp207 = icmp eq i32 %173, 0
  br i1 %cmp207, label %if.then.209, label %if.end.222

if.then.209:                                      ; preds = %if.end.195
  %174 = load %struct.DState*, %struct.DState** %s.addr, align 8
  %rTPos210 = getelementptr inbounds %struct.DState, %struct.DState* %174, i32 0, i32 6
  %175 = load i32, i32* %rTPos210, align 4
  %idxprom211 = sext i32 %175 to i64
  %arrayidx212 = getelementptr inbounds [512 x i32], [512 x i32]* @BZ2_rNums, i32 0, i64 %idxprom211
  %176 = load i32, i32* %arrayidx212, align 4
  %177 = load %struct.DState*, %struct.DState** %s.addr, align 8
  %rNToGo213 = getelementptr inbounds %struct.DState, %struct.DState* %177, i32 0, i32 5
  store i32 %176, i32* %rNToGo213, align 4
  %178 = load %struct.DState*, %struct.DState** %s.addr, align 8
  %rTPos214 = getelementptr inbounds %struct.DState, %struct.DState* %178, i32 0, i32 6
  %179 = load i32, i32* %rTPos214, align 4
  %inc215 = add nsw i32 %179, 1
  store i32 %inc215, i32* %rTPos214, align 4
  %180 = load %struct.DState*, %struct.DState** %s.addr, align 8
  %rTPos216 = getelementptr inbounds %struct.DState, %struct.DState* %180, i32 0, i32 6
  %181 = load i32, i32* %rTPos216, align 4
  %cmp217 = icmp eq i32 %181, 512
  br i1 %cmp217, label %if.then.219, label %if.end.221

if.then.219:                                      ; preds = %if.then.209
  %182 = load %struct.DState*, %struct.DState** %s.addr, align 8
  %rTPos220 = getelementptr inbounds %struct.DState, %struct.DState* %182, i32 0, i32 6
  store i32 0, i32* %rTPos220, align 4
  br label %if.end.221

if.end.221:                                       ; preds = %if.then.219, %if.then.209
  br label %if.end.222

if.end.222:                                       ; preds = %if.end.221, %if.end.195
  %183 = load %struct.DState*, %struct.DState** %s.addr, align 8
  %rNToGo223 = getelementptr inbounds %struct.DState, %struct.DState* %183, i32 0, i32 5
  %184 = load i32, i32* %rNToGo223, align 4
  %dec224 = add nsw i32 %184, -1
  store i32 %dec224, i32* %rNToGo223, align 4
  %185 = load %struct.DState*, %struct.DState** %s.addr, align 8
  %rNToGo225 = getelementptr inbounds %struct.DState, %struct.DState* %185, i32 0, i32 5
  %186 = load i32, i32* %rNToGo225, align 4
  %cmp226 = icmp eq i32 %186, 1
  %cond228 = select i1 %cmp226, i32 1, i32 0
  %187 = load i8, i8* %k1, align 1
  %conv229 = zext i8 %187 to i32
  %xor230 = xor i32 %conv229, %cond228
  %conv231 = trunc i32 %xor230 to i8
  store i8 %conv231, i8* %k1, align 1
  %188 = load %struct.DState*, %struct.DState** %s.addr, align 8
  %nblock_used232 = getelementptr inbounds %struct.DState, %struct.DState* %188, i32 0, i32 17
  %189 = load i32, i32* %nblock_used232, align 4
  %inc233 = add nsw i32 %189, 1
  store i32 %inc233, i32* %nblock_used232, align 4
  %190 = load i8, i8* %k1, align 1
  %conv234 = zext i8 %190 to i32
  %add235 = add nsw i32 %conv234, 4
  %191 = load %struct.DState*, %struct.DState** %s.addr, align 8
  %state_out_len236 = getelementptr inbounds %struct.DState, %struct.DState* %191, i32 0, i32 3
  store i32 %add235, i32* %state_out_len236, align 4
  %192 = load %struct.DState*, %struct.DState** %s.addr, align 8
  %tPos237 = getelementptr inbounds %struct.DState, %struct.DState* %192, i32 0, i32 14
  %193 = load i32, i32* %tPos237, align 4
  %idxprom238 = zext i32 %193 to i64
  %194 = load %struct.DState*, %struct.DState** %s.addr, align 8
  %tt239 = getelementptr inbounds %struct.DState, %struct.DState* %194, i32 0, i32 20
  %195 = load i32*, i32** %tt239, align 8
  %arrayidx240 = getelementptr inbounds i32, i32* %195, i64 %idxprom238
  %196 = load i32, i32* %arrayidx240, align 4
  %197 = load %struct.DState*, %struct.DState** %s.addr, align 8
  %tPos241 = getelementptr inbounds %struct.DState, %struct.DState* %197, i32 0, i32 14
  store i32 %196, i32* %tPos241, align 4
  %198 = load %struct.DState*, %struct.DState** %s.addr, align 8
  %tPos242 = getelementptr inbounds %struct.DState, %struct.DState* %198, i32 0, i32 14
  %199 = load i32, i32* %tPos242, align 4
  %and243 = and i32 %199, 255
  %conv244 = trunc i32 %and243 to i8
  %conv245 = zext i8 %conv244 to i32
  %200 = load %struct.DState*, %struct.DState** %s.addr, align 8
  %k0246 = getelementptr inbounds %struct.DState, %struct.DState* %200, i32 0, i32 15
  store i32 %conv245, i32* %k0246, align 4
  %201 = load %struct.DState*, %struct.DState** %s.addr, align 8
  %tPos247 = getelementptr inbounds %struct.DState, %struct.DState* %201, i32 0, i32 14
  %202 = load i32, i32* %tPos247, align 4
  %shr248 = lshr i32 %202, 8
  store i32 %shr248, i32* %tPos247, align 4
  %203 = load %struct.DState*, %struct.DState** %s.addr, align 8
  %rNToGo249 = getelementptr inbounds %struct.DState, %struct.DState* %203, i32 0, i32 5
  %204 = load i32, i32* %rNToGo249, align 4
  %cmp250 = icmp eq i32 %204, 0
  br i1 %cmp250, label %if.then.252, label %if.end.265

if.then.252:                                      ; preds = %if.end.222
  %205 = load %struct.DState*, %struct.DState** %s.addr, align 8
  %rTPos253 = getelementptr inbounds %struct.DState, %struct.DState* %205, i32 0, i32 6
  %206 = load i32, i32* %rTPos253, align 4
  %idxprom254 = sext i32 %206 to i64
  %arrayidx255 = getelementptr inbounds [512 x i32], [512 x i32]* @BZ2_rNums, i32 0, i64 %idxprom254
  %207 = load i32, i32* %arrayidx255, align 4
  %208 = load %struct.DState*, %struct.DState** %s.addr, align 8
  %rNToGo256 = getelementptr inbounds %struct.DState, %struct.DState* %208, i32 0, i32 5
  store i32 %207, i32* %rNToGo256, align 4
  %209 = load %struct.DState*, %struct.DState** %s.addr, align 8
  %rTPos257 = getelementptr inbounds %struct.DState, %struct.DState* %209, i32 0, i32 6
  %210 = load i32, i32* %rTPos257, align 4
  %inc258 = add nsw i32 %210, 1
  store i32 %inc258, i32* %rTPos257, align 4
  %211 = load %struct.DState*, %struct.DState** %s.addr, align 8
  %rTPos259 = getelementptr inbounds %struct.DState, %struct.DState* %211, i32 0, i32 6
  %212 = load i32, i32* %rTPos259, align 4
  %cmp260 = icmp eq i32 %212, 512
  br i1 %cmp260, label %if.then.262, label %if.end.264

if.then.262:                                      ; preds = %if.then.252
  %213 = load %struct.DState*, %struct.DState** %s.addr, align 8
  %rTPos263 = getelementptr inbounds %struct.DState, %struct.DState* %213, i32 0, i32 6
  store i32 0, i32* %rTPos263, align 4
  br label %if.end.264

if.end.264:                                       ; preds = %if.then.262, %if.then.252
  br label %if.end.265

if.end.265:                                       ; preds = %if.end.264, %if.end.222
  %214 = load %struct.DState*, %struct.DState** %s.addr, align 8
  %rNToGo266 = getelementptr inbounds %struct.DState, %struct.DState* %214, i32 0, i32 5
  %215 = load i32, i32* %rNToGo266, align 4
  %dec267 = add nsw i32 %215, -1
  store i32 %dec267, i32* %rNToGo266, align 4
  %216 = load %struct.DState*, %struct.DState** %s.addr, align 8
  %rNToGo268 = getelementptr inbounds %struct.DState, %struct.DState* %216, i32 0, i32 5
  %217 = load i32, i32* %rNToGo268, align 4
  %cmp269 = icmp eq i32 %217, 1
  %cond271 = select i1 %cmp269, i32 1, i32 0
  %218 = load %struct.DState*, %struct.DState** %s.addr, align 8
  %k0272 = getelementptr inbounds %struct.DState, %struct.DState* %218, i32 0, i32 15
  %219 = load i32, i32* %k0272, align 4
  %xor273 = xor i32 %219, %cond271
  store i32 %xor273, i32* %k0272, align 4
  %220 = load %struct.DState*, %struct.DState** %s.addr, align 8
  %nblock_used274 = getelementptr inbounds %struct.DState, %struct.DState* %220, i32 0, i32 17
  %221 = load i32, i32* %nblock_used274, align 4
  %inc275 = add nsw i32 %221, 1
  store i32 %inc275, i32* %nblock_used274, align 4
  br label %while.body

if.else:                                          ; preds = %entry
  %222 = load %struct.DState*, %struct.DState** %s.addr, align 8
  %calculatedBlockCRC276 = getelementptr inbounds %struct.DState, %struct.DState* %222, i32 0, i32 25
  %223 = load i32, i32* %calculatedBlockCRC276, align 4
  store i32 %223, i32* %c_calculatedBlockCRC, align 4
  %224 = load %struct.DState*, %struct.DState** %s.addr, align 8
  %state_out_ch277 = getelementptr inbounds %struct.DState, %struct.DState* %224, i32 0, i32 2
  %225 = load i8, i8* %state_out_ch277, align 1
  store i8 %225, i8* %c_state_out_ch, align 1
  %226 = load %struct.DState*, %struct.DState** %s.addr, align 8
  %state_out_len278 = getelementptr inbounds %struct.DState, %struct.DState* %226, i32 0, i32 3
  %227 = load i32, i32* %state_out_len278, align 4
  store i32 %227, i32* %c_state_out_len, align 4
  %228 = load %struct.DState*, %struct.DState** %s.addr, align 8
  %nblock_used279 = getelementptr inbounds %struct.DState, %struct.DState* %228, i32 0, i32 17
  %229 = load i32, i32* %nblock_used279, align 4
  store i32 %229, i32* %c_nblock_used, align 4
  %230 = load %struct.DState*, %struct.DState** %s.addr, align 8
  %k0280 = getelementptr inbounds %struct.DState, %struct.DState* %230, i32 0, i32 15
  %231 = load i32, i32* %k0280, align 4
  store i32 %231, i32* %c_k0, align 4
  %232 = load %struct.DState*, %struct.DState** %s.addr, align 8
  %tt281 = getelementptr inbounds %struct.DState, %struct.DState* %232, i32 0, i32 20
  %233 = load i32*, i32** %tt281, align 8
  store i32* %233, i32** %c_tt, align 8
  %234 = load %struct.DState*, %struct.DState** %s.addr, align 8
  %tPos282 = getelementptr inbounds %struct.DState, %struct.DState* %234, i32 0, i32 14
  %235 = load i32, i32* %tPos282, align 4
  store i32 %235, i32* %c_tPos, align 4
  %236 = load %struct.DState*, %struct.DState** %s.addr, align 8
  %strm283 = getelementptr inbounds %struct.DState, %struct.DState* %236, i32 0, i32 0
  %237 = load %struct.bz_stream*, %struct.bz_stream** %strm283, align 8
  %next_out284 = getelementptr inbounds %struct.bz_stream, %struct.bz_stream* %237, i32 0, i32 4
  %238 = load i8*, i8** %next_out284, align 8
  store i8* %238, i8** %cs_next_out, align 8
  %239 = load %struct.DState*, %struct.DState** %s.addr, align 8
  %strm285 = getelementptr inbounds %struct.DState, %struct.DState* %239, i32 0, i32 0
  %240 = load %struct.bz_stream*, %struct.bz_stream** %strm285, align 8
  %avail_out286 = getelementptr inbounds %struct.bz_stream, %struct.bz_stream* %240, i32 0, i32 5
  %241 = load i32, i32* %avail_out286, align 4
  store i32 %241, i32* %cs_avail_out, align 4
  %242 = load i32, i32* %cs_avail_out, align 4
  store i32 %242, i32* %avail_out_INIT, align 4
  %243 = load %struct.DState*, %struct.DState** %s.addr, align 8
  %save_nblock287 = getelementptr inbounds %struct.DState, %struct.DState* %243, i32 0, i32 51
  %244 = load i32, i32* %save_nblock287, align 4
  %add288 = add nsw i32 %244, 1
  store i32 %add288, i32* %s_save_nblockPP, align 4
  br label %while.body.289

while.body.289:                                   ; preds = %if.else, %if.then.361, %if.then.366, %if.then.377, %if.then.382, %if.end.384
  %245 = load i32, i32* %c_state_out_len, align 4
  %cmp290 = icmp sgt i32 %245, 0
  br i1 %cmp290, label %if.then.292, label %if.end.327

if.then.292:                                      ; preds = %while.body.289
  br label %while.body.294

while.body.294:                                   ; preds = %if.then.292, %if.end.302
  %246 = load i32, i32* %cs_avail_out, align 4
  %cmp295 = icmp eq i32 %246, 0
  br i1 %cmp295, label %if.then.297, label %if.end.298

if.then.297:                                      ; preds = %while.body.294
  br label %return_notr

if.end.298:                                       ; preds = %while.body.294
  %247 = load i32, i32* %c_state_out_len, align 4
  %cmp299 = icmp eq i32 %247, 1
  br i1 %cmp299, label %if.then.301, label %if.end.302

if.then.301:                                      ; preds = %if.end.298
  br label %while.end.313

if.end.302:                                       ; preds = %if.end.298
  %248 = load i8, i8* %c_state_out_ch, align 1
  %249 = load i8*, i8** %cs_next_out, align 8
  store i8 %248, i8* %249, align 1
  %250 = load i32, i32* %c_calculatedBlockCRC, align 4
  %shl303 = shl i32 %250, 8
  %251 = load i32, i32* %c_calculatedBlockCRC, align 4
  %shr304 = lshr i32 %251, 24
  %252 = load i8, i8* %c_state_out_ch, align 1
  %conv305 = zext i8 %252 to i32
  %xor306 = xor i32 %shr304, %conv305
  %idxprom307 = zext i32 %xor306 to i64
  %arrayidx308 = getelementptr inbounds [256 x i32], [256 x i32]* @BZ2_crc32Table, i32 0, i64 %idxprom307
  %253 = load i32, i32* %arrayidx308, align 4
  %xor309 = xor i32 %shl303, %253
  store i32 %xor309, i32* %c_calculatedBlockCRC, align 4
  %254 = load i32, i32* %c_state_out_len, align 4
  %dec310 = add nsw i32 %254, -1
  store i32 %dec310, i32* %c_state_out_len, align 4
  %255 = load i8*, i8** %cs_next_out, align 8
  %incdec.ptr311 = getelementptr inbounds i8, i8* %255, i32 1
  store i8* %incdec.ptr311, i8** %cs_next_out, align 8
  %256 = load i32, i32* %cs_avail_out, align 4
  %dec312 = add i32 %256, -1
  store i32 %dec312, i32* %cs_avail_out, align 4
  br label %while.body.294

while.end.313:                                    ; preds = %if.then.301
  br label %s_state_out_len_eq_one

s_state_out_len_eq_one:                           ; preds = %if.then.351, %if.then.346, %while.end.313
  %257 = load i32, i32* %cs_avail_out, align 4
  %cmp314 = icmp eq i32 %257, 0
  br i1 %cmp314, label %if.then.316, label %if.end.317

if.then.316:                                      ; preds = %s_state_out_len_eq_one
  store i32 1, i32* %c_state_out_len, align 4
  br label %return_notr

if.end.317:                                       ; preds = %s_state_out_len_eq_one
  %258 = load i8, i8* %c_state_out_ch, align 1
  %259 = load i8*, i8** %cs_next_out, align 8
  store i8 %258, i8* %259, align 1
  %260 = load i32, i32* %c_calculatedBlockCRC, align 4
  %shl318 = shl i32 %260, 8
  %261 = load i32, i32* %c_calculatedBlockCRC, align 4
  %shr319 = lshr i32 %261, 24
  %262 = load i8, i8* %c_state_out_ch, align 1
  %conv320 = zext i8 %262 to i32
  %xor321 = xor i32 %shr319, %conv320
  %idxprom322 = zext i32 %xor321 to i64
  %arrayidx323 = getelementptr inbounds [256 x i32], [256 x i32]* @BZ2_crc32Table, i32 0, i64 %idxprom322
  %263 = load i32, i32* %arrayidx323, align 4
  %xor324 = xor i32 %shl318, %263
  store i32 %xor324, i32* %c_calculatedBlockCRC, align 4
  %264 = load i8*, i8** %cs_next_out, align 8
  %incdec.ptr325 = getelementptr inbounds i8, i8* %264, i32 1
  store i8* %incdec.ptr325, i8** %cs_next_out, align 8
  %265 = load i32, i32* %cs_avail_out, align 4
  %dec326 = add i32 %265, -1
  store i32 %dec326, i32* %cs_avail_out, align 4
  br label %if.end.327

if.end.327:                                       ; preds = %if.end.317, %while.body.289
  %266 = load i32, i32* %c_nblock_used, align 4
  %267 = load i32, i32* %s_save_nblockPP, align 4
  %cmp328 = icmp sgt i32 %266, %267
  br i1 %cmp328, label %if.then.330, label %if.end.331

if.then.330:                                      ; preds = %if.end.327
  store i8 1, i8* %retval
  br label %return

if.end.331:                                       ; preds = %if.end.327
  %268 = load i32, i32* %c_nblock_used, align 4
  %269 = load i32, i32* %s_save_nblockPP, align 4
  %cmp332 = icmp eq i32 %268, %269
  br i1 %cmp332, label %if.then.334, label %if.end.335

if.then.334:                                      ; preds = %if.end.331
  store i32 0, i32* %c_state_out_len, align 4
  br label %return_notr

if.end.335:                                       ; preds = %if.end.331
  %270 = load i32, i32* %c_k0, align 4
  %conv336 = trunc i32 %270 to i8
  store i8 %conv336, i8* %c_state_out_ch, align 1
  %271 = load i32, i32* %c_tPos, align 4
  %idxprom337 = zext i32 %271 to i64
  %272 = load i32*, i32** %c_tt, align 8
  %arrayidx338 = getelementptr inbounds i32, i32* %272, i64 %idxprom337
  %273 = load i32, i32* %arrayidx338, align 4
  store i32 %273, i32* %c_tPos, align 4
  %274 = load i32, i32* %c_tPos, align 4
  %and339 = and i32 %274, 255
  %conv340 = trunc i32 %and339 to i8
  store i8 %conv340, i8* %k1, align 1
  %275 = load i32, i32* %c_tPos, align 4
  %shr341 = lshr i32 %275, 8
  store i32 %shr341, i32* %c_tPos, align 4
  %276 = load i32, i32* %c_nblock_used, align 4
  %inc342 = add nsw i32 %276, 1
  store i32 %inc342, i32* %c_nblock_used, align 4
  %277 = load i8, i8* %k1, align 1
  %conv343 = zext i8 %277 to i32
  %278 = load i32, i32* %c_k0, align 4
  %cmp344 = icmp ne i32 %conv343, %278
  br i1 %cmp344, label %if.then.346, label %if.end.348

if.then.346:                                      ; preds = %if.end.335
  %279 = load i8, i8* %k1, align 1
  %conv347 = zext i8 %279 to i32
  store i32 %conv347, i32* %c_k0, align 4
  br label %s_state_out_len_eq_one

if.end.348:                                       ; preds = %if.end.335
  %280 = load i32, i32* %c_nblock_used, align 4
  %281 = load i32, i32* %s_save_nblockPP, align 4
  %cmp349 = icmp eq i32 %280, %281
  br i1 %cmp349, label %if.then.351, label %if.end.352

if.then.351:                                      ; preds = %if.end.348
  br label %s_state_out_len_eq_one

if.end.352:                                       ; preds = %if.end.348
  store i32 2, i32* %c_state_out_len, align 4
  %282 = load i32, i32* %c_tPos, align 4
  %idxprom353 = zext i32 %282 to i64
  %283 = load i32*, i32** %c_tt, align 8
  %arrayidx354 = getelementptr inbounds i32, i32* %283, i64 %idxprom353
  %284 = load i32, i32* %arrayidx354, align 4
  store i32 %284, i32* %c_tPos, align 4
  %285 = load i32, i32* %c_tPos, align 4
  %and355 = and i32 %285, 255
  %conv356 = trunc i32 %and355 to i8
  store i8 %conv356, i8* %k1, align 1
  %286 = load i32, i32* %c_tPos, align 4
  %shr357 = lshr i32 %286, 8
  store i32 %shr357, i32* %c_tPos, align 4
  %287 = load i32, i32* %c_nblock_used, align 4
  %inc358 = add nsw i32 %287, 1
  store i32 %inc358, i32* %c_nblock_used, align 4
  %288 = load i32, i32* %c_nblock_used, align 4
  %289 = load i32, i32* %s_save_nblockPP, align 4
  %cmp359 = icmp eq i32 %288, %289
  br i1 %cmp359, label %if.then.361, label %if.end.362

if.then.361:                                      ; preds = %if.end.352
  br label %while.body.289

if.end.362:                                       ; preds = %if.end.352
  %290 = load i8, i8* %k1, align 1
  %conv363 = zext i8 %290 to i32
  %291 = load i32, i32* %c_k0, align 4
  %cmp364 = icmp ne i32 %conv363, %291
  br i1 %cmp364, label %if.then.366, label %if.end.368

if.then.366:                                      ; preds = %if.end.362
  %292 = load i8, i8* %k1, align 1
  %conv367 = zext i8 %292 to i32
  store i32 %conv367, i32* %c_k0, align 4
  br label %while.body.289

if.end.368:                                       ; preds = %if.end.362
  store i32 3, i32* %c_state_out_len, align 4
  %293 = load i32, i32* %c_tPos, align 4
  %idxprom369 = zext i32 %293 to i64
  %294 = load i32*, i32** %c_tt, align 8
  %arrayidx370 = getelementptr inbounds i32, i32* %294, i64 %idxprom369
  %295 = load i32, i32* %arrayidx370, align 4
  store i32 %295, i32* %c_tPos, align 4
  %296 = load i32, i32* %c_tPos, align 4
  %and371 = and i32 %296, 255
  %conv372 = trunc i32 %and371 to i8
  store i8 %conv372, i8* %k1, align 1
  %297 = load i32, i32* %c_tPos, align 4
  %shr373 = lshr i32 %297, 8
  store i32 %shr373, i32* %c_tPos, align 4
  %298 = load i32, i32* %c_nblock_used, align 4
  %inc374 = add nsw i32 %298, 1
  store i32 %inc374, i32* %c_nblock_used, align 4
  %299 = load i32, i32* %c_nblock_used, align 4
  %300 = load i32, i32* %s_save_nblockPP, align 4
  %cmp375 = icmp eq i32 %299, %300
  br i1 %cmp375, label %if.then.377, label %if.end.378

if.then.377:                                      ; preds = %if.end.368
  br label %while.body.289

if.end.378:                                       ; preds = %if.end.368
  %301 = load i8, i8* %k1, align 1
  %conv379 = zext i8 %301 to i32
  %302 = load i32, i32* %c_k0, align 4
  %cmp380 = icmp ne i32 %conv379, %302
  br i1 %cmp380, label %if.then.382, label %if.end.384

if.then.382:                                      ; preds = %if.end.378
  %303 = load i8, i8* %k1, align 1
  %conv383 = zext i8 %303 to i32
  store i32 %conv383, i32* %c_k0, align 4
  br label %while.body.289

if.end.384:                                       ; preds = %if.end.378
  %304 = load i32, i32* %c_tPos, align 4
  %idxprom385 = zext i32 %304 to i64
  %305 = load i32*, i32** %c_tt, align 8
  %arrayidx386 = getelementptr inbounds i32, i32* %305, i64 %idxprom385
  %306 = load i32, i32* %arrayidx386, align 4
  store i32 %306, i32* %c_tPos, align 4
  %307 = load i32, i32* %c_tPos, align 4
  %and387 = and i32 %307, 255
  %conv388 = trunc i32 %and387 to i8
  store i8 %conv388, i8* %k1, align 1
  %308 = load i32, i32* %c_tPos, align 4
  %shr389 = lshr i32 %308, 8
  store i32 %shr389, i32* %c_tPos, align 4
  %309 = load i32, i32* %c_nblock_used, align 4
  %inc390 = add nsw i32 %309, 1
  store i32 %inc390, i32* %c_nblock_used, align 4
  %310 = load i8, i8* %k1, align 1
  %conv391 = zext i8 %310 to i32
  %add392 = add nsw i32 %conv391, 4
  store i32 %add392, i32* %c_state_out_len, align 4
  %311 = load i32, i32* %c_tPos, align 4
  %idxprom393 = zext i32 %311 to i64
  %312 = load i32*, i32** %c_tt, align 8
  %arrayidx394 = getelementptr inbounds i32, i32* %312, i64 %idxprom393
  %313 = load i32, i32* %arrayidx394, align 4
  store i32 %313, i32* %c_tPos, align 4
  %314 = load i32, i32* %c_tPos, align 4
  %and395 = and i32 %314, 255
  %conv396 = trunc i32 %and395 to i8
  %conv397 = zext i8 %conv396 to i32
  store i32 %conv397, i32* %c_k0, align 4
  %315 = load i32, i32* %c_tPos, align 4
  %shr398 = lshr i32 %315, 8
  store i32 %shr398, i32* %c_tPos, align 4
  %316 = load i32, i32* %c_nblock_used, align 4
  %inc399 = add nsw i32 %316, 1
  store i32 %inc399, i32* %c_nblock_used, align 4
  br label %while.body.289

return_notr:                                      ; preds = %if.then.334, %if.then.316, %if.then.297
  %317 = load %struct.DState*, %struct.DState** %s.addr, align 8
  %strm400 = getelementptr inbounds %struct.DState, %struct.DState* %317, i32 0, i32 0
  %318 = load %struct.bz_stream*, %struct.bz_stream** %strm400, align 8
  %total_out_lo32401 = getelementptr inbounds %struct.bz_stream, %struct.bz_stream* %318, i32 0, i32 6
  %319 = load i32, i32* %total_out_lo32401, align 4
  store i32 %319, i32* %total_out_lo32_old, align 4
  %320 = load i32, i32* %avail_out_INIT, align 4
  %321 = load i32, i32* %cs_avail_out, align 4
  %sub = sub i32 %320, %321
  %322 = load %struct.DState*, %struct.DState** %s.addr, align 8
  %strm402 = getelementptr inbounds %struct.DState, %struct.DState* %322, i32 0, i32 0
  %323 = load %struct.bz_stream*, %struct.bz_stream** %strm402, align 8
  %total_out_lo32403 = getelementptr inbounds %struct.bz_stream, %struct.bz_stream* %323, i32 0, i32 6
  %324 = load i32, i32* %total_out_lo32403, align 4
  %add404 = add i32 %324, %sub
  store i32 %add404, i32* %total_out_lo32403, align 4
  %325 = load %struct.DState*, %struct.DState** %s.addr, align 8
  %strm405 = getelementptr inbounds %struct.DState, %struct.DState* %325, i32 0, i32 0
  %326 = load %struct.bz_stream*, %struct.bz_stream** %strm405, align 8
  %total_out_lo32406 = getelementptr inbounds %struct.bz_stream, %struct.bz_stream* %326, i32 0, i32 6
  %327 = load i32, i32* %total_out_lo32406, align 4
  %328 = load i32, i32* %total_out_lo32_old, align 4
  %cmp407 = icmp ult i32 %327, %328
  br i1 %cmp407, label %if.then.409, label %if.end.413

if.then.409:                                      ; preds = %return_notr
  %329 = load %struct.DState*, %struct.DState** %s.addr, align 8
  %strm410 = getelementptr inbounds %struct.DState, %struct.DState* %329, i32 0, i32 0
  %330 = load %struct.bz_stream*, %struct.bz_stream** %strm410, align 8
  %total_out_hi32411 = getelementptr inbounds %struct.bz_stream, %struct.bz_stream* %330, i32 0, i32 7
  %331 = load i32, i32* %total_out_hi32411, align 4
  %inc412 = add i32 %331, 1
  store i32 %inc412, i32* %total_out_hi32411, align 4
  br label %if.end.413

if.end.413:                                       ; preds = %if.then.409, %return_notr
  %332 = load i32, i32* %c_calculatedBlockCRC, align 4
  %333 = load %struct.DState*, %struct.DState** %s.addr, align 8
  %calculatedBlockCRC414 = getelementptr inbounds %struct.DState, %struct.DState* %333, i32 0, i32 25
  store i32 %332, i32* %calculatedBlockCRC414, align 4
  %334 = load i8, i8* %c_state_out_ch, align 1
  %335 = load %struct.DState*, %struct.DState** %s.addr, align 8
  %state_out_ch415 = getelementptr inbounds %struct.DState, %struct.DState* %335, i32 0, i32 2
  store i8 %334, i8* %state_out_ch415, align 1
  %336 = load i32, i32* %c_state_out_len, align 4
  %337 = load %struct.DState*, %struct.DState** %s.addr, align 8
  %state_out_len416 = getelementptr inbounds %struct.DState, %struct.DState* %337, i32 0, i32 3
  store i32 %336, i32* %state_out_len416, align 4
  %338 = load i32, i32* %c_nblock_used, align 4
  %339 = load %struct.DState*, %struct.DState** %s.addr, align 8
  %nblock_used417 = getelementptr inbounds %struct.DState, %struct.DState* %339, i32 0, i32 17
  store i32 %338, i32* %nblock_used417, align 4
  %340 = load i32, i32* %c_k0, align 4
  %341 = load %struct.DState*, %struct.DState** %s.addr, align 8
  %k0418 = getelementptr inbounds %struct.DState, %struct.DState* %341, i32 0, i32 15
  store i32 %340, i32* %k0418, align 4
  %342 = load i32*, i32** %c_tt, align 8
  %343 = load %struct.DState*, %struct.DState** %s.addr, align 8
  %tt419 = getelementptr inbounds %struct.DState, %struct.DState* %343, i32 0, i32 20
  store i32* %342, i32** %tt419, align 8
  %344 = load i32, i32* %c_tPos, align 4
  %345 = load %struct.DState*, %struct.DState** %s.addr, align 8
  %tPos420 = getelementptr inbounds %struct.DState, %struct.DState* %345, i32 0, i32 14
  store i32 %344, i32* %tPos420, align 4
  %346 = load i8*, i8** %cs_next_out, align 8
  %347 = load %struct.DState*, %struct.DState** %s.addr, align 8
  %strm421 = getelementptr inbounds %struct.DState, %struct.DState* %347, i32 0, i32 0
  %348 = load %struct.bz_stream*, %struct.bz_stream** %strm421, align 8
  %next_out422 = getelementptr inbounds %struct.bz_stream, %struct.bz_stream* %348, i32 0, i32 4
  store i8* %346, i8** %next_out422, align 8
  %349 = load i32, i32* %cs_avail_out, align 4
  %350 = load %struct.DState*, %struct.DState** %s.addr, align 8
  %strm423 = getelementptr inbounds %struct.DState, %struct.DState* %350, i32 0, i32 0
  %351 = load %struct.bz_stream*, %struct.bz_stream** %strm423, align 8
  %avail_out424 = getelementptr inbounds %struct.bz_stream, %struct.bz_stream* %351, i32 0, i32 5
  store i32 %349, i32* %avail_out424, align 4
  br label %if.end.425

if.end.425:                                       ; preds = %if.end.413
  store i8 0, i8* %retval
  br label %return

return:                                           ; preds = %if.end.425, %if.then.330, %if.then.36, %if.then.29, %if.then.3
  %352 = load i8, i8* %retval
  ret i8 %352
}

declare i32 @BZ2_decompress(%struct.DState*) #1

; Function Attrs: nounwind uwtable
define i32 @BZ2_bzDecompressEnd(%struct.bz_stream* %strm) #0 {
entry:
  %retval = alloca i32, align 4
  %strm.addr = alloca %struct.bz_stream*, align 8
  %s = alloca %struct.DState*, align 8
  store %struct.bz_stream* %strm, %struct.bz_stream** %strm.addr, align 8
  %0 = load %struct.bz_stream*, %struct.bz_stream** %strm.addr, align 8
  %cmp = icmp eq %struct.bz_stream* %0, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store i32 -2, i32* %retval
  br label %return

if.end:                                           ; preds = %entry
  %1 = load %struct.bz_stream*, %struct.bz_stream** %strm.addr, align 8
  %state = getelementptr inbounds %struct.bz_stream, %struct.bz_stream* %1, i32 0, i32 8
  %2 = load i8*, i8** %state, align 8
  %3 = bitcast i8* %2 to %struct.DState*
  store %struct.DState* %3, %struct.DState** %s, align 8
  %4 = load %struct.DState*, %struct.DState** %s, align 8
  %cmp1 = icmp eq %struct.DState* %4, null
  br i1 %cmp1, label %if.then.2, label %if.end.3

if.then.2:                                        ; preds = %if.end
  store i32 -2, i32* %retval
  br label %return

if.end.3:                                         ; preds = %if.end
  %5 = load %struct.DState*, %struct.DState** %s, align 8
  %strm4 = getelementptr inbounds %struct.DState, %struct.DState* %5, i32 0, i32 0
  %6 = load %struct.bz_stream*, %struct.bz_stream** %strm4, align 8
  %7 = load %struct.bz_stream*, %struct.bz_stream** %strm.addr, align 8
  %cmp5 = icmp ne %struct.bz_stream* %6, %7
  br i1 %cmp5, label %if.then.6, label %if.end.7

if.then.6:                                        ; preds = %if.end.3
  store i32 -2, i32* %retval
  br label %return

if.end.7:                                         ; preds = %if.end.3
  %8 = load %struct.DState*, %struct.DState** %s, align 8
  %tt = getelementptr inbounds %struct.DState, %struct.DState* %8, i32 0, i32 20
  %9 = load i32*, i32** %tt, align 8
  %cmp8 = icmp ne i32* %9, null
  br i1 %cmp8, label %if.then.9, label %if.end.11

if.then.9:                                        ; preds = %if.end.7
  %10 = load %struct.bz_stream*, %struct.bz_stream** %strm.addr, align 8
  %bzfree = getelementptr inbounds %struct.bz_stream, %struct.bz_stream* %10, i32 0, i32 10
  %11 = load void (i8*, i8*)*, void (i8*, i8*)** %bzfree, align 8
  %12 = load %struct.bz_stream*, %struct.bz_stream** %strm.addr, align 8
  %opaque = getelementptr inbounds %struct.bz_stream, %struct.bz_stream* %12, i32 0, i32 11
  %13 = load i8*, i8** %opaque, align 8
  %14 = load %struct.DState*, %struct.DState** %s, align 8
  %tt10 = getelementptr inbounds %struct.DState, %struct.DState* %14, i32 0, i32 20
  %15 = load i32*, i32** %tt10, align 8
  %16 = bitcast i32* %15 to i8*
  call void %11(i8* %13, i8* %16)
  br label %if.end.11

if.end.11:                                        ; preds = %if.then.9, %if.end.7
  %17 = load %struct.DState*, %struct.DState** %s, align 8
  %ll16 = getelementptr inbounds %struct.DState, %struct.DState* %17, i32 0, i32 21
  %18 = load i16*, i16** %ll16, align 8
  %cmp12 = icmp ne i16* %18, null
  br i1 %cmp12, label %if.then.13, label %if.end.17

if.then.13:                                       ; preds = %if.end.11
  %19 = load %struct.bz_stream*, %struct.bz_stream** %strm.addr, align 8
  %bzfree14 = getelementptr inbounds %struct.bz_stream, %struct.bz_stream* %19, i32 0, i32 10
  %20 = load void (i8*, i8*)*, void (i8*, i8*)** %bzfree14, align 8
  %21 = load %struct.bz_stream*, %struct.bz_stream** %strm.addr, align 8
  %opaque15 = getelementptr inbounds %struct.bz_stream, %struct.bz_stream* %21, i32 0, i32 11
  %22 = load i8*, i8** %opaque15, align 8
  %23 = load %struct.DState*, %struct.DState** %s, align 8
  %ll1616 = getelementptr inbounds %struct.DState, %struct.DState* %23, i32 0, i32 21
  %24 = load i16*, i16** %ll1616, align 8
  %25 = bitcast i16* %24 to i8*
  call void %20(i8* %22, i8* %25)
  br label %if.end.17

if.end.17:                                        ; preds = %if.then.13, %if.end.11
  %26 = load %struct.DState*, %struct.DState** %s, align 8
  %ll4 = getelementptr inbounds %struct.DState, %struct.DState* %26, i32 0, i32 22
  %27 = load i8*, i8** %ll4, align 8
  %cmp18 = icmp ne i8* %27, null
  br i1 %cmp18, label %if.then.19, label %if.end.23

if.then.19:                                       ; preds = %if.end.17
  %28 = load %struct.bz_stream*, %struct.bz_stream** %strm.addr, align 8
  %bzfree20 = getelementptr inbounds %struct.bz_stream, %struct.bz_stream* %28, i32 0, i32 10
  %29 = load void (i8*, i8*)*, void (i8*, i8*)** %bzfree20, align 8
  %30 = load %struct.bz_stream*, %struct.bz_stream** %strm.addr, align 8
  %opaque21 = getelementptr inbounds %struct.bz_stream, %struct.bz_stream* %30, i32 0, i32 11
  %31 = load i8*, i8** %opaque21, align 8
  %32 = load %struct.DState*, %struct.DState** %s, align 8
  %ll422 = getelementptr inbounds %struct.DState, %struct.DState* %32, i32 0, i32 22
  %33 = load i8*, i8** %ll422, align 8
  call void %29(i8* %31, i8* %33)
  br label %if.end.23

if.end.23:                                        ; preds = %if.then.19, %if.end.17
  %34 = load %struct.bz_stream*, %struct.bz_stream** %strm.addr, align 8
  %bzfree24 = getelementptr inbounds %struct.bz_stream, %struct.bz_stream* %34, i32 0, i32 10
  %35 = load void (i8*, i8*)*, void (i8*, i8*)** %bzfree24, align 8
  %36 = load %struct.bz_stream*, %struct.bz_stream** %strm.addr, align 8
  %opaque25 = getelementptr inbounds %struct.bz_stream, %struct.bz_stream* %36, i32 0, i32 11
  %37 = load i8*, i8** %opaque25, align 8
  %38 = load %struct.bz_stream*, %struct.bz_stream** %strm.addr, align 8
  %state26 = getelementptr inbounds %struct.bz_stream, %struct.bz_stream* %38, i32 0, i32 8
  %39 = load i8*, i8** %state26, align 8
  call void %35(i8* %37, i8* %39)
  %40 = load %struct.bz_stream*, %struct.bz_stream** %strm.addr, align 8
  %state27 = getelementptr inbounds %struct.bz_stream, %struct.bz_stream* %40, i32 0, i32 8
  store i8* null, i8** %state27, align 8
  store i32 0, i32* %retval
  br label %return

return:                                           ; preds = %if.end.23, %if.then.6, %if.then.2, %if.then
  %41 = load i32, i32* %retval
  ret i32 %41
}

; Function Attrs: nounwind uwtable
define i8* @BZ2_bzWriteOpen(i32* %bzerror, i32 %f, i32 %blockSize100k, i32 %verbosity, i32 %workFactor) #0 {
entry:
  %retval = alloca i8*, align 8
  %bzerror.addr = alloca i32*, align 8
  %f.addr = alloca i32, align 4
  %blockSize100k.addr = alloca i32, align 4
  %verbosity.addr = alloca i32, align 4
  %workFactor.addr = alloca i32, align 4
  %ret = alloca i32, align 4
  %bzf = alloca %struct.bzFile*, align 8
  store i32* %bzerror, i32** %bzerror.addr, align 8
  store i32 %f, i32* %f.addr, align 4
  store i32 %blockSize100k, i32* %blockSize100k.addr, align 4
  store i32 %verbosity, i32* %verbosity.addr, align 4
  store i32 %workFactor, i32* %workFactor.addr, align 4
  store %struct.bzFile* null, %struct.bzFile** %bzf, align 8
  %0 = load i32*, i32** %bzerror.addr, align 8
  %cmp = icmp ne i32* %0, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %1 = load i32*, i32** %bzerror.addr, align 8
  store i32 0, i32* %1, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %2 = load %struct.bzFile*, %struct.bzFile** %bzf, align 8
  %cmp1 = icmp ne %struct.bzFile* %2, null
  br i1 %cmp1, label %if.then.2, label %if.end.3

if.then.2:                                        ; preds = %if.end
  %3 = load %struct.bzFile*, %struct.bzFile** %bzf, align 8
  %lastErr = getelementptr inbounds %struct.bzFile, %struct.bzFile* %3, i32 0, i32 5
  store i32 0, i32* %lastErr, align 4
  br label %if.end.3

if.end.3:                                         ; preds = %if.then.2, %if.end
  %4 = load i32, i32* %f.addr, align 4
  %cmp4 = icmp eq i32 %4, 0
  br i1 %cmp4, label %if.then.16, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.end.3
  %5 = load i32, i32* %blockSize100k.addr, align 4
  %cmp5 = icmp slt i32 %5, 1
  br i1 %cmp5, label %if.then.16, label %lor.lhs.false.6

lor.lhs.false.6:                                  ; preds = %lor.lhs.false
  %6 = load i32, i32* %blockSize100k.addr, align 4
  %cmp7 = icmp sgt i32 %6, 9
  br i1 %cmp7, label %if.then.16, label %lor.lhs.false.8

lor.lhs.false.8:                                  ; preds = %lor.lhs.false.6
  %7 = load i32, i32* %workFactor.addr, align 4
  %cmp9 = icmp slt i32 %7, 0
  br i1 %cmp9, label %if.then.16, label %lor.lhs.false.10

lor.lhs.false.10:                                 ; preds = %lor.lhs.false.8
  %8 = load i32, i32* %workFactor.addr, align 4
  %cmp11 = icmp sgt i32 %8, 250
  br i1 %cmp11, label %if.then.16, label %lor.lhs.false.12

lor.lhs.false.12:                                 ; preds = %lor.lhs.false.10
  %9 = load i32, i32* %verbosity.addr, align 4
  %cmp13 = icmp slt i32 %9, 0
  br i1 %cmp13, label %if.then.16, label %lor.lhs.false.14

lor.lhs.false.14:                                 ; preds = %lor.lhs.false.12
  %10 = load i32, i32* %verbosity.addr, align 4
  %cmp15 = icmp sgt i32 %10, 4
  br i1 %cmp15, label %if.then.16, label %if.end.24

if.then.16:                                       ; preds = %lor.lhs.false.14, %lor.lhs.false.12, %lor.lhs.false.10, %lor.lhs.false.8, %lor.lhs.false.6, %lor.lhs.false, %if.end.3
  %11 = load i32*, i32** %bzerror.addr, align 8
  %cmp17 = icmp ne i32* %11, null
  br i1 %cmp17, label %if.then.18, label %if.end.19

if.then.18:                                       ; preds = %if.then.16
  %12 = load i32*, i32** %bzerror.addr, align 8
  store i32 -2, i32* %12, align 4
  br label %if.end.19

if.end.19:                                        ; preds = %if.then.18, %if.then.16
  %13 = load %struct.bzFile*, %struct.bzFile** %bzf, align 8
  %cmp20 = icmp ne %struct.bzFile* %13, null
  br i1 %cmp20, label %if.then.21, label %if.end.23

if.then.21:                                       ; preds = %if.end.19
  %14 = load %struct.bzFile*, %struct.bzFile** %bzf, align 8
  %lastErr22 = getelementptr inbounds %struct.bzFile, %struct.bzFile* %14, i32 0, i32 5
  store i32 -2, i32* %lastErr22, align 4
  br label %if.end.23

if.end.23:                                        ; preds = %if.then.21, %if.end.19
  store i8* null, i8** %retval
  br label %return

if.end.24:                                        ; preds = %lor.lhs.false.14
  %call = call noalias i8* @malloc(i64 5104) #4
  %15 = bitcast i8* %call to %struct.bzFile*
  store %struct.bzFile* %15, %struct.bzFile** %bzf, align 8
  %16 = load %struct.bzFile*, %struct.bzFile** %bzf, align 8
  %cmp25 = icmp eq %struct.bzFile* %16, null
  br i1 %cmp25, label %if.then.26, label %if.end.34

if.then.26:                                       ; preds = %if.end.24
  %17 = load i32*, i32** %bzerror.addr, align 8
  %cmp27 = icmp ne i32* %17, null
  br i1 %cmp27, label %if.then.28, label %if.end.29

if.then.28:                                       ; preds = %if.then.26
  %18 = load i32*, i32** %bzerror.addr, align 8
  store i32 -3, i32* %18, align 4
  br label %if.end.29

if.end.29:                                        ; preds = %if.then.28, %if.then.26
  %19 = load %struct.bzFile*, %struct.bzFile** %bzf, align 8
  %cmp30 = icmp ne %struct.bzFile* %19, null
  br i1 %cmp30, label %if.then.31, label %if.end.33

if.then.31:                                       ; preds = %if.end.29
  %20 = load %struct.bzFile*, %struct.bzFile** %bzf, align 8
  %lastErr32 = getelementptr inbounds %struct.bzFile, %struct.bzFile* %20, i32 0, i32 5
  store i32 -3, i32* %lastErr32, align 4
  br label %if.end.33

if.end.33:                                        ; preds = %if.then.31, %if.end.29
  store i8* null, i8** %retval
  br label %return

if.end.34:                                        ; preds = %if.end.24
  %21 = load i32*, i32** %bzerror.addr, align 8
  %cmp35 = icmp ne i32* %21, null
  br i1 %cmp35, label %if.then.36, label %if.end.37

if.then.36:                                       ; preds = %if.end.34
  %22 = load i32*, i32** %bzerror.addr, align 8
  store i32 0, i32* %22, align 4
  br label %if.end.37

if.end.37:                                        ; preds = %if.then.36, %if.end.34
  %23 = load %struct.bzFile*, %struct.bzFile** %bzf, align 8
  %cmp38 = icmp ne %struct.bzFile* %23, null
  br i1 %cmp38, label %if.then.39, label %if.end.41

if.then.39:                                       ; preds = %if.end.37
  %24 = load %struct.bzFile*, %struct.bzFile** %bzf, align 8
  %lastErr40 = getelementptr inbounds %struct.bzFile, %struct.bzFile* %24, i32 0, i32 5
  store i32 0, i32* %lastErr40, align 4
  br label %if.end.41

if.end.41:                                        ; preds = %if.then.39, %if.end.37
  %25 = load %struct.bzFile*, %struct.bzFile** %bzf, align 8
  %initialisedOk = getelementptr inbounds %struct.bzFile, %struct.bzFile* %25, i32 0, i32 6
  store i8 0, i8* %initialisedOk, align 1
  %26 = load %struct.bzFile*, %struct.bzFile** %bzf, align 8
  %bufN = getelementptr inbounds %struct.bzFile, %struct.bzFile* %26, i32 0, i32 2
  store i32 0, i32* %bufN, align 4
  %27 = load i32, i32* %f.addr, align 4
  %28 = load %struct.bzFile*, %struct.bzFile** %bzf, align 8
  %handle = getelementptr inbounds %struct.bzFile, %struct.bzFile* %28, i32 0, i32 0
  store i32 %27, i32* %handle, align 4
  %29 = load %struct.bzFile*, %struct.bzFile** %bzf, align 8
  %writing = getelementptr inbounds %struct.bzFile, %struct.bzFile* %29, i32 0, i32 3
  store i8 1, i8* %writing, align 1
  %30 = load %struct.bzFile*, %struct.bzFile** %bzf, align 8
  %strm = getelementptr inbounds %struct.bzFile, %struct.bzFile* %30, i32 0, i32 4
  %bzalloc = getelementptr inbounds %struct.bz_stream, %struct.bz_stream* %strm, i32 0, i32 9
  store i8* (i8*, i32, i32)* null, i8* (i8*, i32, i32)** %bzalloc, align 8
  %31 = load %struct.bzFile*, %struct.bzFile** %bzf, align 8
  %strm42 = getelementptr inbounds %struct.bzFile, %struct.bzFile* %31, i32 0, i32 4
  %bzfree = getelementptr inbounds %struct.bz_stream, %struct.bz_stream* %strm42, i32 0, i32 10
  store void (i8*, i8*)* null, void (i8*, i8*)** %bzfree, align 8
  %32 = load %struct.bzFile*, %struct.bzFile** %bzf, align 8
  %strm43 = getelementptr inbounds %struct.bzFile, %struct.bzFile* %32, i32 0, i32 4
  %opaque = getelementptr inbounds %struct.bz_stream, %struct.bz_stream* %strm43, i32 0, i32 11
  store i8* null, i8** %opaque, align 8
  %33 = load i32, i32* %workFactor.addr, align 4
  %cmp44 = icmp eq i32 %33, 0
  br i1 %cmp44, label %if.then.45, label %if.end.46

if.then.45:                                       ; preds = %if.end.41
  store i32 30, i32* %workFactor.addr, align 4
  br label %if.end.46

if.end.46:                                        ; preds = %if.then.45, %if.end.41
  %34 = load %struct.bzFile*, %struct.bzFile** %bzf, align 8
  %strm47 = getelementptr inbounds %struct.bzFile, %struct.bzFile* %34, i32 0, i32 4
  %35 = load i32, i32* %blockSize100k.addr, align 4
  %36 = load i32, i32* %verbosity.addr, align 4
  %37 = load i32, i32* %workFactor.addr, align 4
  %call48 = call i32 @BZ2_bzCompressInit(%struct.bz_stream* %strm47, i32 %35, i32 %36, i32 %37)
  store i32 %call48, i32* %ret, align 4
  %38 = load i32, i32* %ret, align 4
  %cmp49 = icmp ne i32 %38, 0
  br i1 %cmp49, label %if.then.50, label %if.end.58

if.then.50:                                       ; preds = %if.end.46
  %39 = load i32*, i32** %bzerror.addr, align 8
  %cmp51 = icmp ne i32* %39, null
  br i1 %cmp51, label %if.then.52, label %if.end.53

if.then.52:                                       ; preds = %if.then.50
  %40 = load i32, i32* %ret, align 4
  %41 = load i32*, i32** %bzerror.addr, align 8
  store i32 %40, i32* %41, align 4
  br label %if.end.53

if.end.53:                                        ; preds = %if.then.52, %if.then.50
  %42 = load %struct.bzFile*, %struct.bzFile** %bzf, align 8
  %cmp54 = icmp ne %struct.bzFile* %42, null
  br i1 %cmp54, label %if.then.55, label %if.end.57

if.then.55:                                       ; preds = %if.end.53
  %43 = load i32, i32* %ret, align 4
  %44 = load %struct.bzFile*, %struct.bzFile** %bzf, align 8
  %lastErr56 = getelementptr inbounds %struct.bzFile, %struct.bzFile* %44, i32 0, i32 5
  store i32 %43, i32* %lastErr56, align 4
  br label %if.end.57

if.end.57:                                        ; preds = %if.then.55, %if.end.53
  %45 = load %struct.bzFile*, %struct.bzFile** %bzf, align 8
  %46 = bitcast %struct.bzFile* %45 to i8*
  call void @free(i8* %46) #4
  store i8* null, i8** %retval
  br label %return

if.end.58:                                        ; preds = %if.end.46
  %47 = load %struct.bzFile*, %struct.bzFile** %bzf, align 8
  %strm59 = getelementptr inbounds %struct.bzFile, %struct.bzFile* %47, i32 0, i32 4
  %avail_in = getelementptr inbounds %struct.bz_stream, %struct.bz_stream* %strm59, i32 0, i32 1
  store i32 0, i32* %avail_in, align 4
  %48 = load %struct.bzFile*, %struct.bzFile** %bzf, align 8
  %initialisedOk60 = getelementptr inbounds %struct.bzFile, %struct.bzFile* %48, i32 0, i32 6
  store i8 1, i8* %initialisedOk60, align 1
  %49 = load %struct.bzFile*, %struct.bzFile** %bzf, align 8
  %50 = bitcast %struct.bzFile* %49 to i8*
  store i8* %50, i8** %retval
  br label %return

return:                                           ; preds = %if.end.58, %if.end.57, %if.end.33, %if.end.23
  %51 = load i8*, i8** %retval
  ret i8* %51
}

; Function Attrs: nounwind
declare noalias i8* @malloc(i64) #3

; Function Attrs: nounwind
declare void @free(i8*) #3

; Function Attrs: nounwind uwtable
define void @BZ2_bzWrite(i32* %bzerror, i8* %b, i8* %buf, i32 %len) #0 {
entry:
  %bzerror.addr = alloca i32*, align 8
  %b.addr = alloca i8*, align 8
  %buf.addr = alloca i8*, align 8
  %len.addr = alloca i32, align 4
  %n = alloca i32, align 4
  %n2 = alloca i32, align 4
  %ret = alloca i32, align 4
  %bzf = alloca %struct.bzFile*, align 8
  store i32* %bzerror, i32** %bzerror.addr, align 8
  store i8* %b, i8** %b.addr, align 8
  store i8* %buf, i8** %buf.addr, align 8
  store i32 %len, i32* %len.addr, align 4
  %0 = load i8*, i8** %b.addr, align 8
  %1 = bitcast i8* %0 to %struct.bzFile*
  store %struct.bzFile* %1, %struct.bzFile** %bzf, align 8
  %2 = load i32*, i32** %bzerror.addr, align 8
  %cmp = icmp ne i32* %2, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %3 = load i32*, i32** %bzerror.addr, align 8
  store i32 0, i32* %3, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %4 = load %struct.bzFile*, %struct.bzFile** %bzf, align 8
  %cmp1 = icmp ne %struct.bzFile* %4, null
  br i1 %cmp1, label %if.then.2, label %if.end.3

if.then.2:                                        ; preds = %if.end
  %5 = load %struct.bzFile*, %struct.bzFile** %bzf, align 8
  %lastErr = getelementptr inbounds %struct.bzFile, %struct.bzFile* %5, i32 0, i32 5
  store i32 0, i32* %lastErr, align 4
  br label %if.end.3

if.end.3:                                         ; preds = %if.then.2, %if.end
  %6 = load %struct.bzFile*, %struct.bzFile** %bzf, align 8
  %cmp4 = icmp eq %struct.bzFile* %6, null
  br i1 %cmp4, label %if.then.8, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.end.3
  %7 = load i8*, i8** %buf.addr, align 8
  %cmp5 = icmp eq i8* %7, null
  br i1 %cmp5, label %if.then.8, label %lor.lhs.false.6

lor.lhs.false.6:                                  ; preds = %lor.lhs.false
  %8 = load i32, i32* %len.addr, align 4
  %cmp7 = icmp slt i32 %8, 0
  br i1 %cmp7, label %if.then.8, label %if.end.16

if.then.8:                                        ; preds = %lor.lhs.false.6, %lor.lhs.false, %if.end.3
  %9 = load i32*, i32** %bzerror.addr, align 8
  %cmp9 = icmp ne i32* %9, null
  br i1 %cmp9, label %if.then.10, label %if.end.11

if.then.10:                                       ; preds = %if.then.8
  %10 = load i32*, i32** %bzerror.addr, align 8
  store i32 -2, i32* %10, align 4
  br label %if.end.11

if.end.11:                                        ; preds = %if.then.10, %if.then.8
  %11 = load %struct.bzFile*, %struct.bzFile** %bzf, align 8
  %cmp12 = icmp ne %struct.bzFile* %11, null
  br i1 %cmp12, label %if.then.13, label %if.end.15

if.then.13:                                       ; preds = %if.end.11
  %12 = load %struct.bzFile*, %struct.bzFile** %bzf, align 8
  %lastErr14 = getelementptr inbounds %struct.bzFile, %struct.bzFile* %12, i32 0, i32 5
  store i32 -2, i32* %lastErr14, align 4
  br label %if.end.15

if.end.15:                                        ; preds = %if.then.13, %if.end.11
  br label %return

if.end.16:                                        ; preds = %lor.lhs.false.6
  %13 = load %struct.bzFile*, %struct.bzFile** %bzf, align 8
  %writing = getelementptr inbounds %struct.bzFile, %struct.bzFile* %13, i32 0, i32 3
  %14 = load i8, i8* %writing, align 1
  %tobool = icmp ne i8 %14, 0
  br i1 %tobool, label %if.end.25, label %if.then.17

if.then.17:                                       ; preds = %if.end.16
  %15 = load i32*, i32** %bzerror.addr, align 8
  %cmp18 = icmp ne i32* %15, null
  br i1 %cmp18, label %if.then.19, label %if.end.20

if.then.19:                                       ; preds = %if.then.17
  %16 = load i32*, i32** %bzerror.addr, align 8
  store i32 -1, i32* %16, align 4
  br label %if.end.20

if.end.20:                                        ; preds = %if.then.19, %if.then.17
  %17 = load %struct.bzFile*, %struct.bzFile** %bzf, align 8
  %cmp21 = icmp ne %struct.bzFile* %17, null
  br i1 %cmp21, label %if.then.22, label %if.end.24

if.then.22:                                       ; preds = %if.end.20
  %18 = load %struct.bzFile*, %struct.bzFile** %bzf, align 8
  %lastErr23 = getelementptr inbounds %struct.bzFile, %struct.bzFile* %18, i32 0, i32 5
  store i32 -1, i32* %lastErr23, align 4
  br label %if.end.24

if.end.24:                                        ; preds = %if.then.22, %if.end.20
  br label %return

if.end.25:                                        ; preds = %if.end.16
  %19 = load i32, i32* %len.addr, align 4
  %cmp26 = icmp eq i32 %19, 0
  br i1 %cmp26, label %if.then.27, label %if.end.35

if.then.27:                                       ; preds = %if.end.25
  %20 = load i32*, i32** %bzerror.addr, align 8
  %cmp28 = icmp ne i32* %20, null
  br i1 %cmp28, label %if.then.29, label %if.end.30

if.then.29:                                       ; preds = %if.then.27
  %21 = load i32*, i32** %bzerror.addr, align 8
  store i32 0, i32* %21, align 4
  br label %if.end.30

if.end.30:                                        ; preds = %if.then.29, %if.then.27
  %22 = load %struct.bzFile*, %struct.bzFile** %bzf, align 8
  %cmp31 = icmp ne %struct.bzFile* %22, null
  br i1 %cmp31, label %if.then.32, label %if.end.34

if.then.32:                                       ; preds = %if.end.30
  %23 = load %struct.bzFile*, %struct.bzFile** %bzf, align 8
  %lastErr33 = getelementptr inbounds %struct.bzFile, %struct.bzFile* %23, i32 0, i32 5
  store i32 0, i32* %lastErr33, align 4
  br label %if.end.34

if.end.34:                                        ; preds = %if.then.32, %if.end.30
  br label %return

if.end.35:                                        ; preds = %if.end.25
  %24 = load i32, i32* %len.addr, align 4
  %25 = load %struct.bzFile*, %struct.bzFile** %bzf, align 8
  %strm = getelementptr inbounds %struct.bzFile, %struct.bzFile* %25, i32 0, i32 4
  %avail_in = getelementptr inbounds %struct.bz_stream, %struct.bz_stream* %strm, i32 0, i32 1
  store i32 %24, i32* %avail_in, align 4
  %26 = load i8*, i8** %buf.addr, align 8
  %27 = load %struct.bzFile*, %struct.bzFile** %bzf, align 8
  %strm36 = getelementptr inbounds %struct.bzFile, %struct.bzFile* %27, i32 0, i32 4
  %next_in = getelementptr inbounds %struct.bz_stream, %struct.bz_stream* %strm36, i32 0, i32 0
  store i8* %26, i8** %next_in, align 8
  br label %while.body

while.body:                                       ; preds = %if.end.35, %if.end.82
  %28 = load %struct.bzFile*, %struct.bzFile** %bzf, align 8
  %strm37 = getelementptr inbounds %struct.bzFile, %struct.bzFile* %28, i32 0, i32 4
  %avail_out = getelementptr inbounds %struct.bz_stream, %struct.bz_stream* %strm37, i32 0, i32 5
  store i32 5000, i32* %avail_out, align 4
  %29 = load %struct.bzFile*, %struct.bzFile** %bzf, align 8
  %buf38 = getelementptr inbounds %struct.bzFile, %struct.bzFile* %29, i32 0, i32 1
  %arraydecay = getelementptr inbounds [5000 x i8], [5000 x i8]* %buf38, i32 0, i32 0
  %30 = load %struct.bzFile*, %struct.bzFile** %bzf, align 8
  %strm39 = getelementptr inbounds %struct.bzFile, %struct.bzFile* %30, i32 0, i32 4
  %next_out = getelementptr inbounds %struct.bz_stream, %struct.bz_stream* %strm39, i32 0, i32 4
  store i8* %arraydecay, i8** %next_out, align 8
  %31 = load %struct.bzFile*, %struct.bzFile** %bzf, align 8
  %strm40 = getelementptr inbounds %struct.bzFile, %struct.bzFile* %31, i32 0, i32 4
  %call = call i32 @BZ2_bzCompress(%struct.bz_stream* %strm40, i32 0)
  store i32 %call, i32* %ret, align 4
  %32 = load i32, i32* %ret, align 4
  %cmp41 = icmp ne i32 %32, 1
  br i1 %cmp41, label %if.then.42, label %if.end.50

if.then.42:                                       ; preds = %while.body
  %33 = load i32*, i32** %bzerror.addr, align 8
  %cmp43 = icmp ne i32* %33, null
  br i1 %cmp43, label %if.then.44, label %if.end.45

if.then.44:                                       ; preds = %if.then.42
  %34 = load i32, i32* %ret, align 4
  %35 = load i32*, i32** %bzerror.addr, align 8
  store i32 %34, i32* %35, align 4
  br label %if.end.45

if.end.45:                                        ; preds = %if.then.44, %if.then.42
  %36 = load %struct.bzFile*, %struct.bzFile** %bzf, align 8
  %cmp46 = icmp ne %struct.bzFile* %36, null
  br i1 %cmp46, label %if.then.47, label %if.end.49

if.then.47:                                       ; preds = %if.end.45
  %37 = load i32, i32* %ret, align 4
  %38 = load %struct.bzFile*, %struct.bzFile** %bzf, align 8
  %lastErr48 = getelementptr inbounds %struct.bzFile, %struct.bzFile* %38, i32 0, i32 5
  store i32 %37, i32* %lastErr48, align 4
  br label %if.end.49

if.end.49:                                        ; preds = %if.then.47, %if.end.45
  br label %return

if.end.50:                                        ; preds = %while.body
  %39 = load %struct.bzFile*, %struct.bzFile** %bzf, align 8
  %strm51 = getelementptr inbounds %struct.bzFile, %struct.bzFile* %39, i32 0, i32 4
  %avail_out52 = getelementptr inbounds %struct.bz_stream, %struct.bz_stream* %strm51, i32 0, i32 5
  %40 = load i32, i32* %avail_out52, align 4
  %cmp53 = icmp ult i32 %40, 5000
  br i1 %cmp53, label %if.then.54, label %if.end.70

if.then.54:                                       ; preds = %if.end.50
  %41 = load %struct.bzFile*, %struct.bzFile** %bzf, align 8
  %strm55 = getelementptr inbounds %struct.bzFile, %struct.bzFile* %41, i32 0, i32 4
  %avail_out56 = getelementptr inbounds %struct.bz_stream, %struct.bz_stream* %strm55, i32 0, i32 5
  %42 = load i32, i32* %avail_out56, align 4
  %sub = sub i32 5000, %42
  store i32 %sub, i32* %n, align 4
  %43 = load %struct.bzFile*, %struct.bzFile** %bzf, align 8
  %buf57 = getelementptr inbounds %struct.bzFile, %struct.bzFile* %43, i32 0, i32 1
  %arraydecay58 = getelementptr inbounds [5000 x i8], [5000 x i8]* %buf57, i32 0, i32 0
  %44 = load i32, i32* %n, align 4
  %45 = load %struct.bzFile*, %struct.bzFile** %bzf, align 8
  %handle = getelementptr inbounds %struct.bzFile, %struct.bzFile* %45, i32 0, i32 0
  %46 = load i32, i32* %handle, align 4
  %call59 = call i32 @spec_fwrite(i8* %arraydecay58, i32 1, i32 %44, i32 %46)
  store i32 %call59, i32* %n2, align 4
  %47 = load i32, i32* %n, align 4
  %48 = load i32, i32* %n2, align 4
  %cmp60 = icmp ne i32 %47, %48
  br i1 %cmp60, label %if.then.61, label %if.end.69

if.then.61:                                       ; preds = %if.then.54
  %49 = load i32*, i32** %bzerror.addr, align 8
  %cmp62 = icmp ne i32* %49, null
  br i1 %cmp62, label %if.then.63, label %if.end.64

if.then.63:                                       ; preds = %if.then.61
  %50 = load i32*, i32** %bzerror.addr, align 8
  store i32 -6, i32* %50, align 4
  br label %if.end.64

if.end.64:                                        ; preds = %if.then.63, %if.then.61
  %51 = load %struct.bzFile*, %struct.bzFile** %bzf, align 8
  %cmp65 = icmp ne %struct.bzFile* %51, null
  br i1 %cmp65, label %if.then.66, label %if.end.68

if.then.66:                                       ; preds = %if.end.64
  %52 = load %struct.bzFile*, %struct.bzFile** %bzf, align 8
  %lastErr67 = getelementptr inbounds %struct.bzFile, %struct.bzFile* %52, i32 0, i32 5
  store i32 -6, i32* %lastErr67, align 4
  br label %if.end.68

if.end.68:                                        ; preds = %if.then.66, %if.end.64
  br label %return

if.end.69:                                        ; preds = %if.then.54
  br label %if.end.70

if.end.70:                                        ; preds = %if.end.69, %if.end.50
  %53 = load %struct.bzFile*, %struct.bzFile** %bzf, align 8
  %strm71 = getelementptr inbounds %struct.bzFile, %struct.bzFile* %53, i32 0, i32 4
  %avail_in72 = getelementptr inbounds %struct.bz_stream, %struct.bz_stream* %strm71, i32 0, i32 1
  %54 = load i32, i32* %avail_in72, align 4
  %cmp73 = icmp eq i32 %54, 0
  br i1 %cmp73, label %if.then.74, label %if.end.82

if.then.74:                                       ; preds = %if.end.70
  %55 = load i32*, i32** %bzerror.addr, align 8
  %cmp75 = icmp ne i32* %55, null
  br i1 %cmp75, label %if.then.76, label %if.end.77

if.then.76:                                       ; preds = %if.then.74
  %56 = load i32*, i32** %bzerror.addr, align 8
  store i32 0, i32* %56, align 4
  br label %if.end.77

if.end.77:                                        ; preds = %if.then.76, %if.then.74
  %57 = load %struct.bzFile*, %struct.bzFile** %bzf, align 8
  %cmp78 = icmp ne %struct.bzFile* %57, null
  br i1 %cmp78, label %if.then.79, label %if.end.81

if.then.79:                                       ; preds = %if.end.77
  %58 = load %struct.bzFile*, %struct.bzFile** %bzf, align 8
  %lastErr80 = getelementptr inbounds %struct.bzFile, %struct.bzFile* %58, i32 0, i32 5
  store i32 0, i32* %lastErr80, align 4
  br label %if.end.81

if.end.81:                                        ; preds = %if.then.79, %if.end.77
  br label %return

if.end.82:                                        ; preds = %if.end.70
  br label %while.body

return:                                           ; preds = %if.end.81, %if.end.68, %if.end.49, %if.end.34, %if.end.24, %if.end.15
  ret void
}

declare i32 @spec_fwrite(i8*, i32, i32, i32) #1

; Function Attrs: nounwind uwtable
define void @BZ2_bzWriteClose(i32* %bzerror, i8* %b, i32 %abandon, i32* %nbytes_in, i32* %nbytes_out) #0 {
entry:
  %bzerror.addr = alloca i32*, align 8
  %b.addr = alloca i8*, align 8
  %abandon.addr = alloca i32, align 4
  %nbytes_in.addr = alloca i32*, align 8
  %nbytes_out.addr = alloca i32*, align 8
  store i32* %bzerror, i32** %bzerror.addr, align 8
  store i8* %b, i8** %b.addr, align 8
  store i32 %abandon, i32* %abandon.addr, align 4
  store i32* %nbytes_in, i32** %nbytes_in.addr, align 8
  store i32* %nbytes_out, i32** %nbytes_out.addr, align 8
  %0 = load i32*, i32** %bzerror.addr, align 8
  %1 = load i8*, i8** %b.addr, align 8
  %2 = load i32, i32* %abandon.addr, align 4
  %3 = load i32*, i32** %nbytes_in.addr, align 8
  %4 = load i32*, i32** %nbytes_out.addr, align 8
  call void @BZ2_bzWriteClose64(i32* %0, i8* %1, i32 %2, i32* %3, i32* null, i32* %4, i32* null)
  ret void
}

; Function Attrs: nounwind uwtable
define void @BZ2_bzWriteClose64(i32* %bzerror, i8* %b, i32 %abandon, i32* %nbytes_in_lo32, i32* %nbytes_in_hi32, i32* %nbytes_out_lo32, i32* %nbytes_out_hi32) #0 {
entry:
  %bzerror.addr = alloca i32*, align 8
  %b.addr = alloca i8*, align 8
  %abandon.addr = alloca i32, align 4
  %nbytes_in_lo32.addr = alloca i32*, align 8
  %nbytes_in_hi32.addr = alloca i32*, align 8
  %nbytes_out_lo32.addr = alloca i32*, align 8
  %nbytes_out_hi32.addr = alloca i32*, align 8
  %n = alloca i32, align 4
  %n2 = alloca i32, align 4
  %ret = alloca i32, align 4
  %bzf = alloca %struct.bzFile*, align 8
  store i32* %bzerror, i32** %bzerror.addr, align 8
  store i8* %b, i8** %b.addr, align 8
  store i32 %abandon, i32* %abandon.addr, align 4
  store i32* %nbytes_in_lo32, i32** %nbytes_in_lo32.addr, align 8
  store i32* %nbytes_in_hi32, i32** %nbytes_in_hi32.addr, align 8
  store i32* %nbytes_out_lo32, i32** %nbytes_out_lo32.addr, align 8
  store i32* %nbytes_out_hi32, i32** %nbytes_out_hi32.addr, align 8
  %0 = load i8*, i8** %b.addr, align 8
  %1 = bitcast i8* %0 to %struct.bzFile*
  store %struct.bzFile* %1, %struct.bzFile** %bzf, align 8
  %2 = load %struct.bzFile*, %struct.bzFile** %bzf, align 8
  %cmp = icmp eq %struct.bzFile* %2, null
  br i1 %cmp, label %if.then, label %if.end.6

if.then:                                          ; preds = %entry
  %3 = load i32*, i32** %bzerror.addr, align 8
  %cmp1 = icmp ne i32* %3, null
  br i1 %cmp1, label %if.then.2, label %if.end

if.then.2:                                        ; preds = %if.then
  %4 = load i32*, i32** %bzerror.addr, align 8
  store i32 0, i32* %4, align 4
  br label %if.end

if.end:                                           ; preds = %if.then.2, %if.then
  %5 = load %struct.bzFile*, %struct.bzFile** %bzf, align 8
  %cmp3 = icmp ne %struct.bzFile* %5, null
  br i1 %cmp3, label %if.then.4, label %if.end.5

if.then.4:                                        ; preds = %if.end
  %6 = load %struct.bzFile*, %struct.bzFile** %bzf, align 8
  %lastErr = getelementptr inbounds %struct.bzFile, %struct.bzFile* %6, i32 0, i32 5
  store i32 0, i32* %lastErr, align 4
  br label %if.end.5

if.end.5:                                         ; preds = %if.then.4, %if.end
  br label %return

if.end.6:                                         ; preds = %entry
  %7 = load %struct.bzFile*, %struct.bzFile** %bzf, align 8
  %writing = getelementptr inbounds %struct.bzFile, %struct.bzFile* %7, i32 0, i32 3
  %8 = load i8, i8* %writing, align 1
  %tobool = icmp ne i8 %8, 0
  br i1 %tobool, label %if.end.15, label %if.then.7

if.then.7:                                        ; preds = %if.end.6
  %9 = load i32*, i32** %bzerror.addr, align 8
  %cmp8 = icmp ne i32* %9, null
  br i1 %cmp8, label %if.then.9, label %if.end.10

if.then.9:                                        ; preds = %if.then.7
  %10 = load i32*, i32** %bzerror.addr, align 8
  store i32 -1, i32* %10, align 4
  br label %if.end.10

if.end.10:                                        ; preds = %if.then.9, %if.then.7
  %11 = load %struct.bzFile*, %struct.bzFile** %bzf, align 8
  %cmp11 = icmp ne %struct.bzFile* %11, null
  br i1 %cmp11, label %if.then.12, label %if.end.14

if.then.12:                                       ; preds = %if.end.10
  %12 = load %struct.bzFile*, %struct.bzFile** %bzf, align 8
  %lastErr13 = getelementptr inbounds %struct.bzFile, %struct.bzFile* %12, i32 0, i32 5
  store i32 -1, i32* %lastErr13, align 4
  br label %if.end.14

if.end.14:                                        ; preds = %if.then.12, %if.end.10
  br label %return

if.end.15:                                        ; preds = %if.end.6
  %13 = load i32*, i32** %nbytes_in_lo32.addr, align 8
  %cmp16 = icmp ne i32* %13, null
  br i1 %cmp16, label %if.then.17, label %if.end.18

if.then.17:                                       ; preds = %if.end.15
  %14 = load i32*, i32** %nbytes_in_lo32.addr, align 8
  store i32 0, i32* %14, align 4
  br label %if.end.18

if.end.18:                                        ; preds = %if.then.17, %if.end.15
  %15 = load i32*, i32** %nbytes_in_hi32.addr, align 8
  %cmp19 = icmp ne i32* %15, null
  br i1 %cmp19, label %if.then.20, label %if.end.21

if.then.20:                                       ; preds = %if.end.18
  %16 = load i32*, i32** %nbytes_in_hi32.addr, align 8
  store i32 0, i32* %16, align 4
  br label %if.end.21

if.end.21:                                        ; preds = %if.then.20, %if.end.18
  %17 = load i32*, i32** %nbytes_out_lo32.addr, align 8
  %cmp22 = icmp ne i32* %17, null
  br i1 %cmp22, label %if.then.23, label %if.end.24

if.then.23:                                       ; preds = %if.end.21
  %18 = load i32*, i32** %nbytes_out_lo32.addr, align 8
  store i32 0, i32* %18, align 4
  br label %if.end.24

if.end.24:                                        ; preds = %if.then.23, %if.end.21
  %19 = load i32*, i32** %nbytes_out_hi32.addr, align 8
  %cmp25 = icmp ne i32* %19, null
  br i1 %cmp25, label %if.then.26, label %if.end.27

if.then.26:                                       ; preds = %if.end.24
  %20 = load i32*, i32** %nbytes_out_hi32.addr, align 8
  store i32 0, i32* %20, align 4
  br label %if.end.27

if.end.27:                                        ; preds = %if.then.26, %if.end.24
  %21 = load i32, i32* %abandon.addr, align 4
  %tobool28 = icmp ne i32 %21, 0
  br i1 %tobool28, label %if.end.69, label %land.lhs.true

land.lhs.true:                                    ; preds = %if.end.27
  %22 = load %struct.bzFile*, %struct.bzFile** %bzf, align 8
  %lastErr29 = getelementptr inbounds %struct.bzFile, %struct.bzFile* %22, i32 0, i32 5
  %23 = load i32, i32* %lastErr29, align 4
  %cmp30 = icmp eq i32 %23, 0
  br i1 %cmp30, label %if.then.31, label %if.end.69

if.then.31:                                       ; preds = %land.lhs.true
  br label %while.body

while.body:                                       ; preds = %if.then.31, %if.end.68
  %24 = load %struct.bzFile*, %struct.bzFile** %bzf, align 8
  %strm = getelementptr inbounds %struct.bzFile, %struct.bzFile* %24, i32 0, i32 4
  %avail_out = getelementptr inbounds %struct.bz_stream, %struct.bz_stream* %strm, i32 0, i32 5
  store i32 5000, i32* %avail_out, align 4
  %25 = load %struct.bzFile*, %struct.bzFile** %bzf, align 8
  %buf = getelementptr inbounds %struct.bzFile, %struct.bzFile* %25, i32 0, i32 1
  %arraydecay = getelementptr inbounds [5000 x i8], [5000 x i8]* %buf, i32 0, i32 0
  %26 = load %struct.bzFile*, %struct.bzFile** %bzf, align 8
  %strm32 = getelementptr inbounds %struct.bzFile, %struct.bzFile* %26, i32 0, i32 4
  %next_out = getelementptr inbounds %struct.bz_stream, %struct.bz_stream* %strm32, i32 0, i32 4
  store i8* %arraydecay, i8** %next_out, align 8
  %27 = load %struct.bzFile*, %struct.bzFile** %bzf, align 8
  %strm33 = getelementptr inbounds %struct.bzFile, %struct.bzFile* %27, i32 0, i32 4
  %call = call i32 @BZ2_bzCompress(%struct.bz_stream* %strm33, i32 2)
  store i32 %call, i32* %ret, align 4
  %28 = load i32, i32* %ret, align 4
  %cmp34 = icmp ne i32 %28, 3
  br i1 %cmp34, label %land.lhs.true.35, label %if.end.45

land.lhs.true.35:                                 ; preds = %while.body
  %29 = load i32, i32* %ret, align 4
  %cmp36 = icmp ne i32 %29, 4
  br i1 %cmp36, label %if.then.37, label %if.end.45

if.then.37:                                       ; preds = %land.lhs.true.35
  %30 = load i32*, i32** %bzerror.addr, align 8
  %cmp38 = icmp ne i32* %30, null
  br i1 %cmp38, label %if.then.39, label %if.end.40

if.then.39:                                       ; preds = %if.then.37
  %31 = load i32, i32* %ret, align 4
  %32 = load i32*, i32** %bzerror.addr, align 8
  store i32 %31, i32* %32, align 4
  br label %if.end.40

if.end.40:                                        ; preds = %if.then.39, %if.then.37
  %33 = load %struct.bzFile*, %struct.bzFile** %bzf, align 8
  %cmp41 = icmp ne %struct.bzFile* %33, null
  br i1 %cmp41, label %if.then.42, label %if.end.44

if.then.42:                                       ; preds = %if.end.40
  %34 = load i32, i32* %ret, align 4
  %35 = load %struct.bzFile*, %struct.bzFile** %bzf, align 8
  %lastErr43 = getelementptr inbounds %struct.bzFile, %struct.bzFile* %35, i32 0, i32 5
  store i32 %34, i32* %lastErr43, align 4
  br label %if.end.44

if.end.44:                                        ; preds = %if.then.42, %if.end.40
  br label %return

if.end.45:                                        ; preds = %land.lhs.true.35, %while.body
  %36 = load %struct.bzFile*, %struct.bzFile** %bzf, align 8
  %strm46 = getelementptr inbounds %struct.bzFile, %struct.bzFile* %36, i32 0, i32 4
  %avail_out47 = getelementptr inbounds %struct.bz_stream, %struct.bz_stream* %strm46, i32 0, i32 5
  %37 = load i32, i32* %avail_out47, align 4
  %cmp48 = icmp ult i32 %37, 5000
  br i1 %cmp48, label %if.then.49, label %if.end.65

if.then.49:                                       ; preds = %if.end.45
  %38 = load %struct.bzFile*, %struct.bzFile** %bzf, align 8
  %strm50 = getelementptr inbounds %struct.bzFile, %struct.bzFile* %38, i32 0, i32 4
  %avail_out51 = getelementptr inbounds %struct.bz_stream, %struct.bz_stream* %strm50, i32 0, i32 5
  %39 = load i32, i32* %avail_out51, align 4
  %sub = sub i32 5000, %39
  store i32 %sub, i32* %n, align 4
  %40 = load %struct.bzFile*, %struct.bzFile** %bzf, align 8
  %buf52 = getelementptr inbounds %struct.bzFile, %struct.bzFile* %40, i32 0, i32 1
  %arraydecay53 = getelementptr inbounds [5000 x i8], [5000 x i8]* %buf52, i32 0, i32 0
  %41 = load i32, i32* %n, align 4
  %42 = load %struct.bzFile*, %struct.bzFile** %bzf, align 8
  %handle = getelementptr inbounds %struct.bzFile, %struct.bzFile* %42, i32 0, i32 0
  %43 = load i32, i32* %handle, align 4
  %call54 = call i32 @spec_fwrite(i8* %arraydecay53, i32 1, i32 %41, i32 %43)
  store i32 %call54, i32* %n2, align 4
  %44 = load i32, i32* %n, align 4
  %45 = load i32, i32* %n2, align 4
  %cmp55 = icmp ne i32 %44, %45
  br i1 %cmp55, label %if.then.56, label %if.end.64

if.then.56:                                       ; preds = %if.then.49
  %46 = load i32*, i32** %bzerror.addr, align 8
  %cmp57 = icmp ne i32* %46, null
  br i1 %cmp57, label %if.then.58, label %if.end.59

if.then.58:                                       ; preds = %if.then.56
  %47 = load i32*, i32** %bzerror.addr, align 8
  store i32 -6, i32* %47, align 4
  br label %if.end.59

if.end.59:                                        ; preds = %if.then.58, %if.then.56
  %48 = load %struct.bzFile*, %struct.bzFile** %bzf, align 8
  %cmp60 = icmp ne %struct.bzFile* %48, null
  br i1 %cmp60, label %if.then.61, label %if.end.63

if.then.61:                                       ; preds = %if.end.59
  %49 = load %struct.bzFile*, %struct.bzFile** %bzf, align 8
  %lastErr62 = getelementptr inbounds %struct.bzFile, %struct.bzFile* %49, i32 0, i32 5
  store i32 -6, i32* %lastErr62, align 4
  br label %if.end.63

if.end.63:                                        ; preds = %if.then.61, %if.end.59
  br label %return

if.end.64:                                        ; preds = %if.then.49
  br label %if.end.65

if.end.65:                                        ; preds = %if.end.64, %if.end.45
  %50 = load i32, i32* %ret, align 4
  %cmp66 = icmp eq i32 %50, 4
  br i1 %cmp66, label %if.then.67, label %if.end.68

if.then.67:                                       ; preds = %if.end.65
  br label %while.end

if.end.68:                                        ; preds = %if.end.65
  br label %while.body

while.end:                                        ; preds = %if.then.67
  br label %if.end.69

if.end.69:                                        ; preds = %while.end, %land.lhs.true, %if.end.27
  %51 = load i32, i32* %abandon.addr, align 4
  %tobool70 = icmp ne i32 %51, 0
  br i1 %tobool70, label %if.end.72, label %if.then.71

if.then.71:                                       ; preds = %if.end.69
  br label %if.end.72

if.end.72:                                        ; preds = %if.then.71, %if.end.69
  %52 = load i32*, i32** %nbytes_in_lo32.addr, align 8
  %cmp73 = icmp ne i32* %52, null
  br i1 %cmp73, label %if.then.74, label %if.end.76

if.then.74:                                       ; preds = %if.end.72
  %53 = load %struct.bzFile*, %struct.bzFile** %bzf, align 8
  %strm75 = getelementptr inbounds %struct.bzFile, %struct.bzFile* %53, i32 0, i32 4
  %total_in_lo32 = getelementptr inbounds %struct.bz_stream, %struct.bz_stream* %strm75, i32 0, i32 2
  %54 = load i32, i32* %total_in_lo32, align 4
  %55 = load i32*, i32** %nbytes_in_lo32.addr, align 8
  store i32 %54, i32* %55, align 4
  br label %if.end.76

if.end.76:                                        ; preds = %if.then.74, %if.end.72
  %56 = load i32*, i32** %nbytes_in_hi32.addr, align 8
  %cmp77 = icmp ne i32* %56, null
  br i1 %cmp77, label %if.then.78, label %if.end.80

if.then.78:                                       ; preds = %if.end.76
  %57 = load %struct.bzFile*, %struct.bzFile** %bzf, align 8
  %strm79 = getelementptr inbounds %struct.bzFile, %struct.bzFile* %57, i32 0, i32 4
  %total_in_hi32 = getelementptr inbounds %struct.bz_stream, %struct.bz_stream* %strm79, i32 0, i32 3
  %58 = load i32, i32* %total_in_hi32, align 4
  %59 = load i32*, i32** %nbytes_in_hi32.addr, align 8
  store i32 %58, i32* %59, align 4
  br label %if.end.80

if.end.80:                                        ; preds = %if.then.78, %if.end.76
  %60 = load i32*, i32** %nbytes_out_lo32.addr, align 8
  %cmp81 = icmp ne i32* %60, null
  br i1 %cmp81, label %if.then.82, label %if.end.84

if.then.82:                                       ; preds = %if.end.80
  %61 = load %struct.bzFile*, %struct.bzFile** %bzf, align 8
  %strm83 = getelementptr inbounds %struct.bzFile, %struct.bzFile* %61, i32 0, i32 4
  %total_out_lo32 = getelementptr inbounds %struct.bz_stream, %struct.bz_stream* %strm83, i32 0, i32 6
  %62 = load i32, i32* %total_out_lo32, align 4
  %63 = load i32*, i32** %nbytes_out_lo32.addr, align 8
  store i32 %62, i32* %63, align 4
  br label %if.end.84

if.end.84:                                        ; preds = %if.then.82, %if.end.80
  %64 = load i32*, i32** %nbytes_out_hi32.addr, align 8
  %cmp85 = icmp ne i32* %64, null
  br i1 %cmp85, label %if.then.86, label %if.end.88

if.then.86:                                       ; preds = %if.end.84
  %65 = load %struct.bzFile*, %struct.bzFile** %bzf, align 8
  %strm87 = getelementptr inbounds %struct.bzFile, %struct.bzFile* %65, i32 0, i32 4
  %total_out_hi32 = getelementptr inbounds %struct.bz_stream, %struct.bz_stream* %strm87, i32 0, i32 7
  %66 = load i32, i32* %total_out_hi32, align 4
  %67 = load i32*, i32** %nbytes_out_hi32.addr, align 8
  store i32 %66, i32* %67, align 4
  br label %if.end.88

if.end.88:                                        ; preds = %if.then.86, %if.end.84
  %68 = load i32*, i32** %bzerror.addr, align 8
  %cmp89 = icmp ne i32* %68, null
  br i1 %cmp89, label %if.then.90, label %if.end.91

if.then.90:                                       ; preds = %if.end.88
  %69 = load i32*, i32** %bzerror.addr, align 8
  store i32 0, i32* %69, align 4
  br label %if.end.91

if.end.91:                                        ; preds = %if.then.90, %if.end.88
  %70 = load %struct.bzFile*, %struct.bzFile** %bzf, align 8
  %cmp92 = icmp ne %struct.bzFile* %70, null
  br i1 %cmp92, label %if.then.93, label %if.end.95

if.then.93:                                       ; preds = %if.end.91
  %71 = load %struct.bzFile*, %struct.bzFile** %bzf, align 8
  %lastErr94 = getelementptr inbounds %struct.bzFile, %struct.bzFile* %71, i32 0, i32 5
  store i32 0, i32* %lastErr94, align 4
  br label %if.end.95

if.end.95:                                        ; preds = %if.then.93, %if.end.91
  %72 = load %struct.bzFile*, %struct.bzFile** %bzf, align 8
  %strm96 = getelementptr inbounds %struct.bzFile, %struct.bzFile* %72, i32 0, i32 4
  %call97 = call i32 @BZ2_bzCompressEnd(%struct.bz_stream* %strm96)
  %73 = load %struct.bzFile*, %struct.bzFile** %bzf, align 8
  %74 = bitcast %struct.bzFile* %73 to i8*
  call void @free(i8* %74) #4
  br label %return

return:                                           ; preds = %if.end.95, %if.end.63, %if.end.44, %if.end.14, %if.end.5
  ret void
}

; Function Attrs: nounwind uwtable
define i8* @BZ2_bzReadOpen(i32* %bzerror, i32 %f, i32 %verbosity, i32 %small, i8* %unused, i32 %nUnused) #0 {
entry:
  %retval = alloca i8*, align 8
  %bzerror.addr = alloca i32*, align 8
  %f.addr = alloca i32, align 4
  %verbosity.addr = alloca i32, align 4
  %small.addr = alloca i32, align 4
  %unused.addr = alloca i8*, align 8
  %nUnused.addr = alloca i32, align 4
  %bzf = alloca %struct.bzFile*, align 8
  %ret = alloca i32, align 4
  store i32* %bzerror, i32** %bzerror.addr, align 8
  store i32 %f, i32* %f.addr, align 4
  store i32 %verbosity, i32* %verbosity.addr, align 4
  store i32 %small, i32* %small.addr, align 4
  store i8* %unused, i8** %unused.addr, align 8
  store i32 %nUnused, i32* %nUnused.addr, align 4
  store %struct.bzFile* null, %struct.bzFile** %bzf, align 8
  %0 = load i32*, i32** %bzerror.addr, align 8
  %cmp = icmp ne i32* %0, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %1 = load i32*, i32** %bzerror.addr, align 8
  store i32 0, i32* %1, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %2 = load %struct.bzFile*, %struct.bzFile** %bzf, align 8
  %cmp1 = icmp ne %struct.bzFile* %2, null
  br i1 %cmp1, label %if.then.2, label %if.end.3

if.then.2:                                        ; preds = %if.end
  %3 = load %struct.bzFile*, %struct.bzFile** %bzf, align 8
  %lastErr = getelementptr inbounds %struct.bzFile, %struct.bzFile* %3, i32 0, i32 5
  store i32 0, i32* %lastErr, align 4
  br label %if.end.3

if.end.3:                                         ; preds = %if.then.2, %if.end
  %4 = load i32, i32* %f.addr, align 4
  %cmp4 = icmp eq i32 %4, 0
  br i1 %cmp4, label %if.then.21, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.end.3
  %5 = load i32, i32* %small.addr, align 4
  %cmp5 = icmp ne i32 %5, 0
  br i1 %cmp5, label %land.lhs.true, label %lor.lhs.false.7

land.lhs.true:                                    ; preds = %lor.lhs.false
  %6 = load i32, i32* %small.addr, align 4
  %cmp6 = icmp ne i32 %6, 1
  br i1 %cmp6, label %if.then.21, label %lor.lhs.false.7

lor.lhs.false.7:                                  ; preds = %land.lhs.true, %lor.lhs.false
  %7 = load i32, i32* %verbosity.addr, align 4
  %cmp8 = icmp slt i32 %7, 0
  br i1 %cmp8, label %if.then.21, label %lor.lhs.false.9

lor.lhs.false.9:                                  ; preds = %lor.lhs.false.7
  %8 = load i32, i32* %verbosity.addr, align 4
  %cmp10 = icmp sgt i32 %8, 4
  br i1 %cmp10, label %if.then.21, label %lor.lhs.false.11

lor.lhs.false.11:                                 ; preds = %lor.lhs.false.9
  %9 = load i8*, i8** %unused.addr, align 8
  %cmp12 = icmp eq i8* %9, null
  br i1 %cmp12, label %land.lhs.true.13, label %lor.lhs.false.15

land.lhs.true.13:                                 ; preds = %lor.lhs.false.11
  %10 = load i32, i32* %nUnused.addr, align 4
  %cmp14 = icmp ne i32 %10, 0
  br i1 %cmp14, label %if.then.21, label %lor.lhs.false.15

lor.lhs.false.15:                                 ; preds = %land.lhs.true.13, %lor.lhs.false.11
  %11 = load i8*, i8** %unused.addr, align 8
  %cmp16 = icmp ne i8* %11, null
  br i1 %cmp16, label %land.lhs.true.17, label %if.end.29

land.lhs.true.17:                                 ; preds = %lor.lhs.false.15
  %12 = load i32, i32* %nUnused.addr, align 4
  %cmp18 = icmp slt i32 %12, 0
  br i1 %cmp18, label %if.then.21, label %lor.lhs.false.19

lor.lhs.false.19:                                 ; preds = %land.lhs.true.17
  %13 = load i32, i32* %nUnused.addr, align 4
  %cmp20 = icmp sgt i32 %13, 5000
  br i1 %cmp20, label %if.then.21, label %if.end.29

if.then.21:                                       ; preds = %lor.lhs.false.19, %land.lhs.true.17, %land.lhs.true.13, %lor.lhs.false.9, %lor.lhs.false.7, %land.lhs.true, %if.end.3
  %14 = load i32*, i32** %bzerror.addr, align 8
  %cmp22 = icmp ne i32* %14, null
  br i1 %cmp22, label %if.then.23, label %if.end.24

if.then.23:                                       ; preds = %if.then.21
  %15 = load i32*, i32** %bzerror.addr, align 8
  store i32 -2, i32* %15, align 4
  br label %if.end.24

if.end.24:                                        ; preds = %if.then.23, %if.then.21
  %16 = load %struct.bzFile*, %struct.bzFile** %bzf, align 8
  %cmp25 = icmp ne %struct.bzFile* %16, null
  br i1 %cmp25, label %if.then.26, label %if.end.28

if.then.26:                                       ; preds = %if.end.24
  %17 = load %struct.bzFile*, %struct.bzFile** %bzf, align 8
  %lastErr27 = getelementptr inbounds %struct.bzFile, %struct.bzFile* %17, i32 0, i32 5
  store i32 -2, i32* %lastErr27, align 4
  br label %if.end.28

if.end.28:                                        ; preds = %if.then.26, %if.end.24
  store i8* null, i8** %retval
  br label %return

if.end.29:                                        ; preds = %lor.lhs.false.19, %lor.lhs.false.15
  %call = call noalias i8* @malloc(i64 5104) #4
  %18 = bitcast i8* %call to %struct.bzFile*
  store %struct.bzFile* %18, %struct.bzFile** %bzf, align 8
  %19 = load %struct.bzFile*, %struct.bzFile** %bzf, align 8
  %cmp30 = icmp eq %struct.bzFile* %19, null
  br i1 %cmp30, label %if.then.31, label %if.end.39

if.then.31:                                       ; preds = %if.end.29
  %20 = load i32*, i32** %bzerror.addr, align 8
  %cmp32 = icmp ne i32* %20, null
  br i1 %cmp32, label %if.then.33, label %if.end.34

if.then.33:                                       ; preds = %if.then.31
  %21 = load i32*, i32** %bzerror.addr, align 8
  store i32 -3, i32* %21, align 4
  br label %if.end.34

if.end.34:                                        ; preds = %if.then.33, %if.then.31
  %22 = load %struct.bzFile*, %struct.bzFile** %bzf, align 8
  %cmp35 = icmp ne %struct.bzFile* %22, null
  br i1 %cmp35, label %if.then.36, label %if.end.38

if.then.36:                                       ; preds = %if.end.34
  %23 = load %struct.bzFile*, %struct.bzFile** %bzf, align 8
  %lastErr37 = getelementptr inbounds %struct.bzFile, %struct.bzFile* %23, i32 0, i32 5
  store i32 -3, i32* %lastErr37, align 4
  br label %if.end.38

if.end.38:                                        ; preds = %if.then.36, %if.end.34
  store i8* null, i8** %retval
  br label %return

if.end.39:                                        ; preds = %if.end.29
  %24 = load i32*, i32** %bzerror.addr, align 8
  %cmp40 = icmp ne i32* %24, null
  br i1 %cmp40, label %if.then.41, label %if.end.42

if.then.41:                                       ; preds = %if.end.39
  %25 = load i32*, i32** %bzerror.addr, align 8
  store i32 0, i32* %25, align 4
  br label %if.end.42

if.end.42:                                        ; preds = %if.then.41, %if.end.39
  %26 = load %struct.bzFile*, %struct.bzFile** %bzf, align 8
  %cmp43 = icmp ne %struct.bzFile* %26, null
  br i1 %cmp43, label %if.then.44, label %if.end.46

if.then.44:                                       ; preds = %if.end.42
  %27 = load %struct.bzFile*, %struct.bzFile** %bzf, align 8
  %lastErr45 = getelementptr inbounds %struct.bzFile, %struct.bzFile* %27, i32 0, i32 5
  store i32 0, i32* %lastErr45, align 4
  br label %if.end.46

if.end.46:                                        ; preds = %if.then.44, %if.end.42
  %28 = load %struct.bzFile*, %struct.bzFile** %bzf, align 8
  %initialisedOk = getelementptr inbounds %struct.bzFile, %struct.bzFile* %28, i32 0, i32 6
  store i8 0, i8* %initialisedOk, align 1
  %29 = load i32, i32* %f.addr, align 4
  %30 = load %struct.bzFile*, %struct.bzFile** %bzf, align 8
  %handle = getelementptr inbounds %struct.bzFile, %struct.bzFile* %30, i32 0, i32 0
  store i32 %29, i32* %handle, align 4
  %31 = load %struct.bzFile*, %struct.bzFile** %bzf, align 8
  %bufN = getelementptr inbounds %struct.bzFile, %struct.bzFile* %31, i32 0, i32 2
  store i32 0, i32* %bufN, align 4
  %32 = load %struct.bzFile*, %struct.bzFile** %bzf, align 8
  %writing = getelementptr inbounds %struct.bzFile, %struct.bzFile* %32, i32 0, i32 3
  store i8 0, i8* %writing, align 1
  %33 = load %struct.bzFile*, %struct.bzFile** %bzf, align 8
  %strm = getelementptr inbounds %struct.bzFile, %struct.bzFile* %33, i32 0, i32 4
  %bzalloc = getelementptr inbounds %struct.bz_stream, %struct.bz_stream* %strm, i32 0, i32 9
  store i8* (i8*, i32, i32)* null, i8* (i8*, i32, i32)** %bzalloc, align 8
  %34 = load %struct.bzFile*, %struct.bzFile** %bzf, align 8
  %strm47 = getelementptr inbounds %struct.bzFile, %struct.bzFile* %34, i32 0, i32 4
  %bzfree = getelementptr inbounds %struct.bz_stream, %struct.bz_stream* %strm47, i32 0, i32 10
  store void (i8*, i8*)* null, void (i8*, i8*)** %bzfree, align 8
  %35 = load %struct.bzFile*, %struct.bzFile** %bzf, align 8
  %strm48 = getelementptr inbounds %struct.bzFile, %struct.bzFile* %35, i32 0, i32 4
  %opaque = getelementptr inbounds %struct.bz_stream, %struct.bz_stream* %strm48, i32 0, i32 11
  store i8* null, i8** %opaque, align 8
  br label %while.cond

while.cond:                                       ; preds = %while.body, %if.end.46
  %36 = load i32, i32* %nUnused.addr, align 4
  %cmp49 = icmp sgt i32 %36, 0
  br i1 %cmp49, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %37 = load i8*, i8** %unused.addr, align 8
  %38 = load i8, i8* %37, align 1
  %39 = load %struct.bzFile*, %struct.bzFile** %bzf, align 8
  %bufN50 = getelementptr inbounds %struct.bzFile, %struct.bzFile* %39, i32 0, i32 2
  %40 = load i32, i32* %bufN50, align 4
  %idxprom = sext i32 %40 to i64
  %41 = load %struct.bzFile*, %struct.bzFile** %bzf, align 8
  %buf = getelementptr inbounds %struct.bzFile, %struct.bzFile* %41, i32 0, i32 1
  %arrayidx = getelementptr inbounds [5000 x i8], [5000 x i8]* %buf, i32 0, i64 %idxprom
  store i8 %38, i8* %arrayidx, align 1
  %42 = load %struct.bzFile*, %struct.bzFile** %bzf, align 8
  %bufN51 = getelementptr inbounds %struct.bzFile, %struct.bzFile* %42, i32 0, i32 2
  %43 = load i32, i32* %bufN51, align 4
  %inc = add nsw i32 %43, 1
  store i32 %inc, i32* %bufN51, align 4
  %44 = load i8*, i8** %unused.addr, align 8
  %add.ptr = getelementptr inbounds i8, i8* %44, i64 1
  store i8* %add.ptr, i8** %unused.addr, align 8
  %45 = load i32, i32* %nUnused.addr, align 4
  %dec = add nsw i32 %45, -1
  store i32 %dec, i32* %nUnused.addr, align 4
  br label %while.cond

while.end:                                        ; preds = %while.cond
  %46 = load %struct.bzFile*, %struct.bzFile** %bzf, align 8
  %strm52 = getelementptr inbounds %struct.bzFile, %struct.bzFile* %46, i32 0, i32 4
  %47 = load i32, i32* %verbosity.addr, align 4
  %48 = load i32, i32* %small.addr, align 4
  %call53 = call i32 @BZ2_bzDecompressInit(%struct.bz_stream* %strm52, i32 %47, i32 %48)
  store i32 %call53, i32* %ret, align 4
  %49 = load i32, i32* %ret, align 4
  %cmp54 = icmp ne i32 %49, 0
  br i1 %cmp54, label %if.then.55, label %if.end.63

if.then.55:                                       ; preds = %while.end
  %50 = load i32*, i32** %bzerror.addr, align 8
  %cmp56 = icmp ne i32* %50, null
  br i1 %cmp56, label %if.then.57, label %if.end.58

if.then.57:                                       ; preds = %if.then.55
  %51 = load i32, i32* %ret, align 4
  %52 = load i32*, i32** %bzerror.addr, align 8
  store i32 %51, i32* %52, align 4
  br label %if.end.58

if.end.58:                                        ; preds = %if.then.57, %if.then.55
  %53 = load %struct.bzFile*, %struct.bzFile** %bzf, align 8
  %cmp59 = icmp ne %struct.bzFile* %53, null
  br i1 %cmp59, label %if.then.60, label %if.end.62

if.then.60:                                       ; preds = %if.end.58
  %54 = load i32, i32* %ret, align 4
  %55 = load %struct.bzFile*, %struct.bzFile** %bzf, align 8
  %lastErr61 = getelementptr inbounds %struct.bzFile, %struct.bzFile* %55, i32 0, i32 5
  store i32 %54, i32* %lastErr61, align 4
  br label %if.end.62

if.end.62:                                        ; preds = %if.then.60, %if.end.58
  %56 = load %struct.bzFile*, %struct.bzFile** %bzf, align 8
  %57 = bitcast %struct.bzFile* %56 to i8*
  call void @free(i8* %57) #4
  store i8* null, i8** %retval
  br label %return

if.end.63:                                        ; preds = %while.end
  %58 = load %struct.bzFile*, %struct.bzFile** %bzf, align 8
  %bufN64 = getelementptr inbounds %struct.bzFile, %struct.bzFile* %58, i32 0, i32 2
  %59 = load i32, i32* %bufN64, align 4
  %60 = load %struct.bzFile*, %struct.bzFile** %bzf, align 8
  %strm65 = getelementptr inbounds %struct.bzFile, %struct.bzFile* %60, i32 0, i32 4
  %avail_in = getelementptr inbounds %struct.bz_stream, %struct.bz_stream* %strm65, i32 0, i32 1
  store i32 %59, i32* %avail_in, align 4
  %61 = load %struct.bzFile*, %struct.bzFile** %bzf, align 8
  %buf66 = getelementptr inbounds %struct.bzFile, %struct.bzFile* %61, i32 0, i32 1
  %arraydecay = getelementptr inbounds [5000 x i8], [5000 x i8]* %buf66, i32 0, i32 0
  %62 = load %struct.bzFile*, %struct.bzFile** %bzf, align 8
  %strm67 = getelementptr inbounds %struct.bzFile, %struct.bzFile* %62, i32 0, i32 4
  %next_in = getelementptr inbounds %struct.bz_stream, %struct.bz_stream* %strm67, i32 0, i32 0
  store i8* %arraydecay, i8** %next_in, align 8
  %63 = load %struct.bzFile*, %struct.bzFile** %bzf, align 8
  %initialisedOk68 = getelementptr inbounds %struct.bzFile, %struct.bzFile* %63, i32 0, i32 6
  store i8 1, i8* %initialisedOk68, align 1
  %64 = load %struct.bzFile*, %struct.bzFile** %bzf, align 8
  %65 = bitcast %struct.bzFile* %64 to i8*
  store i8* %65, i8** %retval
  br label %return

return:                                           ; preds = %if.end.63, %if.end.62, %if.end.38, %if.end.28
  %66 = load i8*, i8** %retval
  ret i8* %66
}

; Function Attrs: nounwind uwtable
define void @BZ2_bzReadClose(i32* %bzerror, i8* %b) #0 {
entry:
  %bzerror.addr = alloca i32*, align 8
  %b.addr = alloca i8*, align 8
  %bzf = alloca %struct.bzFile*, align 8
  store i32* %bzerror, i32** %bzerror.addr, align 8
  store i8* %b, i8** %b.addr, align 8
  %0 = load i8*, i8** %b.addr, align 8
  %1 = bitcast i8* %0 to %struct.bzFile*
  store %struct.bzFile* %1, %struct.bzFile** %bzf, align 8
  %2 = load i32*, i32** %bzerror.addr, align 8
  %cmp = icmp ne i32* %2, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %3 = load i32*, i32** %bzerror.addr, align 8
  store i32 0, i32* %3, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %4 = load %struct.bzFile*, %struct.bzFile** %bzf, align 8
  %cmp1 = icmp ne %struct.bzFile* %4, null
  br i1 %cmp1, label %if.then.2, label %if.end.3

if.then.2:                                        ; preds = %if.end
  %5 = load %struct.bzFile*, %struct.bzFile** %bzf, align 8
  %lastErr = getelementptr inbounds %struct.bzFile, %struct.bzFile* %5, i32 0, i32 5
  store i32 0, i32* %lastErr, align 4
  br label %if.end.3

if.end.3:                                         ; preds = %if.then.2, %if.end
  %6 = load %struct.bzFile*, %struct.bzFile** %bzf, align 8
  %cmp4 = icmp eq %struct.bzFile* %6, null
  br i1 %cmp4, label %if.then.5, label %if.end.13

if.then.5:                                        ; preds = %if.end.3
  %7 = load i32*, i32** %bzerror.addr, align 8
  %cmp6 = icmp ne i32* %7, null
  br i1 %cmp6, label %if.then.7, label %if.end.8

if.then.7:                                        ; preds = %if.then.5
  %8 = load i32*, i32** %bzerror.addr, align 8
  store i32 0, i32* %8, align 4
  br label %if.end.8

if.end.8:                                         ; preds = %if.then.7, %if.then.5
  %9 = load %struct.bzFile*, %struct.bzFile** %bzf, align 8
  %cmp9 = icmp ne %struct.bzFile* %9, null
  br i1 %cmp9, label %if.then.10, label %if.end.12

if.then.10:                                       ; preds = %if.end.8
  %10 = load %struct.bzFile*, %struct.bzFile** %bzf, align 8
  %lastErr11 = getelementptr inbounds %struct.bzFile, %struct.bzFile* %10, i32 0, i32 5
  store i32 0, i32* %lastErr11, align 4
  br label %if.end.12

if.end.12:                                        ; preds = %if.then.10, %if.end.8
  br label %return

if.end.13:                                        ; preds = %if.end.3
  %11 = load %struct.bzFile*, %struct.bzFile** %bzf, align 8
  %writing = getelementptr inbounds %struct.bzFile, %struct.bzFile* %11, i32 0, i32 3
  %12 = load i8, i8* %writing, align 1
  %tobool = icmp ne i8 %12, 0
  br i1 %tobool, label %if.then.14, label %if.end.22

if.then.14:                                       ; preds = %if.end.13
  %13 = load i32*, i32** %bzerror.addr, align 8
  %cmp15 = icmp ne i32* %13, null
  br i1 %cmp15, label %if.then.16, label %if.end.17

if.then.16:                                       ; preds = %if.then.14
  %14 = load i32*, i32** %bzerror.addr, align 8
  store i32 -1, i32* %14, align 4
  br label %if.end.17

if.end.17:                                        ; preds = %if.then.16, %if.then.14
  %15 = load %struct.bzFile*, %struct.bzFile** %bzf, align 8
  %cmp18 = icmp ne %struct.bzFile* %15, null
  br i1 %cmp18, label %if.then.19, label %if.end.21

if.then.19:                                       ; preds = %if.end.17
  %16 = load %struct.bzFile*, %struct.bzFile** %bzf, align 8
  %lastErr20 = getelementptr inbounds %struct.bzFile, %struct.bzFile* %16, i32 0, i32 5
  store i32 -1, i32* %lastErr20, align 4
  br label %if.end.21

if.end.21:                                        ; preds = %if.then.19, %if.end.17
  br label %return

if.end.22:                                        ; preds = %if.end.13
  %17 = load %struct.bzFile*, %struct.bzFile** %bzf, align 8
  %initialisedOk = getelementptr inbounds %struct.bzFile, %struct.bzFile* %17, i32 0, i32 6
  %18 = load i8, i8* %initialisedOk, align 1
  %tobool23 = icmp ne i8 %18, 0
  br i1 %tobool23, label %if.then.24, label %if.end.25

if.then.24:                                       ; preds = %if.end.22
  %19 = load %struct.bzFile*, %struct.bzFile** %bzf, align 8
  %strm = getelementptr inbounds %struct.bzFile, %struct.bzFile* %19, i32 0, i32 4
  %call = call i32 @BZ2_bzDecompressEnd(%struct.bz_stream* %strm)
  br label %if.end.25

if.end.25:                                        ; preds = %if.then.24, %if.end.22
  %20 = load %struct.bzFile*, %struct.bzFile** %bzf, align 8
  %21 = bitcast %struct.bzFile* %20 to i8*
  call void @free(i8* %21) #4
  br label %return

return:                                           ; preds = %if.end.25, %if.end.21, %if.end.12
  ret void
}

; Function Attrs: nounwind uwtable
define i32 @BZ2_bzRead(i32* %bzerror, i8* %b, i8* %buf, i32 %len) #0 {
entry:
  %retval = alloca i32, align 4
  %bzerror.addr = alloca i32*, align 8
  %b.addr = alloca i8*, align 8
  %buf.addr = alloca i8*, align 8
  %len.addr = alloca i32, align 4
  %n = alloca i32, align 4
  %ret = alloca i32, align 4
  %bzf = alloca %struct.bzFile*, align 8
  store i32* %bzerror, i32** %bzerror.addr, align 8
  store i8* %b, i8** %b.addr, align 8
  store i8* %buf, i8** %buf.addr, align 8
  store i32 %len, i32* %len.addr, align 4
  %0 = load i8*, i8** %b.addr, align 8
  %1 = bitcast i8* %0 to %struct.bzFile*
  store %struct.bzFile* %1, %struct.bzFile** %bzf, align 8
  %2 = load i32*, i32** %bzerror.addr, align 8
  %cmp = icmp ne i32* %2, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %3 = load i32*, i32** %bzerror.addr, align 8
  store i32 0, i32* %3, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %4 = load %struct.bzFile*, %struct.bzFile** %bzf, align 8
  %cmp1 = icmp ne %struct.bzFile* %4, null
  br i1 %cmp1, label %if.then.2, label %if.end.3

if.then.2:                                        ; preds = %if.end
  %5 = load %struct.bzFile*, %struct.bzFile** %bzf, align 8
  %lastErr = getelementptr inbounds %struct.bzFile, %struct.bzFile* %5, i32 0, i32 5
  store i32 0, i32* %lastErr, align 4
  br label %if.end.3

if.end.3:                                         ; preds = %if.then.2, %if.end
  %6 = load %struct.bzFile*, %struct.bzFile** %bzf, align 8
  %cmp4 = icmp eq %struct.bzFile* %6, null
  br i1 %cmp4, label %if.then.8, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.end.3
  %7 = load i8*, i8** %buf.addr, align 8
  %cmp5 = icmp eq i8* %7, null
  br i1 %cmp5, label %if.then.8, label %lor.lhs.false.6

lor.lhs.false.6:                                  ; preds = %lor.lhs.false
  %8 = load i32, i32* %len.addr, align 4
  %cmp7 = icmp slt i32 %8, 0
  br i1 %cmp7, label %if.then.8, label %if.end.16

if.then.8:                                        ; preds = %lor.lhs.false.6, %lor.lhs.false, %if.end.3
  %9 = load i32*, i32** %bzerror.addr, align 8
  %cmp9 = icmp ne i32* %9, null
  br i1 %cmp9, label %if.then.10, label %if.end.11

if.then.10:                                       ; preds = %if.then.8
  %10 = load i32*, i32** %bzerror.addr, align 8
  store i32 -2, i32* %10, align 4
  br label %if.end.11

if.end.11:                                        ; preds = %if.then.10, %if.then.8
  %11 = load %struct.bzFile*, %struct.bzFile** %bzf, align 8
  %cmp12 = icmp ne %struct.bzFile* %11, null
  br i1 %cmp12, label %if.then.13, label %if.end.15

if.then.13:                                       ; preds = %if.end.11
  %12 = load %struct.bzFile*, %struct.bzFile** %bzf, align 8
  %lastErr14 = getelementptr inbounds %struct.bzFile, %struct.bzFile* %12, i32 0, i32 5
  store i32 -2, i32* %lastErr14, align 4
  br label %if.end.15

if.end.15:                                        ; preds = %if.then.13, %if.end.11
  store i32 0, i32* %retval
  br label %return

if.end.16:                                        ; preds = %lor.lhs.false.6
  %13 = load %struct.bzFile*, %struct.bzFile** %bzf, align 8
  %writing = getelementptr inbounds %struct.bzFile, %struct.bzFile* %13, i32 0, i32 3
  %14 = load i8, i8* %writing, align 1
  %tobool = icmp ne i8 %14, 0
  br i1 %tobool, label %if.then.17, label %if.end.25

if.then.17:                                       ; preds = %if.end.16
  %15 = load i32*, i32** %bzerror.addr, align 8
  %cmp18 = icmp ne i32* %15, null
  br i1 %cmp18, label %if.then.19, label %if.end.20

if.then.19:                                       ; preds = %if.then.17
  %16 = load i32*, i32** %bzerror.addr, align 8
  store i32 -1, i32* %16, align 4
  br label %if.end.20

if.end.20:                                        ; preds = %if.then.19, %if.then.17
  %17 = load %struct.bzFile*, %struct.bzFile** %bzf, align 8
  %cmp21 = icmp ne %struct.bzFile* %17, null
  br i1 %cmp21, label %if.then.22, label %if.end.24

if.then.22:                                       ; preds = %if.end.20
  %18 = load %struct.bzFile*, %struct.bzFile** %bzf, align 8
  %lastErr23 = getelementptr inbounds %struct.bzFile, %struct.bzFile* %18, i32 0, i32 5
  store i32 -1, i32* %lastErr23, align 4
  br label %if.end.24

if.end.24:                                        ; preds = %if.then.22, %if.end.20
  store i32 0, i32* %retval
  br label %return

if.end.25:                                        ; preds = %if.end.16
  %19 = load i32, i32* %len.addr, align 4
  %cmp26 = icmp eq i32 %19, 0
  br i1 %cmp26, label %if.then.27, label %if.end.35

if.then.27:                                       ; preds = %if.end.25
  %20 = load i32*, i32** %bzerror.addr, align 8
  %cmp28 = icmp ne i32* %20, null
  br i1 %cmp28, label %if.then.29, label %if.end.30

if.then.29:                                       ; preds = %if.then.27
  %21 = load i32*, i32** %bzerror.addr, align 8
  store i32 0, i32* %21, align 4
  br label %if.end.30

if.end.30:                                        ; preds = %if.then.29, %if.then.27
  %22 = load %struct.bzFile*, %struct.bzFile** %bzf, align 8
  %cmp31 = icmp ne %struct.bzFile* %22, null
  br i1 %cmp31, label %if.then.32, label %if.end.34

if.then.32:                                       ; preds = %if.end.30
  %23 = load %struct.bzFile*, %struct.bzFile** %bzf, align 8
  %lastErr33 = getelementptr inbounds %struct.bzFile, %struct.bzFile* %23, i32 0, i32 5
  store i32 0, i32* %lastErr33, align 4
  br label %if.end.34

if.end.34:                                        ; preds = %if.then.32, %if.end.30
  store i32 0, i32* %retval
  br label %return

if.end.35:                                        ; preds = %if.end.25
  %24 = load i32, i32* %len.addr, align 4
  %25 = load %struct.bzFile*, %struct.bzFile** %bzf, align 8
  %strm = getelementptr inbounds %struct.bzFile, %struct.bzFile* %25, i32 0, i32 4
  %avail_out = getelementptr inbounds %struct.bz_stream, %struct.bz_stream* %strm, i32 0, i32 5
  store i32 %24, i32* %avail_out, align 4
  %26 = load i8*, i8** %buf.addr, align 8
  %27 = load %struct.bzFile*, %struct.bzFile** %bzf, align 8
  %strm36 = getelementptr inbounds %struct.bzFile, %struct.bzFile* %27, i32 0, i32 4
  %next_out = getelementptr inbounds %struct.bz_stream, %struct.bz_stream* %strm36, i32 0, i32 4
  store i8* %26, i8** %next_out, align 8
  br label %while.body

while.body:                                       ; preds = %if.end.35, %if.end.120
  %28 = load %struct.bzFile*, %struct.bzFile** %bzf, align 8
  %strm37 = getelementptr inbounds %struct.bzFile, %struct.bzFile* %28, i32 0, i32 4
  %avail_in = getelementptr inbounds %struct.bz_stream, %struct.bz_stream* %strm37, i32 0, i32 1
  %29 = load i32, i32* %avail_in, align 4
  %cmp38 = icmp eq i32 %29, 0
  br i1 %cmp38, label %land.lhs.true, label %if.end.50

land.lhs.true:                                    ; preds = %while.body
  %30 = load %struct.bzFile*, %struct.bzFile** %bzf, align 8
  %handle = getelementptr inbounds %struct.bzFile, %struct.bzFile* %30, i32 0, i32 0
  %31 = load i32, i32* %handle, align 4
  %call = call zeroext i8 @myfeof(i32 %31)
  %tobool39 = icmp ne i8 %call, 0
  br i1 %tobool39, label %if.end.50, label %if.then.40

if.then.40:                                       ; preds = %land.lhs.true
  %32 = load %struct.bzFile*, %struct.bzFile** %bzf, align 8
  %buf41 = getelementptr inbounds %struct.bzFile, %struct.bzFile* %32, i32 0, i32 1
  %arraydecay = getelementptr inbounds [5000 x i8], [5000 x i8]* %buf41, i32 0, i32 0
  %33 = load %struct.bzFile*, %struct.bzFile** %bzf, align 8
  %handle42 = getelementptr inbounds %struct.bzFile, %struct.bzFile* %33, i32 0, i32 0
  %34 = load i32, i32* %handle42, align 4
  %call43 = call i32 @spec_fread(i8* %arraydecay, i32 1, i32 5000, i32 %34)
  store i32 %call43, i32* %n, align 4
  %35 = load i32, i32* %n, align 4
  %36 = load %struct.bzFile*, %struct.bzFile** %bzf, align 8
  %bufN = getelementptr inbounds %struct.bzFile, %struct.bzFile* %36, i32 0, i32 2
  store i32 %35, i32* %bufN, align 4
  %37 = load %struct.bzFile*, %struct.bzFile** %bzf, align 8
  %bufN44 = getelementptr inbounds %struct.bzFile, %struct.bzFile* %37, i32 0, i32 2
  %38 = load i32, i32* %bufN44, align 4
  %39 = load %struct.bzFile*, %struct.bzFile** %bzf, align 8
  %strm45 = getelementptr inbounds %struct.bzFile, %struct.bzFile* %39, i32 0, i32 4
  %avail_in46 = getelementptr inbounds %struct.bz_stream, %struct.bz_stream* %strm45, i32 0, i32 1
  store i32 %38, i32* %avail_in46, align 4
  %40 = load %struct.bzFile*, %struct.bzFile** %bzf, align 8
  %buf47 = getelementptr inbounds %struct.bzFile, %struct.bzFile* %40, i32 0, i32 1
  %arraydecay48 = getelementptr inbounds [5000 x i8], [5000 x i8]* %buf47, i32 0, i32 0
  %41 = load %struct.bzFile*, %struct.bzFile** %bzf, align 8
  %strm49 = getelementptr inbounds %struct.bzFile, %struct.bzFile* %41, i32 0, i32 4
  %next_in = getelementptr inbounds %struct.bz_stream, %struct.bz_stream* %strm49, i32 0, i32 0
  store i8* %arraydecay48, i8** %next_in, align 8
  br label %if.end.50

if.end.50:                                        ; preds = %if.then.40, %land.lhs.true, %while.body
  %42 = load %struct.bzFile*, %struct.bzFile** %bzf, align 8
  %strm51 = getelementptr inbounds %struct.bzFile, %struct.bzFile* %42, i32 0, i32 4
  %call52 = call i32 @BZ2_bzDecompress(%struct.bz_stream* %strm51)
  store i32 %call52, i32* %ret, align 4
  %43 = load i32, i32* %ret, align 4
  %cmp53 = icmp ne i32 %43, 0
  br i1 %cmp53, label %land.lhs.true.54, label %if.end.64

land.lhs.true.54:                                 ; preds = %if.end.50
  %44 = load i32, i32* %ret, align 4
  %cmp55 = icmp ne i32 %44, 4
  br i1 %cmp55, label %if.then.56, label %if.end.64

if.then.56:                                       ; preds = %land.lhs.true.54
  %45 = load i32*, i32** %bzerror.addr, align 8
  %cmp57 = icmp ne i32* %45, null
  br i1 %cmp57, label %if.then.58, label %if.end.59

if.then.58:                                       ; preds = %if.then.56
  %46 = load i32, i32* %ret, align 4
  %47 = load i32*, i32** %bzerror.addr, align 8
  store i32 %46, i32* %47, align 4
  br label %if.end.59

if.end.59:                                        ; preds = %if.then.58, %if.then.56
  %48 = load %struct.bzFile*, %struct.bzFile** %bzf, align 8
  %cmp60 = icmp ne %struct.bzFile* %48, null
  br i1 %cmp60, label %if.then.61, label %if.end.63

if.then.61:                                       ; preds = %if.end.59
  %49 = load i32, i32* %ret, align 4
  %50 = load %struct.bzFile*, %struct.bzFile** %bzf, align 8
  %lastErr62 = getelementptr inbounds %struct.bzFile, %struct.bzFile* %50, i32 0, i32 5
  store i32 %49, i32* %lastErr62, align 4
  br label %if.end.63

if.end.63:                                        ; preds = %if.then.61, %if.end.59
  store i32 0, i32* %retval
  br label %return

if.end.64:                                        ; preds = %land.lhs.true.54, %if.end.50
  %51 = load i32, i32* %ret, align 4
  %cmp65 = icmp eq i32 %51, 0
  br i1 %cmp65, label %land.lhs.true.66, label %if.end.90

land.lhs.true.66:                                 ; preds = %if.end.64
  %52 = load %struct.bzFile*, %struct.bzFile** %bzf, align 8
  %handle67 = getelementptr inbounds %struct.bzFile, %struct.bzFile* %52, i32 0, i32 0
  %53 = load i32, i32* %handle67, align 4
  %call68 = call zeroext i8 @myfeof(i32 %53)
  %conv = zext i8 %call68 to i32
  %tobool69 = icmp ne i32 %conv, 0
  br i1 %tobool69, label %land.lhs.true.70, label %if.end.90

land.lhs.true.70:                                 ; preds = %land.lhs.true.66
  %54 = load %struct.bzFile*, %struct.bzFile** %bzf, align 8
  %strm71 = getelementptr inbounds %struct.bzFile, %struct.bzFile* %54, i32 0, i32 4
  %avail_in72 = getelementptr inbounds %struct.bz_stream, %struct.bz_stream* %strm71, i32 0, i32 1
  %55 = load i32, i32* %avail_in72, align 4
  %cmp73 = icmp eq i32 %55, 0
  br i1 %cmp73, label %land.lhs.true.75, label %if.end.90

land.lhs.true.75:                                 ; preds = %land.lhs.true.70
  %56 = load %struct.bzFile*, %struct.bzFile** %bzf, align 8
  %strm76 = getelementptr inbounds %struct.bzFile, %struct.bzFile* %56, i32 0, i32 4
  %avail_out77 = getelementptr inbounds %struct.bz_stream, %struct.bz_stream* %strm76, i32 0, i32 5
  %57 = load i32, i32* %avail_out77, align 4
  %cmp78 = icmp ugt i32 %57, 0
  br i1 %cmp78, label %if.then.80, label %if.end.90

if.then.80:                                       ; preds = %land.lhs.true.75
  %58 = load i32*, i32** %bzerror.addr, align 8
  %cmp81 = icmp ne i32* %58, null
  br i1 %cmp81, label %if.then.83, label %if.end.84

if.then.83:                                       ; preds = %if.then.80
  %59 = load i32*, i32** %bzerror.addr, align 8
  store i32 -7, i32* %59, align 4
  br label %if.end.84

if.end.84:                                        ; preds = %if.then.83, %if.then.80
  %60 = load %struct.bzFile*, %struct.bzFile** %bzf, align 8
  %cmp85 = icmp ne %struct.bzFile* %60, null
  br i1 %cmp85, label %if.then.87, label %if.end.89

if.then.87:                                       ; preds = %if.end.84
  %61 = load %struct.bzFile*, %struct.bzFile** %bzf, align 8
  %lastErr88 = getelementptr inbounds %struct.bzFile, %struct.bzFile* %61, i32 0, i32 5
  store i32 -7, i32* %lastErr88, align 4
  br label %if.end.89

if.end.89:                                        ; preds = %if.then.87, %if.end.84
  store i32 0, i32* %retval
  br label %return

if.end.90:                                        ; preds = %land.lhs.true.75, %land.lhs.true.70, %land.lhs.true.66, %if.end.64
  %62 = load i32, i32* %ret, align 4
  %cmp91 = icmp eq i32 %62, 4
  br i1 %cmp91, label %if.then.93, label %if.end.105

if.then.93:                                       ; preds = %if.end.90
  %63 = load i32*, i32** %bzerror.addr, align 8
  %cmp94 = icmp ne i32* %63, null
  br i1 %cmp94, label %if.then.96, label %if.end.97

if.then.96:                                       ; preds = %if.then.93
  %64 = load i32*, i32** %bzerror.addr, align 8
  store i32 4, i32* %64, align 4
  br label %if.end.97

if.end.97:                                        ; preds = %if.then.96, %if.then.93
  %65 = load %struct.bzFile*, %struct.bzFile** %bzf, align 8
  %cmp98 = icmp ne %struct.bzFile* %65, null
  br i1 %cmp98, label %if.then.100, label %if.end.102

if.then.100:                                      ; preds = %if.end.97
  %66 = load %struct.bzFile*, %struct.bzFile** %bzf, align 8
  %lastErr101 = getelementptr inbounds %struct.bzFile, %struct.bzFile* %66, i32 0, i32 5
  store i32 4, i32* %lastErr101, align 4
  br label %if.end.102

if.end.102:                                       ; preds = %if.then.100, %if.end.97
  %67 = load i32, i32* %len.addr, align 4
  %68 = load %struct.bzFile*, %struct.bzFile** %bzf, align 8
  %strm103 = getelementptr inbounds %struct.bzFile, %struct.bzFile* %68, i32 0, i32 4
  %avail_out104 = getelementptr inbounds %struct.bz_stream, %struct.bz_stream* %strm103, i32 0, i32 5
  %69 = load i32, i32* %avail_out104, align 4
  %sub = sub i32 %67, %69
  store i32 %sub, i32* %retval
  br label %return

if.end.105:                                       ; preds = %if.end.90
  %70 = load %struct.bzFile*, %struct.bzFile** %bzf, align 8
  %strm106 = getelementptr inbounds %struct.bzFile, %struct.bzFile* %70, i32 0, i32 4
  %avail_out107 = getelementptr inbounds %struct.bz_stream, %struct.bz_stream* %strm106, i32 0, i32 5
  %71 = load i32, i32* %avail_out107, align 4
  %cmp108 = icmp eq i32 %71, 0
  br i1 %cmp108, label %if.then.110, label %if.end.120

if.then.110:                                      ; preds = %if.end.105
  %72 = load i32*, i32** %bzerror.addr, align 8
  %cmp111 = icmp ne i32* %72, null
  br i1 %cmp111, label %if.then.113, label %if.end.114

if.then.113:                                      ; preds = %if.then.110
  %73 = load i32*, i32** %bzerror.addr, align 8
  store i32 0, i32* %73, align 4
  br label %if.end.114

if.end.114:                                       ; preds = %if.then.113, %if.then.110
  %74 = load %struct.bzFile*, %struct.bzFile** %bzf, align 8
  %cmp115 = icmp ne %struct.bzFile* %74, null
  br i1 %cmp115, label %if.then.117, label %if.end.119

if.then.117:                                      ; preds = %if.end.114
  %75 = load %struct.bzFile*, %struct.bzFile** %bzf, align 8
  %lastErr118 = getelementptr inbounds %struct.bzFile, %struct.bzFile* %75, i32 0, i32 5
  store i32 0, i32* %lastErr118, align 4
  br label %if.end.119

if.end.119:                                       ; preds = %if.then.117, %if.end.114
  %76 = load i32, i32* %len.addr, align 4
  store i32 %76, i32* %retval
  br label %return

if.end.120:                                       ; preds = %if.end.105
  br label %while.body

return:                                           ; preds = %if.end.119, %if.end.102, %if.end.89, %if.end.63, %if.end.34, %if.end.24, %if.end.15
  %77 = load i32, i32* %retval
  ret i32 %77
}

; Function Attrs: nounwind uwtable
define internal zeroext i8 @myfeof(i32 %f) #0 {
entry:
  %retval = alloca i8, align 1
  %f.addr = alloca i32, align 4
  %c = alloca i32, align 4
  store i32 %f, i32* %f.addr, align 4
  %0 = load i32, i32* %f.addr, align 4
  %call = call i32 @spec_getc(i32 %0)
  store i32 %call, i32* %c, align 4
  %1 = load i32, i32* %c, align 4
  %cmp = icmp eq i32 %1, -1
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store i8 1, i8* %retval
  br label %return

if.end:                                           ; preds = %entry
  %2 = load i32, i32* %c, align 4
  %conv = trunc i32 %2 to i8
  %3 = load i32, i32* %f.addr, align 4
  %call1 = call i32 @spec_ungetc(i8 zeroext %conv, i32 %3)
  store i8 0, i8* %retval
  br label %return

return:                                           ; preds = %if.end, %if.then
  %4 = load i8, i8* %retval
  ret i8 %4
}

declare i32 @spec_fread(i8*, i32, i32, i32) #1

; Function Attrs: nounwind uwtable
define void @BZ2_bzReadGetUnused(i32* %bzerror, i8* %b, i8** %unused, i32* %nUnused) #0 {
entry:
  %bzerror.addr = alloca i32*, align 8
  %b.addr = alloca i8*, align 8
  %unused.addr = alloca i8**, align 8
  %nUnused.addr = alloca i32*, align 8
  %bzf = alloca %struct.bzFile*, align 8
  store i32* %bzerror, i32** %bzerror.addr, align 8
  store i8* %b, i8** %b.addr, align 8
  store i8** %unused, i8*** %unused.addr, align 8
  store i32* %nUnused, i32** %nUnused.addr, align 8
  %0 = load i8*, i8** %b.addr, align 8
  %1 = bitcast i8* %0 to %struct.bzFile*
  store %struct.bzFile* %1, %struct.bzFile** %bzf, align 8
  %2 = load %struct.bzFile*, %struct.bzFile** %bzf, align 8
  %cmp = icmp eq %struct.bzFile* %2, null
  br i1 %cmp, label %if.then, label %if.end.6

if.then:                                          ; preds = %entry
  %3 = load i32*, i32** %bzerror.addr, align 8
  %cmp1 = icmp ne i32* %3, null
  br i1 %cmp1, label %if.then.2, label %if.end

if.then.2:                                        ; preds = %if.then
  %4 = load i32*, i32** %bzerror.addr, align 8
  store i32 -2, i32* %4, align 4
  br label %if.end

if.end:                                           ; preds = %if.then.2, %if.then
  %5 = load %struct.bzFile*, %struct.bzFile** %bzf, align 8
  %cmp3 = icmp ne %struct.bzFile* %5, null
  br i1 %cmp3, label %if.then.4, label %if.end.5

if.then.4:                                        ; preds = %if.end
  %6 = load %struct.bzFile*, %struct.bzFile** %bzf, align 8
  %lastErr = getelementptr inbounds %struct.bzFile, %struct.bzFile* %6, i32 0, i32 5
  store i32 -2, i32* %lastErr, align 4
  br label %if.end.5

if.end.5:                                         ; preds = %if.then.4, %if.end
  br label %return

if.end.6:                                         ; preds = %entry
  %7 = load %struct.bzFile*, %struct.bzFile** %bzf, align 8
  %lastErr7 = getelementptr inbounds %struct.bzFile, %struct.bzFile* %7, i32 0, i32 5
  %8 = load i32, i32* %lastErr7, align 4
  %cmp8 = icmp ne i32 %8, 4
  br i1 %cmp8, label %if.then.9, label %if.end.17

if.then.9:                                        ; preds = %if.end.6
  %9 = load i32*, i32** %bzerror.addr, align 8
  %cmp10 = icmp ne i32* %9, null
  br i1 %cmp10, label %if.then.11, label %if.end.12

if.then.11:                                       ; preds = %if.then.9
  %10 = load i32*, i32** %bzerror.addr, align 8
  store i32 -1, i32* %10, align 4
  br label %if.end.12

if.end.12:                                        ; preds = %if.then.11, %if.then.9
  %11 = load %struct.bzFile*, %struct.bzFile** %bzf, align 8
  %cmp13 = icmp ne %struct.bzFile* %11, null
  br i1 %cmp13, label %if.then.14, label %if.end.16

if.then.14:                                       ; preds = %if.end.12
  %12 = load %struct.bzFile*, %struct.bzFile** %bzf, align 8
  %lastErr15 = getelementptr inbounds %struct.bzFile, %struct.bzFile* %12, i32 0, i32 5
  store i32 -1, i32* %lastErr15, align 4
  br label %if.end.16

if.end.16:                                        ; preds = %if.then.14, %if.end.12
  br label %return

if.end.17:                                        ; preds = %if.end.6
  %13 = load i8**, i8*** %unused.addr, align 8
  %cmp18 = icmp eq i8** %13, null
  br i1 %cmp18, label %if.then.20, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.end.17
  %14 = load i32*, i32** %nUnused.addr, align 8
  %cmp19 = icmp eq i32* %14, null
  br i1 %cmp19, label %if.then.20, label %if.end.28

if.then.20:                                       ; preds = %lor.lhs.false, %if.end.17
  %15 = load i32*, i32** %bzerror.addr, align 8
  %cmp21 = icmp ne i32* %15, null
  br i1 %cmp21, label %if.then.22, label %if.end.23

if.then.22:                                       ; preds = %if.then.20
  %16 = load i32*, i32** %bzerror.addr, align 8
  store i32 -2, i32* %16, align 4
  br label %if.end.23

if.end.23:                                        ; preds = %if.then.22, %if.then.20
  %17 = load %struct.bzFile*, %struct.bzFile** %bzf, align 8
  %cmp24 = icmp ne %struct.bzFile* %17, null
  br i1 %cmp24, label %if.then.25, label %if.end.27

if.then.25:                                       ; preds = %if.end.23
  %18 = load %struct.bzFile*, %struct.bzFile** %bzf, align 8
  %lastErr26 = getelementptr inbounds %struct.bzFile, %struct.bzFile* %18, i32 0, i32 5
  store i32 -2, i32* %lastErr26, align 4
  br label %if.end.27

if.end.27:                                        ; preds = %if.then.25, %if.end.23
  br label %return

if.end.28:                                        ; preds = %lor.lhs.false
  %19 = load i32*, i32** %bzerror.addr, align 8
  %cmp29 = icmp ne i32* %19, null
  br i1 %cmp29, label %if.then.30, label %if.end.31

if.then.30:                                       ; preds = %if.end.28
  %20 = load i32*, i32** %bzerror.addr, align 8
  store i32 0, i32* %20, align 4
  br label %if.end.31

if.end.31:                                        ; preds = %if.then.30, %if.end.28
  %21 = load %struct.bzFile*, %struct.bzFile** %bzf, align 8
  %cmp32 = icmp ne %struct.bzFile* %21, null
  br i1 %cmp32, label %if.then.33, label %if.end.35

if.then.33:                                       ; preds = %if.end.31
  %22 = load %struct.bzFile*, %struct.bzFile** %bzf, align 8
  %lastErr34 = getelementptr inbounds %struct.bzFile, %struct.bzFile* %22, i32 0, i32 5
  store i32 0, i32* %lastErr34, align 4
  br label %if.end.35

if.end.35:                                        ; preds = %if.then.33, %if.end.31
  %23 = load %struct.bzFile*, %struct.bzFile** %bzf, align 8
  %strm = getelementptr inbounds %struct.bzFile, %struct.bzFile* %23, i32 0, i32 4
  %avail_in = getelementptr inbounds %struct.bz_stream, %struct.bz_stream* %strm, i32 0, i32 1
  %24 = load i32, i32* %avail_in, align 4
  %25 = load i32*, i32** %nUnused.addr, align 8
  store i32 %24, i32* %25, align 4
  %26 = load %struct.bzFile*, %struct.bzFile** %bzf, align 8
  %strm36 = getelementptr inbounds %struct.bzFile, %struct.bzFile* %26, i32 0, i32 4
  %next_in = getelementptr inbounds %struct.bz_stream, %struct.bz_stream* %strm36, i32 0, i32 0
  %27 = load i8*, i8** %next_in, align 8
  %28 = load i8**, i8*** %unused.addr, align 8
  store i8* %27, i8** %28, align 8
  br label %return

return:                                           ; preds = %if.end.35, %if.end.27, %if.end.16, %if.end.5
  ret void
}

; Function Attrs: nounwind uwtable
define i32 @BZ2_bzBuffToBuffCompress(i8* %dest, i32* %destLen, i8* %source, i32 %sourceLen, i32 %blockSize100k, i32 %verbosity, i32 %workFactor) #0 {
entry:
  %retval = alloca i32, align 4
  %dest.addr = alloca i8*, align 8
  %destLen.addr = alloca i32*, align 8
  %source.addr = alloca i8*, align 8
  %sourceLen.addr = alloca i32, align 4
  %blockSize100k.addr = alloca i32, align 4
  %verbosity.addr = alloca i32, align 4
  %workFactor.addr = alloca i32, align 4
  %strm = alloca %struct.bz_stream, align 8
  %ret = alloca i32, align 4
  store i8* %dest, i8** %dest.addr, align 8
  store i32* %destLen, i32** %destLen.addr, align 8
  store i8* %source, i8** %source.addr, align 8
  store i32 %sourceLen, i32* %sourceLen.addr, align 4
  store i32 %blockSize100k, i32* %blockSize100k.addr, align 4
  store i32 %verbosity, i32* %verbosity.addr, align 4
  store i32 %workFactor, i32* %workFactor.addr, align 4
  %0 = load i8*, i8** %dest.addr, align 8
  %cmp = icmp eq i8* %0, null
  br i1 %cmp, label %if.then, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %entry
  %1 = load i32*, i32** %destLen.addr, align 8
  %cmp1 = icmp eq i32* %1, null
  br i1 %cmp1, label %if.then, label %lor.lhs.false.2

lor.lhs.false.2:                                  ; preds = %lor.lhs.false
  %2 = load i8*, i8** %source.addr, align 8
  %cmp3 = icmp eq i8* %2, null
  br i1 %cmp3, label %if.then, label %lor.lhs.false.4

lor.lhs.false.4:                                  ; preds = %lor.lhs.false.2
  %3 = load i32, i32* %blockSize100k.addr, align 4
  %cmp5 = icmp slt i32 %3, 1
  br i1 %cmp5, label %if.then, label %lor.lhs.false.6

lor.lhs.false.6:                                  ; preds = %lor.lhs.false.4
  %4 = load i32, i32* %blockSize100k.addr, align 4
  %cmp7 = icmp sgt i32 %4, 9
  br i1 %cmp7, label %if.then, label %lor.lhs.false.8

lor.lhs.false.8:                                  ; preds = %lor.lhs.false.6
  %5 = load i32, i32* %verbosity.addr, align 4
  %cmp9 = icmp slt i32 %5, 0
  br i1 %cmp9, label %if.then, label %lor.lhs.false.10

lor.lhs.false.10:                                 ; preds = %lor.lhs.false.8
  %6 = load i32, i32* %verbosity.addr, align 4
  %cmp11 = icmp sgt i32 %6, 4
  br i1 %cmp11, label %if.then, label %lor.lhs.false.12

lor.lhs.false.12:                                 ; preds = %lor.lhs.false.10
  %7 = load i32, i32* %workFactor.addr, align 4
  %cmp13 = icmp slt i32 %7, 0
  br i1 %cmp13, label %if.then, label %lor.lhs.false.14

lor.lhs.false.14:                                 ; preds = %lor.lhs.false.12
  %8 = load i32, i32* %workFactor.addr, align 4
  %cmp15 = icmp sgt i32 %8, 250
  br i1 %cmp15, label %if.then, label %if.end

if.then:                                          ; preds = %lor.lhs.false.14, %lor.lhs.false.12, %lor.lhs.false.10, %lor.lhs.false.8, %lor.lhs.false.6, %lor.lhs.false.4, %lor.lhs.false.2, %lor.lhs.false, %entry
  store i32 -2, i32* %retval
  br label %return

if.end:                                           ; preds = %lor.lhs.false.14
  %9 = load i32, i32* %workFactor.addr, align 4
  %cmp16 = icmp eq i32 %9, 0
  br i1 %cmp16, label %if.then.17, label %if.end.18

if.then.17:                                       ; preds = %if.end
  store i32 30, i32* %workFactor.addr, align 4
  br label %if.end.18

if.end.18:                                        ; preds = %if.then.17, %if.end
  %bzalloc = getelementptr inbounds %struct.bz_stream, %struct.bz_stream* %strm, i32 0, i32 9
  store i8* (i8*, i32, i32)* null, i8* (i8*, i32, i32)** %bzalloc, align 8
  %bzfree = getelementptr inbounds %struct.bz_stream, %struct.bz_stream* %strm, i32 0, i32 10
  store void (i8*, i8*)* null, void (i8*, i8*)** %bzfree, align 8
  %opaque = getelementptr inbounds %struct.bz_stream, %struct.bz_stream* %strm, i32 0, i32 11
  store i8* null, i8** %opaque, align 8
  %10 = load i32, i32* %blockSize100k.addr, align 4
  %11 = load i32, i32* %verbosity.addr, align 4
  %12 = load i32, i32* %workFactor.addr, align 4
  %call = call i32 @BZ2_bzCompressInit(%struct.bz_stream* %strm, i32 %10, i32 %11, i32 %12)
  store i32 %call, i32* %ret, align 4
  %13 = load i32, i32* %ret, align 4
  %cmp19 = icmp ne i32 %13, 0
  br i1 %cmp19, label %if.then.20, label %if.end.21

if.then.20:                                       ; preds = %if.end.18
  %14 = load i32, i32* %ret, align 4
  store i32 %14, i32* %retval
  br label %return

if.end.21:                                        ; preds = %if.end.18
  %15 = load i8*, i8** %source.addr, align 8
  %next_in = getelementptr inbounds %struct.bz_stream, %struct.bz_stream* %strm, i32 0, i32 0
  store i8* %15, i8** %next_in, align 8
  %16 = load i8*, i8** %dest.addr, align 8
  %next_out = getelementptr inbounds %struct.bz_stream, %struct.bz_stream* %strm, i32 0, i32 4
  store i8* %16, i8** %next_out, align 8
  %17 = load i32, i32* %sourceLen.addr, align 4
  %avail_in = getelementptr inbounds %struct.bz_stream, %struct.bz_stream* %strm, i32 0, i32 1
  store i32 %17, i32* %avail_in, align 4
  %18 = load i32*, i32** %destLen.addr, align 8
  %19 = load i32, i32* %18, align 4
  %avail_out = getelementptr inbounds %struct.bz_stream, %struct.bz_stream* %strm, i32 0, i32 5
  store i32 %19, i32* %avail_out, align 4
  %call22 = call i32 @BZ2_bzCompress(%struct.bz_stream* %strm, i32 2)
  store i32 %call22, i32* %ret, align 4
  %20 = load i32, i32* %ret, align 4
  %cmp23 = icmp eq i32 %20, 3
  br i1 %cmp23, label %if.then.24, label %if.end.25

if.then.24:                                       ; preds = %if.end.21
  br label %output_overflow

if.end.25:                                        ; preds = %if.end.21
  %21 = load i32, i32* %ret, align 4
  %cmp26 = icmp ne i32 %21, 4
  br i1 %cmp26, label %if.then.27, label %if.end.28

if.then.27:                                       ; preds = %if.end.25
  br label %errhandler

if.end.28:                                        ; preds = %if.end.25
  %avail_out29 = getelementptr inbounds %struct.bz_stream, %struct.bz_stream* %strm, i32 0, i32 5
  %22 = load i32, i32* %avail_out29, align 4
  %23 = load i32*, i32** %destLen.addr, align 8
  %24 = load i32, i32* %23, align 4
  %sub = sub i32 %24, %22
  store i32 %sub, i32* %23, align 4
  %call30 = call i32 @BZ2_bzCompressEnd(%struct.bz_stream* %strm)
  store i32 0, i32* %retval
  br label %return

output_overflow:                                  ; preds = %if.then.24
  %call31 = call i32 @BZ2_bzCompressEnd(%struct.bz_stream* %strm)
  store i32 -8, i32* %retval
  br label %return

errhandler:                                       ; preds = %if.then.27
  %call32 = call i32 @BZ2_bzCompressEnd(%struct.bz_stream* %strm)
  %25 = load i32, i32* %ret, align 4
  store i32 %25, i32* %retval
  br label %return

return:                                           ; preds = %errhandler, %output_overflow, %if.end.28, %if.then.20, %if.then
  %26 = load i32, i32* %retval
  ret i32 %26
}

; Function Attrs: nounwind uwtable
define i32 @BZ2_bzBuffToBuffDecompress(i8* %dest, i32* %destLen, i8* %source, i32 %sourceLen, i32 %small, i32 %verbosity) #0 {
entry:
  %retval = alloca i32, align 4
  %dest.addr = alloca i8*, align 8
  %destLen.addr = alloca i32*, align 8
  %source.addr = alloca i8*, align 8
  %sourceLen.addr = alloca i32, align 4
  %small.addr = alloca i32, align 4
  %verbosity.addr = alloca i32, align 4
  %strm = alloca %struct.bz_stream, align 8
  %ret = alloca i32, align 4
  store i8* %dest, i8** %dest.addr, align 8
  store i32* %destLen, i32** %destLen.addr, align 8
  store i8* %source, i8** %source.addr, align 8
  store i32 %sourceLen, i32* %sourceLen.addr, align 4
  store i32 %small, i32* %small.addr, align 4
  store i32 %verbosity, i32* %verbosity.addr, align 4
  %0 = load i8*, i8** %dest.addr, align 8
  %cmp = icmp eq i8* %0, null
  br i1 %cmp, label %if.then, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %entry
  %1 = load i32*, i32** %destLen.addr, align 8
  %cmp1 = icmp eq i32* %1, null
  br i1 %cmp1, label %if.then, label %lor.lhs.false.2

lor.lhs.false.2:                                  ; preds = %lor.lhs.false
  %2 = load i8*, i8** %source.addr, align 8
  %cmp3 = icmp eq i8* %2, null
  br i1 %cmp3, label %if.then, label %lor.lhs.false.4

lor.lhs.false.4:                                  ; preds = %lor.lhs.false.2
  %3 = load i32, i32* %small.addr, align 4
  %cmp5 = icmp ne i32 %3, 0
  br i1 %cmp5, label %land.lhs.true, label %lor.lhs.false.7

land.lhs.true:                                    ; preds = %lor.lhs.false.4
  %4 = load i32, i32* %small.addr, align 4
  %cmp6 = icmp ne i32 %4, 1
  br i1 %cmp6, label %if.then, label %lor.lhs.false.7

lor.lhs.false.7:                                  ; preds = %land.lhs.true, %lor.lhs.false.4
  %5 = load i32, i32* %verbosity.addr, align 4
  %cmp8 = icmp slt i32 %5, 0
  br i1 %cmp8, label %if.then, label %lor.lhs.false.9

lor.lhs.false.9:                                  ; preds = %lor.lhs.false.7
  %6 = load i32, i32* %verbosity.addr, align 4
  %cmp10 = icmp sgt i32 %6, 4
  br i1 %cmp10, label %if.then, label %if.end

if.then:                                          ; preds = %lor.lhs.false.9, %lor.lhs.false.7, %land.lhs.true, %lor.lhs.false.2, %lor.lhs.false, %entry
  store i32 -2, i32* %retval
  br label %return

if.end:                                           ; preds = %lor.lhs.false.9
  %bzalloc = getelementptr inbounds %struct.bz_stream, %struct.bz_stream* %strm, i32 0, i32 9
  store i8* (i8*, i32, i32)* null, i8* (i8*, i32, i32)** %bzalloc, align 8
  %bzfree = getelementptr inbounds %struct.bz_stream, %struct.bz_stream* %strm, i32 0, i32 10
  store void (i8*, i8*)* null, void (i8*, i8*)** %bzfree, align 8
  %opaque = getelementptr inbounds %struct.bz_stream, %struct.bz_stream* %strm, i32 0, i32 11
  store i8* null, i8** %opaque, align 8
  %7 = load i32, i32* %verbosity.addr, align 4
  %8 = load i32, i32* %small.addr, align 4
  %call = call i32 @BZ2_bzDecompressInit(%struct.bz_stream* %strm, i32 %7, i32 %8)
  store i32 %call, i32* %ret, align 4
  %9 = load i32, i32* %ret, align 4
  %cmp11 = icmp ne i32 %9, 0
  br i1 %cmp11, label %if.then.12, label %if.end.13

if.then.12:                                       ; preds = %if.end
  %10 = load i32, i32* %ret, align 4
  store i32 %10, i32* %retval
  br label %return

if.end.13:                                        ; preds = %if.end
  %11 = load i8*, i8** %source.addr, align 8
  %next_in = getelementptr inbounds %struct.bz_stream, %struct.bz_stream* %strm, i32 0, i32 0
  store i8* %11, i8** %next_in, align 8
  %12 = load i8*, i8** %dest.addr, align 8
  %next_out = getelementptr inbounds %struct.bz_stream, %struct.bz_stream* %strm, i32 0, i32 4
  store i8* %12, i8** %next_out, align 8
  %13 = load i32, i32* %sourceLen.addr, align 4
  %avail_in = getelementptr inbounds %struct.bz_stream, %struct.bz_stream* %strm, i32 0, i32 1
  store i32 %13, i32* %avail_in, align 4
  %14 = load i32*, i32** %destLen.addr, align 8
  %15 = load i32, i32* %14, align 4
  %avail_out = getelementptr inbounds %struct.bz_stream, %struct.bz_stream* %strm, i32 0, i32 5
  store i32 %15, i32* %avail_out, align 4
  %call14 = call i32 @BZ2_bzDecompress(%struct.bz_stream* %strm)
  store i32 %call14, i32* %ret, align 4
  %16 = load i32, i32* %ret, align 4
  %cmp15 = icmp eq i32 %16, 0
  br i1 %cmp15, label %if.then.16, label %if.end.17

if.then.16:                                       ; preds = %if.end.13
  br label %output_overflow_or_eof

if.end.17:                                        ; preds = %if.end.13
  %17 = load i32, i32* %ret, align 4
  %cmp18 = icmp ne i32 %17, 4
  br i1 %cmp18, label %if.then.19, label %if.end.20

if.then.19:                                       ; preds = %if.end.17
  br label %errhandler

if.end.20:                                        ; preds = %if.end.17
  %avail_out21 = getelementptr inbounds %struct.bz_stream, %struct.bz_stream* %strm, i32 0, i32 5
  %18 = load i32, i32* %avail_out21, align 4
  %19 = load i32*, i32** %destLen.addr, align 8
  %20 = load i32, i32* %19, align 4
  %sub = sub i32 %20, %18
  store i32 %sub, i32* %19, align 4
  %call22 = call i32 @BZ2_bzDecompressEnd(%struct.bz_stream* %strm)
  store i32 0, i32* %retval
  br label %return

output_overflow_or_eof:                           ; preds = %if.then.16
  %avail_out23 = getelementptr inbounds %struct.bz_stream, %struct.bz_stream* %strm, i32 0, i32 5
  %21 = load i32, i32* %avail_out23, align 4
  %cmp24 = icmp ugt i32 %21, 0
  br i1 %cmp24, label %if.then.25, label %if.else

if.then.25:                                       ; preds = %output_overflow_or_eof
  %call26 = call i32 @BZ2_bzDecompressEnd(%struct.bz_stream* %strm)
  store i32 -7, i32* %retval
  br label %return

if.else:                                          ; preds = %output_overflow_or_eof
  %call27 = call i32 @BZ2_bzDecompressEnd(%struct.bz_stream* %strm)
  store i32 -8, i32* %retval
  br label %return

errhandler:                                       ; preds = %if.then.19
  %call28 = call i32 @BZ2_bzDecompressEnd(%struct.bz_stream* %strm)
  %22 = load i32, i32* %ret, align 4
  store i32 %22, i32* %retval
  br label %return

return:                                           ; preds = %errhandler, %if.else, %if.then.25, %if.end.20, %if.then.12, %if.then
  %23 = load i32, i32* %retval
  ret i32 %23
}

; Function Attrs: nounwind uwtable
define i8* @BZ2_bzopen(i8* %path, i8* %mode) #0 {
entry:
  %path.addr = alloca i8*, align 8
  %mode.addr = alloca i8*, align 8
  store i8* %path, i8** %path.addr, align 8
  store i8* %mode, i8** %mode.addr, align 8
  %0 = load i8*, i8** %path.addr, align 8
  %1 = load i8*, i8** %mode.addr, align 8
  %call = call i8* @bzopen_or_bzdopen(i8* %0, i32 -1, i8* %1, i32 0)
  ret i8* %call
}

; Function Attrs: nounwind uwtable
define internal i8* @bzopen_or_bzdopen(i8* %path, i32 %fd, i8* %mode, i32 %open_mode) #0 {
entry:
  %retval = alloca i8*, align 8
  %path.addr = alloca i8*, align 8
  %fd.addr = alloca i32, align 4
  %mode.addr = alloca i8*, align 8
  %open_mode.addr = alloca i32, align 4
  %bzerr = alloca i32, align 4
  %unused = alloca [5000 x i8], align 16
  %blockSize100k = alloca i32, align 4
  %writing = alloca i32, align 4
  %mode2 = alloca [10 x i8], align 1
  %fp = alloca i32, align 4
  %bzfp = alloca i8*, align 8
  %verbosity = alloca i32, align 4
  %workFactor = alloca i32, align 4
  %smallMode = alloca i32, align 4
  %nUnused = alloca i32, align 4
  store i8* %path, i8** %path.addr, align 8
  store i32 %fd, i32* %fd.addr, align 4
  store i8* %mode, i8** %mode.addr, align 8
  store i32 %open_mode, i32* %open_mode.addr, align 4
  store i32 9, i32* %blockSize100k, align 4
  store i32 0, i32* %writing, align 4
  %0 = bitcast [10 x i8]* %mode2 to i8*
  call void @llvm.memset.p0i8.i64(i8* %0, i8 0, i64 10, i32 1, i1 false)
  store i32 0, i32* %fp, align 4
  store i8* null, i8** %bzfp, align 8
  store i32 0, i32* %verbosity, align 4
  store i32 30, i32* %workFactor, align 4
  store i32 0, i32* %smallMode, align 4
  store i32 0, i32* %nUnused, align 4
  %1 = load i8*, i8** %mode.addr, align 8
  %cmp = icmp eq i8* %1, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store i8* null, i8** %retval
  br label %return

if.end:                                           ; preds = %entry
  br label %while.cond

while.cond:                                       ; preds = %sw.epilog, %if.end
  %2 = load i8*, i8** %mode.addr, align 8
  %3 = load i8, i8* %2, align 1
  %tobool = icmp ne i8 %3, 0
  br i1 %tobool, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %4 = load i8*, i8** %mode.addr, align 8
  %5 = load i8, i8* %4, align 1
  %conv = sext i8 %5 to i32
  switch i32 %conv, label %sw.default [
    i32 114, label %sw.bb
    i32 119, label %sw.bb.1
    i32 115, label %sw.bb.2
  ]

sw.bb:                                            ; preds = %while.body
  store i32 0, i32* %writing, align 4
  br label %sw.epilog

sw.bb.1:                                          ; preds = %while.body
  store i32 1, i32* %writing, align 4
  br label %sw.epilog

sw.bb.2:                                          ; preds = %while.body
  store i32 1, i32* %smallMode, align 4
  br label %sw.epilog

sw.default:                                       ; preds = %while.body
  %6 = load i8*, i8** %mode.addr, align 8
  %7 = load i8, i8* %6, align 1
  %conv3 = sext i8 %7 to i32
  %idxprom = sext i32 %conv3 to i64
  %call = call i16** @__ctype_b_loc() #8
  %8 = load i16*, i16** %call, align 8
  %arrayidx = getelementptr inbounds i16, i16* %8, i64 %idxprom
  %9 = load i16, i16* %arrayidx, align 2
  %conv4 = zext i16 %9 to i32
  %and = and i32 %conv4, 2048
  %tobool5 = icmp ne i32 %and, 0
  br i1 %tobool5, label %if.then.6, label %if.end.8

if.then.6:                                        ; preds = %sw.default
  %10 = load i8*, i8** %mode.addr, align 8
  %11 = load i8, i8* %10, align 1
  %conv7 = sext i8 %11 to i32
  %sub = sub nsw i32 %conv7, 48
  store i32 %sub, i32* %blockSize100k, align 4
  br label %if.end.8

if.end.8:                                         ; preds = %if.then.6, %sw.default
  br label %sw.epilog

sw.epilog:                                        ; preds = %if.end.8, %sw.bb.2, %sw.bb.1, %sw.bb
  %12 = load i8*, i8** %mode.addr, align 8
  %incdec.ptr = getelementptr inbounds i8, i8* %12, i32 1
  store i8* %incdec.ptr, i8** %mode.addr, align 8
  br label %while.cond

while.end:                                        ; preds = %while.cond
  %arraydecay = getelementptr inbounds [10 x i8], [10 x i8]* %mode2, i32 0, i32 0
  %13 = load i32, i32* %writing, align 4
  %tobool9 = icmp ne i32 %13, 0
  %cond = select i1 %tobool9, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.6, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.7, i32 0, i32 0)
  %call10 = call i8* @strcat(i8* %arraydecay, i8* %cond) #4
  %arraydecay11 = getelementptr inbounds [10 x i8], [10 x i8]* %mode2, i32 0, i32 0
  %call12 = call i8* @strcat(i8* %arraydecay11, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.8, i32 0, i32 0)) #4
  %14 = load i32, i32* %open_mode.addr, align 4
  %cmp13 = icmp eq i32 %14, 0
  br i1 %cmp13, label %if.then.15, label %if.else.25

if.then.15:                                       ; preds = %while.end
  %15 = load i8*, i8** %path.addr, align 8
  %cmp16 = icmp eq i8* %15, null
  br i1 %cmp16, label %if.then.21, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.then.15
  %16 = load i8*, i8** %path.addr, align 8
  %call18 = call i32 @strcmp(i8* %16, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.9, i32 0, i32 0)) #9
  %cmp19 = icmp eq i32 %call18, 0
  br i1 %cmp19, label %if.then.21, label %if.else

if.then.21:                                       ; preds = %lor.lhs.false, %if.then.15
  %17 = load i32, i32* %writing, align 4
  %tobool22 = icmp ne i32 %17, 0
  %cond23 = select i1 %tobool22, i32 1, i32 0
  store i32 %cond23, i32* %fp, align 4
  br label %if.end.24

if.else:                                          ; preds = %lor.lhs.false
  store i32 0, i32* %fp, align 4
  br label %if.end.24

if.end.24:                                        ; preds = %if.else, %if.then.21
  br label %if.end.26

if.else.25:                                       ; preds = %while.end
  store i32 0, i32* %fp, align 4
  br label %if.end.26

if.end.26:                                        ; preds = %if.else.25, %if.end.24
  %18 = load i32, i32* %fp, align 4
  %cmp27 = icmp eq i32 %18, 0
  br i1 %cmp27, label %if.then.29, label %if.end.30

if.then.29:                                       ; preds = %if.end.26
  store i8* null, i8** %retval
  br label %return

if.end.30:                                        ; preds = %if.end.26
  %19 = load i32, i32* %writing, align 4
  %tobool31 = icmp ne i32 %19, 0
  br i1 %tobool31, label %if.then.32, label %if.else.42

if.then.32:                                       ; preds = %if.end.30
  %20 = load i32, i32* %blockSize100k, align 4
  %cmp33 = icmp slt i32 %20, 1
  br i1 %cmp33, label %if.then.35, label %if.end.36

if.then.35:                                       ; preds = %if.then.32
  store i32 1, i32* %blockSize100k, align 4
  br label %if.end.36

if.end.36:                                        ; preds = %if.then.35, %if.then.32
  %21 = load i32, i32* %blockSize100k, align 4
  %cmp37 = icmp sgt i32 %21, 9
  br i1 %cmp37, label %if.then.39, label %if.end.40

if.then.39:                                       ; preds = %if.end.36
  store i32 9, i32* %blockSize100k, align 4
  br label %if.end.40

if.end.40:                                        ; preds = %if.then.39, %if.end.36
  %22 = load i32, i32* %fp, align 4
  %23 = load i32, i32* %blockSize100k, align 4
  %24 = load i32, i32* %verbosity, align 4
  %25 = load i32, i32* %workFactor, align 4
  %call41 = call i8* @BZ2_bzWriteOpen(i32* %bzerr, i32 %22, i32 %23, i32 %24, i32 %25)
  store i8* %call41, i8** %bzfp, align 8
  br label %if.end.45

if.else.42:                                       ; preds = %if.end.30
  %26 = load i32, i32* %fp, align 4
  %27 = load i32, i32* %verbosity, align 4
  %28 = load i32, i32* %smallMode, align 4
  %arraydecay43 = getelementptr inbounds [5000 x i8], [5000 x i8]* %unused, i32 0, i32 0
  %29 = load i32, i32* %nUnused, align 4
  %call44 = call i8* @BZ2_bzReadOpen(i32* %bzerr, i32 %26, i32 %27, i32 %28, i8* %arraydecay43, i32 %29)
  store i8* %call44, i8** %bzfp, align 8
  br label %if.end.45

if.end.45:                                        ; preds = %if.else.42, %if.end.40
  %30 = load i8*, i8** %bzfp, align 8
  %cmp46 = icmp eq i8* %30, null
  br i1 %cmp46, label %if.then.48, label %if.end.55

if.then.48:                                       ; preds = %if.end.45
  %31 = load i32, i32* %fp, align 4
  %cmp49 = icmp ne i32 %31, 0
  br i1 %cmp49, label %land.lhs.true, label %if.end.54

land.lhs.true:                                    ; preds = %if.then.48
  %32 = load i32, i32* %fp, align 4
  %cmp51 = icmp ne i32 %32, 1
  br i1 %cmp51, label %if.then.53, label %if.end.54

if.then.53:                                       ; preds = %land.lhs.true
  br label %if.end.54

if.end.54:                                        ; preds = %if.then.53, %land.lhs.true, %if.then.48
  store i8* null, i8** %retval
  br label %return

if.end.55:                                        ; preds = %if.end.45
  %33 = load i8*, i8** %bzfp, align 8
  store i8* %33, i8** %retval
  br label %return

return:                                           ; preds = %if.end.55, %if.end.54, %if.then.29, %if.then
  %34 = load i8*, i8** %retval
  ret i8* %34
}

; Function Attrs: nounwind uwtable
define i8* @BZ2_bzdopen(i32 %fd, i8* %mode) #0 {
entry:
  %fd.addr = alloca i32, align 4
  %mode.addr = alloca i8*, align 8
  store i32 %fd, i32* %fd.addr, align 4
  store i8* %mode, i8** %mode.addr, align 8
  %0 = load i32, i32* %fd.addr, align 4
  %1 = load i8*, i8** %mode.addr, align 8
  %call = call i8* @bzopen_or_bzdopen(i8* null, i32 %0, i8* %1, i32 1)
  ret i8* %call
}

; Function Attrs: nounwind uwtable
define i32 @BZ2_bzread(i8* %b, i8* %buf, i32 %len) #0 {
entry:
  %retval = alloca i32, align 4
  %b.addr = alloca i8*, align 8
  %buf.addr = alloca i8*, align 8
  %len.addr = alloca i32, align 4
  %bzerr = alloca i32, align 4
  %nread = alloca i32, align 4
  store i8* %b, i8** %b.addr, align 8
  store i8* %buf, i8** %buf.addr, align 8
  store i32 %len, i32* %len.addr, align 4
  %0 = load i8*, i8** %b.addr, align 8
  %1 = bitcast i8* %0 to %struct.bzFile*
  %lastErr = getelementptr inbounds %struct.bzFile, %struct.bzFile* %1, i32 0, i32 5
  %2 = load i32, i32* %lastErr, align 4
  %cmp = icmp eq i32 %2, 4
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store i32 0, i32* %retval
  br label %return

if.end:                                           ; preds = %entry
  %3 = load i8*, i8** %b.addr, align 8
  %4 = load i8*, i8** %buf.addr, align 8
  %5 = load i32, i32* %len.addr, align 4
  %call = call i32 @BZ2_bzRead(i32* %bzerr, i8* %3, i8* %4, i32 %5)
  store i32 %call, i32* %nread, align 4
  %6 = load i32, i32* %bzerr, align 4
  %cmp1 = icmp eq i32 %6, 0
  br i1 %cmp1, label %if.then.3, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.end
  %7 = load i32, i32* %bzerr, align 4
  %cmp2 = icmp eq i32 %7, 4
  br i1 %cmp2, label %if.then.3, label %if.else

if.then.3:                                        ; preds = %lor.lhs.false, %if.end
  %8 = load i32, i32* %nread, align 4
  store i32 %8, i32* %retval
  br label %return

if.else:                                          ; preds = %lor.lhs.false
  store i32 -1, i32* %retval
  br label %return

return:                                           ; preds = %if.else, %if.then.3, %if.then
  %9 = load i32, i32* %retval
  ret i32 %9
}

; Function Attrs: nounwind uwtable
define i32 @BZ2_bzwrite(i8* %b, i8* %buf, i32 %len) #0 {
entry:
  %retval = alloca i32, align 4
  %b.addr = alloca i8*, align 8
  %buf.addr = alloca i8*, align 8
  %len.addr = alloca i32, align 4
  %bzerr = alloca i32, align 4
  store i8* %b, i8** %b.addr, align 8
  store i8* %buf, i8** %buf.addr, align 8
  store i32 %len, i32* %len.addr, align 4
  %0 = load i8*, i8** %b.addr, align 8
  %1 = load i8*, i8** %buf.addr, align 8
  %2 = load i32, i32* %len.addr, align 4
  call void @BZ2_bzWrite(i32* %bzerr, i8* %0, i8* %1, i32 %2)
  %3 = load i32, i32* %bzerr, align 4
  %cmp = icmp eq i32 %3, 0
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %4 = load i32, i32* %len.addr, align 4
  store i32 %4, i32* %retval
  br label %return

if.else:                                          ; preds = %entry
  store i32 -1, i32* %retval
  br label %return

return:                                           ; preds = %if.else, %if.then
  %5 = load i32, i32* %retval
  ret i32 %5
}

; Function Attrs: nounwind uwtable
define i32 @BZ2_bzflush(i8* %b) #0 {
entry:
  %b.addr = alloca i8*, align 8
  store i8* %b, i8** %b.addr, align 8
  ret i32 0
}

; Function Attrs: nounwind uwtable
define void @BZ2_bzclose(i8* %b) #0 {
entry:
  %b.addr = alloca i8*, align 8
  %bzerr = alloca i32, align 4
  %fp = alloca i32, align 4
  store i8* %b, i8** %b.addr, align 8
  %0 = load i8*, i8** %b.addr, align 8
  %1 = bitcast i8* %0 to %struct.bzFile*
  %handle = getelementptr inbounds %struct.bzFile, %struct.bzFile* %1, i32 0, i32 0
  %2 = load i32, i32* %handle, align 4
  store i32 %2, i32* %fp, align 4
  %3 = load i8*, i8** %b.addr, align 8
  %cmp = icmp eq i8* %3, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  br label %if.end.9

if.end:                                           ; preds = %entry
  %4 = load i8*, i8** %b.addr, align 8
  %5 = bitcast i8* %4 to %struct.bzFile*
  %writing = getelementptr inbounds %struct.bzFile, %struct.bzFile* %5, i32 0, i32 3
  %6 = load i8, i8* %writing, align 1
  %tobool = icmp ne i8 %6, 0
  br i1 %tobool, label %if.then.1, label %if.else

if.then.1:                                        ; preds = %if.end
  %7 = load i8*, i8** %b.addr, align 8
  call void @BZ2_bzWriteClose(i32* %bzerr, i8* %7, i32 0, i32* null, i32* null)
  %8 = load i32, i32* %bzerr, align 4
  %cmp2 = icmp ne i32 %8, 0
  br i1 %cmp2, label %if.then.3, label %if.end.4

if.then.3:                                        ; preds = %if.then.1
  %9 = load i8*, i8** %b.addr, align 8
  call void @BZ2_bzWriteClose(i32* null, i8* %9, i32 1, i32* null, i32* null)
  br label %if.end.4

if.end.4:                                         ; preds = %if.then.3, %if.then.1
  br label %if.end.5

if.else:                                          ; preds = %if.end
  %10 = load i8*, i8** %b.addr, align 8
  call void @BZ2_bzReadClose(i32* %bzerr, i8* %10)
  br label %if.end.5

if.end.5:                                         ; preds = %if.else, %if.end.4
  %11 = load i32, i32* %fp, align 4
  %cmp6 = icmp ne i32 %11, 0
  br i1 %cmp6, label %land.lhs.true, label %if.end.9

land.lhs.true:                                    ; preds = %if.end.5
  %12 = load i32, i32* %fp, align 4
  %cmp7 = icmp ne i32 %12, 1
  br i1 %cmp7, label %if.then.8, label %if.end.9

if.then.8:                                        ; preds = %land.lhs.true
  br label %if.end.9

if.end.9:                                         ; preds = %if.then, %if.then.8, %land.lhs.true, %if.end.5
  ret void
}

; Function Attrs: nounwind uwtable
define i8* @BZ2_bzerror(i8* %b, i32* %errnum) #0 {
entry:
  %b.addr = alloca i8*, align 8
  %errnum.addr = alloca i32*, align 8
  %err = alloca i32, align 4
  store i8* %b, i8** %b.addr, align 8
  store i32* %errnum, i32** %errnum.addr, align 8
  %0 = load i8*, i8** %b.addr, align 8
  %1 = bitcast i8* %0 to %struct.bzFile*
  %lastErr = getelementptr inbounds %struct.bzFile, %struct.bzFile* %1, i32 0, i32 5
  %2 = load i32, i32* %lastErr, align 4
  store i32 %2, i32* %err, align 4
  %3 = load i32, i32* %err, align 4
  %cmp = icmp sgt i32 %3, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store i32 0, i32* %err, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %4 = load i32, i32* %err, align 4
  %5 = load i32*, i32** %errnum.addr, align 8
  store i32 %4, i32* %5, align 4
  %6 = load i32, i32* %err, align 4
  %mul = mul nsw i32 %6, -1
  %idxprom = sext i32 %mul to i64
  %arrayidx = getelementptr inbounds [16 x i8*], [16 x i8*]* @bzerrorstrings, i32 0, i64 %idxprom
  %7 = load i8*, i8** %arrayidx, align 8
  ret i8* %7
}

; Function Attrs: nounwind uwtable
define internal zeroext i8 @copy_output_until_stop(%struct.EState* %s) #0 {
entry:
  %s.addr = alloca %struct.EState*, align 8
  %progress_out = alloca i8, align 1
  store %struct.EState* %s, %struct.EState** %s.addr, align 8
  store i8 0, i8* %progress_out, align 1
  br label %while.body

while.body:                                       ; preds = %entry, %if.end.19
  %0 = load %struct.EState*, %struct.EState** %s.addr, align 8
  %strm = getelementptr inbounds %struct.EState, %struct.EState* %0, i32 0, i32 0
  %1 = load %struct.bz_stream*, %struct.bz_stream** %strm, align 8
  %avail_out = getelementptr inbounds %struct.bz_stream, %struct.bz_stream* %1, i32 0, i32 5
  %2 = load i32, i32* %avail_out, align 4
  %cmp = icmp eq i32 %2, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %while.body
  br label %while.end

if.end:                                           ; preds = %while.body
  %3 = load %struct.EState*, %struct.EState** %s.addr, align 8
  %state_out_pos = getelementptr inbounds %struct.EState, %struct.EState* %3, i32 0, i32 20
  %4 = load i32, i32* %state_out_pos, align 4
  %5 = load %struct.EState*, %struct.EState** %s.addr, align 8
  %numZ = getelementptr inbounds %struct.EState, %struct.EState* %5, i32 0, i32 19
  %6 = load i32, i32* %numZ, align 4
  %cmp1 = icmp sge i32 %4, %6
  br i1 %cmp1, label %if.then.2, label %if.end.3

if.then.2:                                        ; preds = %if.end
  br label %while.end

if.end.3:                                         ; preds = %if.end
  store i8 1, i8* %progress_out, align 1
  %7 = load %struct.EState*, %struct.EState** %s.addr, align 8
  %state_out_pos4 = getelementptr inbounds %struct.EState, %struct.EState* %7, i32 0, i32 20
  %8 = load i32, i32* %state_out_pos4, align 4
  %idxprom = sext i32 %8 to i64
  %9 = load %struct.EState*, %struct.EState** %s.addr, align 8
  %zbits = getelementptr inbounds %struct.EState, %struct.EState* %9, i32 0, i32 11
  %10 = load i8*, i8** %zbits, align 8
  %arrayidx = getelementptr inbounds i8, i8* %10, i64 %idxprom
  %11 = load i8, i8* %arrayidx, align 1
  %12 = load %struct.EState*, %struct.EState** %s.addr, align 8
  %strm5 = getelementptr inbounds %struct.EState, %struct.EState* %12, i32 0, i32 0
  %13 = load %struct.bz_stream*, %struct.bz_stream** %strm5, align 8
  %next_out = getelementptr inbounds %struct.bz_stream, %struct.bz_stream* %13, i32 0, i32 4
  %14 = load i8*, i8** %next_out, align 8
  store i8 %11, i8* %14, align 1
  %15 = load %struct.EState*, %struct.EState** %s.addr, align 8
  %state_out_pos6 = getelementptr inbounds %struct.EState, %struct.EState* %15, i32 0, i32 20
  %16 = load i32, i32* %state_out_pos6, align 4
  %inc = add nsw i32 %16, 1
  store i32 %inc, i32* %state_out_pos6, align 4
  %17 = load %struct.EState*, %struct.EState** %s.addr, align 8
  %strm7 = getelementptr inbounds %struct.EState, %struct.EState* %17, i32 0, i32 0
  %18 = load %struct.bz_stream*, %struct.bz_stream** %strm7, align 8
  %avail_out8 = getelementptr inbounds %struct.bz_stream, %struct.bz_stream* %18, i32 0, i32 5
  %19 = load i32, i32* %avail_out8, align 4
  %dec = add i32 %19, -1
  store i32 %dec, i32* %avail_out8, align 4
  %20 = load %struct.EState*, %struct.EState** %s.addr, align 8
  %strm9 = getelementptr inbounds %struct.EState, %struct.EState* %20, i32 0, i32 0
  %21 = load %struct.bz_stream*, %struct.bz_stream** %strm9, align 8
  %next_out10 = getelementptr inbounds %struct.bz_stream, %struct.bz_stream* %21, i32 0, i32 4
  %22 = load i8*, i8** %next_out10, align 8
  %incdec.ptr = getelementptr inbounds i8, i8* %22, i32 1
  store i8* %incdec.ptr, i8** %next_out10, align 8
  %23 = load %struct.EState*, %struct.EState** %s.addr, align 8
  %strm11 = getelementptr inbounds %struct.EState, %struct.EState* %23, i32 0, i32 0
  %24 = load %struct.bz_stream*, %struct.bz_stream** %strm11, align 8
  %total_out_lo32 = getelementptr inbounds %struct.bz_stream, %struct.bz_stream* %24, i32 0, i32 6
  %25 = load i32, i32* %total_out_lo32, align 4
  %inc12 = add i32 %25, 1
  store i32 %inc12, i32* %total_out_lo32, align 4
  %26 = load %struct.EState*, %struct.EState** %s.addr, align 8
  %strm13 = getelementptr inbounds %struct.EState, %struct.EState* %26, i32 0, i32 0
  %27 = load %struct.bz_stream*, %struct.bz_stream** %strm13, align 8
  %total_out_lo3214 = getelementptr inbounds %struct.bz_stream, %struct.bz_stream* %27, i32 0, i32 6
  %28 = load i32, i32* %total_out_lo3214, align 4
  %cmp15 = icmp eq i32 %28, 0
  br i1 %cmp15, label %if.then.16, label %if.end.19

if.then.16:                                       ; preds = %if.end.3
  %29 = load %struct.EState*, %struct.EState** %s.addr, align 8
  %strm17 = getelementptr inbounds %struct.EState, %struct.EState* %29, i32 0, i32 0
  %30 = load %struct.bz_stream*, %struct.bz_stream** %strm17, align 8
  %total_out_hi32 = getelementptr inbounds %struct.bz_stream, %struct.bz_stream* %30, i32 0, i32 7
  %31 = load i32, i32* %total_out_hi32, align 4
  %inc18 = add i32 %31, 1
  store i32 %inc18, i32* %total_out_hi32, align 4
  br label %if.end.19

if.end.19:                                        ; preds = %if.then.16, %if.end.3
  br label %while.body

while.end:                                        ; preds = %if.then.2, %if.then
  %32 = load i8, i8* %progress_out, align 1
  ret i8 %32
}

; Function Attrs: nounwind uwtable
define internal zeroext i8 @copy_input_until_stop(%struct.EState* %s) #0 {
entry:
  %s.addr = alloca %struct.EState*, align 8
  %progress_in = alloca i8, align 1
  %zchh = alloca i32, align 4
  %ch = alloca i8, align 1
  %zchh77 = alloca i32, align 4
  %ch89 = alloca i8, align 1
  store %struct.EState* %s, %struct.EState** %s.addr, align 8
  store i8 0, i8* %progress_in, align 1
  %0 = load %struct.EState*, %struct.EState** %s.addr, align 8
  %mode = getelementptr inbounds %struct.EState, %struct.EState* %0, i32 0, i32 1
  %1 = load i32, i32* %mode, align 4
  %cmp = icmp eq i32 %1, 2
  br i1 %cmp, label %if.then, label %if.else.59

if.then:                                          ; preds = %entry
  br label %while.body

while.body:                                       ; preds = %if.then, %if.end.58
  %2 = load %struct.EState*, %struct.EState** %s.addr, align 8
  %nblock = getelementptr inbounds %struct.EState, %struct.EState* %2, i32 0, i32 17
  %3 = load i32, i32* %nblock, align 4
  %4 = load %struct.EState*, %struct.EState** %s.addr, align 8
  %nblockMAX = getelementptr inbounds %struct.EState, %struct.EState* %4, i32 0, i32 18
  %5 = load i32, i32* %nblockMAX, align 4
  %cmp1 = icmp sge i32 %3, %5
  br i1 %cmp1, label %if.then.2, label %if.end

if.then.2:                                        ; preds = %while.body
  br label %while.end

if.end:                                           ; preds = %while.body
  %6 = load %struct.EState*, %struct.EState** %s.addr, align 8
  %strm = getelementptr inbounds %struct.EState, %struct.EState* %6, i32 0, i32 0
  %7 = load %struct.bz_stream*, %struct.bz_stream** %strm, align 8
  %avail_in = getelementptr inbounds %struct.bz_stream, %struct.bz_stream* %7, i32 0, i32 1
  %8 = load i32, i32* %avail_in, align 4
  %cmp3 = icmp eq i32 %8, 0
  br i1 %cmp3, label %if.then.4, label %if.end.5

if.then.4:                                        ; preds = %if.end
  br label %while.end

if.end.5:                                         ; preds = %if.end
  store i8 1, i8* %progress_in, align 1
  %9 = load %struct.EState*, %struct.EState** %s.addr, align 8
  %strm6 = getelementptr inbounds %struct.EState, %struct.EState* %9, i32 0, i32 0
  %10 = load %struct.bz_stream*, %struct.bz_stream** %strm6, align 8
  %next_in = getelementptr inbounds %struct.bz_stream, %struct.bz_stream* %10, i32 0, i32 0
  %11 = load i8*, i8** %next_in, align 8
  %12 = load i8, i8* %11, align 1
  %conv = zext i8 %12 to i32
  store i32 %conv, i32* %zchh, align 4
  %13 = load i32, i32* %zchh, align 4
  %14 = load %struct.EState*, %struct.EState** %s.addr, align 8
  %state_in_ch = getelementptr inbounds %struct.EState, %struct.EState* %14, i32 0, i32 13
  %15 = load i32, i32* %state_in_ch, align 4
  %cmp7 = icmp ne i32 %13, %15
  br i1 %cmp7, label %land.lhs.true, label %if.else

land.lhs.true:                                    ; preds = %if.end.5
  %16 = load %struct.EState*, %struct.EState** %s.addr, align 8
  %state_in_len = getelementptr inbounds %struct.EState, %struct.EState* %16, i32 0, i32 14
  %17 = load i32, i32* %state_in_len, align 4
  %cmp9 = icmp eq i32 %17, 1
  br i1 %cmp9, label %if.then.11, label %if.else

if.then.11:                                       ; preds = %land.lhs.true
  %18 = load %struct.EState*, %struct.EState** %s.addr, align 8
  %state_in_ch12 = getelementptr inbounds %struct.EState, %struct.EState* %18, i32 0, i32 13
  %19 = load i32, i32* %state_in_ch12, align 4
  %conv13 = trunc i32 %19 to i8
  store i8 %conv13, i8* %ch, align 1
  %20 = load %struct.EState*, %struct.EState** %s.addr, align 8
  %blockCRC = getelementptr inbounds %struct.EState, %struct.EState* %20, i32 0, i32 26
  %21 = load i32, i32* %blockCRC, align 4
  %shl = shl i32 %21, 8
  %22 = load %struct.EState*, %struct.EState** %s.addr, align 8
  %blockCRC14 = getelementptr inbounds %struct.EState, %struct.EState* %22, i32 0, i32 26
  %23 = load i32, i32* %blockCRC14, align 4
  %shr = lshr i32 %23, 24
  %24 = load i8, i8* %ch, align 1
  %conv15 = zext i8 %24 to i32
  %xor = xor i32 %shr, %conv15
  %idxprom = zext i32 %xor to i64
  %arrayidx = getelementptr inbounds [256 x i32], [256 x i32]* @BZ2_crc32Table, i32 0, i64 %idxprom
  %25 = load i32, i32* %arrayidx, align 4
  %xor16 = xor i32 %shl, %25
  %26 = load %struct.EState*, %struct.EState** %s.addr, align 8
  %blockCRC17 = getelementptr inbounds %struct.EState, %struct.EState* %26, i32 0, i32 26
  store i32 %xor16, i32* %blockCRC17, align 4
  %27 = load %struct.EState*, %struct.EState** %s.addr, align 8
  %state_in_ch18 = getelementptr inbounds %struct.EState, %struct.EState* %27, i32 0, i32 13
  %28 = load i32, i32* %state_in_ch18, align 4
  %idxprom19 = zext i32 %28 to i64
  %29 = load %struct.EState*, %struct.EState** %s.addr, align 8
  %inUse = getelementptr inbounds %struct.EState, %struct.EState* %29, i32 0, i32 22
  %arrayidx20 = getelementptr inbounds [256 x i8], [256 x i8]* %inUse, i32 0, i64 %idxprom19
  store i8 1, i8* %arrayidx20, align 1
  %30 = load i8, i8* %ch, align 1
  %31 = load %struct.EState*, %struct.EState** %s.addr, align 8
  %nblock21 = getelementptr inbounds %struct.EState, %struct.EState* %31, i32 0, i32 17
  %32 = load i32, i32* %nblock21, align 4
  %idxprom22 = sext i32 %32 to i64
  %33 = load %struct.EState*, %struct.EState** %s.addr, align 8
  %block = getelementptr inbounds %struct.EState, %struct.EState* %33, i32 0, i32 9
  %34 = load i8*, i8** %block, align 8
  %arrayidx23 = getelementptr inbounds i8, i8* %34, i64 %idxprom22
  store i8 %30, i8* %arrayidx23, align 1
  %35 = load %struct.EState*, %struct.EState** %s.addr, align 8
  %nblock24 = getelementptr inbounds %struct.EState, %struct.EState* %35, i32 0, i32 17
  %36 = load i32, i32* %nblock24, align 4
  %inc = add nsw i32 %36, 1
  store i32 %inc, i32* %nblock24, align 4
  %37 = load i32, i32* %zchh, align 4
  %38 = load %struct.EState*, %struct.EState** %s.addr, align 8
  %state_in_ch25 = getelementptr inbounds %struct.EState, %struct.EState* %38, i32 0, i32 13
  store i32 %37, i32* %state_in_ch25, align 4
  br label %if.end.44

if.else:                                          ; preds = %land.lhs.true, %if.end.5
  %39 = load i32, i32* %zchh, align 4
  %40 = load %struct.EState*, %struct.EState** %s.addr, align 8
  %state_in_ch26 = getelementptr inbounds %struct.EState, %struct.EState* %40, i32 0, i32 13
  %41 = load i32, i32* %state_in_ch26, align 4
  %cmp27 = icmp ne i32 %39, %41
  br i1 %cmp27, label %if.then.32, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.else
  %42 = load %struct.EState*, %struct.EState** %s.addr, align 8
  %state_in_len29 = getelementptr inbounds %struct.EState, %struct.EState* %42, i32 0, i32 14
  %43 = load i32, i32* %state_in_len29, align 4
  %cmp30 = icmp eq i32 %43, 255
  br i1 %cmp30, label %if.then.32, label %if.else.40

if.then.32:                                       ; preds = %lor.lhs.false, %if.else
  %44 = load %struct.EState*, %struct.EState** %s.addr, align 8
  %state_in_ch33 = getelementptr inbounds %struct.EState, %struct.EState* %44, i32 0, i32 13
  %45 = load i32, i32* %state_in_ch33, align 4
  %cmp34 = icmp ult i32 %45, 256
  br i1 %cmp34, label %if.then.36, label %if.end.37

if.then.36:                                       ; preds = %if.then.32
  %46 = load %struct.EState*, %struct.EState** %s.addr, align 8
  call void @add_pair_to_block(%struct.EState* %46)
  br label %if.end.37

if.end.37:                                        ; preds = %if.then.36, %if.then.32
  %47 = load i32, i32* %zchh, align 4
  %48 = load %struct.EState*, %struct.EState** %s.addr, align 8
  %state_in_ch38 = getelementptr inbounds %struct.EState, %struct.EState* %48, i32 0, i32 13
  store i32 %47, i32* %state_in_ch38, align 4
  %49 = load %struct.EState*, %struct.EState** %s.addr, align 8
  %state_in_len39 = getelementptr inbounds %struct.EState, %struct.EState* %49, i32 0, i32 14
  store i32 1, i32* %state_in_len39, align 4
  br label %if.end.43

if.else.40:                                       ; preds = %lor.lhs.false
  %50 = load %struct.EState*, %struct.EState** %s.addr, align 8
  %state_in_len41 = getelementptr inbounds %struct.EState, %struct.EState* %50, i32 0, i32 14
  %51 = load i32, i32* %state_in_len41, align 4
  %inc42 = add nsw i32 %51, 1
  store i32 %inc42, i32* %state_in_len41, align 4
  br label %if.end.43

if.end.43:                                        ; preds = %if.else.40, %if.end.37
  br label %if.end.44

if.end.44:                                        ; preds = %if.end.43, %if.then.11
  %52 = load %struct.EState*, %struct.EState** %s.addr, align 8
  %strm45 = getelementptr inbounds %struct.EState, %struct.EState* %52, i32 0, i32 0
  %53 = load %struct.bz_stream*, %struct.bz_stream** %strm45, align 8
  %next_in46 = getelementptr inbounds %struct.bz_stream, %struct.bz_stream* %53, i32 0, i32 0
  %54 = load i8*, i8** %next_in46, align 8
  %incdec.ptr = getelementptr inbounds i8, i8* %54, i32 1
  store i8* %incdec.ptr, i8** %next_in46, align 8
  %55 = load %struct.EState*, %struct.EState** %s.addr, align 8
  %strm47 = getelementptr inbounds %struct.EState, %struct.EState* %55, i32 0, i32 0
  %56 = load %struct.bz_stream*, %struct.bz_stream** %strm47, align 8
  %avail_in48 = getelementptr inbounds %struct.bz_stream, %struct.bz_stream* %56, i32 0, i32 1
  %57 = load i32, i32* %avail_in48, align 4
  %dec = add i32 %57, -1
  store i32 %dec, i32* %avail_in48, align 4
  %58 = load %struct.EState*, %struct.EState** %s.addr, align 8
  %strm49 = getelementptr inbounds %struct.EState, %struct.EState* %58, i32 0, i32 0
  %59 = load %struct.bz_stream*, %struct.bz_stream** %strm49, align 8
  %total_in_lo32 = getelementptr inbounds %struct.bz_stream, %struct.bz_stream* %59, i32 0, i32 2
  %60 = load i32, i32* %total_in_lo32, align 4
  %inc50 = add i32 %60, 1
  store i32 %inc50, i32* %total_in_lo32, align 4
  %61 = load %struct.EState*, %struct.EState** %s.addr, align 8
  %strm51 = getelementptr inbounds %struct.EState, %struct.EState* %61, i32 0, i32 0
  %62 = load %struct.bz_stream*, %struct.bz_stream** %strm51, align 8
  %total_in_lo3252 = getelementptr inbounds %struct.bz_stream, %struct.bz_stream* %62, i32 0, i32 2
  %63 = load i32, i32* %total_in_lo3252, align 4
  %cmp53 = icmp eq i32 %63, 0
  br i1 %cmp53, label %if.then.55, label %if.end.58

if.then.55:                                       ; preds = %if.end.44
  %64 = load %struct.EState*, %struct.EState** %s.addr, align 8
  %strm56 = getelementptr inbounds %struct.EState, %struct.EState* %64, i32 0, i32 0
  %65 = load %struct.bz_stream*, %struct.bz_stream** %strm56, align 8
  %total_in_hi32 = getelementptr inbounds %struct.bz_stream, %struct.bz_stream* %65, i32 0, i32 3
  %66 = load i32, i32* %total_in_hi32, align 4
  %inc57 = add i32 %66, 1
  store i32 %inc57, i32* %total_in_hi32, align 4
  br label %if.end.58

if.end.58:                                        ; preds = %if.then.55, %if.end.44
  br label %while.body

while.end:                                        ; preds = %if.then.4, %if.then.2
  br label %if.end.155

if.else.59:                                       ; preds = %entry
  br label %while.body.60

while.body.60:                                    ; preds = %if.else.59, %if.end.151
  %67 = load %struct.EState*, %struct.EState** %s.addr, align 8
  %nblock61 = getelementptr inbounds %struct.EState, %struct.EState* %67, i32 0, i32 17
  %68 = load i32, i32* %nblock61, align 4
  %69 = load %struct.EState*, %struct.EState** %s.addr, align 8
  %nblockMAX62 = getelementptr inbounds %struct.EState, %struct.EState* %69, i32 0, i32 18
  %70 = load i32, i32* %nblockMAX62, align 4
  %cmp63 = icmp sge i32 %68, %70
  br i1 %cmp63, label %if.then.65, label %if.end.66

if.then.65:                                       ; preds = %while.body.60
  br label %while.end.154

if.end.66:                                        ; preds = %while.body.60
  %71 = load %struct.EState*, %struct.EState** %s.addr, align 8
  %strm67 = getelementptr inbounds %struct.EState, %struct.EState* %71, i32 0, i32 0
  %72 = load %struct.bz_stream*, %struct.bz_stream** %strm67, align 8
  %avail_in68 = getelementptr inbounds %struct.bz_stream, %struct.bz_stream* %72, i32 0, i32 1
  %73 = load i32, i32* %avail_in68, align 4
  %cmp69 = icmp eq i32 %73, 0
  br i1 %cmp69, label %if.then.71, label %if.end.72

if.then.71:                                       ; preds = %if.end.66
  br label %while.end.154

if.end.72:                                        ; preds = %if.end.66
  %74 = load %struct.EState*, %struct.EState** %s.addr, align 8
  %avail_in_expect = getelementptr inbounds %struct.EState, %struct.EState* %74, i32 0, i32 3
  %75 = load i32, i32* %avail_in_expect, align 4
  %cmp73 = icmp eq i32 %75, 0
  br i1 %cmp73, label %if.then.75, label %if.end.76

if.then.75:                                       ; preds = %if.end.72
  br label %while.end.154

if.end.76:                                        ; preds = %if.end.72
  store i8 1, i8* %progress_in, align 1
  %76 = load %struct.EState*, %struct.EState** %s.addr, align 8
  %strm78 = getelementptr inbounds %struct.EState, %struct.EState* %76, i32 0, i32 0
  %77 = load %struct.bz_stream*, %struct.bz_stream** %strm78, align 8
  %next_in79 = getelementptr inbounds %struct.bz_stream, %struct.bz_stream* %77, i32 0, i32 0
  %78 = load i8*, i8** %next_in79, align 8
  %79 = load i8, i8* %78, align 1
  %conv80 = zext i8 %79 to i32
  store i32 %conv80, i32* %zchh77, align 4
  %80 = load i32, i32* %zchh77, align 4
  %81 = load %struct.EState*, %struct.EState** %s.addr, align 8
  %state_in_ch81 = getelementptr inbounds %struct.EState, %struct.EState* %81, i32 0, i32 13
  %82 = load i32, i32* %state_in_ch81, align 4
  %cmp82 = icmp ne i32 %80, %82
  br i1 %cmp82, label %land.lhs.true.84, label %if.else.113

land.lhs.true.84:                                 ; preds = %if.end.76
  %83 = load %struct.EState*, %struct.EState** %s.addr, align 8
  %state_in_len85 = getelementptr inbounds %struct.EState, %struct.EState* %83, i32 0, i32 14
  %84 = load i32, i32* %state_in_len85, align 4
  %cmp86 = icmp eq i32 %84, 1
  br i1 %cmp86, label %if.then.88, label %if.else.113

if.then.88:                                       ; preds = %land.lhs.true.84
  %85 = load %struct.EState*, %struct.EState** %s.addr, align 8
  %state_in_ch90 = getelementptr inbounds %struct.EState, %struct.EState* %85, i32 0, i32 13
  %86 = load i32, i32* %state_in_ch90, align 4
  %conv91 = trunc i32 %86 to i8
  store i8 %conv91, i8* %ch89, align 1
  %87 = load %struct.EState*, %struct.EState** %s.addr, align 8
  %blockCRC92 = getelementptr inbounds %struct.EState, %struct.EState* %87, i32 0, i32 26
  %88 = load i32, i32* %blockCRC92, align 4
  %shl93 = shl i32 %88, 8
  %89 = load %struct.EState*, %struct.EState** %s.addr, align 8
  %blockCRC94 = getelementptr inbounds %struct.EState, %struct.EState* %89, i32 0, i32 26
  %90 = load i32, i32* %blockCRC94, align 4
  %shr95 = lshr i32 %90, 24
  %91 = load i8, i8* %ch89, align 1
  %conv96 = zext i8 %91 to i32
  %xor97 = xor i32 %shr95, %conv96
  %idxprom98 = zext i32 %xor97 to i64
  %arrayidx99 = getelementptr inbounds [256 x i32], [256 x i32]* @BZ2_crc32Table, i32 0, i64 %idxprom98
  %92 = load i32, i32* %arrayidx99, align 4
  %xor100 = xor i32 %shl93, %92
  %93 = load %struct.EState*, %struct.EState** %s.addr, align 8
  %blockCRC101 = getelementptr inbounds %struct.EState, %struct.EState* %93, i32 0, i32 26
  store i32 %xor100, i32* %blockCRC101, align 4
  %94 = load %struct.EState*, %struct.EState** %s.addr, align 8
  %state_in_ch102 = getelementptr inbounds %struct.EState, %struct.EState* %94, i32 0, i32 13
  %95 = load i32, i32* %state_in_ch102, align 4
  %idxprom103 = zext i32 %95 to i64
  %96 = load %struct.EState*, %struct.EState** %s.addr, align 8
  %inUse104 = getelementptr inbounds %struct.EState, %struct.EState* %96, i32 0, i32 22
  %arrayidx105 = getelementptr inbounds [256 x i8], [256 x i8]* %inUse104, i32 0, i64 %idxprom103
  store i8 1, i8* %arrayidx105, align 1
  %97 = load i8, i8* %ch89, align 1
  %98 = load %struct.EState*, %struct.EState** %s.addr, align 8
  %nblock106 = getelementptr inbounds %struct.EState, %struct.EState* %98, i32 0, i32 17
  %99 = load i32, i32* %nblock106, align 4
  %idxprom107 = sext i32 %99 to i64
  %100 = load %struct.EState*, %struct.EState** %s.addr, align 8
  %block108 = getelementptr inbounds %struct.EState, %struct.EState* %100, i32 0, i32 9
  %101 = load i8*, i8** %block108, align 8
  %arrayidx109 = getelementptr inbounds i8, i8* %101, i64 %idxprom107
  store i8 %97, i8* %arrayidx109, align 1
  %102 = load %struct.EState*, %struct.EState** %s.addr, align 8
  %nblock110 = getelementptr inbounds %struct.EState, %struct.EState* %102, i32 0, i32 17
  %103 = load i32, i32* %nblock110, align 4
  %inc111 = add nsw i32 %103, 1
  store i32 %inc111, i32* %nblock110, align 4
  %104 = load i32, i32* %zchh77, align 4
  %105 = load %struct.EState*, %struct.EState** %s.addr, align 8
  %state_in_ch112 = getelementptr inbounds %struct.EState, %struct.EState* %105, i32 0, i32 13
  store i32 %104, i32* %state_in_ch112, align 4
  br label %if.end.133

if.else.113:                                      ; preds = %land.lhs.true.84, %if.end.76
  %106 = load i32, i32* %zchh77, align 4
  %107 = load %struct.EState*, %struct.EState** %s.addr, align 8
  %state_in_ch114 = getelementptr inbounds %struct.EState, %struct.EState* %107, i32 0, i32 13
  %108 = load i32, i32* %state_in_ch114, align 4
  %cmp115 = icmp ne i32 %106, %108
  br i1 %cmp115, label %if.then.121, label %lor.lhs.false.117

lor.lhs.false.117:                                ; preds = %if.else.113
  %109 = load %struct.EState*, %struct.EState** %s.addr, align 8
  %state_in_len118 = getelementptr inbounds %struct.EState, %struct.EState* %109, i32 0, i32 14
  %110 = load i32, i32* %state_in_len118, align 4
  %cmp119 = icmp eq i32 %110, 255
  br i1 %cmp119, label %if.then.121, label %if.else.129

if.then.121:                                      ; preds = %lor.lhs.false.117, %if.else.113
  %111 = load %struct.EState*, %struct.EState** %s.addr, align 8
  %state_in_ch122 = getelementptr inbounds %struct.EState, %struct.EState* %111, i32 0, i32 13
  %112 = load i32, i32* %state_in_ch122, align 4
  %cmp123 = icmp ult i32 %112, 256
  br i1 %cmp123, label %if.then.125, label %if.end.126

if.then.125:                                      ; preds = %if.then.121
  %113 = load %struct.EState*, %struct.EState** %s.addr, align 8
  call void @add_pair_to_block(%struct.EState* %113)
  br label %if.end.126

if.end.126:                                       ; preds = %if.then.125, %if.then.121
  %114 = load i32, i32* %zchh77, align 4
  %115 = load %struct.EState*, %struct.EState** %s.addr, align 8
  %state_in_ch127 = getelementptr inbounds %struct.EState, %struct.EState* %115, i32 0, i32 13
  store i32 %114, i32* %state_in_ch127, align 4
  %116 = load %struct.EState*, %struct.EState** %s.addr, align 8
  %state_in_len128 = getelementptr inbounds %struct.EState, %struct.EState* %116, i32 0, i32 14
  store i32 1, i32* %state_in_len128, align 4
  br label %if.end.132

if.else.129:                                      ; preds = %lor.lhs.false.117
  %117 = load %struct.EState*, %struct.EState** %s.addr, align 8
  %state_in_len130 = getelementptr inbounds %struct.EState, %struct.EState* %117, i32 0, i32 14
  %118 = load i32, i32* %state_in_len130, align 4
  %inc131 = add nsw i32 %118, 1
  store i32 %inc131, i32* %state_in_len130, align 4
  br label %if.end.132

if.end.132:                                       ; preds = %if.else.129, %if.end.126
  br label %if.end.133

if.end.133:                                       ; preds = %if.end.132, %if.then.88
  %119 = load %struct.EState*, %struct.EState** %s.addr, align 8
  %strm134 = getelementptr inbounds %struct.EState, %struct.EState* %119, i32 0, i32 0
  %120 = load %struct.bz_stream*, %struct.bz_stream** %strm134, align 8
  %next_in135 = getelementptr inbounds %struct.bz_stream, %struct.bz_stream* %120, i32 0, i32 0
  %121 = load i8*, i8** %next_in135, align 8
  %incdec.ptr136 = getelementptr inbounds i8, i8* %121, i32 1
  store i8* %incdec.ptr136, i8** %next_in135, align 8
  %122 = load %struct.EState*, %struct.EState** %s.addr, align 8
  %strm137 = getelementptr inbounds %struct.EState, %struct.EState* %122, i32 0, i32 0
  %123 = load %struct.bz_stream*, %struct.bz_stream** %strm137, align 8
  %avail_in138 = getelementptr inbounds %struct.bz_stream, %struct.bz_stream* %123, i32 0, i32 1
  %124 = load i32, i32* %avail_in138, align 4
  %dec139 = add i32 %124, -1
  store i32 %dec139, i32* %avail_in138, align 4
  %125 = load %struct.EState*, %struct.EState** %s.addr, align 8
  %strm140 = getelementptr inbounds %struct.EState, %struct.EState* %125, i32 0, i32 0
  %126 = load %struct.bz_stream*, %struct.bz_stream** %strm140, align 8
  %total_in_lo32141 = getelementptr inbounds %struct.bz_stream, %struct.bz_stream* %126, i32 0, i32 2
  %127 = load i32, i32* %total_in_lo32141, align 4
  %inc142 = add i32 %127, 1
  store i32 %inc142, i32* %total_in_lo32141, align 4
  %128 = load %struct.EState*, %struct.EState** %s.addr, align 8
  %strm143 = getelementptr inbounds %struct.EState, %struct.EState* %128, i32 0, i32 0
  %129 = load %struct.bz_stream*, %struct.bz_stream** %strm143, align 8
  %total_in_lo32144 = getelementptr inbounds %struct.bz_stream, %struct.bz_stream* %129, i32 0, i32 2
  %130 = load i32, i32* %total_in_lo32144, align 4
  %cmp145 = icmp eq i32 %130, 0
  br i1 %cmp145, label %if.then.147, label %if.end.151

if.then.147:                                      ; preds = %if.end.133
  %131 = load %struct.EState*, %struct.EState** %s.addr, align 8
  %strm148 = getelementptr inbounds %struct.EState, %struct.EState* %131, i32 0, i32 0
  %132 = load %struct.bz_stream*, %struct.bz_stream** %strm148, align 8
  %total_in_hi32149 = getelementptr inbounds %struct.bz_stream, %struct.bz_stream* %132, i32 0, i32 3
  %133 = load i32, i32* %total_in_hi32149, align 4
  %inc150 = add i32 %133, 1
  store i32 %inc150, i32* %total_in_hi32149, align 4
  br label %if.end.151

if.end.151:                                       ; preds = %if.then.147, %if.end.133
  %134 = load %struct.EState*, %struct.EState** %s.addr, align 8
  %avail_in_expect152 = getelementptr inbounds %struct.EState, %struct.EState* %134, i32 0, i32 3
  %135 = load i32, i32* %avail_in_expect152, align 4
  %dec153 = add i32 %135, -1
  store i32 %dec153, i32* %avail_in_expect152, align 4
  br label %while.body.60

while.end.154:                                    ; preds = %if.then.75, %if.then.71, %if.then.65
  br label %if.end.155

if.end.155:                                       ; preds = %while.end.154, %while.end
  %136 = load i8, i8* %progress_in, align 1
  ret i8 %136
}

; Function Attrs: nounwind uwtable
define internal void @flush_RL(%struct.EState* %s) #0 {
entry:
  %s.addr = alloca %struct.EState*, align 8
  store %struct.EState* %s, %struct.EState** %s.addr, align 8
  %0 = load %struct.EState*, %struct.EState** %s.addr, align 8
  %state_in_ch = getelementptr inbounds %struct.EState, %struct.EState* %0, i32 0, i32 13
  %1 = load i32, i32* %state_in_ch, align 4
  %cmp = icmp ult i32 %1, 256
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %2 = load %struct.EState*, %struct.EState** %s.addr, align 8
  call void @add_pair_to_block(%struct.EState* %2)
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %3 = load %struct.EState*, %struct.EState** %s.addr, align 8
  call void @init_RL(%struct.EState* %3)
  ret void
}

declare void @BZ2_compressBlock(%struct.EState*, i8 zeroext) #1

; Function Attrs: nounwind uwtable
define internal void @add_pair_to_block(%struct.EState* %s) #0 {
entry:
  %s.addr = alloca %struct.EState*, align 8
  %i = alloca i32, align 4
  %ch = alloca i8, align 1
  store %struct.EState* %s, %struct.EState** %s.addr, align 8
  %0 = load %struct.EState*, %struct.EState** %s.addr, align 8
  %state_in_ch = getelementptr inbounds %struct.EState, %struct.EState* %0, i32 0, i32 13
  %1 = load i32, i32* %state_in_ch, align 4
  %conv = trunc i32 %1 to i8
  store i8 %conv, i8* %ch, align 1
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %2 = load i32, i32* %i, align 4
  %3 = load %struct.EState*, %struct.EState** %s.addr, align 8
  %state_in_len = getelementptr inbounds %struct.EState, %struct.EState* %3, i32 0, i32 14
  %4 = load i32, i32* %state_in_len, align 4
  %cmp = icmp slt i32 %2, %4
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %5 = load %struct.EState*, %struct.EState** %s.addr, align 8
  %blockCRC = getelementptr inbounds %struct.EState, %struct.EState* %5, i32 0, i32 26
  %6 = load i32, i32* %blockCRC, align 4
  %shl = shl i32 %6, 8
  %7 = load %struct.EState*, %struct.EState** %s.addr, align 8
  %blockCRC2 = getelementptr inbounds %struct.EState, %struct.EState* %7, i32 0, i32 26
  %8 = load i32, i32* %blockCRC2, align 4
  %shr = lshr i32 %8, 24
  %9 = load i8, i8* %ch, align 1
  %conv3 = zext i8 %9 to i32
  %xor = xor i32 %shr, %conv3
  %idxprom = zext i32 %xor to i64
  %arrayidx = getelementptr inbounds [256 x i32], [256 x i32]* @BZ2_crc32Table, i32 0, i64 %idxprom
  %10 = load i32, i32* %arrayidx, align 4
  %xor4 = xor i32 %shl, %10
  %11 = load %struct.EState*, %struct.EState** %s.addr, align 8
  %blockCRC5 = getelementptr inbounds %struct.EState, %struct.EState* %11, i32 0, i32 26
  store i32 %xor4, i32* %blockCRC5, align 4
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %12 = load i32, i32* %i, align 4
  %inc = add nsw i32 %12, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %13 = load %struct.EState*, %struct.EState** %s.addr, align 8
  %state_in_ch6 = getelementptr inbounds %struct.EState, %struct.EState* %13, i32 0, i32 13
  %14 = load i32, i32* %state_in_ch6, align 4
  %idxprom7 = zext i32 %14 to i64
  %15 = load %struct.EState*, %struct.EState** %s.addr, align 8
  %inUse = getelementptr inbounds %struct.EState, %struct.EState* %15, i32 0, i32 22
  %arrayidx8 = getelementptr inbounds [256 x i8], [256 x i8]* %inUse, i32 0, i64 %idxprom7
  store i8 1, i8* %arrayidx8, align 1
  %16 = load %struct.EState*, %struct.EState** %s.addr, align 8
  %state_in_len9 = getelementptr inbounds %struct.EState, %struct.EState* %16, i32 0, i32 14
  %17 = load i32, i32* %state_in_len9, align 4
  switch i32 %17, label %sw.default [
    i32 1, label %sw.bb
    i32 2, label %sw.bb.14
    i32 3, label %sw.bb.27
  ]

sw.bb:                                            ; preds = %for.end
  %18 = load i8, i8* %ch, align 1
  %19 = load %struct.EState*, %struct.EState** %s.addr, align 8
  %nblock = getelementptr inbounds %struct.EState, %struct.EState* %19, i32 0, i32 17
  %20 = load i32, i32* %nblock, align 4
  %idxprom10 = sext i32 %20 to i64
  %21 = load %struct.EState*, %struct.EState** %s.addr, align 8
  %block = getelementptr inbounds %struct.EState, %struct.EState* %21, i32 0, i32 9
  %22 = load i8*, i8** %block, align 8
  %arrayidx11 = getelementptr inbounds i8, i8* %22, i64 %idxprom10
  store i8 %18, i8* %arrayidx11, align 1
  %23 = load %struct.EState*, %struct.EState** %s.addr, align 8
  %nblock12 = getelementptr inbounds %struct.EState, %struct.EState* %23, i32 0, i32 17
  %24 = load i32, i32* %nblock12, align 4
  %inc13 = add nsw i32 %24, 1
  store i32 %inc13, i32* %nblock12, align 4
  br label %sw.epilog

sw.bb.14:                                         ; preds = %for.end
  %25 = load i8, i8* %ch, align 1
  %26 = load %struct.EState*, %struct.EState** %s.addr, align 8
  %nblock15 = getelementptr inbounds %struct.EState, %struct.EState* %26, i32 0, i32 17
  %27 = load i32, i32* %nblock15, align 4
  %idxprom16 = sext i32 %27 to i64
  %28 = load %struct.EState*, %struct.EState** %s.addr, align 8
  %block17 = getelementptr inbounds %struct.EState, %struct.EState* %28, i32 0, i32 9
  %29 = load i8*, i8** %block17, align 8
  %arrayidx18 = getelementptr inbounds i8, i8* %29, i64 %idxprom16
  store i8 %25, i8* %arrayidx18, align 1
  %30 = load %struct.EState*, %struct.EState** %s.addr, align 8
  %nblock19 = getelementptr inbounds %struct.EState, %struct.EState* %30, i32 0, i32 17
  %31 = load i32, i32* %nblock19, align 4
  %inc20 = add nsw i32 %31, 1
  store i32 %inc20, i32* %nblock19, align 4
  %32 = load i8, i8* %ch, align 1
  %33 = load %struct.EState*, %struct.EState** %s.addr, align 8
  %nblock21 = getelementptr inbounds %struct.EState, %struct.EState* %33, i32 0, i32 17
  %34 = load i32, i32* %nblock21, align 4
  %idxprom22 = sext i32 %34 to i64
  %35 = load %struct.EState*, %struct.EState** %s.addr, align 8
  %block23 = getelementptr inbounds %struct.EState, %struct.EState* %35, i32 0, i32 9
  %36 = load i8*, i8** %block23, align 8
  %arrayidx24 = getelementptr inbounds i8, i8* %36, i64 %idxprom22
  store i8 %32, i8* %arrayidx24, align 1
  %37 = load %struct.EState*, %struct.EState** %s.addr, align 8
  %nblock25 = getelementptr inbounds %struct.EState, %struct.EState* %37, i32 0, i32 17
  %38 = load i32, i32* %nblock25, align 4
  %inc26 = add nsw i32 %38, 1
  store i32 %inc26, i32* %nblock25, align 4
  br label %sw.epilog

sw.bb.27:                                         ; preds = %for.end
  %39 = load i8, i8* %ch, align 1
  %40 = load %struct.EState*, %struct.EState** %s.addr, align 8
  %nblock28 = getelementptr inbounds %struct.EState, %struct.EState* %40, i32 0, i32 17
  %41 = load i32, i32* %nblock28, align 4
  %idxprom29 = sext i32 %41 to i64
  %42 = load %struct.EState*, %struct.EState** %s.addr, align 8
  %block30 = getelementptr inbounds %struct.EState, %struct.EState* %42, i32 0, i32 9
  %43 = load i8*, i8** %block30, align 8
  %arrayidx31 = getelementptr inbounds i8, i8* %43, i64 %idxprom29
  store i8 %39, i8* %arrayidx31, align 1
  %44 = load %struct.EState*, %struct.EState** %s.addr, align 8
  %nblock32 = getelementptr inbounds %struct.EState, %struct.EState* %44, i32 0, i32 17
  %45 = load i32, i32* %nblock32, align 4
  %inc33 = add nsw i32 %45, 1
  store i32 %inc33, i32* %nblock32, align 4
  %46 = load i8, i8* %ch, align 1
  %47 = load %struct.EState*, %struct.EState** %s.addr, align 8
  %nblock34 = getelementptr inbounds %struct.EState, %struct.EState* %47, i32 0, i32 17
  %48 = load i32, i32* %nblock34, align 4
  %idxprom35 = sext i32 %48 to i64
  %49 = load %struct.EState*, %struct.EState** %s.addr, align 8
  %block36 = getelementptr inbounds %struct.EState, %struct.EState* %49, i32 0, i32 9
  %50 = load i8*, i8** %block36, align 8
  %arrayidx37 = getelementptr inbounds i8, i8* %50, i64 %idxprom35
  store i8 %46, i8* %arrayidx37, align 1
  %51 = load %struct.EState*, %struct.EState** %s.addr, align 8
  %nblock38 = getelementptr inbounds %struct.EState, %struct.EState* %51, i32 0, i32 17
  %52 = load i32, i32* %nblock38, align 4
  %inc39 = add nsw i32 %52, 1
  store i32 %inc39, i32* %nblock38, align 4
  %53 = load i8, i8* %ch, align 1
  %54 = load %struct.EState*, %struct.EState** %s.addr, align 8
  %nblock40 = getelementptr inbounds %struct.EState, %struct.EState* %54, i32 0, i32 17
  %55 = load i32, i32* %nblock40, align 4
  %idxprom41 = sext i32 %55 to i64
  %56 = load %struct.EState*, %struct.EState** %s.addr, align 8
  %block42 = getelementptr inbounds %struct.EState, %struct.EState* %56, i32 0, i32 9
  %57 = load i8*, i8** %block42, align 8
  %arrayidx43 = getelementptr inbounds i8, i8* %57, i64 %idxprom41
  store i8 %53, i8* %arrayidx43, align 1
  %58 = load %struct.EState*, %struct.EState** %s.addr, align 8
  %nblock44 = getelementptr inbounds %struct.EState, %struct.EState* %58, i32 0, i32 17
  %59 = load i32, i32* %nblock44, align 4
  %inc45 = add nsw i32 %59, 1
  store i32 %inc45, i32* %nblock44, align 4
  br label %sw.epilog

sw.default:                                       ; preds = %for.end
  %60 = load %struct.EState*, %struct.EState** %s.addr, align 8
  %state_in_len46 = getelementptr inbounds %struct.EState, %struct.EState* %60, i32 0, i32 14
  %61 = load i32, i32* %state_in_len46, align 4
  %sub = sub nsw i32 %61, 4
  %idxprom47 = sext i32 %sub to i64
  %62 = load %struct.EState*, %struct.EState** %s.addr, align 8
  %inUse48 = getelementptr inbounds %struct.EState, %struct.EState* %62, i32 0, i32 22
  %arrayidx49 = getelementptr inbounds [256 x i8], [256 x i8]* %inUse48, i32 0, i64 %idxprom47
  store i8 1, i8* %arrayidx49, align 1
  %63 = load i8, i8* %ch, align 1
  %64 = load %struct.EState*, %struct.EState** %s.addr, align 8
  %nblock50 = getelementptr inbounds %struct.EState, %struct.EState* %64, i32 0, i32 17
  %65 = load i32, i32* %nblock50, align 4
  %idxprom51 = sext i32 %65 to i64
  %66 = load %struct.EState*, %struct.EState** %s.addr, align 8
  %block52 = getelementptr inbounds %struct.EState, %struct.EState* %66, i32 0, i32 9
  %67 = load i8*, i8** %block52, align 8
  %arrayidx53 = getelementptr inbounds i8, i8* %67, i64 %idxprom51
  store i8 %63, i8* %arrayidx53, align 1
  %68 = load %struct.EState*, %struct.EState** %s.addr, align 8
  %nblock54 = getelementptr inbounds %struct.EState, %struct.EState* %68, i32 0, i32 17
  %69 = load i32, i32* %nblock54, align 4
  %inc55 = add nsw i32 %69, 1
  store i32 %inc55, i32* %nblock54, align 4
  %70 = load i8, i8* %ch, align 1
  %71 = load %struct.EState*, %struct.EState** %s.addr, align 8
  %nblock56 = getelementptr inbounds %struct.EState, %struct.EState* %71, i32 0, i32 17
  %72 = load i32, i32* %nblock56, align 4
  %idxprom57 = sext i32 %72 to i64
  %73 = load %struct.EState*, %struct.EState** %s.addr, align 8
  %block58 = getelementptr inbounds %struct.EState, %struct.EState* %73, i32 0, i32 9
  %74 = load i8*, i8** %block58, align 8
  %arrayidx59 = getelementptr inbounds i8, i8* %74, i64 %idxprom57
  store i8 %70, i8* %arrayidx59, align 1
  %75 = load %struct.EState*, %struct.EState** %s.addr, align 8
  %nblock60 = getelementptr inbounds %struct.EState, %struct.EState* %75, i32 0, i32 17
  %76 = load i32, i32* %nblock60, align 4
  %inc61 = add nsw i32 %76, 1
  store i32 %inc61, i32* %nblock60, align 4
  %77 = load i8, i8* %ch, align 1
  %78 = load %struct.EState*, %struct.EState** %s.addr, align 8
  %nblock62 = getelementptr inbounds %struct.EState, %struct.EState* %78, i32 0, i32 17
  %79 = load i32, i32* %nblock62, align 4
  %idxprom63 = sext i32 %79 to i64
  %80 = load %struct.EState*, %struct.EState** %s.addr, align 8
  %block64 = getelementptr inbounds %struct.EState, %struct.EState* %80, i32 0, i32 9
  %81 = load i8*, i8** %block64, align 8
  %arrayidx65 = getelementptr inbounds i8, i8* %81, i64 %idxprom63
  store i8 %77, i8* %arrayidx65, align 1
  %82 = load %struct.EState*, %struct.EState** %s.addr, align 8
  %nblock66 = getelementptr inbounds %struct.EState, %struct.EState* %82, i32 0, i32 17
  %83 = load i32, i32* %nblock66, align 4
  %inc67 = add nsw i32 %83, 1
  store i32 %inc67, i32* %nblock66, align 4
  %84 = load i8, i8* %ch, align 1
  %85 = load %struct.EState*, %struct.EState** %s.addr, align 8
  %nblock68 = getelementptr inbounds %struct.EState, %struct.EState* %85, i32 0, i32 17
  %86 = load i32, i32* %nblock68, align 4
  %idxprom69 = sext i32 %86 to i64
  %87 = load %struct.EState*, %struct.EState** %s.addr, align 8
  %block70 = getelementptr inbounds %struct.EState, %struct.EState* %87, i32 0, i32 9
  %88 = load i8*, i8** %block70, align 8
  %arrayidx71 = getelementptr inbounds i8, i8* %88, i64 %idxprom69
  store i8 %84, i8* %arrayidx71, align 1
  %89 = load %struct.EState*, %struct.EState** %s.addr, align 8
  %nblock72 = getelementptr inbounds %struct.EState, %struct.EState* %89, i32 0, i32 17
  %90 = load i32, i32* %nblock72, align 4
  %inc73 = add nsw i32 %90, 1
  store i32 %inc73, i32* %nblock72, align 4
  %91 = load %struct.EState*, %struct.EState** %s.addr, align 8
  %state_in_len74 = getelementptr inbounds %struct.EState, %struct.EState* %91, i32 0, i32 14
  %92 = load i32, i32* %state_in_len74, align 4
  %sub75 = sub nsw i32 %92, 4
  %conv76 = trunc i32 %sub75 to i8
  %93 = load %struct.EState*, %struct.EState** %s.addr, align 8
  %nblock77 = getelementptr inbounds %struct.EState, %struct.EState* %93, i32 0, i32 17
  %94 = load i32, i32* %nblock77, align 4
  %idxprom78 = sext i32 %94 to i64
  %95 = load %struct.EState*, %struct.EState** %s.addr, align 8
  %block79 = getelementptr inbounds %struct.EState, %struct.EState* %95, i32 0, i32 9
  %96 = load i8*, i8** %block79, align 8
  %arrayidx80 = getelementptr inbounds i8, i8* %96, i64 %idxprom78
  store i8 %conv76, i8* %arrayidx80, align 1
  %97 = load %struct.EState*, %struct.EState** %s.addr, align 8
  %nblock81 = getelementptr inbounds %struct.EState, %struct.EState* %97, i32 0, i32 17
  %98 = load i32, i32* %nblock81, align 4
  %inc82 = add nsw i32 %98, 1
  store i32 %inc82, i32* %nblock81, align 4
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.default, %sw.bb.27, %sw.bb.14, %sw.bb
  ret void
}

declare i32 @spec_getc(i32) #1

declare i32 @spec_ungetc(i8 zeroext, i32) #1

; Function Attrs: nounwind
declare void @llvm.memset.p0i8.i64(i8* nocapture, i8, i64, i32, i1) #4

; Function Attrs: nounwind readnone
declare i16** @__ctype_b_loc() #5

; Function Attrs: nounwind
declare i8* @strcat(i8*, i8*) #3

; Function Attrs: nounwind readonly
declare i32 @strcmp(i8*, i8*) #6

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { noreturn nounwind "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { nounwind }
attributes #5 = { nounwind readnone "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #6 = { nounwind readonly "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #7 = { noreturn nounwind }
attributes #8 = { nounwind readnone }
attributes #9 = { nounwind readonly }

!llvm.ident = !{!0}

!0 = !{!"clang version 3.7.0 (tags/RELEASE_370/final)"}
