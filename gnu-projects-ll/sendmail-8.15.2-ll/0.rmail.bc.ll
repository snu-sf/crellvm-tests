; ModuleID = '0.rmail.bc'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sm_file = type { i8*, i8*, i32, i32, i64, i16, %struct.smbuf, i32, i8*, i32, i32 (%struct.sm_file*)*, i64 (%struct.sm_file*, i8*, i64)*, i64 (%struct.sm_file*, i64, i32)*, i64 (%struct.sm_file*, i8*, i64)*, i32 (%struct.sm_file*, i8*, i32, i8*)*, i32 (%struct.sm_file*, i32, i8*)*, i32 (%struct.sm_file*, i32, i8*)*, i32, i32, i8*, %struct.sm_file*, %struct.sm_file*, %struct.smbuf, i8*, i32, [3 x i8], [1 x i8], i32, i64, i32 }
%struct.smbuf = type { i8*, i32 }
%struct.stat = type { i64, i64, i64, i32, i32, i32, i32, i64, i64, i64, i64, %struct.timespec, %struct.timespec, %struct.timespec, [3 x i64] }
%struct.timespec = type { i64, i64 }
%union.anon = type { i32 }
%union.anon.0 = type { i32 }
%union.anon.1 = type { i32 }
%struct.__va_list_tag = type { i32, i32, i8*, i8* }

@.str = private unnamed_addr constant [5 x i8] c"UUCP\00", align 1
@.str.1 = private unnamed_addr constant [4 x i8] c"D:T\00", align 1
@optarg = external global i8*, align 8
@optind = external global i32, align 4
@SmIoF = external global [0 x %struct.sm_file], align 8
@.str.2 = private unnamed_addr constant [8 x i8] c"no data\00", align 1
@.str.3 = private unnamed_addr constant [14 x i8] c"line too long\00", align 1
@.str.4 = private unnamed_addr constant [6 x i8] c"From \00", align 1
@.str.5 = private unnamed_addr constant [7 x i8] c">From \00", align 1
@.str.6 = private unnamed_addr constant [31 x i8] c"missing or empty From line: %s\00", align 1
@.str.7 = private unnamed_addr constant [24 x i8] c"corrupted From line: %s\00", align 1
@.str.8 = private unnamed_addr constant [13 x i8] c"remote from \00", align 1
@.str.9 = private unnamed_addr constant [17 x i8] c"remote from: %s\0A\00", align 1
@.str.10 = private unnamed_addr constant [24 x i8] c"bang starts address: %s\00", align 1
@.str.11 = private unnamed_addr constant [10 x i8] c"bang: %s\0A\00", align 1
@.str.12 = private unnamed_addr constant [14 x i8] c"from_sys: %s\0A\00", align 1
@.str.13 = private unnamed_addr constant [14 x i8] c"out of memory\00", align 1
@.str.14 = private unnamed_addr constant [3 x i8] c"<>\00", align 1
@.str.15 = private unnamed_addr constant [15 x i8] c"from_path: %s\0A\00", align 1
@.str.16 = private unnamed_addr constant [15 x i8] c"from_user: %s\0A\00", align 1
@.str.17 = private unnamed_addr constant [19 x i8] c"/usr/sbin/sendmail\00", align 1
@.str.18 = private unnamed_addr constant [3 x i8] c"-G\00", align 1
@.str.19 = private unnamed_addr constant [5 x i8] c"-oee\00", align 1
@.str.20 = private unnamed_addr constant [5 x i8] c"-odq\00", align 1
@.str.21 = private unnamed_addr constant [4 x i8] c"-oi\00", align 1
@.str.22 = private unnamed_addr constant [5 x i8] c"-p%s\00", align 1
@.str.23 = private unnamed_addr constant [11 x i8] c"-p%s:%s.%s\00", align 1
@.str.24 = private unnamed_addr constant [8 x i8] c"-p%s:%s\00", align 1
@.str.25 = private unnamed_addr constant [7 x i8] c"-f%s%s\00", align 1
@.str.26 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.27 = private unnamed_addr constant [27 x i8] c"dash precedes argument: %s\00", align 1
@.str.28 = private unnamed_addr constant [14 x i8] c"Cannot malloc\00", align 1
@.str.29 = private unnamed_addr constant [5 x i8] c"<%s>\00", align 1
@.str.30 = private unnamed_addr constant [24 x i8] c"Argument count mismatch\00", align 1
@.str.31 = private unnamed_addr constant [21 x i8] c"Sendmail arguments:\0A\00", align 1
@.str.32 = private unnamed_addr constant [5 x i8] c"\09%s\0A\00", align 1
@.str.33 = private unnamed_addr constant [11 x i8] c"stdin seek\00", align 1
@.str.34 = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@.str.35 = private unnamed_addr constant [12 x i8] c"pipe failed\00", align 1
@.str.36 = private unnamed_addr constant [12 x i8] c"fork failed\00", align 1
@SmFtStdiofd_def = external global %struct.sm_file, align 8
@.str.37 = private unnamed_addr constant [18 x i8] c"sm_io_open failed\00", align 1
@.str.38 = private unnamed_addr constant [10 x i8] c"stdin: %s\00", align 1
@.str.39 = private unnamed_addr constant [19 x i8] c"sm_io_close failed\00", align 1
@.str.40 = private unnamed_addr constant [31 x i8] c"%s: did not terminate normally\00", align 1
@.str.41 = private unnamed_addr constant [41 x i8] c"%s: terminated with %d (non-zero) status\00", align 1
@.str.42 = private unnamed_addr constant [40 x i8] c"usage: rmail [-T] [-D domain] user ...\0A\00", align 1
@.str.43 = private unnamed_addr constant [8 x i8] c"rmail: \00", align 1
@.str.44 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1

; Function Attrs: nounwind uwtable
define i32 @main(i32 %argc, i8** %argv) #0 {
entry:
  %retval = alloca i32, align 4
  %argc.addr = alloca i32, align 4
  %argv.addr = alloca i8**, align 8
  %ch = alloca i32, align 4
  %debug = alloca i32, align 4
  %i = alloca i32, align 4
  %pdes = alloca [2 x i32], align 4
  %pid = alloca i32, align 4
  %status = alloca i32, align 4
  %fplen = alloca i64, align 8
  %fptlen = alloca i64, align 8
  %len = alloca i64, align 8
  %offset = alloca i64, align 8
  %fp = alloca %struct.sm_file*, align 8
  %addrp = alloca i8*, align 8
  %domain = alloca i8*, align 8
  %p = alloca i8*, align 8
  %t = alloca i8*, align 8
  %from_path = alloca i8*, align 8
  %from_sys = alloca i8*, align 8
  %from_user = alloca i8*, align 8
  %args = alloca i8**, align 8
  %buf = alloca [2048 x i8], align 16
  %lbuf = alloca [2048 x i8], align 16
  %sb = alloca %struct.stat, align 8
  %__s1_len = alloca i64, align 8
  %__s2_len = alloca i64, align 8
  %tmp = alloca i32, align 4
  %__s1 = alloca i8*, align 8
  %__result = alloca i32, align 4
  %tmp53 = alloca i32, align 4
  %__s1_len65 = alloca i64, align 8
  %__s2_len67 = alloca i64, align 8
  %tmp68 = alloca i32, align 4
  %__s174 = alloca i8*, align 8
  %__result77 = alloca i32, align 4
  %tmp115 = alloca i32, align 4
  %__s1_len153 = alloca i64, align 8
  %__s2_len155 = alloca i64, align 8
  %tmp156 = alloca i32, align 4
  %__s1162 = alloca i8*, align 8
  %__result164 = alloca i32, align 4
  %tmp202 = alloca i32, align 4
  %.compoundliteral = alloca %union.anon, align 4
  %.compoundliteral579 = alloca %union.anon.0, align 4
  %.compoundliteral585 = alloca %union.anon.1, align 4
  store i32 0, i32* %retval
  store i32 %argc, i32* %argc.addr, align 4, !tbaa !1
  store i8** %argv, i8*** %argv.addr, align 8, !tbaa !5
  %0 = bitcast i32* %ch to i8*
  call void @llvm.lifetime.start(i64 4, i8* %0) #1
  %1 = bitcast i32* %debug to i8*
  call void @llvm.lifetime.start(i64 4, i8* %1) #1
  %2 = bitcast i32* %i to i8*
  call void @llvm.lifetime.start(i64 4, i8* %2) #1
  %3 = bitcast [2 x i32]* %pdes to i8*
  call void @llvm.lifetime.start(i64 8, i8* %3) #1
  %4 = bitcast i32* %pid to i8*
  call void @llvm.lifetime.start(i64 4, i8* %4) #1
  %5 = bitcast i32* %status to i8*
  call void @llvm.lifetime.start(i64 4, i8* %5) #1
  %6 = bitcast i64* %fplen to i8*
  call void @llvm.lifetime.start(i64 8, i8* %6) #1
  store i64 0, i64* %fplen, align 8, !tbaa !7
  %7 = bitcast i64* %fptlen to i8*
  call void @llvm.lifetime.start(i64 8, i8* %7) #1
  store i64 0, i64* %fptlen, align 8, !tbaa !7
  %8 = bitcast i64* %len to i8*
  call void @llvm.lifetime.start(i64 8, i8* %8) #1
  %9 = bitcast i64* %offset to i8*
  call void @llvm.lifetime.start(i64 8, i8* %9) #1
  %10 = bitcast %struct.sm_file** %fp to i8*
  call void @llvm.lifetime.start(i64 8, i8* %10) #1
  %11 = bitcast i8** %addrp to i8*
  call void @llvm.lifetime.start(i64 8, i8* %11) #1
  store i8* null, i8** %addrp, align 8, !tbaa !5
  %12 = bitcast i8** %domain to i8*
  call void @llvm.lifetime.start(i64 8, i8* %12) #1
  %13 = bitcast i8** %p to i8*
  call void @llvm.lifetime.start(i64 8, i8* %13) #1
  %14 = bitcast i8** %t to i8*
  call void @llvm.lifetime.start(i64 8, i8* %14) #1
  %15 = bitcast i8** %from_path to i8*
  call void @llvm.lifetime.start(i64 8, i8* %15) #1
  %16 = bitcast i8** %from_sys to i8*
  call void @llvm.lifetime.start(i64 8, i8* %16) #1
  %17 = bitcast i8** %from_user to i8*
  call void @llvm.lifetime.start(i64 8, i8* %17) #1
  %18 = bitcast i8*** %args to i8*
  call void @llvm.lifetime.start(i64 8, i8* %18) #1
  %19 = bitcast [2048 x i8]* %buf to i8*
  call void @llvm.lifetime.start(i64 2048, i8* %19) #1
  %20 = bitcast [2048 x i8]* %lbuf to i8*
  call void @llvm.lifetime.start(i64 2048, i8* %20) #1
  %21 = bitcast %struct.stat* %sb to i8*
  call void @llvm.lifetime.start(i64 144, i8* %21) #1
  store i32 0, i32* %debug, align 4, !tbaa !1
  store i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i32 0, i32 0), i8** %domain, align 8, !tbaa !5
  br label %while.cond

while.cond:                                       ; preds = %sw.epilog, %entry
  %22 = load i32, i32* %argc.addr, align 4, !tbaa !1
  %23 = load i8**, i8*** %argv.addr, align 8, !tbaa !5
  %call = call i32 @getopt(i32 %22, i8** %23, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1, i32 0, i32 0)) #1
  store i32 %call, i32* %ch, align 4, !tbaa !1
  %cmp = icmp ne i32 %call, -1
  br i1 %cmp, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %24 = load i32, i32* %ch, align 4, !tbaa !1
  switch i32 %24, label %sw.default [
    i32 84, label %sw.bb
    i32 68, label %sw.bb.1
    i32 63, label %sw.bb.2
  ]

sw.bb:                                            ; preds = %while.body
  store i32 1, i32* %debug, align 4, !tbaa !1
  br label %sw.epilog

sw.bb.1:                                          ; preds = %while.body
  %25 = load i8*, i8** @optarg, align 8, !tbaa !5
  store i8* %25, i8** %domain, align 8, !tbaa !5
  br label %sw.epilog

sw.bb.2:                                          ; preds = %while.body
  br label %sw.default

sw.default:                                       ; preds = %while.body, %sw.bb.2
  call void @usage()
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.default, %sw.bb.1, %sw.bb
  br label %while.cond

while.end:                                        ; preds = %while.cond
  %26 = load i32, i32* @optind, align 4, !tbaa !1
  %27 = load i32, i32* %argc.addr, align 4, !tbaa !1
  %sub = sub nsw i32 %27, %26
  store i32 %sub, i32* %argc.addr, align 4, !tbaa !1
  %28 = load i32, i32* @optind, align 4, !tbaa !1
  %29 = load i8**, i8*** %argv.addr, align 8, !tbaa !5
  %idx.ext = sext i32 %28 to i64
  %add.ptr = getelementptr inbounds i8*, i8** %29, i64 %idx.ext
  store i8** %add.ptr, i8*** %argv.addr, align 8, !tbaa !5
  %30 = load i32, i32* %argc.addr, align 4, !tbaa !1
  %cmp3 = icmp slt i32 %30, 1
  br i1 %cmp3, label %if.then, label %if.end

if.then:                                          ; preds = %while.end
  call void @usage()
  br label %if.end

if.end:                                           ; preds = %if.then, %while.end
  store i8* null, i8** %from_user, align 8, !tbaa !5
  store i8* null, i8** %from_sys, align 8, !tbaa !5
  store i8* null, i8** %from_path, align 8, !tbaa !5
  store i64 0, i64* %offset, align 8, !tbaa !7
  br label %for.cond

for.cond:                                         ; preds = %if.end.384, %if.end
  %arraydecay = getelementptr inbounds [2048 x i8], [2048 x i8]* %lbuf, i32 0, i32 0
  %call4 = call i32 @sm_io_fgets(%struct.sm_file* getelementptr inbounds ([0 x %struct.sm_file], [0 x %struct.sm_file]* @SmIoF, i32 0, i64 0), i32 -2, i8* %arraydecay, i32 2048)
  %cmp5 = icmp slt i32 %call4, 0
  br i1 %cmp5, label %if.then.6, label %if.end.7

if.then.6:                                        ; preds = %for.cond
  call void (i32, i8*, ...) @err(i32 65, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.2, i32 0, i32 0))
  br label %if.end.7

if.end.7:                                         ; preds = %if.then.6, %for.cond
  %arraydecay8 = getelementptr inbounds [2048 x i8], [2048 x i8]* %lbuf, i32 0, i32 0
  %call9 = call i8* @strchr(i8* %arraydecay8, i32 10) #1
  store i8* %call9, i8** %p, align 8, !tbaa !5
  %cmp10 = icmp eq i8* %call9, null
  br i1 %cmp10, label %if.then.11, label %if.end.12

if.then.11:                                       ; preds = %if.end.7
  call void (i32, i8*, ...) @err(i32 65, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.3, i32 0, i32 0))
  br label %if.end.12

if.end.12:                                        ; preds = %if.then.11, %if.end.7
  %31 = load i8*, i8** %p, align 8, !tbaa !5
  store i8 0, i8* %31, align 1, !tbaa !9
  br i1 false, label %cond.true, label %cond.false.56

cond.true:                                        ; preds = %if.end.12
  %32 = bitcast i64* %__s1_len to i8*
  call void @llvm.lifetime.start(i64 8, i8* %32) #1
  %33 = bitcast i64* %__s2_len to i8*
  call void @llvm.lifetime.start(i64 8, i8* %33) #1
  br i1 icmp eq (i64 sub (i64 ptrtoint (i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.4, i32 0, i64 1) to i64), i64 ptrtoint ([6 x i8]* @.str.4 to i64)), i64 1), label %land.lhs.true, label %cond.false

land.lhs.true:                                    ; preds = %cond.true
  store i64 5, i64* %__s2_len, align 8, !tbaa !7
  %34 = load i64, i64* %__s2_len, align 8, !tbaa !7
  %cmp13 = icmp ult i64 %34, 4
  br i1 %cmp13, label %cond.true.14, label %cond.false

cond.true.14:                                     ; preds = %land.lhs.true
  %35 = bitcast i8** %__s1 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %35) #1
  %arraydecay16 = getelementptr inbounds [2048 x i8], [2048 x i8]* %lbuf, i32 0, i32 0
  store i8* %arraydecay16, i8** %__s1, align 8, !tbaa !5
  %36 = bitcast i32* %__result to i8*
  call void @llvm.lifetime.start(i64 4, i8* %36) #1
  %37 = load i8*, i8** %__s1, align 8, !tbaa !5
  %arrayidx = getelementptr inbounds i8, i8* %37, i64 0
  %38 = load i8, i8* %arrayidx, align 1, !tbaa !9
  %conv = zext i8 %38 to i32
  %39 = load i8, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.4, i32 0, i32 0), align 1, !tbaa !9
  %conv18 = zext i8 %39 to i32
  %sub19 = sub nsw i32 %conv, %conv18
  store i32 %sub19, i32* %__result, align 4, !tbaa !1
  %40 = load i64, i64* %__s2_len, align 8, !tbaa !7
  %cmp20 = icmp ugt i64 %40, 0
  br i1 %cmp20, label %land.lhs.true.22, label %if.end.52

land.lhs.true.22:                                 ; preds = %cond.true.14
  %41 = load i32, i32* %__result, align 4, !tbaa !1
  %cmp23 = icmp eq i32 %41, 0
  br i1 %cmp23, label %if.then.25, label %if.end.52

if.then.25:                                       ; preds = %land.lhs.true.22
  %42 = load i8*, i8** %__s1, align 8, !tbaa !5
  %arrayidx26 = getelementptr inbounds i8, i8* %42, i64 1
  %43 = load i8, i8* %arrayidx26, align 1, !tbaa !9
  %conv27 = zext i8 %43 to i32
  %44 = load i8, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.4, i32 0, i64 1), align 1, !tbaa !9
  %conv28 = zext i8 %44 to i32
  %sub29 = sub nsw i32 %conv27, %conv28
  store i32 %sub29, i32* %__result, align 4, !tbaa !1
  %45 = load i64, i64* %__s2_len, align 8, !tbaa !7
  %cmp30 = icmp ugt i64 %45, 1
  br i1 %cmp30, label %land.lhs.true.32, label %if.end.51

land.lhs.true.32:                                 ; preds = %if.then.25
  %46 = load i32, i32* %__result, align 4, !tbaa !1
  %cmp33 = icmp eq i32 %46, 0
  br i1 %cmp33, label %if.then.35, label %if.end.51

if.then.35:                                       ; preds = %land.lhs.true.32
  %47 = load i8*, i8** %__s1, align 8, !tbaa !5
  %arrayidx36 = getelementptr inbounds i8, i8* %47, i64 2
  %48 = load i8, i8* %arrayidx36, align 1, !tbaa !9
  %conv37 = zext i8 %48 to i32
  %49 = load i8, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.4, i32 0, i64 2), align 1, !tbaa !9
  %conv38 = zext i8 %49 to i32
  %sub39 = sub nsw i32 %conv37, %conv38
  store i32 %sub39, i32* %__result, align 4, !tbaa !1
  %50 = load i64, i64* %__s2_len, align 8, !tbaa !7
  %cmp40 = icmp ugt i64 %50, 2
  br i1 %cmp40, label %land.lhs.true.42, label %if.end.50

land.lhs.true.42:                                 ; preds = %if.then.35
  %51 = load i32, i32* %__result, align 4, !tbaa !1
  %cmp43 = icmp eq i32 %51, 0
  br i1 %cmp43, label %if.then.45, label %if.end.50

if.then.45:                                       ; preds = %land.lhs.true.42
  %52 = load i8*, i8** %__s1, align 8, !tbaa !5
  %arrayidx46 = getelementptr inbounds i8, i8* %52, i64 3
  %53 = load i8, i8* %arrayidx46, align 1, !tbaa !9
  %conv47 = zext i8 %53 to i32
  %54 = load i8, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.4, i32 0, i64 3), align 1, !tbaa !9
  %conv48 = zext i8 %54 to i32
  %sub49 = sub nsw i32 %conv47, %conv48
  store i32 %sub49, i32* %__result, align 4, !tbaa !1
  br label %if.end.50

if.end.50:                                        ; preds = %if.then.45, %land.lhs.true.42, %if.then.35
  br label %if.end.51

if.end.51:                                        ; preds = %if.end.50, %land.lhs.true.32, %if.then.25
  br label %if.end.52

if.end.52:                                        ; preds = %if.end.51, %land.lhs.true.22, %cond.true.14
  %55 = load i32, i32* %__result, align 4, !tbaa !1
  store i32 %55, i32* %tmp53, !tbaa !1
  %56 = bitcast i32* %__result to i8*
  call void @llvm.lifetime.end(i64 4, i8* %56) #1
  %57 = bitcast i8** %__s1 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %57) #1
  %58 = load i32, i32* %tmp53, !tbaa !1
  br label %cond.end

cond.false:                                       ; preds = %land.lhs.true, %cond.true
  %arraydecay54 = getelementptr inbounds [2048 x i8], [2048 x i8]* %lbuf, i32 0, i32 0
  %call55 = call i32 @strcmp(i8* %arraydecay54, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.4, i32 0, i32 0)) #1
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %if.end.52
  %cond = phi i32 [ %58, %if.end.52 ], [ %call55, %cond.false ]
  store i32 %cond, i32* %tmp, !tbaa !1
  %59 = bitcast i64* %__s2_len to i8*
  call void @llvm.lifetime.end(i64 8, i8* %59) #1
  %60 = bitcast i64* %__s1_len to i8*
  call void @llvm.lifetime.end(i64 8, i8* %60) #1
  %61 = load i32, i32* %tmp, !tbaa !1
  %tobool = icmp ne i32 %61, 0
  br i1 %tobool, label %if.else, label %if.then.60

cond.false.56:                                    ; preds = %if.end.12
  %arraydecay57 = getelementptr inbounds [2048 x i8], [2048 x i8]* %lbuf, i32 0, i32 0
  %call58 = call i32 @strncmp(i8* %arraydecay57, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.4, i32 0, i32 0), i64 5) #7
  %tobool59 = icmp ne i32 %call58, 0
  br i1 %tobool59, label %if.else, label %if.then.60

if.then.60:                                       ; preds = %cond.false.56, %cond.end
  %arraydecay61 = getelementptr inbounds [2048 x i8], [2048 x i8]* %lbuf, i32 0, i32 0
  %add.ptr62 = getelementptr inbounds i8, i8* %arraydecay61, i64 5
  store i8* %add.ptr62, i8** %addrp, align 8, !tbaa !5
  br label %if.end.137

if.else:                                          ; preds = %cond.false.56, %cond.end
  br i1 false, label %cond.true.63, label %cond.false.122

cond.true.63:                                     ; preds = %if.else
  %62 = bitcast i64* %__s1_len65 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %62) #1
  %63 = bitcast i64* %__s2_len67 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %63) #1
  br i1 icmp eq (i64 sub (i64 ptrtoint (i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.5, i32 0, i64 1) to i64), i64 ptrtoint ([7 x i8]* @.str.5 to i64)), i64 1), label %land.lhs.true.69, label %cond.false.116

land.lhs.true.69:                                 ; preds = %cond.true.63
  store i64 6, i64* %__s2_len67, align 8, !tbaa !7
  %64 = load i64, i64* %__s2_len67, align 8, !tbaa !7
  %cmp70 = icmp ult i64 %64, 4
  br i1 %cmp70, label %cond.true.72, label %cond.false.116

cond.true.72:                                     ; preds = %land.lhs.true.69
  %65 = bitcast i8** %__s174 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %65) #1
  %arraydecay75 = getelementptr inbounds [2048 x i8], [2048 x i8]* %lbuf, i32 0, i32 0
  store i8* %arraydecay75, i8** %__s174, align 8, !tbaa !5
  %66 = bitcast i32* %__result77 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %66) #1
  %67 = load i8*, i8** %__s174, align 8, !tbaa !5
  %arrayidx78 = getelementptr inbounds i8, i8* %67, i64 0
  %68 = load i8, i8* %arrayidx78, align 1, !tbaa !9
  %conv79 = zext i8 %68 to i32
  %69 = load i8, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.5, i32 0, i32 0), align 1, !tbaa !9
  %conv80 = zext i8 %69 to i32
  %sub81 = sub nsw i32 %conv79, %conv80
  store i32 %sub81, i32* %__result77, align 4, !tbaa !1
  %70 = load i64, i64* %__s2_len67, align 8, !tbaa !7
  %cmp82 = icmp ugt i64 %70, 0
  br i1 %cmp82, label %land.lhs.true.84, label %if.end.114

land.lhs.true.84:                                 ; preds = %cond.true.72
  %71 = load i32, i32* %__result77, align 4, !tbaa !1
  %cmp85 = icmp eq i32 %71, 0
  br i1 %cmp85, label %if.then.87, label %if.end.114

if.then.87:                                       ; preds = %land.lhs.true.84
  %72 = load i8*, i8** %__s174, align 8, !tbaa !5
  %arrayidx88 = getelementptr inbounds i8, i8* %72, i64 1
  %73 = load i8, i8* %arrayidx88, align 1, !tbaa !9
  %conv89 = zext i8 %73 to i32
  %74 = load i8, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.5, i32 0, i64 1), align 1, !tbaa !9
  %conv90 = zext i8 %74 to i32
  %sub91 = sub nsw i32 %conv89, %conv90
  store i32 %sub91, i32* %__result77, align 4, !tbaa !1
  %75 = load i64, i64* %__s2_len67, align 8, !tbaa !7
  %cmp92 = icmp ugt i64 %75, 1
  br i1 %cmp92, label %land.lhs.true.94, label %if.end.113

land.lhs.true.94:                                 ; preds = %if.then.87
  %76 = load i32, i32* %__result77, align 4, !tbaa !1
  %cmp95 = icmp eq i32 %76, 0
  br i1 %cmp95, label %if.then.97, label %if.end.113

if.then.97:                                       ; preds = %land.lhs.true.94
  %77 = load i8*, i8** %__s174, align 8, !tbaa !5
  %arrayidx98 = getelementptr inbounds i8, i8* %77, i64 2
  %78 = load i8, i8* %arrayidx98, align 1, !tbaa !9
  %conv99 = zext i8 %78 to i32
  %79 = load i8, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.5, i32 0, i64 2), align 1, !tbaa !9
  %conv100 = zext i8 %79 to i32
  %sub101 = sub nsw i32 %conv99, %conv100
  store i32 %sub101, i32* %__result77, align 4, !tbaa !1
  %80 = load i64, i64* %__s2_len67, align 8, !tbaa !7
  %cmp102 = icmp ugt i64 %80, 2
  br i1 %cmp102, label %land.lhs.true.104, label %if.end.112

land.lhs.true.104:                                ; preds = %if.then.97
  %81 = load i32, i32* %__result77, align 4, !tbaa !1
  %cmp105 = icmp eq i32 %81, 0
  br i1 %cmp105, label %if.then.107, label %if.end.112

if.then.107:                                      ; preds = %land.lhs.true.104
  %82 = load i8*, i8** %__s174, align 8, !tbaa !5
  %arrayidx108 = getelementptr inbounds i8, i8* %82, i64 3
  %83 = load i8, i8* %arrayidx108, align 1, !tbaa !9
  %conv109 = zext i8 %83 to i32
  %84 = load i8, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.5, i32 0, i64 3), align 1, !tbaa !9
  %conv110 = zext i8 %84 to i32
  %sub111 = sub nsw i32 %conv109, %conv110
  store i32 %sub111, i32* %__result77, align 4, !tbaa !1
  br label %if.end.112

if.end.112:                                       ; preds = %if.then.107, %land.lhs.true.104, %if.then.97
  br label %if.end.113

if.end.113:                                       ; preds = %if.end.112, %land.lhs.true.94, %if.then.87
  br label %if.end.114

if.end.114:                                       ; preds = %if.end.113, %land.lhs.true.84, %cond.true.72
  %85 = load i32, i32* %__result77, align 4, !tbaa !1
  store i32 %85, i32* %tmp115, !tbaa !1
  %86 = bitcast i32* %__result77 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %86) #1
  %87 = bitcast i8** %__s174 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %87) #1
  %88 = load i32, i32* %tmp115, !tbaa !1
  br label %cond.end.119

cond.false.116:                                   ; preds = %land.lhs.true.69, %cond.true.63
  %arraydecay117 = getelementptr inbounds [2048 x i8], [2048 x i8]* %lbuf, i32 0, i32 0
  %call118 = call i32 @strcmp(i8* %arraydecay117, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.5, i32 0, i32 0)) #1
  br label %cond.end.119

cond.end.119:                                     ; preds = %cond.false.116, %if.end.114
  %cond120 = phi i32 [ %88, %if.end.114 ], [ %call118, %cond.false.116 ]
  store i32 %cond120, i32* %tmp68, !tbaa !1
  %89 = bitcast i64* %__s2_len67 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %89) #1
  %90 = bitcast i64* %__s1_len65 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %90) #1
  %91 = load i32, i32* %tmp68, !tbaa !1
  %tobool121 = icmp ne i32 %91, 0
  br i1 %tobool121, label %if.else.129, label %if.then.126

cond.false.122:                                   ; preds = %if.else
  %arraydecay123 = getelementptr inbounds [2048 x i8], [2048 x i8]* %lbuf, i32 0, i32 0
  %call124 = call i32 @strncmp(i8* %arraydecay123, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.5, i32 0, i32 0), i64 6) #7
  %tobool125 = icmp ne i32 %call124, 0
  br i1 %tobool125, label %if.else.129, label %if.then.126

if.then.126:                                      ; preds = %cond.false.122, %cond.end.119
  %arraydecay127 = getelementptr inbounds [2048 x i8], [2048 x i8]* %lbuf, i32 0, i32 0
  %add.ptr128 = getelementptr inbounds i8, i8* %arraydecay127, i64 6
  store i8* %add.ptr128, i8** %addrp, align 8, !tbaa !5
  br label %if.end.136

if.else.129:                                      ; preds = %cond.false.122, %cond.end.119
  %92 = load i64, i64* %offset, align 8, !tbaa !7
  %cmp130 = icmp eq i64 %92, 0
  br i1 %cmp130, label %if.then.132, label %if.else.134

if.then.132:                                      ; preds = %if.else.129
  %arraydecay133 = getelementptr inbounds [2048 x i8], [2048 x i8]* %lbuf, i32 0, i32 0
  call void (i32, i8*, ...) @err(i32 65, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.6, i32 0, i32 0), i8* %arraydecay133)
  br label %if.end.135

if.else.134:                                      ; preds = %if.else.129
  %93 = load i8*, i8** %p, align 8, !tbaa !5
  store i8 10, i8* %93, align 1, !tbaa !9
  br label %for.end.385

if.end.135:                                       ; preds = %if.then.132
  br label %if.end.136

if.end.136:                                       ; preds = %if.end.135, %if.then.126
  br label %if.end.137

if.end.137:                                       ; preds = %if.end.136, %if.then.60
  %94 = load i8*, i8** %addrp, align 8, !tbaa !5
  %cmp138 = icmp eq i8* %94, null
  br i1 %cmp138, label %if.then.143, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.end.137
  %95 = load i8*, i8** %addrp, align 8, !tbaa !5
  %96 = load i8, i8* %95, align 1, !tbaa !9
  %conv140 = sext i8 %96 to i32
  %cmp141 = icmp eq i32 %conv140, 0
  br i1 %cmp141, label %if.then.143, label %if.end.145

if.then.143:                                      ; preds = %lor.lhs.false, %if.end.137
  %arraydecay144 = getelementptr inbounds [2048 x i8], [2048 x i8]* %lbuf, i32 0, i32 0
  call void (i32, i8*, ...) @err(i32 65, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.7, i32 0, i32 0), i8* %arraydecay144)
  br label %if.end.145

if.end.145:                                       ; preds = %if.then.143, %lor.lhs.false
  %97 = load i8*, i8** %addrp, align 8, !tbaa !5
  store i8* %97, i8** %p, align 8, !tbaa !5
  br label %for.cond.146

for.cond.146:                                     ; preds = %if.end.234, %if.end.145
  %98 = load i8*, i8** %p, align 8, !tbaa !5
  %add.ptr147 = getelementptr inbounds i8, i8* %98, i64 1
  %call148 = call i8* @strchr(i8* %add.ptr147, i32 114) #1
  store i8* %call148, i8** %p, align 8, !tbaa !5
  %cmp149 = icmp ne i8* %call148, null
  br i1 %cmp149, label %for.body, label %for.end.235

for.body:                                         ; preds = %for.cond.146
  br i1 false, label %cond.true.151, label %cond.false.208

cond.true.151:                                    ; preds = %for.body
  %99 = bitcast i64* %__s1_len153 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %99) #1
  %100 = bitcast i64* %__s2_len155 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %100) #1
  br i1 icmp eq (i64 sub (i64 ptrtoint (i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.8, i32 0, i64 1) to i64), i64 ptrtoint ([13 x i8]* @.str.8 to i64)), i64 1), label %land.lhs.true.157, label %cond.false.203

land.lhs.true.157:                                ; preds = %cond.true.151
  store i64 12, i64* %__s2_len155, align 8, !tbaa !7
  %101 = load i64, i64* %__s2_len155, align 8, !tbaa !7
  %cmp158 = icmp ult i64 %101, 4
  br i1 %cmp158, label %cond.true.160, label %cond.false.203

cond.true.160:                                    ; preds = %land.lhs.true.157
  %102 = bitcast i8** %__s1162 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %102) #1
  %103 = load i8*, i8** %p, align 8, !tbaa !5
  store i8* %103, i8** %__s1162, align 8, !tbaa !5
  %104 = bitcast i32* %__result164 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %104) #1
  %105 = load i8*, i8** %__s1162, align 8, !tbaa !5
  %arrayidx165 = getelementptr inbounds i8, i8* %105, i64 0
  %106 = load i8, i8* %arrayidx165, align 1, !tbaa !9
  %conv166 = zext i8 %106 to i32
  %107 = load i8, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.8, i32 0, i32 0), align 1, !tbaa !9
  %conv167 = zext i8 %107 to i32
  %sub168 = sub nsw i32 %conv166, %conv167
  store i32 %sub168, i32* %__result164, align 4, !tbaa !1
  %108 = load i64, i64* %__s2_len155, align 8, !tbaa !7
  %cmp169 = icmp ugt i64 %108, 0
  br i1 %cmp169, label %land.lhs.true.171, label %if.end.201

land.lhs.true.171:                                ; preds = %cond.true.160
  %109 = load i32, i32* %__result164, align 4, !tbaa !1
  %cmp172 = icmp eq i32 %109, 0
  br i1 %cmp172, label %if.then.174, label %if.end.201

if.then.174:                                      ; preds = %land.lhs.true.171
  %110 = load i8*, i8** %__s1162, align 8, !tbaa !5
  %arrayidx175 = getelementptr inbounds i8, i8* %110, i64 1
  %111 = load i8, i8* %arrayidx175, align 1, !tbaa !9
  %conv176 = zext i8 %111 to i32
  %112 = load i8, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.8, i32 0, i64 1), align 1, !tbaa !9
  %conv177 = zext i8 %112 to i32
  %sub178 = sub nsw i32 %conv176, %conv177
  store i32 %sub178, i32* %__result164, align 4, !tbaa !1
  %113 = load i64, i64* %__s2_len155, align 8, !tbaa !7
  %cmp179 = icmp ugt i64 %113, 1
  br i1 %cmp179, label %land.lhs.true.181, label %if.end.200

land.lhs.true.181:                                ; preds = %if.then.174
  %114 = load i32, i32* %__result164, align 4, !tbaa !1
  %cmp182 = icmp eq i32 %114, 0
  br i1 %cmp182, label %if.then.184, label %if.end.200

if.then.184:                                      ; preds = %land.lhs.true.181
  %115 = load i8*, i8** %__s1162, align 8, !tbaa !5
  %arrayidx185 = getelementptr inbounds i8, i8* %115, i64 2
  %116 = load i8, i8* %arrayidx185, align 1, !tbaa !9
  %conv186 = zext i8 %116 to i32
  %117 = load i8, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.8, i32 0, i64 2), align 1, !tbaa !9
  %conv187 = zext i8 %117 to i32
  %sub188 = sub nsw i32 %conv186, %conv187
  store i32 %sub188, i32* %__result164, align 4, !tbaa !1
  %118 = load i64, i64* %__s2_len155, align 8, !tbaa !7
  %cmp189 = icmp ugt i64 %118, 2
  br i1 %cmp189, label %land.lhs.true.191, label %if.end.199

land.lhs.true.191:                                ; preds = %if.then.184
  %119 = load i32, i32* %__result164, align 4, !tbaa !1
  %cmp192 = icmp eq i32 %119, 0
  br i1 %cmp192, label %if.then.194, label %if.end.199

if.then.194:                                      ; preds = %land.lhs.true.191
  %120 = load i8*, i8** %__s1162, align 8, !tbaa !5
  %arrayidx195 = getelementptr inbounds i8, i8* %120, i64 3
  %121 = load i8, i8* %arrayidx195, align 1, !tbaa !9
  %conv196 = zext i8 %121 to i32
  %122 = load i8, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.8, i32 0, i64 3), align 1, !tbaa !9
  %conv197 = zext i8 %122 to i32
  %sub198 = sub nsw i32 %conv196, %conv197
  store i32 %sub198, i32* %__result164, align 4, !tbaa !1
  br label %if.end.199

if.end.199:                                       ; preds = %if.then.194, %land.lhs.true.191, %if.then.184
  br label %if.end.200

if.end.200:                                       ; preds = %if.end.199, %land.lhs.true.181, %if.then.174
  br label %if.end.201

if.end.201:                                       ; preds = %if.end.200, %land.lhs.true.171, %cond.true.160
  %123 = load i32, i32* %__result164, align 4, !tbaa !1
  store i32 %123, i32* %tmp202, !tbaa !1
  %124 = bitcast i32* %__result164 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %124) #1
  %125 = bitcast i8** %__s1162 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %125) #1
  %126 = load i32, i32* %tmp202, !tbaa !1
  br label %cond.end.205

cond.false.203:                                   ; preds = %land.lhs.true.157, %cond.true.151
  %127 = load i8*, i8** %p, align 8, !tbaa !5
  %call204 = call i32 @strcmp(i8* %127, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.8, i32 0, i32 0)) #1
  br label %cond.end.205

cond.end.205:                                     ; preds = %cond.false.203, %if.end.201
  %cond206 = phi i32 [ %126, %if.end.201 ], [ %call204, %cond.false.203 ]
  store i32 %cond206, i32* %tmp156, !tbaa !1
  %128 = bitcast i64* %__s2_len155 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %128) #1
  %129 = bitcast i64* %__s1_len153 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %129) #1
  %130 = load i32, i32* %tmp156, !tbaa !1
  %tobool207 = icmp ne i32 %130, 0
  br i1 %tobool207, label %if.end.234, label %if.then.211

cond.false.208:                                   ; preds = %for.body
  %131 = load i8*, i8** %p, align 8, !tbaa !5
  %call209 = call i32 @strncmp(i8* %131, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.8, i32 0, i32 0), i64 12) #7
  %tobool210 = icmp ne i32 %call209, 0
  br i1 %tobool210, label %if.end.234, label %if.then.211

if.then.211:                                      ; preds = %cond.false.208, %cond.end.205
  %132 = load i8*, i8** %p, align 8, !tbaa !5
  %add.ptr212 = getelementptr inbounds i8, i8* %132, i64 12
  store i8* %add.ptr212, i8** %p, align 8, !tbaa !5
  store i8* %add.ptr212, i8** %t, align 8, !tbaa !5
  br label %for.cond.213

for.cond.213:                                     ; preds = %for.inc, %if.then.211
  %133 = load i8*, i8** %t, align 8, !tbaa !5
  %134 = load i8, i8* %133, align 1, !tbaa !9
  %conv214 = sext i8 %134 to i32
  %cmp215 = icmp ne i32 %conv214, 0
  br i1 %cmp215, label %for.body.217, label %for.end

for.body.217:                                     ; preds = %for.cond.213
  %135 = load i8*, i8** %t, align 8, !tbaa !5
  %136 = load i8, i8* %135, align 1, !tbaa !9
  %conv218 = sext i8 %136 to i32
  %and = and i32 %conv218, -128
  %cmp219 = icmp eq i32 %and, 0
  br i1 %cmp219, label %land.lhs.true.221, label %if.end.229

land.lhs.true.221:                                ; preds = %for.body.217
  %137 = load i8*, i8** %t, align 8, !tbaa !5
  %138 = load i8, i8* %137, align 1, !tbaa !9
  %conv222 = sext i8 %138 to i32
  %idxprom = sext i32 %conv222 to i64
  %call223 = call i16** @__ctype_b_loc() #8
  %139 = load i16*, i16** %call223, align 8, !tbaa !5
  %arrayidx224 = getelementptr inbounds i16, i16* %139, i64 %idxprom
  %140 = load i16, i16* %arrayidx224, align 2, !tbaa !10
  %conv225 = zext i16 %140 to i32
  %and226 = and i32 %conv225, 8192
  %tobool227 = icmp ne i32 %and226, 0
  br i1 %tobool227, label %if.then.228, label %if.end.229

if.then.228:                                      ; preds = %land.lhs.true.221
  br label %for.end

if.end.229:                                       ; preds = %land.lhs.true.221, %for.body.217
  br label %for.inc

for.inc:                                          ; preds = %if.end.229
  %141 = load i8*, i8** %t, align 8, !tbaa !5
  %incdec.ptr = getelementptr inbounds i8, i8* %141, i32 1
  store i8* %incdec.ptr, i8** %t, align 8, !tbaa !5
  br label %for.cond.213

for.end:                                          ; preds = %if.then.228, %for.cond.213
  %142 = load i8*, i8** %t, align 8, !tbaa !5
  store i8 0, i8* %142, align 1, !tbaa !9
  %143 = load i32, i32* %debug, align 4, !tbaa !1
  %tobool230 = icmp ne i32 %143, 0
  br i1 %tobool230, label %if.then.231, label %if.end.233

if.then.231:                                      ; preds = %for.end
  %144 = load i8*, i8** %p, align 8, !tbaa !5
  %call232 = call i32 (%struct.sm_file*, i32, i8*, ...) @sm_io_fprintf(%struct.sm_file* getelementptr inbounds ([0 x %struct.sm_file], [0 x %struct.sm_file]* @SmIoF, i32 0, i64 2), i32 -2, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.9, i32 0, i32 0), i8* %144)
  br label %if.end.233

if.end.233:                                       ; preds = %if.then.231, %for.end
  br label %for.end.235

if.end.234:                                       ; preds = %cond.false.208, %cond.end.205
  br label %for.cond.146

for.end.235:                                      ; preds = %if.end.233, %for.cond.146
  %145 = load i8*, i8** %p, align 8, !tbaa !5
  %cmp236 = icmp eq i8* %145, null
  br i1 %cmp236, label %if.then.238, label %if.end.261

if.then.238:                                      ; preds = %for.end.235
  %146 = load i8*, i8** %addrp, align 8, !tbaa !5
  %147 = load i8, i8* %146, align 1, !tbaa !9
  %conv239 = sext i8 %147 to i32
  %cmp240 = icmp eq i32 %conv239, 33
  br i1 %cmp240, label %if.then.242, label %if.else.243

if.then.242:                                      ; preds = %if.then.238
  %148 = load i8*, i8** %addrp, align 8, !tbaa !5
  call void (i32, i8*, ...) @err(i32 65, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.10, i32 0, i32 0), i8* %148)
  br label %if.end.260

if.else.243:                                      ; preds = %if.then.238
  %149 = load i8*, i8** %addrp, align 8, !tbaa !5
  %call244 = call i8* @strrchr(i8* %149, i32 33) #7
  store i8* %call244, i8** %t, align 8, !tbaa !5
  %cmp245 = icmp ne i8* %call244, null
  br i1 %cmp245, label %if.then.247, label %if.end.259

if.then.247:                                      ; preds = %if.else.243
  %150 = load i8*, i8** %t, align 8, !tbaa !5
  store i8 0, i8* %150, align 1, !tbaa !9
  %151 = load i8*, i8** %addrp, align 8, !tbaa !5
  store i8* %151, i8** %p, align 8, !tbaa !5
  %152 = load i8*, i8** %t, align 8, !tbaa !5
  %add.ptr248 = getelementptr inbounds i8, i8* %152, i64 1
  store i8* %add.ptr248, i8** %addrp, align 8, !tbaa !5
  %153 = load i8*, i8** %addrp, align 8, !tbaa !5
  %154 = load i8, i8* %153, align 1, !tbaa !9
  %conv249 = sext i8 %154 to i32
  %cmp250 = icmp eq i32 %conv249, 0
  br i1 %cmp250, label %if.then.252, label %if.end.254

if.then.252:                                      ; preds = %if.then.247
  %arraydecay253 = getelementptr inbounds [2048 x i8], [2048 x i8]* %lbuf, i32 0, i32 0
  call void (i32, i8*, ...) @err(i32 65, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.7, i32 0, i32 0), i8* %arraydecay253)
  br label %if.end.254

if.end.254:                                       ; preds = %if.then.252, %if.then.247
  %155 = load i32, i32* %debug, align 4, !tbaa !1
  %tobool255 = icmp ne i32 %155, 0
  br i1 %tobool255, label %if.then.256, label %if.end.258

if.then.256:                                      ; preds = %if.end.254
  %156 = load i8*, i8** %p, align 8, !tbaa !5
  %call257 = call i32 (%struct.sm_file*, i32, i8*, ...) @sm_io_fprintf(%struct.sm_file* getelementptr inbounds ([0 x %struct.sm_file], [0 x %struct.sm_file]* @SmIoF, i32 0, i64 2), i32 -2, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.11, i32 0, i32 0), i8* %156)
  br label %if.end.258

if.end.258:                                       ; preds = %if.then.256, %if.end.254
  br label %if.end.259

if.end.259:                                       ; preds = %if.end.258, %if.else.243
  br label %if.end.260

if.end.260:                                       ; preds = %if.end.259, %if.then.242
  br label %if.end.261

if.end.261:                                       ; preds = %if.end.260, %for.end.235
  %157 = load i8*, i8** %p, align 8, !tbaa !5
  %cmp262 = icmp ne i8* %157, null
  br i1 %cmp262, label %if.then.264, label %if.end.334

if.then.264:                                      ; preds = %if.end.261
  %158 = load i8*, i8** %p, align 8, !tbaa !5
  store i8* %158, i8** %t, align 8, !tbaa !5
  br label %for.cond.265

for.cond.265:                                     ; preds = %for.inc.284, %if.then.264
  %159 = load i8*, i8** %t, align 8, !tbaa !5
  %160 = load i8, i8* %159, align 1, !tbaa !9
  %conv266 = sext i8 %160 to i32
  %cmp267 = icmp ne i32 %conv266, 0
  br i1 %cmp267, label %for.body.269, label %for.end.286

for.body.269:                                     ; preds = %for.cond.265
  %161 = load i8*, i8** %t, align 8, !tbaa !5
  %162 = load i8, i8* %161, align 1, !tbaa !9
  %conv270 = sext i8 %162 to i32
  %and271 = and i32 %conv270, -128
  %cmp272 = icmp eq i32 %and271, 0
  br i1 %cmp272, label %land.lhs.true.274, label %if.end.283

land.lhs.true.274:                                ; preds = %for.body.269
  %163 = load i8*, i8** %t, align 8, !tbaa !5
  %164 = load i8, i8* %163, align 1, !tbaa !9
  %conv275 = sext i8 %164 to i32
  %idxprom276 = sext i32 %conv275 to i64
  %call277 = call i16** @__ctype_b_loc() #8
  %165 = load i16*, i16** %call277, align 8, !tbaa !5
  %arrayidx278 = getelementptr inbounds i16, i16* %165, i64 %idxprom276
  %166 = load i16, i16* %arrayidx278, align 2, !tbaa !10
  %conv279 = zext i16 %166 to i32
  %and280 = and i32 %conv279, 8192
  %tobool281 = icmp ne i32 %and280, 0
  br i1 %tobool281, label %if.then.282, label %if.end.283

if.then.282:                                      ; preds = %land.lhs.true.274
  br label %for.end.286

if.end.283:                                       ; preds = %land.lhs.true.274, %for.body.269
  br label %for.inc.284

for.inc.284:                                      ; preds = %if.end.283
  %167 = load i8*, i8** %t, align 8, !tbaa !5
  %incdec.ptr285 = getelementptr inbounds i8, i8* %167, i32 1
  store i8* %incdec.ptr285, i8** %t, align 8, !tbaa !5
  br label %for.cond.265

for.end.286:                                      ; preds = %if.then.282, %for.cond.265
  %168 = load i8*, i8** %t, align 8, !tbaa !5
  store i8 0, i8* %168, align 1, !tbaa !9
  %169 = load i8*, i8** %from_sys, align 8, !tbaa !5
  %cmp287 = icmp eq i8* %169, null
  br i1 %cmp287, label %if.then.289, label %if.end.298

if.then.289:                                      ; preds = %for.end.286
  %170 = load i8*, i8** %p, align 8, !tbaa !5
  %call290 = call i64 @strlen(i8* %170) #7
  %add = add i64 %call290, 1
  %conv291 = trunc i64 %add to i32
  %call292 = call i8* @xalloc(i32 %conv291)
  %171 = load i8*, i8** %p, align 8, !tbaa !5
  %call293 = call i8* @strcpy(i8* %call292, i8* %171) #1
  store i8* %call293, i8** %from_sys, align 8, !tbaa !5
  %172 = load i32, i32* %debug, align 4, !tbaa !1
  %tobool294 = icmp ne i32 %172, 0
  br i1 %tobool294, label %if.then.295, label %if.end.297

if.then.295:                                      ; preds = %if.then.289
  %173 = load i8*, i8** %from_sys, align 8, !tbaa !5
  %call296 = call i32 (%struct.sm_file*, i32, i8*, ...) @sm_io_fprintf(%struct.sm_file* getelementptr inbounds ([0 x %struct.sm_file], [0 x %struct.sm_file]* @SmIoF, i32 0, i64 2), i32 -2, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.12, i32 0, i32 0), i8* %173)
  br label %if.end.297

if.end.297:                                       ; preds = %if.then.295, %if.then.289
  br label %if.end.298

if.end.298:                                       ; preds = %if.end.297, %for.end.286
  %174 = load i8*, i8** %t, align 8, !tbaa !5
  %175 = load i8*, i8** %p, align 8, !tbaa !5
  %sub.ptr.lhs.cast = ptrtoint i8* %174 to i64
  %sub.ptr.rhs.cast = ptrtoint i8* %175 to i64
  %sub.ptr.sub = sub i64 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast
  store i64 %sub.ptr.sub, i64* %len, align 8, !tbaa !7
  %176 = load i8*, i8** %from_path, align 8, !tbaa !5
  %cmp299 = icmp eq i8* %176, null
  br i1 %cmp299, label %if.then.301, label %if.end.307

if.then.301:                                      ; preds = %if.end.298
  store i64 0, i64* %fplen, align 8, !tbaa !7
  store i64 256, i64* %fptlen, align 8, !tbaa !7
  %call302 = call noalias i8* @malloc(i64 256) #1
  store i8* %call302, i8** %from_path, align 8, !tbaa !5
  %cmp303 = icmp eq i8* %call302, null
  br i1 %cmp303, label %if.then.305, label %if.end.306

if.then.305:                                      ; preds = %if.then.301
  call void (i32, i8*, ...) @err(i32 75, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.13, i32 0, i32 0))
  br label %if.end.306

if.end.306:                                       ; preds = %if.then.305, %if.then.301
  br label %if.end.307

if.end.307:                                       ; preds = %if.end.306, %if.end.298
  %177 = load i64, i64* %fplen, align 8, !tbaa !7
  %178 = load i64, i64* %len, align 8, !tbaa !7
  %add308 = add i64 %177, %178
  %add309 = add i64 %add308, 2
  %179 = load i64, i64* %fptlen, align 8, !tbaa !7
  %cmp310 = icmp ugt i64 %add309, %179
  br i1 %cmp310, label %if.then.312, label %if.end.329

if.then.312:                                      ; preds = %if.end.307
  %180 = load i64, i64* %fplen, align 8, !tbaa !7
  %181 = load i64, i64* %len, align 8, !tbaa !7
  %add313 = add i64 %180, %181
  %add314 = add i64 %add313, 2
  %cmp315 = icmp ugt i64 %add314, 256
  br i1 %cmp315, label %cond.true.317, label %cond.false.320

cond.true.317:                                    ; preds = %if.then.312
  %182 = load i64, i64* %fplen, align 8, !tbaa !7
  %183 = load i64, i64* %len, align 8, !tbaa !7
  %add318 = add i64 %182, %183
  %add319 = add i64 %add318, 2
  br label %cond.end.321

cond.false.320:                                   ; preds = %if.then.312
  br label %cond.end.321

cond.end.321:                                     ; preds = %cond.false.320, %cond.true.317
  %cond322 = phi i64 [ %add319, %cond.true.317 ], [ 256, %cond.false.320 ]
  %184 = load i64, i64* %fptlen, align 8, !tbaa !7
  %add323 = add i64 %184, %cond322
  store i64 %add323, i64* %fptlen, align 8, !tbaa !7
  %185 = load i8*, i8** %from_path, align 8, !tbaa !5
  %186 = load i64, i64* %fptlen, align 8, !tbaa !7
  %call324 = call i8* @realloc(i8* %185, i64 %186) #1
  store i8* %call324, i8** %from_path, align 8, !tbaa !5
  %cmp325 = icmp eq i8* %call324, null
  br i1 %cmp325, label %if.then.327, label %if.end.328

if.then.327:                                      ; preds = %cond.end.321
  call void (i32, i8*, ...) @err(i32 75, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.13, i32 0, i32 0))
  br label %if.end.328

if.end.328:                                       ; preds = %if.then.327, %cond.end.321
  br label %if.end.329

if.end.329:                                       ; preds = %if.end.328, %if.end.307
  %187 = load i8*, i8** %from_path, align 8, !tbaa !5
  %188 = load i64, i64* %fplen, align 8, !tbaa !7
  %add.ptr330 = getelementptr inbounds i8, i8* %187, i64 %188
  %189 = load i8*, i8** %p, align 8, !tbaa !5
  %190 = load i64, i64* %len, align 8, !tbaa !7
  call void @llvm.memmove.p0i8.p0i8.i64(i8* %add.ptr330, i8* %189, i64 %190, i32 1, i1 false)
  %191 = load i64, i64* %len, align 8, !tbaa !7
  %192 = load i64, i64* %fplen, align 8, !tbaa !7
  %add331 = add i64 %192, %191
  store i64 %add331, i64* %fplen, align 8, !tbaa !7
  %193 = load i64, i64* %fplen, align 8, !tbaa !7
  %inc = add i64 %193, 1
  store i64 %inc, i64* %fplen, align 8, !tbaa !7
  %194 = load i8*, i8** %from_path, align 8, !tbaa !5
  %arrayidx332 = getelementptr inbounds i8, i8* %194, i64 %193
  store i8 33, i8* %arrayidx332, align 1, !tbaa !9
  %195 = load i64, i64* %fplen, align 8, !tbaa !7
  %196 = load i8*, i8** %from_path, align 8, !tbaa !5
  %arrayidx333 = getelementptr inbounds i8, i8* %196, i64 %195
  store i8 0, i8* %arrayidx333, align 1, !tbaa !9
  br label %if.end.334

if.end.334:                                       ; preds = %if.end.329, %if.end.261
  %197 = load i8*, i8** %addrp, align 8, !tbaa !5
  store i8* %197, i8** %p, align 8, !tbaa !5
  br label %for.cond.335

for.cond.335:                                     ; preds = %for.inc.354, %if.end.334
  %198 = load i8*, i8** %p, align 8, !tbaa !5
  %199 = load i8, i8* %198, align 1, !tbaa !9
  %conv336 = sext i8 %199 to i32
  %cmp337 = icmp ne i32 %conv336, 0
  br i1 %cmp337, label %for.body.339, label %for.end.356

for.body.339:                                     ; preds = %for.cond.335
  %200 = load i8*, i8** %p, align 8, !tbaa !5
  %201 = load i8, i8* %200, align 1, !tbaa !9
  %conv340 = sext i8 %201 to i32
  %and341 = and i32 %conv340, -128
  %cmp342 = icmp eq i32 %and341, 0
  br i1 %cmp342, label %land.lhs.true.344, label %if.end.353

land.lhs.true.344:                                ; preds = %for.body.339
  %202 = load i8*, i8** %p, align 8, !tbaa !5
  %203 = load i8, i8* %202, align 1, !tbaa !9
  %conv345 = sext i8 %203 to i32
  %idxprom346 = sext i32 %conv345 to i64
  %call347 = call i16** @__ctype_b_loc() #8
  %204 = load i16*, i16** %call347, align 8, !tbaa !5
  %arrayidx348 = getelementptr inbounds i16, i16* %204, i64 %idxprom346
  %205 = load i16, i16* %arrayidx348, align 2, !tbaa !10
  %conv349 = zext i16 %205 to i32
  %and350 = and i32 %conv349, 8192
  %tobool351 = icmp ne i32 %and350, 0
  br i1 %tobool351, label %if.then.352, label %if.end.353

if.then.352:                                      ; preds = %land.lhs.true.344
  br label %for.end.356

if.end.353:                                       ; preds = %land.lhs.true.344, %for.body.339
  br label %for.inc.354

for.inc.354:                                      ; preds = %if.end.353
  %206 = load i8*, i8** %p, align 8, !tbaa !5
  %incdec.ptr355 = getelementptr inbounds i8, i8* %206, i32 1
  store i8* %incdec.ptr355, i8** %p, align 8, !tbaa !5
  br label %for.cond.335

for.end.356:                                      ; preds = %if.then.352, %for.cond.335
  %207 = load i8*, i8** %p, align 8, !tbaa !5
  store i8 0, i8* %207, align 1, !tbaa !9
  %208 = load i8*, i8** %addrp, align 8, !tbaa !5
  %209 = load i8, i8* %208, align 1, !tbaa !9
  %conv357 = sext i8 %209 to i32
  %cmp358 = icmp eq i32 %conv357, 0
  br i1 %cmp358, label %if.then.360, label %if.end.361

if.then.360:                                      ; preds = %for.end.356
  store i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.14, i32 0, i32 0), i8** %addrp, align 8, !tbaa !5
  br label %if.end.361

if.end.361:                                       ; preds = %if.then.360, %for.end.356
  %210 = load i8*, i8** %from_user, align 8, !tbaa !5
  %cmp362 = icmp ne i8* %210, null
  br i1 %cmp362, label %if.then.364, label %if.end.365

if.then.364:                                      ; preds = %if.end.361
  %211 = load i8*, i8** %from_user, align 8, !tbaa !5
  call void @free(i8* %211) #1
  br label %if.end.365

if.end.365:                                       ; preds = %if.then.364, %if.end.361
  %212 = load i8*, i8** %addrp, align 8, !tbaa !5
  %call366 = call i64 @strlen(i8* %212) #7
  %add367 = add i64 %call366, 1
  %conv368 = trunc i64 %add367 to i32
  %call369 = call i8* @xalloc(i32 %conv368)
  %213 = load i8*, i8** %addrp, align 8, !tbaa !5
  %call370 = call i8* @strcpy(i8* %call369, i8* %213) #1
  store i8* %call370, i8** %from_user, align 8, !tbaa !5
  %214 = load i32, i32* %debug, align 4, !tbaa !1
  %tobool371 = icmp ne i32 %214, 0
  br i1 %tobool371, label %if.then.372, label %if.end.379

if.then.372:                                      ; preds = %if.end.365
  %215 = load i8*, i8** %from_path, align 8, !tbaa !5
  %cmp373 = icmp ne i8* %215, null
  br i1 %cmp373, label %if.then.375, label %if.end.377

if.then.375:                                      ; preds = %if.then.372
  %216 = load i8*, i8** %from_path, align 8, !tbaa !5
  %call376 = call i32 (%struct.sm_file*, i32, i8*, ...) @sm_io_fprintf(%struct.sm_file* getelementptr inbounds ([0 x %struct.sm_file], [0 x %struct.sm_file]* @SmIoF, i32 0, i64 2), i32 -2, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.15, i32 0, i32 0), i8* %216)
  br label %if.end.377

if.end.377:                                       ; preds = %if.then.375, %if.then.372
  %217 = load i8*, i8** %from_user, align 8, !tbaa !5
  %call378 = call i32 (%struct.sm_file*, i32, i8*, ...) @sm_io_fprintf(%struct.sm_file* getelementptr inbounds ([0 x %struct.sm_file], [0 x %struct.sm_file]* @SmIoF, i32 0, i64 2), i32 -2, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.16, i32 0, i32 0), i8* %217)
  br label %if.end.379

if.end.379:                                       ; preds = %if.end.377, %if.end.365
  %218 = load i64, i64* %offset, align 8, !tbaa !7
  %cmp380 = icmp ne i64 %218, -1
  br i1 %cmp380, label %if.then.382, label %if.end.384

if.then.382:                                      ; preds = %if.end.379
  %call383 = call i64 @sm_io_tell(%struct.sm_file* getelementptr inbounds ([0 x %struct.sm_file], [0 x %struct.sm_file]* @SmIoF, i32 0, i64 0), i32 -2)
  store i64 %call383, i64* %offset, align 8, !tbaa !7
  br label %if.end.384

if.end.384:                                       ; preds = %if.then.382, %if.end.379
  br label %for.cond

for.end.385:                                      ; preds = %if.else.134
  %219 = load i32, i32* %argc.addr, align 4, !tbaa !1
  %add386 = add nsw i32 10, %219
  %conv387 = sext i32 %add386 to i64
  %mul = mul i64 8, %conv387
  %conv388 = trunc i64 %mul to i32
  %call389 = call i8* @xalloc(i32 %conv388)
  %220 = bitcast i8* %call389 to i8**
  store i8** %220, i8*** %args, align 8, !tbaa !5
  store i32 0, i32* %i, align 4, !tbaa !1
  %221 = load i32, i32* %i, align 4, !tbaa !1
  %inc390 = add nsw i32 %221, 1
  store i32 %inc390, i32* %i, align 4, !tbaa !1
  %idxprom391 = sext i32 %221 to i64
  %222 = load i8**, i8*** %args, align 8, !tbaa !5
  %arrayidx392 = getelementptr inbounds i8*, i8** %222, i64 %idxprom391
  store i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.17, i32 0, i32 0), i8** %arrayidx392, align 8, !tbaa !5
  %223 = load i32, i32* %i, align 4, !tbaa !1
  %inc393 = add nsw i32 %223, 1
  store i32 %inc393, i32* %i, align 4, !tbaa !1
  %idxprom394 = sext i32 %223 to i64
  %224 = load i8**, i8*** %args, align 8, !tbaa !5
  %arrayidx395 = getelementptr inbounds i8*, i8** %224, i64 %idxprom394
  store i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.18, i32 0, i32 0), i8** %arrayidx395, align 8, !tbaa !5
  %225 = load i32, i32* %i, align 4, !tbaa !1
  %inc396 = add nsw i32 %225, 1
  store i32 %inc396, i32* %i, align 4, !tbaa !1
  %idxprom397 = sext i32 %225 to i64
  %226 = load i8**, i8*** %args, align 8, !tbaa !5
  %arrayidx398 = getelementptr inbounds i8*, i8** %226, i64 %idxprom397
  store i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.19, i32 0, i32 0), i8** %arrayidx398, align 8, !tbaa !5
  %227 = load i32, i32* %i, align 4, !tbaa !1
  %inc399 = add nsw i32 %227, 1
  store i32 %inc399, i32* %i, align 4, !tbaa !1
  %idxprom400 = sext i32 %227 to i64
  %228 = load i8**, i8*** %args, align 8, !tbaa !5
  %arrayidx401 = getelementptr inbounds i8*, i8** %228, i64 %idxprom400
  store i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.20, i32 0, i32 0), i8** %arrayidx401, align 8, !tbaa !5
  %229 = load i32, i32* %i, align 4, !tbaa !1
  %inc402 = add nsw i32 %229, 1
  store i32 %inc402, i32* %i, align 4, !tbaa !1
  %idxprom403 = sext i32 %229 to i64
  %230 = load i8**, i8*** %args, align 8, !tbaa !5
  %arrayidx404 = getelementptr inbounds i8*, i8** %230, i64 %idxprom403
  store i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.21, i32 0, i32 0), i8** %arrayidx404, align 8, !tbaa !5
  %231 = load i8*, i8** %from_sys, align 8, !tbaa !5
  %cmp405 = icmp eq i8* %231, null
  br i1 %cmp405, label %if.then.407, label %if.else.410

if.then.407:                                      ; preds = %for.end.385
  %arraydecay408 = getelementptr inbounds [2048 x i8], [2048 x i8]* %buf, i32 0, i32 0
  %232 = load i8*, i8** %domain, align 8, !tbaa !5
  %call409 = call i32 (i8*, i64, i8*, ...) @sm_snprintf(i8* %arraydecay408, i64 2048, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.22, i32 0, i32 0), i8* %232)
  br label %if.end.421

if.else.410:                                      ; preds = %for.end.385
  %233 = load i8*, i8** %from_sys, align 8, !tbaa !5
  %call411 = call i8* @strchr(i8* %233, i32 46) #1
  %cmp412 = icmp eq i8* %call411, null
  br i1 %cmp412, label %if.then.414, label %if.else.417

if.then.414:                                      ; preds = %if.else.410
  %arraydecay415 = getelementptr inbounds [2048 x i8], [2048 x i8]* %buf, i32 0, i32 0
  %234 = load i8*, i8** %domain, align 8, !tbaa !5
  %235 = load i8*, i8** %from_sys, align 8, !tbaa !5
  %236 = load i8*, i8** %domain, align 8, !tbaa !5
  %call416 = call i32 (i8*, i64, i8*, ...) @sm_snprintf(i8* %arraydecay415, i64 2048, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.23, i32 0, i32 0), i8* %234, i8* %235, i8* %236)
  br label %if.end.420

if.else.417:                                      ; preds = %if.else.410
  %arraydecay418 = getelementptr inbounds [2048 x i8], [2048 x i8]* %buf, i32 0, i32 0
  %237 = load i8*, i8** %domain, align 8, !tbaa !5
  %238 = load i8*, i8** %from_sys, align 8, !tbaa !5
  %call419 = call i32 (i8*, i64, i8*, ...) @sm_snprintf(i8* %arraydecay418, i64 2048, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.24, i32 0, i32 0), i8* %237, i8* %238)
  br label %if.end.420

if.end.420:                                       ; preds = %if.else.417, %if.then.414
  br label %if.end.421

if.end.421:                                       ; preds = %if.end.420, %if.then.407
  %arraydecay422 = getelementptr inbounds [2048 x i8], [2048 x i8]* %buf, i32 0, i32 0
  %call423 = call i64 @strlen(i8* %arraydecay422) #7
  %add424 = add i64 %call423, 1
  %conv425 = trunc i64 %add424 to i32
  %call426 = call i8* @xalloc(i32 %conv425)
  %arraydecay427 = getelementptr inbounds [2048 x i8], [2048 x i8]* %buf, i32 0, i32 0
  %call428 = call i8* @strcpy(i8* %call426, i8* %arraydecay427) #1
  %239 = load i32, i32* %i, align 4, !tbaa !1
  %inc429 = add nsw i32 %239, 1
  store i32 %inc429, i32* %i, align 4, !tbaa !1
  %idxprom430 = sext i32 %239 to i64
  %240 = load i8**, i8*** %args, align 8, !tbaa !5
  %arrayidx431 = getelementptr inbounds i8*, i8** %240, i64 %idxprom430
  store i8* %call428, i8** %arrayidx431, align 8, !tbaa !5
  %arraydecay432 = getelementptr inbounds [2048 x i8], [2048 x i8]* %buf, i32 0, i32 0
  %241 = load i8*, i8** %from_path, align 8, !tbaa !5
  %tobool433 = icmp ne i8* %241, null
  br i1 %tobool433, label %cond.true.434, label %cond.false.435

cond.true.434:                                    ; preds = %if.end.421
  %242 = load i8*, i8** %from_path, align 8, !tbaa !5
  br label %cond.end.436

cond.false.435:                                   ; preds = %if.end.421
  br label %cond.end.436

cond.end.436:                                     ; preds = %cond.false.435, %cond.true.434
  %cond437 = phi i8* [ %242, %cond.true.434 ], [ getelementptr inbounds ([1 x i8], [1 x i8]* @.str.26, i32 0, i32 0), %cond.false.435 ]
  %243 = load i8*, i8** %from_user, align 8, !tbaa !5
  %call438 = call i32 (i8*, i64, i8*, ...) @sm_snprintf(i8* %arraydecay432, i64 2048, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.25, i32 0, i32 0), i8* %cond437, i8* %243)
  %arraydecay439 = getelementptr inbounds [2048 x i8], [2048 x i8]* %buf, i32 0, i32 0
  %call440 = call i64 @strlen(i8* %arraydecay439) #7
  %add441 = add i64 %call440, 1
  %conv442 = trunc i64 %add441 to i32
  %call443 = call i8* @xalloc(i32 %conv442)
  %arraydecay444 = getelementptr inbounds [2048 x i8], [2048 x i8]* %buf, i32 0, i32 0
  %call445 = call i8* @strcpy(i8* %call443, i8* %arraydecay444) #1
  %244 = load i32, i32* %i, align 4, !tbaa !1
  %inc446 = add nsw i32 %244, 1
  store i32 %inc446, i32* %i, align 4, !tbaa !1
  %idxprom447 = sext i32 %244 to i64
  %245 = load i8**, i8*** %args, align 8, !tbaa !5
  %arrayidx448 = getelementptr inbounds i8*, i8** %245, i64 %idxprom447
  store i8* %call445, i8** %arrayidx448, align 8, !tbaa !5
  br label %while.cond.449

while.cond.449:                                   ; preds = %if.end.488, %cond.end.436
  %246 = load i8**, i8*** %argv.addr, align 8, !tbaa !5
  %247 = load i8*, i8** %246, align 8, !tbaa !5
  %cmp450 = icmp ne i8* %247, null
  br i1 %cmp450, label %while.body.452, label %while.end.489

while.body.452:                                   ; preds = %while.cond.449
  %248 = load i8**, i8*** %argv.addr, align 8, !tbaa !5
  %249 = load i8*, i8** %248, align 8, !tbaa !5
  %250 = load i8, i8* %249, align 1, !tbaa !9
  %conv453 = sext i8 %250 to i32
  %cmp454 = icmp eq i32 %conv453, 45
  br i1 %cmp454, label %if.then.456, label %if.end.457

if.then.456:                                      ; preds = %while.body.452
  %251 = load i8**, i8*** %argv.addr, align 8, !tbaa !5
  %252 = load i8*, i8** %251, align 8, !tbaa !5
  call void (i32, i8*, ...) @err(i32 64, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.27, i32 0, i32 0), i8* %252)
  br label %if.end.457

if.end.457:                                       ; preds = %if.then.456, %while.body.452
  %253 = load i8**, i8*** %argv.addr, align 8, !tbaa !5
  %254 = load i8*, i8** %253, align 8, !tbaa !5
  %call458 = call i8* @strchr(i8* %254, i32 44) #1
  %cmp459 = icmp eq i8* %call458, null
  br i1 %cmp459, label %if.then.465, label %lor.lhs.false.461

lor.lhs.false.461:                                ; preds = %if.end.457
  %255 = load i8**, i8*** %argv.addr, align 8, !tbaa !5
  %256 = load i8*, i8** %255, align 8, !tbaa !5
  %call462 = call i8* @strchr(i8* %256, i32 60) #1
  %cmp463 = icmp ne i8* %call462, null
  br i1 %cmp463, label %if.then.465, label %if.else.469

if.then.465:                                      ; preds = %lor.lhs.false.461, %if.end.457
  %257 = load i8**, i8*** %argv.addr, align 8, !tbaa !5
  %258 = load i8*, i8** %257, align 8, !tbaa !5
  %259 = load i32, i32* %i, align 4, !tbaa !1
  %inc466 = add nsw i32 %259, 1
  store i32 %inc466, i32* %i, align 4, !tbaa !1
  %idxprom467 = sext i32 %259 to i64
  %260 = load i8**, i8*** %args, align 8, !tbaa !5
  %arrayidx468 = getelementptr inbounds i8*, i8** %260, i64 %idxprom467
  store i8* %258, i8** %arrayidx468, align 8, !tbaa !5
  br label %if.end.483

if.else.469:                                      ; preds = %lor.lhs.false.461
  %261 = load i8**, i8*** %argv.addr, align 8, !tbaa !5
  %262 = load i8*, i8** %261, align 8, !tbaa !5
  %call470 = call i64 @strlen(i8* %262) #7
  %add471 = add i64 %call470, 3
  store i64 %add471, i64* %len, align 8, !tbaa !7
  %263 = load i64, i64* %len, align 8, !tbaa !7
  %call472 = call noalias i8* @malloc(i64 %263) #1
  %264 = load i32, i32* %i, align 4, !tbaa !1
  %idxprom473 = sext i32 %264 to i64
  %265 = load i8**, i8*** %args, align 8, !tbaa !5
  %arrayidx474 = getelementptr inbounds i8*, i8** %265, i64 %idxprom473
  store i8* %call472, i8** %arrayidx474, align 8, !tbaa !5
  %cmp475 = icmp eq i8* %call472, null
  br i1 %cmp475, label %if.then.477, label %if.end.478

if.then.477:                                      ; preds = %if.else.469
  call void (i32, i8*, ...) @err(i32 75, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.28, i32 0, i32 0))
  br label %if.end.478

if.end.478:                                       ; preds = %if.then.477, %if.else.469
  %266 = load i32, i32* %i, align 4, !tbaa !1
  %inc479 = add nsw i32 %266, 1
  store i32 %inc479, i32* %i, align 4, !tbaa !1
  %idxprom480 = sext i32 %266 to i64
  %267 = load i8**, i8*** %args, align 8, !tbaa !5
  %arrayidx481 = getelementptr inbounds i8*, i8** %267, i64 %idxprom480
  %268 = load i8*, i8** %arrayidx481, align 8, !tbaa !5
  %269 = load i64, i64* %len, align 8, !tbaa !7
  %270 = load i8**, i8*** %argv.addr, align 8, !tbaa !5
  %271 = load i8*, i8** %270, align 8, !tbaa !5
  %call482 = call i32 (i8*, i64, i8*, ...) @sm_snprintf(i8* %268, i64 %269, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.29, i32 0, i32 0), i8* %271)
  br label %if.end.483

if.end.483:                                       ; preds = %if.end.478, %if.then.465
  %272 = load i8**, i8*** %argv.addr, align 8, !tbaa !5
  %incdec.ptr484 = getelementptr inbounds i8*, i8** %272, i32 1
  store i8** %incdec.ptr484, i8*** %argv.addr, align 8, !tbaa !5
  %273 = load i32, i32* %argc.addr, align 4, !tbaa !1
  %dec = add nsw i32 %273, -1
  store i32 %dec, i32* %argc.addr, align 4, !tbaa !1
  %274 = load i32, i32* %argc.addr, align 4, !tbaa !1
  %cmp485 = icmp slt i32 %274, 0
  br i1 %cmp485, label %if.then.487, label %if.end.488

if.then.487:                                      ; preds = %if.end.483
  call void (i32, i8*, ...) @err(i32 70, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.30, i32 0, i32 0))
  br label %if.end.488

if.end.488:                                       ; preds = %if.then.487, %if.end.483
  br label %while.cond.449

while.end.489:                                    ; preds = %while.cond.449
  %275 = load i32, i32* %i, align 4, !tbaa !1
  %idxprom490 = sext i32 %275 to i64
  %276 = load i8**, i8*** %args, align 8, !tbaa !5
  %arrayidx491 = getelementptr inbounds i8*, i8** %276, i64 %idxprom490
  store i8* null, i8** %arrayidx491, align 8, !tbaa !5
  %277 = load i32, i32* %debug, align 4, !tbaa !1
  %tobool492 = icmp ne i32 %277, 0
  br i1 %tobool492, label %if.then.493, label %if.end.507

if.then.493:                                      ; preds = %while.end.489
  %call494 = call i32 (%struct.sm_file*, i32, i8*, ...) @sm_io_fprintf(%struct.sm_file* getelementptr inbounds ([0 x %struct.sm_file], [0 x %struct.sm_file]* @SmIoF, i32 0, i64 2), i32 -2, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.31, i32 0, i32 0))
  store i32 0, i32* %i, align 4, !tbaa !1
  br label %for.cond.495

for.cond.495:                                     ; preds = %for.inc.504, %if.then.493
  %278 = load i32, i32* %i, align 4, !tbaa !1
  %idxprom496 = sext i32 %278 to i64
  %279 = load i8**, i8*** %args, align 8, !tbaa !5
  %arrayidx497 = getelementptr inbounds i8*, i8** %279, i64 %idxprom496
  %280 = load i8*, i8** %arrayidx497, align 8, !tbaa !5
  %cmp498 = icmp ne i8* %280, null
  br i1 %cmp498, label %for.body.500, label %for.end.506

for.body.500:                                     ; preds = %for.cond.495
  %281 = load i32, i32* %i, align 4, !tbaa !1
  %idxprom501 = sext i32 %281 to i64
  %282 = load i8**, i8*** %args, align 8, !tbaa !5
  %arrayidx502 = getelementptr inbounds i8*, i8** %282, i64 %idxprom501
  %283 = load i8*, i8** %arrayidx502, align 8, !tbaa !5
  %call503 = call i32 (%struct.sm_file*, i32, i8*, ...) @sm_io_fprintf(%struct.sm_file* getelementptr inbounds ([0 x %struct.sm_file], [0 x %struct.sm_file]* @SmIoF, i32 0, i64 2), i32 -2, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.32, i32 0, i32 0), i8* %283)
  br label %for.inc.504

for.inc.504:                                      ; preds = %for.body.500
  %284 = load i32, i32* %i, align 4, !tbaa !1
  %inc505 = add nsw i32 %284, 1
  store i32 %inc505, i32* %i, align 4, !tbaa !1
  br label %for.cond.495

for.end.506:                                      ; preds = %for.cond.495
  br label %if.end.507

if.end.507:                                       ; preds = %for.end.506, %while.end.489
  %call508 = call i32 @fstat(i32 0, %struct.stat* %sb) #1
  %tobool509 = icmp ne i32 %call508, 0
  br i1 %tobool509, label %if.end.521, label %land.lhs.true.510

land.lhs.true.510:                                ; preds = %if.end.507
  %st_mode = getelementptr inbounds %struct.stat, %struct.stat* %sb, i32 0, i32 3
  %285 = load i32, i32* %st_mode, align 4, !tbaa !12
  %and511 = and i32 %285, 61440
  %cmp512 = icmp eq i32 %and511, 32768
  br i1 %cmp512, label %if.then.514, label %if.end.521

if.then.514:                                      ; preds = %land.lhs.true.510
  %286 = load i64, i64* %offset, align 8, !tbaa !7
  %call515 = call i64 @lseek(i32 0, i64 %286, i32 0) #1
  %287 = load i64, i64* %offset, align 8, !tbaa !7
  %cmp516 = icmp ne i64 %call515, %287
  br i1 %cmp516, label %if.then.518, label %if.end.519

if.then.518:                                      ; preds = %if.then.514
  call void (i32, i8*, ...) @err(i32 75, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.33, i32 0, i32 0))
  br label %if.end.519

if.end.519:                                       ; preds = %if.then.518, %if.then.514
  %288 = load i8**, i8*** %args, align 8, !tbaa !5
  %call520 = call i32 @execv(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.17, i32 0, i32 0), i8** %288) #1
  call void (i32, i8*, ...) @err(i32 71, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.34, i32 0, i32 0), i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.17, i32 0, i32 0))
  br label %if.end.521

if.end.521:                                       ; preds = %if.end.519, %land.lhs.true.510, %if.end.507
  %arraydecay522 = getelementptr inbounds [2 x i32], [2 x i32]* %pdes, i32 0, i32 0
  %call523 = call i32 @pipe(i32* %arraydecay522) #1
  %cmp524 = icmp slt i32 %call523, 0
  br i1 %cmp524, label %if.then.526, label %if.end.527

if.then.526:                                      ; preds = %if.end.521
  call void (i32, i8*, ...) @err(i32 71, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.35, i32 0, i32 0))
  br label %if.end.527

if.end.527:                                       ; preds = %if.then.526, %if.end.521
  %call528 = call i32 @fork() #1
  store i32 %call528, i32* %pid, align 4, !tbaa !1
  switch i32 %call528, label %sw.epilog.543 [
    i32 -1, label %sw.bb.529
    i32 0, label %sw.bb.530
  ]

sw.bb.529:                                        ; preds = %if.end.527
  call void (i32, i8*, ...) @err(i32 71, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.36, i32 0, i32 0))
  br label %sw.bb.530

sw.bb.530:                                        ; preds = %if.end.527, %sw.bb.529
  %arrayidx531 = getelementptr inbounds [2 x i32], [2 x i32]* %pdes, i32 0, i64 0
  %289 = load i32, i32* %arrayidx531, align 4, !tbaa !1
  %cmp532 = icmp ne i32 %289, 0
  br i1 %cmp532, label %if.then.534, label %if.end.539

if.then.534:                                      ; preds = %sw.bb.530
  %arrayidx535 = getelementptr inbounds [2 x i32], [2 x i32]* %pdes, i32 0, i64 0
  %290 = load i32, i32* %arrayidx535, align 4, !tbaa !1
  %call536 = call i32 @dup2(i32 %290, i32 0) #1
  %arrayidx537 = getelementptr inbounds [2 x i32], [2 x i32]* %pdes, i32 0, i64 0
  %291 = load i32, i32* %arrayidx537, align 4, !tbaa !1
  %call538 = call i32 @close(i32 %291)
  br label %if.end.539

if.end.539:                                       ; preds = %if.then.534, %sw.bb.530
  %arrayidx540 = getelementptr inbounds [2 x i32], [2 x i32]* %pdes, i32 0, i64 1
  %292 = load i32, i32* %arrayidx540, align 4, !tbaa !1
  %call541 = call i32 @close(i32 %292)
  %293 = load i8**, i8*** %args, align 8, !tbaa !5
  %call542 = call i32 @execv(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.17, i32 0, i32 0), i8** %293) #1
  call void (i32, i8*, ...) @err(i32 69, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.34, i32 0, i32 0), i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.17, i32 0, i32 0))
  br label %sw.epilog.543

sw.epilog.543:                                    ; preds = %if.end.539, %if.end.527
  %arrayidx544 = getelementptr inbounds [2 x i32], [2 x i32]* %pdes, i32 0, i64 1
  %294 = bitcast i32* %arrayidx544 to i8*
  %call545 = call %struct.sm_file* @sm_io_open(%struct.sm_file* @SmFtStdiofd_def, i32 -2, i8* %294, i32 3, i8* null)
  store %struct.sm_file* %call545, %struct.sm_file** %fp, align 8, !tbaa !5
  %cmp546 = icmp eq %struct.sm_file* %call545, null
  br i1 %cmp546, label %if.then.548, label %if.end.549

if.then.548:                                      ; preds = %sw.epilog.543
  call void (i32, i8*, ...) @err(i32 71, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.37, i32 0, i32 0))
  br label %if.end.549

if.end.549:                                       ; preds = %if.then.548, %sw.epilog.543
  %arrayidx550 = getelementptr inbounds [2 x i32], [2 x i32]* %pdes, i32 0, i64 0
  %295 = load i32, i32* %arrayidx550, align 4, !tbaa !1
  %call551 = call i32 @close(i32 %295)
  br label %do.body

do.body:                                          ; preds = %do.cond, %if.end.549
  %296 = load %struct.sm_file*, %struct.sm_file** %fp, align 8, !tbaa !5
  %arraydecay552 = getelementptr inbounds [2048 x i8], [2048 x i8]* %lbuf, i32 0, i32 0
  %call553 = call i32 (%struct.sm_file*, i32, i8*, ...) @sm_io_fprintf(%struct.sm_file* %296, i32 -2, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.34, i32 0, i32 0), i8* %arraydecay552)
  br label %do.cond

do.cond:                                          ; preds = %do.body
  %arraydecay554 = getelementptr inbounds [2048 x i8], [2048 x i8]* %lbuf, i32 0, i32 0
  %call555 = call i32 @sm_io_fgets(%struct.sm_file* getelementptr inbounds ([0 x %struct.sm_file], [0 x %struct.sm_file]* @SmIoF, i32 0, i64 0), i32 -2, i8* %arraydecay554, i32 2048)
  %cmp556 = icmp sge i32 %call555, 0
  br i1 %cmp556, label %do.body, label %do.end

do.end:                                           ; preds = %do.cond
  %297 = load i64, i64* getelementptr inbounds ([0 x %struct.sm_file], [0 x %struct.sm_file]* @SmIoF, i32 0, i64 0, i32 4), align 8, !tbaa !15
  %and558 = and i64 %297, 256
  %cmp559 = icmp ne i64 %and558, 0
  br i1 %cmp559, label %if.then.561, label %if.end.564

if.then.561:                                      ; preds = %do.end
  %call562 = call i32* @__errno_location() #8
  %298 = load i32, i32* %call562, align 4, !tbaa !1
  %call563 = call i8* @sm_errstring(i32 %298)
  call void (i32, i8*, ...) @err(i32 75, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.38, i32 0, i32 0), i8* %call563)
  br label %if.end.564

if.end.564:                                       ; preds = %if.then.561, %do.end
  %299 = load %struct.sm_file*, %struct.sm_file** %fp, align 8, !tbaa !5
  %call565 = call i32 @sm_io_close(%struct.sm_file* %299, i32 -2)
  %tobool566 = icmp ne i32 %call565, 0
  br i1 %tobool566, label %if.then.567, label %if.end.568

if.then.567:                                      ; preds = %if.end.564
  call void (i32, i8*, ...) @err(i32 71, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.39, i32 0, i32 0))
  br label %if.end.568

if.end.568:                                       ; preds = %if.then.567, %if.end.564
  %300 = load i32, i32* %pid, align 4, !tbaa !1
  %call569 = call i32 @waitpid(i32 %300, i32* %status, i32 0)
  %cmp570 = icmp eq i32 %call569, -1
  br i1 %cmp570, label %if.then.572, label %if.end.573

if.then.572:                                      ; preds = %if.end.568
  call void (i32, i8*, ...) @err(i32 71, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.34, i32 0, i32 0), i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.17, i32 0, i32 0))
  br label %if.end.573

if.end.573:                                       ; preds = %if.then.572, %if.end.568
  %__in = bitcast %union.anon* %.compoundliteral to i32*
  %301 = load i32, i32* %status, align 4, !tbaa !1
  store i32 %301, i32* %__in, align 4, !tbaa !1
  %__i = bitcast %union.anon* %.compoundliteral to i32*
  %302 = load i32, i32* %__i, align 4, !tbaa !1
  %and574 = and i32 %302, 127
  %cmp575 = icmp eq i32 %and574, 0
  br i1 %cmp575, label %if.end.578, label %if.then.577

if.then.577:                                      ; preds = %if.end.573
  call void (i32, i8*, ...) @err(i32 71, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.40, i32 0, i32 0), i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.17, i32 0, i32 0))
  br label %if.end.578

if.end.578:                                       ; preds = %if.then.577, %if.end.573
  %__in580 = bitcast %union.anon.0* %.compoundliteral579 to i32*
  %303 = load i32, i32* %status, align 4, !tbaa !1
  store i32 %303, i32* %__in580, align 4, !tbaa !1
  %__i581 = bitcast %union.anon.0* %.compoundliteral579 to i32*
  %304 = load i32, i32* %__i581, align 4, !tbaa !1
  %and582 = and i32 %304, 65280
  %shr = ashr i32 %and582, 8
  %tobool583 = icmp ne i32 %shr, 0
  br i1 %tobool583, label %if.then.584, label %if.end.590

if.then.584:                                      ; preds = %if.end.578
  %305 = load i32, i32* %status, align 4, !tbaa !1
  %__in586 = bitcast %union.anon.1* %.compoundliteral585 to i32*
  %306 = load i32, i32* %status, align 4, !tbaa !1
  store i32 %306, i32* %__in586, align 4, !tbaa !1
  %__i587 = bitcast %union.anon.1* %.compoundliteral585 to i32*
  %307 = load i32, i32* %__i587, align 4, !tbaa !1
  %and588 = and i32 %307, 65280
  %shr589 = ashr i32 %and588, 8
  call void (i32, i8*, ...) @err(i32 %305, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.41, i32 0, i32 0), i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.17, i32 0, i32 0), i32 %shr589)
  br label %if.end.590

if.end.590:                                       ; preds = %if.then.584, %if.end.578
  call void @exit(i32 0) #9
  unreachable

return:                                           ; No predecessors!
  %308 = load i32, i32* %retval
  ret i32 %308
}

; Function Attrs: nounwind
declare void @llvm.lifetime.start(i64, i8* nocapture) #1

; Function Attrs: nounwind
declare i32 @getopt(i32, i8**, i8*) #2

; Function Attrs: nounwind uwtable
define internal void @usage() #0 {
entry:
  %call = call i32 (%struct.sm_file*, i32, i8*, ...) @sm_io_fprintf(%struct.sm_file* getelementptr inbounds ([0 x %struct.sm_file], [0 x %struct.sm_file]* @SmIoF, i32 0, i64 2), i32 -2, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.42, i32 0, i32 0))
  call void @exit(i32 64) #9
  unreachable

return:                                           ; No predecessors!
  ret void
}

declare i32 @sm_io_fgets(%struct.sm_file*, i32, i8*, i32) #3

; Function Attrs: nounwind uwtable
define internal void @err(i32 %eval, i8* %fmt, ...) #0 {
entry:
  %eval.addr = alloca i32, align 4
  %fmt.addr = alloca i8*, align 8
  %ap = alloca [1 x %struct.__va_list_tag], align 16
  store i32 %eval, i32* %eval.addr, align 4, !tbaa !1
  store i8* %fmt, i8** %fmt.addr, align 8, !tbaa !5
  %0 = bitcast [1 x %struct.__va_list_tag]* %ap to i8*
  call void @llvm.lifetime.start(i64 24, i8* %0) #1
  %1 = load i8*, i8** %fmt.addr, align 8, !tbaa !5
  %cmp = icmp ne i8* %1, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %arraydecay = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %ap, i32 0, i32 0
  %arraydecay1 = bitcast %struct.__va_list_tag* %arraydecay to i8*
  call void @llvm.va_start(i8* %arraydecay1)
  %call = call i32 (%struct.sm_file*, i32, i8*, ...) @sm_io_fprintf(%struct.sm_file* getelementptr inbounds ([0 x %struct.sm_file], [0 x %struct.sm_file]* @SmIoF, i32 0, i64 2), i32 -2, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.43, i32 0, i32 0))
  %2 = load i8*, i8** %fmt.addr, align 8, !tbaa !5
  %arraydecay2 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %ap, i32 0, i32 0
  %call3 = call i32 @sm_io_vfprintf(%struct.sm_file* getelementptr inbounds ([0 x %struct.sm_file], [0 x %struct.sm_file]* @SmIoF, i32 0, i64 2), i32 -2, i8* %2, %struct.__va_list_tag* %arraydecay2)
  %arraydecay4 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %ap, i32 0, i32 0
  %arraydecay45 = bitcast %struct.__va_list_tag* %arraydecay4 to i8*
  call void @llvm.va_end(i8* %arraydecay45)
  %call6 = call i32 (%struct.sm_file*, i32, i8*, ...) @sm_io_fprintf(%struct.sm_file* getelementptr inbounds ([0 x %struct.sm_file], [0 x %struct.sm_file]* @SmIoF, i32 0, i64 2), i32 -2, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.44, i32 0, i32 0))
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %3 = load i32, i32* %eval.addr, align 4, !tbaa !1
  call void @exit(i32 %3) #9
  unreachable

return:                                           ; No predecessors!
  ret void
}

; Function Attrs: nounwind
declare i8* @strchr(i8*, i32) #2

; Function Attrs: nounwind
declare void @llvm.lifetime.end(i64, i8* nocapture) #1

; Function Attrs: nounwind
declare i32 @strcmp(i8*, i8*) #2

; Function Attrs: nounwind readonly
declare i32 @strncmp(i8*, i8*, i64) #4

; Function Attrs: nounwind readnone
declare i16** @__ctype_b_loc() #5

declare i32 @sm_io_fprintf(%struct.sm_file*, i32, i8*, ...) #3

; Function Attrs: nounwind readonly
declare i8* @strrchr(i8*, i32) #4

; Function Attrs: nounwind
declare i8* @strcpy(i8*, i8*) #2

; Function Attrs: nounwind uwtable
define internal i8* @xalloc(i32 %sz) #0 {
entry:
  %sz.addr = alloca i32, align 4
  %p = alloca i8*, align 8
  store i32 %sz, i32* %sz.addr, align 4, !tbaa !1
  %0 = bitcast i8** %p to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #1
  %1 = load i32, i32* %sz.addr, align 4, !tbaa !1
  %cmp = icmp sle i32 %1, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store i32 1, i32* %sz.addr, align 4, !tbaa !1
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %2 = load i32, i32* %sz.addr, align 4, !tbaa !1
  %conv = sext i32 %2 to i64
  %call = call noalias i8* @malloc(i64 %conv) #1
  store i8* %call, i8** %p, align 8, !tbaa !5
  %3 = load i8*, i8** %p, align 8, !tbaa !5
  %cmp1 = icmp eq i8* %3, null
  br i1 %cmp1, label %if.then.3, label %if.end.4

if.then.3:                                        ; preds = %if.end
  call void (i32, i8*, ...) @err(i32 75, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.13, i32 0, i32 0))
  br label %if.end.4

if.end.4:                                         ; preds = %if.then.3, %if.end
  %4 = load i8*, i8** %p, align 8, !tbaa !5
  %5 = bitcast i8** %p to i8*
  call void @llvm.lifetime.end(i64 8, i8* %5) #1
  ret i8* %4
}

; Function Attrs: nounwind readonly
declare i64 @strlen(i8*) #4

; Function Attrs: nounwind
declare noalias i8* @malloc(i64) #2

; Function Attrs: nounwind
declare i8* @realloc(i8*, i64) #2

; Function Attrs: nounwind
declare void @llvm.memmove.p0i8.p0i8.i64(i8* nocapture, i8* nocapture readonly, i64, i32, i1) #1

; Function Attrs: nounwind
declare void @free(i8*) #2

declare i64 @sm_io_tell(%struct.sm_file*, i32) #3

declare i32 @sm_snprintf(i8*, i64, i8*, ...) #3

; Function Attrs: nounwind
declare i32 @fstat(i32, %struct.stat*) #2

; Function Attrs: nounwind
declare i64 @lseek(i32, i64, i32) #2

; Function Attrs: nounwind
declare i32 @execv(i8*, i8**) #2

; Function Attrs: nounwind
declare i32 @pipe(i32*) #2

; Function Attrs: nounwind
declare i32 @fork() #2

; Function Attrs: nounwind
declare i32 @dup2(i32, i32) #2

declare i32 @close(i32) #3

declare %struct.sm_file* @sm_io_open(%struct.sm_file*, i32, i8*, i32, i8*) #3

declare i8* @sm_errstring(i32) #3

; Function Attrs: nounwind readnone
declare i32* @__errno_location() #5

declare i32 @sm_io_close(%struct.sm_file*, i32) #3

declare i32 @waitpid(i32, i32*, i32) #3

; Function Attrs: noreturn nounwind
declare void @exit(i32) #6

; Function Attrs: nounwind
declare void @llvm.va_start(i8*) #1

declare i32 @sm_io_vfprintf(%struct.sm_file*, i32, i8*, %struct.__va_list_tag*) #3

; Function Attrs: nounwind
declare void @llvm.va_end(i8*) #1

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { nounwind "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
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
!7 = !{!8, !8, i64 0}
!8 = !{!"long", !3, i64 0}
!9 = !{!3, !3, i64 0}
!10 = !{!11, !11, i64 0}
!11 = !{!"short", !3, i64 0}
!12 = !{!13, !2, i64 24}
!13 = !{!"stat", !8, i64 0, !8, i64 8, !8, i64 16, !2, i64 24, !2, i64 28, !2, i64 32, !2, i64 36, !8, i64 40, !8, i64 48, !8, i64 56, !8, i64 64, !14, i64 72, !14, i64 88, !14, i64 104, !3, i64 120}
!14 = !{!"timespec", !8, i64 0, !8, i64 8}
!15 = !{!16, !8, i64 24}
!16 = !{!"sm_file", !6, i64 0, !6, i64 8, !2, i64 16, !2, i64 20, !8, i64 24, !11, i64 32, !17, i64 40, !2, i64 56, !6, i64 64, !2, i64 72, !6, i64 80, !6, i64 88, !6, i64 96, !6, i64 104, !6, i64 112, !6, i64 120, !6, i64 128, !2, i64 136, !2, i64 140, !6, i64 144, !6, i64 152, !6, i64 160, !17, i64 168, !6, i64 184, !2, i64 192, !3, i64 196, !3, i64 199, !2, i64 200, !8, i64 208, !2, i64 216}
!17 = !{!"smbuf", !6, i64 0, !2, i64 8}
