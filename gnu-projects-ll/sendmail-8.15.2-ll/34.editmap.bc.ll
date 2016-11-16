; ModuleID = '34.editmap.bc'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct._IO_FILE = type { i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, %struct._IO_marker*, %struct._IO_FILE*, i32, i32, i64, i16, i8, [1 x i8], i8*, i64, i8*, i8*, i8*, i8*, i64, i32, [20 x i8] }
%struct._IO_marker = type { %struct._IO_marker*, %struct._IO_FILE*, i32 }
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
@.str = private unnamed_addr constant [22 x i8] c"/etc/mail/sendmail.cf\00", align 1
@DontBlameSendmail = common global [8 x i32] zeroinitializer, align 16
@RealUid = common global i32 0, align 4
@RunAsUid = common global i32 0, align 4
@RealGid = common global i32 0, align 4
@RunAsGid = common global i32 0, align 4
@.str.1 = private unnamed_addr constant [15 x i8] c"Unknown UID %d\00", align 1
@RealUserName = common global i8* null, align 8
@RunAsUserName = common global i8* null, align 8
@.str.2 = private unnamed_addr constant [8 x i8] c"C:fquxN\00", align 1
@optarg = external global i8*, align 8
@.str.3 = private unnamed_addr constant [2 x i8] c"0\00", align 1
@.str.4 = private unnamed_addr constant [10 x i8] c"editmap.c\00", align 1
@__PRETTY_FUNCTION__.main = private unnamed_addr constant [11 x i8] c"int main()\00", align 1
@optind = external global i32, align 4
@.str.5 = private unnamed_addr constant [2 x i8] c"r\00", align 1
@stderr = external global %struct._IO_FILE*, align 8
@.str.6 = private unnamed_addr constant [12 x i8] c"%s: %s: %s\0A\00", align 1
@.str.7 = private unnamed_addr constant [13 x i8] c" TrustedUser\00", align 1
@.str.8 = private unnamed_addr constant [30 x i8] c"TrustedUser: unknown user %s\0A\00", align 1
@.str.9 = private unnamed_addr constant [48 x i8] c"%s: Need to recompile with -D%s for %s support\0A\00", align 1
@.str.10 = private unnamed_addr constant [38 x i8] c"%s: error opening type %s map %s: %s\0A\00", align 1
@.str.11 = private unnamed_addr constant [42 x i8] c"WARNING: ownership change on %s failed %s\00", align 1
@.str.12 = private unnamed_addr constant [36 x i8] c"%s: couldn't find key %s in map %s\0A\00", align 1
@.str.13 = private unnamed_addr constant [6 x i8] c"%.*s\0A\00", align 1
@.str.14 = private unnamed_addr constant [43 x i8] c"%s: error updating (%s, %s) in map %s: %s\0A\00", align 1
@.str.15 = private unnamed_addr constant [36 x i8] c"%s: key %s doesn't exist in map %s\0A\00", align 1
@.str.16 = private unnamed_addr constant [46 x i8] c"%s: couldn't remove key %s in map %s (error)\0A\00", align 1
@.str.17 = private unnamed_addr constant [19 x i8] c"%s: close(%s): %s\0A\00", align 1
@.str.18 = private unnamed_addr constant [80 x i8] c"Usage: %s [-C cffile] [-N] [-f] [-q|-u|-x] maptype mapname key [ \22value ...\22 ]\0A\00", align 1

; Function Attrs: nounwind uwtable
define i32 @main(i32 %argc, i8** %argv) #0 {
entry:
  %retval = alloca i32, align 4
  %argc.addr = alloca i32, align 4
  %argv.addr = alloca i8**, align 8
  %progname = alloca i8*, align 8
  %cfile = alloca i8*, align 8
  %query = alloca i32, align 4
  %update = alloca i32, align 4
  %remove = alloca i32, align 4
  %inclnull = alloca i32, align 4
  %foldcase = alloca i32, align 4
  %nops = alloca i32, align 4
  %exitstat = alloca i32, align 4
  %opt = alloca i32, align 4
  %typename = alloca i8*, align 8
  %mapname = alloca i8*, align 8
  %keyname = alloca i8*, align 8
  %value = alloca i8*, align 8
  %mode = alloca i32, align 4
  %smode = alloca i32, align 4
  %putflags = alloca i32, align 4
  %sff = alloca i64, align 8
  %pw = alloca %struct.passwd*, align 8
  %database = alloca %struct.database_struct*, align 8
  %db_key = alloca %struct.entry_struct, align 8
  %db_val = alloca %struct.entry_struct, align 8
  %params = alloca %struct.database_params_struct, align 4
  %user_info = alloca %struct.database_user_struct, align 4
  %cfp = alloca %struct._IO_FILE*, align 8
  %buf = alloca [2048 x i8], align 16
  %p = alloca i8*, align 8
  %__res = alloca i32, align 4
  %tmp = alloca i32, align 4
  %b = alloca i8*, align 8
  %cleanup.dest.slot = alloca i32
  %hint = alloca i8*, align 8
  store i32 0, i32* %retval
  store i32 %argc, i32* %argc.addr, align 4, !tbaa !1
  store i8** %argv, i8*** %argv.addr, align 8, !tbaa !5
  %0 = bitcast i8** %progname to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #1
  %1 = bitcast i8** %cfile to i8*
  call void @llvm.lifetime.start(i64 8, i8* %1) #1
  %2 = bitcast i32* %query to i8*
  call void @llvm.lifetime.start(i64 4, i8* %2) #1
  store i32 0, i32* %query, align 4, !tbaa !1
  %3 = bitcast i32* %update to i8*
  call void @llvm.lifetime.start(i64 4, i8* %3) #1
  store i32 0, i32* %update, align 4, !tbaa !1
  %4 = bitcast i32* %remove to i8*
  call void @llvm.lifetime.start(i64 4, i8* %4) #1
  store i32 0, i32* %remove, align 4, !tbaa !1
  %5 = bitcast i32* %inclnull to i8*
  call void @llvm.lifetime.start(i64 4, i8* %5) #1
  store i32 0, i32* %inclnull, align 4, !tbaa !1
  %6 = bitcast i32* %foldcase to i8*
  call void @llvm.lifetime.start(i64 4, i8* %6) #1
  store i32 1, i32* %foldcase, align 4, !tbaa !1
  %7 = bitcast i32* %nops to i8*
  call void @llvm.lifetime.start(i64 4, i8* %7) #1
  store i32 0, i32* %nops, align 4, !tbaa !1
  %8 = bitcast i32* %exitstat to i8*
  call void @llvm.lifetime.start(i64 4, i8* %8) #1
  %9 = bitcast i32* %opt to i8*
  call void @llvm.lifetime.start(i64 4, i8* %9) #1
  %10 = bitcast i8** %typename to i8*
  call void @llvm.lifetime.start(i64 8, i8* %10) #1
  store i8* null, i8** %typename, align 8, !tbaa !5
  %11 = bitcast i8** %mapname to i8*
  call void @llvm.lifetime.start(i64 8, i8* %11) #1
  store i8* null, i8** %mapname, align 8, !tbaa !5
  %12 = bitcast i8** %keyname to i8*
  call void @llvm.lifetime.start(i64 8, i8* %12) #1
  store i8* null, i8** %keyname, align 8, !tbaa !5
  %13 = bitcast i8** %value to i8*
  call void @llvm.lifetime.start(i64 8, i8* %13) #1
  store i8* null, i8** %value, align 8, !tbaa !5
  %14 = bitcast i32* %mode to i8*
  call void @llvm.lifetime.start(i64 4, i8* %14) #1
  %15 = bitcast i32* %smode to i8*
  call void @llvm.lifetime.start(i64 4, i8* %15) #1
  %16 = bitcast i32* %putflags to i8*
  call void @llvm.lifetime.start(i64 4, i8* %16) #1
  store i32 0, i32* %putflags, align 4, !tbaa !1
  %17 = bitcast i64* %sff to i8*
  call void @llvm.lifetime.start(i64 8, i8* %17) #1
  store i64 132, i64* %sff, align 8, !tbaa !7
  %18 = bitcast %struct.passwd** %pw to i8*
  call void @llvm.lifetime.start(i64 8, i8* %18) #1
  %19 = bitcast %struct.database_struct** %database to i8*
  call void @llvm.lifetime.start(i64 8, i8* %19) #1
  %20 = bitcast %struct.entry_struct* %db_key to i8*
  call void @llvm.lifetime.start(i64 16, i8* %20) #1
  %21 = bitcast %struct.entry_struct* %db_val to i8*
  call void @llvm.lifetime.start(i64 16, i8* %21) #1
  %22 = bitcast %struct.database_params_struct* %params to i8*
  call void @llvm.lifetime.start(i64 12, i8* %22) #1
  %23 = bitcast %struct.database_user_struct* %user_info to i8*
  call void @llvm.lifetime.start(i64 1032, i8* %23) #1
  %24 = bitcast %struct._IO_FILE** %cfp to i8*
  call void @llvm.lifetime.start(i64 8, i8* %24) #1
  %25 = bitcast [2048 x i8]* %buf to i8*
  call void @llvm.lifetime.start(i64 2048, i8* %25) #1
  %26 = bitcast %struct.database_params_struct* %params to i8*
  call void @llvm.memset.p0i8.i64(i8* %26, i8 0, i64 12, i32 4, i1 false)
  %smdbp_cache_size = getelementptr inbounds %struct.database_params_struct, %struct.database_params_struct* %params, i32 0, i32 1
  store i32 1048576, i32* %smdbp_cache_size, align 4, !tbaa !9
  %27 = load i8**, i8*** %argv.addr, align 8, !tbaa !5
  %arrayidx = getelementptr inbounds i8*, i8** %27, i64 0
  %28 = load i8*, i8** %arrayidx, align 8, !tbaa !5
  %call = call i8* @strrchr(i8* %28, i32 47) #7
  store i8* %call, i8** %progname, align 8, !tbaa !5
  %29 = load i8*, i8** %progname, align 8, !tbaa !5
  %cmp = icmp ne i8* %29, null
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %30 = load i8*, i8** %progname, align 8, !tbaa !5
  %incdec.ptr = getelementptr inbounds i8, i8* %30, i32 1
  store i8* %incdec.ptr, i8** %progname, align 8, !tbaa !5
  br label %if.end

if.else:                                          ; preds = %entry
  %31 = load i8**, i8*** %argv.addr, align 8, !tbaa !5
  %arrayidx1 = getelementptr inbounds i8*, i8** %31, i64 0
  %32 = load i8*, i8** %arrayidx1, align 8, !tbaa !5
  store i8* %32, i8** %progname, align 8, !tbaa !5
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  store i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str, i32 0, i32 0), i8** %cfile, align 8, !tbaa !5
  call void @llvm.memset.p0i8.i64(i8* bitcast ([8 x i32]* @DontBlameSendmail to i8*), i8 0, i64 32, i32 1, i1 false)
  %call2 = call i32 @getuid() #1
  store i32 %call2, i32* @RealUid, align 4, !tbaa !1
  store i32 %call2, i32* @RunAsUid, align 4, !tbaa !1
  %call3 = call i32 @getgid() #1
  store i32 %call3, i32* @RealGid, align 4, !tbaa !1
  store i32 %call3, i32* @RunAsGid, align 4, !tbaa !1
  %33 = load i32, i32* @RealUid, align 4, !tbaa !1
  %call4 = call %struct.passwd* @getpwuid(i32 %33)
  store %struct.passwd* %call4, %struct.passwd** %pw, align 8, !tbaa !5
  %34 = load %struct.passwd*, %struct.passwd** %pw, align 8, !tbaa !5
  %cmp5 = icmp ne %struct.passwd* %34, null
  br i1 %cmp5, label %if.then.6, label %if.else.8

if.then.6:                                        ; preds = %if.end
  %35 = load %struct.passwd*, %struct.passwd** %pw, align 8, !tbaa !5
  %pw_name = getelementptr inbounds %struct.passwd, %struct.passwd* %35, i32 0, i32 0
  %36 = load i8*, i8** %pw_name, align 8, !tbaa !11
  %call7 = call i64 @sm_strlcpy(i8* getelementptr inbounds ([256 x i8], [256 x i8]* @main.rnamebuf, i32 0, i32 0), i8* %36, i64 256)
  br label %if.end.10

if.else.8:                                        ; preds = %if.end
  %37 = load i32, i32* @RealUid, align 4, !tbaa !1
  %call9 = call i32 (i8*, i64, i8*, ...) @sm_snprintf(i8* getelementptr inbounds ([256 x i8], [256 x i8]* @main.rnamebuf, i32 0, i32 0), i64 256, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.1, i32 0, i32 0), i32 %37)
  br label %if.end.10

if.end.10:                                        ; preds = %if.else.8, %if.then.6
  store i8* getelementptr inbounds ([256 x i8], [256 x i8]* @main.rnamebuf, i32 0, i32 0), i8** @RealUserName, align 8, !tbaa !5
  store i8* getelementptr inbounds ([256 x i8], [256 x i8]* @main.rnamebuf, i32 0, i32 0), i8** @RunAsUserName, align 8, !tbaa !5
  %38 = load i32, i32* @RunAsUid, align 4, !tbaa !1
  %smdbu_id = getelementptr inbounds %struct.database_user_struct, %struct.database_user_struct* %user_info, i32 0, i32 0
  store i32 %38, i32* %smdbu_id, align 4, !tbaa !13
  %39 = load i32, i32* @RunAsGid, align 4, !tbaa !1
  %smdbu_group_id = getelementptr inbounds %struct.database_user_struct, %struct.database_user_struct* %user_info, i32 0, i32 1
  store i32 %39, i32* %smdbu_group_id, align 4, !tbaa !15
  %smdbu_name = getelementptr inbounds %struct.database_user_struct, %struct.database_user_struct* %user_info, i32 0, i32 2
  %arraydecay = getelementptr inbounds [1024 x i8], [1024 x i8]* %smdbu_name, i32 0, i32 0
  %40 = load i8*, i8** @RunAsUserName, align 8, !tbaa !5
  %call11 = call i64 @sm_strlcpy(i8* %arraydecay, i8* %40, i64 1024)
  br label %while.cond

while.cond:                                       ; preds = %sw.epilog, %if.end.10
  %41 = load i32, i32* %argc.addr, align 4, !tbaa !1
  %42 = load i8**, i8*** %argv.addr, align 8, !tbaa !5
  %call12 = call i32 @getopt(i32 %41, i8** %42, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.2, i32 0, i32 0)) #1
  store i32 %call12, i32* %opt, align 4, !tbaa !1
  %cmp13 = icmp ne i32 %call12, -1
  br i1 %cmp13, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %43 = load i32, i32* %opt, align 4, !tbaa !1
  switch i32 %43, label %sw.default [
    i32 67, label %sw.bb
    i32 102, label %sw.bb.14
    i32 113, label %sw.bb.15
    i32 117, label %sw.bb.16
    i32 120, label %sw.bb.18
    i32 78, label %sw.bb.20
  ]

sw.bb:                                            ; preds = %while.body
  %44 = load i8*, i8** @optarg, align 8, !tbaa !5
  store i8* %44, i8** %cfile, align 8, !tbaa !5
  br label %sw.epilog

sw.bb.14:                                         ; preds = %while.body
  store i32 0, i32* %foldcase, align 4, !tbaa !1
  br label %sw.epilog

sw.bb.15:                                         ; preds = %while.body
  store i32 1, i32* %query, align 4, !tbaa !1
  %45 = load i32, i32* %nops, align 4, !tbaa !1
  %inc = add i32 %45, 1
  store i32 %inc, i32* %nops, align 4, !tbaa !1
  br label %sw.epilog

sw.bb.16:                                         ; preds = %while.body
  store i32 1, i32* %update, align 4, !tbaa !1
  %46 = load i32, i32* %nops, align 4, !tbaa !1
  %inc17 = add i32 %46, 1
  store i32 %inc17, i32* %nops, align 4, !tbaa !1
  br label %sw.epilog

sw.bb.18:                                         ; preds = %while.body
  store i32 1, i32* %remove, align 4, !tbaa !1
  %47 = load i32, i32* %nops, align 4, !tbaa !1
  %inc19 = add i32 %47, 1
  store i32 %inc19, i32* %nops, align 4, !tbaa !1
  br label %sw.epilog

sw.bb.20:                                         ; preds = %while.body
  store i32 1, i32* %inclnull, align 4, !tbaa !1
  br label %sw.epilog

sw.default:                                       ; preds = %while.body
  %48 = load i8*, i8** %progname, align 8, !tbaa !5
  call void @usage(i8* %48)
  call void @__assert_fail(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.3, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.4, i32 0, i32 0), i32 167, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @__PRETTY_FUNCTION__.main, i32 0, i32 0)) #8
  unreachable

sw.epilog:                                        ; preds = %sw.bb.20, %sw.bb.18, %sw.bb.16, %sw.bb.15, %sw.bb.14, %sw.bb
  br label %while.cond

while.end:                                        ; preds = %while.cond
  %49 = load i32, i32* getelementptr inbounds ([8 x i32], [8 x i32]* @DontBlameSendmail, i32 0, i64 0), align 4, !tbaa !1
  %and = and i32 %49, 262144
  %tobool = icmp ne i32 %and, 0
  br i1 %tobool, label %if.end.22, label %if.then.21

if.then.21:                                       ; preds = %while.end
  %50 = load i64, i64* %sff, align 8, !tbaa !7
  %or = or i64 %50, 2
  store i64 %or, i64* %sff, align 8, !tbaa !7
  br label %if.end.22

if.end.22:                                        ; preds = %if.then.21, %while.end
  %51 = load i32, i32* getelementptr inbounds ([8 x i32], [8 x i32]* @DontBlameSendmail, i32 0, i64 0), align 4, !tbaa !1
  %and23 = and i32 %51, 131072
  %tobool24 = icmp ne i32 %and23, 0
  br i1 %tobool24, label %if.end.27, label %if.then.25

if.then.25:                                       ; preds = %if.end.22
  %52 = load i64, i64* %sff, align 8, !tbaa !7
  %or26 = or i64 %52, 512
  store i64 %or26, i64* %sff, align 8, !tbaa !7
  br label %if.end.27

if.end.27:                                        ; preds = %if.then.25, %if.end.22
  %53 = load i32, i32* getelementptr inbounds ([8 x i32], [8 x i32]* @DontBlameSendmail, i32 0, i64 0), align 4, !tbaa !1
  %and28 = and i32 %53, 8192
  %tobool29 = icmp ne i32 %and28, 0
  br i1 %tobool29, label %if.end.32, label %if.then.30

if.then.30:                                       ; preds = %if.end.27
  %54 = load i64, i64* %sff, align 8, !tbaa !7
  %or31 = or i64 %54, 1024
  store i64 %or31, i64* %sff, align 8, !tbaa !7
  br label %if.end.32

if.end.32:                                        ; preds = %if.then.30, %if.end.27
  %55 = load i32, i32* @optind, align 4, !tbaa !1
  %56 = load i32, i32* %argc.addr, align 4, !tbaa !1
  %sub = sub nsw i32 %56, %55
  store i32 %sub, i32* %argc.addr, align 4, !tbaa !1
  %57 = load i32, i32* @optind, align 4, !tbaa !1
  %58 = load i8**, i8*** %argv.addr, align 8, !tbaa !5
  %idx.ext = sext i32 %57 to i64
  %add.ptr = getelementptr inbounds i8*, i8** %58, i64 %idx.ext
  store i8** %add.ptr, i8*** %argv.addr, align 8, !tbaa !5
  %59 = load i32, i32* %nops, align 4, !tbaa !1
  %cmp33 = icmp ne i32 %59, 1
  br i1 %cmp33, label %if.then.44, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.end.32
  %60 = load i32, i32* %query, align 4, !tbaa !1
  %tobool34 = icmp ne i32 %60, 0
  br i1 %tobool34, label %land.lhs.true, label %lor.lhs.false.36

land.lhs.true:                                    ; preds = %lor.lhs.false
  %61 = load i32, i32* %argc.addr, align 4, !tbaa !1
  %cmp35 = icmp ne i32 %61, 3
  br i1 %cmp35, label %if.then.44, label %lor.lhs.false.36

lor.lhs.false.36:                                 ; preds = %land.lhs.true, %lor.lhs.false
  %62 = load i32, i32* %remove, align 4, !tbaa !1
  %tobool37 = icmp ne i32 %62, 0
  br i1 %tobool37, label %land.lhs.true.38, label %lor.lhs.false.40

land.lhs.true.38:                                 ; preds = %lor.lhs.false.36
  %63 = load i32, i32* %argc.addr, align 4, !tbaa !1
  %cmp39 = icmp ne i32 %63, 3
  br i1 %cmp39, label %if.then.44, label %lor.lhs.false.40

lor.lhs.false.40:                                 ; preds = %land.lhs.true.38, %lor.lhs.false.36
  %64 = load i32, i32* %update, align 4, !tbaa !1
  %tobool41 = icmp ne i32 %64, 0
  br i1 %tobool41, label %land.lhs.true.42, label %if.end.45

land.lhs.true.42:                                 ; preds = %lor.lhs.false.40
  %65 = load i32, i32* %argc.addr, align 4, !tbaa !1
  %cmp43 = icmp sle i32 %65, 3
  br i1 %cmp43, label %if.then.44, label %if.end.45

if.then.44:                                       ; preds = %land.lhs.true.42, %land.lhs.true.38, %land.lhs.true, %if.end.32
  %66 = load i8*, i8** %progname, align 8, !tbaa !5
  call void @usage(i8* %66)
  call void @__assert_fail(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.3, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.4, i32 0, i32 0), i32 186, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @__PRETTY_FUNCTION__.main, i32 0, i32 0)) #8
  unreachable

if.end.45:                                        ; preds = %land.lhs.true.42, %lor.lhs.false.40
  %67 = load i8**, i8*** %argv.addr, align 8, !tbaa !5
  %arrayidx46 = getelementptr inbounds i8*, i8** %67, i64 0
  %68 = load i8*, i8** %arrayidx46, align 8, !tbaa !5
  store i8* %68, i8** %typename, align 8, !tbaa !5
  %69 = load i8**, i8*** %argv.addr, align 8, !tbaa !5
  %arrayidx47 = getelementptr inbounds i8*, i8** %69, i64 1
  %70 = load i8*, i8** %arrayidx47, align 8, !tbaa !5
  store i8* %70, i8** %mapname, align 8, !tbaa !5
  %71 = load i8**, i8*** %argv.addr, align 8, !tbaa !5
  %arrayidx48 = getelementptr inbounds i8*, i8** %71, i64 2
  %72 = load i8*, i8** %arrayidx48, align 8, !tbaa !5
  store i8* %72, i8** %keyname, align 8, !tbaa !5
  %73 = load i32, i32* %update, align 4, !tbaa !1
  %tobool49 = icmp ne i32 %73, 0
  br i1 %tobool49, label %if.then.50, label %if.end.52

if.then.50:                                       ; preds = %if.end.45
  %74 = load i8**, i8*** %argv.addr, align 8, !tbaa !5
  %arrayidx51 = getelementptr inbounds i8*, i8** %74, i64 3
  %75 = load i8*, i8** %arrayidx51, align 8, !tbaa !5
  store i8* %75, i8** %value, align 8, !tbaa !5
  br label %if.end.52

if.end.52:                                        ; preds = %if.then.50, %if.end.45
  %76 = load i32, i32* %foldcase, align 4, !tbaa !1
  %tobool53 = icmp ne i32 %76, 0
  br i1 %tobool53, label %if.then.54, label %if.end.76

if.then.54:                                       ; preds = %if.end.52
  %77 = bitcast i8** %p to i8*
  call void @llvm.lifetime.start(i64 8, i8* %77) #1
  %78 = load i8*, i8** %keyname, align 8, !tbaa !5
  store i8* %78, i8** %p, align 8, !tbaa !5
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.then.54
  %79 = load i8*, i8** %p, align 8, !tbaa !5
  %80 = load i8, i8* %79, align 1, !tbaa !16
  %conv = sext i8 %80 to i32
  %cmp55 = icmp ne i32 %conv, 0
  br i1 %cmp55, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %81 = load i8*, i8** %p, align 8, !tbaa !5
  %82 = load i8, i8* %81, align 1, !tbaa !16
  %conv57 = sext i8 %82 to i32
  %and58 = and i32 %conv57, -128
  %cmp59 = icmp eq i32 %and58, 0
  br i1 %cmp59, label %land.lhs.true.61, label %if.end.74

land.lhs.true.61:                                 ; preds = %for.body
  %83 = load i8*, i8** %p, align 8, !tbaa !5
  %84 = load i8, i8* %83, align 1, !tbaa !16
  %conv62 = sext i8 %84 to i32
  %idxprom = sext i32 %conv62 to i64
  %call63 = call i16** @__ctype_b_loc() #9
  %85 = load i16*, i16** %call63, align 8, !tbaa !5
  %arrayidx64 = getelementptr inbounds i16, i16* %85, i64 %idxprom
  %86 = load i16, i16* %arrayidx64, align 2, !tbaa !17
  %conv65 = zext i16 %86 to i32
  %and66 = and i32 %conv65, 256
  %tobool67 = icmp ne i32 %and66, 0
  br i1 %tobool67, label %if.then.68, label %if.end.74

if.then.68:                                       ; preds = %land.lhs.true.61
  %87 = bitcast i32* %__res to i8*
  call void @llvm.lifetime.start(i64 4, i8* %87) #1
  %88 = load i8*, i8** %p, align 8, !tbaa !5
  %89 = load i8, i8* %88, align 1, !tbaa !16
  %conv69 = sext i8 %89 to i32
  %idxprom70 = sext i32 %conv69 to i64
  %call71 = call i32** @__ctype_tolower_loc() #9
  %90 = load i32*, i32** %call71, align 8, !tbaa !5
  %arrayidx72 = getelementptr inbounds i32, i32* %90, i64 %idxprom70
  %91 = load i32, i32* %arrayidx72, align 4, !tbaa !1
  store i32 %91, i32* %__res, align 4, !tbaa !1
  %92 = load i32, i32* %__res, align 4, !tbaa !1
  store i32 %92, i32* %tmp, !tbaa !1
  %93 = bitcast i32* %__res to i8*
  call void @llvm.lifetime.end(i64 4, i8* %93) #1
  %94 = load i32, i32* %tmp, !tbaa !1
  %conv73 = trunc i32 %94 to i8
  %95 = load i8*, i8** %p, align 8, !tbaa !5
  store i8 %conv73, i8* %95, align 1, !tbaa !16
  br label %if.end.74

if.end.74:                                        ; preds = %if.then.68, %land.lhs.true.61, %for.body
  br label %for.inc

for.inc:                                          ; preds = %if.end.74
  %96 = load i8*, i8** %p, align 8, !tbaa !5
  %incdec.ptr75 = getelementptr inbounds i8, i8* %96, i32 1
  store i8* %incdec.ptr75, i8** %p, align 8, !tbaa !5
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %97 = bitcast i8** %p to i8*
  call void @llvm.lifetime.end(i64 8, i8* %97) #1
  br label %if.end.76

if.end.76:                                        ; preds = %for.end, %if.end.52
  %98 = load i8*, i8** %cfile, align 8, !tbaa !5
  %call77 = call %struct._IO_FILE* @fopen(i8* %98, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.5, i32 0, i32 0))
  store %struct._IO_FILE* %call77, %struct._IO_FILE** %cfp, align 8, !tbaa !5
  %cmp78 = icmp eq %struct._IO_FILE* %call77, null
  br i1 %cmp78, label %if.then.80, label %if.end.84

if.then.80:                                       ; preds = %if.end.76
  %99 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !tbaa !5
  %100 = load i8*, i8** %progname, align 8, !tbaa !5
  %101 = load i8*, i8** %cfile, align 8, !tbaa !5
  %call81 = call i32* @__errno_location() #9
  %102 = load i32, i32* %call81, align 4, !tbaa !1
  %call82 = call i8* @sm_errstring(i32 %102)
  %call83 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %99, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.6, i32 0, i32 0), i8* %100, i8* %101, i8* %call82)
  call void @exit(i32 66) #8
  unreachable

if.end.84:                                        ; preds = %if.end.76
  br label %while.cond.85

while.cond.85:                                    ; preds = %cleanup.cont, %cleanup, %if.end.84
  %arraydecay86 = getelementptr inbounds [2048 x i8], [2048 x i8]* %buf, i32 0, i32 0
  %103 = load %struct._IO_FILE*, %struct._IO_FILE** %cfp, align 8, !tbaa !5
  %call87 = call i8* @fgets(i8* %arraydecay86, i32 2048, %struct._IO_FILE* %103)
  %cmp88 = icmp ne i8* %call87, null
  br i1 %cmp88, label %while.body.90, label %while.end.167

while.body.90:                                    ; preds = %while.cond.85
  %104 = bitcast i8** %b to i8*
  call void @llvm.lifetime.start(i64 8, i8* %104) #1
  %arraydecay92 = getelementptr inbounds [2048 x i8], [2048 x i8]* %buf, i32 0, i32 0
  %call93 = call i8* @strchr(i8* %arraydecay92, i32 10) #1
  store i8* %call93, i8** %b, align 8, !tbaa !5
  %cmp94 = icmp ne i8* %call93, null
  br i1 %cmp94, label %if.then.96, label %if.end.97

if.then.96:                                       ; preds = %while.body.90
  %105 = load i8*, i8** %b, align 8, !tbaa !5
  store i8 0, i8* %105, align 1, !tbaa !16
  br label %if.end.97

if.end.97:                                        ; preds = %if.then.96, %while.body.90
  %arraydecay98 = getelementptr inbounds [2048 x i8], [2048 x i8]* %buf, i32 0, i32 0
  store i8* %arraydecay98, i8** %b, align 8, !tbaa !5
  %106 = load i8*, i8** %b, align 8, !tbaa !5
  %incdec.ptr99 = getelementptr inbounds i8, i8* %106, i32 1
  store i8* %incdec.ptr99, i8** %b, align 8, !tbaa !5
  %107 = load i8, i8* %106, align 1, !tbaa !16
  %conv100 = sext i8 %107 to i32
  switch i32 %conv100, label %sw.default.165 [
    i32 79, label %sw.bb.101
  ]

sw.bb.101:                                        ; preds = %if.end.97
  %108 = load i8*, i8** %b, align 8, !tbaa !5
  %call102 = call i32 @strncasecmp(i8* %108, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.7, i32 0, i32 0), i64 12) #7
  %cmp103 = icmp eq i32 %call102, 0
  br i1 %cmp103, label %land.lhs.true.105, label %if.end.164

land.lhs.true.105:                                ; preds = %sw.bb.101
  %109 = load i8*, i8** %b, align 8, !tbaa !5
  %arrayidx106 = getelementptr inbounds i8, i8* %109, i64 12
  %110 = load i8, i8* %arrayidx106, align 1, !tbaa !16
  %conv107 = sext i8 %110 to i32
  %and108 = and i32 %conv107, -128
  %cmp109 = icmp eq i32 %and108, 0
  br i1 %cmp109, label %land.lhs.true.111, label %if.then.120

land.lhs.true.111:                                ; preds = %land.lhs.true.105
  %111 = load i8*, i8** %b, align 8, !tbaa !5
  %arrayidx112 = getelementptr inbounds i8, i8* %111, i64 12
  %112 = load i8, i8* %arrayidx112, align 1, !tbaa !16
  %conv113 = sext i8 %112 to i32
  %idxprom114 = sext i32 %conv113 to i64
  %call115 = call i16** @__ctype_b_loc() #9
  %113 = load i16*, i16** %call115, align 8, !tbaa !5
  %arrayidx116 = getelementptr inbounds i16, i16* %113, i64 %idxprom114
  %114 = load i16, i16* %arrayidx116, align 2, !tbaa !17
  %conv117 = zext i16 %114 to i32
  %and118 = and i32 %conv117, 8
  %tobool119 = icmp ne i32 %and118, 0
  br i1 %tobool119, label %if.end.164, label %if.then.120

if.then.120:                                      ; preds = %land.lhs.true.111, %land.lhs.true.105
  %115 = load i8*, i8** %b, align 8, !tbaa !5
  %call121 = call i8* @strchr(i8* %115, i32 61) #1
  store i8* %call121, i8** %b, align 8, !tbaa !5
  %116 = load i8*, i8** %b, align 8, !tbaa !5
  %cmp122 = icmp eq i8* %116, null
  br i1 %cmp122, label %if.then.124, label %if.end.125

if.then.124:                                      ; preds = %if.then.120
  store i32 8, i32* %cleanup.dest.slot
  br label %cleanup

if.end.125:                                       ; preds = %if.then.120
  br label %while.cond.126

while.cond.126:                                   ; preds = %while.body.139, %if.end.125
  %117 = load i8*, i8** %b, align 8, !tbaa !5
  %incdec.ptr127 = getelementptr inbounds i8, i8* %117, i32 1
  store i8* %incdec.ptr127, i8** %b, align 8, !tbaa !5
  %118 = load i8, i8* %incdec.ptr127, align 1, !tbaa !16
  %conv128 = sext i8 %118 to i32
  %and129 = and i32 %conv128, -128
  %cmp130 = icmp eq i32 %and129, 0
  br i1 %cmp130, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %while.cond.126
  %119 = load i8*, i8** %b, align 8, !tbaa !5
  %120 = load i8, i8* %119, align 1, !tbaa !16
  %conv132 = sext i8 %120 to i32
  %idxprom133 = sext i32 %conv132 to i64
  %call134 = call i16** @__ctype_b_loc() #9
  %121 = load i16*, i16** %call134, align 8, !tbaa !5
  %arrayidx135 = getelementptr inbounds i16, i16* %121, i64 %idxprom133
  %122 = load i16, i16* %arrayidx135, align 2, !tbaa !17
  %conv136 = zext i16 %122 to i32
  %and137 = and i32 %conv136, 8192
  %tobool138 = icmp ne i32 %and137, 0
  br label %land.end

land.end:                                         ; preds = %land.rhs, %while.cond.126
  %123 = phi i1 [ false, %while.cond.126 ], [ %tobool138, %land.rhs ]
  br i1 %123, label %while.body.139, label %while.end.140

while.body.139:                                   ; preds = %land.end
  br label %while.cond.126

while.end.140:                                    ; preds = %land.end
  %124 = load i8*, i8** %b, align 8, !tbaa !5
  %125 = load i8, i8* %124, align 1, !tbaa !16
  %conv141 = sext i8 %125 to i32
  %and142 = and i32 %conv141, -128
  %cmp143 = icmp eq i32 %and142, 0
  br i1 %cmp143, label %land.lhs.true.145, label %if.else.155

land.lhs.true.145:                                ; preds = %while.end.140
  %126 = load i8*, i8** %b, align 8, !tbaa !5
  %127 = load i8, i8* %126, align 1, !tbaa !16
  %conv146 = sext i8 %127 to i32
  %idxprom147 = sext i32 %conv146 to i64
  %call148 = call i16** @__ctype_b_loc() #9
  %128 = load i16*, i16** %call148, align 8, !tbaa !5
  %arrayidx149 = getelementptr inbounds i16, i16* %128, i64 %idxprom147
  %129 = load i16, i16* %arrayidx149, align 2, !tbaa !17
  %conv150 = zext i16 %129 to i32
  %and151 = and i32 %conv150, 2048
  %tobool152 = icmp ne i32 %and151, 0
  br i1 %tobool152, label %if.then.153, label %if.else.155

if.then.153:                                      ; preds = %land.lhs.true.145
  %130 = load i8*, i8** %b, align 8, !tbaa !5
  %call154 = call i32 @atoi(i8* %130) #7
  store i32 %call154, i32* @TrustedUid, align 4, !tbaa !1
  br label %if.end.163

if.else.155:                                      ; preds = %land.lhs.true.145, %while.end.140
  store i32 0, i32* @TrustedUid, align 4, !tbaa !1
  %131 = load i8*, i8** %b, align 8, !tbaa !5
  %call156 = call %struct.passwd* @getpwnam(i8* %131)
  store %struct.passwd* %call156, %struct.passwd** %pw, align 8, !tbaa !5
  %132 = load %struct.passwd*, %struct.passwd** %pw, align 8, !tbaa !5
  %cmp157 = icmp eq %struct.passwd* %132, null
  br i1 %cmp157, label %if.then.159, label %if.else.161

if.then.159:                                      ; preds = %if.else.155
  %133 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !tbaa !5
  %134 = load i8*, i8** %b, align 8, !tbaa !5
  %call160 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %133, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.8, i32 0, i32 0), i8* %134)
  br label %if.end.162

if.else.161:                                      ; preds = %if.else.155
  %135 = load %struct.passwd*, %struct.passwd** %pw, align 8, !tbaa !5
  %pw_uid = getelementptr inbounds %struct.passwd, %struct.passwd* %135, i32 0, i32 2
  %136 = load i32, i32* %pw_uid, align 4, !tbaa !19
  store i32 %136, i32* @TrustedUid, align 4, !tbaa !1
  br label %if.end.162

if.end.162:                                       ; preds = %if.else.161, %if.then.159
  br label %if.end.163

if.end.163:                                       ; preds = %if.end.162, %if.then.153
  br label %sw.epilog.166

if.end.164:                                       ; preds = %land.lhs.true.111, %sw.bb.101
  br label %sw.default.165

sw.default.165:                                   ; preds = %if.end.97, %if.end.164
  store i32 8, i32* %cleanup.dest.slot
  br label %cleanup

sw.epilog.166:                                    ; preds = %if.end.163
  store i32 0, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %sw.epilog.166, %sw.default.165, %if.then.124
  %137 = bitcast i8** %b to i8*
  call void @llvm.lifetime.end(i64 8, i8* %137) #1
  %cleanup.dest = load i32, i32* %cleanup.dest.slot
  switch i32 %cleanup.dest, label %unreachable [
    i32 0, label %cleanup.cont
    i32 8, label %while.cond.85
  ]

cleanup.cont:                                     ; preds = %cleanup
  br label %while.cond.85

while.end.167:                                    ; preds = %while.cond.85
  %138 = load %struct._IO_FILE*, %struct._IO_FILE** %cfp, align 8, !tbaa !5
  %call168 = call i32 @fclose(%struct._IO_FILE* %138)
  %139 = load i32, i32* %query, align 4, !tbaa !1
  %tobool169 = icmp ne i32 %139, 0
  br i1 %tobool169, label %if.then.170, label %if.else.171

if.then.170:                                      ; preds = %while.end.167
  store i32 0, i32* %mode, align 4, !tbaa !1
  store i32 256, i32* %smode, align 4, !tbaa !1
  br label %if.end.173

if.else.171:                                      ; preds = %while.end.167
  store i32 66, i32* %mode, align 4, !tbaa !1
  %140 = load i64, i64* %sff, align 8, !tbaa !7
  %or172 = or i64 %140, 131136
  store i64 %or172, i64* %sff, align 8, !tbaa !7
  store i32 128, i32* %smode, align 4, !tbaa !1
  br label %if.end.173

if.end.173:                                       ; preds = %if.else.171, %if.then.170
  %smdbp_num_elements = getelementptr inbounds %struct.database_params_struct, %struct.database_params_struct* %params, i32 0, i32 0
  store i32 4096, i32* %smdbp_num_elements, align 4, !tbaa !20
  %141 = load i8*, i8** %mapname, align 8, !tbaa !5
  %142 = load i32, i32* %mode, align 4, !tbaa !1
  %143 = load i32, i32* %smode, align 4, !tbaa !1
  %144 = load i64, i64* %sff, align 8, !tbaa !7
  %145 = load i8*, i8** %typename, align 8, !tbaa !5
  %call174 = call i32 @smdb_open_database(%struct.database_struct** %database, i8* %141, i32 %142, i32 %143, i64 %144, i8* %145, %struct.database_user_struct* %user_info, %struct.database_params_struct* %params)
  %call175 = call i32* @__errno_location() #9
  store i32 %call174, i32* %call175, align 4, !tbaa !1
  %call176 = call i32* @__errno_location() #9
  %146 = load i32, i32* %call176, align 4, !tbaa !1
  %cmp177 = icmp ne i32 %146, 0
  br i1 %cmp177, label %if.then.179, label %if.end.195

if.then.179:                                      ; preds = %if.end.173
  %147 = bitcast i8** %hint to i8*
  call void @llvm.lifetime.start(i64 8, i8* %147) #1
  %call181 = call i32* @__errno_location() #9
  %148 = load i32, i32* %call181, align 4, !tbaa !1
  %cmp182 = icmp eq i32 %148, 304
  br i1 %cmp182, label %land.lhs.true.184, label %if.else.190

land.lhs.true.184:                                ; preds = %if.then.179
  %149 = load i8*, i8** %typename, align 8, !tbaa !5
  %call185 = call i8* @smdb_db_definition(i8* %149)
  store i8* %call185, i8** %hint, align 8, !tbaa !5
  %cmp186 = icmp ne i8* %call185, null
  br i1 %cmp186, label %if.then.188, label %if.else.190

if.then.188:                                      ; preds = %land.lhs.true.184
  %150 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !tbaa !5
  %151 = load i8*, i8** %progname, align 8, !tbaa !5
  %152 = load i8*, i8** %hint, align 8, !tbaa !5
  %153 = load i8*, i8** %typename, align 8, !tbaa !5
  %call189 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %150, i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.9, i32 0, i32 0), i8* %151, i8* %152, i8* %153)
  br label %if.end.194

if.else.190:                                      ; preds = %land.lhs.true.184, %if.then.179
  %154 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !tbaa !5
  %155 = load i8*, i8** %progname, align 8, !tbaa !5
  %156 = load i8*, i8** %typename, align 8, !tbaa !5
  %157 = load i8*, i8** %mapname, align 8, !tbaa !5
  %call191 = call i32* @__errno_location() #9
  %158 = load i32, i32* %call191, align 4, !tbaa !1
  %call192 = call i8* @sm_errstring(i32 %158)
  %call193 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %154, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.10, i32 0, i32 0), i8* %155, i8* %156, i8* %157, i8* %call192)
  br label %if.end.194

if.end.194:                                       ; preds = %if.else.190, %if.then.188
  call void @exit(i32 73) #8
  unreachable

if.end.195:                                       ; preds = %if.end.173
  %159 = load %struct.database_struct*, %struct.database_struct** %database, align 8, !tbaa !5
  %smdb_sync = getelementptr inbounds %struct.database_struct, %struct.database_struct* %159, i32 0, i32 5
  %160 = load i32 (%struct.database_struct*, i32)*, i32 (%struct.database_struct*, i32)** %smdb_sync, align 8, !tbaa !21
  %161 = load %struct.database_struct*, %struct.database_struct** %database, align 8, !tbaa !5
  %call196 = call i32 %160(%struct.database_struct* %161, i32 0)
  %call197 = call i32 @geteuid() #1
  %cmp198 = icmp eq i32 %call197, 0
  br i1 %cmp198, label %land.lhs.true.200, label %if.end.214

land.lhs.true.200:                                ; preds = %if.end.195
  %162 = load i32, i32* @TrustedUid, align 4, !tbaa !1
  %cmp201 = icmp ne i32 %162, 0
  br i1 %cmp201, label %if.then.203, label %if.end.214

if.then.203:                                      ; preds = %land.lhs.true.200
  %163 = load %struct.database_struct*, %struct.database_struct** %database, align 8, !tbaa !5
  %smdb_set_owner = getelementptr inbounds %struct.database_struct, %struct.database_struct* %163, i32 0, i32 6
  %164 = load i32 (%struct.database_struct*, i32, i32)*, i32 (%struct.database_struct*, i32, i32)** %smdb_set_owner, align 8, !tbaa !23
  %165 = load %struct.database_struct*, %struct.database_struct** %database, align 8, !tbaa !5
  %166 = load i32, i32* @TrustedUid, align 4, !tbaa !1
  %call204 = call i32 %164(%struct.database_struct* %165, i32 %166, i32 -1)
  %call205 = call i32* @__errno_location() #9
  store i32 %call204, i32* %call205, align 4, !tbaa !1
  %call206 = call i32* @__errno_location() #9
  %167 = load i32, i32* %call206, align 4, !tbaa !1
  %cmp207 = icmp ne i32 %167, 0
  br i1 %cmp207, label %if.then.209, label %if.end.213

if.then.209:                                      ; preds = %if.then.203
  %168 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !tbaa !5
  %169 = load i8*, i8** %mapname, align 8, !tbaa !5
  %call210 = call i32* @__errno_location() #9
  %170 = load i32, i32* %call210, align 4, !tbaa !1
  %call211 = call i8* @sm_errstring(i32 %170)
  %call212 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %168, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.11, i32 0, i32 0), i8* %169, i8* %call211)
  br label %if.end.213

if.end.213:                                       ; preds = %if.then.209, %if.then.203
  br label %if.end.214

if.end.214:                                       ; preds = %if.end.213, %land.lhs.true.200, %if.end.195
  store i32 0, i32* %exitstat, align 4, !tbaa !1
  %171 = load i32, i32* %query, align 4, !tbaa !1
  %tobool215 = icmp ne i32 %171, 0
  br i1 %tobool215, label %if.then.216, label %if.else.236

if.then.216:                                      ; preds = %if.end.214
  %172 = bitcast %struct.entry_struct* %db_key to i8*
  call void @llvm.memset.p0i8.i64(i8* %172, i8 0, i64 16, i32 8, i1 false)
  %173 = bitcast %struct.entry_struct* %db_val to i8*
  call void @llvm.memset.p0i8.i64(i8* %173, i8 0, i64 16, i32 8, i1 false)
  %174 = load i8*, i8** %keyname, align 8, !tbaa !5
  %data = getelementptr inbounds %struct.entry_struct, %struct.entry_struct* %db_key, i32 0, i32 0
  store i8* %174, i8** %data, align 8, !tbaa !24
  %175 = load i8*, i8** %keyname, align 8, !tbaa !5
  %call217 = call i64 @strlen(i8* %175) #7
  %size = getelementptr inbounds %struct.entry_struct, %struct.entry_struct* %db_key, i32 0, i32 1
  store i64 %call217, i64* %size, align 8, !tbaa !26
  %176 = load i32, i32* %inclnull, align 4, !tbaa !1
  %tobool218 = icmp ne i32 %176, 0
  br i1 %tobool218, label %if.then.219, label %if.end.222

if.then.219:                                      ; preds = %if.then.216
  %size220 = getelementptr inbounds %struct.entry_struct, %struct.entry_struct* %db_key, i32 0, i32 1
  %177 = load i64, i64* %size220, align 8, !tbaa !26
  %inc221 = add i64 %177, 1
  store i64 %inc221, i64* %size220, align 8, !tbaa !26
  br label %if.end.222

if.end.222:                                       ; preds = %if.then.219, %if.then.216
  %178 = load %struct.database_struct*, %struct.database_struct** %database, align 8, !tbaa !5
  %smdb_get = getelementptr inbounds %struct.database_struct, %struct.database_struct* %178, i32 0, i32 3
  %179 = load i32 (%struct.database_struct*, %struct.entry_struct*, %struct.entry_struct*, i32)*, i32 (%struct.database_struct*, %struct.entry_struct*, %struct.entry_struct*, i32)** %smdb_get, align 8, !tbaa !27
  %180 = load %struct.database_struct*, %struct.database_struct** %database, align 8, !tbaa !5
  %call223 = call i32 %179(%struct.database_struct* %180, %struct.entry_struct* %db_key, %struct.entry_struct* %db_val, i32 0)
  %call224 = call i32* @__errno_location() #9
  store i32 %call223, i32* %call224, align 4, !tbaa !1
  %call225 = call i32* @__errno_location() #9
  %181 = load i32, i32* %call225, align 4, !tbaa !1
  %cmp226 = icmp ne i32 %181, 0
  br i1 %cmp226, label %if.then.228, label %if.else.230

if.then.228:                                      ; preds = %if.end.222
  %182 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !tbaa !5
  %183 = load i8*, i8** %progname, align 8, !tbaa !5
  %184 = load i8*, i8** %keyname, align 8, !tbaa !5
  %185 = load i8*, i8** %mapname, align 8, !tbaa !5
  %call229 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %182, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.12, i32 0, i32 0), i8* %183, i8* %184, i8* %185)
  store i32 69, i32* %exitstat, align 4, !tbaa !1
  br label %if.end.235

if.else.230:                                      ; preds = %if.end.222
  %size231 = getelementptr inbounds %struct.entry_struct, %struct.entry_struct* %db_val, i32 0, i32 1
  %186 = load i64, i64* %size231, align 8, !tbaa !26
  %conv232 = trunc i64 %186 to i32
  %data233 = getelementptr inbounds %struct.entry_struct, %struct.entry_struct* %db_val, i32 0, i32 0
  %187 = load i8*, i8** %data233, align 8, !tbaa !24
  %call234 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.13, i32 0, i32 0), i32 %conv232, i8* %187)
  br label %if.end.235

if.end.235:                                       ; preds = %if.else.230, %if.then.228
  br label %if.end.287

if.else.236:                                      ; preds = %if.end.214
  %188 = load i32, i32* %update, align 4, !tbaa !1
  %tobool237 = icmp ne i32 %188, 0
  br i1 %tobool237, label %if.then.238, label %if.else.265

if.then.238:                                      ; preds = %if.else.236
  %189 = bitcast %struct.entry_struct* %db_key to i8*
  call void @llvm.memset.p0i8.i64(i8* %189, i8 0, i64 16, i32 8, i1 false)
  %190 = bitcast %struct.entry_struct* %db_val to i8*
  call void @llvm.memset.p0i8.i64(i8* %190, i8 0, i64 16, i32 8, i1 false)
  %191 = load i8*, i8** %keyname, align 8, !tbaa !5
  %data239 = getelementptr inbounds %struct.entry_struct, %struct.entry_struct* %db_key, i32 0, i32 0
  store i8* %191, i8** %data239, align 8, !tbaa !24
  %192 = load i8*, i8** %keyname, align 8, !tbaa !5
  %call240 = call i64 @strlen(i8* %192) #7
  %size241 = getelementptr inbounds %struct.entry_struct, %struct.entry_struct* %db_key, i32 0, i32 1
  store i64 %call240, i64* %size241, align 8, !tbaa !26
  %193 = load i32, i32* %inclnull, align 4, !tbaa !1
  %tobool242 = icmp ne i32 %193, 0
  br i1 %tobool242, label %if.then.243, label %if.end.246

if.then.243:                                      ; preds = %if.then.238
  %size244 = getelementptr inbounds %struct.entry_struct, %struct.entry_struct* %db_key, i32 0, i32 1
  %194 = load i64, i64* %size244, align 8, !tbaa !26
  %inc245 = add i64 %194, 1
  store i64 %inc245, i64* %size244, align 8, !tbaa !26
  br label %if.end.246

if.end.246:                                       ; preds = %if.then.243, %if.then.238
  %195 = load i8*, i8** %value, align 8, !tbaa !5
  %data247 = getelementptr inbounds %struct.entry_struct, %struct.entry_struct* %db_val, i32 0, i32 0
  store i8* %195, i8** %data247, align 8, !tbaa !24
  %196 = load i8*, i8** %value, align 8, !tbaa !5
  %call248 = call i64 @strlen(i8* %196) #7
  %size249 = getelementptr inbounds %struct.entry_struct, %struct.entry_struct* %db_val, i32 0, i32 1
  store i64 %call248, i64* %size249, align 8, !tbaa !26
  %197 = load i32, i32* %inclnull, align 4, !tbaa !1
  %tobool250 = icmp ne i32 %197, 0
  br i1 %tobool250, label %if.then.251, label %if.end.254

if.then.251:                                      ; preds = %if.end.246
  %size252 = getelementptr inbounds %struct.entry_struct, %struct.entry_struct* %db_val, i32 0, i32 1
  %198 = load i64, i64* %size252, align 8, !tbaa !26
  %inc253 = add i64 %198, 1
  store i64 %inc253, i64* %size252, align 8, !tbaa !26
  br label %if.end.254

if.end.254:                                       ; preds = %if.then.251, %if.end.246
  %199 = load %struct.database_struct*, %struct.database_struct** %database, align 8, !tbaa !5
  %smdb_put = getelementptr inbounds %struct.database_struct, %struct.database_struct* %199, i32 0, i32 4
  %200 = load i32 (%struct.database_struct*, %struct.entry_struct*, %struct.entry_struct*, i32)*, i32 (%struct.database_struct*, %struct.entry_struct*, %struct.entry_struct*, i32)** %smdb_put, align 8, !tbaa !28
  %201 = load %struct.database_struct*, %struct.database_struct** %database, align 8, !tbaa !5
  %202 = load i32, i32* %putflags, align 4, !tbaa !1
  %call255 = call i32 %200(%struct.database_struct* %201, %struct.entry_struct* %db_key, %struct.entry_struct* %db_val, i32 %202)
  %call256 = call i32* @__errno_location() #9
  store i32 %call255, i32* %call256, align 4, !tbaa !1
  %call257 = call i32* @__errno_location() #9
  %203 = load i32, i32* %call257, align 4, !tbaa !1
  %cmp258 = icmp ne i32 %203, 0
  br i1 %cmp258, label %if.then.260, label %if.end.264

if.then.260:                                      ; preds = %if.end.254
  %204 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !tbaa !5
  %205 = load i8*, i8** %progname, align 8, !tbaa !5
  %206 = load i8*, i8** %keyname, align 8, !tbaa !5
  %207 = load i8*, i8** %value, align 8, !tbaa !5
  %208 = load i8*, i8** %mapname, align 8, !tbaa !5
  %call261 = call i32* @__errno_location() #9
  %209 = load i32, i32* %call261, align 4, !tbaa !1
  %call262 = call i8* @sm_errstring(i32 %209)
  %call263 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %204, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.14, i32 0, i32 0), i8* %205, i8* %206, i8* %207, i8* %208, i8* %call262)
  store i32 74, i32* %exitstat, align 4, !tbaa !1
  br label %if.end.264

if.end.264:                                       ; preds = %if.then.260, %if.end.254
  br label %if.end.286

if.else.265:                                      ; preds = %if.else.236
  %210 = load i32, i32* %remove, align 4, !tbaa !1
  %tobool266 = icmp ne i32 %210, 0
  br i1 %tobool266, label %if.then.267, label %if.else.284

if.then.267:                                      ; preds = %if.else.265
  %211 = bitcast %struct.entry_struct* %db_key to i8*
  call void @llvm.memset.p0i8.i64(i8* %211, i8 0, i64 16, i32 8, i1 false)
  %212 = bitcast %struct.entry_struct* %db_val to i8*
  call void @llvm.memset.p0i8.i64(i8* %212, i8 0, i64 16, i32 8, i1 false)
  %213 = load i8*, i8** %keyname, align 8, !tbaa !5
  %data268 = getelementptr inbounds %struct.entry_struct, %struct.entry_struct* %db_key, i32 0, i32 0
  store i8* %213, i8** %data268, align 8, !tbaa !24
  %214 = load i8*, i8** %keyname, align 8, !tbaa !5
  %call269 = call i64 @strlen(i8* %214) #7
  %size270 = getelementptr inbounds %struct.entry_struct, %struct.entry_struct* %db_key, i32 0, i32 1
  store i64 %call269, i64* %size270, align 8, !tbaa !26
  %215 = load i32, i32* %inclnull, align 4, !tbaa !1
  %tobool271 = icmp ne i32 %215, 0
  br i1 %tobool271, label %if.then.272, label %if.end.275

if.then.272:                                      ; preds = %if.then.267
  %size273 = getelementptr inbounds %struct.entry_struct, %struct.entry_struct* %db_key, i32 0, i32 1
  %216 = load i64, i64* %size273, align 8, !tbaa !26
  %inc274 = add i64 %216, 1
  store i64 %inc274, i64* %size273, align 8, !tbaa !26
  br label %if.end.275

if.end.275:                                       ; preds = %if.then.272, %if.then.267
  %217 = load %struct.database_struct*, %struct.database_struct** %database, align 8, !tbaa !5
  %smdb_del = getelementptr inbounds %struct.database_struct, %struct.database_struct* %217, i32 0, i32 1
  %218 = load i32 (%struct.database_struct*, %struct.entry_struct*, i32)*, i32 (%struct.database_struct*, %struct.entry_struct*, i32)** %smdb_del, align 8, !tbaa !29
  %219 = load %struct.database_struct*, %struct.database_struct** %database, align 8, !tbaa !5
  %call276 = call i32 %218(%struct.database_struct* %219, %struct.entry_struct* %db_key, i32 0)
  %call277 = call i32* @__errno_location() #9
  store i32 %call276, i32* %call277, align 4, !tbaa !1
  %call278 = call i32* @__errno_location() #9
  %220 = load i32, i32* %call278, align 4, !tbaa !1
  switch i32 %220, label %sw.default.281 [
    i32 302, label %sw.bb.279
    i32 0, label %sw.epilog.283
  ]

sw.bb.279:                                        ; preds = %if.end.275
  %221 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !tbaa !5
  %222 = load i8*, i8** %progname, align 8, !tbaa !5
  %223 = load i8*, i8** %keyname, align 8, !tbaa !5
  %224 = load i8*, i8** %mapname, align 8, !tbaa !5
  %call280 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %221, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.15, i32 0, i32 0), i8* %222, i8* %223, i8* %224)
  br label %sw.epilog.283

sw.default.281:                                   ; preds = %if.end.275
  %225 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !tbaa !5
  %226 = load i8*, i8** %progname, align 8, !tbaa !5
  %227 = load i8*, i8** %keyname, align 8, !tbaa !5
  %228 = load i8*, i8** %mapname, align 8, !tbaa !5
  %call282 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %225, i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.16, i32 0, i32 0), i8* %226, i8* %227, i8* %228)
  store i32 74, i32* %exitstat, align 4, !tbaa !1
  br label %sw.epilog.283

sw.epilog.283:                                    ; preds = %sw.default.281, %if.end.275, %sw.bb.279
  br label %if.end.285

if.else.284:                                      ; preds = %if.else.265
  call void @__assert_fail(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.3, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.4, i32 0, i32 0), i32 398, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @__PRETTY_FUNCTION__.main, i32 0, i32 0)) #8
  unreachable

if.end.285:                                       ; preds = %sw.epilog.283
  br label %if.end.286

if.end.286:                                       ; preds = %if.end.285, %if.end.264
  br label %if.end.287

if.end.287:                                       ; preds = %if.end.286, %if.end.235
  %229 = load %struct.database_struct*, %struct.database_struct** %database, align 8, !tbaa !5
  %smdb_close = getelementptr inbounds %struct.database_struct, %struct.database_struct* %229, i32 0, i32 0
  %230 = load i32 (%struct.database_struct*)*, i32 (%struct.database_struct*)** %smdb_close, align 8, !tbaa !30
  %231 = load %struct.database_struct*, %struct.database_struct** %database, align 8, !tbaa !5
  %call288 = call i32 %230(%struct.database_struct* %231)
  %call289 = call i32* @__errno_location() #9
  store i32 %call288, i32* %call289, align 4, !tbaa !1
  %call290 = call i32* @__errno_location() #9
  %232 = load i32, i32* %call290, align 4, !tbaa !1
  %cmp291 = icmp ne i32 %232, 0
  br i1 %cmp291, label %if.then.293, label %if.end.297

if.then.293:                                      ; preds = %if.end.287
  %233 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !tbaa !5
  %234 = load i8*, i8** %progname, align 8, !tbaa !5
  %235 = load i8*, i8** %mapname, align 8, !tbaa !5
  %call294 = call i32* @__errno_location() #9
  %236 = load i32, i32* %call294, align 4, !tbaa !1
  %call295 = call i8* @sm_errstring(i32 %236)
  %call296 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %233, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.17, i32 0, i32 0), i8* %234, i8* %235, i8* %call295)
  store i32 74, i32* %exitstat, align 4, !tbaa !1
  br label %if.end.297

if.end.297:                                       ; preds = %if.then.293, %if.end.287
  %237 = load %struct.database_struct*, %struct.database_struct** %database, align 8, !tbaa !5
  call void @smdb_free_database(%struct.database_struct* %237)
  %238 = load i32, i32* %exitstat, align 4, !tbaa !1
  call void @exit(i32 %238) #8
  unreachable

return:                                           ; No predecessors!
  %239 = load i32, i32* %retval
  ret i32 %239

unreachable:                                      ; preds = %cleanup
  unreachable
}

; Function Attrs: nounwind
declare void @llvm.lifetime.start(i64, i8* nocapture) #1

; Function Attrs: nounwind
declare void @llvm.memset.p0i8.i64(i8* nocapture, i8, i64, i32, i1) #1

; Function Attrs: nounwind readonly
declare i8* @strrchr(i8*, i32) #2

; Function Attrs: nounwind
declare i32 @getuid() #3

; Function Attrs: nounwind
declare i32 @getgid() #3

declare %struct.passwd* @getpwuid(i32) #4

declare i64 @sm_strlcpy(i8*, i8*, i64) #4

declare i32 @sm_snprintf(i8*, i64, i8*, ...) #4

; Function Attrs: nounwind
declare i32 @getopt(i32, i8**, i8*) #3

; Function Attrs: nounwind uwtable
define internal void @usage(i8* %progname) #0 {
entry:
  %progname.addr = alloca i8*, align 8
  store i8* %progname, i8** %progname.addr, align 8, !tbaa !5
  %0 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !tbaa !5
  %1 = load i8*, i8** %progname.addr, align 8, !tbaa !5
  %call = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %0, i8* getelementptr inbounds ([80 x i8], [80 x i8]* @.str.18, i32 0, i32 0), i8* %1)
  call void @exit(i32 64) #8
  unreachable

return:                                           ; No predecessors!
  ret void
}

; Function Attrs: noreturn nounwind
declare void @__assert_fail(i8*, i8*, i32, i8*) #5

; Function Attrs: nounwind readnone
declare i16** @__ctype_b_loc() #6

; Function Attrs: nounwind readnone
declare i32** @__ctype_tolower_loc() #6

; Function Attrs: nounwind
declare void @llvm.lifetime.end(i64, i8* nocapture) #1

declare %struct._IO_FILE* @fopen(i8*, i8*) #4

declare i32 @fprintf(%struct._IO_FILE*, i8*, ...) #4

declare i8* @sm_errstring(i32) #4

; Function Attrs: nounwind readnone
declare i32* @__errno_location() #6

; Function Attrs: noreturn nounwind
declare void @exit(i32) #5

declare i8* @fgets(i8*, i32, %struct._IO_FILE*) #4

; Function Attrs: nounwind
declare i8* @strchr(i8*, i32) #3

; Function Attrs: nounwind readonly
declare i32 @strncasecmp(i8*, i8*, i64) #2

; Function Attrs: nounwind readonly
declare i32 @atoi(i8*) #2

declare %struct.passwd* @getpwnam(i8*) #4

declare i32 @fclose(%struct._IO_FILE*) #4

declare i32 @smdb_open_database(%struct.database_struct**, i8*, i32, i32, i64, i8*, %struct.database_user_struct*, %struct.database_params_struct*) #4

declare i8* @smdb_db_definition(i8*) #4

; Function Attrs: nounwind
declare i32 @geteuid() #3

; Function Attrs: nounwind readonly
declare i64 @strlen(i8*) #2

declare i32 @printf(i8*, ...) #4

declare void @smdb_free_database(%struct.database_struct*) #4

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { nounwind readonly "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
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
!7 = !{!8, !8, i64 0}
!8 = !{!"long", !3, i64 0}
!9 = !{!10, !2, i64 4}
!10 = !{!"database_params_struct", !2, i64 0, !2, i64 4, !2, i64 8}
!11 = !{!12, !6, i64 0}
!12 = !{!"passwd", !6, i64 0, !6, i64 8, !2, i64 16, !2, i64 20, !6, i64 24, !6, i64 32, !6, i64 40}
!13 = !{!14, !2, i64 0}
!14 = !{!"database_user_struct", !2, i64 0, !2, i64 4, !3, i64 8}
!15 = !{!14, !2, i64 4}
!16 = !{!3, !3, i64 0}
!17 = !{!18, !18, i64 0}
!18 = !{!"short", !3, i64 0}
!19 = !{!12, !2, i64 16}
!20 = !{!10, !2, i64 0}
!21 = !{!22, !6, i64 40}
!22 = !{!"database_struct", !6, i64 0, !6, i64 8, !6, i64 16, !6, i64 24, !6, i64 32, !6, i64 40, !6, i64 48, !6, i64 56, !6, i64 64, !6, i64 72}
!23 = !{!22, !6, i64 48}
!24 = !{!25, !6, i64 0}
!25 = !{!"entry_struct", !6, i64 0, !8, i64 8}
!26 = !{!25, !8, i64 8}
!27 = !{!22, !6, i64 24}
!28 = !{!22, !6, i64 32}
!29 = !{!22, !6, i64 8}
!30 = !{!22, !6, i64 0}
