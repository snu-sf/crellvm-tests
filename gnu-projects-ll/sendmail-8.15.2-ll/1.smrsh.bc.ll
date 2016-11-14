; ModuleID = '1.smrsh.bc'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sm_file = type { i8*, i8*, i32, i32, i64, i16, %struct.smbuf, i32, i8*, i32, i32 (%struct.sm_file*)*, i64 (%struct.sm_file*, i8*, i64)*, i64 (%struct.sm_file*, i64, i32)*, i64 (%struct.sm_file*, i8*, i64)*, i32 (%struct.sm_file*, i8*, i32, i8*)*, i32 (%struct.sm_file*, i32, i8*)*, i32 (%struct.sm_file*, i32, i8*)*, i32, i32, i8*, %struct.sm_file*, %struct.sm_file*, %struct.smbuf, i8*, i32, [3 x i8], [1 x i8], i32, i64, i32 }
%struct.smbuf = type { i8*, i32 }
%struct.stat = type { i64, i64, i64, i32, i32, i32, i32, i64, i64, i64, i64, %struct.timespec, %struct.timespec, %struct.timespec, [3 x i64] }
%struct.timespec = type { i64, i64 }

@.str = private unnamed_addr constant [6 x i8] c"smrsh\00", align 1
@.str.1 = private unnamed_addr constant [6 x i8] c"PATH=\00", align 1
@.str.2 = private unnamed_addr constant [23 x i8] c"/bin:/usr/bin:/usr/ucb\00", align 1
@prg = common global i8* null, align 8
@.str.3 = private unnamed_addr constant [3 x i8] c"-c\00", align 1
@SmIoF = external global [0 x %struct.sm_file], align 8
@.str.4 = private unnamed_addr constant [22 x i8] c"Usage: %s -c command\0A\00", align 1
@.str.5 = private unnamed_addr constant [6 x i8] c"usage\00", align 1
@par = common global i8* null, align 8
@.str.6 = private unnamed_addr constant [13 x i8] c"<|>^();&`$\0D\0A\00", align 1
@.str.7 = private unnamed_addr constant [26 x i8] c"%s: command too long: %s\0A\00", align 1
@.str.8 = private unnamed_addr constant [24 x i8] c"command too long: %.40s\00", align 1
@newcmdbuf = common global [1000 x i8] zeroinitializer, align 16
@.str.9 = private unnamed_addr constant [29 x i8] c"%s: missing command to exec\0A\00", align 1
@.str.10 = private unnamed_addr constant [32 x i8] c"uid %d: missing command to exec\00", align 1
@.str.11 = private unnamed_addr constant [3 x i8] c" \09\00", align 1
@.str.12 = private unnamed_addr constant [5 x i8] c"exec\00", align 1
@.str.13 = private unnamed_addr constant [6 x i8] c"exec \00", align 1
@.str.14 = private unnamed_addr constant [5 x i8] c"exit\00", align 1
@.str.15 = private unnamed_addr constant [5 x i8] c"echo\00", align 1
@.str.16 = private unnamed_addr constant [16 x i8] c"/usr/adm/sm.bin\00", align 1
@.str.17 = private unnamed_addr constant [2 x i8] c"/\00", align 1
@.str.18 = private unnamed_addr constant [66 x i8] c"%s: \22%s\22 not available for sendmail programs (filename too long)\0A\00", align 1
@.str.19 = private unnamed_addr constant [48 x i8] c"uid %d: attempt to use \22%s\22 (filename too long)\00", align 1
@.str.20 = private unnamed_addr constant [60 x i8] c"%s: \22%s\22 not available for sendmail programs (stat failed)\0A\00", align 1
@.str.21 = private unnamed_addr constant [42 x i8] c"uid %d: attempt to use \22%s\22 (stat failed)\00", align 1
@.str.22 = private unnamed_addr constant [59 x i8] c"%s: \22%s\22 not available for sendmail programs (not a file)\0A\00", align 1
@.str.23 = private unnamed_addr constant [41 x i8] c"uid %d: attempt to use \22%s\22 (not a file)\00", align 1
@.str.24 = private unnamed_addr constant [46 x i8] c"%s: \22%s\22 not available for sendmail programs\0A\00", align 1
@.str.25 = private unnamed_addr constant [28 x i8] c"uid %d: attempt to use \22%s\22\00", align 1
@.str.26 = private unnamed_addr constant [30 x i8] c"%s: cannot use %c in command\0A\00", align 1
@.str.27 = private unnamed_addr constant [41 x i8] c"uid %d: attempt to use %c in command: %s\00", align 1
@.str.28 = private unnamed_addr constant [8 x i8] c"/bin/sh\00", align 1
@.str.29 = private unnamed_addr constant [24 x i8] c"Cannot exec /bin/sh: %s\00", align 1

; Function Attrs: nounwind uwtable
define i32 @main(i32 %argc, i8** %argv) #0 {
entry:
  %retval = alloca i32, align 4
  %argc.addr = alloca i32, align 4
  %argv.addr = alloca i8**, align 8
  %p = alloca i8*, align 8
  %q = alloca i8*, align 8
  %r = alloca i8*, align 8
  %cmd = alloca i8*, align 8
  %isexec = alloca i32, align 4
  %save_errno = alloca i32, align 4
  %newenv = alloca [2 x i8*], align 16
  %pathbuf = alloca [1000 x i8], align 16
  %specialbuf = alloca [32 x i8], align 16
  %st = alloca %struct.stat, align 8
  %__s1_len = alloca i64, align 8
  %__s2_len = alloca i64, align 8
  %tmp = alloca i32, align 4
  %__s1 = alloca i8*, align 8
  %__result = alloca i32, align 4
  %tmp41 = alloca i32, align 4
  %__a0 = alloca i8, align 1
  %__a1 = alloca i8, align 1
  %__a2 = alloca i8, align 1
  %tmp97 = alloca i8*, align 8
  %__s1_len161 = alloca i64, align 8
  %__s2_len163 = alloca i64, align 8
  %tmp164 = alloca i32, align 4
  %__s1170 = alloca i8*, align 8
  %__result172 = alloca i32, align 4
  %tmp210 = alloca i32, align 4
  %__s1_len224 = alloca i64, align 8
  %__s2_len226 = alloca i64, align 8
  %tmp227 = alloca i32, align 4
  %__s1233 = alloca i8*, align 8
  %__result235 = alloca i32, align 4
  %tmp273 = alloca i32, align 4
  %__s1_len282 = alloca i64, align 8
  %__s2_len284 = alloca i64, align 8
  %tmp285 = alloca i32, align 4
  %__s1291 = alloca i8*, align 8
  %__result293 = alloca i32, align 4
  %tmp331 = alloca i32, align 4
  %cmdbuf = alloca [4096 x i8], align 16
  %__a0403 = alloca i8, align 1
  %__a1405 = alloca i8, align 1
  %__a2407 = alloca i8, align 1
  %tmp408 = alloca i8*, align 8
  store i32 0, i32* %retval
  store i32 %argc, i32* %argc.addr, align 4, !tbaa !1
  store i8** %argv, i8*** %argv.addr, align 8, !tbaa !5
  %0 = bitcast i8** %p to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #1
  %1 = bitcast i8** %q to i8*
  call void @llvm.lifetime.start(i64 8, i8* %1) #1
  %2 = bitcast i8** %r to i8*
  call void @llvm.lifetime.start(i64 8, i8* %2) #1
  %3 = bitcast i8** %cmd to i8*
  call void @llvm.lifetime.start(i64 8, i8* %3) #1
  %4 = bitcast i32* %isexec to i8*
  call void @llvm.lifetime.start(i64 4, i8* %4) #1
  %5 = bitcast i32* %save_errno to i8*
  call void @llvm.lifetime.start(i64 4, i8* %5) #1
  %6 = bitcast [2 x i8*]* %newenv to i8*
  call void @llvm.lifetime.start(i64 16, i8* %6) #1
  %7 = bitcast [1000 x i8]* %pathbuf to i8*
  call void @llvm.lifetime.start(i64 1000, i8* %7) #1
  %8 = bitcast [32 x i8]* %specialbuf to i8*
  call void @llvm.lifetime.start(i64 32, i8* %8) #1
  %9 = bitcast %struct.stat* %st to i8*
  call void @llvm.lifetime.start(i64 144, i8* %9) #1
  call void @openlog(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i32 0, i32 0), i32 6, i32 16)
  %arraydecay = getelementptr inbounds [1000 x i8], [1000 x i8]* %pathbuf, i32 0, i32 0
  %call = call i64 (i8*, i64, i32, ...) @sm_strlcpyn(i8* %arraydecay, i64 1000, i32 2, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.2, i32 0, i32 0))
  %arraydecay1 = getelementptr inbounds [1000 x i8], [1000 x i8]* %pathbuf, i32 0, i32 0
  %arrayidx = getelementptr inbounds [2 x i8*], [2 x i8*]* %newenv, i32 0, i64 0
  store i8* %arraydecay1, i8** %arrayidx, align 8, !tbaa !5
  %arrayidx2 = getelementptr inbounds [2 x i8*], [2 x i8*]* %newenv, i32 0, i64 1
  store i8* null, i8** %arrayidx2, align 8, !tbaa !5
  %10 = load i8**, i8*** %argv.addr, align 8, !tbaa !5
  %arrayidx3 = getelementptr inbounds i8*, i8** %10, i64 0
  %11 = load i8*, i8** %arrayidx3, align 8, !tbaa !5
  store i8* %11, i8** @prg, align 8, !tbaa !5
  %12 = load i32, i32* %argc.addr, align 4, !tbaa !1
  %cmp = icmp ne i32 %12, 3
  br i1 %cmp, label %if.then.46, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %entry
  %13 = bitcast i64* %__s1_len to i8*
  call void @llvm.lifetime.start(i64 8, i8* %13) #1
  %14 = bitcast i64* %__s2_len to i8*
  call void @llvm.lifetime.start(i64 8, i8* %14) #1
  br i1 icmp eq (i64 sub (i64 ptrtoint (i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.3, i32 0, i64 1) to i64), i64 ptrtoint ([3 x i8]* @.str.3 to i64)), i64 1), label %land.lhs.true, label %cond.false

land.lhs.true:                                    ; preds = %lor.lhs.false
  store i64 2, i64* %__s2_len, align 8, !tbaa !7
  %15 = load i64, i64* %__s2_len, align 8, !tbaa !7
  %cmp4 = icmp ult i64 %15, 4
  br i1 %cmp4, label %cond.true, label %cond.false

cond.true:                                        ; preds = %land.lhs.true
  %16 = bitcast i8** %__s1 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %16) #1
  %17 = load i8**, i8*** %argv.addr, align 8, !tbaa !5
  %arrayidx6 = getelementptr inbounds i8*, i8** %17, i64 1
  %18 = load i8*, i8** %arrayidx6, align 8, !tbaa !5
  store i8* %18, i8** %__s1, align 8, !tbaa !5
  %19 = bitcast i32* %__result to i8*
  call void @llvm.lifetime.start(i64 4, i8* %19) #1
  %20 = load i8*, i8** %__s1, align 8, !tbaa !5
  %arrayidx8 = getelementptr inbounds i8, i8* %20, i64 0
  %21 = load i8, i8* %arrayidx8, align 1, !tbaa !9
  %conv = zext i8 %21 to i32
  %22 = load i8, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.3, i32 0, i32 0), align 1, !tbaa !9
  %conv9 = zext i8 %22 to i32
  %sub = sub nsw i32 %conv, %conv9
  store i32 %sub, i32* %__result, align 4, !tbaa !1
  %23 = load i64, i64* %__s2_len, align 8, !tbaa !7
  %cmp10 = icmp ugt i64 %23, 0
  br i1 %cmp10, label %land.lhs.true.12, label %if.end.40

land.lhs.true.12:                                 ; preds = %cond.true
  %24 = load i32, i32* %__result, align 4, !tbaa !1
  %cmp13 = icmp eq i32 %24, 0
  br i1 %cmp13, label %if.then, label %if.end.40

if.then:                                          ; preds = %land.lhs.true.12
  %25 = load i8*, i8** %__s1, align 8, !tbaa !5
  %arrayidx15 = getelementptr inbounds i8, i8* %25, i64 1
  %26 = load i8, i8* %arrayidx15, align 1, !tbaa !9
  %conv16 = zext i8 %26 to i32
  %27 = load i8, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.3, i32 0, i64 1), align 1, !tbaa !9
  %conv17 = zext i8 %27 to i32
  %sub18 = sub nsw i32 %conv16, %conv17
  store i32 %sub18, i32* %__result, align 4, !tbaa !1
  %28 = load i64, i64* %__s2_len, align 8, !tbaa !7
  %cmp19 = icmp ugt i64 %28, 1
  br i1 %cmp19, label %land.lhs.true.21, label %if.end.39

land.lhs.true.21:                                 ; preds = %if.then
  %29 = load i32, i32* %__result, align 4, !tbaa !1
  %cmp22 = icmp eq i32 %29, 0
  br i1 %cmp22, label %if.then.24, label %if.end.39

if.then.24:                                       ; preds = %land.lhs.true.21
  %30 = load i8*, i8** %__s1, align 8, !tbaa !5
  %arrayidx25 = getelementptr inbounds i8, i8* %30, i64 2
  %31 = load i8, i8* %arrayidx25, align 1, !tbaa !9
  %conv26 = zext i8 %31 to i32
  %32 = load i8, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.3, i32 0, i64 2), align 1, !tbaa !9
  %conv27 = zext i8 %32 to i32
  %sub28 = sub nsw i32 %conv26, %conv27
  store i32 %sub28, i32* %__result, align 4, !tbaa !1
  %33 = load i64, i64* %__s2_len, align 8, !tbaa !7
  %cmp29 = icmp ugt i64 %33, 2
  br i1 %cmp29, label %land.lhs.true.31, label %if.end

land.lhs.true.31:                                 ; preds = %if.then.24
  %34 = load i32, i32* %__result, align 4, !tbaa !1
  %cmp32 = icmp eq i32 %34, 0
  br i1 %cmp32, label %if.then.34, label %if.end

if.then.34:                                       ; preds = %land.lhs.true.31
  %35 = load i8*, i8** %__s1, align 8, !tbaa !5
  %arrayidx35 = getelementptr inbounds i8, i8* %35, i64 3
  %36 = load i8, i8* %arrayidx35, align 1, !tbaa !9
  %conv36 = zext i8 %36 to i32
  %37 = load i8, i8* getelementptr inbounds (i8, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.3, i32 0, i32 0), i64 3), align 1, !tbaa !9
  %conv37 = zext i8 %37 to i32
  %sub38 = sub nsw i32 %conv36, %conv37
  store i32 %sub38, i32* %__result, align 4, !tbaa !1
  br label %if.end

if.end:                                           ; preds = %if.then.34, %land.lhs.true.31, %if.then.24
  br label %if.end.39

if.end.39:                                        ; preds = %if.end, %land.lhs.true.21, %if.then
  br label %if.end.40

if.end.40:                                        ; preds = %if.end.39, %land.lhs.true.12, %cond.true
  %38 = load i32, i32* %__result, align 4, !tbaa !1
  store i32 %38, i32* %tmp41, !tbaa !1
  %39 = bitcast i32* %__result to i8*
  call void @llvm.lifetime.end(i64 4, i8* %39) #1
  %40 = bitcast i8** %__s1 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %40) #1
  %41 = load i32, i32* %tmp41, !tbaa !1
  br label %cond.end

cond.false:                                       ; preds = %land.lhs.true, %lor.lhs.false
  %42 = load i8**, i8*** %argv.addr, align 8, !tbaa !5
  %arrayidx42 = getelementptr inbounds i8*, i8** %42, i64 1
  %43 = load i8*, i8** %arrayidx42, align 8, !tbaa !5
  %call43 = call i32 @strcmp(i8* %43, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.3, i32 0, i32 0)) #1
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %if.end.40
  %cond = phi i32 [ %41, %if.end.40 ], [ %call43, %cond.false ]
  store i32 %cond, i32* %tmp, !tbaa !1
  %44 = bitcast i64* %__s2_len to i8*
  call void @llvm.lifetime.end(i64 8, i8* %44) #1
  %45 = bitcast i64* %__s1_len to i8*
  call void @llvm.lifetime.end(i64 8, i8* %45) #1
  %46 = load i32, i32* %tmp, !tbaa !1
  %cmp44 = icmp ne i32 %46, 0
  br i1 %cmp44, label %if.then.46, label %if.end.48

if.then.46:                                       ; preds = %cond.end, %entry
  %47 = load i8*, i8** @prg, align 8, !tbaa !5
  %call47 = call i32 (%struct.sm_file*, i32, i8*, ...) @sm_io_fprintf(%struct.sm_file* getelementptr inbounds ([0 x %struct.sm_file], [0 x %struct.sm_file]* @SmIoF, i32 0, i64 2), i32 -2, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.4, i32 0, i32 0), i8* %47)
  call void (i32, i8*, ...) @syslog(i32 3, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.5, i32 0, i32 0))
  call void @exit(i32 64) #8
  unreachable

if.end.48:                                        ; preds = %cond.end
  %48 = load i8**, i8*** %argv.addr, align 8, !tbaa !5
  %arrayidx49 = getelementptr inbounds i8*, i8** %48, i64 2
  %49 = load i8*, i8** %arrayidx49, align 8, !tbaa !5
  store i8* %49, i8** @par, align 8, !tbaa !5
  %arraydecay50 = getelementptr inbounds [32 x i8], [32 x i8]* %specialbuf, i32 0, i32 0
  %call51 = call i64 @sm_strlcpy(i8* %arraydecay50, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.6, i32 0, i32 0), i64 32)
  %arraydecay52 = getelementptr inbounds [32 x i8], [32 x i8]* %specialbuf, i32 0, i32 0
  store i8* %arraydecay52, i8** %p, align 8, !tbaa !5
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end.48
  %50 = load i8*, i8** %p, align 8, !tbaa !5
  %51 = load i8, i8* %50, align 1, !tbaa !9
  %conv53 = sext i8 %51 to i32
  %cmp54 = icmp ne i32 %conv53, 0
  br i1 %cmp54, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %52 = load i8*, i8** %p, align 8, !tbaa !5
  %53 = load i8, i8* %52, align 1, !tbaa !9
  %conv56 = sext i8 %53 to i32
  %or = or i32 %conv56, -128
  %conv57 = trunc i32 %or to i8
  store i8 %conv57, i8* %52, align 1, !tbaa !9
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %54 = load i8*, i8** %p, align 8, !tbaa !5
  %incdec.ptr = getelementptr inbounds i8, i8* %54, i32 1
  store i8* %incdec.ptr, i8** %p, align 8, !tbaa !5
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %arraydecay58 = getelementptr inbounds [32 x i8], [32 x i8]* %specialbuf, i32 0, i32 0
  %call59 = call i64 @sm_strlcat(i8* %arraydecay58, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.6, i32 0, i32 0), i64 32)
  %55 = load i8*, i8** @par, align 8, !tbaa !5
  %call60 = call i64 @strlen(i8* %55) #9
  %cmp61 = icmp ugt i64 %call60, 982
  br i1 %cmp61, label %if.then.63, label %if.end.65

if.then.63:                                       ; preds = %for.end
  %56 = load i8*, i8** @prg, align 8, !tbaa !5
  %57 = load i8*, i8** @par, align 8, !tbaa !5
  %call64 = call i32 (%struct.sm_file*, i32, i8*, ...) @sm_io_fprintf(%struct.sm_file* getelementptr inbounds ([0 x %struct.sm_file], [0 x %struct.sm_file]* @SmIoF, i32 0, i64 2), i32 -2, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.7, i32 0, i32 0), i8* %56, i8* %57)
  %58 = load i8*, i8** @par, align 8, !tbaa !5
  call void (i32, i8*, ...) @syslog(i32 4, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.8, i32 0, i32 0), i8* %58)
  call void @exit(i32 69) #8
  unreachable

if.end.65:                                        ; preds = %for.end
  %59 = load i8*, i8** @par, align 8, !tbaa !5
  store i8* %59, i8** %q, align 8, !tbaa !5
  store i8 0, i8* getelementptr inbounds ([1000 x i8], [1000 x i8]* @newcmdbuf, i32 0, i64 0), align 1, !tbaa !9
  store i32 0, i32* %isexec, align 4, !tbaa !1
  br label %while.cond

while.cond:                                       ; preds = %if.then.432, %if.then.220, %if.end.65
  %60 = load i8*, i8** %q, align 8, !tbaa !5
  %61 = load i8, i8* %60, align 1, !tbaa !9
  %conv66 = sext i8 %61 to i32
  %cmp67 = icmp ne i32 %conv66, 0
  br i1 %cmp67, label %while.body, label %while.end.439

while.body:                                       ; preds = %while.cond
  br label %while.cond.69

while.cond.69:                                    ; preds = %while.body.82, %while.body
  %62 = load i8*, i8** %q, align 8, !tbaa !5
  %63 = load i8, i8* %62, align 1, !tbaa !9
  %conv70 = sext i8 %63 to i32
  %cmp71 = icmp ne i32 %conv70, 0
  br i1 %cmp71, label %land.lhs.true.73, label %land.end

land.lhs.true.73:                                 ; preds = %while.cond.69
  %64 = load i8*, i8** %q, align 8, !tbaa !5
  %65 = load i8, i8* %64, align 1, !tbaa !9
  %conv74 = sext i8 %65 to i32
  %and = and i32 %conv74, -128
  %cmp75 = icmp eq i32 %and, 0
  br i1 %cmp75, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %land.lhs.true.73
  %66 = load i8*, i8** %q, align 8, !tbaa !5
  %67 = load i8, i8* %66, align 1, !tbaa !9
  %conv77 = sext i8 %67 to i32
  %idxprom = sext i32 %conv77 to i64
  %call78 = call i16** @__ctype_b_loc() #10
  %68 = load i16*, i16** %call78, align 8, !tbaa !5
  %arrayidx79 = getelementptr inbounds i16, i16* %68, i64 %idxprom
  %69 = load i16, i16* %arrayidx79, align 2, !tbaa !10
  %conv80 = zext i16 %69 to i32
  %and81 = and i32 %conv80, 8192
  %tobool = icmp ne i32 %and81, 0
  br label %land.end

land.end:                                         ; preds = %land.rhs, %land.lhs.true.73, %while.cond.69
  %70 = phi i1 [ false, %land.lhs.true.73 ], [ false, %while.cond.69 ], [ %tobool, %land.rhs ]
  br i1 %70, label %while.body.82, label %while.end

while.body.82:                                    ; preds = %land.end
  %71 = load i8*, i8** %q, align 8, !tbaa !5
  %incdec.ptr83 = getelementptr inbounds i8, i8* %71, i32 1
  store i8* %incdec.ptr83, i8** %q, align 8, !tbaa !5
  br label %while.cond.69

while.end:                                        ; preds = %land.end
  %72 = load i8*, i8** %q, align 8, !tbaa !5
  %73 = load i8, i8* %72, align 1, !tbaa !9
  %conv84 = sext i8 %73 to i32
  %cmp85 = icmp eq i32 %conv84, 0
  br i1 %cmp85, label %if.then.87, label %if.end.93

if.then.87:                                       ; preds = %while.end
  %74 = load i32, i32* %isexec, align 4, !tbaa !1
  %tobool88 = icmp ne i32 %74, 0
  br i1 %tobool88, label %if.then.89, label %if.end.92

if.then.89:                                       ; preds = %if.then.87
  %75 = load i8*, i8** @prg, align 8, !tbaa !5
  %call90 = call i32 (%struct.sm_file*, i32, i8*, ...) @sm_io_fprintf(%struct.sm_file* getelementptr inbounds ([0 x %struct.sm_file], [0 x %struct.sm_file]* @SmIoF, i32 0, i64 2), i32 -2, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.9, i32 0, i32 0), i8* %75)
  %call91 = call i32 @getuid() #1
  call void (i32, i8*, ...) @syslog(i32 2, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.10, i32 0, i32 0), i32 %call91)
  call void @exit(i32 69) #8
  unreachable

if.end.92:                                        ; preds = %if.then.87
  br label %while.end.439

if.end.93:                                        ; preds = %while.end
  call void @llvm.lifetime.start(i64 1, i8* %__a0) #1
  call void @llvm.lifetime.start(i64 1, i8* %__a1) #1
  call void @llvm.lifetime.start(i64 1, i8* %__a2) #1
  br i1 icmp eq (i64 sub (i64 ptrtoint (i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.11, i32 0, i64 1) to i64), i64 ptrtoint ([3 x i8]* @.str.11 to i64)), i64 1), label %cond.true.98, label %cond.false.137

cond.true.98:                                     ; preds = %if.end.93
  %76 = load i8, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.11, i32 0, i32 0), align 1, !tbaa !9
  store i8 %76, i8* %__a0, align 1, !tbaa !9
  %77 = load i8, i8* %__a0, align 1, !tbaa !9
  %conv99 = sext i8 %77 to i32
  %cmp100 = icmp eq i32 %conv99, 0
  br i1 %cmp100, label %cond.true.102, label %cond.false.103

cond.true.102:                                    ; preds = %cond.true.98
  %78 = load i8*, i8** %q, align 8, !tbaa !5
  br label %cond.end.135

cond.false.103:                                   ; preds = %cond.true.98
  %79 = load i8, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.11, i32 0, i64 1), align 1, !tbaa !9
  store i8 %79, i8* %__a1, align 1, !tbaa !9
  %80 = load i8, i8* %__a1, align 1, !tbaa !9
  %conv104 = sext i8 %80 to i32
  %cmp105 = icmp eq i32 %conv104, 0
  br i1 %cmp105, label %cond.true.107, label %cond.false.110

cond.true.107:                                    ; preds = %cond.false.103
  %81 = load i8*, i8** %q, align 8, !tbaa !5
  %82 = load i8, i8* %__a0, align 1, !tbaa !9
  %conv108 = sext i8 %82 to i32
  %call109 = call i8* @strchr(i8* %81, i32 %conv108) #1
  br label %cond.end.133

cond.false.110:                                   ; preds = %cond.false.103
  %83 = load i8, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.11, i32 0, i64 2), align 1, !tbaa !9
  store i8 %83, i8* %__a2, align 1, !tbaa !9
  %84 = load i8, i8* %__a2, align 1, !tbaa !9
  %conv111 = sext i8 %84 to i32
  %cmp112 = icmp eq i32 %conv111, 0
  br i1 %cmp112, label %cond.true.114, label %cond.false.118

cond.true.114:                                    ; preds = %cond.false.110
  %85 = load i8*, i8** %q, align 8, !tbaa !5
  %86 = load i8, i8* %__a0, align 1, !tbaa !9
  %conv115 = sext i8 %86 to i32
  %87 = load i8, i8* %__a1, align 1, !tbaa !9
  %conv116 = sext i8 %87 to i32
  %call117 = call i8* @__strpbrk_c2(i8* %85, i32 %conv115, i32 %conv116)
  br label %cond.end.131

cond.false.118:                                   ; preds = %cond.false.110
  %88 = load i8, i8* getelementptr inbounds (i8, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.11, i32 0, i32 0), i64 3), align 1, !tbaa !9
  %conv119 = sext i8 %88 to i32
  %cmp120 = icmp eq i32 %conv119, 0
  br i1 %cmp120, label %cond.true.122, label %cond.false.127

cond.true.122:                                    ; preds = %cond.false.118
  %89 = load i8*, i8** %q, align 8, !tbaa !5
  %90 = load i8, i8* %__a0, align 1, !tbaa !9
  %conv123 = sext i8 %90 to i32
  %91 = load i8, i8* %__a1, align 1, !tbaa !9
  %conv124 = sext i8 %91 to i32
  %92 = load i8, i8* %__a2, align 1, !tbaa !9
  %conv125 = sext i8 %92 to i32
  %call126 = call i8* @__strpbrk_c3(i8* %89, i32 %conv123, i32 %conv124, i32 %conv125)
  br label %cond.end.129

cond.false.127:                                   ; preds = %cond.false.118
  %93 = load i8*, i8** %q, align 8, !tbaa !5
  %call128 = call i8* @strpbrk(i8* %93, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.11, i32 0, i32 0)) #1
  br label %cond.end.129

cond.end.129:                                     ; preds = %cond.false.127, %cond.true.122
  %cond130 = phi i8* [ %call126, %cond.true.122 ], [ %call128, %cond.false.127 ]
  br label %cond.end.131

cond.end.131:                                     ; preds = %cond.end.129, %cond.true.114
  %cond132 = phi i8* [ %call117, %cond.true.114 ], [ %cond130, %cond.end.129 ]
  br label %cond.end.133

cond.end.133:                                     ; preds = %cond.end.131, %cond.true.107
  %cond134 = phi i8* [ %call109, %cond.true.107 ], [ %cond132, %cond.end.131 ]
  br label %cond.end.135

cond.end.135:                                     ; preds = %cond.end.133, %cond.true.102
  %cond136 = phi i8* [ null, %cond.true.102 ], [ %cond134, %cond.end.133 ]
  br label %cond.end.139

cond.false.137:                                   ; preds = %if.end.93
  %94 = load i8*, i8** %q, align 8, !tbaa !5
  %call138 = call i8* @strpbrk(i8* %94, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.11, i32 0, i32 0)) #1
  br label %cond.end.139

cond.end.139:                                     ; preds = %cond.false.137, %cond.end.135
  %cond140 = phi i8* [ %cond136, %cond.end.135 ], [ %call138, %cond.false.137 ]
  store i8* %cond140, i8** %tmp97, !tbaa !5
  call void @llvm.lifetime.end(i64 1, i8* %__a2) #1
  call void @llvm.lifetime.end(i64 1, i8* %__a1) #1
  call void @llvm.lifetime.end(i64 1, i8* %__a0) #1
  %95 = load i8*, i8** %tmp97, !tbaa !5
  store i8* %95, i8** %p, align 8, !tbaa !5
  %96 = load i8*, i8** %p, align 8, !tbaa !5
  %cmp141 = icmp eq i8* %96, null
  br i1 %cmp141, label %if.then.143, label %if.else

if.then.143:                                      ; preds = %cond.end.139
  %97 = load i8*, i8** %q, align 8, !tbaa !5
  %call144 = call i64 @strlen(i8* %97) #9
  %98 = load i8*, i8** %q, align 8, !tbaa !5
  %arrayidx145 = getelementptr inbounds i8, i8* %98, i64 %call144
  store i8* %arrayidx145, i8** %cmd, align 8, !tbaa !5
  br label %if.end.146

if.else:                                          ; preds = %cond.end.139
  %99 = load i8*, i8** %p, align 8, !tbaa !5
  store i8 0, i8* %99, align 1, !tbaa !9
  %100 = load i8*, i8** %p, align 8, !tbaa !5
  store i8* %100, i8** %cmd, align 8, !tbaa !5
  br label %if.end.146

if.end.146:                                       ; preds = %if.else, %if.then.143
  br label %while.cond.147

while.cond.147:                                   ; preds = %if.end.158, %if.end.146
  %101 = load i8*, i8** %cmd, align 8, !tbaa !5
  %102 = load i8*, i8** %q, align 8, !tbaa !5
  %cmp148 = icmp ugt i8* %101, %102
  br i1 %cmp148, label %while.body.150, label %while.end.159

while.body.150:                                   ; preds = %while.cond.147
  %103 = load i8*, i8** %cmd, align 8, !tbaa !5
  %incdec.ptr151 = getelementptr inbounds i8, i8* %103, i32 -1
  store i8* %incdec.ptr151, i8** %cmd, align 8, !tbaa !5
  %104 = load i8, i8* %incdec.ptr151, align 1, !tbaa !9
  %conv152 = sext i8 %104 to i32
  %and153 = and i32 %conv152, 127
  %cmp154 = icmp eq i32 %and153, 47
  br i1 %cmp154, label %if.then.156, label %if.end.158

if.then.156:                                      ; preds = %while.body.150
  %105 = load i8*, i8** %cmd, align 8, !tbaa !5
  %incdec.ptr157 = getelementptr inbounds i8, i8* %105, i32 1
  store i8* %incdec.ptr157, i8** %cmd, align 8, !tbaa !5
  br label %while.end.159

if.end.158:                                       ; preds = %while.body.150
  br label %while.cond.147

while.end.159:                                    ; preds = %if.then.156, %while.cond.147
  %106 = bitcast i64* %__s1_len161 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %106) #1
  %107 = bitcast i64* %__s2_len163 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %107) #1
  br i1 icmp eq (i64 sub (i64 ptrtoint (i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.12, i32 0, i64 1) to i64), i64 ptrtoint ([5 x i8]* @.str.12 to i64)), i64 1), label %land.lhs.true.165, label %cond.false.211

land.lhs.true.165:                                ; preds = %while.end.159
  store i64 4, i64* %__s2_len163, align 8, !tbaa !7
  %108 = load i64, i64* %__s2_len163, align 8, !tbaa !7
  %cmp166 = icmp ult i64 %108, 4
  br i1 %cmp166, label %cond.true.168, label %cond.false.211

cond.true.168:                                    ; preds = %land.lhs.true.165
  %109 = bitcast i8** %__s1170 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %109) #1
  %110 = load i8*, i8** %q, align 8, !tbaa !5
  store i8* %110, i8** %__s1170, align 8, !tbaa !5
  %111 = bitcast i32* %__result172 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %111) #1
  %112 = load i8*, i8** %__s1170, align 8, !tbaa !5
  %arrayidx173 = getelementptr inbounds i8, i8* %112, i64 0
  %113 = load i8, i8* %arrayidx173, align 1, !tbaa !9
  %conv174 = zext i8 %113 to i32
  %114 = load i8, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.12, i32 0, i32 0), align 1, !tbaa !9
  %conv175 = zext i8 %114 to i32
  %sub176 = sub nsw i32 %conv174, %conv175
  store i32 %sub176, i32* %__result172, align 4, !tbaa !1
  %115 = load i64, i64* %__s2_len163, align 8, !tbaa !7
  %cmp177 = icmp ugt i64 %115, 0
  br i1 %cmp177, label %land.lhs.true.179, label %if.end.209

land.lhs.true.179:                                ; preds = %cond.true.168
  %116 = load i32, i32* %__result172, align 4, !tbaa !1
  %cmp180 = icmp eq i32 %116, 0
  br i1 %cmp180, label %if.then.182, label %if.end.209

if.then.182:                                      ; preds = %land.lhs.true.179
  %117 = load i8*, i8** %__s1170, align 8, !tbaa !5
  %arrayidx183 = getelementptr inbounds i8, i8* %117, i64 1
  %118 = load i8, i8* %arrayidx183, align 1, !tbaa !9
  %conv184 = zext i8 %118 to i32
  %119 = load i8, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.12, i32 0, i64 1), align 1, !tbaa !9
  %conv185 = zext i8 %119 to i32
  %sub186 = sub nsw i32 %conv184, %conv185
  store i32 %sub186, i32* %__result172, align 4, !tbaa !1
  %120 = load i64, i64* %__s2_len163, align 8, !tbaa !7
  %cmp187 = icmp ugt i64 %120, 1
  br i1 %cmp187, label %land.lhs.true.189, label %if.end.208

land.lhs.true.189:                                ; preds = %if.then.182
  %121 = load i32, i32* %__result172, align 4, !tbaa !1
  %cmp190 = icmp eq i32 %121, 0
  br i1 %cmp190, label %if.then.192, label %if.end.208

if.then.192:                                      ; preds = %land.lhs.true.189
  %122 = load i8*, i8** %__s1170, align 8, !tbaa !5
  %arrayidx193 = getelementptr inbounds i8, i8* %122, i64 2
  %123 = load i8, i8* %arrayidx193, align 1, !tbaa !9
  %conv194 = zext i8 %123 to i32
  %124 = load i8, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.12, i32 0, i64 2), align 1, !tbaa !9
  %conv195 = zext i8 %124 to i32
  %sub196 = sub nsw i32 %conv194, %conv195
  store i32 %sub196, i32* %__result172, align 4, !tbaa !1
  %125 = load i64, i64* %__s2_len163, align 8, !tbaa !7
  %cmp197 = icmp ugt i64 %125, 2
  br i1 %cmp197, label %land.lhs.true.199, label %if.end.207

land.lhs.true.199:                                ; preds = %if.then.192
  %126 = load i32, i32* %__result172, align 4, !tbaa !1
  %cmp200 = icmp eq i32 %126, 0
  br i1 %cmp200, label %if.then.202, label %if.end.207

if.then.202:                                      ; preds = %land.lhs.true.199
  %127 = load i8*, i8** %__s1170, align 8, !tbaa !5
  %arrayidx203 = getelementptr inbounds i8, i8* %127, i64 3
  %128 = load i8, i8* %arrayidx203, align 1, !tbaa !9
  %conv204 = zext i8 %128 to i32
  %129 = load i8, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.12, i32 0, i64 3), align 1, !tbaa !9
  %conv205 = zext i8 %129 to i32
  %sub206 = sub nsw i32 %conv204, %conv205
  store i32 %sub206, i32* %__result172, align 4, !tbaa !1
  br label %if.end.207

if.end.207:                                       ; preds = %if.then.202, %land.lhs.true.199, %if.then.192
  br label %if.end.208

if.end.208:                                       ; preds = %if.end.207, %land.lhs.true.189, %if.then.182
  br label %if.end.209

if.end.209:                                       ; preds = %if.end.208, %land.lhs.true.179, %cond.true.168
  %130 = load i32, i32* %__result172, align 4, !tbaa !1
  store i32 %130, i32* %tmp210, !tbaa !1
  %131 = bitcast i32* %__result172 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %131) #1
  %132 = bitcast i8** %__s1170 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %132) #1
  %133 = load i32, i32* %tmp210, !tbaa !1
  br label %cond.end.213

cond.false.211:                                   ; preds = %land.lhs.true.165, %while.end.159
  %134 = load i8*, i8** %q, align 8, !tbaa !5
  %call212 = call i32 @strcmp(i8* %134, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.12, i32 0, i32 0)) #1
  br label %cond.end.213

cond.end.213:                                     ; preds = %cond.false.211, %if.end.209
  %cond214 = phi i32 [ %133, %if.end.209 ], [ %call212, %cond.false.211 ]
  store i32 %cond214, i32* %tmp164, !tbaa !1
  %135 = bitcast i64* %__s2_len163 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %135) #1
  %136 = bitcast i64* %__s1_len161 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %136) #1
  %137 = load i32, i32* %tmp164, !tbaa !1
  %cmp215 = icmp eq i32 %137, 0
  br i1 %cmp215, label %land.lhs.true.217, label %if.else.222

land.lhs.true.217:                                ; preds = %cond.end.213
  %138 = load i8*, i8** %p, align 8, !tbaa !5
  %cmp218 = icmp ne i8* %138, null
  br i1 %cmp218, label %if.then.220, label %if.else.222

if.then.220:                                      ; preds = %land.lhs.true.217
  call void @addcmd(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.13, i32 0, i32 0), i32 0, i64 5)
  %139 = load i8*, i8** %p, align 8, !tbaa !5
  %incdec.ptr221 = getelementptr inbounds i8, i8* %139, i32 1
  store i8* %incdec.ptr221, i8** %p, align 8, !tbaa !5
  store i8* %incdec.ptr221, i8** %q, align 8, !tbaa !5
  store i32 1, i32* %isexec, align 4, !tbaa !1
  br label %while.cond

if.else.222:                                      ; preds = %land.lhs.true.217, %cond.end.213
  %140 = bitcast i64* %__s1_len224 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %140) #1
  %141 = bitcast i64* %__s2_len226 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %141) #1
  br i1 icmp eq (i64 sub (i64 ptrtoint (i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.14, i32 0, i64 1) to i64), i64 ptrtoint ([5 x i8]* @.str.14 to i64)), i64 1), label %land.lhs.true.228, label %cond.false.274

land.lhs.true.228:                                ; preds = %if.else.222
  store i64 4, i64* %__s2_len226, align 8, !tbaa !7
  %142 = load i64, i64* %__s2_len226, align 8, !tbaa !7
  %cmp229 = icmp ult i64 %142, 4
  br i1 %cmp229, label %cond.true.231, label %cond.false.274

cond.true.231:                                    ; preds = %land.lhs.true.228
  %143 = bitcast i8** %__s1233 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %143) #1
  %144 = load i8*, i8** %q, align 8, !tbaa !5
  store i8* %144, i8** %__s1233, align 8, !tbaa !5
  %145 = bitcast i32* %__result235 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %145) #1
  %146 = load i8*, i8** %__s1233, align 8, !tbaa !5
  %arrayidx236 = getelementptr inbounds i8, i8* %146, i64 0
  %147 = load i8, i8* %arrayidx236, align 1, !tbaa !9
  %conv237 = zext i8 %147 to i32
  %148 = load i8, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.14, i32 0, i32 0), align 1, !tbaa !9
  %conv238 = zext i8 %148 to i32
  %sub239 = sub nsw i32 %conv237, %conv238
  store i32 %sub239, i32* %__result235, align 4, !tbaa !1
  %149 = load i64, i64* %__s2_len226, align 8, !tbaa !7
  %cmp240 = icmp ugt i64 %149, 0
  br i1 %cmp240, label %land.lhs.true.242, label %if.end.272

land.lhs.true.242:                                ; preds = %cond.true.231
  %150 = load i32, i32* %__result235, align 4, !tbaa !1
  %cmp243 = icmp eq i32 %150, 0
  br i1 %cmp243, label %if.then.245, label %if.end.272

if.then.245:                                      ; preds = %land.lhs.true.242
  %151 = load i8*, i8** %__s1233, align 8, !tbaa !5
  %arrayidx246 = getelementptr inbounds i8, i8* %151, i64 1
  %152 = load i8, i8* %arrayidx246, align 1, !tbaa !9
  %conv247 = zext i8 %152 to i32
  %153 = load i8, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.14, i32 0, i64 1), align 1, !tbaa !9
  %conv248 = zext i8 %153 to i32
  %sub249 = sub nsw i32 %conv247, %conv248
  store i32 %sub249, i32* %__result235, align 4, !tbaa !1
  %154 = load i64, i64* %__s2_len226, align 8, !tbaa !7
  %cmp250 = icmp ugt i64 %154, 1
  br i1 %cmp250, label %land.lhs.true.252, label %if.end.271

land.lhs.true.252:                                ; preds = %if.then.245
  %155 = load i32, i32* %__result235, align 4, !tbaa !1
  %cmp253 = icmp eq i32 %155, 0
  br i1 %cmp253, label %if.then.255, label %if.end.271

if.then.255:                                      ; preds = %land.lhs.true.252
  %156 = load i8*, i8** %__s1233, align 8, !tbaa !5
  %arrayidx256 = getelementptr inbounds i8, i8* %156, i64 2
  %157 = load i8, i8* %arrayidx256, align 1, !tbaa !9
  %conv257 = zext i8 %157 to i32
  %158 = load i8, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.14, i32 0, i64 2), align 1, !tbaa !9
  %conv258 = zext i8 %158 to i32
  %sub259 = sub nsw i32 %conv257, %conv258
  store i32 %sub259, i32* %__result235, align 4, !tbaa !1
  %159 = load i64, i64* %__s2_len226, align 8, !tbaa !7
  %cmp260 = icmp ugt i64 %159, 2
  br i1 %cmp260, label %land.lhs.true.262, label %if.end.270

land.lhs.true.262:                                ; preds = %if.then.255
  %160 = load i32, i32* %__result235, align 4, !tbaa !1
  %cmp263 = icmp eq i32 %160, 0
  br i1 %cmp263, label %if.then.265, label %if.end.270

if.then.265:                                      ; preds = %land.lhs.true.262
  %161 = load i8*, i8** %__s1233, align 8, !tbaa !5
  %arrayidx266 = getelementptr inbounds i8, i8* %161, i64 3
  %162 = load i8, i8* %arrayidx266, align 1, !tbaa !9
  %conv267 = zext i8 %162 to i32
  %163 = load i8, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.14, i32 0, i64 3), align 1, !tbaa !9
  %conv268 = zext i8 %163 to i32
  %sub269 = sub nsw i32 %conv267, %conv268
  store i32 %sub269, i32* %__result235, align 4, !tbaa !1
  br label %if.end.270

if.end.270:                                       ; preds = %if.then.265, %land.lhs.true.262, %if.then.255
  br label %if.end.271

if.end.271:                                       ; preds = %if.end.270, %land.lhs.true.252, %if.then.245
  br label %if.end.272

if.end.272:                                       ; preds = %if.end.271, %land.lhs.true.242, %cond.true.231
  %164 = load i32, i32* %__result235, align 4, !tbaa !1
  store i32 %164, i32* %tmp273, !tbaa !1
  %165 = bitcast i32* %__result235 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %165) #1
  %166 = bitcast i8** %__s1233 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %166) #1
  %167 = load i32, i32* %tmp273, !tbaa !1
  br label %cond.end.276

cond.false.274:                                   ; preds = %land.lhs.true.228, %if.else.222
  %168 = load i8*, i8** %q, align 8, !tbaa !5
  %call275 = call i32 @strcmp(i8* %168, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.14, i32 0, i32 0)) #1
  br label %cond.end.276

cond.end.276:                                     ; preds = %cond.false.274, %if.end.272
  %cond277 = phi i32 [ %167, %if.end.272 ], [ %call275, %cond.false.274 ]
  store i32 %cond277, i32* %tmp227, !tbaa !1
  %169 = bitcast i64* %__s2_len226 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %169) #1
  %170 = bitcast i64* %__s1_len224 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %170) #1
  %171 = load i32, i32* %tmp227, !tbaa !1
  %cmp278 = icmp eq i32 %171, 0
  br i1 %cmp278, label %if.then.338, label %lor.lhs.false.280

lor.lhs.false.280:                                ; preds = %cond.end.276
  %172 = bitcast i64* %__s1_len282 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %172) #1
  %173 = bitcast i64* %__s2_len284 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %173) #1
  br i1 icmp eq (i64 sub (i64 ptrtoint (i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.15, i32 0, i64 1) to i64), i64 ptrtoint ([5 x i8]* @.str.15 to i64)), i64 1), label %land.lhs.true.286, label %cond.false.332

land.lhs.true.286:                                ; preds = %lor.lhs.false.280
  store i64 4, i64* %__s2_len284, align 8, !tbaa !7
  %174 = load i64, i64* %__s2_len284, align 8, !tbaa !7
  %cmp287 = icmp ult i64 %174, 4
  br i1 %cmp287, label %cond.true.289, label %cond.false.332

cond.true.289:                                    ; preds = %land.lhs.true.286
  %175 = bitcast i8** %__s1291 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %175) #1
  %176 = load i8*, i8** %q, align 8, !tbaa !5
  store i8* %176, i8** %__s1291, align 8, !tbaa !5
  %177 = bitcast i32* %__result293 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %177) #1
  %178 = load i8*, i8** %__s1291, align 8, !tbaa !5
  %arrayidx294 = getelementptr inbounds i8, i8* %178, i64 0
  %179 = load i8, i8* %arrayidx294, align 1, !tbaa !9
  %conv295 = zext i8 %179 to i32
  %180 = load i8, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.15, i32 0, i32 0), align 1, !tbaa !9
  %conv296 = zext i8 %180 to i32
  %sub297 = sub nsw i32 %conv295, %conv296
  store i32 %sub297, i32* %__result293, align 4, !tbaa !1
  %181 = load i64, i64* %__s2_len284, align 8, !tbaa !7
  %cmp298 = icmp ugt i64 %181, 0
  br i1 %cmp298, label %land.lhs.true.300, label %if.end.330

land.lhs.true.300:                                ; preds = %cond.true.289
  %182 = load i32, i32* %__result293, align 4, !tbaa !1
  %cmp301 = icmp eq i32 %182, 0
  br i1 %cmp301, label %if.then.303, label %if.end.330

if.then.303:                                      ; preds = %land.lhs.true.300
  %183 = load i8*, i8** %__s1291, align 8, !tbaa !5
  %arrayidx304 = getelementptr inbounds i8, i8* %183, i64 1
  %184 = load i8, i8* %arrayidx304, align 1, !tbaa !9
  %conv305 = zext i8 %184 to i32
  %185 = load i8, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.15, i32 0, i64 1), align 1, !tbaa !9
  %conv306 = zext i8 %185 to i32
  %sub307 = sub nsw i32 %conv305, %conv306
  store i32 %sub307, i32* %__result293, align 4, !tbaa !1
  %186 = load i64, i64* %__s2_len284, align 8, !tbaa !7
  %cmp308 = icmp ugt i64 %186, 1
  br i1 %cmp308, label %land.lhs.true.310, label %if.end.329

land.lhs.true.310:                                ; preds = %if.then.303
  %187 = load i32, i32* %__result293, align 4, !tbaa !1
  %cmp311 = icmp eq i32 %187, 0
  br i1 %cmp311, label %if.then.313, label %if.end.329

if.then.313:                                      ; preds = %land.lhs.true.310
  %188 = load i8*, i8** %__s1291, align 8, !tbaa !5
  %arrayidx314 = getelementptr inbounds i8, i8* %188, i64 2
  %189 = load i8, i8* %arrayidx314, align 1, !tbaa !9
  %conv315 = zext i8 %189 to i32
  %190 = load i8, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.15, i32 0, i64 2), align 1, !tbaa !9
  %conv316 = zext i8 %190 to i32
  %sub317 = sub nsw i32 %conv315, %conv316
  store i32 %sub317, i32* %__result293, align 4, !tbaa !1
  %191 = load i64, i64* %__s2_len284, align 8, !tbaa !7
  %cmp318 = icmp ugt i64 %191, 2
  br i1 %cmp318, label %land.lhs.true.320, label %if.end.328

land.lhs.true.320:                                ; preds = %if.then.313
  %192 = load i32, i32* %__result293, align 4, !tbaa !1
  %cmp321 = icmp eq i32 %192, 0
  br i1 %cmp321, label %if.then.323, label %if.end.328

if.then.323:                                      ; preds = %land.lhs.true.320
  %193 = load i8*, i8** %__s1291, align 8, !tbaa !5
  %arrayidx324 = getelementptr inbounds i8, i8* %193, i64 3
  %194 = load i8, i8* %arrayidx324, align 1, !tbaa !9
  %conv325 = zext i8 %194 to i32
  %195 = load i8, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.15, i32 0, i64 3), align 1, !tbaa !9
  %conv326 = zext i8 %195 to i32
  %sub327 = sub nsw i32 %conv325, %conv326
  store i32 %sub327, i32* %__result293, align 4, !tbaa !1
  br label %if.end.328

if.end.328:                                       ; preds = %if.then.323, %land.lhs.true.320, %if.then.313
  br label %if.end.329

if.end.329:                                       ; preds = %if.end.328, %land.lhs.true.310, %if.then.303
  br label %if.end.330

if.end.330:                                       ; preds = %if.end.329, %land.lhs.true.300, %cond.true.289
  %196 = load i32, i32* %__result293, align 4, !tbaa !1
  store i32 %196, i32* %tmp331, !tbaa !1
  %197 = bitcast i32* %__result293 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %197) #1
  %198 = bitcast i8** %__s1291 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %198) #1
  %199 = load i32, i32* %tmp331, !tbaa !1
  br label %cond.end.334

cond.false.332:                                   ; preds = %land.lhs.true.286, %lor.lhs.false.280
  %200 = load i8*, i8** %q, align 8, !tbaa !5
  %call333 = call i32 @strcmp(i8* %200, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.15, i32 0, i32 0)) #1
  br label %cond.end.334

cond.end.334:                                     ; preds = %cond.false.332, %if.end.330
  %cond335 = phi i32 [ %199, %if.end.330 ], [ %call333, %cond.false.332 ]
  store i32 %cond335, i32* %tmp285, !tbaa !1
  %201 = bitcast i64* %__s2_len284 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %201) #1
  %202 = bitcast i64* %__s1_len282 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %202) #1
  %203 = load i32, i32* %tmp285, !tbaa !1
  %cmp336 = icmp eq i32 %203, 0
  br i1 %cmp336, label %if.then.338, label %if.else.340

if.then.338:                                      ; preds = %cond.end.334, %cond.end.276
  %204 = load i8*, i8** %cmd, align 8, !tbaa !5
  %205 = load i8*, i8** %cmd, align 8, !tbaa !5
  %call339 = call i64 @strlen(i8* %205) #9
  call void @addcmd(i8* %204, i32 0, i64 %call339)
  br label %if.end.395

if.else.340:                                      ; preds = %cond.end.334
  %206 = bitcast [4096 x i8]* %cmdbuf to i8*
  call void @llvm.lifetime.start(i64 4096, i8* %206) #1
  %arraydecay342 = getelementptr inbounds [4096 x i8], [4096 x i8]* %cmdbuf, i32 0, i32 0
  %207 = load i8*, i8** %cmd, align 8, !tbaa !5
  %call343 = call i64 (i8*, i64, i32, ...) @sm_strlcpyn(i8* %arraydecay342, i64 4096, i32 3, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.16, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.17, i32 0, i32 0), i8* %207)
  %cmp344 = icmp uge i64 %call343, 4096
  br i1 %cmp344, label %if.then.346, label %if.end.353

if.then.346:                                      ; preds = %if.else.340
  %208 = load i8*, i8** @prg, align 8, !tbaa !5
  %209 = load i8*, i8** %cmd, align 8, !tbaa !5
  %call347 = call i32 (%struct.sm_file*, i32, i8*, ...) @sm_io_fprintf(%struct.sm_file* getelementptr inbounds ([0 x %struct.sm_file], [0 x %struct.sm_file]* @SmIoF, i32 0, i64 2), i32 -2, i8* getelementptr inbounds ([66 x i8], [66 x i8]* @.str.18, i32 0, i32 0), i8* %208, i8* %209)
  %210 = load i8*, i8** %p, align 8, !tbaa !5
  %cmp348 = icmp ne i8* %210, null
  br i1 %cmp348, label %if.then.350, label %if.end.351

if.then.350:                                      ; preds = %if.then.346
  %211 = load i8*, i8** %p, align 8, !tbaa !5
  store i8 32, i8* %211, align 1, !tbaa !9
  br label %if.end.351

if.end.351:                                       ; preds = %if.then.350, %if.then.346
  %call352 = call i32 @getuid() #1
  %212 = load i8*, i8** %cmd, align 8, !tbaa !5
  call void (i32, i8*, ...) @syslog(i32 2, i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.19, i32 0, i32 0), i32 %call352, i8* %212)
  call void @exit(i32 69) #8
  unreachable

if.end.353:                                       ; preds = %if.else.340
  %arraydecay354 = getelementptr inbounds [4096 x i8], [4096 x i8]* %cmdbuf, i32 0, i32 0
  %call355 = call i32 @stat(i8* %arraydecay354, %struct.stat* %st) #1
  %cmp356 = icmp slt i32 %call355, 0
  br i1 %cmp356, label %if.then.358, label %if.end.365

if.then.358:                                      ; preds = %if.end.353
  %213 = load i8*, i8** @prg, align 8, !tbaa !5
  %214 = load i8*, i8** %cmd, align 8, !tbaa !5
  %call359 = call i32 (%struct.sm_file*, i32, i8*, ...) @sm_io_fprintf(%struct.sm_file* getelementptr inbounds ([0 x %struct.sm_file], [0 x %struct.sm_file]* @SmIoF, i32 0, i64 2), i32 -2, i8* getelementptr inbounds ([60 x i8], [60 x i8]* @.str.20, i32 0, i32 0), i8* %213, i8* %214)
  %215 = load i8*, i8** %p, align 8, !tbaa !5
  %cmp360 = icmp ne i8* %215, null
  br i1 %cmp360, label %if.then.362, label %if.end.363

if.then.362:                                      ; preds = %if.then.358
  %216 = load i8*, i8** %p, align 8, !tbaa !5
  store i8 32, i8* %216, align 1, !tbaa !9
  br label %if.end.363

if.end.363:                                       ; preds = %if.then.362, %if.then.358
  %call364 = call i32 @getuid() #1
  %217 = load i8*, i8** %cmd, align 8, !tbaa !5
  call void (i32, i8*, ...) @syslog(i32 2, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.21, i32 0, i32 0), i32 %call364, i8* %217)
  call void @exit(i32 69) #8
  unreachable

if.end.365:                                       ; preds = %if.end.353
  %st_mode = getelementptr inbounds %struct.stat, %struct.stat* %st, i32 0, i32 3
  %218 = load i32, i32* %st_mode, align 4, !tbaa !12
  %and366 = and i32 %218, 61440
  %cmp367 = icmp eq i32 %and366, 32768
  br i1 %cmp367, label %if.end.381, label %land.lhs.true.369

land.lhs.true.369:                                ; preds = %if.end.365
  %st_mode370 = getelementptr inbounds %struct.stat, %struct.stat* %st, i32 0, i32 3
  %219 = load i32, i32* %st_mode370, align 4, !tbaa !12
  %and371 = and i32 %219, 61440
  %cmp372 = icmp eq i32 %and371, 40960
  br i1 %cmp372, label %if.end.381, label %if.then.374

if.then.374:                                      ; preds = %land.lhs.true.369
  %220 = load i8*, i8** @prg, align 8, !tbaa !5
  %221 = load i8*, i8** %cmd, align 8, !tbaa !5
  %call375 = call i32 (%struct.sm_file*, i32, i8*, ...) @sm_io_fprintf(%struct.sm_file* getelementptr inbounds ([0 x %struct.sm_file], [0 x %struct.sm_file]* @SmIoF, i32 0, i64 2), i32 -2, i8* getelementptr inbounds ([59 x i8], [59 x i8]* @.str.22, i32 0, i32 0), i8* %220, i8* %221)
  %222 = load i8*, i8** %p, align 8, !tbaa !5
  %cmp376 = icmp ne i8* %222, null
  br i1 %cmp376, label %if.then.378, label %if.end.379

if.then.378:                                      ; preds = %if.then.374
  %223 = load i8*, i8** %p, align 8, !tbaa !5
  store i8 32, i8* %223, align 1, !tbaa !9
  br label %if.end.379

if.end.379:                                       ; preds = %if.then.378, %if.then.374
  %call380 = call i32 @getuid() #1
  %224 = load i8*, i8** %cmd, align 8, !tbaa !5
  call void (i32, i8*, ...) @syslog(i32 2, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.23, i32 0, i32 0), i32 %call380, i8* %224)
  call void @exit(i32 69) #8
  unreachable

if.end.381:                                       ; preds = %land.lhs.true.369, %if.end.365
  %arraydecay382 = getelementptr inbounds [4096 x i8], [4096 x i8]* %cmdbuf, i32 0, i32 0
  %call383 = call i32 @access(i8* %arraydecay382, i32 1) #1
  %cmp384 = icmp slt i32 %call383, 0
  br i1 %cmp384, label %if.then.386, label %if.end.393

if.then.386:                                      ; preds = %if.end.381
  %225 = load i8*, i8** @prg, align 8, !tbaa !5
  %226 = load i8*, i8** %cmd, align 8, !tbaa !5
  %call387 = call i32 (%struct.sm_file*, i32, i8*, ...) @sm_io_fprintf(%struct.sm_file* getelementptr inbounds ([0 x %struct.sm_file], [0 x %struct.sm_file]* @SmIoF, i32 0, i64 2), i32 -2, i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.24, i32 0, i32 0), i8* %225, i8* %226)
  %227 = load i8*, i8** %p, align 8, !tbaa !5
  %cmp388 = icmp ne i8* %227, null
  br i1 %cmp388, label %if.then.390, label %if.end.391

if.then.390:                                      ; preds = %if.then.386
  %228 = load i8*, i8** %p, align 8, !tbaa !5
  store i8 32, i8* %228, align 1, !tbaa !9
  br label %if.end.391

if.end.391:                                       ; preds = %if.then.390, %if.then.386
  %call392 = call i32 @getuid() #1
  %229 = load i8*, i8** %cmd, align 8, !tbaa !5
  call void (i32, i8*, ...) @syslog(i32 2, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.25, i32 0, i32 0), i32 %call392, i8* %229)
  call void @exit(i32 69) #8
  unreachable

if.end.393:                                       ; preds = %if.end.381
  %230 = load i8*, i8** %cmd, align 8, !tbaa !5
  %231 = load i8*, i8** %cmd, align 8, !tbaa !5
  %call394 = call i64 @strlen(i8* %231) #9
  call void @addcmd(i8* %230, i32 1, i64 %call394)
  %232 = bitcast [4096 x i8]* %cmdbuf to i8*
  call void @llvm.lifetime.end(i64 4096, i8* %232) #1
  br label %if.end.395

if.end.395:                                       ; preds = %if.end.393, %if.then.338
  br label %if.end.396

if.end.396:                                       ; preds = %if.end.395
  store i32 0, i32* %isexec, align 4, !tbaa !1
  %233 = load i8*, i8** %p, align 8, !tbaa !5
  %cmp397 = icmp ne i8* %233, null
  br i1 %cmp397, label %if.then.399, label %if.else.400

if.then.399:                                      ; preds = %if.end.396
  %234 = load i8*, i8** %p, align 8, !tbaa !5
  store i8 32, i8* %234, align 1, !tbaa !9
  br label %if.end.401

if.else.400:                                      ; preds = %if.end.396
  br label %while.end.439

if.end.401:                                       ; preds = %if.then.399
  call void @llvm.lifetime.start(i64 1, i8* %__a0403) #1
  call void @llvm.lifetime.start(i64 1, i8* %__a1405) #1
  call void @llvm.lifetime.start(i64 1, i8* %__a2407) #1
  %235 = load i8*, i8** %p, align 8, !tbaa !5
  %arraydecay409 = getelementptr inbounds [32 x i8], [32 x i8]* %specialbuf, i32 0, i32 0
  %call410 = call i8* @strpbrk(i8* %235, i8* %arraydecay409) #1
  store i8* %call410, i8** %tmp408, !tbaa !5
  call void @llvm.lifetime.end(i64 1, i8* %__a2407) #1
  call void @llvm.lifetime.end(i64 1, i8* %__a1405) #1
  call void @llvm.lifetime.end(i64 1, i8* %__a0403) #1
  %236 = load i8*, i8** %tmp408, !tbaa !5
  store i8* %236, i8** %r, align 8, !tbaa !5
  %237 = load i8*, i8** %r, align 8, !tbaa !5
  %cmp411 = icmp eq i8* %237, null
  br i1 %cmp411, label %if.then.413, label %if.end.415

if.then.413:                                      ; preds = %if.end.401
  %238 = load i8*, i8** %p, align 8, !tbaa !5
  %239 = load i8*, i8** %p, align 8, !tbaa !5
  %call414 = call i64 @strlen(i8* %239) #9
  call void @addcmd(i8* %238, i32 0, i64 %call414)
  br label %while.end.439

if.end.415:                                       ; preds = %if.end.401
  %240 = load i8*, i8** %r, align 8, !tbaa !5
  %241 = load i8, i8* %240, align 1, !tbaa !9
  %conv416 = sext i8 %241 to i32
  %cmp417 = icmp eq i32 %conv416, 38
  br i1 %cmp417, label %land.lhs.true.419, label %lor.lhs.false.423

land.lhs.true.419:                                ; preds = %if.end.415
  %242 = load i8*, i8** %r, align 8, !tbaa !5
  %add.ptr = getelementptr inbounds i8, i8* %242, i64 1
  %243 = load i8, i8* %add.ptr, align 1, !tbaa !9
  %conv420 = sext i8 %243 to i32
  %cmp421 = icmp eq i32 %conv420, 38
  br i1 %cmp421, label %if.then.432, label %lor.lhs.false.423

lor.lhs.false.423:                                ; preds = %land.lhs.true.419, %if.end.415
  %244 = load i8*, i8** %r, align 8, !tbaa !5
  %245 = load i8, i8* %244, align 1, !tbaa !9
  %conv424 = sext i8 %245 to i32
  %cmp425 = icmp eq i32 %conv424, 124
  br i1 %cmp425, label %land.lhs.true.427, label %if.end.434

land.lhs.true.427:                                ; preds = %lor.lhs.false.423
  %246 = load i8*, i8** %r, align 8, !tbaa !5
  %add.ptr428 = getelementptr inbounds i8, i8* %246, i64 1
  %247 = load i8, i8* %add.ptr428, align 1, !tbaa !9
  %conv429 = sext i8 %247 to i32
  %cmp430 = icmp eq i32 %conv429, 124
  br i1 %cmp430, label %if.then.432, label %if.end.434

if.then.432:                                      ; preds = %land.lhs.true.427, %land.lhs.true.419
  %248 = load i8*, i8** %p, align 8, !tbaa !5
  %249 = load i8*, i8** %r, align 8, !tbaa !5
  %250 = load i8*, i8** %p, align 8, !tbaa !5
  %sub.ptr.lhs.cast = ptrtoint i8* %249 to i64
  %sub.ptr.rhs.cast = ptrtoint i8* %250 to i64
  %sub.ptr.sub = sub i64 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast
  %add = add nsw i64 %sub.ptr.sub, 2
  call void @addcmd(i8* %248, i32 0, i64 %add)
  %251 = load i8*, i8** %r, align 8, !tbaa !5
  %add.ptr433 = getelementptr inbounds i8, i8* %251, i64 2
  store i8* %add.ptr433, i8** %q, align 8, !tbaa !5
  br label %while.cond

if.end.434:                                       ; preds = %land.lhs.true.427, %lor.lhs.false.423
  %252 = load i8*, i8** @prg, align 8, !tbaa !5
  %253 = load i8*, i8** %r, align 8, !tbaa !5
  %254 = load i8, i8* %253, align 1, !tbaa !9
  %conv435 = sext i8 %254 to i32
  %call436 = call i32 (%struct.sm_file*, i32, i8*, ...) @sm_io_fprintf(%struct.sm_file* getelementptr inbounds ([0 x %struct.sm_file], [0 x %struct.sm_file]* @SmIoF, i32 0, i64 2), i32 -2, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.26, i32 0, i32 0), i8* %252, i32 %conv435)
  %call437 = call i32 @getuid() #1
  %255 = load i8*, i8** %r, align 8, !tbaa !5
  %256 = load i8, i8* %255, align 1, !tbaa !9
  %conv438 = sext i8 %256 to i32
  %257 = load i8*, i8** @par, align 8, !tbaa !5
  call void (i32, i8*, ...) @syslog(i32 2, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.27, i32 0, i32 0), i32 %call437, i32 %conv438, i8* %257)
  call void @exit(i32 69) #8
  unreachable

while.end.439:                                    ; preds = %if.then.413, %if.else.400, %if.end.92, %while.cond
  %258 = load i32, i32* %isexec, align 4, !tbaa !1
  %tobool440 = icmp ne i32 %258, 0
  br i1 %tobool440, label %if.then.441, label %if.end.444

if.then.441:                                      ; preds = %while.end.439
  %259 = load i8*, i8** @prg, align 8, !tbaa !5
  %call442 = call i32 (%struct.sm_file*, i32, i8*, ...) @sm_io_fprintf(%struct.sm_file* getelementptr inbounds ([0 x %struct.sm_file], [0 x %struct.sm_file]* @SmIoF, i32 0, i64 2), i32 -2, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.9, i32 0, i32 0), i8* %259)
  %call443 = call i32 @getuid() #1
  call void (i32, i8*, ...) @syslog(i32 2, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.10, i32 0, i32 0), i32 %call443)
  call void @exit(i32 69) #8
  unreachable

if.end.444:                                       ; preds = %while.end.439
  %260 = load i8, i8* getelementptr inbounds ([1000 x i8], [1000 x i8]* @newcmdbuf, i32 0, i64 0), align 1, !tbaa !9
  %conv445 = sext i8 %260 to i32
  %cmp446 = icmp eq i32 %conv445, 0
  br i1 %cmp446, label %if.then.448, label %if.end.450

if.then.448:                                      ; preds = %if.end.444
  %261 = load i8*, i8** @prg, align 8, !tbaa !5
  %call449 = call i32 (%struct.sm_file*, i32, i8*, ...) @sm_io_fprintf(%struct.sm_file* getelementptr inbounds ([0 x %struct.sm_file], [0 x %struct.sm_file]* @SmIoF, i32 0, i64 2), i32 -2, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.4, i32 0, i32 0), i8* %261)
  call void (i32, i8*, ...) @syslog(i32 3, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.5, i32 0, i32 0))
  call void @exit(i32 64) #8
  unreachable

if.end.450:                                       ; preds = %if.end.444
  %arraydecay451 = getelementptr inbounds [2 x i8*], [2 x i8*]* %newenv, i32 0, i32 0
  %call452 = call i32 (i8*, i8*, ...) @execle(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.28, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.28, i32 0, i32 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.3, i32 0, i32 0), i8* getelementptr inbounds ([1000 x i8], [1000 x i8]* @newcmdbuf, i32 0, i32 0), i8* null, i8** %arraydecay451) #1
  %call453 = call i32* @__errno_location() #10
  %262 = load i32, i32* %call453, align 4, !tbaa !1
  store i32 %262, i32* %save_errno, align 4, !tbaa !1
  %call454 = call i32* @__errno_location() #10
  %263 = load i32, i32* %call454, align 4, !tbaa !1
  %call455 = call i8* @sm_errstring(i32 %263)
  call void (i32, i8*, ...) @syslog(i32 2, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.29, i32 0, i32 0), i8* %call455)
  %264 = load i32, i32* %save_errno, align 4, !tbaa !1
  %call456 = call i32* @__errno_location() #10
  store i32 %264, i32* %call456, align 4, !tbaa !1
  call void @sm_perror(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.28, i32 0, i32 0))
  call void @exit(i32 72) #8
  unreachable

return:                                           ; No predecessors!
  %265 = load i32, i32* %retval
  ret i32 %265
}

; Function Attrs: nounwind
declare void @llvm.lifetime.start(i64, i8* nocapture) #1

declare void @openlog(i8*, i32, i32) #2

declare i64 @sm_strlcpyn(i8*, i64, i32, ...) #2

; Function Attrs: nounwind
declare void @llvm.lifetime.end(i64, i8* nocapture) #1

; Function Attrs: nounwind
declare i32 @strcmp(i8*, i8*) #3

declare i32 @sm_io_fprintf(%struct.sm_file*, i32, i8*, ...) #2

declare void @syslog(i32, i8*, ...) #2

; Function Attrs: noreturn nounwind
declare void @exit(i32) #4

declare i64 @sm_strlcpy(i8*, i8*, i64) #2

declare i64 @sm_strlcat(i8*, i8*, i64) #2

; Function Attrs: nounwind readonly
declare i64 @strlen(i8*) #5

; Function Attrs: nounwind readnone
declare i16** @__ctype_b_loc() #6

; Function Attrs: nounwind
declare i32 @getuid() #3

; Function Attrs: nounwind
declare i8* @strchr(i8*, i32) #3

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
declare i8* @strpbrk(i8*, i8*) #3

; Function Attrs: nounwind uwtable
define internal void @addcmd(i8* %s, i32 %cmd, i64 %len) #0 {
entry:
  %s.addr = alloca i8*, align 8
  %cmd.addr = alloca i32, align 4
  %len.addr = alloca i64, align 8
  store i8* %s, i8** %s.addr, align 8, !tbaa !5
  store i32 %cmd, i32* %cmd.addr, align 4, !tbaa !1
  store i64 %len, i64* %len.addr, align 8, !tbaa !7
  %0 = load i8*, i8** %s.addr, align 8, !tbaa !5
  %cmp = icmp eq i8* %0, null
  br i1 %cmp, label %if.then, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %entry
  %1 = load i8*, i8** %s.addr, align 8, !tbaa !5
  %2 = load i8, i8* %1, align 1, !tbaa !9
  %conv = sext i8 %2 to i32
  %cmp1 = icmp eq i32 %conv, 0
  br i1 %cmp1, label %if.then, label %if.end

if.then:                                          ; preds = %lor.lhs.false, %entry
  br label %return

if.end:                                           ; preds = %lor.lhs.false
  %call = call i64 @strlen(i8* getelementptr inbounds ([1000 x i8], [1000 x i8]* @newcmdbuf, i32 0, i32 0)) #9
  %sub = sub i64 1000, %call
  %3 = load i64, i64* %len.addr, align 8, !tbaa !7
  %add = add i64 %3, 1
  %4 = load i32, i32* %cmd.addr, align 4, !tbaa !1
  %tobool = icmp ne i32 %4, 0
  %cond = select i1 %tobool, i64 16, i64 0
  %add3 = add i64 %add, %cond
  %cmp4 = icmp ule i64 %sub, %add3
  br i1 %cmp4, label %if.then.6, label %if.end.8

if.then.6:                                        ; preds = %if.end
  %5 = load i8*, i8** @prg, align 8, !tbaa !5
  %6 = load i8*, i8** @par, align 8, !tbaa !5
  %call7 = call i32 (%struct.sm_file*, i32, i8*, ...) @sm_io_fprintf(%struct.sm_file* getelementptr inbounds ([0 x %struct.sm_file], [0 x %struct.sm_file]* @SmIoF, i32 0, i64 2), i32 -2, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.7, i32 0, i32 0), i8* %5, i8* %6)
  %7 = load i8*, i8** @par, align 8, !tbaa !5
  call void (i32, i8*, ...) @syslog(i32 4, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.8, i32 0, i32 0), i8* %7)
  call void @exit(i32 69) #8
  unreachable

if.end.8:                                         ; preds = %if.end
  %8 = load i32, i32* %cmd.addr, align 4, !tbaa !1
  %tobool9 = icmp ne i32 %8, 0
  br i1 %tobool9, label %if.then.10, label %if.end.12

if.then.10:                                       ; preds = %if.end.8
  %call11 = call i64 @sm_strlcat2(i8* getelementptr inbounds ([1000 x i8], [1000 x i8]* @newcmdbuf, i32 0, i32 0), i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.16, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.17, i32 0, i32 0), i64 1000)
  br label %if.end.12

if.end.12:                                        ; preds = %if.then.10, %if.end.8
  %9 = load i8*, i8** %s.addr, align 8, !tbaa !5
  %10 = load i64, i64* %len.addr, align 8, !tbaa !7
  %call13 = call i8* @strncat(i8* getelementptr inbounds ([1000 x i8], [1000 x i8]* @newcmdbuf, i32 0, i32 0), i8* %9, i64 %10) #1
  br label %return

return:                                           ; preds = %if.end.12, %if.then
  ret void
}

; Function Attrs: nounwind
declare i32 @stat(i8*, %struct.stat*) #3

; Function Attrs: nounwind
declare i32 @access(i8*, i32) #3

; Function Attrs: nounwind
declare i32 @execle(i8*, i8*, ...) #3

; Function Attrs: nounwind readnone
declare i32* @__errno_location() #6

declare i8* @sm_errstring(i32) #2

declare void @sm_perror(i8*) #2

declare i64 @sm_strlcat2(i8*, i8*, i8*, i64) #2

; Function Attrs: nounwind
declare i8* @strncat(i8*, i8*, i64) #3

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { noreturn nounwind "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #5 = { nounwind readonly "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #6 = { nounwind readnone "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #7 = { inlinehint nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #8 = { noreturn nounwind }
attributes #9 = { nounwind readonly }
attributes #10 = { nounwind readnone }

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
!12 = !{!13, !2, i64 24}
!13 = !{!"stat", !8, i64 0, !8, i64 8, !8, i64 16, !2, i64 24, !2, i64 28, !2, i64 32, !2, i64 36, !8, i64 40, !8, i64 48, !8, i64 56, !8, i64 64, !14, i64 72, !14, i64 88, !14, i64 104, !3, i64 120}
!14 = !{!"timespec", !8, i64 0, !8, i64 8}
