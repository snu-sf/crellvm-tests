; ModuleID = '43.vacation.bc'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.alias = type { i8*, %struct.alias* }
%struct.database_struct = type { i32 (%struct.database_struct*)*, i32 (%struct.database_struct*, %struct.entry_struct*, i32)*, i32 (%struct.database_struct*, i32*)*, i32 (%struct.database_struct*, %struct.entry_struct*, %struct.entry_struct*, i32)*, i32 (%struct.database_struct*, %struct.entry_struct*, %struct.entry_struct*, i32)*, i32 (%struct.database_struct*, i32)*, i32 (%struct.database_struct*, i32, i32)*, i32 (%struct.database_struct*, %struct.cursor_struct**, i32)*, i32 (%struct.database_struct*)*, i8* }
%struct.entry_struct = type { i8*, i64 }
%struct.cursor_struct = type { i32 (%struct.cursor_struct*)*, i32 (%struct.cursor_struct*, i32)*, i32 (%struct.cursor_struct*, %struct.entry_struct*, %struct.entry_struct*, i32)*, i32 (%struct.cursor_struct*, %struct.entry_struct*, %struct.entry_struct*, i32)*, i8* }
%struct.sm_file = type { i8*, i8*, i32, i32, i64, i16, %struct.smbuf, i32, i8*, i32, i32 (%struct.sm_file*)*, i64 (%struct.sm_file*, i8*, i64)*, i64 (%struct.sm_file*, i64, i32)*, i64 (%struct.sm_file*, i8*, i64)*, i32 (%struct.sm_file*, i8*, i32, i8*)*, i32 (%struct.sm_file*, i32, i8*)*, i32 (%struct.sm_file*, i32, i8*)*, i32, i32, i8*, %struct.sm_file*, %struct.sm_file*, %struct.smbuf, i8*, i32, [3 x i8], [1 x i8], i32, i64, i32 }
%struct.smbuf = type { i8*, i32 }
%struct._IO_FILE = type { i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, %struct._IO_marker*, %struct._IO_FILE*, i32, i32, i64, i16, i8, [1 x i8], i8*, i64, i8*, i8*, i8*, i8*, i64, i32, [20 x i8] }
%struct._IO_marker = type { %struct._IO_marker*, %struct._IO_FILE*, i32 }
%struct.ignore = type { i8*, i64 }
%struct.passwd = type { i8*, i8*, i32, i32, i8*, i8*, i8* }
%struct.database_user_struct = type { i32, i32, [1024 x i8] }
%struct.SM_CF_OPT_T = type { i8*, i8* }
%struct.SM_MBDB_T = type { i32, i32, [256 x i8], [256 x i8], [4096 x i8], [4096 x i8] }
%struct.database_params_struct = type { i32, i32, i32 }
%struct.__va_list_tag = type { i32, i32, i8*, i8* }

@Verbose = global i32 2, align 4
@DontInitGroups = global i32 0, align 4
@TrustedUid = global i32 0, align 4
@Names = global %struct.alias* null, align 8
@CloseMBDB = global i32 0, align 4
@msglog = global void (i32, i8*, ...)* @syslog, align 8
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
@.str.2 = private unnamed_addr constant [9 x i8] c"vacation\00", align 1
@opterr = external global i32, align 4
@From = common global [2048 x i8] zeroinitializer, align 16
@.str.3 = private unnamed_addr constant [25 x i8] c"a:C:df:Iijlm:R:r:s:t:Uxz\00", align 1
@optarg = external global i8*, align 8
@.str.4 = private unnamed_addr constant [3 x i8] c"<>\00", align 1
@optind = external global i32, align 4
@.str.5 = private unnamed_addr constant [44 x i8] c"vacation: can't allocate memory for alias.\0A\00", align 1
@.str.6 = private unnamed_addr constant [32 x i8] c"vacation: no such user uid %u.\0A\00", align 1
@.str.7 = private unnamed_addr constant [33 x i8] c"vacation: no such directory %s.\0A\00", align 1
@.str.8 = private unnamed_addr constant [46 x i8] c"vacation: -U requires setting both -f and -m\0A\00", align 1
@.str.9 = private unnamed_addr constant [16 x i8] c"MailboxDatabase\00", align 1
@.str.10 = private unnamed_addr constant [3 x i8] c"pw\00", align 1
@.str.11 = private unnamed_addr constant [44 x i8] c"vacation: can't open mailbox database: %s.\0A\00", align 1
@.str.12 = private unnamed_addr constant [28 x i8] c"vacation: no such user %s.\0A\00", align 1
@.str.13 = private unnamed_addr constant [44 x i8] c"vacation: can't read mailbox database: %s.\0A\00", align 1
@.str.14 = private unnamed_addr constant [47 x i8] c"vacation: can't allocate memory for username.\0A\00", align 1
@.str.15 = private unnamed_addr constant [10 x i8] c".vacation\00", align 1
@.str.16 = private unnamed_addr constant [14 x i8] c".vacation.msg\00", align 1
@Db = common global %struct.database_struct* null, align 8
@.str.17 = private unnamed_addr constant [18 x i8] c"vacation: %s: %s\0A\00", align 1
@SmIoF = external global [0 x %struct.sm_file], align 8
@stdin = external global %struct._IO_FILE*, align 8
@.str.18 = private unnamed_addr constant [6 x i8] c"From \00", align 1
@.str.19 = private unnamed_addr constant [41 x i8] c"vacation: badly formatted \22From \22 line.\0A\00", align 1
@.str.20 = private unnamed_addr constant [11 x i8] c"Precedence\00", align 1
@.str.21 = private unnamed_addr constant [5 x i8] c"junk\00", align 1
@.str.22 = private unnamed_addr constant [5 x i8] c"bulk\00", align 1
@.str.23 = private unnamed_addr constant [5 x i8] c"list\00", align 1
@.str.24 = private unnamed_addr constant [4 x i8] c"Cc:\00", align 1
@.str.25 = private unnamed_addr constant [4 x i8] c"To:\00", align 1
@.str.26 = private unnamed_addr constant [36 x i8] c"vacation: no initial \22From \22 line.\0A\00", align 1
@junkmail.ignore = internal global [5 x %struct.ignore] [%struct.ignore { i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.27, i32 0, i32 0), i64 10 }, %struct.ignore { i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.28, i32 0, i32 0), i64 4 }, %struct.ignore { i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.29, i32 0, i32 0), i64 13 }, %struct.ignore { i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.30, i32 0, i32 0), i64 6 }, %struct.ignore zeroinitializer], align 16
@.str.27 = private unnamed_addr constant [11 x i8] c"postmaster\00", align 1
@.str.28 = private unnamed_addr constant [5 x i8] c"uucp\00", align 1
@.str.29 = private unnamed_addr constant [14 x i8] c"mailer-daemon\00", align 1
@.str.30 = private unnamed_addr constant [7 x i8] c"mailer\00", align 1
@junkmail.ignorepost = internal global [4 x %struct.ignore] [%struct.ignore { i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.31, i32 0, i32 0), i64 8 }, %struct.ignore { i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.32, i32 0, i32 0), i64 6 }, %struct.ignore { i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.33, i32 0, i32 0), i64 6 }, %struct.ignore zeroinitializer], align 16
@.str.31 = private unnamed_addr constant [9 x i8] c"-request\00", align 1
@.str.32 = private unnamed_addr constant [7 x i8] c"-relay\00", align 1
@.str.33 = private unnamed_addr constant [7 x i8] c"-owner\00", align 1
@junkmail.ignorepre = internal global [2 x %struct.ignore] [%struct.ignore { i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.34, i32 0, i32 0), i64 6 }, %struct.ignore zeroinitializer], align 16
@.str.34 = private unnamed_addr constant [7 x i8] c"owner-\00", align 1
@.str.35 = private unnamed_addr constant [30 x i8] c"__VACATION__INTERVAL__TIMER__\00", align 1
@SmFtStdio_def = external global %struct.sm_file, align 8
@.str.36 = private unnamed_addr constant [23 x i8] c"vacation: no %s file.\0A\00", align 1
@.str.37 = private unnamed_addr constant [27 x i8] c"vacation: no ~%s/%s file.\0A\00", align 1
@.str.38 = private unnamed_addr constant [19 x i8] c"vacation: pipe: %s\00", align 1
@.str.39 = private unnamed_addr constant [9 x i8] c"sendmail\00", align 1
@.str.40 = private unnamed_addr constant [4 x i8] c"-oi\00", align 1
@.str.41 = private unnamed_addr constant [3 x i8] c"-f\00", align 1
@.str.42 = private unnamed_addr constant [3 x i8] c"--\00", align 1
@.str.43 = private unnamed_addr constant [19 x i8] c"vacation: fork: %s\00", align 1
@.str.44 = private unnamed_addr constant [19 x i8] c"/usr/sbin/sendmail\00", align 1
@.str.45 = private unnamed_addr constant [28 x i8] c"vacation: can't exec %s: %s\00", align 1
@SmFtStdiofd_def = external global %struct.sm_file, align 8
@.str.46 = private unnamed_addr constant [8 x i8] c"To: %s\0A\00", align 1
@.str.47 = private unnamed_addr constant [30 x i8] c"Auto-Submitted: auto-replied\0A\00", align 1
@.str.48 = private unnamed_addr constant [38 x i8] c"vacation: can't open pipe to sendmail\00", align 1
@.str.49 = private unnamed_addr constant [158 x i8] c"uid %u: usage: vacation [-a alias] [-C cfpath] [-d] [-f db] [-i] [-j] [-l] [-m msg] [-R returnaddr] [-r interval] [-s sender] [-t time] [-U] [-x] [-z] login\0A\00", align 1
@.str.50 = private unnamed_addr constant [26 x i8] c"vacation: set cursor: %s\0A\00", align 1
@.str.51 = private unnamed_addr constant [35 x i8] c"vacation: %.*s invalid time stamp\0A\00", align 1
@.str.52 = private unnamed_addr constant [13 x i8] c"(exclusion)\0A\00", align 1
@.str.53 = private unnamed_addr constant [14 x i8] c"%-40.*s %-10s\00", align 1
@.str.54 = private unnamed_addr constant [35 x i8] c"vacation: get value at cursor: %s\0A\00", align 1

declare void @syslog(i32, i8*, ...) #0

; Function Attrs: nounwind uwtable
define i32 @main(i32 %argc, i8** %argv) #1 {
entry:
  %retval = alloca i32, align 4
  %argc.addr = alloca i32, align 4
  %argv.addr = alloca i8**, align 8
  %alwaysrespond = alloca i32, align 4
  %initdb = alloca i32, align 4
  %exclude = alloca i32, align 4
  %runasuser = alloca i32, align 4
  %list = alloca i32, align 4
  %mfail = alloca i32, align 4
  %ufail = alloca i32, align 4
  %ch = alloca i32, align 4
  %result = alloca i32, align 4
  %sff = alloca i64, align 8
  %interval = alloca i64, align 8
  %pw = alloca %struct.passwd*, align 8
  %cur = alloca %struct.alias*, align 8
  %dbfilename = alloca i8*, align 8
  %msgfilename = alloca i8*, align 8
  %cfpath = alloca i8*, align 8
  %name = alloca i8*, align 8
  %returnaddr = alloca i8*, align 8
  %user_info = alloca %struct.database_user_struct, align 4
  %err = alloca i32, align 4
  %mbdbname = alloca %struct.SM_CF_OPT_T, align 8
  %user = alloca %struct.SM_MBDB_T, align 4
  %now = alloca i64, align 8
  store i32 0, i32* %retval
  store i32 %argc, i32* %argc.addr, align 4, !tbaa !1
  store i8** %argv, i8*** %argv.addr, align 8, !tbaa !5
  %0 = bitcast i32* %alwaysrespond to i8*
  call void @llvm.lifetime.start(i64 4, i8* %0) #2
  store i32 0, i32* %alwaysrespond, align 4, !tbaa !1
  %1 = bitcast i32* %initdb to i8*
  call void @llvm.lifetime.start(i64 4, i8* %1) #2
  %2 = bitcast i32* %exclude to i8*
  call void @llvm.lifetime.start(i64 4, i8* %2) #2
  %3 = bitcast i32* %runasuser to i8*
  call void @llvm.lifetime.start(i64 4, i8* %3) #2
  store i32 0, i32* %runasuser, align 4, !tbaa !1
  %4 = bitcast i32* %list to i8*
  call void @llvm.lifetime.start(i64 4, i8* %4) #2
  store i32 0, i32* %list, align 4, !tbaa !1
  %5 = bitcast i32* %mfail to i8*
  call void @llvm.lifetime.start(i64 4, i8* %5) #2
  store i32 0, i32* %mfail, align 4, !tbaa !1
  %6 = bitcast i32* %ufail to i8*
  call void @llvm.lifetime.start(i64 4, i8* %6) #2
  store i32 0, i32* %ufail, align 4, !tbaa !1
  %7 = bitcast i32* %ch to i8*
  call void @llvm.lifetime.start(i64 4, i8* %7) #2
  %8 = bitcast i32* %result to i8*
  call void @llvm.lifetime.start(i64 4, i8* %8) #2
  %9 = bitcast i64* %sff to i8*
  call void @llvm.lifetime.start(i64 8, i8* %9) #2
  %10 = bitcast i64* %interval to i8*
  call void @llvm.lifetime.start(i64 8, i8* %10) #2
  %11 = bitcast %struct.passwd** %pw to i8*
  call void @llvm.lifetime.start(i64 8, i8* %11) #2
  %12 = bitcast %struct.alias** %cur to i8*
  call void @llvm.lifetime.start(i64 8, i8* %12) #2
  %13 = bitcast i8** %dbfilename to i8*
  call void @llvm.lifetime.start(i64 8, i8* %13) #2
  store i8* null, i8** %dbfilename, align 8, !tbaa !5
  %14 = bitcast i8** %msgfilename to i8*
  call void @llvm.lifetime.start(i64 8, i8* %14) #2
  store i8* null, i8** %msgfilename, align 8, !tbaa !5
  %15 = bitcast i8** %cfpath to i8*
  call void @llvm.lifetime.start(i64 8, i8* %15) #2
  store i8* null, i8** %cfpath, align 8, !tbaa !5
  %16 = bitcast i8** %name to i8*
  call void @llvm.lifetime.start(i64 8, i8* %16) #2
  store i8* null, i8** %name, align 8, !tbaa !5
  %17 = bitcast i8** %returnaddr to i8*
  call void @llvm.lifetime.start(i64 8, i8* %17) #2
  store i8* null, i8** %returnaddr, align 8, !tbaa !5
  %18 = bitcast %struct.database_user_struct* %user_info to i8*
  call void @llvm.lifetime.start(i64 1032, i8* %18) #2
  call void @llvm.memset.p0i8.i64(i8* bitcast ([8 x i32]* @DontBlameSendmail to i8*), i8 0, i64 32, i32 1, i1 false)
  %call = call i32 @getuid() #2
  store i32 %call, i32* @RealUid, align 4, !tbaa !1
  store i32 %call, i32* @RunAsUid, align 4, !tbaa !1
  %call1 = call i32 @getgid() #2
  store i32 %call1, i32* @RealGid, align 4, !tbaa !1
  store i32 %call1, i32* @RunAsGid, align 4, !tbaa !1
  %19 = load i32, i32* @RealUid, align 4, !tbaa !1
  %call2 = call %struct.passwd* @getpwuid(i32 %19)
  store %struct.passwd* %call2, %struct.passwd** %pw, align 8, !tbaa !5
  %20 = load %struct.passwd*, %struct.passwd** %pw, align 8, !tbaa !5
  %cmp = icmp ne %struct.passwd* %20, null
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %21 = load %struct.passwd*, %struct.passwd** %pw, align 8, !tbaa !5
  %pw_name = getelementptr inbounds %struct.passwd, %struct.passwd* %21, i32 0, i32 0
  %22 = load i8*, i8** %pw_name, align 8, !tbaa !7
  %call3 = call i64 @strlen(i8* %22) #7
  %cmp4 = icmp ugt i64 %call3, 255
  br i1 %cmp4, label %if.then.5, label %if.end

if.then.5:                                        ; preds = %if.then
  %23 = load %struct.passwd*, %struct.passwd** %pw, align 8, !tbaa !5
  %pw_name6 = getelementptr inbounds %struct.passwd, %struct.passwd* %23, i32 0, i32 0
  %24 = load i8*, i8** %pw_name6, align 8, !tbaa !7
  %arrayidx = getelementptr inbounds i8, i8* %24, i64 256
  store i8 0, i8* %arrayidx, align 1, !tbaa !9
  br label %if.end

if.end:                                           ; preds = %if.then.5, %if.then
  %25 = load %struct.passwd*, %struct.passwd** %pw, align 8, !tbaa !5
  %pw_name7 = getelementptr inbounds %struct.passwd, %struct.passwd* %25, i32 0, i32 0
  %26 = load i8*, i8** %pw_name7, align 8, !tbaa !7
  %call8 = call i32 (i8*, i64, i8*, ...) @sm_snprintf(i8* getelementptr inbounds ([256 x i8], [256 x i8]* @main.rnamebuf, i32 0, i32 0), i64 256, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i32 0, i32 0), i8* %26)
  br label %if.end.10

if.else:                                          ; preds = %entry
  %27 = load i32, i32* @RealUid, align 4, !tbaa !1
  %call9 = call i32 (i8*, i64, i8*, ...) @sm_snprintf(i8* getelementptr inbounds ([256 x i8], [256 x i8]* @main.rnamebuf, i32 0, i32 0), i64 256, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.1, i32 0, i32 0), i32 %27)
  br label %if.end.10

if.end.10:                                        ; preds = %if.else, %if.end
  store i8* getelementptr inbounds ([256 x i8], [256 x i8]* @main.rnamebuf, i32 0, i32 0), i8** @RealUserName, align 8, !tbaa !5
  store i8* getelementptr inbounds ([256 x i8], [256 x i8]* @main.rnamebuf, i32 0, i32 0), i8** @RunAsUserName, align 8, !tbaa !5
  call void @openlog(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.2, i32 0, i32 0), i32 1, i32 16)
  store i32 0, i32* @opterr, align 4, !tbaa !1
  store i32 0, i32* %initdb, align 4, !tbaa !1
  store i32 0, i32* %exclude, align 4, !tbaa !1
  store i64 -1, i64* %interval, align 8, !tbaa !10
  store i8 0, i8* getelementptr inbounds ([2048 x i8], [2048 x i8]* @From, i32 0, i32 0), align 1, !tbaa !9
  br label %while.cond

while.cond:                                       ; preds = %sw.epilog, %if.end.10
  %28 = load i32, i32* %mfail, align 4, !tbaa !1
  %cmp11 = icmp eq i32 %28, 0
  br i1 %cmp11, label %land.lhs.true, label %land.end

land.lhs.true:                                    ; preds = %while.cond
  %29 = load i32, i32* %ufail, align 4, !tbaa !1
  %cmp12 = icmp eq i32 %29, 0
  br i1 %cmp12, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %land.lhs.true
  %30 = load i32, i32* %argc.addr, align 4, !tbaa !1
  %31 = load i8**, i8*** %argv.addr, align 8, !tbaa !5
  %call13 = call i32 @getopt(i32 %30, i8** %31, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.3, i32 0, i32 0)) #2
  store i32 %call13, i32* %ch, align 4, !tbaa !1
  %cmp14 = icmp ne i32 %call13, -1
  br label %land.end

land.end:                                         ; preds = %land.rhs, %land.lhs.true, %while.cond
  %32 = phi i1 [ false, %land.lhs.true ], [ false, %while.cond ], [ %cmp14, %land.rhs ]
  br i1 %32, label %while.body, label %while.end

while.body:                                       ; preds = %land.end
  %33 = load i32, i32* %ch, align 4, !tbaa !1
  %conv = trunc i32 %33 to i8
  %conv15 = sext i8 %conv to i32
  switch i32 %conv15, label %sw.default [
    i32 97, label %sw.bb
    i32 67, label %sw.bb.22
    i32 100, label %sw.bb.23
    i32 102, label %sw.bb.24
    i32 73, label %sw.bb.25
    i32 105, label %sw.bb.25
    i32 106, label %sw.bb.26
    i32 108, label %sw.bb.27
    i32 109, label %sw.bb.28
    i32 82, label %sw.bb.29
    i32 114, label %sw.bb.30
    i32 115, label %sw.bb.49
    i32 116, label %sw.epilog
    i32 85, label %sw.bb.51
    i32 120, label %sw.bb.52
    i32 122, label %sw.bb.53
    i32 63, label %sw.bb.54
  ]

sw.bb:                                            ; preds = %while.body
  %call16 = call noalias i8* @malloc(i64 16) #2
  %34 = bitcast i8* %call16 to %struct.alias*
  store %struct.alias* %34, %struct.alias** %cur, align 8, !tbaa !5
  %35 = load %struct.alias*, %struct.alias** %cur, align 8, !tbaa !5
  %cmp17 = icmp eq %struct.alias* %35, null
  br i1 %cmp17, label %if.then.19, label %if.end.20

if.then.19:                                       ; preds = %sw.bb
  %36 = load i32, i32* %mfail, align 4, !tbaa !1
  %inc = add nsw i32 %36, 1
  store i32 %inc, i32* %mfail, align 4, !tbaa !1
  br label %sw.epilog

if.end.20:                                        ; preds = %sw.bb
  %37 = load i8*, i8** @optarg, align 8, !tbaa !5
  %38 = load %struct.alias*, %struct.alias** %cur, align 8, !tbaa !5
  %name21 = getelementptr inbounds %struct.alias, %struct.alias* %38, i32 0, i32 0
  store i8* %37, i8** %name21, align 8, !tbaa !12
  %39 = load %struct.alias*, %struct.alias** @Names, align 8, !tbaa !5
  %40 = load %struct.alias*, %struct.alias** %cur, align 8, !tbaa !5
  %next = getelementptr inbounds %struct.alias, %struct.alias* %40, i32 0, i32 1
  store %struct.alias* %39, %struct.alias** %next, align 8, !tbaa !14
  %41 = load %struct.alias*, %struct.alias** %cur, align 8, !tbaa !5
  store %struct.alias* %41, %struct.alias** @Names, align 8, !tbaa !5
  br label %sw.epilog

sw.bb.22:                                         ; preds = %while.body
  %42 = load i8*, i8** @optarg, align 8, !tbaa !5
  store i8* %42, i8** %cfpath, align 8, !tbaa !5
  br label %sw.epilog

sw.bb.23:                                         ; preds = %while.body
  store void (i32, i8*, ...)* @debuglog, void (i32, i8*, ...)** @msglog, align 8, !tbaa !5
  br label %sw.epilog

sw.bb.24:                                         ; preds = %while.body
  %43 = load i8*, i8** @optarg, align 8, !tbaa !5
  store i8* %43, i8** %dbfilename, align 8, !tbaa !5
  br label %sw.epilog

sw.bb.25:                                         ; preds = %while.body, %while.body
  store i32 1, i32* %initdb, align 4, !tbaa !1
  br label %sw.epilog

sw.bb.26:                                         ; preds = %while.body
  store i32 1, i32* %alwaysrespond, align 4, !tbaa !1
  br label %sw.epilog

sw.bb.27:                                         ; preds = %while.body
  store i32 1, i32* %list, align 4, !tbaa !1
  br label %sw.epilog

sw.bb.28:                                         ; preds = %while.body
  %44 = load i8*, i8** @optarg, align 8, !tbaa !5
  store i8* %44, i8** %msgfilename, align 8, !tbaa !5
  br label %sw.epilog

sw.bb.29:                                         ; preds = %while.body
  %45 = load i8*, i8** @optarg, align 8, !tbaa !5
  store i8* %45, i8** %returnaddr, align 8, !tbaa !5
  br label %sw.epilog

sw.bb.30:                                         ; preds = %while.body
  %46 = load i8*, i8** @optarg, align 8, !tbaa !5
  %47 = load i8, i8* %46, align 1, !tbaa !9
  %conv31 = sext i8 %47 to i32
  %and = and i32 %conv31, -128
  %cmp32 = icmp eq i32 %and, 0
  br i1 %cmp32, label %land.lhs.true.34, label %if.else.47

land.lhs.true.34:                                 ; preds = %sw.bb.30
  %48 = load i8*, i8** @optarg, align 8, !tbaa !5
  %49 = load i8, i8* %48, align 1, !tbaa !9
  %conv35 = sext i8 %49 to i32
  %idxprom = sext i32 %conv35 to i64
  %call36 = call i16** @__ctype_b_loc() #8
  %50 = load i16*, i16** %call36, align 8, !tbaa !5
  %arrayidx37 = getelementptr inbounds i16, i16* %50, i64 %idxprom
  %51 = load i16, i16* %arrayidx37, align 2, !tbaa !15
  %conv38 = zext i16 %51 to i32
  %and39 = and i32 %conv38, 2048
  %tobool = icmp ne i32 %and39, 0
  br i1 %tobool, label %if.then.40, label %if.else.47

if.then.40:                                       ; preds = %land.lhs.true.34
  %52 = load i8*, i8** @optarg, align 8, !tbaa !5
  %call41 = call i64 @atol(i8* %52) #7
  %mul = mul nsw i64 %call41, 86400
  store i64 %mul, i64* %interval, align 8, !tbaa !10
  %53 = load i64, i64* %interval, align 8, !tbaa !10
  %cmp42 = icmp slt i64 %53, 0
  br i1 %cmp42, label %if.then.44, label %if.end.46

if.then.44:                                       ; preds = %if.then.40
  %54 = load i32, i32* %ufail, align 4, !tbaa !1
  %inc45 = add nsw i32 %54, 1
  store i32 %inc45, i32* %ufail, align 4, !tbaa !1
  br label %if.end.46

if.end.46:                                        ; preds = %if.then.44, %if.then.40
  br label %if.end.48

if.else.47:                                       ; preds = %land.lhs.true.34, %sw.bb.30
  store i64 0, i64* %interval, align 8, !tbaa !10
  br label %if.end.48

if.end.48:                                        ; preds = %if.else.47, %if.end.46
  br label %sw.epilog

sw.bb.49:                                         ; preds = %while.body
  %55 = load i8*, i8** @optarg, align 8, !tbaa !5
  %call50 = call i64 @sm_strlcpy(i8* getelementptr inbounds ([2048 x i8], [2048 x i8]* @From, i32 0, i32 0), i8* %55, i64 2048)
  br label %sw.epilog

sw.bb.51:                                         ; preds = %while.body
  store i32 1, i32* %runasuser, align 4, !tbaa !1
  br label %sw.epilog

sw.bb.52:                                         ; preds = %while.body
  store i32 1, i32* %exclude, align 4, !tbaa !1
  br label %sw.epilog

sw.bb.53:                                         ; preds = %while.body
  store i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.4, i32 0, i32 0), i8** %returnaddr, align 8, !tbaa !5
  br label %sw.epilog

sw.bb.54:                                         ; preds = %while.body
  br label %sw.default

sw.default:                                       ; preds = %while.body, %sw.bb.54
  %56 = load i32, i32* %ufail, align 4, !tbaa !1
  %inc55 = add nsw i32 %56, 1
  store i32 %inc55, i32* %ufail, align 4, !tbaa !1
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.default, %sw.bb.53, %sw.bb.52, %sw.bb.51, %while.body, %sw.bb.49, %if.end.48, %sw.bb.29, %sw.bb.28, %sw.bb.27, %sw.bb.26, %sw.bb.25, %sw.bb.24, %sw.bb.23, %sw.bb.22, %if.end.20, %if.then.19
  br label %while.cond

while.end:                                        ; preds = %land.end
  %57 = load i32, i32* @optind, align 4, !tbaa !1
  %58 = load i32, i32* %argc.addr, align 4, !tbaa !1
  %sub = sub nsw i32 %58, %57
  store i32 %sub, i32* %argc.addr, align 4, !tbaa !1
  %59 = load i32, i32* @optind, align 4, !tbaa !1
  %60 = load i8**, i8*** %argv.addr, align 8, !tbaa !5
  %idx.ext = sext i32 %59 to i64
  %add.ptr = getelementptr inbounds i8*, i8** %60, i64 %idx.ext
  store i8** %add.ptr, i8*** %argv.addr, align 8, !tbaa !5
  %61 = load i32, i32* %mfail, align 4, !tbaa !1
  %cmp56 = icmp ne i32 %61, 0
  br i1 %cmp56, label %if.then.58, label %if.end.67

if.then.58:                                       ; preds = %while.end
  %62 = load void (i32, i8*, ...)*, void (i32, i8*, ...)** @msglog, align 8, !tbaa !5
  call void (i32, i8*, ...) %62(i32 5, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.5, i32 0, i32 0))
  %63 = load i32, i32* %initdb, align 4, !tbaa !1
  %tobool59 = icmp ne i32 %63, 0
  br i1 %tobool59, label %if.end.63, label %land.lhs.true.60

land.lhs.true.60:                                 ; preds = %if.then.58
  %64 = load i32, i32* %list, align 4, !tbaa !1
  %tobool61 = icmp ne i32 %64, 0
  br i1 %tobool61, label %if.end.63, label %if.then.62

if.then.62:                                       ; preds = %land.lhs.true.60
  call void @eatmsg()
  br label %if.end.63

if.end.63:                                        ; preds = %if.then.62, %land.lhs.true.60, %if.then.58
  %65 = load i32, i32* @CloseMBDB, align 4, !tbaa !1
  %tobool64 = icmp ne i32 %65, 0
  br i1 %tobool64, label %if.then.65, label %if.end.66

if.then.65:                                       ; preds = %if.end.63
  call void @sm_mbdb_terminate()
  store i32 0, i32* @CloseMBDB, align 4, !tbaa !1
  br label %if.end.66

if.end.66:                                        ; preds = %if.then.65, %if.end.63
  call void @exit(i32 75) #9
  unreachable

if.end.67:                                        ; preds = %while.end
  %66 = load i32, i32* %ufail, align 4, !tbaa !1
  %cmp68 = icmp ne i32 %66, 0
  br i1 %cmp68, label %if.then.70, label %if.end.71

if.then.70:                                       ; preds = %if.end.67
  call void @usage()
  br label %if.end.71

if.end.71:                                        ; preds = %if.then.70, %if.end.67
  %67 = load i32, i32* %argc.addr, align 4, !tbaa !1
  %cmp72 = icmp ne i32 %67, 1
  br i1 %cmp72, label %if.then.74, label %if.else.115

if.then.74:                                       ; preds = %if.end.71
  %68 = load i32, i32* %initdb, align 4, !tbaa !1
  %tobool75 = icmp ne i32 %68, 0
  br i1 %tobool75, label %if.end.81, label %land.lhs.true.76

land.lhs.true.76:                                 ; preds = %if.then.74
  %69 = load i32, i32* %list, align 4, !tbaa !1
  %tobool77 = icmp ne i32 %69, 0
  br i1 %tobool77, label %if.end.81, label %land.lhs.true.78

land.lhs.true.78:                                 ; preds = %land.lhs.true.76
  %70 = load i32, i32* %exclude, align 4, !tbaa !1
  %tobool79 = icmp ne i32 %70, 0
  br i1 %tobool79, label %if.end.81, label %if.then.80

if.then.80:                                       ; preds = %land.lhs.true.78
  call void @usage()
  br label %if.end.81

if.end.81:                                        ; preds = %if.then.80, %land.lhs.true.78, %land.lhs.true.76, %if.then.74
  %call82 = call i32 @getuid() #2
  %call83 = call %struct.passwd* @getpwuid(i32 %call82)
  store %struct.passwd* %call83, %struct.passwd** %pw, align 8, !tbaa !5
  %cmp84 = icmp eq %struct.passwd* %call83, null
  br i1 %cmp84, label %if.then.86, label %if.end.96

if.then.86:                                       ; preds = %if.end.81
  %71 = load void (i32, i8*, ...)*, void (i32, i8*, ...)** @msglog, align 8, !tbaa !5
  %call87 = call i32 @getuid() #2
  call void (i32, i8*, ...) %71(i32 3, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.6, i32 0, i32 0), i32 %call87)
  %72 = load i32, i32* %initdb, align 4, !tbaa !1
  %tobool88 = icmp ne i32 %72, 0
  br i1 %tobool88, label %if.end.92, label %land.lhs.true.89

land.lhs.true.89:                                 ; preds = %if.then.86
  %73 = load i32, i32* %list, align 4, !tbaa !1
  %tobool90 = icmp ne i32 %73, 0
  br i1 %tobool90, label %if.end.92, label %if.then.91

if.then.91:                                       ; preds = %land.lhs.true.89
  call void @eatmsg()
  br label %if.end.92

if.end.92:                                        ; preds = %if.then.91, %land.lhs.true.89, %if.then.86
  %74 = load i32, i32* @CloseMBDB, align 4, !tbaa !1
  %tobool93 = icmp ne i32 %74, 0
  br i1 %tobool93, label %if.then.94, label %if.end.95

if.then.94:                                       ; preds = %if.end.92
  call void @sm_mbdb_terminate()
  store i32 0, i32* @CloseMBDB, align 4, !tbaa !1
  br label %if.end.95

if.end.95:                                        ; preds = %if.then.94, %if.end.92
  call void @exit(i32 67) #9
  unreachable

if.end.96:                                        ; preds = %if.end.81
  %75 = load %struct.passwd*, %struct.passwd** %pw, align 8, !tbaa !5
  %pw_name97 = getelementptr inbounds %struct.passwd, %struct.passwd* %75, i32 0, i32 0
  %76 = load i8*, i8** %pw_name97, align 8, !tbaa !7
  %call98 = call noalias i8* @__strdup(i8* %76) #2
  store i8* %call98, i8** %name, align 8, !tbaa !5
  %77 = load %struct.passwd*, %struct.passwd** %pw, align 8, !tbaa !5
  %pw_uid = getelementptr inbounds %struct.passwd, %struct.passwd* %77, i32 0, i32 2
  %78 = load i32, i32* %pw_uid, align 4, !tbaa !17
  %smdbu_id = getelementptr inbounds %struct.database_user_struct, %struct.database_user_struct* %user_info, i32 0, i32 0
  store i32 %78, i32* %smdbu_id, align 4, !tbaa !18
  %79 = load %struct.passwd*, %struct.passwd** %pw, align 8, !tbaa !5
  %pw_gid = getelementptr inbounds %struct.passwd, %struct.passwd* %79, i32 0, i32 3
  %80 = load i32, i32* %pw_gid, align 4, !tbaa !20
  %smdbu_group_id = getelementptr inbounds %struct.database_user_struct, %struct.database_user_struct* %user_info, i32 0, i32 1
  store i32 %80, i32* %smdbu_group_id, align 4, !tbaa !21
  %smdbu_name = getelementptr inbounds %struct.database_user_struct, %struct.database_user_struct* %user_info, i32 0, i32 2
  %arraydecay = getelementptr inbounds [1024 x i8], [1024 x i8]* %smdbu_name, i32 0, i32 0
  %81 = load %struct.passwd*, %struct.passwd** %pw, align 8, !tbaa !5
  %pw_name99 = getelementptr inbounds %struct.passwd, %struct.passwd* %81, i32 0, i32 0
  %82 = load i8*, i8** %pw_name99, align 8, !tbaa !7
  %call100 = call i64 @sm_strlcpy(i8* %arraydecay, i8* %82, i64 1024)
  %83 = load %struct.passwd*, %struct.passwd** %pw, align 8, !tbaa !5
  %pw_dir = getelementptr inbounds %struct.passwd, %struct.passwd* %83, i32 0, i32 5
  %84 = load i8*, i8** %pw_dir, align 8, !tbaa !22
  %call101 = call i32 @chdir(i8* %84) #2
  %cmp102 = icmp ne i32 %call101, 0
  br i1 %cmp102, label %if.then.104, label %if.end.114

if.then.104:                                      ; preds = %if.end.96
  %85 = load void (i32, i8*, ...)*, void (i32, i8*, ...)** @msglog, align 8, !tbaa !5
  %86 = load %struct.passwd*, %struct.passwd** %pw, align 8, !tbaa !5
  %pw_dir105 = getelementptr inbounds %struct.passwd, %struct.passwd* %86, i32 0, i32 5
  %87 = load i8*, i8** %pw_dir105, align 8, !tbaa !22
  call void (i32, i8*, ...) %85(i32 5, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.7, i32 0, i32 0), i8* %87)
  %88 = load i32, i32* %initdb, align 4, !tbaa !1
  %tobool106 = icmp ne i32 %88, 0
  br i1 %tobool106, label %if.end.110, label %land.lhs.true.107

land.lhs.true.107:                                ; preds = %if.then.104
  %89 = load i32, i32* %list, align 4, !tbaa !1
  %tobool108 = icmp ne i32 %89, 0
  br i1 %tobool108, label %if.end.110, label %if.then.109

if.then.109:                                      ; preds = %land.lhs.true.107
  call void @eatmsg()
  br label %if.end.110

if.end.110:                                       ; preds = %if.then.109, %land.lhs.true.107, %if.then.104
  %90 = load i32, i32* @CloseMBDB, align 4, !tbaa !1
  %tobool111 = icmp ne i32 %90, 0
  br i1 %tobool111, label %if.then.112, label %if.end.113

if.then.112:                                      ; preds = %if.end.110
  call void @sm_mbdb_terminate()
  store i32 0, i32* @CloseMBDB, align 4, !tbaa !1
  br label %if.end.113

if.end.113:                                       ; preds = %if.then.112, %if.end.110
  call void @exit(i32 66) #9
  unreachable

if.end.114:                                       ; preds = %if.end.96
  br label %if.end.211

if.else.115:                                      ; preds = %if.end.71
  %91 = load i32, i32* %runasuser, align 4, !tbaa !1
  %tobool116 = icmp ne i32 %91, 0
  br i1 %tobool116, label %if.then.117, label %if.else.141

if.then.117:                                      ; preds = %if.else.115
  %92 = load i8**, i8*** %argv.addr, align 8, !tbaa !5
  %93 = load i8*, i8** %92, align 8, !tbaa !5
  %call118 = call noalias i8* @__strdup(i8* %93) #2
  store i8* %call118, i8** %name, align 8, !tbaa !5
  %94 = load i8*, i8** %dbfilename, align 8, !tbaa !5
  %cmp119 = icmp eq i8* %94, null
  br i1 %cmp119, label %if.then.123, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.then.117
  %95 = load i8*, i8** %msgfilename, align 8, !tbaa !5
  %cmp121 = icmp eq i8* %95, null
  br i1 %cmp121, label %if.then.123, label %if.end.132

if.then.123:                                      ; preds = %lor.lhs.false, %if.then.117
  %96 = load void (i32, i8*, ...)*, void (i32, i8*, ...)** @msglog, align 8, !tbaa !5
  call void (i32, i8*, ...) %96(i32 5, i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.8, i32 0, i32 0))
  %97 = load i32, i32* %initdb, align 4, !tbaa !1
  %tobool124 = icmp ne i32 %97, 0
  br i1 %tobool124, label %if.end.128, label %land.lhs.true.125

land.lhs.true.125:                                ; preds = %if.then.123
  %98 = load i32, i32* %list, align 4, !tbaa !1
  %tobool126 = icmp ne i32 %98, 0
  br i1 %tobool126, label %if.end.128, label %if.then.127

if.then.127:                                      ; preds = %land.lhs.true.125
  call void @eatmsg()
  br label %if.end.128

if.end.128:                                       ; preds = %if.then.127, %land.lhs.true.125, %if.then.123
  %99 = load i32, i32* @CloseMBDB, align 4, !tbaa !1
  %tobool129 = icmp ne i32 %99, 0
  br i1 %tobool129, label %if.then.130, label %if.end.131

if.then.130:                                      ; preds = %if.end.128
  call void @sm_mbdb_terminate()
  store i32 0, i32* @CloseMBDB, align 4, !tbaa !1
  br label %if.end.131

if.end.131:                                       ; preds = %if.then.130, %if.end.128
  call void @exit(i32 66) #9
  unreachable

if.end.132:                                       ; preds = %lor.lhs.false
  %100 = load %struct.passwd*, %struct.passwd** %pw, align 8, !tbaa !5
  %pw_uid133 = getelementptr inbounds %struct.passwd, %struct.passwd* %100, i32 0, i32 2
  %101 = load i32, i32* %pw_uid133, align 4, !tbaa !17
  %smdbu_id134 = getelementptr inbounds %struct.database_user_struct, %struct.database_user_struct* %user_info, i32 0, i32 0
  store i32 %101, i32* %smdbu_id134, align 4, !tbaa !18
  %102 = load %struct.passwd*, %struct.passwd** %pw, align 8, !tbaa !5
  %pw_gid135 = getelementptr inbounds %struct.passwd, %struct.passwd* %102, i32 0, i32 3
  %103 = load i32, i32* %pw_gid135, align 4, !tbaa !20
  %smdbu_group_id136 = getelementptr inbounds %struct.database_user_struct, %struct.database_user_struct* %user_info, i32 0, i32 1
  store i32 %103, i32* %smdbu_group_id136, align 4, !tbaa !21
  %smdbu_name137 = getelementptr inbounds %struct.database_user_struct, %struct.database_user_struct* %user_info, i32 0, i32 2
  %arraydecay138 = getelementptr inbounds [1024 x i8], [1024 x i8]* %smdbu_name137, i32 0, i32 0
  %104 = load %struct.passwd*, %struct.passwd** %pw, align 8, !tbaa !5
  %pw_name139 = getelementptr inbounds %struct.passwd, %struct.passwd* %104, i32 0, i32 0
  %105 = load i8*, i8** %pw_name139, align 8, !tbaa !7
  %call140 = call i64 @sm_strlcpy(i8* %arraydecay138, i8* %105, i64 1024)
  br label %if.end.210

if.else.141:                                      ; preds = %if.else.115
  %106 = bitcast i32* %err to i8*
  call void @llvm.lifetime.start(i64 4, i8* %106) #2
  %107 = bitcast %struct.SM_CF_OPT_T* %mbdbname to i8*
  call void @llvm.lifetime.start(i64 16, i8* %107) #2
  %108 = bitcast %struct.SM_MBDB_T* %user to i8*
  call void @llvm.lifetime.start(i64 8712, i8* %108) #2
  %109 = load i8*, i8** %cfpath, align 8, !tbaa !5
  %call142 = call i8* @getcfname(i32 0, i32 0, i32 1, i8* %109)
  store i8* %call142, i8** %cfpath, align 8, !tbaa !5
  %opt_name = getelementptr inbounds %struct.SM_CF_OPT_T, %struct.SM_CF_OPT_T* %mbdbname, i32 0, i32 0
  store i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.9, i32 0, i32 0), i8** %opt_name, align 8, !tbaa !23
  %opt_val = getelementptr inbounds %struct.SM_CF_OPT_T, %struct.SM_CF_OPT_T* %mbdbname, i32 0, i32 1
  store i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.10, i32 0, i32 0), i8** %opt_val, align 8, !tbaa !25
  %110 = load i8*, i8** %cfpath, align 8, !tbaa !5
  %call143 = call i32 @sm_cf_getopt(i8* %110, i32 1, %struct.SM_CF_OPT_T* %mbdbname)
  %opt_val144 = getelementptr inbounds %struct.SM_CF_OPT_T, %struct.SM_CF_OPT_T* %mbdbname, i32 0, i32 1
  %111 = load i8*, i8** %opt_val144, align 8, !tbaa !25
  %call145 = call i32 @sm_mbdb_initialize(i8* %111)
  store i32 %call145, i32* %err, align 4, !tbaa !1
  %112 = load i32, i32* %err, align 4, !tbaa !1
  %cmp146 = icmp ne i32 %112, 0
  br i1 %cmp146, label %if.then.148, label %if.end.158

if.then.148:                                      ; preds = %if.else.141
  %113 = load void (i32, i8*, ...)*, void (i32, i8*, ...)** @msglog, align 8, !tbaa !5
  %114 = load i32, i32* %err, align 4, !tbaa !1
  %call149 = call i8* @sm_strexit(i32 %114)
  call void (i32, i8*, ...) %113(i32 3, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.11, i32 0, i32 0), i8* %call149)
  %115 = load i32, i32* %initdb, align 4, !tbaa !1
  %tobool150 = icmp ne i32 %115, 0
  br i1 %tobool150, label %if.end.154, label %land.lhs.true.151

land.lhs.true.151:                                ; preds = %if.then.148
  %116 = load i32, i32* %list, align 4, !tbaa !1
  %tobool152 = icmp ne i32 %116, 0
  br i1 %tobool152, label %if.end.154, label %if.then.153

if.then.153:                                      ; preds = %land.lhs.true.151
  call void @eatmsg()
  br label %if.end.154

if.end.154:                                       ; preds = %if.then.153, %land.lhs.true.151, %if.then.148
  %117 = load i32, i32* @CloseMBDB, align 4, !tbaa !1
  %tobool155 = icmp ne i32 %117, 0
  br i1 %tobool155, label %if.then.156, label %if.end.157

if.then.156:                                      ; preds = %if.end.154
  call void @sm_mbdb_terminate()
  store i32 0, i32* @CloseMBDB, align 4, !tbaa !1
  br label %if.end.157

if.end.157:                                       ; preds = %if.then.156, %if.end.154
  %118 = load i32, i32* %err, align 4, !tbaa !1
  call void @exit(i32 %118) #9
  unreachable

if.end.158:                                       ; preds = %if.else.141
  store i32 1, i32* @CloseMBDB, align 4, !tbaa !1
  %119 = load i8**, i8*** %argv.addr, align 8, !tbaa !5
  %120 = load i8*, i8** %119, align 8, !tbaa !5
  %call159 = call i32 @sm_mbdb_lookup(i8* %120, %struct.SM_MBDB_T* %user)
  store i32 %call159, i32* %err, align 4, !tbaa !1
  %121 = load i32, i32* %err, align 4, !tbaa !1
  %cmp160 = icmp eq i32 %121, 67
  br i1 %cmp160, label %if.then.162, label %if.end.171

if.then.162:                                      ; preds = %if.end.158
  %122 = load void (i32, i8*, ...)*, void (i32, i8*, ...)** @msglog, align 8, !tbaa !5
  %123 = load i8**, i8*** %argv.addr, align 8, !tbaa !5
  %124 = load i8*, i8** %123, align 8, !tbaa !5
  call void (i32, i8*, ...) %122(i32 3, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.12, i32 0, i32 0), i8* %124)
  %125 = load i32, i32* %initdb, align 4, !tbaa !1
  %tobool163 = icmp ne i32 %125, 0
  br i1 %tobool163, label %if.end.167, label %land.lhs.true.164

land.lhs.true.164:                                ; preds = %if.then.162
  %126 = load i32, i32* %list, align 4, !tbaa !1
  %tobool165 = icmp ne i32 %126, 0
  br i1 %tobool165, label %if.end.167, label %if.then.166

if.then.166:                                      ; preds = %land.lhs.true.164
  call void @eatmsg()
  br label %if.end.167

if.end.167:                                       ; preds = %if.then.166, %land.lhs.true.164, %if.then.162
  %127 = load i32, i32* @CloseMBDB, align 4, !tbaa !1
  %tobool168 = icmp ne i32 %127, 0
  br i1 %tobool168, label %if.then.169, label %if.end.170

if.then.169:                                      ; preds = %if.end.167
  call void @sm_mbdb_terminate()
  store i32 0, i32* @CloseMBDB, align 4, !tbaa !1
  br label %if.end.170

if.end.170:                                       ; preds = %if.then.169, %if.end.167
  call void @exit(i32 67) #9
  unreachable

if.end.171:                                       ; preds = %if.end.158
  %128 = load i32, i32* %err, align 4, !tbaa !1
  %cmp172 = icmp ne i32 %128, 0
  br i1 %cmp172, label %if.then.174, label %if.end.184

if.then.174:                                      ; preds = %if.end.171
  %129 = load void (i32, i8*, ...)*, void (i32, i8*, ...)** @msglog, align 8, !tbaa !5
  %130 = load i32, i32* %err, align 4, !tbaa !1
  %call175 = call i8* @sm_strexit(i32 %130)
  call void (i32, i8*, ...) %129(i32 3, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.13, i32 0, i32 0), i8* %call175)
  %131 = load i32, i32* %initdb, align 4, !tbaa !1
  %tobool176 = icmp ne i32 %131, 0
  br i1 %tobool176, label %if.end.180, label %land.lhs.true.177

land.lhs.true.177:                                ; preds = %if.then.174
  %132 = load i32, i32* %list, align 4, !tbaa !1
  %tobool178 = icmp ne i32 %132, 0
  br i1 %tobool178, label %if.end.180, label %if.then.179

if.then.179:                                      ; preds = %land.lhs.true.177
  call void @eatmsg()
  br label %if.end.180

if.end.180:                                       ; preds = %if.then.179, %land.lhs.true.177, %if.then.174
  %133 = load i32, i32* @CloseMBDB, align 4, !tbaa !1
  %tobool181 = icmp ne i32 %133, 0
  br i1 %tobool181, label %if.then.182, label %if.end.183

if.then.182:                                      ; preds = %if.end.180
  call void @sm_mbdb_terminate()
  store i32 0, i32* @CloseMBDB, align 4, !tbaa !1
  br label %if.end.183

if.end.183:                                       ; preds = %if.then.182, %if.end.180
  %134 = load i32, i32* %err, align 4, !tbaa !1
  call void @exit(i32 %134) #9
  unreachable

if.end.184:                                       ; preds = %if.end.171
  %mbdb_name = getelementptr inbounds %struct.SM_MBDB_T, %struct.SM_MBDB_T* %user, i32 0, i32 2
  %arraydecay185 = getelementptr inbounds [256 x i8], [256 x i8]* %mbdb_name, i32 0, i32 0
  %call186 = call noalias i8* @__strdup(i8* %arraydecay185) #2
  store i8* %call186, i8** %name, align 8, !tbaa !5
  %mbdb_homedir = getelementptr inbounds %struct.SM_MBDB_T, %struct.SM_MBDB_T* %user, i32 0, i32 4
  %arraydecay187 = getelementptr inbounds [4096 x i8], [4096 x i8]* %mbdb_homedir, i32 0, i32 0
  %call188 = call i32 @chdir(i8* %arraydecay187) #2
  %cmp189 = icmp ne i32 %call188, 0
  br i1 %cmp189, label %if.then.191, label %if.end.202

if.then.191:                                      ; preds = %if.end.184
  %135 = load void (i32, i8*, ...)*, void (i32, i8*, ...)** @msglog, align 8, !tbaa !5
  %mbdb_homedir192 = getelementptr inbounds %struct.SM_MBDB_T, %struct.SM_MBDB_T* %user, i32 0, i32 4
  %arraydecay193 = getelementptr inbounds [4096 x i8], [4096 x i8]* %mbdb_homedir192, i32 0, i32 0
  call void (i32, i8*, ...) %135(i32 5, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.7, i32 0, i32 0), i8* %arraydecay193)
  %136 = load i32, i32* %initdb, align 4, !tbaa !1
  %tobool194 = icmp ne i32 %136, 0
  br i1 %tobool194, label %if.end.198, label %land.lhs.true.195

land.lhs.true.195:                                ; preds = %if.then.191
  %137 = load i32, i32* %list, align 4, !tbaa !1
  %tobool196 = icmp ne i32 %137, 0
  br i1 %tobool196, label %if.end.198, label %if.then.197

if.then.197:                                      ; preds = %land.lhs.true.195
  call void @eatmsg()
  br label %if.end.198

if.end.198:                                       ; preds = %if.then.197, %land.lhs.true.195, %if.then.191
  %138 = load i32, i32* @CloseMBDB, align 4, !tbaa !1
  %tobool199 = icmp ne i32 %138, 0
  br i1 %tobool199, label %if.then.200, label %if.end.201

if.then.200:                                      ; preds = %if.end.198
  call void @sm_mbdb_terminate()
  store i32 0, i32* @CloseMBDB, align 4, !tbaa !1
  br label %if.end.201

if.end.201:                                       ; preds = %if.then.200, %if.end.198
  call void @exit(i32 66) #9
  unreachable

if.end.202:                                       ; preds = %if.end.184
  %mbdb_uid = getelementptr inbounds %struct.SM_MBDB_T, %struct.SM_MBDB_T* %user, i32 0, i32 0
  %139 = load i32, i32* %mbdb_uid, align 4, !tbaa !26
  %smdbu_id203 = getelementptr inbounds %struct.database_user_struct, %struct.database_user_struct* %user_info, i32 0, i32 0
  store i32 %139, i32* %smdbu_id203, align 4, !tbaa !18
  %mbdb_gid = getelementptr inbounds %struct.SM_MBDB_T, %struct.SM_MBDB_T* %user, i32 0, i32 1
  %140 = load i32, i32* %mbdb_gid, align 4, !tbaa !28
  %smdbu_group_id204 = getelementptr inbounds %struct.database_user_struct, %struct.database_user_struct* %user_info, i32 0, i32 1
  store i32 %140, i32* %smdbu_group_id204, align 4, !tbaa !21
  %smdbu_name205 = getelementptr inbounds %struct.database_user_struct, %struct.database_user_struct* %user_info, i32 0, i32 2
  %arraydecay206 = getelementptr inbounds [1024 x i8], [1024 x i8]* %smdbu_name205, i32 0, i32 0
  %mbdb_name207 = getelementptr inbounds %struct.SM_MBDB_T, %struct.SM_MBDB_T* %user, i32 0, i32 2
  %arraydecay208 = getelementptr inbounds [256 x i8], [256 x i8]* %mbdb_name207, i32 0, i32 0
  %call209 = call i64 @sm_strlcpy(i8* %arraydecay206, i8* %arraydecay208, i64 1024)
  %141 = bitcast %struct.SM_MBDB_T* %user to i8*
  call void @llvm.lifetime.end(i64 8712, i8* %141) #2
  %142 = bitcast %struct.SM_CF_OPT_T* %mbdbname to i8*
  call void @llvm.lifetime.end(i64 16, i8* %142) #2
  %143 = bitcast i32* %err to i8*
  call void @llvm.lifetime.end(i64 4, i8* %143) #2
  br label %if.end.210

if.end.210:                                       ; preds = %if.end.202, %if.end.132
  br label %if.end.211

if.end.211:                                       ; preds = %if.end.210, %if.end.114
  %144 = load i8*, i8** %name, align 8, !tbaa !5
  %cmp212 = icmp eq i8* %144, null
  br i1 %cmp212, label %if.then.214, label %if.end.223

if.then.214:                                      ; preds = %if.end.211
  %145 = load void (i32, i8*, ...)*, void (i32, i8*, ...)** @msglog, align 8, !tbaa !5
  call void (i32, i8*, ...) %145(i32 3, i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str.14, i32 0, i32 0))
  %146 = load i32, i32* %initdb, align 4, !tbaa !1
  %tobool215 = icmp ne i32 %146, 0
  br i1 %tobool215, label %if.end.219, label %land.lhs.true.216

land.lhs.true.216:                                ; preds = %if.then.214
  %147 = load i32, i32* %list, align 4, !tbaa !1
  %tobool217 = icmp ne i32 %147, 0
  br i1 %tobool217, label %if.end.219, label %if.then.218

if.then.218:                                      ; preds = %land.lhs.true.216
  call void @eatmsg()
  br label %if.end.219

if.end.219:                                       ; preds = %if.then.218, %land.lhs.true.216, %if.then.214
  %148 = load i32, i32* @CloseMBDB, align 4, !tbaa !1
  %tobool220 = icmp ne i32 %148, 0
  br i1 %tobool220, label %if.then.221, label %if.end.222

if.then.221:                                      ; preds = %if.end.219
  call void @sm_mbdb_terminate()
  store i32 0, i32* @CloseMBDB, align 4, !tbaa !1
  br label %if.end.222

if.end.222:                                       ; preds = %if.then.221, %if.end.219
  call void @exit(i32 71) #9
  unreachable

if.end.223:                                       ; preds = %if.end.211
  %149 = load i8*, i8** %dbfilename, align 8, !tbaa !5
  %cmp224 = icmp eq i8* %149, null
  br i1 %cmp224, label %if.then.226, label %if.end.227

if.then.226:                                      ; preds = %if.end.223
  store i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.15, i32 0, i32 0), i8** %dbfilename, align 8, !tbaa !5
  br label %if.end.227

if.end.227:                                       ; preds = %if.then.226, %if.end.223
  %150 = load i8*, i8** %msgfilename, align 8, !tbaa !5
  %cmp228 = icmp eq i8* %150, null
  br i1 %cmp228, label %if.then.230, label %if.end.231

if.then.230:                                      ; preds = %if.end.227
  store i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.16, i32 0, i32 0), i8** %msgfilename, align 8, !tbaa !5
  br label %if.end.231

if.end.231:                                       ; preds = %if.then.230, %if.end.227
  store i64 64, i64* %sff, align 8, !tbaa !10
  %call232 = call i32 @getegid() #2
  %call233 = call i32 @getgid() #2
  %cmp234 = icmp ne i32 %call232, %call233
  br i1 %cmp234, label %if.then.236, label %if.end.239

if.then.236:                                      ; preds = %if.end.231
  %call237 = call i32 @getegid() #2
  %smdbu_group_id238 = getelementptr inbounds %struct.database_user_struct, %struct.database_user_struct* %user_info, i32 0, i32 1
  store i32 %call237, i32* %smdbu_group_id238, align 4, !tbaa !21
  store i32 %call237, i32* @RunAsGid, align 4, !tbaa !1
  %151 = load i64, i64* %sff, align 8, !tbaa !10
  %or = or i64 %151, 8192
  store i64 %or, i64* %sff, align 8, !tbaa !10
  br label %if.end.239

if.end.239:                                       ; preds = %if.then.236, %if.end.231
  %call240 = call i32 @getuid() #2
  %cmp241 = icmp eq i32 %call240, 0
  br i1 %cmp241, label %if.then.243, label %if.end.246

if.then.243:                                      ; preds = %if.end.239
  %152 = load i64, i64* %sff, align 8, !tbaa !10
  %or244 = or i64 %152, 8196
  store i64 %or244, i64* %sff, align 8, !tbaa !10
  %153 = load i64, i64* %sff, align 8, !tbaa !10
  %or245 = or i64 %153, 642
  store i64 %or245, i64* %sff, align 8, !tbaa !10
  br label %if.end.246

if.end.246:                                       ; preds = %if.then.243, %if.end.239
  %154 = load i8*, i8** %dbfilename, align 8, !tbaa !5
  %155 = load i32, i32* %initdb, align 4, !tbaa !1
  %tobool247 = icmp ne i32 %155, 0
  %cond = select i1 %tobool247, i32 512, i32 0
  %or248 = or i32 66, %cond
  %156 = load i64, i64* %sff, align 8, !tbaa !10
  %call249 = call i32 @smdb_open_database(%struct.database_struct** @Db, i8* %154, i32 %or248, i32 384, i64 %156, i8* null, %struct.database_user_struct* %user_info, %struct.database_params_struct* null)
  store i32 %call249, i32* %result, align 4, !tbaa !1
  %157 = load i32, i32* %result, align 4, !tbaa !1
  %cmp250 = icmp ne i32 %157, 0
  br i1 %cmp250, label %if.then.252, label %if.end.262

if.then.252:                                      ; preds = %if.end.246
  %158 = load void (i32, i8*, ...)*, void (i32, i8*, ...)** @msglog, align 8, !tbaa !5
  %159 = load i8*, i8** %dbfilename, align 8, !tbaa !5
  %160 = load i32, i32* %result, align 4, !tbaa !1
  %call253 = call i8* @sm_errstring(i32 %160)
  call void (i32, i8*, ...) %158(i32 5, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.17, i32 0, i32 0), i8* %159, i8* %call253)
  %161 = load i32, i32* %initdb, align 4, !tbaa !1
  %tobool254 = icmp ne i32 %161, 0
  br i1 %tobool254, label %if.end.258, label %land.lhs.true.255

land.lhs.true.255:                                ; preds = %if.then.252
  %162 = load i32, i32* %list, align 4, !tbaa !1
  %tobool256 = icmp ne i32 %162, 0
  br i1 %tobool256, label %if.end.258, label %if.then.257

if.then.257:                                      ; preds = %land.lhs.true.255
  call void @eatmsg()
  br label %if.end.258

if.end.258:                                       ; preds = %if.then.257, %land.lhs.true.255, %if.then.252
  %163 = load i32, i32* @CloseMBDB, align 4, !tbaa !1
  %tobool259 = icmp ne i32 %163, 0
  br i1 %tobool259, label %if.then.260, label %if.end.261

if.then.260:                                      ; preds = %if.end.258
  call void @sm_mbdb_terminate()
  store i32 0, i32* @CloseMBDB, align 4, !tbaa !1
  br label %if.end.261

if.end.261:                                       ; preds = %if.then.260, %if.end.258
  call void @exit(i32 65) #9
  unreachable

if.end.262:                                       ; preds = %if.end.246
  %164 = load i32, i32* %list, align 4, !tbaa !1
  %tobool263 = icmp ne i32 %164, 0
  br i1 %tobool263, label %if.then.264, label %if.end.266

if.then.264:                                      ; preds = %if.end.262
  call void @listdb()
  %165 = load %struct.database_struct*, %struct.database_struct** @Db, align 8, !tbaa !5
  %smdb_close = getelementptr inbounds %struct.database_struct, %struct.database_struct* %165, i32 0, i32 0
  %166 = load i32 (%struct.database_struct*)*, i32 (%struct.database_struct*)** %smdb_close, align 8, !tbaa !29
  %167 = load %struct.database_struct*, %struct.database_struct** @Db, align 8, !tbaa !5
  %call265 = call i32 %166(%struct.database_struct* %167)
  call void @exit(i32 0) #9
  unreachable

if.end.266:                                       ; preds = %if.end.262
  %168 = load i64, i64* %interval, align 8, !tbaa !10
  %cmp267 = icmp ne i64 %168, -1
  br i1 %cmp267, label %if.then.269, label %if.end.270

if.then.269:                                      ; preds = %if.end.266
  %169 = load i64, i64* %interval, align 8, !tbaa !10
  call void @setinterval(i64 %169)
  br label %if.end.270

if.end.270:                                       ; preds = %if.then.269, %if.end.266
  %170 = load i32, i32* %initdb, align 4, !tbaa !1
  %tobool271 = icmp ne i32 %170, 0
  br i1 %tobool271, label %land.lhs.true.272, label %if.end.277

land.lhs.true.272:                                ; preds = %if.end.270
  %171 = load i32, i32* %exclude, align 4, !tbaa !1
  %tobool273 = icmp ne i32 %171, 0
  br i1 %tobool273, label %if.end.277, label %if.then.274

if.then.274:                                      ; preds = %land.lhs.true.272
  %172 = load %struct.database_struct*, %struct.database_struct** @Db, align 8, !tbaa !5
  %smdb_close275 = getelementptr inbounds %struct.database_struct, %struct.database_struct* %172, i32 0, i32 0
  %173 = load i32 (%struct.database_struct*)*, i32 (%struct.database_struct*)** %smdb_close275, align 8, !tbaa !29
  %174 = load %struct.database_struct*, %struct.database_struct** @Db, align 8, !tbaa !5
  %call276 = call i32 %173(%struct.database_struct* %174)
  call void @exit(i32 0) #9
  unreachable

if.end.277:                                       ; preds = %land.lhs.true.272, %if.end.270
  %175 = load i32, i32* %exclude, align 4, !tbaa !1
  %tobool278 = icmp ne i32 %175, 0
  br i1 %tobool278, label %if.then.279, label %if.end.290

if.then.279:                                      ; preds = %if.end.277
  call void @xclude(%struct.sm_file* getelementptr inbounds ([0 x %struct.sm_file], [0 x %struct.sm_file]* @SmIoF, i32 0, i64 0))
  %176 = load %struct.database_struct*, %struct.database_struct** @Db, align 8, !tbaa !5
  %smdb_close280 = getelementptr inbounds %struct.database_struct, %struct.database_struct* %176, i32 0, i32 0
  %177 = load i32 (%struct.database_struct*)*, i32 (%struct.database_struct*)** %smdb_close280, align 8, !tbaa !29
  %178 = load %struct.database_struct*, %struct.database_struct** @Db, align 8, !tbaa !5
  %call281 = call i32 %177(%struct.database_struct* %178)
  %179 = load i32, i32* %initdb, align 4, !tbaa !1
  %tobool282 = icmp ne i32 %179, 0
  br i1 %tobool282, label %if.end.286, label %land.lhs.true.283

land.lhs.true.283:                                ; preds = %if.then.279
  %180 = load i32, i32* %list, align 4, !tbaa !1
  %tobool284 = icmp ne i32 %180, 0
  br i1 %tobool284, label %if.end.286, label %if.then.285

if.then.285:                                      ; preds = %land.lhs.true.283
  call void @eatmsg()
  br label %if.end.286

if.end.286:                                       ; preds = %if.then.285, %land.lhs.true.283, %if.then.279
  %181 = load i32, i32* @CloseMBDB, align 4, !tbaa !1
  %tobool287 = icmp ne i32 %181, 0
  br i1 %tobool287, label %if.then.288, label %if.end.289

if.then.288:                                      ; preds = %if.end.286
  call void @sm_mbdb_terminate()
  store i32 0, i32* @CloseMBDB, align 4, !tbaa !1
  br label %if.end.289

if.end.289:                                       ; preds = %if.then.288, %if.end.286
  call void @exit(i32 0) #9
  unreachable

if.end.290:                                       ; preds = %if.end.277
  %call291 = call noalias i8* @malloc(i64 16) #2
  %182 = bitcast i8* %call291 to %struct.alias*
  store %struct.alias* %182, %struct.alias** %cur, align 8, !tbaa !5
  %cmp292 = icmp eq %struct.alias* %182, null
  br i1 %cmp292, label %if.then.294, label %if.end.305

if.then.294:                                      ; preds = %if.end.290
  %183 = load void (i32, i8*, ...)*, void (i32, i8*, ...)** @msglog, align 8, !tbaa !5
  call void (i32, i8*, ...) %183(i32 5, i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str.14, i32 0, i32 0))
  %184 = load %struct.database_struct*, %struct.database_struct** @Db, align 8, !tbaa !5
  %smdb_close295 = getelementptr inbounds %struct.database_struct, %struct.database_struct* %184, i32 0, i32 0
  %185 = load i32 (%struct.database_struct*)*, i32 (%struct.database_struct*)** %smdb_close295, align 8, !tbaa !29
  %186 = load %struct.database_struct*, %struct.database_struct** @Db, align 8, !tbaa !5
  %call296 = call i32 %185(%struct.database_struct* %186)
  %187 = load i32, i32* %initdb, align 4, !tbaa !1
  %tobool297 = icmp ne i32 %187, 0
  br i1 %tobool297, label %if.end.301, label %land.lhs.true.298

land.lhs.true.298:                                ; preds = %if.then.294
  %188 = load i32, i32* %list, align 4, !tbaa !1
  %tobool299 = icmp ne i32 %188, 0
  br i1 %tobool299, label %if.end.301, label %if.then.300

if.then.300:                                      ; preds = %land.lhs.true.298
  call void @eatmsg()
  br label %if.end.301

if.end.301:                                       ; preds = %if.then.300, %land.lhs.true.298, %if.then.294
  %189 = load i32, i32* @CloseMBDB, align 4, !tbaa !1
  %tobool302 = icmp ne i32 %189, 0
  br i1 %tobool302, label %if.then.303, label %if.end.304

if.then.303:                                      ; preds = %if.end.301
  call void @sm_mbdb_terminate()
  store i32 0, i32* @CloseMBDB, align 4, !tbaa !1
  br label %if.end.304

if.end.304:                                       ; preds = %if.then.303, %if.end.301
  call void @exit(i32 71) #9
  unreachable

if.end.305:                                       ; preds = %if.end.290
  %190 = load i8*, i8** %name, align 8, !tbaa !5
  %191 = load %struct.alias*, %struct.alias** %cur, align 8, !tbaa !5
  %name306 = getelementptr inbounds %struct.alias, %struct.alias* %191, i32 0, i32 0
  store i8* %190, i8** %name306, align 8, !tbaa !12
  %192 = load %struct.alias*, %struct.alias** @Names, align 8, !tbaa !5
  %193 = load %struct.alias*, %struct.alias** %cur, align 8, !tbaa !5
  %next307 = getelementptr inbounds %struct.alias, %struct.alias* %193, i32 0, i32 1
  store %struct.alias* %192, %struct.alias** %next307, align 8, !tbaa !14
  %194 = load %struct.alias*, %struct.alias** %cur, align 8, !tbaa !5
  store %struct.alias* %194, %struct.alias** @Names, align 8, !tbaa !5
  %195 = load i32, i32* %alwaysrespond, align 4, !tbaa !1
  %call308 = call i32 @readheaders(i32 %195)
  store i32 %call308, i32* %result, align 4, !tbaa !1
  %196 = load i32, i32* %result, align 4, !tbaa !1
  %cmp309 = icmp eq i32 %196, 0
  br i1 %cmp309, label %land.lhs.true.311, label %if.else.318

land.lhs.true.311:                                ; preds = %if.end.305
  %call312 = call i32 @recent()
  %tobool313 = icmp ne i32 %call312, 0
  br i1 %tobool313, label %if.else.318, label %if.then.314

if.then.314:                                      ; preds = %land.lhs.true.311
  %197 = bitcast i64* %now to i8*
  call void @llvm.lifetime.start(i64 8, i8* %197) #2
  %call315 = call i64 @time(i64* %now) #2
  %198 = load i64, i64* %now, align 8, !tbaa !10
  call void @setreply(i8* getelementptr inbounds ([2048 x i8], [2048 x i8]* @From, i32 0, i32 0), i64 %198)
  %199 = load %struct.database_struct*, %struct.database_struct** @Db, align 8, !tbaa !5
  %smdb_close316 = getelementptr inbounds %struct.database_struct, %struct.database_struct* %199, i32 0, i32 0
  %200 = load i32 (%struct.database_struct*)*, i32 (%struct.database_struct*)** %smdb_close316, align 8, !tbaa !29
  %201 = load %struct.database_struct*, %struct.database_struct** @Db, align 8, !tbaa !5
  %call317 = call i32 %200(%struct.database_struct* %201)
  %202 = load i8*, i8** %name, align 8, !tbaa !5
  %203 = load i8*, i8** %msgfilename, align 8, !tbaa !5
  %204 = load i8*, i8** %returnaddr, align 8, !tbaa !5
  call void @sendmessage(i8* %202, i8* %203, i8* %204)
  %205 = bitcast i64* %now to i8*
  call void @llvm.lifetime.end(i64 8, i8* %205) #2
  br label %if.end.321

if.else.318:                                      ; preds = %land.lhs.true.311, %if.end.305
  %206 = load %struct.database_struct*, %struct.database_struct** @Db, align 8, !tbaa !5
  %smdb_close319 = getelementptr inbounds %struct.database_struct, %struct.database_struct* %206, i32 0, i32 0
  %207 = load i32 (%struct.database_struct*)*, i32 (%struct.database_struct*)** %smdb_close319, align 8, !tbaa !29
  %208 = load %struct.database_struct*, %struct.database_struct** @Db, align 8, !tbaa !5
  %call320 = call i32 %207(%struct.database_struct* %208)
  br label %if.end.321

if.end.321:                                       ; preds = %if.else.318, %if.then.314
  %209 = load i32, i32* %result, align 4, !tbaa !1
  %cmp322 = icmp eq i32 %209, 67
  br i1 %cmp322, label %if.then.324, label %if.end.325

if.then.324:                                      ; preds = %if.end.321
  store i32 0, i32* %result, align 4, !tbaa !1
  br label %if.end.325

if.end.325:                                       ; preds = %if.then.324, %if.end.321
  %210 = load i32, i32* %result, align 4, !tbaa !1
  call void @exit(i32 %210) #9
  unreachable

return:                                           ; No predecessors!
  %211 = load i32, i32* %retval
  ret i32 %211
}

; Function Attrs: nounwind
declare void @llvm.lifetime.start(i64, i8* nocapture) #2

; Function Attrs: nounwind
declare void @llvm.memset.p0i8.i64(i8* nocapture, i8, i64, i32, i1) #2

; Function Attrs: nounwind
declare i32 @getuid() #3

; Function Attrs: nounwind
declare i32 @getgid() #3

declare %struct.passwd* @getpwuid(i32) #0

; Function Attrs: nounwind readonly
declare i64 @strlen(i8*) #4

declare i32 @sm_snprintf(i8*, i64, i8*, ...) #0

declare void @openlog(i8*, i32, i32) #0

; Function Attrs: nounwind
declare i32 @getopt(i32, i8**, i8*) #3

; Function Attrs: nounwind
declare noalias i8* @malloc(i64) #3

; Function Attrs: nounwind uwtable
define internal void @debuglog(i32 %i, i8* %fmt, ...) #1 {
entry:
  %i.addr = alloca i32, align 4
  %fmt.addr = alloca i8*, align 8
  %ap = alloca [1 x %struct.__va_list_tag], align 16
  store i32 %i, i32* %i.addr, align 4, !tbaa !1
  store i8* %fmt, i8** %fmt.addr, align 8, !tbaa !5
  %0 = bitcast [1 x %struct.__va_list_tag]* %ap to i8*
  call void @llvm.lifetime.start(i64 24, i8* %0) #2
  %arraydecay = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %ap, i32 0, i32 0
  %arraydecay1 = bitcast %struct.__va_list_tag* %arraydecay to i8*
  call void @llvm.va_start(i8* %arraydecay1)
  %1 = load i8*, i8** %fmt.addr, align 8, !tbaa !5
  %arraydecay2 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %ap, i32 0, i32 0
  %call = call i32 @sm_io_vfprintf(%struct.sm_file* getelementptr inbounds ([0 x %struct.sm_file], [0 x %struct.sm_file]* @SmIoF, i32 0, i64 2), i32 -2, i8* %1, %struct.__va_list_tag* %arraydecay2)
  %arraydecay3 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %ap, i32 0, i32 0
  %arraydecay34 = bitcast %struct.__va_list_tag* %arraydecay3 to i8*
  call void @llvm.va_end(i8* %arraydecay34)
  %2 = bitcast [1 x %struct.__va_list_tag]* %ap to i8*
  call void @llvm.lifetime.end(i64 24, i8* %2) #2
  ret void
}

; Function Attrs: nounwind readnone
declare i16** @__ctype_b_loc() #5

; Function Attrs: nounwind readonly
declare i64 @atol(i8*) #4

declare i64 @sm_strlcpy(i8*, i8*, i64) #0

; Function Attrs: nounwind uwtable
define internal void @eatmsg() #1 {
entry:
  br label %while.cond

while.cond:                                       ; preds = %while.body, %entry
  %0 = load %struct._IO_FILE*, %struct._IO_FILE** @stdin, align 8, !tbaa !5
  %call = call i32 @_IO_getc(%struct._IO_FILE* %0)
  %cmp = icmp ne i32 %call, -1
  br i1 %cmp, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  br label %while.cond

while.end:                                        ; preds = %while.cond
  ret void
}

declare void @sm_mbdb_terminate() #0

; Function Attrs: noreturn nounwind
declare void @exit(i32) #6

; Function Attrs: nounwind uwtable
define internal void @usage() #1 {
entry:
  %0 = load void (i32, i8*, ...)*, void (i32, i8*, ...)** @msglog, align 8, !tbaa !5
  %call = call i32 @getuid() #2
  call void (i32, i8*, ...) %0(i32 5, i8* getelementptr inbounds ([158 x i8], [158 x i8]* @.str.49, i32 0, i32 0), i32 %call)
  call void @exit(i32 64) #9
  unreachable

return:                                           ; No predecessors!
  ret void
}

; Function Attrs: nounwind
declare noalias i8* @__strdup(i8*) #3

; Function Attrs: nounwind
declare i32 @chdir(i8*) #3

declare i8* @getcfname(i32, i32, i32, i8*) #0

declare i32 @sm_cf_getopt(i8*, i32, %struct.SM_CF_OPT_T*) #0

declare i32 @sm_mbdb_initialize(i8*) #0

declare i8* @sm_strexit(i32) #0

declare i32 @sm_mbdb_lookup(i8*, %struct.SM_MBDB_T*) #0

; Function Attrs: nounwind
declare void @llvm.lifetime.end(i64, i8* nocapture) #2

; Function Attrs: nounwind
declare i32 @getegid() #3

declare i32 @smdb_open_database(%struct.database_struct**, i8*, i32, i32, i64, i8*, %struct.database_user_struct*, %struct.database_params_struct*) #0

declare i8* @sm_errstring(i32) #0

; Function Attrs: nounwind uwtable
define internal void @listdb() #1 {
entry:
  %result = alloca i32, align 4
  %t = alloca i64, align 8
  %cursor = alloca %struct.cursor_struct*, align 8
  %db_key = alloca %struct.entry_struct, align 8
  %db_value = alloca %struct.entry_struct, align 8
  %cleanup.dest.slot = alloca i32
  %timestamp = alloca i8*, align 8
  %0 = bitcast i32* %result to i8*
  call void @llvm.lifetime.start(i64 4, i8* %0) #2
  %1 = bitcast i64* %t to i8*
  call void @llvm.lifetime.start(i64 8, i8* %1) #2
  %2 = bitcast %struct.cursor_struct** %cursor to i8*
  call void @llvm.lifetime.start(i64 8, i8* %2) #2
  store %struct.cursor_struct* null, %struct.cursor_struct** %cursor, align 8, !tbaa !5
  %3 = bitcast %struct.entry_struct* %db_key to i8*
  call void @llvm.lifetime.start(i64 16, i8* %3) #2
  %4 = bitcast %struct.entry_struct* %db_value to i8*
  call void @llvm.lifetime.start(i64 16, i8* %4) #2
  %5 = bitcast %struct.entry_struct* %db_key to i8*
  call void @llvm.memset.p0i8.i64(i8* %5, i8 0, i64 16, i32 8, i1 false)
  %6 = bitcast %struct.entry_struct* %db_value to i8*
  call void @llvm.memset.p0i8.i64(i8* %6, i8 0, i64 16, i32 8, i1 false)
  %7 = load %struct.database_struct*, %struct.database_struct** @Db, align 8, !tbaa !5
  %smdb_cursor = getelementptr inbounds %struct.database_struct, %struct.database_struct* %7, i32 0, i32 7
  %8 = load i32 (%struct.database_struct*, %struct.cursor_struct**, i32)*, i32 (%struct.database_struct*, %struct.cursor_struct**, i32)** %smdb_cursor, align 8, !tbaa !31
  %9 = load %struct.database_struct*, %struct.database_struct** @Db, align 8, !tbaa !5
  %call = call i32 %8(%struct.database_struct* %9, %struct.cursor_struct** %cursor, i32 0)
  store i32 %call, i32* %result, align 4, !tbaa !1
  %10 = load i32, i32* %result, align 4, !tbaa !1
  %cmp = icmp ne i32 %10, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %11 = load i32, i32* %result, align 4, !tbaa !1
  %call1 = call i8* @sm_errstring(i32 %11)
  %call2 = call i32 (%struct.sm_file*, i32, i8*, ...) @sm_io_fprintf(%struct.sm_file* getelementptr inbounds ([0 x %struct.sm_file], [0 x %struct.sm_file]* @SmIoF, i32 0, i64 2), i32 -2, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.50, i32 0, i32 0), i8* %call1)
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.54

if.end:                                           ; preds = %entry
  br label %while.cond

while.cond:                                       ; preds = %cleanup.cont, %cleanup, %if.end
  %12 = load %struct.cursor_struct*, %struct.cursor_struct** %cursor, align 8, !tbaa !5
  %smdbc_get = getelementptr inbounds %struct.cursor_struct, %struct.cursor_struct* %12, i32 0, i32 2
  %13 = load i32 (%struct.cursor_struct*, %struct.entry_struct*, %struct.entry_struct*, i32)*, i32 (%struct.cursor_struct*, %struct.entry_struct*, %struct.entry_struct*, i32)** %smdbc_get, align 8, !tbaa !32
  %14 = load %struct.cursor_struct*, %struct.cursor_struct** %cursor, align 8, !tbaa !5
  %call3 = call i32 %13(%struct.cursor_struct* %14, %struct.entry_struct* %db_key, %struct.entry_struct* %db_value, i32 2)
  store i32 %call3, i32* %result, align 4, !tbaa !1
  %cmp4 = icmp eq i32 %call3, 0
  br i1 %cmp4, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %15 = bitcast i8** %timestamp to i8*
  call void @llvm.lifetime.start(i64 8, i8* %15) #2
  %size = getelementptr inbounds %struct.entry_struct, %struct.entry_struct* %db_key, i32 0, i32 1
  %16 = load i64, i64* %size, align 8, !tbaa !34
  %cmp5 = icmp eq i64 %16, 30
  br i1 %cmp5, label %land.lhs.true, label %if.end.12

land.lhs.true:                                    ; preds = %while.body
  %data = getelementptr inbounds %struct.entry_struct, %struct.entry_struct* %db_key, i32 0, i32 0
  %17 = load i8*, i8** %data, align 8, !tbaa !36
  %size6 = getelementptr inbounds %struct.entry_struct, %struct.entry_struct* %db_key, i32 0, i32 1
  %18 = load i64, i64* %size6, align 8, !tbaa !34
  %conv = trunc i64 %18 to i32
  %sub = sub nsw i32 %conv, 1
  %conv7 = sext i32 %sub to i64
  %call8 = call i32 @strncmp(i8* %17, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.35, i32 0, i32 0), i64 %conv7) #7
  %cmp9 = icmp eq i32 %call8, 0
  br i1 %cmp9, label %if.then.11, label %if.end.12

if.then.11:                                       ; preds = %land.lhs.true
  store i32 2, i32* %cleanup.dest.slot
  br label %cleanup

if.end.12:                                        ; preds = %land.lhs.true, %while.body
  %size13 = getelementptr inbounds %struct.entry_struct, %struct.entry_struct* %db_value, i32 0, i32 1
  %19 = load i64, i64* %size13, align 8, !tbaa !34
  %cmp14 = icmp ne i64 %19, 8
  br i1 %cmp14, label %if.then.16, label %if.end.21

if.then.16:                                       ; preds = %if.end.12
  %size17 = getelementptr inbounds %struct.entry_struct, %struct.entry_struct* %db_key, i32 0, i32 1
  %20 = load i64, i64* %size17, align 8, !tbaa !34
  %conv18 = trunc i64 %20 to i32
  %data19 = getelementptr inbounds %struct.entry_struct, %struct.entry_struct* %db_key, i32 0, i32 0
  %21 = load i8*, i8** %data19, align 8, !tbaa !36
  %call20 = call i32 (%struct.sm_file*, i32, i8*, ...) @sm_io_fprintf(%struct.sm_file* getelementptr inbounds ([0 x %struct.sm_file], [0 x %struct.sm_file]* @SmIoF, i32 0, i64 2), i32 -2, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.51, i32 0, i32 0), i32 %conv18, i8* %21)
  store i32 2, i32* %cleanup.dest.slot
  br label %cleanup

if.end.21:                                        ; preds = %if.end.12
  %22 = bitcast i64* %t to i8*
  %data22 = getelementptr inbounds %struct.entry_struct, %struct.entry_struct* %db_value, i32 0, i32 0
  %23 = load i8*, i8** %data22, align 8, !tbaa !36
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %22, i8* %23, i64 8, i32 1, i1 false)
  %size23 = getelementptr inbounds %struct.entry_struct, %struct.entry_struct* %db_key, i32 0, i32 1
  %24 = load i64, i64* %size23, align 8, !tbaa !34
  %cmp24 = icmp ugt i64 %24, 40
  br i1 %cmp24, label %if.then.26, label %if.end.28

if.then.26:                                       ; preds = %if.end.21
  %size27 = getelementptr inbounds %struct.entry_struct, %struct.entry_struct* %db_key, i32 0, i32 1
  store i64 40, i64* %size27, align 8, !tbaa !34
  br label %if.end.28

if.end.28:                                        ; preds = %if.then.26, %if.end.21
  %25 = load i64, i64* %t, align 8, !tbaa !10
  %cmp29 = icmp sle i64 %25, 0
  br i1 %cmp29, label %if.then.31, label %if.else

if.then.31:                                       ; preds = %if.end.28
  store i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.52, i32 0, i32 0), i8** %timestamp, align 8, !tbaa !5
  br label %if.end.33

if.else:                                          ; preds = %if.end.28
  %call32 = call i8* @ctime(i64* %t) #2
  store i8* %call32, i8** %timestamp, align 8, !tbaa !5
  br label %if.end.33

if.end.33:                                        ; preds = %if.else, %if.then.31
  %size34 = getelementptr inbounds %struct.entry_struct, %struct.entry_struct* %db_key, i32 0, i32 1
  %26 = load i64, i64* %size34, align 8, !tbaa !34
  %conv35 = trunc i64 %26 to i32
  %data36 = getelementptr inbounds %struct.entry_struct, %struct.entry_struct* %db_key, i32 0, i32 0
  %27 = load i8*, i8** %data36, align 8, !tbaa !36
  %28 = load i8*, i8** %timestamp, align 8, !tbaa !5
  %call37 = call i32 (%struct.sm_file*, i32, i8*, ...) @sm_io_fprintf(%struct.sm_file* getelementptr inbounds ([0 x %struct.sm_file], [0 x %struct.sm_file]* @SmIoF, i32 0, i64 1), i32 -2, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.53, i32 0, i32 0), i32 %conv35, i8* %27, i8* %28)
  %29 = bitcast %struct.entry_struct* %db_key to i8*
  call void @llvm.memset.p0i8.i64(i8* %29, i8 0, i64 16, i32 8, i1 false)
  %30 = bitcast %struct.entry_struct* %db_value to i8*
  call void @llvm.memset.p0i8.i64(i8* %30, i8 0, i64 16, i32 8, i1 false)
  store i32 0, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %if.end.33, %if.then.16, %if.then.11
  %31 = bitcast i8** %timestamp to i8*
  call void @llvm.lifetime.end(i64 8, i8* %31) #2
  %cleanup.dest = load i32, i32* %cleanup.dest.slot
  switch i32 %cleanup.dest, label %unreachable [
    i32 0, label %cleanup.cont
    i32 2, label %while.cond
  ]

cleanup.cont:                                     ; preds = %cleanup
  br label %while.cond

while.end:                                        ; preds = %while.cond
  %32 = load i32, i32* %result, align 4, !tbaa !1
  %cmp38 = icmp ne i32 %32, 0
  br i1 %cmp38, label %land.lhs.true.40, label %if.end.51

land.lhs.true.40:                                 ; preds = %while.end
  %33 = load i32, i32* %result, align 4, !tbaa !1
  %cmp41 = icmp ne i32 %33, 318
  br i1 %cmp41, label %if.then.43, label %if.end.51

if.then.43:                                       ; preds = %land.lhs.true.40
  %34 = load i32, i32* %result, align 4, !tbaa !1
  %call44 = call i8* @sm_errstring(i32 %34)
  %call45 = call i32 (%struct.sm_file*, i32, i8*, ...) @sm_io_fprintf(%struct.sm_file* getelementptr inbounds ([0 x %struct.sm_file], [0 x %struct.sm_file]* @SmIoF, i32 0, i64 2), i32 -2, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.54, i32 0, i32 0), i8* %call44)
  %35 = load %struct.cursor_struct*, %struct.cursor_struct** %cursor, align 8, !tbaa !5
  %cmp46 = icmp ne %struct.cursor_struct* %35, null
  br i1 %cmp46, label %if.then.48, label %if.end.50

if.then.48:                                       ; preds = %if.then.43
  %36 = load %struct.cursor_struct*, %struct.cursor_struct** %cursor, align 8, !tbaa !5
  %smdbc_close = getelementptr inbounds %struct.cursor_struct, %struct.cursor_struct* %36, i32 0, i32 0
  %37 = load i32 (%struct.cursor_struct*)*, i32 (%struct.cursor_struct*)** %smdbc_close, align 8, !tbaa !37
  %38 = load %struct.cursor_struct*, %struct.cursor_struct** %cursor, align 8, !tbaa !5
  %call49 = call i32 %37(%struct.cursor_struct* %38)
  store %struct.cursor_struct* null, %struct.cursor_struct** %cursor, align 8, !tbaa !5
  br label %if.end.50

if.end.50:                                        ; preds = %if.then.48, %if.then.43
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.54

if.end.51:                                        ; preds = %land.lhs.true.40, %while.end
  %39 = load %struct.cursor_struct*, %struct.cursor_struct** %cursor, align 8, !tbaa !5
  %smdbc_close52 = getelementptr inbounds %struct.cursor_struct, %struct.cursor_struct* %39, i32 0, i32 0
  %40 = load i32 (%struct.cursor_struct*)*, i32 (%struct.cursor_struct*)** %smdbc_close52, align 8, !tbaa !37
  %41 = load %struct.cursor_struct*, %struct.cursor_struct** %cursor, align 8, !tbaa !5
  %call53 = call i32 %40(%struct.cursor_struct* %41)
  store %struct.cursor_struct* null, %struct.cursor_struct** %cursor, align 8, !tbaa !5
  store i32 0, i32* %cleanup.dest.slot
  br label %cleanup.54

cleanup.54:                                       ; preds = %if.end.51, %if.end.50, %if.then
  %42 = bitcast %struct.entry_struct* %db_value to i8*
  call void @llvm.lifetime.end(i64 16, i8* %42) #2
  %43 = bitcast %struct.entry_struct* %db_key to i8*
  call void @llvm.lifetime.end(i64 16, i8* %43) #2
  %44 = bitcast %struct.cursor_struct** %cursor to i8*
  call void @llvm.lifetime.end(i64 8, i8* %44) #2
  %45 = bitcast i64* %t to i8*
  call void @llvm.lifetime.end(i64 8, i8* %45) #2
  %46 = bitcast i32* %result to i8*
  call void @llvm.lifetime.end(i64 4, i8* %46) #2
  %cleanup.dest.59 = load i32, i32* %cleanup.dest.slot
  switch i32 %cleanup.dest.59, label %unreachable [
    i32 0, label %cleanup.cont.60
    i32 1, label %cleanup.cont.60
  ]

cleanup.cont.60:                                  ; preds = %cleanup.54, %cleanup.54
  ret void

unreachable:                                      ; preds = %cleanup.54, %cleanup
  unreachable
}

; Function Attrs: nounwind uwtable
define internal void @setinterval(i64 %interval) #1 {
entry:
  %interval.addr = alloca i64, align 8
  %key = alloca %struct.entry_struct, align 8
  %data = alloca %struct.entry_struct, align 8
  store i64 %interval, i64* %interval.addr, align 8, !tbaa !10
  %0 = bitcast %struct.entry_struct* %key to i8*
  call void @llvm.lifetime.start(i64 16, i8* %0) #2
  %1 = bitcast %struct.entry_struct* %data to i8*
  call void @llvm.lifetime.start(i64 16, i8* %1) #2
  %2 = bitcast %struct.entry_struct* %key to i8*
  call void @llvm.memset.p0i8.i64(i8* %2, i8 0, i64 16, i32 8, i1 false)
  %3 = bitcast %struct.entry_struct* %data to i8*
  call void @llvm.memset.p0i8.i64(i8* %3, i8 0, i64 16, i32 8, i1 false)
  %data1 = getelementptr inbounds %struct.entry_struct, %struct.entry_struct* %key, i32 0, i32 0
  store i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.35, i32 0, i32 0), i8** %data1, align 8, !tbaa !36
  %size = getelementptr inbounds %struct.entry_struct, %struct.entry_struct* %key, i32 0, i32 1
  store i64 30, i64* %size, align 8, !tbaa !34
  %4 = bitcast i64* %interval.addr to i8*
  %data2 = getelementptr inbounds %struct.entry_struct, %struct.entry_struct* %data, i32 0, i32 0
  store i8* %4, i8** %data2, align 8, !tbaa !36
  %size3 = getelementptr inbounds %struct.entry_struct, %struct.entry_struct* %data, i32 0, i32 1
  store i64 8, i64* %size3, align 8, !tbaa !34
  %5 = load %struct.database_struct*, %struct.database_struct** @Db, align 8, !tbaa !5
  %smdb_put = getelementptr inbounds %struct.database_struct, %struct.database_struct* %5, i32 0, i32 4
  %6 = load i32 (%struct.database_struct*, %struct.entry_struct*, %struct.entry_struct*, i32)*, i32 (%struct.database_struct*, %struct.entry_struct*, %struct.entry_struct*, i32)** %smdb_put, align 8, !tbaa !38
  %7 = load %struct.database_struct*, %struct.database_struct** @Db, align 8, !tbaa !5
  %call = call i32 %6(%struct.database_struct* %7, %struct.entry_struct* %key, %struct.entry_struct* %data, i32 0)
  %8 = bitcast %struct.entry_struct* %data to i8*
  call void @llvm.lifetime.end(i64 16, i8* %8) #2
  %9 = bitcast %struct.entry_struct* %key to i8*
  call void @llvm.lifetime.end(i64 16, i8* %9) #2
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @xclude(%struct.sm_file* %f) #1 {
entry:
  %f.addr = alloca %struct.sm_file*, align 8
  %buf = alloca [2048 x i8], align 16
  %p = alloca i8*, align 8
  %cleanup.dest.slot = alloca i32
  store %struct.sm_file* %f, %struct.sm_file** %f.addr, align 8, !tbaa !5
  %0 = bitcast [2048 x i8]* %buf to i8*
  call void @llvm.lifetime.start(i64 2048, i8* %0) #2
  %1 = bitcast i8** %p to i8*
  call void @llvm.lifetime.start(i64 8, i8* %1) #2
  %2 = load %struct.sm_file*, %struct.sm_file** %f.addr, align 8, !tbaa !5
  %cmp = icmp eq %struct.sm_file* %2, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end:                                           ; preds = %entry
  br label %while.cond

while.cond:                                       ; preds = %if.end.6, %if.end
  %3 = load %struct.sm_file*, %struct.sm_file** %f.addr, align 8, !tbaa !5
  %arraydecay = getelementptr inbounds [2048 x i8], [2048 x i8]* %buf, i32 0, i32 0
  %call = call i32 @sm_io_fgets(%struct.sm_file* %3, i32 -2, i8* %arraydecay, i32 2048)
  %cmp1 = icmp sge i32 %call, 0
  br i1 %cmp1, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %arraydecay2 = getelementptr inbounds [2048 x i8], [2048 x i8]* %buf, i32 0, i32 0
  %call3 = call i8* @strchr(i8* %arraydecay2, i32 10) #2
  store i8* %call3, i8** %p, align 8, !tbaa !5
  %cmp4 = icmp ne i8* %call3, null
  br i1 %cmp4, label %if.then.5, label %if.end.6

if.then.5:                                        ; preds = %while.body
  %4 = load i8*, i8** %p, align 8, !tbaa !5
  store i8 0, i8* %4, align 1, !tbaa !9
  br label %if.end.6

if.end.6:                                         ; preds = %if.then.5, %while.body
  %arraydecay7 = getelementptr inbounds [2048 x i8], [2048 x i8]* %buf, i32 0, i32 0
  call void @setreply(i8* %arraydecay7, i64 0)
  br label %while.cond

while.end:                                        ; preds = %while.cond
  store i32 0, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %while.end, %if.then
  %5 = bitcast i8** %p to i8*
  call void @llvm.lifetime.end(i64 8, i8* %5) #2
  %6 = bitcast [2048 x i8]* %buf to i8*
  call void @llvm.lifetime.end(i64 2048, i8* %6) #2
  %cleanup.dest = load i32, i32* %cleanup.dest.slot
  switch i32 %cleanup.dest, label %unreachable [
    i32 0, label %cleanup.cont
    i32 1, label %cleanup.cont
  ]

cleanup.cont:                                     ; preds = %cleanup, %cleanup
  ret void

unreachable:                                      ; preds = %cleanup
  unreachable
}

; Function Attrs: nounwind uwtable
define internal i32 @readheaders(i32 %alwaysrespond) #1 {
entry:
  %retval = alloca i32, align 4
  %alwaysrespond.addr = alloca i32, align 4
  %tome = alloca i32, align 4
  %cont = alloca i32, align 4
  %p = alloca i8*, align 8
  %cur = alloca %struct.alias*, align 8
  %buf = alloca [2048 x i8], align 16
  %quoted = alloca i32, align 4
  %cleanup.dest.slot = alloca i32
  store i32 %alwaysrespond, i32* %alwaysrespond.addr, align 4, !tbaa !1
  %0 = bitcast i32* %tome to i8*
  call void @llvm.lifetime.start(i64 4, i8* %0) #2
  %1 = bitcast i32* %cont to i8*
  call void @llvm.lifetime.start(i64 4, i8* %1) #2
  %2 = bitcast i8** %p to i8*
  call void @llvm.lifetime.start(i64 8, i8* %2) #2
  %3 = bitcast %struct.alias** %cur to i8*
  call void @llvm.lifetime.start(i64 8, i8* %3) #2
  %4 = bitcast [2048 x i8]* %buf to i8*
  call void @llvm.lifetime.start(i64 2048, i8* %4) #2
  store i32 0, i32* %cont, align 4, !tbaa !1
  %5 = load i32, i32* %alwaysrespond.addr, align 4, !tbaa !1
  store i32 %5, i32* %tome, align 4, !tbaa !1
  br label %while.cond

while.cond:                                       ; preds = %sw.epilog, %entry
  %arraydecay = getelementptr inbounds [2048 x i8], [2048 x i8]* %buf, i32 0, i32 0
  %call = call i32 @sm_io_fgets(%struct.sm_file* getelementptr inbounds ([0 x %struct.sm_file], [0 x %struct.sm_file]* @SmIoF, i32 0, i64 0), i32 -2, i8* %arraydecay, i32 2048)
  %cmp = icmp sge i32 %call, 0
  br i1 %cmp, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %while.cond
  %arraydecay1 = getelementptr inbounds [2048 x i8], [2048 x i8]* %buf, i32 0, i32 0
  %6 = load i8, i8* %arraydecay1, align 1, !tbaa !9
  %conv = sext i8 %6 to i32
  %cmp2 = icmp ne i32 %conv, 10
  br label %land.end

land.end:                                         ; preds = %land.rhs, %while.cond
  %7 = phi i1 [ false, %while.cond ], [ %cmp2, %land.rhs ]
  br i1 %7, label %while.body, label %while.end.194

while.body:                                       ; preds = %land.end
  %arraydecay4 = getelementptr inbounds [2048 x i8], [2048 x i8]* %buf, i32 0, i32 0
  %8 = load i8, i8* %arraydecay4, align 1, !tbaa !9
  %conv5 = sext i8 %8 to i32
  switch i32 %conv5, label %sw.default [
    i32 70, label %sw.bb
    i32 80, label %sw.bb.81
    i32 112, label %sw.bb.81
    i32 67, label %sw.bb.153
    i32 99, label %sw.bb.153
    i32 84, label %sw.bb.160
    i32 116, label %sw.bb.160
  ]

sw.bb:                                            ; preds = %while.body
  store i32 0, i32* %cont, align 4, !tbaa !1
  %arraydecay6 = getelementptr inbounds [2048 x i8], [2048 x i8]* %buf, i32 0, i32 0
  %call7 = call i32 @strncmp(i8* %arraydecay6, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.18, i32 0, i32 0), i64 5) #7
  %cmp8 = icmp eq i32 %call7, 0
  br i1 %cmp8, label %if.then, label %if.end.80

if.then:                                          ; preds = %sw.bb
  %9 = bitcast i32* %quoted to i8*
  call void @llvm.lifetime.start(i64 4, i8* %9) #2
  store i32 0, i32* %quoted, align 4, !tbaa !1
  %arraydecay10 = getelementptr inbounds [2048 x i8], [2048 x i8]* %buf, i32 0, i32 0
  %add.ptr = getelementptr inbounds i8, i8* %arraydecay10, i64 5
  store i8* %add.ptr, i8** %p, align 8, !tbaa !5
  br label %while.cond.11

while.cond.11:                                    ; preds = %if.end.48, %if.then
  %10 = load i8*, i8** %p, align 8, !tbaa !5
  %11 = load i8, i8* %10, align 1, !tbaa !9
  %conv12 = sext i8 %11 to i32
  %cmp13 = icmp ne i32 %conv12, 0
  br i1 %cmp13, label %while.body.15, label %while.end

while.body.15:                                    ; preds = %while.cond.11
  %12 = load i8*, i8** %p, align 8, !tbaa !5
  %13 = load i8, i8* %12, align 1, !tbaa !9
  %conv16 = sext i8 %13 to i32
  %cmp17 = icmp eq i32 %conv16, 92
  br i1 %cmp17, label %if.then.19, label %if.else

if.then.19:                                       ; preds = %while.body.15
  %14 = load i8*, i8** %p, align 8, !tbaa !5
  %incdec.ptr = getelementptr inbounds i8, i8* %14, i32 1
  store i8* %incdec.ptr, i8** %p, align 8, !tbaa !5
  %15 = load i8*, i8** %p, align 8, !tbaa !5
  %16 = load i8, i8* %15, align 1, !tbaa !9
  %conv20 = sext i8 %16 to i32
  %cmp21 = icmp eq i32 %conv20, 0
  br i1 %cmp21, label %if.then.23, label %if.end.25

if.then.23:                                       ; preds = %if.then.19
  %17 = load void (i32, i8*, ...)*, void (i32, i8*, ...)** @msglog, align 8, !tbaa !5
  call void (i32, i8*, ...) %17(i32 5, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.19, i32 0, i32 0))
  call void @eatmsg()
  %18 = load i32, i32* @CloseMBDB, align 4, !tbaa !1
  %tobool = icmp ne i32 %18, 0
  br i1 %tobool, label %if.then.24, label %if.end

if.then.24:                                       ; preds = %if.then.23
  call void @sm_mbdb_terminate()
  store i32 0, i32* @CloseMBDB, align 4, !tbaa !1
  br label %if.end

if.end:                                           ; preds = %if.then.24, %if.then.23
  store i32 65, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.25:                                        ; preds = %if.then.19
  br label %if.end.48

if.else:                                          ; preds = %while.body.15
  %19 = load i8*, i8** %p, align 8, !tbaa !5
  %20 = load i8, i8* %19, align 1, !tbaa !9
  %conv26 = sext i8 %20 to i32
  %cmp27 = icmp eq i32 %conv26, 34
  br i1 %cmp27, label %if.then.29, label %if.else.31

if.then.29:                                       ; preds = %if.else
  %21 = load i32, i32* %quoted, align 4, !tbaa !1
  %tobool30 = icmp ne i32 %21, 0
  %lnot = xor i1 %tobool30, true
  %lnot.ext = zext i1 %lnot to i32
  store i32 %lnot.ext, i32* %quoted, align 4, !tbaa !1
  br label %if.end.47

if.else.31:                                       ; preds = %if.else
  %22 = load i8*, i8** %p, align 8, !tbaa !5
  %23 = load i8, i8* %22, align 1, !tbaa !9
  %conv32 = sext i8 %23 to i32
  %cmp33 = icmp eq i32 %conv32, 13
  br i1 %cmp33, label %if.then.38, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.else.31
  %24 = load i8*, i8** %p, align 8, !tbaa !5
  %25 = load i8, i8* %24, align 1, !tbaa !9
  %conv35 = sext i8 %25 to i32
  %cmp36 = icmp eq i32 %conv35, 10
  br i1 %cmp36, label %if.then.38, label %if.else.39

if.then.38:                                       ; preds = %lor.lhs.false, %if.else.31
  br label %while.end

if.else.39:                                       ; preds = %lor.lhs.false
  %26 = load i8*, i8** %p, align 8, !tbaa !5
  %27 = load i8, i8* %26, align 1, !tbaa !9
  %conv40 = sext i8 %27 to i32
  %cmp41 = icmp eq i32 %conv40, 32
  br i1 %cmp41, label %land.lhs.true, label %if.end.45

land.lhs.true:                                    ; preds = %if.else.39
  %28 = load i32, i32* %quoted, align 4, !tbaa !1
  %tobool43 = icmp ne i32 %28, 0
  br i1 %tobool43, label %if.end.45, label %if.then.44

if.then.44:                                       ; preds = %land.lhs.true
  br label %while.end

if.end.45:                                        ; preds = %land.lhs.true, %if.else.39
  br label %if.end.46

if.end.46:                                        ; preds = %if.end.45
  br label %if.end.47

if.end.47:                                        ; preds = %if.end.46, %if.then.29
  br label %if.end.48

if.end.48:                                        ; preds = %if.end.47, %if.end.25
  %29 = load i8*, i8** %p, align 8, !tbaa !5
  %incdec.ptr49 = getelementptr inbounds i8, i8* %29, i32 1
  store i8* %incdec.ptr49, i8** %p, align 8, !tbaa !5
  br label %while.cond.11

while.end:                                        ; preds = %if.then.44, %if.then.38, %while.cond.11
  %30 = load i32, i32* %quoted, align 4, !tbaa !1
  %tobool50 = icmp ne i32 %30, 0
  br i1 %tobool50, label %if.then.51, label %if.end.55

if.then.51:                                       ; preds = %while.end
  %31 = load void (i32, i8*, ...)*, void (i32, i8*, ...)** @msglog, align 8, !tbaa !5
  call void (i32, i8*, ...) %31(i32 5, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.19, i32 0, i32 0))
  call void @eatmsg()
  %32 = load i32, i32* @CloseMBDB, align 4, !tbaa !1
  %tobool52 = icmp ne i32 %32, 0
  br i1 %tobool52, label %if.then.53, label %if.end.54

if.then.53:                                       ; preds = %if.then.51
  call void @sm_mbdb_terminate()
  store i32 0, i32* @CloseMBDB, align 4, !tbaa !1
  br label %if.end.54

if.end.54:                                        ; preds = %if.then.53, %if.then.51
  store i32 65, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.55:                                        ; preds = %while.end
  %33 = load i8*, i8** %p, align 8, !tbaa !5
  store i8 0, i8* %33, align 1, !tbaa !9
  %34 = load i8, i8* getelementptr inbounds ([2048 x i8], [2048 x i8]* @From, i32 0, i32 0), align 1, !tbaa !9
  %conv56 = sext i8 %34 to i32
  %cmp57 = icmp eq i32 %conv56, 0
  br i1 %cmp57, label %if.then.59, label %if.end.63

if.then.59:                                       ; preds = %if.end.55
  %arraydecay60 = getelementptr inbounds [2048 x i8], [2048 x i8]* %buf, i32 0, i32 0
  %add.ptr61 = getelementptr inbounds i8, i8* %arraydecay60, i64 5
  %call62 = call i64 @sm_strlcpy(i8* getelementptr inbounds ([2048 x i8], [2048 x i8]* @From, i32 0, i32 0), i8* %add.ptr61, i64 2048)
  br label %if.end.63

if.end.63:                                        ; preds = %if.then.59, %if.end.55
  %arraydecay64 = getelementptr inbounds [2048 x i8], [2048 x i8]* %buf, i32 0, i32 0
  %add.ptr65 = getelementptr inbounds i8, i8* %arraydecay64, i64 5
  %call66 = call i8* @strchr(i8* %add.ptr65, i32 10) #2
  store i8* %call66, i8** %p, align 8, !tbaa !5
  %cmp67 = icmp ne i8* %call66, null
  br i1 %cmp67, label %if.then.69, label %if.end.70

if.then.69:                                       ; preds = %if.end.63
  %35 = load i8*, i8** %p, align 8, !tbaa !5
  store i8 0, i8* %35, align 1, !tbaa !9
  br label %if.end.70

if.end.70:                                        ; preds = %if.then.69, %if.end.63
  %arraydecay71 = getelementptr inbounds [2048 x i8], [2048 x i8]* %buf, i32 0, i32 0
  %add.ptr72 = getelementptr inbounds i8, i8* %arraydecay71, i64 5
  %call73 = call i32 @junkmail(i8* %add.ptr72)
  %tobool74 = icmp ne i32 %call73, 0
  br i1 %tobool74, label %if.then.75, label %if.end.79

if.then.75:                                       ; preds = %if.end.70
  call void @eatmsg()
  %36 = load i32, i32* @CloseMBDB, align 4, !tbaa !1
  %tobool76 = icmp ne i32 %36, 0
  br i1 %tobool76, label %if.then.77, label %if.end.78

if.then.77:                                       ; preds = %if.then.75
  call void @sm_mbdb_terminate()
  store i32 0, i32* @CloseMBDB, align 4, !tbaa !1
  br label %if.end.78

if.end.78:                                        ; preds = %if.then.77, %if.then.75
  store i32 67, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.79:                                        ; preds = %if.end.70
  store i32 0, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %if.end.79, %if.end.78, %if.end.54, %if.end
  %37 = bitcast i32* %quoted to i8*
  call void @llvm.lifetime.end(i64 4, i8* %37) #2
  %cleanup.dest = load i32, i32* %cleanup.dest.slot
  switch i32 %cleanup.dest, label %cleanup.212 [
    i32 0, label %cleanup.cont
  ]

cleanup.cont:                                     ; preds = %cleanup
  br label %if.end.80

if.end.80:                                        ; preds = %cleanup.cont, %sw.bb
  br label %sw.epilog

sw.bb.81:                                         ; preds = %while.body, %while.body
  store i32 0, i32* %cont, align 4, !tbaa !1
  %arraydecay82 = getelementptr inbounds [2048 x i8], [2048 x i8]* %buf, i32 0, i32 0
  %call83 = call i64 @strlen(i8* %arraydecay82) #7
  %cmp84 = icmp ule i64 %call83, 10
  br i1 %cmp84, label %if.then.105, label %lor.lhs.false.86

lor.lhs.false.86:                                 ; preds = %sw.bb.81
  %arraydecay87 = getelementptr inbounds [2048 x i8], [2048 x i8]* %buf, i32 0, i32 0
  %call88 = call i32 @strncasecmp(i8* %arraydecay87, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.20, i32 0, i32 0), i64 10) #7
  %cmp89 = icmp ne i32 %call88, 0
  br i1 %cmp89, label %if.then.105, label %lor.lhs.false.91

lor.lhs.false.91:                                 ; preds = %lor.lhs.false.86
  %arrayidx = getelementptr inbounds [2048 x i8], [2048 x i8]* %buf, i32 0, i64 10
  %38 = load i8, i8* %arrayidx, align 1, !tbaa !9
  %conv92 = sext i8 %38 to i32
  %cmp93 = icmp ne i32 %conv92, 58
  br i1 %cmp93, label %land.lhs.true.95, label %if.end.106

land.lhs.true.95:                                 ; preds = %lor.lhs.false.91
  %arrayidx96 = getelementptr inbounds [2048 x i8], [2048 x i8]* %buf, i32 0, i64 10
  %39 = load i8, i8* %arrayidx96, align 1, !tbaa !9
  %conv97 = sext i8 %39 to i32
  %cmp98 = icmp ne i32 %conv97, 32
  br i1 %cmp98, label %land.lhs.true.100, label %if.end.106

land.lhs.true.100:                                ; preds = %land.lhs.true.95
  %arrayidx101 = getelementptr inbounds [2048 x i8], [2048 x i8]* %buf, i32 0, i64 10
  %40 = load i8, i8* %arrayidx101, align 1, !tbaa !9
  %conv102 = sext i8 %40 to i32
  %cmp103 = icmp ne i32 %conv102, 9
  br i1 %cmp103, label %if.then.105, label %if.end.106

if.then.105:                                      ; preds = %land.lhs.true.100, %lor.lhs.false.86, %sw.bb.81
  br label %sw.epilog

if.end.106:                                       ; preds = %land.lhs.true.100, %land.lhs.true.95, %lor.lhs.false.91
  %arraydecay107 = getelementptr inbounds [2048 x i8], [2048 x i8]* %buf, i32 0, i32 0
  %call108 = call i8* @strchr(i8* %arraydecay107, i32 58) #2
  store i8* %call108, i8** %p, align 8, !tbaa !5
  %cmp109 = icmp eq i8* %call108, null
  br i1 %cmp109, label %if.then.111, label %if.end.112

if.then.111:                                      ; preds = %if.end.106
  br label %sw.epilog

if.end.112:                                       ; preds = %if.end.106
  br label %while.cond.113

while.cond.113:                                   ; preds = %while.body.130, %if.end.112
  %41 = load i8*, i8** %p, align 8, !tbaa !5
  %incdec.ptr114 = getelementptr inbounds i8, i8* %41, i32 1
  store i8* %incdec.ptr114, i8** %p, align 8, !tbaa !5
  %42 = load i8, i8* %incdec.ptr114, align 1, !tbaa !9
  %conv115 = sext i8 %42 to i32
  %cmp116 = icmp ne i32 %conv115, 0
  br i1 %cmp116, label %land.lhs.true.118, label %land.end.129

land.lhs.true.118:                                ; preds = %while.cond.113
  %43 = load i8*, i8** %p, align 8, !tbaa !5
  %44 = load i8, i8* %43, align 1, !tbaa !9
  %conv119 = sext i8 %44 to i32
  %and = and i32 %conv119, -128
  %cmp120 = icmp eq i32 %and, 0
  br i1 %cmp120, label %land.rhs.122, label %land.end.129

land.rhs.122:                                     ; preds = %land.lhs.true.118
  %45 = load i8*, i8** %p, align 8, !tbaa !5
  %46 = load i8, i8* %45, align 1, !tbaa !9
  %conv123 = sext i8 %46 to i32
  %idxprom = sext i32 %conv123 to i64
  %call124 = call i16** @__ctype_b_loc() #8
  %47 = load i16*, i16** %call124, align 8, !tbaa !5
  %arrayidx125 = getelementptr inbounds i16, i16* %47, i64 %idxprom
  %48 = load i16, i16* %arrayidx125, align 2, !tbaa !15
  %conv126 = zext i16 %48 to i32
  %and127 = and i32 %conv126, 8192
  %tobool128 = icmp ne i32 %and127, 0
  br label %land.end.129

land.end.129:                                     ; preds = %land.rhs.122, %land.lhs.true.118, %while.cond.113
  %49 = phi i1 [ false, %land.lhs.true.118 ], [ false, %while.cond.113 ], [ %tobool128, %land.rhs.122 ]
  br i1 %49, label %while.body.130, label %while.end.131

while.body.130:                                   ; preds = %land.end.129
  br label %while.cond.113

while.end.131:                                    ; preds = %land.end.129
  %50 = load i8*, i8** %p, align 8, !tbaa !5
  %51 = load i8, i8* %50, align 1, !tbaa !9
  %conv132 = sext i8 %51 to i32
  %cmp133 = icmp eq i32 %conv132, 0
  br i1 %cmp133, label %if.then.135, label %if.end.136

if.then.135:                                      ; preds = %while.end.131
  br label %sw.epilog

if.end.136:                                       ; preds = %while.end.131
  %52 = load i8*, i8** %p, align 8, !tbaa !5
  %call137 = call i32 @strncasecmp(i8* %52, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.21, i32 0, i32 0), i64 4) #7
  %cmp138 = icmp eq i32 %call137, 0
  br i1 %cmp138, label %if.then.148, label %lor.lhs.false.140

lor.lhs.false.140:                                ; preds = %if.end.136
  %53 = load i8*, i8** %p, align 8, !tbaa !5
  %call141 = call i32 @strncasecmp(i8* %53, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.22, i32 0, i32 0), i64 4) #7
  %cmp142 = icmp eq i32 %call141, 0
  br i1 %cmp142, label %if.then.148, label %lor.lhs.false.144

lor.lhs.false.144:                                ; preds = %lor.lhs.false.140
  %54 = load i8*, i8** %p, align 8, !tbaa !5
  %call145 = call i32 @strncasecmp(i8* %54, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.23, i32 0, i32 0), i64 4) #7
  %cmp146 = icmp eq i32 %call145, 0
  br i1 %cmp146, label %if.then.148, label %if.end.152

if.then.148:                                      ; preds = %lor.lhs.false.144, %lor.lhs.false.140, %if.end.136
  call void @eatmsg()
  %55 = load i32, i32* @CloseMBDB, align 4, !tbaa !1
  %tobool149 = icmp ne i32 %55, 0
  br i1 %tobool149, label %if.then.150, label %if.end.151

if.then.150:                                      ; preds = %if.then.148
  call void @sm_mbdb_terminate()
  store i32 0, i32* @CloseMBDB, align 4, !tbaa !1
  br label %if.end.151

if.end.151:                                       ; preds = %if.then.150, %if.then.148
  store i32 67, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.212

if.end.152:                                       ; preds = %lor.lhs.false.144
  br label %sw.epilog

sw.bb.153:                                        ; preds = %while.body, %while.body
  %arraydecay154 = getelementptr inbounds [2048 x i8], [2048 x i8]* %buf, i32 0, i32 0
  %call155 = call i32 @strncasecmp(i8* %arraydecay154, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.24, i32 0, i32 0), i64 3) #7
  %cmp156 = icmp ne i32 %call155, 0
  br i1 %cmp156, label %if.then.158, label %if.end.159

if.then.158:                                      ; preds = %sw.bb.153
  br label %sw.epilog

if.end.159:                                       ; preds = %sw.bb.153
  store i32 1, i32* %cont, align 4, !tbaa !1
  br label %findme

sw.bb.160:                                        ; preds = %while.body, %while.body
  %arraydecay161 = getelementptr inbounds [2048 x i8], [2048 x i8]* %buf, i32 0, i32 0
  %call162 = call i32 @strncasecmp(i8* %arraydecay161, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.25, i32 0, i32 0), i64 3) #7
  %cmp163 = icmp ne i32 %call162, 0
  br i1 %cmp163, label %if.then.165, label %if.end.166

if.then.165:                                      ; preds = %sw.bb.160
  br label %sw.epilog

if.end.166:                                       ; preds = %sw.bb.160
  store i32 1, i32* %cont, align 4, !tbaa !1
  br label %findme

sw.default:                                       ; preds = %while.body
  %arraydecay167 = getelementptr inbounds [2048 x i8], [2048 x i8]* %buf, i32 0, i32 0
  %56 = load i8, i8* %arraydecay167, align 1, !tbaa !9
  %conv168 = sext i8 %56 to i32
  %and169 = and i32 %conv168, -128
  %cmp170 = icmp eq i32 %and169, 0
  br i1 %cmp170, label %lor.lhs.false.172, label %if.then.185

lor.lhs.false.172:                                ; preds = %sw.default
  %arraydecay173 = getelementptr inbounds [2048 x i8], [2048 x i8]* %buf, i32 0, i32 0
  %57 = load i8, i8* %arraydecay173, align 1, !tbaa !9
  %conv174 = sext i8 %57 to i32
  %idxprom175 = sext i32 %conv174 to i64
  %call176 = call i16** @__ctype_b_loc() #8
  %58 = load i16*, i16** %call176, align 8, !tbaa !5
  %arrayidx177 = getelementptr inbounds i16, i16* %58, i64 %idxprom175
  %59 = load i16, i16* %arrayidx177, align 2, !tbaa !15
  %conv178 = zext i16 %59 to i32
  %and179 = and i32 %conv178, 8192
  %tobool180 = icmp ne i32 %and179, 0
  br i1 %tobool180, label %lor.lhs.false.181, label %if.then.185

lor.lhs.false.181:                                ; preds = %lor.lhs.false.172
  %60 = load i32, i32* %cont, align 4, !tbaa !1
  %tobool182 = icmp ne i32 %60, 0
  br i1 %tobool182, label %lor.lhs.false.183, label %if.then.185

lor.lhs.false.183:                                ; preds = %lor.lhs.false.181
  %61 = load i32, i32* %tome, align 4, !tbaa !1
  %tobool184 = icmp ne i32 %61, 0
  br i1 %tobool184, label %if.then.185, label %if.end.186

if.then.185:                                      ; preds = %lor.lhs.false.183, %lor.lhs.false.181, %lor.lhs.false.172, %sw.default
  store i32 0, i32* %cont, align 4, !tbaa !1
  br label %sw.epilog

if.end.186:                                       ; preds = %lor.lhs.false.183
  br label %findme

findme:                                           ; preds = %if.end.186, %if.end.166, %if.end.159
  %62 = load %struct.alias*, %struct.alias** @Names, align 8, !tbaa !5
  store %struct.alias* %62, %struct.alias** %cur, align 8, !tbaa !5
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %findme
  %63 = load i32, i32* %tome, align 4, !tbaa !1
  %tobool187 = icmp ne i32 %63, 0
  br i1 %tobool187, label %land.end.191, label %land.rhs.188

land.rhs.188:                                     ; preds = %for.cond
  %64 = load %struct.alias*, %struct.alias** %cur, align 8, !tbaa !5
  %cmp189 = icmp ne %struct.alias* %64, null
  br label %land.end.191

land.end.191:                                     ; preds = %land.rhs.188, %for.cond
  %65 = phi i1 [ false, %for.cond ], [ %cmp189, %land.rhs.188 ]
  br i1 %65, label %for.body, label %for.end

for.body:                                         ; preds = %land.end.191
  %66 = load %struct.alias*, %struct.alias** %cur, align 8, !tbaa !5
  %name = getelementptr inbounds %struct.alias, %struct.alias* %66, i32 0, i32 0
  %67 = load i8*, i8** %name, align 8, !tbaa !12
  %arraydecay192 = getelementptr inbounds [2048 x i8], [2048 x i8]* %buf, i32 0, i32 0
  %call193 = call i32 @nsearch(i8* %67, i8* %arraydecay192)
  store i32 %call193, i32* %tome, align 4, !tbaa !1
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %68 = load %struct.alias*, %struct.alias** %cur, align 8, !tbaa !5
  %next = getelementptr inbounds %struct.alias, %struct.alias* %68, i32 0, i32 1
  %69 = load %struct.alias*, %struct.alias** %next, align 8, !tbaa !14
  store %struct.alias* %69, %struct.alias** %cur, align 8, !tbaa !5
  br label %for.cond

for.end:                                          ; preds = %land.end.191
  br label %sw.epilog

sw.epilog:                                        ; preds = %for.end, %if.then.185, %if.then.165, %if.then.158, %if.end.152, %if.then.135, %if.then.111, %if.then.105, %if.end.80
  br label %while.cond

while.end.194:                                    ; preds = %land.end
  %70 = load i32, i32* %tome, align 4, !tbaa !1
  %tobool195 = icmp ne i32 %70, 0
  br i1 %tobool195, label %if.end.200, label %if.then.196

if.then.196:                                      ; preds = %while.end.194
  call void @eatmsg()
  %71 = load i32, i32* @CloseMBDB, align 4, !tbaa !1
  %tobool197 = icmp ne i32 %71, 0
  br i1 %tobool197, label %if.then.198, label %if.end.199

if.then.198:                                      ; preds = %if.then.196
  call void @sm_mbdb_terminate()
  store i32 0, i32* @CloseMBDB, align 4, !tbaa !1
  br label %if.end.199

if.end.199:                                       ; preds = %if.then.198, %if.then.196
  store i32 67, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.212

if.end.200:                                       ; preds = %while.end.194
  %72 = load i8, i8* getelementptr inbounds ([2048 x i8], [2048 x i8]* @From, i32 0, i32 0), align 1, !tbaa !9
  %conv201 = sext i8 %72 to i32
  %cmp202 = icmp eq i32 %conv201, 0
  br i1 %cmp202, label %if.then.204, label %if.end.208

if.then.204:                                      ; preds = %if.end.200
  %73 = load void (i32, i8*, ...)*, void (i32, i8*, ...)** @msglog, align 8, !tbaa !5
  call void (i32, i8*, ...) %73(i32 5, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.26, i32 0, i32 0))
  call void @eatmsg()
  %74 = load i32, i32* @CloseMBDB, align 4, !tbaa !1
  %tobool205 = icmp ne i32 %74, 0
  br i1 %tobool205, label %if.then.206, label %if.end.207

if.then.206:                                      ; preds = %if.then.204
  call void @sm_mbdb_terminate()
  store i32 0, i32* @CloseMBDB, align 4, !tbaa !1
  br label %if.end.207

if.end.207:                                       ; preds = %if.then.206, %if.then.204
  store i32 65, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.212

if.end.208:                                       ; preds = %if.end.200
  call void @eatmsg()
  %75 = load i32, i32* @CloseMBDB, align 4, !tbaa !1
  %tobool209 = icmp ne i32 %75, 0
  br i1 %tobool209, label %if.then.210, label %if.end.211

if.then.210:                                      ; preds = %if.end.208
  call void @sm_mbdb_terminate()
  store i32 0, i32* @CloseMBDB, align 4, !tbaa !1
  br label %if.end.211

if.end.211:                                       ; preds = %if.then.210, %if.end.208
  store i32 0, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.212

cleanup.212:                                      ; preds = %if.end.211, %if.end.207, %if.end.199, %if.end.151, %cleanup
  %76 = bitcast [2048 x i8]* %buf to i8*
  call void @llvm.lifetime.end(i64 2048, i8* %76) #2
  %77 = bitcast %struct.alias** %cur to i8*
  call void @llvm.lifetime.end(i64 8, i8* %77) #2
  %78 = bitcast i8** %p to i8*
  call void @llvm.lifetime.end(i64 8, i8* %78) #2
  %79 = bitcast i32* %cont to i8*
  call void @llvm.lifetime.end(i64 4, i8* %79) #2
  %80 = bitcast i32* %tome to i8*
  call void @llvm.lifetime.end(i64 4, i8* %80) #2
  %81 = load i32, i32* %retval
  ret i32 %81
}

; Function Attrs: nounwind uwtable
define internal i32 @recent() #1 {
entry:
  %retval = alloca i32, align 4
  %key = alloca %struct.entry_struct, align 8
  %data = alloca %struct.entry_struct, align 8
  %then = alloca i64, align 8
  %next = alloca i64, align 8
  %trydomain = alloca i32, align 4
  %st = alloca i32, align 4
  %domain = alloca i8*, align 8
  %cleanup.dest.slot = alloca i32
  %0 = bitcast %struct.entry_struct* %key to i8*
  call void @llvm.lifetime.start(i64 16, i8* %0) #2
  %1 = bitcast %struct.entry_struct* %data to i8*
  call void @llvm.lifetime.start(i64 16, i8* %1) #2
  %2 = bitcast i64* %then to i8*
  call void @llvm.lifetime.start(i64 8, i8* %2) #2
  %3 = bitcast i64* %next to i8*
  call void @llvm.lifetime.start(i64 8, i8* %3) #2
  %4 = bitcast i32* %trydomain to i8*
  call void @llvm.lifetime.start(i64 4, i8* %4) #2
  store i32 0, i32* %trydomain, align 4, !tbaa !1
  %5 = bitcast i32* %st to i8*
  call void @llvm.lifetime.start(i64 4, i8* %5) #2
  %6 = bitcast i8** %domain to i8*
  call void @llvm.lifetime.start(i64 8, i8* %6) #2
  %7 = bitcast %struct.entry_struct* %key to i8*
  call void @llvm.memset.p0i8.i64(i8* %7, i8 0, i64 16, i32 8, i1 false)
  %8 = bitcast %struct.entry_struct* %data to i8*
  call void @llvm.memset.p0i8.i64(i8* %8, i8 0, i64 16, i32 8, i1 false)
  %data1 = getelementptr inbounds %struct.entry_struct, %struct.entry_struct* %key, i32 0, i32 0
  store i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.35, i32 0, i32 0), i8** %data1, align 8, !tbaa !36
  %size = getelementptr inbounds %struct.entry_struct, %struct.entry_struct* %key, i32 0, i32 1
  store i64 30, i64* %size, align 8, !tbaa !34
  %9 = load %struct.database_struct*, %struct.database_struct** @Db, align 8, !tbaa !5
  %smdb_get = getelementptr inbounds %struct.database_struct, %struct.database_struct* %9, i32 0, i32 3
  %10 = load i32 (%struct.database_struct*, %struct.entry_struct*, %struct.entry_struct*, i32)*, i32 (%struct.database_struct*, %struct.entry_struct*, %struct.entry_struct*, i32)** %smdb_get, align 8, !tbaa !39
  %11 = load %struct.database_struct*, %struct.database_struct** @Db, align 8, !tbaa !5
  %call = call i32 %10(%struct.database_struct* %11, %struct.entry_struct* %key, %struct.entry_struct* %data, i32 0)
  store i32 %call, i32* %st, align 4, !tbaa !1
  %12 = load i32, i32* %st, align 4, !tbaa !1
  %cmp = icmp ne i32 %12, 0
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  store i64 604800, i64* %next, align 8, !tbaa !10
  br label %if.end

if.else:                                          ; preds = %entry
  %13 = bitcast i64* %next to i8*
  %data2 = getelementptr inbounds %struct.entry_struct, %struct.entry_struct* %data, i32 0, i32 0
  %14 = load i8*, i8** %data2, align 8, !tbaa !36
  call void @llvm.memmove.p0i8.p0i8.i64(i8* %13, i8* %14, i64 8, i32 1, i1 false)
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %15 = bitcast %struct.entry_struct* %data to i8*
  call void @llvm.memset.p0i8.i64(i8* %15, i8 0, i64 16, i32 8, i1 false)
  %data3 = getelementptr inbounds %struct.entry_struct, %struct.entry_struct* %key, i32 0, i32 0
  store i8* getelementptr inbounds ([2048 x i8], [2048 x i8]* @From, i32 0, i32 0), i8** %data3, align 8, !tbaa !36
  %call4 = call i64 @strlen(i8* getelementptr inbounds ([2048 x i8], [2048 x i8]* @From, i32 0, i32 0)) #7
  %size5 = getelementptr inbounds %struct.entry_struct, %struct.entry_struct* %key, i32 0, i32 1
  store i64 %call4, i64* %size5, align 8, !tbaa !34
  br label %do.body

do.body:                                          ; preds = %do.cond, %if.end
  %16 = load %struct.database_struct*, %struct.database_struct** @Db, align 8, !tbaa !5
  %smdb_get6 = getelementptr inbounds %struct.database_struct, %struct.database_struct* %16, i32 0, i32 3
  %17 = load i32 (%struct.database_struct*, %struct.entry_struct*, %struct.entry_struct*, i32)*, i32 (%struct.database_struct*, %struct.entry_struct*, %struct.entry_struct*, i32)** %smdb_get6, align 8, !tbaa !39
  %18 = load %struct.database_struct*, %struct.database_struct** @Db, align 8, !tbaa !5
  %call7 = call i32 %17(%struct.database_struct* %18, %struct.entry_struct* %key, %struct.entry_struct* %data, i32 0)
  store i32 %call7, i32* %st, align 4, !tbaa !1
  %19 = load i32, i32* %st, align 4, !tbaa !1
  %cmp8 = icmp eq i32 %19, 0
  br i1 %cmp8, label %if.then.9, label %if.end.18

if.then.9:                                        ; preds = %do.body
  %20 = bitcast i64* %then to i8*
  %data10 = getelementptr inbounds %struct.entry_struct, %struct.entry_struct* %data, i32 0, i32 0
  %21 = load i8*, i8** %data10, align 8, !tbaa !36
  call void @llvm.memmove.p0i8.p0i8.i64(i8* %20, i8* %21, i64 8, i32 1, i1 false)
  %22 = load i64, i64* %next, align 8, !tbaa !10
  %cmp11 = icmp eq i64 %22, 0
  br i1 %cmp11, label %if.then.16, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.then.9
  %23 = load i64, i64* %then, align 8, !tbaa !10
  %cmp12 = icmp eq i64 %23, 0
  br i1 %cmp12, label %if.then.16, label %lor.lhs.false.13

lor.lhs.false.13:                                 ; preds = %lor.lhs.false
  %24 = load i64, i64* %then, align 8, !tbaa !10
  %25 = load i64, i64* %next, align 8, !tbaa !10
  %add = add nsw i64 %24, %25
  %call14 = call i64 @time(i64* null) #2
  %cmp15 = icmp sgt i64 %add, %call14
  br i1 %cmp15, label %if.then.16, label %if.end.17

if.then.16:                                       ; preds = %lor.lhs.false.13, %lor.lhs.false, %if.then.9
  store i32 1, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.17:                                        ; preds = %lor.lhs.false.13
  br label %if.end.18

if.end.18:                                        ; preds = %if.end.17, %do.body
  %26 = load i32, i32* %trydomain, align 4, !tbaa !1
  %tobool = icmp ne i32 %26, 0
  %lnot = xor i1 %tobool, true
  %lnot.ext = zext i1 %lnot to i32
  store i32 %lnot.ext, i32* %trydomain, align 4, !tbaa !1
  br i1 %lnot, label %land.lhs.true, label %if.end.25

land.lhs.true:                                    ; preds = %if.end.18
  %call19 = call i8* @strchr(i8* getelementptr inbounds ([2048 x i8], [2048 x i8]* @From, i32 0, i32 0), i32 64) #2
  store i8* %call19, i8** %domain, align 8, !tbaa !5
  %cmp20 = icmp ne i8* %call19, null
  br i1 %cmp20, label %if.then.21, label %if.end.25

if.then.21:                                       ; preds = %land.lhs.true
  %27 = load i8*, i8** %domain, align 8, !tbaa !5
  %data22 = getelementptr inbounds %struct.entry_struct, %struct.entry_struct* %key, i32 0, i32 0
  store i8* %27, i8** %data22, align 8, !tbaa !36
  %28 = load i8*, i8** %domain, align 8, !tbaa !5
  %call23 = call i64 @strlen(i8* %28) #7
  %size24 = getelementptr inbounds %struct.entry_struct, %struct.entry_struct* %key, i32 0, i32 1
  store i64 %call23, i64* %size24, align 8, !tbaa !34
  br label %if.end.25

if.end.25:                                        ; preds = %if.then.21, %land.lhs.true, %if.end.18
  br label %do.cond

do.cond:                                          ; preds = %if.end.25
  %29 = load i32, i32* %trydomain, align 4, !tbaa !1
  %tobool26 = icmp ne i32 %29, 0
  br i1 %tobool26, label %do.body, label %do.end

do.end:                                           ; preds = %do.cond
  store i32 0, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %do.end, %if.then.16
  %30 = bitcast i8** %domain to i8*
  call void @llvm.lifetime.end(i64 8, i8* %30) #2
  %31 = bitcast i32* %st to i8*
  call void @llvm.lifetime.end(i64 4, i8* %31) #2
  %32 = bitcast i32* %trydomain to i8*
  call void @llvm.lifetime.end(i64 4, i8* %32) #2
  %33 = bitcast i64* %next to i8*
  call void @llvm.lifetime.end(i64 8, i8* %33) #2
  %34 = bitcast i64* %then to i8*
  call void @llvm.lifetime.end(i64 8, i8* %34) #2
  %35 = bitcast %struct.entry_struct* %data to i8*
  call void @llvm.lifetime.end(i64 16, i8* %35) #2
  %36 = bitcast %struct.entry_struct* %key to i8*
  call void @llvm.lifetime.end(i64 16, i8* %36) #2
  %37 = load i32, i32* %retval
  ret i32 %37
}

; Function Attrs: nounwind
declare i64 @time(i64*) #3

; Function Attrs: nounwind uwtable
define internal void @setreply(i8* %from, i64 %when) #1 {
entry:
  %from.addr = alloca i8*, align 8
  %when.addr = alloca i64, align 8
  %key = alloca %struct.entry_struct, align 8
  %data = alloca %struct.entry_struct, align 8
  store i8* %from, i8** %from.addr, align 8, !tbaa !5
  store i64 %when, i64* %when.addr, align 8, !tbaa !10
  %0 = bitcast %struct.entry_struct* %key to i8*
  call void @llvm.lifetime.start(i64 16, i8* %0) #2
  %1 = bitcast %struct.entry_struct* %data to i8*
  call void @llvm.lifetime.start(i64 16, i8* %1) #2
  %2 = bitcast %struct.entry_struct* %key to i8*
  call void @llvm.memset.p0i8.i64(i8* %2, i8 0, i64 16, i32 8, i1 false)
  %3 = bitcast %struct.entry_struct* %data to i8*
  call void @llvm.memset.p0i8.i64(i8* %3, i8 0, i64 16, i32 8, i1 false)
  %4 = load i8*, i8** %from.addr, align 8, !tbaa !5
  %data1 = getelementptr inbounds %struct.entry_struct, %struct.entry_struct* %key, i32 0, i32 0
  store i8* %4, i8** %data1, align 8, !tbaa !36
  %5 = load i8*, i8** %from.addr, align 8, !tbaa !5
  %call = call i64 @strlen(i8* %5) #7
  %size = getelementptr inbounds %struct.entry_struct, %struct.entry_struct* %key, i32 0, i32 1
  store i64 %call, i64* %size, align 8, !tbaa !34
  %6 = bitcast i64* %when.addr to i8*
  %data2 = getelementptr inbounds %struct.entry_struct, %struct.entry_struct* %data, i32 0, i32 0
  store i8* %6, i8** %data2, align 8, !tbaa !36
  %size3 = getelementptr inbounds %struct.entry_struct, %struct.entry_struct* %data, i32 0, i32 1
  store i64 8, i64* %size3, align 8, !tbaa !34
  %7 = load %struct.database_struct*, %struct.database_struct** @Db, align 8, !tbaa !5
  %smdb_put = getelementptr inbounds %struct.database_struct, %struct.database_struct* %7, i32 0, i32 4
  %8 = load i32 (%struct.database_struct*, %struct.entry_struct*, %struct.entry_struct*, i32)*, i32 (%struct.database_struct*, %struct.entry_struct*, %struct.entry_struct*, i32)** %smdb_put, align 8, !tbaa !38
  %9 = load %struct.database_struct*, %struct.database_struct** @Db, align 8, !tbaa !5
  %call4 = call i32 %8(%struct.database_struct* %9, %struct.entry_struct* %key, %struct.entry_struct* %data, i32 0)
  %10 = bitcast %struct.entry_struct* %data to i8*
  call void @llvm.lifetime.end(i64 16, i8* %10) #2
  %11 = bitcast %struct.entry_struct* %key to i8*
  call void @llvm.lifetime.end(i64 16, i8* %11) #2
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @sendmessage(i8* %myname, i8* %msgfn, i8* %sender) #1 {
entry:
  %myname.addr = alloca i8*, align 8
  %msgfn.addr = alloca i8*, align 8
  %sender.addr = alloca i8*, align 8
  %mfp = alloca %struct.sm_file*, align 8
  %sfp = alloca %struct.sm_file*, align 8
  %i = alloca i32, align 4
  %pvect = alloca [2 x i32], align 4
  %pv = alloca [8 x i8*], align 16
  %buf = alloca [2048 x i8], align 16
  store i8* %myname, i8** %myname.addr, align 8, !tbaa !5
  store i8* %msgfn, i8** %msgfn.addr, align 8, !tbaa !5
  store i8* %sender, i8** %sender.addr, align 8, !tbaa !5
  %0 = bitcast %struct.sm_file** %mfp to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #2
  %1 = bitcast %struct.sm_file** %sfp to i8*
  call void @llvm.lifetime.start(i64 8, i8* %1) #2
  %2 = bitcast i32* %i to i8*
  call void @llvm.lifetime.start(i64 4, i8* %2) #2
  %3 = bitcast [2 x i32]* %pvect to i8*
  call void @llvm.lifetime.start(i64 8, i8* %3) #2
  %4 = bitcast [8 x i8*]* %pv to i8*
  call void @llvm.lifetime.start(i64 64, i8* %4) #2
  %5 = bitcast [2048 x i8]* %buf to i8*
  call void @llvm.lifetime.start(i64 2048, i8* %5) #2
  %6 = load i8*, i8** %msgfn.addr, align 8, !tbaa !5
  %call = call %struct.sm_file* @sm_io_open(%struct.sm_file* @SmFtStdio_def, i32 -2, i8* %6, i32 2, i8* null)
  store %struct.sm_file* %call, %struct.sm_file** %mfp, align 8, !tbaa !5
  %7 = load %struct.sm_file*, %struct.sm_file** %mfp, align 8, !tbaa !5
  %cmp = icmp eq %struct.sm_file* %7, null
  br i1 %cmp, label %if.then, label %if.end.4

if.then:                                          ; preds = %entry
  %8 = load i8*, i8** %msgfn.addr, align 8, !tbaa !5
  %arrayidx = getelementptr inbounds i8, i8* %8, i64 0
  %9 = load i8, i8* %arrayidx, align 1, !tbaa !9
  %conv = sext i8 %9 to i32
  %cmp1 = icmp eq i32 %conv, 47
  br i1 %cmp1, label %if.then.3, label %if.else

if.then.3:                                        ; preds = %if.then
  %10 = load void (i32, i8*, ...)*, void (i32, i8*, ...)** @msglog, align 8, !tbaa !5
  %11 = load i8*, i8** %msgfn.addr, align 8, !tbaa !5
  call void (i32, i8*, ...) %10(i32 5, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.36, i32 0, i32 0), i8* %11)
  br label %if.end

if.else:                                          ; preds = %if.then
  %12 = load void (i32, i8*, ...)*, void (i32, i8*, ...)** @msglog, align 8, !tbaa !5
  %13 = load i8*, i8** %myname.addr, align 8, !tbaa !5
  %14 = load i8*, i8** %msgfn.addr, align 8, !tbaa !5
  call void (i32, i8*, ...) %12(i32 5, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.37, i32 0, i32 0), i8* %13, i8* %14)
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then.3
  call void @exit(i32 66) #9
  unreachable

if.end.4:                                         ; preds = %entry
  %arraydecay = getelementptr inbounds [2 x i32], [2 x i32]* %pvect, i32 0, i32 0
  %call5 = call i32 @pipe(i32* %arraydecay) #2
  %cmp6 = icmp slt i32 %call5, 0
  br i1 %cmp6, label %if.then.8, label %if.end.11

if.then.8:                                        ; preds = %if.end.4
  %15 = load void (i32, i8*, ...)*, void (i32, i8*, ...)** @msglog, align 8, !tbaa !5
  %call9 = call i32* @__errno_location() #8
  %16 = load i32, i32* %call9, align 4, !tbaa !1
  %call10 = call i8* @sm_errstring(i32 %16)
  call void (i32, i8*, ...) %15(i32 3, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.38, i32 0, i32 0), i8* %call10)
  call void @exit(i32 71) #9
  unreachable

if.end.11:                                        ; preds = %if.end.4
  %arrayidx12 = getelementptr inbounds [8 x i8*], [8 x i8*]* %pv, i32 0, i64 0
  store i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.39, i32 0, i32 0), i8** %arrayidx12, align 8, !tbaa !5
  %arrayidx13 = getelementptr inbounds [8 x i8*], [8 x i8*]* %pv, i32 0, i64 1
  store i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.40, i32 0, i32 0), i8** %arrayidx13, align 8, !tbaa !5
  %arrayidx14 = getelementptr inbounds [8 x i8*], [8 x i8*]* %pv, i32 0, i64 2
  store i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.41, i32 0, i32 0), i8** %arrayidx14, align 8, !tbaa !5
  %17 = load i8*, i8** %sender.addr, align 8, !tbaa !5
  %cmp15 = icmp ne i8* %17, null
  br i1 %cmp15, label %if.then.17, label %if.else.19

if.then.17:                                       ; preds = %if.end.11
  %18 = load i8*, i8** %sender.addr, align 8, !tbaa !5
  %arrayidx18 = getelementptr inbounds [8 x i8*], [8 x i8*]* %pv, i32 0, i64 3
  store i8* %18, i8** %arrayidx18, align 8, !tbaa !5
  br label %if.end.21

if.else.19:                                       ; preds = %if.end.11
  %19 = load i8*, i8** %myname.addr, align 8, !tbaa !5
  %arrayidx20 = getelementptr inbounds [8 x i8*], [8 x i8*]* %pv, i32 0, i64 3
  store i8* %19, i8** %arrayidx20, align 8, !tbaa !5
  br label %if.end.21

if.end.21:                                        ; preds = %if.else.19, %if.then.17
  %arrayidx22 = getelementptr inbounds [8 x i8*], [8 x i8*]* %pv, i32 0, i64 4
  store i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.42, i32 0, i32 0), i8** %arrayidx22, align 8, !tbaa !5
  %arrayidx23 = getelementptr inbounds [8 x i8*], [8 x i8*]* %pv, i32 0, i64 5
  store i8* getelementptr inbounds ([2048 x i8], [2048 x i8]* @From, i32 0, i32 0), i8** %arrayidx23, align 8, !tbaa !5
  %arrayidx24 = getelementptr inbounds [8 x i8*], [8 x i8*]* %pv, i32 0, i64 6
  store i8* null, i8** %arrayidx24, align 8, !tbaa !5
  %call25 = call i32 @fork() #2
  store i32 %call25, i32* %i, align 4, !tbaa !1
  %20 = load i32, i32* %i, align 4, !tbaa !1
  %cmp26 = icmp slt i32 %20, 0
  br i1 %cmp26, label %if.then.28, label %if.end.31

if.then.28:                                       ; preds = %if.end.21
  %21 = load void (i32, i8*, ...)*, void (i32, i8*, ...)** @msglog, align 8, !tbaa !5
  %call29 = call i32* @__errno_location() #8
  %22 = load i32, i32* %call29, align 4, !tbaa !1
  %call30 = call i8* @sm_errstring(i32 %22)
  call void (i32, i8*, ...) %21(i32 3, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.43, i32 0, i32 0), i8* %call30)
  call void @exit(i32 71) #9
  unreachable

if.end.31:                                        ; preds = %if.end.21
  %23 = load i32, i32* %i, align 4, !tbaa !1
  %cmp32 = icmp eq i32 %23, 0
  br i1 %cmp32, label %if.then.34, label %if.end.46

if.then.34:                                       ; preds = %if.end.31
  %arrayidx35 = getelementptr inbounds [2 x i32], [2 x i32]* %pvect, i32 0, i64 0
  %24 = load i32, i32* %arrayidx35, align 4, !tbaa !1
  %call36 = call i32 @dup2(i32 %24, i32 0) #2
  %arrayidx37 = getelementptr inbounds [2 x i32], [2 x i32]* %pvect, i32 0, i64 0
  %25 = load i32, i32* %arrayidx37, align 4, !tbaa !1
  %call38 = call i32 @close(i32 %25)
  %arrayidx39 = getelementptr inbounds [2 x i32], [2 x i32]* %pvect, i32 0, i64 1
  %26 = load i32, i32* %arrayidx39, align 4, !tbaa !1
  %call40 = call i32 @close(i32 %26)
  %27 = load %struct.sm_file*, %struct.sm_file** %mfp, align 8, !tbaa !5
  %call41 = call i32 @sm_io_close(%struct.sm_file* %27, i32 -2)
  %arraydecay42 = getelementptr inbounds [8 x i8*], [8 x i8*]* %pv, i32 0, i32 0
  %call43 = call i32 @execv(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.44, i32 0, i32 0), i8** %arraydecay42) #2
  %28 = load void (i32, i8*, ...)*, void (i32, i8*, ...)** @msglog, align 8, !tbaa !5
  %call44 = call i32* @__errno_location() #8
  %29 = load i32, i32* %call44, align 4, !tbaa !1
  %call45 = call i8* @sm_errstring(i32 %29)
  call void (i32, i8*, ...) %28(i32 3, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.45, i32 0, i32 0), i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.44, i32 0, i32 0), i8* %call45)
  call void @exit(i32 69) #9
  unreachable

if.end.46:                                        ; preds = %if.end.31
  %arrayidx47 = getelementptr inbounds [2 x i32], [2 x i32]* %pvect, i32 0, i64 0
  %30 = load i32, i32* %arrayidx47, align 4, !tbaa !1
  %call48 = call i32 @close(i32 %30)
  %arrayidx49 = getelementptr inbounds [2 x i32], [2 x i32]* %pvect, i32 0, i64 1
  %31 = bitcast i32* %arrayidx49 to i8*
  %call50 = call %struct.sm_file* @sm_io_open(%struct.sm_file* @SmFtStdiofd_def, i32 -2, i8* %31, i32 3, i8* null)
  store %struct.sm_file* %call50, %struct.sm_file** %sfp, align 8, !tbaa !5
  %cmp51 = icmp ne %struct.sm_file* %call50, null
  br i1 %cmp51, label %if.then.53, label %if.else.64

if.then.53:                                       ; preds = %if.end.46
  %32 = load %struct.sm_file*, %struct.sm_file** %sfp, align 8, !tbaa !5
  %call54 = call i32 (%struct.sm_file*, i32, i8*, ...) @sm_io_fprintf(%struct.sm_file* %32, i32 -2, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.46, i32 0, i32 0), i8* getelementptr inbounds ([2048 x i8], [2048 x i8]* @From, i32 0, i32 0))
  %33 = load %struct.sm_file*, %struct.sm_file** %sfp, align 8, !tbaa !5
  %call55 = call i32 (%struct.sm_file*, i32, i8*, ...) @sm_io_fprintf(%struct.sm_file* %33, i32 -2, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.47, i32 0, i32 0))
  br label %while.cond

while.cond:                                       ; preds = %while.body, %if.then.53
  %34 = load %struct.sm_file*, %struct.sm_file** %mfp, align 8, !tbaa !5
  %arraydecay56 = getelementptr inbounds [2048 x i8], [2048 x i8]* %buf, i32 0, i32 0
  %call57 = call i32 @sm_io_fgets(%struct.sm_file* %34, i32 -2, i8* %arraydecay56, i32 2048)
  %cmp58 = icmp sge i32 %call57, 0
  br i1 %cmp58, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %35 = load %struct.sm_file*, %struct.sm_file** %sfp, align 8, !tbaa !5
  %arraydecay60 = getelementptr inbounds [2048 x i8], [2048 x i8]* %buf, i32 0, i32 0
  %call61 = call i32 @sm_io_fputs(%struct.sm_file* %35, i32 -2, i8* %arraydecay60)
  br label %while.cond

while.end:                                        ; preds = %while.cond
  %36 = load %struct.sm_file*, %struct.sm_file** %mfp, align 8, !tbaa !5
  %call62 = call i32 @sm_io_close(%struct.sm_file* %36, i32 -2)
  %37 = load %struct.sm_file*, %struct.sm_file** %sfp, align 8, !tbaa !5
  %call63 = call i32 @sm_io_close(%struct.sm_file* %37, i32 -2)
  br label %if.end.66

if.else.64:                                       ; preds = %if.end.46
  %38 = load %struct.sm_file*, %struct.sm_file** %mfp, align 8, !tbaa !5
  %call65 = call i32 @sm_io_close(%struct.sm_file* %38, i32 -2)
  %39 = load void (i32, i8*, ...)*, void (i32, i8*, ...)** @msglog, align 8, !tbaa !5
  call void (i32, i8*, ...) %39(i32 3, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.48, i32 0, i32 0))
  call void @exit(i32 69) #9
  unreachable

if.end.66:                                        ; preds = %while.end
  %40 = bitcast [2048 x i8]* %buf to i8*
  call void @llvm.lifetime.end(i64 2048, i8* %40) #2
  %41 = bitcast [8 x i8*]* %pv to i8*
  call void @llvm.lifetime.end(i64 64, i8* %41) #2
  %42 = bitcast [2 x i32]* %pvect to i8*
  call void @llvm.lifetime.end(i64 8, i8* %42) #2
  %43 = bitcast i32* %i to i8*
  call void @llvm.lifetime.end(i64 4, i8* %43) #2
  %44 = bitcast %struct.sm_file** %sfp to i8*
  call void @llvm.lifetime.end(i64 8, i8* %44) #2
  %45 = bitcast %struct.sm_file** %mfp to i8*
  call void @llvm.lifetime.end(i64 8, i8* %45) #2
  ret void
}

declare i32 @_IO_getc(%struct._IO_FILE*) #0

declare i32 @sm_io_fgets(%struct.sm_file*, i32, i8*, i32) #0

; Function Attrs: nounwind readonly
declare i32 @strncmp(i8*, i8*, i64) #4

; Function Attrs: nounwind
declare i8* @strchr(i8*, i32) #3

; Function Attrs: nounwind uwtable
define internal i32 @junkmail(i8* %from) #1 {
entry:
  %retval = alloca i32, align 4
  %from.addr = alloca i8*, align 8
  %quot = alloca i32, align 4
  %e = alloca i8*, align 8
  %len = alloca i64, align 8
  %cur = alloca %struct.ignore*, align 8
  %sender = alloca [256 x i8], align 16
  %cleanup.dest.slot = alloca i32
  store i8* %from, i8** %from.addr, align 8, !tbaa !5
  %0 = bitcast i32* %quot to i8*
  call void @llvm.lifetime.start(i64 4, i8* %0) #2
  %1 = bitcast i8** %e to i8*
  call void @llvm.lifetime.start(i64 8, i8* %1) #2
  %2 = bitcast i64* %len to i8*
  call void @llvm.lifetime.start(i64 8, i8* %2) #2
  %3 = bitcast %struct.ignore** %cur to i8*
  call void @llvm.lifetime.start(i64 8, i8* %3) #2
  %4 = bitcast [256 x i8]* %sender to i8*
  call void @llvm.lifetime.start(i64 256, i8* %4) #2
  store i32 0, i32* %quot, align 4, !tbaa !1
  %5 = load i8*, i8** %from.addr, align 8, !tbaa !5
  store i8* %5, i8** %e, align 8, !tbaa !5
  store i64 0, i64* %len, align 8, !tbaa !10
  br label %while.cond

while.cond:                                       ; preds = %if.end.46, %if.end.31, %if.then, %entry
  %6 = load i8*, i8** %e, align 8, !tbaa !5
  %7 = load i8, i8* %6, align 1, !tbaa !9
  %conv = sext i8 %7 to i32
  %cmp = icmp ne i32 %conv, 0
  br i1 %cmp, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %while.cond
  %8 = load i32, i32* %quot, align 4, !tbaa !1
  %tobool = icmp ne i32 %8, 0
  br i1 %tobool, label %lor.end.12, label %lor.rhs

lor.rhs:                                          ; preds = %land.rhs
  %9 = load i8*, i8** %e, align 8, !tbaa !5
  %10 = load i8, i8* %9, align 1, !tbaa !9
  %conv2 = sext i8 %10 to i32
  %cmp3 = icmp eq i32 %conv2, 37
  br i1 %cmp3, label %lor.end, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %lor.rhs
  %11 = load i8*, i8** %e, align 8, !tbaa !5
  %12 = load i8, i8* %11, align 1, !tbaa !9
  %conv5 = sext i8 %12 to i32
  %cmp6 = icmp eq i32 %conv5, 64
  br i1 %cmp6, label %lor.end, label %lor.rhs.8

lor.rhs.8:                                        ; preds = %lor.lhs.false
  %13 = load i8*, i8** %e, align 8, !tbaa !5
  %14 = load i8, i8* %13, align 1, !tbaa !9
  %conv9 = sext i8 %14 to i32
  %cmp10 = icmp eq i32 %conv9, 43
  br label %lor.end

lor.end:                                          ; preds = %lor.rhs.8, %lor.lhs.false, %lor.rhs
  %15 = phi i1 [ true, %lor.lhs.false ], [ true, %lor.rhs ], [ %cmp10, %lor.rhs.8 ]
  %lnot = xor i1 %15, true
  br label %lor.end.12

lor.end.12:                                       ; preds = %lor.end, %land.rhs
  %16 = phi i1 [ true, %land.rhs ], [ %lnot, %lor.end ]
  br label %land.end

land.end:                                         ; preds = %lor.end.12, %while.cond
  %17 = phi i1 [ false, %while.cond ], [ %16, %lor.end.12 ]
  br i1 %17, label %while.body, label %while.end

while.body:                                       ; preds = %land.end
  %18 = load i8*, i8** %e, align 8, !tbaa !5
  %19 = load i8, i8* %18, align 1, !tbaa !9
  %conv13 = sext i8 %19 to i32
  %cmp14 = icmp eq i32 %conv13, 34
  br i1 %cmp14, label %if.then, label %if.end

if.then:                                          ; preds = %while.body
  %20 = load i32, i32* %quot, align 4, !tbaa !1
  %tobool16 = icmp ne i32 %20, 0
  %lnot17 = xor i1 %tobool16, true
  %lnot.ext = zext i1 %lnot17 to i32
  store i32 %lnot.ext, i32* %quot, align 4, !tbaa !1
  %21 = load i8*, i8** %e, align 8, !tbaa !5
  %incdec.ptr = getelementptr inbounds i8, i8* %21, i32 1
  store i8* %incdec.ptr, i8** %e, align 8, !tbaa !5
  br label %while.cond

if.end:                                           ; preds = %while.body
  %22 = load i8*, i8** %e, align 8, !tbaa !5
  %23 = load i8, i8* %22, align 1, !tbaa !9
  %conv18 = sext i8 %23 to i32
  %cmp19 = icmp eq i32 %conv18, 92
  br i1 %cmp19, label %if.then.21, label %if.end.33

if.then.21:                                       ; preds = %if.end
  %24 = load i8*, i8** %e, align 8, !tbaa !5
  %incdec.ptr22 = getelementptr inbounds i8, i8* %24, i32 1
  store i8* %incdec.ptr22, i8** %e, align 8, !tbaa !5
  %25 = load i8, i8* %incdec.ptr22, align 1, !tbaa !9
  %conv23 = sext i8 %25 to i32
  %cmp24 = icmp eq i32 %conv23, 0
  br i1 %cmp24, label %if.then.26, label %if.end.27

if.then.26:                                       ; preds = %if.then.21
  br label %while.end

if.end.27:                                        ; preds = %if.then.21
  %26 = load i64, i64* %len, align 8, !tbaa !10
  %cmp28 = icmp ult i64 %26, 256
  br i1 %cmp28, label %if.then.30, label %if.end.31

if.then.30:                                       ; preds = %if.end.27
  %27 = load i8*, i8** %e, align 8, !tbaa !5
  %28 = load i8, i8* %27, align 1, !tbaa !9
  %29 = load i64, i64* %len, align 8, !tbaa !10
  %inc = add i64 %29, 1
  store i64 %inc, i64* %len, align 8, !tbaa !10
  %arrayidx = getelementptr inbounds [256 x i8], [256 x i8]* %sender, i32 0, i64 %29
  store i8 %28, i8* %arrayidx, align 1, !tbaa !9
  br label %if.end.31

if.end.31:                                        ; preds = %if.then.30, %if.end.27
  %30 = load i8*, i8** %e, align 8, !tbaa !5
  %incdec.ptr32 = getelementptr inbounds i8, i8* %30, i32 1
  store i8* %incdec.ptr32, i8** %e, align 8, !tbaa !5
  br label %while.cond

if.end.33:                                        ; preds = %if.end
  %31 = load i8*, i8** %e, align 8, !tbaa !5
  %32 = load i8, i8* %31, align 1, !tbaa !9
  %conv34 = sext i8 %32 to i32
  %cmp35 = icmp eq i32 %conv34, 33
  br i1 %cmp35, label %land.lhs.true, label %if.else

land.lhs.true:                                    ; preds = %if.end.33
  %33 = load i32, i32* %quot, align 4, !tbaa !1
  %tobool37 = icmp ne i32 %33, 0
  br i1 %tobool37, label %if.else, label %if.then.38

if.then.38:                                       ; preds = %land.lhs.true
  store i64 0, i64* %len, align 8, !tbaa !10
  %34 = load i64, i64* %len, align 8, !tbaa !10
  %arrayidx39 = getelementptr inbounds [256 x i8], [256 x i8]* %sender, i32 0, i64 %34
  store i8 0, i8* %arrayidx39, align 1, !tbaa !9
  br label %if.end.46

if.else:                                          ; preds = %land.lhs.true, %if.end.33
  %35 = load i64, i64* %len, align 8, !tbaa !10
  %cmp40 = icmp ult i64 %35, 256
  br i1 %cmp40, label %if.then.42, label %if.end.45

if.then.42:                                       ; preds = %if.else
  %36 = load i8*, i8** %e, align 8, !tbaa !5
  %37 = load i8, i8* %36, align 1, !tbaa !9
  %38 = load i64, i64* %len, align 8, !tbaa !10
  %inc43 = add i64 %38, 1
  store i64 %inc43, i64* %len, align 8, !tbaa !10
  %arrayidx44 = getelementptr inbounds [256 x i8], [256 x i8]* %sender, i32 0, i64 %38
  store i8 %37, i8* %arrayidx44, align 1, !tbaa !9
  br label %if.end.45

if.end.45:                                        ; preds = %if.then.42, %if.else
  br label %if.end.46

if.end.46:                                        ; preds = %if.end.45, %if.then.38
  %39 = load i8*, i8** %e, align 8, !tbaa !5
  %incdec.ptr47 = getelementptr inbounds i8, i8* %39, i32 1
  store i8* %incdec.ptr47, i8** %e, align 8, !tbaa !5
  br label %while.cond

while.end:                                        ; preds = %if.then.26, %land.end
  %40 = load i64, i64* %len, align 8, !tbaa !10
  %cmp48 = icmp ult i64 %40, 256
  br i1 %cmp48, label %if.then.50, label %if.else.52

if.then.50:                                       ; preds = %while.end
  %41 = load i64, i64* %len, align 8, !tbaa !10
  %arrayidx51 = getelementptr inbounds [256 x i8], [256 x i8]* %sender, i32 0, i64 %41
  store i8 0, i8* %arrayidx51, align 1, !tbaa !9
  br label %if.end.54

if.else.52:                                       ; preds = %while.end
  %arrayidx53 = getelementptr inbounds [256 x i8], [256 x i8]* %sender, i32 0, i64 255
  store i8 0, i8* %arrayidx53, align 1, !tbaa !9
  br label %if.end.54

if.end.54:                                        ; preds = %if.else.52, %if.then.50
  %42 = load i64, i64* %len, align 8, !tbaa !10
  %cmp55 = icmp ule i64 %42, 0
  br i1 %cmp55, label %if.then.57, label %if.end.58

if.then.57:                                       ; preds = %if.end.54
  store i32 0, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.58:                                        ; preds = %if.end.54
  store %struct.ignore* getelementptr inbounds ([2 x %struct.ignore], [2 x %struct.ignore]* @junkmail.ignorepre, i32 0, i32 0), %struct.ignore** %cur, align 8, !tbaa !5
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end.58
  %43 = load %struct.ignore*, %struct.ignore** %cur, align 8, !tbaa !5
  %name = getelementptr inbounds %struct.ignore, %struct.ignore* %43, i32 0, i32 0
  %44 = load i8*, i8** %name, align 8, !tbaa !40
  %cmp59 = icmp ne i8* %44, null
  br i1 %cmp59, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %45 = load i64, i64* %len, align 8, !tbaa !10
  %46 = load %struct.ignore*, %struct.ignore** %cur, align 8, !tbaa !5
  %len61 = getelementptr inbounds %struct.ignore, %struct.ignore* %46, i32 0, i32 1
  %47 = load i64, i64* %len61, align 8, !tbaa !42
  %cmp62 = icmp uge i64 %45, %47
  br i1 %cmp62, label %land.lhs.true.64, label %if.end.70

land.lhs.true.64:                                 ; preds = %for.body
  %48 = load %struct.ignore*, %struct.ignore** %cur, align 8, !tbaa !5
  %name65 = getelementptr inbounds %struct.ignore, %struct.ignore* %48, i32 0, i32 0
  %49 = load i8*, i8** %name65, align 8, !tbaa !40
  %arraydecay = getelementptr inbounds [256 x i8], [256 x i8]* %sender, i32 0, i32 0
  %50 = load %struct.ignore*, %struct.ignore** %cur, align 8, !tbaa !5
  %len66 = getelementptr inbounds %struct.ignore, %struct.ignore* %50, i32 0, i32 1
  %51 = load i64, i64* %len66, align 8, !tbaa !42
  %call = call i32 @strncasecmp(i8* %49, i8* %arraydecay, i64 %51) #7
  %cmp67 = icmp eq i32 %call, 0
  br i1 %cmp67, label %if.then.69, label %if.end.70

if.then.69:                                       ; preds = %land.lhs.true.64
  store i32 1, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.70:                                        ; preds = %land.lhs.true.64, %for.body
  br label %for.inc

for.inc:                                          ; preds = %if.end.70
  %52 = load %struct.ignore*, %struct.ignore** %cur, align 8, !tbaa !5
  %incdec.ptr71 = getelementptr inbounds %struct.ignore, %struct.ignore* %52, i32 1
  store %struct.ignore* %incdec.ptr71, %struct.ignore** %cur, align 8, !tbaa !5
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %53 = load i64, i64* %len, align 8, !tbaa !10
  %cmp72 = icmp ugt i64 %53, 256
  br i1 %cmp72, label %if.then.74, label %if.end.75

if.then.74:                                       ; preds = %for.end
  store i32 0, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.75:                                        ; preds = %for.end
  store %struct.ignore* getelementptr inbounds ([5 x %struct.ignore], [5 x %struct.ignore]* @junkmail.ignore, i32 0, i32 0), %struct.ignore** %cur, align 8, !tbaa !5
  br label %for.cond.76

for.cond.76:                                      ; preds = %for.inc.93, %if.end.75
  %54 = load %struct.ignore*, %struct.ignore** %cur, align 8, !tbaa !5
  %name77 = getelementptr inbounds %struct.ignore, %struct.ignore* %54, i32 0, i32 0
  %55 = load i8*, i8** %name77, align 8, !tbaa !40
  %cmp78 = icmp ne i8* %55, null
  br i1 %cmp78, label %for.body.80, label %for.end.95

for.body.80:                                      ; preds = %for.cond.76
  %56 = load i64, i64* %len, align 8, !tbaa !10
  %57 = load %struct.ignore*, %struct.ignore** %cur, align 8, !tbaa !5
  %len81 = getelementptr inbounds %struct.ignore, %struct.ignore* %57, i32 0, i32 1
  %58 = load i64, i64* %len81, align 8, !tbaa !42
  %cmp82 = icmp eq i64 %56, %58
  br i1 %cmp82, label %land.lhs.true.84, label %if.end.92

land.lhs.true.84:                                 ; preds = %for.body.80
  %59 = load %struct.ignore*, %struct.ignore** %cur, align 8, !tbaa !5
  %name85 = getelementptr inbounds %struct.ignore, %struct.ignore* %59, i32 0, i32 0
  %60 = load i8*, i8** %name85, align 8, !tbaa !40
  %arraydecay86 = getelementptr inbounds [256 x i8], [256 x i8]* %sender, i32 0, i32 0
  %61 = load %struct.ignore*, %struct.ignore** %cur, align 8, !tbaa !5
  %len87 = getelementptr inbounds %struct.ignore, %struct.ignore* %61, i32 0, i32 1
  %62 = load i64, i64* %len87, align 8, !tbaa !42
  %call88 = call i32 @strncasecmp(i8* %60, i8* %arraydecay86, i64 %62) #7
  %cmp89 = icmp eq i32 %call88, 0
  br i1 %cmp89, label %if.then.91, label %if.end.92

if.then.91:                                       ; preds = %land.lhs.true.84
  store i32 1, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.92:                                        ; preds = %land.lhs.true.84, %for.body.80
  br label %for.inc.93

for.inc.93:                                       ; preds = %if.end.92
  %63 = load %struct.ignore*, %struct.ignore** %cur, align 8, !tbaa !5
  %incdec.ptr94 = getelementptr inbounds %struct.ignore, %struct.ignore* %63, i32 1
  store %struct.ignore* %incdec.ptr94, %struct.ignore** %cur, align 8, !tbaa !5
  br label %for.cond.76

for.end.95:                                       ; preds = %for.cond.76
  store %struct.ignore* getelementptr inbounds ([4 x %struct.ignore], [4 x %struct.ignore]* @junkmail.ignorepost, i32 0, i32 0), %struct.ignore** %cur, align 8, !tbaa !5
  br label %for.cond.96

for.cond.96:                                      ; preds = %for.inc.114, %for.end.95
  %64 = load %struct.ignore*, %struct.ignore** %cur, align 8, !tbaa !5
  %name97 = getelementptr inbounds %struct.ignore, %struct.ignore* %64, i32 0, i32 0
  %65 = load i8*, i8** %name97, align 8, !tbaa !40
  %cmp98 = icmp ne i8* %65, null
  br i1 %cmp98, label %for.body.100, label %for.end.116

for.body.100:                                     ; preds = %for.cond.96
  %66 = load i64, i64* %len, align 8, !tbaa !10
  %67 = load %struct.ignore*, %struct.ignore** %cur, align 8, !tbaa !5
  %len101 = getelementptr inbounds %struct.ignore, %struct.ignore* %67, i32 0, i32 1
  %68 = load i64, i64* %len101, align 8, !tbaa !42
  %cmp102 = icmp uge i64 %66, %68
  br i1 %cmp102, label %land.lhs.true.104, label %if.end.113

land.lhs.true.104:                                ; preds = %for.body.100
  %69 = load %struct.ignore*, %struct.ignore** %cur, align 8, !tbaa !5
  %name105 = getelementptr inbounds %struct.ignore, %struct.ignore* %69, i32 0, i32 0
  %70 = load i8*, i8** %name105, align 8, !tbaa !40
  %71 = load i8*, i8** %e, align 8, !tbaa !5
  %72 = load %struct.ignore*, %struct.ignore** %cur, align 8, !tbaa !5
  %len106 = getelementptr inbounds %struct.ignore, %struct.ignore* %72, i32 0, i32 1
  %73 = load i64, i64* %len106, align 8, !tbaa !42
  %idx.neg = sub i64 0, %73
  %add.ptr = getelementptr inbounds i8, i8* %71, i64 %idx.neg
  %add.ptr107 = getelementptr inbounds i8, i8* %add.ptr, i64 -1
  %74 = load %struct.ignore*, %struct.ignore** %cur, align 8, !tbaa !5
  %len108 = getelementptr inbounds %struct.ignore, %struct.ignore* %74, i32 0, i32 1
  %75 = load i64, i64* %len108, align 8, !tbaa !42
  %call109 = call i32 @strncasecmp(i8* %70, i8* %add.ptr107, i64 %75) #7
  %cmp110 = icmp eq i32 %call109, 0
  br i1 %cmp110, label %if.then.112, label %if.end.113

if.then.112:                                      ; preds = %land.lhs.true.104
  store i32 1, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.113:                                       ; preds = %land.lhs.true.104, %for.body.100
  br label %for.inc.114

for.inc.114:                                      ; preds = %if.end.113
  %76 = load %struct.ignore*, %struct.ignore** %cur, align 8, !tbaa !5
  %incdec.ptr115 = getelementptr inbounds %struct.ignore, %struct.ignore* %76, i32 1
  store %struct.ignore* %incdec.ptr115, %struct.ignore** %cur, align 8, !tbaa !5
  br label %for.cond.96

for.end.116:                                      ; preds = %for.cond.96
  store i32 0, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %for.end.116, %if.then.112, %if.then.91, %if.then.74, %if.then.69, %if.then.57
  %77 = bitcast [256 x i8]* %sender to i8*
  call void @llvm.lifetime.end(i64 256, i8* %77) #2
  %78 = bitcast %struct.ignore** %cur to i8*
  call void @llvm.lifetime.end(i64 8, i8* %78) #2
  %79 = bitcast i64* %len to i8*
  call void @llvm.lifetime.end(i64 8, i8* %79) #2
  %80 = bitcast i8** %e to i8*
  call void @llvm.lifetime.end(i64 8, i8* %80) #2
  %81 = bitcast i32* %quot to i8*
  call void @llvm.lifetime.end(i64 4, i8* %81) #2
  %82 = load i32, i32* %retval
  ret i32 %82
}

; Function Attrs: nounwind readonly
declare i32 @strncasecmp(i8*, i8*, i64) #4

; Function Attrs: nounwind uwtable
define internal i32 @nsearch(i8* %name, i8* %str) #1 {
entry:
  %retval = alloca i32, align 4
  %name.addr = alloca i8*, align 8
  %str.addr = alloca i8*, align 8
  %len = alloca i64, align 8
  %s = alloca i8*, align 8
  %__res = alloca i32, align 4
  %tmp = alloca i32, align 4
  %__res5 = alloca i32, align 4
  %tmp10 = alloca i32, align 4
  %cleanup.dest.slot = alloca i32
  store i8* %name, i8** %name.addr, align 8, !tbaa !5
  store i8* %str, i8** %str.addr, align 8, !tbaa !5
  %0 = bitcast i64* %len to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #2
  %1 = bitcast i8** %s to i8*
  call void @llvm.lifetime.start(i64 8, i8* %1) #2
  %2 = load i8*, i8** %name.addr, align 8, !tbaa !5
  %call = call i64 @strlen(i8* %2) #7
  store i64 %call, i64* %len, align 8, !tbaa !10
  %3 = load i8*, i8** %str.addr, align 8, !tbaa !5
  store i8* %3, i8** %s, align 8, !tbaa !5
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %4 = load i8*, i8** %s, align 8, !tbaa !5
  %5 = load i8, i8* %4, align 1, !tbaa !9
  %conv = sext i8 %5 to i32
  %cmp = icmp ne i32 %conv, 0
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %6 = bitcast i32* %__res to i8*
  call void @llvm.lifetime.start(i64 4, i8* %6) #2
  %7 = load i8*, i8** %s, align 8, !tbaa !5
  %8 = load i8, i8* %7, align 1, !tbaa !9
  %conv2 = sext i8 %8 to i32
  %idxprom = sext i32 %conv2 to i64
  %call3 = call i32** @__ctype_tolower_loc() #8
  %9 = load i32*, i32** %call3, align 8, !tbaa !5
  %arrayidx = getelementptr inbounds i32, i32* %9, i64 %idxprom
  %10 = load i32, i32* %arrayidx, align 4, !tbaa !1
  store i32 %10, i32* %__res, align 4, !tbaa !1
  %11 = load i32, i32* %__res, align 4, !tbaa !1
  store i32 %11, i32* %tmp, !tbaa !1
  %12 = bitcast i32* %__res to i8*
  call void @llvm.lifetime.end(i64 4, i8* %12) #2
  %13 = load i32, i32* %tmp, !tbaa !1
  %14 = bitcast i32* %__res5 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %14) #2
  %15 = load i8*, i8** %name.addr, align 8, !tbaa !5
  %16 = load i8, i8* %15, align 1, !tbaa !9
  %conv6 = sext i8 %16 to i32
  %idxprom7 = sext i32 %conv6 to i64
  %call8 = call i32** @__ctype_tolower_loc() #8
  %17 = load i32*, i32** %call8, align 8, !tbaa !5
  %arrayidx9 = getelementptr inbounds i32, i32* %17, i64 %idxprom7
  %18 = load i32, i32* %arrayidx9, align 4, !tbaa !1
  store i32 %18, i32* %__res5, align 4, !tbaa !1
  %19 = load i32, i32* %__res5, align 4, !tbaa !1
  store i32 %19, i32* %tmp10, !tbaa !1
  %20 = bitcast i32* %__res5 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %20) #2
  %21 = load i32, i32* %tmp10, !tbaa !1
  %cmp11 = icmp eq i32 %13, %21
  br i1 %cmp11, label %land.lhs.true, label %if.end

land.lhs.true:                                    ; preds = %for.body
  %22 = load i8*, i8** %name.addr, align 8, !tbaa !5
  %23 = load i8*, i8** %s, align 8, !tbaa !5
  %24 = load i64, i64* %len, align 8, !tbaa !10
  %call13 = call i32 @strncasecmp(i8* %22, i8* %23, i64 %24) #7
  %cmp14 = icmp eq i32 %call13, 0
  br i1 %cmp14, label %land.lhs.true.16, label %if.end

land.lhs.true.16:                                 ; preds = %land.lhs.true
  %25 = load i8*, i8** %s, align 8, !tbaa !5
  %26 = load i8*, i8** %str.addr, align 8, !tbaa !5
  %cmp17 = icmp eq i8* %25, %26
  br i1 %cmp17, label %land.lhs.true.30, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %land.lhs.true.16
  %27 = load i8*, i8** %s, align 8, !tbaa !5
  %add.ptr = getelementptr inbounds i8, i8* %27, i64 -1
  %28 = load i8, i8* %add.ptr, align 1, !tbaa !9
  %conv19 = sext i8 %28 to i32
  %and = and i32 %conv19, -128
  %cmp20 = icmp eq i32 %and, 0
  br i1 %cmp20, label %lor.lhs.false.22, label %land.lhs.true.30

lor.lhs.false.22:                                 ; preds = %lor.lhs.false
  %29 = load i8*, i8** %s, align 8, !tbaa !5
  %add.ptr23 = getelementptr inbounds i8, i8* %29, i64 -1
  %30 = load i8, i8* %add.ptr23, align 1, !tbaa !9
  %conv24 = sext i8 %30 to i32
  %idxprom25 = sext i32 %conv24 to i64
  %call26 = call i16** @__ctype_b_loc() #8
  %31 = load i16*, i16** %call26, align 8, !tbaa !5
  %arrayidx27 = getelementptr inbounds i16, i16* %31, i64 %idxprom25
  %32 = load i16, i16* %arrayidx27, align 2, !tbaa !15
  %conv28 = zext i16 %32 to i32
  %and29 = and i32 %conv28, 8
  %tobool = icmp ne i32 %and29, 0
  br i1 %tobool, label %if.end, label %land.lhs.true.30

land.lhs.true.30:                                 ; preds = %lor.lhs.false.22, %lor.lhs.false, %land.lhs.true.16
  %33 = load i8*, i8** %s, align 8, !tbaa !5
  %34 = load i64, i64* %len, align 8, !tbaa !10
  %add.ptr31 = getelementptr inbounds i8, i8* %33, i64 %34
  %35 = load i8, i8* %add.ptr31, align 1, !tbaa !9
  %conv32 = sext i8 %35 to i32
  %and33 = and i32 %conv32, -128
  %cmp34 = icmp eq i32 %and33, 0
  br i1 %cmp34, label %lor.lhs.false.36, label %if.then

lor.lhs.false.36:                                 ; preds = %land.lhs.true.30
  %36 = load i8*, i8** %s, align 8, !tbaa !5
  %37 = load i64, i64* %len, align 8, !tbaa !10
  %add.ptr37 = getelementptr inbounds i8, i8* %36, i64 %37
  %38 = load i8, i8* %add.ptr37, align 1, !tbaa !9
  %conv38 = sext i8 %38 to i32
  %idxprom39 = sext i32 %conv38 to i64
  %call40 = call i16** @__ctype_b_loc() #8
  %39 = load i16*, i16** %call40, align 8, !tbaa !5
  %arrayidx41 = getelementptr inbounds i16, i16* %39, i64 %idxprom39
  %40 = load i16, i16* %arrayidx41, align 2, !tbaa !15
  %conv42 = zext i16 %40 to i32
  %and43 = and i32 %conv42, 8
  %tobool44 = icmp ne i32 %and43, 0
  br i1 %tobool44, label %if.end, label %if.then

if.then:                                          ; preds = %lor.lhs.false.36, %land.lhs.true.30
  store i32 1, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end:                                           ; preds = %lor.lhs.false.36, %lor.lhs.false.22, %land.lhs.true, %for.body
  br label %for.inc

for.inc:                                          ; preds = %if.end
  %41 = load i8*, i8** %s, align 8, !tbaa !5
  %incdec.ptr = getelementptr inbounds i8, i8* %41, i32 1
  store i8* %incdec.ptr, i8** %s, align 8, !tbaa !5
  br label %for.cond

for.end:                                          ; preds = %for.cond
  store i32 0, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %for.end, %if.then
  %42 = bitcast i8** %s to i8*
  call void @llvm.lifetime.end(i64 8, i8* %42) #2
  %43 = bitcast i64* %len to i8*
  call void @llvm.lifetime.end(i64 8, i8* %43) #2
  %44 = load i32, i32* %retval
  ret i32 %44
}

; Function Attrs: nounwind readnone
declare i32** @__ctype_tolower_loc() #5

; Function Attrs: nounwind
declare void @llvm.memmove.p0i8.p0i8.i64(i8* nocapture, i8* nocapture readonly, i64, i32, i1) #2

declare %struct.sm_file* @sm_io_open(%struct.sm_file*, i32, i8*, i32, i8*) #0

; Function Attrs: nounwind
declare i32 @pipe(i32*) #3

; Function Attrs: nounwind readnone
declare i32* @__errno_location() #5

; Function Attrs: nounwind
declare i32 @fork() #3

; Function Attrs: nounwind
declare i32 @dup2(i32, i32) #3

declare i32 @close(i32) #0

declare i32 @sm_io_close(%struct.sm_file*, i32) #0

; Function Attrs: nounwind
declare i32 @execv(i8*, i8**) #3

declare i32 @sm_io_fprintf(%struct.sm_file*, i32, i8*, ...) #0

declare i32 @sm_io_fputs(%struct.sm_file*, i32, i8*) #0

; Function Attrs: nounwind
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* nocapture, i8* nocapture readonly, i64, i32, i1) #2

; Function Attrs: nounwind
declare i8* @ctime(i64*) #3

; Function Attrs: nounwind
declare void @llvm.va_start(i8*) #2

declare i32 @sm_io_vfprintf(%struct.sm_file*, i32, i8*, %struct.__va_list_tag*) #0

; Function Attrs: nounwind
declare void @llvm.va_end(i8*) #2

attributes #0 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind }
attributes #3 = { nounwind "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { nounwind readonly "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #5 = { nounwind readnone "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #6 = { noreturn nounwind "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #7 = { nounwind readonly }
attributes #8 = { nounwind readnone }
attributes #9 = { noreturn nounwind }

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
!11 = !{!"long", !3, i64 0}
!12 = !{!13, !6, i64 0}
!13 = !{!"alias", !6, i64 0, !6, i64 8}
!14 = !{!13, !6, i64 8}
!15 = !{!16, !16, i64 0}
!16 = !{!"short", !3, i64 0}
!17 = !{!8, !2, i64 16}
!18 = !{!19, !2, i64 0}
!19 = !{!"database_user_struct", !2, i64 0, !2, i64 4, !3, i64 8}
!20 = !{!8, !2, i64 20}
!21 = !{!19, !2, i64 4}
!22 = !{!8, !6, i64 32}
!23 = !{!24, !6, i64 0}
!24 = !{!"", !6, i64 0, !6, i64 8}
!25 = !{!24, !6, i64 8}
!26 = !{!27, !2, i64 0}
!27 = !{!"", !2, i64 0, !2, i64 4, !3, i64 8, !3, i64 264, !3, i64 520, !3, i64 4616}
!28 = !{!27, !2, i64 4}
!29 = !{!30, !6, i64 0}
!30 = !{!"database_struct", !6, i64 0, !6, i64 8, !6, i64 16, !6, i64 24, !6, i64 32, !6, i64 40, !6, i64 48, !6, i64 56, !6, i64 64, !6, i64 72}
!31 = !{!30, !6, i64 56}
!32 = !{!33, !6, i64 16}
!33 = !{!"cursor_struct", !6, i64 0, !6, i64 8, !6, i64 16, !6, i64 24, !6, i64 32}
!34 = !{!35, !11, i64 8}
!35 = !{!"entry_struct", !6, i64 0, !11, i64 8}
!36 = !{!35, !6, i64 0}
!37 = !{!33, !6, i64 0}
!38 = !{!30, !6, i64 32}
!39 = !{!30, !6, i64 24}
!40 = !{!41, !6, i64 0}
!41 = !{!"ignore", !6, i64 0, !11, i64 8}
!42 = !{!41, !11, i64 8}
