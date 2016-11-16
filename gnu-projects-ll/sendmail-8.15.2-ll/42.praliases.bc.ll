; ModuleID = '42.praliases.bc'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sm_file = type { i8*, i8*, i32, i32, i64, i16, %struct.smbuf, i32, i8*, i32, i32 (%struct.sm_file*)*, i64 (%struct.sm_file*, i8*, i64)*, i64 (%struct.sm_file*, i64, i32)*, i64 (%struct.sm_file*, i8*, i64)*, i32 (%struct.sm_file*, i8*, i32, i8*)*, i32 (%struct.sm_file*, i32, i8*)*, i32 (%struct.sm_file*, i32, i8*)*, i32, i32, i8*, %struct.sm_file*, %struct.sm_file*, %struct.smbuf, i8*, i32, [3 x i8], [1 x i8], i32, i64, i32 }
%struct.smbuf = type { i8*, i32 }
%struct.passwd = type { i8*, i8*, i32, i32, i8*, i8*, i8* }
%struct.database_struct = type { i32 (%struct.database_struct*)*, i32 (%struct.database_struct*, %struct.entry_struct*, i32)*, i32 (%struct.database_struct*, i32*)*, i32 (%struct.database_struct*, %struct.entry_struct*, %struct.entry_struct*, i32)*, i32 (%struct.database_struct*, %struct.entry_struct*, %struct.entry_struct*, i32)*, i32 (%struct.database_struct*, i32)*, i32 (%struct.database_struct*, i32, i32)*, i32 (%struct.database_struct*, %struct.cursor_struct**, i32)*, i32 (%struct.database_struct*)*, i8* }
%struct.entry_struct = type { i8*, i64 }
%struct.cursor_struct = type { i32 (%struct.cursor_struct*)*, i32 (%struct.cursor_struct*, i32)*, i32 (%struct.cursor_struct*, %struct.entry_struct*, %struct.entry_struct*, i32)*, i32 (%struct.cursor_struct*, %struct.entry_struct*, %struct.entry_struct*, i32)*, i8* }
%struct.database_params_struct = type { i32, i32, i32 }
%struct.database_user_struct = type { i32, i32, [1024 x i8] }

@Verbose = global i32 2, align 4
@DontInitGroups = global i32 0, align 4
@TrustedUid = global i32 0, align 4
@main.rnamebuf = internal global [256 x i8] zeroinitializer, align 16
@DontBlameSendmail = common global [8 x i32] zeroinitializer, align 16
@RealUid = common global i32 0, align 4
@RunAsUid = common global i32 0, align 4
@RealGid = common global i32 0, align 4
@RunAsGid = common global i32 0, align 4
@.str = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@.str.1 = private unnamed_addr constant [15 x i8] c"Unknown UID %d\00", align 1
@RealUserName = common global i8* null, align 8
@RunAsUserName = common global i8* null, align 8
@.str.2 = private unnamed_addr constant [5 x i8] c"C:f:\00", align 1
@optarg = external global i8*, align 8
@SmIoF = external global [0 x %struct.sm_file], align 8
@.str.3 = private unnamed_addr constant [55 x i8] c"usage: praliases [-C cffile] [-f aliasfile] [key ...]\0A\00", align 1
@optind = external global i32, align 4
@SmFtStdio_def = external global %struct.sm_file, align 8
@.str.4 = private unnamed_addr constant [19 x i8] c"praliases: %s: %s\0A\00", align 1
@.str.5 = private unnamed_addr constant [11 x i8] c" AliasFile\00", align 1
@.str.6 = private unnamed_addr constant [47 x i8] c"praliases: AliasFile filename too long: %.30s\0A\00", align 1
@.str.7 = private unnamed_addr constant [4 x i8] c" ,/\00", align 1
@.str.8 = private unnamed_addr constant [5 x i8] c"hash\00", align 1
@.str.9 = private unnamed_addr constant [6 x i8] c"btree\00", align 1
@.str.10 = private unnamed_addr constant [4 x i8] c"dbm\00", align 1
@.str.11 = private unnamed_addr constant [50 x i8] c"praliases: Skipping non-file based alias type %s\0A\00", align 1
@.str.12 = private unnamed_addr constant [44 x i8] c"praliases: illegal alias specification: %s\0A\00", align 1
@.str.13 = private unnamed_addr constant [25 x i8] c"praliases: %s: open: %s\0A\00", align 1
@.str.14 = private unnamed_addr constant [31 x i8] c"praliases: %s: set cursor: %s\0A\00", align 1
@.str.15 = private unnamed_addr constant [11 x i8] c"%.*s:%.*s\0A\00", align 1
@.str.16 = private unnamed_addr constant [40 x i8] c"praliases: %s: get value at cursor: %s\0A\00", align 1
@.str.17 = private unnamed_addr constant [17 x i8] c"%s: No such key\0A\00", align 1

; Function Attrs: nounwind uwtable
define i32 @main(i32 %argc, i8** %argv) #0 {
entry:
  %retval = alloca i32, align 4
  %argc.addr = alloca i32, align 4
  %argv.addr = alloca i8**, align 8
  %cfile = alloca i8*, align 8
  %filename = alloca i8*, align 8
  %cfp = alloca %struct.sm_file*, align 8
  %ch = alloca i32, align 4
  %afilebuf = alloca [2048 x i8], align 16
  %buf = alloca [2048 x i8], align 16
  %pw = alloca %struct.passwd*, align 8
  %b = alloca i8*, align 8
  %p = alloca i8*, align 8
  %cleanup.dest.slot = alloca i32
  %__a0 = alloca i8, align 1
  %__a1 = alloca i8, align 1
  %__a2 = alloca i8, align 1
  %tmp = alloca i8*, align 8
  %quoted = alloca i32, align 4
  %e = alloca i8*, align 8
  store i32 0, i32* %retval
  store i32 %argc, i32* %argc.addr, align 4, !tbaa !1
  store i8** %argv, i8*** %argv.addr, align 8, !tbaa !5
  %0 = bitcast i8** %cfile to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #1
  %1 = bitcast i8** %filename to i8*
  call void @llvm.lifetime.start(i64 8, i8* %1) #1
  store i8* null, i8** %filename, align 8, !tbaa !5
  %2 = bitcast %struct.sm_file** %cfp to i8*
  call void @llvm.lifetime.start(i64 8, i8* %2) #1
  %3 = bitcast i32* %ch to i8*
  call void @llvm.lifetime.start(i64 4, i8* %3) #1
  %4 = bitcast [2048 x i8]* %afilebuf to i8*
  call void @llvm.lifetime.start(i64 2048, i8* %4) #1
  %5 = bitcast [2048 x i8]* %buf to i8*
  call void @llvm.lifetime.start(i64 2048, i8* %5) #1
  %6 = bitcast %struct.passwd** %pw to i8*
  call void @llvm.lifetime.start(i64 8, i8* %6) #1
  call void @llvm.memset.p0i8.i64(i8* bitcast ([8 x i32]* @DontBlameSendmail to i8*), i8 0, i64 32, i32 1, i1 false)
  %call = call i32 @getuid() #1
  store i32 %call, i32* @RealUid, align 4, !tbaa !1
  store i32 %call, i32* @RunAsUid, align 4, !tbaa !1
  %call1 = call i32 @getgid() #1
  store i32 %call1, i32* @RealGid, align 4, !tbaa !1
  store i32 %call1, i32* @RunAsGid, align 4, !tbaa !1
  %7 = load i32, i32* @RealUid, align 4, !tbaa !1
  %call2 = call %struct.passwd* @getpwuid(i32 %7)
  store %struct.passwd* %call2, %struct.passwd** %pw, align 8, !tbaa !5
  %8 = load %struct.passwd*, %struct.passwd** %pw, align 8, !tbaa !5
  %cmp = icmp ne %struct.passwd* %8, null
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %9 = load %struct.passwd*, %struct.passwd** %pw, align 8, !tbaa !5
  %pw_name = getelementptr inbounds %struct.passwd, %struct.passwd* %9, i32 0, i32 0
  %10 = load i8*, i8** %pw_name, align 8, !tbaa !7
  %call3 = call i64 @strlen(i8* %10) #8
  %cmp4 = icmp ugt i64 %call3, 255
  br i1 %cmp4, label %if.then.5, label %if.end

if.then.5:                                        ; preds = %if.then
  %11 = load %struct.passwd*, %struct.passwd** %pw, align 8, !tbaa !5
  %pw_name6 = getelementptr inbounds %struct.passwd, %struct.passwd* %11, i32 0, i32 0
  %12 = load i8*, i8** %pw_name6, align 8, !tbaa !7
  %arrayidx = getelementptr inbounds i8, i8* %12, i64 256
  store i8 0, i8* %arrayidx, align 1, !tbaa !9
  br label %if.end

if.end:                                           ; preds = %if.then.5, %if.then
  %13 = load %struct.passwd*, %struct.passwd** %pw, align 8, !tbaa !5
  %pw_name7 = getelementptr inbounds %struct.passwd, %struct.passwd* %13, i32 0, i32 0
  %14 = load i8*, i8** %pw_name7, align 8, !tbaa !7
  %call8 = call i32 (i8*, i64, i8*, ...) @sm_snprintf(i8* getelementptr inbounds ([256 x i8], [256 x i8]* @main.rnamebuf, i32 0, i32 0), i64 256, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i32 0, i32 0), i8* %14)
  br label %if.end.10

if.else:                                          ; preds = %entry
  %15 = load i32, i32* @RealUid, align 4, !tbaa !1
  %call9 = call i32 (i8*, i64, i8*, ...) @sm_snprintf(i8* getelementptr inbounds ([256 x i8], [256 x i8]* @main.rnamebuf, i32 0, i32 0), i64 256, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.1, i32 0, i32 0), i32 %15)
  br label %if.end.10

if.end.10:                                        ; preds = %if.else, %if.end
  store i8* getelementptr inbounds ([256 x i8], [256 x i8]* @main.rnamebuf, i32 0, i32 0), i8** @RealUserName, align 8, !tbaa !5
  store i8* getelementptr inbounds ([256 x i8], [256 x i8]* @main.rnamebuf, i32 0, i32 0), i8** @RunAsUserName, align 8, !tbaa !5
  %call11 = call i8* @getcfname(i32 0, i32 0, i32 1, i8* null)
  store i8* %call11, i8** %cfile, align 8, !tbaa !5
  br label %while.cond

while.cond:                                       ; preds = %sw.epilog, %if.end.10
  %16 = load i32, i32* %argc.addr, align 4, !tbaa !1
  %17 = load i8**, i8*** %argv.addr, align 8, !tbaa !5
  %call12 = call i32 @getopt(i32 %16, i8** %17, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i32 0, i32 0)) #1
  store i32 %call12, i32* %ch, align 4, !tbaa !1
  %cmp13 = icmp ne i32 %call12, -1
  br i1 %cmp13, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %18 = load i32, i32* %ch, align 4, !tbaa !1
  %conv = trunc i32 %18 to i8
  %conv14 = sext i8 %conv to i32
  switch i32 %conv14, label %sw.default [
    i32 67, label %sw.bb
    i32 102, label %sw.bb.15
    i32 63, label %sw.bb.16
  ]

sw.bb:                                            ; preds = %while.body
  %19 = load i8*, i8** @optarg, align 8, !tbaa !5
  store i8* %19, i8** %cfile, align 8, !tbaa !5
  br label %sw.epilog

sw.bb.15:                                         ; preds = %while.body
  %20 = load i8*, i8** @optarg, align 8, !tbaa !5
  store i8* %20, i8** %filename, align 8, !tbaa !5
  br label %sw.epilog

sw.bb.16:                                         ; preds = %while.body
  br label %sw.default

sw.default:                                       ; preds = %while.body, %sw.bb.16
  %call17 = call i32 (%struct.sm_file*, i32, i8*, ...) @sm_io_fprintf(%struct.sm_file* getelementptr inbounds ([0 x %struct.sm_file], [0 x %struct.sm_file]* @SmIoF, i32 0, i64 2), i32 -2, i8* getelementptr inbounds ([55 x i8], [55 x i8]* @.str.3, i32 0, i32 0))
  call void @exit(i32 64) #9
  unreachable

sw.epilog:                                        ; preds = %sw.bb.15, %sw.bb
  br label %while.cond

while.end:                                        ; preds = %while.cond
  %21 = load i32, i32* @optind, align 4, !tbaa !1
  %22 = load i32, i32* %argc.addr, align 4, !tbaa !1
  %sub = sub nsw i32 %22, %21
  store i32 %sub, i32* %argc.addr, align 4, !tbaa !1
  %23 = load i32, i32* @optind, align 4, !tbaa !1
  %24 = load i8**, i8*** %argv.addr, align 8, !tbaa !5
  %idx.ext = sext i32 %23 to i64
  %add.ptr = getelementptr inbounds i8*, i8** %24, i64 %idx.ext
  store i8** %add.ptr, i8*** %argv.addr, align 8, !tbaa !5
  %25 = load i8*, i8** %filename, align 8, !tbaa !5
  %cmp18 = icmp ne i8* %25, null
  br i1 %cmp18, label %if.then.20, label %if.end.21

if.then.20:                                       ; preds = %while.end
  %26 = load i8*, i8** %filename, align 8, !tbaa !5
  %27 = load i32, i32* %argc.addr, align 4, !tbaa !1
  %28 = load i8**, i8*** %argv.addr, align 8, !tbaa !5
  call void @praliases(i8* %26, i32 %27, i8** %28)
  call void @exit(i32 0) #9
  unreachable

if.end.21:                                        ; preds = %while.end
  %29 = load i8*, i8** %cfile, align 8, !tbaa !5
  %call22 = call %struct.sm_file* @sm_io_open(%struct.sm_file* @SmFtStdio_def, i32 -2, i8* %29, i32 2, i8* null)
  store %struct.sm_file* %call22, %struct.sm_file** %cfp, align 8, !tbaa !5
  %cmp23 = icmp eq %struct.sm_file* %call22, null
  br i1 %cmp23, label %if.then.25, label %if.end.29

if.then.25:                                       ; preds = %if.end.21
  %30 = load i8*, i8** %cfile, align 8, !tbaa !5
  %call26 = call i32* @__errno_location() #10
  %31 = load i32, i32* %call26, align 4, !tbaa !1
  %call27 = call i8* @sm_errstring(i32 %31)
  %call28 = call i32 (%struct.sm_file*, i32, i8*, ...) @sm_io_fprintf(%struct.sm_file* getelementptr inbounds ([0 x %struct.sm_file], [0 x %struct.sm_file]* @SmIoF, i32 0, i64 2), i32 -2, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.4, i32 0, i32 0), i8* %30, i8* %call27)
  call void @exit(i32 66) #9
  unreachable

if.end.29:                                        ; preds = %if.end.21
  br label %while.cond.30

while.cond.30:                                    ; preds = %cleanup, %if.end.29
  %32 = load %struct.sm_file*, %struct.sm_file** %cfp, align 8, !tbaa !5
  %arraydecay = getelementptr inbounds [2048 x i8], [2048 x i8]* %buf, i32 0, i32 0
  %call31 = call i32 @sm_io_fgets(%struct.sm_file* %32, i32 -2, i8* %arraydecay, i32 2048)
  %cmp32 = icmp sge i32 %call31, 0
  br i1 %cmp32, label %while.body.34, label %while.end.240

while.body.34:                                    ; preds = %while.cond.30
  %33 = bitcast i8** %b to i8*
  call void @llvm.lifetime.start(i64 8, i8* %33) #1
  %34 = bitcast i8** %p to i8*
  call void @llvm.lifetime.start(i64 8, i8* %34) #1
  %arraydecay35 = getelementptr inbounds [2048 x i8], [2048 x i8]* %buf, i32 0, i32 0
  %call36 = call i8* @strchr(i8* %arraydecay35, i32 10) #1
  store i8* %call36, i8** %b, align 8, !tbaa !5
  %35 = load i8*, i8** %b, align 8, !tbaa !5
  %cmp37 = icmp ne i8* %35, null
  br i1 %cmp37, label %if.then.39, label %if.end.40

if.then.39:                                       ; preds = %while.body.34
  %36 = load i8*, i8** %b, align 8, !tbaa !5
  store i8 0, i8* %36, align 1, !tbaa !9
  br label %if.end.40

if.end.40:                                        ; preds = %if.then.39, %while.body.34
  %arraydecay41 = getelementptr inbounds [2048 x i8], [2048 x i8]* %buf, i32 0, i32 0
  store i8* %arraydecay41, i8** %b, align 8, !tbaa !5
  %37 = load i8*, i8** %b, align 8, !tbaa !5
  %incdec.ptr = getelementptr inbounds i8, i8* %37, i32 1
  store i8* %incdec.ptr, i8** %b, align 8, !tbaa !5
  %38 = load i8, i8* %37, align 1, !tbaa !9
  %conv42 = sext i8 %38 to i32
  switch i32 %conv42, label %sw.default.238 [
    i32 79, label %sw.bb.43
  ]

sw.bb.43:                                         ; preds = %if.end.40
  %39 = load i8*, i8** %b, align 8, !tbaa !5
  %call44 = call i32 @sm_strncasecmp(i8* %39, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.5, i32 0, i32 0), i64 10)
  %cmp45 = icmp eq i32 %call44, 0
  br i1 %cmp45, label %land.lhs.true, label %if.else.79

land.lhs.true:                                    ; preds = %sw.bb.43
  %40 = load i8*, i8** %b, align 8, !tbaa !5
  %arrayidx47 = getelementptr inbounds i8, i8* %40, i64 10
  %41 = load i8, i8* %arrayidx47, align 1, !tbaa !9
  %conv48 = sext i8 %41 to i32
  %and = and i32 %conv48, -128
  %cmp49 = icmp eq i32 %and, 0
  br i1 %cmp49, label %land.lhs.true.51, label %if.then.58

land.lhs.true.51:                                 ; preds = %land.lhs.true
  %42 = load i8*, i8** %b, align 8, !tbaa !5
  %arrayidx52 = getelementptr inbounds i8, i8* %42, i64 10
  %43 = load i8, i8* %arrayidx52, align 1, !tbaa !9
  %conv53 = sext i8 %43 to i32
  %idxprom = sext i32 %conv53 to i64
  %call54 = call i16** @__ctype_b_loc() #10
  %44 = load i16*, i16** %call54, align 8, !tbaa !5
  %arrayidx55 = getelementptr inbounds i16, i16* %44, i64 %idxprom
  %45 = load i16, i16* %arrayidx55, align 2, !tbaa !10
  %conv56 = zext i16 %45 to i32
  %and57 = and i32 %conv56, 8
  %tobool = icmp ne i32 %and57, 0
  br i1 %tobool, label %if.else.79, label %if.then.58

if.then.58:                                       ; preds = %land.lhs.true.51, %land.lhs.true
  %46 = load i8*, i8** %b, align 8, !tbaa !5
  %call59 = call i8* @strchr(i8* %46, i32 61) #1
  store i8* %call59, i8** %b, align 8, !tbaa !5
  %47 = load i8*, i8** %b, align 8, !tbaa !5
  %cmp60 = icmp eq i8* %47, null
  br i1 %cmp60, label %if.then.62, label %if.end.63

if.then.62:                                       ; preds = %if.then.58
  store i32 5, i32* %cleanup.dest.slot
  br label %cleanup

if.end.63:                                        ; preds = %if.then.58
  br label %while.cond.64

while.cond.64:                                    ; preds = %while.body.77, %if.end.63
  %48 = load i8*, i8** %b, align 8, !tbaa !5
  %incdec.ptr65 = getelementptr inbounds i8, i8* %48, i32 1
  store i8* %incdec.ptr65, i8** %b, align 8, !tbaa !5
  %49 = load i8, i8* %incdec.ptr65, align 1, !tbaa !9
  %conv66 = sext i8 %49 to i32
  %and67 = and i32 %conv66, -128
  %cmp68 = icmp eq i32 %and67, 0
  br i1 %cmp68, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %while.cond.64
  %50 = load i8*, i8** %b, align 8, !tbaa !5
  %51 = load i8, i8* %50, align 1, !tbaa !9
  %conv70 = sext i8 %51 to i32
  %idxprom71 = sext i32 %conv70 to i64
  %call72 = call i16** @__ctype_b_loc() #10
  %52 = load i16*, i16** %call72, align 8, !tbaa !5
  %arrayidx73 = getelementptr inbounds i16, i16* %52, i64 %idxprom71
  %53 = load i16, i16* %arrayidx73, align 2, !tbaa !10
  %conv74 = zext i16 %53 to i32
  %and75 = and i32 %conv74, 8192
  %tobool76 = icmp ne i32 %and75, 0
  br label %land.end

land.end:                                         ; preds = %land.rhs, %while.cond.64
  %54 = phi i1 [ false, %while.cond.64 ], [ %tobool76, %land.rhs ]
  br i1 %54, label %while.body.77, label %while.end.78

while.body.77:                                    ; preds = %land.end
  br label %while.cond.64

while.end.78:                                     ; preds = %land.end
  br label %if.end.86

if.else.79:                                       ; preds = %land.lhs.true.51, %sw.bb.43
  %55 = load i8*, i8** %b, align 8, !tbaa !5
  %incdec.ptr80 = getelementptr inbounds i8, i8* %55, i32 1
  store i8* %incdec.ptr80, i8** %b, align 8, !tbaa !5
  %56 = load i8, i8* %55, align 1, !tbaa !9
  %conv81 = sext i8 %56 to i32
  %cmp82 = icmp ne i32 %conv81, 65
  br i1 %cmp82, label %if.then.84, label %if.end.85

if.then.84:                                       ; preds = %if.else.79
  store i32 5, i32* %cleanup.dest.slot
  br label %cleanup

if.end.85:                                        ; preds = %if.else.79
  br label %if.end.86

if.end.86:                                        ; preds = %if.end.85, %while.end.78
  %arraydecay87 = getelementptr inbounds [2048 x i8], [2048 x i8]* %afilebuf, i32 0, i32 0
  %57 = load i8*, i8** %b, align 8, !tbaa !5
  %call88 = call i64 @sm_strlcpy(i8* %arraydecay87, i8* %57, i64 2048)
  %cmp89 = icmp uge i64 %call88, 2048
  br i1 %cmp89, label %if.then.91, label %if.end.94

if.then.91:                                       ; preds = %if.end.86
  %58 = load i8*, i8** %b, align 8, !tbaa !5
  %call92 = call i32 (%struct.sm_file*, i32, i8*, ...) @sm_io_fprintf(%struct.sm_file* getelementptr inbounds ([0 x %struct.sm_file], [0 x %struct.sm_file]* @SmIoF, i32 0, i64 2), i32 -2, i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str.6, i32 0, i32 0), i8* %58)
  %59 = load %struct.sm_file*, %struct.sm_file** %cfp, align 8, !tbaa !5
  %call93 = call i32 @sm_io_close(%struct.sm_file* %59, i32 -2)
  call void @exit(i32 78) #9
  unreachable

if.end.94:                                        ; preds = %if.end.86
  %arraydecay95 = getelementptr inbounds [2048 x i8], [2048 x i8]* %afilebuf, i32 0, i32 0
  store i8* %arraydecay95, i8** %b, align 8, !tbaa !5
  %60 = load i8*, i8** %b, align 8, !tbaa !5
  store i8* %60, i8** %p, align 8, !tbaa !5
  br label %for.cond

for.cond:                                         ; preds = %if.end.236, %if.end.94
  %61 = load i8*, i8** %p, align 8, !tbaa !5
  %cmp96 = icmp ne i8* %61, null
  br i1 %cmp96, label %for.body, label %for.end.237

for.body:                                         ; preds = %for.cond
  br label %while.cond.98

while.cond.98:                                    ; preds = %while.body.112, %for.body
  %62 = load i8*, i8** %p, align 8, !tbaa !5
  %63 = load i8, i8* %62, align 1, !tbaa !9
  %conv99 = sext i8 %63 to i32
  %and100 = and i32 %conv99, -128
  %cmp101 = icmp eq i32 %and100, 0
  br i1 %cmp101, label %land.rhs.103, label %land.end.111

land.rhs.103:                                     ; preds = %while.cond.98
  %64 = load i8*, i8** %p, align 8, !tbaa !5
  %65 = load i8, i8* %64, align 1, !tbaa !9
  %conv104 = sext i8 %65 to i32
  %idxprom105 = sext i32 %conv104 to i64
  %call106 = call i16** @__ctype_b_loc() #10
  %66 = load i16*, i16** %call106, align 8, !tbaa !5
  %arrayidx107 = getelementptr inbounds i16, i16* %66, i64 %idxprom105
  %67 = load i16, i16* %arrayidx107, align 2, !tbaa !10
  %conv108 = zext i16 %67 to i32
  %and109 = and i32 %conv108, 8192
  %tobool110 = icmp ne i32 %and109, 0
  br label %land.end.111

land.end.111:                                     ; preds = %land.rhs.103, %while.cond.98
  %68 = phi i1 [ false, %while.cond.98 ], [ %tobool110, %land.rhs.103 ]
  br i1 %68, label %while.body.112, label %while.end.114

while.body.112:                                   ; preds = %land.end.111
  %69 = load i8*, i8** %p, align 8, !tbaa !5
  %incdec.ptr113 = getelementptr inbounds i8, i8* %69, i32 1
  store i8* %incdec.ptr113, i8** %p, align 8, !tbaa !5
  br label %while.cond.98

while.end.114:                                    ; preds = %land.end.111
  %70 = load i8*, i8** %p, align 8, !tbaa !5
  %71 = load i8, i8* %70, align 1, !tbaa !9
  %conv115 = sext i8 %71 to i32
  %cmp116 = icmp eq i32 %conv115, 0
  br i1 %cmp116, label %if.then.118, label %if.end.119

if.then.118:                                      ; preds = %while.end.114
  br label %for.end.237

if.end.119:                                       ; preds = %while.end.114
  %72 = load i8*, i8** %p, align 8, !tbaa !5
  store i8* %72, i8** %b, align 8, !tbaa !5
  call void @llvm.lifetime.start(i64 1, i8* %__a0) #1
  call void @llvm.lifetime.start(i64 1, i8* %__a1) #1
  call void @llvm.lifetime.start(i64 1, i8* %__a2) #1
  br i1 icmp eq (i64 sub (i64 ptrtoint (i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.7, i32 0, i64 1) to i64), i64 ptrtoint ([4 x i8]* @.str.7 to i64)), i64 1), label %cond.true, label %cond.false.155

cond.true:                                        ; preds = %if.end.119
  %73 = load i8, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.7, i32 0, i32 0), align 1, !tbaa !9
  store i8 %73, i8* %__a0, align 1, !tbaa !9
  %74 = load i8, i8* %__a0, align 1, !tbaa !9
  %conv120 = sext i8 %74 to i32
  %cmp121 = icmp eq i32 %conv120, 0
  br i1 %cmp121, label %cond.true.123, label %cond.false

cond.true.123:                                    ; preds = %cond.true
  %75 = load i8*, i8** %p, align 8, !tbaa !5
  br label %cond.end.153

cond.false:                                       ; preds = %cond.true
  %76 = load i8, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.7, i32 0, i64 1), align 1, !tbaa !9
  store i8 %76, i8* %__a1, align 1, !tbaa !9
  %77 = load i8, i8* %__a1, align 1, !tbaa !9
  %conv124 = sext i8 %77 to i32
  %cmp125 = icmp eq i32 %conv124, 0
  br i1 %cmp125, label %cond.true.127, label %cond.false.130

cond.true.127:                                    ; preds = %cond.false
  %78 = load i8*, i8** %p, align 8, !tbaa !5
  %79 = load i8, i8* %__a0, align 1, !tbaa !9
  %conv128 = sext i8 %79 to i32
  %call129 = call i8* @strchr(i8* %78, i32 %conv128) #1
  br label %cond.end.151

cond.false.130:                                   ; preds = %cond.false
  %80 = load i8, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.7, i32 0, i64 2), align 1, !tbaa !9
  store i8 %80, i8* %__a2, align 1, !tbaa !9
  %81 = load i8, i8* %__a2, align 1, !tbaa !9
  %conv131 = sext i8 %81 to i32
  %cmp132 = icmp eq i32 %conv131, 0
  br i1 %cmp132, label %cond.true.134, label %cond.false.138

cond.true.134:                                    ; preds = %cond.false.130
  %82 = load i8*, i8** %p, align 8, !tbaa !5
  %83 = load i8, i8* %__a0, align 1, !tbaa !9
  %conv135 = sext i8 %83 to i32
  %84 = load i8, i8* %__a1, align 1, !tbaa !9
  %conv136 = sext i8 %84 to i32
  %call137 = call i8* @__strpbrk_c2(i8* %82, i32 %conv135, i32 %conv136)
  br label %cond.end.149

cond.false.138:                                   ; preds = %cond.false.130
  %85 = load i8, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.7, i32 0, i64 3), align 1, !tbaa !9
  %conv139 = sext i8 %85 to i32
  %cmp140 = icmp eq i32 %conv139, 0
  br i1 %cmp140, label %cond.true.142, label %cond.false.147

cond.true.142:                                    ; preds = %cond.false.138
  %86 = load i8*, i8** %p, align 8, !tbaa !5
  %87 = load i8, i8* %__a0, align 1, !tbaa !9
  %conv143 = sext i8 %87 to i32
  %88 = load i8, i8* %__a1, align 1, !tbaa !9
  %conv144 = sext i8 %88 to i32
  %89 = load i8, i8* %__a2, align 1, !tbaa !9
  %conv145 = sext i8 %89 to i32
  %call146 = call i8* @__strpbrk_c3(i8* %86, i32 %conv143, i32 %conv144, i32 %conv145)
  br label %cond.end

cond.false.147:                                   ; preds = %cond.false.138
  %90 = load i8*, i8** %p, align 8, !tbaa !5
  %call148 = call i8* @strpbrk(i8* %90, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.7, i32 0, i32 0)) #1
  br label %cond.end

cond.end:                                         ; preds = %cond.false.147, %cond.true.142
  %cond = phi i8* [ %call146, %cond.true.142 ], [ %call148, %cond.false.147 ]
  br label %cond.end.149

cond.end.149:                                     ; preds = %cond.end, %cond.true.134
  %cond150 = phi i8* [ %call137, %cond.true.134 ], [ %cond, %cond.end ]
  br label %cond.end.151

cond.end.151:                                     ; preds = %cond.end.149, %cond.true.127
  %cond152 = phi i8* [ %call129, %cond.true.127 ], [ %cond150, %cond.end.149 ]
  br label %cond.end.153

cond.end.153:                                     ; preds = %cond.end.151, %cond.true.123
  %cond154 = phi i8* [ null, %cond.true.123 ], [ %cond152, %cond.end.151 ]
  br label %cond.end.157

cond.false.155:                                   ; preds = %if.end.119
  %91 = load i8*, i8** %p, align 8, !tbaa !5
  %call156 = call i8* @strpbrk(i8* %91, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.7, i32 0, i32 0)) #1
  br label %cond.end.157

cond.end.157:                                     ; preds = %cond.false.155, %cond.end.153
  %cond158 = phi i8* [ %cond154, %cond.end.153 ], [ %call156, %cond.false.155 ]
  store i8* %cond158, i8** %tmp, !tbaa !5
  call void @llvm.lifetime.end(i64 1, i8* %__a2) #1
  call void @llvm.lifetime.end(i64 1, i8* %__a1) #1
  call void @llvm.lifetime.end(i64 1, i8* %__a0) #1
  %92 = load i8*, i8** %tmp, !tbaa !5
  store i8* %92, i8** %p, align 8, !tbaa !5
  %93 = load i8*, i8** %p, align 8, !tbaa !5
  %cmp159 = icmp ne i8* %93, null
  br i1 %cmp159, label %if.then.161, label %if.end.208

if.then.161:                                      ; preds = %cond.end.157
  %94 = bitcast i32* %quoted to i8*
  call void @llvm.lifetime.start(i64 4, i8* %94) #1
  store i32 0, i32* %quoted, align 4, !tbaa !1
  br label %for.cond.163

for.cond.163:                                     ; preds = %for.inc, %if.then.161
  %95 = load i8*, i8** %p, align 8, !tbaa !5
  %96 = load i8, i8* %95, align 1, !tbaa !9
  %conv164 = sext i8 %96 to i32
  %cmp165 = icmp ne i32 %conv164, 0
  br i1 %cmp165, label %for.body.167, label %for.end

for.body.167:                                     ; preds = %for.cond.163
  %97 = load i8*, i8** %p, align 8, !tbaa !5
  %98 = load i8, i8* %97, align 1, !tbaa !9
  %conv168 = sext i8 %98 to i32
  %cmp169 = icmp eq i32 %conv168, 34
  br i1 %cmp169, label %if.then.171, label %if.else.173

if.then.171:                                      ; preds = %for.body.167
  %99 = load i32, i32* %quoted, align 4, !tbaa !1
  %tobool172 = icmp ne i32 %99, 0
  %lnot = xor i1 %tobool172, true
  %lnot.ext = zext i1 %lnot to i32
  store i32 %lnot.ext, i32* %quoted, align 4, !tbaa !1
  br label %if.end.181

if.else.173:                                      ; preds = %for.body.167
  %100 = load i8*, i8** %p, align 8, !tbaa !5
  %101 = load i8, i8* %100, align 1, !tbaa !9
  %conv174 = sext i8 %101 to i32
  %cmp175 = icmp eq i32 %conv174, 44
  br i1 %cmp175, label %land.lhs.true.177, label %if.end.180

land.lhs.true.177:                                ; preds = %if.else.173
  %102 = load i32, i32* %quoted, align 4, !tbaa !1
  %tobool178 = icmp ne i32 %102, 0
  br i1 %tobool178, label %if.end.180, label %if.then.179

if.then.179:                                      ; preds = %land.lhs.true.177
  br label %for.end

if.end.180:                                       ; preds = %land.lhs.true.177, %if.else.173
  br label %if.end.181

if.end.181:                                       ; preds = %if.end.180, %if.then.171
  br label %for.inc

for.inc:                                          ; preds = %if.end.181
  %103 = load i8*, i8** %p, align 8, !tbaa !5
  %incdec.ptr182 = getelementptr inbounds i8, i8* %103, i32 1
  store i8* %incdec.ptr182, i8** %p, align 8, !tbaa !5
  br label %for.cond.163

for.end:                                          ; preds = %if.then.179, %for.cond.163
  %104 = load i8*, i8** %p, align 8, !tbaa !5
  %105 = load i8, i8* %104, align 1, !tbaa !9
  %conv183 = sext i8 %105 to i32
  %cmp184 = icmp eq i32 %conv183, 0
  br i1 %cmp184, label %if.then.186, label %if.end.207

if.then.186:                                      ; preds = %for.end
  br label %while.cond.187

while.cond.187:                                   ; preds = %while.body.204, %if.then.186
  %106 = load i8*, i8** %p, align 8, !tbaa !5
  %107 = load i8, i8* %106, align 1, !tbaa !9
  %conv188 = sext i8 %107 to i32
  %and189 = and i32 %conv188, -128
  %cmp190 = icmp eq i32 %and189, 0
  br i1 %cmp190, label %land.lhs.true.192, label %land.end.203

land.lhs.true.192:                                ; preds = %while.cond.187
  %108 = load i8*, i8** %p, align 8, !tbaa !5
  %109 = load i8, i8* %108, align 1, !tbaa !9
  %conv193 = sext i8 %109 to i32
  %idxprom194 = sext i32 %conv193 to i64
  %call195 = call i16** @__ctype_b_loc() #10
  %110 = load i16*, i16** %call195, align 8, !tbaa !5
  %arrayidx196 = getelementptr inbounds i16, i16* %110, i64 %idxprom194
  %111 = load i16, i16* %arrayidx196, align 2, !tbaa !10
  %conv197 = zext i16 %111 to i32
  %and198 = and i32 %conv197, 8192
  %tobool199 = icmp ne i32 %and198, 0
  br i1 %tobool199, label %land.rhs.200, label %land.end.203

land.rhs.200:                                     ; preds = %land.lhs.true.192
  %112 = load i8*, i8** %p, align 8, !tbaa !5
  %113 = load i8*, i8** %b, align 8, !tbaa !5
  %cmp201 = icmp ugt i8* %112, %113
  br label %land.end.203

land.end.203:                                     ; preds = %land.rhs.200, %land.lhs.true.192, %while.cond.187
  %114 = phi i1 [ false, %land.lhs.true.192 ], [ false, %while.cond.187 ], [ %cmp201, %land.rhs.200 ]
  br i1 %114, label %while.body.204, label %while.end.206

while.body.204:                                   ; preds = %land.end.203
  %115 = load i8*, i8** %p, align 8, !tbaa !5
  %incdec.ptr205 = getelementptr inbounds i8, i8* %115, i32 -1
  store i8* %incdec.ptr205, i8** %p, align 8, !tbaa !5
  br label %while.cond.187

while.end.206:                                    ; preds = %land.end.203
  %116 = load i8*, i8** %p, align 8, !tbaa !5
  store i8 0, i8* %116, align 1, !tbaa !9
  store i8* null, i8** %p, align 8, !tbaa !5
  br label %if.end.207

if.end.207:                                       ; preds = %while.end.206, %for.end
  %117 = bitcast i32* %quoted to i8*
  call void @llvm.lifetime.end(i64 4, i8* %117) #1
  br label %if.end.208

if.end.208:                                       ; preds = %if.end.207, %cond.end.157
  %118 = load i8*, i8** %p, align 8, !tbaa !5
  %cmp209 = icmp ne i8* %118, null
  br i1 %cmp209, label %if.then.211, label %if.end.236

if.then.211:                                      ; preds = %if.end.208
  %119 = bitcast i8** %e to i8*
  call void @llvm.lifetime.start(i64 8, i8* %119) #1
  %120 = load i8*, i8** %p, align 8, !tbaa !5
  %add.ptr213 = getelementptr inbounds i8, i8* %120, i64 -1
  store i8* %add.ptr213, i8** %e, align 8, !tbaa !5
  br label %while.cond.214

while.cond.214:                                   ; preds = %while.body.231, %if.then.211
  %121 = load i8*, i8** %e, align 8, !tbaa !5
  %122 = load i8, i8* %121, align 1, !tbaa !9
  %conv215 = sext i8 %122 to i32
  %and216 = and i32 %conv215, -128
  %cmp217 = icmp eq i32 %and216, 0
  br i1 %cmp217, label %land.lhs.true.219, label %land.end.230

land.lhs.true.219:                                ; preds = %while.cond.214
  %123 = load i8*, i8** %e, align 8, !tbaa !5
  %124 = load i8, i8* %123, align 1, !tbaa !9
  %conv220 = sext i8 %124 to i32
  %idxprom221 = sext i32 %conv220 to i64
  %call222 = call i16** @__ctype_b_loc() #10
  %125 = load i16*, i16** %call222, align 8, !tbaa !5
  %arrayidx223 = getelementptr inbounds i16, i16* %125, i64 %idxprom221
  %126 = load i16, i16* %arrayidx223, align 2, !tbaa !10
  %conv224 = zext i16 %126 to i32
  %and225 = and i32 %conv224, 8192
  %tobool226 = icmp ne i32 %and225, 0
  br i1 %tobool226, label %land.rhs.227, label %land.end.230

land.rhs.227:                                     ; preds = %land.lhs.true.219
  %127 = load i8*, i8** %e, align 8, !tbaa !5
  %128 = load i8*, i8** %b, align 8, !tbaa !5
  %cmp228 = icmp ugt i8* %127, %128
  br label %land.end.230

land.end.230:                                     ; preds = %land.rhs.227, %land.lhs.true.219, %while.cond.214
  %129 = phi i1 [ false, %land.lhs.true.219 ], [ false, %while.cond.214 ], [ %cmp228, %land.rhs.227 ]
  br i1 %129, label %while.body.231, label %while.end.233

while.body.231:                                   ; preds = %land.end.230
  %130 = load i8*, i8** %e, align 8, !tbaa !5
  %incdec.ptr232 = getelementptr inbounds i8, i8* %130, i32 -1
  store i8* %incdec.ptr232, i8** %e, align 8, !tbaa !5
  br label %while.cond.214

while.end.233:                                    ; preds = %land.end.230
  %131 = load i8*, i8** %e, align 8, !tbaa !5
  %incdec.ptr234 = getelementptr inbounds i8, i8* %131, i32 1
  store i8* %incdec.ptr234, i8** %e, align 8, !tbaa !5
  store i8 0, i8* %incdec.ptr234, align 1, !tbaa !9
  %132 = load i8*, i8** %p, align 8, !tbaa !5
  %incdec.ptr235 = getelementptr inbounds i8, i8* %132, i32 1
  store i8* %incdec.ptr235, i8** %p, align 8, !tbaa !5
  store i8 0, i8* %132, align 1, !tbaa !9
  %133 = bitcast i8** %e to i8*
  call void @llvm.lifetime.end(i64 8, i8* %133) #1
  br label %if.end.236

if.end.236:                                       ; preds = %while.end.233, %if.end.208
  %134 = load i8*, i8** %b, align 8, !tbaa !5
  %135 = load i32, i32* %argc.addr, align 4, !tbaa !1
  %136 = load i8**, i8*** %argv.addr, align 8, !tbaa !5
  call void @praliases(i8* %134, i32 %135, i8** %136)
  br label %for.cond

for.end.237:                                      ; preds = %if.then.118, %for.cond
  br label %sw.default.238

sw.default.238:                                   ; preds = %if.end.40, %for.end.237
  store i32 5, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %sw.default.238, %if.then.84, %if.then.62
  %137 = bitcast i8** %p to i8*
  call void @llvm.lifetime.end(i64 8, i8* %137) #1
  %138 = bitcast i8** %b to i8*
  call void @llvm.lifetime.end(i64 8, i8* %138) #1
  br label %while.cond.30

while.end.240:                                    ; preds = %while.cond.30
  %139 = load %struct.sm_file*, %struct.sm_file** %cfp, align 8, !tbaa !5
  %call241 = call i32 @sm_io_close(%struct.sm_file* %139, i32 -2)
  call void @exit(i32 0) #9
  unreachable

return:                                           ; No predecessors!
  %140 = load i32, i32* %retval
  ret i32 %140
}

; Function Attrs: nounwind
declare void @llvm.lifetime.start(i64, i8* nocapture) #1

; Function Attrs: nounwind
declare void @llvm.memset.p0i8.i64(i8* nocapture, i8, i64, i32, i1) #1

; Function Attrs: nounwind
declare i32 @getuid() #2

; Function Attrs: nounwind
declare i32 @getgid() #2

declare %struct.passwd* @getpwuid(i32) #3

; Function Attrs: nounwind readonly
declare i64 @strlen(i8*) #4

declare i32 @sm_snprintf(i8*, i64, i8*, ...) #3

declare i8* @getcfname(i32, i32, i32, i8*) #3

; Function Attrs: nounwind
declare i32 @getopt(i32, i8**, i8*) #2

declare i32 @sm_io_fprintf(%struct.sm_file*, i32, i8*, ...) #3

; Function Attrs: noreturn nounwind
declare void @exit(i32) #5

; Function Attrs: nounwind uwtable
define internal void @praliases(i8* %filename, i32 %argc, i8** %argv) #0 {
entry:
  %filename.addr = alloca i8*, align 8
  %argc.addr = alloca i32, align 4
  %argv.addr = alloca i8**, align 8
  %result = alloca i32, align 4
  %colon = alloca i8*, align 8
  %db_name = alloca i8*, align 8
  %db_type = alloca i8*, align 8
  %database = alloca %struct.database_struct*, align 8
  %cursor = alloca %struct.cursor_struct*, align 8
  %db_key = alloca %struct.entry_struct, align 8
  %db_value = alloca %struct.entry_struct, align 8
  %params = alloca %struct.database_params_struct, align 4
  %user_info = alloca %struct.database_user_struct, align 4
  %__s1_len = alloca i64, align 8
  %__s2_len = alloca i64, align 8
  %tmp = alloca i32, align 4
  %__s1 = alloca i8*, align 8
  %__result = alloca i32, align 4
  %tmp84 = alloca i32, align 4
  %__s1_len90 = alloca i64, align 8
  %__s2_len92 = alloca i64, align 8
  %tmp93 = alloca i32, align 4
  %__s199 = alloca i8*, align 8
  %__result101 = alloca i32, align 4
  %tmp139 = alloca i32, align 4
  %__s1_len148 = alloca i64, align 8
  %__s2_len150 = alloca i64, align 8
  %tmp151 = alloca i32, align 4
  %__s1157 = alloca i8*, align 8
  %__result159 = alloca i32, align 4
  %tmp197 = alloca i32, align 4
  %cleanup.dest.slot = alloca i32
  %get_res = alloca i32, align 4
  store i8* %filename, i8** %filename.addr, align 8, !tbaa !5
  store i32 %argc, i32* %argc.addr, align 4, !tbaa !1
  store i8** %argv, i8*** %argv.addr, align 8, !tbaa !5
  %0 = bitcast i32* %result to i8*
  call void @llvm.lifetime.start(i64 4, i8* %0) #1
  %1 = bitcast i8** %colon to i8*
  call void @llvm.lifetime.start(i64 8, i8* %1) #1
  %2 = bitcast i8** %db_name to i8*
  call void @llvm.lifetime.start(i64 8, i8* %2) #1
  %3 = bitcast i8** %db_type to i8*
  call void @llvm.lifetime.start(i64 8, i8* %3) #1
  %4 = bitcast %struct.database_struct** %database to i8*
  call void @llvm.lifetime.start(i64 8, i8* %4) #1
  store %struct.database_struct* null, %struct.database_struct** %database, align 8, !tbaa !5
  %5 = bitcast %struct.cursor_struct** %cursor to i8*
  call void @llvm.lifetime.start(i64 8, i8* %5) #1
  store %struct.cursor_struct* null, %struct.cursor_struct** %cursor, align 8, !tbaa !5
  %6 = bitcast %struct.entry_struct* %db_key to i8*
  call void @llvm.lifetime.start(i64 16, i8* %6) #1
  %7 = bitcast %struct.entry_struct* %db_value to i8*
  call void @llvm.lifetime.start(i64 16, i8* %7) #1
  %8 = bitcast %struct.database_params_struct* %params to i8*
  call void @llvm.lifetime.start(i64 12, i8* %8) #1
  %9 = bitcast %struct.database_user_struct* %user_info to i8*
  call void @llvm.lifetime.start(i64 1032, i8* %9) #1
  %10 = load i8*, i8** %filename.addr, align 8, !tbaa !5
  %call = call i8* @strchr(i8* %10, i32 58) #1
  store i8* %call, i8** %colon, align 8, !tbaa !5
  %11 = load i8*, i8** %colon, align 8, !tbaa !5
  %cmp = icmp eq i8* %11, null
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %12 = load i8*, i8** %filename.addr, align 8, !tbaa !5
  store i8* %12, i8** %db_name, align 8, !tbaa !5
  store i8* null, i8** %db_type, align 8, !tbaa !5
  br label %if.end

if.else:                                          ; preds = %entry
  %13 = load i8*, i8** %colon, align 8, !tbaa !5
  store i8 0, i8* %13, align 1, !tbaa !9
  %14 = load i8*, i8** %colon, align 8, !tbaa !5
  %add.ptr = getelementptr inbounds i8, i8* %14, i64 1
  store i8* %add.ptr, i8** %db_name, align 8, !tbaa !5
  %15 = load i8*, i8** %filename.addr, align 8, !tbaa !5
  store i8* %15, i8** %db_type, align 8, !tbaa !5
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  br label %for.cond

for.cond:                                         ; preds = %while.end.33, %if.end
  br label %while.cond

while.cond:                                       ; preds = %while.body, %for.cond
  %16 = load i8*, i8** %db_name, align 8, !tbaa !5
  %17 = load i8, i8* %16, align 1, !tbaa !9
  %conv = sext i8 %17 to i32
  %and = and i32 %conv, -128
  %cmp1 = icmp eq i32 %and, 0
  br i1 %cmp1, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %while.cond
  %18 = load i8*, i8** %db_name, align 8, !tbaa !5
  %19 = load i8, i8* %18, align 1, !tbaa !9
  %conv3 = sext i8 %19 to i32
  %idxprom = sext i32 %conv3 to i64
  %call4 = call i16** @__ctype_b_loc() #10
  %20 = load i16*, i16** %call4, align 8, !tbaa !5
  %arrayidx = getelementptr inbounds i16, i16* %20, i64 %idxprom
  %21 = load i16, i16* %arrayidx, align 2, !tbaa !10
  %conv5 = zext i16 %21 to i32
  %and6 = and i32 %conv5, 8192
  %tobool = icmp ne i32 %and6, 0
  br label %land.end

land.end:                                         ; preds = %land.rhs, %while.cond
  %22 = phi i1 [ false, %while.cond ], [ %tobool, %land.rhs ]
  br i1 %22, label %while.body, label %while.end

while.body:                                       ; preds = %land.end
  %23 = load i8*, i8** %db_name, align 8, !tbaa !5
  %incdec.ptr = getelementptr inbounds i8, i8* %23, i32 1
  store i8* %incdec.ptr, i8** %db_name, align 8, !tbaa !5
  br label %while.cond

while.end:                                        ; preds = %land.end
  %24 = load i8*, i8** %db_name, align 8, !tbaa !5
  %25 = load i8, i8* %24, align 1, !tbaa !9
  %conv7 = sext i8 %25 to i32
  %cmp8 = icmp ne i32 %conv7, 45
  br i1 %cmp8, label %if.then.10, label %if.end.11

if.then.10:                                       ; preds = %while.end
  br label %for.end

if.end.11:                                        ; preds = %while.end
  br label %while.cond.12

while.cond.12:                                    ; preds = %while.body.31, %if.end.11
  %26 = load i8*, i8** %db_name, align 8, !tbaa !5
  %27 = load i8, i8* %26, align 1, !tbaa !9
  %conv13 = sext i8 %27 to i32
  %cmp14 = icmp ne i32 %conv13, 0
  br i1 %cmp14, label %land.rhs.16, label %land.end.30

land.rhs.16:                                      ; preds = %while.cond.12
  %28 = load i8*, i8** %db_name, align 8, !tbaa !5
  %29 = load i8, i8* %28, align 1, !tbaa !9
  %conv17 = sext i8 %29 to i32
  %and18 = and i32 %conv17, -128
  %cmp19 = icmp eq i32 %and18, 0
  br i1 %cmp19, label %land.rhs.21, label %land.end.29

land.rhs.21:                                      ; preds = %land.rhs.16
  %30 = load i8*, i8** %db_name, align 8, !tbaa !5
  %31 = load i8, i8* %30, align 1, !tbaa !9
  %conv22 = sext i8 %31 to i32
  %idxprom23 = sext i32 %conv22 to i64
  %call24 = call i16** @__ctype_b_loc() #10
  %32 = load i16*, i16** %call24, align 8, !tbaa !5
  %arrayidx25 = getelementptr inbounds i16, i16* %32, i64 %idxprom23
  %33 = load i16, i16* %arrayidx25, align 2, !tbaa !10
  %conv26 = zext i16 %33 to i32
  %and27 = and i32 %conv26, 8192
  %tobool28 = icmp ne i32 %and27, 0
  br label %land.end.29

land.end.29:                                      ; preds = %land.rhs.21, %land.rhs.16
  %34 = phi i1 [ false, %land.rhs.16 ], [ %tobool28, %land.rhs.21 ]
  %lnot = xor i1 %34, true
  br label %land.end.30

land.end.30:                                      ; preds = %land.end.29, %while.cond.12
  %35 = phi i1 [ false, %while.cond.12 ], [ %lnot, %land.end.29 ]
  br i1 %35, label %while.body.31, label %while.end.33

while.body.31:                                    ; preds = %land.end.30
  %36 = load i8*, i8** %db_name, align 8, !tbaa !5
  %incdec.ptr32 = getelementptr inbounds i8, i8* %36, i32 1
  store i8* %incdec.ptr32, i8** %db_name, align 8, !tbaa !5
  br label %while.cond.12

while.end.33:                                     ; preds = %land.end.30
  br label %for.cond

for.end:                                          ; preds = %if.then.10
  %37 = load i8*, i8** %db_type, align 8, !tbaa !5
  %cmp34 = icmp ne i8* %37, null
  br i1 %cmp34, label %land.lhs.true, label %if.end.207

land.lhs.true:                                    ; preds = %for.end
  %38 = load i8*, i8** %db_type, align 8, !tbaa !5
  %39 = load i8, i8* %38, align 1, !tbaa !9
  %conv36 = sext i8 %39 to i32
  %cmp37 = icmp ne i32 %conv36, 0
  br i1 %cmp37, label %if.then.39, label %if.end.207

if.then.39:                                       ; preds = %land.lhs.true
  %40 = load i8*, i8** %db_type, align 8, !tbaa !5
  %cmp40 = icmp ne i8* %40, null
  br i1 %cmp40, label %land.lhs.true.42, label %if.end.206

land.lhs.true.42:                                 ; preds = %if.then.39
  %41 = bitcast i64* %__s1_len to i8*
  call void @llvm.lifetime.start(i64 8, i8* %41) #1
  %42 = bitcast i64* %__s2_len to i8*
  call void @llvm.lifetime.start(i64 8, i8* %42) #1
  br i1 icmp eq (i64 sub (i64 ptrtoint (i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.8, i32 0, i64 1) to i64), i64 ptrtoint ([5 x i8]* @.str.8 to i64)), i64 1), label %land.lhs.true.43, label %cond.false

land.lhs.true.43:                                 ; preds = %land.lhs.true.42
  store i64 4, i64* %__s2_len, align 8, !tbaa !12
  %43 = load i64, i64* %__s2_len, align 8, !tbaa !12
  %cmp44 = icmp ult i64 %43, 4
  br i1 %cmp44, label %cond.true, label %cond.false

cond.true:                                        ; preds = %land.lhs.true.43
  %44 = bitcast i8** %__s1 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %44) #1
  %45 = load i8*, i8** %db_type, align 8, !tbaa !5
  store i8* %45, i8** %__s1, align 8, !tbaa !5
  %46 = bitcast i32* %__result to i8*
  call void @llvm.lifetime.start(i64 4, i8* %46) #1
  %47 = load i8*, i8** %__s1, align 8, !tbaa !5
  %arrayidx48 = getelementptr inbounds i8, i8* %47, i64 0
  %48 = load i8, i8* %arrayidx48, align 1, !tbaa !9
  %conv49 = zext i8 %48 to i32
  %49 = load i8, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.8, i32 0, i32 0), align 1, !tbaa !9
  %conv50 = zext i8 %49 to i32
  %sub = sub nsw i32 %conv49, %conv50
  store i32 %sub, i32* %__result, align 4, !tbaa !1
  %50 = load i64, i64* %__s2_len, align 8, !tbaa !12
  %cmp51 = icmp ugt i64 %50, 0
  br i1 %cmp51, label %land.lhs.true.53, label %if.end.83

land.lhs.true.53:                                 ; preds = %cond.true
  %51 = load i32, i32* %__result, align 4, !tbaa !1
  %cmp54 = icmp eq i32 %51, 0
  br i1 %cmp54, label %if.then.56, label %if.end.83

if.then.56:                                       ; preds = %land.lhs.true.53
  %52 = load i8*, i8** %__s1, align 8, !tbaa !5
  %arrayidx57 = getelementptr inbounds i8, i8* %52, i64 1
  %53 = load i8, i8* %arrayidx57, align 1, !tbaa !9
  %conv58 = zext i8 %53 to i32
  %54 = load i8, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.8, i32 0, i64 1), align 1, !tbaa !9
  %conv59 = zext i8 %54 to i32
  %sub60 = sub nsw i32 %conv58, %conv59
  store i32 %sub60, i32* %__result, align 4, !tbaa !1
  %55 = load i64, i64* %__s2_len, align 8, !tbaa !12
  %cmp61 = icmp ugt i64 %55, 1
  br i1 %cmp61, label %land.lhs.true.63, label %if.end.82

land.lhs.true.63:                                 ; preds = %if.then.56
  %56 = load i32, i32* %__result, align 4, !tbaa !1
  %cmp64 = icmp eq i32 %56, 0
  br i1 %cmp64, label %if.then.66, label %if.end.82

if.then.66:                                       ; preds = %land.lhs.true.63
  %57 = load i8*, i8** %__s1, align 8, !tbaa !5
  %arrayidx67 = getelementptr inbounds i8, i8* %57, i64 2
  %58 = load i8, i8* %arrayidx67, align 1, !tbaa !9
  %conv68 = zext i8 %58 to i32
  %59 = load i8, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.8, i32 0, i64 2), align 1, !tbaa !9
  %conv69 = zext i8 %59 to i32
  %sub70 = sub nsw i32 %conv68, %conv69
  store i32 %sub70, i32* %__result, align 4, !tbaa !1
  %60 = load i64, i64* %__s2_len, align 8, !tbaa !12
  %cmp71 = icmp ugt i64 %60, 2
  br i1 %cmp71, label %land.lhs.true.73, label %if.end.81

land.lhs.true.73:                                 ; preds = %if.then.66
  %61 = load i32, i32* %__result, align 4, !tbaa !1
  %cmp74 = icmp eq i32 %61, 0
  br i1 %cmp74, label %if.then.76, label %if.end.81

if.then.76:                                       ; preds = %land.lhs.true.73
  %62 = load i8*, i8** %__s1, align 8, !tbaa !5
  %arrayidx77 = getelementptr inbounds i8, i8* %62, i64 3
  %63 = load i8, i8* %arrayidx77, align 1, !tbaa !9
  %conv78 = zext i8 %63 to i32
  %64 = load i8, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.8, i32 0, i64 3), align 1, !tbaa !9
  %conv79 = zext i8 %64 to i32
  %sub80 = sub nsw i32 %conv78, %conv79
  store i32 %sub80, i32* %__result, align 4, !tbaa !1
  br label %if.end.81

if.end.81:                                        ; preds = %if.then.76, %land.lhs.true.73, %if.then.66
  br label %if.end.82

if.end.82:                                        ; preds = %if.end.81, %land.lhs.true.63, %if.then.56
  br label %if.end.83

if.end.83:                                        ; preds = %if.end.82, %land.lhs.true.53, %cond.true
  %65 = load i32, i32* %__result, align 4, !tbaa !1
  store i32 %65, i32* %tmp84, !tbaa !1
  %66 = bitcast i32* %__result to i8*
  call void @llvm.lifetime.end(i64 4, i8* %66) #1
  %67 = bitcast i8** %__s1 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %67) #1
  %68 = load i32, i32* %tmp84, !tbaa !1
  br label %cond.end

cond.false:                                       ; preds = %land.lhs.true.43, %land.lhs.true.42
  %69 = load i8*, i8** %db_type, align 8, !tbaa !5
  %call85 = call i32 @strcmp(i8* %69, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.8, i32 0, i32 0)) #1
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %if.end.83
  %cond = phi i32 [ %68, %if.end.83 ], [ %call85, %cond.false ]
  store i32 %cond, i32* %tmp, !tbaa !1
  %70 = bitcast i64* %__s2_len to i8*
  call void @llvm.lifetime.end(i64 8, i8* %70) #1
  %71 = bitcast i64* %__s1_len to i8*
  call void @llvm.lifetime.end(i64 8, i8* %71) #1
  %72 = load i32, i32* %tmp, !tbaa !1
  %cmp86 = icmp ne i32 %72, 0
  br i1 %cmp86, label %land.lhs.true.88, label %if.end.206

land.lhs.true.88:                                 ; preds = %cond.end
  %73 = bitcast i64* %__s1_len90 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %73) #1
  %74 = bitcast i64* %__s2_len92 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %74) #1
  br i1 icmp eq (i64 sub (i64 ptrtoint (i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.9, i32 0, i64 1) to i64), i64 ptrtoint ([6 x i8]* @.str.9 to i64)), i64 1), label %land.lhs.true.94, label %cond.false.140

land.lhs.true.94:                                 ; preds = %land.lhs.true.88
  store i64 5, i64* %__s2_len92, align 8, !tbaa !12
  %75 = load i64, i64* %__s2_len92, align 8, !tbaa !12
  %cmp95 = icmp ult i64 %75, 4
  br i1 %cmp95, label %cond.true.97, label %cond.false.140

cond.true.97:                                     ; preds = %land.lhs.true.94
  %76 = bitcast i8** %__s199 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %76) #1
  %77 = load i8*, i8** %db_type, align 8, !tbaa !5
  store i8* %77, i8** %__s199, align 8, !tbaa !5
  %78 = bitcast i32* %__result101 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %78) #1
  %79 = load i8*, i8** %__s199, align 8, !tbaa !5
  %arrayidx102 = getelementptr inbounds i8, i8* %79, i64 0
  %80 = load i8, i8* %arrayidx102, align 1, !tbaa !9
  %conv103 = zext i8 %80 to i32
  %81 = load i8, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.9, i32 0, i32 0), align 1, !tbaa !9
  %conv104 = zext i8 %81 to i32
  %sub105 = sub nsw i32 %conv103, %conv104
  store i32 %sub105, i32* %__result101, align 4, !tbaa !1
  %82 = load i64, i64* %__s2_len92, align 8, !tbaa !12
  %cmp106 = icmp ugt i64 %82, 0
  br i1 %cmp106, label %land.lhs.true.108, label %if.end.138

land.lhs.true.108:                                ; preds = %cond.true.97
  %83 = load i32, i32* %__result101, align 4, !tbaa !1
  %cmp109 = icmp eq i32 %83, 0
  br i1 %cmp109, label %if.then.111, label %if.end.138

if.then.111:                                      ; preds = %land.lhs.true.108
  %84 = load i8*, i8** %__s199, align 8, !tbaa !5
  %arrayidx112 = getelementptr inbounds i8, i8* %84, i64 1
  %85 = load i8, i8* %arrayidx112, align 1, !tbaa !9
  %conv113 = zext i8 %85 to i32
  %86 = load i8, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.9, i32 0, i64 1), align 1, !tbaa !9
  %conv114 = zext i8 %86 to i32
  %sub115 = sub nsw i32 %conv113, %conv114
  store i32 %sub115, i32* %__result101, align 4, !tbaa !1
  %87 = load i64, i64* %__s2_len92, align 8, !tbaa !12
  %cmp116 = icmp ugt i64 %87, 1
  br i1 %cmp116, label %land.lhs.true.118, label %if.end.137

land.lhs.true.118:                                ; preds = %if.then.111
  %88 = load i32, i32* %__result101, align 4, !tbaa !1
  %cmp119 = icmp eq i32 %88, 0
  br i1 %cmp119, label %if.then.121, label %if.end.137

if.then.121:                                      ; preds = %land.lhs.true.118
  %89 = load i8*, i8** %__s199, align 8, !tbaa !5
  %arrayidx122 = getelementptr inbounds i8, i8* %89, i64 2
  %90 = load i8, i8* %arrayidx122, align 1, !tbaa !9
  %conv123 = zext i8 %90 to i32
  %91 = load i8, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.9, i32 0, i64 2), align 1, !tbaa !9
  %conv124 = zext i8 %91 to i32
  %sub125 = sub nsw i32 %conv123, %conv124
  store i32 %sub125, i32* %__result101, align 4, !tbaa !1
  %92 = load i64, i64* %__s2_len92, align 8, !tbaa !12
  %cmp126 = icmp ugt i64 %92, 2
  br i1 %cmp126, label %land.lhs.true.128, label %if.end.136

land.lhs.true.128:                                ; preds = %if.then.121
  %93 = load i32, i32* %__result101, align 4, !tbaa !1
  %cmp129 = icmp eq i32 %93, 0
  br i1 %cmp129, label %if.then.131, label %if.end.136

if.then.131:                                      ; preds = %land.lhs.true.128
  %94 = load i8*, i8** %__s199, align 8, !tbaa !5
  %arrayidx132 = getelementptr inbounds i8, i8* %94, i64 3
  %95 = load i8, i8* %arrayidx132, align 1, !tbaa !9
  %conv133 = zext i8 %95 to i32
  %96 = load i8, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.9, i32 0, i64 3), align 1, !tbaa !9
  %conv134 = zext i8 %96 to i32
  %sub135 = sub nsw i32 %conv133, %conv134
  store i32 %sub135, i32* %__result101, align 4, !tbaa !1
  br label %if.end.136

if.end.136:                                       ; preds = %if.then.131, %land.lhs.true.128, %if.then.121
  br label %if.end.137

if.end.137:                                       ; preds = %if.end.136, %land.lhs.true.118, %if.then.111
  br label %if.end.138

if.end.138:                                       ; preds = %if.end.137, %land.lhs.true.108, %cond.true.97
  %97 = load i32, i32* %__result101, align 4, !tbaa !1
  store i32 %97, i32* %tmp139, !tbaa !1
  %98 = bitcast i32* %__result101 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %98) #1
  %99 = bitcast i8** %__s199 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %99) #1
  %100 = load i32, i32* %tmp139, !tbaa !1
  br label %cond.end.142

cond.false.140:                                   ; preds = %land.lhs.true.94, %land.lhs.true.88
  %101 = load i8*, i8** %db_type, align 8, !tbaa !5
  %call141 = call i32 @strcmp(i8* %101, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.9, i32 0, i32 0)) #1
  br label %cond.end.142

cond.end.142:                                     ; preds = %cond.false.140, %if.end.138
  %cond143 = phi i32 [ %100, %if.end.138 ], [ %call141, %cond.false.140 ]
  store i32 %cond143, i32* %tmp93, !tbaa !1
  %102 = bitcast i64* %__s2_len92 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %102) #1
  %103 = bitcast i64* %__s1_len90 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %103) #1
  %104 = load i32, i32* %tmp93, !tbaa !1
  %cmp144 = icmp ne i32 %104, 0
  br i1 %cmp144, label %land.lhs.true.146, label %if.end.206

land.lhs.true.146:                                ; preds = %cond.end.142
  %105 = bitcast i64* %__s1_len148 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %105) #1
  %106 = bitcast i64* %__s2_len150 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %106) #1
  br i1 icmp eq (i64 sub (i64 ptrtoint (i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.10, i32 0, i64 1) to i64), i64 ptrtoint ([4 x i8]* @.str.10 to i64)), i64 1), label %land.lhs.true.152, label %cond.false.198

land.lhs.true.152:                                ; preds = %land.lhs.true.146
  store i64 3, i64* %__s2_len150, align 8, !tbaa !12
  %107 = load i64, i64* %__s2_len150, align 8, !tbaa !12
  %cmp153 = icmp ult i64 %107, 4
  br i1 %cmp153, label %cond.true.155, label %cond.false.198

cond.true.155:                                    ; preds = %land.lhs.true.152
  %108 = bitcast i8** %__s1157 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %108) #1
  %109 = load i8*, i8** %db_type, align 8, !tbaa !5
  store i8* %109, i8** %__s1157, align 8, !tbaa !5
  %110 = bitcast i32* %__result159 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %110) #1
  %111 = load i8*, i8** %__s1157, align 8, !tbaa !5
  %arrayidx160 = getelementptr inbounds i8, i8* %111, i64 0
  %112 = load i8, i8* %arrayidx160, align 1, !tbaa !9
  %conv161 = zext i8 %112 to i32
  %113 = load i8, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.10, i32 0, i32 0), align 1, !tbaa !9
  %conv162 = zext i8 %113 to i32
  %sub163 = sub nsw i32 %conv161, %conv162
  store i32 %sub163, i32* %__result159, align 4, !tbaa !1
  %114 = load i64, i64* %__s2_len150, align 8, !tbaa !12
  %cmp164 = icmp ugt i64 %114, 0
  br i1 %cmp164, label %land.lhs.true.166, label %if.end.196

land.lhs.true.166:                                ; preds = %cond.true.155
  %115 = load i32, i32* %__result159, align 4, !tbaa !1
  %cmp167 = icmp eq i32 %115, 0
  br i1 %cmp167, label %if.then.169, label %if.end.196

if.then.169:                                      ; preds = %land.lhs.true.166
  %116 = load i8*, i8** %__s1157, align 8, !tbaa !5
  %arrayidx170 = getelementptr inbounds i8, i8* %116, i64 1
  %117 = load i8, i8* %arrayidx170, align 1, !tbaa !9
  %conv171 = zext i8 %117 to i32
  %118 = load i8, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.10, i32 0, i64 1), align 1, !tbaa !9
  %conv172 = zext i8 %118 to i32
  %sub173 = sub nsw i32 %conv171, %conv172
  store i32 %sub173, i32* %__result159, align 4, !tbaa !1
  %119 = load i64, i64* %__s2_len150, align 8, !tbaa !12
  %cmp174 = icmp ugt i64 %119, 1
  br i1 %cmp174, label %land.lhs.true.176, label %if.end.195

land.lhs.true.176:                                ; preds = %if.then.169
  %120 = load i32, i32* %__result159, align 4, !tbaa !1
  %cmp177 = icmp eq i32 %120, 0
  br i1 %cmp177, label %if.then.179, label %if.end.195

if.then.179:                                      ; preds = %land.lhs.true.176
  %121 = load i8*, i8** %__s1157, align 8, !tbaa !5
  %arrayidx180 = getelementptr inbounds i8, i8* %121, i64 2
  %122 = load i8, i8* %arrayidx180, align 1, !tbaa !9
  %conv181 = zext i8 %122 to i32
  %123 = load i8, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.10, i32 0, i64 2), align 1, !tbaa !9
  %conv182 = zext i8 %123 to i32
  %sub183 = sub nsw i32 %conv181, %conv182
  store i32 %sub183, i32* %__result159, align 4, !tbaa !1
  %124 = load i64, i64* %__s2_len150, align 8, !tbaa !12
  %cmp184 = icmp ugt i64 %124, 2
  br i1 %cmp184, label %land.lhs.true.186, label %if.end.194

land.lhs.true.186:                                ; preds = %if.then.179
  %125 = load i32, i32* %__result159, align 4, !tbaa !1
  %cmp187 = icmp eq i32 %125, 0
  br i1 %cmp187, label %if.then.189, label %if.end.194

if.then.189:                                      ; preds = %land.lhs.true.186
  %126 = load i8*, i8** %__s1157, align 8, !tbaa !5
  %arrayidx190 = getelementptr inbounds i8, i8* %126, i64 3
  %127 = load i8, i8* %arrayidx190, align 1, !tbaa !9
  %conv191 = zext i8 %127 to i32
  %128 = load i8, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.10, i32 0, i64 3), align 1, !tbaa !9
  %conv192 = zext i8 %128 to i32
  %sub193 = sub nsw i32 %conv191, %conv192
  store i32 %sub193, i32* %__result159, align 4, !tbaa !1
  br label %if.end.194

if.end.194:                                       ; preds = %if.then.189, %land.lhs.true.186, %if.then.179
  br label %if.end.195

if.end.195:                                       ; preds = %if.end.194, %land.lhs.true.176, %if.then.169
  br label %if.end.196

if.end.196:                                       ; preds = %if.end.195, %land.lhs.true.166, %cond.true.155
  %129 = load i32, i32* %__result159, align 4, !tbaa !1
  store i32 %129, i32* %tmp197, !tbaa !1
  %130 = bitcast i32* %__result159 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %130) #1
  %131 = bitcast i8** %__s1157 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %131) #1
  %132 = load i32, i32* %tmp197, !tbaa !1
  br label %cond.end.200

cond.false.198:                                   ; preds = %land.lhs.true.152, %land.lhs.true.146
  %133 = load i8*, i8** %db_type, align 8, !tbaa !5
  %call199 = call i32 @strcmp(i8* %133, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.10, i32 0, i32 0)) #1
  br label %cond.end.200

cond.end.200:                                     ; preds = %cond.false.198, %if.end.196
  %cond201 = phi i32 [ %132, %if.end.196 ], [ %call199, %cond.false.198 ]
  store i32 %cond201, i32* %tmp151, !tbaa !1
  %134 = bitcast i64* %__s2_len150 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %134) #1
  %135 = bitcast i64* %__s1_len148 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %135) #1
  %136 = load i32, i32* %tmp151, !tbaa !1
  %cmp202 = icmp ne i32 %136, 0
  br i1 %cmp202, label %if.then.204, label %if.end.206

if.then.204:                                      ; preds = %cond.end.200
  %137 = load i8*, i8** %db_type, align 8, !tbaa !5
  %call205 = call i32 (%struct.sm_file*, i32, i8*, ...) @sm_io_fprintf(%struct.sm_file* getelementptr inbounds ([0 x %struct.sm_file], [0 x %struct.sm_file]* @SmIoF, i32 0, i64 2), i32 -2, i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str.11, i32 0, i32 0), i8* %137)
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.206:                                       ; preds = %cond.end.200, %cond.end.142, %cond.end, %if.then.39
  br label %if.end.207

if.end.207:                                       ; preds = %if.end.206, %land.lhs.true, %for.end
  %138 = load i8*, i8** %db_name, align 8, !tbaa !5
  %139 = load i8, i8* %138, align 1, !tbaa !9
  %conv208 = sext i8 %139 to i32
  %cmp209 = icmp eq i32 %conv208, 0
  br i1 %cmp209, label %if.then.217, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.end.207
  %140 = load i8*, i8** %db_type, align 8, !tbaa !5
  %cmp211 = icmp ne i8* %140, null
  br i1 %cmp211, label %land.lhs.true.213, label %if.end.223

land.lhs.true.213:                                ; preds = %lor.lhs.false
  %141 = load i8*, i8** %db_type, align 8, !tbaa !5
  %142 = load i8, i8* %141, align 1, !tbaa !9
  %conv214 = sext i8 %142 to i32
  %cmp215 = icmp eq i32 %conv214, 0
  br i1 %cmp215, label %if.then.217, label %if.end.223

if.then.217:                                      ; preds = %land.lhs.true.213, %if.end.207
  %143 = load i8*, i8** %colon, align 8, !tbaa !5
  %cmp218 = icmp ne i8* %143, null
  br i1 %cmp218, label %if.then.220, label %if.end.221

if.then.220:                                      ; preds = %if.then.217
  %144 = load i8*, i8** %colon, align 8, !tbaa !5
  store i8 58, i8* %144, align 1, !tbaa !9
  br label %if.end.221

if.end.221:                                       ; preds = %if.then.220, %if.then.217
  %145 = load i8*, i8** %filename.addr, align 8, !tbaa !5
  %call222 = call i32 (%struct.sm_file*, i32, i8*, ...) @sm_io_fprintf(%struct.sm_file* getelementptr inbounds ([0 x %struct.sm_file], [0 x %struct.sm_file]* @SmIoF, i32 0, i64 2), i32 -2, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.12, i32 0, i32 0), i8* %145)
  br label %fatal

if.end.223:                                       ; preds = %land.lhs.true.213, %lor.lhs.false
  %146 = bitcast %struct.database_params_struct* %params to i8*
  call void @llvm.memset.p0i8.i64(i8* %146, i8 0, i64 12, i32 4, i1 false)
  %smdbp_cache_size = getelementptr inbounds %struct.database_params_struct, %struct.database_params_struct* %params, i32 0, i32 1
  store i32 1048576, i32* %smdbp_cache_size, align 4, !tbaa !14
  %147 = load i32, i32* @RunAsUid, align 4, !tbaa !1
  %smdbu_id = getelementptr inbounds %struct.database_user_struct, %struct.database_user_struct* %user_info, i32 0, i32 0
  store i32 %147, i32* %smdbu_id, align 4, !tbaa !16
  %148 = load i32, i32* @RunAsGid, align 4, !tbaa !1
  %smdbu_group_id = getelementptr inbounds %struct.database_user_struct, %struct.database_user_struct* %user_info, i32 0, i32 1
  store i32 %148, i32* %smdbu_group_id, align 4, !tbaa !18
  %smdbu_name = getelementptr inbounds %struct.database_user_struct, %struct.database_user_struct* %user_info, i32 0, i32 2
  %arraydecay = getelementptr inbounds [1024 x i8], [1024 x i8]* %smdbu_name, i32 0, i32 0
  %149 = load i8*, i8** @RunAsUserName, align 8, !tbaa !5
  %call224 = call i64 @sm_strlcpy(i8* %arraydecay, i8* %149, i64 1024)
  %150 = load i8*, i8** %db_name, align 8, !tbaa !5
  %151 = load i8*, i8** %db_type, align 8, !tbaa !5
  %call225 = call i32 @smdb_open_database(%struct.database_struct** %database, i8* %150, i32 0, i32 0, i64 4, i8* %151, %struct.database_user_struct* %user_info, %struct.database_params_struct* %params)
  store i32 %call225, i32* %result, align 4, !tbaa !1
  %152 = load i32, i32* %result, align 4, !tbaa !1
  %cmp226 = icmp ne i32 %152, 0
  br i1 %cmp226, label %if.then.228, label %if.end.231

if.then.228:                                      ; preds = %if.end.223
  %153 = load i8*, i8** %db_name, align 8, !tbaa !5
  %154 = load i32, i32* %result, align 4, !tbaa !1
  %call229 = call i8* @sm_errstring(i32 %154)
  %call230 = call i32 (%struct.sm_file*, i32, i8*, ...) @sm_io_fprintf(%struct.sm_file* getelementptr inbounds ([0 x %struct.sm_file], [0 x %struct.sm_file]* @SmIoF, i32 0, i64 2), i32 -2, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.13, i32 0, i32 0), i8* %153, i8* %call229)
  br label %fatal

if.end.231:                                       ; preds = %if.end.223
  %155 = load i32, i32* %argc.addr, align 4, !tbaa !1
  %cmp232 = icmp eq i32 %155, 0
  br i1 %cmp232, label %if.then.234, label %if.else.262

if.then.234:                                      ; preds = %if.end.231
  %156 = bitcast %struct.entry_struct* %db_key to i8*
  call void @llvm.memset.p0i8.i64(i8* %156, i8 0, i64 16, i32 8, i1 false)
  %157 = bitcast %struct.entry_struct* %db_value to i8*
  call void @llvm.memset.p0i8.i64(i8* %157, i8 0, i64 16, i32 8, i1 false)
  %158 = load %struct.database_struct*, %struct.database_struct** %database, align 8, !tbaa !5
  %smdb_cursor = getelementptr inbounds %struct.database_struct, %struct.database_struct* %158, i32 0, i32 7
  %159 = load i32 (%struct.database_struct*, %struct.cursor_struct**, i32)*, i32 (%struct.database_struct*, %struct.cursor_struct**, i32)** %smdb_cursor, align 8, !tbaa !19
  %160 = load %struct.database_struct*, %struct.database_struct** %database, align 8, !tbaa !5
  %call235 = call i32 %159(%struct.database_struct* %160, %struct.cursor_struct** %cursor, i32 0)
  store i32 %call235, i32* %result, align 4, !tbaa !1
  %161 = load i32, i32* %result, align 4, !tbaa !1
  %cmp236 = icmp ne i32 %161, 0
  br i1 %cmp236, label %if.then.238, label %if.end.241

if.then.238:                                      ; preds = %if.then.234
  %162 = load i8*, i8** %db_name, align 8, !tbaa !5
  %163 = load i32, i32* %result, align 4, !tbaa !1
  %call239 = call i8* @sm_errstring(i32 %163)
  %call240 = call i32 (%struct.sm_file*, i32, i8*, ...) @sm_io_fprintf(%struct.sm_file* getelementptr inbounds ([0 x %struct.sm_file], [0 x %struct.sm_file]* @SmIoF, i32 0, i64 2), i32 -2, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.14, i32 0, i32 0), i8* %162, i8* %call239)
  br label %fatal

if.end.241:                                       ; preds = %if.then.234
  br label %while.cond.242

while.cond.242:                                   ; preds = %while.body.246, %if.end.241
  %164 = load %struct.cursor_struct*, %struct.cursor_struct** %cursor, align 8, !tbaa !5
  %smdbc_get = getelementptr inbounds %struct.cursor_struct, %struct.cursor_struct* %164, i32 0, i32 2
  %165 = load i32 (%struct.cursor_struct*, %struct.entry_struct*, %struct.entry_struct*, i32)*, i32 (%struct.cursor_struct*, %struct.entry_struct*, %struct.entry_struct*, i32)** %smdbc_get, align 8, !tbaa !21
  %166 = load %struct.cursor_struct*, %struct.cursor_struct** %cursor, align 8, !tbaa !5
  %call243 = call i32 %165(%struct.cursor_struct* %166, %struct.entry_struct* %db_key, %struct.entry_struct* %db_value, i32 2)
  store i32 %call243, i32* %result, align 4, !tbaa !1
  %cmp244 = icmp eq i32 %call243, 0
  br i1 %cmp244, label %while.body.246, label %while.end.252

while.body.246:                                   ; preds = %while.cond.242
  %size = getelementptr inbounds %struct.entry_struct, %struct.entry_struct* %db_key, i32 0, i32 1
  %167 = load i64, i64* %size, align 8, !tbaa !23
  %conv247 = trunc i64 %167 to i32
  %data = getelementptr inbounds %struct.entry_struct, %struct.entry_struct* %db_key, i32 0, i32 0
  %168 = load i8*, i8** %data, align 8, !tbaa !25
  %size248 = getelementptr inbounds %struct.entry_struct, %struct.entry_struct* %db_value, i32 0, i32 1
  %169 = load i64, i64* %size248, align 8, !tbaa !23
  %conv249 = trunc i64 %169 to i32
  %data250 = getelementptr inbounds %struct.entry_struct, %struct.entry_struct* %db_value, i32 0, i32 0
  %170 = load i8*, i8** %data250, align 8, !tbaa !25
  %call251 = call i32 (%struct.sm_file*, i32, i8*, ...) @sm_io_fprintf(%struct.sm_file* getelementptr inbounds ([0 x %struct.sm_file], [0 x %struct.sm_file]* @SmIoF, i32 0, i64 1), i32 -2, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.15, i32 0, i32 0), i32 %conv247, i8* %168, i32 %conv249, i8* %170)
  br label %while.cond.242

while.end.252:                                    ; preds = %while.cond.242
  %171 = load i32, i32* %result, align 4, !tbaa !1
  %cmp253 = icmp ne i32 %171, 0
  br i1 %cmp253, label %land.lhs.true.255, label %if.end.261

land.lhs.true.255:                                ; preds = %while.end.252
  %172 = load i32, i32* %result, align 4, !tbaa !1
  %cmp256 = icmp ne i32 %172, 318
  br i1 %cmp256, label %if.then.258, label %if.end.261

if.then.258:                                      ; preds = %land.lhs.true.255
  %173 = load i8*, i8** %db_name, align 8, !tbaa !5
  %174 = load i32, i32* %result, align 4, !tbaa !1
  %call259 = call i8* @sm_errstring(i32 %174)
  %call260 = call i32 (%struct.sm_file*, i32, i8*, ...) @sm_io_fprintf(%struct.sm_file* getelementptr inbounds ([0 x %struct.sm_file], [0 x %struct.sm_file]* @SmIoF, i32 0, i64 2), i32 -2, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.16, i32 0, i32 0), i8* %173, i8* %call259)
  br label %fatal

if.end.261:                                       ; preds = %land.lhs.true.255, %while.end.252
  br label %if.end.294

if.else.262:                                      ; preds = %if.end.231
  br label %for.cond.263

for.cond.263:                                     ; preds = %for.inc, %if.else.262
  %175 = load i8**, i8*** %argv.addr, align 8, !tbaa !5
  %176 = load i8*, i8** %175, align 8, !tbaa !5
  %cmp264 = icmp ne i8* %176, null
  br i1 %cmp264, label %for.body, label %for.end.293

for.body:                                         ; preds = %for.cond.263
  %177 = bitcast i32* %get_res to i8*
  call void @llvm.lifetime.start(i64 4, i8* %177) #1
  %178 = bitcast %struct.entry_struct* %db_key to i8*
  call void @llvm.memset.p0i8.i64(i8* %178, i8 0, i64 16, i32 8, i1 false)
  %179 = bitcast %struct.entry_struct* %db_value to i8*
  call void @llvm.memset.p0i8.i64(i8* %179, i8 0, i64 16, i32 8, i1 false)
  %180 = load i8**, i8*** %argv.addr, align 8, !tbaa !5
  %181 = load i8*, i8** %180, align 8, !tbaa !5
  %data267 = getelementptr inbounds %struct.entry_struct, %struct.entry_struct* %db_key, i32 0, i32 0
  store i8* %181, i8** %data267, align 8, !tbaa !25
  %182 = load i8**, i8*** %argv.addr, align 8, !tbaa !5
  %183 = load i8*, i8** %182, align 8, !tbaa !5
  %call268 = call i64 @strlen(i8* %183) #8
  %size269 = getelementptr inbounds %struct.entry_struct, %struct.entry_struct* %db_key, i32 0, i32 1
  store i64 %call268, i64* %size269, align 8, !tbaa !23
  %184 = load %struct.database_struct*, %struct.database_struct** %database, align 8, !tbaa !5
  %smdb_get = getelementptr inbounds %struct.database_struct, %struct.database_struct* %184, i32 0, i32 3
  %185 = load i32 (%struct.database_struct*, %struct.entry_struct*, %struct.entry_struct*, i32)*, i32 (%struct.database_struct*, %struct.entry_struct*, %struct.entry_struct*, i32)** %smdb_get, align 8, !tbaa !26
  %186 = load %struct.database_struct*, %struct.database_struct** %database, align 8, !tbaa !5
  %call270 = call i32 %185(%struct.database_struct* %186, %struct.entry_struct* %db_key, %struct.entry_struct* %db_value, i32 0)
  store i32 %call270, i32* %get_res, align 4, !tbaa !1
  %187 = load i32, i32* %get_res, align 4, !tbaa !1
  %cmp271 = icmp eq i32 %187, 302
  br i1 %cmp271, label %if.then.273, label %if.end.277

if.then.273:                                      ; preds = %for.body
  %size274 = getelementptr inbounds %struct.entry_struct, %struct.entry_struct* %db_key, i32 0, i32 1
  %188 = load i64, i64* %size274, align 8, !tbaa !23
  %inc = add i64 %188, 1
  store i64 %inc, i64* %size274, align 8, !tbaa !23
  %189 = load %struct.database_struct*, %struct.database_struct** %database, align 8, !tbaa !5
  %smdb_get275 = getelementptr inbounds %struct.database_struct, %struct.database_struct* %189, i32 0, i32 3
  %190 = load i32 (%struct.database_struct*, %struct.entry_struct*, %struct.entry_struct*, i32)*, i32 (%struct.database_struct*, %struct.entry_struct*, %struct.entry_struct*, i32)** %smdb_get275, align 8, !tbaa !26
  %191 = load %struct.database_struct*, %struct.database_struct** %database, align 8, !tbaa !5
  %call276 = call i32 %190(%struct.database_struct* %191, %struct.entry_struct* %db_key, %struct.entry_struct* %db_value, i32 0)
  store i32 %call276, i32* %get_res, align 4, !tbaa !1
  br label %if.end.277

if.end.277:                                       ; preds = %if.then.273, %for.body
  %192 = load i32, i32* %get_res, align 4, !tbaa !1
  %cmp278 = icmp eq i32 %192, 0
  br i1 %cmp278, label %if.then.280, label %if.else.288

if.then.280:                                      ; preds = %if.end.277
  %size281 = getelementptr inbounds %struct.entry_struct, %struct.entry_struct* %db_key, i32 0, i32 1
  %193 = load i64, i64* %size281, align 8, !tbaa !23
  %conv282 = trunc i64 %193 to i32
  %data283 = getelementptr inbounds %struct.entry_struct, %struct.entry_struct* %db_key, i32 0, i32 0
  %194 = load i8*, i8** %data283, align 8, !tbaa !25
  %size284 = getelementptr inbounds %struct.entry_struct, %struct.entry_struct* %db_value, i32 0, i32 1
  %195 = load i64, i64* %size284, align 8, !tbaa !23
  %conv285 = trunc i64 %195 to i32
  %data286 = getelementptr inbounds %struct.entry_struct, %struct.entry_struct* %db_value, i32 0, i32 0
  %196 = load i8*, i8** %data286, align 8, !tbaa !25
  %call287 = call i32 (%struct.sm_file*, i32, i8*, ...) @sm_io_fprintf(%struct.sm_file* getelementptr inbounds ([0 x %struct.sm_file], [0 x %struct.sm_file]* @SmIoF, i32 0, i64 1), i32 -2, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.15, i32 0, i32 0), i32 %conv282, i8* %194, i32 %conv285, i8* %196)
  br label %if.end.291

if.else.288:                                      ; preds = %if.end.277
  %data289 = getelementptr inbounds %struct.entry_struct, %struct.entry_struct* %db_key, i32 0, i32 0
  %197 = load i8*, i8** %data289, align 8, !tbaa !25
  %call290 = call i32 (%struct.sm_file*, i32, i8*, ...) @sm_io_fprintf(%struct.sm_file* getelementptr inbounds ([0 x %struct.sm_file], [0 x %struct.sm_file]* @SmIoF, i32 0, i64 1), i32 -2, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.17, i32 0, i32 0), i8* %197)
  br label %if.end.291

if.end.291:                                       ; preds = %if.else.288, %if.then.280
  %198 = bitcast i32* %get_res to i8*
  call void @llvm.lifetime.end(i64 4, i8* %198) #1
  br label %for.inc

for.inc:                                          ; preds = %if.end.291
  %199 = load i8**, i8*** %argv.addr, align 8, !tbaa !5
  %incdec.ptr292 = getelementptr inbounds i8*, i8** %199, i32 1
  store i8** %incdec.ptr292, i8*** %argv.addr, align 8, !tbaa !5
  br label %for.cond.263

for.end.293:                                      ; preds = %for.cond.263
  br label %if.end.294

if.end.294:                                       ; preds = %for.end.293, %if.end.261
  br label %fatal

fatal:                                            ; preds = %if.end.294, %if.then.258, %if.then.238, %if.then.228, %if.end.221
  %200 = load %struct.cursor_struct*, %struct.cursor_struct** %cursor, align 8, !tbaa !5
  %cmp295 = icmp ne %struct.cursor_struct* %200, null
  br i1 %cmp295, label %if.then.297, label %if.end.299

if.then.297:                                      ; preds = %fatal
  %201 = load %struct.cursor_struct*, %struct.cursor_struct** %cursor, align 8, !tbaa !5
  %smdbc_close = getelementptr inbounds %struct.cursor_struct, %struct.cursor_struct* %201, i32 0, i32 0
  %202 = load i32 (%struct.cursor_struct*)*, i32 (%struct.cursor_struct*)** %smdbc_close, align 8, !tbaa !27
  %203 = load %struct.cursor_struct*, %struct.cursor_struct** %cursor, align 8, !tbaa !5
  %call298 = call i32 %202(%struct.cursor_struct* %203)
  br label %if.end.299

if.end.299:                                       ; preds = %if.then.297, %fatal
  %204 = load %struct.database_struct*, %struct.database_struct** %database, align 8, !tbaa !5
  %cmp300 = icmp ne %struct.database_struct* %204, null
  br i1 %cmp300, label %if.then.302, label %if.end.304

if.then.302:                                      ; preds = %if.end.299
  %205 = load %struct.database_struct*, %struct.database_struct** %database, align 8, !tbaa !5
  %smdb_close = getelementptr inbounds %struct.database_struct, %struct.database_struct* %205, i32 0, i32 0
  %206 = load i32 (%struct.database_struct*)*, i32 (%struct.database_struct*)** %smdb_close, align 8, !tbaa !28
  %207 = load %struct.database_struct*, %struct.database_struct** %database, align 8, !tbaa !5
  %call303 = call i32 %206(%struct.database_struct* %207)
  br label %if.end.304

if.end.304:                                       ; preds = %if.then.302, %if.end.299
  %208 = load i8*, i8** %colon, align 8, !tbaa !5
  %cmp305 = icmp ne i8* %208, null
  br i1 %cmp305, label %if.then.307, label %if.end.308

if.then.307:                                      ; preds = %if.end.304
  %209 = load i8*, i8** %colon, align 8, !tbaa !5
  store i8 58, i8* %209, align 1, !tbaa !9
  br label %if.end.308

if.end.308:                                       ; preds = %if.then.307, %if.end.304
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %if.end.308, %if.then.204
  %210 = bitcast %struct.database_user_struct* %user_info to i8*
  call void @llvm.lifetime.end(i64 1032, i8* %210) #1
  %211 = bitcast %struct.database_params_struct* %params to i8*
  call void @llvm.lifetime.end(i64 12, i8* %211) #1
  %212 = bitcast %struct.entry_struct* %db_value to i8*
  call void @llvm.lifetime.end(i64 16, i8* %212) #1
  %213 = bitcast %struct.entry_struct* %db_key to i8*
  call void @llvm.lifetime.end(i64 16, i8* %213) #1
  %214 = bitcast %struct.cursor_struct** %cursor to i8*
  call void @llvm.lifetime.end(i64 8, i8* %214) #1
  %215 = bitcast %struct.database_struct** %database to i8*
  call void @llvm.lifetime.end(i64 8, i8* %215) #1
  %216 = bitcast i8** %db_type to i8*
  call void @llvm.lifetime.end(i64 8, i8* %216) #1
  %217 = bitcast i8** %db_name to i8*
  call void @llvm.lifetime.end(i64 8, i8* %217) #1
  %218 = bitcast i8** %colon to i8*
  call void @llvm.lifetime.end(i64 8, i8* %218) #1
  %219 = bitcast i32* %result to i8*
  call void @llvm.lifetime.end(i64 4, i8* %219) #1
  ret void
}

declare %struct.sm_file* @sm_io_open(%struct.sm_file*, i32, i8*, i32, i8*) #3

declare i8* @sm_errstring(i32) #3

; Function Attrs: nounwind readnone
declare i32* @__errno_location() #6

declare i32 @sm_io_fgets(%struct.sm_file*, i32, i8*, i32) #3

; Function Attrs: nounwind
declare i8* @strchr(i8*, i32) #2

declare i32 @sm_strncasecmp(i8*, i8*, i64) #3

; Function Attrs: nounwind readnone
declare i16** @__ctype_b_loc() #6

declare i64 @sm_strlcpy(i8*, i8*, i64) #3

declare i32 @sm_io_close(%struct.sm_file*, i32) #3

; Function Attrs: inlinehint nounwind uwtable
define available_externally i8* @__strpbrk_c2(i8* %__s, i32 %__accept1, i32 %__accept2) #7 {
entry:
  %__s.addr = alloca i8*, align 8
  %__accept1.addr = alloca i32, align 4
  %__accept2.addr = alloca i32, align 4
  store i8* %__s, i8** %__s.addr, align 8, !tbaa !5
  store i32 %__accept1, i32* %__accept1.addr, align 4, !tbaa !1
  store i32 %__accept2, i32* %__accept2.addr, align 4, !tbaa !1
  br label %while.cond

while.cond:                                       ; preds = %while.body, %entry
  %0 = load i8*, i8** %__s.addr, align 8, !tbaa !5
  %1 = load i8, i8* %0, align 1, !tbaa !9
  %conv = sext i8 %1 to i32
  %cmp = icmp ne i32 %conv, 0
  br i1 %cmp, label %land.lhs.true, label %land.end

land.lhs.true:                                    ; preds = %while.cond
  %2 = load i8*, i8** %__s.addr, align 8, !tbaa !5
  %3 = load i8, i8* %2, align 1, !tbaa !9
  %conv2 = sext i8 %3 to i32
  %4 = load i32, i32* %__accept1.addr, align 4, !tbaa !1
  %cmp3 = icmp ne i32 %conv2, %4
  br i1 %cmp3, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %land.lhs.true
  %5 = load i8*, i8** %__s.addr, align 8, !tbaa !5
  %6 = load i8, i8* %5, align 1, !tbaa !9
  %conv5 = sext i8 %6 to i32
  %7 = load i32, i32* %__accept2.addr, align 4, !tbaa !1
  %cmp6 = icmp ne i32 %conv5, %7
  br label %land.end

land.end:                                         ; preds = %land.rhs, %land.lhs.true, %while.cond
  %8 = phi i1 [ false, %land.lhs.true ], [ false, %while.cond ], [ %cmp6, %land.rhs ]
  br i1 %8, label %while.body, label %while.end

while.body:                                       ; preds = %land.end
  %9 = load i8*, i8** %__s.addr, align 8, !tbaa !5
  %incdec.ptr = getelementptr inbounds i8, i8* %9, i32 1
  store i8* %incdec.ptr, i8** %__s.addr, align 8, !tbaa !5
  br label %while.cond

while.end:                                        ; preds = %land.end
  %10 = load i8*, i8** %__s.addr, align 8, !tbaa !5
  %11 = load i8, i8* %10, align 1, !tbaa !9
  %conv8 = sext i8 %11 to i32
  %cmp9 = icmp eq i32 %conv8, 0
  br i1 %cmp9, label %cond.true, label %cond.false

cond.true:                                        ; preds = %while.end
  br label %cond.end

cond.false:                                       ; preds = %while.end
  %12 = load i8*, i8** %__s.addr, align 8, !tbaa !5
  %13 = ptrtoint i8* %12 to i64
  %14 = inttoptr i64 %13 to i8*
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i8* [ null, %cond.true ], [ %14, %cond.false ]
  ret i8* %cond
}

; Function Attrs: inlinehint nounwind uwtable
define available_externally i8* @__strpbrk_c3(i8* %__s, i32 %__accept1, i32 %__accept2, i32 %__accept3) #7 {
entry:
  %__s.addr = alloca i8*, align 8
  %__accept1.addr = alloca i32, align 4
  %__accept2.addr = alloca i32, align 4
  %__accept3.addr = alloca i32, align 4
  store i8* %__s, i8** %__s.addr, align 8, !tbaa !5
  store i32 %__accept1, i32* %__accept1.addr, align 4, !tbaa !1
  store i32 %__accept2, i32* %__accept2.addr, align 4, !tbaa !1
  store i32 %__accept3, i32* %__accept3.addr, align 4, !tbaa !1
  br label %while.cond

while.cond:                                       ; preds = %while.body, %entry
  %0 = load i8*, i8** %__s.addr, align 8, !tbaa !5
  %1 = load i8, i8* %0, align 1, !tbaa !9
  %conv = sext i8 %1 to i32
  %cmp = icmp ne i32 %conv, 0
  br i1 %cmp, label %land.lhs.true, label %land.end

land.lhs.true:                                    ; preds = %while.cond
  %2 = load i8*, i8** %__s.addr, align 8, !tbaa !5
  %3 = load i8, i8* %2, align 1, !tbaa !9
  %conv2 = sext i8 %3 to i32
  %4 = load i32, i32* %__accept1.addr, align 4, !tbaa !1
  %cmp3 = icmp ne i32 %conv2, %4
  br i1 %cmp3, label %land.lhs.true.5, label %land.end

land.lhs.true.5:                                  ; preds = %land.lhs.true
  %5 = load i8*, i8** %__s.addr, align 8, !tbaa !5
  %6 = load i8, i8* %5, align 1, !tbaa !9
  %conv6 = sext i8 %6 to i32
  %7 = load i32, i32* %__accept2.addr, align 4, !tbaa !1
  %cmp7 = icmp ne i32 %conv6, %7
  br i1 %cmp7, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %land.lhs.true.5
  %8 = load i8*, i8** %__s.addr, align 8, !tbaa !5
  %9 = load i8, i8* %8, align 1, !tbaa !9
  %conv9 = sext i8 %9 to i32
  %10 = load i32, i32* %__accept3.addr, align 4, !tbaa !1
  %cmp10 = icmp ne i32 %conv9, %10
  br label %land.end

land.end:                                         ; preds = %land.rhs, %land.lhs.true.5, %land.lhs.true, %while.cond
  %11 = phi i1 [ false, %land.lhs.true.5 ], [ false, %land.lhs.true ], [ false, %while.cond ], [ %cmp10, %land.rhs ]
  br i1 %11, label %while.body, label %while.end

while.body:                                       ; preds = %land.end
  %12 = load i8*, i8** %__s.addr, align 8, !tbaa !5
  %incdec.ptr = getelementptr inbounds i8, i8* %12, i32 1
  store i8* %incdec.ptr, i8** %__s.addr, align 8, !tbaa !5
  br label %while.cond

while.end:                                        ; preds = %land.end
  %13 = load i8*, i8** %__s.addr, align 8, !tbaa !5
  %14 = load i8, i8* %13, align 1, !tbaa !9
  %conv12 = sext i8 %14 to i32
  %cmp13 = icmp eq i32 %conv12, 0
  br i1 %cmp13, label %cond.true, label %cond.false

cond.true:                                        ; preds = %while.end
  br label %cond.end

cond.false:                                       ; preds = %while.end
  %15 = load i8*, i8** %__s.addr, align 8, !tbaa !5
  %16 = ptrtoint i8* %15 to i64
  %17 = inttoptr i64 %16 to i8*
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i8* [ null, %cond.true ], [ %17, %cond.false ]
  ret i8* %cond
}

; Function Attrs: nounwind
declare i8* @strpbrk(i8*, i8*) #2

; Function Attrs: nounwind
declare void @llvm.lifetime.end(i64, i8* nocapture) #1

; Function Attrs: nounwind
declare i32 @strcmp(i8*, i8*) #2

declare i32 @smdb_open_database(%struct.database_struct**, i8*, i32, i32, i64, i8*, %struct.database_user_struct*, %struct.database_params_struct*) #3

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { nounwind "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { nounwind readonly "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #5 = { noreturn nounwind "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #6 = { nounwind readnone "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #7 = { inlinehint nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #8 = { nounwind readonly }
attributes #9 = { noreturn nounwind }
attributes #10 = { nounwind readnone }

!llvm.ident = !{!0}

!0 = !{!"clang version 3.7.0 (tags/RELEASE_370/final)"}
!1 = !{!2, !2, i64 0}
!2 = !{!"int", !3, i64 0}
!3 = !{!"omnipotent char", !4, i64 0}
!4 = !{!"Simple C/C++ TBAA"}
!5 = !{!6, !6, i64 0}
!6 = !{!"any pointer", !3, i64 0}
!7 = !{!8, !6, i64 0}
!8 = !{!"passwd", !6, i64 0, !6, i64 8, !2, i64 16, !2, i64 20, !6, i64 24, !6, i64 32, !6, i64 40}
!9 = !{!3, !3, i64 0}
!10 = !{!11, !11, i64 0}
!11 = !{!"short", !3, i64 0}
!12 = !{!13, !13, i64 0}
!13 = !{!"long", !3, i64 0}
!14 = !{!15, !2, i64 4}
!15 = !{!"database_params_struct", !2, i64 0, !2, i64 4, !2, i64 8}
!16 = !{!17, !2, i64 0}
!17 = !{!"database_user_struct", !2, i64 0, !2, i64 4, !3, i64 8}
!18 = !{!17, !2, i64 4}
!19 = !{!20, !6, i64 56}
!20 = !{!"database_struct", !6, i64 0, !6, i64 8, !6, i64 16, !6, i64 24, !6, i64 32, !6, i64 40, !6, i64 48, !6, i64 56, !6, i64 64, !6, i64 72}
!21 = !{!22, !6, i64 16}
!22 = !{!"cursor_struct", !6, i64 0, !6, i64 8, !6, i64 16, !6, i64 24, !6, i64 32}
!23 = !{!24, !13, i64 8}
!24 = !{!"entry_struct", !6, i64 0, !13, i64 8}
!25 = !{!24, !6, i64 0}
!26 = !{!20, !6, i64 24}
!27 = !{!22, !6, i64 0}
!28 = !{!20, !6, i64 0}
