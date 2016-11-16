; ModuleID = '41.mailstats.bc'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sm_file = type { i8*, i8*, i32, i32, i64, i16, %struct.smbuf, i32, i8*, i32, i32 (%struct.sm_file*)*, i64 (%struct.sm_file*, i8*, i64)*, i64 (%struct.sm_file*, i64, i32)*, i64 (%struct.sm_file*, i8*, i64)*, i32 (%struct.sm_file*, i8*, i32, i8*)*, i32 (%struct.sm_file*, i32, i8*)*, i32 (%struct.sm_file*, i32, i8*)*, i32, i32, i8*, %struct.sm_file*, %struct.sm_file*, %struct.smbuf, i8*, i32, [3 x i8], [1 x i8], i32, i64, i32 }
%struct.smbuf = type { i8*, i32 }
%struct.statistics = type { i32, i32, i64, i16, i64, i64, i64, [25 x i64], [25 x i64], [25 x i64], [25 x i64], [25 x i64], [25 x i64], [25 x i64] }

@.str = private unnamed_addr constant [9 x i8] c"cC:f:opP\00", align 1
@optarg = external global i8*, align 8
@SmIoF = external global [0 x %struct.sm_file], align 8
@.str.1 = private unnamed_addr constant [62 x i8] c"usage: mailstats [-C cffile] [-c] [-P] [-f stfile] [-o] [-p]\0A\00", align 1
@optind = external global i32, align 4
@SmFtStdio_def = external global %struct.sm_file, align 8
@.str.2 = private unnamed_addr constant [12 x i8] c"mailstats: \00", align 1
@.str.3 = private unnamed_addr constant [5 x i8] c"prog\00", align 1
@.str.4 = private unnamed_addr constant [7 x i8] c"*file*\00", align 1
@.str.5 = private unnamed_addr constant [10 x i8] c"*include*\00", align 1
@.str.6 = private unnamed_addr constant [12 x i8] c" StatusFile\00", align 1
@.str.7 = private unnamed_addr constant [40 x i8] c"StatusFile filename too long: %.30s...\0A\00", align 1
@.str.8 = private unnamed_addr constant [35 x i8] c"Too many mailers defined, %d max.\0A\00", align 1
@.str.9 = private unnamed_addr constant [39 x i8] c"mailstats: no statistics file located\0A\00", align 1
@.str.10 = private unnamed_addr constant [41 x i8] c"mailstats: incorrect magic number in %s\0A\00", align 1
@.str.11 = private unnamed_addr constant [58 x i8] c"mailstats version (%d) incompatible with %s version (%d)\0A\00", align 1
@.str.12 = private unnamed_addr constant [31 x i8] c"mailstats: file size changed.\0A\00", align 1
@.str.13 = private unnamed_addr constant [9 x i8] c"%ld %ld\0A\00", align 1
@.str.14 = private unnamed_addr constant [19 x i8] c"Statistics from %s\00", align 1
@.str.15 = private unnamed_addr constant [62 x i8] c" M   msgsfr  bytes_from   msgsto    bytes_to  msgsrej msgsdis\00", align 1
@.str.16 = private unnamed_addr constant [9 x i8] c" msgsqur\00", align 1
@.str.17 = private unnamed_addr constant [4 x i8] c"%s\0A\00", align 1
@.str.18 = private unnamed_addr constant [9 x i8] c"  Mailer\00", align 1
@.str.19 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.20 = private unnamed_addr constant [39 x i8] c"%2d %8ld %10ld %8ld %10ld   %6ld  %6ld\00", align 1
@.str.21 = private unnamed_addr constant [41 x i8] c"%2d %8ld %10ldK %8ld %10ldK   %6ld  %6ld\00", align 1
@.str.22 = private unnamed_addr constant [7 x i8] c"  %6ld\00", align 1
@.str.23 = private unnamed_addr constant [5 x i8] c"  %s\00", align 1
@.str.24 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@.str.25 = private unnamed_addr constant [38 x i8] c" T %8ld %10ld %8ld %10ld   %6ld  %6ld\00", align 1
@.str.26 = private unnamed_addr constant [19 x i8] c" C %8ld %8ld %6ld\0A\00", align 1
@.str.27 = private unnamed_addr constant [62 x i8] c"=============================================================\00", align 1
@.str.28 = private unnamed_addr constant [9 x i8] c"========\00", align 1
@.str.29 = private unnamed_addr constant [40 x i8] c" T %8ld %10ldK %8ld %10ldK   %6ld  %6ld\00", align 1
@.str.30 = private unnamed_addr constant [33 x i8] c" C %8ld %10s  %8ld %10s    %6ld\0A\00", align 1

; Function Attrs: nounwind uwtable
define i32 @main(i32 %argc, i8** %argv) #0 {
entry:
  %retval = alloca i32, align 4
  %argc.addr = alloca i32, align 4
  %argv.addr = alloca i8**, align 8
  %i = alloca i32, align 4
  %mno = alloca i32, align 4
  %save_errno = alloca i32, align 4
  %ch = alloca i32, align 4
  %fd = alloca i32, align 4
  %sfile = alloca i8*, align 8
  %cfile = alloca i8*, align 8
  %cfp = alloca %struct.sm_file*, align 8
  %mnames = alloca i32, align 4
  %progmode = alloca i32, align 4
  %trunc = alloca i32, align 4
  %frmsgs = alloca i64, align 8
  %frbytes = alloca i64, align 8
  %tomsgs = alloca i64, align 8
  %tobytes = alloca i64, align 8
  %rejmsgs = alloca i64, align 8
  %dismsgs = alloca i64, align 8
  %quarmsgs = alloca i64, align 8
  %now = alloca i64, align 8
  %mtable = alloca [25 x [21 x i8]], align 16
  %sfilebuf = alloca [4096 x i8], align 16
  %buf = alloca [2048 x i8], align 16
  %stats = alloca %struct.statistics, align 8
  %b = alloca i8*, align 8
  %s = alloca i8*, align 8
  %m = alloca i8*, align 8
  %cleanup.dest.slot = alloca i32
  %__s1_len = alloca i64, align 8
  %__s2_len = alloca i64, align 8
  %tmp = alloca i32, align 4
  %format = alloca i8*, align 8
  store i32 0, i32* %retval
  store i32 %argc, i32* %argc.addr, align 4, !tbaa !1
  store i8** %argv, i8*** %argv.addr, align 8, !tbaa !5
  %0 = bitcast i32* %i to i8*
  call void @llvm.lifetime.start(i64 4, i8* %0) #1
  %1 = bitcast i32* %mno to i8*
  call void @llvm.lifetime.start(i64 4, i8* %1) #1
  %2 = bitcast i32* %save_errno to i8*
  call void @llvm.lifetime.start(i64 4, i8* %2) #1
  %3 = bitcast i32* %ch to i8*
  call void @llvm.lifetime.start(i64 4, i8* %3) #1
  %4 = bitcast i32* %fd to i8*
  call void @llvm.lifetime.start(i64 4, i8* %4) #1
  %5 = bitcast i8** %sfile to i8*
  call void @llvm.lifetime.start(i64 8, i8* %5) #1
  %6 = bitcast i8** %cfile to i8*
  call void @llvm.lifetime.start(i64 8, i8* %6) #1
  %7 = bitcast %struct.sm_file** %cfp to i8*
  call void @llvm.lifetime.start(i64 8, i8* %7) #1
  %8 = bitcast i32* %mnames to i8*
  call void @llvm.lifetime.start(i64 4, i8* %8) #1
  %9 = bitcast i32* %progmode to i8*
  call void @llvm.lifetime.start(i64 4, i8* %9) #1
  %10 = bitcast i32* %trunc to i8*
  call void @llvm.lifetime.start(i64 4, i8* %10) #1
  %11 = bitcast i64* %frmsgs to i8*
  call void @llvm.lifetime.start(i64 8, i8* %11) #1
  store i64 0, i64* %frmsgs, align 8, !tbaa !7
  %12 = bitcast i64* %frbytes to i8*
  call void @llvm.lifetime.start(i64 8, i8* %12) #1
  store i64 0, i64* %frbytes, align 8, !tbaa !7
  %13 = bitcast i64* %tomsgs to i8*
  call void @llvm.lifetime.start(i64 8, i8* %13) #1
  store i64 0, i64* %tomsgs, align 8, !tbaa !7
  %14 = bitcast i64* %tobytes to i8*
  call void @llvm.lifetime.start(i64 8, i8* %14) #1
  store i64 0, i64* %tobytes, align 8, !tbaa !7
  %15 = bitcast i64* %rejmsgs to i8*
  call void @llvm.lifetime.start(i64 8, i8* %15) #1
  store i64 0, i64* %rejmsgs, align 8, !tbaa !7
  %16 = bitcast i64* %dismsgs to i8*
  call void @llvm.lifetime.start(i64 8, i8* %16) #1
  store i64 0, i64* %dismsgs, align 8, !tbaa !7
  %17 = bitcast i64* %quarmsgs to i8*
  call void @llvm.lifetime.start(i64 8, i8* %17) #1
  store i64 0, i64* %quarmsgs, align 8, !tbaa !7
  %18 = bitcast i64* %now to i8*
  call void @llvm.lifetime.start(i64 8, i8* %18) #1
  %19 = bitcast [25 x [21 x i8]]* %mtable to i8*
  call void @llvm.lifetime.start(i64 525, i8* %19) #1
  %20 = bitcast [4096 x i8]* %sfilebuf to i8*
  call void @llvm.lifetime.start(i64 4096, i8* %20) #1
  %21 = bitcast [2048 x i8]* %buf to i8*
  call void @llvm.lifetime.start(i64 2048, i8* %21) #1
  %22 = bitcast %struct.statistics* %stats to i8*
  call void @llvm.lifetime.start(i64 1448, i8* %22) #1
  %call = call i8* @getcfname(i32 0, i32 0, i32 1, i8* null)
  store i8* %call, i8** %cfile, align 8, !tbaa !5
  store i8* null, i8** %sfile, align 8, !tbaa !5
  store i32 1, i32* %mnames, align 4, !tbaa !1
  store i32 0, i32* %progmode, align 4, !tbaa !1
  store i32 0, i32* %trunc, align 4, !tbaa !1
  br label %while.cond

while.cond:                                       ; preds = %sw.epilog, %entry
  %23 = load i32, i32* %argc.addr, align 4, !tbaa !1
  %24 = load i8**, i8*** %argv.addr, align 8, !tbaa !5
  %call1 = call i32 @getopt(i32 %23, i8** %24, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i32 0, i32 0)) #1
  store i32 %call1, i32* %ch, align 4, !tbaa !1
  %cmp = icmp ne i32 %call1, -1
  br i1 %cmp, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %25 = load i32, i32* %ch, align 4, !tbaa !1
  switch i32 %25, label %sw.default [
    i32 99, label %sw.bb
    i32 67, label %sw.bb.3
    i32 102, label %sw.bb.4
    i32 111, label %sw.bb.5
    i32 112, label %sw.bb.6
    i32 80, label %sw.bb.7
    i32 63, label %sw.bb.8
  ]

sw.bb:                                            ; preds = %while.body
  %call2 = call i8* @getcfname(i32 0, i32 0, i32 2, i8* null)
  store i8* %call2, i8** %cfile, align 8, !tbaa !5
  br label %sw.epilog

sw.bb.3:                                          ; preds = %while.body
  %26 = load i8*, i8** @optarg, align 8, !tbaa !5
  store i8* %26, i8** %cfile, align 8, !tbaa !5
  br label %sw.epilog

sw.bb.4:                                          ; preds = %while.body
  %27 = load i8*, i8** @optarg, align 8, !tbaa !5
  store i8* %27, i8** %sfile, align 8, !tbaa !5
  br label %sw.epilog

sw.bb.5:                                          ; preds = %while.body
  store i32 0, i32* %mnames, align 4, !tbaa !1
  br label %sw.epilog

sw.bb.6:                                          ; preds = %while.body
  store i32 1, i32* %trunc, align 4, !tbaa !1
  br label %sw.bb.7

sw.bb.7:                                          ; preds = %while.body, %sw.bb.6
  store i32 1, i32* %progmode, align 4, !tbaa !1
  br label %sw.epilog

sw.bb.8:                                          ; preds = %while.body
  br label %sw.default

sw.default:                                       ; preds = %while.body, %sw.bb.8
  br label %usage

usage:                                            ; preds = %if.then, %sw.default
  %call9 = call i32 @sm_io_fputs(%struct.sm_file* getelementptr inbounds ([0 x %struct.sm_file], [0 x %struct.sm_file]* @SmIoF, i32 0, i64 2), i32 -2, i8* getelementptr inbounds ([62 x i8], [62 x i8]* @.str.1, i32 0, i32 0))
  call void @exit(i32 64) #7
  unreachable

sw.epilog:                                        ; preds = %sw.bb.7, %sw.bb.5, %sw.bb.4, %sw.bb.3, %sw.bb
  br label %while.cond

while.end:                                        ; preds = %while.cond
  %28 = load i32, i32* @optind, align 4, !tbaa !1
  %29 = load i32, i32* %argc.addr, align 4, !tbaa !1
  %sub = sub nsw i32 %29, %28
  store i32 %sub, i32* %argc.addr, align 4, !tbaa !1
  %30 = load i32, i32* @optind, align 4, !tbaa !1
  %31 = load i8**, i8*** %argv.addr, align 8, !tbaa !5
  %idx.ext = sext i32 %30 to i64
  %add.ptr = getelementptr inbounds i8*, i8** %31, i64 %idx.ext
  store i8** %add.ptr, i8*** %argv.addr, align 8, !tbaa !5
  %32 = load i32, i32* %argc.addr, align 4, !tbaa !1
  %cmp10 = icmp ne i32 %32, 0
  br i1 %cmp10, label %if.then, label %if.end

if.then:                                          ; preds = %while.end
  br label %usage

if.end:                                           ; preds = %while.end
  %33 = load i8*, i8** %cfile, align 8, !tbaa !5
  %call11 = call %struct.sm_file* @sm_io_open(%struct.sm_file* @SmFtStdio_def, i32 -2, i8* %33, i32 2, i8* null)
  store %struct.sm_file* %call11, %struct.sm_file** %cfp, align 8, !tbaa !5
  %cmp12 = icmp eq %struct.sm_file* %call11, null
  br i1 %cmp12, label %if.then.13, label %if.end.17

if.then.13:                                       ; preds = %if.end
  %call14 = call i32* @__errno_location() #8
  %34 = load i32, i32* %call14, align 4, !tbaa !1
  store i32 %34, i32* %save_errno, align 4, !tbaa !1
  %call15 = call i32 (%struct.sm_file*, i32, i8*, ...) @sm_io_fprintf(%struct.sm_file* getelementptr inbounds ([0 x %struct.sm_file], [0 x %struct.sm_file]* @SmIoF, i32 0, i64 2), i32 -2, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.2, i32 0, i32 0))
  %35 = load i32, i32* %save_errno, align 4, !tbaa !1
  %call16 = call i32* @__errno_location() #8
  store i32 %35, i32* %call16, align 4, !tbaa !1
  %36 = load i8*, i8** %cfile, align 8, !tbaa !5
  call void @sm_perror(i8* %36)
  call void @exit(i32 66) #7
  unreachable

if.end.17:                                        ; preds = %if.end
  store i32 0, i32* %mno, align 4, !tbaa !1
  %37 = load i32, i32* %mno, align 4, !tbaa !1
  %inc = add nsw i32 %37, 1
  store i32 %inc, i32* %mno, align 4, !tbaa !1
  %idxprom = sext i32 %37 to i64
  %arrayidx = getelementptr inbounds [25 x [21 x i8]], [25 x [21 x i8]]* %mtable, i32 0, i64 %idxprom
  %arraydecay = getelementptr inbounds [21 x i8], [21 x i8]* %arrayidx, i32 0, i32 0
  %call18 = call i64 @sm_strlcpy(i8* %arraydecay, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.3, i32 0, i32 0), i64 21)
  %38 = load i32, i32* %mno, align 4, !tbaa !1
  %inc19 = add nsw i32 %38, 1
  store i32 %inc19, i32* %mno, align 4, !tbaa !1
  %idxprom20 = sext i32 %38 to i64
  %arrayidx21 = getelementptr inbounds [25 x [21 x i8]], [25 x [21 x i8]]* %mtable, i32 0, i64 %idxprom20
  %arraydecay22 = getelementptr inbounds [21 x i8], [21 x i8]* %arrayidx21, i32 0, i32 0
  %call23 = call i64 @sm_strlcpy(i8* %arraydecay22, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.4, i32 0, i32 0), i64 21)
  %39 = load i32, i32* %mno, align 4, !tbaa !1
  %inc24 = add nsw i32 %39, 1
  store i32 %inc24, i32* %mno, align 4, !tbaa !1
  %idxprom25 = sext i32 %39 to i64
  %arrayidx26 = getelementptr inbounds [25 x [21 x i8]], [25 x [21 x i8]]* %mtable, i32 0, i64 %idxprom25
  %arraydecay27 = getelementptr inbounds [21 x i8], [21 x i8]* %arrayidx26, i32 0, i32 0
  %call28 = call i64 @sm_strlcpy(i8* %arraydecay27, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.5, i32 0, i32 0), i64 21)
  br label %while.cond.29

while.cond.29:                                    ; preds = %cleanup.cont, %cleanup, %if.end.17
  %40 = load %struct.sm_file*, %struct.sm_file** %cfp, align 8, !tbaa !5
  %arraydecay30 = getelementptr inbounds [2048 x i8], [2048 x i8]* %buf, i32 0, i32 0
  %call31 = call i32 @sm_io_fgets(%struct.sm_file* %40, i32 -2, i8* %arraydecay30, i32 2048)
  %cmp32 = icmp sge i32 %call31, 0
  br i1 %cmp32, label %while.body.33, label %while.end.183

while.body.33:                                    ; preds = %while.cond.29
  %41 = bitcast i8** %b to i8*
  call void @llvm.lifetime.start(i64 8, i8* %41) #1
  %42 = bitcast i8** %s to i8*
  call void @llvm.lifetime.start(i64 8, i8* %42) #1
  %43 = bitcast i8** %m to i8*
  call void @llvm.lifetime.start(i64 8, i8* %43) #1
  %arraydecay34 = getelementptr inbounds [2048 x i8], [2048 x i8]* %buf, i32 0, i32 0
  %call35 = call i8* @strchr(i8* %arraydecay34, i32 35) #1
  store i8* %call35, i8** %b, align 8, !tbaa !5
  %44 = load i8*, i8** %b, align 8, !tbaa !5
  %cmp36 = icmp eq i8* %44, null
  br i1 %cmp36, label %if.then.37, label %if.end.40

if.then.37:                                       ; preds = %while.body.33
  %arraydecay38 = getelementptr inbounds [2048 x i8], [2048 x i8]* %buf, i32 0, i32 0
  %call39 = call i8* @strchr(i8* %arraydecay38, i32 10) #1
  store i8* %call39, i8** %b, align 8, !tbaa !5
  br label %if.end.40

if.end.40:                                        ; preds = %if.then.37, %while.body.33
  %45 = load i8*, i8** %b, align 8, !tbaa !5
  %cmp41 = icmp eq i8* %45, null
  br i1 %cmp41, label %if.then.42, label %if.end.46

if.then.42:                                       ; preds = %if.end.40
  %arraydecay43 = getelementptr inbounds [2048 x i8], [2048 x i8]* %buf, i32 0, i32 0
  %call44 = call i64 @strlen(i8* %arraydecay43) #9
  %arrayidx45 = getelementptr inbounds [2048 x i8], [2048 x i8]* %buf, i32 0, i64 %call44
  store i8* %arrayidx45, i8** %b, align 8, !tbaa !5
  br label %if.end.46

if.end.46:                                        ; preds = %if.then.42, %if.end.40
  br label %while.cond.47

while.cond.47:                                    ; preds = %while.body.56, %if.end.46
  %46 = load i8*, i8** %b, align 8, !tbaa !5
  %incdec.ptr = getelementptr inbounds i8, i8* %46, i32 -1
  store i8* %incdec.ptr, i8** %b, align 8, !tbaa !5
  %47 = load i8, i8* %incdec.ptr, align 1, !tbaa !9
  %conv = sext i8 %47 to i32
  %and = and i32 %conv, -128
  %cmp48 = icmp eq i32 %and, 0
  br i1 %cmp48, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %while.cond.47
  %48 = load i8*, i8** %b, align 8, !tbaa !5
  %49 = load i8, i8* %48, align 1, !tbaa !9
  %conv50 = sext i8 %49 to i32
  %idxprom51 = sext i32 %conv50 to i64
  %call52 = call i16** @__ctype_b_loc() #8
  %50 = load i16*, i16** %call52, align 8, !tbaa !5
  %arrayidx53 = getelementptr inbounds i16, i16* %50, i64 %idxprom51
  %51 = load i16, i16* %arrayidx53, align 2, !tbaa !10
  %conv54 = zext i16 %51 to i32
  %and55 = and i32 %conv54, 8192
  %tobool = icmp ne i32 %and55, 0
  br label %land.end

land.end:                                         ; preds = %land.rhs, %while.cond.47
  %52 = phi i1 [ false, %while.cond.47 ], [ %tobool, %land.rhs ]
  br i1 %52, label %while.body.56, label %while.end.57

while.body.56:                                    ; preds = %land.end
  br label %while.cond.47

while.end.57:                                     ; preds = %land.end
  %53 = load i8*, i8** %b, align 8, !tbaa !5
  %incdec.ptr58 = getelementptr inbounds i8, i8* %53, i32 1
  store i8* %incdec.ptr58, i8** %b, align 8, !tbaa !5
  store i8 0, i8* %incdec.ptr58, align 1, !tbaa !9
  %arraydecay59 = getelementptr inbounds [2048 x i8], [2048 x i8]* %buf, i32 0, i32 0
  store i8* %arraydecay59, i8** %b, align 8, !tbaa !5
  %54 = load i8*, i8** %b, align 8, !tbaa !5
  %incdec.ptr60 = getelementptr inbounds i8, i8* %54, i32 1
  store i8* %incdec.ptr60, i8** %b, align 8, !tbaa !5
  %55 = load i8, i8* %54, align 1, !tbaa !9
  %conv61 = sext i8 %55 to i32
  switch i32 %conv61, label %sw.default.122 [
    i32 77, label %sw.epilog.123
    i32 79, label %sw.bb.62
  ]

sw.bb.62:                                         ; preds = %while.end.57
  %56 = load i8*, i8** %b, align 8, !tbaa !5
  %call63 = call i32 @sm_strncasecmp(i8* %56, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.6, i32 0, i32 0), i64 11)
  %cmp64 = icmp eq i32 %call63, 0
  br i1 %cmp64, label %land.lhs.true, label %if.else

land.lhs.true:                                    ; preds = %sw.bb.62
  %57 = load i8*, i8** %b, align 8, !tbaa !5
  %arrayidx66 = getelementptr inbounds i8, i8* %57, i64 11
  %58 = load i8, i8* %arrayidx66, align 1, !tbaa !9
  %conv67 = sext i8 %58 to i32
  %and68 = and i32 %conv67, -128
  %cmp69 = icmp eq i32 %and68, 0
  br i1 %cmp69, label %land.lhs.true.71, label %if.then.80

land.lhs.true.71:                                 ; preds = %land.lhs.true
  %59 = load i8*, i8** %b, align 8, !tbaa !5
  %arrayidx72 = getelementptr inbounds i8, i8* %59, i64 11
  %60 = load i8, i8* %arrayidx72, align 1, !tbaa !9
  %conv73 = sext i8 %60 to i32
  %idxprom74 = sext i32 %conv73 to i64
  %call75 = call i16** @__ctype_b_loc() #8
  %61 = load i16*, i16** %call75, align 8, !tbaa !5
  %arrayidx76 = getelementptr inbounds i16, i16* %61, i64 %idxprom74
  %62 = load i16, i16* %arrayidx76, align 2, !tbaa !10
  %conv77 = zext i16 %62 to i32
  %and78 = and i32 %conv77, 8
  %tobool79 = icmp ne i32 %and78, 0
  br i1 %tobool79, label %if.else, label %if.then.80

if.then.80:                                       ; preds = %land.lhs.true.71, %land.lhs.true
  %63 = load i8*, i8** %b, align 8, !tbaa !5
  %call81 = call i8* @strchr(i8* %63, i32 61) #1
  store i8* %call81, i8** %b, align 8, !tbaa !5
  %64 = load i8*, i8** %b, align 8, !tbaa !5
  %cmp82 = icmp eq i8* %64, null
  br i1 %cmp82, label %if.then.84, label %if.end.85

if.then.84:                                       ; preds = %if.then.80
  store i32 6, i32* %cleanup.dest.slot
  br label %cleanup

if.end.85:                                        ; preds = %if.then.80
  br label %while.cond.86

while.cond.86:                                    ; preds = %while.body.101, %if.end.85
  %65 = load i8*, i8** %b, align 8, !tbaa !5
  %incdec.ptr87 = getelementptr inbounds i8, i8* %65, i32 1
  store i8* %incdec.ptr87, i8** %b, align 8, !tbaa !5
  %66 = load i8, i8* %incdec.ptr87, align 1, !tbaa !9
  %conv88 = sext i8 %66 to i32
  %and89 = and i32 %conv88, -128
  %cmp90 = icmp eq i32 %and89, 0
  br i1 %cmp90, label %land.rhs.92, label %land.end.100

land.rhs.92:                                      ; preds = %while.cond.86
  %67 = load i8*, i8** %b, align 8, !tbaa !5
  %68 = load i8, i8* %67, align 1, !tbaa !9
  %conv93 = sext i8 %68 to i32
  %idxprom94 = sext i32 %conv93 to i64
  %call95 = call i16** @__ctype_b_loc() #8
  %69 = load i16*, i16** %call95, align 8, !tbaa !5
  %arrayidx96 = getelementptr inbounds i16, i16* %69, i64 %idxprom94
  %70 = load i16, i16* %arrayidx96, align 2, !tbaa !10
  %conv97 = zext i16 %70 to i32
  %and98 = and i32 %conv97, 8192
  %tobool99 = icmp ne i32 %and98, 0
  br label %land.end.100

land.end.100:                                     ; preds = %land.rhs.92, %while.cond.86
  %71 = phi i1 [ false, %while.cond.86 ], [ %tobool99, %land.rhs.92 ]
  br i1 %71, label %while.body.101, label %while.end.102

while.body.101:                                   ; preds = %land.end.100
  br label %while.cond.86

while.end.102:                                    ; preds = %land.end.100
  br label %if.end.109

if.else:                                          ; preds = %land.lhs.true.71, %sw.bb.62
  %72 = load i8*, i8** %b, align 8, !tbaa !5
  %incdec.ptr103 = getelementptr inbounds i8, i8* %72, i32 1
  store i8* %incdec.ptr103, i8** %b, align 8, !tbaa !5
  %73 = load i8, i8* %72, align 1, !tbaa !9
  %conv104 = sext i8 %73 to i32
  %cmp105 = icmp ne i32 %conv104, 83
  br i1 %cmp105, label %if.then.107, label %if.end.108

if.then.107:                                      ; preds = %if.else
  store i32 6, i32* %cleanup.dest.slot
  br label %cleanup

if.end.108:                                       ; preds = %if.else
  br label %if.end.109

if.end.109:                                       ; preds = %if.end.108, %while.end.102
  %arraydecay110 = getelementptr inbounds [4096 x i8], [4096 x i8]* %sfilebuf, i32 0, i32 0
  %74 = load i8*, i8** %b, align 8, !tbaa !5
  %call111 = call i64 @sm_strlcpy(i8* %arraydecay110, i8* %74, i64 4096)
  %cmp112 = icmp uge i64 %call111, 4096
  br i1 %cmp112, label %if.then.114, label %if.end.116

if.then.114:                                      ; preds = %if.end.109
  %75 = load i8*, i8** %b, align 8, !tbaa !5
  %call115 = call i32 (%struct.sm_file*, i32, i8*, ...) @sm_io_fprintf(%struct.sm_file* getelementptr inbounds ([0 x %struct.sm_file], [0 x %struct.sm_file]* @SmIoF, i32 0, i64 2), i32 -2, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.7, i32 0, i32 0), i8* %75)
  call void @exit(i32 78) #7
  unreachable

if.end.116:                                       ; preds = %if.end.109
  %76 = load i8*, i8** %sfile, align 8, !tbaa !5
  %cmp117 = icmp eq i8* %76, null
  br i1 %cmp117, label %if.then.119, label %if.end.121

if.then.119:                                      ; preds = %if.end.116
  %arraydecay120 = getelementptr inbounds [4096 x i8], [4096 x i8]* %sfilebuf, i32 0, i32 0
  store i8* %arraydecay120, i8** %sfile, align 8, !tbaa !5
  br label %if.end.121

if.end.121:                                       ; preds = %if.then.119, %if.end.116
  br label %sw.default.122

sw.default.122:                                   ; preds = %while.end.57, %if.end.121
  store i32 6, i32* %cleanup.dest.slot
  br label %cleanup

sw.epilog.123:                                    ; preds = %while.end.57
  %77 = load i32, i32* %mno, align 4, !tbaa !1
  %cmp124 = icmp sge i32 %77, 25
  br i1 %cmp124, label %if.then.126, label %if.end.128

if.then.126:                                      ; preds = %sw.epilog.123
  %call127 = call i32 (%struct.sm_file*, i32, i8*, ...) @sm_io_fprintf(%struct.sm_file* getelementptr inbounds ([0 x %struct.sm_file], [0 x %struct.sm_file]* @SmIoF, i32 0, i64 2), i32 -2, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.8, i32 0, i32 0), i32 25)
  call void @exit(i32 70) #7
  unreachable

if.end.128:                                       ; preds = %sw.epilog.123
  %78 = load i32, i32* %mno, align 4, !tbaa !1
  %idxprom129 = sext i32 %78 to i64
  %arrayidx130 = getelementptr inbounds [25 x [21 x i8]], [25 x [21 x i8]]* %mtable, i32 0, i64 %idxprom129
  %arraydecay131 = getelementptr inbounds [21 x i8], [21 x i8]* %arrayidx130, i32 0, i32 0
  store i8* %arraydecay131, i8** %m, align 8, !tbaa !5
  %79 = load i8*, i8** %m, align 8, !tbaa !5
  %add.ptr132 = getelementptr inbounds i8, i8* %79, i64 20
  store i8* %add.ptr132, i8** %s, align 8, !tbaa !5
  br label %while.cond.133

while.cond.133:                                   ; preds = %while.body.158, %if.end.128
  %80 = load i8*, i8** %b, align 8, !tbaa !5
  %81 = load i8, i8* %80, align 1, !tbaa !9
  %conv134 = sext i8 %81 to i32
  %cmp135 = icmp ne i32 %conv134, 44
  br i1 %cmp135, label %land.lhs.true.137, label %land.end.157

land.lhs.true.137:                                ; preds = %while.cond.133
  %82 = load i8*, i8** %b, align 8, !tbaa !5
  %83 = load i8, i8* %82, align 1, !tbaa !9
  %conv138 = sext i8 %83 to i32
  %and139 = and i32 %conv138, -128
  %cmp140 = icmp eq i32 %and139, 0
  br i1 %cmp140, label %land.lhs.true.142, label %land.lhs.true.150

land.lhs.true.142:                                ; preds = %land.lhs.true.137
  %84 = load i8*, i8** %b, align 8, !tbaa !5
  %85 = load i8, i8* %84, align 1, !tbaa !9
  %conv143 = sext i8 %85 to i32
  %idxprom144 = sext i32 %conv143 to i64
  %call145 = call i16** @__ctype_b_loc() #8
  %86 = load i16*, i16** %call145, align 8, !tbaa !5
  %arrayidx146 = getelementptr inbounds i16, i16* %86, i64 %idxprom144
  %87 = load i16, i16* %arrayidx146, align 2, !tbaa !10
  %conv147 = zext i16 %87 to i32
  %and148 = and i32 %conv147, 8192
  %tobool149 = icmp ne i32 %and148, 0
  br i1 %tobool149, label %land.end.157, label %land.lhs.true.150

land.lhs.true.150:                                ; preds = %land.lhs.true.142, %land.lhs.true.137
  %88 = load i8*, i8** %b, align 8, !tbaa !5
  %89 = load i8, i8* %88, align 1, !tbaa !9
  %conv151 = sext i8 %89 to i32
  %cmp152 = icmp ne i32 %conv151, 0
  br i1 %cmp152, label %land.rhs.154, label %land.end.157

land.rhs.154:                                     ; preds = %land.lhs.true.150
  %90 = load i8*, i8** %m, align 8, !tbaa !5
  %91 = load i8*, i8** %s, align 8, !tbaa !5
  %cmp155 = icmp ult i8* %90, %91
  br label %land.end.157

land.end.157:                                     ; preds = %land.rhs.154, %land.lhs.true.150, %land.lhs.true.142, %while.cond.133
  %92 = phi i1 [ false, %land.lhs.true.150 ], [ false, %land.lhs.true.142 ], [ false, %while.cond.133 ], [ %cmp155, %land.rhs.154 ]
  br i1 %92, label %while.body.158, label %while.end.161

while.body.158:                                   ; preds = %land.end.157
  %93 = load i8*, i8** %b, align 8, !tbaa !5
  %incdec.ptr159 = getelementptr inbounds i8, i8* %93, i32 1
  store i8* %incdec.ptr159, i8** %b, align 8, !tbaa !5
  %94 = load i8, i8* %93, align 1, !tbaa !9
  %95 = load i8*, i8** %m, align 8, !tbaa !5
  %incdec.ptr160 = getelementptr inbounds i8, i8* %95, i32 1
  store i8* %incdec.ptr160, i8** %m, align 8, !tbaa !5
  store i8 %94, i8* %95, align 1, !tbaa !9
  br label %while.cond.133

while.end.161:                                    ; preds = %land.end.157
  %96 = load i8*, i8** %m, align 8, !tbaa !5
  store i8 0, i8* %96, align 1, !tbaa !9
  store i32 0, i32* %i, align 4, !tbaa !1
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %while.end.161
  %97 = load i32, i32* %i, align 4, !tbaa !1
  %98 = load i32, i32* %mno, align 4, !tbaa !1
  %cmp162 = icmp slt i32 %97, %98
  br i1 %cmp162, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %99 = bitcast i64* %__s1_len to i8*
  call void @llvm.lifetime.start(i64 8, i8* %99) #1
  %100 = bitcast i64* %__s2_len to i8*
  call void @llvm.lifetime.start(i64 8, i8* %100) #1
  %101 = load i32, i32* %i, align 4, !tbaa !1
  %idxprom164 = sext i32 %101 to i64
  %arrayidx165 = getelementptr inbounds [25 x [21 x i8]], [25 x [21 x i8]]* %mtable, i32 0, i64 %idxprom164
  %arraydecay166 = getelementptr inbounds [21 x i8], [21 x i8]* %arrayidx165, i32 0, i32 0
  %102 = load i32, i32* %mno, align 4, !tbaa !1
  %idxprom167 = sext i32 %102 to i64
  %arrayidx168 = getelementptr inbounds [25 x [21 x i8]], [25 x [21 x i8]]* %mtable, i32 0, i64 %idxprom167
  %arraydecay169 = getelementptr inbounds [21 x i8], [21 x i8]* %arrayidx168, i32 0, i32 0
  %call170 = call i32 @strcmp(i8* %arraydecay166, i8* %arraydecay169) #1
  store i32 %call170, i32* %tmp, !tbaa !1
  %103 = bitcast i64* %__s2_len to i8*
  call void @llvm.lifetime.end(i64 8, i8* %103) #1
  %104 = bitcast i64* %__s1_len to i8*
  call void @llvm.lifetime.end(i64 8, i8* %104) #1
  %105 = load i32, i32* %tmp, !tbaa !1
  %cmp171 = icmp eq i32 %105, 0
  br i1 %cmp171, label %if.then.173, label %if.end.174

if.then.173:                                      ; preds = %for.body
  br label %for.end

if.end.174:                                       ; preds = %for.body
  br label %for.inc

for.inc:                                          ; preds = %if.end.174
  %106 = load i32, i32* %i, align 4, !tbaa !1
  %inc175 = add nsw i32 %106, 1
  store i32 %inc175, i32* %i, align 4, !tbaa !1
  br label %for.cond

for.end:                                          ; preds = %if.then.173, %for.cond
  %107 = load i32, i32* %i, align 4, !tbaa !1
  %108 = load i32, i32* %mno, align 4, !tbaa !1
  %cmp176 = icmp eq i32 %107, %108
  br i1 %cmp176, label %if.then.178, label %if.end.180

if.then.178:                                      ; preds = %for.end
  %109 = load i32, i32* %mno, align 4, !tbaa !1
  %inc179 = add nsw i32 %109, 1
  store i32 %inc179, i32* %mno, align 4, !tbaa !1
  br label %if.end.180

if.end.180:                                       ; preds = %if.then.178, %for.end
  store i32 0, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %if.end.180, %sw.default.122, %if.then.107, %if.then.84
  %110 = bitcast i8** %m to i8*
  call void @llvm.lifetime.end(i64 8, i8* %110) #1
  %111 = bitcast i8** %s to i8*
  call void @llvm.lifetime.end(i64 8, i8* %111) #1
  %112 = bitcast i8** %b to i8*
  call void @llvm.lifetime.end(i64 8, i8* %112) #1
  %cleanup.dest = load i32, i32* %cleanup.dest.slot
  switch i32 %cleanup.dest, label %unreachable [
    i32 0, label %cleanup.cont
    i32 6, label %while.cond.29
  ]

cleanup.cont:                                     ; preds = %cleanup
  br label %while.cond.29

while.end.183:                                    ; preds = %while.cond.29
  %113 = load %struct.sm_file*, %struct.sm_file** %cfp, align 8, !tbaa !5
  %call184 = call i32 @sm_io_close(%struct.sm_file* %113, i32 -2)
  br label %for.cond.185

for.cond.185:                                     ; preds = %for.inc.192, %while.end.183
  %114 = load i32, i32* %mno, align 4, !tbaa !1
  %cmp186 = icmp slt i32 %114, 25
  br i1 %cmp186, label %for.body.188, label %for.end.194

for.body.188:                                     ; preds = %for.cond.185
  %115 = load i32, i32* %mno, align 4, !tbaa !1
  %idxprom189 = sext i32 %115 to i64
  %arrayidx190 = getelementptr inbounds [25 x [21 x i8]], [25 x [21 x i8]]* %mtable, i32 0, i64 %idxprom189
  %arrayidx191 = getelementptr inbounds [21 x i8], [21 x i8]* %arrayidx190, i32 0, i64 0
  store i8 0, i8* %arrayidx191, align 1, !tbaa !9
  br label %for.inc.192

for.inc.192:                                      ; preds = %for.body.188
  %116 = load i32, i32* %mno, align 4, !tbaa !1
  %inc193 = add nsw i32 %116, 1
  store i32 %inc193, i32* %mno, align 4, !tbaa !1
  br label %for.cond.185

for.end.194:                                      ; preds = %for.cond.185
  %117 = load i8*, i8** %sfile, align 8, !tbaa !5
  %cmp195 = icmp eq i8* %117, null
  br i1 %cmp195, label %if.then.197, label %if.end.199

if.then.197:                                      ; preds = %for.end.194
  %call198 = call i32 (%struct.sm_file*, i32, i8*, ...) @sm_io_fprintf(%struct.sm_file* getelementptr inbounds ([0 x %struct.sm_file], [0 x %struct.sm_file]* @SmIoF, i32 0, i64 2), i32 -2, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.9, i32 0, i32 0))
  call void @exit(i32 72) #7
  unreachable

if.end.199:                                       ; preds = %for.end.194
  %118 = load i8*, i8** %sfile, align 8, !tbaa !5
  %call200 = call i32 (i8*, i32, ...) @open(i8* %118, i32 0, i32 384)
  store i32 %call200, i32* %fd, align 4, !tbaa !1
  %119 = load i32, i32* %fd, align 4, !tbaa !1
  %cmp201 = icmp slt i32 %119, 0
  br i1 %cmp201, label %if.then.207, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.end.199
  %120 = load i32, i32* %fd, align 4, !tbaa !1
  %121 = bitcast %struct.statistics* %stats to i8*
  %call203 = call i64 @read(i32 %120, i8* %121, i64 1448)
  %conv204 = trunc i64 %call203 to i32
  store i32 %conv204, i32* %i, align 4, !tbaa !1
  %cmp205 = icmp slt i32 %conv204, 0
  br i1 %cmp205, label %if.then.207, label %if.end.211

if.then.207:                                      ; preds = %lor.lhs.false, %if.end.199
  %call208 = call i32* @__errno_location() #8
  %122 = load i32, i32* %call208, align 4, !tbaa !1
  store i32 %122, i32* %save_errno, align 4, !tbaa !1
  %call209 = call i32 @sm_io_fputs(%struct.sm_file* getelementptr inbounds ([0 x %struct.sm_file], [0 x %struct.sm_file]* @SmIoF, i32 0, i64 2), i32 -2, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.2, i32 0, i32 0))
  %123 = load i32, i32* %save_errno, align 4, !tbaa !1
  %call210 = call i32* @__errno_location() #8
  store i32 %123, i32* %call210, align 4, !tbaa !1
  %124 = load i8*, i8** %sfile, align 8, !tbaa !5
  call void @sm_perror(i8* %124)
  call void @exit(i32 66) #7
  unreachable

if.end.211:                                       ; preds = %lor.lhs.false
  %125 = load i32, i32* %i, align 4, !tbaa !1
  %cmp212 = icmp eq i32 %125, 0
  br i1 %cmp212, label %if.then.214, label %if.end.231

if.then.214:                                      ; preds = %if.end.211
  %call215 = call i32 @sleep(i32 1)
  %126 = load i32, i32* %fd, align 4, !tbaa !1
  %127 = bitcast %struct.statistics* %stats to i8*
  %call216 = call i64 @read(i32 %126, i8* %127, i64 1448)
  %conv217 = trunc i64 %call216 to i32
  store i32 %conv217, i32* %i, align 4, !tbaa !1
  %cmp218 = icmp slt i32 %conv217, 0
  br i1 %cmp218, label %if.then.220, label %if.else.224

if.then.220:                                      ; preds = %if.then.214
  %call221 = call i32* @__errno_location() #8
  %128 = load i32, i32* %call221, align 4, !tbaa !1
  store i32 %128, i32* %save_errno, align 4, !tbaa !1
  %call222 = call i32 @sm_io_fputs(%struct.sm_file* getelementptr inbounds ([0 x %struct.sm_file], [0 x %struct.sm_file]* @SmIoF, i32 0, i64 2), i32 -2, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.2, i32 0, i32 0))
  %129 = load i32, i32* %save_errno, align 4, !tbaa !1
  %call223 = call i32* @__errno_location() #8
  store i32 %129, i32* %call223, align 4, !tbaa !1
  %130 = load i8*, i8** %sfile, align 8, !tbaa !5
  call void @sm_perror(i8* %130)
  call void @exit(i32 66) #7
  unreachable

if.else.224:                                      ; preds = %if.then.214
  %131 = load i32, i32* %i, align 4, !tbaa !1
  %cmp225 = icmp eq i32 %131, 0
  br i1 %cmp225, label %if.then.227, label %if.end.229

if.then.227:                                      ; preds = %if.else.224
  %132 = bitcast %struct.statistics* %stats to i8*
  call void @llvm.memset.p0i8.i64(i8* %132, i8 0, i64 1448, i32 1, i1 false)
  %stat_itime = getelementptr inbounds %struct.statistics, %struct.statistics* %stats, i32 0, i32 2
  %call228 = call i64 @time(i64* %stat_itime) #1
  br label %if.end.229

if.end.229:                                       ; preds = %if.then.227, %if.else.224
  br label %if.end.230

if.end.230:                                       ; preds = %if.end.229
  br label %if.end.231

if.end.231:                                       ; preds = %if.end.230, %if.end.211
  %133 = load i32, i32* %i, align 4, !tbaa !1
  %cmp232 = icmp ne i32 %133, 0
  br i1 %cmp232, label %if.then.234, label %if.end.258

if.then.234:                                      ; preds = %if.end.231
  %stat_magic = getelementptr inbounds %struct.statistics, %struct.statistics* %stats, i32 0, i32 0
  %134 = load i32, i32* %stat_magic, align 4, !tbaa !12
  %cmp235 = icmp ne i32 %134, 111070
  br i1 %cmp235, label %if.then.237, label %if.else.239

if.then.237:                                      ; preds = %if.then.234
  %135 = load i8*, i8** %sfile, align 8, !tbaa !5
  %call238 = call i32 (%struct.sm_file*, i32, i8*, ...) @sm_io_fprintf(%struct.sm_file* getelementptr inbounds ([0 x %struct.sm_file], [0 x %struct.sm_file]* @SmIoF, i32 0, i64 2), i32 -2, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.10, i32 0, i32 0), i8* %135)
  call void @exit(i32 71) #7
  unreachable

if.else.239:                                      ; preds = %if.then.234
  %stat_version = getelementptr inbounds %struct.statistics, %struct.statistics* %stats, i32 0, i32 1
  %136 = load i32, i32* %stat_version, align 4, !tbaa !14
  %cmp240 = icmp ne i32 %136, 4
  br i1 %cmp240, label %if.then.242, label %if.else.245

if.then.242:                                      ; preds = %if.else.239
  %137 = load i8*, i8** %sfile, align 8, !tbaa !5
  %stat_version243 = getelementptr inbounds %struct.statistics, %struct.statistics* %stats, i32 0, i32 1
  %138 = load i32, i32* %stat_version243, align 4, !tbaa !14
  %call244 = call i32 (%struct.sm_file*, i32, i8*, ...) @sm_io_fprintf(%struct.sm_file* getelementptr inbounds ([0 x %struct.sm_file], [0 x %struct.sm_file]* @SmIoF, i32 0, i64 2), i32 -2, i8* getelementptr inbounds ([58 x i8], [58 x i8]* @.str.11, i32 0, i32 0), i32 4, i8* %137, i32 %138)
  call void @exit(i32 71) #7
  unreachable

if.else.245:                                      ; preds = %if.else.239
  %139 = load i32, i32* %i, align 4, !tbaa !1
  %conv246 = sext i32 %139 to i64
  %cmp247 = icmp ne i64 %conv246, 1448
  br i1 %cmp247, label %if.then.253, label %lor.lhs.false.249

lor.lhs.false.249:                                ; preds = %if.else.245
  %stat_size = getelementptr inbounds %struct.statistics, %struct.statistics* %stats, i32 0, i32 3
  %140 = load i16, i16* %stat_size, align 2, !tbaa !15
  %conv250 = sext i16 %140 to i64
  %cmp251 = icmp ne i64 %conv250, 1448
  br i1 %cmp251, label %if.then.253, label %if.end.255

if.then.253:                                      ; preds = %lor.lhs.false.249, %if.else.245
  %call254 = call i32 @sm_io_fputs(%struct.sm_file* getelementptr inbounds ([0 x %struct.sm_file], [0 x %struct.sm_file]* @SmIoF, i32 0, i64 2), i32 -2, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.12, i32 0, i32 0))
  call void @exit(i32 71) #7
  unreachable

if.end.255:                                       ; preds = %lor.lhs.false.249
  br label %if.end.256

if.end.256:                                       ; preds = %if.end.255
  br label %if.end.257

if.end.257:                                       ; preds = %if.end.256
  br label %if.end.258

if.end.258:                                       ; preds = %if.end.257, %if.end.231
  %141 = load i32, i32* %progmode, align 4, !tbaa !1
  %tobool259 = icmp ne i32 %141, 0
  br i1 %tobool259, label %if.then.260, label %if.else.264

if.then.260:                                      ; preds = %if.end.258
  %call261 = call i64 @time(i64* %now) #1
  %stat_itime262 = getelementptr inbounds %struct.statistics, %struct.statistics* %stats, i32 0, i32 2
  %142 = load i64, i64* %stat_itime262, align 8, !tbaa !16
  %143 = load i64, i64* %now, align 8, !tbaa !7
  %call263 = call i32 (%struct.sm_file*, i32, i8*, ...) @sm_io_fprintf(%struct.sm_file* getelementptr inbounds ([0 x %struct.sm_file], [0 x %struct.sm_file]* @SmIoF, i32 0, i64 1), i32 -2, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.13, i32 0, i32 0), i64 %142, i64 %143)
  br label %if.end.272

if.else.264:                                      ; preds = %if.end.258
  %stat_itime265 = getelementptr inbounds %struct.statistics, %struct.statistics* %stats, i32 0, i32 2
  %call266 = call i8* @ctime(i64* %stat_itime265) #1
  %call267 = call i32 (%struct.sm_file*, i32, i8*, ...) @sm_io_fprintf(%struct.sm_file* getelementptr inbounds ([0 x %struct.sm_file], [0 x %struct.sm_file]* @SmIoF, i32 0, i64 1), i32 -2, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.14, i32 0, i32 0), i8* %call266)
  %call268 = call i32 (%struct.sm_file*, i32, i8*, ...) @sm_io_fprintf(%struct.sm_file* getelementptr inbounds ([0 x %struct.sm_file], [0 x %struct.sm_file]* @SmIoF, i32 0, i64 1), i32 -2, i8* getelementptr inbounds ([62 x i8], [62 x i8]* @.str.15, i32 0, i32 0))
  %call269 = call i32 (%struct.sm_file*, i32, i8*, ...) @sm_io_fprintf(%struct.sm_file* getelementptr inbounds ([0 x %struct.sm_file], [0 x %struct.sm_file]* @SmIoF, i32 0, i64 1), i32 -2, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.16, i32 0, i32 0))
  %144 = load i32, i32* %mnames, align 4, !tbaa !1
  %tobool270 = icmp ne i32 %144, 0
  %cond = select i1 %tobool270, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.18, i32 0, i32 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.19, i32 0, i32 0)
  %call271 = call i32 (%struct.sm_file*, i32, i8*, ...) @sm_io_fprintf(%struct.sm_file* getelementptr inbounds ([0 x %struct.sm_file], [0 x %struct.sm_file]* @SmIoF, i32 0, i64 1), i32 -2, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.17, i32 0, i32 0), i8* %cond)
  br label %if.end.272

if.end.272:                                       ; preds = %if.else.264, %if.then.260
  store i32 0, i32* %i, align 4, !tbaa !1
  br label %for.cond.273

for.cond.273:                                     ; preds = %for.inc.359, %if.end.272
  %145 = load i32, i32* %i, align 4, !tbaa !1
  %cmp274 = icmp slt i32 %145, 25
  br i1 %cmp274, label %for.body.276, label %for.end.361

for.body.276:                                     ; preds = %for.cond.273
  %146 = load i32, i32* %i, align 4, !tbaa !1
  %idxprom277 = sext i32 %146 to i64
  %stat_nf = getelementptr inbounds %struct.statistics, %struct.statistics* %stats, i32 0, i32 7
  %arrayidx278 = getelementptr inbounds [25 x i64], [25 x i64]* %stat_nf, i32 0, i64 %idxprom277
  %147 = load i64, i64* %arrayidx278, align 8, !tbaa !7
  %tobool279 = icmp ne i64 %147, 0
  br i1 %tobool279, label %if.then.296, label %lor.lhs.false.280

lor.lhs.false.280:                                ; preds = %for.body.276
  %148 = load i32, i32* %i, align 4, !tbaa !1
  %idxprom281 = sext i32 %148 to i64
  %stat_nt = getelementptr inbounds %struct.statistics, %struct.statistics* %stats, i32 0, i32 9
  %arrayidx282 = getelementptr inbounds [25 x i64], [25 x i64]* %stat_nt, i32 0, i64 %idxprom281
  %149 = load i64, i64* %arrayidx282, align 8, !tbaa !7
  %tobool283 = icmp ne i64 %149, 0
  br i1 %tobool283, label %if.then.296, label %lor.lhs.false.284

lor.lhs.false.284:                                ; preds = %lor.lhs.false.280
  %150 = load i32, i32* %i, align 4, !tbaa !1
  %idxprom285 = sext i32 %150 to i64
  %stat_nq = getelementptr inbounds %struct.statistics, %struct.statistics* %stats, i32 0, i32 13
  %arrayidx286 = getelementptr inbounds [25 x i64], [25 x i64]* %stat_nq, i32 0, i64 %idxprom285
  %151 = load i64, i64* %arrayidx286, align 8, !tbaa !7
  %tobool287 = icmp ne i64 %151, 0
  br i1 %tobool287, label %if.then.296, label %lor.lhs.false.288

lor.lhs.false.288:                                ; preds = %lor.lhs.false.284
  %152 = load i32, i32* %i, align 4, !tbaa !1
  %idxprom289 = sext i32 %152 to i64
  %stat_nr = getelementptr inbounds %struct.statistics, %struct.statistics* %stats, i32 0, i32 11
  %arrayidx290 = getelementptr inbounds [25 x i64], [25 x i64]* %stat_nr, i32 0, i64 %idxprom289
  %153 = load i64, i64* %arrayidx290, align 8, !tbaa !7
  %tobool291 = icmp ne i64 %153, 0
  br i1 %tobool291, label %if.then.296, label %lor.lhs.false.292

lor.lhs.false.292:                                ; preds = %lor.lhs.false.288
  %154 = load i32, i32* %i, align 4, !tbaa !1
  %idxprom293 = sext i32 %154 to i64
  %stat_nd = getelementptr inbounds %struct.statistics, %struct.statistics* %stats, i32 0, i32 12
  %arrayidx294 = getelementptr inbounds [25 x i64], [25 x i64]* %stat_nd, i32 0, i64 %idxprom293
  %155 = load i64, i64* %arrayidx294, align 8, !tbaa !7
  %tobool295 = icmp ne i64 %155, 0
  br i1 %tobool295, label %if.then.296, label %if.end.358

if.then.296:                                      ; preds = %lor.lhs.false.292, %lor.lhs.false.288, %lor.lhs.false.284, %lor.lhs.false.280, %for.body.276
  %156 = bitcast i8** %format to i8*
  call void @llvm.lifetime.start(i64 8, i8* %156) #1
  %157 = load i32, i32* %progmode, align 4, !tbaa !1
  %tobool298 = icmp ne i32 %157, 0
  br i1 %tobool298, label %if.then.299, label %if.else.300

if.then.299:                                      ; preds = %if.then.296
  store i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.20, i32 0, i32 0), i8** %format, align 8, !tbaa !5
  br label %if.end.301

if.else.300:                                      ; preds = %if.then.296
  store i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.21, i32 0, i32 0), i8** %format, align 8, !tbaa !5
  br label %if.end.301

if.end.301:                                       ; preds = %if.else.300, %if.then.299
  %158 = load i8*, i8** %format, align 8, !tbaa !5
  %159 = load i32, i32* %i, align 4, !tbaa !1
  %160 = load i32, i32* %i, align 4, !tbaa !1
  %idxprom302 = sext i32 %160 to i64
  %stat_nf303 = getelementptr inbounds %struct.statistics, %struct.statistics* %stats, i32 0, i32 7
  %arrayidx304 = getelementptr inbounds [25 x i64], [25 x i64]* %stat_nf303, i32 0, i64 %idxprom302
  %161 = load i64, i64* %arrayidx304, align 8, !tbaa !7
  %162 = load i32, i32* %i, align 4, !tbaa !1
  %idxprom305 = sext i32 %162 to i64
  %stat_bf = getelementptr inbounds %struct.statistics, %struct.statistics* %stats, i32 0, i32 8
  %arrayidx306 = getelementptr inbounds [25 x i64], [25 x i64]* %stat_bf, i32 0, i64 %idxprom305
  %163 = load i64, i64* %arrayidx306, align 8, !tbaa !7
  %164 = load i32, i32* %i, align 4, !tbaa !1
  %idxprom307 = sext i32 %164 to i64
  %stat_nt308 = getelementptr inbounds %struct.statistics, %struct.statistics* %stats, i32 0, i32 9
  %arrayidx309 = getelementptr inbounds [25 x i64], [25 x i64]* %stat_nt308, i32 0, i64 %idxprom307
  %165 = load i64, i64* %arrayidx309, align 8, !tbaa !7
  %166 = load i32, i32* %i, align 4, !tbaa !1
  %idxprom310 = sext i32 %166 to i64
  %stat_bt = getelementptr inbounds %struct.statistics, %struct.statistics* %stats, i32 0, i32 10
  %arrayidx311 = getelementptr inbounds [25 x i64], [25 x i64]* %stat_bt, i32 0, i64 %idxprom310
  %167 = load i64, i64* %arrayidx311, align 8, !tbaa !7
  %168 = load i32, i32* %i, align 4, !tbaa !1
  %idxprom312 = sext i32 %168 to i64
  %stat_nr313 = getelementptr inbounds %struct.statistics, %struct.statistics* %stats, i32 0, i32 11
  %arrayidx314 = getelementptr inbounds [25 x i64], [25 x i64]* %stat_nr313, i32 0, i64 %idxprom312
  %169 = load i64, i64* %arrayidx314, align 8, !tbaa !7
  %170 = load i32, i32* %i, align 4, !tbaa !1
  %idxprom315 = sext i32 %170 to i64
  %stat_nd316 = getelementptr inbounds %struct.statistics, %struct.statistics* %stats, i32 0, i32 12
  %arrayidx317 = getelementptr inbounds [25 x i64], [25 x i64]* %stat_nd316, i32 0, i64 %idxprom315
  %171 = load i64, i64* %arrayidx317, align 8, !tbaa !7
  %call318 = call i32 (%struct.sm_file*, i32, i8*, ...) @sm_io_fprintf(%struct.sm_file* getelementptr inbounds ([0 x %struct.sm_file], [0 x %struct.sm_file]* @SmIoF, i32 0, i64 1), i32 -2, i8* %158, i32 %159, i64 %161, i64 %163, i64 %165, i64 %167, i64 %169, i64 %171)
  %172 = load i32, i32* %i, align 4, !tbaa !1
  %idxprom319 = sext i32 %172 to i64
  %stat_nq320 = getelementptr inbounds %struct.statistics, %struct.statistics* %stats, i32 0, i32 13
  %arrayidx321 = getelementptr inbounds [25 x i64], [25 x i64]* %stat_nq320, i32 0, i64 %idxprom319
  %173 = load i64, i64* %arrayidx321, align 8, !tbaa !7
  %call322 = call i32 (%struct.sm_file*, i32, i8*, ...) @sm_io_fprintf(%struct.sm_file* getelementptr inbounds ([0 x %struct.sm_file], [0 x %struct.sm_file]* @SmIoF, i32 0, i64 1), i32 -2, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.22, i32 0, i32 0), i64 %173)
  %174 = load i32, i32* %mnames, align 4, !tbaa !1
  %tobool323 = icmp ne i32 %174, 0
  br i1 %tobool323, label %if.then.324, label %if.end.329

if.then.324:                                      ; preds = %if.end.301
  %175 = load i32, i32* %i, align 4, !tbaa !1
  %idxprom325 = sext i32 %175 to i64
  %arrayidx326 = getelementptr inbounds [25 x [21 x i8]], [25 x [21 x i8]]* %mtable, i32 0, i64 %idxprom325
  %arraydecay327 = getelementptr inbounds [21 x i8], [21 x i8]* %arrayidx326, i32 0, i32 0
  %call328 = call i32 (%struct.sm_file*, i32, i8*, ...) @sm_io_fprintf(%struct.sm_file* getelementptr inbounds ([0 x %struct.sm_file], [0 x %struct.sm_file]* @SmIoF, i32 0, i64 1), i32 -2, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.23, i32 0, i32 0), i8* %arraydecay327)
  br label %if.end.329

if.end.329:                                       ; preds = %if.then.324, %if.end.301
  %call330 = call i32 (%struct.sm_file*, i32, i8*, ...) @sm_io_fprintf(%struct.sm_file* getelementptr inbounds ([0 x %struct.sm_file], [0 x %struct.sm_file]* @SmIoF, i32 0, i64 1), i32 -2, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.24, i32 0, i32 0))
  %176 = load i32, i32* %i, align 4, !tbaa !1
  %idxprom331 = sext i32 %176 to i64
  %stat_nf332 = getelementptr inbounds %struct.statistics, %struct.statistics* %stats, i32 0, i32 7
  %arrayidx333 = getelementptr inbounds [25 x i64], [25 x i64]* %stat_nf332, i32 0, i64 %idxprom331
  %177 = load i64, i64* %arrayidx333, align 8, !tbaa !7
  %178 = load i64, i64* %frmsgs, align 8, !tbaa !7
  %add = add nsw i64 %178, %177
  store i64 %add, i64* %frmsgs, align 8, !tbaa !7
  %179 = load i32, i32* %i, align 4, !tbaa !1
  %idxprom334 = sext i32 %179 to i64
  %stat_bf335 = getelementptr inbounds %struct.statistics, %struct.statistics* %stats, i32 0, i32 8
  %arrayidx336 = getelementptr inbounds [25 x i64], [25 x i64]* %stat_bf335, i32 0, i64 %idxprom334
  %180 = load i64, i64* %arrayidx336, align 8, !tbaa !7
  %181 = load i64, i64* %frbytes, align 8, !tbaa !7
  %add337 = add nsw i64 %181, %180
  store i64 %add337, i64* %frbytes, align 8, !tbaa !7
  %182 = load i32, i32* %i, align 4, !tbaa !1
  %idxprom338 = sext i32 %182 to i64
  %stat_nt339 = getelementptr inbounds %struct.statistics, %struct.statistics* %stats, i32 0, i32 9
  %arrayidx340 = getelementptr inbounds [25 x i64], [25 x i64]* %stat_nt339, i32 0, i64 %idxprom338
  %183 = load i64, i64* %arrayidx340, align 8, !tbaa !7
  %184 = load i64, i64* %tomsgs, align 8, !tbaa !7
  %add341 = add nsw i64 %184, %183
  store i64 %add341, i64* %tomsgs, align 8, !tbaa !7
  %185 = load i32, i32* %i, align 4, !tbaa !1
  %idxprom342 = sext i32 %185 to i64
  %stat_bt343 = getelementptr inbounds %struct.statistics, %struct.statistics* %stats, i32 0, i32 10
  %arrayidx344 = getelementptr inbounds [25 x i64], [25 x i64]* %stat_bt343, i32 0, i64 %idxprom342
  %186 = load i64, i64* %arrayidx344, align 8, !tbaa !7
  %187 = load i64, i64* %tobytes, align 8, !tbaa !7
  %add345 = add nsw i64 %187, %186
  store i64 %add345, i64* %tobytes, align 8, !tbaa !7
  %188 = load i32, i32* %i, align 4, !tbaa !1
  %idxprom346 = sext i32 %188 to i64
  %stat_nr347 = getelementptr inbounds %struct.statistics, %struct.statistics* %stats, i32 0, i32 11
  %arrayidx348 = getelementptr inbounds [25 x i64], [25 x i64]* %stat_nr347, i32 0, i64 %idxprom346
  %189 = load i64, i64* %arrayidx348, align 8, !tbaa !7
  %190 = load i64, i64* %rejmsgs, align 8, !tbaa !7
  %add349 = add nsw i64 %190, %189
  store i64 %add349, i64* %rejmsgs, align 8, !tbaa !7
  %191 = load i32, i32* %i, align 4, !tbaa !1
  %idxprom350 = sext i32 %191 to i64
  %stat_nd351 = getelementptr inbounds %struct.statistics, %struct.statistics* %stats, i32 0, i32 12
  %arrayidx352 = getelementptr inbounds [25 x i64], [25 x i64]* %stat_nd351, i32 0, i64 %idxprom350
  %192 = load i64, i64* %arrayidx352, align 8, !tbaa !7
  %193 = load i64, i64* %dismsgs, align 8, !tbaa !7
  %add353 = add nsw i64 %193, %192
  store i64 %add353, i64* %dismsgs, align 8, !tbaa !7
  %194 = load i32, i32* %i, align 4, !tbaa !1
  %idxprom354 = sext i32 %194 to i64
  %stat_nq355 = getelementptr inbounds %struct.statistics, %struct.statistics* %stats, i32 0, i32 13
  %arrayidx356 = getelementptr inbounds [25 x i64], [25 x i64]* %stat_nq355, i32 0, i64 %idxprom354
  %195 = load i64, i64* %arrayidx356, align 8, !tbaa !7
  %196 = load i64, i64* %quarmsgs, align 8, !tbaa !7
  %add357 = add nsw i64 %196, %195
  store i64 %add357, i64* %quarmsgs, align 8, !tbaa !7
  %197 = bitcast i8** %format to i8*
  call void @llvm.lifetime.end(i64 8, i8* %197) #1
  br label %if.end.358

if.end.358:                                       ; preds = %if.end.329, %lor.lhs.false.292
  br label %for.inc.359

for.inc.359:                                      ; preds = %if.end.358
  %198 = load i32, i32* %i, align 4, !tbaa !1
  %inc360 = add nsw i32 %198, 1
  store i32 %inc360, i32* %i, align 4, !tbaa !1
  br label %for.cond.273

for.end.361:                                      ; preds = %for.cond.273
  %199 = load i32, i32* %progmode, align 4, !tbaa !1
  %tobool362 = icmp ne i32 %199, 0
  br i1 %tobool362, label %if.then.363, label %if.else.378

if.then.363:                                      ; preds = %for.end.361
  %200 = load i64, i64* %frmsgs, align 8, !tbaa !7
  %201 = load i64, i64* %frbytes, align 8, !tbaa !7
  %202 = load i64, i64* %tomsgs, align 8, !tbaa !7
  %203 = load i64, i64* %tobytes, align 8, !tbaa !7
  %204 = load i64, i64* %rejmsgs, align 8, !tbaa !7
  %205 = load i64, i64* %dismsgs, align 8, !tbaa !7
  %call364 = call i32 (%struct.sm_file*, i32, i8*, ...) @sm_io_fprintf(%struct.sm_file* getelementptr inbounds ([0 x %struct.sm_file], [0 x %struct.sm_file]* @SmIoF, i32 0, i64 1), i32 -2, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.25, i32 0, i32 0), i64 %200, i64 %201, i64 %202, i64 %203, i64 %204, i64 %205)
  %206 = load i64, i64* %quarmsgs, align 8, !tbaa !7
  %call365 = call i32 (%struct.sm_file*, i32, i8*, ...) @sm_io_fprintf(%struct.sm_file* getelementptr inbounds ([0 x %struct.sm_file], [0 x %struct.sm_file]* @SmIoF, i32 0, i64 1), i32 -2, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.22, i32 0, i32 0), i64 %206)
  %call366 = call i32 (%struct.sm_file*, i32, i8*, ...) @sm_io_fprintf(%struct.sm_file* getelementptr inbounds ([0 x %struct.sm_file], [0 x %struct.sm_file]* @SmIoF, i32 0, i64 1), i32 -2, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.24, i32 0, i32 0))
  %stat_cf = getelementptr inbounds %struct.statistics, %struct.statistics* %stats, i32 0, i32 4
  %207 = load i64, i64* %stat_cf, align 8, !tbaa !17
  %stat_ct = getelementptr inbounds %struct.statistics, %struct.statistics* %stats, i32 0, i32 5
  %208 = load i64, i64* %stat_ct, align 8, !tbaa !18
  %stat_cr = getelementptr inbounds %struct.statistics, %struct.statistics* %stats, i32 0, i32 6
  %209 = load i64, i64* %stat_cr, align 8, !tbaa !19
  %call367 = call i32 (%struct.sm_file*, i32, i8*, ...) @sm_io_fprintf(%struct.sm_file* getelementptr inbounds ([0 x %struct.sm_file], [0 x %struct.sm_file]* @SmIoF, i32 0, i64 1), i32 -2, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.26, i32 0, i32 0), i64 %207, i64 %208, i64 %209)
  %210 = load i32, i32* %fd, align 4, !tbaa !1
  %call368 = call i32 @close(i32 %210)
  %211 = load i32, i32* %trunc, align 4, !tbaa !1
  %tobool369 = icmp ne i32 %211, 0
  br i1 %tobool369, label %if.then.370, label %if.end.377

if.then.370:                                      ; preds = %if.then.363
  %212 = load i8*, i8** %sfile, align 8, !tbaa !5
  %call371 = call i32 (i8*, i32, ...) @open(i8* %212, i32 514, i32 384)
  store i32 %call371, i32* %fd, align 4, !tbaa !1
  %213 = load i32, i32* %fd, align 4, !tbaa !1
  %cmp372 = icmp sge i32 %213, 0
  br i1 %cmp372, label %if.then.374, label %if.end.376

if.then.374:                                      ; preds = %if.then.370
  %214 = load i32, i32* %fd, align 4, !tbaa !1
  %call375 = call i32 @close(i32 %214)
  br label %if.end.376

if.end.376:                                       ; preds = %if.then.374, %if.then.370
  br label %if.end.377

if.end.377:                                       ; preds = %if.end.376, %if.then.363
  br label %if.end.389

if.else.378:                                      ; preds = %for.end.361
  %call379 = call i32 (%struct.sm_file*, i32, i8*, ...) @sm_io_fprintf(%struct.sm_file* getelementptr inbounds ([0 x %struct.sm_file], [0 x %struct.sm_file]* @SmIoF, i32 0, i64 1), i32 -2, i8* getelementptr inbounds ([62 x i8], [62 x i8]* @.str.27, i32 0, i32 0))
  %call380 = call i32 (%struct.sm_file*, i32, i8*, ...) @sm_io_fprintf(%struct.sm_file* getelementptr inbounds ([0 x %struct.sm_file], [0 x %struct.sm_file]* @SmIoF, i32 0, i64 1), i32 -2, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.28, i32 0, i32 0))
  %call381 = call i32 (%struct.sm_file*, i32, i8*, ...) @sm_io_fprintf(%struct.sm_file* getelementptr inbounds ([0 x %struct.sm_file], [0 x %struct.sm_file]* @SmIoF, i32 0, i64 1), i32 -2, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.24, i32 0, i32 0))
  %215 = load i64, i64* %frmsgs, align 8, !tbaa !7
  %216 = load i64, i64* %frbytes, align 8, !tbaa !7
  %217 = load i64, i64* %tomsgs, align 8, !tbaa !7
  %218 = load i64, i64* %tobytes, align 8, !tbaa !7
  %219 = load i64, i64* %rejmsgs, align 8, !tbaa !7
  %220 = load i64, i64* %dismsgs, align 8, !tbaa !7
  %call382 = call i32 (%struct.sm_file*, i32, i8*, ...) @sm_io_fprintf(%struct.sm_file* getelementptr inbounds ([0 x %struct.sm_file], [0 x %struct.sm_file]* @SmIoF, i32 0, i64 1), i32 -2, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.29, i32 0, i32 0), i64 %215, i64 %216, i64 %217, i64 %218, i64 %219, i64 %220)
  %221 = load i64, i64* %quarmsgs, align 8, !tbaa !7
  %call383 = call i32 (%struct.sm_file*, i32, i8*, ...) @sm_io_fprintf(%struct.sm_file* getelementptr inbounds ([0 x %struct.sm_file], [0 x %struct.sm_file]* @SmIoF, i32 0, i64 1), i32 -2, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.22, i32 0, i32 0), i64 %221)
  %call384 = call i32 (%struct.sm_file*, i32, i8*, ...) @sm_io_fprintf(%struct.sm_file* getelementptr inbounds ([0 x %struct.sm_file], [0 x %struct.sm_file]* @SmIoF, i32 0, i64 1), i32 -2, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.24, i32 0, i32 0))
  %stat_cf385 = getelementptr inbounds %struct.statistics, %struct.statistics* %stats, i32 0, i32 4
  %222 = load i64, i64* %stat_cf385, align 8, !tbaa !17
  %stat_ct386 = getelementptr inbounds %struct.statistics, %struct.statistics* %stats, i32 0, i32 5
  %223 = load i64, i64* %stat_ct386, align 8, !tbaa !18
  %stat_cr387 = getelementptr inbounds %struct.statistics, %struct.statistics* %stats, i32 0, i32 6
  %224 = load i64, i64* %stat_cr387, align 8, !tbaa !19
  %call388 = call i32 (%struct.sm_file*, i32, i8*, ...) @sm_io_fprintf(%struct.sm_file* getelementptr inbounds ([0 x %struct.sm_file], [0 x %struct.sm_file]* @SmIoF, i32 0, i64 1), i32 -2, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.30, i32 0, i32 0), i64 %222, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.19, i32 0, i32 0), i64 %223, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.19, i32 0, i32 0), i64 %224)
  br label %if.end.389

if.end.389:                                       ; preds = %if.else.378, %if.end.377
  call void @exit(i32 0) #7
  unreachable

return:                                           ; No predecessors!
  %225 = load i32, i32* %retval
  ret i32 %225

unreachable:                                      ; preds = %cleanup
  unreachable
}

; Function Attrs: nounwind
declare void @llvm.lifetime.start(i64, i8* nocapture) #1

declare i8* @getcfname(i32, i32, i32, i8*) #2

; Function Attrs: nounwind
declare i32 @getopt(i32, i8**, i8*) #3

declare i32 @sm_io_fputs(%struct.sm_file*, i32, i8*) #2

; Function Attrs: noreturn nounwind
declare void @exit(i32) #4

declare %struct.sm_file* @sm_io_open(%struct.sm_file*, i32, i8*, i32, i8*) #2

; Function Attrs: nounwind readnone
declare i32* @__errno_location() #5

declare i32 @sm_io_fprintf(%struct.sm_file*, i32, i8*, ...) #2

declare void @sm_perror(i8*) #2

declare i64 @sm_strlcpy(i8*, i8*, i64) #2

declare i32 @sm_io_fgets(%struct.sm_file*, i32, i8*, i32) #2

; Function Attrs: nounwind
declare i8* @strchr(i8*, i32) #3

; Function Attrs: nounwind readonly
declare i64 @strlen(i8*) #6

; Function Attrs: nounwind readnone
declare i16** @__ctype_b_loc() #5

declare i32 @sm_strncasecmp(i8*, i8*, i64) #2

; Function Attrs: nounwind
declare i32 @strcmp(i8*, i8*) #3

; Function Attrs: nounwind
declare void @llvm.lifetime.end(i64, i8* nocapture) #1

declare i32 @sm_io_close(%struct.sm_file*, i32) #2

declare i32 @open(i8*, i32, ...) #2

declare i64 @read(i32, i8*, i64) #2

declare i32 @sleep(i32) #2

; Function Attrs: nounwind
declare void @llvm.memset.p0i8.i64(i8* nocapture, i8, i64, i32, i1) #1

; Function Attrs: nounwind
declare i64 @time(i64*) #3

; Function Attrs: nounwind
declare i8* @ctime(i64*) #3

declare i32 @close(i32) #2

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { noreturn nounwind "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #5 = { nounwind readnone "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #6 = { nounwind readonly "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #7 = { noreturn nounwind }
attributes #8 = { nounwind readnone }
attributes #9 = { nounwind readonly }

!llvm.ident = !{!0}

!0 = !{!"clang version 3.7.0 (tags/RELEASE_370/final)"}
!1 = !{!2, !2, i64 0}
!2 = !{!"int", !3, i64 0}
!3 = !{!"omnipotent char", !4, i64 0}
!4 = !{!"Simple C/C++ TBAA"}
!5 = !{!6, !6, i64 0}
!6 = !{!"any pointer", !3, i64 0}
!7 = !{!8, !8, i64 0}
!8 = !{!"long", !3, i64 0}
!9 = !{!3, !3, i64 0}
!10 = !{!11, !11, i64 0}
!11 = !{!"short", !3, i64 0}
!12 = !{!13, !2, i64 0}
!13 = !{!"statistics", !2, i64 0, !2, i64 4, !8, i64 8, !11, i64 16, !8, i64 24, !8, i64 32, !8, i64 40, !3, i64 48, !3, i64 248, !3, i64 448, !3, i64 648, !3, i64 848, !3, i64 1048, !3, i64 1248}
!14 = !{!13, !2, i64 4}
!15 = !{!13, !11, i64 16}
!16 = !{!13, !8, i64 8}
!17 = !{!13, !8, i64 24}
!18 = !{!13, !8, i64 32}
!19 = !{!13, !8, i64 40}
