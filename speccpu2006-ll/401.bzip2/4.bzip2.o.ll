; ModuleID = 'bzip2.c'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct._IO_FILE = type { i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, %struct._IO_marker*, %struct._IO_FILE*, i32, i32, i64, i16, i8, [1 x i8], i8*, i64, i8*, i8*, i8*, i8*, i64, i32, [20 x i8] }
%struct._IO_marker = type { %struct._IO_marker*, %struct._IO_FILE*, i32 }
%struct.UInt64 = type { [8 x i8] }

@blockSize100k = common global i32 0, align 4
@verbosity = common global i32 0, align 4
@workFactor = common global i32 0, align 4
@stderr = external global %struct._IO_FILE*, align 8
@.str = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@outputHandleJustInCase = common global i32 0, align 4
@.str.1 = private unnamed_addr constant [22 x i8] c" no data compressed.\0A\00", align 1
@.str.2 = private unnamed_addr constant [57 x i8] c"%6.3f:1, %6.3f bits/byte, %5.2f%% saved, %s in, %s out.\0A\00", align 1
@.str.3 = private unnamed_addr constant [26 x i8] c"compress:unexpected error\00", align 1
@.str.4 = private unnamed_addr constant [13 x i8] c"compress:end\00", align 1
@smallMode = common global i8 0, align 1
@.str.5 = private unnamed_addr constant [27 x i8] c"decompress:bzReadGetUnused\00", align 1
@.str.6 = private unnamed_addr constant [6 x i8] c"\0A    \00", align 1
@forceOverwrite = common global i8 0, align 1
@noisy = common global i8 0, align 1
@.str.7 = private unnamed_addr constant [45 x i8] c"\0A%s: %s: trailing garbage after EOF ignored\0A\00", align 1
@progName = common global i8* null, align 8
@inName = common global [1034 x i8] zeroinitializer, align 16
@.str.8 = private unnamed_addr constant [28 x i8] c"decompress:unexpected error\00", align 1
@.str.9 = private unnamed_addr constant [15 x i8] c"decompress:end\00", align 1
@keepInputFiles = common global i8 0, align 1
@deleteOutputOnInterrupt = common global i8 0, align 1
@testFailsExist = common global i8 0, align 1
@unzFailsExist = common global i8 0, align 1
@numFileNames = common global i32 0, align 4
@numFilesProcessed = common global i32 0, align 4
@exitValue = common global i32 0, align 4
@opMode = common global i32 0, align 4
@srcMode = common global i32 0, align 4
@longestFileName = common global i32 0, align 4
@outName = common global [1034 x i8] zeroinitializer, align 16
@tmpName = common global [1034 x i8] zeroinitializer, align 16
@progNameReally = common global [1034 x i8] zeroinitializer, align 16
@.str.10 = private unnamed_addr constant [148 x i8] c"\0A%s: PANIC -- internal consistency error:\0A\09%s\0A\09This is probably a BUG, but it may be in your COMPILER.  Please do not bother\0A\09the original author.\0A\00", align 1
@.str.11 = private unnamed_addr constant [36 x i8] c"\09Input file = %s, output file = %s\0A\00", align 1
@.str.12 = private unnamed_addr constant [47 x i8] c"\0A%s: Data integrity error when decompressing.\0A\00", align 1
@.str.13 = private unnamed_addr constant [241 x i8] c"\0AIt is possible that the compressed file(s) have become corrupted.\0AYou can use the -tvv option to test integrity of such files.\0A\0AYou can use the `bzip2recover' program to attempt to recover\0Adata from undamaged sections of corrupted files.\0A\0A\00", align 1
@.str.14 = private unnamed_addr constant [95 x i8] c"\0A%s: Compressed file ends unexpectedly;\0A\09perhaps it is corrupted?  *Possible* reason follows.\0A\00", align 1
@.str.15 = private unnamed_addr constant [65 x i8] c"\0A%s: I/O or other error, bailing out.  Possible reason follows.\0A\00", align 1
@.str.16 = private unnamed_addr constant [38 x i8] c"\0A%s: couldn't allocate enough memory\0A\00", align 1
@.str.17 = private unnamed_addr constant [236 x i8] c"bzip2: I'm not configured correctly for this platform!\0A\09I require Int32, Int16 and Char to have sizes\0A\09of 4, 2 and 1 bytes to run properly, and they don't.\0A\09Probably you can fix this by defining them correctly,\0A\09and recompiling.  Bye!\0A\00", align 1

; Function Attrs: nounwind uwtable
define void @compressStream(i32 %stream, i32 %zStream) #0 {
entry:
  %stream.addr = alloca i32, align 4
  %zStream.addr = alloca i32, align 4
  %bzf = alloca i8*, align 8
  %ibuf = alloca [5000 x i8], align 16
  %nIbuf = alloca i32, align 4
  %nbytes_in_lo32 = alloca i32, align 4
  %nbytes_in_hi32 = alloca i32, align 4
  %nbytes_out_lo32 = alloca i32, align 4
  %nbytes_out_hi32 = alloca i32, align 4
  %bzerr = alloca i32, align 4
  %bzerr_dummy = alloca i32, align 4
  %ret = alloca i32, align 4
  %buf_nin = alloca [32 x i8], align 16
  %buf_nout = alloca [32 x i8], align 16
  %nbytes_in = alloca %struct.UInt64, align 1
  %nbytes_out = alloca %struct.UInt64, align 1
  %nbytes_in_d = alloca double, align 8
  %nbytes_out_d = alloca double, align 8
  store i32 %stream, i32* %stream.addr, align 4
  store i32 %zStream, i32* %zStream.addr, align 4
  store i8* null, i8** %bzf, align 8
  %0 = load i32, i32* %zStream.addr, align 4
  %1 = load i32, i32* @blockSize100k, align 4
  %2 = load i32, i32* @verbosity, align 4
  %3 = load i32, i32* @workFactor, align 4
  %call = call i8* @BZ2_bzWriteOpen(i32* %bzerr, i32 %0, i32 %1, i32 %2, i32 %3)
  store i8* %call, i8** %bzf, align 8
  %4 = load i32, i32* %bzerr, align 4
  %cmp = icmp ne i32 %4, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  br label %errhandler

if.end:                                           ; preds = %entry
  %5 = load i32, i32* @verbosity, align 4
  %cmp1 = icmp sge i32 %5, 2
  br i1 %cmp1, label %if.then.2, label %if.end.4

if.then.2:                                        ; preds = %if.end
  %6 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %call3 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %6, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i32 0, i32 0))
  br label %if.end.4

if.end.4:                                         ; preds = %if.then.2, %if.end
  br label %while.body

while.body:                                       ; preds = %if.end.4, %if.end.15
  %7 = load i32, i32* %stream.addr, align 4
  %call5 = call zeroext i8 @myfeof(i32 %7)
  %tobool = icmp ne i8 %call5, 0
  br i1 %tobool, label %if.then.6, label %if.end.7

if.then.6:                                        ; preds = %while.body
  br label %while.end

if.end.7:                                         ; preds = %while.body
  %arraydecay = getelementptr inbounds [5000 x i8], [5000 x i8]* %ibuf, i32 0, i32 0
  %8 = load i32, i32* %stream.addr, align 4
  %call8 = call i32 @spec_fread(i8* %arraydecay, i32 1, i32 5000, i32 %8)
  store i32 %call8, i32* %nIbuf, align 4
  %9 = load i32, i32* %nIbuf, align 4
  %cmp9 = icmp sgt i32 %9, 0
  br i1 %cmp9, label %if.then.10, label %if.end.12

if.then.10:                                       ; preds = %if.end.7
  %10 = load i8*, i8** %bzf, align 8
  %arraydecay11 = getelementptr inbounds [5000 x i8], [5000 x i8]* %ibuf, i32 0, i32 0
  %11 = load i32, i32* %nIbuf, align 4
  call void @BZ2_bzWrite(i32* %bzerr, i8* %10, i8* %arraydecay11, i32 %11)
  br label %if.end.12

if.end.12:                                        ; preds = %if.then.10, %if.end.7
  %12 = load i32, i32* %bzerr, align 4
  %cmp13 = icmp ne i32 %12, 0
  br i1 %cmp13, label %if.then.14, label %if.end.15

if.then.14:                                       ; preds = %if.end.12
  br label %errhandler

if.end.15:                                        ; preds = %if.end.12
  br label %while.body

while.end:                                        ; preds = %if.then.6
  %13 = load i8*, i8** %bzf, align 8
  call void @BZ2_bzWriteClose64(i32* %bzerr, i8* %13, i32 0, i32* %nbytes_in_lo32, i32* %nbytes_in_hi32, i32* %nbytes_out_lo32, i32* %nbytes_out_hi32)
  %14 = load i32, i32* %bzerr, align 4
  %cmp16 = icmp ne i32 %14, 0
  br i1 %cmp16, label %if.then.17, label %if.end.18

if.then.17:                                       ; preds = %while.end
  br label %errhandler

if.end.18:                                        ; preds = %while.end
  store i32 0, i32* %ret, align 4
  %15 = load i32, i32* %ret, align 4
  %cmp19 = icmp eq i32 %15, -1
  br i1 %cmp19, label %if.then.20, label %if.end.21

if.then.20:                                       ; preds = %if.end.18
  br label %errhandler_io

if.end.21:                                        ; preds = %if.end.18
  %16 = load i32, i32* %zStream.addr, align 4
  %cmp22 = icmp ne i32 %16, 1
  br i1 %cmp22, label %if.then.23, label %if.end.27

if.then.23:                                       ; preds = %if.end.21
  store i32 0, i32* %ret, align 4
  store i32 0, i32* @outputHandleJustInCase, align 4
  %17 = load i32, i32* %ret, align 4
  %cmp24 = icmp eq i32 %17, -1
  br i1 %cmp24, label %if.then.25, label %if.end.26

if.then.25:                                       ; preds = %if.then.23
  br label %errhandler_io

if.end.26:                                        ; preds = %if.then.23
  br label %if.end.27

if.end.27:                                        ; preds = %if.end.26, %if.end.21
  store i32 0, i32* @outputHandleJustInCase, align 4
  store i32 0, i32* %ret, align 4
  %18 = load i32, i32* %ret, align 4
  %cmp28 = icmp eq i32 %18, -1
  br i1 %cmp28, label %if.then.29, label %if.end.30

if.then.29:                                       ; preds = %if.end.27
  br label %errhandler_io

if.end.30:                                        ; preds = %if.end.27
  %19 = load i32, i32* @verbosity, align 4
  %cmp31 = icmp sge i32 %19, 1
  br i1 %cmp31, label %if.then.32, label %if.end.48

if.then.32:                                       ; preds = %if.end.30
  %20 = load i32, i32* %nbytes_in_lo32, align 4
  %cmp33 = icmp eq i32 %20, 0
  br i1 %cmp33, label %land.lhs.true, label %if.else

land.lhs.true:                                    ; preds = %if.then.32
  %21 = load i32, i32* %nbytes_in_hi32, align 4
  %cmp34 = icmp eq i32 %21, 0
  br i1 %cmp34, label %if.then.35, label %if.else

if.then.35:                                       ; preds = %land.lhs.true
  %22 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %call36 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %22, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.1, i32 0, i32 0))
  br label %if.end.47

if.else:                                          ; preds = %land.lhs.true, %if.then.32
  %23 = load i32, i32* %nbytes_in_lo32, align 4
  %24 = load i32, i32* %nbytes_in_hi32, align 4
  call void @uInt64_from_UInt32s(%struct.UInt64* %nbytes_in, i32 %23, i32 %24)
  %25 = load i32, i32* %nbytes_out_lo32, align 4
  %26 = load i32, i32* %nbytes_out_hi32, align 4
  call void @uInt64_from_UInt32s(%struct.UInt64* %nbytes_out, i32 %25, i32 %26)
  %call37 = call double @uInt64_to_double(%struct.UInt64* %nbytes_in)
  store double %call37, double* %nbytes_in_d, align 8
  %call38 = call double @uInt64_to_double(%struct.UInt64* %nbytes_out)
  store double %call38, double* %nbytes_out_d, align 8
  %arraydecay39 = getelementptr inbounds [32 x i8], [32 x i8]* %buf_nin, i32 0, i32 0
  call void @uInt64_toAscii(i8* %arraydecay39, %struct.UInt64* %nbytes_in)
  %arraydecay40 = getelementptr inbounds [32 x i8], [32 x i8]* %buf_nout, i32 0, i32 0
  call void @uInt64_toAscii(i8* %arraydecay40, %struct.UInt64* %nbytes_out)
  %27 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %28 = load double, double* %nbytes_in_d, align 8
  %29 = load double, double* %nbytes_out_d, align 8
  %div = fdiv double %28, %29
  %30 = load double, double* %nbytes_out_d, align 8
  %mul = fmul double 8.000000e+00, %30
  %31 = load double, double* %nbytes_in_d, align 8
  %div41 = fdiv double %mul, %31
  %32 = load double, double* %nbytes_out_d, align 8
  %33 = load double, double* %nbytes_in_d, align 8
  %div42 = fdiv double %32, %33
  %sub = fsub double 1.000000e+00, %div42
  %mul43 = fmul double 1.000000e+02, %sub
  %arraydecay44 = getelementptr inbounds [32 x i8], [32 x i8]* %buf_nin, i32 0, i32 0
  %arraydecay45 = getelementptr inbounds [32 x i8], [32 x i8]* %buf_nout, i32 0, i32 0
  %call46 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %27, i8* getelementptr inbounds ([57 x i8], [57 x i8]* @.str.2, i32 0, i32 0), double %div, double %div41, double %mul43, i8* %arraydecay44, i8* %arraydecay45)
  br label %if.end.47

if.end.47:                                        ; preds = %if.else, %if.then.35
  br label %if.end.48

if.end.48:                                        ; preds = %if.end.47, %if.end.30
  br label %return

errhandler:                                       ; preds = %if.then.17, %if.then.14, %if.then
  %34 = load i8*, i8** %bzf, align 8
  call void @BZ2_bzWriteClose64(i32* %bzerr_dummy, i8* %34, i32 1, i32* %nbytes_in_lo32, i32* %nbytes_in_hi32, i32* %nbytes_out_lo32, i32* %nbytes_out_hi32)
  %35 = load i32, i32* %bzerr, align 4
  switch i32 %35, label %sw.default [
    i32 -9, label %sw.bb
    i32 -3, label %sw.bb.49
    i32 -6, label %sw.bb.50
  ]

sw.bb:                                            ; preds = %errhandler
  call void @configError()
  br label %sw.epilog

sw.bb.49:                                         ; preds = %errhandler
  call void @outOfMemory()
  br label %sw.epilog

sw.bb.50:                                         ; preds = %errhandler
  br label %errhandler_io

errhandler_io:                                    ; preds = %sw.bb.50, %if.then.29, %if.then.25, %if.then.20
  call void @ioError()
  br label %sw.epilog

sw.default:                                       ; preds = %errhandler
  call void @panic(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.3, i32 0, i32 0))
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.default, %errhandler_io, %sw.bb.49, %sw.bb
  call void @panic(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.4, i32 0, i32 0))
  br label %return

return:                                           ; preds = %sw.epilog, %if.end.48
  ret void
}

declare i8* @BZ2_bzWriteOpen(i32*, i32, i32, i32, i32) #1

declare i32 @fprintf(%struct._IO_FILE*, i8*, ...) #1

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

declare void @BZ2_bzWrite(i32*, i8*, i8*, i32) #1

declare void @BZ2_bzWriteClose64(i32*, i8*, i32, i32*, i32*, i32*, i32*) #1

; Function Attrs: nounwind uwtable
define internal void @uInt64_from_UInt32s(%struct.UInt64* %n, i32 %lo32, i32 %hi32) #0 {
entry:
  %n.addr = alloca %struct.UInt64*, align 8
  %lo32.addr = alloca i32, align 4
  %hi32.addr = alloca i32, align 4
  store %struct.UInt64* %n, %struct.UInt64** %n.addr, align 8
  store i32 %lo32, i32* %lo32.addr, align 4
  store i32 %hi32, i32* %hi32.addr, align 4
  %0 = load i32, i32* %hi32.addr, align 4
  %shr = lshr i32 %0, 24
  %and = and i32 %shr, 255
  %conv = trunc i32 %and to i8
  %1 = load %struct.UInt64*, %struct.UInt64** %n.addr, align 8
  %b = getelementptr inbounds %struct.UInt64, %struct.UInt64* %1, i32 0, i32 0
  %arrayidx = getelementptr inbounds [8 x i8], [8 x i8]* %b, i32 0, i64 7
  store i8 %conv, i8* %arrayidx, align 1
  %2 = load i32, i32* %hi32.addr, align 4
  %shr1 = lshr i32 %2, 16
  %and2 = and i32 %shr1, 255
  %conv3 = trunc i32 %and2 to i8
  %3 = load %struct.UInt64*, %struct.UInt64** %n.addr, align 8
  %b4 = getelementptr inbounds %struct.UInt64, %struct.UInt64* %3, i32 0, i32 0
  %arrayidx5 = getelementptr inbounds [8 x i8], [8 x i8]* %b4, i32 0, i64 6
  store i8 %conv3, i8* %arrayidx5, align 1
  %4 = load i32, i32* %hi32.addr, align 4
  %shr6 = lshr i32 %4, 8
  %and7 = and i32 %shr6, 255
  %conv8 = trunc i32 %and7 to i8
  %5 = load %struct.UInt64*, %struct.UInt64** %n.addr, align 8
  %b9 = getelementptr inbounds %struct.UInt64, %struct.UInt64* %5, i32 0, i32 0
  %arrayidx10 = getelementptr inbounds [8 x i8], [8 x i8]* %b9, i32 0, i64 5
  store i8 %conv8, i8* %arrayidx10, align 1
  %6 = load i32, i32* %hi32.addr, align 4
  %and11 = and i32 %6, 255
  %conv12 = trunc i32 %and11 to i8
  %7 = load %struct.UInt64*, %struct.UInt64** %n.addr, align 8
  %b13 = getelementptr inbounds %struct.UInt64, %struct.UInt64* %7, i32 0, i32 0
  %arrayidx14 = getelementptr inbounds [8 x i8], [8 x i8]* %b13, i32 0, i64 4
  store i8 %conv12, i8* %arrayidx14, align 1
  %8 = load i32, i32* %lo32.addr, align 4
  %shr15 = lshr i32 %8, 24
  %and16 = and i32 %shr15, 255
  %conv17 = trunc i32 %and16 to i8
  %9 = load %struct.UInt64*, %struct.UInt64** %n.addr, align 8
  %b18 = getelementptr inbounds %struct.UInt64, %struct.UInt64* %9, i32 0, i32 0
  %arrayidx19 = getelementptr inbounds [8 x i8], [8 x i8]* %b18, i32 0, i64 3
  store i8 %conv17, i8* %arrayidx19, align 1
  %10 = load i32, i32* %lo32.addr, align 4
  %shr20 = lshr i32 %10, 16
  %and21 = and i32 %shr20, 255
  %conv22 = trunc i32 %and21 to i8
  %11 = load %struct.UInt64*, %struct.UInt64** %n.addr, align 8
  %b23 = getelementptr inbounds %struct.UInt64, %struct.UInt64* %11, i32 0, i32 0
  %arrayidx24 = getelementptr inbounds [8 x i8], [8 x i8]* %b23, i32 0, i64 2
  store i8 %conv22, i8* %arrayidx24, align 1
  %12 = load i32, i32* %lo32.addr, align 4
  %shr25 = lshr i32 %12, 8
  %and26 = and i32 %shr25, 255
  %conv27 = trunc i32 %and26 to i8
  %13 = load %struct.UInt64*, %struct.UInt64** %n.addr, align 8
  %b28 = getelementptr inbounds %struct.UInt64, %struct.UInt64* %13, i32 0, i32 0
  %arrayidx29 = getelementptr inbounds [8 x i8], [8 x i8]* %b28, i32 0, i64 1
  store i8 %conv27, i8* %arrayidx29, align 1
  %14 = load i32, i32* %lo32.addr, align 4
  %and30 = and i32 %14, 255
  %conv31 = trunc i32 %and30 to i8
  %15 = load %struct.UInt64*, %struct.UInt64** %n.addr, align 8
  %b32 = getelementptr inbounds %struct.UInt64, %struct.UInt64* %15, i32 0, i32 0
  %arrayidx33 = getelementptr inbounds [8 x i8], [8 x i8]* %b32, i32 0, i64 0
  store i8 %conv31, i8* %arrayidx33, align 1
  ret void
}

; Function Attrs: nounwind uwtable
define internal double @uInt64_to_double(%struct.UInt64* %n) #0 {
entry:
  %n.addr = alloca %struct.UInt64*, align 8
  %i = alloca i32, align 4
  %base = alloca double, align 8
  %sum = alloca double, align 8
  store %struct.UInt64* %n, %struct.UInt64** %n.addr, align 8
  store double 1.000000e+00, double* %base, align 8
  store double 0.000000e+00, double* %sum, align 8
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %0 = load i32, i32* %i, align 4
  %cmp = icmp slt i32 %0, 8
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %1 = load double, double* %base, align 8
  %2 = load i32, i32* %i, align 4
  %idxprom = sext i32 %2 to i64
  %3 = load %struct.UInt64*, %struct.UInt64** %n.addr, align 8
  %b = getelementptr inbounds %struct.UInt64, %struct.UInt64* %3, i32 0, i32 0
  %arrayidx = getelementptr inbounds [8 x i8], [8 x i8]* %b, i32 0, i64 %idxprom
  %4 = load i8, i8* %arrayidx, align 1
  %conv = uitofp i8 %4 to double
  %mul = fmul double %1, %conv
  %5 = load double, double* %sum, align 8
  %add = fadd double %5, %mul
  store double %add, double* %sum, align 8
  %6 = load double, double* %base, align 8
  %mul1 = fmul double %6, 2.560000e+02
  store double %mul1, double* %base, align 8
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %7 = load i32, i32* %i, align 4
  %inc = add nsw i32 %7, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %8 = load double, double* %sum, align 8
  ret double %8
}

; Function Attrs: nounwind uwtable
define internal void @uInt64_toAscii(i8* %outbuf, %struct.UInt64* %n) #0 {
entry:
  %outbuf.addr = alloca i8*, align 8
  %n.addr = alloca %struct.UInt64*, align 8
  %i = alloca i32, align 4
  %q = alloca i32, align 4
  %buf = alloca [32 x i8], align 16
  %nBuf = alloca i32, align 4
  %n_copy = alloca %struct.UInt64, align 1
  store i8* %outbuf, i8** %outbuf.addr, align 8
  store %struct.UInt64* %n, %struct.UInt64** %n.addr, align 8
  store i32 0, i32* %nBuf, align 4
  %0 = load %struct.UInt64*, %struct.UInt64** %n.addr, align 8
  %1 = bitcast %struct.UInt64* %n_copy to i8*
  %2 = bitcast %struct.UInt64* %0 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %1, i8* %2, i64 8, i32 1, i1 false)
  br label %do.body

do.body:                                          ; preds = %do.cond, %entry
  %call = call i32 @uInt64_qrm10(%struct.UInt64* %n_copy)
  store i32 %call, i32* %q, align 4
  %3 = load i32, i32* %q, align 4
  %add = add nsw i32 %3, 48
  %conv = trunc i32 %add to i8
  %4 = load i32, i32* %nBuf, align 4
  %idxprom = sext i32 %4 to i64
  %arrayidx = getelementptr inbounds [32 x i8], [32 x i8]* %buf, i32 0, i64 %idxprom
  store i8 %conv, i8* %arrayidx, align 1
  %5 = load i32, i32* %nBuf, align 4
  %inc = add nsw i32 %5, 1
  store i32 %inc, i32* %nBuf, align 4
  br label %do.cond

do.cond:                                          ; preds = %do.body
  %call1 = call zeroext i8 @uInt64_isZero(%struct.UInt64* %n_copy)
  %tobool = icmp ne i8 %call1, 0
  %lnot = xor i1 %tobool, true
  br i1 %lnot, label %do.body, label %do.end

do.end:                                           ; preds = %do.cond
  %6 = load i32, i32* %nBuf, align 4
  %idxprom2 = sext i32 %6 to i64
  %7 = load i8*, i8** %outbuf.addr, align 8
  %arrayidx3 = getelementptr inbounds i8, i8* %7, i64 %idxprom2
  store i8 0, i8* %arrayidx3, align 1
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %do.end
  %8 = load i32, i32* %i, align 4
  %9 = load i32, i32* %nBuf, align 4
  %cmp = icmp slt i32 %8, %9
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %10 = load i32, i32* %nBuf, align 4
  %11 = load i32, i32* %i, align 4
  %sub = sub nsw i32 %10, %11
  %sub5 = sub nsw i32 %sub, 1
  %idxprom6 = sext i32 %sub5 to i64
  %arrayidx7 = getelementptr inbounds [32 x i8], [32 x i8]* %buf, i32 0, i64 %idxprom6
  %12 = load i8, i8* %arrayidx7, align 1
  %13 = load i32, i32* %i, align 4
  %idxprom8 = sext i32 %13 to i64
  %14 = load i8*, i8** %outbuf.addr, align 8
  %arrayidx9 = getelementptr inbounds i8, i8* %14, i64 %idxprom8
  store i8 %12, i8* %arrayidx9, align 1
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %15 = load i32, i32* %i, align 4
  %inc10 = add nsw i32 %15, 1
  store i32 %inc10, i32* %i, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @configError() #0 {
entry:
  %0 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %call = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %0, i8* getelementptr inbounds ([236 x i8], [236 x i8]* @.str.17, i32 0, i32 0))
  call void @setExit(i32 3)
  %1 = load i32, i32* @exitValue, align 4
  call void @exit(i32 %1) #4
  unreachable

return:                                           ; No predecessors!
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @outOfMemory() #0 {
entry:
  %0 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %1 = load i8*, i8** @progName, align 8
  %call = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %0, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.16, i32 0, i32 0), i8* %1)
  call void @showFileNames()
  call void @cleanUpAndFail(i32 1)
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @ioError() #0 {
entry:
  %0 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %1 = load i8*, i8** @progName, align 8
  %call = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %0, i8* getelementptr inbounds ([65 x i8], [65 x i8]* @.str.15, i32 0, i32 0), i8* %1)
  %2 = load i8*, i8** @progName, align 8
  call void @perror(i8* %2)
  call void @showFileNames()
  call void @cleanUpAndFail(i32 1)
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @panic(i8* %s) #0 {
entry:
  %s.addr = alloca i8*, align 8
  store i8* %s, i8** %s.addr, align 8
  %0 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %1 = load i8*, i8** @progName, align 8
  %2 = load i8*, i8** %s.addr, align 8
  %call = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %0, i8* getelementptr inbounds ([148 x i8], [148 x i8]* @.str.10, i32 0, i32 0), i8* %1, i8* %2)
  call void @showFileNames()
  call void @cleanUpAndFail(i32 3)
  ret void
}

; Function Attrs: nounwind uwtable
define zeroext i8 @uncompressStream(i32 %zStream, i32 %stream) #0 {
entry:
  %retval = alloca i8, align 1
  %zStream.addr = alloca i32, align 4
  %stream.addr = alloca i32, align 4
  %bzf = alloca i8*, align 8
  %bzerr = alloca i32, align 4
  %bzerr_dummy = alloca i32, align 4
  %ret = alloca i32, align 4
  %nread = alloca i32, align 4
  %streamNo = alloca i32, align 4
  %i = alloca i32, align 4
  %obuf = alloca [5000 x i8], align 16
  %unused = alloca [5000 x i8], align 16
  %nUnused = alloca i32, align 4
  %unusedTmpV = alloca i8*, align 8
  %unusedTmp = alloca i8*, align 8
  store i32 %zStream, i32* %zStream.addr, align 4
  store i32 %stream, i32* %stream.addr, align 4
  store i8* null, i8** %bzf, align 8
  store i32 0, i32* %nUnused, align 4
  store i32 0, i32* %streamNo, align 4
  br label %while.body

while.body:                                       ; preds = %entry, %if.end.48
  %0 = load i32, i32* %zStream.addr, align 4
  %1 = load i32, i32* @verbosity, align 4
  %2 = load i8, i8* @smallMode, align 1
  %conv = zext i8 %2 to i32
  %arraydecay = getelementptr inbounds [5000 x i8], [5000 x i8]* %unused, i32 0, i32 0
  %3 = load i32, i32* %nUnused, align 4
  %call = call i8* @BZ2_bzReadOpen(i32* %bzerr, i32 %0, i32 %1, i32 %conv, i8* %arraydecay, i32 %3)
  store i8* %call, i8** %bzf, align 8
  %4 = load i8*, i8** %bzf, align 8
  %cmp = icmp eq i8* %4, null
  br i1 %cmp, label %if.then, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %while.body
  %5 = load i32, i32* %bzerr, align 4
  %cmp2 = icmp ne i32 %5, 0
  br i1 %cmp2, label %if.then, label %if.end

if.then:                                          ; preds = %lor.lhs.false, %while.body
  br label %errhandler

if.end:                                           ; preds = %lor.lhs.false
  %6 = load i32, i32* %streamNo, align 4
  %inc = add nsw i32 %6, 1
  store i32 %inc, i32* %streamNo, align 4
  br label %while.cond.4

while.cond.4:                                     ; preds = %if.end.24, %if.end
  %7 = load i32, i32* %bzerr, align 4
  %cmp5 = icmp eq i32 %7, 0
  br i1 %cmp5, label %while.body.7, label %while.end

while.body.7:                                     ; preds = %while.cond.4
  %8 = load i8*, i8** %bzf, align 8
  %arraydecay8 = getelementptr inbounds [5000 x i8], [5000 x i8]* %obuf, i32 0, i32 0
  %call9 = call i32 @BZ2_bzRead(i32* %bzerr, i8* %8, i8* %arraydecay8, i32 5000)
  store i32 %call9, i32* %nread, align 4
  %9 = load i32, i32* %bzerr, align 4
  %cmp10 = icmp eq i32 %9, -5
  br i1 %cmp10, label %if.then.12, label %if.end.13

if.then.12:                                       ; preds = %while.body.7
  br label %trycat

if.end.13:                                        ; preds = %while.body.7
  %10 = load i32, i32* %bzerr, align 4
  %cmp14 = icmp eq i32 %10, 0
  br i1 %cmp14, label %land.lhs.true, label %lor.lhs.false.16

lor.lhs.false.16:                                 ; preds = %if.end.13
  %11 = load i32, i32* %bzerr, align 4
  %cmp17 = icmp eq i32 %11, 4
  br i1 %cmp17, label %land.lhs.true, label %if.end.24

land.lhs.true:                                    ; preds = %lor.lhs.false.16, %if.end.13
  %12 = load i32, i32* %nread, align 4
  %cmp19 = icmp sgt i32 %12, 0
  br i1 %cmp19, label %if.then.21, label %if.end.24

if.then.21:                                       ; preds = %land.lhs.true
  %arraydecay22 = getelementptr inbounds [5000 x i8], [5000 x i8]* %obuf, i32 0, i32 0
  %13 = load i32, i32* %nread, align 4
  %14 = load i32, i32* %stream.addr, align 4
  %call23 = call i32 @spec_fwrite(i8* %arraydecay22, i32 1, i32 %13, i32 %14)
  br label %if.end.24

if.end.24:                                        ; preds = %if.then.21, %land.lhs.true, %lor.lhs.false.16
  br label %while.cond.4

while.end:                                        ; preds = %while.cond.4
  %15 = load i32, i32* %bzerr, align 4
  %cmp25 = icmp ne i32 %15, 4
  br i1 %cmp25, label %if.then.27, label %if.end.28

if.then.27:                                       ; preds = %while.end
  br label %errhandler

if.end.28:                                        ; preds = %while.end
  %16 = load i8*, i8** %bzf, align 8
  call void @BZ2_bzReadGetUnused(i32* %bzerr, i8* %16, i8** %unusedTmpV, i32* %nUnused)
  %17 = load i32, i32* %bzerr, align 4
  %cmp29 = icmp ne i32 %17, 0
  br i1 %cmp29, label %if.then.31, label %if.end.32

if.then.31:                                       ; preds = %if.end.28
  call void @panic(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.5, i32 0, i32 0))
  br label %if.end.32

if.end.32:                                        ; preds = %if.then.31, %if.end.28
  %18 = load i8*, i8** %unusedTmpV, align 8
  store i8* %18, i8** %unusedTmp, align 8
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end.32
  %19 = load i32, i32* %i, align 4
  %20 = load i32, i32* %nUnused, align 4
  %cmp33 = icmp slt i32 %19, %20
  br i1 %cmp33, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %21 = load i32, i32* %i, align 4
  %idxprom = sext i32 %21 to i64
  %22 = load i8*, i8** %unusedTmp, align 8
  %arrayidx = getelementptr inbounds i8, i8* %22, i64 %idxprom
  %23 = load i8, i8* %arrayidx, align 1
  %24 = load i32, i32* %i, align 4
  %idxprom35 = sext i32 %24 to i64
  %arrayidx36 = getelementptr inbounds [5000 x i8], [5000 x i8]* %unused, i32 0, i64 %idxprom35
  store i8 %23, i8* %arrayidx36, align 1
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %25 = load i32, i32* %i, align 4
  %inc37 = add nsw i32 %25, 1
  store i32 %inc37, i32* %i, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %26 = load i8*, i8** %bzf, align 8
  call void @BZ2_bzReadClose(i32* %bzerr, i8* %26)
  %27 = load i32, i32* %bzerr, align 4
  %cmp38 = icmp ne i32 %27, 0
  br i1 %cmp38, label %if.then.40, label %if.end.41

if.then.40:                                       ; preds = %for.end
  call void @panic(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.5, i32 0, i32 0))
  br label %if.end.41

if.end.41:                                        ; preds = %if.then.40, %for.end
  %28 = load i32, i32* %nUnused, align 4
  %cmp42 = icmp eq i32 %28, 0
  br i1 %cmp42, label %land.lhs.true.44, label %if.end.48

land.lhs.true.44:                                 ; preds = %if.end.41
  %29 = load i32, i32* %zStream.addr, align 4
  %call45 = call zeroext i8 @myfeof(i32 %29)
  %conv46 = zext i8 %call45 to i32
  %tobool = icmp ne i32 %conv46, 0
  br i1 %tobool, label %if.then.47, label %if.end.48

if.then.47:                                       ; preds = %land.lhs.true.44
  br label %while.end.49

if.end.48:                                        ; preds = %land.lhs.true.44, %if.end.41
  br label %while.body

while.end.49:                                     ; preds = %if.then.47
  br label %closeok

closeok:                                          ; preds = %while.end.87, %while.end.49
  store i32 0, i32* %ret, align 4
  %30 = load i32, i32* %ret, align 4
  %cmp50 = icmp eq i32 %30, -1
  br i1 %cmp50, label %if.then.52, label %if.end.53

if.then.52:                                       ; preds = %closeok
  br label %errhandler_io

if.end.53:                                        ; preds = %closeok
  store i32 0, i32* %ret, align 4
  %31 = load i32, i32* %ret, align 4
  %cmp54 = icmp ne i32 %31, 0
  br i1 %cmp54, label %if.then.56, label %if.end.57

if.then.56:                                       ; preds = %if.end.53
  br label %errhandler_io

if.end.57:                                        ; preds = %if.end.53
  %32 = load i32, i32* %stream.addr, align 4
  %cmp58 = icmp ne i32 %32, 1
  br i1 %cmp58, label %if.then.60, label %if.end.65

if.then.60:                                       ; preds = %if.end.57
  store i32 0, i32* %ret, align 4
  store i32 0, i32* @outputHandleJustInCase, align 4
  %33 = load i32, i32* %ret, align 4
  %cmp61 = icmp eq i32 %33, -1
  br i1 %cmp61, label %if.then.63, label %if.end.64

if.then.63:                                       ; preds = %if.then.60
  br label %errhandler_io

if.end.64:                                        ; preds = %if.then.60
  br label %if.end.65

if.end.65:                                        ; preds = %if.end.64, %if.end.57
  store i32 0, i32* @outputHandleJustInCase, align 4
  %34 = load i32, i32* @verbosity, align 4
  %cmp66 = icmp sge i32 %34, 2
  br i1 %cmp66, label %if.then.68, label %if.end.70

if.then.68:                                       ; preds = %if.end.65
  %35 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %call69 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %35, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.6, i32 0, i32 0))
  br label %if.end.70

if.end.70:                                        ; preds = %if.then.68, %if.end.65
  store i8 1, i8* %retval
  br label %return

trycat:                                           ; preds = %if.then.12
  %36 = load i8, i8* @forceOverwrite, align 1
  %tobool71 = icmp ne i8 %36, 0
  br i1 %tobool71, label %if.then.72, label %if.end.88

if.then.72:                                       ; preds = %trycat
  %37 = load i32, i32* %zStream.addr, align 4
  %call73 = call i32 @spec_rewind(i32 %37)
  br label %while.body.74

while.body.74:                                    ; preds = %if.then.72, %if.end.86
  %38 = load i32, i32* %zStream.addr, align 4
  %call75 = call zeroext i8 @myfeof(i32 %38)
  %tobool76 = icmp ne i8 %call75, 0
  br i1 %tobool76, label %if.then.77, label %if.end.78

if.then.77:                                       ; preds = %while.body.74
  br label %while.end.87

if.end.78:                                        ; preds = %while.body.74
  %arraydecay79 = getelementptr inbounds [5000 x i8], [5000 x i8]* %obuf, i32 0, i32 0
  %39 = load i32, i32* %zStream.addr, align 4
  %call80 = call i32 @spec_fread(i8* %arraydecay79, i32 1, i32 5000, i32 %39)
  store i32 %call80, i32* %nread, align 4
  %40 = load i32, i32* %nread, align 4
  %cmp81 = icmp sgt i32 %40, 0
  br i1 %cmp81, label %if.then.83, label %if.end.86

if.then.83:                                       ; preds = %if.end.78
  %arraydecay84 = getelementptr inbounds [5000 x i8], [5000 x i8]* %obuf, i32 0, i32 0
  %41 = load i32, i32* %nread, align 4
  %42 = load i32, i32* %stream.addr, align 4
  %call85 = call i32 @spec_fwrite(i8* %arraydecay84, i32 1, i32 %41, i32 %42)
  br label %if.end.86

if.end.86:                                        ; preds = %if.then.83, %if.end.78
  br label %while.body.74

while.end.87:                                     ; preds = %if.then.77
  br label %closeok

if.end.88:                                        ; preds = %trycat
  br label %errhandler

errhandler:                                       ; preds = %if.end.88, %if.then.27, %if.then
  %43 = load i8*, i8** %bzf, align 8
  call void @BZ2_bzReadClose(i32* %bzerr_dummy, i8* %43)
  %44 = load i32, i32* %bzerr, align 4
  switch i32 %44, label %sw.default [
    i32 -9, label %sw.bb
    i32 -6, label %sw.bb.89
    i32 -4, label %sw.bb.90
    i32 -3, label %sw.bb.91
    i32 -7, label %sw.bb.92
    i32 -5, label %sw.bb.93
  ]

sw.bb:                                            ; preds = %errhandler
  call void @configError()
  br label %sw.epilog

sw.bb.89:                                         ; preds = %errhandler
  br label %errhandler_io

errhandler_io:                                    ; preds = %sw.bb.89, %if.then.63, %if.then.56, %if.then.52
  call void @ioError()
  br label %sw.epilog

sw.bb.90:                                         ; preds = %errhandler
  call void @crcError()
  br label %sw.bb.91

sw.bb.91:                                         ; preds = %errhandler, %sw.bb.90
  call void @outOfMemory()
  br label %sw.bb.92

sw.bb.92:                                         ; preds = %errhandler, %sw.bb.91
  call void @compressedStreamEOF()
  br label %sw.bb.93

sw.bb.93:                                         ; preds = %errhandler, %sw.bb.92
  %45 = load i32, i32* %zStream.addr, align 4
  %cmp94 = icmp ne i32 %45, 0
  br i1 %cmp94, label %if.then.96, label %if.end.97

if.then.96:                                       ; preds = %sw.bb.93
  br label %if.end.97

if.end.97:                                        ; preds = %if.then.96, %sw.bb.93
  %46 = load i32, i32* %stream.addr, align 4
  %cmp98 = icmp ne i32 %46, 1
  br i1 %cmp98, label %if.then.100, label %if.end.101

if.then.100:                                      ; preds = %if.end.97
  br label %if.end.101

if.end.101:                                       ; preds = %if.then.100, %if.end.97
  %47 = load i32, i32* %streamNo, align 4
  %cmp102 = icmp eq i32 %47, 1
  br i1 %cmp102, label %if.then.104, label %if.else

if.then.104:                                      ; preds = %if.end.101
  store i8 0, i8* %retval
  br label %return

if.else:                                          ; preds = %if.end.101
  %48 = load i8, i8* @noisy, align 1
  %tobool105 = icmp ne i8 %48, 0
  br i1 %tobool105, label %if.then.106, label %if.end.108

if.then.106:                                      ; preds = %if.else
  %49 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %50 = load i8*, i8** @progName, align 8
  %call107 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %49, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.7, i32 0, i32 0), i8* %50, i8* getelementptr inbounds ([1034 x i8], [1034 x i8]* @inName, i32 0, i32 0))
  br label %if.end.108

if.end.108:                                       ; preds = %if.then.106, %if.else
  store i8 1, i8* %retval
  br label %return

sw.default:                                       ; preds = %errhandler
  call void @panic(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.8, i32 0, i32 0))
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.default, %errhandler_io, %sw.bb
  call void @panic(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.9, i32 0, i32 0))
  store i8 1, i8* %retval
  br label %return

return:                                           ; preds = %sw.epilog, %if.end.108, %if.then.104, %if.end.70
  %51 = load i8, i8* %retval
  ret i8 %51
}

declare i8* @BZ2_bzReadOpen(i32*, i32, i32, i32, i8*, i32) #1

declare i32 @BZ2_bzRead(i32*, i8*, i8*, i32) #1

declare i32 @spec_fwrite(i8*, i32, i32, i32) #1

declare void @BZ2_bzReadGetUnused(i32*, i8*, i8**, i32*) #1

declare void @BZ2_bzReadClose(i32*, i8*) #1

declare i32 @spec_rewind(i32) #1

; Function Attrs: nounwind uwtable
define internal void @crcError() #0 {
entry:
  %0 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %1 = load i8*, i8** @progName, align 8
  %call = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %0, i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str.12, i32 0, i32 0), i8* %1)
  call void @showFileNames()
  call void @cadvise()
  call void @cleanUpAndFail(i32 2)
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @compressedStreamEOF() #0 {
entry:
  %0 = load i8, i8* @noisy, align 1
  %tobool = icmp ne i8 %0, 0
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %1 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %2 = load i8*, i8** @progName, align 8
  %call = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %1, i8* getelementptr inbounds ([95 x i8], [95 x i8]* @.str.14, i32 0, i32 0), i8* %2)
  %3 = load i8*, i8** @progName, align 8
  call void @perror(i8* %3)
  call void @showFileNames()
  call void @cadvise()
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  call void @cleanUpAndFail(i32 2)
  ret void
}

declare i32 @spec_getc(i32) #1

declare i32 @spec_ungetc(i8 zeroext, i32) #1

; Function Attrs: nounwind
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* nocapture, i8* nocapture readonly, i64, i32, i1) #2

; Function Attrs: nounwind uwtable
define internal i32 @uInt64_qrm10(%struct.UInt64* %n) #0 {
entry:
  %n.addr = alloca %struct.UInt64*, align 8
  %rem = alloca i32, align 4
  %tmp = alloca i32, align 4
  %i = alloca i32, align 4
  store %struct.UInt64* %n, %struct.UInt64** %n.addr, align 8
  store i32 0, i32* %rem, align 4
  store i32 7, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %0 = load i32, i32* %i, align 4
  %cmp = icmp sge i32 %0, 0
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %1 = load i32, i32* %rem, align 4
  %mul = mul i32 %1, 256
  %2 = load i32, i32* %i, align 4
  %idxprom = sext i32 %2 to i64
  %3 = load %struct.UInt64*, %struct.UInt64** %n.addr, align 8
  %b = getelementptr inbounds %struct.UInt64, %struct.UInt64* %3, i32 0, i32 0
  %arrayidx = getelementptr inbounds [8 x i8], [8 x i8]* %b, i32 0, i64 %idxprom
  %4 = load i8, i8* %arrayidx, align 1
  %conv = zext i8 %4 to i32
  %add = add i32 %mul, %conv
  store i32 %add, i32* %tmp, align 4
  %5 = load i32, i32* %tmp, align 4
  %div = udiv i32 %5, 10
  %conv2 = trunc i32 %div to i8
  %6 = load i32, i32* %i, align 4
  %idxprom3 = sext i32 %6 to i64
  %7 = load %struct.UInt64*, %struct.UInt64** %n.addr, align 8
  %b4 = getelementptr inbounds %struct.UInt64, %struct.UInt64* %7, i32 0, i32 0
  %arrayidx5 = getelementptr inbounds [8 x i8], [8 x i8]* %b4, i32 0, i64 %idxprom3
  store i8 %conv2, i8* %arrayidx5, align 1
  %8 = load i32, i32* %tmp, align 4
  %rem6 = urem i32 %8, 10
  store i32 %rem6, i32* %rem, align 4
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %9 = load i32, i32* %i, align 4
  %dec = add nsw i32 %9, -1
  store i32 %dec, i32* %i, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %10 = load i32, i32* %rem, align 4
  ret i32 %10
}

; Function Attrs: nounwind uwtable
define internal zeroext i8 @uInt64_isZero(%struct.UInt64* %n) #0 {
entry:
  %retval = alloca i8, align 1
  %n.addr = alloca %struct.UInt64*, align 8
  %i = alloca i32, align 4
  store %struct.UInt64* %n, %struct.UInt64** %n.addr, align 8
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %0 = load i32, i32* %i, align 4
  %cmp = icmp slt i32 %0, 8
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %1 = load i32, i32* %i, align 4
  %idxprom = sext i32 %1 to i64
  %2 = load %struct.UInt64*, %struct.UInt64** %n.addr, align 8
  %b = getelementptr inbounds %struct.UInt64, %struct.UInt64* %2, i32 0, i32 0
  %arrayidx = getelementptr inbounds [8 x i8], [8 x i8]* %b, i32 0, i64 %idxprom
  %3 = load i8, i8* %arrayidx, align 1
  %conv = zext i8 %3 to i32
  %cmp1 = icmp ne i32 %conv, 0
  br i1 %cmp1, label %if.then, label %if.end

if.then:                                          ; preds = %for.body
  store i8 0, i8* %retval
  br label %return

if.end:                                           ; preds = %for.body
  br label %for.inc

for.inc:                                          ; preds = %if.end
  %4 = load i32, i32* %i, align 4
  %inc = add nsw i32 %4, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  store i8 1, i8* %retval
  br label %return

return:                                           ; preds = %for.end, %if.then
  %5 = load i8, i8* %retval
  ret i8 %5
}

; Function Attrs: nounwind uwtable
define internal void @showFileNames() #0 {
entry:
  %0 = load i8, i8* @noisy, align 1
  %tobool = icmp ne i8 %0, 0
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %1 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %call = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %1, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.11, i32 0, i32 0), i8* getelementptr inbounds ([1034 x i8], [1034 x i8]* @inName, i32 0, i32 0), i8* getelementptr inbounds ([1034 x i8], [1034 x i8]* @outName, i32 0, i32 0))
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @cleanUpAndFail(i32 %ec) #0 {
entry:
  %ec.addr = alloca i32, align 4
  %retVal = alloca i32, align 4
  store i32 %ec, i32* %ec.addr, align 4
  %0 = load i32, i32* %ec.addr, align 4
  call void @setExit(i32 %0)
  %1 = load i32, i32* @exitValue, align 4
  call void @exit(i32 %1) #4
  unreachable

return:                                           ; No predecessors!
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @setExit(i32 %v) #0 {
entry:
  %v.addr = alloca i32, align 4
  store i32 %v, i32* %v.addr, align 4
  store i32 0, i32* @exitValue, align 4
  ret void
}

; Function Attrs: noreturn nounwind
declare void @exit(i32) #3

; Function Attrs: nounwind uwtable
define internal void @cadvise() #0 {
entry:
  %0 = load i8, i8* @noisy, align 1
  %tobool = icmp ne i8 %0, 0
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %1 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %call = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %1, i8* getelementptr inbounds ([241 x i8], [241 x i8]* @.str.13, i32 0, i32 0))
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  ret void
}

declare void @perror(i8*) #1

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind }
attributes #3 = { noreturn nounwind "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { noreturn nounwind }

!llvm.ident = !{!0}

!0 = !{!"clang version 3.7.0 (tags/RELEASE_370/final)"}
