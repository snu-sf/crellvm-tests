; ModuleID = './input.bc'
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
%struct.inpline = type { [769 x i8], i32, i32, %struct.inpline*, %struct.inpline* }
%struct.inpdata = type { %struct.inpline, i32, i8*, i32, i32, void (i8*, i32, i8*)*, i8*, i32, i8* }

@flayer = external global %struct.layer*, align 8
@.str = private unnamed_addr constant [25 x i8] c"Width %d chars too small\00", align 1
@InpLf = internal global %struct.LayFuncs { void (i8**, i32*)* @InpProcess, void ()* @InpAbort, void (i32, i32, i32, i32)* @InpRedisplayLine, void (i32, i32, i32, i32)* @DefClearLine, i32 (i32, i32, i32, %struct.mchar*, i32)* @DefRewrite, i32 (i32, i32)* @DefResize, void ()* @DefRestore, void (i8*)* null }, align 8
@inphist = internal global %struct.inpline zeroinitializer, align 8
@display = external global %struct.display*, align 8
@mchar_so = external global %struct.mchar, align 1
@mchar_blank = external global %struct.mchar, align 1

; Function Attrs: nounwind uwtable
define void @inp_setprompt(i8* %p, i8* %s) #0 {
entry:
  %p.addr = alloca i8*, align 8
  %s.addr = alloca i8*, align 8
  %inpdata = alloca %struct.inpdata*, align 8
  store i8* %p, i8** %p.addr, align 8
  store i8* %s, i8** %s.addr, align 8
  %0 = load %struct.layer*, %struct.layer** @flayer, align 8
  %l_data = getelementptr inbounds %struct.layer, %struct.layer* %0, i32 0, i32 7
  %1 = load i8*, i8** %l_data, align 8
  %2 = bitcast i8* %1 to %struct.inpdata*
  store %struct.inpdata* %2, %struct.inpdata** %inpdata, align 8
  %3 = load i8*, i8** %p.addr, align 8
  %tobool = icmp ne i8* %3, null
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %4 = load i8*, i8** %p.addr, align 8
  %call = call i64 @strlen(i8* %4) #6
  %conv = trunc i64 %call to i32
  %5 = load %struct.inpdata*, %struct.inpdata** %inpdata, align 8
  %inpstringlen = getelementptr inbounds %struct.inpdata, %struct.inpdata* %5, i32 0, i32 3
  store i32 %conv, i32* %inpstringlen, align 4
  %6 = load i8*, i8** %p.addr, align 8
  %7 = load %struct.inpdata*, %struct.inpdata** %inpdata, align 8
  %inpstring = getelementptr inbounds %struct.inpdata, %struct.inpdata* %7, i32 0, i32 2
  store i8* %6, i8** %inpstring, align 8
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %8 = load i8*, i8** %s.addr, align 8
  %tobool1 = icmp ne i8* %8, null
  br i1 %tobool1, label %if.then.2, label %if.end.19

if.then.2:                                        ; preds = %if.end
  %9 = load i8*, i8** %s.addr, align 8
  %10 = load %struct.inpdata*, %struct.inpdata** %inpdata, align 8
  %inp = getelementptr inbounds %struct.inpdata, %struct.inpdata* %10, i32 0, i32 0
  %buf = getelementptr inbounds %struct.inpline, %struct.inpline* %inp, i32 0, i32 0
  %arraydecay = getelementptr inbounds [769 x i8], [769 x i8]* %buf, i32 0, i32 0
  %cmp = icmp ne i8* %9, %arraydecay
  br i1 %cmp, label %if.then.4, label %if.end.9

if.then.4:                                        ; preds = %if.then.2
  %11 = load %struct.inpdata*, %struct.inpdata** %inpdata, align 8
  %inp5 = getelementptr inbounds %struct.inpdata, %struct.inpdata* %11, i32 0, i32 0
  %buf6 = getelementptr inbounds %struct.inpline, %struct.inpline* %inp5, i32 0, i32 0
  %arraydecay7 = getelementptr inbounds [769 x i8], [769 x i8]* %buf6, i32 0, i32 0
  %12 = load i8*, i8** %s.addr, align 8
  %call8 = call i8* @strncpy(i8* %arraydecay7, i8* %12, i64 768) #4
  br label %if.end.9

if.end.9:                                         ; preds = %if.then.4, %if.then.2
  %13 = load %struct.inpdata*, %struct.inpdata** %inpdata, align 8
  %inp10 = getelementptr inbounds %struct.inpdata, %struct.inpdata* %13, i32 0, i32 0
  %buf11 = getelementptr inbounds %struct.inpline, %struct.inpline* %inp10, i32 0, i32 0
  %arrayidx = getelementptr inbounds [769 x i8], [769 x i8]* %buf11, i32 0, i64 768
  store i8 0, i8* %arrayidx, align 1
  %14 = load %struct.inpdata*, %struct.inpdata** %inpdata, align 8
  %inp12 = getelementptr inbounds %struct.inpdata, %struct.inpdata* %14, i32 0, i32 0
  %buf13 = getelementptr inbounds %struct.inpline, %struct.inpline* %inp12, i32 0, i32 0
  %arraydecay14 = getelementptr inbounds [769 x i8], [769 x i8]* %buf13, i32 0, i32 0
  %call15 = call i64 @strlen(i8* %arraydecay14) #6
  %conv16 = trunc i64 %call15 to i32
  %15 = load %struct.inpdata*, %struct.inpdata** %inpdata, align 8
  %inp17 = getelementptr inbounds %struct.inpdata, %struct.inpdata* %15, i32 0, i32 0
  %len = getelementptr inbounds %struct.inpline, %struct.inpline* %inp17, i32 0, i32 1
  store i32 %conv16, i32* %len, align 4
  %16 = load %struct.inpdata*, %struct.inpdata** %inpdata, align 8
  %inp18 = getelementptr inbounds %struct.inpdata, %struct.inpdata* %16, i32 0, i32 0
  %pos = getelementptr inbounds %struct.inpline, %struct.inpline* %inp18, i32 0, i32 2
  store i32 %conv16, i32* %pos, align 4
  br label %if.end.19

if.end.19:                                        ; preds = %if.end.9, %if.end
  %17 = load %struct.layer*, %struct.layer** @flayer, align 8
  %l_height = getelementptr inbounds %struct.layer, %struct.layer* %17, i32 0, i32 2
  %18 = load i32, i32* %l_height, align 4
  %sub = sub nsw i32 %18, 1
  %19 = load %struct.layer*, %struct.layer** @flayer, align 8
  %l_width = getelementptr inbounds %struct.layer, %struct.layer* %19, i32 0, i32 1
  %20 = load i32, i32* %l_width, align 4
  %sub20 = sub nsw i32 %20, 1
  call void @InpRedisplayLine(i32 %sub, i32 0, i32 %sub20, i32 0)
  %21 = load %struct.inpdata*, %struct.inpdata** %inpdata, align 8
  %inpstringlen21 = getelementptr inbounds %struct.inpdata, %struct.inpdata* %21, i32 0, i32 3
  %22 = load i32, i32* %inpstringlen21, align 4
  %23 = load %struct.inpdata*, %struct.inpdata** %inpdata, align 8
  %inpmode = getelementptr inbounds %struct.inpdata, %struct.inpdata* %23, i32 0, i32 4
  %24 = load i32, i32* %inpmode, align 4
  %and = and i32 %24, 1
  %tobool22 = icmp ne i32 %and, 0
  br i1 %tobool22, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.end.19
  br label %cond.end

cond.false:                                       ; preds = %if.end.19
  %25 = load %struct.inpdata*, %struct.inpdata** %inpdata, align 8
  %inp23 = getelementptr inbounds %struct.inpdata, %struct.inpdata* %25, i32 0, i32 0
  %pos24 = getelementptr inbounds %struct.inpline, %struct.inpline* %inp23, i32 0, i32 2
  %26 = load i32, i32* %pos24, align 4
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ 0, %cond.true ], [ %26, %cond.false ]
  %add = add nsw i32 %22, %cond
  %27 = load %struct.layer*, %struct.layer** @flayer, align 8
  %l_x = getelementptr inbounds %struct.layer, %struct.layer* %27, i32 0, i32 3
  store i32 %add, i32* %l_x, align 4
  %28 = load %struct.layer*, %struct.layer** @flayer, align 8
  %l_height25 = getelementptr inbounds %struct.layer, %struct.layer* %28, i32 0, i32 2
  %29 = load i32, i32* %l_height25, align 4
  %sub26 = sub nsw i32 %29, 1
  %30 = load %struct.layer*, %struct.layer** @flayer, align 8
  %l_y = getelementptr inbounds %struct.layer, %struct.layer* %30, i32 0, i32 4
  store i32 %sub26, i32* %l_y, align 4
  ret void
}

; Function Attrs: nounwind readonly
declare i64 @strlen(i8*) #1

; Function Attrs: nounwind
declare i8* @strncpy(i8*, i8*, i64) #2

; Function Attrs: nounwind uwtable
define internal void @InpRedisplayLine(i32 %y, i32 %xs, i32 %xe, i32 %isblank) #0 {
entry:
  %y.addr = alloca i32, align 4
  %xs.addr = alloca i32, align 4
  %xe.addr = alloca i32, align 4
  %isblank.addr = alloca i32, align 4
  %q = alloca i32, align 4
  %r = alloca i32, align 4
  %s = alloca i32, align 4
  %l = alloca i32, align 4
  %v = alloca i32, align 4
  %inpdata = alloca %struct.inpdata*, align 8
  %oldlay = alloca %struct.layer*, align 8
  %oldcvlist = alloca %struct.canvas*, align 8
  %cv = alloca %struct.canvas*, align 8
  store i32 %y, i32* %y.addr, align 4
  store i32 %xs, i32* %xs.addr, align 4
  store i32 %xe, i32* %xe.addr, align 4
  store i32 %isblank, i32* %isblank.addr, align 4
  %0 = load %struct.layer*, %struct.layer** @flayer, align 8
  %l_data = getelementptr inbounds %struct.layer, %struct.layer* %0, i32 0, i32 7
  %1 = load i8*, i8** %l_data, align 8
  %2 = bitcast i8* %1 to %struct.inpdata*
  store %struct.inpdata* %2, %struct.inpdata** %inpdata, align 8
  %3 = load i32, i32* %y.addr, align 4
  %4 = load %struct.layer*, %struct.layer** @flayer, align 8
  %l_height = getelementptr inbounds %struct.layer, %struct.layer* %4, i32 0, i32 2
  %5 = load i32, i32* %l_height, align 4
  %sub = sub nsw i32 %5, 1
  %cmp = icmp ne i32 %3, %sub
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  br label %do.body

do.body:                                          ; preds = %if.then
  %6 = load %struct.layer*, %struct.layer** @flayer, align 8
  store %struct.layer* %6, %struct.layer** %oldlay, align 8
  br label %do.body.1

do.body.1:                                        ; preds = %do.body
  br label %do.end

do.end:                                           ; preds = %do.body.1
  %7 = load %struct.layer*, %struct.layer** @flayer, align 8
  %l_next = getelementptr inbounds %struct.layer, %struct.layer* %7, i32 0, i32 8
  %8 = load %struct.layer*, %struct.layer** %l_next, align 8
  store %struct.layer* %8, %struct.layer** @flayer, align 8
  %9 = load %struct.layer*, %struct.layer** @flayer, align 8
  %l_cvlist = getelementptr inbounds %struct.layer, %struct.layer* %9, i32 0, i32 0
  %10 = load %struct.canvas*, %struct.canvas** %l_cvlist, align 8
  store %struct.canvas* %10, %struct.canvas** %oldcvlist, align 8
  br label %do.body.2

do.body.2:                                        ; preds = %do.end
  br label %do.end.3

do.end.3:                                         ; preds = %do.body.2
  %11 = load %struct.layer*, %struct.layer** %oldlay, align 8
  %l_cvlist4 = getelementptr inbounds %struct.layer, %struct.layer* %11, i32 0, i32 0
  %12 = load %struct.canvas*, %struct.canvas** %l_cvlist4, align 8
  %13 = load %struct.layer*, %struct.layer** @flayer, align 8
  %l_cvlist5 = getelementptr inbounds %struct.layer, %struct.layer* %13, i32 0, i32 0
  store %struct.canvas* %12, %struct.canvas** %l_cvlist5, align 8
  %14 = load %struct.layer*, %struct.layer** @flayer, align 8
  %l_cvlist6 = getelementptr inbounds %struct.layer, %struct.layer* %14, i32 0, i32 0
  %15 = load %struct.canvas*, %struct.canvas** %l_cvlist6, align 8
  store %struct.canvas* %15, %struct.canvas** %cv, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %do.end.3
  %16 = load %struct.canvas*, %struct.canvas** %cv, align 8
  %tobool = icmp ne %struct.canvas* %16, null
  br i1 %tobool, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %17 = load %struct.layer*, %struct.layer** @flayer, align 8
  %18 = load %struct.canvas*, %struct.canvas** %cv, align 8
  %c_layer = getelementptr inbounds %struct.canvas, %struct.canvas* %18, i32 0, i32 9
  store %struct.layer* %17, %struct.layer** %c_layer, align 8
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %19 = load %struct.canvas*, %struct.canvas** %cv, align 8
  %c_lnext = getelementptr inbounds %struct.canvas, %struct.canvas* %19, i32 0, i32 10
  %20 = load %struct.canvas*, %struct.canvas** %c_lnext, align 8
  store %struct.canvas* %20, %struct.canvas** %cv, align 8
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %21 = load %struct.layer*, %struct.layer** @flayer, align 8
  %l_layfn = getelementptr inbounds %struct.layer, %struct.layer* %21, i32 0, i32 6
  %22 = load %struct.LayFuncs*, %struct.LayFuncs** %l_layfn, align 8
  %lf_LayRedisplayLine = getelementptr inbounds %struct.LayFuncs, %struct.LayFuncs* %22, i32 0, i32 2
  %23 = load void (i32, i32, i32, i32)*, void (i32, i32, i32, i32)** %lf_LayRedisplayLine, align 8
  %24 = load i32, i32* %y.addr, align 4
  %25 = load i32, i32* %xs.addr, align 4
  %26 = load i32, i32* %xe.addr, align 4
  %27 = load i32, i32* %isblank.addr, align 4
  call void %23(i32 %24, i32 %25, i32 %26, i32 %27)
  %28 = load %struct.layer*, %struct.layer** %oldlay, align 8
  store %struct.layer* %28, %struct.layer** @flayer, align 8
  %29 = load %struct.layer*, %struct.layer** @flayer, align 8
  %l_cvlist7 = getelementptr inbounds %struct.layer, %struct.layer* %29, i32 0, i32 0
  %30 = load %struct.canvas*, %struct.canvas** %l_cvlist7, align 8
  store %struct.canvas* %30, %struct.canvas** %cv, align 8
  br label %for.cond.8

for.cond.8:                                       ; preds = %for.inc.12, %for.end
  %31 = load %struct.canvas*, %struct.canvas** %cv, align 8
  %tobool9 = icmp ne %struct.canvas* %31, null
  br i1 %tobool9, label %for.body.10, label %for.end.14

for.body.10:                                      ; preds = %for.cond.8
  %32 = load %struct.layer*, %struct.layer** @flayer, align 8
  %33 = load %struct.canvas*, %struct.canvas** %cv, align 8
  %c_layer11 = getelementptr inbounds %struct.canvas, %struct.canvas* %33, i32 0, i32 9
  store %struct.layer* %32, %struct.layer** %c_layer11, align 8
  br label %for.inc.12

for.inc.12:                                       ; preds = %for.body.10
  %34 = load %struct.canvas*, %struct.canvas** %cv, align 8
  %c_lnext13 = getelementptr inbounds %struct.canvas, %struct.canvas* %34, i32 0, i32 10
  %35 = load %struct.canvas*, %struct.canvas** %c_lnext13, align 8
  store %struct.canvas* %35, %struct.canvas** %cv, align 8
  br label %for.cond.8

for.end.14:                                       ; preds = %for.cond.8
  %36 = load %struct.canvas*, %struct.canvas** %oldcvlist, align 8
  %37 = load %struct.layer*, %struct.layer** @flayer, align 8
  %l_next15 = getelementptr inbounds %struct.layer, %struct.layer* %37, i32 0, i32 8
  %38 = load %struct.layer*, %struct.layer** %l_next15, align 8
  %l_cvlist16 = getelementptr inbounds %struct.layer, %struct.layer* %38, i32 0, i32 0
  store %struct.canvas* %36, %struct.canvas** %l_cvlist16, align 8
  br label %do.end.17

do.end.17:                                        ; preds = %for.end.14
  br label %if.end.71

if.end:                                           ; preds = %entry
  %39 = load %struct.inpdata*, %struct.inpdata** %inpdata, align 8
  %inp = getelementptr inbounds %struct.inpdata, %struct.inpdata* %39, i32 0, i32 0
  %len = getelementptr inbounds %struct.inpline, %struct.inpline* %inp, i32 0, i32 1
  %40 = load i32, i32* %len, align 4
  %idxprom = sext i32 %40 to i64
  %41 = load %struct.inpdata*, %struct.inpdata** %inpdata, align 8
  %inp18 = getelementptr inbounds %struct.inpdata, %struct.inpdata* %41, i32 0, i32 0
  %buf = getelementptr inbounds %struct.inpline, %struct.inpline* %inp18, i32 0, i32 0
  %arrayidx = getelementptr inbounds [769 x i8], [769 x i8]* %buf, i32 0, i64 %idxprom
  store i8 0, i8* %arrayidx, align 1
  %42 = load i32, i32* %xs.addr, align 4
  store i32 %42, i32* %q, align 4
  %43 = load i32, i32* %xe.addr, align 4
  %44 = load i32, i32* %xs.addr, align 4
  %sub19 = sub nsw i32 %43, %44
  %add = add nsw i32 %sub19, 1
  store i32 %add, i32* %v, align 4
  store i32 0, i32* %s, align 4
  %45 = load %struct.inpdata*, %struct.inpdata** %inpdata, align 8
  %inpstringlen = getelementptr inbounds %struct.inpdata, %struct.inpdata* %45, i32 0, i32 3
  %46 = load i32, i32* %inpstringlen, align 4
  store i32 %46, i32* %r, align 4
  %47 = load i32, i32* %v, align 4
  %cmp20 = icmp sgt i32 %47, 0
  br i1 %cmp20, label %land.lhs.true, label %if.end.32

land.lhs.true:                                    ; preds = %if.end
  %48 = load i32, i32* %q, align 4
  %49 = load i32, i32* %r, align 4
  %cmp21 = icmp slt i32 %48, %49
  br i1 %cmp21, label %if.then.22, label %if.end.32

if.then.22:                                       ; preds = %land.lhs.true
  %50 = load i32, i32* %v, align 4
  store i32 %50, i32* %l, align 4
  %51 = load i32, i32* %l, align 4
  %52 = load i32, i32* %r, align 4
  %53 = load i32, i32* %q, align 4
  %sub23 = sub nsw i32 %52, %53
  %cmp24 = icmp sgt i32 %51, %sub23
  br i1 %cmp24, label %if.then.25, label %if.end.27

if.then.25:                                       ; preds = %if.then.22
  %54 = load i32, i32* %r, align 4
  %55 = load i32, i32* %q, align 4
  %sub26 = sub nsw i32 %54, %55
  store i32 %sub26, i32* %l, align 4
  br label %if.end.27

if.end.27:                                        ; preds = %if.then.25, %if.then.22
  %56 = load %struct.layer*, %struct.layer** @flayer, align 8
  %57 = load %struct.inpdata*, %struct.inpdata** %inpdata, align 8
  %inpstring = getelementptr inbounds %struct.inpdata, %struct.inpdata* %57, i32 0, i32 2
  %58 = load i8*, i8** %inpstring, align 8
  %59 = load i32, i32* %q, align 4
  %idx.ext = sext i32 %59 to i64
  %add.ptr = getelementptr inbounds i8, i8* %58, i64 %idx.ext
  %60 = load i32, i32* %s, align 4
  %idx.ext28 = sext i32 %60 to i64
  %idx.neg = sub i64 0, %idx.ext28
  %add.ptr29 = getelementptr inbounds i8, i8* %add.ptr, i64 %idx.neg
  %61 = load i32, i32* %l, align 4
  %62 = load i32, i32* %q, align 4
  %63 = load i32, i32* %y.addr, align 4
  call void @LPutStr(%struct.layer* %56, i8* %add.ptr29, i32 %61, %struct.mchar* @mchar_so, i32 %62, i32 %63)
  %64 = load i32, i32* %l, align 4
  %65 = load i32, i32* %q, align 4
  %add30 = add nsw i32 %65, %64
  store i32 %add30, i32* %q, align 4
  %66 = load i32, i32* %l, align 4
  %67 = load i32, i32* %v, align 4
  %sub31 = sub nsw i32 %67, %66
  store i32 %sub31, i32* %v, align 4
  br label %if.end.32

if.end.32:                                        ; preds = %if.end.27, %land.lhs.true, %if.end
  %68 = load i32, i32* %r, align 4
  store i32 %68, i32* %s, align 4
  %69 = load %struct.inpdata*, %struct.inpdata** %inpdata, align 8
  %inp33 = getelementptr inbounds %struct.inpdata, %struct.inpdata* %69, i32 0, i32 0
  %len34 = getelementptr inbounds %struct.inpline, %struct.inpline* %inp33, i32 0, i32 1
  %70 = load i32, i32* %len34, align 4
  %71 = load i32, i32* %r, align 4
  %add35 = add nsw i32 %71, %70
  store i32 %add35, i32* %r, align 4
  %72 = load %struct.inpdata*, %struct.inpdata** %inpdata, align 8
  %inpmode = getelementptr inbounds %struct.inpdata, %struct.inpdata* %72, i32 0, i32 4
  %73 = load i32, i32* %inpmode, align 4
  %and = and i32 %73, 1
  %tobool36 = icmp ne i32 %and, 0
  br i1 %tobool36, label %if.end.56, label %land.lhs.true.37

land.lhs.true.37:                                 ; preds = %if.end.32
  %74 = load i32, i32* %v, align 4
  %cmp38 = icmp sgt i32 %74, 0
  br i1 %cmp38, label %land.lhs.true.39, label %if.end.56

land.lhs.true.39:                                 ; preds = %land.lhs.true.37
  %75 = load i32, i32* %q, align 4
  %76 = load i32, i32* %r, align 4
  %cmp40 = icmp slt i32 %75, %76
  br i1 %cmp40, label %if.then.41, label %if.end.56

if.then.41:                                       ; preds = %land.lhs.true.39
  %77 = load i32, i32* %v, align 4
  store i32 %77, i32* %l, align 4
  %78 = load i32, i32* %l, align 4
  %79 = load i32, i32* %r, align 4
  %80 = load i32, i32* %q, align 4
  %sub42 = sub nsw i32 %79, %80
  %cmp43 = icmp sgt i32 %78, %sub42
  br i1 %cmp43, label %if.then.44, label %if.end.46

if.then.44:                                       ; preds = %if.then.41
  %81 = load i32, i32* %r, align 4
  %82 = load i32, i32* %q, align 4
  %sub45 = sub nsw i32 %81, %82
  store i32 %sub45, i32* %l, align 4
  br label %if.end.46

if.end.46:                                        ; preds = %if.then.44, %if.then.41
  %83 = load %struct.layer*, %struct.layer** @flayer, align 8
  %84 = load %struct.inpdata*, %struct.inpdata** %inpdata, align 8
  %inp47 = getelementptr inbounds %struct.inpdata, %struct.inpdata* %84, i32 0, i32 0
  %buf48 = getelementptr inbounds %struct.inpline, %struct.inpline* %inp47, i32 0, i32 0
  %arraydecay = getelementptr inbounds [769 x i8], [769 x i8]* %buf48, i32 0, i32 0
  %85 = load i32, i32* %q, align 4
  %idx.ext49 = sext i32 %85 to i64
  %add.ptr50 = getelementptr inbounds i8, i8* %arraydecay, i64 %idx.ext49
  %86 = load i32, i32* %s, align 4
  %idx.ext51 = sext i32 %86 to i64
  %idx.neg52 = sub i64 0, %idx.ext51
  %add.ptr53 = getelementptr inbounds i8, i8* %add.ptr50, i64 %idx.neg52
  %87 = load i32, i32* %l, align 4
  %88 = load i32, i32* %q, align 4
  %89 = load i32, i32* %y.addr, align 4
  call void @LPutStr(%struct.layer* %83, i8* %add.ptr53, i32 %87, %struct.mchar* @mchar_so, i32 %88, i32 %89)
  %90 = load i32, i32* %l, align 4
  %91 = load i32, i32* %q, align 4
  %add54 = add nsw i32 %91, %90
  store i32 %add54, i32* %q, align 4
  %92 = load i32, i32* %l, align 4
  %93 = load i32, i32* %v, align 4
  %sub55 = sub nsw i32 %93, %92
  store i32 %sub55, i32* %v, align 4
  br label %if.end.56

if.end.56:                                        ; preds = %if.end.46, %land.lhs.true.39, %land.lhs.true.37, %if.end.32
  %94 = load i32, i32* %r, align 4
  store i32 %94, i32* %s, align 4
  %95 = load %struct.layer*, %struct.layer** @flayer, align 8
  %l_width = getelementptr inbounds %struct.layer, %struct.layer* %95, i32 0, i32 1
  %96 = load i32, i32* %l_width, align 4
  store i32 %96, i32* %r, align 4
  %97 = load i32, i32* %isblank.addr, align 4
  %tobool57 = icmp ne i32 %97, 0
  br i1 %tobool57, label %if.end.71, label %land.lhs.true.58

land.lhs.true.58:                                 ; preds = %if.end.56
  %98 = load i32, i32* %v, align 4
  %cmp59 = icmp sgt i32 %98, 0
  br i1 %cmp59, label %land.lhs.true.60, label %if.end.71

land.lhs.true.60:                                 ; preds = %land.lhs.true.58
  %99 = load i32, i32* %q, align 4
  %100 = load i32, i32* %r, align 4
  %cmp61 = icmp slt i32 %99, %100
  br i1 %cmp61, label %if.then.62, label %if.end.71

if.then.62:                                       ; preds = %land.lhs.true.60
  %101 = load i32, i32* %v, align 4
  store i32 %101, i32* %l, align 4
  %102 = load i32, i32* %l, align 4
  %103 = load i32, i32* %r, align 4
  %104 = load i32, i32* %q, align 4
  %sub63 = sub nsw i32 %103, %104
  %cmp64 = icmp sgt i32 %102, %sub63
  br i1 %cmp64, label %if.then.65, label %if.end.67

if.then.65:                                       ; preds = %if.then.62
  %105 = load i32, i32* %r, align 4
  %106 = load i32, i32* %q, align 4
  %sub66 = sub nsw i32 %105, %106
  store i32 %sub66, i32* %l, align 4
  br label %if.end.67

if.end.67:                                        ; preds = %if.then.65, %if.then.62
  %107 = load %struct.layer*, %struct.layer** @flayer, align 8
  %108 = load i32, i32* %q, align 4
  %109 = load i32, i32* %y.addr, align 4
  %110 = load i32, i32* %q, align 4
  %111 = load i32, i32* %l, align 4
  %add68 = add nsw i32 %110, %111
  %sub69 = sub nsw i32 %add68, 1
  %112 = load i32, i32* %y.addr, align 4
  call void @LClearArea(%struct.layer* %107, i32 %108, i32 %109, i32 %sub69, i32 %112, i32 0, i32 0)
  %113 = load i32, i32* %l, align 4
  %114 = load i32, i32* %q, align 4
  %add70 = add nsw i32 %114, %113
  store i32 %add70, i32* %q, align 4
  br label %if.end.71

if.end.71:                                        ; preds = %do.end.17, %if.end.67, %land.lhs.true.60, %land.lhs.true.58, %if.end.56
  ret void
}

; Function Attrs: nounwind uwtable
define void @Input(i8* %istr, i32 %len, i32 %mode, void (i8*, i32, i8*)* %finfunc, i8* %priv, i32 %data) #0 {
entry:
  %istr.addr = alloca i8*, align 8
  %len.addr = alloca i32, align 4
  %mode.addr = alloca i32, align 4
  %finfunc.addr = alloca void (i8*, i32, i8*)*, align 8
  %priv.addr = alloca i8*, align 8
  %data.addr = alloca i32, align 4
  %maxlen = alloca i32, align 4
  %inpdata = alloca %struct.inpdata*, align 8
  store i8* %istr, i8** %istr.addr, align 8
  store i32 %len, i32* %len.addr, align 4
  store i32 %mode, i32* %mode.addr, align 4
  store void (i8*, i32, i8*)* %finfunc, void (i8*, i32, i8*)** %finfunc.addr, align 8
  store i8* %priv, i8** %priv.addr, align 8
  store i32 %data, i32* %data.addr, align 4
  %0 = load %struct.layer*, %struct.layer** @flayer, align 8
  %tobool = icmp ne %struct.layer* %0, null
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  br label %if.end.31

if.end:                                           ; preds = %entry
  %1 = load i32, i32* %len.addr, align 4
  %cmp = icmp sgt i32 %1, 768
  br i1 %cmp, label %if.then.1, label %if.end.2

if.then.1:                                        ; preds = %if.end
  store i32 768, i32* %len.addr, align 4
  br label %if.end.2

if.end.2:                                         ; preds = %if.then.1, %if.end
  %2 = load i32, i32* %mode.addr, align 4
  %and = and i32 %2, 1
  %tobool3 = icmp ne i32 %and, 0
  br i1 %tobool3, label %if.end.11, label %if.then.4

if.then.4:                                        ; preds = %if.end.2
  %3 = load %struct.layer*, %struct.layer** @flayer, align 8
  %l_width = getelementptr inbounds %struct.layer, %struct.layer* %3, i32 0, i32 1
  %4 = load i32, i32* %l_width, align 4
  %sub = sub nsw i32 %4, 1
  %conv = sext i32 %sub to i64
  %5 = load i8*, i8** %istr.addr, align 8
  %call = call i64 @strlen(i8* %5) #6
  %sub5 = sub i64 %conv, %call
  %conv6 = trunc i64 %sub5 to i32
  store i32 %conv6, i32* %maxlen, align 4
  %6 = load i32, i32* %len.addr, align 4
  %7 = load i32, i32* %maxlen, align 4
  %cmp7 = icmp sgt i32 %6, %7
  br i1 %cmp7, label %if.then.9, label %if.end.10

if.then.9:                                        ; preds = %if.then.4
  %8 = load i32, i32* %maxlen, align 4
  store i32 %8, i32* %len.addr, align 4
  br label %if.end.10

if.end.10:                                        ; preds = %if.then.9, %if.then.4
  br label %if.end.11

if.end.11:                                        ; preds = %if.end.10, %if.end.2
  %9 = load i32, i32* %len.addr, align 4
  %cmp12 = icmp slt i32 %9, 0
  br i1 %cmp12, label %if.then.14, label %if.end.16

if.then.14:                                       ; preds = %if.end.11
  %10 = load i32, i32* %len.addr, align 4
  %sub15 = sub nsw i32 0, %10
  call void (i32, i8*, ...) @LMsg(i32 0, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i32 0, i32 0), i32 %sub15)
  br label %if.end.31

if.end.16:                                        ; preds = %if.end.11
  %call17 = call i32 @InitOverlayPage(i32 856, %struct.LayFuncs* @InpLf, i32 1)
  %tobool18 = icmp ne i32 %call17, 0
  br i1 %tobool18, label %if.then.19, label %if.end.20

if.then.19:                                       ; preds = %if.end.16
  br label %if.end.31

if.end.20:                                        ; preds = %if.end.16
  %11 = load %struct.layer*, %struct.layer** @flayer, align 8
  %l_mode = getelementptr inbounds %struct.layer, %struct.layer* %11, i32 0, i32 11
  store i32 1, i32* %l_mode, align 4
  %12 = load %struct.layer*, %struct.layer** @flayer, align 8
  %l_data = getelementptr inbounds %struct.layer, %struct.layer* %12, i32 0, i32 7
  %13 = load i8*, i8** %l_data, align 8
  %14 = bitcast i8* %13 to %struct.inpdata*
  store %struct.inpdata* %14, %struct.inpdata** %inpdata, align 8
  %15 = load i32, i32* %len.addr, align 4
  %16 = load %struct.inpdata*, %struct.inpdata** %inpdata, align 8
  %inpmaxlen = getelementptr inbounds %struct.inpdata, %struct.inpdata* %16, i32 0, i32 1
  store i32 %15, i32* %inpmaxlen, align 4
  %17 = load void (i8*, i32, i8*)*, void (i8*, i32, i8*)** %finfunc.addr, align 8
  %18 = load %struct.inpdata*, %struct.inpdata** %inpdata, align 8
  %inpfinfunc = getelementptr inbounds %struct.inpdata, %struct.inpdata* %18, i32 0, i32 5
  store void (i8*, i32, i8*)* %17, void (i8*, i32, i8*)** %inpfinfunc, align 8
  %19 = load %struct.inpdata*, %struct.inpdata** %inpdata, align 8
  %inp = getelementptr inbounds %struct.inpdata, %struct.inpdata* %19, i32 0, i32 0
  %len21 = getelementptr inbounds %struct.inpline, %struct.inpline* %inp, i32 0, i32 1
  store i32 0, i32* %len21, align 4
  %20 = load %struct.inpdata*, %struct.inpdata** %inpdata, align 8
  %inp22 = getelementptr inbounds %struct.inpdata, %struct.inpdata* %20, i32 0, i32 0
  %pos = getelementptr inbounds %struct.inpline, %struct.inpline* %inp22, i32 0, i32 2
  store i32 0, i32* %pos, align 4
  %21 = load %struct.inpline*, %struct.inpline** getelementptr inbounds (%struct.inpline, %struct.inpline* @inphist, i32 0, i32 4), align 8
  %22 = load %struct.inpdata*, %struct.inpdata** %inpdata, align 8
  %inp23 = getelementptr inbounds %struct.inpdata, %struct.inpdata* %22, i32 0, i32 0
  %prev = getelementptr inbounds %struct.inpline, %struct.inpline* %inp23, i32 0, i32 4
  store %struct.inpline* %21, %struct.inpline** %prev, align 8
  %23 = load i32, i32* %mode.addr, align 4
  %24 = load %struct.inpdata*, %struct.inpdata** %inpdata, align 8
  %inpmode = getelementptr inbounds %struct.inpdata, %struct.inpdata* %24, i32 0, i32 4
  store i32 %23, i32* %inpmode, align 4
  %25 = load i32, i32* %data.addr, align 4
  %26 = load %struct.inpdata*, %struct.inpdata** %inpdata, align 8
  %privdata = getelementptr inbounds %struct.inpdata, %struct.inpdata* %26, i32 0, i32 7
  store i32 %25, i32* %privdata, align 4
  %27 = load i8*, i8** %priv.addr, align 8
  %tobool24 = icmp ne i8* %27, null
  br i1 %tobool24, label %if.end.27, label %if.then.25

if.then.25:                                       ; preds = %if.end.20
  %28 = load %struct.inpdata*, %struct.inpdata** %inpdata, align 8
  %privdata26 = getelementptr inbounds %struct.inpdata, %struct.inpdata* %28, i32 0, i32 7
  %29 = bitcast i32* %privdata26 to i8*
  store i8* %29, i8** %priv.addr, align 8
  br label %if.end.27

if.end.27:                                        ; preds = %if.then.25, %if.end.20
  %30 = load i8*, i8** %priv.addr, align 8
  %31 = load %struct.inpdata*, %struct.inpdata** %inpdata, align 8
  %priv28 = getelementptr inbounds %struct.inpdata, %struct.inpdata* %31, i32 0, i32 6
  store i8* %30, i8** %priv28, align 8
  %32 = load %struct.inpdata*, %struct.inpdata** %inpdata, align 8
  %inpstringlen = getelementptr inbounds %struct.inpdata, %struct.inpdata* %32, i32 0, i32 3
  store i32 0, i32* %inpstringlen, align 4
  %33 = load %struct.inpdata*, %struct.inpdata** %inpdata, align 8
  %inpstring = getelementptr inbounds %struct.inpdata, %struct.inpdata* %33, i32 0, i32 2
  store i8* null, i8** %inpstring, align 8
  %34 = load %struct.inpdata*, %struct.inpdata** %inpdata, align 8
  %search = getelementptr inbounds %struct.inpdata, %struct.inpdata* %34, i32 0, i32 8
  store i8* null, i8** %search, align 8
  %35 = load i8*, i8** %istr.addr, align 8
  %tobool29 = icmp ne i8* %35, null
  br i1 %tobool29, label %if.then.30, label %if.end.31

if.then.30:                                       ; preds = %if.end.27
  %36 = load i8*, i8** %istr.addr, align 8
  call void @inp_setprompt(i8* %36, i8* null)
  br label %if.end.31

if.end.31:                                        ; preds = %if.then, %if.then.14, %if.then.19, %if.then.30, %if.end.27
  ret void
}

declare void @LMsg(i32, i8*, ...) #3

declare i32 @InitOverlayPage(i32, %struct.LayFuncs*, i32) #3

; Function Attrs: nounwind uwtable
define internal void @InpProcess(i8** %ppbuf, i32* %plen) #0 {
entry:
  %ppbuf.addr = alloca i8**, align 8
  %plen.addr = alloca i32*, align 8
  %len = alloca i32, align 4
  %x = alloca i32, align 4
  %pbuf = alloca i8*, align 8
  %ch = alloca i8, align 1
  %inpdata = alloca %struct.inpdata*, align 8
  %inpdisplay = alloca %struct.display*, align 8
  %prev = alloca i32, align 4
  %next = alloca i32, align 4
  %search = alloca i32, align 4
  %p = alloca i8*, align 8
  %mc = alloca %struct.mchar, align 1
  %oldp = alloca i8*, align 8
  %mc427 = alloca %struct.mchar, align 1
  %sel = alloca %struct.inpline*, align 8
  %pos428 = alloca i32, align 4
  %f = alloca i8*, align 8
  %store = alloca %struct.inpline*, align 8
  store i8** %ppbuf, i8*** %ppbuf.addr, align 8
  store i32* %plen, i32** %plen.addr, align 8
  store i32 0, i32* %search, align 4
  %0 = load %struct.layer*, %struct.layer** @flayer, align 8
  %l_data = getelementptr inbounds %struct.layer, %struct.layer* %0, i32 0, i32 7
  %1 = load i8*, i8** %l_data, align 8
  %2 = bitcast i8* %1 to %struct.inpdata*
  store %struct.inpdata* %2, %struct.inpdata** %inpdata, align 8
  %3 = load %struct.display*, %struct.display** @display, align 8
  store %struct.display* %3, %struct.display** %inpdisplay, align 8
  %4 = load %struct.layer*, %struct.layer** @flayer, align 8
  %5 = load %struct.inpdata*, %struct.inpdata** %inpdata, align 8
  %inpstringlen = getelementptr inbounds %struct.inpdata, %struct.inpdata* %5, i32 0, i32 3
  %6 = load i32, i32* %inpstringlen, align 4
  %7 = load %struct.inpdata*, %struct.inpdata** %inpdata, align 8
  %inpmode = getelementptr inbounds %struct.inpdata, %struct.inpdata* %7, i32 0, i32 4
  %8 = load i32, i32* %inpmode, align 4
  %and = and i32 %8, 1
  %tobool = icmp ne i32 %and, 0
  br i1 %tobool, label %cond.true, label %cond.false

cond.true:                                        ; preds = %entry
  br label %cond.end

cond.false:                                       ; preds = %entry
  %9 = load %struct.inpdata*, %struct.inpdata** %inpdata, align 8
  %inp = getelementptr inbounds %struct.inpdata, %struct.inpdata* %9, i32 0, i32 0
  %pos = getelementptr inbounds %struct.inpline, %struct.inpline* %inp, i32 0, i32 2
  %10 = load i32, i32* %pos, align 4
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ 0, %cond.true ], [ %10, %cond.false ]
  %add = add nsw i32 %6, %cond
  %11 = load %struct.layer*, %struct.layer** @flayer, align 8
  %l_height = getelementptr inbounds %struct.layer, %struct.layer* %11, i32 0, i32 2
  %12 = load i32, i32* %l_height, align 4
  %sub = sub nsw i32 %12, 1
  call void @LGotoPos(%struct.layer* %4, i32 %add, i32 %sub)
  %13 = load i8**, i8*** %ppbuf.addr, align 8
  %cmp = icmp eq i8** %13, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %cond.end
  call void @InpAbort()
  br label %return

if.end:                                           ; preds = %cond.end
  %14 = load %struct.inpdata*, %struct.inpdata** %inpdata, align 8
  %inpstringlen1 = getelementptr inbounds %struct.inpdata, %struct.inpdata* %14, i32 0, i32 3
  %15 = load i32, i32* %inpstringlen1, align 4
  %16 = load %struct.inpdata*, %struct.inpdata** %inpdata, align 8
  %inp2 = getelementptr inbounds %struct.inpdata, %struct.inpdata* %16, i32 0, i32 0
  %pos3 = getelementptr inbounds %struct.inpline, %struct.inpline* %inp2, i32 0, i32 2
  %17 = load i32, i32* %pos3, align 4
  %add4 = add nsw i32 %15, %17
  store i32 %add4, i32* %x, align 4
  %18 = load i32*, i32** %plen.addr, align 8
  %19 = load i32, i32* %18, align 4
  store i32 %19, i32* %len, align 4
  %20 = load i8**, i8*** %ppbuf.addr, align 8
  %21 = load i8*, i8** %20, align 8
  store i8* %21, i8** %pbuf, align 8
  br label %while.cond

while.cond:                                       ; preds = %if.end.706, %if.then.468, %if.then.38, %if.end
  %22 = load i32, i32* %len, align 4
  %tobool5 = icmp ne i32 %22, 0
  br i1 %tobool5, label %while.body, label %while.end.707

while.body:                                       ; preds = %while.cond
  %23 = load %struct.inpdata*, %struct.inpdata** %inpdata, align 8
  %inp6 = getelementptr inbounds %struct.inpdata, %struct.inpdata* %23, i32 0, i32 0
  %buf = getelementptr inbounds %struct.inpline, %struct.inpline* %inp6, i32 0, i32 0
  %arraydecay = getelementptr inbounds [769 x i8], [769 x i8]* %buf, i32 0, i32 0
  %24 = load %struct.inpdata*, %struct.inpdata** %inpdata, align 8
  %inp7 = getelementptr inbounds %struct.inpdata, %struct.inpdata* %24, i32 0, i32 0
  %pos8 = getelementptr inbounds %struct.inpline, %struct.inpline* %inp7, i32 0, i32 2
  %25 = load i32, i32* %pos8, align 4
  %idx.ext = sext i32 %25 to i64
  %add.ptr = getelementptr inbounds i8, i8* %arraydecay, i64 %idx.ext
  store i8* %add.ptr, i8** %p, align 8
  %26 = load i8*, i8** %pbuf, align 8
  %incdec.ptr = getelementptr inbounds i8, i8* %26, i32 1
  store i8* %incdec.ptr, i8** %pbuf, align 8
  %27 = load i8, i8* %26, align 1
  store i8 %27, i8* %ch, align 1
  %28 = load i32, i32* %len, align 4
  %dec = add nsw i32 %28, -1
  store i32 %dec, i32* %len, align 4
  %29 = load %struct.inpdata*, %struct.inpdata** %inpdata, align 8
  %inpmode9 = getelementptr inbounds %struct.inpdata, %struct.inpdata* %29, i32 0, i32 4
  %30 = load i32, i32* %inpmode9, align 4
  %and10 = and i32 %30, 4
  %tobool11 = icmp ne i32 %and10, 0
  br i1 %tobool11, label %if.then.12, label %if.else

if.then.12:                                       ; preds = %while.body
  %31 = load i8, i8* %ch, align 1
  %32 = load %struct.inpdata*, %struct.inpdata** %inpdata, align 8
  %inp13 = getelementptr inbounds %struct.inpdata, %struct.inpdata* %32, i32 0, i32 0
  %len14 = getelementptr inbounds %struct.inpline, %struct.inpline* %inp13, i32 0, i32 1
  %33 = load i32, i32* %len14, align 4
  %idxprom = sext i32 %33 to i64
  %34 = load %struct.inpdata*, %struct.inpdata** %inpdata, align 8
  %inp15 = getelementptr inbounds %struct.inpdata, %struct.inpdata* %34, i32 0, i32 0
  %buf16 = getelementptr inbounds %struct.inpline, %struct.inpline* %inp15, i32 0, i32 0
  %arrayidx = getelementptr inbounds [769 x i8], [769 x i8]* %buf16, i32 0, i64 %idxprom
  store i8 %31, i8* %arrayidx, align 1
  %35 = load i8, i8* %ch, align 1
  %tobool17 = icmp ne i8 %35, 0
  br i1 %tobool17, label %if.then.18, label %if.end.30

if.then.18:                                       ; preds = %if.then.12
  %36 = load %struct.display*, %struct.display** %inpdisplay, align 8
  store %struct.display* %36, %struct.display** @display, align 8
  %37 = load %struct.inpdata*, %struct.inpdata** %inpdata, align 8
  %inpfinfunc = getelementptr inbounds %struct.inpdata, %struct.inpdata* %37, i32 0, i32 5
  %38 = load void (i8*, i32, i8*)*, void (i8*, i32, i8*)** %inpfinfunc, align 8
  %39 = load %struct.inpdata*, %struct.inpdata** %inpdata, align 8
  %inp19 = getelementptr inbounds %struct.inpdata, %struct.inpdata* %39, i32 0, i32 0
  %buf20 = getelementptr inbounds %struct.inpline, %struct.inpline* %inp19, i32 0, i32 0
  %arraydecay21 = getelementptr inbounds [769 x i8], [769 x i8]* %buf20, i32 0, i32 0
  %40 = load %struct.inpdata*, %struct.inpdata** %inpdata, align 8
  %inp22 = getelementptr inbounds %struct.inpdata, %struct.inpdata* %40, i32 0, i32 0
  %len23 = getelementptr inbounds %struct.inpline, %struct.inpline* %inp22, i32 0, i32 1
  %41 = load i32, i32* %len23, align 4
  %42 = load %struct.inpdata*, %struct.inpdata** %inpdata, align 8
  %priv = getelementptr inbounds %struct.inpdata, %struct.inpdata* %42, i32 0, i32 6
  %43 = load i8*, i8** %priv, align 8
  call void %38(i8* %arraydecay21, i32 %41, i8* %43)
  %44 = load %struct.inpdata*, %struct.inpdata** %inpdata, align 8
  %inp24 = getelementptr inbounds %struct.inpdata, %struct.inpdata* %44, i32 0, i32 0
  %len25 = getelementptr inbounds %struct.inpline, %struct.inpline* %inp24, i32 0, i32 1
  %45 = load i32, i32* %len25, align 4
  %idxprom26 = sext i32 %45 to i64
  %46 = load %struct.inpdata*, %struct.inpdata** %inpdata, align 8
  %inp27 = getelementptr inbounds %struct.inpdata, %struct.inpdata* %46, i32 0, i32 0
  %buf28 = getelementptr inbounds %struct.inpline, %struct.inpline* %inp27, i32 0, i32 0
  %arrayidx29 = getelementptr inbounds [769 x i8], [769 x i8]* %buf28, i32 0, i64 %idxprom26
  %47 = load i8, i8* %arrayidx29, align 1
  store i8 %47, i8* %ch, align 1
  br label %if.end.30

if.end.30:                                        ; preds = %if.then.18, %if.then.12
  br label %if.end.41

if.else:                                          ; preds = %while.body
  %48 = load %struct.inpdata*, %struct.inpdata** %inpdata, align 8
  %inpmode31 = getelementptr inbounds %struct.inpdata, %struct.inpdata* %48, i32 0, i32 4
  %49 = load i32, i32* %inpmode31, align 4
  %and32 = and i32 %49, 2
  %tobool33 = icmp ne i32 %and32, 0
  br i1 %tobool33, label %if.then.34, label %if.end.40

if.then.34:                                       ; preds = %if.else
  %50 = load %struct.display*, %struct.display** %inpdisplay, align 8
  store %struct.display* %50, %struct.display** @display, align 8
  %51 = load %struct.inpdata*, %struct.inpdata** %inpdata, align 8
  %inpfinfunc35 = getelementptr inbounds %struct.inpdata, %struct.inpdata* %51, i32 0, i32 5
  %52 = load void (i8*, i32, i8*)*, void (i8*, i32, i8*)** %inpfinfunc35, align 8
  %53 = load %struct.inpdata*, %struct.inpdata** %inpdata, align 8
  %priv36 = getelementptr inbounds %struct.inpdata, %struct.inpdata* %53, i32 0, i32 6
  %54 = load i8*, i8** %priv36, align 8
  call void %52(i8* %ch, i32 1, i8* %54)
  %55 = load i8, i8* %ch, align 1
  %tobool37 = icmp ne i8 %55, 0
  br i1 %tobool37, label %if.then.38, label %if.end.39

if.then.38:                                       ; preds = %if.then.34
  br label %while.cond

if.end.39:                                        ; preds = %if.then.34
  br label %if.end.40

if.end.40:                                        ; preds = %if.end.39, %if.else
  br label %if.end.41

if.end.41:                                        ; preds = %if.end.40, %if.end.30
  %56 = load i8, i8* %ch, align 1
  %conv = zext i8 %56 to i32
  %and42 = and i32 %conv, 127
  %cmp43 = icmp sge i32 %and42, 32
  br i1 %cmp43, label %land.lhs.true, label %if.else.132

land.lhs.true:                                    ; preds = %if.end.41
  %57 = load i8, i8* %ch, align 1
  %conv45 = sext i8 %57 to i32
  %cmp46 = icmp ne i32 %conv45, 127
  br i1 %cmp46, label %land.lhs.true.48, label %if.else.132

land.lhs.true.48:                                 ; preds = %land.lhs.true
  %58 = load %struct.inpdata*, %struct.inpdata** %inpdata, align 8
  %inp49 = getelementptr inbounds %struct.inpdata, %struct.inpdata* %58, i32 0, i32 0
  %len50 = getelementptr inbounds %struct.inpline, %struct.inpline* %inp49, i32 0, i32 1
  %59 = load i32, i32* %len50, align 4
  %60 = load %struct.inpdata*, %struct.inpdata** %inpdata, align 8
  %inpmaxlen = getelementptr inbounds %struct.inpdata, %struct.inpdata* %60, i32 0, i32 1
  %61 = load i32, i32* %inpmaxlen, align 4
  %cmp51 = icmp slt i32 %59, %61
  br i1 %cmp51, label %if.then.53, label %if.else.132

if.then.53:                                       ; preds = %land.lhs.true.48
  %62 = load %struct.inpdata*, %struct.inpdata** %inpdata, align 8
  %inp54 = getelementptr inbounds %struct.inpdata, %struct.inpdata* %62, i32 0, i32 0
  %len55 = getelementptr inbounds %struct.inpline, %struct.inpline* %inp54, i32 0, i32 1
  %63 = load i32, i32* %len55, align 4
  %64 = load %struct.inpdata*, %struct.inpdata** %inpdata, align 8
  %inp56 = getelementptr inbounds %struct.inpdata, %struct.inpdata* %64, i32 0, i32 0
  %pos57 = getelementptr inbounds %struct.inpline, %struct.inpline* %inp56, i32 0, i32 2
  %65 = load i32, i32* %pos57, align 4
  %cmp58 = icmp sgt i32 %63, %65
  br i1 %cmp58, label %if.then.60, label %if.end.68

if.then.60:                                       ; preds = %if.then.53
  %66 = load i8*, i8** %p, align 8
  %67 = load i8*, i8** %p, align 8
  %add.ptr61 = getelementptr inbounds i8, i8* %67, i64 1
  %68 = load %struct.inpdata*, %struct.inpdata** %inpdata, align 8
  %inp62 = getelementptr inbounds %struct.inpdata, %struct.inpdata* %68, i32 0, i32 0
  %len63 = getelementptr inbounds %struct.inpline, %struct.inpline* %inp62, i32 0, i32 1
  %69 = load i32, i32* %len63, align 4
  %70 = load %struct.inpdata*, %struct.inpdata** %inpdata, align 8
  %inp64 = getelementptr inbounds %struct.inpdata, %struct.inpdata* %70, i32 0, i32 0
  %pos65 = getelementptr inbounds %struct.inpline, %struct.inpline* %inp64, i32 0, i32 2
  %71 = load i32, i32* %pos65, align 4
  %sub66 = sub nsw i32 %69, %71
  %conv67 = sext i32 %sub66 to i64
  call void @bcopy(i8* %66, i8* %add.ptr61, i64 %conv67) #4
  br label %if.end.68

if.end.68:                                        ; preds = %if.then.60, %if.then.53
  %72 = load i8, i8* %ch, align 1
  %73 = load %struct.inpdata*, %struct.inpdata** %inpdata, align 8
  %inp69 = getelementptr inbounds %struct.inpdata, %struct.inpdata* %73, i32 0, i32 0
  %pos70 = getelementptr inbounds %struct.inpline, %struct.inpline* %inp69, i32 0, i32 2
  %74 = load i32, i32* %pos70, align 4
  %inc = add nsw i32 %74, 1
  store i32 %inc, i32* %pos70, align 4
  %idxprom71 = sext i32 %74 to i64
  %75 = load %struct.inpdata*, %struct.inpdata** %inpdata, align 8
  %inp72 = getelementptr inbounds %struct.inpdata, %struct.inpdata* %75, i32 0, i32 0
  %buf73 = getelementptr inbounds %struct.inpline, %struct.inpline* %inp72, i32 0, i32 0
  %arrayidx74 = getelementptr inbounds [769 x i8], [769 x i8]* %buf73, i32 0, i64 %idxprom71
  store i8 %72, i8* %arrayidx74, align 1
  %76 = load %struct.inpdata*, %struct.inpdata** %inpdata, align 8
  %inp75 = getelementptr inbounds %struct.inpdata, %struct.inpdata* %76, i32 0, i32 0
  %len76 = getelementptr inbounds %struct.inpline, %struct.inpline* %inp75, i32 0, i32 1
  %77 = load i32, i32* %len76, align 4
  %inc77 = add nsw i32 %77, 1
  store i32 %inc77, i32* %len76, align 4
  %78 = load %struct.inpdata*, %struct.inpdata** %inpdata, align 8
  %inpmode78 = getelementptr inbounds %struct.inpdata, %struct.inpdata* %78, i32 0, i32 4
  %79 = load i32, i32* %inpmode78, align 4
  %and79 = and i32 %79, 1
  %tobool80 = icmp ne i32 %and79, 0
  br i1 %tobool80, label %if.end.119, label %if.then.81

if.then.81:                                       ; preds = %if.end.68
  %80 = bitcast %struct.mchar* %mc to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %80, i8* getelementptr inbounds (%struct.mchar, %struct.mchar* @mchar_so, i32 0, i32 0), i64 6, i32 1, i1 false)
  %81 = load i8*, i8** %p, align 8
  %incdec.ptr82 = getelementptr inbounds i8, i8* %81, i32 1
  store i8* %incdec.ptr82, i8** %p, align 8
  %82 = load i8, i8* %81, align 1
  %image = getelementptr inbounds %struct.mchar, %struct.mchar* %mc, i32 0, i32 0
  store i8 %82, i8* %image, align 1
  %83 = load %struct.layer*, %struct.layer** @flayer, align 8
  %84 = load i32, i32* %x, align 4
  %85 = load %struct.layer*, %struct.layer** @flayer, align 8
  %l_height83 = getelementptr inbounds %struct.layer, %struct.layer* %85, i32 0, i32 2
  %86 = load i32, i32* %l_height83, align 4
  %sub84 = sub nsw i32 %86, 1
  call void @LPutChar(%struct.layer* %83, %struct.mchar* %mc, i32 %84, i32 %sub84)
  %87 = load i32, i32* %x, align 4
  %inc85 = add nsw i32 %87, 1
  store i32 %inc85, i32* %x, align 4
  %88 = load i8*, i8** %p, align 8
  %89 = load %struct.inpdata*, %struct.inpdata** %inpdata, align 8
  %inp86 = getelementptr inbounds %struct.inpdata, %struct.inpdata* %89, i32 0, i32 0
  %buf87 = getelementptr inbounds %struct.inpline, %struct.inpline* %inp86, i32 0, i32 0
  %arraydecay88 = getelementptr inbounds [769 x i8], [769 x i8]* %buf87, i32 0, i32 0
  %90 = load %struct.inpdata*, %struct.inpdata** %inpdata, align 8
  %inp89 = getelementptr inbounds %struct.inpdata, %struct.inpdata* %90, i32 0, i32 0
  %len90 = getelementptr inbounds %struct.inpline, %struct.inpline* %inp89, i32 0, i32 1
  %91 = load i32, i32* %len90, align 4
  %idx.ext91 = sext i32 %91 to i64
  %add.ptr92 = getelementptr inbounds i8, i8* %arraydecay88, i64 %idx.ext91
  %cmp93 = icmp ult i8* %88, %add.ptr92
  br i1 %cmp93, label %if.then.95, label %if.end.118

if.then.95:                                       ; preds = %if.then.81
  br label %while.cond.96

while.cond.96:                                    ; preds = %while.body.106, %if.then.95
  %92 = load i8*, i8** %p, align 8
  %93 = load %struct.inpdata*, %struct.inpdata** %inpdata, align 8
  %inp97 = getelementptr inbounds %struct.inpdata, %struct.inpdata* %93, i32 0, i32 0
  %buf98 = getelementptr inbounds %struct.inpline, %struct.inpline* %inp97, i32 0, i32 0
  %arraydecay99 = getelementptr inbounds [769 x i8], [769 x i8]* %buf98, i32 0, i32 0
  %94 = load %struct.inpdata*, %struct.inpdata** %inpdata, align 8
  %inp100 = getelementptr inbounds %struct.inpdata, %struct.inpdata* %94, i32 0, i32 0
  %len101 = getelementptr inbounds %struct.inpline, %struct.inpline* %inp100, i32 0, i32 1
  %95 = load i32, i32* %len101, align 4
  %idx.ext102 = sext i32 %95 to i64
  %add.ptr103 = getelementptr inbounds i8, i8* %arraydecay99, i64 %idx.ext102
  %cmp104 = icmp ult i8* %92, %add.ptr103
  br i1 %cmp104, label %while.body.106, label %while.end

while.body.106:                                   ; preds = %while.cond.96
  %96 = load i8*, i8** %p, align 8
  %incdec.ptr107 = getelementptr inbounds i8, i8* %96, i32 1
  store i8* %incdec.ptr107, i8** %p, align 8
  %97 = load i8, i8* %96, align 1
  %image108 = getelementptr inbounds %struct.mchar, %struct.mchar* %mc, i32 0, i32 0
  store i8 %97, i8* %image108, align 1
  %98 = load %struct.layer*, %struct.layer** @flayer, align 8
  %99 = load i32, i32* %x, align 4
  %inc109 = add nsw i32 %99, 1
  store i32 %inc109, i32* %x, align 4
  %100 = load %struct.layer*, %struct.layer** @flayer, align 8
  %l_height110 = getelementptr inbounds %struct.layer, %struct.layer* %100, i32 0, i32 2
  %101 = load i32, i32* %l_height110, align 4
  %sub111 = sub nsw i32 %101, 1
  call void @LPutChar(%struct.layer* %98, %struct.mchar* %mc, i32 %99, i32 %sub111)
  br label %while.cond.96

while.end:                                        ; preds = %while.cond.96
  %102 = load %struct.inpdata*, %struct.inpdata** %inpdata, align 8
  %inpstringlen112 = getelementptr inbounds %struct.inpdata, %struct.inpdata* %102, i32 0, i32 3
  %103 = load i32, i32* %inpstringlen112, align 4
  %104 = load %struct.inpdata*, %struct.inpdata** %inpdata, align 8
  %inp113 = getelementptr inbounds %struct.inpdata, %struct.inpdata* %104, i32 0, i32 0
  %pos114 = getelementptr inbounds %struct.inpline, %struct.inpline* %inp113, i32 0, i32 2
  %105 = load i32, i32* %pos114, align 4
  %add115 = add nsw i32 %103, %105
  store i32 %add115, i32* %x, align 4
  %106 = load %struct.layer*, %struct.layer** @flayer, align 8
  %107 = load i32, i32* %x, align 4
  %108 = load %struct.layer*, %struct.layer** @flayer, align 8
  %l_height116 = getelementptr inbounds %struct.layer, %struct.layer* %108, i32 0, i32 2
  %109 = load i32, i32* %l_height116, align 4
  %sub117 = sub nsw i32 %109, 1
  call void @LGotoPos(%struct.layer* %106, i32 %107, i32 %sub117)
  br label %if.end.118

if.end.118:                                       ; preds = %while.end, %if.then.81
  br label %if.end.119

if.end.119:                                       ; preds = %if.end.118, %if.end.68
  br label %do.body

do.body:                                          ; preds = %if.end.119
  %110 = load %struct.inpdata*, %struct.inpdata** %inpdata, align 8
  %search120 = getelementptr inbounds %struct.inpdata, %struct.inpdata* %110, i32 0, i32 8
  %111 = load i8*, i8** %search120, align 8
  %tobool121 = icmp ne i8* %111, null
  br i1 %tobool121, label %if.then.122, label %if.end.131

if.then.122:                                      ; preds = %do.body
  %112 = load %struct.inpdata*, %struct.inpdata** %inpdata, align 8
  %search123 = getelementptr inbounds %struct.inpdata, %struct.inpdata* %112, i32 0, i32 8
  %113 = load i8*, i8** %search123, align 8
  %cmp124 = icmp eq i8* %113, null
  br i1 %cmp124, label %if.then.126, label %if.else.127

if.then.126:                                      ; preds = %if.then.122
  call void @abort() #7
  unreachable

if.else.127:                                      ; preds = %if.then.122
  %114 = load %struct.inpdata*, %struct.inpdata** %inpdata, align 8
  %search128 = getelementptr inbounds %struct.inpdata, %struct.inpdata* %114, i32 0, i32 8
  %115 = load i8*, i8** %search128, align 8
  call void @free(i8* %115) #4
  br label %if.end.129

if.end.129:                                       ; preds = %if.else.127
  %116 = load %struct.inpdata*, %struct.inpdata** %inpdata, align 8
  %search130 = getelementptr inbounds %struct.inpdata, %struct.inpdata* %116, i32 0, i32 8
  store i8* null, i8** %search130, align 8
  br label %if.end.131

if.end.131:                                       ; preds = %if.end.129, %do.body
  br label %do.end

do.end:                                           ; preds = %if.end.131
  br label %if.end.706

if.else.132:                                      ; preds = %land.lhs.true.48, %land.lhs.true, %if.end.41
  %117 = load i8, i8* %ch, align 1
  %conv133 = sext i8 %117 to i32
  %cmp134 = icmp eq i32 %conv133, 8
  br i1 %cmp134, label %land.lhs.true.139, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.else.132
  %118 = load i8, i8* %ch, align 1
  %conv136 = sext i8 %118 to i32
  %cmp137 = icmp eq i32 %conv136, 127
  br i1 %cmp137, label %land.lhs.true.139, label %if.else.160

land.lhs.true.139:                                ; preds = %lor.lhs.false, %if.else.132
  %119 = load %struct.inpdata*, %struct.inpdata** %inpdata, align 8
  %inp140 = getelementptr inbounds %struct.inpdata, %struct.inpdata* %119, i32 0, i32 0
  %pos141 = getelementptr inbounds %struct.inpline, %struct.inpline* %inp140, i32 0, i32 2
  %120 = load i32, i32* %pos141, align 4
  %cmp142 = icmp sgt i32 %120, 0
  br i1 %cmp142, label %if.then.144, label %if.else.160

if.then.144:                                      ; preds = %land.lhs.true.139
  %121 = load %struct.inpdata*, %struct.inpdata** %inpdata, align 8
  %122 = load i8*, i8** %p, align 8
  %add.ptr145 = getelementptr inbounds i8, i8* %122, i64 -1
  %123 = load i8*, i8** %p, align 8
  %124 = load i32, i32* %x, align 4
  call void @erase_chars(%struct.inpdata* %121, i8* %add.ptr145, i8* %123, i32 %124, i32 1)
  br label %do.body.146

do.body.146:                                      ; preds = %if.then.144
  %125 = load %struct.inpdata*, %struct.inpdata** %inpdata, align 8
  %search147 = getelementptr inbounds %struct.inpdata, %struct.inpdata* %125, i32 0, i32 8
  %126 = load i8*, i8** %search147, align 8
  %tobool148 = icmp ne i8* %126, null
  br i1 %tobool148, label %if.then.149, label %if.end.158

if.then.149:                                      ; preds = %do.body.146
  %127 = load %struct.inpdata*, %struct.inpdata** %inpdata, align 8
  %search150 = getelementptr inbounds %struct.inpdata, %struct.inpdata* %127, i32 0, i32 8
  %128 = load i8*, i8** %search150, align 8
  %cmp151 = icmp eq i8* %128, null
  br i1 %cmp151, label %if.then.153, label %if.else.154

if.then.153:                                      ; preds = %if.then.149
  call void @abort() #7
  unreachable

if.else.154:                                      ; preds = %if.then.149
  %129 = load %struct.inpdata*, %struct.inpdata** %inpdata, align 8
  %search155 = getelementptr inbounds %struct.inpdata, %struct.inpdata* %129, i32 0, i32 8
  %130 = load i8*, i8** %search155, align 8
  call void @free(i8* %130) #4
  br label %if.end.156

if.end.156:                                       ; preds = %if.else.154
  %131 = load %struct.inpdata*, %struct.inpdata** %inpdata, align 8
  %search157 = getelementptr inbounds %struct.inpdata, %struct.inpdata* %131, i32 0, i32 8
  store i8* null, i8** %search157, align 8
  br label %if.end.158

if.end.158:                                       ; preds = %if.end.156, %do.body.146
  br label %do.end.159

do.end.159:                                       ; preds = %if.end.158
  br label %if.end.705

if.else.160:                                      ; preds = %land.lhs.true.139, %lor.lhs.false
  %132 = load i8, i8* %ch, align 1
  %conv161 = sext i8 %132 to i32
  %cmp162 = icmp eq i32 %conv161, 21
  br i1 %cmp162, label %if.then.164, label %if.else.189

if.then.164:                                      ; preds = %if.else.160
  %133 = load %struct.inpdata*, %struct.inpdata** %inpdata, align 8
  %inpstringlen165 = getelementptr inbounds %struct.inpdata, %struct.inpdata* %133, i32 0, i32 3
  %134 = load i32, i32* %inpstringlen165, align 4
  store i32 %134, i32* %x, align 4
  %135 = load %struct.inpdata*, %struct.inpdata** %inpdata, align 8
  %inp166 = getelementptr inbounds %struct.inpdata, %struct.inpdata* %135, i32 0, i32 0
  %len167 = getelementptr inbounds %struct.inpline, %struct.inpline* %inp166, i32 0, i32 1
  %136 = load i32, i32* %len167, align 4
  %tobool168 = icmp ne i32 %136, 0
  br i1 %tobool168, label %land.lhs.true.169, label %if.end.184

land.lhs.true.169:                                ; preds = %if.then.164
  %137 = load %struct.inpdata*, %struct.inpdata** %inpdata, align 8
  %inpmode170 = getelementptr inbounds %struct.inpdata, %struct.inpdata* %137, i32 0, i32 4
  %138 = load i32, i32* %inpmode170, align 4
  %and171 = and i32 %138, 1
  %tobool172 = icmp ne i32 %and171, 0
  br i1 %tobool172, label %if.end.184, label %if.then.173

if.then.173:                                      ; preds = %land.lhs.true.169
  %139 = load %struct.layer*, %struct.layer** @flayer, align 8
  %140 = load i32, i32* %x, align 4
  %141 = load %struct.layer*, %struct.layer** @flayer, align 8
  %l_height174 = getelementptr inbounds %struct.layer, %struct.layer* %141, i32 0, i32 2
  %142 = load i32, i32* %l_height174, align 4
  %sub175 = sub nsw i32 %142, 1
  %143 = load i32, i32* %x, align 4
  %144 = load %struct.inpdata*, %struct.inpdata** %inpdata, align 8
  %inp176 = getelementptr inbounds %struct.inpdata, %struct.inpdata* %144, i32 0, i32 0
  %len177 = getelementptr inbounds %struct.inpline, %struct.inpline* %inp176, i32 0, i32 1
  %145 = load i32, i32* %len177, align 4
  %add178 = add nsw i32 %143, %145
  %sub179 = sub nsw i32 %add178, 1
  %146 = load %struct.layer*, %struct.layer** @flayer, align 8
  %l_height180 = getelementptr inbounds %struct.layer, %struct.layer* %146, i32 0, i32 2
  %147 = load i32, i32* %l_height180, align 4
  %sub181 = sub nsw i32 %147, 1
  call void @LClearArea(%struct.layer* %139, i32 %140, i32 %sub175, i32 %sub179, i32 %sub181, i32 0, i32 0)
  %148 = load %struct.layer*, %struct.layer** @flayer, align 8
  %149 = load i32, i32* %x, align 4
  %150 = load %struct.layer*, %struct.layer** @flayer, align 8
  %l_height182 = getelementptr inbounds %struct.layer, %struct.layer* %150, i32 0, i32 2
  %151 = load i32, i32* %l_height182, align 4
  %sub183 = sub nsw i32 %151, 1
  call void @LGotoPos(%struct.layer* %148, i32 %149, i32 %sub183)
  br label %if.end.184

if.end.184:                                       ; preds = %if.then.173, %land.lhs.true.169, %if.then.164
  %152 = load %struct.inpdata*, %struct.inpdata** %inpdata, align 8
  %inp185 = getelementptr inbounds %struct.inpdata, %struct.inpdata* %152, i32 0, i32 0
  %pos186 = getelementptr inbounds %struct.inpline, %struct.inpline* %inp185, i32 0, i32 2
  store i32 0, i32* %pos186, align 4
  %153 = load %struct.inpdata*, %struct.inpdata** %inpdata, align 8
  %inp187 = getelementptr inbounds %struct.inpdata, %struct.inpdata* %153, i32 0, i32 0
  %len188 = getelementptr inbounds %struct.inpline, %struct.inpline* %inp187, i32 0, i32 1
  store i32 0, i32* %len188, align 4
  br label %if.end.704

if.else.189:                                      ; preds = %if.else.160
  %154 = load i8, i8* %ch, align 1
  %conv190 = sext i8 %154 to i32
  %cmp191 = icmp eq i32 %conv190, 11
  br i1 %cmp191, label %if.then.193, label %if.else.227

if.then.193:                                      ; preds = %if.else.189
  %155 = load %struct.inpdata*, %struct.inpdata** %inpdata, align 8
  %inpstringlen194 = getelementptr inbounds %struct.inpdata, %struct.inpdata* %155, i32 0, i32 3
  %156 = load i32, i32* %inpstringlen194, align 4
  %157 = load %struct.inpdata*, %struct.inpdata** %inpdata, align 8
  %inp195 = getelementptr inbounds %struct.inpdata, %struct.inpdata* %157, i32 0, i32 0
  %pos196 = getelementptr inbounds %struct.inpline, %struct.inpline* %inp195, i32 0, i32 2
  %158 = load i32, i32* %pos196, align 4
  %add197 = add nsw i32 %156, %158
  store i32 %add197, i32* %x, align 4
  %159 = load %struct.inpdata*, %struct.inpdata** %inpdata, align 8
  %inp198 = getelementptr inbounds %struct.inpdata, %struct.inpdata* %159, i32 0, i32 0
  %len199 = getelementptr inbounds %struct.inpline, %struct.inpline* %inp198, i32 0, i32 1
  %160 = load i32, i32* %len199, align 4
  %161 = load %struct.inpdata*, %struct.inpdata** %inpdata, align 8
  %inp200 = getelementptr inbounds %struct.inpdata, %struct.inpdata* %161, i32 0, i32 0
  %pos201 = getelementptr inbounds %struct.inpline, %struct.inpline* %inp200, i32 0, i32 2
  %162 = load i32, i32* %pos201, align 4
  %cmp202 = icmp sgt i32 %160, %162
  br i1 %cmp202, label %land.lhs.true.204, label %if.end.222

land.lhs.true.204:                                ; preds = %if.then.193
  %163 = load %struct.inpdata*, %struct.inpdata** %inpdata, align 8
  %inpmode205 = getelementptr inbounds %struct.inpdata, %struct.inpdata* %163, i32 0, i32 4
  %164 = load i32, i32* %inpmode205, align 4
  %and206 = and i32 %164, 1
  %tobool207 = icmp ne i32 %and206, 0
  br i1 %tobool207, label %if.end.222, label %if.then.208

if.then.208:                                      ; preds = %land.lhs.true.204
  %165 = load %struct.layer*, %struct.layer** @flayer, align 8
  %166 = load i32, i32* %x, align 4
  %167 = load %struct.layer*, %struct.layer** @flayer, align 8
  %l_height209 = getelementptr inbounds %struct.layer, %struct.layer* %167, i32 0, i32 2
  %168 = load i32, i32* %l_height209, align 4
  %sub210 = sub nsw i32 %168, 1
  %169 = load i32, i32* %x, align 4
  %170 = load %struct.inpdata*, %struct.inpdata** %inpdata, align 8
  %inp211 = getelementptr inbounds %struct.inpdata, %struct.inpdata* %170, i32 0, i32 0
  %len212 = getelementptr inbounds %struct.inpline, %struct.inpline* %inp211, i32 0, i32 1
  %171 = load i32, i32* %len212, align 4
  %add213 = add nsw i32 %169, %171
  %172 = load %struct.inpdata*, %struct.inpdata** %inpdata, align 8
  %inp214 = getelementptr inbounds %struct.inpdata, %struct.inpdata* %172, i32 0, i32 0
  %pos215 = getelementptr inbounds %struct.inpline, %struct.inpline* %inp214, i32 0, i32 2
  %173 = load i32, i32* %pos215, align 4
  %sub216 = sub nsw i32 %add213, %173
  %sub217 = sub nsw i32 %sub216, 1
  %174 = load %struct.layer*, %struct.layer** @flayer, align 8
  %l_height218 = getelementptr inbounds %struct.layer, %struct.layer* %174, i32 0, i32 2
  %175 = load i32, i32* %l_height218, align 4
  %sub219 = sub nsw i32 %175, 1
  call void @LClearArea(%struct.layer* %165, i32 %166, i32 %sub210, i32 %sub217, i32 %sub219, i32 0, i32 0)
  %176 = load %struct.layer*, %struct.layer** @flayer, align 8
  %177 = load i32, i32* %x, align 4
  %178 = load %struct.layer*, %struct.layer** @flayer, align 8
  %l_height220 = getelementptr inbounds %struct.layer, %struct.layer* %178, i32 0, i32 2
  %179 = load i32, i32* %l_height220, align 4
  %sub221 = sub nsw i32 %179, 1
  call void @LGotoPos(%struct.layer* %176, i32 %177, i32 %sub221)
  br label %if.end.222

if.end.222:                                       ; preds = %if.then.208, %land.lhs.true.204, %if.then.193
  %180 = load %struct.inpdata*, %struct.inpdata** %inpdata, align 8
  %inp223 = getelementptr inbounds %struct.inpdata, %struct.inpdata* %180, i32 0, i32 0
  %pos224 = getelementptr inbounds %struct.inpline, %struct.inpline* %inp223, i32 0, i32 2
  %181 = load i32, i32* %pos224, align 4
  %182 = load %struct.inpdata*, %struct.inpdata** %inpdata, align 8
  %inp225 = getelementptr inbounds %struct.inpdata, %struct.inpdata* %182, i32 0, i32 0
  %len226 = getelementptr inbounds %struct.inpline, %struct.inpline* %inp225, i32 0, i32 1
  store i32 %181, i32* %len226, align 4
  br label %if.end.703

if.else.227:                                      ; preds = %if.else.189
  %183 = load i8, i8* %ch, align 1
  %conv228 = sext i8 %183 to i32
  %cmp229 = icmp eq i32 %conv228, 23
  br i1 %cmp229, label %land.lhs.true.231, label %if.else.279

land.lhs.true.231:                                ; preds = %if.else.227
  %184 = load %struct.inpdata*, %struct.inpdata** %inpdata, align 8
  %inp232 = getelementptr inbounds %struct.inpdata, %struct.inpdata* %184, i32 0, i32 0
  %pos233 = getelementptr inbounds %struct.inpline, %struct.inpline* %inp232, i32 0, i32 2
  %185 = load i32, i32* %pos233, align 4
  %cmp234 = icmp sgt i32 %185, 0
  br i1 %cmp234, label %if.then.236, label %if.else.279

if.then.236:                                      ; preds = %land.lhs.true.231
  %186 = load i8*, i8** %p, align 8
  %incdec.ptr237 = getelementptr inbounds i8, i8* %186, i32 -1
  store i8* %incdec.ptr237, i8** %p, align 8
  store i8* %186, i8** %oldp, align 8
  br label %while.cond.238

while.cond.238:                                   ; preds = %while.body.247, %if.then.236
  %187 = load i8*, i8** %p, align 8
  %188 = load %struct.inpdata*, %struct.inpdata** %inpdata, align 8
  %inp239 = getelementptr inbounds %struct.inpdata, %struct.inpdata* %188, i32 0, i32 0
  %buf240 = getelementptr inbounds %struct.inpline, %struct.inpline* %inp239, i32 0, i32 0
  %arraydecay241 = getelementptr inbounds [769 x i8], [769 x i8]* %buf240, i32 0, i32 0
  %cmp242 = icmp ugt i8* %187, %arraydecay241
  br i1 %cmp242, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %while.cond.238
  %189 = load i8*, i8** %p, align 8
  %190 = load i8, i8* %189, align 1
  %conv244 = sext i8 %190 to i32
  %cmp245 = icmp eq i32 %conv244, 32
  br label %land.end

land.end:                                         ; preds = %land.rhs, %while.cond.238
  %191 = phi i1 [ false, %while.cond.238 ], [ %cmp245, %land.rhs ]
  br i1 %191, label %while.body.247, label %while.end.249

while.body.247:                                   ; preds = %land.end
  %192 = load i8*, i8** %p, align 8
  %incdec.ptr248 = getelementptr inbounds i8, i8* %192, i32 -1
  store i8* %incdec.ptr248, i8** %p, align 8
  br label %while.cond.238

while.end.249:                                    ; preds = %land.end
  br label %while.cond.250

while.cond.250:                                   ; preds = %while.body.262, %while.end.249
  %193 = load i8*, i8** %p, align 8
  %194 = load %struct.inpdata*, %struct.inpdata** %inpdata, align 8
  %inp251 = getelementptr inbounds %struct.inpdata, %struct.inpdata* %194, i32 0, i32 0
  %buf252 = getelementptr inbounds %struct.inpline, %struct.inpline* %inp251, i32 0, i32 0
  %arraydecay253 = getelementptr inbounds [769 x i8], [769 x i8]* %buf252, i32 0, i32 0
  %cmp254 = icmp ugt i8* %193, %arraydecay253
  br i1 %cmp254, label %land.rhs.256, label %land.end.261

land.rhs.256:                                     ; preds = %while.cond.250
  %195 = load i8*, i8** %p, align 8
  %add.ptr257 = getelementptr inbounds i8, i8* %195, i64 -1
  %196 = load i8, i8* %add.ptr257, align 1
  %conv258 = sext i8 %196 to i32
  %cmp259 = icmp ne i32 %conv258, 32
  br label %land.end.261

land.end.261:                                     ; preds = %land.rhs.256, %while.cond.250
  %197 = phi i1 [ false, %while.cond.250 ], [ %cmp259, %land.rhs.256 ]
  br i1 %197, label %while.body.262, label %while.end.264

while.body.262:                                   ; preds = %land.end.261
  %198 = load i8*, i8** %p, align 8
  %incdec.ptr263 = getelementptr inbounds i8, i8* %198, i32 -1
  store i8* %incdec.ptr263, i8** %p, align 8
  br label %while.cond.250

while.end.264:                                    ; preds = %land.end.261
  %199 = load %struct.inpdata*, %struct.inpdata** %inpdata, align 8
  %200 = load i8*, i8** %p, align 8
  %201 = load i8*, i8** %oldp, align 8
  %202 = load i32, i32* %x, align 4
  call void @erase_chars(%struct.inpdata* %199, i8* %200, i8* %201, i32 %202, i32 1)
  br label %do.body.265

do.body.265:                                      ; preds = %while.end.264
  %203 = load %struct.inpdata*, %struct.inpdata** %inpdata, align 8
  %search266 = getelementptr inbounds %struct.inpdata, %struct.inpdata* %203, i32 0, i32 8
  %204 = load i8*, i8** %search266, align 8
  %tobool267 = icmp ne i8* %204, null
  br i1 %tobool267, label %if.then.268, label %if.end.277

if.then.268:                                      ; preds = %do.body.265
  %205 = load %struct.inpdata*, %struct.inpdata** %inpdata, align 8
  %search269 = getelementptr inbounds %struct.inpdata, %struct.inpdata* %205, i32 0, i32 8
  %206 = load i8*, i8** %search269, align 8
  %cmp270 = icmp eq i8* %206, null
  br i1 %cmp270, label %if.then.272, label %if.else.273

if.then.272:                                      ; preds = %if.then.268
  call void @abort() #7
  unreachable

if.else.273:                                      ; preds = %if.then.268
  %207 = load %struct.inpdata*, %struct.inpdata** %inpdata, align 8
  %search274 = getelementptr inbounds %struct.inpdata, %struct.inpdata* %207, i32 0, i32 8
  %208 = load i8*, i8** %search274, align 8
  call void @free(i8* %208) #4
  br label %if.end.275

if.end.275:                                       ; preds = %if.else.273
  %209 = load %struct.inpdata*, %struct.inpdata** %inpdata, align 8
  %search276 = getelementptr inbounds %struct.inpdata, %struct.inpdata* %209, i32 0, i32 8
  store i8* null, i8** %search276, align 8
  br label %if.end.277

if.end.277:                                       ; preds = %if.end.275, %do.body.265
  br label %do.end.278

do.end.278:                                       ; preds = %if.end.277
  br label %if.end.702

if.else.279:                                      ; preds = %land.lhs.true.231, %if.else.227
  %210 = load i8, i8* %ch, align 1
  %conv280 = sext i8 %210 to i32
  %cmp281 = icmp eq i32 %conv280, 4
  br i1 %cmp281, label %land.lhs.true.283, label %if.else.306

land.lhs.true.283:                                ; preds = %if.else.279
  %211 = load %struct.inpdata*, %struct.inpdata** %inpdata, align 8
  %inp284 = getelementptr inbounds %struct.inpdata, %struct.inpdata* %211, i32 0, i32 0
  %pos285 = getelementptr inbounds %struct.inpline, %struct.inpline* %inp284, i32 0, i32 2
  %212 = load i32, i32* %pos285, align 4
  %213 = load %struct.inpdata*, %struct.inpdata** %inpdata, align 8
  %inp286 = getelementptr inbounds %struct.inpdata, %struct.inpdata* %213, i32 0, i32 0
  %len287 = getelementptr inbounds %struct.inpline, %struct.inpline* %inp286, i32 0, i32 1
  %214 = load i32, i32* %len287, align 4
  %cmp288 = icmp slt i32 %212, %214
  br i1 %cmp288, label %if.then.290, label %if.else.306

if.then.290:                                      ; preds = %land.lhs.true.283
  %215 = load %struct.inpdata*, %struct.inpdata** %inpdata, align 8
  %216 = load i8*, i8** %p, align 8
  %217 = load i8*, i8** %p, align 8
  %add.ptr291 = getelementptr inbounds i8, i8* %217, i64 1
  %218 = load i32, i32* %x, align 4
  call void @erase_chars(%struct.inpdata* %215, i8* %216, i8* %add.ptr291, i32 %218, i32 0)
  br label %do.body.292

do.body.292:                                      ; preds = %if.then.290
  %219 = load %struct.inpdata*, %struct.inpdata** %inpdata, align 8
  %search293 = getelementptr inbounds %struct.inpdata, %struct.inpdata* %219, i32 0, i32 8
  %220 = load i8*, i8** %search293, align 8
  %tobool294 = icmp ne i8* %220, null
  br i1 %tobool294, label %if.then.295, label %if.end.304

if.then.295:                                      ; preds = %do.body.292
  %221 = load %struct.inpdata*, %struct.inpdata** %inpdata, align 8
  %search296 = getelementptr inbounds %struct.inpdata, %struct.inpdata* %221, i32 0, i32 8
  %222 = load i8*, i8** %search296, align 8
  %cmp297 = icmp eq i8* %222, null
  br i1 %cmp297, label %if.then.299, label %if.else.300

if.then.299:                                      ; preds = %if.then.295
  call void @abort() #7
  unreachable

if.else.300:                                      ; preds = %if.then.295
  %223 = load %struct.inpdata*, %struct.inpdata** %inpdata, align 8
  %search301 = getelementptr inbounds %struct.inpdata, %struct.inpdata* %223, i32 0, i32 8
  %224 = load i8*, i8** %search301, align 8
  call void @free(i8* %224) #4
  br label %if.end.302

if.end.302:                                       ; preds = %if.else.300
  %225 = load %struct.inpdata*, %struct.inpdata** %inpdata, align 8
  %search303 = getelementptr inbounds %struct.inpdata, %struct.inpdata* %225, i32 0, i32 8
  store i8* null, i8** %search303, align 8
  br label %if.end.304

if.end.304:                                       ; preds = %if.end.302, %do.body.292
  br label %do.end.305

do.end.305:                                       ; preds = %if.end.304
  br label %if.end.701

if.else.306:                                      ; preds = %land.lhs.true.283, %if.else.279
  %226 = load i8, i8* %ch, align 1
  %conv307 = sext i8 %226 to i32
  %cmp308 = icmp eq i32 %conv307, 1
  br i1 %cmp308, label %if.then.314, label %lor.lhs.false.310

lor.lhs.false.310:                                ; preds = %if.else.306
  %227 = load i8, i8* %ch, align 1
  %conv311 = zext i8 %227 to i32
  %cmp312 = icmp eq i32 %conv311, 129
  br i1 %cmp312, label %if.then.314, label %if.else.322

if.then.314:                                      ; preds = %lor.lhs.false.310, %if.else.306
  %228 = load %struct.layer*, %struct.layer** @flayer, align 8
  %229 = load %struct.inpdata*, %struct.inpdata** %inpdata, align 8
  %inp315 = getelementptr inbounds %struct.inpdata, %struct.inpdata* %229, i32 0, i32 0
  %pos316 = getelementptr inbounds %struct.inpline, %struct.inpline* %inp315, i32 0, i32 2
  %230 = load i32, i32* %pos316, align 4
  %231 = load i32, i32* %x, align 4
  %sub317 = sub nsw i32 %231, %230
  store i32 %sub317, i32* %x, align 4
  %232 = load %struct.layer*, %struct.layer** @flayer, align 8
  %l_height318 = getelementptr inbounds %struct.layer, %struct.layer* %232, i32 0, i32 2
  %233 = load i32, i32* %l_height318, align 4
  %sub319 = sub nsw i32 %233, 1
  call void @LGotoPos(%struct.layer* %228, i32 %sub317, i32 %sub319)
  %234 = load %struct.inpdata*, %struct.inpdata** %inpdata, align 8
  %inp320 = getelementptr inbounds %struct.inpdata, %struct.inpdata* %234, i32 0, i32 0
  %pos321 = getelementptr inbounds %struct.inpline, %struct.inpline* %inp320, i32 0, i32 2
  store i32 0, i32* %pos321, align 4
  br label %if.end.700

if.else.322:                                      ; preds = %lor.lhs.false.310
  %235 = load i8, i8* %ch, align 1
  %conv323 = sext i8 %235 to i32
  %cmp324 = icmp eq i32 %conv323, 2
  br i1 %cmp324, label %land.lhs.true.330, label %lor.lhs.false.326

lor.lhs.false.326:                                ; preds = %if.else.322
  %236 = load i8, i8* %ch, align 1
  %conv327 = zext i8 %236 to i32
  %cmp328 = icmp eq i32 %conv327, 130
  br i1 %cmp328, label %land.lhs.true.330, label %if.else.342

land.lhs.true.330:                                ; preds = %lor.lhs.false.326, %if.else.322
  %237 = load %struct.inpdata*, %struct.inpdata** %inpdata, align 8
  %inp331 = getelementptr inbounds %struct.inpdata, %struct.inpdata* %237, i32 0, i32 0
  %pos332 = getelementptr inbounds %struct.inpline, %struct.inpline* %inp331, i32 0, i32 2
  %238 = load i32, i32* %pos332, align 4
  %cmp333 = icmp sgt i32 %238, 0
  br i1 %cmp333, label %if.then.335, label %if.else.342

if.then.335:                                      ; preds = %land.lhs.true.330
  %239 = load %struct.layer*, %struct.layer** @flayer, align 8
  %240 = load i32, i32* %x, align 4
  %dec336 = add nsw i32 %240, -1
  store i32 %dec336, i32* %x, align 4
  %241 = load %struct.layer*, %struct.layer** @flayer, align 8
  %l_height337 = getelementptr inbounds %struct.layer, %struct.layer* %241, i32 0, i32 2
  %242 = load i32, i32* %l_height337, align 4
  %sub338 = sub nsw i32 %242, 1
  call void @LGotoPos(%struct.layer* %239, i32 %dec336, i32 %sub338)
  %243 = load %struct.inpdata*, %struct.inpdata** %inpdata, align 8
  %inp339 = getelementptr inbounds %struct.inpdata, %struct.inpdata* %243, i32 0, i32 0
  %pos340 = getelementptr inbounds %struct.inpline, %struct.inpline* %inp339, i32 0, i32 2
  %244 = load i32, i32* %pos340, align 4
  %dec341 = add nsw i32 %244, -1
  store i32 %dec341, i32* %pos340, align 4
  br label %if.end.699

if.else.342:                                      ; preds = %land.lhs.true.330, %lor.lhs.false.326
  %245 = load i8, i8* %ch, align 1
  %conv343 = sext i8 %245 to i32
  %cmp344 = icmp eq i32 %conv343, 5
  br i1 %cmp344, label %if.then.350, label %lor.lhs.false.346

lor.lhs.false.346:                                ; preds = %if.else.342
  %246 = load i8, i8* %ch, align 1
  %conv347 = zext i8 %246 to i32
  %cmp348 = icmp eq i32 %conv347, 133
  br i1 %cmp348, label %if.then.350, label %if.else.363

if.then.350:                                      ; preds = %lor.lhs.false.346, %if.else.342
  %247 = load %struct.layer*, %struct.layer** @flayer, align 8
  %248 = load %struct.inpdata*, %struct.inpdata** %inpdata, align 8
  %inp351 = getelementptr inbounds %struct.inpdata, %struct.inpdata* %248, i32 0, i32 0
  %len352 = getelementptr inbounds %struct.inpline, %struct.inpline* %inp351, i32 0, i32 1
  %249 = load i32, i32* %len352, align 4
  %250 = load %struct.inpdata*, %struct.inpdata** %inpdata, align 8
  %inp353 = getelementptr inbounds %struct.inpdata, %struct.inpdata* %250, i32 0, i32 0
  %pos354 = getelementptr inbounds %struct.inpline, %struct.inpline* %inp353, i32 0, i32 2
  %251 = load i32, i32* %pos354, align 4
  %sub355 = sub nsw i32 %249, %251
  %252 = load i32, i32* %x, align 4
  %add356 = add nsw i32 %252, %sub355
  store i32 %add356, i32* %x, align 4
  %253 = load %struct.layer*, %struct.layer** @flayer, align 8
  %l_height357 = getelementptr inbounds %struct.layer, %struct.layer* %253, i32 0, i32 2
  %254 = load i32, i32* %l_height357, align 4
  %sub358 = sub nsw i32 %254, 1
  call void @LGotoPos(%struct.layer* %247, i32 %add356, i32 %sub358)
  %255 = load %struct.inpdata*, %struct.inpdata** %inpdata, align 8
  %inp359 = getelementptr inbounds %struct.inpdata, %struct.inpdata* %255, i32 0, i32 0
  %len360 = getelementptr inbounds %struct.inpline, %struct.inpline* %inp359, i32 0, i32 1
  %256 = load i32, i32* %len360, align 4
  %257 = load %struct.inpdata*, %struct.inpdata** %inpdata, align 8
  %inp361 = getelementptr inbounds %struct.inpdata, %struct.inpdata* %257, i32 0, i32 0
  %pos362 = getelementptr inbounds %struct.inpline, %struct.inpline* %inp361, i32 0, i32 2
  store i32 %256, i32* %pos362, align 4
  br label %if.end.698

if.else.363:                                      ; preds = %lor.lhs.false.346
  %258 = load i8, i8* %ch, align 1
  %conv364 = sext i8 %258 to i32
  %cmp365 = icmp eq i32 %conv364, 6
  br i1 %cmp365, label %land.lhs.true.371, label %lor.lhs.false.367

lor.lhs.false.367:                                ; preds = %if.else.363
  %259 = load i8, i8* %ch, align 1
  %conv368 = zext i8 %259 to i32
  %cmp369 = icmp eq i32 %conv368, 134
  br i1 %cmp369, label %land.lhs.true.371, label %if.else.385

land.lhs.true.371:                                ; preds = %lor.lhs.false.367, %if.else.363
  %260 = load %struct.inpdata*, %struct.inpdata** %inpdata, align 8
  %inp372 = getelementptr inbounds %struct.inpdata, %struct.inpdata* %260, i32 0, i32 0
  %pos373 = getelementptr inbounds %struct.inpline, %struct.inpline* %inp372, i32 0, i32 2
  %261 = load i32, i32* %pos373, align 4
  %262 = load %struct.inpdata*, %struct.inpdata** %inpdata, align 8
  %inp374 = getelementptr inbounds %struct.inpdata, %struct.inpdata* %262, i32 0, i32 0
  %len375 = getelementptr inbounds %struct.inpline, %struct.inpline* %inp374, i32 0, i32 1
  %263 = load i32, i32* %len375, align 4
  %cmp376 = icmp slt i32 %261, %263
  br i1 %cmp376, label %if.then.378, label %if.else.385

if.then.378:                                      ; preds = %land.lhs.true.371
  %264 = load %struct.layer*, %struct.layer** @flayer, align 8
  %265 = load i32, i32* %x, align 4
  %inc379 = add nsw i32 %265, 1
  store i32 %inc379, i32* %x, align 4
  %266 = load %struct.layer*, %struct.layer** @flayer, align 8
  %l_height380 = getelementptr inbounds %struct.layer, %struct.layer* %266, i32 0, i32 2
  %267 = load i32, i32* %l_height380, align 4
  %sub381 = sub nsw i32 %267, 1
  call void @LGotoPos(%struct.layer* %264, i32 %inc379, i32 %sub381)
  %268 = load %struct.inpdata*, %struct.inpdata** %inpdata, align 8
  %inp382 = getelementptr inbounds %struct.inpdata, %struct.inpdata* %268, i32 0, i32 0
  %pos383 = getelementptr inbounds %struct.inpline, %struct.inpline* %inp382, i32 0, i32 2
  %269 = load i32, i32* %pos383, align 4
  %inc384 = add nsw i32 %269, 1
  store i32 %inc384, i32* %pos383, align 4
  br label %if.end.697

if.else.385:                                      ; preds = %land.lhs.true.371, %lor.lhs.false.367
  %270 = load i8, i8* %ch, align 1
  %conv386 = sext i8 %270 to i32
  %cmp387 = icmp eq i32 %conv386, 16
  br i1 %cmp387, label %land.rhs.393, label %lor.lhs.false.389

lor.lhs.false.389:                                ; preds = %if.else.385
  %271 = load i8, i8* %ch, align 1
  %conv390 = zext i8 %271 to i32
  %cmp391 = icmp eq i32 %conv390, 144
  br i1 %cmp391, label %land.rhs.393, label %land.end.397

land.rhs.393:                                     ; preds = %lor.lhs.false.389, %if.else.385
  %272 = load %struct.inpdata*, %struct.inpdata** %inpdata, align 8
  %inp394 = getelementptr inbounds %struct.inpdata, %struct.inpdata* %272, i32 0, i32 0
  %prev395 = getelementptr inbounds %struct.inpline, %struct.inpline* %inp394, i32 0, i32 4
  %273 = load %struct.inpline*, %struct.inpline** %prev395, align 8
  %tobool396 = icmp ne %struct.inpline* %273, null
  br label %land.end.397

land.end.397:                                     ; preds = %land.rhs.393, %lor.lhs.false.389
  %274 = phi i1 [ false, %lor.lhs.false.389 ], [ %tobool396, %land.rhs.393 ]
  %land.ext = zext i1 %274 to i32
  store i32 %land.ext, i32* %prev, align 4
  br i1 %274, label %if.then.426, label %lor.lhs.false.398

lor.lhs.false.398:                                ; preds = %land.end.397
  %275 = load i8, i8* %ch, align 1
  %conv399 = sext i8 %275 to i32
  %cmp400 = icmp eq i32 %conv399, 14
  br i1 %cmp400, label %land.rhs.406, label %lor.lhs.false.402

lor.lhs.false.402:                                ; preds = %lor.lhs.false.398
  %276 = load i8, i8* %ch, align 1
  %conv403 = zext i8 %276 to i32
  %cmp404 = icmp eq i32 %conv403, 142
  br i1 %cmp404, label %land.rhs.406, label %land.end.410

land.rhs.406:                                     ; preds = %lor.lhs.false.402, %lor.lhs.false.398
  %277 = load %struct.inpdata*, %struct.inpdata** %inpdata, align 8
  %inp407 = getelementptr inbounds %struct.inpdata, %struct.inpdata* %277, i32 0, i32 0
  %next408 = getelementptr inbounds %struct.inpline, %struct.inpline* %inp407, i32 0, i32 3
  %278 = load %struct.inpline*, %struct.inpline** %next408, align 8
  %tobool409 = icmp ne %struct.inpline* %278, null
  br label %land.end.410

land.end.410:                                     ; preds = %land.rhs.406, %lor.lhs.false.402
  %279 = phi i1 [ false, %lor.lhs.false.402 ], [ %tobool409, %land.rhs.406 ]
  %land.ext411 = zext i1 %279 to i32
  store i32 %land.ext411, i32* %next, align 4
  br i1 %279, label %if.then.426, label %lor.lhs.false.412

lor.lhs.false.412:                                ; preds = %land.end.410
  %280 = load i8, i8* %ch, align 1
  %conv413 = sext i8 %280 to i32
  %cmp414 = icmp eq i32 %conv413, 18
  br i1 %cmp414, label %land.rhs.420, label %lor.lhs.false.416

lor.lhs.false.416:                                ; preds = %lor.lhs.false.412
  %281 = load i8, i8* %ch, align 1
  %conv417 = zext i8 %281 to i32
  %cmp418 = icmp eq i32 %conv417, 146
  br i1 %cmp418, label %land.rhs.420, label %land.end.424

land.rhs.420:                                     ; preds = %lor.lhs.false.416, %lor.lhs.false.412
  %282 = load %struct.inpdata*, %struct.inpdata** %inpdata, align 8
  %inp421 = getelementptr inbounds %struct.inpdata, %struct.inpdata* %282, i32 0, i32 0
  %prev422 = getelementptr inbounds %struct.inpline, %struct.inpline* %inp421, i32 0, i32 4
  %283 = load %struct.inpline*, %struct.inpline** %prev422, align 8
  %tobool423 = icmp ne %struct.inpline* %283, null
  br label %land.end.424

land.end.424:                                     ; preds = %land.rhs.420, %lor.lhs.false.416
  %284 = phi i1 [ false, %lor.lhs.false.416 ], [ %tobool423, %land.rhs.420 ]
  %land.ext425 = zext i1 %284 to i32
  store i32 %land.ext425, i32* %search, align 4
  br i1 %284, label %if.then.426, label %if.else.562

if.then.426:                                      ; preds = %land.end.424, %land.end.410, %land.end.397
  store i32 -1, i32* %pos428, align 4
  %285 = bitcast %struct.mchar* %mc427 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %285, i8* getelementptr inbounds (%struct.mchar, %struct.mchar* @mchar_so, i32 0, i32 0), i64 6, i32 1, i1 false)
  %286 = load i32, i32* %prev, align 4
  %tobool429 = icmp ne i32 %286, 0
  br i1 %tobool429, label %if.then.430, label %if.else.433

if.then.430:                                      ; preds = %if.then.426
  %287 = load %struct.inpdata*, %struct.inpdata** %inpdata, align 8
  %inp431 = getelementptr inbounds %struct.inpdata, %struct.inpdata* %287, i32 0, i32 0
  %prev432 = getelementptr inbounds %struct.inpline, %struct.inpline* %inp431, i32 0, i32 4
  %288 = load %struct.inpline*, %struct.inpline** %prev432, align 8
  store %struct.inpline* %288, %struct.inpline** %sel, align 8
  br label %if.end.471

if.else.433:                                      ; preds = %if.then.426
  %289 = load i32, i32* %next, align 4
  %tobool434 = icmp ne i32 %289, 0
  br i1 %tobool434, label %if.then.435, label %if.else.438

if.then.435:                                      ; preds = %if.else.433
  %290 = load %struct.inpdata*, %struct.inpdata** %inpdata, align 8
  %inp436 = getelementptr inbounds %struct.inpdata, %struct.inpdata* %290, i32 0, i32 0
  %next437 = getelementptr inbounds %struct.inpline, %struct.inpline* %inp436, i32 0, i32 3
  %291 = load %struct.inpline*, %struct.inpline** %next437, align 8
  store %struct.inpline* %291, %struct.inpline** %sel, align 8
  br label %if.end.470

if.else.438:                                      ; preds = %if.else.433
  %292 = load %struct.inpdata*, %struct.inpdata** %inpdata, align 8
  %inp439 = getelementptr inbounds %struct.inpdata, %struct.inpdata* %292, i32 0, i32 0
  %len440 = getelementptr inbounds %struct.inpline, %struct.inpline* %inp439, i32 0, i32 1
  %293 = load i32, i32* %len440, align 4
  %idxprom441 = sext i32 %293 to i64
  %294 = load %struct.inpdata*, %struct.inpdata** %inpdata, align 8
  %inp442 = getelementptr inbounds %struct.inpdata, %struct.inpdata* %294, i32 0, i32 0
  %buf443 = getelementptr inbounds %struct.inpline, %struct.inpline* %inp442, i32 0, i32 0
  %arrayidx444 = getelementptr inbounds [769 x i8], [769 x i8]* %buf443, i32 0, i64 %idxprom441
  store i8 0, i8* %arrayidx444, align 1
  %295 = load %struct.inpdata*, %struct.inpdata** %inpdata, align 8
  %search445 = getelementptr inbounds %struct.inpdata, %struct.inpdata* %295, i32 0, i32 8
  %296 = load i8*, i8** %search445, align 8
  %tobool446 = icmp ne i8* %296, null
  br i1 %tobool446, label %if.end.452, label %if.then.447

if.then.447:                                      ; preds = %if.else.438
  %297 = load %struct.inpdata*, %struct.inpdata** %inpdata, align 8
  %inp448 = getelementptr inbounds %struct.inpdata, %struct.inpdata* %297, i32 0, i32 0
  %buf449 = getelementptr inbounds %struct.inpline, %struct.inpline* %inp448, i32 0, i32 0
  %arraydecay450 = getelementptr inbounds [769 x i8], [769 x i8]* %buf449, i32 0, i32 0
  %call = call i8* @SaveStr(i8* %arraydecay450)
  %298 = load %struct.inpdata*, %struct.inpdata** %inpdata, align 8
  %search451 = getelementptr inbounds %struct.inpdata, %struct.inpdata* %298, i32 0, i32 8
  store i8* %call, i8** %search451, align 8
  br label %if.end.452

if.end.452:                                       ; preds = %if.then.447, %if.else.438
  %299 = load %struct.inpdata*, %struct.inpdata** %inpdata, align 8
  %inp453 = getelementptr inbounds %struct.inpdata, %struct.inpdata* %299, i32 0, i32 0
  %prev454 = getelementptr inbounds %struct.inpline, %struct.inpline* %inp453, i32 0, i32 4
  %300 = load %struct.inpline*, %struct.inpline** %prev454, align 8
  store %struct.inpline* %300, %struct.inpline** %sel, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end.452
  %301 = load %struct.inpline*, %struct.inpline** %sel, align 8
  %tobool455 = icmp ne %struct.inpline* %301, null
  br i1 %tobool455, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %302 = load %struct.inpline*, %struct.inpline** %sel, align 8
  %buf456 = getelementptr inbounds %struct.inpline, %struct.inpline* %302, i32 0, i32 0
  %arraydecay457 = getelementptr inbounds [769 x i8], [769 x i8]* %buf456, i32 0, i32 0
  %303 = load %struct.inpdata*, %struct.inpdata** %inpdata, align 8
  %search458 = getelementptr inbounds %struct.inpdata, %struct.inpdata* %303, i32 0, i32 8
  %304 = load i8*, i8** %search458, align 8
  %call459 = call i8* @strstr(i8* %arraydecay457, i8* %304) #6
  store i8* %call459, i8** %f, align 8
  %tobool460 = icmp ne i8* %call459, null
  br i1 %tobool460, label %if.then.461, label %if.end.465

if.then.461:                                      ; preds = %for.body
  %305 = load i8*, i8** %f, align 8
  %306 = load %struct.inpline*, %struct.inpline** %sel, align 8
  %buf462 = getelementptr inbounds %struct.inpline, %struct.inpline* %306, i32 0, i32 0
  %arraydecay463 = getelementptr inbounds [769 x i8], [769 x i8]* %buf462, i32 0, i32 0
  %sub.ptr.lhs.cast = ptrtoint i8* %305 to i64
  %sub.ptr.rhs.cast = ptrtoint i8* %arraydecay463 to i64
  %sub.ptr.sub = sub i64 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast
  %conv464 = trunc i64 %sub.ptr.sub to i32
  store i32 %conv464, i32* %pos428, align 4
  br label %for.end

if.end.465:                                       ; preds = %for.body
  br label %for.inc

for.inc:                                          ; preds = %if.end.465
  %307 = load %struct.inpline*, %struct.inpline** %sel, align 8
  %prev466 = getelementptr inbounds %struct.inpline, %struct.inpline* %307, i32 0, i32 4
  %308 = load %struct.inpline*, %struct.inpline** %prev466, align 8
  store %struct.inpline* %308, %struct.inpline** %sel, align 8
  br label %for.cond

for.end:                                          ; preds = %if.then.461, %for.cond
  %309 = load %struct.inpline*, %struct.inpline** %sel, align 8
  %tobool467 = icmp ne %struct.inpline* %309, null
  br i1 %tobool467, label %if.end.469, label %if.then.468

if.then.468:                                      ; preds = %for.end
  br label %while.cond

if.end.469:                                       ; preds = %for.end
  br label %if.end.470

if.end.470:                                       ; preds = %if.end.469, %if.then.435
  br label %if.end.471

if.end.471:                                       ; preds = %if.end.470, %if.then.430
  %310 = load %struct.inpdata*, %struct.inpdata** %inpdata, align 8
  %inp472 = getelementptr inbounds %struct.inpdata, %struct.inpdata* %310, i32 0, i32 0
  %len473 = getelementptr inbounds %struct.inpline, %struct.inpline* %inp472, i32 0, i32 1
  %311 = load i32, i32* %len473, align 4
  %tobool474 = icmp ne i32 %311, 0
  br i1 %tobool474, label %land.lhs.true.475, label %if.end.490

land.lhs.true.475:                                ; preds = %if.end.471
  %312 = load %struct.inpdata*, %struct.inpdata** %inpdata, align 8
  %inpmode476 = getelementptr inbounds %struct.inpdata, %struct.inpdata* %312, i32 0, i32 4
  %313 = load i32, i32* %inpmode476, align 4
  %and477 = and i32 %313, 1
  %tobool478 = icmp ne i32 %and477, 0
  br i1 %tobool478, label %if.end.490, label %if.then.479

if.then.479:                                      ; preds = %land.lhs.true.475
  %314 = load %struct.layer*, %struct.layer** @flayer, align 8
  %315 = load %struct.inpdata*, %struct.inpdata** %inpdata, align 8
  %inpstringlen480 = getelementptr inbounds %struct.inpdata, %struct.inpdata* %315, i32 0, i32 3
  %316 = load i32, i32* %inpstringlen480, align 4
  %317 = load %struct.layer*, %struct.layer** @flayer, align 8
  %l_height481 = getelementptr inbounds %struct.layer, %struct.layer* %317, i32 0, i32 2
  %318 = load i32, i32* %l_height481, align 4
  %sub482 = sub nsw i32 %318, 1
  %319 = load %struct.inpdata*, %struct.inpdata** %inpdata, align 8
  %inpstringlen483 = getelementptr inbounds %struct.inpdata, %struct.inpdata* %319, i32 0, i32 3
  %320 = load i32, i32* %inpstringlen483, align 4
  %321 = load %struct.inpdata*, %struct.inpdata** %inpdata, align 8
  %inp484 = getelementptr inbounds %struct.inpdata, %struct.inpdata* %321, i32 0, i32 0
  %len485 = getelementptr inbounds %struct.inpline, %struct.inpline* %inp484, i32 0, i32 1
  %322 = load i32, i32* %len485, align 4
  %add486 = add nsw i32 %320, %322
  %sub487 = sub nsw i32 %add486, 1
  %323 = load %struct.layer*, %struct.layer** @flayer, align 8
  %l_height488 = getelementptr inbounds %struct.layer, %struct.layer* %323, i32 0, i32 2
  %324 = load i32, i32* %l_height488, align 4
  %sub489 = sub nsw i32 %324, 1
  call void @LClearArea(%struct.layer* %314, i32 %316, i32 %sub482, i32 %sub487, i32 %sub489, i32 0, i32 0)
  br label %if.end.490

if.end.490:                                       ; preds = %if.then.479, %land.lhs.true.475, %if.end.471
  %325 = load i32, i32* %prev, align 4
  %tobool491 = icmp ne i32 %325, 0
  br i1 %tobool491, label %land.lhs.true.494, label %lor.lhs.false.492

lor.lhs.false.492:                                ; preds = %if.end.490
  %326 = load i32, i32* %search, align 4
  %tobool493 = icmp ne i32 %326, 0
  br i1 %tobool493, label %land.lhs.true.494, label %if.end.500

land.lhs.true.494:                                ; preds = %lor.lhs.false.492, %if.end.490
  %327 = load %struct.inpdata*, %struct.inpdata** %inpdata, align 8
  %inp495 = getelementptr inbounds %struct.inpdata, %struct.inpdata* %327, i32 0, i32 0
  %next496 = getelementptr inbounds %struct.inpline, %struct.inpline* %inp495, i32 0, i32 3
  %328 = load %struct.inpline*, %struct.inpline** %next496, align 8
  %tobool497 = icmp ne %struct.inpline* %328, null
  br i1 %tobool497, label %if.end.500, label %if.then.498

if.then.498:                                      ; preds = %land.lhs.true.494
  %329 = load %struct.inpdata*, %struct.inpdata** %inpdata, align 8
  %inp499 = getelementptr inbounds %struct.inpdata, %struct.inpdata* %329, i32 0, i32 0
  %330 = bitcast %struct.inpline* %inp499 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* getelementptr inbounds (%struct.inpline, %struct.inpline* @inphist, i32 0, i32 0, i32 0), i8* %330, i64 800, i32 8, i1 false)
  br label %if.end.500

if.end.500:                                       ; preds = %if.then.498, %land.lhs.true.494, %lor.lhs.false.492
  %331 = load %struct.inpdata*, %struct.inpdata** %inpdata, align 8
  %inp501 = getelementptr inbounds %struct.inpdata, %struct.inpdata* %331, i32 0, i32 0
  %332 = bitcast %struct.inpline* %inp501 to i8*
  %333 = load %struct.inpline*, %struct.inpline** %sel, align 8
  %334 = bitcast %struct.inpline* %333 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %332, i8* %334, i64 800, i32 8, i1 false)
  %335 = load i32, i32* %pos428, align 4
  %cmp502 = icmp ne i32 %335, -1
  br i1 %cmp502, label %if.then.504, label %if.end.507

if.then.504:                                      ; preds = %if.end.500
  %336 = load i32, i32* %pos428, align 4
  %337 = load %struct.inpdata*, %struct.inpdata** %inpdata, align 8
  %inp505 = getelementptr inbounds %struct.inpdata, %struct.inpdata* %337, i32 0, i32 0
  %pos506 = getelementptr inbounds %struct.inpline, %struct.inpline* %inp505, i32 0, i32 2
  store i32 %336, i32* %pos506, align 4
  br label %if.end.507

if.end.507:                                       ; preds = %if.then.504, %if.end.500
  %338 = load %struct.inpdata*, %struct.inpdata** %inpdata, align 8
  %inp508 = getelementptr inbounds %struct.inpdata, %struct.inpdata* %338, i32 0, i32 0
  %len509 = getelementptr inbounds %struct.inpline, %struct.inpline* %inp508, i32 0, i32 1
  %339 = load i32, i32* %len509, align 4
  %340 = load %struct.inpdata*, %struct.inpdata** %inpdata, align 8
  %inpmaxlen510 = getelementptr inbounds %struct.inpdata, %struct.inpdata* %340, i32 0, i32 1
  %341 = load i32, i32* %inpmaxlen510, align 4
  %cmp511 = icmp sgt i32 %339, %341
  br i1 %cmp511, label %if.then.513, label %if.end.517

if.then.513:                                      ; preds = %if.end.507
  %342 = load %struct.inpdata*, %struct.inpdata** %inpdata, align 8
  %inpmaxlen514 = getelementptr inbounds %struct.inpdata, %struct.inpdata* %342, i32 0, i32 1
  %343 = load i32, i32* %inpmaxlen514, align 4
  %344 = load %struct.inpdata*, %struct.inpdata** %inpdata, align 8
  %inp515 = getelementptr inbounds %struct.inpdata, %struct.inpdata* %344, i32 0, i32 0
  %len516 = getelementptr inbounds %struct.inpline, %struct.inpline* %inp515, i32 0, i32 1
  store i32 %343, i32* %len516, align 4
  br label %if.end.517

if.end.517:                                       ; preds = %if.then.513, %if.end.507
  %345 = load %struct.inpdata*, %struct.inpdata** %inpdata, align 8
  %inp518 = getelementptr inbounds %struct.inpdata, %struct.inpdata* %345, i32 0, i32 0
  %pos519 = getelementptr inbounds %struct.inpline, %struct.inpline* %inp518, i32 0, i32 2
  %346 = load i32, i32* %pos519, align 4
  %347 = load %struct.inpdata*, %struct.inpdata** %inpdata, align 8
  %inp520 = getelementptr inbounds %struct.inpdata, %struct.inpdata* %347, i32 0, i32 0
  %len521 = getelementptr inbounds %struct.inpline, %struct.inpline* %inp520, i32 0, i32 1
  %348 = load i32, i32* %len521, align 4
  %cmp522 = icmp sgt i32 %346, %348
  br i1 %cmp522, label %if.then.524, label %if.end.529

if.then.524:                                      ; preds = %if.end.517
  %349 = load %struct.inpdata*, %struct.inpdata** %inpdata, align 8
  %inp525 = getelementptr inbounds %struct.inpdata, %struct.inpdata* %349, i32 0, i32 0
  %len526 = getelementptr inbounds %struct.inpline, %struct.inpline* %inp525, i32 0, i32 1
  %350 = load i32, i32* %len526, align 4
  %351 = load %struct.inpdata*, %struct.inpdata** %inpdata, align 8
  %inp527 = getelementptr inbounds %struct.inpdata, %struct.inpdata* %351, i32 0, i32 0
  %pos528 = getelementptr inbounds %struct.inpline, %struct.inpline* %inp527, i32 0, i32 2
  store i32 %350, i32* %pos528, align 4
  br label %if.end.529

if.end.529:                                       ; preds = %if.then.524, %if.end.517
  %352 = load %struct.inpdata*, %struct.inpdata** %inpdata, align 8
  %inpstringlen530 = getelementptr inbounds %struct.inpdata, %struct.inpdata* %352, i32 0, i32 3
  %353 = load i32, i32* %inpstringlen530, align 4
  store i32 %353, i32* %x, align 4
  %354 = load %struct.inpdata*, %struct.inpdata** %inpdata, align 8
  %inp531 = getelementptr inbounds %struct.inpdata, %struct.inpdata* %354, i32 0, i32 0
  %buf532 = getelementptr inbounds %struct.inpline, %struct.inpline* %inp531, i32 0, i32 0
  %arraydecay533 = getelementptr inbounds [769 x i8], [769 x i8]* %buf532, i32 0, i32 0
  store i8* %arraydecay533, i8** %p, align 8
  %355 = load %struct.inpdata*, %struct.inpdata** %inpdata, align 8
  %inpmode534 = getelementptr inbounds %struct.inpdata, %struct.inpdata* %355, i32 0, i32 4
  %356 = load i32, i32* %inpmode534, align 4
  %and535 = and i32 %356, 1
  %tobool536 = icmp ne i32 %and535, 0
  br i1 %tobool536, label %if.end.555, label %if.then.537

if.then.537:                                      ; preds = %if.end.529
  br label %while.cond.538

while.cond.538:                                   ; preds = %while.body.548, %if.then.537
  %357 = load i8*, i8** %p, align 8
  %358 = load %struct.inpdata*, %struct.inpdata** %inpdata, align 8
  %inp539 = getelementptr inbounds %struct.inpdata, %struct.inpdata* %358, i32 0, i32 0
  %buf540 = getelementptr inbounds %struct.inpline, %struct.inpline* %inp539, i32 0, i32 0
  %arraydecay541 = getelementptr inbounds [769 x i8], [769 x i8]* %buf540, i32 0, i32 0
  %359 = load %struct.inpdata*, %struct.inpdata** %inpdata, align 8
  %inp542 = getelementptr inbounds %struct.inpdata, %struct.inpdata* %359, i32 0, i32 0
  %len543 = getelementptr inbounds %struct.inpline, %struct.inpline* %inp542, i32 0, i32 1
  %360 = load i32, i32* %len543, align 4
  %idx.ext544 = sext i32 %360 to i64
  %add.ptr545 = getelementptr inbounds i8, i8* %arraydecay541, i64 %idx.ext544
  %cmp546 = icmp ult i8* %357, %add.ptr545
  br i1 %cmp546, label %while.body.548, label %while.end.554

while.body.548:                                   ; preds = %while.cond.538
  %361 = load i8*, i8** %p, align 8
  %incdec.ptr549 = getelementptr inbounds i8, i8* %361, i32 1
  store i8* %incdec.ptr549, i8** %p, align 8
  %362 = load i8, i8* %361, align 1
  %image550 = getelementptr inbounds %struct.mchar, %struct.mchar* %mc427, i32 0, i32 0
  store i8 %362, i8* %image550, align 1
  %363 = load %struct.layer*, %struct.layer** @flayer, align 8
  %364 = load i32, i32* %x, align 4
  %inc551 = add nsw i32 %364, 1
  store i32 %inc551, i32* %x, align 4
  %365 = load %struct.layer*, %struct.layer** @flayer, align 8
  %l_height552 = getelementptr inbounds %struct.layer, %struct.layer* %365, i32 0, i32 2
  %366 = load i32, i32* %l_height552, align 4
  %sub553 = sub nsw i32 %366, 1
  call void @LPutChar(%struct.layer* %363, %struct.mchar* %mc427, i32 %364, i32 %sub553)
  br label %while.cond.538

while.end.554:                                    ; preds = %while.cond.538
  br label %if.end.555

if.end.555:                                       ; preds = %while.end.554, %if.end.529
  %367 = load %struct.inpdata*, %struct.inpdata** %inpdata, align 8
  %inpstringlen556 = getelementptr inbounds %struct.inpdata, %struct.inpdata* %367, i32 0, i32 3
  %368 = load i32, i32* %inpstringlen556, align 4
  %369 = load %struct.inpdata*, %struct.inpdata** %inpdata, align 8
  %inp557 = getelementptr inbounds %struct.inpdata, %struct.inpdata* %369, i32 0, i32 0
  %pos558 = getelementptr inbounds %struct.inpline, %struct.inpline* %inp557, i32 0, i32 2
  %370 = load i32, i32* %pos558, align 4
  %add559 = add nsw i32 %368, %370
  store i32 %add559, i32* %x, align 4
  %371 = load %struct.layer*, %struct.layer** @flayer, align 8
  %372 = load i32, i32* %x, align 4
  %373 = load %struct.layer*, %struct.layer** @flayer, align 8
  %l_height560 = getelementptr inbounds %struct.layer, %struct.layer* %373, i32 0, i32 2
  %374 = load i32, i32* %l_height560, align 4
  %sub561 = sub nsw i32 %374, 1
  call void @LGotoPos(%struct.layer* %371, i32 %372, i32 %sub561)
  br label %if.end.696

if.else.562:                                      ; preds = %land.end.424
  %375 = load i8, i8* %ch, align 1
  %conv563 = sext i8 %375 to i32
  %cmp564 = icmp eq i32 %conv563, 3
  br i1 %cmp564, label %if.then.586, label %lor.lhs.false.566

lor.lhs.false.566:                                ; preds = %if.else.562
  %376 = load i8, i8* %ch, align 1
  %conv567 = sext i8 %376 to i32
  %cmp568 = icmp eq i32 %conv567, 7
  br i1 %cmp568, label %if.then.586, label %lor.lhs.false.570

lor.lhs.false.570:                                ; preds = %lor.lhs.false.566
  %377 = load i8, i8* %ch, align 1
  %conv571 = sext i8 %377 to i32
  %cmp572 = icmp eq i32 %conv571, 27
  br i1 %cmp572, label %if.then.586, label %lor.lhs.false.574

lor.lhs.false.574:                                ; preds = %lor.lhs.false.570
  %378 = load i8, i8* %ch, align 1
  %conv575 = sext i8 %378 to i32
  %cmp576 = icmp eq i32 %conv575, 0
  br i1 %cmp576, label %if.then.586, label %lor.lhs.false.578

lor.lhs.false.578:                                ; preds = %lor.lhs.false.574
  %379 = load i8, i8* %ch, align 1
  %conv579 = sext i8 %379 to i32
  %cmp580 = icmp eq i32 %conv579, 10
  br i1 %cmp580, label %if.then.586, label %lor.lhs.false.582

lor.lhs.false.582:                                ; preds = %lor.lhs.false.578
  %380 = load i8, i8* %ch, align 1
  %conv583 = sext i8 %380 to i32
  %cmp584 = icmp eq i32 %conv583, 13
  br i1 %cmp584, label %if.then.586, label %if.else.680

if.then.586:                                      ; preds = %lor.lhs.false.582, %lor.lhs.false.578, %lor.lhs.false.574, %lor.lhs.false.570, %lor.lhs.false.566, %if.else.562
  %381 = load i8, i8* %ch, align 1
  %conv587 = sext i8 %381 to i32
  %cmp588 = icmp ne i32 %conv587, 10
  br i1 %cmp588, label %land.lhs.true.590, label %if.end.597

land.lhs.true.590:                                ; preds = %if.then.586
  %382 = load i8, i8* %ch, align 1
  %conv591 = sext i8 %382 to i32
  %cmp592 = icmp ne i32 %conv591, 13
  br i1 %cmp592, label %if.then.594, label %if.end.597

if.then.594:                                      ; preds = %land.lhs.true.590
  %383 = load %struct.inpdata*, %struct.inpdata** %inpdata, align 8
  %inp595 = getelementptr inbounds %struct.inpdata, %struct.inpdata* %383, i32 0, i32 0
  %len596 = getelementptr inbounds %struct.inpline, %struct.inpline* %inp595, i32 0, i32 1
  store i32 0, i32* %len596, align 4
  br label %if.end.597

if.end.597:                                       ; preds = %if.then.594, %land.lhs.true.590, %if.then.586
  %384 = load %struct.inpdata*, %struct.inpdata** %inpdata, align 8
  %inp598 = getelementptr inbounds %struct.inpdata, %struct.inpdata* %384, i32 0, i32 0
  %len599 = getelementptr inbounds %struct.inpline, %struct.inpline* %inp598, i32 0, i32 1
  %385 = load i32, i32* %len599, align 4
  %idxprom600 = sext i32 %385 to i64
  %386 = load %struct.inpdata*, %struct.inpdata** %inpdata, align 8
  %inp601 = getelementptr inbounds %struct.inpdata, %struct.inpdata* %386, i32 0, i32 0
  %buf602 = getelementptr inbounds %struct.inpline, %struct.inpline* %inp601, i32 0, i32 0
  %arrayidx603 = getelementptr inbounds [769 x i8], [769 x i8]* %buf602, i32 0, i64 %idxprom600
  store i8 0, i8* %arrayidx603, align 1
  %387 = load %struct.inpdata*, %struct.inpdata** %inpdata, align 8
  %inp604 = getelementptr inbounds %struct.inpdata, %struct.inpdata* %387, i32 0, i32 0
  %len605 = getelementptr inbounds %struct.inpline, %struct.inpline* %inp604, i32 0, i32 1
  %388 = load i32, i32* %len605, align 4
  %tobool606 = icmp ne i32 %388, 0
  br i1 %tobool606, label %land.lhs.true.607, label %if.end.656

land.lhs.true.607:                                ; preds = %if.end.597
  %389 = load %struct.inpdata*, %struct.inpdata** %inpdata, align 8
  %inpmode608 = getelementptr inbounds %struct.inpdata, %struct.inpdata* %389, i32 0, i32 4
  %390 = load i32, i32* %inpmode608, align 4
  %and609 = and i32 %390, 3
  %tobool610 = icmp ne i32 %and609, 0
  br i1 %tobool610, label %if.end.656, label %if.then.611

if.then.611:                                      ; preds = %land.lhs.true.607
  %391 = load %struct.inpline*, %struct.inpline** getelementptr inbounds (%struct.inpline, %struct.inpline* @inphist, i32 0, i32 4), align 8
  store %struct.inpline* %391, %struct.inpline** %store, align 8
  br label %for.cond.612

for.cond.612:                                     ; preds = %for.inc.642, %if.then.611
  %392 = load %struct.inpline*, %struct.inpline** %store, align 8
  %tobool613 = icmp ne %struct.inpline* %392, null
  br i1 %tobool613, label %for.body.614, label %for.end.644

for.body.614:                                     ; preds = %for.cond.612
  %393 = load %struct.inpline*, %struct.inpline** %store, align 8
  %buf615 = getelementptr inbounds %struct.inpline, %struct.inpline* %393, i32 0, i32 0
  %arraydecay616 = getelementptr inbounds [769 x i8], [769 x i8]* %buf615, i32 0, i32 0
  %394 = load %struct.inpdata*, %struct.inpdata** %inpdata, align 8
  %inp617 = getelementptr inbounds %struct.inpdata, %struct.inpdata* %394, i32 0, i32 0
  %buf618 = getelementptr inbounds %struct.inpline, %struct.inpline* %inp617, i32 0, i32 0
  %arraydecay619 = getelementptr inbounds [769 x i8], [769 x i8]* %buf618, i32 0, i32 0
  %call620 = call i32 @strcmp(i8* %arraydecay616, i8* %arraydecay619) #6
  %cmp621 = icmp eq i32 %call620, 0
  br i1 %cmp621, label %if.then.623, label %if.end.641

if.then.623:                                      ; preds = %for.body.614
  %395 = load %struct.inpline*, %struct.inpline** %store, align 8
  %next624 = getelementptr inbounds %struct.inpline, %struct.inpline* %395, i32 0, i32 3
  %396 = load %struct.inpline*, %struct.inpline** %next624, align 8
  %tobool625 = icmp ne %struct.inpline* %396, null
  br i1 %tobool625, label %if.then.626, label %if.end.630

if.then.626:                                      ; preds = %if.then.623
  %397 = load %struct.inpline*, %struct.inpline** %store, align 8
  %prev627 = getelementptr inbounds %struct.inpline, %struct.inpline* %397, i32 0, i32 4
  %398 = load %struct.inpline*, %struct.inpline** %prev627, align 8
  %399 = load %struct.inpline*, %struct.inpline** %store, align 8
  %next628 = getelementptr inbounds %struct.inpline, %struct.inpline* %399, i32 0, i32 3
  %400 = load %struct.inpline*, %struct.inpline** %next628, align 8
  %prev629 = getelementptr inbounds %struct.inpline, %struct.inpline* %400, i32 0, i32 4
  store %struct.inpline* %398, %struct.inpline** %prev629, align 8
  br label %if.end.630

if.end.630:                                       ; preds = %if.then.626, %if.then.623
  %401 = load %struct.inpline*, %struct.inpline** %store, align 8
  %prev631 = getelementptr inbounds %struct.inpline, %struct.inpline* %401, i32 0, i32 4
  %402 = load %struct.inpline*, %struct.inpline** %prev631, align 8
  %tobool632 = icmp ne %struct.inpline* %402, null
  br i1 %tobool632, label %if.then.633, label %if.end.637

if.then.633:                                      ; preds = %if.end.630
  %403 = load %struct.inpline*, %struct.inpline** %store, align 8
  %next634 = getelementptr inbounds %struct.inpline, %struct.inpline* %403, i32 0, i32 3
  %404 = load %struct.inpline*, %struct.inpline** %next634, align 8
  %405 = load %struct.inpline*, %struct.inpline** %store, align 8
  %prev635 = getelementptr inbounds %struct.inpline, %struct.inpline* %405, i32 0, i32 4
  %406 = load %struct.inpline*, %struct.inpline** %prev635, align 8
  %next636 = getelementptr inbounds %struct.inpline, %struct.inpline* %406, i32 0, i32 3
  store %struct.inpline* %404, %struct.inpline** %next636, align 8
  br label %if.end.637

if.end.637:                                       ; preds = %if.then.633, %if.end.630
  %407 = load %struct.inpdata*, %struct.inpdata** %inpdata, align 8
  %inp638 = getelementptr inbounds %struct.inpdata, %struct.inpdata* %407, i32 0, i32 0
  %pos639 = getelementptr inbounds %struct.inpline, %struct.inpline* %inp638, i32 0, i32 2
  %408 = load i32, i32* %pos639, align 4
  %409 = load %struct.inpline*, %struct.inpline** %store, align 8
  %pos640 = getelementptr inbounds %struct.inpline, %struct.inpline* %409, i32 0, i32 2
  store i32 %408, i32* %pos640, align 4
  br label %for.end.644

if.end.641:                                       ; preds = %for.body.614
  br label %for.inc.642

for.inc.642:                                      ; preds = %if.end.641
  %410 = load %struct.inpline*, %struct.inpline** %store, align 8
  %prev643 = getelementptr inbounds %struct.inpline, %struct.inpline* %410, i32 0, i32 4
  %411 = load %struct.inpline*, %struct.inpline** %prev643, align 8
  store %struct.inpline* %411, %struct.inpline** %store, align 8
  br label %for.cond.612

for.end.644:                                      ; preds = %if.end.637, %for.cond.612
  %412 = load %struct.inpline*, %struct.inpline** %store, align 8
  %tobool645 = icmp ne %struct.inpline* %412, null
  br i1 %tobool645, label %if.end.649, label %if.then.646

if.then.646:                                      ; preds = %for.end.644
  %call647 = call noalias i8* @malloc(i64 800) #4
  %413 = bitcast i8* %call647 to %struct.inpline*
  store %struct.inpline* %413, %struct.inpline** %store, align 8
  %414 = load %struct.inpline*, %struct.inpline** %store, align 8
  %415 = bitcast %struct.inpline* %414 to i8*
  %416 = load %struct.inpdata*, %struct.inpdata** %inpdata, align 8
  %inp648 = getelementptr inbounds %struct.inpdata, %struct.inpdata* %416, i32 0, i32 0
  %417 = bitcast %struct.inpline* %inp648 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %415, i8* %417, i64 800, i32 8, i1 false)
  br label %if.end.649

if.end.649:                                       ; preds = %if.then.646, %for.end.644
  %418 = load %struct.inpline*, %struct.inpline** %store, align 8
  %next650 = getelementptr inbounds %struct.inpline, %struct.inpline* %418, i32 0, i32 3
  store %struct.inpline* @inphist, %struct.inpline** %next650, align 8
  %419 = load %struct.inpline*, %struct.inpline** getelementptr inbounds (%struct.inpline, %struct.inpline* @inphist, i32 0, i32 4), align 8
  %420 = load %struct.inpline*, %struct.inpline** %store, align 8
  %prev651 = getelementptr inbounds %struct.inpline, %struct.inpline* %420, i32 0, i32 4
  store %struct.inpline* %419, %struct.inpline** %prev651, align 8
  %421 = load %struct.inpline*, %struct.inpline** getelementptr inbounds (%struct.inpline, %struct.inpline* @inphist, i32 0, i32 4), align 8
  %tobool652 = icmp ne %struct.inpline* %421, null
  br i1 %tobool652, label %if.then.653, label %if.end.655

if.then.653:                                      ; preds = %if.end.649
  %422 = load %struct.inpline*, %struct.inpline** %store, align 8
  %423 = load %struct.inpline*, %struct.inpline** getelementptr inbounds (%struct.inpline, %struct.inpline* @inphist, i32 0, i32 4), align 8
  %next654 = getelementptr inbounds %struct.inpline, %struct.inpline* %423, i32 0, i32 3
  store %struct.inpline* %422, %struct.inpline** %next654, align 8
  br label %if.end.655

if.end.655:                                       ; preds = %if.then.653, %if.end.649
  %424 = load %struct.inpline*, %struct.inpline** %store, align 8
  store %struct.inpline* %424, %struct.inpline** getelementptr inbounds (%struct.inpline, %struct.inpline* @inphist, i32 0, i32 4), align 8
  br label %if.end.656

if.end.656:                                       ; preds = %if.end.655, %land.lhs.true.607, %if.end.597
  %425 = load %struct.layer*, %struct.layer** @flayer, align 8
  %l_data657 = getelementptr inbounds %struct.layer, %struct.layer* %425, i32 0, i32 7
  store i8* null, i8** %l_data657, align 8
  call void @InpAbort()
  %426 = load i8*, i8** %pbuf, align 8
  %427 = load i8**, i8*** %ppbuf.addr, align 8
  store i8* %426, i8** %427, align 8
  %428 = load i32, i32* %len, align 4
  %429 = load i32*, i32** %plen.addr, align 8
  store i32 %428, i32* %429, align 4
  %430 = load %struct.display*, %struct.display** %inpdisplay, align 8
  store %struct.display* %430, %struct.display** @display, align 8
  %431 = load %struct.inpdata*, %struct.inpdata** %inpdata, align 8
  %inpmode658 = getelementptr inbounds %struct.inpdata, %struct.inpdata* %431, i32 0, i32 4
  %432 = load i32, i32* %inpmode658, align 4
  %and659 = and i32 %432, 2
  %cmp660 = icmp eq i32 %and659, 0
  br i1 %cmp660, label %if.then.662, label %if.else.670

if.then.662:                                      ; preds = %if.end.656
  %433 = load %struct.inpdata*, %struct.inpdata** %inpdata, align 8
  %inpfinfunc663 = getelementptr inbounds %struct.inpdata, %struct.inpdata* %433, i32 0, i32 5
  %434 = load void (i8*, i32, i8*)*, void (i8*, i32, i8*)** %inpfinfunc663, align 8
  %435 = load %struct.inpdata*, %struct.inpdata** %inpdata, align 8
  %inp664 = getelementptr inbounds %struct.inpdata, %struct.inpdata* %435, i32 0, i32 0
  %buf665 = getelementptr inbounds %struct.inpline, %struct.inpline* %inp664, i32 0, i32 0
  %arraydecay666 = getelementptr inbounds [769 x i8], [769 x i8]* %buf665, i32 0, i32 0
  %436 = load %struct.inpdata*, %struct.inpdata** %inpdata, align 8
  %inp667 = getelementptr inbounds %struct.inpdata, %struct.inpdata* %436, i32 0, i32 0
  %len668 = getelementptr inbounds %struct.inpline, %struct.inpline* %inp667, i32 0, i32 1
  %437 = load i32, i32* %len668, align 4
  %438 = load %struct.inpdata*, %struct.inpdata** %inpdata, align 8
  %priv669 = getelementptr inbounds %struct.inpdata, %struct.inpdata* %438, i32 0, i32 6
  %439 = load i8*, i8** %priv669, align 8
  call void %434(i8* %arraydecay666, i32 %437, i8* %439)
  br label %if.end.674

if.else.670:                                      ; preds = %if.end.656
  %440 = load %struct.inpdata*, %struct.inpdata** %inpdata, align 8
  %inpfinfunc671 = getelementptr inbounds %struct.inpdata, %struct.inpdata* %440, i32 0, i32 5
  %441 = load void (i8*, i32, i8*)*, void (i8*, i32, i8*)** %inpfinfunc671, align 8
  %442 = load i8*, i8** %pbuf, align 8
  %add.ptr672 = getelementptr inbounds i8, i8* %442, i64 -1
  %443 = load %struct.inpdata*, %struct.inpdata** %inpdata, align 8
  %priv673 = getelementptr inbounds %struct.inpdata, %struct.inpdata* %443, i32 0, i32 6
  %444 = load i8*, i8** %priv673, align 8
  call void %441(i8* %add.ptr672, i32 0, i8* %444)
  br label %if.end.674

if.end.674:                                       ; preds = %if.else.670, %if.then.662
  %445 = load %struct.inpdata*, %struct.inpdata** %inpdata, align 8
  %search675 = getelementptr inbounds %struct.inpdata, %struct.inpdata* %445, i32 0, i32 8
  %446 = load i8*, i8** %search675, align 8
  %tobool676 = icmp ne i8* %446, null
  br i1 %tobool676, label %if.then.677, label %if.end.679

if.then.677:                                      ; preds = %if.end.674
  %447 = load %struct.inpdata*, %struct.inpdata** %inpdata, align 8
  %search678 = getelementptr inbounds %struct.inpdata, %struct.inpdata* %447, i32 0, i32 8
  %448 = load i8*, i8** %search678, align 8
  call void @free(i8* %448) #4
  br label %if.end.679

if.end.679:                                       ; preds = %if.then.677, %if.end.674
  %449 = load %struct.inpdata*, %struct.inpdata** %inpdata, align 8
  %450 = bitcast %struct.inpdata* %449 to i8*
  call void @free(i8* %450) #4
  br label %return

if.else.680:                                      ; preds = %lor.lhs.false.582
  br label %do.body.681

do.body.681:                                      ; preds = %if.else.680
  %451 = load %struct.inpdata*, %struct.inpdata** %inpdata, align 8
  %search682 = getelementptr inbounds %struct.inpdata, %struct.inpdata* %451, i32 0, i32 8
  %452 = load i8*, i8** %search682, align 8
  %tobool683 = icmp ne i8* %452, null
  br i1 %tobool683, label %if.then.684, label %if.end.693

if.then.684:                                      ; preds = %do.body.681
  %453 = load %struct.inpdata*, %struct.inpdata** %inpdata, align 8
  %search685 = getelementptr inbounds %struct.inpdata, %struct.inpdata* %453, i32 0, i32 8
  %454 = load i8*, i8** %search685, align 8
  %cmp686 = icmp eq i8* %454, null
  br i1 %cmp686, label %if.then.688, label %if.else.689

if.then.688:                                      ; preds = %if.then.684
  call void @abort() #7
  unreachable

if.else.689:                                      ; preds = %if.then.684
  %455 = load %struct.inpdata*, %struct.inpdata** %inpdata, align 8
  %search690 = getelementptr inbounds %struct.inpdata, %struct.inpdata* %455, i32 0, i32 8
  %456 = load i8*, i8** %search690, align 8
  call void @free(i8* %456) #4
  br label %if.end.691

if.end.691:                                       ; preds = %if.else.689
  %457 = load %struct.inpdata*, %struct.inpdata** %inpdata, align 8
  %search692 = getelementptr inbounds %struct.inpdata, %struct.inpdata* %457, i32 0, i32 8
  store i8* null, i8** %search692, align 8
  br label %if.end.693

if.end.693:                                       ; preds = %if.end.691, %do.body.681
  br label %do.end.694

do.end.694:                                       ; preds = %if.end.693
  br label %if.end.695

if.end.695:                                       ; preds = %do.end.694
  br label %if.end.696

if.end.696:                                       ; preds = %if.end.695, %if.end.555
  br label %if.end.697

if.end.697:                                       ; preds = %if.end.696, %if.then.378
  br label %if.end.698

if.end.698:                                       ; preds = %if.end.697, %if.then.350
  br label %if.end.699

if.end.699:                                       ; preds = %if.end.698, %if.then.335
  br label %if.end.700

if.end.700:                                       ; preds = %if.end.699, %if.then.314
  br label %if.end.701

if.end.701:                                       ; preds = %if.end.700, %do.end.305
  br label %if.end.702

if.end.702:                                       ; preds = %if.end.701, %do.end.278
  br label %if.end.703

if.end.703:                                       ; preds = %if.end.702, %if.end.222
  br label %if.end.704

if.end.704:                                       ; preds = %if.end.703, %if.end.184
  br label %if.end.705

if.end.705:                                       ; preds = %if.end.704, %do.end.159
  br label %if.end.706

if.end.706:                                       ; preds = %if.end.705, %do.end
  br label %while.cond

while.end.707:                                    ; preds = %while.cond
  %458 = load %struct.inpdata*, %struct.inpdata** %inpdata, align 8
  %inpmode708 = getelementptr inbounds %struct.inpdata, %struct.inpdata* %458, i32 0, i32 4
  %459 = load i32, i32* %inpmode708, align 4
  %and709 = and i32 %459, 2
  %tobool710 = icmp ne i32 %and709, 0
  br i1 %tobool710, label %if.end.725, label %if.then.711

if.then.711:                                      ; preds = %while.end.707
  %460 = load %struct.inpdata*, %struct.inpdata** %inpdata, align 8
  %inpstringlen712 = getelementptr inbounds %struct.inpdata, %struct.inpdata* %460, i32 0, i32 3
  %461 = load i32, i32* %inpstringlen712, align 4
  %462 = load %struct.inpdata*, %struct.inpdata** %inpdata, align 8
  %inpmode713 = getelementptr inbounds %struct.inpdata, %struct.inpdata* %462, i32 0, i32 4
  %463 = load i32, i32* %inpmode713, align 4
  %and714 = and i32 %463, 1
  %tobool715 = icmp ne i32 %and714, 0
  br i1 %tobool715, label %cond.true.716, label %cond.false.717

cond.true.716:                                    ; preds = %if.then.711
  br label %cond.end.720

cond.false.717:                                   ; preds = %if.then.711
  %464 = load %struct.inpdata*, %struct.inpdata** %inpdata, align 8
  %inp718 = getelementptr inbounds %struct.inpdata, %struct.inpdata* %464, i32 0, i32 0
  %pos719 = getelementptr inbounds %struct.inpline, %struct.inpline* %inp718, i32 0, i32 2
  %465 = load i32, i32* %pos719, align 4
  br label %cond.end.720

cond.end.720:                                     ; preds = %cond.false.717, %cond.true.716
  %cond721 = phi i32 [ 0, %cond.true.716 ], [ %465, %cond.false.717 ]
  %add722 = add nsw i32 %461, %cond721
  %466 = load %struct.layer*, %struct.layer** @flayer, align 8
  %l_x = getelementptr inbounds %struct.layer, %struct.layer* %466, i32 0, i32 3
  store i32 %add722, i32* %l_x, align 4
  %467 = load %struct.layer*, %struct.layer** @flayer, align 8
  %l_height723 = getelementptr inbounds %struct.layer, %struct.layer* %467, i32 0, i32 2
  %468 = load i32, i32* %l_height723, align 4
  %sub724 = sub nsw i32 %468, 1
  %469 = load %struct.layer*, %struct.layer** @flayer, align 8
  %l_y = getelementptr inbounds %struct.layer, %struct.layer* %469, i32 0, i32 4
  store i32 %sub724, i32* %l_y, align 4
  br label %if.end.725

if.end.725:                                       ; preds = %cond.end.720, %while.end.707
  %470 = load i8*, i8** %pbuf, align 8
  %471 = load i8**, i8*** %ppbuf.addr, align 8
  store i8* %470, i8** %471, align 8
  %472 = load i32, i32* %len, align 4
  %473 = load i32*, i32** %plen.addr, align 8
  store i32 %472, i32* %473, align 4
  br label %return

return:                                           ; preds = %if.end.725, %if.end.679, %if.then
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @InpAbort() #0 {
entry:
  %oldlay = alloca %struct.layer*, align 8
  %oldcvlist = alloca %struct.canvas*, align 8
  %cv = alloca %struct.canvas*, align 8
  br label %do.body

do.body:                                          ; preds = %entry
  %0 = load %struct.layer*, %struct.layer** @flayer, align 8
  store %struct.layer* %0, %struct.layer** %oldlay, align 8
  br label %do.body.1

do.body.1:                                        ; preds = %do.body
  br label %do.end

do.end:                                           ; preds = %do.body.1
  %1 = load %struct.layer*, %struct.layer** @flayer, align 8
  %l_next = getelementptr inbounds %struct.layer, %struct.layer* %1, i32 0, i32 8
  %2 = load %struct.layer*, %struct.layer** %l_next, align 8
  store %struct.layer* %2, %struct.layer** @flayer, align 8
  %3 = load %struct.layer*, %struct.layer** @flayer, align 8
  %l_cvlist = getelementptr inbounds %struct.layer, %struct.layer* %3, i32 0, i32 0
  %4 = load %struct.canvas*, %struct.canvas** %l_cvlist, align 8
  store %struct.canvas* %4, %struct.canvas** %oldcvlist, align 8
  br label %do.body.2

do.body.2:                                        ; preds = %do.end
  br label %do.end.3

do.end.3:                                         ; preds = %do.body.2
  %5 = load %struct.layer*, %struct.layer** %oldlay, align 8
  %l_cvlist4 = getelementptr inbounds %struct.layer, %struct.layer* %5, i32 0, i32 0
  %6 = load %struct.canvas*, %struct.canvas** %l_cvlist4, align 8
  %7 = load %struct.layer*, %struct.layer** @flayer, align 8
  %l_cvlist5 = getelementptr inbounds %struct.layer, %struct.layer* %7, i32 0, i32 0
  store %struct.canvas* %6, %struct.canvas** %l_cvlist5, align 8
  %8 = load %struct.layer*, %struct.layer** @flayer, align 8
  %l_cvlist6 = getelementptr inbounds %struct.layer, %struct.layer* %8, i32 0, i32 0
  %9 = load %struct.canvas*, %struct.canvas** %l_cvlist6, align 8
  store %struct.canvas* %9, %struct.canvas** %cv, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %do.end.3
  %10 = load %struct.canvas*, %struct.canvas** %cv, align 8
  %tobool = icmp ne %struct.canvas* %10, null
  br i1 %tobool, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %11 = load %struct.layer*, %struct.layer** @flayer, align 8
  %12 = load %struct.canvas*, %struct.canvas** %cv, align 8
  %c_layer = getelementptr inbounds %struct.canvas, %struct.canvas* %12, i32 0, i32 9
  store %struct.layer* %11, %struct.layer** %c_layer, align 8
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %13 = load %struct.canvas*, %struct.canvas** %cv, align 8
  %c_lnext = getelementptr inbounds %struct.canvas, %struct.canvas* %13, i32 0, i32 10
  %14 = load %struct.canvas*, %struct.canvas** %c_lnext, align 8
  store %struct.canvas* %14, %struct.canvas** %cv, align 8
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %15 = load %struct.layer*, %struct.layer** @flayer, align 8
  %l_layfn = getelementptr inbounds %struct.layer, %struct.layer* %15, i32 0, i32 6
  %16 = load %struct.LayFuncs*, %struct.LayFuncs** %l_layfn, align 8
  %lf_LayRedisplayLine = getelementptr inbounds %struct.LayFuncs, %struct.LayFuncs* %16, i32 0, i32 2
  %17 = load void (i32, i32, i32, i32)*, void (i32, i32, i32, i32)** %lf_LayRedisplayLine, align 8
  %18 = load %struct.layer*, %struct.layer** @flayer, align 8
  %l_height = getelementptr inbounds %struct.layer, %struct.layer* %18, i32 0, i32 2
  %19 = load i32, i32* %l_height, align 4
  %sub = sub nsw i32 %19, 1
  %20 = load %struct.layer*, %struct.layer** @flayer, align 8
  %l_width = getelementptr inbounds %struct.layer, %struct.layer* %20, i32 0, i32 1
  %21 = load i32, i32* %l_width, align 4
  %sub7 = sub nsw i32 %21, 1
  call void %17(i32 %sub, i32 0, i32 %sub7, i32 0)
  %22 = load %struct.layer*, %struct.layer** %oldlay, align 8
  store %struct.layer* %22, %struct.layer** @flayer, align 8
  %23 = load %struct.layer*, %struct.layer** @flayer, align 8
  %l_cvlist8 = getelementptr inbounds %struct.layer, %struct.layer* %23, i32 0, i32 0
  %24 = load %struct.canvas*, %struct.canvas** %l_cvlist8, align 8
  store %struct.canvas* %24, %struct.canvas** %cv, align 8
  br label %for.cond.9

for.cond.9:                                       ; preds = %for.inc.13, %for.end
  %25 = load %struct.canvas*, %struct.canvas** %cv, align 8
  %tobool10 = icmp ne %struct.canvas* %25, null
  br i1 %tobool10, label %for.body.11, label %for.end.15

for.body.11:                                      ; preds = %for.cond.9
  %26 = load %struct.layer*, %struct.layer** @flayer, align 8
  %27 = load %struct.canvas*, %struct.canvas** %cv, align 8
  %c_layer12 = getelementptr inbounds %struct.canvas, %struct.canvas* %27, i32 0, i32 9
  store %struct.layer* %26, %struct.layer** %c_layer12, align 8
  br label %for.inc.13

for.inc.13:                                       ; preds = %for.body.11
  %28 = load %struct.canvas*, %struct.canvas** %cv, align 8
  %c_lnext14 = getelementptr inbounds %struct.canvas, %struct.canvas* %28, i32 0, i32 10
  %29 = load %struct.canvas*, %struct.canvas** %c_lnext14, align 8
  store %struct.canvas* %29, %struct.canvas** %cv, align 8
  br label %for.cond.9

for.end.15:                                       ; preds = %for.cond.9
  %30 = load %struct.canvas*, %struct.canvas** %oldcvlist, align 8
  %31 = load %struct.layer*, %struct.layer** @flayer, align 8
  %l_next16 = getelementptr inbounds %struct.layer, %struct.layer* %31, i32 0, i32 8
  %32 = load %struct.layer*, %struct.layer** %l_next16, align 8
  %l_cvlist17 = getelementptr inbounds %struct.layer, %struct.layer* %32, i32 0, i32 0
  store %struct.canvas* %30, %struct.canvas** %l_cvlist17, align 8
  br label %do.end.18

do.end.18:                                        ; preds = %for.end.15
  call void @ExitOverlayPage()
  ret void
}

declare void @DefClearLine(i32, i32, i32, i32) #3

declare i32 @DefRewrite(i32, i32, i32, %struct.mchar*, i32) #3

declare i32 @DefResize(i32, i32) #3

declare void @DefRestore() #3

declare void @LGotoPos(%struct.layer*, i32, i32) #3

; Function Attrs: nounwind
declare void @bcopy(i8*, i8*, i64) #2

; Function Attrs: nounwind
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* nocapture, i8* nocapture readonly, i64, i32, i1) #4

declare void @LPutChar(%struct.layer*, %struct.mchar*, i32, i32) #3

; Function Attrs: noreturn nounwind
declare void @abort() #5

; Function Attrs: nounwind
declare void @free(i8*) #2

; Function Attrs: nounwind uwtable
define internal void @erase_chars(%struct.inpdata* %inpdata, i8* %from, i8* %to, i32 %x, i32 %mv) #0 {
entry:
  %inpdata.addr = alloca %struct.inpdata*, align 8
  %from.addr = alloca i8*, align 8
  %to.addr = alloca i8*, align 8
  %x.addr = alloca i32, align 4
  %mv.addr = alloca i32, align 4
  %chng = alloca i32, align 4
  %mc = alloca %struct.mchar, align 1
  %s = alloca i8*, align 8
  store %struct.inpdata* %inpdata, %struct.inpdata** %inpdata.addr, align 8
  store i8* %from, i8** %from.addr, align 8
  store i8* %to, i8** %to.addr, align 8
  store i32 %x, i32* %x.addr, align 4
  store i32 %mv, i32* %mv.addr, align 4
  br label %do.body

do.body:                                          ; preds = %entry
  br label %do.end

do.end:                                           ; preds = %do.body
  %0 = load %struct.inpdata*, %struct.inpdata** %inpdata.addr, align 8
  %inp = getelementptr inbounds %struct.inpdata, %struct.inpdata* %0, i32 0, i32 0
  %len = getelementptr inbounds %struct.inpline, %struct.inpline* %inp, i32 0, i32 1
  %1 = load i32, i32* %len, align 4
  %conv = sext i32 %1 to i64
  %2 = load i8*, i8** %to.addr, align 8
  %3 = load %struct.inpdata*, %struct.inpdata** %inpdata.addr, align 8
  %inp1 = getelementptr inbounds %struct.inpdata, %struct.inpdata* %3, i32 0, i32 0
  %buf = getelementptr inbounds %struct.inpline, %struct.inpline* %inp1, i32 0, i32 0
  %arraydecay = getelementptr inbounds [769 x i8], [769 x i8]* %buf, i32 0, i32 0
  %sub.ptr.lhs.cast = ptrtoint i8* %2 to i64
  %sub.ptr.rhs.cast = ptrtoint i8* %arraydecay to i64
  %sub.ptr.sub = sub i64 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast
  %cmp = icmp sgt i64 %conv, %sub.ptr.sub
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %do.end
  %4 = load i8*, i8** %to.addr, align 8
  %5 = load i8*, i8** %from.addr, align 8
  %6 = load %struct.inpdata*, %struct.inpdata** %inpdata.addr, align 8
  %inp3 = getelementptr inbounds %struct.inpdata, %struct.inpdata* %6, i32 0, i32 0
  %len4 = getelementptr inbounds %struct.inpline, %struct.inpline* %inp3, i32 0, i32 1
  %7 = load i32, i32* %len4, align 4
  %conv5 = sext i32 %7 to i64
  %8 = load i8*, i8** %to.addr, align 8
  %9 = load %struct.inpdata*, %struct.inpdata** %inpdata.addr, align 8
  %inp6 = getelementptr inbounds %struct.inpdata, %struct.inpdata* %9, i32 0, i32 0
  %buf7 = getelementptr inbounds %struct.inpline, %struct.inpline* %inp6, i32 0, i32 0
  %arraydecay8 = getelementptr inbounds [769 x i8], [769 x i8]* %buf7, i32 0, i32 0
  %sub.ptr.lhs.cast9 = ptrtoint i8* %8 to i64
  %sub.ptr.rhs.cast10 = ptrtoint i8* %arraydecay8 to i64
  %sub.ptr.sub11 = sub i64 %sub.ptr.lhs.cast9, %sub.ptr.rhs.cast10
  %sub = sub nsw i64 %conv5, %sub.ptr.sub11
  call void @bcopy(i8* %4, i8* %5, i64 %sub) #4
  br label %if.end

if.end:                                           ; preds = %if.then, %do.end
  %10 = load i8*, i8** %to.addr, align 8
  %11 = load i8*, i8** %from.addr, align 8
  %sub.ptr.lhs.cast12 = ptrtoint i8* %10 to i64
  %sub.ptr.rhs.cast13 = ptrtoint i8* %11 to i64
  %sub.ptr.sub14 = sub i64 %sub.ptr.lhs.cast12, %sub.ptr.rhs.cast13
  %conv15 = trunc i64 %sub.ptr.sub14 to i32
  store i32 %conv15, i32* %chng, align 4
  %12 = load i32, i32* %mv.addr, align 4
  %tobool = icmp ne i32 %12, 0
  br i1 %tobool, label %if.then.16, label %if.end.20

if.then.16:                                       ; preds = %if.end
  %13 = load i32, i32* %chng, align 4
  %14 = load i32, i32* %x.addr, align 4
  %sub17 = sub nsw i32 %14, %13
  store i32 %sub17, i32* %x.addr, align 4
  %15 = load i32, i32* %chng, align 4
  %16 = load %struct.inpdata*, %struct.inpdata** %inpdata.addr, align 8
  %inp18 = getelementptr inbounds %struct.inpdata, %struct.inpdata* %16, i32 0, i32 0
  %pos = getelementptr inbounds %struct.inpline, %struct.inpline* %inp18, i32 0, i32 2
  %17 = load i32, i32* %pos, align 4
  %sub19 = sub nsw i32 %17, %15
  store i32 %sub19, i32* %pos, align 4
  br label %if.end.20

if.end.20:                                        ; preds = %if.then.16, %if.end
  %18 = load i32, i32* %chng, align 4
  %19 = load %struct.inpdata*, %struct.inpdata** %inpdata.addr, align 8
  %inp21 = getelementptr inbounds %struct.inpdata, %struct.inpdata* %19, i32 0, i32 0
  %len22 = getelementptr inbounds %struct.inpline, %struct.inpline* %inp21, i32 0, i32 1
  %20 = load i32, i32* %len22, align 4
  %sub23 = sub nsw i32 %20, %18
  store i32 %sub23, i32* %len22, align 4
  %21 = load %struct.inpdata*, %struct.inpdata** %inpdata.addr, align 8
  %inpmode = getelementptr inbounds %struct.inpdata, %struct.inpdata* %21, i32 0, i32 4
  %22 = load i32, i32* %inpmode, align 4
  %and = and i32 %22, 1
  %tobool24 = icmp ne i32 %and, 0
  br i1 %tobool24, label %if.end.47, label %if.then.25

if.then.25:                                       ; preds = %if.end.20
  %23 = load i8*, i8** %from.addr, align 8
  %24 = load i8*, i8** %to.addr, align 8
  %cmp26 = icmp ult i8* %23, %24
  br i1 %cmp26, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.then.25
  %25 = load i8*, i8** %from.addr, align 8
  br label %cond.end

cond.false:                                       ; preds = %if.then.25
  %26 = load i8*, i8** %to.addr, align 8
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i8* [ %25, %cond.true ], [ %26, %cond.false ]
  store i8* %cond, i8** %s, align 8
  %27 = bitcast %struct.mchar* %mc to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %27, i8* getelementptr inbounds (%struct.mchar, %struct.mchar* @mchar_so, i32 0, i32 0), i64 6, i32 1, i1 false)
  br label %while.cond

while.cond:                                       ; preds = %while.body, %cond.end
  %28 = load i8*, i8** %s, align 8
  %29 = load %struct.inpdata*, %struct.inpdata** %inpdata.addr, align 8
  %inp28 = getelementptr inbounds %struct.inpdata, %struct.inpdata* %29, i32 0, i32 0
  %buf29 = getelementptr inbounds %struct.inpline, %struct.inpline* %inp28, i32 0, i32 0
  %arraydecay30 = getelementptr inbounds [769 x i8], [769 x i8]* %buf29, i32 0, i32 0
  %30 = load %struct.inpdata*, %struct.inpdata** %inpdata.addr, align 8
  %inp31 = getelementptr inbounds %struct.inpdata, %struct.inpdata* %30, i32 0, i32 0
  %len32 = getelementptr inbounds %struct.inpline, %struct.inpline* %inp31, i32 0, i32 1
  %31 = load i32, i32* %len32, align 4
  %idx.ext = sext i32 %31 to i64
  %add.ptr = getelementptr inbounds i8, i8* %arraydecay30, i64 %idx.ext
  %cmp33 = icmp ult i8* %28, %add.ptr
  br i1 %cmp33, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %32 = load i8*, i8** %s, align 8
  %incdec.ptr = getelementptr inbounds i8, i8* %32, i32 1
  store i8* %incdec.ptr, i8** %s, align 8
  %33 = load i8, i8* %32, align 1
  %image = getelementptr inbounds %struct.mchar, %struct.mchar* %mc, i32 0, i32 0
  store i8 %33, i8* %image, align 1
  %34 = load %struct.layer*, %struct.layer** @flayer, align 8
  %35 = load i32, i32* %x.addr, align 4
  %inc = add nsw i32 %35, 1
  store i32 %inc, i32* %x.addr, align 4
  %36 = load %struct.layer*, %struct.layer** @flayer, align 8
  %l_height = getelementptr inbounds %struct.layer, %struct.layer* %36, i32 0, i32 2
  %37 = load i32, i32* %l_height, align 4
  %sub35 = sub nsw i32 %37, 1
  call void @LPutChar(%struct.layer* %34, %struct.mchar* %mc, i32 %35, i32 %sub35)
  br label %while.cond

while.end:                                        ; preds = %while.cond
  br label %while.cond.36

while.cond.36:                                    ; preds = %while.body.38, %while.end
  %38 = load i32, i32* %chng, align 4
  %dec = add nsw i32 %38, -1
  store i32 %dec, i32* %chng, align 4
  %tobool37 = icmp ne i32 %38, 0
  br i1 %tobool37, label %while.body.38, label %while.end.42

while.body.38:                                    ; preds = %while.cond.36
  %39 = load %struct.layer*, %struct.layer** @flayer, align 8
  %40 = load i32, i32* %x.addr, align 4
  %inc39 = add nsw i32 %40, 1
  store i32 %inc39, i32* %x.addr, align 4
  %41 = load %struct.layer*, %struct.layer** @flayer, align 8
  %l_height40 = getelementptr inbounds %struct.layer, %struct.layer* %41, i32 0, i32 2
  %42 = load i32, i32* %l_height40, align 4
  %sub41 = sub nsw i32 %42, 1
  call void @LPutChar(%struct.layer* %39, %struct.mchar* @mchar_blank, i32 %40, i32 %sub41)
  br label %while.cond.36

while.end.42:                                     ; preds = %while.cond.36
  %43 = load %struct.inpdata*, %struct.inpdata** %inpdata.addr, align 8
  %inpstringlen = getelementptr inbounds %struct.inpdata, %struct.inpdata* %43, i32 0, i32 3
  %44 = load i32, i32* %inpstringlen, align 4
  %45 = load %struct.inpdata*, %struct.inpdata** %inpdata.addr, align 8
  %inp43 = getelementptr inbounds %struct.inpdata, %struct.inpdata* %45, i32 0, i32 0
  %pos44 = getelementptr inbounds %struct.inpline, %struct.inpline* %inp43, i32 0, i32 2
  %46 = load i32, i32* %pos44, align 4
  %add = add nsw i32 %44, %46
  store i32 %add, i32* %x.addr, align 4
  %47 = load %struct.layer*, %struct.layer** @flayer, align 8
  %48 = load i32, i32* %x.addr, align 4
  %49 = load %struct.layer*, %struct.layer** @flayer, align 8
  %l_height45 = getelementptr inbounds %struct.layer, %struct.layer* %49, i32 0, i32 2
  %50 = load i32, i32* %l_height45, align 4
  %sub46 = sub nsw i32 %50, 1
  call void @LGotoPos(%struct.layer* %47, i32 %48, i32 %sub46)
  br label %if.end.47

if.end.47:                                        ; preds = %while.end.42, %if.end.20
  ret void
}

declare void @LClearArea(%struct.layer*, i32, i32, i32, i32, i32, i32) #3

declare i8* @SaveStr(i8*) #3

; Function Attrs: nounwind readonly
declare i8* @strstr(i8*, i8*) #1

; Function Attrs: nounwind readonly
declare i32 @strcmp(i8*, i8*) #1

; Function Attrs: nounwind
declare noalias i8* @malloc(i64) #2

declare void @ExitOverlayPage() #3

declare void @LPutStr(%struct.layer*, i8*, i32, %struct.mchar*, i32, i32) #3

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind readonly "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { nounwind }
attributes #5 = { noreturn nounwind "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #6 = { nounwind readonly }
attributes #7 = { noreturn nounwind }

!llvm.ident = !{!0}

!0 = !{!"clang version 3.7.0 (tags/RELEASE_370/final)"}
