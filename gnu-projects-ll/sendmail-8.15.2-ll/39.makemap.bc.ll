; ModuleID = '39.makemap.bc'
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
@.str = private unnamed_addr constant [15 x i8] c"Unknown UID %d\00", align 1
@RealUserName = common global i8* null, align 8
@RunAsUserName = common global i8* null, align 8
@.str.1 = private unnamed_addr constant [19 x i8] c"C:D:Nc:deflorst:uv\00", align 1
@optarg = external global i8*, align 8
@SmIoF = external global [0 x %struct.sm_file], align 8
@.str.2 = private unnamed_addr constant [19 x i8] c"Invalid separator\0A\00", align 1
@optind = external global i32, align 4
@SmFtStdio_def = external global %struct.sm_file, align 8
@.str.3 = private unnamed_addr constant [17 x i8] c"makemap: %s: %s\0A\00", align 1
@.str.4 = private unnamed_addr constant [13 x i8] c" TrustedUser\00", align 1
@.str.5 = private unnamed_addr constant [30 x i8] c"TrustedUser: unknown user %s\0A\00", align 1
@.str.6 = private unnamed_addr constant [48 x i8] c"%s: Need to recompile with -D%s for %s support\0A\00", align 1
@.str.7 = private unnamed_addr constant [38 x i8] c"%s: error opening type %s map %s: %s\0A\00", align 1
@.str.8 = private unnamed_addr constant [42 x i8] c"WARNING: ownership change on %s failed %s\00", align 1
@.str.9 = private unnamed_addr constant [43 x i8] c"%s: cannot make cursor for type %s map %s\0A\00", align 1
@.str.10 = private unnamed_addr constant [12 x i8] c"%.*s%c%.*s\0A\00", align 1
@.str.11 = private unnamed_addr constant [48 x i8] c"%s: %s: line %u: line too long (%ld bytes max)\0A\00", align 1
@.str.12 = private unnamed_addr constant [47 x i8] c"%s: %s: line %u: syntax error (leading space)\0A\00", align 1
@.str.13 = private unnamed_addr constant [36 x i8] c"%s: %s: line %u: no RHS for LHS %s\0A\00", align 1
@.str.14 = private unnamed_addr constant [20 x i8] c"key=`%s', val=`%s'\0A\00", align 1
@.str.15 = private unnamed_addr constant [40 x i8] c"%s: %s: line %u: key %s: put error: %s\0A\00", align 1
@.str.16 = private unnamed_addr constant [40 x i8] c"%s: %s: line %u: key %s: duplicate key\0A\00", align 1
@.str.17 = private unnamed_addr constant [19 x i8] c"%s: close(%s): %s\0A\00", align 1
@.str.18 = private unnamed_addr constant [60 x i8] c"Usage: %s [-C cffile] [-N] [-c cachesize] [-D commentchar]\0A\00", align 1
@.str.19 = private unnamed_addr constant [62 x i8] c"       %*s [-d] [-e] [-f] [-l] [-o] [-r] [-s] [-t delimiter]\0A\00", align 1
@.str.20 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.21 = private unnamed_addr constant [35 x i8] c"       %*s [-u] [-v] type mapname\0A\00", align 1

; Function Attrs: nounwind uwtable
define i32 @main(i32 %argc, i8** %argv) #0 {
entry:
  %retval = alloca i32, align 4
  %argc.addr = alloca i32, align 4
  %argv.addr = alloca i8**, align 8
  %progname = alloca i8*, align 8
  %cfile = alloca i8*, align 8
  %inclnull = alloca i32, align 4
  %notrunc = alloca i32, align 4
  %allowreplace = alloca i32, align 4
  %allowempty = alloca i32, align 4
  %verbose = alloca i32, align 4
  %foldcase = alloca i32, align 4
  %unmake = alloca i32, align 4
  %sep = alloca i8, align 1
  %comment = alloca i8, align 1
  %exitstat = alloca i32, align 4
  %opt = alloca i32, align 4
  %typename = alloca i8*, align 8
  %mapname = alloca i8*, align 8
  %lineno = alloca i32, align 4
  %st = alloca i32, align 4
  %mode = alloca i32, align 4
  %smode = alloca i32, align 4
  %putflags = alloca i32, align 4
  %sff = alloca i64, align 8
  %pw = alloca %struct.passwd*, align 8
  %database = alloca %struct.database_struct*, align 8
  %cursor = alloca %struct.cursor_struct*, align 8
  %db_key = alloca %struct.entry_struct, align 8
  %db_val = alloca %struct.entry_struct, align 8
  %params = alloca %struct.database_params_struct, align 4
  %user_info = alloca %struct.database_user_struct, align 4
  %ibuf = alloca [1024 x i8], align 16
  %cfp = alloca %struct.sm_file*, align 8
  %buf = alloca [2048 x i8], align 16
  %b = alloca i8*, align 8
  %cleanup.dest.slot = alloca i32
  %hint = alloca i8*, align 8
  %p = alloca i8*, align 8
  %__res = alloca i32, align 4
  %tmp = alloca i32, align 4
  store i32 0, i32* %retval
  store i32 %argc, i32* %argc.addr, align 4, !tbaa !1
  store i8** %argv, i8*** %argv.addr, align 8, !tbaa !5
  %0 = bitcast i8** %progname to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #1
  %1 = bitcast i8** %cfile to i8*
  call void @llvm.lifetime.start(i64 8, i8* %1) #1
  %2 = bitcast i32* %inclnull to i8*
  call void @llvm.lifetime.start(i64 4, i8* %2) #1
  store i32 0, i32* %inclnull, align 4, !tbaa !1
  %3 = bitcast i32* %notrunc to i8*
  call void @llvm.lifetime.start(i64 4, i8* %3) #1
  store i32 0, i32* %notrunc, align 4, !tbaa !1
  %4 = bitcast i32* %allowreplace to i8*
  call void @llvm.lifetime.start(i64 4, i8* %4) #1
  store i32 0, i32* %allowreplace, align 4, !tbaa !1
  %5 = bitcast i32* %allowempty to i8*
  call void @llvm.lifetime.start(i64 4, i8* %5) #1
  store i32 0, i32* %allowempty, align 4, !tbaa !1
  %6 = bitcast i32* %verbose to i8*
  call void @llvm.lifetime.start(i64 4, i8* %6) #1
  store i32 0, i32* %verbose, align 4, !tbaa !1
  %7 = bitcast i32* %foldcase to i8*
  call void @llvm.lifetime.start(i64 4, i8* %7) #1
  store i32 1, i32* %foldcase, align 4, !tbaa !1
  %8 = bitcast i32* %unmake to i8*
  call void @llvm.lifetime.start(i64 4, i8* %8) #1
  store i32 0, i32* %unmake, align 4, !tbaa !1
  call void @llvm.lifetime.start(i64 1, i8* %sep) #1
  store i8 0, i8* %sep, align 1, !tbaa !7
  call void @llvm.lifetime.start(i64 1, i8* %comment) #1
  store i8 35, i8* %comment, align 1, !tbaa !7
  %9 = bitcast i32* %exitstat to i8*
  call void @llvm.lifetime.start(i64 4, i8* %9) #1
  %10 = bitcast i32* %opt to i8*
  call void @llvm.lifetime.start(i64 4, i8* %10) #1
  %11 = bitcast i8** %typename to i8*
  call void @llvm.lifetime.start(i64 8, i8* %11) #1
  store i8* null, i8** %typename, align 8, !tbaa !5
  %12 = bitcast i8** %mapname to i8*
  call void @llvm.lifetime.start(i64 8, i8* %12) #1
  store i8* null, i8** %mapname, align 8, !tbaa !5
  %13 = bitcast i32* %lineno to i8*
  call void @llvm.lifetime.start(i64 4, i8* %13) #1
  %14 = bitcast i32* %st to i8*
  call void @llvm.lifetime.start(i64 4, i8* %14) #1
  %15 = bitcast i32* %mode to i8*
  call void @llvm.lifetime.start(i64 4, i8* %15) #1
  %16 = bitcast i32* %smode to i8*
  call void @llvm.lifetime.start(i64 4, i8* %16) #1
  %17 = bitcast i32* %putflags to i8*
  call void @llvm.lifetime.start(i64 4, i8* %17) #1
  store i32 0, i32* %putflags, align 4, !tbaa !1
  %18 = bitcast i64* %sff to i8*
  call void @llvm.lifetime.start(i64 8, i8* %18) #1
  store i64 132, i64* %sff, align 8, !tbaa !8
  %19 = bitcast %struct.passwd** %pw to i8*
  call void @llvm.lifetime.start(i64 8, i8* %19) #1
  %20 = bitcast %struct.database_struct** %database to i8*
  call void @llvm.lifetime.start(i64 8, i8* %20) #1
  %21 = bitcast %struct.cursor_struct** %cursor to i8*
  call void @llvm.lifetime.start(i64 8, i8* %21) #1
  %22 = bitcast %struct.entry_struct* %db_key to i8*
  call void @llvm.lifetime.start(i64 16, i8* %22) #1
  %23 = bitcast %struct.entry_struct* %db_val to i8*
  call void @llvm.lifetime.start(i64 16, i8* %23) #1
  %24 = bitcast %struct.database_params_struct* %params to i8*
  call void @llvm.lifetime.start(i64 12, i8* %24) #1
  %25 = bitcast %struct.database_user_struct* %user_info to i8*
  call void @llvm.lifetime.start(i64 1032, i8* %25) #1
  %26 = bitcast [1024 x i8]* %ibuf to i8*
  call void @llvm.lifetime.start(i64 1024, i8* %26) #1
  %27 = bitcast %struct.sm_file** %cfp to i8*
  call void @llvm.lifetime.start(i64 8, i8* %27) #1
  %28 = bitcast [2048 x i8]* %buf to i8*
  call void @llvm.lifetime.start(i64 2048, i8* %28) #1
  %29 = bitcast %struct.database_params_struct* %params to i8*
  call void @llvm.memset.p0i8.i64(i8* %29, i8 0, i64 12, i32 4, i1 false)
  %smdbp_cache_size = getelementptr inbounds %struct.database_params_struct, %struct.database_params_struct* %params, i32 0, i32 1
  store i32 1048576, i32* %smdbp_cache_size, align 4, !tbaa !10
  %30 = load i8**, i8*** %argv.addr, align 8, !tbaa !5
  %arrayidx = getelementptr inbounds i8*, i8** %30, i64 0
  %31 = load i8*, i8** %arrayidx, align 8, !tbaa !5
  %call = call i8* @strrchr(i8* %31, i32 47) #7
  store i8* %call, i8** %progname, align 8, !tbaa !5
  %32 = load i8*, i8** %progname, align 8, !tbaa !5
  %cmp = icmp ne i8* %32, null
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %33 = load i8*, i8** %progname, align 8, !tbaa !5
  %incdec.ptr = getelementptr inbounds i8, i8* %33, i32 1
  store i8* %incdec.ptr, i8** %progname, align 8, !tbaa !5
  br label %if.end

if.else:                                          ; preds = %entry
  %34 = load i8**, i8*** %argv.addr, align 8, !tbaa !5
  %arrayidx1 = getelementptr inbounds i8*, i8** %34, i64 0
  %35 = load i8*, i8** %arrayidx1, align 8, !tbaa !5
  store i8* %35, i8** %progname, align 8, !tbaa !5
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %call2 = call i8* @getcfname(i32 0, i32 0, i32 1, i8* null)
  store i8* %call2, i8** %cfile, align 8, !tbaa !5
  call void @llvm.memset.p0i8.i64(i8* bitcast ([8 x i32]* @DontBlameSendmail to i8*), i8 0, i64 32, i32 1, i1 false)
  %call3 = call i32 @getuid() #1
  store i32 %call3, i32* @RealUid, align 4, !tbaa !1
  store i32 %call3, i32* @RunAsUid, align 4, !tbaa !1
  %call4 = call i32 @getgid() #1
  store i32 %call4, i32* @RealGid, align 4, !tbaa !1
  store i32 %call4, i32* @RunAsGid, align 4, !tbaa !1
  %36 = load i32, i32* @RealUid, align 4, !tbaa !1
  %call5 = call %struct.passwd* @getpwuid(i32 %36)
  store %struct.passwd* %call5, %struct.passwd** %pw, align 8, !tbaa !5
  %37 = load %struct.passwd*, %struct.passwd** %pw, align 8, !tbaa !5
  %cmp6 = icmp ne %struct.passwd* %37, null
  br i1 %cmp6, label %if.then.7, label %if.else.9

if.then.7:                                        ; preds = %if.end
  %38 = load %struct.passwd*, %struct.passwd** %pw, align 8, !tbaa !5
  %pw_name = getelementptr inbounds %struct.passwd, %struct.passwd* %38, i32 0, i32 0
  %39 = load i8*, i8** %pw_name, align 8, !tbaa !12
  %call8 = call i64 @sm_strlcpy(i8* getelementptr inbounds ([256 x i8], [256 x i8]* @main.rnamebuf, i32 0, i32 0), i8* %39, i64 256)
  br label %if.end.11

if.else.9:                                        ; preds = %if.end
  %40 = load i32, i32* @RealUid, align 4, !tbaa !1
  %call10 = call i32 (i8*, i64, i8*, ...) @sm_snprintf(i8* getelementptr inbounds ([256 x i8], [256 x i8]* @main.rnamebuf, i32 0, i32 0), i64 256, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i32 0, i32 0), i32 %40)
  br label %if.end.11

if.end.11:                                        ; preds = %if.else.9, %if.then.7
  store i8* getelementptr inbounds ([256 x i8], [256 x i8]* @main.rnamebuf, i32 0, i32 0), i8** @RealUserName, align 8, !tbaa !5
  store i8* getelementptr inbounds ([256 x i8], [256 x i8]* @main.rnamebuf, i32 0, i32 0), i8** @RunAsUserName, align 8, !tbaa !5
  %41 = load i32, i32* @RunAsUid, align 4, !tbaa !1
  %smdbu_id = getelementptr inbounds %struct.database_user_struct, %struct.database_user_struct* %user_info, i32 0, i32 0
  store i32 %41, i32* %smdbu_id, align 4, !tbaa !14
  %42 = load i32, i32* @RunAsGid, align 4, !tbaa !1
  %smdbu_group_id = getelementptr inbounds %struct.database_user_struct, %struct.database_user_struct* %user_info, i32 0, i32 1
  store i32 %42, i32* %smdbu_group_id, align 4, !tbaa !16
  %smdbu_name = getelementptr inbounds %struct.database_user_struct, %struct.database_user_struct* %user_info, i32 0, i32 2
  %arraydecay = getelementptr inbounds [1024 x i8], [1024 x i8]* %smdbu_name, i32 0, i32 0
  %43 = load i8*, i8** @RunAsUserName, align 8, !tbaa !5
  %call12 = call i64 @sm_strlcpy(i8* %arraydecay, i8* %43, i64 1024)
  br label %while.cond

while.cond:                                       ; preds = %sw.epilog, %if.end.11
  %44 = load i32, i32* %argc.addr, align 4, !tbaa !1
  %45 = load i8**, i8*** %argv.addr, align 8, !tbaa !5
  %call13 = call i32 @getopt(i32 %44, i8** %45, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.1, i32 0, i32 0)) #1
  store i32 %call13, i32* %opt, align 4, !tbaa !1
  %cmp14 = icmp ne i32 %call13, -1
  br i1 %cmp14, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %46 = load i32, i32* %opt, align 4, !tbaa !1
  switch i32 %46, label %sw.default [
    i32 67, label %sw.bb
    i32 78, label %sw.bb.15
    i32 99, label %sw.bb.16
    i32 100, label %sw.bb.19
    i32 101, label %sw.bb.20
    i32 102, label %sw.bb.21
    i32 68, label %sw.bb.22
    i32 108, label %sw.bb.23
    i32 111, label %sw.bb.24
    i32 114, label %sw.bb.25
    i32 115, label %sw.bb.26
    i32 116, label %sw.bb.30
    i32 117, label %sw.bb.39
    i32 118, label %sw.bb.40
  ]

sw.bb:                                            ; preds = %while.body
  %47 = load i8*, i8** @optarg, align 8, !tbaa !5
  store i8* %47, i8** %cfile, align 8, !tbaa !5
  br label %sw.epilog

sw.bb.15:                                         ; preds = %while.body
  store i32 1, i32* %inclnull, align 4, !tbaa !1
  br label %sw.epilog

sw.bb.16:                                         ; preds = %while.body
  %48 = load i8*, i8** @optarg, align 8, !tbaa !5
  %call17 = call i64 @atol(i8* %48) #7
  %conv = trunc i64 %call17 to i32
  %smdbp_cache_size18 = getelementptr inbounds %struct.database_params_struct, %struct.database_params_struct* %params, i32 0, i32 1
  store i32 %conv, i32* %smdbp_cache_size18, align 4, !tbaa !10
  br label %sw.epilog

sw.bb.19:                                         ; preds = %while.body
  %smdbp_allow_dup = getelementptr inbounds %struct.database_params_struct, %struct.database_params_struct* %params, i32 0, i32 2
  store i32 1, i32* %smdbp_allow_dup, align 4, !tbaa !17
  br label %sw.epilog

sw.bb.20:                                         ; preds = %while.body
  store i32 1, i32* %allowempty, align 4, !tbaa !1
  br label %sw.epilog

sw.bb.21:                                         ; preds = %while.body
  store i32 0, i32* %foldcase, align 4, !tbaa !1
  br label %sw.epilog

sw.bb.22:                                         ; preds = %while.body
  %49 = load i8*, i8** @optarg, align 8, !tbaa !5
  %50 = load i8, i8* %49, align 1, !tbaa !7
  store i8 %50, i8* %comment, align 1, !tbaa !7
  br label %sw.epilog

sw.bb.23:                                         ; preds = %while.body
  call void @smdb_print_available_types()
  call void @exit(i32 0) #8
  unreachable

sw.bb.24:                                         ; preds = %while.body
  store i32 1, i32* %notrunc, align 4, !tbaa !1
  br label %sw.epilog

sw.bb.25:                                         ; preds = %while.body
  store i32 1, i32* %allowreplace, align 4, !tbaa !1
  br label %sw.epilog

sw.bb.26:                                         ; preds = %while.body
  %51 = load i32, i32* getelementptr inbounds ([8 x i32], [8 x i32]* @DontBlameSendmail, i32 0, i64 0), align 4, !tbaa !1
  %or = or i32 %51, 256
  store i32 %or, i32* getelementptr inbounds ([8 x i32], [8 x i32]* @DontBlameSendmail, i32 0, i64 0), align 4, !tbaa !1
  %52 = load i32, i32* getelementptr inbounds ([8 x i32], [8 x i32]* @DontBlameSendmail, i32 0, i64 0), align 4, !tbaa !1
  %or27 = or i32 %52, 131072
  store i32 %or27, i32* getelementptr inbounds ([8 x i32], [8 x i32]* @DontBlameSendmail, i32 0, i64 0), align 4, !tbaa !1
  %53 = load i32, i32* getelementptr inbounds ([8 x i32], [8 x i32]* @DontBlameSendmail, i32 0, i64 0), align 4, !tbaa !1
  %or28 = or i32 %53, 262144
  store i32 %or28, i32* getelementptr inbounds ([8 x i32], [8 x i32]* @DontBlameSendmail, i32 0, i64 0), align 4, !tbaa !1
  %54 = load i32, i32* getelementptr inbounds ([8 x i32], [8 x i32]* @DontBlameSendmail, i32 0, i64 0), align 4, !tbaa !1
  %or29 = or i32 %54, 8192
  store i32 %or29, i32* getelementptr inbounds ([8 x i32], [8 x i32]* @DontBlameSendmail, i32 0, i64 0), align 4, !tbaa !1
  br label %sw.epilog

sw.bb.30:                                         ; preds = %while.body
  %55 = load i8*, i8** @optarg, align 8, !tbaa !5
  %cmp31 = icmp eq i8* %55, null
  br i1 %cmp31, label %if.then.36, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %sw.bb.30
  %56 = load i8*, i8** @optarg, align 8, !tbaa !5
  %57 = load i8, i8* %56, align 1, !tbaa !7
  %conv33 = sext i8 %57 to i32
  %cmp34 = icmp eq i32 %conv33, 0
  br i1 %cmp34, label %if.then.36, label %if.end.38

if.then.36:                                       ; preds = %lor.lhs.false, %sw.bb.30
  %call37 = call i32 (%struct.sm_file*, i32, i8*, ...) @sm_io_fprintf(%struct.sm_file* getelementptr inbounds ([0 x %struct.sm_file], [0 x %struct.sm_file]* @SmIoF, i32 0, i64 2), i32 -2, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.2, i32 0, i32 0))
  br label %sw.epilog

if.end.38:                                        ; preds = %lor.lhs.false
  %58 = load i8*, i8** @optarg, align 8, !tbaa !5
  %59 = load i8, i8* %58, align 1, !tbaa !7
  store i8 %59, i8* %sep, align 1, !tbaa !7
  br label %sw.epilog

sw.bb.39:                                         ; preds = %while.body
  store i32 1, i32* %unmake, align 4, !tbaa !1
  br label %sw.epilog

sw.bb.40:                                         ; preds = %while.body
  store i32 1, i32* %verbose, align 4, !tbaa !1
  br label %sw.epilog

sw.default:                                       ; preds = %while.body
  %60 = load i8*, i8** %progname, align 8, !tbaa !5
  call void @usage(i8* %60)
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.default, %sw.bb.40, %sw.bb.39, %if.end.38, %if.then.36, %sw.bb.26, %sw.bb.25, %sw.bb.24, %sw.bb.22, %sw.bb.21, %sw.bb.20, %sw.bb.19, %sw.bb.16, %sw.bb.15, %sw.bb
  br label %while.cond

while.end:                                        ; preds = %while.cond
  %61 = load i32, i32* getelementptr inbounds ([8 x i32], [8 x i32]* @DontBlameSendmail, i32 0, i64 0), align 4, !tbaa !1
  %and = and i32 %61, 262144
  %tobool = icmp ne i32 %and, 0
  br i1 %tobool, label %if.end.43, label %if.then.41

if.then.41:                                       ; preds = %while.end
  %62 = load i64, i64* %sff, align 8, !tbaa !8
  %or42 = or i64 %62, 2
  store i64 %or42, i64* %sff, align 8, !tbaa !8
  br label %if.end.43

if.end.43:                                        ; preds = %if.then.41, %while.end
  %63 = load i32, i32* getelementptr inbounds ([8 x i32], [8 x i32]* @DontBlameSendmail, i32 0, i64 0), align 4, !tbaa !1
  %and44 = and i32 %63, 131072
  %tobool45 = icmp ne i32 %and44, 0
  br i1 %tobool45, label %if.end.48, label %if.then.46

if.then.46:                                       ; preds = %if.end.43
  %64 = load i64, i64* %sff, align 8, !tbaa !8
  %or47 = or i64 %64, 512
  store i64 %or47, i64* %sff, align 8, !tbaa !8
  br label %if.end.48

if.end.48:                                        ; preds = %if.then.46, %if.end.43
  %65 = load i32, i32* getelementptr inbounds ([8 x i32], [8 x i32]* @DontBlameSendmail, i32 0, i64 0), align 4, !tbaa !1
  %and49 = and i32 %65, 8192
  %tobool50 = icmp ne i32 %and49, 0
  br i1 %tobool50, label %if.end.53, label %if.then.51

if.then.51:                                       ; preds = %if.end.48
  %66 = load i64, i64* %sff, align 8, !tbaa !8
  %or52 = or i64 %66, 1024
  store i64 %or52, i64* %sff, align 8, !tbaa !8
  br label %if.end.53

if.end.53:                                        ; preds = %if.then.51, %if.end.48
  %67 = load i32, i32* @optind, align 4, !tbaa !1
  %68 = load i32, i32* %argc.addr, align 4, !tbaa !1
  %sub = sub nsw i32 %68, %67
  store i32 %sub, i32* %argc.addr, align 4, !tbaa !1
  %69 = load i32, i32* @optind, align 4, !tbaa !1
  %70 = load i8**, i8*** %argv.addr, align 8, !tbaa !5
  %idx.ext = sext i32 %69 to i64
  %add.ptr = getelementptr inbounds i8*, i8** %70, i64 %idx.ext
  store i8** %add.ptr, i8*** %argv.addr, align 8, !tbaa !5
  %71 = load i32, i32* %argc.addr, align 4, !tbaa !1
  %cmp54 = icmp ne i32 %71, 2
  br i1 %cmp54, label %if.then.56, label %if.else.57

if.then.56:                                       ; preds = %if.end.53
  %72 = load i8*, i8** %progname, align 8, !tbaa !5
  call void @usage(i8* %72)
  br label %if.end.60

if.else.57:                                       ; preds = %if.end.53
  %73 = load i8**, i8*** %argv.addr, align 8, !tbaa !5
  %arrayidx58 = getelementptr inbounds i8*, i8** %73, i64 0
  %74 = load i8*, i8** %arrayidx58, align 8, !tbaa !5
  store i8* %74, i8** %typename, align 8, !tbaa !5
  %75 = load i8**, i8*** %argv.addr, align 8, !tbaa !5
  %arrayidx59 = getelementptr inbounds i8*, i8** %75, i64 1
  %76 = load i8*, i8** %arrayidx59, align 8, !tbaa !5
  store i8* %76, i8** %mapname, align 8, !tbaa !5
  br label %if.end.60

if.end.60:                                        ; preds = %if.else.57, %if.then.56
  %77 = load i8*, i8** %cfile, align 8, !tbaa !5
  %call61 = call %struct.sm_file* @sm_io_open(%struct.sm_file* @SmFtStdio_def, i32 -2, i8* %77, i32 2, i8* null)
  store %struct.sm_file* %call61, %struct.sm_file** %cfp, align 8, !tbaa !5
  %cmp62 = icmp eq %struct.sm_file* %call61, null
  br i1 %cmp62, label %if.then.64, label %if.end.68

if.then.64:                                       ; preds = %if.end.60
  %78 = load i8*, i8** %cfile, align 8, !tbaa !5
  %call65 = call i32* @__errno_location() #9
  %79 = load i32, i32* %call65, align 4, !tbaa !1
  %call66 = call i8* @sm_errstring(i32 %79)
  %call67 = call i32 (%struct.sm_file*, i32, i8*, ...) @sm_io_fprintf(%struct.sm_file* getelementptr inbounds ([0 x %struct.sm_file], [0 x %struct.sm_file]* @SmIoF, i32 0, i64 2), i32 -2, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.3, i32 0, i32 0), i8* %78, i8* %call66)
  call void @exit(i32 66) #8
  unreachable

if.end.68:                                        ; preds = %if.end.60
  br label %while.cond.69

while.cond.69:                                    ; preds = %cleanup.cont, %cleanup, %if.end.68
  %80 = load %struct.sm_file*, %struct.sm_file** %cfp, align 8, !tbaa !5
  %arraydecay70 = getelementptr inbounds [2048 x i8], [2048 x i8]* %buf, i32 0, i32 0
  %call71 = call i32 @sm_io_fgets(%struct.sm_file* %80, i32 -2, i8* %arraydecay70, i32 2048)
  %cmp72 = icmp sge i32 %call71, 0
  br i1 %cmp72, label %while.body.74, label %while.end.148

while.body.74:                                    ; preds = %while.cond.69
  %81 = bitcast i8** %b to i8*
  call void @llvm.lifetime.start(i64 8, i8* %81) #1
  %arraydecay75 = getelementptr inbounds [2048 x i8], [2048 x i8]* %buf, i32 0, i32 0
  %call76 = call i8* @strchr(i8* %arraydecay75, i32 10) #1
  store i8* %call76, i8** %b, align 8, !tbaa !5
  %cmp77 = icmp ne i8* %call76, null
  br i1 %cmp77, label %if.then.79, label %if.end.80

if.then.79:                                       ; preds = %while.body.74
  %82 = load i8*, i8** %b, align 8, !tbaa !5
  store i8 0, i8* %82, align 1, !tbaa !7
  br label %if.end.80

if.end.80:                                        ; preds = %if.then.79, %while.body.74
  %arraydecay81 = getelementptr inbounds [2048 x i8], [2048 x i8]* %buf, i32 0, i32 0
  store i8* %arraydecay81, i8** %b, align 8, !tbaa !5
  %83 = load i8*, i8** %b, align 8, !tbaa !5
  %incdec.ptr82 = getelementptr inbounds i8, i8* %83, i32 1
  store i8* %incdec.ptr82, i8** %b, align 8, !tbaa !5
  %84 = load i8, i8* %83, align 1, !tbaa !7
  %conv83 = sext i8 %84 to i32
  switch i32 %conv83, label %sw.default.146 [
    i32 79, label %sw.bb.84
  ]

sw.bb.84:                                         ; preds = %if.end.80
  %85 = load i8*, i8** %b, align 8, !tbaa !5
  %call85 = call i32 @strncasecmp(i8* %85, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.4, i32 0, i32 0), i64 12) #7
  %cmp86 = icmp eq i32 %call85, 0
  br i1 %cmp86, label %land.lhs.true, label %if.end.145

land.lhs.true:                                    ; preds = %sw.bb.84
  %86 = load i8*, i8** %b, align 8, !tbaa !5
  %arrayidx88 = getelementptr inbounds i8, i8* %86, i64 12
  %87 = load i8, i8* %arrayidx88, align 1, !tbaa !7
  %conv89 = sext i8 %87 to i32
  %and90 = and i32 %conv89, -128
  %cmp91 = icmp eq i32 %and90, 0
  br i1 %cmp91, label %land.lhs.true.93, label %if.then.101

land.lhs.true.93:                                 ; preds = %land.lhs.true
  %88 = load i8*, i8** %b, align 8, !tbaa !5
  %arrayidx94 = getelementptr inbounds i8, i8* %88, i64 12
  %89 = load i8, i8* %arrayidx94, align 1, !tbaa !7
  %conv95 = sext i8 %89 to i32
  %idxprom = sext i32 %conv95 to i64
  %call96 = call i16** @__ctype_b_loc() #9
  %90 = load i16*, i16** %call96, align 8, !tbaa !5
  %arrayidx97 = getelementptr inbounds i16, i16* %90, i64 %idxprom
  %91 = load i16, i16* %arrayidx97, align 2, !tbaa !18
  %conv98 = zext i16 %91 to i32
  %and99 = and i32 %conv98, 8
  %tobool100 = icmp ne i32 %and99, 0
  br i1 %tobool100, label %if.end.145, label %if.then.101

if.then.101:                                      ; preds = %land.lhs.true.93, %land.lhs.true
  %92 = load i8*, i8** %b, align 8, !tbaa !5
  %call102 = call i8* @strchr(i8* %92, i32 61) #1
  store i8* %call102, i8** %b, align 8, !tbaa !5
  %93 = load i8*, i8** %b, align 8, !tbaa !5
  %cmp103 = icmp eq i8* %93, null
  br i1 %cmp103, label %if.then.105, label %if.end.106

if.then.105:                                      ; preds = %if.then.101
  store i32 5, i32* %cleanup.dest.slot
  br label %cleanup

if.end.106:                                       ; preds = %if.then.101
  br label %while.cond.107

while.cond.107:                                   ; preds = %while.body.120, %if.end.106
  %94 = load i8*, i8** %b, align 8, !tbaa !5
  %incdec.ptr108 = getelementptr inbounds i8, i8* %94, i32 1
  store i8* %incdec.ptr108, i8** %b, align 8, !tbaa !5
  %95 = load i8, i8* %incdec.ptr108, align 1, !tbaa !7
  %conv109 = sext i8 %95 to i32
  %and110 = and i32 %conv109, -128
  %cmp111 = icmp eq i32 %and110, 0
  br i1 %cmp111, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %while.cond.107
  %96 = load i8*, i8** %b, align 8, !tbaa !5
  %97 = load i8, i8* %96, align 1, !tbaa !7
  %conv113 = sext i8 %97 to i32
  %idxprom114 = sext i32 %conv113 to i64
  %call115 = call i16** @__ctype_b_loc() #9
  %98 = load i16*, i16** %call115, align 8, !tbaa !5
  %arrayidx116 = getelementptr inbounds i16, i16* %98, i64 %idxprom114
  %99 = load i16, i16* %arrayidx116, align 2, !tbaa !18
  %conv117 = zext i16 %99 to i32
  %and118 = and i32 %conv117, 8192
  %tobool119 = icmp ne i32 %and118, 0
  br label %land.end

land.end:                                         ; preds = %land.rhs, %while.cond.107
  %100 = phi i1 [ false, %while.cond.107 ], [ %tobool119, %land.rhs ]
  br i1 %100, label %while.body.120, label %while.end.121

while.body.120:                                   ; preds = %land.end
  br label %while.cond.107

while.end.121:                                    ; preds = %land.end
  %101 = load i8*, i8** %b, align 8, !tbaa !5
  %102 = load i8, i8* %101, align 1, !tbaa !7
  %conv122 = sext i8 %102 to i32
  %and123 = and i32 %conv122, -128
  %cmp124 = icmp eq i32 %and123, 0
  br i1 %cmp124, label %land.lhs.true.126, label %if.else.136

land.lhs.true.126:                                ; preds = %while.end.121
  %103 = load i8*, i8** %b, align 8, !tbaa !5
  %104 = load i8, i8* %103, align 1, !tbaa !7
  %conv127 = sext i8 %104 to i32
  %idxprom128 = sext i32 %conv127 to i64
  %call129 = call i16** @__ctype_b_loc() #9
  %105 = load i16*, i16** %call129, align 8, !tbaa !5
  %arrayidx130 = getelementptr inbounds i16, i16* %105, i64 %idxprom128
  %106 = load i16, i16* %arrayidx130, align 2, !tbaa !18
  %conv131 = zext i16 %106 to i32
  %and132 = and i32 %conv131, 2048
  %tobool133 = icmp ne i32 %and132, 0
  br i1 %tobool133, label %if.then.134, label %if.else.136

if.then.134:                                      ; preds = %land.lhs.true.126
  %107 = load i8*, i8** %b, align 8, !tbaa !5
  %call135 = call i32 @atoi(i8* %107) #7
  store i32 %call135, i32* @TrustedUid, align 4, !tbaa !1
  br label %if.end.144

if.else.136:                                      ; preds = %land.lhs.true.126, %while.end.121
  store i32 0, i32* @TrustedUid, align 4, !tbaa !1
  %108 = load i8*, i8** %b, align 8, !tbaa !5
  %call137 = call %struct.passwd* @getpwnam(i8* %108)
  store %struct.passwd* %call137, %struct.passwd** %pw, align 8, !tbaa !5
  %109 = load %struct.passwd*, %struct.passwd** %pw, align 8, !tbaa !5
  %cmp138 = icmp eq %struct.passwd* %109, null
  br i1 %cmp138, label %if.then.140, label %if.else.142

if.then.140:                                      ; preds = %if.else.136
  %110 = load i8*, i8** %b, align 8, !tbaa !5
  %call141 = call i32 (%struct.sm_file*, i32, i8*, ...) @sm_io_fprintf(%struct.sm_file* getelementptr inbounds ([0 x %struct.sm_file], [0 x %struct.sm_file]* @SmIoF, i32 0, i64 2), i32 -2, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.5, i32 0, i32 0), i8* %110)
  br label %if.end.143

if.else.142:                                      ; preds = %if.else.136
  %111 = load %struct.passwd*, %struct.passwd** %pw, align 8, !tbaa !5
  %pw_uid = getelementptr inbounds %struct.passwd, %struct.passwd* %111, i32 0, i32 2
  %112 = load i32, i32* %pw_uid, align 4, !tbaa !20
  store i32 %112, i32* @TrustedUid, align 4, !tbaa !1
  br label %if.end.143

if.end.143:                                       ; preds = %if.else.142, %if.then.140
  br label %if.end.144

if.end.144:                                       ; preds = %if.end.143, %if.then.134
  br label %sw.epilog.147

if.end.145:                                       ; preds = %land.lhs.true.93, %sw.bb.84
  br label %sw.default.146

sw.default.146:                                   ; preds = %if.end.80, %if.end.145
  store i32 5, i32* %cleanup.dest.slot
  br label %cleanup

sw.epilog.147:                                    ; preds = %if.end.144
  store i32 0, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %sw.epilog.147, %sw.default.146, %if.then.105
  %113 = bitcast i8** %b to i8*
  call void @llvm.lifetime.end(i64 8, i8* %113) #1
  %cleanup.dest = load i32, i32* %cleanup.dest.slot
  switch i32 %cleanup.dest, label %unreachable [
    i32 0, label %cleanup.cont
    i32 5, label %while.cond.69
  ]

cleanup.cont:                                     ; preds = %cleanup
  br label %while.cond.69

while.end.148:                                    ; preds = %while.cond.69
  %114 = load %struct.sm_file*, %struct.sm_file** %cfp, align 8, !tbaa !5
  %call149 = call i32 @sm_io_close(%struct.sm_file* %114, i32 -2)
  %smdbp_allow_dup150 = getelementptr inbounds %struct.database_params_struct, %struct.database_params_struct* %params, i32 0, i32 2
  %115 = load i32, i32* %smdbp_allow_dup150, align 4, !tbaa !17
  %tobool151 = icmp ne i32 %115, 0
  br i1 %tobool151, label %if.end.155, label %land.lhs.true.152

land.lhs.true.152:                                ; preds = %while.end.148
  %116 = load i32, i32* %allowreplace, align 4, !tbaa !1
  %tobool153 = icmp ne i32 %116, 0
  br i1 %tobool153, label %if.end.155, label %if.then.154

if.then.154:                                      ; preds = %land.lhs.true.152
  store i32 1, i32* %putflags, align 4, !tbaa !1
  br label %if.end.155

if.end.155:                                       ; preds = %if.then.154, %land.lhs.true.152, %while.end.148
  %117 = load i32, i32* %unmake, align 4, !tbaa !1
  %tobool156 = icmp ne i32 %117, 0
  br i1 %tobool156, label %if.then.157, label %if.else.158

if.then.157:                                      ; preds = %if.end.155
  store i32 0, i32* %mode, align 4, !tbaa !1
  store i32 256, i32* %smode, align 4, !tbaa !1
  br label %if.end.164

if.else.158:                                      ; preds = %if.end.155
  store i32 2, i32* %mode, align 4, !tbaa !1
  %118 = load i32, i32* %notrunc, align 4, !tbaa !1
  %tobool159 = icmp ne i32 %118, 0
  br i1 %tobool159, label %if.end.163, label %if.then.160

if.then.160:                                      ; preds = %if.else.158
  %119 = load i32, i32* %mode, align 4, !tbaa !1
  %or161 = or i32 %119, 576
  store i32 %or161, i32* %mode, align 4, !tbaa !1
  %120 = load i64, i64* %sff, align 8, !tbaa !8
  %or162 = or i64 %120, 64
  store i64 %or162, i64* %sff, align 8, !tbaa !8
  br label %if.end.163

if.end.163:                                       ; preds = %if.then.160, %if.else.158
  store i32 128, i32* %smode, align 4, !tbaa !1
  br label %if.end.164

if.end.164:                                       ; preds = %if.end.163, %if.then.157
  %smdbp_num_elements = getelementptr inbounds %struct.database_params_struct, %struct.database_params_struct* %params, i32 0, i32 0
  store i32 4096, i32* %smdbp_num_elements, align 4, !tbaa !21
  %121 = load i8*, i8** %mapname, align 8, !tbaa !5
  %122 = load i32, i32* %mode, align 4, !tbaa !1
  %123 = load i32, i32* %smode, align 4, !tbaa !1
  %124 = load i64, i64* %sff, align 8, !tbaa !8
  %125 = load i8*, i8** %typename, align 8, !tbaa !5
  %call165 = call i32 @smdb_open_database(%struct.database_struct** %database, i8* %121, i32 %122, i32 %123, i64 %124, i8* %125, %struct.database_user_struct* %user_info, %struct.database_params_struct* %params)
  %call166 = call i32* @__errno_location() #9
  store i32 %call165, i32* %call166, align 4, !tbaa !1
  %call167 = call i32* @__errno_location() #9
  %126 = load i32, i32* %call167, align 4, !tbaa !1
  %cmp168 = icmp ne i32 %126, 0
  br i1 %cmp168, label %if.then.170, label %if.end.185

if.then.170:                                      ; preds = %if.end.164
  %127 = bitcast i8** %hint to i8*
  call void @llvm.lifetime.start(i64 8, i8* %127) #1
  %call171 = call i32* @__errno_location() #9
  %128 = load i32, i32* %call171, align 4, !tbaa !1
  %cmp172 = icmp eq i32 %128, 304
  br i1 %cmp172, label %land.lhs.true.174, label %if.else.180

land.lhs.true.174:                                ; preds = %if.then.170
  %129 = load i8*, i8** %typename, align 8, !tbaa !5
  %call175 = call i8* @smdb_db_definition(i8* %129)
  store i8* %call175, i8** %hint, align 8, !tbaa !5
  %cmp176 = icmp ne i8* %call175, null
  br i1 %cmp176, label %if.then.178, label %if.else.180

if.then.178:                                      ; preds = %land.lhs.true.174
  %130 = load i8*, i8** %progname, align 8, !tbaa !5
  %131 = load i8*, i8** %hint, align 8, !tbaa !5
  %132 = load i8*, i8** %typename, align 8, !tbaa !5
  %call179 = call i32 (%struct.sm_file*, i32, i8*, ...) @sm_io_fprintf(%struct.sm_file* getelementptr inbounds ([0 x %struct.sm_file], [0 x %struct.sm_file]* @SmIoF, i32 0, i64 2), i32 -2, i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.6, i32 0, i32 0), i8* %130, i8* %131, i8* %132)
  br label %if.end.184

if.else.180:                                      ; preds = %land.lhs.true.174, %if.then.170
  %133 = load i8*, i8** %progname, align 8, !tbaa !5
  %134 = load i8*, i8** %typename, align 8, !tbaa !5
  %135 = load i8*, i8** %mapname, align 8, !tbaa !5
  %call181 = call i32* @__errno_location() #9
  %136 = load i32, i32* %call181, align 4, !tbaa !1
  %call182 = call i8* @sm_errstring(i32 %136)
  %call183 = call i32 (%struct.sm_file*, i32, i8*, ...) @sm_io_fprintf(%struct.sm_file* getelementptr inbounds ([0 x %struct.sm_file], [0 x %struct.sm_file]* @SmIoF, i32 0, i64 2), i32 -2, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.7, i32 0, i32 0), i8* %133, i8* %134, i8* %135, i8* %call182)
  br label %if.end.184

if.end.184:                                       ; preds = %if.else.180, %if.then.178
  call void @exit(i32 73) #8
  unreachable

if.end.185:                                       ; preds = %if.end.164
  %137 = load %struct.database_struct*, %struct.database_struct** %database, align 8, !tbaa !5
  %smdb_sync = getelementptr inbounds %struct.database_struct, %struct.database_struct* %137, i32 0, i32 5
  %138 = load i32 (%struct.database_struct*, i32)*, i32 (%struct.database_struct*, i32)** %smdb_sync, align 8, !tbaa !22
  %139 = load %struct.database_struct*, %struct.database_struct** %database, align 8, !tbaa !5
  %call186 = call i32 %138(%struct.database_struct* %139, i32 0)
  %140 = load i32, i32* %unmake, align 4, !tbaa !1
  %tobool187 = icmp ne i32 %140, 0
  br i1 %tobool187, label %if.end.206, label %land.lhs.true.188

land.lhs.true.188:                                ; preds = %if.end.185
  %call189 = call i32 @geteuid() #1
  %cmp190 = icmp eq i32 %call189, 0
  br i1 %cmp190, label %land.lhs.true.192, label %if.end.206

land.lhs.true.192:                                ; preds = %land.lhs.true.188
  %141 = load i32, i32* @TrustedUid, align 4, !tbaa !1
  %cmp193 = icmp ne i32 %141, 0
  br i1 %cmp193, label %if.then.195, label %if.end.206

if.then.195:                                      ; preds = %land.lhs.true.192
  %142 = load %struct.database_struct*, %struct.database_struct** %database, align 8, !tbaa !5
  %smdb_set_owner = getelementptr inbounds %struct.database_struct, %struct.database_struct* %142, i32 0, i32 6
  %143 = load i32 (%struct.database_struct*, i32, i32)*, i32 (%struct.database_struct*, i32, i32)** %smdb_set_owner, align 8, !tbaa !24
  %144 = load %struct.database_struct*, %struct.database_struct** %database, align 8, !tbaa !5
  %145 = load i32, i32* @TrustedUid, align 4, !tbaa !1
  %call196 = call i32 %143(%struct.database_struct* %144, i32 %145, i32 -1)
  %call197 = call i32* @__errno_location() #9
  store i32 %call196, i32* %call197, align 4, !tbaa !1
  %call198 = call i32* @__errno_location() #9
  %146 = load i32, i32* %call198, align 4, !tbaa !1
  %cmp199 = icmp ne i32 %146, 0
  br i1 %cmp199, label %if.then.201, label %if.end.205

if.then.201:                                      ; preds = %if.then.195
  %147 = load i8*, i8** %mapname, align 8, !tbaa !5
  %call202 = call i32* @__errno_location() #9
  %148 = load i32, i32* %call202, align 4, !tbaa !1
  %call203 = call i8* @sm_errstring(i32 %148)
  %call204 = call i32 (%struct.sm_file*, i32, i8*, ...) @sm_io_fprintf(%struct.sm_file* getelementptr inbounds ([0 x %struct.sm_file], [0 x %struct.sm_file]* @SmIoF, i32 0, i64 2), i32 -2, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.8, i32 0, i32 0), i8* %147, i8* %call203)
  br label %if.end.205

if.end.205:                                       ; preds = %if.then.201, %if.then.195
  br label %if.end.206

if.end.206:                                       ; preds = %if.end.205, %land.lhs.true.192, %land.lhs.true.188, %if.end.185
  store i32 0, i32* %exitstat, align 4, !tbaa !1
  %149 = load i32, i32* %unmake, align 4, !tbaa !1
  %tobool207 = icmp ne i32 %149, 0
  br i1 %tobool207, label %if.then.208, label %if.else.234

if.then.208:                                      ; preds = %if.end.206
  %150 = load %struct.database_struct*, %struct.database_struct** %database, align 8, !tbaa !5
  %smdb_cursor = getelementptr inbounds %struct.database_struct, %struct.database_struct* %150, i32 0, i32 7
  %151 = load i32 (%struct.database_struct*, %struct.cursor_struct**, i32)*, i32 (%struct.database_struct*, %struct.cursor_struct**, i32)** %smdb_cursor, align 8, !tbaa !25
  %152 = load %struct.database_struct*, %struct.database_struct** %database, align 8, !tbaa !5
  %call209 = call i32 %151(%struct.database_struct* %152, %struct.cursor_struct** %cursor, i32 0)
  %call210 = call i32* @__errno_location() #9
  store i32 %call209, i32* %call210, align 4, !tbaa !1
  %call211 = call i32* @__errno_location() #9
  %153 = load i32, i32* %call211, align 4, !tbaa !1
  %cmp212 = icmp ne i32 %153, 0
  br i1 %cmp212, label %if.then.214, label %if.end.216

if.then.214:                                      ; preds = %if.then.208
  %154 = load i8*, i8** %progname, align 8, !tbaa !5
  %155 = load i8*, i8** %typename, align 8, !tbaa !5
  %156 = load i8*, i8** %mapname, align 8, !tbaa !5
  %call215 = call i32 (%struct.sm_file*, i32, i8*, ...) @sm_io_fprintf(%struct.sm_file* getelementptr inbounds ([0 x %struct.sm_file], [0 x %struct.sm_file]* @SmIoF, i32 0, i64 2), i32 -2, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.9, i32 0, i32 0), i8* %154, i8* %155, i8* %156)
  call void @exit(i32 70) #8
  unreachable

if.end.216:                                       ; preds = %if.then.208
  %157 = bitcast %struct.entry_struct* %db_key to i8*
  call void @llvm.memset.p0i8.i64(i8* %157, i8 0, i64 16, i32 8, i1 false)
  %158 = bitcast %struct.entry_struct* %db_val to i8*
  call void @llvm.memset.p0i8.i64(i8* %158, i8 0, i64 16, i32 8, i1 false)
  store i32 0, i32* %lineno, align 4, !tbaa !1
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end.216
  %159 = load %struct.cursor_struct*, %struct.cursor_struct** %cursor, align 8, !tbaa !5
  %smdbc_get = getelementptr inbounds %struct.cursor_struct, %struct.cursor_struct* %159, i32 0, i32 2
  %160 = load i32 (%struct.cursor_struct*, %struct.entry_struct*, %struct.entry_struct*, i32)*, i32 (%struct.cursor_struct*, %struct.entry_struct*, %struct.entry_struct*, i32)** %smdbc_get, align 8, !tbaa !26
  %161 = load %struct.cursor_struct*, %struct.cursor_struct** %cursor, align 8, !tbaa !5
  %call217 = call i32 %160(%struct.cursor_struct* %161, %struct.entry_struct* %db_key, %struct.entry_struct* %db_val, i32 2)
  %call218 = call i32* @__errno_location() #9
  store i32 %call217, i32* %call218, align 4, !tbaa !1
  %call219 = call i32* @__errno_location() #9
  %162 = load i32, i32* %call219, align 4, !tbaa !1
  %cmp220 = icmp ne i32 %162, 0
  br i1 %cmp220, label %if.then.222, label %if.end.223

if.then.222:                                      ; preds = %for.cond
  br label %for.end

if.end.223:                                       ; preds = %for.cond
  %size = getelementptr inbounds %struct.entry_struct, %struct.entry_struct* %db_key, i32 0, i32 1
  %163 = load i64, i64* %size, align 8, !tbaa !28
  %conv224 = trunc i64 %163 to i32
  %data = getelementptr inbounds %struct.entry_struct, %struct.entry_struct* %db_key, i32 0, i32 0
  %164 = load i8*, i8** %data, align 8, !tbaa !30
  %165 = load i8, i8* %sep, align 1, !tbaa !7
  %conv225 = sext i8 %165 to i32
  %cmp226 = icmp ne i32 %conv225, 0
  br i1 %cmp226, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.end.223
  %166 = load i8, i8* %sep, align 1, !tbaa !7
  %conv228 = sext i8 %166 to i32
  br label %cond.end

cond.false:                                       ; preds = %if.end.223
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %conv228, %cond.true ], [ 9, %cond.false ]
  %size229 = getelementptr inbounds %struct.entry_struct, %struct.entry_struct* %db_val, i32 0, i32 1
  %167 = load i64, i64* %size229, align 8, !tbaa !28
  %conv230 = trunc i64 %167 to i32
  %data231 = getelementptr inbounds %struct.entry_struct, %struct.entry_struct* %db_val, i32 0, i32 0
  %168 = load i8*, i8** %data231, align 8, !tbaa !30
  %call232 = call i32 (%struct.sm_file*, i32, i8*, ...) @sm_io_fprintf(%struct.sm_file* getelementptr inbounds ([0 x %struct.sm_file], [0 x %struct.sm_file]* @SmIoF, i32 0, i64 1), i32 -2, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.10, i32 0, i32 0), i32 %conv224, i8* %164, i32 %cond, i32 %conv230, i8* %168)
  br label %for.inc

for.inc:                                          ; preds = %cond.end
  %169 = load i32, i32* %lineno, align 4, !tbaa !1
  %inc = add i32 %169, 1
  store i32 %inc, i32* %lineno, align 4, !tbaa !1
  br label %for.cond

for.end:                                          ; preds = %if.then.222
  %170 = load %struct.cursor_struct*, %struct.cursor_struct** %cursor, align 8, !tbaa !5
  %smdbc_close = getelementptr inbounds %struct.cursor_struct, %struct.cursor_struct* %170, i32 0, i32 0
  %171 = load i32 (%struct.cursor_struct*)*, i32 (%struct.cursor_struct*)** %smdbc_close, align 8, !tbaa !31
  %172 = load %struct.cursor_struct*, %struct.cursor_struct** %cursor, align 8, !tbaa !5
  %call233 = call i32 %171(%struct.cursor_struct* %172)
  br label %if.end.445

if.else.234:                                      ; preds = %if.end.206
  store i32 0, i32* %lineno, align 4, !tbaa !1
  br label %while.cond.235

while.cond.235:                                   ; preds = %cleanup.cont.443, %cleanup.441, %if.else.234
  %arraydecay236 = getelementptr inbounds [1024 x i8], [1024 x i8]* %ibuf, i32 0, i32 0
  %call237 = call i32 @sm_io_fgets(%struct.sm_file* getelementptr inbounds ([0 x %struct.sm_file], [0 x %struct.sm_file]* @SmIoF, i32 0, i64 0), i32 -2, i8* %arraydecay236, i32 1024)
  %cmp238 = icmp sge i32 %call237, 0
  br i1 %cmp238, label %while.body.240, label %while.end.444

while.body.240:                                   ; preds = %while.cond.235
  %173 = bitcast i8** %p to i8*
  call void @llvm.lifetime.start(i64 8, i8* %173) #1
  %174 = load i32, i32* %lineno, align 4, !tbaa !1
  %inc241 = add i32 %174, 1
  store i32 %inc241, i32* %lineno, align 4, !tbaa !1
  %arraydecay242 = getelementptr inbounds [1024 x i8], [1024 x i8]* %ibuf, i32 0, i32 0
  %call243 = call i8* @strchr(i8* %arraydecay242, i32 10) #1
  store i8* %call243, i8** %p, align 8, !tbaa !5
  %175 = load i8*, i8** %p, align 8, !tbaa !5
  %cmp244 = icmp ne i8* %175, null
  br i1 %cmp244, label %if.then.246, label %if.else.247

if.then.246:                                      ; preds = %while.body.240
  %176 = load i8*, i8** %p, align 8, !tbaa !5
  store i8 0, i8* %176, align 1, !tbaa !7
  br label %if.end.254

if.else.247:                                      ; preds = %while.body.240
  %177 = load i64, i64* getelementptr inbounds ([0 x %struct.sm_file], [0 x %struct.sm_file]* @SmIoF, i32 0, i64 0, i32 4), align 8, !tbaa !32
  %and248 = and i64 %177, 128
  %cmp249 = icmp ne i64 %and248, 0
  br i1 %cmp249, label %if.end.253, label %if.then.251

if.then.251:                                      ; preds = %if.else.247
  %178 = load i8*, i8** %progname, align 8, !tbaa !5
  %179 = load i8*, i8** %mapname, align 8, !tbaa !5
  %180 = load i32, i32* %lineno, align 4, !tbaa !1
  %call252 = call i32 (%struct.sm_file*, i32, i8*, ...) @sm_io_fprintf(%struct.sm_file* getelementptr inbounds ([0 x %struct.sm_file], [0 x %struct.sm_file]* @SmIoF, i32 0, i64 2), i32 -2, i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.11, i32 0, i32 0), i8* %178, i8* %179, i32 %180, i64 1024)
  store i32 65, i32* %exitstat, align 4, !tbaa !1
  store i32 13, i32* %cleanup.dest.slot
  br label %cleanup.441

if.end.253:                                       ; preds = %if.else.247
  br label %if.end.254

if.end.254:                                       ; preds = %if.end.253, %if.then.246
  %arrayidx255 = getelementptr inbounds [1024 x i8], [1024 x i8]* %ibuf, i32 0, i64 0
  %181 = load i8, i8* %arrayidx255, align 1, !tbaa !7
  %conv256 = sext i8 %181 to i32
  %cmp257 = icmp eq i32 %conv256, 0
  br i1 %cmp257, label %if.then.265, label %lor.lhs.false.259

lor.lhs.false.259:                                ; preds = %if.end.254
  %arrayidx260 = getelementptr inbounds [1024 x i8], [1024 x i8]* %ibuf, i32 0, i64 0
  %182 = load i8, i8* %arrayidx260, align 1, !tbaa !7
  %conv261 = sext i8 %182 to i32
  %183 = load i8, i8* %comment, align 1, !tbaa !7
  %conv262 = sext i8 %183 to i32
  %cmp263 = icmp eq i32 %conv261, %conv262
  br i1 %cmp263, label %if.then.265, label %if.end.266

if.then.265:                                      ; preds = %lor.lhs.false.259, %if.end.254
  store i32 13, i32* %cleanup.dest.slot
  br label %cleanup.441

if.end.266:                                       ; preds = %lor.lhs.false.259
  %184 = load i8, i8* %sep, align 1, !tbaa !7
  %conv267 = sext i8 %184 to i32
  %cmp268 = icmp eq i32 %conv267, 0
  br i1 %cmp268, label %land.lhs.true.270, label %if.end.287

land.lhs.true.270:                                ; preds = %if.end.266
  %arrayidx271 = getelementptr inbounds [1024 x i8], [1024 x i8]* %ibuf, i32 0, i64 0
  %185 = load i8, i8* %arrayidx271, align 1, !tbaa !7
  %conv272 = sext i8 %185 to i32
  %and273 = and i32 %conv272, -128
  %cmp274 = icmp eq i32 %and273, 0
  br i1 %cmp274, label %land.lhs.true.276, label %if.end.287

land.lhs.true.276:                                ; preds = %land.lhs.true.270
  %arrayidx277 = getelementptr inbounds [1024 x i8], [1024 x i8]* %ibuf, i32 0, i64 0
  %186 = load i8, i8* %arrayidx277, align 1, !tbaa !7
  %conv278 = sext i8 %186 to i32
  %idxprom279 = sext i32 %conv278 to i64
  %call280 = call i16** @__ctype_b_loc() #9
  %187 = load i16*, i16** %call280, align 8, !tbaa !5
  %arrayidx281 = getelementptr inbounds i16, i16* %187, i64 %idxprom279
  %188 = load i16, i16* %arrayidx281, align 2, !tbaa !18
  %conv282 = zext i16 %188 to i32
  %and283 = and i32 %conv282, 8192
  %tobool284 = icmp ne i32 %and283, 0
  br i1 %tobool284, label %if.then.285, label %if.end.287

if.then.285:                                      ; preds = %land.lhs.true.276
  %189 = load i8*, i8** %progname, align 8, !tbaa !5
  %190 = load i8*, i8** %mapname, align 8, !tbaa !5
  %191 = load i32, i32* %lineno, align 4, !tbaa !1
  %call286 = call i32 (%struct.sm_file*, i32, i8*, ...) @sm_io_fprintf(%struct.sm_file* getelementptr inbounds ([0 x %struct.sm_file], [0 x %struct.sm_file]* @SmIoF, i32 0, i64 2), i32 -2, i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str.12, i32 0, i32 0), i8* %189, i8* %190, i32 %191)
  store i32 65, i32* %exitstat, align 4, !tbaa !1
  store i32 13, i32* %cleanup.dest.slot
  br label %cleanup.441

if.end.287:                                       ; preds = %land.lhs.true.276, %land.lhs.true.270, %if.end.266
  %192 = bitcast %struct.entry_struct* %db_key to i8*
  call void @llvm.memset.p0i8.i64(i8* %192, i8 0, i64 16, i32 8, i1 false)
  %193 = bitcast %struct.entry_struct* %db_val to i8*
  call void @llvm.memset.p0i8.i64(i8* %193, i8 0, i64 16, i32 8, i1 false)
  %arraydecay288 = getelementptr inbounds [1024 x i8], [1024 x i8]* %ibuf, i32 0, i32 0
  %data289 = getelementptr inbounds %struct.entry_struct, %struct.entry_struct* %db_key, i32 0, i32 0
  store i8* %arraydecay288, i8** %data289, align 8, !tbaa !30
  %arraydecay290 = getelementptr inbounds [1024 x i8], [1024 x i8]* %ibuf, i32 0, i32 0
  store i8* %arraydecay290, i8** %p, align 8, !tbaa !5
  br label %for.cond.291

for.cond.291:                                     ; preds = %for.inc.344, %if.end.287
  %194 = load i8*, i8** %p, align 8, !tbaa !5
  %195 = load i8, i8* %194, align 1, !tbaa !7
  %conv292 = sext i8 %195 to i32
  %cmp293 = icmp ne i32 %conv292, 0
  br i1 %cmp293, label %land.rhs.295, label %land.end.321

land.rhs.295:                                     ; preds = %for.cond.291
  %196 = load i8, i8* %sep, align 1, !tbaa !7
  %conv296 = sext i8 %196 to i32
  %cmp297 = icmp eq i32 %conv296, 0
  br i1 %cmp297, label %cond.true.299, label %cond.false.313

cond.true.299:                                    ; preds = %land.rhs.295
  %197 = load i8*, i8** %p, align 8, !tbaa !5
  %198 = load i8, i8* %197, align 1, !tbaa !7
  %conv300 = sext i8 %198 to i32
  %and301 = and i32 %conv300, -128
  %cmp302 = icmp eq i32 %and301, 0
  br i1 %cmp302, label %land.rhs.304, label %land.end.312

land.rhs.304:                                     ; preds = %cond.true.299
  %199 = load i8*, i8** %p, align 8, !tbaa !5
  %200 = load i8, i8* %199, align 1, !tbaa !7
  %conv305 = sext i8 %200 to i32
  %idxprom306 = sext i32 %conv305 to i64
  %call307 = call i16** @__ctype_b_loc() #9
  %201 = load i16*, i16** %call307, align 8, !tbaa !5
  %arrayidx308 = getelementptr inbounds i16, i16* %201, i64 %idxprom306
  %202 = load i16, i16* %arrayidx308, align 2, !tbaa !18
  %conv309 = zext i16 %202 to i32
  %and310 = and i32 %conv309, 8192
  %tobool311 = icmp ne i32 %and310, 0
  br label %land.end.312

land.end.312:                                     ; preds = %land.rhs.304, %cond.true.299
  %203 = phi i1 [ false, %cond.true.299 ], [ %tobool311, %land.rhs.304 ]
  %land.ext = zext i1 %203 to i32
  br label %cond.end.318

cond.false.313:                                   ; preds = %land.rhs.295
  %204 = load i8*, i8** %p, align 8, !tbaa !5
  %205 = load i8, i8* %204, align 1, !tbaa !7
  %conv314 = sext i8 %205 to i32
  %206 = load i8, i8* %sep, align 1, !tbaa !7
  %conv315 = sext i8 %206 to i32
  %cmp316 = icmp eq i32 %conv314, %conv315
  %conv317 = zext i1 %cmp316 to i32
  br label %cond.end.318

cond.end.318:                                     ; preds = %cond.false.313, %land.end.312
  %cond319 = phi i32 [ %land.ext, %land.end.312 ], [ %conv317, %cond.false.313 ]
  %tobool320 = icmp ne i32 %cond319, 0
  %lnot = xor i1 %tobool320, true
  br label %land.end.321

land.end.321:                                     ; preds = %cond.end.318, %for.cond.291
  %207 = phi i1 [ false, %for.cond.291 ], [ %lnot, %cond.end.318 ]
  br i1 %207, label %for.body, label %for.end.346

for.body:                                         ; preds = %land.end.321
  %208 = load i32, i32* %foldcase, align 4, !tbaa !1
  %tobool323 = icmp ne i32 %208, 0
  br i1 %tobool323, label %land.lhs.true.324, label %if.end.343

land.lhs.true.324:                                ; preds = %for.body
  %209 = load i8*, i8** %p, align 8, !tbaa !5
  %210 = load i8, i8* %209, align 1, !tbaa !7
  %conv325 = sext i8 %210 to i32
  %and326 = and i32 %conv325, -128
  %cmp327 = icmp eq i32 %and326, 0
  br i1 %cmp327, label %land.lhs.true.329, label %if.end.343

land.lhs.true.329:                                ; preds = %land.lhs.true.324
  %211 = load i8*, i8** %p, align 8, !tbaa !5
  %212 = load i8, i8* %211, align 1, !tbaa !7
  %conv330 = sext i8 %212 to i32
  %idxprom331 = sext i32 %conv330 to i64
  %call332 = call i16** @__ctype_b_loc() #9
  %213 = load i16*, i16** %call332, align 8, !tbaa !5
  %arrayidx333 = getelementptr inbounds i16, i16* %213, i64 %idxprom331
  %214 = load i16, i16* %arrayidx333, align 2, !tbaa !18
  %conv334 = zext i16 %214 to i32
  %and335 = and i32 %conv334, 256
  %tobool336 = icmp ne i32 %and335, 0
  br i1 %tobool336, label %if.then.337, label %if.end.343

if.then.337:                                      ; preds = %land.lhs.true.329
  %215 = bitcast i32* %__res to i8*
  call void @llvm.lifetime.start(i64 4, i8* %215) #1
  %216 = load i8*, i8** %p, align 8, !tbaa !5
  %217 = load i8, i8* %216, align 1, !tbaa !7
  %conv338 = sext i8 %217 to i32
  %idxprom339 = sext i32 %conv338 to i64
  %call340 = call i32** @__ctype_tolower_loc() #9
  %218 = load i32*, i32** %call340, align 8, !tbaa !5
  %arrayidx341 = getelementptr inbounds i32, i32* %218, i64 %idxprom339
  %219 = load i32, i32* %arrayidx341, align 4, !tbaa !1
  store i32 %219, i32* %__res, align 4, !tbaa !1
  %220 = load i32, i32* %__res, align 4, !tbaa !1
  store i32 %220, i32* %tmp, !tbaa !1
  %221 = bitcast i32* %__res to i8*
  call void @llvm.lifetime.end(i64 4, i8* %221) #1
  %222 = load i32, i32* %tmp, !tbaa !1
  %conv342 = trunc i32 %222 to i8
  %223 = load i8*, i8** %p, align 8, !tbaa !5
  store i8 %conv342, i8* %223, align 1, !tbaa !7
  br label %if.end.343

if.end.343:                                       ; preds = %if.then.337, %land.lhs.true.329, %land.lhs.true.324, %for.body
  br label %for.inc.344

for.inc.344:                                      ; preds = %if.end.343
  %224 = load i8*, i8** %p, align 8, !tbaa !5
  %incdec.ptr345 = getelementptr inbounds i8, i8* %224, i32 1
  store i8* %incdec.ptr345, i8** %p, align 8, !tbaa !5
  br label %for.cond.291

for.end.346:                                      ; preds = %land.end.321
  %225 = load i8*, i8** %p, align 8, !tbaa !5
  %arraydecay347 = getelementptr inbounds [1024 x i8], [1024 x i8]* %ibuf, i32 0, i32 0
  %sub.ptr.lhs.cast = ptrtoint i8* %225 to i64
  %sub.ptr.rhs.cast = ptrtoint i8* %arraydecay347 to i64
  %sub.ptr.sub = sub i64 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast
  %size348 = getelementptr inbounds %struct.entry_struct, %struct.entry_struct* %db_key, i32 0, i32 1
  store i64 %sub.ptr.sub, i64* %size348, align 8, !tbaa !28
  %226 = load i32, i32* %inclnull, align 4, !tbaa !1
  %tobool349 = icmp ne i32 %226, 0
  br i1 %tobool349, label %if.then.350, label %if.end.353

if.then.350:                                      ; preds = %for.end.346
  %size351 = getelementptr inbounds %struct.entry_struct, %struct.entry_struct* %db_key, i32 0, i32 1
  %227 = load i64, i64* %size351, align 8, !tbaa !28
  %inc352 = add i64 %227, 1
  store i64 %inc352, i64* %size351, align 8, !tbaa !28
  br label %if.end.353

if.end.353:                                       ; preds = %if.then.350, %for.end.346
  %228 = load i8*, i8** %p, align 8, !tbaa !5
  %229 = load i8, i8* %228, align 1, !tbaa !7
  %conv354 = sext i8 %229 to i32
  %cmp355 = icmp ne i32 %conv354, 0
  br i1 %cmp355, label %if.then.357, label %if.end.359

if.then.357:                                      ; preds = %if.end.353
  %230 = load i8*, i8** %p, align 8, !tbaa !5
  %incdec.ptr358 = getelementptr inbounds i8, i8* %230, i32 1
  store i8* %incdec.ptr358, i8** %p, align 8, !tbaa !5
  store i8 0, i8* %230, align 1, !tbaa !7
  br label %if.end.359

if.end.359:                                       ; preds = %if.then.357, %if.end.353
  br label %while.cond.360

while.cond.360:                                   ; preds = %while.body.393, %if.end.359
  %231 = load i8*, i8** %p, align 8, !tbaa !5
  %232 = load i8, i8* %231, align 1, !tbaa !7
  %conv361 = sext i8 %232 to i32
  %cmp362 = icmp ne i32 %conv361, 0
  br i1 %cmp362, label %land.rhs.364, label %land.end.391

land.rhs.364:                                     ; preds = %while.cond.360
  %233 = load i8, i8* %sep, align 1, !tbaa !7
  %conv365 = sext i8 %233 to i32
  %cmp366 = icmp eq i32 %conv365, 0
  br i1 %cmp366, label %cond.true.368, label %cond.false.383

cond.true.368:                                    ; preds = %land.rhs.364
  %234 = load i8*, i8** %p, align 8, !tbaa !5
  %235 = load i8, i8* %234, align 1, !tbaa !7
  %conv369 = sext i8 %235 to i32
  %and370 = and i32 %conv369, -128
  %cmp371 = icmp eq i32 %and370, 0
  br i1 %cmp371, label %land.rhs.373, label %land.end.381

land.rhs.373:                                     ; preds = %cond.true.368
  %236 = load i8*, i8** %p, align 8, !tbaa !5
  %237 = load i8, i8* %236, align 1, !tbaa !7
  %conv374 = sext i8 %237 to i32
  %idxprom375 = sext i32 %conv374 to i64
  %call376 = call i16** @__ctype_b_loc() #9
  %238 = load i16*, i16** %call376, align 8, !tbaa !5
  %arrayidx377 = getelementptr inbounds i16, i16* %238, i64 %idxprom375
  %239 = load i16, i16* %arrayidx377, align 2, !tbaa !18
  %conv378 = zext i16 %239 to i32
  %and379 = and i32 %conv378, 8192
  %tobool380 = icmp ne i32 %and379, 0
  br label %land.end.381

land.end.381:                                     ; preds = %land.rhs.373, %cond.true.368
  %240 = phi i1 [ false, %cond.true.368 ], [ %tobool380, %land.rhs.373 ]
  %land.ext382 = zext i1 %240 to i32
  br label %cond.end.388

cond.false.383:                                   ; preds = %land.rhs.364
  %241 = load i8*, i8** %p, align 8, !tbaa !5
  %242 = load i8, i8* %241, align 1, !tbaa !7
  %conv384 = sext i8 %242 to i32
  %243 = load i8, i8* %sep, align 1, !tbaa !7
  %conv385 = sext i8 %243 to i32
  %cmp386 = icmp eq i32 %conv384, %conv385
  %conv387 = zext i1 %cmp386 to i32
  br label %cond.end.388

cond.end.388:                                     ; preds = %cond.false.383, %land.end.381
  %cond389 = phi i32 [ %land.ext382, %land.end.381 ], [ %conv387, %cond.false.383 ]
  %tobool390 = icmp ne i32 %cond389, 0
  br label %land.end.391

land.end.391:                                     ; preds = %cond.end.388, %while.cond.360
  %244 = phi i1 [ false, %while.cond.360 ], [ %tobool390, %cond.end.388 ]
  br i1 %244, label %while.body.393, label %while.end.395

while.body.393:                                   ; preds = %land.end.391
  %245 = load i8*, i8** %p, align 8, !tbaa !5
  %incdec.ptr394 = getelementptr inbounds i8, i8* %245, i32 1
  store i8* %incdec.ptr394, i8** %p, align 8, !tbaa !5
  br label %while.cond.360

while.end.395:                                    ; preds = %land.end.391
  %246 = load i32, i32* %allowempty, align 4, !tbaa !1
  %tobool396 = icmp ne i32 %246, 0
  br i1 %tobool396, label %if.end.404, label %land.lhs.true.397

land.lhs.true.397:                                ; preds = %while.end.395
  %247 = load i8*, i8** %p, align 8, !tbaa !5
  %248 = load i8, i8* %247, align 1, !tbaa !7
  %conv398 = sext i8 %248 to i32
  %cmp399 = icmp eq i32 %conv398, 0
  br i1 %cmp399, label %if.then.401, label %if.end.404

if.then.401:                                      ; preds = %land.lhs.true.397
  %249 = load i8*, i8** %progname, align 8, !tbaa !5
  %250 = load i8*, i8** %mapname, align 8, !tbaa !5
  %251 = load i32, i32* %lineno, align 4, !tbaa !1
  %data402 = getelementptr inbounds %struct.entry_struct, %struct.entry_struct* %db_key, i32 0, i32 0
  %252 = load i8*, i8** %data402, align 8, !tbaa !30
  %call403 = call i32 (%struct.sm_file*, i32, i8*, ...) @sm_io_fprintf(%struct.sm_file* getelementptr inbounds ([0 x %struct.sm_file], [0 x %struct.sm_file]* @SmIoF, i32 0, i64 2), i32 -2, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.13, i32 0, i32 0), i8* %249, i8* %250, i32 %251, i8* %252)
  store i32 65, i32* %exitstat, align 4, !tbaa !1
  store i32 13, i32* %cleanup.dest.slot
  br label %cleanup.441

if.end.404:                                       ; preds = %land.lhs.true.397, %while.end.395
  %253 = load i8*, i8** %p, align 8, !tbaa !5
  %data405 = getelementptr inbounds %struct.entry_struct, %struct.entry_struct* %db_val, i32 0, i32 0
  store i8* %253, i8** %data405, align 8, !tbaa !30
  %254 = load i8*, i8** %p, align 8, !tbaa !5
  %call406 = call i64 @strlen(i8* %254) #7
  %size407 = getelementptr inbounds %struct.entry_struct, %struct.entry_struct* %db_val, i32 0, i32 1
  store i64 %call406, i64* %size407, align 8, !tbaa !28
  %255 = load i32, i32* %inclnull, align 4, !tbaa !1
  %tobool408 = icmp ne i32 %255, 0
  br i1 %tobool408, label %if.then.409, label %if.end.412

if.then.409:                                      ; preds = %if.end.404
  %size410 = getelementptr inbounds %struct.entry_struct, %struct.entry_struct* %db_val, i32 0, i32 1
  %256 = load i64, i64* %size410, align 8, !tbaa !28
  %inc411 = add i64 %256, 1
  store i64 %inc411, i64* %size410, align 8, !tbaa !28
  br label %if.end.412

if.end.412:                                       ; preds = %if.then.409, %if.end.404
  %257 = load i32, i32* %verbose, align 4, !tbaa !1
  %tobool413 = icmp ne i32 %257, 0
  br i1 %tobool413, label %if.then.414, label %if.end.418

if.then.414:                                      ; preds = %if.end.412
  %data415 = getelementptr inbounds %struct.entry_struct, %struct.entry_struct* %db_key, i32 0, i32 0
  %258 = load i8*, i8** %data415, align 8, !tbaa !30
  %data416 = getelementptr inbounds %struct.entry_struct, %struct.entry_struct* %db_val, i32 0, i32 0
  %259 = load i8*, i8** %data416, align 8, !tbaa !30
  %call417 = call i32 (%struct.sm_file*, i32, i8*, ...) @sm_io_fprintf(%struct.sm_file* getelementptr inbounds ([0 x %struct.sm_file], [0 x %struct.sm_file]* @SmIoF, i32 0, i64 1), i32 -2, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.14, i32 0, i32 0), i8* %258, i8* %259)
  br label %if.end.418

if.end.418:                                       ; preds = %if.then.414, %if.end.412
  %260 = load %struct.database_struct*, %struct.database_struct** %database, align 8, !tbaa !5
  %smdb_put = getelementptr inbounds %struct.database_struct, %struct.database_struct* %260, i32 0, i32 4
  %261 = load i32 (%struct.database_struct*, %struct.entry_struct*, %struct.entry_struct*, i32)*, i32 (%struct.database_struct*, %struct.entry_struct*, %struct.entry_struct*, i32)** %smdb_put, align 8, !tbaa !35
  %262 = load %struct.database_struct*, %struct.database_struct** %database, align 8, !tbaa !5
  %263 = load i32, i32* %putflags, align 4, !tbaa !1
  %call419 = call i32 %261(%struct.database_struct* %262, %struct.entry_struct* %db_key, %struct.entry_struct* %db_val, i32 %263)
  %call420 = call i32* @__errno_location() #9
  store i32 %call419, i32* %call420, align 4, !tbaa !1
  %call421 = call i32* @__errno_location() #9
  %264 = load i32, i32* %call421, align 4, !tbaa !1
  switch i32 %264, label %sw.default.424 [
    i32 307, label %sw.bb.422
    i32 0, label %sw.bb.423
  ]

sw.bb.422:                                        ; preds = %if.end.418
  store i32 1, i32* %st, align 4, !tbaa !1
  br label %sw.epilog.425

sw.bb.423:                                        ; preds = %if.end.418
  store i32 0, i32* %st, align 4, !tbaa !1
  br label %sw.epilog.425

sw.default.424:                                   ; preds = %if.end.418
  store i32 -1, i32* %st, align 4, !tbaa !1
  br label %sw.epilog.425

sw.epilog.425:                                    ; preds = %sw.default.424, %sw.bb.423, %sw.bb.422
  %265 = load i32, i32* %st, align 4, !tbaa !1
  %cmp426 = icmp slt i32 %265, 0
  br i1 %cmp426, label %if.then.428, label %if.else.433

if.then.428:                                      ; preds = %sw.epilog.425
  %266 = load i8*, i8** %progname, align 8, !tbaa !5
  %267 = load i8*, i8** %mapname, align 8, !tbaa !5
  %268 = load i32, i32* %lineno, align 4, !tbaa !1
  %data429 = getelementptr inbounds %struct.entry_struct, %struct.entry_struct* %db_key, i32 0, i32 0
  %269 = load i8*, i8** %data429, align 8, !tbaa !30
  %call430 = call i32* @__errno_location() #9
  %270 = load i32, i32* %call430, align 4, !tbaa !1
  %call431 = call i8* @sm_errstring(i32 %270)
  %call432 = call i32 (%struct.sm_file*, i32, i8*, ...) @sm_io_fprintf(%struct.sm_file* getelementptr inbounds ([0 x %struct.sm_file], [0 x %struct.sm_file]* @SmIoF, i32 0, i64 2), i32 -2, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.15, i32 0, i32 0), i8* %266, i8* %267, i32 %268, i8* %269, i8* %call431)
  store i32 74, i32* %exitstat, align 4, !tbaa !1
  br label %if.end.440

if.else.433:                                      ; preds = %sw.epilog.425
  %271 = load i32, i32* %st, align 4, !tbaa !1
  %cmp434 = icmp sgt i32 %271, 0
  br i1 %cmp434, label %if.then.436, label %if.end.439

if.then.436:                                      ; preds = %if.else.433
  %272 = load i8*, i8** %progname, align 8, !tbaa !5
  %273 = load i8*, i8** %mapname, align 8, !tbaa !5
  %274 = load i32, i32* %lineno, align 4, !tbaa !1
  %data437 = getelementptr inbounds %struct.entry_struct, %struct.entry_struct* %db_key, i32 0, i32 0
  %275 = load i8*, i8** %data437, align 8, !tbaa !30
  %call438 = call i32 (%struct.sm_file*, i32, i8*, ...) @sm_io_fprintf(%struct.sm_file* getelementptr inbounds ([0 x %struct.sm_file], [0 x %struct.sm_file]* @SmIoF, i32 0, i64 2), i32 -2, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.16, i32 0, i32 0), i8* %272, i8* %273, i32 %274, i8* %275)
  store i32 65, i32* %exitstat, align 4, !tbaa !1
  br label %if.end.439

if.end.439:                                       ; preds = %if.then.436, %if.else.433
  br label %if.end.440

if.end.440:                                       ; preds = %if.end.439, %if.then.428
  store i32 0, i32* %cleanup.dest.slot
  br label %cleanup.441

cleanup.441:                                      ; preds = %if.end.440, %if.then.401, %if.then.285, %if.then.265, %if.then.251
  %276 = bitcast i8** %p to i8*
  call void @llvm.lifetime.end(i64 8, i8* %276) #1
  %cleanup.dest.442 = load i32, i32* %cleanup.dest.slot
  switch i32 %cleanup.dest.442, label %unreachable [
    i32 0, label %cleanup.cont.443
    i32 13, label %while.cond.235
  ]

cleanup.cont.443:                                 ; preds = %cleanup.441
  br label %while.cond.235

while.end.444:                                    ; preds = %while.cond.235
  br label %if.end.445

if.end.445:                                       ; preds = %while.end.444, %for.end
  %277 = load %struct.database_struct*, %struct.database_struct** %database, align 8, !tbaa !5
  %smdb_close = getelementptr inbounds %struct.database_struct, %struct.database_struct* %277, i32 0, i32 0
  %278 = load i32 (%struct.database_struct*)*, i32 (%struct.database_struct*)** %smdb_close, align 8, !tbaa !36
  %279 = load %struct.database_struct*, %struct.database_struct** %database, align 8, !tbaa !5
  %call446 = call i32 %278(%struct.database_struct* %279)
  %call447 = call i32* @__errno_location() #9
  store i32 %call446, i32* %call447, align 4, !tbaa !1
  %call448 = call i32* @__errno_location() #9
  %280 = load i32, i32* %call448, align 4, !tbaa !1
  %cmp449 = icmp ne i32 %280, 0
  br i1 %cmp449, label %if.then.451, label %if.end.455

if.then.451:                                      ; preds = %if.end.445
  %281 = load i8*, i8** %progname, align 8, !tbaa !5
  %282 = load i8*, i8** %mapname, align 8, !tbaa !5
  %call452 = call i32* @__errno_location() #9
  %283 = load i32, i32* %call452, align 4, !tbaa !1
  %call453 = call i8* @sm_errstring(i32 %283)
  %call454 = call i32 (%struct.sm_file*, i32, i8*, ...) @sm_io_fprintf(%struct.sm_file* getelementptr inbounds ([0 x %struct.sm_file], [0 x %struct.sm_file]* @SmIoF, i32 0, i64 2), i32 -2, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.17, i32 0, i32 0), i8* %281, i8* %282, i8* %call453)
  store i32 74, i32* %exitstat, align 4, !tbaa !1
  br label %if.end.455

if.end.455:                                       ; preds = %if.then.451, %if.end.445
  %284 = load %struct.database_struct*, %struct.database_struct** %database, align 8, !tbaa !5
  call void @smdb_free_database(%struct.database_struct* %284)
  %285 = load i32, i32* %exitstat, align 4, !tbaa !1
  call void @exit(i32 %285) #8
  unreachable

return:                                           ; No predecessors!
  %286 = load i32, i32* %retval
  ret i32 %286

unreachable:                                      ; preds = %cleanup.441, %cleanup
  unreachable
}

; Function Attrs: nounwind
declare void @llvm.lifetime.start(i64, i8* nocapture) #1

; Function Attrs: nounwind
declare void @llvm.memset.p0i8.i64(i8* nocapture, i8, i64, i32, i1) #1

; Function Attrs: nounwind readonly
declare i8* @strrchr(i8*, i32) #2

declare i8* @getcfname(i32, i32, i32, i8*) #3

; Function Attrs: nounwind
declare i32 @getuid() #4

; Function Attrs: nounwind
declare i32 @getgid() #4

declare %struct.passwd* @getpwuid(i32) #3

declare i64 @sm_strlcpy(i8*, i8*, i64) #3

declare i32 @sm_snprintf(i8*, i64, i8*, ...) #3

; Function Attrs: nounwind
declare i32 @getopt(i32, i8**, i8*) #4

; Function Attrs: nounwind readonly
declare i64 @atol(i8*) #2

declare void @smdb_print_available_types() #3

; Function Attrs: noreturn nounwind
declare void @exit(i32) #5

declare i32 @sm_io_fprintf(%struct.sm_file*, i32, i8*, ...) #3

; Function Attrs: nounwind uwtable
define internal void @usage(i8* %progname) #0 {
entry:
  %progname.addr = alloca i8*, align 8
  store i8* %progname, i8** %progname.addr, align 8, !tbaa !5
  %0 = load i8*, i8** %progname.addr, align 8, !tbaa !5
  %call = call i32 (%struct.sm_file*, i32, i8*, ...) @sm_io_fprintf(%struct.sm_file* getelementptr inbounds ([0 x %struct.sm_file], [0 x %struct.sm_file]* @SmIoF, i32 0, i64 2), i32 -2, i8* getelementptr inbounds ([60 x i8], [60 x i8]* @.str.18, i32 0, i32 0), i8* %0)
  %1 = load i8*, i8** %progname.addr, align 8, !tbaa !5
  %call1 = call i64 @strlen(i8* %1) #7
  %conv = trunc i64 %call1 to i32
  %call2 = call i32 (%struct.sm_file*, i32, i8*, ...) @sm_io_fprintf(%struct.sm_file* getelementptr inbounds ([0 x %struct.sm_file], [0 x %struct.sm_file]* @SmIoF, i32 0, i64 2), i32 -2, i8* getelementptr inbounds ([62 x i8], [62 x i8]* @.str.19, i32 0, i32 0), i32 %conv, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.20, i32 0, i32 0))
  %2 = load i8*, i8** %progname.addr, align 8, !tbaa !5
  %call3 = call i64 @strlen(i8* %2) #7
  %conv4 = trunc i64 %call3 to i32
  %call5 = call i32 (%struct.sm_file*, i32, i8*, ...) @sm_io_fprintf(%struct.sm_file* getelementptr inbounds ([0 x %struct.sm_file], [0 x %struct.sm_file]* @SmIoF, i32 0, i64 2), i32 -2, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.21, i32 0, i32 0), i32 %conv4, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.20, i32 0, i32 0))
  call void @exit(i32 64) #8
  unreachable

return:                                           ; No predecessors!
  ret void
}

declare %struct.sm_file* @sm_io_open(%struct.sm_file*, i32, i8*, i32, i8*) #3

declare i8* @sm_errstring(i32) #3

; Function Attrs: nounwind readnone
declare i32* @__errno_location() #6

declare i32 @sm_io_fgets(%struct.sm_file*, i32, i8*, i32) #3

; Function Attrs: nounwind
declare i8* @strchr(i8*, i32) #4

; Function Attrs: nounwind readonly
declare i32 @strncasecmp(i8*, i8*, i64) #2

; Function Attrs: nounwind readnone
declare i16** @__ctype_b_loc() #6

; Function Attrs: nounwind readonly
declare i32 @atoi(i8*) #2

declare %struct.passwd* @getpwnam(i8*) #3

; Function Attrs: nounwind
declare void @llvm.lifetime.end(i64, i8* nocapture) #1

declare i32 @sm_io_close(%struct.sm_file*, i32) #3

declare i32 @smdb_open_database(%struct.database_struct**, i8*, i32, i32, i64, i8*, %struct.database_user_struct*, %struct.database_params_struct*) #3

declare i8* @smdb_db_definition(i8*) #3

; Function Attrs: nounwind
declare i32 @geteuid() #4

; Function Attrs: nounwind readnone
declare i32** @__ctype_tolower_loc() #6

; Function Attrs: nounwind readonly
declare i64 @strlen(i8*) #2

declare void @smdb_free_database(%struct.database_struct*) #3

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { nounwind readonly "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { nounwind "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #5 = { noreturn nounwind "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #6 = { nounwind readnone "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #7 = { nounwind readonly }
attributes #8 = { noreturn nounwind }
attributes #9 = { nounwind readnone }

!llvm.ident = !{!0}

!0 = !{!"clang version 3.7.0 (tags/RELEASE_370/final)"}
!1 = !{!2, !2, i64 0}
!2 = !{!"int", !3, i64 0}
!3 = !{!"omnipotent char", !4, i64 0}
!4 = !{!"Simple C/C++ TBAA"}
!5 = !{!6, !6, i64 0}
!6 = !{!"any pointer", !3, i64 0}
!7 = !{!3, !3, i64 0}
!8 = !{!9, !9, i64 0}
!9 = !{!"long", !3, i64 0}
!10 = !{!11, !2, i64 4}
!11 = !{!"database_params_struct", !2, i64 0, !2, i64 4, !2, i64 8}
!12 = !{!13, !6, i64 0}
!13 = !{!"passwd", !6, i64 0, !6, i64 8, !2, i64 16, !2, i64 20, !6, i64 24, !6, i64 32, !6, i64 40}
!14 = !{!15, !2, i64 0}
!15 = !{!"database_user_struct", !2, i64 0, !2, i64 4, !3, i64 8}
!16 = !{!15, !2, i64 4}
!17 = !{!11, !2, i64 8}
!18 = !{!19, !19, i64 0}
!19 = !{!"short", !3, i64 0}
!20 = !{!13, !2, i64 16}
!21 = !{!11, !2, i64 0}
!22 = !{!23, !6, i64 40}
!23 = !{!"database_struct", !6, i64 0, !6, i64 8, !6, i64 16, !6, i64 24, !6, i64 32, !6, i64 40, !6, i64 48, !6, i64 56, !6, i64 64, !6, i64 72}
!24 = !{!23, !6, i64 48}
!25 = !{!23, !6, i64 56}
!26 = !{!27, !6, i64 16}
!27 = !{!"cursor_struct", !6, i64 0, !6, i64 8, !6, i64 16, !6, i64 24, !6, i64 32}
!28 = !{!29, !9, i64 8}
!29 = !{!"entry_struct", !6, i64 0, !9, i64 8}
!30 = !{!29, !6, i64 0}
!31 = !{!27, !6, i64 0}
!32 = !{!33, !9, i64 24}
!33 = !{!"sm_file", !6, i64 0, !6, i64 8, !2, i64 16, !2, i64 20, !9, i64 24, !19, i64 32, !34, i64 40, !2, i64 56, !6, i64 64, !2, i64 72, !6, i64 80, !6, i64 88, !6, i64 96, !6, i64 104, !6, i64 112, !6, i64 120, !6, i64 128, !2, i64 136, !2, i64 140, !6, i64 144, !6, i64 152, !6, i64 160, !34, i64 168, !6, i64 184, !2, i64 192, !3, i64 196, !3, i64 199, !2, i64 200, !9, i64 208, !2, i64 216}
!34 = !{!"smbuf", !6, i64 0, !2, i64 8}
!35 = !{!23, !6, i64 32}
!36 = !{!23, !6, i64 0}
