; ModuleID = './display.bc'
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
%struct.NewWindow = type { i32, i8*, i8**, i8*, i8*, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i8*, i8*, i32 }
%struct.winsize = type { i16, i16, i16, i16 }
%struct.baud_values = type { i32, i32, i32 }
%struct.timezone = type { i32, i32 }
%struct.fd_set = type { [16 x i64] }

@defobuflimit = global i32 256, align 4
@defnonblock = global i32 -1, align 4
@defmousetrack = global i32 0, align 4
@defautonuke = global i32 0, align 4
@hardstatusemu = global i32 0, align 4
@flayer = external global %struct.layer*, align 8
@display = common global %struct.display* null, align 8
@displays = common global %struct.display* null, align 8
@mchar_null = external global %struct.mchar, align 1
@nwin_default = external global %struct.NewWindow, align 8
@BlankLf = global %struct.LayFuncs { void (i8**, i32*)* @DefProcess, void ()* null, void (i32, i32, i32, i32)* @DefRedisplayLine, void (i32, i32, i32, i32)* @DefClearLine, i32 (i32, i32, i32, %struct.mchar*, i32)* @DefRewrite, i32 (i32, i32)* @BlankResize, void ()* @DefRestore, void (i8*)* null }, align 8
@windows = external global %struct.win*, align 8
@ospeed = external global i16, align 2
@.str = private unnamed_addr constant [7 x i8] c"\1B[?%dl\00", align 1
@.str.1 = private unnamed_addr constant [7 x i8] c"\1B[?%dh\00", align 1
@StrCost = internal global i32 0, align 4
@.str.2 = private unnamed_addr constant [3 x i8] c"\1B$\00", align 1
@SetColor.sftrans = internal global [8 x i8] c"\00\04\02\06\01\05\03\07", align 1
@.str.3 = private unnamed_addr constant [4 x i8] c"\1B[m\00", align 1
@.str.4 = private unnamed_addr constant [6 x i8] c"\1B[39m\00", align 1
@.str.5 = private unnamed_addr constant [6 x i8] c"\1B[49m\00", align 1
@.str.6 = private unnamed_addr constant [10 x i8] c"\1B[9%p1%dm\00", align 1
@.str.7 = private unnamed_addr constant [11 x i8] c"\1B[10%p1%dm\00", align 1
@nattr2color = common global i32 0, align 4
@SetRendition.mmc = internal global %struct.mchar zeroinitializer, align 1
@attr2color = common global [8 x [4 x i32]] zeroinitializer, align 16
@.str.8 = private unnamed_addr constant [3 x i8] c"\0D\0A\00", align 1
@use_hardstatus = external global i32, align 4
@MsgWait = external global i32, align 4
@mchar_so = external global %struct.mchar, align 1
@captionalways = common global i32 0, align 4
@.str.9 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.10 = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@hstatusstring = external global i8*, align 8
@captionstring = external global i8*, align 8
@mline_null = external global %struct.mline, align 8
@mline_blank = external global %struct.mline, align 8
@mchar_blank = external global %struct.mchar, align 1
@mline_old = external global %struct.mline, align 8
@Z0width = external global i32, align 4
@Z1width = external global i32, align 4
@.str.11 = private unnamed_addr constant [14 x i8] c"Out of memory\00", align 1
@idletimo = external global i32, align 4
@.str.12 = private unnamed_addr constant [7 x i8] c"\1B[m\1B[m\00", align 1
@.str.13 = private unnamed_addr constant [6 x i8] c"TERM=\00", align 1
@.str.14 = private unnamed_addr constant [15 x i8] c"OpenPty failed\00", align 1
@pty_preopen = external global i32, align 4
@.str.15 = private unnamed_addr constant [5 x i8] c"fork\00", align 1
@real_gid = external global i32, align 4
@real_uid = external global i32, align 4
@.str.16 = private unnamed_addr constant [14 x i8] c"setuid/setgid\00", align 1
@.str.17 = private unnamed_addr constant [15 x i8] c"Cannot open %s\00", align 1
@NewEnv = external global i8**, align 8
@glwz = external global %struct.winsize, align 2
@focusminwidth = common global i32 0, align 4
@focusminheight = common global i32 0, align 4
@MsgMinWait = external global i32, align 4
@.str.18 = private unnamed_addr constant [32 x i8] c"Error writing output to display\00", align 1
@pastefont = external global i32, align 4
@idleaction = external global %struct.action, align 8
@fore = external global %struct.win*, align 8

; Function Attrs: nounwind uwtable
define void @DefProcess(i8** %bufp, i32* %lenp) #0 {
entry:
  %bufp.addr = alloca i8**, align 8
  %lenp.addr = alloca i32*, align 8
  store i8** %bufp, i8*** %bufp.addr, align 8
  store i32* %lenp, i32** %lenp.addr, align 8
  %0 = load i32*, i32** %lenp.addr, align 8
  %1 = load i32, i32* %0, align 4
  %2 = load i8**, i8*** %bufp.addr, align 8
  %3 = load i8*, i8** %2, align 8
  %idx.ext = sext i32 %1 to i64
  %add.ptr = getelementptr inbounds i8, i8* %3, i64 %idx.ext
  store i8* %add.ptr, i8** %2, align 8
  %4 = load i32*, i32** %lenp.addr, align 8
  store i32 0, i32* %4, align 4
  ret void
}

; Function Attrs: nounwind uwtable
define void @DefRedisplayLine(i32 %y, i32 %xs, i32 %xe, i32 %isblank) #0 {
entry:
  %y.addr = alloca i32, align 4
  %xs.addr = alloca i32, align 4
  %xe.addr = alloca i32, align 4
  %isblank.addr = alloca i32, align 4
  store i32 %y, i32* %y.addr, align 4
  store i32 %xs, i32* %xs.addr, align 4
  store i32 %xe, i32* %xe.addr, align 4
  store i32 %isblank, i32* %isblank.addr, align 4
  %0 = load i32, i32* %isblank.addr, align 4
  %cmp = icmp eq i32 %0, 0
  br i1 %cmp, label %land.lhs.true, label %if.end

land.lhs.true:                                    ; preds = %entry
  %1 = load i32, i32* %y.addr, align 4
  %cmp1 = icmp sge i32 %1, 0
  br i1 %cmp1, label %if.then, label %if.end

if.then:                                          ; preds = %land.lhs.true
  %2 = load i32, i32* %y.addr, align 4
  %3 = load i32, i32* %xs.addr, align 4
  %4 = load i32, i32* %xe.addr, align 4
  call void @DefClearLine(i32 %2, i32 %3, i32 %4, i32 0)
  br label %if.end

if.end:                                           ; preds = %if.then, %land.lhs.true, %entry
  ret void
}

; Function Attrs: nounwind uwtable
define void @DefClearLine(i32 %y, i32 %xs, i32 %xe, i32 %bce) #0 {
entry:
  %y.addr = alloca i32, align 4
  %xs.addr = alloca i32, align 4
  %xe.addr = alloca i32, align 4
  %bce.addr = alloca i32, align 4
  store i32 %y, i32* %y.addr, align 4
  store i32 %xs, i32* %xs.addr, align 4
  store i32 %xe, i32* %xe.addr, align 4
  store i32 %bce, i32* %bce.addr, align 4
  %0 = load %struct.layer*, %struct.layer** @flayer, align 8
  %1 = load i32, i32* %y.addr, align 4
  %2 = load i32, i32* %xs.addr, align 4
  %3 = load i32, i32* %xe.addr, align 4
  %4 = load i32, i32* %bce.addr, align 4
  call void @LClearLine(%struct.layer* %0, i32 %1, i32 %2, i32 %3, i32 %4, %struct.mline* null)
  ret void
}

declare void @LClearLine(%struct.layer*, i32, i32, i32, i32, %struct.mline*) #1

; Function Attrs: nounwind uwtable
define i32 @DefRewrite(i32 %y, i32 %xs, i32 %xe, %struct.mchar* %rend, i32 %doit) #0 {
entry:
  %y.addr = alloca i32, align 4
  %xs.addr = alloca i32, align 4
  %xe.addr = alloca i32, align 4
  %rend.addr = alloca %struct.mchar*, align 8
  %doit.addr = alloca i32, align 4
  store i32 %y, i32* %y.addr, align 4
  store i32 %xs, i32* %xs.addr, align 4
  store i32 %xe, i32* %xe.addr, align 4
  store %struct.mchar* %rend, %struct.mchar** %rend.addr, align 8
  store i32 %doit, i32* %doit.addr, align 4
  ret i32 1000
}

; Function Attrs: nounwind uwtable
define i32 @DefResize(i32 %wi, i32 %he) #0 {
entry:
  %wi.addr = alloca i32, align 4
  %he.addr = alloca i32, align 4
  store i32 %wi, i32* %wi.addr, align 4
  store i32 %he, i32* %he.addr, align 4
  ret i32 -1
}

; Function Attrs: nounwind uwtable
define void @DefRestore() #0 {
entry:
  %olddisplay = alloca %struct.display*, align 8
  %cv = alloca %struct.canvas*, align 8
  br label %do.body

do.body:                                          ; preds = %entry
  %0 = load %struct.display*, %struct.display** @display, align 8
  store %struct.display* %0, %struct.display** %olddisplay, align 8
  %1 = load %struct.display*, %struct.display** @displays, align 8
  store %struct.display* %1, %struct.display** @display, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.inc.7, %do.body
  %2 = load %struct.display*, %struct.display** @display, align 8
  %tobool = icmp ne %struct.display* %2, null
  br i1 %tobool, label %for.body, label %for.end.8

for.body:                                         ; preds = %for.cond
  %3 = load %struct.display*, %struct.display** @display, align 8
  %d_cvlist = getelementptr inbounds %struct.display, %struct.display* %3, i32 0, i32 3
  %4 = load %struct.canvas*, %struct.canvas** %d_cvlist, align 8
  store %struct.canvas* %4, %struct.canvas** %cv, align 8
  br label %for.cond.1

for.cond.1:                                       ; preds = %for.inc, %for.body
  %5 = load %struct.canvas*, %struct.canvas** %cv, align 8
  %tobool2 = icmp ne %struct.canvas* %5, null
  br i1 %tobool2, label %for.body.3, label %for.end

for.body.3:                                       ; preds = %for.cond.1
  %6 = load %struct.canvas*, %struct.canvas** %cv, align 8
  %c_layer = getelementptr inbounds %struct.canvas, %struct.canvas* %6, i32 0, i32 9
  %7 = load %struct.layer*, %struct.layer** %c_layer, align 8
  %8 = load %struct.layer*, %struct.layer** @flayer, align 8
  %cmp = icmp eq %struct.layer* %7, %8
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %for.body.3
  br label %for.end

if.end:                                           ; preds = %for.body.3
  br label %for.inc

for.inc:                                          ; preds = %if.end
  %9 = load %struct.canvas*, %struct.canvas** %cv, align 8
  %c_next = getelementptr inbounds %struct.canvas, %struct.canvas* %9, i32 0, i32 0
  %10 = load %struct.canvas*, %struct.canvas** %c_next, align 8
  store %struct.canvas* %10, %struct.canvas** %cv, align 8
  br label %for.cond.1

for.end:                                          ; preds = %if.then, %for.cond.1
  %11 = load %struct.canvas*, %struct.canvas** %cv, align 8
  %cmp4 = icmp eq %struct.canvas* %11, null
  br i1 %cmp4, label %if.then.5, label %if.end.6

if.then.5:                                        ; preds = %for.end
  br label %for.inc.7

if.end.6:                                         ; preds = %for.end
  call void @InsertMode(i32 0)
  br label %for.inc.7

for.inc.7:                                        ; preds = %if.end.6, %if.then.5
  %12 = load %struct.display*, %struct.display** @display, align 8
  %d_next = getelementptr inbounds %struct.display, %struct.display* %12, i32 0, i32 0
  %13 = load %struct.display*, %struct.display** %d_next, align 8
  store %struct.display* %13, %struct.display** @display, align 8
  br label %for.cond

for.end.8:                                        ; preds = %for.cond
  %14 = load %struct.display*, %struct.display** %olddisplay, align 8
  store %struct.display* %14, %struct.display** @display, align 8
  br label %do.end

do.end:                                           ; preds = %for.end.8
  %15 = load %struct.layer*, %struct.layer** @flayer, align 8
  call void @LKeypadMode(%struct.layer* %15, i32 0)
  %16 = load %struct.layer*, %struct.layer** @flayer, align 8
  call void @LCursorkeysMode(%struct.layer* %16, i32 0)
  %17 = load %struct.layer*, %struct.layer** @flayer, align 8
  call void @LCursorVisibility(%struct.layer* %17, i32 0)
  %18 = load %struct.layer*, %struct.layer** @flayer, align 8
  call void @LMouseMode(%struct.layer* %18, i32 0)
  %19 = load %struct.layer*, %struct.layer** @flayer, align 8
  call void @LSetRendition(%struct.layer* %19, %struct.mchar* @mchar_null)
  %20 = load %struct.layer*, %struct.layer** @flayer, align 8
  %21 = load i32, i32* getelementptr inbounds (%struct.NewWindow, %struct.NewWindow* @nwin_default, i32 0, i32 6), align 4
  %and = and i32 %21, 1
  call void @LSetFlow(%struct.layer* %20, i32 %and)
  ret void
}

; Function Attrs: nounwind uwtable
define void @InsertMode(i32 %on) #0 {
entry:
  %on.addr = alloca i32, align 4
  store i32 %on, i32* %on.addr, align 4
  %0 = load %struct.display*, %struct.display** @display, align 8
  %tobool = icmp ne %struct.display* %0, null
  br i1 %tobool, label %land.lhs.true, label %if.end.12

land.lhs.true:                                    ; preds = %entry
  %1 = load i32, i32* %on.addr, align 4
  %2 = load %struct.display*, %struct.display** @display, align 8
  %d_insert = getelementptr inbounds %struct.display, %struct.display* %2, i32 0, i32 31
  %3 = load i32, i32* %d_insert, align 4
  %cmp = icmp ne i32 %1, %3
  br i1 %cmp, label %land.lhs.true.1, label %if.end.12

land.lhs.true.1:                                  ; preds = %land.lhs.true
  %4 = load %struct.display*, %struct.display** @display, align 8
  %d_tcs = getelementptr inbounds %struct.display, %struct.display* %4, i32 0, i32 83
  %arrayidx = getelementptr inbounds [201 x %union.tcu], [201 x %union.tcu]* %d_tcs, i32 0, i64 27
  %str = bitcast %union.tcu* %arrayidx to i8**
  %5 = load i8*, i8** %str, align 8
  %tobool2 = icmp ne i8* %5, null
  br i1 %tobool2, label %if.then, label %if.end.12

if.then:                                          ; preds = %land.lhs.true.1
  %6 = load i32, i32* %on.addr, align 4
  %7 = load %struct.display*, %struct.display** @display, align 8
  %d_insert3 = getelementptr inbounds %struct.display, %struct.display* %7, i32 0, i32 31
  store i32 %6, i32* %d_insert3, align 4
  %8 = load i32, i32* %on.addr, align 4
  %tobool4 = icmp ne i32 %8, 0
  br i1 %tobool4, label %if.then.5, label %if.else

if.then.5:                                        ; preds = %if.then
  %9 = load %struct.display*, %struct.display** @display, align 8
  %d_tcs6 = getelementptr inbounds %struct.display, %struct.display* %9, i32 0, i32 83
  %arrayidx7 = getelementptr inbounds [201 x %union.tcu], [201 x %union.tcu]* %d_tcs6, i32 0, i64 27
  %str8 = bitcast %union.tcu* %arrayidx7 to i8**
  %10 = load i8*, i8** %str8, align 8
  call void @AddCStr(i8* %10)
  br label %if.end

if.else:                                          ; preds = %if.then
  %11 = load %struct.display*, %struct.display** @display, align 8
  %d_tcs9 = getelementptr inbounds %struct.display, %struct.display* %11, i32 0, i32 83
  %arrayidx10 = getelementptr inbounds [201 x %union.tcu], [201 x %union.tcu]* %d_tcs9, i32 0, i64 28
  %str11 = bitcast %union.tcu* %arrayidx10 to i8**
  %12 = load i8*, i8** %str11, align 8
  call void @AddCStr(i8* %12)
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then.5
  br label %if.end.12

if.end.12:                                        ; preds = %if.end, %land.lhs.true.1, %land.lhs.true, %entry
  ret void
}

declare void @LKeypadMode(%struct.layer*, i32) #1

declare void @LCursorkeysMode(%struct.layer*, i32) #1

declare void @LCursorVisibility(%struct.layer*, i32) #1

declare void @LMouseMode(%struct.layer*, i32) #1

declare void @LSetRendition(%struct.layer*, %struct.mchar*) #1

declare void @LSetFlow(%struct.layer*, i32) #1

; Function Attrs: nounwind uwtable
define internal i32 @BlankResize(i32 %wi, i32 %he) #0 {
entry:
  %wi.addr = alloca i32, align 4
  %he.addr = alloca i32, align 4
  store i32 %wi, i32* %wi.addr, align 4
  store i32 %he, i32* %he.addr, align 4
  %0 = load i32, i32* %wi.addr, align 4
  %1 = load %struct.layer*, %struct.layer** @flayer, align 8
  %l_width = getelementptr inbounds %struct.layer, %struct.layer* %1, i32 0, i32 1
  store i32 %0, i32* %l_width, align 4
  %2 = load i32, i32* %he.addr, align 4
  %3 = load %struct.layer*, %struct.layer** @flayer, align 8
  %l_height = getelementptr inbounds %struct.layer, %struct.layer* %3, i32 0, i32 2
  store i32 %2, i32* %l_height, align 4
  ret i32 0
}

; Function Attrs: nounwind uwtable
define %struct.display* @MakeDisplay(i8* %uname, i8* %utty, i8* %term, i32 %fd, i32 %pid, %struct.mode* %Mode) #0 {
entry:
  %retval = alloca %struct.display*, align 8
  %uname.addr = alloca i8*, align 8
  %utty.addr = alloca i8*, align 8
  %term.addr = alloca i8*, align 8
  %fd.addr = alloca i32, align 4
  %pid.addr = alloca i32, align 4
  %Mode.addr = alloca %struct.mode*, align 8
  %u = alloca %struct.acluser**, align 8
  %b = alloca %struct.baud_values*, align 8
  store i8* %uname, i8** %uname.addr, align 8
  store i8* %utty, i8** %utty.addr, align 8
  store i8* %term, i8** %term.addr, align 8
  store i32 %fd, i32* %fd.addr, align 4
  store i32 %pid, i32* %pid.addr, align 4
  store %struct.mode* %Mode, %struct.mode** %Mode.addr, align 8
  %0 = load i8*, i8** %uname.addr, align 8
  %call = call %struct.acluser** @FindUserPtr(i8* %0)
  store %struct.acluser** %call, %struct.acluser*** %u, align 8
  %1 = load %struct.acluser*, %struct.acluser** %call, align 8
  %tobool = icmp ne %struct.acluser* %1, null
  br i1 %tobool, label %if.end, label %land.lhs.true

land.lhs.true:                                    ; preds = %entry
  %2 = load i8*, i8** %uname.addr, align 8
  %3 = load %struct.acluser**, %struct.acluser*** %u, align 8
  %call1 = call i32 @UserAdd(i8* %2, i8* null, %struct.acluser** %3)
  %tobool2 = icmp ne i32 %call1, 0
  br i1 %tobool2, label %if.then, label %if.end

if.then:                                          ; preds = %land.lhs.true
  store %struct.display* null, %struct.display** %retval
  br label %return

if.end:                                           ; preds = %land.lhs.true, %entry
  %call3 = call noalias i8* @calloc(i64 1, i64 7992) #3
  %4 = bitcast i8* %call3 to %struct.display*
  store %struct.display* %4, %struct.display** @display, align 8
  %cmp = icmp eq %struct.display* %4, null
  br i1 %cmp, label %if.then.4, label %if.end.5

if.then.4:                                        ; preds = %if.end
  store %struct.display* null, %struct.display** %retval
  br label %return

if.end.5:                                         ; preds = %if.end
  %5 = load %struct.display*, %struct.display** @displays, align 8
  %6 = load %struct.display*, %struct.display** @display, align 8
  %d_next = getelementptr inbounds %struct.display, %struct.display* %6, i32 0, i32 0
  store %struct.display* %5, %struct.display** %d_next, align 8
  %7 = load %struct.display*, %struct.display** @display, align 8
  store %struct.display* %7, %struct.display** @displays, align 8
  %8 = load %struct.display*, %struct.display** @display, align 8
  %d_flow = getelementptr inbounds %struct.display, %struct.display* %8, i32 0, i32 65
  store i32 1, i32* %d_flow, align 4
  %9 = load i32, i32* @defnonblock, align 4
  %10 = load %struct.display*, %struct.display** @display, align 8
  %d_nonblock = getelementptr inbounds %struct.display, %struct.display* %10, i32 0, i32 12
  store i32 %9, i32* %d_nonblock, align 4
  %11 = load i32, i32* %fd.addr, align 4
  %12 = load %struct.display*, %struct.display** @display, align 8
  %d_userfd = getelementptr inbounds %struct.display, %struct.display* %12, i32 0, i32 59
  store i32 %11, i32* %d_userfd, align 4
  %13 = load i32, i32* %fd.addr, align 4
  %14 = load %struct.display*, %struct.display** @display, align 8
  %d_writeev = getelementptr inbounds %struct.display, %struct.display* %14, i32 0, i32 61
  %fd6 = getelementptr inbounds %struct.event, %struct.event* %d_writeev, i32 0, i32 3
  store i32 %13, i32* %fd6, align 4
  %15 = load %struct.display*, %struct.display** @display, align 8
  %d_readev = getelementptr inbounds %struct.display, %struct.display* %15, i32 0, i32 60
  %fd7 = getelementptr inbounds %struct.event, %struct.event* %d_readev, i32 0, i32 3
  store i32 %13, i32* %fd7, align 4
  %16 = load %struct.display*, %struct.display** @display, align 8
  %d_readev8 = getelementptr inbounds %struct.display, %struct.display* %16, i32 0, i32 60
  %type = getelementptr inbounds %struct.event, %struct.event* %d_readev8, i32 0, i32 4
  store i32 1, i32* %type, align 4
  %17 = load %struct.display*, %struct.display** @display, align 8
  %d_writeev9 = getelementptr inbounds %struct.display, %struct.display* %17, i32 0, i32 61
  %type10 = getelementptr inbounds %struct.event, %struct.event* %d_writeev9, i32 0, i32 4
  store i32 2, i32* %type10, align 4
  %18 = load %struct.display*, %struct.display** @display, align 8
  %19 = bitcast %struct.display* %18 to i8*
  %20 = load %struct.display*, %struct.display** @display, align 8
  %d_writeev11 = getelementptr inbounds %struct.display, %struct.display* %20, i32 0, i32 61
  %data = getelementptr inbounds %struct.event, %struct.event* %d_writeev11, i32 0, i32 2
  store i8* %19, i8** %data, align 8
  %21 = load %struct.display*, %struct.display** @display, align 8
  %d_readev12 = getelementptr inbounds %struct.display, %struct.display* %21, i32 0, i32 60
  %data13 = getelementptr inbounds %struct.event, %struct.event* %d_readev12, i32 0, i32 2
  store i8* %19, i8** %data13, align 8
  %22 = load %struct.display*, %struct.display** @display, align 8
  %d_readev14 = getelementptr inbounds %struct.display, %struct.display* %22, i32 0, i32 60
  %handler = getelementptr inbounds %struct.event, %struct.event* %d_readev14, i32 0, i32 1
  store void (%struct.event*, i8*)* @disp_readev_fn, void (%struct.event*, i8*)** %handler, align 8
  %23 = load %struct.display*, %struct.display** @display, align 8
  %d_writeev15 = getelementptr inbounds %struct.display, %struct.display* %23, i32 0, i32 61
  %handler16 = getelementptr inbounds %struct.event, %struct.event* %d_writeev15, i32 0, i32 1
  store void (%struct.event*, i8*)* @disp_writeev_fn, void (%struct.event*, i8*)** %handler16, align 8
  %24 = load %struct.display*, %struct.display** @display, align 8
  %d_readev17 = getelementptr inbounds %struct.display, %struct.display* %24, i32 0, i32 60
  call void @evenq(%struct.event* %d_readev17)
  %25 = load %struct.display*, %struct.display** @display, align 8
  %d_obuflen = getelementptr inbounds %struct.display, %struct.display* %25, i32 0, i32 68
  %26 = load %struct.display*, %struct.display** @display, align 8
  %d_writeev18 = getelementptr inbounds %struct.display, %struct.display* %26, i32 0, i32 61
  %condpos = getelementptr inbounds %struct.event, %struct.event* %d_writeev18, i32 0, i32 9
  store i32* %d_obuflen, i32** %condpos, align 8
  %27 = load %struct.display*, %struct.display** @display, align 8
  %d_obuffree = getelementptr inbounds %struct.display, %struct.display* %27, i32 0, i32 72
  %28 = load %struct.display*, %struct.display** @display, align 8
  %d_writeev19 = getelementptr inbounds %struct.display, %struct.display* %28, i32 0, i32 61
  %condneg = getelementptr inbounds %struct.event, %struct.event* %d_writeev19, i32 0, i32 10
  store i32* %d_obuffree, i32** %condneg, align 8
  %29 = load %struct.display*, %struct.display** @display, align 8
  %d_writeev20 = getelementptr inbounds %struct.display, %struct.display* %29, i32 0, i32 61
  call void @evenq(%struct.event* %d_writeev20)
  %30 = load %struct.display*, %struct.display** @display, align 8
  %d_statusev = getelementptr inbounds %struct.display, %struct.display* %30, i32 0, i32 53
  %type21 = getelementptr inbounds %struct.event, %struct.event* %d_statusev, i32 0, i32 4
  store i32 0, i32* %type21, align 4
  %31 = load %struct.display*, %struct.display** @display, align 8
  %32 = bitcast %struct.display* %31 to i8*
  %33 = load %struct.display*, %struct.display** @display, align 8
  %d_statusev22 = getelementptr inbounds %struct.display, %struct.display* %33, i32 0, i32 53
  %data23 = getelementptr inbounds %struct.event, %struct.event* %d_statusev22, i32 0, i32 2
  store i8* %32, i8** %data23, align 8
  %34 = load %struct.display*, %struct.display** @display, align 8
  %d_statusev24 = getelementptr inbounds %struct.display, %struct.display* %34, i32 0, i32 53
  %handler25 = getelementptr inbounds %struct.event, %struct.event* %d_statusev24, i32 0, i32 1
  store void (%struct.event*, i8*)* @disp_status_fn, void (%struct.event*, i8*)** %handler25, align 8
  %35 = load %struct.display*, %struct.display** @display, align 8
  %d_hstatusev = getelementptr inbounds %struct.display, %struct.display* %35, i32 0, i32 54
  %type26 = getelementptr inbounds %struct.event, %struct.event* %d_hstatusev, i32 0, i32 4
  store i32 0, i32* %type26, align 4
  %36 = load %struct.display*, %struct.display** @display, align 8
  %37 = bitcast %struct.display* %36 to i8*
  %38 = load %struct.display*, %struct.display** @display, align 8
  %d_hstatusev27 = getelementptr inbounds %struct.display, %struct.display* %38, i32 0, i32 54
  %data28 = getelementptr inbounds %struct.event, %struct.event* %d_hstatusev27, i32 0, i32 2
  store i8* %37, i8** %data28, align 8
  %39 = load %struct.display*, %struct.display** @display, align 8
  %d_hstatusev29 = getelementptr inbounds %struct.display, %struct.display* %39, i32 0, i32 54
  %handler30 = getelementptr inbounds %struct.event, %struct.event* %d_hstatusev29, i32 0, i32 1
  store void (%struct.event*, i8*)* @disp_hstatus_fn, void (%struct.event*, i8*)** %handler30, align 8
  %40 = load %struct.display*, %struct.display** @display, align 8
  %d_blockedev = getelementptr inbounds %struct.display, %struct.display* %40, i32 0, i32 62
  %type31 = getelementptr inbounds %struct.event, %struct.event* %d_blockedev, i32 0, i32 4
  store i32 0, i32* %type31, align 4
  %41 = load %struct.display*, %struct.display** @display, align 8
  %42 = bitcast %struct.display* %41 to i8*
  %43 = load %struct.display*, %struct.display** @display, align 8
  %d_blockedev32 = getelementptr inbounds %struct.display, %struct.display* %43, i32 0, i32 62
  %data33 = getelementptr inbounds %struct.event, %struct.event* %d_blockedev32, i32 0, i32 2
  store i8* %42, i8** %data33, align 8
  %44 = load %struct.display*, %struct.display** @display, align 8
  %d_blockedev34 = getelementptr inbounds %struct.display, %struct.display* %44, i32 0, i32 62
  %handler35 = getelementptr inbounds %struct.event, %struct.event* %d_blockedev34, i32 0, i32 1
  store void (%struct.event*, i8*)* @disp_blocked_fn, void (%struct.event*, i8*)** %handler35, align 8
  %45 = load %struct.display*, %struct.display** @display, align 8
  %d_obuffree36 = getelementptr inbounds %struct.display, %struct.display* %45, i32 0, i32 72
  %46 = load %struct.display*, %struct.display** @display, align 8
  %d_blockedev37 = getelementptr inbounds %struct.display, %struct.display* %46, i32 0, i32 62
  %condpos38 = getelementptr inbounds %struct.event, %struct.event* %d_blockedev37, i32 0, i32 9
  store i32* %d_obuffree36, i32** %condpos38, align 8
  %47 = load %struct.display*, %struct.display** @display, align 8
  %d_obuflenmax = getelementptr inbounds %struct.display, %struct.display* %47, i32 0, i32 70
  %48 = load %struct.display*, %struct.display** @display, align 8
  %d_blockedev39 = getelementptr inbounds %struct.display, %struct.display* %48, i32 0, i32 62
  %condneg40 = getelementptr inbounds %struct.event, %struct.event* %d_blockedev39, i32 0, i32 10
  store i32* %d_obuflenmax, i32** %condneg40, align 8
  %49 = load %struct.display*, %struct.display** @display, align 8
  %d_hstatusev41 = getelementptr inbounds %struct.display, %struct.display* %49, i32 0, i32 54
  %handler42 = getelementptr inbounds %struct.event, %struct.event* %d_hstatusev41, i32 0, i32 1
  store void (%struct.event*, i8*)* @disp_hstatus_fn, void (%struct.event*, i8*)** %handler42, align 8
  %50 = load %struct.display*, %struct.display** @display, align 8
  %d_mapev = getelementptr inbounds %struct.display, %struct.display* %50, i32 0, i32 80
  %type43 = getelementptr inbounds %struct.event, %struct.event* %d_mapev, i32 0, i32 4
  store i32 0, i32* %type43, align 4
  %51 = load %struct.display*, %struct.display** @display, align 8
  %52 = bitcast %struct.display* %51 to i8*
  %53 = load %struct.display*, %struct.display** @display, align 8
  %d_mapev44 = getelementptr inbounds %struct.display, %struct.display* %53, i32 0, i32 80
  %data45 = getelementptr inbounds %struct.event, %struct.event* %d_mapev44, i32 0, i32 2
  store i8* %52, i8** %data45, align 8
  %54 = load %struct.display*, %struct.display** @display, align 8
  %d_mapev46 = getelementptr inbounds %struct.display, %struct.display* %54, i32 0, i32 80
  %handler47 = getelementptr inbounds %struct.event, %struct.event* %d_mapev46, i32 0, i32 1
  store void (%struct.event*, i8*)* @disp_map_fn, void (%struct.event*, i8*)** %handler47, align 8
  %55 = load %struct.display*, %struct.display** @display, align 8
  %d_idleev = getelementptr inbounds %struct.display, %struct.display* %55, i32 0, i32 104
  %type48 = getelementptr inbounds %struct.event, %struct.event* %d_idleev, i32 0, i32 4
  store i32 0, i32* %type48, align 4
  %56 = load %struct.display*, %struct.display** @display, align 8
  %57 = bitcast %struct.display* %56 to i8*
  %58 = load %struct.display*, %struct.display** @display, align 8
  %d_idleev49 = getelementptr inbounds %struct.display, %struct.display* %58, i32 0, i32 104
  %data50 = getelementptr inbounds %struct.event, %struct.event* %d_idleev49, i32 0, i32 2
  store i8* %57, i8** %data50, align 8
  %59 = load %struct.display*, %struct.display** @display, align 8
  %d_idleev51 = getelementptr inbounds %struct.display, %struct.display* %59, i32 0, i32 104
  %handler52 = getelementptr inbounds %struct.event, %struct.event* %d_idleev51, i32 0, i32 1
  store void (%struct.event*, i8*)* @disp_idle_fn, void (%struct.event*, i8*)** %handler52, align 8
  %60 = load %struct.display*, %struct.display** @display, align 8
  %d_blankerev = getelementptr inbounds %struct.display, %struct.display* %60, i32 0, i32 106
  %type53 = getelementptr inbounds %struct.event, %struct.event* %d_blankerev, i32 0, i32 4
  store i32 1, i32* %type53, align 4
  %61 = load %struct.display*, %struct.display** @display, align 8
  %62 = bitcast %struct.display* %61 to i8*
  %63 = load %struct.display*, %struct.display** @display, align 8
  %d_blankerev54 = getelementptr inbounds %struct.display, %struct.display* %63, i32 0, i32 106
  %data55 = getelementptr inbounds %struct.event, %struct.event* %d_blankerev54, i32 0, i32 2
  store i8* %62, i8** %data55, align 8
  %64 = load %struct.display*, %struct.display** @display, align 8
  %d_blankerev56 = getelementptr inbounds %struct.display, %struct.display* %64, i32 0, i32 106
  %handler57 = getelementptr inbounds %struct.event, %struct.event* %d_blankerev56, i32 0, i32 1
  store void (%struct.event*, i8*)* @disp_blanker_fn, void (%struct.event*, i8*)** %handler57, align 8
  %65 = load %struct.display*, %struct.display** @display, align 8
  %d_blankerev58 = getelementptr inbounds %struct.display, %struct.display* %65, i32 0, i32 106
  %fd59 = getelementptr inbounds %struct.event, %struct.event* %d_blankerev58, i32 0, i32 3
  store i32 -1, i32* %fd59, align 4
  %66 = load %struct.display*, %struct.display** @display, align 8
  %d_OldMode = getelementptr inbounds %struct.display, %struct.display* %66, i32 0, i32 63
  %67 = load %struct.mode*, %struct.mode** %Mode.addr, align 8
  %68 = bitcast %struct.mode* %d_OldMode to i8*
  %69 = bitcast %struct.mode* %67 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %68, i8* %69, i64 60, i32 4, i1 false)
  %70 = load %struct.display*, %struct.display** @display, align 8
  %d_status_obuffree = getelementptr inbounds %struct.display, %struct.display* %70, i32 0, i32 51
  store i32 -1, i32* %d_status_obuffree, align 4
  call void @Resize_obuf()
  %71 = load i32, i32* @defobuflimit, align 4
  %72 = load %struct.display*, %struct.display** @display, align 8
  %d_obufmax = getelementptr inbounds %struct.display, %struct.display* %72, i32 0, i32 69
  store i32 %71, i32* %d_obufmax, align 4
  %73 = load %struct.display*, %struct.display** @display, align 8
  %d_obuflen60 = getelementptr inbounds %struct.display, %struct.display* %73, i32 0, i32 68
  %74 = load i32, i32* %d_obuflen60, align 4
  %75 = load %struct.display*, %struct.display** @display, align 8
  %d_obufmax61 = getelementptr inbounds %struct.display, %struct.display* %75, i32 0, i32 69
  %76 = load i32, i32* %d_obufmax61, align 4
  %sub = sub nsw i32 %74, %76
  %77 = load %struct.display*, %struct.display** @display, align 8
  %d_obuflenmax62 = getelementptr inbounds %struct.display, %struct.display* %77, i32 0, i32 70
  store i32 %sub, i32* %d_obuflenmax62, align 4
  %78 = load i32, i32* @defautonuke, align 4
  %79 = load %struct.display*, %struct.display** @display, align 8
  %d_auto_nuke = getelementptr inbounds %struct.display, %struct.display* %79, i32 0, i32 73
  store i32 %78, i32* %d_auto_nuke, align 4
  %80 = load %struct.display*, %struct.display** @display, align 8
  %d_obuf = getelementptr inbounds %struct.display, %struct.display* %80, i32 0, i32 67
  %81 = load i8*, i8** %d_obuf, align 8
  %82 = load %struct.display*, %struct.display** @display, align 8
  %d_obufp = getelementptr inbounds %struct.display, %struct.display* %82, i32 0, i32 71
  store i8* %81, i8** %d_obufp, align 8
  %83 = load %struct.display*, %struct.display** @display, align 8
  %d_printfd = getelementptr inbounds %struct.display, %struct.display* %83, i32 0, i32 98
  store i32 -1, i32* %d_printfd, align 4
  %84 = load i32, i32* %pid.addr, align 4
  %85 = load %struct.display*, %struct.display** @display, align 8
  %d_userpid = getelementptr inbounds %struct.display, %struct.display* %85, i32 0, i32 57
  store i32 %84, i32* %d_userpid, align 4
  %86 = load %struct.display*, %struct.display** @display, align 8
  %d_OldMode63 = getelementptr inbounds %struct.display, %struct.display* %86, i32 0, i32 63
  %tio = getelementptr inbounds %struct.mode, %struct.mode* %d_OldMode63, i32 0, i32 0
  %call64 = call i32 @cfgetospeed(%struct.termios* %tio) #3
  %call65 = call %struct.baud_values* @lookup_baud(i32 %call64)
  store %struct.baud_values* %call65, %struct.baud_values** %b, align 8
  %tobool66 = icmp ne %struct.baud_values* %call65, null
  br i1 %tobool66, label %if.then.67, label %if.end.68

if.then.67:                                       ; preds = %if.end.5
  %87 = load %struct.baud_values*, %struct.baud_values** %b, align 8
  %idx = getelementptr inbounds %struct.baud_values, %struct.baud_values* %87, i32 0, i32 0
  %88 = load i32, i32* %idx, align 4
  %conv = trunc i32 %88 to i16
  %89 = load %struct.display*, %struct.display** @display, align 8
  %d_dospeed = getelementptr inbounds %struct.display, %struct.display* %89, i32 0, i32 87
  store i16 %conv, i16* %d_dospeed, align 2
  br label %if.end.68

if.end.68:                                        ; preds = %if.then.67, %if.end.5
  br label %do.body

do.body:                                          ; preds = %if.end.68
  br label %do.end

do.end:                                           ; preds = %do.body
  %90 = load %struct.display*, %struct.display** @display, align 8
  %d_usertty = getelementptr inbounds %struct.display, %struct.display* %90, i32 0, i32 58
  %arraydecay = getelementptr inbounds [4096 x i8], [4096 x i8]* %d_usertty, i32 0, i32 0
  %91 = load i8*, i8** %utty.addr, align 8
  %call69 = call i8* @strncpy(i8* %arraydecay, i8* %91, i64 4095) #3
  %92 = load %struct.display*, %struct.display** @display, align 8
  %d_usertty70 = getelementptr inbounds %struct.display, %struct.display* %92, i32 0, i32 58
  %arrayidx = getelementptr inbounds [4096 x i8], [4096 x i8]* %d_usertty70, i32 0, i64 4095
  store i8 0, i8* %arrayidx, align 1
  %93 = load %struct.display*, %struct.display** @display, align 8
  %d_termname = getelementptr inbounds %struct.display, %struct.display* %93, i32 0, i32 13
  %arraydecay71 = getelementptr inbounds [33 x i8], [33 x i8]* %d_termname, i32 0, i32 0
  %94 = load i8*, i8** %term.addr, align 8
  %call72 = call i8* @strncpy(i8* %arraydecay71, i8* %94, i64 32) #3
  %95 = load %struct.display*, %struct.display** @display, align 8
  %d_termname73 = getelementptr inbounds %struct.display, %struct.display* %95, i32 0, i32 13
  %arrayidx74 = getelementptr inbounds [33 x i8], [33 x i8]* %d_termname73, i32 0, i64 32
  store i8 0, i8* %arrayidx74, align 1
  %96 = load %struct.acluser**, %struct.acluser*** %u, align 8
  %97 = load %struct.acluser*, %struct.acluser** %96, align 8
  %98 = load %struct.display*, %struct.display** @display, align 8
  %d_user = getelementptr inbounds %struct.display, %struct.display* %98, i32 0, i32 1
  store %struct.acluser* %97, %struct.acluser** %d_user, align 8
  %99 = load %struct.display*, %struct.display** @display, align 8
  %d_processinput = getelementptr inbounds %struct.display, %struct.display* %99, i32 0, i32 6
  store void (i8*, i32)* @ProcessInput, void (i8*, i32)** %d_processinput, align 8
  %100 = load i32, i32* @defmousetrack, align 4
  %101 = load %struct.display*, %struct.display** @display, align 8
  %d_mousetrack = getelementptr inbounds %struct.display, %struct.display* %101, i32 0, i32 40
  store i32 %100, i32* %d_mousetrack, align 4
  %102 = load %struct.display*, %struct.display** @display, align 8
  store %struct.display* %102, %struct.display** %retval
  br label %return

return:                                           ; preds = %do.end, %if.then.4, %if.then
  %103 = load %struct.display*, %struct.display** %retval
  ret %struct.display* %103
}

declare %struct.acluser** @FindUserPtr(i8*) #1

declare i32 @UserAdd(i8*, i8*, %struct.acluser**) #1

; Function Attrs: nounwind
declare noalias i8* @calloc(i64, i64) #2

; Function Attrs: nounwind uwtable
define internal void @disp_readev_fn(%struct.event* %ev, i8* %data) #0 {
entry:
  %ev.addr = alloca %struct.event*, align 8
  %data.addr = alloca i8*, align 8
  %size = alloca i32, align 4
  %buf = alloca [4096 x i8], align 16
  %cv = alloca %struct.canvas*, align 8
  %bufp = alloca i8*, align 8
  %p = alloca %struct.win*, align 8
  %bp = alloca i8*, align 8
  %x = alloca i32, align 4
  %y = alloca i32, align 4
  %i = alloca i32, align 4
  %cv206 = alloca %struct.canvas*, align 8
  %i249 = alloca i32, align 4
  %j = alloca i32, align 4
  %c = alloca i32, align 4
  %enc = alloca i32, align 4
  %buf2 = alloca [8202 x i8], align 16
  %font = alloca i32, align 4
  store %struct.event* %ev, %struct.event** %ev.addr, align 8
  store i8* %data, i8** %data.addr, align 8
  %0 = load i8*, i8** %data.addr, align 8
  %1 = bitcast i8* %0 to %struct.display*
  store %struct.display* %1, %struct.display** @display, align 8
  %2 = load %struct.display*, %struct.display** @display, align 8
  %d_forecv = getelementptr inbounds %struct.display, %struct.display* %2, i32 0, i32 4
  %3 = load %struct.canvas*, %struct.canvas** %d_forecv, align 8
  %tobool = icmp ne %struct.canvas* %3, null
  br i1 %tobool, label %if.then, label %if.end.4

if.then:                                          ; preds = %entry
  %4 = load %struct.display*, %struct.display** @display, align 8
  %d_forecv1 = getelementptr inbounds %struct.display, %struct.display* %4, i32 0, i32 4
  %5 = load %struct.canvas*, %struct.canvas** %d_forecv1, align 8
  %c_layer = getelementptr inbounds %struct.canvas, %struct.canvas* %5, i32 0, i32 9
  %6 = load %struct.layer*, %struct.layer** %c_layer, align 8
  %l_cvlist = getelementptr inbounds %struct.layer, %struct.layer* %6, i32 0, i32 0
  %7 = load %struct.canvas*, %struct.canvas** %l_cvlist, align 8
  store %struct.canvas* %7, %struct.canvas** %cv, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.then
  %8 = load %struct.canvas*, %struct.canvas** %cv, align 8
  %tobool2 = icmp ne %struct.canvas* %8, null
  br i1 %tobool2, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %9 = load %struct.canvas*, %struct.canvas** %cv, align 8
  %c_display = getelementptr inbounds %struct.canvas, %struct.canvas* %9, i32 0, i32 1
  %10 = load %struct.display*, %struct.display** %c_display, align 8
  store %struct.display* %10, %struct.display** @display, align 8
  %11 = load %struct.display*, %struct.display** @display, align 8
  %d_status = getelementptr inbounds %struct.display, %struct.display* %11, i32 0, i32 43
  %12 = load i32, i32* %d_status, align 4
  %cmp = icmp eq i32 %12, 1
  br i1 %cmp, label %if.then.3, label %if.end

if.then.3:                                        ; preds = %for.body
  call void @RemoveStatus()
  br label %if.end

if.end:                                           ; preds = %if.then.3, %for.body
  br label %for.inc

for.inc:                                          ; preds = %if.end
  %13 = load %struct.canvas*, %struct.canvas** %cv, align 8
  %c_lnext = getelementptr inbounds %struct.canvas, %struct.canvas* %13, i32 0, i32 10
  %14 = load %struct.canvas*, %struct.canvas** %c_lnext, align 8
  store %struct.canvas* %14, %struct.canvas** %cv, align 8
  br label %for.cond

for.end:                                          ; preds = %for.cond
  br label %if.end.4

if.end.4:                                         ; preds = %for.end, %entry
  %15 = load i8*, i8** %data.addr, align 8
  %16 = bitcast i8* %15 to %struct.display*
  store %struct.display* %16, %struct.display** @display, align 8
  %17 = load %struct.display*, %struct.display** @display, align 8
  %d_fore = getelementptr inbounds %struct.display, %struct.display* %17, i32 0, i32 10
  %18 = load %struct.win*, %struct.win** %d_fore, align 8
  %cmp5 = icmp eq %struct.win* %18, null
  br i1 %cmp5, label %if.then.6, label %if.else

if.then.6:                                        ; preds = %if.end.4
  store i32 4096, i32* %size, align 4
  br label %if.end.22

if.else:                                          ; preds = %if.end.4
  %19 = load %struct.display*, %struct.display** @display, align 8
  %d_fore7 = getelementptr inbounds %struct.display, %struct.display* %19, i32 0, i32 10
  %20 = load %struct.win*, %struct.win** %d_fore7, align 8
  %w_pwin = getelementptr inbounds %struct.win, %struct.win* %20, i32 0, i32 6
  %21 = load %struct.pseudowin*, %struct.pseudowin** %w_pwin, align 8
  %tobool8 = icmp ne %struct.pseudowin* %21, null
  br i1 %tobool8, label %land.lhs.true, label %if.else.16

land.lhs.true:                                    ; preds = %if.else
  %22 = load %struct.display*, %struct.display** @display, align 8
  %d_fore9 = getelementptr inbounds %struct.display, %struct.display* %22, i32 0, i32 10
  %23 = load %struct.win*, %struct.win** %d_fore9, align 8
  %w_pwin10 = getelementptr inbounds %struct.win, %struct.win* %23, i32 0, i32 6
  %24 = load %struct.pseudowin*, %struct.pseudowin** %w_pwin10, align 8
  %p_fdpat = getelementptr inbounds %struct.pseudowin, %struct.pseudowin* %24, i32 0, i32 0
  %25 = load i32, i32* %p_fdpat, align 4
  %and = and i32 %25, 4096
  %tobool11 = icmp ne i32 %and, 0
  br i1 %tobool11, label %if.then.12, label %if.else.16

if.then.12:                                       ; preds = %land.lhs.true
  %26 = load %struct.display*, %struct.display** @display, align 8
  %d_fore13 = getelementptr inbounds %struct.display, %struct.display* %26, i32 0, i32 10
  %27 = load %struct.win*, %struct.win** %d_fore13, align 8
  %w_pwin14 = getelementptr inbounds %struct.win, %struct.win* %27, i32 0, i32 6
  %28 = load %struct.pseudowin*, %struct.pseudowin** %w_pwin14, align 8
  %p_inlen = getelementptr inbounds %struct.pseudowin, %struct.pseudowin* %28, i32 0, i32 8
  %29 = load i32, i32* %p_inlen, align 4
  %conv = sext i32 %29 to i64
  %sub = sub i64 4096, %conv
  %conv15 = trunc i64 %sub to i32
  store i32 %conv15, i32* %size, align 4
  br label %if.end.21

if.else.16:                                       ; preds = %land.lhs.true, %if.else
  %30 = load %struct.display*, %struct.display** @display, align 8
  %d_fore17 = getelementptr inbounds %struct.display, %struct.display* %30, i32 0, i32 10
  %31 = load %struct.win*, %struct.win** %d_fore17, align 8
  %w_inlen = getelementptr inbounds %struct.win, %struct.win* %31, i32 0, i32 17
  %32 = load i32, i32* %w_inlen, align 4
  %conv18 = sext i32 %32 to i64
  %sub19 = sub i64 4096, %conv18
  %conv20 = trunc i64 %sub19 to i32
  store i32 %conv20, i32* %size, align 4
  br label %if.end.21

if.end.21:                                        ; preds = %if.else.16, %if.then.12
  br label %if.end.22

if.end.22:                                        ; preds = %if.end.21, %if.then.6
  %33 = load i32, i32* %size, align 4
  %cmp23 = icmp sgt i32 %33, 4096
  br i1 %cmp23, label %if.then.25, label %if.end.26

if.then.25:                                       ; preds = %if.end.22
  store i32 4096, i32* %size, align 4
  br label %if.end.26

if.end.26:                                        ; preds = %if.then.25, %if.end.22
  %34 = load i32, i32* %size, align 4
  %cmp27 = icmp sle i32 %34, 0
  br i1 %cmp27, label %if.then.29, label %if.end.30

if.then.29:                                       ; preds = %if.end.26
  store i32 1, i32* %size, align 4
  br label %if.end.30

if.end.30:                                        ; preds = %if.then.29, %if.end.26
  %35 = load %struct.display*, %struct.display** @display, align 8
  %d_userfd = getelementptr inbounds %struct.display, %struct.display* %35, i32 0, i32 59
  %36 = load i32, i32* %d_userfd, align 4
  %arraydecay = getelementptr inbounds [4096 x i8], [4096 x i8]* %buf, i32 0, i32 0
  %37 = load i32, i32* %size, align 4
  %conv31 = sext i32 %37 to i64
  %call = call i64 @read(i32 %36, i8* %arraydecay, i64 %conv31)
  %conv32 = trunc i64 %call to i32
  store i32 %conv32, i32* %size, align 4
  %38 = load i32, i32* %size, align 4
  %cmp33 = icmp slt i32 %38, 0
  br i1 %cmp33, label %if.then.35, label %if.else.45

if.then.35:                                       ; preds = %if.end.30
  %call36 = call i32* @__errno_location() #7
  %39 = load i32, i32* %call36, align 4
  %cmp37 = icmp eq i32 %39, 4
  br i1 %cmp37, label %if.then.42, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.then.35
  %call39 = call i32* @__errno_location() #7
  %40 = load i32, i32* %call39, align 4
  %cmp40 = icmp eq i32 %40, 11
  br i1 %cmp40, label %if.then.42, label %if.end.43

if.then.42:                                       ; preds = %lor.lhs.false, %if.then.35
  br label %return

if.end.43:                                        ; preds = %lor.lhs.false
  br label %do.body

do.body:                                          ; preds = %if.end.43
  br label %do.end

do.end:                                           ; preds = %do.body
  call void @Hangup()
  %call44 = call i32 @sleep(i32 1)
  br label %return

if.else.45:                                       ; preds = %if.end.30
  %41 = load i32, i32* %size, align 4
  %cmp46 = icmp eq i32 %41, 0
  br i1 %cmp46, label %if.then.48, label %if.end.52

if.then.48:                                       ; preds = %if.else.45
  br label %do.body.49

do.body.49:                                       ; preds = %if.then.48
  br label %do.end.50

do.end.50:                                        ; preds = %do.body.49
  call void @Hangup()
  %call51 = call i32 @sleep(i32 1)
  br label %return

if.end.52:                                        ; preds = %if.else.45
  br label %if.end.53

if.end.53:                                        ; preds = %if.end.52
  %42 = load %struct.display*, %struct.display** @display, align 8
  %d_blocked = getelementptr inbounds %struct.display, %struct.display* %42, i32 0, i32 102
  %43 = load i32, i32* %d_blocked, align 4
  %cmp54 = icmp eq i32 %43, 4
  br i1 %cmp54, label %if.then.56, label %if.end.62

if.then.56:                                       ; preds = %if.end.53
  %44 = load %struct.display*, %struct.display** @display, align 8
  %d_blocked57 = getelementptr inbounds %struct.display, %struct.display* %44, i32 0, i32 102
  store i32 0, i32* %d_blocked57, align 4
  call void @KillBlanker()
  %45 = load %struct.display*, %struct.display** @display, align 8
  %d_fore58 = getelementptr inbounds %struct.display, %struct.display* %45, i32 0, i32 10
  %46 = load %struct.win*, %struct.win** %d_fore58, align 8
  %tobool59 = icmp ne %struct.win* %46, null
  br i1 %tobool59, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.then.56
  %47 = load %struct.display*, %struct.display** @display, align 8
  %d_fore60 = getelementptr inbounds %struct.display, %struct.display* %47, i32 0, i32 10
  %48 = load %struct.win*, %struct.win** %d_fore60, align 8
  %w_norefresh = getelementptr inbounds %struct.win, %struct.win* %48, i32 0, i32 74
  %49 = load i8, i8* %w_norefresh, align 1
  %conv61 = sext i8 %49 to i32
  br label %cond.end

cond.false:                                       ; preds = %if.then.56
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %conv61, %cond.true ], [ 0, %cond.false ]
  call void @Activate(i32 %cond)
  call void @ResetIdle()
  br label %return

if.end.62:                                        ; preds = %if.end.53
  %50 = load %struct.display*, %struct.display** @display, align 8
  %d_blocked63 = getelementptr inbounds %struct.display, %struct.display* %50, i32 0, i32 102
  %51 = load i32, i32* %d_blocked63, align 4
  %cmp64 = icmp sgt i32 %51, 1
  br i1 %cmp64, label %if.then.66, label %if.end.81

if.then.66:                                       ; preds = %if.end.62
  store %struct.layer* null, %struct.layer** @flayer, align 8
  %52 = load %struct.win*, %struct.win** @windows, align 8
  store %struct.win* %52, %struct.win** %p, align 8
  br label %for.cond.67

for.cond.67:                                      ; preds = %for.inc.77, %if.then.66
  %53 = load %struct.win*, %struct.win** %p, align 8
  %tobool68 = icmp ne %struct.win* %53, null
  br i1 %tobool68, label %for.body.69, label %for.end.78

for.body.69:                                      ; preds = %for.cond.67
  %54 = load %struct.win*, %struct.win** %p, align 8
  %w_zdisplay = getelementptr inbounds %struct.win, %struct.win* %54, i32 0, i32 91
  %55 = load %struct.display*, %struct.display** %w_zdisplay, align 8
  %56 = load %struct.display*, %struct.display** @display, align 8
  %cmp70 = icmp eq %struct.display* %55, %56
  br i1 %cmp70, label %if.then.72, label %if.end.76

if.then.72:                                       ; preds = %for.body.69
  %57 = load %struct.win*, %struct.win** %p, align 8
  %w_layer = getelementptr inbounds %struct.win, %struct.win* %57, i32 0, i32 3
  store %struct.layer* %w_layer, %struct.layer** @flayer, align 8
  %arraydecay73 = getelementptr inbounds [4096 x i8], [4096 x i8]* %buf, i32 0, i32 0
  store i8* %arraydecay73, i8** %bufp, align 8
  br label %while.cond

while.cond:                                       ; preds = %while.body, %if.then.72
  %58 = load i32, i32* %size, align 4
  %cmp74 = icmp sgt i32 %58, 0
  br i1 %cmp74, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %59 = load %struct.layer*, %struct.layer** @flayer, align 8
  %l_layfn = getelementptr inbounds %struct.layer, %struct.layer* %59, i32 0, i32 6
  %60 = load %struct.LayFuncs*, %struct.LayFuncs** %l_layfn, align 8
  %lf_LayProcess = getelementptr inbounds %struct.LayFuncs, %struct.LayFuncs* %60, i32 0, i32 0
  %61 = load void (i8**, i32*)*, void (i8**, i32*)** %lf_LayProcess, align 8
  call void %61(i8** %bufp, i32* %size)
  br label %while.cond

while.end:                                        ; preds = %while.cond
  br label %return

if.end.76:                                        ; preds = %for.body.69
  br label %for.inc.77

for.inc.77:                                       ; preds = %if.end.76
  %62 = load %struct.win*, %struct.win** %p, align 8
  %w_next = getelementptr inbounds %struct.win, %struct.win* %62, i32 0, i32 0
  %63 = load %struct.win*, %struct.win** %w_next, align 8
  store %struct.win* %63, %struct.win** %p, align 8
  br label %for.cond.67

for.end.78:                                       ; preds = %for.cond.67
  br label %do.body.79

do.body.79:                                       ; preds = %for.end.78
  br label %do.end.80

do.end.80:                                        ; preds = %do.body.79
  %64 = load %struct.display*, %struct.display** @display, align 8
  call void @zmodem_abort(%struct.win* null, %struct.display* %64)
  br label %if.end.81

if.end.81:                                        ; preds = %do.end.80, %if.end.62
  %65 = load i32, i32* @idletimo, align 4
  %cmp82 = icmp sgt i32 %65, 0
  br i1 %cmp82, label %if.then.84, label %if.end.85

if.then.84:                                       ; preds = %if.end.81
  call void @ResetIdle()
  br label %if.end.85

if.end.85:                                        ; preds = %if.then.84, %if.end.81
  %66 = load %struct.display*, %struct.display** @display, align 8
  %d_fore86 = getelementptr inbounds %struct.display, %struct.display* %66, i32 0, i32 10
  %67 = load %struct.win*, %struct.win** %d_fore86, align 8
  %tobool87 = icmp ne %struct.win* %67, null
  br i1 %tobool87, label %if.then.88, label %if.end.90

if.then.88:                                       ; preds = %if.end.85
  %68 = load %struct.display*, %struct.display** @display, align 8
  %69 = load %struct.display*, %struct.display** @display, align 8
  %d_fore89 = getelementptr inbounds %struct.display, %struct.display* %69, i32 0, i32 10
  %70 = load %struct.win*, %struct.win** %d_fore89, align 8
  %w_lastdisp = getelementptr inbounds %struct.win, %struct.win* %70, i32 0, i32 8
  store %struct.display* %68, %struct.display** %w_lastdisp, align 8
  br label %if.end.90

if.end.90:                                        ; preds = %if.then.88, %if.end.85
  %71 = load %struct.display*, %struct.display** @display, align 8
  %d_mouse = getelementptr inbounds %struct.display, %struct.display* %71, i32 0, i32 39
  %72 = load i32, i32* %d_mouse, align 4
  %tobool91 = icmp ne i32 %72, 0
  br i1 %tobool91, label %land.lhs.true.92, label %if.end.237

land.lhs.true.92:                                 ; preds = %if.end.90
  %73 = load %struct.display*, %struct.display** @display, align 8
  %d_forecv93 = getelementptr inbounds %struct.display, %struct.display* %73, i32 0, i32 4
  %74 = load %struct.canvas*, %struct.canvas** %d_forecv93, align 8
  %tobool94 = icmp ne %struct.canvas* %74, null
  br i1 %tobool94, label %if.then.95, label %if.end.237

if.then.95:                                       ; preds = %land.lhs.true.92
  %arraydecay96 = getelementptr inbounds [4096 x i8], [4096 x i8]* %buf, i32 0, i32 0
  store i8* %arraydecay96, i8** %bp, align 8
  %75 = load i32, i32* %size, align 4
  store i32 %75, i32* %i, align 4
  %76 = load i32, i32* %size, align 4
  store i32 %76, i32* %i, align 4
  br label %for.cond.97

for.cond.97:                                      ; preds = %for.inc.233, %if.then.95
  %77 = load i32, i32* %i, align 4
  %cmp98 = icmp sgt i32 %77, 0
  br i1 %cmp98, label %for.body.100, label %for.end.236

for.body.100:                                     ; preds = %for.cond.97
  %78 = load i32, i32* %i, align 4
  %cmp101 = icmp sgt i32 %78, 5
  br i1 %cmp101, label %land.lhs.true.103, label %if.else.118

land.lhs.true.103:                                ; preds = %for.body.100
  %79 = load i8*, i8** %bp, align 8
  %arrayidx = getelementptr inbounds i8, i8* %79, i64 0
  %80 = load i8, i8* %arrayidx, align 1
  %conv104 = zext i8 %80 to i32
  %cmp105 = icmp eq i32 %conv104, 27
  br i1 %cmp105, label %land.lhs.true.107, label %if.else.118

land.lhs.true.107:                                ; preds = %land.lhs.true.103
  %81 = load i8*, i8** %bp, align 8
  %arrayidx108 = getelementptr inbounds i8, i8* %81, i64 1
  %82 = load i8, i8* %arrayidx108, align 1
  %conv109 = zext i8 %82 to i32
  %cmp110 = icmp eq i32 %conv109, 91
  br i1 %cmp110, label %land.lhs.true.112, label %if.else.118

land.lhs.true.112:                                ; preds = %land.lhs.true.107
  %83 = load i8*, i8** %bp, align 8
  %arrayidx113 = getelementptr inbounds i8, i8* %83, i64 2
  %84 = load i8, i8* %arrayidx113, align 1
  %conv114 = zext i8 %84 to i32
  %cmp115 = icmp eq i32 %conv114, 77
  br i1 %cmp115, label %if.then.117, label %if.else.118

if.then.117:                                      ; preds = %land.lhs.true.112
  %85 = load i8*, i8** %bp, align 8
  %incdec.ptr = getelementptr inbounds i8, i8* %85, i32 1
  store i8* %incdec.ptr, i8** %bp, align 8
  %86 = load i32, i32* %i, align 4
  %dec = add nsw i32 %86, -1
  store i32 %dec, i32* %i, align 4
  br label %if.end.133

if.else.118:                                      ; preds = %land.lhs.true.112, %land.lhs.true.107, %land.lhs.true.103, %for.body.100
  %87 = load i32, i32* %i, align 4
  %cmp119 = icmp slt i32 %87, 5
  br i1 %cmp119, label %if.then.131, label %lor.lhs.false.121

lor.lhs.false.121:                                ; preds = %if.else.118
  %88 = load i8*, i8** %bp, align 8
  %arrayidx122 = getelementptr inbounds i8, i8* %88, i64 0
  %89 = load i8, i8* %arrayidx122, align 1
  %conv123 = zext i8 %89 to i32
  %cmp124 = icmp ne i32 %conv123, 155
  br i1 %cmp124, label %if.then.131, label %lor.lhs.false.126

lor.lhs.false.126:                                ; preds = %lor.lhs.false.121
  %90 = load i8*, i8** %bp, align 8
  %arrayidx127 = getelementptr inbounds i8, i8* %90, i64 1
  %91 = load i8, i8* %arrayidx127, align 1
  %conv128 = zext i8 %91 to i32
  %cmp129 = icmp ne i32 %conv128, 77
  br i1 %cmp129, label %if.then.131, label %if.end.132

if.then.131:                                      ; preds = %lor.lhs.false.126, %lor.lhs.false.121, %if.else.118
  br label %for.inc.233

if.end.132:                                       ; preds = %lor.lhs.false.126
  br label %if.end.133

if.end.133:                                       ; preds = %if.end.132, %if.then.117
  %92 = load i8*, i8** %bp, align 8
  %arrayidx134 = getelementptr inbounds i8, i8* %92, i64 3
  %93 = load i8, i8* %arrayidx134, align 1
  %conv135 = zext i8 %93 to i32
  %sub136 = sub nsw i32 %conv135, 33
  store i32 %sub136, i32* %x, align 4
  %94 = load i8*, i8** %bp, align 8
  %arrayidx137 = getelementptr inbounds i8, i8* %94, i64 4
  %95 = load i8, i8* %arrayidx137, align 1
  %conv138 = zext i8 %95 to i32
  %sub139 = sub nsw i32 %conv138, 33
  store i32 %sub139, i32* %y, align 4
  %96 = load i32, i32* %x, align 4
  %97 = load %struct.display*, %struct.display** @display, align 8
  %d_forecv140 = getelementptr inbounds %struct.display, %struct.display* %97, i32 0, i32 4
  %98 = load %struct.canvas*, %struct.canvas** %d_forecv140, align 8
  %c_xs = getelementptr inbounds %struct.canvas, %struct.canvas* %98, i32 0, i32 14
  %99 = load i32, i32* %c_xs, align 4
  %cmp141 = icmp sge i32 %96, %99
  br i1 %cmp141, label %land.lhs.true.143, label %if.else.197

land.lhs.true.143:                                ; preds = %if.end.133
  %100 = load i32, i32* %x, align 4
  %101 = load %struct.display*, %struct.display** @display, align 8
  %d_forecv144 = getelementptr inbounds %struct.display, %struct.display* %101, i32 0, i32 4
  %102 = load %struct.canvas*, %struct.canvas** %d_forecv144, align 8
  %c_xe = getelementptr inbounds %struct.canvas, %struct.canvas* %102, i32 0, i32 15
  %103 = load i32, i32* %c_xe, align 4
  %cmp145 = icmp sle i32 %100, %103
  br i1 %cmp145, label %land.lhs.true.147, label %if.else.197

land.lhs.true.147:                                ; preds = %land.lhs.true.143
  %104 = load i32, i32* %y, align 4
  %105 = load %struct.display*, %struct.display** @display, align 8
  %d_forecv148 = getelementptr inbounds %struct.display, %struct.display* %105, i32 0, i32 4
  %106 = load %struct.canvas*, %struct.canvas** %d_forecv148, align 8
  %c_ys = getelementptr inbounds %struct.canvas, %struct.canvas* %106, i32 0, i32 16
  %107 = load i32, i32* %c_ys, align 4
  %cmp149 = icmp sge i32 %104, %107
  br i1 %cmp149, label %land.lhs.true.151, label %if.else.197

land.lhs.true.151:                                ; preds = %land.lhs.true.147
  %108 = load i32, i32* %y, align 4
  %109 = load %struct.display*, %struct.display** @display, align 8
  %d_forecv152 = getelementptr inbounds %struct.display, %struct.display* %109, i32 0, i32 4
  %110 = load %struct.canvas*, %struct.canvas** %d_forecv152, align 8
  %c_ye = getelementptr inbounds %struct.canvas, %struct.canvas* %110, i32 0, i32 17
  %111 = load i32, i32* %c_ye, align 4
  %cmp153 = icmp sle i32 %108, %111
  br i1 %cmp153, label %if.then.155, label %if.else.197

if.then.155:                                      ; preds = %land.lhs.true.151
  %112 = load %struct.display*, %struct.display** @display, align 8
  %d_fore156 = getelementptr inbounds %struct.display, %struct.display* %112, i32 0, i32 10
  %113 = load %struct.win*, %struct.win** %d_fore156, align 8
  %tobool157 = icmp ne %struct.win* %113, null
  br i1 %tobool157, label %land.lhs.true.158, label %lor.lhs.false.161

land.lhs.true.158:                                ; preds = %if.then.155
  %114 = load %struct.display*, %struct.display** @display, align 8
  %d_fore159 = getelementptr inbounds %struct.display, %struct.display* %114, i32 0, i32 10
  %115 = load %struct.win*, %struct.win** %d_fore159, align 8
  %w_mouse = getelementptr inbounds %struct.win, %struct.win* %115, i32 0, i32 75
  %116 = load i32, i32* %w_mouse, align 4
  %tobool160 = icmp ne i32 %116, 0
  br i1 %tobool160, label %if.then.168, label %lor.lhs.false.161

lor.lhs.false.161:                                ; preds = %land.lhs.true.158, %if.then.155
  %117 = load %struct.display*, %struct.display** @display, align 8
  %d_mousetrack = getelementptr inbounds %struct.display, %struct.display* %117, i32 0, i32 40
  %118 = load i32, i32* %d_mousetrack, align 4
  %tobool162 = icmp ne i32 %118, 0
  br i1 %tobool162, label %land.lhs.true.163, label %if.end.196

land.lhs.true.163:                                ; preds = %lor.lhs.false.161
  %119 = load %struct.display*, %struct.display** @display, align 8
  %d_forecv164 = getelementptr inbounds %struct.display, %struct.display* %119, i32 0, i32 4
  %120 = load %struct.canvas*, %struct.canvas** %d_forecv164, align 8
  %c_layer165 = getelementptr inbounds %struct.canvas, %struct.canvas* %120, i32 0, i32 9
  %121 = load %struct.layer*, %struct.layer** %c_layer165, align 8
  %l_mode = getelementptr inbounds %struct.layer, %struct.layer* %121, i32 0, i32 11
  %122 = load i32, i32* %l_mode, align 4
  %cmp166 = icmp eq i32 %122, 1
  br i1 %cmp166, label %if.then.168, label %if.end.196

if.then.168:                                      ; preds = %land.lhs.true.163, %land.lhs.true.158
  %123 = load %struct.display*, %struct.display** @display, align 8
  %d_forecv169 = getelementptr inbounds %struct.display, %struct.display* %123, i32 0, i32 4
  %124 = load %struct.canvas*, %struct.canvas** %d_forecv169, align 8
  %c_xoff = getelementptr inbounds %struct.canvas, %struct.canvas* %124, i32 0, i32 12
  %125 = load i32, i32* %c_xoff, align 4
  %126 = load i32, i32* %x, align 4
  %sub170 = sub nsw i32 %126, %125
  store i32 %sub170, i32* %x, align 4
  %127 = load %struct.display*, %struct.display** @display, align 8
  %d_forecv171 = getelementptr inbounds %struct.display, %struct.display* %127, i32 0, i32 4
  %128 = load %struct.canvas*, %struct.canvas** %d_forecv171, align 8
  %c_yoff = getelementptr inbounds %struct.canvas, %struct.canvas* %128, i32 0, i32 13
  %129 = load i32, i32* %c_yoff, align 4
  %130 = load i32, i32* %y, align 4
  %sub172 = sub nsw i32 %130, %129
  store i32 %sub172, i32* %y, align 4
  %131 = load i32, i32* %x, align 4
  %cmp173 = icmp sge i32 %131, 0
  br i1 %cmp173, label %land.lhs.true.175, label %if.end.195

land.lhs.true.175:                                ; preds = %if.then.168
  %132 = load i32, i32* %x, align 4
  %133 = load %struct.display*, %struct.display** @display, align 8
  %d_forecv176 = getelementptr inbounds %struct.display, %struct.display* %133, i32 0, i32 4
  %134 = load %struct.canvas*, %struct.canvas** %d_forecv176, align 8
  %c_layer177 = getelementptr inbounds %struct.canvas, %struct.canvas* %134, i32 0, i32 9
  %135 = load %struct.layer*, %struct.layer** %c_layer177, align 8
  %l_width = getelementptr inbounds %struct.layer, %struct.layer* %135, i32 0, i32 1
  %136 = load i32, i32* %l_width, align 4
  %cmp178 = icmp slt i32 %132, %136
  br i1 %cmp178, label %land.lhs.true.180, label %if.end.195

land.lhs.true.180:                                ; preds = %land.lhs.true.175
  %137 = load i32, i32* %y, align 4
  %cmp181 = icmp sge i32 %137, 0
  br i1 %cmp181, label %land.lhs.true.183, label %if.end.195

land.lhs.true.183:                                ; preds = %land.lhs.true.180
  %138 = load i32, i32* %y, align 4
  %139 = load %struct.display*, %struct.display** @display, align 8
  %d_forecv184 = getelementptr inbounds %struct.display, %struct.display* %139, i32 0, i32 4
  %140 = load %struct.canvas*, %struct.canvas** %d_forecv184, align 8
  %c_layer185 = getelementptr inbounds %struct.canvas, %struct.canvas* %140, i32 0, i32 9
  %141 = load %struct.layer*, %struct.layer** %c_layer185, align 8
  %l_height = getelementptr inbounds %struct.layer, %struct.layer* %141, i32 0, i32 2
  %142 = load i32, i32* %l_height, align 4
  %cmp186 = icmp slt i32 %138, %142
  br i1 %cmp186, label %if.then.188, label %if.end.195

if.then.188:                                      ; preds = %land.lhs.true.183
  %143 = load i32, i32* %x, align 4
  %add = add nsw i32 %143, 33
  %conv189 = trunc i32 %add to i8
  %144 = load i8*, i8** %bp, align 8
  %arrayidx190 = getelementptr inbounds i8, i8* %144, i64 3
  store i8 %conv189, i8* %arrayidx190, align 1
  %145 = load i32, i32* %y, align 4
  %add191 = add nsw i32 %145, 33
  %conv192 = trunc i32 %add191 to i8
  %146 = load i8*, i8** %bp, align 8
  %arrayidx193 = getelementptr inbounds i8, i8* %146, i64 4
  store i8 %conv192, i8* %arrayidx193, align 1
  %147 = load i32, i32* %i, align 4
  %sub194 = sub nsw i32 %147, 4
  store i32 %sub194, i32* %i, align 4
  %148 = load i8*, i8** %bp, align 8
  %add.ptr = getelementptr inbounds i8, i8* %148, i64 4
  store i8* %add.ptr, i8** %bp, align 8
  br label %for.inc.233

if.end.195:                                       ; preds = %land.lhs.true.183, %land.lhs.true.180, %land.lhs.true.175, %if.then.168
  br label %if.end.196

if.end.196:                                       ; preds = %if.end.195, %land.lhs.true.163, %lor.lhs.false.161
  br label %if.end.212

if.else.197:                                      ; preds = %land.lhs.true.151, %land.lhs.true.147, %land.lhs.true.143, %if.end.133
  %149 = load %struct.display*, %struct.display** @display, align 8
  %d_mousetrack198 = getelementptr inbounds %struct.display, %struct.display* %149, i32 0, i32 40
  %150 = load i32, i32* %d_mousetrack198, align 4
  %tobool199 = icmp ne i32 %150, 0
  br i1 %tobool199, label %land.lhs.true.200, label %if.end.211

land.lhs.true.200:                                ; preds = %if.else.197
  %151 = load i8*, i8** %bp, align 8
  %arrayidx201 = getelementptr inbounds i8, i8* %151, i64 2
  %152 = load i8, i8* %arrayidx201, align 1
  %conv202 = zext i8 %152 to i32
  %cmp203 = icmp eq i32 %conv202, 35
  br i1 %cmp203, label %if.then.205, label %if.end.211

if.then.205:                                      ; preds = %land.lhs.true.200
  %153 = load i32, i32* %x, align 4
  %154 = load i32, i32* %y, align 4
  %call207 = call %struct.canvas* @FindCanvas(i32 %153, i32 %154)
  store %struct.canvas* %call207, %struct.canvas** %cv206, align 8
  %155 = load %struct.canvas*, %struct.canvas** %cv206, align 8
  %tobool208 = icmp ne %struct.canvas* %155, null
  br i1 %tobool208, label %if.then.209, label %if.end.210

if.then.209:                                      ; preds = %if.then.205
  %156 = load %struct.display*, %struct.display** @display, align 8
  %157 = load %struct.canvas*, %struct.canvas** %cv206, align 8
  call void @SetForeCanvas(%struct.display* %156, %struct.canvas* %157)
  br label %if.end.210

if.end.210:                                       ; preds = %if.then.209, %if.then.205
  br label %if.end.211

if.end.211:                                       ; preds = %if.end.210, %land.lhs.true.200, %if.else.197
  br label %if.end.212

if.end.212:                                       ; preds = %if.end.211, %if.end.196
  %158 = load i8*, i8** %bp, align 8
  %arrayidx213 = getelementptr inbounds i8, i8* %158, i64 0
  %159 = load i8, i8* %arrayidx213, align 1
  %conv214 = zext i8 %159 to i32
  %cmp215 = icmp eq i32 %conv214, 91
  br i1 %cmp215, label %if.then.217, label %if.end.222

if.then.217:                                      ; preds = %if.end.212
  %160 = load i8*, i8** %bp, align 8
  %add.ptr218 = getelementptr inbounds i8, i8* %160, i64 1
  %161 = load i8*, i8** %bp, align 8
  %162 = load i32, i32* %i, align 4
  %conv219 = sext i32 %162 to i64
  call void @bcopy(i8* %add.ptr218, i8* %161, i64 %conv219) #3
  %163 = load i8*, i8** %bp, align 8
  %incdec.ptr220 = getelementptr inbounds i8, i8* %163, i32 -1
  store i8* %incdec.ptr220, i8** %bp, align 8
  %164 = load i32, i32* %size, align 4
  %dec221 = add nsw i32 %164, -1
  store i32 %dec221, i32* %size, align 4
  br label %if.end.222

if.end.222:                                       ; preds = %if.then.217, %if.end.212
  %165 = load i32, i32* %i, align 4
  %cmp223 = icmp sgt i32 %165, 5
  br i1 %cmp223, label %if.then.225, label %if.end.229

if.then.225:                                      ; preds = %if.end.222
  %166 = load i8*, i8** %bp, align 8
  %add.ptr226 = getelementptr inbounds i8, i8* %166, i64 5
  %167 = load i8*, i8** %bp, align 8
  %168 = load i32, i32* %i, align 4
  %sub227 = sub nsw i32 %168, 5
  %conv228 = sext i32 %sub227 to i64
  call void @bcopy(i8* %add.ptr226, i8* %167, i64 %conv228) #3
  br label %if.end.229

if.end.229:                                       ; preds = %if.then.225, %if.end.222
  %169 = load i8*, i8** %bp, align 8
  %incdec.ptr230 = getelementptr inbounds i8, i8* %169, i32 -1
  store i8* %incdec.ptr230, i8** %bp, align 8
  %170 = load i32, i32* %i, align 4
  %sub231 = sub nsw i32 %170, 4
  store i32 %sub231, i32* %i, align 4
  %171 = load i32, i32* %size, align 4
  %sub232 = sub nsw i32 %171, 5
  store i32 %sub232, i32* %size, align 4
  br label %for.inc.233

for.inc.233:                                      ; preds = %if.end.229, %if.then.188, %if.then.131
  %172 = load i32, i32* %i, align 4
  %dec234 = add nsw i32 %172, -1
  store i32 %dec234, i32* %i, align 4
  %173 = load i8*, i8** %bp, align 8
  %incdec.ptr235 = getelementptr inbounds i8, i8* %173, i32 1
  store i8* %incdec.ptr235, i8** %bp, align 8
  br label %for.cond.97

for.end.236:                                      ; preds = %for.cond.97
  br label %if.end.237

if.end.237:                                       ; preds = %for.end.236, %land.lhs.true.92, %if.end.90
  %174 = load %struct.display*, %struct.display** @display, align 8
  %d_encoding = getelementptr inbounds %struct.display, %struct.display* %174, i32 0, i32 28
  %175 = load i32, i32* %d_encoding, align 4
  %176 = load %struct.display*, %struct.display** @display, align 8
  %d_forecv238 = getelementptr inbounds %struct.display, %struct.display* %176, i32 0, i32 4
  %177 = load %struct.canvas*, %struct.canvas** %d_forecv238, align 8
  %tobool239 = icmp ne %struct.canvas* %177, null
  br i1 %tobool239, label %cond.true.240, label %cond.false.243

cond.true.240:                                    ; preds = %if.end.237
  %178 = load %struct.display*, %struct.display** @display, align 8
  %d_forecv241 = getelementptr inbounds %struct.display, %struct.display* %178, i32 0, i32 4
  %179 = load %struct.canvas*, %struct.canvas** %d_forecv241, align 8
  %c_layer242 = getelementptr inbounds %struct.canvas, %struct.canvas* %179, i32 0, i32 9
  %180 = load %struct.layer*, %struct.layer** %c_layer242, align 8
  %l_encoding = getelementptr inbounds %struct.layer, %struct.layer* %180, i32 0, i32 5
  %181 = load i32, i32* %l_encoding, align 4
  br label %cond.end.244

cond.false.243:                                   ; preds = %if.end.237
  br label %cond.end.244

cond.end.244:                                     ; preds = %cond.false.243, %cond.true.240
  %cond245 = phi i32 [ %181, %cond.true.240 ], [ 0, %cond.false.243 ]
  %cmp246 = icmp ne i32 %175, %cond245
  br i1 %cmp246, label %if.then.248, label %if.end.302

if.then.248:                                      ; preds = %cond.end.244
  %182 = load %struct.display*, %struct.display** @display, align 8
  %d_forecv250 = getelementptr inbounds %struct.display, %struct.display* %182, i32 0, i32 4
  %183 = load %struct.canvas*, %struct.canvas** %d_forecv250, align 8
  %tobool251 = icmp ne %struct.canvas* %183, null
  br i1 %tobool251, label %cond.true.252, label %cond.false.256

cond.true.252:                                    ; preds = %if.then.248
  %184 = load %struct.display*, %struct.display** @display, align 8
  %d_forecv253 = getelementptr inbounds %struct.display, %struct.display* %184, i32 0, i32 4
  %185 = load %struct.canvas*, %struct.canvas** %d_forecv253, align 8
  %c_layer254 = getelementptr inbounds %struct.canvas, %struct.canvas* %185, i32 0, i32 9
  %186 = load %struct.layer*, %struct.layer** %c_layer254, align 8
  %l_encoding255 = getelementptr inbounds %struct.layer, %struct.layer* %186, i32 0, i32 5
  %187 = load i32, i32* %l_encoding255, align 4
  br label %cond.end.257

cond.false.256:                                   ; preds = %if.then.248
  br label %cond.end.257

cond.end.257:                                     ; preds = %cond.false.256, %cond.true.252
  %cond258 = phi i32 [ %187, %cond.true.252 ], [ 0, %cond.false.256 ]
  store i32 %cond258, i32* %enc, align 4
  store i32 0, i32* %j, align 4
  store i32 0, i32* %i249, align 4
  br label %for.cond.259

for.cond.259:                                     ; preds = %for.inc.299, %cond.end.257
  %188 = load i32, i32* %i249, align 4
  %189 = load i32, i32* %size, align 4
  %cmp260 = icmp slt i32 %188, %189
  br i1 %cmp260, label %for.body.262, label %for.end.300

for.body.262:                                     ; preds = %for.cond.259
  %190 = load i32, i32* %i249, align 4
  %idxprom = sext i32 %190 to i64
  %arraydecay263 = getelementptr inbounds [4096 x i8], [4096 x i8]* %buf, i32 0, i32 0
  %arrayidx264 = getelementptr inbounds i8, i8* %arraydecay263, i64 %idxprom
  %191 = load i8, i8* %arrayidx264, align 1
  %conv265 = zext i8 %191 to i32
  store i32 %conv265, i32* %c, align 4
  %192 = load i32, i32* %c, align 4
  %193 = load %struct.display*, %struct.display** @display, align 8
  %d_encoding266 = getelementptr inbounds %struct.display, %struct.display* %193, i32 0, i32 28
  %194 = load i32, i32* %d_encoding266, align 4
  %195 = load %struct.display*, %struct.display** @display, align 8
  %d_decodestate = getelementptr inbounds %struct.display, %struct.display* %195, i32 0, i32 29
  %call267 = call i32 @DecodeChar(i32 %192, i32 %194, i32* %d_decodestate)
  store i32 %call267, i32* %c, align 4
  %196 = load i32, i32* %c, align 4
  %cmp268 = icmp eq i32 %196, -2
  br i1 %cmp268, label %if.then.270, label %if.end.272

if.then.270:                                      ; preds = %for.body.262
  %197 = load i32, i32* %i249, align 4
  %dec271 = add nsw i32 %197, -1
  store i32 %dec271, i32* %i249, align 4
  br label %if.end.272

if.end.272:                                       ; preds = %if.then.270, %for.body.262
  %198 = load i32, i32* %c, align 4
  %cmp273 = icmp slt i32 %198, 0
  br i1 %cmp273, label %if.then.275, label %if.end.276

if.then.275:                                      ; preds = %if.end.272
  br label %for.inc.299

if.end.276:                                       ; preds = %if.end.272
  %199 = load i32, i32* @pastefont, align 4
  %tobool277 = icmp ne i32 %199, 0
  br i1 %tobool277, label %if.then.278, label %if.else.288

if.then.278:                                      ; preds = %if.end.276
  store i32 0, i32* %font, align 4
  %arraydecay279 = getelementptr inbounds [8202 x i8], [8202 x i8]* %buf2, i32 0, i32 0
  %200 = load i32, i32* %j, align 4
  %idx.ext = sext i32 %200 to i64
  %add.ptr280 = getelementptr inbounds i8, i8* %arraydecay279, i64 %idx.ext
  %201 = load i32, i32* %c, align 4
  %202 = load i32, i32* %enc, align 4
  %call281 = call i32 @EncodeChar(i8* %add.ptr280, i32 %201, i32 %202, i32* %font)
  %203 = load i32, i32* %j, align 4
  %add282 = add nsw i32 %203, %call281
  store i32 %add282, i32* %j, align 4
  %arraydecay283 = getelementptr inbounds [8202 x i8], [8202 x i8]* %buf2, i32 0, i32 0
  %204 = load i32, i32* %j, align 4
  %idx.ext284 = sext i32 %204 to i64
  %add.ptr285 = getelementptr inbounds i8, i8* %arraydecay283, i64 %idx.ext284
  %205 = load i32, i32* %enc, align 4
  %call286 = call i32 @EncodeChar(i8* %add.ptr285, i32 -1, i32 %205, i32* %font)
  %206 = load i32, i32* %j, align 4
  %add287 = add nsw i32 %206, %call286
  store i32 %add287, i32* %j, align 4
  br label %if.end.294

if.else.288:                                      ; preds = %if.end.276
  %arraydecay289 = getelementptr inbounds [8202 x i8], [8202 x i8]* %buf2, i32 0, i32 0
  %207 = load i32, i32* %j, align 4
  %idx.ext290 = sext i32 %207 to i64
  %add.ptr291 = getelementptr inbounds i8, i8* %arraydecay289, i64 %idx.ext290
  %208 = load i32, i32* %c, align 4
  %209 = load i32, i32* %enc, align 4
  %call292 = call i32 @EncodeChar(i8* %add.ptr291, i32 %208, i32 %209, i32* null)
  %210 = load i32, i32* %j, align 4
  %add293 = add nsw i32 %210, %call292
  store i32 %add293, i32* %j, align 4
  br label %if.end.294

if.end.294:                                       ; preds = %if.else.288, %if.then.278
  %211 = load i32, i32* %j, align 4
  %cmp295 = icmp sgt i32 %211, 8192
  br i1 %cmp295, label %if.then.297, label %if.end.298

if.then.297:                                      ; preds = %if.end.294
  br label %for.end.300

if.end.298:                                       ; preds = %if.end.294
  br label %for.inc.299

for.inc.299:                                      ; preds = %if.end.298, %if.then.275
  %212 = load i32, i32* %i249, align 4
  %inc = add nsw i32 %212, 1
  store i32 %inc, i32* %i249, align 4
  br label %for.cond.259

for.end.300:                                      ; preds = %if.then.297, %for.cond.259
  %213 = load %struct.display*, %struct.display** @display, align 8
  %d_processinput = getelementptr inbounds %struct.display, %struct.display* %213, i32 0, i32 6
  %214 = load void (i8*, i32)*, void (i8*, i32)** %d_processinput, align 8
  %arraydecay301 = getelementptr inbounds [8202 x i8], [8202 x i8]* %buf2, i32 0, i32 0
  %215 = load i32, i32* %j, align 4
  call void %214(i8* %arraydecay301, i32 %215)
  br label %return

if.end.302:                                       ; preds = %cond.end.244
  %216 = load %struct.display*, %struct.display** @display, align 8
  %d_processinput303 = getelementptr inbounds %struct.display, %struct.display* %216, i32 0, i32 6
  %217 = load void (i8*, i32)*, void (i8*, i32)** %d_processinput303, align 8
  %arraydecay304 = getelementptr inbounds [4096 x i8], [4096 x i8]* %buf, i32 0, i32 0
  %218 = load i32, i32* %size, align 4
  call void %217(i8* %arraydecay304, i32 %218)
  br label %return

return:                                           ; preds = %if.end.302, %for.end.300, %while.end, %cond.end, %do.end.50, %do.end, %if.then.42
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @disp_writeev_fn(%struct.event* %ev, i8* %data) #0 {
entry:
  %ev.addr = alloca %struct.event*, align 8
  %data.addr = alloca i8*, align 8
  %len = alloca i32, align 4
  %size = alloca i32, align 4
  store %struct.event* %ev, %struct.event** %ev.addr, align 8
  store i8* %data, i8** %data.addr, align 8
  store i32 256, i32* %size, align 4
  %0 = load i8*, i8** %data.addr, align 8
  %1 = bitcast i8* %0 to %struct.display*
  store %struct.display* %1, %struct.display** @display, align 8
  %2 = load %struct.display*, %struct.display** @display, align 8
  %d_obufp = getelementptr inbounds %struct.display, %struct.display* %2, i32 0, i32 71
  %3 = load i8*, i8** %d_obufp, align 8
  %4 = load %struct.display*, %struct.display** @display, align 8
  %d_obuf = getelementptr inbounds %struct.display, %struct.display* %4, i32 0, i32 67
  %5 = load i8*, i8** %d_obuf, align 8
  %sub.ptr.lhs.cast = ptrtoint i8* %3 to i64
  %sub.ptr.rhs.cast = ptrtoint i8* %5 to i64
  %sub.ptr.sub = sub i64 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast
  %conv = trunc i64 %sub.ptr.sub to i32
  store i32 %conv, i32* %len, align 4
  %6 = load i32, i32* %len, align 4
  %7 = load i32, i32* %size, align 4
  %cmp = icmp slt i32 %6, %7
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %8 = load i32, i32* %len, align 4
  store i32 %8, i32* %size, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %9 = load %struct.display*, %struct.display** @display, align 8
  %d_status_obufpos = getelementptr inbounds %struct.display, %struct.display* %9, i32 0, i32 52
  %10 = load i32, i32* %d_status_obufpos, align 4
  %tobool = icmp ne i32 %10, 0
  br i1 %tobool, label %land.lhs.true, label %if.end.7

land.lhs.true:                                    ; preds = %if.end
  %11 = load i32, i32* %size, align 4
  %12 = load %struct.display*, %struct.display** @display, align 8
  %d_status_obufpos2 = getelementptr inbounds %struct.display, %struct.display* %12, i32 0, i32 52
  %13 = load i32, i32* %d_status_obufpos2, align 4
  %cmp3 = icmp sgt i32 %11, %13
  br i1 %cmp3, label %if.then.5, label %if.end.7

if.then.5:                                        ; preds = %land.lhs.true
  %14 = load %struct.display*, %struct.display** @display, align 8
  %d_status_obufpos6 = getelementptr inbounds %struct.display, %struct.display* %14, i32 0, i32 52
  %15 = load i32, i32* %d_status_obufpos6, align 4
  store i32 %15, i32* %size, align 4
  br label %if.end.7

if.end.7:                                         ; preds = %if.then.5, %land.lhs.true, %if.end
  br label %do.body

do.body:                                          ; preds = %if.end.7
  br label %do.end

do.end:                                           ; preds = %do.body
  %16 = load %struct.display*, %struct.display** @display, align 8
  %d_userfd = getelementptr inbounds %struct.display, %struct.display* %16, i32 0, i32 59
  %17 = load i32, i32* %d_userfd, align 4
  %18 = load %struct.display*, %struct.display** @display, align 8
  %d_obuf8 = getelementptr inbounds %struct.display, %struct.display* %18, i32 0, i32 67
  %19 = load i8*, i8** %d_obuf8, align 8
  %20 = load i32, i32* %size, align 4
  %conv9 = sext i32 %20 to i64
  %call = call i64 @write(i32 %17, i8* %19, i64 %conv9)
  %conv10 = trunc i64 %call to i32
  store i32 %conv10, i32* %size, align 4
  %21 = load i32, i32* %size, align 4
  %cmp11 = icmp sge i32 %21, 0
  br i1 %cmp11, label %if.then.13, label %if.else.98

if.then.13:                                       ; preds = %do.end
  %22 = load i32, i32* %size, align 4
  %23 = load i32, i32* %len, align 4
  %sub = sub nsw i32 %23, %22
  store i32 %sub, i32* %len, align 4
  %24 = load i32, i32* %len, align 4
  %tobool14 = icmp ne i32 %24, 0
  br i1 %tobool14, label %if.then.15, label %if.end.21

if.then.15:                                       ; preds = %if.then.13
  %25 = load %struct.display*, %struct.display** @display, align 8
  %d_obuf16 = getelementptr inbounds %struct.display, %struct.display* %25, i32 0, i32 67
  %26 = load i8*, i8** %d_obuf16, align 8
  %27 = load i32, i32* %size, align 4
  %idx.ext = sext i32 %27 to i64
  %add.ptr = getelementptr inbounds i8, i8* %26, i64 %idx.ext
  %28 = load %struct.display*, %struct.display** @display, align 8
  %d_obuf17 = getelementptr inbounds %struct.display, %struct.display* %28, i32 0, i32 67
  %29 = load i8*, i8** %d_obuf17, align 8
  %30 = load i32, i32* %len, align 4
  %conv18 = sext i32 %30 to i64
  call void @bcopy(i8* %add.ptr, i8* %29, i64 %conv18) #3
  br label %do.body.19

do.body.19:                                       ; preds = %if.then.15
  br label %do.end.20

do.end.20:                                        ; preds = %do.body.19
  br label %if.end.21

if.end.21:                                        ; preds = %do.end.20, %if.then.13
  %31 = load i32, i32* %size, align 4
  %32 = load %struct.display*, %struct.display** @display, align 8
  %d_obufp22 = getelementptr inbounds %struct.display, %struct.display* %32, i32 0, i32 71
  %33 = load i8*, i8** %d_obufp22, align 8
  %idx.ext23 = sext i32 %31 to i64
  %idx.neg = sub i64 0, %idx.ext23
  %add.ptr24 = getelementptr inbounds i8, i8* %33, i64 %idx.neg
  store i8* %add.ptr24, i8** %d_obufp22, align 8
  %34 = load i32, i32* %size, align 4
  %35 = load %struct.display*, %struct.display** @display, align 8
  %d_obuffree = getelementptr inbounds %struct.display, %struct.display* %35, i32 0, i32 72
  %36 = load i32, i32* %d_obuffree, align 4
  %add = add nsw i32 %36, %34
  store i32 %add, i32* %d_obuffree, align 4
  %37 = load %struct.display*, %struct.display** @display, align 8
  %d_status_obufpos25 = getelementptr inbounds %struct.display, %struct.display* %37, i32 0, i32 52
  %38 = load i32, i32* %d_status_obufpos25, align 4
  %tobool26 = icmp ne i32 %38, 0
  br i1 %tobool26, label %if.then.27, label %if.end.45

if.then.27:                                       ; preds = %if.end.21
  %39 = load i32, i32* %size, align 4
  %40 = load %struct.display*, %struct.display** @display, align 8
  %d_status_obufpos28 = getelementptr inbounds %struct.display, %struct.display* %40, i32 0, i32 52
  %41 = load i32, i32* %d_status_obufpos28, align 4
  %sub29 = sub nsw i32 %41, %39
  store i32 %sub29, i32* %d_status_obufpos28, align 4
  %42 = load %struct.display*, %struct.display** @display, align 8
  %d_status_obufpos30 = getelementptr inbounds %struct.display, %struct.display* %42, i32 0, i32 52
  %43 = load i32, i32* %d_status_obufpos30, align 4
  %tobool31 = icmp ne i32 %43, 0
  br i1 %tobool31, label %if.end.44, label %if.then.32

if.then.32:                                       ; preds = %if.then.27
  br label %do.body.33

do.body.33:                                       ; preds = %if.then.32
  br label %do.end.34

do.end.34:                                        ; preds = %do.body.33
  %44 = load %struct.display*, %struct.display** @display, align 8
  %d_status = getelementptr inbounds %struct.display, %struct.display* %44, i32 0, i32 43
  %45 = load i32, i32* %d_status, align 4
  %cmp35 = icmp eq i32 %45, 1
  br i1 %cmp35, label %if.then.37, label %if.end.41

if.then.37:                                       ; preds = %do.end.34
  %46 = load %struct.display*, %struct.display** @display, align 8
  %d_obuflen = getelementptr inbounds %struct.display, %struct.display* %46, i32 0, i32 68
  %47 = load i32, i32* %d_obuflen, align 4
  %48 = load %struct.display*, %struct.display** @display, align 8
  %d_status_obuflen = getelementptr inbounds %struct.display, %struct.display* %48, i32 0, i32 50
  store i32 %47, i32* %d_status_obuflen, align 4
  %49 = load %struct.display*, %struct.display** @display, align 8
  %d_obuffree38 = getelementptr inbounds %struct.display, %struct.display* %49, i32 0, i32 72
  %50 = load i32, i32* %d_obuffree38, align 4
  %51 = load %struct.display*, %struct.display** @display, align 8
  %d_status_obuffree = getelementptr inbounds %struct.display, %struct.display* %51, i32 0, i32 51
  store i32 %50, i32* %d_status_obuffree, align 4
  %52 = load %struct.display*, %struct.display** @display, align 8
  %d_obuflen39 = getelementptr inbounds %struct.display, %struct.display* %52, i32 0, i32 68
  store i32 0, i32* %d_obuflen39, align 4
  %53 = load %struct.display*, %struct.display** @display, align 8
  %d_obuffree40 = getelementptr inbounds %struct.display, %struct.display* %53, i32 0, i32 72
  store i32 0, i32* %d_obuffree40, align 4
  br label %if.end.41

if.end.41:                                        ; preds = %if.then.37, %do.end.34
  %54 = load %struct.display*, %struct.display** @display, align 8
  %d_status_time = getelementptr inbounds %struct.display, %struct.display* %54, i32 0, i32 42
  %call42 = call i32 @gettimeofday(%struct.timeval* %d_status_time, %struct.timezone* null) #3
  %55 = load %struct.display*, %struct.display** @display, align 8
  %d_statusev = getelementptr inbounds %struct.display, %struct.display* %55, i32 0, i32 53
  %56 = load i32, i32* @MsgWait, align 4
  call void @SetTimeout(%struct.event* %d_statusev, i32 %56)
  %57 = load %struct.display*, %struct.display** @display, align 8
  %d_statusev43 = getelementptr inbounds %struct.display, %struct.display* %57, i32 0, i32 53
  call void @evenq(%struct.event* %d_statusev43)
  br label %if.end.44

if.end.44:                                        ; preds = %if.end.41, %if.then.27
  br label %if.end.45

if.end.45:                                        ; preds = %if.end.44, %if.end.21
  %58 = load %struct.display*, %struct.display** @display, align 8
  %d_blocked_fuzz = getelementptr inbounds %struct.display, %struct.display* %58, i32 0, i32 103
  %59 = load i32, i32* %d_blocked_fuzz, align 4
  %tobool46 = icmp ne i32 %59, 0
  br i1 %tobool46, label %if.then.47, label %if.end.56

if.then.47:                                       ; preds = %if.end.45
  %60 = load i32, i32* %size, align 4
  %61 = load %struct.display*, %struct.display** @display, align 8
  %d_blocked_fuzz48 = getelementptr inbounds %struct.display, %struct.display* %61, i32 0, i32 103
  %62 = load i32, i32* %d_blocked_fuzz48, align 4
  %sub49 = sub nsw i32 %62, %60
  store i32 %sub49, i32* %d_blocked_fuzz48, align 4
  %63 = load %struct.display*, %struct.display** @display, align 8
  %d_blocked_fuzz50 = getelementptr inbounds %struct.display, %struct.display* %63, i32 0, i32 103
  %64 = load i32, i32* %d_blocked_fuzz50, align 4
  %cmp51 = icmp slt i32 %64, 0
  br i1 %cmp51, label %if.then.53, label %if.end.55

if.then.53:                                       ; preds = %if.then.47
  %65 = load %struct.display*, %struct.display** @display, align 8
  %d_blocked_fuzz54 = getelementptr inbounds %struct.display, %struct.display* %65, i32 0, i32 103
  store i32 0, i32* %d_blocked_fuzz54, align 4
  br label %if.end.55

if.end.55:                                        ; preds = %if.then.53, %if.then.47
  br label %if.end.56

if.end.56:                                        ; preds = %if.end.55, %if.end.45
  %66 = load %struct.display*, %struct.display** @display, align 8
  %d_blockedev = getelementptr inbounds %struct.display, %struct.display* %66, i32 0, i32 62
  %queued = getelementptr inbounds %struct.event, %struct.event* %d_blockedev, i32 0, i32 7
  %67 = load i32, i32* %queued, align 4
  %tobool57 = icmp ne i32 %67, 0
  br i1 %tobool57, label %if.then.58, label %if.end.75

if.then.58:                                       ; preds = %if.end.56
  %68 = load %struct.display*, %struct.display** @display, align 8
  %d_obufp59 = getelementptr inbounds %struct.display, %struct.display* %68, i32 0, i32 71
  %69 = load i8*, i8** %d_obufp59, align 8
  %70 = load %struct.display*, %struct.display** @display, align 8
  %d_obuf60 = getelementptr inbounds %struct.display, %struct.display* %70, i32 0, i32 67
  %71 = load i8*, i8** %d_obuf60, align 8
  %sub.ptr.lhs.cast61 = ptrtoint i8* %69 to i64
  %sub.ptr.rhs.cast62 = ptrtoint i8* %71 to i64
  %sub.ptr.sub63 = sub i64 %sub.ptr.lhs.cast61, %sub.ptr.rhs.cast62
  %72 = load %struct.display*, %struct.display** @display, align 8
  %d_obufmax = getelementptr inbounds %struct.display, %struct.display* %72, i32 0, i32 69
  %73 = load i32, i32* %d_obufmax, align 4
  %div = sdiv i32 %73, 2
  %conv64 = sext i32 %div to i64
  %cmp65 = icmp sgt i64 %sub.ptr.sub63, %conv64
  br i1 %cmp65, label %if.then.67, label %if.else

if.then.67:                                       ; preds = %if.then.58
  br label %do.body.68

do.body.68:                                       ; preds = %if.then.67
  br label %do.end.69

do.end.69:                                        ; preds = %do.body.68
  %74 = load %struct.display*, %struct.display** @display, align 8
  %d_blockedev70 = getelementptr inbounds %struct.display, %struct.display* %74, i32 0, i32 62
  %75 = load %struct.display*, %struct.display** @display, align 8
  %d_nonblock = getelementptr inbounds %struct.display, %struct.display* %75, i32 0, i32 12
  %76 = load i32, i32* %d_nonblock, align 4
  call void @SetTimeout(%struct.event* %d_blockedev70, i32 %76)
  br label %if.end.74

if.else:                                          ; preds = %if.then.58
  br label %do.body.71

do.body.71:                                       ; preds = %if.else
  br label %do.end.72

do.end.72:                                        ; preds = %do.body.71
  %77 = load %struct.display*, %struct.display** @display, align 8
  %d_blockedev73 = getelementptr inbounds %struct.display, %struct.display* %77, i32 0, i32 62
  call void @evdeq(%struct.event* %d_blockedev73)
  br label %if.end.74

if.end.74:                                        ; preds = %do.end.72, %do.end.69
  br label %if.end.75

if.end.75:                                        ; preds = %if.end.74, %if.end.56
  %78 = load %struct.display*, %struct.display** @display, align 8
  %d_blocked = getelementptr inbounds %struct.display, %struct.display* %78, i32 0, i32 102
  %79 = load i32, i32* %d_blocked, align 4
  %cmp76 = icmp eq i32 %79, 1
  br i1 %cmp76, label %land.lhs.true.78, label %if.end.97

land.lhs.true.78:                                 ; preds = %if.end.75
  %80 = load %struct.display*, %struct.display** @display, align 8
  %d_obuf79 = getelementptr inbounds %struct.display, %struct.display* %80, i32 0, i32 67
  %81 = load i8*, i8** %d_obuf79, align 8
  %82 = load %struct.display*, %struct.display** @display, align 8
  %d_obufp80 = getelementptr inbounds %struct.display, %struct.display* %82, i32 0, i32 71
  %83 = load i8*, i8** %d_obufp80, align 8
  %cmp81 = icmp eq i8* %81, %83
  br i1 %cmp81, label %if.then.83, label %if.end.97

if.then.83:                                       ; preds = %land.lhs.true.78
  br label %do.body.84

do.body.84:                                       ; preds = %if.then.83
  br label %do.end.85

do.end.85:                                        ; preds = %do.body.84
  %84 = load %struct.display*, %struct.display** @display, align 8
  %d_blocked86 = getelementptr inbounds %struct.display, %struct.display* %84, i32 0, i32 102
  store i32 0, i32* %d_blocked86, align 4
  %85 = load %struct.display*, %struct.display** @display, align 8
  %d_fore = getelementptr inbounds %struct.display, %struct.display* %85, i32 0, i32 10
  %86 = load %struct.win*, %struct.win** %d_fore, align 8
  %tobool87 = icmp ne %struct.win* %86, null
  br i1 %tobool87, label %cond.true, label %cond.false

cond.true:                                        ; preds = %do.end.85
  %87 = load %struct.display*, %struct.display** @display, align 8
  %d_fore88 = getelementptr inbounds %struct.display, %struct.display* %87, i32 0, i32 10
  %88 = load %struct.win*, %struct.win** %d_fore88, align 8
  %w_norefresh = getelementptr inbounds %struct.win, %struct.win* %88, i32 0, i32 74
  %89 = load i8, i8* %w_norefresh, align 1
  %conv89 = sext i8 %89 to i32
  br label %cond.end

cond.false:                                       ; preds = %do.end.85
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %conv89, %cond.true ], [ 0, %cond.false ]
  call void @Activate(i32 %cond)
  %90 = load %struct.display*, %struct.display** @display, align 8
  %d_obufp90 = getelementptr inbounds %struct.display, %struct.display* %90, i32 0, i32 71
  %91 = load i8*, i8** %d_obufp90, align 8
  %92 = load %struct.display*, %struct.display** @display, align 8
  %d_obuf91 = getelementptr inbounds %struct.display, %struct.display* %92, i32 0, i32 67
  %93 = load i8*, i8** %d_obuf91, align 8
  %sub.ptr.lhs.cast92 = ptrtoint i8* %91 to i64
  %sub.ptr.rhs.cast93 = ptrtoint i8* %93 to i64
  %sub.ptr.sub94 = sub i64 %sub.ptr.lhs.cast92, %sub.ptr.rhs.cast93
  %conv95 = trunc i64 %sub.ptr.sub94 to i32
  %94 = load %struct.display*, %struct.display** @display, align 8
  %d_blocked_fuzz96 = getelementptr inbounds %struct.display, %struct.display* %94, i32 0, i32 103
  store i32 %conv95, i32* %d_blocked_fuzz96, align 4
  br label %if.end.97

if.end.97:                                        ; preds = %cond.end, %land.lhs.true.78, %if.end.75
  br label %if.end.118

if.else.98:                                       ; preds = %do.end
  %call99 = call i32* @__errno_location() #7
  %95 = load i32, i32* %call99, align 4
  %cmp100 = icmp eq i32 %95, 11
  br i1 %cmp100, label %if.then.102, label %if.end.107

if.then.102:                                      ; preds = %if.else.98
  %96 = load %struct.display*, %struct.display** @display, align 8
  %d_writeev = getelementptr inbounds %struct.display, %struct.display* %96, i32 0, i32 61
  call void @evdeq(%struct.event* %d_writeev)
  %97 = load %struct.display*, %struct.display** @display, align 8
  %d_writeev103 = getelementptr inbounds %struct.display, %struct.display* %97, i32 0, i32 61
  %type = getelementptr inbounds %struct.event, %struct.event* %d_writeev103, i32 0, i32 4
  store i32 0, i32* %type, align 4
  %98 = load %struct.display*, %struct.display** @display, align 8
  %d_writeev104 = getelementptr inbounds %struct.display, %struct.display* %98, i32 0, i32 61
  %handler = getelementptr inbounds %struct.event, %struct.event* %d_writeev104, i32 0, i32 1
  store void (%struct.event*, i8*)* @disp_writeev_eagain, void (%struct.event*, i8*)** %handler, align 8
  %99 = load %struct.display*, %struct.display** @display, align 8
  %d_writeev105 = getelementptr inbounds %struct.display, %struct.display* %99, i32 0, i32 61
  call void @SetTimeout(%struct.event* %d_writeev105, i32 100)
  %100 = load %struct.display*, %struct.display** @display, align 8
  %d_writeev106 = getelementptr inbounds %struct.display, %struct.display* %100, i32 0, i32 61
  call void @evenq(%struct.event* %d_writeev106)
  br label %if.end.107

if.end.107:                                       ; preds = %if.then.102, %if.else.98
  %call108 = call i32* @__errno_location() #7
  %101 = load i32, i32* %call108, align 4
  %cmp109 = icmp ne i32 %101, 4
  br i1 %cmp109, label %land.lhs.true.111, label %if.end.117

land.lhs.true.111:                                ; preds = %if.end.107
  %call112 = call i32* @__errno_location() #7
  %102 = load i32, i32* %call112, align 4
  %cmp113 = icmp ne i32 %102, 11
  br i1 %cmp113, label %if.then.115, label %if.end.117

if.then.115:                                      ; preds = %land.lhs.true.111
  %call116 = call i32* @__errno_location() #7
  %103 = load i32, i32* %call116, align 4
  call void (i32, i8*, ...) @Msg(i32 %103, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.18, i32 0, i32 0))
  br label %if.end.117

if.end.117:                                       ; preds = %if.then.115, %land.lhs.true.111, %if.end.107
  br label %if.end.118

if.end.118:                                       ; preds = %if.end.117, %if.end.97
  ret void
}

declare void @evenq(%struct.event*) #1

; Function Attrs: nounwind uwtable
define internal void @disp_status_fn(%struct.event* %ev, i8* %data) #0 {
entry:
  %ev.addr = alloca %struct.event*, align 8
  %data.addr = alloca i8*, align 8
  store %struct.event* %ev, %struct.event** %ev.addr, align 8
  store i8* %data, i8** %data.addr, align 8
  %0 = load i8*, i8** %data.addr, align 8
  %1 = bitcast i8* %0 to %struct.display*
  store %struct.display* %1, %struct.display** @display, align 8
  br label %do.body

do.body:                                          ; preds = %entry
  br label %do.end

do.end:                                           ; preds = %do.body
  %2 = load %struct.display*, %struct.display** @display, align 8
  %d_status = getelementptr inbounds %struct.display, %struct.display* %2, i32 0, i32 43
  %3 = load i32, i32* %d_status, align 4
  %tobool = icmp ne i32 %3, 0
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %do.end
  call void @RemoveStatus()
  br label %if.end

if.end:                                           ; preds = %if.then, %do.end
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @disp_hstatus_fn(%struct.event* %ev, i8* %data) #0 {
entry:
  %ev.addr = alloca %struct.event*, align 8
  %data.addr = alloca i8*, align 8
  store %struct.event* %ev, %struct.event** %ev.addr, align 8
  store i8* %data, i8** %data.addr, align 8
  %0 = load i8*, i8** %data.addr, align 8
  %1 = bitcast i8* %0 to %struct.display*
  store %struct.display* %1, %struct.display** @display, align 8
  %2 = load %struct.display*, %struct.display** @display, align 8
  %d_status = getelementptr inbounds %struct.display, %struct.display* %2, i32 0, i32 43
  %3 = load i32, i32* %d_status, align 4
  %cmp = icmp eq i32 %3, 2
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %4 = load %struct.event*, %struct.event** %ev.addr, align 8
  call void @SetTimeout(%struct.event* %4, i32 1)
  %5 = load %struct.event*, %struct.event** %ev.addr, align 8
  call void @evenq(%struct.event* %5)
  br label %return

if.end:                                           ; preds = %entry
  call void @RefreshHStatus()
  br label %return

return:                                           ; preds = %if.end, %if.then
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @disp_blocked_fn(%struct.event* %ev, i8* %data) #0 {
entry:
  %ev.addr = alloca %struct.event*, align 8
  %data.addr = alloca i8*, align 8
  %p = alloca %struct.win*, align 8
  store %struct.event* %ev, %struct.event** %ev.addr, align 8
  store i8* %data, i8** %data.addr, align 8
  %0 = load i8*, i8** %data.addr, align 8
  %1 = bitcast i8* %0 to %struct.display*
  store %struct.display* %1, %struct.display** @display, align 8
  br label %do.body

do.body:                                          ; preds = %entry
  br label %do.end

do.end:                                           ; preds = %do.body
  %2 = load %struct.display*, %struct.display** @display, align 8
  %d_obufp = getelementptr inbounds %struct.display, %struct.display* %2, i32 0, i32 71
  %3 = load i8*, i8** %d_obufp, align 8
  %4 = load %struct.display*, %struct.display** @display, align 8
  %d_obuf = getelementptr inbounds %struct.display, %struct.display* %4, i32 0, i32 67
  %5 = load i8*, i8** %d_obuf, align 8
  %sub.ptr.lhs.cast = ptrtoint i8* %3 to i64
  %sub.ptr.rhs.cast = ptrtoint i8* %5 to i64
  %sub.ptr.sub = sub i64 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast
  %6 = load %struct.display*, %struct.display** @display, align 8
  %d_obufmax = getelementptr inbounds %struct.display, %struct.display* %6, i32 0, i32 69
  %7 = load i32, i32* %d_obufmax, align 4
  %8 = load %struct.display*, %struct.display** @display, align 8
  %d_blocked_fuzz = getelementptr inbounds %struct.display, %struct.display* %8, i32 0, i32 103
  %9 = load i32, i32* %d_blocked_fuzz, align 4
  %add = add nsw i32 %7, %9
  %conv = sext i32 %add to i64
  %cmp = icmp sgt i64 %sub.ptr.sub, %conv
  br i1 %cmp, label %if.then, label %if.end.12

if.then:                                          ; preds = %do.end
  br label %do.body.2

do.body.2:                                        ; preds = %if.then
  br label %do.end.3

do.end.3:                                         ; preds = %do.body.2
  %10 = load %struct.display*, %struct.display** @display, align 8
  %d_blocked = getelementptr inbounds %struct.display, %struct.display* %10, i32 0, i32 102
  store i32 1, i32* %d_blocked, align 4
  %11 = load %struct.win*, %struct.win** @windows, align 8
  store %struct.win* %11, %struct.win** %p, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %do.end.3
  %12 = load %struct.win*, %struct.win** %p, align 8
  %tobool = icmp ne %struct.win* %12, null
  br i1 %tobool, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %13 = load %struct.win*, %struct.win** %p, align 8
  %w_readev = getelementptr inbounds %struct.win, %struct.win* %13, i32 0, i32 10
  %condneg = getelementptr inbounds %struct.event, %struct.event* %w_readev, i32 0, i32 10
  %14 = load i32*, i32** %condneg, align 8
  %15 = load %struct.display*, %struct.display** @display, align 8
  %d_obuflenmax = getelementptr inbounds %struct.display, %struct.display* %15, i32 0, i32 70
  %cmp4 = icmp eq i32* %14, %d_obuflenmax
  br i1 %cmp4, label %if.then.6, label %if.end

if.then.6:                                        ; preds = %for.body
  br label %do.body.7

do.body.7:                                        ; preds = %if.then.6
  br label %do.end.8

do.end.8:                                         ; preds = %do.body.7
  %16 = load %struct.win*, %struct.win** %p, align 8
  %w_readev9 = getelementptr inbounds %struct.win, %struct.win* %16, i32 0, i32 10
  %condneg10 = getelementptr inbounds %struct.event, %struct.event* %w_readev9, i32 0, i32 10
  store i32* null, i32** %condneg10, align 8
  %17 = load %struct.win*, %struct.win** %p, align 8
  %w_readev11 = getelementptr inbounds %struct.win, %struct.win* %17, i32 0, i32 10
  %condpos = getelementptr inbounds %struct.event, %struct.event* %w_readev11, i32 0, i32 9
  store i32* null, i32** %condpos, align 8
  br label %if.end

if.end:                                           ; preds = %do.end.8, %for.body
  br label %for.inc

for.inc:                                          ; preds = %if.end
  %18 = load %struct.win*, %struct.win** %p, align 8
  %w_next = getelementptr inbounds %struct.win, %struct.win* %18, i32 0, i32 0
  %19 = load %struct.win*, %struct.win** %w_next, align 8
  store %struct.win* %19, %struct.win** %p, align 8
  br label %for.cond

for.end:                                          ; preds = %for.cond
  br label %if.end.12

if.end.12:                                        ; preds = %for.end, %do.end
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @disp_map_fn(%struct.event* %ev, i8* %data) #0 {
entry:
  %ev.addr = alloca %struct.event*, align 8
  %data.addr = alloca i8*, align 8
  %p = alloca i8*, align 8
  %l = alloca i32, align 4
  %i = alloca i32, align 4
  %q = alloca i8*, align 8
  store %struct.event* %ev, %struct.event** %ev.addr, align 8
  store i8* %data, i8** %data.addr, align 8
  %0 = load i8*, i8** %data.addr, align 8
  %1 = bitcast i8* %0 to %struct.display*
  store %struct.display* %1, %struct.display** @display, align 8
  br label %do.body

do.body:                                          ; preds = %entry
  br label %do.end

do.end:                                           ; preds = %do.body
  %2 = load %struct.display*, %struct.display** @display, align 8
  %d_seql = getelementptr inbounds %struct.display, %struct.display* %2, i32 0, i32 78
  %3 = load i32, i32* %d_seql, align 4
  store i32 %3, i32* %l, align 4
  %tobool = icmp ne i32 %3, 0
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %do.end
  br label %return

if.end:                                           ; preds = %do.end
  %4 = load %struct.display*, %struct.display** @display, align 8
  %d_seqp = getelementptr inbounds %struct.display, %struct.display* %4, i32 0, i32 77
  %5 = load i8*, i8** %d_seqp, align 8
  %6 = load i32, i32* %l, align 4
  %idx.ext = sext i32 %6 to i64
  %idx.neg = sub i64 0, %idx.ext
  %add.ptr = getelementptr inbounds i8, i8* %5, i64 %idx.neg
  store i8* %add.ptr, i8** %p, align 8
  %7 = load %struct.display*, %struct.display** @display, align 8
  %d_kmaps = getelementptr inbounds %struct.display, %struct.display* %7, i32 0, i32 76
  %8 = load i8*, i8** %d_kmaps, align 8
  %add.ptr1 = getelementptr inbounds i8, i8* %8, i64 3
  %9 = load %struct.display*, %struct.display** @display, align 8
  %d_seqp2 = getelementptr inbounds %struct.display, %struct.display* %9, i32 0, i32 77
  store i8* %add.ptr1, i8** %d_seqp2, align 8
  %10 = load %struct.display*, %struct.display** @display, align 8
  %d_seql3 = getelementptr inbounds %struct.display, %struct.display* %10, i32 0, i32 78
  store i32 0, i32* %d_seql3, align 4
  %11 = load %struct.display*, %struct.display** @display, align 8
  %d_seqh = getelementptr inbounds %struct.display, %struct.display* %11, i32 0, i32 79
  %12 = load i8*, i8** %d_seqh, align 8
  store i8* %12, i8** %q, align 8
  %cmp = icmp ne i8* %12, null
  br i1 %cmp, label %if.then.4, label %if.else

if.then.4:                                        ; preds = %if.end
  %13 = load %struct.display*, %struct.display** @display, align 8
  %d_seqh5 = getelementptr inbounds %struct.display, %struct.display* %13, i32 0, i32 79
  store i8* null, i8** %d_seqh5, align 8
  %14 = load i8*, i8** %q, align 8
  %arrayidx = getelementptr inbounds i8, i8* %14, i64 0
  %15 = load i8, i8* %arrayidx, align 1
  %conv = zext i8 %15 to i32
  %shl = shl i32 %conv, 8
  %16 = load i8*, i8** %q, align 8
  %arrayidx6 = getelementptr inbounds i8, i8* %16, i64 1
  %17 = load i8, i8* %arrayidx6, align 1
  %conv7 = zext i8 %17 to i32
  %or = or i32 %shl, %conv7
  store i32 %or, i32* %i, align 4
  %18 = load i32, i32* %i, align 4
  %and = and i32 %18, -16385
  store i32 %and, i32* %i, align 4
  br label %do.body.8

do.body.8:                                        ; preds = %if.then.4
  br label %do.end.9

do.end.9:                                         ; preds = %do.body.8
  br label %do.body.10

do.body.10:                                       ; preds = %do.end.9
  br label %do.end.11

do.end.11:                                        ; preds = %do.body.10
  %19 = load i32, i32* %i, align 4
  %call = call i32 @StuffKey(i32 %19)
  %tobool12 = icmp ne i32 %call, 0
  br i1 %tobool12, label %if.then.13, label %if.end.17

if.then.13:                                       ; preds = %do.end.11
  %20 = load i8*, i8** %q, align 8
  %add.ptr14 = getelementptr inbounds i8, i8* %20, i64 3
  %21 = load i8*, i8** %q, align 8
  %arrayidx15 = getelementptr inbounds i8, i8* %21, i64 2
  %22 = load i8, i8* %arrayidx15, align 1
  %conv16 = zext i8 %22 to i32
  call void @ProcessInput2(i8* %add.ptr14, i32 %conv16)
  br label %if.end.17

if.end.17:                                        ; preds = %if.then.13, %do.end.11
  %23 = load %struct.display*, %struct.display** @display, align 8
  %cmp18 = icmp eq %struct.display* %23, null
  br i1 %cmp18, label %if.then.20, label %if.end.21

if.then.20:                                       ; preds = %if.end.17
  br label %return

if.end.21:                                        ; preds = %if.end.17
  %24 = load i8*, i8** %q, align 8
  %arrayidx22 = getelementptr inbounds i8, i8* %24, i64 2
  %25 = load i8, i8* %arrayidx22, align 1
  %conv23 = zext i8 %25 to i32
  %26 = load i32, i32* %l, align 4
  %sub = sub nsw i32 %26, %conv23
  store i32 %sub, i32* %l, align 4
  %27 = load i8*, i8** %q, align 8
  %arrayidx24 = getelementptr inbounds i8, i8* %27, i64 2
  %28 = load i8, i8* %arrayidx24, align 1
  %conv25 = zext i8 %28 to i32
  %29 = load i8*, i8** %p, align 8
  %idx.ext26 = sext i32 %conv25 to i64
  %add.ptr27 = getelementptr inbounds i8, i8* %29, i64 %idx.ext26
  store i8* %add.ptr27, i8** %p, align 8
  br label %if.end.28

if.else:                                          ; preds = %if.end
  %30 = load %struct.display*, %struct.display** @display, align 8
  %d_dontmap = getelementptr inbounds %struct.display, %struct.display* %30, i32 0, i32 81
  store i32 1, i32* %d_dontmap, align 4
  br label %if.end.28

if.end.28:                                        ; preds = %if.else, %if.end.21
  %31 = load i8*, i8** %p, align 8
  %32 = load i32, i32* %l, align 4
  call void @ProcessInput(i8* %31, i32 %32)
  br label %return

return:                                           ; preds = %if.end.28, %if.then.20, %if.then
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @disp_idle_fn(%struct.event* %ev, i8* %data) #0 {
entry:
  %ev.addr = alloca %struct.event*, align 8
  %data.addr = alloca i8*, align 8
  %olddisplay = alloca %struct.display*, align 8
  store %struct.event* %ev, %struct.event** %ev.addr, align 8
  store i8* %data, i8** %data.addr, align 8
  %0 = load i8*, i8** %data.addr, align 8
  %1 = bitcast i8* %0 to %struct.display*
  store %struct.display* %1, %struct.display** @display, align 8
  br label %do.body

do.body:                                          ; preds = %entry
  br label %do.end

do.end:                                           ; preds = %do.body
  %2 = load i32, i32* @idletimo, align 4
  %cmp = icmp sle i32 %2, 0
  br i1 %cmp, label %if.then, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %do.end
  %3 = load i32, i32* getelementptr inbounds (%struct.action, %struct.action* @idleaction, i32 0, i32 0), align 4
  %cmp1 = icmp eq i32 %3, -1
  br i1 %cmp1, label %if.then, label %if.end

if.then:                                          ; preds = %lor.lhs.false, %do.end
  br label %if.end.10

if.end:                                           ; preds = %lor.lhs.false
  %4 = load %struct.display*, %struct.display** @display, align 8
  store %struct.display* %4, %struct.display** %olddisplay, align 8
  %5 = load %struct.display*, %struct.display** @display, align 8
  %d_forecv = getelementptr inbounds %struct.display, %struct.display* %5, i32 0, i32 4
  %6 = load %struct.canvas*, %struct.canvas** %d_forecv, align 8
  %c_layer = getelementptr inbounds %struct.canvas, %struct.canvas* %6, i32 0, i32 9
  %7 = load %struct.layer*, %struct.layer** %c_layer, align 8
  store %struct.layer* %7, %struct.layer** @flayer, align 8
  %8 = load %struct.display*, %struct.display** @display, align 8
  %d_fore = getelementptr inbounds %struct.display, %struct.display* %8, i32 0, i32 10
  %9 = load %struct.win*, %struct.win** %d_fore, align 8
  store %struct.win* %9, %struct.win** @fore, align 8
  call void @DoAction(%struct.action* @idleaction, i32 -1)
  %10 = load i32, i32* getelementptr inbounds (%struct.action, %struct.action* @idleaction, i32 0, i32 0), align 4
  %cmp2 = icmp eq i32 %10, 19
  br i1 %cmp2, label %if.then.3, label %if.end.4

if.then.3:                                        ; preds = %if.end
  br label %if.end.10

if.end.4:                                         ; preds = %if.end
  %11 = load %struct.display*, %struct.display** @displays, align 8
  store %struct.display* %11, %struct.display** @display, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end.4
  %12 = load %struct.display*, %struct.display** @display, align 8
  %tobool = icmp ne %struct.display* %12, null
  br i1 %tobool, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %13 = load %struct.display*, %struct.display** %olddisplay, align 8
  %14 = load %struct.display*, %struct.display** @display, align 8
  %cmp5 = icmp eq %struct.display* %13, %14
  br i1 %cmp5, label %if.then.6, label %if.end.7

if.then.6:                                        ; preds = %for.body
  br label %for.end

if.end.7:                                         ; preds = %for.body
  br label %for.inc

for.inc:                                          ; preds = %if.end.7
  %15 = load %struct.display*, %struct.display** @display, align 8
  %d_next = getelementptr inbounds %struct.display, %struct.display* %15, i32 0, i32 0
  %16 = load %struct.display*, %struct.display** %d_next, align 8
  store %struct.display* %16, %struct.display** @display, align 8
  br label %for.cond

for.end:                                          ; preds = %if.then.6, %for.cond
  %17 = load %struct.display*, %struct.display** @display, align 8
  %tobool8 = icmp ne %struct.display* %17, null
  br i1 %tobool8, label %if.then.9, label %if.end.10

if.then.9:                                        ; preds = %for.end
  call void @ResetIdle()
  br label %if.end.10

if.end.10:                                        ; preds = %if.then, %if.then.3, %if.then.9, %for.end
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @disp_blanker_fn(%struct.event* %ev, i8* %data) #0 {
entry:
  %ev.addr = alloca %struct.event*, align 8
  %data.addr = alloca i8*, align 8
  %buf = alloca [4096 x i8], align 16
  %b = alloca i8*, align 8
  %size = alloca i32, align 4
  store %struct.event* %ev, %struct.event** %ev.addr, align 8
  store i8* %data, i8** %data.addr, align 8
  %0 = load i8*, i8** %data.addr, align 8
  %1 = bitcast i8* %0 to %struct.display*
  store %struct.display* %1, %struct.display** @display, align 8
  %2 = load %struct.display*, %struct.display** @display, align 8
  %d_blankerev = getelementptr inbounds %struct.display, %struct.display* %2, i32 0, i32 106
  %fd = getelementptr inbounds %struct.event, %struct.event* %d_blankerev, i32 0, i32 3
  %3 = load i32, i32* %fd, align 4
  %arraydecay = getelementptr inbounds [4096 x i8], [4096 x i8]* %buf, i32 0, i32 0
  %call = call i64 @read(i32 %3, i8* %arraydecay, i64 4096)
  %conv = trunc i64 %call to i32
  store i32 %conv, i32* %size, align 4
  %4 = load i32, i32* %size, align 4
  %cmp = icmp sle i32 %4, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %5 = load %struct.display*, %struct.display** @display, align 8
  %d_blankerev2 = getelementptr inbounds %struct.display, %struct.display* %5, i32 0, i32 106
  call void @evdeq(%struct.event* %d_blankerev2)
  %6 = load %struct.display*, %struct.display** @display, align 8
  %d_blankerev3 = getelementptr inbounds %struct.display, %struct.display* %6, i32 0, i32 106
  %fd4 = getelementptr inbounds %struct.event, %struct.event* %d_blankerev3, i32 0, i32 3
  %7 = load i32, i32* %fd4, align 4
  %call5 = call i32 @close(i32 %7)
  %8 = load %struct.display*, %struct.display** @display, align 8
  %d_blankerev6 = getelementptr inbounds %struct.display, %struct.display* %8, i32 0, i32 106
  %fd7 = getelementptr inbounds %struct.event, %struct.event* %d_blankerev6, i32 0, i32 3
  store i32 -1, i32* %fd7, align 4
  br label %for.end

if.end:                                           ; preds = %entry
  %arraydecay8 = getelementptr inbounds [4096 x i8], [4096 x i8]* %buf, i32 0, i32 0
  store i8* %arraydecay8, i8** %b, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end
  %9 = load i32, i32* %size, align 4
  %tobool = icmp ne i32 %9, 0
  br i1 %tobool, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  br label %do.body

do.body:                                          ; preds = %for.body
  %10 = load %struct.display*, %struct.display** @display, align 8
  %d_obuffree = getelementptr inbounds %struct.display, %struct.display* %10, i32 0, i32 72
  %11 = load i32, i32* %d_obuffree, align 4
  %dec = add nsw i32 %11, -1
  store i32 %dec, i32* %d_obuffree, align 4
  %cmp9 = icmp sle i32 %dec, 0
  br i1 %cmp9, label %if.then.11, label %if.end.12

if.then.11:                                       ; preds = %do.body
  call void @Resize_obuf()
  br label %if.end.12

if.end.12:                                        ; preds = %if.then.11, %do.body
  %12 = load i8*, i8** %b, align 8
  %incdec.ptr = getelementptr inbounds i8, i8* %12, i32 1
  store i8* %incdec.ptr, i8** %b, align 8
  %13 = load i8, i8* %12, align 1
  %14 = load %struct.display*, %struct.display** @display, align 8
  %d_obufp = getelementptr inbounds %struct.display, %struct.display* %14, i32 0, i32 71
  %15 = load i8*, i8** %d_obufp, align 8
  %incdec.ptr13 = getelementptr inbounds i8, i8* %15, i32 1
  store i8* %incdec.ptr13, i8** %d_obufp, align 8
  store i8 %13, i8* %15, align 1
  br label %do.end

do.end:                                           ; preds = %if.end.12
  br label %for.inc

for.inc:                                          ; preds = %do.end
  %16 = load i32, i32* %size, align 4
  %dec14 = add nsw i32 %16, -1
  store i32 %dec14, i32* %size, align 4
  br label %for.cond

for.end:                                          ; preds = %if.then, %for.cond
  ret void
}

; Function Attrs: nounwind
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* nocapture, i8* nocapture readonly, i64, i32, i1) #3

; Function Attrs: nounwind uwtable
define void @Resize_obuf() #0 {
entry:
  %ind = alloca i32, align 4
  br label %do.body

do.body:                                          ; preds = %entry
  br label %do.end

do.end:                                           ; preds = %do.body
  %0 = load %struct.display*, %struct.display** @display, align 8
  %d_status_obuffree = getelementptr inbounds %struct.display, %struct.display* %0, i32 0, i32 51
  %1 = load i32, i32* %d_status_obuffree, align 4
  %cmp = icmp sge i32 %1, 0
  br i1 %cmp, label %if.then, label %if.end.5

if.then:                                          ; preds = %do.end
  br label %do.body.1

do.body.1:                                        ; preds = %if.then
  br label %do.end.2

do.end.2:                                         ; preds = %do.body.1
  call void @RemoveStatusMinWait()
  %2 = load %struct.display*, %struct.display** @display, align 8
  %d_obuffree = getelementptr inbounds %struct.display, %struct.display* %2, i32 0, i32 72
  %3 = load i32, i32* %d_obuffree, align 4
  %dec = add nsw i32 %3, -1
  store i32 %dec, i32* %d_obuffree, align 4
  %cmp3 = icmp sgt i32 %dec, 0
  br i1 %cmp3, label %if.then.4, label %if.end

if.then.4:                                        ; preds = %do.end.2
  br label %do.end.31

if.end:                                           ; preds = %do.end.2
  br label %if.end.5

if.end.5:                                         ; preds = %if.end, %do.end
  %4 = load %struct.display*, %struct.display** @display, align 8
  %d_obuflen = getelementptr inbounds %struct.display, %struct.display* %4, i32 0, i32 68
  %5 = load i32, i32* %d_obuflen, align 4
  %tobool = icmp ne i32 %5, 0
  br i1 %tobool, label %land.lhs.true, label %if.else

land.lhs.true:                                    ; preds = %if.end.5
  %6 = load %struct.display*, %struct.display** @display, align 8
  %d_obuf = getelementptr inbounds %struct.display, %struct.display* %6, i32 0, i32 67
  %7 = load i8*, i8** %d_obuf, align 8
  %tobool6 = icmp ne i8* %7, null
  br i1 %tobool6, label %if.then.7, label %if.else

if.then.7:                                        ; preds = %land.lhs.true
  %8 = load %struct.display*, %struct.display** @display, align 8
  %d_obufp = getelementptr inbounds %struct.display, %struct.display* %8, i32 0, i32 71
  %9 = load i8*, i8** %d_obufp, align 8
  %10 = load %struct.display*, %struct.display** @display, align 8
  %d_obuf8 = getelementptr inbounds %struct.display, %struct.display* %10, i32 0, i32 67
  %11 = load i8*, i8** %d_obuf8, align 8
  %sub.ptr.lhs.cast = ptrtoint i8* %9 to i64
  %sub.ptr.rhs.cast = ptrtoint i8* %11 to i64
  %sub.ptr.sub = sub i64 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast
  %conv = trunc i64 %sub.ptr.sub to i32
  store i32 %conv, i32* %ind, align 4
  %12 = load %struct.display*, %struct.display** @display, align 8
  %d_obuflen9 = getelementptr inbounds %struct.display, %struct.display* %12, i32 0, i32 68
  %13 = load i32, i32* %d_obuflen9, align 4
  %add = add nsw i32 %13, 4096
  store i32 %add, i32* %d_obuflen9, align 4
  %14 = load %struct.display*, %struct.display** @display, align 8
  %d_obuffree10 = getelementptr inbounds %struct.display, %struct.display* %14, i32 0, i32 72
  %15 = load i32, i32* %d_obuffree10, align 4
  %add11 = add nsw i32 %15, 4096
  store i32 %add11, i32* %d_obuffree10, align 4
  %16 = load %struct.display*, %struct.display** @display, align 8
  %d_obuf12 = getelementptr inbounds %struct.display, %struct.display* %16, i32 0, i32 67
  %17 = load i8*, i8** %d_obuf12, align 8
  %18 = load %struct.display*, %struct.display** @display, align 8
  %d_obuflen13 = getelementptr inbounds %struct.display, %struct.display* %18, i32 0, i32 68
  %19 = load i32, i32* %d_obuflen13, align 4
  %conv14 = sext i32 %19 to i64
  %call = call i8* @realloc(i8* %17, i64 %conv14) #3
  %20 = load %struct.display*, %struct.display** @display, align 8
  %d_obuf15 = getelementptr inbounds %struct.display, %struct.display* %20, i32 0, i32 67
  store i8* %call, i8** %d_obuf15, align 8
  br label %if.end.22

if.else:                                          ; preds = %land.lhs.true, %if.end.5
  store i32 0, i32* %ind, align 4
  %21 = load %struct.display*, %struct.display** @display, align 8
  %d_obuflen16 = getelementptr inbounds %struct.display, %struct.display* %21, i32 0, i32 68
  store i32 4096, i32* %d_obuflen16, align 4
  %22 = load %struct.display*, %struct.display** @display, align 8
  %d_obuffree17 = getelementptr inbounds %struct.display, %struct.display* %22, i32 0, i32 72
  store i32 4096, i32* %d_obuffree17, align 4
  %23 = load %struct.display*, %struct.display** @display, align 8
  %d_obuflen18 = getelementptr inbounds %struct.display, %struct.display* %23, i32 0, i32 68
  %24 = load i32, i32* %d_obuflen18, align 4
  %conv19 = sext i32 %24 to i64
  %call20 = call noalias i8* @malloc(i64 %conv19) #3
  %25 = load %struct.display*, %struct.display** @display, align 8
  %d_obuf21 = getelementptr inbounds %struct.display, %struct.display* %25, i32 0, i32 67
  store i8* %call20, i8** %d_obuf21, align 8
  br label %if.end.22

if.end.22:                                        ; preds = %if.else, %if.then.7
  %26 = load %struct.display*, %struct.display** @display, align 8
  %d_obuf23 = getelementptr inbounds %struct.display, %struct.display* %26, i32 0, i32 67
  %27 = load i8*, i8** %d_obuf23, align 8
  %tobool24 = icmp ne i8* %27, null
  br i1 %tobool24, label %if.end.26, label %if.then.25

if.then.25:                                       ; preds = %if.end.22
  call void (i32, i8*, ...) @Panic(i32 0, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.11, i32 0, i32 0)) #8
  unreachable

if.end.26:                                        ; preds = %if.end.22
  %28 = load %struct.display*, %struct.display** @display, align 8
  %d_obuf27 = getelementptr inbounds %struct.display, %struct.display* %28, i32 0, i32 67
  %29 = load i8*, i8** %d_obuf27, align 8
  %30 = load i32, i32* %ind, align 4
  %idx.ext = sext i32 %30 to i64
  %add.ptr = getelementptr inbounds i8, i8* %29, i64 %idx.ext
  %31 = load %struct.display*, %struct.display** @display, align 8
  %d_obufp28 = getelementptr inbounds %struct.display, %struct.display* %31, i32 0, i32 71
  store i8* %add.ptr, i8** %d_obufp28, align 8
  %32 = load %struct.display*, %struct.display** @display, align 8
  %d_obuflen29 = getelementptr inbounds %struct.display, %struct.display* %32, i32 0, i32 68
  %33 = load i32, i32* %d_obuflen29, align 4
  %34 = load %struct.display*, %struct.display** @display, align 8
  %d_obufmax = getelementptr inbounds %struct.display, %struct.display* %34, i32 0, i32 69
  %35 = load i32, i32* %d_obufmax, align 4
  %sub = sub nsw i32 %33, %35
  %36 = load %struct.display*, %struct.display** @display, align 8
  %d_obuflenmax = getelementptr inbounds %struct.display, %struct.display* %36, i32 0, i32 70
  store i32 %sub, i32* %d_obuflenmax, align 4
  br label %do.body.30

do.body.30:                                       ; preds = %if.end.26
  br label %do.end.31

do.end.31:                                        ; preds = %if.then.4, %do.body.30
  ret void
}

declare %struct.baud_values* @lookup_baud(i32) #1

; Function Attrs: nounwind
declare i32 @cfgetospeed(%struct.termios*) #2

; Function Attrs: nounwind
declare i8* @strncpy(i8*, i8*, i64) #2

declare void @ProcessInput(i8*, i32) #1

; Function Attrs: nounwind uwtable
define void @FreeDisplay() #0 {
entry:
  %p = alloca %struct.win*, align 8
  %d = alloca %struct.display*, align 8
  %dp = alloca %struct.display**, align 8
  call void @FreeTransTable()
  call void @KillBlanker()
  %0 = load %struct.display*, %struct.display** @display, align 8
  %d_userfd = getelementptr inbounds %struct.display, %struct.display* %0, i32 0, i32 59
  %1 = load i32, i32* %d_userfd, align 4
  %cmp = icmp sge i32 %1, 0
  br i1 %cmp, label %if.then, label %if.end.4

if.then:                                          ; preds = %entry
  call void @Flush(i32 3)
  %2 = load %struct.display*, %struct.display** @display, align 8
  %tobool = icmp ne %struct.display* %2, null
  br i1 %tobool, label %if.end, label %if.then.1

if.then.1:                                        ; preds = %if.then
  br label %return

if.end:                                           ; preds = %if.then
  %3 = load %struct.display*, %struct.display** @display, align 8
  %d_userfd2 = getelementptr inbounds %struct.display, %struct.display* %3, i32 0, i32 59
  %4 = load i32, i32* %d_userfd2, align 4
  %5 = load %struct.display*, %struct.display** @display, align 8
  %d_OldMode = getelementptr inbounds %struct.display, %struct.display* %5, i32 0, i32 63
  call void @SetTTY(i32 %4, %struct.mode* %d_OldMode)
  %6 = load %struct.display*, %struct.display** @display, align 8
  %d_userfd3 = getelementptr inbounds %struct.display, %struct.display* %6, i32 0, i32 59
  %7 = load i32, i32* %d_userfd3, align 4
  %call = call i32 (i32, i32, ...) @fcntl(i32 %7, i32 4, i32 0)
  br label %if.end.4

if.end.4:                                         ; preds = %if.end, %entry
  call void @freetty()
  %8 = load %struct.display*, %struct.display** @display, align 8
  %d_tentry = getelementptr inbounds %struct.display, %struct.display* %8, i32 0, i32 14
  %9 = load i8*, i8** %d_tentry, align 8
  %tobool5 = icmp ne i8* %9, null
  br i1 %tobool5, label %if.then.6, label %if.end.8

if.then.6:                                        ; preds = %if.end.4
  %10 = load %struct.display*, %struct.display** @display, align 8
  %d_tentry7 = getelementptr inbounds %struct.display, %struct.display* %10, i32 0, i32 14
  %11 = load i8*, i8** %d_tentry7, align 8
  call void @free(i8* %11) #3
  br label %if.end.8

if.end.8:                                         ; preds = %if.then.6, %if.end.4
  %12 = load %struct.display*, %struct.display** @display, align 8
  %d_tentry9 = getelementptr inbounds %struct.display, %struct.display* %12, i32 0, i32 14
  store i8* null, i8** %d_tentry9, align 8
  %13 = load %struct.display*, %struct.display** @display, align 8
  %d_processinputdata = getelementptr inbounds %struct.display, %struct.display* %13, i32 0, i32 7
  %14 = load i8*, i8** %d_processinputdata, align 8
  %tobool10 = icmp ne i8* %14, null
  br i1 %tobool10, label %if.then.11, label %if.end.13

if.then.11:                                       ; preds = %if.end.8
  %15 = load %struct.display*, %struct.display** @display, align 8
  %d_processinputdata12 = getelementptr inbounds %struct.display, %struct.display* %15, i32 0, i32 7
  %16 = load i8*, i8** %d_processinputdata12, align 8
  call void @free(i8* %16) #3
  br label %if.end.13

if.end.13:                                        ; preds = %if.then.11, %if.end.8
  %17 = load %struct.display*, %struct.display** @display, align 8
  %d_processinputdata14 = getelementptr inbounds %struct.display, %struct.display* %17, i32 0, i32 7
  store i8* null, i8** %d_processinputdata14, align 8
  %18 = load %struct.display*, %struct.display** @display, align 8
  %d_tcinited = getelementptr inbounds %struct.display, %struct.display* %18, i32 0, i32 15
  store i8 0, i8* %d_tcinited, align 1
  %19 = load %struct.display*, %struct.display** @display, align 8
  %d_hstatusev = getelementptr inbounds %struct.display, %struct.display* %19, i32 0, i32 54
  call void @evdeq(%struct.event* %d_hstatusev)
  %20 = load %struct.display*, %struct.display** @display, align 8
  %d_statusev = getelementptr inbounds %struct.display, %struct.display* %20, i32 0, i32 53
  call void @evdeq(%struct.event* %d_statusev)
  %21 = load %struct.display*, %struct.display** @display, align 8
  %d_readev = getelementptr inbounds %struct.display, %struct.display* %21, i32 0, i32 60
  call void @evdeq(%struct.event* %d_readev)
  %22 = load %struct.display*, %struct.display** @display, align 8
  %d_writeev = getelementptr inbounds %struct.display, %struct.display* %22, i32 0, i32 61
  call void @evdeq(%struct.event* %d_writeev)
  %23 = load %struct.display*, %struct.display** @display, align 8
  %d_blockedev = getelementptr inbounds %struct.display, %struct.display* %23, i32 0, i32 62
  call void @evdeq(%struct.event* %d_blockedev)
  %24 = load %struct.display*, %struct.display** @display, align 8
  %d_mapev = getelementptr inbounds %struct.display, %struct.display* %24, i32 0, i32 80
  call void @evdeq(%struct.event* %d_mapev)
  %25 = load %struct.display*, %struct.display** @display, align 8
  %d_kmaps = getelementptr inbounds %struct.display, %struct.display* %25, i32 0, i32 76
  %26 = load i8*, i8** %d_kmaps, align 8
  %tobool15 = icmp ne i8* %26, null
  br i1 %tobool15, label %if.then.16, label %if.end.19

if.then.16:                                       ; preds = %if.end.13
  %27 = load %struct.display*, %struct.display** @display, align 8
  %d_kmaps17 = getelementptr inbounds %struct.display, %struct.display* %27, i32 0, i32 76
  %28 = load i8*, i8** %d_kmaps17, align 8
  call void @free(i8* %28) #3
  %29 = load %struct.display*, %struct.display** @display, align 8
  %d_kmaps18 = getelementptr inbounds %struct.display, %struct.display* %29, i32 0, i32 76
  store i8* null, i8** %d_kmaps18, align 8
  %30 = load %struct.display*, %struct.display** @display, align 8
  %d_aseqs = getelementptr inbounds %struct.display, %struct.display* %30, i32 0, i32 75
  store i32 0, i32* %d_aseqs, align 4
  %31 = load %struct.display*, %struct.display** @display, align 8
  %d_nseqs = getelementptr inbounds %struct.display, %struct.display* %31, i32 0, i32 74
  store i32 0, i32* %d_nseqs, align 4
  %32 = load %struct.display*, %struct.display** @display, align 8
  %d_seqp = getelementptr inbounds %struct.display, %struct.display* %32, i32 0, i32 77
  store i8* null, i8** %d_seqp, align 8
  %33 = load %struct.display*, %struct.display** @display, align 8
  %d_seql = getelementptr inbounds %struct.display, %struct.display* %33, i32 0, i32 78
  store i32 0, i32* %d_seql, align 4
  %34 = load %struct.display*, %struct.display** @display, align 8
  %d_seqh = getelementptr inbounds %struct.display, %struct.display* %34, i32 0, i32 79
  store i8* null, i8** %d_seqh, align 8
  br label %if.end.19

if.end.19:                                        ; preds = %if.then.16, %if.end.13
  %35 = load %struct.display*, %struct.display** @display, align 8
  %d_idleev = getelementptr inbounds %struct.display, %struct.display* %35, i32 0, i32 104
  call void @evdeq(%struct.event* %d_idleev)
  %36 = load %struct.display*, %struct.display** @display, align 8
  %d_blankerev = getelementptr inbounds %struct.display, %struct.display* %36, i32 0, i32 106
  call void @evdeq(%struct.event* %d_blankerev)
  store %struct.display** @displays, %struct.display*** %dp, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end.19
  %37 = load %struct.display**, %struct.display*** %dp, align 8
  %38 = load %struct.display*, %struct.display** %37, align 8
  store %struct.display* %38, %struct.display** %d, align 8
  %tobool20 = icmp ne %struct.display* %38, null
  br i1 %tobool20, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %39 = load %struct.display*, %struct.display** %d, align 8
  %40 = load %struct.display*, %struct.display** @display, align 8
  %cmp21 = icmp eq %struct.display* %39, %40
  br i1 %cmp21, label %if.then.22, label %if.end.23

if.then.22:                                       ; preds = %for.body
  br label %for.end

if.end.23:                                        ; preds = %for.body
  br label %for.inc

for.inc:                                          ; preds = %if.end.23
  %41 = load %struct.display*, %struct.display** %d, align 8
  %d_next = getelementptr inbounds %struct.display, %struct.display* %41, i32 0, i32 0
  store %struct.display** %d_next, %struct.display*** %dp, align 8
  br label %for.cond

for.end:                                          ; preds = %if.then.22, %for.cond
  br label %do.body

do.body:                                          ; preds = %for.end
  br label %do.end

do.end:                                           ; preds = %do.body
  %42 = load %struct.display*, %struct.display** @display, align 8
  %d_status_lastmsg = getelementptr inbounds %struct.display, %struct.display* %42, i32 0, i32 46
  %43 = load i8*, i8** %d_status_lastmsg, align 8
  %tobool24 = icmp ne i8* %43, null
  br i1 %tobool24, label %if.then.25, label %if.end.27

if.then.25:                                       ; preds = %do.end
  %44 = load %struct.display*, %struct.display** @display, align 8
  %d_status_lastmsg26 = getelementptr inbounds %struct.display, %struct.display* %44, i32 0, i32 46
  %45 = load i8*, i8** %d_status_lastmsg26, align 8
  call void @free(i8* %45) #3
  br label %if.end.27

if.end.27:                                        ; preds = %if.then.25, %do.end
  %46 = load %struct.display*, %struct.display** @display, align 8
  %d_obuf = getelementptr inbounds %struct.display, %struct.display* %46, i32 0, i32 67
  %47 = load i8*, i8** %d_obuf, align 8
  %tobool28 = icmp ne i8* %47, null
  br i1 %tobool28, label %if.then.29, label %if.end.31

if.then.29:                                       ; preds = %if.end.27
  %48 = load %struct.display*, %struct.display** @display, align 8
  %d_obuf30 = getelementptr inbounds %struct.display, %struct.display* %48, i32 0, i32 67
  %49 = load i8*, i8** %d_obuf30, align 8
  call void @free(i8* %49) #3
  br label %if.end.31

if.end.31:                                        ; preds = %if.then.29, %if.end.27
  %50 = load %struct.display*, %struct.display** @display, align 8
  %d_next32 = getelementptr inbounds %struct.display, %struct.display* %50, i32 0, i32 0
  %51 = load %struct.display*, %struct.display** %d_next32, align 8
  %52 = load %struct.display**, %struct.display*** %dp, align 8
  store %struct.display* %51, %struct.display** %52, align 8
  br label %while.cond

while.cond:                                       ; preds = %while.body, %if.end.31
  %53 = load %struct.display*, %struct.display** @display, align 8
  %d_canvas = getelementptr inbounds %struct.display, %struct.display* %53, i32 0, i32 2
  %c_slperp = getelementptr inbounds %struct.canvas, %struct.canvas* %d_canvas, i32 0, i32 4
  %54 = load %struct.canvas*, %struct.canvas** %c_slperp, align 8
  %tobool33 = icmp ne %struct.canvas* %54, null
  br i1 %tobool33, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %55 = load %struct.display*, %struct.display** @display, align 8
  %d_canvas34 = getelementptr inbounds %struct.display, %struct.display* %55, i32 0, i32 2
  %c_slperp35 = getelementptr inbounds %struct.canvas, %struct.canvas* %d_canvas34, i32 0, i32 4
  %56 = load %struct.canvas*, %struct.canvas** %c_slperp35, align 8
  call void @FreeCanvas(%struct.canvas* %56)
  br label %while.cond

while.end:                                        ; preds = %while.cond
  %57 = load %struct.display*, %struct.display** @display, align 8
  %d_cvlist = getelementptr inbounds %struct.display, %struct.display* %57, i32 0, i32 3
  store %struct.canvas* null, %struct.canvas** %d_cvlist, align 8
  %58 = load %struct.win*, %struct.win** @windows, align 8
  store %struct.win* %58, %struct.win** %p, align 8
  br label %for.cond.36

for.cond.36:                                      ; preds = %for.inc.56, %while.end
  %59 = load %struct.win*, %struct.win** %p, align 8
  %tobool37 = icmp ne %struct.win* %59, null
  br i1 %tobool37, label %for.body.38, label %for.end.57

for.body.38:                                      ; preds = %for.cond.36
  %60 = load %struct.win*, %struct.win** %p, align 8
  %w_pdisplay = getelementptr inbounds %struct.win, %struct.win* %60, i32 0, i32 7
  %61 = load %struct.display*, %struct.display** %w_pdisplay, align 8
  %62 = load %struct.display*, %struct.display** @display, align 8
  %cmp39 = icmp eq %struct.display* %61, %62
  br i1 %cmp39, label %if.then.40, label %if.end.42

if.then.40:                                       ; preds = %for.body.38
  %63 = load %struct.win*, %struct.win** %p, align 8
  %w_pdisplay41 = getelementptr inbounds %struct.win, %struct.win* %63, i32 0, i32 7
  store %struct.display* null, %struct.display** %w_pdisplay41, align 8
  br label %if.end.42

if.end.42:                                        ; preds = %if.then.40, %for.body.38
  %64 = load %struct.win*, %struct.win** %p, align 8
  %w_lastdisp = getelementptr inbounds %struct.win, %struct.win* %64, i32 0, i32 8
  %65 = load %struct.display*, %struct.display** %w_lastdisp, align 8
  %66 = load %struct.display*, %struct.display** @display, align 8
  %cmp43 = icmp eq %struct.display* %65, %66
  br i1 %cmp43, label %if.then.44, label %if.end.46

if.then.44:                                       ; preds = %if.end.42
  %67 = load %struct.win*, %struct.win** %p, align 8
  %w_lastdisp45 = getelementptr inbounds %struct.win, %struct.win* %67, i32 0, i32 8
  store %struct.display* null, %struct.display** %w_lastdisp45, align 8
  br label %if.end.46

if.end.46:                                        ; preds = %if.then.44, %if.end.42
  %68 = load %struct.win*, %struct.win** %p, align 8
  %w_readev = getelementptr inbounds %struct.win, %struct.win* %68, i32 0, i32 10
  %condneg = getelementptr inbounds %struct.event, %struct.event* %w_readev, i32 0, i32 10
  %69 = load i32*, i32** %condneg, align 8
  %70 = load %struct.display*, %struct.display** @display, align 8
  %d_status = getelementptr inbounds %struct.display, %struct.display* %70, i32 0, i32 43
  %cmp47 = icmp eq i32* %69, %d_status
  br i1 %cmp47, label %if.then.51, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.end.46
  %71 = load %struct.win*, %struct.win** %p, align 8
  %w_readev48 = getelementptr inbounds %struct.win, %struct.win* %71, i32 0, i32 10
  %condneg49 = getelementptr inbounds %struct.event, %struct.event* %w_readev48, i32 0, i32 10
  %72 = load i32*, i32** %condneg49, align 8
  %73 = load %struct.display*, %struct.display** @display, align 8
  %d_obuflenmax = getelementptr inbounds %struct.display, %struct.display* %73, i32 0, i32 70
  %cmp50 = icmp eq i32* %72, %d_obuflenmax
  br i1 %cmp50, label %if.then.51, label %if.end.55

if.then.51:                                       ; preds = %lor.lhs.false, %if.end.46
  %74 = load %struct.win*, %struct.win** %p, align 8
  %w_readev52 = getelementptr inbounds %struct.win, %struct.win* %74, i32 0, i32 10
  %condneg53 = getelementptr inbounds %struct.event, %struct.event* %w_readev52, i32 0, i32 10
  store i32* null, i32** %condneg53, align 8
  %75 = load %struct.win*, %struct.win** %p, align 8
  %w_readev54 = getelementptr inbounds %struct.win, %struct.win* %75, i32 0, i32 10
  %condpos = getelementptr inbounds %struct.event, %struct.event* %w_readev54, i32 0, i32 9
  store i32* null, i32** %condpos, align 8
  br label %if.end.55

if.end.55:                                        ; preds = %if.then.51, %lor.lhs.false
  br label %for.inc.56

for.inc.56:                                       ; preds = %if.end.55
  %76 = load %struct.win*, %struct.win** %p, align 8
  %w_next = getelementptr inbounds %struct.win, %struct.win* %76, i32 0, i32 0
  %77 = load %struct.win*, %struct.win** %w_next, align 8
  store %struct.win* %77, %struct.win** %p, align 8
  br label %for.cond.36

for.end.57:                                       ; preds = %for.cond.36
  %78 = load %struct.win*, %struct.win** @windows, align 8
  store %struct.win* %78, %struct.win** %p, align 8
  br label %for.cond.58

for.cond.58:                                      ; preds = %for.inc.64, %for.end.57
  %79 = load %struct.win*, %struct.win** %p, align 8
  %tobool59 = icmp ne %struct.win* %79, null
  br i1 %tobool59, label %for.body.60, label %for.end.66

for.body.60:                                      ; preds = %for.cond.58
  %80 = load %struct.win*, %struct.win** %p, align 8
  %w_zdisplay = getelementptr inbounds %struct.win, %struct.win* %80, i32 0, i32 91
  %81 = load %struct.display*, %struct.display** %w_zdisplay, align 8
  %82 = load %struct.display*, %struct.display** @display, align 8
  %cmp61 = icmp eq %struct.display* %81, %82
  br i1 %cmp61, label %if.then.62, label %if.end.63

if.then.62:                                       ; preds = %for.body.60
  %83 = load %struct.win*, %struct.win** %p, align 8
  call void @zmodem_abort(%struct.win* %83, %struct.display* null)
  br label %if.end.63

if.end.63:                                        ; preds = %if.then.62, %for.body.60
  br label %for.inc.64

for.inc.64:                                       ; preds = %if.end.63
  %84 = load %struct.win*, %struct.win** %p, align 8
  %w_next65 = getelementptr inbounds %struct.win, %struct.win* %84, i32 0, i32 0
  %85 = load %struct.win*, %struct.win** %w_next65, align 8
  store %struct.win* %85, %struct.win** %p, align 8
  br label %for.cond.58

for.end.66:                                       ; preds = %for.cond.58
  %86 = load %struct.display*, %struct.display** @display, align 8
  %d_mousetrack = getelementptr inbounds %struct.display, %struct.display* %86, i32 0, i32 40
  %87 = load i32, i32* %d_mousetrack, align 4
  %tobool67 = icmp ne i32 %87, 0
  br i1 %tobool67, label %if.then.68, label %if.end.70

if.then.68:                                       ; preds = %for.end.66
  %88 = load %struct.display*, %struct.display** @display, align 8
  %d_mousetrack69 = getelementptr inbounds %struct.display, %struct.display* %88, i32 0, i32 40
  store i32 0, i32* %d_mousetrack69, align 4
  call void @MouseMode(i32 0)
  br label %if.end.70

if.end.70:                                        ; preds = %if.then.68, %for.end.66
  %89 = load %struct.display*, %struct.display** @display, align 8
  %90 = bitcast %struct.display* %89 to i8*
  call void @free(i8* %90) #3
  store %struct.display* null, %struct.display** @display, align 8
  br label %return

return:                                           ; preds = %if.end.70, %if.then.1
  ret void
}

declare void @FreeTransTable() #1

; Function Attrs: nounwind uwtable
define void @KillBlanker() #0 {
entry:
  %oldtop = alloca i32, align 4
  %oldbot = alloca i32, align 4
  %oldrend = alloca %struct.mchar, align 1
  %0 = load %struct.display*, %struct.display** @display, align 8
  %d_top = getelementptr inbounds %struct.display, %struct.display* %0, i32 0, i32 20
  %1 = load i32, i32* %d_top, align 4
  store i32 %1, i32* %oldtop, align 4
  %2 = load %struct.display*, %struct.display** @display, align 8
  %d_bot = getelementptr inbounds %struct.display, %struct.display* %2, i32 0, i32 21
  %3 = load i32, i32* %d_bot, align 4
  store i32 %3, i32* %oldbot, align 4
  %4 = load %struct.display*, %struct.display** @display, align 8
  %d_blankerev = getelementptr inbounds %struct.display, %struct.display* %4, i32 0, i32 106
  %fd = getelementptr inbounds %struct.event, %struct.event* %d_blankerev, i32 0, i32 3
  %5 = load i32, i32* %fd, align 4
  %cmp = icmp eq i32 %5, -1
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  br label %return

if.end:                                           ; preds = %entry
  %6 = load %struct.display*, %struct.display** @display, align 8
  %d_blocked = getelementptr inbounds %struct.display, %struct.display* %6, i32 0, i32 102
  %7 = load i32, i32* %d_blocked, align 4
  %cmp1 = icmp eq i32 %7, 4
  br i1 %cmp1, label %if.then.2, label %if.end.4

if.then.2:                                        ; preds = %if.end
  %8 = load %struct.display*, %struct.display** @display, align 8
  %d_blocked3 = getelementptr inbounds %struct.display, %struct.display* %8, i32 0, i32 102
  store i32 0, i32* %d_blocked3, align 4
  br label %if.end.4

if.end.4:                                         ; preds = %if.then.2, %if.end
  %9 = load %struct.display*, %struct.display** @display, align 8
  %d_blankerev5 = getelementptr inbounds %struct.display, %struct.display* %9, i32 0, i32 106
  call void @evdeq(%struct.event* %d_blankerev5)
  %10 = load %struct.display*, %struct.display** @display, align 8
  %d_blankerev6 = getelementptr inbounds %struct.display, %struct.display* %10, i32 0, i32 106
  %fd7 = getelementptr inbounds %struct.event, %struct.event* %d_blankerev6, i32 0, i32 3
  %11 = load i32, i32* %fd7, align 4
  %call = call i32 @close(i32 %11)
  %12 = load %struct.display*, %struct.display** @display, align 8
  %d_blankerev8 = getelementptr inbounds %struct.display, %struct.display* %12, i32 0, i32 106
  %fd9 = getelementptr inbounds %struct.event, %struct.event* %d_blankerev8, i32 0, i32 3
  store i32 -1, i32* %fd9, align 4
  %13 = load %struct.display*, %struct.display** @display, align 8
  %d_blankerpid = getelementptr inbounds %struct.display, %struct.display* %13, i32 0, i32 105
  %14 = load i32, i32* %d_blankerpid, align 4
  call void @Kill(i32 %14, i32 1)
  %15 = load %struct.display*, %struct.display** @display, align 8
  %d_bot10 = getelementptr inbounds %struct.display, %struct.display* %15, i32 0, i32 21
  store i32 -1, i32* %d_bot10, align 4
  %16 = load %struct.display*, %struct.display** @display, align 8
  %d_top11 = getelementptr inbounds %struct.display, %struct.display* %16, i32 0, i32 20
  store i32 -1, i32* %d_top11, align 4
  %17 = load %struct.display*, %struct.display** @display, align 8
  %d_rend = getelementptr inbounds %struct.display, %struct.display* %17, i32 0, i32 24
  %18 = bitcast %struct.mchar* %oldrend to i8*
  %19 = bitcast %struct.mchar* %d_rend to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %18, i8* %19, i64 6, i32 1, i1 false)
  %20 = load %struct.display*, %struct.display** @display, align 8
  %d_tcs = getelementptr inbounds %struct.display, %struct.display* %20, i32 0, i32 83
  %arrayidx = getelementptr inbounds [201 x %union.tcu], [201 x %union.tcu]* %d_tcs, i32 0, i64 55
  %str = bitcast %union.tcu* %arrayidx to i8**
  %21 = load i8*, i8** %str, align 8
  %tobool = icmp ne i8* %21, null
  br i1 %tobool, label %if.then.12, label %if.else

if.then.12:                                       ; preds = %if.end.4
  %22 = load %struct.display*, %struct.display** @display, align 8
  %d_tcs13 = getelementptr inbounds %struct.display, %struct.display* %22, i32 0, i32 83
  %arrayidx14 = getelementptr inbounds [201 x %union.tcu], [201 x %union.tcu]* %d_tcs13, i32 0, i64 55
  %str15 = bitcast %union.tcu* %arrayidx14 to i8**
  %23 = load i8*, i8** %str15, align 8
  call void @AddCStr(i8* %23)
  %24 = load %struct.display*, %struct.display** @display, align 8
  %d_tcs16 = getelementptr inbounds %struct.display, %struct.display* %24, i32 0, i32 83
  %arrayidx17 = getelementptr inbounds [201 x %union.tcu], [201 x %union.tcu]* %d_tcs16, i32 0, i64 55
  %str18 = bitcast %union.tcu* %arrayidx17 to i8**
  %25 = load i8*, i8** %str18, align 8
  call void @AddCStr(i8* %25)
  br label %if.end.28

if.else:                                          ; preds = %if.end.4
  %26 = load %struct.display*, %struct.display** @display, align 8
  %d_hascolor = getelementptr inbounds %struct.display, %struct.display* %26, i32 0, i32 86
  %27 = load i32, i32* %d_hascolor, align 4
  %tobool19 = icmp ne i32 %27, 0
  br i1 %tobool19, label %if.then.20, label %if.end.21

if.then.20:                                       ; preds = %if.else
  call void @AddStr(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.12, i32 0, i32 0))
  br label %if.end.21

if.end.21:                                        ; preds = %if.then.20, %if.else
  %28 = load %struct.display*, %struct.display** @display, align 8
  %d_tcs22 = getelementptr inbounds %struct.display, %struct.display* %28, i32 0, i32 83
  %arrayidx23 = getelementptr inbounds [201 x %union.tcu], [201 x %union.tcu]* %d_tcs22, i32 0, i64 54
  %str24 = bitcast %union.tcu* %arrayidx23 to i8**
  %29 = load i8*, i8** %str24, align 8
  call void @AddCStr(i8* %29)
  %30 = load %struct.display*, %struct.display** @display, align 8
  %d_tcs25 = getelementptr inbounds %struct.display, %struct.display* %30, i32 0, i32 83
  %arrayidx26 = getelementptr inbounds [201 x %union.tcu], [201 x %union.tcu]* %d_tcs25, i32 0, i64 53
  %str27 = bitcast %union.tcu* %arrayidx26 to i8**
  %31 = load i8*, i8** %str27, align 8
  call void @AddCStr(i8* %31)
  br label %if.end.28

if.end.28:                                        ; preds = %if.end.21, %if.then.12
  %32 = load %struct.display*, %struct.display** @display, align 8
  %d_tcs29 = getelementptr inbounds %struct.display, %struct.display* %32, i32 0, i32 83
  %arrayidx30 = getelementptr inbounds [201 x %union.tcu], [201 x %union.tcu]* %d_tcs29, i32 0, i64 82
  %str31 = bitcast %union.tcu* %arrayidx30 to i8**
  %33 = load i8*, i8** %str31, align 8
  call void @AddCStr(i8* %33)
  %34 = load %struct.display*, %struct.display** @display, align 8
  %d_tcs32 = getelementptr inbounds %struct.display, %struct.display* %34, i32 0, i32 83
  %arrayidx33 = getelementptr inbounds [201 x %union.tcu], [201 x %union.tcu]* %d_tcs32, i32 0, i64 99
  %str34 = bitcast %union.tcu* %arrayidx33 to i8**
  %35 = load i8*, i8** %str34, align 8
  call void @AddCStr(i8* %35)
  %36 = load %struct.display*, %struct.display** @display, align 8
  %d_rend35 = getelementptr inbounds %struct.display, %struct.display* %36, i32 0, i32 24
  %37 = bitcast %struct.mchar* %d_rend35 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %37, i8* getelementptr inbounds (%struct.mchar, %struct.mchar* @mchar_null, i32 0, i32 0), i64 6, i32 1, i1 false)
  %38 = load %struct.display*, %struct.display** @display, align 8
  %d_atyp = getelementptr inbounds %struct.display, %struct.display* %38, i32 0, i32 26
  store i8 0, i8* %d_atyp, align 1
  %39 = load %struct.display*, %struct.display** @display, align 8
  %d_curvis = getelementptr inbounds %struct.display, %struct.display* %39, i32 0, i32 35
  store i32 0, i32* %d_curvis, align 4
  %40 = load %struct.display*, %struct.display** @display, align 8
  %d_y = getelementptr inbounds %struct.display, %struct.display* %40, i32 0, i32 23
  store i32 -1, i32* %d_y, align 4
  %41 = load %struct.display*, %struct.display** @display, align 8
  %d_x = getelementptr inbounds %struct.display, %struct.display* %41, i32 0, i32 22
  store i32 -1, i32* %d_x, align 4
  %42 = load i32, i32* %oldtop, align 4
  %43 = load i32, i32* %oldbot, align 4
  call void @ChangeScrollRegion(i32 %42, i32 %43)
  call void @SetRendition(%struct.mchar* %oldrend)
  call void @ClearAll()
  br label %return

return:                                           ; preds = %if.end.28, %if.then
  ret void
}

; Function Attrs: nounwind uwtable
define void @Flush(i32 %progress) #0 {
entry:
  %progress.addr = alloca i32, align 4
  %l = alloca i32, align 4
  %wr = alloca i32, align 4
  %p = alloca i8*, align 8
  %w = alloca %struct.fd_set, align 8
  %__d0 = alloca i32, align 4
  %__d1 = alloca i32, align 4
  %t = alloca %struct.timeval, align 8
  store i32 %progress, i32* %progress.addr, align 4
  br label %do.body

do.body:                                          ; preds = %entry
  br label %do.end

do.end:                                           ; preds = %do.body
  %0 = load %struct.display*, %struct.display** @display, align 8
  %d_obufp = getelementptr inbounds %struct.display, %struct.display* %0, i32 0, i32 71
  %1 = load i8*, i8** %d_obufp, align 8
  %2 = load %struct.display*, %struct.display** @display, align 8
  %d_obuf = getelementptr inbounds %struct.display, %struct.display* %2, i32 0, i32 67
  %3 = load i8*, i8** %d_obuf, align 8
  %sub.ptr.lhs.cast = ptrtoint i8* %1 to i64
  %sub.ptr.rhs.cast = ptrtoint i8* %3 to i64
  %sub.ptr.sub = sub i64 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast
  %conv = trunc i64 %sub.ptr.sub to i32
  store i32 %conv, i32* %l, align 4
  br label %do.body.1

do.body.1:                                        ; preds = %do.end
  br label %do.end.2

do.end.2:                                         ; preds = %do.body.1
  %4 = load i32, i32* %l, align 4
  %cmp = icmp eq i32 %4, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %do.end.2
  br label %return

if.end:                                           ; preds = %do.end.2
  br label %do.body.4

do.body.4:                                        ; preds = %if.end
  br label %do.end.5

do.end.5:                                         ; preds = %do.body.4
  %5 = load %struct.display*, %struct.display** @display, align 8
  %d_userfd = getelementptr inbounds %struct.display, %struct.display* %5, i32 0, i32 59
  %6 = load i32, i32* %d_userfd, align 4
  %cmp6 = icmp slt i32 %6, 0
  br i1 %cmp6, label %if.then.8, label %if.end.11

if.then.8:                                        ; preds = %do.end.5
  %7 = load i32, i32* %l, align 4
  %8 = load %struct.display*, %struct.display** @display, align 8
  %d_obuffree = getelementptr inbounds %struct.display, %struct.display* %8, i32 0, i32 72
  %9 = load i32, i32* %d_obuffree, align 4
  %add = add nsw i32 %9, %7
  store i32 %add, i32* %d_obuffree, align 4
  %10 = load %struct.display*, %struct.display** @display, align 8
  %d_obuf9 = getelementptr inbounds %struct.display, %struct.display* %10, i32 0, i32 67
  %11 = load i8*, i8** %d_obuf9, align 8
  %12 = load %struct.display*, %struct.display** @display, align 8
  %d_obufp10 = getelementptr inbounds %struct.display, %struct.display* %12, i32 0, i32 71
  store i8* %11, i8** %d_obufp10, align 8
  br label %return

if.end.11:                                        ; preds = %do.end.5
  %13 = load %struct.display*, %struct.display** @display, align 8
  %d_obuf12 = getelementptr inbounds %struct.display, %struct.display* %13, i32 0, i32 67
  %14 = load i8*, i8** %d_obuf12, align 8
  store i8* %14, i8** %p, align 8
  %15 = load i32, i32* %progress.addr, align 4
  %tobool = icmp ne i32 %15, 0
  br i1 %tobool, label %if.end.20, label %if.then.13

if.then.13:                                       ; preds = %if.end.11
  %16 = load %struct.display*, %struct.display** @display, align 8
  %d_userfd14 = getelementptr inbounds %struct.display, %struct.display* %16, i32 0, i32 59
  %17 = load i32, i32* %d_userfd14, align 4
  %call = call i32 (i32, i32, ...) @fcntl(i32 %17, i32 4, i32 0)
  %tobool15 = icmp ne i32 %call, 0
  br i1 %tobool15, label %if.then.16, label %if.end.19

if.then.16:                                       ; preds = %if.then.13
  br label %do.body.17

do.body.17:                                       ; preds = %if.then.16
  br label %do.end.18

do.end.18:                                        ; preds = %do.body.17
  br label %if.end.19

if.end.19:                                        ; preds = %do.end.18, %if.then.13
  br label %if.end.20

if.end.20:                                        ; preds = %if.end.19, %if.end.11
  br label %while.cond

while.cond:                                       ; preds = %if.end.65, %if.then.61, %if.then.39, %if.end.20
  %18 = load i32, i32* %l, align 4
  %tobool21 = icmp ne i32 %18, 0
  br i1 %tobool21, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %19 = load i32, i32* %progress.addr, align 4
  %tobool22 = icmp ne i32 %19, 0
  br i1 %tobool22, label %if.then.23, label %if.end.50

if.then.23:                                       ; preds = %while.body
  br label %do.body.24

do.body.24:                                       ; preds = %if.then.23
  %fds_bits = getelementptr inbounds %struct.fd_set, %struct.fd_set* %w, i32 0, i32 0
  %arrayidx = getelementptr inbounds [16 x i64], [16 x i64]* %fds_bits, i32 0, i64 0
  %20 = call { i64, i64* } asm sideeffect "cld; rep; stosq", "={cx},={di},{ax},0,1,~{memory},~{dirflag},~{fpsr},~{flags}"(i32 0, i64 16, i64* %arrayidx) #3, !srcloc !1
  %asmresult = extractvalue { i64, i64* } %20, 0
  %asmresult25 = extractvalue { i64, i64* } %20, 1
  %21 = trunc i64 %asmresult to i32
  store i32 %21, i32* %__d0, align 4
  %22 = ptrtoint i64* %asmresult25 to i64
  %23 = trunc i64 %22 to i32
  store i32 %23, i32* %__d1, align 4
  br label %do.end.26

do.end.26:                                        ; preds = %do.body.24
  %24 = load %struct.display*, %struct.display** @display, align 8
  %d_userfd27 = getelementptr inbounds %struct.display, %struct.display* %24, i32 0, i32 59
  %25 = load i32, i32* %d_userfd27, align 4
  %rem = srem i32 %25, 64
  %sh_prom = zext i32 %rem to i64
  %shl = shl i64 1, %sh_prom
  %26 = load %struct.display*, %struct.display** @display, align 8
  %d_userfd28 = getelementptr inbounds %struct.display, %struct.display* %26, i32 0, i32 59
  %27 = load i32, i32* %d_userfd28, align 4
  %div = sdiv i32 %27, 64
  %idxprom = sext i32 %div to i64
  %fds_bits29 = getelementptr inbounds %struct.fd_set, %struct.fd_set* %w, i32 0, i32 0
  %arrayidx30 = getelementptr inbounds [16 x i64], [16 x i64]* %fds_bits29, i32 0, i64 %idxprom
  %28 = load i64, i64* %arrayidx30, align 8
  %or = or i64 %28, %shl
  store i64 %or, i64* %arrayidx30, align 8
  %29 = load i32, i32* %progress.addr, align 4
  %conv31 = sext i32 %29 to i64
  %tv_sec = getelementptr inbounds %struct.timeval, %struct.timeval* %t, i32 0, i32 0
  store i64 %conv31, i64* %tv_sec, align 8
  %tv_usec = getelementptr inbounds %struct.timeval, %struct.timeval* %t, i32 0, i32 1
  store i64 0, i64* %tv_usec, align 8
  %call32 = call i32 @select(i32 1024, %struct.fd_set* null, %struct.fd_set* %w, %struct.fd_set* null, %struct.timeval* %t)
  store i32 %call32, i32* %wr, align 4
  %30 = load i32, i32* %wr, align 4
  %cmp33 = icmp eq i32 %30, -1
  br i1 %cmp33, label %if.then.35, label %if.end.43

if.then.35:                                       ; preds = %do.end.26
  %call36 = call i32* @__errno_location() #7
  %31 = load i32, i32* %call36, align 4
  %cmp37 = icmp eq i32 %31, 4
  br i1 %cmp37, label %if.then.39, label %if.end.40

if.then.39:                                       ; preds = %if.then.35
  br label %while.cond

if.end.40:                                        ; preds = %if.then.35
  br label %do.body.41

do.body.41:                                       ; preds = %if.end.40
  br label %do.end.42

do.end.42:                                        ; preds = %do.body.41
  br label %while.end

if.end.43:                                        ; preds = %do.end.26
  %32 = load i32, i32* %wr, align 4
  %cmp44 = icmp eq i32 %32, 0
  br i1 %cmp44, label %if.then.46, label %if.end.49

if.then.46:                                       ; preds = %if.end.43
  br label %do.body.47

do.body.47:                                       ; preds = %if.then.46
  br label %do.end.48

do.end.48:                                        ; preds = %do.body.47
  br label %while.end

if.end.49:                                        ; preds = %if.end.43
  br label %if.end.50

if.end.50:                                        ; preds = %if.end.49, %while.body
  %33 = load %struct.display*, %struct.display** @display, align 8
  %d_userfd51 = getelementptr inbounds %struct.display, %struct.display* %33, i32 0, i32 59
  %34 = load i32, i32* %d_userfd51, align 4
  %35 = load i8*, i8** %p, align 8
  %36 = load i32, i32* %l, align 4
  %conv52 = sext i32 %36 to i64
  %call53 = call i64 @write(i32 %34, i8* %35, i64 %conv52)
  %conv54 = trunc i64 %call53 to i32
  store i32 %conv54, i32* %wr, align 4
  %37 = load i32, i32* %wr, align 4
  %cmp55 = icmp sle i32 %37, 0
  br i1 %cmp55, label %if.then.57, label %if.end.65

if.then.57:                                       ; preds = %if.end.50
  %call58 = call i32* @__errno_location() #7
  %38 = load i32, i32* %call58, align 4
  %cmp59 = icmp eq i32 %38, 4
  br i1 %cmp59, label %if.then.61, label %if.end.62

if.then.61:                                       ; preds = %if.then.57
  br label %while.cond

if.end.62:                                        ; preds = %if.then.57
  br label %do.body.63

do.body.63:                                       ; preds = %if.end.62
  br label %do.end.64

do.end.64:                                        ; preds = %do.body.63
  br label %while.end

if.end.65:                                        ; preds = %if.end.50
  %39 = load i32, i32* %wr, align 4
  %40 = load %struct.display*, %struct.display** @display, align 8
  %d_obuffree66 = getelementptr inbounds %struct.display, %struct.display* %40, i32 0, i32 72
  %41 = load i32, i32* %d_obuffree66, align 4
  %add67 = add nsw i32 %41, %39
  store i32 %add67, i32* %d_obuffree66, align 4
  %42 = load i32, i32* %wr, align 4
  %43 = load i8*, i8** %p, align 8
  %idx.ext = sext i32 %42 to i64
  %add.ptr = getelementptr inbounds i8, i8* %43, i64 %idx.ext
  store i8* %add.ptr, i8** %p, align 8
  %44 = load i32, i32* %wr, align 4
  %45 = load i32, i32* %l, align 4
  %sub = sub nsw i32 %45, %44
  store i32 %sub, i32* %l, align 4
  br label %while.cond

while.end:                                        ; preds = %do.end.64, %do.end.48, %do.end.42, %while.cond
  %46 = load i32, i32* %l, align 4
  %tobool68 = icmp ne i32 %46, 0
  br i1 %tobool68, label %if.then.69, label %if.end.72

if.then.69:                                       ; preds = %while.end
  br label %do.body.70

do.body.70:                                       ; preds = %if.then.69
  br label %do.end.71

do.end.71:                                        ; preds = %do.body.70
  br label %if.end.72

if.end.72:                                        ; preds = %do.end.71, %while.end
  %47 = load i32, i32* %l, align 4
  %48 = load %struct.display*, %struct.display** @display, align 8
  %d_obuffree73 = getelementptr inbounds %struct.display, %struct.display* %48, i32 0, i32 72
  %49 = load i32, i32* %d_obuffree73, align 4
  %add74 = add nsw i32 %49, %47
  store i32 %add74, i32* %d_obuffree73, align 4
  %50 = load %struct.display*, %struct.display** @display, align 8
  %d_obuf75 = getelementptr inbounds %struct.display, %struct.display* %50, i32 0, i32 67
  %51 = load i8*, i8** %d_obuf75, align 8
  %52 = load %struct.display*, %struct.display** @display, align 8
  %d_obufp76 = getelementptr inbounds %struct.display, %struct.display* %52, i32 0, i32 71
  store i8* %51, i8** %d_obufp76, align 8
  %53 = load i32, i32* %progress.addr, align 4
  %tobool77 = icmp ne i32 %53, 0
  br i1 %tobool77, label %if.end.86, label %if.then.78

if.then.78:                                       ; preds = %if.end.72
  %54 = load %struct.display*, %struct.display** @display, align 8
  %d_userfd79 = getelementptr inbounds %struct.display, %struct.display* %54, i32 0, i32 59
  %55 = load i32, i32* %d_userfd79, align 4
  %call80 = call i32 (i32, i32, ...) @fcntl(i32 %55, i32 4, i32 2048)
  %tobool81 = icmp ne i32 %call80, 0
  br i1 %tobool81, label %if.then.82, label %if.end.85

if.then.82:                                       ; preds = %if.then.78
  br label %do.body.83

do.body.83:                                       ; preds = %if.then.82
  br label %do.end.84

do.end.84:                                        ; preds = %do.body.83
  br label %if.end.85

if.end.85:                                        ; preds = %do.end.84, %if.then.78
  br label %if.end.86

if.end.86:                                        ; preds = %if.end.85, %if.end.72
  %56 = load %struct.display*, %struct.display** @display, align 8
  %d_blocked = getelementptr inbounds %struct.display, %struct.display* %56, i32 0, i32 102
  %57 = load i32, i32* %d_blocked, align 4
  %cmp87 = icmp eq i32 %57, 1
  br i1 %cmp87, label %if.then.89, label %if.end.91

if.then.89:                                       ; preds = %if.end.86
  %58 = load %struct.display*, %struct.display** @display, align 8
  %d_blocked90 = getelementptr inbounds %struct.display, %struct.display* %58, i32 0, i32 102
  store i32 0, i32* %d_blocked90, align 4
  br label %if.end.91

if.end.91:                                        ; preds = %if.then.89, %if.end.86
  %59 = load %struct.display*, %struct.display** @display, align 8
  %d_blocked_fuzz = getelementptr inbounds %struct.display, %struct.display* %59, i32 0, i32 103
  store i32 0, i32* %d_blocked_fuzz, align 4
  br label %return

return:                                           ; preds = %if.end.91, %if.then.8, %if.then
  ret void
}

declare void @SetTTY(i32, %struct.mode*) #1

declare i32 @fcntl(i32, i32, ...) #1

; Function Attrs: nounwind uwtable
define void @freetty() #0 {
entry:
  %0 = load %struct.display*, %struct.display** @display, align 8
  %d_userfd = getelementptr inbounds %struct.display, %struct.display* %0, i32 0, i32 59
  %1 = load i32, i32* %d_userfd, align 4
  %cmp = icmp sge i32 %1, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %2 = load %struct.display*, %struct.display** @display, align 8
  %d_userfd1 = getelementptr inbounds %struct.display, %struct.display* %2, i32 0, i32 59
  %3 = load i32, i32* %d_userfd1, align 4
  %call = call i32 @close(i32 %3)
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  br label %do.body

do.body:                                          ; preds = %if.end
  br label %do.end

do.end:                                           ; preds = %do.body
  %4 = load %struct.display*, %struct.display** @display, align 8
  %d_userfd2 = getelementptr inbounds %struct.display, %struct.display* %4, i32 0, i32 59
  store i32 -1, i32* %d_userfd2, align 4
  %5 = load %struct.display*, %struct.display** @display, align 8
  %d_obufp = getelementptr inbounds %struct.display, %struct.display* %5, i32 0, i32 71
  store i8* null, i8** %d_obufp, align 8
  %6 = load %struct.display*, %struct.display** @display, align 8
  %d_obuffree = getelementptr inbounds %struct.display, %struct.display* %6, i32 0, i32 72
  store i32 0, i32* %d_obuffree, align 4
  %7 = load %struct.display*, %struct.display** @display, align 8
  %d_obuf = getelementptr inbounds %struct.display, %struct.display* %7, i32 0, i32 67
  %8 = load i8*, i8** %d_obuf, align 8
  %tobool = icmp ne i8* %8, null
  br i1 %tobool, label %if.then.3, label %if.end.5

if.then.3:                                        ; preds = %do.end
  %9 = load %struct.display*, %struct.display** @display, align 8
  %d_obuf4 = getelementptr inbounds %struct.display, %struct.display* %9, i32 0, i32 67
  %10 = load i8*, i8** %d_obuf4, align 8
  call void @free(i8* %10) #3
  br label %if.end.5

if.end.5:                                         ; preds = %if.then.3, %do.end
  %11 = load %struct.display*, %struct.display** @display, align 8
  %d_obuf6 = getelementptr inbounds %struct.display, %struct.display* %11, i32 0, i32 67
  store i8* null, i8** %d_obuf6, align 8
  %12 = load %struct.display*, %struct.display** @display, align 8
  %d_obuflen = getelementptr inbounds %struct.display, %struct.display* %12, i32 0, i32 68
  store i32 0, i32* %d_obuflen, align 4
  %13 = load %struct.display*, %struct.display** @display, align 8
  %d_obufmax = getelementptr inbounds %struct.display, %struct.display* %13, i32 0, i32 69
  %14 = load i32, i32* %d_obufmax, align 4
  %sub = sub nsw i32 0, %14
  %15 = load %struct.display*, %struct.display** @display, align 8
  %d_obuflenmax = getelementptr inbounds %struct.display, %struct.display* %15, i32 0, i32 70
  store i32 %sub, i32* %d_obuflenmax, align 4
  %16 = load %struct.display*, %struct.display** @display, align 8
  %d_blocked = getelementptr inbounds %struct.display, %struct.display* %16, i32 0, i32 102
  store i32 0, i32* %d_blocked, align 4
  %17 = load %struct.display*, %struct.display** @display, align 8
  %d_blocked_fuzz = getelementptr inbounds %struct.display, %struct.display* %17, i32 0, i32 103
  store i32 0, i32* %d_blocked_fuzz, align 4
  ret void
}

; Function Attrs: nounwind
declare void @free(i8*) #2

declare void @evdeq(%struct.event*) #1

declare void @FreeCanvas(%struct.canvas*) #1

declare void @zmodem_abort(%struct.win*, %struct.display*) #1

; Function Attrs: nounwind uwtable
define void @MouseMode(i32 %mode) #0 {
entry:
  %mode.addr = alloca i32, align 4
  %mousebuf = alloca [20 x i8], align 16
  store i32 %mode, i32* %mode.addr, align 4
  %0 = load %struct.display*, %struct.display** @display, align 8
  %tobool = icmp ne %struct.display* %0, null
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  br label %if.end.22

if.end:                                           ; preds = %entry
  %1 = load i32, i32* %mode.addr, align 4
  %2 = load %struct.display*, %struct.display** @display, align 8
  %d_mousetrack = getelementptr inbounds %struct.display, %struct.display* %2, i32 0, i32 40
  %3 = load i32, i32* %d_mousetrack, align 4
  %cmp = icmp slt i32 %1, %3
  br i1 %cmp, label %if.then.1, label %if.end.3

if.then.1:                                        ; preds = %if.end
  %4 = load %struct.display*, %struct.display** @display, align 8
  %d_mousetrack2 = getelementptr inbounds %struct.display, %struct.display* %4, i32 0, i32 40
  %5 = load i32, i32* %d_mousetrack2, align 4
  store i32 %5, i32* %mode.addr, align 4
  br label %if.end.3

if.end.3:                                         ; preds = %if.then.1, %if.end
  %6 = load %struct.display*, %struct.display** @display, align 8
  %d_mouse = getelementptr inbounds %struct.display, %struct.display* %6, i32 0, i32 39
  %7 = load i32, i32* %d_mouse, align 4
  %8 = load i32, i32* %mode.addr, align 4
  %cmp4 = icmp ne i32 %7, %8
  br i1 %cmp4, label %if.then.5, label %if.end.22

if.then.5:                                        ; preds = %if.end.3
  %9 = load %struct.display*, %struct.display** @display, align 8
  %d_tcs = getelementptr inbounds %struct.display, %struct.display* %9, i32 0, i32 83
  %arrayidx = getelementptr inbounds [201 x %union.tcu], [201 x %union.tcu]* %d_tcs, i32 0, i64 96
  %flg = bitcast %union.tcu* %arrayidx to i32*
  %10 = load i32, i32* %flg, align 4
  %tobool6 = icmp ne i32 %10, 0
  br i1 %tobool6, label %if.end.8, label %if.then.7

if.then.7:                                        ; preds = %if.then.5
  br label %if.end.22

if.end.8:                                         ; preds = %if.then.5
  %11 = load %struct.display*, %struct.display** @display, align 8
  %d_mouse9 = getelementptr inbounds %struct.display, %struct.display* %11, i32 0, i32 39
  %12 = load i32, i32* %d_mouse9, align 4
  %tobool10 = icmp ne i32 %12, 0
  br i1 %tobool10, label %if.then.11, label %if.end.14

if.then.11:                                       ; preds = %if.end.8
  %arraydecay = getelementptr inbounds [20 x i8], [20 x i8]* %mousebuf, i32 0, i32 0
  %13 = load %struct.display*, %struct.display** @display, align 8
  %d_mouse12 = getelementptr inbounds %struct.display, %struct.display* %13, i32 0, i32 39
  %14 = load i32, i32* %d_mouse12, align 4
  %call = call i32 (i8*, i8*, ...) @sprintf(i8* %arraydecay, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i32 0, i32 0), i32 %14) #3
  %arraydecay13 = getelementptr inbounds [20 x i8], [20 x i8]* %mousebuf, i32 0, i32 0
  call void @AddStr(i8* %arraydecay13)
  br label %if.end.14

if.end.14:                                        ; preds = %if.then.11, %if.end.8
  %15 = load i32, i32* %mode.addr, align 4
  %tobool15 = icmp ne i32 %15, 0
  br i1 %tobool15, label %if.then.16, label %if.end.20

if.then.16:                                       ; preds = %if.end.14
  %arraydecay17 = getelementptr inbounds [20 x i8], [20 x i8]* %mousebuf, i32 0, i32 0
  %16 = load i32, i32* %mode.addr, align 4
  %call18 = call i32 (i8*, i8*, ...) @sprintf(i8* %arraydecay17, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1, i32 0, i32 0), i32 %16) #3
  %arraydecay19 = getelementptr inbounds [20 x i8], [20 x i8]* %mousebuf, i32 0, i32 0
  call void @AddStr(i8* %arraydecay19)
  br label %if.end.20

if.end.20:                                        ; preds = %if.then.16, %if.end.14
  %17 = load i32, i32* %mode.addr, align 4
  %18 = load %struct.display*, %struct.display** @display, align 8
  %d_mouse21 = getelementptr inbounds %struct.display, %struct.display* %18, i32 0, i32 39
  store i32 %17, i32* %d_mouse21, align 4
  br label %if.end.22

if.end.22:                                        ; preds = %if.then, %if.then.7, %if.end.20, %if.end.3
  ret void
}

; Function Attrs: nounwind uwtable
define void @InitTerm(i32 %adapt) #0 {
entry:
  %adapt.addr = alloca i32, align 4
  store i32 %adapt, i32* %adapt.addr, align 4
  br label %do.body

do.body:                                          ; preds = %entry
  br label %do.end

do.end:                                           ; preds = %do.body
  br label %do.body.1

do.body.1:                                        ; preds = %do.end
  br label %do.end.2

do.end.2:                                         ; preds = %do.body.1
  %0 = load %struct.display*, %struct.display** @display, align 8
  %d_bot = getelementptr inbounds %struct.display, %struct.display* %0, i32 0, i32 21
  store i32 -1, i32* %d_bot, align 4
  %1 = load %struct.display*, %struct.display** @display, align 8
  %d_top = getelementptr inbounds %struct.display, %struct.display* %1, i32 0, i32 20
  store i32 -1, i32* %d_top, align 4
  %2 = load %struct.display*, %struct.display** @display, align 8
  %d_tcs = getelementptr inbounds %struct.display, %struct.display* %2, i32 0, i32 83
  %arrayidx = getelementptr inbounds [201 x %union.tcu], [201 x %union.tcu]* %d_tcs, i32 0, i64 39
  %str = bitcast %union.tcu* %arrayidx to i8**
  %3 = load i8*, i8** %str, align 8
  call void @AddCStr(i8* %3)
  %4 = load %struct.display*, %struct.display** @display, align 8
  %d_tcs3 = getelementptr inbounds %struct.display, %struct.display* %4, i32 0, i32 83
  %arrayidx4 = getelementptr inbounds [201 x %union.tcu], [201 x %union.tcu]* %d_tcs3, i32 0, i64 40
  %str5 = bitcast %union.tcu* %arrayidx4 to i8**
  %5 = load i8*, i8** %str5, align 8
  call void @AddCStr(i8* %5)
  %6 = load %struct.display*, %struct.display** @display, align 8
  %d_tcs6 = getelementptr inbounds %struct.display, %struct.display* %6, i32 0, i32 83
  %arrayidx7 = getelementptr inbounds [201 x %union.tcu], [201 x %union.tcu]* %d_tcs6, i32 0, i64 27
  %str8 = bitcast %union.tcu* %arrayidx7 to i8**
  %7 = load i8*, i8** %str8, align 8
  %tobool = icmp ne i8* %7, null
  br i1 %tobool, label %land.lhs.true, label %if.end

land.lhs.true:                                    ; preds = %do.end.2
  %8 = load %struct.display*, %struct.display** @display, align 8
  %d_tcs9 = getelementptr inbounds %struct.display, %struct.display* %8, i32 0, i32 83
  %arrayidx10 = getelementptr inbounds [201 x %union.tcu], [201 x %union.tcu]* %d_tcs9, i32 0, i64 27
  %str11 = bitcast %union.tcu* %arrayidx10 to i8**
  %9 = load i8*, i8** %str11, align 8
  %10 = load %struct.display*, %struct.display** @display, align 8
  %d_tcs12 = getelementptr inbounds %struct.display, %struct.display* %10, i32 0, i32 83
  %arrayidx13 = getelementptr inbounds [201 x %union.tcu], [201 x %union.tcu]* %d_tcs12, i32 0, i64 28
  %str14 = bitcast %union.tcu* %arrayidx13 to i8**
  %11 = load i8*, i8** %str14, align 8
  %call = call i32 @strcmp(i8* %9, i8* %11) #9
  %tobool15 = icmp ne i32 %call, 0
  br i1 %tobool15, label %if.then, label %if.end

if.then:                                          ; preds = %land.lhs.true
  %12 = load %struct.display*, %struct.display** @display, align 8
  %d_tcs16 = getelementptr inbounds %struct.display, %struct.display* %12, i32 0, i32 83
  %arrayidx17 = getelementptr inbounds [201 x %union.tcu], [201 x %union.tcu]* %d_tcs16, i32 0, i64 28
  %str18 = bitcast %union.tcu* %arrayidx17 to i8**
  %13 = load i8*, i8** %str18, align 8
  call void @AddCStr(i8* %13)
  br label %if.end

if.end:                                           ; preds = %if.then, %land.lhs.true, %do.end.2
  %14 = load %struct.display*, %struct.display** @display, align 8
  %d_insert = getelementptr inbounds %struct.display, %struct.display* %14, i32 0, i32 31
  store i32 0, i32* %d_insert, align 4
  %15 = load %struct.display*, %struct.display** @display, align 8
  %d_tcs19 = getelementptr inbounds %struct.display, %struct.display* %15, i32 0, i32 83
  %arrayidx20 = getelementptr inbounds [201 x %union.tcu], [201 x %union.tcu]* %d_tcs19, i32 0, i64 69
  %str21 = bitcast %union.tcu* %arrayidx20 to i8**
  %16 = load i8*, i8** %str21, align 8
  call void @AddCStr(i8* %16)
  %17 = load %struct.display*, %struct.display** @display, align 8
  %d_tcs22 = getelementptr inbounds %struct.display, %struct.display* %17, i32 0, i32 83
  %arrayidx23 = getelementptr inbounds [201 x %union.tcu], [201 x %union.tcu]* %d_tcs22, i32 0, i64 71
  %str24 = bitcast %union.tcu* %arrayidx23 to i8**
  %18 = load i8*, i8** %str24, align 8
  call void @AddCStr(i8* %18)
  %19 = load %struct.display*, %struct.display** @display, align 8
  %d_keypad = getelementptr inbounds %struct.display, %struct.display* %19, i32 0, i32 32
  store i32 0, i32* %d_keypad, align 4
  %20 = load %struct.display*, %struct.display** @display, align 8
  %d_cursorkeys = getelementptr inbounds %struct.display, %struct.display* %20, i32 0, i32 33
  store i32 0, i32* %d_cursorkeys, align 4
  %21 = load %struct.display*, %struct.display** @display, align 8
  %d_tcs25 = getelementptr inbounds %struct.display, %struct.display* %21, i32 0, i32 83
  %arrayidx26 = getelementptr inbounds [201 x %union.tcu], [201 x %union.tcu]* %d_tcs25, i32 0, i64 55
  %str27 = bitcast %union.tcu* %arrayidx26 to i8**
  %22 = load i8*, i8** %str27, align 8
  call void @AddCStr(i8* %22)
  %23 = load %struct.display*, %struct.display** @display, align 8
  %d_tcs28 = getelementptr inbounds %struct.display, %struct.display* %23, i32 0, i32 83
  %arrayidx29 = getelementptr inbounds [201 x %union.tcu], [201 x %union.tcu]* %d_tcs28, i32 0, i64 104
  %str30 = bitcast %union.tcu* %arrayidx29 to i8**
  %24 = load i8*, i8** %str30, align 8
  call void @AddCStr(i8* %24)
  %25 = load %struct.display*, %struct.display** @display, align 8
  %d_tcs31 = getelementptr inbounds %struct.display, %struct.display* %25, i32 0, i32 83
  %arrayidx32 = getelementptr inbounds [201 x %union.tcu], [201 x %union.tcu]* %d_tcs31, i32 0, i64 99
  %str33 = bitcast %union.tcu* %arrayidx32 to i8**
  %26 = load i8*, i8** %str33, align 8
  call void @AddCStr(i8* %26)
  %27 = load %struct.display*, %struct.display** @display, align 8
  %d_rend = getelementptr inbounds %struct.display, %struct.display* %27, i32 0, i32 24
  %28 = bitcast %struct.mchar* %d_rend to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %28, i8* getelementptr inbounds (%struct.mchar, %struct.mchar* @mchar_null, i32 0, i32 0), i64 6, i32 1, i1 false)
  %29 = load %struct.display*, %struct.display** @display, align 8
  %d_atyp = getelementptr inbounds %struct.display, %struct.display* %29, i32 0, i32 26
  store i8 0, i8* %d_atyp, align 1
  %30 = load i32, i32* %adapt.addr, align 4
  %cmp = icmp eq i32 %30, 0
  br i1 %cmp, label %if.then.34, label %if.end.36

if.then.34:                                       ; preds = %if.end
  %31 = load %struct.display*, %struct.display** @display, align 8
  %d_defwidth = getelementptr inbounds %struct.display, %struct.display* %31, i32 0, i32 18
  %32 = load i32, i32* %d_defwidth, align 4
  %33 = load %struct.display*, %struct.display** @display, align 8
  %d_defheight = getelementptr inbounds %struct.display, %struct.display* %33, i32 0, i32 19
  %34 = load i32, i32* %d_defheight, align 4
  %call35 = call i32 @ResizeDisplay(i32 %32, i32 %34)
  br label %if.end.36

if.end.36:                                        ; preds = %if.then.34, %if.end
  %35 = load %struct.display*, %struct.display** @display, align 8
  %d_height = getelementptr inbounds %struct.display, %struct.display* %35, i32 0, i32 17
  %36 = load i32, i32* %d_height, align 4
  %sub = sub nsw i32 %36, 1
  call void @ChangeScrollRegion(i32 0, i32 %sub)
  %37 = load %struct.display*, %struct.display** @display, align 8
  %d_y = getelementptr inbounds %struct.display, %struct.display* %37, i32 0, i32 23
  store i32 0, i32* %d_y, align 4
  %38 = load %struct.display*, %struct.display** @display, align 8
  %d_x = getelementptr inbounds %struct.display, %struct.display* %38, i32 0, i32 22
  store i32 0, i32* %d_x, align 4
  call void @Flush(i32 3)
  call void @ClearAll()
  br label %do.body.37

do.body.37:                                       ; preds = %if.end.36
  br label %do.end.38

do.end.38:                                        ; preds = %do.body.37
  %39 = load i32, i32* %adapt.addr, align 4
  %tobool39 = icmp ne i32 %39, 0
  %cond = select i1 %tobool39, i32 2, i32 0
  call void @CheckScreenSize(i32 %cond)
  ret void
}

; Function Attrs: nounwind uwtable
define void @AddCStr(i8* %s) #0 {
entry:
  %s.addr = alloca i8*, align 8
  store i8* %s, i8** %s.addr, align 8
  %0 = load %struct.display*, %struct.display** @display, align 8
  %tobool = icmp ne %struct.display* %0, null
  br i1 %tobool, label %land.lhs.true, label %if.end

land.lhs.true:                                    ; preds = %entry
  %1 = load i8*, i8** %s.addr, align 8
  %tobool1 = icmp ne i8* %1, null
  br i1 %tobool1, label %land.lhs.true.2, label %if.end

land.lhs.true.2:                                  ; preds = %land.lhs.true
  %2 = load i8*, i8** %s.addr, align 8
  %3 = load i8, i8* %2, align 1
  %conv = sext i8 %3 to i32
  %tobool3 = icmp ne i32 %conv, 0
  br i1 %tobool3, label %if.then, label %if.end

if.then:                                          ; preds = %land.lhs.true.2
  %4 = load %struct.display*, %struct.display** @display, align 8
  %d_dospeed = getelementptr inbounds %struct.display, %struct.display* %4, i32 0, i32 87
  %5 = load i16, i16* %d_dospeed, align 2
  store i16 %5, i16* @ospeed, align 2
  %6 = load i8*, i8** %s.addr, align 8
  call void @tputs(i8* %6, i32 1, i32 (i32)* @DoAddChar)
  br label %if.end

if.end:                                           ; preds = %if.then, %land.lhs.true.2, %land.lhs.true, %entry
  ret void
}

; Function Attrs: nounwind readonly
declare i32 @strcmp(i8*, i8*) #4

; Function Attrs: nounwind uwtable
define i32 @ResizeDisplay(i32 %wi, i32 %he) #0 {
entry:
  %retval = alloca i32, align 4
  %wi.addr = alloca i32, align 4
  %he.addr = alloca i32, align 4
  store i32 %wi, i32* %wi.addr, align 4
  store i32 %he, i32* %he.addr, align 4
  br label %do.body

do.body:                                          ; preds = %entry
  br label %do.end

do.end:                                           ; preds = %do.body
  br label %do.body.1

do.body.1:                                        ; preds = %do.end
  br label %do.end.2

do.end.2:                                         ; preds = %do.body.1
  %0 = load %struct.display*, %struct.display** @display, align 8
  %d_width = getelementptr inbounds %struct.display, %struct.display* %0, i32 0, i32 16
  %1 = load i32, i32* %d_width, align 4
  %2 = load i32, i32* %wi.addr, align 4
  %cmp = icmp eq i32 %1, %2
  br i1 %cmp, label %land.lhs.true, label %if.end

land.lhs.true:                                    ; preds = %do.end.2
  %3 = load %struct.display*, %struct.display** @display, align 8
  %d_height = getelementptr inbounds %struct.display, %struct.display* %3, i32 0, i32 17
  %4 = load i32, i32* %d_height, align 4
  %5 = load i32, i32* %he.addr, align 4
  %cmp3 = icmp eq i32 %4, %5
  br i1 %cmp3, label %if.then, label %if.end

if.then:                                          ; preds = %land.lhs.true
  br label %do.body.4

do.body.4:                                        ; preds = %if.then
  br label %do.end.5

do.end.5:                                         ; preds = %do.body.4
  store i32 0, i32* %retval
  br label %return

if.end:                                           ; preds = %land.lhs.true, %do.end.2
  %6 = load %struct.display*, %struct.display** @display, align 8
  %d_width6 = getelementptr inbounds %struct.display, %struct.display* %6, i32 0, i32 16
  %7 = load i32, i32* %d_width6, align 4
  %8 = load i32, i32* %wi.addr, align 4
  %cmp7 = icmp ne i32 %7, %8
  br i1 %cmp7, label %land.lhs.true.8, label %if.end.34

land.lhs.true.8:                                  ; preds = %if.end
  %9 = load %struct.display*, %struct.display** @display, align 8
  %d_height9 = getelementptr inbounds %struct.display, %struct.display* %9, i32 0, i32 17
  %10 = load i32, i32* %d_height9, align 4
  %11 = load i32, i32* %he.addr, align 4
  %cmp10 = icmp eq i32 %10, %11
  br i1 %cmp10, label %land.lhs.true.11, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %land.lhs.true.8
  %12 = load %struct.display*, %struct.display** @display, align 8
  %d_tcs = getelementptr inbounds %struct.display, %struct.display* %12, i32 0, i32 83
  %arrayidx = getelementptr inbounds [201 x %union.tcu], [201 x %union.tcu]* %d_tcs, i32 0, i64 44
  %str = bitcast %union.tcu* %arrayidx to i8**
  %13 = load i8*, i8** %str, align 8
  %tobool = icmp ne i8* %13, null
  br i1 %tobool, label %if.end.34, label %land.lhs.true.11

land.lhs.true.11:                                 ; preds = %lor.lhs.false, %land.lhs.true.8
  %14 = load %struct.display*, %struct.display** @display, align 8
  %d_tcs12 = getelementptr inbounds %struct.display, %struct.display* %14, i32 0, i32 83
  %arrayidx13 = getelementptr inbounds [201 x %union.tcu], [201 x %union.tcu]* %d_tcs12, i32 0, i64 45
  %str14 = bitcast %union.tcu* %arrayidx13 to i8**
  %15 = load i8*, i8** %str14, align 8
  %tobool15 = icmp ne i8* %15, null
  br i1 %tobool15, label %land.lhs.true.16, label %if.end.34

land.lhs.true.16:                                 ; preds = %land.lhs.true.11
  %16 = load i32, i32* %wi.addr, align 4
  %17 = load i32, i32* @Z0width, align 4
  %cmp17 = icmp eq i32 %16, %17
  br i1 %cmp17, label %if.then.20, label %lor.lhs.false.18

lor.lhs.false.18:                                 ; preds = %land.lhs.true.16
  %18 = load i32, i32* %wi.addr, align 4
  %19 = load i32, i32* @Z1width, align 4
  %cmp19 = icmp eq i32 %18, %19
  br i1 %cmp19, label %if.then.20, label %if.end.34

if.then.20:                                       ; preds = %lor.lhs.false.18, %land.lhs.true.16
  br label %do.body.21

do.body.21:                                       ; preds = %if.then.20
  br label %do.end.22

do.end.22:                                        ; preds = %do.body.21
  %20 = load i32, i32* %wi.addr, align 4
  %21 = load i32, i32* @Z0width, align 4
  %cmp23 = icmp eq i32 %20, %21
  br i1 %cmp23, label %cond.true, label %cond.false

cond.true:                                        ; preds = %do.end.22
  %22 = load %struct.display*, %struct.display** @display, align 8
  %d_tcs24 = getelementptr inbounds %struct.display, %struct.display* %22, i32 0, i32 83
  %arrayidx25 = getelementptr inbounds [201 x %union.tcu], [201 x %union.tcu]* %d_tcs24, i32 0, i64 45
  %str26 = bitcast %union.tcu* %arrayidx25 to i8**
  %23 = load i8*, i8** %str26, align 8
  br label %cond.end

cond.false:                                       ; preds = %do.end.22
  %24 = load %struct.display*, %struct.display** @display, align 8
  %d_tcs27 = getelementptr inbounds %struct.display, %struct.display* %24, i32 0, i32 83
  %arrayidx28 = getelementptr inbounds [201 x %union.tcu], [201 x %union.tcu]* %d_tcs27, i32 0, i64 46
  %str29 = bitcast %union.tcu* %arrayidx28 to i8**
  %25 = load i8*, i8** %str29, align 8
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i8* [ %23, %cond.true ], [ %25, %cond.false ]
  call void @AddCStr(i8* %cond)
  %26 = load i32, i32* %wi.addr, align 4
  %27 = load %struct.display*, %struct.display** @display, align 8
  %d_height30 = getelementptr inbounds %struct.display, %struct.display* %27, i32 0, i32 17
  %28 = load i32, i32* %d_height30, align 4
  call void @ChangeScreenSize(i32 %26, i32 %28, i32 0)
  %29 = load i32, i32* %he.addr, align 4
  %30 = load %struct.display*, %struct.display** @display, align 8
  %d_height31 = getelementptr inbounds %struct.display, %struct.display* %30, i32 0, i32 17
  %31 = load i32, i32* %d_height31, align 4
  %cmp32 = icmp eq i32 %29, %31
  %cond33 = select i1 %cmp32, i32 0, i32 -1
  store i32 %cond33, i32* %retval
  br label %return

if.end.34:                                        ; preds = %lor.lhs.false.18, %land.lhs.true.11, %lor.lhs.false, %if.end
  %32 = load %struct.display*, %struct.display** @display, align 8
  %d_tcs35 = getelementptr inbounds %struct.display, %struct.display* %32, i32 0, i32 83
  %arrayidx36 = getelementptr inbounds [201 x %union.tcu], [201 x %union.tcu]* %d_tcs35, i32 0, i64 44
  %str37 = bitcast %union.tcu* %arrayidx36 to i8**
  %33 = load i8*, i8** %str37, align 8
  %tobool38 = icmp ne i8* %33, null
  br i1 %tobool38, label %if.then.39, label %if.end.45

if.then.39:                                       ; preds = %if.end.34
  br label %do.body.40

do.body.40:                                       ; preds = %if.then.39
  br label %do.end.41

do.end.41:                                        ; preds = %do.body.40
  %34 = load %struct.display*, %struct.display** @display, align 8
  %d_tcs42 = getelementptr inbounds %struct.display, %struct.display* %34, i32 0, i32 83
  %arrayidx43 = getelementptr inbounds [201 x %union.tcu], [201 x %union.tcu]* %d_tcs42, i32 0, i64 44
  %str44 = bitcast %union.tcu* %arrayidx43 to i8**
  %35 = load i8*, i8** %str44, align 8
  %36 = load i32, i32* %wi.addr, align 4
  %37 = load i32, i32* %he.addr, align 4
  %call = call i8* @tgoto(i8* %35, i32 %36, i32 %37)
  call void @AddCStr(i8* %call)
  %38 = load i32, i32* %wi.addr, align 4
  %39 = load i32, i32* %he.addr, align 4
  call void @ChangeScreenSize(i32 %38, i32 %39, i32 0)
  store i32 0, i32* %retval
  br label %return

if.end.45:                                        ; preds = %if.end.34
  store i32 -1, i32* %retval
  br label %return

return:                                           ; preds = %if.end.45, %do.end.41, %cond.end, %do.end.5
  %40 = load i32, i32* %retval
  ret i32 %40
}

; Function Attrs: nounwind uwtable
define void @ChangeScrollRegion(i32 %newtop, i32 %newbot) #0 {
entry:
  %newtop.addr = alloca i32, align 4
  %newbot.addr = alloca i32, align 4
  store i32 %newtop, i32* %newtop.addr, align 4
  store i32 %newbot, i32* %newbot.addr, align 4
  %0 = load %struct.display*, %struct.display** @display, align 8
  %cmp = icmp eq %struct.display* %0, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  br label %return

if.end:                                           ; preds = %entry
  %1 = load i32, i32* %newtop.addr, align 4
  %2 = load i32, i32* %newbot.addr, align 4
  %cmp1 = icmp eq i32 %1, %2
  br i1 %cmp1, label %if.then.2, label %if.end.3

if.then.2:                                        ; preds = %if.end
  br label %return

if.end.3:                                         ; preds = %if.end
  %3 = load i32, i32* %newtop.addr, align 4
  %cmp4 = icmp eq i32 %3, -1
  br i1 %cmp4, label %if.then.5, label %if.end.6

if.then.5:                                        ; preds = %if.end.3
  store i32 0, i32* %newtop.addr, align 4
  br label %if.end.6

if.end.6:                                         ; preds = %if.then.5, %if.end.3
  %4 = load i32, i32* %newbot.addr, align 4
  %cmp7 = icmp eq i32 %4, -1
  br i1 %cmp7, label %if.then.8, label %if.end.9

if.then.8:                                        ; preds = %if.end.6
  %5 = load %struct.display*, %struct.display** @display, align 8
  %d_height = getelementptr inbounds %struct.display, %struct.display* %5, i32 0, i32 17
  %6 = load i32, i32* %d_height, align 4
  %sub = sub nsw i32 %6, 1
  store i32 %sub, i32* %newbot.addr, align 4
  br label %if.end.9

if.end.9:                                         ; preds = %if.then.8, %if.end.6
  %7 = load %struct.display*, %struct.display** @display, align 8
  %d_tcs = getelementptr inbounds %struct.display, %struct.display* %7, i32 0, i32 83
  %arrayidx = getelementptr inbounds [201 x %union.tcu], [201 x %union.tcu]* %d_tcs, i32 0, i64 18
  %str = bitcast %union.tcu* %arrayidx to i8**
  %8 = load i8*, i8** %str, align 8
  %cmp10 = icmp eq i8* %8, null
  br i1 %cmp10, label %if.then.11, label %if.end.14

if.then.11:                                       ; preds = %if.end.9
  %9 = load %struct.display*, %struct.display** @display, align 8
  %d_top = getelementptr inbounds %struct.display, %struct.display* %9, i32 0, i32 20
  store i32 0, i32* %d_top, align 4
  %10 = load %struct.display*, %struct.display** @display, align 8
  %d_height12 = getelementptr inbounds %struct.display, %struct.display* %10, i32 0, i32 17
  %11 = load i32, i32* %d_height12, align 4
  %sub13 = sub nsw i32 %11, 1
  %12 = load %struct.display*, %struct.display** @display, align 8
  %d_bot = getelementptr inbounds %struct.display, %struct.display* %12, i32 0, i32 21
  store i32 %sub13, i32* %d_bot, align 4
  br label %return

if.end.14:                                        ; preds = %if.end.9
  %13 = load %struct.display*, %struct.display** @display, align 8
  %d_top15 = getelementptr inbounds %struct.display, %struct.display* %13, i32 0, i32 20
  %14 = load i32, i32* %d_top15, align 4
  %15 = load i32, i32* %newtop.addr, align 4
  %cmp16 = icmp eq i32 %14, %15
  br i1 %cmp16, label %land.lhs.true, label %if.end.20

land.lhs.true:                                    ; preds = %if.end.14
  %16 = load %struct.display*, %struct.display** @display, align 8
  %d_bot17 = getelementptr inbounds %struct.display, %struct.display* %16, i32 0, i32 21
  %17 = load i32, i32* %d_bot17, align 4
  %18 = load i32, i32* %newbot.addr, align 4
  %cmp18 = icmp eq i32 %17, %18
  br i1 %cmp18, label %if.then.19, label %if.end.20

if.then.19:                                       ; preds = %land.lhs.true
  br label %return

if.end.20:                                        ; preds = %land.lhs.true, %if.end.14
  br label %do.body

do.body:                                          ; preds = %if.end.20
  br label %do.end

do.end:                                           ; preds = %do.body
  %19 = load %struct.display*, %struct.display** @display, align 8
  %d_tcs21 = getelementptr inbounds %struct.display, %struct.display* %19, i32 0, i32 83
  %arrayidx22 = getelementptr inbounds [201 x %union.tcu], [201 x %union.tcu]* %d_tcs21, i32 0, i64 18
  %str23 = bitcast %union.tcu* %arrayidx22 to i8**
  %20 = load i8*, i8** %str23, align 8
  %21 = load i32, i32* %newbot.addr, align 4
  %22 = load i32, i32* %newtop.addr, align 4
  %call = call i8* @tgoto(i8* %20, i32 %21, i32 %22)
  call void @AddCStr(i8* %call)
  %23 = load i32, i32* %newtop.addr, align 4
  %24 = load %struct.display*, %struct.display** @display, align 8
  %d_top24 = getelementptr inbounds %struct.display, %struct.display* %24, i32 0, i32 20
  store i32 %23, i32* %d_top24, align 4
  %25 = load i32, i32* %newbot.addr, align 4
  %26 = load %struct.display*, %struct.display** @display, align 8
  %d_bot25 = getelementptr inbounds %struct.display, %struct.display* %26, i32 0, i32 21
  store i32 %25, i32* %d_bot25, align 4
  %27 = load %struct.display*, %struct.display** @display, align 8
  %d_x = getelementptr inbounds %struct.display, %struct.display* %27, i32 0, i32 22
  store i32 -1, i32* %d_x, align 4
  %28 = load %struct.display*, %struct.display** @display, align 8
  %d_y = getelementptr inbounds %struct.display, %struct.display* %28, i32 0, i32 23
  store i32 -1, i32* %d_y, align 4
  br label %return

return:                                           ; preds = %do.end, %if.then.19, %if.then.11, %if.then.2, %if.then
  ret void
}

; Function Attrs: nounwind uwtable
define void @ClearAll() #0 {
entry:
  br label %do.body

do.body:                                          ; preds = %entry
  br label %do.end

do.end:                                           ; preds = %do.body
  %0 = load %struct.display*, %struct.display** @display, align 8
  %d_width = getelementptr inbounds %struct.display, %struct.display* %0, i32 0, i32 16
  %1 = load i32, i32* %d_width, align 4
  %sub = sub nsw i32 %1, 1
  %2 = load %struct.display*, %struct.display** @display, align 8
  %d_width1 = getelementptr inbounds %struct.display, %struct.display* %2, i32 0, i32 16
  %3 = load i32, i32* %d_width1, align 4
  %sub2 = sub nsw i32 %3, 1
  %4 = load %struct.display*, %struct.display** @display, align 8
  %d_height = getelementptr inbounds %struct.display, %struct.display* %4, i32 0, i32 17
  %5 = load i32, i32* %d_height, align 4
  %sub3 = sub nsw i32 %5, 1
  call void @ClearArea(i32 0, i32 0, i32 0, i32 %sub, i32 %sub2, i32 %sub3, i32 0, i32 0)
  ret void
}

declare void @CheckScreenSize(i32) #1

; Function Attrs: nounwind uwtable
define void @FinitTerm() #0 {
entry:
  br label %do.body

do.body:                                          ; preds = %entry
  br label %do.end

do.end:                                           ; preds = %do.body
  call void @KillBlanker()
  %0 = load %struct.display*, %struct.display** @display, align 8
  %d_tcinited = getelementptr inbounds %struct.display, %struct.display* %0, i32 0, i32 15
  %1 = load i8, i8* %d_tcinited, align 1
  %tobool = icmp ne i8 %1, 0
  br i1 %tobool, label %if.then, label %if.end.28

if.then:                                          ; preds = %do.end
  %2 = load %struct.display*, %struct.display** @display, align 8
  %d_defwidth = getelementptr inbounds %struct.display, %struct.display* %2, i32 0, i32 18
  %3 = load i32, i32* %d_defwidth, align 4
  %4 = load %struct.display*, %struct.display** @display, align 8
  %d_defheight = getelementptr inbounds %struct.display, %struct.display* %4, i32 0, i32 19
  %5 = load i32, i32* %d_defheight, align 4
  %call = call i32 @ResizeDisplay(i32 %3, i32 %5)
  call void @InsertMode(i32 0)
  %6 = load %struct.display*, %struct.display** @display, align 8
  %d_height = getelementptr inbounds %struct.display, %struct.display* %6, i32 0, i32 17
  %7 = load i32, i32* %d_height, align 4
  %sub = sub nsw i32 %7, 1
  call void @ChangeScrollRegion(i32 0, i32 %sub)
  call void @KeypadMode(i32 0)
  call void @CursorkeysMode(i32 0)
  call void @CursorVisibility(i32 0)
  %8 = load %struct.display*, %struct.display** @display, align 8
  %d_mousetrack = getelementptr inbounds %struct.display, %struct.display* %8, i32 0, i32 40
  %9 = load i32, i32* %d_mousetrack, align 4
  %tobool1 = icmp ne i32 %9, 0
  br i1 %tobool1, label %if.then.2, label %if.end

if.then.2:                                        ; preds = %if.then
  %10 = load %struct.display*, %struct.display** @display, align 8
  %d_mousetrack3 = getelementptr inbounds %struct.display, %struct.display* %10, i32 0, i32 40
  store i32 0, i32* %d_mousetrack3, align 4
  br label %if.end

if.end:                                           ; preds = %if.then.2, %if.then
  call void @MouseMode(i32 0)
  call void @SetRendition(%struct.mchar* @mchar_null)
  call void @SetFlow(i32 1)
  %11 = load %struct.display*, %struct.display** @display, align 8
  %d_tcs = getelementptr inbounds %struct.display, %struct.display* %11, i32 0, i32 83
  %arrayidx = getelementptr inbounds [201 x %union.tcu], [201 x %union.tcu]* %d_tcs, i32 0, i64 70
  %str = bitcast %union.tcu* %arrayidx to i8**
  %12 = load i8*, i8** %str, align 8
  call void @AddCStr(i8* %12)
  %13 = load %struct.display*, %struct.display** @display, align 8
  %d_tcs4 = getelementptr inbounds %struct.display, %struct.display* %13, i32 0, i32 83
  %arrayidx5 = getelementptr inbounds [201 x %union.tcu], [201 x %union.tcu]* %d_tcs4, i32 0, i64 72
  %str6 = bitcast %union.tcu* %arrayidx5 to i8**
  %14 = load i8*, i8** %str6, align 8
  call void @AddCStr(i8* %14)
  %15 = load %struct.display*, %struct.display** @display, align 8
  %d_hstatus = getelementptr inbounds %struct.display, %struct.display* %15, i32 0, i32 37
  %16 = load i32, i32* %d_hstatus, align 4
  %tobool7 = icmp ne i32 %16, 0
  br i1 %tobool7, label %if.then.8, label %if.end.9

if.then.8:                                        ; preds = %if.end
  call void @ShowHStatus(i8* null)
  br label %if.end.9

if.end.9:                                         ; preds = %if.then.8, %if.end
  %17 = load %struct.display*, %struct.display** @display, align 8
  %d_y = getelementptr inbounds %struct.display, %struct.display* %17, i32 0, i32 23
  store i32 -1, i32* %d_y, align 4
  %18 = load %struct.display*, %struct.display** @display, align 8
  %d_x = getelementptr inbounds %struct.display, %struct.display* %18, i32 0, i32 22
  store i32 -1, i32* %d_x, align 4
  %19 = load %struct.display*, %struct.display** @display, align 8
  %d_height10 = getelementptr inbounds %struct.display, %struct.display* %19, i32 0, i32 17
  %20 = load i32, i32* %d_height10, align 4
  %sub11 = sub nsw i32 %20, 1
  call void @GotoPos(i32 0, i32 %sub11)
  br label %do.body.12

do.body.12:                                       ; preds = %if.end.9
  %21 = load %struct.display*, %struct.display** @display, align 8
  %d_obuffree = getelementptr inbounds %struct.display, %struct.display* %21, i32 0, i32 72
  %22 = load i32, i32* %d_obuffree, align 4
  %dec = add nsw i32 %22, -1
  store i32 %dec, i32* %d_obuffree, align 4
  %cmp = icmp sle i32 %dec, 0
  br i1 %cmp, label %if.then.13, label %if.end.14

if.then.13:                                       ; preds = %do.body.12
  call void @Resize_obuf()
  br label %if.end.14

if.end.14:                                        ; preds = %if.then.13, %do.body.12
  %23 = load %struct.display*, %struct.display** @display, align 8
  %d_obufp = getelementptr inbounds %struct.display, %struct.display* %23, i32 0, i32 71
  %24 = load i8*, i8** %d_obufp, align 8
  %incdec.ptr = getelementptr inbounds i8, i8* %24, i32 1
  store i8* %incdec.ptr, i8** %d_obufp, align 8
  store i8 13, i8* %24, align 1
  br label %do.end.15

do.end.15:                                        ; preds = %if.end.14
  br label %do.body.16

do.body.16:                                       ; preds = %do.end.15
  %25 = load %struct.display*, %struct.display** @display, align 8
  %d_obuffree17 = getelementptr inbounds %struct.display, %struct.display* %25, i32 0, i32 72
  %26 = load i32, i32* %d_obuffree17, align 4
  %dec18 = add nsw i32 %26, -1
  store i32 %dec18, i32* %d_obuffree17, align 4
  %cmp19 = icmp sle i32 %dec18, 0
  br i1 %cmp19, label %if.then.20, label %if.end.21

if.then.20:                                       ; preds = %do.body.16
  call void @Resize_obuf()
  br label %if.end.21

if.end.21:                                        ; preds = %if.then.20, %do.body.16
  %27 = load %struct.display*, %struct.display** @display, align 8
  %d_obufp22 = getelementptr inbounds %struct.display, %struct.display* %27, i32 0, i32 71
  %28 = load i8*, i8** %d_obufp22, align 8
  %incdec.ptr23 = getelementptr inbounds i8, i8* %28, i32 1
  store i8* %incdec.ptr23, i8** %d_obufp22, align 8
  store i8 10, i8* %28, align 1
  br label %do.end.24

do.end.24:                                        ; preds = %if.end.21
  %29 = load %struct.display*, %struct.display** @display, align 8
  %d_tcs25 = getelementptr inbounds %struct.display, %struct.display* %29, i32 0, i32 83
  %arrayidx26 = getelementptr inbounds [201 x %union.tcu], [201 x %union.tcu]* %d_tcs25, i32 0, i64 41
  %str27 = bitcast %union.tcu* %arrayidx26 to i8**
  %30 = load i8*, i8** %str27, align 8
  call void @AddCStr(i8* %30)
  br label %if.end.28

if.end.28:                                        ; preds = %do.end.24, %do.end
  call void @Flush(i32 3)
  ret void
}

; Function Attrs: nounwind uwtable
define void @KeypadMode(i32 %on) #0 {
entry:
  %on.addr = alloca i32, align 4
  store i32 %on, i32* %on.addr, align 4
  %0 = load %struct.display*, %struct.display** @display, align 8
  %tobool = icmp ne %struct.display* %0, null
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %1 = load i32, i32* %on.addr, align 4
  %2 = load %struct.display*, %struct.display** @display, align 8
  %d_keypad = getelementptr inbounds %struct.display, %struct.display* %2, i32 0, i32 32
  store i32 %1, i32* %d_keypad, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  ret void
}

; Function Attrs: nounwind uwtable
define void @CursorkeysMode(i32 %on) #0 {
entry:
  %on.addr = alloca i32, align 4
  store i32 %on, i32* %on.addr, align 4
  %0 = load %struct.display*, %struct.display** @display, align 8
  %tobool = icmp ne %struct.display* %0, null
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %1 = load i32, i32* %on.addr, align 4
  %2 = load %struct.display*, %struct.display** @display, align 8
  %d_cursorkeys = getelementptr inbounds %struct.display, %struct.display* %2, i32 0, i32 33
  store i32 %1, i32* %d_cursorkeys, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  ret void
}

; Function Attrs: nounwind uwtable
define void @CursorVisibility(i32 %v) #0 {
entry:
  %v.addr = alloca i32, align 4
  store i32 %v, i32* %v.addr, align 4
  %0 = load %struct.display*, %struct.display** @display, align 8
  %tobool = icmp ne %struct.display* %0, null
  br i1 %tobool, label %land.lhs.true, label %if.end.29

land.lhs.true:                                    ; preds = %entry
  %1 = load %struct.display*, %struct.display** @display, align 8
  %d_curvis = getelementptr inbounds %struct.display, %struct.display* %1, i32 0, i32 35
  %2 = load i32, i32* %d_curvis, align 4
  %3 = load i32, i32* %v.addr, align 4
  %cmp = icmp ne i32 %2, %3
  br i1 %cmp, label %if.then, label %if.end.29

if.then:                                          ; preds = %land.lhs.true
  %4 = load %struct.display*, %struct.display** @display, align 8
  %d_curvis1 = getelementptr inbounds %struct.display, %struct.display* %4, i32 0, i32 35
  %5 = load i32, i32* %d_curvis1, align 4
  %tobool2 = icmp ne i32 %5, 0
  br i1 %tobool2, label %if.then.3, label %if.end

if.then.3:                                        ; preds = %if.then
  %6 = load %struct.display*, %struct.display** @display, align 8
  %d_tcs = getelementptr inbounds %struct.display, %struct.display* %6, i32 0, i32 83
  %arrayidx = getelementptr inbounds [201 x %union.tcu], [201 x %union.tcu]* %d_tcs, i32 0, i64 82
  %str = bitcast %union.tcu* %arrayidx to i8**
  %7 = load i8*, i8** %str, align 8
  call void @AddCStr(i8* %7)
  br label %if.end

if.end:                                           ; preds = %if.then.3, %if.then
  %8 = load %struct.display*, %struct.display** @display, align 8
  %d_curvis4 = getelementptr inbounds %struct.display, %struct.display* %8, i32 0, i32 35
  store i32 0, i32* %d_curvis4, align 4
  %9 = load i32, i32* %v.addr, align 4
  %cmp5 = icmp eq i32 %9, -1
  br i1 %cmp5, label %land.lhs.true.6, label %if.else

land.lhs.true.6:                                  ; preds = %if.end
  %10 = load %struct.display*, %struct.display** @display, align 8
  %d_tcs7 = getelementptr inbounds %struct.display, %struct.display* %10, i32 0, i32 83
  %arrayidx8 = getelementptr inbounds [201 x %union.tcu], [201 x %union.tcu]* %d_tcs7, i32 0, i64 80
  %str9 = bitcast %union.tcu* %arrayidx8 to i8**
  %11 = load i8*, i8** %str9, align 8
  %tobool10 = icmp ne i8* %11, null
  br i1 %tobool10, label %if.then.11, label %if.else

if.then.11:                                       ; preds = %land.lhs.true.6
  %12 = load %struct.display*, %struct.display** @display, align 8
  %d_tcs12 = getelementptr inbounds %struct.display, %struct.display* %12, i32 0, i32 83
  %arrayidx13 = getelementptr inbounds [201 x %union.tcu], [201 x %union.tcu]* %d_tcs12, i32 0, i64 80
  %str14 = bitcast %union.tcu* %arrayidx13 to i8**
  %13 = load i8*, i8** %str14, align 8
  call void @AddCStr(i8* %13)
  br label %if.end.27

if.else:                                          ; preds = %land.lhs.true.6, %if.end
  %14 = load i32, i32* %v.addr, align 4
  %cmp15 = icmp eq i32 %14, 1
  br i1 %cmp15, label %land.lhs.true.16, label %if.else.25

land.lhs.true.16:                                 ; preds = %if.else
  %15 = load %struct.display*, %struct.display** @display, align 8
  %d_tcs17 = getelementptr inbounds %struct.display, %struct.display* %15, i32 0, i32 83
  %arrayidx18 = getelementptr inbounds [201 x %union.tcu], [201 x %union.tcu]* %d_tcs17, i32 0, i64 81
  %str19 = bitcast %union.tcu* %arrayidx18 to i8**
  %16 = load i8*, i8** %str19, align 8
  %tobool20 = icmp ne i8* %16, null
  br i1 %tobool20, label %if.then.21, label %if.else.25

if.then.21:                                       ; preds = %land.lhs.true.16
  %17 = load %struct.display*, %struct.display** @display, align 8
  %d_tcs22 = getelementptr inbounds %struct.display, %struct.display* %17, i32 0, i32 83
  %arrayidx23 = getelementptr inbounds [201 x %union.tcu], [201 x %union.tcu]* %d_tcs22, i32 0, i64 81
  %str24 = bitcast %union.tcu* %arrayidx23 to i8**
  %18 = load i8*, i8** %str24, align 8
  call void @AddCStr(i8* %18)
  br label %if.end.26

if.else.25:                                       ; preds = %land.lhs.true.16, %if.else
  br label %if.end.29

if.end.26:                                        ; preds = %if.then.21
  br label %if.end.27

if.end.27:                                        ; preds = %if.end.26, %if.then.11
  %19 = load i32, i32* %v.addr, align 4
  %20 = load %struct.display*, %struct.display** @display, align 8
  %d_curvis28 = getelementptr inbounds %struct.display, %struct.display* %20, i32 0, i32 35
  store i32 %19, i32* %d_curvis28, align 4
  br label %if.end.29

if.end.29:                                        ; preds = %if.else.25, %if.end.27, %land.lhs.true, %entry
  ret void
}

; Function Attrs: nounwind uwtable
define void @SetRendition(%struct.mchar* %mc) #0 {
entry:
  %mc.addr = alloca %struct.mchar*, align 8
  %i = alloca i32, align 4
  %a = alloca i32, align 4
  store %struct.mchar* %mc, %struct.mchar** %mc.addr, align 8
  %0 = load %struct.display*, %struct.display** @display, align 8
  %tobool = icmp ne %struct.display* %0, null
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  br label %if.end.162

if.end:                                           ; preds = %entry
  %1 = load i32, i32* @nattr2color, align 4
  %tobool1 = icmp ne i32 %1, 0
  br i1 %tobool1, label %land.lhs.true, label %if.end.65

land.lhs.true:                                    ; preds = %if.end
  %2 = load %struct.display*, %struct.display** @display, align 8
  %d_hascolor = getelementptr inbounds %struct.display, %struct.display* %2, i32 0, i32 86
  %3 = load i32, i32* %d_hascolor, align 4
  %tobool2 = icmp ne i32 %3, 0
  br i1 %tobool2, label %land.lhs.true.3, label %if.end.65

land.lhs.true.3:                                  ; preds = %land.lhs.true
  %4 = load %struct.mchar*, %struct.mchar** %mc.addr, align 8
  %attr = getelementptr inbounds %struct.mchar, %struct.mchar* %4, i32 0, i32 1
  %5 = load i8, i8* %attr, align 1
  %conv = zext i8 %5 to i32
  %6 = load i32, i32* @nattr2color, align 4
  %and = and i32 %conv, %6
  %cmp = icmp ne i32 %and, 0
  br i1 %cmp, label %if.then.5, label %if.end.65

if.then.5:                                        ; preds = %land.lhs.true.3
  %7 = load %struct.mchar*, %struct.mchar** %mc.addr, align 8
  %8 = bitcast %struct.mchar* %7 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* getelementptr inbounds (%struct.mchar, %struct.mchar* @SetRendition.mmc, i32 0, i32 0), i8* %8, i64 6, i32 1, i1 false)
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.then.5
  %9 = load i32, i32* %i, align 4
  %cmp6 = icmp slt i32 %9, 8
  br i1 %cmp6, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %10 = load i32, i32* %i, align 4
  %idxprom = sext i32 %10 to i64
  %arrayidx = getelementptr inbounds [8 x [4 x i32]], [8 x [4 x i32]]* @attr2color, i32 0, i64 %idxprom
  %arraydecay = getelementptr inbounds [4 x i32], [4 x i32]* %arrayidx, i32 0, i32 0
  %tobool8 = icmp ne i32* %arraydecay, null
  br i1 %tobool8, label %land.lhs.true.9, label %if.end.64

land.lhs.true.9:                                  ; preds = %for.body
  %11 = load %struct.mchar*, %struct.mchar** %mc.addr, align 8
  %attr10 = getelementptr inbounds %struct.mchar, %struct.mchar* %11, i32 0, i32 1
  %12 = load i8, i8* %attr10, align 1
  %conv11 = zext i8 %12 to i32
  %13 = load i32, i32* %i, align 4
  %shl = shl i32 1, %13
  %and12 = and i32 %conv11, %shl
  %cmp13 = icmp ne i32 %and12, 0
  br i1 %cmp13, label %if.then.15, label %if.end.64

if.then.15:                                       ; preds = %land.lhs.true.9
  %14 = load %struct.mchar*, %struct.mchar** %mc.addr, align 8
  %color = getelementptr inbounds %struct.mchar, %struct.mchar* %14, i32 0, i32 4
  %15 = load i8, i8* %color, align 1
  %conv16 = zext i8 %15 to i32
  %cmp17 = icmp eq i32 %conv16, 0
  br i1 %cmp17, label %land.lhs.true.19, label %if.else

land.lhs.true.19:                                 ; preds = %if.then.15
  %16 = load i32, i32* %i, align 4
  %idxprom20 = sext i32 %16 to i64
  %arrayidx21 = getelementptr inbounds [8 x [4 x i32]], [8 x [4 x i32]]* @attr2color, i32 0, i64 %idxprom20
  %arrayidx22 = getelementptr inbounds [4 x i32], [4 x i32]* %arrayidx21, i32 0, i64 3
  %17 = load i32, i32* %arrayidx22, align 4
  %tobool23 = icmp ne i32 %17, 0
  br i1 %tobool23, label %if.then.24, label %if.else

if.then.24:                                       ; preds = %land.lhs.true.19
  %18 = load i32, i32* %i, align 4
  %idxprom25 = sext i32 %18 to i64
  %arrayidx26 = getelementptr inbounds [8 x [4 x i32]], [8 x [4 x i32]]* @attr2color, i32 0, i64 %idxprom25
  %arrayidx27 = getelementptr inbounds [4 x i32], [4 x i32]* %arrayidx26, i32 0, i64 3
  %19 = load i32, i32* %arrayidx27, align 4
  call void @ApplyAttrColor(i32 %19, %struct.mchar* @SetRendition.mmc)
  br label %if.end.63

if.else:                                          ; preds = %land.lhs.true.19, %if.then.15
  %20 = load %struct.mchar*, %struct.mchar** %mc.addr, align 8
  %color28 = getelementptr inbounds %struct.mchar, %struct.mchar* %20, i32 0, i32 4
  %21 = load i8, i8* %color28, align 1
  %conv29 = zext i8 %21 to i32
  %and30 = and i32 %conv29, 15
  %cmp31 = icmp eq i32 %and30, 0
  br i1 %cmp31, label %land.lhs.true.33, label %if.else.42

land.lhs.true.33:                                 ; preds = %if.else
  %22 = load i32, i32* %i, align 4
  %idxprom34 = sext i32 %22 to i64
  %arrayidx35 = getelementptr inbounds [8 x [4 x i32]], [8 x [4 x i32]]* @attr2color, i32 0, i64 %idxprom34
  %arrayidx36 = getelementptr inbounds [4 x i32], [4 x i32]* %arrayidx35, i32 0, i64 2
  %23 = load i32, i32* %arrayidx36, align 4
  %tobool37 = icmp ne i32 %23, 0
  br i1 %tobool37, label %if.then.38, label %if.else.42

if.then.38:                                       ; preds = %land.lhs.true.33
  %24 = load i32, i32* %i, align 4
  %idxprom39 = sext i32 %24 to i64
  %arrayidx40 = getelementptr inbounds [8 x [4 x i32]], [8 x [4 x i32]]* @attr2color, i32 0, i64 %idxprom39
  %arrayidx41 = getelementptr inbounds [4 x i32], [4 x i32]* %arrayidx40, i32 0, i64 2
  %25 = load i32, i32* %arrayidx41, align 4
  call void @ApplyAttrColor(i32 %25, %struct.mchar* @SetRendition.mmc)
  br label %if.end.62

if.else.42:                                       ; preds = %land.lhs.true.33, %if.else
  %26 = load %struct.mchar*, %struct.mchar** %mc.addr, align 8
  %color43 = getelementptr inbounds %struct.mchar, %struct.mchar* %26, i32 0, i32 4
  %27 = load i8, i8* %color43, align 1
  %conv44 = zext i8 %27 to i32
  %and45 = and i32 %conv44, 240
  %cmp46 = icmp eq i32 %and45, 0
  br i1 %cmp46, label %land.lhs.true.48, label %if.else.57

land.lhs.true.48:                                 ; preds = %if.else.42
  %28 = load i32, i32* %i, align 4
  %idxprom49 = sext i32 %28 to i64
  %arrayidx50 = getelementptr inbounds [8 x [4 x i32]], [8 x [4 x i32]]* @attr2color, i32 0, i64 %idxprom49
  %arrayidx51 = getelementptr inbounds [4 x i32], [4 x i32]* %arrayidx50, i32 0, i64 1
  %29 = load i32, i32* %arrayidx51, align 4
  %tobool52 = icmp ne i32 %29, 0
  br i1 %tobool52, label %if.then.53, label %if.else.57

if.then.53:                                       ; preds = %land.lhs.true.48
  %30 = load i32, i32* %i, align 4
  %idxprom54 = sext i32 %30 to i64
  %arrayidx55 = getelementptr inbounds [8 x [4 x i32]], [8 x [4 x i32]]* @attr2color, i32 0, i64 %idxprom54
  %arrayidx56 = getelementptr inbounds [4 x i32], [4 x i32]* %arrayidx55, i32 0, i64 1
  %31 = load i32, i32* %arrayidx56, align 4
  call void @ApplyAttrColor(i32 %31, %struct.mchar* @SetRendition.mmc)
  br label %if.end.61

if.else.57:                                       ; preds = %land.lhs.true.48, %if.else.42
  %32 = load i32, i32* %i, align 4
  %idxprom58 = sext i32 %32 to i64
  %arrayidx59 = getelementptr inbounds [8 x [4 x i32]], [8 x [4 x i32]]* @attr2color, i32 0, i64 %idxprom58
  %arrayidx60 = getelementptr inbounds [4 x i32], [4 x i32]* %arrayidx59, i32 0, i64 0
  %33 = load i32, i32* %arrayidx60, align 4
  call void @ApplyAttrColor(i32 %33, %struct.mchar* @SetRendition.mmc)
  br label %if.end.61

if.end.61:                                        ; preds = %if.else.57, %if.then.53
  br label %if.end.62

if.end.62:                                        ; preds = %if.end.61, %if.then.38
  br label %if.end.63

if.end.63:                                        ; preds = %if.end.62, %if.then.24
  br label %if.end.64

if.end.64:                                        ; preds = %if.end.63, %land.lhs.true.9, %for.body
  br label %for.inc

for.inc:                                          ; preds = %if.end.64
  %34 = load i32, i32* %i, align 4
  %inc = add nsw i32 %34, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  store %struct.mchar* @SetRendition.mmc, %struct.mchar** %mc.addr, align 8
  br label %do.body

do.body:                                          ; preds = %for.end
  br label %do.end

do.end:                                           ; preds = %do.body
  br label %if.end.65

if.end.65:                                        ; preds = %do.end, %land.lhs.true.3, %land.lhs.true, %if.end
  %35 = load %struct.display*, %struct.display** @display, align 8
  %d_hascolor66 = getelementptr inbounds %struct.display, %struct.display* %35, i32 0, i32 86
  %36 = load i32, i32* %d_hascolor66, align 4
  %tobool67 = icmp ne i32 %36, 0
  br i1 %tobool67, label %land.lhs.true.68, label %if.else.107

land.lhs.true.68:                                 ; preds = %if.end.65
  %37 = load %struct.display*, %struct.display** @display, align 8
  %d_tcs = getelementptr inbounds %struct.display, %struct.display* %37, i32 0, i32 83
  %arrayidx69 = getelementptr inbounds [201 x %union.tcu], [201 x %union.tcu]* %d_tcs, i32 0, i64 68
  %flg = bitcast %union.tcu* %arrayidx69 to i32*
  %38 = load i32, i32* %flg, align 4
  %tobool70 = icmp ne i32 %38, 0
  br i1 %tobool70, label %land.lhs.true.71, label %if.else.107

land.lhs.true.71:                                 ; preds = %land.lhs.true.68
  %39 = load %struct.mchar*, %struct.mchar** %mc.addr, align 8
  %attr72 = getelementptr inbounds %struct.mchar, %struct.mchar* %39, i32 0, i32 1
  %40 = load i8, i8* %attr72, align 1
  %conv73 = zext i8 %40 to i32
  %and74 = and i32 %conv73, 192
  %tobool75 = icmp ne i32 %and74, 0
  br i1 %tobool75, label %if.then.76, label %if.else.107

if.then.76:                                       ; preds = %land.lhs.true.71
  %41 = load %struct.mchar*, %struct.mchar** %mc.addr, align 8
  %attr77 = getelementptr inbounds %struct.mchar, %struct.mchar* %41, i32 0, i32 1
  %42 = load i8, i8* %attr77, align 1
  %conv78 = zext i8 %42 to i32
  store i32 %conv78, i32* %a, align 4
  %43 = load %struct.mchar*, %struct.mchar** %mc.addr, align 8
  %attr79 = getelementptr inbounds %struct.mchar, %struct.mchar* %43, i32 0, i32 1
  %44 = load i8, i8* %attr79, align 1
  %conv80 = zext i8 %44 to i32
  %and81 = and i32 %conv80, 64
  %tobool82 = icmp ne i32 %and81, 0
  br i1 %tobool82, label %land.lhs.true.83, label %if.end.88

land.lhs.true.83:                                 ; preds = %if.then.76
  %45 = load %struct.display*, %struct.display** @display, align 8
  %d_tcs84 = getelementptr inbounds %struct.display, %struct.display* %45, i32 0, i32 83
  %arrayidx85 = getelementptr inbounds [201 x %union.tcu], [201 x %union.tcu]* %d_tcs84, i32 0, i64 49
  %str = bitcast %union.tcu* %arrayidx85 to i8**
  %46 = load i8*, i8** %str, align 8
  %tobool86 = icmp ne i8* %46, null
  br i1 %tobool86, label %if.then.87, label %if.end.88

if.then.87:                                       ; preds = %land.lhs.true.83
  %47 = load i32, i32* %a, align 4
  %or = or i32 %47, 4
  store i32 %or, i32* %a, align 4
  br label %if.end.88

if.end.88:                                        ; preds = %if.then.87, %land.lhs.true.83, %if.then.76
  %48 = load %struct.mchar*, %struct.mchar** %mc.addr, align 8
  %attr89 = getelementptr inbounds %struct.mchar, %struct.mchar* %48, i32 0, i32 1
  %49 = load i8, i8* %attr89, align 1
  %conv90 = zext i8 %49 to i32
  %and91 = and i32 %conv90, 128
  %tobool92 = icmp ne i32 %and91, 0
  br i1 %tobool92, label %land.lhs.true.93, label %if.end.100

land.lhs.true.93:                                 ; preds = %if.end.88
  %50 = load %struct.display*, %struct.display** @display, align 8
  %d_tcs94 = getelementptr inbounds %struct.display, %struct.display* %50, i32 0, i32 83
  %arrayidx95 = getelementptr inbounds [201 x %union.tcu], [201 x %union.tcu]* %d_tcs94, i32 0, i64 52
  %str96 = bitcast %union.tcu* %arrayidx95 to i8**
  %51 = load i8*, i8** %str96, align 8
  %tobool97 = icmp ne i8* %51, null
  br i1 %tobool97, label %if.then.98, label %if.end.100

if.then.98:                                       ; preds = %land.lhs.true.93
  %52 = load i32, i32* %a, align 4
  %or99 = or i32 %52, 32
  store i32 %or99, i32* %a, align 4
  br label %if.end.100

if.end.100:                                       ; preds = %if.then.98, %land.lhs.true.93, %if.end.88
  %53 = load %struct.display*, %struct.display** @display, align 8
  %d_rend = getelementptr inbounds %struct.display, %struct.display* %53, i32 0, i32 24
  %attr101 = getelementptr inbounds %struct.mchar, %struct.mchar* %d_rend, i32 0, i32 1
  %54 = load i8, i8* %attr101, align 1
  %conv102 = zext i8 %54 to i32
  %55 = load i32, i32* %a, align 4
  %cmp103 = icmp ne i32 %conv102, %55
  br i1 %cmp103, label %if.then.105, label %if.end.106

if.then.105:                                      ; preds = %if.end.100
  %56 = load i32, i32* %a, align 4
  call void @SetAttr(i32 %56)
  br label %if.end.106

if.end.106:                                       ; preds = %if.then.105, %if.end.100
  br label %if.end.119

if.else.107:                                      ; preds = %land.lhs.true.71, %land.lhs.true.68, %if.end.65
  %57 = load %struct.display*, %struct.display** @display, align 8
  %d_rend108 = getelementptr inbounds %struct.display, %struct.display* %57, i32 0, i32 24
  %attr109 = getelementptr inbounds %struct.mchar, %struct.mchar* %d_rend108, i32 0, i32 1
  %58 = load i8, i8* %attr109, align 1
  %conv110 = zext i8 %58 to i32
  %59 = load %struct.mchar*, %struct.mchar** %mc.addr, align 8
  %attr111 = getelementptr inbounds %struct.mchar, %struct.mchar* %59, i32 0, i32 1
  %60 = load i8, i8* %attr111, align 1
  %conv112 = zext i8 %60 to i32
  %cmp113 = icmp ne i32 %conv110, %conv112
  br i1 %cmp113, label %if.then.115, label %if.end.118

if.then.115:                                      ; preds = %if.else.107
  %61 = load %struct.mchar*, %struct.mchar** %mc.addr, align 8
  %attr116 = getelementptr inbounds %struct.mchar, %struct.mchar* %61, i32 0, i32 1
  %62 = load i8, i8* %attr116, align 1
  %conv117 = zext i8 %62 to i32
  call void @SetAttr(i32 %conv117)
  br label %if.end.118

if.end.118:                                       ; preds = %if.then.115, %if.else.107
  br label %if.end.119

if.end.119:                                       ; preds = %if.end.118, %if.end.106
  %63 = load %struct.display*, %struct.display** @display, align 8
  %d_rend120 = getelementptr inbounds %struct.display, %struct.display* %63, i32 0, i32 24
  %color121 = getelementptr inbounds %struct.mchar, %struct.mchar* %d_rend120, i32 0, i32 4
  %64 = load i8, i8* %color121, align 1
  %conv122 = zext i8 %64 to i32
  %65 = load %struct.mchar*, %struct.mchar** %mc.addr, align 8
  %color123 = getelementptr inbounds %struct.mchar, %struct.mchar* %65, i32 0, i32 4
  %66 = load i8, i8* %color123, align 1
  %conv124 = zext i8 %66 to i32
  %cmp125 = icmp ne i32 %conv122, %conv124
  br i1 %cmp125, label %if.then.128, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.end.119
  %67 = load %struct.display*, %struct.display** @display, align 8
  %d_col16change = getelementptr inbounds %struct.display, %struct.display* %67, i32 0, i32 25
  %68 = load i32, i32* %d_col16change, align 4
  %tobool127 = icmp ne i32 %68, 0
  br i1 %tobool127, label %if.then.128, label %if.end.146

if.then.128:                                      ; preds = %lor.lhs.false, %if.end.119
  %69 = load %struct.mchar*, %struct.mchar** %mc.addr, align 8
  %color129 = getelementptr inbounds %struct.mchar, %struct.mchar* %69, i32 0, i32 4
  %70 = load i8, i8* %color129, align 1
  %conv130 = zext i8 %70 to i32
  %and131 = and i32 %conv130, 15
  %71 = load %struct.mchar*, %struct.mchar** %mc.addr, align 8
  %attr132 = getelementptr inbounds %struct.mchar, %struct.mchar* %71, i32 0, i32 1
  %72 = load i8, i8* %attr132, align 1
  %conv133 = zext i8 %72 to i32
  %and134 = and i32 %conv133, 64
  %tobool135 = icmp ne i32 %and134, 0
  %cond = select i1 %tobool135, i32 256, i32 0
  %or136 = or i32 %and131, %cond
  %73 = load %struct.mchar*, %struct.mchar** %mc.addr, align 8
  %color137 = getelementptr inbounds %struct.mchar, %struct.mchar* %73, i32 0, i32 4
  %74 = load i8, i8* %color137, align 1
  %conv138 = zext i8 %74 to i32
  %and139 = and i32 %conv138, 240
  %shr = ashr i32 %and139, 4
  %75 = load %struct.mchar*, %struct.mchar** %mc.addr, align 8
  %attr140 = getelementptr inbounds %struct.mchar, %struct.mchar* %75, i32 0, i32 1
  %76 = load i8, i8* %attr140, align 1
  %conv141 = zext i8 %76 to i32
  %and142 = and i32 %conv141, 128
  %tobool143 = icmp ne i32 %and142, 0
  %cond144 = select i1 %tobool143, i32 256, i32 0
  %or145 = or i32 %shr, %cond144
  call void @SetColor(i32 %or136, i32 %or145)
  br label %if.end.146

if.end.146:                                       ; preds = %if.then.128, %lor.lhs.false
  %77 = load %struct.display*, %struct.display** @display, align 8
  %d_rend147 = getelementptr inbounds %struct.display, %struct.display* %77, i32 0, i32 24
  %font = getelementptr inbounds %struct.mchar, %struct.mchar* %d_rend147, i32 0, i32 2
  %78 = load i8, i8* %font, align 1
  %conv148 = zext i8 %78 to i32
  %79 = load %struct.mchar*, %struct.mchar** %mc.addr, align 8
  %font149 = getelementptr inbounds %struct.mchar, %struct.mchar* %79, i32 0, i32 2
  %80 = load i8, i8* %font149, align 1
  %conv150 = zext i8 %80 to i32
  %cmp151 = icmp ne i32 %conv148, %conv150
  br i1 %cmp151, label %if.then.153, label %if.end.156

if.then.153:                                      ; preds = %if.end.146
  %81 = load %struct.mchar*, %struct.mchar** %mc.addr, align 8
  %font154 = getelementptr inbounds %struct.mchar, %struct.mchar* %81, i32 0, i32 2
  %82 = load i8, i8* %font154, align 1
  %conv155 = zext i8 %82 to i32
  call void @SetFont(i32 %conv155)
  br label %if.end.156

if.end.156:                                       ; preds = %if.then.153, %if.end.146
  %83 = load %struct.display*, %struct.display** @display, align 8
  %d_encoding = getelementptr inbounds %struct.display, %struct.display* %83, i32 0, i32 28
  %84 = load i32, i32* %d_encoding, align 4
  %cmp157 = icmp eq i32 %84, 8
  br i1 %cmp157, label %if.then.159, label %if.end.162

if.then.159:                                      ; preds = %if.end.156
  %85 = load %struct.mchar*, %struct.mchar** %mc.addr, align 8
  %fontx = getelementptr inbounds %struct.mchar, %struct.mchar* %85, i32 0, i32 3
  %86 = load i8, i8* %fontx, align 1
  %87 = load %struct.display*, %struct.display** @display, align 8
  %d_rend160 = getelementptr inbounds %struct.display, %struct.display* %87, i32 0, i32 24
  %fontx161 = getelementptr inbounds %struct.mchar, %struct.mchar* %d_rend160, i32 0, i32 3
  store i8 %86, i8* %fontx161, align 1
  br label %if.end.162

if.end.162:                                       ; preds = %if.then, %if.then.159, %if.end.156
  ret void
}

declare void @SetFlow(i32) #1

; Function Attrs: nounwind uwtable
define void @ShowHStatus(i8* %str) #0 {
entry:
  %str.addr = alloca i8*, align 8
  %l = alloca i32, align 4
  %ox = alloca i32, align 4
  %oy = alloca i32, align 4
  %max = alloca i32, align 4
  store i8* %str, i8** %str.addr, align 8
  %0 = load %struct.display*, %struct.display** @display, align 8
  %d_status = getelementptr inbounds %struct.display, %struct.display* %0, i32 0, i32 43
  %1 = load i32, i32* %d_status, align 4
  %cmp = icmp eq i32 %1, 1
  br i1 %cmp, label %land.lhs.true, label %if.end

land.lhs.true:                                    ; preds = %entry
  %2 = load %struct.display*, %struct.display** @display, align 8
  %d_has_hstatus = getelementptr inbounds %struct.display, %struct.display* %2, i32 0, i32 36
  %3 = load i32, i32* %d_has_hstatus, align 4
  %cmp1 = icmp eq i32 %3, 1
  br i1 %cmp1, label %land.lhs.true.2, label %if.end

land.lhs.true.2:                                  ; preds = %land.lhs.true
  %4 = load %struct.display*, %struct.display** @display, align 8
  %d_height = getelementptr inbounds %struct.display, %struct.display* %4, i32 0, i32 17
  %5 = load i32, i32* %d_height, align 4
  %sub = sub nsw i32 %5, 1
  %6 = load %struct.display*, %struct.display** @display, align 8
  %d_height3 = getelementptr inbounds %struct.display, %struct.display* %6, i32 0, i32 17
  %7 = load i32, i32* %d_height3, align 4
  %sub4 = sub nsw i32 %7, 1
  %cmp5 = icmp eq i32 %sub, %sub4
  br i1 %cmp5, label %if.then, label %if.end

if.then:                                          ; preds = %land.lhs.true.2
  br label %if.end.213

if.end:                                           ; preds = %land.lhs.true.2, %land.lhs.true, %entry
  %8 = load %struct.display*, %struct.display** @display, align 8
  %d_blocked = getelementptr inbounds %struct.display, %struct.display* %8, i32 0, i32 102
  %9 = load i32, i32* %d_blocked, align 4
  %tobool = icmp ne i32 %9, 0
  br i1 %tobool, label %if.then.6, label %if.end.7

if.then.6:                                        ; preds = %if.end
  br label %if.end.213

if.end.7:                                         ; preds = %if.end
  %10 = load %struct.display*, %struct.display** @display, align 8
  %d_tcs = getelementptr inbounds %struct.display, %struct.display* %10, i32 0, i32 83
  %arrayidx = getelementptr inbounds [201 x %union.tcu], [201 x %union.tcu]* %d_tcs, i32 0, i64 75
  %flg = bitcast %union.tcu* %arrayidx to i32*
  %11 = load i32, i32* %flg, align 4
  %tobool8 = icmp ne i32 %11, 0
  br i1 %tobool8, label %land.lhs.true.9, label %if.else.60

land.lhs.true.9:                                  ; preds = %if.end.7
  %12 = load %struct.display*, %struct.display** @display, align 8
  %d_has_hstatus10 = getelementptr inbounds %struct.display, %struct.display* %12, i32 0, i32 36
  %13 = load i32, i32* %d_has_hstatus10, align 4
  %cmp11 = icmp eq i32 %13, 3
  br i1 %cmp11, label %if.then.12, label %if.else.60

if.then.12:                                       ; preds = %land.lhs.true.9
  %14 = load %struct.display*, %struct.display** @display, align 8
  %d_hstatus = getelementptr inbounds %struct.display, %struct.display* %14, i32 0, i32 37
  %15 = load i32, i32* %d_hstatus, align 4
  %tobool13 = icmp ne i32 %15, 0
  br i1 %tobool13, label %if.end.19, label %land.lhs.true.14

land.lhs.true.14:                                 ; preds = %if.then.12
  %16 = load i8*, i8** %str.addr, align 8
  %cmp15 = icmp eq i8* %16, null
  br i1 %cmp15, label %if.then.18, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %land.lhs.true.14
  %17 = load i8*, i8** %str.addr, align 8
  %18 = load i8, i8* %17, align 1
  %conv = sext i8 %18 to i32
  %cmp16 = icmp eq i32 %conv, 0
  br i1 %cmp16, label %if.then.18, label %if.end.19

if.then.18:                                       ; preds = %lor.lhs.false, %land.lhs.true.14
  br label %if.end.213

if.end.19:                                        ; preds = %lor.lhs.false, %if.then.12
  br label %do.body

do.body:                                          ; preds = %if.end.19
  br label %do.end

do.end:                                           ; preds = %do.body
  call void @SetRendition(%struct.mchar* @mchar_null)
  call void @InsertMode(i32 0)
  %19 = load %struct.display*, %struct.display** @display, align 8
  %d_hstatus20 = getelementptr inbounds %struct.display, %struct.display* %19, i32 0, i32 37
  %20 = load i32, i32* %d_hstatus20, align 4
  %tobool21 = icmp ne i32 %20, 0
  br i1 %tobool21, label %if.then.22, label %if.end.26

if.then.22:                                       ; preds = %do.end
  %21 = load %struct.display*, %struct.display** @display, align 8
  %d_tcs23 = getelementptr inbounds %struct.display, %struct.display* %21, i32 0, i32 83
  %arrayidx24 = getelementptr inbounds [201 x %union.tcu], [201 x %union.tcu]* %d_tcs23, i32 0, i64 79
  %str25 = bitcast %union.tcu* %arrayidx24 to i8**
  %22 = load i8*, i8** %str25, align 8
  call void @AddCStr(i8* %22)
  br label %if.end.26

if.end.26:                                        ; preds = %if.then.22, %do.end
  %23 = load %struct.display*, %struct.display** @display, align 8
  %d_hstatus27 = getelementptr inbounds %struct.display, %struct.display* %23, i32 0, i32 37
  store i32 0, i32* %d_hstatus27, align 4
  %24 = load i8*, i8** %str.addr, align 8
  %cmp28 = icmp eq i8* %24, null
  br i1 %cmp28, label %if.then.34, label %lor.lhs.false.30

lor.lhs.false.30:                                 ; preds = %if.end.26
  %25 = load i8*, i8** %str.addr, align 8
  %26 = load i8, i8* %25, align 1
  %conv31 = sext i8 %26 to i32
  %cmp32 = icmp eq i32 %conv31, 0
  br i1 %cmp32, label %if.then.34, label %if.end.35

if.then.34:                                       ; preds = %lor.lhs.false.30, %if.end.26
  br label %if.end.213

if.end.35:                                        ; preds = %lor.lhs.false.30
  %27 = load %struct.display*, %struct.display** @display, align 8
  %d_tcs36 = getelementptr inbounds %struct.display, %struct.display* %27, i32 0, i32 83
  %arrayidx37 = getelementptr inbounds [201 x %union.tcu], [201 x %union.tcu]* %d_tcs36, i32 0, i64 77
  %str38 = bitcast %union.tcu* %arrayidx37 to i8**
  %28 = load i8*, i8** %str38, align 8
  call void @AddCStr2(i8* %28, i32 0)
  %29 = load %struct.display*, %struct.display** @display, align 8
  %d_tcs39 = getelementptr inbounds %struct.display, %struct.display* %29, i32 0, i32 83
  %arrayidx40 = getelementptr inbounds [201 x %union.tcu], [201 x %union.tcu]* %d_tcs39, i32 0, i64 76
  %num = bitcast %union.tcu* %arrayidx40 to i32*
  %30 = load i32, i32* %num, align 4
  %cmp41 = icmp sgt i32 %30, 0
  br i1 %cmp41, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.end.35
  %31 = load %struct.display*, %struct.display** @display, align 8
  %d_tcs43 = getelementptr inbounds %struct.display, %struct.display* %31, i32 0, i32 83
  %arrayidx44 = getelementptr inbounds [201 x %union.tcu], [201 x %union.tcu]* %d_tcs43, i32 0, i64 76
  %num45 = bitcast %union.tcu* %arrayidx44 to i32*
  %32 = load i32, i32* %num45, align 4
  br label %cond.end

cond.false:                                       ; preds = %if.end.35
  %33 = load %struct.display*, %struct.display** @display, align 8
  %d_width = getelementptr inbounds %struct.display, %struct.display* %33, i32 0, i32 16
  %34 = load i32, i32* %d_width, align 4
  %35 = load %struct.display*, %struct.display** @display, align 8
  %d_tcs46 = getelementptr inbounds %struct.display, %struct.display* %35, i32 0, i32 83
  %arrayidx47 = getelementptr inbounds [201 x %union.tcu], [201 x %union.tcu]* %d_tcs46, i32 0, i64 87
  %flg48 = bitcast %union.tcu* %arrayidx47 to i32*
  %36 = load i32, i32* %flg48, align 4
  %tobool49 = icmp ne i32 %36, 0
  %lnot = xor i1 %tobool49, true
  %lnot.ext = zext i1 %lnot to i32
  %sub50 = sub nsw i32 %34, %lnot.ext
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %32, %cond.true ], [ %sub50, %cond.false ]
  store i32 %cond, i32* %max, align 4
  %37 = load i8*, i8** %str.addr, align 8
  %call = call i64 @strlen(i8* %37) #9
  %conv51 = trunc i64 %call to i32
  %38 = load i32, i32* %max, align 4
  %cmp52 = icmp sgt i32 %conv51, %38
  br i1 %cmp52, label %if.then.54, label %if.else

if.then.54:                                       ; preds = %cond.end
  %39 = load i8*, i8** %str.addr, align 8
  %40 = load i32, i32* %max, align 4
  call void @AddStrn(i8* %39, i32 %40)
  br label %if.end.55

if.else:                                          ; preds = %cond.end
  %41 = load i8*, i8** %str.addr, align 8
  call void @AddStr(i8* %41)
  br label %if.end.55

if.end.55:                                        ; preds = %if.else, %if.then.54
  %42 = load %struct.display*, %struct.display** @display, align 8
  %d_tcs56 = getelementptr inbounds %struct.display, %struct.display* %42, i32 0, i32 83
  %arrayidx57 = getelementptr inbounds [201 x %union.tcu], [201 x %union.tcu]* %d_tcs56, i32 0, i64 78
  %str58 = bitcast %union.tcu* %arrayidx57 to i8**
  %43 = load i8*, i8** %str58, align 8
  call void @AddCStr(i8* %43)
  %44 = load %struct.display*, %struct.display** @display, align 8
  %d_hstatus59 = getelementptr inbounds %struct.display, %struct.display* %44, i32 0, i32 37
  store i32 1, i32* %d_hstatus59, align 4
  br label %if.end.213

if.else.60:                                       ; preds = %land.lhs.true.9, %if.end.7
  %45 = load %struct.display*, %struct.display** @display, align 8
  %d_has_hstatus61 = getelementptr inbounds %struct.display, %struct.display* %45, i32 0, i32 36
  %46 = load i32, i32* %d_has_hstatus61, align 4
  %cmp62 = icmp eq i32 %46, 1
  br i1 %cmp62, label %if.then.64, label %if.else.127

if.then.64:                                       ; preds = %if.else.60
  br label %do.body.65

do.body.65:                                       ; preds = %if.then.64
  br label %do.end.66

do.end.66:                                        ; preds = %do.body.65
  %47 = load %struct.display*, %struct.display** @display, align 8
  %d_x = getelementptr inbounds %struct.display, %struct.display* %47, i32 0, i32 22
  %48 = load i32, i32* %d_x, align 4
  store i32 %48, i32* %ox, align 4
  %49 = load %struct.display*, %struct.display** @display, align 8
  %d_y = getelementptr inbounds %struct.display, %struct.display* %49, i32 0, i32 23
  %50 = load i32, i32* %d_y, align 4
  store i32 %50, i32* %oy, align 4
  %51 = load i8*, i8** %str.addr, align 8
  %tobool67 = icmp ne i8* %51, null
  br i1 %tobool67, label %cond.true.68, label %cond.false.69

cond.true.68:                                     ; preds = %do.end.66
  %52 = load i8*, i8** %str.addr, align 8
  br label %cond.end.70

cond.false.69:                                    ; preds = %do.end.66
  br label %cond.end.70

cond.end.70:                                      ; preds = %cond.false.69, %cond.true.68
  %cond71 = phi i8* [ %52, %cond.true.68 ], [ getelementptr inbounds ([1 x i8], [1 x i8]* @.str.9, i32 0, i32 0), %cond.false.69 ]
  store i8* %cond71, i8** %str.addr, align 8
  %53 = load i8*, i8** %str.addr, align 8
  %call72 = call i64 @strlen(i8* %53) #9
  %conv73 = trunc i64 %call72 to i32
  store i32 %conv73, i32* %l, align 4
  %54 = load i32, i32* %l, align 4
  %55 = load %struct.display*, %struct.display** @display, align 8
  %d_width74 = getelementptr inbounds %struct.display, %struct.display* %55, i32 0, i32 16
  %56 = load i32, i32* %d_width74, align 4
  %cmp75 = icmp sgt i32 %54, %56
  br i1 %cmp75, label %if.then.77, label %if.end.79

if.then.77:                                       ; preds = %cond.end.70
  %57 = load %struct.display*, %struct.display** @display, align 8
  %d_width78 = getelementptr inbounds %struct.display, %struct.display* %57, i32 0, i32 16
  %58 = load i32, i32* %d_width78, align 4
  store i32 %58, i32* %l, align 4
  br label %if.end.79

if.end.79:                                        ; preds = %if.then.77, %cond.end.70
  %59 = load %struct.display*, %struct.display** @display, align 8
  %d_height80 = getelementptr inbounds %struct.display, %struct.display* %59, i32 0, i32 17
  %60 = load i32, i32* %d_height80, align 4
  %sub81 = sub nsw i32 %60, 1
  call void @GotoPos(i32 0, i32 %sub81)
  %61 = load i32, i32* @captionalways, align 4
  %tobool82 = icmp ne i32 %61, 0
  br i1 %tobool82, label %lor.end, label %lor.lhs.false.83

lor.lhs.false.83:                                 ; preds = %if.end.79
  %62 = load %struct.display*, %struct.display** @display, align 8
  %d_cvlist = getelementptr inbounds %struct.display, %struct.display* %62, i32 0, i32 3
  %63 = load %struct.canvas*, %struct.canvas** %d_cvlist, align 8
  %cmp84 = icmp eq %struct.canvas* %63, null
  br i1 %cmp84, label %lor.end, label %lor.rhs

lor.rhs:                                          ; preds = %lor.lhs.false.83
  %64 = load %struct.display*, %struct.display** @display, align 8
  %d_cvlist86 = getelementptr inbounds %struct.display, %struct.display* %64, i32 0, i32 3
  %65 = load %struct.canvas*, %struct.canvas** %d_cvlist86, align 8
  %c_next = getelementptr inbounds %struct.canvas, %struct.canvas* %65, i32 0, i32 0
  %66 = load %struct.canvas*, %struct.canvas** %c_next, align 8
  %tobool87 = icmp ne %struct.canvas* %66, null
  br label %lor.end

lor.end:                                          ; preds = %lor.rhs, %lor.lhs.false.83, %if.end.79
  %67 = phi i1 [ true, %lor.lhs.false.83 ], [ true, %if.end.79 ], [ %tobool87, %lor.rhs ]
  %cond88 = select i1 %67, %struct.mchar* @mchar_null, %struct.mchar* @mchar_so
  call void @SetRendition(%struct.mchar* %cond88)
  %68 = load i8*, i8** %str.addr, align 8
  %69 = load i32, i32* %l, align 4
  %call89 = call i32 @PrePutWinMsg(i8* %68, i32 0, i32 %69)
  store i32 %call89, i32* %l, align 4
  %70 = load i32, i32* @captionalways, align 4
  %tobool90 = icmp ne i32 %70, 0
  br i1 %tobool90, label %if.end.102, label %land.lhs.true.91

land.lhs.true.91:                                 ; preds = %lor.end
  %71 = load %struct.display*, %struct.display** @display, align 8
  %d_cvlist92 = getelementptr inbounds %struct.display, %struct.display* %71, i32 0, i32 3
  %72 = load %struct.canvas*, %struct.canvas** %d_cvlist92, align 8
  %tobool93 = icmp ne %struct.canvas* %72, null
  br i1 %tobool93, label %land.lhs.true.94, label %if.end.102

land.lhs.true.94:                                 ; preds = %land.lhs.true.91
  %73 = load %struct.display*, %struct.display** @display, align 8
  %d_cvlist95 = getelementptr inbounds %struct.display, %struct.display* %73, i32 0, i32 3
  %74 = load %struct.canvas*, %struct.canvas** %d_cvlist95, align 8
  %c_next96 = getelementptr inbounds %struct.canvas, %struct.canvas* %74, i32 0, i32 0
  %75 = load %struct.canvas*, %struct.canvas** %c_next96, align 8
  %tobool97 = icmp ne %struct.canvas* %75, null
  br i1 %tobool97, label %if.end.102, label %if.then.98

if.then.98:                                       ; preds = %land.lhs.true.94
  br label %while.cond

while.cond:                                       ; preds = %while.body, %if.then.98
  %76 = load i32, i32* %l, align 4
  %inc = add nsw i32 %76, 1
  store i32 %inc, i32* %l, align 4
  %77 = load %struct.display*, %struct.display** @display, align 8
  %d_width99 = getelementptr inbounds %struct.display, %struct.display* %77, i32 0, i32 16
  %78 = load i32, i32* %d_width99, align 4
  %cmp100 = icmp slt i32 %76, %78
  br i1 %cmp100, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  call void @PUTCHARLP(i32 32)
  br label %while.cond

while.end:                                        ; preds = %while.cond
  br label %if.end.102

if.end.102:                                       ; preds = %while.end, %land.lhs.true.94, %land.lhs.true.91, %lor.end
  %79 = load i32, i32* %l, align 4
  %80 = load %struct.display*, %struct.display** @display, align 8
  %d_width103 = getelementptr inbounds %struct.display, %struct.display* %80, i32 0, i32 16
  %81 = load i32, i32* %d_width103, align 4
  %cmp104 = icmp slt i32 %79, %81
  br i1 %cmp104, label %if.then.106, label %if.end.115

if.then.106:                                      ; preds = %if.end.102
  %82 = load i32, i32* %l, align 4
  %83 = load %struct.display*, %struct.display** @display, align 8
  %d_height107 = getelementptr inbounds %struct.display, %struct.display* %83, i32 0, i32 17
  %84 = load i32, i32* %d_height107, align 4
  %sub108 = sub nsw i32 %84, 1
  %85 = load i32, i32* %l, align 4
  %86 = load %struct.display*, %struct.display** @display, align 8
  %d_width109 = getelementptr inbounds %struct.display, %struct.display* %86, i32 0, i32 16
  %87 = load i32, i32* %d_width109, align 4
  %sub110 = sub nsw i32 %87, 1
  %88 = load %struct.display*, %struct.display** @display, align 8
  %d_width111 = getelementptr inbounds %struct.display, %struct.display* %88, i32 0, i32 16
  %89 = load i32, i32* %d_width111, align 4
  %sub112 = sub nsw i32 %89, 1
  %90 = load %struct.display*, %struct.display** @display, align 8
  %d_height113 = getelementptr inbounds %struct.display, %struct.display* %90, i32 0, i32 17
  %91 = load i32, i32* %d_height113, align 4
  %sub114 = sub nsw i32 %91, 1
  call void @ClearArea(i32 %82, i32 %sub108, i32 %85, i32 %sub110, i32 %sub112, i32 %sub114, i32 0, i32 0)
  br label %if.end.115

if.end.115:                                       ; preds = %if.then.106, %if.end.102
  %92 = load i32, i32* %ox, align 4
  %cmp116 = icmp ne i32 %92, -1
  br i1 %cmp116, label %land.lhs.true.118, label %if.end.122

land.lhs.true.118:                                ; preds = %if.end.115
  %93 = load i32, i32* %oy, align 4
  %cmp119 = icmp ne i32 %93, -1
  br i1 %cmp119, label %if.then.121, label %if.end.122

if.then.121:                                      ; preds = %land.lhs.true.118
  %94 = load i32, i32* %ox, align 4
  %95 = load i32, i32* %oy, align 4
  call void @GotoPos(i32 %94, i32 %95)
  br label %if.end.122

if.end.122:                                       ; preds = %if.then.121, %land.lhs.true.118, %if.end.115
  %96 = load i8*, i8** %str.addr, align 8
  %97 = load i8, i8* %96, align 1
  %conv123 = sext i8 %97 to i32
  %tobool124 = icmp ne i32 %conv123, 0
  %cond125 = select i1 %tobool124, i32 1, i32 0
  %98 = load %struct.display*, %struct.display** @display, align 8
  %d_hstatus126 = getelementptr inbounds %struct.display, %struct.display* %98, i32 0, i32 37
  store i32 %cond125, i32* %d_hstatus126, align 4
  call void @SetRendition(%struct.mchar* @mchar_null)
  br label %if.end.212

if.else.127:                                      ; preds = %if.else.60
  %99 = load %struct.display*, %struct.display** @display, align 8
  %d_has_hstatus128 = getelementptr inbounds %struct.display, %struct.display* %99, i32 0, i32 36
  %100 = load i32, i32* %d_has_hstatus128, align 4
  %cmp129 = icmp eq i32 %100, 4
  br i1 %cmp129, label %if.then.131, label %if.else.198

if.then.131:                                      ; preds = %if.else.127
  br label %do.body.132

do.body.132:                                      ; preds = %if.then.131
  br label %do.end.133

do.end.133:                                       ; preds = %do.body.132
  %101 = load %struct.display*, %struct.display** @display, align 8
  %d_x134 = getelementptr inbounds %struct.display, %struct.display* %101, i32 0, i32 22
  %102 = load i32, i32* %d_x134, align 4
  store i32 %102, i32* %ox, align 4
  %103 = load %struct.display*, %struct.display** @display, align 8
  %d_y135 = getelementptr inbounds %struct.display, %struct.display* %103, i32 0, i32 23
  %104 = load i32, i32* %d_y135, align 4
  store i32 %104, i32* %oy, align 4
  %105 = load i8*, i8** %str.addr, align 8
  %tobool136 = icmp ne i8* %105, null
  br i1 %tobool136, label %cond.true.137, label %cond.false.138

cond.true.137:                                    ; preds = %do.end.133
  %106 = load i8*, i8** %str.addr, align 8
  br label %cond.end.139

cond.false.138:                                   ; preds = %do.end.133
  br label %cond.end.139

cond.end.139:                                     ; preds = %cond.false.138, %cond.true.137
  %cond140 = phi i8* [ %106, %cond.true.137 ], [ getelementptr inbounds ([1 x i8], [1 x i8]* @.str.9, i32 0, i32 0), %cond.false.138 ]
  store i8* %cond140, i8** %str.addr, align 8
  %107 = load i8*, i8** %str.addr, align 8
  %call141 = call i64 @strlen(i8* %107) #9
  %conv142 = trunc i64 %call141 to i32
  store i32 %conv142, i32* %l, align 4
  %108 = load i32, i32* %l, align 4
  %109 = load %struct.display*, %struct.display** @display, align 8
  %d_width143 = getelementptr inbounds %struct.display, %struct.display* %109, i32 0, i32 16
  %110 = load i32, i32* %d_width143, align 4
  %cmp144 = icmp sgt i32 %108, %110
  br i1 %cmp144, label %if.then.146, label %if.end.148

if.then.146:                                      ; preds = %cond.end.139
  %111 = load %struct.display*, %struct.display** @display, align 8
  %d_width147 = getelementptr inbounds %struct.display, %struct.display* %111, i32 0, i32 16
  %112 = load i32, i32* %d_width147, align 4
  store i32 %112, i32* %l, align 4
  br label %if.end.148

if.end.148:                                       ; preds = %if.then.146, %cond.end.139
  call void @GotoPos(i32 0, i32 0)
  %113 = load i32, i32* @captionalways, align 4
  %tobool149 = icmp ne i32 %113, 0
  br i1 %tobool149, label %lor.end.158, label %lor.lhs.false.150

lor.lhs.false.150:                                ; preds = %if.end.148
  %114 = load %struct.display*, %struct.display** @display, align 8
  %d_cvlist151 = getelementptr inbounds %struct.display, %struct.display* %114, i32 0, i32 3
  %115 = load %struct.canvas*, %struct.canvas** %d_cvlist151, align 8
  %cmp152 = icmp eq %struct.canvas* %115, null
  br i1 %cmp152, label %lor.end.158, label %lor.rhs.154

lor.rhs.154:                                      ; preds = %lor.lhs.false.150
  %116 = load %struct.display*, %struct.display** @display, align 8
  %d_cvlist155 = getelementptr inbounds %struct.display, %struct.display* %116, i32 0, i32 3
  %117 = load %struct.canvas*, %struct.canvas** %d_cvlist155, align 8
  %c_next156 = getelementptr inbounds %struct.canvas, %struct.canvas* %117, i32 0, i32 0
  %118 = load %struct.canvas*, %struct.canvas** %c_next156, align 8
  %tobool157 = icmp ne %struct.canvas* %118, null
  br label %lor.end.158

lor.end.158:                                      ; preds = %lor.rhs.154, %lor.lhs.false.150, %if.end.148
  %119 = phi i1 [ true, %lor.lhs.false.150 ], [ true, %if.end.148 ], [ %tobool157, %lor.rhs.154 ]
  %cond159 = select i1 %119, %struct.mchar* @mchar_null, %struct.mchar* @mchar_so
  call void @SetRendition(%struct.mchar* %cond159)
  %120 = load i8*, i8** %str.addr, align 8
  %121 = load i32, i32* %l, align 4
  %call160 = call i32 @PrePutWinMsg(i8* %120, i32 0, i32 %121)
  store i32 %call160, i32* %l, align 4
  %122 = load i32, i32* @captionalways, align 4
  %tobool161 = icmp ne i32 %122, 0
  br i1 %tobool161, label %lor.lhs.false.162, label %if.then.169

lor.lhs.false.162:                                ; preds = %lor.end.158
  %123 = load %struct.display*, %struct.display** @display, align 8
  %d_cvlist163 = getelementptr inbounds %struct.display, %struct.display* %123, i32 0, i32 3
  %124 = load %struct.canvas*, %struct.canvas** %d_cvlist163, align 8
  %tobool164 = icmp ne %struct.canvas* %124, null
  br i1 %tobool164, label %land.lhs.true.165, label %if.end.177

land.lhs.true.165:                                ; preds = %lor.lhs.false.162
  %125 = load %struct.display*, %struct.display** @display, align 8
  %d_cvlist166 = getelementptr inbounds %struct.display, %struct.display* %125, i32 0, i32 3
  %126 = load %struct.canvas*, %struct.canvas** %d_cvlist166, align 8
  %c_next167 = getelementptr inbounds %struct.canvas, %struct.canvas* %126, i32 0, i32 0
  %127 = load %struct.canvas*, %struct.canvas** %c_next167, align 8
  %tobool168 = icmp ne %struct.canvas* %127, null
  br i1 %tobool168, label %if.end.177, label %if.then.169

if.then.169:                                      ; preds = %land.lhs.true.165, %lor.end.158
  br label %while.cond.170

while.cond.170:                                   ; preds = %while.body.175, %if.then.169
  %128 = load i32, i32* %l, align 4
  %inc171 = add nsw i32 %128, 1
  store i32 %inc171, i32* %l, align 4
  %129 = load %struct.display*, %struct.display** @display, align 8
  %d_width172 = getelementptr inbounds %struct.display, %struct.display* %129, i32 0, i32 16
  %130 = load i32, i32* %d_width172, align 4
  %cmp173 = icmp slt i32 %128, %130
  br i1 %cmp173, label %while.body.175, label %while.end.176

while.body.175:                                   ; preds = %while.cond.170
  call void @PUTCHARLP(i32 32)
  br label %while.cond.170

while.end.176:                                    ; preds = %while.cond.170
  br label %if.end.177

if.end.177:                                       ; preds = %while.end.176, %land.lhs.true.165, %lor.lhs.false.162
  %131 = load i32, i32* %l, align 4
  %132 = load %struct.display*, %struct.display** @display, align 8
  %d_width178 = getelementptr inbounds %struct.display, %struct.display* %132, i32 0, i32 16
  %133 = load i32, i32* %d_width178, align 4
  %cmp179 = icmp slt i32 %131, %133
  br i1 %cmp179, label %if.then.181, label %if.end.186

if.then.181:                                      ; preds = %if.end.177
  %134 = load i32, i32* %l, align 4
  %135 = load i32, i32* %l, align 4
  %136 = load %struct.display*, %struct.display** @display, align 8
  %d_width182 = getelementptr inbounds %struct.display, %struct.display* %136, i32 0, i32 16
  %137 = load i32, i32* %d_width182, align 4
  %sub183 = sub nsw i32 %137, 1
  %138 = load %struct.display*, %struct.display** @display, align 8
  %d_width184 = getelementptr inbounds %struct.display, %struct.display* %138, i32 0, i32 16
  %139 = load i32, i32* %d_width184, align 4
  %sub185 = sub nsw i32 %139, 1
  call void @ClearArea(i32 %134, i32 0, i32 %135, i32 %sub183, i32 %sub185, i32 0, i32 0, i32 0)
  br label %if.end.186

if.end.186:                                       ; preds = %if.then.181, %if.end.177
  %140 = load i32, i32* %ox, align 4
  %cmp187 = icmp ne i32 %140, -1
  br i1 %cmp187, label %land.lhs.true.189, label %if.end.193

land.lhs.true.189:                                ; preds = %if.end.186
  %141 = load i32, i32* %oy, align 4
  %cmp190 = icmp ne i32 %141, -1
  br i1 %cmp190, label %if.then.192, label %if.end.193

if.then.192:                                      ; preds = %land.lhs.true.189
  %142 = load i32, i32* %ox, align 4
  %143 = load i32, i32* %oy, align 4
  call void @GotoPos(i32 %142, i32 %143)
  br label %if.end.193

if.end.193:                                       ; preds = %if.then.192, %land.lhs.true.189, %if.end.186
  %144 = load i8*, i8** %str.addr, align 8
  %145 = load i8, i8* %144, align 1
  %conv194 = sext i8 %145 to i32
  %tobool195 = icmp ne i32 %conv194, 0
  %cond196 = select i1 %tobool195, i32 1, i32 0
  %146 = load %struct.display*, %struct.display** @display, align 8
  %d_hstatus197 = getelementptr inbounds %struct.display, %struct.display* %146, i32 0, i32 37
  store i32 %cond196, i32* %d_hstatus197, align 4
  call void @SetRendition(%struct.mchar* @mchar_null)
  br label %if.end.211

if.else.198:                                      ; preds = %if.else.127
  %147 = load i8*, i8** %str.addr, align 8
  %tobool199 = icmp ne i8* %147, null
  br i1 %tobool199, label %land.lhs.true.200, label %if.end.210

land.lhs.true.200:                                ; preds = %if.else.198
  %148 = load i8*, i8** %str.addr, align 8
  %149 = load i8, i8* %148, align 1
  %conv201 = sext i8 %149 to i32
  %tobool202 = icmp ne i32 %conv201, 0
  br i1 %tobool202, label %land.lhs.true.203, label %if.end.210

land.lhs.true.203:                                ; preds = %land.lhs.true.200
  %150 = load %struct.display*, %struct.display** @display, align 8
  %d_has_hstatus204 = getelementptr inbounds %struct.display, %struct.display* %150, i32 0, i32 36
  %151 = load i32, i32* %d_has_hstatus204, align 4
  %cmp205 = icmp eq i32 %151, 2
  br i1 %cmp205, label %if.then.207, label %if.end.210

if.then.207:                                      ; preds = %land.lhs.true.203
  br label %do.body.208

do.body.208:                                      ; preds = %if.then.207
  br label %do.end.209

do.end.209:                                       ; preds = %do.body.208
  %152 = load i8*, i8** %str.addr, align 8
  call void (i32, i8*, ...) @Msg(i32 0, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.10, i32 0, i32 0), i8* %152)
  br label %if.end.210

if.end.210:                                       ; preds = %do.end.209, %land.lhs.true.203, %land.lhs.true.200, %if.else.198
  br label %if.end.211

if.end.211:                                       ; preds = %if.end.210, %if.end.193
  br label %if.end.212

if.end.212:                                       ; preds = %if.end.211, %if.end.122
  br label %if.end.213

if.end.213:                                       ; preds = %if.then, %if.then.6, %if.then.18, %if.then.34, %if.end.212, %if.end.55
  ret void
}

; Function Attrs: nounwind uwtable
define void @GotoPos(i32 %x2, i32 %y2) #0 {
entry:
  %x2.addr = alloca i32, align 4
  %y2.addr = alloca i32, align 4
  %dy = alloca i32, align 4
  %dx = alloca i32, align 4
  %x1 = alloca i32, align 4
  %y1 = alloca i32, align 4
  %costx = alloca i32, align 4
  %costy = alloca i32, align 4
  %m = alloca i32, align 4
  %s = alloca i8*, align 8
  %CMcost = alloca i32, align 4
  %xm = alloca i32, align 4
  %ym = alloca i32, align 4
  store i32 %x2, i32* %x2.addr, align 4
  store i32 %y2, i32* %y2.addr, align 4
  store i32 0, i32* %xm, align 4
  store i32 0, i32* %ym, align 4
  %0 = load %struct.display*, %struct.display** @display, align 8
  %tobool = icmp ne %struct.display* %0, null
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  br label %return

if.end:                                           ; preds = %entry
  %1 = load %struct.display*, %struct.display** @display, align 8
  %d_x = getelementptr inbounds %struct.display, %struct.display* %1, i32 0, i32 22
  %2 = load i32, i32* %d_x, align 4
  store i32 %2, i32* %x1, align 4
  %3 = load %struct.display*, %struct.display** @display, align 8
  %d_y = getelementptr inbounds %struct.display, %struct.display* %3, i32 0, i32 23
  %4 = load i32, i32* %d_y, align 4
  store i32 %4, i32* %y1, align 4
  %5 = load i32, i32* %x1, align 4
  %6 = load %struct.display*, %struct.display** @display, align 8
  %d_width = getelementptr inbounds %struct.display, %struct.display* %6, i32 0, i32 16
  %7 = load i32, i32* %d_width, align 4
  %cmp = icmp eq i32 %5, %7
  br i1 %cmp, label %if.then.1, label %if.end.9

if.then.1:                                        ; preds = %if.end
  %8 = load %struct.display*, %struct.display** @display, align 8
  %d_tcs = getelementptr inbounds %struct.display, %struct.display* %8, i32 0, i32 83
  %arrayidx = getelementptr inbounds [201 x %union.tcu], [201 x %union.tcu]* %d_tcs, i32 0, i64 87
  %flg = bitcast %union.tcu* %arrayidx to i32*
  %9 = load i32, i32* %flg, align 4
  %tobool2 = icmp ne i32 %9, 0
  br i1 %tobool2, label %land.lhs.true, label %if.else

land.lhs.true:                                    ; preds = %if.then.1
  %10 = load %struct.display*, %struct.display** @display, align 8
  %d_tcs3 = getelementptr inbounds %struct.display, %struct.display* %10, i32 0, i32 83
  %arrayidx4 = getelementptr inbounds [201 x %union.tcu], [201 x %union.tcu]* %d_tcs3, i32 0, i64 83
  %flg5 = bitcast %union.tcu* %arrayidx4 to i32*
  %11 = load i32, i32* %flg5, align 4
  %tobool6 = icmp ne i32 %11, 0
  br i1 %tobool6, label %if.then.7, label %if.else

if.then.7:                                        ; preds = %land.lhs.true
  store i32 -1, i32* %x1, align 4
  br label %if.end.8

if.else:                                          ; preds = %land.lhs.true, %if.then.1
  %12 = load i32, i32* %x1, align 4
  %dec = add nsw i32 %12, -1
  store i32 %dec, i32* %x1, align 4
  br label %if.end.8

if.end.8:                                         ; preds = %if.else, %if.then.7
  br label %if.end.9

if.end.9:                                         ; preds = %if.end.8, %if.end
  %13 = load i32, i32* %x2.addr, align 4
  %14 = load %struct.display*, %struct.display** @display, align 8
  %d_width10 = getelementptr inbounds %struct.display, %struct.display* %14, i32 0, i32 16
  %15 = load i32, i32* %d_width10, align 4
  %cmp11 = icmp eq i32 %13, %15
  br i1 %cmp11, label %if.then.12, label %if.end.14

if.then.12:                                       ; preds = %if.end.9
  %16 = load i32, i32* %x2.addr, align 4
  %dec13 = add nsw i32 %16, -1
  store i32 %dec13, i32* %x2.addr, align 4
  br label %if.end.14

if.end.14:                                        ; preds = %if.then.12, %if.end.9
  %17 = load i32, i32* %x2.addr, align 4
  %18 = load i32, i32* %x1, align 4
  %sub = sub nsw i32 %17, %18
  store i32 %sub, i32* %dx, align 4
  %19 = load i32, i32* %y2.addr, align 4
  %20 = load i32, i32* %y1, align 4
  %sub15 = sub nsw i32 %19, %20
  store i32 %sub15, i32* %dy, align 4
  %21 = load i32, i32* %dy, align 4
  %cmp16 = icmp eq i32 %21, 0
  br i1 %cmp16, label %land.lhs.true.17, label %if.end.20

land.lhs.true.17:                                 ; preds = %if.end.14
  %22 = load i32, i32* %dx, align 4
  %cmp18 = icmp eq i32 %22, 0
  br i1 %cmp18, label %if.then.19, label %if.end.20

if.then.19:                                       ; preds = %land.lhs.true.17
  br label %return

if.end.20:                                        ; preds = %land.lhs.true.17, %if.end.14
  br label %do.body

do.body:                                          ; preds = %if.end.20
  br label %do.end

do.end:                                           ; preds = %do.body
  br label %do.body.21

do.body.21:                                       ; preds = %do.end
  br label %do.end.22

do.end.22:                                        ; preds = %do.body.21
  %23 = load %struct.display*, %struct.display** @display, align 8
  %d_tcs23 = getelementptr inbounds %struct.display, %struct.display* %23, i32 0, i32 83
  %arrayidx24 = getelementptr inbounds [201 x %union.tcu], [201 x %union.tcu]* %d_tcs23, i32 0, i64 56
  %flg25 = bitcast %union.tcu* %arrayidx24 to i32*
  %24 = load i32, i32* %flg25, align 4
  %tobool26 = icmp ne i32 %24, 0
  br i1 %tobool26, label %if.end.28, label %if.then.27

if.then.27:                                       ; preds = %do.end.22
  call void @SetRendition(%struct.mchar* @mchar_null)
  br label %if.end.28

if.end.28:                                        ; preds = %if.then.27, %do.end.22
  %25 = load i32, i32* %y1, align 4
  %cmp29 = icmp slt i32 %25, 0
  br i1 %cmp29, label %if.then.39, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.end.28
  %26 = load i32, i32* %y2.addr, align 4
  %27 = load %struct.display*, %struct.display** @display, align 8
  %d_bot = getelementptr inbounds %struct.display, %struct.display* %27, i32 0, i32 21
  %28 = load i32, i32* %d_bot, align 4
  %cmp30 = icmp sgt i32 %26, %28
  br i1 %cmp30, label %land.lhs.true.31, label %lor.lhs.false.34

land.lhs.true.31:                                 ; preds = %lor.lhs.false
  %29 = load i32, i32* %y1, align 4
  %30 = load %struct.display*, %struct.display** @display, align 8
  %d_bot32 = getelementptr inbounds %struct.display, %struct.display* %30, i32 0, i32 21
  %31 = load i32, i32* %d_bot32, align 4
  %cmp33 = icmp sle i32 %29, %31
  br i1 %cmp33, label %if.then.39, label %lor.lhs.false.34

lor.lhs.false.34:                                 ; preds = %land.lhs.true.31, %lor.lhs.false
  %32 = load i32, i32* %y2.addr, align 4
  %33 = load %struct.display*, %struct.display** @display, align 8
  %d_top = getelementptr inbounds %struct.display, %struct.display* %33, i32 0, i32 20
  %34 = load i32, i32* %d_top, align 4
  %cmp35 = icmp slt i32 %32, %34
  br i1 %cmp35, label %land.lhs.true.36, label %if.end.58

land.lhs.true.36:                                 ; preds = %lor.lhs.false.34
  %35 = load i32, i32* %y1, align 4
  %36 = load %struct.display*, %struct.display** @display, align 8
  %d_top37 = getelementptr inbounds %struct.display, %struct.display* %36, i32 0, i32 20
  %37 = load i32, i32* %d_top37, align 4
  %cmp38 = icmp sge i32 %35, %37
  br i1 %cmp38, label %if.then.39, label %if.end.58

if.then.39:                                       ; preds = %land.lhs.true.36, %land.lhs.true.31, %if.end.28
  br label %DoCM

DoCM:                                             ; preds = %if.then.221, %if.then.163, %if.then.68, %if.then.39
  %38 = load %struct.display*, %struct.display** @display, align 8
  %d_tcs40 = getelementptr inbounds %struct.display, %struct.display* %38, i32 0, i32 83
  %arrayidx41 = getelementptr inbounds [201 x %union.tcu], [201 x %union.tcu]* %d_tcs40, i32 0, i64 6
  %str = bitcast %union.tcu* %arrayidx41 to i8**
  %39 = load i8*, i8** %str, align 8
  %tobool42 = icmp ne i8* %39, null
  br i1 %tobool42, label %land.lhs.true.43, label %if.else.51

land.lhs.true.43:                                 ; preds = %DoCM
  %40 = load i32, i32* %x2.addr, align 4
  %tobool44 = icmp ne i32 %40, 0
  br i1 %tobool44, label %if.else.51, label %land.lhs.true.45

land.lhs.true.45:                                 ; preds = %land.lhs.true.43
  %41 = load i32, i32* %y2.addr, align 4
  %tobool46 = icmp ne i32 %41, 0
  br i1 %tobool46, label %if.else.51, label %if.then.47

if.then.47:                                       ; preds = %land.lhs.true.45
  %42 = load %struct.display*, %struct.display** @display, align 8
  %d_tcs48 = getelementptr inbounds %struct.display, %struct.display* %42, i32 0, i32 83
  %arrayidx49 = getelementptr inbounds [201 x %union.tcu], [201 x %union.tcu]* %d_tcs48, i32 0, i64 6
  %str50 = bitcast %union.tcu* %arrayidx49 to i8**
  %43 = load i8*, i8** %str50, align 8
  call void @AddCStr(i8* %43)
  br label %if.end.55

if.else.51:                                       ; preds = %land.lhs.true.45, %land.lhs.true.43, %DoCM
  %44 = load %struct.display*, %struct.display** @display, align 8
  %d_tcs52 = getelementptr inbounds %struct.display, %struct.display* %44, i32 0, i32 83
  %arrayidx53 = getelementptr inbounds [201 x %union.tcu], [201 x %union.tcu]* %d_tcs52, i32 0, i64 5
  %str54 = bitcast %union.tcu* %arrayidx53 to i8**
  %45 = load i8*, i8** %str54, align 8
  %46 = load i32, i32* %x2.addr, align 4
  %47 = load i32, i32* %y2.addr, align 4
  %call = call i8* @tgoto(i8* %45, i32 %46, i32 %47)
  call void @AddCStr(i8* %call)
  br label %if.end.55

if.end.55:                                        ; preds = %if.else.51, %if.then.47
  %48 = load i32, i32* %x2.addr, align 4
  %49 = load %struct.display*, %struct.display** @display, align 8
  %d_x56 = getelementptr inbounds %struct.display, %struct.display* %49, i32 0, i32 22
  store i32 %48, i32* %d_x56, align 4
  %50 = load i32, i32* %y2.addr, align 4
  %51 = load %struct.display*, %struct.display** @display, align 8
  %d_y57 = getelementptr inbounds %struct.display, %struct.display* %51, i32 0, i32 23
  store i32 %50, i32* %d_y57, align 4
  br label %return

if.end.58:                                        ; preds = %land.lhs.true.36, %lor.lhs.false.34
  %52 = load i32, i32* %y1, align 4
  %53 = load %struct.display*, %struct.display** @display, align 8
  %d_bot59 = getelementptr inbounds %struct.display, %struct.display* %53, i32 0, i32 21
  %54 = load i32, i32* %d_bot59, align 4
  %cmp60 = icmp sgt i32 %52, %54
  br i1 %cmp60, label %land.lhs.true.61, label %lor.lhs.false.63

land.lhs.true.61:                                 ; preds = %if.end.58
  %55 = load i32, i32* %y2.addr, align 4
  %56 = load i32, i32* %y1, align 4
  %cmp62 = icmp sgt i32 %55, %56
  br i1 %cmp62, label %if.then.68, label %lor.lhs.false.63

lor.lhs.false.63:                                 ; preds = %land.lhs.true.61, %if.end.58
  %57 = load i32, i32* %y1, align 4
  %58 = load %struct.display*, %struct.display** @display, align 8
  %d_top64 = getelementptr inbounds %struct.display, %struct.display* %58, i32 0, i32 20
  %59 = load i32, i32* %d_top64, align 4
  %cmp65 = icmp slt i32 %57, %59
  br i1 %cmp65, label %land.lhs.true.66, label %if.end.69

land.lhs.true.66:                                 ; preds = %lor.lhs.false.63
  %60 = load i32, i32* %y2.addr, align 4
  %61 = load i32, i32* %y1, align 4
  %cmp67 = icmp slt i32 %60, %61
  br i1 %cmp67, label %if.then.68, label %if.end.69

if.then.68:                                       ; preds = %land.lhs.true.66, %land.lhs.true.61
  br label %DoCM

if.end.69:                                        ; preds = %land.lhs.true.66, %lor.lhs.false.63
  %62 = load %struct.display*, %struct.display** @display, align 8
  %d_tcs70 = getelementptr inbounds %struct.display, %struct.display* %62, i32 0, i32 83
  %arrayidx71 = getelementptr inbounds [201 x %union.tcu], [201 x %union.tcu]* %d_tcs70, i32 0, i64 6
  %str72 = bitcast %union.tcu* %arrayidx71 to i8**
  %63 = load i8*, i8** %str72, align 8
  %tobool73 = icmp ne i8* %63, null
  br i1 %tobool73, label %land.lhs.true.74, label %if.else.82

land.lhs.true.74:                                 ; preds = %if.end.69
  %64 = load i32, i32* %x2.addr, align 4
  %tobool75 = icmp ne i32 %64, 0
  br i1 %tobool75, label %if.else.82, label %land.lhs.true.76

land.lhs.true.76:                                 ; preds = %land.lhs.true.74
  %65 = load i32, i32* %y2.addr, align 4
  %tobool77 = icmp ne i32 %65, 0
  br i1 %tobool77, label %if.else.82, label %if.then.78

if.then.78:                                       ; preds = %land.lhs.true.76
  %66 = load %struct.display*, %struct.display** @display, align 8
  %d_tcs79 = getelementptr inbounds %struct.display, %struct.display* %66, i32 0, i32 83
  %arrayidx80 = getelementptr inbounds [201 x %union.tcu], [201 x %union.tcu]* %d_tcs79, i32 0, i64 6
  %str81 = bitcast %union.tcu* %arrayidx80 to i8**
  %67 = load i8*, i8** %str81, align 8
  store i8* %67, i8** %s, align 8
  br label %if.end.87

if.else.82:                                       ; preds = %land.lhs.true.76, %land.lhs.true.74, %if.end.69
  %68 = load %struct.display*, %struct.display** @display, align 8
  %d_tcs83 = getelementptr inbounds %struct.display, %struct.display* %68, i32 0, i32 83
  %arrayidx84 = getelementptr inbounds [201 x %union.tcu], [201 x %union.tcu]* %d_tcs83, i32 0, i64 5
  %str85 = bitcast %union.tcu* %arrayidx84 to i8**
  %69 = load i8*, i8** %str85, align 8
  %70 = load i32, i32* %x2.addr, align 4
  %71 = load i32, i32* %y2.addr, align 4
  %call86 = call i8* @tgoto(i8* %69, i32 %70, i32 %71)
  store i8* %call86, i8** %s, align 8
  br label %if.end.87

if.end.87:                                        ; preds = %if.else.82, %if.then.78
  %72 = load i8*, i8** %s, align 8
  %call88 = call i32 @CalcCost(i8* %72)
  store i32 %call88, i32* %CMcost, align 4
  store i32 1000, i32* %costx, align 4
  %73 = load i32, i32* %x1, align 4
  %cmp89 = icmp sge i32 %73, 0
  br i1 %cmp89, label %if.then.90, label %if.end.151

if.then.90:                                       ; preds = %if.end.87
  %74 = load i32, i32* %dx, align 4
  %cmp91 = icmp sgt i32 %74, 0
  br i1 %cmp91, label %if.then.92, label %if.else.121

if.then.92:                                       ; preds = %if.then.90
  %75 = load %struct.display*, %struct.display** @display, align 8
  %d_tcs93 = getelementptr inbounds %struct.display, %struct.display* %75, i32 0, i32 83
  %arrayidx94 = getelementptr inbounds [201 x %union.tcu], [201 x %union.tcu]* %d_tcs93, i32 0, i64 17
  %str95 = bitcast %union.tcu* %arrayidx94 to i8**
  %76 = load i8*, i8** %str95, align 8
  %tobool96 = icmp ne i8* %76, null
  br i1 %tobool96, label %land.lhs.true.97, label %if.end.110

land.lhs.true.97:                                 ; preds = %if.then.92
  %77 = load i32, i32* %dx, align 4
  %cmp98 = icmp sgt i32 %77, 1
  br i1 %cmp98, label %if.then.104, label %lor.lhs.false.99

lor.lhs.false.99:                                 ; preds = %land.lhs.true.97
  %78 = load %struct.display*, %struct.display** @display, align 8
  %d_tcs100 = getelementptr inbounds %struct.display, %struct.display* %78, i32 0, i32 83
  %arrayidx101 = getelementptr inbounds [201 x %union.tcu], [201 x %union.tcu]* %d_tcs100, i32 0, i64 16
  %str102 = bitcast %union.tcu* %arrayidx101 to i8**
  %79 = load i8*, i8** %str102, align 8
  %tobool103 = icmp ne i8* %79, null
  br i1 %tobool103, label %if.end.110, label %if.then.104

if.then.104:                                      ; preds = %lor.lhs.false.99, %land.lhs.true.97
  %80 = load %struct.display*, %struct.display** @display, align 8
  %d_tcs105 = getelementptr inbounds %struct.display, %struct.display* %80, i32 0, i32 83
  %arrayidx106 = getelementptr inbounds [201 x %union.tcu], [201 x %union.tcu]* %d_tcs105, i32 0, i64 17
  %str107 = bitcast %union.tcu* %arrayidx106 to i8**
  %81 = load i8*, i8** %str107, align 8
  %82 = load i32, i32* %dx, align 4
  %call108 = call i8* @tgoto(i8* %81, i32 0, i32 %82)
  %call109 = call i32 @CalcCost(i8* %call108)
  store i32 %call109, i32* %costx, align 4
  store i32 8, i32* %xm, align 4
  br label %if.end.110

if.end.110:                                       ; preds = %if.then.104, %lor.lhs.false.99, %if.then.92
  %83 = load %struct.display*, %struct.display** @display, align 8
  %d_NDcost = getelementptr inbounds %struct.display, %struct.display* %83, i32 0, i32 93
  %84 = load i32, i32* %d_NDcost, align 4
  %85 = load i32, i32* %dx, align 4
  %mul = mul nsw i32 %84, %85
  store i32 %mul, i32* %m, align 4
  %86 = load i32, i32* %costx, align 4
  %cmp111 = icmp slt i32 %mul, %86
  br i1 %cmp111, label %if.then.112, label %if.end.113

if.then.112:                                      ; preds = %if.end.110
  %87 = load i32, i32* %m, align 4
  store i32 %87, i32* %costx, align 4
  store i32 7, i32* %xm, align 4
  br label %if.end.113

if.end.113:                                       ; preds = %if.then.112, %if.end.110
  %88 = load i32, i32* %dx, align 4
  %89 = load i32, i32* %costx, align 4
  %cmp114 = icmp slt i32 %88, %89
  br i1 %cmp114, label %land.lhs.true.115, label %if.end.120

land.lhs.true.115:                                ; preds = %if.end.113
  %90 = load i32, i32* %y1, align 4
  %91 = load i32, i32* %x1, align 4
  %92 = load i32, i32* %x2.addr, align 4
  %sub116 = sub nsw i32 %92, 1
  %call117 = call i32 @CallRewrite(i32 %90, i32 %91, i32 %sub116, i32 0)
  store i32 %call117, i32* %m, align 4
  %93 = load i32, i32* %costx, align 4
  %cmp118 = icmp slt i32 %call117, %93
  br i1 %cmp118, label %if.then.119, label %if.end.120

if.then.119:                                      ; preds = %land.lhs.true.115
  %94 = load i32, i32* %m, align 4
  store i32 %94, i32* %costx, align 4
  store i32 9, i32* %xm, align 4
  br label %if.end.120

if.end.120:                                       ; preds = %if.then.119, %land.lhs.true.115, %if.end.113
  br label %if.end.150

if.else.121:                                      ; preds = %if.then.90
  %95 = load i32, i32* %dx, align 4
  %cmp122 = icmp slt i32 %95, 0
  br i1 %cmp122, label %if.then.123, label %if.else.148

if.then.123:                                      ; preds = %if.else.121
  %96 = load %struct.display*, %struct.display** @display, align 8
  %d_tcs124 = getelementptr inbounds %struct.display, %struct.display* %96, i32 0, i32 83
  %arrayidx125 = getelementptr inbounds [201 x %union.tcu], [201 x %union.tcu]* %d_tcs124, i32 0, i64 15
  %str126 = bitcast %union.tcu* %arrayidx125 to i8**
  %97 = load i8*, i8** %str126, align 8
  %tobool127 = icmp ne i8* %97, null
  br i1 %tobool127, label %land.lhs.true.128, label %if.end.142

land.lhs.true.128:                                ; preds = %if.then.123
  %98 = load i32, i32* %dx, align 4
  %cmp129 = icmp slt i32 %98, -1
  br i1 %cmp129, label %if.then.135, label %lor.lhs.false.130

lor.lhs.false.130:                                ; preds = %land.lhs.true.128
  %99 = load %struct.display*, %struct.display** @display, align 8
  %d_tcs131 = getelementptr inbounds %struct.display, %struct.display* %99, i32 0, i32 83
  %arrayidx132 = getelementptr inbounds [201 x %union.tcu], [201 x %union.tcu]* %d_tcs131, i32 0, i64 13
  %str133 = bitcast %union.tcu* %arrayidx132 to i8**
  %100 = load i8*, i8** %str133, align 8
  %tobool134 = icmp ne i8* %100, null
  br i1 %tobool134, label %if.end.142, label %if.then.135

if.then.135:                                      ; preds = %lor.lhs.false.130, %land.lhs.true.128
  %101 = load %struct.display*, %struct.display** @display, align 8
  %d_tcs136 = getelementptr inbounds %struct.display, %struct.display* %101, i32 0, i32 83
  %arrayidx137 = getelementptr inbounds [201 x %union.tcu], [201 x %union.tcu]* %d_tcs136, i32 0, i64 15
  %str138 = bitcast %union.tcu* %arrayidx137 to i8**
  %102 = load i8*, i8** %str138, align 8
  %103 = load i32, i32* %dx, align 4
  %sub139 = sub nsw i32 0, %103
  %call140 = call i8* @tgoto(i8* %102, i32 0, i32 %sub139)
  %call141 = call i32 @CalcCost(i8* %call140)
  store i32 %call141, i32* %costx, align 4
  store i32 6, i32* %xm, align 4
  br label %if.end.142

if.end.142:                                       ; preds = %if.then.135, %lor.lhs.false.130, %if.then.123
  %104 = load i32, i32* %dx, align 4
  %sub143 = sub nsw i32 0, %104
  %105 = load %struct.display*, %struct.display** @display, align 8
  %d_LEcost = getelementptr inbounds %struct.display, %struct.display* %105, i32 0, i32 92
  %106 = load i32, i32* %d_LEcost, align 4
  %mul144 = mul nsw i32 %sub143, %106
  store i32 %mul144, i32* %m, align 4
  %107 = load i32, i32* %costx, align 4
  %cmp145 = icmp slt i32 %mul144, %107
  br i1 %cmp145, label %if.then.146, label %if.end.147

if.then.146:                                      ; preds = %if.end.142
  %108 = load i32, i32* %m, align 4
  store i32 %108, i32* %costx, align 4
  store i32 5, i32* %xm, align 4
  br label %if.end.147

if.end.147:                                       ; preds = %if.then.146, %if.end.142
  br label %if.end.149

if.else.148:                                      ; preds = %if.else.121
  store i32 0, i32* %costx, align 4
  br label %if.end.149

if.end.149:                                       ; preds = %if.else.148, %if.end.147
  br label %if.end.150

if.end.150:                                       ; preds = %if.end.149, %if.end.120
  br label %if.end.151

if.end.151:                                       ; preds = %if.end.150, %if.end.87
  %109 = load i32, i32* %x2.addr, align 4
  %110 = load %struct.display*, %struct.display** @display, align 8
  %d_CRcost = getelementptr inbounds %struct.display, %struct.display* %110, i32 0, i32 94
  %111 = load i32, i32* %d_CRcost, align 4
  %add = add nsw i32 %109, %111
  %112 = load i32, i32* %costx, align 4
  %cmp152 = icmp slt i32 %add, %112
  br i1 %cmp152, label %land.lhs.true.153, label %if.end.161

land.lhs.true.153:                                ; preds = %if.end.151
  %113 = load i32, i32* %x2.addr, align 4
  %tobool154 = icmp ne i32 %113, 0
  br i1 %tobool154, label %cond.true, label %cond.false

cond.true:                                        ; preds = %land.lhs.true.153
  %114 = load i32, i32* %y1, align 4
  %115 = load i32, i32* %x2.addr, align 4
  %sub155 = sub nsw i32 %115, 1
  %call156 = call i32 @CallRewrite(i32 %114, i32 0, i32 %sub155, i32 0)
  br label %cond.end

cond.false:                                       ; preds = %land.lhs.true.153
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %call156, %cond.true ], [ 0, %cond.false ]
  %116 = load %struct.display*, %struct.display** @display, align 8
  %d_CRcost157 = getelementptr inbounds %struct.display, %struct.display* %116, i32 0, i32 94
  %117 = load i32, i32* %d_CRcost157, align 4
  %add158 = add nsw i32 %cond, %117
  store i32 %add158, i32* %m, align 4
  %118 = load i32, i32* %costx, align 4
  %cmp159 = icmp slt i32 %add158, %118
  br i1 %cmp159, label %if.then.160, label %if.end.161

if.then.160:                                      ; preds = %cond.end
  %119 = load i32, i32* %m, align 4
  store i32 %119, i32* %costx, align 4
  store i32 10, i32* %xm, align 4
  br label %if.end.161

if.end.161:                                       ; preds = %if.then.160, %cond.end, %if.end.151
  %120 = load i32, i32* %costx, align 4
  %121 = load i32, i32* %CMcost, align 4
  %cmp162 = icmp sge i32 %120, %121
  br i1 %cmp162, label %if.then.163, label %if.end.164

if.then.163:                                      ; preds = %if.end.161
  br label %DoCM

if.end.164:                                       ; preds = %if.end.161
  store i32 1000, i32* %costy, align 4
  %122 = load i32, i32* %dy, align 4
  %cmp165 = icmp sgt i32 %122, 0
  br i1 %cmp165, label %if.then.166, label %if.else.189

if.then.166:                                      ; preds = %if.end.164
  %123 = load %struct.display*, %struct.display** @display, align 8
  %d_tcs167 = getelementptr inbounds %struct.display, %struct.display* %123, i32 0, i32 83
  %arrayidx168 = getelementptr inbounds [201 x %union.tcu], [201 x %union.tcu]* %d_tcs167, i32 0, i64 11
  %str169 = bitcast %union.tcu* %arrayidx168 to i8**
  %124 = load i8*, i8** %str169, align 8
  %tobool170 = icmp ne i8* %124, null
  br i1 %tobool170, label %land.lhs.true.171, label %if.end.179

land.lhs.true.171:                                ; preds = %if.then.166
  %125 = load i32, i32* %dy, align 4
  %cmp172 = icmp sgt i32 %125, 1
  br i1 %cmp172, label %if.then.173, label %if.end.179

if.then.173:                                      ; preds = %land.lhs.true.171
  %126 = load %struct.display*, %struct.display** @display, align 8
  %d_tcs174 = getelementptr inbounds %struct.display, %struct.display* %126, i32 0, i32 83
  %arrayidx175 = getelementptr inbounds [201 x %union.tcu], [201 x %union.tcu]* %d_tcs174, i32 0, i64 11
  %str176 = bitcast %union.tcu* %arrayidx175 to i8**
  %127 = load i8*, i8** %str176, align 8
  %128 = load i32, i32* %dy, align 4
  %call177 = call i8* @tgoto(i8* %127, i32 0, i32 %128)
  %call178 = call i32 @CalcCost(i8* %call177)
  store i32 %call178, i32* %costy, align 4
  store i32 4, i32* %ym, align 4
  br label %if.end.179

if.end.179:                                       ; preds = %if.then.173, %land.lhs.true.171, %if.then.166
  %129 = load i32, i32* %dy, align 4
  %130 = load i32, i32* %x2.addr, align 4
  %cmp180 = icmp eq i32 %130, 0
  br i1 %cmp180, label %cond.true.181, label %cond.false.182

cond.true.181:                                    ; preds = %if.end.179
  %131 = load %struct.display*, %struct.display** @display, align 8
  %d_NLcost = getelementptr inbounds %struct.display, %struct.display* %131, i32 0, i32 97
  %132 = load i32, i32* %d_NLcost, align 4
  br label %cond.end.183

cond.false.182:                                   ; preds = %if.end.179
  %133 = load %struct.display*, %struct.display** @display, align 8
  %d_DOcost = getelementptr inbounds %struct.display, %struct.display* %133, i32 0, i32 91
  %134 = load i32, i32* %d_DOcost, align 4
  br label %cond.end.183

cond.end.183:                                     ; preds = %cond.false.182, %cond.true.181
  %cond184 = phi i32 [ %132, %cond.true.181 ], [ %134, %cond.false.182 ]
  %mul185 = mul nsw i32 %129, %cond184
  store i32 %mul185, i32* %m, align 4
  %135 = load i32, i32* %costy, align 4
  %cmp186 = icmp slt i32 %mul185, %135
  br i1 %cmp186, label %if.then.187, label %if.end.188

if.then.187:                                      ; preds = %cond.end.183
  %136 = load i32, i32* %m, align 4
  store i32 %136, i32* %costy, align 4
  store i32 3, i32* %ym, align 4
  br label %if.end.188

if.end.188:                                       ; preds = %if.then.187, %cond.end.183
  br label %if.end.218

if.else.189:                                      ; preds = %if.end.164
  %137 = load i32, i32* %dy, align 4
  %cmp190 = icmp slt i32 %137, 0
  br i1 %cmp190, label %if.then.191, label %if.else.216

if.then.191:                                      ; preds = %if.else.189
  %138 = load %struct.display*, %struct.display** @display, align 8
  %d_tcs192 = getelementptr inbounds %struct.display, %struct.display* %138, i32 0, i32 83
  %arrayidx193 = getelementptr inbounds [201 x %union.tcu], [201 x %union.tcu]* %d_tcs192, i32 0, i64 9
  %str194 = bitcast %union.tcu* %arrayidx193 to i8**
  %139 = load i8*, i8** %str194, align 8
  %tobool195 = icmp ne i8* %139, null
  br i1 %tobool195, label %land.lhs.true.196, label %if.end.210

land.lhs.true.196:                                ; preds = %if.then.191
  %140 = load i32, i32* %dy, align 4
  %cmp197 = icmp slt i32 %140, -1
  br i1 %cmp197, label %if.then.203, label %lor.lhs.false.198

lor.lhs.false.198:                                ; preds = %land.lhs.true.196
  %141 = load %struct.display*, %struct.display** @display, align 8
  %d_tcs199 = getelementptr inbounds %struct.display, %struct.display* %141, i32 0, i32 83
  %arrayidx200 = getelementptr inbounds [201 x %union.tcu], [201 x %union.tcu]* %d_tcs199, i32 0, i64 8
  %str201 = bitcast %union.tcu* %arrayidx200 to i8**
  %142 = load i8*, i8** %str201, align 8
  %tobool202 = icmp ne i8* %142, null
  br i1 %tobool202, label %if.end.210, label %if.then.203

if.then.203:                                      ; preds = %lor.lhs.false.198, %land.lhs.true.196
  %143 = load %struct.display*, %struct.display** @display, align 8
  %d_tcs204 = getelementptr inbounds %struct.display, %struct.display* %143, i32 0, i32 83
  %arrayidx205 = getelementptr inbounds [201 x %union.tcu], [201 x %union.tcu]* %d_tcs204, i32 0, i64 9
  %str206 = bitcast %union.tcu* %arrayidx205 to i8**
  %144 = load i8*, i8** %str206, align 8
  %145 = load i32, i32* %dy, align 4
  %sub207 = sub nsw i32 0, %145
  %call208 = call i8* @tgoto(i8* %144, i32 0, i32 %sub207)
  %call209 = call i32 @CalcCost(i8* %call208)
  store i32 %call209, i32* %costy, align 4
  store i32 2, i32* %ym, align 4
  br label %if.end.210

if.end.210:                                       ; preds = %if.then.203, %lor.lhs.false.198, %if.then.191
  %146 = load i32, i32* %dy, align 4
  %sub211 = sub nsw i32 0, %146
  %147 = load %struct.display*, %struct.display** @display, align 8
  %d_UPcost = getelementptr inbounds %struct.display, %struct.display* %147, i32 0, i32 90
  %148 = load i32, i32* %d_UPcost, align 4
  %mul212 = mul nsw i32 %sub211, %148
  store i32 %mul212, i32* %m, align 4
  %149 = load i32, i32* %costy, align 4
  %cmp213 = icmp slt i32 %mul212, %149
  br i1 %cmp213, label %if.then.214, label %if.end.215

if.then.214:                                      ; preds = %if.end.210
  %150 = load i32, i32* %m, align 4
  store i32 %150, i32* %costy, align 4
  store i32 1, i32* %ym, align 4
  br label %if.end.215

if.end.215:                                       ; preds = %if.then.214, %if.end.210
  br label %if.end.217

if.else.216:                                      ; preds = %if.else.189
  store i32 0, i32* %costy, align 4
  br label %if.end.217

if.end.217:                                       ; preds = %if.else.216, %if.end.215
  br label %if.end.218

if.end.218:                                       ; preds = %if.end.217, %if.end.188
  %151 = load i32, i32* %costx, align 4
  %152 = load i32, i32* %costy, align 4
  %add219 = add nsw i32 %151, %152
  %153 = load i32, i32* %CMcost, align 4
  %cmp220 = icmp sge i32 %add219, %153
  br i1 %cmp220, label %if.then.221, label %if.end.222

if.then.221:                                      ; preds = %if.end.218
  br label %DoCM

if.end.222:                                       ; preds = %if.end.218
  %154 = load i32, i32* %xm, align 4
  switch i32 %154, label %sw.default [
    i32 5, label %sw.bb
    i32 6, label %sw.bb.227
    i32 7, label %sw.bb.232
    i32 8, label %sw.bb.241
    i32 10, label %sw.bb.245
    i32 9, label %sw.bb.250
  ]

sw.bb:                                            ; preds = %if.end.222
  br label %while.cond

while.cond:                                       ; preds = %while.body, %sw.bb
  %155 = load i32, i32* %dx, align 4
  %inc = add nsw i32 %155, 1
  store i32 %inc, i32* %dx, align 4
  %cmp223 = icmp slt i32 %155, 0
  br i1 %cmp223, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %156 = load %struct.display*, %struct.display** @display, align 8
  %d_tcs224 = getelementptr inbounds %struct.display, %struct.display* %156, i32 0, i32 83
  %arrayidx225 = getelementptr inbounds [201 x %union.tcu], [201 x %union.tcu]* %d_tcs224, i32 0, i64 13
  %str226 = bitcast %union.tcu* %arrayidx225 to i8**
  %157 = load i8*, i8** %str226, align 8
  call void @AddCStr(i8* %157)
  br label %while.cond

while.end:                                        ; preds = %while.cond
  br label %sw.epilog

sw.bb.227:                                        ; preds = %if.end.222
  %158 = load %struct.display*, %struct.display** @display, align 8
  %d_tcs228 = getelementptr inbounds %struct.display, %struct.display* %158, i32 0, i32 83
  %arrayidx229 = getelementptr inbounds [201 x %union.tcu], [201 x %union.tcu]* %d_tcs228, i32 0, i64 15
  %str230 = bitcast %union.tcu* %arrayidx229 to i8**
  %159 = load i8*, i8** %str230, align 8
  %160 = load i32, i32* %dx, align 4
  %sub231 = sub nsw i32 0, %160
  call void @AddCStr2(i8* %159, i32 %sub231)
  br label %sw.epilog

sw.bb.232:                                        ; preds = %if.end.222
  br label %while.cond.233

while.cond.233:                                   ; preds = %while.body.236, %sw.bb.232
  %161 = load i32, i32* %dx, align 4
  %dec234 = add nsw i32 %161, -1
  store i32 %dec234, i32* %dx, align 4
  %cmp235 = icmp sgt i32 %161, 0
  br i1 %cmp235, label %while.body.236, label %while.end.240

while.body.236:                                   ; preds = %while.cond.233
  %162 = load %struct.display*, %struct.display** @display, align 8
  %d_tcs237 = getelementptr inbounds %struct.display, %struct.display* %162, i32 0, i32 83
  %arrayidx238 = getelementptr inbounds [201 x %union.tcu], [201 x %union.tcu]* %d_tcs237, i32 0, i64 16
  %str239 = bitcast %union.tcu* %arrayidx238 to i8**
  %163 = load i8*, i8** %str239, align 8
  call void @AddCStr(i8* %163)
  br label %while.cond.233

while.end.240:                                    ; preds = %while.cond.233
  br label %sw.epilog

sw.bb.241:                                        ; preds = %if.end.222
  %164 = load %struct.display*, %struct.display** @display, align 8
  %d_tcs242 = getelementptr inbounds %struct.display, %struct.display* %164, i32 0, i32 83
  %arrayidx243 = getelementptr inbounds [201 x %union.tcu], [201 x %union.tcu]* %d_tcs242, i32 0, i64 17
  %str244 = bitcast %union.tcu* %arrayidx243 to i8**
  %165 = load i8*, i8** %str244, align 8
  %166 = load i32, i32* %dx, align 4
  call void @AddCStr2(i8* %165, i32 %166)
  br label %sw.epilog

sw.bb.245:                                        ; preds = %if.end.222
  %167 = load %struct.display*, %struct.display** @display, align 8
  %d_tcs246 = getelementptr inbounds %struct.display, %struct.display* %167, i32 0, i32 83
  %arrayidx247 = getelementptr inbounds [201 x %union.tcu], [201 x %union.tcu]* %d_tcs246, i32 0, i64 7
  %str248 = bitcast %union.tcu* %arrayidx247 to i8**
  %168 = load i8*, i8** %str248, align 8
  call void @AddCStr(i8* %168)
  %169 = load %struct.display*, %struct.display** @display, align 8
  %d_x249 = getelementptr inbounds %struct.display, %struct.display* %169, i32 0, i32 22
  store i32 0, i32* %d_x249, align 4
  store i32 0, i32* %x1, align 4
  br label %sw.bb.250

sw.bb.250:                                        ; preds = %if.end.222, %sw.bb.245
  %170 = load i32, i32* %x1, align 4
  %171 = load i32, i32* %x2.addr, align 4
  %cmp251 = icmp slt i32 %170, %171
  br i1 %cmp251, label %if.then.252, label %if.end.255

if.then.252:                                      ; preds = %sw.bb.250
  %172 = load i32, i32* %y1, align 4
  %173 = load i32, i32* %x1, align 4
  %174 = load i32, i32* %x2.addr, align 4
  %sub253 = sub nsw i32 %174, 1
  %call254 = call i32 @CallRewrite(i32 %172, i32 %173, i32 %sub253, i32 1)
  br label %if.end.255

if.end.255:                                       ; preds = %if.then.252, %sw.bb.250
  br label %sw.epilog

sw.default:                                       ; preds = %if.end.222
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.default, %if.end.255, %sw.bb.241, %while.end.240, %sw.bb.227, %while.end
  %175 = load i32, i32* %ym, align 4
  switch i32 %175, label %sw.default.291 [
    i32 1, label %sw.bb.256
    i32 2, label %sw.bb.265
    i32 3, label %sw.bb.270
    i32 4, label %sw.bb.287
  ]

sw.bb.256:                                        ; preds = %sw.epilog
  br label %while.cond.257

while.cond.257:                                   ; preds = %while.body.260, %sw.bb.256
  %176 = load i32, i32* %dy, align 4
  %inc258 = add nsw i32 %176, 1
  store i32 %inc258, i32* %dy, align 4
  %cmp259 = icmp slt i32 %176, 0
  br i1 %cmp259, label %while.body.260, label %while.end.264

while.body.260:                                   ; preds = %while.cond.257
  %177 = load %struct.display*, %struct.display** @display, align 8
  %d_tcs261 = getelementptr inbounds %struct.display, %struct.display* %177, i32 0, i32 83
  %arrayidx262 = getelementptr inbounds [201 x %union.tcu], [201 x %union.tcu]* %d_tcs261, i32 0, i64 8
  %str263 = bitcast %union.tcu* %arrayidx262 to i8**
  %178 = load i8*, i8** %str263, align 8
  call void @AddCStr(i8* %178)
  br label %while.cond.257

while.end.264:                                    ; preds = %while.cond.257
  br label %sw.epilog.292

sw.bb.265:                                        ; preds = %sw.epilog
  %179 = load %struct.display*, %struct.display** @display, align 8
  %d_tcs266 = getelementptr inbounds %struct.display, %struct.display* %179, i32 0, i32 83
  %arrayidx267 = getelementptr inbounds [201 x %union.tcu], [201 x %union.tcu]* %d_tcs266, i32 0, i64 9
  %str268 = bitcast %union.tcu* %arrayidx267 to i8**
  %180 = load i8*, i8** %str268, align 8
  %181 = load i32, i32* %dy, align 4
  %sub269 = sub nsw i32 0, %181
  call void @AddCStr2(i8* %180, i32 %sub269)
  br label %sw.epilog.292

sw.bb.270:                                        ; preds = %sw.epilog
  %182 = load i32, i32* %x2.addr, align 4
  %cmp271 = icmp eq i32 %182, 0
  br i1 %cmp271, label %cond.true.272, label %cond.false.276

cond.true.272:                                    ; preds = %sw.bb.270
  %183 = load %struct.display*, %struct.display** @display, align 8
  %d_tcs273 = getelementptr inbounds %struct.display, %struct.display* %183, i32 0, i32 83
  %arrayidx274 = getelementptr inbounds [201 x %union.tcu], [201 x %union.tcu]* %d_tcs273, i32 0, i64 19
  %str275 = bitcast %union.tcu* %arrayidx274 to i8**
  %184 = load i8*, i8** %str275, align 8
  br label %cond.end.280

cond.false.276:                                   ; preds = %sw.bb.270
  %185 = load %struct.display*, %struct.display** @display, align 8
  %d_tcs277 = getelementptr inbounds %struct.display, %struct.display* %185, i32 0, i32 83
  %arrayidx278 = getelementptr inbounds [201 x %union.tcu], [201 x %union.tcu]* %d_tcs277, i32 0, i64 10
  %str279 = bitcast %union.tcu* %arrayidx278 to i8**
  %186 = load i8*, i8** %str279, align 8
  br label %cond.end.280

cond.end.280:                                     ; preds = %cond.false.276, %cond.true.272
  %cond281 = phi i8* [ %184, %cond.true.272 ], [ %186, %cond.false.276 ]
  store i8* %cond281, i8** %s, align 8
  br label %while.cond.282

while.cond.282:                                   ; preds = %while.body.285, %cond.end.280
  %187 = load i32, i32* %dy, align 4
  %dec283 = add nsw i32 %187, -1
  store i32 %dec283, i32* %dy, align 4
  %cmp284 = icmp sgt i32 %187, 0
  br i1 %cmp284, label %while.body.285, label %while.end.286

while.body.285:                                   ; preds = %while.cond.282
  %188 = load i8*, i8** %s, align 8
  call void @AddCStr(i8* %188)
  br label %while.cond.282

while.end.286:                                    ; preds = %while.cond.282
  br label %sw.epilog.292

sw.bb.287:                                        ; preds = %sw.epilog
  %189 = load %struct.display*, %struct.display** @display, align 8
  %d_tcs288 = getelementptr inbounds %struct.display, %struct.display* %189, i32 0, i32 83
  %arrayidx289 = getelementptr inbounds [201 x %union.tcu], [201 x %union.tcu]* %d_tcs288, i32 0, i64 11
  %str290 = bitcast %union.tcu* %arrayidx289 to i8**
  %190 = load i8*, i8** %str290, align 8
  %191 = load i32, i32* %dy, align 4
  call void @AddCStr2(i8* %190, i32 %191)
  br label %sw.epilog.292

sw.default.291:                                   ; preds = %sw.epilog
  br label %sw.epilog.292

sw.epilog.292:                                    ; preds = %sw.default.291, %sw.bb.287, %while.end.286, %sw.bb.265, %while.end.264
  %192 = load i32, i32* %x2.addr, align 4
  %193 = load %struct.display*, %struct.display** @display, align 8
  %d_x293 = getelementptr inbounds %struct.display, %struct.display* %193, i32 0, i32 22
  store i32 %192, i32* %d_x293, align 4
  %194 = load i32, i32* %y2.addr, align 4
  %195 = load %struct.display*, %struct.display** @display, align 8
  %d_y294 = getelementptr inbounds %struct.display, %struct.display* %195, i32 0, i32 23
  store i32 %194, i32* %d_y294, align 4
  br label %return

return:                                           ; preds = %sw.epilog.292, %if.end.55, %if.then.19, %if.then
  ret void
}

; Function Attrs: nounwind uwtable
define void @PUTCHAR(i32 %c) #0 {
entry:
  %c.addr = alloca i32, align 4
  store i32 %c, i32* %c.addr, align 4
  br label %do.body

do.body:                                          ; preds = %entry
  br label %do.end

do.end:                                           ; preds = %do.body
  %0 = load %struct.display*, %struct.display** @display, align 8
  %d_insert = getelementptr inbounds %struct.display, %struct.display* %0, i32 0, i32 31
  %1 = load i32, i32* %d_insert, align 4
  %tobool = icmp ne i32 %1, 0
  br i1 %tobool, label %land.lhs.true, label %if.end

land.lhs.true:                                    ; preds = %do.end
  %2 = load %struct.display*, %struct.display** @display, align 8
  %d_x = getelementptr inbounds %struct.display, %struct.display* %2, i32 0, i32 22
  %3 = load i32, i32* %d_x, align 4
  %4 = load %struct.display*, %struct.display** @display, align 8
  %d_width = getelementptr inbounds %struct.display, %struct.display* %4, i32 0, i32 16
  %5 = load i32, i32* %d_width, align 4
  %sub = sub nsw i32 %5, 1
  %cmp = icmp slt i32 %3, %sub
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %land.lhs.true
  call void @InsertMode(i32 0)
  br label %if.end

if.end:                                           ; preds = %if.then, %land.lhs.true, %do.end
  %6 = load i32, i32* %c.addr, align 4
  call void @RAW_PUTCHAR(i32 %6)
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @RAW_PUTCHAR(i32 %c) #0 {
entry:
  %c.addr = alloca i32, align 4
  %t = alloca i32, align 4
  store i32 %c, i32* %c.addr, align 4
  br label %do.body

do.body:                                          ; preds = %entry
  br label %do.end

do.end:                                           ; preds = %do.body
  %0 = load %struct.display*, %struct.display** @display, align 8
  %d_encoding = getelementptr inbounds %struct.display, %struct.display* %0, i32 0, i32 28
  %1 = load i32, i32* %d_encoding, align 4
  %cmp = icmp eq i32 %1, 8
  br i1 %cmp, label %if.then, label %if.end.84

if.then:                                          ; preds = %do.end
  %2 = load i32, i32* %c.addr, align 4
  %and = and i32 %2, 255
  %3 = load %struct.display*, %struct.display** @display, align 8
  %d_rend = getelementptr inbounds %struct.display, %struct.display* %3, i32 0, i32 24
  %font = getelementptr inbounds %struct.mchar, %struct.mchar* %d_rend, i32 0, i32 2
  %4 = load i8, i8* %font, align 1
  %conv = zext i8 %4 to i32
  %shl = shl i32 %conv, 8
  %or = or i32 %and, %shl
  %5 = load %struct.display*, %struct.display** @display, align 8
  %d_rend1 = getelementptr inbounds %struct.display, %struct.display* %5, i32 0, i32 24
  %fontx = getelementptr inbounds %struct.mchar, %struct.mchar* %d_rend1, i32 0, i32 3
  %6 = load i8, i8* %fontx, align 1
  %conv2 = zext i8 %6 to i32
  %shl3 = shl i32 %conv2, 16
  %or4 = or i32 %or, %shl3
  store i32 %or4, i32* %c.addr, align 4
  %7 = load %struct.display*, %struct.display** @display, align 8
  %d_mbcs = getelementptr inbounds %struct.display, %struct.display* %7, i32 0, i32 27
  %8 = load i32, i32* %d_mbcs, align 4
  %tobool = icmp ne i32 %8, 0
  br i1 %tobool, label %if.then.5, label %if.else

if.then.5:                                        ; preds = %if.then
  %9 = load %struct.display*, %struct.display** @display, align 8
  %d_mbcs6 = getelementptr inbounds %struct.display, %struct.display* %9, i32 0, i32 27
  %10 = load i32, i32* %d_mbcs6, align 4
  store i32 %10, i32* %c.addr, align 4
  %11 = load %struct.display*, %struct.display** @display, align 8
  %d_x = getelementptr inbounds %struct.display, %struct.display* %11, i32 0, i32 22
  %12 = load i32, i32* %d_x, align 4
  %13 = load %struct.display*, %struct.display** @display, align 8
  %d_width = getelementptr inbounds %struct.display, %struct.display* %13, i32 0, i32 16
  %14 = load i32, i32* %d_width, align 4
  %cmp7 = icmp eq i32 %12, %14
  br i1 %cmp7, label %if.then.9, label %if.end

if.then.9:                                        ; preds = %if.then.5
  %15 = load %struct.display*, %struct.display** @display, align 8
  %d_tcs = getelementptr inbounds %struct.display, %struct.display* %15, i32 0, i32 83
  %arrayidx = getelementptr inbounds [201 x %union.tcu], [201 x %union.tcu]* %d_tcs, i32 0, i64 83
  %flg = bitcast %union.tcu* %arrayidx to i32*
  %16 = load i32, i32* %flg, align 4
  %tobool10 = icmp ne i32 %16, 0
  %cond = select i1 %tobool10, i32 1, i32 -1
  %17 = load %struct.display*, %struct.display** @display, align 8
  %d_x11 = getelementptr inbounds %struct.display, %struct.display* %17, i32 0, i32 22
  %18 = load i32, i32* %d_x11, align 4
  %add = add nsw i32 %18, %cond
  store i32 %add, i32* %d_x11, align 4
  br label %if.end

if.end:                                           ; preds = %if.then.9, %if.then.5
  %19 = load %struct.display*, %struct.display** @display, align 8
  %d_mbcs12 = getelementptr inbounds %struct.display, %struct.display* %19, i32 0, i32 27
  store i32 0, i32* %d_mbcs12, align 4
  br label %if.end.18

if.else:                                          ; preds = %if.then
  %20 = load i32, i32* %c.addr, align 4
  %call = call i32 @utf8_isdouble(i32 %20)
  %tobool13 = icmp ne i32 %call, 0
  br i1 %tobool13, label %if.then.14, label %if.end.17

if.then.14:                                       ; preds = %if.else
  %21 = load i32, i32* %c.addr, align 4
  %22 = load %struct.display*, %struct.display** @display, align 8
  %d_mbcs15 = getelementptr inbounds %struct.display, %struct.display* %22, i32 0, i32 27
  store i32 %21, i32* %d_mbcs15, align 4
  %23 = load %struct.display*, %struct.display** @display, align 8
  %d_x16 = getelementptr inbounds %struct.display, %struct.display* %23, i32 0, i32 22
  %24 = load i32, i32* %d_x16, align 4
  %inc = add nsw i32 %24, 1
  store i32 %inc, i32* %d_x16, align 4
  br label %if.end.232

if.end.17:                                        ; preds = %if.else
  br label %if.end.18

if.end.18:                                        ; preds = %if.end.17, %if.end
  %25 = load i32, i32* %c.addr, align 4
  %cmp19 = icmp slt i32 %25, 32
  br i1 %cmp19, label %if.then.21, label %if.end.35

if.then.21:                                       ; preds = %if.end.18
  %26 = load %struct.display*, %struct.display** @display, align 8
  %d_tcs22 = getelementptr inbounds %struct.display, %struct.display* %26, i32 0, i32 83
  %arrayidx23 = getelementptr inbounds [201 x %union.tcu], [201 x %union.tcu]* %d_tcs22, i32 0, i64 98
  %str = bitcast %union.tcu* %arrayidx23 to i8**
  %27 = load i8*, i8** %str, align 8
  call void @AddCStr2(i8* %27, i32 48)
  br label %do.body.24

do.body.24:                                       ; preds = %if.then.21
  %28 = load %struct.display*, %struct.display** @display, align 8
  %d_obuffree = getelementptr inbounds %struct.display, %struct.display* %28, i32 0, i32 72
  %29 = load i32, i32* %d_obuffree, align 4
  %dec = add nsw i32 %29, -1
  store i32 %dec, i32* %d_obuffree, align 4
  %cmp25 = icmp sle i32 %dec, 0
  br i1 %cmp25, label %if.then.27, label %if.end.28

if.then.27:                                       ; preds = %do.body.24
  call void @Resize_obuf()
  br label %if.end.28

if.end.28:                                        ; preds = %if.then.27, %do.body.24
  %30 = load i32, i32* %c.addr, align 4
  %add29 = add nsw i32 %30, 95
  %conv30 = trunc i32 %add29 to i8
  %31 = load %struct.display*, %struct.display** @display, align 8
  %d_obufp = getelementptr inbounds %struct.display, %struct.display* %31, i32 0, i32 71
  %32 = load i8*, i8** %d_obufp, align 8
  %incdec.ptr = getelementptr inbounds i8, i8* %32, i32 1
  store i8* %incdec.ptr, i8** %d_obufp, align 8
  store i8 %conv30, i8* %32, align 1
  br label %do.end.31

do.end.31:                                        ; preds = %if.end.28
  %33 = load %struct.display*, %struct.display** @display, align 8
  %d_tcs32 = getelementptr inbounds %struct.display, %struct.display* %33, i32 0, i32 83
  %arrayidx33 = getelementptr inbounds [201 x %union.tcu], [201 x %union.tcu]* %d_tcs32, i32 0, i64 99
  %str34 = bitcast %union.tcu* %arrayidx33 to i8**
  %34 = load i8*, i8** %str34, align 8
  call void @AddCStr(i8* %34)
  br label %addedutf8

if.end.35:                                        ; preds = %if.end.18
  %35 = load i32, i32* %c.addr, align 4
  %cmp36 = icmp slt i32 %35, 128
  br i1 %cmp36, label %if.then.38, label %if.else.82

if.then.38:                                       ; preds = %if.end.35
  %36 = load %struct.display*, %struct.display** @display, align 8
  %d_xtable = getelementptr inbounds %struct.display, %struct.display* %36, i32 0, i32 89
  %37 = load i8***, i8**** %d_xtable, align 8
  %tobool39 = icmp ne i8*** %37, null
  br i1 %tobool39, label %land.lhs.true, label %if.else.69

land.lhs.true:                                    ; preds = %if.then.38
  %38 = load %struct.display*, %struct.display** @display, align 8
  %d_rend40 = getelementptr inbounds %struct.display, %struct.display* %38, i32 0, i32 24
  %font41 = getelementptr inbounds %struct.mchar, %struct.mchar* %d_rend40, i32 0, i32 2
  %39 = load i8, i8* %font41, align 1
  %conv42 = zext i8 %39 to i32
  %idxprom = sext i32 %conv42 to i64
  %40 = load %struct.display*, %struct.display** @display, align 8
  %d_xtable43 = getelementptr inbounds %struct.display, %struct.display* %40, i32 0, i32 89
  %41 = load i8***, i8**** %d_xtable43, align 8
  %arrayidx44 = getelementptr inbounds i8**, i8*** %41, i64 %idxprom
  %42 = load i8**, i8*** %arrayidx44, align 8
  %tobool45 = icmp ne i8** %42, null
  br i1 %tobool45, label %land.lhs.true.46, label %if.else.69

land.lhs.true.46:                                 ; preds = %land.lhs.true
  %43 = load i32, i32* %c.addr, align 4
  %conv47 = trunc i32 %43 to i8
  %conv48 = zext i8 %conv47 to i32
  %idxprom49 = sext i32 %conv48 to i64
  %44 = load %struct.display*, %struct.display** @display, align 8
  %d_rend50 = getelementptr inbounds %struct.display, %struct.display* %44, i32 0, i32 24
  %font51 = getelementptr inbounds %struct.mchar, %struct.mchar* %d_rend50, i32 0, i32 2
  %45 = load i8, i8* %font51, align 1
  %conv52 = zext i8 %45 to i32
  %idxprom53 = sext i32 %conv52 to i64
  %46 = load %struct.display*, %struct.display** @display, align 8
  %d_xtable54 = getelementptr inbounds %struct.display, %struct.display* %46, i32 0, i32 89
  %47 = load i8***, i8**** %d_xtable54, align 8
  %arrayidx55 = getelementptr inbounds i8**, i8*** %47, i64 %idxprom53
  %48 = load i8**, i8*** %arrayidx55, align 8
  %arrayidx56 = getelementptr inbounds i8*, i8** %48, i64 %idxprom49
  %49 = load i8*, i8** %arrayidx56, align 8
  %tobool57 = icmp ne i8* %49, null
  br i1 %tobool57, label %if.then.58, label %if.else.69

if.then.58:                                       ; preds = %land.lhs.true.46
  %50 = load i32, i32* %c.addr, align 4
  %conv59 = trunc i32 %50 to i8
  %conv60 = zext i8 %conv59 to i32
  %idxprom61 = sext i32 %conv60 to i64
  %51 = load %struct.display*, %struct.display** @display, align 8
  %d_rend62 = getelementptr inbounds %struct.display, %struct.display* %51, i32 0, i32 24
  %font63 = getelementptr inbounds %struct.mchar, %struct.mchar* %d_rend62, i32 0, i32 2
  %52 = load i8, i8* %font63, align 1
  %conv64 = zext i8 %52 to i32
  %idxprom65 = sext i32 %conv64 to i64
  %53 = load %struct.display*, %struct.display** @display, align 8
  %d_xtable66 = getelementptr inbounds %struct.display, %struct.display* %53, i32 0, i32 89
  %54 = load i8***, i8**** %d_xtable66, align 8
  %arrayidx67 = getelementptr inbounds i8**, i8*** %54, i64 %idxprom65
  %55 = load i8**, i8*** %arrayidx67, align 8
  %arrayidx68 = getelementptr inbounds i8*, i8** %55, i64 %idxprom61
  %56 = load i8*, i8** %arrayidx68, align 8
  call void @AddStr(i8* %56)
  br label %if.end.81

if.else.69:                                       ; preds = %land.lhs.true.46, %land.lhs.true, %if.then.38
  br label %do.body.70

do.body.70:                                       ; preds = %if.else.69
  %57 = load %struct.display*, %struct.display** @display, align 8
  %d_obuffree71 = getelementptr inbounds %struct.display, %struct.display* %57, i32 0, i32 72
  %58 = load i32, i32* %d_obuffree71, align 4
  %dec72 = add nsw i32 %58, -1
  store i32 %dec72, i32* %d_obuffree71, align 4
  %cmp73 = icmp sle i32 %dec72, 0
  br i1 %cmp73, label %if.then.75, label %if.end.76

if.then.75:                                       ; preds = %do.body.70
  call void @Resize_obuf()
  br label %if.end.76

if.end.76:                                        ; preds = %if.then.75, %do.body.70
  %59 = load i32, i32* %c.addr, align 4
  %conv77 = trunc i32 %59 to i8
  %60 = load %struct.display*, %struct.display** @display, align 8
  %d_obufp78 = getelementptr inbounds %struct.display, %struct.display* %60, i32 0, i32 71
  %61 = load i8*, i8** %d_obufp78, align 8
  %incdec.ptr79 = getelementptr inbounds i8, i8* %61, i32 1
  store i8* %incdec.ptr79, i8** %d_obufp78, align 8
  store i8 %conv77, i8* %61, align 1
  br label %do.end.80

do.end.80:                                        ; preds = %if.end.76
  br label %if.end.81

if.end.81:                                        ; preds = %do.end.80, %if.then.58
  br label %if.end.83

if.else.82:                                       ; preds = %if.end.35
  %62 = load i32, i32* %c.addr, align 4
  call void @AddUtf8(i32 %62)
  br label %if.end.83

if.end.83:                                        ; preds = %if.else.82, %if.end.81
  br label %addedutf8

if.end.84:                                        ; preds = %do.end
  %63 = load %struct.display*, %struct.display** @display, align 8
  %d_rend85 = getelementptr inbounds %struct.display, %struct.display* %63, i32 0, i32 24
  %font86 = getelementptr inbounds %struct.mchar, %struct.mchar* %d_rend85, i32 0, i32 2
  %64 = load i8, i8* %font86, align 1
  %conv87 = zext i8 %64 to i32
  %tobool88 = icmp ne i32 %conv87, 0
  br i1 %tobool88, label %land.lhs.true.89, label %if.end.122

land.lhs.true.89:                                 ; preds = %if.end.84
  %65 = load %struct.display*, %struct.display** @display, align 8
  %d_rend90 = getelementptr inbounds %struct.display, %struct.display* %65, i32 0, i32 24
  %font91 = getelementptr inbounds %struct.mchar, %struct.mchar* %d_rend90, i32 0, i32 2
  %66 = load i8, i8* %font91, align 1
  %conv92 = zext i8 %66 to i32
  %and93 = and i32 %conv92, 96
  %cmp94 = icmp eq i32 %and93, 0
  br i1 %cmp94, label %if.then.96, label %if.end.122

if.then.96:                                       ; preds = %land.lhs.true.89
  %67 = load i32, i32* %c.addr, align 4
  store i32 %67, i32* %t, align 4
  %68 = load %struct.display*, %struct.display** @display, align 8
  %d_mbcs97 = getelementptr inbounds %struct.display, %struct.display* %68, i32 0, i32 27
  %69 = load i32, i32* %d_mbcs97, align 4
  %cmp98 = icmp eq i32 %69, 0
  br i1 %cmp98, label %if.then.100, label %if.end.104

if.then.100:                                      ; preds = %if.then.96
  %70 = load i32, i32* %c.addr, align 4
  %71 = load %struct.display*, %struct.display** @display, align 8
  %d_mbcs101 = getelementptr inbounds %struct.display, %struct.display* %71, i32 0, i32 27
  store i32 %70, i32* %d_mbcs101, align 4
  %72 = load %struct.display*, %struct.display** @display, align 8
  %d_x102 = getelementptr inbounds %struct.display, %struct.display* %72, i32 0, i32 22
  %73 = load i32, i32* %d_x102, align 4
  %inc103 = add nsw i32 %73, 1
  store i32 %inc103, i32* %d_x102, align 4
  br label %if.end.232

if.end.104:                                       ; preds = %if.then.96
  %74 = load %struct.display*, %struct.display** @display, align 8
  %d_x105 = getelementptr inbounds %struct.display, %struct.display* %74, i32 0, i32 22
  %75 = load i32, i32* %d_x105, align 4
  %dec106 = add nsw i32 %75, -1
  store i32 %dec106, i32* %d_x105, align 4
  %76 = load %struct.display*, %struct.display** @display, align 8
  %d_x107 = getelementptr inbounds %struct.display, %struct.display* %76, i32 0, i32 22
  %77 = load i32, i32* %d_x107, align 4
  %78 = load %struct.display*, %struct.display** @display, align 8
  %d_width108 = getelementptr inbounds %struct.display, %struct.display* %78, i32 0, i32 16
  %79 = load i32, i32* %d_width108, align 4
  %sub = sub nsw i32 %79, 1
  %cmp109 = icmp eq i32 %77, %sub
  br i1 %cmp109, label %if.then.111, label %if.end.119

if.then.111:                                      ; preds = %if.end.104
  %80 = load %struct.display*, %struct.display** @display, align 8
  %d_tcs112 = getelementptr inbounds %struct.display, %struct.display* %80, i32 0, i32 83
  %arrayidx113 = getelementptr inbounds [201 x %union.tcu], [201 x %union.tcu]* %d_tcs112, i32 0, i64 83
  %flg114 = bitcast %union.tcu* %arrayidx113 to i32*
  %81 = load i32, i32* %flg114, align 4
  %tobool115 = icmp ne i32 %81, 0
  %cond116 = select i1 %tobool115, i32 1, i32 -1
  %82 = load %struct.display*, %struct.display** @display, align 8
  %d_x117 = getelementptr inbounds %struct.display, %struct.display* %82, i32 0, i32 22
  %83 = load i32, i32* %d_x117, align 4
  %add118 = add nsw i32 %83, %cond116
  store i32 %add118, i32* %d_x117, align 4
  br label %if.end.119

if.end.119:                                       ; preds = %if.then.111, %if.end.104
  %84 = load %struct.display*, %struct.display** @display, align 8
  %d_mbcs120 = getelementptr inbounds %struct.display, %struct.display* %84, i32 0, i32 27
  %85 = load i32, i32* %d_mbcs120, align 4
  store i32 %85, i32* %c.addr, align 4
  %86 = load i32, i32* %t, align 4
  %87 = load %struct.display*, %struct.display** @display, align 8
  %d_mbcs121 = getelementptr inbounds %struct.display, %struct.display* %87, i32 0, i32 27
  store i32 %86, i32* %d_mbcs121, align 4
  br label %if.end.122

if.end.122:                                       ; preds = %if.end.119, %land.lhs.true.89, %if.end.84
  %88 = load %struct.display*, %struct.display** @display, align 8
  %d_encoding123 = getelementptr inbounds %struct.display, %struct.display* %88, i32 0, i32 28
  %89 = load i32, i32* %d_encoding123, align 4
  %tobool124 = icmp ne i32 %89, 0
  br i1 %tobool124, label %if.then.125, label %if.end.127

if.then.125:                                      ; preds = %if.end.122
  %90 = load i32, i32* %c.addr, align 4
  %call126 = call i32 @PrepareEncodedChar(i32 %90)
  store i32 %call126, i32* %c.addr, align 4
  br label %if.end.127

if.end.127:                                       ; preds = %if.then.125, %if.end.122
  br label %kanjiloop

kanjiloop:                                        ; preds = %if.then.229, %if.end.127
  %91 = load %struct.display*, %struct.display** @display, align 8
  %d_xtable128 = getelementptr inbounds %struct.display, %struct.display* %91, i32 0, i32 89
  %92 = load i8***, i8**** %d_xtable128, align 8
  %tobool129 = icmp ne i8*** %92, null
  br i1 %tobool129, label %land.lhs.true.130, label %if.else.161

land.lhs.true.130:                                ; preds = %kanjiloop
  %93 = load %struct.display*, %struct.display** @display, align 8
  %d_rend131 = getelementptr inbounds %struct.display, %struct.display* %93, i32 0, i32 24
  %font132 = getelementptr inbounds %struct.mchar, %struct.mchar* %d_rend131, i32 0, i32 2
  %94 = load i8, i8* %font132, align 1
  %conv133 = zext i8 %94 to i32
  %idxprom134 = sext i32 %conv133 to i64
  %95 = load %struct.display*, %struct.display** @display, align 8
  %d_xtable135 = getelementptr inbounds %struct.display, %struct.display* %95, i32 0, i32 89
  %96 = load i8***, i8**** %d_xtable135, align 8
  %arrayidx136 = getelementptr inbounds i8**, i8*** %96, i64 %idxprom134
  %97 = load i8**, i8*** %arrayidx136, align 8
  %tobool137 = icmp ne i8** %97, null
  br i1 %tobool137, label %land.lhs.true.138, label %if.else.161

land.lhs.true.138:                                ; preds = %land.lhs.true.130
  %98 = load i32, i32* %c.addr, align 4
  %conv139 = trunc i32 %98 to i8
  %conv140 = zext i8 %conv139 to i32
  %idxprom141 = sext i32 %conv140 to i64
  %99 = load %struct.display*, %struct.display** @display, align 8
  %d_rend142 = getelementptr inbounds %struct.display, %struct.display* %99, i32 0, i32 24
  %font143 = getelementptr inbounds %struct.mchar, %struct.mchar* %d_rend142, i32 0, i32 2
  %100 = load i8, i8* %font143, align 1
  %conv144 = zext i8 %100 to i32
  %idxprom145 = sext i32 %conv144 to i64
  %101 = load %struct.display*, %struct.display** @display, align 8
  %d_xtable146 = getelementptr inbounds %struct.display, %struct.display* %101, i32 0, i32 89
  %102 = load i8***, i8**** %d_xtable146, align 8
  %arrayidx147 = getelementptr inbounds i8**, i8*** %102, i64 %idxprom145
  %103 = load i8**, i8*** %arrayidx147, align 8
  %arrayidx148 = getelementptr inbounds i8*, i8** %103, i64 %idxprom141
  %104 = load i8*, i8** %arrayidx148, align 8
  %tobool149 = icmp ne i8* %104, null
  br i1 %tobool149, label %if.then.150, label %if.else.161

if.then.150:                                      ; preds = %land.lhs.true.138
  %105 = load i32, i32* %c.addr, align 4
  %conv151 = trunc i32 %105 to i8
  %conv152 = zext i8 %conv151 to i32
  %idxprom153 = sext i32 %conv152 to i64
  %106 = load %struct.display*, %struct.display** @display, align 8
  %d_rend154 = getelementptr inbounds %struct.display, %struct.display* %106, i32 0, i32 24
  %font155 = getelementptr inbounds %struct.mchar, %struct.mchar* %d_rend154, i32 0, i32 2
  %107 = load i8, i8* %font155, align 1
  %conv156 = zext i8 %107 to i32
  %idxprom157 = sext i32 %conv156 to i64
  %108 = load %struct.display*, %struct.display** @display, align 8
  %d_xtable158 = getelementptr inbounds %struct.display, %struct.display* %108, i32 0, i32 89
  %109 = load i8***, i8**** %d_xtable158, align 8
  %arrayidx159 = getelementptr inbounds i8**, i8*** %109, i64 %idxprom157
  %110 = load i8**, i8*** %arrayidx159, align 8
  %arrayidx160 = getelementptr inbounds i8*, i8** %110, i64 %idxprom153
  %111 = load i8*, i8** %arrayidx160, align 8
  call void @AddStr(i8* %111)
  br label %if.end.184

if.else.161:                                      ; preds = %land.lhs.true.138, %land.lhs.true.130, %kanjiloop
  br label %do.body.162

do.body.162:                                      ; preds = %if.else.161
  %112 = load %struct.display*, %struct.display** @display, align 8
  %d_obuffree163 = getelementptr inbounds %struct.display, %struct.display* %112, i32 0, i32 72
  %113 = load i32, i32* %d_obuffree163, align 4
  %dec164 = add nsw i32 %113, -1
  store i32 %dec164, i32* %d_obuffree163, align 4
  %cmp165 = icmp sle i32 %dec164, 0
  br i1 %cmp165, label %if.then.167, label %if.end.168

if.then.167:                                      ; preds = %do.body.162
  call void @Resize_obuf()
  br label %if.end.168

if.end.168:                                       ; preds = %if.then.167, %do.body.162
  %114 = load %struct.display*, %struct.display** @display, align 8
  %d_rend169 = getelementptr inbounds %struct.display, %struct.display* %114, i32 0, i32 24
  %font170 = getelementptr inbounds %struct.mchar, %struct.mchar* %d_rend169, i32 0, i32 2
  %115 = load i8, i8* %font170, align 1
  %conv171 = zext i8 %115 to i32
  %cmp172 = icmp ne i32 %conv171, 48
  br i1 %cmp172, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.end.168
  %116 = load i32, i32* %c.addr, align 4
  br label %cond.end

cond.false:                                       ; preds = %if.end.168
  %117 = load i32, i32* %c.addr, align 4
  %conv174 = trunc i32 %117 to i8
  %conv175 = zext i8 %conv174 to i32
  %idxprom176 = sext i32 %conv175 to i64
  %118 = load %struct.display*, %struct.display** @display, align 8
  %d_c0_tab = getelementptr inbounds %struct.display, %struct.display* %118, i32 0, i32 88
  %arrayidx177 = getelementptr inbounds [256 x i8], [256 x i8]* %d_c0_tab, i32 0, i64 %idxprom176
  %119 = load i8, i8* %arrayidx177, align 1
  %conv178 = sext i8 %119 to i32
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond179 = phi i32 [ %116, %cond.true ], [ %conv178, %cond.false ]
  %conv180 = trunc i32 %cond179 to i8
  %120 = load %struct.display*, %struct.display** @display, align 8
  %d_obufp181 = getelementptr inbounds %struct.display, %struct.display* %120, i32 0, i32 71
  %121 = load i8*, i8** %d_obufp181, align 8
  %incdec.ptr182 = getelementptr inbounds i8, i8* %121, i32 1
  store i8* %incdec.ptr182, i8** %d_obufp181, align 8
  store i8 %conv180, i8* %121, align 1
  br label %do.end.183

do.end.183:                                       ; preds = %cond.end
  br label %if.end.184

if.end.184:                                       ; preds = %do.end.183, %if.then.150
  br label %addedutf8

addedutf8:                                        ; preds = %if.end.184, %if.end.83, %do.end.31
  %122 = load %struct.display*, %struct.display** @display, align 8
  %d_x185 = getelementptr inbounds %struct.display, %struct.display* %122, i32 0, i32 22
  %123 = load i32, i32* %d_x185, align 4
  %inc186 = add nsw i32 %123, 1
  store i32 %inc186, i32* %d_x185, align 4
  %124 = load %struct.display*, %struct.display** @display, align 8
  %d_width187 = getelementptr inbounds %struct.display, %struct.display* %124, i32 0, i32 16
  %125 = load i32, i32* %d_width187, align 4
  %cmp188 = icmp sge i32 %inc186, %125
  br i1 %cmp188, label %if.then.190, label %if.end.226

if.then.190:                                      ; preds = %addedutf8
  %126 = load %struct.display*, %struct.display** @display, align 8
  %d_tcs191 = getelementptr inbounds %struct.display, %struct.display* %126, i32 0, i32 83
  %arrayidx192 = getelementptr inbounds [201 x %union.tcu], [201 x %union.tcu]* %d_tcs191, i32 0, i64 83
  %flg193 = bitcast %union.tcu* %arrayidx192 to i32*
  %127 = load i32, i32* %flg193, align 4
  %cmp194 = icmp eq i32 %127, 0
  br i1 %cmp194, label %if.then.196, label %if.else.200

if.then.196:                                      ; preds = %if.then.190
  %128 = load %struct.display*, %struct.display** @display, align 8
  %d_width197 = getelementptr inbounds %struct.display, %struct.display* %128, i32 0, i32 16
  %129 = load i32, i32* %d_width197, align 4
  %sub198 = sub nsw i32 %129, 1
  %130 = load %struct.display*, %struct.display** @display, align 8
  %d_x199 = getelementptr inbounds %struct.display, %struct.display* %130, i32 0, i32 22
  store i32 %sub198, i32* %d_x199, align 4
  br label %if.end.225

if.else.200:                                      ; preds = %if.then.190
  %131 = load %struct.display*, %struct.display** @display, align 8
  %d_tcs201 = getelementptr inbounds %struct.display, %struct.display* %131, i32 0, i32 83
  %arrayidx202 = getelementptr inbounds [201 x %union.tcu], [201 x %union.tcu]* %d_tcs201, i32 0, i64 87
  %flg203 = bitcast %union.tcu* %arrayidx202 to i32*
  %132 = load i32, i32* %flg203, align 4
  %tobool204 = icmp ne i32 %132, 0
  br i1 %tobool204, label %lor.lhs.false, label %if.then.209

lor.lhs.false:                                    ; preds = %if.else.200
  %133 = load %struct.display*, %struct.display** @display, align 8
  %d_x205 = getelementptr inbounds %struct.display, %struct.display* %133, i32 0, i32 22
  %134 = load i32, i32* %d_x205, align 4
  %135 = load %struct.display*, %struct.display** @display, align 8
  %d_width206 = getelementptr inbounds %struct.display, %struct.display* %135, i32 0, i32 16
  %136 = load i32, i32* %d_width206, align 4
  %cmp207 = icmp sgt i32 %134, %136
  br i1 %cmp207, label %if.then.209, label %if.end.224

if.then.209:                                      ; preds = %lor.lhs.false, %if.else.200
  %137 = load %struct.display*, %struct.display** @display, align 8
  %d_width210 = getelementptr inbounds %struct.display, %struct.display* %137, i32 0, i32 16
  %138 = load i32, i32* %d_width210, align 4
  %139 = load %struct.display*, %struct.display** @display, align 8
  %d_x211 = getelementptr inbounds %struct.display, %struct.display* %139, i32 0, i32 22
  %140 = load i32, i32* %d_x211, align 4
  %sub212 = sub nsw i32 %140, %138
  store i32 %sub212, i32* %d_x211, align 4
  %141 = load %struct.display*, %struct.display** @display, align 8
  %d_y = getelementptr inbounds %struct.display, %struct.display* %141, i32 0, i32 23
  %142 = load i32, i32* %d_y, align 4
  %143 = load %struct.display*, %struct.display** @display, align 8
  %d_height = getelementptr inbounds %struct.display, %struct.display* %143, i32 0, i32 17
  %144 = load i32, i32* %d_height, align 4
  %sub213 = sub nsw i32 %144, 1
  %cmp214 = icmp slt i32 %142, %sub213
  br i1 %cmp214, label %land.lhs.true.216, label %if.end.223

land.lhs.true.216:                                ; preds = %if.then.209
  %145 = load %struct.display*, %struct.display** @display, align 8
  %d_y217 = getelementptr inbounds %struct.display, %struct.display* %145, i32 0, i32 23
  %146 = load i32, i32* %d_y217, align 4
  %147 = load %struct.display*, %struct.display** @display, align 8
  %d_bot = getelementptr inbounds %struct.display, %struct.display* %147, i32 0, i32 21
  %148 = load i32, i32* %d_bot, align 4
  %cmp218 = icmp ne i32 %146, %148
  br i1 %cmp218, label %if.then.220, label %if.end.223

if.then.220:                                      ; preds = %land.lhs.true.216
  %149 = load %struct.display*, %struct.display** @display, align 8
  %d_y221 = getelementptr inbounds %struct.display, %struct.display* %149, i32 0, i32 23
  %150 = load i32, i32* %d_y221, align 4
  %inc222 = add nsw i32 %150, 1
  store i32 %inc222, i32* %d_y221, align 4
  br label %if.end.223

if.end.223:                                       ; preds = %if.then.220, %land.lhs.true.216, %if.then.209
  br label %if.end.224

if.end.224:                                       ; preds = %if.end.223, %lor.lhs.false
  br label %if.end.225

if.end.225:                                       ; preds = %if.end.224, %if.then.196
  br label %if.end.226

if.end.226:                                       ; preds = %if.end.225, %addedutf8
  %151 = load %struct.display*, %struct.display** @display, align 8
  %d_mbcs227 = getelementptr inbounds %struct.display, %struct.display* %151, i32 0, i32 27
  %152 = load i32, i32* %d_mbcs227, align 4
  %tobool228 = icmp ne i32 %152, 0
  br i1 %tobool228, label %if.then.229, label %if.end.232

if.then.229:                                      ; preds = %if.end.226
  %153 = load %struct.display*, %struct.display** @display, align 8
  %d_mbcs230 = getelementptr inbounds %struct.display, %struct.display* %153, i32 0, i32 27
  %154 = load i32, i32* %d_mbcs230, align 4
  store i32 %154, i32* %c.addr, align 4
  %155 = load %struct.display*, %struct.display** @display, align 8
  %d_mbcs231 = getelementptr inbounds %struct.display, %struct.display* %155, i32 0, i32 27
  store i32 0, i32* %d_mbcs231, align 4
  br label %kanjiloop

if.end.232:                                       ; preds = %if.then.14, %if.then.100, %if.end.226
  ret void
}

; Function Attrs: nounwind uwtable
define void @PUTCHARLP(i32 %c) #0 {
entry:
  %c.addr = alloca i32, align 4
  %y = alloca i32, align 4
  store i32 %c, i32* %c.addr, align 4
  %0 = load %struct.display*, %struct.display** @display, align 8
  %d_x = getelementptr inbounds %struct.display, %struct.display* %0, i32 0, i32 22
  %1 = load i32, i32* %d_x, align 4
  %2 = load %struct.display*, %struct.display** @display, align 8
  %d_width = getelementptr inbounds %struct.display, %struct.display* %2, i32 0, i32 16
  %3 = load i32, i32* %d_width, align 4
  %sub = sub nsw i32 %3, 1
  %cmp = icmp slt i32 %1, %sub
  br i1 %cmp, label %if.then, label %if.end.2

if.then:                                          ; preds = %entry
  %4 = load %struct.display*, %struct.display** @display, align 8
  %d_insert = getelementptr inbounds %struct.display, %struct.display* %4, i32 0, i32 31
  %5 = load i32, i32* %d_insert, align 4
  %tobool = icmp ne i32 %5, 0
  br i1 %tobool, label %if.then.1, label %if.end

if.then.1:                                        ; preds = %if.then
  call void @InsertMode(i32 0)
  br label %if.end

if.end:                                           ; preds = %if.then.1, %if.then
  %6 = load i32, i32* %c.addr, align 4
  call void @RAW_PUTCHAR(i32 %6)
  br label %if.end.31

if.end.2:                                         ; preds = %entry
  %7 = load %struct.display*, %struct.display** @display, align 8
  %d_tcs = getelementptr inbounds %struct.display, %struct.display* %7, i32 0, i32 83
  %arrayidx = getelementptr inbounds [201 x %union.tcu], [201 x %union.tcu]* %d_tcs, i32 0, i64 87
  %flg = bitcast %union.tcu* %arrayidx to i32*
  %8 = load i32, i32* %flg, align 4
  %tobool3 = icmp ne i32 %8, 0
  br i1 %tobool3, label %if.then.5, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.end.2
  %9 = load %struct.display*, %struct.display** @display, align 8
  %d_y = getelementptr inbounds %struct.display, %struct.display* %9, i32 0, i32 23
  %10 = load i32, i32* %d_y, align 4
  %11 = load %struct.display*, %struct.display** @display, align 8
  %d_bot = getelementptr inbounds %struct.display, %struct.display* %11, i32 0, i32 21
  %12 = load i32, i32* %d_bot, align 4
  %cmp4 = icmp ne i32 %10, %12
  br i1 %cmp4, label %if.then.5, label %if.end.19

if.then.5:                                        ; preds = %lor.lhs.false, %if.end.2
  %13 = load %struct.display*, %struct.display** @display, align 8
  %d_y6 = getelementptr inbounds %struct.display, %struct.display* %13, i32 0, i32 23
  %14 = load i32, i32* %d_y6, align 4
  store i32 %14, i32* %y, align 4
  %15 = load i32, i32* %c.addr, align 4
  call void @RAW_PUTCHAR(i32 %15)
  %16 = load %struct.display*, %struct.display** @display, align 8
  %d_tcs7 = getelementptr inbounds %struct.display, %struct.display* %16, i32 0, i32 83
  %arrayidx8 = getelementptr inbounds [201 x %union.tcu], [201 x %union.tcu]* %d_tcs7, i32 0, i64 83
  %flg9 = bitcast %union.tcu* %arrayidx8 to i32*
  %17 = load i32, i32* %flg9, align 4
  %tobool10 = icmp ne i32 %17, 0
  br i1 %tobool10, label %land.lhs.true, label %if.end.18

land.lhs.true:                                    ; preds = %if.then.5
  %18 = load %struct.display*, %struct.display** @display, align 8
  %d_tcs11 = getelementptr inbounds %struct.display, %struct.display* %18, i32 0, i32 83
  %arrayidx12 = getelementptr inbounds [201 x %union.tcu], [201 x %union.tcu]* %d_tcs11, i32 0, i64 87
  %flg13 = bitcast %union.tcu* %arrayidx12 to i32*
  %19 = load i32, i32* %flg13, align 4
  %tobool14 = icmp ne i32 %19, 0
  br i1 %tobool14, label %if.end.18, label %if.then.15

if.then.15:                                       ; preds = %land.lhs.true
  %20 = load %struct.display*, %struct.display** @display, align 8
  %d_width16 = getelementptr inbounds %struct.display, %struct.display* %20, i32 0, i32 16
  %21 = load i32, i32* %d_width16, align 4
  %sub17 = sub nsw i32 %21, 1
  %22 = load i32, i32* %y, align 4
  call void @GotoPos(i32 %sub17, i32 %22)
  br label %if.end.18

if.end.18:                                        ; preds = %if.then.15, %land.lhs.true, %if.then.5
  br label %if.end.31

if.end.19:                                        ; preds = %lor.lhs.false
  br label %do.body

do.body:                                          ; preds = %if.end.19
  br label %do.end

do.end:                                           ; preds = %do.body
  %23 = load %struct.display*, %struct.display** @display, align 8
  %d_lp_missing = getelementptr inbounds %struct.display, %struct.display* %23, i32 0, i32 38
  store i32 1, i32* %d_lp_missing, align 4
  %24 = load i32, i32* %c.addr, align 4
  %conv = trunc i32 %24 to i8
  %25 = load %struct.display*, %struct.display** @display, align 8
  %d_rend = getelementptr inbounds %struct.display, %struct.display* %25, i32 0, i32 24
  %image = getelementptr inbounds %struct.mchar, %struct.mchar* %d_rend, i32 0, i32 0
  store i8 %conv, i8* %image, align 1
  %26 = load %struct.display*, %struct.display** @display, align 8
  %d_lpchar = getelementptr inbounds %struct.display, %struct.display* %26, i32 0, i32 41
  %27 = load %struct.display*, %struct.display** @display, align 8
  %d_rend20 = getelementptr inbounds %struct.display, %struct.display* %27, i32 0, i32 24
  %28 = bitcast %struct.mchar* %d_lpchar to i8*
  %29 = bitcast %struct.mchar* %d_rend20 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %28, i8* %29, i64 6, i32 1, i1 false)
  %30 = load %struct.display*, %struct.display** @display, align 8
  %d_mbcs = getelementptr inbounds %struct.display, %struct.display* %30, i32 0, i32 27
  %31 = load i32, i32* %d_mbcs, align 4
  %tobool21 = icmp ne i32 %31, 0
  br i1 %tobool21, label %if.then.22, label %if.end.31

if.then.22:                                       ; preds = %do.end
  %32 = load i32, i32* %c.addr, align 4
  %conv23 = trunc i32 %32 to i8
  %33 = load %struct.display*, %struct.display** @display, align 8
  %d_lpchar24 = getelementptr inbounds %struct.display, %struct.display* %33, i32 0, i32 41
  %mbcs = getelementptr inbounds %struct.mchar, %struct.mchar* %d_lpchar24, i32 0, i32 5
  store i8 %conv23, i8* %mbcs, align 1
  %34 = load %struct.display*, %struct.display** @display, align 8
  %d_mbcs25 = getelementptr inbounds %struct.display, %struct.display* %34, i32 0, i32 27
  %35 = load i32, i32* %d_mbcs25, align 4
  %conv26 = trunc i32 %35 to i8
  %36 = load %struct.display*, %struct.display** @display, align 8
  %d_lpchar27 = getelementptr inbounds %struct.display, %struct.display* %36, i32 0, i32 41
  %image28 = getelementptr inbounds %struct.mchar, %struct.mchar* %d_lpchar27, i32 0, i32 0
  store i8 %conv26, i8* %image28, align 1
  %37 = load %struct.display*, %struct.display** @display, align 8
  %d_mbcs29 = getelementptr inbounds %struct.display, %struct.display* %37, i32 0, i32 27
  store i32 0, i32* %d_mbcs29, align 4
  %38 = load %struct.display*, %struct.display** @display, align 8
  %d_x30 = getelementptr inbounds %struct.display, %struct.display* %38, i32 0, i32 22
  %39 = load i32, i32* %d_x30, align 4
  %dec = add nsw i32 %39, -1
  store i32 %dec, i32* %d_x30, align 4
  br label %if.end.31

if.end.31:                                        ; preds = %if.end, %if.end.18, %if.then.22, %do.end
  ret void
}

declare void @tputs(i8*, i32, i32 (i32)*) #1

; Function Attrs: nounwind uwtable
define internal i32 @DoAddChar(i32 %c) #0 {
entry:
  %c.addr = alloca i32, align 4
  store i32 %c, i32* %c.addr, align 4
  br label %do.body

do.body:                                          ; preds = %entry
  %0 = load %struct.display*, %struct.display** @display, align 8
  %d_obuffree = getelementptr inbounds %struct.display, %struct.display* %0, i32 0, i32 72
  %1 = load i32, i32* %d_obuffree, align 4
  %dec = add nsw i32 %1, -1
  store i32 %dec, i32* %d_obuffree, align 4
  %cmp = icmp sle i32 %dec, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %do.body
  call void @Resize_obuf()
  br label %if.end

if.end:                                           ; preds = %if.then, %do.body
  %2 = load i32, i32* %c.addr, align 4
  %conv = trunc i32 %2 to i8
  %3 = load %struct.display*, %struct.display** @display, align 8
  %d_obufp = getelementptr inbounds %struct.display, %struct.display* %3, i32 0, i32 71
  %4 = load i8*, i8** %d_obufp, align 8
  %incdec.ptr = getelementptr inbounds i8, i8* %4, i32 1
  store i8* %incdec.ptr, i8** %d_obufp, align 8
  store i8 %conv, i8* %4, align 1
  br label %do.end

do.end:                                           ; preds = %if.end
  %5 = load i32, i32* %c.addr, align 4
  ret i32 %5
}

; Function Attrs: nounwind uwtable
define void @AddCStr2(i8* %s, i32 %c) #0 {
entry:
  %s.addr = alloca i8*, align 8
  %c.addr = alloca i32, align 4
  store i8* %s, i8** %s.addr, align 8
  store i32 %c, i32* %c.addr, align 4
  %0 = load %struct.display*, %struct.display** @display, align 8
  %tobool = icmp ne %struct.display* %0, null
  br i1 %tobool, label %land.lhs.true, label %if.end

land.lhs.true:                                    ; preds = %entry
  %1 = load i8*, i8** %s.addr, align 8
  %tobool1 = icmp ne i8* %1, null
  br i1 %tobool1, label %land.lhs.true.2, label %if.end

land.lhs.true.2:                                  ; preds = %land.lhs.true
  %2 = load i8*, i8** %s.addr, align 8
  %3 = load i8, i8* %2, align 1
  %conv = sext i8 %3 to i32
  %tobool3 = icmp ne i32 %conv, 0
  br i1 %tobool3, label %if.then, label %if.end

if.then:                                          ; preds = %land.lhs.true.2
  %4 = load %struct.display*, %struct.display** @display, align 8
  %d_dospeed = getelementptr inbounds %struct.display, %struct.display* %4, i32 0, i32 87
  %5 = load i16, i16* %d_dospeed, align 2
  store i16 %5, i16* @ospeed, align 2
  %6 = load i8*, i8** %s.addr, align 8
  %7 = load i32, i32* %c.addr, align 4
  %call = call i8* @tgoto(i8* %6, i32 0, i32 %7)
  call void @tputs(i8* %call, i32 1, i32 (i32)* @DoAddChar)
  br label %if.end

if.end:                                           ; preds = %if.then, %land.lhs.true.2, %land.lhs.true, %entry
  ret void
}

declare i8* @tgoto(i8*, i32, i32) #1

; Function Attrs: nounwind uwtable
define void @ReverseVideo(i32 %on) #0 {
entry:
  %on.addr = alloca i32, align 4
  store i32 %on, i32* %on.addr, align 4
  %0 = load %struct.display*, %struct.display** @display, align 8
  %tobool = icmp ne %struct.display* %0, null
  br i1 %tobool, label %land.lhs.true, label %if.end.13

land.lhs.true:                                    ; preds = %entry
  %1 = load %struct.display*, %struct.display** @display, align 8
  %d_revvid = getelementptr inbounds %struct.display, %struct.display* %1, i32 0, i32 34
  %2 = load i32, i32* %d_revvid, align 4
  %3 = load i32, i32* %on.addr, align 4
  %cmp = icmp ne i32 %2, %3
  br i1 %cmp, label %land.lhs.true.1, label %if.end.13

land.lhs.true.1:                                  ; preds = %land.lhs.true
  %4 = load %struct.display*, %struct.display** @display, align 8
  %d_tcs = getelementptr inbounds %struct.display, %struct.display* %4, i32 0, i32 83
  %arrayidx = getelementptr inbounds [201 x %union.tcu], [201 x %union.tcu]* %d_tcs, i32 0, i64 93
  %str = bitcast %union.tcu* %arrayidx to i8**
  %5 = load i8*, i8** %str, align 8
  %tobool2 = icmp ne i8* %5, null
  br i1 %tobool2, label %if.then, label %if.end.13

if.then:                                          ; preds = %land.lhs.true.1
  %6 = load i32, i32* %on.addr, align 4
  %7 = load %struct.display*, %struct.display** @display, align 8
  %d_revvid3 = getelementptr inbounds %struct.display, %struct.display* %7, i32 0, i32 34
  store i32 %6, i32* %d_revvid3, align 4
  %8 = load %struct.display*, %struct.display** @display, align 8
  %d_revvid4 = getelementptr inbounds %struct.display, %struct.display* %8, i32 0, i32 34
  %9 = load i32, i32* %d_revvid4, align 4
  %tobool5 = icmp ne i32 %9, 0
  br i1 %tobool5, label %if.then.6, label %if.else

if.then.6:                                        ; preds = %if.then
  %10 = load %struct.display*, %struct.display** @display, align 8
  %d_tcs7 = getelementptr inbounds %struct.display, %struct.display* %10, i32 0, i32 83
  %arrayidx8 = getelementptr inbounds [201 x %union.tcu], [201 x %union.tcu]* %d_tcs7, i32 0, i64 93
  %str9 = bitcast %union.tcu* %arrayidx8 to i8**
  %11 = load i8*, i8** %str9, align 8
  call void @AddCStr(i8* %11)
  br label %if.end

if.else:                                          ; preds = %if.then
  %12 = load %struct.display*, %struct.display** @display, align 8
  %d_tcs10 = getelementptr inbounds %struct.display, %struct.display* %12, i32 0, i32 83
  %arrayidx11 = getelementptr inbounds [201 x %union.tcu], [201 x %union.tcu]* %d_tcs10, i32 0, i64 94
  %str12 = bitcast %union.tcu* %arrayidx11 to i8**
  %13 = load i8*, i8** %str12, align 8
  call void @AddCStr(i8* %13)
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then.6
  br label %if.end.13

if.end.13:                                        ; preds = %if.end, %land.lhs.true.1, %land.lhs.true, %entry
  ret void
}

; Function Attrs: nounwind
declare i32 @sprintf(i8*, i8*, ...) #2

; Function Attrs: nounwind uwtable
define void @AddStr(i8* %str) #0 {
entry:
  %str.addr = alloca i8*, align 8
  %c = alloca i8, align 1
  store i8* %str, i8** %str.addr, align 8
  br label %do.body

do.body:                                          ; preds = %entry
  br label %do.end

do.end:                                           ; preds = %do.body
  %0 = load %struct.display*, %struct.display** @display, align 8
  %d_encoding = getelementptr inbounds %struct.display, %struct.display* %0, i32 0, i32 28
  %1 = load i32, i32* %d_encoding, align 4
  %cmp = icmp eq i32 %1, 8
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %do.end
  br label %while.cond

while.cond:                                       ; preds = %while.body, %if.then
  %2 = load i8*, i8** %str.addr, align 8
  %incdec.ptr = getelementptr inbounds i8, i8* %2, i32 1
  store i8* %incdec.ptr, i8** %str.addr, align 8
  %3 = load i8, i8* %2, align 1
  store i8 %3, i8* %c, align 1
  %tobool = icmp ne i8 %3, 0
  br i1 %tobool, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %4 = load i8, i8* %c, align 1
  %conv = zext i8 %4 to i32
  call void @AddUtf8(i32 %conv)
  br label %while.cond

while.end:                                        ; preds = %while.cond
  br label %while.end.12

if.end:                                           ; preds = %do.end
  br label %while.cond.1

while.cond.1:                                     ; preds = %do.end.11, %if.end
  %5 = load i8*, i8** %str.addr, align 8
  %incdec.ptr2 = getelementptr inbounds i8, i8* %5, i32 1
  store i8* %incdec.ptr2, i8** %str.addr, align 8
  %6 = load i8, i8* %5, align 1
  store i8 %6, i8* %c, align 1
  %tobool3 = icmp ne i8 %6, 0
  br i1 %tobool3, label %while.body.4, label %while.end.12

while.body.4:                                     ; preds = %while.cond.1
  br label %do.body.5

do.body.5:                                        ; preds = %while.body.4
  %7 = load %struct.display*, %struct.display** @display, align 8
  %d_obuffree = getelementptr inbounds %struct.display, %struct.display* %7, i32 0, i32 72
  %8 = load i32, i32* %d_obuffree, align 4
  %dec = add nsw i32 %8, -1
  store i32 %dec, i32* %d_obuffree, align 4
  %cmp6 = icmp sle i32 %dec, 0
  br i1 %cmp6, label %if.then.8, label %if.end.9

if.then.8:                                        ; preds = %do.body.5
  call void @Resize_obuf()
  br label %if.end.9

if.end.9:                                         ; preds = %if.then.8, %do.body.5
  %9 = load i8, i8* %c, align 1
  %10 = load %struct.display*, %struct.display** @display, align 8
  %d_obufp = getelementptr inbounds %struct.display, %struct.display* %10, i32 0, i32 71
  %11 = load i8*, i8** %d_obufp, align 8
  %incdec.ptr10 = getelementptr inbounds i8, i8* %11, i32 1
  store i8* %incdec.ptr10, i8** %d_obufp, align 8
  store i8 %9, i8* %11, align 1
  br label %do.end.11

do.end.11:                                        ; preds = %if.end.9
  br label %while.cond.1

while.end.12:                                     ; preds = %while.end, %while.cond.1
  ret void
}

; Function Attrs: nounwind uwtable
define i32 @CalcCost(i8* %s) #0 {
entry:
  %retval = alloca i32, align 4
  %s.addr = alloca i8*, align 8
  store i8* %s, i8** %s.addr, align 8
  br label %do.body

do.body:                                          ; preds = %entry
  br label %do.end

do.end:                                           ; preds = %do.body
  %0 = load i8*, i8** %s.addr, align 8
  %tobool = icmp ne i8* %0, null
  br i1 %tobool, label %if.then, label %if.else

if.then:                                          ; preds = %do.end
  store i32 0, i32* @StrCost, align 4
  %1 = load %struct.display*, %struct.display** @display, align 8
  %d_dospeed = getelementptr inbounds %struct.display, %struct.display* %1, i32 0, i32 87
  %2 = load i16, i16* %d_dospeed, align 2
  store i16 %2, i16* @ospeed, align 2
  %3 = load i8*, i8** %s.addr, align 8
  call void @tputs(i8* %3, i32 1, i32 (i32)* @CountChars)
  %4 = load i32, i32* @StrCost, align 4
  store i32 %4, i32* %retval
  br label %return

if.else:                                          ; preds = %do.end
  store i32 1000, i32* %retval
  br label %return

return:                                           ; preds = %if.else, %if.then
  %5 = load i32, i32* %retval
  ret i32 %5
}

; Function Attrs: nounwind uwtable
define internal i32 @CountChars(i32 %c) #0 {
entry:
  %c.addr = alloca i32, align 4
  store i32 %c, i32* %c.addr, align 4
  %0 = load i32, i32* @StrCost, align 4
  %inc = add nsw i32 %0, 1
  store i32 %inc, i32* @StrCost, align 4
  %1 = load i32, i32* %c.addr, align 4
  ret i32 %1
}

; Function Attrs: nounwind uwtable
define internal i32 @CallRewrite(i32 %y, i32 %xs, i32 %xe, i32 %doit) #0 {
entry:
  %retval = alloca i32, align 4
  %y.addr = alloca i32, align 4
  %xs.addr = alloca i32, align 4
  %xe.addr = alloca i32, align 4
  %doit.addr = alloca i32, align 4
  %cv = alloca %struct.canvas*, align 8
  %cvlist = alloca %struct.canvas*, align 8
  %cvlnext = alloca %struct.canvas*, align 8
  %vp = alloca %struct.viewport*, align 8
  %oldflayer = alloca %struct.layer*, align 8
  %cost = alloca i32, align 4
  store i32 %y, i32* %y.addr, align 4
  store i32 %xs, i32* %xs.addr, align 4
  store i32 %xe, i32* %xe.addr, align 4
  store i32 %doit, i32* %doit.addr, align 4
  br label %do.body

do.body:                                          ; preds = %entry
  br label %do.end

do.end:                                           ; preds = %do.body
  br label %do.body.1

do.body.1:                                        ; preds = %do.end
  br label %do.end.2

do.end.2:                                         ; preds = %do.body.1
  br label %do.body.3

do.body.3:                                        ; preds = %do.end.2
  br label %do.end.4

do.end.4:                                         ; preds = %do.body.3
  store %struct.viewport* null, %struct.viewport** %vp, align 8
  %0 = load %struct.display*, %struct.display** @display, align 8
  %d_cvlist = getelementptr inbounds %struct.display, %struct.display* %0, i32 0, i32 3
  %1 = load %struct.canvas*, %struct.canvas** %d_cvlist, align 8
  store %struct.canvas* %1, %struct.canvas** %cv, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.inc.24, %do.end.4
  %2 = load %struct.canvas*, %struct.canvas** %cv, align 8
  %tobool = icmp ne %struct.canvas* %2, null
  br i1 %tobool, label %for.body, label %for.end.25

for.body:                                         ; preds = %for.cond
  %3 = load i32, i32* %y.addr, align 4
  %4 = load %struct.canvas*, %struct.canvas** %cv, align 8
  %c_ys = getelementptr inbounds %struct.canvas, %struct.canvas* %4, i32 0, i32 16
  %5 = load i32, i32* %c_ys, align 4
  %cmp = icmp slt i32 %3, %5
  br i1 %cmp, label %if.then, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %for.body
  %6 = load i32, i32* %y.addr, align 4
  %7 = load %struct.canvas*, %struct.canvas** %cv, align 8
  %c_ye = getelementptr inbounds %struct.canvas, %struct.canvas* %7, i32 0, i32 17
  %8 = load i32, i32* %c_ye, align 4
  %cmp5 = icmp sgt i32 %6, %8
  br i1 %cmp5, label %if.then, label %lor.lhs.false.6

lor.lhs.false.6:                                  ; preds = %lor.lhs.false
  %9 = load i32, i32* %xe.addr, align 4
  %10 = load %struct.canvas*, %struct.canvas** %cv, align 8
  %c_xs = getelementptr inbounds %struct.canvas, %struct.canvas* %10, i32 0, i32 14
  %11 = load i32, i32* %c_xs, align 4
  %cmp7 = icmp slt i32 %9, %11
  br i1 %cmp7, label %if.then, label %lor.lhs.false.8

lor.lhs.false.8:                                  ; preds = %lor.lhs.false.6
  %12 = load i32, i32* %xs.addr, align 4
  %13 = load %struct.canvas*, %struct.canvas** %cv, align 8
  %c_xe = getelementptr inbounds %struct.canvas, %struct.canvas* %13, i32 0, i32 15
  %14 = load i32, i32* %c_xe, align 4
  %cmp9 = icmp sgt i32 %12, %14
  br i1 %cmp9, label %if.then, label %if.end

if.then:                                          ; preds = %lor.lhs.false.8, %lor.lhs.false.6, %lor.lhs.false, %for.body
  br label %for.inc.24

if.end:                                           ; preds = %lor.lhs.false.8
  %15 = load %struct.canvas*, %struct.canvas** %cv, align 8
  %c_vplist = getelementptr inbounds %struct.canvas, %struct.canvas* %15, i32 0, i32 8
  %16 = load %struct.viewport*, %struct.viewport** %c_vplist, align 8
  store %struct.viewport* %16, %struct.viewport** %vp, align 8
  br label %for.cond.10

for.cond.10:                                      ; preds = %for.inc, %if.end
  %17 = load %struct.viewport*, %struct.viewport** %vp, align 8
  %tobool11 = icmp ne %struct.viewport* %17, null
  br i1 %tobool11, label %for.body.12, label %for.end

for.body.12:                                      ; preds = %for.cond.10
  %18 = load i32, i32* %y.addr, align 4
  %19 = load %struct.viewport*, %struct.viewport** %vp, align 8
  %v_ys = getelementptr inbounds %struct.viewport, %struct.viewport* %19, i32 0, i32 6
  %20 = load i32, i32* %v_ys, align 4
  %cmp13 = icmp sge i32 %18, %20
  br i1 %cmp13, label %land.lhs.true, label %if.end.20

land.lhs.true:                                    ; preds = %for.body.12
  %21 = load i32, i32* %y.addr, align 4
  %22 = load %struct.viewport*, %struct.viewport** %vp, align 8
  %v_ye = getelementptr inbounds %struct.viewport, %struct.viewport* %22, i32 0, i32 7
  %23 = load i32, i32* %v_ye, align 4
  %cmp14 = icmp sle i32 %21, %23
  br i1 %cmp14, label %land.lhs.true.15, label %if.end.20

land.lhs.true.15:                                 ; preds = %land.lhs.true
  %24 = load i32, i32* %xe.addr, align 4
  %25 = load %struct.viewport*, %struct.viewport** %vp, align 8
  %v_xs = getelementptr inbounds %struct.viewport, %struct.viewport* %25, i32 0, i32 4
  %26 = load i32, i32* %v_xs, align 4
  %cmp16 = icmp sge i32 %24, %26
  br i1 %cmp16, label %land.lhs.true.17, label %if.end.20

land.lhs.true.17:                                 ; preds = %land.lhs.true.15
  %27 = load i32, i32* %xs.addr, align 4
  %28 = load %struct.viewport*, %struct.viewport** %vp, align 8
  %v_xe = getelementptr inbounds %struct.viewport, %struct.viewport* %28, i32 0, i32 5
  %29 = load i32, i32* %v_xe, align 4
  %cmp18 = icmp sle i32 %27, %29
  br i1 %cmp18, label %if.then.19, label %if.end.20

if.then.19:                                       ; preds = %land.lhs.true.17
  br label %for.end

if.end.20:                                        ; preds = %land.lhs.true.17, %land.lhs.true.15, %land.lhs.true, %for.body.12
  br label %for.inc

for.inc:                                          ; preds = %if.end.20
  %30 = load %struct.viewport*, %struct.viewport** %vp, align 8
  %v_next = getelementptr inbounds %struct.viewport, %struct.viewport* %30, i32 0, i32 0
  %31 = load %struct.viewport*, %struct.viewport** %v_next, align 8
  store %struct.viewport* %31, %struct.viewport** %vp, align 8
  br label %for.cond.10

for.end:                                          ; preds = %if.then.19, %for.cond.10
  %32 = load %struct.viewport*, %struct.viewport** %vp, align 8
  %tobool21 = icmp ne %struct.viewport* %32, null
  br i1 %tobool21, label %if.then.22, label %if.end.23

if.then.22:                                       ; preds = %for.end
  br label %for.end.25

if.end.23:                                        ; preds = %for.end
  br label %for.inc.24

for.inc.24:                                       ; preds = %if.end.23, %if.then
  %33 = load %struct.canvas*, %struct.canvas** %cv, align 8
  %c_next = getelementptr inbounds %struct.canvas, %struct.canvas* %33, i32 0, i32 0
  %34 = load %struct.canvas*, %struct.canvas** %c_next, align 8
  store %struct.canvas* %34, %struct.canvas** %cv, align 8
  br label %for.cond

for.end.25:                                       ; preds = %if.then.22, %for.cond
  %35 = load i32, i32* %doit.addr, align 4
  %tobool26 = icmp ne i32 %35, 0
  br i1 %tobool26, label %if.then.27, label %if.end.35

if.then.27:                                       ; preds = %for.end.25
  %36 = load %struct.layer*, %struct.layer** @flayer, align 8
  store %struct.layer* %36, %struct.layer** %oldflayer, align 8
  %37 = load %struct.canvas*, %struct.canvas** %cv, align 8
  %c_layer = getelementptr inbounds %struct.canvas, %struct.canvas* %37, i32 0, i32 9
  %38 = load %struct.layer*, %struct.layer** %c_layer, align 8
  store %struct.layer* %38, %struct.layer** @flayer, align 8
  %39 = load %struct.layer*, %struct.layer** @flayer, align 8
  %l_cvlist = getelementptr inbounds %struct.layer, %struct.layer* %39, i32 0, i32 0
  %40 = load %struct.canvas*, %struct.canvas** %l_cvlist, align 8
  store %struct.canvas* %40, %struct.canvas** %cvlist, align 8
  %41 = load %struct.canvas*, %struct.canvas** %cv, align 8
  %c_lnext = getelementptr inbounds %struct.canvas, %struct.canvas* %41, i32 0, i32 10
  %42 = load %struct.canvas*, %struct.canvas** %c_lnext, align 8
  store %struct.canvas* %42, %struct.canvas** %cvlnext, align 8
  %43 = load %struct.canvas*, %struct.canvas** %cv, align 8
  %44 = load %struct.layer*, %struct.layer** @flayer, align 8
  %l_cvlist28 = getelementptr inbounds %struct.layer, %struct.layer* %44, i32 0, i32 0
  store %struct.canvas* %43, %struct.canvas** %l_cvlist28, align 8
  %45 = load %struct.canvas*, %struct.canvas** %cv, align 8
  %c_lnext29 = getelementptr inbounds %struct.canvas, %struct.canvas* %45, i32 0, i32 10
  store %struct.canvas* null, %struct.canvas** %c_lnext29, align 8
  %46 = load %struct.layer*, %struct.layer** @flayer, align 8
  %l_layfn = getelementptr inbounds %struct.layer, %struct.layer* %46, i32 0, i32 6
  %47 = load %struct.LayFuncs*, %struct.LayFuncs** %l_layfn, align 8
  %lf_LayRewrite = getelementptr inbounds %struct.LayFuncs, %struct.LayFuncs* %47, i32 0, i32 4
  %48 = load i32 (i32, i32, i32, %struct.mchar*, i32)*, i32 (i32, i32, i32, %struct.mchar*, i32)** %lf_LayRewrite, align 8
  %49 = load i32, i32* %y.addr, align 4
  %50 = load %struct.viewport*, %struct.viewport** %vp, align 8
  %v_yoff = getelementptr inbounds %struct.viewport, %struct.viewport* %50, i32 0, i32 3
  %51 = load i32, i32* %v_yoff, align 4
  %sub = sub nsw i32 %49, %51
  %52 = load i32, i32* %xs.addr, align 4
  %53 = load %struct.viewport*, %struct.viewport** %vp, align 8
  %v_xoff = getelementptr inbounds %struct.viewport, %struct.viewport* %53, i32 0, i32 2
  %54 = load i32, i32* %v_xoff, align 4
  %sub30 = sub nsw i32 %52, %54
  %55 = load i32, i32* %xe.addr, align 4
  %56 = load %struct.viewport*, %struct.viewport** %vp, align 8
  %v_xoff31 = getelementptr inbounds %struct.viewport, %struct.viewport* %56, i32 0, i32 2
  %57 = load i32, i32* %v_xoff31, align 4
  %sub32 = sub nsw i32 %55, %57
  %58 = load %struct.display*, %struct.display** @display, align 8
  %d_rend = getelementptr inbounds %struct.display, %struct.display* %58, i32 0, i32 24
  %call = call i32 %48(i32 %sub, i32 %sub30, i32 %sub32, %struct.mchar* %d_rend, i32 1)
  %59 = load %struct.canvas*, %struct.canvas** %cvlist, align 8
  %60 = load %struct.layer*, %struct.layer** @flayer, align 8
  %l_cvlist33 = getelementptr inbounds %struct.layer, %struct.layer* %60, i32 0, i32 0
  store %struct.canvas* %59, %struct.canvas** %l_cvlist33, align 8
  %61 = load %struct.canvas*, %struct.canvas** %cvlnext, align 8
  %62 = load %struct.canvas*, %struct.canvas** %cv, align 8
  %c_lnext34 = getelementptr inbounds %struct.canvas, %struct.canvas* %62, i32 0, i32 10
  store %struct.canvas* %61, %struct.canvas** %c_lnext34, align 8
  %63 = load %struct.layer*, %struct.layer** %oldflayer, align 8
  store %struct.layer* %63, %struct.layer** @flayer, align 8
  store i32 0, i32* %retval
  br label %return

if.end.35:                                        ; preds = %for.end.25
  %64 = load %struct.canvas*, %struct.canvas** %cv, align 8
  %cmp36 = icmp eq %struct.canvas* %64, null
  br i1 %cmp36, label %if.then.40, label %lor.lhs.false.37

lor.lhs.false.37:                                 ; preds = %if.end.35
  %65 = load %struct.canvas*, %struct.canvas** %cv, align 8
  %c_layer38 = getelementptr inbounds %struct.canvas, %struct.canvas* %65, i32 0, i32 9
  %66 = load %struct.layer*, %struct.layer** %c_layer38, align 8
  %cmp39 = icmp eq %struct.layer* %66, null
  br i1 %cmp39, label %if.then.40, label %if.end.41

if.then.40:                                       ; preds = %lor.lhs.false.37, %if.end.35
  store i32 1000, i32* %retval
  br label %return

if.end.41:                                        ; preds = %lor.lhs.false.37
  %67 = load i32, i32* %xs.addr, align 4
  %68 = load %struct.viewport*, %struct.viewport** %vp, align 8
  %v_xs42 = getelementptr inbounds %struct.viewport, %struct.viewport* %68, i32 0, i32 4
  %69 = load i32, i32* %v_xs42, align 4
  %cmp43 = icmp slt i32 %67, %69
  br i1 %cmp43, label %if.then.47, label %lor.lhs.false.44

lor.lhs.false.44:                                 ; preds = %if.end.41
  %70 = load i32, i32* %xe.addr, align 4
  %71 = load %struct.viewport*, %struct.viewport** %vp, align 8
  %v_xe45 = getelementptr inbounds %struct.viewport, %struct.viewport* %71, i32 0, i32 5
  %72 = load i32, i32* %v_xe45, align 4
  %cmp46 = icmp sgt i32 %70, %72
  br i1 %cmp46, label %if.then.47, label %if.end.48

if.then.47:                                       ; preds = %lor.lhs.false.44, %if.end.41
  store i32 1000, i32* %retval
  br label %return

if.end.48:                                        ; preds = %lor.lhs.false.44
  %73 = load i32, i32* %y.addr, align 4
  %74 = load %struct.viewport*, %struct.viewport** %vp, align 8
  %v_yoff49 = getelementptr inbounds %struct.viewport, %struct.viewport* %74, i32 0, i32 3
  %75 = load i32, i32* %v_yoff49, align 4
  %sub50 = sub nsw i32 %73, %75
  %cmp51 = icmp slt i32 %sub50, 0
  br i1 %cmp51, label %if.then.57, label %lor.lhs.false.52

lor.lhs.false.52:                                 ; preds = %if.end.48
  %76 = load i32, i32* %y.addr, align 4
  %77 = load %struct.viewport*, %struct.viewport** %vp, align 8
  %v_yoff53 = getelementptr inbounds %struct.viewport, %struct.viewport* %77, i32 0, i32 3
  %78 = load i32, i32* %v_yoff53, align 4
  %sub54 = sub nsw i32 %76, %78
  %79 = load %struct.canvas*, %struct.canvas** %cv, align 8
  %c_layer55 = getelementptr inbounds %struct.canvas, %struct.canvas* %79, i32 0, i32 9
  %80 = load %struct.layer*, %struct.layer** %c_layer55, align 8
  %l_height = getelementptr inbounds %struct.layer, %struct.layer* %80, i32 0, i32 2
  %81 = load i32, i32* %l_height, align 4
  %cmp56 = icmp sge i32 %sub54, %81
  br i1 %cmp56, label %if.then.57, label %if.end.58

if.then.57:                                       ; preds = %lor.lhs.false.52, %if.end.48
  store i32 1000, i32* %retval
  br label %return

if.end.58:                                        ; preds = %lor.lhs.false.52
  %82 = load i32, i32* %xs.addr, align 4
  %83 = load %struct.viewport*, %struct.viewport** %vp, align 8
  %v_xoff59 = getelementptr inbounds %struct.viewport, %struct.viewport* %83, i32 0, i32 2
  %84 = load i32, i32* %v_xoff59, align 4
  %sub60 = sub nsw i32 %82, %84
  %cmp61 = icmp slt i32 %sub60, 0
  br i1 %cmp61, label %if.then.67, label %lor.lhs.false.62

lor.lhs.false.62:                                 ; preds = %if.end.58
  %85 = load i32, i32* %xe.addr, align 4
  %86 = load %struct.viewport*, %struct.viewport** %vp, align 8
  %v_xoff63 = getelementptr inbounds %struct.viewport, %struct.viewport* %86, i32 0, i32 2
  %87 = load i32, i32* %v_xoff63, align 4
  %sub64 = sub nsw i32 %85, %87
  %88 = load %struct.canvas*, %struct.canvas** %cv, align 8
  %c_layer65 = getelementptr inbounds %struct.canvas, %struct.canvas* %88, i32 0, i32 9
  %89 = load %struct.layer*, %struct.layer** %c_layer65, align 8
  %l_width = getelementptr inbounds %struct.layer, %struct.layer* %89, i32 0, i32 1
  %90 = load i32, i32* %l_width, align 4
  %cmp66 = icmp sge i32 %sub64, %90
  br i1 %cmp66, label %if.then.67, label %if.end.68

if.then.67:                                       ; preds = %lor.lhs.false.62, %if.end.58
  store i32 1000, i32* %retval
  br label %return

if.end.68:                                        ; preds = %lor.lhs.false.62
  %91 = load %struct.display*, %struct.display** @display, align 8
  %d_encoding = getelementptr inbounds %struct.display, %struct.display* %91, i32 0, i32 28
  %92 = load i32, i32* %d_encoding, align 4
  %cmp69 = icmp eq i32 %92, 8
  br i1 %cmp69, label %if.then.70, label %if.end.72

if.then.70:                                       ; preds = %if.end.68
  %93 = load %struct.display*, %struct.display** @display, align 8
  %d_rend71 = getelementptr inbounds %struct.display, %struct.display* %93, i32 0, i32 24
  %font = getelementptr inbounds %struct.mchar, %struct.mchar* %d_rend71, i32 0, i32 2
  store i8 0, i8* %font, align 1
  br label %if.end.72

if.end.72:                                        ; preds = %if.then.70, %if.end.68
  %94 = load %struct.layer*, %struct.layer** @flayer, align 8
  store %struct.layer* %94, %struct.layer** %oldflayer, align 8
  %95 = load %struct.canvas*, %struct.canvas** %cv, align 8
  %c_layer73 = getelementptr inbounds %struct.canvas, %struct.canvas* %95, i32 0, i32 9
  %96 = load %struct.layer*, %struct.layer** %c_layer73, align 8
  store %struct.layer* %96, %struct.layer** @flayer, align 8
  br label %do.body.74

do.body.74:                                       ; preds = %if.end.72
  br label %do.end.75

do.end.75:                                        ; preds = %do.body.74
  %97 = load %struct.layer*, %struct.layer** @flayer, align 8
  %l_layfn76 = getelementptr inbounds %struct.layer, %struct.layer* %97, i32 0, i32 6
  %98 = load %struct.LayFuncs*, %struct.LayFuncs** %l_layfn76, align 8
  %lf_LayRewrite77 = getelementptr inbounds %struct.LayFuncs, %struct.LayFuncs* %98, i32 0, i32 4
  %99 = load i32 (i32, i32, i32, %struct.mchar*, i32)*, i32 (i32, i32, i32, %struct.mchar*, i32)** %lf_LayRewrite77, align 8
  %100 = load i32, i32* %y.addr, align 4
  %101 = load %struct.viewport*, %struct.viewport** %vp, align 8
  %v_yoff78 = getelementptr inbounds %struct.viewport, %struct.viewport* %101, i32 0, i32 3
  %102 = load i32, i32* %v_yoff78, align 4
  %sub79 = sub nsw i32 %100, %102
  %103 = load i32, i32* %xs.addr, align 4
  %104 = load %struct.viewport*, %struct.viewport** %vp, align 8
  %v_xoff80 = getelementptr inbounds %struct.viewport, %struct.viewport* %104, i32 0, i32 2
  %105 = load i32, i32* %v_xoff80, align 4
  %sub81 = sub nsw i32 %103, %105
  %106 = load i32, i32* %xe.addr, align 4
  %107 = load %struct.viewport*, %struct.viewport** %vp, align 8
  %v_xoff82 = getelementptr inbounds %struct.viewport, %struct.viewport* %107, i32 0, i32 2
  %108 = load i32, i32* %v_xoff82, align 4
  %sub83 = sub nsw i32 %106, %108
  %109 = load %struct.display*, %struct.display** @display, align 8
  %d_rend84 = getelementptr inbounds %struct.display, %struct.display* %109, i32 0, i32 24
  %call85 = call i32 %99(i32 %sub79, i32 %sub81, i32 %sub83, %struct.mchar* %d_rend84, i32 0)
  store i32 %call85, i32* %cost, align 4
  %110 = load %struct.layer*, %struct.layer** %oldflayer, align 8
  store %struct.layer* %110, %struct.layer** @flayer, align 8
  %111 = load %struct.display*, %struct.display** @display, align 8
  %d_insert = getelementptr inbounds %struct.display, %struct.display* %111, i32 0, i32 31
  %112 = load i32, i32* %d_insert, align 4
  %tobool86 = icmp ne i32 %112, 0
  br i1 %tobool86, label %if.then.87, label %if.end.89

if.then.87:                                       ; preds = %do.end.75
  %113 = load %struct.display*, %struct.display** @display, align 8
  %d_EIcost = getelementptr inbounds %struct.display, %struct.display* %113, i32 0, i32 96
  %114 = load i32, i32* %d_EIcost, align 4
  %115 = load %struct.display*, %struct.display** @display, align 8
  %d_IMcost = getelementptr inbounds %struct.display, %struct.display* %115, i32 0, i32 95
  %116 = load i32, i32* %d_IMcost, align 4
  %add = add nsw i32 %114, %116
  %117 = load i32, i32* %cost, align 4
  %add88 = add nsw i32 %117, %add
  store i32 %add88, i32* %cost, align 4
  br label %if.end.89

if.end.89:                                        ; preds = %if.then.87, %do.end.75
  %118 = load i32, i32* %cost, align 4
  store i32 %118, i32* %retval
  br label %return

return:                                           ; preds = %if.end.89, %if.then.67, %if.then.57, %if.then.47, %if.then.40, %if.then.27
  %119 = load i32, i32* %retval
  ret i32 %119
}

; Function Attrs: nounwind uwtable
define void @ClearArea(i32 %x1, i32 %y1, i32 %xs, i32 %xe, i32 %x2, i32 %y2, i32 %bce, i32 %uselayfn) #0 {
entry:
  %x1.addr = alloca i32, align 4
  %y1.addr = alloca i32, align 4
  %xs.addr = alloca i32, align 4
  %xe.addr = alloca i32, align 4
  %x2.addr = alloca i32, align 4
  %y2.addr = alloca i32, align 4
  %bce.addr = alloca i32, align 4
  %uselayfn.addr = alloca i32, align 4
  %y = alloca i32, align 4
  %xxe = alloca i32, align 4
  %cv = alloca %struct.canvas*, align 8
  %vp = alloca %struct.viewport*, align 8
  %oldflayer = alloca %struct.layer*, align 8
  %cvlist = alloca %struct.canvas*, align 8
  %cvlnext = alloca %struct.canvas*, align 8
  store i32 %x1, i32* %x1.addr, align 4
  store i32 %y1, i32* %y1.addr, align 4
  store i32 %xs, i32* %xs.addr, align 4
  store i32 %xe, i32* %xe.addr, align 4
  store i32 %x2, i32* %x2.addr, align 4
  store i32 %y2, i32* %y2.addr, align 4
  store i32 %bce, i32* %bce.addr, align 4
  store i32 %uselayfn, i32* %uselayfn.addr, align 4
  br label %do.body

do.body:                                          ; preds = %entry
  br label %do.end

do.end:                                           ; preds = %do.body
  br label %do.body.1

do.body.1:                                        ; preds = %do.end
  br label %do.end.2

do.end.2:                                         ; preds = %do.body.1
  br label %do.body.3

do.body.3:                                        ; preds = %do.end.2
  br label %do.end.4

do.end.4:                                         ; preds = %do.body.3
  br label %do.body.5

do.body.5:                                        ; preds = %do.end.4
  br label %do.end.6

do.end.6:                                         ; preds = %do.body.5
  br label %do.body.7

do.body.7:                                        ; preds = %do.end.6
  br label %do.end.8

do.end.8:                                         ; preds = %do.body.7
  %0 = load i32, i32* %x1.addr, align 4
  %1 = load %struct.display*, %struct.display** @display, align 8
  %d_width = getelementptr inbounds %struct.display, %struct.display* %1, i32 0, i32 16
  %2 = load i32, i32* %d_width, align 4
  %cmp = icmp eq i32 %0, %2
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %do.end.8
  %3 = load i32, i32* %x1.addr, align 4
  %dec = add nsw i32 %3, -1
  store i32 %dec, i32* %x1.addr, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %do.end.8
  %4 = load i32, i32* %x2.addr, align 4
  %5 = load %struct.display*, %struct.display** @display, align 8
  %d_width9 = getelementptr inbounds %struct.display, %struct.display* %5, i32 0, i32 16
  %6 = load i32, i32* %d_width9, align 4
  %cmp10 = icmp eq i32 %4, %6
  br i1 %cmp10, label %if.then.11, label %if.end.13

if.then.11:                                       ; preds = %if.end
  %7 = load i32, i32* %x2.addr, align 4
  %dec12 = add nsw i32 %7, -1
  store i32 %dec12, i32* %x2.addr, align 4
  br label %if.end.13

if.end.13:                                        ; preds = %if.then.11, %if.end
  %8 = load i32, i32* %xs.addr, align 4
  %cmp14 = icmp eq i32 %8, -1
  br i1 %cmp14, label %if.then.15, label %if.end.16

if.then.15:                                       ; preds = %if.end.13
  %9 = load i32, i32* %x1.addr, align 4
  store i32 %9, i32* %xs.addr, align 4
  br label %if.end.16

if.end.16:                                        ; preds = %if.then.15, %if.end.13
  %10 = load i32, i32* %xe.addr, align 4
  %cmp17 = icmp eq i32 %10, -1
  br i1 %cmp17, label %if.then.18, label %if.end.19

if.then.18:                                       ; preds = %if.end.16
  %11 = load i32, i32* %x2.addr, align 4
  store i32 %11, i32* %xe.addr, align 4
  br label %if.end.19

if.end.19:                                        ; preds = %if.then.18, %if.end.16
  %12 = load %struct.display*, %struct.display** @display, align 8
  %d_tcs = getelementptr inbounds %struct.display, %struct.display* %12, i32 0, i32 83
  %arrayidx = getelementptr inbounds [201 x %union.tcu], [201 x %union.tcu]* %d_tcs, i32 0, i64 33
  %flg = bitcast %union.tcu* %arrayidx to i32*
  %13 = load i32, i32* %flg, align 4
  %tobool = icmp ne i32 %13, 0
  br i1 %tobool, label %if.then.20, label %if.end.21

if.then.20:                                       ; preds = %if.end.19
  call void @SetRendition(%struct.mchar* @mchar_null)
  br label %if.end.21

if.end.21:                                        ; preds = %if.then.20, %if.end.19
  %14 = load %struct.display*, %struct.display** @display, align 8
  %d_tcs22 = getelementptr inbounds %struct.display, %struct.display* %14, i32 0, i32 83
  %arrayidx23 = getelementptr inbounds [201 x %union.tcu], [201 x %union.tcu]* %d_tcs22, i32 0, i64 66
  %flg24 = bitcast %union.tcu* %arrayidx23 to i32*
  %15 = load i32, i32* %flg24, align 4
  %tobool25 = icmp ne i32 %15, 0
  br i1 %tobool25, label %if.then.26, label %if.end.27

if.then.26:                                       ; preds = %if.end.21
  %16 = load i32, i32* %bce.addr, align 4
  call void @SetBackColor(i32 %16)
  br label %if.end.27

if.end.27:                                        ; preds = %if.then.26, %if.end.21
  %17 = load %struct.display*, %struct.display** @display, align 8
  %d_lp_missing = getelementptr inbounds %struct.display, %struct.display* %17, i32 0, i32 38
  %18 = load i32, i32* %d_lp_missing, align 4
  %tobool28 = icmp ne i32 %18, 0
  br i1 %tobool28, label %land.lhs.true, label %if.end.45

land.lhs.true:                                    ; preds = %if.end.27
  %19 = load i32, i32* %y1.addr, align 4
  %20 = load %struct.display*, %struct.display** @display, align 8
  %d_bot = getelementptr inbounds %struct.display, %struct.display* %20, i32 0, i32 21
  %21 = load i32, i32* %d_bot, align 4
  %cmp29 = icmp sle i32 %19, %21
  br i1 %cmp29, label %land.lhs.true.30, label %if.end.45

land.lhs.true.30:                                 ; preds = %land.lhs.true
  %22 = load i32, i32* %xe.addr, align 4
  %23 = load %struct.display*, %struct.display** @display, align 8
  %d_width31 = getelementptr inbounds %struct.display, %struct.display* %23, i32 0, i32 16
  %24 = load i32, i32* %d_width31, align 4
  %sub = sub nsw i32 %24, 1
  %cmp32 = icmp sge i32 %22, %sub
  br i1 %cmp32, label %if.then.33, label %if.end.45

if.then.33:                                       ; preds = %land.lhs.true.30
  %25 = load i32, i32* %y2.addr, align 4
  %26 = load %struct.display*, %struct.display** @display, align 8
  %d_bot34 = getelementptr inbounds %struct.display, %struct.display* %26, i32 0, i32 21
  %27 = load i32, i32* %d_bot34, align 4
  %cmp35 = icmp sgt i32 %25, %27
  br i1 %cmp35, label %if.then.42, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.then.33
  %28 = load i32, i32* %y2.addr, align 4
  %29 = load %struct.display*, %struct.display** @display, align 8
  %d_bot36 = getelementptr inbounds %struct.display, %struct.display* %29, i32 0, i32 21
  %30 = load i32, i32* %d_bot36, align 4
  %cmp37 = icmp eq i32 %28, %30
  br i1 %cmp37, label %land.lhs.true.38, label %if.end.44

land.lhs.true.38:                                 ; preds = %lor.lhs.false
  %31 = load i32, i32* %x2.addr, align 4
  %32 = load %struct.display*, %struct.display** @display, align 8
  %d_width39 = getelementptr inbounds %struct.display, %struct.display* %32, i32 0, i32 16
  %33 = load i32, i32* %d_width39, align 4
  %sub40 = sub nsw i32 %33, 1
  %cmp41 = icmp sge i32 %31, %sub40
  br i1 %cmp41, label %if.then.42, label %if.end.44

if.then.42:                                       ; preds = %land.lhs.true.38, %if.then.33
  %34 = load %struct.display*, %struct.display** @display, align 8
  %d_lp_missing43 = getelementptr inbounds %struct.display, %struct.display* %34, i32 0, i32 38
  store i32 0, i32* %d_lp_missing43, align 4
  br label %if.end.44

if.end.44:                                        ; preds = %if.then.42, %land.lhs.true.38, %lor.lhs.false
  br label %if.end.45

if.end.45:                                        ; preds = %if.end.44, %land.lhs.true.30, %land.lhs.true, %if.end.27
  %35 = load i32, i32* %x2.addr, align 4
  %36 = load %struct.display*, %struct.display** @display, align 8
  %d_width46 = getelementptr inbounds %struct.display, %struct.display* %36, i32 0, i32 16
  %37 = load i32, i32* %d_width46, align 4
  %sub47 = sub nsw i32 %37, 1
  %cmp48 = icmp eq i32 %35, %sub47
  br i1 %cmp48, label %land.lhs.true.49, label %if.end.103

land.lhs.true.49:                                 ; preds = %if.end.45
  %38 = load i32, i32* %xs.addr, align 4
  %cmp50 = icmp eq i32 %38, 0
  br i1 %cmp50, label %land.lhs.true.53, label %lor.lhs.false.51

lor.lhs.false.51:                                 ; preds = %land.lhs.true.49
  %39 = load i32, i32* %y1.addr, align 4
  %40 = load i32, i32* %y2.addr, align 4
  %cmp52 = icmp eq i32 %39, %40
  br i1 %cmp52, label %land.lhs.true.53, label %if.end.103

land.lhs.true.53:                                 ; preds = %lor.lhs.false.51, %land.lhs.true.49
  %41 = load i32, i32* %xe.addr, align 4
  %42 = load %struct.display*, %struct.display** @display, align 8
  %d_width54 = getelementptr inbounds %struct.display, %struct.display* %42, i32 0, i32 16
  %43 = load i32, i32* %d_width54, align 4
  %sub55 = sub nsw i32 %43, 1
  %cmp56 = icmp eq i32 %41, %sub55
  br i1 %cmp56, label %land.lhs.true.57, label %if.end.103

land.lhs.true.57:                                 ; preds = %land.lhs.true.53
  %44 = load i32, i32* %y2.addr, align 4
  %45 = load %struct.display*, %struct.display** @display, align 8
  %d_height = getelementptr inbounds %struct.display, %struct.display* %45, i32 0, i32 17
  %46 = load i32, i32* %d_height, align 4
  %sub58 = sub nsw i32 %46, 1
  %cmp59 = icmp eq i32 %44, %sub58
  br i1 %cmp59, label %land.lhs.true.60, label %if.end.103

land.lhs.true.60:                                 ; preds = %land.lhs.true.57
  %47 = load i32, i32* %bce.addr, align 4
  %tobool61 = icmp ne i32 %47, 0
  br i1 %tobool61, label %lor.lhs.false.62, label %if.then.67

lor.lhs.false.62:                                 ; preds = %land.lhs.true.60
  %48 = load %struct.display*, %struct.display** @display, align 8
  %d_tcs63 = getelementptr inbounds %struct.display, %struct.display* %48, i32 0, i32 83
  %arrayidx64 = getelementptr inbounds [201 x %union.tcu], [201 x %union.tcu]* %d_tcs63, i32 0, i64 66
  %flg65 = bitcast %union.tcu* %arrayidx64 to i32*
  %49 = load i32, i32* %flg65, align 4
  %tobool66 = icmp ne i32 %49, 0
  br i1 %tobool66, label %if.then.67, label %if.end.103

if.then.67:                                       ; preds = %lor.lhs.false.62, %land.lhs.true.60
  %50 = load i32, i32* %x1.addr, align 4
  %cmp68 = icmp eq i32 %50, 0
  br i1 %cmp68, label %land.lhs.true.69, label %if.end.74

land.lhs.true.69:                                 ; preds = %if.then.67
  %51 = load i32, i32* %y1.addr, align 4
  %cmp70 = icmp eq i32 %51, 0
  br i1 %cmp70, label %land.lhs.true.71, label %if.end.74

land.lhs.true.71:                                 ; preds = %land.lhs.true.69
  %52 = load %struct.display*, %struct.display** @display, align 8
  %d_auto_nuke = getelementptr inbounds %struct.display, %struct.display* %52, i32 0, i32 73
  %53 = load i32, i32* %d_auto_nuke, align 4
  %tobool72 = icmp ne i32 %53, 0
  br i1 %tobool72, label %if.then.73, label %if.end.74

if.then.73:                                       ; preds = %land.lhs.true.71
  call void @NukePending()
  br label %if.end.74

if.end.74:                                        ; preds = %if.then.73, %land.lhs.true.71, %land.lhs.true.69, %if.then.67
  %54 = load i32, i32* %x1.addr, align 4
  %cmp75 = icmp eq i32 %54, 0
  br i1 %cmp75, label %land.lhs.true.76, label %if.end.86

land.lhs.true.76:                                 ; preds = %if.end.74
  %55 = load i32, i32* %y1.addr, align 4
  %cmp77 = icmp eq i32 %55, 0
  br i1 %cmp77, label %land.lhs.true.78, label %if.end.86

land.lhs.true.78:                                 ; preds = %land.lhs.true.76
  %56 = load %struct.display*, %struct.display** @display, align 8
  %d_tcs79 = getelementptr inbounds %struct.display, %struct.display* %56, i32 0, i32 83
  %arrayidx80 = getelementptr inbounds [201 x %union.tcu], [201 x %union.tcu]* %d_tcs79, i32 0, i64 34
  %str = bitcast %union.tcu* %arrayidx80 to i8**
  %57 = load i8*, i8** %str, align 8
  %tobool81 = icmp ne i8* %57, null
  br i1 %tobool81, label %if.then.82, label %if.end.86

if.then.82:                                       ; preds = %land.lhs.true.78
  %58 = load %struct.display*, %struct.display** @display, align 8
  %d_tcs83 = getelementptr inbounds %struct.display, %struct.display* %58, i32 0, i32 83
  %arrayidx84 = getelementptr inbounds [201 x %union.tcu], [201 x %union.tcu]* %d_tcs83, i32 0, i64 34
  %str85 = bitcast %union.tcu* %arrayidx84 to i8**
  %59 = load i8*, i8** %str85, align 8
  call void @AddCStr(i8* %59)
  %60 = load %struct.display*, %struct.display** @display, align 8
  %d_x = getelementptr inbounds %struct.display, %struct.display* %60, i32 0, i32 22
  store i32 0, i32* %d_x, align 4
  %61 = load %struct.display*, %struct.display** @display, align 8
  %d_y = getelementptr inbounds %struct.display, %struct.display* %61, i32 0, i32 23
  store i32 0, i32* %d_y, align 4
  br label %for.end.255

if.end.86:                                        ; preds = %land.lhs.true.78, %land.lhs.true.76, %if.end.74
  %62 = load %struct.display*, %struct.display** @display, align 8
  %d_tcs87 = getelementptr inbounds %struct.display, %struct.display* %62, i32 0, i32 83
  %arrayidx88 = getelementptr inbounds [201 x %union.tcu], [201 x %union.tcu]* %d_tcs87, i32 0, i64 35
  %str89 = bitcast %union.tcu* %arrayidx88 to i8**
  %63 = load i8*, i8** %str89, align 8
  %tobool90 = icmp ne i8* %63, null
  br i1 %tobool90, label %land.lhs.true.91, label %if.end.102

land.lhs.true.91:                                 ; preds = %if.end.86
  %64 = load i32, i32* %y1.addr, align 4
  %65 = load i32, i32* %y2.addr, align 4
  %cmp92 = icmp slt i32 %64, %65
  br i1 %cmp92, label %if.then.98, label %lor.lhs.false.93

lor.lhs.false.93:                                 ; preds = %land.lhs.true.91
  %66 = load %struct.display*, %struct.display** @display, align 8
  %d_tcs94 = getelementptr inbounds %struct.display, %struct.display* %66, i32 0, i32 83
  %arrayidx95 = getelementptr inbounds [201 x %union.tcu], [201 x %union.tcu]* %d_tcs94, i32 0, i64 37
  %str96 = bitcast %union.tcu* %arrayidx95 to i8**
  %67 = load i8*, i8** %str96, align 8
  %tobool97 = icmp ne i8* %67, null
  br i1 %tobool97, label %if.end.102, label %if.then.98

if.then.98:                                       ; preds = %lor.lhs.false.93, %land.lhs.true.91
  %68 = load i32, i32* %x1.addr, align 4
  %69 = load i32, i32* %y1.addr, align 4
  call void @GotoPos(i32 %68, i32 %69)
  %70 = load %struct.display*, %struct.display** @display, align 8
  %d_tcs99 = getelementptr inbounds %struct.display, %struct.display* %70, i32 0, i32 83
  %arrayidx100 = getelementptr inbounds [201 x %union.tcu], [201 x %union.tcu]* %d_tcs99, i32 0, i64 35
  %str101 = bitcast %union.tcu* %arrayidx100 to i8**
  %71 = load i8*, i8** %str101, align 8
  call void @AddCStr(i8* %71)
  br label %for.end.255

if.end.102:                                       ; preds = %lor.lhs.false.93, %if.end.86
  br label %if.end.103

if.end.103:                                       ; preds = %if.end.102, %lor.lhs.false.62, %land.lhs.true.57, %land.lhs.true.53, %lor.lhs.false.51, %if.end.45
  %72 = load i32, i32* %x1.addr, align 4
  %cmp104 = icmp eq i32 %72, 0
  br i1 %cmp104, label %land.lhs.true.105, label %if.end.131

land.lhs.true.105:                                ; preds = %if.end.103
  %73 = load i32, i32* %xs.addr, align 4
  %cmp106 = icmp eq i32 %73, 0
  br i1 %cmp106, label %land.lhs.true.107, label %if.end.131

land.lhs.true.107:                                ; preds = %land.lhs.true.105
  %74 = load i32, i32* %xe.addr, align 4
  %75 = load %struct.display*, %struct.display** @display, align 8
  %d_width108 = getelementptr inbounds %struct.display, %struct.display* %75, i32 0, i32 16
  %76 = load i32, i32* %d_width108, align 4
  %sub109 = sub nsw i32 %76, 1
  %cmp110 = icmp eq i32 %74, %sub109
  br i1 %cmp110, label %land.lhs.true.113, label %lor.lhs.false.111

lor.lhs.false.111:                                ; preds = %land.lhs.true.107
  %77 = load i32, i32* %y1.addr, align 4
  %78 = load i32, i32* %y2.addr, align 4
  %cmp112 = icmp eq i32 %77, %78
  br i1 %cmp112, label %land.lhs.true.113, label %if.end.131

land.lhs.true.113:                                ; preds = %lor.lhs.false.111, %land.lhs.true.107
  %79 = load i32, i32* %y1.addr, align 4
  %cmp114 = icmp eq i32 %79, 0
  br i1 %cmp114, label %land.lhs.true.115, label %if.end.131

land.lhs.true.115:                                ; preds = %land.lhs.true.113
  %80 = load %struct.display*, %struct.display** @display, align 8
  %d_tcs116 = getelementptr inbounds %struct.display, %struct.display* %80, i32 0, i32 83
  %arrayidx117 = getelementptr inbounds [201 x %union.tcu], [201 x %union.tcu]* %d_tcs116, i32 0, i64 36
  %str118 = bitcast %union.tcu* %arrayidx117 to i8**
  %81 = load i8*, i8** %str118, align 8
  %tobool119 = icmp ne i8* %81, null
  br i1 %tobool119, label %land.lhs.true.120, label %if.end.131

land.lhs.true.120:                                ; preds = %land.lhs.true.115
  %82 = load i32, i32* %bce.addr, align 4
  %tobool121 = icmp ne i32 %82, 0
  br i1 %tobool121, label %lor.lhs.false.122, label %if.then.127

lor.lhs.false.122:                                ; preds = %land.lhs.true.120
  %83 = load %struct.display*, %struct.display** @display, align 8
  %d_tcs123 = getelementptr inbounds %struct.display, %struct.display* %83, i32 0, i32 83
  %arrayidx124 = getelementptr inbounds [201 x %union.tcu], [201 x %union.tcu]* %d_tcs123, i32 0, i64 66
  %flg125 = bitcast %union.tcu* %arrayidx124 to i32*
  %84 = load i32, i32* %flg125, align 4
  %tobool126 = icmp ne i32 %84, 0
  br i1 %tobool126, label %if.then.127, label %if.end.131

if.then.127:                                      ; preds = %lor.lhs.false.122, %land.lhs.true.120
  %85 = load i32, i32* %x1.addr, align 4
  %86 = load i32, i32* %y1.addr, align 4
  call void @GotoPos(i32 %85, i32 %86)
  %87 = load %struct.display*, %struct.display** @display, align 8
  %d_tcs128 = getelementptr inbounds %struct.display, %struct.display* %87, i32 0, i32 83
  %arrayidx129 = getelementptr inbounds [201 x %union.tcu], [201 x %union.tcu]* %d_tcs128, i32 0, i64 36
  %str130 = bitcast %union.tcu* %arrayidx129 to i8**
  %88 = load i8*, i8** %str130, align 8
  call void @AddCStr(i8* %88)
  br label %for.end.255

if.end.131:                                       ; preds = %lor.lhs.false.122, %land.lhs.true.115, %land.lhs.true.113, %lor.lhs.false.111, %land.lhs.true.105, %if.end.103
  %89 = load i32, i32* %xe.addr, align 4
  store i32 %89, i32* %xxe, align 4
  %90 = load i32, i32* %y1.addr, align 4
  store i32 %90, i32* %y, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc.254, %if.end.131
  %91 = load i32, i32* %y, align 4
  %92 = load i32, i32* %y2.addr, align 4
  %cmp132 = icmp sle i32 %91, %92
  br i1 %cmp132, label %for.body, label %for.end.255

for.body:                                         ; preds = %for.cond
  %93 = load i32, i32* %y, align 4
  %94 = load i32, i32* %y2.addr, align 4
  %cmp133 = icmp eq i32 %93, %94
  br i1 %cmp133, label %if.then.134, label %if.end.135

if.then.134:                                      ; preds = %for.body
  %95 = load i32, i32* %x2.addr, align 4
  store i32 %95, i32* %xxe, align 4
  br label %if.end.135

if.end.135:                                       ; preds = %if.then.134, %for.body
  %96 = load i32, i32* %x1.addr, align 4
  %cmp136 = icmp eq i32 %96, 0
  br i1 %cmp136, label %land.lhs.true.137, label %if.end.163

land.lhs.true.137:                                ; preds = %if.end.135
  %97 = load %struct.display*, %struct.display** @display, align 8
  %d_tcs138 = getelementptr inbounds %struct.display, %struct.display* %97, i32 0, i32 83
  %arrayidx139 = getelementptr inbounds [201 x %union.tcu], [201 x %union.tcu]* %d_tcs138, i32 0, i64 38
  %str140 = bitcast %union.tcu* %arrayidx139 to i8**
  %98 = load i8*, i8** %str140, align 8
  %tobool141 = icmp ne i8* %98, null
  br i1 %tobool141, label %land.lhs.true.142, label %if.end.163

land.lhs.true.142:                                ; preds = %land.lhs.true.137
  %99 = load i32, i32* %xxe, align 4
  %100 = load %struct.display*, %struct.display** @display, align 8
  %d_width143 = getelementptr inbounds %struct.display, %struct.display* %100, i32 0, i32 16
  %101 = load i32, i32* %d_width143, align 4
  %sub144 = sub nsw i32 %101, 1
  %cmp145 = icmp ne i32 %99, %sub144
  br i1 %cmp145, label %land.lhs.true.152, label %lor.lhs.false.146

lor.lhs.false.146:                                ; preds = %land.lhs.true.142
  %102 = load %struct.display*, %struct.display** @display, align 8
  %d_x147 = getelementptr inbounds %struct.display, %struct.display* %102, i32 0, i32 22
  %103 = load i32, i32* %d_x147, align 4
  %104 = load i32, i32* %xxe, align 4
  %cmp148 = icmp eq i32 %103, %104
  br i1 %cmp148, label %land.lhs.true.149, label %if.end.163

land.lhs.true.149:                                ; preds = %lor.lhs.false.146
  %105 = load %struct.display*, %struct.display** @display, align 8
  %d_y150 = getelementptr inbounds %struct.display, %struct.display* %105, i32 0, i32 23
  %106 = load i32, i32* %d_y150, align 4
  %107 = load i32, i32* %y, align 4
  %cmp151 = icmp eq i32 %106, %107
  br i1 %cmp151, label %land.lhs.true.152, label %if.end.163

land.lhs.true.152:                                ; preds = %land.lhs.true.149, %land.lhs.true.142
  %108 = load i32, i32* %bce.addr, align 4
  %tobool153 = icmp ne i32 %108, 0
  br i1 %tobool153, label %lor.lhs.false.154, label %if.then.159

lor.lhs.false.154:                                ; preds = %land.lhs.true.152
  %109 = load %struct.display*, %struct.display** @display, align 8
  %d_tcs155 = getelementptr inbounds %struct.display, %struct.display* %109, i32 0, i32 83
  %arrayidx156 = getelementptr inbounds [201 x %union.tcu], [201 x %union.tcu]* %d_tcs155, i32 0, i64 66
  %flg157 = bitcast %union.tcu* %arrayidx156 to i32*
  %110 = load i32, i32* %flg157, align 4
  %tobool158 = icmp ne i32 %110, 0
  br i1 %tobool158, label %if.then.159, label %if.end.163

if.then.159:                                      ; preds = %lor.lhs.false.154, %land.lhs.true.152
  %111 = load i32, i32* %xxe, align 4
  %112 = load i32, i32* %y, align 4
  call void @GotoPos(i32 %111, i32 %112)
  %113 = load %struct.display*, %struct.display** @display, align 8
  %d_tcs160 = getelementptr inbounds %struct.display, %struct.display* %113, i32 0, i32 83
  %arrayidx161 = getelementptr inbounds [201 x %union.tcu], [201 x %union.tcu]* %d_tcs160, i32 0, i64 38
  %str162 = bitcast %union.tcu* %arrayidx161 to i8**
  %114 = load i8*, i8** %str162, align 8
  call void @AddCStr(i8* %114)
  br label %for.inc.254

if.end.163:                                       ; preds = %lor.lhs.false.154, %land.lhs.true.149, %lor.lhs.false.146, %land.lhs.true.137, %if.end.135
  %115 = load i32, i32* %xxe, align 4
  %116 = load %struct.display*, %struct.display** @display, align 8
  %d_width164 = getelementptr inbounds %struct.display, %struct.display* %116, i32 0, i32 16
  %117 = load i32, i32* %d_width164, align 4
  %sub165 = sub nsw i32 %117, 1
  %cmp166 = icmp eq i32 %115, %sub165
  br i1 %cmp166, label %land.lhs.true.167, label %if.end.183

land.lhs.true.167:                                ; preds = %if.end.163
  %118 = load %struct.display*, %struct.display** @display, align 8
  %d_tcs168 = getelementptr inbounds %struct.display, %struct.display* %118, i32 0, i32 83
  %arrayidx169 = getelementptr inbounds [201 x %union.tcu], [201 x %union.tcu]* %d_tcs168, i32 0, i64 37
  %str170 = bitcast %union.tcu* %arrayidx169 to i8**
  %119 = load i8*, i8** %str170, align 8
  %tobool171 = icmp ne i8* %119, null
  br i1 %tobool171, label %land.lhs.true.172, label %if.end.183

land.lhs.true.172:                                ; preds = %land.lhs.true.167
  %120 = load i32, i32* %bce.addr, align 4
  %tobool173 = icmp ne i32 %120, 0
  br i1 %tobool173, label %lor.lhs.false.174, label %if.then.179

lor.lhs.false.174:                                ; preds = %land.lhs.true.172
  %121 = load %struct.display*, %struct.display** @display, align 8
  %d_tcs175 = getelementptr inbounds %struct.display, %struct.display* %121, i32 0, i32 83
  %arrayidx176 = getelementptr inbounds [201 x %union.tcu], [201 x %union.tcu]* %d_tcs175, i32 0, i64 66
  %flg177 = bitcast %union.tcu* %arrayidx176 to i32*
  %122 = load i32, i32* %flg177, align 4
  %tobool178 = icmp ne i32 %122, 0
  br i1 %tobool178, label %if.then.179, label %if.end.183

if.then.179:                                      ; preds = %lor.lhs.false.174, %land.lhs.true.172
  %123 = load i32, i32* %x1.addr, align 4
  %124 = load i32, i32* %y, align 4
  call void @GotoPos(i32 %123, i32 %124)
  %125 = load %struct.display*, %struct.display** @display, align 8
  %d_tcs180 = getelementptr inbounds %struct.display, %struct.display* %125, i32 0, i32 83
  %arrayidx181 = getelementptr inbounds [201 x %union.tcu], [201 x %union.tcu]* %d_tcs180, i32 0, i64 37
  %str182 = bitcast %union.tcu* %arrayidx181 to i8**
  %126 = load i8*, i8** %str182, align 8
  call void @AddCStr(i8* %126)
  br label %for.inc.254

if.end.183:                                       ; preds = %lor.lhs.false.174, %land.lhs.true.167, %if.end.163
  %127 = load i32, i32* %uselayfn.addr, align 4
  %tobool184 = icmp ne i32 %127, 0
  br i1 %tobool184, label %if.then.185, label %if.end.253

if.then.185:                                      ; preds = %if.end.183
  store %struct.viewport* null, %struct.viewport** %vp, align 8
  %128 = load %struct.display*, %struct.display** @display, align 8
  %d_cvlist = getelementptr inbounds %struct.display, %struct.display* %128, i32 0, i32 3
  %129 = load %struct.canvas*, %struct.canvas** %d_cvlist, align 8
  store %struct.canvas* %129, %struct.canvas** %cv, align 8
  br label %for.cond.186

for.cond.186:                                     ; preds = %for.inc.213, %if.then.185
  %130 = load %struct.canvas*, %struct.canvas** %cv, align 8
  %tobool187 = icmp ne %struct.canvas* %130, null
  br i1 %tobool187, label %for.body.188, label %for.end.214

for.body.188:                                     ; preds = %for.cond.186
  %131 = load i32, i32* %y, align 4
  %132 = load %struct.canvas*, %struct.canvas** %cv, align 8
  %c_ys = getelementptr inbounds %struct.canvas, %struct.canvas* %132, i32 0, i32 16
  %133 = load i32, i32* %c_ys, align 4
  %cmp189 = icmp slt i32 %131, %133
  br i1 %cmp189, label %if.then.196, label %lor.lhs.false.190

lor.lhs.false.190:                                ; preds = %for.body.188
  %134 = load i32, i32* %y, align 4
  %135 = load %struct.canvas*, %struct.canvas** %cv, align 8
  %c_ye = getelementptr inbounds %struct.canvas, %struct.canvas* %135, i32 0, i32 17
  %136 = load i32, i32* %c_ye, align 4
  %cmp191 = icmp sgt i32 %134, %136
  br i1 %cmp191, label %if.then.196, label %lor.lhs.false.192

lor.lhs.false.192:                                ; preds = %lor.lhs.false.190
  %137 = load i32, i32* %xxe, align 4
  %138 = load %struct.canvas*, %struct.canvas** %cv, align 8
  %c_xs = getelementptr inbounds %struct.canvas, %struct.canvas* %138, i32 0, i32 14
  %139 = load i32, i32* %c_xs, align 4
  %cmp193 = icmp slt i32 %137, %139
  br i1 %cmp193, label %if.then.196, label %lor.lhs.false.194

lor.lhs.false.194:                                ; preds = %lor.lhs.false.192
  %140 = load i32, i32* %x1.addr, align 4
  %141 = load %struct.canvas*, %struct.canvas** %cv, align 8
  %c_xe = getelementptr inbounds %struct.canvas, %struct.canvas* %141, i32 0, i32 15
  %142 = load i32, i32* %c_xe, align 4
  %cmp195 = icmp sgt i32 %140, %142
  br i1 %cmp195, label %if.then.196, label %if.end.197

if.then.196:                                      ; preds = %lor.lhs.false.194, %lor.lhs.false.192, %lor.lhs.false.190, %for.body.188
  br label %for.inc.213

if.end.197:                                       ; preds = %lor.lhs.false.194
  %143 = load %struct.canvas*, %struct.canvas** %cv, align 8
  %c_vplist = getelementptr inbounds %struct.canvas, %struct.canvas* %143, i32 0, i32 8
  %144 = load %struct.viewport*, %struct.viewport** %c_vplist, align 8
  store %struct.viewport* %144, %struct.viewport** %vp, align 8
  br label %for.cond.198

for.cond.198:                                     ; preds = %for.inc, %if.end.197
  %145 = load %struct.viewport*, %struct.viewport** %vp, align 8
  %tobool199 = icmp ne %struct.viewport* %145, null
  br i1 %tobool199, label %for.body.200, label %for.end

for.body.200:                                     ; preds = %for.cond.198
  %146 = load i32, i32* %y, align 4
  %147 = load %struct.viewport*, %struct.viewport** %vp, align 8
  %v_ys = getelementptr inbounds %struct.viewport, %struct.viewport* %147, i32 0, i32 6
  %148 = load i32, i32* %v_ys, align 4
  %cmp201 = icmp sge i32 %146, %148
  br i1 %cmp201, label %land.lhs.true.202, label %if.end.209

land.lhs.true.202:                                ; preds = %for.body.200
  %149 = load i32, i32* %y, align 4
  %150 = load %struct.viewport*, %struct.viewport** %vp, align 8
  %v_ye = getelementptr inbounds %struct.viewport, %struct.viewport* %150, i32 0, i32 7
  %151 = load i32, i32* %v_ye, align 4
  %cmp203 = icmp sle i32 %149, %151
  br i1 %cmp203, label %land.lhs.true.204, label %if.end.209

land.lhs.true.204:                                ; preds = %land.lhs.true.202
  %152 = load i32, i32* %xxe, align 4
  %153 = load %struct.viewport*, %struct.viewport** %vp, align 8
  %v_xs = getelementptr inbounds %struct.viewport, %struct.viewport* %153, i32 0, i32 4
  %154 = load i32, i32* %v_xs, align 4
  %cmp205 = icmp sge i32 %152, %154
  br i1 %cmp205, label %land.lhs.true.206, label %if.end.209

land.lhs.true.206:                                ; preds = %land.lhs.true.204
  %155 = load i32, i32* %x1.addr, align 4
  %156 = load %struct.viewport*, %struct.viewport** %vp, align 8
  %v_xe = getelementptr inbounds %struct.viewport, %struct.viewport* %156, i32 0, i32 5
  %157 = load i32, i32* %v_xe, align 4
  %cmp207 = icmp sle i32 %155, %157
  br i1 %cmp207, label %if.then.208, label %if.end.209

if.then.208:                                      ; preds = %land.lhs.true.206
  br label %for.end

if.end.209:                                       ; preds = %land.lhs.true.206, %land.lhs.true.204, %land.lhs.true.202, %for.body.200
  br label %for.inc

for.inc:                                          ; preds = %if.end.209
  %158 = load %struct.viewport*, %struct.viewport** %vp, align 8
  %v_next = getelementptr inbounds %struct.viewport, %struct.viewport* %158, i32 0, i32 0
  %159 = load %struct.viewport*, %struct.viewport** %v_next, align 8
  store %struct.viewport* %159, %struct.viewport** %vp, align 8
  br label %for.cond.198

for.end:                                          ; preds = %if.then.208, %for.cond.198
  %160 = load %struct.viewport*, %struct.viewport** %vp, align 8
  %tobool210 = icmp ne %struct.viewport* %160, null
  br i1 %tobool210, label %if.then.211, label %if.end.212

if.then.211:                                      ; preds = %for.end
  br label %for.end.214

if.end.212:                                       ; preds = %for.end
  br label %for.inc.213

for.inc.213:                                      ; preds = %if.end.212, %if.then.196
  %161 = load %struct.canvas*, %struct.canvas** %cv, align 8
  %c_next = getelementptr inbounds %struct.canvas, %struct.canvas* %161, i32 0, i32 0
  %162 = load %struct.canvas*, %struct.canvas** %c_next, align 8
  store %struct.canvas* %162, %struct.canvas** %cv, align 8
  br label %for.cond.186

for.end.214:                                      ; preds = %if.then.211, %for.cond.186
  %163 = load %struct.canvas*, %struct.canvas** %cv, align 8
  %tobool215 = icmp ne %struct.canvas* %163, null
  br i1 %tobool215, label %land.lhs.true.216, label %if.end.252

land.lhs.true.216:                                ; preds = %for.end.214
  %164 = load %struct.canvas*, %struct.canvas** %cv, align 8
  %c_layer = getelementptr inbounds %struct.canvas, %struct.canvas* %164, i32 0, i32 9
  %165 = load %struct.layer*, %struct.layer** %c_layer, align 8
  %tobool217 = icmp ne %struct.layer* %165, null
  br i1 %tobool217, label %land.lhs.true.218, label %if.end.252

land.lhs.true.218:                                ; preds = %land.lhs.true.216
  %166 = load i32, i32* %x1.addr, align 4
  %167 = load %struct.viewport*, %struct.viewport** %vp, align 8
  %v_xs219 = getelementptr inbounds %struct.viewport, %struct.viewport* %167, i32 0, i32 4
  %168 = load i32, i32* %v_xs219, align 4
  %cmp220 = icmp sge i32 %166, %168
  br i1 %cmp220, label %land.lhs.true.221, label %if.end.252

land.lhs.true.221:                                ; preds = %land.lhs.true.218
  %169 = load i32, i32* %xxe, align 4
  %170 = load %struct.viewport*, %struct.viewport** %vp, align 8
  %v_xe222 = getelementptr inbounds %struct.viewport, %struct.viewport* %170, i32 0, i32 5
  %171 = load i32, i32* %v_xe222, align 4
  %cmp223 = icmp sle i32 %169, %171
  br i1 %cmp223, label %land.lhs.true.224, label %if.end.252

land.lhs.true.224:                                ; preds = %land.lhs.true.221
  %172 = load i32, i32* %y, align 4
  %173 = load %struct.viewport*, %struct.viewport** %vp, align 8
  %v_yoff = getelementptr inbounds %struct.viewport, %struct.viewport* %173, i32 0, i32 3
  %174 = load i32, i32* %v_yoff, align 4
  %sub225 = sub nsw i32 %172, %174
  %cmp226 = icmp sge i32 %sub225, 0
  br i1 %cmp226, label %land.lhs.true.227, label %if.end.252

land.lhs.true.227:                                ; preds = %land.lhs.true.224
  %175 = load i32, i32* %y, align 4
  %176 = load %struct.viewport*, %struct.viewport** %vp, align 8
  %v_yoff228 = getelementptr inbounds %struct.viewport, %struct.viewport* %176, i32 0, i32 3
  %177 = load i32, i32* %v_yoff228, align 4
  %sub229 = sub nsw i32 %175, %177
  %178 = load %struct.canvas*, %struct.canvas** %cv, align 8
  %c_layer230 = getelementptr inbounds %struct.canvas, %struct.canvas* %178, i32 0, i32 9
  %179 = load %struct.layer*, %struct.layer** %c_layer230, align 8
  %l_height = getelementptr inbounds %struct.layer, %struct.layer* %179, i32 0, i32 2
  %180 = load i32, i32* %l_height, align 4
  %cmp231 = icmp slt i32 %sub229, %180
  br i1 %cmp231, label %land.lhs.true.232, label %if.end.252

land.lhs.true.232:                                ; preds = %land.lhs.true.227
  %181 = load i32, i32* %xxe, align 4
  %182 = load %struct.viewport*, %struct.viewport** %vp, align 8
  %v_xoff = getelementptr inbounds %struct.viewport, %struct.viewport* %182, i32 0, i32 2
  %183 = load i32, i32* %v_xoff, align 4
  %sub233 = sub nsw i32 %181, %183
  %cmp234 = icmp sge i32 %sub233, 0
  br i1 %cmp234, label %land.lhs.true.235, label %if.end.252

land.lhs.true.235:                                ; preds = %land.lhs.true.232
  %184 = load i32, i32* %x1.addr, align 4
  %185 = load %struct.viewport*, %struct.viewport** %vp, align 8
  %v_xoff236 = getelementptr inbounds %struct.viewport, %struct.viewport* %185, i32 0, i32 2
  %186 = load i32, i32* %v_xoff236, align 4
  %sub237 = sub nsw i32 %184, %186
  %187 = load %struct.canvas*, %struct.canvas** %cv, align 8
  %c_layer238 = getelementptr inbounds %struct.canvas, %struct.canvas* %187, i32 0, i32 9
  %188 = load %struct.layer*, %struct.layer** %c_layer238, align 8
  %l_width = getelementptr inbounds %struct.layer, %struct.layer* %188, i32 0, i32 1
  %189 = load i32, i32* %l_width, align 4
  %cmp239 = icmp slt i32 %sub237, %189
  br i1 %cmp239, label %if.then.240, label %if.end.252

if.then.240:                                      ; preds = %land.lhs.true.235
  %190 = load %struct.layer*, %struct.layer** @flayer, align 8
  store %struct.layer* %190, %struct.layer** %oldflayer, align 8
  %191 = load %struct.canvas*, %struct.canvas** %cv, align 8
  %c_layer241 = getelementptr inbounds %struct.canvas, %struct.canvas* %191, i32 0, i32 9
  %192 = load %struct.layer*, %struct.layer** %c_layer241, align 8
  store %struct.layer* %192, %struct.layer** @flayer, align 8
  %193 = load %struct.layer*, %struct.layer** @flayer, align 8
  %l_cvlist = getelementptr inbounds %struct.layer, %struct.layer* %193, i32 0, i32 0
  %194 = load %struct.canvas*, %struct.canvas** %l_cvlist, align 8
  store %struct.canvas* %194, %struct.canvas** %cvlist, align 8
  %195 = load %struct.canvas*, %struct.canvas** %cv, align 8
  %c_lnext = getelementptr inbounds %struct.canvas, %struct.canvas* %195, i32 0, i32 10
  %196 = load %struct.canvas*, %struct.canvas** %c_lnext, align 8
  store %struct.canvas* %196, %struct.canvas** %cvlnext, align 8
  %197 = load %struct.canvas*, %struct.canvas** %cv, align 8
  %198 = load %struct.layer*, %struct.layer** @flayer, align 8
  %l_cvlist242 = getelementptr inbounds %struct.layer, %struct.layer* %198, i32 0, i32 0
  store %struct.canvas* %197, %struct.canvas** %l_cvlist242, align 8
  %199 = load %struct.canvas*, %struct.canvas** %cv, align 8
  %c_lnext243 = getelementptr inbounds %struct.canvas, %struct.canvas* %199, i32 0, i32 10
  store %struct.canvas* null, %struct.canvas** %c_lnext243, align 8
  %200 = load %struct.layer*, %struct.layer** @flayer, align 8
  %l_layfn = getelementptr inbounds %struct.layer, %struct.layer* %200, i32 0, i32 6
  %201 = load %struct.LayFuncs*, %struct.LayFuncs** %l_layfn, align 8
  %lf_LayClearLine = getelementptr inbounds %struct.LayFuncs, %struct.LayFuncs* %201, i32 0, i32 3
  %202 = load void (i32, i32, i32, i32)*, void (i32, i32, i32, i32)** %lf_LayClearLine, align 8
  %203 = load i32, i32* %y, align 4
  %204 = load %struct.viewport*, %struct.viewport** %vp, align 8
  %v_yoff244 = getelementptr inbounds %struct.viewport, %struct.viewport* %204, i32 0, i32 3
  %205 = load i32, i32* %v_yoff244, align 4
  %sub245 = sub nsw i32 %203, %205
  %206 = load i32, i32* %x1.addr, align 4
  %207 = load %struct.viewport*, %struct.viewport** %vp, align 8
  %v_xoff246 = getelementptr inbounds %struct.viewport, %struct.viewport* %207, i32 0, i32 2
  %208 = load i32, i32* %v_xoff246, align 4
  %sub247 = sub nsw i32 %206, %208
  %209 = load i32, i32* %xxe, align 4
  %210 = load %struct.viewport*, %struct.viewport** %vp, align 8
  %v_xoff248 = getelementptr inbounds %struct.viewport, %struct.viewport* %210, i32 0, i32 2
  %211 = load i32, i32* %v_xoff248, align 4
  %sub249 = sub nsw i32 %209, %211
  %212 = load i32, i32* %bce.addr, align 4
  call void %202(i32 %sub245, i32 %sub247, i32 %sub249, i32 %212)
  %213 = load %struct.canvas*, %struct.canvas** %cvlist, align 8
  %214 = load %struct.layer*, %struct.layer** @flayer, align 8
  %l_cvlist250 = getelementptr inbounds %struct.layer, %struct.layer* %214, i32 0, i32 0
  store %struct.canvas* %213, %struct.canvas** %l_cvlist250, align 8
  %215 = load %struct.canvas*, %struct.canvas** %cvlnext, align 8
  %216 = load %struct.canvas*, %struct.canvas** %cv, align 8
  %c_lnext251 = getelementptr inbounds %struct.canvas, %struct.canvas* %216, i32 0, i32 10
  store %struct.canvas* %215, %struct.canvas** %c_lnext251, align 8
  %217 = load %struct.layer*, %struct.layer** %oldflayer, align 8
  store %struct.layer* %217, %struct.layer** @flayer, align 8
  br label %for.inc.254

if.end.252:                                       ; preds = %land.lhs.true.235, %land.lhs.true.232, %land.lhs.true.227, %land.lhs.true.224, %land.lhs.true.221, %land.lhs.true.218, %land.lhs.true.216, %for.end.214
  br label %if.end.253

if.end.253:                                       ; preds = %if.end.252, %if.end.183
  %218 = load i32, i32* %y, align 4
  %219 = load i32, i32* %x1.addr, align 4
  %220 = load i32, i32* %xxe, align 4
  %221 = load i32, i32* %bce.addr, align 4
  call void @ClearLine(%struct.mline* null, i32 %218, i32 %219, i32 %220, i32 %221)
  br label %for.inc.254

for.inc.254:                                      ; preds = %if.end.253, %if.then.240, %if.then.179, %if.then.159
  %222 = load i32, i32* %y, align 4
  %inc = add nsw i32 %222, 1
  store i32 %inc, i32* %y, align 4
  %223 = load i32, i32* %xs.addr, align 4
  store i32 %223, i32* %x1.addr, align 4
  br label %for.cond

for.end.255:                                      ; preds = %if.then.82, %if.then.98, %if.then.127, %for.cond
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @SetBackColor(i32 %new) #0 {
entry:
  %new.addr = alloca i32, align 4
  store i32 %new, i32* %new.addr, align 4
  %0 = load %struct.display*, %struct.display** @display, align 8
  %tobool = icmp ne %struct.display* %0, null
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  br label %return

if.end:                                           ; preds = %entry
  %1 = load %struct.display*, %struct.display** @display, align 8
  %d_rend = getelementptr inbounds %struct.display, %struct.display* %1, i32 0, i32 24
  %color = getelementptr inbounds %struct.mchar, %struct.mchar* %d_rend, i32 0, i32 4
  %2 = load i8, i8* %color, align 1
  %conv = zext i8 %2 to i32
  %and = and i32 %conv, 15
  %3 = load %struct.display*, %struct.display** @display, align 8
  %d_rend1 = getelementptr inbounds %struct.display, %struct.display* %3, i32 0, i32 24
  %attr = getelementptr inbounds %struct.mchar, %struct.mchar* %d_rend1, i32 0, i32 1
  %4 = load i8, i8* %attr, align 1
  %conv2 = zext i8 %4 to i32
  %and3 = and i32 %conv2, 64
  %tobool4 = icmp ne i32 %and3, 0
  %cond = select i1 %tobool4, i32 256, i32 0
  %or = or i32 %and, %cond
  %5 = load i32, i32* %new.addr, align 4
  call void @SetColor(i32 %or, i32 %5)
  br label %return

return:                                           ; preds = %if.end, %if.then
  ret void
}

; Function Attrs: nounwind uwtable
define void @NukePending() #0 {
entry:
  %len = alloca i32, align 4
  %oldtop = alloca i32, align 4
  %oldbot = alloca i32, align 4
  %oldrend = alloca %struct.mchar, align 1
  %oldkeypad = alloca i32, align 4
  %oldcursorkeys = alloca i32, align 4
  %oldcurvis = alloca i32, align 4
  %oldmouse = alloca i32, align 4
  %0 = load %struct.display*, %struct.display** @display, align 8
  %d_top = getelementptr inbounds %struct.display, %struct.display* %0, i32 0, i32 20
  %1 = load i32, i32* %d_top, align 4
  store i32 %1, i32* %oldtop, align 4
  %2 = load %struct.display*, %struct.display** @display, align 8
  %d_bot = getelementptr inbounds %struct.display, %struct.display* %2, i32 0, i32 21
  %3 = load i32, i32* %d_bot, align 4
  store i32 %3, i32* %oldbot, align 4
  %4 = load %struct.display*, %struct.display** @display, align 8
  %d_keypad = getelementptr inbounds %struct.display, %struct.display* %4, i32 0, i32 32
  %5 = load i32, i32* %d_keypad, align 4
  store i32 %5, i32* %oldkeypad, align 4
  %6 = load %struct.display*, %struct.display** @display, align 8
  %d_cursorkeys = getelementptr inbounds %struct.display, %struct.display* %6, i32 0, i32 33
  %7 = load i32, i32* %d_cursorkeys, align 4
  store i32 %7, i32* %oldcursorkeys, align 4
  %8 = load %struct.display*, %struct.display** @display, align 8
  %d_curvis = getelementptr inbounds %struct.display, %struct.display* %8, i32 0, i32 35
  %9 = load i32, i32* %d_curvis, align 4
  store i32 %9, i32* %oldcurvis, align 4
  %10 = load %struct.display*, %struct.display** @display, align 8
  %d_mouse = getelementptr inbounds %struct.display, %struct.display* %10, i32 0, i32 39
  %11 = load i32, i32* %d_mouse, align 4
  store i32 %11, i32* %oldmouse, align 4
  %12 = load %struct.display*, %struct.display** @display, align 8
  %d_rend = getelementptr inbounds %struct.display, %struct.display* %12, i32 0, i32 24
  %13 = bitcast %struct.mchar* %oldrend to i8*
  %14 = bitcast %struct.mchar* %d_rend to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %13, i8* %14, i64 6, i32 1, i1 false)
  %15 = load %struct.display*, %struct.display** @display, align 8
  %d_obufp = getelementptr inbounds %struct.display, %struct.display* %15, i32 0, i32 71
  %16 = load i8*, i8** %d_obufp, align 8
  %17 = load %struct.display*, %struct.display** @display, align 8
  %d_obuf = getelementptr inbounds %struct.display, %struct.display* %17, i32 0, i32 67
  %18 = load i8*, i8** %d_obuf, align 8
  %sub.ptr.lhs.cast = ptrtoint i8* %16 to i64
  %sub.ptr.rhs.cast = ptrtoint i8* %18 to i64
  %sub.ptr.sub = sub i64 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast
  %conv = trunc i64 %sub.ptr.sub to i32
  store i32 %conv, i32* %len, align 4
  br label %do.body

do.body:                                          ; preds = %entry
  br label %do.end

do.end:                                           ; preds = %do.body
  %19 = load %struct.display*, %struct.display** @display, align 8
  %d_userfd = getelementptr inbounds %struct.display, %struct.display* %19, i32 0, i32 59
  %20 = load i32, i32* %d_userfd, align 4
  %call = call i32 @tcflush(i32 %20, i32 1) #3
  %21 = load %struct.display*, %struct.display** @display, align 8
  %d_obuf1 = getelementptr inbounds %struct.display, %struct.display* %21, i32 0, i32 67
  %22 = load i8*, i8** %d_obuf1, align 8
  %23 = load %struct.display*, %struct.display** @display, align 8
  %d_obufp2 = getelementptr inbounds %struct.display, %struct.display* %23, i32 0, i32 71
  store i8* %22, i8** %d_obufp2, align 8
  %24 = load i32, i32* %len, align 4
  %25 = load %struct.display*, %struct.display** @display, align 8
  %d_obuffree = getelementptr inbounds %struct.display, %struct.display* %25, i32 0, i32 72
  %26 = load i32, i32* %d_obuffree, align 4
  %add = add nsw i32 %26, %24
  store i32 %add, i32* %d_obuffree, align 4
  %27 = load %struct.display*, %struct.display** @display, align 8
  %d_bot3 = getelementptr inbounds %struct.display, %struct.display* %27, i32 0, i32 21
  store i32 -1, i32* %d_bot3, align 4
  %28 = load %struct.display*, %struct.display** @display, align 8
  %d_top4 = getelementptr inbounds %struct.display, %struct.display* %28, i32 0, i32 20
  store i32 -1, i32* %d_top4, align 4
  %29 = load %struct.display*, %struct.display** @display, align 8
  %d_tcs = getelementptr inbounds %struct.display, %struct.display* %29, i32 0, i32 83
  %arrayidx = getelementptr inbounds [201 x %union.tcu], [201 x %union.tcu]* %d_tcs, i32 0, i64 39
  %str = bitcast %union.tcu* %arrayidx to i8**
  %30 = load i8*, i8** %str, align 8
  call void @AddCStr(i8* %30)
  %31 = load %struct.display*, %struct.display** @display, align 8
  %d_tcs5 = getelementptr inbounds %struct.display, %struct.display* %31, i32 0, i32 83
  %arrayidx6 = getelementptr inbounds [201 x %union.tcu], [201 x %union.tcu]* %d_tcs5, i32 0, i64 40
  %str7 = bitcast %union.tcu* %arrayidx6 to i8**
  %32 = load i8*, i8** %str7, align 8
  call void @AddCStr(i8* %32)
  %33 = load %struct.display*, %struct.display** @display, align 8
  %d_tcs8 = getelementptr inbounds %struct.display, %struct.display* %33, i32 0, i32 83
  %arrayidx9 = getelementptr inbounds [201 x %union.tcu], [201 x %union.tcu]* %d_tcs8, i32 0, i64 55
  %str10 = bitcast %union.tcu* %arrayidx9 to i8**
  %34 = load i8*, i8** %str10, align 8
  %tobool = icmp ne i8* %34, null
  br i1 %tobool, label %if.then, label %if.else

if.then:                                          ; preds = %do.end
  %35 = load %struct.display*, %struct.display** @display, align 8
  %d_tcs11 = getelementptr inbounds %struct.display, %struct.display* %35, i32 0, i32 83
  %arrayidx12 = getelementptr inbounds [201 x %union.tcu], [201 x %union.tcu]* %d_tcs11, i32 0, i64 55
  %str13 = bitcast %union.tcu* %arrayidx12 to i8**
  %36 = load i8*, i8** %str13, align 8
  call void @AddCStr(i8* %36)
  br label %if.end.22

if.else:                                          ; preds = %do.end
  %37 = load %struct.display*, %struct.display** @display, align 8
  %d_hascolor = getelementptr inbounds %struct.display, %struct.display* %37, i32 0, i32 86
  %38 = load i32, i32* %d_hascolor, align 4
  %tobool14 = icmp ne i32 %38, 0
  br i1 %tobool14, label %if.then.15, label %if.end

if.then.15:                                       ; preds = %if.else
  call void @AddStr(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.3, i32 0, i32 0))
  br label %if.end

if.end:                                           ; preds = %if.then.15, %if.else
  %39 = load %struct.display*, %struct.display** @display, align 8
  %d_tcs16 = getelementptr inbounds %struct.display, %struct.display* %39, i32 0, i32 83
  %arrayidx17 = getelementptr inbounds [201 x %union.tcu], [201 x %union.tcu]* %d_tcs16, i32 0, i64 54
  %str18 = bitcast %union.tcu* %arrayidx17 to i8**
  %40 = load i8*, i8** %str18, align 8
  call void @AddCStr(i8* %40)
  %41 = load %struct.display*, %struct.display** @display, align 8
  %d_tcs19 = getelementptr inbounds %struct.display, %struct.display* %41, i32 0, i32 83
  %arrayidx20 = getelementptr inbounds [201 x %union.tcu], [201 x %union.tcu]* %d_tcs19, i32 0, i64 53
  %str21 = bitcast %union.tcu* %arrayidx20 to i8**
  %42 = load i8*, i8** %str21, align 8
  call void @AddCStr(i8* %42)
  br label %if.end.22

if.end.22:                                        ; preds = %if.end, %if.then
  %43 = load %struct.display*, %struct.display** @display, align 8
  %d_tcs23 = getelementptr inbounds %struct.display, %struct.display* %43, i32 0, i32 83
  %arrayidx24 = getelementptr inbounds [201 x %union.tcu], [201 x %union.tcu]* %d_tcs23, i32 0, i64 27
  %str25 = bitcast %union.tcu* %arrayidx24 to i8**
  %44 = load i8*, i8** %str25, align 8
  %tobool26 = icmp ne i8* %44, null
  br i1 %tobool26, label %land.lhs.true, label %if.end.39

land.lhs.true:                                    ; preds = %if.end.22
  %45 = load %struct.display*, %struct.display** @display, align 8
  %d_tcs27 = getelementptr inbounds %struct.display, %struct.display* %45, i32 0, i32 83
  %arrayidx28 = getelementptr inbounds [201 x %union.tcu], [201 x %union.tcu]* %d_tcs27, i32 0, i64 27
  %str29 = bitcast %union.tcu* %arrayidx28 to i8**
  %46 = load i8*, i8** %str29, align 8
  %47 = load %struct.display*, %struct.display** @display, align 8
  %d_tcs30 = getelementptr inbounds %struct.display, %struct.display* %47, i32 0, i32 83
  %arrayidx31 = getelementptr inbounds [201 x %union.tcu], [201 x %union.tcu]* %d_tcs30, i32 0, i64 28
  %str32 = bitcast %union.tcu* %arrayidx31 to i8**
  %48 = load i8*, i8** %str32, align 8
  %call33 = call i32 @strcmp(i8* %46, i8* %48) #9
  %tobool34 = icmp ne i32 %call33, 0
  br i1 %tobool34, label %if.then.35, label %if.end.39

if.then.35:                                       ; preds = %land.lhs.true
  %49 = load %struct.display*, %struct.display** @display, align 8
  %d_tcs36 = getelementptr inbounds %struct.display, %struct.display* %49, i32 0, i32 83
  %arrayidx37 = getelementptr inbounds [201 x %union.tcu], [201 x %union.tcu]* %d_tcs36, i32 0, i64 28
  %str38 = bitcast %union.tcu* %arrayidx37 to i8**
  %50 = load i8*, i8** %str38, align 8
  call void @AddCStr(i8* %50)
  br label %if.end.39

if.end.39:                                        ; preds = %if.then.35, %land.lhs.true, %if.end.22
  %51 = load %struct.display*, %struct.display** @display, align 8
  %d_insert = getelementptr inbounds %struct.display, %struct.display* %51, i32 0, i32 31
  store i32 0, i32* %d_insert, align 4
  %52 = load %struct.display*, %struct.display** @display, align 8
  %d_tcs40 = getelementptr inbounds %struct.display, %struct.display* %52, i32 0, i32 83
  %arrayidx41 = getelementptr inbounds [201 x %union.tcu], [201 x %union.tcu]* %d_tcs40, i32 0, i64 69
  %str42 = bitcast %union.tcu* %arrayidx41 to i8**
  %53 = load i8*, i8** %str42, align 8
  %tobool43 = icmp ne i8* %53, null
  br i1 %tobool43, label %land.lhs.true.44, label %if.end.57

land.lhs.true.44:                                 ; preds = %if.end.39
  %54 = load %struct.display*, %struct.display** @display, align 8
  %d_tcs45 = getelementptr inbounds %struct.display, %struct.display* %54, i32 0, i32 83
  %arrayidx46 = getelementptr inbounds [201 x %union.tcu], [201 x %union.tcu]* %d_tcs45, i32 0, i64 69
  %str47 = bitcast %union.tcu* %arrayidx46 to i8**
  %55 = load i8*, i8** %str47, align 8
  %56 = load %struct.display*, %struct.display** @display, align 8
  %d_tcs48 = getelementptr inbounds %struct.display, %struct.display* %56, i32 0, i32 83
  %arrayidx49 = getelementptr inbounds [201 x %union.tcu], [201 x %union.tcu]* %d_tcs48, i32 0, i64 70
  %str50 = bitcast %union.tcu* %arrayidx49 to i8**
  %57 = load i8*, i8** %str50, align 8
  %call51 = call i32 @strcmp(i8* %55, i8* %57) #9
  %tobool52 = icmp ne i32 %call51, 0
  br i1 %tobool52, label %if.then.53, label %if.end.57

if.then.53:                                       ; preds = %land.lhs.true.44
  %58 = load %struct.display*, %struct.display** @display, align 8
  %d_tcs54 = getelementptr inbounds %struct.display, %struct.display* %58, i32 0, i32 83
  %arrayidx55 = getelementptr inbounds [201 x %union.tcu], [201 x %union.tcu]* %d_tcs54, i32 0, i64 69
  %str56 = bitcast %union.tcu* %arrayidx55 to i8**
  %59 = load i8*, i8** %str56, align 8
  call void @AddCStr(i8* %59)
  br label %if.end.57

if.end.57:                                        ; preds = %if.then.53, %land.lhs.true.44, %if.end.39
  %60 = load %struct.display*, %struct.display** @display, align 8
  %d_tcs58 = getelementptr inbounds %struct.display, %struct.display* %60, i32 0, i32 83
  %arrayidx59 = getelementptr inbounds [201 x %union.tcu], [201 x %union.tcu]* %d_tcs58, i32 0, i64 71
  %str60 = bitcast %union.tcu* %arrayidx59 to i8**
  %61 = load i8*, i8** %str60, align 8
  %tobool61 = icmp ne i8* %61, null
  br i1 %tobool61, label %land.lhs.true.62, label %if.end.75

land.lhs.true.62:                                 ; preds = %if.end.57
  %62 = load %struct.display*, %struct.display** @display, align 8
  %d_tcs63 = getelementptr inbounds %struct.display, %struct.display* %62, i32 0, i32 83
  %arrayidx64 = getelementptr inbounds [201 x %union.tcu], [201 x %union.tcu]* %d_tcs63, i32 0, i64 71
  %str65 = bitcast %union.tcu* %arrayidx64 to i8**
  %63 = load i8*, i8** %str65, align 8
  %64 = load %struct.display*, %struct.display** @display, align 8
  %d_tcs66 = getelementptr inbounds %struct.display, %struct.display* %64, i32 0, i32 83
  %arrayidx67 = getelementptr inbounds [201 x %union.tcu], [201 x %union.tcu]* %d_tcs66, i32 0, i64 72
  %str68 = bitcast %union.tcu* %arrayidx67 to i8**
  %65 = load i8*, i8** %str68, align 8
  %call69 = call i32 @strcmp(i8* %63, i8* %65) #9
  %tobool70 = icmp ne i32 %call69, 0
  br i1 %tobool70, label %if.then.71, label %if.end.75

if.then.71:                                       ; preds = %land.lhs.true.62
  %66 = load %struct.display*, %struct.display** @display, align 8
  %d_tcs72 = getelementptr inbounds %struct.display, %struct.display* %66, i32 0, i32 83
  %arrayidx73 = getelementptr inbounds [201 x %union.tcu], [201 x %union.tcu]* %d_tcs72, i32 0, i64 71
  %str74 = bitcast %union.tcu* %arrayidx73 to i8**
  %67 = load i8*, i8** %str74, align 8
  call void @AddCStr(i8* %67)
  br label %if.end.75

if.end.75:                                        ; preds = %if.then.71, %land.lhs.true.62, %if.end.57
  %68 = load %struct.display*, %struct.display** @display, align 8
  %d_tcs76 = getelementptr inbounds %struct.display, %struct.display* %68, i32 0, i32 83
  %arrayidx77 = getelementptr inbounds [201 x %union.tcu], [201 x %union.tcu]* %d_tcs76, i32 0, i64 99
  %str78 = bitcast %union.tcu* %arrayidx77 to i8**
  %69 = load i8*, i8** %str78, align 8
  call void @AddCStr(i8* %69)
  %70 = load %struct.display*, %struct.display** @display, align 8
  %d_rend79 = getelementptr inbounds %struct.display, %struct.display* %70, i32 0, i32 24
  %71 = bitcast %struct.mchar* %d_rend79 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %71, i8* getelementptr inbounds (%struct.mchar, %struct.mchar* @mchar_null, i32 0, i32 0), i64 6, i32 1, i1 false)
  %72 = load %struct.display*, %struct.display** @display, align 8
  %d_atyp = getelementptr inbounds %struct.display, %struct.display* %72, i32 0, i32 26
  store i8 0, i8* %d_atyp, align 1
  %73 = load %struct.display*, %struct.display** @display, align 8
  %d_tcs80 = getelementptr inbounds %struct.display, %struct.display* %73, i32 0, i32 83
  %arrayidx81 = getelementptr inbounds [201 x %union.tcu], [201 x %union.tcu]* %d_tcs80, i32 0, i64 79
  %str82 = bitcast %union.tcu* %arrayidx81 to i8**
  %74 = load i8*, i8** %str82, align 8
  call void @AddCStr(i8* %74)
  %75 = load %struct.display*, %struct.display** @display, align 8
  %d_hstatus = getelementptr inbounds %struct.display, %struct.display* %75, i32 0, i32 37
  store i32 0, i32* %d_hstatus, align 4
  %76 = load %struct.display*, %struct.display** @display, align 8
  %d_tcs83 = getelementptr inbounds %struct.display, %struct.display* %76, i32 0, i32 83
  %arrayidx84 = getelementptr inbounds [201 x %union.tcu], [201 x %union.tcu]* %d_tcs83, i32 0, i64 82
  %str85 = bitcast %union.tcu* %arrayidx84 to i8**
  %77 = load i8*, i8** %str85, align 8
  call void @AddCStr(i8* %77)
  %78 = load %struct.display*, %struct.display** @display, align 8
  %d_curvis86 = getelementptr inbounds %struct.display, %struct.display* %78, i32 0, i32 35
  store i32 0, i32* %d_curvis86, align 4
  %79 = load i32, i32* %oldtop, align 4
  %80 = load i32, i32* %oldbot, align 4
  call void @ChangeScrollRegion(i32 %79, i32 %80)
  call void @SetRendition(%struct.mchar* %oldrend)
  %81 = load i32, i32* %oldkeypad, align 4
  call void @KeypadMode(i32 %81)
  %82 = load i32, i32* %oldcursorkeys, align 4
  call void @CursorkeysMode(i32 %82)
  %83 = load i32, i32* %oldcurvis, align 4
  call void @CursorVisibility(i32 %83)
  %84 = load i32, i32* %oldmouse, align 4
  call void @MouseMode(i32 %84)
  %85 = load %struct.display*, %struct.display** @display, align 8
  %d_tcs87 = getelementptr inbounds %struct.display, %struct.display* %85, i32 0, i32 83
  %arrayidx88 = getelementptr inbounds [201 x %union.tcu], [201 x %union.tcu]* %d_tcs87, i32 0, i64 44
  %str89 = bitcast %union.tcu* %arrayidx88 to i8**
  %86 = load i8*, i8** %str89, align 8
  %tobool90 = icmp ne i8* %86, null
  br i1 %tobool90, label %if.then.91, label %if.else.98

if.then.91:                                       ; preds = %if.end.75
  br label %do.body.92

do.body.92:                                       ; preds = %if.then.91
  br label %do.end.93

do.end.93:                                        ; preds = %do.body.92
  %87 = load %struct.display*, %struct.display** @display, align 8
  %d_tcs94 = getelementptr inbounds %struct.display, %struct.display* %87, i32 0, i32 83
  %arrayidx95 = getelementptr inbounds [201 x %union.tcu], [201 x %union.tcu]* %d_tcs94, i32 0, i64 44
  %str96 = bitcast %union.tcu* %arrayidx95 to i8**
  %88 = load i8*, i8** %str96, align 8
  %89 = load %struct.display*, %struct.display** @display, align 8
  %d_width = getelementptr inbounds %struct.display, %struct.display* %89, i32 0, i32 16
  %90 = load i32, i32* %d_width, align 4
  %91 = load %struct.display*, %struct.display** @display, align 8
  %d_height = getelementptr inbounds %struct.display, %struct.display* %91, i32 0, i32 17
  %92 = load i32, i32* %d_height, align 4
  %call97 = call i8* @tgoto(i8* %88, i32 %90, i32 %92)
  call void @AddCStr(i8* %call97)
  br label %if.end.122

if.else.98:                                       ; preds = %if.end.75
  %93 = load %struct.display*, %struct.display** @display, align 8
  %d_tcs99 = getelementptr inbounds %struct.display, %struct.display* %93, i32 0, i32 83
  %arrayidx100 = getelementptr inbounds [201 x %union.tcu], [201 x %union.tcu]* %d_tcs99, i32 0, i64 45
  %str101 = bitcast %union.tcu* %arrayidx100 to i8**
  %94 = load i8*, i8** %str101, align 8
  %tobool102 = icmp ne i8* %94, null
  br i1 %tobool102, label %land.lhs.true.103, label %if.end.121

land.lhs.true.103:                                ; preds = %if.else.98
  %95 = load %struct.display*, %struct.display** @display, align 8
  %d_width104 = getelementptr inbounds %struct.display, %struct.display* %95, i32 0, i32 16
  %96 = load i32, i32* %d_width104, align 4
  %97 = load i32, i32* @Z0width, align 4
  %cmp = icmp eq i32 %96, %97
  br i1 %cmp, label %if.then.109, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %land.lhs.true.103
  %98 = load %struct.display*, %struct.display** @display, align 8
  %d_width106 = getelementptr inbounds %struct.display, %struct.display* %98, i32 0, i32 16
  %99 = load i32, i32* %d_width106, align 4
  %100 = load i32, i32* @Z1width, align 4
  %cmp107 = icmp eq i32 %99, %100
  br i1 %cmp107, label %if.then.109, label %if.end.121

if.then.109:                                      ; preds = %lor.lhs.false, %land.lhs.true.103
  br label %do.body.110

do.body.110:                                      ; preds = %if.then.109
  br label %do.end.111

do.end.111:                                       ; preds = %do.body.110
  %101 = load %struct.display*, %struct.display** @display, align 8
  %d_width112 = getelementptr inbounds %struct.display, %struct.display* %101, i32 0, i32 16
  %102 = load i32, i32* %d_width112, align 4
  %103 = load i32, i32* @Z0width, align 4
  %cmp113 = icmp eq i32 %102, %103
  br i1 %cmp113, label %cond.true, label %cond.false

cond.true:                                        ; preds = %do.end.111
  %104 = load %struct.display*, %struct.display** @display, align 8
  %d_tcs115 = getelementptr inbounds %struct.display, %struct.display* %104, i32 0, i32 83
  %arrayidx116 = getelementptr inbounds [201 x %union.tcu], [201 x %union.tcu]* %d_tcs115, i32 0, i64 45
  %str117 = bitcast %union.tcu* %arrayidx116 to i8**
  %105 = load i8*, i8** %str117, align 8
  br label %cond.end

cond.false:                                       ; preds = %do.end.111
  %106 = load %struct.display*, %struct.display** @display, align 8
  %d_tcs118 = getelementptr inbounds %struct.display, %struct.display* %106, i32 0, i32 83
  %arrayidx119 = getelementptr inbounds [201 x %union.tcu], [201 x %union.tcu]* %d_tcs118, i32 0, i64 46
  %str120 = bitcast %union.tcu* %arrayidx119 to i8**
  %107 = load i8*, i8** %str120, align 8
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i8* [ %105, %cond.true ], [ %107, %cond.false ]
  call void @AddCStr(i8* %cond)
  br label %if.end.121

if.end.121:                                       ; preds = %cond.end, %lor.lhs.false, %if.else.98
  br label %if.end.122

if.end.122:                                       ; preds = %if.end.121, %do.end.93
  ret void
}

; Function Attrs: nounwind uwtable
define void @ClearLine(%struct.mline* %oml, i32 %y, i32 %from, i32 %to, i32 %bce) #0 {
entry:
  %oml.addr = alloca %struct.mline*, align 8
  %y.addr = alloca i32, align 4
  %from.addr = alloca i32, align 4
  %to.addr = alloca i32, align 4
  %bce.addr = alloca i32, align 4
  %x = alloca i32, align 4
  %bcechar = alloca %struct.mchar, align 1
  store %struct.mline* %oml, %struct.mline** %oml.addr, align 8
  store i32 %y, i32* %y.addr, align 4
  store i32 %from, i32* %from.addr, align 4
  store i32 %to, i32* %to.addr, align 4
  store i32 %bce, i32* %bce.addr, align 4
  br label %do.body

do.body:                                          ; preds = %entry
  br label %do.end

do.end:                                           ; preds = %do.body
  %0 = load %struct.display*, %struct.display** @display, align 8
  %d_tcs = getelementptr inbounds %struct.display, %struct.display* %0, i32 0, i32 83
  %arrayidx = getelementptr inbounds [201 x %union.tcu], [201 x %union.tcu]* %d_tcs, i32 0, i64 33
  %flg = bitcast %union.tcu* %arrayidx to i32*
  %1 = load i32, i32* %flg, align 4
  %tobool = icmp ne i32 %1, 0
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %do.end
  call void @SetRendition(%struct.mchar* @mchar_null)
  br label %if.end

if.end:                                           ; preds = %if.then, %do.end
  %2 = load %struct.display*, %struct.display** @display, align 8
  %d_tcs1 = getelementptr inbounds %struct.display, %struct.display* %2, i32 0, i32 83
  %arrayidx2 = getelementptr inbounds [201 x %union.tcu], [201 x %union.tcu]* %d_tcs1, i32 0, i64 66
  %flg3 = bitcast %union.tcu* %arrayidx2 to i32*
  %3 = load i32, i32* %flg3, align 4
  %tobool4 = icmp ne i32 %3, 0
  br i1 %tobool4, label %if.then.5, label %if.end.6

if.then.5:                                        ; preds = %if.end
  %4 = load i32, i32* %bce.addr, align 4
  call void @SetBackColor(i32 %4)
  br label %if.end.6

if.end.6:                                         ; preds = %if.then.5, %if.end
  %5 = load i32, i32* %from.addr, align 4
  %cmp = icmp eq i32 %5, 0
  br i1 %cmp, label %land.lhs.true, label %if.end.26

land.lhs.true:                                    ; preds = %if.end.6
  %6 = load %struct.display*, %struct.display** @display, align 8
  %d_tcs7 = getelementptr inbounds %struct.display, %struct.display* %6, i32 0, i32 83
  %arrayidx8 = getelementptr inbounds [201 x %union.tcu], [201 x %union.tcu]* %d_tcs7, i32 0, i64 38
  %str = bitcast %union.tcu* %arrayidx8 to i8**
  %7 = load i8*, i8** %str, align 8
  %tobool9 = icmp ne i8* %7, null
  br i1 %tobool9, label %land.lhs.true.10, label %if.end.26

land.lhs.true.10:                                 ; preds = %land.lhs.true
  %8 = load i32, i32* %to.addr, align 4
  %9 = load %struct.display*, %struct.display** @display, align 8
  %d_width = getelementptr inbounds %struct.display, %struct.display* %9, i32 0, i32 16
  %10 = load i32, i32* %d_width, align 4
  %sub = sub nsw i32 %10, 1
  %cmp11 = icmp ne i32 %8, %sub
  br i1 %cmp11, label %land.lhs.true.15, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %land.lhs.true.10
  %11 = load %struct.display*, %struct.display** @display, align 8
  %d_x = getelementptr inbounds %struct.display, %struct.display* %11, i32 0, i32 22
  %12 = load i32, i32* %d_x, align 4
  %13 = load i32, i32* %to.addr, align 4
  %cmp12 = icmp eq i32 %12, %13
  br i1 %cmp12, label %land.lhs.true.13, label %if.end.26

land.lhs.true.13:                                 ; preds = %lor.lhs.false
  %14 = load %struct.display*, %struct.display** @display, align 8
  %d_y = getelementptr inbounds %struct.display, %struct.display* %14, i32 0, i32 23
  %15 = load i32, i32* %d_y, align 4
  %16 = load i32, i32* %y.addr, align 4
  %cmp14 = icmp eq i32 %15, %16
  br i1 %cmp14, label %land.lhs.true.15, label %if.end.26

land.lhs.true.15:                                 ; preds = %land.lhs.true.13, %land.lhs.true.10
  %17 = load i32, i32* %bce.addr, align 4
  %tobool16 = icmp ne i32 %17, 0
  br i1 %tobool16, label %lor.lhs.false.17, label %if.then.22

lor.lhs.false.17:                                 ; preds = %land.lhs.true.15
  %18 = load %struct.display*, %struct.display** @display, align 8
  %d_tcs18 = getelementptr inbounds %struct.display, %struct.display* %18, i32 0, i32 83
  %arrayidx19 = getelementptr inbounds [201 x %union.tcu], [201 x %union.tcu]* %d_tcs18, i32 0, i64 66
  %flg20 = bitcast %union.tcu* %arrayidx19 to i32*
  %19 = load i32, i32* %flg20, align 4
  %tobool21 = icmp ne i32 %19, 0
  br i1 %tobool21, label %if.then.22, label %if.end.26

if.then.22:                                       ; preds = %lor.lhs.false.17, %land.lhs.true.15
  %20 = load i32, i32* %to.addr, align 4
  %21 = load i32, i32* %y.addr, align 4
  call void @GotoPos(i32 %20, i32 %21)
  %22 = load %struct.display*, %struct.display** @display, align 8
  %d_tcs23 = getelementptr inbounds %struct.display, %struct.display* %22, i32 0, i32 83
  %arrayidx24 = getelementptr inbounds [201 x %union.tcu], [201 x %union.tcu]* %d_tcs23, i32 0, i64 38
  %str25 = bitcast %union.tcu* %arrayidx24 to i8**
  %23 = load i8*, i8** %str25, align 8
  call void @AddCStr(i8* %23)
  br label %return

if.end.26:                                        ; preds = %lor.lhs.false.17, %land.lhs.true.13, %lor.lhs.false, %land.lhs.true, %if.end.6
  %24 = load i32, i32* %to.addr, align 4
  %25 = load %struct.display*, %struct.display** @display, align 8
  %d_width27 = getelementptr inbounds %struct.display, %struct.display* %25, i32 0, i32 16
  %26 = load i32, i32* %d_width27, align 4
  %sub28 = sub nsw i32 %26, 1
  %cmp29 = icmp eq i32 %24, %sub28
  br i1 %cmp29, label %land.lhs.true.30, label %if.end.46

land.lhs.true.30:                                 ; preds = %if.end.26
  %27 = load %struct.display*, %struct.display** @display, align 8
  %d_tcs31 = getelementptr inbounds %struct.display, %struct.display* %27, i32 0, i32 83
  %arrayidx32 = getelementptr inbounds [201 x %union.tcu], [201 x %union.tcu]* %d_tcs31, i32 0, i64 37
  %str33 = bitcast %union.tcu* %arrayidx32 to i8**
  %28 = load i8*, i8** %str33, align 8
  %tobool34 = icmp ne i8* %28, null
  br i1 %tobool34, label %land.lhs.true.35, label %if.end.46

land.lhs.true.35:                                 ; preds = %land.lhs.true.30
  %29 = load i32, i32* %bce.addr, align 4
  %tobool36 = icmp ne i32 %29, 0
  br i1 %tobool36, label %lor.lhs.false.37, label %if.then.42

lor.lhs.false.37:                                 ; preds = %land.lhs.true.35
  %30 = load %struct.display*, %struct.display** @display, align 8
  %d_tcs38 = getelementptr inbounds %struct.display, %struct.display* %30, i32 0, i32 83
  %arrayidx39 = getelementptr inbounds [201 x %union.tcu], [201 x %union.tcu]* %d_tcs38, i32 0, i64 66
  %flg40 = bitcast %union.tcu* %arrayidx39 to i32*
  %31 = load i32, i32* %flg40, align 4
  %tobool41 = icmp ne i32 %31, 0
  br i1 %tobool41, label %if.then.42, label %if.end.46

if.then.42:                                       ; preds = %lor.lhs.false.37, %land.lhs.true.35
  %32 = load i32, i32* %from.addr, align 4
  %33 = load i32, i32* %y.addr, align 4
  call void @GotoPos(i32 %32, i32 %33)
  %34 = load %struct.display*, %struct.display** @display, align 8
  %d_tcs43 = getelementptr inbounds %struct.display, %struct.display* %34, i32 0, i32 83
  %arrayidx44 = getelementptr inbounds [201 x %union.tcu], [201 x %union.tcu]* %d_tcs43, i32 0, i64 37
  %str45 = bitcast %union.tcu* %arrayidx44 to i8**
  %35 = load i8*, i8** %str45, align 8
  call void @AddCStr(i8* %35)
  br label %return

if.end.46:                                        ; preds = %lor.lhs.false.37, %land.lhs.true.30, %if.end.26
  %36 = load %struct.mline*, %struct.mline** %oml.addr, align 8
  %cmp47 = icmp eq %struct.mline* %36, null
  br i1 %cmp47, label %if.then.48, label %if.end.49

if.then.48:                                       ; preds = %if.end.46
  store %struct.mline* @mline_null, %struct.mline** %oml.addr, align 8
  br label %if.end.49

if.end.49:                                        ; preds = %if.then.48, %if.end.46
  %37 = load i32, i32* %bce.addr, align 4
  %tobool50 = icmp ne i32 %37, 0
  br i1 %tobool50, label %if.end.52, label %if.then.51

if.then.51:                                       ; preds = %if.end.49
  %38 = load %struct.mline*, %struct.mline** %oml.addr, align 8
  %39 = load i32, i32* %y.addr, align 4
  %40 = load i32, i32* %from.addr, align 4
  %41 = load i32, i32* %to.addr, align 4
  call void @DisplayLine(%struct.mline* %38, %struct.mline* @mline_blank, i32 %39, i32 %40, i32 %41)
  br label %return

if.end.52:                                        ; preds = %if.end.49
  %42 = bitcast %struct.mchar* %bcechar to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %42, i8* getelementptr inbounds (%struct.mchar, %struct.mchar* @mchar_null, i32 0, i32 0), i64 6, i32 1, i1 false)
  %color = getelementptr inbounds %struct.mchar, %struct.mchar* %bcechar, i32 0, i32 4
  %43 = load i8, i8* %color, align 1
  %conv = zext i8 %43 to i32
  %and = and i32 %conv, 15
  %44 = load i32, i32* %bce.addr, align 4
  %shl = shl i32 %44, 4
  %and53 = and i32 %shl, 240
  %or = or i32 %and, %and53
  %conv54 = trunc i32 %or to i8
  %color55 = getelementptr inbounds %struct.mchar, %struct.mchar* %bcechar, i32 0, i32 4
  store i8 %conv54, i8* %color55, align 1
  %attr = getelementptr inbounds %struct.mchar, %struct.mchar* %bcechar, i32 0, i32 1
  %45 = load i8, i8* %attr, align 1
  %conv56 = zext i8 %45 to i32
  %or57 = or i32 %conv56, 128
  %46 = load i32, i32* %bce.addr, align 4
  %and58 = and i32 %46, 256
  %tobool59 = icmp ne i32 %and58, 0
  %cond = select i1 %tobool59, i32 0, i32 128
  %xor = xor i32 %or57, %cond
  %conv60 = trunc i32 %xor to i8
  %attr61 = getelementptr inbounds %struct.mchar, %struct.mchar* %bcechar, i32 0, i32 1
  store i8 %conv60, i8* %attr61, align 1
  %47 = load i32, i32* %from.addr, align 4
  store i32 %47, i32* %x, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end.52
  %48 = load i32, i32* %x, align 4
  %49 = load i32, i32* %to.addr, align 4
  %cmp62 = icmp sle i32 %48, %49
  br i1 %cmp62, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  br label %do.body.64

do.body.64:                                       ; preds = %for.body
  %image = getelementptr inbounds %struct.mchar, %struct.mchar* %bcechar, i32 0, i32 0
  %50 = load i8, i8* %image, align 1
  %51 = load i32, i32* %x, align 4
  %idxprom = sext i32 %51 to i64
  %52 = load i8*, i8** getelementptr inbounds (%struct.mline, %struct.mline* @mline_old, i32 0, i32 0), align 8
  %arrayidx65 = getelementptr inbounds i8, i8* %52, i64 %idxprom
  store i8 %50, i8* %arrayidx65, align 1
  %attr66 = getelementptr inbounds %struct.mchar, %struct.mchar* %bcechar, i32 0, i32 1
  %53 = load i8, i8* %attr66, align 1
  %54 = load i32, i32* %x, align 4
  %idxprom67 = sext i32 %54 to i64
  %55 = load i8*, i8** getelementptr inbounds (%struct.mline, %struct.mline* @mline_old, i32 0, i32 1), align 8
  %arrayidx68 = getelementptr inbounds i8, i8* %55, i64 %idxprom67
  store i8 %53, i8* %arrayidx68, align 1
  %font = getelementptr inbounds %struct.mchar, %struct.mchar* %bcechar, i32 0, i32 2
  %56 = load i8, i8* %font, align 1
  %57 = load i32, i32* %x, align 4
  %idxprom69 = sext i32 %57 to i64
  %58 = load i8*, i8** getelementptr inbounds (%struct.mline, %struct.mline* @mline_old, i32 0, i32 2), align 8
  %arrayidx70 = getelementptr inbounds i8, i8* %58, i64 %idxprom69
  store i8 %56, i8* %arrayidx70, align 1
  %fontx = getelementptr inbounds %struct.mchar, %struct.mchar* %bcechar, i32 0, i32 3
  %59 = load i8, i8* %fontx, align 1
  %60 = load i32, i32* %x, align 4
  %idxprom71 = sext i32 %60 to i64
  %61 = load i8*, i8** getelementptr inbounds (%struct.mline, %struct.mline* @mline_old, i32 0, i32 3), align 8
  %arrayidx72 = getelementptr inbounds i8, i8* %61, i64 %idxprom71
  store i8 %59, i8* %arrayidx72, align 1
  %color73 = getelementptr inbounds %struct.mchar, %struct.mchar* %bcechar, i32 0, i32 4
  %62 = load i8, i8* %color73, align 1
  %63 = load i32, i32* %x, align 4
  %idxprom74 = sext i32 %63 to i64
  %64 = load i8*, i8** getelementptr inbounds (%struct.mline, %struct.mline* @mline_old, i32 0, i32 4), align 8
  %arrayidx75 = getelementptr inbounds i8, i8* %64, i64 %idxprom74
  store i8 %62, i8* %arrayidx75, align 1
  br label %do.end.76

do.end.76:                                        ; preds = %do.body.64
  br label %for.inc

for.inc:                                          ; preds = %do.end.76
  %65 = load i32, i32* %x, align 4
  %inc = add nsw i32 %65, 1
  store i32 %inc, i32* %x, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %66 = load %struct.mline*, %struct.mline** %oml.addr, align 8
  %67 = load i32, i32* %y.addr, align 4
  %68 = load i32, i32* %from.addr, align 4
  %69 = load i32, i32* %to.addr, align 4
  call void @DisplayLine(%struct.mline* %66, %struct.mline* @mline_old, i32 %67, i32 %68, i32 %69)
  br label %return

return:                                           ; preds = %for.end, %if.then.51, %if.then.42, %if.then.22
  ret void
}

; Function Attrs: nounwind uwtable
define void @Redisplay(i32 %cur_only) #0 {
entry:
  %cur_only.addr = alloca i32, align 4
  %olddisplay = alloca %struct.display*, align 8
  %oldflayer = alloca %struct.layer*, align 8
  %l = alloca %struct.layer*, align 8
  %cvlist = alloca %struct.canvas*, align 8
  %cvlnext = alloca %struct.canvas*, align 8
  store i32 %cur_only, i32* %cur_only.addr, align 4
  br label %do.body

do.body:                                          ; preds = %entry
  br label %do.end

do.end:                                           ; preds = %do.body
  call void @InsertMode(i32 0)
  %0 = load %struct.display*, %struct.display** @display, align 8
  %d_height = getelementptr inbounds %struct.display, %struct.display* %0, i32 0, i32 17
  %1 = load i32, i32* %d_height, align 4
  %sub = sub nsw i32 %1, 1
  call void @ChangeScrollRegion(i32 0, i32 %sub)
  call void @KeypadMode(i32 0)
  call void @CursorkeysMode(i32 0)
  call void @CursorVisibility(i32 0)
  call void @MouseMode(i32 0)
  call void @SetRendition(%struct.mchar* @mchar_null)
  call void @SetFlow(i32 1)
  call void @ClearAll()
  %2 = load i32, i32* %cur_only.addr, align 4
  %cmp = icmp sgt i32 %2, 0
  br i1 %cmp, label %land.lhs.true, label %if.else

land.lhs.true:                                    ; preds = %do.end
  %3 = load %struct.display*, %struct.display** @display, align 8
  %d_fore = getelementptr inbounds %struct.display, %struct.display* %3, i32 0, i32 10
  %4 = load %struct.win*, %struct.win** %d_fore, align 8
  %tobool = icmp ne %struct.win* %4, null
  br i1 %tobool, label %if.then, label %if.else

if.then:                                          ; preds = %land.lhs.true
  %5 = load %struct.display*, %struct.display** @display, align 8
  %d_fore1 = getelementptr inbounds %struct.display, %struct.display* %5, i32 0, i32 10
  %6 = load %struct.win*, %struct.win** %d_fore1, align 8
  %w_layer = getelementptr inbounds %struct.win, %struct.win* %6, i32 0, i32 3
  %l_y = getelementptr inbounds %struct.layer, %struct.layer* %w_layer, i32 0, i32 4
  %7 = load i32, i32* %l_y, align 4
  %8 = load %struct.display*, %struct.display** @display, align 8
  %d_width = getelementptr inbounds %struct.display, %struct.display* %8, i32 0, i32 16
  %9 = load i32, i32* %d_width, align 4
  %sub2 = sub nsw i32 %9, 1
  %10 = load %struct.display*, %struct.display** @display, align 8
  %d_fore3 = getelementptr inbounds %struct.display, %struct.display* %10, i32 0, i32 10
  %11 = load %struct.win*, %struct.win** %d_fore3, align 8
  %w_layer4 = getelementptr inbounds %struct.win, %struct.win* %11, i32 0, i32 3
  %l_y5 = getelementptr inbounds %struct.layer, %struct.layer* %w_layer4, i32 0, i32 4
  %12 = load i32, i32* %l_y5, align 4
  call void @RefreshArea(i32 0, i32 %7, i32 %sub2, i32 %12, i32 1)
  br label %if.end

if.else:                                          ; preds = %land.lhs.true, %do.end
  call void @RefreshAll(i32 1)
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  call void @RefreshHStatus()
  %13 = load %struct.display*, %struct.display** @display, align 8
  store %struct.display* %13, %struct.display** %olddisplay, align 8
  %14 = load %struct.layer*, %struct.layer** @flayer, align 8
  store %struct.layer* %14, %struct.layer** %oldflayer, align 8
  %15 = load %struct.display*, %struct.display** @display, align 8
  %d_forecv = getelementptr inbounds %struct.display, %struct.display* %15, i32 0, i32 4
  %16 = load %struct.canvas*, %struct.canvas** %d_forecv, align 8
  %c_layer = getelementptr inbounds %struct.canvas, %struct.canvas* %16, i32 0, i32 9
  %17 = load %struct.layer*, %struct.layer** %c_layer, align 8
  store %struct.layer* %17, %struct.layer** %l, align 8
  %18 = load %struct.layer*, %struct.layer** %l, align 8
  %l_cvlist = getelementptr inbounds %struct.layer, %struct.layer* %18, i32 0, i32 0
  %19 = load %struct.canvas*, %struct.canvas** %l_cvlist, align 8
  store %struct.canvas* %19, %struct.canvas** %cvlist, align 8
  %20 = load %struct.display*, %struct.display** @display, align 8
  %d_forecv6 = getelementptr inbounds %struct.display, %struct.display* %20, i32 0, i32 4
  %21 = load %struct.canvas*, %struct.canvas** %d_forecv6, align 8
  %c_lnext = getelementptr inbounds %struct.canvas, %struct.canvas* %21, i32 0, i32 10
  %22 = load %struct.canvas*, %struct.canvas** %c_lnext, align 8
  store %struct.canvas* %22, %struct.canvas** %cvlnext, align 8
  %23 = load %struct.layer*, %struct.layer** %l, align 8
  store %struct.layer* %23, %struct.layer** @flayer, align 8
  %24 = load %struct.display*, %struct.display** @display, align 8
  %d_forecv7 = getelementptr inbounds %struct.display, %struct.display* %24, i32 0, i32 4
  %25 = load %struct.canvas*, %struct.canvas** %d_forecv7, align 8
  %26 = load %struct.layer*, %struct.layer** %l, align 8
  %l_cvlist8 = getelementptr inbounds %struct.layer, %struct.layer* %26, i32 0, i32 0
  store %struct.canvas* %25, %struct.canvas** %l_cvlist8, align 8
  %27 = load %struct.display*, %struct.display** @display, align 8
  %d_forecv9 = getelementptr inbounds %struct.display, %struct.display* %27, i32 0, i32 4
  %28 = load %struct.canvas*, %struct.canvas** %d_forecv9, align 8
  %c_lnext10 = getelementptr inbounds %struct.canvas, %struct.canvas* %28, i32 0, i32 10
  store %struct.canvas* null, %struct.canvas** %c_lnext10, align 8
  %29 = load %struct.layer*, %struct.layer** @flayer, align 8
  %l_layfn = getelementptr inbounds %struct.layer, %struct.layer* %29, i32 0, i32 6
  %30 = load %struct.LayFuncs*, %struct.LayFuncs** %l_layfn, align 8
  %lf_LayRestore = getelementptr inbounds %struct.LayFuncs, %struct.LayFuncs* %30, i32 0, i32 6
  %31 = load void ()*, void ()** %lf_LayRestore, align 8
  call void %31()
  %32 = load %struct.layer*, %struct.layer** @flayer, align 8
  %33 = load %struct.layer*, %struct.layer** @flayer, align 8
  %l_x = getelementptr inbounds %struct.layer, %struct.layer* %33, i32 0, i32 3
  %34 = load i32, i32* %l_x, align 4
  %35 = load %struct.layer*, %struct.layer** @flayer, align 8
  %l_y11 = getelementptr inbounds %struct.layer, %struct.layer* %35, i32 0, i32 4
  %36 = load i32, i32* %l_y11, align 4
  call void @LGotoPos(%struct.layer* %32, i32 %34, i32 %36)
  %37 = load %struct.layer*, %struct.layer** %oldflayer, align 8
  store %struct.layer* %37, %struct.layer** @flayer, align 8
  %38 = load %struct.canvas*, %struct.canvas** %cvlist, align 8
  %39 = load %struct.layer*, %struct.layer** %l, align 8
  %l_cvlist12 = getelementptr inbounds %struct.layer, %struct.layer* %39, i32 0, i32 0
  store %struct.canvas* %38, %struct.canvas** %l_cvlist12, align 8
  %40 = load %struct.canvas*, %struct.canvas** %cvlnext, align 8
  %41 = load %struct.display*, %struct.display** @display, align 8
  %d_forecv13 = getelementptr inbounds %struct.display, %struct.display* %41, i32 0, i32 4
  %42 = load %struct.canvas*, %struct.canvas** %d_forecv13, align 8
  %c_lnext14 = getelementptr inbounds %struct.canvas, %struct.canvas* %42, i32 0, i32 10
  store %struct.canvas* %40, %struct.canvas** %c_lnext14, align 8
  %43 = load %struct.display*, %struct.display** %olddisplay, align 8
  store %struct.display* %43, %struct.display** @display, align 8
  ret void
}

; Function Attrs: nounwind uwtable
define void @RefreshArea(i32 %xs, i32 %ys, i32 %xe, i32 %ye, i32 %isblank) #0 {
entry:
  %xs.addr = alloca i32, align 4
  %ys.addr = alloca i32, align 4
  %xe.addr = alloca i32, align 4
  %ye.addr = alloca i32, align 4
  %isblank.addr = alloca i32, align 4
  %y = alloca i32, align 4
  store i32 %xs, i32* %xs.addr, align 4
  store i32 %ys, i32* %ys.addr, align 4
  store i32 %xe, i32* %xe.addr, align 4
  store i32 %ye, i32* %ye.addr, align 4
  store i32 %isblank, i32* %isblank.addr, align 4
  br label %do.body

do.body:                                          ; preds = %entry
  br label %do.end

do.end:                                           ; preds = %do.body
  br label %do.body.1

do.body.1:                                        ; preds = %do.end
  br label %do.end.2

do.end.2:                                         ; preds = %do.body.1
  br label %do.body.3

do.body.3:                                        ; preds = %do.end.2
  br label %do.end.4

do.end.4:                                         ; preds = %do.body.3
  %0 = load i32, i32* %isblank.addr, align 4
  %tobool = icmp ne i32 %0, 0
  br i1 %tobool, label %if.end, label %land.lhs.true

land.lhs.true:                                    ; preds = %do.end.4
  %1 = load i32, i32* %xs.addr, align 4
  %cmp = icmp eq i32 %1, 0
  br i1 %cmp, label %land.lhs.true.5, label %if.end

land.lhs.true.5:                                  ; preds = %land.lhs.true
  %2 = load i32, i32* %xe.addr, align 4
  %3 = load %struct.display*, %struct.display** @display, align 8
  %d_width = getelementptr inbounds %struct.display, %struct.display* %3, i32 0, i32 16
  %4 = load i32, i32* %d_width, align 4
  %sub = sub nsw i32 %4, 1
  %cmp6 = icmp eq i32 %2, %sub
  br i1 %cmp6, label %land.lhs.true.7, label %if.end

land.lhs.true.7:                                  ; preds = %land.lhs.true.5
  %5 = load i32, i32* %ye.addr, align 4
  %6 = load %struct.display*, %struct.display** @display, align 8
  %d_height = getelementptr inbounds %struct.display, %struct.display* %6, i32 0, i32 17
  %7 = load i32, i32* %d_height, align 4
  %sub8 = sub nsw i32 %7, 1
  %cmp9 = icmp eq i32 %5, %sub8
  br i1 %cmp9, label %land.lhs.true.10, label %if.end

land.lhs.true.10:                                 ; preds = %land.lhs.true.7
  %8 = load i32, i32* %ys.addr, align 4
  %cmp11 = icmp eq i32 %8, 0
  br i1 %cmp11, label %if.then, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %land.lhs.true.10
  %9 = load %struct.display*, %struct.display** @display, align 8
  %d_tcs = getelementptr inbounds %struct.display, %struct.display* %9, i32 0, i32 83
  %arrayidx = getelementptr inbounds [201 x %union.tcu], [201 x %union.tcu]* %d_tcs, i32 0, i64 35
  %str = bitcast %union.tcu* %arrayidx to i8**
  %10 = load i8*, i8** %str, align 8
  %tobool12 = icmp ne i8* %10, null
  br i1 %tobool12, label %if.then, label %if.end

if.then:                                          ; preds = %lor.lhs.false, %land.lhs.true.10
  %11 = load i32, i32* %xs.addr, align 4
  %12 = load i32, i32* %ys.addr, align 4
  %13 = load i32, i32* %xs.addr, align 4
  %14 = load i32, i32* %xe.addr, align 4
  %15 = load i32, i32* %xe.addr, align 4
  %16 = load i32, i32* %ye.addr, align 4
  call void @ClearArea(i32 %11, i32 %12, i32 %13, i32 %14, i32 %15, i32 %16, i32 0, i32 0)
  store i32 1, i32* %isblank.addr, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %lor.lhs.false, %land.lhs.true.7, %land.lhs.true.5, %land.lhs.true, %do.end.4
  %17 = load i32, i32* %ys.addr, align 4
  store i32 %17, i32* %y, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end
  %18 = load i32, i32* %y, align 4
  %19 = load i32, i32* %ye.addr, align 4
  %cmp13 = icmp sle i32 %18, %19
  br i1 %cmp13, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %20 = load i32, i32* %y, align 4
  %21 = load i32, i32* %xs.addr, align 4
  %22 = load i32, i32* %xe.addr, align 4
  %23 = load i32, i32* %isblank.addr, align 4
  call void @RefreshLine(i32 %20, i32 %21, i32 %22, i32 %23)
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %24 = load i32, i32* %y, align 4
  %inc = add nsw i32 %24, 1
  store i32 %inc, i32* %y, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  ret void
}

; Function Attrs: nounwind uwtable
define void @RefreshAll(i32 %isblank) #0 {
entry:
  %isblank.addr = alloca i32, align 4
  %cv = alloca %struct.canvas*, align 8
  %olddisplay = alloca %struct.display*, align 8
  %oldflayer = alloca %struct.layer*, align 8
  %l = alloca %struct.layer*, align 8
  %cvlist = alloca %struct.canvas*, align 8
  %cvlnext = alloca %struct.canvas*, align 8
  store i32 %isblank, i32* %isblank.addr, align 4
  br label %do.body

do.body:                                          ; preds = %entry
  br label %do.end

do.end:                                           ; preds = %do.body
  br label %do.body.1

do.body.1:                                        ; preds = %do.end
  br label %do.end.2

do.end.2:                                         ; preds = %do.body.1
  %0 = load %struct.display*, %struct.display** @display, align 8
  %d_cvlist = getelementptr inbounds %struct.display, %struct.display* %0, i32 0, i32 3
  %1 = load %struct.canvas*, %struct.canvas** %d_cvlist, align 8
  store %struct.canvas* %1, %struct.canvas** %cv, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %do.end.2
  %2 = load %struct.canvas*, %struct.canvas** %cv, align 8
  %tobool = icmp ne %struct.canvas* %2, null
  br i1 %tobool, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %3 = load %struct.display*, %struct.display** @display, align 8
  store %struct.display* %3, %struct.display** %olddisplay, align 8
  %4 = load %struct.layer*, %struct.layer** @flayer, align 8
  store %struct.layer* %4, %struct.layer** %oldflayer, align 8
  %5 = load %struct.canvas*, %struct.canvas** %cv, align 8
  %c_layer = getelementptr inbounds %struct.canvas, %struct.canvas* %5, i32 0, i32 9
  %6 = load %struct.layer*, %struct.layer** %c_layer, align 8
  store %struct.layer* %6, %struct.layer** %l, align 8
  %7 = load %struct.layer*, %struct.layer** %l, align 8
  %l_cvlist = getelementptr inbounds %struct.layer, %struct.layer* %7, i32 0, i32 0
  %8 = load %struct.canvas*, %struct.canvas** %l_cvlist, align 8
  store %struct.canvas* %8, %struct.canvas** %cvlist, align 8
  %9 = load %struct.canvas*, %struct.canvas** %cv, align 8
  %c_lnext = getelementptr inbounds %struct.canvas, %struct.canvas* %9, i32 0, i32 10
  %10 = load %struct.canvas*, %struct.canvas** %c_lnext, align 8
  store %struct.canvas* %10, %struct.canvas** %cvlnext, align 8
  %11 = load %struct.layer*, %struct.layer** %l, align 8
  store %struct.layer* %11, %struct.layer** @flayer, align 8
  %12 = load %struct.canvas*, %struct.canvas** %cv, align 8
  %13 = load %struct.layer*, %struct.layer** %l, align 8
  %l_cvlist3 = getelementptr inbounds %struct.layer, %struct.layer* %13, i32 0, i32 0
  store %struct.canvas* %12, %struct.canvas** %l_cvlist3, align 8
  %14 = load %struct.canvas*, %struct.canvas** %cv, align 8
  %c_lnext4 = getelementptr inbounds %struct.canvas, %struct.canvas* %14, i32 0, i32 10
  store %struct.canvas* null, %struct.canvas** %c_lnext4, align 8
  %15 = load %struct.layer*, %struct.layer** @flayer, align 8
  %l_layfn = getelementptr inbounds %struct.layer, %struct.layer* %15, i32 0, i32 6
  %16 = load %struct.LayFuncs*, %struct.LayFuncs** %l_layfn, align 8
  %lf_LayRedisplayLine = getelementptr inbounds %struct.LayFuncs, %struct.LayFuncs* %16, i32 0, i32 2
  %17 = load void (i32, i32, i32, i32)*, void (i32, i32, i32, i32)** %lf_LayRedisplayLine, align 8
  %18 = load i32, i32* %isblank.addr, align 4
  call void %17(i32 -1, i32 -1, i32 -1, i32 %18)
  %19 = load %struct.layer*, %struct.layer** %oldflayer, align 8
  store %struct.layer* %19, %struct.layer** @flayer, align 8
  %20 = load %struct.canvas*, %struct.canvas** %cvlist, align 8
  %21 = load %struct.layer*, %struct.layer** %l, align 8
  %l_cvlist5 = getelementptr inbounds %struct.layer, %struct.layer* %21, i32 0, i32 0
  store %struct.canvas* %20, %struct.canvas** %l_cvlist5, align 8
  %22 = load %struct.canvas*, %struct.canvas** %cvlnext, align 8
  %23 = load %struct.canvas*, %struct.canvas** %cv, align 8
  %c_lnext6 = getelementptr inbounds %struct.canvas, %struct.canvas* %23, i32 0, i32 10
  store %struct.canvas* %22, %struct.canvas** %c_lnext6, align 8
  %24 = load %struct.display*, %struct.display** %olddisplay, align 8
  store %struct.display* %24, %struct.display** @display, align 8
  %25 = load %struct.canvas*, %struct.canvas** %cv, align 8
  %c_display = getelementptr inbounds %struct.canvas, %struct.canvas* %25, i32 0, i32 1
  %26 = load %struct.display*, %struct.display** %c_display, align 8
  store %struct.display* %26, %struct.display** @display, align 8
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %27 = load %struct.canvas*, %struct.canvas** %cv, align 8
  %c_next = getelementptr inbounds %struct.canvas, %struct.canvas* %27, i32 0, i32 0
  %28 = load %struct.canvas*, %struct.canvas** %c_next, align 8
  store %struct.canvas* %28, %struct.canvas** %cv, align 8
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %29 = load %struct.display*, %struct.display** @display, align 8
  %d_width = getelementptr inbounds %struct.display, %struct.display* %29, i32 0, i32 16
  %30 = load i32, i32* %d_width, align 4
  %sub = sub nsw i32 %30, 1
  %31 = load %struct.display*, %struct.display** @display, align 8
  %d_height = getelementptr inbounds %struct.display, %struct.display* %31, i32 0, i32 17
  %32 = load i32, i32* %d_height, align 4
  %sub7 = sub nsw i32 %32, 1
  %33 = load i32, i32* %isblank.addr, align 4
  call void @RefreshArea(i32 0, i32 0, i32 %sub, i32 %sub7, i32 %33)
  ret void
}

; Function Attrs: nounwind uwtable
define void @RefreshHStatus() #0 {
entry:
  %buf = alloca i8*, align 8
  %extrabytes = alloca i32, align 4
  %0 = load i8*, i8** @hstatusstring, align 8
  %call = call i64 @strlen(i8* %0) #9
  %1 = load i8*, i8** @hstatusstring, align 8
  %call1 = call i32 @strlen_onscreen(i8* %1, i8* null)
  %conv = sext i32 %call1 to i64
  %sub = sub i64 %call, %conv
  %conv2 = trunc i64 %sub to i32
  store i32 %conv2, i32* %extrabytes, align 4
  %2 = load %struct.display*, %struct.display** @display, align 8
  %d_hstatusev = getelementptr inbounds %struct.display, %struct.display* %2, i32 0, i32 54
  call void @evdeq(%struct.event* %d_hstatusev)
  %3 = load %struct.display*, %struct.display** @display, align 8
  %d_status = getelementptr inbounds %struct.display, %struct.display* %3, i32 0, i32 43
  %4 = load i32, i32* %d_status, align 4
  %cmp = icmp eq i32 %4, 2
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  br label %if.end.35

if.end:                                           ; preds = %entry
  %5 = load i8*, i8** @hstatusstring, align 8
  %6 = load %struct.display*, %struct.display** @display, align 8
  %d_fore = getelementptr inbounds %struct.display, %struct.display* %6, i32 0, i32 10
  %7 = load %struct.win*, %struct.win** %d_fore, align 8
  %8 = load %struct.display*, %struct.display** @display, align 8
  %d_tcs = getelementptr inbounds %struct.display, %struct.display* %8, i32 0, i32 83
  %arrayidx = getelementptr inbounds [201 x %union.tcu], [201 x %union.tcu]* %d_tcs, i32 0, i64 75
  %flg = bitcast %union.tcu* %arrayidx to i32*
  %9 = load i32, i32* %flg, align 4
  %tobool = icmp ne i32 %9, 0
  br i1 %tobool, label %land.lhs.true, label %cond.false

land.lhs.true:                                    ; preds = %if.end
  %10 = load %struct.display*, %struct.display** @display, align 8
  %d_has_hstatus = getelementptr inbounds %struct.display, %struct.display* %10, i32 0, i32 36
  %11 = load i32, i32* %d_has_hstatus, align 4
  %cmp4 = icmp eq i32 %11, 3
  br i1 %cmp4, label %land.lhs.true.6, label %cond.false

land.lhs.true.6:                                  ; preds = %land.lhs.true
  %12 = load %struct.display*, %struct.display** @display, align 8
  %d_tcs7 = getelementptr inbounds %struct.display, %struct.display* %12, i32 0, i32 83
  %arrayidx8 = getelementptr inbounds [201 x %union.tcu], [201 x %union.tcu]* %d_tcs7, i32 0, i64 76
  %num = bitcast %union.tcu* %arrayidx8 to i32*
  %13 = load i32, i32* %num, align 4
  %cmp9 = icmp sgt i32 %13, 0
  br i1 %cmp9, label %cond.true, label %cond.false

cond.true:                                        ; preds = %land.lhs.true.6
  %14 = load %struct.display*, %struct.display** @display, align 8
  %d_tcs11 = getelementptr inbounds %struct.display, %struct.display* %14, i32 0, i32 83
  %arrayidx12 = getelementptr inbounds [201 x %union.tcu], [201 x %union.tcu]* %d_tcs11, i32 0, i64 76
  %num13 = bitcast %union.tcu* %arrayidx12 to i32*
  %15 = load i32, i32* %num13, align 4
  br label %cond.end

cond.false:                                       ; preds = %land.lhs.true.6, %land.lhs.true, %if.end
  %16 = load %struct.display*, %struct.display** @display, align 8
  %d_width = getelementptr inbounds %struct.display, %struct.display* %16, i32 0, i32 16
  %17 = load i32, i32* %d_width, align 4
  %18 = load %struct.display*, %struct.display** @display, align 8
  %d_tcs14 = getelementptr inbounds %struct.display, %struct.display* %18, i32 0, i32 83
  %arrayidx15 = getelementptr inbounds [201 x %union.tcu], [201 x %union.tcu]* %d_tcs14, i32 0, i64 87
  %flg16 = bitcast %union.tcu* %arrayidx15 to i32*
  %19 = load i32, i32* %flg16, align 4
  %tobool17 = icmp ne i32 %19, 0
  %lnot = xor i1 %tobool17, true
  %lnot.ext = zext i1 %lnot to i32
  %sub18 = sub nsw i32 %17, %lnot.ext
  %20 = load i32, i32* %extrabytes, align 4
  %add = add nsw i32 %sub18, %20
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %15, %cond.true ], [ %add, %cond.false ]
  %21 = load %struct.display*, %struct.display** @display, align 8
  %d_hstatusev19 = getelementptr inbounds %struct.display, %struct.display* %21, i32 0, i32 54
  %call20 = call i8* @MakeWinMsgEv(i8* %5, %struct.win* %7, i32 37, i32 %cond, %struct.event* %d_hstatusev19, i32 0)
  store i8* %call20, i8** %buf, align 8
  %22 = load i8*, i8** %buf, align 8
  %tobool21 = icmp ne i8* %22, null
  br i1 %tobool21, label %land.lhs.true.22, label %if.else

land.lhs.true.22:                                 ; preds = %cond.end
  %23 = load i8*, i8** %buf, align 8
  %24 = load i8, i8* %23, align 1
  %conv23 = sext i8 %24 to i32
  %tobool24 = icmp ne i32 %conv23, 0
  br i1 %tobool24, label %if.then.25, label %if.else

if.then.25:                                       ; preds = %land.lhs.true.22
  %25 = load i8*, i8** %buf, align 8
  call void @ShowHStatus(i8* %25)
  %26 = load %struct.display*, %struct.display** @display, align 8
  %d_has_hstatus26 = getelementptr inbounds %struct.display, %struct.display* %26, i32 0, i32 36
  %27 = load i32, i32* %d_has_hstatus26, align 4
  %cmp27 = icmp ne i32 %27, 0
  br i1 %cmp27, label %land.lhs.true.29, label %if.end.34

land.lhs.true.29:                                 ; preds = %if.then.25
  %28 = load %struct.display*, %struct.display** @display, align 8
  %d_hstatusev30 = getelementptr inbounds %struct.display, %struct.display* %28, i32 0, i32 54
  %timeout = getelementptr inbounds %struct.event, %struct.event* %d_hstatusev30, i32 0, i32 6
  %tv_sec = getelementptr inbounds %struct.timeval, %struct.timeval* %timeout, i32 0, i32 0
  %29 = load i64, i64* %tv_sec, align 8
  %tobool31 = icmp ne i64 %29, 0
  br i1 %tobool31, label %if.then.32, label %if.end.34

if.then.32:                                       ; preds = %land.lhs.true.29
  %30 = load %struct.display*, %struct.display** @display, align 8
  %d_hstatusev33 = getelementptr inbounds %struct.display, %struct.display* %30, i32 0, i32 54
  call void @evenq(%struct.event* %d_hstatusev33)
  br label %if.end.34

if.end.34:                                        ; preds = %if.then.32, %land.lhs.true.29, %if.then.25
  br label %if.end.35

if.else:                                          ; preds = %land.lhs.true.22, %cond.end
  call void @ShowHStatus(i8* null)
  br label %if.end.35

if.end.35:                                        ; preds = %if.then, %if.else, %if.end.34
  ret void
}

declare void @LGotoPos(%struct.layer*, i32, i32) #1

; Function Attrs: nounwind uwtable
define void @RedisplayDisplays(i32 %cur_only) #0 {
entry:
  %cur_only.addr = alloca i32, align 4
  %olddisplay = alloca %struct.display*, align 8
  store i32 %cur_only, i32* %cur_only.addr, align 4
  %0 = load %struct.display*, %struct.display** @display, align 8
  store %struct.display* %0, %struct.display** %olddisplay, align 8
  %1 = load %struct.display*, %struct.display** @displays, align 8
  store %struct.display* %1, %struct.display** @display, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %2 = load %struct.display*, %struct.display** @display, align 8
  %tobool = icmp ne %struct.display* %2, null
  br i1 %tobool, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %3 = load i32, i32* %cur_only.addr, align 4
  call void @Redisplay(i32 %3)
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %4 = load %struct.display*, %struct.display** @display, align 8
  %d_next = getelementptr inbounds %struct.display, %struct.display* %4, i32 0, i32 0
  %5 = load %struct.display*, %struct.display** %d_next, align 8
  store %struct.display* %5, %struct.display** @display, align 8
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %6 = load %struct.display*, %struct.display** %olddisplay, align 8
  store %struct.display* %6, %struct.display** @display, align 8
  ret void
}

; Function Attrs: nounwind uwtable
define void @ScrollH(i32 %y, i32 %xs, i32 %xe, i32 %n, i32 %bce, %struct.mline* %oml) #0 {
entry:
  %y.addr = alloca i32, align 4
  %xs.addr = alloca i32, align 4
  %xe.addr = alloca i32, align 4
  %n.addr = alloca i32, align 4
  %bce.addr = alloca i32, align 4
  %oml.addr = alloca %struct.mline*, align 8
  %i = alloca i32, align 4
  store i32 %y, i32* %y.addr, align 4
  store i32 %xs, i32* %xs.addr, align 4
  store i32 %xe, i32* %xe.addr, align 4
  store i32 %n, i32* %n.addr, align 4
  store i32 %bce, i32* %bce.addr, align 4
  store %struct.mline* %oml, %struct.mline** %oml.addr, align 8
  %0 = load i32, i32* %n.addr, align 4
  %cmp = icmp eq i32 %0, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  br label %if.end.140

if.end:                                           ; preds = %entry
  %1 = load i32, i32* %xe.addr, align 4
  %2 = load %struct.display*, %struct.display** @display, align 8
  %d_width = getelementptr inbounds %struct.display, %struct.display* %2, i32 0, i32 16
  %3 = load i32, i32* %d_width, align 4
  %sub = sub nsw i32 %3, 1
  %cmp1 = icmp ne i32 %1, %sub
  br i1 %cmp1, label %if.then.2, label %if.end.3

if.then.2:                                        ; preds = %if.end
  %4 = load i32, i32* %y.addr, align 4
  %5 = load i32, i32* %xs.addr, align 4
  %6 = load i32, i32* %xe.addr, align 4
  call void @RefreshLine(i32 %4, i32 %5, i32 %6, i32 0)
  br label %if.end.140

if.end.3:                                         ; preds = %if.end
  %7 = load i32, i32* %xs.addr, align 4
  %8 = load i32, i32* %y.addr, align 4
  call void @GotoPos(i32 %7, i32 %8)
  %9 = load %struct.display*, %struct.display** @display, align 8
  %d_tcs = getelementptr inbounds %struct.display, %struct.display* %9, i32 0, i32 83
  %arrayidx = getelementptr inbounds [201 x %union.tcu], [201 x %union.tcu]* %d_tcs, i32 0, i64 33
  %flg = bitcast %union.tcu* %arrayidx to i32*
  %10 = load i32, i32* %flg, align 4
  %tobool = icmp ne i32 %10, 0
  br i1 %tobool, label %if.then.4, label %if.end.5

if.then.4:                                        ; preds = %if.end.3
  call void @SetRendition(%struct.mchar* @mchar_null)
  br label %if.end.5

if.end.5:                                         ; preds = %if.then.4, %if.end.3
  %11 = load %struct.display*, %struct.display** @display, align 8
  %d_tcs6 = getelementptr inbounds %struct.display, %struct.display* %11, i32 0, i32 83
  %arrayidx7 = getelementptr inbounds [201 x %union.tcu], [201 x %union.tcu]* %d_tcs6, i32 0, i64 66
  %flg8 = bitcast %union.tcu* %arrayidx7 to i32*
  %12 = load i32, i32* %flg8, align 4
  %tobool9 = icmp ne i32 %12, 0
  br i1 %tobool9, label %if.then.10, label %if.end.11

if.then.10:                                       ; preds = %if.end.5
  %13 = load i32, i32* %bce.addr, align 4
  call void @SetBackColor(i32 %13)
  br label %if.end.11

if.end.11:                                        ; preds = %if.then.10, %if.end.5
  %14 = load i32, i32* %n.addr, align 4
  %cmp12 = icmp sgt i32 %14, 0
  br i1 %cmp12, label %if.then.13, label %if.else.45

if.then.13:                                       ; preds = %if.end.11
  %15 = load i32, i32* %n.addr, align 4
  %16 = load i32, i32* %xe.addr, align 4
  %17 = load i32, i32* %xs.addr, align 4
  %sub14 = sub nsw i32 %16, %17
  %add = add nsw i32 %sub14, 1
  %cmp15 = icmp sge i32 %15, %add
  br i1 %cmp15, label %if.then.16, label %if.end.19

if.then.16:                                       ; preds = %if.then.13
  %18 = load i32, i32* %xe.addr, align 4
  %19 = load i32, i32* %xs.addr, align 4
  %sub17 = sub nsw i32 %18, %19
  %add18 = add nsw i32 %sub17, 1
  store i32 %add18, i32* %n.addr, align 4
  br label %if.end.19

if.end.19:                                        ; preds = %if.then.16, %if.then.13
  %20 = load %struct.display*, %struct.display** @display, align 8
  %d_tcs20 = getelementptr inbounds %struct.display, %struct.display* %20, i32 0, i32 83
  %arrayidx21 = getelementptr inbounds [201 x %union.tcu], [201 x %union.tcu]* %d_tcs20, i32 0, i64 32
  %str = bitcast %union.tcu* %arrayidx21 to i8**
  %21 = load i8*, i8** %str, align 8
  %tobool22 = icmp ne i8* %21, null
  br i1 %tobool22, label %land.lhs.true, label %if.else

land.lhs.true:                                    ; preds = %if.end.19
  %22 = load i32, i32* %n.addr, align 4
  %cmp23 = icmp eq i32 %22, 1
  br i1 %cmp23, label %land.lhs.true.24, label %if.then.29

land.lhs.true.24:                                 ; preds = %land.lhs.true
  %23 = load %struct.display*, %struct.display** @display, align 8
  %d_tcs25 = getelementptr inbounds %struct.display, %struct.display* %23, i32 0, i32 83
  %arrayidx26 = getelementptr inbounds [201 x %union.tcu], [201 x %union.tcu]* %d_tcs25, i32 0, i64 31
  %str27 = bitcast %union.tcu* %arrayidx26 to i8**
  %24 = load i8*, i8** %str27, align 8
  %tobool28 = icmp ne i8* %24, null
  br i1 %tobool28, label %if.else, label %if.then.29

if.then.29:                                       ; preds = %land.lhs.true.24, %land.lhs.true
  %25 = load %struct.display*, %struct.display** @display, align 8
  %d_tcs30 = getelementptr inbounds %struct.display, %struct.display* %25, i32 0, i32 83
  %arrayidx31 = getelementptr inbounds [201 x %union.tcu], [201 x %union.tcu]* %d_tcs30, i32 0, i64 32
  %str32 = bitcast %union.tcu* %arrayidx31 to i8**
  %26 = load i8*, i8** %str32, align 8
  %27 = load i32, i32* %n.addr, align 4
  call void @AddCStr2(i8* %26, i32 %27)
  br label %if.end.44

if.else:                                          ; preds = %land.lhs.true.24, %if.end.19
  %28 = load %struct.display*, %struct.display** @display, align 8
  %d_tcs33 = getelementptr inbounds %struct.display, %struct.display* %28, i32 0, i32 83
  %arrayidx34 = getelementptr inbounds [201 x %union.tcu], [201 x %union.tcu]* %d_tcs33, i32 0, i64 31
  %str35 = bitcast %union.tcu* %arrayidx34 to i8**
  %29 = load i8*, i8** %str35, align 8
  %tobool36 = icmp ne i8* %29, null
  br i1 %tobool36, label %if.then.37, label %if.else.42

if.then.37:                                       ; preds = %if.else
  %30 = load i32, i32* %n.addr, align 4
  store i32 %30, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.body, %if.then.37
  %31 = load i32, i32* %i, align 4
  %dec = add nsw i32 %31, -1
  store i32 %dec, i32* %i, align 4
  %tobool38 = icmp ne i32 %31, 0
  br i1 %tobool38, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %32 = load %struct.display*, %struct.display** @display, align 8
  %d_tcs39 = getelementptr inbounds %struct.display, %struct.display* %32, i32 0, i32 83
  %arrayidx40 = getelementptr inbounds [201 x %union.tcu], [201 x %union.tcu]* %d_tcs39, i32 0, i64 31
  %str41 = bitcast %union.tcu* %arrayidx40 to i8**
  %33 = load i8*, i8** %str41, align 8
  call void @AddCStr(i8* %33)
  br label %for.cond

for.end:                                          ; preds = %for.cond
  br label %if.end.43

if.else.42:                                       ; preds = %if.else
  %34 = load i32, i32* %y.addr, align 4
  %35 = load i32, i32* %xs.addr, align 4
  %36 = load i32, i32* %xe.addr, align 4
  call void @RefreshLine(i32 %34, i32 %35, i32 %36, i32 0)
  br label %if.end.140

if.end.43:                                        ; preds = %for.end
  br label %if.end.44

if.end.44:                                        ; preds = %if.end.43, %if.then.29
  br label %if.end.112

if.else.45:                                       ; preds = %if.end.11
  %37 = load i32, i32* %n.addr, align 4
  %sub46 = sub nsw i32 0, %37
  %38 = load i32, i32* %xe.addr, align 4
  %39 = load i32, i32* %xs.addr, align 4
  %sub47 = sub nsw i32 %38, %39
  %add48 = add nsw i32 %sub47, 1
  %cmp49 = icmp sge i32 %sub46, %add48
  br i1 %cmp49, label %if.then.50, label %if.end.54

if.then.50:                                       ; preds = %if.else.45
  %40 = load i32, i32* %xe.addr, align 4
  %41 = load i32, i32* %xs.addr, align 4
  %sub51 = sub nsw i32 %40, %41
  %add52 = add nsw i32 %sub51, 1
  %sub53 = sub nsw i32 0, %add52
  store i32 %sub53, i32* %n.addr, align 4
  br label %if.end.54

if.end.54:                                        ; preds = %if.then.50, %if.else.45
  %42 = load %struct.display*, %struct.display** @display, align 8
  %d_insert = getelementptr inbounds %struct.display, %struct.display* %42, i32 0, i32 31
  %43 = load i32, i32* %d_insert, align 4
  %tobool55 = icmp ne i32 %43, 0
  br i1 %tobool55, label %if.else.104, label %if.then.56

if.then.56:                                       ; preds = %if.end.54
  %44 = load %struct.display*, %struct.display** @display, align 8
  %d_tcs57 = getelementptr inbounds %struct.display, %struct.display* %44, i32 0, i32 83
  %arrayidx58 = getelementptr inbounds [201 x %union.tcu], [201 x %union.tcu]* %d_tcs57, i32 0, i64 30
  %str59 = bitcast %union.tcu* %arrayidx58 to i8**
  %45 = load i8*, i8** %str59, align 8
  %tobool60 = icmp ne i8* %45, null
  br i1 %tobool60, label %land.lhs.true.61, label %if.else.73

land.lhs.true.61:                                 ; preds = %if.then.56
  %46 = load i32, i32* %n.addr, align 4
  %cmp62 = icmp eq i32 %46, -1
  br i1 %cmp62, label %land.lhs.true.63, label %if.then.68

land.lhs.true.63:                                 ; preds = %land.lhs.true.61
  %47 = load %struct.display*, %struct.display** @display, align 8
  %d_tcs64 = getelementptr inbounds %struct.display, %struct.display* %47, i32 0, i32 83
  %arrayidx65 = getelementptr inbounds [201 x %union.tcu], [201 x %union.tcu]* %d_tcs64, i32 0, i64 29
  %str66 = bitcast %union.tcu* %arrayidx65 to i8**
  %48 = load i8*, i8** %str66, align 8
  %tobool67 = icmp ne i8* %48, null
  br i1 %tobool67, label %if.else.73, label %if.then.68

if.then.68:                                       ; preds = %land.lhs.true.63, %land.lhs.true.61
  %49 = load %struct.display*, %struct.display** @display, align 8
  %d_tcs69 = getelementptr inbounds %struct.display, %struct.display* %49, i32 0, i32 83
  %arrayidx70 = getelementptr inbounds [201 x %union.tcu], [201 x %union.tcu]* %d_tcs69, i32 0, i64 30
  %str71 = bitcast %union.tcu* %arrayidx70 to i8**
  %50 = load i8*, i8** %str71, align 8
  %51 = load i32, i32* %n.addr, align 4
  %sub72 = sub nsw i32 0, %51
  call void @AddCStr2(i8* %50, i32 %sub72)
  br label %if.end.103

if.else.73:                                       ; preds = %land.lhs.true.63, %if.then.56
  %52 = load %struct.display*, %struct.display** @display, align 8
  %d_tcs74 = getelementptr inbounds %struct.display, %struct.display* %52, i32 0, i32 83
  %arrayidx75 = getelementptr inbounds [201 x %union.tcu], [201 x %union.tcu]* %d_tcs74, i32 0, i64 29
  %str76 = bitcast %union.tcu* %arrayidx75 to i8**
  %53 = load i8*, i8** %str76, align 8
  %tobool77 = icmp ne i8* %53, null
  br i1 %tobool77, label %if.then.78, label %if.else.88

if.then.78:                                       ; preds = %if.else.73
  %54 = load i32, i32* %n.addr, align 4
  %sub79 = sub nsw i32 0, %54
  store i32 %sub79, i32* %i, align 4
  br label %for.cond.80

for.cond.80:                                      ; preds = %for.body.83, %if.then.78
  %55 = load i32, i32* %i, align 4
  %dec81 = add nsw i32 %55, -1
  store i32 %dec81, i32* %i, align 4
  %tobool82 = icmp ne i32 %55, 0
  br i1 %tobool82, label %for.body.83, label %for.end.87

for.body.83:                                      ; preds = %for.cond.80
  %56 = load %struct.display*, %struct.display** @display, align 8
  %d_tcs84 = getelementptr inbounds %struct.display, %struct.display* %56, i32 0, i32 83
  %arrayidx85 = getelementptr inbounds [201 x %union.tcu], [201 x %union.tcu]* %d_tcs84, i32 0, i64 29
  %str86 = bitcast %union.tcu* %arrayidx85 to i8**
  %57 = load i8*, i8** %str86, align 8
  call void @AddCStr(i8* %57)
  br label %for.cond.80

for.end.87:                                       ; preds = %for.cond.80
  br label %if.end.102

if.else.88:                                       ; preds = %if.else.73
  %58 = load %struct.display*, %struct.display** @display, align 8
  %d_tcs89 = getelementptr inbounds %struct.display, %struct.display* %58, i32 0, i32 83
  %arrayidx90 = getelementptr inbounds [201 x %union.tcu], [201 x %union.tcu]* %d_tcs89, i32 0, i64 27
  %str91 = bitcast %union.tcu* %arrayidx90 to i8**
  %59 = load i8*, i8** %str91, align 8
  %tobool92 = icmp ne i8* %59, null
  br i1 %tobool92, label %if.then.93, label %if.else.100

if.then.93:                                       ; preds = %if.else.88
  call void @InsertMode(i32 1)
  call void @SetRendition(%struct.mchar* @mchar_null)
  %60 = load i32, i32* %bce.addr, align 4
  call void @SetBackColor(i32 %60)
  %61 = load i32, i32* %n.addr, align 4
  %sub94 = sub nsw i32 0, %61
  store i32 %sub94, i32* %i, align 4
  br label %for.cond.95

for.cond.95:                                      ; preds = %for.body.98, %if.then.93
  %62 = load i32, i32* %i, align 4
  %dec96 = add nsw i32 %62, -1
  store i32 %dec96, i32* %i, align 4
  %tobool97 = icmp ne i32 %62, 0
  br i1 %tobool97, label %for.body.98, label %for.end.99

for.body.98:                                      ; preds = %for.cond.95
  call void @INSERTCHAR(i32 32)
  br label %for.cond.95

for.end.99:                                       ; preds = %for.cond.95
  store i32 0, i32* %bce.addr, align 4
  br label %if.end.101

if.else.100:                                      ; preds = %if.else.88
  %63 = load i32, i32* %y.addr, align 4
  %64 = load i32, i32* %xs.addr, align 4
  %65 = load i32, i32* %xe.addr, align 4
  call void @RefreshLine(i32 %63, i32 %64, i32 %65, i32 0)
  br label %if.end.140

if.end.101:                                       ; preds = %for.end.99
  br label %if.end.102

if.end.102:                                       ; preds = %if.end.101, %for.end.87
  br label %if.end.103

if.end.103:                                       ; preds = %if.end.102, %if.then.68
  br label %if.end.111

if.else.104:                                      ; preds = %if.end.54
  call void @SetRendition(%struct.mchar* @mchar_null)
  %66 = load i32, i32* %bce.addr, align 4
  call void @SetBackColor(i32 %66)
  %67 = load i32, i32* %n.addr, align 4
  %sub105 = sub nsw i32 0, %67
  store i32 %sub105, i32* %i, align 4
  br label %for.cond.106

for.cond.106:                                     ; preds = %for.body.109, %if.else.104
  %68 = load i32, i32* %i, align 4
  %dec107 = add nsw i32 %68, -1
  store i32 %dec107, i32* %i, align 4
  %tobool108 = icmp ne i32 %68, 0
  br i1 %tobool108, label %for.body.109, label %for.end.110

for.body.109:                                     ; preds = %for.cond.106
  call void @INSERTCHAR(i32 32)
  br label %for.cond.106

for.end.110:                                      ; preds = %for.cond.106
  store i32 0, i32* %bce.addr, align 4
  br label %if.end.111

if.end.111:                                       ; preds = %for.end.110, %if.end.103
  br label %if.end.112

if.end.112:                                       ; preds = %if.end.111, %if.end.44
  %69 = load i32, i32* %bce.addr, align 4
  %tobool113 = icmp ne i32 %69, 0
  br i1 %tobool113, label %land.lhs.true.114, label %if.end.128

land.lhs.true.114:                                ; preds = %if.end.112
  %70 = load %struct.display*, %struct.display** @display, align 8
  %d_tcs115 = getelementptr inbounds %struct.display, %struct.display* %70, i32 0, i32 83
  %arrayidx116 = getelementptr inbounds [201 x %union.tcu], [201 x %union.tcu]* %d_tcs115, i32 0, i64 66
  %flg117 = bitcast %union.tcu* %arrayidx116 to i32*
  %71 = load i32, i32* %flg117, align 4
  %tobool118 = icmp ne i32 %71, 0
  br i1 %tobool118, label %if.end.128, label %if.then.119

if.then.119:                                      ; preds = %land.lhs.true.114
  %72 = load i32, i32* %n.addr, align 4
  %cmp120 = icmp sgt i32 %72, 0
  br i1 %cmp120, label %if.then.121, label %if.else.124

if.then.121:                                      ; preds = %if.then.119
  %73 = load i32, i32* %y.addr, align 4
  %74 = load i32, i32* %xe.addr, align 4
  %75 = load i32, i32* %n.addr, align 4
  %sub122 = sub nsw i32 %74, %75
  %add123 = add nsw i32 %sub122, 1
  %76 = load i32, i32* %xe.addr, align 4
  %77 = load i32, i32* %bce.addr, align 4
  call void @ClearLine(%struct.mline* null, i32 %73, i32 %add123, i32 %76, i32 %77)
  br label %if.end.127

if.else.124:                                      ; preds = %if.then.119
  %78 = load i32, i32* %y.addr, align 4
  %79 = load i32, i32* %xs.addr, align 4
  %80 = load i32, i32* %xs.addr, align 4
  %81 = load i32, i32* %n.addr, align 4
  %sub125 = sub nsw i32 %80, %81
  %sub126 = sub nsw i32 %sub125, 1
  %82 = load i32, i32* %bce.addr, align 4
  call void @ClearLine(%struct.mline* null, i32 %78, i32 %79, i32 %sub126, i32 %82)
  br label %if.end.127

if.end.127:                                       ; preds = %if.else.124, %if.then.121
  br label %if.end.128

if.end.128:                                       ; preds = %if.end.127, %land.lhs.true.114, %if.end.112
  %83 = load %struct.display*, %struct.display** @display, align 8
  %d_lp_missing = getelementptr inbounds %struct.display, %struct.display* %83, i32 0, i32 38
  %84 = load i32, i32* %d_lp_missing, align 4
  %tobool129 = icmp ne i32 %84, 0
  br i1 %tobool129, label %land.lhs.true.130, label %if.end.140

land.lhs.true.130:                                ; preds = %if.end.128
  %85 = load i32, i32* %y.addr, align 4
  %86 = load %struct.display*, %struct.display** @display, align 8
  %d_bot = getelementptr inbounds %struct.display, %struct.display* %86, i32 0, i32 21
  %87 = load i32, i32* %d_bot, align 4
  %cmp131 = icmp eq i32 %85, %87
  br i1 %cmp131, label %if.then.132, label %if.end.140

if.then.132:                                      ; preds = %land.lhs.true.130
  %88 = load i32, i32* %n.addr, align 4
  %cmp133 = icmp sgt i32 %88, 0
  br i1 %cmp133, label %if.then.134, label %if.end.138

if.then.134:                                      ; preds = %if.then.132
  %89 = load %struct.display*, %struct.display** @display, align 8
  %d_width135 = getelementptr inbounds %struct.display, %struct.display* %89, i32 0, i32 16
  %90 = load i32, i32* %d_width135, align 4
  %sub136 = sub nsw i32 %90, 1
  %91 = load i32, i32* %n.addr, align 4
  %sub137 = sub nsw i32 %sub136, %91
  %92 = load i32, i32* %y.addr, align 4
  call void @WriteLP(i32 %sub137, i32 %92)
  br label %if.end.138

if.end.138:                                       ; preds = %if.then.134, %if.then.132
  %93 = load %struct.display*, %struct.display** @display, align 8
  %d_lp_missing139 = getelementptr inbounds %struct.display, %struct.display* %93, i32 0, i32 38
  store i32 0, i32* %d_lp_missing139, align 4
  br label %if.end.140

if.end.140:                                       ; preds = %if.then, %if.then.2, %if.else.42, %if.else.100, %if.end.138, %land.lhs.true.130, %if.end.128
  ret void
}

; Function Attrs: nounwind uwtable
define void @RefreshLine(i32 %y, i32 %from, i32 %to, i32 %isblank) #0 {
entry:
  %y.addr = alloca i32, align 4
  %from.addr = alloca i32, align 4
  %to.addr = alloca i32, align 4
  %isblank.addr = alloca i32, align 4
  %vp = alloca %struct.viewport*, align 8
  %lvp = alloca %struct.viewport*, align 8
  %cv = alloca %struct.canvas*, align 8
  %lcv = alloca %struct.canvas*, align 8
  %cvlist = alloca %struct.canvas*, align 8
  %cvlnext = alloca %struct.canvas*, align 8
  %oldflayer = alloca %struct.layer*, align 8
  %xx = alloca i32, align 4
  %yy = alloca i32, align 4
  %l = alloca i32, align 4
  %buf = alloca i8*, align 8
  %p = alloca %struct.win*, align 8
  %extrabytes = alloca i32, align 4
  store i32 %y, i32* %y.addr, align 4
  store i32 %from, i32* %from.addr, align 4
  store i32 %to, i32* %to.addr, align 4
  store i32 %isblank, i32* %isblank.addr, align 4
  br label %do.body

do.body:                                          ; preds = %entry
  br label %do.end

do.end:                                           ; preds = %do.body
  br label %do.body.1

do.body.1:                                        ; preds = %do.end
  br label %do.end.2

do.end.2:                                         ; preds = %do.body.1
  br label %do.body.3

do.body.3:                                        ; preds = %do.end.2
  br label %do.end.4

do.end.4:                                         ; preds = %do.body.3
  %0 = load %struct.display*, %struct.display** @display, align 8
  %d_status = getelementptr inbounds %struct.display, %struct.display* %0, i32 0, i32 43
  %1 = load i32, i32* %d_status, align 4
  %cmp = icmp eq i32 %1, 1
  br i1 %cmp, label %land.lhs.true, label %if.end.9

land.lhs.true:                                    ; preds = %do.end.4
  %2 = load i32, i32* %y.addr, align 4
  %3 = load %struct.display*, %struct.display** @display, align 8
  %d_height = getelementptr inbounds %struct.display, %struct.display* %3, i32 0, i32 17
  %4 = load i32, i32* %d_height, align 4
  %sub = sub nsw i32 %4, 1
  %cmp5 = icmp eq i32 %2, %sub
  br i1 %cmp5, label %if.then, label %if.end.9

if.then:                                          ; preds = %land.lhs.true
  %5 = load i32, i32* %to.addr, align 4
  %6 = load %struct.display*, %struct.display** @display, align 8
  %d_status_len = getelementptr inbounds %struct.display, %struct.display* %6, i32 0, i32 45
  %7 = load i32, i32* %d_status_len, align 4
  %cmp6 = icmp sge i32 %5, %7
  br i1 %cmp6, label %if.then.7, label %if.end

if.then.7:                                        ; preds = %if.then
  %8 = load i32, i32* %to.addr, align 4
  %add = add nsw i32 %8, 1
  %9 = load %struct.display*, %struct.display** @display, align 8
  %d_status_len8 = getelementptr inbounds %struct.display, %struct.display* %9, i32 0, i32 45
  store i32 %add, i32* %d_status_len8, align 4
  br label %if.end

if.end:                                           ; preds = %if.then.7, %if.then
  br label %if.end.287

if.end.9:                                         ; preds = %land.lhs.true, %do.end.4
  %10 = load i32, i32* %isblank.addr, align 4
  %cmp10 = icmp eq i32 %10, 0
  br i1 %cmp10, label %land.lhs.true.11, label %if.end.33

land.lhs.true.11:                                 ; preds = %if.end.9
  %11 = load %struct.display*, %struct.display** @display, align 8
  %d_tcs = getelementptr inbounds %struct.display, %struct.display* %11, i32 0, i32 83
  %arrayidx = getelementptr inbounds [201 x %union.tcu], [201 x %union.tcu]* %d_tcs, i32 0, i64 37
  %str = bitcast %union.tcu* %arrayidx to i8**
  %12 = load i8*, i8** %str, align 8
  %tobool = icmp ne i8* %12, null
  br i1 %tobool, label %land.lhs.true.12, label %if.end.33

land.lhs.true.12:                                 ; preds = %land.lhs.true.11
  %13 = load i32, i32* %to.addr, align 4
  %14 = load %struct.display*, %struct.display** @display, align 8
  %d_width = getelementptr inbounds %struct.display, %struct.display* %14, i32 0, i32 16
  %15 = load i32, i32* %d_width, align 4
  %sub13 = sub nsw i32 %15, 1
  %cmp14 = icmp eq i32 %13, %sub13
  br i1 %cmp14, label %land.lhs.true.15, label %if.end.33

land.lhs.true.15:                                 ; preds = %land.lhs.true.12
  %16 = load i32, i32* %from.addr, align 4
  %17 = load i32, i32* %to.addr, align 4
  %cmp16 = icmp slt i32 %16, %17
  br i1 %cmp16, label %land.lhs.true.17, label %if.end.33

land.lhs.true.17:                                 ; preds = %land.lhs.true.15
  %18 = load %struct.display*, %struct.display** @display, align 8
  %d_status18 = getelementptr inbounds %struct.display, %struct.display* %18, i32 0, i32 43
  %19 = load i32, i32* %d_status18, align 4
  %cmp19 = icmp ne i32 %19, 2
  br i1 %cmp19, label %if.then.20, label %if.end.33

if.then.20:                                       ; preds = %land.lhs.true.17
  %20 = load i32, i32* %from.addr, align 4
  %21 = load i32, i32* %y.addr, align 4
  call void @GotoPos(i32 %20, i32 %21)
  %22 = load %struct.display*, %struct.display** @display, align 8
  %d_tcs21 = getelementptr inbounds %struct.display, %struct.display* %22, i32 0, i32 83
  %arrayidx22 = getelementptr inbounds [201 x %union.tcu], [201 x %union.tcu]* %d_tcs21, i32 0, i64 33
  %flg = bitcast %union.tcu* %arrayidx22 to i32*
  %23 = load i32, i32* %flg, align 4
  %tobool23 = icmp ne i32 %23, 0
  br i1 %tobool23, label %if.then.28, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.then.20
  %24 = load %struct.display*, %struct.display** @display, align 8
  %d_tcs24 = getelementptr inbounds %struct.display, %struct.display* %24, i32 0, i32 83
  %arrayidx25 = getelementptr inbounds [201 x %union.tcu], [201 x %union.tcu]* %d_tcs24, i32 0, i64 66
  %flg26 = bitcast %union.tcu* %arrayidx25 to i32*
  %25 = load i32, i32* %flg26, align 4
  %tobool27 = icmp ne i32 %25, 0
  br i1 %tobool27, label %if.then.28, label %if.end.29

if.then.28:                                       ; preds = %lor.lhs.false, %if.then.20
  call void @SetRendition(%struct.mchar* @mchar_null)
  br label %if.end.29

if.end.29:                                        ; preds = %if.then.28, %lor.lhs.false
  %26 = load %struct.display*, %struct.display** @display, align 8
  %d_tcs30 = getelementptr inbounds %struct.display, %struct.display* %26, i32 0, i32 83
  %arrayidx31 = getelementptr inbounds [201 x %union.tcu], [201 x %union.tcu]* %d_tcs30, i32 0, i64 37
  %str32 = bitcast %union.tcu* %arrayidx31 to i8**
  %27 = load i8*, i8** %str32, align 8
  call void @AddCStr(i8* %27)
  store i32 1, i32* %isblank.addr, align 4
  br label %if.end.33

if.end.33:                                        ; preds = %if.end.29, %land.lhs.true.17, %land.lhs.true.15, %land.lhs.true.12, %land.lhs.true.11, %if.end.9
  %28 = load i32, i32* %y.addr, align 4
  %29 = load %struct.display*, %struct.display** @display, align 8
  %d_height34 = getelementptr inbounds %struct.display, %struct.display* %29, i32 0, i32 17
  %30 = load i32, i32* %d_height34, align 4
  %sub35 = sub nsw i32 %30, 1
  %cmp36 = icmp eq i32 %28, %sub35
  br i1 %cmp36, label %land.lhs.true.37, label %lor.lhs.false.39

land.lhs.true.37:                                 ; preds = %if.end.33
  %31 = load %struct.display*, %struct.display** @display, align 8
  %d_has_hstatus = getelementptr inbounds %struct.display, %struct.display* %31, i32 0, i32 36
  %32 = load i32, i32* %d_has_hstatus, align 4
  %cmp38 = icmp eq i32 %32, 1
  br i1 %cmp38, label %if.then.44, label %lor.lhs.false.39

lor.lhs.false.39:                                 ; preds = %land.lhs.true.37, %if.end.33
  %33 = load i32, i32* %y.addr, align 4
  %cmp40 = icmp eq i32 %33, 0
  br i1 %cmp40, label %land.lhs.true.41, label %if.end.45

land.lhs.true.41:                                 ; preds = %lor.lhs.false.39
  %34 = load %struct.display*, %struct.display** @display, align 8
  %d_has_hstatus42 = getelementptr inbounds %struct.display, %struct.display* %34, i32 0, i32 36
  %35 = load i32, i32* %d_has_hstatus42, align 4
  %cmp43 = icmp eq i32 %35, 4
  br i1 %cmp43, label %if.then.44, label %if.end.45

if.then.44:                                       ; preds = %land.lhs.true.41, %land.lhs.true.37
  call void @RefreshHStatus()
  br label %if.end.287

if.end.45:                                        ; preds = %land.lhs.true.41, %lor.lhs.false.39
  br label %while.cond

while.cond:                                       ; preds = %if.end.270, %if.end.254, %if.then.232, %if.then.174, %if.end.45
  %36 = load i32, i32* %from.addr, align 4
  %37 = load i32, i32* %to.addr, align 4
  %cmp46 = icmp sle i32 %36, %37
  br i1 %cmp46, label %while.body, label %while.end.281

while.body:                                       ; preds = %while.cond
  store %struct.canvas* null, %struct.canvas** %lcv, align 8
  store %struct.viewport* null, %struct.viewport** %lvp, align 8
  %38 = load %struct.display*, %struct.display** @display, align 8
  %d_cvlist = getelementptr inbounds %struct.display, %struct.display* %38, i32 0, i32 3
  %39 = load %struct.canvas*, %struct.canvas** %d_cvlist, align 8
  store %struct.canvas* %39, %struct.canvas** %cv, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.inc.171, %while.body
  %40 = load %struct.canvas*, %struct.canvas** %cv, align 8
  %tobool47 = icmp ne %struct.canvas* %40, null
  br i1 %tobool47, label %for.body, label %for.end.172

for.body:                                         ; preds = %for.cond
  %41 = load i32, i32* %y.addr, align 4
  %42 = load %struct.canvas*, %struct.canvas** %cv, align 8
  %c_ye = getelementptr inbounds %struct.canvas, %struct.canvas* %42, i32 0, i32 17
  %43 = load i32, i32* %c_ye, align 4
  %add48 = add nsw i32 %43, 1
  %cmp49 = icmp eq i32 %41, %add48
  br i1 %cmp49, label %land.lhs.true.50, label %if.end.104

land.lhs.true.50:                                 ; preds = %for.body
  %44 = load i32, i32* %from.addr, align 4
  %45 = load %struct.canvas*, %struct.canvas** %cv, align 8
  %c_xs = getelementptr inbounds %struct.canvas, %struct.canvas* %45, i32 0, i32 14
  %46 = load i32, i32* %c_xs, align 4
  %cmp51 = icmp sge i32 %44, %46
  br i1 %cmp51, label %land.lhs.true.52, label %if.end.104

land.lhs.true.52:                                 ; preds = %land.lhs.true.50
  %47 = load i32, i32* %from.addr, align 4
  %48 = load %struct.canvas*, %struct.canvas** %cv, align 8
  %c_xe = getelementptr inbounds %struct.canvas, %struct.canvas* %48, i32 0, i32 15
  %49 = load i32, i32* %c_xe, align 4
  %cmp53 = icmp sle i32 %47, %49
  br i1 %cmp53, label %if.then.54, label %if.end.104

if.then.54:                                       ; preds = %land.lhs.true.52
  %50 = load i8*, i8** @captionstring, align 8
  %call = call i64 @strlen(i8* %50) #9
  %51 = load i8*, i8** @captionstring, align 8
  %call55 = call i32 @strlen_onscreen(i8* %51, i8* null)
  %conv = sext i32 %call55 to i64
  %sub56 = sub i64 %call, %conv
  %conv57 = trunc i64 %sub56 to i32
  store i32 %conv57, i32* %extrabytes, align 4
  %52 = load %struct.canvas*, %struct.canvas** %cv, align 8
  %c_layer = getelementptr inbounds %struct.canvas, %struct.canvas* %52, i32 0, i32 9
  %53 = load %struct.layer*, %struct.layer** %c_layer, align 8
  %l_bottom = getelementptr inbounds %struct.layer, %struct.layer* %53, i32 0, i32 9
  %54 = load %struct.layer*, %struct.layer** %l_bottom, align 8
  %l_data = getelementptr inbounds %struct.layer, %struct.layer* %54, i32 0, i32 7
  %55 = load i8*, i8** %l_data, align 8
  %56 = bitcast i8* %55 to %struct.win*
  store %struct.win* %56, %struct.win** %p, align 8
  %57 = load i8*, i8** @captionstring, align 8
  %58 = load %struct.win*, %struct.win** %p, align 8
  %59 = load %struct.canvas*, %struct.canvas** %cv, align 8
  %c_xe58 = getelementptr inbounds %struct.canvas, %struct.canvas* %59, i32 0, i32 15
  %60 = load i32, i32* %c_xe58, align 4
  %61 = load %struct.canvas*, %struct.canvas** %cv, align 8
  %c_xs59 = getelementptr inbounds %struct.canvas, %struct.canvas* %61, i32 0, i32 14
  %62 = load i32, i32* %c_xs59, align 4
  %sub60 = sub nsw i32 %60, %62
  %63 = load %struct.canvas*, %struct.canvas** %cv, align 8
  %c_xe61 = getelementptr inbounds %struct.canvas, %struct.canvas* %63, i32 0, i32 15
  %64 = load i32, i32* %c_xe61, align 4
  %add62 = add nsw i32 %64, 1
  %65 = load %struct.display*, %struct.display** @display, align 8
  %d_width63 = getelementptr inbounds %struct.display, %struct.display* %65, i32 0, i32 16
  %66 = load i32, i32* %d_width63, align 4
  %cmp64 = icmp slt i32 %add62, %66
  br i1 %cmp64, label %lor.end, label %lor.rhs

lor.rhs:                                          ; preds = %if.then.54
  %67 = load %struct.display*, %struct.display** @display, align 8
  %d_tcs66 = getelementptr inbounds %struct.display, %struct.display* %67, i32 0, i32 83
  %arrayidx67 = getelementptr inbounds [201 x %union.tcu], [201 x %union.tcu]* %d_tcs66, i32 0, i64 87
  %flg68 = bitcast %union.tcu* %arrayidx67 to i32*
  %68 = load i32, i32* %flg68, align 4
  %tobool69 = icmp ne i32 %68, 0
  br label %lor.end

lor.end:                                          ; preds = %lor.rhs, %if.then.54
  %69 = phi i1 [ true, %if.then.54 ], [ %tobool69, %lor.rhs ]
  %lor.ext = zext i1 %69 to i32
  %add70 = add nsw i32 %sub60, %lor.ext
  %70 = load i32, i32* %extrabytes, align 4
  %add71 = add nsw i32 %add70, %70
  %71 = load %struct.canvas*, %struct.canvas** %cv, align 8
  %c_captev = getelementptr inbounds %struct.canvas, %struct.canvas* %71, i32 0, i32 18
  %call72 = call i8* @MakeWinMsgEv(i8* %57, %struct.win* %58, i32 37, i32 %add71, %struct.event* %c_captev, i32 0)
  store i8* %call72, i8** %buf, align 8
  %72 = load %struct.canvas*, %struct.canvas** %cv, align 8
  %c_captev73 = getelementptr inbounds %struct.canvas, %struct.canvas* %72, i32 0, i32 18
  %timeout = getelementptr inbounds %struct.event, %struct.event* %c_captev73, i32 0, i32 6
  %tv_sec = getelementptr inbounds %struct.timeval, %struct.timeval* %timeout, i32 0, i32 0
  %73 = load i64, i64* %tv_sec, align 8
  %tobool74 = icmp ne i64 %73, 0
  br i1 %tobool74, label %if.then.75, label %if.end.77

if.then.75:                                       ; preds = %lor.end
  %74 = load %struct.canvas*, %struct.canvas** %cv, align 8
  %c_captev76 = getelementptr inbounds %struct.canvas, %struct.canvas* %74, i32 0, i32 18
  call void @evenq(%struct.event* %c_captev76)
  br label %if.end.77

if.end.77:                                        ; preds = %if.then.75, %lor.end
  %75 = load i32, i32* %to.addr, align 4
  %76 = load %struct.canvas*, %struct.canvas** %cv, align 8
  %c_xe78 = getelementptr inbounds %struct.canvas, %struct.canvas* %76, i32 0, i32 15
  %77 = load i32, i32* %c_xe78, align 4
  %cmp79 = icmp sgt i32 %75, %77
  br i1 %cmp79, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.end.77
  %78 = load %struct.canvas*, %struct.canvas** %cv, align 8
  %c_xe81 = getelementptr inbounds %struct.canvas, %struct.canvas* %78, i32 0, i32 15
  %79 = load i32, i32* %c_xe81, align 4
  br label %cond.end

cond.false:                                       ; preds = %if.end.77
  %80 = load i32, i32* %to.addr, align 4
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %79, %cond.true ], [ %80, %cond.false ]
  store i32 %cond, i32* %xx, align 4
  %81 = load i8*, i8** %buf, align 8
  %call82 = call i64 @strlen(i8* %81) #9
  %conv83 = trunc i64 %call82 to i32
  store i32 %conv83, i32* %l, align 4
  %82 = load i32, i32* %from.addr, align 4
  %83 = load i32, i32* %y.addr, align 4
  call void @GotoPos(i32 %82, i32 %83)
  call void @SetRendition(%struct.mchar* @mchar_so)
  %84 = load i32, i32* %l, align 4
  %85 = load i32, i32* %xx, align 4
  %86 = load %struct.canvas*, %struct.canvas** %cv, align 8
  %c_xs84 = getelementptr inbounds %struct.canvas, %struct.canvas* %86, i32 0, i32 14
  %87 = load i32, i32* %c_xs84, align 4
  %sub85 = sub nsw i32 %85, %87
  %add86 = add nsw i32 %sub85, 1
  %cmp87 = icmp sgt i32 %84, %add86
  br i1 %cmp87, label %if.then.89, label %if.end.93

if.then.89:                                       ; preds = %cond.end
  %88 = load i32, i32* %xx, align 4
  %89 = load %struct.canvas*, %struct.canvas** %cv, align 8
  %c_xs90 = getelementptr inbounds %struct.canvas, %struct.canvas* %89, i32 0, i32 14
  %90 = load i32, i32* %c_xs90, align 4
  %sub91 = sub nsw i32 %88, %90
  %add92 = add nsw i32 %sub91, 1
  store i32 %add92, i32* %l, align 4
  br label %if.end.93

if.end.93:                                        ; preds = %if.then.89, %cond.end
  %91 = load i8*, i8** %buf, align 8
  %92 = load i32, i32* %from.addr, align 4
  %93 = load %struct.canvas*, %struct.canvas** %cv, align 8
  %c_xs94 = getelementptr inbounds %struct.canvas, %struct.canvas* %93, i32 0, i32 14
  %94 = load i32, i32* %c_xs94, align 4
  %sub95 = sub nsw i32 %92, %94
  %95 = load i32, i32* %l, align 4
  %96 = load i32, i32* %extrabytes, align 4
  %add96 = add nsw i32 %95, %96
  %call97 = call i32 @PrePutWinMsg(i8* %91, i32 %sub95, i32 %add96)
  store i32 %call97, i32* %l, align 4
  %97 = load %struct.canvas*, %struct.canvas** %cv, align 8
  %c_xs98 = getelementptr inbounds %struct.canvas, %struct.canvas* %97, i32 0, i32 14
  %98 = load i32, i32* %c_xs98, align 4
  %99 = load i32, i32* %l, align 4
  %add99 = add nsw i32 %98, %99
  store i32 %add99, i32* %from.addr, align 4
  br label %for.cond.100

for.cond.100:                                     ; preds = %for.inc, %if.end.93
  %100 = load i32, i32* %from.addr, align 4
  %101 = load i32, i32* %xx, align 4
  %cmp101 = icmp sle i32 %100, %101
  br i1 %cmp101, label %for.body.103, label %for.end

for.body.103:                                     ; preds = %for.cond.100
  call void @PUTCHARLP(i32 32)
  br label %for.inc

for.inc:                                          ; preds = %for.body.103
  %102 = load i32, i32* %from.addr, align 4
  %inc = add nsw i32 %102, 1
  store i32 %inc, i32* %from.addr, align 4
  br label %for.cond.100

for.end:                                          ; preds = %for.cond.100
  br label %for.end.172

if.end.104:                                       ; preds = %land.lhs.true.52, %land.lhs.true.50, %for.body
  %103 = load i32, i32* %from.addr, align 4
  %104 = load %struct.canvas*, %struct.canvas** %cv, align 8
  %c_xe105 = getelementptr inbounds %struct.canvas, %struct.canvas* %104, i32 0, i32 15
  %105 = load i32, i32* %c_xe105, align 4
  %add106 = add nsw i32 %105, 1
  %cmp107 = icmp eq i32 %103, %add106
  br i1 %cmp107, label %land.lhs.true.109, label %if.end.119

land.lhs.true.109:                                ; preds = %if.end.104
  %106 = load i32, i32* %y.addr, align 4
  %107 = load %struct.canvas*, %struct.canvas** %cv, align 8
  %c_ys = getelementptr inbounds %struct.canvas, %struct.canvas* %107, i32 0, i32 16
  %108 = load i32, i32* %c_ys, align 4
  %cmp110 = icmp sge i32 %106, %108
  br i1 %cmp110, label %land.lhs.true.112, label %if.end.119

land.lhs.true.112:                                ; preds = %land.lhs.true.109
  %109 = load i32, i32* %y.addr, align 4
  %110 = load %struct.canvas*, %struct.canvas** %cv, align 8
  %c_ye113 = getelementptr inbounds %struct.canvas, %struct.canvas* %110, i32 0, i32 17
  %111 = load i32, i32* %c_ye113, align 4
  %add114 = add nsw i32 %111, 1
  %cmp115 = icmp sle i32 %109, %add114
  br i1 %cmp115, label %if.then.117, label %if.end.119

if.then.117:                                      ; preds = %land.lhs.true.112
  %112 = load i32, i32* %from.addr, align 4
  %113 = load i32, i32* %y.addr, align 4
  call void @GotoPos(i32 %112, i32 %113)
  call void @SetRendition(%struct.mchar* @mchar_so)
  call void @PUTCHARLP(i32 32)
  %114 = load i32, i32* %from.addr, align 4
  %inc118 = add nsw i32 %114, 1
  store i32 %inc118, i32* %from.addr, align 4
  br label %for.end.172

if.end.119:                                       ; preds = %land.lhs.true.112, %land.lhs.true.109, %if.end.104
  %115 = load i32, i32* %y.addr, align 4
  %116 = load %struct.canvas*, %struct.canvas** %cv, align 8
  %c_ys120 = getelementptr inbounds %struct.canvas, %struct.canvas* %116, i32 0, i32 16
  %117 = load i32, i32* %c_ys120, align 4
  %cmp121 = icmp slt i32 %115, %117
  br i1 %cmp121, label %if.then.135, label %lor.lhs.false.123

lor.lhs.false.123:                                ; preds = %if.end.119
  %118 = load i32, i32* %y.addr, align 4
  %119 = load %struct.canvas*, %struct.canvas** %cv, align 8
  %c_ye124 = getelementptr inbounds %struct.canvas, %struct.canvas* %119, i32 0, i32 17
  %120 = load i32, i32* %c_ye124, align 4
  %cmp125 = icmp sgt i32 %118, %120
  br i1 %cmp125, label %if.then.135, label %lor.lhs.false.127

lor.lhs.false.127:                                ; preds = %lor.lhs.false.123
  %121 = load i32, i32* %to.addr, align 4
  %122 = load %struct.canvas*, %struct.canvas** %cv, align 8
  %c_xs128 = getelementptr inbounds %struct.canvas, %struct.canvas* %122, i32 0, i32 14
  %123 = load i32, i32* %c_xs128, align 4
  %cmp129 = icmp slt i32 %121, %123
  br i1 %cmp129, label %if.then.135, label %lor.lhs.false.131

lor.lhs.false.131:                                ; preds = %lor.lhs.false.127
  %124 = load i32, i32* %from.addr, align 4
  %125 = load %struct.canvas*, %struct.canvas** %cv, align 8
  %c_xe132 = getelementptr inbounds %struct.canvas, %struct.canvas* %125, i32 0, i32 15
  %126 = load i32, i32* %c_xe132, align 4
  %cmp133 = icmp sgt i32 %124, %126
  br i1 %cmp133, label %if.then.135, label %if.end.136

if.then.135:                                      ; preds = %lor.lhs.false.131, %lor.lhs.false.127, %lor.lhs.false.123, %if.end.119
  br label %for.inc.171

if.end.136:                                       ; preds = %lor.lhs.false.131
  br label %do.body.137

do.body.137:                                      ; preds = %if.end.136
  br label %do.end.138

do.end.138:                                       ; preds = %do.body.137
  br label %do.body.139

do.body.139:                                      ; preds = %do.end.138
  br label %do.end.140

do.end.140:                                       ; preds = %do.body.139
  %127 = load %struct.canvas*, %struct.canvas** %cv, align 8
  %c_vplist = getelementptr inbounds %struct.canvas, %struct.canvas* %127, i32 0, i32 8
  %128 = load %struct.viewport*, %struct.viewport** %c_vplist, align 8
  store %struct.viewport* %128, %struct.viewport** %vp, align 8
  br label %for.cond.141

for.cond.141:                                     ; preds = %for.inc.169, %do.end.140
  %129 = load %struct.viewport*, %struct.viewport** %vp, align 8
  %tobool142 = icmp ne %struct.viewport* %129, null
  br i1 %tobool142, label %for.body.143, label %for.end.170

for.body.143:                                     ; preds = %for.cond.141
  br label %do.body.144

do.body.144:                                      ; preds = %for.body.143
  br label %do.end.145

do.end.145:                                       ; preds = %do.body.144
  br label %do.body.146

do.body.146:                                      ; preds = %do.end.145
  br label %do.end.147

do.end.147:                                       ; preds = %do.body.146
  %130 = load i32, i32* %y.addr, align 4
  %131 = load %struct.viewport*, %struct.viewport** %vp, align 8
  %v_ys = getelementptr inbounds %struct.viewport, %struct.viewport* %131, i32 0, i32 6
  %132 = load i32, i32* %v_ys, align 4
  %cmp148 = icmp sge i32 %130, %132
  br i1 %cmp148, label %land.lhs.true.150, label %if.end.168

land.lhs.true.150:                                ; preds = %do.end.147
  %133 = load i32, i32* %y.addr, align 4
  %134 = load %struct.viewport*, %struct.viewport** %vp, align 8
  %v_ye = getelementptr inbounds %struct.viewport, %struct.viewport* %134, i32 0, i32 7
  %135 = load i32, i32* %v_ye, align 4
  %cmp151 = icmp sle i32 %133, %135
  br i1 %cmp151, label %land.lhs.true.153, label %if.end.168

land.lhs.true.153:                                ; preds = %land.lhs.true.150
  %136 = load i32, i32* %from.addr, align 4
  %137 = load %struct.viewport*, %struct.viewport** %vp, align 8
  %v_xe = getelementptr inbounds %struct.viewport, %struct.viewport* %137, i32 0, i32 5
  %138 = load i32, i32* %v_xe, align 4
  %cmp154 = icmp sle i32 %136, %138
  br i1 %cmp154, label %land.lhs.true.156, label %if.end.168

land.lhs.true.156:                                ; preds = %land.lhs.true.153
  %139 = load i32, i32* %to.addr, align 4
  %140 = load %struct.viewport*, %struct.viewport** %vp, align 8
  %v_xs = getelementptr inbounds %struct.viewport, %struct.viewport* %140, i32 0, i32 4
  %141 = load i32, i32* %v_xs, align 4
  %cmp157 = icmp sge i32 %139, %141
  br i1 %cmp157, label %land.lhs.true.159, label %if.end.168

land.lhs.true.159:                                ; preds = %land.lhs.true.156
  %142 = load %struct.viewport*, %struct.viewport** %lvp, align 8
  %cmp160 = icmp eq %struct.viewport* %142, null
  br i1 %cmp160, label %if.then.167, label %lor.lhs.false.162

lor.lhs.false.162:                                ; preds = %land.lhs.true.159
  %143 = load %struct.viewport*, %struct.viewport** %lvp, align 8
  %v_xs163 = getelementptr inbounds %struct.viewport, %struct.viewport* %143, i32 0, i32 4
  %144 = load i32, i32* %v_xs163, align 4
  %145 = load %struct.viewport*, %struct.viewport** %vp, align 8
  %v_xs164 = getelementptr inbounds %struct.viewport, %struct.viewport* %145, i32 0, i32 4
  %146 = load i32, i32* %v_xs164, align 4
  %cmp165 = icmp sgt i32 %144, %146
  br i1 %cmp165, label %if.then.167, label %if.end.168

if.then.167:                                      ; preds = %lor.lhs.false.162, %land.lhs.true.159
  %147 = load %struct.canvas*, %struct.canvas** %cv, align 8
  store %struct.canvas* %147, %struct.canvas** %lcv, align 8
  %148 = load %struct.viewport*, %struct.viewport** %vp, align 8
  store %struct.viewport* %148, %struct.viewport** %lvp, align 8
  br label %if.end.168

if.end.168:                                       ; preds = %if.then.167, %lor.lhs.false.162, %land.lhs.true.156, %land.lhs.true.153, %land.lhs.true.150, %do.end.147
  br label %for.inc.169

for.inc.169:                                      ; preds = %if.end.168
  %149 = load %struct.viewport*, %struct.viewport** %vp, align 8
  %v_next = getelementptr inbounds %struct.viewport, %struct.viewport* %149, i32 0, i32 0
  %150 = load %struct.viewport*, %struct.viewport** %v_next, align 8
  store %struct.viewport* %150, %struct.viewport** %vp, align 8
  br label %for.cond.141

for.end.170:                                      ; preds = %for.cond.141
  br label %for.inc.171

for.inc.171:                                      ; preds = %for.end.170, %if.then.135
  %151 = load %struct.canvas*, %struct.canvas** %cv, align 8
  %c_next = getelementptr inbounds %struct.canvas, %struct.canvas* %151, i32 0, i32 0
  %152 = load %struct.canvas*, %struct.canvas** %c_next, align 8
  store %struct.canvas* %152, %struct.canvas** %cv, align 8
  br label %for.cond

for.end.172:                                      ; preds = %if.then.117, %for.end, %for.cond
  %153 = load %struct.canvas*, %struct.canvas** %cv, align 8
  %tobool173 = icmp ne %struct.canvas* %153, null
  br i1 %tobool173, label %if.then.174, label %if.end.175

if.then.174:                                      ; preds = %for.end.172
  br label %while.cond

if.end.175:                                       ; preds = %for.end.172
  %154 = load %struct.viewport*, %struct.viewport** %lvp, align 8
  %cmp176 = icmp eq %struct.viewport* %154, null
  br i1 %cmp176, label %if.then.178, label %if.end.179

if.then.178:                                      ; preds = %if.end.175
  br label %while.end.281

if.end.179:                                       ; preds = %if.end.175
  %155 = load i32, i32* %from.addr, align 4
  %156 = load %struct.viewport*, %struct.viewport** %lvp, align 8
  %v_xs180 = getelementptr inbounds %struct.viewport, %struct.viewport* %156, i32 0, i32 4
  %157 = load i32, i32* %v_xs180, align 4
  %cmp181 = icmp slt i32 %155, %157
  br i1 %cmp181, label %if.then.183, label %if.end.190

if.then.183:                                      ; preds = %if.end.179
  %158 = load i32, i32* %isblank.addr, align 4
  %tobool184 = icmp ne i32 %158, 0
  br i1 %tobool184, label %if.end.188, label %if.then.185

if.then.185:                                      ; preds = %if.then.183
  %159 = load i32, i32* %y.addr, align 4
  %160 = load i32, i32* %from.addr, align 4
  %161 = load %struct.viewport*, %struct.viewport** %lvp, align 8
  %v_xs186 = getelementptr inbounds %struct.viewport, %struct.viewport* %161, i32 0, i32 4
  %162 = load i32, i32* %v_xs186, align 4
  %sub187 = sub nsw i32 %162, 1
  call void @DisplayLine(%struct.mline* @mline_null, %struct.mline* @mline_blank, i32 %159, i32 %160, i32 %sub187)
  br label %if.end.188

if.end.188:                                       ; preds = %if.then.185, %if.then.183
  %163 = load %struct.viewport*, %struct.viewport** %lvp, align 8
  %v_xs189 = getelementptr inbounds %struct.viewport, %struct.viewport* %163, i32 0, i32 4
  %164 = load i32, i32* %v_xs189, align 4
  store i32 %164, i32* %from.addr, align 4
  br label %if.end.190

if.end.190:                                       ; preds = %if.end.188, %if.end.179
  %165 = load i32, i32* %y.addr, align 4
  %166 = load %struct.viewport*, %struct.viewport** %lvp, align 8
  %v_yoff = getelementptr inbounds %struct.viewport, %struct.viewport* %166, i32 0, i32 3
  %167 = load i32, i32* %v_yoff, align 4
  %sub191 = sub nsw i32 %165, %167
  store i32 %sub191, i32* %yy, align 4
  %168 = load i32, i32* %to.addr, align 4
  %169 = load %struct.viewport*, %struct.viewport** %lvp, align 8
  %v_xe192 = getelementptr inbounds %struct.viewport, %struct.viewport* %169, i32 0, i32 5
  %170 = load i32, i32* %v_xe192, align 4
  %cmp193 = icmp slt i32 %168, %170
  br i1 %cmp193, label %cond.true.195, label %cond.false.196

cond.true.195:                                    ; preds = %if.end.190
  %171 = load i32, i32* %to.addr, align 4
  br label %cond.end.198

cond.false.196:                                   ; preds = %if.end.190
  %172 = load %struct.viewport*, %struct.viewport** %lvp, align 8
  %v_xe197 = getelementptr inbounds %struct.viewport, %struct.viewport* %172, i32 0, i32 5
  %173 = load i32, i32* %v_xe197, align 4
  br label %cond.end.198

cond.end.198:                                     ; preds = %cond.false.196, %cond.true.195
  %cond199 = phi i32 [ %171, %cond.true.195 ], [ %173, %cond.false.196 ]
  store i32 %cond199, i32* %xx, align 4
  %174 = load %struct.canvas*, %struct.canvas** %lcv, align 8
  %c_layer200 = getelementptr inbounds %struct.canvas, %struct.canvas* %174, i32 0, i32 9
  %175 = load %struct.layer*, %struct.layer** %c_layer200, align 8
  %tobool201 = icmp ne %struct.layer* %175, null
  br i1 %tobool201, label %land.lhs.true.202, label %if.end.209

land.lhs.true.202:                                ; preds = %cond.end.198
  %176 = load %struct.canvas*, %struct.canvas** %lcv, align 8
  %c_xoff = getelementptr inbounds %struct.canvas, %struct.canvas* %176, i32 0, i32 12
  %177 = load i32, i32* %c_xoff, align 4
  %178 = load %struct.canvas*, %struct.canvas** %lcv, align 8
  %c_layer203 = getelementptr inbounds %struct.canvas, %struct.canvas* %178, i32 0, i32 9
  %179 = load %struct.layer*, %struct.layer** %c_layer203, align 8
  %l_width = getelementptr inbounds %struct.layer, %struct.layer* %179, i32 0, i32 1
  %180 = load i32, i32* %l_width, align 4
  %add204 = add nsw i32 %177, %180
  %181 = load i32, i32* %from.addr, align 4
  %cmp205 = icmp eq i32 %add204, %181
  br i1 %cmp205, label %if.then.207, label %if.end.209

if.then.207:                                      ; preds = %land.lhs.true.202
  %182 = load i32, i32* %from.addr, align 4
  %183 = load i32, i32* %y.addr, align 4
  call void @GotoPos(i32 %182, i32 %183)
  call void @SetRendition(%struct.mchar* @mchar_blank)
  call void @PUTCHARLP(i32 124)
  %184 = load i32, i32* %from.addr, align 4
  %inc208 = add nsw i32 %184, 1
  store i32 %inc208, i32* %from.addr, align 4
  br label %if.end.209

if.end.209:                                       ; preds = %if.then.207, %land.lhs.true.202, %cond.end.198
  %185 = load %struct.canvas*, %struct.canvas** %lcv, align 8
  %c_layer210 = getelementptr inbounds %struct.canvas, %struct.canvas* %185, i32 0, i32 9
  %186 = load %struct.layer*, %struct.layer** %c_layer210, align 8
  %tobool211 = icmp ne %struct.layer* %186, null
  br i1 %tobool211, label %land.lhs.true.212, label %if.end.234

land.lhs.true.212:                                ; preds = %if.end.209
  %187 = load i32, i32* %yy, align 4
  %188 = load %struct.canvas*, %struct.canvas** %lcv, align 8
  %c_layer213 = getelementptr inbounds %struct.canvas, %struct.canvas* %188, i32 0, i32 9
  %189 = load %struct.layer*, %struct.layer** %c_layer213, align 8
  %l_height = getelementptr inbounds %struct.layer, %struct.layer* %189, i32 0, i32 2
  %190 = load i32, i32* %l_height, align 4
  %cmp214 = icmp eq i32 %187, %190
  br i1 %cmp214, label %if.then.216, label %if.end.234

if.then.216:                                      ; preds = %land.lhs.true.212
  %191 = load i32, i32* %from.addr, align 4
  %192 = load i32, i32* %y.addr, align 4
  call void @GotoPos(i32 %191, i32 %192)
  call void @SetRendition(%struct.mchar* @mchar_blank)
  br label %while.cond.217

while.cond.217:                                   ; preds = %while.body.226, %if.then.216
  %193 = load i32, i32* %from.addr, align 4
  %194 = load %struct.viewport*, %struct.viewport** %lvp, align 8
  %v_xe218 = getelementptr inbounds %struct.viewport, %struct.viewport* %194, i32 0, i32 5
  %195 = load i32, i32* %v_xe218, align 4
  %cmp219 = icmp sle i32 %193, %195
  br i1 %cmp219, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %while.cond.217
  %196 = load i32, i32* %from.addr, align 4
  %197 = load %struct.viewport*, %struct.viewport** %lvp, align 8
  %v_xoff = getelementptr inbounds %struct.viewport, %struct.viewport* %197, i32 0, i32 2
  %198 = load i32, i32* %v_xoff, align 4
  %sub221 = sub nsw i32 %196, %198
  %199 = load %struct.canvas*, %struct.canvas** %lcv, align 8
  %c_layer222 = getelementptr inbounds %struct.canvas, %struct.canvas* %199, i32 0, i32 9
  %200 = load %struct.layer*, %struct.layer** %c_layer222, align 8
  %l_width223 = getelementptr inbounds %struct.layer, %struct.layer* %200, i32 0, i32 1
  %201 = load i32, i32* %l_width223, align 4
  %cmp224 = icmp slt i32 %sub221, %201
  br label %land.end

land.end:                                         ; preds = %land.rhs, %while.cond.217
  %202 = phi i1 [ false, %while.cond.217 ], [ %cmp224, %land.rhs ]
  br i1 %202, label %while.body.226, label %while.end

while.body.226:                                   ; preds = %land.end
  call void @PUTCHARLP(i32 45)
  %203 = load i32, i32* %from.addr, align 4
  %inc227 = add nsw i32 %203, 1
  store i32 %inc227, i32* %from.addr, align 4
  br label %while.cond.217

while.end:                                        ; preds = %land.end
  %204 = load i32, i32* %from.addr, align 4
  %205 = load %struct.viewport*, %struct.viewport** %lvp, align 8
  %v_xe228 = getelementptr inbounds %struct.viewport, %struct.viewport* %205, i32 0, i32 5
  %206 = load i32, i32* %v_xe228, align 4
  %add229 = add nsw i32 %206, 1
  %cmp230 = icmp sge i32 %204, %add229
  br i1 %cmp230, label %if.then.232, label %if.end.233

if.then.232:                                      ; preds = %while.end
  br label %while.cond

if.end.233:                                       ; preds = %while.end
  br label %if.end.234

if.end.234:                                       ; preds = %if.end.233, %land.lhs.true.212, %if.end.209
  %207 = load %struct.canvas*, %struct.canvas** %lcv, align 8
  %c_layer235 = getelementptr inbounds %struct.canvas, %struct.canvas* %207, i32 0, i32 9
  %208 = load %struct.layer*, %struct.layer** %c_layer235, align 8
  %cmp236 = icmp eq %struct.layer* %208, null
  br i1 %cmp236, label %if.then.250, label %lor.lhs.false.238

lor.lhs.false.238:                                ; preds = %if.end.234
  %209 = load i32, i32* %yy, align 4
  %210 = load %struct.canvas*, %struct.canvas** %lcv, align 8
  %c_layer239 = getelementptr inbounds %struct.canvas, %struct.canvas* %210, i32 0, i32 9
  %211 = load %struct.layer*, %struct.layer** %c_layer239, align 8
  %l_height240 = getelementptr inbounds %struct.layer, %struct.layer* %211, i32 0, i32 2
  %212 = load i32, i32* %l_height240, align 4
  %cmp241 = icmp sge i32 %209, %212
  br i1 %cmp241, label %if.then.250, label %lor.lhs.false.243

lor.lhs.false.243:                                ; preds = %lor.lhs.false.238
  %213 = load i32, i32* %from.addr, align 4
  %214 = load %struct.viewport*, %struct.viewport** %lvp, align 8
  %v_xoff244 = getelementptr inbounds %struct.viewport, %struct.viewport* %214, i32 0, i32 2
  %215 = load i32, i32* %v_xoff244, align 4
  %sub245 = sub nsw i32 %213, %215
  %216 = load %struct.canvas*, %struct.canvas** %lcv, align 8
  %c_layer246 = getelementptr inbounds %struct.canvas, %struct.canvas* %216, i32 0, i32 9
  %217 = load %struct.layer*, %struct.layer** %c_layer246, align 8
  %l_width247 = getelementptr inbounds %struct.layer, %struct.layer* %217, i32 0, i32 1
  %218 = load i32, i32* %l_width247, align 4
  %cmp248 = icmp sge i32 %sub245, %218
  br i1 %cmp248, label %if.then.250, label %if.end.257

if.then.250:                                      ; preds = %lor.lhs.false.243, %lor.lhs.false.238, %if.end.234
  %219 = load i32, i32* %isblank.addr, align 4
  %tobool251 = icmp ne i32 %219, 0
  br i1 %tobool251, label %if.end.254, label %if.then.252

if.then.252:                                      ; preds = %if.then.250
  %220 = load i32, i32* %y.addr, align 4
  %221 = load i32, i32* %from.addr, align 4
  %222 = load %struct.viewport*, %struct.viewport** %lvp, align 8
  %v_xe253 = getelementptr inbounds %struct.viewport, %struct.viewport* %222, i32 0, i32 5
  %223 = load i32, i32* %v_xe253, align 4
  call void @DisplayLine(%struct.mline* @mline_null, %struct.mline* @mline_blank, i32 %220, i32 %221, i32 %223)
  br label %if.end.254

if.end.254:                                       ; preds = %if.then.252, %if.then.250
  %224 = load %struct.viewport*, %struct.viewport** %lvp, align 8
  %v_xe255 = getelementptr inbounds %struct.viewport, %struct.viewport* %224, i32 0, i32 5
  %225 = load i32, i32* %v_xe255, align 4
  %add256 = add nsw i32 %225, 1
  store i32 %add256, i32* %from.addr, align 4
  br label %while.cond

if.end.257:                                       ; preds = %lor.lhs.false.243
  %226 = load i32, i32* %xx, align 4
  %227 = load %struct.viewport*, %struct.viewport** %lvp, align 8
  %v_xoff258 = getelementptr inbounds %struct.viewport, %struct.viewport* %227, i32 0, i32 2
  %228 = load i32, i32* %v_xoff258, align 4
  %sub259 = sub nsw i32 %226, %228
  %229 = load %struct.canvas*, %struct.canvas** %lcv, align 8
  %c_layer260 = getelementptr inbounds %struct.canvas, %struct.canvas* %229, i32 0, i32 9
  %230 = load %struct.layer*, %struct.layer** %c_layer260, align 8
  %l_width261 = getelementptr inbounds %struct.layer, %struct.layer* %230, i32 0, i32 1
  %231 = load i32, i32* %l_width261, align 4
  %cmp262 = icmp sge i32 %sub259, %231
  br i1 %cmp262, label %if.then.264, label %if.end.270

if.then.264:                                      ; preds = %if.end.257
  %232 = load %struct.canvas*, %struct.canvas** %lcv, align 8
  %c_layer265 = getelementptr inbounds %struct.canvas, %struct.canvas* %232, i32 0, i32 9
  %233 = load %struct.layer*, %struct.layer** %c_layer265, align 8
  %l_width266 = getelementptr inbounds %struct.layer, %struct.layer* %233, i32 0, i32 1
  %234 = load i32, i32* %l_width266, align 4
  %235 = load %struct.viewport*, %struct.viewport** %lvp, align 8
  %v_xoff267 = getelementptr inbounds %struct.viewport, %struct.viewport* %235, i32 0, i32 2
  %236 = load i32, i32* %v_xoff267, align 4
  %add268 = add nsw i32 %234, %236
  %sub269 = sub nsw i32 %add268, 1
  store i32 %sub269, i32* %xx, align 4
  br label %if.end.270

if.end.270:                                       ; preds = %if.then.264, %if.end.257
  %237 = load %struct.layer*, %struct.layer** @flayer, align 8
  store %struct.layer* %237, %struct.layer** %oldflayer, align 8
  %238 = load %struct.canvas*, %struct.canvas** %lcv, align 8
  %c_layer271 = getelementptr inbounds %struct.canvas, %struct.canvas* %238, i32 0, i32 9
  %239 = load %struct.layer*, %struct.layer** %c_layer271, align 8
  store %struct.layer* %239, %struct.layer** @flayer, align 8
  %240 = load %struct.layer*, %struct.layer** @flayer, align 8
  %l_cvlist = getelementptr inbounds %struct.layer, %struct.layer* %240, i32 0, i32 0
  %241 = load %struct.canvas*, %struct.canvas** %l_cvlist, align 8
  store %struct.canvas* %241, %struct.canvas** %cvlist, align 8
  %242 = load %struct.canvas*, %struct.canvas** %lcv, align 8
  %c_lnext = getelementptr inbounds %struct.canvas, %struct.canvas* %242, i32 0, i32 10
  %243 = load %struct.canvas*, %struct.canvas** %c_lnext, align 8
  store %struct.canvas* %243, %struct.canvas** %cvlnext, align 8
  %244 = load %struct.canvas*, %struct.canvas** %lcv, align 8
  %245 = load %struct.layer*, %struct.layer** @flayer, align 8
  %l_cvlist272 = getelementptr inbounds %struct.layer, %struct.layer* %245, i32 0, i32 0
  store %struct.canvas* %244, %struct.canvas** %l_cvlist272, align 8
  %246 = load %struct.canvas*, %struct.canvas** %lcv, align 8
  %c_lnext273 = getelementptr inbounds %struct.canvas, %struct.canvas* %246, i32 0, i32 10
  store %struct.canvas* null, %struct.canvas** %c_lnext273, align 8
  %247 = load %struct.layer*, %struct.layer** @flayer, align 8
  %l_layfn = getelementptr inbounds %struct.layer, %struct.layer* %247, i32 0, i32 6
  %248 = load %struct.LayFuncs*, %struct.LayFuncs** %l_layfn, align 8
  %lf_LayRedisplayLine = getelementptr inbounds %struct.LayFuncs, %struct.LayFuncs* %248, i32 0, i32 2
  %249 = load void (i32, i32, i32, i32)*, void (i32, i32, i32, i32)** %lf_LayRedisplayLine, align 8
  %250 = load i32, i32* %yy, align 4
  %251 = load i32, i32* %from.addr, align 4
  %252 = load %struct.viewport*, %struct.viewport** %lvp, align 8
  %v_xoff274 = getelementptr inbounds %struct.viewport, %struct.viewport* %252, i32 0, i32 2
  %253 = load i32, i32* %v_xoff274, align 4
  %sub275 = sub nsw i32 %251, %253
  %254 = load i32, i32* %xx, align 4
  %255 = load %struct.viewport*, %struct.viewport** %lvp, align 8
  %v_xoff276 = getelementptr inbounds %struct.viewport, %struct.viewport* %255, i32 0, i32 2
  %256 = load i32, i32* %v_xoff276, align 4
  %sub277 = sub nsw i32 %254, %256
  %257 = load i32, i32* %isblank.addr, align 4
  call void %249(i32 %250, i32 %sub275, i32 %sub277, i32 %257)
  %258 = load %struct.canvas*, %struct.canvas** %cvlist, align 8
  %259 = load %struct.layer*, %struct.layer** @flayer, align 8
  %l_cvlist278 = getelementptr inbounds %struct.layer, %struct.layer* %259, i32 0, i32 0
  store %struct.canvas* %258, %struct.canvas** %l_cvlist278, align 8
  %260 = load %struct.canvas*, %struct.canvas** %cvlnext, align 8
  %261 = load %struct.canvas*, %struct.canvas** %lcv, align 8
  %c_lnext279 = getelementptr inbounds %struct.canvas, %struct.canvas* %261, i32 0, i32 10
  store %struct.canvas* %260, %struct.canvas** %c_lnext279, align 8
  %262 = load %struct.layer*, %struct.layer** %oldflayer, align 8
  store %struct.layer* %262, %struct.layer** @flayer, align 8
  %263 = load i32, i32* %xx, align 4
  %add280 = add nsw i32 %263, 1
  store i32 %add280, i32* %from.addr, align 4
  br label %while.cond

while.end.281:                                    ; preds = %if.then.178, %while.cond
  %264 = load i32, i32* %isblank.addr, align 4
  %tobool282 = icmp ne i32 %264, 0
  br i1 %tobool282, label %if.end.287, label %land.lhs.true.283

land.lhs.true.283:                                ; preds = %while.end.281
  %265 = load i32, i32* %from.addr, align 4
  %266 = load i32, i32* %to.addr, align 4
  %cmp284 = icmp sle i32 %265, %266
  br i1 %cmp284, label %if.then.286, label %if.end.287

if.then.286:                                      ; preds = %land.lhs.true.283
  %267 = load i32, i32* %y.addr, align 4
  %268 = load i32, i32* %from.addr, align 4
  %269 = load i32, i32* %to.addr, align 4
  call void @DisplayLine(%struct.mline* @mline_null, %struct.mline* @mline_blank, i32 %267, i32 %268, i32 %269)
  br label %if.end.287

if.end.287:                                       ; preds = %if.end, %if.then.44, %if.then.286, %land.lhs.true.283, %while.end.281
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @INSERTCHAR(i32 %c) #0 {
entry:
  %c.addr = alloca i32, align 4
  store i32 %c, i32* %c.addr, align 4
  br label %do.body

do.body:                                          ; preds = %entry
  br label %do.end

do.end:                                           ; preds = %do.body
  %0 = load %struct.display*, %struct.display** @display, align 8
  %d_insert = getelementptr inbounds %struct.display, %struct.display* %0, i32 0, i32 31
  %1 = load i32, i32* %d_insert, align 4
  %tobool = icmp ne i32 %1, 0
  br i1 %tobool, label %if.end.26, label %land.lhs.true

land.lhs.true:                                    ; preds = %do.end
  %2 = load %struct.display*, %struct.display** @display, align 8
  %d_x = getelementptr inbounds %struct.display, %struct.display* %2, i32 0, i32 22
  %3 = load i32, i32* %d_x, align 4
  %4 = load %struct.display*, %struct.display** @display, align 8
  %d_width = getelementptr inbounds %struct.display, %struct.display* %4, i32 0, i32 16
  %5 = load i32, i32* %d_width, align 4
  %sub = sub nsw i32 %5, 1
  %cmp = icmp slt i32 %3, %sub
  br i1 %cmp, label %if.then, label %if.end.26

if.then:                                          ; preds = %land.lhs.true
  %6 = load %struct.display*, %struct.display** @display, align 8
  %d_tcs = getelementptr inbounds %struct.display, %struct.display* %6, i32 0, i32 83
  %arrayidx = getelementptr inbounds [201 x %union.tcu], [201 x %union.tcu]* %d_tcs, i32 0, i64 29
  %str = bitcast %union.tcu* %arrayidx to i8**
  %7 = load i8*, i8** %str, align 8
  %tobool1 = icmp ne i8* %7, null
  br i1 %tobool1, label %if.then.6, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.then
  %8 = load %struct.display*, %struct.display** @display, align 8
  %d_tcs2 = getelementptr inbounds %struct.display, %struct.display* %8, i32 0, i32 83
  %arrayidx3 = getelementptr inbounds [201 x %union.tcu], [201 x %union.tcu]* %d_tcs2, i32 0, i64 30
  %str4 = bitcast %union.tcu* %arrayidx3 to i8**
  %9 = load i8*, i8** %str4, align 8
  %tobool5 = icmp ne i8* %9, null
  br i1 %tobool5, label %if.then.6, label %if.end.18

if.then.6:                                        ; preds = %lor.lhs.false, %if.then
  %10 = load %struct.display*, %struct.display** @display, align 8
  %d_tcs7 = getelementptr inbounds %struct.display, %struct.display* %10, i32 0, i32 83
  %arrayidx8 = getelementptr inbounds [201 x %union.tcu], [201 x %union.tcu]* %d_tcs7, i32 0, i64 29
  %str9 = bitcast %union.tcu* %arrayidx8 to i8**
  %11 = load i8*, i8** %str9, align 8
  %tobool10 = icmp ne i8* %11, null
  br i1 %tobool10, label %if.then.11, label %if.else

if.then.11:                                       ; preds = %if.then.6
  %12 = load %struct.display*, %struct.display** @display, align 8
  %d_tcs12 = getelementptr inbounds %struct.display, %struct.display* %12, i32 0, i32 83
  %arrayidx13 = getelementptr inbounds [201 x %union.tcu], [201 x %union.tcu]* %d_tcs12, i32 0, i64 29
  %str14 = bitcast %union.tcu* %arrayidx13 to i8**
  %13 = load i8*, i8** %str14, align 8
  call void @AddCStr(i8* %13)
  br label %if.end

if.else:                                          ; preds = %if.then.6
  %14 = load %struct.display*, %struct.display** @display, align 8
  %d_tcs15 = getelementptr inbounds %struct.display, %struct.display* %14, i32 0, i32 83
  %arrayidx16 = getelementptr inbounds [201 x %union.tcu], [201 x %union.tcu]* %d_tcs15, i32 0, i64 30
  %str17 = bitcast %union.tcu* %arrayidx16 to i8**
  %15 = load i8*, i8** %str17, align 8
  call void @AddCStr2(i8* %15, i32 1)
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then.11
  %16 = load i32, i32* %c.addr, align 4
  call void @RAW_PUTCHAR(i32 %16)
  br label %return

if.end.18:                                        ; preds = %lor.lhs.false
  call void @InsertMode(i32 1)
  %17 = load %struct.display*, %struct.display** @display, align 8
  %d_insert19 = getelementptr inbounds %struct.display, %struct.display* %17, i32 0, i32 31
  %18 = load i32, i32* %d_insert19, align 4
  %tobool20 = icmp ne i32 %18, 0
  br i1 %tobool20, label %if.end.25, label %if.then.21

if.then.21:                                       ; preds = %if.end.18
  %19 = load %struct.display*, %struct.display** @display, align 8
  %d_y = getelementptr inbounds %struct.display, %struct.display* %19, i32 0, i32 23
  %20 = load i32, i32* %d_y, align 4
  %21 = load %struct.display*, %struct.display** @display, align 8
  %d_x22 = getelementptr inbounds %struct.display, %struct.display* %21, i32 0, i32 22
  %22 = load i32, i32* %d_x22, align 4
  %23 = load %struct.display*, %struct.display** @display, align 8
  %d_width23 = getelementptr inbounds %struct.display, %struct.display* %23, i32 0, i32 16
  %24 = load i32, i32* %d_width23, align 4
  %sub24 = sub nsw i32 %24, 1
  call void @RefreshLine(i32 %20, i32 %22, i32 %sub24, i32 0)
  br label %return

if.end.25:                                        ; preds = %if.end.18
  br label %if.end.26

if.end.26:                                        ; preds = %if.end.25, %land.lhs.true, %do.end
  %25 = load i32, i32* %c.addr, align 4
  call void @RAW_PUTCHAR(i32 %25)
  br label %return

return:                                           ; preds = %if.end.26, %if.then.21, %if.end
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @WriteLP(i32 %x2, i32 %y2) #0 {
entry:
  %x2.addr = alloca i32, align 4
  %y2.addr = alloca i32, align 4
  %oldrend = alloca %struct.mchar, align 1
  store i32 %x2, i32* %x2.addr, align 4
  store i32 %y2, i32* %y2.addr, align 4
  br label %do.body

do.body:                                          ; preds = %entry
  br label %do.end

do.end:                                           ; preds = %do.body
  br label %do.body.1

do.body.1:                                        ; preds = %do.end
  br label %do.end.2

do.end.2:                                         ; preds = %do.body.1
  %0 = load %struct.display*, %struct.display** @display, align 8
  %d_rend = getelementptr inbounds %struct.display, %struct.display* %0, i32 0, i32 24
  %1 = bitcast %struct.mchar* %oldrend to i8*
  %2 = bitcast %struct.mchar* %d_rend to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %1, i8* %2, i64 6, i32 1, i1 false)
  br label %do.body.3

do.body.3:                                        ; preds = %do.end.2
  br label %do.end.4

do.end.4:                                         ; preds = %do.body.3
  %3 = load %struct.display*, %struct.display** @display, align 8
  %d_lpchar = getelementptr inbounds %struct.display, %struct.display* %3, i32 0, i32 41
  %mbcs = getelementptr inbounds %struct.mchar, %struct.mchar* %d_lpchar, i32 0, i32 5
  %4 = load i8, i8* %mbcs, align 1
  %tobool = icmp ne i8 %4, 0
  br i1 %tobool, label %if.then, label %if.end.7

if.then:                                          ; preds = %do.end.4
  %5 = load i32, i32* %x2.addr, align 4
  %cmp = icmp sgt i32 %5, 0
  br i1 %cmp, label %if.then.5, label %if.else

if.then.5:                                        ; preds = %if.then
  %6 = load i32, i32* %x2.addr, align 4
  %dec = add nsw i32 %6, -1
  store i32 %dec, i32* %x2.addr, align 4
  br label %if.end

if.else:                                          ; preds = %if.then
  %7 = load %struct.display*, %struct.display** @display, align 8
  %d_lpchar6 = getelementptr inbounds %struct.display, %struct.display* %7, i32 0, i32 41
  %8 = bitcast %struct.mchar* %d_lpchar6 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %8, i8* getelementptr inbounds (%struct.mchar, %struct.mchar* @mchar_blank, i32 0, i32 0), i64 6, i32 1, i1 false)
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then.5
  br label %if.end.7

if.end.7:                                         ; preds = %if.end, %do.end.4
  %9 = load i32, i32* %x2.addr, align 4
  %10 = load i32, i32* %y2.addr, align 4
  call void @GotoPos(i32 %9, i32 %10)
  %11 = load %struct.display*, %struct.display** @display, align 8
  %d_lpchar8 = getelementptr inbounds %struct.display, %struct.display* %11, i32 0, i32 41
  call void @SetRendition(%struct.mchar* %d_lpchar8)
  %12 = load %struct.display*, %struct.display** @display, align 8
  %d_lpchar9 = getelementptr inbounds %struct.display, %struct.display* %12, i32 0, i32 41
  %image = getelementptr inbounds %struct.mchar, %struct.mchar* %d_lpchar9, i32 0, i32 0
  %13 = load i8, i8* %image, align 1
  %conv = zext i8 %13 to i32
  call void @PUTCHAR(i32 %conv)
  %14 = load %struct.display*, %struct.display** @display, align 8
  %d_lpchar10 = getelementptr inbounds %struct.display, %struct.display* %14, i32 0, i32 41
  %mbcs11 = getelementptr inbounds %struct.mchar, %struct.mchar* %d_lpchar10, i32 0, i32 5
  %15 = load i8, i8* %mbcs11, align 1
  %tobool12 = icmp ne i8 %15, 0
  br i1 %tobool12, label %if.then.13, label %if.end.17

if.then.13:                                       ; preds = %if.end.7
  %16 = load %struct.display*, %struct.display** @display, align 8
  %d_lpchar14 = getelementptr inbounds %struct.display, %struct.display* %16, i32 0, i32 41
  %mbcs15 = getelementptr inbounds %struct.mchar, %struct.mchar* %d_lpchar14, i32 0, i32 5
  %17 = load i8, i8* %mbcs15, align 1
  %conv16 = zext i8 %17 to i32
  call void @PUTCHAR(i32 %conv16)
  br label %if.end.17

if.end.17:                                        ; preds = %if.then.13, %if.end.7
  %18 = load %struct.display*, %struct.display** @display, align 8
  %d_lp_missing = getelementptr inbounds %struct.display, %struct.display* %18, i32 0, i32 38
  store i32 0, i32* %d_lp_missing, align 4
  call void @SetRendition(%struct.mchar* %oldrend)
  ret void
}

; Function Attrs: nounwind uwtable
define void @ScrollV(i32 %xs, i32 %ys, i32 %xe, i32 %ye, i32 %n, i32 %bce) #0 {
entry:
  %xs.addr = alloca i32, align 4
  %ys.addr = alloca i32, align 4
  %xe.addr = alloca i32, align 4
  %ye.addr = alloca i32, align 4
  %n.addr = alloca i32, align 4
  %bce.addr = alloca i32, align 4
  %i = alloca i32, align 4
  %up = alloca i32, align 4
  %oldtop = alloca i32, align 4
  %oldbot = alloca i32, align 4
  %alok = alloca i32, align 4
  %dlok = alloca i32, align 4
  %aldlfaster = alloca i32, align 4
  %missy = alloca i32, align 4
  store i32 %xs, i32* %xs.addr, align 4
  store i32 %ys, i32* %ys.addr, align 4
  store i32 %xe, i32* %xe.addr, align 4
  store i32 %ye, i32* %ye.addr, align 4
  store i32 %n, i32* %n.addr, align 4
  store i32 %bce, i32* %bce.addr, align 4
  store i32 0, i32* %missy, align 4
  br label %do.body

do.body:                                          ; preds = %entry
  br label %do.end

do.end:                                           ; preds = %do.body
  %0 = load i32, i32* %n.addr, align 4
  %cmp = icmp eq i32 %0, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %do.end
  br label %if.end.294

if.end:                                           ; preds = %do.end
  %1 = load i32, i32* %n.addr, align 4
  %2 = load i32, i32* %ye.addr, align 4
  %3 = load i32, i32* %ys.addr, align 4
  %sub = sub nsw i32 %2, %3
  %add = add nsw i32 %sub, 1
  %cmp1 = icmp sge i32 %1, %add
  br i1 %cmp1, label %if.then.6, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.end
  %4 = load i32, i32* %n.addr, align 4
  %sub2 = sub nsw i32 0, %4
  %5 = load i32, i32* %ye.addr, align 4
  %6 = load i32, i32* %ys.addr, align 4
  %sub3 = sub nsw i32 %5, %6
  %add4 = add nsw i32 %sub3, 1
  %cmp5 = icmp sge i32 %sub2, %add4
  br i1 %cmp5, label %if.then.6, label %if.end.7

if.then.6:                                        ; preds = %lor.lhs.false, %if.end
  %7 = load i32, i32* %xs.addr, align 4
  %8 = load i32, i32* %ys.addr, align 4
  %9 = load i32, i32* %xs.addr, align 4
  %10 = load i32, i32* %xe.addr, align 4
  %11 = load i32, i32* %xe.addr, align 4
  %12 = load i32, i32* %ye.addr, align 4
  %13 = load i32, i32* %bce.addr, align 4
  call void @ClearArea(i32 %7, i32 %8, i32 %9, i32 %10, i32 %11, i32 %12, i32 %13, i32 0)
  br label %if.end.294

if.end.7:                                         ; preds = %lor.lhs.false
  %14 = load i32, i32* %xs.addr, align 4
  %15 = load %struct.display*, %struct.display** @display, align 8
  %d_vpxmin = getelementptr inbounds %struct.display, %struct.display* %15, i32 0, i32 8
  %16 = load i32, i32* %d_vpxmin, align 4
  %cmp8 = icmp sgt i32 %14, %16
  br i1 %cmp8, label %if.then.11, label %lor.lhs.false.9

lor.lhs.false.9:                                  ; preds = %if.end.7
  %17 = load i32, i32* %xe.addr, align 4
  %18 = load %struct.display*, %struct.display** @display, align 8
  %d_vpxmax = getelementptr inbounds %struct.display, %struct.display* %18, i32 0, i32 9
  %19 = load i32, i32* %d_vpxmax, align 4
  %cmp10 = icmp slt i32 %17, %19
  br i1 %cmp10, label %if.then.11, label %if.end.12

if.then.11:                                       ; preds = %lor.lhs.false.9, %if.end.7
  %20 = load i32, i32* %xs.addr, align 4
  %21 = load i32, i32* %ys.addr, align 4
  %22 = load i32, i32* %xe.addr, align 4
  %23 = load i32, i32* %ye.addr, align 4
  call void @RefreshArea(i32 %20, i32 %21, i32 %22, i32 %23, i32 0)
  br label %if.end.294

if.end.12:                                        ; preds = %lor.lhs.false.9
  %24 = load %struct.display*, %struct.display** @display, align 8
  %d_lp_missing = getelementptr inbounds %struct.display, %struct.display* %24, i32 0, i32 38
  %25 = load i32, i32* %d_lp_missing, align 4
  %tobool = icmp ne i32 %25, 0
  br i1 %tobool, label %if.then.13, label %if.end.29

if.then.13:                                       ; preds = %if.end.12
  %26 = load %struct.display*, %struct.display** @display, align 8
  %d_bot = getelementptr inbounds %struct.display, %struct.display* %26, i32 0, i32 21
  %27 = load i32, i32* %d_bot, align 4
  %28 = load i32, i32* %ye.addr, align 4
  %cmp14 = icmp sgt i32 %27, %28
  br i1 %cmp14, label %if.then.18, label %lor.lhs.false.15

lor.lhs.false.15:                                 ; preds = %if.then.13
  %29 = load %struct.display*, %struct.display** @display, align 8
  %d_bot16 = getelementptr inbounds %struct.display, %struct.display* %29, i32 0, i32 21
  %30 = load i32, i32* %d_bot16, align 4
  %31 = load i32, i32* %ys.addr, align 4
  %cmp17 = icmp slt i32 %30, %31
  br i1 %cmp17, label %if.then.18, label %if.else

if.then.18:                                       ; preds = %lor.lhs.false.15, %if.then.13
  %32 = load %struct.display*, %struct.display** @display, align 8
  %d_bot19 = getelementptr inbounds %struct.display, %struct.display* %32, i32 0, i32 21
  %33 = load i32, i32* %d_bot19, align 4
  store i32 %33, i32* %missy, align 4
  br label %if.end.28

if.else:                                          ; preds = %lor.lhs.false.15
  %34 = load %struct.display*, %struct.display** @display, align 8
  %d_bot20 = getelementptr inbounds %struct.display, %struct.display* %34, i32 0, i32 21
  %35 = load i32, i32* %d_bot20, align 4
  %36 = load i32, i32* %n.addr, align 4
  %sub21 = sub nsw i32 %35, %36
  store i32 %sub21, i32* %missy, align 4
  %37 = load i32, i32* %missy, align 4
  %38 = load i32, i32* %ye.addr, align 4
  %cmp22 = icmp sgt i32 %37, %38
  br i1 %cmp22, label %if.then.25, label %lor.lhs.false.23

lor.lhs.false.23:                                 ; preds = %if.else
  %39 = load i32, i32* %missy, align 4
  %40 = load i32, i32* %ys.addr, align 4
  %cmp24 = icmp slt i32 %39, %40
  br i1 %cmp24, label %if.then.25, label %if.end.27

if.then.25:                                       ; preds = %lor.lhs.false.23, %if.else
  %41 = load %struct.display*, %struct.display** @display, align 8
  %d_lp_missing26 = getelementptr inbounds %struct.display, %struct.display* %41, i32 0, i32 38
  store i32 0, i32* %d_lp_missing26, align 4
  br label %if.end.27

if.end.27:                                        ; preds = %if.then.25, %lor.lhs.false.23
  br label %if.end.28

if.end.28:                                        ; preds = %if.end.27, %if.then.18
  br label %if.end.29

if.end.29:                                        ; preds = %if.end.28, %if.end.12
  store i32 1, i32* %up, align 4
  %42 = load i32, i32* %n.addr, align 4
  %cmp30 = icmp slt i32 %42, 0
  br i1 %cmp30, label %if.then.31, label %if.end.33

if.then.31:                                       ; preds = %if.end.29
  store i32 0, i32* %up, align 4
  %43 = load i32, i32* %n.addr, align 4
  %sub32 = sub nsw i32 0, %43
  store i32 %sub32, i32* %n.addr, align 4
  br label %if.end.33

if.end.33:                                        ; preds = %if.then.31, %if.end.29
  %44 = load i32, i32* %n.addr, align 4
  %45 = load i32, i32* %ye.addr, align 4
  %46 = load i32, i32* %ys.addr, align 4
  %sub34 = sub nsw i32 %45, %46
  %add35 = add nsw i32 %sub34, 1
  %cmp36 = icmp sge i32 %44, %add35
  br i1 %cmp36, label %if.then.37, label %if.end.40

if.then.37:                                       ; preds = %if.end.33
  %47 = load i32, i32* %ye.addr, align 4
  %48 = load i32, i32* %ys.addr, align 4
  %sub38 = sub nsw i32 %47, %48
  %add39 = add nsw i32 %sub38, 1
  store i32 %add39, i32* %n.addr, align 4
  br label %if.end.40

if.end.40:                                        ; preds = %if.then.37, %if.end.33
  %49 = load %struct.display*, %struct.display** @display, align 8
  %d_top = getelementptr inbounds %struct.display, %struct.display* %49, i32 0, i32 20
  %50 = load i32, i32* %d_top, align 4
  store i32 %50, i32* %oldtop, align 4
  %51 = load %struct.display*, %struct.display** @display, align 8
  %d_bot41 = getelementptr inbounds %struct.display, %struct.display* %51, i32 0, i32 21
  %52 = load i32, i32* %d_bot41, align 4
  store i32 %52, i32* %oldbot, align 4
  %53 = load i32, i32* %ys.addr, align 4
  %54 = load %struct.display*, %struct.display** @display, align 8
  %d_top42 = getelementptr inbounds %struct.display, %struct.display* %54, i32 0, i32 20
  %55 = load i32, i32* %d_top42, align 4
  %cmp43 = icmp slt i32 %53, %55
  br i1 %cmp43, label %if.then.47, label %lor.lhs.false.44

lor.lhs.false.44:                                 ; preds = %if.end.40
  %56 = load %struct.display*, %struct.display** @display, align 8
  %d_bot45 = getelementptr inbounds %struct.display, %struct.display* %56, i32 0, i32 21
  %57 = load i32, i32* %d_bot45, align 4
  %58 = load i32, i32* %ye.addr, align 4
  %cmp46 = icmp ne i32 %57, %58
  br i1 %cmp46, label %if.then.47, label %if.end.48

if.then.47:                                       ; preds = %lor.lhs.false.44, %if.end.40
  %59 = load i32, i32* %ys.addr, align 4
  %60 = load i32, i32* %ye.addr, align 4
  call void @ChangeScrollRegion(i32 %59, i32 %60)
  br label %if.end.48

if.end.48:                                        ; preds = %if.then.47, %lor.lhs.false.44
  %61 = load %struct.display*, %struct.display** @display, align 8
  %d_tcs = getelementptr inbounds %struct.display, %struct.display* %61, i32 0, i32 83
  %arrayidx = getelementptr inbounds [201 x %union.tcu], [201 x %union.tcu]* %d_tcs, i32 0, i64 22
  %str = bitcast %union.tcu* %arrayidx to i8**
  %62 = load i8*, i8** %str, align 8
  %tobool49 = icmp ne i8* %62, null
  br i1 %tobool49, label %lor.end, label %lor.lhs.false.50

lor.lhs.false.50:                                 ; preds = %if.end.48
  %63 = load %struct.display*, %struct.display** @display, align 8
  %d_tcs51 = getelementptr inbounds %struct.display, %struct.display* %63, i32 0, i32 83
  %arrayidx52 = getelementptr inbounds [201 x %union.tcu], [201 x %union.tcu]* %d_tcs51, i32 0, i64 23
  %str53 = bitcast %union.tcu* %arrayidx52 to i8**
  %64 = load i8*, i8** %str53, align 8
  %tobool54 = icmp ne i8* %64, null
  br i1 %tobool54, label %lor.end, label %lor.rhs

lor.rhs:                                          ; preds = %lor.lhs.false.50
  %65 = load i32, i32* %ys.addr, align 4
  %66 = load %struct.display*, %struct.display** @display, align 8
  %d_top55 = getelementptr inbounds %struct.display, %struct.display* %66, i32 0, i32 20
  %67 = load i32, i32* %d_top55, align 4
  %cmp56 = icmp sge i32 %65, %67
  br i1 %cmp56, label %land.lhs.true, label %land.end

land.lhs.true:                                    ; preds = %lor.rhs
  %68 = load i32, i32* %ye.addr, align 4
  %69 = load %struct.display*, %struct.display** @display, align 8
  %d_bot57 = getelementptr inbounds %struct.display, %struct.display* %69, i32 0, i32 21
  %70 = load i32, i32* %d_bot57, align 4
  %cmp58 = icmp eq i32 %68, %70
  br i1 %cmp58, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %land.lhs.true
  %71 = load i32, i32* %up, align 4
  %tobool59 = icmp ne i32 %71, 0
  br label %land.end

land.end:                                         ; preds = %land.rhs, %land.lhs.true, %lor.rhs
  %72 = phi i1 [ false, %land.lhs.true ], [ false, %lor.rhs ], [ %tobool59, %land.rhs ]
  br label %lor.end

lor.end:                                          ; preds = %land.end, %lor.lhs.false.50, %if.end.48
  %73 = phi i1 [ true, %lor.lhs.false.50 ], [ true, %if.end.48 ], [ %72, %land.end ]
  %lor.ext = zext i1 %73 to i32
  store i32 %lor.ext, i32* %alok, align 4
  %74 = load %struct.display*, %struct.display** @display, align 8
  %d_tcs60 = getelementptr inbounds %struct.display, %struct.display* %74, i32 0, i32 83
  %arrayidx61 = getelementptr inbounds [201 x %union.tcu], [201 x %union.tcu]* %d_tcs60, i32 0, i64 24
  %str62 = bitcast %union.tcu* %arrayidx61 to i8**
  %75 = load i8*, i8** %str62, align 8
  %tobool63 = icmp ne i8* %75, null
  br i1 %tobool63, label %lor.end.78, label %lor.lhs.false.64

lor.lhs.false.64:                                 ; preds = %lor.end
  %76 = load %struct.display*, %struct.display** @display, align 8
  %d_tcs65 = getelementptr inbounds %struct.display, %struct.display* %76, i32 0, i32 83
  %arrayidx66 = getelementptr inbounds [201 x %union.tcu], [201 x %union.tcu]* %d_tcs65, i32 0, i64 25
  %str67 = bitcast %union.tcu* %arrayidx66 to i8**
  %77 = load i8*, i8** %str67, align 8
  %tobool68 = icmp ne i8* %77, null
  br i1 %tobool68, label %lor.end.78, label %lor.rhs.69

lor.rhs.69:                                       ; preds = %lor.lhs.false.64
  %78 = load i32, i32* %ys.addr, align 4
  %79 = load %struct.display*, %struct.display** @display, align 8
  %d_top70 = getelementptr inbounds %struct.display, %struct.display* %79, i32 0, i32 20
  %80 = load i32, i32* %d_top70, align 4
  %cmp71 = icmp sge i32 %78, %80
  br i1 %cmp71, label %land.lhs.true.72, label %land.end.77

land.lhs.true.72:                                 ; preds = %lor.rhs.69
  %81 = load i32, i32* %ye.addr, align 4
  %82 = load %struct.display*, %struct.display** @display, align 8
  %d_bot73 = getelementptr inbounds %struct.display, %struct.display* %82, i32 0, i32 21
  %83 = load i32, i32* %d_bot73, align 4
  %cmp74 = icmp eq i32 %81, %83
  br i1 %cmp74, label %land.rhs.75, label %land.end.77

land.rhs.75:                                      ; preds = %land.lhs.true.72
  %84 = load i32, i32* %up, align 4
  %tobool76 = icmp ne i32 %84, 0
  %lnot = xor i1 %tobool76, true
  br label %land.end.77

land.end.77:                                      ; preds = %land.rhs.75, %land.lhs.true.72, %lor.rhs.69
  %85 = phi i1 [ false, %land.lhs.true.72 ], [ false, %lor.rhs.69 ], [ %lnot, %land.rhs.75 ]
  br label %lor.end.78

lor.end.78:                                       ; preds = %land.end.77, %lor.lhs.false.64, %lor.end
  %86 = phi i1 [ true, %lor.lhs.false.64 ], [ true, %lor.end ], [ %85, %land.end.77 ]
  %lor.ext79 = zext i1 %86 to i32
  store i32 %lor.ext79, i32* %dlok, align 4
  %87 = load %struct.display*, %struct.display** @display, align 8
  %d_top80 = getelementptr inbounds %struct.display, %struct.display* %87, i32 0, i32 20
  %88 = load i32, i32* %d_top80, align 4
  %89 = load i32, i32* %ys.addr, align 4
  %cmp81 = icmp ne i32 %88, %89
  br i1 %cmp81, label %land.lhs.true.82, label %if.end.87

land.lhs.true.82:                                 ; preds = %lor.end.78
  %90 = load i32, i32* %alok, align 4
  %tobool83 = icmp ne i32 %90, 0
  br i1 %tobool83, label %land.lhs.true.84, label %if.then.86

land.lhs.true.84:                                 ; preds = %land.lhs.true.82
  %91 = load i32, i32* %dlok, align 4
  %tobool85 = icmp ne i32 %91, 0
  br i1 %tobool85, label %if.end.87, label %if.then.86

if.then.86:                                       ; preds = %land.lhs.true.84, %land.lhs.true.82
  %92 = load i32, i32* %ys.addr, align 4
  %93 = load i32, i32* %ye.addr, align 4
  call void @ChangeScrollRegion(i32 %92, i32 %93)
  br label %if.end.87

if.end.87:                                        ; preds = %if.then.86, %land.lhs.true.84, %lor.end.78
  %94 = load %struct.display*, %struct.display** @display, align 8
  %d_lp_missing88 = getelementptr inbounds %struct.display, %struct.display* %94, i32 0, i32 38
  %95 = load i32, i32* %d_lp_missing88, align 4
  %tobool89 = icmp ne i32 %95, 0
  br i1 %tobool89, label %land.lhs.true.90, label %if.end.120

land.lhs.true.90:                                 ; preds = %if.end.87
  %96 = load i32, i32* %oldbot, align 4
  %97 = load %struct.display*, %struct.display** @display, align 8
  %d_bot91 = getelementptr inbounds %struct.display, %struct.display* %97, i32 0, i32 21
  %98 = load i32, i32* %d_bot91, align 4
  %cmp92 = icmp ne i32 %96, %98
  br i1 %cmp92, label %if.then.104, label %lor.lhs.false.93

lor.lhs.false.93:                                 ; preds = %land.lhs.true.90
  %99 = load i32, i32* %oldbot, align 4
  %100 = load %struct.display*, %struct.display** @display, align 8
  %d_bot94 = getelementptr inbounds %struct.display, %struct.display* %100, i32 0, i32 21
  %101 = load i32, i32* %d_bot94, align 4
  %cmp95 = icmp eq i32 %99, %101
  br i1 %cmp95, label %land.lhs.true.96, label %if.end.120

land.lhs.true.96:                                 ; preds = %lor.lhs.false.93
  %102 = load i32, i32* %up, align 4
  %tobool97 = icmp ne i32 %102, 0
  br i1 %tobool97, label %land.lhs.true.98, label %if.end.120

land.lhs.true.98:                                 ; preds = %land.lhs.true.96
  %103 = load %struct.display*, %struct.display** @display, align 8
  %d_top99 = getelementptr inbounds %struct.display, %struct.display* %103, i32 0, i32 20
  %104 = load i32, i32* %d_top99, align 4
  %105 = load i32, i32* %ys.addr, align 4
  %cmp100 = icmp eq i32 %104, %105
  br i1 %cmp100, label %land.lhs.true.101, label %if.end.120

land.lhs.true.101:                                ; preds = %land.lhs.true.98
  %106 = load %struct.display*, %struct.display** @display, align 8
  %d_bot102 = getelementptr inbounds %struct.display, %struct.display* %106, i32 0, i32 21
  %107 = load i32, i32* %d_bot102, align 4
  %108 = load i32, i32* %ye.addr, align 4
  %cmp103 = icmp eq i32 %107, %108
  br i1 %cmp103, label %if.then.104, label %if.end.120

if.then.104:                                      ; preds = %land.lhs.true.101, %land.lhs.true.90
  %109 = load %struct.display*, %struct.display** @display, align 8
  %d_width = getelementptr inbounds %struct.display, %struct.display* %109, i32 0, i32 16
  %110 = load i32, i32* %d_width, align 4
  %sub105 = sub nsw i32 %110, 1
  %111 = load i32, i32* %oldbot, align 4
  call void @WriteLP(i32 %sub105, i32 %111)
  %112 = load i32, i32* %oldbot, align 4
  %113 = load %struct.display*, %struct.display** @display, align 8
  %d_bot106 = getelementptr inbounds %struct.display, %struct.display* %113, i32 0, i32 21
  %114 = load i32, i32* %d_bot106, align 4
  %cmp107 = icmp eq i32 %112, %114
  br i1 %cmp107, label %if.then.108, label %if.end.119

if.then.108:                                      ; preds = %if.then.104
  %115 = load i32, i32* %n.addr, align 4
  %dec = add nsw i32 %115, -1
  store i32 %dec, i32* %n.addr, align 4
  %cmp109 = icmp eq i32 %dec, 0
  br i1 %cmp109, label %if.then.110, label %if.end.118

if.then.110:                                      ; preds = %if.then.108
  %116 = load i32, i32* %bce.addr, align 4
  %tobool111 = icmp ne i32 %116, 0
  br i1 %tobool111, label %land.lhs.true.112, label %if.end.117

land.lhs.true.112:                                ; preds = %if.then.110
  %117 = load %struct.display*, %struct.display** @display, align 8
  %d_tcs113 = getelementptr inbounds %struct.display, %struct.display* %117, i32 0, i32 83
  %arrayidx114 = getelementptr inbounds [201 x %union.tcu], [201 x %union.tcu]* %d_tcs113, i32 0, i64 66
  %flg = bitcast %union.tcu* %arrayidx114 to i32*
  %118 = load i32, i32* %flg, align 4
  %tobool115 = icmp ne i32 %118, 0
  br i1 %tobool115, label %if.end.117, label %if.then.116

if.then.116:                                      ; preds = %land.lhs.true.112
  %119 = load i32, i32* %ye.addr, align 4
  %120 = load i32, i32* %xs.addr, align 4
  %121 = load i32, i32* %xe.addr, align 4
  %122 = load i32, i32* %bce.addr, align 4
  call void @ClearLine(%struct.mline* null, i32 %119, i32 %120, i32 %121, i32 %122)
  br label %if.end.117

if.end.117:                                       ; preds = %if.then.116, %land.lhs.true.112, %if.then.110
  br label %if.end.294

if.end.118:                                       ; preds = %if.then.108
  br label %if.end.119

if.end.119:                                       ; preds = %if.end.118, %if.then.104
  br label %if.end.120

if.end.120:                                       ; preds = %if.end.119, %land.lhs.true.101, %land.lhs.true.98, %land.lhs.true.96, %lor.lhs.false.93, %if.end.87
  %123 = load %struct.display*, %struct.display** @display, align 8
  %d_tcs121 = getelementptr inbounds %struct.display, %struct.display* %123, i32 0, i32 83
  %arrayidx122 = getelementptr inbounds [201 x %union.tcu], [201 x %union.tcu]* %d_tcs121, i32 0, i64 33
  %flg123 = bitcast %union.tcu* %arrayidx122 to i32*
  %124 = load i32, i32* %flg123, align 4
  %tobool124 = icmp ne i32 %124, 0
  br i1 %tobool124, label %if.then.125, label %if.end.126

if.then.125:                                      ; preds = %if.end.120
  call void @SetRendition(%struct.mchar* @mchar_null)
  br label %if.end.126

if.end.126:                                       ; preds = %if.then.125, %if.end.120
  %125 = load %struct.display*, %struct.display** @display, align 8
  %d_tcs127 = getelementptr inbounds %struct.display, %struct.display* %125, i32 0, i32 83
  %arrayidx128 = getelementptr inbounds [201 x %union.tcu], [201 x %union.tcu]* %d_tcs127, i32 0, i64 66
  %flg129 = bitcast %union.tcu* %arrayidx128 to i32*
  %126 = load i32, i32* %flg129, align 4
  %tobool130 = icmp ne i32 %126, 0
  br i1 %tobool130, label %if.then.131, label %if.end.132

if.then.131:                                      ; preds = %if.end.126
  %127 = load i32, i32* %bce.addr, align 4
  call void @SetBackColor(i32 %127)
  br label %if.end.132

if.end.132:                                       ; preds = %if.then.131, %if.end.126
  %128 = load i32, i32* %n.addr, align 4
  %cmp133 = icmp sgt i32 %128, 1
  br i1 %cmp133, label %land.lhs.true.134, label %land.end.157

land.lhs.true.134:                                ; preds = %if.end.132
  %129 = load i32, i32* %ys.addr, align 4
  %130 = load %struct.display*, %struct.display** @display, align 8
  %d_top135 = getelementptr inbounds %struct.display, %struct.display* %130, i32 0, i32 20
  %131 = load i32, i32* %d_top135, align 4
  %cmp136 = icmp sge i32 %129, %131
  br i1 %cmp136, label %land.lhs.true.137, label %land.end.157

land.lhs.true.137:                                ; preds = %land.lhs.true.134
  %132 = load i32, i32* %ye.addr, align 4
  %133 = load %struct.display*, %struct.display** @display, align 8
  %d_bot138 = getelementptr inbounds %struct.display, %struct.display* %133, i32 0, i32 21
  %134 = load i32, i32* %d_bot138, align 4
  %cmp139 = icmp eq i32 %132, %134
  br i1 %cmp139, label %land.rhs.140, label %land.end.157

land.rhs.140:                                     ; preds = %land.lhs.true.137
  %135 = load i32, i32* %up, align 4
  %tobool141 = icmp ne i32 %135, 0
  br i1 %tobool141, label %land.lhs.true.142, label %lor.rhs.147

land.lhs.true.142:                                ; preds = %land.rhs.140
  %136 = load %struct.display*, %struct.display** @display, align 8
  %d_tcs143 = getelementptr inbounds %struct.display, %struct.display* %136, i32 0, i32 83
  %arrayidx144 = getelementptr inbounds [201 x %union.tcu], [201 x %union.tcu]* %d_tcs143, i32 0, i64 25
  %str145 = bitcast %union.tcu* %arrayidx144 to i8**
  %137 = load i8*, i8** %str145, align 8
  %tobool146 = icmp ne i8* %137, null
  br i1 %tobool146, label %lor.end.155, label %lor.rhs.147

lor.rhs.147:                                      ; preds = %land.lhs.true.142, %land.rhs.140
  %138 = load i32, i32* %up, align 4
  %tobool148 = icmp ne i32 %138, 0
  br i1 %tobool148, label %land.end.154, label %land.rhs.149

land.rhs.149:                                     ; preds = %lor.rhs.147
  %139 = load %struct.display*, %struct.display** @display, align 8
  %d_tcs150 = getelementptr inbounds %struct.display, %struct.display* %139, i32 0, i32 83
  %arrayidx151 = getelementptr inbounds [201 x %union.tcu], [201 x %union.tcu]* %d_tcs150, i32 0, i64 23
  %str152 = bitcast %union.tcu* %arrayidx151 to i8**
  %140 = load i8*, i8** %str152, align 8
  %tobool153 = icmp ne i8* %140, null
  br label %land.end.154

land.end.154:                                     ; preds = %land.rhs.149, %lor.rhs.147
  %141 = phi i1 [ false, %lor.rhs.147 ], [ %tobool153, %land.rhs.149 ]
  br label %lor.end.155

lor.end.155:                                      ; preds = %land.end.154, %land.lhs.true.142
  %142 = phi i1 [ true, %land.lhs.true.142 ], [ %141, %land.end.154 ]
  br label %land.end.157

land.end.157:                                     ; preds = %lor.end.155, %land.lhs.true.137, %land.lhs.true.134, %if.end.132
  %143 = phi i1 [ false, %land.lhs.true.137 ], [ false, %land.lhs.true.134 ], [ false, %if.end.132 ], [ %142, %lor.end.155 ]
  %land.ext = zext i1 %143 to i32
  store i32 %land.ext, i32* %aldlfaster, align 4
  %144 = load i32, i32* %up, align 4
  %tobool158 = icmp ne i32 %144, 0
  br i1 %tobool158, label %land.lhs.true.164, label %lor.lhs.false.159

lor.lhs.false.159:                                ; preds = %land.end.157
  %145 = load %struct.display*, %struct.display** @display, align 8
  %d_tcs160 = getelementptr inbounds %struct.display, %struct.display* %145, i32 0, i32 83
  %arrayidx161 = getelementptr inbounds [201 x %union.tcu], [201 x %union.tcu]* %d_tcs160, i32 0, i64 21
  %str162 = bitcast %union.tcu* %arrayidx161 to i8**
  %146 = load i8*, i8** %str162, align 8
  %tobool163 = icmp ne i8* %146, null
  br i1 %tobool163, label %land.lhs.true.164, label %if.else.190

land.lhs.true.164:                                ; preds = %lor.lhs.false.159, %land.end.157
  %147 = load %struct.display*, %struct.display** @display, align 8
  %d_top165 = getelementptr inbounds %struct.display, %struct.display* %147, i32 0, i32 20
  %148 = load i32, i32* %d_top165, align 4
  %149 = load i32, i32* %ys.addr, align 4
  %cmp166 = icmp eq i32 %148, %149
  br i1 %cmp166, label %land.lhs.true.167, label %if.else.190

land.lhs.true.167:                                ; preds = %land.lhs.true.164
  %150 = load %struct.display*, %struct.display** @display, align 8
  %d_bot168 = getelementptr inbounds %struct.display, %struct.display* %150, i32 0, i32 21
  %151 = load i32, i32* %d_bot168, align 4
  %152 = load i32, i32* %ye.addr, align 4
  %cmp169 = icmp eq i32 %151, %152
  br i1 %cmp169, label %land.lhs.true.170, label %if.else.190

land.lhs.true.170:                                ; preds = %land.lhs.true.167
  %153 = load i32, i32* %aldlfaster, align 4
  %tobool171 = icmp ne i32 %153, 0
  br i1 %tobool171, label %if.else.190, label %if.then.172

if.then.172:                                      ; preds = %land.lhs.true.170
  %154 = load i32, i32* %up, align 4
  %tobool173 = icmp ne i32 %154, 0
  br i1 %tobool173, label %if.then.174, label %if.else.180

if.then.174:                                      ; preds = %if.then.172
  %155 = load i32, i32* %ye.addr, align 4
  call void @GotoPos(i32 0, i32 %155)
  %156 = load i32, i32* %n.addr, align 4
  store i32 %156, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.body, %if.then.174
  %157 = load i32, i32* %i, align 4
  %dec175 = add nsw i32 %157, -1
  store i32 %dec175, i32* %i, align 4
  %cmp176 = icmp sgt i32 %157, 0
  br i1 %cmp176, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %158 = load %struct.display*, %struct.display** @display, align 8
  %d_tcs177 = getelementptr inbounds %struct.display, %struct.display* %158, i32 0, i32 83
  %arrayidx178 = getelementptr inbounds [201 x %union.tcu], [201 x %union.tcu]* %d_tcs177, i32 0, i64 19
  %str179 = bitcast %union.tcu* %arrayidx178 to i8**
  %159 = load i8*, i8** %str179, align 8
  call void @AddCStr(i8* %159)
  br label %for.cond

for.end:                                          ; preds = %for.cond
  br label %if.end.189

if.else.180:                                      ; preds = %if.then.172
  %160 = load i32, i32* %ys.addr, align 4
  call void @GotoPos(i32 0, i32 %160)
  %161 = load i32, i32* %n.addr, align 4
  store i32 %161, i32* %i, align 4
  br label %for.cond.181

for.cond.181:                                     ; preds = %for.body.184, %if.else.180
  %162 = load i32, i32* %i, align 4
  %dec182 = add nsw i32 %162, -1
  store i32 %dec182, i32* %i, align 4
  %cmp183 = icmp sgt i32 %162, 0
  br i1 %cmp183, label %for.body.184, label %for.end.188

for.body.184:                                     ; preds = %for.cond.181
  %163 = load %struct.display*, %struct.display** @display, align 8
  %d_tcs185 = getelementptr inbounds %struct.display, %struct.display* %163, i32 0, i32 83
  %arrayidx186 = getelementptr inbounds [201 x %union.tcu], [201 x %union.tcu]* %d_tcs185, i32 0, i64 21
  %str187 = bitcast %union.tcu* %arrayidx186 to i8**
  %164 = load i8*, i8** %str187, align 8
  call void @AddCStr(i8* %164)
  br label %for.cond.181

for.end.188:                                      ; preds = %for.cond.181
  br label %if.end.189

if.end.189:                                       ; preds = %for.end.188, %for.end
  br label %if.end.269

if.else.190:                                      ; preds = %land.lhs.true.170, %land.lhs.true.167, %land.lhs.true.164, %lor.lhs.false.159
  %165 = load i32, i32* %alok, align 4
  %tobool191 = icmp ne i32 %165, 0
  br i1 %tobool191, label %land.lhs.true.192, label %if.else.267

land.lhs.true.192:                                ; preds = %if.else.190
  %166 = load i32, i32* %dlok, align 4
  %tobool193 = icmp ne i32 %166, 0
  br i1 %tobool193, label %if.then.194, label %if.else.267

if.then.194:                                      ; preds = %land.lhs.true.192
  %167 = load i32, i32* %up, align 4
  %tobool195 = icmp ne i32 %167, 0
  br i1 %tobool195, label %if.then.199, label %lor.lhs.false.196

lor.lhs.false.196:                                ; preds = %if.then.194
  %168 = load i32, i32* %ye.addr, align 4
  %169 = load %struct.display*, %struct.display** @display, align 8
  %d_bot197 = getelementptr inbounds %struct.display, %struct.display* %169, i32 0, i32 21
  %170 = load i32, i32* %d_bot197, align 4
  %cmp198 = icmp ne i32 %168, %170
  br i1 %cmp198, label %if.then.199, label %if.end.228

if.then.199:                                      ; preds = %lor.lhs.false.196, %if.then.194
  %171 = load i32, i32* %up, align 4
  %tobool200 = icmp ne i32 %171, 0
  br i1 %tobool200, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.then.199
  %172 = load i32, i32* %ys.addr, align 4
  br label %cond.end

cond.false:                                       ; preds = %if.then.199
  %173 = load i32, i32* %ye.addr, align 4
  %add201 = add nsw i32 %173, 1
  %174 = load i32, i32* %n.addr, align 4
  %sub202 = sub nsw i32 %add201, %174
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %172, %cond.true ], [ %sub202, %cond.false ]
  call void @GotoPos(i32 0, i32 %cond)
  %175 = load %struct.display*, %struct.display** @display, align 8
  %d_tcs203 = getelementptr inbounds %struct.display, %struct.display* %175, i32 0, i32 83
  %arrayidx204 = getelementptr inbounds [201 x %union.tcu], [201 x %union.tcu]* %d_tcs203, i32 0, i64 25
  %str205 = bitcast %union.tcu* %arrayidx204 to i8**
  %176 = load i8*, i8** %str205, align 8
  %tobool206 = icmp ne i8* %176, null
  br i1 %tobool206, label %land.lhs.true.207, label %if.else.218

land.lhs.true.207:                                ; preds = %cond.end
  %177 = load i32, i32* %n.addr, align 4
  %cmp208 = icmp eq i32 %177, 1
  br i1 %cmp208, label %land.lhs.true.209, label %if.then.214

land.lhs.true.209:                                ; preds = %land.lhs.true.207
  %178 = load %struct.display*, %struct.display** @display, align 8
  %d_tcs210 = getelementptr inbounds %struct.display, %struct.display* %178, i32 0, i32 83
  %arrayidx211 = getelementptr inbounds [201 x %union.tcu], [201 x %union.tcu]* %d_tcs210, i32 0, i64 24
  %str212 = bitcast %union.tcu* %arrayidx211 to i8**
  %179 = load i8*, i8** %str212, align 8
  %tobool213 = icmp ne i8* %179, null
  br i1 %tobool213, label %if.else.218, label %if.then.214

if.then.214:                                      ; preds = %land.lhs.true.209, %land.lhs.true.207
  %180 = load %struct.display*, %struct.display** @display, align 8
  %d_tcs215 = getelementptr inbounds %struct.display, %struct.display* %180, i32 0, i32 83
  %arrayidx216 = getelementptr inbounds [201 x %union.tcu], [201 x %union.tcu]* %d_tcs215, i32 0, i64 25
  %str217 = bitcast %union.tcu* %arrayidx216 to i8**
  %181 = load i8*, i8** %str217, align 8
  %182 = load i32, i32* %n.addr, align 4
  call void @AddCStr2(i8* %181, i32 %182)
  br label %if.end.227

if.else.218:                                      ; preds = %land.lhs.true.209, %cond.end
  %183 = load i32, i32* %n.addr, align 4
  store i32 %183, i32* %i, align 4
  br label %for.cond.219

for.cond.219:                                     ; preds = %for.body.222, %if.else.218
  %184 = load i32, i32* %i, align 4
  %dec220 = add nsw i32 %184, -1
  store i32 %dec220, i32* %i, align 4
  %tobool221 = icmp ne i32 %184, 0
  br i1 %tobool221, label %for.body.222, label %for.end.226

for.body.222:                                     ; preds = %for.cond.219
  %185 = load %struct.display*, %struct.display** @display, align 8
  %d_tcs223 = getelementptr inbounds %struct.display, %struct.display* %185, i32 0, i32 83
  %arrayidx224 = getelementptr inbounds [201 x %union.tcu], [201 x %union.tcu]* %d_tcs223, i32 0, i64 24
  %str225 = bitcast %union.tcu* %arrayidx224 to i8**
  %186 = load i8*, i8** %str225, align 8
  call void @AddCStr(i8* %186)
  br label %for.cond.219

for.end.226:                                      ; preds = %for.cond.219
  br label %if.end.227

if.end.227:                                       ; preds = %for.end.226, %if.then.214
  br label %if.end.228

if.end.228:                                       ; preds = %if.end.227, %lor.lhs.false.196
  %187 = load i32, i32* %up, align 4
  %tobool229 = icmp ne i32 %187, 0
  br i1 %tobool229, label %lor.lhs.false.230, label %if.then.233

lor.lhs.false.230:                                ; preds = %if.end.228
  %188 = load i32, i32* %ye.addr, align 4
  %189 = load %struct.display*, %struct.display** @display, align 8
  %d_bot231 = getelementptr inbounds %struct.display, %struct.display* %189, i32 0, i32 21
  %190 = load i32, i32* %d_bot231, align 4
  %cmp232 = icmp ne i32 %188, %190
  br i1 %cmp232, label %if.then.233, label %if.end.266

if.then.233:                                      ; preds = %lor.lhs.false.230, %if.end.228
  %191 = load i32, i32* %up, align 4
  %tobool234 = icmp ne i32 %191, 0
  br i1 %tobool234, label %cond.true.235, label %cond.false.238

cond.true.235:                                    ; preds = %if.then.233
  %192 = load i32, i32* %ye.addr, align 4
  %add236 = add nsw i32 %192, 1
  %193 = load i32, i32* %n.addr, align 4
  %sub237 = sub nsw i32 %add236, %193
  br label %cond.end.239

cond.false.238:                                   ; preds = %if.then.233
  %194 = load i32, i32* %ys.addr, align 4
  br label %cond.end.239

cond.end.239:                                     ; preds = %cond.false.238, %cond.true.235
  %cond240 = phi i32 [ %sub237, %cond.true.235 ], [ %194, %cond.false.238 ]
  call void @GotoPos(i32 0, i32 %cond240)
  %195 = load %struct.display*, %struct.display** @display, align 8
  %d_tcs241 = getelementptr inbounds %struct.display, %struct.display* %195, i32 0, i32 83
  %arrayidx242 = getelementptr inbounds [201 x %union.tcu], [201 x %union.tcu]* %d_tcs241, i32 0, i64 23
  %str243 = bitcast %union.tcu* %arrayidx242 to i8**
  %196 = load i8*, i8** %str243, align 8
  %tobool244 = icmp ne i8* %196, null
  br i1 %tobool244, label %land.lhs.true.245, label %if.else.256

land.lhs.true.245:                                ; preds = %cond.end.239
  %197 = load i32, i32* %n.addr, align 4
  %cmp246 = icmp eq i32 %197, 1
  br i1 %cmp246, label %land.lhs.true.247, label %if.then.252

land.lhs.true.247:                                ; preds = %land.lhs.true.245
  %198 = load %struct.display*, %struct.display** @display, align 8
  %d_tcs248 = getelementptr inbounds %struct.display, %struct.display* %198, i32 0, i32 83
  %arrayidx249 = getelementptr inbounds [201 x %union.tcu], [201 x %union.tcu]* %d_tcs248, i32 0, i64 22
  %str250 = bitcast %union.tcu* %arrayidx249 to i8**
  %199 = load i8*, i8** %str250, align 8
  %tobool251 = icmp ne i8* %199, null
  br i1 %tobool251, label %if.else.256, label %if.then.252

if.then.252:                                      ; preds = %land.lhs.true.247, %land.lhs.true.245
  %200 = load %struct.display*, %struct.display** @display, align 8
  %d_tcs253 = getelementptr inbounds %struct.display, %struct.display* %200, i32 0, i32 83
  %arrayidx254 = getelementptr inbounds [201 x %union.tcu], [201 x %union.tcu]* %d_tcs253, i32 0, i64 23
  %str255 = bitcast %union.tcu* %arrayidx254 to i8**
  %201 = load i8*, i8** %str255, align 8
  %202 = load i32, i32* %n.addr, align 4
  call void @AddCStr2(i8* %201, i32 %202)
  br label %if.end.265

if.else.256:                                      ; preds = %land.lhs.true.247, %cond.end.239
  %203 = load i32, i32* %n.addr, align 4
  store i32 %203, i32* %i, align 4
  br label %for.cond.257

for.cond.257:                                     ; preds = %for.body.260, %if.else.256
  %204 = load i32, i32* %i, align 4
  %dec258 = add nsw i32 %204, -1
  store i32 %dec258, i32* %i, align 4
  %tobool259 = icmp ne i32 %204, 0
  br i1 %tobool259, label %for.body.260, label %for.end.264

for.body.260:                                     ; preds = %for.cond.257
  %205 = load %struct.display*, %struct.display** @display, align 8
  %d_tcs261 = getelementptr inbounds %struct.display, %struct.display* %205, i32 0, i32 83
  %arrayidx262 = getelementptr inbounds [201 x %union.tcu], [201 x %union.tcu]* %d_tcs261, i32 0, i64 22
  %str263 = bitcast %union.tcu* %arrayidx262 to i8**
  %206 = load i8*, i8** %str263, align 8
  call void @AddCStr(i8* %206)
  br label %for.cond.257

for.end.264:                                      ; preds = %for.cond.257
  br label %if.end.265

if.end.265:                                       ; preds = %for.end.264, %if.then.252
  br label %if.end.266

if.end.266:                                       ; preds = %if.end.265, %lor.lhs.false.230
  br label %if.end.268

if.else.267:                                      ; preds = %land.lhs.true.192, %if.else.190
  %207 = load i32, i32* %xs.addr, align 4
  %208 = load i32, i32* %ys.addr, align 4
  %209 = load i32, i32* %xe.addr, align 4
  %210 = load i32, i32* %ye.addr, align 4
  call void @RefreshArea(i32 %207, i32 %208, i32 %209, i32 %210, i32 0)
  br label %if.end.294

if.end.268:                                       ; preds = %if.end.266
  br label %if.end.269

if.end.269:                                       ; preds = %if.end.268, %if.end.189
  %211 = load i32, i32* %bce.addr, align 4
  %tobool270 = icmp ne i32 %211, 0
  br i1 %tobool270, label %land.lhs.true.271, label %if.end.285

land.lhs.true.271:                                ; preds = %if.end.269
  %212 = load %struct.display*, %struct.display** @display, align 8
  %d_tcs272 = getelementptr inbounds %struct.display, %struct.display* %212, i32 0, i32 83
  %arrayidx273 = getelementptr inbounds [201 x %union.tcu], [201 x %union.tcu]* %d_tcs272, i32 0, i64 66
  %flg274 = bitcast %union.tcu* %arrayidx273 to i32*
  %213 = load i32, i32* %flg274, align 4
  %tobool275 = icmp ne i32 %213, 0
  br i1 %tobool275, label %if.end.285, label %if.then.276

if.then.276:                                      ; preds = %land.lhs.true.271
  %214 = load i32, i32* %up, align 4
  %tobool277 = icmp ne i32 %214, 0
  br i1 %tobool277, label %if.then.278, label %if.else.281

if.then.278:                                      ; preds = %if.then.276
  %215 = load i32, i32* %xs.addr, align 4
  %216 = load i32, i32* %ye.addr, align 4
  %217 = load i32, i32* %n.addr, align 4
  %sub279 = sub nsw i32 %216, %217
  %add280 = add nsw i32 %sub279, 1
  %218 = load i32, i32* %xs.addr, align 4
  %219 = load i32, i32* %xe.addr, align 4
  %220 = load i32, i32* %xe.addr, align 4
  %221 = load i32, i32* %ye.addr, align 4
  %222 = load i32, i32* %bce.addr, align 4
  call void @ClearArea(i32 %215, i32 %add280, i32 %218, i32 %219, i32 %220, i32 %221, i32 %222, i32 0)
  br label %if.end.284

if.else.281:                                      ; preds = %if.then.276
  %223 = load i32, i32* %xs.addr, align 4
  %224 = load i32, i32* %ys.addr, align 4
  %225 = load i32, i32* %xs.addr, align 4
  %226 = load i32, i32* %xe.addr, align 4
  %227 = load i32, i32* %xe.addr, align 4
  %228 = load i32, i32* %ys.addr, align 4
  %229 = load i32, i32* %n.addr, align 4
  %add282 = add nsw i32 %228, %229
  %sub283 = sub nsw i32 %add282, 1
  %230 = load i32, i32* %bce.addr, align 4
  call void @ClearArea(i32 %223, i32 %224, i32 %225, i32 %226, i32 %227, i32 %sub283, i32 %230, i32 0)
  br label %if.end.284

if.end.284:                                       ; preds = %if.else.281, %if.then.278
  br label %if.end.285

if.end.285:                                       ; preds = %if.end.284, %land.lhs.true.271, %if.end.269
  %231 = load %struct.display*, %struct.display** @display, align 8
  %d_lp_missing286 = getelementptr inbounds %struct.display, %struct.display* %231, i32 0, i32 38
  %232 = load i32, i32* %d_lp_missing286, align 4
  %tobool287 = icmp ne i32 %232, 0
  br i1 %tobool287, label %land.lhs.true.288, label %if.end.294

land.lhs.true.288:                                ; preds = %if.end.285
  %233 = load i32, i32* %missy, align 4
  %234 = load %struct.display*, %struct.display** @display, align 8
  %d_bot289 = getelementptr inbounds %struct.display, %struct.display* %234, i32 0, i32 21
  %235 = load i32, i32* %d_bot289, align 4
  %cmp290 = icmp ne i32 %233, %235
  br i1 %cmp290, label %if.then.291, label %if.end.294

if.then.291:                                      ; preds = %land.lhs.true.288
  %236 = load %struct.display*, %struct.display** @display, align 8
  %d_width292 = getelementptr inbounds %struct.display, %struct.display* %236, i32 0, i32 16
  %237 = load i32, i32* %d_width292, align 4
  %sub293 = sub nsw i32 %237, 1
  %238 = load i32, i32* %missy, align 4
  call void @WriteLP(i32 %sub293, i32 %238)
  br label %if.end.294

if.end.294:                                       ; preds = %if.then, %if.then.6, %if.then.11, %if.end.117, %if.else.267, %if.then.291, %land.lhs.true.288, %if.end.285
  ret void
}

; Function Attrs: nounwind uwtable
define void @SetAttr(i32 %new) #0 {
entry:
  %new.addr = alloca i32, align 4
  %i = alloca i32, align 4
  %j = alloca i32, align 4
  %old = alloca i32, align 4
  %typ = alloca i32, align 4
  store i32 %new, i32* %new.addr, align 4
  %0 = load %struct.display*, %struct.display** @display, align 8
  %tobool = icmp ne %struct.display* %0, null
  br i1 %tobool, label %lor.lhs.false, label %if.then

lor.lhs.false:                                    ; preds = %entry
  %1 = load %struct.display*, %struct.display** @display, align 8
  %d_rend = getelementptr inbounds %struct.display, %struct.display* %1, i32 0, i32 24
  %attr = getelementptr inbounds %struct.mchar, %struct.mchar* %d_rend, i32 0, i32 1
  %2 = load i8, i8* %attr, align 1
  %conv = zext i8 %2 to i32
  store i32 %conv, i32* %old, align 4
  %3 = load i32, i32* %new.addr, align 4
  %cmp = icmp eq i32 %conv, %3
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %lor.lhs.false, %entry
  br label %return

if.end:                                           ; preds = %lor.lhs.false
  %4 = load i32, i32* %old, align 4
  %5 = load i32, i32* %new.addr, align 4
  %xor = xor i32 %4, %5
  %and = and i32 %xor, 192
  %6 = load %struct.display*, %struct.display** @display, align 8
  %d_col16change = getelementptr inbounds %struct.display, %struct.display* %6, i32 0, i32 25
  store i32 %and, i32* %d_col16change, align 4
  %7 = load %struct.display*, %struct.display** @display, align 8
  %d_col16change2 = getelementptr inbounds %struct.display, %struct.display* %7, i32 0, i32 25
  %8 = load i32, i32* %d_col16change2, align 4
  %9 = load i32, i32* %new.addr, align 4
  %xor3 = xor i32 %9, %8
  store i32 %xor3, i32* %new.addr, align 4
  %10 = load i32, i32* %old, align 4
  %11 = load i32, i32* %new.addr, align 4
  %cmp4 = icmp eq i32 %10, %11
  br i1 %cmp4, label %if.then.6, label %if.end.7

if.then.6:                                        ; preds = %if.end
  br label %return

if.end.7:                                         ; preds = %if.end
  %12 = load i32, i32* %new.addr, align 4
  %conv8 = trunc i32 %12 to i8
  %13 = load %struct.display*, %struct.display** @display, align 8
  %d_rend9 = getelementptr inbounds %struct.display, %struct.display* %13, i32 0, i32 24
  %attr10 = getelementptr inbounds %struct.mchar, %struct.mchar* %d_rend9, i32 0, i32 1
  store i8 %conv8, i8* %attr10, align 1
  %14 = load %struct.display*, %struct.display** @display, align 8
  %d_atyp = getelementptr inbounds %struct.display, %struct.display* %14, i32 0, i32 26
  %15 = load i8, i8* %d_atyp, align 1
  %conv11 = sext i8 %15 to i32
  store i32 %conv11, i32* %typ, align 4
  %16 = load i32, i32* %new.addr, align 4
  %17 = load i32, i32* %old, align 4
  %and12 = and i32 %16, %17
  %18 = load i32, i32* %old, align 4
  %cmp13 = icmp ne i32 %and12, %18
  br i1 %cmp13, label %if.then.15, label %if.end.49

if.then.15:                                       ; preds = %if.end.7
  %19 = load i32, i32* %typ, align 4
  %and16 = and i32 %19, 4
  %tobool17 = icmp ne i32 %and16, 0
  br i1 %tobool17, label %if.then.18, label %if.end.19

if.then.18:                                       ; preds = %if.then.15
  %20 = load %struct.display*, %struct.display** @display, align 8
  %d_tcs = getelementptr inbounds %struct.display, %struct.display* %20, i32 0, i32 83
  %arrayidx = getelementptr inbounds [201 x %union.tcu], [201 x %union.tcu]* %d_tcs, i32 0, i64 53
  %str = bitcast %union.tcu* %arrayidx to i8**
  %21 = load i8*, i8** %str, align 8
  call void @AddCStr(i8* %21)
  br label %if.end.19

if.end.19:                                        ; preds = %if.then.18, %if.then.15
  %22 = load i32, i32* %typ, align 4
  %and20 = and i32 %22, 2
  %tobool21 = icmp ne i32 %and20, 0
  br i1 %tobool21, label %if.then.22, label %if.end.26

if.then.22:                                       ; preds = %if.end.19
  %23 = load %struct.display*, %struct.display** @display, align 8
  %d_tcs23 = getelementptr inbounds %struct.display, %struct.display* %23, i32 0, i32 83
  %arrayidx24 = getelementptr inbounds [201 x %union.tcu], [201 x %union.tcu]* %d_tcs23, i32 0, i64 54
  %str25 = bitcast %union.tcu* %arrayidx24 to i8**
  %24 = load i8*, i8** %str25, align 8
  call void @AddCStr(i8* %24)
  br label %if.end.26

if.end.26:                                        ; preds = %if.then.22, %if.end.19
  %25 = load i32, i32* %typ, align 4
  %and27 = and i32 %25, 1
  %tobool28 = icmp ne i32 %and27, 0
  br i1 %tobool28, label %if.then.29, label %if.end.48

if.then.29:                                       ; preds = %if.end.26
  %26 = load %struct.display*, %struct.display** @display, align 8
  %d_tcs30 = getelementptr inbounds %struct.display, %struct.display* %26, i32 0, i32 83
  %arrayidx31 = getelementptr inbounds [201 x %union.tcu], [201 x %union.tcu]* %d_tcs30, i32 0, i64 55
  %str32 = bitcast %union.tcu* %arrayidx31 to i8**
  %27 = load i8*, i8** %str32, align 8
  call void @AddCStr(i8* %27)
  %28 = load %struct.display*, %struct.display** @display, align 8
  %d_hascolor = getelementptr inbounds %struct.display, %struct.display* %28, i32 0, i32 86
  %29 = load i32, i32* %d_hascolor, align 4
  %tobool33 = icmp ne i32 %29, 0
  br i1 %tobool33, label %if.then.34, label %if.end.41

if.then.34:                                       ; preds = %if.then.29
  %30 = load %struct.display*, %struct.display** @display, align 8
  %d_rend35 = getelementptr inbounds %struct.display, %struct.display* %30, i32 0, i32 24
  %color = getelementptr inbounds %struct.mchar, %struct.mchar* %d_rend35, i32 0, i32 4
  store i8 0, i8* %color, align 1
  %31 = load %struct.display*, %struct.display** @display, align 8
  %d_rend36 = getelementptr inbounds %struct.display, %struct.display* %31, i32 0, i32 24
  %attr37 = getelementptr inbounds %struct.mchar, %struct.mchar* %d_rend36, i32 0, i32 1
  %32 = load i8, i8* %attr37, align 1
  %conv38 = zext i8 %32 to i32
  %and39 = and i32 %conv38, -193
  %conv40 = trunc i32 %and39 to i8
  store i8 %conv40, i8* %attr37, align 1
  br label %if.end.41

if.end.41:                                        ; preds = %if.then.34, %if.then.29
  %33 = load %struct.display*, %struct.display** @display, align 8
  %d_tcs42 = getelementptr inbounds %struct.display, %struct.display* %33, i32 0, i32 83
  %arrayidx43 = getelementptr inbounds [201 x %union.tcu], [201 x %union.tcu]* %d_tcs42, i32 0, i64 97
  %flg = bitcast %union.tcu* %arrayidx43 to i32*
  %34 = load i32, i32* %flg, align 4
  %tobool44 = icmp ne i32 %34, 0
  br i1 %tobool44, label %if.end.47, label %if.then.45

if.then.45:                                       ; preds = %if.end.41
  %35 = load %struct.display*, %struct.display** @display, align 8
  %d_rend46 = getelementptr inbounds %struct.display, %struct.display* %35, i32 0, i32 24
  %font = getelementptr inbounds %struct.mchar, %struct.mchar* %d_rend46, i32 0, i32 2
  store i8 0, i8* %font, align 1
  %36 = load %struct.display*, %struct.display** @display, align 8
  %d_realfont = getelementptr inbounds %struct.display, %struct.display* %36, i32 0, i32 30
  store i32 0, i32* %d_realfont, align 4
  br label %if.end.47

if.end.47:                                        ; preds = %if.then.45, %if.end.41
  br label %if.end.48

if.end.48:                                        ; preds = %if.end.47, %if.end.26
  store i32 0, i32* %old, align 4
  store i32 0, i32* %typ, align 4
  br label %if.end.49

if.end.49:                                        ; preds = %if.end.48, %if.end.7
  %37 = load i32, i32* %new.addr, align 4
  %38 = load i32, i32* %old, align 4
  %xor50 = xor i32 %38, %37
  store i32 %xor50, i32* %old, align 4
  store i32 0, i32* %i, align 4
  store i32 1, i32* %j, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end.49
  %39 = load i32, i32* %old, align 4
  %tobool51 = icmp ne i32 %39, 0
  br i1 %tobool51, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %for.cond
  %40 = load i32, i32* %i, align 4
  %cmp52 = icmp slt i32 %40, 6
  br label %land.end

land.end:                                         ; preds = %land.rhs, %for.cond
  %41 = phi i1 [ false, %for.cond ], [ %cmp52, %land.rhs ]
  br i1 %41, label %for.body, label %for.end

for.body:                                         ; preds = %land.end
  %42 = load i32, i32* %old, align 4
  %43 = load i32, i32* %j, align 4
  %and54 = and i32 %42, %43
  %cmp55 = icmp eq i32 %and54, 0
  br i1 %cmp55, label %if.then.57, label %if.end.58

if.then.57:                                       ; preds = %for.body
  br label %for.inc

if.end.58:                                        ; preds = %for.body
  %44 = load i32, i32* %j, align 4
  %45 = load i32, i32* %old, align 4
  %xor59 = xor i32 %45, %44
  store i32 %xor59, i32* %old, align 4
  %46 = load i32, i32* %i, align 4
  %idxprom = sext i32 %46 to i64
  %47 = load %struct.display*, %struct.display** @display, align 8
  %d_attrtab = getelementptr inbounds %struct.display, %struct.display* %47, i32 0, i32 84
  %arrayidx60 = getelementptr inbounds [6 x i8*], [6 x i8*]* %d_attrtab, i32 0, i64 %idxprom
  %48 = load i8*, i8** %arrayidx60, align 8
  %tobool61 = icmp ne i8* %48, null
  br i1 %tobool61, label %if.then.62, label %if.end.69

if.then.62:                                       ; preds = %if.end.58
  %49 = load i32, i32* %i, align 4
  %idxprom63 = sext i32 %49 to i64
  %50 = load %struct.display*, %struct.display** @display, align 8
  %d_attrtab64 = getelementptr inbounds %struct.display, %struct.display* %50, i32 0, i32 84
  %arrayidx65 = getelementptr inbounds [6 x i8*], [6 x i8*]* %d_attrtab64, i32 0, i64 %idxprom63
  %51 = load i8*, i8** %arrayidx65, align 8
  call void @AddCStr(i8* %51)
  %52 = load i32, i32* %i, align 4
  %idxprom66 = sext i32 %52 to i64
  %53 = load %struct.display*, %struct.display** @display, align 8
  %d_attrtyp = getelementptr inbounds %struct.display, %struct.display* %53, i32 0, i32 85
  %arrayidx67 = getelementptr inbounds [6 x i8], [6 x i8]* %d_attrtyp, i32 0, i64 %idxprom66
  %54 = load i8, i8* %arrayidx67, align 1
  %conv68 = sext i8 %54 to i32
  %55 = load i32, i32* %typ, align 4
  %or = or i32 %55, %conv68
  store i32 %or, i32* %typ, align 4
  br label %if.end.69

if.end.69:                                        ; preds = %if.then.62, %if.end.58
  br label %for.inc

for.inc:                                          ; preds = %if.end.69, %if.then.57
  %56 = load i32, i32* %i, align 4
  %inc = add nsw i32 %56, 1
  store i32 %inc, i32* %i, align 4
  %57 = load i32, i32* %j, align 4
  %shl = shl i32 %57, 1
  store i32 %shl, i32* %j, align 4
  br label %for.cond

for.end:                                          ; preds = %land.end
  %58 = load i32, i32* %typ, align 4
  %conv70 = trunc i32 %58 to i8
  %59 = load %struct.display*, %struct.display** @display, align 8
  %d_atyp71 = getelementptr inbounds %struct.display, %struct.display* %59, i32 0, i32 26
  store i8 %conv70, i8* %d_atyp71, align 1
  br label %return

return:                                           ; preds = %for.end, %if.then.6, %if.then
  ret void
}

; Function Attrs: nounwind uwtable
define void @SetFont(i32 %new) #0 {
entry:
  %new.addr = alloca i32, align 4
  %old = alloca i32, align 4
  store i32 %new, i32* %new.addr, align 4
  %0 = load %struct.display*, %struct.display** @display, align 8
  %d_rend = getelementptr inbounds %struct.display, %struct.display* %0, i32 0, i32 24
  %font = getelementptr inbounds %struct.mchar, %struct.mchar* %d_rend, i32 0, i32 2
  %1 = load i8, i8* %font, align 1
  %conv = zext i8 %1 to i32
  store i32 %conv, i32* %old, align 4
  %2 = load %struct.display*, %struct.display** @display, align 8
  %tobool = icmp ne %struct.display* %2, null
  br i1 %tobool, label %lor.lhs.false, label %if.then

lor.lhs.false:                                    ; preds = %entry
  %3 = load i32, i32* %old, align 4
  %4 = load i32, i32* %new.addr, align 4
  %cmp = icmp eq i32 %3, %4
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %lor.lhs.false, %entry
  br label %if.end.80

if.end:                                           ; preds = %lor.lhs.false
  %5 = load i32, i32* %new.addr, align 4
  %conv2 = trunc i32 %5 to i8
  %6 = load %struct.display*, %struct.display** @display, align 8
  %d_rend3 = getelementptr inbounds %struct.display, %struct.display* %6, i32 0, i32 24
  %font4 = getelementptr inbounds %struct.mchar, %struct.mchar* %d_rend3, i32 0, i32 2
  store i8 %conv2, i8* %font4, align 1
  %7 = load %struct.display*, %struct.display** @display, align 8
  %d_encoding = getelementptr inbounds %struct.display, %struct.display* %7, i32 0, i32 28
  %8 = load i32, i32* %d_encoding, align 4
  %tobool5 = icmp ne i32 %8, 0
  br i1 %tobool5, label %land.lhs.true, label %if.end.9

land.lhs.true:                                    ; preds = %if.end
  %9 = load %struct.display*, %struct.display** @display, align 8
  %d_encoding6 = getelementptr inbounds %struct.display, %struct.display* %9, i32 0, i32 28
  %10 = load i32, i32* %d_encoding6, align 4
  %11 = load i32, i32* %new.addr, align 4
  %call = call i32 @CanEncodeFont(i32 %10, i32 %11)
  %tobool7 = icmp ne i32 %call, 0
  br i1 %tobool7, label %if.then.8, label %if.end.9

if.then.8:                                        ; preds = %land.lhs.true
  br label %if.end.80

if.end.9:                                         ; preds = %land.lhs.true, %if.end
  %12 = load i32, i32* %new.addr, align 4
  %13 = load %struct.display*, %struct.display** @display, align 8
  %d_realfont = getelementptr inbounds %struct.display, %struct.display* %13, i32 0, i32 30
  %14 = load i32, i32* %d_realfont, align 4
  %cmp10 = icmp eq i32 %12, %14
  br i1 %cmp10, label %if.then.12, label %if.end.13

if.then.12:                                       ; preds = %if.end.9
  br label %if.end.80

if.end.13:                                        ; preds = %if.end.9
  %15 = load i32, i32* %new.addr, align 4
  %16 = load %struct.display*, %struct.display** @display, align 8
  %d_realfont14 = getelementptr inbounds %struct.display, %struct.display* %16, i32 0, i32 30
  store i32 %15, i32* %d_realfont14, align 4
  %17 = load %struct.display*, %struct.display** @display, align 8
  %d_xtable = getelementptr inbounds %struct.display, %struct.display* %17, i32 0, i32 89
  %18 = load i8***, i8**** %d_xtable, align 8
  %tobool15 = icmp ne i8*** %18, null
  br i1 %tobool15, label %land.lhs.true.16, label %if.end.36

land.lhs.true.16:                                 ; preds = %if.end.13
  %19 = load i32, i32* %new.addr, align 4
  %conv17 = trunc i32 %19 to i8
  %conv18 = zext i8 %conv17 to i32
  %idxprom = sext i32 %conv18 to i64
  %20 = load %struct.display*, %struct.display** @display, align 8
  %d_xtable19 = getelementptr inbounds %struct.display, %struct.display* %20, i32 0, i32 89
  %21 = load i8***, i8**** %d_xtable19, align 8
  %arrayidx = getelementptr inbounds i8**, i8*** %21, i64 %idxprom
  %22 = load i8**, i8*** %arrayidx, align 8
  %tobool20 = icmp ne i8** %22, null
  br i1 %tobool20, label %land.lhs.true.21, label %if.end.36

land.lhs.true.21:                                 ; preds = %land.lhs.true.16
  %23 = load i32, i32* %new.addr, align 4
  %conv22 = trunc i32 %23 to i8
  %conv23 = zext i8 %conv22 to i32
  %idxprom24 = sext i32 %conv23 to i64
  %24 = load %struct.display*, %struct.display** @display, align 8
  %d_xtable25 = getelementptr inbounds %struct.display, %struct.display* %24, i32 0, i32 89
  %25 = load i8***, i8**** %d_xtable25, align 8
  %arrayidx26 = getelementptr inbounds i8**, i8*** %25, i64 %idxprom24
  %26 = load i8**, i8*** %arrayidx26, align 8
  %arrayidx27 = getelementptr inbounds i8*, i8** %26, i64 256
  %27 = load i8*, i8** %arrayidx27, align 8
  %tobool28 = icmp ne i8* %27, null
  br i1 %tobool28, label %if.then.29, label %if.end.36

if.then.29:                                       ; preds = %land.lhs.true.21
  %28 = load i32, i32* %new.addr, align 4
  %conv30 = trunc i32 %28 to i8
  %conv31 = zext i8 %conv30 to i32
  %idxprom32 = sext i32 %conv31 to i64
  %29 = load %struct.display*, %struct.display** @display, align 8
  %d_xtable33 = getelementptr inbounds %struct.display, %struct.display* %29, i32 0, i32 89
  %30 = load i8***, i8**** %d_xtable33, align 8
  %arrayidx34 = getelementptr inbounds i8**, i8*** %30, i64 %idxprom32
  %31 = load i8**, i8*** %arrayidx34, align 8
  %arrayidx35 = getelementptr inbounds i8*, i8** %31, i64 256
  %32 = load i8*, i8** %arrayidx35, align 8
  call void @AddCStr(i8* %32)
  br label %if.end.80

if.end.36:                                        ; preds = %land.lhs.true.21, %land.lhs.true.16, %if.end.13
  %33 = load %struct.display*, %struct.display** @display, align 8
  %d_tcs = getelementptr inbounds %struct.display, %struct.display* %33, i32 0, i32 83
  %arrayidx37 = getelementptr inbounds [201 x %union.tcu], [201 x %union.tcu]* %d_tcs, i32 0, i64 97
  %flg = bitcast %union.tcu* %arrayidx37 to i32*
  %34 = load i32, i32* %flg, align 4
  %tobool38 = icmp ne i32 %34, 0
  br i1 %tobool38, label %if.end.47, label %land.lhs.true.39

land.lhs.true.39:                                 ; preds = %if.end.36
  %35 = load i32, i32* %new.addr, align 4
  %cmp40 = icmp ne i32 %35, 48
  br i1 %cmp40, label %if.then.42, label %if.end.47

if.then.42:                                       ; preds = %land.lhs.true.39
  store i32 0, i32* %new.addr, align 4
  %36 = load i32, i32* %old, align 4
  %37 = load i32, i32* %new.addr, align 4
  %cmp43 = icmp eq i32 %36, %37
  br i1 %cmp43, label %if.then.45, label %if.end.46

if.then.45:                                       ; preds = %if.then.42
  br label %if.end.80

if.end.46:                                        ; preds = %if.then.42
  br label %if.end.47

if.end.47:                                        ; preds = %if.end.46, %land.lhs.true.39, %if.end.36
  %38 = load i32, i32* %new.addr, align 4
  %cmp48 = icmp eq i32 %38, 0
  br i1 %cmp48, label %if.then.50, label %if.else

if.then.50:                                       ; preds = %if.end.47
  %39 = load %struct.display*, %struct.display** @display, align 8
  %d_tcs51 = getelementptr inbounds %struct.display, %struct.display* %39, i32 0, i32 83
  %arrayidx52 = getelementptr inbounds [201 x %union.tcu], [201 x %union.tcu]* %d_tcs51, i32 0, i64 99
  %str = bitcast %union.tcu* %arrayidx52 to i8**
  %40 = load i8*, i8** %str, align 8
  call void @AddCStr(i8* %40)
  br label %if.end.80

if.else:                                          ; preds = %if.end.47
  %41 = load i32, i32* %new.addr, align 4
  %cmp53 = icmp slt i32 %41, 32
  br i1 %cmp53, label %if.then.55, label %if.else.75

if.then.55:                                       ; preds = %if.else
  call void @AddStr(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.2, i32 0, i32 0))
  %42 = load i32, i32* %new.addr, align 4
  %cmp56 = icmp sgt i32 %42, 2
  br i1 %cmp56, label %if.then.58, label %if.end.63

if.then.58:                                       ; preds = %if.then.55
  br label %do.body

do.body:                                          ; preds = %if.then.58
  %43 = load %struct.display*, %struct.display** @display, align 8
  %d_obuffree = getelementptr inbounds %struct.display, %struct.display* %43, i32 0, i32 72
  %44 = load i32, i32* %d_obuffree, align 4
  %dec = add nsw i32 %44, -1
  store i32 %dec, i32* %d_obuffree, align 4
  %cmp59 = icmp sle i32 %dec, 0
  br i1 %cmp59, label %if.then.61, label %if.end.62

if.then.61:                                       ; preds = %do.body
  call void @Resize_obuf()
  br label %if.end.62

if.end.62:                                        ; preds = %if.then.61, %do.body
  %45 = load %struct.display*, %struct.display** @display, align 8
  %d_obufp = getelementptr inbounds %struct.display, %struct.display* %45, i32 0, i32 71
  %46 = load i8*, i8** %d_obufp, align 8
  %incdec.ptr = getelementptr inbounds i8, i8* %46, i32 1
  store i8* %incdec.ptr, i8** %d_obufp, align 8
  store i8 40, i8* %46, align 1
  br label %do.end

do.end:                                           ; preds = %if.end.62
  br label %if.end.63

if.end.63:                                        ; preds = %do.end, %if.then.55
  br label %do.body.64

do.body.64:                                       ; preds = %if.end.63
  %47 = load %struct.display*, %struct.display** @display, align 8
  %d_obuffree65 = getelementptr inbounds %struct.display, %struct.display* %47, i32 0, i32 72
  %48 = load i32, i32* %d_obuffree65, align 4
  %dec66 = add nsw i32 %48, -1
  store i32 %dec66, i32* %d_obuffree65, align 4
  %cmp67 = icmp sle i32 %dec66, 0
  br i1 %cmp67, label %if.then.69, label %if.end.70

if.then.69:                                       ; preds = %do.body.64
  call void @Resize_obuf()
  br label %if.end.70

if.end.70:                                        ; preds = %if.then.69, %do.body.64
  %49 = load i32, i32* %new.addr, align 4
  %add = add nsw i32 %49, 64
  %conv71 = trunc i32 %add to i8
  %50 = load %struct.display*, %struct.display** @display, align 8
  %d_obufp72 = getelementptr inbounds %struct.display, %struct.display* %50, i32 0, i32 71
  %51 = load i8*, i8** %d_obufp72, align 8
  %incdec.ptr73 = getelementptr inbounds i8, i8* %51, i32 1
  store i8* %incdec.ptr73, i8** %d_obufp72, align 8
  store i8 %conv71, i8* %51, align 1
  br label %do.end.74

do.end.74:                                        ; preds = %if.end.70
  br label %if.end.79

if.else.75:                                       ; preds = %if.else
  %52 = load %struct.display*, %struct.display** @display, align 8
  %d_tcs76 = getelementptr inbounds %struct.display, %struct.display* %52, i32 0, i32 83
  %arrayidx77 = getelementptr inbounds [201 x %union.tcu], [201 x %union.tcu]* %d_tcs76, i32 0, i64 98
  %str78 = bitcast %union.tcu* %arrayidx77 to i8**
  %53 = load i8*, i8** %str78, align 8
  %54 = load i32, i32* %new.addr, align 4
  call void @AddCStr2(i8* %53, i32 %54)
  br label %if.end.79

if.end.79:                                        ; preds = %if.else.75, %do.end.74
  br label %if.end.80

if.end.80:                                        ; preds = %if.then, %if.then.8, %if.then.12, %if.then.29, %if.then.45, %if.end.79, %if.then.50
  ret void
}

declare i32 @CanEncodeFont(i32, i32) #1

; Function Attrs: nounwind uwtable
define i32 @color256to16(i32 %jj) #0 {
entry:
  %jj.addr = alloca i32, align 4
  %min = alloca i32, align 4
  %max = alloca i32, align 4
  %r = alloca i32, align 4
  %g = alloca i32, align 4
  %b = alloca i32, align 4
  store i32 %jj, i32* %jj.addr, align 4
  %0 = load i32, i32* %jj.addr, align 4
  %cmp = icmp sge i32 %0, 232
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %1 = load i32, i32* %jj.addr, align 4
  %sub = sub nsw i32 %1, 232
  %div = sdiv i32 %sub, 6
  store i32 %div, i32* %jj.addr, align 4
  %2 = load i32, i32* %jj.addr, align 4
  %and = and i32 %2, 1
  %shl = shl i32 %and, 3
  %3 = load i32, i32* %jj.addr, align 4
  %and1 = and i32 %3, 2
  %tobool = icmp ne i32 %and1, 0
  %cond = select i1 %tobool, i32 7, i32 0
  %or = or i32 %shl, %cond
  store i32 %or, i32* %jj.addr, align 4
  br label %if.end.62

if.else:                                          ; preds = %entry
  %4 = load i32, i32* %jj.addr, align 4
  %cmp2 = icmp sge i32 %4, 16
  br i1 %cmp2, label %if.then.3, label %if.end.61

if.then.3:                                        ; preds = %if.else
  %5 = load i32, i32* %jj.addr, align 4
  %sub4 = sub nsw i32 %5, 16
  store i32 %sub4, i32* %jj.addr, align 4
  %6 = load i32, i32* %jj.addr, align 4
  %div5 = sdiv i32 %6, 36
  store i32 %div5, i32* %r, align 4
  %7 = load i32, i32* %jj.addr, align 4
  %div6 = sdiv i32 %7, 6
  %rem = srem i32 %div6, 6
  store i32 %rem, i32* %g, align 4
  %8 = load i32, i32* %jj.addr, align 4
  %rem7 = srem i32 %8, 6
  store i32 %rem7, i32* %b, align 4
  %9 = load i32, i32* %r, align 4
  %10 = load i32, i32* %g, align 4
  %cmp8 = icmp slt i32 %9, %10
  br i1 %cmp8, label %cond.true, label %cond.false.12

cond.true:                                        ; preds = %if.then.3
  %11 = load i32, i32* %r, align 4
  %12 = load i32, i32* %b, align 4
  %cmp9 = icmp slt i32 %11, %12
  br i1 %cmp9, label %cond.true.10, label %cond.false

cond.true.10:                                     ; preds = %cond.true
  %13 = load i32, i32* %r, align 4
  br label %cond.end

cond.false:                                       ; preds = %cond.true
  %14 = load i32, i32* %b, align 4
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true.10
  %cond11 = phi i32 [ %13, %cond.true.10 ], [ %14, %cond.false ]
  br label %cond.end.18

cond.false.12:                                    ; preds = %if.then.3
  %15 = load i32, i32* %g, align 4
  %16 = load i32, i32* %b, align 4
  %cmp13 = icmp slt i32 %15, %16
  br i1 %cmp13, label %cond.true.14, label %cond.false.15

cond.true.14:                                     ; preds = %cond.false.12
  %17 = load i32, i32* %g, align 4
  br label %cond.end.16

cond.false.15:                                    ; preds = %cond.false.12
  %18 = load i32, i32* %b, align 4
  br label %cond.end.16

cond.end.16:                                      ; preds = %cond.false.15, %cond.true.14
  %cond17 = phi i32 [ %17, %cond.true.14 ], [ %18, %cond.false.15 ]
  br label %cond.end.18

cond.end.18:                                      ; preds = %cond.end.16, %cond.end
  %cond19 = phi i32 [ %cond11, %cond.end ], [ %cond17, %cond.end.16 ]
  store i32 %cond19, i32* %min, align 4
  %19 = load i32, i32* %r, align 4
  %20 = load i32, i32* %g, align 4
  %cmp20 = icmp sgt i32 %19, %20
  br i1 %cmp20, label %cond.true.21, label %cond.false.27

cond.true.21:                                     ; preds = %cond.end.18
  %21 = load i32, i32* %r, align 4
  %22 = load i32, i32* %b, align 4
  %cmp22 = icmp sgt i32 %21, %22
  br i1 %cmp22, label %cond.true.23, label %cond.false.24

cond.true.23:                                     ; preds = %cond.true.21
  %23 = load i32, i32* %r, align 4
  br label %cond.end.25

cond.false.24:                                    ; preds = %cond.true.21
  %24 = load i32, i32* %b, align 4
  br label %cond.end.25

cond.end.25:                                      ; preds = %cond.false.24, %cond.true.23
  %cond26 = phi i32 [ %23, %cond.true.23 ], [ %24, %cond.false.24 ]
  br label %cond.end.33

cond.false.27:                                    ; preds = %cond.end.18
  %25 = load i32, i32* %g, align 4
  %26 = load i32, i32* %b, align 4
  %cmp28 = icmp sgt i32 %25, %26
  br i1 %cmp28, label %cond.true.29, label %cond.false.30

cond.true.29:                                     ; preds = %cond.false.27
  %27 = load i32, i32* %g, align 4
  br label %cond.end.31

cond.false.30:                                    ; preds = %cond.false.27
  %28 = load i32, i32* %b, align 4
  br label %cond.end.31

cond.end.31:                                      ; preds = %cond.false.30, %cond.true.29
  %cond32 = phi i32 [ %27, %cond.true.29 ], [ %28, %cond.false.30 ]
  br label %cond.end.33

cond.end.33:                                      ; preds = %cond.end.31, %cond.end.25
  %cond34 = phi i32 [ %cond26, %cond.end.25 ], [ %cond32, %cond.end.31 ]
  store i32 %cond34, i32* %max, align 4
  %29 = load i32, i32* %min, align 4
  %30 = load i32, i32* %max, align 4
  %cmp35 = icmp eq i32 %29, %30
  br i1 %cmp35, label %if.then.36, label %if.else.44

if.then.36:                                       ; preds = %cond.end.33
  %31 = load i32, i32* %max, align 4
  %add = add nsw i32 %31, 1
  %and37 = and i32 %add, 2
  %shl38 = shl i32 %and37, 2
  %32 = load i32, i32* %max, align 4
  %add39 = add nsw i32 %32, 1
  %and40 = and i32 %add39, 4
  %tobool41 = icmp ne i32 %and40, 0
  %cond42 = select i1 %tobool41, i32 7, i32 0
  %or43 = or i32 %shl38, %cond42
  store i32 %or43, i32* %jj.addr, align 4
  br label %if.end

if.else.44:                                       ; preds = %cond.end.33
  %33 = load i32, i32* %b, align 4
  %34 = load i32, i32* %min, align 4
  %sub45 = sub nsw i32 %33, %34
  %35 = load i32, i32* %max, align 4
  %36 = load i32, i32* %min, align 4
  %sub46 = sub nsw i32 %35, %36
  %div47 = sdiv i32 %sub45, %sub46
  %shl48 = shl i32 %div47, 2
  %37 = load i32, i32* %g, align 4
  %38 = load i32, i32* %min, align 4
  %sub49 = sub nsw i32 %37, %38
  %39 = load i32, i32* %max, align 4
  %40 = load i32, i32* %min, align 4
  %sub50 = sub nsw i32 %39, %40
  %div51 = sdiv i32 %sub49, %sub50
  %shl52 = shl i32 %div51, 1
  %or53 = or i32 %shl48, %shl52
  %41 = load i32, i32* %r, align 4
  %42 = load i32, i32* %min, align 4
  %sub54 = sub nsw i32 %41, %42
  %43 = load i32, i32* %max, align 4
  %44 = load i32, i32* %min, align 4
  %sub55 = sub nsw i32 %43, %44
  %div56 = sdiv i32 %sub54, %sub55
  %or57 = or i32 %or53, %div56
  %45 = load i32, i32* %max, align 4
  %cmp58 = icmp sgt i32 %45, 3
  %cond59 = select i1 %cmp58, i32 8, i32 0
  %or60 = or i32 %or57, %cond59
  store i32 %or60, i32* %jj.addr, align 4
  br label %if.end

if.end:                                           ; preds = %if.else.44, %if.then.36
  br label %if.end.61

if.end.61:                                        ; preds = %if.end, %if.else
  br label %if.end.62

if.end.62:                                        ; preds = %if.end.61, %if.then
  %46 = load i32, i32* %jj.addr, align 4
  ret i32 %46
}

; Function Attrs: nounwind uwtable
define void @SetColor(i32 %f, i32 %b) #0 {
entry:
  %f.addr = alloca i32, align 4
  %b.addr = alloca i32, align 4
  %of = alloca i32, align 4
  %ob = alloca i32, align 4
  %oattr = alloca i32, align 4
  store i32 %f, i32* %f.addr, align 4
  store i32 %b, i32* %b.addr, align 4
  %0 = load %struct.display*, %struct.display** @display, align 8
  %tobool = icmp ne %struct.display* %0, null
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  br label %if.end.286

if.end:                                           ; preds = %entry
  %1 = load %struct.display*, %struct.display** @display, align 8
  %d_rend = getelementptr inbounds %struct.display, %struct.display* %1, i32 0, i32 24
  %color = getelementptr inbounds %struct.mchar, %struct.mchar* %d_rend, i32 0, i32 4
  %2 = load i8, i8* %color, align 1
  %conv = zext i8 %2 to i32
  %and = and i32 %conv, 15
  %3 = load %struct.display*, %struct.display** @display, align 8
  %d_rend1 = getelementptr inbounds %struct.display, %struct.display* %3, i32 0, i32 24
  %attr = getelementptr inbounds %struct.mchar, %struct.mchar* %d_rend1, i32 0, i32 1
  %4 = load i8, i8* %attr, align 1
  %conv2 = zext i8 %4 to i32
  %and3 = and i32 %conv2, 64
  %tobool4 = icmp ne i32 %and3, 0
  %cond = select i1 %tobool4, i32 256, i32 0
  %or = or i32 %and, %cond
  store i32 %or, i32* %of, align 4
  %5 = load %struct.display*, %struct.display** @display, align 8
  %d_rend5 = getelementptr inbounds %struct.display, %struct.display* %5, i32 0, i32 24
  %color6 = getelementptr inbounds %struct.mchar, %struct.mchar* %d_rend5, i32 0, i32 4
  %6 = load i8, i8* %color6, align 1
  %conv7 = zext i8 %6 to i32
  %and8 = and i32 %conv7, 240
  %shr = ashr i32 %and8, 4
  %7 = load %struct.display*, %struct.display** @display, align 8
  %d_rend9 = getelementptr inbounds %struct.display, %struct.display* %7, i32 0, i32 24
  %attr10 = getelementptr inbounds %struct.mchar, %struct.mchar* %d_rend9, i32 0, i32 1
  %8 = load i8, i8* %attr10, align 1
  %conv11 = zext i8 %8 to i32
  %and12 = and i32 %conv11, 128
  %tobool13 = icmp ne i32 %and12, 0
  %cond14 = select i1 %tobool13, i32 256, i32 0
  %or15 = or i32 %shr, %cond14
  store i32 %or15, i32* %ob, align 4
  %9 = load i32, i32* %f.addr, align 4
  %cmp = icmp eq i32 %9, 256
  br i1 %cmp, label %if.then.17, label %if.end.18

if.then.17:                                       ; preds = %if.end
  store i32 0, i32* %f.addr, align 4
  br label %if.end.18

if.end.18:                                        ; preds = %if.then.17, %if.end
  %10 = load i32, i32* %b.addr, align 4
  %cmp19 = icmp eq i32 %10, 256
  br i1 %cmp19, label %if.then.21, label %if.end.22

if.then.21:                                       ; preds = %if.end.18
  store i32 0, i32* %b.addr, align 4
  br label %if.end.22

if.end.22:                                        ; preds = %if.then.21, %if.end.18
  br label %do.body

do.body:                                          ; preds = %if.end.22
  br label %do.end

do.end:                                           ; preds = %do.body
  br label %do.body.23

do.body.23:                                       ; preds = %do.end
  br label %do.end.24

do.end.24:                                        ; preds = %do.body.23
  br label %do.body.25

do.body.25:                                       ; preds = %do.end.24
  br label %do.end.26

do.end.26:                                        ; preds = %do.body.25
  br label %do.body.27

do.body.27:                                       ; preds = %do.end.26
  br label %do.end.28

do.end.28:                                        ; preds = %do.body.27
  %11 = load %struct.display*, %struct.display** @display, align 8
  %d_tcs = getelementptr inbounds %struct.display, %struct.display* %11, i32 0, i32 83
  %arrayidx = getelementptr inbounds [201 x %union.tcu], [201 x %union.tcu]* %d_tcs, i32 0, i64 67
  %flg = bitcast %union.tcu* %arrayidx to i32*
  %12 = load i32, i32* %flg, align 4
  %tobool29 = icmp ne i32 %12, 0
  br i1 %tobool29, label %if.end.76, label %land.lhs.true

land.lhs.true:                                    ; preds = %do.end.28
  %13 = load %struct.display*, %struct.display** @display, align 8
  %d_hascolor = getelementptr inbounds %struct.display, %struct.display* %13, i32 0, i32 86
  %14 = load i32, i32* %d_hascolor, align 4
  %tobool30 = icmp ne i32 %14, 0
  br i1 %tobool30, label %land.lhs.true.31, label %if.end.76

land.lhs.true.31:                                 ; preds = %land.lhs.true
  %15 = load i32, i32* %f.addr, align 4
  %cmp32 = icmp eq i32 %15, 0
  br i1 %cmp32, label %land.lhs.true.34, label %lor.lhs.false

land.lhs.true.34:                                 ; preds = %land.lhs.true.31
  %16 = load i32, i32* %f.addr, align 4
  %17 = load i32, i32* %of, align 4
  %cmp35 = icmp ne i32 %16, %17
  br i1 %cmp35, label %if.then.42, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %land.lhs.true.34, %land.lhs.true.31
  %18 = load i32, i32* %b.addr, align 4
  %cmp37 = icmp eq i32 %18, 0
  br i1 %cmp37, label %land.lhs.true.39, label %if.end.76

land.lhs.true.39:                                 ; preds = %lor.lhs.false
  %19 = load i32, i32* %b.addr, align 4
  %20 = load i32, i32* %ob, align 4
  %cmp40 = icmp ne i32 %19, %20
  br i1 %cmp40, label %if.then.42, label %if.end.76

if.then.42:                                       ; preds = %land.lhs.true.39, %land.lhs.true.34
  %21 = load %struct.display*, %struct.display** @display, align 8
  %d_tcs43 = getelementptr inbounds %struct.display, %struct.display* %21, i32 0, i32 83
  %arrayidx44 = getelementptr inbounds [201 x %union.tcu], [201 x %union.tcu]* %d_tcs43, i32 0, i64 64
  %str = bitcast %union.tcu* %arrayidx44 to i8**
  %22 = load i8*, i8** %str, align 8
  %tobool45 = icmp ne i8* %22, null
  br i1 %tobool45, label %if.then.46, label %if.else

if.then.46:                                       ; preds = %if.then.42
  %23 = load %struct.display*, %struct.display** @display, align 8
  %d_tcs47 = getelementptr inbounds %struct.display, %struct.display* %23, i32 0, i32 83
  %arrayidx48 = getelementptr inbounds [201 x %union.tcu], [201 x %union.tcu]* %d_tcs47, i32 0, i64 64
  %str49 = bitcast %union.tcu* %arrayidx48 to i8**
  %24 = load i8*, i8** %str49, align 8
  call void @AddCStr(i8* %24)
  br label %if.end.75

if.else:                                          ; preds = %if.then.42
  %25 = load %struct.display*, %struct.display** @display, align 8
  %d_rend50 = getelementptr inbounds %struct.display, %struct.display* %25, i32 0, i32 24
  %attr51 = getelementptr inbounds %struct.mchar, %struct.mchar* %d_rend50, i32 0, i32 1
  %26 = load i8, i8* %attr51, align 1
  %conv52 = zext i8 %26 to i32
  store i32 %conv52, i32* %oattr, align 4
  %27 = load %struct.display*, %struct.display** @display, align 8
  %d_tcs53 = getelementptr inbounds %struct.display, %struct.display* %27, i32 0, i32 83
  %arrayidx54 = getelementptr inbounds [201 x %union.tcu], [201 x %union.tcu]* %d_tcs53, i32 0, i64 55
  %str55 = bitcast %union.tcu* %arrayidx54 to i8**
  %28 = load i8*, i8** %str55, align 8
  %tobool56 = icmp ne i8* %28, null
  br i1 %tobool56, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.else
  %29 = load %struct.display*, %struct.display** @display, align 8
  %d_tcs57 = getelementptr inbounds %struct.display, %struct.display* %29, i32 0, i32 83
  %arrayidx58 = getelementptr inbounds [201 x %union.tcu], [201 x %union.tcu]* %d_tcs57, i32 0, i64 55
  %str59 = bitcast %union.tcu* %arrayidx58 to i8**
  %30 = load i8*, i8** %str59, align 8
  br label %cond.end

cond.false:                                       ; preds = %if.else
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond60 = phi i8* [ %30, %cond.true ], [ getelementptr inbounds ([4 x i8], [4 x i8]* @.str.3, i32 0, i32 0), %cond.false ]
  call void @AddCStr(i8* %cond60)
  %31 = load %struct.display*, %struct.display** @display, align 8
  %d_tcs61 = getelementptr inbounds %struct.display, %struct.display* %31, i32 0, i32 83
  %arrayidx62 = getelementptr inbounds [201 x %union.tcu], [201 x %union.tcu]* %d_tcs61, i32 0, i64 55
  %str63 = bitcast %union.tcu* %arrayidx62 to i8**
  %32 = load i8*, i8** %str63, align 8
  %tobool64 = icmp ne i8* %32, null
  br i1 %tobool64, label %land.lhs.true.65, label %if.end.72

land.lhs.true.65:                                 ; preds = %cond.end
  %33 = load %struct.display*, %struct.display** @display, align 8
  %d_tcs66 = getelementptr inbounds %struct.display, %struct.display* %33, i32 0, i32 83
  %arrayidx67 = getelementptr inbounds [201 x %union.tcu], [201 x %union.tcu]* %d_tcs66, i32 0, i64 97
  %flg68 = bitcast %union.tcu* %arrayidx67 to i32*
  %34 = load i32, i32* %flg68, align 4
  %tobool69 = icmp ne i32 %34, 0
  br i1 %tobool69, label %if.end.72, label %if.then.70

if.then.70:                                       ; preds = %land.lhs.true.65
  %35 = load %struct.display*, %struct.display** @display, align 8
  %d_rend71 = getelementptr inbounds %struct.display, %struct.display* %35, i32 0, i32 24
  %font = getelementptr inbounds %struct.mchar, %struct.mchar* %d_rend71, i32 0, i32 2
  store i8 0, i8* %font, align 1
  %36 = load %struct.display*, %struct.display** @display, align 8
  %d_realfont = getelementptr inbounds %struct.display, %struct.display* %36, i32 0, i32 30
  store i32 0, i32* %d_realfont, align 4
  br label %if.end.72

if.end.72:                                        ; preds = %if.then.70, %land.lhs.true.65, %cond.end
  %37 = load %struct.display*, %struct.display** @display, align 8
  %d_atyp = getelementptr inbounds %struct.display, %struct.display* %37, i32 0, i32 26
  store i8 0, i8* %d_atyp, align 1
  %38 = load %struct.display*, %struct.display** @display, align 8
  %d_rend73 = getelementptr inbounds %struct.display, %struct.display* %38, i32 0, i32 24
  %attr74 = getelementptr inbounds %struct.mchar, %struct.mchar* %d_rend73, i32 0, i32 1
  store i8 0, i8* %attr74, align 1
  %39 = load i32, i32* %oattr, align 4
  call void @SetAttr(i32 %39)
  br label %if.end.75

if.end.75:                                        ; preds = %if.end.72, %if.then.46
  store i32 0, i32* %ob, align 4
  store i32 0, i32* %of, align 4
  br label %if.end.76

if.end.76:                                        ; preds = %if.end.75, %land.lhs.true.39, %lor.lhs.false, %land.lhs.true, %do.end.28
  %40 = load %struct.display*, %struct.display** @display, align 8
  %d_rend77 = getelementptr inbounds %struct.display, %struct.display* %40, i32 0, i32 24
  %color78 = getelementptr inbounds %struct.mchar, %struct.mchar* %d_rend77, i32 0, i32 4
  %41 = load i8, i8* %color78, align 1
  %conv79 = zext i8 %41 to i32
  %and80 = and i32 %conv79, 240
  %42 = load i32, i32* %f.addr, align 4
  %and81 = and i32 %42, 15
  %or82 = or i32 %and80, %and81
  %conv83 = trunc i32 %or82 to i8
  %43 = load %struct.display*, %struct.display** @display, align 8
  %d_rend84 = getelementptr inbounds %struct.display, %struct.display* %43, i32 0, i32 24
  %color85 = getelementptr inbounds %struct.mchar, %struct.mchar* %d_rend84, i32 0, i32 4
  store i8 %conv83, i8* %color85, align 1
  %44 = load %struct.display*, %struct.display** @display, align 8
  %d_rend86 = getelementptr inbounds %struct.display, %struct.display* %44, i32 0, i32 24
  %attr87 = getelementptr inbounds %struct.mchar, %struct.mchar* %d_rend86, i32 0, i32 1
  %45 = load i8, i8* %attr87, align 1
  %conv88 = zext i8 %45 to i32
  %or89 = or i32 %conv88, 64
  %46 = load i32, i32* %f.addr, align 4
  %and90 = and i32 %46, 256
  %tobool91 = icmp ne i32 %and90, 0
  %cond92 = select i1 %tobool91, i32 0, i32 64
  %xor = xor i32 %or89, %cond92
  %conv93 = trunc i32 %xor to i8
  %47 = load %struct.display*, %struct.display** @display, align 8
  %d_rend94 = getelementptr inbounds %struct.display, %struct.display* %47, i32 0, i32 24
  %attr95 = getelementptr inbounds %struct.mchar, %struct.mchar* %d_rend94, i32 0, i32 1
  store i8 %conv93, i8* %attr95, align 1
  %48 = load %struct.display*, %struct.display** @display, align 8
  %d_rend96 = getelementptr inbounds %struct.display, %struct.display* %48, i32 0, i32 24
  %color97 = getelementptr inbounds %struct.mchar, %struct.mchar* %d_rend96, i32 0, i32 4
  %49 = load i8, i8* %color97, align 1
  %conv98 = zext i8 %49 to i32
  %and99 = and i32 %conv98, 15
  %50 = load i32, i32* %b.addr, align 4
  %shl = shl i32 %50, 4
  %and100 = and i32 %shl, 240
  %or101 = or i32 %and99, %and100
  %conv102 = trunc i32 %or101 to i8
  %51 = load %struct.display*, %struct.display** @display, align 8
  %d_rend103 = getelementptr inbounds %struct.display, %struct.display* %51, i32 0, i32 24
  %color104 = getelementptr inbounds %struct.mchar, %struct.mchar* %d_rend103, i32 0, i32 4
  store i8 %conv102, i8* %color104, align 1
  %52 = load %struct.display*, %struct.display** @display, align 8
  %d_rend105 = getelementptr inbounds %struct.display, %struct.display* %52, i32 0, i32 24
  %attr106 = getelementptr inbounds %struct.mchar, %struct.mchar* %d_rend105, i32 0, i32 1
  %53 = load i8, i8* %attr106, align 1
  %conv107 = zext i8 %53 to i32
  %or108 = or i32 %conv107, 128
  %54 = load i32, i32* %b.addr, align 4
  %and109 = and i32 %54, 256
  %tobool110 = icmp ne i32 %and109, 0
  %cond111 = select i1 %tobool110, i32 0, i32 128
  %xor112 = xor i32 %or108, %cond111
  %conv113 = trunc i32 %xor112 to i8
  %55 = load %struct.display*, %struct.display** @display, align 8
  %d_rend114 = getelementptr inbounds %struct.display, %struct.display* %55, i32 0, i32 24
  %attr115 = getelementptr inbounds %struct.mchar, %struct.mchar* %d_rend114, i32 0, i32 1
  store i8 %conv113, i8* %attr115, align 1
  %56 = load %struct.display*, %struct.display** @display, align 8
  %d_col16change = getelementptr inbounds %struct.display, %struct.display* %56, i32 0, i32 25
  store i32 0, i32* %d_col16change, align 4
  %57 = load %struct.display*, %struct.display** @display, align 8
  %d_hascolor116 = getelementptr inbounds %struct.display, %struct.display* %57, i32 0, i32 86
  %58 = load i32, i32* %d_hascolor116, align 4
  %tobool117 = icmp ne i32 %58, 0
  br i1 %tobool117, label %if.end.119, label %if.then.118

if.then.118:                                      ; preds = %if.end.76
  br label %if.end.286

if.end.119:                                       ; preds = %if.end.76
  %59 = load i32, i32* %f.addr, align 4
  %tobool120 = icmp ne i32 %59, 0
  br i1 %tobool120, label %cond.true.121, label %cond.false.132

cond.true.121:                                    ; preds = %if.end.119
  %60 = load i32, i32* %f.addr, align 4
  %and122 = and i32 %60, 504
  %cmp123 = icmp eq i32 %and122, 264
  br i1 %cmp123, label %cond.true.125, label %cond.false.127

cond.true.125:                                    ; preds = %cond.true.121
  %61 = load i32, i32* %f.addr, align 4
  %xor126 = xor i32 %61, 264
  br label %cond.end.129

cond.false.127:                                   ; preds = %cond.true.121
  %62 = load i32, i32* %f.addr, align 4
  %and128 = and i32 %62, 255
  br label %cond.end.129

cond.end.129:                                     ; preds = %cond.false.127, %cond.true.125
  %cond130 = phi i32 [ %xor126, %cond.true.125 ], [ %and128, %cond.false.127 ]
  %xor131 = xor i32 %cond130, 9
  br label %cond.end.133

cond.false.132:                                   ; preds = %if.end.119
  br label %cond.end.133

cond.end.133:                                     ; preds = %cond.false.132, %cond.end.129
  %cond134 = phi i32 [ %xor131, %cond.end.129 ], [ -1, %cond.false.132 ]
  store i32 %cond134, i32* %f.addr, align 4
  %63 = load i32, i32* %b.addr, align 4
  %tobool135 = icmp ne i32 %63, 0
  br i1 %tobool135, label %cond.true.136, label %cond.false.147

cond.true.136:                                    ; preds = %cond.end.133
  %64 = load i32, i32* %b.addr, align 4
  %and137 = and i32 %64, 504
  %cmp138 = icmp eq i32 %and137, 264
  br i1 %cmp138, label %cond.true.140, label %cond.false.142

cond.true.140:                                    ; preds = %cond.true.136
  %65 = load i32, i32* %b.addr, align 4
  %xor141 = xor i32 %65, 264
  br label %cond.end.144

cond.false.142:                                   ; preds = %cond.true.136
  %66 = load i32, i32* %b.addr, align 4
  %and143 = and i32 %66, 255
  br label %cond.end.144

cond.end.144:                                     ; preds = %cond.false.142, %cond.true.140
  %cond145 = phi i32 [ %xor141, %cond.true.140 ], [ %and143, %cond.false.142 ]
  %xor146 = xor i32 %cond145, 9
  br label %cond.end.148

cond.false.147:                                   ; preds = %cond.end.133
  br label %cond.end.148

cond.end.148:                                     ; preds = %cond.false.147, %cond.end.144
  %cond149 = phi i32 [ %xor146, %cond.end.144 ], [ -1, %cond.false.147 ]
  store i32 %cond149, i32* %b.addr, align 4
  %67 = load i32, i32* %of, align 4
  %tobool150 = icmp ne i32 %67, 0
  br i1 %tobool150, label %cond.true.151, label %cond.false.162

cond.true.151:                                    ; preds = %cond.end.148
  %68 = load i32, i32* %of, align 4
  %and152 = and i32 %68, 504
  %cmp153 = icmp eq i32 %and152, 264
  br i1 %cmp153, label %cond.true.155, label %cond.false.157

cond.true.155:                                    ; preds = %cond.true.151
  %69 = load i32, i32* %of, align 4
  %xor156 = xor i32 %69, 264
  br label %cond.end.159

cond.false.157:                                   ; preds = %cond.true.151
  %70 = load i32, i32* %of, align 4
  %and158 = and i32 %70, 255
  br label %cond.end.159

cond.end.159:                                     ; preds = %cond.false.157, %cond.true.155
  %cond160 = phi i32 [ %xor156, %cond.true.155 ], [ %and158, %cond.false.157 ]
  %xor161 = xor i32 %cond160, 9
  br label %cond.end.163

cond.false.162:                                   ; preds = %cond.end.148
  br label %cond.end.163

cond.end.163:                                     ; preds = %cond.false.162, %cond.end.159
  %cond164 = phi i32 [ %xor161, %cond.end.159 ], [ -1, %cond.false.162 ]
  store i32 %cond164, i32* %of, align 4
  %71 = load i32, i32* %ob, align 4
  %tobool165 = icmp ne i32 %71, 0
  br i1 %tobool165, label %cond.true.166, label %cond.false.177

cond.true.166:                                    ; preds = %cond.end.163
  %72 = load i32, i32* %ob, align 4
  %and167 = and i32 %72, 504
  %cmp168 = icmp eq i32 %and167, 264
  br i1 %cmp168, label %cond.true.170, label %cond.false.172

cond.true.170:                                    ; preds = %cond.true.166
  %73 = load i32, i32* %ob, align 4
  %xor171 = xor i32 %73, 264
  br label %cond.end.174

cond.false.172:                                   ; preds = %cond.true.166
  %74 = load i32, i32* %ob, align 4
  %and173 = and i32 %74, 255
  br label %cond.end.174

cond.end.174:                                     ; preds = %cond.false.172, %cond.true.170
  %cond175 = phi i32 [ %xor171, %cond.true.170 ], [ %and173, %cond.false.172 ]
  %xor176 = xor i32 %cond175, 9
  br label %cond.end.178

cond.false.177:                                   ; preds = %cond.end.163
  br label %cond.end.178

cond.end.178:                                     ; preds = %cond.false.177, %cond.end.174
  %cond179 = phi i32 [ %xor176, %cond.end.174 ], [ -1, %cond.false.177 ]
  store i32 %cond179, i32* %ob, align 4
  %75 = load i32, i32* %f.addr, align 4
  %76 = load i32, i32* %of, align 4
  %cmp180 = icmp ne i32 %75, %76
  br i1 %cmp180, label %land.lhs.true.182, label %if.end.215

land.lhs.true.182:                                ; preds = %cond.end.178
  %77 = load i32, i32* %f.addr, align 4
  %78 = load i32, i32* %of, align 4
  %or183 = or i32 %78, 8
  %cmp184 = icmp ne i32 %77, %or183
  br i1 %cmp184, label %if.then.186, label %if.end.215

if.then.186:                                      ; preds = %land.lhs.true.182
  %79 = load i32, i32* %f.addr, align 4
  %cmp187 = icmp eq i32 %79, -1
  br i1 %cmp187, label %if.then.189, label %if.else.190

if.then.189:                                      ; preds = %if.then.186
  call void @AddCStr(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.4, i32 0, i32 0))
  br label %if.end.214

if.else.190:                                      ; preds = %if.then.186
  %80 = load %struct.display*, %struct.display** @display, align 8
  %d_tcs191 = getelementptr inbounds %struct.display, %struct.display* %80, i32 0, i32 83
  %arrayidx192 = getelementptr inbounds [201 x %union.tcu], [201 x %union.tcu]* %d_tcs191, i32 0, i64 60
  %str193 = bitcast %union.tcu* %arrayidx192 to i8**
  %81 = load i8*, i8** %str193, align 8
  %tobool194 = icmp ne i8* %81, null
  br i1 %tobool194, label %if.then.195, label %if.else.200

if.then.195:                                      ; preds = %if.else.190
  %82 = load %struct.display*, %struct.display** @display, align 8
  %d_tcs196 = getelementptr inbounds %struct.display, %struct.display* %82, i32 0, i32 83
  %arrayidx197 = getelementptr inbounds [201 x %union.tcu], [201 x %union.tcu]* %d_tcs196, i32 0, i64 60
  %str198 = bitcast %union.tcu* %arrayidx197 to i8**
  %83 = load i8*, i8** %str198, align 8
  %84 = load i32, i32* %f.addr, align 4
  %and199 = and i32 %84, 7
  call void @AddCStr2(i8* %83, i32 %and199)
  br label %if.end.213

if.else.200:                                      ; preds = %if.else.190
  %85 = load %struct.display*, %struct.display** @display, align 8
  %d_tcs201 = getelementptr inbounds %struct.display, %struct.display* %85, i32 0, i32 83
  %arrayidx202 = getelementptr inbounds [201 x %union.tcu], [201 x %union.tcu]* %d_tcs201, i32 0, i64 62
  %str203 = bitcast %union.tcu* %arrayidx202 to i8**
  %86 = load i8*, i8** %str203, align 8
  %tobool204 = icmp ne i8* %86, null
  br i1 %tobool204, label %if.then.205, label %if.end.212

if.then.205:                                      ; preds = %if.else.200
  %87 = load %struct.display*, %struct.display** @display, align 8
  %d_tcs206 = getelementptr inbounds %struct.display, %struct.display* %87, i32 0, i32 83
  %arrayidx207 = getelementptr inbounds [201 x %union.tcu], [201 x %union.tcu]* %d_tcs206, i32 0, i64 62
  %str208 = bitcast %union.tcu* %arrayidx207 to i8**
  %88 = load i8*, i8** %str208, align 8
  %89 = load i32, i32* %f.addr, align 4
  %and209 = and i32 %89, 7
  %idxprom = sext i32 %and209 to i64
  %arrayidx210 = getelementptr inbounds [8 x i8], [8 x i8]* @SetColor.sftrans, i32 0, i64 %idxprom
  %90 = load i8, i8* %arrayidx210, align 1
  %conv211 = zext i8 %90 to i32
  call void @AddCStr2(i8* %88, i32 %conv211)
  br label %if.end.212

if.end.212:                                       ; preds = %if.then.205, %if.else.200
  br label %if.end.213

if.end.213:                                       ; preds = %if.end.212, %if.then.195
  br label %if.end.214

if.end.214:                                       ; preds = %if.end.213, %if.then.189
  br label %if.end.215

if.end.215:                                       ; preds = %if.end.214, %land.lhs.true.182, %cond.end.178
  %91 = load i32, i32* %b.addr, align 4
  %92 = load i32, i32* %ob, align 4
  %cmp216 = icmp ne i32 %91, %92
  br i1 %cmp216, label %land.lhs.true.218, label %if.end.252

land.lhs.true.218:                                ; preds = %if.end.215
  %93 = load i32, i32* %b.addr, align 4
  %94 = load i32, i32* %ob, align 4
  %or219 = or i32 %94, 8
  %cmp220 = icmp ne i32 %93, %or219
  br i1 %cmp220, label %if.then.222, label %if.end.252

if.then.222:                                      ; preds = %land.lhs.true.218
  %95 = load i32, i32* %b.addr, align 4
  %cmp223 = icmp eq i32 %95, -1
  br i1 %cmp223, label %if.then.225, label %if.else.226

if.then.225:                                      ; preds = %if.then.222
  call void @AddCStr(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.5, i32 0, i32 0))
  br label %if.end.251

if.else.226:                                      ; preds = %if.then.222
  %96 = load %struct.display*, %struct.display** @display, align 8
  %d_tcs227 = getelementptr inbounds %struct.display, %struct.display* %96, i32 0, i32 83
  %arrayidx228 = getelementptr inbounds [201 x %union.tcu], [201 x %union.tcu]* %d_tcs227, i32 0, i64 61
  %str229 = bitcast %union.tcu* %arrayidx228 to i8**
  %97 = load i8*, i8** %str229, align 8
  %tobool230 = icmp ne i8* %97, null
  br i1 %tobool230, label %if.then.231, label %if.else.236

if.then.231:                                      ; preds = %if.else.226
  %98 = load %struct.display*, %struct.display** @display, align 8
  %d_tcs232 = getelementptr inbounds %struct.display, %struct.display* %98, i32 0, i32 83
  %arrayidx233 = getelementptr inbounds [201 x %union.tcu], [201 x %union.tcu]* %d_tcs232, i32 0, i64 61
  %str234 = bitcast %union.tcu* %arrayidx233 to i8**
  %99 = load i8*, i8** %str234, align 8
  %100 = load i32, i32* %b.addr, align 4
  %and235 = and i32 %100, 7
  call void @AddCStr2(i8* %99, i32 %and235)
  br label %if.end.250

if.else.236:                                      ; preds = %if.else.226
  %101 = load %struct.display*, %struct.display** @display, align 8
  %d_tcs237 = getelementptr inbounds %struct.display, %struct.display* %101, i32 0, i32 83
  %arrayidx238 = getelementptr inbounds [201 x %union.tcu], [201 x %union.tcu]* %d_tcs237, i32 0, i64 63
  %str239 = bitcast %union.tcu* %arrayidx238 to i8**
  %102 = load i8*, i8** %str239, align 8
  %tobool240 = icmp ne i8* %102, null
  br i1 %tobool240, label %if.then.241, label %if.end.249

if.then.241:                                      ; preds = %if.else.236
  %103 = load %struct.display*, %struct.display** @display, align 8
  %d_tcs242 = getelementptr inbounds %struct.display, %struct.display* %103, i32 0, i32 83
  %arrayidx243 = getelementptr inbounds [201 x %union.tcu], [201 x %union.tcu]* %d_tcs242, i32 0, i64 63
  %str244 = bitcast %union.tcu* %arrayidx243 to i8**
  %104 = load i8*, i8** %str244, align 8
  %105 = load i32, i32* %b.addr, align 4
  %and245 = and i32 %105, 7
  %idxprom246 = sext i32 %and245 to i64
  %arrayidx247 = getelementptr inbounds [8 x i8], [8 x i8]* @SetColor.sftrans, i32 0, i64 %idxprom246
  %106 = load i8, i8* %arrayidx247, align 1
  %conv248 = zext i8 %106 to i32
  call void @AddCStr2(i8* %104, i32 %conv248)
  br label %if.end.249

if.end.249:                                       ; preds = %if.then.241, %if.else.236
  br label %if.end.250

if.end.250:                                       ; preds = %if.end.249, %if.then.231
  br label %if.end.251

if.end.251:                                       ; preds = %if.end.250, %if.then.225
  br label %if.end.252

if.end.252:                                       ; preds = %if.end.251, %land.lhs.true.218, %if.end.215
  %107 = load i32, i32* %f.addr, align 4
  %108 = load i32, i32* %of, align 4
  %cmp253 = icmp ne i32 %107, %108
  br i1 %cmp253, label %land.lhs.true.255, label %if.end.269

land.lhs.true.255:                                ; preds = %if.end.252
  %109 = load %struct.display*, %struct.display** @display, align 8
  %d_tcs256 = getelementptr inbounds %struct.display, %struct.display* %109, i32 0, i32 83
  %arrayidx257 = getelementptr inbounds [201 x %union.tcu], [201 x %union.tcu]* %d_tcs256, i32 0, i64 96
  %flg258 = bitcast %union.tcu* %arrayidx257 to i32*
  %110 = load i32, i32* %flg258, align 4
  %tobool259 = icmp ne i32 %110, 0
  br i1 %tobool259, label %land.lhs.true.260, label %if.end.269

land.lhs.true.260:                                ; preds = %land.lhs.true.255
  %111 = load i32, i32* %f.addr, align 4
  %and261 = and i32 %111, 8
  %cmp262 = icmp ne i32 %and261, 0
  br i1 %cmp262, label %land.lhs.true.264, label %if.end.269

land.lhs.true.264:                                ; preds = %land.lhs.true.260
  %112 = load i32, i32* %f.addr, align 4
  %cmp265 = icmp ne i32 %112, -1
  br i1 %cmp265, label %if.then.267, label %if.end.269

if.then.267:                                      ; preds = %land.lhs.true.264
  %113 = load i32, i32* %f.addr, align 4
  %and268 = and i32 %113, 7
  call void @AddCStr2(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.6, i32 0, i32 0), i32 %and268)
  br label %if.end.269

if.end.269:                                       ; preds = %if.then.267, %land.lhs.true.264, %land.lhs.true.260, %land.lhs.true.255, %if.end.252
  %114 = load i32, i32* %b.addr, align 4
  %115 = load i32, i32* %ob, align 4
  %cmp270 = icmp ne i32 %114, %115
  br i1 %cmp270, label %land.lhs.true.272, label %if.end.286

land.lhs.true.272:                                ; preds = %if.end.269
  %116 = load %struct.display*, %struct.display** @display, align 8
  %d_tcs273 = getelementptr inbounds %struct.display, %struct.display* %116, i32 0, i32 83
  %arrayidx274 = getelementptr inbounds [201 x %union.tcu], [201 x %union.tcu]* %d_tcs273, i32 0, i64 96
  %flg275 = bitcast %union.tcu* %arrayidx274 to i32*
  %117 = load i32, i32* %flg275, align 4
  %tobool276 = icmp ne i32 %117, 0
  br i1 %tobool276, label %land.lhs.true.277, label %if.end.286

land.lhs.true.277:                                ; preds = %land.lhs.true.272
  %118 = load i32, i32* %b.addr, align 4
  %and278 = and i32 %118, 8
  %cmp279 = icmp ne i32 %and278, 0
  br i1 %cmp279, label %land.lhs.true.281, label %if.end.286

land.lhs.true.281:                                ; preds = %land.lhs.true.277
  %119 = load i32, i32* %b.addr, align 4
  %cmp282 = icmp ne i32 %119, -1
  br i1 %cmp282, label %if.then.284, label %if.end.286

if.then.284:                                      ; preds = %land.lhs.true.281
  %120 = load i32, i32* %b.addr, align 4
  %and285 = and i32 %120, 7
  call void @AddCStr2(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.7, i32 0, i32 0), i32 %and285)
  br label %if.end.286

if.end.286:                                       ; preds = %if.then, %if.then.118, %if.then.284, %land.lhs.true.281, %land.lhs.true.277, %land.lhs.true.272, %if.end.269
  ret void
}

declare void @ApplyAttrColor(i32, %struct.mchar*) #1

; Function Attrs: nounwind uwtable
define void @SetRenditionMline(%struct.mline* %ml, i32 %x) #0 {
entry:
  %ml.addr = alloca %struct.mline*, align 8
  %x.addr = alloca i32, align 4
  %mc = alloca %struct.mchar, align 1
  %a = alloca i32, align 4
  %mc99 = alloca %struct.mchar, align 1
  store %struct.mline* %ml, %struct.mline** %ml.addr, align 8
  store i32 %x, i32* %x.addr, align 4
  %0 = load %struct.display*, %struct.display** @display, align 8
  %tobool = icmp ne %struct.display* %0, null
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  br label %if.end.164

if.end:                                           ; preds = %entry
  %1 = load i32, i32* @nattr2color, align 4
  %tobool1 = icmp ne i32 %1, 0
  br i1 %tobool1, label %land.lhs.true, label %if.end.22

land.lhs.true:                                    ; preds = %if.end
  %2 = load %struct.display*, %struct.display** @display, align 8
  %d_hascolor = getelementptr inbounds %struct.display, %struct.display* %2, i32 0, i32 86
  %3 = load i32, i32* %d_hascolor, align 4
  %tobool2 = icmp ne i32 %3, 0
  br i1 %tobool2, label %land.lhs.true.3, label %if.end.22

land.lhs.true.3:                                  ; preds = %land.lhs.true
  %4 = load i32, i32* %x.addr, align 4
  %idxprom = sext i32 %4 to i64
  %5 = load %struct.mline*, %struct.mline** %ml.addr, align 8
  %attr = getelementptr inbounds %struct.mline, %struct.mline* %5, i32 0, i32 1
  %6 = load i8*, i8** %attr, align 8
  %arrayidx = getelementptr inbounds i8, i8* %6, i64 %idxprom
  %7 = load i8, i8* %arrayidx, align 1
  %conv = zext i8 %7 to i32
  %8 = load i32, i32* @nattr2color, align 4
  %and = and i32 %conv, %8
  %cmp = icmp ne i32 %and, 0
  br i1 %cmp, label %if.then.5, label %if.end.22

if.then.5:                                        ; preds = %land.lhs.true.3
  br label %do.body

do.body:                                          ; preds = %if.then.5
  %9 = load i32, i32* %x.addr, align 4
  %idxprom6 = sext i32 %9 to i64
  %10 = load %struct.mline*, %struct.mline** %ml.addr, align 8
  %image = getelementptr inbounds %struct.mline, %struct.mline* %10, i32 0, i32 0
  %11 = load i8*, i8** %image, align 8
  %arrayidx7 = getelementptr inbounds i8, i8* %11, i64 %idxprom6
  %12 = load i8, i8* %arrayidx7, align 1
  %image8 = getelementptr inbounds %struct.mchar, %struct.mchar* %mc, i32 0, i32 0
  store i8 %12, i8* %image8, align 1
  %13 = load i32, i32* %x.addr, align 4
  %idxprom9 = sext i32 %13 to i64
  %14 = load %struct.mline*, %struct.mline** %ml.addr, align 8
  %attr10 = getelementptr inbounds %struct.mline, %struct.mline* %14, i32 0, i32 1
  %15 = load i8*, i8** %attr10, align 8
  %arrayidx11 = getelementptr inbounds i8, i8* %15, i64 %idxprom9
  %16 = load i8, i8* %arrayidx11, align 1
  %attr12 = getelementptr inbounds %struct.mchar, %struct.mchar* %mc, i32 0, i32 1
  store i8 %16, i8* %attr12, align 1
  %17 = load i32, i32* %x.addr, align 4
  %idxprom13 = sext i32 %17 to i64
  %18 = load %struct.mline*, %struct.mline** %ml.addr, align 8
  %font = getelementptr inbounds %struct.mline, %struct.mline* %18, i32 0, i32 2
  %19 = load i8*, i8** %font, align 8
  %arrayidx14 = getelementptr inbounds i8, i8* %19, i64 %idxprom13
  %20 = load i8, i8* %arrayidx14, align 1
  %font15 = getelementptr inbounds %struct.mchar, %struct.mchar* %mc, i32 0, i32 2
  store i8 %20, i8* %font15, align 1
  %21 = load i32, i32* %x.addr, align 4
  %idxprom16 = sext i32 %21 to i64
  %22 = load %struct.mline*, %struct.mline** %ml.addr, align 8
  %fontx = getelementptr inbounds %struct.mline, %struct.mline* %22, i32 0, i32 3
  %23 = load i8*, i8** %fontx, align 8
  %arrayidx17 = getelementptr inbounds i8, i8* %23, i64 %idxprom16
  %24 = load i8, i8* %arrayidx17, align 1
  %fontx18 = getelementptr inbounds %struct.mchar, %struct.mchar* %mc, i32 0, i32 3
  store i8 %24, i8* %fontx18, align 1
  %25 = load i32, i32* %x.addr, align 4
  %idxprom19 = sext i32 %25 to i64
  %26 = load %struct.mline*, %struct.mline** %ml.addr, align 8
  %color = getelementptr inbounds %struct.mline, %struct.mline* %26, i32 0, i32 4
  %27 = load i8*, i8** %color, align 8
  %arrayidx20 = getelementptr inbounds i8, i8* %27, i64 %idxprom19
  %28 = load i8, i8* %arrayidx20, align 1
  %color21 = getelementptr inbounds %struct.mchar, %struct.mchar* %mc, i32 0, i32 4
  store i8 %28, i8* %color21, align 1
  %mbcs = getelementptr inbounds %struct.mchar, %struct.mchar* %mc, i32 0, i32 5
  store i8 0, i8* %mbcs, align 1
  br label %do.end

do.end:                                           ; preds = %do.body
  call void @SetRendition(%struct.mchar* %mc)
  br label %if.end.164

if.end.22:                                        ; preds = %land.lhs.true.3, %land.lhs.true, %if.end
  %29 = load %struct.display*, %struct.display** @display, align 8
  %d_hascolor23 = getelementptr inbounds %struct.display, %struct.display* %29, i32 0, i32 86
  %30 = load i32, i32* %d_hascolor23, align 4
  %tobool24 = icmp ne i32 %30, 0
  br i1 %tobool24, label %land.lhs.true.25, label %if.else

land.lhs.true.25:                                 ; preds = %if.end.22
  %31 = load %struct.display*, %struct.display** @display, align 8
  %d_tcs = getelementptr inbounds %struct.display, %struct.display* %31, i32 0, i32 83
  %arrayidx26 = getelementptr inbounds [201 x %union.tcu], [201 x %union.tcu]* %d_tcs, i32 0, i64 68
  %flg = bitcast %union.tcu* %arrayidx26 to i32*
  %32 = load i32, i32* %flg, align 4
  %tobool27 = icmp ne i32 %32, 0
  br i1 %tobool27, label %land.lhs.true.28, label %if.else

land.lhs.true.28:                                 ; preds = %land.lhs.true.25
  %33 = load i32, i32* %x.addr, align 4
  %idxprom29 = sext i32 %33 to i64
  %34 = load %struct.mline*, %struct.mline** %ml.addr, align 8
  %attr30 = getelementptr inbounds %struct.mline, %struct.mline* %34, i32 0, i32 1
  %35 = load i8*, i8** %attr30, align 8
  %arrayidx31 = getelementptr inbounds i8, i8* %35, i64 %idxprom29
  %36 = load i8, i8* %arrayidx31, align 1
  %conv32 = zext i8 %36 to i32
  %and33 = and i32 %conv32, 192
  %tobool34 = icmp ne i32 %and33, 0
  br i1 %tobool34, label %if.then.35, label %if.else

if.then.35:                                       ; preds = %land.lhs.true.28
  %37 = load i32, i32* %x.addr, align 4
  %idxprom36 = sext i32 %37 to i64
  %38 = load %struct.mline*, %struct.mline** %ml.addr, align 8
  %attr37 = getelementptr inbounds %struct.mline, %struct.mline* %38, i32 0, i32 1
  %39 = load i8*, i8** %attr37, align 8
  %arrayidx38 = getelementptr inbounds i8, i8* %39, i64 %idxprom36
  %40 = load i8, i8* %arrayidx38, align 1
  %conv39 = zext i8 %40 to i32
  store i32 %conv39, i32* %a, align 4
  %41 = load i32, i32* %x.addr, align 4
  %idxprom40 = sext i32 %41 to i64
  %42 = load %struct.mline*, %struct.mline** %ml.addr, align 8
  %attr41 = getelementptr inbounds %struct.mline, %struct.mline* %42, i32 0, i32 1
  %43 = load i8*, i8** %attr41, align 8
  %arrayidx42 = getelementptr inbounds i8, i8* %43, i64 %idxprom40
  %44 = load i8, i8* %arrayidx42, align 1
  %conv43 = zext i8 %44 to i32
  %and44 = and i32 %conv43, 64
  %tobool45 = icmp ne i32 %and44, 0
  br i1 %tobool45, label %land.lhs.true.46, label %if.end.51

land.lhs.true.46:                                 ; preds = %if.then.35
  %45 = load %struct.display*, %struct.display** @display, align 8
  %d_tcs47 = getelementptr inbounds %struct.display, %struct.display* %45, i32 0, i32 83
  %arrayidx48 = getelementptr inbounds [201 x %union.tcu], [201 x %union.tcu]* %d_tcs47, i32 0, i64 49
  %str = bitcast %union.tcu* %arrayidx48 to i8**
  %46 = load i8*, i8** %str, align 8
  %tobool49 = icmp ne i8* %46, null
  br i1 %tobool49, label %if.then.50, label %if.end.51

if.then.50:                                       ; preds = %land.lhs.true.46
  %47 = load i32, i32* %a, align 4
  %or = or i32 %47, 4
  store i32 %or, i32* %a, align 4
  br label %if.end.51

if.end.51:                                        ; preds = %if.then.50, %land.lhs.true.46, %if.then.35
  %48 = load i32, i32* %x.addr, align 4
  %idxprom52 = sext i32 %48 to i64
  %49 = load %struct.mline*, %struct.mline** %ml.addr, align 8
  %attr53 = getelementptr inbounds %struct.mline, %struct.mline* %49, i32 0, i32 1
  %50 = load i8*, i8** %attr53, align 8
  %arrayidx54 = getelementptr inbounds i8, i8* %50, i64 %idxprom52
  %51 = load i8, i8* %arrayidx54, align 1
  %conv55 = zext i8 %51 to i32
  %and56 = and i32 %conv55, 128
  %tobool57 = icmp ne i32 %and56, 0
  br i1 %tobool57, label %land.lhs.true.58, label %if.end.65

land.lhs.true.58:                                 ; preds = %if.end.51
  %52 = load %struct.display*, %struct.display** @display, align 8
  %d_tcs59 = getelementptr inbounds %struct.display, %struct.display* %52, i32 0, i32 83
  %arrayidx60 = getelementptr inbounds [201 x %union.tcu], [201 x %union.tcu]* %d_tcs59, i32 0, i64 52
  %str61 = bitcast %union.tcu* %arrayidx60 to i8**
  %53 = load i8*, i8** %str61, align 8
  %tobool62 = icmp ne i8* %53, null
  br i1 %tobool62, label %if.then.63, label %if.end.65

if.then.63:                                       ; preds = %land.lhs.true.58
  %54 = load i32, i32* %a, align 4
  %or64 = or i32 %54, 32
  store i32 %or64, i32* %a, align 4
  br label %if.end.65

if.end.65:                                        ; preds = %if.then.63, %land.lhs.true.58, %if.end.51
  %55 = load %struct.display*, %struct.display** @display, align 8
  %d_rend = getelementptr inbounds %struct.display, %struct.display* %55, i32 0, i32 24
  %attr66 = getelementptr inbounds %struct.mchar, %struct.mchar* %d_rend, i32 0, i32 1
  %56 = load i8, i8* %attr66, align 1
  %conv67 = zext i8 %56 to i32
  %57 = load i32, i32* %a, align 4
  %cmp68 = icmp ne i32 %conv67, %57
  br i1 %cmp68, label %if.then.70, label %if.end.71

if.then.70:                                       ; preds = %if.end.65
  %58 = load i32, i32* %a, align 4
  call void @SetAttr(i32 %58)
  br label %if.end.71

if.end.71:                                        ; preds = %if.then.70, %if.end.65
  br label %if.end.87

if.else:                                          ; preds = %land.lhs.true.28, %land.lhs.true.25, %if.end.22
  %59 = load %struct.display*, %struct.display** @display, align 8
  %d_rend72 = getelementptr inbounds %struct.display, %struct.display* %59, i32 0, i32 24
  %attr73 = getelementptr inbounds %struct.mchar, %struct.mchar* %d_rend72, i32 0, i32 1
  %60 = load i8, i8* %attr73, align 1
  %conv74 = zext i8 %60 to i32
  %61 = load i32, i32* %x.addr, align 4
  %idxprom75 = sext i32 %61 to i64
  %62 = load %struct.mline*, %struct.mline** %ml.addr, align 8
  %attr76 = getelementptr inbounds %struct.mline, %struct.mline* %62, i32 0, i32 1
  %63 = load i8*, i8** %attr76, align 8
  %arrayidx77 = getelementptr inbounds i8, i8* %63, i64 %idxprom75
  %64 = load i8, i8* %arrayidx77, align 1
  %conv78 = zext i8 %64 to i32
  %cmp79 = icmp ne i32 %conv74, %conv78
  br i1 %cmp79, label %if.then.81, label %if.end.86

if.then.81:                                       ; preds = %if.else
  %65 = load i32, i32* %x.addr, align 4
  %idxprom82 = sext i32 %65 to i64
  %66 = load %struct.mline*, %struct.mline** %ml.addr, align 8
  %attr83 = getelementptr inbounds %struct.mline, %struct.mline* %66, i32 0, i32 1
  %67 = load i8*, i8** %attr83, align 8
  %arrayidx84 = getelementptr inbounds i8, i8* %67, i64 %idxprom82
  %68 = load i8, i8* %arrayidx84, align 1
  %conv85 = zext i8 %68 to i32
  call void @SetAttr(i32 %conv85)
  br label %if.end.86

if.end.86:                                        ; preds = %if.then.81, %if.else
  br label %if.end.87

if.end.87:                                        ; preds = %if.end.86, %if.end.71
  %69 = load %struct.display*, %struct.display** @display, align 8
  %d_rend88 = getelementptr inbounds %struct.display, %struct.display* %69, i32 0, i32 24
  %color89 = getelementptr inbounds %struct.mchar, %struct.mchar* %d_rend88, i32 0, i32 4
  %70 = load i8, i8* %color89, align 1
  %conv90 = zext i8 %70 to i32
  %71 = load i32, i32* %x.addr, align 4
  %idxprom91 = sext i32 %71 to i64
  %72 = load %struct.mline*, %struct.mline** %ml.addr, align 8
  %color92 = getelementptr inbounds %struct.mline, %struct.mline* %72, i32 0, i32 4
  %73 = load i8*, i8** %color92, align 8
  %arrayidx93 = getelementptr inbounds i8, i8* %73, i64 %idxprom91
  %74 = load i8, i8* %arrayidx93, align 1
  %conv94 = zext i8 %74 to i32
  %cmp95 = icmp ne i32 %conv90, %conv94
  br i1 %cmp95, label %if.then.98, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.end.87
  %75 = load %struct.display*, %struct.display** @display, align 8
  %d_col16change = getelementptr inbounds %struct.display, %struct.display* %75, i32 0, i32 25
  %76 = load i32, i32* %d_col16change, align 4
  %tobool97 = icmp ne i32 %76, 0
  br i1 %tobool97, label %if.then.98, label %if.end.140

if.then.98:                                       ; preds = %lor.lhs.false, %if.end.87
  br label %do.body.100

do.body.100:                                      ; preds = %if.then.98
  %77 = load i32, i32* %x.addr, align 4
  %idxprom101 = sext i32 %77 to i64
  %78 = load %struct.mline*, %struct.mline** %ml.addr, align 8
  %image102 = getelementptr inbounds %struct.mline, %struct.mline* %78, i32 0, i32 0
  %79 = load i8*, i8** %image102, align 8
  %arrayidx103 = getelementptr inbounds i8, i8* %79, i64 %idxprom101
  %80 = load i8, i8* %arrayidx103, align 1
  %image104 = getelementptr inbounds %struct.mchar, %struct.mchar* %mc99, i32 0, i32 0
  store i8 %80, i8* %image104, align 1
  %81 = load i32, i32* %x.addr, align 4
  %idxprom105 = sext i32 %81 to i64
  %82 = load %struct.mline*, %struct.mline** %ml.addr, align 8
  %attr106 = getelementptr inbounds %struct.mline, %struct.mline* %82, i32 0, i32 1
  %83 = load i8*, i8** %attr106, align 8
  %arrayidx107 = getelementptr inbounds i8, i8* %83, i64 %idxprom105
  %84 = load i8, i8* %arrayidx107, align 1
  %attr108 = getelementptr inbounds %struct.mchar, %struct.mchar* %mc99, i32 0, i32 1
  store i8 %84, i8* %attr108, align 1
  %85 = load i32, i32* %x.addr, align 4
  %idxprom109 = sext i32 %85 to i64
  %86 = load %struct.mline*, %struct.mline** %ml.addr, align 8
  %font110 = getelementptr inbounds %struct.mline, %struct.mline* %86, i32 0, i32 2
  %87 = load i8*, i8** %font110, align 8
  %arrayidx111 = getelementptr inbounds i8, i8* %87, i64 %idxprom109
  %88 = load i8, i8* %arrayidx111, align 1
  %font112 = getelementptr inbounds %struct.mchar, %struct.mchar* %mc99, i32 0, i32 2
  store i8 %88, i8* %font112, align 1
  %89 = load i32, i32* %x.addr, align 4
  %idxprom113 = sext i32 %89 to i64
  %90 = load %struct.mline*, %struct.mline** %ml.addr, align 8
  %fontx114 = getelementptr inbounds %struct.mline, %struct.mline* %90, i32 0, i32 3
  %91 = load i8*, i8** %fontx114, align 8
  %arrayidx115 = getelementptr inbounds i8, i8* %91, i64 %idxprom113
  %92 = load i8, i8* %arrayidx115, align 1
  %fontx116 = getelementptr inbounds %struct.mchar, %struct.mchar* %mc99, i32 0, i32 3
  store i8 %92, i8* %fontx116, align 1
  %93 = load i32, i32* %x.addr, align 4
  %idxprom117 = sext i32 %93 to i64
  %94 = load %struct.mline*, %struct.mline** %ml.addr, align 8
  %color118 = getelementptr inbounds %struct.mline, %struct.mline* %94, i32 0, i32 4
  %95 = load i8*, i8** %color118, align 8
  %arrayidx119 = getelementptr inbounds i8, i8* %95, i64 %idxprom117
  %96 = load i8, i8* %arrayidx119, align 1
  %color120 = getelementptr inbounds %struct.mchar, %struct.mchar* %mc99, i32 0, i32 4
  store i8 %96, i8* %color120, align 1
  %mbcs121 = getelementptr inbounds %struct.mchar, %struct.mchar* %mc99, i32 0, i32 5
  store i8 0, i8* %mbcs121, align 1
  br label %do.end.122

do.end.122:                                       ; preds = %do.body.100
  %color123 = getelementptr inbounds %struct.mchar, %struct.mchar* %mc99, i32 0, i32 4
  %97 = load i8, i8* %color123, align 1
  %conv124 = zext i8 %97 to i32
  %and125 = and i32 %conv124, 15
  %attr126 = getelementptr inbounds %struct.mchar, %struct.mchar* %mc99, i32 0, i32 1
  %98 = load i8, i8* %attr126, align 1
  %conv127 = zext i8 %98 to i32
  %and128 = and i32 %conv127, 64
  %tobool129 = icmp ne i32 %and128, 0
  %cond = select i1 %tobool129, i32 256, i32 0
  %or130 = or i32 %and125, %cond
  %color131 = getelementptr inbounds %struct.mchar, %struct.mchar* %mc99, i32 0, i32 4
  %99 = load i8, i8* %color131, align 1
  %conv132 = zext i8 %99 to i32
  %and133 = and i32 %conv132, 240
  %shr = ashr i32 %and133, 4
  %attr134 = getelementptr inbounds %struct.mchar, %struct.mchar* %mc99, i32 0, i32 1
  %100 = load i8, i8* %attr134, align 1
  %conv135 = zext i8 %100 to i32
  %and136 = and i32 %conv135, 128
  %tobool137 = icmp ne i32 %and136, 0
  %cond138 = select i1 %tobool137, i32 256, i32 0
  %or139 = or i32 %shr, %cond138
  call void @SetColor(i32 %or130, i32 %or139)
  br label %if.end.140

if.end.140:                                       ; preds = %do.end.122, %lor.lhs.false
  %101 = load %struct.display*, %struct.display** @display, align 8
  %d_rend141 = getelementptr inbounds %struct.display, %struct.display* %101, i32 0, i32 24
  %font142 = getelementptr inbounds %struct.mchar, %struct.mchar* %d_rend141, i32 0, i32 2
  %102 = load i8, i8* %font142, align 1
  %conv143 = zext i8 %102 to i32
  %103 = load i32, i32* %x.addr, align 4
  %idxprom144 = sext i32 %103 to i64
  %104 = load %struct.mline*, %struct.mline** %ml.addr, align 8
  %font145 = getelementptr inbounds %struct.mline, %struct.mline* %104, i32 0, i32 2
  %105 = load i8*, i8** %font145, align 8
  %arrayidx146 = getelementptr inbounds i8, i8* %105, i64 %idxprom144
  %106 = load i8, i8* %arrayidx146, align 1
  %conv147 = zext i8 %106 to i32
  %cmp148 = icmp ne i32 %conv143, %conv147
  br i1 %cmp148, label %if.then.150, label %if.end.155

if.then.150:                                      ; preds = %if.end.140
  %107 = load i32, i32* %x.addr, align 4
  %idxprom151 = sext i32 %107 to i64
  %108 = load %struct.mline*, %struct.mline** %ml.addr, align 8
  %font152 = getelementptr inbounds %struct.mline, %struct.mline* %108, i32 0, i32 2
  %109 = load i8*, i8** %font152, align 8
  %arrayidx153 = getelementptr inbounds i8, i8* %109, i64 %idxprom151
  %110 = load i8, i8* %arrayidx153, align 1
  %conv154 = zext i8 %110 to i32
  call void @SetFont(i32 %conv154)
  br label %if.end.155

if.end.155:                                       ; preds = %if.then.150, %if.end.140
  %111 = load %struct.display*, %struct.display** @display, align 8
  %d_encoding = getelementptr inbounds %struct.display, %struct.display* %111, i32 0, i32 28
  %112 = load i32, i32* %d_encoding, align 4
  %cmp156 = icmp eq i32 %112, 8
  br i1 %cmp156, label %if.then.158, label %if.end.164

if.then.158:                                      ; preds = %if.end.155
  %113 = load i32, i32* %x.addr, align 4
  %idxprom159 = sext i32 %113 to i64
  %114 = load %struct.mline*, %struct.mline** %ml.addr, align 8
  %fontx160 = getelementptr inbounds %struct.mline, %struct.mline* %114, i32 0, i32 3
  %115 = load i8*, i8** %fontx160, align 8
  %arrayidx161 = getelementptr inbounds i8, i8* %115, i64 %idxprom159
  %116 = load i8, i8* %arrayidx161, align 1
  %117 = load %struct.display*, %struct.display** @display, align 8
  %d_rend162 = getelementptr inbounds %struct.display, %struct.display* %117, i32 0, i32 24
  %fontx163 = getelementptr inbounds %struct.mchar, %struct.mchar* %d_rend162, i32 0, i32 3
  store i8 %116, i8* %fontx163, align 1
  br label %if.end.164

if.end.164:                                       ; preds = %if.then, %do.end, %if.then.158, %if.end.155
  ret void
}

; Function Attrs: nounwind uwtable
define void @MakeStatus(i8* %msg) #0 {
entry:
  %msg.addr = alloca i8*, align 8
  %s = alloca i8*, align 8
  %t = alloca i8*, align 8
  %max = alloca i32, align 4
  %buf = alloca i8*, align 8
  %olddisplay = alloca %struct.display*, align 8
  %oldflayer = alloca %struct.layer*, align 8
  store i8* %msg, i8** %msg.addr, align 8
  %0 = load %struct.display*, %struct.display** @display, align 8
  %tobool = icmp ne %struct.display* %0, null
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  br label %if.end.213

if.end:                                           ; preds = %entry
  %1 = load %struct.display*, %struct.display** @display, align 8
  %d_blocked = getelementptr inbounds %struct.display, %struct.display* %1, i32 0, i32 102
  %2 = load i32, i32* %d_blocked, align 4
  %tobool1 = icmp ne i32 %2, 0
  br i1 %tobool1, label %if.then.2, label %if.end.3

if.then.2:                                        ; preds = %if.end
  br label %if.end.213

if.end.3:                                         ; preds = %if.end
  %3 = load %struct.display*, %struct.display** @display, align 8
  %d_tcinited = getelementptr inbounds %struct.display, %struct.display* %3, i32 0, i32 15
  %4 = load i8, i8* %d_tcinited, align 1
  %tobool4 = icmp ne i8 %4, 0
  br i1 %tobool4, label %if.end.9, label %if.then.5

if.then.5:                                        ; preds = %if.end.3
  br label %do.body

do.body:                                          ; preds = %if.then.5
  br label %do.end

do.end:                                           ; preds = %do.body
  %5 = load %struct.display*, %struct.display** @display, align 8
  %d_processinputdata = getelementptr inbounds %struct.display, %struct.display* %5, i32 0, i32 7
  %6 = load i8*, i8** %d_processinputdata, align 8
  %tobool6 = icmp ne i8* %6, null
  br i1 %tobool6, label %if.then.7, label %if.end.8

if.then.7:                                        ; preds = %do.end
  br label %if.end.213

if.end.8:                                         ; preds = %do.end
  %7 = load i8*, i8** %msg.addr, align 8
  call void @AddStr(i8* %7)
  call void @AddStr(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.8, i32 0, i32 0))
  call void @Flush(i32 0)
  br label %if.end.213

if.end.9:                                         ; preds = %if.end.3
  %8 = load i32, i32* @use_hardstatus, align 4
  %tobool10 = icmp ne i32 %8, 0
  br i1 %tobool10, label %lor.lhs.false, label %if.then.12

lor.lhs.false:                                    ; preds = %if.end.9
  %9 = load %struct.display*, %struct.display** @display, align 8
  %d_tcs = getelementptr inbounds %struct.display, %struct.display* %9, i32 0, i32 83
  %arrayidx = getelementptr inbounds [201 x %union.tcu], [201 x %union.tcu]* %d_tcs, i32 0, i64 75
  %flg = bitcast %union.tcu* %arrayidx to i32*
  %10 = load i32, i32* %flg, align 4
  %tobool11 = icmp ne i32 %10, 0
  br i1 %tobool11, label %if.else, label %if.then.12

if.then.12:                                       ; preds = %lor.lhs.false, %if.end.9
  %11 = load %struct.display*, %struct.display** @display, align 8
  %d_width = getelementptr inbounds %struct.display, %struct.display* %11, i32 0, i32 16
  %12 = load i32, i32* %d_width, align 4
  store i32 %12, i32* %max, align 4
  %13 = load %struct.display*, %struct.display** @display, align 8
  %d_tcs13 = getelementptr inbounds %struct.display, %struct.display* %13, i32 0, i32 83
  %arrayidx14 = getelementptr inbounds [201 x %union.tcu], [201 x %union.tcu]* %d_tcs13, i32 0, i64 87
  %flg15 = bitcast %union.tcu* %arrayidx14 to i32*
  %14 = load i32, i32* %flg15, align 4
  %cmp = icmp eq i32 %14, 0
  br i1 %cmp, label %if.then.16, label %if.end.17

if.then.16:                                       ; preds = %if.then.12
  %15 = load i32, i32* %max, align 4
  %dec = add nsw i32 %15, -1
  store i32 %dec, i32* %max, align 4
  br label %if.end.17

if.end.17:                                        ; preds = %if.then.16, %if.then.12
  br label %if.end.29

if.else:                                          ; preds = %lor.lhs.false
  %16 = load %struct.display*, %struct.display** @display, align 8
  %d_tcs18 = getelementptr inbounds %struct.display, %struct.display* %16, i32 0, i32 83
  %arrayidx19 = getelementptr inbounds [201 x %union.tcu], [201 x %union.tcu]* %d_tcs18, i32 0, i64 76
  %num = bitcast %union.tcu* %arrayidx19 to i32*
  %17 = load i32, i32* %num, align 4
  %cmp20 = icmp sgt i32 %17, 0
  br i1 %cmp20, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.else
  %18 = load %struct.display*, %struct.display** @display, align 8
  %d_tcs21 = getelementptr inbounds %struct.display, %struct.display* %18, i32 0, i32 83
  %arrayidx22 = getelementptr inbounds [201 x %union.tcu], [201 x %union.tcu]* %d_tcs21, i32 0, i64 76
  %num23 = bitcast %union.tcu* %arrayidx22 to i32*
  %19 = load i32, i32* %num23, align 4
  br label %cond.end

cond.false:                                       ; preds = %if.else
  %20 = load %struct.display*, %struct.display** @display, align 8
  %d_width24 = getelementptr inbounds %struct.display, %struct.display* %20, i32 0, i32 16
  %21 = load i32, i32* %d_width24, align 4
  %22 = load %struct.display*, %struct.display** @display, align 8
  %d_tcs25 = getelementptr inbounds %struct.display, %struct.display* %22, i32 0, i32 83
  %arrayidx26 = getelementptr inbounds [201 x %union.tcu], [201 x %union.tcu]* %d_tcs25, i32 0, i64 87
  %flg27 = bitcast %union.tcu* %arrayidx26 to i32*
  %23 = load i32, i32* %flg27, align 4
  %tobool28 = icmp ne i32 %23, 0
  %lnot = xor i1 %tobool28, true
  %lnot.ext = zext i1 %lnot to i32
  %sub = sub nsw i32 %21, %lnot.ext
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %19, %cond.true ], [ %sub, %cond.false ]
  store i32 %cond, i32* %max, align 4
  br label %if.end.29

if.end.29:                                        ; preds = %cond.end, %if.end.17
  %24 = load %struct.display*, %struct.display** @display, align 8
  %d_status = getelementptr inbounds %struct.display, %struct.display* %24, i32 0, i32 43
  %25 = load i32, i32* %d_status, align 4
  %tobool30 = icmp ne i32 %25, 0
  br i1 %tobool30, label %if.then.31, label %if.end.40

if.then.31:                                       ; preds = %if.end.29
  %26 = load i8*, i8** %msg.addr, align 8
  %27 = load %struct.display*, %struct.display** @display, align 8
  %d_status_lastmsg = getelementptr inbounds %struct.display, %struct.display* %27, i32 0, i32 46
  %28 = load i8*, i8** %d_status_lastmsg, align 8
  %call = call i32 @strcmp(i8* %26, i8* %28) #9
  %cmp32 = icmp eq i32 %call, 0
  br i1 %cmp32, label %if.then.33, label %if.end.39

if.then.33:                                       ; preds = %if.then.31
  br label %do.body.34

do.body.34:                                       ; preds = %if.then.33
  br label %do.end.35

do.end.35:                                        ; preds = %do.body.34
  %29 = load %struct.display*, %struct.display** @display, align 8
  %d_status_obufpos = getelementptr inbounds %struct.display, %struct.display* %29, i32 0, i32 52
  %30 = load i32, i32* %d_status_obufpos, align 4
  %tobool36 = icmp ne i32 %30, 0
  br i1 %tobool36, label %if.end.38, label %if.then.37

if.then.37:                                       ; preds = %do.end.35
  %31 = load %struct.display*, %struct.display** @display, align 8
  %d_statusev = getelementptr inbounds %struct.display, %struct.display* %31, i32 0, i32 53
  %32 = load i32, i32* @MsgWait, align 4
  call void @SetTimeout(%struct.event* %d_statusev, i32 %32)
  br label %if.end.38

if.end.38:                                        ; preds = %if.then.37, %do.end.35
  br label %if.end.213

if.end.39:                                        ; preds = %if.then.31
  call void @RemoveStatusMinWait()
  br label %if.end.40

if.end.40:                                        ; preds = %if.end.39, %if.end.29
  %33 = load i8*, i8** %msg.addr, align 8
  store i8* %33, i8** %t, align 8
  store i8* %33, i8** %s, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end.40
  %34 = load i8*, i8** %s, align 8
  %35 = load i8, i8* %34, align 1
  %conv = sext i8 %35 to i32
  %tobool41 = icmp ne i32 %conv, 0
  br i1 %tobool41, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %for.cond
  %36 = load i8*, i8** %t, align 8
  %37 = load i8*, i8** %msg.addr, align 8
  %sub.ptr.lhs.cast = ptrtoint i8* %36 to i64
  %sub.ptr.rhs.cast = ptrtoint i8* %37 to i64
  %sub.ptr.sub = sub i64 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast
  %38 = load i32, i32* %max, align 4
  %conv42 = sext i32 %38 to i64
  %cmp43 = icmp slt i64 %sub.ptr.sub, %conv42
  br label %land.end

land.end:                                         ; preds = %land.rhs, %for.cond
  %39 = phi i1 [ false, %for.cond ], [ %cmp43, %land.rhs ]
  br i1 %39, label %for.body, label %for.end

for.body:                                         ; preds = %land.end
  %40 = load i8*, i8** %s, align 8
  %41 = load i8, i8* %40, align 1
  %conv45 = sext i8 %41 to i32
  %cmp46 = icmp eq i32 %conv45, 7
  br i1 %cmp46, label %if.then.48, label %if.else.51

if.then.48:                                       ; preds = %for.body
  %42 = load %struct.display*, %struct.display** @display, align 8
  %d_tcs49 = getelementptr inbounds %struct.display, %struct.display* %42, i32 0, i32 83
  %arrayidx50 = getelementptr inbounds [201 x %union.tcu], [201 x %union.tcu]* %d_tcs49, i32 0, i64 42
  %str = bitcast %union.tcu* %arrayidx50 to i8**
  %43 = load i8*, i8** %str, align 8
  call void @AddCStr(i8* %43)
  br label %if.end.60

if.else.51:                                       ; preds = %for.body
  %44 = load i8*, i8** %s, align 8
  %45 = load i8, i8* %44, align 1
  %conv52 = zext i8 %45 to i32
  %cmp53 = icmp sge i32 %conv52, 32
  br i1 %cmp53, label %land.lhs.true, label %if.end.59

land.lhs.true:                                    ; preds = %if.else.51
  %46 = load i8*, i8** %s, align 8
  %47 = load i8, i8* %46, align 1
  %conv55 = sext i8 %47 to i32
  %cmp56 = icmp ne i32 %conv55, 127
  br i1 %cmp56, label %if.then.58, label %if.end.59

if.then.58:                                       ; preds = %land.lhs.true
  %48 = load i8*, i8** %s, align 8
  %49 = load i8, i8* %48, align 1
  %50 = load i8*, i8** %t, align 8
  %incdec.ptr = getelementptr inbounds i8, i8* %50, i32 1
  store i8* %incdec.ptr, i8** %t, align 8
  store i8 %49, i8* %50, align 1
  br label %if.end.59

if.end.59:                                        ; preds = %if.then.58, %land.lhs.true, %if.else.51
  br label %if.end.60

if.end.60:                                        ; preds = %if.end.59, %if.then.48
  br label %for.inc

for.inc:                                          ; preds = %if.end.60
  %51 = load i8*, i8** %s, align 8
  %incdec.ptr61 = getelementptr inbounds i8, i8* %51, i32 1
  store i8* %incdec.ptr61, i8** %s, align 8
  br label %for.cond

for.end:                                          ; preds = %land.end
  %52 = load i8*, i8** %t, align 8
  store i8 0, i8* %52, align 1
  %53 = load i8*, i8** %t, align 8
  %54 = load i8*, i8** %msg.addr, align 8
  %cmp62 = icmp eq i8* %53, %54
  br i1 %cmp62, label %if.then.64, label %if.end.65

if.then.64:                                       ; preds = %for.end
  br label %if.end.213

if.end.65:                                        ; preds = %for.end
  %55 = load i8*, i8** %t, align 8
  %56 = load i8*, i8** %msg.addr, align 8
  %sub.ptr.lhs.cast66 = ptrtoint i8* %55 to i64
  %sub.ptr.rhs.cast67 = ptrtoint i8* %56 to i64
  %sub.ptr.sub68 = sub i64 %sub.ptr.lhs.cast66, %sub.ptr.rhs.cast67
  %57 = load %struct.display*, %struct.display** @display, align 8
  %d_status_buflen = getelementptr inbounds %struct.display, %struct.display* %57, i32 0, i32 47
  %58 = load i32, i32* %d_status_buflen, align 4
  %conv69 = sext i32 %58 to i64
  %cmp70 = icmp sge i64 %sub.ptr.sub68, %conv69
  br i1 %cmp70, label %if.then.72, label %if.end.98

if.then.72:                                       ; preds = %if.end.65
  %59 = load %struct.display*, %struct.display** @display, align 8
  %d_status_lastmsg73 = getelementptr inbounds %struct.display, %struct.display* %59, i32 0, i32 46
  %60 = load i8*, i8** %d_status_lastmsg73, align 8
  %tobool74 = icmp ne i8* %60, null
  br i1 %tobool74, label %if.then.75, label %if.else.81

if.then.75:                                       ; preds = %if.then.72
  %61 = load %struct.display*, %struct.display** @display, align 8
  %d_status_lastmsg76 = getelementptr inbounds %struct.display, %struct.display* %61, i32 0, i32 46
  %62 = load i8*, i8** %d_status_lastmsg76, align 8
  %63 = load i8*, i8** %t, align 8
  %64 = load i8*, i8** %msg.addr, align 8
  %sub.ptr.lhs.cast77 = ptrtoint i8* %63 to i64
  %sub.ptr.rhs.cast78 = ptrtoint i8* %64 to i64
  %sub.ptr.sub79 = sub i64 %sub.ptr.lhs.cast77, %sub.ptr.rhs.cast78
  %add = add nsw i64 %sub.ptr.sub79, 1
  %call80 = call i8* @realloc(i8* %62, i64 %add) #3
  store i8* %call80, i8** %buf, align 8
  br label %if.end.87

if.else.81:                                       ; preds = %if.then.72
  %65 = load i8*, i8** %t, align 8
  %66 = load i8*, i8** %msg.addr, align 8
  %sub.ptr.lhs.cast82 = ptrtoint i8* %65 to i64
  %sub.ptr.rhs.cast83 = ptrtoint i8* %66 to i64
  %sub.ptr.sub84 = sub i64 %sub.ptr.lhs.cast82, %sub.ptr.rhs.cast83
  %add85 = add nsw i64 %sub.ptr.sub84, 1
  %call86 = call noalias i8* @malloc(i64 %add85) #3
  store i8* %call86, i8** %buf, align 8
  br label %if.end.87

if.end.87:                                        ; preds = %if.else.81, %if.then.75
  %67 = load i8*, i8** %buf, align 8
  %tobool88 = icmp ne i8* %67, null
  br i1 %tobool88, label %if.then.89, label %if.end.97

if.then.89:                                       ; preds = %if.end.87
  %68 = load i8*, i8** %buf, align 8
  %69 = load %struct.display*, %struct.display** @display, align 8
  %d_status_lastmsg90 = getelementptr inbounds %struct.display, %struct.display* %69, i32 0, i32 46
  store i8* %68, i8** %d_status_lastmsg90, align 8
  %70 = load i8*, i8** %t, align 8
  %71 = load i8*, i8** %msg.addr, align 8
  %sub.ptr.lhs.cast91 = ptrtoint i8* %70 to i64
  %sub.ptr.rhs.cast92 = ptrtoint i8* %71 to i64
  %sub.ptr.sub93 = sub i64 %sub.ptr.lhs.cast91, %sub.ptr.rhs.cast92
  %add94 = add nsw i64 %sub.ptr.sub93, 1
  %conv95 = trunc i64 %add94 to i32
  %72 = load %struct.display*, %struct.display** @display, align 8
  %d_status_buflen96 = getelementptr inbounds %struct.display, %struct.display* %72, i32 0, i32 47
  store i32 %conv95, i32* %d_status_buflen96, align 4
  br label %if.end.97

if.end.97:                                        ; preds = %if.then.89, %if.end.87
  br label %if.end.98

if.end.98:                                        ; preds = %if.end.97, %if.end.65
  %73 = load i8*, i8** %t, align 8
  %74 = load i8*, i8** %msg.addr, align 8
  %sub.ptr.lhs.cast99 = ptrtoint i8* %73 to i64
  %sub.ptr.rhs.cast100 = ptrtoint i8* %74 to i64
  %sub.ptr.sub101 = sub i64 %sub.ptr.lhs.cast99, %sub.ptr.rhs.cast100
  %75 = load %struct.display*, %struct.display** @display, align 8
  %d_status_buflen102 = getelementptr inbounds %struct.display, %struct.display* %75, i32 0, i32 47
  %76 = load i32, i32* %d_status_buflen102, align 4
  %conv103 = sext i32 %76 to i64
  %cmp104 = icmp slt i64 %sub.ptr.sub101, %conv103
  br i1 %cmp104, label %if.then.106, label %if.end.109

if.then.106:                                      ; preds = %if.end.98
  %77 = load %struct.display*, %struct.display** @display, align 8
  %d_status_lastmsg107 = getelementptr inbounds %struct.display, %struct.display* %77, i32 0, i32 46
  %78 = load i8*, i8** %d_status_lastmsg107, align 8
  %79 = load i8*, i8** %msg.addr, align 8
  %call108 = call i8* @strcpy(i8* %78, i8* %79) #3
  br label %if.end.109

if.end.109:                                       ; preds = %if.then.106, %if.end.98
  %80 = load i8*, i8** %t, align 8
  %81 = load i8*, i8** %msg.addr, align 8
  %sub.ptr.lhs.cast110 = ptrtoint i8* %80 to i64
  %sub.ptr.rhs.cast111 = ptrtoint i8* %81 to i64
  %sub.ptr.sub112 = sub i64 %sub.ptr.lhs.cast110, %sub.ptr.rhs.cast111
  %conv113 = trunc i64 %sub.ptr.sub112 to i32
  %82 = load %struct.display*, %struct.display** @display, align 8
  %d_status_len = getelementptr inbounds %struct.display, %struct.display* %82, i32 0, i32 45
  store i32 %conv113, i32* %d_status_len, align 4
  %83 = load %struct.display*, %struct.display** @display, align 8
  %d_x = getelementptr inbounds %struct.display, %struct.display* %83, i32 0, i32 22
  %84 = load i32, i32* %d_x, align 4
  %85 = load %struct.display*, %struct.display** @display, align 8
  %d_status_lastx = getelementptr inbounds %struct.display, %struct.display* %85, i32 0, i32 48
  store i32 %84, i32* %d_status_lastx, align 4
  %86 = load %struct.display*, %struct.display** @display, align 8
  %d_y = getelementptr inbounds %struct.display, %struct.display* %86, i32 0, i32 23
  %87 = load i32, i32* %d_y, align 4
  %88 = load %struct.display*, %struct.display** @display, align 8
  %d_status_lasty = getelementptr inbounds %struct.display, %struct.display* %88, i32 0, i32 49
  store i32 %87, i32* %d_status_lasty, align 4
  %89 = load i32, i32* @use_hardstatus, align 4
  %tobool114 = icmp ne i32 %89, 0
  br i1 %tobool114, label %lor.lhs.false.115, label %if.then.122

lor.lhs.false.115:                                ; preds = %if.end.109
  %90 = load %struct.display*, %struct.display** @display, align 8
  %d_has_hstatus = getelementptr inbounds %struct.display, %struct.display* %90, i32 0, i32 36
  %91 = load i32, i32* %d_has_hstatus, align 4
  %cmp116 = icmp eq i32 %91, 0
  br i1 %cmp116, label %if.then.122, label %lor.lhs.false.118

lor.lhs.false.118:                                ; preds = %lor.lhs.false.115
  %92 = load %struct.display*, %struct.display** @display, align 8
  %d_has_hstatus119 = getelementptr inbounds %struct.display, %struct.display* %92, i32 0, i32 36
  %93 = load i32, i32* %d_has_hstatus119, align 4
  %cmp120 = icmp eq i32 %93, 2
  br i1 %cmp120, label %if.then.122, label %if.else.179

if.then.122:                                      ; preds = %lor.lhs.false.118, %lor.lhs.false.115, %if.end.109
  %94 = load %struct.display*, %struct.display** @display, align 8
  %d_status123 = getelementptr inbounds %struct.display, %struct.display* %94, i32 0, i32 43
  store i32 1, i32* %d_status123, align 4
  br label %do.body.124

do.body.124:                                      ; preds = %if.then.122
  br label %do.end.125

do.end.125:                                       ; preds = %do.body.124
  %95 = load %struct.display*, %struct.display** @display, align 8
  %d_height = getelementptr inbounds %struct.display, %struct.display* %95, i32 0, i32 17
  %96 = load i32, i32* %d_height, align 4
  %sub126 = sub nsw i32 %96, 1
  call void @GotoPos(i32 0, i32 %sub126)
  call void @SetRendition(%struct.mchar* @mchar_so)
  call void @InsertMode(i32 0)
  %97 = load i8*, i8** %msg.addr, align 8
  call void @AddStr(i8* %97)
  %98 = load %struct.display*, %struct.display** @display, align 8
  %d_status_len127 = getelementptr inbounds %struct.display, %struct.display* %98, i32 0, i32 45
  %99 = load i32, i32* %d_status_len127, align 4
  %100 = load i32, i32* %max, align 4
  %cmp128 = icmp slt i32 %99, %100
  br i1 %cmp128, label %if.then.130, label %if.end.177

if.then.130:                                      ; preds = %do.end.125
  %101 = load %struct.display*, %struct.display** @display, align 8
  %d_status_len131 = getelementptr inbounds %struct.display, %struct.display* %101, i32 0, i32 45
  %102 = load i32, i32* %d_status_len131, align 4
  %inc = add nsw i32 %102, 1
  store i32 %inc, i32* %d_status_len131, align 4
  call void @SetRendition(%struct.mchar* @mchar_null)
  br label %do.body.132

do.body.132:                                      ; preds = %if.then.130
  %103 = load %struct.display*, %struct.display** @display, align 8
  %d_obuffree = getelementptr inbounds %struct.display, %struct.display* %103, i32 0, i32 72
  %104 = load i32, i32* %d_obuffree, align 4
  %dec133 = add nsw i32 %104, -1
  store i32 %dec133, i32* %d_obuffree, align 4
  %cmp134 = icmp sle i32 %dec133, 0
  br i1 %cmp134, label %if.then.136, label %if.end.137

if.then.136:                                      ; preds = %do.body.132
  call void @Resize_obuf()
  br label %if.end.137

if.end.137:                                       ; preds = %if.then.136, %do.body.132
  %105 = load %struct.display*, %struct.display** @display, align 8
  %d_obufp = getelementptr inbounds %struct.display, %struct.display* %105, i32 0, i32 71
  %106 = load i8*, i8** %d_obufp, align 8
  %incdec.ptr138 = getelementptr inbounds i8, i8* %106, i32 1
  store i8* %incdec.ptr138, i8** %d_obufp, align 8
  store i8 32, i8* %106, align 1
  br label %do.end.139

do.end.139:                                       ; preds = %if.end.137
  %107 = load %struct.display*, %struct.display** @display, align 8
  %d_status_len140 = getelementptr inbounds %struct.display, %struct.display* %107, i32 0, i32 45
  %108 = load i32, i32* %d_status_len140, align 4
  %109 = load i32, i32* %max, align 4
  %cmp141 = icmp slt i32 %108, %109
  br i1 %cmp141, label %if.then.143, label %if.end.166

if.then.143:                                      ; preds = %do.end.139
  %110 = load %struct.display*, %struct.display** @display, align 8
  %d_status_len144 = getelementptr inbounds %struct.display, %struct.display* %110, i32 0, i32 45
  %111 = load i32, i32* %d_status_len144, align 4
  %inc145 = add nsw i32 %111, 1
  store i32 %inc145, i32* %d_status_len144, align 4
  br label %do.body.146

do.body.146:                                      ; preds = %if.then.143
  %112 = load %struct.display*, %struct.display** @display, align 8
  %d_obuffree147 = getelementptr inbounds %struct.display, %struct.display* %112, i32 0, i32 72
  %113 = load i32, i32* %d_obuffree147, align 4
  %dec148 = add nsw i32 %113, -1
  store i32 %dec148, i32* %d_obuffree147, align 4
  %cmp149 = icmp sle i32 %dec148, 0
  br i1 %cmp149, label %if.then.151, label %if.end.152

if.then.151:                                      ; preds = %do.body.146
  call void @Resize_obuf()
  br label %if.end.152

if.end.152:                                       ; preds = %if.then.151, %do.body.146
  %114 = load %struct.display*, %struct.display** @display, align 8
  %d_obufp153 = getelementptr inbounds %struct.display, %struct.display* %114, i32 0, i32 71
  %115 = load i8*, i8** %d_obufp153, align 8
  %incdec.ptr154 = getelementptr inbounds i8, i8* %115, i32 1
  store i8* %incdec.ptr154, i8** %d_obufp153, align 8
  store i8 32, i8* %115, align 1
  br label %do.end.155

do.end.155:                                       ; preds = %if.end.152
  br label %do.body.156

do.body.156:                                      ; preds = %do.end.155
  %116 = load %struct.display*, %struct.display** @display, align 8
  %d_obuffree157 = getelementptr inbounds %struct.display, %struct.display* %116, i32 0, i32 72
  %117 = load i32, i32* %d_obuffree157, align 4
  %dec158 = add nsw i32 %117, -1
  store i32 %dec158, i32* %d_obuffree157, align 4
  %cmp159 = icmp sle i32 %dec158, 0
  br i1 %cmp159, label %if.then.161, label %if.end.162

if.then.161:                                      ; preds = %do.body.156
  call void @Resize_obuf()
  br label %if.end.162

if.end.162:                                       ; preds = %if.then.161, %do.body.156
  %118 = load %struct.display*, %struct.display** @display, align 8
  %d_obufp163 = getelementptr inbounds %struct.display, %struct.display* %118, i32 0, i32 71
  %119 = load i8*, i8** %d_obufp163, align 8
  %incdec.ptr164 = getelementptr inbounds i8, i8* %119, i32 1
  store i8* %incdec.ptr164, i8** %d_obufp163, align 8
  store i8 8, i8* %119, align 1
  br label %do.end.165

do.end.165:                                       ; preds = %if.end.162
  br label %if.end.166

if.end.166:                                       ; preds = %do.end.165, %do.end.139
  br label %do.body.167

do.body.167:                                      ; preds = %if.end.166
  %120 = load %struct.display*, %struct.display** @display, align 8
  %d_obuffree168 = getelementptr inbounds %struct.display, %struct.display* %120, i32 0, i32 72
  %121 = load i32, i32* %d_obuffree168, align 4
  %dec169 = add nsw i32 %121, -1
  store i32 %dec169, i32* %d_obuffree168, align 4
  %cmp170 = icmp sle i32 %dec169, 0
  br i1 %cmp170, label %if.then.172, label %if.end.173

if.then.172:                                      ; preds = %do.body.167
  call void @Resize_obuf()
  br label %if.end.173

if.end.173:                                       ; preds = %if.then.172, %do.body.167
  %122 = load %struct.display*, %struct.display** @display, align 8
  %d_obufp174 = getelementptr inbounds %struct.display, %struct.display* %122, i32 0, i32 71
  %123 = load i8*, i8** %d_obufp174, align 8
  %incdec.ptr175 = getelementptr inbounds i8, i8* %123, i32 1
  store i8* %incdec.ptr175, i8** %d_obufp174, align 8
  store i8 8, i8* %123, align 1
  br label %do.end.176

do.end.176:                                       ; preds = %if.end.173
  br label %if.end.177

if.end.177:                                       ; preds = %do.end.176, %do.end.125
  %124 = load %struct.display*, %struct.display** @display, align 8
  %d_x178 = getelementptr inbounds %struct.display, %struct.display* %124, i32 0, i32 22
  store i32 -1, i32* %d_x178, align 4
  br label %if.end.181

if.else.179:                                      ; preds = %lor.lhs.false.118
  %125 = load %struct.display*, %struct.display** @display, align 8
  %d_status180 = getelementptr inbounds %struct.display, %struct.display* %125, i32 0, i32 43
  store i32 2, i32* %d_status180, align 4
  %126 = load i8*, i8** %msg.addr, align 8
  call void @ShowHStatus(i8* %126)
  br label %if.end.181

if.end.181:                                       ; preds = %if.else.179, %if.end.177
  %127 = load %struct.display*, %struct.display** @display, align 8
  %d_obufp182 = getelementptr inbounds %struct.display, %struct.display* %127, i32 0, i32 71
  %128 = load i8*, i8** %d_obufp182, align 8
  %129 = load %struct.display*, %struct.display** @display, align 8
  %d_obuf = getelementptr inbounds %struct.display, %struct.display* %129, i32 0, i32 67
  %130 = load i8*, i8** %d_obuf, align 8
  %sub.ptr.lhs.cast183 = ptrtoint i8* %128 to i64
  %sub.ptr.rhs.cast184 = ptrtoint i8* %130 to i64
  %sub.ptr.sub185 = sub i64 %sub.ptr.lhs.cast183, %sub.ptr.rhs.cast184
  %conv186 = trunc i64 %sub.ptr.sub185 to i32
  %131 = load %struct.display*, %struct.display** @display, align 8
  %d_status_obufpos187 = getelementptr inbounds %struct.display, %struct.display* %131, i32 0, i32 52
  store i32 %conv186, i32* %d_status_obufpos187, align 4
  br label %do.body.188

do.body.188:                                      ; preds = %if.end.181
  br label %do.end.189

do.end.189:                                       ; preds = %do.body.188
  %132 = load %struct.display*, %struct.display** @display, align 8
  %d_status190 = getelementptr inbounds %struct.display, %struct.display* %132, i32 0, i32 43
  %133 = load i32, i32* %d_status190, align 4
  %cmp191 = icmp eq i32 %133, 1
  br i1 %cmp191, label %if.then.193, label %if.end.213

if.then.193:                                      ; preds = %do.end.189
  %134 = load %struct.display*, %struct.display** @display, align 8
  store %struct.display* %134, %struct.display** %olddisplay, align 8
  %135 = load %struct.layer*, %struct.layer** @flayer, align 8
  store %struct.layer* %135, %struct.layer** %oldflayer, align 8
  %136 = load %struct.display*, %struct.display** @display, align 8
  %d_status194 = getelementptr inbounds %struct.display, %struct.display* %136, i32 0, i32 43
  store i32 0, i32* %d_status194, align 4
  %137 = load %struct.display*, %struct.display** @display, align 8
  %d_height195 = getelementptr inbounds %struct.display, %struct.display* %137, i32 0, i32 17
  %138 = load i32, i32* %d_height195, align 4
  %sub196 = sub nsw i32 %138, 1
  call void @GotoPos(i32 0, i32 %sub196)
  %139 = load %struct.display*, %struct.display** @display, align 8
  %d_height197 = getelementptr inbounds %struct.display, %struct.display* %139, i32 0, i32 17
  %140 = load i32, i32* %d_height197, align 4
  %sub198 = sub nsw i32 %140, 1
  %141 = load %struct.display*, %struct.display** @display, align 8
  %d_status_len199 = getelementptr inbounds %struct.display, %struct.display* %141, i32 0, i32 45
  %142 = load i32, i32* %d_status_len199, align 4
  %sub200 = sub nsw i32 %142, 1
  call void @RefreshLine(i32 %sub198, i32 0, i32 %sub200, i32 0)
  %143 = load %struct.display*, %struct.display** @display, align 8
  %d_status_lastx201 = getelementptr inbounds %struct.display, %struct.display* %143, i32 0, i32 48
  %144 = load i32, i32* %d_status_lastx201, align 4
  %145 = load %struct.display*, %struct.display** @display, align 8
  %d_status_lasty202 = getelementptr inbounds %struct.display, %struct.display* %145, i32 0, i32 49
  %146 = load i32, i32* %d_status_lasty202, align 4
  call void @GotoPos(i32 %144, i32 %146)
  %147 = load %struct.display*, %struct.display** @display, align 8
  %d_forecv = getelementptr inbounds %struct.display, %struct.display* %147, i32 0, i32 4
  %148 = load %struct.canvas*, %struct.canvas** %d_forecv, align 8
  %tobool203 = icmp ne %struct.canvas* %148, null
  br i1 %tobool203, label %cond.true.204, label %cond.false.206

cond.true.204:                                    ; preds = %if.then.193
  %149 = load %struct.display*, %struct.display** @display, align 8
  %d_forecv205 = getelementptr inbounds %struct.display, %struct.display* %149, i32 0, i32 4
  %150 = load %struct.canvas*, %struct.canvas** %d_forecv205, align 8
  %c_layer = getelementptr inbounds %struct.canvas, %struct.canvas* %150, i32 0, i32 9
  %151 = load %struct.layer*, %struct.layer** %c_layer, align 8
  br label %cond.end.207

cond.false.206:                                   ; preds = %if.then.193
  br label %cond.end.207

cond.end.207:                                     ; preds = %cond.false.206, %cond.true.204
  %cond208 = phi %struct.layer* [ %151, %cond.true.204 ], [ null, %cond.false.206 ]
  store %struct.layer* %cond208, %struct.layer** @flayer, align 8
  %152 = load %struct.layer*, %struct.layer** @flayer, align 8
  %tobool209 = icmp ne %struct.layer* %152, null
  br i1 %tobool209, label %if.then.210, label %if.end.211

if.then.210:                                      ; preds = %cond.end.207
  %153 = load %struct.layer*, %struct.layer** @flayer, align 8
  %154 = load %struct.layer*, %struct.layer** @flayer, align 8
  %l_x = getelementptr inbounds %struct.layer, %struct.layer* %154, i32 0, i32 3
  %155 = load i32, i32* %l_x, align 4
  %156 = load %struct.layer*, %struct.layer** @flayer, align 8
  %l_y = getelementptr inbounds %struct.layer, %struct.layer* %156, i32 0, i32 4
  %157 = load i32, i32* %l_y, align 4
  call void @LGotoPos(%struct.layer* %153, i32 %155, i32 %157)
  br label %if.end.211

if.end.211:                                       ; preds = %if.then.210, %cond.end.207
  %158 = load %struct.display*, %struct.display** %olddisplay, align 8
  store %struct.display* %158, %struct.display** @display, align 8
  %159 = load %struct.layer*, %struct.layer** %oldflayer, align 8
  store %struct.layer* %159, %struct.layer** @flayer, align 8
  %160 = load %struct.display*, %struct.display** @display, align 8
  %d_status212 = getelementptr inbounds %struct.display, %struct.display* %160, i32 0, i32 43
  store i32 1, i32* %d_status212, align 4
  br label %if.end.213

if.end.213:                                       ; preds = %if.then, %if.then.2, %if.then.7, %if.end.8, %if.end.38, %if.then.64, %if.end.211, %do.end.189
  ret void
}

declare void @SetTimeout(%struct.event*, i32) #1

; Function Attrs: nounwind uwtable
define internal void @RemoveStatusMinWait() #0 {
entry:
  %now = alloca %struct.timeval, align 8
  %ti = alloca i32, align 4
  %0 = load %struct.display*, %struct.display** @display, align 8
  %d_status_bell = getelementptr inbounds %struct.display, %struct.display* %0, i32 0, i32 44
  %1 = load i8, i8* %d_status_bell, align 1
  %tobool = icmp ne i8 %1, 0
  br i1 %tobool, label %if.end.9, label %land.lhs.true

land.lhs.true:                                    ; preds = %entry
  %2 = load %struct.display*, %struct.display** @display, align 8
  %d_status_obufpos = getelementptr inbounds %struct.display, %struct.display* %2, i32 0, i32 52
  %3 = load i32, i32* %d_status_obufpos, align 4
  %tobool1 = icmp ne i32 %3, 0
  br i1 %tobool1, label %if.end.9, label %if.then

if.then:                                          ; preds = %land.lhs.true
  %call = call i32 @gettimeofday(%struct.timeval* %now, %struct.timezone* null) #3
  %tv_sec = getelementptr inbounds %struct.timeval, %struct.timeval* %now, i32 0, i32 0
  %4 = load i64, i64* %tv_sec, align 8
  %5 = load %struct.display*, %struct.display** @display, align 8
  %d_status_time = getelementptr inbounds %struct.display, %struct.display* %5, i32 0, i32 42
  %tv_sec2 = getelementptr inbounds %struct.timeval, %struct.timeval* %d_status_time, i32 0, i32 0
  %6 = load i64, i64* %tv_sec2, align 8
  %sub = sub nsw i64 %4, %6
  %mul = mul nsw i64 %sub, 1000
  %tv_usec = getelementptr inbounds %struct.timeval, %struct.timeval* %now, i32 0, i32 1
  %7 = load i64, i64* %tv_usec, align 8
  %8 = load %struct.display*, %struct.display** @display, align 8
  %d_status_time3 = getelementptr inbounds %struct.display, %struct.display* %8, i32 0, i32 42
  %tv_usec4 = getelementptr inbounds %struct.timeval, %struct.timeval* %d_status_time3, i32 0, i32 1
  %9 = load i64, i64* %tv_usec4, align 8
  %sub5 = sub nsw i64 %7, %9
  %div = sdiv i64 %sub5, 1000
  %add = add nsw i64 %mul, %div
  %conv = trunc i64 %add to i32
  store i32 %conv, i32* %ti, align 4
  %10 = load i32, i32* %ti, align 4
  %11 = load i32, i32* @MsgMinWait, align 4
  %cmp = icmp slt i32 %10, %11
  br i1 %cmp, label %if.then.7, label %if.end

if.then.7:                                        ; preds = %if.then
  %12 = load i32, i32* @MsgMinWait, align 4
  %13 = load i32, i32* %ti, align 4
  %sub8 = sub nsw i32 %12, %13
  call void @DisplaySleep1000(i32 %sub8, i32 0)
  br label %if.end

if.end:                                           ; preds = %if.then.7, %if.then
  br label %if.end.9

if.end.9:                                         ; preds = %if.end, %land.lhs.true, %entry
  call void @RemoveStatus()
  ret void
}

; Function Attrs: nounwind
declare i8* @realloc(i8*, i64) #2

; Function Attrs: nounwind
declare noalias i8* @malloc(i64) #2

; Function Attrs: nounwind
declare i8* @strcpy(i8*, i8*) #2

; Function Attrs: nounwind uwtable
define void @RemoveStatus() #0 {
entry:
  %olddisplay = alloca %struct.display*, align 8
  %oldflayer = alloca %struct.layer*, align 8
  %where = alloca i32, align 4
  %0 = load %struct.display*, %struct.display** @display, align 8
  %tobool = icmp ne %struct.display* %0, null
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  br label %return

if.end:                                           ; preds = %entry
  %1 = load %struct.display*, %struct.display** @display, align 8
  %d_status = getelementptr inbounds %struct.display, %struct.display* %1, i32 0, i32 43
  %2 = load i32, i32* %d_status, align 4
  store i32 %2, i32* %where, align 4
  %tobool1 = icmp ne i32 %2, 0
  br i1 %tobool1, label %if.end.3, label %if.then.2

if.then.2:                                        ; preds = %if.end
  br label %return

if.end.3:                                         ; preds = %if.end
  br label %do.body

do.body:                                          ; preds = %if.end.3
  br label %do.end

do.end:                                           ; preds = %do.body
  %3 = load %struct.display*, %struct.display** @display, align 8
  %d_status_obuffree = getelementptr inbounds %struct.display, %struct.display* %3, i32 0, i32 51
  %4 = load i32, i32* %d_status_obuffree, align 4
  %cmp = icmp sge i32 %4, 0
  br i1 %cmp, label %if.then.4, label %if.end.7

if.then.4:                                        ; preds = %do.end
  %5 = load %struct.display*, %struct.display** @display, align 8
  %d_status_obuflen = getelementptr inbounds %struct.display, %struct.display* %5, i32 0, i32 50
  %6 = load i32, i32* %d_status_obuflen, align 4
  %7 = load %struct.display*, %struct.display** @display, align 8
  %d_obuflen = getelementptr inbounds %struct.display, %struct.display* %7, i32 0, i32 68
  store i32 %6, i32* %d_obuflen, align 4
  %8 = load %struct.display*, %struct.display** @display, align 8
  %d_status_obuffree5 = getelementptr inbounds %struct.display, %struct.display* %8, i32 0, i32 51
  %9 = load i32, i32* %d_status_obuffree5, align 4
  %10 = load %struct.display*, %struct.display** @display, align 8
  %d_obuffree = getelementptr inbounds %struct.display, %struct.display* %10, i32 0, i32 72
  store i32 %9, i32* %d_obuffree, align 4
  %11 = load %struct.display*, %struct.display** @display, align 8
  %d_status_obuffree6 = getelementptr inbounds %struct.display, %struct.display* %11, i32 0, i32 51
  store i32 -1, i32* %d_status_obuffree6, align 4
  br label %if.end.7

if.end.7:                                         ; preds = %if.then.4, %do.end
  %12 = load %struct.display*, %struct.display** @display, align 8
  %d_status8 = getelementptr inbounds %struct.display, %struct.display* %12, i32 0, i32 43
  store i32 0, i32* %d_status8, align 4
  %13 = load %struct.display*, %struct.display** @display, align 8
  %d_status_obufpos = getelementptr inbounds %struct.display, %struct.display* %13, i32 0, i32 52
  store i32 0, i32* %d_status_obufpos, align 4
  %14 = load %struct.display*, %struct.display** @display, align 8
  %d_status_bell = getelementptr inbounds %struct.display, %struct.display* %14, i32 0, i32 44
  store i8 0, i8* %d_status_bell, align 1
  %15 = load %struct.display*, %struct.display** @display, align 8
  %d_statusev = getelementptr inbounds %struct.display, %struct.display* %15, i32 0, i32 53
  call void @evdeq(%struct.event* %d_statusev)
  %16 = load %struct.display*, %struct.display** @display, align 8
  store %struct.display* %16, %struct.display** %olddisplay, align 8
  %17 = load %struct.layer*, %struct.layer** @flayer, align 8
  store %struct.layer* %17, %struct.layer** %oldflayer, align 8
  %18 = load i32, i32* %where, align 4
  %cmp9 = icmp eq i32 %18, 1
  br i1 %cmp9, label %if.then.10, label %if.else

if.then.10:                                       ; preds = %if.end.7
  %19 = load i32, i32* @captionalways, align 4
  %tobool11 = icmp ne i32 %19, 0
  br i1 %tobool11, label %if.then.16, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.then.10
  %20 = load %struct.display*, %struct.display** @display, align 8
  %d_canvas = getelementptr inbounds %struct.display, %struct.display* %20, i32 0, i32 2
  %c_slperp = getelementptr inbounds %struct.canvas, %struct.canvas* %d_canvas, i32 0, i32 4
  %21 = load %struct.canvas*, %struct.canvas** %c_slperp, align 8
  %tobool12 = icmp ne %struct.canvas* %21, null
  br i1 %tobool12, label %land.lhs.true, label %if.end.20

land.lhs.true:                                    ; preds = %lor.lhs.false
  %22 = load %struct.display*, %struct.display** @display, align 8
  %d_canvas13 = getelementptr inbounds %struct.display, %struct.display* %22, i32 0, i32 2
  %c_slperp14 = getelementptr inbounds %struct.canvas, %struct.canvas* %d_canvas13, i32 0, i32 4
  %23 = load %struct.canvas*, %struct.canvas** %c_slperp14, align 8
  %c_slnext = getelementptr inbounds %struct.canvas, %struct.canvas* %23, i32 0, i32 2
  %24 = load %struct.canvas*, %struct.canvas** %c_slnext, align 8
  %tobool15 = icmp ne %struct.canvas* %24, null
  br i1 %tobool15, label %if.then.16, label %if.end.20

if.then.16:                                       ; preds = %land.lhs.true, %if.then.10
  %25 = load %struct.display*, %struct.display** @display, align 8
  %d_height = getelementptr inbounds %struct.display, %struct.display* %25, i32 0, i32 17
  %26 = load i32, i32* %d_height, align 4
  %sub = sub nsw i32 %26, 1
  call void @GotoPos(i32 0, i32 %sub)
  %27 = load %struct.display*, %struct.display** @display, align 8
  %d_height17 = getelementptr inbounds %struct.display, %struct.display* %27, i32 0, i32 17
  %28 = load i32, i32* %d_height17, align 4
  %sub18 = sub nsw i32 %28, 1
  %29 = load %struct.display*, %struct.display** @display, align 8
  %d_status_len = getelementptr inbounds %struct.display, %struct.display* %29, i32 0, i32 45
  %30 = load i32, i32* %d_status_len, align 4
  %sub19 = sub nsw i32 %30, 1
  call void @RefreshLine(i32 %sub18, i32 0, i32 %sub19, i32 0)
  %31 = load %struct.display*, %struct.display** @display, align 8
  %d_status_lastx = getelementptr inbounds %struct.display, %struct.display* %31, i32 0, i32 48
  %32 = load i32, i32* %d_status_lastx, align 4
  %33 = load %struct.display*, %struct.display** @display, align 8
  %d_status_lasty = getelementptr inbounds %struct.display, %struct.display* %33, i32 0, i32 49
  %34 = load i32, i32* %d_status_lasty, align 4
  call void @GotoPos(i32 %32, i32 %34)
  br label %if.end.20

if.end.20:                                        ; preds = %if.then.16, %land.lhs.true, %lor.lhs.false
  br label %if.end.21

if.else:                                          ; preds = %if.end.7
  call void @RefreshHStatus()
  br label %if.end.21

if.end.21:                                        ; preds = %if.else, %if.end.20
  %35 = load %struct.display*, %struct.display** @display, align 8
  %d_forecv = getelementptr inbounds %struct.display, %struct.display* %35, i32 0, i32 4
  %36 = load %struct.canvas*, %struct.canvas** %d_forecv, align 8
  %tobool22 = icmp ne %struct.canvas* %36, null
  br i1 %tobool22, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.end.21
  %37 = load %struct.display*, %struct.display** @display, align 8
  %d_forecv23 = getelementptr inbounds %struct.display, %struct.display* %37, i32 0, i32 4
  %38 = load %struct.canvas*, %struct.canvas** %d_forecv23, align 8
  %c_layer = getelementptr inbounds %struct.canvas, %struct.canvas* %38, i32 0, i32 9
  %39 = load %struct.layer*, %struct.layer** %c_layer, align 8
  br label %cond.end

cond.false:                                       ; preds = %if.end.21
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi %struct.layer* [ %39, %cond.true ], [ null, %cond.false ]
  store %struct.layer* %cond, %struct.layer** @flayer, align 8
  %40 = load %struct.layer*, %struct.layer** @flayer, align 8
  %tobool24 = icmp ne %struct.layer* %40, null
  br i1 %tobool24, label %if.then.25, label %if.end.26

if.then.25:                                       ; preds = %cond.end
  %41 = load %struct.layer*, %struct.layer** @flayer, align 8
  %42 = load %struct.layer*, %struct.layer** @flayer, align 8
  %l_x = getelementptr inbounds %struct.layer, %struct.layer* %42, i32 0, i32 3
  %43 = load i32, i32* %l_x, align 4
  %44 = load %struct.layer*, %struct.layer** @flayer, align 8
  %l_y = getelementptr inbounds %struct.layer, %struct.layer* %44, i32 0, i32 4
  %45 = load i32, i32* %l_y, align 4
  call void @LGotoPos(%struct.layer* %41, i32 %43, i32 %45)
  br label %if.end.26

if.end.26:                                        ; preds = %if.then.25, %cond.end
  %46 = load %struct.display*, %struct.display** %olddisplay, align 8
  store %struct.display* %46, %struct.display** @display, align 8
  %47 = load %struct.layer*, %struct.layer** %oldflayer, align 8
  store %struct.layer* %47, %struct.layer** @flayer, align 8
  br label %return

return:                                           ; preds = %if.end.26, %if.then.2, %if.then
  ret void
}

; Function Attrs: nounwind readonly
declare i64 @strlen(i8*) #4

; Function Attrs: nounwind uwtable
define void @AddStrn(i8* %str, i32 %n) #0 {
entry:
  %str.addr = alloca i8*, align 8
  %n.addr = alloca i32, align 4
  %c = alloca i8, align 1
  store i8* %str, i8** %str.addr, align 8
  store i32 %n, i32* %n.addr, align 4
  br label %do.body

do.body:                                          ; preds = %entry
  br label %do.end

do.end:                                           ; preds = %do.body
  %0 = load %struct.display*, %struct.display** @display, align 8
  %d_encoding = getelementptr inbounds %struct.display, %struct.display* %0, i32 0, i32 28
  %1 = load i32, i32* %d_encoding, align 4
  %cmp = icmp eq i32 %1, 8
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %do.end
  br label %while.cond

while.cond:                                       ; preds = %while.body, %if.then
  %2 = load i8*, i8** %str.addr, align 8
  %incdec.ptr = getelementptr inbounds i8, i8* %2, i32 1
  store i8* %incdec.ptr, i8** %str.addr, align 8
  %3 = load i8, i8* %2, align 1
  store i8 %3, i8* %c, align 1
  %conv = sext i8 %3 to i32
  %tobool = icmp ne i32 %conv, 0
  br i1 %tobool, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %while.cond
  %4 = load i32, i32* %n.addr, align 4
  %dec = add nsw i32 %4, -1
  store i32 %dec, i32* %n.addr, align 4
  %cmp1 = icmp sgt i32 %4, 0
  br label %land.end

land.end:                                         ; preds = %land.rhs, %while.cond
  %5 = phi i1 [ false, %while.cond ], [ %cmp1, %land.rhs ]
  br i1 %5, label %while.body, label %while.end

while.body:                                       ; preds = %land.end
  %6 = load i8, i8* %c, align 1
  %conv3 = zext i8 %6 to i32
  call void @AddUtf8(i32 %conv3)
  br label %while.cond

while.end:                                        ; preds = %land.end
  br label %if.end.22

if.else:                                          ; preds = %do.end
  br label %while.cond.4

while.cond.4:                                     ; preds = %do.end.20, %if.else
  %7 = load i8*, i8** %str.addr, align 8
  %incdec.ptr5 = getelementptr inbounds i8, i8* %7, i32 1
  store i8* %incdec.ptr5, i8** %str.addr, align 8
  %8 = load i8, i8* %7, align 1
  store i8 %8, i8* %c, align 1
  %conv6 = sext i8 %8 to i32
  %tobool7 = icmp ne i32 %conv6, 0
  br i1 %tobool7, label %land.rhs.8, label %land.end.12

land.rhs.8:                                       ; preds = %while.cond.4
  %9 = load i32, i32* %n.addr, align 4
  %dec9 = add nsw i32 %9, -1
  store i32 %dec9, i32* %n.addr, align 4
  %cmp10 = icmp sgt i32 %9, 0
  br label %land.end.12

land.end.12:                                      ; preds = %land.rhs.8, %while.cond.4
  %10 = phi i1 [ false, %while.cond.4 ], [ %cmp10, %land.rhs.8 ]
  br i1 %10, label %while.body.13, label %while.end.21

while.body.13:                                    ; preds = %land.end.12
  br label %do.body.14

do.body.14:                                       ; preds = %while.body.13
  %11 = load %struct.display*, %struct.display** @display, align 8
  %d_obuffree = getelementptr inbounds %struct.display, %struct.display* %11, i32 0, i32 72
  %12 = load i32, i32* %d_obuffree, align 4
  %dec15 = add nsw i32 %12, -1
  store i32 %dec15, i32* %d_obuffree, align 4
  %cmp16 = icmp sle i32 %dec15, 0
  br i1 %cmp16, label %if.then.18, label %if.end

if.then.18:                                       ; preds = %do.body.14
  call void @Resize_obuf()
  br label %if.end

if.end:                                           ; preds = %if.then.18, %do.body.14
  %13 = load i8, i8* %c, align 1
  %14 = load %struct.display*, %struct.display** @display, align 8
  %d_obufp = getelementptr inbounds %struct.display, %struct.display* %14, i32 0, i32 71
  %15 = load i8*, i8** %d_obufp, align 8
  %incdec.ptr19 = getelementptr inbounds i8, i8* %15, i32 1
  store i8* %incdec.ptr19, i8** %d_obufp, align 8
  store i8 %13, i8* %15, align 1
  br label %do.end.20

do.end.20:                                        ; preds = %if.end
  br label %while.cond.4

while.end.21:                                     ; preds = %land.end.12
  br label %if.end.22

if.end.22:                                        ; preds = %while.end.21, %while.end
  br label %while.cond.23

while.cond.23:                                    ; preds = %do.end.37, %if.end.22
  %16 = load i32, i32* %n.addr, align 4
  %dec24 = add nsw i32 %16, -1
  store i32 %dec24, i32* %n.addr, align 4
  %cmp25 = icmp sgt i32 %16, 0
  br i1 %cmp25, label %while.body.27, label %while.end.38

while.body.27:                                    ; preds = %while.cond.23
  br label %do.body.28

do.body.28:                                       ; preds = %while.body.27
  %17 = load %struct.display*, %struct.display** @display, align 8
  %d_obuffree29 = getelementptr inbounds %struct.display, %struct.display* %17, i32 0, i32 72
  %18 = load i32, i32* %d_obuffree29, align 4
  %dec30 = add nsw i32 %18, -1
  store i32 %dec30, i32* %d_obuffree29, align 4
  %cmp31 = icmp sle i32 %dec30, 0
  br i1 %cmp31, label %if.then.33, label %if.end.34

if.then.33:                                       ; preds = %do.body.28
  call void @Resize_obuf()
  br label %if.end.34

if.end.34:                                        ; preds = %if.then.33, %do.body.28
  %19 = load %struct.display*, %struct.display** @display, align 8
  %d_obufp35 = getelementptr inbounds %struct.display, %struct.display* %19, i32 0, i32 71
  %20 = load i8*, i8** %d_obufp35, align 8
  %incdec.ptr36 = getelementptr inbounds i8, i8* %20, i32 1
  store i8* %incdec.ptr36, i8** %d_obufp35, align 8
  store i8 32, i8* %20, align 1
  br label %do.end.37

do.end.37:                                        ; preds = %if.end.34
  br label %while.cond.23

while.end.38:                                     ; preds = %while.cond.23
  ret void
}

; Function Attrs: nounwind uwtable
define internal i32 @PrePutWinMsg(i8* %s, i32 %start, i32 %max) #0 {
entry:
  %retval = alloca i32, align 4
  %s.addr = alloca i8*, align 8
  %start.addr = alloca i32, align 4
  %max.addr = alloca i32, align 4
  %chars = alloca i32, align 4
  store i8* %s, i8** %s.addr, align 8
  store i32 %start, i32* %start.addr, align 4
  store i32 %max, i32* %max.addr, align 4
  %0 = load %struct.display*, %struct.display** @display, align 8
  %d_encoding = getelementptr inbounds %struct.display, %struct.display* %0, i32 0, i32 28
  %1 = load i32, i32* %d_encoding, align 4
  %cmp = icmp eq i32 %1, 8
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %2 = load i8*, i8** %s.addr, align 8
  %3 = load i32, i32* %start.addr, align 4
  %idx.ext = sext i32 %3 to i64
  %add.ptr = getelementptr inbounds i8, i8* %2, i64 %idx.ext
  %4 = load i8*, i8** %s.addr, align 8
  %5 = load i32, i32* %max.addr, align 4
  %idx.ext1 = sext i32 %5 to i64
  %add.ptr2 = getelementptr inbounds i8, i8* %4, i64 %idx.ext1
  %call = call i32 @strlen_onscreen(i8* %add.ptr, i8* %add.ptr2)
  store i32 %call, i32* %chars, align 4
  %6 = load %struct.display*, %struct.display** @display, align 8
  %d_encoding3 = getelementptr inbounds %struct.display, %struct.display* %6, i32 0, i32 28
  store i32 0, i32* %d_encoding3, align 4
  %7 = load i8*, i8** %s.addr, align 8
  %8 = load i32, i32* %start.addr, align 4
  %9 = load i32, i32* %max.addr, align 4
  %10 = load i32, i32* %max.addr, align 4
  %11 = load i32, i32* %start.addr, align 4
  %sub = sub nsw i32 %10, %11
  %12 = load i32, i32* %chars, align 4
  %sub4 = sub nsw i32 %sub, %12
  %add = add nsw i32 %9, %sub4
  call void @PutWinMsg(i8* %7, i32 %8, i32 %add)
  %13 = load %struct.display*, %struct.display** @display, align 8
  %d_encoding5 = getelementptr inbounds %struct.display, %struct.display* %13, i32 0, i32 28
  store i32 8, i32* %d_encoding5, align 4
  %14 = load i32, i32* %max.addr, align 4
  %15 = load i32, i32* %chars, align 4
  %sub6 = sub nsw i32 %14, %15
  %16 = load %struct.display*, %struct.display** @display, align 8
  %d_x = getelementptr inbounds %struct.display, %struct.display* %16, i32 0, i32 22
  %17 = load i32, i32* %d_x, align 4
  %sub7 = sub nsw i32 %17, %sub6
  store i32 %sub7, i32* %d_x, align 4
  %18 = load i32, i32* %start.addr, align 4
  %19 = load i32, i32* %chars, align 4
  %add8 = add nsw i32 %18, %19
  store i32 %add8, i32* %retval
  br label %return

if.else:                                          ; preds = %entry
  %20 = load i8*, i8** %s.addr, align 8
  %21 = load i32, i32* %start.addr, align 4
  %22 = load i32, i32* %max.addr, align 4
  call void @PutWinMsg(i8* %20, i32 %21, i32 %22)
  %23 = load i32, i32* %max.addr, align 4
  store i32 %23, i32* %retval
  br label %return

return:                                           ; preds = %if.else, %if.then
  %24 = load i32, i32* %retval
  ret i32 %24
}

declare void @Msg(i32, i8*, ...) #1

; Function Attrs: nounwind uwtable
define internal i32 @strlen_onscreen(i8* %c, i8* %end) #0 {
entry:
  %c.addr = alloca i8*, align 8
  %end.addr = alloca i8*, align 8
  %len = alloca i32, align 4
  %v = alloca i32, align 4
  %dec = alloca i32, align 4
  store i8* %c, i8** %c.addr, align 8
  store i8* %end, i8** %end.addr, align 8
  store i32 0, i32* %len, align 4
  br label %while.cond

while.cond:                                       ; preds = %if.end.24, %entry
  %0 = load i8*, i8** %c.addr, align 8
  %1 = load i8, i8* %0, align 1
  %conv = zext i8 %1 to i32
  %tobool = icmp ne i32 %conv, 0
  br i1 %tobool, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %while.cond
  %2 = load i8*, i8** %end.addr, align 8
  %tobool1 = icmp ne i8* %2, null
  br i1 %tobool1, label %lor.rhs, label %lor.end

lor.rhs:                                          ; preds = %land.rhs
  %3 = load i8*, i8** %c.addr, align 8
  %4 = load i8*, i8** %end.addr, align 8
  %cmp = icmp ult i8* %3, %4
  br label %lor.end

lor.end:                                          ; preds = %lor.rhs, %land.rhs
  %5 = phi i1 [ true, %land.rhs ], [ %cmp, %lor.rhs ]
  br label %land.end

land.end:                                         ; preds = %lor.end, %while.cond
  %6 = phi i1 [ false, %while.cond ], [ %5, %lor.end ]
  br i1 %6, label %while.body, label %while.end

while.body:                                       ; preds = %land.end
  store i32 0, i32* %dec, align 4
  br label %do.body

do.body:                                          ; preds = %land.end.15, %while.body
  %7 = load i8*, i8** %c.addr, align 8
  %incdec.ptr = getelementptr inbounds i8, i8* %7, i32 1
  store i8* %incdec.ptr, i8** %c.addr, align 8
  %8 = load i8, i8* %7, align 1
  %conv3 = zext i8 %8 to i32
  %call = call i32 @FromUtf8(i32 %conv3, i32* %dec)
  store i32 %call, i32* %v, align 4
  %9 = load i32, i32* %v, align 4
  %cmp4 = icmp eq i32 %9, -2
  br i1 %cmp4, label %if.then, label %if.end

if.then:                                          ; preds = %do.body
  %10 = load i8*, i8** %c.addr, align 8
  %incdec.ptr6 = getelementptr inbounds i8, i8* %10, i32 -1
  store i8* %incdec.ptr6, i8** %c.addr, align 8
  br label %if.end

if.end:                                           ; preds = %if.then, %do.body
  br label %do.cond

do.cond:                                          ; preds = %if.end
  %11 = load i32, i32* %v, align 4
  %cmp7 = icmp slt i32 %11, 0
  br i1 %cmp7, label %land.rhs.9, label %land.end.15

land.rhs.9:                                       ; preds = %do.cond
  %12 = load i8*, i8** %end.addr, align 8
  %tobool10 = icmp ne i8* %12, null
  br i1 %tobool10, label %lor.rhs.11, label %lor.end.14

lor.rhs.11:                                       ; preds = %land.rhs.9
  %13 = load i8*, i8** %c.addr, align 8
  %14 = load i8*, i8** %end.addr, align 8
  %cmp12 = icmp ult i8* %13, %14
  br label %lor.end.14

lor.end.14:                                       ; preds = %lor.rhs.11, %land.rhs.9
  %15 = phi i1 [ true, %land.rhs.9 ], [ %cmp12, %lor.rhs.11 ]
  br label %land.end.15

land.end.15:                                      ; preds = %lor.end.14, %do.cond
  %16 = phi i1 [ false, %do.cond ], [ %15, %lor.end.14 ]
  br i1 %16, label %do.body, label %do.end

do.end:                                           ; preds = %land.end.15
  %17 = load i32, i32* %v, align 4
  %call16 = call i32 @utf8_iscomb(i32 %17)
  %tobool17 = icmp ne i32 %call16, 0
  br i1 %tobool17, label %if.end.24, label %if.then.18

if.then.18:                                       ; preds = %do.end
  %18 = load i32, i32* %v, align 4
  %call19 = call i32 @utf8_isdouble(i32 %18)
  %tobool20 = icmp ne i32 %call19, 0
  br i1 %tobool20, label %if.then.21, label %if.end.22

if.then.21:                                       ; preds = %if.then.18
  %19 = load i32, i32* %len, align 4
  %inc = add nsw i32 %19, 1
  store i32 %inc, i32* %len, align 4
  br label %if.end.22

if.end.22:                                        ; preds = %if.then.21, %if.then.18
  %20 = load i32, i32* %len, align 4
  %inc23 = add nsw i32 %20, 1
  store i32 %inc23, i32* %len, align 4
  br label %if.end.24

if.end.24:                                        ; preds = %if.end.22, %do.end
  br label %while.cond

while.end:                                        ; preds = %land.end
  %21 = load i32, i32* %len, align 4
  ret i32 %21
}

declare i8* @MakeWinMsgEv(i8*, %struct.win*, i32, i32, %struct.event*, i32) #1

; Function Attrs: nounwind uwtable
define void @DisplayLine(%struct.mline* %oml, %struct.mline* %ml, i32 %y, i32 %from, i32 %to) #0 {
entry:
  %oml.addr = alloca %struct.mline*, align 8
  %ml.addr = alloca %struct.mline*, align 8
  %y.addr = alloca i32, align 4
  %from.addr = alloca i32, align 4
  %to.addr = alloca i32, align 4
  %x = alloca i32, align 4
  %last2flag = alloca i32, align 4
  %delete_lp = alloca i32, align 4
  store %struct.mline* %oml, %struct.mline** %oml.addr, align 8
  store %struct.mline* %ml, %struct.mline** %ml.addr, align 8
  store i32 %y, i32* %y.addr, align 4
  store i32 %from, i32* %from.addr, align 4
  store i32 %to, i32* %to.addr, align 4
  store i32 0, i32* %last2flag, align 4
  store i32 0, i32* %delete_lp, align 4
  br label %do.body

do.body:                                          ; preds = %entry
  br label %do.end

do.end:                                           ; preds = %do.body
  br label %do.body.1

do.body.1:                                        ; preds = %do.end
  br label %do.end.2

do.end.2:                                         ; preds = %do.body.1
  br label %do.body.3

do.body.3:                                        ; preds = %do.end.2
  br label %do.end.4

do.end.4:                                         ; preds = %do.body.3
  br label %do.body.5

do.body.5:                                        ; preds = %do.end.4
  br label %do.end.6

do.end.6:                                         ; preds = %do.body.5
  %0 = load %struct.display*, %struct.display** @display, align 8
  %d_tcs = getelementptr inbounds %struct.display, %struct.display* %0, i32 0, i32 83
  %arrayidx = getelementptr inbounds [201 x %union.tcu], [201 x %union.tcu]* %d_tcs, i32 0, i64 87
  %flg = bitcast %union.tcu* %arrayidx to i32*
  %1 = load i32, i32* %flg, align 4
  %tobool = icmp ne i32 %1, 0
  br i1 %tobool, label %if.end.225, label %land.lhs.true

land.lhs.true:                                    ; preds = %do.end.6
  %2 = load i32, i32* %y.addr, align 4
  %3 = load %struct.display*, %struct.display** @display, align 8
  %d_bot = getelementptr inbounds %struct.display, %struct.display* %3, i32 0, i32 21
  %4 = load i32, i32* %d_bot, align 4
  %cmp = icmp eq i32 %2, %4
  br i1 %cmp, label %land.lhs.true.7, label %if.end.225

land.lhs.true.7:                                  ; preds = %land.lhs.true
  %5 = load i32, i32* %to.addr, align 4
  %6 = load %struct.display*, %struct.display** @display, align 8
  %d_width = getelementptr inbounds %struct.display, %struct.display* %6, i32 0, i32 16
  %7 = load i32, i32* %d_width, align 4
  %sub = sub nsw i32 %7, 1
  %cmp8 = icmp eq i32 %5, %sub
  br i1 %cmp8, label %if.then, label %if.end.225

if.then:                                          ; preds = %land.lhs.true.7
  %8 = load %struct.display*, %struct.display** @display, align 8
  %d_lp_missing = getelementptr inbounds %struct.display, %struct.display* %8, i32 0, i32 38
  %9 = load i32, i32* %d_lp_missing, align 4
  %tobool9 = icmp ne i32 %9, 0
  br i1 %tobool9, label %if.then.57, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.then
  %10 = load i32, i32* %to.addr, align 4
  %idxprom = sext i32 %10 to i64
  %11 = load %struct.mline*, %struct.mline** %oml.addr, align 8
  %image = getelementptr inbounds %struct.mline, %struct.mline* %11, i32 0, i32 0
  %12 = load i8*, i8** %image, align 8
  %arrayidx10 = getelementptr inbounds i8, i8* %12, i64 %idxprom
  %13 = load i8, i8* %arrayidx10, align 1
  %conv = zext i8 %13 to i32
  %14 = load i32, i32* %to.addr, align 4
  %idxprom11 = sext i32 %14 to i64
  %15 = load %struct.mline*, %struct.mline** %ml.addr, align 8
  %image12 = getelementptr inbounds %struct.mline, %struct.mline* %15, i32 0, i32 0
  %16 = load i8*, i8** %image12, align 8
  %arrayidx13 = getelementptr inbounds i8, i8* %16, i64 %idxprom11
  %17 = load i8, i8* %arrayidx13, align 1
  %conv14 = zext i8 %17 to i32
  %cmp15 = icmp eq i32 %conv, %conv14
  br i1 %cmp15, label %land.lhs.true.17, label %if.then.57

land.lhs.true.17:                                 ; preds = %lor.lhs.false
  %18 = load i32, i32* %to.addr, align 4
  %idxprom18 = sext i32 %18 to i64
  %19 = load %struct.mline*, %struct.mline** %oml.addr, align 8
  %attr = getelementptr inbounds %struct.mline, %struct.mline* %19, i32 0, i32 1
  %20 = load i8*, i8** %attr, align 8
  %arrayidx19 = getelementptr inbounds i8, i8* %20, i64 %idxprom18
  %21 = load i8, i8* %arrayidx19, align 1
  %conv20 = zext i8 %21 to i32
  %22 = load i32, i32* %to.addr, align 4
  %idxprom21 = sext i32 %22 to i64
  %23 = load %struct.mline*, %struct.mline** %ml.addr, align 8
  %attr22 = getelementptr inbounds %struct.mline, %struct.mline* %23, i32 0, i32 1
  %24 = load i8*, i8** %attr22, align 8
  %arrayidx23 = getelementptr inbounds i8, i8* %24, i64 %idxprom21
  %25 = load i8, i8* %arrayidx23, align 1
  %conv24 = zext i8 %25 to i32
  %cmp25 = icmp eq i32 %conv20, %conv24
  br i1 %cmp25, label %land.lhs.true.27, label %if.then.57

land.lhs.true.27:                                 ; preds = %land.lhs.true.17
  %26 = load i32, i32* %to.addr, align 4
  %idxprom28 = sext i32 %26 to i64
  %27 = load %struct.mline*, %struct.mline** %oml.addr, align 8
  %font = getelementptr inbounds %struct.mline, %struct.mline* %27, i32 0, i32 2
  %28 = load i8*, i8** %font, align 8
  %arrayidx29 = getelementptr inbounds i8, i8* %28, i64 %idxprom28
  %29 = load i8, i8* %arrayidx29, align 1
  %conv30 = zext i8 %29 to i32
  %30 = load i32, i32* %to.addr, align 4
  %idxprom31 = sext i32 %30 to i64
  %31 = load %struct.mline*, %struct.mline** %ml.addr, align 8
  %font32 = getelementptr inbounds %struct.mline, %struct.mline* %31, i32 0, i32 2
  %32 = load i8*, i8** %font32, align 8
  %arrayidx33 = getelementptr inbounds i8, i8* %32, i64 %idxprom31
  %33 = load i8, i8* %arrayidx33, align 1
  %conv34 = zext i8 %33 to i32
  %cmp35 = icmp eq i32 %conv30, %conv34
  br i1 %cmp35, label %land.lhs.true.37, label %if.then.57

land.lhs.true.37:                                 ; preds = %land.lhs.true.27
  %34 = load i32, i32* %to.addr, align 4
  %idxprom38 = sext i32 %34 to i64
  %35 = load %struct.mline*, %struct.mline** %oml.addr, align 8
  %fontx = getelementptr inbounds %struct.mline, %struct.mline* %35, i32 0, i32 3
  %36 = load i8*, i8** %fontx, align 8
  %arrayidx39 = getelementptr inbounds i8, i8* %36, i64 %idxprom38
  %37 = load i8, i8* %arrayidx39, align 1
  %conv40 = zext i8 %37 to i32
  %38 = load i32, i32* %to.addr, align 4
  %idxprom41 = sext i32 %38 to i64
  %39 = load %struct.mline*, %struct.mline** %ml.addr, align 8
  %fontx42 = getelementptr inbounds %struct.mline, %struct.mline* %39, i32 0, i32 3
  %40 = load i8*, i8** %fontx42, align 8
  %arrayidx43 = getelementptr inbounds i8, i8* %40, i64 %idxprom41
  %41 = load i8, i8* %arrayidx43, align 1
  %conv44 = zext i8 %41 to i32
  %cmp45 = icmp eq i32 %conv40, %conv44
  br i1 %cmp45, label %land.lhs.true.47, label %if.then.57

land.lhs.true.47:                                 ; preds = %land.lhs.true.37
  %42 = load i32, i32* %to.addr, align 4
  %idxprom48 = sext i32 %42 to i64
  %43 = load %struct.mline*, %struct.mline** %oml.addr, align 8
  %color = getelementptr inbounds %struct.mline, %struct.mline* %43, i32 0, i32 4
  %44 = load i8*, i8** %color, align 8
  %arrayidx49 = getelementptr inbounds i8, i8* %44, i64 %idxprom48
  %45 = load i8, i8* %arrayidx49, align 1
  %conv50 = zext i8 %45 to i32
  %46 = load i32, i32* %to.addr, align 4
  %idxprom51 = sext i32 %46 to i64
  %47 = load %struct.mline*, %struct.mline** %ml.addr, align 8
  %color52 = getelementptr inbounds %struct.mline, %struct.mline* %47, i32 0, i32 4
  %48 = load i8*, i8** %color52, align 8
  %arrayidx53 = getelementptr inbounds i8, i8* %48, i64 %idxprom51
  %49 = load i8, i8* %arrayidx53, align 1
  %conv54 = zext i8 %49 to i32
  %cmp55 = icmp eq i32 %conv50, %conv54
  br i1 %cmp55, label %if.end.223, label %if.then.57

if.then.57:                                       ; preds = %land.lhs.true.47, %land.lhs.true.37, %land.lhs.true.27, %land.lhs.true.17, %lor.lhs.false, %if.then
  %50 = load %struct.display*, %struct.display** @display, align 8
  %d_tcs58 = getelementptr inbounds %struct.display, %struct.display* %50, i32 0, i32 83
  %arrayidx59 = getelementptr inbounds [201 x %union.tcu], [201 x %union.tcu]* %d_tcs58, i32 0, i64 29
  %str = bitcast %union.tcu* %arrayidx59 to i8**
  %51 = load i8*, i8** %str, align 8
  %tobool60 = icmp ne i8* %51, null
  br i1 %tobool60, label %land.lhs.true.66, label %lor.lhs.false.61

lor.lhs.false.61:                                 ; preds = %if.then.57
  %52 = load %struct.display*, %struct.display** @display, align 8
  %d_tcs62 = getelementptr inbounds %struct.display, %struct.display* %52, i32 0, i32 83
  %arrayidx63 = getelementptr inbounds [201 x %union.tcu], [201 x %union.tcu]* %d_tcs62, i32 0, i64 27
  %str64 = bitcast %union.tcu* %arrayidx63 to i8**
  %53 = load i8*, i8** %str64, align 8
  %tobool65 = icmp ne i8* %53, null
  br i1 %tobool65, label %land.lhs.true.66, label %if.else

land.lhs.true.66:                                 ; preds = %lor.lhs.false.61, %if.then.57
  %54 = load i32, i32* %from.addr, align 4
  %55 = load i32, i32* %to.addr, align 4
  %cmp67 = icmp slt i32 %54, %55
  br i1 %cmp67, label %land.lhs.true.69, label %if.else

land.lhs.true.69:                                 ; preds = %land.lhs.true.66
  %56 = load %struct.display*, %struct.display** @display, align 8
  %d_encoding = getelementptr inbounds %struct.display, %struct.display* %56, i32 0, i32 28
  %57 = load i32, i32* %d_encoding, align 4
  %cmp70 = icmp eq i32 %57, 8
  br i1 %cmp70, label %cond.true, label %cond.false

cond.true:                                        ; preds = %land.lhs.true.69
  %58 = load i32, i32* %to.addr, align 4
  %add = add nsw i32 %58, 1
  %idxprom72 = sext i32 %add to i64
  %59 = load %struct.mline*, %struct.mline** %ml.addr, align 8
  %font73 = getelementptr inbounds %struct.mline, %struct.mline* %59, i32 0, i32 2
  %60 = load i8*, i8** %font73, align 8
  %arrayidx74 = getelementptr inbounds i8, i8* %60, i64 %idxprom72
  %61 = load i8, i8* %arrayidx74, align 1
  %conv75 = zext i8 %61 to i32
  %cmp76 = icmp eq i32 %conv75, 255
  br i1 %cmp76, label %land.lhs.true.78, label %if.then.100

land.lhs.true.78:                                 ; preds = %cond.true
  %62 = load i32, i32* %to.addr, align 4
  %add79 = add nsw i32 %62, 1
  %idxprom80 = sext i32 %add79 to i64
  %63 = load %struct.mline*, %struct.mline** %ml.addr, align 8
  %image81 = getelementptr inbounds %struct.mline, %struct.mline* %63, i32 0, i32 0
  %64 = load i8*, i8** %image81, align 8
  %arrayidx82 = getelementptr inbounds i8, i8* %64, i64 %idxprom80
  %65 = load i8, i8* %arrayidx82, align 1
  %conv83 = zext i8 %65 to i32
  %cmp84 = icmp eq i32 %conv83, 255
  br i1 %cmp84, label %if.else, label %if.then.100

cond.false:                                       ; preds = %land.lhs.true.69
  %66 = load i32, i32* %to.addr, align 4
  %idxprom86 = sext i32 %66 to i64
  %67 = load %struct.mline*, %struct.mline** %ml.addr, align 8
  %font87 = getelementptr inbounds %struct.mline, %struct.mline* %67, i32 0, i32 2
  %68 = load i8*, i8** %font87, align 8
  %arrayidx88 = getelementptr inbounds i8, i8* %68, i64 %idxprom86
  %69 = load i8, i8* %arrayidx88, align 1
  %conv89 = zext i8 %69 to i32
  %and = and i32 %conv89, 31
  %cmp90 = icmp ne i32 %and, 0
  br i1 %cmp90, label %land.lhs.true.92, label %if.then.100

land.lhs.true.92:                                 ; preds = %cond.false
  %70 = load i32, i32* %to.addr, align 4
  %idxprom93 = sext i32 %70 to i64
  %71 = load %struct.mline*, %struct.mline** %ml.addr, align 8
  %font94 = getelementptr inbounds %struct.mline, %struct.mline* %71, i32 0, i32 2
  %72 = load i8*, i8** %font94, align 8
  %arrayidx95 = getelementptr inbounds i8, i8* %72, i64 %idxprom93
  %73 = load i8, i8* %arrayidx95, align 1
  %conv96 = zext i8 %73 to i32
  %and97 = and i32 %conv96, 224
  %cmp98 = icmp eq i32 %and97, 0
  br i1 %cmp98, label %if.else, label %if.then.100

if.then.100:                                      ; preds = %land.lhs.true.92, %cond.false, %land.lhs.true.78, %cond.true
  store i32 1, i32* %last2flag, align 4
  %74 = load %struct.display*, %struct.display** @display, align 8
  %d_lp_missing101 = getelementptr inbounds %struct.display, %struct.display* %74, i32 0, i32 38
  store i32 0, i32* %d_lp_missing101, align 4
  %75 = load i32, i32* %to.addr, align 4
  %dec = add nsw i32 %75, -1
  store i32 %dec, i32* %to.addr, align 4
  br label %if.end

if.else:                                          ; preds = %land.lhs.true.92, %land.lhs.true.78, %land.lhs.true.66, %lor.lhs.false.61
  %76 = load i8, i8* getelementptr inbounds (%struct.mchar, %struct.mchar* @mchar_blank, i32 0, i32 0), align 1
  %conv102 = zext i8 %76 to i32
  %77 = load i32, i32* %to.addr, align 4
  %idxprom103 = sext i32 %77 to i64
  %78 = load %struct.mline*, %struct.mline** %oml.addr, align 8
  %image104 = getelementptr inbounds %struct.mline, %struct.mline* %78, i32 0, i32 0
  %79 = load i8*, i8** %image104, align 8
  %arrayidx105 = getelementptr inbounds i8, i8* %79, i64 %idxprom103
  %80 = load i8, i8* %arrayidx105, align 1
  %conv106 = zext i8 %80 to i32
  %cmp107 = icmp eq i32 %conv102, %conv106
  br i1 %cmp107, label %land.lhs.true.109, label %land.rhs

land.lhs.true.109:                                ; preds = %if.else
  %81 = load i8, i8* getelementptr inbounds (%struct.mchar, %struct.mchar* @mchar_blank, i32 0, i32 1), align 1
  %conv110 = zext i8 %81 to i32
  %82 = load i32, i32* %to.addr, align 4
  %idxprom111 = sext i32 %82 to i64
  %83 = load %struct.mline*, %struct.mline** %oml.addr, align 8
  %attr112 = getelementptr inbounds %struct.mline, %struct.mline* %83, i32 0, i32 1
  %84 = load i8*, i8** %attr112, align 8
  %arrayidx113 = getelementptr inbounds i8, i8* %84, i64 %idxprom111
  %85 = load i8, i8* %arrayidx113, align 1
  %conv114 = zext i8 %85 to i32
  %cmp115 = icmp eq i32 %conv110, %conv114
  br i1 %cmp115, label %land.lhs.true.117, label %land.rhs

land.lhs.true.117:                                ; preds = %land.lhs.true.109
  %86 = load i8, i8* getelementptr inbounds (%struct.mchar, %struct.mchar* @mchar_blank, i32 0, i32 2), align 1
  %conv118 = zext i8 %86 to i32
  %87 = load i32, i32* %to.addr, align 4
  %idxprom119 = sext i32 %87 to i64
  %88 = load %struct.mline*, %struct.mline** %oml.addr, align 8
  %font120 = getelementptr inbounds %struct.mline, %struct.mline* %88, i32 0, i32 2
  %89 = load i8*, i8** %font120, align 8
  %arrayidx121 = getelementptr inbounds i8, i8* %89, i64 %idxprom119
  %90 = load i8, i8* %arrayidx121, align 1
  %conv122 = zext i8 %90 to i32
  %cmp123 = icmp eq i32 %conv118, %conv122
  br i1 %cmp123, label %land.lhs.true.125, label %land.rhs

land.lhs.true.125:                                ; preds = %land.lhs.true.117
  %91 = load i8, i8* getelementptr inbounds (%struct.mchar, %struct.mchar* @mchar_blank, i32 0, i32 3), align 1
  %conv126 = zext i8 %91 to i32
  %92 = load i32, i32* %to.addr, align 4
  %idxprom127 = sext i32 %92 to i64
  %93 = load %struct.mline*, %struct.mline** %oml.addr, align 8
  %fontx128 = getelementptr inbounds %struct.mline, %struct.mline* %93, i32 0, i32 3
  %94 = load i8*, i8** %fontx128, align 8
  %arrayidx129 = getelementptr inbounds i8, i8* %94, i64 %idxprom127
  %95 = load i8, i8* %arrayidx129, align 1
  %conv130 = zext i8 %95 to i32
  %cmp131 = icmp eq i32 %conv126, %conv130
  br i1 %cmp131, label %land.lhs.true.133, label %land.rhs

land.lhs.true.133:                                ; preds = %land.lhs.true.125
  %96 = load i8, i8* getelementptr inbounds (%struct.mchar, %struct.mchar* @mchar_blank, i32 0, i32 4), align 1
  %conv134 = zext i8 %96 to i32
  %97 = load i32, i32* %to.addr, align 4
  %idxprom135 = sext i32 %97 to i64
  %98 = load %struct.mline*, %struct.mline** %oml.addr, align 8
  %color136 = getelementptr inbounds %struct.mline, %struct.mline* %98, i32 0, i32 4
  %99 = load i8*, i8** %color136, align 8
  %arrayidx137 = getelementptr inbounds i8, i8* %99, i64 %idxprom135
  %100 = load i8, i8* %arrayidx137, align 1
  %conv138 = zext i8 %100 to i32
  %cmp139 = icmp eq i32 %conv134, %conv138
  br i1 %cmp139, label %land.end, label %land.rhs

land.rhs:                                         ; preds = %land.lhs.true.133, %land.lhs.true.125, %land.lhs.true.117, %land.lhs.true.109, %if.else
  %101 = load %struct.display*, %struct.display** @display, align 8
  %d_tcs141 = getelementptr inbounds %struct.display, %struct.display* %101, i32 0, i32 83
  %arrayidx142 = getelementptr inbounds [201 x %union.tcu], [201 x %union.tcu]* %d_tcs141, i32 0, i64 37
  %str143 = bitcast %union.tcu* %arrayidx142 to i8**
  %102 = load i8*, i8** %str143, align 8
  %tobool144 = icmp ne i8* %102, null
  br i1 %tobool144, label %lor.end, label %lor.lhs.false.145

lor.lhs.false.145:                                ; preds = %land.rhs
  %103 = load %struct.display*, %struct.display** @display, align 8
  %d_tcs146 = getelementptr inbounds %struct.display, %struct.display* %103, i32 0, i32 83
  %arrayidx147 = getelementptr inbounds [201 x %union.tcu], [201 x %union.tcu]* %d_tcs146, i32 0, i64 31
  %str148 = bitcast %union.tcu* %arrayidx147 to i8**
  %104 = load i8*, i8** %str148, align 8
  %tobool149 = icmp ne i8* %104, null
  br i1 %tobool149, label %lor.end, label %lor.rhs

lor.rhs:                                          ; preds = %lor.lhs.false.145
  %105 = load %struct.display*, %struct.display** @display, align 8
  %d_tcs150 = getelementptr inbounds %struct.display, %struct.display* %105, i32 0, i32 83
  %arrayidx151 = getelementptr inbounds [201 x %union.tcu], [201 x %union.tcu]* %d_tcs150, i32 0, i64 32
  %str152 = bitcast %union.tcu* %arrayidx151 to i8**
  %106 = load i8*, i8** %str152, align 8
  %tobool153 = icmp ne i8* %106, null
  br label %lor.end

lor.end:                                          ; preds = %lor.rhs, %lor.lhs.false.145, %land.rhs
  %107 = phi i1 [ true, %lor.lhs.false.145 ], [ true, %land.rhs ], [ %tobool153, %lor.rhs ]
  br label %land.end

land.end:                                         ; preds = %lor.end, %land.lhs.true.133
  %108 = phi i1 [ false, %land.lhs.true.133 ], [ %107, %lor.end ]
  %land.ext = zext i1 %108 to i32
  store i32 %land.ext, i32* %delete_lp, align 4
  %109 = load i8, i8* getelementptr inbounds (%struct.mchar, %struct.mchar* @mchar_blank, i32 0, i32 0), align 1
  %conv154 = zext i8 %109 to i32
  %110 = load i32, i32* %to.addr, align 4
  %idxprom155 = sext i32 %110 to i64
  %111 = load %struct.mline*, %struct.mline** %ml.addr, align 8
  %image156 = getelementptr inbounds %struct.mline, %struct.mline* %111, i32 0, i32 0
  %112 = load i8*, i8** %image156, align 8
  %arrayidx157 = getelementptr inbounds i8, i8* %112, i64 %idxprom155
  %113 = load i8, i8* %arrayidx157, align 1
  %conv158 = zext i8 %113 to i32
  %cmp159 = icmp eq i32 %conv154, %conv158
  br i1 %cmp159, label %land.lhs.true.161, label %land.end.193

land.lhs.true.161:                                ; preds = %land.end
  %114 = load i8, i8* getelementptr inbounds (%struct.mchar, %struct.mchar* @mchar_blank, i32 0, i32 1), align 1
  %conv162 = zext i8 %114 to i32
  %115 = load i32, i32* %to.addr, align 4
  %idxprom163 = sext i32 %115 to i64
  %116 = load %struct.mline*, %struct.mline** %ml.addr, align 8
  %attr164 = getelementptr inbounds %struct.mline, %struct.mline* %116, i32 0, i32 1
  %117 = load i8*, i8** %attr164, align 8
  %arrayidx165 = getelementptr inbounds i8, i8* %117, i64 %idxprom163
  %118 = load i8, i8* %arrayidx165, align 1
  %conv166 = zext i8 %118 to i32
  %cmp167 = icmp eq i32 %conv162, %conv166
  br i1 %cmp167, label %land.lhs.true.169, label %land.end.193

land.lhs.true.169:                                ; preds = %land.lhs.true.161
  %119 = load i8, i8* getelementptr inbounds (%struct.mchar, %struct.mchar* @mchar_blank, i32 0, i32 2), align 1
  %conv170 = zext i8 %119 to i32
  %120 = load i32, i32* %to.addr, align 4
  %idxprom171 = sext i32 %120 to i64
  %121 = load %struct.mline*, %struct.mline** %ml.addr, align 8
  %font172 = getelementptr inbounds %struct.mline, %struct.mline* %121, i32 0, i32 2
  %122 = load i8*, i8** %font172, align 8
  %arrayidx173 = getelementptr inbounds i8, i8* %122, i64 %idxprom171
  %123 = load i8, i8* %arrayidx173, align 1
  %conv174 = zext i8 %123 to i32
  %cmp175 = icmp eq i32 %conv170, %conv174
  br i1 %cmp175, label %land.lhs.true.177, label %land.end.193

land.lhs.true.177:                                ; preds = %land.lhs.true.169
  %124 = load i8, i8* getelementptr inbounds (%struct.mchar, %struct.mchar* @mchar_blank, i32 0, i32 3), align 1
  %conv178 = zext i8 %124 to i32
  %125 = load i32, i32* %to.addr, align 4
  %idxprom179 = sext i32 %125 to i64
  %126 = load %struct.mline*, %struct.mline** %ml.addr, align 8
  %fontx180 = getelementptr inbounds %struct.mline, %struct.mline* %126, i32 0, i32 3
  %127 = load i8*, i8** %fontx180, align 8
  %arrayidx181 = getelementptr inbounds i8, i8* %127, i64 %idxprom179
  %128 = load i8, i8* %arrayidx181, align 1
  %conv182 = zext i8 %128 to i32
  %cmp183 = icmp eq i32 %conv178, %conv182
  br i1 %cmp183, label %land.rhs.185, label %land.end.193

land.rhs.185:                                     ; preds = %land.lhs.true.177
  %129 = load i8, i8* getelementptr inbounds (%struct.mchar, %struct.mchar* @mchar_blank, i32 0, i32 4), align 1
  %conv186 = zext i8 %129 to i32
  %130 = load i32, i32* %to.addr, align 4
  %idxprom187 = sext i32 %130 to i64
  %131 = load %struct.mline*, %struct.mline** %ml.addr, align 8
  %color188 = getelementptr inbounds %struct.mline, %struct.mline* %131, i32 0, i32 4
  %132 = load i8*, i8** %color188, align 8
  %arrayidx189 = getelementptr inbounds i8, i8* %132, i64 %idxprom187
  %133 = load i8, i8* %arrayidx189, align 1
  %conv190 = zext i8 %133 to i32
  %cmp191 = icmp eq i32 %conv186, %conv190
  br label %land.end.193

land.end.193:                                     ; preds = %land.rhs.185, %land.lhs.true.177, %land.lhs.true.169, %land.lhs.true.161, %land.end
  %134 = phi i1 [ false, %land.lhs.true.177 ], [ false, %land.lhs.true.169 ], [ false, %land.lhs.true.161 ], [ false, %land.end ], [ %cmp191, %land.rhs.185 ]
  %lnot = xor i1 %134, true
  %lnot.ext = zext i1 %lnot to i32
  %135 = load %struct.display*, %struct.display** @display, align 8
  %d_lp_missing195 = getelementptr inbounds %struct.display, %struct.display* %135, i32 0, i32 38
  store i32 %lnot.ext, i32* %d_lp_missing195, align 4
  br label %do.body.196

do.body.196:                                      ; preds = %land.end.193
  %136 = load i32, i32* %to.addr, align 4
  %idxprom197 = sext i32 %136 to i64
  %137 = load %struct.mline*, %struct.mline** %ml.addr, align 8
  %image198 = getelementptr inbounds %struct.mline, %struct.mline* %137, i32 0, i32 0
  %138 = load i8*, i8** %image198, align 8
  %arrayidx199 = getelementptr inbounds i8, i8* %138, i64 %idxprom197
  %139 = load i8, i8* %arrayidx199, align 1
  %140 = load %struct.display*, %struct.display** @display, align 8
  %d_lpchar = getelementptr inbounds %struct.display, %struct.display* %140, i32 0, i32 41
  %image200 = getelementptr inbounds %struct.mchar, %struct.mchar* %d_lpchar, i32 0, i32 0
  store i8 %139, i8* %image200, align 1
  %141 = load i32, i32* %to.addr, align 4
  %idxprom201 = sext i32 %141 to i64
  %142 = load %struct.mline*, %struct.mline** %ml.addr, align 8
  %attr202 = getelementptr inbounds %struct.mline, %struct.mline* %142, i32 0, i32 1
  %143 = load i8*, i8** %attr202, align 8
  %arrayidx203 = getelementptr inbounds i8, i8* %143, i64 %idxprom201
  %144 = load i8, i8* %arrayidx203, align 1
  %145 = load %struct.display*, %struct.display** @display, align 8
  %d_lpchar204 = getelementptr inbounds %struct.display, %struct.display* %145, i32 0, i32 41
  %attr205 = getelementptr inbounds %struct.mchar, %struct.mchar* %d_lpchar204, i32 0, i32 1
  store i8 %144, i8* %attr205, align 1
  %146 = load i32, i32* %to.addr, align 4
  %idxprom206 = sext i32 %146 to i64
  %147 = load %struct.mline*, %struct.mline** %ml.addr, align 8
  %font207 = getelementptr inbounds %struct.mline, %struct.mline* %147, i32 0, i32 2
  %148 = load i8*, i8** %font207, align 8
  %arrayidx208 = getelementptr inbounds i8, i8* %148, i64 %idxprom206
  %149 = load i8, i8* %arrayidx208, align 1
  %150 = load %struct.display*, %struct.display** @display, align 8
  %d_lpchar209 = getelementptr inbounds %struct.display, %struct.display* %150, i32 0, i32 41
  %font210 = getelementptr inbounds %struct.mchar, %struct.mchar* %d_lpchar209, i32 0, i32 2
  store i8 %149, i8* %font210, align 1
  %151 = load i32, i32* %to.addr, align 4
  %idxprom211 = sext i32 %151 to i64
  %152 = load %struct.mline*, %struct.mline** %ml.addr, align 8
  %fontx212 = getelementptr inbounds %struct.mline, %struct.mline* %152, i32 0, i32 3
  %153 = load i8*, i8** %fontx212, align 8
  %arrayidx213 = getelementptr inbounds i8, i8* %153, i64 %idxprom211
  %154 = load i8, i8* %arrayidx213, align 1
  %155 = load %struct.display*, %struct.display** @display, align 8
  %d_lpchar214 = getelementptr inbounds %struct.display, %struct.display* %155, i32 0, i32 41
  %fontx215 = getelementptr inbounds %struct.mchar, %struct.mchar* %d_lpchar214, i32 0, i32 3
  store i8 %154, i8* %fontx215, align 1
  %156 = load i32, i32* %to.addr, align 4
  %idxprom216 = sext i32 %156 to i64
  %157 = load %struct.mline*, %struct.mline** %ml.addr, align 8
  %color217 = getelementptr inbounds %struct.mline, %struct.mline* %157, i32 0, i32 4
  %158 = load i8*, i8** %color217, align 8
  %arrayidx218 = getelementptr inbounds i8, i8* %158, i64 %idxprom216
  %159 = load i8, i8* %arrayidx218, align 1
  %160 = load %struct.display*, %struct.display** @display, align 8
  %d_lpchar219 = getelementptr inbounds %struct.display, %struct.display* %160, i32 0, i32 41
  %color220 = getelementptr inbounds %struct.mchar, %struct.mchar* %d_lpchar219, i32 0, i32 4
  store i8 %159, i8* %color220, align 1
  %161 = load %struct.display*, %struct.display** @display, align 8
  %d_lpchar221 = getelementptr inbounds %struct.display, %struct.display* %161, i32 0, i32 41
  %mbcs = getelementptr inbounds %struct.mchar, %struct.mchar* %d_lpchar221, i32 0, i32 5
  store i8 0, i8* %mbcs, align 1
  br label %do.end.222

do.end.222:                                       ; preds = %do.body.196
  br label %if.end

if.end:                                           ; preds = %do.end.222, %if.then.100
  br label %if.end.223

if.end.223:                                       ; preds = %if.end, %land.lhs.true.47
  %162 = load i32, i32* %to.addr, align 4
  %dec224 = add nsw i32 %162, -1
  store i32 %dec224, i32* %to.addr, align 4
  br label %if.end.225

if.end.225:                                       ; preds = %if.end.223, %land.lhs.true.7, %land.lhs.true, %do.end.6
  %163 = load %struct.display*, %struct.display** @display, align 8
  %d_mbcs = getelementptr inbounds %struct.display, %struct.display* %163, i32 0, i32 27
  %164 = load i32, i32* %d_mbcs, align 4
  %tobool226 = icmp ne i32 %164, 0
  br i1 %tobool226, label %if.then.227, label %if.end.234

if.then.227:                                      ; preds = %if.end.225
  br label %do.body.228

do.body.228:                                      ; preds = %if.then.227
  br label %do.end.229

do.end.229:                                       ; preds = %do.body.228
  %165 = load %struct.mline*, %struct.mline** %ml.addr, align 8
  %166 = load i32, i32* %from.addr, align 4
  call void @SetRenditionMline(%struct.mline* %165, i32 %166)
  %167 = load i32, i32* %from.addr, align 4
  %idxprom230 = sext i32 %167 to i64
  %168 = load %struct.mline*, %struct.mline** %ml.addr, align 8
  %image231 = getelementptr inbounds %struct.mline, %struct.mline* %168, i32 0, i32 0
  %169 = load i8*, i8** %image231, align 8
  %arrayidx232 = getelementptr inbounds i8, i8* %169, i64 %idxprom230
  %170 = load i8, i8* %arrayidx232, align 1
  %conv233 = zext i8 %170 to i32
  call void @PUTCHAR(i32 %conv233)
  %171 = load i32, i32* %from.addr, align 4
  %inc = add nsw i32 %171, 1
  store i32 %inc, i32* %from.addr, align 4
  br label %if.end.234

if.end.234:                                       ; preds = %do.end.229, %if.end.225
  %172 = load i32, i32* %from.addr, align 4
  store i32 %172, i32* %x, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end.234
  %173 = load i32, i32* %x, align 4
  %174 = load i32, i32* %to.addr, align 4
  %cmp235 = icmp sle i32 %173, %174
  br i1 %cmp235, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %175 = load %struct.mline*, %struct.mline** %ml.addr, align 8
  %cmp237 = icmp ne %struct.mline* %175, null
  br i1 %cmp237, label %land.lhs.true.239, label %if.end.311

land.lhs.true.239:                                ; preds = %for.body
  %176 = load i32, i32* %x, align 4
  %177 = load i32, i32* %to.addr, align 4
  %cmp240 = icmp slt i32 %176, %177
  br i1 %cmp240, label %if.then.254, label %lor.lhs.false.242

lor.lhs.false.242:                                ; preds = %land.lhs.true.239
  %178 = load i32, i32* %x, align 4
  %179 = load %struct.display*, %struct.display** @display, align 8
  %d_width243 = getelementptr inbounds %struct.display, %struct.display* %179, i32 0, i32 16
  %180 = load i32, i32* %d_width243, align 4
  %sub244 = sub nsw i32 %180, 1
  %cmp245 = icmp ne i32 %178, %sub244
  br i1 %cmp245, label %if.then.254, label %lor.lhs.false.247

lor.lhs.false.247:                                ; preds = %lor.lhs.false.242
  %181 = load i32, i32* %x, align 4
  %add248 = add nsw i32 %181, 1
  %idxprom249 = sext i32 %add248 to i64
  %182 = load %struct.mline*, %struct.mline** %ml.addr, align 8
  %image250 = getelementptr inbounds %struct.mline, %struct.mline* %182, i32 0, i32 0
  %183 = load i8*, i8** %image250, align 8
  %arrayidx251 = getelementptr inbounds i8, i8* %183, i64 %idxprom249
  %184 = load i8, i8* %arrayidx251, align 1
  %conv252 = zext i8 %184 to i32
  %tobool253 = icmp ne i32 %conv252, 0
  br i1 %tobool253, label %if.then.254, label %if.end.311

if.then.254:                                      ; preds = %lor.lhs.false.247, %lor.lhs.false.242, %land.lhs.true.239
  %185 = load i32, i32* %x, align 4
  %idxprom255 = sext i32 %185 to i64
  %186 = load %struct.mline*, %struct.mline** %oml.addr, align 8
  %image256 = getelementptr inbounds %struct.mline, %struct.mline* %186, i32 0, i32 0
  %187 = load i8*, i8** %image256, align 8
  %arrayidx257 = getelementptr inbounds i8, i8* %187, i64 %idxprom255
  %188 = load i8, i8* %arrayidx257, align 1
  %conv258 = zext i8 %188 to i32
  %189 = load i32, i32* %x, align 4
  %idxprom259 = sext i32 %189 to i64
  %190 = load %struct.mline*, %struct.mline** %ml.addr, align 8
  %image260 = getelementptr inbounds %struct.mline, %struct.mline* %190, i32 0, i32 0
  %191 = load i8*, i8** %image260, align 8
  %arrayidx261 = getelementptr inbounds i8, i8* %191, i64 %idxprom259
  %192 = load i8, i8* %arrayidx261, align 1
  %conv262 = zext i8 %192 to i32
  %cmp263 = icmp eq i32 %conv258, %conv262
  br i1 %cmp263, label %land.lhs.true.265, label %if.end.310

land.lhs.true.265:                                ; preds = %if.then.254
  %193 = load i32, i32* %x, align 4
  %idxprom266 = sext i32 %193 to i64
  %194 = load %struct.mline*, %struct.mline** %oml.addr, align 8
  %attr267 = getelementptr inbounds %struct.mline, %struct.mline* %194, i32 0, i32 1
  %195 = load i8*, i8** %attr267, align 8
  %arrayidx268 = getelementptr inbounds i8, i8* %195, i64 %idxprom266
  %196 = load i8, i8* %arrayidx268, align 1
  %conv269 = zext i8 %196 to i32
  %197 = load i32, i32* %x, align 4
  %idxprom270 = sext i32 %197 to i64
  %198 = load %struct.mline*, %struct.mline** %ml.addr, align 8
  %attr271 = getelementptr inbounds %struct.mline, %struct.mline* %198, i32 0, i32 1
  %199 = load i8*, i8** %attr271, align 8
  %arrayidx272 = getelementptr inbounds i8, i8* %199, i64 %idxprom270
  %200 = load i8, i8* %arrayidx272, align 1
  %conv273 = zext i8 %200 to i32
  %cmp274 = icmp eq i32 %conv269, %conv273
  br i1 %cmp274, label %land.lhs.true.276, label %if.end.310

land.lhs.true.276:                                ; preds = %land.lhs.true.265
  %201 = load i32, i32* %x, align 4
  %idxprom277 = sext i32 %201 to i64
  %202 = load %struct.mline*, %struct.mline** %oml.addr, align 8
  %font278 = getelementptr inbounds %struct.mline, %struct.mline* %202, i32 0, i32 2
  %203 = load i8*, i8** %font278, align 8
  %arrayidx279 = getelementptr inbounds i8, i8* %203, i64 %idxprom277
  %204 = load i8, i8* %arrayidx279, align 1
  %conv280 = zext i8 %204 to i32
  %205 = load i32, i32* %x, align 4
  %idxprom281 = sext i32 %205 to i64
  %206 = load %struct.mline*, %struct.mline** %ml.addr, align 8
  %font282 = getelementptr inbounds %struct.mline, %struct.mline* %206, i32 0, i32 2
  %207 = load i8*, i8** %font282, align 8
  %arrayidx283 = getelementptr inbounds i8, i8* %207, i64 %idxprom281
  %208 = load i8, i8* %arrayidx283, align 1
  %conv284 = zext i8 %208 to i32
  %cmp285 = icmp eq i32 %conv280, %conv284
  br i1 %cmp285, label %land.lhs.true.287, label %if.end.310

land.lhs.true.287:                                ; preds = %land.lhs.true.276
  %209 = load i32, i32* %x, align 4
  %idxprom288 = sext i32 %209 to i64
  %210 = load %struct.mline*, %struct.mline** %oml.addr, align 8
  %fontx289 = getelementptr inbounds %struct.mline, %struct.mline* %210, i32 0, i32 3
  %211 = load i8*, i8** %fontx289, align 8
  %arrayidx290 = getelementptr inbounds i8, i8* %211, i64 %idxprom288
  %212 = load i8, i8* %arrayidx290, align 1
  %conv291 = zext i8 %212 to i32
  %213 = load i32, i32* %x, align 4
  %idxprom292 = sext i32 %213 to i64
  %214 = load %struct.mline*, %struct.mline** %ml.addr, align 8
  %fontx293 = getelementptr inbounds %struct.mline, %struct.mline* %214, i32 0, i32 3
  %215 = load i8*, i8** %fontx293, align 8
  %arrayidx294 = getelementptr inbounds i8, i8* %215, i64 %idxprom292
  %216 = load i8, i8* %arrayidx294, align 1
  %conv295 = zext i8 %216 to i32
  %cmp296 = icmp eq i32 %conv291, %conv295
  br i1 %cmp296, label %land.lhs.true.298, label %if.end.310

land.lhs.true.298:                                ; preds = %land.lhs.true.287
  %217 = load i32, i32* %x, align 4
  %idxprom299 = sext i32 %217 to i64
  %218 = load %struct.mline*, %struct.mline** %oml.addr, align 8
  %color300 = getelementptr inbounds %struct.mline, %struct.mline* %218, i32 0, i32 4
  %219 = load i8*, i8** %color300, align 8
  %arrayidx301 = getelementptr inbounds i8, i8* %219, i64 %idxprom299
  %220 = load i8, i8* %arrayidx301, align 1
  %conv302 = zext i8 %220 to i32
  %221 = load i32, i32* %x, align 4
  %idxprom303 = sext i32 %221 to i64
  %222 = load %struct.mline*, %struct.mline** %ml.addr, align 8
  %color304 = getelementptr inbounds %struct.mline, %struct.mline* %222, i32 0, i32 4
  %223 = load i8*, i8** %color304, align 8
  %arrayidx305 = getelementptr inbounds i8, i8* %223, i64 %idxprom303
  %224 = load i8, i8* %arrayidx305, align 1
  %conv306 = zext i8 %224 to i32
  %cmp307 = icmp eq i32 %conv302, %conv306
  br i1 %cmp307, label %if.then.309, label %if.end.310

if.then.309:                                      ; preds = %land.lhs.true.298
  br label %for.inc

if.end.310:                                       ; preds = %land.lhs.true.298, %land.lhs.true.287, %land.lhs.true.276, %land.lhs.true.265, %if.then.254
  br label %if.end.311

if.end.311:                                       ; preds = %if.end.310, %lor.lhs.false.247, %for.body
  %225 = load i32, i32* %x, align 4
  %226 = load i32, i32* %y.addr, align 4
  call void @GotoPos(i32 %225, i32 %226)
  %227 = load %struct.display*, %struct.display** @display, align 8
  %d_encoding312 = getelementptr inbounds %struct.display, %struct.display* %227, i32 0, i32 28
  %228 = load i32, i32* %d_encoding312, align 4
  %cmp313 = icmp eq i32 %228, 8
  br i1 %cmp313, label %cond.true.315, label %cond.false.329

cond.true.315:                                    ; preds = %if.end.311
  %229 = load i32, i32* %x, align 4
  %idxprom316 = sext i32 %229 to i64
  %230 = load %struct.mline*, %struct.mline** %ml.addr, align 8
  %font317 = getelementptr inbounds %struct.mline, %struct.mline* %230, i32 0, i32 2
  %231 = load i8*, i8** %font317, align 8
  %arrayidx318 = getelementptr inbounds i8, i8* %231, i64 %idxprom316
  %232 = load i8, i8* %arrayidx318, align 1
  %conv319 = zext i8 %232 to i32
  %cmp320 = icmp eq i32 %conv319, 255
  br i1 %cmp320, label %land.lhs.true.322, label %if.end.341

land.lhs.true.322:                                ; preds = %cond.true.315
  %233 = load i32, i32* %x, align 4
  %idxprom323 = sext i32 %233 to i64
  %234 = load %struct.mline*, %struct.mline** %ml.addr, align 8
  %image324 = getelementptr inbounds %struct.mline, %struct.mline* %234, i32 0, i32 0
  %235 = load i8*, i8** %image324, align 8
  %arrayidx325 = getelementptr inbounds i8, i8* %235, i64 %idxprom323
  %236 = load i8, i8* %arrayidx325, align 1
  %conv326 = zext i8 %236 to i32
  %cmp327 = icmp eq i32 %conv326, 255
  br i1 %cmp327, label %if.then.337, label %if.end.341

cond.false.329:                                   ; preds = %if.end.311
  %237 = load i32, i32* %x, align 4
  %idxprom330 = sext i32 %237 to i64
  %238 = load %struct.mline*, %struct.mline** %ml.addr, align 8
  %font331 = getelementptr inbounds %struct.mline, %struct.mline* %238, i32 0, i32 2
  %239 = load i8*, i8** %font331, align 8
  %arrayidx332 = getelementptr inbounds i8, i8* %239, i64 %idxprom330
  %240 = load i8, i8* %arrayidx332, align 1
  %conv333 = zext i8 %240 to i32
  %and334 = and i32 %conv333, 224
  %cmp335 = icmp eq i32 %and334, 128
  br i1 %cmp335, label %if.then.337, label %if.end.341

if.then.337:                                      ; preds = %cond.false.329, %land.lhs.true.322
  %241 = load i32, i32* %x, align 4
  %dec338 = add nsw i32 %241, -1
  store i32 %dec338, i32* %x, align 4
  br label %do.body.339

do.body.339:                                      ; preds = %if.then.337
  br label %do.end.340

do.end.340:                                       ; preds = %do.body.339
  %242 = load i32, i32* %x, align 4
  %243 = load i32, i32* %y.addr, align 4
  call void @GotoPos(i32 %242, i32 %243)
  br label %if.end.341

if.end.341:                                       ; preds = %do.end.340, %cond.false.329, %land.lhs.true.322, %cond.true.315
  %244 = load i32, i32* %x, align 4
  %245 = load i32, i32* %to.addr, align 4
  %cmp342 = icmp eq i32 %244, %245
  br i1 %cmp342, label %land.lhs.true.344, label %if.end.381

land.lhs.true.344:                                ; preds = %if.end.341
  %246 = load %struct.display*, %struct.display** @display, align 8
  %d_encoding345 = getelementptr inbounds %struct.display, %struct.display* %246, i32 0, i32 28
  %247 = load i32, i32* %d_encoding345, align 4
  %cmp346 = icmp eq i32 %247, 8
  br i1 %cmp346, label %cond.true.348, label %cond.false.364

cond.true.348:                                    ; preds = %land.lhs.true.344
  %248 = load i32, i32* %x, align 4
  %add349 = add nsw i32 %248, 1
  %idxprom350 = sext i32 %add349 to i64
  %249 = load %struct.mline*, %struct.mline** %ml.addr, align 8
  %font351 = getelementptr inbounds %struct.mline, %struct.mline* %249, i32 0, i32 2
  %250 = load i8*, i8** %font351, align 8
  %arrayidx352 = getelementptr inbounds i8, i8* %250, i64 %idxprom350
  %251 = load i8, i8* %arrayidx352, align 1
  %conv353 = zext i8 %251 to i32
  %cmp354 = icmp eq i32 %conv353, 255
  br i1 %cmp354, label %land.lhs.true.356, label %if.end.381

land.lhs.true.356:                                ; preds = %cond.true.348
  %252 = load i32, i32* %x, align 4
  %add357 = add nsw i32 %252, 1
  %idxprom358 = sext i32 %add357 to i64
  %253 = load %struct.mline*, %struct.mline** %ml.addr, align 8
  %image359 = getelementptr inbounds %struct.mline, %struct.mline* %253, i32 0, i32 0
  %254 = load i8*, i8** %image359, align 8
  %arrayidx360 = getelementptr inbounds i8, i8* %254, i64 %idxprom358
  %255 = load i8, i8* %arrayidx360, align 1
  %conv361 = zext i8 %255 to i32
  %cmp362 = icmp eq i32 %conv361, 255
  br i1 %cmp362, label %if.then.380, label %if.end.381

cond.false.364:                                   ; preds = %land.lhs.true.344
  %256 = load i32, i32* %x, align 4
  %idxprom365 = sext i32 %256 to i64
  %257 = load %struct.mline*, %struct.mline** %ml.addr, align 8
  %font366 = getelementptr inbounds %struct.mline, %struct.mline* %257, i32 0, i32 2
  %258 = load i8*, i8** %font366, align 8
  %arrayidx367 = getelementptr inbounds i8, i8* %258, i64 %idxprom365
  %259 = load i8, i8* %arrayidx367, align 1
  %conv368 = zext i8 %259 to i32
  %and369 = and i32 %conv368, 31
  %cmp370 = icmp ne i32 %and369, 0
  br i1 %cmp370, label %land.lhs.true.372, label %if.end.381

land.lhs.true.372:                                ; preds = %cond.false.364
  %260 = load i32, i32* %x, align 4
  %idxprom373 = sext i32 %260 to i64
  %261 = load %struct.mline*, %struct.mline** %ml.addr, align 8
  %font374 = getelementptr inbounds %struct.mline, %struct.mline* %261, i32 0, i32 2
  %262 = load i8*, i8** %font374, align 8
  %arrayidx375 = getelementptr inbounds i8, i8* %262, i64 %idxprom373
  %263 = load i8, i8* %arrayidx375, align 1
  %conv376 = zext i8 %263 to i32
  %and377 = and i32 %conv376, 224
  %cmp378 = icmp eq i32 %and377, 0
  br i1 %cmp378, label %if.then.380, label %if.end.381

if.then.380:                                      ; preds = %land.lhs.true.372, %land.lhs.true.356
  br label %for.end

if.end.381:                                       ; preds = %land.lhs.true.372, %cond.false.364, %land.lhs.true.356, %cond.true.348, %if.end.341
  %264 = load %struct.mline*, %struct.mline** %ml.addr, align 8
  %265 = load i32, i32* %x, align 4
  call void @SetRenditionMline(%struct.mline* %264, i32 %265)
  %266 = load i32, i32* %x, align 4
  %idxprom382 = sext i32 %266 to i64
  %267 = load %struct.mline*, %struct.mline** %ml.addr, align 8
  %image383 = getelementptr inbounds %struct.mline, %struct.mline* %267, i32 0, i32 0
  %268 = load i8*, i8** %image383, align 8
  %arrayidx384 = getelementptr inbounds i8, i8* %268, i64 %idxprom382
  %269 = load i8, i8* %arrayidx384, align 1
  %conv385 = zext i8 %269 to i32
  call void @PUTCHAR(i32 %conv385)
  %270 = load %struct.display*, %struct.display** @display, align 8
  %d_encoding386 = getelementptr inbounds %struct.display, %struct.display* %270, i32 0, i32 28
  %271 = load i32, i32* %d_encoding386, align 4
  %cmp387 = icmp eq i32 %271, 8
  br i1 %cmp387, label %cond.true.389, label %cond.false.405

cond.true.389:                                    ; preds = %if.end.381
  %272 = load i32, i32* %x, align 4
  %add390 = add nsw i32 %272, 1
  %idxprom391 = sext i32 %add390 to i64
  %273 = load %struct.mline*, %struct.mline** %ml.addr, align 8
  %font392 = getelementptr inbounds %struct.mline, %struct.mline* %273, i32 0, i32 2
  %274 = load i8*, i8** %font392, align 8
  %arrayidx393 = getelementptr inbounds i8, i8* %274, i64 %idxprom391
  %275 = load i8, i8* %arrayidx393, align 1
  %conv394 = zext i8 %275 to i32
  %cmp395 = icmp eq i32 %conv394, 255
  br i1 %cmp395, label %land.lhs.true.397, label %if.end.427

land.lhs.true.397:                                ; preds = %cond.true.389
  %276 = load i32, i32* %x, align 4
  %add398 = add nsw i32 %276, 1
  %idxprom399 = sext i32 %add398 to i64
  %277 = load %struct.mline*, %struct.mline** %ml.addr, align 8
  %image400 = getelementptr inbounds %struct.mline, %struct.mline* %277, i32 0, i32 0
  %278 = load i8*, i8** %image400, align 8
  %arrayidx401 = getelementptr inbounds i8, i8* %278, i64 %idxprom399
  %279 = load i8, i8* %arrayidx401, align 1
  %conv402 = zext i8 %279 to i32
  %cmp403 = icmp eq i32 %conv402, 255
  br i1 %cmp403, label %if.then.421, label %if.end.427

cond.false.405:                                   ; preds = %if.end.381
  %280 = load i32, i32* %x, align 4
  %idxprom406 = sext i32 %280 to i64
  %281 = load %struct.mline*, %struct.mline** %ml.addr, align 8
  %font407 = getelementptr inbounds %struct.mline, %struct.mline* %281, i32 0, i32 2
  %282 = load i8*, i8** %font407, align 8
  %arrayidx408 = getelementptr inbounds i8, i8* %282, i64 %idxprom406
  %283 = load i8, i8* %arrayidx408, align 1
  %conv409 = zext i8 %283 to i32
  %and410 = and i32 %conv409, 31
  %cmp411 = icmp ne i32 %and410, 0
  br i1 %cmp411, label %land.lhs.true.413, label %if.end.427

land.lhs.true.413:                                ; preds = %cond.false.405
  %284 = load i32, i32* %x, align 4
  %idxprom414 = sext i32 %284 to i64
  %285 = load %struct.mline*, %struct.mline** %ml.addr, align 8
  %font415 = getelementptr inbounds %struct.mline, %struct.mline* %285, i32 0, i32 2
  %286 = load i8*, i8** %font415, align 8
  %arrayidx416 = getelementptr inbounds i8, i8* %286, i64 %idxprom414
  %287 = load i8, i8* %arrayidx416, align 1
  %conv417 = zext i8 %287 to i32
  %and418 = and i32 %conv417, 224
  %cmp419 = icmp eq i32 %and418, 0
  br i1 %cmp419, label %if.then.421, label %if.end.427

if.then.421:                                      ; preds = %land.lhs.true.413, %land.lhs.true.397
  %288 = load i32, i32* %x, align 4
  %inc422 = add nsw i32 %288, 1
  store i32 %inc422, i32* %x, align 4
  %idxprom423 = sext i32 %inc422 to i64
  %289 = load %struct.mline*, %struct.mline** %ml.addr, align 8
  %image424 = getelementptr inbounds %struct.mline, %struct.mline* %289, i32 0, i32 0
  %290 = load i8*, i8** %image424, align 8
  %arrayidx425 = getelementptr inbounds i8, i8* %290, i64 %idxprom423
  %291 = load i8, i8* %arrayidx425, align 1
  %conv426 = zext i8 %291 to i32
  call void @PUTCHAR(i32 %conv426)
  br label %if.end.427

if.end.427:                                       ; preds = %if.then.421, %land.lhs.true.413, %cond.false.405, %land.lhs.true.397, %cond.true.389
  br label %for.inc

for.inc:                                          ; preds = %if.end.427, %if.then.309
  %292 = load i32, i32* %x, align 4
  %inc428 = add nsw i32 %292, 1
  store i32 %inc428, i32* %x, align 4
  br label %for.cond

for.end:                                          ; preds = %if.then.380, %for.cond
  %293 = load i32, i32* %last2flag, align 4
  %tobool429 = icmp ne i32 %293, 0
  br i1 %tobool429, label %if.then.430, label %if.else.441

if.then.430:                                      ; preds = %for.end
  %294 = load i32, i32* %x, align 4
  %295 = load i32, i32* %y.addr, align 4
  call void @GotoPos(i32 %294, i32 %295)
  %296 = load %struct.mline*, %struct.mline** %ml.addr, align 8
  %297 = load i32, i32* %x, align 4
  %add431 = add nsw i32 %297, 1
  call void @SetRenditionMline(%struct.mline* %296, i32 %add431)
  %298 = load i32, i32* %x, align 4
  %add432 = add nsw i32 %298, 1
  %idxprom433 = sext i32 %add432 to i64
  %299 = load %struct.mline*, %struct.mline** %ml.addr, align 8
  %image434 = getelementptr inbounds %struct.mline, %struct.mline* %299, i32 0, i32 0
  %300 = load i8*, i8** %image434, align 8
  %arrayidx435 = getelementptr inbounds i8, i8* %300, i64 %idxprom433
  %301 = load i8, i8* %arrayidx435, align 1
  %conv436 = zext i8 %301 to i32
  call void @PUTCHAR(i32 %conv436)
  %302 = load i32, i32* %x, align 4
  %303 = load i32, i32* %y.addr, align 4
  call void @GotoPos(i32 %302, i32 %303)
  %304 = load %struct.mline*, %struct.mline** %ml.addr, align 8
  %305 = load i32, i32* %x, align 4
  call void @SetRenditionMline(%struct.mline* %304, i32 %305)
  %306 = load i32, i32* %x, align 4
  %idxprom437 = sext i32 %306 to i64
  %307 = load %struct.mline*, %struct.mline** %ml.addr, align 8
  %image438 = getelementptr inbounds %struct.mline, %struct.mline* %307, i32 0, i32 0
  %308 = load i8*, i8** %image438, align 8
  %arrayidx439 = getelementptr inbounds i8, i8* %308, i64 %idxprom437
  %309 = load i8, i8* %arrayidx439, align 1
  %conv440 = zext i8 %309 to i32
  call void @INSERTCHAR(i32 %conv440)
  br label %if.end.480

if.else.441:                                      ; preds = %for.end
  %310 = load i32, i32* %delete_lp, align 4
  %tobool442 = icmp ne i32 %310, 0
  br i1 %tobool442, label %if.then.443, label %if.end.479

if.then.443:                                      ; preds = %if.else.441
  %311 = load %struct.display*, %struct.display** @display, align 8
  %d_tcs444 = getelementptr inbounds %struct.display, %struct.display* %311, i32 0, i32 83
  %arrayidx445 = getelementptr inbounds [201 x %union.tcu], [201 x %union.tcu]* %d_tcs444, i32 0, i64 33
  %flg446 = bitcast %union.tcu* %arrayidx445 to i32*
  %312 = load i32, i32* %flg446, align 4
  %tobool447 = icmp ne i32 %312, 0
  br i1 %tobool447, label %if.then.448, label %if.end.449

if.then.448:                                      ; preds = %if.then.443
  call void @SetRendition(%struct.mchar* @mchar_null)
  br label %if.end.449

if.end.449:                                       ; preds = %if.then.448, %if.then.443
  %313 = load %struct.display*, %struct.display** @display, align 8
  %d_tcs450 = getelementptr inbounds %struct.display, %struct.display* %313, i32 0, i32 83
  %arrayidx451 = getelementptr inbounds [201 x %union.tcu], [201 x %union.tcu]* %d_tcs450, i32 0, i64 31
  %str452 = bitcast %union.tcu* %arrayidx451 to i8**
  %314 = load i8*, i8** %str452, align 8
  %tobool453 = icmp ne i8* %314, null
  br i1 %tobool453, label %if.then.454, label %if.else.458

if.then.454:                                      ; preds = %if.end.449
  %315 = load %struct.display*, %struct.display** @display, align 8
  %d_tcs455 = getelementptr inbounds %struct.display, %struct.display* %315, i32 0, i32 83
  %arrayidx456 = getelementptr inbounds [201 x %union.tcu], [201 x %union.tcu]* %d_tcs455, i32 0, i64 31
  %str457 = bitcast %union.tcu* %arrayidx456 to i8**
  %316 = load i8*, i8** %str457, align 8
  call void @AddCStr(i8* %316)
  br label %if.end.478

if.else.458:                                      ; preds = %if.end.449
  %317 = load %struct.display*, %struct.display** @display, align 8
  %d_tcs459 = getelementptr inbounds %struct.display, %struct.display* %317, i32 0, i32 83
  %arrayidx460 = getelementptr inbounds [201 x %union.tcu], [201 x %union.tcu]* %d_tcs459, i32 0, i64 32
  %str461 = bitcast %union.tcu* %arrayidx460 to i8**
  %318 = load i8*, i8** %str461, align 8
  %tobool462 = icmp ne i8* %318, null
  br i1 %tobool462, label %if.then.463, label %if.else.467

if.then.463:                                      ; preds = %if.else.458
  %319 = load %struct.display*, %struct.display** @display, align 8
  %d_tcs464 = getelementptr inbounds %struct.display, %struct.display* %319, i32 0, i32 83
  %arrayidx465 = getelementptr inbounds [201 x %union.tcu], [201 x %union.tcu]* %d_tcs464, i32 0, i64 32
  %str466 = bitcast %union.tcu* %arrayidx465 to i8**
  %320 = load i8*, i8** %str466, align 8
  call void @AddCStr2(i8* %320, i32 1)
  br label %if.end.477

if.else.467:                                      ; preds = %if.else.458
  %321 = load %struct.display*, %struct.display** @display, align 8
  %d_tcs468 = getelementptr inbounds %struct.display, %struct.display* %321, i32 0, i32 83
  %arrayidx469 = getelementptr inbounds [201 x %union.tcu], [201 x %union.tcu]* %d_tcs468, i32 0, i64 37
  %str470 = bitcast %union.tcu* %arrayidx469 to i8**
  %322 = load i8*, i8** %str470, align 8
  %tobool471 = icmp ne i8* %322, null
  br i1 %tobool471, label %if.then.472, label %if.end.476

if.then.472:                                      ; preds = %if.else.467
  %323 = load %struct.display*, %struct.display** @display, align 8
  %d_tcs473 = getelementptr inbounds %struct.display, %struct.display* %323, i32 0, i32 83
  %arrayidx474 = getelementptr inbounds [201 x %union.tcu], [201 x %union.tcu]* %d_tcs473, i32 0, i64 37
  %str475 = bitcast %union.tcu* %arrayidx474 to i8**
  %324 = load i8*, i8** %str475, align 8
  call void @AddCStr(i8* %324)
  br label %if.end.476

if.end.476:                                       ; preds = %if.then.472, %if.else.467
  br label %if.end.477

if.end.477:                                       ; preds = %if.end.476, %if.then.463
  br label %if.end.478

if.end.478:                                       ; preds = %if.end.477, %if.then.454
  br label %if.end.479

if.end.479:                                       ; preds = %if.end.478, %if.else.441
  br label %if.end.480

if.end.480:                                       ; preds = %if.end.479, %if.then.430
  ret void
}

; Function Attrs: nounwind uwtable
define void @PutChar(%struct.mchar* %c, i32 %x, i32 %y) #0 {
entry:
  %c.addr = alloca %struct.mchar*, align 8
  %x.addr = alloca i32, align 4
  %y.addr = alloca i32, align 4
  store %struct.mchar* %c, %struct.mchar** %c.addr, align 8
  store i32 %x, i32* %x.addr, align 4
  store i32 %y, i32* %y.addr, align 4
  %0 = load i32, i32* %x.addr, align 4
  %1 = load i32, i32* %y.addr, align 4
  call void @GotoPos(i32 %0, i32 %1)
  %2 = load %struct.mchar*, %struct.mchar** %c.addr, align 8
  call void @SetRendition(%struct.mchar* %2)
  %3 = load %struct.mchar*, %struct.mchar** %c.addr, align 8
  %image = getelementptr inbounds %struct.mchar, %struct.mchar* %3, i32 0, i32 0
  %4 = load i8, i8* %image, align 1
  %conv = zext i8 %4 to i32
  call void @PUTCHARLP(i32 %conv)
  %5 = load %struct.mchar*, %struct.mchar** %c.addr, align 8
  %mbcs = getelementptr inbounds %struct.mchar, %struct.mchar* %5, i32 0, i32 5
  %6 = load i8, i8* %mbcs, align 1
  %tobool = icmp ne i8 %6, 0
  br i1 %tobool, label %if.then, label %if.end.5

if.then:                                          ; preds = %entry
  %7 = load %struct.display*, %struct.display** @display, align 8
  %d_encoding = getelementptr inbounds %struct.display, %struct.display* %7, i32 0, i32 28
  %8 = load i32, i32* %d_encoding, align 4
  %cmp = icmp eq i32 %8, 8
  br i1 %cmp, label %if.then.2, label %if.end

if.then.2:                                        ; preds = %if.then
  %9 = load %struct.display*, %struct.display** @display, align 8
  %d_rend = getelementptr inbounds %struct.display, %struct.display* %9, i32 0, i32 24
  %font = getelementptr inbounds %struct.mchar, %struct.mchar* %d_rend, i32 0, i32 2
  store i8 0, i8* %font, align 1
  br label %if.end

if.end:                                           ; preds = %if.then.2, %if.then
  %10 = load %struct.mchar*, %struct.mchar** %c.addr, align 8
  %mbcs3 = getelementptr inbounds %struct.mchar, %struct.mchar* %10, i32 0, i32 5
  %11 = load i8, i8* %mbcs3, align 1
  %conv4 = zext i8 %11 to i32
  call void @PUTCHARLP(i32 %conv4)
  br label %if.end.5

if.end.5:                                         ; preds = %if.end, %entry
  ret void
}

; Function Attrs: nounwind uwtable
define void @InsChar(%struct.mchar* %c, i32 %x, i32 %xe, i32 %y, %struct.mline* %oml) #0 {
entry:
  %c.addr = alloca %struct.mchar*, align 8
  %x.addr = alloca i32, align 4
  %xe.addr = alloca i32, align 4
  %y.addr = alloca i32, align 4
  %oml.addr = alloca %struct.mline*, align 8
  store %struct.mchar* %c, %struct.mchar** %c.addr, align 8
  store i32 %x, i32* %x.addr, align 4
  store i32 %xe, i32* %xe.addr, align 4
  store i32 %y, i32* %y.addr, align 4
  store %struct.mline* %oml, %struct.mline** %oml.addr, align 8
  %0 = load i32, i32* %x.addr, align 4
  %1 = load i32, i32* %y.addr, align 4
  call void @GotoPos(i32 %0, i32 %1)
  %2 = load i32, i32* %y.addr, align 4
  %3 = load %struct.display*, %struct.display** @display, align 8
  %d_bot = getelementptr inbounds %struct.display, %struct.display* %3, i32 0, i32 21
  %4 = load i32, i32* %d_bot, align 4
  %cmp = icmp eq i32 %2, %4
  br i1 %cmp, label %land.lhs.true, label %if.end.9

land.lhs.true:                                    ; preds = %entry
  %5 = load %struct.display*, %struct.display** @display, align 8
  %d_tcs = getelementptr inbounds %struct.display, %struct.display* %5, i32 0, i32 83
  %arrayidx = getelementptr inbounds [201 x %union.tcu], [201 x %union.tcu]* %d_tcs, i32 0, i64 87
  %flg = bitcast %union.tcu* %arrayidx to i32*
  %6 = load i32, i32* %flg, align 4
  %tobool = icmp ne i32 %6, 0
  br i1 %tobool, label %if.end.9, label %if.then

if.then:                                          ; preds = %land.lhs.true
  %7 = load i32, i32* %x.addr, align 4
  %8 = load %struct.display*, %struct.display** @display, align 8
  %d_width = getelementptr inbounds %struct.display, %struct.display* %8, i32 0, i32 16
  %9 = load i32, i32* %d_width, align 4
  %sub = sub nsw i32 %9, 1
  %cmp1 = icmp eq i32 %7, %sub
  br i1 %cmp1, label %if.then.2, label %if.end

if.then.2:                                        ; preds = %if.then
  %10 = load %struct.display*, %struct.display** @display, align 8
  %d_lp_missing = getelementptr inbounds %struct.display, %struct.display* %10, i32 0, i32 38
  store i32 1, i32* %d_lp_missing, align 4
  %11 = load %struct.display*, %struct.display** @display, align 8
  %d_lpchar = getelementptr inbounds %struct.display, %struct.display* %11, i32 0, i32 41
  %12 = load %struct.mchar*, %struct.mchar** %c.addr, align 8
  %13 = bitcast %struct.mchar* %d_lpchar to i8*
  %14 = bitcast %struct.mchar* %12 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %13, i8* %14, i64 6, i32 1, i1 false)
  br label %if.end.82

if.end:                                           ; preds = %if.then
  %15 = load i32, i32* %xe.addr, align 4
  %16 = load %struct.display*, %struct.display** @display, align 8
  %d_width3 = getelementptr inbounds %struct.display, %struct.display* %16, i32 0, i32 16
  %17 = load i32, i32* %d_width3, align 4
  %sub4 = sub nsw i32 %17, 1
  %cmp5 = icmp eq i32 %15, %sub4
  br i1 %cmp5, label %if.then.6, label %if.end.8

if.then.6:                                        ; preds = %if.end
  %18 = load %struct.display*, %struct.display** @display, align 8
  %d_lp_missing7 = getelementptr inbounds %struct.display, %struct.display* %18, i32 0, i32 38
  store i32 0, i32* %d_lp_missing7, align 4
  br label %if.end.8

if.end.8:                                         ; preds = %if.then.6, %if.end
  br label %if.end.9

if.end.9:                                         ; preds = %if.end.8, %land.lhs.true, %entry
  %19 = load i32, i32* %x.addr, align 4
  %20 = load i32, i32* %xe.addr, align 4
  %cmp10 = icmp eq i32 %19, %20
  br i1 %cmp10, label %if.then.11, label %if.end.12

if.then.11:                                       ; preds = %if.end.9
  %21 = load %struct.mchar*, %struct.mchar** %c.addr, align 8
  call void @SetRendition(%struct.mchar* %21)
  %22 = load %struct.mchar*, %struct.mchar** %c.addr, align 8
  %image = getelementptr inbounds %struct.mchar, %struct.mchar* %22, i32 0, i32 0
  %23 = load i8, i8* %image, align 1
  %conv = zext i8 %23 to i32
  call void @PUTCHARLP(i32 %conv)
  br label %if.end.82

if.end.12:                                        ; preds = %if.end.9
  %24 = load %struct.display*, %struct.display** @display, align 8
  %d_tcs13 = getelementptr inbounds %struct.display, %struct.display* %24, i32 0, i32 83
  %arrayidx14 = getelementptr inbounds [201 x %union.tcu], [201 x %union.tcu]* %d_tcs13, i32 0, i64 29
  %str = bitcast %union.tcu* %arrayidx14 to i8**
  %25 = load i8*, i8** %str, align 8
  %tobool15 = icmp ne i8* %25, null
  br i1 %tobool15, label %lor.lhs.false.25, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.end.12
  %26 = load %struct.display*, %struct.display** @display, align 8
  %d_tcs16 = getelementptr inbounds %struct.display, %struct.display* %26, i32 0, i32 83
  %arrayidx17 = getelementptr inbounds [201 x %union.tcu], [201 x %union.tcu]* %d_tcs16, i32 0, i64 30
  %str18 = bitcast %union.tcu* %arrayidx17 to i8**
  %27 = load i8*, i8** %str18, align 8
  %tobool19 = icmp ne i8* %27, null
  br i1 %tobool19, label %lor.lhs.false.25, label %lor.lhs.false.20

lor.lhs.false.20:                                 ; preds = %lor.lhs.false
  %28 = load %struct.display*, %struct.display** @display, align 8
  %d_tcs21 = getelementptr inbounds %struct.display, %struct.display* %28, i32 0, i32 83
  %arrayidx22 = getelementptr inbounds [201 x %union.tcu], [201 x %union.tcu]* %d_tcs21, i32 0, i64 27
  %str23 = bitcast %union.tcu* %arrayidx22 to i8**
  %29 = load i8*, i8** %str23, align 8
  %tobool24 = icmp ne i8* %29, null
  br i1 %tobool24, label %lor.lhs.false.25, label %if.then.30

lor.lhs.false.25:                                 ; preds = %lor.lhs.false.20, %lor.lhs.false, %if.end.12
  %30 = load i32, i32* %xe.addr, align 4
  %31 = load %struct.display*, %struct.display** @display, align 8
  %d_width26 = getelementptr inbounds %struct.display, %struct.display* %31, i32 0, i32 16
  %32 = load i32, i32* %d_width26, align 4
  %sub27 = sub nsw i32 %32, 1
  %cmp28 = icmp ne i32 %30, %sub27
  br i1 %cmp28, label %if.then.30, label %if.end.31

if.then.30:                                       ; preds = %lor.lhs.false.25, %lor.lhs.false.20
  %33 = load i32, i32* %y.addr, align 4
  %34 = load i32, i32* %x.addr, align 4
  %35 = load i32, i32* %xe.addr, align 4
  call void @RefreshLine(i32 %33, i32 %34, i32 %35, i32 0)
  %36 = load i32, i32* %x.addr, align 4
  %add = add nsw i32 %36, 1
  %37 = load i32, i32* %y.addr, align 4
  call void @GotoPos(i32 %add, i32 %37)
  br label %if.end.82

if.end.31:                                        ; preds = %lor.lhs.false.25
  call void @InsertMode(i32 1)
  %38 = load %struct.display*, %struct.display** @display, align 8
  %d_insert = getelementptr inbounds %struct.display, %struct.display* %38, i32 0, i32 31
  %39 = load i32, i32* %d_insert, align 4
  %tobool32 = icmp ne i32 %39, 0
  br i1 %tobool32, label %if.end.61, label %if.then.33

if.then.33:                                       ; preds = %if.end.31
  %40 = load %struct.mchar*, %struct.mchar** %c.addr, align 8
  %mbcs = getelementptr inbounds %struct.mchar, %struct.mchar* %40, i32 0, i32 5
  %41 = load i8, i8* %mbcs, align 1
  %conv34 = zext i8 %41 to i32
  %tobool35 = icmp ne i32 %conv34, 0
  br i1 %tobool35, label %land.lhs.true.36, label %if.end.45

land.lhs.true.36:                                 ; preds = %if.then.33
  %42 = load %struct.display*, %struct.display** @display, align 8
  %d_tcs37 = getelementptr inbounds %struct.display, %struct.display* %42, i32 0, i32 83
  %arrayidx38 = getelementptr inbounds [201 x %union.tcu], [201 x %union.tcu]* %d_tcs37, i32 0, i64 29
  %str39 = bitcast %union.tcu* %arrayidx38 to i8**
  %43 = load i8*, i8** %str39, align 8
  %tobool40 = icmp ne i8* %43, null
  br i1 %tobool40, label %if.then.41, label %if.end.45

if.then.41:                                       ; preds = %land.lhs.true.36
  %44 = load %struct.display*, %struct.display** @display, align 8
  %d_tcs42 = getelementptr inbounds %struct.display, %struct.display* %44, i32 0, i32 83
  %arrayidx43 = getelementptr inbounds [201 x %union.tcu], [201 x %union.tcu]* %d_tcs42, i32 0, i64 29
  %str44 = bitcast %union.tcu* %arrayidx43 to i8**
  %45 = load i8*, i8** %str44, align 8
  call void @AddCStr(i8* %45)
  br label %if.end.45

if.end.45:                                        ; preds = %if.then.41, %land.lhs.true.36, %if.then.33
  %46 = load %struct.display*, %struct.display** @display, align 8
  %d_tcs46 = getelementptr inbounds %struct.display, %struct.display* %46, i32 0, i32 83
  %arrayidx47 = getelementptr inbounds [201 x %union.tcu], [201 x %union.tcu]* %d_tcs46, i32 0, i64 29
  %str48 = bitcast %union.tcu* %arrayidx47 to i8**
  %47 = load i8*, i8** %str48, align 8
  %tobool49 = icmp ne i8* %47, null
  br i1 %tobool49, label %if.then.50, label %if.else

if.then.50:                                       ; preds = %if.end.45
  %48 = load %struct.display*, %struct.display** @display, align 8
  %d_tcs51 = getelementptr inbounds %struct.display, %struct.display* %48, i32 0, i32 83
  %arrayidx52 = getelementptr inbounds [201 x %union.tcu], [201 x %union.tcu]* %d_tcs51, i32 0, i64 29
  %str53 = bitcast %union.tcu* %arrayidx52 to i8**
  %49 = load i8*, i8** %str53, align 8
  call void @AddCStr(i8* %49)
  br label %if.end.60

if.else:                                          ; preds = %if.end.45
  %50 = load %struct.display*, %struct.display** @display, align 8
  %d_tcs54 = getelementptr inbounds %struct.display, %struct.display* %50, i32 0, i32 83
  %arrayidx55 = getelementptr inbounds [201 x %union.tcu], [201 x %union.tcu]* %d_tcs54, i32 0, i64 30
  %str56 = bitcast %union.tcu* %arrayidx55 to i8**
  %51 = load i8*, i8** %str56, align 8
  %52 = load %struct.mchar*, %struct.mchar** %c.addr, align 8
  %mbcs57 = getelementptr inbounds %struct.mchar, %struct.mchar* %52, i32 0, i32 5
  %53 = load i8, i8* %mbcs57, align 1
  %conv58 = zext i8 %53 to i32
  %tobool59 = icmp ne i32 %conv58, 0
  %cond = select i1 %tobool59, i32 2, i32 1
  call void @AddCStr2(i8* %51, i32 %cond)
  br label %if.end.60

if.end.60:                                        ; preds = %if.else, %if.then.50
  br label %if.end.61

if.end.61:                                        ; preds = %if.end.60, %if.end.31
  %54 = load %struct.mchar*, %struct.mchar** %c.addr, align 8
  call void @SetRendition(%struct.mchar* %54)
  %55 = load %struct.mchar*, %struct.mchar** %c.addr, align 8
  %image62 = getelementptr inbounds %struct.mchar, %struct.mchar* %55, i32 0, i32 0
  %56 = load i8, i8* %image62, align 1
  %conv63 = zext i8 %56 to i32
  call void @RAW_PUTCHAR(i32 %conv63)
  %57 = load %struct.mchar*, %struct.mchar** %c.addr, align 8
  %mbcs64 = getelementptr inbounds %struct.mchar, %struct.mchar* %57, i32 0, i32 5
  %58 = load i8, i8* %mbcs64, align 1
  %tobool65 = icmp ne i8 %58, 0
  br i1 %tobool65, label %if.then.66, label %if.end.82

if.then.66:                                       ; preds = %if.end.61
  %59 = load %struct.display*, %struct.display** @display, align 8
  %d_encoding = getelementptr inbounds %struct.display, %struct.display* %59, i32 0, i32 28
  %60 = load i32, i32* %d_encoding, align 4
  %cmp67 = icmp eq i32 %60, 8
  br i1 %cmp67, label %if.then.69, label %if.end.70

if.then.69:                                       ; preds = %if.then.66
  %61 = load %struct.display*, %struct.display** @display, align 8
  %d_rend = getelementptr inbounds %struct.display, %struct.display* %61, i32 0, i32 24
  %font = getelementptr inbounds %struct.mchar, %struct.mchar* %d_rend, i32 0, i32 2
  store i8 0, i8* %font, align 1
  br label %if.end.70

if.end.70:                                        ; preds = %if.then.69, %if.then.66
  %62 = load %struct.display*, %struct.display** @display, align 8
  %d_x = getelementptr inbounds %struct.display, %struct.display* %62, i32 0, i32 22
  %63 = load i32, i32* %d_x, align 4
  %64 = load %struct.display*, %struct.display** @display, align 8
  %d_width71 = getelementptr inbounds %struct.display, %struct.display* %64, i32 0, i32 16
  %65 = load i32, i32* %d_width71, align 4
  %sub72 = sub nsw i32 %65, 1
  %cmp73 = icmp eq i32 %63, %sub72
  br i1 %cmp73, label %if.then.75, label %if.else.78

if.then.75:                                       ; preds = %if.end.70
  %66 = load %struct.mchar*, %struct.mchar** %c.addr, align 8
  %mbcs76 = getelementptr inbounds %struct.mchar, %struct.mchar* %66, i32 0, i32 5
  %67 = load i8, i8* %mbcs76, align 1
  %conv77 = zext i8 %67 to i32
  call void @PUTCHARLP(i32 %conv77)
  br label %if.end.81

if.else.78:                                       ; preds = %if.end.70
  %68 = load %struct.mchar*, %struct.mchar** %c.addr, align 8
  %mbcs79 = getelementptr inbounds %struct.mchar, %struct.mchar* %68, i32 0, i32 5
  %69 = load i8, i8* %mbcs79, align 1
  %conv80 = zext i8 %69 to i32
  call void @RAW_PUTCHAR(i32 %conv80)
  br label %if.end.81

if.end.81:                                        ; preds = %if.else.78, %if.then.75
  br label %if.end.82

if.end.82:                                        ; preds = %if.then.2, %if.then.11, %if.then.30, %if.end.81, %if.end.61
  ret void
}

; Function Attrs: nounwind uwtable
define void @WrapChar(%struct.mchar* %c, i32 %x, i32 %y, i32 %xs, i32 %ys, i32 %xe, i32 %ye, i32 %ins) #0 {
entry:
  %c.addr = alloca %struct.mchar*, align 8
  %x.addr = alloca i32, align 4
  %y.addr = alloca i32, align 4
  %xs.addr = alloca i32, align 4
  %ys.addr = alloca i32, align 4
  %xe.addr = alloca i32, align 4
  %ye.addr = alloca i32, align 4
  %ins.addr = alloca i32, align 4
  %bce = alloca i32, align 4
  store %struct.mchar* %c, %struct.mchar** %c.addr, align 8
  store i32 %x, i32* %x.addr, align 4
  store i32 %y, i32* %y.addr, align 4
  store i32 %xs, i32* %xs.addr, align 4
  store i32 %ys, i32* %ys.addr, align 4
  store i32 %xe, i32* %xe.addr, align 4
  store i32 %ye, i32* %ye.addr, align 4
  store i32 %ins, i32* %ins.addr, align 4
  %0 = load %struct.mchar*, %struct.mchar** %c.addr, align 8
  %color = getelementptr inbounds %struct.mchar, %struct.mchar* %0, i32 0, i32 4
  %1 = load i8, i8* %color, align 1
  %conv = zext i8 %1 to i32
  %and = and i32 %conv, 240
  %shr = ashr i32 %and, 4
  %2 = load %struct.mchar*, %struct.mchar** %c.addr, align 8
  %attr = getelementptr inbounds %struct.mchar, %struct.mchar* %2, i32 0, i32 1
  %3 = load i8, i8* %attr, align 1
  %conv1 = zext i8 %3 to i32
  %and2 = and i32 %conv1, 128
  %tobool = icmp ne i32 %and2, 0
  %cond = select i1 %tobool, i32 256, i32 0
  %or = or i32 %shr, %cond
  store i32 %or, i32* %bce, align 4
  br label %do.body

do.body:                                          ; preds = %entry
  br label %do.end

do.end:                                           ; preds = %do.body
  br label %do.body.3

do.body.3:                                        ; preds = %do.end
  br label %do.end.4

do.end.4:                                         ; preds = %do.body.3
  br label %do.body.5

do.body.5:                                        ; preds = %do.end.4
  br label %do.end.6

do.end.6:                                         ; preds = %do.body.5
  br label %do.body.7

do.body.7:                                        ; preds = %do.end.6
  br label %do.end.8

do.end.8:                                         ; preds = %do.body.7
  br label %do.body.9

do.body.9:                                        ; preds = %do.end.8
  br label %do.end.10

do.end.10:                                        ; preds = %do.body.9
  %4 = load i32, i32* %xs.addr, align 4
  %cmp = icmp ne i32 %4, 0
  br i1 %cmp, label %if.then, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %do.end.10
  %5 = load i32, i32* %x.addr, align 4
  %6 = load %struct.display*, %struct.display** @display, align 8
  %d_width = getelementptr inbounds %struct.display, %struct.display* %6, i32 0, i32 16
  %7 = load i32, i32* %d_width, align 4
  %cmp12 = icmp ne i32 %5, %7
  br i1 %cmp12, label %if.then, label %lor.lhs.false.14

lor.lhs.false.14:                                 ; preds = %lor.lhs.false
  %8 = load %struct.display*, %struct.display** @display, align 8
  %d_tcs = getelementptr inbounds %struct.display, %struct.display* %8, i32 0, i32 83
  %arrayidx = getelementptr inbounds [201 x %union.tcu], [201 x %union.tcu]* %d_tcs, i32 0, i64 83
  %flg = bitcast %union.tcu* %arrayidx to i32*
  %9 = load i32, i32* %flg, align 4
  %tobool15 = icmp ne i32 %9, 0
  br i1 %tobool15, label %if.end.27, label %if.then

if.then:                                          ; preds = %lor.lhs.false.14, %lor.lhs.false, %do.end.10
  %10 = load i32, i32* %y.addr, align 4
  %11 = load i32, i32* %ye.addr, align 4
  %cmp16 = icmp eq i32 %10, %11
  br i1 %cmp16, label %if.then.18, label %if.else

if.then.18:                                       ; preds = %if.then
  %12 = load i32, i32* %xs.addr, align 4
  %13 = load i32, i32* %ys.addr, align 4
  %14 = load i32, i32* %xe.addr, align 4
  %15 = load i32, i32* %ye.addr, align 4
  %16 = load i32, i32* %bce, align 4
  call void @ScrollV(i32 %12, i32 %13, i32 %14, i32 %15, i32 1, i32 %16)
  br label %if.end.22

if.else:                                          ; preds = %if.then
  %17 = load i32, i32* %y.addr, align 4
  %18 = load %struct.display*, %struct.display** @display, align 8
  %d_height = getelementptr inbounds %struct.display, %struct.display* %18, i32 0, i32 17
  %19 = load i32, i32* %d_height, align 4
  %sub = sub nsw i32 %19, 1
  %cmp19 = icmp slt i32 %17, %sub
  br i1 %cmp19, label %if.then.21, label %if.end

if.then.21:                                       ; preds = %if.else
  %20 = load i32, i32* %y.addr, align 4
  %inc = add nsw i32 %20, 1
  store i32 %inc, i32* %y.addr, align 4
  br label %if.end

if.end:                                           ; preds = %if.then.21, %if.else
  br label %if.end.22

if.end.22:                                        ; preds = %if.end, %if.then.18
  %21 = load i32, i32* %ins.addr, align 4
  %tobool23 = icmp ne i32 %21, 0
  br i1 %tobool23, label %if.then.24, label %if.else.25

if.then.24:                                       ; preds = %if.end.22
  %22 = load %struct.mchar*, %struct.mchar** %c.addr, align 8
  %23 = load i32, i32* %xs.addr, align 4
  %24 = load i32, i32* %xe.addr, align 4
  %25 = load i32, i32* %y.addr, align 4
  call void @InsChar(%struct.mchar* %22, i32 %23, i32 %24, i32 %25, %struct.mline* null)
  br label %if.end.26

if.else.25:                                       ; preds = %if.end.22
  %26 = load %struct.mchar*, %struct.mchar** %c.addr, align 8
  %27 = load i32, i32* %xs.addr, align 4
  %28 = load i32, i32* %y.addr, align 4
  call void @PutChar(%struct.mchar* %26, i32 %27, i32 %28)
  br label %if.end.26

if.end.26:                                        ; preds = %if.else.25, %if.then.24
  br label %do.end.141

if.end.27:                                        ; preds = %lor.lhs.false.14
  %29 = load i32, i32* %y.addr, align 4
  %30 = load i32, i32* %ye.addr, align 4
  %cmp28 = icmp eq i32 %29, %30
  br i1 %cmp28, label %if.then.30, label %if.else.49

if.then.30:                                       ; preds = %if.end.27
  br label %do.body.31

do.body.31:                                       ; preds = %if.then.30
  br label %do.end.32

do.end.32:                                        ; preds = %do.body.31
  %31 = load i32, i32* %ys.addr, align 4
  %32 = load i32, i32* %ye.addr, align 4
  call void @ChangeScrollRegion(i32 %31, i32 %32)
  %33 = load %struct.display*, %struct.display** @display, align 8
  %d_bot = getelementptr inbounds %struct.display, %struct.display* %33, i32 0, i32 21
  %34 = load i32, i32* %d_bot, align 4
  %35 = load i32, i32* %y.addr, align 4
  %cmp33 = icmp ne i32 %34, %35
  br i1 %cmp33, label %if.then.45, label %lor.lhs.false.35

lor.lhs.false.35:                                 ; preds = %do.end.32
  %36 = load %struct.display*, %struct.display** @display, align 8
  %d_x = getelementptr inbounds %struct.display, %struct.display* %36, i32 0, i32 22
  %37 = load i32, i32* %d_x, align 4
  %38 = load %struct.display*, %struct.display** @display, align 8
  %d_width36 = getelementptr inbounds %struct.display, %struct.display* %38, i32 0, i32 16
  %39 = load i32, i32* %d_width36, align 4
  %cmp37 = icmp ne i32 %37, %39
  br i1 %cmp37, label %if.then.45, label %lor.lhs.false.39

lor.lhs.false.39:                                 ; preds = %lor.lhs.false.35
  %40 = load i32, i32* %bce, align 4
  %tobool40 = icmp ne i32 %40, 0
  br i1 %tobool40, label %if.end.48, label %land.lhs.true

land.lhs.true:                                    ; preds = %lor.lhs.false.39
  %41 = load %struct.display*, %struct.display** @display, align 8
  %d_tcs41 = getelementptr inbounds %struct.display, %struct.display* %41, i32 0, i32 83
  %arrayidx42 = getelementptr inbounds [201 x %union.tcu], [201 x %union.tcu]* %d_tcs41, i32 0, i64 66
  %flg43 = bitcast %union.tcu* %arrayidx42 to i32*
  %42 = load i32, i32* %flg43, align 4
  %tobool44 = icmp ne i32 %42, 0
  br i1 %tobool44, label %if.end.48, label %if.then.45

if.then.45:                                       ; preds = %land.lhs.true, %lor.lhs.false.35, %do.end.32
  br label %do.body.46

do.body.46:                                       ; preds = %if.then.45
  br label %do.end.47

do.end.47:                                        ; preds = %do.body.46
  %43 = load i32, i32* %xs.addr, align 4
  %44 = load i32, i32* %ys.addr, align 4
  %45 = load i32, i32* %xe.addr, align 4
  %46 = load i32, i32* %ye.addr, align 4
  %47 = load i32, i32* %bce, align 4
  call void @ScrollV(i32 %43, i32 %44, i32 %45, i32 %46, i32 1, i32 %47)
  %48 = load i32, i32* %y.addr, align 4
  %dec = add nsw i32 %48, -1
  store i32 %dec, i32* %y.addr, align 4
  br label %if.end.48

if.end.48:                                        ; preds = %do.end.47, %land.lhs.true, %lor.lhs.false.39
  br label %if.end.57

if.else.49:                                       ; preds = %if.end.27
  %49 = load i32, i32* %y.addr, align 4
  %50 = load %struct.display*, %struct.display** @display, align 8
  %d_bot50 = getelementptr inbounds %struct.display, %struct.display* %50, i32 0, i32 21
  %51 = load i32, i32* %d_bot50, align 4
  %cmp51 = icmp eq i32 %49, %51
  br i1 %cmp51, label %if.then.53, label %if.end.56

if.then.53:                                       ; preds = %if.else.49
  %52 = load %struct.display*, %struct.display** @display, align 8
  %d_height54 = getelementptr inbounds %struct.display, %struct.display* %52, i32 0, i32 17
  %53 = load i32, i32* %d_height54, align 4
  %sub55 = sub nsw i32 %53, 1
  call void @ChangeScrollRegion(i32 0, i32 %sub55)
  br label %if.end.56

if.end.56:                                        ; preds = %if.then.53, %if.else.49
  br label %if.end.57

if.end.57:                                        ; preds = %if.end.56, %if.end.48
  %54 = load %struct.display*, %struct.display** @display, align 8
  %d_x58 = getelementptr inbounds %struct.display, %struct.display* %54, i32 0, i32 22
  %55 = load i32, i32* %d_x58, align 4
  %56 = load %struct.display*, %struct.display** @display, align 8
  %d_width59 = getelementptr inbounds %struct.display, %struct.display* %56, i32 0, i32 16
  %57 = load i32, i32* %d_width59, align 4
  %cmp60 = icmp ne i32 %55, %57
  br i1 %cmp60, label %if.then.65, label %lor.lhs.false.62

lor.lhs.false.62:                                 ; preds = %if.end.57
  %58 = load %struct.display*, %struct.display** @display, align 8
  %d_y = getelementptr inbounds %struct.display, %struct.display* %58, i32 0, i32 23
  %59 = load i32, i32* %d_y, align 4
  %60 = load i32, i32* %y.addr, align 4
  %cmp63 = icmp ne i32 %59, %60
  br i1 %cmp63, label %if.then.65, label %if.end.103

if.then.65:                                       ; preds = %lor.lhs.false.62, %if.end.57
  %61 = load %struct.display*, %struct.display** @display, align 8
  %d_tcs66 = getelementptr inbounds %struct.display, %struct.display* %61, i32 0, i32 83
  %arrayidx67 = getelementptr inbounds [201 x %union.tcu], [201 x %union.tcu]* %d_tcs66, i32 0, i64 87
  %flg68 = bitcast %union.tcu* %arrayidx67 to i32*
  %62 = load i32, i32* %flg68, align 4
  %tobool69 = icmp ne i32 %62, 0
  br i1 %tobool69, label %land.lhs.true.70, label %if.end.78

land.lhs.true.70:                                 ; preds = %if.then.65
  %63 = load i32, i32* %y.addr, align 4
  %cmp71 = icmp sge i32 %63, 0
  br i1 %cmp71, label %if.then.73, label %if.end.78

if.then.73:                                       ; preds = %land.lhs.true.70
  %64 = load i32, i32* %y.addr, align 4
  %65 = load %struct.display*, %struct.display** @display, align 8
  %d_width74 = getelementptr inbounds %struct.display, %struct.display* %65, i32 0, i32 16
  %66 = load i32, i32* %d_width74, align 4
  %sub75 = sub nsw i32 %66, 1
  %67 = load %struct.display*, %struct.display** @display, align 8
  %d_width76 = getelementptr inbounds %struct.display, %struct.display* %67, i32 0, i32 16
  %68 = load i32, i32* %d_width76, align 4
  %sub77 = sub nsw i32 %68, 1
  call void @RefreshLine(i32 %64, i32 %sub75, i32 %sub77, i32 0)
  br label %if.end.78

if.end.78:                                        ; preds = %if.then.73, %land.lhs.true.70, %if.then.65
  br label %do.body.79

do.body.79:                                       ; preds = %if.end.78
  br label %do.end.80

do.end.80:                                        ; preds = %do.body.79
  %69 = load %struct.display*, %struct.display** @display, align 8
  %d_x81 = getelementptr inbounds %struct.display, %struct.display* %69, i32 0, i32 22
  %70 = load i32, i32* %d_x81, align 4
  %71 = load %struct.display*, %struct.display** @display, align 8
  %d_width82 = getelementptr inbounds %struct.display, %struct.display* %71, i32 0, i32 16
  %72 = load i32, i32* %d_width82, align 4
  %cmp83 = icmp ne i32 %70, %72
  br i1 %cmp83, label %if.then.89, label %lor.lhs.false.85

lor.lhs.false.85:                                 ; preds = %do.end.80
  %73 = load %struct.display*, %struct.display** @display, align 8
  %d_y86 = getelementptr inbounds %struct.display, %struct.display* %73, i32 0, i32 23
  %74 = load i32, i32* %d_y86, align 4
  %75 = load i32, i32* %y.addr, align 4
  %cmp87 = icmp ne i32 %74, %75
  br i1 %cmp87, label %if.then.89, label %if.end.102

if.then.89:                                       ; preds = %lor.lhs.false.85, %do.end.80
  %76 = load i32, i32* %y.addr, align 4
  %77 = load i32, i32* %ye.addr, align 4
  %cmp90 = icmp eq i32 %76, %77
  br i1 %cmp90, label %if.then.92, label %if.end.93

if.then.92:                                       ; preds = %if.then.89
  %78 = load i32, i32* %xs.addr, align 4
  %79 = load i32, i32* %ys.addr, align 4
  %80 = load i32, i32* %xe.addr, align 4
  %81 = load i32, i32* %ye.addr, align 4
  %82 = load i32, i32* %bce, align 4
  call void @ScrollV(i32 %78, i32 %79, i32 %80, i32 %81, i32 1, i32 %82)
  br label %if.end.93

if.end.93:                                        ; preds = %if.then.92, %if.then.89
  %83 = load i32, i32* %xs.addr, align 4
  %84 = load i32, i32* %y.addr, align 4
  %85 = load i32, i32* %ye.addr, align 4
  %cmp94 = icmp eq i32 %84, %85
  br i1 %cmp94, label %cond.true, label %lor.lhs.false.96

lor.lhs.false.96:                                 ; preds = %if.end.93
  %86 = load i32, i32* %y.addr, align 4
  %87 = load %struct.display*, %struct.display** @display, align 8
  %d_height97 = getelementptr inbounds %struct.display, %struct.display* %87, i32 0, i32 17
  %88 = load i32, i32* %d_height97, align 4
  %sub98 = sub nsw i32 %88, 1
  %cmp99 = icmp eq i32 %86, %sub98
  br i1 %cmp99, label %cond.true, label %cond.false

cond.true:                                        ; preds = %lor.lhs.false.96, %if.end.93
  %89 = load i32, i32* %y.addr, align 4
  br label %cond.end

cond.false:                                       ; preds = %lor.lhs.false.96
  %90 = load i32, i32* %y.addr, align 4
  %add = add nsw i32 %90, 1
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond101 = phi i32 [ %89, %cond.true ], [ %add, %cond.false ]
  call void @GotoPos(i32 %83, i32 %cond101)
  br label %if.end.102

if.end.102:                                       ; preds = %cond.end, %lor.lhs.false.85
  br label %if.end.103

if.end.103:                                       ; preds = %if.end.102, %lor.lhs.false.62
  br label %do.body.104

do.body.104:                                      ; preds = %if.end.103
  br label %do.end.105

do.end.105:                                       ; preds = %do.body.104
  %91 = load i32, i32* %y.addr, align 4
  %92 = load i32, i32* %ye.addr, align 4
  %cmp106 = icmp ne i32 %91, %92
  br i1 %cmp106, label %land.lhs.true.108, label %if.end.115

land.lhs.true.108:                                ; preds = %do.end.105
  %93 = load i32, i32* %y.addr, align 4
  %94 = load %struct.display*, %struct.display** @display, align 8
  %d_height109 = getelementptr inbounds %struct.display, %struct.display* %94, i32 0, i32 17
  %95 = load i32, i32* %d_height109, align 4
  %sub110 = sub nsw i32 %95, 1
  %cmp111 = icmp slt i32 %93, %sub110
  br i1 %cmp111, label %if.then.113, label %if.end.115

if.then.113:                                      ; preds = %land.lhs.true.108
  %96 = load i32, i32* %y.addr, align 4
  %inc114 = add nsw i32 %96, 1
  store i32 %inc114, i32* %y.addr, align 4
  br label %if.end.115

if.end.115:                                       ; preds = %if.then.113, %land.lhs.true.108, %do.end.105
  %97 = load i32, i32* %ins.addr, align 4
  %98 = load %struct.display*, %struct.display** @display, align 8
  %d_insert = getelementptr inbounds %struct.display, %struct.display* %98, i32 0, i32 31
  %99 = load i32, i32* %d_insert, align 4
  %cmp116 = icmp ne i32 %97, %99
  br i1 %cmp116, label %if.then.118, label %if.end.119

if.then.118:                                      ; preds = %if.end.115
  %100 = load i32, i32* %ins.addr, align 4
  call void @InsertMode(i32 %100)
  br label %if.end.119

if.end.119:                                       ; preds = %if.then.118, %if.end.115
  %101 = load i32, i32* %ins.addr, align 4
  %tobool120 = icmp ne i32 %101, 0
  br i1 %tobool120, label %land.lhs.true.121, label %if.end.127

land.lhs.true.121:                                ; preds = %if.end.119
  %102 = load %struct.display*, %struct.display** @display, align 8
  %d_insert122 = getelementptr inbounds %struct.display, %struct.display* %102, i32 0, i32 31
  %103 = load i32, i32* %d_insert122, align 4
  %tobool123 = icmp ne i32 %103, 0
  br i1 %tobool123, label %if.end.127, label %if.then.124

if.then.124:                                      ; preds = %land.lhs.true.121
  %104 = load %struct.mchar*, %struct.mchar** %c.addr, align 8
  %105 = load i32, i32* %xe.addr, align 4
  %106 = load i32, i32* %y.addr, align 4
  call void @InsChar(%struct.mchar* %104, i32 0, i32 %105, i32 %106, %struct.mline* null)
  br label %do.body.125

do.body.125:                                      ; preds = %if.then.124
  br label %do.end.126

do.end.126:                                       ; preds = %do.body.125
  br label %do.end.141

if.end.127:                                       ; preds = %land.lhs.true.121, %if.end.119
  %107 = load i32, i32* %y.addr, align 4
  %108 = load %struct.display*, %struct.display** @display, align 8
  %d_y128 = getelementptr inbounds %struct.display, %struct.display* %108, i32 0, i32 23
  store i32 %107, i32* %d_y128, align 4
  %109 = load %struct.display*, %struct.display** @display, align 8
  %d_x129 = getelementptr inbounds %struct.display, %struct.display* %109, i32 0, i32 22
  store i32 0, i32* %d_x129, align 4
  %110 = load %struct.mchar*, %struct.mchar** %c.addr, align 8
  call void @SetRendition(%struct.mchar* %110)
  %111 = load %struct.mchar*, %struct.mchar** %c.addr, align 8
  %image = getelementptr inbounds %struct.mchar, %struct.mchar* %111, i32 0, i32 0
  %112 = load i8, i8* %image, align 1
  %conv130 = zext i8 %112 to i32
  call void @RAW_PUTCHAR(i32 %conv130)
  %113 = load %struct.mchar*, %struct.mchar** %c.addr, align 8
  %mbcs = getelementptr inbounds %struct.mchar, %struct.mchar* %113, i32 0, i32 5
  %114 = load i8, i8* %mbcs, align 1
  %tobool131 = icmp ne i8 %114, 0
  br i1 %tobool131, label %if.then.132, label %if.end.139

if.then.132:                                      ; preds = %if.end.127
  %115 = load %struct.display*, %struct.display** @display, align 8
  %d_encoding = getelementptr inbounds %struct.display, %struct.display* %115, i32 0, i32 28
  %116 = load i32, i32* %d_encoding, align 4
  %cmp133 = icmp eq i32 %116, 8
  br i1 %cmp133, label %if.then.135, label %if.end.136

if.then.135:                                      ; preds = %if.then.132
  %117 = load %struct.display*, %struct.display** @display, align 8
  %d_rend = getelementptr inbounds %struct.display, %struct.display* %117, i32 0, i32 24
  %font = getelementptr inbounds %struct.mchar, %struct.mchar* %d_rend, i32 0, i32 2
  store i8 0, i8* %font, align 1
  br label %if.end.136

if.end.136:                                       ; preds = %if.then.135, %if.then.132
  %118 = load %struct.mchar*, %struct.mchar** %c.addr, align 8
  %mbcs137 = getelementptr inbounds %struct.mchar, %struct.mchar* %118, i32 0, i32 5
  %119 = load i8, i8* %mbcs137, align 1
  %conv138 = zext i8 %119 to i32
  call void @RAW_PUTCHAR(i32 %conv138)
  br label %if.end.139

if.end.139:                                       ; preds = %if.end.136, %if.end.127
  br label %do.body.140

do.body.140:                                      ; preds = %if.end.139
  br label %do.end.141

do.end.141:                                       ; preds = %if.end.26, %do.end.126, %do.body.140
  ret void
}

declare void @ChangeScreenSize(i32, i32, i32) #1

declare void @AddUtf8(i32) #1

declare i32 @select(i32, %struct.fd_set*, %struct.fd_set*, %struct.fd_set*, %struct.timeval*) #1

; Function Attrs: nounwind readnone
declare i32* @__errno_location() #5

declare i64 @write(i32, i8*, i64) #1

declare i32 @close(i32) #1

; Function Attrs: noreturn
declare void @Panic(i32, i8*, ...) #6

; Function Attrs: nounwind uwtable
define void @DisplaySleep1000(i32 %n, i32 %eat) #0 {
entry:
  %n.addr = alloca i32, align 4
  %eat.addr = alloca i32, align 4
  %buf = alloca i8, align 1
  %r = alloca %struct.fd_set, align 8
  %t = alloca %struct.timeval, align 8
  %__d0 = alloca i32, align 4
  %__d1 = alloca i32, align 4
  store i32 %n, i32* %n.addr, align 4
  store i32 %eat, i32* %eat.addr, align 4
  %0 = load i32, i32* %n.addr, align 4
  %cmp = icmp sle i32 %0, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  br label %do.end.24

if.end:                                           ; preds = %entry
  %1 = load %struct.display*, %struct.display** @display, align 8
  %tobool = icmp ne %struct.display* %1, null
  br i1 %tobool, label %if.end.2, label %if.then.1

if.then.1:                                        ; preds = %if.end
  br label %do.body

do.body:                                          ; preds = %if.then.1
  br label %do.end

do.end:                                           ; preds = %do.body
  %2 = load i32, i32* %n.addr, align 4
  call void @sleep1000(i32 %2)
  br label %do.end.24

if.end.2:                                         ; preds = %if.end
  %3 = load i32, i32* %n.addr, align 4
  %rem = srem i32 %3, 1000
  %mul = mul nsw i32 %rem, 1000
  %conv = sext i32 %mul to i64
  %tv_usec = getelementptr inbounds %struct.timeval, %struct.timeval* %t, i32 0, i32 1
  store i64 %conv, i64* %tv_usec, align 8
  %4 = load i32, i32* %n.addr, align 4
  %div = sdiv i32 %4, 1000
  %conv3 = sext i32 %div to i64
  %tv_sec = getelementptr inbounds %struct.timeval, %struct.timeval* %t, i32 0, i32 0
  store i64 %conv3, i64* %tv_sec, align 8
  br label %do.body.4

do.body.4:                                        ; preds = %if.end.2
  %fds_bits = getelementptr inbounds %struct.fd_set, %struct.fd_set* %r, i32 0, i32 0
  %arrayidx = getelementptr inbounds [16 x i64], [16 x i64]* %fds_bits, i32 0, i64 0
  %5 = call { i64, i64* } asm sideeffect "cld; rep; stosq", "={cx},={di},{ax},0,1,~{memory},~{dirflag},~{fpsr},~{flags}"(i32 0, i64 16, i64* %arrayidx) #3, !srcloc !2
  %asmresult = extractvalue { i64, i64* } %5, 0
  %asmresult5 = extractvalue { i64, i64* } %5, 1
  %6 = trunc i64 %asmresult to i32
  store i32 %6, i32* %__d0, align 4
  %7 = ptrtoint i64* %asmresult5 to i64
  %8 = trunc i64 %7 to i32
  store i32 %8, i32* %__d1, align 4
  br label %do.end.6

do.end.6:                                         ; preds = %do.body.4
  %9 = load %struct.display*, %struct.display** @display, align 8
  %d_userfd = getelementptr inbounds %struct.display, %struct.display* %9, i32 0, i32 59
  %10 = load i32, i32* %d_userfd, align 4
  %rem7 = srem i32 %10, 64
  %sh_prom = zext i32 %rem7 to i64
  %shl = shl i64 1, %sh_prom
  %11 = load %struct.display*, %struct.display** @display, align 8
  %d_userfd8 = getelementptr inbounds %struct.display, %struct.display* %11, i32 0, i32 59
  %12 = load i32, i32* %d_userfd8, align 4
  %div9 = sdiv i32 %12, 64
  %idxprom = sext i32 %div9 to i64
  %fds_bits10 = getelementptr inbounds %struct.fd_set, %struct.fd_set* %r, i32 0, i32 0
  %arrayidx11 = getelementptr inbounds [16 x i64], [16 x i64]* %fds_bits10, i32 0, i64 %idxprom
  %13 = load i64, i64* %arrayidx11, align 8
  %or = or i64 %13, %shl
  store i64 %or, i64* %arrayidx11, align 8
  %call = call i32 @select(i32 1024, %struct.fd_set* %r, %struct.fd_set* null, %struct.fd_set* null, %struct.timeval* %t)
  %cmp12 = icmp sgt i32 %call, 0
  br i1 %cmp12, label %if.then.14, label %if.end.22

if.then.14:                                       ; preds = %do.end.6
  br label %do.body.15

do.body.15:                                       ; preds = %if.then.14
  br label %do.end.16

do.end.16:                                        ; preds = %do.body.15
  %14 = load i32, i32* %eat.addr, align 4
  %tobool17 = icmp ne i32 %14, 0
  br i1 %tobool17, label %if.then.18, label %if.end.21

if.then.18:                                       ; preds = %do.end.16
  %15 = load %struct.display*, %struct.display** @display, align 8
  %d_userfd19 = getelementptr inbounds %struct.display, %struct.display* %15, i32 0, i32 59
  %16 = load i32, i32* %d_userfd19, align 4
  %call20 = call i64 @read(i32 %16, i8* %buf, i64 1)
  br label %if.end.21

if.end.21:                                        ; preds = %if.then.18, %do.end.16
  br label %if.end.22

if.end.22:                                        ; preds = %if.end.21, %do.end.6
  br label %do.body.23

do.body.23:                                       ; preds = %if.end.22
  br label %do.end.24

do.end.24:                                        ; preds = %if.then, %do.end, %do.body.23
  ret void
}

declare void @sleep1000(i32) #1

declare i64 @read(i32, i8*, i64) #1

; Function Attrs: nounwind
declare i32 @tcflush(i32, i32) #2

; Function Attrs: nounwind uwtable
define void @ResetIdle() #0 {
entry:
  %0 = load i32, i32* @idletimo, align 4
  %cmp = icmp sgt i32 %0, 0
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %1 = load %struct.display*, %struct.display** @display, align 8
  %d_idleev = getelementptr inbounds %struct.display, %struct.display* %1, i32 0, i32 104
  %2 = load i32, i32* @idletimo, align 4
  call void @SetTimeout(%struct.event* %d_idleev, i32 %2)
  %3 = load %struct.display*, %struct.display** @display, align 8
  %d_idleev1 = getelementptr inbounds %struct.display, %struct.display* %3, i32 0, i32 104
  %queued = getelementptr inbounds %struct.event, %struct.event* %d_idleev1, i32 0, i32 7
  %4 = load i32, i32* %queued, align 4
  %tobool = icmp ne i32 %4, 0
  br i1 %tobool, label %if.end, label %if.then.2

if.then.2:                                        ; preds = %if.then
  %5 = load %struct.display*, %struct.display** @display, align 8
  %d_idleev3 = getelementptr inbounds %struct.display, %struct.display* %5, i32 0, i32 104
  call void @evenq(%struct.event* %d_idleev3)
  br label %if.end

if.end:                                           ; preds = %if.then.2, %if.then
  br label %if.end.5

if.else:                                          ; preds = %entry
  %6 = load %struct.display*, %struct.display** @display, align 8
  %d_idleev4 = getelementptr inbounds %struct.display, %struct.display* %6, i32 0, i32 104
  call void @evdeq(%struct.event* %d_idleev4)
  br label %if.end.5

if.end.5:                                         ; preds = %if.else, %if.end
  ret void
}

declare void @Kill(i32, i32) #1

; Function Attrs: nounwind uwtable
define void @RunBlanker(i8** %cmdv) #0 {
entry:
  %cmdv.addr = alloca i8**, align 8
  %m = alloca i8*, align 8
  %pid = alloca i32, align 4
  %slave = alloca i32, align 4
  %termname = alloca [38 x i8], align 16
  %np = alloca i8**, align 8
  store i8** %cmdv, i8*** %cmdv.addr, align 8
  store i32 -1, i32* %slave, align 4
  %arraydecay = getelementptr inbounds [38 x i8], [38 x i8]* %termname, i32 0, i32 0
  %call = call i8* @strcpy(i8* %arraydecay, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.13, i32 0, i32 0)) #3
  %arraydecay1 = getelementptr inbounds [38 x i8], [38 x i8]* %termname, i32 0, i32 0
  %add.ptr = getelementptr inbounds i8, i8* %arraydecay1, i64 5
  %0 = load %struct.display*, %struct.display** @display, align 8
  %d_termname = getelementptr inbounds %struct.display, %struct.display* %0, i32 0, i32 13
  %arraydecay2 = getelementptr inbounds [33 x i8], [33 x i8]* %d_termname, i32 0, i32 0
  %call3 = call i8* @strncpy(i8* %add.ptr, i8* %arraydecay2, i64 26) #3
  %arrayidx = getelementptr inbounds [38 x i8], [38 x i8]* %termname, i32 0, i64 37
  store i8 0, i8* %arrayidx, align 1
  call void @KillBlanker()
  %1 = load %struct.display*, %struct.display** @display, align 8
  %d_blankerpid = getelementptr inbounds %struct.display, %struct.display* %1, i32 0, i32 105
  store i32 -1, i32* %d_blankerpid, align 4
  %call4 = call i32 @OpenPTY(i8** %m)
  %2 = load %struct.display*, %struct.display** @display, align 8
  %d_blankerev = getelementptr inbounds %struct.display, %struct.display* %2, i32 0, i32 106
  %fd = getelementptr inbounds %struct.event, %struct.event* %d_blankerev, i32 0, i32 3
  store i32 %call4, i32* %fd, align 4
  %cmp = icmp eq i32 %call4, -1
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  call void (i32, i8*, ...) @Msg(i32 0, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.14, i32 0, i32 0))
  br label %return

if.end:                                           ; preds = %entry
  %3 = load i32, i32* @pty_preopen, align 4
  %tobool = icmp ne i32 %3, 0
  br i1 %tobool, label %if.then.5, label %if.end.16

if.then.5:                                        ; preds = %if.end
  %4 = load i8*, i8** %m, align 8
  %call6 = call i32 (i8*, i32, ...) @open(i8* %4, i32 258)
  store i32 %call6, i32* %slave, align 4
  %cmp7 = icmp eq i32 %call6, -1
  br i1 %cmp7, label %if.then.8, label %if.end.15

if.then.8:                                        ; preds = %if.then.5
  %call9 = call i32* @__errno_location() #7
  %5 = load i32, i32* %call9, align 4
  %6 = load i8*, i8** %m, align 8
  call void (i32, i8*, ...) @Msg(i32 %5, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.10, i32 0, i32 0), i8* %6)
  %7 = load %struct.display*, %struct.display** @display, align 8
  %d_blankerev10 = getelementptr inbounds %struct.display, %struct.display* %7, i32 0, i32 106
  %fd11 = getelementptr inbounds %struct.event, %struct.event* %d_blankerev10, i32 0, i32 3
  %8 = load i32, i32* %fd11, align 4
  %call12 = call i32 @close(i32 %8)
  %9 = load %struct.display*, %struct.display** @display, align 8
  %d_blankerev13 = getelementptr inbounds %struct.display, %struct.display* %9, i32 0, i32 106
  %fd14 = getelementptr inbounds %struct.event, %struct.event* %d_blankerev13, i32 0, i32 3
  store i32 -1, i32* %fd14, align 4
  br label %return

if.end.15:                                        ; preds = %if.then.5
  br label %if.end.16

if.end.16:                                        ; preds = %if.end.15, %if.end
  %call17 = call i32 @fork() #3
  store i32 %call17, i32* %pid, align 4
  switch i32 %call17, label %sw.default [
    i32 -1, label %sw.bb
    i32 0, label %sw.bb.25
  ]

sw.bb:                                            ; preds = %if.end.16
  %call18 = call i32* @__errno_location() #7
  %10 = load i32, i32* %call18, align 4
  call void (i32, i8*, ...) @Msg(i32 %10, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.15, i32 0, i32 0))
  %11 = load %struct.display*, %struct.display** @display, align 8
  %d_blankerev19 = getelementptr inbounds %struct.display, %struct.display* %11, i32 0, i32 106
  %fd20 = getelementptr inbounds %struct.event, %struct.event* %d_blankerev19, i32 0, i32 3
  %12 = load i32, i32* %fd20, align 4
  %call21 = call i32 @close(i32 %12)
  %13 = load %struct.display*, %struct.display** @display, align 8
  %d_blankerev22 = getelementptr inbounds %struct.display, %struct.display* %13, i32 0, i32 106
  %fd23 = getelementptr inbounds %struct.event, %struct.event* %d_blankerev22, i32 0, i32 3
  store i32 -1, i32* %fd23, align 4
  %14 = load i32, i32* %slave, align 4
  %call24 = call i32 @close(i32 %14)
  br label %return

sw.bb.25:                                         ; preds = %if.end.16
  store %struct.display* null, %struct.display** @displays, align 8
  %15 = load i32, i32* @real_gid, align 4
  %call26 = call i32 @setgid(i32 %15) #3
  %tobool27 = icmp ne i32 %call26, 0
  br i1 %tobool27, label %if.then.30, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %sw.bb.25
  %16 = load i32, i32* @real_uid, align 4
  %call28 = call i32 @setuid(i32 %16) #3
  %tobool29 = icmp ne i32 %call28, 0
  br i1 %tobool29, label %if.then.30, label %if.end.32

if.then.30:                                       ; preds = %lor.lhs.false, %sw.bb.25
  %call31 = call i32* @__errno_location() #7
  %17 = load i32, i32* %call31, align 4
  call void (i32, i8*, ...) @Panic(i32 %17, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.16, i32 0, i32 0)) #8
  unreachable

if.end.32:                                        ; preds = %lor.lhs.false
  %18 = load %struct.display*, %struct.display** @display, align 8
  %d_userfd = getelementptr inbounds %struct.display, %struct.display* %18, i32 0, i32 59
  %19 = load i32, i32* %d_userfd, align 4
  call void @brktty(i32 %19)
  call void @freetty()
  %call33 = call i32 @close(i32 0)
  %call34 = call i32 @close(i32 1)
  %call35 = call i32 @close(i32 2)
  %20 = load i32, i32* %slave, align 4
  call void @closeallfiles(i32 %20)
  %21 = load i8*, i8** %m, align 8
  %call36 = call i32 (i8*, i32, ...) @open(i8* %21, i32 2)
  %tobool37 = icmp ne i32 %call36, 0
  br i1 %tobool37, label %if.then.38, label %if.end.40

if.then.38:                                       ; preds = %if.end.32
  %call39 = call i32* @__errno_location() #7
  %22 = load i32, i32* %call39, align 4
  %23 = load i8*, i8** %m, align 8
  call void (i32, i8*, ...) @Panic(i32 %22, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.17, i32 0, i32 0), i8* %23) #8
  unreachable

if.end.40:                                        ; preds = %if.end.32
  %call41 = call i32 @dup(i32 0) #3
  %call42 = call i32 @dup(i32 0) #3
  %24 = load i32, i32* %slave, align 4
  %cmp43 = icmp ne i32 %24, -1
  br i1 %cmp43, label %if.then.44, label %if.end.46

if.then.44:                                       ; preds = %if.end.40
  %25 = load i32, i32* %slave, align 4
  %call45 = call i32 @close(i32 %25)
  br label %if.end.46

if.end.46:                                        ; preds = %if.then.44, %if.end.40
  call void @InitPTY(i32 0)
  %call47 = call i32 @fgtty(i32 0)
  %26 = load %struct.display*, %struct.display** @display, align 8
  %d_OldMode = getelementptr inbounds %struct.display, %struct.display* %26, i32 0, i32 63
  call void @SetTTY(i32 0, %struct.mode* %d_OldMode)
  %27 = load i8**, i8*** @NewEnv, align 8
  %add.ptr48 = getelementptr inbounds i8*, i8** %27, i64 3
  store i8** %add.ptr48, i8*** %np, align 8
  %28 = load i8**, i8*** @NewEnv, align 8
  %arrayidx49 = getelementptr inbounds i8*, i8** %28, i64 0
  %29 = load i8*, i8** %arrayidx49, align 8
  %30 = load i8**, i8*** %np, align 8
  %incdec.ptr = getelementptr inbounds i8*, i8** %30, i32 1
  store i8** %incdec.ptr, i8*** %np, align 8
  store i8* %29, i8** %30, align 8
  %arraydecay50 = getelementptr inbounds [38 x i8], [38 x i8]* %termname, i32 0, i32 0
  %31 = load i8**, i8*** %np, align 8
  %incdec.ptr51 = getelementptr inbounds i8*, i8** %31, i32 1
  store i8** %incdec.ptr51, i8*** %np, align 8
  store i8* %arraydecay50, i8** %31, align 8
  %32 = load %struct.display*, %struct.display** @display, align 8
  %d_width = getelementptr inbounds %struct.display, %struct.display* %32, i32 0, i32 16
  %33 = load i32, i32* %d_width, align 4
  %conv = trunc i32 %33 to i16
  store i16 %conv, i16* getelementptr inbounds (%struct.winsize, %struct.winsize* @glwz, i32 0, i32 1), align 2
  %34 = load %struct.display*, %struct.display** @display, align 8
  %d_height = getelementptr inbounds %struct.display, %struct.display* %34, i32 0, i32 17
  %35 = load i32, i32* %d_height, align 4
  %conv52 = trunc i32 %35 to i16
  store i16 %conv52, i16* getelementptr inbounds (%struct.winsize, %struct.winsize* @glwz, i32 0, i32 0), align 2
  %call53 = call i32 (i32, i64, ...) @ioctl(i32 0, i64 21524, i8* bitcast (%struct.winsize* @glwz to i8*)) #3
  %call54 = call void (i32)* @xsignal(i32 13, void (i32)* null)
  store %struct.display* null, %struct.display** @display, align 8
  %36 = load i8**, i8*** %cmdv.addr, align 8
  %37 = load i8*, i8** %36, align 8
  %38 = load i8**, i8*** %cmdv.addr, align 8
  %39 = load i8**, i8*** @NewEnv, align 8
  %add.ptr55 = getelementptr inbounds i8*, i8** %39, i64 3
  %call56 = call i32 @execvpe(i8* %37, i8** %38, i8** %add.ptr55) #3
  %call57 = call i32* @__errno_location() #7
  %40 = load i32, i32* %call57, align 4
  %41 = load i8**, i8*** %cmdv.addr, align 8
  %42 = load i8*, i8** %41, align 8
  call void (i32, i8*, ...) @Panic(i32 %40, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.10, i32 0, i32 0), i8* %42) #8
  unreachable

sw.default:                                       ; preds = %if.end.16
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.default
  %43 = load i32, i32* %pid, align 4
  %44 = load %struct.display*, %struct.display** @display, align 8
  %d_blankerpid58 = getelementptr inbounds %struct.display, %struct.display* %44, i32 0, i32 105
  store i32 %43, i32* %d_blankerpid58, align 4
  %45 = load %struct.display*, %struct.display** @display, align 8
  %d_blankerev59 = getelementptr inbounds %struct.display, %struct.display* %45, i32 0, i32 106
  call void @evenq(%struct.event* %d_blankerev59)
  %46 = load %struct.display*, %struct.display** @display, align 8
  %d_blocked = getelementptr inbounds %struct.display, %struct.display* %46, i32 0, i32 102
  store i32 4, i32* %d_blocked, align 4
  call void @ClearAll()
  %47 = load i32, i32* %slave, align 4
  %call60 = call i32 @close(i32 %47)
  br label %return

return:                                           ; preds = %sw.epilog, %sw.bb, %if.then.8, %if.then
  ret void
}

declare i32 @OpenPTY(i8**) #1

declare i32 @open(i8*, i32, ...) #1

; Function Attrs: nounwind
declare i32 @fork() #2

; Function Attrs: nounwind
declare i32 @setgid(i32) #2

; Function Attrs: nounwind
declare i32 @setuid(i32) #2

declare void @brktty(i32) #1

declare void @closeallfiles(i32) #1

; Function Attrs: nounwind
declare i32 @dup(i32) #2

declare void @InitPTY(i32) #1

declare i32 @fgtty(i32) #1

; Function Attrs: nounwind
declare i32 @ioctl(i32, i64, ...) #2

declare void (i32)* @xsignal(i32, void (i32)*) #1

; Function Attrs: nounwind
declare i32 @execvpe(i8*, i8**, i8**) #2

declare i32 @utf8_isdouble(i32) #1

declare i32 @PrepareEncodedChar(i32) #1

; Function Attrs: nounwind
declare i32 @gettimeofday(%struct.timeval*, %struct.timezone*) #2

declare void @PutWinMsg(i8*, i32, i32) #1

declare i32 @FromUtf8(i32, i32*) #1

declare i32 @utf8_iscomb(i32) #1

; Function Attrs: nounwind
declare void @bcopy(i8*, i8*, i64) #2

declare void @Activate(i32) #1

; Function Attrs: nounwind uwtable
define internal void @disp_writeev_eagain(%struct.event* %ev, i8* %data) #0 {
entry:
  %ev.addr = alloca %struct.event*, align 8
  %data.addr = alloca i8*, align 8
  store %struct.event* %ev, %struct.event** %ev.addr, align 8
  store i8* %data, i8** %data.addr, align 8
  %0 = load i8*, i8** %data.addr, align 8
  %1 = bitcast i8* %0 to %struct.display*
  store %struct.display* %1, %struct.display** @display, align 8
  %2 = load %struct.display*, %struct.display** @display, align 8
  %d_writeev = getelementptr inbounds %struct.display, %struct.display* %2, i32 0, i32 61
  call void @evdeq(%struct.event* %d_writeev)
  %3 = load %struct.display*, %struct.display** @display, align 8
  %d_writeev1 = getelementptr inbounds %struct.display, %struct.display* %3, i32 0, i32 61
  %type = getelementptr inbounds %struct.event, %struct.event* %d_writeev1, i32 0, i32 4
  store i32 2, i32* %type, align 4
  %4 = load %struct.display*, %struct.display** @display, align 8
  %d_writeev2 = getelementptr inbounds %struct.display, %struct.display* %4, i32 0, i32 61
  %handler = getelementptr inbounds %struct.event, %struct.event* %d_writeev2, i32 0, i32 1
  store void (%struct.event*, i8*)* @disp_writeev_fn, void (%struct.event*, i8*)** %handler, align 8
  %5 = load %struct.display*, %struct.display** @display, align 8
  %d_writeev3 = getelementptr inbounds %struct.display, %struct.display* %5, i32 0, i32 61
  call void @evenq(%struct.event* %d_writeev3)
  ret void
}

declare void @Hangup() #1

declare i32 @sleep(i32) #1

declare %struct.canvas* @FindCanvas(i32, i32) #1

declare void @SetForeCanvas(%struct.display*, %struct.canvas*) #1

declare i32 @DecodeChar(i32, i32, i32*) #1

declare i32 @EncodeChar(i8*, i32, i32, i32*) #1

declare i32 @StuffKey(i32) #1

declare void @ProcessInput2(i8*, i32) #1

declare void @DoAction(%struct.action*, i32) #1

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind }
attributes #4 = { nounwind readonly "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #5 = { nounwind readnone "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #6 = { noreturn "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #7 = { nounwind readnone }
attributes #8 = { noreturn }
attributes #9 = { nounwind readonly }

!llvm.ident = !{!0}

!0 = !{!"clang version 3.7.0 (tags/RELEASE_370/final)"}
!1 = !{i32 202825}
!2 = !{i32 205442}
