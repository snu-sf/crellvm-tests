; ModuleID = './misc.bc'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.layer = type { %struct.canvas*, i32, i32, i32, i32, i32, %struct.LayFuncs*, i8*, %struct.layer*, %struct.layer*, i32, i32, %struct.anon, %struct.anon.0 }
%struct.canvas = type { %struct.canvas*, %struct.display*, %struct.canvas*, %struct.canvas*, %struct.canvas*, %struct.canvas*, i32, i32, %struct.viewport*, %struct.layer*, %struct.canvas*, %struct.layer, i32, i32, i32, i32, i32, i32, %struct.event }
%struct.display = type { %struct.display*, %struct.acluser*, %struct.canvas, %struct.canvas*, %struct.canvas*, %struct.layout*, void (i8*, i32)*, i8*, i32, i32, %struct.win*, %struct.win*, i32, [33 x i8], i8*, i8, i32, i32, i32, i32, i32, i32, i32, i32, %struct.mchar, i32, i8, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, %struct.mchar, %struct.timeval, i32, i8, i32, i8*, i32, i32, i32, i32, i32, i32, %struct.event, %struct.event, i32, %struct.action*, i32, [4096 x i8], i32, %struct.event, %struct.event, %struct.event, %struct.mode, %struct.mode, i32, i32, i8*, i32, i32, i32, i8*, i32, i32, i32, i32, i8*, i8*, i32, i8*, %struct.event, i32, i32, [201 x %union.tcu], [6 x i8*], [6 x i8], i32, i16, [256 x i8], i8***, i32, i32, i32, i32, i32, i32, i32, i32, i32, i8*, %struct.utmp, i32, i32, i32, %struct.event, i32, %struct.event }
%struct.acluser = type { %struct.acluser*, [257 x i8], i8*, i32, i32, i32, i32, i32, %struct.plop, i32, [3 x i8*], %struct.aclusergroup* }
%struct.plop = type { i8*, i32, i32 }
%struct.aclusergroup = type { %struct.acluser*, %struct.aclusergroup* }
%struct.layout = type { %struct.layout*, i8*, i32, %struct.canvas, %struct.canvas*, %struct.canvas*, i32 }
%struct.win = type { %struct.win*, i32, i8*, %struct.layer, %struct.layer*, i32, %struct.pseudowin*, %struct.display*, %struct.display*, i32, %struct.event, %struct.event, %struct.event, %struct.event, i32, i32, [4096 x i8], i32, [4096 x i8], i32, i32, i8*, i8*, [768 x i8], i32, %struct.win*, i32, [64 x i32], i32, i32, %struct.acluser*, [3 x i8*], i8*, i8*, i32, i32, %struct.mline*, %struct.mchar, i8, i8, i8, i32, i32, [4 x i32], i32, %struct.cursor, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i8*, i32, i32, i32, i32, i32, [768 x i8], i8*, i8*, i32, i32, %struct.logfile*, i32, i32, i32, i32, i8, i8, i32, i32, i32, i32, %struct.mline*, %struct.paster, i32, i32, [64 x i8*], i8*, i8*, i32, i8*, %struct.utmp, [768 x i8], i32, %struct.display*, %struct.anon.2, %struct.event, i32 }
%struct.pseudowin = type { i32, i32, i32, %struct.event, %struct.event, [768 x i8], [768 x i8], [4096 x i8], i32 }
%struct.cursor = type { i32, i32, i32, %struct.mchar, i32, i32, [4 x i32] }
%struct.logfile = type opaque
%struct.mline = type { i8*, i8*, i8*, i8*, i8* }
%struct.paster = type { i8*, i8*, i32, %struct.layer*, %struct.event }
%struct.anon.2 = type { i32, %struct.mline*, i32, i32, i32, %struct.mline*, i32, %struct.cursor }
%struct.mchar = type { i8, i8, i8, i8, i8, i8 }
%struct.timeval = type { i64, i64 }
%struct.action = type { i32, i8**, i32*, i32 }
%struct.mode = type { %struct.termios }
%struct.termios = type { i32, i32, i32, i32, i8, [32 x i8], i32, i32 }
%union.tcu = type { i8* }
%struct.utmp = type { i16, i32, [32 x i8], [4 x i8], [32 x i8], [256 x i8], %struct.exit_status, i32, %struct.anon.1, [4 x i32], [20 x i8] }
%struct.exit_status = type { i16, i16 }
%struct.anon.1 = type { i32, i32 }
%struct.viewport = type { %struct.viewport*, %struct.canvas*, i32, i32, i32, i32, i32, i32 }
%struct.event = type { %struct.event*, void (%struct.event*, i8*)*, i8*, i32, i32, i32, %struct.timeval, i32, i32, i32*, i32* }
%struct.LayFuncs = type { void (i8**, i32*)*, void ()*, void (i32, i32, i32, i32)*, void (i32, i32, i32, i32)*, i32 (i32, i32, i32, %struct.mchar*, i32)*, i32 (i32, i32)*, void ()*, void (i8*)* }
%struct.anon = type { [3 x i8], i32, i32 }
%struct.anon.0 = type { i8, i32*, i32*, i32, i32, i32 }
%struct.sigaction = type { %union.anon, %struct.__sigset_t, i32, void ()* }
%union.anon = type { void (i32)* }
%struct.__sigset_t = type { [16 x i64] }
%struct.fd_set = type { [16 x i64] }

@.str = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@strnomem = external global [0 x i8], align 1
@flayer = external global %struct.layer*, align 8
@mchar_blank = external global %struct.mchar, align 1
@.str.1 = private unnamed_addr constant [6 x i8] c"/dev/\00", align 1
@.str.2 = private unnamed_addr constant [9 x i8] c"setreuid\00", align 1
@.str.3 = private unnamed_addr constant [9 x i8] c"setregid\00", align 1
@blank = external global i8*, align 8
@real_uid = external global i32, align 4
@real_gid = external global i32, align 4
@eff_uid = external global i32, align 4
@eff_gid = external global i32, align 4
@UserSTAT = internal global i32 0, align 4
@_delay.osp2pad = internal global [18 x i16] [i16 0, i16 2000, i16 1333, i16 909, i16 743, i16 666, i16 500, i16 333, i16 166, i16 83, i16 55, i16 41, i16 20, i16 10, i16 5, i16 2, i16 1, i16 1], align 16
@ospeed = external global i16, align 2

; Function Attrs: nounwind uwtable
define i8* @SaveStr(i8* %str) #0 {
entry:
  %str.addr = alloca i8*, align 8
  %cp = alloca i8*, align 8
  store i8* %str, i8** %str.addr, align 8
  %0 = load i8*, i8** %str.addr, align 8
  %call = call i64 @strlen(i8* %0) #7
  %add = add i64 %call, 1
  %call1 = call noalias i8* @malloc(i64 %add) #5
  store i8* %call1, i8** %cp, align 8
  %cmp = icmp eq i8* %call1, null
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  call void (i32, i8*, ...) @Panic(i32 0, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([0 x i8], [0 x i8]* @strnomem, i32 0, i32 0)) #8
  unreachable

if.else:                                          ; preds = %entry
  %1 = load i8*, i8** %cp, align 8
  %2 = load i8*, i8** %str.addr, align 8
  %call2 = call i8* @strcpy(i8* %1, i8* %2) #5
  br label %if.end

if.end:                                           ; preds = %if.else
  %3 = load i8*, i8** %cp, align 8
  ret i8* %3
}

; Function Attrs: nounwind
declare noalias i8* @malloc(i64) #1

; Function Attrs: nounwind readonly
declare i64 @strlen(i8*) #2

; Function Attrs: noreturn
declare void @Panic(i32, i8*, ...) #3

; Function Attrs: nounwind
declare i8* @strcpy(i8*, i8*) #1

; Function Attrs: nounwind uwtable
define i8* @SaveStrn(i8* %str, i32 %n) #0 {
entry:
  %str.addr = alloca i8*, align 8
  %n.addr = alloca i32, align 4
  %cp = alloca i8*, align 8
  store i8* %str, i8** %str.addr, align 8
  store i32 %n, i32* %n.addr, align 4
  %0 = load i32, i32* %n.addr, align 4
  %add = add nsw i32 %0, 1
  %conv = sext i32 %add to i64
  %call = call noalias i8* @malloc(i64 %conv) #5
  store i8* %call, i8** %cp, align 8
  %cmp = icmp eq i8* %call, null
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  call void (i32, i8*, ...) @Panic(i32 0, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([0 x i8], [0 x i8]* @strnomem, i32 0, i32 0)) #8
  unreachable

if.else:                                          ; preds = %entry
  %1 = load i8*, i8** %str.addr, align 8
  %2 = load i8*, i8** %cp, align 8
  %3 = load i32, i32* %n.addr, align 4
  %conv2 = sext i32 %3 to i64
  call void @bcopy(i8* %1, i8* %2, i64 %conv2) #5
  %4 = load i32, i32* %n.addr, align 4
  %idxprom = sext i32 %4 to i64
  %5 = load i8*, i8** %cp, align 8
  %arrayidx = getelementptr inbounds i8, i8* %5, i64 %idxprom
  store i8 0, i8* %arrayidx, align 1
  br label %if.end

if.end:                                           ; preds = %if.else
  %6 = load i8*, i8** %cp, align 8
  ret i8* %6
}

; Function Attrs: nounwind
declare void @bcopy(i8*, i8*, i64) #1

; Function Attrs: nounwind uwtable
define i8* @InStr(i8* %str, i8* %pat) #0 {
entry:
  %retval = alloca i8*, align 8
  %str.addr = alloca i8*, align 8
  %pat.addr = alloca i8*, align 8
  %npat = alloca i32, align 4
  store i8* %str, i8** %str.addr, align 8
  store i8* %pat, i8** %pat.addr, align 8
  %0 = load i8*, i8** %pat.addr, align 8
  %call = call i64 @strlen(i8* %0) #7
  %conv = trunc i64 %call to i32
  store i32 %conv, i32* %npat, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %1 = load i8*, i8** %str.addr, align 8
  %2 = load i8, i8* %1, align 1
  %tobool = icmp ne i8 %2, 0
  br i1 %tobool, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %3 = load i8*, i8** %str.addr, align 8
  %4 = load i8*, i8** %pat.addr, align 8
  %5 = load i32, i32* %npat, align 4
  %conv1 = sext i32 %5 to i64
  %call2 = call i32 @strncmp(i8* %3, i8* %4, i64 %conv1) #7
  %tobool3 = icmp ne i32 %call2, 0
  br i1 %tobool3, label %if.end, label %if.then

if.then:                                          ; preds = %for.body
  %6 = load i8*, i8** %str.addr, align 8
  store i8* %6, i8** %retval
  br label %return

if.end:                                           ; preds = %for.body
  br label %for.inc

for.inc:                                          ; preds = %if.end
  %7 = load i8*, i8** %str.addr, align 8
  %incdec.ptr = getelementptr inbounds i8, i8* %7, i32 1
  store i8* %incdec.ptr, i8** %str.addr, align 8
  br label %for.cond

for.end:                                          ; preds = %for.cond
  store i8* null, i8** %retval
  br label %return

return:                                           ; preds = %for.end, %if.then
  %8 = load i8*, i8** %retval
  ret i8* %8
}

; Function Attrs: nounwind readonly
declare i32 @strncmp(i8*, i8*, i64) #2

; Function Attrs: nounwind uwtable
define void @centerline(i8* %str, i32 %y) #0 {
entry:
  %str.addr = alloca i8*, align 8
  %y.addr = alloca i32, align 4
  %l = alloca i32, align 4
  %n = alloca i32, align 4
  store i8* %str, i8** %str.addr, align 8
  store i32 %y, i32* %y.addr, align 4
  br label %do.body

do.body:                                          ; preds = %entry
  br label %do.end

do.end:                                           ; preds = %do.body
  %0 = load i8*, i8** %str.addr, align 8
  %call = call i64 @strlen(i8* %0) #7
  %conv = trunc i64 %call to i32
  store i32 %conv, i32* %n, align 4
  %1 = load i32, i32* %n, align 4
  %2 = load %struct.layer*, %struct.layer** @flayer, align 8
  %l_width = getelementptr inbounds %struct.layer, %struct.layer* %2, i32 0, i32 1
  %3 = load i32, i32* %l_width, align 4
  %sub = sub nsw i32 %3, 1
  %cmp = icmp sgt i32 %1, %sub
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %do.end
  %4 = load %struct.layer*, %struct.layer** @flayer, align 8
  %l_width2 = getelementptr inbounds %struct.layer, %struct.layer* %4, i32 0, i32 1
  %5 = load i32, i32* %l_width2, align 4
  %sub3 = sub nsw i32 %5, 1
  store i32 %sub3, i32* %n, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %do.end
  %6 = load %struct.layer*, %struct.layer** @flayer, align 8
  %l_width4 = getelementptr inbounds %struct.layer, %struct.layer* %6, i32 0, i32 1
  %7 = load i32, i32* %l_width4, align 4
  %sub5 = sub nsw i32 %7, 1
  %8 = load i32, i32* %n, align 4
  %sub6 = sub nsw i32 %sub5, %8
  %div = sdiv i32 %sub6, 2
  store i32 %div, i32* %l, align 4
  %9 = load %struct.layer*, %struct.layer** @flayer, align 8
  %10 = load i8*, i8** %str.addr, align 8
  %11 = load i32, i32* %n, align 4
  %12 = load i32, i32* %l, align 4
  %13 = load i32, i32* %y.addr, align 4
  call void @LPutStr(%struct.layer* %9, i8* %10, i32 %11, %struct.mchar* @mchar_blank, i32 %12, i32 %13)
  ret void
}

declare void @LPutStr(%struct.layer*, i8*, i32, %struct.mchar*, i32, i32) #4

; Function Attrs: nounwind uwtable
define void @leftline(i8* %str, i32 %y, %struct.mchar* %rend) #0 {
entry:
  %str.addr = alloca i8*, align 8
  %y.addr = alloca i32, align 4
  %rend.addr = alloca %struct.mchar*, align 8
  %l = alloca i32, align 4
  %n = alloca i32, align 4
  %mchar_dol = alloca %struct.mchar, align 1
  store i8* %str, i8** %str.addr, align 8
  store i32 %y, i32* %y.addr, align 4
  store %struct.mchar* %rend, %struct.mchar** %rend.addr, align 8
  %0 = bitcast %struct.mchar* %mchar_dol to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %0, i8* getelementptr inbounds (%struct.mchar, %struct.mchar* @mchar_blank, i32 0, i32 0), i64 6, i32 1, i1 false)
  %image = getelementptr inbounds %struct.mchar, %struct.mchar* %mchar_dol, i32 0, i32 0
  store i8 36, i8* %image, align 1
  br label %do.body

do.body:                                          ; preds = %entry
  br label %do.end

do.end:                                           ; preds = %do.body
  %1 = load i8*, i8** %str.addr, align 8
  %call = call i64 @strlen(i8* %1) #7
  %conv = trunc i64 %call to i32
  store i32 %conv, i32* %n, align 4
  store i32 %conv, i32* %l, align 4
  %2 = load i32, i32* %n, align 4
  %3 = load %struct.layer*, %struct.layer** @flayer, align 8
  %l_width = getelementptr inbounds %struct.layer, %struct.layer* %3, i32 0, i32 1
  %4 = load i32, i32* %l_width, align 4
  %sub = sub nsw i32 %4, 1
  %cmp = icmp sgt i32 %2, %sub
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %do.end
  %5 = load %struct.layer*, %struct.layer** @flayer, align 8
  %l_width2 = getelementptr inbounds %struct.layer, %struct.layer* %5, i32 0, i32 1
  %6 = load i32, i32* %l_width2, align 4
  %sub3 = sub nsw i32 %6, 1
  store i32 %sub3, i32* %n, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %do.end
  %7 = load %struct.layer*, %struct.layer** @flayer, align 8
  %8 = load i8*, i8** %str.addr, align 8
  %9 = load i32, i32* %n, align 4
  %10 = load %struct.mchar*, %struct.mchar** %rend.addr, align 8
  %tobool = icmp ne %struct.mchar* %10, null
  br i1 %tobool, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.end
  %11 = load %struct.mchar*, %struct.mchar** %rend.addr, align 8
  br label %cond.end

cond.false:                                       ; preds = %if.end
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi %struct.mchar* [ %11, %cond.true ], [ @mchar_blank, %cond.false ]
  %12 = load i32, i32* %y.addr, align 4
  call void @LPutStr(%struct.layer* %7, i8* %8, i32 %9, %struct.mchar* %cond, i32 0, i32 %12)
  %13 = load i32, i32* %n, align 4
  %14 = load i32, i32* %l, align 4
  %cmp4 = icmp ne i32 %13, %14
  br i1 %cmp4, label %if.then.6, label %if.end.7

if.then.6:                                        ; preds = %cond.end
  %15 = load %struct.layer*, %struct.layer** @flayer, align 8
  %16 = load i32, i32* %n, align 4
  %17 = load i32, i32* %y.addr, align 4
  call void @LPutChar(%struct.layer* %15, %struct.mchar* %mchar_dol, i32 %16, i32 %17)
  br label %if.end.7

if.end.7:                                         ; preds = %if.then.6, %cond.end
  ret void
}

; Function Attrs: nounwind
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* nocapture, i8* nocapture readonly, i64, i32, i1) #5

declare void @LPutChar(%struct.layer*, %struct.mchar*, i32, i32) #4

; Function Attrs: nounwind uwtable
define i8* @Filename(i8* %s) #0 {
entry:
  %s.addr = alloca i8*, align 8
  %p = alloca i8*, align 8
  store i8* %s, i8** %s.addr, align 8
  %0 = load i8*, i8** %s.addr, align 8
  store i8* %0, i8** %p, align 8
  %1 = load i8*, i8** %p, align 8
  %tobool = icmp ne i8* %1, null
  br i1 %tobool, label %if.then, label %if.end.4

if.then:                                          ; preds = %entry
  br label %while.cond

while.cond:                                       ; preds = %if.end, %if.then
  %2 = load i8*, i8** %p, align 8
  %3 = load i8, i8* %2, align 1
  %tobool1 = icmp ne i8 %3, 0
  br i1 %tobool1, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %4 = load i8*, i8** %p, align 8
  %incdec.ptr = getelementptr inbounds i8, i8* %4, i32 1
  store i8* %incdec.ptr, i8** %p, align 8
  %5 = load i8, i8* %4, align 1
  %conv = sext i8 %5 to i32
  %cmp = icmp eq i32 %conv, 47
  br i1 %cmp, label %if.then.3, label %if.end

if.then.3:                                        ; preds = %while.body
  %6 = load i8*, i8** %p, align 8
  store i8* %6, i8** %s.addr, align 8
  br label %if.end

if.end:                                           ; preds = %if.then.3, %while.body
  br label %while.cond

while.end:                                        ; preds = %while.cond
  br label %if.end.4

if.end.4:                                         ; preds = %while.end, %entry
  %7 = load i8*, i8** %s.addr, align 8
  ret i8* %7
}

; Function Attrs: nounwind uwtable
define i8* @stripdev(i8* %nam) #0 {
entry:
  %retval = alloca i8*, align 8
  %nam.addr = alloca i8*, align 8
  store i8* %nam, i8** %nam.addr, align 8
  %0 = load i8*, i8** %nam.addr, align 8
  %cmp = icmp eq i8* %0, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store i8* null, i8** %retval
  br label %return

if.end:                                           ; preds = %entry
  %1 = load i8*, i8** %nam.addr, align 8
  %call = call i32 @strncmp(i8* %1, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1, i32 0, i32 0), i64 5) #7
  %cmp1 = icmp eq i32 %call, 0
  br i1 %cmp1, label %if.then.2, label %if.end.3

if.then.2:                                        ; preds = %if.end
  %2 = load i8*, i8** %nam.addr, align 8
  %add.ptr = getelementptr inbounds i8, i8* %2, i64 5
  store i8* %add.ptr, i8** %retval
  br label %return

if.end.3:                                         ; preds = %if.end
  %3 = load i8*, i8** %nam.addr, align 8
  store i8* %3, i8** %retval
  br label %return

return:                                           ; preds = %if.end.3, %if.then.2, %if.then
  %4 = load i8*, i8** %retval
  ret i8* %4
}

; Function Attrs: nounwind uwtable
define void (i32)* @xsignal(i32 %sig, void (i32)* %func) #0 {
entry:
  %retval = alloca void (i32)*, align 8
  %sig.addr = alloca i32, align 4
  %func.addr = alloca void (i32)*, align 8
  %osa = alloca %struct.sigaction, align 8
  %sa = alloca %struct.sigaction, align 8
  store i32 %sig, i32* %sig.addr, align 4
  store void (i32)* %func, void (i32)** %func.addr, align 8
  %0 = load void (i32)*, void (i32)** %func.addr, align 8
  %__sigaction_handler = getelementptr inbounds %struct.sigaction, %struct.sigaction* %sa, i32 0, i32 0
  %sa_handler = bitcast %union.anon* %__sigaction_handler to void (i32)**
  store void (i32)* %0, void (i32)** %sa_handler, align 8
  %sa_mask = getelementptr inbounds %struct.sigaction, %struct.sigaction* %sa, i32 0, i32 1
  %call = call i32 @sigemptyset(%struct.__sigset_t* %sa_mask) #5
  %1 = load i32, i32* %sig.addr, align 4
  %cmp = icmp eq i32 %1, 17
  %cond = select i1 %cmp, i32 268435456, i32 0
  %sa_flags = getelementptr inbounds %struct.sigaction, %struct.sigaction* %sa, i32 0, i32 2
  store i32 %cond, i32* %sa_flags, align 4
  %2 = load i32, i32* %sig.addr, align 4
  %call1 = call i32 @sigaction(i32 %2, %struct.sigaction* %sa, %struct.sigaction* %osa) #5
  %tobool = icmp ne i32 %call1, 0
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store void (i32)* inttoptr (i64 -1 to void (i32)*), void (i32)** %retval
  br label %return

if.end:                                           ; preds = %entry
  %__sigaction_handler2 = getelementptr inbounds %struct.sigaction, %struct.sigaction* %osa, i32 0, i32 0
  %sa_handler3 = bitcast %union.anon* %__sigaction_handler2 to void (i32)**
  %3 = load void (i32)*, void (i32)** %sa_handler3, align 8
  store void (i32)* %3, void (i32)** %retval
  br label %return

return:                                           ; preds = %if.end, %if.then
  %4 = load void (i32)*, void (i32)** %retval
  ret void (i32)* %4
}

; Function Attrs: nounwind
declare i32 @sigemptyset(%struct.__sigset_t*) #1

; Function Attrs: nounwind
declare i32 @sigaction(i32, %struct.sigaction*, %struct.sigaction*) #1

; Function Attrs: nounwind uwtable
define void @xseteuid(i32 %euid) #0 {
entry:
  %euid.addr = alloca i32, align 4
  %oeuid = alloca i32, align 4
  store i32 %euid, i32* %euid.addr, align 4
  %call = call i32 @geteuid() #5
  store i32 %call, i32* %oeuid, align 4
  %0 = load i32, i32* %oeuid, align 4
  %1 = load i32, i32* %euid.addr, align 4
  %cmp = icmp eq i32 %0, %1
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  br label %if.end.9

if.end:                                           ; preds = %entry
  %call1 = call i32 @getuid() #5
  %2 = load i32, i32* %euid.addr, align 4
  %cmp2 = icmp ne i32 %call1, %2
  br i1 %cmp2, label %if.then.3, label %if.end.5

if.then.3:                                        ; preds = %if.end
  %call4 = call i32 @getuid() #5
  store i32 %call4, i32* %oeuid, align 4
  br label %if.end.5

if.end.5:                                         ; preds = %if.then.3, %if.end
  %3 = load i32, i32* %oeuid, align 4
  %4 = load i32, i32* %euid.addr, align 4
  %call6 = call i32 @setreuid(i32 %3, i32 %4) #5
  %tobool = icmp ne i32 %call6, 0
  br i1 %tobool, label %if.then.7, label %if.end.9

if.then.7:                                        ; preds = %if.end.5
  %call8 = call i32* @__errno_location() #9
  %5 = load i32, i32* %call8, align 4
  call void (i32, i8*, ...) @Panic(i32 %5, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.2, i32 0, i32 0)) #8
  unreachable

if.end.9:                                         ; preds = %if.then, %if.end.5
  ret void
}

; Function Attrs: nounwind
declare i32 @geteuid() #1

; Function Attrs: nounwind
declare i32 @getuid() #1

; Function Attrs: nounwind
declare i32 @setreuid(i32, i32) #1

; Function Attrs: nounwind readnone
declare i32* @__errno_location() #6

; Function Attrs: nounwind uwtable
define void @xsetegid(i32 %egid) #0 {
entry:
  %egid.addr = alloca i32, align 4
  %oegid = alloca i32, align 4
  store i32 %egid, i32* %egid.addr, align 4
  %call = call i32 @getegid() #5
  store i32 %call, i32* %oegid, align 4
  %0 = load i32, i32* %oegid, align 4
  %1 = load i32, i32* %egid.addr, align 4
  %cmp = icmp eq i32 %0, %1
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  br label %if.end.9

if.end:                                           ; preds = %entry
  %call1 = call i32 @getgid() #5
  %2 = load i32, i32* %egid.addr, align 4
  %cmp2 = icmp ne i32 %call1, %2
  br i1 %cmp2, label %if.then.3, label %if.end.5

if.then.3:                                        ; preds = %if.end
  %call4 = call i32 @getgid() #5
  store i32 %call4, i32* %oegid, align 4
  br label %if.end.5

if.end.5:                                         ; preds = %if.then.3, %if.end
  %3 = load i32, i32* %oegid, align 4
  %4 = load i32, i32* %egid.addr, align 4
  %call6 = call i32 @setregid(i32 %3, i32 %4) #5
  %tobool = icmp ne i32 %call6, 0
  br i1 %tobool, label %if.then.7, label %if.end.9

if.then.7:                                        ; preds = %if.end.5
  %call8 = call i32* @__errno_location() #9
  %5 = load i32, i32* %call8, align 4
  call void (i32, i8*, ...) @Panic(i32 %5, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.3, i32 0, i32 0)) #8
  unreachable

if.end.9:                                         ; preds = %if.then, %if.end.5
  ret void
}

; Function Attrs: nounwind
declare i32 @getegid() #1

; Function Attrs: nounwind
declare i32 @getgid() #1

; Function Attrs: nounwind
declare i32 @setregid(i32, i32) #1

; Function Attrs: nounwind uwtable
define void @bclear(i8* %p, i32 %n) #0 {
entry:
  %p.addr = alloca i8*, align 8
  %n.addr = alloca i32, align 4
  store i8* %p, i8** %p.addr, align 8
  store i32 %n, i32* %n.addr, align 4
  %0 = load i8*, i8** @blank, align 8
  %1 = load i8*, i8** %p.addr, align 8
  %2 = load i32, i32* %n.addr, align 4
  %conv = sext i32 %2 to i64
  call void @bcopy(i8* %0, i8* %1, i64 %conv) #5
  ret void
}

; Function Attrs: nounwind uwtable
define void @Kill(i32 %pid, i32 %sig) #0 {
entry:
  %pid.addr = alloca i32, align 4
  %sig.addr = alloca i32, align 4
  store i32 %pid, i32* %pid.addr, align 4
  store i32 %sig, i32* %sig.addr, align 4
  %0 = load i32, i32* %pid.addr, align 4
  %cmp = icmp slt i32 %0, 2
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  br label %return

if.end:                                           ; preds = %entry
  %1 = load i32, i32* %pid.addr, align 4
  %2 = load i32, i32* %sig.addr, align 4
  %call = call i32 @kill(i32 %1, i32 %2) #5
  br label %return

return:                                           ; preds = %if.end, %if.then
  ret void
}

; Function Attrs: nounwind
declare i32 @kill(i32, i32) #1

; Function Attrs: nounwind uwtable
define void @closeallfiles(i32 %except) #0 {
entry:
  %except.addr = alloca i32, align 4
  %f = alloca i32, align 4
  store i32 %except, i32* %except.addr, align 4
  %call = call i32 @getdtablesize() #5
  store i32 %call, i32* %f, align 4
  br label %while.cond

while.cond:                                       ; preds = %if.end, %entry
  %0 = load i32, i32* %f, align 4
  %dec = add nsw i32 %0, -1
  store i32 %dec, i32* %f, align 4
  %cmp = icmp sgt i32 %dec, 2
  br i1 %cmp, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %1 = load i32, i32* %f, align 4
  %2 = load i32, i32* %except.addr, align 4
  %cmp1 = icmp ne i32 %1, %2
  br i1 %cmp1, label %if.then, label %if.end

if.then:                                          ; preds = %while.body
  %3 = load i32, i32* %f, align 4
  %call2 = call i32 @close(i32 %3)
  br label %if.end

if.end:                                           ; preds = %if.then, %while.body
  br label %while.cond

while.end:                                        ; preds = %while.cond
  ret void
}

; Function Attrs: nounwind
declare i32 @getdtablesize() #1

declare i32 @close(i32) #4

; Function Attrs: nounwind uwtable
define i32 @UserContext() #0 {
entry:
  %0 = load i32, i32* @real_uid, align 4
  call void @xseteuid(i32 %0)
  %1 = load i32, i32* @real_gid, align 4
  call void @xsetegid(i32 %1)
  ret i32 1
}

; Function Attrs: nounwind uwtable
define void @UserReturn(i32 %val) #0 {
entry:
  %val.addr = alloca i32, align 4
  store i32 %val, i32* %val.addr, align 4
  %0 = load i32, i32* @eff_uid, align 4
  call void @xseteuid(i32 %0)
  %1 = load i32, i32* @eff_gid, align 4
  call void @xsetegid(i32 %1)
  %2 = load i32, i32* %val.addr, align 4
  store i32 %2, i32* @UserSTAT, align 4
  ret void
}

; Function Attrs: nounwind uwtable
define i32 @UserStatus() #0 {
entry:
  %0 = load i32, i32* @UserSTAT, align 4
  ret i32 %0
}

; Function Attrs: nounwind uwtable
define i32 @AddXChar(i8* %buf, i32 %ch) #0 {
entry:
  %buf.addr = alloca i8*, align 8
  %ch.addr = alloca i32, align 4
  %p = alloca i8*, align 8
  store i8* %buf, i8** %buf.addr, align 8
  store i32 %ch, i32* %ch.addr, align 4
  %0 = load i8*, i8** %buf.addr, align 8
  store i8* %0, i8** %p, align 8
  %1 = load i32, i32* %ch.addr, align 4
  %cmp = icmp slt i32 %1, 32
  br i1 %cmp, label %if.then, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %entry
  %2 = load i32, i32* %ch.addr, align 4
  %cmp1 = icmp eq i32 %2, 127
  br i1 %cmp1, label %if.then, label %if.else

if.then:                                          ; preds = %lor.lhs.false, %entry
  %3 = load i8*, i8** %p, align 8
  %incdec.ptr = getelementptr inbounds i8, i8* %3, i32 1
  store i8* %incdec.ptr, i8** %p, align 8
  store i8 94, i8* %3, align 1
  %4 = load i32, i32* %ch.addr, align 4
  %xor = xor i32 %4, 64
  %conv = trunc i32 %xor to i8
  %5 = load i8*, i8** %p, align 8
  %incdec.ptr2 = getelementptr inbounds i8, i8* %5, i32 1
  store i8* %incdec.ptr2, i8** %p, align 8
  store i8 %conv, i8* %5, align 1
  br label %if.end.22

if.else:                                          ; preds = %lor.lhs.false
  %6 = load i32, i32* %ch.addr, align 4
  %cmp3 = icmp sge i32 %6, 128
  br i1 %cmp3, label %if.then.5, label %if.else.19

if.then.5:                                        ; preds = %if.else
  %7 = load i8*, i8** %p, align 8
  %incdec.ptr6 = getelementptr inbounds i8, i8* %7, i32 1
  store i8* %incdec.ptr6, i8** %p, align 8
  store i8 92, i8* %7, align 1
  %8 = load i32, i32* %ch.addr, align 4
  %shr = ashr i32 %8, 6
  %and = and i32 %shr, 7
  %add = add nsw i32 %and, 48
  %conv7 = trunc i32 %add to i8
  %9 = load i8*, i8** %p, align 8
  %incdec.ptr8 = getelementptr inbounds i8, i8* %9, i32 1
  store i8* %incdec.ptr8, i8** %p, align 8
  store i8 %conv7, i8* %9, align 1
  %10 = load i32, i32* %ch.addr, align 4
  %shr9 = ashr i32 %10, 3
  %and10 = and i32 %shr9, 7
  %add11 = add nsw i32 %and10, 48
  %conv12 = trunc i32 %add11 to i8
  %11 = load i8*, i8** %p, align 8
  %incdec.ptr13 = getelementptr inbounds i8, i8* %11, i32 1
  store i8* %incdec.ptr13, i8** %p, align 8
  store i8 %conv12, i8* %11, align 1
  %12 = load i32, i32* %ch.addr, align 4
  %shr14 = ashr i32 %12, 0
  %and15 = and i32 %shr14, 7
  %add16 = add nsw i32 %and15, 48
  %conv17 = trunc i32 %add16 to i8
  %13 = load i8*, i8** %p, align 8
  %incdec.ptr18 = getelementptr inbounds i8, i8* %13, i32 1
  store i8* %incdec.ptr18, i8** %p, align 8
  store i8 %conv17, i8* %13, align 1
  br label %if.end

if.else.19:                                       ; preds = %if.else
  %14 = load i32, i32* %ch.addr, align 4
  %conv20 = trunc i32 %14 to i8
  %15 = load i8*, i8** %p, align 8
  %incdec.ptr21 = getelementptr inbounds i8, i8* %15, i32 1
  store i8* %incdec.ptr21, i8** %p, align 8
  store i8 %conv20, i8* %15, align 1
  br label %if.end

if.end:                                           ; preds = %if.else.19, %if.then.5
  br label %if.end.22

if.end.22:                                        ; preds = %if.end, %if.then
  %16 = load i8*, i8** %p, align 8
  %17 = load i8*, i8** %buf.addr, align 8
  %sub.ptr.lhs.cast = ptrtoint i8* %16 to i64
  %sub.ptr.rhs.cast = ptrtoint i8* %17 to i64
  %sub.ptr.sub = sub i64 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast
  %conv23 = trunc i64 %sub.ptr.sub to i32
  ret i32 %conv23
}

; Function Attrs: nounwind uwtable
define i32 @AddXChars(i8* %buf, i32 %len, i8* %str) #0 {
entry:
  %retval = alloca i32, align 4
  %buf.addr = alloca i8*, align 8
  %len.addr = alloca i32, align 4
  %str.addr = alloca i8*, align 8
  %p = alloca i8*, align 8
  store i8* %buf, i8** %buf.addr, align 8
  store i32 %len, i32* %len.addr, align 4
  store i8* %str, i8** %str.addr, align 8
  %0 = load i8*, i8** %str.addr, align 8
  %cmp = icmp eq i8* %0, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %1 = load i8*, i8** %buf.addr, align 8
  store i8 0, i8* %1, align 1
  store i32 0, i32* %retval
  br label %return

if.end:                                           ; preds = %entry
  %2 = load i32, i32* %len.addr, align 4
  %sub = sub nsw i32 %2, 4
  store i32 %sub, i32* %len.addr, align 4
  %3 = load i8*, i8** %buf.addr, align 8
  store i8* %3, i8** %p, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end
  %4 = load i8*, i8** %p, align 8
  %5 = load i8*, i8** %buf.addr, align 8
  %6 = load i32, i32* %len.addr, align 4
  %idx.ext = sext i32 %6 to i64
  %add.ptr = getelementptr inbounds i8, i8* %5, i64 %idx.ext
  %cmp1 = icmp ult i8* %4, %add.ptr
  br i1 %cmp1, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %for.cond
  %7 = load i8*, i8** %str.addr, align 8
  %8 = load i8, i8* %7, align 1
  %conv = sext i8 %8 to i32
  %tobool = icmp ne i32 %conv, 0
  br label %land.end

land.end:                                         ; preds = %land.rhs, %for.cond
  %9 = phi i1 [ false, %for.cond ], [ %tobool, %land.rhs ]
  br i1 %9, label %for.body, label %for.end

for.body:                                         ; preds = %land.end
  %10 = load i8*, i8** %str.addr, align 8
  %11 = load i8, i8* %10, align 1
  %conv2 = sext i8 %11 to i32
  %cmp3 = icmp eq i32 %conv2, 32
  br i1 %cmp3, label %if.then.5, label %if.else

if.then.5:                                        ; preds = %for.body
  %12 = load i8*, i8** %str.addr, align 8
  %13 = load i8, i8* %12, align 1
  %14 = load i8*, i8** %p, align 8
  %incdec.ptr = getelementptr inbounds i8, i8* %14, i32 1
  store i8* %incdec.ptr, i8** %p, align 8
  store i8 %13, i8* %14, align 1
  br label %if.end.9

if.else:                                          ; preds = %for.body
  %15 = load i8*, i8** %p, align 8
  %16 = load i8*, i8** %str.addr, align 8
  %17 = load i8, i8* %16, align 1
  %conv6 = sext i8 %17 to i32
  %call = call i32 @AddXChar(i8* %15, i32 %conv6)
  %18 = load i8*, i8** %p, align 8
  %idx.ext7 = sext i32 %call to i64
  %add.ptr8 = getelementptr inbounds i8, i8* %18, i64 %idx.ext7
  store i8* %add.ptr8, i8** %p, align 8
  br label %if.end.9

if.end.9:                                         ; preds = %if.else, %if.then.5
  br label %for.inc

for.inc:                                          ; preds = %if.end.9
  %19 = load i8*, i8** %str.addr, align 8
  %incdec.ptr10 = getelementptr inbounds i8, i8* %19, i32 1
  store i8* %incdec.ptr10, i8** %str.addr, align 8
  br label %for.cond

for.end:                                          ; preds = %land.end
  %20 = load i8*, i8** %p, align 8
  store i8 0, i8* %20, align 1
  %21 = load i8*, i8** %p, align 8
  %22 = load i8*, i8** %buf.addr, align 8
  %sub.ptr.lhs.cast = ptrtoint i8* %21 to i64
  %sub.ptr.rhs.cast = ptrtoint i8* %22 to i64
  %sub.ptr.sub = sub i64 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast
  %conv11 = trunc i64 %sub.ptr.sub to i32
  store i32 %conv11, i32* %retval
  br label %return

return:                                           ; preds = %for.end, %if.then
  %23 = load i32, i32* %retval
  ret i32 %23
}

; Function Attrs: nounwind uwtable
define void @sleep1000(i32 %msec) #0 {
entry:
  %msec.addr = alloca i32, align 4
  %t = alloca %struct.timeval, align 8
  store i32 %msec, i32* %msec.addr, align 4
  %0 = load i32, i32* %msec.addr, align 4
  %div = sdiv i32 %0, 1000
  %conv = sext i32 %div to i64
  %tv_sec = getelementptr inbounds %struct.timeval, %struct.timeval* %t, i32 0, i32 0
  store i64 %conv, i64* %tv_sec, align 8
  %1 = load i32, i32* %msec.addr, align 4
  %rem = srem i32 %1, 1000
  %mul = mul nsw i32 %rem, 1000
  %conv1 = sext i32 %mul to i64
  %tv_usec = getelementptr inbounds %struct.timeval, %struct.timeval* %t, i32 0, i32 1
  store i64 %conv1, i64* %tv_usec, align 8
  %call = call i32 @select(i32 0, %struct.fd_set* null, %struct.fd_set* null, %struct.fd_set* null, %struct.timeval* %t)
  ret void
}

declare i32 @select(i32, %struct.fd_set*, %struct.fd_set*, %struct.fd_set*, %struct.timeval*) #4

; Function Attrs: nounwind uwtable
define void @xsetenv(i8* %var, i8* %value) #0 {
entry:
  %var.addr = alloca i8*, align 8
  %value.addr = alloca i8*, align 8
  store i8* %var, i8** %var.addr, align 8
  store i8* %value, i8** %value.addr, align 8
  %0 = load i8*, i8** %var.addr, align 8
  %1 = load i8*, i8** %value.addr, align 8
  %call = call i32 @setenv(i8* %0, i8* %1, i32 1) #5
  ret void
}

; Function Attrs: nounwind
declare i32 @setenv(i8*, i8*, i32) #1

; Function Attrs: nounwind uwtable
define i32 @_delay(i32 %delay, i32 (i32)* %outc) #0 {
entry:
  %retval = alloca i32, align 4
  %delay.addr = alloca i32, align 4
  %outc.addr = alloca i32 (i32)*, align 8
  %pad = alloca i32, align 4
  store i32 %delay, i32* %delay.addr, align 4
  store i32 (i32)* %outc, i32 (i32)** %outc.addr, align 8
  %0 = load i16, i16* @ospeed, align 2
  %conv = sext i16 %0 to i32
  %cmp = icmp sle i32 %conv, 0
  br i1 %cmp, label %if.then, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %entry
  %1 = load i16, i16* @ospeed, align 2
  %conv2 = sext i16 %1 to i32
  %cmp3 = icmp sge i32 %conv2, 18
  br i1 %cmp3, label %if.then, label %if.end

if.then:                                          ; preds = %lor.lhs.false, %entry
  store i32 0, i32* %retval
  br label %return

if.end:                                           ; preds = %lor.lhs.false
  %2 = load i16, i16* @ospeed, align 2
  %idxprom = sext i16 %2 to i64
  %arrayidx = getelementptr inbounds [18 x i16], [18 x i16]* @_delay.osp2pad, i32 0, i64 %idxprom
  %3 = load i16, i16* %arrayidx, align 2
  %conv5 = sext i16 %3 to i32
  store i32 %conv5, i32* %pad, align 4
  %4 = load i32, i32* %delay.addr, align 4
  %5 = load i32, i32* %pad, align 4
  %div = sdiv i32 %5, 2
  %add = add nsw i32 %4, %div
  %6 = load i32, i32* %pad, align 4
  %div6 = sdiv i32 %add, %6
  store i32 %div6, i32* %delay.addr, align 4
  br label %while.cond

while.cond:                                       ; preds = %while.body, %if.end
  %7 = load i32, i32* %delay.addr, align 4
  %dec = add nsw i32 %7, -1
  store i32 %dec, i32* %delay.addr, align 4
  %cmp7 = icmp sgt i32 %7, 0
  br i1 %cmp7, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %8 = load i32 (i32)*, i32 (i32)** %outc.addr, align 8
  %call = call i32 %8(i32 0)
  br label %while.cond

while.end:                                        ; preds = %while.cond
  store i32 0, i32* %retval
  br label %return

return:                                           ; preds = %while.end, %if.then
  %9 = load i32, i32* %retval
  ret i32 %9
}

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind readonly "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { noreturn "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #5 = { nounwind }
attributes #6 = { nounwind readnone "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #7 = { nounwind readonly }
attributes #8 = { noreturn }
attributes #9 = { nounwind readnone }

!llvm.ident = !{!0}

!0 = !{!"clang version 3.7.0 (tags/RELEASE_370/final)"}
