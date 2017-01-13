; ModuleID = './MultiSource.Benchmarks.Prolangs-C/138.unix-smail.headers.bc'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct._IO_FILE = type { i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, %struct._IO_marker*, %struct._IO_FILE*, i32, i32, i64, i16, i8, [1 x i8], i8*, i64, i8*, i8*, i8*, i8*, i64, i32, [20 x i8] }
%struct._IO_marker = type { %struct._IO_marker*, %struct._IO_FILE*, i32 }
%struct.reqheaders = type { i8*, i8*, i8 }
%struct.tm = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i64, i8* }

@.str = private unnamed_addr constant [2 x i8] c"!\00", align 1
@.str.1 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.2 = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@.str.3 = private unnamed_addr constant [6 x i8] c"%s!%s\00", align 1
@.str.4 = private unnamed_addr constant [6 x i8] c"%s@%s\00", align 1
@hostdomain = external global [0 x i8], align 1
@hostname = external global [0 x i8], align 1
@hostuucp = external global [0 x i8], align 1
@spool.tmpf = internal global i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.5, i32 0, i32 0), align 8
@.str.5 = private unnamed_addr constant [14 x i8] c"/tmp/rmXXXXXX\00", align 1
@spool.splbuf = internal global [512 x i8] zeroinitializer, align 16
@spoolfile = external global i8*, align 8
@stderr = external global %struct._IO_FILE*, align 8
@.str.6 = private unnamed_addr constant [27 x i8] c"spool: bad file name '%s'\0A\00", align 1
@.str.7 = private unnamed_addr constant [2 x i8] c"w\00", align 1
@spoolfp = external global %struct._IO_FILE*, align 8
@.str.8 = private unnamed_addr constant [18 x i8] c"can't create %s.\0A\00", align 1
@spoolmaster = external global i32, align 4
@from_addr = external global i8*, align 8
@.str.9 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@ieof = internal global i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.29, i32 0, i32 0), align 8
@stdin = external global %struct._IO_FILE*, align 8
@.str.10 = private unnamed_addr constant [2 x i8] c"r\00", align 1
@.str.11 = private unnamed_addr constant [16 x i8] c"can't open %s.\0A\00", align 1
@.str.12 = private unnamed_addr constant [6 x i8] c"From \00", align 1
@.str.13 = private unnamed_addr constant [7 x i8] c">From \00", align 1
@.str.14 = private unnamed_addr constant [13 x i8] c"remote from \00", align 1
@.str.15 = private unnamed_addr constant [7 x i8] c"nobody\00", align 1
@.str.16 = private unnamed_addr constant [4 x i8] c"%s\0A\00", align 1
@reqtab = internal global [5 x %struct.reqheaders] [%struct.reqheaders { i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.30, i32 0, i32 0), i8* getelementptr inbounds ([512 x i8], [512 x i8]* @midline, i32 0, i32 0), i8 78 }, %struct.reqheaders { i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.31, i32 0, i32 0), i8* getelementptr inbounds ([512 x i8], [512 x i8]* @dateline, i32 0, i32 0), i8 78 }, %struct.reqheaders { i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.17, i32 0, i32 0), i8* getelementptr inbounds ([512 x i8], [512 x i8]* @fromline, i32 0, i32 0), i8 78 }, %struct.reqheaders { i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.32, i32 0, i32 0), i8* getelementptr inbounds ([512 x i8], [512 x i8]* @toline, i32 0, i32 0), i8 78 }, %struct.reqheaders { i8* null, i8* null, i8 78 }], align 16
@.str.17 = private unnamed_addr constant [6 x i8] c"From:\00", align 1
@.str.18 = private unnamed_addr constant [10 x i8] c"From: %s\0A\00", align 1
@dateline = internal global [512 x i8] zeroinitializer, align 16
@.str.19 = private unnamed_addr constant [7 x i8] c"Date: \00", align 1
@arpanows = external global [0 x i8], align 1
@midline = internal global [512 x i8] zeroinitializer, align 16
@.str.20 = private unnamed_addr constant [45 x i8] c"Message-Id: <%02d%02d%02d%02d%02d.AA%05d@%s>\00", align 1
@gmt = external global %struct.tm*, align 8
@fromline = internal global [512 x i8] zeroinitializer, align 16
@.str.21 = private unnamed_addr constant [9 x i8] c"From: %s\00", align 1
@.str.22 = private unnamed_addr constant [5 x i8] c"NAME\00", align 1
@.str.23 = private unnamed_addr constant [17 x i8] c"From: %s@%s (%s)\00", align 1
@.str.24 = private unnamed_addr constant [12 x i8] c"From: %s@%s\00", align 1
@toline = internal global [512 x i8] zeroinitializer, align 16
@.str.25 = private unnamed_addr constant [5 x i8] c"To: \00", align 1
@.str.26 = private unnamed_addr constant [2 x i8] c"@\00", align 1
@.str.27 = private unnamed_addr constant [4 x i8] c",\0A\09\00", align 1
@.str.28 = private unnamed_addr constant [3 x i8] c", \00", align 1
@.str.29 = private unnamed_addr constant [8 x i8] c"NOTNULL\00", align 1
@.str.30 = private unnamed_addr constant [12 x i8] c"Message-Id:\00", align 1
@.str.31 = private unnamed_addr constant [6 x i8] c"Date:\00", align 1
@.str.32 = private unnamed_addr constant [4 x i8] c"To:\00", align 1

; Function Attrs: nounwind uwtable
define i32 @parse(i8* %address, i8* %domain, i8* %user) #0 {
entry:
  %retval = alloca i32, align 4
  %address.addr = alloca i8*, align 8
  %domain.addr = alloca i8*, align 8
  %user.addr = alloca i8*, align 8
  %parts = alloca i32, align 4
  %partv = alloca [32 x i8*], align 16
  %buf = alloca [512 x i8], align 16
  %p = alloca i8*, align 8
  %t_dom = alloca [512 x i8], align 16
  %t_user = alloca [512 x i8], align 16
  %tmp = alloca i32, align 4
  %tmp74 = alloca i32, align 4
  store i8* %address, i8** %address.addr, align 8
  store i8* %domain, i8** %domain.addr, align 8
  store i8* %user, i8** %user.addr, align 8
  %0 = load i8*, i8** %address.addr, align 8
  %1 = load i8, i8* %0, align 1
  %conv = sext i8 %1 to i32
  %cmp = icmp eq i32 %conv, 64
  br i1 %cmp, label %if.then, label %if.end.48

if.then:                                          ; preds = %entry
  %arraydecay = getelementptr inbounds [512 x i8], [512 x i8]* %buf, i32 0, i32 0
  %2 = load i8*, i8** %address.addr, align 8
  %add.ptr = getelementptr inbounds i8, i8* %2, i64 1
  %call = call i8* @strcpy(i8* %arraydecay, i8* %add.ptr) #5
  %arraydecay2 = getelementptr inbounds [512 x i8], [512 x i8]* %buf, i32 0, i32 0
  store i8* %arraydecay2, i8** %p, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.then
  %3 = load i8*, i8** %p, align 8
  %4 = load i8, i8* %3, align 1
  %conv3 = sext i8 %4 to i32
  %cmp4 = icmp ne i32 %conv3, 0
  br i1 %cmp4, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %5 = load i8*, i8** %p, align 8
  %6 = load i8, i8* %5, align 1
  %conv6 = sext i8 %6 to i32
  %cmp7 = icmp eq i32 %conv6, 58
  br i1 %cmp7, label %if.then.9, label %if.end

if.then.9:                                        ; preds = %for.body
  br label %for.end

if.end:                                           ; preds = %for.body
  %7 = load i8*, i8** %p, align 8
  %8 = load i8, i8* %7, align 1
  %conv10 = sext i8 %8 to i32
  %cmp11 = icmp eq i32 %conv10, 44
  br i1 %cmp11, label %if.then.13, label %if.end.16

if.then.13:                                       ; preds = %if.end
  %9 = load i8*, i8** %p, align 8
  %10 = load i8*, i8** %p, align 8
  %add.ptr14 = getelementptr inbounds i8, i8* %10, i64 1
  %call15 = call i8* @strcpy(i8* %9, i8* %add.ptr14) #5
  br label %if.end.16

if.end.16:                                        ; preds = %if.then.13, %if.end
  %11 = load i8*, i8** %p, align 8
  %12 = load i8, i8* %11, align 1
  %conv17 = sext i8 %12 to i32
  %cmp18 = icmp eq i32 %conv17, 64
  br i1 %cmp18, label %if.then.20, label %if.end.21

if.then.20:                                       ; preds = %if.end.16
  %13 = load i8*, i8** %p, align 8
  store i8 33, i8* %13, align 1
  br label %if.end.21

if.end.21:                                        ; preds = %if.then.20, %if.end.16
  br label %for.inc

for.inc:                                          ; preds = %if.end.21
  %14 = load i8*, i8** %p, align 8
  %incdec.ptr = getelementptr inbounds i8, i8* %14, i32 1
  store i8* %incdec.ptr, i8** %p, align 8
  br label %for.cond

for.end:                                          ; preds = %if.then.9, %for.cond
  %15 = load i8*, i8** %p, align 8
  %16 = load i8, i8* %15, align 1
  %conv22 = sext i8 %16 to i32
  %cmp23 = icmp ne i32 %conv22, 58
  br i1 %cmp23, label %if.then.25, label %if.end.26

if.then.25:                                       ; preds = %for.end
  br label %local

if.end.26:                                        ; preds = %for.end
  %17 = load i8*, i8** %p, align 8
  store i8 0, i8* %17, align 1
  %18 = load i8*, i8** %p, align 8
  %add.ptr27 = getelementptr inbounds i8, i8* %18, i64 1
  %arraydecay28 = getelementptr inbounds [512 x i8], [512 x i8]* %t_dom, i32 0, i32 0
  %arraydecay29 = getelementptr inbounds [512 x i8], [512 x i8]* %t_user, i32 0, i32 0
  %call30 = call i32 @parse(i8* %add.ptr27, i8* %arraydecay28, i8* %arraydecay29)
  %cmp31 = icmp ne i32 %call30, 1
  br i1 %cmp31, label %if.then.33, label %if.end.39

if.then.33:                                       ; preds = %if.end.26
  %arraydecay34 = getelementptr inbounds [512 x i8], [512 x i8]* %buf, i32 0, i32 0
  %call35 = call i8* @strcat(i8* %arraydecay34, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i32 0, i32 0)) #5
  %arraydecay36 = getelementptr inbounds [512 x i8], [512 x i8]* %buf, i32 0, i32 0
  %arraydecay37 = getelementptr inbounds [512 x i8], [512 x i8]* %t_dom, i32 0, i32 0
  %call38 = call i8* @strcat(i8* %arraydecay36, i8* %arraydecay37) #5
  br label %if.end.39

if.end.39:                                        ; preds = %if.then.33, %if.end.26
  %arraydecay40 = getelementptr inbounds [512 x i8], [512 x i8]* %buf, i32 0, i32 0
  %call41 = call i8* @strcat(i8* %arraydecay40, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i32 0, i32 0)) #5
  %arraydecay42 = getelementptr inbounds [512 x i8], [512 x i8]* %buf, i32 0, i32 0
  %arraydecay43 = getelementptr inbounds [512 x i8], [512 x i8]* %t_user, i32 0, i32 0
  %call44 = call i8* @strcat(i8* %arraydecay42, i8* %arraydecay43) #5
  %19 = load i8*, i8** %address.addr, align 8
  %arraydecay45 = getelementptr inbounds [512 x i8], [512 x i8]* %buf, i32 0, i32 0
  %call46 = call i8* @strcpy(i8* %19, i8* %arraydecay45) #5
  %20 = load i8*, i8** %address.addr, align 8
  %21 = load i8*, i8** %domain.addr, align 8
  %22 = load i8*, i8** %user.addr, align 8
  %call47 = call i32 @parse(i8* %20, i8* %21, i8* %22)
  store i32 %call47, i32* %retval
  br label %return

if.end.48:                                        ; preds = %entry
  %23 = load i8*, i8** %address.addr, align 8
  %arraydecay49 = getelementptr inbounds [32 x i8*], [32 x i8*]* %partv, i32 0, i32 0
  %call50 = call i32 @ssplit(i8* %23, i8 signext 64, i8** %arraydecay49)
  store i32 %call50, i32* %parts, align 4
  %cmp51 = icmp sge i32 %call50, 2
  br i1 %cmp51, label %if.then.53, label %if.end.67

if.then.53:                                       ; preds = %if.end.48
  %24 = load i8*, i8** %domain.addr, align 8
  %25 = load i32, i32* %parts, align 4
  %sub = sub nsw i32 %25, 1
  %idxprom = sext i32 %sub to i64
  %arrayidx = getelementptr inbounds [32 x i8*], [32 x i8*]* %partv, i32 0, i64 %idxprom
  %26 = load i8*, i8** %arrayidx, align 8
  %call54 = call i8* @strcpy(i8* %24, i8* %26) #5
  %27 = load i8*, i8** %user.addr, align 8
  %arrayidx55 = getelementptr inbounds [32 x i8*], [32 x i8*]* %partv, i32 0, i64 0
  %28 = load i8*, i8** %arrayidx55, align 8
  %29 = load i32, i32* %parts, align 4
  %sub56 = sub nsw i32 %29, 1
  %idxprom57 = sext i32 %sub56 to i64
  %arrayidx58 = getelementptr inbounds [32 x i8*], [32 x i8*]* %partv, i32 0, i64 %idxprom57
  %30 = load i8*, i8** %arrayidx58, align 8
  %arrayidx59 = getelementptr inbounds [32 x i8*], [32 x i8*]* %partv, i32 0, i64 0
  %31 = load i8*, i8** %arrayidx59, align 8
  %sub.ptr.lhs.cast = ptrtoint i8* %30 to i64
  %sub.ptr.rhs.cast = ptrtoint i8* %31 to i64
  %sub.ptr.sub = sub i64 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast
  %conv60 = trunc i64 %sub.ptr.sub to i32
  store i32 %conv60, i32* %tmp, align 4
  %sub61 = sub nsw i32 %conv60, 1
  %conv62 = sext i32 %sub61 to i64
  %call63 = call i8* @strncpy(i8* %27, i8* %28, i64 %conv62) #5
  %32 = load i32, i32* %tmp, align 4
  %sub64 = sub nsw i32 %32, 1
  %idxprom65 = sext i32 %sub64 to i64
  %33 = load i8*, i8** %user.addr, align 8
  %arrayidx66 = getelementptr inbounds i8, i8* %33, i64 %idxprom65
  store i8 0, i8* %arrayidx66, align 1
  store i32 2, i32* %retval
  br label %return

if.end.67:                                        ; preds = %if.end.48
  %34 = load i8*, i8** %address.addr, align 8
  %arraydecay68 = getelementptr inbounds [32 x i8*], [32 x i8*]* %partv, i32 0, i32 0
  %call69 = call i32 @ssplit(i8* %34, i8 signext 33, i8** %arraydecay68)
  %cmp70 = icmp sgt i32 %call69, 1
  br i1 %cmp70, label %if.then.72, label %if.end.109

if.then.72:                                       ; preds = %if.end.67
  %35 = load i8*, i8** %user.addr, align 8
  %arrayidx75 = getelementptr inbounds [32 x i8*], [32 x i8*]* %partv, i32 0, i64 1
  %36 = load i8*, i8** %arrayidx75, align 8
  %call76 = call i8* @strcpy(i8* %35, i8* %36) #5
  %37 = load i8*, i8** %domain.addr, align 8
  %arrayidx77 = getelementptr inbounds [32 x i8*], [32 x i8*]* %partv, i32 0, i64 0
  %38 = load i8*, i8** %arrayidx77, align 8
  %arrayidx78 = getelementptr inbounds [32 x i8*], [32 x i8*]* %partv, i32 0, i64 1
  %39 = load i8*, i8** %arrayidx78, align 8
  %arrayidx79 = getelementptr inbounds [32 x i8*], [32 x i8*]* %partv, i32 0, i64 0
  %40 = load i8*, i8** %arrayidx79, align 8
  %sub.ptr.lhs.cast80 = ptrtoint i8* %39 to i64
  %sub.ptr.rhs.cast81 = ptrtoint i8* %40 to i64
  %sub.ptr.sub82 = sub i64 %sub.ptr.lhs.cast80, %sub.ptr.rhs.cast81
  %conv83 = trunc i64 %sub.ptr.sub82 to i32
  store i32 %conv83, i32* %tmp74, align 4
  %sub84 = sub nsw i32 %conv83, 1
  %conv85 = sext i32 %sub84 to i64
  %call86 = call i8* @strncpy(i8* %37, i8* %38, i64 %conv85) #5
  %41 = load i32, i32* %tmp74, align 4
  %sub87 = sub nsw i32 %41, 1
  %idxprom88 = sext i32 %sub87 to i64
  %42 = load i8*, i8** %domain.addr, align 8
  %arrayidx89 = getelementptr inbounds i8, i8* %42, i64 %idxprom88
  store i8 0, i8* %arrayidx89, align 1
  %43 = load i8*, i8** %domain.addr, align 8
  %arraydecay90 = getelementptr inbounds [32 x i8*], [32 x i8*]* %partv, i32 0, i32 0
  %call91 = call i32 @ssplit(i8* %43, i8 signext 46, i8** %arraydecay90)
  store i32 %call91, i32* %parts, align 4
  %cmp92 = icmp slt i32 %call91, 2
  br i1 %cmp92, label %if.then.94, label %if.end.95

if.then.94:                                       ; preds = %if.then.72
  store i32 3, i32* %retval
  br label %return

if.end.95:                                        ; preds = %if.then.72
  %44 = load i32, i32* %parts, align 4
  %sub96 = sub nsw i32 %44, 1
  %idxprom97 = sext i32 %sub96 to i64
  %arrayidx98 = getelementptr inbounds [32 x i8*], [32 x i8*]* %partv, i32 0, i64 %idxprom97
  %45 = load i8*, i8** %arrayidx98, align 8
  %arrayidx99 = getelementptr inbounds i8, i8* %45, i64 0
  %46 = load i8, i8* %arrayidx99, align 1
  %conv100 = sext i8 %46 to i32
  %cmp101 = icmp eq i32 %conv100, 0
  br i1 %cmp101, label %if.then.103, label %if.end.108

if.then.103:                                      ; preds = %if.end.95
  %47 = load i32, i32* %parts, align 4
  %sub104 = sub nsw i32 %47, 1
  %idxprom105 = sext i32 %sub104 to i64
  %arrayidx106 = getelementptr inbounds [32 x i8*], [32 x i8*]* %partv, i32 0, i64 %idxprom105
  %48 = load i8*, i8** %arrayidx106, align 8
  %arrayidx107 = getelementptr inbounds i8, i8* %48, i64 -1
  store i8 0, i8* %arrayidx107, align 1
  br label %if.end.108

if.end.108:                                       ; preds = %if.then.103, %if.end.95
  store i32 2, i32* %retval
  br label %return

if.end.109:                                       ; preds = %if.end.67
  br label %local

local:                                            ; preds = %if.end.109, %if.then.25
  %49 = load i8*, i8** %user.addr, align 8
  %50 = load i8*, i8** %address.addr, align 8
  %call110 = call i8* @strcpy(i8* %49, i8* %50) #5
  %51 = load i8*, i8** %domain.addr, align 8
  %call111 = call i8* @strcpy(i8* %51, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.1, i32 0, i32 0)) #5
  store i32 1, i32* %retval
  br label %return

return:                                           ; preds = %local, %if.end.108, %if.then.94, %if.then.53, %if.end.39
  %52 = load i32, i32* %retval
  ret i32 %52
}

; Function Attrs: nounwind
declare i8* @strcpy(i8*, i8*) #1

; Function Attrs: nounwind
declare i8* @strcat(i8*, i8*) #1

; Function Attrs: nounwind uwtable
define i32 @ssplit(i8* %buf, i8 signext %c, i8** %ptr) #0 {
entry:
  %buf.addr = alloca i8*, align 8
  %c.addr = alloca i8, align 1
  %ptr.addr = alloca i8**, align 8
  %count = alloca i32, align 4
  %wasword = alloca i32, align 4
  store i8* %buf, i8** %buf.addr, align 8
  store i8 %c, i8* %c.addr, align 1
  store i8** %ptr, i8*** %ptr.addr, align 8
  store i32 0, i32* %count, align 4
  store i32 0, i32* %wasword, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %0 = load i8*, i8** %buf.addr, align 8
  %1 = load i8, i8* %0, align 1
  %tobool = icmp ne i8 %1, 0
  br i1 %tobool, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %2 = load i32, i32* %wasword, align 4
  %tobool1 = icmp ne i32 %2, 0
  br i1 %tobool1, label %if.end, label %if.then

if.then:                                          ; preds = %for.body
  %3 = load i32, i32* %count, align 4
  %inc = add nsw i32 %3, 1
  store i32 %inc, i32* %count, align 4
  %4 = load i8*, i8** %buf.addr, align 8
  %5 = load i8**, i8*** %ptr.addr, align 8
  %incdec.ptr = getelementptr inbounds i8*, i8** %5, i32 1
  store i8** %incdec.ptr, i8*** %ptr.addr, align 8
  store i8* %4, i8** %5, align 8
  br label %if.end

if.end:                                           ; preds = %if.then, %for.body
  %6 = load i8, i8* %c.addr, align 1
  %conv = sext i8 %6 to i32
  %7 = load i8*, i8** %buf.addr, align 8
  %8 = load i8, i8* %7, align 1
  %conv2 = sext i8 %8 to i32
  %cmp = icmp ne i32 %conv, %conv2
  %conv3 = zext i1 %cmp to i32
  store i32 %conv3, i32* %wasword, align 4
  br label %for.inc

for.inc:                                          ; preds = %if.end
  %9 = load i8*, i8** %buf.addr, align 8
  %incdec.ptr4 = getelementptr inbounds i8, i8* %9, i32 1
  store i8* %incdec.ptr4, i8** %buf.addr, align 8
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %10 = load i32, i32* %wasword, align 4
  %tobool5 = icmp ne i32 %10, 0
  br i1 %tobool5, label %if.end.9, label %if.then.6

if.then.6:                                        ; preds = %for.end
  %11 = load i32, i32* %count, align 4
  %inc7 = add nsw i32 %11, 1
  store i32 %inc7, i32* %count, align 4
  %12 = load i8*, i8** %buf.addr, align 8
  %13 = load i8**, i8*** %ptr.addr, align 8
  %incdec.ptr8 = getelementptr inbounds i8*, i8** %13, i32 1
  store i8** %incdec.ptr8, i8*** %ptr.addr, align 8
  store i8* %12, i8** %13, align 8
  br label %if.end.9

if.end.9:                                         ; preds = %if.then.6, %for.end
  %14 = load i8**, i8*** %ptr.addr, align 8
  store i8* null, i8** %14, align 8
  %15 = load i32, i32* %count, align 4
  ret i32 %15
}

; Function Attrs: nounwind
declare i8* @strncpy(i8*, i8*, i64) #1

; Function Attrs: nounwind uwtable
define void @build(i8* %domain, i8* %user, i32 %form, i8* %result) #0 {
entry:
  %domain.addr = alloca i8*, align 8
  %user.addr = alloca i8*, align 8
  %form.addr = alloca i32, align 4
  %result.addr = alloca i8*, align 8
  store i8* %domain, i8** %domain.addr, align 8
  store i8* %user, i8** %user.addr, align 8
  store i32 %form, i32* %form.addr, align 4
  store i8* %result, i8** %result.addr, align 8
  %0 = load i32, i32* %form.addr, align 4
  switch i32 %0, label %sw.epilog [
    i32 1, label %sw.bb
    i32 3, label %sw.bb.1
    i32 2, label %sw.bb.3
  ]

sw.bb:                                            ; preds = %entry
  %1 = load i8*, i8** %result.addr, align 8
  %2 = load i8*, i8** %user.addr, align 8
  %call = call i32 (i8*, i8*, ...) @sprintf(i8* %1, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.2, i32 0, i32 0), i8* %2) #5
  br label %sw.epilog

sw.bb.1:                                          ; preds = %entry
  %3 = load i8*, i8** %result.addr, align 8
  %4 = load i8*, i8** %domain.addr, align 8
  %5 = load i8*, i8** %user.addr, align 8
  %call2 = call i32 (i8*, i8*, ...) @sprintf(i8* %3, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.3, i32 0, i32 0), i8* %4, i8* %5) #5
  br label %sw.epilog

sw.bb.3:                                          ; preds = %entry
  %6 = load i8*, i8** %result.addr, align 8
  %7 = load i8*, i8** %user.addr, align 8
  %8 = load i8*, i8** %domain.addr, align 8
  %call4 = call i32 (i8*, i8*, ...) @sprintf(i8* %6, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.4, i32 0, i32 0), i8* %7, i8* %8) #5
  br label %sw.epilog

sw.epilog:                                        ; preds = %entry, %sw.bb.3, %sw.bb.1, %sw.bb
  ret void
}

; Function Attrs: nounwind
declare i32 @sprintf(i8*, i8*, ...) #1

; Function Attrs: nounwind uwtable
define i32 @islocal(i8* %addr, i8* %domain, i8* %user) #0 {
entry:
  %retval = alloca i32, align 4
  %addr.addr = alloca i8*, align 8
  %domain.addr = alloca i8*, align 8
  %user.addr = alloca i8*, align 8
  %form = alloca i32, align 4
  store i8* %addr, i8** %addr.addr, align 8
  store i8* %domain, i8** %domain.addr, align 8
  store i8* %user, i8** %user.addr, align 8
  %0 = load i8*, i8** %addr.addr, align 8
  %1 = load i8*, i8** %domain.addr, align 8
  %2 = load i8*, i8** %user.addr, align 8
  %call = call i32 @parse(i8* %0, i8* %1, i8* %2)
  store i32 %call, i32* %form, align 4
  %3 = load i32, i32* %form, align 4
  %cmp = icmp eq i32 %3, 1
  br i1 %cmp, label %if.then, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %entry
  %4 = load i8*, i8** %domain.addr, align 8
  %call1 = call i32 (i8*, i8*, ...) bitcast (i32 (...)* @strcmpic to i32 (i8*, i8*, ...)*)(i8* %4, i8* getelementptr inbounds ([0 x i8], [0 x i8]* @hostdomain, i32 0, i32 0))
  %cmp2 = icmp eq i32 %call1, 0
  br i1 %cmp2, label %if.then, label %lor.lhs.false.3

lor.lhs.false.3:                                  ; preds = %lor.lhs.false
  %5 = load i8*, i8** %domain.addr, align 8
  %call4 = call i32 (i8*, i8*, ...) bitcast (i32 (...)* @strcmpic to i32 (i8*, i8*, ...)*)(i8* %5, i8* getelementptr inbounds ([0 x i8], [0 x i8]* @hostname, i32 0, i32 0))
  %cmp5 = icmp eq i32 %call4, 0
  br i1 %cmp5, label %if.then, label %lor.lhs.false.6

lor.lhs.false.6:                                  ; preds = %lor.lhs.false.3
  %6 = load i8*, i8** %domain.addr, align 8
  %call7 = call i32 (i8*, i8*, ...) bitcast (i32 (...)* @strcmpic to i32 (i8*, i8*, ...)*)(i8* %6, i8* getelementptr inbounds ([0 x i8], [0 x i8]* @hostuucp, i32 0, i32 0))
  %cmp8 = icmp eq i32 %call7, 0
  br i1 %cmp8, label %if.then, label %if.end

if.then:                                          ; preds = %lor.lhs.false.6, %lor.lhs.false.3, %lor.lhs.false, %entry
  store i32 1, i32* %retval
  br label %return

if.end:                                           ; preds = %lor.lhs.false.6
  store i32 0, i32* %retval
  br label %return

return:                                           ; preds = %if.end, %if.then
  %7 = load i32, i32* %retval
  ret i32 %7
}

declare i32 @strcmpic(...) #2

; Function Attrs: nounwind uwtable
define void @spool(i32 %argc, i8** %argv) #0 {
entry:
  %argc.addr = alloca i32, align 4
  %argv.addr = alloca i8**, align 8
  %buf = alloca [512 x i8], align 16
  %from = alloca [512 x i8], align 16
  %domain = alloca [512 x i8], align 16
  %user = alloca [512 x i8], align 16
  store i32 %argc, i32* %argc.addr, align 4
  store i8** %argv, i8*** %argv.addr, align 8
  %0 = load i8*, i8** @spoolfile, align 8
  %cmp = icmp ne i8* %0, null
  br i1 %cmp, label %land.lhs.true, label %if.end

land.lhs.true:                                    ; preds = %entry
  %1 = load i8*, i8** @spoolfile, align 8
  %2 = load i8*, i8** @spool.tmpf, align 8
  %3 = load i8*, i8** @spool.tmpf, align 8
  %call = call i64 @strlen(i8* %3) #6
  %sub = sub i64 %call, 6
  %call1 = call i32 @strncmp(i8* %1, i8* %2, i64 %sub) #6
  %cmp2 = icmp ne i32 %call1, 0
  br i1 %cmp2, label %if.then, label %if.end

if.then:                                          ; preds = %land.lhs.true
  %4 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %5 = load i8*, i8** @spoolfile, align 8
  %call3 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %4, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.6, i32 0, i32 0), i8* %5)
  call void @exit(i32 75) #7
  unreachable

if.end:                                           ; preds = %land.lhs.true, %entry
  %call4 = call i32 (...) @setdates()
  %6 = load i8*, i8** @spoolfile, align 8
  %cmp5 = icmp eq i8* %6, null
  br i1 %cmp5, label %if.then.6, label %if.end.51

if.then.6:                                        ; preds = %if.end
  %7 = load i8*, i8** @spool.tmpf, align 8
  %call7 = call i8* @strcpy(i8* getelementptr inbounds ([512 x i8], [512 x i8]* @spool.splbuf, i32 0, i32 0), i8* %7) #5
  store i8* %call7, i8** @spoolfile, align 8
  %8 = load i8*, i8** @spoolfile, align 8
  %call8 = call i8* (i8*, ...) bitcast (i8* (...)* @mktemp to i8* (i8*, ...)*)(i8* %8)
  %9 = load i8*, i8** @spoolfile, align 8
  %call9 = call %struct._IO_FILE* @fopen(i8* %9, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.7, i32 0, i32 0))
  store %struct._IO_FILE* %call9, %struct._IO_FILE** @spoolfp, align 8
  %cmp10 = icmp eq %struct._IO_FILE* %call9, null
  br i1 %cmp10, label %if.then.11, label %if.end.13

if.then.11:                                       ; preds = %if.then.6
  %10 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %11 = load i8*, i8** @spoolfile, align 8
  %call12 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %10, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.8, i32 0, i32 0), i8* %11)
  call void @exit(i32 73) #7
  unreachable

if.end.13:                                        ; preds = %if.then.6
  store i32 1, i32* @spoolmaster, align 4
  %arraydecay = getelementptr inbounds [512 x i8], [512 x i8]* %from, i32 0, i32 0
  %arraydecay14 = getelementptr inbounds [512 x i8], [512 x i8]* %buf, i32 0, i32 0
  call void @rline(i8* %arraydecay, i8* %arraydecay14)
  %arraydecay15 = getelementptr inbounds [512 x i8], [512 x i8]* %from, i32 0, i32 0
  %arraydecay16 = getelementptr inbounds [512 x i8], [512 x i8]* %domain, i32 0, i32 0
  %arraydecay17 = getelementptr inbounds [512 x i8], [512 x i8]* %user, i32 0, i32 0
  %call18 = call i32 @islocal(i8* %arraydecay15, i8* %arraydecay16, i8* %arraydecay17)
  %tobool = icmp ne i32 %call18, 0
  br i1 %tobool, label %if.then.20, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.end.13
  %12 = load i8*, i8** @from_addr, align 8
  %cmp19 = icmp ne i8* %12, null
  br i1 %cmp19, label %if.then.20, label %if.end.28

if.then.20:                                       ; preds = %lor.lhs.false, %if.end.13
  %13 = load i32, i32* %argc.addr, align 4
  %14 = load i8**, i8*** %argv.addr, align 8
  %arraydecay21 = getelementptr inbounds [512 x i8], [512 x i8]* %from, i32 0, i32 0
  call void @def_headers(i32 %13, i8** %14, i8* %arraydecay21)
  %arraydecay22 = getelementptr inbounds [512 x i8], [512 x i8]* %buf, i32 0, i32 0
  call void @scanheaders(i8* %arraydecay22)
  call void @compheaders()
  %arrayidx = getelementptr inbounds [512 x i8], [512 x i8]* %buf, i32 0, i64 0
  %15 = load i8, i8* %arrayidx, align 1
  %conv = sext i8 %15 to i32
  %cmp23 = icmp ne i32 %conv, 10
  br i1 %cmp23, label %if.then.25, label %if.end.27

if.then.25:                                       ; preds = %if.then.20
  %16 = load %struct._IO_FILE*, %struct._IO_FILE** @spoolfp, align 8
  %call26 = call i32 @fputs(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.9, i32 0, i32 0), %struct._IO_FILE* %16)
  br label %if.end.27

if.end.27:                                        ; preds = %if.then.25, %if.then.20
  br label %if.end.28

if.end.28:                                        ; preds = %if.end.27, %lor.lhs.false
  br label %while.cond

while.cond:                                       ; preds = %if.end.48, %if.end.28
  %17 = load i8*, i8** @ieof, align 8
  %cmp29 = icmp ne i8* %17, null
  br i1 %cmp29, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %arraydecay31 = getelementptr inbounds [512 x i8], [512 x i8]* %buf, i32 0, i32 0
  %18 = load %struct._IO_FILE*, %struct._IO_FILE** @spoolfp, align 8
  %call32 = call i32 @fputs(i8* %arraydecay31, %struct._IO_FILE* %18)
  %arraydecay33 = getelementptr inbounds [512 x i8], [512 x i8]* %buf, i32 0, i32 0
  %19 = load %struct._IO_FILE*, %struct._IO_FILE** @stdin, align 8
  %call34 = call i8* @fgets(i8* %arraydecay33, i32 512, %struct._IO_FILE* %19)
  %cmp35 = icmp eq i8* %call34, null
  br i1 %cmp35, label %if.then.47, label %lor.lhs.false.37

lor.lhs.false.37:                                 ; preds = %while.body
  %arrayidx38 = getelementptr inbounds [512 x i8], [512 x i8]* %buf, i32 0, i64 0
  %20 = load i8, i8* %arrayidx38, align 1
  %conv39 = sext i8 %20 to i32
  %cmp40 = icmp eq i32 %conv39, 46
  br i1 %cmp40, label %land.lhs.true.42, label %if.end.48

land.lhs.true.42:                                 ; preds = %lor.lhs.false.37
  %arrayidx43 = getelementptr inbounds [512 x i8], [512 x i8]* %buf, i32 0, i64 1
  %21 = load i8, i8* %arrayidx43, align 1
  %conv44 = sext i8 %21 to i32
  %cmp45 = icmp eq i32 %conv44, 10
  br i1 %cmp45, label %if.then.47, label %if.end.48

if.then.47:                                       ; preds = %land.lhs.true.42, %while.body
  store i8* null, i8** @ieof, align 8
  br label %if.end.48

if.end.48:                                        ; preds = %if.then.47, %land.lhs.true.42, %lor.lhs.false.37
  br label %while.cond

while.end:                                        ; preds = %while.cond
  %22 = load %struct._IO_FILE*, %struct._IO_FILE** @spoolfp, align 8
  %call49 = call i32 @fclose(%struct._IO_FILE* %22)
  %23 = load %struct._IO_FILE*, %struct._IO_FILE** @stdin, align 8
  %call50 = call i32 @fclose(%struct._IO_FILE* %23)
  br label %if.end.51

if.end.51:                                        ; preds = %while.end, %if.end
  %24 = load i8*, i8** @spoolfile, align 8
  %call52 = call %struct._IO_FILE* @fopen(i8* %24, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.10, i32 0, i32 0))
  store %struct._IO_FILE* %call52, %struct._IO_FILE** @spoolfp, align 8
  %cmp53 = icmp eq %struct._IO_FILE* %call52, null
  br i1 %cmp53, label %if.then.55, label %if.end.57

if.then.55:                                       ; preds = %if.end.51
  %25 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %26 = load i8*, i8** @spoolfile, align 8
  %call56 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %25, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.11, i32 0, i32 0), i8* %26)
  call void @exit(i32 75) #7
  unreachable

if.end.57:                                        ; preds = %if.end.51
  ret void
}

; Function Attrs: nounwind readonly
declare i32 @strncmp(i8*, i8*, i64) #3

; Function Attrs: nounwind readonly
declare i64 @strlen(i8*) #3

declare i32 @fprintf(%struct._IO_FILE*, i8*, ...) #2

; Function Attrs: noreturn
declare void @exit(i32) #4

declare i32 @setdates(...) #2

declare i8* @mktemp(...) #2

declare %struct._IO_FILE* @fopen(i8*, i8*) #2

; Function Attrs: nounwind uwtable
define void @def_headers(i32 %argc, i8** %argv, i8* %from) #0 {
entry:
  %argc.addr = alloca i32, align 4
  %argv.addr = alloca i8**, align 8
  %from.addr = alloca i8*, align 8
  store i32 %argc, i32* %argc.addr, align 4
  store i8** %argv, i8*** %argv.addr, align 8
  store i8* %from, i8** %from.addr, align 8
  %0 = load i32, i32* %argc.addr, align 4
  %1 = load i8**, i8*** %argv.addr, align 8
  call void @def_to(i32 %0, i8** %1)
  call void @def_date()
  %2 = load i8*, i8** %from.addr, align 8
  call void @def_from(i8* %2)
  call void @def_mid()
  ret void
}

declare i32 @fputs(i8*, %struct._IO_FILE*) #2

declare i8* @fgets(i8*, i32, %struct._IO_FILE*) #2

declare i32 @fclose(%struct._IO_FILE*) #2

; Function Attrs: nounwind uwtable
define void @rline(i8* %from, i8* %retbuf) #0 {
entry:
  %from.addr = alloca i8*, align 8
  %retbuf.addr = alloca i8*, align 8
  %parts = alloca i32, align 4
  %partv = alloca [16 x i8*], align 16
  %user = alloca [512 x i8], align 16
  %domain = alloca [512 x i8], align 16
  %addr = alloca [512 x i8], align 16
  %form = alloca i32, align 4
  %c = alloca i8*, align 8
  %nhops = alloca i32, align 4
  %i = alloca i32, align 4
  %buf = alloca [512 x i8], align 16
  %tmp = alloca [512 x i8], align 16
  %hop = alloca [128 x i8*], align 16
  %e = alloca i8*, align 8
  %b = alloca i8*, align 8
  %x = alloca i8*, align 8
  %q = alloca i8*, align 8
  %login = alloca i8*, align 8
  store i8* %from, i8** %from.addr, align 8
  store i8* %retbuf, i8** %retbuf.addr, align 8
  %0 = load i32, i32* @spoolmaster, align 4
  %cmp = icmp eq i32 %0, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  br label %return

if.end:                                           ; preds = %entry
  %arrayidx = getelementptr inbounds [512 x i8], [512 x i8]* %addr, i32 0, i64 0
  store i8 0, i8* %arrayidx, align 1
  %1 = load i8*, i8** %from.addr, align 8
  %arrayidx4 = getelementptr inbounds i8, i8* %1, i64 0
  store i8 0, i8* %arrayidx4, align 1
  %arrayidx5 = getelementptr inbounds [512 x i8], [512 x i8]* %buf, i32 0, i64 0
  store i8 0, i8* %arrayidx5, align 1
  br label %for.cond

for.cond:                                         ; preds = %if.end.75, %if.end
  %2 = load i8*, i8** %retbuf.addr, align 8
  %arraydecay = getelementptr inbounds [512 x i8], [512 x i8]* %buf, i32 0, i32 0
  %call = call i8* @strcpy(i8* %2, i8* %arraydecay) #5
  %3 = load i8*, i8** @ieof, align 8
  %cmp6 = icmp eq i8* %3, null
  br i1 %cmp6, label %if.then.7, label %if.end.8

if.then.7:                                        ; preds = %for.cond
  br label %for.end

if.end.8:                                         ; preds = %for.cond
  %arraydecay9 = getelementptr inbounds [512 x i8], [512 x i8]* %buf, i32 0, i32 0
  %4 = load %struct._IO_FILE*, %struct._IO_FILE** @stdin, align 8
  %call10 = call i8* @fgets(i8* %arraydecay9, i32 512, %struct._IO_FILE* %4)
  %cmp11 = icmp eq i8* %call10, null
  br i1 %cmp11, label %if.then.19, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.end.8
  %arrayidx12 = getelementptr inbounds [512 x i8], [512 x i8]* %buf, i32 0, i64 0
  %5 = load i8, i8* %arrayidx12, align 1
  %conv = sext i8 %5 to i32
  %cmp13 = icmp eq i32 %conv, 46
  br i1 %cmp13, label %land.lhs.true, label %if.end.20

land.lhs.true:                                    ; preds = %lor.lhs.false
  %arrayidx15 = getelementptr inbounds [512 x i8], [512 x i8]* %buf, i32 0, i64 1
  %6 = load i8, i8* %arrayidx15, align 1
  %conv16 = sext i8 %6 to i32
  %cmp17 = icmp eq i32 %conv16, 10
  br i1 %cmp17, label %if.then.19, label %if.end.20

if.then.19:                                       ; preds = %land.lhs.true, %if.end.8
  store i8* null, i8** @ieof, align 8
  br label %for.end

if.end.20:                                        ; preds = %land.lhs.true, %lor.lhs.false
  %arraydecay21 = getelementptr inbounds [512 x i8], [512 x i8]* %buf, i32 0, i32 0
  %call22 = call i32 @strncmp(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.12, i32 0, i32 0), i8* %arraydecay21, i64 5) #6
  %tobool = icmp ne i32 %call22, 0
  br i1 %tobool, label %land.lhs.true.23, label %if.end.28

land.lhs.true.23:                                 ; preds = %if.end.20
  %arraydecay24 = getelementptr inbounds [512 x i8], [512 x i8]* %buf, i32 0, i32 0
  %call25 = call i32 @strncmp(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.13, i32 0, i32 0), i8* %arraydecay24, i64 6) #6
  %tobool26 = icmp ne i32 %call25, 0
  br i1 %tobool26, label %if.then.27, label %if.end.28

if.then.27:                                       ; preds = %land.lhs.true.23
  br label %for.end

if.end.28:                                        ; preds = %land.lhs.true.23, %if.end.20
  %arraydecay29 = getelementptr inbounds [512 x i8], [512 x i8]* %buf, i32 0, i32 0
  %call30 = call i8* @strchr(i8* %arraydecay29, i32 10) #6
  store i8* %call30, i8** %c, align 8
  %tobool31 = icmp ne i8* %call30, null
  br i1 %tobool31, label %if.then.32, label %if.end.33

if.then.32:                                       ; preds = %if.end.28
  %7 = load i8*, i8** %c, align 8
  store i8 0, i8* %7, align 1
  br label %if.end.33

if.end.33:                                        ; preds = %if.then.32, %if.end.28
  %arraydecay34 = getelementptr inbounds [512 x i8], [512 x i8]* %buf, i32 0, i32 0
  %arraydecay35 = getelementptr inbounds [16 x i8*], [16 x i8*]* %partv, i32 0, i32 0
  %call36 = call i32 @ssplit(i8* %arraydecay34, i8 signext 32, i8** %arraydecay35)
  store i32 %call36, i32* %parts, align 4
  %8 = load i32, i32* %parts, align 4
  %cmp37 = icmp sgt i32 %8, 3
  br i1 %cmp37, label %land.lhs.true.39, label %if.end.50

land.lhs.true.39:                                 ; preds = %if.end.33
  %9 = load i32, i32* %parts, align 4
  %sub = sub nsw i32 %9, 3
  %idxprom = sext i32 %sub to i64
  %arrayidx40 = getelementptr inbounds [16 x i8*], [16 x i8*]* %partv, i32 0, i64 %idxprom
  %10 = load i8*, i8** %arrayidx40, align 8
  %call41 = call i32 @strncmp(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.14, i32 0, i32 0), i8* %10, i64 12) #6
  %cmp42 = icmp eq i32 %call41, 0
  br i1 %cmp42, label %if.then.44, label %if.end.50

if.then.44:                                       ; preds = %land.lhs.true.39
  %11 = load i8*, i8** %from.addr, align 8
  %12 = load i32, i32* %parts, align 4
  %sub45 = sub nsw i32 %12, 1
  %idxprom46 = sext i32 %sub45 to i64
  %arrayidx47 = getelementptr inbounds [16 x i8*], [16 x i8*]* %partv, i32 0, i64 %idxprom46
  %13 = load i8*, i8** %arrayidx47, align 8
  %call48 = call i8* @strcat(i8* %11, i8* %13) #5
  %14 = load i8*, i8** %from.addr, align 8
  %call49 = call i8* @strcat(i8* %14, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i32 0, i32 0)) #5
  br label %if.end.50

if.end.50:                                        ; preds = %if.then.44, %land.lhs.true.39, %if.end.33
  %15 = load i32, i32* %parts, align 4
  %cmp51 = icmp slt i32 %15, 2
  br i1 %cmp51, label %if.then.53, label %if.else

if.then.53:                                       ; preds = %if.end.50
  br label %for.end

if.else:                                          ; preds = %if.end.50
  %arrayidx55 = getelementptr inbounds [16 x i8*], [16 x i8*]* %partv, i32 0, i64 1
  %16 = load i8*, i8** %arrayidx55, align 8
  store i8* %16, i8** %x, align 8
  %17 = load i8*, i8** %x, align 8
  %call57 = call i8* @strchr(i8* %17, i32 32) #6
  store i8* %call57, i8** %q, align 8
  %18 = load i8*, i8** %q, align 8
  %cmp58 = icmp ne i8* %18, null
  br i1 %cmp58, label %if.then.60, label %if.end.61

if.then.60:                                       ; preds = %if.else
  %19 = load i8*, i8** %q, align 8
  store i8 0, i8* %19, align 1
  br label %if.end.61

if.end.61:                                        ; preds = %if.then.60, %if.else
  %arraydecay62 = getelementptr inbounds [512 x i8], [512 x i8]* %addr, i32 0, i32 0
  %20 = load i8*, i8** %x, align 8
  %call63 = call i8* @strcpy(i8* %arraydecay62, i8* %20) #5
  br label %if.end.64

if.end.64:                                        ; preds = %if.end.61
  %arraydecay65 = getelementptr inbounds [512 x i8], [512 x i8]* %addr, i32 0, i32 0
  %arraydecay66 = getelementptr inbounds [512 x i8], [512 x i8]* %domain, i32 0, i32 0
  %arraydecay67 = getelementptr inbounds [512 x i8], [512 x i8]* %user, i32 0, i32 0
  %call68 = call i32 @parse(i8* %arraydecay65, i8* %arraydecay66, i8* %arraydecay67)
  %arraydecay69 = getelementptr inbounds [512 x i8], [512 x i8]* %domain, i32 0, i32 0
  %21 = load i8, i8* %arraydecay69, align 1
  %conv70 = sext i8 %21 to i32
  %cmp71 = icmp eq i32 %conv70, 0
  br i1 %cmp71, label %if.then.73, label %if.else.74

if.then.73:                                       ; preds = %if.end.64
  store i32 1, i32* %form, align 4
  br label %if.end.75

if.else.74:                                       ; preds = %if.end.64
  store i32 3, i32* %form, align 4
  br label %if.end.75

if.end.75:                                        ; preds = %if.else.74, %if.then.73
  %arraydecay76 = getelementptr inbounds [512 x i8], [512 x i8]* %domain, i32 0, i32 0
  %arraydecay77 = getelementptr inbounds [512 x i8], [512 x i8]* %user, i32 0, i32 0
  %22 = load i32, i32* %form, align 4
  %arraydecay78 = getelementptr inbounds [512 x i8], [512 x i8]* %addr, i32 0, i32 0
  call void @build(i8* %arraydecay76, i8* %arraydecay77, i32 %22, i8* %arraydecay78)
  br label %for.cond

for.end:                                          ; preds = %if.then.53, %if.then.27, %if.then.19, %if.then.7
  %23 = load i8*, i8** %from.addr, align 8
  %arraydecay79 = getelementptr inbounds [512 x i8], [512 x i8]* %addr, i32 0, i32 0
  %call80 = call i8* @strcat(i8* %23, i8* %arraydecay79) #5
  %24 = load i8*, i8** %from.addr, align 8
  %arrayidx81 = getelementptr inbounds i8, i8* %24, i64 0
  %25 = load i8, i8* %arrayidx81, align 1
  %conv82 = sext i8 %25 to i32
  %cmp83 = icmp eq i32 %conv82, 0
  br i1 %cmp83, label %if.then.85, label %if.end.96

if.then.85:                                       ; preds = %for.end
  %call87 = call i32 @getuid() #5
  %call88 = call i8* (i32, ...) bitcast (i8* (...)* @pwuid to i8* (i32, ...)*)(i32 %call87)
  store i8* %call88, i8** %login, align 8
  %cmp89 = icmp eq i8* %call88, null
  br i1 %cmp89, label %if.then.91, label %if.else.93

if.then.91:                                       ; preds = %if.then.85
  %26 = load i8*, i8** %from.addr, align 8
  %call92 = call i8* @strcpy(i8* %26, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.15, i32 0, i32 0)) #5
  br label %if.end.95

if.else.93:                                       ; preds = %if.then.85
  %27 = load i8*, i8** %from.addr, align 8
  %28 = load i8*, i8** %login, align 8
  %call94 = call i8* @strcpy(i8* %27, i8* %28) #5
  br label %if.end.95

if.end.95:                                        ; preds = %if.else.93, %if.then.91
  br label %if.end.96

if.end.96:                                        ; preds = %if.end.95, %for.end
  %29 = load i8*, i8** %from.addr, align 8
  %arraydecay97 = getelementptr inbounds [128 x i8*], [128 x i8*]* %hop, i32 0, i32 0
  %call98 = call i32 @ssplit(i8* %29, i8 signext 33, i8** %arraydecay97)
  store i32 %call98, i32* %nhops, align 4
  store i32 0, i32* %i, align 4
  br label %for.cond.99

for.cond.99:                                      ; preds = %for.inc, %if.end.96
  %30 = load i32, i32* %i, align 4
  %31 = load i32, i32* %nhops, align 4
  %sub100 = sub nsw i32 %31, 1
  %cmp101 = icmp slt i32 %30, %sub100
  br i1 %cmp101, label %for.body, label %for.end.123

for.body:                                         ; preds = %for.cond.99
  %32 = load i32, i32* %i, align 4
  %idxprom103 = sext i32 %32 to i64
  %arrayidx104 = getelementptr inbounds [128 x i8*], [128 x i8*]* %hop, i32 0, i64 %idxprom103
  %33 = load i8*, i8** %arrayidx104, align 8
  store i8* %33, i8** %b, align 8
  %34 = load i8*, i8** %b, align 8
  %35 = load i8, i8* %34, align 1
  %conv105 = sext i8 %35 to i32
  %cmp106 = icmp eq i32 %conv105, 0
  br i1 %cmp106, label %if.then.108, label %if.end.109

if.then.108:                                      ; preds = %for.body
  br label %for.inc

if.end.109:                                       ; preds = %for.body
  %36 = load i32, i32* %i, align 4
  %add = add nsw i32 %36, 1
  %idxprom110 = sext i32 %add to i64
  %arrayidx111 = getelementptr inbounds [128 x i8*], [128 x i8*]* %hop, i32 0, i64 %idxprom110
  %37 = load i8*, i8** %arrayidx111, align 8
  store i8* %37, i8** %e, align 8
  %38 = load i8*, i8** %e, align 8
  %incdec.ptr = getelementptr inbounds i8, i8* %38, i32 -1
  store i8* %incdec.ptr, i8** %e, align 8
  %39 = load i8*, i8** %e, align 8
  store i8 0, i8* %39, align 1
  %40 = load i8*, i8** %e, align 8
  %incdec.ptr112 = getelementptr inbounds i8, i8* %40, i32 1
  store i8* %incdec.ptr112, i8** %e, align 8
  %41 = load i32, i32* %i, align 4
  %idxprom113 = sext i32 %41 to i64
  %arrayidx114 = getelementptr inbounds [128 x i8*], [128 x i8*]* %hop, i32 0, i64 %idxprom113
  %42 = load i8*, i8** %arrayidx114, align 8
  %call115 = call i32 (i8*, i8*, ...) bitcast (i32 (...)* @strcmpic to i32 (i8*, i8*, ...)*)(i8* %42, i8* getelementptr inbounds ([0 x i8], [0 x i8]* @hostdomain, i32 0, i32 0))
  %cmp116 = icmp eq i32 %call115, 0
  br i1 %cmp116, label %if.then.118, label %if.end.122

if.then.118:                                      ; preds = %if.end.109
  %43 = load i32, i32* %i, align 4
  %idxprom119 = sext i32 %43 to i64
  %arrayidx120 = getelementptr inbounds [128 x i8*], [128 x i8*]* %hop, i32 0, i64 %idxprom119
  %44 = load i8*, i8** %arrayidx120, align 8
  %call121 = call i8* @strcpy(i8* %44, i8* getelementptr inbounds ([0 x i8], [0 x i8]* @hostname, i32 0, i32 0)) #5
  br label %if.end.122

if.end.122:                                       ; preds = %if.then.118, %if.end.109
  br label %for.inc

for.inc:                                          ; preds = %if.end.122, %if.then.108
  %45 = load i32, i32* %i, align 4
  %inc = add nsw i32 %45, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond.99

for.end.123:                                      ; preds = %for.cond.99
  store i32 0, i32* %i, align 4
  br label %for.cond.124

for.cond.124:                                     ; preds = %for.inc.139, %for.end.123
  %46 = load i32, i32* %i, align 4
  %47 = load i32, i32* %nhops, align 4
  %sub125 = sub nsw i32 %47, 2
  %cmp126 = icmp slt i32 %46, %sub125
  br i1 %cmp126, label %for.body.128, label %for.end.141

for.body.128:                                     ; preds = %for.cond.124
  %48 = load i32, i32* %i, align 4
  %idxprom129 = sext i32 %48 to i64
  %arrayidx130 = getelementptr inbounds [128 x i8*], [128 x i8*]* %hop, i32 0, i64 %idxprom129
  %49 = load i8*, i8** %arrayidx130, align 8
  store i8* %49, i8** %b, align 8
  %50 = load i32, i32* %i, align 4
  %add131 = add nsw i32 %50, 1
  %idxprom132 = sext i32 %add131 to i64
  %arrayidx133 = getelementptr inbounds [128 x i8*], [128 x i8*]* %hop, i32 0, i64 %idxprom132
  %51 = load i8*, i8** %arrayidx133, align 8
  store i8* %51, i8** %e, align 8
  %52 = load i8*, i8** %b, align 8
  %53 = load i8*, i8** %e, align 8
  %call134 = call i32 (i8*, i8*, ...) bitcast (i32 (...)* @strcmpic to i32 (i8*, i8*, ...)*)(i8* %52, i8* %53)
  %cmp135 = icmp eq i32 %call134, 0
  br i1 %cmp135, label %if.then.137, label %if.end.138

if.then.137:                                      ; preds = %for.body.128
  %54 = load i8*, i8** %b, align 8
  store i8 0, i8* %54, align 1
  br label %if.end.138

if.end.138:                                       ; preds = %if.then.137, %for.body.128
  br label %for.inc.139

for.inc.139:                                      ; preds = %if.end.138
  %55 = load i32, i32* %i, align 4
  %inc140 = add nsw i32 %55, 1
  store i32 %inc140, i32* %i, align 4
  br label %for.cond.124

for.end.141:                                      ; preds = %for.cond.124
  %arrayidx142 = getelementptr inbounds [512 x i8], [512 x i8]* %tmp, i32 0, i64 0
  store i8 0, i8* %arrayidx142, align 1
  store i32 0, i32* %i, align 4
  br label %for.cond.143

for.cond.143:                                     ; preds = %for.inc.173, %for.end.141
  %56 = load i32, i32* %i, align 4
  %57 = load i32, i32* %nhops, align 4
  %sub144 = sub nsw i32 %57, 1
  %cmp145 = icmp slt i32 %56, %sub144
  br i1 %cmp145, label %for.body.147, label %for.end.175

for.body.147:                                     ; preds = %for.cond.143
  %58 = load i32, i32* %i, align 4
  %idxprom148 = sext i32 %58 to i64
  %arrayidx149 = getelementptr inbounds [128 x i8*], [128 x i8*]* %hop, i32 0, i64 %idxprom148
  %59 = load i8*, i8** %arrayidx149, align 8
  %arrayidx150 = getelementptr inbounds i8, i8* %59, i64 0
  %60 = load i8, i8* %arrayidx150, align 1
  %conv151 = sext i8 %60 to i32
  %cmp152 = icmp eq i32 %conv151, 0
  br i1 %cmp152, label %if.then.165, label %lor.lhs.false.154

lor.lhs.false.154:                                ; preds = %for.body.147
  %arrayidx155 = getelementptr inbounds [512 x i8], [512 x i8]* %tmp, i32 0, i64 0
  %61 = load i8, i8* %arrayidx155, align 1
  %conv156 = sext i8 %61 to i32
  %cmp157 = icmp eq i32 %conv156, 0
  br i1 %cmp157, label %land.lhs.true.159, label %if.end.166

land.lhs.true.159:                                ; preds = %lor.lhs.false.154
  %62 = load i32, i32* %i, align 4
  %idxprom160 = sext i32 %62 to i64
  %arrayidx161 = getelementptr inbounds [128 x i8*], [128 x i8*]* %hop, i32 0, i64 %idxprom160
  %63 = load i8*, i8** %arrayidx161, align 8
  %call162 = call i32 (i8*, i8*, ...) bitcast (i32 (...)* @strcmpic to i32 (i8*, i8*, ...)*)(i8* %63, i8* getelementptr inbounds ([0 x i8], [0 x i8]* @hostname, i32 0, i32 0))
  %cmp163 = icmp eq i32 %call162, 0
  br i1 %cmp163, label %if.then.165, label %if.end.166

if.then.165:                                      ; preds = %land.lhs.true.159, %for.body.147
  br label %for.inc.173

if.end.166:                                       ; preds = %land.lhs.true.159, %lor.lhs.false.154
  %arraydecay167 = getelementptr inbounds [512 x i8], [512 x i8]* %tmp, i32 0, i32 0
  %64 = load i32, i32* %i, align 4
  %idxprom168 = sext i32 %64 to i64
  %arrayidx169 = getelementptr inbounds [128 x i8*], [128 x i8*]* %hop, i32 0, i64 %idxprom168
  %65 = load i8*, i8** %arrayidx169, align 8
  %call170 = call i8* @strcat(i8* %arraydecay167, i8* %65) #5
  %arraydecay171 = getelementptr inbounds [512 x i8], [512 x i8]* %tmp, i32 0, i32 0
  %call172 = call i8* @strcat(i8* %arraydecay171, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i32 0, i32 0)) #5
  br label %for.inc.173

for.inc.173:                                      ; preds = %if.end.166, %if.then.165
  %66 = load i32, i32* %i, align 4
  %inc174 = add nsw i32 %66, 1
  store i32 %inc174, i32* %i, align 4
  br label %for.cond.143

for.end.175:                                      ; preds = %for.cond.143
  %arraydecay176 = getelementptr inbounds [512 x i8], [512 x i8]* %tmp, i32 0, i32 0
  %67 = load i32, i32* %i, align 4
  %idxprom177 = sext i32 %67 to i64
  %arrayidx178 = getelementptr inbounds [128 x i8*], [128 x i8*]* %hop, i32 0, i64 %idxprom177
  %68 = load i8*, i8** %arrayidx178, align 8
  %call179 = call i8* @strcat(i8* %arraydecay176, i8* %68) #5
  %69 = load i8*, i8** %from.addr, align 8
  %arraydecay180 = getelementptr inbounds [512 x i8], [512 x i8]* %tmp, i32 0, i32 0
  %call181 = call i8* @strcpy(i8* %69, i8* %arraydecay180) #5
  %70 = load i8*, i8** %retbuf.addr, align 8
  %arraydecay182 = getelementptr inbounds [512 x i8], [512 x i8]* %buf, i32 0, i32 0
  %call183 = call i8* @strcpy(i8* %70, i8* %arraydecay182) #5
  %71 = load %struct._IO_FILE*, %struct._IO_FILE** @spoolfp, align 8
  %72 = load i8*, i8** %from.addr, align 8
  %call184 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %71, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.16, i32 0, i32 0), i8* %72)
  br label %return

return:                                           ; preds = %for.end.175, %if.then
  ret void
}

; Function Attrs: nounwind readonly
declare i8* @strchr(i8*, i32) #3

declare i8* @pwuid(...) #2

; Function Attrs: nounwind
declare i32 @getuid() #1

; Function Attrs: nounwind uwtable
define void @scanheaders(i8* %buf) #0 {
entry:
  %buf.addr = alloca i8*, align 8
  %inheader = alloca i32, align 4
  store i8* %buf, i8** %buf.addr, align 8
  store i32 0, i32* %inheader, align 4
  br label %while.cond

while.cond:                                       ; preds = %if.end.34, %entry
  %0 = load i8*, i8** @ieof, align 8
  %cmp = icmp ne i8* %0, null
  br i1 %cmp, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %1 = load i8*, i8** %buf.addr, align 8
  %arrayidx = getelementptr inbounds i8, i8* %1, i64 0
  %2 = load i8, i8* %arrayidx, align 1
  %conv = sext i8 %2 to i32
  %cmp1 = icmp eq i32 %conv, 10
  br i1 %cmp1, label %if.then, label %if.end

if.then:                                          ; preds = %while.body
  br label %while.end

if.end:                                           ; preds = %while.body
  %3 = load i32, i32* %inheader, align 4
  %cmp3 = icmp eq i32 %3, 0
  br i1 %cmp3, label %if.then.13, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.end
  %4 = load i8*, i8** %buf.addr, align 8
  %arrayidx5 = getelementptr inbounds i8, i8* %4, i64 0
  %5 = load i8, i8* %arrayidx5, align 1
  %conv6 = sext i8 %5 to i32
  %cmp7 = icmp ne i32 %conv6, 32
  br i1 %cmp7, label %land.lhs.true, label %if.end.18

land.lhs.true:                                    ; preds = %lor.lhs.false
  %6 = load i8*, i8** %buf.addr, align 8
  %arrayidx9 = getelementptr inbounds i8, i8* %6, i64 0
  %7 = load i8, i8* %arrayidx9, align 1
  %conv10 = sext i8 %7 to i32
  %cmp11 = icmp ne i32 %conv10, 9
  br i1 %cmp11, label %if.then.13, label %if.end.18

if.then.13:                                       ; preds = %land.lhs.true, %if.end
  %8 = load i8*, i8** %buf.addr, align 8
  %call = call i32 @isheader(i8* %8)
  %cmp14 = icmp eq i32 %call, 0
  br i1 %cmp14, label %if.then.16, label %if.end.17

if.then.16:                                       ; preds = %if.then.13
  br label %while.end

if.end.17:                                        ; preds = %if.then.13
  store i32 1, i32* %inheader, align 4
  %9 = load i8*, i8** %buf.addr, align 8
  call void @haveheaders(i8* %9)
  br label %if.end.18

if.end.18:                                        ; preds = %if.end.17, %land.lhs.true, %lor.lhs.false
  %10 = load i8*, i8** %buf.addr, align 8
  %11 = load %struct._IO_FILE*, %struct._IO_FILE** @spoolfp, align 8
  %call19 = call i32 @fputs(i8* %10, %struct._IO_FILE* %11)
  %12 = load i8*, i8** %buf.addr, align 8
  %13 = load %struct._IO_FILE*, %struct._IO_FILE** @stdin, align 8
  %call20 = call i8* @fgets(i8* %12, i32 512, %struct._IO_FILE* %13)
  %cmp21 = icmp eq i8* %call20, null
  br i1 %cmp21, label %if.then.33, label %lor.lhs.false.23

lor.lhs.false.23:                                 ; preds = %if.end.18
  %14 = load i8*, i8** %buf.addr, align 8
  %arrayidx24 = getelementptr inbounds i8, i8* %14, i64 0
  %15 = load i8, i8* %arrayidx24, align 1
  %conv25 = sext i8 %15 to i32
  %cmp26 = icmp eq i32 %conv25, 46
  br i1 %cmp26, label %land.lhs.true.28, label %if.end.34

land.lhs.true.28:                                 ; preds = %lor.lhs.false.23
  %16 = load i8*, i8** %buf.addr, align 8
  %arrayidx29 = getelementptr inbounds i8, i8* %16, i64 1
  %17 = load i8, i8* %arrayidx29, align 1
  %conv30 = sext i8 %17 to i32
  %cmp31 = icmp eq i32 %conv30, 10
  br i1 %cmp31, label %if.then.33, label %if.end.34

if.then.33:                                       ; preds = %land.lhs.true.28, %if.end.18
  store i8* null, i8** @ieof, align 8
  br label %if.end.34

if.end.34:                                        ; preds = %if.then.33, %land.lhs.true.28, %lor.lhs.false.23
  br label %while.cond

while.end:                                        ; preds = %if.then.16, %if.then, %while.cond
  %18 = load i8*, i8** %buf.addr, align 8
  %call35 = call i32 @isheader(i8* %18)
  %tobool = icmp ne i32 %call35, 0
  br i1 %tobool, label %if.then.36, label %if.end.38

if.then.36:                                       ; preds = %while.end
  %19 = load i8*, i8** %buf.addr, align 8
  %arrayidx37 = getelementptr inbounds i8, i8* %19, i64 0
  store i8 0, i8* %arrayidx37, align 1
  br label %if.end.38

if.end.38:                                        ; preds = %if.then.36, %while.end
  ret void
}

; Function Attrs: nounwind uwtable
define void @haveheaders(i8* %s) #0 {
entry:
  %s.addr = alloca i8*, align 8
  %i = alloca %struct.reqheaders*, align 8
  store i8* %s, i8** %s.addr, align 8
  store %struct.reqheaders* getelementptr inbounds ([5 x %struct.reqheaders], [5 x %struct.reqheaders]* @reqtab, i32 0, i32 0), %struct.reqheaders** %i, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %0 = load %struct.reqheaders*, %struct.reqheaders** %i, align 8
  %name = getelementptr inbounds %struct.reqheaders, %struct.reqheaders* %0, i32 0, i32 0
  %1 = load i8*, i8** %name, align 8
  %cmp = icmp ne i8* %1, null
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %2 = load %struct.reqheaders*, %struct.reqheaders** %i, align 8
  %name1 = getelementptr inbounds %struct.reqheaders, %struct.reqheaders* %2, i32 0, i32 0
  %3 = load i8*, i8** %name1, align 8
  %4 = load i8*, i8** %s.addr, align 8
  %5 = load %struct.reqheaders*, %struct.reqheaders** %i, align 8
  %name2 = getelementptr inbounds %struct.reqheaders, %struct.reqheaders* %5, i32 0, i32 0
  %6 = load i8*, i8** %name2, align 8
  %call = call i64 @strlen(i8* %6) #6
  %call3 = call i32 (i8*, i8*, i64, ...) bitcast (i32 (...)* @strncmpic to i32 (i8*, i8*, i64, ...)*)(i8* %3, i8* %4, i64 %call)
  %cmp4 = icmp eq i32 %call3, 0
  br i1 %cmp4, label %if.then, label %if.end.10

if.then:                                          ; preds = %for.body
  %7 = load i8*, i8** %s.addr, align 8
  %call5 = call i32 (i8*, i8*, i32, ...) bitcast (i32 (...)* @strncmpic to i32 (i8*, i8*, i32, ...)*)(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.17, i32 0, i32 0), i8* %7, i32 5)
  %cmp6 = icmp eq i32 %call5, 0
  br i1 %cmp6, label %land.lhs.true, label %if.end

land.lhs.true:                                    ; preds = %if.then
  %8 = load i8*, i8** @from_addr, align 8
  %cmp7 = icmp ne i8* %8, null
  br i1 %cmp7, label %if.then.8, label %if.end

if.then.8:                                        ; preds = %land.lhs.true
  %9 = load i8*, i8** %s.addr, align 8
  %10 = load i8*, i8** @from_addr, align 8
  %call9 = call i32 (i8*, i8*, ...) @sprintf(i8* %9, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.18, i32 0, i32 0), i8* %10) #5
  br label %if.end

if.end:                                           ; preds = %if.then.8, %land.lhs.true, %if.then
  %11 = load %struct.reqheaders*, %struct.reqheaders** %i, align 8
  %have = getelementptr inbounds %struct.reqheaders, %struct.reqheaders* %11, i32 0, i32 2
  store i8 89, i8* %have, align 1
  br label %for.end

if.end.10:                                        ; preds = %for.body
  br label %for.inc

for.inc:                                          ; preds = %if.end.10
  %12 = load %struct.reqheaders*, %struct.reqheaders** %i, align 8
  %incdec.ptr = getelementptr inbounds %struct.reqheaders, %struct.reqheaders* %12, i32 1
  store %struct.reqheaders* %incdec.ptr, %struct.reqheaders** %i, align 8
  br label %for.cond

for.end:                                          ; preds = %if.end, %for.cond
  ret void
}

; Function Attrs: nounwind uwtable
define void @compheaders() #0 {
entry:
  %i = alloca %struct.reqheaders*, align 8
  store %struct.reqheaders* getelementptr inbounds ([5 x %struct.reqheaders], [5 x %struct.reqheaders]* @reqtab, i32 0, i32 0), %struct.reqheaders** %i, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %0 = load %struct.reqheaders*, %struct.reqheaders** %i, align 8
  %name = getelementptr inbounds %struct.reqheaders, %struct.reqheaders* %0, i32 0, i32 0
  %1 = load i8*, i8** %name, align 8
  %cmp = icmp ne i8* %1, null
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %2 = load %struct.reqheaders*, %struct.reqheaders** %i, align 8
  %have = getelementptr inbounds %struct.reqheaders, %struct.reqheaders* %2, i32 0, i32 2
  %3 = load i8, i8* %have, align 1
  %conv = sext i8 %3 to i32
  %cmp1 = icmp ne i32 %conv, 89
  br i1 %cmp1, label %if.then, label %if.end

if.then:                                          ; preds = %for.body
  %4 = load %struct._IO_FILE*, %struct._IO_FILE** @spoolfp, align 8
  %5 = load %struct.reqheaders*, %struct.reqheaders** %i, align 8
  %field = getelementptr inbounds %struct.reqheaders, %struct.reqheaders* %5, i32 0, i32 1
  %6 = load i8*, i8** %field, align 8
  %call = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %4, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.16, i32 0, i32 0), i8* %6)
  br label %if.end

if.end:                                           ; preds = %if.then, %for.body
  br label %for.inc

for.inc:                                          ; preds = %if.end
  %7 = load %struct.reqheaders*, %struct.reqheaders** %i, align 8
  %incdec.ptr = getelementptr inbounds %struct.reqheaders, %struct.reqheaders* %7, i32 1
  store %struct.reqheaders* %incdec.ptr, %struct.reqheaders** %i, align 8
  br label %for.cond

for.end:                                          ; preds = %for.cond
  ret void
}

; Function Attrs: nounwind uwtable
define i32 @isheader(i8* %s) #0 {
entry:
  %retval = alloca i32, align 4
  %s.addr = alloca i8*, align 8
  %p = alloca i8*, align 8
  store i8* %s, i8** %s.addr, align 8
  %0 = load i8*, i8** %s.addr, align 8
  %call = call i8* @strchr(i8* %0, i32 58) #6
  store i8* %call, i8** %p, align 8
  %cmp = icmp eq i8* %call, null
  br i1 %cmp, label %if.then, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %entry
  %1 = load i8*, i8** %s.addr, align 8
  %2 = load i8*, i8** %p, align 8
  %cmp1 = icmp eq i8* %1, %2
  br i1 %cmp1, label %if.then, label %if.end

if.then:                                          ; preds = %lor.lhs.false, %entry
  store i32 0, i32* %retval
  br label %return

if.end:                                           ; preds = %lor.lhs.false
  br label %while.cond

while.cond:                                       ; preds = %if.end.10, %if.end
  %3 = load i8*, i8** %s.addr, align 8
  %4 = load i8*, i8** %p, align 8
  %cmp2 = icmp ne i8* %3, %4
  br i1 %cmp2, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %5 = load i8*, i8** %s.addr, align 8
  %6 = load i8, i8* %5, align 1
  %conv = sext i8 %6 to i32
  %cmp3 = icmp slt i32 %conv, 33
  br i1 %cmp3, label %if.then.9, label %lor.lhs.false.5

lor.lhs.false.5:                                  ; preds = %while.body
  %7 = load i8*, i8** %s.addr, align 8
  %8 = load i8, i8* %7, align 1
  %conv6 = sext i8 %8 to i32
  %cmp7 = icmp sgt i32 %conv6, 126
  br i1 %cmp7, label %if.then.9, label %if.end.10

if.then.9:                                        ; preds = %lor.lhs.false.5, %while.body
  store i32 0, i32* %retval
  br label %return

if.end.10:                                        ; preds = %lor.lhs.false.5
  %9 = load i8*, i8** %s.addr, align 8
  %incdec.ptr = getelementptr inbounds i8, i8* %9, i32 1
  store i8* %incdec.ptr, i8** %s.addr, align 8
  br label %while.cond

while.end:                                        ; preds = %while.cond
  store i32 1, i32* %retval
  br label %return

return:                                           ; preds = %while.end, %if.then.9, %if.then
  %10 = load i32, i32* %retval
  ret i32 %10
}

declare i32 @strncmpic(...) #2

; Function Attrs: nounwind uwtable
define void @def_to(i32 %argc, i8** %argv) #0 {
entry:
  %argc.addr = alloca i32, align 4
  %argv.addr = alloca i8**, align 8
  %i = alloca i32, align 4
  %n = alloca i32, align 4
  %bol = alloca i8*, align 8
  store i32 %argc, i32* %argc.addr, align 4
  store i8** %argv, i8*** %argv.addr, align 8
  store i8* getelementptr inbounds ([512 x i8], [512 x i8]* @toline, i32 0, i32 0), i8** %bol, align 8
  %0 = load i8*, i8** %bol, align 8
  %call = call i8* @strcpy(i8* %0, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.25, i32 0, i32 0)) #5
  store i32 0, i32* %i, align 4
  store i32 0, i32* %n, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %1 = load i32, i32* %i, align 4
  %2 = load i32, i32* %argc.addr, align 4
  %cmp = icmp slt i32 %1, %2
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %3 = load i8*, i8** %bol, align 8
  %4 = load i32, i32* %i, align 4
  %idxprom = sext i32 %4 to i64
  %5 = load i8**, i8*** %argv.addr, align 8
  %arrayidx = getelementptr inbounds i8*, i8** %5, i64 %idxprom
  %6 = load i8*, i8** %arrayidx, align 8
  %call1 = call i8* @strcat(i8* %3, i8* %6) #5
  %7 = load i32, i32* %i, align 4
  %idxprom2 = sext i32 %7 to i64
  %8 = load i8**, i8*** %argv.addr, align 8
  %arrayidx3 = getelementptr inbounds i8*, i8** %8, i64 %idxprom2
  %9 = load i8*, i8** %arrayidx3, align 8
  %call4 = call i8* @strchr(i8* %9, i32 33) #6
  %cmp5 = icmp eq i8* %call4, null
  br i1 %cmp5, label %land.lhs.true, label %if.end

land.lhs.true:                                    ; preds = %for.body
  %10 = load i32, i32* %i, align 4
  %idxprom6 = sext i32 %10 to i64
  %11 = load i8**, i8*** %argv.addr, align 8
  %arrayidx7 = getelementptr inbounds i8*, i8** %11, i64 %idxprom6
  %12 = load i8*, i8** %arrayidx7, align 8
  %call8 = call i8* @strchr(i8* %12, i32 64) #6
  %cmp9 = icmp eq i8* %call8, null
  br i1 %cmp9, label %if.then, label %if.end

if.then:                                          ; preds = %land.lhs.true
  %13 = load i8*, i8** %bol, align 8
  %call10 = call i8* @strcat(i8* %13, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.26, i32 0, i32 0)) #5
  %14 = load i8*, i8** %bol, align 8
  %call11 = call i8* @strcat(i8* %14, i8* getelementptr inbounds ([0 x i8], [0 x i8]* @hostdomain, i32 0, i32 0)) #5
  br label %if.end

if.end:                                           ; preds = %if.then, %land.lhs.true, %for.body
  %15 = load i32, i32* %i, align 4
  %add = add nsw i32 %15, 1
  %16 = load i32, i32* %argc.addr, align 4
  %cmp12 = icmp slt i32 %add, %16
  br i1 %cmp12, label %if.then.13, label %if.end.22

if.then.13:                                       ; preds = %if.end
  %17 = load i8*, i8** %bol, align 8
  %call14 = call i64 @strlen(i8* %17) #6
  %conv = trunc i64 %call14 to i32
  store i32 %conv, i32* %n, align 4
  %18 = load i32, i32* %n, align 4
  %cmp15 = icmp sgt i32 %18, 50
  br i1 %cmp15, label %if.then.17, label %if.else

if.then.17:                                       ; preds = %if.then.13
  %19 = load i8*, i8** %bol, align 8
  %call18 = call i8* @strcat(i8* %19, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.27, i32 0, i32 0)) #5
  %20 = load i8*, i8** %bol, align 8
  %21 = load i8*, i8** %bol, align 8
  %call19 = call i64 @strlen(i8* %21) #6
  %add.ptr = getelementptr inbounds i8, i8* %20, i64 %call19
  store i8* %add.ptr, i8** %bol, align 8
  %22 = load i8*, i8** %bol, align 8
  store i8 0, i8* %22, align 1
  store i32 8, i32* %n, align 4
  br label %if.end.21

if.else:                                          ; preds = %if.then.13
  %23 = load i8*, i8** %bol, align 8
  %call20 = call i8* @strcat(i8* %23, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.28, i32 0, i32 0)) #5
  br label %if.end.21

if.end.21:                                        ; preds = %if.else, %if.then.17
  br label %if.end.22

if.end.22:                                        ; preds = %if.end.21, %if.end
  br label %for.inc

for.inc:                                          ; preds = %if.end.22
  %24 = load i32, i32* %i, align 4
  %inc = add nsw i32 %24, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  ret void
}

; Function Attrs: nounwind uwtable
define void @def_date() #0 {
entry:
  %call = call i8* @strcpy(i8* getelementptr inbounds ([512 x i8], [512 x i8]* @dateline, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.19, i32 0, i32 0)) #5
  %call1 = call i8* @strcat(i8* getelementptr inbounds ([512 x i8], [512 x i8]* @dateline, i32 0, i32 0), i8* getelementptr inbounds ([0 x i8], [0 x i8]* @arpanows, i32 0, i32 0)) #5
  ret void
}

; Function Attrs: nounwind uwtable
define void @def_from(i8* %from) #0 {
entry:
  %from.addr = alloca i8*, align 8
  %nameptr = alloca i8*, align 8
  %name = alloca [512 x i8], align 16
  %login = alloca i8*, align 8
  store i8* %from, i8** %from.addr, align 8
  %0 = load i8*, i8** @from_addr, align 8
  %cmp = icmp ne i8* %0, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %1 = load i8*, i8** @from_addr, align 8
  %call = call i32 (i8*, i8*, ...) @sprintf(i8* getelementptr inbounds ([512 x i8], [512 x i8]* @fromline, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.21, i32 0, i32 0), i8* %1) #5
  br label %if.end.25

if.end:                                           ; preds = %entry
  %arrayidx = getelementptr inbounds [512 x i8], [512 x i8]* %name, i32 0, i64 0
  store i8 0, i8* %arrayidx, align 1
  %call1 = call i8* (i8*, ...) bitcast (i8* (...)* @getenv to i8* (i8*, ...)*)(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.22, i32 0, i32 0))
  store i8* %call1, i8** %nameptr, align 8
  %cmp2 = icmp ne i8* %call1, null
  br i1 %cmp2, label %if.then.3, label %if.else

if.then.3:                                        ; preds = %if.end
  %arraydecay = getelementptr inbounds [512 x i8], [512 x i8]* %name, i32 0, i32 0
  %2 = load i8*, i8** %nameptr, align 8
  %call4 = call i8* @strcpy(i8* %arraydecay, i8* %2) #5
  br label %if.end.16

if.else:                                          ; preds = %if.end
  %call5 = call i32 @getuid() #5
  %call6 = call i8* (i32, ...) bitcast (i8* (...)* @pwuid to i8* (i32, ...)*)(i32 %call5)
  store i8* %call6, i8** %login, align 8
  %cmp7 = icmp ne i8* %call6, null
  br i1 %cmp7, label %if.then.8, label %if.end.15

if.then.8:                                        ; preds = %if.else
  %3 = load i8*, i8** %login, align 8
  %call9 = call i8* (i8*, ...) bitcast (i8* (...)* @pwfnam to i8* (i8*, ...)*)(i8* %3)
  store i8* %call9, i8** %nameptr, align 8
  %cmp10 = icmp ne i8* %call9, null
  br i1 %cmp10, label %if.then.11, label %if.end.14

if.then.11:                                       ; preds = %if.then.8
  %arraydecay12 = getelementptr inbounds [512 x i8], [512 x i8]* %name, i32 0, i32 0
  %4 = load i8*, i8** %nameptr, align 8
  %call13 = call i8* @strcpy(i8* %arraydecay12, i8* %4) #5
  br label %if.end.14

if.end.14:                                        ; preds = %if.then.11, %if.then.8
  br label %if.end.15

if.end.15:                                        ; preds = %if.end.14, %if.else
  br label %if.end.16

if.end.16:                                        ; preds = %if.end.15, %if.then.3
  %arrayidx17 = getelementptr inbounds [512 x i8], [512 x i8]* %name, i32 0, i64 0
  %5 = load i8, i8* %arrayidx17, align 1
  %conv = sext i8 %5 to i32
  %cmp18 = icmp ne i32 %conv, 0
  br i1 %cmp18, label %if.then.20, label %if.else.23

if.then.20:                                       ; preds = %if.end.16
  %6 = load i8*, i8** %from.addr, align 8
  %arraydecay21 = getelementptr inbounds [512 x i8], [512 x i8]* %name, i32 0, i32 0
  %call22 = call i32 (i8*, i8*, ...) @sprintf(i8* getelementptr inbounds ([512 x i8], [512 x i8]* @fromline, i32 0, i32 0), i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.23, i32 0, i32 0), i8* %6, i8* getelementptr inbounds ([0 x i8], [0 x i8]* @hostdomain, i32 0, i32 0), i8* %arraydecay21) #5
  br label %if.end.25

if.else.23:                                       ; preds = %if.end.16
  %7 = load i8*, i8** %from.addr, align 8
  %call24 = call i32 (i8*, i8*, ...) @sprintf(i8* getelementptr inbounds ([512 x i8], [512 x i8]* @fromline, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.24, i32 0, i32 0), i8* %7, i8* getelementptr inbounds ([0 x i8], [0 x i8]* @hostdomain, i32 0, i32 0)) #5
  br label %if.end.25

if.end.25:                                        ; preds = %if.then, %if.else.23, %if.then.20
  ret void
}

; Function Attrs: nounwind uwtable
define void @def_mid() #0 {
entry:
  %0 = load %struct.tm*, %struct.tm** @gmt, align 8
  %tm_year = getelementptr inbounds %struct.tm, %struct.tm* %0, i32 0, i32 5
  %1 = load i32, i32* %tm_year, align 4
  %2 = load %struct.tm*, %struct.tm** @gmt, align 8
  %tm_mon = getelementptr inbounds %struct.tm, %struct.tm* %2, i32 0, i32 4
  %3 = load i32, i32* %tm_mon, align 4
  %add = add nsw i32 %3, 1
  %4 = load %struct.tm*, %struct.tm** @gmt, align 8
  %tm_mday = getelementptr inbounds %struct.tm, %struct.tm* %4, i32 0, i32 3
  %5 = load i32, i32* %tm_mday, align 4
  %6 = load %struct.tm*, %struct.tm** @gmt, align 8
  %tm_hour = getelementptr inbounds %struct.tm, %struct.tm* %6, i32 0, i32 2
  %7 = load i32, i32* %tm_hour, align 4
  %8 = load %struct.tm*, %struct.tm** @gmt, align 8
  %tm_min = getelementptr inbounds %struct.tm, %struct.tm* %8, i32 0, i32 1
  %9 = load i32, i32* %tm_min, align 4
  %call = call i32 @getpid() #5
  %call1 = call i32 (i8*, i8*, ...) @sprintf(i8* getelementptr inbounds ([512 x i8], [512 x i8]* @midline, i32 0, i32 0), i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.20, i32 0, i32 0), i32 %1, i32 %add, i32 %5, i32 %7, i32 %9, i32 %call, i8* getelementptr inbounds ([0 x i8], [0 x i8]* @hostdomain, i32 0, i32 0)) #5
  ret void
}

; Function Attrs: nounwind
declare i32 @getpid() #1

declare i8* @getenv(...) #2

declare i8* @pwfnam(...) #2

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind readonly "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { noreturn "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #5 = { nounwind }
attributes #6 = { nounwind readonly }
attributes #7 = { noreturn }

!llvm.ident = !{!0}

!0 = !{!"clang version 3.7.0 (tags/RELEASE_370/final)"}
