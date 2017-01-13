; ModuleID = './MultiSource.Applications.ClamAV/22.libclamav_spin.bc'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cli_exe_section = type { i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.cli_ctx = type { i8**, i64*, %struct.cli_matcher*, %struct.cl_engine*, %struct.cl_limits*, i32, i32, i32, i32, %struct.cli_dconf* }
%struct.cli_matcher = type opaque
%struct.cl_engine = type { i32, i16, i32, i8**, i8**, i8*, i8*, i8*, i8*, i8*, i8*, i8* }
%struct.cl_limits = type { i32, i32, i32, i32, i16, i64 }
%struct.cli_dconf = type { i32, i32, i32, i32, i32, i32, i32 }

@.str = private unnamed_addr constant [11 x i8] c"in unspin\0A\00", align 1
@.str.1 = private unnamed_addr constant [34 x i8] c"spin: Not spinned or bad version\0A\00", align 1
@.str.2 = private unnamed_addr constant [29 x i8] c"spin: Key8 is %x, Len is %x\0A\00", align 1
@.str.3 = private unnamed_addr constant [43 x i8] c"spin: len or key out of bounds, giving up\0A\00", align 1
@.str.4 = private unnamed_addr constant [42 x i8] c"spin: prolly not spinned, expect failure\0A\00", align 1
@.str.5 = private unnamed_addr constant [42 x i8] c"spin: password protected, expect failure\0A\00", align 1
@.str.6 = private unnamed_addr constant [28 x i8] c"spin: Key is %x, Len is %x\0A\00", align 1
@.str.7 = private unnamed_addr constant [36 x i8] c"spin: crc out of bounds, giving up\0A\00", align 1
@.str.8 = private unnamed_addr constant [36 x i8] c"spin: key out of bounds, giving up\0A\00", align 1
@.str.9 = private unnamed_addr constant [37 x i8] c"spin: Key32 is %x - XORbitmap is %x\0A\00", align 1
@.str.10 = private unnamed_addr constant [30 x i8] c"spin: Decrypting sects (xor)\0A\00", align 1
@.str.11 = private unnamed_addr constant [38 x i8] c"spin: sect %d out of file, giving up\0A\00", align 1
@.str.12 = private unnamed_addr constant [12 x i8] c"spin: done\0A\00", align 1
@.str.13 = private unnamed_addr constant [23 x i8] c"spin: POLY1 len is %x\0A\00", align 1
@.str.14 = private unnamed_addr constant [27 x i8] c"spin: poly1 out of bounds\0A\00", align 1
@.str.15 = private unnamed_addr constant [25 x i8] c"spin: cannot exec poly1\0A\00", align 1
@.str.16 = private unnamed_addr constant [50 x i8] c"spin: POLYbitmap is %x - decrypting sects (poly)\0A\00", align 1
@.str.17 = private unnamed_addr constant [37 x i8] c"spin: poly1 emucode is out of file?\0A\00", align 1
@.str.18 = private unnamed_addr constant [27 x i8] c"spin: cannot exec section\0A\00", align 1
@.str.19 = private unnamed_addr constant [32 x i8] c"spin: Compression bitmap is %x\0A\00", align 1
@.str.20 = private unnamed_addr constant [42 x i8] c"spin: section %d size exceeded (%u, %lu)\0A\00", align 1
@.str.21 = private unnamed_addr constant [25 x i8] c"spin: malloc(%d) failed\0A\00", align 1
@.str.22 = private unnamed_addr constant [41 x i8] c"spin: Growing sect%d: was %x will be %x\0A\00", align 1
@.str.23 = private unnamed_addr constant [22 x i8] c"spin: Unpack failure\0A\00", align 1
@.str.24 = private unnamed_addr constant [26 x i8] c"spin: Not growing sect%d\0A\00", align 1
@.str.25 = private unnamed_addr constant [30 x i8] c"spin: decompression complete\0A\00", align 1
@.str.26 = private unnamed_addr constant [112 x i8] c"spin: Resources (sect%d) appear to be compressed\0A\09uncompressed offset %x, len %x\0A\09compressed offset %x, len %x\0A\00", align 1
@.str.27 = private unnamed_addr constant [51 x i8] c"spin: Failed to grow resources, continuing anyway\0A\00", align 1
@.str.28 = private unnamed_addr constant [23 x i8] c"spin: Resources grown\0A\00", align 1
@.str.29 = private unnamed_addr constant [16 x i8] c"spin: No res?!\0A\00", align 1
@.str.30 = private unnamed_addr constant [34 x i8] c"spin: Cannot write unpacked file\0A\00", align 1
@.str.31 = private unnamed_addr constant [25 x i8] c"spin: free bitmap is %x\0A\00", align 1
@.str.32 = private unnamed_addr constant [23 x i8] c"spin: bogus opcode %x\0A\00", align 1
@.str.33 = private unnamed_addr constant [19 x i8] c"spin: bad emucode\0A\00", align 1

; Function Attrs: nounwind uwtable
define i32 @unspin(i8* %src, i32 %ssize, %struct.cli_exe_section* %sections, i32 %sectcnt, i32 %nep, i32 %desc, %struct.cli_ctx* %ctx) #0 {
entry:
  %retval = alloca i32, align 4
  %src.addr = alloca i8*, align 8
  %ssize.addr = alloca i32, align 4
  %sections.addr = alloca %struct.cli_exe_section*, align 8
  %sectcnt.addr = alloca i32, align 4
  %nep.addr = alloca i32, align 4
  %desc.addr = alloca i32, align 4
  %ctx.addr = alloca %struct.cli_ctx*, align 8
  %curr = alloca i8*, align 8
  %emu = alloca i8*, align 8
  %ep = alloca i8*, align 8
  %spinned = alloca i8*, align 8
  %sects = alloca i8**, align 8
  %blobsz = alloca i32, align 4
  %j = alloca i32, align 4
  %key32 = alloca i32, align 4
  %bitmap = alloca i32, align 4
  %bitman = alloca i32, align 4
  %len = alloca i32, align 4
  %key8 = alloca i8, align 1
  %size = alloca i32, align 4
  %ptr = alloca i8*, align 8
  %keydup = alloca i32, align 4
  %xcfailure = alloca i32, align 4
  %notthesamelen = alloca i32, align 4
  %xcfailure390 = alloca i32, align 4
  %thissize = alloca i32, align 4
  %t = alloca i32, align 4
  %rebhlp = alloca %struct.cli_exe_section*, align 8
  %to = alloca i8*, align 8
  %retval667 = alloca i32, align 4
  store i8* %src, i8** %src.addr, align 8
  store i32 %ssize, i32* %ssize.addr, align 4
  store %struct.cli_exe_section* %sections, %struct.cli_exe_section** %sections.addr, align 8
  store i32 %sectcnt, i32* %sectcnt.addr, align 4
  store i32 %nep, i32* %nep.addr, align 4
  store i32 %desc, i32* %desc.addr, align 4
  store %struct.cli_ctx* %ctx, %struct.cli_ctx** %ctx.addr, align 8
  store i32 0, i32* %blobsz, align 4
  call void (i8*, ...) @cli_dbgmsg(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str, i32 0, i32 0))
  %0 = load i32, i32* %sectcnt.addr, align 4
  %idxprom = sext i32 %0 to i64
  %1 = load %struct.cli_exe_section*, %struct.cli_exe_section** %sections.addr, align 8
  %arrayidx = getelementptr inbounds %struct.cli_exe_section, %struct.cli_exe_section* %1, i64 %idxprom
  %rsz = getelementptr inbounds %struct.cli_exe_section, %struct.cli_exe_section* %arrayidx, i32 0, i32 3
  %2 = load i32, i32* %rsz, align 4
  %conv = zext i32 %2 to i64
  %call = call i8* @cli_malloc(i64 %conv)
  store i8* %call, i8** %spinned, align 8
  %cmp = icmp eq i8* %call, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store i32 1, i32* %retval
  br label %return

if.end:                                           ; preds = %entry
  %3 = load i8*, i8** %spinned, align 8
  %4 = load i8*, i8** %src.addr, align 8
  %5 = load i32, i32* %sectcnt.addr, align 4
  %idxprom2 = sext i32 %5 to i64
  %6 = load %struct.cli_exe_section*, %struct.cli_exe_section** %sections.addr, align 8
  %arrayidx3 = getelementptr inbounds %struct.cli_exe_section, %struct.cli_exe_section* %6, i64 %idxprom2
  %raw = getelementptr inbounds %struct.cli_exe_section, %struct.cli_exe_section* %arrayidx3, i32 0, i32 2
  %7 = load i32, i32* %raw, align 4
  %idx.ext = zext i32 %7 to i64
  %add.ptr = getelementptr inbounds i8, i8* %4, i64 %idx.ext
  %8 = load i32, i32* %sectcnt.addr, align 4
  %idxprom4 = sext i32 %8 to i64
  %9 = load %struct.cli_exe_section*, %struct.cli_exe_section** %sections.addr, align 8
  %arrayidx5 = getelementptr inbounds %struct.cli_exe_section, %struct.cli_exe_section* %9, i64 %idxprom4
  %rsz6 = getelementptr inbounds %struct.cli_exe_section, %struct.cli_exe_section* %arrayidx5, i32 0, i32 3
  %10 = load i32, i32* %rsz6, align 4
  %conv7 = zext i32 %10 to i64
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %3, i8* %add.ptr, i64 %conv7, i32 1, i1 false)
  %11 = load i8*, i8** %spinned, align 8
  %12 = load i32, i32* %nep.addr, align 4
  %idx.ext8 = zext i32 %12 to i64
  %add.ptr9 = getelementptr inbounds i8, i8* %11, i64 %idx.ext8
  %13 = load i32, i32* %sectcnt.addr, align 4
  %idxprom10 = sext i32 %13 to i64
  %14 = load %struct.cli_exe_section*, %struct.cli_exe_section** %sections.addr, align 8
  %arrayidx11 = getelementptr inbounds %struct.cli_exe_section, %struct.cli_exe_section* %14, i64 %idxprom10
  %rva = getelementptr inbounds %struct.cli_exe_section, %struct.cli_exe_section* %arrayidx11, i32 0, i32 0
  %15 = load i32, i32* %rva, align 4
  %idx.ext12 = zext i32 %15 to i64
  %idx.neg = sub i64 0, %idx.ext12
  %add.ptr13 = getelementptr inbounds i8, i8* %add.ptr9, i64 %idx.neg
  store i8* %add.ptr13, i8** %ep, align 8
  %16 = load i8*, i8** %ep, align 8
  %add.ptr14 = getelementptr inbounds i8, i8* %16, i64 219
  store i8* %add.ptr14, i8** %curr, align 8
  %17 = load i8*, i8** %curr, align 8
  %18 = load i8, i8* %17, align 1
  %conv15 = sext i8 %18 to i32
  %cmp16 = icmp ne i32 %conv15, -69
  br i1 %cmp16, label %if.then.18, label %if.end.19

if.then.18:                                       ; preds = %if.end
  %19 = load i8*, i8** %spinned, align 8
  call void @free(i8* %19) #2
  call void (i8*, ...) @cli_dbgmsg(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.1, i32 0, i32 0))
  store i32 1, i32* %retval
  br label %return

if.end.19:                                        ; preds = %if.end
  %20 = load i8*, i8** %curr, align 8
  %incdec.ptr = getelementptr inbounds i8, i8* %20, i32 1
  store i8* %incdec.ptr, i8** %curr, align 8
  %21 = load i8, i8* %incdec.ptr, align 1
  store i8 %21, i8* %key8, align 1
  %22 = load i8*, i8** %curr, align 8
  %add.ptr20 = getelementptr inbounds i8, i8* %22, i64 4
  store i8* %add.ptr20, i8** %curr, align 8
  %23 = load i8*, i8** %curr, align 8
  %24 = load i8, i8* %23, align 1
  %conv21 = sext i8 %24 to i32
  %cmp22 = icmp ne i32 %conv21, -71
  br i1 %cmp22, label %if.then.24, label %if.end.25

if.then.24:                                       ; preds = %if.end.19
  %25 = load i8*, i8** %spinned, align 8
  call void @free(i8* %25) #2
  call void (i8*, ...) @cli_dbgmsg(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.1, i32 0, i32 0))
  store i32 1, i32* %retval
  br label %return

if.end.25:                                        ; preds = %if.end.19
  %26 = load i8*, i8** %curr, align 8
  %add.ptr26 = getelementptr inbounds i8, i8* %26, i64 1
  %27 = bitcast i8* %add.ptr26 to i32*
  %28 = load i32, i32* %27, align 4
  store i32 %28, i32* %len, align 4
  %cmp27 = icmp ne i32 %28, 4606
  br i1 %cmp27, label %if.then.29, label %if.end.30

if.then.29:                                       ; preds = %if.end.25
  %29 = load i8*, i8** %spinned, align 8
  call void @free(i8* %29) #2
  call void (i8*, ...) @cli_dbgmsg(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.1, i32 0, i32 0))
  store i32 1, i32* %retval
  br label %return

if.end.30:                                        ; preds = %if.end.25
  %30 = load i8, i8* %key8, align 1
  %conv31 = zext i8 %30 to i32
  %31 = load i32, i32* %len, align 4
  call void (i8*, ...) @cli_dbgmsg(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.2, i32 0, i32 0), i32 %conv31, i32 %31)
  %32 = load i32, i32* %sectcnt.addr, align 4
  %idxprom32 = sext i32 %32 to i64
  %33 = load %struct.cli_exe_section*, %struct.cli_exe_section** %sections.addr, align 8
  %arrayidx33 = getelementptr inbounds %struct.cli_exe_section, %struct.cli_exe_section* %33, i64 %idxprom32
  %rsz34 = getelementptr inbounds %struct.cli_exe_section, %struct.cli_exe_section* %arrayidx33, i32 0, i32 3
  %34 = load i32, i32* %rsz34, align 4
  %cmp35 = icmp ugt i32 %34, 0
  br i1 %cmp35, label %land.lhs.true, label %if.then.99

land.lhs.true:                                    ; preds = %if.end.30
  %35 = load i32, i32* %len, align 4
  %add = add i32 %35, 8165
  %sub = sub i32 %add, 1
  %cmp37 = icmp ugt i32 %sub, 0
  br i1 %cmp37, label %land.lhs.true.39, label %if.then.99

land.lhs.true.39:                                 ; preds = %land.lhs.true
  %36 = load i32, i32* %len, align 4
  %add40 = add i32 %36, 8165
  %sub41 = sub i32 %add40, 1
  %37 = load i32, i32* %sectcnt.addr, align 4
  %idxprom42 = sext i32 %37 to i64
  %38 = load %struct.cli_exe_section*, %struct.cli_exe_section** %sections.addr, align 8
  %arrayidx43 = getelementptr inbounds %struct.cli_exe_section, %struct.cli_exe_section* %38, i64 %idxprom42
  %rsz44 = getelementptr inbounds %struct.cli_exe_section, %struct.cli_exe_section* %arrayidx43, i32 0, i32 3
  %39 = load i32, i32* %rsz44, align 4
  %cmp45 = icmp ule i32 %sub41, %39
  br i1 %cmp45, label %land.lhs.true.47, label %if.then.99

land.lhs.true.47:                                 ; preds = %land.lhs.true.39
  %40 = load i8*, i8** %ep, align 8
  %41 = load i8*, i8** %spinned, align 8
  %cmp48 = icmp uge i8* %40, %41
  br i1 %cmp48, label %land.lhs.true.50, label %if.then.99

land.lhs.true.50:                                 ; preds = %land.lhs.true.47
  %42 = load i8*, i8** %ep, align 8
  %43 = load i32, i32* %len, align 4
  %idx.ext51 = zext i32 %43 to i64
  %add.ptr52 = getelementptr inbounds i8, i8* %42, i64 %idx.ext51
  %add.ptr53 = getelementptr inbounds i8, i8* %add.ptr52, i64 8165
  %add.ptr54 = getelementptr inbounds i8, i8* %add.ptr53, i64 -1
  %44 = load i8*, i8** %spinned, align 8
  %45 = load i32, i32* %sectcnt.addr, align 4
  %idxprom55 = sext i32 %45 to i64
  %46 = load %struct.cli_exe_section*, %struct.cli_exe_section** %sections.addr, align 8
  %arrayidx56 = getelementptr inbounds %struct.cli_exe_section, %struct.cli_exe_section* %46, i64 %idxprom55
  %rsz57 = getelementptr inbounds %struct.cli_exe_section, %struct.cli_exe_section* %arrayidx56, i32 0, i32 3
  %47 = load i32, i32* %rsz57, align 4
  %idx.ext58 = zext i32 %47 to i64
  %add.ptr59 = getelementptr inbounds i8, i8* %44, i64 %idx.ext58
  %cmp60 = icmp ule i8* %add.ptr54, %add.ptr59
  br i1 %cmp60, label %land.lhs.true.62, label %if.then.99

land.lhs.true.62:                                 ; preds = %land.lhs.true.50
  %48 = load i8*, i8** %ep, align 8
  %49 = load i32, i32* %len, align 4
  %idx.ext63 = zext i32 %49 to i64
  %add.ptr64 = getelementptr inbounds i8, i8* %48, i64 %idx.ext63
  %add.ptr65 = getelementptr inbounds i8, i8* %add.ptr64, i64 8165
  %add.ptr66 = getelementptr inbounds i8, i8* %add.ptr65, i64 -1
  %50 = load i8*, i8** %spinned, align 8
  %cmp67 = icmp ugt i8* %add.ptr66, %50
  br i1 %cmp67, label %lor.lhs.false, label %if.then.99

lor.lhs.false:                                    ; preds = %land.lhs.true.62
  %51 = load i32, i32* %sectcnt.addr, align 4
  %idxprom69 = sext i32 %51 to i64
  %52 = load %struct.cli_exe_section*, %struct.cli_exe_section** %sections.addr, align 8
  %arrayidx70 = getelementptr inbounds %struct.cli_exe_section, %struct.cli_exe_section* %52, i64 %idxprom69
  %rsz71 = getelementptr inbounds %struct.cli_exe_section, %struct.cli_exe_section* %arrayidx70, i32 0, i32 3
  %53 = load i32, i32* %rsz71, align 4
  %cmp72 = icmp ugt i32 %53, 0
  br i1 %cmp72, label %land.lhs.true.74, label %if.then.99

land.lhs.true.74:                                 ; preds = %lor.lhs.false
  %54 = load i32, i32* %sectcnt.addr, align 4
  %idxprom75 = sext i32 %54 to i64
  %55 = load %struct.cli_exe_section*, %struct.cli_exe_section** %sections.addr, align 8
  %arrayidx76 = getelementptr inbounds %struct.cli_exe_section, %struct.cli_exe_section* %55, i64 %idxprom75
  %rsz77 = getelementptr inbounds %struct.cli_exe_section, %struct.cli_exe_section* %arrayidx76, i32 0, i32 3
  %56 = load i32, i32* %rsz77, align 4
  %cmp78 = icmp ule i32 4, %56
  br i1 %cmp78, label %land.lhs.true.80, label %if.then.99

land.lhs.true.80:                                 ; preds = %land.lhs.true.74
  %57 = load i8*, i8** %ep, align 8
  %add.ptr81 = getelementptr inbounds i8, i8* %57, i64 12823
  %58 = load i8*, i8** %spinned, align 8
  %cmp82 = icmp uge i8* %add.ptr81, %58
  br i1 %cmp82, label %land.lhs.true.84, label %if.then.99

land.lhs.true.84:                                 ; preds = %land.lhs.true.80
  %59 = load i8*, i8** %ep, align 8
  %add.ptr85 = getelementptr inbounds i8, i8* %59, i64 12823
  %add.ptr86 = getelementptr inbounds i8, i8* %add.ptr85, i64 4
  %60 = load i8*, i8** %spinned, align 8
  %61 = load i32, i32* %sectcnt.addr, align 4
  %idxprom87 = sext i32 %61 to i64
  %62 = load %struct.cli_exe_section*, %struct.cli_exe_section** %sections.addr, align 8
  %arrayidx88 = getelementptr inbounds %struct.cli_exe_section, %struct.cli_exe_section* %62, i64 %idxprom87
  %rsz89 = getelementptr inbounds %struct.cli_exe_section, %struct.cli_exe_section* %arrayidx88, i32 0, i32 3
  %63 = load i32, i32* %rsz89, align 4
  %idx.ext90 = zext i32 %63 to i64
  %add.ptr91 = getelementptr inbounds i8, i8* %60, i64 %idx.ext90
  %cmp92 = icmp ule i8* %add.ptr86, %add.ptr91
  br i1 %cmp92, label %land.lhs.true.94, label %if.then.99

land.lhs.true.94:                                 ; preds = %land.lhs.true.84
  %64 = load i8*, i8** %ep, align 8
  %add.ptr95 = getelementptr inbounds i8, i8* %64, i64 12823
  %add.ptr96 = getelementptr inbounds i8, i8* %add.ptr95, i64 4
  %65 = load i8*, i8** %spinned, align 8
  %cmp97 = icmp ugt i8* %add.ptr96, %65
  br i1 %cmp97, label %if.end.100, label %if.then.99

if.then.99:                                       ; preds = %land.lhs.true.94, %land.lhs.true.84, %land.lhs.true.80, %land.lhs.true.74, %lor.lhs.false, %land.lhs.true.62, %land.lhs.true.50, %land.lhs.true.47, %land.lhs.true.39, %land.lhs.true, %if.end.30
  %66 = load i8*, i8** %spinned, align 8
  call void @free(i8* %66) #2
  call void (i8*, ...) @cli_dbgmsg(i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.3, i32 0, i32 0))
  store i32 1, i32* %retval
  br label %return

if.end.100:                                       ; preds = %land.lhs.true.94
  %67 = load i8*, i8** %ep, align 8
  %arrayidx101 = getelementptr inbounds i8, i8* %67, i64 480
  %68 = load i8, i8* %arrayidx101, align 1
  %conv102 = sext i8 %68 to i32
  %cmp103 = icmp ne i32 %conv102, -72
  br i1 %cmp103, label %if.then.105, label %if.end.106

if.then.105:                                      ; preds = %if.end.100
  call void (i8*, ...) @cli_dbgmsg(i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.4, i32 0, i32 0))
  br label %if.end.106

if.end.106:                                       ; preds = %if.then.105, %if.end.100
  %69 = load i8*, i8** %ep, align 8
  %add.ptr107 = getelementptr inbounds i8, i8* %69, i64 481
  %70 = bitcast i8* %add.ptr107 to i32*
  %71 = load i32, i32* %70, align 4
  %and = and i32 %71, 2097152
  %tobool = icmp ne i32 %and, 0
  br i1 %tobool, label %if.then.108, label %if.end.109

if.then.108:                                      ; preds = %if.end.106
  call void (i8*, ...) @cli_dbgmsg(i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.5, i32 0, i32 0))
  br label %if.end.109

if.end.109:                                       ; preds = %if.then.108, %if.end.106
  %72 = load i8*, i8** %ep, align 8
  %add.ptr110 = getelementptr inbounds i8, i8* %72, i64 8165
  %73 = load i32, i32* %len, align 4
  %idx.ext111 = zext i32 %73 to i64
  %add.ptr112 = getelementptr inbounds i8, i8* %add.ptr110, i64 %idx.ext111
  %add.ptr113 = getelementptr inbounds i8, i8* %add.ptr112, i64 -1
  store i8* %add.ptr113, i8** %curr, align 8
  br label %while.cond

while.cond:                                       ; preds = %while.body, %if.end.109
  %74 = load i32, i32* %len, align 4
  %dec = add i32 %74, -1
  store i32 %dec, i32* %len, align 4
  %tobool114 = icmp ne i32 %74, 0
  br i1 %tobool114, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %75 = load i8*, i8** %curr, align 8
  %76 = load i8, i8* %75, align 1
  %conv115 = sext i8 %76 to i32
  %77 = load i8, i8* %key8, align 1
  %dec116 = add i8 %77, -1
  store i8 %dec116, i8* %key8, align 1
  %conv117 = zext i8 %77 to i32
  %xor = xor i32 %conv115, %conv117
  %conv118 = trunc i32 %xor to i8
  %78 = load i8*, i8** %curr, align 8
  store i8 %conv118, i8* %78, align 1
  %79 = load i8*, i8** %curr, align 8
  %incdec.ptr119 = getelementptr inbounds i8, i8* %79, i32 -1
  store i8* %incdec.ptr119, i8** %curr, align 8
  br label %while.cond

while.end:                                        ; preds = %while.cond
  %80 = load i8*, i8** %ep, align 8
  %add.ptr120 = getelementptr inbounds i8, i8* %80, i64 9963
  store i8* %add.ptr120, i8** %curr, align 8
  %81 = load i8*, i8** %curr, align 8
  %82 = bitcast i8* %81 to i32*
  %83 = load i32, i32* %82, align 4
  store i32 %83, i32* %key32, align 4
  %84 = load i8*, i8** %curr, align 8
  %add.ptr121 = getelementptr inbounds i8, i8* %84, i64 5
  %85 = bitcast i8* %add.ptr121 to i32*
  %86 = load i32, i32* %85, align 4
  store i32 %86, i32* %len, align 4
  %cmp122 = icmp ne i32 %86, 1440
  br i1 %cmp122, label %if.then.124, label %if.end.125

if.then.124:                                      ; preds = %while.end
  %87 = load i8*, i8** %spinned, align 8
  call void @free(i8* %87) #2
  call void (i8*, ...) @cli_dbgmsg(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.1, i32 0, i32 0))
  store i32 1, i32* %retval
  br label %return

if.end.125:                                       ; preds = %while.end
  %88 = load i8*, i8** %ep, align 8
  %add.ptr126 = getelementptr inbounds i8, i8* %88, i64 725
  store i8* %add.ptr126, i8** %curr, align 8
  %89 = load i32, i32* %key32, align 4
  %90 = load i32, i32* %len, align 4
  call void (i8*, ...) @cli_dbgmsg(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.6, i32 0, i32 0), i32 %89, i32 %90)
  br label %while.cond.127

while.cond.127:                                   ; preds = %if.end.136, %if.end.125
  %91 = load i32, i32* %len, align 4
  %dec128 = add i32 %91, -1
  store i32 %dec128, i32* %len, align 4
  %tobool129 = icmp ne i32 %91, 0
  br i1 %tobool129, label %while.body.130, label %while.end.142

while.body.130:                                   ; preds = %while.cond.127
  %92 = load i32, i32* %key32, align 4
  %and131 = and i32 %92, 1
  %tobool132 = icmp ne i32 %and131, 0
  br i1 %tobool132, label %if.then.133, label %if.else

if.then.133:                                      ; preds = %while.body.130
  %93 = load i32, i32* %key32, align 4
  %shr = lshr i32 %93, 1
  store i32 %shr, i32* %key32, align 4
  %94 = load i32, i32* %key32, align 4
  %xor134 = xor i32 %94, -1942845388
  store i32 %xor134, i32* %key32, align 4
  br label %if.end.136

if.else:                                          ; preds = %while.body.130
  %95 = load i32, i32* %key32, align 4
  %shr135 = lshr i32 %95, 1
  store i32 %shr135, i32* %key32, align 4
  br label %if.end.136

if.end.136:                                       ; preds = %if.else, %if.then.133
  %96 = load i8*, i8** %curr, align 8
  %97 = load i8, i8* %96, align 1
  %conv137 = sext i8 %97 to i32
  %98 = load i32, i32* %key32, align 4
  %and138 = and i32 %98, 255
  %xor139 = xor i32 %conv137, %and138
  %conv140 = trunc i32 %xor139 to i8
  %99 = load i8*, i8** %curr, align 8
  store i8 %conv140, i8* %99, align 1
  %100 = load i8*, i8** %curr, align 8
  %incdec.ptr141 = getelementptr inbounds i8, i8* %100, i32 1
  store i8* %incdec.ptr141, i8** %curr, align 8
  br label %while.cond.127

while.end.142:                                    ; preds = %while.cond.127
  %101 = load i32, i32* %ssize.addr, align 4
  %102 = load i8*, i8** %ep, align 8
  %add.ptr143 = getelementptr inbounds i8, i8* %102, i64 1065
  %103 = bitcast i8* %add.ptr143 to i32*
  %104 = load i32, i32* %103, align 4
  %sub144 = sub nsw i32 %101, %104
  store i32 %sub144, i32* %len, align 4
  %105 = load i32, i32* %len, align 4
  %106 = load i32, i32* %ssize.addr, align 4
  %cmp145 = icmp uge i32 %105, %106
  br i1 %cmp145, label %if.then.147, label %if.end.148

if.then.147:                                      ; preds = %while.end.142
  %107 = load i8*, i8** %spinned, align 8
  call void @free(i8* %107) #2
  call void (i8*, ...) @cli_dbgmsg(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.7, i32 0, i32 0))
  store i32 1, i32* %retval
  br label %return

if.end.148:                                       ; preds = %while.end.142
  %108 = load i8*, i8** %ep, align 8
  %add.ptr149 = getelementptr inbounds i8, i8* %108, i64 12823
  %109 = bitcast i8* %add.ptr149 to i32*
  %110 = load i32, i32* %109, align 4
  %111 = load i8*, i8** %src.addr, align 8
  %112 = load i32, i32* %len, align 4
  %call150 = call i32 @summit(i8* %111, i32 %112)
  %sub151 = sub i32 %110, %call150
  store i32 %sub151, i32* %key32, align 4
  %113 = load i8*, i8** %src.addr, align 8
  %114 = load i32, i32* %sectcnt.addr, align 4
  %idxprom152 = sext i32 %114 to i64
  %115 = load %struct.cli_exe_section*, %struct.cli_exe_section** %sections.addr, align 8
  %arrayidx153 = getelementptr inbounds %struct.cli_exe_section, %struct.cli_exe_section* %115, i64 %idxprom152
  %raw154 = getelementptr inbounds %struct.cli_exe_section, %struct.cli_exe_section* %arrayidx153, i32 0, i32 2
  %116 = load i32, i32* %raw154, align 4
  %idx.ext155 = zext i32 %116 to i64
  %add.ptr156 = getelementptr inbounds i8, i8* %113, i64 %idx.ext155
  %117 = load i8*, i8** %spinned, align 8
  %118 = load i32, i32* %sectcnt.addr, align 4
  %idxprom157 = sext i32 %118 to i64
  %119 = load %struct.cli_exe_section*, %struct.cli_exe_section** %sections.addr, align 8
  %arrayidx158 = getelementptr inbounds %struct.cli_exe_section, %struct.cli_exe_section* %119, i64 %idxprom157
  %rsz159 = getelementptr inbounds %struct.cli_exe_section, %struct.cli_exe_section* %arrayidx158, i32 0, i32 3
  %120 = load i32, i32* %rsz159, align 4
  %conv160 = zext i32 %120 to i64
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %add.ptr156, i8* %117, i64 %conv160, i32 1, i1 false)
  %121 = load i8*, i8** %spinned, align 8
  call void @free(i8* %121) #2
  %122 = load i8*, i8** %src.addr, align 8
  %123 = load i32, i32* %nep.addr, align 4
  %idx.ext161 = zext i32 %123 to i64
  %add.ptr162 = getelementptr inbounds i8, i8* %122, i64 %idx.ext161
  %124 = load i32, i32* %sectcnt.addr, align 4
  %idxprom163 = sext i32 %124 to i64
  %125 = load %struct.cli_exe_section*, %struct.cli_exe_section** %sections.addr, align 8
  %arrayidx164 = getelementptr inbounds %struct.cli_exe_section, %struct.cli_exe_section* %125, i64 %idxprom163
  %raw165 = getelementptr inbounds %struct.cli_exe_section, %struct.cli_exe_section* %arrayidx164, i32 0, i32 2
  %126 = load i32, i32* %raw165, align 4
  %idx.ext166 = zext i32 %126 to i64
  %add.ptr167 = getelementptr inbounds i8, i8* %add.ptr162, i64 %idx.ext166
  %127 = load i32, i32* %sectcnt.addr, align 4
  %idxprom168 = sext i32 %127 to i64
  %128 = load %struct.cli_exe_section*, %struct.cli_exe_section** %sections.addr, align 8
  %arrayidx169 = getelementptr inbounds %struct.cli_exe_section, %struct.cli_exe_section* %128, i64 %idxprom168
  %rva170 = getelementptr inbounds %struct.cli_exe_section, %struct.cli_exe_section* %arrayidx169, i32 0, i32 0
  %129 = load i32, i32* %rva170, align 4
  %idx.ext171 = zext i32 %129 to i64
  %idx.neg172 = sub i64 0, %idx.ext171
  %add.ptr173 = getelementptr inbounds i8, i8* %add.ptr167, i64 %idx.neg172
  store i8* %add.ptr173, i8** %ep, align 8
  %130 = load i32, i32* %ssize.addr, align 4
  %cmp174 = icmp sgt i32 %130, 0
  br i1 %cmp174, label %land.lhs.true.176, label %if.then.195

land.lhs.true.176:                                ; preds = %if.end.148
  %131 = load i32, i32* %ssize.addr, align 4
  %cmp177 = icmp sle i32 4, %131
  br i1 %cmp177, label %land.lhs.true.179, label %if.then.195

land.lhs.true.179:                                ; preds = %land.lhs.true.176
  %132 = load i8*, i8** %ep, align 8
  %add.ptr180 = getelementptr inbounds i8, i8* %132, i64 12807
  %133 = load i8*, i8** %src.addr, align 8
  %cmp181 = icmp uge i8* %add.ptr180, %133
  br i1 %cmp181, label %land.lhs.true.183, label %if.then.195

land.lhs.true.183:                                ; preds = %land.lhs.true.179
  %134 = load i8*, i8** %ep, align 8
  %add.ptr184 = getelementptr inbounds i8, i8* %134, i64 12807
  %add.ptr185 = getelementptr inbounds i8, i8* %add.ptr184, i64 4
  %135 = load i8*, i8** %src.addr, align 8
  %136 = load i32, i32* %ssize.addr, align 4
  %idx.ext186 = sext i32 %136 to i64
  %add.ptr187 = getelementptr inbounds i8, i8* %135, i64 %idx.ext186
  %cmp188 = icmp ule i8* %add.ptr185, %add.ptr187
  br i1 %cmp188, label %land.lhs.true.190, label %if.then.195

land.lhs.true.190:                                ; preds = %land.lhs.true.183
  %137 = load i8*, i8** %ep, align 8
  %add.ptr191 = getelementptr inbounds i8, i8* %137, i64 12807
  %add.ptr192 = getelementptr inbounds i8, i8* %add.ptr191, i64 4
  %138 = load i8*, i8** %src.addr, align 8
  %cmp193 = icmp ugt i8* %add.ptr192, %138
  br i1 %cmp193, label %if.end.196, label %if.then.195

if.then.195:                                      ; preds = %land.lhs.true.190, %land.lhs.true.183, %land.lhs.true.179, %land.lhs.true.176, %if.end.148
  call void (i8*, ...) @cli_dbgmsg(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.8, i32 0, i32 0))
  store i32 1, i32* %retval
  br label %return

if.end.196:                                       ; preds = %land.lhs.true.190
  %139 = load i8*, i8** %ep, align 8
  %add.ptr197 = getelementptr inbounds i8, i8* %139, i64 12807
  %140 = bitcast i8* %add.ptr197 to i32*
  %141 = load i32, i32* %140, align 4
  store i32 %141, i32* %bitmap, align 4
  %142 = load i32, i32* %key32, align 4
  %143 = load i32, i32* %bitmap, align 4
  call void (i8*, ...) @cli_dbgmsg(i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.9, i32 0, i32 0), i32 %142, i32 %143)
  call void (i8*, ...) @cli_dbgmsg(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.10, i32 0, i32 0))
  store i32 0, i32* %j, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end.196
  %144 = load i32, i32* %j, align 4
  %145 = load i32, i32* %sectcnt.addr, align 4
  %cmp198 = icmp slt i32 %144, %145
  br i1 %cmp198, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %146 = load i32, i32* %bitmap, align 4
  %and200 = and i32 %146, 1
  %tobool201 = icmp ne i32 %and200, 0
  br i1 %tobool201, label %if.then.202, label %if.end.254

if.then.202:                                      ; preds = %for.body
  %147 = load i32, i32* %j, align 4
  %idxprom203 = sext i32 %147 to i64
  %148 = load %struct.cli_exe_section*, %struct.cli_exe_section** %sections.addr, align 8
  %arrayidx204 = getelementptr inbounds %struct.cli_exe_section, %struct.cli_exe_section* %148, i64 %idxprom203
  %rsz205 = getelementptr inbounds %struct.cli_exe_section, %struct.cli_exe_section* %arrayidx204, i32 0, i32 3
  %149 = load i32, i32* %rsz205, align 4
  store i32 %149, i32* %size, align 4
  %150 = load i8*, i8** %src.addr, align 8
  %151 = load i32, i32* %j, align 4
  %idxprom206 = sext i32 %151 to i64
  %152 = load %struct.cli_exe_section*, %struct.cli_exe_section** %sections.addr, align 8
  %arrayidx207 = getelementptr inbounds %struct.cli_exe_section, %struct.cli_exe_section* %152, i64 %idxprom206
  %raw208 = getelementptr inbounds %struct.cli_exe_section, %struct.cli_exe_section* %arrayidx207, i32 0, i32 2
  %153 = load i32, i32* %raw208, align 4
  %idx.ext209 = zext i32 %153 to i64
  %add.ptr210 = getelementptr inbounds i8, i8* %150, i64 %idx.ext209
  store i8* %add.ptr210, i8** %ptr, align 8
  %154 = load i32, i32* %key32, align 4
  store i32 %154, i32* %keydup, align 4
  %155 = load i32, i32* %ssize.addr, align 4
  %cmp211 = icmp ugt i32 %155, 0
  br i1 %cmp211, label %land.lhs.true.213, label %if.then.234

land.lhs.true.213:                                ; preds = %if.then.202
  %156 = load i32, i32* %size, align 4
  %cmp214 = icmp ugt i32 %156, 0
  br i1 %cmp214, label %land.lhs.true.216, label %if.then.234

land.lhs.true.216:                                ; preds = %land.lhs.true.213
  %157 = load i32, i32* %size, align 4
  %158 = load i32, i32* %ssize.addr, align 4
  %cmp217 = icmp ule i32 %157, %158
  br i1 %cmp217, label %land.lhs.true.219, label %if.then.234

land.lhs.true.219:                                ; preds = %land.lhs.true.216
  %159 = load i8*, i8** %ptr, align 8
  %160 = load i8*, i8** %src.addr, align 8
  %cmp220 = icmp uge i8* %159, %160
  br i1 %cmp220, label %land.lhs.true.222, label %if.then.234

land.lhs.true.222:                                ; preds = %land.lhs.true.219
  %161 = load i8*, i8** %ptr, align 8
  %162 = load i32, i32* %size, align 4
  %idx.ext223 = zext i32 %162 to i64
  %add.ptr224 = getelementptr inbounds i8, i8* %161, i64 %idx.ext223
  %163 = load i8*, i8** %src.addr, align 8
  %164 = load i32, i32* %ssize.addr, align 4
  %idx.ext225 = zext i32 %164 to i64
  %add.ptr226 = getelementptr inbounds i8, i8* %163, i64 %idx.ext225
  %cmp227 = icmp ule i8* %add.ptr224, %add.ptr226
  br i1 %cmp227, label %land.lhs.true.229, label %if.then.234

land.lhs.true.229:                                ; preds = %land.lhs.true.222
  %165 = load i8*, i8** %ptr, align 8
  %166 = load i32, i32* %size, align 4
  %idx.ext230 = zext i32 %166 to i64
  %add.ptr231 = getelementptr inbounds i8, i8* %165, i64 %idx.ext230
  %167 = load i8*, i8** %src.addr, align 8
  %cmp232 = icmp ugt i8* %add.ptr231, %167
  br i1 %cmp232, label %if.end.235, label %if.then.234

if.then.234:                                      ; preds = %land.lhs.true.229, %land.lhs.true.222, %land.lhs.true.219, %land.lhs.true.216, %land.lhs.true.213, %if.then.202
  %168 = load i32, i32* %j, align 4
  call void (i8*, ...) @cli_dbgmsg(i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.11, i32 0, i32 0), i32 %168)
  store i32 1, i32* %retval
  br label %return

if.end.235:                                       ; preds = %land.lhs.true.229
  br label %while.cond.236

while.cond.236:                                   ; preds = %if.end.247, %if.end.235
  %169 = load i32, i32* %size, align 4
  %dec237 = add i32 %169, -1
  store i32 %dec237, i32* %size, align 4
  %tobool238 = icmp ne i32 %169, 0
  br i1 %tobool238, label %while.body.239, label %while.end.253

while.body.239:                                   ; preds = %while.cond.236
  %170 = load i32, i32* %keydup, align 4
  %and240 = and i32 %170, 1
  %tobool241 = icmp ne i32 %and240, 0
  br i1 %tobool241, label %if.else.245, label %if.then.242

if.then.242:                                      ; preds = %while.body.239
  %171 = load i32, i32* %keydup, align 4
  %shr243 = lshr i32 %171, 1
  store i32 %shr243, i32* %keydup, align 4
  %172 = load i32, i32* %keydup, align 4
  %xor244 = xor i32 %172, -314331343
  store i32 %xor244, i32* %keydup, align 4
  br label %if.end.247

if.else.245:                                      ; preds = %while.body.239
  %173 = load i32, i32* %keydup, align 4
  %shr246 = lshr i32 %173, 1
  store i32 %shr246, i32* %keydup, align 4
  br label %if.end.247

if.end.247:                                       ; preds = %if.else.245, %if.then.242
  %174 = load i8*, i8** %ptr, align 8
  %175 = load i8, i8* %174, align 1
  %conv248 = sext i8 %175 to i32
  %176 = load i32, i32* %keydup, align 4
  %and249 = and i32 %176, 255
  %xor250 = xor i32 %conv248, %and249
  %conv251 = trunc i32 %xor250 to i8
  %177 = load i8*, i8** %ptr, align 8
  store i8 %conv251, i8* %177, align 1
  %178 = load i8*, i8** %ptr, align 8
  %incdec.ptr252 = getelementptr inbounds i8, i8* %178, i32 1
  store i8* %incdec.ptr252, i8** %ptr, align 8
  br label %while.cond.236

while.end.253:                                    ; preds = %while.cond.236
  br label %if.end.254

if.end.254:                                       ; preds = %while.end.253, %for.body
  %179 = load i32, i32* %bitmap, align 4
  %shr255 = lshr i32 %179, 1
  store i32 %shr255, i32* %bitmap, align 4
  br label %for.inc

for.inc:                                          ; preds = %if.end.254
  %180 = load i32, i32* %j, align 4
  %inc = add nsw i32 %180, 1
  store i32 %inc, i32* %j, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  call void (i8*, ...) @cli_dbgmsg(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.12, i32 0, i32 0))
  %181 = load i8*, i8** %ep, align 8
  %add.ptr256 = getelementptr inbounds i8, i8* %181, i64 1604
  store i8* %add.ptr256, i8** %curr, align 8
  %182 = load i8*, i8** %curr, align 8
  %183 = bitcast i8* %182 to i32*
  %184 = load i32, i32* %183, align 4
  store i32 %184, i32* %len, align 4
  %cmp257 = icmp ne i32 %184, 384
  br i1 %cmp257, label %if.then.259, label %if.end.260

if.then.259:                                      ; preds = %for.end
  call void (i8*, ...) @cli_dbgmsg(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.1, i32 0, i32 0))
  store i32 1, i32* %retval
  br label %return

if.end.260:                                       ; preds = %for.end
  %185 = load i8*, i8** %curr, align 8
  %add.ptr261 = getelementptr inbounds i8, i8* %185, i64 12
  %186 = bitcast i8* %add.ptr261 to i32*
  %187 = load i32, i32* %186, align 4
  store i32 %187, i32* %key32, align 4
  %188 = load i32, i32* %key32, align 4
  %189 = load i32, i32* %len, align 4
  call void (i8*, ...) @cli_dbgmsg(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.6, i32 0, i32 0), i32 %188, i32 %189)
  %190 = load i8*, i8** %ep, align 8
  %add.ptr262 = getelementptr inbounds i8, i8* %190, i64 10451
  store i8* %add.ptr262, i8** %curr, align 8
  %191 = load i32, i32* %ssize.addr, align 4
  %cmp263 = icmp ugt i32 %191, 0
  br i1 %cmp263, label %land.lhs.true.265, label %if.then.286

land.lhs.true.265:                                ; preds = %if.end.260
  %192 = load i32, i32* %len, align 4
  %cmp266 = icmp ugt i32 %192, 0
  br i1 %cmp266, label %land.lhs.true.268, label %if.then.286

land.lhs.true.268:                                ; preds = %land.lhs.true.265
  %193 = load i32, i32* %len, align 4
  %194 = load i32, i32* %ssize.addr, align 4
  %cmp269 = icmp ule i32 %193, %194
  br i1 %cmp269, label %land.lhs.true.271, label %if.then.286

land.lhs.true.271:                                ; preds = %land.lhs.true.268
  %195 = load i8*, i8** %curr, align 8
  %196 = load i8*, i8** %src.addr, align 8
  %cmp272 = icmp uge i8* %195, %196
  br i1 %cmp272, label %land.lhs.true.274, label %if.then.286

land.lhs.true.274:                                ; preds = %land.lhs.true.271
  %197 = load i8*, i8** %curr, align 8
  %198 = load i32, i32* %len, align 4
  %idx.ext275 = zext i32 %198 to i64
  %add.ptr276 = getelementptr inbounds i8, i8* %197, i64 %idx.ext275
  %199 = load i8*, i8** %src.addr, align 8
  %200 = load i32, i32* %ssize.addr, align 4
  %idx.ext277 = zext i32 %200 to i64
  %add.ptr278 = getelementptr inbounds i8, i8* %199, i64 %idx.ext277
  %cmp279 = icmp ule i8* %add.ptr276, %add.ptr278
  br i1 %cmp279, label %land.lhs.true.281, label %if.then.286

land.lhs.true.281:                                ; preds = %land.lhs.true.274
  %201 = load i8*, i8** %curr, align 8
  %202 = load i32, i32* %len, align 4
  %idx.ext282 = zext i32 %202 to i64
  %add.ptr283 = getelementptr inbounds i8, i8* %201, i64 %idx.ext282
  %203 = load i8*, i8** %src.addr, align 8
  %cmp284 = icmp ugt i8* %add.ptr283, %203
  br i1 %cmp284, label %if.end.287, label %if.then.286

if.then.286:                                      ; preds = %land.lhs.true.281, %land.lhs.true.274, %land.lhs.true.271, %land.lhs.true.268, %land.lhs.true.265, %if.end.260
  call void (i8*, ...) @cli_dbgmsg(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.8, i32 0, i32 0))
  store i32 1, i32* %retval
  br label %return

if.end.287:                                       ; preds = %land.lhs.true.281
  br label %while.cond.288

while.cond.288:                                   ; preds = %if.end.299, %if.end.287
  %204 = load i32, i32* %len, align 4
  %dec289 = add i32 %204, -1
  store i32 %dec289, i32* %len, align 4
  %tobool290 = icmp ne i32 %204, 0
  br i1 %tobool290, label %while.body.291, label %while.end.305

while.body.291:                                   ; preds = %while.cond.288
  %205 = load i32, i32* %key32, align 4
  %and292 = and i32 %205, 1
  %tobool293 = icmp ne i32 %and292, 0
  br i1 %tobool293, label %if.then.294, label %if.else.297

if.then.294:                                      ; preds = %while.body.291
  %206 = load i32, i32* %key32, align 4
  %shr295 = lshr i32 %206, 1
  store i32 %shr295, i32* %key32, align 4
  %207 = load i32, i32* %key32, align 4
  %xor296 = xor i32 %207, -314331342
  store i32 %xor296, i32* %key32, align 4
  br label %if.end.299

if.else.297:                                      ; preds = %while.body.291
  %208 = load i32, i32* %key32, align 4
  %shr298 = lshr i32 %208, 1
  store i32 %shr298, i32* %key32, align 4
  br label %if.end.299

if.end.299:                                       ; preds = %if.else.297, %if.then.294
  %209 = load i8*, i8** %curr, align 8
  %210 = load i8, i8* %209, align 1
  %conv300 = sext i8 %210 to i32
  %211 = load i32, i32* %key32, align 4
  %and301 = and i32 %211, 255
  %xor302 = xor i32 %conv300, %and301
  %conv303 = trunc i32 %xor302 to i8
  %212 = load i8*, i8** %curr, align 8
  store i8 %conv303, i8* %212, align 1
  %213 = load i8*, i8** %curr, align 8
  %incdec.ptr304 = getelementptr inbounds i8, i8* %213, i32 1
  store i8* %incdec.ptr304, i8** %curr, align 8
  br label %while.cond.288

while.end.305:                                    ; preds = %while.cond.288
  %214 = load i8*, i8** %ep, align 8
  %add.ptr306 = getelementptr inbounds i8, i8* %214, i64 10461
  store i8* %add.ptr306, i8** %curr, align 8
  %215 = load i8*, i8** %curr, align 8
  %216 = bitcast i8* %215 to i32*
  %217 = load i32, i32* %216, align 4
  store i32 %217, i32* %len, align 4
  %cmp307 = icmp ne i32 %217, 417
  br i1 %cmp307, label %if.then.309, label %if.end.310

if.then.309:                                      ; preds = %while.end.305
  call void (i8*, ...) @cli_dbgmsg(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.1, i32 0, i32 0))
  store i32 1, i32* %retval
  br label %return

if.end.310:                                       ; preds = %while.end.305
  %218 = load i32, i32* %len, align 4
  call void (i8*, ...) @cli_dbgmsg(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.13, i32 0, i32 0), i32 %218)
  %219 = load i8*, i8** %curr, align 8
  %add.ptr311 = getelementptr inbounds i8, i8* %219, i64 15
  store i8* %add.ptr311, i8** %curr, align 8
  %220 = load i8*, i8** %ep, align 8
  %add.ptr312 = getelementptr inbounds i8, i8* %220, i64 1748
  store i8* %add.ptr312, i8** %emu, align 8
  %221 = load i32, i32* %ssize.addr, align 4
  %cmp313 = icmp ugt i32 %221, 0
  br i1 %cmp313, label %land.lhs.true.315, label %if.then.336

land.lhs.true.315:                                ; preds = %if.end.310
  %222 = load i32, i32* %len, align 4
  %cmp316 = icmp ugt i32 %222, 0
  br i1 %cmp316, label %land.lhs.true.318, label %if.then.336

land.lhs.true.318:                                ; preds = %land.lhs.true.315
  %223 = load i32, i32* %len, align 4
  %224 = load i32, i32* %ssize.addr, align 4
  %cmp319 = icmp ule i32 %223, %224
  br i1 %cmp319, label %land.lhs.true.321, label %if.then.336

land.lhs.true.321:                                ; preds = %land.lhs.true.318
  %225 = load i8*, i8** %emu, align 8
  %226 = load i8*, i8** %src.addr, align 8
  %cmp322 = icmp uge i8* %225, %226
  br i1 %cmp322, label %land.lhs.true.324, label %if.then.336

land.lhs.true.324:                                ; preds = %land.lhs.true.321
  %227 = load i8*, i8** %emu, align 8
  %228 = load i32, i32* %len, align 4
  %idx.ext325 = zext i32 %228 to i64
  %add.ptr326 = getelementptr inbounds i8, i8* %227, i64 %idx.ext325
  %229 = load i8*, i8** %src.addr, align 8
  %230 = load i32, i32* %ssize.addr, align 4
  %idx.ext327 = zext i32 %230 to i64
  %add.ptr328 = getelementptr inbounds i8, i8* %229, i64 %idx.ext327
  %cmp329 = icmp ule i8* %add.ptr326, %add.ptr328
  br i1 %cmp329, label %land.lhs.true.331, label %if.then.336

land.lhs.true.331:                                ; preds = %land.lhs.true.324
  %231 = load i8*, i8** %emu, align 8
  %232 = load i32, i32* %len, align 4
  %idx.ext332 = zext i32 %232 to i64
  %add.ptr333 = getelementptr inbounds i8, i8* %231, i64 %idx.ext332
  %233 = load i8*, i8** %src.addr, align 8
  %cmp334 = icmp ugt i8* %add.ptr333, %233
  br i1 %cmp334, label %if.end.337, label %if.then.336

if.then.336:                                      ; preds = %land.lhs.true.331, %land.lhs.true.324, %land.lhs.true.321, %land.lhs.true.318, %land.lhs.true.315, %if.end.310
  call void (i8*, ...) @cli_dbgmsg(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.14, i32 0, i32 0))
  store i32 1, i32* %retval
  br label %return

if.end.337:                                       ; preds = %land.lhs.true.331
  br label %while.cond.338

while.cond.338:                                   ; preds = %if.end.347, %if.end.337
  %234 = load i32, i32* %len, align 4
  %tobool339 = icmp ne i32 %234, 0
  br i1 %tobool339, label %while.body.340, label %while.end.349

while.body.340:                                   ; preds = %while.cond.338
  store i32 0, i32* %xcfailure, align 4
  %235 = load i8*, i8** %emu, align 8
  %236 = load i8, i8* %235, align 1
  %237 = load i32, i32* %len, align 4
  %dec341 = add i32 %237, -1
  store i32 %dec341, i32* %len, align 4
  %and342 = and i32 %237, 255
  %conv343 = trunc i32 %and342 to i8
  %238 = load i8*, i8** %curr, align 8
  %call344 = call signext i8 @exec86(i8 zeroext %236, i8 zeroext %conv343, i8* %238, i32* %xcfailure)
  %239 = load i8*, i8** %emu, align 8
  store i8 %call344, i8* %239, align 1
  %240 = load i32, i32* %xcfailure, align 4
  %tobool345 = icmp ne i32 %240, 0
  br i1 %tobool345, label %if.then.346, label %if.end.347

if.then.346:                                      ; preds = %while.body.340
  call void (i8*, ...) @cli_dbgmsg(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.15, i32 0, i32 0))
  store i32 1, i32* %retval
  br label %return

if.end.347:                                       ; preds = %while.body.340
  %241 = load i8*, i8** %emu, align 8
  %incdec.ptr348 = getelementptr inbounds i8, i8* %241, i32 1
  store i8* %incdec.ptr348, i8** %emu, align 8
  br label %while.cond.338

while.end.349:                                    ; preds = %while.cond.338
  %242 = load i8*, i8** %ep, align 8
  %add.ptr350 = getelementptr inbounds i8, i8* %242, i64 1777
  %243 = bitcast i8* %add.ptr350 to i32*
  %244 = load i32, i32* %243, align 4
  store i32 %244, i32* %bitmap, align 4
  %245 = load i32, i32* %bitmap, align 4
  call void (i8*, ...) @cli_dbgmsg(i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str.16, i32 0, i32 0), i32 %245)
  %246 = load i8*, i8** %ep, align 8
  %add.ptr351 = getelementptr inbounds i8, i8* %246, i64 1877
  store i8* %add.ptr351, i8** %curr, align 8
  store i32 0, i32* %j, align 4
  br label %for.cond.352

for.cond.352:                                     ; preds = %for.inc.402, %while.end.349
  %247 = load i32, i32* %j, align 4
  %248 = load i32, i32* %sectcnt.addr, align 4
  %cmp353 = icmp slt i32 %247, %248
  br i1 %cmp353, label %for.body.355, label %for.end.404

for.body.355:                                     ; preds = %for.cond.352
  %249 = load i32, i32* %bitmap, align 4
  %and356 = and i32 %249, 1
  %tobool357 = icmp ne i32 %and356, 0
  br i1 %tobool357, label %if.then.358, label %if.end.400

if.then.358:                                      ; preds = %for.body.355
  %250 = load i32, i32* %j, align 4
  %idxprom359 = sext i32 %250 to i64
  %251 = load %struct.cli_exe_section*, %struct.cli_exe_section** %sections.addr, align 8
  %arrayidx360 = getelementptr inbounds %struct.cli_exe_section, %struct.cli_exe_section* %251, i64 %idxprom359
  %rsz361 = getelementptr inbounds %struct.cli_exe_section, %struct.cli_exe_section* %arrayidx360, i32 0, i32 3
  %252 = load i32, i32* %rsz361, align 4
  store i32 %252, i32* %notthesamelen, align 4
  %253 = load i8*, i8** %src.addr, align 8
  %254 = load i32, i32* %j, align 4
  %idxprom362 = sext i32 %254 to i64
  %255 = load %struct.cli_exe_section*, %struct.cli_exe_section** %sections.addr, align 8
  %arrayidx363 = getelementptr inbounds %struct.cli_exe_section, %struct.cli_exe_section* %255, i64 %idxprom362
  %raw364 = getelementptr inbounds %struct.cli_exe_section, %struct.cli_exe_section* %arrayidx363, i32 0, i32 2
  %256 = load i32, i32* %raw364, align 4
  %idx.ext365 = zext i32 %256 to i64
  %add.ptr366 = getelementptr inbounds i8, i8* %253, i64 %idx.ext365
  store i8* %add.ptr366, i8** %emu, align 8
  %257 = load i32, i32* %ssize.addr, align 4
  %cmp367 = icmp sgt i32 %257, 0
  br i1 %cmp367, label %land.lhs.true.369, label %if.then.385

land.lhs.true.369:                                ; preds = %if.then.358
  %258 = load i32, i32* %ssize.addr, align 4
  %cmp370 = icmp sle i32 36, %258
  br i1 %cmp370, label %land.lhs.true.372, label %if.then.385

land.lhs.true.372:                                ; preds = %land.lhs.true.369
  %259 = load i8*, i8** %curr, align 8
  %260 = load i8*, i8** %src.addr, align 8
  %cmp373 = icmp uge i8* %259, %260
  br i1 %cmp373, label %land.lhs.true.375, label %if.then.385

land.lhs.true.375:                                ; preds = %land.lhs.true.372
  %261 = load i8*, i8** %curr, align 8
  %add.ptr376 = getelementptr inbounds i8, i8* %261, i64 36
  %262 = load i8*, i8** %src.addr, align 8
  %263 = load i32, i32* %ssize.addr, align 4
  %idx.ext377 = sext i32 %263 to i64
  %add.ptr378 = getelementptr inbounds i8, i8* %262, i64 %idx.ext377
  %cmp379 = icmp ule i8* %add.ptr376, %add.ptr378
  br i1 %cmp379, label %land.lhs.true.381, label %if.then.385

land.lhs.true.381:                                ; preds = %land.lhs.true.375
  %264 = load i8*, i8** %curr, align 8
  %add.ptr382 = getelementptr inbounds i8, i8* %264, i64 36
  %265 = load i8*, i8** %src.addr, align 8
  %cmp383 = icmp ugt i8* %add.ptr382, %265
  br i1 %cmp383, label %if.end.386, label %if.then.385

if.then.385:                                      ; preds = %land.lhs.true.381, %land.lhs.true.375, %land.lhs.true.372, %land.lhs.true.369, %if.then.358
  call void (i8*, ...) @cli_dbgmsg(i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.17, i32 0, i32 0))
  store i32 1, i32* %retval
  br label %return

if.end.386:                                       ; preds = %land.lhs.true.381
  br label %while.cond.387

while.cond.387:                                   ; preds = %if.end.397, %if.end.386
  %266 = load i32, i32* %notthesamelen, align 4
  %tobool388 = icmp ne i32 %266, 0
  br i1 %tobool388, label %while.body.389, label %while.end.399

while.body.389:                                   ; preds = %while.cond.387
  store i32 0, i32* %xcfailure390, align 4
  %267 = load i8*, i8** %emu, align 8
  %268 = load i8, i8* %267, align 1
  %269 = load i32, i32* %notthesamelen, align 4
  %dec391 = add i32 %269, -1
  store i32 %dec391, i32* %notthesamelen, align 4
  %and392 = and i32 %269, 255
  %conv393 = trunc i32 %and392 to i8
  %270 = load i8*, i8** %curr, align 8
  %call394 = call signext i8 @exec86(i8 zeroext %268, i8 zeroext %conv393, i8* %270, i32* %xcfailure390)
  %271 = load i8*, i8** %emu, align 8
  store i8 %call394, i8* %271, align 1
  %272 = load i32, i32* %xcfailure390, align 4
  %tobool395 = icmp ne i32 %272, 0
  br i1 %tobool395, label %if.then.396, label %if.end.397

if.then.396:                                      ; preds = %while.body.389
  call void (i8*, ...) @cli_dbgmsg(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.18, i32 0, i32 0))
  store i32 1, i32* %retval
  br label %return

if.end.397:                                       ; preds = %while.body.389
  %273 = load i8*, i8** %emu, align 8
  %incdec.ptr398 = getelementptr inbounds i8, i8* %273, i32 1
  store i8* %incdec.ptr398, i8** %emu, align 8
  br label %while.cond.387

while.end.399:                                    ; preds = %while.cond.387
  br label %if.end.400

if.end.400:                                       ; preds = %while.end.399, %for.body.355
  %274 = load i32, i32* %bitmap, align 4
  %shr401 = lshr i32 %274, 1
  store i32 %shr401, i32* %bitmap, align 4
  br label %for.inc.402

for.inc.402:                                      ; preds = %if.end.400
  %275 = load i32, i32* %j, align 4
  %inc403 = add nsw i32 %275, 1
  store i32 %inc403, i32* %j, align 4
  br label %for.cond.352

for.end.404:                                      ; preds = %for.cond.352
  call void (i8*, ...) @cli_dbgmsg(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.12, i32 0, i32 0))
  %276 = load i8*, i8** %ep, align 8
  %add.ptr405 = getelementptr inbounds i8, i8* %276, i64 12385
  %277 = bitcast i8* %add.ptr405 to i32*
  %278 = load i32, i32* %277, align 4
  store i32 %278, i32* %bitmap, align 4
  %279 = load i32, i32* %bitmap, align 4
  store i32 %279, i32* %bitman, align 4
  %280 = load i32, i32* %bitmap, align 4
  call void (i8*, ...) @cli_dbgmsg(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.19, i32 0, i32 0), i32 %280)
  %281 = load i32, i32* %sectcnt.addr, align 4
  %conv406 = sext i32 %281 to i64
  %mul = mul i64 %conv406, 8
  %call407 = call i8* @cli_malloc(i64 %mul)
  %282 = bitcast i8* %call407 to i8**
  store i8** %282, i8*** %sects, align 8
  %cmp408 = icmp eq i8** %282, null
  br i1 %cmp408, label %if.then.410, label %if.end.411

if.then.410:                                      ; preds = %for.end.404
  store i32 1, i32* %retval
  br label %return

if.end.411:                                       ; preds = %for.end.404
  store i8 0, i8* %key8, align 1
  store i32 0, i32* %j, align 4
  br label %for.cond.412

for.cond.412:                                     ; preds = %for.inc.490, %if.end.411
  %283 = load i32, i32* %j, align 4
  %284 = load i32, i32* %sectcnt.addr, align 4
  %cmp413 = icmp slt i32 %283, %284
  br i1 %cmp413, label %for.body.415, label %for.end.492

for.body.415:                                     ; preds = %for.cond.412
  %285 = load i32, i32* %bitmap, align 4
  %and416 = and i32 %285, 1
  %tobool417 = icmp ne i32 %and416, 0
  br i1 %tobool417, label %cond.true, label %cond.false

cond.true:                                        ; preds = %for.body.415
  %286 = load i32, i32* %j, align 4
  %idxprom418 = sext i32 %286 to i64
  %287 = load %struct.cli_exe_section*, %struct.cli_exe_section** %sections.addr, align 8
  %arrayidx419 = getelementptr inbounds %struct.cli_exe_section, %struct.cli_exe_section* %287, i64 %idxprom418
  %vsz = getelementptr inbounds %struct.cli_exe_section, %struct.cli_exe_section* %arrayidx419, i32 0, i32 1
  %288 = load i32, i32* %vsz, align 4
  br label %cond.end

cond.false:                                       ; preds = %for.body.415
  %289 = load i32, i32* %j, align 4
  %idxprom420 = sext i32 %289 to i64
  %290 = load %struct.cli_exe_section*, %struct.cli_exe_section** %sections.addr, align 8
  %arrayidx421 = getelementptr inbounds %struct.cli_exe_section, %struct.cli_exe_section* %290, i64 %idxprom420
  %rsz422 = getelementptr inbounds %struct.cli_exe_section, %struct.cli_exe_section* %arrayidx421, i32 0, i32 3
  %291 = load i32, i32* %rsz422, align 4
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %288, %cond.true ], [ %291, %cond.false ]
  store i32 %cond, i32* %thissize, align 4
  %292 = load %struct.cli_ctx*, %struct.cli_ctx** %ctx.addr, align 8
  %limits = getelementptr inbounds %struct.cli_ctx, %struct.cli_ctx* %292, i32 0, i32 4
  %293 = load %struct.cl_limits*, %struct.cl_limits** %limits, align 8
  %tobool423 = icmp ne %struct.cl_limits* %293, null
  br i1 %tobool423, label %land.lhs.true.424, label %if.end.445

land.lhs.true.424:                                ; preds = %cond.end
  %294 = load %struct.cli_ctx*, %struct.cli_ctx** %ctx.addr, align 8
  %limits425 = getelementptr inbounds %struct.cli_ctx, %struct.cli_ctx* %294, i32 0, i32 4
  %295 = load %struct.cl_limits*, %struct.cl_limits** %limits425, align 8
  %maxfilesize = getelementptr inbounds %struct.cl_limits, %struct.cl_limits* %295, i32 0, i32 5
  %296 = load i64, i64* %maxfilesize, align 8
  %tobool426 = icmp ne i64 %296, 0
  br i1 %tobool426, label %land.lhs.true.427, label %if.end.445

land.lhs.true.427:                                ; preds = %land.lhs.true.424
  %297 = load i32, i32* %thissize, align 4
  %conv428 = zext i32 %297 to i64
  %298 = load %struct.cli_ctx*, %struct.cli_ctx** %ctx.addr, align 8
  %limits429 = getelementptr inbounds %struct.cli_ctx, %struct.cli_ctx* %298, i32 0, i32 4
  %299 = load %struct.cl_limits*, %struct.cl_limits** %limits429, align 8
  %maxfilesize430 = getelementptr inbounds %struct.cl_limits, %struct.cl_limits* %299, i32 0, i32 5
  %300 = load i64, i64* %maxfilesize430, align 8
  %cmp431 = icmp ugt i64 %conv428, %300
  br i1 %cmp431, label %if.then.441, label %lor.lhs.false.433

lor.lhs.false.433:                                ; preds = %land.lhs.true.427
  %301 = load i32, i32* %blobsz, align 4
  %conv434 = sext i32 %301 to i64
  %302 = load %struct.cli_ctx*, %struct.cli_ctx** %ctx.addr, align 8
  %limits435 = getelementptr inbounds %struct.cli_ctx, %struct.cli_ctx* %302, i32 0, i32 4
  %303 = load %struct.cl_limits*, %struct.cl_limits** %limits435, align 8
  %maxfilesize436 = getelementptr inbounds %struct.cl_limits, %struct.cl_limits* %303, i32 0, i32 5
  %304 = load i64, i64* %maxfilesize436, align 8
  %305 = load i32, i32* %thissize, align 4
  %conv437 = zext i32 %305 to i64
  %sub438 = sub i64 %304, %conv437
  %cmp439 = icmp ugt i64 %conv434, %sub438
  br i1 %cmp439, label %if.then.441, label %if.end.445

if.then.441:                                      ; preds = %lor.lhs.false.433, %land.lhs.true.427
  %306 = load i8, i8* %key8, align 1
  %inc442 = add i8 %306, 1
  store i8 %inc442, i8* %key8, align 1
  %307 = load i32, i32* %j, align 4
  %308 = load i32, i32* %thissize, align 4
  %309 = load %struct.cli_ctx*, %struct.cli_ctx** %ctx.addr, align 8
  %limits443 = getelementptr inbounds %struct.cli_ctx, %struct.cli_ctx* %309, i32 0, i32 4
  %310 = load %struct.cl_limits*, %struct.cl_limits** %limits443, align 8
  %maxfilesize444 = getelementptr inbounds %struct.cl_limits, %struct.cl_limits* %310, i32 0, i32 5
  %311 = load i64, i64* %maxfilesize444, align 8
  call void (i8*, ...) @cli_dbgmsg(i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.20, i32 0, i32 0), i32 %307, i32 %308, i64 %311)
  br label %for.end.492

if.end.445:                                       ; preds = %lor.lhs.false.433, %land.lhs.true.424, %cond.end
  %312 = load i32, i32* %bitmap, align 4
  %and446 = and i32 %312, 1
  %tobool447 = icmp ne i32 %and446, 0
  br i1 %tobool447, label %if.then.448, label %if.else.479

if.then.448:                                      ; preds = %if.end.445
  %313 = load i32, i32* %thissize, align 4
  %conv449 = zext i32 %313 to i64
  %call450 = call i8* @cli_calloc(i64 %conv449, i64 1)
  %314 = load i32, i32* %j, align 4
  %idxprom451 = sext i32 %314 to i64
  %315 = load i8**, i8*** %sects, align 8
  %arrayidx452 = getelementptr inbounds i8*, i8** %315, i64 %idxprom451
  store i8* %call450, i8** %arrayidx452, align 8
  %cmp453 = icmp eq i8* %call450, null
  br i1 %cmp453, label %if.then.455, label %if.end.457

if.then.455:                                      ; preds = %if.then.448
  %316 = load i32, i32* %thissize, align 4
  call void (i8*, ...) @cli_dbgmsg(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.21, i32 0, i32 0), i32 %316)
  %317 = load i8, i8* %key8, align 1
  %inc456 = add i8 %317, 1
  store i8 %inc456, i8* %key8, align 1
  br label %for.end.492

if.end.457:                                       ; preds = %if.then.448
  %318 = load i32, i32* %thissize, align 4
  %319 = load i32, i32* %blobsz, align 4
  %add458 = add i32 %319, %318
  store i32 %add458, i32* %blobsz, align 4
  %320 = load i32, i32* %j, align 4
  %321 = load i32, i32* %j, align 4
  %idxprom459 = sext i32 %321 to i64
  %322 = load %struct.cli_exe_section*, %struct.cli_exe_section** %sections.addr, align 8
  %arrayidx460 = getelementptr inbounds %struct.cli_exe_section, %struct.cli_exe_section* %322, i64 %idxprom459
  %rsz461 = getelementptr inbounds %struct.cli_exe_section, %struct.cli_exe_section* %arrayidx460, i32 0, i32 3
  %323 = load i32, i32* %rsz461, align 4
  %324 = load i32, i32* %thissize, align 4
  call void (i8*, ...) @cli_dbgmsg(i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.22, i32 0, i32 0), i32 %320, i32 %323, i32 %324)
  %325 = load i8*, i8** %src.addr, align 8
  %326 = load i32, i32* %j, align 4
  %idxprom462 = sext i32 %326 to i64
  %327 = load %struct.cli_exe_section*, %struct.cli_exe_section** %sections.addr, align 8
  %arrayidx463 = getelementptr inbounds %struct.cli_exe_section, %struct.cli_exe_section* %327, i64 %idxprom462
  %raw464 = getelementptr inbounds %struct.cli_exe_section, %struct.cli_exe_section* %arrayidx463, i32 0, i32 2
  %328 = load i32, i32* %raw464, align 4
  %idx.ext465 = zext i32 %328 to i64
  %add.ptr466 = getelementptr inbounds i8, i8* %325, i64 %idx.ext465
  %329 = load i32, i32* %j, align 4
  %idxprom467 = sext i32 %329 to i64
  %330 = load i8**, i8*** %sects, align 8
  %arrayidx468 = getelementptr inbounds i8*, i8** %330, i64 %idxprom467
  %331 = load i8*, i8** %arrayidx468, align 8
  %332 = load i32, i32* %j, align 4
  %idxprom469 = sext i32 %332 to i64
  %333 = load %struct.cli_exe_section*, %struct.cli_exe_section** %sections.addr, align 8
  %arrayidx470 = getelementptr inbounds %struct.cli_exe_section, %struct.cli_exe_section* %333, i64 %idxprom469
  %rsz471 = getelementptr inbounds %struct.cli_exe_section, %struct.cli_exe_section* %arrayidx470, i32 0, i32 3
  %334 = load i32, i32* %rsz471, align 4
  %335 = load i32, i32* %thissize, align 4
  %call472 = call i32 @cli_unfsg(i8* %add.ptr466, i8* %331, i32 %334, i32 %335, i8** null, i8** null)
  %cmp473 = icmp eq i32 %call472, -1
  br i1 %cmp473, label %if.then.475, label %if.end.478

if.then.475:                                      ; preds = %if.end.457
  %336 = load i8, i8* %key8, align 1
  %inc476 = add i8 %336, 1
  store i8 %inc476, i8* %key8, align 1
  %337 = load i32, i32* %j, align 4
  %inc477 = add nsw i32 %337, 1
  store i32 %inc477, i32* %j, align 4
  call void (i8*, ...) @cli_dbgmsg(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.23, i32 0, i32 0))
  br label %for.end.492

if.end.478:                                       ; preds = %if.end.457
  br label %if.end.488

if.else.479:                                      ; preds = %if.end.445
  %338 = load i32, i32* %thissize, align 4
  %339 = load i32, i32* %blobsz, align 4
  %add480 = add i32 %339, %338
  store i32 %add480, i32* %blobsz, align 4
  %340 = load i8*, i8** %src.addr, align 8
  %341 = load i32, i32* %j, align 4
  %idxprom481 = sext i32 %341 to i64
  %342 = load %struct.cli_exe_section*, %struct.cli_exe_section** %sections.addr, align 8
  %arrayidx482 = getelementptr inbounds %struct.cli_exe_section, %struct.cli_exe_section* %342, i64 %idxprom481
  %raw483 = getelementptr inbounds %struct.cli_exe_section, %struct.cli_exe_section* %arrayidx482, i32 0, i32 2
  %343 = load i32, i32* %raw483, align 4
  %idx.ext484 = zext i32 %343 to i64
  %add.ptr485 = getelementptr inbounds i8, i8* %340, i64 %idx.ext484
  %344 = load i32, i32* %j, align 4
  %idxprom486 = sext i32 %344 to i64
  %345 = load i8**, i8*** %sects, align 8
  %arrayidx487 = getelementptr inbounds i8*, i8** %345, i64 %idxprom486
  store i8* %add.ptr485, i8** %arrayidx487, align 8
  %346 = load i32, i32* %j, align 4
  call void (i8*, ...) @cli_dbgmsg(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.24, i32 0, i32 0), i32 %346)
  br label %if.end.488

if.end.488:                                       ; preds = %if.else.479, %if.end.478
  %347 = load i32, i32* %bitmap, align 4
  %shr489 = lshr i32 %347, 1
  store i32 %shr489, i32* %bitmap, align 4
  br label %for.inc.490

for.inc.490:                                      ; preds = %if.end.488
  %348 = load i32, i32* %j, align 4
  %inc491 = add nsw i32 %348, 1
  store i32 %inc491, i32* %j, align 4
  br label %for.cond.412

for.end.492:                                      ; preds = %if.then.475, %if.then.455, %if.then.441, %for.cond.412
  call void (i8*, ...) @cli_dbgmsg(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.25, i32 0, i32 0))
  %349 = load i8, i8* %key8, align 1
  %tobool493 = icmp ne i8 %349, 0
  br i1 %tobool493, label %if.then.494, label %if.end.509

if.then.494:                                      ; preds = %for.end.492
  store i32 0, i32* %t, align 4
  br label %for.cond.495

for.cond.495:                                     ; preds = %for.inc.506, %if.then.494
  %350 = load i32, i32* %t, align 4
  %351 = load i32, i32* %j, align 4
  %cmp496 = icmp slt i32 %350, %351
  br i1 %cmp496, label %for.body.498, label %for.end.508

for.body.498:                                     ; preds = %for.cond.495
  %352 = load i32, i32* %bitman, align 4
  %and499 = and i32 %352, 1
  %tobool500 = icmp ne i32 %and499, 0
  br i1 %tobool500, label %if.then.501, label %if.end.504

if.then.501:                                      ; preds = %for.body.498
  %353 = load i32, i32* %t, align 4
  %idxprom502 = sext i32 %353 to i64
  %354 = load i8**, i8*** %sects, align 8
  %arrayidx503 = getelementptr inbounds i8*, i8** %354, i64 %idxprom502
  %355 = load i8*, i8** %arrayidx503, align 8
  call void @free(i8* %355) #2
  br label %if.end.504

if.end.504:                                       ; preds = %if.then.501, %for.body.498
  %356 = load i32, i32* %bitman, align 4
  %shr505 = lshr i32 %356, 1
  store i32 %shr505, i32* %bitman, align 4
  br label %for.inc.506

for.inc.506:                                      ; preds = %if.end.504
  %357 = load i32, i32* %t, align 4
  %inc507 = add nsw i32 %357, 1
  store i32 %inc507, i32* %t, align 4
  br label %for.cond.495

for.end.508:                                      ; preds = %for.cond.495
  %358 = load i8**, i8*** %sects, align 8
  %359 = bitcast i8** %358 to i8*
  call void @free(i8* %359) #2
  store i32 1, i32* %retval
  br label %return

if.end.509:                                       ; preds = %for.end.492
  %360 = load i8*, i8** %ep, align 8
  %add.ptr510 = getelementptr inbounds i8, i8* %360, i64 12270
  %361 = bitcast i8* %add.ptr510 to i32*
  %362 = load i32, i32* %361, align 4
  store i32 %362, i32* %key32, align 4
  %363 = load i32, i32* %key32, align 4
  %tobool511 = icmp ne i32 %363, 0
  br i1 %tobool511, label %if.then.512, label %if.end.655

if.then.512:                                      ; preds = %if.end.509
  store i32 0, i32* %j, align 4
  br label %for.cond.513

for.cond.513:                                     ; preds = %for.inc.534, %if.then.512
  %364 = load i32, i32* %j, align 4
  %365 = load i32, i32* %sectcnt.addr, align 4
  %cmp514 = icmp slt i32 %364, %365
  br i1 %cmp514, label %for.body.516, label %for.end.536

for.body.516:                                     ; preds = %for.cond.513
  %366 = load i32, i32* %j, align 4
  %idxprom517 = sext i32 %366 to i64
  %367 = load %struct.cli_exe_section*, %struct.cli_exe_section** %sections.addr, align 8
  %arrayidx518 = getelementptr inbounds %struct.cli_exe_section, %struct.cli_exe_section* %367, i64 %idxprom517
  %rva519 = getelementptr inbounds %struct.cli_exe_section, %struct.cli_exe_section* %arrayidx518, i32 0, i32 0
  %368 = load i32, i32* %rva519, align 4
  %369 = load i32, i32* %key32, align 4
  %cmp520 = icmp ule i32 %368, %369
  br i1 %cmp520, label %land.lhs.true.522, label %if.end.533

land.lhs.true.522:                                ; preds = %for.body.516
  %370 = load i32, i32* %j, align 4
  %idxprom523 = sext i32 %370 to i64
  %371 = load %struct.cli_exe_section*, %struct.cli_exe_section** %sections.addr, align 8
  %arrayidx524 = getelementptr inbounds %struct.cli_exe_section, %struct.cli_exe_section* %371, i64 %idxprom523
  %rva525 = getelementptr inbounds %struct.cli_exe_section, %struct.cli_exe_section* %arrayidx524, i32 0, i32 0
  %372 = load i32, i32* %rva525, align 4
  %373 = load i32, i32* %j, align 4
  %idxprom526 = sext i32 %373 to i64
  %374 = load %struct.cli_exe_section*, %struct.cli_exe_section** %sections.addr, align 8
  %arrayidx527 = getelementptr inbounds %struct.cli_exe_section, %struct.cli_exe_section* %374, i64 %idxprom526
  %rsz528 = getelementptr inbounds %struct.cli_exe_section, %struct.cli_exe_section* %arrayidx527, i32 0, i32 3
  %375 = load i32, i32* %rsz528, align 4
  %add529 = add i32 %372, %375
  %376 = load i32, i32* %key32, align 4
  %cmp530 = icmp ugt i32 %add529, %376
  br i1 %cmp530, label %if.then.532, label %if.end.533

if.then.532:                                      ; preds = %land.lhs.true.522
  br label %for.end.536

if.end.533:                                       ; preds = %land.lhs.true.522, %for.body.516
  br label %for.inc.534

for.inc.534:                                      ; preds = %if.end.533
  %377 = load i32, i32* %j, align 4
  %inc535 = add nsw i32 %377, 1
  store i32 %inc535, i32* %j, align 4
  br label %for.cond.513

for.end.536:                                      ; preds = %if.then.532, %for.cond.513
  %378 = load i32, i32* %j, align 4
  %379 = load i32, i32* %sectcnt.addr, align 4
  %cmp537 = icmp ne i32 %378, %379
  br i1 %cmp537, label %land.lhs.true.539, label %if.else.653

land.lhs.true.539:                                ; preds = %for.end.536
  %380 = load i32, i32* %bitman, align 4
  %381 = load i32, i32* %j, align 4
  %shl = shl i32 1, %381
  %and540 = and i32 %380, %shl
  %cmp541 = icmp eq i32 %and540, 0
  br i1 %cmp541, label %if.then.543, label %if.else.653

if.then.543:                                      ; preds = %land.lhs.true.539
  %382 = load i32, i32* %j, align 4
  %383 = load i32, i32* %j, align 4
  %idxprom544 = sext i32 %383 to i64
  %384 = load %struct.cli_exe_section*, %struct.cli_exe_section** %sections.addr, align 8
  %arrayidx545 = getelementptr inbounds %struct.cli_exe_section, %struct.cli_exe_section* %384, i64 %idxprom544
  %rva546 = getelementptr inbounds %struct.cli_exe_section, %struct.cli_exe_section* %arrayidx545, i32 0, i32 0
  %385 = load i32, i32* %rva546, align 4
  %386 = load i32, i32* %key32, align 4
  %387 = load i32, i32* %j, align 4
  %idxprom547 = sext i32 %387 to i64
  %388 = load %struct.cli_exe_section*, %struct.cli_exe_section** %sections.addr, align 8
  %arrayidx548 = getelementptr inbounds %struct.cli_exe_section, %struct.cli_exe_section* %388, i64 %idxprom547
  %rva549 = getelementptr inbounds %struct.cli_exe_section, %struct.cli_exe_section* %arrayidx548, i32 0, i32 0
  %389 = load i32, i32* %rva549, align 4
  %sub550 = sub i32 %386, %389
  %390 = load i32, i32* %key32, align 4
  %391 = load i32, i32* %j, align 4
  %idxprom551 = sext i32 %391 to i64
  %392 = load %struct.cli_exe_section*, %struct.cli_exe_section** %sections.addr, align 8
  %arrayidx552 = getelementptr inbounds %struct.cli_exe_section, %struct.cli_exe_section* %392, i64 %idxprom551
  %vsz553 = getelementptr inbounds %struct.cli_exe_section, %struct.cli_exe_section* %arrayidx552, i32 0, i32 1
  %393 = load i32, i32* %vsz553, align 4
  %394 = load i32, i32* %key32, align 4
  %395 = load i32, i32* %j, align 4
  %idxprom554 = sext i32 %395 to i64
  %396 = load %struct.cli_exe_section*, %struct.cli_exe_section** %sections.addr, align 8
  %arrayidx555 = getelementptr inbounds %struct.cli_exe_section, %struct.cli_exe_section* %396, i64 %idxprom554
  %rva556 = getelementptr inbounds %struct.cli_exe_section, %struct.cli_exe_section* %arrayidx555, i32 0, i32 0
  %397 = load i32, i32* %rva556, align 4
  %sub557 = sub i32 %394, %397
  %sub558 = sub i32 %393, %sub557
  call void (i8*, ...) @cli_dbgmsg(i8* getelementptr inbounds ([112 x i8], [112 x i8]* @.str.26, i32 0, i32 0), i32 %382, i32 %385, i32 %sub550, i32 %390, i32 %sub558)
  %398 = load i32, i32* %j, align 4
  %idxprom559 = sext i32 %398 to i64
  %399 = load %struct.cli_exe_section*, %struct.cli_exe_section** %sections.addr, align 8
  %arrayidx560 = getelementptr inbounds %struct.cli_exe_section, %struct.cli_exe_section* %399, i64 %idxprom559
  %vsz561 = getelementptr inbounds %struct.cli_exe_section, %struct.cli_exe_section* %arrayidx560, i32 0, i32 1
  %400 = load i32, i32* %vsz561, align 4
  %conv562 = zext i32 %400 to i64
  %call563 = call i8* @cli_malloc(i64 %conv562)
  store i8* %call563, i8** %curr, align 8
  %cmp564 = icmp ne i8* %call563, null
  br i1 %cmp564, label %if.then.566, label %if.else.647

if.then.566:                                      ; preds = %if.then.543
  %401 = load i8*, i8** %curr, align 8
  %402 = load i8*, i8** %src.addr, align 8
  %403 = load i32, i32* %j, align 4
  %idxprom567 = sext i32 %403 to i64
  %404 = load %struct.cli_exe_section*, %struct.cli_exe_section** %sections.addr, align 8
  %arrayidx568 = getelementptr inbounds %struct.cli_exe_section, %struct.cli_exe_section* %404, i64 %idxprom567
  %raw569 = getelementptr inbounds %struct.cli_exe_section, %struct.cli_exe_section* %arrayidx568, i32 0, i32 2
  %405 = load i32, i32* %raw569, align 4
  %idx.ext570 = zext i32 %405 to i64
  %add.ptr571 = getelementptr inbounds i8, i8* %402, i64 %idx.ext570
  %406 = load i32, i32* %key32, align 4
  %407 = load i32, i32* %j, align 4
  %idxprom572 = sext i32 %407 to i64
  %408 = load %struct.cli_exe_section*, %struct.cli_exe_section** %sections.addr, align 8
  %arrayidx573 = getelementptr inbounds %struct.cli_exe_section, %struct.cli_exe_section* %408, i64 %idxprom572
  %rva574 = getelementptr inbounds %struct.cli_exe_section, %struct.cli_exe_section* %arrayidx573, i32 0, i32 0
  %409 = load i32, i32* %rva574, align 4
  %sub575 = sub i32 %406, %409
  %conv576 = zext i32 %sub575 to i64
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %401, i8* %add.ptr571, i64 %conv576, i32 1, i1 false)
  %410 = load i8*, i8** %curr, align 8
  %411 = load i32, i32* %key32, align 4
  %idx.ext577 = zext i32 %411 to i64
  %add.ptr578 = getelementptr inbounds i8, i8* %410, i64 %idx.ext577
  %412 = load i32, i32* %j, align 4
  %idxprom579 = sext i32 %412 to i64
  %413 = load %struct.cli_exe_section*, %struct.cli_exe_section** %sections.addr, align 8
  %arrayidx580 = getelementptr inbounds %struct.cli_exe_section, %struct.cli_exe_section* %413, i64 %idxprom579
  %rva581 = getelementptr inbounds %struct.cli_exe_section, %struct.cli_exe_section* %arrayidx580, i32 0, i32 0
  %414 = load i32, i32* %rva581, align 4
  %idx.ext582 = zext i32 %414 to i64
  %idx.neg583 = sub i64 0, %idx.ext582
  %add.ptr584 = getelementptr inbounds i8, i8* %add.ptr578, i64 %idx.neg583
  %415 = load i32, i32* %j, align 4
  %idxprom585 = sext i32 %415 to i64
  %416 = load %struct.cli_exe_section*, %struct.cli_exe_section** %sections.addr, align 8
  %arrayidx586 = getelementptr inbounds %struct.cli_exe_section, %struct.cli_exe_section* %416, i64 %idxprom585
  %vsz587 = getelementptr inbounds %struct.cli_exe_section, %struct.cli_exe_section* %arrayidx586, i32 0, i32 1
  %417 = load i32, i32* %vsz587, align 4
  %418 = load i32, i32* %key32, align 4
  %419 = load i32, i32* %j, align 4
  %idxprom588 = sext i32 %419 to i64
  %420 = load %struct.cli_exe_section*, %struct.cli_exe_section** %sections.addr, align 8
  %arrayidx589 = getelementptr inbounds %struct.cli_exe_section, %struct.cli_exe_section* %420, i64 %idxprom588
  %rva590 = getelementptr inbounds %struct.cli_exe_section, %struct.cli_exe_section* %arrayidx589, i32 0, i32 0
  %421 = load i32, i32* %rva590, align 4
  %sub591 = sub i32 %418, %421
  %sub592 = sub i32 %417, %sub591
  %conv593 = zext i32 %sub592 to i64
  call void @llvm.memset.p0i8.i64(i8* %add.ptr584, i8 0, i64 %conv593, i32 1, i1 false)
  %422 = load i8*, i8** %src.addr, align 8
  %423 = load i32, i32* %j, align 4
  %idxprom594 = sext i32 %423 to i64
  %424 = load %struct.cli_exe_section*, %struct.cli_exe_section** %sections.addr, align 8
  %arrayidx595 = getelementptr inbounds %struct.cli_exe_section, %struct.cli_exe_section* %424, i64 %idxprom594
  %raw596 = getelementptr inbounds %struct.cli_exe_section, %struct.cli_exe_section* %arrayidx595, i32 0, i32 2
  %425 = load i32, i32* %raw596, align 4
  %idx.ext597 = zext i32 %425 to i64
  %add.ptr598 = getelementptr inbounds i8, i8* %422, i64 %idx.ext597
  %426 = load i32, i32* %key32, align 4
  %idx.ext599 = zext i32 %426 to i64
  %add.ptr600 = getelementptr inbounds i8, i8* %add.ptr598, i64 %idx.ext599
  %427 = load i32, i32* %j, align 4
  %idxprom601 = sext i32 %427 to i64
  %428 = load %struct.cli_exe_section*, %struct.cli_exe_section** %sections.addr, align 8
  %arrayidx602 = getelementptr inbounds %struct.cli_exe_section, %struct.cli_exe_section* %428, i64 %idxprom601
  %rva603 = getelementptr inbounds %struct.cli_exe_section, %struct.cli_exe_section* %arrayidx602, i32 0, i32 0
  %429 = load i32, i32* %rva603, align 4
  %idx.ext604 = zext i32 %429 to i64
  %idx.neg605 = sub i64 0, %idx.ext604
  %add.ptr606 = getelementptr inbounds i8, i8* %add.ptr600, i64 %idx.neg605
  %430 = load i8*, i8** %curr, align 8
  %431 = load i32, i32* %key32, align 4
  %idx.ext607 = zext i32 %431 to i64
  %add.ptr608 = getelementptr inbounds i8, i8* %430, i64 %idx.ext607
  %432 = load i32, i32* %j, align 4
  %idxprom609 = sext i32 %432 to i64
  %433 = load %struct.cli_exe_section*, %struct.cli_exe_section** %sections.addr, align 8
  %arrayidx610 = getelementptr inbounds %struct.cli_exe_section, %struct.cli_exe_section* %433, i64 %idxprom609
  %rva611 = getelementptr inbounds %struct.cli_exe_section, %struct.cli_exe_section* %arrayidx610, i32 0, i32 0
  %434 = load i32, i32* %rva611, align 4
  %idx.ext612 = zext i32 %434 to i64
  %idx.neg613 = sub i64 0, %idx.ext612
  %add.ptr614 = getelementptr inbounds i8, i8* %add.ptr608, i64 %idx.neg613
  %435 = load i32, i32* %j, align 4
  %idxprom615 = sext i32 %435 to i64
  %436 = load %struct.cli_exe_section*, %struct.cli_exe_section** %sections.addr, align 8
  %arrayidx616 = getelementptr inbounds %struct.cli_exe_section, %struct.cli_exe_section* %436, i64 %idxprom615
  %rsz617 = getelementptr inbounds %struct.cli_exe_section, %struct.cli_exe_section* %arrayidx616, i32 0, i32 3
  %437 = load i32, i32* %rsz617, align 4
  %438 = load i32, i32* %key32, align 4
  %439 = load i32, i32* %j, align 4
  %idxprom618 = sext i32 %439 to i64
  %440 = load %struct.cli_exe_section*, %struct.cli_exe_section** %sections.addr, align 8
  %arrayidx619 = getelementptr inbounds %struct.cli_exe_section, %struct.cli_exe_section* %440, i64 %idxprom618
  %rva620 = getelementptr inbounds %struct.cli_exe_section, %struct.cli_exe_section* %arrayidx619, i32 0, i32 0
  %441 = load i32, i32* %rva620, align 4
  %sub621 = sub i32 %438, %441
  %sub622 = sub i32 %437, %sub621
  %442 = load i32, i32* %j, align 4
  %idxprom623 = sext i32 %442 to i64
  %443 = load %struct.cli_exe_section*, %struct.cli_exe_section** %sections.addr, align 8
  %arrayidx624 = getelementptr inbounds %struct.cli_exe_section, %struct.cli_exe_section* %443, i64 %idxprom623
  %vsz625 = getelementptr inbounds %struct.cli_exe_section, %struct.cli_exe_section* %arrayidx624, i32 0, i32 1
  %444 = load i32, i32* %vsz625, align 4
  %445 = load i32, i32* %key32, align 4
  %446 = load i32, i32* %j, align 4
  %idxprom626 = sext i32 %446 to i64
  %447 = load %struct.cli_exe_section*, %struct.cli_exe_section** %sections.addr, align 8
  %arrayidx627 = getelementptr inbounds %struct.cli_exe_section, %struct.cli_exe_section* %447, i64 %idxprom626
  %rva628 = getelementptr inbounds %struct.cli_exe_section, %struct.cli_exe_section* %arrayidx627, i32 0, i32 0
  %448 = load i32, i32* %rva628, align 4
  %sub629 = sub i32 %445, %448
  %sub630 = sub i32 %444, %sub629
  %call631 = call i32 @cli_unfsg(i8* %add.ptr606, i8* %add.ptr614, i32 %sub622, i32 %sub630, i8** null, i8** null)
  %tobool632 = icmp ne i32 %call631, 0
  br i1 %tobool632, label %if.then.633, label %if.else.638

if.then.633:                                      ; preds = %if.then.566
  %449 = load i8*, i8** %curr, align 8
  call void @free(i8* %449) #2
  call void (i8*, ...) @cli_dbgmsg(i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str.27, i32 0, i32 0))
  %450 = load i32, i32* %j, align 4
  %idxprom634 = sext i32 %450 to i64
  %451 = load %struct.cli_exe_section*, %struct.cli_exe_section** %sections.addr, align 8
  %arrayidx635 = getelementptr inbounds %struct.cli_exe_section, %struct.cli_exe_section* %451, i64 %idxprom634
  %rsz636 = getelementptr inbounds %struct.cli_exe_section, %struct.cli_exe_section* %arrayidx635, i32 0, i32 3
  %452 = load i32, i32* %rsz636, align 4
  %453 = load i32, i32* %blobsz, align 4
  %add637 = add i32 %453, %452
  store i32 %add637, i32* %blobsz, align 4
  br label %if.end.646

if.else.638:                                      ; preds = %if.then.566
  %454 = load i8*, i8** %curr, align 8
  %455 = load i32, i32* %j, align 4
  %idxprom639 = sext i32 %455 to i64
  %456 = load i8**, i8*** %sects, align 8
  %arrayidx640 = getelementptr inbounds i8*, i8** %456, i64 %idxprom639
  store i8* %454, i8** %arrayidx640, align 8
  %457 = load i32, i32* %j, align 4
  %shl641 = shl i32 1, %457
  %458 = load i32, i32* %bitman, align 4
  %or = or i32 %458, %shl641
  store i32 %or, i32* %bitman, align 4
  call void (i8*, ...) @cli_dbgmsg(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.28, i32 0, i32 0))
  %459 = load i32, i32* %j, align 4
  %idxprom642 = sext i32 %459 to i64
  %460 = load %struct.cli_exe_section*, %struct.cli_exe_section** %sections.addr, align 8
  %arrayidx643 = getelementptr inbounds %struct.cli_exe_section, %struct.cli_exe_section* %460, i64 %idxprom642
  %vsz644 = getelementptr inbounds %struct.cli_exe_section, %struct.cli_exe_section* %arrayidx643, i32 0, i32 1
  %461 = load i32, i32* %vsz644, align 4
  %462 = load i32, i32* %blobsz, align 4
  %add645 = add i32 %462, %461
  store i32 %add645, i32* %blobsz, align 4
  br label %if.end.646

if.end.646:                                       ; preds = %if.else.638, %if.then.633
  br label %if.end.652

if.else.647:                                      ; preds = %if.then.543
  %463 = load i32, i32* %j, align 4
  %idxprom648 = sext i32 %463 to i64
  %464 = load %struct.cli_exe_section*, %struct.cli_exe_section** %sections.addr, align 8
  %arrayidx649 = getelementptr inbounds %struct.cli_exe_section, %struct.cli_exe_section* %464, i64 %idxprom648
  %rsz650 = getelementptr inbounds %struct.cli_exe_section, %struct.cli_exe_section* %arrayidx649, i32 0, i32 3
  %465 = load i32, i32* %rsz650, align 4
  %466 = load i32, i32* %blobsz, align 4
  %add651 = add i32 %466, %465
  store i32 %add651, i32* %blobsz, align 4
  br label %if.end.652

if.end.652:                                       ; preds = %if.else.647, %if.end.646
  br label %if.end.654

if.else.653:                                      ; preds = %land.lhs.true.539, %for.end.536
  call void (i8*, ...) @cli_dbgmsg(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.29, i32 0, i32 0))
  br label %if.end.654

if.end.654:                                       ; preds = %if.else.653, %if.end.652
  br label %if.end.655

if.end.655:                                       ; preds = %if.end.654, %if.end.509
  %467 = load i32, i32* %bitman, align 4
  store i32 %467, i32* %bitmap, align 4
  %468 = load i32, i32* %blobsz, align 4
  %conv656 = sext i32 %468 to i64
  %call657 = call i8* @cli_malloc(i64 %conv656)
  store i8* %call657, i8** %ep, align 8
  %cmp658 = icmp ne i8* %call657, null
  br i1 %cmp658, label %if.then.660, label %if.end.743

if.then.660:                                      ; preds = %if.end.655
  %469 = load i32, i32* %sectcnt.addr, align 4
  %conv661 = sext i32 %469 to i64
  %mul662 = mul i64 36, %conv661
  %call663 = call i8* @cli_malloc(i64 %mul662)
  %470 = bitcast i8* %call663 to %struct.cli_exe_section*
  store %struct.cli_exe_section* %470, %struct.cli_exe_section** %rebhlp, align 8
  %cmp664 = icmp ne %struct.cli_exe_section* %470, null
  br i1 %cmp664, label %if.then.666, label %if.end.742

if.then.666:                                      ; preds = %if.then.660
  %471 = load i8*, i8** %ep, align 8
  store i8* %471, i8** %to, align 8
  store i32 0, i32* %retval667, align 4
  store i32 0, i32* %j, align 4
  br label %for.cond.668

for.cond.668:                                     ; preds = %for.inc.735, %if.then.666
  %472 = load i32, i32* %j, align 4
  %473 = load i32, i32* %sectcnt.addr, align 4
  %cmp669 = icmp slt i32 %472, %473
  br i1 %cmp669, label %for.body.671, label %for.end.737

for.body.671:                                     ; preds = %for.cond.668
  %474 = load i32, i32* %j, align 4
  %cmp672 = icmp sgt i32 %474, 0
  br i1 %cmp672, label %cond.true.674, label %cond.false.684

cond.true.674:                                    ; preds = %for.body.671
  %475 = load i32, i32* %j, align 4
  %sub675 = sub nsw i32 %475, 1
  %idxprom676 = sext i32 %sub675 to i64
  %476 = load %struct.cli_exe_section*, %struct.cli_exe_section** %rebhlp, align 8
  %arrayidx677 = getelementptr inbounds %struct.cli_exe_section, %struct.cli_exe_section* %476, i64 %idxprom676
  %raw678 = getelementptr inbounds %struct.cli_exe_section, %struct.cli_exe_section* %arrayidx677, i32 0, i32 2
  %477 = load i32, i32* %raw678, align 4
  %478 = load i32, i32* %j, align 4
  %sub679 = sub nsw i32 %478, 1
  %idxprom680 = sext i32 %sub679 to i64
  %479 = load %struct.cli_exe_section*, %struct.cli_exe_section** %rebhlp, align 8
  %arrayidx681 = getelementptr inbounds %struct.cli_exe_section, %struct.cli_exe_section* %479, i64 %idxprom680
  %rsz682 = getelementptr inbounds %struct.cli_exe_section, %struct.cli_exe_section* %arrayidx681, i32 0, i32 3
  %480 = load i32, i32* %rsz682, align 4
  %add683 = add i32 %477, %480
  br label %cond.end.685

cond.false.684:                                   ; preds = %for.body.671
  br label %cond.end.685

cond.end.685:                                     ; preds = %cond.false.684, %cond.true.674
  %cond686 = phi i32 [ %add683, %cond.true.674 ], [ 0, %cond.false.684 ]
  %481 = load i32, i32* %j, align 4
  %idxprom687 = sext i32 %481 to i64
  %482 = load %struct.cli_exe_section*, %struct.cli_exe_section** %rebhlp, align 8
  %arrayidx688 = getelementptr inbounds %struct.cli_exe_section, %struct.cli_exe_section* %482, i64 %idxprom687
  %raw689 = getelementptr inbounds %struct.cli_exe_section, %struct.cli_exe_section* %arrayidx688, i32 0, i32 2
  store i32 %cond686, i32* %raw689, align 4
  %483 = load i32, i32* %bitmap, align 4
  %and690 = and i32 %483, 1
  %tobool691 = icmp ne i32 %and690, 0
  br i1 %tobool691, label %cond.true.692, label %cond.false.696

cond.true.692:                                    ; preds = %cond.end.685
  %484 = load i32, i32* %j, align 4
  %idxprom693 = sext i32 %484 to i64
  %485 = load %struct.cli_exe_section*, %struct.cli_exe_section** %sections.addr, align 8
  %arrayidx694 = getelementptr inbounds %struct.cli_exe_section, %struct.cli_exe_section* %485, i64 %idxprom693
  %vsz695 = getelementptr inbounds %struct.cli_exe_section, %struct.cli_exe_section* %arrayidx694, i32 0, i32 1
  %486 = load i32, i32* %vsz695, align 4
  br label %cond.end.700

cond.false.696:                                   ; preds = %cond.end.685
  %487 = load i32, i32* %j, align 4
  %idxprom697 = sext i32 %487 to i64
  %488 = load %struct.cli_exe_section*, %struct.cli_exe_section** %sections.addr, align 8
  %arrayidx698 = getelementptr inbounds %struct.cli_exe_section, %struct.cli_exe_section* %488, i64 %idxprom697
  %rsz699 = getelementptr inbounds %struct.cli_exe_section, %struct.cli_exe_section* %arrayidx698, i32 0, i32 3
  %489 = load i32, i32* %rsz699, align 4
  br label %cond.end.700

cond.end.700:                                     ; preds = %cond.false.696, %cond.true.692
  %cond701 = phi i32 [ %486, %cond.true.692 ], [ %489, %cond.false.696 ]
  %490 = load i32, i32* %j, align 4
  %idxprom702 = sext i32 %490 to i64
  %491 = load %struct.cli_exe_section*, %struct.cli_exe_section** %rebhlp, align 8
  %arrayidx703 = getelementptr inbounds %struct.cli_exe_section, %struct.cli_exe_section* %491, i64 %idxprom702
  %rsz704 = getelementptr inbounds %struct.cli_exe_section, %struct.cli_exe_section* %arrayidx703, i32 0, i32 3
  store i32 %cond701, i32* %rsz704, align 4
  %492 = load i32, i32* %j, align 4
  %idxprom705 = sext i32 %492 to i64
  %493 = load %struct.cli_exe_section*, %struct.cli_exe_section** %sections.addr, align 8
  %arrayidx706 = getelementptr inbounds %struct.cli_exe_section, %struct.cli_exe_section* %493, i64 %idxprom705
  %rva707 = getelementptr inbounds %struct.cli_exe_section, %struct.cli_exe_section* %arrayidx706, i32 0, i32 0
  %494 = load i32, i32* %rva707, align 4
  %495 = load i32, i32* %j, align 4
  %idxprom708 = sext i32 %495 to i64
  %496 = load %struct.cli_exe_section*, %struct.cli_exe_section** %rebhlp, align 8
  %arrayidx709 = getelementptr inbounds %struct.cli_exe_section, %struct.cli_exe_section* %496, i64 %idxprom708
  %rva710 = getelementptr inbounds %struct.cli_exe_section, %struct.cli_exe_section* %arrayidx709, i32 0, i32 0
  store i32 %494, i32* %rva710, align 4
  %497 = load i32, i32* %j, align 4
  %idxprom711 = sext i32 %497 to i64
  %498 = load %struct.cli_exe_section*, %struct.cli_exe_section** %sections.addr, align 8
  %arrayidx712 = getelementptr inbounds %struct.cli_exe_section, %struct.cli_exe_section* %498, i64 %idxprom711
  %vsz713 = getelementptr inbounds %struct.cli_exe_section, %struct.cli_exe_section* %arrayidx712, i32 0, i32 1
  %499 = load i32, i32* %vsz713, align 4
  %500 = load i32, i32* %j, align 4
  %idxprom714 = sext i32 %500 to i64
  %501 = load %struct.cli_exe_section*, %struct.cli_exe_section** %rebhlp, align 8
  %arrayidx715 = getelementptr inbounds %struct.cli_exe_section, %struct.cli_exe_section* %501, i64 %idxprom714
  %vsz716 = getelementptr inbounds %struct.cli_exe_section, %struct.cli_exe_section* %arrayidx715, i32 0, i32 1
  store i32 %499, i32* %vsz716, align 4
  %502 = load i8*, i8** %to, align 8
  %503 = load i32, i32* %j, align 4
  %idxprom717 = sext i32 %503 to i64
  %504 = load i8**, i8*** %sects, align 8
  %arrayidx718 = getelementptr inbounds i8*, i8** %504, i64 %idxprom717
  %505 = load i8*, i8** %arrayidx718, align 8
  %506 = load i32, i32* %j, align 4
  %idxprom719 = sext i32 %506 to i64
  %507 = load %struct.cli_exe_section*, %struct.cli_exe_section** %rebhlp, align 8
  %arrayidx720 = getelementptr inbounds %struct.cli_exe_section, %struct.cli_exe_section* %507, i64 %idxprom719
  %rsz721 = getelementptr inbounds %struct.cli_exe_section, %struct.cli_exe_section* %arrayidx720, i32 0, i32 3
  %508 = load i32, i32* %rsz721, align 4
  %conv722 = zext i32 %508 to i64
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %502, i8* %505, i64 %conv722, i32 1, i1 false)
  %509 = load i32, i32* %j, align 4
  %idxprom723 = sext i32 %509 to i64
  %510 = load %struct.cli_exe_section*, %struct.cli_exe_section** %rebhlp, align 8
  %arrayidx724 = getelementptr inbounds %struct.cli_exe_section, %struct.cli_exe_section* %510, i64 %idxprom723
  %rsz725 = getelementptr inbounds %struct.cli_exe_section, %struct.cli_exe_section* %arrayidx724, i32 0, i32 3
  %511 = load i32, i32* %rsz725, align 4
  %512 = load i8*, i8** %to, align 8
  %idx.ext726 = zext i32 %511 to i64
  %add.ptr727 = getelementptr inbounds i8, i8* %512, i64 %idx.ext726
  store i8* %add.ptr727, i8** %to, align 8
  %513 = load i32, i32* %bitmap, align 4
  %and728 = and i32 %513, 1
  %tobool729 = icmp ne i32 %and728, 0
  br i1 %tobool729, label %if.then.730, label %if.end.733

if.then.730:                                      ; preds = %cond.end.700
  %514 = load i32, i32* %j, align 4
  %idxprom731 = sext i32 %514 to i64
  %515 = load i8**, i8*** %sects, align 8
  %arrayidx732 = getelementptr inbounds i8*, i8** %515, i64 %idxprom731
  %516 = load i8*, i8** %arrayidx732, align 8
  call void @free(i8* %516) #2
  br label %if.end.733

if.end.733:                                       ; preds = %if.then.730, %cond.end.700
  %517 = load i32, i32* %bitmap, align 4
  %shr734 = lshr i32 %517, 1
  store i32 %shr734, i32* %bitmap, align 4
  br label %for.inc.735

for.inc.735:                                      ; preds = %if.end.733
  %518 = load i32, i32* %j, align 4
  %inc736 = add nsw i32 %518, 1
  store i32 %inc736, i32* %j, align 4
  br label %for.cond.668

for.end.737:                                      ; preds = %for.cond.668
  %519 = load i8*, i8** %ep, align 8
  %520 = load %struct.cli_exe_section*, %struct.cli_exe_section** %rebhlp, align 8
  %521 = load i32, i32* %sectcnt.addr, align 4
  %522 = load i32, i32* %desc.addr, align 4
  %call738 = call i32 @cli_rebuildpe(i8* %519, %struct.cli_exe_section* %520, i32 %521, i32 4194304, i32 4096, i32 0, i32 0, i32 %522)
  %tobool739 = icmp ne i32 %call738, 0
  br i1 %tobool739, label %if.end.741, label %if.then.740

if.then.740:                                      ; preds = %for.end.737
  call void (i8*, ...) @cli_dbgmsg(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.30, i32 0, i32 0))
  store i32 1, i32* %retval667, align 4
  br label %if.end.741

if.end.741:                                       ; preds = %if.then.740, %for.end.737
  %523 = load %struct.cli_exe_section*, %struct.cli_exe_section** %rebhlp, align 8
  %524 = bitcast %struct.cli_exe_section* %523 to i8*
  call void @free(i8* %524) #2
  %525 = load i8*, i8** %ep, align 8
  call void @free(i8* %525) #2
  %526 = load i8**, i8*** %sects, align 8
  %527 = bitcast i8** %526 to i8*
  call void @free(i8* %527) #2
  %528 = load i32, i32* %retval667, align 4
  store i32 %528, i32* %retval
  br label %return

if.end.742:                                       ; preds = %if.then.660
  %529 = load i8*, i8** %ep, align 8
  call void @free(i8* %529) #2
  br label %if.end.743

if.end.743:                                       ; preds = %if.end.742, %if.end.655
  %530 = load i32, i32* %bitman, align 4
  call void (i8*, ...) @cli_dbgmsg(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.31, i32 0, i32 0), i32 %530)
  store i32 0, i32* %j, align 4
  br label %for.cond.744

for.cond.744:                                     ; preds = %for.inc.755, %if.end.743
  %531 = load i32, i32* %j, align 4
  %532 = load i32, i32* %sectcnt.addr, align 4
  %cmp745 = icmp slt i32 %531, %532
  br i1 %cmp745, label %for.body.747, label %for.end.757

for.body.747:                                     ; preds = %for.cond.744
  %533 = load i32, i32* %bitmap, align 4
  %and748 = and i32 %533, 1
  %tobool749 = icmp ne i32 %and748, 0
  br i1 %tobool749, label %if.then.750, label %if.end.753

if.then.750:                                      ; preds = %for.body.747
  %534 = load i32, i32* %j, align 4
  %idxprom751 = sext i32 %534 to i64
  %535 = load i8**, i8*** %sects, align 8
  %arrayidx752 = getelementptr inbounds i8*, i8** %535, i64 %idxprom751
  %536 = load i8*, i8** %arrayidx752, align 8
  call void @free(i8* %536) #2
  br label %if.end.753

if.end.753:                                       ; preds = %if.then.750, %for.body.747
  %537 = load i32, i32* %bitman, align 4
  %shr754 = lshr i32 %537, 1
  store i32 %shr754, i32* %bitman, align 4
  br label %for.inc.755

for.inc.755:                                      ; preds = %if.end.753
  %538 = load i32, i32* %j, align 4
  %inc756 = add nsw i32 %538, 1
  store i32 %inc756, i32* %j, align 4
  br label %for.cond.744

for.end.757:                                      ; preds = %for.cond.744
  %539 = load i8**, i8*** %sects, align 8
  %540 = bitcast i8** %539 to i8*
  call void @free(i8* %540) #2
  store i32 1, i32* %retval
  br label %return

return:                                           ; preds = %for.end.757, %if.end.741, %for.end.508, %if.then.410, %if.then.396, %if.then.385, %if.then.346, %if.then.336, %if.then.309, %if.then.286, %if.then.259, %if.then.234, %if.then.195, %if.then.147, %if.then.124, %if.then.99, %if.then.29, %if.then.24, %if.then.18, %if.then
  %541 = load i32, i32* %retval
  ret i32 %541
}

declare void @cli_dbgmsg(i8*, ...) #1

declare i8* @cli_malloc(i64) #1

; Function Attrs: nounwind
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* nocapture, i8* nocapture readonly, i64, i32, i1) #2

; Function Attrs: nounwind
declare void @free(i8*) #3

; Function Attrs: nounwind uwtable
define internal i32 @summit(i8* %src, i32 %size) #0 {
entry:
  %src.addr = alloca i8*, align 8
  %size.addr = alloca i32, align 4
  %eax = alloca i32, align 4
  %ebx = alloca i32, align 4
  %i = alloca i32, align 4
  %swap = alloca i32, align 4
  store i8* %src, i8** %src.addr, align 8
  store i32 %size, i32* %size.addr, align 4
  store i32 -1, i32* %eax, align 4
  store i32 -1, i32* %ebx, align 4
  br label %while.cond

while.cond:                                       ; preds = %for.end, %entry
  %0 = load i32, i32* %size.addr, align 4
  %tobool = icmp ne i32 %0, 0
  br i1 %tobool, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %1 = load i8*, i8** %src.addr, align 8
  %incdec.ptr = getelementptr inbounds i8, i8* %1, i32 1
  store i8* %incdec.ptr, i8** %src.addr, align 8
  %2 = load i8, i8* %1, align 1
  %conv = sext i8 %2 to i32
  %shl = shl i32 %conv, 8
  %and = and i32 %shl, 65280
  %3 = load i32, i32* %eax, align 4
  %xor = xor i32 %3, %and
  store i32 %xor, i32* %eax, align 4
  %4 = load i32, i32* %eax, align 4
  %shr = lshr i32 %4, 3
  %and1 = and i32 %shr, 536870911
  store i32 %and1, i32* %eax, align 4
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %while.body
  %5 = load i32, i32* %i, align 4
  %cmp = icmp slt i32 %5, 4
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %6 = load i32, i32* %ebx, align 4
  %shr3 = lshr i32 %6, 8
  %and4 = and i32 %shr3, 255
  %7 = load i32, i32* %eax, align 4
  %xor5 = xor i32 %7, %and4
  store i32 %xor5, i32* %eax, align 4
  %8 = load i32, i32* %eax, align 4
  %add = add i32 %8, 2013372680
  store i32 %add, i32* %eax, align 4
  %9 = load i32, i32* %ebx, align 4
  %10 = load i32, i32* %eax, align 4
  %xor6 = xor i32 %10, %9
  store i32 %xor6, i32* %eax, align 4
  %11 = load i32, i32* %eax, align 4
  %12 = load i32, i32* %ebx, align 4
  %conv7 = zext i32 %12 to i64
  %and8 = and i64 %conv7, 31
  %sh_prom = trunc i64 %and8 to i32
  %shr9 = lshr i32 %11, %sh_prom
  %13 = load i32, i32* %eax, align 4
  %14 = load i32, i32* %ebx, align 4
  %conv10 = zext i32 %14 to i64
  %and11 = and i64 %conv10, 31
  %sub = sub i64 32, %and11
  %sh_prom12 = trunc i64 %sub to i32
  %shl13 = shl i32 %13, %sh_prom12
  %or = or i32 %shr9, %shl13
  store i32 %or, i32* %eax, align 4
  %15 = load i32, i32* %eax, align 4
  store i32 %15, i32* %swap, align 4
  %16 = load i32, i32* %ebx, align 4
  store i32 %16, i32* %eax, align 4
  %17 = load i32, i32* %swap, align 4
  store i32 %17, i32* %ebx, align 4
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %18 = load i32, i32* %i, align 4
  %inc = add nsw i32 %18, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %19 = load i32, i32* %size.addr, align 4
  %dec = add nsw i32 %19, -1
  store i32 %dec, i32* %size.addr, align 4
  br label %while.cond

while.end:                                        ; preds = %while.cond
  %20 = load i32, i32* %ebx, align 4
  ret i32 %20
}

; Function Attrs: nounwind uwtable
define internal signext i8 @exec86(i8 zeroext %aelle, i8 zeroext %cielle, i8* %curremu, i32* %retval1) #0 {
entry:
  %retval = alloca i8, align 1
  %aelle.addr = alloca i8, align 1
  %cielle.addr = alloca i8, align 1
  %curremu.addr = alloca i8*, align 8
  %retval.addr = alloca i32*, align 8
  %len = alloca i32, align 4
  %opcode = alloca i8, align 1
  %support = alloca i8, align 1
  store i8 %aelle, i8* %aelle.addr, align 1
  store i8 %cielle, i8* %cielle.addr, align 1
  store i8* %curremu, i8** %curremu.addr, align 8
  store i32* %retval1, i32** %retval.addr, align 8
  store i32 0, i32* %len, align 4
  %0 = load i32*, i32** %retval.addr, align 8
  store i32 0, i32* %0, align 4
  br label %while.cond

while.cond:                                       ; preds = %sw.epilog, %entry
  %1 = load i32, i32* %len, align 4
  %cmp = icmp slt i32 %1, 36
  br i1 %cmp, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %2 = load i32, i32* %len, align 4
  %idxprom = sext i32 %2 to i64
  %3 = load i8*, i8** %curremu.addr, align 8
  %arrayidx = getelementptr inbounds i8, i8* %3, i64 %idxprom
  %4 = load i8, i8* %arrayidx, align 1
  store i8 %4, i8* %opcode, align 1
  %5 = load i32, i32* %len, align 4
  %inc = add nsw i32 %5, 1
  store i32 %inc, i32* %len, align 4
  %6 = load i8, i8* %opcode, align 1
  %conv = zext i8 %6 to i32
  switch i32 %conv, label %sw.default [
    i32 235, label %sw.bb
    i32 10, label %sw.bb.3
    i32 144, label %sw.bb.5
    i32 248, label %sw.bb.5
    i32 249, label %sw.bb.5
    i32 2, label %sw.bb.6
    i32 42, label %sw.bb.11
    i32 4, label %sw.bb.16
    i32 44, label %sw.bb.24
    i32 50, label %sw.bb.32
    i32 52, label %sw.bb.37
    i32 254, label %sw.bb.45
    i32 192, label %sw.bb.53
  ]

sw.bb:                                            ; preds = %while.body
  %7 = load i32, i32* %len, align 4
  %inc2 = add nsw i32 %7, 1
  store i32 %inc2, i32* %len, align 4
  br label %sw.bb.3

sw.bb.3:                                          ; preds = %while.body, %sw.bb
  %8 = load i32, i32* %len, align 4
  %inc4 = add nsw i32 %8, 1
  store i32 %inc4, i32* %len, align 4
  br label %sw.bb.5

sw.bb.5:                                          ; preds = %while.body, %while.body, %while.body, %sw.bb.3
  br label %sw.epilog

sw.bb.6:                                          ; preds = %while.body
  %9 = load i8, i8* %cielle.addr, align 1
  %conv7 = zext i8 %9 to i32
  %10 = load i8, i8* %aelle.addr, align 1
  %conv8 = zext i8 %10 to i32
  %add = add nsw i32 %conv8, %conv7
  %conv9 = trunc i32 %add to i8
  store i8 %conv9, i8* %aelle.addr, align 1
  %11 = load i32, i32* %len, align 4
  %inc10 = add nsw i32 %11, 1
  store i32 %inc10, i32* %len, align 4
  br label %sw.epilog

sw.bb.11:                                         ; preds = %while.body
  %12 = load i8, i8* %cielle.addr, align 1
  %conv12 = zext i8 %12 to i32
  %13 = load i8, i8* %aelle.addr, align 1
  %conv13 = zext i8 %13 to i32
  %sub = sub nsw i32 %conv13, %conv12
  %conv14 = trunc i32 %sub to i8
  store i8 %conv14, i8* %aelle.addr, align 1
  %14 = load i32, i32* %len, align 4
  %inc15 = add nsw i32 %14, 1
  store i32 %inc15, i32* %len, align 4
  br label %sw.epilog

sw.bb.16:                                         ; preds = %while.body
  %15 = load i32, i32* %len, align 4
  %idxprom17 = sext i32 %15 to i64
  %16 = load i8*, i8** %curremu.addr, align 8
  %arrayidx18 = getelementptr inbounds i8, i8* %16, i64 %idxprom17
  %17 = load i8, i8* %arrayidx18, align 1
  %conv19 = sext i8 %17 to i32
  %18 = load i8, i8* %aelle.addr, align 1
  %conv20 = zext i8 %18 to i32
  %add21 = add nsw i32 %conv20, %conv19
  %conv22 = trunc i32 %add21 to i8
  store i8 %conv22, i8* %aelle.addr, align 1
  %19 = load i32, i32* %len, align 4
  %inc23 = add nsw i32 %19, 1
  store i32 %inc23, i32* %len, align 4
  br label %sw.epilog

sw.bb.24:                                         ; preds = %while.body
  %20 = load i32, i32* %len, align 4
  %idxprom25 = sext i32 %20 to i64
  %21 = load i8*, i8** %curremu.addr, align 8
  %arrayidx26 = getelementptr inbounds i8, i8* %21, i64 %idxprom25
  %22 = load i8, i8* %arrayidx26, align 1
  %conv27 = sext i8 %22 to i32
  %23 = load i8, i8* %aelle.addr, align 1
  %conv28 = zext i8 %23 to i32
  %sub29 = sub nsw i32 %conv28, %conv27
  %conv30 = trunc i32 %sub29 to i8
  store i8 %conv30, i8* %aelle.addr, align 1
  %24 = load i32, i32* %len, align 4
  %inc31 = add nsw i32 %24, 1
  store i32 %inc31, i32* %len, align 4
  br label %sw.epilog

sw.bb.32:                                         ; preds = %while.body
  %25 = load i8, i8* %cielle.addr, align 1
  %conv33 = zext i8 %25 to i32
  %26 = load i8, i8* %aelle.addr, align 1
  %conv34 = zext i8 %26 to i32
  %xor = xor i32 %conv34, %conv33
  %conv35 = trunc i32 %xor to i8
  store i8 %conv35, i8* %aelle.addr, align 1
  %27 = load i32, i32* %len, align 4
  %inc36 = add nsw i32 %27, 1
  store i32 %inc36, i32* %len, align 4
  br label %sw.epilog

sw.bb.37:                                         ; preds = %while.body
  %28 = load i32, i32* %len, align 4
  %idxprom38 = sext i32 %28 to i64
  %29 = load i8*, i8** %curremu.addr, align 8
  %arrayidx39 = getelementptr inbounds i8, i8* %29, i64 %idxprom38
  %30 = load i8, i8* %arrayidx39, align 1
  %conv40 = sext i8 %30 to i32
  %31 = load i8, i8* %aelle.addr, align 1
  %conv41 = zext i8 %31 to i32
  %xor42 = xor i32 %conv41, %conv40
  %conv43 = trunc i32 %xor42 to i8
  store i8 %conv43, i8* %aelle.addr, align 1
  %32 = load i32, i32* %len, align 4
  %inc44 = add nsw i32 %32, 1
  store i32 %inc44, i32* %len, align 4
  br label %sw.epilog

sw.bb.45:                                         ; preds = %while.body
  %33 = load i32, i32* %len, align 4
  %idxprom46 = sext i32 %33 to i64
  %34 = load i8*, i8** %curremu.addr, align 8
  %arrayidx47 = getelementptr inbounds i8, i8* %34, i64 %idxprom46
  %35 = load i8, i8* %arrayidx47, align 1
  %conv48 = sext i8 %35 to i32
  %cmp49 = icmp eq i32 %conv48, -64
  br i1 %cmp49, label %if.then, label %if.else

if.then:                                          ; preds = %sw.bb.45
  %36 = load i8, i8* %aelle.addr, align 1
  %inc51 = add i8 %36, 1
  store i8 %inc51, i8* %aelle.addr, align 1
  br label %if.end

if.else:                                          ; preds = %sw.bb.45
  %37 = load i8, i8* %aelle.addr, align 1
  %dec = add i8 %37, -1
  store i8 %dec, i8* %aelle.addr, align 1
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %38 = load i32, i32* %len, align 4
  %inc52 = add nsw i32 %38, 1
  store i32 %inc52, i32* %len, align 4
  br label %sw.epilog

sw.bb.53:                                         ; preds = %while.body
  %39 = load i32, i32* %len, align 4
  %idxprom54 = sext i32 %39 to i64
  %40 = load i8*, i8** %curremu.addr, align 8
  %arrayidx55 = getelementptr inbounds i8, i8* %40, i64 %idxprom54
  %41 = load i8, i8* %arrayidx55, align 1
  store i8 %41, i8* %support, align 1
  %42 = load i32, i32* %len, align 4
  %inc56 = add nsw i32 %42, 1
  store i32 %inc56, i32* %len, align 4
  %43 = load i8, i8* %support, align 1
  %conv57 = zext i8 %43 to i32
  %cmp58 = icmp eq i32 %conv57, 192
  br i1 %cmp58, label %if.then.60, label %if.else.73

if.then.60:                                       ; preds = %sw.bb.53
  %44 = load i8, i8* %aelle.addr, align 1
  %conv61 = zext i8 %44 to i32
  %45 = load i32, i32* %len, align 4
  %idxprom62 = sext i32 %45 to i64
  %46 = load i8*, i8** %curremu.addr, align 8
  %arrayidx63 = getelementptr inbounds i8, i8* %46, i64 %idxprom62
  %47 = load i8, i8* %arrayidx63, align 1
  %conv64 = sext i8 %47 to i64
  %rem = urem i64 %conv64, 8
  %sh_prom = trunc i64 %rem to i32
  %shl = shl i32 %conv61, %sh_prom
  %48 = load i8, i8* %aelle.addr, align 1
  %conv65 = zext i8 %48 to i32
  %49 = load i32, i32* %len, align 4
  %idxprom66 = sext i32 %49 to i64
  %50 = load i8*, i8** %curremu.addr, align 8
  %arrayidx67 = getelementptr inbounds i8, i8* %50, i64 %idxprom66
  %51 = load i8, i8* %arrayidx67, align 1
  %conv68 = sext i8 %51 to i64
  %rem69 = urem i64 %conv68, 8
  %sub70 = sub i64 8, %rem69
  %sh_prom71 = trunc i64 %sub70 to i32
  %shr = ashr i32 %conv65, %sh_prom71
  %or = or i32 %shl, %shr
  %conv72 = trunc i32 %or to i8
  store i8 %conv72, i8* %aelle.addr, align 1
  br label %if.end.91

if.else.73:                                       ; preds = %sw.bb.53
  %52 = load i8, i8* %aelle.addr, align 1
  %conv74 = zext i8 %52 to i32
  %53 = load i32, i32* %len, align 4
  %idxprom75 = sext i32 %53 to i64
  %54 = load i8*, i8** %curremu.addr, align 8
  %arrayidx76 = getelementptr inbounds i8, i8* %54, i64 %idxprom75
  %55 = load i8, i8* %arrayidx76, align 1
  %conv77 = sext i8 %55 to i64
  %rem78 = urem i64 %conv77, 8
  %sh_prom79 = trunc i64 %rem78 to i32
  %shr80 = ashr i32 %conv74, %sh_prom79
  %56 = load i8, i8* %aelle.addr, align 1
  %conv81 = zext i8 %56 to i32
  %57 = load i32, i32* %len, align 4
  %idxprom82 = sext i32 %57 to i64
  %58 = load i8*, i8** %curremu.addr, align 8
  %arrayidx83 = getelementptr inbounds i8, i8* %58, i64 %idxprom82
  %59 = load i8, i8* %arrayidx83, align 1
  %conv84 = sext i8 %59 to i64
  %rem85 = urem i64 %conv84, 8
  %sub86 = sub i64 8, %rem85
  %sh_prom87 = trunc i64 %sub86 to i32
  %shl88 = shl i32 %conv81, %sh_prom87
  %or89 = or i32 %shr80, %shl88
  %conv90 = trunc i32 %or89 to i8
  store i8 %conv90, i8* %aelle.addr, align 1
  br label %if.end.91

if.end.91:                                        ; preds = %if.else.73, %if.then.60
  %60 = load i32, i32* %len, align 4
  %inc92 = add nsw i32 %60, 1
  store i32 %inc92, i32* %len, align 4
  br label %sw.epilog

sw.default:                                       ; preds = %while.body
  %61 = load i8, i8* %opcode, align 1
  %conv93 = zext i8 %61 to i32
  call void (i8*, ...) @cli_dbgmsg(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.32, i32 0, i32 0), i32 %conv93)
  %62 = load i32*, i32** %retval.addr, align 8
  store i32 1, i32* %62, align 4
  %63 = load i8, i8* %aelle.addr, align 1
  store i8 %63, i8* %retval
  br label %return

sw.epilog:                                        ; preds = %if.end.91, %if.end, %sw.bb.37, %sw.bb.32, %sw.bb.24, %sw.bb.16, %sw.bb.11, %sw.bb.6, %sw.bb.5
  br label %while.cond

while.end:                                        ; preds = %while.cond
  %64 = load i32, i32* %len, align 4
  %cmp94 = icmp ne i32 %64, 36
  br i1 %cmp94, label %if.then.101, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %while.end
  %65 = load i32, i32* %len, align 4
  %idxprom96 = sext i32 %65 to i64
  %66 = load i8*, i8** %curremu.addr, align 8
  %arrayidx97 = getelementptr inbounds i8, i8* %66, i64 %idxprom96
  %67 = load i8, i8* %arrayidx97, align 1
  %conv98 = sext i8 %67 to i32
  %cmp99 = icmp ne i32 %conv98, -86
  br i1 %cmp99, label %if.then.101, label %if.end.102

if.then.101:                                      ; preds = %lor.lhs.false, %while.end
  call void (i8*, ...) @cli_dbgmsg(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.33, i32 0, i32 0))
  %68 = load i32*, i32** %retval.addr, align 8
  store i32 1, i32* %68, align 4
  br label %if.end.102

if.end.102:                                       ; preds = %if.then.101, %lor.lhs.false
  %69 = load i8, i8* %aelle.addr, align 1
  store i8 %69, i8* %retval
  br label %return

return:                                           ; preds = %if.end.102, %sw.default
  %70 = load i8, i8* %retval
  ret i8 %70
}

declare i8* @cli_calloc(i64, i64) #1

declare i32 @cli_unfsg(i8*, i8*, i32, i32, i8**, i8**) #1

; Function Attrs: nounwind
declare void @llvm.memset.p0i8.i64(i8* nocapture, i8, i64, i32, i1) #2

declare i32 @cli_rebuildpe(i8*, %struct.cli_exe_section*, i32, i32, i32, i32, i32, i32) #1

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind }
attributes #3 = { nounwind "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.ident = !{!0}

!0 = !{!"clang version 3.7.0 (tags/RELEASE_370/final)"}
