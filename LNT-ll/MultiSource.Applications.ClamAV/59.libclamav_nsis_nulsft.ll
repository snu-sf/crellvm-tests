; ModuleID = './MultiSource.Applications.ClamAV/59.libclamav_nsis_nulsft.bc'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cli_ctx = type { i8**, i64*, %struct.cli_matcher*, %struct.cl_engine*, %struct.cl_limits*, i32, i32, i32, i32, %struct.cli_dconf* }
%struct.cli_matcher = type { i16, i8, i8*, %struct.cli_bm_patt**, i32*, i32, i8, i8, %struct.cli_ac_node*, %struct.cli_ac_node**, %struct.cli_ac_patt**, i32, i32, i32 }
%struct.cli_bm_patt = type { i8*, i8*, i16, i16, i8*, i8*, i8, %struct.cli_bm_patt*, i16 }
%struct.cli_ac_node = type { i8, i8, %struct.cli_ac_patt*, %struct.cli_ac_node**, %struct.cli_ac_node* }
%struct.cli_ac_patt = type { i16*, i16*, i16, i16, i8, i32, i32, i8*, i8*, i32, i16, i16, i16, i16, %struct.cli_ac_alt**, i8, i16, %struct.cli_ac_patt*, %struct.cli_ac_patt* }
%struct.cli_ac_alt = type { i8, i8*, i16, i16, %struct.cli_ac_alt* }
%struct.cl_engine = type { i32, i16, i32, i8**, i8**, i8*, i8*, i8*, i8*, i8*, i8*, i8* }
%struct.cl_limits = type { i32, i32, i32, i32, i16, i64 }
%struct.cli_dconf = type { i32, i32, i32, i32, i32, i32, i32 }
%struct.nsis_st = type { i32, i32, i64, i8*, i32, i32, i32, %struct.anon, %struct.nsis_bzstream, %struct.lzma_stream, %struct.nsis_z_stream_s, i8*, i8, i8, i8, i8, [1024 x i8] }
%struct.anon = type { i32, i8*, i32, i8* }
%struct.nsis_bzstream = type { i8*, i32, i32, i32, i8*, i32, i32, i32, i8*, i8* (i8*, i32, i32)*, void (i8*, i8*)*, i8* }
%struct.lzma_stream = type { i32, i32, i32, i32, i32, i32, i8*, i32, i8*, i32, i32, i8, i8, i16*, i16*, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i8*, i8* }
%struct.nsis_z_stream_s = type { i8*, i32, i64, i8*, i32, %struct.inflate_blocks_state }
%struct.inflate_blocks_state = type { i32, %union.anon, i32, i32, i64, [1440 x %struct.inflate_huft_s], [32768 x i8], i8*, i8*, i8*, i64 }
%union.anon = type { %struct.anon.0 }
%struct.anon.0 = type { i32, i32, [320 x i32], i32, %struct.inflate_huft_s* }
%struct.inflate_huft_s = type { %union.anon.1, i16 }
%union.anon.1 = type { %struct.anon.2 }
%struct.anon.2 = type { i8, i8 }
%struct.cli_matched_type = type { i32, i64, i16, %struct.cli_matched_type* }
%struct.stat = type { i64, i64, i64, i32, i32, i32, i32, i64, i64, i64, i64, %struct.timespec, %struct.timespec, %struct.timespec, [3 x i64] }
%struct.timespec = type { i64, i64 }

@.str = private unnamed_addr constant [17 x i8] c"in scannulsft()\0A\00", align 1
@.str.1 = private unnamed_addr constant [48 x i8] c"Archive recursion limit exceeded (arec == %u).\0A\00", align 1
@.str.2 = private unnamed_addr constant [43 x i8] c"NSIS: Can't create temporary directory %s\0A\00", align 1
@cli_leavetemps_flag = external global i8, align 1
@.str.3 = private unnamed_addr constant [30 x i8] c"NSIS: Extracting files to %s\0A\00", align 1
@.str.4 = private unnamed_addr constant [22 x i8] c"NSIS.ExceededFileSize\00", align 1
@.str.5 = private unnamed_addr constant [38 x i8] c"NSIS: Successully extracted file #%u\0A\00", align 1
@.str.6 = private unnamed_addr constant [27 x i8] c"NSIS: extraction complete\0A\00", align 1
@.str.7 = private unnamed_addr constant [37 x i8] c"NSIS: Files limit reached (max: %u)\0A\00", align 1
@.str.8 = private unnamed_addr constant [16 x i8] c"%s/content.%.3u\00", align 1
@.str.9 = private unnamed_addr constant [11 x i8] c"%s/headers\00", align 1
@.str.10 = private unnamed_addr constant [50 x i8] c"NSIS: unable to create output file %s - aborting.\00", align 1
@.str.11 = private unnamed_addr constant [41 x i8] c"NSIS: reached EOF - extraction complete\0A\00", align 1
@.str.12 = private unnamed_addr constant [41 x i8] c"NSIS: reached CRC - extraction complete\0A\00", align 1
@.str.13 = private unnamed_addr constant [24 x i8] c"NSIS: empty file found\0A\00", align 1
@.str.14 = private unnamed_addr constant [40 x i8] c"NSIS: next file is outside the archive\0A\00", align 1
@.str.15 = private unnamed_addr constant [54 x i8] c"NSIS: Skipping file due to size limit (%u, max: %lu)\0A\00", align 1
@.str.16 = private unnamed_addr constant [126 x i8] c"NSIS: out of memory at /home/juneyoung.lee/undef/llvm-test-suite/MultiSource/Applications/ClamAV/libclamav_nsis_nulsft.c:236\0A\00", align 1
@.str.17 = private unnamed_addr constant [133 x i8] c"NSIS: cannot read %u bytes at /home/juneyoung.lee/undef/llvm-test-suite/MultiSource/Applications/ClamAV/libclamav_nsis_nulsft.c:241\0A\00", align 1
@.str.18 = private unnamed_addr constant [137 x i8] c"NSIS: cannot write output file at /home/juneyoung.lee/undef/llvm-test-suite/MultiSource/Applications/ClamAV/libclamav_nsis_nulsft.c:248\0A\00", align 1
@.str.19 = private unnamed_addr constant [137 x i8] c"NSIS: decompressor init failed at /home/juneyoung.lee/undef/llvm-test-suite/MultiSource/Applications/ClamAV/libclamav_nsis_nulsft.c:255\0A\00", align 1
@.str.20 = private unnamed_addr constant [137 x i8] c"NSIS: cannot write output file at /home/juneyoung.lee/undef/llvm-test-suite/MultiSource/Applications/ClamAV/libclamav_nsis_nulsft.c:270\0A\00", align 1
@.str.21 = private unnamed_addr constant [137 x i8] c"NSIS: xs looping, breaking out at /home/juneyoung.lee/undef/llvm-test-suite/MultiSource/Applications/ClamAV/libclamav_nsis_nulsft.c:286\0A\00", align 1
@.str.22 = private unnamed_addr constant [123 x i8] c"NSIS: bad stream at /home/juneyoung.lee/undef/llvm-test-suite/MultiSource/Applications/ClamAV/libclamav_nsis_nulsft.c:293\0A\00", align 1
@.str.23 = private unnamed_addr constant [137 x i8] c"NSIS: cannot write output file at /home/juneyoung.lee/undef/llvm-test-suite/MultiSource/Applications/ClamAV/libclamav_nsis_nulsft.c:300\0A\00", align 1
@.str.24 = private unnamed_addr constant [32 x i8] c"NSIS: decompressor init failed\0A\00", align 1
@.str.25 = private unnamed_addr constant [21 x i8] c"NSIS: out of memory\0A\00", align 1
@.str.26 = private unnamed_addr constant [133 x i8] c"NSIS: cannot read %u bytes at /home/juneyoung.lee/undef/llvm-test-suite/MultiSource/Applications/ClamAV/libclamav_nsis_nulsft.c:324\0A\00", align 1
@.str.27 = private unnamed_addr constant [137 x i8] c"NSIS: xs looping, breaking out at /home/juneyoung.lee/undef/llvm-test-suite/MultiSource/Applications/ClamAV/libclamav_nsis_nulsft.c:344\0A\00", align 1
@.str.28 = private unnamed_addr constant [123 x i8] c"NSIS: bad stream at /home/juneyoung.lee/undef/llvm-test-suite/MultiSource/Applications/ClamAV/libclamav_nsis_nulsft.c:351\0A\00", align 1
@.str.29 = private unnamed_addr constant [74 x i8] c"NSIS: Breaking out due to filesize limit (%u, max: %lu) in solid archive\0A\00", align 1
@.str.30 = private unnamed_addr constant [137 x i8] c"NSIS: xs looping, breaking out at /home/juneyoung.lee/undef/llvm-test-suite/MultiSource/Applications/ClamAV/libclamav_nsis_nulsft.c:378\0A\00", align 1
@.str.31 = private unnamed_addr constant [123 x i8] c"NSIS: bad stream at /home/juneyoung.lee/undef/llvm-test-suite/MultiSource/Applications/ClamAV/libclamav_nsis_nulsft.c:391\0A\00", align 1
@.str.32 = private unnamed_addr constant [63 x i8] c"NSIS: Header info - Flags=%x, Header size=%x, Archive size=%x\0A\00", align 1
@.str.33 = private unnamed_addr constant [31 x i8] c"NSIS: Possibly truncated file\0A\00", align 1
@.str.34 = private unnamed_addr constant [22 x i8] c"NSIS: Overlays found\0A\00", align 1
@.str.35 = private unnamed_addr constant [36 x i8] c"NSIS: solid compression%s detected\0A\00", align 1
@.str.36 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.37 = private unnamed_addr constant [5 x i8] c" not\00", align 1
@.str.38 = private unnamed_addr constant [36 x i8] c"NSIS: bzip2 %u - lzma %u - zlib %u\0A\00", align 1

; Function Attrs: nounwind uwtable
define i32 @cli_scannulsft(i32 %desc, %struct.cli_ctx* %ctx, i64 %offset) #0 {
entry:
  %retval = alloca i32, align 4
  %desc.addr = alloca i32, align 4
  %ctx.addr = alloca %struct.cli_ctx*, align 8
  %offset.addr = alloca i64, align 8
  %ret = alloca i32, align 4
  %nsist = alloca %struct.nsis_st, align 8
  store i32 %desc, i32* %desc.addr, align 4
  store %struct.cli_ctx* %ctx, %struct.cli_ctx** %ctx.addr, align 8
  store i64 %offset, i64* %offset.addr, align 8
  call void (i8*, ...) @cli_dbgmsg(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str, i32 0, i32 0))
  %0 = load %struct.cli_ctx*, %struct.cli_ctx** %ctx.addr, align 8
  %limits = getelementptr inbounds %struct.cli_ctx, %struct.cli_ctx* %0, i32 0, i32 4
  %1 = load %struct.cl_limits*, %struct.cl_limits** %limits, align 8
  %tobool = icmp ne %struct.cl_limits* %1, null
  br i1 %tobool, label %land.lhs.true, label %if.end

land.lhs.true:                                    ; preds = %entry
  %2 = load %struct.cli_ctx*, %struct.cli_ctx** %ctx.addr, align 8
  %limits1 = getelementptr inbounds %struct.cli_ctx, %struct.cli_ctx* %2, i32 0, i32 4
  %3 = load %struct.cl_limits*, %struct.cl_limits** %limits1, align 8
  %maxreclevel = getelementptr inbounds %struct.cl_limits, %struct.cl_limits* %3, i32 0, i32 0
  %4 = load i32, i32* %maxreclevel, align 4
  %tobool2 = icmp ne i32 %4, 0
  br i1 %tobool2, label %land.lhs.true.3, label %if.end

land.lhs.true.3:                                  ; preds = %land.lhs.true
  %5 = load %struct.cli_ctx*, %struct.cli_ctx** %ctx.addr, align 8
  %arec = getelementptr inbounds %struct.cli_ctx, %struct.cli_ctx* %5, i32 0, i32 6
  %6 = load i32, i32* %arec, align 4
  %7 = load %struct.cli_ctx*, %struct.cli_ctx** %ctx.addr, align 8
  %limits4 = getelementptr inbounds %struct.cli_ctx, %struct.cli_ctx* %7, i32 0, i32 4
  %8 = load %struct.cl_limits*, %struct.cl_limits** %limits4, align 8
  %maxreclevel5 = getelementptr inbounds %struct.cl_limits, %struct.cl_limits* %8, i32 0, i32 0
  %9 = load i32, i32* %maxreclevel5, align 4
  %cmp = icmp uge i32 %6, %9
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %land.lhs.true.3
  %10 = load %struct.cli_ctx*, %struct.cli_ctx** %ctx.addr, align 8
  %arec6 = getelementptr inbounds %struct.cli_ctx, %struct.cli_ctx* %10, i32 0, i32 6
  %11 = load i32, i32* %arec6, align 4
  %add = add i32 %11, 1
  call void (i8*, ...) @cli_dbgmsg(i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.1, i32 0, i32 0), i32 %add)
  store i32 -100, i32* %retval
  br label %return

if.end:                                           ; preds = %land.lhs.true.3, %land.lhs.true, %entry
  %12 = bitcast %struct.nsis_st* %nsist to i8*
  call void @llvm.memset.p0i8.i64(i8* %12, i8 0, i64 41288, i32 8, i1 false)
  %13 = load i32, i32* %desc.addr, align 4
  %ifd = getelementptr inbounds %struct.nsis_st, %struct.nsis_st* %nsist, i32 0, i32 0
  store i32 %13, i32* %ifd, align 4
  %14 = load i64, i64* %offset.addr, align 8
  %off = getelementptr inbounds %struct.nsis_st, %struct.nsis_st* %nsist, i32 0, i32 2
  store i64 %14, i64* %off, align 8
  %call = call i8* @cli_gentemp(i8* null)
  %dir = getelementptr inbounds %struct.nsis_st, %struct.nsis_st* %nsist, i32 0, i32 3
  store i8* %call, i8** %dir, align 8
  %tobool7 = icmp ne i8* %call, null
  br i1 %tobool7, label %if.end.9, label %if.then.8

if.then.8:                                        ; preds = %if.end
  store i32 -118, i32* %retval
  br label %return

if.end.9:                                         ; preds = %if.end
  %dir10 = getelementptr inbounds %struct.nsis_st, %struct.nsis_st* %nsist, i32 0, i32 3
  %15 = load i8*, i8** %dir10, align 8
  %call11 = call i32 @mkdir(i8* %15, i32 448) #2
  %tobool12 = icmp ne i32 %call11, 0
  br i1 %tobool12, label %if.then.13, label %if.end.16

if.then.13:                                       ; preds = %if.end.9
  %dir14 = getelementptr inbounds %struct.nsis_st, %struct.nsis_st* %nsist, i32 0, i32 3
  %16 = load i8*, i8** %dir14, align 8
  call void (i8*, ...) @cli_dbgmsg(i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.2, i32 0, i32 0), i8* %16)
  %dir15 = getelementptr inbounds %struct.nsis_st, %struct.nsis_st* %nsist, i32 0, i32 3
  %17 = load i8*, i8** %dir15, align 8
  call void @free(i8* %17) #2
  store i32 -118, i32* %retval
  br label %return

if.end.16:                                        ; preds = %if.end.9
  %18 = load i8, i8* @cli_leavetemps_flag, align 1
  %tobool17 = icmp ne i8 %18, 0
  br i1 %tobool17, label %if.then.18, label %if.end.20

if.then.18:                                       ; preds = %if.end.16
  %dir19 = getelementptr inbounds %struct.nsis_st, %struct.nsis_st* %nsist, i32 0, i32 3
  %19 = load i8*, i8** %dir19, align 8
  call void (i8*, ...) @cli_dbgmsg(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.3, i32 0, i32 0), i8* %19)
  br label %if.end.20

if.end.20:                                        ; preds = %if.then.18, %if.end.16
  %20 = load %struct.cli_ctx*, %struct.cli_ctx** %ctx.addr, align 8
  %arec21 = getelementptr inbounds %struct.cli_ctx, %struct.cli_ctx* %20, i32 0, i32 6
  %21 = load i32, i32* %arec21, align 4
  %inc = add i32 %21, 1
  store i32 %inc, i32* %arec21, align 4
  br label %do.body

do.body:                                          ; preds = %do.cond, %if.end.20
  %22 = load %struct.cli_ctx*, %struct.cli_ctx** %ctx.addr, align 8
  %call22 = call i32 @cli_nsis_unpack(%struct.nsis_st* %nsist, %struct.cli_ctx* %22)
  store i32 %call22, i32* %ret, align 4
  %23 = load i32, i32* %ret, align 4
  %cmp23 = icmp ne i32 %23, 0
  br i1 %cmp23, label %if.then.24, label %if.else.32

if.then.24:                                       ; preds = %do.body
  %24 = load i32, i32* %ret, align 4
  %cmp25 = icmp eq i32 %24, -101
  br i1 %cmp25, label %if.then.26, label %if.end.31

if.then.26:                                       ; preds = %if.then.24
  %25 = load %struct.cli_ctx*, %struct.cli_ctx** %ctx.addr, align 8
  %options = getelementptr inbounds %struct.cli_ctx, %struct.cli_ctx* %25, i32 0, i32 5
  %26 = load i32, i32* %options, align 4
  %and = and i32 %26, 256
  %tobool27 = icmp ne i32 %and, 0
  br i1 %tobool27, label %if.then.28, label %if.else

if.then.28:                                       ; preds = %if.then.26
  %27 = load %struct.cli_ctx*, %struct.cli_ctx** %ctx.addr, align 8
  %virname = getelementptr inbounds %struct.cli_ctx, %struct.cli_ctx* %27, i32 0, i32 0
  %28 = load i8**, i8*** %virname, align 8
  store i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.4, i32 0, i32 0), i8** %28, align 8
  store i32 1, i32* %ret, align 4
  br label %if.end.30

if.else:                                          ; preds = %if.then.26
  %solid = getelementptr inbounds %struct.nsis_st, %struct.nsis_st* %nsist, i32 0, i32 13
  %29 = load i8, i8* %solid, align 1
  %conv = zext i8 %29 to i32
  %tobool29 = icmp ne i32 %conv, 0
  %cond = select i1 %tobool29, i32 2, i32 0
  store i32 %cond, i32* %ret, align 4
  br label %if.end.30

if.end.30:                                        ; preds = %if.else, %if.then.28
  br label %if.end.31

if.end.31:                                        ; preds = %if.end.30, %if.then.24
  br label %if.end.50

if.else.32:                                       ; preds = %do.body
  %fno = getelementptr inbounds %struct.nsis_st, %struct.nsis_st* %nsist, i32 0, i32 6
  %30 = load i32, i32* %fno, align 4
  call void (i8*, ...) @cli_dbgmsg(i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.5, i32 0, i32 0), i32 %30)
  %ofd = getelementptr inbounds %struct.nsis_st, %struct.nsis_st* %nsist, i32 0, i32 1
  %31 = load i32, i32* %ofd, align 4
  %call33 = call i64 @lseek(i32 %31, i64 0, i32 0) #2
  %fno34 = getelementptr inbounds %struct.nsis_st, %struct.nsis_st* %nsist, i32 0, i32 6
  %32 = load i32, i32* %fno34, align 4
  %cmp35 = icmp eq i32 %32, 1
  br i1 %cmp35, label %if.then.37, label %if.else.40

if.then.37:                                       ; preds = %if.else.32
  %ofd38 = getelementptr inbounds %struct.nsis_st, %struct.nsis_st* %nsist, i32 0, i32 1
  %33 = load i32, i32* %ofd38, align 4
  %34 = load %struct.cli_ctx*, %struct.cli_ctx** %ctx.addr, align 8
  %call39 = call i32 @cli_scandesc(i32 %33, %struct.cli_ctx* %34, i8 zeroext 0, i32 0, i8 zeroext 0, %struct.cli_matched_type** null)
  store i32 %call39, i32* %ret, align 4
  br label %if.end.43

if.else.40:                                       ; preds = %if.else.32
  %ofd41 = getelementptr inbounds %struct.nsis_st, %struct.nsis_st* %nsist, i32 0, i32 1
  %35 = load i32, i32* %ofd41, align 4
  %36 = load %struct.cli_ctx*, %struct.cli_ctx** %ctx.addr, align 8
  %call42 = call i32 @cli_magic_scandesc(i32 %35, %struct.cli_ctx* %36)
  store i32 %call42, i32* %ret, align 4
  br label %if.end.43

if.end.43:                                        ; preds = %if.else.40, %if.then.37
  %ofd44 = getelementptr inbounds %struct.nsis_st, %struct.nsis_st* %nsist, i32 0, i32 1
  %37 = load i32, i32* %ofd44, align 4
  %call45 = call i32 @close(i32 %37)
  %38 = load i8, i8* @cli_leavetemps_flag, align 1
  %tobool46 = icmp ne i8 %38, 0
  br i1 %tobool46, label %if.end.49, label %if.then.47

if.then.47:                                       ; preds = %if.end.43
  %ofn = getelementptr inbounds %struct.nsis_st, %struct.nsis_st* %nsist, i32 0, i32 16
  %arraydecay = getelementptr inbounds [1024 x i8], [1024 x i8]* %ofn, i32 0, i32 0
  %call48 = call i32 @unlink(i8* %arraydecay) #2
  br label %if.end.49

if.end.49:                                        ; preds = %if.then.47, %if.end.43
  br label %if.end.50

if.end.50:                                        ; preds = %if.end.49, %if.end.31
  br label %do.cond

do.cond:                                          ; preds = %if.end.50
  %39 = load i32, i32* %ret, align 4
  %cmp51 = icmp eq i32 %39, 0
  br i1 %cmp51, label %do.body, label %do.end

do.end:                                           ; preds = %do.cond
  %40 = load i32, i32* %ret, align 4
  %cmp53 = icmp eq i32 %40, 2
  br i1 %cmp53, label %if.then.55, label %if.end.56

if.then.55:                                       ; preds = %do.end
  store i32 0, i32* %ret, align 4
  br label %if.end.56

if.end.56:                                        ; preds = %if.then.55, %do.end
  call void @cli_nsis_free(%struct.nsis_st* %nsist)
  %41 = load i8, i8* @cli_leavetemps_flag, align 1
  %tobool57 = icmp ne i8 %41, 0
  br i1 %tobool57, label %if.end.61, label %if.then.58

if.then.58:                                       ; preds = %if.end.56
  %dir59 = getelementptr inbounds %struct.nsis_st, %struct.nsis_st* %nsist, i32 0, i32 3
  %42 = load i8*, i8** %dir59, align 8
  %call60 = call i32 @cli_rmdirs(i8* %42)
  br label %if.end.61

if.end.61:                                        ; preds = %if.then.58, %if.end.56
  %dir62 = getelementptr inbounds %struct.nsis_st, %struct.nsis_st* %nsist, i32 0, i32 3
  %43 = load i8*, i8** %dir62, align 8
  call void @free(i8* %43) #2
  %44 = load %struct.cli_ctx*, %struct.cli_ctx** %ctx.addr, align 8
  %arec63 = getelementptr inbounds %struct.cli_ctx, %struct.cli_ctx* %44, i32 0, i32 6
  %45 = load i32, i32* %arec63, align 4
  %dec = add i32 %45, -1
  store i32 %dec, i32* %arec63, align 4
  %46 = load i32, i32* %ret, align 4
  store i32 %46, i32* %retval
  br label %return

return:                                           ; preds = %if.end.61, %if.then.13, %if.then.8, %if.then
  %47 = load i32, i32* %retval
  ret i32 %47
}

declare void @cli_dbgmsg(i8*, ...) #1

; Function Attrs: nounwind
declare void @llvm.memset.p0i8.i64(i8* nocapture, i8, i64, i32, i1) #2

declare i8* @cli_gentemp(i8*) #1

; Function Attrs: nounwind
declare i32 @mkdir(i8*, i32) #3

; Function Attrs: nounwind
declare void @free(i8*) #3

; Function Attrs: nounwind uwtable
define internal i32 @cli_nsis_unpack(%struct.nsis_st* %n, %struct.cli_ctx* %ctx) #0 {
entry:
  %n.addr = alloca %struct.nsis_st*, align 8
  %ctx.addr = alloca %struct.cli_ctx*, align 8
  store %struct.nsis_st* %n, %struct.nsis_st** %n.addr, align 8
  store %struct.cli_ctx* %ctx, %struct.cli_ctx** %ctx.addr, align 8
  %0 = load %struct.nsis_st*, %struct.nsis_st** %n.addr, align 8
  %fno = getelementptr inbounds %struct.nsis_st, %struct.nsis_st* %0, i32 0, i32 6
  %1 = load i32, i32* %fno, align 4
  %tobool = icmp ne i32 %1, 0
  br i1 %tobool, label %cond.true, label %cond.false

cond.true:                                        ; preds = %entry
  %2 = load %struct.nsis_st*, %struct.nsis_st** %n.addr, align 8
  %3 = load %struct.cli_ctx*, %struct.cli_ctx** %ctx.addr, align 8
  %call = call i32 @nsis_unpack_next(%struct.nsis_st* %2, %struct.cli_ctx* %3)
  br label %cond.end

cond.false:                                       ; preds = %entry
  %4 = load %struct.nsis_st*, %struct.nsis_st** %n.addr, align 8
  %5 = load %struct.cli_ctx*, %struct.cli_ctx** %ctx.addr, align 8
  %call1 = call i32 @nsis_headers(%struct.nsis_st* %4, %struct.cli_ctx* %5)
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %call, %cond.true ], [ %call1, %cond.false ]
  ret i32 %cond
}

; Function Attrs: nounwind
declare i64 @lseek(i32, i64, i32) #3

declare i32 @cli_scandesc(i32, %struct.cli_ctx*, i8 zeroext, i32, i8 zeroext, %struct.cli_matched_type**) #1

declare i32 @cli_magic_scandesc(i32, %struct.cli_ctx*) #1

declare i32 @close(i32) #1

; Function Attrs: nounwind
declare i32 @unlink(i8*) #3

; Function Attrs: nounwind uwtable
define internal void @cli_nsis_free(%struct.nsis_st* %n) #0 {
entry:
  %n.addr = alloca %struct.nsis_st*, align 8
  store %struct.nsis_st* %n, %struct.nsis_st** %n.addr, align 8
  %0 = load %struct.nsis_st*, %struct.nsis_st** %n.addr, align 8
  call void @nsis_shutdown(%struct.nsis_st* %0)
  %1 = load %struct.nsis_st*, %struct.nsis_st** %n.addr, align 8
  %solid = getelementptr inbounds %struct.nsis_st, %struct.nsis_st* %1, i32 0, i32 13
  %2 = load i8, i8* %solid, align 1
  %conv = zext i8 %2 to i32
  %tobool = icmp ne i32 %conv, 0
  br i1 %tobool, label %land.lhs.true, label %if.end

land.lhs.true:                                    ; preds = %entry
  %3 = load %struct.nsis_st*, %struct.nsis_st** %n.addr, align 8
  %freeme = getelementptr inbounds %struct.nsis_st, %struct.nsis_st* %3, i32 0, i32 11
  %4 = load i8*, i8** %freeme, align 8
  %tobool1 = icmp ne i8* %4, null
  br i1 %tobool1, label %if.then, label %if.end

if.then:                                          ; preds = %land.lhs.true
  %5 = load %struct.nsis_st*, %struct.nsis_st** %n.addr, align 8
  %freeme2 = getelementptr inbounds %struct.nsis_st, %struct.nsis_st* %5, i32 0, i32 11
  %6 = load i8*, i8** %freeme2, align 8
  call void @free(i8* %6) #2
  br label %if.end

if.end:                                           ; preds = %if.then, %land.lhs.true, %entry
  ret void
}

declare i32 @cli_rmdirs(i8*) #1

; Function Attrs: nounwind uwtable
define internal i32 @nsis_unpack_next(%struct.nsis_st* %n, %struct.cli_ctx* %ctx) #0 {
entry:
  %retval = alloca i32, align 4
  %n.addr = alloca %struct.nsis_st*, align 8
  %ctx.addr = alloca %struct.cli_ctx*, align 8
  %ibuf = alloca i8*, align 8
  %size = alloca i32, align 4
  %loops = alloca i32, align 4
  %ret = alloca i32, align 4
  %obuf = alloca [8192 x i8], align 16
  %wsz = alloca i32, align 4
  store %struct.nsis_st* %n, %struct.nsis_st** %n.addr, align 8
  store %struct.cli_ctx* %ctx, %struct.cli_ctx** %ctx.addr, align 8
  %0 = load %struct.nsis_st*, %struct.nsis_st** %n.addr, align 8
  %eof = getelementptr inbounds %struct.nsis_st, %struct.nsis_st* %0, i32 0, i32 15
  %1 = load i8, i8* %eof, align 1
  %tobool = icmp ne i8 %1, 0
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  call void (i8*, ...) @cli_dbgmsg(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.6, i32 0, i32 0))
  store i32 2, i32* %retval
  br label %return

if.end:                                           ; preds = %entry
  %2 = load %struct.cli_ctx*, %struct.cli_ctx** %ctx.addr, align 8
  %limits = getelementptr inbounds %struct.cli_ctx, %struct.cli_ctx* %2, i32 0, i32 4
  %3 = load %struct.cl_limits*, %struct.cl_limits** %limits, align 8
  %tobool1 = icmp ne %struct.cl_limits* %3, null
  br i1 %tobool1, label %land.lhs.true, label %if.end.10

land.lhs.true:                                    ; preds = %if.end
  %4 = load %struct.cli_ctx*, %struct.cli_ctx** %ctx.addr, align 8
  %limits2 = getelementptr inbounds %struct.cli_ctx, %struct.cli_ctx* %4, i32 0, i32 4
  %5 = load %struct.cl_limits*, %struct.cl_limits** %limits2, align 8
  %maxfiles = getelementptr inbounds %struct.cl_limits, %struct.cl_limits* %5, i32 0, i32 1
  %6 = load i32, i32* %maxfiles, align 4
  %tobool3 = icmp ne i32 %6, 0
  br i1 %tobool3, label %land.lhs.true.4, label %if.end.10

land.lhs.true.4:                                  ; preds = %land.lhs.true
  %7 = load %struct.nsis_st*, %struct.nsis_st** %n.addr, align 8
  %fno = getelementptr inbounds %struct.nsis_st, %struct.nsis_st* %7, i32 0, i32 6
  %8 = load i32, i32* %fno, align 4
  %9 = load %struct.cli_ctx*, %struct.cli_ctx** %ctx.addr, align 8
  %limits5 = getelementptr inbounds %struct.cli_ctx, %struct.cli_ctx* %9, i32 0, i32 4
  %10 = load %struct.cl_limits*, %struct.cl_limits** %limits5, align 8
  %maxfiles6 = getelementptr inbounds %struct.cl_limits, %struct.cl_limits* %10, i32 0, i32 1
  %11 = load i32, i32* %maxfiles6, align 4
  %cmp = icmp uge i32 %8, %11
  br i1 %cmp, label %if.then.7, label %if.end.10

if.then.7:                                        ; preds = %land.lhs.true.4
  %12 = load %struct.cli_ctx*, %struct.cli_ctx** %ctx.addr, align 8
  %limits8 = getelementptr inbounds %struct.cli_ctx, %struct.cli_ctx* %12, i32 0, i32 4
  %13 = load %struct.cl_limits*, %struct.cl_limits** %limits8, align 8
  %maxfiles9 = getelementptr inbounds %struct.cl_limits, %struct.cl_limits* %13, i32 0, i32 1
  %14 = load i32, i32* %maxfiles9, align 4
  call void (i8*, ...) @cli_dbgmsg(i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.7, i32 0, i32 0), i32 %14)
  store i32 -102, i32* %retval
  br label %return

if.end.10:                                        ; preds = %land.lhs.true.4, %land.lhs.true, %if.end
  %15 = load %struct.nsis_st*, %struct.nsis_st** %n.addr, align 8
  %fno11 = getelementptr inbounds %struct.nsis_st, %struct.nsis_st* %15, i32 0, i32 6
  %16 = load i32, i32* %fno11, align 4
  %tobool12 = icmp ne i32 %16, 0
  br i1 %tobool12, label %if.then.13, label %if.else

if.then.13:                                       ; preds = %if.end.10
  %17 = load %struct.nsis_st*, %struct.nsis_st** %n.addr, align 8
  %ofn = getelementptr inbounds %struct.nsis_st, %struct.nsis_st* %17, i32 0, i32 16
  %arraydecay = getelementptr inbounds [1024 x i8], [1024 x i8]* %ofn, i32 0, i32 0
  %18 = load %struct.nsis_st*, %struct.nsis_st** %n.addr, align 8
  %dir = getelementptr inbounds %struct.nsis_st, %struct.nsis_st* %18, i32 0, i32 3
  %19 = load i8*, i8** %dir, align 8
  %20 = load %struct.nsis_st*, %struct.nsis_st** %n.addr, align 8
  %fno14 = getelementptr inbounds %struct.nsis_st, %struct.nsis_st* %20, i32 0, i32 6
  %21 = load i32, i32* %fno14, align 4
  %call = call i32 (i8*, i64, i8*, ...) @snprintf(i8* %arraydecay, i64 1023, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.8, i32 0, i32 0), i8* %19, i32 %21) #2
  br label %if.end.19

if.else:                                          ; preds = %if.end.10
  %22 = load %struct.nsis_st*, %struct.nsis_st** %n.addr, align 8
  %ofn15 = getelementptr inbounds %struct.nsis_st, %struct.nsis_st* %22, i32 0, i32 16
  %arraydecay16 = getelementptr inbounds [1024 x i8], [1024 x i8]* %ofn15, i32 0, i32 0
  %23 = load %struct.nsis_st*, %struct.nsis_st** %n.addr, align 8
  %dir17 = getelementptr inbounds %struct.nsis_st, %struct.nsis_st* %23, i32 0, i32 3
  %24 = load i8*, i8** %dir17, align 8
  %call18 = call i32 (i8*, i64, i8*, ...) @snprintf(i8* %arraydecay16, i64 1023, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.9, i32 0, i32 0), i8* %24) #2
  br label %if.end.19

if.end.19:                                        ; preds = %if.else, %if.then.13
  %25 = load %struct.nsis_st*, %struct.nsis_st** %n.addr, align 8
  %fno20 = getelementptr inbounds %struct.nsis_st, %struct.nsis_st* %25, i32 0, i32 6
  %26 = load i32, i32* %fno20, align 4
  %inc = add i32 %26, 1
  store i32 %inc, i32* %fno20, align 4
  %27 = load %struct.nsis_st*, %struct.nsis_st** %n.addr, align 8
  %ofn21 = getelementptr inbounds %struct.nsis_st, %struct.nsis_st* %27, i32 0, i32 16
  %arraydecay22 = getelementptr inbounds [1024 x i8], [1024 x i8]* %ofn21, i32 0, i32 0
  %call23 = call i32 (i8*, i32, ...) @open(i8* %arraydecay22, i32 578, i32 384)
  %28 = load %struct.nsis_st*, %struct.nsis_st** %n.addr, align 8
  %ofd = getelementptr inbounds %struct.nsis_st, %struct.nsis_st* %28, i32 0, i32 1
  store i32 %call23, i32* %ofd, align 4
  %cmp24 = icmp eq i32 %call23, -1
  br i1 %cmp24, label %if.then.25, label %if.end.28

if.then.25:                                       ; preds = %if.end.19
  %29 = load %struct.nsis_st*, %struct.nsis_st** %n.addr, align 8
  %ofn26 = getelementptr inbounds %struct.nsis_st, %struct.nsis_st* %29, i32 0, i32 16
  %arraydecay27 = getelementptr inbounds [1024 x i8], [1024 x i8]* %ofn26, i32 0, i32 0
  call void (i8*, ...) @cli_errmsg(i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str.10, i32 0, i32 0), i8* %arraydecay27)
  store i32 -123, i32* %retval
  br label %return

if.end.28:                                        ; preds = %if.end.19
  %30 = load %struct.nsis_st*, %struct.nsis_st** %n.addr, align 8
  %solid = getelementptr inbounds %struct.nsis_st, %struct.nsis_st* %30, i32 0, i32 13
  %31 = load i8, i8* %solid, align 1
  %tobool29 = icmp ne i8 %31, 0
  br i1 %tobool29, label %if.else.200, label %if.then.30

if.then.30:                                       ; preds = %if.end.28
  %32 = load %struct.nsis_st*, %struct.nsis_st** %n.addr, align 8
  %ifd = getelementptr inbounds %struct.nsis_st, %struct.nsis_st* %32, i32 0, i32 0
  %33 = load i32, i32* %ifd, align 4
  %34 = bitcast i32* %size to i8*
  %call31 = call i32 @cli_readn(i32 %33, i8* %34, i32 4)
  %cmp32 = icmp ne i32 %call31, 4
  br i1 %cmp32, label %if.then.33, label %if.end.36

if.then.33:                                       ; preds = %if.then.30
  call void (i8*, ...) @cli_dbgmsg(i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.11, i32 0, i32 0))
  %35 = load %struct.nsis_st*, %struct.nsis_st** %n.addr, align 8
  %ofd34 = getelementptr inbounds %struct.nsis_st, %struct.nsis_st* %35, i32 0, i32 1
  %36 = load i32, i32* %ofd34, align 4
  %call35 = call i32 @close(i32 %36)
  store i32 2, i32* %retval
  br label %return

if.end.36:                                        ; preds = %if.then.30
  %37 = load %struct.nsis_st*, %struct.nsis_st** %n.addr, align 8
  %asz = getelementptr inbounds %struct.nsis_st, %struct.nsis_st* %37, i32 0, i32 4
  %38 = load i32, i32* %asz, align 4
  %cmp37 = icmp eq i32 %38, 4
  br i1 %cmp37, label %if.then.38, label %if.end.41

if.then.38:                                       ; preds = %if.end.36
  call void (i8*, ...) @cli_dbgmsg(i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.12, i32 0, i32 0))
  %39 = load %struct.nsis_st*, %struct.nsis_st** %n.addr, align 8
  %ofd39 = getelementptr inbounds %struct.nsis_st, %struct.nsis_st* %39, i32 0, i32 1
  %40 = load i32, i32* %ofd39, align 4
  %call40 = call i32 @close(i32 %40)
  store i32 2, i32* %retval
  br label %return

if.end.41:                                        ; preds = %if.end.36
  %41 = load i32, i32* %size, align 4
  store i32 %41, i32* %loops, align 4
  %42 = load i32, i32* %loops, align 4
  %and = and i32 %42, 2147483647
  store i32 %and, i32* %size, align 4
  %tobool42 = icmp ne i32 %and, 0
  br i1 %tobool42, label %if.end.44, label %if.then.43

if.then.43:                                       ; preds = %if.end.41
  call void (i8*, ...) @cli_dbgmsg(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.13, i32 0, i32 0))
  store i32 0, i32* %retval
  br label %return

if.end.44:                                        ; preds = %if.end.41
  %43 = load %struct.nsis_st*, %struct.nsis_st** %n.addr, align 8
  %asz45 = getelementptr inbounds %struct.nsis_st, %struct.nsis_st* %43, i32 0, i32 4
  %44 = load i32, i32* %asz45, align 4
  %cmp46 = icmp ult i32 %44, 4
  br i1 %cmp46, label %if.then.49, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.end.44
  %45 = load i32, i32* %size, align 4
  %46 = load %struct.nsis_st*, %struct.nsis_st** %n.addr, align 8
  %asz47 = getelementptr inbounds %struct.nsis_st, %struct.nsis_st* %46, i32 0, i32 4
  %47 = load i32, i32* %asz47, align 4
  %sub = sub i32 %47, 4
  %cmp48 = icmp ugt i32 %45, %sub
  br i1 %cmp48, label %if.then.49, label %if.end.52

if.then.49:                                       ; preds = %lor.lhs.false, %if.end.44
  call void (i8*, ...) @cli_dbgmsg(i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.14, i32 0, i32 0))
  %48 = load %struct.nsis_st*, %struct.nsis_st** %n.addr, align 8
  %ofd50 = getelementptr inbounds %struct.nsis_st, %struct.nsis_st* %48, i32 0, i32 1
  %49 = load i32, i32* %ofd50, align 4
  %call51 = call i32 @close(i32 %49)
  store i32 2, i32* %retval
  br label %return

if.end.52:                                        ; preds = %lor.lhs.false
  %50 = load i32, i32* %size, align 4
  %add = add i32 %50, 4
  %51 = load %struct.nsis_st*, %struct.nsis_st** %n.addr, align 8
  %asz53 = getelementptr inbounds %struct.nsis_st, %struct.nsis_st* %51, i32 0, i32 4
  %52 = load i32, i32* %asz53, align 4
  %sub54 = sub i32 %52, %add
  store i32 %sub54, i32* %asz53, align 4
  %53 = load %struct.cli_ctx*, %struct.cli_ctx** %ctx.addr, align 8
  %limits55 = getelementptr inbounds %struct.cli_ctx, %struct.cli_ctx* %53, i32 0, i32 4
  %54 = load %struct.cl_limits*, %struct.cl_limits** %limits55, align 8
  %tobool56 = icmp ne %struct.cl_limits* %54, null
  br i1 %tobool56, label %land.lhs.true.57, label %if.end.77

land.lhs.true.57:                                 ; preds = %if.end.52
  %55 = load %struct.cli_ctx*, %struct.cli_ctx** %ctx.addr, align 8
  %limits58 = getelementptr inbounds %struct.cli_ctx, %struct.cli_ctx* %55, i32 0, i32 4
  %56 = load %struct.cl_limits*, %struct.cl_limits** %limits58, align 8
  %maxfilesize = getelementptr inbounds %struct.cl_limits, %struct.cl_limits* %56, i32 0, i32 5
  %57 = load i64, i64* %maxfilesize, align 8
  %tobool59 = icmp ne i64 %57, 0
  br i1 %tobool59, label %land.lhs.true.60, label %if.end.77

land.lhs.true.60:                                 ; preds = %land.lhs.true.57
  %58 = load i32, i32* %size, align 4
  %conv = zext i32 %58 to i64
  %59 = load %struct.cli_ctx*, %struct.cli_ctx** %ctx.addr, align 8
  %limits61 = getelementptr inbounds %struct.cli_ctx, %struct.cli_ctx* %59, i32 0, i32 4
  %60 = load %struct.cl_limits*, %struct.cl_limits** %limits61, align 8
  %maxfilesize62 = getelementptr inbounds %struct.cl_limits, %struct.cl_limits* %60, i32 0, i32 5
  %61 = load i64, i64* %maxfilesize62, align 8
  %cmp63 = icmp ugt i64 %conv, %61
  br i1 %cmp63, label %if.then.65, label %if.end.77

if.then.65:                                       ; preds = %land.lhs.true.60
  %62 = load i32, i32* %size, align 4
  %63 = load %struct.cli_ctx*, %struct.cli_ctx** %ctx.addr, align 8
  %limits66 = getelementptr inbounds %struct.cli_ctx, %struct.cli_ctx* %63, i32 0, i32 4
  %64 = load %struct.cl_limits*, %struct.cl_limits** %limits66, align 8
  %maxfilesize67 = getelementptr inbounds %struct.cl_limits, %struct.cl_limits* %64, i32 0, i32 5
  %65 = load i64, i64* %maxfilesize67, align 8
  call void (i8*, ...) @cli_dbgmsg(i8* getelementptr inbounds ([54 x i8], [54 x i8]* @.str.15, i32 0, i32 0), i32 %62, i64 %65)
  %66 = load %struct.nsis_st*, %struct.nsis_st** %n.addr, align 8
  %ofd68 = getelementptr inbounds %struct.nsis_st, %struct.nsis_st* %66, i32 0, i32 1
  %67 = load i32, i32* %ofd68, align 4
  %call69 = call i32 @close(i32 %67)
  %68 = load %struct.nsis_st*, %struct.nsis_st** %n.addr, align 8
  %ifd70 = getelementptr inbounds %struct.nsis_st, %struct.nsis_st* %68, i32 0, i32 0
  %69 = load i32, i32* %ifd70, align 4
  %70 = load i32, i32* %size, align 4
  %conv71 = zext i32 %70 to i64
  %call72 = call i64 @lseek(i32 %69, i64 %conv71, i32 1) #2
  %cmp73 = icmp eq i64 %call72, -1
  br i1 %cmp73, label %if.then.75, label %if.end.76

if.then.75:                                       ; preds = %if.then.65
  store i32 -123, i32* %retval
  br label %return

if.end.76:                                        ; preds = %if.then.65
  store i32 -101, i32* %retval
  br label %return

if.end.77:                                        ; preds = %land.lhs.true.60, %land.lhs.true.57, %if.end.52
  %71 = load i32, i32* %size, align 4
  %conv78 = zext i32 %71 to i64
  %call79 = call i8* @cli_malloc(i64 %conv78)
  store i8* %call79, i8** %ibuf, align 8
  %tobool80 = icmp ne i8* %call79, null
  br i1 %tobool80, label %if.end.84, label %if.then.81

if.then.81:                                       ; preds = %if.end.77
  call void (i8*, ...) @cli_dbgmsg(i8* getelementptr inbounds ([126 x i8], [126 x i8]* @.str.16, i32 0, i32 0))
  %72 = load %struct.nsis_st*, %struct.nsis_st** %n.addr, align 8
  %ofd82 = getelementptr inbounds %struct.nsis_st, %struct.nsis_st* %72, i32 0, i32 1
  %73 = load i32, i32* %ofd82, align 4
  %call83 = call i32 @close(i32 %73)
  store i32 -114, i32* %retval
  br label %return

if.end.84:                                        ; preds = %if.end.77
  %74 = load %struct.nsis_st*, %struct.nsis_st** %n.addr, align 8
  %ifd85 = getelementptr inbounds %struct.nsis_st, %struct.nsis_st* %74, i32 0, i32 0
  %75 = load i32, i32* %ifd85, align 4
  %76 = load i8*, i8** %ibuf, align 8
  %77 = load i32, i32* %size, align 4
  %call86 = call i32 @cli_readn(i32 %75, i8* %76, i32 %77)
  %conv87 = sext i32 %call86 to i64
  %78 = load i32, i32* %size, align 4
  %conv88 = zext i32 %78 to i64
  %cmp89 = icmp ne i64 %conv87, %conv88
  br i1 %cmp89, label %if.then.91, label %if.end.94

if.then.91:                                       ; preds = %if.end.84
  %79 = load i32, i32* %size, align 4
  call void (i8*, ...) @cli_dbgmsg(i8* getelementptr inbounds ([133 x i8], [133 x i8]* @.str.17, i32 0, i32 0), i32 %79)
  %80 = load i8*, i8** %ibuf, align 8
  call void @free(i8* %80) #2
  %81 = load %struct.nsis_st*, %struct.nsis_st** %n.addr, align 8
  %ofd92 = getelementptr inbounds %struct.nsis_st, %struct.nsis_st* %81, i32 0, i32 1
  %82 = load i32, i32* %ofd92, align 4
  %call93 = call i32 @close(i32 %82)
  store i32 -123, i32* %retval
  br label %return

if.end.94:                                        ; preds = %if.end.84
  %83 = load i32, i32* %loops, align 4
  %84 = load i32, i32* %size, align 4
  %cmp95 = icmp eq i32 %83, %84
  br i1 %cmp95, label %if.then.97, label %if.else.108

if.then.97:                                       ; preds = %if.end.94
  %85 = load %struct.nsis_st*, %struct.nsis_st** %n.addr, align 8
  %ofd98 = getelementptr inbounds %struct.nsis_st, %struct.nsis_st* %85, i32 0, i32 1
  %86 = load i32, i32* %ofd98, align 4
  %87 = load i8*, i8** %ibuf, align 8
  %88 = load i32, i32* %size, align 4
  %call99 = call i32 @cli_writen(i32 %86, i8* %87, i32 %88)
  %conv100 = sext i32 %call99 to i64
  %89 = load i32, i32* %size, align 4
  %conv101 = zext i32 %89 to i64
  %cmp102 = icmp ne i64 %conv100, %conv101
  br i1 %cmp102, label %if.then.104, label %if.end.107

if.then.104:                                      ; preds = %if.then.97
  call void (i8*, ...) @cli_dbgmsg(i8* getelementptr inbounds ([137 x i8], [137 x i8]* @.str.18, i32 0, i32 0))
  %90 = load i8*, i8** %ibuf, align 8
  call void @free(i8* %90) #2
  %91 = load %struct.nsis_st*, %struct.nsis_st** %n.addr, align 8
  %ofd105 = getelementptr inbounds %struct.nsis_st, %struct.nsis_st* %91, i32 0, i32 1
  %92 = load i32, i32* %ofd105, align 4
  %call106 = call i32 @close(i32 %92)
  store i32 -123, i32* %retval
  br label %return

if.end.107:                                       ; preds = %if.then.97
  br label %if.end.199

if.else.108:                                      ; preds = %if.end.94
  %93 = load %struct.nsis_st*, %struct.nsis_st** %n.addr, align 8
  %call109 = call i32 @nsis_init(%struct.nsis_st* %93)
  store i32 %call109, i32* %ret, align 4
  %cmp110 = icmp ne i32 %call109, 0
  br i1 %cmp110, label %if.then.112, label %if.end.115

if.then.112:                                      ; preds = %if.else.108
  call void (i8*, ...) @cli_dbgmsg(i8* getelementptr inbounds ([137 x i8], [137 x i8]* @.str.19, i32 0, i32 0))
  %94 = load i8*, i8** %ibuf, align 8
  call void @free(i8* %94) #2
  %95 = load %struct.nsis_st*, %struct.nsis_st** %n.addr, align 8
  %ofd113 = getelementptr inbounds %struct.nsis_st, %struct.nsis_st* %95, i32 0, i32 1
  %96 = load i32, i32* %ofd113, align 4
  %call114 = call i32 @close(i32 %96)
  %97 = load i32, i32* %ret, align 4
  store i32 %97, i32* %retval
  br label %return

if.end.115:                                       ; preds = %if.else.108
  %98 = load i32, i32* %size, align 4
  %99 = load %struct.nsis_st*, %struct.nsis_st** %n.addr, align 8
  %nsis = getelementptr inbounds %struct.nsis_st, %struct.nsis_st* %99, i32 0, i32 7
  %avail_in = getelementptr inbounds %struct.anon, %struct.anon* %nsis, i32 0, i32 0
  store i32 %98, i32* %avail_in, align 4
  %100 = load i8*, i8** %ibuf, align 8
  %101 = load %struct.nsis_st*, %struct.nsis_st** %n.addr, align 8
  %nsis116 = getelementptr inbounds %struct.nsis_st, %struct.nsis_st* %101, i32 0, i32 7
  %next_in = getelementptr inbounds %struct.anon, %struct.anon* %nsis116, i32 0, i32 1
  store i8* %100, i8** %next_in, align 8
  %arraydecay117 = getelementptr inbounds [8192 x i8], [8192 x i8]* %obuf, i32 0, i32 0
  %102 = load %struct.nsis_st*, %struct.nsis_st** %n.addr, align 8
  %nsis118 = getelementptr inbounds %struct.nsis_st, %struct.nsis_st* %102, i32 0, i32 7
  %next_out = getelementptr inbounds %struct.anon, %struct.anon* %nsis118, i32 0, i32 3
  store i8* %arraydecay117, i8** %next_out, align 8
  %103 = load %struct.nsis_st*, %struct.nsis_st** %n.addr, align 8
  %nsis119 = getelementptr inbounds %struct.nsis_st, %struct.nsis_st* %103, i32 0, i32 7
  %avail_out = getelementptr inbounds %struct.anon, %struct.anon* %nsis119, i32 0, i32 2
  store i32 8192, i32* %avail_out, align 4
  store i32 0, i32* %loops, align 4
  br label %while.cond

while.cond:                                       ; preds = %if.end.169, %if.end.115
  %104 = load %struct.nsis_st*, %struct.nsis_st** %n.addr, align 8
  %call120 = call i32 @nsis_decomp(%struct.nsis_st* %104)
  store i32 %call120, i32* %ret, align 4
  %cmp121 = icmp eq i32 %call120, 0
  br i1 %cmp121, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %105 = load %struct.nsis_st*, %struct.nsis_st** %n.addr, align 8
  %nsis123 = getelementptr inbounds %struct.nsis_st, %struct.nsis_st* %105, i32 0, i32 7
  %next_out124 = getelementptr inbounds %struct.anon, %struct.anon* %nsis123, i32 0, i32 3
  %106 = load i8*, i8** %next_out124, align 8
  %arraydecay125 = getelementptr inbounds [8192 x i8], [8192 x i8]* %obuf, i32 0, i32 0
  %sub.ptr.lhs.cast = ptrtoint i8* %106 to i64
  %sub.ptr.rhs.cast = ptrtoint i8* %arraydecay125 to i64
  %sub.ptr.sub = sub i64 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast
  %conv126 = trunc i64 %sub.ptr.sub to i32
  store i32 %conv126, i32* %size, align 4
  %tobool127 = icmp ne i32 %conv126, 0
  br i1 %tobool127, label %if.then.128, label %if.else.163

if.then.128:                                      ; preds = %while.body
  %107 = load %struct.nsis_st*, %struct.nsis_st** %n.addr, align 8
  %ofd129 = getelementptr inbounds %struct.nsis_st, %struct.nsis_st* %107, i32 0, i32 1
  %108 = load i32, i32* %ofd129, align 4
  %arraydecay130 = getelementptr inbounds [8192 x i8], [8192 x i8]* %obuf, i32 0, i32 0
  %109 = load i32, i32* %size, align 4
  %call131 = call i32 @cli_writen(i32 %108, i8* %arraydecay130, i32 %109)
  %conv132 = sext i32 %call131 to i64
  %110 = load i32, i32* %size, align 4
  %conv133 = zext i32 %110 to i64
  %cmp134 = icmp ne i64 %conv132, %conv133
  br i1 %cmp134, label %if.then.136, label %if.end.139

if.then.136:                                      ; preds = %if.then.128
  call void (i8*, ...) @cli_dbgmsg(i8* getelementptr inbounds ([137 x i8], [137 x i8]* @.str.20, i32 0, i32 0))
  %111 = load i8*, i8** %ibuf, align 8
  call void @free(i8* %111) #2
  %112 = load %struct.nsis_st*, %struct.nsis_st** %n.addr, align 8
  %ofd137 = getelementptr inbounds %struct.nsis_st, %struct.nsis_st* %112, i32 0, i32 1
  %113 = load i32, i32* %ofd137, align 4
  %call138 = call i32 @close(i32 %113)
  store i32 -123, i32* %retval
  br label %return

if.end.139:                                       ; preds = %if.then.128
  %arraydecay140 = getelementptr inbounds [8192 x i8], [8192 x i8]* %obuf, i32 0, i32 0
  %114 = load %struct.nsis_st*, %struct.nsis_st** %n.addr, align 8
  %nsis141 = getelementptr inbounds %struct.nsis_st, %struct.nsis_st* %114, i32 0, i32 7
  %next_out142 = getelementptr inbounds %struct.anon, %struct.anon* %nsis141, i32 0, i32 3
  store i8* %arraydecay140, i8** %next_out142, align 8
  %115 = load %struct.nsis_st*, %struct.nsis_st** %n.addr, align 8
  %nsis143 = getelementptr inbounds %struct.nsis_st, %struct.nsis_st* %115, i32 0, i32 7
  %avail_out144 = getelementptr inbounds %struct.anon, %struct.anon* %nsis143, i32 0, i32 2
  store i32 8192, i32* %avail_out144, align 4
  store i32 0, i32* %loops, align 4
  %116 = load %struct.cli_ctx*, %struct.cli_ctx** %ctx.addr, align 8
  %limits145 = getelementptr inbounds %struct.cli_ctx, %struct.cli_ctx* %116, i32 0, i32 4
  %117 = load %struct.cl_limits*, %struct.cl_limits** %limits145, align 8
  %tobool146 = icmp ne %struct.cl_limits* %117, null
  br i1 %tobool146, label %land.lhs.true.147, label %if.end.162

land.lhs.true.147:                                ; preds = %if.end.139
  %118 = load %struct.cli_ctx*, %struct.cli_ctx** %ctx.addr, align 8
  %limits148 = getelementptr inbounds %struct.cli_ctx, %struct.cli_ctx* %118, i32 0, i32 4
  %119 = load %struct.cl_limits*, %struct.cl_limits** %limits148, align 8
  %maxfilesize149 = getelementptr inbounds %struct.cl_limits, %struct.cl_limits* %119, i32 0, i32 5
  %120 = load i64, i64* %maxfilesize149, align 8
  %tobool150 = icmp ne i64 %120, 0
  br i1 %tobool150, label %land.lhs.true.151, label %if.end.162

land.lhs.true.151:                                ; preds = %land.lhs.true.147
  %121 = load i32, i32* %size, align 4
  %conv152 = zext i32 %121 to i64
  %122 = load %struct.cli_ctx*, %struct.cli_ctx** %ctx.addr, align 8
  %limits153 = getelementptr inbounds %struct.cli_ctx, %struct.cli_ctx* %122, i32 0, i32 4
  %123 = load %struct.cl_limits*, %struct.cl_limits** %limits153, align 8
  %maxfilesize154 = getelementptr inbounds %struct.cl_limits, %struct.cl_limits* %123, i32 0, i32 5
  %124 = load i64, i64* %maxfilesize154, align 8
  %cmp155 = icmp ugt i64 %conv152, %124
  br i1 %cmp155, label %if.then.157, label %if.end.162

if.then.157:                                      ; preds = %land.lhs.true.151
  %125 = load i32, i32* %size, align 4
  %126 = load %struct.cli_ctx*, %struct.cli_ctx** %ctx.addr, align 8
  %limits158 = getelementptr inbounds %struct.cli_ctx, %struct.cli_ctx* %126, i32 0, i32 4
  %127 = load %struct.cl_limits*, %struct.cl_limits** %limits158, align 8
  %maxfilesize159 = getelementptr inbounds %struct.cl_limits, %struct.cl_limits* %127, i32 0, i32 5
  %128 = load i64, i64* %maxfilesize159, align 8
  call void (i8*, ...) @cli_dbgmsg(i8* getelementptr inbounds ([54 x i8], [54 x i8]* @.str.15, i32 0, i32 0), i32 %125, i64 %128)
  %129 = load i8*, i8** %ibuf, align 8
  call void @free(i8* %129) #2
  %130 = load %struct.nsis_st*, %struct.nsis_st** %n.addr, align 8
  %ofd160 = getelementptr inbounds %struct.nsis_st, %struct.nsis_st* %130, i32 0, i32 1
  %131 = load i32, i32* %ofd160, align 4
  %call161 = call i32 @close(i32 %131)
  %132 = load %struct.nsis_st*, %struct.nsis_st** %n.addr, align 8
  call void @nsis_shutdown(%struct.nsis_st* %132)
  store i32 -101, i32* %retval
  br label %return

if.end.162:                                       ; preds = %land.lhs.true.151, %land.lhs.true.147, %if.end.139
  br label %if.end.169

if.else.163:                                      ; preds = %while.body
  %133 = load i32, i32* %loops, align 4
  %inc164 = add i32 %133, 1
  store i32 %inc164, i32* %loops, align 4
  %cmp165 = icmp ugt i32 %inc164, 10
  br i1 %cmp165, label %if.then.167, label %if.end.168

if.then.167:                                      ; preds = %if.else.163
  call void (i8*, ...) @cli_dbgmsg(i8* getelementptr inbounds ([137 x i8], [137 x i8]* @.str.21, i32 0, i32 0))
  store i32 2, i32* %ret, align 4
  br label %while.end

if.end.168:                                       ; preds = %if.else.163
  br label %if.end.169

if.end.169:                                       ; preds = %if.end.168, %if.end.162
  br label %while.cond

while.end:                                        ; preds = %if.then.167, %while.cond
  %134 = load i32, i32* %ret, align 4
  %cmp170 = icmp ne i32 %134, 2
  br i1 %cmp170, label %if.then.172, label %if.end.175

if.then.172:                                      ; preds = %while.end
  call void (i8*, ...) @cli_dbgmsg(i8* getelementptr inbounds ([123 x i8], [123 x i8]* @.str.22, i32 0, i32 0))
  %135 = load i8*, i8** %ibuf, align 8
  call void @free(i8* %135) #2
  %136 = load %struct.nsis_st*, %struct.nsis_st** %n.addr, align 8
  %ofd173 = getelementptr inbounds %struct.nsis_st, %struct.nsis_st* %136, i32 0, i32 1
  %137 = load i32, i32* %ofd173, align 4
  %call174 = call i32 @close(i32 %137)
  store i32 -124, i32* %retval
  br label %return

if.end.175:                                       ; preds = %while.end
  %138 = load %struct.nsis_st*, %struct.nsis_st** %n.addr, align 8
  %ofd176 = getelementptr inbounds %struct.nsis_st, %struct.nsis_st* %138, i32 0, i32 1
  %139 = load i32, i32* %ofd176, align 4
  %arraydecay177 = getelementptr inbounds [8192 x i8], [8192 x i8]* %obuf, i32 0, i32 0
  %140 = load %struct.nsis_st*, %struct.nsis_st** %n.addr, align 8
  %nsis178 = getelementptr inbounds %struct.nsis_st, %struct.nsis_st* %140, i32 0, i32 7
  %next_out179 = getelementptr inbounds %struct.anon, %struct.anon* %nsis178, i32 0, i32 3
  %141 = load i8*, i8** %next_out179, align 8
  %arraydecay180 = getelementptr inbounds [8192 x i8], [8192 x i8]* %obuf, i32 0, i32 0
  %sub.ptr.lhs.cast181 = ptrtoint i8* %141 to i64
  %sub.ptr.rhs.cast182 = ptrtoint i8* %arraydecay180 to i64
  %sub.ptr.sub183 = sub i64 %sub.ptr.lhs.cast181, %sub.ptr.rhs.cast182
  %conv184 = trunc i64 %sub.ptr.sub183 to i32
  %call185 = call i32 @cli_writen(i32 %139, i8* %arraydecay177, i32 %conv184)
  %conv186 = sext i32 %call185 to i64
  %142 = load %struct.nsis_st*, %struct.nsis_st** %n.addr, align 8
  %nsis187 = getelementptr inbounds %struct.nsis_st, %struct.nsis_st* %142, i32 0, i32 7
  %next_out188 = getelementptr inbounds %struct.anon, %struct.anon* %nsis187, i32 0, i32 3
  %143 = load i8*, i8** %next_out188, align 8
  %arraydecay189 = getelementptr inbounds [8192 x i8], [8192 x i8]* %obuf, i32 0, i32 0
  %sub.ptr.lhs.cast190 = ptrtoint i8* %143 to i64
  %sub.ptr.rhs.cast191 = ptrtoint i8* %arraydecay189 to i64
  %sub.ptr.sub192 = sub i64 %sub.ptr.lhs.cast190, %sub.ptr.rhs.cast191
  %cmp193 = icmp ne i64 %conv186, %sub.ptr.sub192
  br i1 %cmp193, label %if.then.195, label %if.end.198

if.then.195:                                      ; preds = %if.end.175
  call void (i8*, ...) @cli_dbgmsg(i8* getelementptr inbounds ([137 x i8], [137 x i8]* @.str.23, i32 0, i32 0))
  %144 = load i8*, i8** %ibuf, align 8
  call void @free(i8* %144) #2
  %145 = load %struct.nsis_st*, %struct.nsis_st** %n.addr, align 8
  %ofd196 = getelementptr inbounds %struct.nsis_st, %struct.nsis_st* %145, i32 0, i32 1
  %146 = load i32, i32* %ofd196, align 4
  %call197 = call i32 @close(i32 %146)
  store i32 -123, i32* %retval
  br label %return

if.end.198:                                       ; preds = %if.end.175
  %147 = load %struct.nsis_st*, %struct.nsis_st** %n.addr, align 8
  call void @nsis_shutdown(%struct.nsis_st* %147)
  br label %if.end.199

if.end.199:                                       ; preds = %if.end.198, %if.end.107
  %148 = load i8*, i8** %ibuf, align 8
  call void @free(i8* %148) #2
  store i32 0, i32* %retval
  br label %return

if.else.200:                                      ; preds = %if.end.28
  %149 = load %struct.nsis_st*, %struct.nsis_st** %n.addr, align 8
  %freeme = getelementptr inbounds %struct.nsis_st, %struct.nsis_st* %149, i32 0, i32 11
  %150 = load i8*, i8** %freeme, align 8
  %tobool201 = icmp ne i8* %150, null
  br i1 %tobool201, label %if.end.239, label %if.then.202

if.then.202:                                      ; preds = %if.else.200
  %151 = load %struct.nsis_st*, %struct.nsis_st** %n.addr, align 8
  %call203 = call i32 @nsis_init(%struct.nsis_st* %151)
  store i32 %call203, i32* %ret, align 4
  %cmp204 = icmp ne i32 %call203, 0
  br i1 %cmp204, label %if.then.206, label %if.end.209

if.then.206:                                      ; preds = %if.then.202
  call void (i8*, ...) @cli_dbgmsg(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.24, i32 0, i32 0))
  %152 = load %struct.nsis_st*, %struct.nsis_st** %n.addr, align 8
  %ofd207 = getelementptr inbounds %struct.nsis_st, %struct.nsis_st* %152, i32 0, i32 1
  %153 = load i32, i32* %ofd207, align 4
  %call208 = call i32 @close(i32 %153)
  %154 = load i32, i32* %ret, align 4
  store i32 %154, i32* %retval
  br label %return

if.end.209:                                       ; preds = %if.then.202
  %155 = load %struct.nsis_st*, %struct.nsis_st** %n.addr, align 8
  %asz210 = getelementptr inbounds %struct.nsis_st, %struct.nsis_st* %155, i32 0, i32 4
  %156 = load i32, i32* %asz210, align 4
  %conv211 = zext i32 %156 to i64
  %call212 = call i8* @cli_malloc(i64 %conv211)
  %157 = load %struct.nsis_st*, %struct.nsis_st** %n.addr, align 8
  %freeme213 = getelementptr inbounds %struct.nsis_st, %struct.nsis_st* %157, i32 0, i32 11
  store i8* %call212, i8** %freeme213, align 8
  %tobool214 = icmp ne i8* %call212, null
  br i1 %tobool214, label %if.end.218, label %if.then.215

if.then.215:                                      ; preds = %if.end.209
  call void (i8*, ...) @cli_dbgmsg(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.25, i32 0, i32 0))
  %158 = load %struct.nsis_st*, %struct.nsis_st** %n.addr, align 8
  %ofd216 = getelementptr inbounds %struct.nsis_st, %struct.nsis_st* %158, i32 0, i32 1
  %159 = load i32, i32* %ofd216, align 4
  %call217 = call i32 @close(i32 %159)
  store i32 -114, i32* %retval
  br label %return

if.end.218:                                       ; preds = %if.end.209
  %160 = load %struct.nsis_st*, %struct.nsis_st** %n.addr, align 8
  %ifd219 = getelementptr inbounds %struct.nsis_st, %struct.nsis_st* %160, i32 0, i32 0
  %161 = load i32, i32* %ifd219, align 4
  %162 = load %struct.nsis_st*, %struct.nsis_st** %n.addr, align 8
  %freeme220 = getelementptr inbounds %struct.nsis_st, %struct.nsis_st* %162, i32 0, i32 11
  %163 = load i8*, i8** %freeme220, align 8
  %164 = load %struct.nsis_st*, %struct.nsis_st** %n.addr, align 8
  %asz221 = getelementptr inbounds %struct.nsis_st, %struct.nsis_st* %164, i32 0, i32 4
  %165 = load i32, i32* %asz221, align 4
  %call222 = call i32 @cli_readn(i32 %161, i8* %163, i32 %165)
  %conv223 = sext i32 %call222 to i64
  %166 = load %struct.nsis_st*, %struct.nsis_st** %n.addr, align 8
  %asz224 = getelementptr inbounds %struct.nsis_st, %struct.nsis_st* %166, i32 0, i32 4
  %167 = load i32, i32* %asz224, align 4
  %conv225 = zext i32 %167 to i64
  %cmp226 = icmp ne i64 %conv223, %conv225
  br i1 %cmp226, label %if.then.228, label %if.end.232

if.then.228:                                      ; preds = %if.end.218
  %168 = load %struct.nsis_st*, %struct.nsis_st** %n.addr, align 8
  %asz229 = getelementptr inbounds %struct.nsis_st, %struct.nsis_st* %168, i32 0, i32 4
  %169 = load i32, i32* %asz229, align 4
  call void (i8*, ...) @cli_dbgmsg(i8* getelementptr inbounds ([133 x i8], [133 x i8]* @.str.26, i32 0, i32 0), i32 %169)
  %170 = load %struct.nsis_st*, %struct.nsis_st** %n.addr, align 8
  %ofd230 = getelementptr inbounds %struct.nsis_st, %struct.nsis_st* %170, i32 0, i32 1
  %171 = load i32, i32* %ofd230, align 4
  %call231 = call i32 @close(i32 %171)
  store i32 -123, i32* %retval
  br label %return

if.end.232:                                       ; preds = %if.end.218
  %172 = load %struct.nsis_st*, %struct.nsis_st** %n.addr, align 8
  %freeme233 = getelementptr inbounds %struct.nsis_st, %struct.nsis_st* %172, i32 0, i32 11
  %173 = load i8*, i8** %freeme233, align 8
  %174 = load %struct.nsis_st*, %struct.nsis_st** %n.addr, align 8
  %nsis234 = getelementptr inbounds %struct.nsis_st, %struct.nsis_st* %174, i32 0, i32 7
  %next_in235 = getelementptr inbounds %struct.anon, %struct.anon* %nsis234, i32 0, i32 1
  store i8* %173, i8** %next_in235, align 8
  %175 = load %struct.nsis_st*, %struct.nsis_st** %n.addr, align 8
  %asz236 = getelementptr inbounds %struct.nsis_st, %struct.nsis_st* %175, i32 0, i32 4
  %176 = load i32, i32* %asz236, align 4
  %177 = load %struct.nsis_st*, %struct.nsis_st** %n.addr, align 8
  %nsis237 = getelementptr inbounds %struct.nsis_st, %struct.nsis_st* %177, i32 0, i32 7
  %avail_in238 = getelementptr inbounds %struct.anon, %struct.anon* %nsis237, i32 0, i32 0
  store i32 %176, i32* %avail_in238, align 4
  br label %if.end.239

if.end.239:                                       ; preds = %if.end.232, %if.else.200
  %178 = load %struct.nsis_st*, %struct.nsis_st** %n.addr, align 8
  %nsis240 = getelementptr inbounds %struct.nsis_st, %struct.nsis_st* %178, i32 0, i32 7
  %avail_in241 = getelementptr inbounds %struct.anon, %struct.anon* %nsis240, i32 0, i32 0
  %179 = load i32, i32* %avail_in241, align 4
  %cmp242 = icmp ule i32 %179, 4
  br i1 %cmp242, label %if.then.244, label %if.end.247

if.then.244:                                      ; preds = %if.end.239
  call void (i8*, ...) @cli_dbgmsg(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.6, i32 0, i32 0))
  %180 = load %struct.nsis_st*, %struct.nsis_st** %n.addr, align 8
  %ofd245 = getelementptr inbounds %struct.nsis_st, %struct.nsis_st* %180, i32 0, i32 1
  %181 = load i32, i32* %ofd245, align 4
  %call246 = call i32 @close(i32 %181)
  store i32 2, i32* %retval
  br label %return

if.end.247:                                       ; preds = %if.end.239
  %arraydecay248 = getelementptr inbounds [8192 x i8], [8192 x i8]* %obuf, i32 0, i32 0
  %182 = load %struct.nsis_st*, %struct.nsis_st** %n.addr, align 8
  %nsis249 = getelementptr inbounds %struct.nsis_st, %struct.nsis_st* %182, i32 0, i32 7
  %next_out250 = getelementptr inbounds %struct.anon, %struct.anon* %nsis249, i32 0, i32 3
  store i8* %arraydecay248, i8** %next_out250, align 8
  %183 = load %struct.nsis_st*, %struct.nsis_st** %n.addr, align 8
  %nsis251 = getelementptr inbounds %struct.nsis_st, %struct.nsis_st* %183, i32 0, i32 7
  %avail_out252 = getelementptr inbounds %struct.anon, %struct.anon* %nsis251, i32 0, i32 2
  store i32 4, i32* %avail_out252, align 4
  store i32 0, i32* %loops, align 4
  br label %while.cond.253

while.cond.253:                                   ; preds = %if.end.272, %if.end.247
  %184 = load %struct.nsis_st*, %struct.nsis_st** %n.addr, align 8
  %call254 = call i32 @nsis_decomp(%struct.nsis_st* %184)
  store i32 %call254, i32* %ret, align 4
  %cmp255 = icmp eq i32 %call254, 0
  br i1 %cmp255, label %while.body.257, label %while.end.273

while.body.257:                                   ; preds = %while.cond.253
  %185 = load %struct.nsis_st*, %struct.nsis_st** %n.addr, align 8
  %nsis258 = getelementptr inbounds %struct.nsis_st, %struct.nsis_st* %185, i32 0, i32 7
  %next_out259 = getelementptr inbounds %struct.anon, %struct.anon* %nsis258, i32 0, i32 3
  %186 = load i8*, i8** %next_out259, align 8
  %arraydecay260 = getelementptr inbounds [8192 x i8], [8192 x i8]* %obuf, i32 0, i32 0
  %sub.ptr.lhs.cast261 = ptrtoint i8* %186 to i64
  %sub.ptr.rhs.cast262 = ptrtoint i8* %arraydecay260 to i64
  %sub.ptr.sub263 = sub i64 %sub.ptr.lhs.cast261, %sub.ptr.rhs.cast262
  %cmp264 = icmp eq i64 %sub.ptr.sub263, 4
  br i1 %cmp264, label %if.then.266, label %if.end.267

if.then.266:                                      ; preds = %while.body.257
  br label %while.end.273

if.end.267:                                       ; preds = %while.body.257
  %187 = load i32, i32* %loops, align 4
  %inc268 = add i32 %187, 1
  store i32 %inc268, i32* %loops, align 4
  %cmp269 = icmp ugt i32 %inc268, 20
  br i1 %cmp269, label %if.then.271, label %if.end.272

if.then.271:                                      ; preds = %if.end.267
  call void (i8*, ...) @cli_dbgmsg(i8* getelementptr inbounds ([137 x i8], [137 x i8]* @.str.27, i32 0, i32 0))
  store i32 2, i32* %ret, align 4
  br label %while.end.273

if.end.272:                                       ; preds = %if.end.267
  br label %while.cond.253

while.end.273:                                    ; preds = %if.then.271, %if.then.266, %while.cond.253
  %188 = load i32, i32* %ret, align 4
  %cmp274 = icmp ne i32 %188, 0
  br i1 %cmp274, label %if.then.276, label %if.end.279

if.then.276:                                      ; preds = %while.end.273
  call void (i8*, ...) @cli_dbgmsg(i8* getelementptr inbounds ([123 x i8], [123 x i8]* @.str.28, i32 0, i32 0))
  %189 = load %struct.nsis_st*, %struct.nsis_st** %n.addr, align 8
  %ofd277 = getelementptr inbounds %struct.nsis_st, %struct.nsis_st* %189, i32 0, i32 1
  %190 = load i32, i32* %ofd277, align 4
  %call278 = call i32 @close(i32 %190)
  store i32 -124, i32* %retval
  br label %return

if.end.279:                                       ; preds = %while.end.273
  %arraydecay280 = getelementptr inbounds [8192 x i8], [8192 x i8]* %obuf, i32 0, i32 0
  %191 = bitcast i8* %arraydecay280 to i32*
  %192 = load i32, i32* %191, align 4
  store i32 %192, i32* %size, align 4
  %193 = load %struct.cli_ctx*, %struct.cli_ctx** %ctx.addr, align 8
  %limits281 = getelementptr inbounds %struct.cli_ctx, %struct.cli_ctx* %193, i32 0, i32 4
  %194 = load %struct.cl_limits*, %struct.cl_limits** %limits281, align 8
  %tobool282 = icmp ne %struct.cl_limits* %194, null
  br i1 %tobool282, label %land.lhs.true.283, label %if.end.298

land.lhs.true.283:                                ; preds = %if.end.279
  %195 = load %struct.cli_ctx*, %struct.cli_ctx** %ctx.addr, align 8
  %limits284 = getelementptr inbounds %struct.cli_ctx, %struct.cli_ctx* %195, i32 0, i32 4
  %196 = load %struct.cl_limits*, %struct.cl_limits** %limits284, align 8
  %maxfilesize285 = getelementptr inbounds %struct.cl_limits, %struct.cl_limits* %196, i32 0, i32 5
  %197 = load i64, i64* %maxfilesize285, align 8
  %tobool286 = icmp ne i64 %197, 0
  br i1 %tobool286, label %land.lhs.true.287, label %if.end.298

land.lhs.true.287:                                ; preds = %land.lhs.true.283
  %198 = load i32, i32* %size, align 4
  %conv288 = zext i32 %198 to i64
  %199 = load %struct.cli_ctx*, %struct.cli_ctx** %ctx.addr, align 8
  %limits289 = getelementptr inbounds %struct.cli_ctx, %struct.cli_ctx* %199, i32 0, i32 4
  %200 = load %struct.cl_limits*, %struct.cl_limits** %limits289, align 8
  %maxfilesize290 = getelementptr inbounds %struct.cl_limits, %struct.cl_limits* %200, i32 0, i32 5
  %201 = load i64, i64* %maxfilesize290, align 8
  %cmp291 = icmp ugt i64 %conv288, %201
  br i1 %cmp291, label %if.then.293, label %if.end.298

if.then.293:                                      ; preds = %land.lhs.true.287
  %202 = load i32, i32* %size, align 4
  %203 = load %struct.cli_ctx*, %struct.cli_ctx** %ctx.addr, align 8
  %limits294 = getelementptr inbounds %struct.cli_ctx, %struct.cli_ctx* %203, i32 0, i32 4
  %204 = load %struct.cl_limits*, %struct.cl_limits** %limits294, align 8
  %maxfilesize295 = getelementptr inbounds %struct.cl_limits, %struct.cl_limits* %204, i32 0, i32 5
  %205 = load i64, i64* %maxfilesize295, align 8
  call void (i8*, ...) @cli_dbgmsg(i8* getelementptr inbounds ([74 x i8], [74 x i8]* @.str.29, i32 0, i32 0), i32 %202, i64 %205)
  %206 = load %struct.nsis_st*, %struct.nsis_st** %n.addr, align 8
  %ofd296 = getelementptr inbounds %struct.nsis_st, %struct.nsis_st* %206, i32 0, i32 1
  %207 = load i32, i32* %ofd296, align 4
  %call297 = call i32 @close(i32 %207)
  store i32 -124, i32* %retval
  br label %return

if.end.298:                                       ; preds = %land.lhs.true.287, %land.lhs.true.283, %if.end.279
  %arraydecay299 = getelementptr inbounds [8192 x i8], [8192 x i8]* %obuf, i32 0, i32 0
  %208 = load %struct.nsis_st*, %struct.nsis_st** %n.addr, align 8
  %nsis300 = getelementptr inbounds %struct.nsis_st, %struct.nsis_st* %208, i32 0, i32 7
  %next_out301 = getelementptr inbounds %struct.anon, %struct.anon* %nsis300, i32 0, i32 3
  store i8* %arraydecay299, i8** %next_out301, align 8
  %209 = load i32, i32* %size, align 4
  %cmp302 = icmp ult i32 8192, %209
  br i1 %cmp302, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.end.298
  br label %cond.end

cond.false:                                       ; preds = %if.end.298
  %210 = load i32, i32* %size, align 4
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ 8192, %cond.true ], [ %210, %cond.false ]
  %211 = load %struct.nsis_st*, %struct.nsis_st** %n.addr, align 8
  %nsis304 = getelementptr inbounds %struct.nsis_st, %struct.nsis_st* %211, i32 0, i32 7
  %avail_out305 = getelementptr inbounds %struct.anon, %struct.anon* %nsis304, i32 0, i32 2
  store i32 %cond, i32* %avail_out305, align 4
  store i32 0, i32* %loops, align 4
  br label %while.cond.306

while.cond.306:                                   ; preds = %if.end.350, %cond.end
  %212 = load i32, i32* %size, align 4
  %tobool307 = icmp ne i32 %212, 0
  br i1 %tobool307, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %while.cond.306
  %213 = load %struct.nsis_st*, %struct.nsis_st** %n.addr, align 8
  %call308 = call i32 @nsis_decomp(%struct.nsis_st* %213)
  store i32 %call308, i32* %ret, align 4
  %cmp309 = icmp eq i32 %call308, 0
  br label %land.end

land.end:                                         ; preds = %land.rhs, %while.cond.306
  %214 = phi i1 [ false, %while.cond.306 ], [ %cmp309, %land.rhs ]
  br i1 %214, label %while.body.311, label %while.end.351

while.body.311:                                   ; preds = %land.end
  %215 = load %struct.nsis_st*, %struct.nsis_st** %n.addr, align 8
  %nsis312 = getelementptr inbounds %struct.nsis_st, %struct.nsis_st* %215, i32 0, i32 7
  %next_out313 = getelementptr inbounds %struct.anon, %struct.anon* %nsis312, i32 0, i32 3
  %216 = load i8*, i8** %next_out313, align 8
  %arraydecay314 = getelementptr inbounds [8192 x i8], [8192 x i8]* %obuf, i32 0, i32 0
  %sub.ptr.lhs.cast315 = ptrtoint i8* %216 to i64
  %sub.ptr.rhs.cast316 = ptrtoint i8* %arraydecay314 to i64
  %sub.ptr.sub317 = sub i64 %sub.ptr.lhs.cast315, %sub.ptr.rhs.cast316
  %conv318 = trunc i64 %sub.ptr.sub317 to i32
  store i32 %conv318, i32* %wsz, align 4
  %tobool319 = icmp ne i32 %conv318, 0
  br i1 %tobool319, label %if.then.320, label %if.else.344

if.then.320:                                      ; preds = %while.body.311
  %217 = load %struct.nsis_st*, %struct.nsis_st** %n.addr, align 8
  %ofd321 = getelementptr inbounds %struct.nsis_st, %struct.nsis_st* %217, i32 0, i32 1
  %218 = load i32, i32* %ofd321, align 4
  %arraydecay322 = getelementptr inbounds [8192 x i8], [8192 x i8]* %obuf, i32 0, i32 0
  %219 = load i32, i32* %wsz, align 4
  %call323 = call i32 @cli_writen(i32 %218, i8* %arraydecay322, i32 %219)
  %conv324 = sext i32 %call323 to i64
  %220 = load i32, i32* %wsz, align 4
  %conv325 = zext i32 %220 to i64
  %cmp326 = icmp ne i64 %conv324, %conv325
  br i1 %cmp326, label %if.then.328, label %if.end.331

if.then.328:                                      ; preds = %if.then.320
  %221 = load %struct.nsis_st*, %struct.nsis_st** %n.addr, align 8
  %ofd329 = getelementptr inbounds %struct.nsis_st, %struct.nsis_st* %221, i32 0, i32 1
  %222 = load i32, i32* %ofd329, align 4
  %call330 = call i32 @close(i32 %222)
  store i32 -123, i32* %retval
  br label %return

if.end.331:                                       ; preds = %if.then.320
  %223 = load i32, i32* %wsz, align 4
  %224 = load i32, i32* %size, align 4
  %sub332 = sub i32 %224, %223
  store i32 %sub332, i32* %size, align 4
  %arraydecay333 = getelementptr inbounds [8192 x i8], [8192 x i8]* %obuf, i32 0, i32 0
  %225 = load %struct.nsis_st*, %struct.nsis_st** %n.addr, align 8
  %nsis334 = getelementptr inbounds %struct.nsis_st, %struct.nsis_st* %225, i32 0, i32 7
  %next_out335 = getelementptr inbounds %struct.anon, %struct.anon* %nsis334, i32 0, i32 3
  store i8* %arraydecay333, i8** %next_out335, align 8
  %226 = load i32, i32* %size, align 4
  %cmp336 = icmp ult i32 %226, 8192
  br i1 %cmp336, label %cond.true.338, label %cond.false.339

cond.true.338:                                    ; preds = %if.end.331
  %227 = load i32, i32* %size, align 4
  br label %cond.end.340

cond.false.339:                                   ; preds = %if.end.331
  br label %cond.end.340

cond.end.340:                                     ; preds = %cond.false.339, %cond.true.338
  %cond341 = phi i32 [ %227, %cond.true.338 ], [ 8192, %cond.false.339 ]
  %228 = load %struct.nsis_st*, %struct.nsis_st** %n.addr, align 8
  %nsis342 = getelementptr inbounds %struct.nsis_st, %struct.nsis_st* %228, i32 0, i32 7
  %avail_out343 = getelementptr inbounds %struct.anon, %struct.anon* %nsis342, i32 0, i32 2
  store i32 %cond341, i32* %avail_out343, align 4
  br label %if.end.350

if.else.344:                                      ; preds = %while.body.311
  %229 = load i32, i32* %loops, align 4
  %inc345 = add i32 %229, 1
  store i32 %inc345, i32* %loops, align 4
  %cmp346 = icmp ugt i32 %inc345, 20
  br i1 %cmp346, label %if.then.348, label %if.end.349

if.then.348:                                      ; preds = %if.else.344
  call void (i8*, ...) @cli_dbgmsg(i8* getelementptr inbounds ([137 x i8], [137 x i8]* @.str.30, i32 0, i32 0))
  store i32 2, i32* %ret, align 4
  br label %while.end.351

if.end.349:                                       ; preds = %if.else.344
  br label %if.end.350

if.end.350:                                       ; preds = %if.end.349, %cond.end.340
  br label %while.cond.306

while.end.351:                                    ; preds = %if.then.348, %land.end
  %230 = load i32, i32* %ret, align 4
  %cmp352 = icmp eq i32 %230, 2
  br i1 %cmp352, label %if.then.354, label %if.else.379

if.then.354:                                      ; preds = %while.end.351
  %231 = load %struct.nsis_st*, %struct.nsis_st** %n.addr, align 8
  %ofd355 = getelementptr inbounds %struct.nsis_st, %struct.nsis_st* %231, i32 0, i32 1
  %232 = load i32, i32* %ofd355, align 4
  %arraydecay356 = getelementptr inbounds [8192 x i8], [8192 x i8]* %obuf, i32 0, i32 0
  %233 = load %struct.nsis_st*, %struct.nsis_st** %n.addr, align 8
  %nsis357 = getelementptr inbounds %struct.nsis_st, %struct.nsis_st* %233, i32 0, i32 7
  %next_out358 = getelementptr inbounds %struct.anon, %struct.anon* %nsis357, i32 0, i32 3
  %234 = load i8*, i8** %next_out358, align 8
  %arraydecay359 = getelementptr inbounds [8192 x i8], [8192 x i8]* %obuf, i32 0, i32 0
  %sub.ptr.lhs.cast360 = ptrtoint i8* %234 to i64
  %sub.ptr.rhs.cast361 = ptrtoint i8* %arraydecay359 to i64
  %sub.ptr.sub362 = sub i64 %sub.ptr.lhs.cast360, %sub.ptr.rhs.cast361
  %conv363 = trunc i64 %sub.ptr.sub362 to i32
  %call364 = call i32 @cli_writen(i32 %232, i8* %arraydecay356, i32 %conv363)
  %conv365 = sext i32 %call364 to i64
  %235 = load %struct.nsis_st*, %struct.nsis_st** %n.addr, align 8
  %nsis366 = getelementptr inbounds %struct.nsis_st, %struct.nsis_st* %235, i32 0, i32 7
  %next_out367 = getelementptr inbounds %struct.anon, %struct.anon* %nsis366, i32 0, i32 3
  %236 = load i8*, i8** %next_out367, align 8
  %arraydecay368 = getelementptr inbounds [8192 x i8], [8192 x i8]* %obuf, i32 0, i32 0
  %sub.ptr.lhs.cast369 = ptrtoint i8* %236 to i64
  %sub.ptr.rhs.cast370 = ptrtoint i8* %arraydecay368 to i64
  %sub.ptr.sub371 = sub i64 %sub.ptr.lhs.cast369, %sub.ptr.rhs.cast370
  %cmp372 = icmp ne i64 %conv365, %sub.ptr.sub371
  br i1 %cmp372, label %if.then.374, label %if.end.377

if.then.374:                                      ; preds = %if.then.354
  %237 = load %struct.nsis_st*, %struct.nsis_st** %n.addr, align 8
  %ofd375 = getelementptr inbounds %struct.nsis_st, %struct.nsis_st* %237, i32 0, i32 1
  %238 = load i32, i32* %ofd375, align 4
  %call376 = call i32 @close(i32 %238)
  store i32 -123, i32* %retval
  br label %return

if.end.377:                                       ; preds = %if.then.354
  %239 = load %struct.nsis_st*, %struct.nsis_st** %n.addr, align 8
  %eof378 = getelementptr inbounds %struct.nsis_st, %struct.nsis_st* %239, i32 0, i32 15
  store i8 1, i8* %eof378, align 1
  br label %if.end.386

if.else.379:                                      ; preds = %while.end.351
  %240 = load i32, i32* %ret, align 4
  %cmp380 = icmp ne i32 %240, 0
  br i1 %cmp380, label %if.then.382, label %if.end.385

if.then.382:                                      ; preds = %if.else.379
  call void (i8*, ...) @cli_dbgmsg(i8* getelementptr inbounds ([123 x i8], [123 x i8]* @.str.31, i32 0, i32 0))
  %241 = load %struct.nsis_st*, %struct.nsis_st** %n.addr, align 8
  %ofd383 = getelementptr inbounds %struct.nsis_st, %struct.nsis_st* %241, i32 0, i32 1
  %242 = load i32, i32* %ofd383, align 4
  %call384 = call i32 @close(i32 %242)
  store i32 -124, i32* %retval
  br label %return

if.end.385:                                       ; preds = %if.else.379
  br label %if.end.386

if.end.386:                                       ; preds = %if.end.385, %if.end.377
  store i32 0, i32* %retval
  br label %return

return:                                           ; preds = %if.end.386, %if.then.382, %if.then.374, %if.then.328, %if.then.293, %if.then.276, %if.then.244, %if.then.228, %if.then.215, %if.then.206, %if.end.199, %if.then.195, %if.then.172, %if.then.157, %if.then.136, %if.then.112, %if.then.104, %if.then.91, %if.then.81, %if.end.76, %if.then.75, %if.then.49, %if.then.43, %if.then.38, %if.then.33, %if.then.25, %if.then.7, %if.then
  %243 = load i32, i32* %retval
  ret i32 %243
}

; Function Attrs: nounwind uwtable
define internal i32 @nsis_headers(%struct.nsis_st* %n, %struct.cli_ctx* %ctx) #0 {
entry:
  %retval = alloca i32, align 4
  %n.addr = alloca %struct.nsis_st*, align 8
  %ctx.addr = alloca %struct.cli_ctx*, align 8
  %buf = alloca [28 x i8], align 16
  %st = alloca %struct.stat, align 8
  %pos = alloca i32, align 4
  %i = alloca i32, align 4
  %comps = alloca [4 x i8], align 1
  %trunc = alloca i8, align 1
  %nextsz = alloca i32, align 4
  store %struct.nsis_st* %n, %struct.nsis_st** %n.addr, align 8
  store %struct.cli_ctx* %ctx, %struct.cli_ctx** %ctx.addr, align 8
  %0 = bitcast [4 x i8]* %comps to i8*
  call void @llvm.memset.p0i8.i64(i8* %0, i8 0, i64 4, i32 1, i1 false)
  store i8 0, i8* %trunc, align 1
  %1 = load %struct.nsis_st*, %struct.nsis_st** %n.addr, align 8
  %ifd = getelementptr inbounds %struct.nsis_st, %struct.nsis_st* %1, i32 0, i32 0
  %2 = load i32, i32* %ifd, align 4
  %call = call i32 @fstat(i32 %2, %struct.stat* %st) #2
  %cmp = icmp eq i32 %call, -1
  br i1 %cmp, label %if.then, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %entry
  %3 = load %struct.nsis_st*, %struct.nsis_st** %n.addr, align 8
  %ifd1 = getelementptr inbounds %struct.nsis_st, %struct.nsis_st* %3, i32 0, i32 0
  %4 = load i32, i32* %ifd1, align 4
  %5 = load %struct.nsis_st*, %struct.nsis_st** %n.addr, align 8
  %off = getelementptr inbounds %struct.nsis_st, %struct.nsis_st* %5, i32 0, i32 2
  %6 = load i64, i64* %off, align 8
  %call2 = call i64 @lseek(i32 %4, i64 %6, i32 0) #2
  %cmp3 = icmp eq i64 %call2, -1
  br i1 %cmp3, label %if.then, label %lor.lhs.false.4

lor.lhs.false.4:                                  ; preds = %lor.lhs.false
  %7 = load %struct.nsis_st*, %struct.nsis_st** %n.addr, align 8
  %ifd5 = getelementptr inbounds %struct.nsis_st, %struct.nsis_st* %7, i32 0, i32 0
  %8 = load i32, i32* %ifd5, align 4
  %arraydecay = getelementptr inbounds [28 x i8], [28 x i8]* %buf, i32 0, i32 0
  %call6 = call i32 @cli_readn(i32 %8, i8* %arraydecay, i32 28)
  %cmp7 = icmp ne i32 %call6, 28
  br i1 %cmp7, label %if.then, label %if.end

if.then:                                          ; preds = %lor.lhs.false.4, %lor.lhs.false, %entry
  store i32 -123, i32* %retval
  br label %return

if.end:                                           ; preds = %lor.lhs.false.4
  %arraydecay8 = getelementptr inbounds [28 x i8], [28 x i8]* %buf, i32 0, i32 0
  %add.ptr = getelementptr inbounds i8, i8* %arraydecay8, i64 20
  %9 = bitcast i8* %add.ptr to i32*
  %10 = load i32, i32* %9, align 4
  %11 = load %struct.nsis_st*, %struct.nsis_st** %n.addr, align 8
  %hsz = getelementptr inbounds %struct.nsis_st, %struct.nsis_st* %11, i32 0, i32 5
  store i32 %10, i32* %hsz, align 4
  %arraydecay9 = getelementptr inbounds [28 x i8], [28 x i8]* %buf, i32 0, i32 0
  %add.ptr10 = getelementptr inbounds i8, i8* %arraydecay9, i64 24
  %12 = bitcast i8* %add.ptr10 to i32*
  %13 = load i32, i32* %12, align 4
  %14 = load %struct.nsis_st*, %struct.nsis_st** %n.addr, align 8
  %asz = getelementptr inbounds %struct.nsis_st, %struct.nsis_st* %14, i32 0, i32 4
  store i32 %13, i32* %asz, align 4
  %arraydecay11 = getelementptr inbounds [28 x i8], [28 x i8]* %buf, i32 0, i32 0
  %15 = bitcast i8* %arraydecay11 to i32*
  %16 = load i32, i32* %15, align 4
  %17 = load %struct.nsis_st*, %struct.nsis_st** %n.addr, align 8
  %hsz12 = getelementptr inbounds %struct.nsis_st, %struct.nsis_st* %17, i32 0, i32 5
  %18 = load i32, i32* %hsz12, align 4
  %19 = load %struct.nsis_st*, %struct.nsis_st** %n.addr, align 8
  %asz13 = getelementptr inbounds %struct.nsis_st, %struct.nsis_st* %19, i32 0, i32 4
  %20 = load i32, i32* %asz13, align 4
  call void (i8*, ...) @cli_dbgmsg(i8* getelementptr inbounds ([63 x i8], [63 x i8]* @.str.32, i32 0, i32 0), i32 %16, i32 %18, i32 %20)
  %st_size = getelementptr inbounds %struct.stat, %struct.stat* %st, i32 0, i32 8
  %21 = load i64, i64* %st_size, align 8
  %22 = load %struct.nsis_st*, %struct.nsis_st** %n.addr, align 8
  %off14 = getelementptr inbounds %struct.nsis_st, %struct.nsis_st* %22, i32 0, i32 2
  %23 = load i64, i64* %off14, align 8
  %sub = sub nsw i64 %21, %23
  %24 = load %struct.nsis_st*, %struct.nsis_st** %n.addr, align 8
  %asz15 = getelementptr inbounds %struct.nsis_st, %struct.nsis_st* %24, i32 0, i32 4
  %25 = load i32, i32* %asz15, align 4
  %conv = zext i32 %25 to i64
  %cmp16 = icmp slt i64 %sub, %conv
  br i1 %cmp16, label %if.then.18, label %if.else

if.then.18:                                       ; preds = %if.end
  call void (i8*, ...) @cli_dbgmsg(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.33, i32 0, i32 0))
  %st_size19 = getelementptr inbounds %struct.stat, %struct.stat* %st, i32 0, i32 8
  %26 = load i64, i64* %st_size19, align 8
  %27 = load %struct.nsis_st*, %struct.nsis_st** %n.addr, align 8
  %off20 = getelementptr inbounds %struct.nsis_st, %struct.nsis_st* %27, i32 0, i32 2
  %28 = load i64, i64* %off20, align 8
  %sub21 = sub nsw i64 %26, %28
  %conv22 = trunc i64 %sub21 to i32
  %29 = load %struct.nsis_st*, %struct.nsis_st** %n.addr, align 8
  %asz23 = getelementptr inbounds %struct.nsis_st, %struct.nsis_st* %29, i32 0, i32 4
  store i32 %conv22, i32* %asz23, align 4
  %30 = load i8, i8* %trunc, align 1
  %inc = add i8 %30, 1
  store i8 %inc, i8* %trunc, align 1
  br label %if.end.33

if.else:                                          ; preds = %if.end
  %st_size24 = getelementptr inbounds %struct.stat, %struct.stat* %st, i32 0, i32 8
  %31 = load i64, i64* %st_size24, align 8
  %32 = load %struct.nsis_st*, %struct.nsis_st** %n.addr, align 8
  %off25 = getelementptr inbounds %struct.nsis_st, %struct.nsis_st* %32, i32 0, i32 2
  %33 = load i64, i64* %off25, align 8
  %sub26 = sub nsw i64 %31, %33
  %34 = load %struct.nsis_st*, %struct.nsis_st** %n.addr, align 8
  %asz27 = getelementptr inbounds %struct.nsis_st, %struct.nsis_st* %34, i32 0, i32 4
  %35 = load i32, i32* %asz27, align 4
  %conv28 = zext i32 %35 to i64
  %cmp29 = icmp ne i64 %sub26, %conv28
  br i1 %cmp29, label %if.then.31, label %if.end.32

if.then.31:                                       ; preds = %if.else
  call void (i8*, ...) @cli_dbgmsg(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.34, i32 0, i32 0))
  br label %if.end.32

if.end.32:                                        ; preds = %if.then.31, %if.else
  br label %if.end.33

if.end.33:                                        ; preds = %if.end.32, %if.then.18
  %36 = load %struct.nsis_st*, %struct.nsis_st** %n.addr, align 8
  %asz34 = getelementptr inbounds %struct.nsis_st, %struct.nsis_st* %36, i32 0, i32 4
  %37 = load i32, i32* %asz34, align 4
  %sub35 = sub i32 %37, 28
  store i32 %sub35, i32* %asz34, align 4
  store i32 0, i32* %i, align 4
  store i32 0, i32* %pos, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end.33
  %38 = load i32, i32* %pos, align 4
  %39 = load %struct.nsis_st*, %struct.nsis_st** %n.addr, align 8
  %asz36 = getelementptr inbounds %struct.nsis_st, %struct.nsis_st* %39, i32 0, i32 4
  %40 = load i32, i32* %asz36, align 4
  %sub37 = sub i32 %40, 4
  %cmp38 = icmp ult i32 %38, %sub37
  br i1 %cmp38, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %41 = load %struct.nsis_st*, %struct.nsis_st** %n.addr, align 8
  %ifd40 = getelementptr inbounds %struct.nsis_st, %struct.nsis_st* %41, i32 0, i32 0
  %42 = load i32, i32* %ifd40, align 4
  %arraydecay41 = getelementptr inbounds [28 x i8], [28 x i8]* %buf, i32 0, i32 0
  %add.ptr42 = getelementptr inbounds i8, i8* %arraydecay41, i64 4
  %call43 = call i32 @cli_readn(i32 %42, i8* %add.ptr42, i32 4)
  %cmp44 = icmp ne i32 %call43, 4
  br i1 %cmp44, label %if.then.46, label %if.end.47

if.then.46:                                       ; preds = %for.body
  store i32 -123, i32* %retval
  br label %return

if.end.47:                                        ; preds = %for.body
  %arraydecay48 = getelementptr inbounds [28 x i8], [28 x i8]* %buf, i32 0, i32 0
  %add.ptr49 = getelementptr inbounds i8, i8* %arraydecay48, i64 4
  %43 = bitcast i8* %add.ptr49 to i32*
  %44 = load i32, i32* %43, align 4
  store i32 %44, i32* %nextsz, align 4
  %45 = load i32, i32* %i, align 4
  %tobool = icmp ne i32 %45, 0
  br i1 %tobool, label %if.end.54, label %if.then.50

if.then.50:                                       ; preds = %if.end.47
  %arraydecay51 = getelementptr inbounds [28 x i8], [28 x i8]* %buf, i32 0, i32 0
  %add.ptr52 = getelementptr inbounds i8, i8* %arraydecay51, i64 4
  %call53 = call zeroext i8 @nsis_detcomp(i8* %add.ptr52)
  %46 = load %struct.nsis_st*, %struct.nsis_st** %n.addr, align 8
  %comp = getelementptr inbounds %struct.nsis_st, %struct.nsis_st* %46, i32 0, i32 12
  store i8 %call53, i8* %comp, align 1
  br label %if.end.54

if.end.54:                                        ; preds = %if.then.50, %if.end.47
  %47 = load i32, i32* %nextsz, align 4
  %and = and i32 %47, -2147483648
  %tobool55 = icmp ne i32 %and, 0
  br i1 %tobool55, label %if.then.56, label %if.end.71

if.then.56:                                       ; preds = %if.end.54
  %48 = load i32, i32* %nextsz, align 4
  %and57 = and i32 %48, 2147483647
  store i32 %and57, i32* %nextsz, align 4
  %49 = load %struct.nsis_st*, %struct.nsis_st** %n.addr, align 8
  %ifd58 = getelementptr inbounds %struct.nsis_st, %struct.nsis_st* %49, i32 0, i32 0
  %50 = load i32, i32* %ifd58, align 4
  %arraydecay59 = getelementptr inbounds [28 x i8], [28 x i8]* %buf, i32 0, i32 0
  %add.ptr60 = getelementptr inbounds i8, i8* %arraydecay59, i64 4
  %call61 = call i32 @cli_readn(i32 %50, i8* %add.ptr60, i32 4)
  %cmp62 = icmp ne i32 %call61, 4
  br i1 %cmp62, label %if.then.64, label %if.end.65

if.then.64:                                       ; preds = %if.then.56
  store i32 -123, i32* %retval
  br label %return

if.end.65:                                        ; preds = %if.then.56
  %arraydecay66 = getelementptr inbounds [28 x i8], [28 x i8]* %buf, i32 0, i32 0
  %add.ptr67 = getelementptr inbounds i8, i8* %arraydecay66, i64 4
  %call68 = call zeroext i8 @nsis_detcomp(i8* %add.ptr67)
  %idxprom = zext i8 %call68 to i64
  %arrayidx = getelementptr inbounds [4 x i8], [4 x i8]* %comps, i32 0, i64 %idxprom
  %51 = load i8, i8* %arrayidx, align 1
  %inc69 = add i8 %51, 1
  store i8 %inc69, i8* %arrayidx, align 1
  %52 = load i32, i32* %nextsz, align 4
  %sub70 = sub nsw i32 %52, 4
  store i32 %sub70, i32* %nextsz, align 4
  %53 = load i32, i32* %pos, align 4
  %add = add i32 %53, 4
  store i32 %add, i32* %pos, align 4
  br label %if.end.71

if.end.71:                                        ; preds = %if.end.65, %if.end.54
  %54 = load i32, i32* %nextsz, align 4
  %add72 = add nsw i32 4, %54
  %55 = load i32, i32* %pos, align 4
  %add73 = add i32 %55, %add72
  store i32 %add73, i32* %pos, align 4
  %56 = load %struct.nsis_st*, %struct.nsis_st** %n.addr, align 8
  %asz74 = getelementptr inbounds %struct.nsis_st, %struct.nsis_st* %56, i32 0, i32 4
  %57 = load i32, i32* %asz74, align 4
  %cmp75 = icmp ugt i32 %add73, %57
  br i1 %cmp75, label %if.then.77, label %if.end.78

if.then.77:                                       ; preds = %if.end.71
  %58 = load %struct.nsis_st*, %struct.nsis_st** %n.addr, align 8
  %solid = getelementptr inbounds %struct.nsis_st, %struct.nsis_st* %58, i32 0, i32 13
  store i8 1, i8* %solid, align 1
  br label %for.end

if.end.78:                                        ; preds = %if.end.71
  %59 = load %struct.nsis_st*, %struct.nsis_st** %n.addr, align 8
  %ifd79 = getelementptr inbounds %struct.nsis_st, %struct.nsis_st* %59, i32 0, i32 0
  %60 = load i32, i32* %ifd79, align 4
  %61 = load i32, i32* %nextsz, align 4
  %conv80 = sext i32 %61 to i64
  %call81 = call i64 @lseek(i32 %60, i64 %conv80, i32 1) #2
  %cmp82 = icmp eq i64 %call81, -1
  br i1 %cmp82, label %if.then.84, label %if.end.85

if.then.84:                                       ; preds = %if.end.78
  store i32 -123, i32* %retval
  br label %return

if.end.85:                                        ; preds = %if.end.78
  br label %for.inc

for.inc:                                          ; preds = %if.end.85
  %62 = load i32, i32* %i, align 4
  %inc86 = add nsw i32 %62, 1
  store i32 %inc86, i32* %i, align 4
  br label %for.cond

for.end:                                          ; preds = %if.then.77, %for.cond
  %63 = load i8, i8* %trunc, align 1
  %conv87 = zext i8 %63 to i32
  %tobool88 = icmp ne i32 %conv87, 0
  br i1 %tobool88, label %land.lhs.true, label %if.end.93

land.lhs.true:                                    ; preds = %for.end
  %64 = load i32, i32* %i, align 4
  %cmp89 = icmp sge i32 %64, 2
  br i1 %cmp89, label %if.then.91, label %if.end.93

if.then.91:                                       ; preds = %land.lhs.true
  %65 = load %struct.nsis_st*, %struct.nsis_st** %n.addr, align 8
  %solid92 = getelementptr inbounds %struct.nsis_st, %struct.nsis_st* %65, i32 0, i32 13
  store i8 0, i8* %solid92, align 1
  br label %if.end.93

if.end.93:                                        ; preds = %if.then.91, %land.lhs.true, %for.end
  %66 = load %struct.nsis_st*, %struct.nsis_st** %n.addr, align 8
  %solid94 = getelementptr inbounds %struct.nsis_st, %struct.nsis_st* %66, i32 0, i32 13
  %67 = load i8, i8* %solid94, align 1
  %conv95 = zext i8 %67 to i32
  %tobool96 = icmp ne i32 %conv95, 0
  %cond = select i1 %tobool96, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.36, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.37, i32 0, i32 0)
  call void (i8*, ...) @cli_dbgmsg(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.35, i32 0, i32 0), i8* %cond)
  %68 = load %struct.nsis_st*, %struct.nsis_st** %n.addr, align 8
  %solid97 = getelementptr inbounds %struct.nsis_st, %struct.nsis_st* %68, i32 0, i32 13
  %69 = load i8, i8* %solid97, align 1
  %tobool98 = icmp ne i8 %69, 0
  br i1 %tobool98, label %if.end.129, label %if.then.99

if.then.99:                                       ; preds = %if.end.93
  %arrayidx100 = getelementptr inbounds [4 x i8], [4 x i8]* %comps, i32 0, i64 1
  %70 = load i8, i8* %arrayidx100, align 1
  %conv101 = zext i8 %70 to i32
  %arrayidx102 = getelementptr inbounds [4 x i8], [4 x i8]* %comps, i32 0, i64 2
  %71 = load i8, i8* %arrayidx102, align 1
  %conv103 = zext i8 %71 to i32
  %arrayidx104 = getelementptr inbounds [4 x i8], [4 x i8]* %comps, i32 0, i64 3
  %72 = load i8, i8* %arrayidx104, align 1
  %conv105 = zext i8 %72 to i32
  call void (i8*, ...) @cli_dbgmsg(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.38, i32 0, i32 0), i32 %conv101, i32 %conv103, i32 %conv105)
  %arrayidx106 = getelementptr inbounds [4 x i8], [4 x i8]* %comps, i32 0, i64 1
  %73 = load i8, i8* %arrayidx106, align 1
  %conv107 = zext i8 %73 to i32
  %arrayidx108 = getelementptr inbounds [4 x i8], [4 x i8]* %comps, i32 0, i64 2
  %74 = load i8, i8* %arrayidx108, align 1
  %conv109 = zext i8 %74 to i32
  %cmp110 = icmp slt i32 %conv107, %conv109
  br i1 %cmp110, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.then.99
  %arrayidx112 = getelementptr inbounds [4 x i8], [4 x i8]* %comps, i32 0, i64 2
  %75 = load i8, i8* %arrayidx112, align 1
  %conv113 = zext i8 %75 to i32
  %arrayidx114 = getelementptr inbounds [4 x i8], [4 x i8]* %comps, i32 0, i64 3
  %76 = load i8, i8* %arrayidx114, align 1
  %conv115 = zext i8 %76 to i32
  %cmp116 = icmp slt i32 %conv113, %conv115
  %cond118 = select i1 %cmp116, i32 3, i32 2
  br label %cond.end

cond.false:                                       ; preds = %if.then.99
  %arrayidx119 = getelementptr inbounds [4 x i8], [4 x i8]* %comps, i32 0, i64 1
  %77 = load i8, i8* %arrayidx119, align 1
  %conv120 = zext i8 %77 to i32
  %arrayidx121 = getelementptr inbounds [4 x i8], [4 x i8]* %comps, i32 0, i64 3
  %78 = load i8, i8* %arrayidx121, align 1
  %conv122 = zext i8 %78 to i32
  %cmp123 = icmp slt i32 %conv120, %conv122
  %cond125 = select i1 %cmp123, i32 3, i32 1
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond126 = phi i32 [ %cond118, %cond.true ], [ %cond125, %cond.false ]
  %conv127 = trunc i32 %cond126 to i8
  %79 = load %struct.nsis_st*, %struct.nsis_st** %n.addr, align 8
  %comp128 = getelementptr inbounds %struct.nsis_st, %struct.nsis_st* %79, i32 0, i32 12
  store i8 %conv127, i8* %comp128, align 1
  br label %if.end.129

if.end.129:                                       ; preds = %cond.end, %if.end.93
  %80 = load %struct.nsis_st*, %struct.nsis_st** %n.addr, align 8
  %ifd130 = getelementptr inbounds %struct.nsis_st, %struct.nsis_st* %80, i32 0, i32 0
  %81 = load i32, i32* %ifd130, align 4
  %82 = load %struct.nsis_st*, %struct.nsis_st** %n.addr, align 8
  %off131 = getelementptr inbounds %struct.nsis_st, %struct.nsis_st* %82, i32 0, i32 2
  %83 = load i64, i64* %off131, align 8
  %add132 = add nsw i64 %83, 28
  %call133 = call i64 @lseek(i32 %81, i64 %add132, i32 0) #2
  %cmp134 = icmp eq i64 %call133, -1
  br i1 %cmp134, label %if.then.136, label %if.end.137

if.then.136:                                      ; preds = %if.end.129
  store i32 -123, i32* %retval
  br label %return

if.end.137:                                       ; preds = %if.end.129
  %84 = load %struct.nsis_st*, %struct.nsis_st** %n.addr, align 8
  %85 = load %struct.cli_ctx*, %struct.cli_ctx** %ctx.addr, align 8
  %call138 = call i32 @nsis_unpack_next(%struct.nsis_st* %84, %struct.cli_ctx* %85)
  store i32 %call138, i32* %retval
  br label %return

return:                                           ; preds = %if.end.137, %if.then.136, %if.then.84, %if.then.64, %if.then.46, %if.then
  %86 = load i32, i32* %retval
  ret i32 %86
}

; Function Attrs: nounwind
declare i32 @snprintf(i8*, i64, i8*, ...) #3

declare i32 @open(i8*, i32, ...) #1

declare void @cli_errmsg(i8*, ...) #1

declare i32 @cli_readn(i32, i8*, i32) #1

declare i8* @cli_malloc(i64) #1

declare i32 @cli_writen(i32, i8*, i32) #1

; Function Attrs: nounwind uwtable
define internal i32 @nsis_init(%struct.nsis_st* %n) #0 {
entry:
  %retval = alloca i32, align 4
  %n.addr = alloca %struct.nsis_st*, align 8
  store %struct.nsis_st* %n, %struct.nsis_st** %n.addr, align 8
  %0 = load %struct.nsis_st*, %struct.nsis_st** %n.addr, align 8
  %comp = getelementptr inbounds %struct.nsis_st, %struct.nsis_st* %0, i32 0, i32 12
  %1 = load i8, i8* %comp, align 1
  %conv = zext i8 %1 to i32
  switch i32 %conv, label %sw.epilog [
    i32 1, label %sw.bb
    i32 2, label %sw.bb.2
    i32 3, label %sw.bb.4
  ]

sw.bb:                                            ; preds = %entry
  %2 = load %struct.nsis_st*, %struct.nsis_st** %n.addr, align 8
  %bz = getelementptr inbounds %struct.nsis_st, %struct.nsis_st* %2, i32 0, i32 8
  %call = call i32 @nsis_BZ2_bzDecompressInit(%struct.nsis_bzstream* %bz, i32 0, i32 0)
  %cmp = icmp ne i32 %call, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %sw.bb
  store i32 -106, i32* %retval
  br label %return

if.end:                                           ; preds = %sw.bb
  %3 = load %struct.nsis_st*, %struct.nsis_st** %n.addr, align 8
  %freecomp = getelementptr inbounds %struct.nsis_st, %struct.nsis_st* %3, i32 0, i32 14
  store i8 1, i8* %freecomp, align 1
  br label %sw.epilog

sw.bb.2:                                          ; preds = %entry
  %4 = load %struct.nsis_st*, %struct.nsis_st** %n.addr, align 8
  %lz = getelementptr inbounds %struct.nsis_st, %struct.nsis_st* %4, i32 0, i32 9
  call void @lzmaInit(%struct.lzma_stream* %lz)
  %5 = load %struct.nsis_st*, %struct.nsis_st** %n.addr, align 8
  %freecomp3 = getelementptr inbounds %struct.nsis_st, %struct.nsis_st* %5, i32 0, i32 14
  store i8 1, i8* %freecomp3, align 1
  br label %sw.epilog

sw.bb.4:                                          ; preds = %entry
  %6 = load %struct.nsis_st*, %struct.nsis_st** %n.addr, align 8
  %z = getelementptr inbounds %struct.nsis_st, %struct.nsis_st* %6, i32 0, i32 10
  %blocks = getelementptr inbounds %struct.nsis_z_stream_s, %struct.nsis_z_stream_s* %z, i32 0, i32 5
  %mode = getelementptr inbounds %struct.inflate_blocks_state, %struct.inflate_blocks_state* %blocks, i32 0, i32 0
  store i32 8, i32* %mode, align 4
  %7 = load %struct.nsis_st*, %struct.nsis_st** %n.addr, align 8
  %z5 = getelementptr inbounds %struct.nsis_st, %struct.nsis_st* %7, i32 0, i32 10
  %blocks6 = getelementptr inbounds %struct.nsis_z_stream_s, %struct.nsis_z_stream_s* %z5, i32 0, i32 5
  %bitb = getelementptr inbounds %struct.inflate_blocks_state, %struct.inflate_blocks_state* %blocks6, i32 0, i32 4
  store i64 0, i64* %bitb, align 8
  %8 = load %struct.nsis_st*, %struct.nsis_st** %n.addr, align 8
  %z7 = getelementptr inbounds %struct.nsis_st, %struct.nsis_st* %8, i32 0, i32 10
  %blocks8 = getelementptr inbounds %struct.nsis_z_stream_s, %struct.nsis_z_stream_s* %z7, i32 0, i32 5
  %bitk = getelementptr inbounds %struct.inflate_blocks_state, %struct.inflate_blocks_state* %blocks8, i32 0, i32 3
  store i32 0, i32* %bitk, align 4
  %9 = load %struct.nsis_st*, %struct.nsis_st** %n.addr, align 8
  %z9 = getelementptr inbounds %struct.nsis_st, %struct.nsis_st* %9, i32 0, i32 10
  %blocks10 = getelementptr inbounds %struct.nsis_z_stream_s, %struct.nsis_z_stream_s* %z9, i32 0, i32 5
  %window = getelementptr inbounds %struct.inflate_blocks_state, %struct.inflate_blocks_state* %blocks10, i32 0, i32 6
  %arraydecay = getelementptr inbounds [32768 x i8], [32768 x i8]* %window, i32 0, i32 0
  %10 = load %struct.nsis_st*, %struct.nsis_st** %n.addr, align 8
  %z11 = getelementptr inbounds %struct.nsis_st, %struct.nsis_st* %10, i32 0, i32 10
  %blocks12 = getelementptr inbounds %struct.nsis_z_stream_s, %struct.nsis_z_stream_s* %z11, i32 0, i32 5
  %write = getelementptr inbounds %struct.inflate_blocks_state, %struct.inflate_blocks_state* %blocks12, i32 0, i32 9
  store i8* %arraydecay, i8** %write, align 8
  %11 = load %struct.nsis_st*, %struct.nsis_st** %n.addr, align 8
  %z13 = getelementptr inbounds %struct.nsis_st, %struct.nsis_st* %11, i32 0, i32 10
  %blocks14 = getelementptr inbounds %struct.nsis_z_stream_s, %struct.nsis_z_stream_s* %z13, i32 0, i32 5
  %read = getelementptr inbounds %struct.inflate_blocks_state, %struct.inflate_blocks_state* %blocks14, i32 0, i32 8
  store i8* %arraydecay, i8** %read, align 8
  %12 = load %struct.nsis_st*, %struct.nsis_st** %n.addr, align 8
  %z15 = getelementptr inbounds %struct.nsis_st, %struct.nsis_st* %12, i32 0, i32 10
  %blocks16 = getelementptr inbounds %struct.nsis_z_stream_s, %struct.nsis_z_stream_s* %z15, i32 0, i32 5
  %window17 = getelementptr inbounds %struct.inflate_blocks_state, %struct.inflate_blocks_state* %blocks16, i32 0, i32 6
  %arraydecay18 = getelementptr inbounds [32768 x i8], [32768 x i8]* %window17, i32 0, i32 0
  %add.ptr = getelementptr inbounds i8, i8* %arraydecay18, i64 32768
  %13 = load %struct.nsis_st*, %struct.nsis_st** %n.addr, align 8
  %z19 = getelementptr inbounds %struct.nsis_st, %struct.nsis_st* %13, i32 0, i32 10
  %blocks20 = getelementptr inbounds %struct.nsis_z_stream_s, %struct.nsis_z_stream_s* %z19, i32 0, i32 5
  %end = getelementptr inbounds %struct.inflate_blocks_state, %struct.inflate_blocks_state* %blocks20, i32 0, i32 7
  store i8* %add.ptr, i8** %end, align 8
  %14 = load %struct.nsis_st*, %struct.nsis_st** %n.addr, align 8
  %freecomp21 = getelementptr inbounds %struct.nsis_st, %struct.nsis_st* %14, i32 0, i32 14
  store i8 0, i8* %freecomp21, align 1
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.bb.4, %entry, %sw.bb.2, %if.end
  store i32 0, i32* %retval
  br label %return

return:                                           ; preds = %sw.epilog, %if.then
  %15 = load i32, i32* %retval
  ret i32 %15
}

; Function Attrs: nounwind uwtable
define internal i32 @nsis_decomp(%struct.nsis_st* %n) #0 {
entry:
  %n.addr = alloca %struct.nsis_st*, align 8
  %ret = alloca i32, align 4
  store %struct.nsis_st* %n, %struct.nsis_st** %n.addr, align 8
  store i32 -124, i32* %ret, align 4
  %0 = load %struct.nsis_st*, %struct.nsis_st** %n.addr, align 8
  %comp = getelementptr inbounds %struct.nsis_st, %struct.nsis_st* %0, i32 0, i32 12
  %1 = load i8, i8* %comp, align 1
  %conv = zext i8 %1 to i32
  switch i32 %conv, label %sw.epilog.104 [
    i32 1, label %sw.bb
    i32 2, label %sw.bb.30
    i32 3, label %sw.bb.67
  ]

sw.bb:                                            ; preds = %entry
  %2 = load %struct.nsis_st*, %struct.nsis_st** %n.addr, align 8
  %nsis = getelementptr inbounds %struct.nsis_st, %struct.nsis_st* %2, i32 0, i32 7
  %avail_in = getelementptr inbounds %struct.anon, %struct.anon* %nsis, i32 0, i32 0
  %3 = load i32, i32* %avail_in, align 4
  %4 = load %struct.nsis_st*, %struct.nsis_st** %n.addr, align 8
  %bz = getelementptr inbounds %struct.nsis_st, %struct.nsis_st* %4, i32 0, i32 8
  %avail_in1 = getelementptr inbounds %struct.nsis_bzstream, %struct.nsis_bzstream* %bz, i32 0, i32 1
  store i32 %3, i32* %avail_in1, align 4
  %5 = load %struct.nsis_st*, %struct.nsis_st** %n.addr, align 8
  %nsis2 = getelementptr inbounds %struct.nsis_st, %struct.nsis_st* %5, i32 0, i32 7
  %next_in = getelementptr inbounds %struct.anon, %struct.anon* %nsis2, i32 0, i32 1
  %6 = load i8*, i8** %next_in, align 8
  %7 = load %struct.nsis_st*, %struct.nsis_st** %n.addr, align 8
  %bz3 = getelementptr inbounds %struct.nsis_st, %struct.nsis_st* %7, i32 0, i32 8
  %next_in4 = getelementptr inbounds %struct.nsis_bzstream, %struct.nsis_bzstream* %bz3, i32 0, i32 0
  store i8* %6, i8** %next_in4, align 8
  %8 = load %struct.nsis_st*, %struct.nsis_st** %n.addr, align 8
  %nsis5 = getelementptr inbounds %struct.nsis_st, %struct.nsis_st* %8, i32 0, i32 7
  %avail_out = getelementptr inbounds %struct.anon, %struct.anon* %nsis5, i32 0, i32 2
  %9 = load i32, i32* %avail_out, align 4
  %10 = load %struct.nsis_st*, %struct.nsis_st** %n.addr, align 8
  %bz6 = getelementptr inbounds %struct.nsis_st, %struct.nsis_st* %10, i32 0, i32 8
  %avail_out7 = getelementptr inbounds %struct.nsis_bzstream, %struct.nsis_bzstream* %bz6, i32 0, i32 5
  store i32 %9, i32* %avail_out7, align 4
  %11 = load %struct.nsis_st*, %struct.nsis_st** %n.addr, align 8
  %nsis8 = getelementptr inbounds %struct.nsis_st, %struct.nsis_st* %11, i32 0, i32 7
  %next_out = getelementptr inbounds %struct.anon, %struct.anon* %nsis8, i32 0, i32 3
  %12 = load i8*, i8** %next_out, align 8
  %13 = load %struct.nsis_st*, %struct.nsis_st** %n.addr, align 8
  %bz9 = getelementptr inbounds %struct.nsis_st, %struct.nsis_st* %13, i32 0, i32 8
  %next_out10 = getelementptr inbounds %struct.nsis_bzstream, %struct.nsis_bzstream* %bz9, i32 0, i32 4
  store i8* %12, i8** %next_out10, align 8
  %14 = load %struct.nsis_st*, %struct.nsis_st** %n.addr, align 8
  %bz11 = getelementptr inbounds %struct.nsis_st, %struct.nsis_st* %14, i32 0, i32 8
  %call = call i32 @nsis_BZ2_bzDecompress(%struct.nsis_bzstream* %bz11)
  switch i32 %call, label %sw.epilog [
    i32 0, label %sw.bb.12
    i32 4, label %sw.bb.13
  ]

sw.bb.12:                                         ; preds = %sw.bb
  store i32 0, i32* %ret, align 4
  br label %sw.epilog

sw.bb.13:                                         ; preds = %sw.bb
  store i32 2, i32* %ret, align 4
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.bb.13, %sw.bb, %sw.bb.12
  %15 = load %struct.nsis_st*, %struct.nsis_st** %n.addr, align 8
  %bz14 = getelementptr inbounds %struct.nsis_st, %struct.nsis_st* %15, i32 0, i32 8
  %avail_in15 = getelementptr inbounds %struct.nsis_bzstream, %struct.nsis_bzstream* %bz14, i32 0, i32 1
  %16 = load i32, i32* %avail_in15, align 4
  %17 = load %struct.nsis_st*, %struct.nsis_st** %n.addr, align 8
  %nsis16 = getelementptr inbounds %struct.nsis_st, %struct.nsis_st* %17, i32 0, i32 7
  %avail_in17 = getelementptr inbounds %struct.anon, %struct.anon* %nsis16, i32 0, i32 0
  store i32 %16, i32* %avail_in17, align 4
  %18 = load %struct.nsis_st*, %struct.nsis_st** %n.addr, align 8
  %bz18 = getelementptr inbounds %struct.nsis_st, %struct.nsis_st* %18, i32 0, i32 8
  %next_in19 = getelementptr inbounds %struct.nsis_bzstream, %struct.nsis_bzstream* %bz18, i32 0, i32 0
  %19 = load i8*, i8** %next_in19, align 8
  %20 = load %struct.nsis_st*, %struct.nsis_st** %n.addr, align 8
  %nsis20 = getelementptr inbounds %struct.nsis_st, %struct.nsis_st* %20, i32 0, i32 7
  %next_in21 = getelementptr inbounds %struct.anon, %struct.anon* %nsis20, i32 0, i32 1
  store i8* %19, i8** %next_in21, align 8
  %21 = load %struct.nsis_st*, %struct.nsis_st** %n.addr, align 8
  %bz22 = getelementptr inbounds %struct.nsis_st, %struct.nsis_st* %21, i32 0, i32 8
  %avail_out23 = getelementptr inbounds %struct.nsis_bzstream, %struct.nsis_bzstream* %bz22, i32 0, i32 5
  %22 = load i32, i32* %avail_out23, align 4
  %23 = load %struct.nsis_st*, %struct.nsis_st** %n.addr, align 8
  %nsis24 = getelementptr inbounds %struct.nsis_st, %struct.nsis_st* %23, i32 0, i32 7
  %avail_out25 = getelementptr inbounds %struct.anon, %struct.anon* %nsis24, i32 0, i32 2
  store i32 %22, i32* %avail_out25, align 4
  %24 = load %struct.nsis_st*, %struct.nsis_st** %n.addr, align 8
  %bz26 = getelementptr inbounds %struct.nsis_st, %struct.nsis_st* %24, i32 0, i32 8
  %next_out27 = getelementptr inbounds %struct.nsis_bzstream, %struct.nsis_bzstream* %bz26, i32 0, i32 4
  %25 = load i8*, i8** %next_out27, align 8
  %26 = load %struct.nsis_st*, %struct.nsis_st** %n.addr, align 8
  %nsis28 = getelementptr inbounds %struct.nsis_st, %struct.nsis_st* %26, i32 0, i32 7
  %next_out29 = getelementptr inbounds %struct.anon, %struct.anon* %nsis28, i32 0, i32 3
  store i8* %25, i8** %next_out29, align 8
  br label %sw.epilog.104

sw.bb.30:                                         ; preds = %entry
  %27 = load %struct.nsis_st*, %struct.nsis_st** %n.addr, align 8
  %nsis31 = getelementptr inbounds %struct.nsis_st, %struct.nsis_st* %27, i32 0, i32 7
  %avail_in32 = getelementptr inbounds %struct.anon, %struct.anon* %nsis31, i32 0, i32 0
  %28 = load i32, i32* %avail_in32, align 4
  %29 = load %struct.nsis_st*, %struct.nsis_st** %n.addr, align 8
  %lz = getelementptr inbounds %struct.nsis_st, %struct.nsis_st* %29, i32 0, i32 9
  %avail_in33 = getelementptr inbounds %struct.lzma_stream, %struct.lzma_stream* %lz, i32 0, i32 7
  store i32 %28, i32* %avail_in33, align 4
  %30 = load %struct.nsis_st*, %struct.nsis_st** %n.addr, align 8
  %nsis34 = getelementptr inbounds %struct.nsis_st, %struct.nsis_st* %30, i32 0, i32 7
  %next_in35 = getelementptr inbounds %struct.anon, %struct.anon* %nsis34, i32 0, i32 1
  %31 = load i8*, i8** %next_in35, align 8
  %32 = load %struct.nsis_st*, %struct.nsis_st** %n.addr, align 8
  %lz36 = getelementptr inbounds %struct.nsis_st, %struct.nsis_st* %32, i32 0, i32 9
  %next_in37 = getelementptr inbounds %struct.lzma_stream, %struct.lzma_stream* %lz36, i32 0, i32 6
  store i8* %31, i8** %next_in37, align 8
  %33 = load %struct.nsis_st*, %struct.nsis_st** %n.addr, align 8
  %nsis38 = getelementptr inbounds %struct.nsis_st, %struct.nsis_st* %33, i32 0, i32 7
  %avail_out39 = getelementptr inbounds %struct.anon, %struct.anon* %nsis38, i32 0, i32 2
  %34 = load i32, i32* %avail_out39, align 4
  %35 = load %struct.nsis_st*, %struct.nsis_st** %n.addr, align 8
  %lz40 = getelementptr inbounds %struct.nsis_st, %struct.nsis_st* %35, i32 0, i32 9
  %avail_out41 = getelementptr inbounds %struct.lzma_stream, %struct.lzma_stream* %lz40, i32 0, i32 9
  store i32 %34, i32* %avail_out41, align 4
  %36 = load %struct.nsis_st*, %struct.nsis_st** %n.addr, align 8
  %nsis42 = getelementptr inbounds %struct.nsis_st, %struct.nsis_st* %36, i32 0, i32 7
  %next_out43 = getelementptr inbounds %struct.anon, %struct.anon* %nsis42, i32 0, i32 3
  %37 = load i8*, i8** %next_out43, align 8
  %38 = load %struct.nsis_st*, %struct.nsis_st** %n.addr, align 8
  %lz44 = getelementptr inbounds %struct.nsis_st, %struct.nsis_st* %38, i32 0, i32 9
  %next_out45 = getelementptr inbounds %struct.lzma_stream, %struct.lzma_stream* %lz44, i32 0, i32 8
  store i8* %37, i8** %next_out45, align 8
  %39 = load %struct.nsis_st*, %struct.nsis_st** %n.addr, align 8
  %lz46 = getelementptr inbounds %struct.nsis_st, %struct.nsis_st* %39, i32 0, i32 9
  %call47 = call i32 @lzmaDecode(%struct.lzma_stream* %lz46)
  switch i32 %call47, label %sw.epilog.50 [
    i32 0, label %sw.bb.48
    i32 1, label %sw.bb.49
  ]

sw.bb.48:                                         ; preds = %sw.bb.30
  store i32 0, i32* %ret, align 4
  br label %sw.epilog.50

sw.bb.49:                                         ; preds = %sw.bb.30
  store i32 2, i32* %ret, align 4
  br label %sw.epilog.50

sw.epilog.50:                                     ; preds = %sw.bb.49, %sw.bb.30, %sw.bb.48
  %40 = load %struct.nsis_st*, %struct.nsis_st** %n.addr, align 8
  %lz51 = getelementptr inbounds %struct.nsis_st, %struct.nsis_st* %40, i32 0, i32 9
  %avail_in52 = getelementptr inbounds %struct.lzma_stream, %struct.lzma_stream* %lz51, i32 0, i32 7
  %41 = load i32, i32* %avail_in52, align 4
  %42 = load %struct.nsis_st*, %struct.nsis_st** %n.addr, align 8
  %nsis53 = getelementptr inbounds %struct.nsis_st, %struct.nsis_st* %42, i32 0, i32 7
  %avail_in54 = getelementptr inbounds %struct.anon, %struct.anon* %nsis53, i32 0, i32 0
  store i32 %41, i32* %avail_in54, align 4
  %43 = load %struct.nsis_st*, %struct.nsis_st** %n.addr, align 8
  %lz55 = getelementptr inbounds %struct.nsis_st, %struct.nsis_st* %43, i32 0, i32 9
  %next_in56 = getelementptr inbounds %struct.lzma_stream, %struct.lzma_stream* %lz55, i32 0, i32 6
  %44 = load i8*, i8** %next_in56, align 8
  %45 = load %struct.nsis_st*, %struct.nsis_st** %n.addr, align 8
  %nsis57 = getelementptr inbounds %struct.nsis_st, %struct.nsis_st* %45, i32 0, i32 7
  %next_in58 = getelementptr inbounds %struct.anon, %struct.anon* %nsis57, i32 0, i32 1
  store i8* %44, i8** %next_in58, align 8
  %46 = load %struct.nsis_st*, %struct.nsis_st** %n.addr, align 8
  %lz59 = getelementptr inbounds %struct.nsis_st, %struct.nsis_st* %46, i32 0, i32 9
  %avail_out60 = getelementptr inbounds %struct.lzma_stream, %struct.lzma_stream* %lz59, i32 0, i32 9
  %47 = load i32, i32* %avail_out60, align 4
  %48 = load %struct.nsis_st*, %struct.nsis_st** %n.addr, align 8
  %nsis61 = getelementptr inbounds %struct.nsis_st, %struct.nsis_st* %48, i32 0, i32 7
  %avail_out62 = getelementptr inbounds %struct.anon, %struct.anon* %nsis61, i32 0, i32 2
  store i32 %47, i32* %avail_out62, align 4
  %49 = load %struct.nsis_st*, %struct.nsis_st** %n.addr, align 8
  %lz63 = getelementptr inbounds %struct.nsis_st, %struct.nsis_st* %49, i32 0, i32 9
  %next_out64 = getelementptr inbounds %struct.lzma_stream, %struct.lzma_stream* %lz63, i32 0, i32 8
  %50 = load i8*, i8** %next_out64, align 8
  %51 = load %struct.nsis_st*, %struct.nsis_st** %n.addr, align 8
  %nsis65 = getelementptr inbounds %struct.nsis_st, %struct.nsis_st* %51, i32 0, i32 7
  %next_out66 = getelementptr inbounds %struct.anon, %struct.anon* %nsis65, i32 0, i32 3
  store i8* %50, i8** %next_out66, align 8
  br label %sw.epilog.104

sw.bb.67:                                         ; preds = %entry
  %52 = load %struct.nsis_st*, %struct.nsis_st** %n.addr, align 8
  %nsis68 = getelementptr inbounds %struct.nsis_st, %struct.nsis_st* %52, i32 0, i32 7
  %avail_in69 = getelementptr inbounds %struct.anon, %struct.anon* %nsis68, i32 0, i32 0
  %53 = load i32, i32* %avail_in69, align 4
  %54 = load %struct.nsis_st*, %struct.nsis_st** %n.addr, align 8
  %z = getelementptr inbounds %struct.nsis_st, %struct.nsis_st* %54, i32 0, i32 10
  %avail_in70 = getelementptr inbounds %struct.nsis_z_stream_s, %struct.nsis_z_stream_s* %z, i32 0, i32 1
  store i32 %53, i32* %avail_in70, align 4
  %55 = load %struct.nsis_st*, %struct.nsis_st** %n.addr, align 8
  %nsis71 = getelementptr inbounds %struct.nsis_st, %struct.nsis_st* %55, i32 0, i32 7
  %next_in72 = getelementptr inbounds %struct.anon, %struct.anon* %nsis71, i32 0, i32 1
  %56 = load i8*, i8** %next_in72, align 8
  %57 = load %struct.nsis_st*, %struct.nsis_st** %n.addr, align 8
  %z73 = getelementptr inbounds %struct.nsis_st, %struct.nsis_st* %57, i32 0, i32 10
  %next_in74 = getelementptr inbounds %struct.nsis_z_stream_s, %struct.nsis_z_stream_s* %z73, i32 0, i32 0
  store i8* %56, i8** %next_in74, align 8
  %58 = load %struct.nsis_st*, %struct.nsis_st** %n.addr, align 8
  %nsis75 = getelementptr inbounds %struct.nsis_st, %struct.nsis_st* %58, i32 0, i32 7
  %avail_out76 = getelementptr inbounds %struct.anon, %struct.anon* %nsis75, i32 0, i32 2
  %59 = load i32, i32* %avail_out76, align 4
  %60 = load %struct.nsis_st*, %struct.nsis_st** %n.addr, align 8
  %z77 = getelementptr inbounds %struct.nsis_st, %struct.nsis_st* %60, i32 0, i32 10
  %avail_out78 = getelementptr inbounds %struct.nsis_z_stream_s, %struct.nsis_z_stream_s* %z77, i32 0, i32 4
  store i32 %59, i32* %avail_out78, align 4
  %61 = load %struct.nsis_st*, %struct.nsis_st** %n.addr, align 8
  %nsis79 = getelementptr inbounds %struct.nsis_st, %struct.nsis_st* %61, i32 0, i32 7
  %next_out80 = getelementptr inbounds %struct.anon, %struct.anon* %nsis79, i32 0, i32 3
  %62 = load i8*, i8** %next_out80, align 8
  %63 = load %struct.nsis_st*, %struct.nsis_st** %n.addr, align 8
  %z81 = getelementptr inbounds %struct.nsis_st, %struct.nsis_st* %63, i32 0, i32 10
  %next_out82 = getelementptr inbounds %struct.nsis_z_stream_s, %struct.nsis_z_stream_s* %z81, i32 0, i32 3
  store i8* %62, i8** %next_out82, align 8
  %64 = load %struct.nsis_st*, %struct.nsis_st** %n.addr, align 8
  %z83 = getelementptr inbounds %struct.nsis_st, %struct.nsis_st* %64, i32 0, i32 10
  %call84 = call i32 @nsis_inflate(%struct.nsis_z_stream_s* %z83)
  switch i32 %call84, label %sw.epilog.87 [
    i32 0, label %sw.bb.85
    i32 1, label %sw.bb.86
  ]

sw.bb.85:                                         ; preds = %sw.bb.67
  store i32 0, i32* %ret, align 4
  br label %sw.epilog.87

sw.bb.86:                                         ; preds = %sw.bb.67
  store i32 2, i32* %ret, align 4
  br label %sw.epilog.87

sw.epilog.87:                                     ; preds = %sw.bb.86, %sw.bb.67, %sw.bb.85
  %65 = load %struct.nsis_st*, %struct.nsis_st** %n.addr, align 8
  %z88 = getelementptr inbounds %struct.nsis_st, %struct.nsis_st* %65, i32 0, i32 10
  %avail_in89 = getelementptr inbounds %struct.nsis_z_stream_s, %struct.nsis_z_stream_s* %z88, i32 0, i32 1
  %66 = load i32, i32* %avail_in89, align 4
  %67 = load %struct.nsis_st*, %struct.nsis_st** %n.addr, align 8
  %nsis90 = getelementptr inbounds %struct.nsis_st, %struct.nsis_st* %67, i32 0, i32 7
  %avail_in91 = getelementptr inbounds %struct.anon, %struct.anon* %nsis90, i32 0, i32 0
  store i32 %66, i32* %avail_in91, align 4
  %68 = load %struct.nsis_st*, %struct.nsis_st** %n.addr, align 8
  %z92 = getelementptr inbounds %struct.nsis_st, %struct.nsis_st* %68, i32 0, i32 10
  %next_in93 = getelementptr inbounds %struct.nsis_z_stream_s, %struct.nsis_z_stream_s* %z92, i32 0, i32 0
  %69 = load i8*, i8** %next_in93, align 8
  %70 = load %struct.nsis_st*, %struct.nsis_st** %n.addr, align 8
  %nsis94 = getelementptr inbounds %struct.nsis_st, %struct.nsis_st* %70, i32 0, i32 7
  %next_in95 = getelementptr inbounds %struct.anon, %struct.anon* %nsis94, i32 0, i32 1
  store i8* %69, i8** %next_in95, align 8
  %71 = load %struct.nsis_st*, %struct.nsis_st** %n.addr, align 8
  %z96 = getelementptr inbounds %struct.nsis_st, %struct.nsis_st* %71, i32 0, i32 10
  %avail_out97 = getelementptr inbounds %struct.nsis_z_stream_s, %struct.nsis_z_stream_s* %z96, i32 0, i32 4
  %72 = load i32, i32* %avail_out97, align 4
  %73 = load %struct.nsis_st*, %struct.nsis_st** %n.addr, align 8
  %nsis98 = getelementptr inbounds %struct.nsis_st, %struct.nsis_st* %73, i32 0, i32 7
  %avail_out99 = getelementptr inbounds %struct.anon, %struct.anon* %nsis98, i32 0, i32 2
  store i32 %72, i32* %avail_out99, align 4
  %74 = load %struct.nsis_st*, %struct.nsis_st** %n.addr, align 8
  %z100 = getelementptr inbounds %struct.nsis_st, %struct.nsis_st* %74, i32 0, i32 10
  %next_out101 = getelementptr inbounds %struct.nsis_z_stream_s, %struct.nsis_z_stream_s* %z100, i32 0, i32 3
  %75 = load i8*, i8** %next_out101, align 8
  %76 = load %struct.nsis_st*, %struct.nsis_st** %n.addr, align 8
  %nsis102 = getelementptr inbounds %struct.nsis_st, %struct.nsis_st* %76, i32 0, i32 7
  %next_out103 = getelementptr inbounds %struct.anon, %struct.anon* %nsis102, i32 0, i32 3
  store i8* %75, i8** %next_out103, align 8
  br label %sw.epilog.104

sw.epilog.104:                                    ; preds = %entry, %sw.epilog.87, %sw.epilog.50, %sw.epilog
  %77 = load i32, i32* %ret, align 4
  ret i32 %77
}

; Function Attrs: nounwind uwtable
define internal void @nsis_shutdown(%struct.nsis_st* %n) #0 {
entry:
  %n.addr = alloca %struct.nsis_st*, align 8
  store %struct.nsis_st* %n, %struct.nsis_st** %n.addr, align 8
  %0 = load %struct.nsis_st*, %struct.nsis_st** %n.addr, align 8
  %freecomp = getelementptr inbounds %struct.nsis_st, %struct.nsis_st* %0, i32 0, i32 14
  %1 = load i8, i8* %freecomp, align 1
  %tobool = icmp ne i8 %1, 0
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  br label %return

if.end:                                           ; preds = %entry
  %2 = load %struct.nsis_st*, %struct.nsis_st** %n.addr, align 8
  %comp = getelementptr inbounds %struct.nsis_st, %struct.nsis_st* %2, i32 0, i32 12
  %3 = load i8, i8* %comp, align 1
  %conv = zext i8 %3 to i32
  switch i32 %conv, label %sw.epilog [
    i32 1, label %sw.bb
    i32 2, label %sw.bb.1
    i32 3, label %sw.bb.2
  ]

sw.bb:                                            ; preds = %if.end
  %4 = load %struct.nsis_st*, %struct.nsis_st** %n.addr, align 8
  %bz = getelementptr inbounds %struct.nsis_st, %struct.nsis_st* %4, i32 0, i32 8
  %call = call i32 @nsis_BZ2_bzDecompressEnd(%struct.nsis_bzstream* %bz)
  br label %sw.epilog

sw.bb.1:                                          ; preds = %if.end
  %5 = load %struct.nsis_st*, %struct.nsis_st** %n.addr, align 8
  %lz = getelementptr inbounds %struct.nsis_st, %struct.nsis_st* %5, i32 0, i32 9
  call void @lzmaShutdown(%struct.lzma_stream* %lz)
  br label %sw.bb.2

sw.bb.2:                                          ; preds = %if.end, %sw.bb.1
  br label %sw.epilog

sw.epilog:                                        ; preds = %if.end, %sw.bb.2, %sw.bb
  %6 = load %struct.nsis_st*, %struct.nsis_st** %n.addr, align 8
  %freecomp3 = getelementptr inbounds %struct.nsis_st, %struct.nsis_st* %6, i32 0, i32 14
  store i8 0, i8* %freecomp3, align 1
  br label %return

return:                                           ; preds = %sw.epilog, %if.then
  ret void
}

declare i32 @nsis_BZ2_bzDecompressInit(%struct.nsis_bzstream*, i32, i32) #1

declare void @lzmaInit(%struct.lzma_stream*) #1

declare i32 @nsis_BZ2_bzDecompress(%struct.nsis_bzstream*) #1

declare i32 @lzmaDecode(%struct.lzma_stream*) #1

declare i32 @nsis_inflate(%struct.nsis_z_stream_s*) #1

declare i32 @nsis_BZ2_bzDecompressEnd(%struct.nsis_bzstream*) #1

declare void @lzmaShutdown(%struct.lzma_stream*) #1

; Function Attrs: nounwind
declare i32 @fstat(i32, %struct.stat*) #3

; Function Attrs: nounwind uwtable
define internal zeroext i8 @nsis_detcomp(i8* %b) #0 {
entry:
  %retval = alloca i8, align 1
  %b.addr = alloca i8*, align 8
  store i8* %b, i8** %b.addr, align 8
  %0 = load i8*, i8** %b.addr, align 8
  %1 = load i8, i8* %0, align 1
  %conv = sext i8 %1 to i32
  %cmp = icmp eq i32 %conv, 49
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store i8 1, i8* %retval
  br label %return

if.end:                                           ; preds = %entry
  %2 = load i8*, i8** %b.addr, align 8
  %3 = bitcast i8* %2 to i32*
  %4 = load i32, i32* %3, align 4
  %and = and i32 %4, 2147483647
  %cmp2 = icmp eq i32 %and, 93
  br i1 %cmp2, label %if.then.4, label %if.end.5

if.then.4:                                        ; preds = %if.end
  store i8 2, i8* %retval
  br label %return

if.end.5:                                         ; preds = %if.end
  store i8 3, i8* %retval
  br label %return

return:                                           ; preds = %if.end.5, %if.then.4, %if.then
  %5 = load i8, i8* %retval
  ret i8 %5
}

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind }
attributes #3 = { nounwind "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.ident = !{!0}

!0 = !{!"clang version 3.7.0 (tags/RELEASE_370/final)"}
