; ModuleID = './MultiSource.Applications.ClamAV/14.libclamav_autoit.bc'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cli_ctx = type { i8**, i64*, %struct.cli_matcher*, %struct.cl_engine*, %struct.cl_limits*, i32, i32, i32, i32, %struct.cli_dconf* }
%struct.cli_matcher = type opaque
%struct.cl_engine = type { i32, i16, i32, i8**, i8**, i8*, i8*, i8*, i8*, i8*, i8*, i8* }
%struct.cl_limits = type { i32, i32, i32, i32, i16, i64 }
%struct.cli_dconf = type { i32, i32, i32, i32, i32, i32, i32 }
%struct.UNP = type { i8*, i8*, i32, i32, i32, i32, i32, %union.anon, i32 }
%union.anon = type { i32 }
%struct.MT = type { [624 x i32], i32, i32* }
%struct.anon = type { i16, i16 }
%struct.LAME = type { i32, i32, [17 x i32] }
%union.anon.0 = type { double }
%struct.anon.1 = type { i32, i32 }

@.str = private unnamed_addr constant [17 x i8] c"in scanautoit()\0A\00", align 1
@.str.1 = private unnamed_addr constant [45 x i8] c"autoit: Can't create temporary directory %s\0A\00", align 1
@cli_leavetemps_flag = external global i8, align 1
@.str.2 = private unnamed_addr constant [32 x i8] c"autoit: Extracting files to %s\0A\00", align 1
@.str.3 = private unnamed_addr constant [24 x i8] c"autoit: unknown method\0A\00", align 1
@.str.4 = private unnamed_addr constant [50 x i8] c"autoit: no FILE magic found, extraction complete\0A\00", align 1
@cli_debug_flag = external global i8, align 1
@.str.5 = private unnamed_addr constant [27 x i8] c"autoit: magic string '%s'\0A\00", align 1
@.str.6 = private unnamed_addr constant [32 x i8] c"autoit: original filename '%s'\0A\00", align 1
@.str.7 = private unnamed_addr constant [35 x i8] c"autoit: bad file size - giving up\0A\00", align 1
@.str.8 = private unnamed_addr constant [29 x i8] c"autoit: skipping empty file\0A\00", align 1
@.str.9 = private unnamed_addr constant [29 x i8] c"autoit: compressed size: %x\0A\00", align 1
@.str.10 = private unnamed_addr constant [41 x i8] c"autoit: advertised uncompressed size %x\0A\00", align 1
@.str.11 = private unnamed_addr constant [24 x i8] c"autoit: ref chksum: %x\0A\00", align 1
@.str.12 = private unnamed_addr constant [56 x i8] c"autoit: skipping file due to size limit (%u, max: %lu)\0A\00", align 1
@.str.13 = private unnamed_addr constant [66 x i8] c"autoit: failed to read compressed stream. broken/truncated file?\0A\00", align 1
@.str.14 = private unnamed_addr constant [28 x i8] c"autoit: file is compressed\0A\00", align 1
@.str.15 = private unnamed_addr constant [42 x i8] c"autoit: bad magic or unsupported version\0A\00", align 1
@.str.16 = private unnamed_addr constant [37 x i8] c"autoit: uncompressed size again: %x\0A\00", align 1
@.str.17 = private unnamed_addr constant [54 x i8] c"autoit: decompression error - partial file may exist\0A\00", align 1
@.str.18 = private unnamed_addr constant [32 x i8] c"autoit: file is not compressed\0A\00", align 1
@.str.19 = private unnamed_addr constant [15 x i8] c"%s/autoit.%.3u\00", align 1
@.str.20 = private unnamed_addr constant [30 x i8] c"autoit: Can't create file %s\0A\00", align 1
@.str.21 = private unnamed_addr constant [31 x i8] c"autoit: cannot write %d bytes\0A\00", align 1
@.str.22 = private unnamed_addr constant [30 x i8] c"autoit: file extracted to %s\0A\00", align 1
@.str.23 = private unnamed_addr constant [37 x i8] c"autoit: file successfully extracted\0A\00", align 1
@.str.24 = private unnamed_addr constant [39 x i8] c"autoit: files limit reached (max: %u)\0A\00", align 1
@.str.25 = private unnamed_addr constant [47 x i8] c"autoit: getbits() - not enough bits available\0A\00", align 1
@ea06.prefixes = internal constant [8 x i8] c"\00\00@$\00.\22#", align 1
@.str.26 = private unnamed_addr constant [2 x i8] c",\00", align 1
@.str.27 = private unnamed_addr constant [2 x i8] c"=\00", align 1
@.str.28 = private unnamed_addr constant [2 x i8] c">\00", align 1
@.str.29 = private unnamed_addr constant [2 x i8] c"<\00", align 1
@.str.30 = private unnamed_addr constant [3 x i8] c"<>\00", align 1
@.str.31 = private unnamed_addr constant [3 x i8] c">=\00", align 1
@.str.32 = private unnamed_addr constant [3 x i8] c"<=\00", align 1
@.str.33 = private unnamed_addr constant [2 x i8] c"(\00", align 1
@.str.34 = private unnamed_addr constant [2 x i8] c")\00", align 1
@.str.35 = private unnamed_addr constant [2 x i8] c"+\00", align 1
@.str.36 = private unnamed_addr constant [2 x i8] c"-\00", align 1
@.str.37 = private unnamed_addr constant [2 x i8] c"/\00", align 1
@.str.38 = private unnamed_addr constant [2 x i8] c"*\00", align 1
@.str.39 = private unnamed_addr constant [2 x i8] c"&\00", align 1
@.str.40 = private unnamed_addr constant [2 x i8] c"[\00", align 1
@.str.41 = private unnamed_addr constant [2 x i8] c"]\00", align 1
@.str.42 = private unnamed_addr constant [3 x i8] c"==\00", align 1
@.str.43 = private unnamed_addr constant [2 x i8] c"^\00", align 1
@.str.44 = private unnamed_addr constant [3 x i8] c"+=\00", align 1
@.str.45 = private unnamed_addr constant [3 x i8] c"-=\00", align 1
@.str.46 = private unnamed_addr constant [3 x i8] c"/=\00", align 1
@.str.47 = private unnamed_addr constant [3 x i8] c"*=\00", align 1
@.str.48 = private unnamed_addr constant [3 x i8] c"&=\00", align 1
@ea06.opers = private unnamed_addr constant [23 x i8*] [i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.26, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.27, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.28, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.29, i32 0, i32 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.30, i32 0, i32 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.31, i32 0, i32 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.32, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.33, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.34, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.35, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.36, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.37, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.38, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.39, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.40, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.41, i32 0, i32 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.42, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.43, i32 0, i32 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.44, i32 0, i32 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.45, i32 0, i32 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.46, i32 0, i32 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.47, i32 0, i32 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.48, i32 0, i32 0)], align 16
@.str.49 = private unnamed_addr constant [40 x i8] c"autoit: no FILE magic found, giving up\0A\00", align 1
@.str.50 = private unnamed_addr constant [20 x i8] c">>>AUTOIT SCRIPT<<<\00", align 1
@.str.51 = private unnamed_addr constant [40 x i8] c"autoit: magic string too long to print\0A\00", align 1
@.str.52 = private unnamed_addr constant [27 x i8] c"autoit: file is too short\0A\00", align 1
@.str.53 = private unnamed_addr constant [33 x i8] c"autoit: script has got %u lines\0A\00", align 1
@.str.54 = private unnamed_addr constant [37 x i8] c"autoit: not enough space for an int\0A\00", align 1
@.str.55 = private unnamed_addr constant [8 x i8] c"0x%08x \00", align 1
@.str.56 = private unnamed_addr constant [39 x i8] c"autoit: not enough space for an int64\0A\00", align 1
@.str.57 = private unnamed_addr constant [10 x i8] c"0x%016lx \00", align 1
@.str.58 = private unnamed_addr constant [39 x i8] c"autoit: not enough space for a double\0A\00", align 1
@.str.59 = private unnamed_addr constant [4 x i8] c"%g \00", align 1
@.str.60 = private unnamed_addr constant [35 x i8] c"autoit: not enough space for size\0A\00", align 1
@.str.61 = private unnamed_addr constant [54 x i8] c"autoit: size too big - needed %d, total %d, avail %d\0A\00", align 1
@.str.62 = private unnamed_addr constant [4 x i8] c"%s \00", align 1
@.str.63 = private unnamed_addr constant [31 x i8] c"autoit: found unknown op (%x)\0A\00", align 1
@.str.64 = private unnamed_addr constant [58 x i8] c"autoit: decompilation aborted - partial script may exist\0A\00", align 1
@.str.65 = private unnamed_addr constant [28 x i8] c"autoit: %s extracted to %s\0A\00", align 1
@.str.66 = private unnamed_addr constant [7 x i8] c"script\00", align 1
@.str.67 = private unnamed_addr constant [5 x i8] c"file\00", align 1
@.str.68 = private unnamed_addr constant [35 x i8] c"autoit: %s successfully extracted\0A\00", align 1
@.str.69 = private unnamed_addr constant [39 x i8] c"autoit: Files limit reached (max: %u)\0A\00", align 1

; Function Attrs: nounwind uwtable
define i32 @cli_scanautoit(i32 %desc, %struct.cli_ctx* %ctx, i64 %offset) #0 {
entry:
  %retval = alloca i32, align 4
  %desc.addr = alloca i32, align 4
  %ctx.addr = alloca %struct.cli_ctx*, align 8
  %offset.addr = alloca i64, align 8
  %version = alloca i8, align 1
  %r = alloca i32, align 4
  %tmpd = alloca i8*, align 8
  store i32 %desc, i32* %desc.addr, align 4
  store %struct.cli_ctx* %ctx, %struct.cli_ctx** %ctx.addr, align 8
  store i64 %offset, i64* %offset.addr, align 8
  %0 = load i32, i32* %desc.addr, align 4
  %1 = load i64, i64* %offset.addr, align 8
  %call = call i64 @lseek(i32 %0, i64 %1, i32 0) #3
  %2 = load i32, i32* %desc.addr, align 4
  %call1 = call i32 @cli_readn(i32 %2, i8* %version, i32 1)
  %cmp = icmp ne i32 %call1, 1
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store i32 -123, i32* %retval
  br label %return

if.end:                                           ; preds = %entry
  call void (i8*, ...) @cli_dbgmsg(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str, i32 0, i32 0))
  %call2 = call i8* @cli_gentemp(i8* null)
  store i8* %call2, i8** %tmpd, align 8
  %tobool = icmp ne i8* %call2, null
  br i1 %tobool, label %if.end.4, label %if.then.3

if.then.3:                                        ; preds = %if.end
  store i32 -118, i32* %retval
  br label %return

if.end.4:                                         ; preds = %if.end
  %3 = load i8*, i8** %tmpd, align 8
  %call5 = call i32 @mkdir(i8* %3, i32 448) #3
  %tobool6 = icmp ne i32 %call5, 0
  br i1 %tobool6, label %if.then.7, label %if.end.8

if.then.7:                                        ; preds = %if.end.4
  %4 = load i8*, i8** %tmpd, align 8
  call void (i8*, ...) @cli_dbgmsg(i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.1, i32 0, i32 0), i8* %4)
  %5 = load i8*, i8** %tmpd, align 8
  call void @free(i8* %5) #3
  store i32 -118, i32* %retval
  br label %return

if.end.8:                                         ; preds = %if.end.4
  %6 = load i8, i8* @cli_leavetemps_flag, align 1
  %tobool9 = icmp ne i8 %6, 0
  br i1 %tobool9, label %if.then.10, label %if.end.11

if.then.10:                                       ; preds = %if.end.8
  %7 = load i8*, i8** %tmpd, align 8
  call void (i8*, ...) @cli_dbgmsg(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.2, i32 0, i32 0), i8* %7)
  br label %if.end.11

if.end.11:                                        ; preds = %if.then.10, %if.end.8
  %8 = load i8, i8* %version, align 1
  %conv = zext i8 %8 to i32
  switch i32 %conv, label %sw.default [
    i32 53, label %sw.bb
    i32 54, label %sw.bb.13
  ]

sw.bb:                                            ; preds = %if.end.11
  %9 = load i32, i32* %desc.addr, align 4
  %10 = load %struct.cli_ctx*, %struct.cli_ctx** %ctx.addr, align 8
  %11 = load i8*, i8** %tmpd, align 8
  %call12 = call i32 @ea05(i32 %9, %struct.cli_ctx* %10, i8* %11)
  store i32 %call12, i32* %r, align 4
  br label %sw.epilog

sw.bb.13:                                         ; preds = %if.end.11
  %12 = load i32, i32* %desc.addr, align 4
  %13 = load %struct.cli_ctx*, %struct.cli_ctx** %ctx.addr, align 8
  %14 = load i8*, i8** %tmpd, align 8
  %call14 = call i32 @ea06(i32 %12, %struct.cli_ctx* %13, i8* %14)
  store i32 %call14, i32* %r, align 4
  br label %sw.epilog

sw.default:                                       ; preds = %if.end.11
  call void (i8*, ...) @cli_dbgmsg(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.3, i32 0, i32 0))
  store i32 0, i32* %r, align 4
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.default, %sw.bb.13, %sw.bb
  %15 = load i8, i8* @cli_leavetemps_flag, align 1
  %tobool15 = icmp ne i8 %15, 0
  br i1 %tobool15, label %if.end.18, label %if.then.16

if.then.16:                                       ; preds = %sw.epilog
  %16 = load i8*, i8** %tmpd, align 8
  %call17 = call i32 @cli_rmdirs(i8* %16)
  br label %if.end.18

if.end.18:                                        ; preds = %if.then.16, %sw.epilog
  %17 = load i8*, i8** %tmpd, align 8
  call void @free(i8* %17) #3
  %18 = load i32, i32* %r, align 4
  store i32 %18, i32* %retval
  br label %return

return:                                           ; preds = %if.end.18, %if.then.7, %if.then.3, %if.then
  %19 = load i32, i32* %retval
  ret i32 %19
}

; Function Attrs: nounwind
declare i64 @lseek(i32, i64, i32) #1

declare i32 @cli_readn(i32, i8*, i32) #2

declare void @cli_dbgmsg(i8*, ...) #2

declare i8* @cli_gentemp(i8*) #2

; Function Attrs: nounwind
declare i32 @mkdir(i8*, i32) #1

; Function Attrs: nounwind
declare void @free(i8*) #1

; Function Attrs: nounwind uwtable
define internal i32 @ea05(i32 %desc, %struct.cli_ctx* %ctx, i8* %tmpd) #0 {
entry:
  %retval = alloca i32, align 4
  %desc.addr = alloca i32, align 4
  %ctx.addr = alloca %struct.cli_ctx*, align 8
  %tmpd.addr = alloca i8*, align 8
  %b = alloca [300 x i8], align 16
  %comp = alloca i8, align 1
  %buf = alloca i8*, align 8
  %s = alloca i32, align 4
  %m4sum = alloca i32, align 4
  %i = alloca i32, align 4
  %files = alloca i32, align 4
  %tempfile = alloca [1024 x i8], align 16
  %UNP = alloca %struct.UNP, align 8
  %bb = alloca i32, align 4
  %bs = alloca i32, align 4
  %addme = alloca i32, align 4
  store i32 %desc, i32* %desc.addr, align 4
  store %struct.cli_ctx* %ctx, %struct.cli_ctx** %ctx.addr, align 8
  store i8* %tmpd, i8** %tmpd.addr, align 8
  %arraydecay = getelementptr inbounds [300 x i8], [300 x i8]* %b, i32 0, i32 0
  store i8* %arraydecay, i8** %buf, align 8
  store i32 0, i32* %m4sum, align 4
  store i32 0, i32* %files, align 4
  %0 = load i32, i32* %desc.addr, align 4
  %1 = load i8*, i8** %buf, align 8
  %call = call i32 @cli_readn(i32 %0, i8* %1, i32 16)
  %cmp = icmp ne i32 %call, 16
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store i32 0, i32* %retval
  br label %return

if.end:                                           ; preds = %entry
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end
  %2 = load i32, i32* %i, align 4
  %cmp1 = icmp slt i32 %2, 16
  br i1 %cmp1, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %3 = load i32, i32* %i, align 4
  %idxprom = sext i32 %3 to i64
  %4 = load i8*, i8** %buf, align 8
  %arrayidx = getelementptr inbounds i8, i8* %4, i64 %idxprom
  %5 = load i8, i8* %arrayidx, align 1
  %conv = zext i8 %5 to i32
  %6 = load i32, i32* %m4sum, align 4
  %add = add i32 %6, %conv
  store i32 %add, i32* %m4sum, align 4
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %7 = load i32, i32* %i, align 4
  %inc = add nsw i32 %7, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  br label %while.cond

while.cond:                                       ; preds = %if.end.385, %if.then.160, %if.then.131, %if.then.102, %if.then.83, %for.end
  %8 = load %struct.cli_ctx*, %struct.cli_ctx** %ctx.addr, align 8
  %limits = getelementptr inbounds %struct.cli_ctx, %struct.cli_ctx* %8, i32 0, i32 4
  %9 = load %struct.cl_limits*, %struct.cl_limits** %limits, align 8
  %tobool = icmp ne %struct.cl_limits* %9, null
  br i1 %tobool, label %lor.lhs.false, label %lor.end

lor.lhs.false:                                    ; preds = %while.cond
  %10 = load %struct.cli_ctx*, %struct.cli_ctx** %ctx.addr, align 8
  %limits2 = getelementptr inbounds %struct.cli_ctx, %struct.cli_ctx* %10, i32 0, i32 4
  %11 = load %struct.cl_limits*, %struct.cl_limits** %limits2, align 8
  %maxfiles = getelementptr inbounds %struct.cl_limits, %struct.cl_limits* %11, i32 0, i32 1
  %12 = load i32, i32* %maxfiles, align 4
  %tobool3 = icmp ne i32 %12, 0
  br i1 %tobool3, label %lor.rhs, label %lor.end

lor.rhs:                                          ; preds = %lor.lhs.false
  %13 = load i32, i32* %files, align 4
  %14 = load %struct.cli_ctx*, %struct.cli_ctx** %ctx.addr, align 8
  %limits4 = getelementptr inbounds %struct.cli_ctx, %struct.cli_ctx* %14, i32 0, i32 4
  %15 = load %struct.cl_limits*, %struct.cl_limits** %limits4, align 8
  %maxfiles5 = getelementptr inbounds %struct.cl_limits, %struct.cl_limits* %15, i32 0, i32 1
  %16 = load i32, i32* %maxfiles5, align 4
  %cmp6 = icmp ult i32 %13, %16
  br label %lor.end

lor.end:                                          ; preds = %lor.rhs, %lor.lhs.false, %while.cond
  %17 = phi i1 [ true, %lor.lhs.false ], [ true, %while.cond ], [ %cmp6, %lor.rhs ]
  br i1 %17, label %while.body, label %while.end.386

while.body:                                       ; preds = %lor.end
  %arraydecay8 = getelementptr inbounds [300 x i8], [300 x i8]* %b, i32 0, i32 0
  store i8* %arraydecay8, i8** %buf, align 8
  %18 = load i32, i32* %desc.addr, align 4
  %19 = load i8*, i8** %buf, align 8
  %call9 = call i32 @cli_readn(i32 %18, i8* %19, i32 8)
  %cmp10 = icmp ne i32 %call9, 8
  br i1 %cmp10, label %if.then.12, label %if.end.13

if.then.12:                                       ; preds = %while.body
  store i32 0, i32* %retval
  br label %return

if.end.13:                                        ; preds = %while.body
  %20 = load i8*, i8** %buf, align 8
  %21 = bitcast i8* %20 to i32*
  %22 = load i32, i32* %21, align 4
  %cmp14 = icmp ne i32 %22, -827298305
  br i1 %cmp14, label %if.then.16, label %if.end.17

if.then.16:                                       ; preds = %if.end.13
  call void (i8*, ...) @cli_dbgmsg(i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str.4, i32 0, i32 0))
  store i32 0, i32* %retval
  br label %return

if.end.17:                                        ; preds = %if.end.13
  %23 = load i8*, i8** %buf, align 8
  %add.ptr = getelementptr inbounds i8, i8* %23, i64 4
  %24 = bitcast i8* %add.ptr to i32*
  %25 = load i32, i32* %24, align 4
  %xor = xor i32 %25, 10684
  store i32 %xor, i32* %s, align 4
  %26 = load i32, i32* %s, align 4
  %cmp18 = icmp slt i32 %26, 0
  br i1 %cmp18, label %if.then.20, label %if.end.21

if.then.20:                                       ; preds = %if.end.17
  store i32 0, i32* %retval
  br label %return

if.end.21:                                        ; preds = %if.end.17
  %27 = load i8, i8* @cli_debug_flag, align 1
  %conv22 = zext i8 %27 to i32
  %tobool23 = icmp ne i32 %conv22, 0
  br i1 %tobool23, label %land.lhs.true, label %if.else

land.lhs.true:                                    ; preds = %if.end.21
  %28 = load i32, i32* %s, align 4
  %conv24 = zext i32 %28 to i64
  %cmp25 = icmp ult i64 %conv24, 300
  br i1 %cmp25, label %if.then.27, label %if.else

if.then.27:                                       ; preds = %land.lhs.true
  %29 = load i32, i32* %desc.addr, align 4
  %30 = load i8*, i8** %buf, align 8
  %31 = load i32, i32* %s, align 4
  %call28 = call i32 @cli_readn(i32 %29, i8* %30, i32 %31)
  %32 = load i32, i32* %s, align 4
  %cmp29 = icmp ne i32 %call28, %32
  br i1 %cmp29, label %if.then.31, label %if.end.32

if.then.31:                                       ; preds = %if.then.27
  store i32 0, i32* %retval
  br label %return

if.end.32:                                        ; preds = %if.then.27
  %33 = load i32, i32* %s, align 4
  %idxprom33 = zext i32 %33 to i64
  %34 = load i8*, i8** %buf, align 8
  %arrayidx34 = getelementptr inbounds i8, i8* %34, i64 %idxprom33
  store i8 0, i8* %arrayidx34, align 1
  %35 = load i8*, i8** %buf, align 8
  %36 = load i32, i32* %s, align 4
  %37 = load i32, i32* %s, align 4
  %add35 = add i32 %37, 41566
  call void @MT_decrypt(i8* %35, i32 %36, i32 %add35)
  %38 = load i8*, i8** %buf, align 8
  call void (i8*, ...) @cli_dbgmsg(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.5, i32 0, i32 0), i8* %38)
  br label %if.end.38

if.else:                                          ; preds = %land.lhs.true, %if.end.21
  %39 = load i32, i32* %desc.addr, align 4
  %40 = load i32, i32* %s, align 4
  %conv36 = zext i32 %40 to i64
  %call37 = call i64 @lseek(i32 %39, i64 %conv36, i32 1) #3
  br label %if.end.38

if.end.38:                                        ; preds = %if.else, %if.end.32
  %41 = load i32, i32* %desc.addr, align 4
  %42 = load i8*, i8** %buf, align 8
  %call39 = call i32 @cli_readn(i32 %41, i8* %42, i32 4)
  %cmp40 = icmp ne i32 %call39, 4
  br i1 %cmp40, label %if.then.42, label %if.end.43

if.then.42:                                       ; preds = %if.end.38
  store i32 0, i32* %retval
  br label %return

if.end.43:                                        ; preds = %if.end.38
  %43 = load i8*, i8** %buf, align 8
  %44 = bitcast i8* %43 to i32*
  %45 = load i32, i32* %44, align 4
  %xor44 = xor i32 %45, 10668
  store i32 %xor44, i32* %s, align 4
  %46 = load i32, i32* %s, align 4
  %cmp45 = icmp slt i32 %46, 0
  br i1 %cmp45, label %if.then.47, label %if.end.48

if.then.47:                                       ; preds = %if.end.43
  store i32 0, i32* %retval
  br label %return

if.end.48:                                        ; preds = %if.end.43
  %47 = load i8, i8* @cli_debug_flag, align 1
  %conv49 = zext i8 %47 to i32
  %tobool50 = icmp ne i32 %conv49, 0
  br i1 %tobool50, label %land.lhs.true.51, label %if.else.64

land.lhs.true.51:                                 ; preds = %if.end.48
  %48 = load i32, i32* %s, align 4
  %conv52 = zext i32 %48 to i64
  %cmp53 = icmp ult i64 %conv52, 300
  br i1 %cmp53, label %if.then.55, label %if.else.64

if.then.55:                                       ; preds = %land.lhs.true.51
  %49 = load i32, i32* %desc.addr, align 4
  %50 = load i8*, i8** %buf, align 8
  %51 = load i32, i32* %s, align 4
  %call56 = call i32 @cli_readn(i32 %49, i8* %50, i32 %51)
  %52 = load i32, i32* %s, align 4
  %cmp57 = icmp ne i32 %call56, %52
  br i1 %cmp57, label %if.then.59, label %if.end.60

if.then.59:                                       ; preds = %if.then.55
  store i32 0, i32* %retval
  br label %return

if.end.60:                                        ; preds = %if.then.55
  %53 = load i8*, i8** %buf, align 8
  %54 = load i32, i32* %s, align 4
  %55 = load i32, i32* %s, align 4
  %add61 = add i32 %55, 62046
  call void @MT_decrypt(i8* %53, i32 %54, i32 %add61)
  %56 = load i32, i32* %s, align 4
  %idxprom62 = zext i32 %56 to i64
  %57 = load i8*, i8** %buf, align 8
  %arrayidx63 = getelementptr inbounds i8, i8* %57, i64 %idxprom62
  store i8 0, i8* %arrayidx63, align 1
  %58 = load i8*, i8** %buf, align 8
  call void (i8*, ...) @cli_dbgmsg(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.6, i32 0, i32 0), i8* %58)
  br label %if.end.67

if.else.64:                                       ; preds = %land.lhs.true.51, %if.end.48
  %59 = load i32, i32* %desc.addr, align 4
  %60 = load i32, i32* %s, align 4
  %conv65 = zext i32 %60 to i64
  %call66 = call i64 @lseek(i32 %59, i64 %conv65, i32 1) #3
  br label %if.end.67

if.end.67:                                        ; preds = %if.else.64, %if.end.60
  %61 = load i32, i32* %desc.addr, align 4
  %62 = load i8*, i8** %buf, align 8
  %call68 = call i32 @cli_readn(i32 %61, i8* %62, i32 13)
  %cmp69 = icmp ne i32 %call68, 13
  br i1 %cmp69, label %if.then.71, label %if.end.72

if.then.71:                                       ; preds = %if.end.67
  store i32 0, i32* %retval
  br label %return

if.end.72:                                        ; preds = %if.end.67
  %63 = load i8*, i8** %buf, align 8
  %64 = load i8, i8* %63, align 1
  store i8 %64, i8* %comp, align 1
  %65 = load i8*, i8** %buf, align 8
  %add.ptr73 = getelementptr inbounds i8, i8* %65, i64 1
  %66 = bitcast i8* %add.ptr73 to i32*
  %67 = load i32, i32* %66, align 4
  %xor74 = xor i32 %67, 17834
  %csize = getelementptr inbounds %struct.UNP, %struct.UNP* %UNP, i32 0, i32 5
  store i32 %xor74, i32* %csize, align 4
  %csize75 = getelementptr inbounds %struct.UNP, %struct.UNP* %UNP, i32 0, i32 5
  %68 = load i32, i32* %csize75, align 4
  %cmp76 = icmp slt i32 %68, 0
  br i1 %cmp76, label %if.then.78, label %if.end.79

if.then.78:                                       ; preds = %if.end.72
  call void (i8*, ...) @cli_dbgmsg(i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.7, i32 0, i32 0))
  store i32 0, i32* %retval
  br label %return

if.end.79:                                        ; preds = %if.end.72
  %69 = load i32, i32* %desc.addr, align 4
  %call80 = call i64 @lseek(i32 %69, i64 16, i32 1) #3
  %csize81 = getelementptr inbounds %struct.UNP, %struct.UNP* %UNP, i32 0, i32 5
  %70 = load i32, i32* %csize81, align 4
  %tobool82 = icmp ne i32 %70, 0
  br i1 %tobool82, label %if.end.84, label %if.then.83

if.then.83:                                       ; preds = %if.end.79
  call void (i8*, ...) @cli_dbgmsg(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.8, i32 0, i32 0))
  br label %while.cond

if.end.84:                                        ; preds = %if.end.79
  %csize85 = getelementptr inbounds %struct.UNP, %struct.UNP* %UNP, i32 0, i32 5
  %71 = load i32, i32* %csize85, align 4
  call void (i8*, ...) @cli_dbgmsg(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.9, i32 0, i32 0), i32 %71)
  %72 = load i8*, i8** %buf, align 8
  %add.ptr86 = getelementptr inbounds i8, i8* %72, i64 5
  %73 = bitcast i8* %add.ptr86 to i32*
  %74 = load i32, i32* %73, align 4
  %xor87 = xor i32 %74, 17834
  call void (i8*, ...) @cli_dbgmsg(i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.10, i32 0, i32 0), i32 %xor87)
  %75 = load i8*, i8** %buf, align 8
  %add.ptr88 = getelementptr inbounds i8, i8* %75, i64 9
  %76 = bitcast i8* %add.ptr88 to i32*
  %77 = load i32, i32* %76, align 4
  %xor89 = xor i32 %77, 50130
  call void (i8*, ...) @cli_dbgmsg(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.11, i32 0, i32 0), i32 %xor89)
  %78 = load %struct.cli_ctx*, %struct.cli_ctx** %ctx.addr, align 8
  %limits90 = getelementptr inbounds %struct.cli_ctx, %struct.cli_ctx* %78, i32 0, i32 4
  %79 = load %struct.cl_limits*, %struct.cl_limits** %limits90, align 8
  %tobool91 = icmp ne %struct.cl_limits* %79, null
  br i1 %tobool91, label %land.lhs.true.92, label %if.end.109

land.lhs.true.92:                                 ; preds = %if.end.84
  %80 = load %struct.cli_ctx*, %struct.cli_ctx** %ctx.addr, align 8
  %limits93 = getelementptr inbounds %struct.cli_ctx, %struct.cli_ctx* %80, i32 0, i32 4
  %81 = load %struct.cl_limits*, %struct.cl_limits** %limits93, align 8
  %maxfilesize = getelementptr inbounds %struct.cl_limits, %struct.cl_limits* %81, i32 0, i32 5
  %82 = load i64, i64* %maxfilesize, align 8
  %tobool94 = icmp ne i64 %82, 0
  br i1 %tobool94, label %land.lhs.true.95, label %if.end.109

land.lhs.true.95:                                 ; preds = %land.lhs.true.92
  %csize96 = getelementptr inbounds %struct.UNP, %struct.UNP* %UNP, i32 0, i32 5
  %83 = load i32, i32* %csize96, align 4
  %conv97 = zext i32 %83 to i64
  %84 = load %struct.cli_ctx*, %struct.cli_ctx** %ctx.addr, align 8
  %limits98 = getelementptr inbounds %struct.cli_ctx, %struct.cli_ctx* %84, i32 0, i32 4
  %85 = load %struct.cl_limits*, %struct.cl_limits** %limits98, align 8
  %maxfilesize99 = getelementptr inbounds %struct.cl_limits, %struct.cl_limits* %85, i32 0, i32 5
  %86 = load i64, i64* %maxfilesize99, align 8
  %cmp100 = icmp ugt i64 %conv97, %86
  br i1 %cmp100, label %if.then.102, label %if.end.109

if.then.102:                                      ; preds = %land.lhs.true.95
  %csize103 = getelementptr inbounds %struct.UNP, %struct.UNP* %UNP, i32 0, i32 5
  %87 = load i32, i32* %csize103, align 4
  %88 = load %struct.cli_ctx*, %struct.cli_ctx** %ctx.addr, align 8
  %limits104 = getelementptr inbounds %struct.cli_ctx, %struct.cli_ctx* %88, i32 0, i32 4
  %89 = load %struct.cl_limits*, %struct.cl_limits** %limits104, align 8
  %maxfilesize105 = getelementptr inbounds %struct.cl_limits, %struct.cl_limits* %89, i32 0, i32 5
  %90 = load i64, i64* %maxfilesize105, align 8
  call void (i8*, ...) @cli_dbgmsg(i8* getelementptr inbounds ([56 x i8], [56 x i8]* @.str.12, i32 0, i32 0), i32 %87, i64 %90)
  %91 = load i32, i32* %desc.addr, align 4
  %csize106 = getelementptr inbounds %struct.UNP, %struct.UNP* %UNP, i32 0, i32 5
  %92 = load i32, i32* %csize106, align 4
  %conv107 = zext i32 %92 to i64
  %call108 = call i64 @lseek(i32 %91, i64 %conv107, i32 1) #3
  br label %while.cond

if.end.109:                                       ; preds = %land.lhs.true.95, %land.lhs.true.92, %if.end.84
  %csize110 = getelementptr inbounds %struct.UNP, %struct.UNP* %UNP, i32 0, i32 5
  %93 = load i32, i32* %csize110, align 4
  %conv111 = zext i32 %93 to i64
  %call112 = call i8* @cli_malloc(i64 %conv111)
  store i8* %call112, i8** %buf, align 8
  %tobool113 = icmp ne i8* %call112, null
  br i1 %tobool113, label %if.end.115, label %if.then.114

if.then.114:                                      ; preds = %if.end.109
  store i32 -114, i32* %retval
  br label %return

if.end.115:                                       ; preds = %if.end.109
  %94 = load i32, i32* %desc.addr, align 4
  %95 = load i8*, i8** %buf, align 8
  %csize116 = getelementptr inbounds %struct.UNP, %struct.UNP* %UNP, i32 0, i32 5
  %96 = load i32, i32* %csize116, align 4
  %call117 = call i32 @cli_readn(i32 %94, i8* %95, i32 %96)
  %csize118 = getelementptr inbounds %struct.UNP, %struct.UNP* %UNP, i32 0, i32 5
  %97 = load i32, i32* %csize118, align 4
  %cmp119 = icmp ne i32 %call117, %97
  br i1 %cmp119, label %if.then.121, label %if.end.122

if.then.121:                                      ; preds = %if.end.115
  call void (i8*, ...) @cli_dbgmsg(i8* getelementptr inbounds ([66 x i8], [66 x i8]* @.str.13, i32 0, i32 0))
  %98 = load i8*, i8** %buf, align 8
  call void @free(i8* %98) #3
  store i32 0, i32* %retval
  br label %return

if.end.122:                                       ; preds = %if.end.115
  %99 = load i8*, i8** %buf, align 8
  %csize123 = getelementptr inbounds %struct.UNP, %struct.UNP* %UNP, i32 0, i32 5
  %100 = load i32, i32* %csize123, align 4
  %101 = load i32, i32* %m4sum, align 4
  %add124 = add i32 8879, %101
  call void @MT_decrypt(i8* %99, i32 %100, i32 %add124)
  %102 = load i8, i8* %comp, align 1
  %conv125 = zext i8 %102 to i32
  %cmp126 = icmp eq i32 %conv125, 1
  br i1 %cmp126, label %if.then.128, label %if.else.329

if.then.128:                                      ; preds = %if.end.122
  call void (i8*, ...) @cli_dbgmsg(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.14, i32 0, i32 0))
  %103 = load i8*, i8** %buf, align 8
  %104 = bitcast i8* %103 to i32*
  %105 = load i32, i32* %104, align 4
  %cmp129 = icmp ne i32 %105, 892354885
  br i1 %cmp129, label %if.then.131, label %if.end.132

if.then.131:                                      ; preds = %if.then.128
  call void (i8*, ...) @cli_dbgmsg(i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.15, i32 0, i32 0))
  %106 = load i8*, i8** %buf, align 8
  call void @free(i8* %106) #3
  br label %while.cond

if.end.132:                                       ; preds = %if.then.128
  %107 = load i8*, i8** %buf, align 8
  %add.ptr133 = getelementptr inbounds i8, i8* %107, i64 4
  %108 = bitcast i8* %add.ptr133 to i32*
  %109 = load i32, i32* %108, align 4
  %shr = lshr i32 %109, 24
  %110 = load i8*, i8** %buf, align 8
  %add.ptr134 = getelementptr inbounds i8, i8* %110, i64 4
  %111 = bitcast i8* %add.ptr134 to i32*
  %112 = load i32, i32* %111, align 4
  %and = and i32 %112, 16711680
  %shr135 = lshr i32 %and, 8
  %or = or i32 %shr, %shr135
  %113 = load i8*, i8** %buf, align 8
  %add.ptr136 = getelementptr inbounds i8, i8* %113, i64 4
  %114 = bitcast i8* %add.ptr136 to i32*
  %115 = load i32, i32* %114, align 4
  %and137 = and i32 %115, 65280
  %shl = shl i32 %and137, 8
  %or138 = or i32 %or, %shl
  %116 = load i8*, i8** %buf, align 8
  %add.ptr139 = getelementptr inbounds i8, i8* %116, i64 4
  %117 = bitcast i8* %add.ptr139 to i32*
  %118 = load i32, i32* %117, align 4
  %shl140 = shl i32 %118, 24
  %or141 = or i32 %or138, %shl140
  %usize = getelementptr inbounds %struct.UNP, %struct.UNP* %UNP, i32 0, i32 4
  store i32 %or141, i32* %usize, align 4
  %tobool142 = icmp ne i32 %or141, 0
  br i1 %tobool142, label %if.end.146, label %if.then.143

if.then.143:                                      ; preds = %if.end.132
  %csize144 = getelementptr inbounds %struct.UNP, %struct.UNP* %UNP, i32 0, i32 5
  %119 = load i32, i32* %csize144, align 4
  %usize145 = getelementptr inbounds %struct.UNP, %struct.UNP* %UNP, i32 0, i32 4
  store i32 %119, i32* %usize145, align 4
  br label %if.end.146

if.end.146:                                       ; preds = %if.then.143, %if.end.132
  %120 = load %struct.cli_ctx*, %struct.cli_ctx** %ctx.addr, align 8
  %limits147 = getelementptr inbounds %struct.cli_ctx, %struct.cli_ctx* %120, i32 0, i32 4
  %121 = load %struct.cl_limits*, %struct.cl_limits** %limits147, align 8
  %tobool148 = icmp ne %struct.cl_limits* %121, null
  br i1 %tobool148, label %land.lhs.true.149, label %if.end.164

land.lhs.true.149:                                ; preds = %if.end.146
  %122 = load %struct.cli_ctx*, %struct.cli_ctx** %ctx.addr, align 8
  %limits150 = getelementptr inbounds %struct.cli_ctx, %struct.cli_ctx* %122, i32 0, i32 4
  %123 = load %struct.cl_limits*, %struct.cl_limits** %limits150, align 8
  %maxfilesize151 = getelementptr inbounds %struct.cl_limits, %struct.cl_limits* %123, i32 0, i32 5
  %124 = load i64, i64* %maxfilesize151, align 8
  %tobool152 = icmp ne i64 %124, 0
  br i1 %tobool152, label %land.lhs.true.153, label %if.end.164

land.lhs.true.153:                                ; preds = %land.lhs.true.149
  %usize154 = getelementptr inbounds %struct.UNP, %struct.UNP* %UNP, i32 0, i32 4
  %125 = load i32, i32* %usize154, align 4
  %conv155 = zext i32 %125 to i64
  %126 = load %struct.cli_ctx*, %struct.cli_ctx** %ctx.addr, align 8
  %limits156 = getelementptr inbounds %struct.cli_ctx, %struct.cli_ctx* %126, i32 0, i32 4
  %127 = load %struct.cl_limits*, %struct.cl_limits** %limits156, align 8
  %maxfilesize157 = getelementptr inbounds %struct.cl_limits, %struct.cl_limits* %127, i32 0, i32 5
  %128 = load i64, i64* %maxfilesize157, align 8
  %cmp158 = icmp ugt i64 %conv155, %128
  br i1 %cmp158, label %if.then.160, label %if.end.164

if.then.160:                                      ; preds = %land.lhs.true.153
  %csize161 = getelementptr inbounds %struct.UNP, %struct.UNP* %UNP, i32 0, i32 5
  %129 = load i32, i32* %csize161, align 4
  %130 = load %struct.cli_ctx*, %struct.cli_ctx** %ctx.addr, align 8
  %limits162 = getelementptr inbounds %struct.cli_ctx, %struct.cli_ctx* %130, i32 0, i32 4
  %131 = load %struct.cl_limits*, %struct.cl_limits** %limits162, align 8
  %maxfilesize163 = getelementptr inbounds %struct.cl_limits, %struct.cl_limits* %131, i32 0, i32 5
  %132 = load i64, i64* %maxfilesize163, align 8
  call void (i8*, ...) @cli_dbgmsg(i8* getelementptr inbounds ([56 x i8], [56 x i8]* @.str.12, i32 0, i32 0), i32 %129, i64 %132)
  %133 = load i8*, i8** %buf, align 8
  call void @free(i8* %133) #3
  br label %while.cond

if.end.164:                                       ; preds = %land.lhs.true.153, %land.lhs.true.149, %if.end.146
  %usize165 = getelementptr inbounds %struct.UNP, %struct.UNP* %UNP, i32 0, i32 4
  %134 = load i32, i32* %usize165, align 4
  %conv166 = zext i32 %134 to i64
  %call167 = call i8* @cli_malloc(i64 %conv166)
  %outputbuf = getelementptr inbounds %struct.UNP, %struct.UNP* %UNP, i32 0, i32 0
  store i8* %call167, i8** %outputbuf, align 8
  %tobool168 = icmp ne i8* %call167, null
  br i1 %tobool168, label %if.end.170, label %if.then.169

if.then.169:                                      ; preds = %if.end.164
  %135 = load i8*, i8** %buf, align 8
  call void @free(i8* %135) #3
  store i32 -114, i32* %retval
  br label %return

if.end.170:                                       ; preds = %if.end.164
  %usize171 = getelementptr inbounds %struct.UNP, %struct.UNP* %UNP, i32 0, i32 4
  %136 = load i32, i32* %usize171, align 4
  call void (i8*, ...) @cli_dbgmsg(i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.16, i32 0, i32 0), i32 %136)
  %137 = load i8*, i8** %buf, align 8
  %inputbuf = getelementptr inbounds %struct.UNP, %struct.UNP* %UNP, i32 0, i32 1
  store i8* %137, i8** %inputbuf, align 8
  %cur_output = getelementptr inbounds %struct.UNP, %struct.UNP* %UNP, i32 0, i32 2
  store i32 0, i32* %cur_output, align 4
  %cur_input = getelementptr inbounds %struct.UNP, %struct.UNP* %UNP, i32 0, i32 3
  store i32 8, i32* %cur_input, align 4
  %bitmap = getelementptr inbounds %struct.UNP, %struct.UNP* %UNP, i32 0, i32 7
  %full = bitcast %union.anon* %bitmap to i32*
  store i32 0, i32* %full, align 4
  %bits_avail = getelementptr inbounds %struct.UNP, %struct.UNP* %UNP, i32 0, i32 6
  store i32 0, i32* %bits_avail, align 4
  %error = getelementptr inbounds %struct.UNP, %struct.UNP* %UNP, i32 0, i32 8
  store i32 0, i32* %error, align 4
  br label %while.cond.172

while.cond.172:                                   ; preds = %if.end.323, %if.end.170
  %error173 = getelementptr inbounds %struct.UNP, %struct.UNP* %UNP, i32 0, i32 8
  %138 = load i32, i32* %error173, align 4
  %tobool174 = icmp ne i32 %138, 0
  br i1 %tobool174, label %land.end, label %land.rhs

land.rhs:                                         ; preds = %while.cond.172
  %cur_output175 = getelementptr inbounds %struct.UNP, %struct.UNP* %UNP, i32 0, i32 2
  %139 = load i32, i32* %cur_output175, align 4
  %usize176 = getelementptr inbounds %struct.UNP, %struct.UNP* %UNP, i32 0, i32 4
  %140 = load i32, i32* %usize176, align 4
  %cmp177 = icmp ult i32 %139, %140
  br label %land.end

land.end:                                         ; preds = %land.rhs, %while.cond.172
  %141 = phi i1 [ false, %while.cond.172 ], [ %cmp177, %land.rhs ]
  br i1 %141, label %while.body.179, label %while.end.324

while.body.179:                                   ; preds = %land.end
  %call180 = call i32 @getbits(%struct.UNP* %UNP, i32 1)
  %tobool181 = icmp ne i32 %call180, 0
  br i1 %tobool181, label %if.then.182, label %if.else.314

if.then.182:                                      ; preds = %while.body.179
  store i32 0, i32* %addme, align 4
  %call183 = call i32 @getbits(%struct.UNP* %UNP, i32 15)
  store i32 %call183, i32* %bb, align 4
  %call184 = call i32 @getbits(%struct.UNP* %UNP, i32 2)
  store i32 %call184, i32* %bs, align 4
  %cmp185 = icmp eq i32 %call184, 3
  br i1 %cmp185, label %if.then.187, label %if.end.209

if.then.187:                                      ; preds = %if.then.182
  store i32 3, i32* %addme, align 4
  %call188 = call i32 @getbits(%struct.UNP* %UNP, i32 3)
  store i32 %call188, i32* %bs, align 4
  %cmp189 = icmp eq i32 %call188, 7
  br i1 %cmp189, label %if.then.191, label %if.end.208

if.then.191:                                      ; preds = %if.then.187
  store i32 10, i32* %addme, align 4
  %call192 = call i32 @getbits(%struct.UNP* %UNP, i32 5)
  store i32 %call192, i32* %bs, align 4
  %cmp193 = icmp eq i32 %call192, 31
  br i1 %cmp193, label %if.then.195, label %if.end.207

if.then.195:                                      ; preds = %if.then.191
  store i32 41, i32* %addme, align 4
  %call196 = call i32 @getbits(%struct.UNP* %UNP, i32 8)
  store i32 %call196, i32* %bs, align 4
  %cmp197 = icmp eq i32 %call196, 255
  br i1 %cmp197, label %if.then.199, label %if.end.206

if.then.199:                                      ; preds = %if.then.195
  store i32 296, i32* %addme, align 4
  br label %while.cond.200

while.cond.200:                                   ; preds = %while.body.204, %if.then.199
  %call201 = call i32 @getbits(%struct.UNP* %UNP, i32 8)
  store i32 %call201, i32* %bs, align 4
  %cmp202 = icmp eq i32 %call201, 255
  br i1 %cmp202, label %while.body.204, label %while.end

while.body.204:                                   ; preds = %while.cond.200
  %142 = load i32, i32* %addme, align 4
  %add205 = add i32 %142, 255
  store i32 %add205, i32* %addme, align 4
  br label %while.cond.200

while.end:                                        ; preds = %while.cond.200
  br label %if.end.206

if.end.206:                                       ; preds = %while.end, %if.then.195
  br label %if.end.207

if.end.207:                                       ; preds = %if.end.206, %if.then.191
  br label %if.end.208

if.end.208:                                       ; preds = %if.end.207, %if.then.187
  br label %if.end.209

if.end.209:                                       ; preds = %if.end.208, %if.then.182
  %143 = load i32, i32* %addme, align 4
  %add210 = add i32 3, %143
  %144 = load i32, i32* %bs, align 4
  %add211 = add i32 %144, %add210
  store i32 %add211, i32* %bs, align 4
  %usize212 = getelementptr inbounds %struct.UNP, %struct.UNP* %UNP, i32 0, i32 4
  %145 = load i32, i32* %usize212, align 4
  %cmp213 = icmp ugt i32 %145, 0
  br i1 %cmp213, label %land.lhs.true.215, label %if.then.296

land.lhs.true.215:                                ; preds = %if.end.209
  %146 = load i32, i32* %bs, align 4
  %cmp216 = icmp ugt i32 %146, 0
  br i1 %cmp216, label %land.lhs.true.218, label %if.then.296

land.lhs.true.218:                                ; preds = %land.lhs.true.215
  %147 = load i32, i32* %bs, align 4
  %usize219 = getelementptr inbounds %struct.UNP, %struct.UNP* %UNP, i32 0, i32 4
  %148 = load i32, i32* %usize219, align 4
  %cmp220 = icmp ule i32 %147, %148
  br i1 %cmp220, label %land.lhs.true.222, label %if.then.296

land.lhs.true.222:                                ; preds = %land.lhs.true.218
  %cur_output223 = getelementptr inbounds %struct.UNP, %struct.UNP* %UNP, i32 0, i32 2
  %149 = load i32, i32* %cur_output223, align 4
  %idxprom224 = zext i32 %149 to i64
  %outputbuf225 = getelementptr inbounds %struct.UNP, %struct.UNP* %UNP, i32 0, i32 0
  %150 = load i8*, i8** %outputbuf225, align 8
  %arrayidx226 = getelementptr inbounds i8, i8* %150, i64 %idxprom224
  %outputbuf227 = getelementptr inbounds %struct.UNP, %struct.UNP* %UNP, i32 0, i32 0
  %151 = load i8*, i8** %outputbuf227, align 8
  %cmp228 = icmp uge i8* %arrayidx226, %151
  br i1 %cmp228, label %land.lhs.true.230, label %if.then.296

land.lhs.true.230:                                ; preds = %land.lhs.true.222
  %cur_output231 = getelementptr inbounds %struct.UNP, %struct.UNP* %UNP, i32 0, i32 2
  %152 = load i32, i32* %cur_output231, align 4
  %idxprom232 = zext i32 %152 to i64
  %outputbuf233 = getelementptr inbounds %struct.UNP, %struct.UNP* %UNP, i32 0, i32 0
  %153 = load i8*, i8** %outputbuf233, align 8
  %arrayidx234 = getelementptr inbounds i8, i8* %153, i64 %idxprom232
  %154 = load i32, i32* %bs, align 4
  %idx.ext = zext i32 %154 to i64
  %add.ptr235 = getelementptr inbounds i8, i8* %arrayidx234, i64 %idx.ext
  %outputbuf236 = getelementptr inbounds %struct.UNP, %struct.UNP* %UNP, i32 0, i32 0
  %155 = load i8*, i8** %outputbuf236, align 8
  %usize237 = getelementptr inbounds %struct.UNP, %struct.UNP* %UNP, i32 0, i32 4
  %156 = load i32, i32* %usize237, align 4
  %idx.ext238 = zext i32 %156 to i64
  %add.ptr239 = getelementptr inbounds i8, i8* %155, i64 %idx.ext238
  %cmp240 = icmp ule i8* %add.ptr235, %add.ptr239
  br i1 %cmp240, label %land.lhs.true.242, label %if.then.296

land.lhs.true.242:                                ; preds = %land.lhs.true.230
  %cur_output243 = getelementptr inbounds %struct.UNP, %struct.UNP* %UNP, i32 0, i32 2
  %157 = load i32, i32* %cur_output243, align 4
  %idxprom244 = zext i32 %157 to i64
  %outputbuf245 = getelementptr inbounds %struct.UNP, %struct.UNP* %UNP, i32 0, i32 0
  %158 = load i8*, i8** %outputbuf245, align 8
  %arrayidx246 = getelementptr inbounds i8, i8* %158, i64 %idxprom244
  %159 = load i32, i32* %bs, align 4
  %idx.ext247 = zext i32 %159 to i64
  %add.ptr248 = getelementptr inbounds i8, i8* %arrayidx246, i64 %idx.ext247
  %outputbuf249 = getelementptr inbounds %struct.UNP, %struct.UNP* %UNP, i32 0, i32 0
  %160 = load i8*, i8** %outputbuf249, align 8
  %cmp250 = icmp ugt i8* %add.ptr248, %160
  br i1 %cmp250, label %lor.lhs.false.252, label %if.then.296

lor.lhs.false.252:                                ; preds = %land.lhs.true.242
  %usize253 = getelementptr inbounds %struct.UNP, %struct.UNP* %UNP, i32 0, i32 4
  %161 = load i32, i32* %usize253, align 4
  %cmp254 = icmp ugt i32 %161, 0
  br i1 %cmp254, label %land.lhs.true.256, label %if.then.296

land.lhs.true.256:                                ; preds = %lor.lhs.false.252
  %162 = load i32, i32* %bs, align 4
  %cmp257 = icmp ugt i32 %162, 0
  br i1 %cmp257, label %land.lhs.true.259, label %if.then.296

land.lhs.true.259:                                ; preds = %land.lhs.true.256
  %163 = load i32, i32* %bs, align 4
  %usize260 = getelementptr inbounds %struct.UNP, %struct.UNP* %UNP, i32 0, i32 4
  %164 = load i32, i32* %usize260, align 4
  %cmp261 = icmp ule i32 %163, %164
  br i1 %cmp261, label %land.lhs.true.263, label %if.then.296

land.lhs.true.263:                                ; preds = %land.lhs.true.259
  %cur_output264 = getelementptr inbounds %struct.UNP, %struct.UNP* %UNP, i32 0, i32 2
  %165 = load i32, i32* %cur_output264, align 4
  %166 = load i32, i32* %bb, align 4
  %sub = sub i32 %165, %166
  %idxprom265 = zext i32 %sub to i64
  %outputbuf266 = getelementptr inbounds %struct.UNP, %struct.UNP* %UNP, i32 0, i32 0
  %167 = load i8*, i8** %outputbuf266, align 8
  %arrayidx267 = getelementptr inbounds i8, i8* %167, i64 %idxprom265
  %outputbuf268 = getelementptr inbounds %struct.UNP, %struct.UNP* %UNP, i32 0, i32 0
  %168 = load i8*, i8** %outputbuf268, align 8
  %cmp269 = icmp uge i8* %arrayidx267, %168
  br i1 %cmp269, label %land.lhs.true.271, label %if.then.296

land.lhs.true.271:                                ; preds = %land.lhs.true.263
  %cur_output272 = getelementptr inbounds %struct.UNP, %struct.UNP* %UNP, i32 0, i32 2
  %169 = load i32, i32* %cur_output272, align 4
  %170 = load i32, i32* %bb, align 4
  %sub273 = sub i32 %169, %170
  %idxprom274 = zext i32 %sub273 to i64
  %outputbuf275 = getelementptr inbounds %struct.UNP, %struct.UNP* %UNP, i32 0, i32 0
  %171 = load i8*, i8** %outputbuf275, align 8
  %arrayidx276 = getelementptr inbounds i8, i8* %171, i64 %idxprom274
  %172 = load i32, i32* %bs, align 4
  %idx.ext277 = zext i32 %172 to i64
  %add.ptr278 = getelementptr inbounds i8, i8* %arrayidx276, i64 %idx.ext277
  %outputbuf279 = getelementptr inbounds %struct.UNP, %struct.UNP* %UNP, i32 0, i32 0
  %173 = load i8*, i8** %outputbuf279, align 8
  %usize280 = getelementptr inbounds %struct.UNP, %struct.UNP* %UNP, i32 0, i32 4
  %174 = load i32, i32* %usize280, align 4
  %idx.ext281 = zext i32 %174 to i64
  %add.ptr282 = getelementptr inbounds i8, i8* %173, i64 %idx.ext281
  %cmp283 = icmp ule i8* %add.ptr278, %add.ptr282
  br i1 %cmp283, label %land.lhs.true.285, label %if.then.296

land.lhs.true.285:                                ; preds = %land.lhs.true.271
  %cur_output286 = getelementptr inbounds %struct.UNP, %struct.UNP* %UNP, i32 0, i32 2
  %175 = load i32, i32* %cur_output286, align 4
  %176 = load i32, i32* %bb, align 4
  %sub287 = sub i32 %175, %176
  %idxprom288 = zext i32 %sub287 to i64
  %outputbuf289 = getelementptr inbounds %struct.UNP, %struct.UNP* %UNP, i32 0, i32 0
  %177 = load i8*, i8** %outputbuf289, align 8
  %arrayidx290 = getelementptr inbounds i8, i8* %177, i64 %idxprom288
  %178 = load i32, i32* %bs, align 4
  %idx.ext291 = zext i32 %178 to i64
  %add.ptr292 = getelementptr inbounds i8, i8* %arrayidx290, i64 %idx.ext291
  %outputbuf293 = getelementptr inbounds %struct.UNP, %struct.UNP* %UNP, i32 0, i32 0
  %179 = load i8*, i8** %outputbuf293, align 8
  %cmp294 = icmp ugt i8* %add.ptr292, %179
  br i1 %cmp294, label %if.end.298, label %if.then.296

if.then.296:                                      ; preds = %land.lhs.true.285, %land.lhs.true.271, %land.lhs.true.263, %land.lhs.true.259, %land.lhs.true.256, %lor.lhs.false.252, %land.lhs.true.242, %land.lhs.true.230, %land.lhs.true.222, %land.lhs.true.218, %land.lhs.true.215, %if.end.209
  %error297 = getelementptr inbounds %struct.UNP, %struct.UNP* %UNP, i32 0, i32 8
  store i32 1, i32* %error297, align 4
  br label %while.end.324

if.end.298:                                       ; preds = %land.lhs.true.285
  br label %while.cond.299

while.cond.299:                                   ; preds = %while.body.301, %if.end.298
  %180 = load i32, i32* %bs, align 4
  %dec = add i32 %180, -1
  store i32 %dec, i32* %bs, align 4
  %tobool300 = icmp ne i32 %180, 0
  br i1 %tobool300, label %while.body.301, label %while.end.313

while.body.301:                                   ; preds = %while.cond.299
  %cur_output302 = getelementptr inbounds %struct.UNP, %struct.UNP* %UNP, i32 0, i32 2
  %181 = load i32, i32* %cur_output302, align 4
  %182 = load i32, i32* %bb, align 4
  %sub303 = sub i32 %181, %182
  %idxprom304 = zext i32 %sub303 to i64
  %outputbuf305 = getelementptr inbounds %struct.UNP, %struct.UNP* %UNP, i32 0, i32 0
  %183 = load i8*, i8** %outputbuf305, align 8
  %arrayidx306 = getelementptr inbounds i8, i8* %183, i64 %idxprom304
  %184 = load i8, i8* %arrayidx306, align 1
  %cur_output307 = getelementptr inbounds %struct.UNP, %struct.UNP* %UNP, i32 0, i32 2
  %185 = load i32, i32* %cur_output307, align 4
  %idxprom308 = zext i32 %185 to i64
  %outputbuf309 = getelementptr inbounds %struct.UNP, %struct.UNP* %UNP, i32 0, i32 0
  %186 = load i8*, i8** %outputbuf309, align 8
  %arrayidx310 = getelementptr inbounds i8, i8* %186, i64 %idxprom308
  store i8 %184, i8* %arrayidx310, align 1
  %cur_output311 = getelementptr inbounds %struct.UNP, %struct.UNP* %UNP, i32 0, i32 2
  %187 = load i32, i32* %cur_output311, align 4
  %inc312 = add i32 %187, 1
  store i32 %inc312, i32* %cur_output311, align 4
  br label %while.cond.299

while.end.313:                                    ; preds = %while.cond.299
  br label %if.end.323

if.else.314:                                      ; preds = %while.body.179
  %call315 = call i32 @getbits(%struct.UNP* %UNP, i32 8)
  %conv316 = trunc i32 %call315 to i8
  %cur_output317 = getelementptr inbounds %struct.UNP, %struct.UNP* %UNP, i32 0, i32 2
  %188 = load i32, i32* %cur_output317, align 4
  %idxprom318 = zext i32 %188 to i64
  %outputbuf319 = getelementptr inbounds %struct.UNP, %struct.UNP* %UNP, i32 0, i32 0
  %189 = load i8*, i8** %outputbuf319, align 8
  %arrayidx320 = getelementptr inbounds i8, i8* %189, i64 %idxprom318
  store i8 %conv316, i8* %arrayidx320, align 1
  %cur_output321 = getelementptr inbounds %struct.UNP, %struct.UNP* %UNP, i32 0, i32 2
  %190 = load i32, i32* %cur_output321, align 4
  %inc322 = add i32 %190, 1
  store i32 %inc322, i32* %cur_output321, align 4
  br label %if.end.323

if.end.323:                                       ; preds = %if.else.314, %while.end.313
  br label %while.cond.172

while.end.324:                                    ; preds = %if.then.296, %land.end
  %191 = load i8*, i8** %buf, align 8
  call void @free(i8* %191) #3
  %error325 = getelementptr inbounds %struct.UNP, %struct.UNP* %UNP, i32 0, i32 8
  %192 = load i32, i32* %error325, align 4
  %tobool326 = icmp ne i32 %192, 0
  br i1 %tobool326, label %if.then.327, label %if.end.328

if.then.327:                                      ; preds = %while.end.324
  call void (i8*, ...) @cli_dbgmsg(i8* getelementptr inbounds ([54 x i8], [54 x i8]* @.str.17, i32 0, i32 0))
  br label %if.end.328

if.end.328:                                       ; preds = %if.then.327, %while.end.324
  br label %if.end.333

if.else.329:                                      ; preds = %if.end.122
  call void (i8*, ...) @cli_dbgmsg(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.18, i32 0, i32 0))
  %193 = load i8*, i8** %buf, align 8
  %outputbuf330 = getelementptr inbounds %struct.UNP, %struct.UNP* %UNP, i32 0, i32 0
  store i8* %193, i8** %outputbuf330, align 8
  %csize331 = getelementptr inbounds %struct.UNP, %struct.UNP* %UNP, i32 0, i32 5
  %194 = load i32, i32* %csize331, align 4
  %usize332 = getelementptr inbounds %struct.UNP, %struct.UNP* %UNP, i32 0, i32 4
  store i32 %194, i32* %usize332, align 4
  br label %if.end.333

if.end.333:                                       ; preds = %if.else.329, %if.end.328
  %195 = load i32, i32* %files, align 4
  %inc334 = add i32 %195, 1
  store i32 %inc334, i32* %files, align 4
  %outputbuf335 = getelementptr inbounds %struct.UNP, %struct.UNP* %UNP, i32 0, i32 0
  %196 = load i8*, i8** %outputbuf335, align 8
  %usize336 = getelementptr inbounds %struct.UNP, %struct.UNP* %UNP, i32 0, i32 4
  %197 = load i32, i32* %usize336, align 4
  %call337 = call i32 @u2a(i8* %196, i32 %197)
  %usize338 = getelementptr inbounds %struct.UNP, %struct.UNP* %UNP, i32 0, i32 4
  store i32 %call337, i32* %usize338, align 4
  %arraydecay339 = getelementptr inbounds [1024 x i8], [1024 x i8]* %tempfile, i32 0, i32 0
  %198 = load i8*, i8** %tmpd.addr, align 8
  %199 = load i32, i32* %files, align 4
  %call340 = call i32 (i8*, i64, i8*, ...) @snprintf(i8* %arraydecay339, i64 1023, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.19, i32 0, i32 0), i8* %198, i32 %199) #3
  %arrayidx341 = getelementptr inbounds [1024 x i8], [1024 x i8]* %tempfile, i32 0, i64 1023
  store i8 0, i8* %arrayidx341, align 1
  %arraydecay342 = getelementptr inbounds [1024 x i8], [1024 x i8]* %tempfile, i32 0, i32 0
  %call343 = call i32 (i8*, i32, ...) @open(i8* %arraydecay342, i32 578, i32 448)
  store i32 %call343, i32* %i, align 4
  %cmp344 = icmp slt i32 %call343, 0
  br i1 %cmp344, label %if.then.346, label %if.end.349

if.then.346:                                      ; preds = %if.end.333
  %arraydecay347 = getelementptr inbounds [1024 x i8], [1024 x i8]* %tempfile, i32 0, i32 0
  call void (i8*, ...) @cli_dbgmsg(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.20, i32 0, i32 0), i8* %arraydecay347)
  %outputbuf348 = getelementptr inbounds %struct.UNP, %struct.UNP* %UNP, i32 0, i32 0
  %200 = load i8*, i8** %outputbuf348, align 8
  call void @free(i8* %200) #3
  store i32 -123, i32* %retval
  br label %return

if.end.349:                                       ; preds = %if.end.333
  %201 = load i32, i32* %i, align 4
  %outputbuf350 = getelementptr inbounds %struct.UNP, %struct.UNP* %UNP, i32 0, i32 0
  %202 = load i8*, i8** %outputbuf350, align 8
  %usize351 = getelementptr inbounds %struct.UNP, %struct.UNP* %UNP, i32 0, i32 4
  %203 = load i32, i32* %usize351, align 4
  %call352 = call i32 @cli_writen(i32 %201, i8* %202, i32 %203)
  %usize353 = getelementptr inbounds %struct.UNP, %struct.UNP* %UNP, i32 0, i32 4
  %204 = load i32, i32* %usize353, align 4
  %cmp354 = icmp ne i32 %call352, %204
  br i1 %cmp354, label %if.then.356, label %if.end.360

if.then.356:                                      ; preds = %if.end.349
  %usize357 = getelementptr inbounds %struct.UNP, %struct.UNP* %UNP, i32 0, i32 4
  %205 = load i32, i32* %usize357, align 4
  call void (i8*, ...) @cli_dbgmsg(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.21, i32 0, i32 0), i32 %205)
  %206 = load i32, i32* %i, align 4
  %call358 = call i32 @close(i32 %206)
  %outputbuf359 = getelementptr inbounds %struct.UNP, %struct.UNP* %UNP, i32 0, i32 0
  %207 = load i8*, i8** %outputbuf359, align 8
  call void @free(i8* %207) #3
  store i32 -123, i32* %retval
  br label %return

if.end.360:                                       ; preds = %if.end.349
  %outputbuf361 = getelementptr inbounds %struct.UNP, %struct.UNP* %UNP, i32 0, i32 0
  %208 = load i8*, i8** %outputbuf361, align 8
  call void @free(i8* %208) #3
  %209 = load i8, i8* @cli_leavetemps_flag, align 1
  %tobool362 = icmp ne i8 %209, 0
  br i1 %tobool362, label %if.then.363, label %if.else.365

if.then.363:                                      ; preds = %if.end.360
  %arraydecay364 = getelementptr inbounds [1024 x i8], [1024 x i8]* %tempfile, i32 0, i32 0
  call void (i8*, ...) @cli_dbgmsg(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.22, i32 0, i32 0), i8* %arraydecay364)
  br label %if.end.366

if.else.365:                                      ; preds = %if.end.360
  call void (i8*, ...) @cli_dbgmsg(i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.23, i32 0, i32 0))
  br label %if.end.366

if.end.366:                                       ; preds = %if.else.365, %if.then.363
  %210 = load i32, i32* %i, align 4
  %call367 = call i32 @fsync(i32 %210)
  %211 = load i32, i32* %i, align 4
  %call368 = call i64 @lseek(i32 %211, i64 0, i32 0) #3
  %212 = load i32, i32* %i, align 4
  %213 = load %struct.cli_ctx*, %struct.cli_ctx** %ctx.addr, align 8
  %call369 = call i32 @cli_magic_scandesc(i32 %212, %struct.cli_ctx* %213)
  %cmp370 = icmp eq i32 %call369, 1
  br i1 %cmp370, label %if.then.372, label %if.end.379

if.then.372:                                      ; preds = %if.end.366
  %214 = load i32, i32* %i, align 4
  %call373 = call i32 @close(i32 %214)
  %215 = load i8, i8* @cli_leavetemps_flag, align 1
  %tobool374 = icmp ne i8 %215, 0
  br i1 %tobool374, label %if.end.378, label %if.then.375

if.then.375:                                      ; preds = %if.then.372
  %arraydecay376 = getelementptr inbounds [1024 x i8], [1024 x i8]* %tempfile, i32 0, i32 0
  %call377 = call i32 @unlink(i8* %arraydecay376) #3
  br label %if.end.378

if.end.378:                                       ; preds = %if.then.375, %if.then.372
  store i32 1, i32* %retval
  br label %return

if.end.379:                                       ; preds = %if.end.366
  %216 = load i32, i32* %i, align 4
  %call380 = call i32 @close(i32 %216)
  %217 = load i8, i8* @cli_leavetemps_flag, align 1
  %tobool381 = icmp ne i8 %217, 0
  br i1 %tobool381, label %if.end.385, label %if.then.382

if.then.382:                                      ; preds = %if.end.379
  %arraydecay383 = getelementptr inbounds [1024 x i8], [1024 x i8]* %tempfile, i32 0, i32 0
  %call384 = call i32 @unlink(i8* %arraydecay383) #3
  br label %if.end.385

if.end.385:                                       ; preds = %if.then.382, %if.end.379
  br label %while.cond

while.end.386:                                    ; preds = %lor.end
  %218 = load %struct.cli_ctx*, %struct.cli_ctx** %ctx.addr, align 8
  %limits387 = getelementptr inbounds %struct.cli_ctx, %struct.cli_ctx* %218, i32 0, i32 4
  %219 = load %struct.cl_limits*, %struct.cl_limits** %limits387, align 8
  %maxfiles388 = getelementptr inbounds %struct.cl_limits, %struct.cl_limits* %219, i32 0, i32 1
  %220 = load i32, i32* %maxfiles388, align 4
  call void (i8*, ...) @cli_dbgmsg(i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.24, i32 0, i32 0), i32 %220)
  store i32 -102, i32* %retval
  br label %return

return:                                           ; preds = %while.end.386, %if.end.378, %if.then.356, %if.then.346, %if.then.169, %if.then.121, %if.then.114, %if.then.78, %if.then.71, %if.then.59, %if.then.47, %if.then.42, %if.then.31, %if.then.20, %if.then.16, %if.then.12, %if.then
  %221 = load i32, i32* %retval
  ret i32 %221
}

; Function Attrs: nounwind uwtable
define internal i32 @ea06(i32 %desc, %struct.cli_ctx* %ctx, i8* %tmpd) #0 {
entry:
  %retval = alloca i32, align 4
  %desc.addr = alloca i32, align 4
  %ctx.addr = alloca %struct.cli_ctx*, align 8
  %tmpd.addr = alloca i8*, align 8
  %b = alloca [600 x i8], align 16
  %comp = alloca i8, align 1
  %script = alloca i8, align 1
  %buf = alloca i8*, align 8
  %s = alloca i32, align 4
  %i = alloca i32, align 4
  %files = alloca i32, align 4
  %tempfile = alloca [1024 x i8], align 16
  %opers = alloca [23 x i8*], align 16
  %UNP = alloca %struct.UNP, align 8
  %bb = alloca i32, align 4
  %bs = alloca i32, align 4
  %addme = alloca i32, align 4
  %op = alloca i8, align 1
  %newout = alloca i8*, align 8
  %val = alloca i64, align 8
  %newout432 = alloca i8*, align 8
  %newout483 = alloca i8*, align 8
  %chars = alloca i32, align 4
  %dchars = alloca i32, align 4
  %i521 = alloca i32, align 4
  %newout560 = alloca i8*, align 8
  %newout657 = alloca i8*, align 8
  %newout687 = alloca i8*, align 8
  store i32 %desc, i32* %desc.addr, align 4
  store %struct.cli_ctx* %ctx, %struct.cli_ctx** %ctx.addr, align 8
  store i8* %tmpd, i8** %tmpd.addr, align 8
  store i32 0, i32* %files, align 4
  %0 = bitcast [23 x i8*]* %opers to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %0, i8* bitcast ([23 x i8*]* @ea06.opers to i8*), i64 184, i32 16, i1 false)
  %1 = load i32, i32* %desc.addr, align 4
  %call = call i64 @lseek(i32 %1, i64 16, i32 1) #3
  br label %while.cond

while.cond:                                       ; preds = %if.end.762, %if.then.338, %if.then.164, %if.then.135, %if.then.107, %if.then.88, %entry
  %2 = load %struct.cli_ctx*, %struct.cli_ctx** %ctx.addr, align 8
  %limits = getelementptr inbounds %struct.cli_ctx, %struct.cli_ctx* %2, i32 0, i32 4
  %3 = load %struct.cl_limits*, %struct.cl_limits** %limits, align 8
  %tobool = icmp ne %struct.cl_limits* %3, null
  br i1 %tobool, label %lor.lhs.false, label %lor.end

lor.lhs.false:                                    ; preds = %while.cond
  %4 = load %struct.cli_ctx*, %struct.cli_ctx** %ctx.addr, align 8
  %limits1 = getelementptr inbounds %struct.cli_ctx, %struct.cli_ctx* %4, i32 0, i32 4
  %5 = load %struct.cl_limits*, %struct.cl_limits** %limits1, align 8
  %maxfiles = getelementptr inbounds %struct.cl_limits, %struct.cl_limits* %5, i32 0, i32 1
  %6 = load i32, i32* %maxfiles, align 4
  %tobool2 = icmp ne i32 %6, 0
  br i1 %tobool2, label %lor.rhs, label %lor.end

lor.rhs:                                          ; preds = %lor.lhs.false
  %7 = load i32, i32* %files, align 4
  %8 = load %struct.cli_ctx*, %struct.cli_ctx** %ctx.addr, align 8
  %limits3 = getelementptr inbounds %struct.cli_ctx, %struct.cli_ctx* %8, i32 0, i32 4
  %9 = load %struct.cl_limits*, %struct.cl_limits** %limits3, align 8
  %maxfiles4 = getelementptr inbounds %struct.cl_limits, %struct.cl_limits* %9, i32 0, i32 1
  %10 = load i32, i32* %maxfiles4, align 4
  %cmp = icmp ult i32 %7, %10
  br label %lor.end

lor.end:                                          ; preds = %lor.rhs, %lor.lhs.false, %while.cond
  %11 = phi i1 [ true, %lor.lhs.false ], [ true, %while.cond ], [ %cmp, %lor.rhs ]
  br i1 %11, label %while.body, label %while.end.763

while.body:                                       ; preds = %lor.end
  %arraydecay = getelementptr inbounds [600 x i8], [600 x i8]* %b, i32 0, i32 0
  store i8* %arraydecay, i8** %buf, align 8
  %12 = load i32, i32* %desc.addr, align 4
  %13 = load i8*, i8** %buf, align 8
  %call5 = call i32 @cli_readn(i32 %12, i8* %13, i32 8)
  %cmp6 = icmp ne i32 %call5, 8
  br i1 %cmp6, label %if.then, label %if.end

if.then:                                          ; preds = %while.body
  store i32 0, i32* %retval
  br label %return

if.end:                                           ; preds = %while.body
  %14 = load i8*, i8** %buf, align 8
  %15 = bitcast i8* %14 to i32*
  %16 = load i32, i32* %15, align 4
  %cmp7 = icmp ne i32 %16, 1388987243
  br i1 %cmp7, label %if.then.8, label %if.end.9

if.then.8:                                        ; preds = %if.end
  call void (i8*, ...) @cli_dbgmsg(i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.49, i32 0, i32 0))
  store i32 0, i32* %retval
  br label %return

if.end.9:                                         ; preds = %if.end
  store i8 0, i8* %script, align 1
  %17 = load i8*, i8** %buf, align 8
  %add.ptr = getelementptr inbounds i8, i8* %17, i64 4
  %18 = bitcast i8* %add.ptr to i32*
  %19 = load i32, i32* %18, align 4
  %xor = xor i32 %19, 44476
  store i32 %xor, i32* %s, align 4
  %20 = load i32, i32* %s, align 4
  %mul = mul i32 %20, 2
  %cmp10 = icmp slt i32 %mul, 0
  br i1 %cmp10, label %if.then.11, label %if.end.12

if.then.11:                                       ; preds = %if.end.9
  store i32 0, i32* %retval
  br label %return

if.end.12:                                        ; preds = %if.end.9
  %21 = load i32, i32* %s, align 4
  %cmp13 = icmp ult i32 %21, 300
  br i1 %cmp13, label %if.then.14, label %if.else

if.then.14:                                       ; preds = %if.end.12
  %22 = load i32, i32* %desc.addr, align 4
  %23 = load i8*, i8** %buf, align 8
  %24 = load i32, i32* %s, align 4
  %mul15 = mul i32 %24, 2
  %call16 = call i32 @cli_readn(i32 %22, i8* %23, i32 %mul15)
  %25 = load i32, i32* %s, align 4
  %mul17 = mul nsw i32 %25, 2
  %cmp18 = icmp ne i32 %call16, %mul17
  br i1 %cmp18, label %if.then.19, label %if.end.20

if.then.19:                                       ; preds = %if.then.14
  store i32 0, i32* %retval
  br label %return

if.end.20:                                        ; preds = %if.then.14
  %26 = load i8*, i8** %buf, align 8
  %27 = load i32, i32* %s, align 4
  %mul21 = mul i32 %27, 2
  %28 = load i32, i32* %s, align 4
  %add = add i32 %28, 45887
  %conv = trunc i32 %add to i16
  call void @LAME_decrypt(i8* %26, i32 %mul21, i16 zeroext %conv)
  %29 = load i8*, i8** %buf, align 8
  %30 = load i32, i32* %s, align 4
  %mul22 = mul i32 %30, 2
  %call23 = call i32 @u2a(i8* %29, i32 %mul22)
  %31 = load i8*, i8** %buf, align 8
  call void (i8*, ...) @cli_dbgmsg(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.5, i32 0, i32 0), i8* %31)
  %32 = load i32, i32* %s, align 4
  %cmp24 = icmp eq i32 %32, 19
  br i1 %cmp24, label %land.lhs.true, label %if.end.29

land.lhs.true:                                    ; preds = %if.end.20
  %33 = load i8*, i8** %buf, align 8
  %call26 = call i32 @memcmp(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.50, i32 0, i32 0), i8* %33, i64 19) #5
  %tobool27 = icmp ne i32 %call26, 0
  br i1 %tobool27, label %if.end.29, label %if.then.28

if.then.28:                                       ; preds = %land.lhs.true
  store i8 1, i8* %script, align 1
  br label %if.end.29

if.end.29:                                        ; preds = %if.then.28, %land.lhs.true, %if.end.20
  br label %if.end.33

if.else:                                          ; preds = %if.end.12
  call void (i8*, ...) @cli_dbgmsg(i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.51, i32 0, i32 0))
  %34 = load i32, i32* %desc.addr, align 4
  %35 = load i32, i32* %s, align 4
  %mul30 = mul i32 %35, 2
  %conv31 = zext i32 %mul30 to i64
  %call32 = call i64 @lseek(i32 %34, i64 %conv31, i32 1) #3
  br label %if.end.33

if.end.33:                                        ; preds = %if.else, %if.end.29
  %36 = load i32, i32* %desc.addr, align 4
  %37 = load i8*, i8** %buf, align 8
  %call34 = call i32 @cli_readn(i32 %36, i8* %37, i32 4)
  %cmp35 = icmp ne i32 %call34, 4
  br i1 %cmp35, label %if.then.37, label %if.end.38

if.then.37:                                       ; preds = %if.end.33
  store i32 0, i32* %retval
  br label %return

if.end.38:                                        ; preds = %if.end.33
  %38 = load i8*, i8** %buf, align 8
  %39 = bitcast i8* %38 to i32*
  %40 = load i32, i32* %39, align 4
  %xor39 = xor i32 %40, 63520
  store i32 %xor39, i32* %s, align 4
  %41 = load i32, i32* %s, align 4
  %mul40 = mul i32 %41, 2
  %cmp41 = icmp slt i32 %mul40, 0
  br i1 %cmp41, label %if.then.43, label %if.end.44

if.then.43:                                       ; preds = %if.end.38
  store i32 0, i32* %retval
  br label %return

if.end.44:                                        ; preds = %if.end.38
  %42 = load i8, i8* @cli_debug_flag, align 1
  %conv45 = zext i8 %42 to i32
  %tobool46 = icmp ne i32 %conv45, 0
  br i1 %tobool46, label %land.lhs.true.47, label %if.else.68

land.lhs.true.47:                                 ; preds = %if.end.44
  %43 = load i32, i32* %s, align 4
  %cmp48 = icmp ult i32 %43, 300
  br i1 %cmp48, label %if.then.50, label %if.else.68

if.then.50:                                       ; preds = %land.lhs.true.47
  %44 = load i32, i32* %desc.addr, align 4
  %45 = load i8*, i8** %buf, align 8
  %46 = load i32, i32* %s, align 4
  %mul51 = mul i32 %46, 2
  %call52 = call i32 @cli_readn(i32 %44, i8* %45, i32 %mul51)
  %47 = load i32, i32* %s, align 4
  %mul53 = mul nsw i32 %47, 2
  %cmp54 = icmp ne i32 %call52, %mul53
  br i1 %cmp54, label %if.then.56, label %if.end.57

if.then.56:                                       ; preds = %if.then.50
  store i32 0, i32* %retval
  br label %return

if.end.57:                                        ; preds = %if.then.50
  %48 = load i8*, i8** %buf, align 8
  %49 = load i32, i32* %s, align 4
  %mul58 = mul i32 %49, 2
  %50 = load i32, i32* %s, align 4
  %add59 = add i32 %50, 62585
  %conv60 = trunc i32 %add59 to i16
  call void @LAME_decrypt(i8* %48, i32 %mul58, i16 zeroext %conv60)
  %51 = load i32, i32* %s, align 4
  %mul61 = mul i32 %51, 2
  %idxprom = zext i32 %mul61 to i64
  %52 = load i8*, i8** %buf, align 8
  %arrayidx = getelementptr inbounds i8, i8* %52, i64 %idxprom
  store i8 0, i8* %arrayidx, align 1
  %53 = load i32, i32* %s, align 4
  %mul62 = mul i32 %53, 2
  %add63 = add i32 %mul62, 1
  %idxprom64 = zext i32 %add63 to i64
  %54 = load i8*, i8** %buf, align 8
  %arrayidx65 = getelementptr inbounds i8, i8* %54, i64 %idxprom64
  store i8 0, i8* %arrayidx65, align 1
  %55 = load i8*, i8** %buf, align 8
  %56 = load i32, i32* %s, align 4
  %mul66 = mul i32 %56, 2
  %call67 = call i32 @u2a(i8* %55, i32 %mul66)
  %57 = load i8*, i8** %buf, align 8
  call void (i8*, ...) @cli_dbgmsg(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.6, i32 0, i32 0), i8* %57)
  br label %if.end.72

if.else.68:                                       ; preds = %land.lhs.true.47, %if.end.44
  %58 = load i32, i32* %desc.addr, align 4
  %59 = load i32, i32* %s, align 4
  %mul69 = mul i32 %59, 2
  %conv70 = zext i32 %mul69 to i64
  %call71 = call i64 @lseek(i32 %58, i64 %conv70, i32 1) #3
  br label %if.end.72

if.end.72:                                        ; preds = %if.else.68, %if.end.57
  %60 = load i32, i32* %desc.addr, align 4
  %61 = load i8*, i8** %buf, align 8
  %call73 = call i32 @cli_readn(i32 %60, i8* %61, i32 13)
  %cmp74 = icmp ne i32 %call73, 13
  br i1 %cmp74, label %if.then.76, label %if.end.77

if.then.76:                                       ; preds = %if.end.72
  store i32 0, i32* %retval
  br label %return

if.end.77:                                        ; preds = %if.end.72
  %62 = load i8*, i8** %buf, align 8
  %63 = load i8, i8* %62, align 1
  store i8 %63, i8* %comp, align 1
  %64 = load i8*, i8** %buf, align 8
  %add.ptr78 = getelementptr inbounds i8, i8* %64, i64 1
  %65 = bitcast i8* %add.ptr78 to i32*
  %66 = load i32, i32* %65, align 4
  %xor79 = xor i32 %66, 34748
  %csize = getelementptr inbounds %struct.UNP, %struct.UNP* %UNP, i32 0, i32 5
  store i32 %xor79, i32* %csize, align 4
  %csize80 = getelementptr inbounds %struct.UNP, %struct.UNP* %UNP, i32 0, i32 5
  %67 = load i32, i32* %csize80, align 4
  %cmp81 = icmp slt i32 %67, 0
  br i1 %cmp81, label %if.then.83, label %if.end.84

if.then.83:                                       ; preds = %if.end.77
  call void (i8*, ...) @cli_dbgmsg(i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.7, i32 0, i32 0))
  store i32 0, i32* %retval
  br label %return

if.end.84:                                        ; preds = %if.end.77
  %68 = load i32, i32* %desc.addr, align 4
  %call85 = call i64 @lseek(i32 %68, i64 16, i32 1) #3
  %csize86 = getelementptr inbounds %struct.UNP, %struct.UNP* %UNP, i32 0, i32 5
  %69 = load i32, i32* %csize86, align 4
  %tobool87 = icmp ne i32 %69, 0
  br i1 %tobool87, label %if.end.89, label %if.then.88

if.then.88:                                       ; preds = %if.end.84
  call void (i8*, ...) @cli_dbgmsg(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.8, i32 0, i32 0))
  br label %while.cond

if.end.89:                                        ; preds = %if.end.84
  %csize90 = getelementptr inbounds %struct.UNP, %struct.UNP* %UNP, i32 0, i32 5
  %70 = load i32, i32* %csize90, align 4
  call void (i8*, ...) @cli_dbgmsg(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.9, i32 0, i32 0), i32 %70)
  %71 = load i8*, i8** %buf, align 8
  %add.ptr91 = getelementptr inbounds i8, i8* %71, i64 5
  %72 = bitcast i8* %add.ptr91 to i32*
  %73 = load i32, i32* %72, align 4
  %xor92 = xor i32 %73, 34748
  call void (i8*, ...) @cli_dbgmsg(i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.10, i32 0, i32 0), i32 %xor92)
  %74 = load i8*, i8** %buf, align 8
  %add.ptr93 = getelementptr inbounds i8, i8* %74, i64 9
  %75 = bitcast i8* %add.ptr93 to i32*
  %76 = load i32, i32* %75, align 4
  %xor94 = xor i32 %76, 42629
  call void (i8*, ...) @cli_dbgmsg(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.11, i32 0, i32 0), i32 %xor94)
  %77 = load %struct.cli_ctx*, %struct.cli_ctx** %ctx.addr, align 8
  %limits95 = getelementptr inbounds %struct.cli_ctx, %struct.cli_ctx* %77, i32 0, i32 4
  %78 = load %struct.cl_limits*, %struct.cl_limits** %limits95, align 8
  %tobool96 = icmp ne %struct.cl_limits* %78, null
  br i1 %tobool96, label %land.lhs.true.97, label %if.end.114

land.lhs.true.97:                                 ; preds = %if.end.89
  %79 = load %struct.cli_ctx*, %struct.cli_ctx** %ctx.addr, align 8
  %limits98 = getelementptr inbounds %struct.cli_ctx, %struct.cli_ctx* %79, i32 0, i32 4
  %80 = load %struct.cl_limits*, %struct.cl_limits** %limits98, align 8
  %maxfilesize = getelementptr inbounds %struct.cl_limits, %struct.cl_limits* %80, i32 0, i32 5
  %81 = load i64, i64* %maxfilesize, align 8
  %tobool99 = icmp ne i64 %81, 0
  br i1 %tobool99, label %land.lhs.true.100, label %if.end.114

land.lhs.true.100:                                ; preds = %land.lhs.true.97
  %csize101 = getelementptr inbounds %struct.UNP, %struct.UNP* %UNP, i32 0, i32 5
  %82 = load i32, i32* %csize101, align 4
  %conv102 = zext i32 %82 to i64
  %83 = load %struct.cli_ctx*, %struct.cli_ctx** %ctx.addr, align 8
  %limits103 = getelementptr inbounds %struct.cli_ctx, %struct.cli_ctx* %83, i32 0, i32 4
  %84 = load %struct.cl_limits*, %struct.cl_limits** %limits103, align 8
  %maxfilesize104 = getelementptr inbounds %struct.cl_limits, %struct.cl_limits* %84, i32 0, i32 5
  %85 = load i64, i64* %maxfilesize104, align 8
  %cmp105 = icmp ugt i64 %conv102, %85
  br i1 %cmp105, label %if.then.107, label %if.end.114

if.then.107:                                      ; preds = %land.lhs.true.100
  %csize108 = getelementptr inbounds %struct.UNP, %struct.UNP* %UNP, i32 0, i32 5
  %86 = load i32, i32* %csize108, align 4
  %87 = load %struct.cli_ctx*, %struct.cli_ctx** %ctx.addr, align 8
  %limits109 = getelementptr inbounds %struct.cli_ctx, %struct.cli_ctx* %87, i32 0, i32 4
  %88 = load %struct.cl_limits*, %struct.cl_limits** %limits109, align 8
  %maxfilesize110 = getelementptr inbounds %struct.cl_limits, %struct.cl_limits* %88, i32 0, i32 5
  %89 = load i64, i64* %maxfilesize110, align 8
  call void (i8*, ...) @cli_dbgmsg(i8* getelementptr inbounds ([56 x i8], [56 x i8]* @.str.12, i32 0, i32 0), i32 %86, i64 %89)
  %90 = load i32, i32* %desc.addr, align 4
  %csize111 = getelementptr inbounds %struct.UNP, %struct.UNP* %UNP, i32 0, i32 5
  %91 = load i32, i32* %csize111, align 4
  %conv112 = zext i32 %91 to i64
  %call113 = call i64 @lseek(i32 %90, i64 %conv112, i32 1) #3
  br label %while.cond

if.end.114:                                       ; preds = %land.lhs.true.100, %land.lhs.true.97, %if.end.89
  %92 = load i32, i32* %files, align 4
  %inc = add i32 %92, 1
  store i32 %inc, i32* %files, align 4
  %csize115 = getelementptr inbounds %struct.UNP, %struct.UNP* %UNP, i32 0, i32 5
  %93 = load i32, i32* %csize115, align 4
  %conv116 = zext i32 %93 to i64
  %call117 = call i8* @cli_malloc(i64 %conv116)
  store i8* %call117, i8** %buf, align 8
  %tobool118 = icmp ne i8* %call117, null
  br i1 %tobool118, label %if.end.120, label %if.then.119

if.then.119:                                      ; preds = %if.end.114
  store i32 -114, i32* %retval
  br label %return

if.end.120:                                       ; preds = %if.end.114
  %94 = load i32, i32* %desc.addr, align 4
  %95 = load i8*, i8** %buf, align 8
  %csize121 = getelementptr inbounds %struct.UNP, %struct.UNP* %UNP, i32 0, i32 5
  %96 = load i32, i32* %csize121, align 4
  %call122 = call i32 @cli_readn(i32 %94, i8* %95, i32 %96)
  %csize123 = getelementptr inbounds %struct.UNP, %struct.UNP* %UNP, i32 0, i32 5
  %97 = load i32, i32* %csize123, align 4
  %cmp124 = icmp ne i32 %call122, %97
  br i1 %cmp124, label %if.then.126, label %if.end.127

if.then.126:                                      ; preds = %if.end.120
  call void (i8*, ...) @cli_dbgmsg(i8* getelementptr inbounds ([66 x i8], [66 x i8]* @.str.13, i32 0, i32 0))
  %98 = load i8*, i8** %buf, align 8
  call void @free(i8* %98) #3
  store i32 0, i32* %retval
  br label %return

if.end.127:                                       ; preds = %if.end.120
  %99 = load i8*, i8** %buf, align 8
  %csize128 = getelementptr inbounds %struct.UNP, %struct.UNP* %UNP, i32 0, i32 5
  %100 = load i32, i32* %csize128, align 4
  call void @LAME_decrypt(i8* %99, i32 %100, i16 zeroext 9335)
  %101 = load i8, i8* %comp, align 1
  %conv129 = zext i8 %101 to i32
  %cmp130 = icmp eq i32 %conv129, 1
  br i1 %cmp130, label %if.then.132, label %if.else.330

if.then.132:                                      ; preds = %if.end.127
  call void (i8*, ...) @cli_dbgmsg(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.14, i32 0, i32 0))
  %102 = load i8*, i8** %buf, align 8
  %103 = bitcast i8* %102 to i32*
  %104 = load i32, i32* %103, align 4
  %cmp133 = icmp ne i32 %104, 909132101
  br i1 %cmp133, label %if.then.135, label %if.end.136

if.then.135:                                      ; preds = %if.then.132
  call void (i8*, ...) @cli_dbgmsg(i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.15, i32 0, i32 0))
  %105 = load i8*, i8** %buf, align 8
  call void @free(i8* %105) #3
  br label %while.cond

if.end.136:                                       ; preds = %if.then.132
  %106 = load i8*, i8** %buf, align 8
  %add.ptr137 = getelementptr inbounds i8, i8* %106, i64 4
  %107 = bitcast i8* %add.ptr137 to i32*
  %108 = load i32, i32* %107, align 4
  %shr = lshr i32 %108, 24
  %109 = load i8*, i8** %buf, align 8
  %add.ptr138 = getelementptr inbounds i8, i8* %109, i64 4
  %110 = bitcast i8* %add.ptr138 to i32*
  %111 = load i32, i32* %110, align 4
  %and = and i32 %111, 16711680
  %shr139 = lshr i32 %and, 8
  %or = or i32 %shr, %shr139
  %112 = load i8*, i8** %buf, align 8
  %add.ptr140 = getelementptr inbounds i8, i8* %112, i64 4
  %113 = bitcast i8* %add.ptr140 to i32*
  %114 = load i32, i32* %113, align 4
  %and141 = and i32 %114, 65280
  %shl = shl i32 %and141, 8
  %or142 = or i32 %or, %shl
  %115 = load i8*, i8** %buf, align 8
  %add.ptr143 = getelementptr inbounds i8, i8* %115, i64 4
  %116 = bitcast i8* %add.ptr143 to i32*
  %117 = load i32, i32* %116, align 4
  %shl144 = shl i32 %117, 24
  %or145 = or i32 %or142, %shl144
  %usize = getelementptr inbounds %struct.UNP, %struct.UNP* %UNP, i32 0, i32 4
  store i32 %or145, i32* %usize, align 4
  %tobool146 = icmp ne i32 %or145, 0
  br i1 %tobool146, label %if.end.150, label %if.then.147

if.then.147:                                      ; preds = %if.end.136
  %csize148 = getelementptr inbounds %struct.UNP, %struct.UNP* %UNP, i32 0, i32 5
  %118 = load i32, i32* %csize148, align 4
  %usize149 = getelementptr inbounds %struct.UNP, %struct.UNP* %UNP, i32 0, i32 4
  store i32 %118, i32* %usize149, align 4
  br label %if.end.150

if.end.150:                                       ; preds = %if.then.147, %if.end.136
  %119 = load %struct.cli_ctx*, %struct.cli_ctx** %ctx.addr, align 8
  %limits151 = getelementptr inbounds %struct.cli_ctx, %struct.cli_ctx* %119, i32 0, i32 4
  %120 = load %struct.cl_limits*, %struct.cl_limits** %limits151, align 8
  %tobool152 = icmp ne %struct.cl_limits* %120, null
  br i1 %tobool152, label %land.lhs.true.153, label %if.end.165

land.lhs.true.153:                                ; preds = %if.end.150
  %121 = load %struct.cli_ctx*, %struct.cli_ctx** %ctx.addr, align 8
  %limits154 = getelementptr inbounds %struct.cli_ctx, %struct.cli_ctx* %121, i32 0, i32 4
  %122 = load %struct.cl_limits*, %struct.cl_limits** %limits154, align 8
  %maxfilesize155 = getelementptr inbounds %struct.cl_limits, %struct.cl_limits* %122, i32 0, i32 5
  %123 = load i64, i64* %maxfilesize155, align 8
  %tobool156 = icmp ne i64 %123, 0
  br i1 %tobool156, label %land.lhs.true.157, label %if.end.165

land.lhs.true.157:                                ; preds = %land.lhs.true.153
  %usize158 = getelementptr inbounds %struct.UNP, %struct.UNP* %UNP, i32 0, i32 4
  %124 = load i32, i32* %usize158, align 4
  %conv159 = zext i32 %124 to i64
  %125 = load %struct.cli_ctx*, %struct.cli_ctx** %ctx.addr, align 8
  %limits160 = getelementptr inbounds %struct.cli_ctx, %struct.cli_ctx* %125, i32 0, i32 4
  %126 = load %struct.cl_limits*, %struct.cl_limits** %limits160, align 8
  %maxfilesize161 = getelementptr inbounds %struct.cl_limits, %struct.cl_limits* %126, i32 0, i32 5
  %127 = load i64, i64* %maxfilesize161, align 8
  %cmp162 = icmp ugt i64 %conv159, %127
  br i1 %cmp162, label %if.then.164, label %if.end.165

if.then.164:                                      ; preds = %land.lhs.true.157
  %128 = load i8*, i8** %buf, align 8
  call void @free(i8* %128) #3
  br label %while.cond

if.end.165:                                       ; preds = %land.lhs.true.157, %land.lhs.true.153, %if.end.150
  %usize166 = getelementptr inbounds %struct.UNP, %struct.UNP* %UNP, i32 0, i32 4
  %129 = load i32, i32* %usize166, align 4
  %conv167 = zext i32 %129 to i64
  %call168 = call i8* @cli_malloc(i64 %conv167)
  %outputbuf = getelementptr inbounds %struct.UNP, %struct.UNP* %UNP, i32 0, i32 0
  store i8* %call168, i8** %outputbuf, align 8
  %tobool169 = icmp ne i8* %call168, null
  br i1 %tobool169, label %if.end.171, label %if.then.170

if.then.170:                                      ; preds = %if.end.165
  %130 = load i8*, i8** %buf, align 8
  call void @free(i8* %130) #3
  store i32 -114, i32* %retval
  br label %return

if.end.171:                                       ; preds = %if.end.165
  %usize172 = getelementptr inbounds %struct.UNP, %struct.UNP* %UNP, i32 0, i32 4
  %131 = load i32, i32* %usize172, align 4
  call void (i8*, ...) @cli_dbgmsg(i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.16, i32 0, i32 0), i32 %131)
  %132 = load i8*, i8** %buf, align 8
  %inputbuf = getelementptr inbounds %struct.UNP, %struct.UNP* %UNP, i32 0, i32 1
  store i8* %132, i8** %inputbuf, align 8
  %cur_output = getelementptr inbounds %struct.UNP, %struct.UNP* %UNP, i32 0, i32 2
  store i32 0, i32* %cur_output, align 4
  %cur_input = getelementptr inbounds %struct.UNP, %struct.UNP* %UNP, i32 0, i32 3
  store i32 8, i32* %cur_input, align 4
  %bitmap = getelementptr inbounds %struct.UNP, %struct.UNP* %UNP, i32 0, i32 7
  %full = bitcast %union.anon* %bitmap to i32*
  store i32 0, i32* %full, align 4
  %bits_avail = getelementptr inbounds %struct.UNP, %struct.UNP* %UNP, i32 0, i32 6
  store i32 0, i32* %bits_avail, align 4
  %error = getelementptr inbounds %struct.UNP, %struct.UNP* %UNP, i32 0, i32 8
  store i32 0, i32* %error, align 4
  br label %while.cond.173

while.cond.173:                                   ; preds = %if.end.324, %if.end.171
  %error174 = getelementptr inbounds %struct.UNP, %struct.UNP* %UNP, i32 0, i32 8
  %133 = load i32, i32* %error174, align 4
  %tobool175 = icmp ne i32 %133, 0
  br i1 %tobool175, label %land.end, label %land.rhs

land.rhs:                                         ; preds = %while.cond.173
  %cur_output176 = getelementptr inbounds %struct.UNP, %struct.UNP* %UNP, i32 0, i32 2
  %134 = load i32, i32* %cur_output176, align 4
  %usize177 = getelementptr inbounds %struct.UNP, %struct.UNP* %UNP, i32 0, i32 4
  %135 = load i32, i32* %usize177, align 4
  %cmp178 = icmp ult i32 %134, %135
  br label %land.end

land.end:                                         ; preds = %land.rhs, %while.cond.173
  %136 = phi i1 [ false, %while.cond.173 ], [ %cmp178, %land.rhs ]
  br i1 %136, label %while.body.180, label %while.end.325

while.body.180:                                   ; preds = %land.end
  %call181 = call i32 @getbits(%struct.UNP* %UNP, i32 1)
  %tobool182 = icmp ne i32 %call181, 0
  br i1 %tobool182, label %if.else.315, label %if.then.183

if.then.183:                                      ; preds = %while.body.180
  store i32 0, i32* %addme, align 4
  %call184 = call i32 @getbits(%struct.UNP* %UNP, i32 15)
  store i32 %call184, i32* %bb, align 4
  %call185 = call i32 @getbits(%struct.UNP* %UNP, i32 2)
  store i32 %call185, i32* %bs, align 4
  %cmp186 = icmp eq i32 %call185, 3
  br i1 %cmp186, label %if.then.188, label %if.end.210

if.then.188:                                      ; preds = %if.then.183
  store i32 3, i32* %addme, align 4
  %call189 = call i32 @getbits(%struct.UNP* %UNP, i32 3)
  store i32 %call189, i32* %bs, align 4
  %cmp190 = icmp eq i32 %call189, 7
  br i1 %cmp190, label %if.then.192, label %if.end.209

if.then.192:                                      ; preds = %if.then.188
  store i32 10, i32* %addme, align 4
  %call193 = call i32 @getbits(%struct.UNP* %UNP, i32 5)
  store i32 %call193, i32* %bs, align 4
  %cmp194 = icmp eq i32 %call193, 31
  br i1 %cmp194, label %if.then.196, label %if.end.208

if.then.196:                                      ; preds = %if.then.192
  store i32 41, i32* %addme, align 4
  %call197 = call i32 @getbits(%struct.UNP* %UNP, i32 8)
  store i32 %call197, i32* %bs, align 4
  %cmp198 = icmp eq i32 %call197, 255
  br i1 %cmp198, label %if.then.200, label %if.end.207

if.then.200:                                      ; preds = %if.then.196
  store i32 296, i32* %addme, align 4
  br label %while.cond.201

while.cond.201:                                   ; preds = %while.body.205, %if.then.200
  %call202 = call i32 @getbits(%struct.UNP* %UNP, i32 8)
  store i32 %call202, i32* %bs, align 4
  %cmp203 = icmp eq i32 %call202, 255
  br i1 %cmp203, label %while.body.205, label %while.end

while.body.205:                                   ; preds = %while.cond.201
  %137 = load i32, i32* %addme, align 4
  %add206 = add i32 %137, 255
  store i32 %add206, i32* %addme, align 4
  br label %while.cond.201

while.end:                                        ; preds = %while.cond.201
  br label %if.end.207

if.end.207:                                       ; preds = %while.end, %if.then.196
  br label %if.end.208

if.end.208:                                       ; preds = %if.end.207, %if.then.192
  br label %if.end.209

if.end.209:                                       ; preds = %if.end.208, %if.then.188
  br label %if.end.210

if.end.210:                                       ; preds = %if.end.209, %if.then.183
  %138 = load i32, i32* %addme, align 4
  %add211 = add i32 3, %138
  %139 = load i32, i32* %bs, align 4
  %add212 = add i32 %139, %add211
  store i32 %add212, i32* %bs, align 4
  %usize213 = getelementptr inbounds %struct.UNP, %struct.UNP* %UNP, i32 0, i32 4
  %140 = load i32, i32* %usize213, align 4
  %cmp214 = icmp ugt i32 %140, 0
  br i1 %cmp214, label %land.lhs.true.216, label %if.then.297

land.lhs.true.216:                                ; preds = %if.end.210
  %141 = load i32, i32* %bs, align 4
  %cmp217 = icmp ugt i32 %141, 0
  br i1 %cmp217, label %land.lhs.true.219, label %if.then.297

land.lhs.true.219:                                ; preds = %land.lhs.true.216
  %142 = load i32, i32* %bs, align 4
  %usize220 = getelementptr inbounds %struct.UNP, %struct.UNP* %UNP, i32 0, i32 4
  %143 = load i32, i32* %usize220, align 4
  %cmp221 = icmp ule i32 %142, %143
  br i1 %cmp221, label %land.lhs.true.223, label %if.then.297

land.lhs.true.223:                                ; preds = %land.lhs.true.219
  %cur_output224 = getelementptr inbounds %struct.UNP, %struct.UNP* %UNP, i32 0, i32 2
  %144 = load i32, i32* %cur_output224, align 4
  %idxprom225 = zext i32 %144 to i64
  %outputbuf226 = getelementptr inbounds %struct.UNP, %struct.UNP* %UNP, i32 0, i32 0
  %145 = load i8*, i8** %outputbuf226, align 8
  %arrayidx227 = getelementptr inbounds i8, i8* %145, i64 %idxprom225
  %outputbuf228 = getelementptr inbounds %struct.UNP, %struct.UNP* %UNP, i32 0, i32 0
  %146 = load i8*, i8** %outputbuf228, align 8
  %cmp229 = icmp uge i8* %arrayidx227, %146
  br i1 %cmp229, label %land.lhs.true.231, label %if.then.297

land.lhs.true.231:                                ; preds = %land.lhs.true.223
  %cur_output232 = getelementptr inbounds %struct.UNP, %struct.UNP* %UNP, i32 0, i32 2
  %147 = load i32, i32* %cur_output232, align 4
  %idxprom233 = zext i32 %147 to i64
  %outputbuf234 = getelementptr inbounds %struct.UNP, %struct.UNP* %UNP, i32 0, i32 0
  %148 = load i8*, i8** %outputbuf234, align 8
  %arrayidx235 = getelementptr inbounds i8, i8* %148, i64 %idxprom233
  %149 = load i32, i32* %bs, align 4
  %idx.ext = zext i32 %149 to i64
  %add.ptr236 = getelementptr inbounds i8, i8* %arrayidx235, i64 %idx.ext
  %outputbuf237 = getelementptr inbounds %struct.UNP, %struct.UNP* %UNP, i32 0, i32 0
  %150 = load i8*, i8** %outputbuf237, align 8
  %usize238 = getelementptr inbounds %struct.UNP, %struct.UNP* %UNP, i32 0, i32 4
  %151 = load i32, i32* %usize238, align 4
  %idx.ext239 = zext i32 %151 to i64
  %add.ptr240 = getelementptr inbounds i8, i8* %150, i64 %idx.ext239
  %cmp241 = icmp ule i8* %add.ptr236, %add.ptr240
  br i1 %cmp241, label %land.lhs.true.243, label %if.then.297

land.lhs.true.243:                                ; preds = %land.lhs.true.231
  %cur_output244 = getelementptr inbounds %struct.UNP, %struct.UNP* %UNP, i32 0, i32 2
  %152 = load i32, i32* %cur_output244, align 4
  %idxprom245 = zext i32 %152 to i64
  %outputbuf246 = getelementptr inbounds %struct.UNP, %struct.UNP* %UNP, i32 0, i32 0
  %153 = load i8*, i8** %outputbuf246, align 8
  %arrayidx247 = getelementptr inbounds i8, i8* %153, i64 %idxprom245
  %154 = load i32, i32* %bs, align 4
  %idx.ext248 = zext i32 %154 to i64
  %add.ptr249 = getelementptr inbounds i8, i8* %arrayidx247, i64 %idx.ext248
  %outputbuf250 = getelementptr inbounds %struct.UNP, %struct.UNP* %UNP, i32 0, i32 0
  %155 = load i8*, i8** %outputbuf250, align 8
  %cmp251 = icmp ugt i8* %add.ptr249, %155
  br i1 %cmp251, label %lor.lhs.false.253, label %if.then.297

lor.lhs.false.253:                                ; preds = %land.lhs.true.243
  %usize254 = getelementptr inbounds %struct.UNP, %struct.UNP* %UNP, i32 0, i32 4
  %156 = load i32, i32* %usize254, align 4
  %cmp255 = icmp ugt i32 %156, 0
  br i1 %cmp255, label %land.lhs.true.257, label %if.then.297

land.lhs.true.257:                                ; preds = %lor.lhs.false.253
  %157 = load i32, i32* %bs, align 4
  %cmp258 = icmp ugt i32 %157, 0
  br i1 %cmp258, label %land.lhs.true.260, label %if.then.297

land.lhs.true.260:                                ; preds = %land.lhs.true.257
  %158 = load i32, i32* %bs, align 4
  %usize261 = getelementptr inbounds %struct.UNP, %struct.UNP* %UNP, i32 0, i32 4
  %159 = load i32, i32* %usize261, align 4
  %cmp262 = icmp ule i32 %158, %159
  br i1 %cmp262, label %land.lhs.true.264, label %if.then.297

land.lhs.true.264:                                ; preds = %land.lhs.true.260
  %cur_output265 = getelementptr inbounds %struct.UNP, %struct.UNP* %UNP, i32 0, i32 2
  %160 = load i32, i32* %cur_output265, align 4
  %161 = load i32, i32* %bb, align 4
  %sub = sub i32 %160, %161
  %idxprom266 = zext i32 %sub to i64
  %outputbuf267 = getelementptr inbounds %struct.UNP, %struct.UNP* %UNP, i32 0, i32 0
  %162 = load i8*, i8** %outputbuf267, align 8
  %arrayidx268 = getelementptr inbounds i8, i8* %162, i64 %idxprom266
  %outputbuf269 = getelementptr inbounds %struct.UNP, %struct.UNP* %UNP, i32 0, i32 0
  %163 = load i8*, i8** %outputbuf269, align 8
  %cmp270 = icmp uge i8* %arrayidx268, %163
  br i1 %cmp270, label %land.lhs.true.272, label %if.then.297

land.lhs.true.272:                                ; preds = %land.lhs.true.264
  %cur_output273 = getelementptr inbounds %struct.UNP, %struct.UNP* %UNP, i32 0, i32 2
  %164 = load i32, i32* %cur_output273, align 4
  %165 = load i32, i32* %bb, align 4
  %sub274 = sub i32 %164, %165
  %idxprom275 = zext i32 %sub274 to i64
  %outputbuf276 = getelementptr inbounds %struct.UNP, %struct.UNP* %UNP, i32 0, i32 0
  %166 = load i8*, i8** %outputbuf276, align 8
  %arrayidx277 = getelementptr inbounds i8, i8* %166, i64 %idxprom275
  %167 = load i32, i32* %bs, align 4
  %idx.ext278 = zext i32 %167 to i64
  %add.ptr279 = getelementptr inbounds i8, i8* %arrayidx277, i64 %idx.ext278
  %outputbuf280 = getelementptr inbounds %struct.UNP, %struct.UNP* %UNP, i32 0, i32 0
  %168 = load i8*, i8** %outputbuf280, align 8
  %usize281 = getelementptr inbounds %struct.UNP, %struct.UNP* %UNP, i32 0, i32 4
  %169 = load i32, i32* %usize281, align 4
  %idx.ext282 = zext i32 %169 to i64
  %add.ptr283 = getelementptr inbounds i8, i8* %168, i64 %idx.ext282
  %cmp284 = icmp ule i8* %add.ptr279, %add.ptr283
  br i1 %cmp284, label %land.lhs.true.286, label %if.then.297

land.lhs.true.286:                                ; preds = %land.lhs.true.272
  %cur_output287 = getelementptr inbounds %struct.UNP, %struct.UNP* %UNP, i32 0, i32 2
  %170 = load i32, i32* %cur_output287, align 4
  %171 = load i32, i32* %bb, align 4
  %sub288 = sub i32 %170, %171
  %idxprom289 = zext i32 %sub288 to i64
  %outputbuf290 = getelementptr inbounds %struct.UNP, %struct.UNP* %UNP, i32 0, i32 0
  %172 = load i8*, i8** %outputbuf290, align 8
  %arrayidx291 = getelementptr inbounds i8, i8* %172, i64 %idxprom289
  %173 = load i32, i32* %bs, align 4
  %idx.ext292 = zext i32 %173 to i64
  %add.ptr293 = getelementptr inbounds i8, i8* %arrayidx291, i64 %idx.ext292
  %outputbuf294 = getelementptr inbounds %struct.UNP, %struct.UNP* %UNP, i32 0, i32 0
  %174 = load i8*, i8** %outputbuf294, align 8
  %cmp295 = icmp ugt i8* %add.ptr293, %174
  br i1 %cmp295, label %if.end.299, label %if.then.297

if.then.297:                                      ; preds = %land.lhs.true.286, %land.lhs.true.272, %land.lhs.true.264, %land.lhs.true.260, %land.lhs.true.257, %lor.lhs.false.253, %land.lhs.true.243, %land.lhs.true.231, %land.lhs.true.223, %land.lhs.true.219, %land.lhs.true.216, %if.end.210
  %error298 = getelementptr inbounds %struct.UNP, %struct.UNP* %UNP, i32 0, i32 8
  store i32 1, i32* %error298, align 4
  br label %while.end.325

if.end.299:                                       ; preds = %land.lhs.true.286
  br label %while.cond.300

while.cond.300:                                   ; preds = %while.body.302, %if.end.299
  %175 = load i32, i32* %bs, align 4
  %dec = add i32 %175, -1
  store i32 %dec, i32* %bs, align 4
  %tobool301 = icmp ne i32 %175, 0
  br i1 %tobool301, label %while.body.302, label %while.end.314

while.body.302:                                   ; preds = %while.cond.300
  %cur_output303 = getelementptr inbounds %struct.UNP, %struct.UNP* %UNP, i32 0, i32 2
  %176 = load i32, i32* %cur_output303, align 4
  %177 = load i32, i32* %bb, align 4
  %sub304 = sub i32 %176, %177
  %idxprom305 = zext i32 %sub304 to i64
  %outputbuf306 = getelementptr inbounds %struct.UNP, %struct.UNP* %UNP, i32 0, i32 0
  %178 = load i8*, i8** %outputbuf306, align 8
  %arrayidx307 = getelementptr inbounds i8, i8* %178, i64 %idxprom305
  %179 = load i8, i8* %arrayidx307, align 1
  %cur_output308 = getelementptr inbounds %struct.UNP, %struct.UNP* %UNP, i32 0, i32 2
  %180 = load i32, i32* %cur_output308, align 4
  %idxprom309 = zext i32 %180 to i64
  %outputbuf310 = getelementptr inbounds %struct.UNP, %struct.UNP* %UNP, i32 0, i32 0
  %181 = load i8*, i8** %outputbuf310, align 8
  %arrayidx311 = getelementptr inbounds i8, i8* %181, i64 %idxprom309
  store i8 %179, i8* %arrayidx311, align 1
  %cur_output312 = getelementptr inbounds %struct.UNP, %struct.UNP* %UNP, i32 0, i32 2
  %182 = load i32, i32* %cur_output312, align 4
  %inc313 = add i32 %182, 1
  store i32 %inc313, i32* %cur_output312, align 4
  br label %while.cond.300

while.end.314:                                    ; preds = %while.cond.300
  br label %if.end.324

if.else.315:                                      ; preds = %while.body.180
  %call316 = call i32 @getbits(%struct.UNP* %UNP, i32 8)
  %conv317 = trunc i32 %call316 to i8
  %cur_output318 = getelementptr inbounds %struct.UNP, %struct.UNP* %UNP, i32 0, i32 2
  %183 = load i32, i32* %cur_output318, align 4
  %idxprom319 = zext i32 %183 to i64
  %outputbuf320 = getelementptr inbounds %struct.UNP, %struct.UNP* %UNP, i32 0, i32 0
  %184 = load i8*, i8** %outputbuf320, align 8
  %arrayidx321 = getelementptr inbounds i8, i8* %184, i64 %idxprom319
  store i8 %conv317, i8* %arrayidx321, align 1
  %cur_output322 = getelementptr inbounds %struct.UNP, %struct.UNP* %UNP, i32 0, i32 2
  %185 = load i32, i32* %cur_output322, align 4
  %inc323 = add i32 %185, 1
  store i32 %inc323, i32* %cur_output322, align 4
  br label %if.end.324

if.end.324:                                       ; preds = %if.else.315, %while.end.314
  br label %while.cond.173

while.end.325:                                    ; preds = %if.then.297, %land.end
  %186 = load i8*, i8** %buf, align 8
  call void @free(i8* %186) #3
  %error326 = getelementptr inbounds %struct.UNP, %struct.UNP* %UNP, i32 0, i32 8
  %187 = load i32, i32* %error326, align 4
  %tobool327 = icmp ne i32 %187, 0
  br i1 %tobool327, label %if.then.328, label %if.end.329

if.then.328:                                      ; preds = %while.end.325
  call void (i8*, ...) @cli_dbgmsg(i8* getelementptr inbounds ([54 x i8], [54 x i8]* @.str.17, i32 0, i32 0))
  br label %if.end.329

if.end.329:                                       ; preds = %if.then.328, %while.end.325
  br label %if.end.334

if.else.330:                                      ; preds = %if.end.127
  call void (i8*, ...) @cli_dbgmsg(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.18, i32 0, i32 0))
  %188 = load i8*, i8** %buf, align 8
  %outputbuf331 = getelementptr inbounds %struct.UNP, %struct.UNP* %UNP, i32 0, i32 0
  store i8* %188, i8** %outputbuf331, align 8
  %csize332 = getelementptr inbounds %struct.UNP, %struct.UNP* %UNP, i32 0, i32 5
  %189 = load i32, i32* %csize332, align 4
  %usize333 = getelementptr inbounds %struct.UNP, %struct.UNP* %UNP, i32 0, i32 4
  store i32 %189, i32* %usize333, align 4
  br label %if.end.334

if.end.334:                                       ; preds = %if.else.330, %if.end.329
  %usize335 = getelementptr inbounds %struct.UNP, %struct.UNP* %UNP, i32 0, i32 4
  %190 = load i32, i32* %usize335, align 4
  %cmp336 = icmp ult i32 %190, 4
  br i1 %cmp336, label %if.then.338, label %if.end.340

if.then.338:                                      ; preds = %if.end.334
  call void (i8*, ...) @cli_dbgmsg(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.52, i32 0, i32 0))
  %outputbuf339 = getelementptr inbounds %struct.UNP, %struct.UNP* %UNP, i32 0, i32 0
  %191 = load i8*, i8** %outputbuf339, align 8
  call void @free(i8* %191) #3
  br label %while.cond

if.end.340:                                       ; preds = %if.end.334
  %192 = load i8, i8* %script, align 1
  %tobool341 = icmp ne i8 %192, 0
  br i1 %tobool341, label %if.then.342, label %if.else.710

if.then.342:                                      ; preds = %if.end.340
  %usize343 = getelementptr inbounds %struct.UNP, %struct.UNP* %UNP, i32 0, i32 4
  %193 = load i32, i32* %usize343, align 4
  %csize344 = getelementptr inbounds %struct.UNP, %struct.UNP* %UNP, i32 0, i32 5
  store i32 %193, i32* %csize344, align 4
  %csize345 = getelementptr inbounds %struct.UNP, %struct.UNP* %UNP, i32 0, i32 5
  %194 = load i32, i32* %csize345, align 4
  %conv346 = zext i32 %194 to i64
  %call347 = call i8* @cli_malloc(i64 %conv346)
  store i8* %call347, i8** %buf, align 8
  %tobool348 = icmp ne i8* %call347, null
  br i1 %tobool348, label %if.end.351, label %if.then.349

if.then.349:                                      ; preds = %if.then.342
  %outputbuf350 = getelementptr inbounds %struct.UNP, %struct.UNP* %UNP, i32 0, i32 0
  %195 = load i8*, i8** %outputbuf350, align 8
  call void @free(i8* %195) #3
  store i32 -114, i32* %retval
  br label %return

if.end.351:                                       ; preds = %if.then.342
  %cur_output352 = getelementptr inbounds %struct.UNP, %struct.UNP* %UNP, i32 0, i32 2
  store i32 0, i32* %cur_output352, align 4
  %cur_input353 = getelementptr inbounds %struct.UNP, %struct.UNP* %UNP, i32 0, i32 3
  store i32 4, i32* %cur_input353, align 4
  %outputbuf354 = getelementptr inbounds %struct.UNP, %struct.UNP* %UNP, i32 0, i32 0
  %196 = load i8*, i8** %outputbuf354, align 8
  %197 = bitcast i8* %196 to i32*
  %198 = load i32, i32* %197, align 4
  %bits_avail355 = getelementptr inbounds %struct.UNP, %struct.UNP* %UNP, i32 0, i32 6
  store i32 %198, i32* %bits_avail355, align 4
  %error356 = getelementptr inbounds %struct.UNP, %struct.UNP* %UNP, i32 0, i32 8
  store i32 0, i32* %error356, align 4
  %bits_avail357 = getelementptr inbounds %struct.UNP, %struct.UNP* %UNP, i32 0, i32 6
  %199 = load i32, i32* %bits_avail357, align 4
  call void (i8*, ...) @cli_dbgmsg(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.53, i32 0, i32 0), i32 %199)
  br label %while.cond.358

while.cond.358:                                   ; preds = %sw.epilog, %if.end.351
  %error359 = getelementptr inbounds %struct.UNP, %struct.UNP* %UNP, i32 0, i32 8
  %200 = load i32, i32* %error359, align 4
  %tobool360 = icmp ne i32 %200, 0
  br i1 %tobool360, label %land.end.369, label %land.lhs.true.361

land.lhs.true.361:                                ; preds = %while.cond.358
  %bits_avail362 = getelementptr inbounds %struct.UNP, %struct.UNP* %UNP, i32 0, i32 6
  %201 = load i32, i32* %bits_avail362, align 4
  %tobool363 = icmp ne i32 %201, 0
  br i1 %tobool363, label %land.rhs.364, label %land.end.369

land.rhs.364:                                     ; preds = %land.lhs.true.361
  %cur_input365 = getelementptr inbounds %struct.UNP, %struct.UNP* %UNP, i32 0, i32 3
  %202 = load i32, i32* %cur_input365, align 4
  %usize366 = getelementptr inbounds %struct.UNP, %struct.UNP* %UNP, i32 0, i32 4
  %203 = load i32, i32* %usize366, align 4
  %cmp367 = icmp ult i32 %202, %203
  br label %land.end.369

land.end.369:                                     ; preds = %land.rhs.364, %land.lhs.true.361, %while.cond.358
  %204 = phi i1 [ false, %land.lhs.true.361 ], [ false, %while.cond.358 ], [ %cmp367, %land.rhs.364 ]
  br i1 %204, label %while.body.370, label %while.end.704

while.body.370:                                   ; preds = %land.end.369
  %cur_input371 = getelementptr inbounds %struct.UNP, %struct.UNP* %UNP, i32 0, i32 3
  %205 = load i32, i32* %cur_input371, align 4
  %inc372 = add i32 %205, 1
  store i32 %inc372, i32* %cur_input371, align 4
  %idxprom373 = zext i32 %205 to i64
  %outputbuf374 = getelementptr inbounds %struct.UNP, %struct.UNP* %UNP, i32 0, i32 0
  %206 = load i8*, i8** %outputbuf374, align 8
  %arrayidx375 = getelementptr inbounds i8, i8* %206, i64 %idxprom373
  %207 = load i8, i8* %arrayidx375, align 1
  store i8 %207, i8* %op, align 1
  %conv376 = zext i8 %207 to i32
  switch i32 %conv376, label %sw.default [
    i32 5, label %sw.bb
    i32 16, label %sw.bb.413
    i32 32, label %sw.bb.464
    i32 48, label %sw.bb.520
    i32 49, label %sw.bb.520
    i32 50, label %sw.bb.520
    i32 51, label %sw.bb.520
    i32 52, label %sw.bb.520
    i32 53, label %sw.bb.520
    i32 54, label %sw.bb.520
    i32 55, label %sw.bb.520
    i32 64, label %sw.bb.650
    i32 65, label %sw.bb.650
    i32 66, label %sw.bb.650
    i32 67, label %sw.bb.650
    i32 68, label %sw.bb.650
    i32 69, label %sw.bb.650
    i32 70, label %sw.bb.650
    i32 71, label %sw.bb.650
    i32 72, label %sw.bb.650
    i32 73, label %sw.bb.650
    i32 74, label %sw.bb.650
    i32 75, label %sw.bb.650
    i32 76, label %sw.bb.650
    i32 77, label %sw.bb.650
    i32 78, label %sw.bb.650
    i32 79, label %sw.bb.650
    i32 80, label %sw.bb.650
    i32 81, label %sw.bb.650
    i32 82, label %sw.bb.650
    i32 83, label %sw.bb.650
    i32 84, label %sw.bb.650
    i32 85, label %sw.bb.650
    i32 86, label %sw.bb.650
    i32 127, label %sw.bb.678
  ]

sw.bb:                                            ; preds = %while.body.370
  %cur_input377 = getelementptr inbounds %struct.UNP, %struct.UNP* %UNP, i32 0, i32 3
  %208 = load i32, i32* %cur_input377, align 4
  %usize378 = getelementptr inbounds %struct.UNP, %struct.UNP* %UNP, i32 0, i32 4
  %209 = load i32, i32* %usize378, align 4
  %sub379 = sub i32 %209, 4
  %cmp380 = icmp uge i32 %208, %sub379
  br i1 %cmp380, label %if.then.382, label %if.end.384

if.then.382:                                      ; preds = %sw.bb
  %error383 = getelementptr inbounds %struct.UNP, %struct.UNP* %UNP, i32 0, i32 8
  store i32 1, i32* %error383, align 4
  call void (i8*, ...) @cli_dbgmsg(i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.54, i32 0, i32 0))
  br label %sw.epilog

if.end.384:                                       ; preds = %sw.bb
  %cur_output385 = getelementptr inbounds %struct.UNP, %struct.UNP* %UNP, i32 0, i32 2
  %210 = load i32, i32* %cur_output385, align 4
  %add386 = add i32 %210, 12
  %csize387 = getelementptr inbounds %struct.UNP, %struct.UNP* %UNP, i32 0, i32 5
  %211 = load i32, i32* %csize387, align 4
  %cmp388 = icmp uge i32 %add386, %211
  br i1 %cmp388, label %if.then.390, label %if.end.400

if.then.390:                                      ; preds = %if.end.384
  %csize391 = getelementptr inbounds %struct.UNP, %struct.UNP* %UNP, i32 0, i32 5
  %212 = load i32, i32* %csize391, align 4
  %add392 = add i32 %212, 512
  store i32 %add392, i32* %csize391, align 4
  %213 = load i8*, i8** %buf, align 8
  %csize393 = getelementptr inbounds %struct.UNP, %struct.UNP* %UNP, i32 0, i32 5
  %214 = load i32, i32* %csize393, align 4
  %conv394 = zext i32 %214 to i64
  %call395 = call i8* @cli_realloc(i8* %213, i64 %conv394)
  store i8* %call395, i8** %newout, align 8
  %tobool396 = icmp ne i8* %call395, null
  br i1 %tobool396, label %if.end.399, label %if.then.397

if.then.397:                                      ; preds = %if.then.390
  %error398 = getelementptr inbounds %struct.UNP, %struct.UNP* %UNP, i32 0, i32 8
  store i32 1, i32* %error398, align 4
  br label %sw.epilog

if.end.399:                                       ; preds = %if.then.390
  %215 = load i8*, i8** %newout, align 8
  store i8* %215, i8** %buf, align 8
  br label %if.end.400

if.end.400:                                       ; preds = %if.end.399, %if.end.384
  %cur_output401 = getelementptr inbounds %struct.UNP, %struct.UNP* %UNP, i32 0, i32 2
  %216 = load i32, i32* %cur_output401, align 4
  %idxprom402 = zext i32 %216 to i64
  %217 = load i8*, i8** %buf, align 8
  %arrayidx403 = getelementptr inbounds i8, i8* %217, i64 %idxprom402
  %cur_input404 = getelementptr inbounds %struct.UNP, %struct.UNP* %UNP, i32 0, i32 3
  %218 = load i32, i32* %cur_input404, align 4
  %idxprom405 = zext i32 %218 to i64
  %outputbuf406 = getelementptr inbounds %struct.UNP, %struct.UNP* %UNP, i32 0, i32 0
  %219 = load i8*, i8** %outputbuf406, align 8
  %arrayidx407 = getelementptr inbounds i8, i8* %219, i64 %idxprom405
  %220 = bitcast i8* %arrayidx407 to i32*
  %221 = load i32, i32* %220, align 4
  %call408 = call i32 (i8*, i64, i8*, ...) @snprintf(i8* %arrayidx403, i64 12, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.55, i32 0, i32 0), i32 %221) #3
  %cur_output409 = getelementptr inbounds %struct.UNP, %struct.UNP* %UNP, i32 0, i32 2
  %222 = load i32, i32* %cur_output409, align 4
  %add410 = add i32 %222, 11
  store i32 %add410, i32* %cur_output409, align 4
  %cur_input411 = getelementptr inbounds %struct.UNP, %struct.UNP* %UNP, i32 0, i32 3
  %223 = load i32, i32* %cur_input411, align 4
  %add412 = add i32 %223, 4
  store i32 %add412, i32* %cur_input411, align 4
  br label %sw.epilog

sw.bb.413:                                        ; preds = %while.body.370
  %usize414 = getelementptr inbounds %struct.UNP, %struct.UNP* %UNP, i32 0, i32 4
  %224 = load i32, i32* %usize414, align 4
  %cmp415 = icmp ult i32 %224, 8
  br i1 %cmp415, label %if.then.423, label %lor.lhs.false.417

lor.lhs.false.417:                                ; preds = %sw.bb.413
  %cur_input418 = getelementptr inbounds %struct.UNP, %struct.UNP* %UNP, i32 0, i32 3
  %225 = load i32, i32* %cur_input418, align 4
  %usize419 = getelementptr inbounds %struct.UNP, %struct.UNP* %UNP, i32 0, i32 4
  %226 = load i32, i32* %usize419, align 4
  %sub420 = sub i32 %226, 8
  %cmp421 = icmp uge i32 %225, %sub420
  br i1 %cmp421, label %if.then.423, label %if.end.425

if.then.423:                                      ; preds = %lor.lhs.false.417, %sw.bb.413
  %error424 = getelementptr inbounds %struct.UNP, %struct.UNP* %UNP, i32 0, i32 8
  store i32 1, i32* %error424, align 4
  call void (i8*, ...) @cli_dbgmsg(i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.56, i32 0, i32 0))
  br label %sw.epilog

if.end.425:                                       ; preds = %lor.lhs.false.417
  %cur_output426 = getelementptr inbounds %struct.UNP, %struct.UNP* %UNP, i32 0, i32 2
  %227 = load i32, i32* %cur_output426, align 4
  %add427 = add i32 %227, 20
  %csize428 = getelementptr inbounds %struct.UNP, %struct.UNP* %UNP, i32 0, i32 5
  %228 = load i32, i32* %csize428, align 4
  %cmp429 = icmp uge i32 %add427, %228
  br i1 %cmp429, label %if.then.431, label %if.end.442

if.then.431:                                      ; preds = %if.end.425
  %csize433 = getelementptr inbounds %struct.UNP, %struct.UNP* %UNP, i32 0, i32 5
  %229 = load i32, i32* %csize433, align 4
  %add434 = add i32 %229, 512
  store i32 %add434, i32* %csize433, align 4
  %230 = load i8*, i8** %buf, align 8
  %csize435 = getelementptr inbounds %struct.UNP, %struct.UNP* %UNP, i32 0, i32 5
  %231 = load i32, i32* %csize435, align 4
  %conv436 = zext i32 %231 to i64
  %call437 = call i8* @cli_realloc(i8* %230, i64 %conv436)
  store i8* %call437, i8** %newout432, align 8
  %tobool438 = icmp ne i8* %call437, null
  br i1 %tobool438, label %if.end.441, label %if.then.439

if.then.439:                                      ; preds = %if.then.431
  %error440 = getelementptr inbounds %struct.UNP, %struct.UNP* %UNP, i32 0, i32 8
  store i32 1, i32* %error440, align 4
  br label %sw.epilog

if.end.441:                                       ; preds = %if.then.431
  %232 = load i8*, i8** %newout432, align 8
  store i8* %232, i8** %buf, align 8
  br label %if.end.442

if.end.442:                                       ; preds = %if.end.441, %if.end.425
  %cur_input443 = getelementptr inbounds %struct.UNP, %struct.UNP* %UNP, i32 0, i32 3
  %233 = load i32, i32* %cur_input443, align 4
  %add444 = add i32 %233, 4
  %idxprom445 = zext i32 %add444 to i64
  %outputbuf446 = getelementptr inbounds %struct.UNP, %struct.UNP* %UNP, i32 0, i32 0
  %234 = load i8*, i8** %outputbuf446, align 8
  %arrayidx447 = getelementptr inbounds i8, i8* %234, i64 %idxprom445
  %235 = bitcast i8* %arrayidx447 to i32*
  %236 = load i32, i32* %235, align 4
  %conv448 = sext i32 %236 to i64
  store i64 %conv448, i64* %val, align 8
  %237 = load i64, i64* %val, align 8
  %shl449 = shl i64 %237, 32
  store i64 %shl449, i64* %val, align 8
  %cur_input450 = getelementptr inbounds %struct.UNP, %struct.UNP* %UNP, i32 0, i32 3
  %238 = load i32, i32* %cur_input450, align 4
  %idxprom451 = zext i32 %238 to i64
  %outputbuf452 = getelementptr inbounds %struct.UNP, %struct.UNP* %UNP, i32 0, i32 0
  %239 = load i8*, i8** %outputbuf452, align 8
  %arrayidx453 = getelementptr inbounds i8, i8* %239, i64 %idxprom451
  %240 = bitcast i8* %arrayidx453 to i32*
  %241 = load i32, i32* %240, align 4
  %conv454 = sext i32 %241 to i64
  %242 = load i64, i64* %val, align 8
  %add455 = add i64 %242, %conv454
  store i64 %add455, i64* %val, align 8
  %cur_output456 = getelementptr inbounds %struct.UNP, %struct.UNP* %UNP, i32 0, i32 2
  %243 = load i32, i32* %cur_output456, align 4
  %idxprom457 = zext i32 %243 to i64
  %244 = load i8*, i8** %buf, align 8
  %arrayidx458 = getelementptr inbounds i8, i8* %244, i64 %idxprom457
  %245 = load i64, i64* %val, align 8
  %call459 = call i32 (i8*, i64, i8*, ...) @snprintf(i8* %arrayidx458, i64 20, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.57, i32 0, i32 0), i64 %245) #3
  %cur_output460 = getelementptr inbounds %struct.UNP, %struct.UNP* %UNP, i32 0, i32 2
  %246 = load i32, i32* %cur_output460, align 4
  %add461 = add i32 %246, 19
  store i32 %add461, i32* %cur_output460, align 4
  %cur_input462 = getelementptr inbounds %struct.UNP, %struct.UNP* %UNP, i32 0, i32 3
  %247 = load i32, i32* %cur_input462, align 4
  %add463 = add i32 %247, 8
  store i32 %add463, i32* %cur_input462, align 4
  br label %sw.epilog

sw.bb.464:                                        ; preds = %while.body.370
  %usize465 = getelementptr inbounds %struct.UNP, %struct.UNP* %UNP, i32 0, i32 4
  %248 = load i32, i32* %usize465, align 4
  %cmp466 = icmp ult i32 %248, 8
  br i1 %cmp466, label %if.then.474, label %lor.lhs.false.468

lor.lhs.false.468:                                ; preds = %sw.bb.464
  %cur_input469 = getelementptr inbounds %struct.UNP, %struct.UNP* %UNP, i32 0, i32 3
  %249 = load i32, i32* %cur_input469, align 4
  %usize470 = getelementptr inbounds %struct.UNP, %struct.UNP* %UNP, i32 0, i32 4
  %250 = load i32, i32* %usize470, align 4
  %sub471 = sub i32 %250, 8
  %cmp472 = icmp uge i32 %249, %sub471
  br i1 %cmp472, label %if.then.474, label %if.end.476

if.then.474:                                      ; preds = %lor.lhs.false.468, %sw.bb.464
  %error475 = getelementptr inbounds %struct.UNP, %struct.UNP* %UNP, i32 0, i32 8
  store i32 1, i32* %error475, align 4
  call void (i8*, ...) @cli_dbgmsg(i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.58, i32 0, i32 0))
  br label %sw.epilog

if.end.476:                                       ; preds = %lor.lhs.false.468
  %cur_output477 = getelementptr inbounds %struct.UNP, %struct.UNP* %UNP, i32 0, i32 2
  %251 = load i32, i32* %cur_output477, align 4
  %add478 = add i32 %251, 40
  %csize479 = getelementptr inbounds %struct.UNP, %struct.UNP* %UNP, i32 0, i32 5
  %252 = load i32, i32* %csize479, align 4
  %cmp480 = icmp uge i32 %add478, %252
  br i1 %cmp480, label %if.then.482, label %if.end.493

if.then.482:                                      ; preds = %if.end.476
  %csize484 = getelementptr inbounds %struct.UNP, %struct.UNP* %UNP, i32 0, i32 5
  %253 = load i32, i32* %csize484, align 4
  %add485 = add i32 %253, 512
  store i32 %add485, i32* %csize484, align 4
  %254 = load i8*, i8** %buf, align 8
  %csize486 = getelementptr inbounds %struct.UNP, %struct.UNP* %UNP, i32 0, i32 5
  %255 = load i32, i32* %csize486, align 4
  %conv487 = zext i32 %255 to i64
  %call488 = call i8* @cli_realloc(i8* %254, i64 %conv487)
  store i8* %call488, i8** %newout483, align 8
  %tobool489 = icmp ne i8* %call488, null
  br i1 %tobool489, label %if.end.492, label %if.then.490

if.then.490:                                      ; preds = %if.then.482
  %error491 = getelementptr inbounds %struct.UNP, %struct.UNP* %UNP, i32 0, i32 8
  store i32 1, i32* %error491, align 4
  br label %sw.epilog

if.end.492:                                       ; preds = %if.then.482
  %256 = load i8*, i8** %newout483, align 8
  store i8* %256, i8** %buf, align 8
  br label %if.end.493

if.end.493:                                       ; preds = %if.end.492, %if.end.476
  %cur_output494 = getelementptr inbounds %struct.UNP, %struct.UNP* %UNP, i32 0, i32 2
  %257 = load i32, i32* %cur_output494, align 4
  %idxprom495 = zext i32 %257 to i64
  %258 = load i8*, i8** %buf, align 8
  %arrayidx496 = getelementptr inbounds i8, i8* %258, i64 %idxprom495
  %cur_input497 = getelementptr inbounds %struct.UNP, %struct.UNP* %UNP, i32 0, i32 3
  %259 = load i32, i32* %cur_input497, align 4
  %idxprom498 = zext i32 %259 to i64
  %outputbuf499 = getelementptr inbounds %struct.UNP, %struct.UNP* %UNP, i32 0, i32 0
  %260 = load i8*, i8** %outputbuf499, align 8
  %arrayidx500 = getelementptr inbounds i8, i8* %260, i64 %idxprom498
  %261 = bitcast i8* %arrayidx500 to double*
  %262 = load double, double* %261, align 8
  %call501 = call i32 (i8*, i64, i8*, ...) @snprintf(i8* %arrayidx496, i64 39, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.59, i32 0, i32 0), double %262) #3
  %cur_output502 = getelementptr inbounds %struct.UNP, %struct.UNP* %UNP, i32 0, i32 2
  %263 = load i32, i32* %cur_output502, align 4
  %add503 = add i32 %263, 38
  %idxprom504 = zext i32 %add503 to i64
  %264 = load i8*, i8** %buf, align 8
  %arrayidx505 = getelementptr inbounds i8, i8* %264, i64 %idxprom504
  store i8 32, i8* %arrayidx505, align 1
  %cur_output506 = getelementptr inbounds %struct.UNP, %struct.UNP* %UNP, i32 0, i32 2
  %265 = load i32, i32* %cur_output506, align 4
  %add507 = add i32 %265, 39
  %idxprom508 = zext i32 %add507 to i64
  %266 = load i8*, i8** %buf, align 8
  %arrayidx509 = getelementptr inbounds i8, i8* %266, i64 %idxprom508
  store i8 0, i8* %arrayidx509, align 1
  %cur_output510 = getelementptr inbounds %struct.UNP, %struct.UNP* %UNP, i32 0, i32 2
  %267 = load i32, i32* %cur_output510, align 4
  %idxprom511 = zext i32 %267 to i64
  %268 = load i8*, i8** %buf, align 8
  %arrayidx512 = getelementptr inbounds i8, i8* %268, i64 %idxprom511
  %call513 = call i64 @strlen(i8* %arrayidx512) #5
  %cur_output514 = getelementptr inbounds %struct.UNP, %struct.UNP* %UNP, i32 0, i32 2
  %269 = load i32, i32* %cur_output514, align 4
  %conv515 = zext i32 %269 to i64
  %add516 = add i64 %conv515, %call513
  %conv517 = trunc i64 %add516 to i32
  store i32 %conv517, i32* %cur_output514, align 4
  %cur_input518 = getelementptr inbounds %struct.UNP, %struct.UNP* %UNP, i32 0, i32 3
  %270 = load i32, i32* %cur_input518, align 4
  %add519 = add i32 %270, 8
  store i32 %add519, i32* %cur_input518, align 4
  br label %sw.epilog

sw.bb.520:                                        ; preds = %while.body.370, %while.body.370, %while.body.370, %while.body.370, %while.body.370, %while.body.370, %while.body.370, %while.body.370
  %cur_input522 = getelementptr inbounds %struct.UNP, %struct.UNP* %UNP, i32 0, i32 3
  %271 = load i32, i32* %cur_input522, align 4
  %usize523 = getelementptr inbounds %struct.UNP, %struct.UNP* %UNP, i32 0, i32 4
  %272 = load i32, i32* %usize523, align 4
  %sub524 = sub i32 %272, 4
  %cmp525 = icmp uge i32 %271, %sub524
  br i1 %cmp525, label %if.then.527, label %if.end.529

if.then.527:                                      ; preds = %sw.bb.520
  %error528 = getelementptr inbounds %struct.UNP, %struct.UNP* %UNP, i32 0, i32 8
  store i32 1, i32* %error528, align 4
  call void (i8*, ...) @cli_dbgmsg(i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.60, i32 0, i32 0))
  br label %sw.epilog

if.end.529:                                       ; preds = %sw.bb.520
  %cur_input530 = getelementptr inbounds %struct.UNP, %struct.UNP* %UNP, i32 0, i32 3
  %273 = load i32, i32* %cur_input530, align 4
  %idxprom531 = zext i32 %273 to i64
  %outputbuf532 = getelementptr inbounds %struct.UNP, %struct.UNP* %UNP, i32 0, i32 0
  %274 = load i8*, i8** %outputbuf532, align 8
  %arrayidx533 = getelementptr inbounds i8, i8* %274, i64 %idxprom531
  %275 = bitcast i8* %arrayidx533 to i32*
  %276 = load i32, i32* %275, align 4
  store i32 %276, i32* %chars, align 4
  %277 = load i32, i32* %chars, align 4
  %mul534 = mul i32 %277, 2
  store i32 %mul534, i32* %dchars, align 4
  %cur_input535 = getelementptr inbounds %struct.UNP, %struct.UNP* %UNP, i32 0, i32 3
  %278 = load i32, i32* %cur_input535, align 4
  %add536 = add i32 %278, 4
  store i32 %add536, i32* %cur_input535, align 4
  %usize537 = getelementptr inbounds %struct.UNP, %struct.UNP* %UNP, i32 0, i32 4
  %279 = load i32, i32* %usize537, align 4
  %280 = load i32, i32* %dchars, align 4
  %cmp538 = icmp ult i32 %279, %280
  br i1 %cmp538, label %if.then.546, label %lor.lhs.false.540

lor.lhs.false.540:                                ; preds = %if.end.529
  %cur_input541 = getelementptr inbounds %struct.UNP, %struct.UNP* %UNP, i32 0, i32 3
  %281 = load i32, i32* %cur_input541, align 4
  %usize542 = getelementptr inbounds %struct.UNP, %struct.UNP* %UNP, i32 0, i32 4
  %282 = load i32, i32* %usize542, align 4
  %283 = load i32, i32* %dchars, align 4
  %sub543 = sub i32 %282, %283
  %cmp544 = icmp uge i32 %281, %sub543
  br i1 %cmp544, label %if.then.546, label %if.end.552

if.then.546:                                      ; preds = %lor.lhs.false.540, %if.end.529
  %error547 = getelementptr inbounds %struct.UNP, %struct.UNP* %UNP, i32 0, i32 8
  store i32 1, i32* %error547, align 4
  %284 = load i32, i32* %dchars, align 4
  %usize548 = getelementptr inbounds %struct.UNP, %struct.UNP* %UNP, i32 0, i32 4
  %285 = load i32, i32* %usize548, align 4
  %usize549 = getelementptr inbounds %struct.UNP, %struct.UNP* %UNP, i32 0, i32 4
  %286 = load i32, i32* %usize549, align 4
  %cur_input550 = getelementptr inbounds %struct.UNP, %struct.UNP* %UNP, i32 0, i32 3
  %287 = load i32, i32* %cur_input550, align 4
  %sub551 = sub i32 %286, %287
  call void (i8*, ...) @cli_dbgmsg(i8* getelementptr inbounds ([54 x i8], [54 x i8]* @.str.61, i32 0, i32 0), i32 %284, i32 %285, i32 %sub551)
  br label %sw.epilog

if.end.552:                                       ; preds = %lor.lhs.false.540
  %cur_output553 = getelementptr inbounds %struct.UNP, %struct.UNP* %UNP, i32 0, i32 2
  %288 = load i32, i32* %cur_output553, align 4
  %289 = load i32, i32* %chars, align 4
  %add554 = add i32 %288, %289
  %add555 = add i32 %add554, 3
  %csize556 = getelementptr inbounds %struct.UNP, %struct.UNP* %UNP, i32 0, i32 5
  %290 = load i32, i32* %csize556, align 4
  %cmp557 = icmp uge i32 %add555, %290
  br i1 %cmp557, label %if.then.559, label %if.end.571

if.then.559:                                      ; preds = %if.end.552
  %291 = load i32, i32* %chars, align 4
  %add561 = add i32 %291, 512
  %csize562 = getelementptr inbounds %struct.UNP, %struct.UNP* %UNP, i32 0, i32 5
  %292 = load i32, i32* %csize562, align 4
  %add563 = add i32 %292, %add561
  store i32 %add563, i32* %csize562, align 4
  %293 = load i8*, i8** %buf, align 8
  %csize564 = getelementptr inbounds %struct.UNP, %struct.UNP* %UNP, i32 0, i32 5
  %294 = load i32, i32* %csize564, align 4
  %conv565 = zext i32 %294 to i64
  %call566 = call i8* @cli_realloc(i8* %293, i64 %conv565)
  store i8* %call566, i8** %newout560, align 8
  %tobool567 = icmp ne i8* %call566, null
  br i1 %tobool567, label %if.end.570, label %if.then.568

if.then.568:                                      ; preds = %if.then.559
  %error569 = getelementptr inbounds %struct.UNP, %struct.UNP* %UNP, i32 0, i32 8
  store i32 1, i32* %error569, align 4
  br label %sw.epilog

if.end.570:                                       ; preds = %if.then.559
  %295 = load i8*, i8** %newout560, align 8
  store i8* %295, i8** %buf, align 8
  br label %if.end.571

if.end.571:                                       ; preds = %if.end.570, %if.end.552
  %296 = load i8, i8* %op, align 1
  %conv572 = zext i8 %296 to i32
  %sub573 = sub nsw i32 %conv572, 48
  %idxprom574 = sext i32 %sub573 to i64
  %arrayidx575 = getelementptr inbounds [8 x i8], [8 x i8]* @ea06.prefixes, i32 0, i64 %idxprom574
  %297 = load i8, i8* %arrayidx575, align 1
  %tobool576 = icmp ne i8 %297, 0
  br i1 %tobool576, label %if.then.577, label %if.end.586

if.then.577:                                      ; preds = %if.end.571
  %298 = load i8, i8* %op, align 1
  %conv578 = zext i8 %298 to i32
  %sub579 = sub nsw i32 %conv578, 48
  %idxprom580 = sext i32 %sub579 to i64
  %arrayidx581 = getelementptr inbounds [8 x i8], [8 x i8]* @ea06.prefixes, i32 0, i64 %idxprom580
  %299 = load i8, i8* %arrayidx581, align 1
  %cur_output582 = getelementptr inbounds %struct.UNP, %struct.UNP* %UNP, i32 0, i32 2
  %300 = load i32, i32* %cur_output582, align 4
  %inc583 = add i32 %300, 1
  store i32 %inc583, i32* %cur_output582, align 4
  %idxprom584 = zext i32 %300 to i64
  %301 = load i8*, i8** %buf, align 8
  %arrayidx585 = getelementptr inbounds i8, i8* %301, i64 %idxprom584
  store i8 %299, i8* %arrayidx585, align 1
  br label %if.end.586

if.end.586:                                       ; preds = %if.then.577, %if.end.571
  %302 = load i32, i32* %chars, align 4
  %tobool587 = icmp ne i32 %302, 0
  br i1 %tobool587, label %if.then.588, label %if.end.631

if.then.588:                                      ; preds = %if.end.586
  store i32 0, i32* %i521, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.then.588
  %303 = load i32, i32* %i521, align 4
  %304 = load i32, i32* %dchars, align 4
  %cmp589 = icmp ult i32 %303, %304
  br i1 %cmp589, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %305 = load i32, i32* %chars, align 4
  %conv591 = trunc i32 %305 to i8
  %conv592 = zext i8 %conv591 to i32
  %cur_input593 = getelementptr inbounds %struct.UNP, %struct.UNP* %UNP, i32 0, i32 3
  %306 = load i32, i32* %cur_input593, align 4
  %307 = load i32, i32* %i521, align 4
  %add594 = add i32 %306, %307
  %idxprom595 = zext i32 %add594 to i64
  %outputbuf596 = getelementptr inbounds %struct.UNP, %struct.UNP* %UNP, i32 0, i32 0
  %308 = load i8*, i8** %outputbuf596, align 8
  %arrayidx597 = getelementptr inbounds i8, i8* %308, i64 %idxprom595
  %309 = load i8, i8* %arrayidx597, align 1
  %conv598 = zext i8 %309 to i32
  %xor599 = xor i32 %conv598, %conv592
  %conv600 = trunc i32 %xor599 to i8
  store i8 %conv600, i8* %arrayidx597, align 1
  %310 = load i32, i32* %chars, align 4
  %shr601 = lshr i32 %310, 8
  %conv602 = trunc i32 %shr601 to i8
  %conv603 = zext i8 %conv602 to i32
  %cur_input604 = getelementptr inbounds %struct.UNP, %struct.UNP* %UNP, i32 0, i32 3
  %311 = load i32, i32* %cur_input604, align 4
  %312 = load i32, i32* %i521, align 4
  %add605 = add i32 %311, %312
  %add606 = add i32 %add605, 1
  %idxprom607 = zext i32 %add606 to i64
  %outputbuf608 = getelementptr inbounds %struct.UNP, %struct.UNP* %UNP, i32 0, i32 0
  %313 = load i8*, i8** %outputbuf608, align 8
  %arrayidx609 = getelementptr inbounds i8, i8* %313, i64 %idxprom607
  %314 = load i8, i8* %arrayidx609, align 1
  %conv610 = zext i8 %314 to i32
  %xor611 = xor i32 %conv610, %conv603
  %conv612 = trunc i32 %xor611 to i8
  store i8 %conv612, i8* %arrayidx609, align 1
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %315 = load i32, i32* %i521, align 4
  %add613 = add i32 %315, 2
  store i32 %add613, i32* %i521, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %cur_input614 = getelementptr inbounds %struct.UNP, %struct.UNP* %UNP, i32 0, i32 3
  %316 = load i32, i32* %cur_input614, align 4
  %idxprom615 = zext i32 %316 to i64
  %outputbuf616 = getelementptr inbounds %struct.UNP, %struct.UNP* %UNP, i32 0, i32 0
  %317 = load i8*, i8** %outputbuf616, align 8
  %arrayidx617 = getelementptr inbounds i8, i8* %317, i64 %idxprom615
  %318 = load i32, i32* %dchars, align 4
  %call618 = call i32 @u2a(i8* %arrayidx617, i32 %318)
  %cur_output619 = getelementptr inbounds %struct.UNP, %struct.UNP* %UNP, i32 0, i32 2
  %319 = load i32, i32* %cur_output619, align 4
  %idxprom620 = zext i32 %319 to i64
  %320 = load i8*, i8** %buf, align 8
  %arrayidx621 = getelementptr inbounds i8, i8* %320, i64 %idxprom620
  %cur_input622 = getelementptr inbounds %struct.UNP, %struct.UNP* %UNP, i32 0, i32 3
  %321 = load i32, i32* %cur_input622, align 4
  %idxprom623 = zext i32 %321 to i64
  %outputbuf624 = getelementptr inbounds %struct.UNP, %struct.UNP* %UNP, i32 0, i32 0
  %322 = load i8*, i8** %outputbuf624, align 8
  %arrayidx625 = getelementptr inbounds i8, i8* %322, i64 %idxprom623
  %323 = load i32, i32* %chars, align 4
  %conv626 = zext i32 %323 to i64
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %arrayidx621, i8* %arrayidx625, i64 %conv626, i32 1, i1 false)
  %324 = load i32, i32* %chars, align 4
  %cur_output627 = getelementptr inbounds %struct.UNP, %struct.UNP* %UNP, i32 0, i32 2
  %325 = load i32, i32* %cur_output627, align 4
  %add628 = add i32 %325, %324
  store i32 %add628, i32* %cur_output627, align 4
  %326 = load i32, i32* %dchars, align 4
  %cur_input629 = getelementptr inbounds %struct.UNP, %struct.UNP* %UNP, i32 0, i32 3
  %327 = load i32, i32* %cur_input629, align 4
  %add630 = add i32 %327, %326
  store i32 %add630, i32* %cur_input629, align 4
  br label %if.end.631

if.end.631:                                       ; preds = %for.end, %if.end.586
  %328 = load i8, i8* %op, align 1
  %conv632 = zext i8 %328 to i32
  %cmp633 = icmp eq i32 %conv632, 54
  br i1 %cmp633, label %if.then.635, label %if.end.640

if.then.635:                                      ; preds = %if.end.631
  %cur_output636 = getelementptr inbounds %struct.UNP, %struct.UNP* %UNP, i32 0, i32 2
  %329 = load i32, i32* %cur_output636, align 4
  %inc637 = add i32 %329, 1
  store i32 %inc637, i32* %cur_output636, align 4
  %idxprom638 = zext i32 %329 to i64
  %330 = load i8*, i8** %buf, align 8
  %arrayidx639 = getelementptr inbounds i8, i8* %330, i64 %idxprom638
  store i8 34, i8* %arrayidx639, align 1
  br label %if.end.640

if.end.640:                                       ; preds = %if.then.635, %if.end.631
  %331 = load i8, i8* %op, align 1
  %conv641 = zext i8 %331 to i32
  %cmp642 = icmp ne i32 %conv641, 52
  br i1 %cmp642, label %if.then.644, label %if.end.649

if.then.644:                                      ; preds = %if.end.640
  %cur_output645 = getelementptr inbounds %struct.UNP, %struct.UNP* %UNP, i32 0, i32 2
  %332 = load i32, i32* %cur_output645, align 4
  %inc646 = add i32 %332, 1
  store i32 %inc646, i32* %cur_output645, align 4
  %idxprom647 = zext i32 %332 to i64
  %333 = load i8*, i8** %buf, align 8
  %arrayidx648 = getelementptr inbounds i8, i8* %333, i64 %idxprom647
  store i8 32, i8* %arrayidx648, align 1
  br label %if.end.649

if.end.649:                                       ; preds = %if.then.644, %if.end.640
  br label %sw.epilog

sw.bb.650:                                        ; preds = %while.body.370, %while.body.370, %while.body.370, %while.body.370, %while.body.370, %while.body.370, %while.body.370, %while.body.370, %while.body.370, %while.body.370, %while.body.370, %while.body.370, %while.body.370, %while.body.370, %while.body.370, %while.body.370, %while.body.370, %while.body.370, %while.body.370, %while.body.370, %while.body.370, %while.body.370, %while.body.370
  %cur_output651 = getelementptr inbounds %struct.UNP, %struct.UNP* %UNP, i32 0, i32 2
  %334 = load i32, i32* %cur_output651, align 4
  %add652 = add i32 %334, 4
  %csize653 = getelementptr inbounds %struct.UNP, %struct.UNP* %UNP, i32 0, i32 5
  %335 = load i32, i32* %csize653, align 4
  %cmp654 = icmp uge i32 %add652, %335
  br i1 %cmp654, label %if.then.656, label %if.end.667

if.then.656:                                      ; preds = %sw.bb.650
  %csize658 = getelementptr inbounds %struct.UNP, %struct.UNP* %UNP, i32 0, i32 5
  %336 = load i32, i32* %csize658, align 4
  %add659 = add i32 %336, 512
  store i32 %add659, i32* %csize658, align 4
  %337 = load i8*, i8** %buf, align 8
  %csize660 = getelementptr inbounds %struct.UNP, %struct.UNP* %UNP, i32 0, i32 5
  %338 = load i32, i32* %csize660, align 4
  %conv661 = zext i32 %338 to i64
  %call662 = call i8* @cli_realloc(i8* %337, i64 %conv661)
  store i8* %call662, i8** %newout657, align 8
  %tobool663 = icmp ne i8* %call662, null
  br i1 %tobool663, label %if.end.666, label %if.then.664

if.then.664:                                      ; preds = %if.then.656
  %error665 = getelementptr inbounds %struct.UNP, %struct.UNP* %UNP, i32 0, i32 8
  store i32 1, i32* %error665, align 4
  br label %sw.epilog

if.end.666:                                       ; preds = %if.then.656
  %339 = load i8*, i8** %newout657, align 8
  store i8* %339, i8** %buf, align 8
  br label %if.end.667

if.end.667:                                       ; preds = %if.end.666, %sw.bb.650
  %cur_output668 = getelementptr inbounds %struct.UNP, %struct.UNP* %UNP, i32 0, i32 2
  %340 = load i32, i32* %cur_output668, align 4
  %idxprom669 = zext i32 %340 to i64
  %341 = load i8*, i8** %buf, align 8
  %arrayidx670 = getelementptr inbounds i8, i8* %341, i64 %idxprom669
  %342 = load i8, i8* %op, align 1
  %conv671 = zext i8 %342 to i32
  %sub672 = sub nsw i32 %conv671, 64
  %idxprom673 = sext i32 %sub672 to i64
  %arrayidx674 = getelementptr inbounds [23 x i8*], [23 x i8*]* %opers, i32 0, i64 %idxprom673
  %343 = load i8*, i8** %arrayidx674, align 8
  %call675 = call i32 (i8*, i64, i8*, ...) @snprintf(i8* %arrayidx670, i64 4, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.62, i32 0, i32 0), i8* %343) #3
  %cur_output676 = getelementptr inbounds %struct.UNP, %struct.UNP* %UNP, i32 0, i32 2
  %344 = load i32, i32* %cur_output676, align 4
  %add677 = add i32 %344, %call675
  store i32 %add677, i32* %cur_output676, align 4
  br label %sw.epilog

sw.bb.678:                                        ; preds = %while.body.370
  %bits_avail679 = getelementptr inbounds %struct.UNP, %struct.UNP* %UNP, i32 0, i32 6
  %345 = load i32, i32* %bits_avail679, align 4
  %dec680 = add i32 %345, -1
  store i32 %dec680, i32* %bits_avail679, align 4
  %cur_output681 = getelementptr inbounds %struct.UNP, %struct.UNP* %UNP, i32 0, i32 2
  %346 = load i32, i32* %cur_output681, align 4
  %add682 = add i32 %346, 1
  %csize683 = getelementptr inbounds %struct.UNP, %struct.UNP* %UNP, i32 0, i32 5
  %347 = load i32, i32* %csize683, align 4
  %cmp684 = icmp uge i32 %add682, %347
  br i1 %cmp684, label %if.then.686, label %if.end.697

if.then.686:                                      ; preds = %sw.bb.678
  %csize688 = getelementptr inbounds %struct.UNP, %struct.UNP* %UNP, i32 0, i32 5
  %348 = load i32, i32* %csize688, align 4
  %add689 = add i32 %348, 512
  store i32 %add689, i32* %csize688, align 4
  %349 = load i8*, i8** %buf, align 8
  %csize690 = getelementptr inbounds %struct.UNP, %struct.UNP* %UNP, i32 0, i32 5
  %350 = load i32, i32* %csize690, align 4
  %conv691 = zext i32 %350 to i64
  %call692 = call i8* @cli_realloc(i8* %349, i64 %conv691)
  store i8* %call692, i8** %newout687, align 8
  %tobool693 = icmp ne i8* %call692, null
  br i1 %tobool693, label %if.end.696, label %if.then.694

if.then.694:                                      ; preds = %if.then.686
  %error695 = getelementptr inbounds %struct.UNP, %struct.UNP* %UNP, i32 0, i32 8
  store i32 1, i32* %error695, align 4
  br label %sw.epilog

if.end.696:                                       ; preds = %if.then.686
  %351 = load i8*, i8** %newout687, align 8
  store i8* %351, i8** %buf, align 8
  br label %if.end.697

if.end.697:                                       ; preds = %if.end.696, %sw.bb.678
  %cur_output698 = getelementptr inbounds %struct.UNP, %struct.UNP* %UNP, i32 0, i32 2
  %352 = load i32, i32* %cur_output698, align 4
  %inc699 = add i32 %352, 1
  store i32 %inc699, i32* %cur_output698, align 4
  %idxprom700 = zext i32 %352 to i64
  %353 = load i8*, i8** %buf, align 8
  %arrayidx701 = getelementptr inbounds i8, i8* %353, i64 %idxprom700
  store i8 10, i8* %arrayidx701, align 1
  br label %sw.epilog

sw.default:                                       ; preds = %while.body.370
  %354 = load i8, i8* %op, align 1
  %conv702 = zext i8 %354 to i32
  call void (i8*, ...) @cli_dbgmsg(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.63, i32 0, i32 0), i32 %conv702)
  %error703 = getelementptr inbounds %struct.UNP, %struct.UNP* %UNP, i32 0, i32 8
  store i32 1, i32* %error703, align 4
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.default, %if.end.697, %if.then.694, %if.end.667, %if.then.664, %if.end.649, %if.then.568, %if.then.546, %if.then.527, %if.end.493, %if.then.490, %if.then.474, %if.end.442, %if.then.439, %if.then.423, %if.end.400, %if.then.397, %if.then.382
  br label %while.cond.358

while.end.704:                                    ; preds = %land.end.369
  %error705 = getelementptr inbounds %struct.UNP, %struct.UNP* %UNP, i32 0, i32 8
  %355 = load i32, i32* %error705, align 4
  %tobool706 = icmp ne i32 %355, 0
  br i1 %tobool706, label %if.then.707, label %if.end.708

if.then.707:                                      ; preds = %while.end.704
  call void (i8*, ...) @cli_dbgmsg(i8* getelementptr inbounds ([58 x i8], [58 x i8]* @.str.64, i32 0, i32 0))
  br label %if.end.708

if.end.708:                                       ; preds = %if.then.707, %while.end.704
  %outputbuf709 = getelementptr inbounds %struct.UNP, %struct.UNP* %UNP, i32 0, i32 0
  %356 = load i8*, i8** %outputbuf709, align 8
  call void @free(i8* %356) #3
  br label %if.end.714

if.else.710:                                      ; preds = %if.end.340
  %outputbuf711 = getelementptr inbounds %struct.UNP, %struct.UNP* %UNP, i32 0, i32 0
  %357 = load i8*, i8** %outputbuf711, align 8
  store i8* %357, i8** %buf, align 8
  %usize712 = getelementptr inbounds %struct.UNP, %struct.UNP* %UNP, i32 0, i32 4
  %358 = load i32, i32* %usize712, align 4
  %cur_output713 = getelementptr inbounds %struct.UNP, %struct.UNP* %UNP, i32 0, i32 2
  store i32 %358, i32* %cur_output713, align 4
  br label %if.end.714

if.end.714:                                       ; preds = %if.else.710, %if.end.708
  %arraydecay715 = getelementptr inbounds [1024 x i8], [1024 x i8]* %tempfile, i32 0, i32 0
  %359 = load i8*, i8** %tmpd.addr, align 8
  %360 = load i32, i32* %files, align 4
  %call716 = call i32 (i8*, i64, i8*, ...) @snprintf(i8* %arraydecay715, i64 1023, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.19, i32 0, i32 0), i8* %359, i32 %360) #3
  %arrayidx717 = getelementptr inbounds [1024 x i8], [1024 x i8]* %tempfile, i32 0, i64 1023
  store i8 0, i8* %arrayidx717, align 1
  %arraydecay718 = getelementptr inbounds [1024 x i8], [1024 x i8]* %tempfile, i32 0, i32 0
  %call719 = call i32 (i8*, i32, ...) @open(i8* %arraydecay718, i32 578, i32 448)
  store i32 %call719, i32* %i, align 4
  %cmp720 = icmp slt i32 %call719, 0
  br i1 %cmp720, label %if.then.722, label %if.end.724

if.then.722:                                      ; preds = %if.end.714
  %arraydecay723 = getelementptr inbounds [1024 x i8], [1024 x i8]* %tempfile, i32 0, i32 0
  call void (i8*, ...) @cli_dbgmsg(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.20, i32 0, i32 0), i8* %arraydecay723)
  %361 = load i8*, i8** %buf, align 8
  call void @free(i8* %361) #3
  store i32 -123, i32* %retval
  br label %return

if.end.724:                                       ; preds = %if.end.714
  %362 = load i32, i32* %i, align 4
  %363 = load i8*, i8** %buf, align 8
  %cur_output725 = getelementptr inbounds %struct.UNP, %struct.UNP* %UNP, i32 0, i32 2
  %364 = load i32, i32* %cur_output725, align 4
  %call726 = call i32 @cli_writen(i32 %362, i8* %363, i32 %364)
  %cur_output727 = getelementptr inbounds %struct.UNP, %struct.UNP* %UNP, i32 0, i32 2
  %365 = load i32, i32* %cur_output727, align 4
  %cmp728 = icmp ne i32 %call726, %365
  br i1 %cmp728, label %if.then.730, label %if.end.733

if.then.730:                                      ; preds = %if.end.724
  %usize731 = getelementptr inbounds %struct.UNP, %struct.UNP* %UNP, i32 0, i32 4
  %366 = load i32, i32* %usize731, align 4
  call void (i8*, ...) @cli_dbgmsg(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.21, i32 0, i32 0), i32 %366)
  %367 = load i32, i32* %i, align 4
  %call732 = call i32 @close(i32 %367)
  %368 = load i8*, i8** %buf, align 8
  call void @free(i8* %368) #3
  store i32 -123, i32* %retval
  br label %return

if.end.733:                                       ; preds = %if.end.724
  %369 = load i8*, i8** %buf, align 8
  call void @free(i8* %369) #3
  %370 = load i8, i8* @cli_leavetemps_flag, align 1
  %tobool734 = icmp ne i8 %370, 0
  br i1 %tobool734, label %if.then.735, label %if.else.739

if.then.735:                                      ; preds = %if.end.733
  %371 = load i8, i8* %script, align 1
  %conv736 = zext i8 %371 to i32
  %tobool737 = icmp ne i32 %conv736, 0
  %cond = select i1 %tobool737, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.66, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.67, i32 0, i32 0)
  %arraydecay738 = getelementptr inbounds [1024 x i8], [1024 x i8]* %tempfile, i32 0, i32 0
  call void (i8*, ...) @cli_dbgmsg(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.65, i32 0, i32 0), i8* %cond, i8* %arraydecay738)
  br label %if.end.743

if.else.739:                                      ; preds = %if.end.733
  %372 = load i8, i8* %script, align 1
  %conv740 = zext i8 %372 to i32
  %tobool741 = icmp ne i32 %conv740, 0
  %cond742 = select i1 %tobool741, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.66, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.67, i32 0, i32 0)
  call void (i8*, ...) @cli_dbgmsg(i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.68, i32 0, i32 0), i8* %cond742)
  br label %if.end.743

if.end.743:                                       ; preds = %if.else.739, %if.then.735
  %373 = load i32, i32* %i, align 4
  %call744 = call i32 @fsync(i32 %373)
  %374 = load i32, i32* %i, align 4
  %call745 = call i64 @lseek(i32 %374, i64 0, i32 0) #3
  %375 = load i32, i32* %i, align 4
  %376 = load %struct.cli_ctx*, %struct.cli_ctx** %ctx.addr, align 8
  %call746 = call i32 @cli_magic_scandesc(i32 %375, %struct.cli_ctx* %376)
  %cmp747 = icmp eq i32 %call746, 1
  br i1 %cmp747, label %if.then.749, label %if.end.756

if.then.749:                                      ; preds = %if.end.743
  %377 = load i32, i32* %i, align 4
  %call750 = call i32 @close(i32 %377)
  %378 = load i8, i8* @cli_leavetemps_flag, align 1
  %tobool751 = icmp ne i8 %378, 0
  br i1 %tobool751, label %if.end.755, label %if.then.752

if.then.752:                                      ; preds = %if.then.749
  %arraydecay753 = getelementptr inbounds [1024 x i8], [1024 x i8]* %tempfile, i32 0, i32 0
  %call754 = call i32 @unlink(i8* %arraydecay753) #3
  br label %if.end.755

if.end.755:                                       ; preds = %if.then.752, %if.then.749
  store i32 1, i32* %retval
  br label %return

if.end.756:                                       ; preds = %if.end.743
  %379 = load i32, i32* %i, align 4
  %call757 = call i32 @close(i32 %379)
  %380 = load i8, i8* @cli_leavetemps_flag, align 1
  %tobool758 = icmp ne i8 %380, 0
  br i1 %tobool758, label %if.end.762, label %if.then.759

if.then.759:                                      ; preds = %if.end.756
  %arraydecay760 = getelementptr inbounds [1024 x i8], [1024 x i8]* %tempfile, i32 0, i32 0
  %call761 = call i32 @unlink(i8* %arraydecay760) #3
  br label %if.end.762

if.end.762:                                       ; preds = %if.then.759, %if.end.756
  br label %while.cond

while.end.763:                                    ; preds = %lor.end
  %381 = load %struct.cli_ctx*, %struct.cli_ctx** %ctx.addr, align 8
  %limits764 = getelementptr inbounds %struct.cli_ctx, %struct.cli_ctx* %381, i32 0, i32 4
  %382 = load %struct.cl_limits*, %struct.cl_limits** %limits764, align 8
  %maxfiles765 = getelementptr inbounds %struct.cl_limits, %struct.cl_limits* %382, i32 0, i32 1
  %383 = load i32, i32* %maxfiles765, align 4
  call void (i8*, ...) @cli_dbgmsg(i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.69, i32 0, i32 0), i32 %383)
  store i32 -102, i32* %retval
  br label %return

return:                                           ; preds = %while.end.763, %if.end.755, %if.then.730, %if.then.722, %if.then.349, %if.then.170, %if.then.126, %if.then.119, %if.then.83, %if.then.76, %if.then.56, %if.then.43, %if.then.37, %if.then.19, %if.then.11, %if.then.8, %if.then
  %384 = load i32, i32* %retval
  ret i32 %384
}

declare i32 @cli_rmdirs(i8*) #2

; Function Attrs: nounwind uwtable
define internal void @MT_decrypt(i8* %buf, i32 %size, i32 %seed) #0 {
entry:
  %buf.addr = alloca i8*, align 8
  %size.addr = alloca i32, align 4
  %seed.addr = alloca i32, align 4
  %MT = alloca %struct.MT, align 8
  %i = alloca i32, align 4
  %mt = alloca i32*, align 8
  store i8* %buf, i8** %buf.addr, align 8
  store i32 %size, i32* %size.addr, align 4
  store i32 %seed, i32* %seed.addr, align 4
  %mt1 = getelementptr inbounds %struct.MT, %struct.MT* %MT, i32 0, i32 0
  %arraydecay = getelementptr inbounds [624 x i32], [624 x i32]* %mt1, i32 0, i32 0
  store i32* %arraydecay, i32** %mt, align 8
  %0 = load i32, i32* %seed.addr, align 4
  %1 = load i32*, i32** %mt, align 8
  store i32 %0, i32* %1, align 4
  store i32 1, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %2 = load i32, i32* %i, align 4
  %cmp = icmp ult i32 %2, 624
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %3 = load i32, i32* %i, align 4
  %4 = load i32, i32* %i, align 4
  %sub = sub i32 %4, 1
  %idxprom = zext i32 %sub to i64
  %5 = load i32*, i32** %mt, align 8
  %arrayidx = getelementptr inbounds i32, i32* %5, i64 %idxprom
  %6 = load i32, i32* %arrayidx, align 4
  %shr = lshr i32 %6, 30
  %7 = load i32, i32* %i, align 4
  %sub2 = sub i32 %7, 1
  %idxprom3 = zext i32 %sub2 to i64
  %8 = load i32*, i32** %mt, align 8
  %arrayidx4 = getelementptr inbounds i32, i32* %8, i64 %idxprom3
  %9 = load i32, i32* %arrayidx4, align 4
  %xor = xor i32 %shr, %9
  %mul = mul i32 1812433253, %xor
  %add = add i32 %3, %mul
  %10 = load i32, i32* %i, align 4
  %idxprom5 = zext i32 %10 to i64
  %11 = load i32*, i32** %mt, align 8
  %arrayidx6 = getelementptr inbounds i32, i32* %11, i64 %idxprom5
  store i32 %add, i32* %arrayidx6, align 4
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %12 = load i32, i32* %i, align 4
  %inc = add i32 %12, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %items = getelementptr inbounds %struct.MT, %struct.MT* %MT, i32 0, i32 1
  store i32 1, i32* %items, align 4
  br label %while.cond

while.cond:                                       ; preds = %while.body, %for.end
  %13 = load i32, i32* %size.addr, align 4
  %dec = add i32 %13, -1
  store i32 %dec, i32* %size.addr, align 4
  %tobool = icmp ne i32 %13, 0
  br i1 %tobool, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %call = call zeroext i8 @MT_getnext(%struct.MT* %MT)
  %conv = zext i8 %call to i32
  %14 = load i8*, i8** %buf.addr, align 8
  %incdec.ptr = getelementptr inbounds i8, i8* %14, i32 1
  store i8* %incdec.ptr, i8** %buf.addr, align 8
  %15 = load i8, i8* %14, align 1
  %conv7 = zext i8 %15 to i32
  %xor8 = xor i32 %conv7, %conv
  %conv9 = trunc i32 %xor8 to i8
  store i8 %conv9, i8* %14, align 1
  br label %while.cond

while.end:                                        ; preds = %while.cond
  ret void
}

declare i8* @cli_malloc(i64) #2

; Function Attrs: nounwind uwtable
define internal i32 @getbits(%struct.UNP* %UNP, i32 %size) #0 {
entry:
  %retval = alloca i32, align 4
  %UNP.addr = alloca %struct.UNP*, align 8
  %size.addr = alloca i32, align 4
  store %struct.UNP* %UNP, %struct.UNP** %UNP.addr, align 8
  store i32 %size, i32* %size.addr, align 4
  %0 = load %struct.UNP*, %struct.UNP** %UNP.addr, align 8
  %bitmap = getelementptr inbounds %struct.UNP, %struct.UNP* %0, i32 0, i32 7
  %half = bitcast %union.anon* %bitmap to %struct.anon*
  %h = getelementptr inbounds %struct.anon, %struct.anon* %half, i32 0, i32 1
  store i16 0, i16* %h, align 2
  %1 = load i32, i32* %size.addr, align 4
  %2 = load %struct.UNP*, %struct.UNP** %UNP.addr, align 8
  %bits_avail = getelementptr inbounds %struct.UNP, %struct.UNP* %2, i32 0, i32 6
  %3 = load i32, i32* %bits_avail, align 4
  %cmp = icmp ugt i32 %1, %3
  br i1 %cmp, label %land.lhs.true, label %if.end

land.lhs.true:                                    ; preds = %entry
  %4 = load i32, i32* %size.addr, align 4
  %5 = load %struct.UNP*, %struct.UNP** %UNP.addr, align 8
  %bits_avail1 = getelementptr inbounds %struct.UNP, %struct.UNP* %5, i32 0, i32 6
  %6 = load i32, i32* %bits_avail1, align 4
  %sub = sub i32 %4, %6
  %sub2 = sub i32 %sub, 1
  %div = udiv i32 %sub2, 16
  %add = add i32 %div, 1
  %mul = mul i32 %add, 2
  %7 = load %struct.UNP*, %struct.UNP** %UNP.addr, align 8
  %csize = getelementptr inbounds %struct.UNP, %struct.UNP* %7, i32 0, i32 5
  %8 = load i32, i32* %csize, align 4
  %9 = load %struct.UNP*, %struct.UNP** %UNP.addr, align 8
  %cur_input = getelementptr inbounds %struct.UNP, %struct.UNP* %9, i32 0, i32 3
  %10 = load i32, i32* %cur_input, align 4
  %sub3 = sub i32 %8, %10
  %cmp4 = icmp ugt i32 %mul, %sub3
  br i1 %cmp4, label %if.then, label %if.end

if.then:                                          ; preds = %land.lhs.true
  call void (i8*, ...) @cli_dbgmsg(i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str.25, i32 0, i32 0))
  %11 = load %struct.UNP*, %struct.UNP** %UNP.addr, align 8
  %error = getelementptr inbounds %struct.UNP, %struct.UNP* %11, i32 0, i32 8
  store i32 1, i32* %error, align 4
  store i32 0, i32* %retval
  br label %return

if.end:                                           ; preds = %land.lhs.true, %entry
  br label %while.cond

while.cond:                                       ; preds = %if.end.26, %if.end
  %12 = load i32, i32* %size.addr, align 4
  %tobool = icmp ne i32 %12, 0
  br i1 %tobool, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %13 = load %struct.UNP*, %struct.UNP** %UNP.addr, align 8
  %bits_avail5 = getelementptr inbounds %struct.UNP, %struct.UNP* %13, i32 0, i32 6
  %14 = load i32, i32* %bits_avail5, align 4
  %tobool6 = icmp ne i32 %14, 0
  br i1 %tobool6, label %if.end.26, label %if.then.7

if.then.7:                                        ; preds = %while.body
  %15 = load %struct.UNP*, %struct.UNP** %UNP.addr, align 8
  %cur_input8 = getelementptr inbounds %struct.UNP, %struct.UNP* %15, i32 0, i32 3
  %16 = load i32, i32* %cur_input8, align 4
  %inc = add i32 %16, 1
  store i32 %inc, i32* %cur_input8, align 4
  %idxprom = zext i32 %16 to i64
  %17 = load %struct.UNP*, %struct.UNP** %UNP.addr, align 8
  %inputbuf = getelementptr inbounds %struct.UNP, %struct.UNP* %17, i32 0, i32 1
  %18 = load i8*, i8** %inputbuf, align 8
  %arrayidx = getelementptr inbounds i8, i8* %18, i64 %idxprom
  %19 = load i8, i8* %arrayidx, align 1
  %conv = zext i8 %19 to i32
  %shl = shl i32 %conv, 8
  %20 = load %struct.UNP*, %struct.UNP** %UNP.addr, align 8
  %bitmap9 = getelementptr inbounds %struct.UNP, %struct.UNP* %20, i32 0, i32 7
  %half10 = bitcast %union.anon* %bitmap9 to %struct.anon*
  %l = getelementptr inbounds %struct.anon, %struct.anon* %half10, i32 0, i32 0
  %21 = load i16, i16* %l, align 2
  %conv11 = zext i16 %21 to i32
  %or = or i32 %conv11, %shl
  %conv12 = trunc i32 %or to i16
  store i16 %conv12, i16* %l, align 2
  %22 = load %struct.UNP*, %struct.UNP** %UNP.addr, align 8
  %cur_input13 = getelementptr inbounds %struct.UNP, %struct.UNP* %22, i32 0, i32 3
  %23 = load i32, i32* %cur_input13, align 4
  %inc14 = add i32 %23, 1
  store i32 %inc14, i32* %cur_input13, align 4
  %idxprom15 = zext i32 %23 to i64
  %24 = load %struct.UNP*, %struct.UNP** %UNP.addr, align 8
  %inputbuf16 = getelementptr inbounds %struct.UNP, %struct.UNP* %24, i32 0, i32 1
  %25 = load i8*, i8** %inputbuf16, align 8
  %arrayidx17 = getelementptr inbounds i8, i8* %25, i64 %idxprom15
  %26 = load i8, i8* %arrayidx17, align 1
  %conv18 = zext i8 %26 to i32
  %27 = load %struct.UNP*, %struct.UNP** %UNP.addr, align 8
  %bitmap19 = getelementptr inbounds %struct.UNP, %struct.UNP* %27, i32 0, i32 7
  %half20 = bitcast %union.anon* %bitmap19 to %struct.anon*
  %l21 = getelementptr inbounds %struct.anon, %struct.anon* %half20, i32 0, i32 0
  %28 = load i16, i16* %l21, align 2
  %conv22 = zext i16 %28 to i32
  %or23 = or i32 %conv22, %conv18
  %conv24 = trunc i32 %or23 to i16
  store i16 %conv24, i16* %l21, align 2
  %29 = load %struct.UNP*, %struct.UNP** %UNP.addr, align 8
  %bits_avail25 = getelementptr inbounds %struct.UNP, %struct.UNP* %29, i32 0, i32 6
  store i32 16, i32* %bits_avail25, align 4
  br label %if.end.26

if.end.26:                                        ; preds = %if.then.7, %while.body
  %30 = load %struct.UNP*, %struct.UNP** %UNP.addr, align 8
  %bitmap27 = getelementptr inbounds %struct.UNP, %struct.UNP* %30, i32 0, i32 7
  %full = bitcast %union.anon* %bitmap27 to i32*
  %31 = load i32, i32* %full, align 4
  %shl28 = shl i32 %31, 1
  store i32 %shl28, i32* %full, align 4
  %32 = load %struct.UNP*, %struct.UNP** %UNP.addr, align 8
  %bits_avail29 = getelementptr inbounds %struct.UNP, %struct.UNP* %32, i32 0, i32 6
  %33 = load i32, i32* %bits_avail29, align 4
  %dec = add i32 %33, -1
  store i32 %dec, i32* %bits_avail29, align 4
  %34 = load i32, i32* %size.addr, align 4
  %dec30 = add i32 %34, -1
  store i32 %dec30, i32* %size.addr, align 4
  br label %while.cond

while.end:                                        ; preds = %while.cond
  %35 = load %struct.UNP*, %struct.UNP** %UNP.addr, align 8
  %bitmap31 = getelementptr inbounds %struct.UNP, %struct.UNP* %35, i32 0, i32 7
  %half32 = bitcast %union.anon* %bitmap31 to %struct.anon*
  %h33 = getelementptr inbounds %struct.anon, %struct.anon* %half32, i32 0, i32 1
  %36 = load i16, i16* %h33, align 2
  %conv34 = zext i16 %36 to i32
  store i32 %conv34, i32* %retval
  br label %return

return:                                           ; preds = %while.end, %if.then
  %37 = load i32, i32* %retval
  ret i32 %37
}

; Function Attrs: nounwind uwtable
define internal i32 @u2a(i8* %dest, i32 %len) #0 {
entry:
  %retval = alloca i32, align 4
  %dest.addr = alloca i8*, align 8
  %len.addr = alloca i32, align 4
  %src = alloca i8*, align 8
  %i = alloca i32, align 4
  %j = alloca i32, align 4
  %cnt = alloca i32, align 4
  store i8* %dest, i8** %dest.addr, align 8
  store i32 %len, i32* %len.addr, align 4
  %0 = load i8*, i8** %dest.addr, align 8
  store i8* %0, i8** %src, align 8
  %1 = load i32, i32* %len.addr, align 4
  %cmp = icmp ult i32 %1, 2
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %2 = load i32, i32* %len.addr, align 4
  store i32 %2, i32* %retval
  br label %return

if.end:                                           ; preds = %entry
  %3 = load i32, i32* %len.addr, align 4
  %cmp1 = icmp ugt i32 %3, 4
  br i1 %cmp1, label %land.lhs.true, label %if.else

land.lhs.true:                                    ; preds = %if.end
  %4 = load i8*, i8** %src, align 8
  %arrayidx = getelementptr inbounds i8, i8* %4, i64 0
  %5 = load i8, i8* %arrayidx, align 1
  %conv = zext i8 %5 to i32
  %cmp2 = icmp eq i32 %conv, 255
  br i1 %cmp2, label %land.lhs.true.4, label %if.else

land.lhs.true.4:                                  ; preds = %land.lhs.true
  %6 = load i8*, i8** %src, align 8
  %arrayidx5 = getelementptr inbounds i8, i8* %6, i64 1
  %7 = load i8, i8* %arrayidx5, align 1
  %conv6 = zext i8 %7 to i32
  %cmp7 = icmp eq i32 %conv6, 254
  br i1 %cmp7, label %land.lhs.true.9, label %if.else

land.lhs.true.9:                                  ; preds = %land.lhs.true.4
  %8 = load i8*, i8** %src, align 8
  %arrayidx10 = getelementptr inbounds i8, i8* %8, i64 2
  %9 = load i8, i8* %arrayidx10, align 1
  %conv11 = zext i8 %9 to i32
  %tobool = icmp ne i32 %conv11, 0
  br i1 %tobool, label %if.then.12, label %if.else

if.then.12:                                       ; preds = %land.lhs.true.9
  %10 = load i32, i32* %len.addr, align 4
  %sub = sub i32 %10, 2
  store i32 %sub, i32* %len.addr, align 4
  %11 = load i8*, i8** %src, align 8
  %add.ptr = getelementptr inbounds i8, i8* %11, i64 2
  store i8* %add.ptr, i8** %src, align 8
  br label %if.end.32

if.else:                                          ; preds = %land.lhs.true.9, %land.lhs.true.4, %land.lhs.true, %if.end
  store i32 0, i32* %cnt, align 4
  %12 = load i32, i32* %len.addr, align 4
  %cmp13 = icmp ugt i32 %12, 20
  br i1 %cmp13, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.else
  br label %cond.end

cond.false:                                       ; preds = %if.else
  %13 = load i32, i32* %len.addr, align 4
  %and = and i32 %13, -2
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ 20, %cond.true ], [ %and, %cond.false ]
  store i32 %cond, i32* %j, align 4
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %cond.end
  %14 = load i32, i32* %i, align 4
  %15 = load i32, i32* %j, align 4
  %cmp15 = icmp ult i32 %14, %15
  br i1 %cmp15, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %16 = load i32, i32* %i, align 4
  %idxprom = zext i32 %16 to i64
  %17 = load i8*, i8** %src, align 8
  %arrayidx17 = getelementptr inbounds i8, i8* %17, i64 %idxprom
  %18 = load i8, i8* %arrayidx17, align 1
  %conv18 = zext i8 %18 to i32
  %cmp19 = icmp ne i32 %conv18, 0
  br i1 %cmp19, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %for.body
  %19 = load i32, i32* %i, align 4
  %add = add i32 %19, 1
  %idxprom21 = zext i32 %add to i64
  %20 = load i8*, i8** %src, align 8
  %arrayidx22 = getelementptr inbounds i8, i8* %20, i64 %idxprom21
  %21 = load i8, i8* %arrayidx22, align 1
  %conv23 = zext i8 %21 to i32
  %cmp24 = icmp eq i32 %conv23, 0
  br label %land.end

land.end:                                         ; preds = %land.rhs, %for.body
  %22 = phi i1 [ false, %for.body ], [ %cmp24, %land.rhs ]
  %land.ext = zext i1 %22 to i32
  %23 = load i32, i32* %cnt, align 4
  %add26 = add i32 %23, %land.ext
  store i32 %add26, i32* %cnt, align 4
  br label %for.inc

for.inc:                                          ; preds = %land.end
  %24 = load i32, i32* %i, align 4
  %add27 = add i32 %24, 2
  store i32 %add27, i32* %i, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %25 = load i32, i32* %cnt, align 4
  %mul = mul i32 %25, 4
  %26 = load i32, i32* %j, align 4
  %cmp28 = icmp ult i32 %mul, %26
  br i1 %cmp28, label %if.then.30, label %if.end.31

if.then.30:                                       ; preds = %for.end
  %27 = load i32, i32* %len.addr, align 4
  store i32 %27, i32* %retval
  br label %return

if.end.31:                                        ; preds = %for.end
  br label %if.end.32

if.end.32:                                        ; preds = %if.end.31, %if.then.12
  %28 = load i32, i32* %len.addr, align 4
  store i32 %28, i32* %j, align 4
  %29 = load i32, i32* %len.addr, align 4
  %shr = lshr i32 %29, 1
  store i32 %shr, i32* %len.addr, align 4
  store i32 0, i32* %i, align 4
  br label %for.cond.33

for.cond.33:                                      ; preds = %for.inc.39, %if.end.32
  %30 = load i32, i32* %i, align 4
  %31 = load i32, i32* %j, align 4
  %cmp34 = icmp ult i32 %30, %31
  br i1 %cmp34, label %for.body.36, label %for.end.41

for.body.36:                                      ; preds = %for.cond.33
  %32 = load i32, i32* %i, align 4
  %idxprom37 = zext i32 %32 to i64
  %33 = load i8*, i8** %src, align 8
  %arrayidx38 = getelementptr inbounds i8, i8* %33, i64 %idxprom37
  %34 = load i8, i8* %arrayidx38, align 1
  %35 = load i8*, i8** %dest.addr, align 8
  %incdec.ptr = getelementptr inbounds i8, i8* %35, i32 1
  store i8* %incdec.ptr, i8** %dest.addr, align 8
  store i8 %34, i8* %35, align 1
  br label %for.inc.39

for.inc.39:                                       ; preds = %for.body.36
  %36 = load i32, i32* %i, align 4
  %add40 = add i32 %36, 2
  store i32 %add40, i32* %i, align 4
  br label %for.cond.33

for.end.41:                                       ; preds = %for.cond.33
  %37 = load i32, i32* %len.addr, align 4
  store i32 %37, i32* %retval
  br label %return

return:                                           ; preds = %for.end.41, %if.then.30, %if.then
  %38 = load i32, i32* %retval
  ret i32 %38
}

; Function Attrs: nounwind
declare i32 @snprintf(i8*, i64, i8*, ...) #1

declare i32 @open(i8*, i32, ...) #2

declare i32 @cli_writen(i32, i8*, i32) #2

declare i32 @close(i32) #2

declare i32 @fsync(i32) #2

declare i32 @cli_magic_scandesc(i32, %struct.cli_ctx*) #2

; Function Attrs: nounwind
declare i32 @unlink(i8*) #1

; Function Attrs: nounwind uwtable
define internal zeroext i8 @MT_getnext(%struct.MT* %MT) #0 {
entry:
  %MT.addr = alloca %struct.MT*, align 8
  %r = alloca i32, align 4
  %mt = alloca i32*, align 8
  %i = alloca i32, align 4
  store %struct.MT* %MT, %struct.MT** %MT.addr, align 8
  %0 = load %struct.MT*, %struct.MT** %MT.addr, align 8
  %items = getelementptr inbounds %struct.MT, %struct.MT* %0, i32 0, i32 1
  %1 = load i32, i32* %items, align 4
  %dec = add i32 %1, -1
  store i32 %dec, i32* %items, align 4
  %tobool = icmp ne i32 %dec, 0
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  %2 = load %struct.MT*, %struct.MT** %MT.addr, align 8
  %mt1 = getelementptr inbounds %struct.MT, %struct.MT* %2, i32 0, i32 0
  %arraydecay = getelementptr inbounds [624 x i32], [624 x i32]* %mt1, i32 0, i32 0
  store i32* %arraydecay, i32** %mt, align 8
  %3 = load %struct.MT*, %struct.MT** %MT.addr, align 8
  %items2 = getelementptr inbounds %struct.MT, %struct.MT* %3, i32 0, i32 1
  store i32 624, i32* %items2, align 4
  %4 = load i32*, i32** %mt, align 8
  %5 = load %struct.MT*, %struct.MT** %MT.addr, align 8
  %next = getelementptr inbounds %struct.MT, %struct.MT* %5, i32 0, i32 2
  store i32* %4, i32** %next, align 8
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.then
  %6 = load i32, i32* %i, align 4
  %cmp = icmp ult i32 %6, 227
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %7 = load i32, i32* %i, align 4
  %idxprom = zext i32 %7 to i64
  %8 = load i32*, i32** %mt, align 8
  %arrayidx = getelementptr inbounds i32, i32* %8, i64 %idxprom
  %9 = load i32, i32* %arrayidx, align 4
  %10 = load i32, i32* %i, align 4
  %add = add i32 %10, 1
  %idxprom3 = zext i32 %add to i64
  %11 = load i32*, i32** %mt, align 8
  %arrayidx4 = getelementptr inbounds i32, i32* %11, i64 %idxprom3
  %12 = load i32, i32* %arrayidx4, align 4
  %xor = xor i32 %9, %12
  %and = and i32 %xor, 2147483646
  %13 = load i32, i32* %i, align 4
  %idxprom5 = zext i32 %13 to i64
  %14 = load i32*, i32** %mt, align 8
  %arrayidx6 = getelementptr inbounds i32, i32* %14, i64 %idxprom5
  %15 = load i32, i32* %arrayidx6, align 4
  %xor7 = xor i32 %and, %15
  %shr = lshr i32 %xor7, 1
  %16 = load i32, i32* %i, align 4
  %add8 = add i32 %16, 1
  %idxprom9 = zext i32 %add8 to i64
  %17 = load i32*, i32** %mt, align 8
  %arrayidx10 = getelementptr inbounds i32, i32* %17, i64 %idxprom9
  %18 = load i32, i32* %arrayidx10, align 4
  %and11 = and i32 %18, 1
  %sub = sub i32 0, %and11
  %and12 = and i32 %sub, -1727483681
  %xor13 = xor i32 %shr, %and12
  %19 = load i32, i32* %i, align 4
  %add14 = add i32 %19, 397
  %idxprom15 = zext i32 %add14 to i64
  %20 = load i32*, i32** %mt, align 8
  %arrayidx16 = getelementptr inbounds i32, i32* %20, i64 %idxprom15
  %21 = load i32, i32* %arrayidx16, align 4
  %xor17 = xor i32 %xor13, %21
  %22 = load i32, i32* %i, align 4
  %idxprom18 = zext i32 %22 to i64
  %23 = load i32*, i32** %mt, align 8
  %arrayidx19 = getelementptr inbounds i32, i32* %23, i64 %idxprom18
  store i32 %xor17, i32* %arrayidx19, align 4
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %24 = load i32, i32* %i, align 4
  %inc = add i32 %24, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  br label %for.cond.20

for.cond.20:                                      ; preds = %for.inc.47, %for.end
  %25 = load i32, i32* %i, align 4
  %cmp21 = icmp ult i32 %25, 623
  br i1 %cmp21, label %for.body.22, label %for.end.49

for.body.22:                                      ; preds = %for.cond.20
  %26 = load i32, i32* %i, align 4
  %idxprom23 = zext i32 %26 to i64
  %27 = load i32*, i32** %mt, align 8
  %arrayidx24 = getelementptr inbounds i32, i32* %27, i64 %idxprom23
  %28 = load i32, i32* %arrayidx24, align 4
  %29 = load i32, i32* %i, align 4
  %add25 = add i32 %29, 1
  %idxprom26 = zext i32 %add25 to i64
  %30 = load i32*, i32** %mt, align 8
  %arrayidx27 = getelementptr inbounds i32, i32* %30, i64 %idxprom26
  %31 = load i32, i32* %arrayidx27, align 4
  %xor28 = xor i32 %28, %31
  %and29 = and i32 %xor28, 2147483646
  %32 = load i32, i32* %i, align 4
  %idxprom30 = zext i32 %32 to i64
  %33 = load i32*, i32** %mt, align 8
  %arrayidx31 = getelementptr inbounds i32, i32* %33, i64 %idxprom30
  %34 = load i32, i32* %arrayidx31, align 4
  %xor32 = xor i32 %and29, %34
  %shr33 = lshr i32 %xor32, 1
  %35 = load i32, i32* %i, align 4
  %add34 = add i32 %35, 1
  %idxprom35 = zext i32 %add34 to i64
  %36 = load i32*, i32** %mt, align 8
  %arrayidx36 = getelementptr inbounds i32, i32* %36, i64 %idxprom35
  %37 = load i32, i32* %arrayidx36, align 4
  %and37 = and i32 %37, 1
  %sub38 = sub i32 0, %and37
  %and39 = and i32 %sub38, -1727483681
  %xor40 = xor i32 %shr33, %and39
  %38 = load i32, i32* %i, align 4
  %sub41 = sub i32 %38, 227
  %idxprom42 = zext i32 %sub41 to i64
  %39 = load i32*, i32** %mt, align 8
  %arrayidx43 = getelementptr inbounds i32, i32* %39, i64 %idxprom42
  %40 = load i32, i32* %arrayidx43, align 4
  %xor44 = xor i32 %xor40, %40
  %41 = load i32, i32* %i, align 4
  %idxprom45 = zext i32 %41 to i64
  %42 = load i32*, i32** %mt, align 8
  %arrayidx46 = getelementptr inbounds i32, i32* %42, i64 %idxprom45
  store i32 %xor44, i32* %arrayidx46, align 4
  br label %for.inc.47

for.inc.47:                                       ; preds = %for.body.22
  %43 = load i32, i32* %i, align 4
  %inc48 = add i32 %43, 1
  store i32 %inc48, i32* %i, align 4
  br label %for.cond.20

for.end.49:                                       ; preds = %for.cond.20
  %44 = load i32*, i32** %mt, align 8
  %arrayidx50 = getelementptr inbounds i32, i32* %44, i64 623
  %45 = load i32, i32* %arrayidx50, align 4
  %46 = load i32*, i32** %mt, align 8
  %arrayidx51 = getelementptr inbounds i32, i32* %46, i64 0
  %47 = load i32, i32* %arrayidx51, align 4
  %xor52 = xor i32 %45, %47
  %and53 = and i32 %xor52, 2147483646
  %48 = load i32*, i32** %mt, align 8
  %arrayidx54 = getelementptr inbounds i32, i32* %48, i64 623
  %49 = load i32, i32* %arrayidx54, align 4
  %xor55 = xor i32 %and53, %49
  %shr56 = lshr i32 %xor55, 1
  %50 = load i32*, i32** %mt, align 8
  %arrayidx57 = getelementptr inbounds i32, i32* %50, i64 0
  %51 = load i32, i32* %arrayidx57, align 4
  %and58 = and i32 %51, 1
  %sub59 = sub i32 0, %and58
  %and60 = and i32 %sub59, -1727483681
  %xor61 = xor i32 %shr56, %and60
  %52 = load i32, i32* %i, align 4
  %sub62 = sub i32 %52, 227
  %idxprom63 = zext i32 %sub62 to i64
  %53 = load i32*, i32** %mt, align 8
  %arrayidx64 = getelementptr inbounds i32, i32* %53, i64 %idxprom63
  %54 = load i32, i32* %arrayidx64, align 4
  %xor65 = xor i32 %xor61, %54
  %55 = load i32*, i32** %mt, align 8
  %arrayidx66 = getelementptr inbounds i32, i32* %55, i64 623
  store i32 %xor65, i32* %arrayidx66, align 4
  br label %if.end

if.end:                                           ; preds = %for.end.49, %entry
  %56 = load %struct.MT*, %struct.MT** %MT.addr, align 8
  %next67 = getelementptr inbounds %struct.MT, %struct.MT* %56, i32 0, i32 2
  %57 = load i32*, i32** %next67, align 8
  %incdec.ptr = getelementptr inbounds i32, i32* %57, i32 1
  store i32* %incdec.ptr, i32** %next67, align 8
  %58 = load i32, i32* %57, align 4
  store i32 %58, i32* %r, align 4
  %59 = load i32, i32* %r, align 4
  %shr68 = lshr i32 %59, 11
  %60 = load i32, i32* %r, align 4
  %xor69 = xor i32 %60, %shr68
  store i32 %xor69, i32* %r, align 4
  %61 = load i32, i32* %r, align 4
  %and70 = and i32 %61, -12953427
  %shl = shl i32 %and70, 7
  %62 = load i32, i32* %r, align 4
  %xor71 = xor i32 %62, %shl
  store i32 %xor71, i32* %r, align 4
  %63 = load i32, i32* %r, align 4
  %and72 = and i32 %63, -8308
  %shl73 = shl i32 %and72, 15
  %64 = load i32, i32* %r, align 4
  %xor74 = xor i32 %64, %shl73
  store i32 %xor74, i32* %r, align 4
  %65 = load i32, i32* %r, align 4
  %shr75 = lshr i32 %65, 18
  %66 = load i32, i32* %r, align 4
  %xor76 = xor i32 %66, %shr75
  store i32 %xor76, i32* %r, align 4
  %67 = load i32, i32* %r, align 4
  %shr77 = lshr i32 %67, 1
  %conv = trunc i32 %shr77 to i8
  ret i8 %conv
}

; Function Attrs: nounwind
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* nocapture, i8* nocapture readonly, i64, i32, i1) #3

; Function Attrs: nounwind uwtable
define internal void @LAME_decrypt(i8* %cypher, i32 %size, i16 zeroext %seed) #0 {
entry:
  %cypher.addr = alloca i8*, align 8
  %size.addr = alloca i32, align 4
  %seed.addr = alloca i16, align 2
  %lame = alloca %struct.LAME, align 4
  store i8* %cypher, i8** %cypher.addr, align 8
  store i32 %size, i32* %size.addr, align 4
  store i16 %seed, i16* %seed.addr, align 2
  %0 = load i16, i16* %seed.addr, align 2
  %conv = zext i16 %0 to i32
  call void @LAME_srand(%struct.LAME* %lame, i32 %conv)
  br label %while.cond

while.cond:                                       ; preds = %while.body, %entry
  %1 = load i32, i32* %size.addr, align 4
  %dec = add i32 %1, -1
  store i32 %dec, i32* %size.addr, align 4
  %tobool = icmp ne i32 %1, 0
  br i1 %tobool, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %call = call zeroext i8 @LAME_getnext(%struct.LAME* %lame)
  %conv1 = zext i8 %call to i32
  %2 = load i8*, i8** %cypher.addr, align 8
  %incdec.ptr = getelementptr inbounds i8, i8* %2, i32 1
  store i8* %incdec.ptr, i8** %cypher.addr, align 8
  %3 = load i8, i8* %2, align 1
  %conv2 = zext i8 %3 to i32
  %xor = xor i32 %conv2, %conv1
  %conv3 = trunc i32 %xor to i8
  store i8 %conv3, i8* %2, align 1
  br label %while.cond

while.end:                                        ; preds = %while.cond
  ret void
}

; Function Attrs: nounwind readonly
declare i32 @memcmp(i8*, i8*, i64) #4

declare i8* @cli_realloc(i8*, i64) #2

; Function Attrs: nounwind readonly
declare i64 @strlen(i8*) #4

; Function Attrs: nounwind uwtable
define internal void @LAME_srand(%struct.LAME* %l, i32 %seed) #0 {
entry:
  %l.addr = alloca %struct.LAME*, align 8
  %seed.addr = alloca i32, align 4
  %i = alloca i32, align 4
  store %struct.LAME* %l, %struct.LAME** %l.addr, align 8
  store i32 %seed, i32* %seed.addr, align 4
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %0 = load i32, i32* %i, align 4
  %cmp = icmp ult i32 %0, 17
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %1 = load i32, i32* %seed.addr, align 4
  %mul = mul i32 %1, 1403630843
  store i32 %mul, i32* %seed.addr, align 4
  %2 = load i32, i32* %seed.addr, align 4
  %sub = sub i32 1, %2
  store i32 %sub, i32* %seed.addr, align 4
  %3 = load i32, i32* %seed.addr, align 4
  %4 = load i32, i32* %i, align 4
  %idxprom = zext i32 %4 to i64
  %5 = load %struct.LAME*, %struct.LAME** %l.addr, align 8
  %grp1 = getelementptr inbounds %struct.LAME, %struct.LAME* %5, i32 0, i32 2
  %arrayidx = getelementptr inbounds [17 x i32], [17 x i32]* %grp1, i32 0, i64 %idxprom
  store i32 %3, i32* %arrayidx, align 4
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %6 = load i32, i32* %i, align 4
  %inc = add i32 %6, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %7 = load %struct.LAME*, %struct.LAME** %l.addr, align 8
  %c0 = getelementptr inbounds %struct.LAME, %struct.LAME* %7, i32 0, i32 0
  store i32 0, i32* %c0, align 4
  %8 = load %struct.LAME*, %struct.LAME** %l.addr, align 8
  %c1 = getelementptr inbounds %struct.LAME, %struct.LAME* %8, i32 0, i32 1
  store i32 10, i32* %c1, align 4
  store i32 0, i32* %i, align 4
  br label %for.cond.1

for.cond.1:                                       ; preds = %for.inc.4, %for.end
  %9 = load i32, i32* %i, align 4
  %cmp2 = icmp ult i32 %9, 9
  br i1 %cmp2, label %for.body.3, label %for.end.6

for.body.3:                                       ; preds = %for.cond.1
  %10 = load %struct.LAME*, %struct.LAME** %l.addr, align 8
  %call = call double @LAME_fpusht(%struct.LAME* %10)
  br label %for.inc.4

for.inc.4:                                        ; preds = %for.body.3
  %11 = load i32, i32* %i, align 4
  %inc5 = add i32 %11, 1
  store i32 %inc5, i32* %i, align 4
  br label %for.cond.1

for.end.6:                                        ; preds = %for.cond.1
  ret void
}

; Function Attrs: nounwind uwtable
define internal zeroext i8 @LAME_getnext(%struct.LAME* %l) #0 {
entry:
  %l.addr = alloca %struct.LAME*, align 8
  %x = alloca double, align 8
  %ret = alloca i8, align 1
  store %struct.LAME* %l, %struct.LAME** %l.addr, align 8
  %0 = load %struct.LAME*, %struct.LAME** %l.addr, align 8
  %call = call double @LAME_fpusht(%struct.LAME* %0)
  %1 = load %struct.LAME*, %struct.LAME** %l.addr, align 8
  %call1 = call double @LAME_fpusht(%struct.LAME* %1)
  %mul = fmul double %call1, 2.560000e+02
  store double %mul, double* %x, align 8
  %2 = load double, double* %x, align 8
  %conv = fptosi double %2 to i32
  %cmp = icmp slt i32 %conv, 256
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %3 = load double, double* %x, align 8
  %conv3 = fptoui double %3 to i8
  store i8 %conv3, i8* %ret, align 1
  br label %if.end

if.else:                                          ; preds = %entry
  store i8 -1, i8* %ret, align 1
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %4 = load i8, i8* %ret, align 1
  ret i8 %4
}

; Function Attrs: nounwind uwtable
define internal double @LAME_fpusht(%struct.LAME* %l) #0 {
entry:
  %l.addr = alloca %struct.LAME*, align 8
  %ret = alloca %union.anon.0, align 8
  %rolled = alloca i32, align 4
  store %struct.LAME* %l, %struct.LAME** %l.addr, align 8
  %0 = load %struct.LAME*, %struct.LAME** %l.addr, align 8
  %c0 = getelementptr inbounds %struct.LAME, %struct.LAME* %0, i32 0, i32 0
  %1 = load i32, i32* %c0, align 4
  %idxprom = zext i32 %1 to i64
  %2 = load %struct.LAME*, %struct.LAME** %l.addr, align 8
  %grp1 = getelementptr inbounds %struct.LAME, %struct.LAME* %2, i32 0, i32 2
  %arrayidx = getelementptr inbounds [17 x i32], [17 x i32]* %grp1, i32 0, i64 %idxprom
  %3 = load i32, i32* %arrayidx, align 4
  %shl = shl i32 %3, 9
  %4 = load %struct.LAME*, %struct.LAME** %l.addr, align 8
  %c01 = getelementptr inbounds %struct.LAME, %struct.LAME* %4, i32 0, i32 0
  %5 = load i32, i32* %c01, align 4
  %idxprom2 = zext i32 %5 to i64
  %6 = load %struct.LAME*, %struct.LAME** %l.addr, align 8
  %grp13 = getelementptr inbounds %struct.LAME, %struct.LAME* %6, i32 0, i32 2
  %arrayidx4 = getelementptr inbounds [17 x i32], [17 x i32]* %grp13, i32 0, i64 %idxprom2
  %7 = load i32, i32* %arrayidx4, align 4
  %shr = lshr i32 %7, 23
  %or = or i32 %shl, %shr
  %8 = load %struct.LAME*, %struct.LAME** %l.addr, align 8
  %c1 = getelementptr inbounds %struct.LAME, %struct.LAME* %8, i32 0, i32 1
  %9 = load i32, i32* %c1, align 4
  %idxprom5 = zext i32 %9 to i64
  %10 = load %struct.LAME*, %struct.LAME** %l.addr, align 8
  %grp16 = getelementptr inbounds %struct.LAME, %struct.LAME* %10, i32 0, i32 2
  %arrayidx7 = getelementptr inbounds [17 x i32], [17 x i32]* %grp16, i32 0, i64 %idxprom5
  %11 = load i32, i32* %arrayidx7, align 4
  %shl8 = shl i32 %11, 13
  %12 = load %struct.LAME*, %struct.LAME** %l.addr, align 8
  %c19 = getelementptr inbounds %struct.LAME, %struct.LAME* %12, i32 0, i32 1
  %13 = load i32, i32* %c19, align 4
  %idxprom10 = zext i32 %13 to i64
  %14 = load %struct.LAME*, %struct.LAME** %l.addr, align 8
  %grp111 = getelementptr inbounds %struct.LAME, %struct.LAME* %14, i32 0, i32 2
  %arrayidx12 = getelementptr inbounds [17 x i32], [17 x i32]* %grp111, i32 0, i64 %idxprom10
  %15 = load i32, i32* %arrayidx12, align 4
  %shr13 = lshr i32 %15, 19
  %or14 = or i32 %shl8, %shr13
  %add = add i32 %or, %or14
  store i32 %add, i32* %rolled, align 4
  %16 = load i32, i32* %rolled, align 4
  %17 = load %struct.LAME*, %struct.LAME** %l.addr, align 8
  %c015 = getelementptr inbounds %struct.LAME, %struct.LAME* %17, i32 0, i32 0
  %18 = load i32, i32* %c015, align 4
  %idxprom16 = zext i32 %18 to i64
  %19 = load %struct.LAME*, %struct.LAME** %l.addr, align 8
  %grp117 = getelementptr inbounds %struct.LAME, %struct.LAME* %19, i32 0, i32 2
  %arrayidx18 = getelementptr inbounds [17 x i32], [17 x i32]* %grp117, i32 0, i64 %idxprom16
  store i32 %16, i32* %arrayidx18, align 4
  %20 = load %struct.LAME*, %struct.LAME** %l.addr, align 8
  %c019 = getelementptr inbounds %struct.LAME, %struct.LAME* %20, i32 0, i32 0
  %21 = load i32, i32* %c019, align 4
  %dec = add i32 %21, -1
  store i32 %dec, i32* %c019, align 4
  %tobool = icmp ne i32 %21, 0
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  %22 = load %struct.LAME*, %struct.LAME** %l.addr, align 8
  %c020 = getelementptr inbounds %struct.LAME, %struct.LAME* %22, i32 0, i32 0
  store i32 16, i32* %c020, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %23 = load %struct.LAME*, %struct.LAME** %l.addr, align 8
  %c121 = getelementptr inbounds %struct.LAME, %struct.LAME* %23, i32 0, i32 1
  %24 = load i32, i32* %c121, align 4
  %dec22 = add i32 %24, -1
  store i32 %dec22, i32* %c121, align 4
  %tobool23 = icmp ne i32 %24, 0
  br i1 %tobool23, label %if.end.26, label %if.then.24

if.then.24:                                       ; preds = %if.end
  %25 = load %struct.LAME*, %struct.LAME** %l.addr, align 8
  %c125 = getelementptr inbounds %struct.LAME, %struct.LAME* %25, i32 0, i32 1
  store i32 16, i32* %c125, align 4
  br label %if.end.26

if.end.26:                                        ; preds = %if.then.24, %if.end
  %26 = load i32, i32* %rolled, align 4
  %shl27 = shl i32 %26, 20
  %as_uint = bitcast %union.anon.0* %ret to %struct.anon.1*
  %lo = getelementptr inbounds %struct.anon.1, %struct.anon.1* %as_uint, i32 0, i32 0
  store i32 %shl27, i32* %lo, align 4
  %27 = load i32, i32* %rolled, align 4
  %shr28 = lshr i32 %27, 12
  %or29 = or i32 1072693248, %shr28
  %as_uint30 = bitcast %union.anon.0* %ret to %struct.anon.1*
  %hi = getelementptr inbounds %struct.anon.1, %struct.anon.1* %as_uint30, i32 0, i32 1
  store i32 %or29, i32* %hi, align 4
  %as_double = bitcast %union.anon.0* %ret to double*
  %28 = load double, double* %as_double, align 8
  %sub = fsub double %28, 1.000000e+00
  ret double %sub
}

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind }
attributes #4 = { nounwind readonly "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #5 = { nounwind readonly }

!llvm.ident = !{!0}

!0 = !{!"clang version 3.7.0 (tags/RELEASE_370/final)"}
