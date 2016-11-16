; ModuleID = './layer.bc'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.display = type { %struct.display*, %struct.acluser*, %struct.canvas, %struct.canvas*, %struct.canvas*, %struct.layout*, void (i8*, i32)*, i8*, i32, i32, %struct.win*, %struct.win*, i32, [33 x i8], i8*, i8, i32, i32, i32, i32, i32, i32, i32, i32, %struct.mchar, i32, i8, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, %struct.mchar, %struct.timeval, i32, i8, i32, i8*, i32, i32, i32, i32, i32, i32, %struct.event, %struct.event, i32, %struct.action*, i32, [4096 x i8], i32, %struct.event, %struct.event, %struct.event, %struct.mode, %struct.mode, i32, i32, i8*, i32, i32, i32, i8*, i32, i32, i32, i32, i8*, i8*, i32, i8*, %struct.event, i32, i32, [201 x %union.tcu], [6 x i8*], [6 x i8], i32, i16, [256 x i8], i8***, i32, i32, i32, i32, i32, i32, i32, i32, i32, i8*, %struct.utmp, i32, i32, i32, %struct.event, i32, %struct.event }
%struct.acluser = type { %struct.acluser*, [257 x i8], i8*, i32, i32, i32, i32, i32, %struct.plop, i32, [3 x i8*], %struct.aclusergroup* }
%struct.plop = type { i8*, i32, i32 }
%struct.aclusergroup = type { %struct.acluser*, %struct.aclusergroup* }
%struct.canvas = type { %struct.canvas*, %struct.display*, %struct.canvas*, %struct.canvas*, %struct.canvas*, %struct.canvas*, i32, i32, %struct.viewport*, %struct.layer*, %struct.canvas*, %struct.layer, i32, i32, i32, i32, i32, i32, %struct.event }
%struct.viewport = type { %struct.viewport*, %struct.canvas*, i32, i32, i32, i32, i32, i32 }
%struct.layer = type { %struct.canvas*, i32, i32, i32, i32, i32, %struct.LayFuncs*, i8*, %struct.layer*, %struct.layer*, i32, i32, %struct.anon, %struct.anon.0 }
%struct.LayFuncs = type { void (i8**, i32*)*, void ()*, void (i32, i32, i32, i32)*, void (i32, i32, i32, i32)*, i32 (i32, i32, i32, %struct.mchar*, i32)*, i32 (i32, i32)*, void ()*, void (i8*)* }
%struct.anon = type { [3 x i8], i32, i32 }
%struct.anon.0 = type { i8, i32*, i32*, i32, i32, i32 }
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
%struct.event = type { %struct.event*, void (%struct.event*, i8*)*, i8*, i32, i32, i32, %struct.timeval, i32, i32, i32*, i32* }
%struct.__va_list_tag = type { i32, i32, i8*, i8* }

@display = external global %struct.display*, align 8
@mchar_blank = external global %struct.mchar, align 1
@mline_blank = external global %struct.mline, align 8
@mline_null = external global %struct.mline, align 8
@flayer = external global %struct.layer*, align 8
@displays = external global %struct.display*, align 8
@WinLf = external global %struct.LayFuncs, align 8
@BlankLf = external global %struct.LayFuncs, align 8
@.str = private unnamed_addr constant [27 x i8] c"No memory for layer struct\00", align 1
@.str.1 = private unnamed_addr constant [25 x i8] c"No memory for layer data\00", align 1
@layouts = external global %struct.layout*, align 8
@mloff.mml = internal global %struct.mline zeroinitializer, align 8

; Function Attrs: nounwind uwtable
define void @LGotoPos(%struct.layer* %l, i32 %x, i32 %y) #0 {
entry:
  %l.addr = alloca %struct.layer*, align 8
  %x.addr = alloca i32, align 4
  %y.addr = alloca i32, align 4
  %cv = alloca %struct.canvas*, align 8
  %vp = alloca %struct.viewport*, align 8
  %x2 = alloca i32, align 4
  %y2 = alloca i32, align 4
  store %struct.layer* %l, %struct.layer** %l.addr, align 8
  store i32 %x, i32* %x.addr, align 4
  store i32 %y, i32* %y.addr, align 4
  %0 = load %struct.layer*, %struct.layer** %l.addr, align 8
  %l_pause = getelementptr inbounds %struct.layer, %struct.layer* %0, i32 0, i32 13
  %1 = bitcast %struct.anon.0* %l_pause to i8*
  %bf.load = load i8, i8* %1, align 8
  %bf.shl = shl i8 %bf.load, 7
  %bf.ashr = ashr i8 %bf.shl, 7
  %bf.cast = sext i8 %bf.ashr to i32
  %tobool = icmp ne i32 %bf.cast, 0
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %2 = load %struct.layer*, %struct.layer** %l.addr, align 8
  %3 = load i32, i32* %x.addr, align 4
  %4 = load i32, i32* %x.addr, align 4
  %5 = load i32, i32* %y.addr, align 4
  %6 = load i32, i32* %y.addr, align 4
  call void @LayPauseUpdateRegion(%struct.layer* %2, i32 %3, i32 %4, i32 %5, i32 %6)
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %7 = load %struct.layer*, %struct.layer** %l.addr, align 8
  %l_cvlist = getelementptr inbounds %struct.layer, %struct.layer* %7, i32 0, i32 0
  %8 = load %struct.canvas*, %struct.canvas** %l_cvlist, align 8
  store %struct.canvas* %8, %struct.canvas** %cv, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.inc.45, %if.end
  %9 = load %struct.canvas*, %struct.canvas** %cv, align 8
  %tobool1 = icmp ne %struct.canvas* %9, null
  br i1 %tobool1, label %for.body, label %for.end.46

for.body:                                         ; preds = %for.cond
  %10 = load %struct.layer*, %struct.layer** %l.addr, align 8
  %l_pause2 = getelementptr inbounds %struct.layer, %struct.layer* %10, i32 0, i32 13
  %11 = bitcast %struct.anon.0* %l_pause2 to i8*
  %bf.load3 = load i8, i8* %11, align 8
  %bf.shl4 = shl i8 %bf.load3, 7
  %bf.ashr5 = ashr i8 %bf.shl4, 7
  %bf.cast6 = sext i8 %bf.ashr5 to i32
  %tobool7 = icmp ne i32 %bf.cast6, 0
  br i1 %tobool7, label %land.lhs.true, label %if.end.10

land.lhs.true:                                    ; preds = %for.body
  %12 = load %struct.canvas*, %struct.canvas** %cv, align 8
  %c_slorient = getelementptr inbounds %struct.canvas, %struct.canvas* %12, i32 0, i32 6
  %13 = load i32, i32* %c_slorient, align 4
  %tobool8 = icmp ne i32 %13, 0
  br i1 %tobool8, label %if.then.9, label %if.end.10

if.then.9:                                        ; preds = %land.lhs.true
  br label %for.inc.45

if.end.10:                                        ; preds = %land.lhs.true, %for.body
  %14 = load %struct.canvas*, %struct.canvas** %cv, align 8
  %c_display = getelementptr inbounds %struct.canvas, %struct.canvas* %14, i32 0, i32 1
  %15 = load %struct.display*, %struct.display** %c_display, align 8
  store %struct.display* %15, %struct.display** @display, align 8
  %16 = load %struct.display*, %struct.display** @display, align 8
  %d_blocked = getelementptr inbounds %struct.display, %struct.display* %16, i32 0, i32 102
  %17 = load i32, i32* %d_blocked, align 4
  %tobool11 = icmp ne i32 %17, 0
  br i1 %tobool11, label %if.then.12, label %if.end.13

if.then.12:                                       ; preds = %if.end.10
  br label %for.inc.45

if.end.13:                                        ; preds = %if.end.10
  %18 = load %struct.canvas*, %struct.canvas** %cv, align 8
  %19 = load %struct.display*, %struct.display** @display, align 8
  %d_forecv = getelementptr inbounds %struct.display, %struct.display* %19, i32 0, i32 4
  %20 = load %struct.canvas*, %struct.canvas** %d_forecv, align 8
  %cmp = icmp ne %struct.canvas* %18, %20
  br i1 %cmp, label %if.then.14, label %if.end.15

if.then.14:                                       ; preds = %if.end.13
  br label %for.inc.45

if.end.15:                                        ; preds = %if.end.13
  %21 = load i32, i32* %x.addr, align 4
  %22 = load %struct.canvas*, %struct.canvas** %cv, align 8
  %c_xoff = getelementptr inbounds %struct.canvas, %struct.canvas* %22, i32 0, i32 12
  %23 = load i32, i32* %c_xoff, align 4
  %add = add nsw i32 %21, %23
  store i32 %add, i32* %x2, align 4
  %24 = load i32, i32* %y.addr, align 4
  %25 = load %struct.canvas*, %struct.canvas** %cv, align 8
  %c_yoff = getelementptr inbounds %struct.canvas, %struct.canvas* %25, i32 0, i32 13
  %26 = load i32, i32* %c_yoff, align 4
  %add16 = add nsw i32 %24, %26
  store i32 %add16, i32* %y2, align 4
  br label %do.body

do.body:                                          ; preds = %if.end.15
  br label %do.end

do.end:                                           ; preds = %do.body
  %27 = load i32, i32* %x2, align 4
  %28 = load %struct.canvas*, %struct.canvas** %cv, align 8
  %c_xs = getelementptr inbounds %struct.canvas, %struct.canvas* %28, i32 0, i32 14
  %29 = load i32, i32* %c_xs, align 4
  %cmp17 = icmp slt i32 %27, %29
  br i1 %cmp17, label %if.then.18, label %if.end.20

if.then.18:                                       ; preds = %do.end
  %30 = load %struct.canvas*, %struct.canvas** %cv, align 8
  %c_xs19 = getelementptr inbounds %struct.canvas, %struct.canvas* %30, i32 0, i32 14
  %31 = load i32, i32* %c_xs19, align 4
  store i32 %31, i32* %x2, align 4
  br label %if.end.20

if.end.20:                                        ; preds = %if.then.18, %do.end
  %32 = load i32, i32* %y2, align 4
  %33 = load %struct.canvas*, %struct.canvas** %cv, align 8
  %c_ys = getelementptr inbounds %struct.canvas, %struct.canvas* %33, i32 0, i32 16
  %34 = load i32, i32* %c_ys, align 4
  %cmp21 = icmp slt i32 %32, %34
  br i1 %cmp21, label %if.then.22, label %if.end.24

if.then.22:                                       ; preds = %if.end.20
  %35 = load %struct.canvas*, %struct.canvas** %cv, align 8
  %c_ys23 = getelementptr inbounds %struct.canvas, %struct.canvas* %35, i32 0, i32 16
  %36 = load i32, i32* %c_ys23, align 4
  store i32 %36, i32* %y2, align 4
  br label %if.end.24

if.end.24:                                        ; preds = %if.then.22, %if.end.20
  %37 = load i32, i32* %x2, align 4
  %38 = load %struct.canvas*, %struct.canvas** %cv, align 8
  %c_xe = getelementptr inbounds %struct.canvas, %struct.canvas* %38, i32 0, i32 15
  %39 = load i32, i32* %c_xe, align 4
  %cmp25 = icmp sgt i32 %37, %39
  br i1 %cmp25, label %if.then.26, label %if.end.28

if.then.26:                                       ; preds = %if.end.24
  %40 = load %struct.canvas*, %struct.canvas** %cv, align 8
  %c_xe27 = getelementptr inbounds %struct.canvas, %struct.canvas* %40, i32 0, i32 15
  %41 = load i32, i32* %c_xe27, align 4
  store i32 %41, i32* %x2, align 4
  br label %if.end.28

if.end.28:                                        ; preds = %if.then.26, %if.end.24
  %42 = load i32, i32* %y2, align 4
  %43 = load %struct.canvas*, %struct.canvas** %cv, align 8
  %c_ye = getelementptr inbounds %struct.canvas, %struct.canvas* %43, i32 0, i32 17
  %44 = load i32, i32* %c_ye, align 4
  %cmp29 = icmp sgt i32 %42, %44
  br i1 %cmp29, label %if.then.30, label %if.end.32

if.then.30:                                       ; preds = %if.end.28
  %45 = load %struct.canvas*, %struct.canvas** %cv, align 8
  %c_ye31 = getelementptr inbounds %struct.canvas, %struct.canvas* %45, i32 0, i32 17
  %46 = load i32, i32* %c_ye31, align 4
  store i32 %46, i32* %y2, align 4
  br label %if.end.32

if.end.32:                                        ; preds = %if.then.30, %if.end.28
  %47 = load %struct.canvas*, %struct.canvas** %cv, align 8
  %c_vplist = getelementptr inbounds %struct.canvas, %struct.canvas* %47, i32 0, i32 8
  %48 = load %struct.viewport*, %struct.viewport** %c_vplist, align 8
  store %struct.viewport* %48, %struct.viewport** %vp, align 8
  br label %for.cond.33

for.cond.33:                                      ; preds = %for.inc, %if.end.32
  %49 = load %struct.viewport*, %struct.viewport** %vp, align 8
  %tobool34 = icmp ne %struct.viewport* %49, null
  br i1 %tobool34, label %for.body.35, label %for.end

for.body.35:                                      ; preds = %for.cond.33
  %50 = load i32, i32* %x2, align 4
  %51 = load %struct.viewport*, %struct.viewport** %vp, align 8
  %v_xs = getelementptr inbounds %struct.viewport, %struct.viewport* %51, i32 0, i32 4
  %52 = load i32, i32* %v_xs, align 4
  %cmp36 = icmp slt i32 %50, %52
  br i1 %cmp36, label %if.then.38, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %for.body.35
  %53 = load i32, i32* %x2, align 4
  %54 = load %struct.viewport*, %struct.viewport** %vp, align 8
  %v_xe = getelementptr inbounds %struct.viewport, %struct.viewport* %54, i32 0, i32 5
  %55 = load i32, i32* %v_xe, align 4
  %cmp37 = icmp sgt i32 %53, %55
  br i1 %cmp37, label %if.then.38, label %if.end.39

if.then.38:                                       ; preds = %lor.lhs.false, %for.body.35
  br label %for.inc

if.end.39:                                        ; preds = %lor.lhs.false
  %56 = load i32, i32* %y2, align 4
  %57 = load %struct.viewport*, %struct.viewport** %vp, align 8
  %v_ys = getelementptr inbounds %struct.viewport, %struct.viewport* %57, i32 0, i32 6
  %58 = load i32, i32* %v_ys, align 4
  %cmp40 = icmp slt i32 %56, %58
  br i1 %cmp40, label %if.then.43, label %lor.lhs.false.41

lor.lhs.false.41:                                 ; preds = %if.end.39
  %59 = load i32, i32* %y2, align 4
  %60 = load %struct.viewport*, %struct.viewport** %vp, align 8
  %v_ye = getelementptr inbounds %struct.viewport, %struct.viewport* %60, i32 0, i32 7
  %61 = load i32, i32* %v_ye, align 4
  %cmp42 = icmp sgt i32 %59, %61
  br i1 %cmp42, label %if.then.43, label %if.end.44

if.then.43:                                       ; preds = %lor.lhs.false.41, %if.end.39
  br label %for.inc

if.end.44:                                        ; preds = %lor.lhs.false.41
  %62 = load i32, i32* %x2, align 4
  %63 = load i32, i32* %y2, align 4
  call void @GotoPos(i32 %62, i32 %63)
  br label %for.end

for.inc:                                          ; preds = %if.then.43, %if.then.38
  %64 = load %struct.viewport*, %struct.viewport** %vp, align 8
  %v_next = getelementptr inbounds %struct.viewport, %struct.viewport* %64, i32 0, i32 0
  %65 = load %struct.viewport*, %struct.viewport** %v_next, align 8
  store %struct.viewport* %65, %struct.viewport** %vp, align 8
  br label %for.cond.33

for.end:                                          ; preds = %if.end.44, %for.cond.33
  br label %for.inc.45

for.inc.45:                                       ; preds = %for.end, %if.then.14, %if.then.12, %if.then.9
  %66 = load %struct.canvas*, %struct.canvas** %cv, align 8
  %c_lnext = getelementptr inbounds %struct.canvas, %struct.canvas* %66, i32 0, i32 10
  %67 = load %struct.canvas*, %struct.canvas** %c_lnext, align 8
  store %struct.canvas* %67, %struct.canvas** %cv, align 8
  br label %for.cond

for.end.46:                                       ; preds = %for.cond
  ret void
}

; Function Attrs: nounwind uwtable
define void @LayPauseUpdateRegion(%struct.layer* %layer, i32 %xs, i32 %xe, i32 %ys, i32 %ye) #0 {
entry:
  %layer.addr = alloca %struct.layer*, align 8
  %xs.addr = alloca i32, align 4
  %xe.addr = alloca i32, align 4
  %ys.addr = alloca i32, align 4
  %ye.addr = alloca i32, align 4
  %o = alloca i32, align 4
  store %struct.layer* %layer, %struct.layer** %layer.addr, align 8
  store i32 %xs, i32* %xs.addr, align 4
  store i32 %xe, i32* %xe.addr, align 4
  store i32 %ys, i32* %ys.addr, align 4
  store i32 %ye, i32* %ye.addr, align 4
  %0 = load %struct.layer*, %struct.layer** %layer.addr, align 8
  %l_pause = getelementptr inbounds %struct.layer, %struct.layer* %0, i32 0, i32 13
  %1 = bitcast %struct.anon.0* %l_pause to i8*
  %bf.load = load i8, i8* %1, align 8
  %bf.shl = shl i8 %bf.load, 7
  %bf.ashr = ashr i8 %bf.shl, 7
  %bf.cast = sext i8 %bf.ashr to i32
  %tobool = icmp ne i32 %bf.cast, 0
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  br label %while.end.94

if.end:                                           ; preds = %entry
  %2 = load i32, i32* %ys.addr, align 4
  %cmp = icmp slt i32 %2, 0
  br i1 %cmp, label %if.then.1, label %if.end.2

if.then.1:                                        ; preds = %if.end
  store i32 0, i32* %ys.addr, align 4
  br label %if.end.2

if.end.2:                                         ; preds = %if.then.1, %if.end
  %3 = load i32, i32* %ye.addr, align 4
  %4 = load %struct.layer*, %struct.layer** %layer.addr, align 8
  %l_height = getelementptr inbounds %struct.layer, %struct.layer* %4, i32 0, i32 2
  %5 = load i32, i32* %l_height, align 4
  %cmp3 = icmp sge i32 %3, %5
  br i1 %cmp3, label %if.then.4, label %if.end.6

if.then.4:                                        ; preds = %if.end.2
  %6 = load %struct.layer*, %struct.layer** %layer.addr, align 8
  %l_height5 = getelementptr inbounds %struct.layer, %struct.layer* %6, i32 0, i32 2
  %7 = load i32, i32* %l_height5, align 4
  %sub = sub nsw i32 %7, 1
  store i32 %sub, i32* %ye.addr, align 4
  br label %if.end.6

if.end.6:                                         ; preds = %if.then.4, %if.end.2
  %8 = load i32, i32* %xe.addr, align 4
  %9 = load %struct.layer*, %struct.layer** %layer.addr, align 8
  %l_width = getelementptr inbounds %struct.layer, %struct.layer* %9, i32 0, i32 1
  %10 = load i32, i32* %l_width, align 4
  %cmp7 = icmp sge i32 %8, %10
  br i1 %cmp7, label %if.then.8, label %if.end.11

if.then.8:                                        ; preds = %if.end.6
  %11 = load %struct.layer*, %struct.layer** %layer.addr, align 8
  %l_width9 = getelementptr inbounds %struct.layer, %struct.layer* %11, i32 0, i32 1
  %12 = load i32, i32* %l_width9, align 4
  %sub10 = sub nsw i32 %12, 1
  store i32 %sub10, i32* %xe.addr, align 4
  br label %if.end.11

if.end.11:                                        ; preds = %if.then.8, %if.end.6
  %13 = load %struct.layer*, %struct.layer** %layer.addr, align 8
  %l_pause12 = getelementptr inbounds %struct.layer, %struct.layer* %13, i32 0, i32 13
  %top = getelementptr inbounds %struct.anon.0, %struct.anon.0* %l_pause12, i32 0, i32 3
  %14 = load i32, i32* %top, align 4
  %cmp13 = icmp eq i32 %14, -1
  br i1 %cmp13, label %if.then.17, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.end.11
  %15 = load %struct.layer*, %struct.layer** %layer.addr, align 8
  %l_pause14 = getelementptr inbounds %struct.layer, %struct.layer* %15, i32 0, i32 13
  %top15 = getelementptr inbounds %struct.anon.0, %struct.anon.0* %l_pause14, i32 0, i32 3
  %16 = load i32, i32* %top15, align 4
  %17 = load i32, i32* %ys.addr, align 4
  %cmp16 = icmp sgt i32 %16, %17
  br i1 %cmp16, label %if.then.17, label %if.end.20

if.then.17:                                       ; preds = %lor.lhs.false, %if.end.11
  %18 = load i32, i32* %ys.addr, align 4
  %19 = load %struct.layer*, %struct.layer** %layer.addr, align 8
  %l_pause18 = getelementptr inbounds %struct.layer, %struct.layer* %19, i32 0, i32 13
  %top19 = getelementptr inbounds %struct.anon.0, %struct.anon.0* %l_pause18, i32 0, i32 3
  store i32 %18, i32* %top19, align 4
  br label %if.end.20

if.end.20:                                        ; preds = %if.then.17, %lor.lhs.false
  %20 = load %struct.layer*, %struct.layer** %layer.addr, align 8
  %l_pause21 = getelementptr inbounds %struct.layer, %struct.layer* %20, i32 0, i32 13
  %bottom = getelementptr inbounds %struct.anon.0, %struct.anon.0* %l_pause21, i32 0, i32 4
  %21 = load i32, i32* %bottom, align 4
  %22 = load i32, i32* %ye.addr, align 4
  %cmp22 = icmp slt i32 %21, %22
  br i1 %cmp22, label %if.then.23, label %if.end.57

if.then.23:                                       ; preds = %if.end.20
  %23 = load i32, i32* %ye.addr, align 4
  %24 = load %struct.layer*, %struct.layer** %layer.addr, align 8
  %l_pause24 = getelementptr inbounds %struct.layer, %struct.layer* %24, i32 0, i32 13
  %bottom25 = getelementptr inbounds %struct.anon.0, %struct.anon.0* %l_pause24, i32 0, i32 4
  store i32 %23, i32* %bottom25, align 4
  %25 = load %struct.layer*, %struct.layer** %layer.addr, align 8
  %l_pause26 = getelementptr inbounds %struct.layer, %struct.layer* %25, i32 0, i32 13
  %lines = getelementptr inbounds %struct.anon.0, %struct.anon.0* %l_pause26, i32 0, i32 5
  %26 = load i32, i32* %lines, align 4
  %27 = load i32, i32* %ye.addr, align 4
  %cmp27 = icmp sle i32 %26, %27
  br i1 %cmp27, label %if.then.28, label %if.end.56

if.then.28:                                       ; preds = %if.then.23
  %28 = load %struct.layer*, %struct.layer** %layer.addr, align 8
  %l_pause29 = getelementptr inbounds %struct.layer, %struct.layer* %28, i32 0, i32 13
  %lines30 = getelementptr inbounds %struct.anon.0, %struct.anon.0* %l_pause29, i32 0, i32 5
  %29 = load i32, i32* %lines30, align 4
  store i32 %29, i32* %o, align 4
  %30 = load i32, i32* %ye.addr, align 4
  %add = add nsw i32 %30, 32
  %31 = load %struct.layer*, %struct.layer** %layer.addr, align 8
  %l_pause31 = getelementptr inbounds %struct.layer, %struct.layer* %31, i32 0, i32 13
  %lines32 = getelementptr inbounds %struct.anon.0, %struct.anon.0* %l_pause31, i32 0, i32 5
  store i32 %add, i32* %lines32, align 4
  %32 = load %struct.layer*, %struct.layer** %layer.addr, align 8
  %l_pause33 = getelementptr inbounds %struct.layer, %struct.layer* %32, i32 0, i32 13
  %left = getelementptr inbounds %struct.anon.0, %struct.anon.0* %l_pause33, i32 0, i32 1
  %33 = load i32*, i32** %left, align 8
  %34 = bitcast i32* %33 to i8*
  %35 = load %struct.layer*, %struct.layer** %layer.addr, align 8
  %l_pause34 = getelementptr inbounds %struct.layer, %struct.layer* %35, i32 0, i32 13
  %lines35 = getelementptr inbounds %struct.anon.0, %struct.anon.0* %l_pause34, i32 0, i32 5
  %36 = load i32, i32* %lines35, align 4
  %conv = sext i32 %36 to i64
  %mul = mul i64 4, %conv
  %call = call i8* @realloc(i8* %34, i64 %mul) #2
  %37 = bitcast i8* %call to i32*
  %38 = load %struct.layer*, %struct.layer** %layer.addr, align 8
  %l_pause36 = getelementptr inbounds %struct.layer, %struct.layer* %38, i32 0, i32 13
  %left37 = getelementptr inbounds %struct.anon.0, %struct.anon.0* %l_pause36, i32 0, i32 1
  store i32* %37, i32** %left37, align 8
  %39 = load %struct.layer*, %struct.layer** %layer.addr, align 8
  %l_pause38 = getelementptr inbounds %struct.layer, %struct.layer* %39, i32 0, i32 13
  %right = getelementptr inbounds %struct.anon.0, %struct.anon.0* %l_pause38, i32 0, i32 2
  %40 = load i32*, i32** %right, align 8
  %41 = bitcast i32* %40 to i8*
  %42 = load %struct.layer*, %struct.layer** %layer.addr, align 8
  %l_pause39 = getelementptr inbounds %struct.layer, %struct.layer* %42, i32 0, i32 13
  %lines40 = getelementptr inbounds %struct.anon.0, %struct.anon.0* %l_pause39, i32 0, i32 5
  %43 = load i32, i32* %lines40, align 4
  %conv41 = sext i32 %43 to i64
  %mul42 = mul i64 4, %conv41
  %call43 = call i8* @realloc(i8* %41, i64 %mul42) #2
  %44 = bitcast i8* %call43 to i32*
  %45 = load %struct.layer*, %struct.layer** %layer.addr, align 8
  %l_pause44 = getelementptr inbounds %struct.layer, %struct.layer* %45, i32 0, i32 13
  %right45 = getelementptr inbounds %struct.anon.0, %struct.anon.0* %l_pause44, i32 0, i32 2
  store i32* %44, i32** %right45, align 8
  br label %while.cond

while.cond:                                       ; preds = %while.body, %if.then.28
  %46 = load i32, i32* %o, align 4
  %47 = load %struct.layer*, %struct.layer** %layer.addr, align 8
  %l_pause46 = getelementptr inbounds %struct.layer, %struct.layer* %47, i32 0, i32 13
  %lines47 = getelementptr inbounds %struct.anon.0, %struct.anon.0* %l_pause46, i32 0, i32 5
  %48 = load i32, i32* %lines47, align 4
  %cmp48 = icmp slt i32 %46, %48
  br i1 %cmp48, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %49 = load i32, i32* %o, align 4
  %idxprom = sext i32 %49 to i64
  %50 = load %struct.layer*, %struct.layer** %layer.addr, align 8
  %l_pause50 = getelementptr inbounds %struct.layer, %struct.layer* %50, i32 0, i32 13
  %right51 = getelementptr inbounds %struct.anon.0, %struct.anon.0* %l_pause50, i32 0, i32 2
  %51 = load i32*, i32** %right51, align 8
  %arrayidx = getelementptr inbounds i32, i32* %51, i64 %idxprom
  store i32 -1, i32* %arrayidx, align 4
  %52 = load i32, i32* %o, align 4
  %idxprom52 = sext i32 %52 to i64
  %53 = load %struct.layer*, %struct.layer** %layer.addr, align 8
  %l_pause53 = getelementptr inbounds %struct.layer, %struct.layer* %53, i32 0, i32 13
  %left54 = getelementptr inbounds %struct.anon.0, %struct.anon.0* %l_pause53, i32 0, i32 1
  %54 = load i32*, i32** %left54, align 8
  %arrayidx55 = getelementptr inbounds i32, i32* %54, i64 %idxprom52
  store i32 -1, i32* %arrayidx55, align 4
  %55 = load i32, i32* %o, align 4
  %inc = add nsw i32 %55, 1
  store i32 %inc, i32* %o, align 4
  br label %while.cond

while.end:                                        ; preds = %while.cond
  br label %if.end.56

if.end.56:                                        ; preds = %while.end, %if.then.23
  br label %if.end.57

if.end.57:                                        ; preds = %if.end.56, %if.end.20
  br label %while.cond.58

while.cond.58:                                    ; preds = %if.end.92, %if.end.57
  %56 = load i32, i32* %ys.addr, align 4
  %57 = load i32, i32* %ye.addr, align 4
  %cmp59 = icmp sle i32 %56, %57
  br i1 %cmp59, label %while.body.61, label %while.end.94

while.body.61:                                    ; preds = %while.cond.58
  %58 = load i32, i32* %ys.addr, align 4
  %idxprom62 = sext i32 %58 to i64
  %59 = load %struct.layer*, %struct.layer** %layer.addr, align 8
  %l_pause63 = getelementptr inbounds %struct.layer, %struct.layer* %59, i32 0, i32 13
  %left64 = getelementptr inbounds %struct.anon.0, %struct.anon.0* %l_pause63, i32 0, i32 1
  %60 = load i32*, i32** %left64, align 8
  %arrayidx65 = getelementptr inbounds i32, i32* %60, i64 %idxprom62
  %61 = load i32, i32* %arrayidx65, align 4
  %cmp66 = icmp eq i32 %61, -1
  br i1 %cmp66, label %if.then.75, label %lor.lhs.false.68

lor.lhs.false.68:                                 ; preds = %while.body.61
  %62 = load i32, i32* %ys.addr, align 4
  %idxprom69 = sext i32 %62 to i64
  %63 = load %struct.layer*, %struct.layer** %layer.addr, align 8
  %l_pause70 = getelementptr inbounds %struct.layer, %struct.layer* %63, i32 0, i32 13
  %left71 = getelementptr inbounds %struct.anon.0, %struct.anon.0* %l_pause70, i32 0, i32 1
  %64 = load i32*, i32** %left71, align 8
  %arrayidx72 = getelementptr inbounds i32, i32* %64, i64 %idxprom69
  %65 = load i32, i32* %arrayidx72, align 4
  %66 = load i32, i32* %xs.addr, align 4
  %cmp73 = icmp sgt i32 %65, %66
  br i1 %cmp73, label %if.then.75, label %if.end.80

if.then.75:                                       ; preds = %lor.lhs.false.68, %while.body.61
  %67 = load i32, i32* %xs.addr, align 4
  %68 = load i32, i32* %ys.addr, align 4
  %idxprom76 = sext i32 %68 to i64
  %69 = load %struct.layer*, %struct.layer** %layer.addr, align 8
  %l_pause77 = getelementptr inbounds %struct.layer, %struct.layer* %69, i32 0, i32 13
  %left78 = getelementptr inbounds %struct.anon.0, %struct.anon.0* %l_pause77, i32 0, i32 1
  %70 = load i32*, i32** %left78, align 8
  %arrayidx79 = getelementptr inbounds i32, i32* %70, i64 %idxprom76
  store i32 %67, i32* %arrayidx79, align 4
  br label %if.end.80

if.end.80:                                        ; preds = %if.then.75, %lor.lhs.false.68
  %71 = load i32, i32* %ys.addr, align 4
  %idxprom81 = sext i32 %71 to i64
  %72 = load %struct.layer*, %struct.layer** %layer.addr, align 8
  %l_pause82 = getelementptr inbounds %struct.layer, %struct.layer* %72, i32 0, i32 13
  %right83 = getelementptr inbounds %struct.anon.0, %struct.anon.0* %l_pause82, i32 0, i32 2
  %73 = load i32*, i32** %right83, align 8
  %arrayidx84 = getelementptr inbounds i32, i32* %73, i64 %idxprom81
  %74 = load i32, i32* %arrayidx84, align 4
  %75 = load i32, i32* %xe.addr, align 4
  %cmp85 = icmp slt i32 %74, %75
  br i1 %cmp85, label %if.then.87, label %if.end.92

if.then.87:                                       ; preds = %if.end.80
  %76 = load i32, i32* %xe.addr, align 4
  %77 = load i32, i32* %ys.addr, align 4
  %idxprom88 = sext i32 %77 to i64
  %78 = load %struct.layer*, %struct.layer** %layer.addr, align 8
  %l_pause89 = getelementptr inbounds %struct.layer, %struct.layer* %78, i32 0, i32 13
  %right90 = getelementptr inbounds %struct.anon.0, %struct.anon.0* %l_pause89, i32 0, i32 2
  %79 = load i32*, i32** %right90, align 8
  %arrayidx91 = getelementptr inbounds i32, i32* %79, i64 %idxprom88
  store i32 %76, i32* %arrayidx91, align 4
  br label %if.end.92

if.end.92:                                        ; preds = %if.then.87, %if.end.80
  %80 = load i32, i32* %ys.addr, align 4
  %inc93 = add nsw i32 %80, 1
  store i32 %inc93, i32* %ys.addr, align 4
  br label %while.cond.58

while.end.94:                                     ; preds = %if.then, %while.cond.58
  ret void
}

declare void @GotoPos(i32, i32) #1

; Function Attrs: nounwind uwtable
define void @LScrollH(%struct.layer* %l, i32 %n, i32 %y, i32 %xs, i32 %xe, i32 %bce, %struct.mline* %ol) #0 {
entry:
  %l.addr = alloca %struct.layer*, align 8
  %n.addr = alloca i32, align 4
  %y.addr = alloca i32, align 4
  %xs.addr = alloca i32, align 4
  %xe.addr = alloca i32, align 4
  %bce.addr = alloca i32, align 4
  %ol.addr = alloca %struct.mline*, align 8
  %cv = alloca %struct.canvas*, align 8
  %vp = alloca %struct.viewport*, align 8
  %y2 = alloca i32, align 4
  %xs2 = alloca i32, align 4
  %xe2 = alloca i32, align 4
  store %struct.layer* %l, %struct.layer** %l.addr, align 8
  store i32 %n, i32* %n.addr, align 4
  store i32 %y, i32* %y.addr, align 4
  store i32 %xs, i32* %xs.addr, align 4
  store i32 %xe, i32* %xe.addr, align 4
  store i32 %bce, i32* %bce.addr, align 4
  store %struct.mline* %ol, %struct.mline** %ol.addr, align 8
  %0 = load i32, i32* %n.addr, align 4
  %cmp = icmp eq i32 %0, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  br label %for.end.71

if.end:                                           ; preds = %entry
  %1 = load %struct.layer*, %struct.layer** %l.addr, align 8
  %l_pause = getelementptr inbounds %struct.layer, %struct.layer* %1, i32 0, i32 13
  %2 = bitcast %struct.anon.0* %l_pause to i8*
  %bf.load = load i8, i8* %2, align 8
  %bf.shl = shl i8 %bf.load, 7
  %bf.ashr = ashr i8 %bf.shl, 7
  %bf.cast = sext i8 %bf.ashr to i32
  %tobool = icmp ne i32 %bf.cast, 0
  br i1 %tobool, label %if.then.1, label %if.end.2

if.then.1:                                        ; preds = %if.end
  %3 = load %struct.layer*, %struct.layer** %l.addr, align 8
  %4 = load i32, i32* %xs.addr, align 4
  %5 = load i32, i32* %xe.addr, align 4
  %6 = load i32, i32* %y.addr, align 4
  %7 = load i32, i32* %y.addr, align 4
  call void @LayPauseUpdateRegion(%struct.layer* %3, i32 %4, i32 %5, i32 %6, i32 %7)
  br label %if.end.2

if.end.2:                                         ; preds = %if.then.1, %if.end
  %8 = load %struct.layer*, %struct.layer** %l.addr, align 8
  %l_cvlist = getelementptr inbounds %struct.layer, %struct.layer* %8, i32 0, i32 0
  %9 = load %struct.canvas*, %struct.canvas** %l_cvlist, align 8
  store %struct.canvas* %9, %struct.canvas** %cv, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.inc.70, %if.end.2
  %10 = load %struct.canvas*, %struct.canvas** %cv, align 8
  %tobool3 = icmp ne %struct.canvas* %10, null
  br i1 %tobool3, label %for.body, label %for.end.71

for.body:                                         ; preds = %for.cond
  %11 = load %struct.layer*, %struct.layer** %l.addr, align 8
  %l_pause4 = getelementptr inbounds %struct.layer, %struct.layer* %11, i32 0, i32 13
  %12 = bitcast %struct.anon.0* %l_pause4 to i8*
  %bf.load5 = load i8, i8* %12, align 8
  %bf.shl6 = shl i8 %bf.load5, 7
  %bf.ashr7 = ashr i8 %bf.shl6, 7
  %bf.cast8 = sext i8 %bf.ashr7 to i32
  %tobool9 = icmp ne i32 %bf.cast8, 0
  br i1 %tobool9, label %land.lhs.true, label %if.end.12

land.lhs.true:                                    ; preds = %for.body
  %13 = load %struct.canvas*, %struct.canvas** %cv, align 8
  %c_slorient = getelementptr inbounds %struct.canvas, %struct.canvas* %13, i32 0, i32 6
  %14 = load i32, i32* %c_slorient, align 4
  %tobool10 = icmp ne i32 %14, 0
  br i1 %tobool10, label %if.then.11, label %if.end.12

if.then.11:                                       ; preds = %land.lhs.true
  br label %for.inc.70

if.end.12:                                        ; preds = %land.lhs.true, %for.body
  %15 = load %struct.canvas*, %struct.canvas** %cv, align 8
  %c_vplist = getelementptr inbounds %struct.canvas, %struct.canvas* %15, i32 0, i32 8
  %16 = load %struct.viewport*, %struct.viewport** %c_vplist, align 8
  store %struct.viewport* %16, %struct.viewport** %vp, align 8
  br label %for.cond.13

for.cond.13:                                      ; preds = %for.inc, %if.end.12
  %17 = load %struct.viewport*, %struct.viewport** %vp, align 8
  %tobool14 = icmp ne %struct.viewport* %17, null
  br i1 %tobool14, label %for.body.15, label %for.end

for.body.15:                                      ; preds = %for.cond.13
  %18 = load i32, i32* %y.addr, align 4
  %19 = load %struct.viewport*, %struct.viewport** %vp, align 8
  %v_yoff = getelementptr inbounds %struct.viewport, %struct.viewport* %19, i32 0, i32 3
  %20 = load i32, i32* %v_yoff, align 4
  %add = add nsw i32 %18, %20
  store i32 %add, i32* %y2, align 4
  %21 = load i32, i32* %y2, align 4
  %22 = load %struct.viewport*, %struct.viewport** %vp, align 8
  %v_ys = getelementptr inbounds %struct.viewport, %struct.viewport* %22, i32 0, i32 6
  %23 = load i32, i32* %v_ys, align 4
  %cmp16 = icmp slt i32 %21, %23
  br i1 %cmp16, label %if.then.18, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %for.body.15
  %24 = load i32, i32* %y2, align 4
  %25 = load %struct.viewport*, %struct.viewport** %vp, align 8
  %v_ye = getelementptr inbounds %struct.viewport, %struct.viewport* %25, i32 0, i32 7
  %26 = load i32, i32* %v_ye, align 4
  %cmp17 = icmp sgt i32 %24, %26
  br i1 %cmp17, label %if.then.18, label %if.end.19

if.then.18:                                       ; preds = %lor.lhs.false, %for.body.15
  br label %for.inc

if.end.19:                                        ; preds = %lor.lhs.false
  %27 = load i32, i32* %xs.addr, align 4
  %28 = load %struct.viewport*, %struct.viewport** %vp, align 8
  %v_xoff = getelementptr inbounds %struct.viewport, %struct.viewport* %28, i32 0, i32 2
  %29 = load i32, i32* %v_xoff, align 4
  %add20 = add nsw i32 %27, %29
  store i32 %add20, i32* %xs2, align 4
  %30 = load i32, i32* %xe.addr, align 4
  %31 = load %struct.viewport*, %struct.viewport** %vp, align 8
  %v_xoff21 = getelementptr inbounds %struct.viewport, %struct.viewport* %31, i32 0, i32 2
  %32 = load i32, i32* %v_xoff21, align 4
  %add22 = add nsw i32 %30, %32
  store i32 %add22, i32* %xe2, align 4
  %33 = load i32, i32* %xs2, align 4
  %34 = load %struct.viewport*, %struct.viewport** %vp, align 8
  %v_xs = getelementptr inbounds %struct.viewport, %struct.viewport* %34, i32 0, i32 4
  %35 = load i32, i32* %v_xs, align 4
  %cmp23 = icmp slt i32 %33, %35
  br i1 %cmp23, label %if.then.24, label %if.end.26

if.then.24:                                       ; preds = %if.end.19
  %36 = load %struct.viewport*, %struct.viewport** %vp, align 8
  %v_xs25 = getelementptr inbounds %struct.viewport, %struct.viewport* %36, i32 0, i32 4
  %37 = load i32, i32* %v_xs25, align 4
  store i32 %37, i32* %xs2, align 4
  br label %if.end.26

if.end.26:                                        ; preds = %if.then.24, %if.end.19
  %38 = load i32, i32* %xe2, align 4
  %39 = load %struct.viewport*, %struct.viewport** %vp, align 8
  %v_xe = getelementptr inbounds %struct.viewport, %struct.viewport* %39, i32 0, i32 5
  %40 = load i32, i32* %v_xe, align 4
  %cmp27 = icmp sgt i32 %38, %40
  br i1 %cmp27, label %if.then.28, label %if.end.30

if.then.28:                                       ; preds = %if.end.26
  %41 = load %struct.viewport*, %struct.viewport** %vp, align 8
  %v_xe29 = getelementptr inbounds %struct.viewport, %struct.viewport* %41, i32 0, i32 5
  %42 = load i32, i32* %v_xe29, align 4
  store i32 %42, i32* %xe2, align 4
  br label %if.end.30

if.end.30:                                        ; preds = %if.then.28, %if.end.26
  %43 = load i32, i32* %xs2, align 4
  %44 = load i32, i32* %xe2, align 4
  %cmp31 = icmp sgt i32 %43, %44
  br i1 %cmp31, label %if.then.32, label %if.end.33

if.then.32:                                       ; preds = %if.end.30
  br label %for.inc

if.end.33:                                        ; preds = %if.end.30
  %45 = load %struct.canvas*, %struct.canvas** %cv, align 8
  %c_display = getelementptr inbounds %struct.canvas, %struct.canvas* %45, i32 0, i32 1
  %46 = load %struct.display*, %struct.display** %c_display, align 8
  store %struct.display* %46, %struct.display** @display, align 8
  %47 = load %struct.display*, %struct.display** @display, align 8
  %d_blocked = getelementptr inbounds %struct.display, %struct.display* %47, i32 0, i32 102
  %48 = load i32, i32* %d_blocked, align 4
  %tobool34 = icmp ne i32 %48, 0
  br i1 %tobool34, label %if.then.35, label %if.end.36

if.then.35:                                       ; preds = %if.end.33
  br label %for.inc

if.end.36:                                        ; preds = %if.end.33
  %49 = load i32, i32* %y2, align 4
  %50 = load i32, i32* %xs2, align 4
  %51 = load i32, i32* %xe2, align 4
  %52 = load i32, i32* %n.addr, align 4
  %53 = load i32, i32* %bce.addr, align 4
  %54 = load %struct.mline*, %struct.mline** %ol.addr, align 8
  %tobool37 = icmp ne %struct.mline* %54, null
  br i1 %tobool37, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.end.36
  %55 = load %struct.mline*, %struct.mline** %ol.addr, align 8
  %56 = load %struct.viewport*, %struct.viewport** %vp, align 8
  %v_xoff38 = getelementptr inbounds %struct.viewport, %struct.viewport* %56, i32 0, i32 2
  %57 = load i32, i32* %v_xoff38, align 4
  %sub = sub nsw i32 0, %57
  %call = call %struct.mline* @mloff(%struct.mline* %55, i32 %sub)
  br label %cond.end

cond.false:                                       ; preds = %if.end.36
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi %struct.mline* [ %call, %cond.true ], [ null, %cond.false ]
  call void @ScrollH(i32 %49, i32 %50, i32 %51, i32 %52, i32 %53, %struct.mline* %cond)
  %58 = load i32, i32* %xe2, align 4
  %59 = load i32, i32* %xs2, align 4
  %sub39 = sub nsw i32 %58, %59
  %60 = load i32, i32* %xe.addr, align 4
  %61 = load i32, i32* %xs.addr, align 4
  %sub40 = sub nsw i32 %60, %61
  %cmp41 = icmp eq i32 %sub39, %sub40
  br i1 %cmp41, label %if.then.42, label %if.end.43

if.then.42:                                       ; preds = %cond.end
  br label %for.inc

if.end.43:                                        ; preds = %cond.end
  %62 = load i32, i32* %n.addr, align 4
  %cmp44 = icmp sgt i32 %62, 0
  br i1 %cmp44, label %if.then.45, label %if.else

if.then.45:                                       ; preds = %if.end.43
  %63 = load i32, i32* %xe2, align 4
  %add46 = add nsw i32 %63, 1
  %64 = load i32, i32* %n.addr, align 4
  %sub47 = sub nsw i32 %add46, %64
  store i32 %sub47, i32* %xs2, align 4
  %65 = load i32, i32* %xe.addr, align 4
  %66 = load %struct.viewport*, %struct.viewport** %vp, align 8
  %v_xoff48 = getelementptr inbounds %struct.viewport, %struct.viewport* %66, i32 0, i32 2
  %67 = load i32, i32* %v_xoff48, align 4
  %add49 = add nsw i32 %65, %67
  %68 = load i32, i32* %n.addr, align 4
  %sub50 = sub nsw i32 %add49, %68
  store i32 %sub50, i32* %xe2, align 4
  br label %if.end.56

if.else:                                          ; preds = %if.end.43
  %69 = load i32, i32* %xs2, align 4
  %sub51 = sub nsw i32 %69, 1
  %70 = load i32, i32* %n.addr, align 4
  %sub52 = sub nsw i32 %sub51, %70
  store i32 %sub52, i32* %xe2, align 4
  %71 = load i32, i32* %xs.addr, align 4
  %72 = load %struct.viewport*, %struct.viewport** %vp, align 8
  %v_xoff53 = getelementptr inbounds %struct.viewport, %struct.viewport* %72, i32 0, i32 2
  %73 = load i32, i32* %v_xoff53, align 4
  %add54 = add nsw i32 %71, %73
  %74 = load i32, i32* %n.addr, align 4
  %sub55 = sub nsw i32 %add54, %74
  store i32 %sub55, i32* %xs2, align 4
  br label %if.end.56

if.end.56:                                        ; preds = %if.else, %if.then.45
  %75 = load i32, i32* %xs2, align 4
  %76 = load %struct.viewport*, %struct.viewport** %vp, align 8
  %v_xs57 = getelementptr inbounds %struct.viewport, %struct.viewport* %76, i32 0, i32 4
  %77 = load i32, i32* %v_xs57, align 4
  %cmp58 = icmp slt i32 %75, %77
  br i1 %cmp58, label %if.then.59, label %if.end.61

if.then.59:                                       ; preds = %if.end.56
  %78 = load %struct.viewport*, %struct.viewport** %vp, align 8
  %v_xs60 = getelementptr inbounds %struct.viewport, %struct.viewport* %78, i32 0, i32 4
  %79 = load i32, i32* %v_xs60, align 4
  store i32 %79, i32* %xs2, align 4
  br label %if.end.61

if.end.61:                                        ; preds = %if.then.59, %if.end.56
  %80 = load i32, i32* %xe2, align 4
  %81 = load %struct.viewport*, %struct.viewport** %vp, align 8
  %v_xe62 = getelementptr inbounds %struct.viewport, %struct.viewport* %81, i32 0, i32 5
  %82 = load i32, i32* %v_xe62, align 4
  %cmp63 = icmp sgt i32 %80, %82
  br i1 %cmp63, label %if.then.64, label %if.end.66

if.then.64:                                       ; preds = %if.end.61
  %83 = load %struct.viewport*, %struct.viewport** %vp, align 8
  %v_xe65 = getelementptr inbounds %struct.viewport, %struct.viewport* %83, i32 0, i32 5
  %84 = load i32, i32* %v_xe65, align 4
  store i32 %84, i32* %xe2, align 4
  br label %if.end.66

if.end.66:                                        ; preds = %if.then.64, %if.end.61
  %85 = load i32, i32* %xs2, align 4
  %86 = load i32, i32* %xe2, align 4
  %cmp67 = icmp sle i32 %85, %86
  br i1 %cmp67, label %if.then.68, label %if.end.69

if.then.68:                                       ; preds = %if.end.66
  %87 = load i32, i32* %xs2, align 4
  %88 = load i32, i32* %y2, align 4
  %89 = load i32, i32* %xe2, align 4
  %90 = load i32, i32* %y2, align 4
  call void @RefreshArea(i32 %87, i32 %88, i32 %89, i32 %90, i32 1)
  br label %if.end.69

if.end.69:                                        ; preds = %if.then.68, %if.end.66
  br label %for.inc

for.inc:                                          ; preds = %if.end.69, %if.then.42, %if.then.35, %if.then.32, %if.then.18
  %91 = load %struct.viewport*, %struct.viewport** %vp, align 8
  %v_next = getelementptr inbounds %struct.viewport, %struct.viewport* %91, i32 0, i32 0
  %92 = load %struct.viewport*, %struct.viewport** %v_next, align 8
  store %struct.viewport* %92, %struct.viewport** %vp, align 8
  br label %for.cond.13

for.end:                                          ; preds = %for.cond.13
  br label %for.inc.70

for.inc.70:                                       ; preds = %for.end, %if.then.11
  %93 = load %struct.canvas*, %struct.canvas** %cv, align 8
  %c_lnext = getelementptr inbounds %struct.canvas, %struct.canvas* %93, i32 0, i32 10
  %94 = load %struct.canvas*, %struct.canvas** %c_lnext, align 8
  store %struct.canvas* %94, %struct.canvas** %cv, align 8
  br label %for.cond

for.end.71:                                       ; preds = %if.then, %for.cond
  ret void
}

declare void @ScrollH(i32, i32, i32, i32, i32, %struct.mline*) #1

; Function Attrs: nounwind uwtable
define internal %struct.mline* @mloff(%struct.mline* %ml, i32 %off) #0 {
entry:
  %retval = alloca %struct.mline*, align 8
  %ml.addr = alloca %struct.mline*, align 8
  %off.addr = alloca i32, align 4
  store %struct.mline* %ml, %struct.mline** %ml.addr, align 8
  store i32 %off, i32* %off.addr, align 4
  %0 = load %struct.mline*, %struct.mline** %ml.addr, align 8
  %cmp = icmp eq %struct.mline* %0, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store %struct.mline* null, %struct.mline** %retval
  br label %return

if.end:                                           ; preds = %entry
  %1 = load %struct.mline*, %struct.mline** %ml.addr, align 8
  %image = getelementptr inbounds %struct.mline, %struct.mline* %1, i32 0, i32 0
  %2 = load i8*, i8** %image, align 8
  %3 = load i32, i32* %off.addr, align 4
  %idx.ext = sext i32 %3 to i64
  %add.ptr = getelementptr inbounds i8, i8* %2, i64 %idx.ext
  store i8* %add.ptr, i8** getelementptr inbounds (%struct.mline, %struct.mline* @mloff.mml, i32 0, i32 0), align 8
  %4 = load %struct.mline*, %struct.mline** %ml.addr, align 8
  %attr = getelementptr inbounds %struct.mline, %struct.mline* %4, i32 0, i32 1
  %5 = load i8*, i8** %attr, align 8
  %6 = load i32, i32* %off.addr, align 4
  %idx.ext1 = sext i32 %6 to i64
  %add.ptr2 = getelementptr inbounds i8, i8* %5, i64 %idx.ext1
  store i8* %add.ptr2, i8** getelementptr inbounds (%struct.mline, %struct.mline* @mloff.mml, i32 0, i32 1), align 8
  %7 = load %struct.mline*, %struct.mline** %ml.addr, align 8
  %font = getelementptr inbounds %struct.mline, %struct.mline* %7, i32 0, i32 2
  %8 = load i8*, i8** %font, align 8
  %9 = load i32, i32* %off.addr, align 4
  %idx.ext3 = sext i32 %9 to i64
  %add.ptr4 = getelementptr inbounds i8, i8* %8, i64 %idx.ext3
  store i8* %add.ptr4, i8** getelementptr inbounds (%struct.mline, %struct.mline* @mloff.mml, i32 0, i32 2), align 8
  %10 = load %struct.mline*, %struct.mline** %ml.addr, align 8
  %fontx = getelementptr inbounds %struct.mline, %struct.mline* %10, i32 0, i32 3
  %11 = load i8*, i8** %fontx, align 8
  %12 = load i32, i32* %off.addr, align 4
  %idx.ext5 = sext i32 %12 to i64
  %add.ptr6 = getelementptr inbounds i8, i8* %11, i64 %idx.ext5
  store i8* %add.ptr6, i8** getelementptr inbounds (%struct.mline, %struct.mline* @mloff.mml, i32 0, i32 3), align 8
  %13 = load %struct.mline*, %struct.mline** %ml.addr, align 8
  %color = getelementptr inbounds %struct.mline, %struct.mline* %13, i32 0, i32 4
  %14 = load i8*, i8** %color, align 8
  %15 = load i32, i32* %off.addr, align 4
  %idx.ext7 = sext i32 %15 to i64
  %add.ptr8 = getelementptr inbounds i8, i8* %14, i64 %idx.ext7
  store i8* %add.ptr8, i8** getelementptr inbounds (%struct.mline, %struct.mline* @mloff.mml, i32 0, i32 4), align 8
  store %struct.mline* @mloff.mml, %struct.mline** %retval
  br label %return

return:                                           ; preds = %if.end, %if.then
  %16 = load %struct.mline*, %struct.mline** %retval
  ret %struct.mline* %16
}

declare void @RefreshArea(i32, i32, i32, i32, i32) #1

; Function Attrs: nounwind uwtable
define void @LScrollV(%struct.layer* %l, i32 %n, i32 %ys, i32 %ye, i32 %bce) #0 {
entry:
  %l.addr = alloca %struct.layer*, align 8
  %n.addr = alloca i32, align 4
  %ys.addr = alloca i32, align 4
  %ye.addr = alloca i32, align 4
  %bce.addr = alloca i32, align 4
  %cv = alloca %struct.canvas*, align 8
  %vp = alloca %struct.viewport*, align 8
  %ys2 = alloca i32, align 4
  %ye2 = alloca i32, align 4
  %xs2 = alloca i32, align 4
  %xe2 = alloca i32, align 4
  store %struct.layer* %l, %struct.layer** %l.addr, align 8
  store i32 %n, i32* %n.addr, align 4
  store i32 %ys, i32* %ys.addr, align 4
  store i32 %ye, i32* %ye.addr, align 4
  store i32 %bce, i32* %bce.addr, align 4
  %0 = load i32, i32* %n.addr, align 4
  %cmp = icmp eq i32 %0, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  br label %for.end.85

if.end:                                           ; preds = %entry
  %1 = load %struct.layer*, %struct.layer** %l.addr, align 8
  %l_pause = getelementptr inbounds %struct.layer, %struct.layer* %1, i32 0, i32 13
  %2 = bitcast %struct.anon.0* %l_pause to i8*
  %bf.load = load i8, i8* %2, align 8
  %bf.shl = shl i8 %bf.load, 7
  %bf.ashr = ashr i8 %bf.shl, 7
  %bf.cast = sext i8 %bf.ashr to i32
  %tobool = icmp ne i32 %bf.cast, 0
  br i1 %tobool, label %if.then.1, label %if.end.2

if.then.1:                                        ; preds = %if.end
  %3 = load %struct.layer*, %struct.layer** %l.addr, align 8
  %4 = load %struct.layer*, %struct.layer** %l.addr, align 8
  %l_width = getelementptr inbounds %struct.layer, %struct.layer* %4, i32 0, i32 1
  %5 = load i32, i32* %l_width, align 4
  %sub = sub nsw i32 %5, 1
  %6 = load i32, i32* %ys.addr, align 4
  %7 = load i32, i32* %ye.addr, align 4
  call void @LayPauseUpdateRegion(%struct.layer* %3, i32 0, i32 %sub, i32 %6, i32 %7)
  br label %if.end.2

if.end.2:                                         ; preds = %if.then.1, %if.end
  %8 = load %struct.layer*, %struct.layer** %l.addr, align 8
  %l_cvlist = getelementptr inbounds %struct.layer, %struct.layer* %8, i32 0, i32 0
  %9 = load %struct.canvas*, %struct.canvas** %l_cvlist, align 8
  store %struct.canvas* %9, %struct.canvas** %cv, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.inc.84, %if.end.2
  %10 = load %struct.canvas*, %struct.canvas** %cv, align 8
  %tobool3 = icmp ne %struct.canvas* %10, null
  br i1 %tobool3, label %for.body, label %for.end.85

for.body:                                         ; preds = %for.cond
  %11 = load %struct.layer*, %struct.layer** %l.addr, align 8
  %l_pause4 = getelementptr inbounds %struct.layer, %struct.layer* %11, i32 0, i32 13
  %12 = bitcast %struct.anon.0* %l_pause4 to i8*
  %bf.load5 = load i8, i8* %12, align 8
  %bf.shl6 = shl i8 %bf.load5, 7
  %bf.ashr7 = ashr i8 %bf.shl6, 7
  %bf.cast8 = sext i8 %bf.ashr7 to i32
  %tobool9 = icmp ne i32 %bf.cast8, 0
  br i1 %tobool9, label %land.lhs.true, label %if.end.12

land.lhs.true:                                    ; preds = %for.body
  %13 = load %struct.canvas*, %struct.canvas** %cv, align 8
  %c_slorient = getelementptr inbounds %struct.canvas, %struct.canvas* %13, i32 0, i32 6
  %14 = load i32, i32* %c_slorient, align 4
  %tobool10 = icmp ne i32 %14, 0
  br i1 %tobool10, label %if.then.11, label %if.end.12

if.then.11:                                       ; preds = %land.lhs.true
  br label %for.inc.84

if.end.12:                                        ; preds = %land.lhs.true, %for.body
  %15 = load %struct.canvas*, %struct.canvas** %cv, align 8
  %c_vplist = getelementptr inbounds %struct.canvas, %struct.canvas* %15, i32 0, i32 8
  %16 = load %struct.viewport*, %struct.viewport** %c_vplist, align 8
  store %struct.viewport* %16, %struct.viewport** %vp, align 8
  br label %for.cond.13

for.cond.13:                                      ; preds = %for.inc, %if.end.12
  %17 = load %struct.viewport*, %struct.viewport** %vp, align 8
  %tobool14 = icmp ne %struct.viewport* %17, null
  br i1 %tobool14, label %for.body.15, label %for.end

for.body.15:                                      ; preds = %for.cond.13
  %18 = load %struct.viewport*, %struct.viewport** %vp, align 8
  %v_xoff = getelementptr inbounds %struct.viewport, %struct.viewport* %18, i32 0, i32 2
  %19 = load i32, i32* %v_xoff, align 4
  store i32 %19, i32* %xs2, align 4
  %20 = load %struct.layer*, %struct.layer** %l.addr, align 8
  %l_width16 = getelementptr inbounds %struct.layer, %struct.layer* %20, i32 0, i32 1
  %21 = load i32, i32* %l_width16, align 4
  %sub17 = sub nsw i32 %21, 1
  %22 = load %struct.viewport*, %struct.viewport** %vp, align 8
  %v_xoff18 = getelementptr inbounds %struct.viewport, %struct.viewport* %22, i32 0, i32 2
  %23 = load i32, i32* %v_xoff18, align 4
  %add = add nsw i32 %sub17, %23
  store i32 %add, i32* %xe2, align 4
  %24 = load i32, i32* %ys.addr, align 4
  %25 = load %struct.viewport*, %struct.viewport** %vp, align 8
  %v_yoff = getelementptr inbounds %struct.viewport, %struct.viewport* %25, i32 0, i32 3
  %26 = load i32, i32* %v_yoff, align 4
  %add19 = add nsw i32 %24, %26
  store i32 %add19, i32* %ys2, align 4
  %27 = load i32, i32* %ye.addr, align 4
  %28 = load %struct.viewport*, %struct.viewport** %vp, align 8
  %v_yoff20 = getelementptr inbounds %struct.viewport, %struct.viewport* %28, i32 0, i32 3
  %29 = load i32, i32* %v_yoff20, align 4
  %add21 = add nsw i32 %27, %29
  store i32 %add21, i32* %ye2, align 4
  %30 = load i32, i32* %xs2, align 4
  %31 = load %struct.viewport*, %struct.viewport** %vp, align 8
  %v_xs = getelementptr inbounds %struct.viewport, %struct.viewport* %31, i32 0, i32 4
  %32 = load i32, i32* %v_xs, align 4
  %cmp22 = icmp slt i32 %30, %32
  br i1 %cmp22, label %if.then.23, label %if.end.25

if.then.23:                                       ; preds = %for.body.15
  %33 = load %struct.viewport*, %struct.viewport** %vp, align 8
  %v_xs24 = getelementptr inbounds %struct.viewport, %struct.viewport* %33, i32 0, i32 4
  %34 = load i32, i32* %v_xs24, align 4
  store i32 %34, i32* %xs2, align 4
  br label %if.end.25

if.end.25:                                        ; preds = %if.then.23, %for.body.15
  %35 = load i32, i32* %xe2, align 4
  %36 = load %struct.viewport*, %struct.viewport** %vp, align 8
  %v_xe = getelementptr inbounds %struct.viewport, %struct.viewport* %36, i32 0, i32 5
  %37 = load i32, i32* %v_xe, align 4
  %cmp26 = icmp sgt i32 %35, %37
  br i1 %cmp26, label %if.then.27, label %if.end.29

if.then.27:                                       ; preds = %if.end.25
  %38 = load %struct.viewport*, %struct.viewport** %vp, align 8
  %v_xe28 = getelementptr inbounds %struct.viewport, %struct.viewport* %38, i32 0, i32 5
  %39 = load i32, i32* %v_xe28, align 4
  store i32 %39, i32* %xe2, align 4
  br label %if.end.29

if.end.29:                                        ; preds = %if.then.27, %if.end.25
  %40 = load i32, i32* %ys2, align 4
  %41 = load %struct.viewport*, %struct.viewport** %vp, align 8
  %v_ys = getelementptr inbounds %struct.viewport, %struct.viewport* %41, i32 0, i32 6
  %42 = load i32, i32* %v_ys, align 4
  %cmp30 = icmp slt i32 %40, %42
  br i1 %cmp30, label %if.then.31, label %if.end.33

if.then.31:                                       ; preds = %if.end.29
  %43 = load %struct.viewport*, %struct.viewport** %vp, align 8
  %v_ys32 = getelementptr inbounds %struct.viewport, %struct.viewport* %43, i32 0, i32 6
  %44 = load i32, i32* %v_ys32, align 4
  store i32 %44, i32* %ys2, align 4
  br label %if.end.33

if.end.33:                                        ; preds = %if.then.31, %if.end.29
  %45 = load i32, i32* %ye2, align 4
  %46 = load %struct.viewport*, %struct.viewport** %vp, align 8
  %v_ye = getelementptr inbounds %struct.viewport, %struct.viewport* %46, i32 0, i32 7
  %47 = load i32, i32* %v_ye, align 4
  %cmp34 = icmp sgt i32 %45, %47
  br i1 %cmp34, label %if.then.35, label %if.end.37

if.then.35:                                       ; preds = %if.end.33
  %48 = load %struct.viewport*, %struct.viewport** %vp, align 8
  %v_ye36 = getelementptr inbounds %struct.viewport, %struct.viewport* %48, i32 0, i32 7
  %49 = load i32, i32* %v_ye36, align 4
  store i32 %49, i32* %ye2, align 4
  br label %if.end.37

if.end.37:                                        ; preds = %if.then.35, %if.end.33
  %50 = load i32, i32* %ys2, align 4
  %51 = load i32, i32* %ye2, align 4
  %cmp38 = icmp sgt i32 %50, %51
  br i1 %cmp38, label %if.then.40, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.end.37
  %52 = load i32, i32* %xs2, align 4
  %53 = load i32, i32* %xe2, align 4
  %cmp39 = icmp sgt i32 %52, %53
  br i1 %cmp39, label %if.then.40, label %if.end.41

if.then.40:                                       ; preds = %lor.lhs.false, %if.end.37
  br label %for.inc

if.end.41:                                        ; preds = %lor.lhs.false
  %54 = load %struct.canvas*, %struct.canvas** %cv, align 8
  %c_display = getelementptr inbounds %struct.canvas, %struct.canvas* %54, i32 0, i32 1
  %55 = load %struct.display*, %struct.display** %c_display, align 8
  store %struct.display* %55, %struct.display** @display, align 8
  %56 = load %struct.display*, %struct.display** @display, align 8
  %d_blocked = getelementptr inbounds %struct.display, %struct.display* %56, i32 0, i32 102
  %57 = load i32, i32* %d_blocked, align 4
  %tobool42 = icmp ne i32 %57, 0
  br i1 %tobool42, label %if.then.43, label %if.end.44

if.then.43:                                       ; preds = %if.end.41
  br label %for.inc

if.end.44:                                        ; preds = %if.end.41
  %58 = load %struct.viewport*, %struct.viewport** %vp, align 8
  %v_xs45 = getelementptr inbounds %struct.viewport, %struct.viewport* %58, i32 0, i32 4
  %59 = load i32, i32* %v_xs45, align 4
  %60 = load i32, i32* %ys2, align 4
  %61 = load %struct.viewport*, %struct.viewport** %vp, align 8
  %v_xe46 = getelementptr inbounds %struct.viewport, %struct.viewport* %61, i32 0, i32 5
  %62 = load i32, i32* %v_xe46, align 4
  %63 = load i32, i32* %ye2, align 4
  %64 = load i32, i32* %n.addr, align 4
  %65 = load i32, i32* %bce.addr, align 4
  call void @ScrollV(i32 %59, i32 %60, i32 %62, i32 %63, i32 %64, i32 %65)
  br label %do.body

do.body:                                          ; preds = %if.end.44
  br label %do.end

do.end:                                           ; preds = %do.body
  br label %do.body.47

do.body.47:                                       ; preds = %do.end
  br label %do.end.48

do.end.48:                                        ; preds = %do.body.47
  %66 = load i32, i32* %ye2, align 4
  %67 = load i32, i32* %ys2, align 4
  %sub49 = sub nsw i32 %66, %67
  %68 = load i32, i32* %ye.addr, align 4
  %69 = load i32, i32* %ys.addr, align 4
  %sub50 = sub nsw i32 %68, %69
  %cmp51 = icmp eq i32 %sub49, %sub50
  br i1 %cmp51, label %if.then.52, label %if.end.53

if.then.52:                                       ; preds = %do.end.48
  br label %for.inc

if.end.53:                                        ; preds = %do.end.48
  %70 = load i32, i32* %n.addr, align 4
  %cmp54 = icmp sgt i32 %70, 0
  br i1 %cmp54, label %if.then.55, label %if.else

if.then.55:                                       ; preds = %if.end.53
  %71 = load i32, i32* %ye2, align 4
  %add56 = add nsw i32 %71, 1
  %72 = load i32, i32* %n.addr, align 4
  %sub57 = sub nsw i32 %add56, %72
  store i32 %sub57, i32* %ys2, align 4
  %73 = load i32, i32* %ye.addr, align 4
  %74 = load %struct.viewport*, %struct.viewport** %vp, align 8
  %v_yoff58 = getelementptr inbounds %struct.viewport, %struct.viewport* %74, i32 0, i32 3
  %75 = load i32, i32* %v_yoff58, align 4
  %add59 = add nsw i32 %73, %75
  %76 = load i32, i32* %n.addr, align 4
  %sub60 = sub nsw i32 %add59, %76
  store i32 %sub60, i32* %ye2, align 4
  br label %if.end.66

if.else:                                          ; preds = %if.end.53
  %77 = load i32, i32* %ys2, align 4
  %sub61 = sub nsw i32 %77, 1
  %78 = load i32, i32* %n.addr, align 4
  %sub62 = sub nsw i32 %sub61, %78
  store i32 %sub62, i32* %ye2, align 4
  %79 = load i32, i32* %ys.addr, align 4
  %80 = load %struct.viewport*, %struct.viewport** %vp, align 8
  %v_yoff63 = getelementptr inbounds %struct.viewport, %struct.viewport* %80, i32 0, i32 3
  %81 = load i32, i32* %v_yoff63, align 4
  %add64 = add nsw i32 %79, %81
  %82 = load i32, i32* %n.addr, align 4
  %sub65 = sub nsw i32 %add64, %82
  store i32 %sub65, i32* %ys2, align 4
  br label %if.end.66

if.end.66:                                        ; preds = %if.else, %if.then.55
  br label %do.body.67

do.body.67:                                       ; preds = %if.end.66
  br label %do.end.68

do.end.68:                                        ; preds = %do.body.67
  %83 = load i32, i32* %ys2, align 4
  %84 = load %struct.viewport*, %struct.viewport** %vp, align 8
  %v_ys69 = getelementptr inbounds %struct.viewport, %struct.viewport* %84, i32 0, i32 6
  %85 = load i32, i32* %v_ys69, align 4
  %cmp70 = icmp slt i32 %83, %85
  br i1 %cmp70, label %if.then.71, label %if.end.73

if.then.71:                                       ; preds = %do.end.68
  %86 = load %struct.viewport*, %struct.viewport** %vp, align 8
  %v_ys72 = getelementptr inbounds %struct.viewport, %struct.viewport* %86, i32 0, i32 6
  %87 = load i32, i32* %v_ys72, align 4
  store i32 %87, i32* %ys2, align 4
  br label %if.end.73

if.end.73:                                        ; preds = %if.then.71, %do.end.68
  %88 = load i32, i32* %ye2, align 4
  %89 = load %struct.viewport*, %struct.viewport** %vp, align 8
  %v_ye74 = getelementptr inbounds %struct.viewport, %struct.viewport* %89, i32 0, i32 7
  %90 = load i32, i32* %v_ye74, align 4
  %cmp75 = icmp sgt i32 %88, %90
  br i1 %cmp75, label %if.then.76, label %if.end.78

if.then.76:                                       ; preds = %if.end.73
  %91 = load %struct.viewport*, %struct.viewport** %vp, align 8
  %v_ye77 = getelementptr inbounds %struct.viewport, %struct.viewport* %91, i32 0, i32 7
  %92 = load i32, i32* %v_ye77, align 4
  store i32 %92, i32* %ye2, align 4
  br label %if.end.78

if.end.78:                                        ; preds = %if.then.76, %if.end.73
  br label %do.body.79

do.body.79:                                       ; preds = %if.end.78
  br label %do.end.80

do.end.80:                                        ; preds = %do.body.79
  %93 = load i32, i32* %ys2, align 4
  %94 = load i32, i32* %ye2, align 4
  %cmp81 = icmp sle i32 %93, %94
  br i1 %cmp81, label %if.then.82, label %if.end.83

if.then.82:                                       ; preds = %do.end.80
  %95 = load i32, i32* %xs2, align 4
  %96 = load i32, i32* %ys2, align 4
  %97 = load i32, i32* %xe2, align 4
  %98 = load i32, i32* %ye2, align 4
  call void @RefreshArea(i32 %95, i32 %96, i32 %97, i32 %98, i32 1)
  br label %if.end.83

if.end.83:                                        ; preds = %if.then.82, %do.end.80
  br label %for.inc

for.inc:                                          ; preds = %if.end.83, %if.then.52, %if.then.43, %if.then.40
  %99 = load %struct.viewport*, %struct.viewport** %vp, align 8
  %v_next = getelementptr inbounds %struct.viewport, %struct.viewport* %99, i32 0, i32 0
  %100 = load %struct.viewport*, %struct.viewport** %v_next, align 8
  store %struct.viewport* %100, %struct.viewport** %vp, align 8
  br label %for.cond.13

for.end:                                          ; preds = %for.cond.13
  br label %for.inc.84

for.inc.84:                                       ; preds = %for.end, %if.then.11
  %101 = load %struct.canvas*, %struct.canvas** %cv, align 8
  %c_lnext = getelementptr inbounds %struct.canvas, %struct.canvas* %101, i32 0, i32 10
  %102 = load %struct.canvas*, %struct.canvas** %c_lnext, align 8
  store %struct.canvas* %102, %struct.canvas** %cv, align 8
  br label %for.cond

for.end.85:                                       ; preds = %if.then, %for.cond
  ret void
}

declare void @ScrollV(i32, i32, i32, i32, i32, i32) #1

; Function Attrs: nounwind uwtable
define void @LInsChar(%struct.layer* %l, %struct.mchar* %c, i32 %x, i32 %y, %struct.mline* %ol) #0 {
entry:
  %l.addr = alloca %struct.layer*, align 8
  %c.addr = alloca %struct.mchar*, align 8
  %x.addr = alloca i32, align 4
  %y.addr = alloca i32, align 4
  %ol.addr = alloca %struct.mline*, align 8
  %cv = alloca %struct.canvas*, align 8
  %vp = alloca %struct.viewport*, align 8
  %xs2 = alloca i32, align 4
  %xe2 = alloca i32, align 4
  %y2 = alloca i32, align 4
  %f = alloca i32, align 4
  %c2 = alloca %struct.mchar*, align 8
  %cc = alloca %struct.mchar, align 1
  %rol = alloca %struct.mline*, align 8
  %i = alloca i32, align 4
  store %struct.layer* %l, %struct.layer** %l.addr, align 8
  store %struct.mchar* %c, %struct.mchar** %c.addr, align 8
  store i32 %x, i32* %x.addr, align 4
  store i32 %y, i32* %y.addr, align 4
  store %struct.mline* %ol, %struct.mline** %ol.addr, align 8
  %0 = load %struct.layer*, %struct.layer** %l.addr, align 8
  %l_pause = getelementptr inbounds %struct.layer, %struct.layer* %0, i32 0, i32 13
  %1 = bitcast %struct.anon.0* %l_pause to i8*
  %bf.load = load i8, i8* %1, align 8
  %bf.shl = shl i8 %bf.load, 7
  %bf.ashr = ashr i8 %bf.shl, 7
  %bf.cast = sext i8 %bf.ashr to i32
  %tobool = icmp ne i32 %bf.cast, 0
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %2 = load %struct.layer*, %struct.layer** %l.addr, align 8
  %3 = load i32, i32* %x.addr, align 4
  %4 = load %struct.layer*, %struct.layer** %l.addr, align 8
  %l_width = getelementptr inbounds %struct.layer, %struct.layer* %4, i32 0, i32 1
  %5 = load i32, i32* %l_width, align 4
  %sub = sub nsw i32 %5, 1
  %6 = load i32, i32* %y.addr, align 4
  %7 = load i32, i32* %y.addr, align 4
  call void @LayPauseUpdateRegion(%struct.layer* %2, i32 %3, i32 %sub, i32 %6, i32 %7)
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %8 = load %struct.layer*, %struct.layer** %l.addr, align 8
  %l_cvlist = getelementptr inbounds %struct.layer, %struct.layer* %8, i32 0, i32 0
  %9 = load %struct.canvas*, %struct.canvas** %l_cvlist, align 8
  store %struct.canvas* %9, %struct.canvas** %cv, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.inc.90, %if.end
  %10 = load %struct.canvas*, %struct.canvas** %cv, align 8
  %tobool1 = icmp ne %struct.canvas* %10, null
  br i1 %tobool1, label %for.body, label %for.end.91

for.body:                                         ; preds = %for.cond
  %11 = load %struct.layer*, %struct.layer** %l.addr, align 8
  %l_pause2 = getelementptr inbounds %struct.layer, %struct.layer* %11, i32 0, i32 13
  %12 = bitcast %struct.anon.0* %l_pause2 to i8*
  %bf.load3 = load i8, i8* %12, align 8
  %bf.shl4 = shl i8 %bf.load3, 7
  %bf.ashr5 = ashr i8 %bf.shl4, 7
  %bf.cast6 = sext i8 %bf.ashr5 to i32
  %tobool7 = icmp ne i32 %bf.cast6, 0
  br i1 %tobool7, label %land.lhs.true, label %if.end.10

land.lhs.true:                                    ; preds = %for.body
  %13 = load %struct.canvas*, %struct.canvas** %cv, align 8
  %c_slorient = getelementptr inbounds %struct.canvas, %struct.canvas* %13, i32 0, i32 6
  %14 = load i32, i32* %c_slorient, align 4
  %tobool8 = icmp ne i32 %14, 0
  br i1 %tobool8, label %if.then.9, label %if.end.10

if.then.9:                                        ; preds = %land.lhs.true
  br label %for.inc.90

if.end.10:                                        ; preds = %land.lhs.true, %for.body
  %15 = load %struct.canvas*, %struct.canvas** %cv, align 8
  %c_vplist = getelementptr inbounds %struct.canvas, %struct.canvas* %15, i32 0, i32 8
  %16 = load %struct.viewport*, %struct.viewport** %c_vplist, align 8
  store %struct.viewport* %16, %struct.viewport** %vp, align 8
  br label %for.cond.11

for.cond.11:                                      ; preds = %for.inc, %if.end.10
  %17 = load %struct.viewport*, %struct.viewport** %vp, align 8
  %tobool12 = icmp ne %struct.viewport* %17, null
  br i1 %tobool12, label %for.body.13, label %for.end

for.body.13:                                      ; preds = %for.cond.11
  %18 = load i32, i32* %y.addr, align 4
  %19 = load %struct.viewport*, %struct.viewport** %vp, align 8
  %v_yoff = getelementptr inbounds %struct.viewport, %struct.viewport* %19, i32 0, i32 3
  %20 = load i32, i32* %v_yoff, align 4
  %add = add nsw i32 %18, %20
  store i32 %add, i32* %y2, align 4
  %21 = load i32, i32* %y2, align 4
  %22 = load %struct.viewport*, %struct.viewport** %vp, align 8
  %v_ys = getelementptr inbounds %struct.viewport, %struct.viewport* %22, i32 0, i32 6
  %23 = load i32, i32* %v_ys, align 4
  %cmp = icmp slt i32 %21, %23
  br i1 %cmp, label %if.then.15, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %for.body.13
  %24 = load i32, i32* %y2, align 4
  %25 = load %struct.viewport*, %struct.viewport** %vp, align 8
  %v_ye = getelementptr inbounds %struct.viewport, %struct.viewport* %25, i32 0, i32 7
  %26 = load i32, i32* %v_ye, align 4
  %cmp14 = icmp sgt i32 %24, %26
  br i1 %cmp14, label %if.then.15, label %if.end.16

if.then.15:                                       ; preds = %lor.lhs.false, %for.body.13
  br label %for.inc

if.end.16:                                        ; preds = %lor.lhs.false
  %27 = load i32, i32* %x.addr, align 4
  %28 = load %struct.viewport*, %struct.viewport** %vp, align 8
  %v_xoff = getelementptr inbounds %struct.viewport, %struct.viewport* %28, i32 0, i32 2
  %29 = load i32, i32* %v_xoff, align 4
  %add17 = add nsw i32 %27, %29
  store i32 %add17, i32* %xs2, align 4
  %30 = load %struct.layer*, %struct.layer** %l.addr, align 8
  %l_width18 = getelementptr inbounds %struct.layer, %struct.layer* %30, i32 0, i32 1
  %31 = load i32, i32* %l_width18, align 4
  %sub19 = sub nsw i32 %31, 1
  %32 = load %struct.viewport*, %struct.viewport** %vp, align 8
  %v_xoff20 = getelementptr inbounds %struct.viewport, %struct.viewport* %32, i32 0, i32 2
  %33 = load i32, i32* %v_xoff20, align 4
  %add21 = add nsw i32 %sub19, %33
  store i32 %add21, i32* %xe2, align 4
  %34 = load %struct.mchar*, %struct.mchar** %c.addr, align 8
  store %struct.mchar* %34, %struct.mchar** %c2, align 8
  store i32 0, i32* %f, align 4
  %35 = load i32, i32* %xs2, align 4
  %36 = load %struct.viewport*, %struct.viewport** %vp, align 8
  %v_xs = getelementptr inbounds %struct.viewport, %struct.viewport* %36, i32 0, i32 4
  %37 = load i32, i32* %v_xs, align 4
  %cmp22 = icmp slt i32 %35, %37
  br i1 %cmp22, label %if.then.23, label %if.end.50

if.then.23:                                       ; preds = %if.end.16
  %38 = load %struct.viewport*, %struct.viewport** %vp, align 8
  %v_xs24 = getelementptr inbounds %struct.viewport, %struct.viewport* %38, i32 0, i32 4
  %39 = load i32, i32* %v_xs24, align 4
  store i32 %39, i32* %xs2, align 4
  store %struct.mchar* @mchar_blank, %struct.mchar** %c2, align 8
  %40 = load %struct.mline*, %struct.mline** %ol.addr, align 8
  %tobool25 = icmp ne %struct.mline* %40, null
  br i1 %tobool25, label %if.then.26, label %if.else

if.then.26:                                       ; preds = %if.then.23
  %41 = load i32, i32* %xs2, align 4
  %42 = load %struct.viewport*, %struct.viewport** %vp, align 8
  %v_xoff27 = getelementptr inbounds %struct.viewport, %struct.viewport* %42, i32 0, i32 2
  %43 = load i32, i32* %v_xoff27, align 4
  %sub28 = sub nsw i32 %41, %43
  %sub29 = sub nsw i32 %sub28, 1
  store i32 %sub29, i32* %i, align 4
  %44 = load i32, i32* %i, align 4
  %cmp30 = icmp sge i32 %44, 0
  br i1 %cmp30, label %land.lhs.true.31, label %if.end.48

land.lhs.true.31:                                 ; preds = %if.then.26
  %45 = load i32, i32* %i, align 4
  %46 = load %struct.layer*, %struct.layer** %l.addr, align 8
  %l_width32 = getelementptr inbounds %struct.layer, %struct.layer* %46, i32 0, i32 1
  %47 = load i32, i32* %l_width32, align 4
  %cmp33 = icmp slt i32 %45, %47
  br i1 %cmp33, label %if.then.34, label %if.end.48

if.then.34:                                       ; preds = %land.lhs.true.31
  br label %do.body

do.body:                                          ; preds = %if.then.34
  %48 = load i32, i32* %i, align 4
  %idxprom = sext i32 %48 to i64
  %49 = load %struct.mline*, %struct.mline** %ol.addr, align 8
  %image = getelementptr inbounds %struct.mline, %struct.mline* %49, i32 0, i32 0
  %50 = load i8*, i8** %image, align 8
  %arrayidx = getelementptr inbounds i8, i8* %50, i64 %idxprom
  %51 = load i8, i8* %arrayidx, align 1
  %image35 = getelementptr inbounds %struct.mchar, %struct.mchar* %cc, i32 0, i32 0
  store i8 %51, i8* %image35, align 1
  %52 = load i32, i32* %i, align 4
  %idxprom36 = sext i32 %52 to i64
  %53 = load %struct.mline*, %struct.mline** %ol.addr, align 8
  %attr = getelementptr inbounds %struct.mline, %struct.mline* %53, i32 0, i32 1
  %54 = load i8*, i8** %attr, align 8
  %arrayidx37 = getelementptr inbounds i8, i8* %54, i64 %idxprom36
  %55 = load i8, i8* %arrayidx37, align 1
  %attr38 = getelementptr inbounds %struct.mchar, %struct.mchar* %cc, i32 0, i32 1
  store i8 %55, i8* %attr38, align 1
  %56 = load i32, i32* %i, align 4
  %idxprom39 = sext i32 %56 to i64
  %57 = load %struct.mline*, %struct.mline** %ol.addr, align 8
  %font = getelementptr inbounds %struct.mline, %struct.mline* %57, i32 0, i32 2
  %58 = load i8*, i8** %font, align 8
  %arrayidx40 = getelementptr inbounds i8, i8* %58, i64 %idxprom39
  %59 = load i8, i8* %arrayidx40, align 1
  %font41 = getelementptr inbounds %struct.mchar, %struct.mchar* %cc, i32 0, i32 2
  store i8 %59, i8* %font41, align 1
  %60 = load i32, i32* %i, align 4
  %idxprom42 = sext i32 %60 to i64
  %61 = load %struct.mline*, %struct.mline** %ol.addr, align 8
  %fontx = getelementptr inbounds %struct.mline, %struct.mline* %61, i32 0, i32 3
  %62 = load i8*, i8** %fontx, align 8
  %arrayidx43 = getelementptr inbounds i8, i8* %62, i64 %idxprom42
  %63 = load i8, i8* %arrayidx43, align 1
  %fontx44 = getelementptr inbounds %struct.mchar, %struct.mchar* %cc, i32 0, i32 3
  store i8 %63, i8* %fontx44, align 1
  %64 = load i32, i32* %i, align 4
  %idxprom45 = sext i32 %64 to i64
  %65 = load %struct.mline*, %struct.mline** %ol.addr, align 8
  %color = getelementptr inbounds %struct.mline, %struct.mline* %65, i32 0, i32 4
  %66 = load i8*, i8** %color, align 8
  %arrayidx46 = getelementptr inbounds i8, i8* %66, i64 %idxprom45
  %67 = load i8, i8* %arrayidx46, align 1
  %color47 = getelementptr inbounds %struct.mchar, %struct.mchar* %cc, i32 0, i32 4
  store i8 %67, i8* %color47, align 1
  %mbcs = getelementptr inbounds %struct.mchar, %struct.mchar* %cc, i32 0, i32 5
  store i8 0, i8* %mbcs, align 1
  br label %do.end

do.end:                                           ; preds = %do.body
  store %struct.mchar* %cc, %struct.mchar** %c2, align 8
  br label %if.end.48

if.end.48:                                        ; preds = %do.end, %land.lhs.true.31, %if.then.26
  br label %if.end.49

if.else:                                          ; preds = %if.then.23
  store i32 1, i32* %f, align 4
  br label %if.end.49

if.end.49:                                        ; preds = %if.else, %if.end.48
  br label %if.end.50

if.end.50:                                        ; preds = %if.end.49, %if.end.16
  %68 = load i32, i32* %xe2, align 4
  %69 = load %struct.viewport*, %struct.viewport** %vp, align 8
  %v_xe = getelementptr inbounds %struct.viewport, %struct.viewport* %69, i32 0, i32 5
  %70 = load i32, i32* %v_xe, align 4
  %cmp51 = icmp sgt i32 %68, %70
  br i1 %cmp51, label %if.then.52, label %if.end.54

if.then.52:                                       ; preds = %if.end.50
  %71 = load %struct.viewport*, %struct.viewport** %vp, align 8
  %v_xe53 = getelementptr inbounds %struct.viewport, %struct.viewport* %71, i32 0, i32 5
  %72 = load i32, i32* %v_xe53, align 4
  store i32 %72, i32* %xe2, align 4
  br label %if.end.54

if.end.54:                                        ; preds = %if.then.52, %if.end.50
  %73 = load i32, i32* %xs2, align 4
  %74 = load i32, i32* %xe2, align 4
  %cmp55 = icmp sgt i32 %73, %74
  br i1 %cmp55, label %if.then.56, label %if.end.57

if.then.56:                                       ; preds = %if.end.54
  br label %for.inc

if.end.57:                                        ; preds = %if.end.54
  %75 = load %struct.canvas*, %struct.canvas** %cv, align 8
  %c_display = getelementptr inbounds %struct.canvas, %struct.canvas* %75, i32 0, i32 1
  %76 = load %struct.display*, %struct.display** %c_display, align 8
  store %struct.display* %76, %struct.display** @display, align 8
  %77 = load %struct.display*, %struct.display** @display, align 8
  %d_blocked = getelementptr inbounds %struct.display, %struct.display* %77, i32 0, i32 102
  %78 = load i32, i32* %d_blocked, align 4
  %tobool58 = icmp ne i32 %78, 0
  br i1 %tobool58, label %if.then.59, label %if.end.60

if.then.59:                                       ; preds = %if.end.57
  br label %for.inc

if.end.60:                                        ; preds = %if.end.57
  %79 = load %struct.layer*, %struct.layer** %l.addr, align 8
  %l_encoding = getelementptr inbounds %struct.layer, %struct.layer* %79, i32 0, i32 5
  %80 = load i32, i32* %l_encoding, align 4
  %cmp61 = icmp eq i32 %80, 8
  %conv = zext i1 %cmp61 to i32
  %81 = load %struct.display*, %struct.display** @display, align 8
  %d_encoding = getelementptr inbounds %struct.display, %struct.display* %81, i32 0, i32 28
  %82 = load i32, i32* %d_encoding, align 4
  %cmp62 = icmp eq i32 %82, 8
  %conv63 = zext i1 %cmp62 to i32
  %cmp64 = icmp ne i32 %conv, %conv63
  br i1 %cmp64, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.end.60
  %83 = load %struct.mline*, %struct.mline** %ol.addr, align 8
  %84 = load %struct.layer*, %struct.layer** %l.addr, align 8
  %l_width66 = getelementptr inbounds %struct.layer, %struct.layer* %84, i32 0, i32 1
  %85 = load i32, i32* %l_width66, align 4
  %86 = load %struct.layer*, %struct.layer** %l.addr, align 8
  %l_encoding67 = getelementptr inbounds %struct.layer, %struct.layer* %86, i32 0, i32 5
  %87 = load i32, i32* %l_encoding67, align 4
  %88 = load %struct.display*, %struct.display** @display, align 8
  %d_encoding68 = getelementptr inbounds %struct.display, %struct.display* %88, i32 0, i32 28
  %89 = load i32, i32* %d_encoding68, align 4
  %call = call %struct.mline* @recode_mline(%struct.mline* %83, i32 %85, i32 %87, i32 %89)
  br label %cond.end

cond.false:                                       ; preds = %if.end.60
  %90 = load %struct.mline*, %struct.mline** %ol.addr, align 8
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi %struct.mline* [ %call, %cond.true ], [ %90, %cond.false ]
  store %struct.mline* %cond, %struct.mline** %rol, align 8
  %91 = load %struct.layer*, %struct.layer** %l.addr, align 8
  %l_encoding69 = getelementptr inbounds %struct.layer, %struct.layer* %91, i32 0, i32 5
  %92 = load i32, i32* %l_encoding69, align 4
  %cmp70 = icmp eq i32 %92, 8
  %conv71 = zext i1 %cmp70 to i32
  %93 = load %struct.display*, %struct.display** @display, align 8
  %d_encoding72 = getelementptr inbounds %struct.display, %struct.display* %93, i32 0, i32 28
  %94 = load i32, i32* %d_encoding72, align 4
  %cmp73 = icmp eq i32 %94, 8
  %conv74 = zext i1 %cmp73 to i32
  %cmp75 = icmp ne i32 %conv71, %conv74
  br i1 %cmp75, label %cond.true.77, label %cond.false.81

cond.true.77:                                     ; preds = %cond.end
  %95 = load %struct.mchar*, %struct.mchar** %c2, align 8
  %96 = load %struct.layer*, %struct.layer** %l.addr, align 8
  %l_encoding78 = getelementptr inbounds %struct.layer, %struct.layer* %96, i32 0, i32 5
  %97 = load i32, i32* %l_encoding78, align 4
  %98 = load %struct.display*, %struct.display** @display, align 8
  %d_encoding79 = getelementptr inbounds %struct.display, %struct.display* %98, i32 0, i32 28
  %99 = load i32, i32* %d_encoding79, align 4
  %call80 = call %struct.mchar* @recode_mchar(%struct.mchar* %95, i32 %97, i32 %99)
  br label %cond.end.82

cond.false.81:                                    ; preds = %cond.end
  %100 = load %struct.mchar*, %struct.mchar** %c2, align 8
  br label %cond.end.82

cond.end.82:                                      ; preds = %cond.false.81, %cond.true.77
  %cond83 = phi %struct.mchar* [ %call80, %cond.true.77 ], [ %100, %cond.false.81 ]
  %101 = load i32, i32* %xs2, align 4
  %102 = load i32, i32* %xe2, align 4
  %103 = load i32, i32* %y2, align 4
  %104 = load %struct.mline*, %struct.mline** %rol, align 8
  %105 = load %struct.viewport*, %struct.viewport** %vp, align 8
  %v_xoff84 = getelementptr inbounds %struct.viewport, %struct.viewport* %105, i32 0, i32 2
  %106 = load i32, i32* %v_xoff84, align 4
  %sub85 = sub nsw i32 0, %106
  %call86 = call %struct.mline* @mloff(%struct.mline* %104, i32 %sub85)
  call void @InsChar(%struct.mchar* %cond83, i32 %101, i32 %102, i32 %103, %struct.mline* %call86)
  %107 = load i32, i32* %f, align 4
  %tobool87 = icmp ne i32 %107, 0
  br i1 %tobool87, label %if.then.88, label %if.end.89

if.then.88:                                       ; preds = %cond.end.82
  %108 = load i32, i32* %xs2, align 4
  %109 = load i32, i32* %y2, align 4
  %110 = load i32, i32* %xs2, align 4
  %111 = load i32, i32* %y2, align 4
  call void @RefreshArea(i32 %108, i32 %109, i32 %110, i32 %111, i32 1)
  br label %if.end.89

if.end.89:                                        ; preds = %if.then.88, %cond.end.82
  br label %for.inc

for.inc:                                          ; preds = %if.end.89, %if.then.59, %if.then.56, %if.then.15
  %112 = load %struct.viewport*, %struct.viewport** %vp, align 8
  %v_next = getelementptr inbounds %struct.viewport, %struct.viewport* %112, i32 0, i32 0
  %113 = load %struct.viewport*, %struct.viewport** %v_next, align 8
  store %struct.viewport* %113, %struct.viewport** %vp, align 8
  br label %for.cond.11

for.end:                                          ; preds = %for.cond.11
  br label %for.inc.90

for.inc.90:                                       ; preds = %for.end, %if.then.9
  %114 = load %struct.canvas*, %struct.canvas** %cv, align 8
  %c_lnext = getelementptr inbounds %struct.canvas, %struct.canvas* %114, i32 0, i32 10
  %115 = load %struct.canvas*, %struct.canvas** %c_lnext, align 8
  store %struct.canvas* %115, %struct.canvas** %cv, align 8
  br label %for.cond

for.end.91:                                       ; preds = %for.cond
  ret void
}

declare %struct.mline* @recode_mline(%struct.mline*, i32, i32, i32) #1

declare void @InsChar(%struct.mchar*, i32, i32, i32, %struct.mline*) #1

declare %struct.mchar* @recode_mchar(%struct.mchar*, i32, i32) #1

; Function Attrs: nounwind uwtable
define void @LPutChar(%struct.layer* %l, %struct.mchar* %c, i32 %x, i32 %y) #0 {
entry:
  %l.addr = alloca %struct.layer*, align 8
  %c.addr = alloca %struct.mchar*, align 8
  %x.addr = alloca i32, align 4
  %y.addr = alloca i32, align 4
  %cv = alloca %struct.canvas*, align 8
  %vp = alloca %struct.viewport*, align 8
  %x2 = alloca i32, align 4
  %y2 = alloca i32, align 4
  store %struct.layer* %l, %struct.layer** %l.addr, align 8
  store %struct.mchar* %c, %struct.mchar** %c.addr, align 8
  store i32 %x, i32* %x.addr, align 4
  store i32 %y, i32* %y.addr, align 4
  %0 = load %struct.layer*, %struct.layer** %l.addr, align 8
  %l_pause = getelementptr inbounds %struct.layer, %struct.layer* %0, i32 0, i32 13
  %1 = bitcast %struct.anon.0* %l_pause to i8*
  %bf.load = load i8, i8* %1, align 8
  %bf.shl = shl i8 %bf.load, 7
  %bf.ashr = ashr i8 %bf.shl, 7
  %bf.cast = sext i8 %bf.ashr to i32
  %tobool = icmp ne i32 %bf.cast, 0
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %2 = load %struct.layer*, %struct.layer** %l.addr, align 8
  %3 = load i32, i32* %x.addr, align 4
  %4 = load i32, i32* %x.addr, align 4
  %5 = load %struct.mchar*, %struct.mchar** %c.addr, align 8
  %mbcs = getelementptr inbounds %struct.mchar, %struct.mchar* %5, i32 0, i32 5
  %6 = load i8, i8* %mbcs, align 1
  %conv = zext i8 %6 to i32
  %tobool1 = icmp ne i32 %conv, 0
  %cond = select i1 %tobool1, i32 1, i32 0
  %add = add nsw i32 %4, %cond
  %7 = load i32, i32* %y.addr, align 4
  %8 = load i32, i32* %y.addr, align 4
  call void @LayPauseUpdateRegion(%struct.layer* %2, i32 %3, i32 %add, i32 %7, i32 %8)
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %9 = load %struct.layer*, %struct.layer** %l.addr, align 8
  %l_cvlist = getelementptr inbounds %struct.layer, %struct.layer* %9, i32 0, i32 0
  %10 = load %struct.canvas*, %struct.canvas** %l_cvlist, align 8
  store %struct.canvas* %10, %struct.canvas** %cv, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.inc.41, %if.end
  %11 = load %struct.canvas*, %struct.canvas** %cv, align 8
  %tobool2 = icmp ne %struct.canvas* %11, null
  br i1 %tobool2, label %for.body, label %for.end.42

for.body:                                         ; preds = %for.cond
  %12 = load %struct.layer*, %struct.layer** %l.addr, align 8
  %l_pause3 = getelementptr inbounds %struct.layer, %struct.layer* %12, i32 0, i32 13
  %13 = bitcast %struct.anon.0* %l_pause3 to i8*
  %bf.load4 = load i8, i8* %13, align 8
  %bf.shl5 = shl i8 %bf.load4, 7
  %bf.ashr6 = ashr i8 %bf.shl5, 7
  %bf.cast7 = sext i8 %bf.ashr6 to i32
  %tobool8 = icmp ne i32 %bf.cast7, 0
  br i1 %tobool8, label %land.lhs.true, label %if.end.11

land.lhs.true:                                    ; preds = %for.body
  %14 = load %struct.canvas*, %struct.canvas** %cv, align 8
  %c_slorient = getelementptr inbounds %struct.canvas, %struct.canvas* %14, i32 0, i32 6
  %15 = load i32, i32* %c_slorient, align 4
  %tobool9 = icmp ne i32 %15, 0
  br i1 %tobool9, label %if.then.10, label %if.end.11

if.then.10:                                       ; preds = %land.lhs.true
  br label %for.inc.41

if.end.11:                                        ; preds = %land.lhs.true, %for.body
  %16 = load %struct.canvas*, %struct.canvas** %cv, align 8
  %c_display = getelementptr inbounds %struct.canvas, %struct.canvas* %16, i32 0, i32 1
  %17 = load %struct.display*, %struct.display** %c_display, align 8
  store %struct.display* %17, %struct.display** @display, align 8
  %18 = load %struct.display*, %struct.display** @display, align 8
  %d_blocked = getelementptr inbounds %struct.display, %struct.display* %18, i32 0, i32 102
  %19 = load i32, i32* %d_blocked, align 4
  %tobool12 = icmp ne i32 %19, 0
  br i1 %tobool12, label %if.then.13, label %if.end.14

if.then.13:                                       ; preds = %if.end.11
  br label %for.inc.41

if.end.14:                                        ; preds = %if.end.11
  %20 = load %struct.canvas*, %struct.canvas** %cv, align 8
  %c_vplist = getelementptr inbounds %struct.canvas, %struct.canvas* %20, i32 0, i32 8
  %21 = load %struct.viewport*, %struct.viewport** %c_vplist, align 8
  store %struct.viewport* %21, %struct.viewport** %vp, align 8
  br label %for.cond.15

for.cond.15:                                      ; preds = %for.inc, %if.end.14
  %22 = load %struct.viewport*, %struct.viewport** %vp, align 8
  %tobool16 = icmp ne %struct.viewport* %22, null
  br i1 %tobool16, label %for.body.17, label %for.end

for.body.17:                                      ; preds = %for.cond.15
  %23 = load i32, i32* %y.addr, align 4
  %24 = load %struct.viewport*, %struct.viewport** %vp, align 8
  %v_yoff = getelementptr inbounds %struct.viewport, %struct.viewport* %24, i32 0, i32 3
  %25 = load i32, i32* %v_yoff, align 4
  %add18 = add nsw i32 %23, %25
  store i32 %add18, i32* %y2, align 4
  %26 = load i32, i32* %y2, align 4
  %27 = load %struct.viewport*, %struct.viewport** %vp, align 8
  %v_ys = getelementptr inbounds %struct.viewport, %struct.viewport* %27, i32 0, i32 6
  %28 = load i32, i32* %v_ys, align 4
  %cmp = icmp slt i32 %26, %28
  br i1 %cmp, label %if.then.22, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %for.body.17
  %29 = load i32, i32* %y2, align 4
  %30 = load %struct.viewport*, %struct.viewport** %vp, align 8
  %v_ye = getelementptr inbounds %struct.viewport, %struct.viewport* %30, i32 0, i32 7
  %31 = load i32, i32* %v_ye, align 4
  %cmp20 = icmp sgt i32 %29, %31
  br i1 %cmp20, label %if.then.22, label %if.end.23

if.then.22:                                       ; preds = %lor.lhs.false, %for.body.17
  br label %for.inc

if.end.23:                                        ; preds = %lor.lhs.false
  %32 = load i32, i32* %x.addr, align 4
  %33 = load %struct.viewport*, %struct.viewport** %vp, align 8
  %v_xoff = getelementptr inbounds %struct.viewport, %struct.viewport* %33, i32 0, i32 2
  %34 = load i32, i32* %v_xoff, align 4
  %add24 = add nsw i32 %32, %34
  store i32 %add24, i32* %x2, align 4
  %35 = load i32, i32* %x2, align 4
  %36 = load %struct.viewport*, %struct.viewport** %vp, align 8
  %v_xs = getelementptr inbounds %struct.viewport, %struct.viewport* %36, i32 0, i32 4
  %37 = load i32, i32* %v_xs, align 4
  %cmp25 = icmp slt i32 %35, %37
  br i1 %cmp25, label %if.then.30, label %lor.lhs.false.27

lor.lhs.false.27:                                 ; preds = %if.end.23
  %38 = load i32, i32* %x2, align 4
  %39 = load %struct.viewport*, %struct.viewport** %vp, align 8
  %v_xe = getelementptr inbounds %struct.viewport, %struct.viewport* %39, i32 0, i32 5
  %40 = load i32, i32* %v_xe, align 4
  %cmp28 = icmp sgt i32 %38, %40
  br i1 %cmp28, label %if.then.30, label %if.end.31

if.then.30:                                       ; preds = %lor.lhs.false.27, %if.end.23
  br label %for.inc

if.end.31:                                        ; preds = %lor.lhs.false.27
  %41 = load %struct.layer*, %struct.layer** %l.addr, align 8
  %l_encoding = getelementptr inbounds %struct.layer, %struct.layer* %41, i32 0, i32 5
  %42 = load i32, i32* %l_encoding, align 4
  %cmp32 = icmp eq i32 %42, 8
  %conv33 = zext i1 %cmp32 to i32
  %43 = load %struct.display*, %struct.display** @display, align 8
  %d_encoding = getelementptr inbounds %struct.display, %struct.display* %43, i32 0, i32 28
  %44 = load i32, i32* %d_encoding, align 4
  %cmp34 = icmp eq i32 %44, 8
  %conv35 = zext i1 %cmp34 to i32
  %cmp36 = icmp ne i32 %conv33, %conv35
  br i1 %cmp36, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.end.31
  %45 = load %struct.mchar*, %struct.mchar** %c.addr, align 8
  %46 = load %struct.layer*, %struct.layer** %l.addr, align 8
  %l_encoding38 = getelementptr inbounds %struct.layer, %struct.layer* %46, i32 0, i32 5
  %47 = load i32, i32* %l_encoding38, align 4
  %48 = load %struct.display*, %struct.display** @display, align 8
  %d_encoding39 = getelementptr inbounds %struct.display, %struct.display* %48, i32 0, i32 28
  %49 = load i32, i32* %d_encoding39, align 4
  %call = call %struct.mchar* @recode_mchar(%struct.mchar* %45, i32 %47, i32 %49)
  br label %cond.end

cond.false:                                       ; preds = %if.end.31
  %50 = load %struct.mchar*, %struct.mchar** %c.addr, align 8
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond40 = phi %struct.mchar* [ %call, %cond.true ], [ %50, %cond.false ]
  %51 = load i32, i32* %x2, align 4
  %52 = load i32, i32* %y2, align 4
  call void @PutChar(%struct.mchar* %cond40, i32 %51, i32 %52)
  br label %for.end

for.inc:                                          ; preds = %if.then.30, %if.then.22
  %53 = load %struct.viewport*, %struct.viewport** %vp, align 8
  %v_next = getelementptr inbounds %struct.viewport, %struct.viewport* %53, i32 0, i32 0
  %54 = load %struct.viewport*, %struct.viewport** %v_next, align 8
  store %struct.viewport* %54, %struct.viewport** %vp, align 8
  br label %for.cond.15

for.end:                                          ; preds = %cond.end, %for.cond.15
  br label %for.inc.41

for.inc.41:                                       ; preds = %for.end, %if.then.13, %if.then.10
  %55 = load %struct.canvas*, %struct.canvas** %cv, align 8
  %c_lnext = getelementptr inbounds %struct.canvas, %struct.canvas* %55, i32 0, i32 10
  %56 = load %struct.canvas*, %struct.canvas** %c_lnext, align 8
  store %struct.canvas* %56, %struct.canvas** %cv, align 8
  br label %for.cond

for.end.42:                                       ; preds = %for.cond
  ret void
}

declare void @PutChar(%struct.mchar*, i32, i32) #1

; Function Attrs: nounwind uwtable
define void @LPutStr(%struct.layer* %l, i8* %s, i32 %n, %struct.mchar* %r, i32 %x, i32 %y) #0 {
entry:
  %l.addr = alloca %struct.layer*, align 8
  %s.addr = alloca i8*, align 8
  %n.addr = alloca i32, align 4
  %r.addr = alloca %struct.mchar*, align 8
  %x.addr = alloca i32, align 4
  %y.addr = alloca i32, align 4
  %cv = alloca %struct.canvas*, align 8
  %vp = alloca %struct.viewport*, align 8
  %s2 = alloca i8*, align 8
  %xs2 = alloca i32, align 4
  %xe2 = alloca i32, align 4
  %y2 = alloca i32, align 4
  %mc = alloca %struct.mchar, align 1
  store %struct.layer* %l, %struct.layer** %l.addr, align 8
  store i8* %s, i8** %s.addr, align 8
  store i32 %n, i32* %n.addr, align 4
  store %struct.mchar* %r, %struct.mchar** %r.addr, align 8
  store i32 %x, i32* %x.addr, align 4
  store i32 %y, i32* %y.addr, align 4
  %0 = load i32, i32* %x.addr, align 4
  %1 = load i32, i32* %n.addr, align 4
  %add = add nsw i32 %0, %1
  %2 = load %struct.layer*, %struct.layer** %l.addr, align 8
  %l_width = getelementptr inbounds %struct.layer, %struct.layer* %2, i32 0, i32 1
  %3 = load i32, i32* %l_width, align 4
  %cmp = icmp sgt i32 %add, %3
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %4 = load %struct.layer*, %struct.layer** %l.addr, align 8
  %l_width1 = getelementptr inbounds %struct.layer, %struct.layer* %4, i32 0, i32 1
  %5 = load i32, i32* %l_width1, align 4
  %6 = load i32, i32* %x.addr, align 4
  %sub = sub nsw i32 %5, %6
  store i32 %sub, i32* %n.addr, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %7 = load %struct.layer*, %struct.layer** %l.addr, align 8
  %l_pause = getelementptr inbounds %struct.layer, %struct.layer* %7, i32 0, i32 13
  %8 = bitcast %struct.anon.0* %l_pause to i8*
  %bf.load = load i8, i8* %8, align 8
  %bf.shl = shl i8 %bf.load, 7
  %bf.ashr = ashr i8 %bf.shl, 7
  %bf.cast = sext i8 %bf.ashr to i32
  %tobool = icmp ne i32 %bf.cast, 0
  br i1 %tobool, label %if.then.2, label %if.end.5

if.then.2:                                        ; preds = %if.end
  %9 = load %struct.layer*, %struct.layer** %l.addr, align 8
  %10 = load i32, i32* %x.addr, align 4
  %11 = load i32, i32* %x.addr, align 4
  %12 = load i32, i32* %n.addr, align 4
  %add3 = add nsw i32 %11, %12
  %sub4 = sub nsw i32 %add3, 1
  %13 = load i32, i32* %y.addr, align 4
  %14 = load i32, i32* %y.addr, align 4
  call void @LayPauseUpdateRegion(%struct.layer* %9, i32 %10, i32 %sub4, i32 %13, i32 %14)
  br label %if.end.5

if.end.5:                                         ; preds = %if.then.2, %if.end
  %15 = load %struct.layer*, %struct.layer** %l.addr, align 8
  %l_cvlist = getelementptr inbounds %struct.layer, %struct.layer* %15, i32 0, i32 0
  %16 = load %struct.canvas*, %struct.canvas** %l_cvlist, align 8
  store %struct.canvas* %16, %struct.canvas** %cv, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.inc.80, %if.end.5
  %17 = load %struct.canvas*, %struct.canvas** %cv, align 8
  %tobool6 = icmp ne %struct.canvas* %17, null
  br i1 %tobool6, label %for.body, label %for.end.81

for.body:                                         ; preds = %for.cond
  %18 = load %struct.layer*, %struct.layer** %l.addr, align 8
  %l_pause7 = getelementptr inbounds %struct.layer, %struct.layer* %18, i32 0, i32 13
  %19 = bitcast %struct.anon.0* %l_pause7 to i8*
  %bf.load8 = load i8, i8* %19, align 8
  %bf.shl9 = shl i8 %bf.load8, 7
  %bf.ashr10 = ashr i8 %bf.shl9, 7
  %bf.cast11 = sext i8 %bf.ashr10 to i32
  %tobool12 = icmp ne i32 %bf.cast11, 0
  br i1 %tobool12, label %land.lhs.true, label %if.end.15

land.lhs.true:                                    ; preds = %for.body
  %20 = load %struct.canvas*, %struct.canvas** %cv, align 8
  %c_slorient = getelementptr inbounds %struct.canvas, %struct.canvas* %20, i32 0, i32 6
  %21 = load i32, i32* %c_slorient, align 4
  %tobool13 = icmp ne i32 %21, 0
  br i1 %tobool13, label %if.then.14, label %if.end.15

if.then.14:                                       ; preds = %land.lhs.true
  br label %for.inc.80

if.end.15:                                        ; preds = %land.lhs.true, %for.body
  %22 = load %struct.canvas*, %struct.canvas** %cv, align 8
  %c_vplist = getelementptr inbounds %struct.canvas, %struct.canvas* %22, i32 0, i32 8
  %23 = load %struct.viewport*, %struct.viewport** %c_vplist, align 8
  store %struct.viewport* %23, %struct.viewport** %vp, align 8
  br label %for.cond.16

for.cond.16:                                      ; preds = %for.inc, %if.end.15
  %24 = load %struct.viewport*, %struct.viewport** %vp, align 8
  %tobool17 = icmp ne %struct.viewport* %24, null
  br i1 %tobool17, label %for.body.18, label %for.end

for.body.18:                                      ; preds = %for.cond.16
  %25 = load i32, i32* %y.addr, align 4
  %26 = load %struct.viewport*, %struct.viewport** %vp, align 8
  %v_yoff = getelementptr inbounds %struct.viewport, %struct.viewport* %26, i32 0, i32 3
  %27 = load i32, i32* %v_yoff, align 4
  %add19 = add nsw i32 %25, %27
  store i32 %add19, i32* %y2, align 4
  %28 = load i32, i32* %y2, align 4
  %29 = load %struct.viewport*, %struct.viewport** %vp, align 8
  %v_ys = getelementptr inbounds %struct.viewport, %struct.viewport* %29, i32 0, i32 6
  %30 = load i32, i32* %v_ys, align 4
  %cmp20 = icmp slt i32 %28, %30
  br i1 %cmp20, label %if.then.22, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %for.body.18
  %31 = load i32, i32* %y2, align 4
  %32 = load %struct.viewport*, %struct.viewport** %vp, align 8
  %v_ye = getelementptr inbounds %struct.viewport, %struct.viewport* %32, i32 0, i32 7
  %33 = load i32, i32* %v_ye, align 4
  %cmp21 = icmp sgt i32 %31, %33
  br i1 %cmp21, label %if.then.22, label %if.end.23

if.then.22:                                       ; preds = %lor.lhs.false, %for.body.18
  br label %for.inc

if.end.23:                                        ; preds = %lor.lhs.false
  %34 = load i32, i32* %x.addr, align 4
  %35 = load %struct.viewport*, %struct.viewport** %vp, align 8
  %v_xoff = getelementptr inbounds %struct.viewport, %struct.viewport* %35, i32 0, i32 2
  %36 = load i32, i32* %v_xoff, align 4
  %add24 = add nsw i32 %34, %36
  store i32 %add24, i32* %xs2, align 4
  %37 = load i32, i32* %xs2, align 4
  %38 = load i32, i32* %n.addr, align 4
  %add25 = add nsw i32 %37, %38
  %sub26 = sub nsw i32 %add25, 1
  store i32 %sub26, i32* %xe2, align 4
  %39 = load i32, i32* %xs2, align 4
  %40 = load %struct.viewport*, %struct.viewport** %vp, align 8
  %v_xs = getelementptr inbounds %struct.viewport, %struct.viewport* %40, i32 0, i32 4
  %41 = load i32, i32* %v_xs, align 4
  %cmp27 = icmp slt i32 %39, %41
  br i1 %cmp27, label %if.then.28, label %if.end.30

if.then.28:                                       ; preds = %if.end.23
  %42 = load %struct.viewport*, %struct.viewport** %vp, align 8
  %v_xs29 = getelementptr inbounds %struct.viewport, %struct.viewport* %42, i32 0, i32 4
  %43 = load i32, i32* %v_xs29, align 4
  store i32 %43, i32* %xs2, align 4
  br label %if.end.30

if.end.30:                                        ; preds = %if.then.28, %if.end.23
  %44 = load i32, i32* %xe2, align 4
  %45 = load %struct.viewport*, %struct.viewport** %vp, align 8
  %v_xe = getelementptr inbounds %struct.viewport, %struct.viewport* %45, i32 0, i32 5
  %46 = load i32, i32* %v_xe, align 4
  %cmp31 = icmp sgt i32 %44, %46
  br i1 %cmp31, label %if.then.32, label %if.end.34

if.then.32:                                       ; preds = %if.end.30
  %47 = load %struct.viewport*, %struct.viewport** %vp, align 8
  %v_xe33 = getelementptr inbounds %struct.viewport, %struct.viewport* %47, i32 0, i32 5
  %48 = load i32, i32* %v_xe33, align 4
  store i32 %48, i32* %xe2, align 4
  br label %if.end.34

if.end.34:                                        ; preds = %if.then.32, %if.end.30
  %49 = load i32, i32* %xs2, align 4
  %50 = load i32, i32* %xe2, align 4
  %cmp35 = icmp sgt i32 %49, %50
  br i1 %cmp35, label %if.then.36, label %if.end.37

if.then.36:                                       ; preds = %if.end.34
  br label %for.inc

if.end.37:                                        ; preds = %if.end.34
  %51 = load %struct.canvas*, %struct.canvas** %cv, align 8
  %c_display = getelementptr inbounds %struct.canvas, %struct.canvas* %51, i32 0, i32 1
  %52 = load %struct.display*, %struct.display** %c_display, align 8
  store %struct.display* %52, %struct.display** @display, align 8
  %53 = load %struct.display*, %struct.display** @display, align 8
  %d_blocked = getelementptr inbounds %struct.display, %struct.display* %53, i32 0, i32 102
  %54 = load i32, i32* %d_blocked, align 4
  %tobool38 = icmp ne i32 %54, 0
  br i1 %tobool38, label %if.then.39, label %if.end.40

if.then.39:                                       ; preds = %if.end.37
  br label %for.inc

if.end.40:                                        ; preds = %if.end.37
  %55 = load i32, i32* %xs2, align 4
  %56 = load i32, i32* %y2, align 4
  call void @GotoPos(i32 %55, i32 %56)
  %57 = load %struct.mchar*, %struct.mchar** %r.addr, align 8
  call void @SetRendition(%struct.mchar* %57)
  %58 = load i8*, i8** %s.addr, align 8
  %59 = load i32, i32* %xs2, align 4
  %idx.ext = sext i32 %59 to i64
  %add.ptr = getelementptr inbounds i8, i8* %58, i64 %idx.ext
  %60 = load i32, i32* %x.addr, align 4
  %idx.ext41 = sext i32 %60 to i64
  %idx.neg = sub i64 0, %idx.ext41
  %add.ptr42 = getelementptr inbounds i8, i8* %add.ptr, i64 %idx.neg
  %61 = load %struct.viewport*, %struct.viewport** %vp, align 8
  %v_xoff43 = getelementptr inbounds %struct.viewport, %struct.viewport* %61, i32 0, i32 2
  %62 = load i32, i32* %v_xoff43, align 4
  %idx.ext44 = sext i32 %62 to i64
  %idx.neg45 = sub i64 0, %idx.ext44
  %add.ptr46 = getelementptr inbounds i8, i8* %add.ptr42, i64 %idx.neg45
  store i8* %add.ptr46, i8** %s2, align 8
  %63 = load %struct.display*, %struct.display** @display, align 8
  %d_encoding = getelementptr inbounds %struct.display, %struct.display* %63, i32 0, i32 28
  %64 = load i32, i32* %d_encoding, align 4
  %cmp47 = icmp eq i32 %64, 8
  br i1 %cmp47, label %land.lhs.true.48, label %if.end.71

land.lhs.true.48:                                 ; preds = %if.end.40
  %65 = load %struct.layer*, %struct.layer** %l.addr, align 8
  %l_encoding = getelementptr inbounds %struct.layer, %struct.layer* %65, i32 0, i32 5
  %66 = load i32, i32* %l_encoding, align 4
  %cmp49 = icmp ne i32 %66, 8
  br i1 %cmp49, label %land.lhs.true.50, label %if.end.71

land.lhs.true.50:                                 ; preds = %land.lhs.true.48
  %67 = load %struct.mchar*, %struct.mchar** %r.addr, align 8
  %font = getelementptr inbounds %struct.mchar, %struct.mchar* %67, i32 0, i32 2
  %68 = load i8, i8* %font, align 1
  %conv = zext i8 %68 to i32
  %tobool51 = icmp ne i32 %conv, 0
  br i1 %tobool51, label %if.then.58, label %lor.lhs.false.52

lor.lhs.false.52:                                 ; preds = %land.lhs.true.50
  %69 = load %struct.mchar*, %struct.mchar** %r.addr, align 8
  %fontx = getelementptr inbounds %struct.mchar, %struct.mchar* %69, i32 0, i32 3
  %70 = load i8, i8* %fontx, align 1
  %conv53 = zext i8 %70 to i32
  %tobool54 = icmp ne i32 %conv53, 0
  br i1 %tobool54, label %if.then.58, label %lor.lhs.false.55

lor.lhs.false.55:                                 ; preds = %lor.lhs.false.52
  %71 = load %struct.layer*, %struct.layer** %l.addr, align 8
  %l_encoding56 = getelementptr inbounds %struct.layer, %struct.layer* %71, i32 0, i32 5
  %72 = load i32, i32* %l_encoding56, align 4
  %tobool57 = icmp ne i32 %72, 0
  br i1 %tobool57, label %if.then.58, label %if.end.71

if.then.58:                                       ; preds = %lor.lhs.false.55, %lor.lhs.false.52, %land.lhs.true.50
  %73 = load %struct.mchar*, %struct.mchar** %r.addr, align 8
  %74 = bitcast %struct.mchar* %mc to i8*
  %75 = bitcast %struct.mchar* %73 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %74, i8* %75, i64 6, i32 1, i1 false)
  br label %while.cond

while.cond:                                       ; preds = %cond.end, %if.then.58
  %76 = load i32, i32* %xs2, align 4
  %77 = load i32, i32* %xe2, align 4
  %cmp59 = icmp sle i32 %76, %77
  br i1 %cmp59, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %78 = load i8*, i8** %s2, align 8
  %incdec.ptr = getelementptr inbounds i8, i8* %78, i32 1
  store i8* %incdec.ptr, i8** %s2, align 8
  %79 = load i8, i8* %78, align 1
  %image = getelementptr inbounds %struct.mchar, %struct.mchar* %mc, i32 0, i32 0
  store i8 %79, i8* %image, align 1
  %80 = load %struct.layer*, %struct.layer** %l.addr, align 8
  %l_encoding61 = getelementptr inbounds %struct.layer, %struct.layer* %80, i32 0, i32 5
  %81 = load i32, i32* %l_encoding61, align 4
  %cmp62 = icmp eq i32 %81, 8
  %conv63 = zext i1 %cmp62 to i32
  %82 = load %struct.display*, %struct.display** @display, align 8
  %d_encoding64 = getelementptr inbounds %struct.display, %struct.display* %82, i32 0, i32 28
  %83 = load i32, i32* %d_encoding64, align 4
  %cmp65 = icmp eq i32 %83, 8
  %conv66 = zext i1 %cmp65 to i32
  %cmp67 = icmp ne i32 %conv63, %conv66
  br i1 %cmp67, label %cond.true, label %cond.false

cond.true:                                        ; preds = %while.body
  %84 = load %struct.layer*, %struct.layer** %l.addr, align 8
  %l_encoding69 = getelementptr inbounds %struct.layer, %struct.layer* %84, i32 0, i32 5
  %85 = load i32, i32* %l_encoding69, align 4
  %86 = load %struct.display*, %struct.display** @display, align 8
  %d_encoding70 = getelementptr inbounds %struct.display, %struct.display* %86, i32 0, i32 28
  %87 = load i32, i32* %d_encoding70, align 4
  %call = call %struct.mchar* @recode_mchar(%struct.mchar* %mc, i32 %85, i32 %87)
  br label %cond.end

cond.false:                                       ; preds = %while.body
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi %struct.mchar* [ %call, %cond.true ], [ %mc, %cond.false ]
  %88 = load i32, i32* %xs2, align 4
  %inc = add nsw i32 %88, 1
  store i32 %inc, i32* %xs2, align 4
  %89 = load i32, i32* %y2, align 4
  call void @PutChar(%struct.mchar* %cond, i32 %88, i32 %89)
  br label %while.cond

while.end:                                        ; preds = %while.cond
  br label %for.inc

if.end.71:                                        ; preds = %lor.lhs.false.55, %land.lhs.true.48, %if.end.40
  br label %while.cond.72

while.cond.72:                                    ; preds = %while.body.76, %if.end.71
  %90 = load i32, i32* %xs2, align 4
  %inc73 = add nsw i32 %90, 1
  store i32 %inc73, i32* %xs2, align 4
  %91 = load i32, i32* %xe2, align 4
  %cmp74 = icmp sle i32 %90, %91
  br i1 %cmp74, label %while.body.76, label %while.end.79

while.body.76:                                    ; preds = %while.cond.72
  %92 = load i8*, i8** %s2, align 8
  %incdec.ptr77 = getelementptr inbounds i8, i8* %92, i32 1
  store i8* %incdec.ptr77, i8** %s2, align 8
  %93 = load i8, i8* %92, align 1
  %conv78 = sext i8 %93 to i32
  call void @PUTCHARLP(i32 %conv78)
  br label %while.cond.72

while.end.79:                                     ; preds = %while.cond.72
  br label %for.inc

for.inc:                                          ; preds = %while.end.79, %while.end, %if.then.39, %if.then.36, %if.then.22
  %94 = load %struct.viewport*, %struct.viewport** %vp, align 8
  %v_next = getelementptr inbounds %struct.viewport, %struct.viewport* %94, i32 0, i32 0
  %95 = load %struct.viewport*, %struct.viewport** %v_next, align 8
  store %struct.viewport* %95, %struct.viewport** %vp, align 8
  br label %for.cond.16

for.end:                                          ; preds = %for.cond.16
  br label %for.inc.80

for.inc.80:                                       ; preds = %for.end, %if.then.14
  %96 = load %struct.canvas*, %struct.canvas** %cv, align 8
  %c_lnext = getelementptr inbounds %struct.canvas, %struct.canvas* %96, i32 0, i32 10
  %97 = load %struct.canvas*, %struct.canvas** %c_lnext, align 8
  store %struct.canvas* %97, %struct.canvas** %cv, align 8
  br label %for.cond

for.end.81:                                       ; preds = %for.cond
  ret void
}

declare void @SetRendition(%struct.mchar*) #1

; Function Attrs: nounwind
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* nocapture, i8* nocapture readonly, i64, i32, i1) #2

declare void @PUTCHARLP(i32) #1

; Function Attrs: nounwind uwtable
define void @LPutWinMsg(%struct.layer* %l, i8* %s, i32 %n, %struct.mchar* %r, i32 %x, i32 %y) #0 {
entry:
  %l.addr = alloca %struct.layer*, align 8
  %s.addr = alloca i8*, align 8
  %n.addr = alloca i32, align 4
  %r.addr = alloca %struct.mchar*, align 8
  %x.addr = alloca i32, align 4
  %y.addr = alloca i32, align 4
  %cv = alloca %struct.canvas*, align 8
  %vp = alloca %struct.viewport*, align 8
  %xs2 = alloca i32, align 4
  %xe2 = alloca i32, align 4
  %y2 = alloca i32, align 4
  %len = alloca i32, align 4
  %len2 = alloca i32, align 4
  %or = alloca %struct.mchar, align 1
  store %struct.layer* %l, %struct.layer** %l.addr, align 8
  store i8* %s, i8** %s.addr, align 8
  store i32 %n, i32* %n.addr, align 4
  store %struct.mchar* %r, %struct.mchar** %r.addr, align 8
  store i32 %x, i32* %x.addr, align 4
  store i32 %y, i32* %y.addr, align 4
  %0 = load i32, i32* %x.addr, align 4
  %1 = load i32, i32* %n.addr, align 4
  %add = add nsw i32 %0, %1
  %2 = load %struct.layer*, %struct.layer** %l.addr, align 8
  %l_width = getelementptr inbounds %struct.layer, %struct.layer* %2, i32 0, i32 1
  %3 = load i32, i32* %l_width, align 4
  %cmp = icmp sgt i32 %add, %3
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %4 = load %struct.layer*, %struct.layer** %l.addr, align 8
  %l_width1 = getelementptr inbounds %struct.layer, %struct.layer* %4, i32 0, i32 1
  %5 = load i32, i32* %l_width1, align 4
  %6 = load i32, i32* %x.addr, align 4
  %sub = sub nsw i32 %5, %6
  store i32 %sub, i32* %n.addr, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %7 = load %struct.layer*, %struct.layer** %l.addr, align 8
  %l_pause = getelementptr inbounds %struct.layer, %struct.layer* %7, i32 0, i32 13
  %8 = bitcast %struct.anon.0* %l_pause to i8*
  %bf.load = load i8, i8* %8, align 8
  %bf.shl = shl i8 %bf.load, 7
  %bf.ashr = ashr i8 %bf.shl, 7
  %bf.cast = sext i8 %bf.ashr to i32
  %tobool = icmp ne i32 %bf.cast, 0
  br i1 %tobool, label %if.then.2, label %if.end.5

if.then.2:                                        ; preds = %if.end
  %9 = load %struct.layer*, %struct.layer** %l.addr, align 8
  %10 = load i32, i32* %x.addr, align 4
  %11 = load i32, i32* %x.addr, align 4
  %12 = load i32, i32* %n.addr, align 4
  %add3 = add nsw i32 %11, %12
  %sub4 = sub nsw i32 %add3, 1
  %13 = load i32, i32* %y.addr, align 4
  %14 = load i32, i32* %y.addr, align 4
  call void @LayPauseUpdateRegion(%struct.layer* %9, i32 %10, i32 %sub4, i32 %13, i32 %14)
  br label %if.end.5

if.end.5:                                         ; preds = %if.then.2, %if.end
  %15 = load i8*, i8** %s.addr, align 8
  %call = call i64 @strlen(i8* %15) #5
  %conv = trunc i64 %call to i32
  store i32 %conv, i32* %len, align 4
  %16 = load i32, i32* %len, align 4
  %17 = load i32, i32* %n.addr, align 4
  %cmp6 = icmp sgt i32 %16, %17
  br i1 %cmp6, label %if.then.8, label %if.end.9

if.then.8:                                        ; preds = %if.end.5
  %18 = load i32, i32* %n.addr, align 4
  store i32 %18, i32* %len, align 4
  br label %if.end.9

if.end.9:                                         ; preds = %if.then.8, %if.end.5
  %19 = load %struct.layer*, %struct.layer** %l.addr, align 8
  %l_cvlist = getelementptr inbounds %struct.layer, %struct.layer* %19, i32 0, i32 0
  %20 = load %struct.canvas*, %struct.canvas** %l_cvlist, align 8
  store %struct.canvas* %20, %struct.canvas** %cv, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.inc.72, %if.end.9
  %21 = load %struct.canvas*, %struct.canvas** %cv, align 8
  %tobool10 = icmp ne %struct.canvas* %21, null
  br i1 %tobool10, label %for.body, label %for.end.73

for.body:                                         ; preds = %for.cond
  %22 = load %struct.layer*, %struct.layer** %l.addr, align 8
  %l_pause11 = getelementptr inbounds %struct.layer, %struct.layer* %22, i32 0, i32 13
  %23 = bitcast %struct.anon.0* %l_pause11 to i8*
  %bf.load12 = load i8, i8* %23, align 8
  %bf.shl13 = shl i8 %bf.load12, 7
  %bf.ashr14 = ashr i8 %bf.shl13, 7
  %bf.cast15 = sext i8 %bf.ashr14 to i32
  %tobool16 = icmp ne i32 %bf.cast15, 0
  br i1 %tobool16, label %land.lhs.true, label %if.end.19

land.lhs.true:                                    ; preds = %for.body
  %24 = load %struct.canvas*, %struct.canvas** %cv, align 8
  %c_slorient = getelementptr inbounds %struct.canvas, %struct.canvas* %24, i32 0, i32 6
  %25 = load i32, i32* %c_slorient, align 4
  %tobool17 = icmp ne i32 %25, 0
  br i1 %tobool17, label %if.then.18, label %if.end.19

if.then.18:                                       ; preds = %land.lhs.true
  br label %for.inc.72

if.end.19:                                        ; preds = %land.lhs.true, %for.body
  %26 = load %struct.canvas*, %struct.canvas** %cv, align 8
  %c_vplist = getelementptr inbounds %struct.canvas, %struct.canvas* %26, i32 0, i32 8
  %27 = load %struct.viewport*, %struct.viewport** %c_vplist, align 8
  store %struct.viewport* %27, %struct.viewport** %vp, align 8
  br label %for.cond.20

for.cond.20:                                      ; preds = %for.inc, %if.end.19
  %28 = load %struct.viewport*, %struct.viewport** %vp, align 8
  %tobool21 = icmp ne %struct.viewport* %28, null
  br i1 %tobool21, label %for.body.22, label %for.end

for.body.22:                                      ; preds = %for.cond.20
  %29 = load i32, i32* %y.addr, align 4
  %30 = load %struct.viewport*, %struct.viewport** %vp, align 8
  %v_yoff = getelementptr inbounds %struct.viewport, %struct.viewport* %30, i32 0, i32 3
  %31 = load i32, i32* %v_yoff, align 4
  %add23 = add nsw i32 %29, %31
  store i32 %add23, i32* %y2, align 4
  %32 = load i32, i32* %y2, align 4
  %33 = load %struct.viewport*, %struct.viewport** %vp, align 8
  %v_ys = getelementptr inbounds %struct.viewport, %struct.viewport* %33, i32 0, i32 6
  %34 = load i32, i32* %v_ys, align 4
  %cmp24 = icmp slt i32 %32, %34
  br i1 %cmp24, label %if.then.28, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %for.body.22
  %35 = load i32, i32* %y2, align 4
  %36 = load %struct.viewport*, %struct.viewport** %vp, align 8
  %v_ye = getelementptr inbounds %struct.viewport, %struct.viewport* %36, i32 0, i32 7
  %37 = load i32, i32* %v_ye, align 4
  %cmp26 = icmp sgt i32 %35, %37
  br i1 %cmp26, label %if.then.28, label %if.end.29

if.then.28:                                       ; preds = %lor.lhs.false, %for.body.22
  br label %for.inc

if.end.29:                                        ; preds = %lor.lhs.false
  %38 = load i32, i32* %x.addr, align 4
  %39 = load %struct.viewport*, %struct.viewport** %vp, align 8
  %v_xoff = getelementptr inbounds %struct.viewport, %struct.viewport* %39, i32 0, i32 2
  %40 = load i32, i32* %v_xoff, align 4
  %add30 = add nsw i32 %38, %40
  store i32 %add30, i32* %xs2, align 4
  %41 = load i32, i32* %xs2, align 4
  %42 = load i32, i32* %n.addr, align 4
  %add31 = add nsw i32 %41, %42
  %sub32 = sub nsw i32 %add31, 1
  store i32 %sub32, i32* %xe2, align 4
  %43 = load i32, i32* %xs2, align 4
  %44 = load %struct.viewport*, %struct.viewport** %vp, align 8
  %v_xs = getelementptr inbounds %struct.viewport, %struct.viewport* %44, i32 0, i32 4
  %45 = load i32, i32* %v_xs, align 4
  %cmp33 = icmp slt i32 %43, %45
  br i1 %cmp33, label %if.then.35, label %if.end.37

if.then.35:                                       ; preds = %if.end.29
  %46 = load %struct.viewport*, %struct.viewport** %vp, align 8
  %v_xs36 = getelementptr inbounds %struct.viewport, %struct.viewport* %46, i32 0, i32 4
  %47 = load i32, i32* %v_xs36, align 4
  store i32 %47, i32* %xs2, align 4
  br label %if.end.37

if.end.37:                                        ; preds = %if.then.35, %if.end.29
  %48 = load i32, i32* %xe2, align 4
  %49 = load %struct.viewport*, %struct.viewport** %vp, align 8
  %v_xe = getelementptr inbounds %struct.viewport, %struct.viewport* %49, i32 0, i32 5
  %50 = load i32, i32* %v_xe, align 4
  %cmp38 = icmp sgt i32 %48, %50
  br i1 %cmp38, label %if.then.40, label %if.end.42

if.then.40:                                       ; preds = %if.end.37
  %51 = load %struct.viewport*, %struct.viewport** %vp, align 8
  %v_xe41 = getelementptr inbounds %struct.viewport, %struct.viewport* %51, i32 0, i32 5
  %52 = load i32, i32* %v_xe41, align 4
  store i32 %52, i32* %xe2, align 4
  br label %if.end.42

if.end.42:                                        ; preds = %if.then.40, %if.end.37
  %53 = load i32, i32* %xs2, align 4
  %54 = load i32, i32* %xe2, align 4
  %cmp43 = icmp sgt i32 %53, %54
  br i1 %cmp43, label %if.then.45, label %if.end.46

if.then.45:                                       ; preds = %if.end.42
  br label %for.inc

if.end.46:                                        ; preds = %if.end.42
  %55 = load %struct.canvas*, %struct.canvas** %cv, align 8
  %c_display = getelementptr inbounds %struct.canvas, %struct.canvas* %55, i32 0, i32 1
  %56 = load %struct.display*, %struct.display** %c_display, align 8
  store %struct.display* %56, %struct.display** @display, align 8
  %57 = load %struct.display*, %struct.display** @display, align 8
  %d_blocked = getelementptr inbounds %struct.display, %struct.display* %57, i32 0, i32 102
  %58 = load i32, i32* %d_blocked, align 4
  %tobool47 = icmp ne i32 %58, 0
  br i1 %tobool47, label %if.then.48, label %if.end.49

if.then.48:                                       ; preds = %if.end.46
  br label %for.inc

if.end.49:                                        ; preds = %if.end.46
  %59 = load i32, i32* %xs2, align 4
  %60 = load i32, i32* %y2, align 4
  call void @GotoPos(i32 %59, i32 %60)
  %61 = load %struct.mchar*, %struct.mchar** %r.addr, align 8
  call void @SetRendition(%struct.mchar* %61)
  %62 = load i32, i32* %xe2, align 4
  %63 = load i32, i32* %x.addr, align 4
  %64 = load %struct.viewport*, %struct.viewport** %vp, align 8
  %v_xoff50 = getelementptr inbounds %struct.viewport, %struct.viewport* %64, i32 0, i32 2
  %65 = load i32, i32* %v_xoff50, align 4
  %add51 = add nsw i32 %63, %65
  %sub52 = sub nsw i32 %62, %add51
  %add53 = add nsw i32 %sub52, 1
  store i32 %add53, i32* %len2, align 4
  %66 = load i32, i32* %len2, align 4
  %67 = load i32, i32* %len, align 4
  %cmp54 = icmp sgt i32 %66, %67
  br i1 %cmp54, label %if.then.56, label %if.end.57

if.then.56:                                       ; preds = %if.end.49
  %68 = load i32, i32* %len, align 4
  store i32 %68, i32* %len2, align 4
  br label %if.end.57

if.end.57:                                        ; preds = %if.then.56, %if.end.49
  %69 = load i8*, i8** %s.addr, align 8
  %70 = load i32, i32* %xs2, align 4
  %71 = load i32, i32* %x.addr, align 4
  %sub58 = sub nsw i32 %70, %71
  %72 = load %struct.viewport*, %struct.viewport** %vp, align 8
  %v_xoff59 = getelementptr inbounds %struct.viewport, %struct.viewport* %72, i32 0, i32 2
  %73 = load i32, i32* %v_xoff59, align 4
  %sub60 = sub nsw i32 %sub58, %73
  %74 = load i32, i32* %len2, align 4
  call void @PutWinMsg(i8* %69, i32 %sub60, i32 %74)
  %75 = load i32, i32* %x.addr, align 4
  %76 = load %struct.viewport*, %struct.viewport** %vp, align 8
  %v_xoff61 = getelementptr inbounds %struct.viewport, %struct.viewport* %76, i32 0, i32 2
  %77 = load i32, i32* %v_xoff61, align 4
  %add62 = add nsw i32 %75, %77
  %78 = load i32, i32* %len2, align 4
  %add63 = add nsw i32 %add62, %78
  store i32 %add63, i32* %xs2, align 4
  %79 = load i32, i32* %xs2, align 4
  %80 = load %struct.viewport*, %struct.viewport** %vp, align 8
  %v_xs64 = getelementptr inbounds %struct.viewport, %struct.viewport* %80, i32 0, i32 4
  %81 = load i32, i32* %v_xs64, align 4
  %cmp65 = icmp slt i32 %79, %81
  br i1 %cmp65, label %if.then.67, label %if.end.69

if.then.67:                                       ; preds = %if.end.57
  %82 = load %struct.viewport*, %struct.viewport** %vp, align 8
  %v_xs68 = getelementptr inbounds %struct.viewport, %struct.viewport* %82, i32 0, i32 4
  %83 = load i32, i32* %v_xs68, align 4
  store i32 %83, i32* %xs2, align 4
  br label %if.end.69

if.end.69:                                        ; preds = %if.then.67, %if.end.57
  %84 = load %struct.display*, %struct.display** @display, align 8
  %d_rend = getelementptr inbounds %struct.display, %struct.display* %84, i32 0, i32 24
  %85 = bitcast %struct.mchar* %or to i8*
  %86 = bitcast %struct.mchar* %d_rend to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %85, i8* %86, i64 6, i32 1, i1 false)
  %87 = load i32, i32* %xs2, align 4
  %88 = load i32, i32* %y2, align 4
  call void @GotoPos(i32 %87, i32 %88)
  call void @SetRendition(%struct.mchar* %or)
  br label %while.cond

while.cond:                                       ; preds = %while.body, %if.end.69
  %89 = load i32, i32* %xs2, align 4
  %inc = add nsw i32 %89, 1
  store i32 %inc, i32* %xs2, align 4
  %90 = load i32, i32* %xe2, align 4
  %cmp70 = icmp sle i32 %89, %90
  br i1 %cmp70, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  call void @PUTCHARLP(i32 32)
  br label %while.cond

while.end:                                        ; preds = %while.cond
  br label %for.inc

for.inc:                                          ; preds = %while.end, %if.then.48, %if.then.45, %if.then.28
  %91 = load %struct.viewport*, %struct.viewport** %vp, align 8
  %v_next = getelementptr inbounds %struct.viewport, %struct.viewport* %91, i32 0, i32 0
  %92 = load %struct.viewport*, %struct.viewport** %v_next, align 8
  store %struct.viewport* %92, %struct.viewport** %vp, align 8
  br label %for.cond.20

for.end:                                          ; preds = %for.cond.20
  br label %for.inc.72

for.inc.72:                                       ; preds = %for.end, %if.then.18
  %93 = load %struct.canvas*, %struct.canvas** %cv, align 8
  %c_lnext = getelementptr inbounds %struct.canvas, %struct.canvas* %93, i32 0, i32 10
  %94 = load %struct.canvas*, %struct.canvas** %c_lnext, align 8
  store %struct.canvas* %94, %struct.canvas** %cv, align 8
  br label %for.cond

for.end.73:                                       ; preds = %for.cond
  ret void
}

; Function Attrs: nounwind readonly
declare i64 @strlen(i8*) #3

declare void @PutWinMsg(i8*, i32, i32) #1

; Function Attrs: nounwind uwtable
define void @LClearLine(%struct.layer* %l, i32 %y, i32 %xs, i32 %xe, i32 %bce, %struct.mline* %ol) #0 {
entry:
  %l.addr = alloca %struct.layer*, align 8
  %y.addr = alloca i32, align 4
  %xs.addr = alloca i32, align 4
  %xe.addr = alloca i32, align 4
  %bce.addr = alloca i32, align 4
  %ol.addr = alloca %struct.mline*, align 8
  %cv = alloca %struct.canvas*, align 8
  %vp = alloca %struct.viewport*, align 8
  %y2 = alloca i32, align 4
  %xs2 = alloca i32, align 4
  %xe2 = alloca i32, align 4
  store %struct.layer* %l, %struct.layer** %l.addr, align 8
  store i32 %y, i32* %y.addr, align 4
  store i32 %xs, i32* %xs.addr, align 4
  store i32 %xe, i32* %xe.addr, align 4
  store i32 %bce, i32* %bce.addr, align 4
  store %struct.mline* %ol, %struct.mline** %ol.addr, align 8
  %0 = load i32, i32* %xs.addr, align 4
  %1 = load %struct.layer*, %struct.layer** %l.addr, align 8
  %l_width = getelementptr inbounds %struct.layer, %struct.layer* %1, i32 0, i32 1
  %2 = load i32, i32* %l_width, align 4
  %cmp = icmp sge i32 %0, %2
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %3 = load %struct.layer*, %struct.layer** %l.addr, align 8
  %l_width1 = getelementptr inbounds %struct.layer, %struct.layer* %3, i32 0, i32 1
  %4 = load i32, i32* %l_width1, align 4
  %sub = sub nsw i32 %4, 1
  store i32 %sub, i32* %xs.addr, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %5 = load i32, i32* %xe.addr, align 4
  %6 = load %struct.layer*, %struct.layer** %l.addr, align 8
  %l_width2 = getelementptr inbounds %struct.layer, %struct.layer* %6, i32 0, i32 1
  %7 = load i32, i32* %l_width2, align 4
  %cmp3 = icmp sge i32 %5, %7
  br i1 %cmp3, label %if.then.4, label %if.end.7

if.then.4:                                        ; preds = %if.end
  %8 = load %struct.layer*, %struct.layer** %l.addr, align 8
  %l_width5 = getelementptr inbounds %struct.layer, %struct.layer* %8, i32 0, i32 1
  %9 = load i32, i32* %l_width5, align 4
  %sub6 = sub nsw i32 %9, 1
  store i32 %sub6, i32* %xe.addr, align 4
  br label %if.end.7

if.end.7:                                         ; preds = %if.then.4, %if.end
  %10 = load %struct.layer*, %struct.layer** %l.addr, align 8
  %l_pause = getelementptr inbounds %struct.layer, %struct.layer* %10, i32 0, i32 13
  %11 = bitcast %struct.anon.0* %l_pause to i8*
  %bf.load = load i8, i8* %11, align 8
  %bf.shl = shl i8 %bf.load, 7
  %bf.ashr = ashr i8 %bf.shl, 7
  %bf.cast = sext i8 %bf.ashr to i32
  %tobool = icmp ne i32 %bf.cast, 0
  br i1 %tobool, label %if.then.8, label %if.end.9

if.then.8:                                        ; preds = %if.end.7
  %12 = load %struct.layer*, %struct.layer** %l.addr, align 8
  %13 = load i32, i32* %xs.addr, align 4
  %14 = load i32, i32* %xe.addr, align 4
  %15 = load i32, i32* %y.addr, align 4
  %16 = load i32, i32* %y.addr, align 4
  call void @LayPauseUpdateRegion(%struct.layer* %12, i32 %13, i32 %14, i32 %15, i32 %16)
  br label %if.end.9

if.end.9:                                         ; preds = %if.then.8, %if.end.7
  %17 = load %struct.layer*, %struct.layer** %l.addr, align 8
  %l_cvlist = getelementptr inbounds %struct.layer, %struct.layer* %17, i32 0, i32 0
  %18 = load %struct.canvas*, %struct.canvas** %l_cvlist, align 8
  store %struct.canvas* %18, %struct.canvas** %cv, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.inc.60, %if.end.9
  %19 = load %struct.canvas*, %struct.canvas** %cv, align 8
  %tobool10 = icmp ne %struct.canvas* %19, null
  br i1 %tobool10, label %for.body, label %for.end.61

for.body:                                         ; preds = %for.cond
  %20 = load %struct.layer*, %struct.layer** %l.addr, align 8
  %l_pause11 = getelementptr inbounds %struct.layer, %struct.layer* %20, i32 0, i32 13
  %21 = bitcast %struct.anon.0* %l_pause11 to i8*
  %bf.load12 = load i8, i8* %21, align 8
  %bf.shl13 = shl i8 %bf.load12, 7
  %bf.ashr14 = ashr i8 %bf.shl13, 7
  %bf.cast15 = sext i8 %bf.ashr14 to i32
  %tobool16 = icmp ne i32 %bf.cast15, 0
  br i1 %tobool16, label %land.lhs.true, label %if.end.19

land.lhs.true:                                    ; preds = %for.body
  %22 = load %struct.canvas*, %struct.canvas** %cv, align 8
  %c_slorient = getelementptr inbounds %struct.canvas, %struct.canvas* %22, i32 0, i32 6
  %23 = load i32, i32* %c_slorient, align 4
  %tobool17 = icmp ne i32 %23, 0
  br i1 %tobool17, label %if.then.18, label %if.end.19

if.then.18:                                       ; preds = %land.lhs.true
  br label %for.inc.60

if.end.19:                                        ; preds = %land.lhs.true, %for.body
  %24 = load %struct.canvas*, %struct.canvas** %cv, align 8
  %c_vplist = getelementptr inbounds %struct.canvas, %struct.canvas* %24, i32 0, i32 8
  %25 = load %struct.viewport*, %struct.viewport** %c_vplist, align 8
  store %struct.viewport* %25, %struct.viewport** %vp, align 8
  br label %for.cond.20

for.cond.20:                                      ; preds = %for.inc, %if.end.19
  %26 = load %struct.viewport*, %struct.viewport** %vp, align 8
  %tobool21 = icmp ne %struct.viewport* %26, null
  br i1 %tobool21, label %for.body.22, label %for.end

for.body.22:                                      ; preds = %for.cond.20
  %27 = load i32, i32* %xs.addr, align 4
  %28 = load %struct.viewport*, %struct.viewport** %vp, align 8
  %v_xoff = getelementptr inbounds %struct.viewport, %struct.viewport* %28, i32 0, i32 2
  %29 = load i32, i32* %v_xoff, align 4
  %add = add nsw i32 %27, %29
  store i32 %add, i32* %xs2, align 4
  %30 = load i32, i32* %xe.addr, align 4
  %31 = load %struct.viewport*, %struct.viewport** %vp, align 8
  %v_xoff23 = getelementptr inbounds %struct.viewport, %struct.viewport* %31, i32 0, i32 2
  %32 = load i32, i32* %v_xoff23, align 4
  %add24 = add nsw i32 %30, %32
  store i32 %add24, i32* %xe2, align 4
  %33 = load i32, i32* %y.addr, align 4
  %34 = load %struct.viewport*, %struct.viewport** %vp, align 8
  %v_yoff = getelementptr inbounds %struct.viewport, %struct.viewport* %34, i32 0, i32 3
  %35 = load i32, i32* %v_yoff, align 4
  %add25 = add nsw i32 %33, %35
  store i32 %add25, i32* %y2, align 4
  %36 = load i32, i32* %y2, align 4
  %37 = load %struct.viewport*, %struct.viewport** %vp, align 8
  %v_ys = getelementptr inbounds %struct.viewport, %struct.viewport* %37, i32 0, i32 6
  %38 = load i32, i32* %v_ys, align 4
  %cmp26 = icmp slt i32 %36, %38
  br i1 %cmp26, label %if.then.28, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %for.body.22
  %39 = load i32, i32* %y2, align 4
  %40 = load %struct.viewport*, %struct.viewport** %vp, align 8
  %v_ye = getelementptr inbounds %struct.viewport, %struct.viewport* %40, i32 0, i32 7
  %41 = load i32, i32* %v_ye, align 4
  %cmp27 = icmp sgt i32 %39, %41
  br i1 %cmp27, label %if.then.28, label %if.end.29

if.then.28:                                       ; preds = %lor.lhs.false, %for.body.22
  br label %for.inc

if.end.29:                                        ; preds = %lor.lhs.false
  %42 = load i32, i32* %xs2, align 4
  %43 = load %struct.viewport*, %struct.viewport** %vp, align 8
  %v_xs = getelementptr inbounds %struct.viewport, %struct.viewport* %43, i32 0, i32 4
  %44 = load i32, i32* %v_xs, align 4
  %cmp30 = icmp slt i32 %42, %44
  br i1 %cmp30, label %if.then.31, label %if.end.33

if.then.31:                                       ; preds = %if.end.29
  %45 = load %struct.viewport*, %struct.viewport** %vp, align 8
  %v_xs32 = getelementptr inbounds %struct.viewport, %struct.viewport* %45, i32 0, i32 4
  %46 = load i32, i32* %v_xs32, align 4
  store i32 %46, i32* %xs2, align 4
  br label %if.end.33

if.end.33:                                        ; preds = %if.then.31, %if.end.29
  %47 = load i32, i32* %xe2, align 4
  %48 = load %struct.viewport*, %struct.viewport** %vp, align 8
  %v_xe = getelementptr inbounds %struct.viewport, %struct.viewport* %48, i32 0, i32 5
  %49 = load i32, i32* %v_xe, align 4
  %cmp34 = icmp sgt i32 %47, %49
  br i1 %cmp34, label %if.then.35, label %if.end.37

if.then.35:                                       ; preds = %if.end.33
  %50 = load %struct.viewport*, %struct.viewport** %vp, align 8
  %v_xe36 = getelementptr inbounds %struct.viewport, %struct.viewport* %50, i32 0, i32 5
  %51 = load i32, i32* %v_xe36, align 4
  store i32 %51, i32* %xe2, align 4
  br label %if.end.37

if.end.37:                                        ; preds = %if.then.35, %if.end.33
  %52 = load i32, i32* %xs2, align 4
  %53 = load i32, i32* %xe2, align 4
  %cmp38 = icmp sgt i32 %52, %53
  br i1 %cmp38, label %if.then.39, label %if.end.40

if.then.39:                                       ; preds = %if.end.37
  br label %for.inc

if.end.40:                                        ; preds = %if.end.37
  %54 = load %struct.canvas*, %struct.canvas** %cv, align 8
  %c_display = getelementptr inbounds %struct.canvas, %struct.canvas* %54, i32 0, i32 1
  %55 = load %struct.display*, %struct.display** %c_display, align 8
  store %struct.display* %55, %struct.display** @display, align 8
  %56 = load %struct.display*, %struct.display** @display, align 8
  %d_blocked = getelementptr inbounds %struct.display, %struct.display* %56, i32 0, i32 102
  %57 = load i32, i32* %d_blocked, align 4
  %tobool41 = icmp ne i32 %57, 0
  br i1 %tobool41, label %if.then.42, label %if.end.43

if.then.42:                                       ; preds = %if.end.40
  br label %for.inc

if.end.43:                                        ; preds = %if.end.40
  %58 = load %struct.mline*, %struct.mline** %ol.addr, align 8
  %tobool44 = icmp ne %struct.mline* %58, null
  br i1 %tobool44, label %cond.true, label %cond.false.57

cond.true:                                        ; preds = %if.end.43
  %59 = load %struct.layer*, %struct.layer** %l.addr, align 8
  %l_encoding = getelementptr inbounds %struct.layer, %struct.layer* %59, i32 0, i32 5
  %60 = load i32, i32* %l_encoding, align 4
  %cmp45 = icmp eq i32 %60, 8
  %conv = zext i1 %cmp45 to i32
  %61 = load %struct.display*, %struct.display** @display, align 8
  %d_encoding = getelementptr inbounds %struct.display, %struct.display* %61, i32 0, i32 28
  %62 = load i32, i32* %d_encoding, align 4
  %cmp46 = icmp eq i32 %62, 8
  %conv47 = zext i1 %cmp46 to i32
  %cmp48 = icmp ne i32 %conv, %conv47
  br i1 %cmp48, label %cond.true.50, label %cond.false

cond.true.50:                                     ; preds = %cond.true
  %63 = load %struct.mline*, %struct.mline** %ol.addr, align 8
  %64 = load %struct.layer*, %struct.layer** %l.addr, align 8
  %l_width51 = getelementptr inbounds %struct.layer, %struct.layer* %64, i32 0, i32 1
  %65 = load i32, i32* %l_width51, align 4
  %66 = load %struct.layer*, %struct.layer** %l.addr, align 8
  %l_encoding52 = getelementptr inbounds %struct.layer, %struct.layer* %66, i32 0, i32 5
  %67 = load i32, i32* %l_encoding52, align 4
  %68 = load %struct.display*, %struct.display** @display, align 8
  %d_encoding53 = getelementptr inbounds %struct.display, %struct.display* %68, i32 0, i32 28
  %69 = load i32, i32* %d_encoding53, align 4
  %call = call %struct.mline* @recode_mline(%struct.mline* %63, i32 %65, i32 %67, i32 %69)
  br label %cond.end

cond.false:                                       ; preds = %cond.true
  %70 = load %struct.mline*, %struct.mline** %ol.addr, align 8
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true.50
  %cond = phi %struct.mline* [ %call, %cond.true.50 ], [ %70, %cond.false ]
  %71 = load %struct.viewport*, %struct.viewport** %vp, align 8
  %v_xoff54 = getelementptr inbounds %struct.viewport, %struct.viewport* %71, i32 0, i32 2
  %72 = load i32, i32* %v_xoff54, align 4
  %sub55 = sub nsw i32 0, %72
  %call56 = call %struct.mline* @mloff(%struct.mline* %cond, i32 %sub55)
  br label %cond.end.58

cond.false.57:                                    ; preds = %if.end.43
  br label %cond.end.58

cond.end.58:                                      ; preds = %cond.false.57, %cond.end
  %cond59 = phi %struct.mline* [ %call56, %cond.end ], [ null, %cond.false.57 ]
  %73 = load i32, i32* %y2, align 4
  %74 = load i32, i32* %xs2, align 4
  %75 = load i32, i32* %xe2, align 4
  %76 = load i32, i32* %bce.addr, align 4
  call void @ClearLine(%struct.mline* %cond59, i32 %73, i32 %74, i32 %75, i32 %76)
  br label %for.inc

for.inc:                                          ; preds = %cond.end.58, %if.then.42, %if.then.39, %if.then.28
  %77 = load %struct.viewport*, %struct.viewport** %vp, align 8
  %v_next = getelementptr inbounds %struct.viewport, %struct.viewport* %77, i32 0, i32 0
  %78 = load %struct.viewport*, %struct.viewport** %v_next, align 8
  store %struct.viewport* %78, %struct.viewport** %vp, align 8
  br label %for.cond.20

for.end:                                          ; preds = %for.cond.20
  br label %for.inc.60

for.inc.60:                                       ; preds = %for.end, %if.then.18
  %79 = load %struct.canvas*, %struct.canvas** %cv, align 8
  %c_lnext = getelementptr inbounds %struct.canvas, %struct.canvas* %79, i32 0, i32 10
  %80 = load %struct.canvas*, %struct.canvas** %c_lnext, align 8
  store %struct.canvas* %80, %struct.canvas** %cv, align 8
  br label %for.cond

for.end.61:                                       ; preds = %for.cond
  ret void
}

declare void @ClearLine(%struct.mline*, i32, i32, i32, i32) #1

; Function Attrs: nounwind uwtable
define void @LClearArea(%struct.layer* %l, i32 %xs, i32 %ys, i32 %xe, i32 %ye, i32 %bce, i32 %uself) #0 {
entry:
  %l.addr = alloca %struct.layer*, align 8
  %xs.addr = alloca i32, align 4
  %ys.addr = alloca i32, align 4
  %xe.addr = alloca i32, align 4
  %ye.addr = alloca i32, align 4
  %bce.addr = alloca i32, align 4
  %uself.addr = alloca i32, align 4
  %cv = alloca %struct.canvas*, align 8
  %vp = alloca %struct.viewport*, align 8
  %xs2 = alloca i32, align 4
  %ys2 = alloca i32, align 4
  %xe2 = alloca i32, align 4
  %ye2 = alloca i32, align 4
  %y = alloca i32, align 4
  store %struct.layer* %l, %struct.layer** %l.addr, align 8
  store i32 %xs, i32* %xs.addr, align 4
  store i32 %ys, i32* %ys.addr, align 4
  store i32 %xe, i32* %xe.addr, align 4
  store i32 %ye, i32* %ye.addr, align 4
  store i32 %bce, i32* %bce.addr, align 4
  store i32 %uself, i32* %uself.addr, align 4
  %0 = load i32, i32* %ys.addr, align 4
  %cmp = icmp slt i32 %0, 0
  br i1 %cmp, label %if.then, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %entry
  %1 = load i32, i32* %ye.addr, align 4
  %2 = load i32, i32* %ys.addr, align 4
  %cmp1 = icmp slt i32 %1, %2
  br i1 %cmp1, label %if.then, label %if.end

if.then:                                          ; preds = %lor.lhs.false, %entry
  br label %for.end.102

if.end:                                           ; preds = %lor.lhs.false
  %3 = load i32, i32* %xs.addr, align 4
  %4 = load %struct.layer*, %struct.layer** %l.addr, align 8
  %l_width = getelementptr inbounds %struct.layer, %struct.layer* %4, i32 0, i32 1
  %5 = load i32, i32* %l_width, align 4
  %cmp2 = icmp sge i32 %3, %5
  br i1 %cmp2, label %if.then.3, label %if.end.5

if.then.3:                                        ; preds = %if.end
  %6 = load %struct.layer*, %struct.layer** %l.addr, align 8
  %l_width4 = getelementptr inbounds %struct.layer, %struct.layer* %6, i32 0, i32 1
  %7 = load i32, i32* %l_width4, align 4
  %sub = sub nsw i32 %7, 1
  store i32 %sub, i32* %xs.addr, align 4
  br label %if.end.5

if.end.5:                                         ; preds = %if.then.3, %if.end
  %8 = load i32, i32* %xe.addr, align 4
  %9 = load %struct.layer*, %struct.layer** %l.addr, align 8
  %l_width6 = getelementptr inbounds %struct.layer, %struct.layer* %9, i32 0, i32 1
  %10 = load i32, i32* %l_width6, align 4
  %cmp7 = icmp sge i32 %8, %10
  br i1 %cmp7, label %if.then.8, label %if.end.11

if.then.8:                                        ; preds = %if.end.5
  %11 = load %struct.layer*, %struct.layer** %l.addr, align 8
  %l_width9 = getelementptr inbounds %struct.layer, %struct.layer* %11, i32 0, i32 1
  %12 = load i32, i32* %l_width9, align 4
  %sub10 = sub nsw i32 %12, 1
  store i32 %sub10, i32* %xe.addr, align 4
  br label %if.end.11

if.end.11:                                        ; preds = %if.then.8, %if.end.5
  %13 = load %struct.layer*, %struct.layer** %l.addr, align 8
  %l_pause = getelementptr inbounds %struct.layer, %struct.layer* %13, i32 0, i32 13
  %14 = bitcast %struct.anon.0* %l_pause to i8*
  %bf.load = load i8, i8* %14, align 8
  %bf.shl = shl i8 %bf.load, 7
  %bf.ashr = ashr i8 %bf.shl, 7
  %bf.cast = sext i8 %bf.ashr to i32
  %tobool = icmp ne i32 %bf.cast, 0
  br i1 %tobool, label %if.then.12, label %if.end.13

if.then.12:                                       ; preds = %if.end.11
  %15 = load %struct.layer*, %struct.layer** %l.addr, align 8
  %16 = load i32, i32* %xs.addr, align 4
  %17 = load i32, i32* %xe.addr, align 4
  %18 = load i32, i32* %ys.addr, align 4
  %19 = load i32, i32* %ye.addr, align 4
  call void @LayPauseUpdateRegion(%struct.layer* %15, i32 %16, i32 %17, i32 %18, i32 %19)
  br label %if.end.13

if.end.13:                                        ; preds = %if.then.12, %if.end.11
  %20 = load %struct.layer*, %struct.layer** %l.addr, align 8
  %l_cvlist = getelementptr inbounds %struct.layer, %struct.layer* %20, i32 0, i32 0
  %21 = load %struct.canvas*, %struct.canvas** %l_cvlist, align 8
  store %struct.canvas* %21, %struct.canvas** %cv, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.inc.101, %if.end.13
  %22 = load %struct.canvas*, %struct.canvas** %cv, align 8
  %tobool14 = icmp ne %struct.canvas* %22, null
  br i1 %tobool14, label %for.body, label %for.end.102

for.body:                                         ; preds = %for.cond
  %23 = load %struct.layer*, %struct.layer** %l.addr, align 8
  %l_pause15 = getelementptr inbounds %struct.layer, %struct.layer* %23, i32 0, i32 13
  %24 = bitcast %struct.anon.0* %l_pause15 to i8*
  %bf.load16 = load i8, i8* %24, align 8
  %bf.shl17 = shl i8 %bf.load16, 7
  %bf.ashr18 = ashr i8 %bf.shl17, 7
  %bf.cast19 = sext i8 %bf.ashr18 to i32
  %tobool20 = icmp ne i32 %bf.cast19, 0
  br i1 %tobool20, label %land.lhs.true, label %if.end.23

land.lhs.true:                                    ; preds = %for.body
  %25 = load %struct.canvas*, %struct.canvas** %cv, align 8
  %c_slorient = getelementptr inbounds %struct.canvas, %struct.canvas* %25, i32 0, i32 6
  %26 = load i32, i32* %c_slorient, align 4
  %tobool21 = icmp ne i32 %26, 0
  br i1 %tobool21, label %if.then.22, label %if.end.23

if.then.22:                                       ; preds = %land.lhs.true
  br label %for.inc.101

if.end.23:                                        ; preds = %land.lhs.true, %for.body
  %27 = load %struct.canvas*, %struct.canvas** %cv, align 8
  %c_display = getelementptr inbounds %struct.canvas, %struct.canvas* %27, i32 0, i32 1
  %28 = load %struct.display*, %struct.display** %c_display, align 8
  store %struct.display* %28, %struct.display** @display, align 8
  %29 = load %struct.display*, %struct.display** @display, align 8
  %d_blocked = getelementptr inbounds %struct.display, %struct.display* %29, i32 0, i32 102
  %30 = load i32, i32* %d_blocked, align 4
  %tobool24 = icmp ne i32 %30, 0
  br i1 %tobool24, label %if.then.25, label %if.end.26

if.then.25:                                       ; preds = %if.end.23
  br label %for.inc.101

if.end.26:                                        ; preds = %if.end.23
  %31 = load %struct.canvas*, %struct.canvas** %cv, align 8
  %c_vplist = getelementptr inbounds %struct.canvas, %struct.canvas* %31, i32 0, i32 8
  %32 = load %struct.viewport*, %struct.viewport** %c_vplist, align 8
  store %struct.viewport* %32, %struct.viewport** %vp, align 8
  br label %for.cond.27

for.cond.27:                                      ; preds = %for.inc.99, %if.end.26
  %33 = load %struct.viewport*, %struct.viewport** %vp, align 8
  %tobool28 = icmp ne %struct.viewport* %33, null
  br i1 %tobool28, label %for.body.29, label %for.end.100

for.body.29:                                      ; preds = %for.cond.27
  %34 = load i32, i32* %xs.addr, align 4
  %35 = load %struct.viewport*, %struct.viewport** %vp, align 8
  %v_xoff = getelementptr inbounds %struct.viewport, %struct.viewport* %35, i32 0, i32 2
  %36 = load i32, i32* %v_xoff, align 4
  %add = add nsw i32 %34, %36
  store i32 %add, i32* %xs2, align 4
  %37 = load i32, i32* %xe.addr, align 4
  %38 = load %struct.viewport*, %struct.viewport** %vp, align 8
  %v_xoff30 = getelementptr inbounds %struct.viewport, %struct.viewport* %38, i32 0, i32 2
  %39 = load i32, i32* %v_xoff30, align 4
  %add31 = add nsw i32 %37, %39
  store i32 %add31, i32* %xe2, align 4
  %40 = load i32, i32* %ys.addr, align 4
  %41 = load %struct.viewport*, %struct.viewport** %vp, align 8
  %v_yoff = getelementptr inbounds %struct.viewport, %struct.viewport* %41, i32 0, i32 3
  %42 = load i32, i32* %v_yoff, align 4
  %add32 = add nsw i32 %40, %42
  store i32 %add32, i32* %ys2, align 4
  %43 = load i32, i32* %ye.addr, align 4
  %44 = load %struct.viewport*, %struct.viewport** %vp, align 8
  %v_yoff33 = getelementptr inbounds %struct.viewport, %struct.viewport* %44, i32 0, i32 3
  %45 = load i32, i32* %v_yoff33, align 4
  %add34 = add nsw i32 %43, %45
  store i32 %add34, i32* %ye2, align 4
  %46 = load i32, i32* %xs2, align 4
  %47 = load %struct.viewport*, %struct.viewport** %vp, align 8
  %v_xs = getelementptr inbounds %struct.viewport, %struct.viewport* %47, i32 0, i32 4
  %48 = load i32, i32* %v_xs, align 4
  %cmp35 = icmp slt i32 %46, %48
  br i1 %cmp35, label %if.then.36, label %if.end.38

if.then.36:                                       ; preds = %for.body.29
  %49 = load %struct.viewport*, %struct.viewport** %vp, align 8
  %v_xs37 = getelementptr inbounds %struct.viewport, %struct.viewport* %49, i32 0, i32 4
  %50 = load i32, i32* %v_xs37, align 4
  store i32 %50, i32* %xs2, align 4
  br label %if.end.38

if.end.38:                                        ; preds = %if.then.36, %for.body.29
  %51 = load i32, i32* %xe2, align 4
  %52 = load %struct.viewport*, %struct.viewport** %vp, align 8
  %v_xe = getelementptr inbounds %struct.viewport, %struct.viewport* %52, i32 0, i32 5
  %53 = load i32, i32* %v_xe, align 4
  %cmp39 = icmp sgt i32 %51, %53
  br i1 %cmp39, label %if.then.40, label %if.end.42

if.then.40:                                       ; preds = %if.end.38
  %54 = load %struct.viewport*, %struct.viewport** %vp, align 8
  %v_xe41 = getelementptr inbounds %struct.viewport, %struct.viewport* %54, i32 0, i32 5
  %55 = load i32, i32* %v_xe41, align 4
  store i32 %55, i32* %xe2, align 4
  br label %if.end.42

if.end.42:                                        ; preds = %if.then.40, %if.end.38
  %56 = load i32, i32* %xs2, align 4
  %57 = load %struct.viewport*, %struct.viewport** %vp, align 8
  %v_xe43 = getelementptr inbounds %struct.viewport, %struct.viewport* %57, i32 0, i32 5
  %58 = load i32, i32* %v_xe43, align 4
  %cmp44 = icmp sgt i32 %56, %58
  br i1 %cmp44, label %if.then.45, label %if.end.46

if.then.45:                                       ; preds = %if.end.42
  %59 = load i32, i32* %ys2, align 4
  %inc = add nsw i32 %59, 1
  store i32 %inc, i32* %ys2, align 4
  br label %if.end.46

if.end.46:                                        ; preds = %if.then.45, %if.end.42
  %60 = load i32, i32* %xe2, align 4
  %61 = load %struct.viewport*, %struct.viewport** %vp, align 8
  %v_xs47 = getelementptr inbounds %struct.viewport, %struct.viewport* %61, i32 0, i32 4
  %62 = load i32, i32* %v_xs47, align 4
  %cmp48 = icmp slt i32 %60, %62
  br i1 %cmp48, label %if.then.49, label %if.end.50

if.then.49:                                       ; preds = %if.end.46
  %63 = load i32, i32* %ye2, align 4
  %dec = add nsw i32 %63, -1
  store i32 %dec, i32* %ye2, align 4
  br label %if.end.50

if.end.50:                                        ; preds = %if.then.49, %if.end.46
  %64 = load i32, i32* %ys2, align 4
  %65 = load %struct.viewport*, %struct.viewport** %vp, align 8
  %v_ys = getelementptr inbounds %struct.viewport, %struct.viewport* %65, i32 0, i32 6
  %66 = load i32, i32* %v_ys, align 4
  %cmp51 = icmp slt i32 %64, %66
  br i1 %cmp51, label %if.then.52, label %if.end.54

if.then.52:                                       ; preds = %if.end.50
  %67 = load %struct.viewport*, %struct.viewport** %vp, align 8
  %v_ys53 = getelementptr inbounds %struct.viewport, %struct.viewport* %67, i32 0, i32 6
  %68 = load i32, i32* %v_ys53, align 4
  store i32 %68, i32* %ys2, align 4
  br label %if.end.54

if.end.54:                                        ; preds = %if.then.52, %if.end.50
  %69 = load i32, i32* %ye2, align 4
  %70 = load %struct.viewport*, %struct.viewport** %vp, align 8
  %v_ye = getelementptr inbounds %struct.viewport, %struct.viewport* %70, i32 0, i32 7
  %71 = load i32, i32* %v_ye, align 4
  %cmp55 = icmp sgt i32 %69, %71
  br i1 %cmp55, label %if.then.56, label %if.end.58

if.then.56:                                       ; preds = %if.end.54
  %72 = load %struct.viewport*, %struct.viewport** %vp, align 8
  %v_ye57 = getelementptr inbounds %struct.viewport, %struct.viewport* %72, i32 0, i32 7
  %73 = load i32, i32* %v_ye57, align 4
  store i32 %73, i32* %ye2, align 4
  br label %if.end.58

if.end.58:                                        ; preds = %if.then.56, %if.end.54
  %74 = load i32, i32* %ys2, align 4
  %75 = load i32, i32* %ye2, align 4
  %cmp59 = icmp sgt i32 %74, %75
  br i1 %cmp59, label %if.then.60, label %if.end.61

if.then.60:                                       ; preds = %if.end.58
  br label %for.inc.99

if.end.61:                                        ; preds = %if.end.58
  %76 = load i32, i32* %xs.addr, align 4
  %cmp62 = icmp eq i32 %76, 0
  br i1 %cmp62, label %if.then.67, label %lor.lhs.false.63

lor.lhs.false.63:                                 ; preds = %if.end.61
  %77 = load i32, i32* %ys2, align 4
  %78 = load i32, i32* %ys.addr, align 4
  %79 = load %struct.viewport*, %struct.viewport** %vp, align 8
  %v_yoff64 = getelementptr inbounds %struct.viewport, %struct.viewport* %79, i32 0, i32 3
  %80 = load i32, i32* %v_yoff64, align 4
  %add65 = add nsw i32 %78, %80
  %cmp66 = icmp ne i32 %77, %add65
  br i1 %cmp66, label %if.then.67, label %if.end.69

if.then.67:                                       ; preds = %lor.lhs.false.63, %if.end.61
  %81 = load %struct.viewport*, %struct.viewport** %vp, align 8
  %v_xs68 = getelementptr inbounds %struct.viewport, %struct.viewport* %81, i32 0, i32 4
  %82 = load i32, i32* %v_xs68, align 4
  store i32 %82, i32* %xs2, align 4
  br label %if.end.69

if.end.69:                                        ; preds = %if.then.67, %lor.lhs.false.63
  %83 = load i32, i32* %xe.addr, align 4
  %84 = load %struct.layer*, %struct.layer** %l.addr, align 8
  %l_width70 = getelementptr inbounds %struct.layer, %struct.layer* %84, i32 0, i32 1
  %85 = load i32, i32* %l_width70, align 4
  %sub71 = sub nsw i32 %85, 1
  %cmp72 = icmp eq i32 %83, %sub71
  br i1 %cmp72, label %if.then.77, label %lor.lhs.false.73

lor.lhs.false.73:                                 ; preds = %if.end.69
  %86 = load i32, i32* %ye2, align 4
  %87 = load i32, i32* %ye.addr, align 4
  %88 = load %struct.viewport*, %struct.viewport** %vp, align 8
  %v_yoff74 = getelementptr inbounds %struct.viewport, %struct.viewport* %88, i32 0, i32 3
  %89 = load i32, i32* %v_yoff74, align 4
  %add75 = add nsw i32 %87, %89
  %cmp76 = icmp ne i32 %86, %add75
  br i1 %cmp76, label %if.then.77, label %if.end.79

if.then.77:                                       ; preds = %lor.lhs.false.73, %if.end.69
  %90 = load %struct.viewport*, %struct.viewport** %vp, align 8
  %v_xe78 = getelementptr inbounds %struct.viewport, %struct.viewport* %90, i32 0, i32 5
  %91 = load i32, i32* %v_xe78, align 4
  store i32 %91, i32* %xe2, align 4
  br label %if.end.79

if.end.79:                                        ; preds = %if.then.77, %lor.lhs.false.73
  %92 = load %struct.canvas*, %struct.canvas** %cv, align 8
  %c_display80 = getelementptr inbounds %struct.canvas, %struct.canvas* %92, i32 0, i32 1
  %93 = load %struct.display*, %struct.display** %c_display80, align 8
  store %struct.display* %93, %struct.display** @display, align 8
  %94 = load i32, i32* %xs2, align 4
  %95 = load i32, i32* %ys2, align 4
  %96 = load %struct.viewport*, %struct.viewport** %vp, align 8
  %v_xs81 = getelementptr inbounds %struct.viewport, %struct.viewport* %96, i32 0, i32 4
  %97 = load i32, i32* %v_xs81, align 4
  %98 = load %struct.viewport*, %struct.viewport** %vp, align 8
  %v_xe82 = getelementptr inbounds %struct.viewport, %struct.viewport* %98, i32 0, i32 5
  %99 = load i32, i32* %v_xe82, align 4
  %100 = load i32, i32* %xe2, align 4
  %101 = load i32, i32* %ye2, align 4
  %102 = load i32, i32* %bce.addr, align 4
  %103 = load i32, i32* %uself.addr, align 4
  call void @ClearArea(i32 %94, i32 %95, i32 %97, i32 %99, i32 %100, i32 %101, i32 %102, i32 %103)
  %104 = load i32, i32* %xe.addr, align 4
  %105 = load %struct.layer*, %struct.layer** %l.addr, align 8
  %l_width83 = getelementptr inbounds %struct.layer, %struct.layer* %105, i32 0, i32 1
  %106 = load i32, i32* %l_width83, align 4
  %sub84 = sub nsw i32 %106, 1
  %cmp85 = icmp eq i32 %104, %sub84
  br i1 %cmp85, label %land.lhs.true.86, label %if.end.98

land.lhs.true.86:                                 ; preds = %if.end.79
  %107 = load i32, i32* %xe2, align 4
  %108 = load %struct.viewport*, %struct.viewport** %vp, align 8
  %v_xoff87 = getelementptr inbounds %struct.viewport, %struct.viewport* %108, i32 0, i32 2
  %109 = load i32, i32* %v_xoff87, align 4
  %110 = load i32, i32* %xe.addr, align 4
  %add88 = add nsw i32 %109, %110
  %cmp89 = icmp sgt i32 %107, %add88
  br i1 %cmp89, label %if.then.90, label %if.end.98

if.then.90:                                       ; preds = %land.lhs.true.86
  call void @SetRendition(%struct.mchar* @mchar_blank)
  %111 = load i32, i32* %ys2, align 4
  store i32 %111, i32* %y, align 4
  br label %for.cond.91

for.cond.91:                                      ; preds = %for.inc, %if.then.90
  %112 = load i32, i32* %y, align 4
  %113 = load i32, i32* %ye2, align 4
  %cmp92 = icmp sle i32 %112, %113
  br i1 %cmp92, label %for.body.93, label %for.end

for.body.93:                                      ; preds = %for.cond.91
  %114 = load i32, i32* %xe.addr, align 4
  %115 = load %struct.viewport*, %struct.viewport** %vp, align 8
  %v_xoff94 = getelementptr inbounds %struct.viewport, %struct.viewport* %115, i32 0, i32 2
  %116 = load i32, i32* %v_xoff94, align 4
  %add95 = add nsw i32 %114, %116
  %add96 = add nsw i32 %add95, 1
  %117 = load i32, i32* %y, align 4
  call void @GotoPos(i32 %add96, i32 %117)
  call void @PUTCHARLP(i32 124)
  br label %for.inc

for.inc:                                          ; preds = %for.body.93
  %118 = load i32, i32* %y, align 4
  %inc97 = add nsw i32 %118, 1
  store i32 %inc97, i32* %y, align 4
  br label %for.cond.91

for.end:                                          ; preds = %for.cond.91
  br label %if.end.98

if.end.98:                                        ; preds = %for.end, %land.lhs.true.86, %if.end.79
  br label %for.inc.99

for.inc.99:                                       ; preds = %if.end.98, %if.then.60
  %119 = load %struct.viewport*, %struct.viewport** %vp, align 8
  %v_next = getelementptr inbounds %struct.viewport, %struct.viewport* %119, i32 0, i32 0
  %120 = load %struct.viewport*, %struct.viewport** %v_next, align 8
  store %struct.viewport* %120, %struct.viewport** %vp, align 8
  br label %for.cond.27

for.end.100:                                      ; preds = %for.cond.27
  br label %for.inc.101

for.inc.101:                                      ; preds = %for.end.100, %if.then.25, %if.then.22
  %121 = load %struct.canvas*, %struct.canvas** %cv, align 8
  %c_lnext = getelementptr inbounds %struct.canvas, %struct.canvas* %121, i32 0, i32 10
  %122 = load %struct.canvas*, %struct.canvas** %c_lnext, align 8
  store %struct.canvas* %122, %struct.canvas** %cv, align 8
  br label %for.cond

for.end.102:                                      ; preds = %if.then, %for.cond
  ret void
}

declare void @ClearArea(i32, i32, i32, i32, i32, i32, i32, i32) #1

; Function Attrs: nounwind uwtable
define void @LCDisplayLine(%struct.layer* %l, %struct.mline* %ml, i32 %y, i32 %xs, i32 %xe, i32 %isblank) #0 {
entry:
  %l.addr = alloca %struct.layer*, align 8
  %ml.addr = alloca %struct.mline*, align 8
  %y.addr = alloca i32, align 4
  %xs.addr = alloca i32, align 4
  %xe.addr = alloca i32, align 4
  %isblank.addr = alloca i32, align 4
  %cv = alloca %struct.canvas*, align 8
  %vp = alloca %struct.viewport*, align 8
  %xs2 = alloca i32, align 4
  %xe2 = alloca i32, align 4
  %y2 = alloca i32, align 4
  store %struct.layer* %l, %struct.layer** %l.addr, align 8
  store %struct.mline* %ml, %struct.mline** %ml.addr, align 8
  store i32 %y, i32* %y.addr, align 4
  store i32 %xs, i32* %xs.addr, align 4
  store i32 %xe, i32* %xe.addr, align 4
  store i32 %isblank, i32* %isblank.addr, align 4
  %0 = load %struct.layer*, %struct.layer** %l.addr, align 8
  %l_pause = getelementptr inbounds %struct.layer, %struct.layer* %0, i32 0, i32 13
  %1 = bitcast %struct.anon.0* %l_pause to i8*
  %bf.load = load i8, i8* %1, align 8
  %bf.shl = shl i8 %bf.load, 7
  %bf.ashr = ashr i8 %bf.shl, 7
  %bf.cast = sext i8 %bf.ashr to i32
  %tobool = icmp ne i32 %bf.cast, 0
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %2 = load %struct.layer*, %struct.layer** %l.addr, align 8
  %3 = load i32, i32* %xs.addr, align 4
  %4 = load i32, i32* %xe.addr, align 4
  %5 = load i32, i32* %y.addr, align 4
  %6 = load i32, i32* %y.addr, align 4
  call void @LayPauseUpdateRegion(%struct.layer* %2, i32 %3, i32 %4, i32 %5, i32 %6)
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %7 = load %struct.layer*, %struct.layer** %l.addr, align 8
  %l_cvlist = getelementptr inbounds %struct.layer, %struct.layer* %7, i32 0, i32 0
  %8 = load %struct.canvas*, %struct.canvas** %l_cvlist, align 8
  store %struct.canvas* %8, %struct.canvas** %cv, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.inc.48, %if.end
  %9 = load %struct.canvas*, %struct.canvas** %cv, align 8
  %tobool1 = icmp ne %struct.canvas* %9, null
  br i1 %tobool1, label %for.body, label %for.end.49

for.body:                                         ; preds = %for.cond
  %10 = load %struct.layer*, %struct.layer** %l.addr, align 8
  %l_pause2 = getelementptr inbounds %struct.layer, %struct.layer* %10, i32 0, i32 13
  %11 = bitcast %struct.anon.0* %l_pause2 to i8*
  %bf.load3 = load i8, i8* %11, align 8
  %bf.shl4 = shl i8 %bf.load3, 7
  %bf.ashr5 = ashr i8 %bf.shl4, 7
  %bf.cast6 = sext i8 %bf.ashr5 to i32
  %tobool7 = icmp ne i32 %bf.cast6, 0
  br i1 %tobool7, label %land.lhs.true, label %if.end.10

land.lhs.true:                                    ; preds = %for.body
  %12 = load %struct.canvas*, %struct.canvas** %cv, align 8
  %c_slorient = getelementptr inbounds %struct.canvas, %struct.canvas* %12, i32 0, i32 6
  %13 = load i32, i32* %c_slorient, align 4
  %tobool8 = icmp ne i32 %13, 0
  br i1 %tobool8, label %if.then.9, label %if.end.10

if.then.9:                                        ; preds = %land.lhs.true
  br label %for.inc.48

if.end.10:                                        ; preds = %land.lhs.true, %for.body
  %14 = load %struct.canvas*, %struct.canvas** %cv, align 8
  %c_display = getelementptr inbounds %struct.canvas, %struct.canvas* %14, i32 0, i32 1
  %15 = load %struct.display*, %struct.display** %c_display, align 8
  store %struct.display* %15, %struct.display** @display, align 8
  %16 = load %struct.display*, %struct.display** @display, align 8
  %d_blocked = getelementptr inbounds %struct.display, %struct.display* %16, i32 0, i32 102
  %17 = load i32, i32* %d_blocked, align 4
  %tobool11 = icmp ne i32 %17, 0
  br i1 %tobool11, label %if.then.12, label %if.end.13

if.then.12:                                       ; preds = %if.end.10
  br label %for.inc.48

if.end.13:                                        ; preds = %if.end.10
  %18 = load %struct.canvas*, %struct.canvas** %cv, align 8
  %c_vplist = getelementptr inbounds %struct.canvas, %struct.canvas* %18, i32 0, i32 8
  %19 = load %struct.viewport*, %struct.viewport** %c_vplist, align 8
  store %struct.viewport* %19, %struct.viewport** %vp, align 8
  br label %for.cond.14

for.cond.14:                                      ; preds = %for.inc, %if.end.13
  %20 = load %struct.viewport*, %struct.viewport** %vp, align 8
  %tobool15 = icmp ne %struct.viewport* %20, null
  br i1 %tobool15, label %for.body.16, label %for.end

for.body.16:                                      ; preds = %for.cond.14
  %21 = load i32, i32* %xs.addr, align 4
  %22 = load %struct.viewport*, %struct.viewport** %vp, align 8
  %v_xoff = getelementptr inbounds %struct.viewport, %struct.viewport* %22, i32 0, i32 2
  %23 = load i32, i32* %v_xoff, align 4
  %add = add nsw i32 %21, %23
  store i32 %add, i32* %xs2, align 4
  %24 = load i32, i32* %xe.addr, align 4
  %25 = load %struct.viewport*, %struct.viewport** %vp, align 8
  %v_xoff17 = getelementptr inbounds %struct.viewport, %struct.viewport* %25, i32 0, i32 2
  %26 = load i32, i32* %v_xoff17, align 4
  %add18 = add nsw i32 %24, %26
  store i32 %add18, i32* %xe2, align 4
  %27 = load i32, i32* %y.addr, align 4
  %28 = load %struct.viewport*, %struct.viewport** %vp, align 8
  %v_yoff = getelementptr inbounds %struct.viewport, %struct.viewport* %28, i32 0, i32 3
  %29 = load i32, i32* %v_yoff, align 4
  %add19 = add nsw i32 %27, %29
  store i32 %add19, i32* %y2, align 4
  %30 = load i32, i32* %y2, align 4
  %31 = load %struct.viewport*, %struct.viewport** %vp, align 8
  %v_ys = getelementptr inbounds %struct.viewport, %struct.viewport* %31, i32 0, i32 6
  %32 = load i32, i32* %v_ys, align 4
  %cmp = icmp slt i32 %30, %32
  br i1 %cmp, label %if.then.21, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %for.body.16
  %33 = load i32, i32* %y2, align 4
  %34 = load %struct.viewport*, %struct.viewport** %vp, align 8
  %v_ye = getelementptr inbounds %struct.viewport, %struct.viewport* %34, i32 0, i32 7
  %35 = load i32, i32* %v_ye, align 4
  %cmp20 = icmp sgt i32 %33, %35
  br i1 %cmp20, label %if.then.21, label %if.end.22

if.then.21:                                       ; preds = %lor.lhs.false, %for.body.16
  br label %for.inc

if.end.22:                                        ; preds = %lor.lhs.false
  %36 = load i32, i32* %xs2, align 4
  %37 = load %struct.viewport*, %struct.viewport** %vp, align 8
  %v_xs = getelementptr inbounds %struct.viewport, %struct.viewport* %37, i32 0, i32 4
  %38 = load i32, i32* %v_xs, align 4
  %cmp23 = icmp slt i32 %36, %38
  br i1 %cmp23, label %if.then.24, label %if.end.26

if.then.24:                                       ; preds = %if.end.22
  %39 = load %struct.viewport*, %struct.viewport** %vp, align 8
  %v_xs25 = getelementptr inbounds %struct.viewport, %struct.viewport* %39, i32 0, i32 4
  %40 = load i32, i32* %v_xs25, align 4
  store i32 %40, i32* %xs2, align 4
  br label %if.end.26

if.end.26:                                        ; preds = %if.then.24, %if.end.22
  %41 = load i32, i32* %xe2, align 4
  %42 = load %struct.viewport*, %struct.viewport** %vp, align 8
  %v_xe = getelementptr inbounds %struct.viewport, %struct.viewport* %42, i32 0, i32 5
  %43 = load i32, i32* %v_xe, align 4
  %cmp27 = icmp sgt i32 %41, %43
  br i1 %cmp27, label %if.then.28, label %if.end.30

if.then.28:                                       ; preds = %if.end.26
  %44 = load %struct.viewport*, %struct.viewport** %vp, align 8
  %v_xe29 = getelementptr inbounds %struct.viewport, %struct.viewport* %44, i32 0, i32 5
  %45 = load i32, i32* %v_xe29, align 4
  store i32 %45, i32* %xe2, align 4
  br label %if.end.30

if.end.30:                                        ; preds = %if.then.28, %if.end.26
  %46 = load i32, i32* %xs2, align 4
  %47 = load i32, i32* %xe2, align 4
  %cmp31 = icmp sgt i32 %46, %47
  br i1 %cmp31, label %if.then.32, label %if.end.33

if.then.32:                                       ; preds = %if.end.30
  br label %for.inc

if.end.33:                                        ; preds = %if.end.30
  %48 = load %struct.canvas*, %struct.canvas** %cv, align 8
  %c_display34 = getelementptr inbounds %struct.canvas, %struct.canvas* %48, i32 0, i32 1
  %49 = load %struct.display*, %struct.display** %c_display34, align 8
  store %struct.display* %49, %struct.display** @display, align 8
  br label %do.body

do.body:                                          ; preds = %if.end.33
  br label %do.end

do.end:                                           ; preds = %do.body
  br label %do.body.35

do.body.35:                                       ; preds = %do.end
  br label %do.end.36

do.end.36:                                        ; preds = %do.body.35
  %50 = load i32, i32* %isblank.addr, align 4
  %tobool37 = icmp ne i32 %50, 0
  %cond = select i1 %tobool37, %struct.mline* @mline_blank, %struct.mline* @mline_null
  %51 = load %struct.layer*, %struct.layer** %l.addr, align 8
  %l_encoding = getelementptr inbounds %struct.layer, %struct.layer* %51, i32 0, i32 5
  %52 = load i32, i32* %l_encoding, align 4
  %cmp38 = icmp eq i32 %52, 8
  %conv = zext i1 %cmp38 to i32
  %53 = load %struct.display*, %struct.display** @display, align 8
  %d_encoding = getelementptr inbounds %struct.display, %struct.display* %53, i32 0, i32 28
  %54 = load i32, i32* %d_encoding, align 4
  %cmp39 = icmp eq i32 %54, 8
  %conv40 = zext i1 %cmp39 to i32
  %cmp41 = icmp ne i32 %conv, %conv40
  br i1 %cmp41, label %cond.true, label %cond.false

cond.true:                                        ; preds = %do.end.36
  %55 = load %struct.mline*, %struct.mline** %ml.addr, align 8
  %56 = load %struct.layer*, %struct.layer** %l.addr, align 8
  %l_width = getelementptr inbounds %struct.layer, %struct.layer* %56, i32 0, i32 1
  %57 = load i32, i32* %l_width, align 4
  %58 = load %struct.layer*, %struct.layer** %l.addr, align 8
  %l_encoding43 = getelementptr inbounds %struct.layer, %struct.layer* %58, i32 0, i32 5
  %59 = load i32, i32* %l_encoding43, align 4
  %60 = load %struct.display*, %struct.display** @display, align 8
  %d_encoding44 = getelementptr inbounds %struct.display, %struct.display* %60, i32 0, i32 28
  %61 = load i32, i32* %d_encoding44, align 4
  %call = call %struct.mline* @recode_mline(%struct.mline* %55, i32 %57, i32 %59, i32 %61)
  br label %cond.end

cond.false:                                       ; preds = %do.end.36
  %62 = load %struct.mline*, %struct.mline** %ml.addr, align 8
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond45 = phi %struct.mline* [ %call, %cond.true ], [ %62, %cond.false ]
  %63 = load %struct.viewport*, %struct.viewport** %vp, align 8
  %v_xoff46 = getelementptr inbounds %struct.viewport, %struct.viewport* %63, i32 0, i32 2
  %64 = load i32, i32* %v_xoff46, align 4
  %sub = sub nsw i32 0, %64
  %call47 = call %struct.mline* @mloff(%struct.mline* %cond45, i32 %sub)
  %65 = load i32, i32* %y2, align 4
  %66 = load i32, i32* %xs2, align 4
  %67 = load i32, i32* %xe2, align 4
  call void @DisplayLine(%struct.mline* %cond, %struct.mline* %call47, i32 %65, i32 %66, i32 %67)
  br label %for.inc

for.inc:                                          ; preds = %cond.end, %if.then.32, %if.then.21
  %68 = load %struct.viewport*, %struct.viewport** %vp, align 8
  %v_next = getelementptr inbounds %struct.viewport, %struct.viewport* %68, i32 0, i32 0
  %69 = load %struct.viewport*, %struct.viewport** %v_next, align 8
  store %struct.viewport* %69, %struct.viewport** %vp, align 8
  br label %for.cond.14

for.end:                                          ; preds = %for.cond.14
  br label %for.inc.48

for.inc.48:                                       ; preds = %for.end, %if.then.12, %if.then.9
  %70 = load %struct.canvas*, %struct.canvas** %cv, align 8
  %c_lnext = getelementptr inbounds %struct.canvas, %struct.canvas* %70, i32 0, i32 10
  %71 = load %struct.canvas*, %struct.canvas** %c_lnext, align 8
  store %struct.canvas* %71, %struct.canvas** %cv, align 8
  br label %for.cond

for.end.49:                                       ; preds = %for.cond
  ret void
}

declare void @DisplayLine(%struct.mline*, %struct.mline*, i32, i32, i32) #1

; Function Attrs: nounwind uwtable
define void @LCDisplayLineWrap(%struct.layer* %l, %struct.mline* %ml, i32 %y, i32 %from, i32 %to, i32 %isblank) #0 {
entry:
  %l.addr = alloca %struct.layer*, align 8
  %ml.addr = alloca %struct.mline*, align 8
  %y.addr = alloca i32, align 4
  %from.addr = alloca i32, align 4
  %to.addr = alloca i32, align 4
  %isblank.addr = alloca i32, align 4
  %nc = alloca %struct.mchar, align 1
  store %struct.layer* %l, %struct.layer** %l.addr, align 8
  store %struct.mline* %ml, %struct.mline** %ml.addr, align 8
  store i32 %y, i32* %y.addr, align 4
  store i32 %from, i32* %from.addr, align 4
  store i32 %to, i32* %to.addr, align 4
  store i32 %isblank, i32* %isblank.addr, align 4
  br label %do.body

do.body:                                          ; preds = %entry
  %0 = load %struct.mline*, %struct.mline** %ml.addr, align 8
  %image = getelementptr inbounds %struct.mline, %struct.mline* %0, i32 0, i32 0
  %1 = load i8*, i8** %image, align 8
  %arrayidx = getelementptr inbounds i8, i8* %1, i64 0
  %2 = load i8, i8* %arrayidx, align 1
  %image1 = getelementptr inbounds %struct.mchar, %struct.mchar* %nc, i32 0, i32 0
  store i8 %2, i8* %image1, align 1
  %3 = load %struct.mline*, %struct.mline** %ml.addr, align 8
  %attr = getelementptr inbounds %struct.mline, %struct.mline* %3, i32 0, i32 1
  %4 = load i8*, i8** %attr, align 8
  %arrayidx2 = getelementptr inbounds i8, i8* %4, i64 0
  %5 = load i8, i8* %arrayidx2, align 1
  %attr3 = getelementptr inbounds %struct.mchar, %struct.mchar* %nc, i32 0, i32 1
  store i8 %5, i8* %attr3, align 1
  %6 = load %struct.mline*, %struct.mline** %ml.addr, align 8
  %font = getelementptr inbounds %struct.mline, %struct.mline* %6, i32 0, i32 2
  %7 = load i8*, i8** %font, align 8
  %arrayidx4 = getelementptr inbounds i8, i8* %7, i64 0
  %8 = load i8, i8* %arrayidx4, align 1
  %font5 = getelementptr inbounds %struct.mchar, %struct.mchar* %nc, i32 0, i32 2
  store i8 %8, i8* %font5, align 1
  %9 = load %struct.mline*, %struct.mline** %ml.addr, align 8
  %fontx = getelementptr inbounds %struct.mline, %struct.mline* %9, i32 0, i32 3
  %10 = load i8*, i8** %fontx, align 8
  %arrayidx6 = getelementptr inbounds i8, i8* %10, i64 0
  %11 = load i8, i8* %arrayidx6, align 1
  %fontx7 = getelementptr inbounds %struct.mchar, %struct.mchar* %nc, i32 0, i32 3
  store i8 %11, i8* %fontx7, align 1
  %12 = load %struct.mline*, %struct.mline** %ml.addr, align 8
  %color = getelementptr inbounds %struct.mline, %struct.mline* %12, i32 0, i32 4
  %13 = load i8*, i8** %color, align 8
  %arrayidx8 = getelementptr inbounds i8, i8* %13, i64 0
  %14 = load i8, i8* %arrayidx8, align 1
  %color9 = getelementptr inbounds %struct.mchar, %struct.mchar* %nc, i32 0, i32 4
  store i8 %14, i8* %color9, align 1
  %mbcs = getelementptr inbounds %struct.mchar, %struct.mchar* %nc, i32 0, i32 5
  store i8 0, i8* %mbcs, align 1
  br label %do.end

do.end:                                           ; preds = %do.body
  %15 = load %struct.layer*, %struct.layer** %l.addr, align 8
  %l_encoding = getelementptr inbounds %struct.layer, %struct.layer* %15, i32 0, i32 5
  %16 = load i32, i32* %l_encoding, align 4
  %cmp = icmp eq i32 %16, 8
  br i1 %cmp, label %cond.true, label %cond.false

cond.true:                                        ; preds = %do.end
  %17 = load %struct.mline*, %struct.mline** %ml.addr, align 8
  %font10 = getelementptr inbounds %struct.mline, %struct.mline* %17, i32 0, i32 2
  %18 = load i8*, i8** %font10, align 8
  %arrayidx11 = getelementptr inbounds i8, i8* %18, i64 1
  %19 = load i8, i8* %arrayidx11, align 1
  %conv = zext i8 %19 to i32
  %cmp12 = icmp eq i32 %conv, 255
  br i1 %cmp12, label %land.lhs.true, label %if.end

land.lhs.true:                                    ; preds = %cond.true
  %20 = load %struct.mline*, %struct.mline** %ml.addr, align 8
  %image14 = getelementptr inbounds %struct.mline, %struct.mline* %20, i32 0, i32 0
  %21 = load i8*, i8** %image14, align 8
  %arrayidx15 = getelementptr inbounds i8, i8* %21, i64 1
  %22 = load i8, i8* %arrayidx15, align 1
  %conv16 = zext i8 %22 to i32
  %cmp17 = icmp eq i32 %conv16, 255
  br i1 %cmp17, label %if.then, label %if.end

cond.false:                                       ; preds = %do.end
  %23 = load %struct.mline*, %struct.mline** %ml.addr, align 8
  %font19 = getelementptr inbounds %struct.mline, %struct.mline* %23, i32 0, i32 2
  %24 = load i8*, i8** %font19, align 8
  %arrayidx20 = getelementptr inbounds i8, i8* %24, i64 0
  %25 = load i8, i8* %arrayidx20, align 1
  %conv21 = zext i8 %25 to i32
  %and = and i32 %conv21, 31
  %cmp22 = icmp ne i32 %and, 0
  br i1 %cmp22, label %land.lhs.true.24, label %if.end

land.lhs.true.24:                                 ; preds = %cond.false
  %26 = load %struct.mline*, %struct.mline** %ml.addr, align 8
  %font25 = getelementptr inbounds %struct.mline, %struct.mline* %26, i32 0, i32 2
  %27 = load i8*, i8** %font25, align 8
  %arrayidx26 = getelementptr inbounds i8, i8* %27, i64 0
  %28 = load i8, i8* %arrayidx26, align 1
  %conv27 = zext i8 %28 to i32
  %and28 = and i32 %conv27, 224
  %cmp29 = icmp eq i32 %and28, 0
  br i1 %cmp29, label %if.then, label %if.end

if.then:                                          ; preds = %land.lhs.true.24, %land.lhs.true
  %29 = load %struct.mline*, %struct.mline** %ml.addr, align 8
  %image31 = getelementptr inbounds %struct.mline, %struct.mline* %29, i32 0, i32 0
  %30 = load i8*, i8** %image31, align 8
  %arrayidx32 = getelementptr inbounds i8, i8* %30, i64 1
  %31 = load i8, i8* %arrayidx32, align 1
  %mbcs33 = getelementptr inbounds %struct.mchar, %struct.mchar* %nc, i32 0, i32 5
  store i8 %31, i8* %mbcs33, align 1
  %32 = load i32, i32* %from.addr, align 4
  %inc = add nsw i32 %32, 1
  store i32 %inc, i32* %from.addr, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %land.lhs.true.24, %cond.false, %land.lhs.true, %cond.true
  %33 = load %struct.layer*, %struct.layer** %l.addr, align 8
  %34 = load i32, i32* %y.addr, align 4
  %sub = sub nsw i32 %34, 1
  call void @LWrapChar(%struct.layer* %33, %struct.mchar* %nc, i32 %sub, i32 -1, i32 -1, i32 0)
  %35 = load i32, i32* %from.addr, align 4
  %inc34 = add nsw i32 %35, 1
  store i32 %inc34, i32* %from.addr, align 4
  %36 = load i32, i32* %from.addr, align 4
  %37 = load i32, i32* %to.addr, align 4
  %cmp35 = icmp sle i32 %36, %37
  br i1 %cmp35, label %if.then.37, label %if.end.38

if.then.37:                                       ; preds = %if.end
  %38 = load %struct.layer*, %struct.layer** %l.addr, align 8
  %39 = load %struct.mline*, %struct.mline** %ml.addr, align 8
  %40 = load i32, i32* %y.addr, align 4
  %41 = load i32, i32* %from.addr, align 4
  %42 = load i32, i32* %to.addr, align 4
  %43 = load i32, i32* %isblank.addr, align 4
  call void @LCDisplayLine(%struct.layer* %38, %struct.mline* %39, i32 %40, i32 %41, i32 %42, i32 %43)
  br label %if.end.38

if.end.38:                                        ; preds = %if.then.37, %if.end
  ret void
}

; Function Attrs: nounwind uwtable
define void @LWrapChar(%struct.layer* %l, %struct.mchar* %c, i32 %y, i32 %top, i32 %bot, i32 %ins) #0 {
entry:
  %l.addr = alloca %struct.layer*, align 8
  %c.addr = alloca %struct.mchar*, align 8
  %y.addr = alloca i32, align 4
  %top.addr = alloca i32, align 4
  %bot.addr = alloca i32, align 4
  %ins.addr = alloca i32, align 4
  %cv = alloca %struct.canvas*, align 8
  %cvlist = alloca %struct.canvas*, align 8
  %cvlnext = alloca %struct.canvas*, align 8
  %vp = alloca %struct.viewport*, align 8
  %evp = alloca %struct.viewport*, align 8
  %vpp = alloca %struct.viewport**, align 8
  %yy = alloca i32, align 4
  %y2 = alloca i32, align 4
  %yy2 = alloca i32, align 4
  %top2 = alloca i32, align 4
  %bot2 = alloca i32, align 4
  %bce = alloca i32, align 4
  store %struct.layer* %l, %struct.layer** %l.addr, align 8
  store %struct.mchar* %c, %struct.mchar** %c.addr, align 8
  store i32 %y, i32* %y.addr, align 4
  store i32 %top, i32* %top.addr, align 4
  store i32 %bot, i32* %bot.addr, align 4
  store i32 %ins, i32* %ins.addr, align 4
  %0 = load %struct.layer*, %struct.layer** %l.addr, align 8
  %l_pause = getelementptr inbounds %struct.layer, %struct.layer* %0, i32 0, i32 13
  %1 = bitcast %struct.anon.0* %l_pause to i8*
  %bf.load = load i8, i8* %1, align 8
  %bf.shl = shl i8 %bf.load, 7
  %bf.ashr = ashr i8 %bf.shl, 7
  %bf.cast = sext i8 %bf.ashr to i32
  %tobool = icmp ne i32 %bf.cast, 0
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %2 = load %struct.layer*, %struct.layer** %l.addr, align 8
  %3 = load %struct.layer*, %struct.layer** %l.addr, align 8
  %l_width = getelementptr inbounds %struct.layer, %struct.layer* %3, i32 0, i32 1
  %4 = load i32, i32* %l_width, align 4
  %sub = sub nsw i32 %4, 1
  %5 = load i32, i32* %top.addr, align 4
  %6 = load i32, i32* %bot.addr, align 4
  call void @LayPauseUpdateRegion(%struct.layer* %2, i32 0, i32 %sub, i32 %5, i32 %6)
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %7 = load %struct.mchar*, %struct.mchar** %c.addr, align 8
  %color = getelementptr inbounds %struct.mchar, %struct.mchar* %7, i32 0, i32 4
  %8 = load i8, i8* %color, align 1
  %conv = zext i8 %8 to i32
  %and = and i32 %conv, 240
  %shr = ashr i32 %and, 4
  %9 = load %struct.mchar*, %struct.mchar** %c.addr, align 8
  %attr = getelementptr inbounds %struct.mchar, %struct.mchar* %9, i32 0, i32 1
  %10 = load i8, i8* %attr, align 1
  %conv1 = zext i8 %10 to i32
  %and2 = and i32 %conv1, 128
  %tobool3 = icmp ne i32 %and2, 0
  %cond = select i1 %tobool3, i32 256, i32 0
  %or = or i32 %shr, %cond
  store i32 %or, i32* %bce, align 4
  %11 = load i32, i32* %y.addr, align 4
  %12 = load i32, i32* %bot.addr, align 4
  %cmp = icmp ne i32 %11, %12
  br i1 %cmp, label %if.then.5, label %if.else.124

if.then.5:                                        ; preds = %if.end
  %13 = load i32, i32* %y.addr, align 4
  %14 = load %struct.layer*, %struct.layer** %l.addr, align 8
  %l_height = getelementptr inbounds %struct.layer, %struct.layer* %14, i32 0, i32 2
  %15 = load i32, i32* %l_height, align 4
  %sub6 = sub nsw i32 %15, 1
  %cmp7 = icmp eq i32 %13, %sub6
  br i1 %cmp7, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.then.5
  %16 = load i32, i32* %y.addr, align 4
  br label %cond.end

cond.false:                                       ; preds = %if.then.5
  %17 = load i32, i32* %y.addr, align 4
  %add = add nsw i32 %17, 1
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond9 = phi i32 [ %16, %cond.true ], [ %add, %cond.false ]
  store i32 %cond9, i32* %yy, align 4
  %18 = load %struct.layer*, %struct.layer** %l.addr, align 8
  %l_cvlist = getelementptr inbounds %struct.layer, %struct.layer* %18, i32 0, i32 0
  %19 = load %struct.canvas*, %struct.canvas** %l_cvlist, align 8
  store %struct.canvas* %19, %struct.canvas** %cv, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.inc.121, %cond.end
  %20 = load %struct.canvas*, %struct.canvas** %cv, align 8
  %tobool10 = icmp ne %struct.canvas* %20, null
  br i1 %tobool10, label %for.body, label %for.end.123

for.body:                                         ; preds = %for.cond
  %21 = load %struct.layer*, %struct.layer** %l.addr, align 8
  %l_pause11 = getelementptr inbounds %struct.layer, %struct.layer* %21, i32 0, i32 13
  %22 = bitcast %struct.anon.0* %l_pause11 to i8*
  %bf.load12 = load i8, i8* %22, align 8
  %bf.shl13 = shl i8 %bf.load12, 7
  %bf.ashr14 = ashr i8 %bf.shl13, 7
  %bf.cast15 = sext i8 %bf.ashr14 to i32
  %tobool16 = icmp ne i32 %bf.cast15, 0
  br i1 %tobool16, label %land.lhs.true, label %if.end.19

land.lhs.true:                                    ; preds = %for.body
  %23 = load %struct.canvas*, %struct.canvas** %cv, align 8
  %c_slorient = getelementptr inbounds %struct.canvas, %struct.canvas* %23, i32 0, i32 6
  %24 = load i32, i32* %c_slorient, align 4
  %tobool17 = icmp ne i32 %24, 0
  br i1 %tobool17, label %if.then.18, label %if.end.19

if.then.18:                                       ; preds = %land.lhs.true
  br label %for.inc.121

if.end.19:                                        ; preds = %land.lhs.true, %for.body
  store i32 0, i32* %y2, align 4
  %25 = load %struct.canvas*, %struct.canvas** %cv, align 8
  %c_display = getelementptr inbounds %struct.canvas, %struct.canvas* %25, i32 0, i32 1
  %26 = load %struct.display*, %struct.display** %c_display, align 8
  store %struct.display* %26, %struct.display** @display, align 8
  %27 = load %struct.display*, %struct.display** @display, align 8
  %d_blocked = getelementptr inbounds %struct.display, %struct.display* %27, i32 0, i32 102
  %28 = load i32, i32* %d_blocked, align 4
  %tobool20 = icmp ne i32 %28, 0
  br i1 %tobool20, label %if.then.21, label %if.end.22

if.then.21:                                       ; preds = %if.end.19
  br label %for.inc.121

if.end.22:                                        ; preds = %if.end.19
  %29 = load %struct.canvas*, %struct.canvas** %cv, align 8
  %c_vplist = getelementptr inbounds %struct.canvas, %struct.canvas* %29, i32 0, i32 8
  %30 = load %struct.viewport*, %struct.viewport** %c_vplist, align 8
  store %struct.viewport* %30, %struct.viewport** %vp, align 8
  br label %for.cond.23

for.cond.23:                                      ; preds = %for.inc, %if.end.22
  %31 = load %struct.viewport*, %struct.viewport** %vp, align 8
  %tobool24 = icmp ne %struct.viewport* %31, null
  br i1 %tobool24, label %for.body.25, label %for.end

for.body.25:                                      ; preds = %for.cond.23
  %32 = load i32, i32* %y.addr, align 4
  %33 = load %struct.viewport*, %struct.viewport** %vp, align 8
  %v_yoff = getelementptr inbounds %struct.viewport, %struct.viewport* %33, i32 0, i32 3
  %34 = load i32, i32* %v_yoff, align 4
  %add26 = add nsw i32 %32, %34
  store i32 %add26, i32* %y2, align 4
  %35 = load i32, i32* %yy, align 4
  %36 = load %struct.viewport*, %struct.viewport** %vp, align 8
  %v_yoff27 = getelementptr inbounds %struct.viewport, %struct.viewport* %36, i32 0, i32 3
  %37 = load i32, i32* %v_yoff27, align 4
  %add28 = add nsw i32 %35, %37
  store i32 %add28, i32* %yy2, align 4
  %38 = load i32, i32* %yy2, align 4
  %39 = load %struct.viewport*, %struct.viewport** %vp, align 8
  %v_ys = getelementptr inbounds %struct.viewport, %struct.viewport* %39, i32 0, i32 6
  %40 = load i32, i32* %v_ys, align 4
  %cmp29 = icmp sge i32 %38, %40
  br i1 %cmp29, label %land.lhs.true.31, label %if.end.42

land.lhs.true.31:                                 ; preds = %for.body.25
  %41 = load i32, i32* %yy2, align 4
  %42 = load %struct.viewport*, %struct.viewport** %vp, align 8
  %v_ye = getelementptr inbounds %struct.viewport, %struct.viewport* %42, i32 0, i32 7
  %43 = load i32, i32* %v_ye, align 4
  %cmp32 = icmp sle i32 %41, %43
  br i1 %cmp32, label %land.lhs.true.34, label %if.end.42

land.lhs.true.34:                                 ; preds = %land.lhs.true.31
  %44 = load %struct.viewport*, %struct.viewport** %vp, align 8
  %v_xoff = getelementptr inbounds %struct.viewport, %struct.viewport* %44, i32 0, i32 2
  %45 = load i32, i32* %v_xoff, align 4
  %46 = load %struct.viewport*, %struct.viewport** %vp, align 8
  %v_xs = getelementptr inbounds %struct.viewport, %struct.viewport* %46, i32 0, i32 4
  %47 = load i32, i32* %v_xs, align 4
  %cmp35 = icmp sge i32 %45, %47
  br i1 %cmp35, label %land.lhs.true.37, label %if.end.42

land.lhs.true.37:                                 ; preds = %land.lhs.true.34
  %48 = load %struct.viewport*, %struct.viewport** %vp, align 8
  %v_xoff38 = getelementptr inbounds %struct.viewport, %struct.viewport* %48, i32 0, i32 2
  %49 = load i32, i32* %v_xoff38, align 4
  %50 = load %struct.viewport*, %struct.viewport** %vp, align 8
  %v_xe = getelementptr inbounds %struct.viewport, %struct.viewport* %50, i32 0, i32 5
  %51 = load i32, i32* %v_xe, align 4
  %cmp39 = icmp sle i32 %49, %51
  br i1 %cmp39, label %if.then.41, label %if.end.42

if.then.41:                                       ; preds = %land.lhs.true.37
  br label %for.end

if.end.42:                                        ; preds = %land.lhs.true.37, %land.lhs.true.34, %land.lhs.true.31, %for.body.25
  br label %for.inc

for.inc:                                          ; preds = %if.end.42
  %52 = load %struct.viewport*, %struct.viewport** %vp, align 8
  %v_next = getelementptr inbounds %struct.viewport, %struct.viewport* %52, i32 0, i32 0
  %53 = load %struct.viewport*, %struct.viewport** %v_next, align 8
  store %struct.viewport* %53, %struct.viewport** %vp, align 8
  br label %for.cond.23

for.end:                                          ; preds = %if.then.41, %for.cond.23
  %54 = load %struct.viewport*, %struct.viewport** %vp, align 8
  %cmp43 = icmp eq %struct.viewport* %54, null
  br i1 %cmp43, label %if.then.45, label %if.end.46

if.then.45:                                       ; preds = %for.end
  br label %for.inc.121

if.end.46:                                        ; preds = %for.end
  %55 = load %struct.canvas*, %struct.canvas** %cv, align 8
  %c_vplist47 = getelementptr inbounds %struct.canvas, %struct.canvas* %55, i32 0, i32 8
  %56 = load %struct.viewport*, %struct.viewport** %c_vplist47, align 8
  store %struct.viewport* %56, %struct.viewport** %evp, align 8
  br label %for.cond.48

for.cond.48:                                      ; preds = %for.inc.76, %if.end.46
  %57 = load %struct.viewport*, %struct.viewport** %evp, align 8
  %tobool49 = icmp ne %struct.viewport* %57, null
  br i1 %tobool49, label %for.body.50, label %for.end.78

for.body.50:                                      ; preds = %for.cond.48
  %58 = load i32, i32* %y2, align 4
  %59 = load %struct.viewport*, %struct.viewport** %evp, align 8
  %v_ys51 = getelementptr inbounds %struct.viewport, %struct.viewport* %59, i32 0, i32 6
  %60 = load i32, i32* %v_ys51, align 4
  %cmp52 = icmp sge i32 %58, %60
  br i1 %cmp52, label %land.lhs.true.54, label %if.end.75

land.lhs.true.54:                                 ; preds = %for.body.50
  %61 = load i32, i32* %y2, align 4
  %62 = load %struct.viewport*, %struct.viewport** %evp, align 8
  %v_ye55 = getelementptr inbounds %struct.viewport, %struct.viewport* %62, i32 0, i32 7
  %63 = load i32, i32* %v_ye55, align 4
  %cmp56 = icmp sle i32 %61, %63
  br i1 %cmp56, label %land.lhs.true.58, label %if.end.75

land.lhs.true.58:                                 ; preds = %land.lhs.true.54
  %64 = load %struct.viewport*, %struct.viewport** %evp, align 8
  %v_xoff59 = getelementptr inbounds %struct.viewport, %struct.viewport* %64, i32 0, i32 2
  %65 = load i32, i32* %v_xoff59, align 4
  %66 = load %struct.layer*, %struct.layer** %l.addr, align 8
  %l_width60 = getelementptr inbounds %struct.layer, %struct.layer* %66, i32 0, i32 1
  %67 = load i32, i32* %l_width60, align 4
  %add61 = add nsw i32 %65, %67
  %sub62 = sub nsw i32 %add61, 1
  %68 = load %struct.viewport*, %struct.viewport** %evp, align 8
  %v_xs63 = getelementptr inbounds %struct.viewport, %struct.viewport* %68, i32 0, i32 4
  %69 = load i32, i32* %v_xs63, align 4
  %cmp64 = icmp sge i32 %sub62, %69
  br i1 %cmp64, label %land.lhs.true.66, label %if.end.75

land.lhs.true.66:                                 ; preds = %land.lhs.true.58
  %70 = load %struct.viewport*, %struct.viewport** %evp, align 8
  %v_xoff67 = getelementptr inbounds %struct.viewport, %struct.viewport* %70, i32 0, i32 2
  %71 = load i32, i32* %v_xoff67, align 4
  %72 = load %struct.layer*, %struct.layer** %l.addr, align 8
  %l_width68 = getelementptr inbounds %struct.layer, %struct.layer* %72, i32 0, i32 1
  %73 = load i32, i32* %l_width68, align 4
  %add69 = add nsw i32 %71, %73
  %sub70 = sub nsw i32 %add69, 1
  %74 = load %struct.viewport*, %struct.viewport** %evp, align 8
  %v_xe71 = getelementptr inbounds %struct.viewport, %struct.viewport* %74, i32 0, i32 5
  %75 = load i32, i32* %v_xe71, align 4
  %cmp72 = icmp sle i32 %sub70, %75
  br i1 %cmp72, label %if.then.74, label %if.end.75

if.then.74:                                       ; preds = %land.lhs.true.66
  br label %for.end.78

if.end.75:                                        ; preds = %land.lhs.true.66, %land.lhs.true.58, %land.lhs.true.54, %for.body.50
  br label %for.inc.76

for.inc.76:                                       ; preds = %if.end.75
  %76 = load %struct.viewport*, %struct.viewport** %evp, align 8
  %v_next77 = getelementptr inbounds %struct.viewport, %struct.viewport* %76, i32 0, i32 0
  %77 = load %struct.viewport*, %struct.viewport** %v_next77, align 8
  store %struct.viewport* %77, %struct.viewport** %evp, align 8
  br label %for.cond.48

for.end.78:                                       ; preds = %if.then.74, %for.cond.48
  %78 = load %struct.viewport*, %struct.viewport** %evp, align 8
  %cmp79 = icmp eq %struct.viewport* %78, null
  br i1 %cmp79, label %if.then.90, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %for.end.78
  %79 = load i32, i32* %ins.addr, align 4
  %tobool81 = icmp ne i32 %79, 0
  br i1 %tobool81, label %land.lhs.true.82, label %if.else.99

land.lhs.true.82:                                 ; preds = %lor.lhs.false
  %80 = load %struct.viewport*, %struct.viewport** %vp, align 8
  %v_xoff83 = getelementptr inbounds %struct.viewport, %struct.viewport* %80, i32 0, i32 2
  %81 = load i32, i32* %v_xoff83, align 4
  %82 = load %struct.layer*, %struct.layer** %l.addr, align 8
  %l_width84 = getelementptr inbounds %struct.layer, %struct.layer* %82, i32 0, i32 1
  %83 = load i32, i32* %l_width84, align 4
  %add85 = add nsw i32 %81, %83
  %sub86 = sub nsw i32 %add85, 1
  %84 = load %struct.viewport*, %struct.viewport** %vp, align 8
  %v_ye87 = getelementptr inbounds %struct.viewport, %struct.viewport* %84, i32 0, i32 7
  %85 = load i32, i32* %v_ye87, align 4
  %cmp88 = icmp sgt i32 %sub86, %85
  br i1 %cmp88, label %if.then.90, label %if.else.99

if.then.90:                                       ; preds = %land.lhs.true.82, %for.end.78
  br label %do.body

do.body:                                          ; preds = %if.then.90
  br label %do.end

do.end:                                           ; preds = %do.body
  %86 = load %struct.layer*, %struct.layer** %l.addr, align 8
  %l_cvlist91 = getelementptr inbounds %struct.layer, %struct.layer* %86, i32 0, i32 0
  %87 = load %struct.canvas*, %struct.canvas** %l_cvlist91, align 8
  store %struct.canvas* %87, %struct.canvas** %cvlist, align 8
  %88 = load %struct.canvas*, %struct.canvas** %cv, align 8
  %c_lnext = getelementptr inbounds %struct.canvas, %struct.canvas* %88, i32 0, i32 10
  %89 = load %struct.canvas*, %struct.canvas** %c_lnext, align 8
  store %struct.canvas* %89, %struct.canvas** %cvlnext, align 8
  %90 = load %struct.canvas*, %struct.canvas** %cv, align 8
  %91 = load %struct.layer*, %struct.layer** %l.addr, align 8
  %l_cvlist92 = getelementptr inbounds %struct.layer, %struct.layer* %91, i32 0, i32 0
  store %struct.canvas* %90, %struct.canvas** %l_cvlist92, align 8
  %92 = load %struct.canvas*, %struct.canvas** %cv, align 8
  %c_lnext93 = getelementptr inbounds %struct.canvas, %struct.canvas* %92, i32 0, i32 10
  store %struct.canvas* null, %struct.canvas** %c_lnext93, align 8
  %93 = load i32, i32* %ins.addr, align 4
  %tobool94 = icmp ne i32 %93, 0
  br i1 %tobool94, label %if.then.95, label %if.else

if.then.95:                                       ; preds = %do.end
  %94 = load %struct.layer*, %struct.layer** %l.addr, align 8
  %95 = load %struct.mchar*, %struct.mchar** %c.addr, align 8
  %96 = load i32, i32* %yy, align 4
  call void @LInsChar(%struct.layer* %94, %struct.mchar* %95, i32 0, i32 %96, %struct.mline* null)
  br label %if.end.96

if.else:                                          ; preds = %do.end
  %97 = load %struct.layer*, %struct.layer** %l.addr, align 8
  %98 = load %struct.mchar*, %struct.mchar** %c.addr, align 8
  %99 = load i32, i32* %yy, align 4
  call void @LPutChar(%struct.layer* %97, %struct.mchar* %98, i32 0, i32 %99)
  br label %if.end.96

if.end.96:                                        ; preds = %if.else, %if.then.95
  %100 = load %struct.canvas*, %struct.canvas** %cvlist, align 8
  %101 = load %struct.layer*, %struct.layer** %l.addr, align 8
  %l_cvlist97 = getelementptr inbounds %struct.layer, %struct.layer* %101, i32 0, i32 0
  store %struct.canvas* %100, %struct.canvas** %l_cvlist97, align 8
  %102 = load %struct.canvas*, %struct.canvas** %cvlnext, align 8
  %103 = load %struct.canvas*, %struct.canvas** %cv, align 8
  %c_lnext98 = getelementptr inbounds %struct.canvas, %struct.canvas* %103, i32 0, i32 10
  store %struct.canvas* %102, %struct.canvas** %c_lnext98, align 8
  br label %if.end.120

if.else.99:                                       ; preds = %land.lhs.true.82, %lor.lhs.false
  %104 = load %struct.layer*, %struct.layer** %l.addr, align 8
  %l_encoding = getelementptr inbounds %struct.layer, %struct.layer* %104, i32 0, i32 5
  %105 = load i32, i32* %l_encoding, align 4
  %cmp100 = icmp eq i32 %105, 8
  %conv101 = zext i1 %cmp100 to i32
  %106 = load %struct.display*, %struct.display** @display, align 8
  %d_encoding = getelementptr inbounds %struct.display, %struct.display* %106, i32 0, i32 28
  %107 = load i32, i32* %d_encoding, align 4
  %cmp102 = icmp eq i32 %107, 8
  %conv103 = zext i1 %cmp102 to i32
  %cmp104 = icmp ne i32 %conv101, %conv103
  br i1 %cmp104, label %cond.true.106, label %cond.false.109

cond.true.106:                                    ; preds = %if.else.99
  %108 = load %struct.mchar*, %struct.mchar** %c.addr, align 8
  %109 = load %struct.layer*, %struct.layer** %l.addr, align 8
  %l_encoding107 = getelementptr inbounds %struct.layer, %struct.layer* %109, i32 0, i32 5
  %110 = load i32, i32* %l_encoding107, align 4
  %111 = load %struct.display*, %struct.display** @display, align 8
  %d_encoding108 = getelementptr inbounds %struct.display, %struct.display* %111, i32 0, i32 28
  %112 = load i32, i32* %d_encoding108, align 4
  %call = call %struct.mchar* @recode_mchar(%struct.mchar* %108, i32 %110, i32 %112)
  br label %cond.end.110

cond.false.109:                                   ; preds = %if.else.99
  %113 = load %struct.mchar*, %struct.mchar** %c.addr, align 8
  br label %cond.end.110

cond.end.110:                                     ; preds = %cond.false.109, %cond.true.106
  %cond111 = phi %struct.mchar* [ %call, %cond.true.106 ], [ %113, %cond.false.109 ]
  %114 = load %struct.viewport*, %struct.viewport** %vp, align 8
  %v_xoff112 = getelementptr inbounds %struct.viewport, %struct.viewport* %114, i32 0, i32 2
  %115 = load i32, i32* %v_xoff112, align 4
  %116 = load %struct.layer*, %struct.layer** %l.addr, align 8
  %l_width113 = getelementptr inbounds %struct.layer, %struct.layer* %116, i32 0, i32 1
  %117 = load i32, i32* %l_width113, align 4
  %add114 = add nsw i32 %115, %117
  %118 = load i32, i32* %y2, align 4
  %119 = load %struct.viewport*, %struct.viewport** %vp, align 8
  %v_xoff115 = getelementptr inbounds %struct.viewport, %struct.viewport* %119, i32 0, i32 2
  %120 = load i32, i32* %v_xoff115, align 4
  %121 = load %struct.viewport*, %struct.viewport** %vp, align 8
  %v_xoff116 = getelementptr inbounds %struct.viewport, %struct.viewport* %121, i32 0, i32 2
  %122 = load i32, i32* %v_xoff116, align 4
  %123 = load %struct.layer*, %struct.layer** %l.addr, align 8
  %l_width117 = getelementptr inbounds %struct.layer, %struct.layer* %123, i32 0, i32 1
  %124 = load i32, i32* %l_width117, align 4
  %add118 = add nsw i32 %122, %124
  %sub119 = sub nsw i32 %add118, 1
  %125 = load i32, i32* %ins.addr, align 4
  call void @WrapChar(%struct.mchar* %cond111, i32 %add114, i32 %118, i32 %120, i32 -1, i32 %sub119, i32 -1, i32 %125)
  br label %if.end.120

if.end.120:                                       ; preds = %cond.end.110, %if.end.96
  br label %for.inc.121

for.inc.121:                                      ; preds = %if.end.120, %if.then.45, %if.then.21, %if.then.18
  %126 = load %struct.canvas*, %struct.canvas** %cv, align 8
  %c_lnext122 = getelementptr inbounds %struct.canvas, %struct.canvas* %126, i32 0, i32 10
  %127 = load %struct.canvas*, %struct.canvas** %c_lnext122, align 8
  store %struct.canvas* %127, %struct.canvas** %cv, align 8
  br label %for.cond

for.end.123:                                      ; preds = %for.cond
  br label %if.end.236

if.else.124:                                      ; preds = %if.end
  %128 = load %struct.layer*, %struct.layer** %l.addr, align 8
  %l_cvlist125 = getelementptr inbounds %struct.layer, %struct.layer* %128, i32 0, i32 0
  %129 = load %struct.canvas*, %struct.canvas** %l_cvlist125, align 8
  store %struct.canvas* %129, %struct.canvas** %cv, align 8
  br label %for.cond.126

for.cond.126:                                     ; preds = %for.inc.233, %if.else.124
  %130 = load %struct.canvas*, %struct.canvas** %cv, align 8
  %tobool127 = icmp ne %struct.canvas* %130, null
  br i1 %tobool127, label %for.body.128, label %for.end.235

for.body.128:                                     ; preds = %for.cond.126
  %131 = load %struct.layer*, %struct.layer** %l.addr, align 8
  %l_pause129 = getelementptr inbounds %struct.layer, %struct.layer* %131, i32 0, i32 13
  %132 = bitcast %struct.anon.0* %l_pause129 to i8*
  %bf.load130 = load i8, i8* %132, align 8
  %bf.shl131 = shl i8 %bf.load130, 7
  %bf.ashr132 = ashr i8 %bf.shl131, 7
  %bf.cast133 = sext i8 %bf.ashr132 to i32
  %tobool134 = icmp ne i32 %bf.cast133, 0
  br i1 %tobool134, label %land.lhs.true.135, label %if.end.139

land.lhs.true.135:                                ; preds = %for.body.128
  %133 = load %struct.canvas*, %struct.canvas** %cv, align 8
  %c_slorient136 = getelementptr inbounds %struct.canvas, %struct.canvas* %133, i32 0, i32 6
  %134 = load i32, i32* %c_slorient136, align 4
  %tobool137 = icmp ne i32 %134, 0
  br i1 %tobool137, label %if.then.138, label %if.end.139

if.then.138:                                      ; preds = %land.lhs.true.135
  br label %for.inc.233

if.end.139:                                       ; preds = %land.lhs.true.135, %for.body.128
  %135 = load %struct.canvas*, %struct.canvas** %cv, align 8
  %c_display140 = getelementptr inbounds %struct.canvas, %struct.canvas* %135, i32 0, i32 1
  %136 = load %struct.display*, %struct.display** %c_display140, align 8
  store %struct.display* %136, %struct.display** @display, align 8
  %137 = load %struct.display*, %struct.display** @display, align 8
  %d_blocked141 = getelementptr inbounds %struct.display, %struct.display* %137, i32 0, i32 102
  %138 = load i32, i32* %d_blocked141, align 4
  %tobool142 = icmp ne i32 %138, 0
  br i1 %tobool142, label %if.then.143, label %if.end.144

if.then.143:                                      ; preds = %if.end.139
  br label %for.inc.233

if.end.144:                                       ; preds = %if.end.139
  %139 = load %struct.canvas*, %struct.canvas** %cv, align 8
  %c_vplist145 = getelementptr inbounds %struct.canvas, %struct.canvas* %139, i32 0, i32 8
  store %struct.viewport** %c_vplist145, %struct.viewport*** %vpp, align 8
  br label %for.cond.146

for.cond.146:                                     ; preds = %for.inc.173, %if.end.144
  %140 = load %struct.viewport**, %struct.viewport*** %vpp, align 8
  %141 = load %struct.viewport*, %struct.viewport** %140, align 8
  store %struct.viewport* %141, %struct.viewport** %vp, align 8
  %tobool147 = icmp ne %struct.viewport* %141, null
  br i1 %tobool147, label %for.body.148, label %for.end.175

for.body.148:                                     ; preds = %for.cond.146
  %142 = load i32, i32* %bot.addr, align 4
  %143 = load %struct.viewport*, %struct.viewport** %vp, align 8
  %v_yoff149 = getelementptr inbounds %struct.viewport, %struct.viewport* %143, i32 0, i32 3
  %144 = load i32, i32* %v_yoff149, align 4
  %add150 = add nsw i32 %142, %144
  store i32 %add150, i32* %yy2, align 4
  %145 = load i32, i32* %yy2, align 4
  %146 = load %struct.viewport*, %struct.viewport** %vp, align 8
  %v_ys151 = getelementptr inbounds %struct.viewport, %struct.viewport* %146, i32 0, i32 6
  %147 = load i32, i32* %v_ys151, align 4
  %cmp152 = icmp sge i32 %145, %147
  br i1 %cmp152, label %land.lhs.true.154, label %if.end.172

land.lhs.true.154:                                ; preds = %for.body.148
  %148 = load i32, i32* %yy2, align 4
  %149 = load %struct.viewport*, %struct.viewport** %vp, align 8
  %v_ye155 = getelementptr inbounds %struct.viewport, %struct.viewport* %149, i32 0, i32 7
  %150 = load i32, i32* %v_ye155, align 4
  %cmp156 = icmp sle i32 %148, %150
  br i1 %cmp156, label %land.lhs.true.158, label %if.end.172

land.lhs.true.158:                                ; preds = %land.lhs.true.154
  %151 = load %struct.viewport*, %struct.viewport** %vp, align 8
  %v_xoff159 = getelementptr inbounds %struct.viewport, %struct.viewport* %151, i32 0, i32 2
  %152 = load i32, i32* %v_xoff159, align 4
  %153 = load %struct.viewport*, %struct.viewport** %vp, align 8
  %v_xs160 = getelementptr inbounds %struct.viewport, %struct.viewport* %153, i32 0, i32 4
  %154 = load i32, i32* %v_xs160, align 4
  %cmp161 = icmp sge i32 %152, %154
  br i1 %cmp161, label %land.lhs.true.163, label %if.end.172

land.lhs.true.163:                                ; preds = %land.lhs.true.158
  %155 = load %struct.viewport*, %struct.viewport** %vp, align 8
  %v_xoff164 = getelementptr inbounds %struct.viewport, %struct.viewport* %155, i32 0, i32 2
  %156 = load i32, i32* %v_xoff164, align 4
  %157 = load %struct.layer*, %struct.layer** %l.addr, align 8
  %l_width165 = getelementptr inbounds %struct.layer, %struct.layer* %157, i32 0, i32 1
  %158 = load i32, i32* %l_width165, align 4
  %add166 = add nsw i32 %156, %158
  %sub167 = sub nsw i32 %add166, 1
  %159 = load %struct.viewport*, %struct.viewport** %vp, align 8
  %v_xe168 = getelementptr inbounds %struct.viewport, %struct.viewport* %159, i32 0, i32 5
  %160 = load i32, i32* %v_xe168, align 4
  %cmp169 = icmp sle i32 %sub167, %160
  br i1 %cmp169, label %if.then.171, label %if.end.172

if.then.171:                                      ; preds = %land.lhs.true.163
  br label %for.end.175

if.end.172:                                       ; preds = %land.lhs.true.163, %land.lhs.true.158, %land.lhs.true.154, %for.body.148
  br label %for.inc.173

for.inc.173:                                      ; preds = %if.end.172
  %161 = load %struct.viewport*, %struct.viewport** %vp, align 8
  %v_next174 = getelementptr inbounds %struct.viewport, %struct.viewport* %161, i32 0, i32 0
  store %struct.viewport** %v_next174, %struct.viewport*** %vpp, align 8
  br label %for.cond.146

for.end.175:                                      ; preds = %if.then.171, %for.cond.146
  %162 = load %struct.viewport*, %struct.viewport** %vp, align 8
  %tobool176 = icmp ne %struct.viewport* %162, null
  br i1 %tobool176, label %if.then.177, label %if.end.179

if.then.177:                                      ; preds = %for.end.175
  %163 = load %struct.viewport*, %struct.viewport** %vp, align 8
  %v_next178 = getelementptr inbounds %struct.viewport, %struct.viewport* %163, i32 0, i32 0
  %164 = load %struct.viewport*, %struct.viewport** %v_next178, align 8
  %165 = load %struct.viewport**, %struct.viewport*** %vpp, align 8
  store %struct.viewport* %164, %struct.viewport** %165, align 8
  br label %if.end.179

if.end.179:                                       ; preds = %if.then.177, %for.end.175
  %166 = load %struct.canvas*, %struct.canvas** %cv, align 8
  %c_vplist180 = getelementptr inbounds %struct.canvas, %struct.canvas* %166, i32 0, i32 8
  %167 = load %struct.viewport*, %struct.viewport** %c_vplist180, align 8
  %tobool181 = icmp ne %struct.viewport* %167, null
  br i1 %tobool181, label %if.then.182, label %if.end.196

if.then.182:                                      ; preds = %if.end.179
  %168 = load %struct.layer*, %struct.layer** %l.addr, align 8
  %l_cvlist183 = getelementptr inbounds %struct.layer, %struct.layer* %168, i32 0, i32 0
  %169 = load %struct.canvas*, %struct.canvas** %l_cvlist183, align 8
  store %struct.canvas* %169, %struct.canvas** %cvlist, align 8
  %170 = load %struct.canvas*, %struct.canvas** %cv, align 8
  %c_lnext184 = getelementptr inbounds %struct.canvas, %struct.canvas* %170, i32 0, i32 10
  %171 = load %struct.canvas*, %struct.canvas** %c_lnext184, align 8
  store %struct.canvas* %171, %struct.canvas** %cvlnext, align 8
  %172 = load %struct.canvas*, %struct.canvas** %cv, align 8
  %173 = load %struct.layer*, %struct.layer** %l.addr, align 8
  %l_cvlist185 = getelementptr inbounds %struct.layer, %struct.layer* %173, i32 0, i32 0
  store %struct.canvas* %172, %struct.canvas** %l_cvlist185, align 8
  %174 = load %struct.canvas*, %struct.canvas** %cv, align 8
  %c_lnext186 = getelementptr inbounds %struct.canvas, %struct.canvas* %174, i32 0, i32 10
  store %struct.canvas* null, %struct.canvas** %c_lnext186, align 8
  %175 = load %struct.layer*, %struct.layer** %l.addr, align 8
  %176 = load i32, i32* %top.addr, align 4
  %177 = load i32, i32* %bot.addr, align 4
  %178 = load i32, i32* %bce, align 4
  call void @LScrollV(%struct.layer* %175, i32 1, i32 %176, i32 %177, i32 %178)
  %179 = load %struct.viewport*, %struct.viewport** %vp, align 8
  %tobool187 = icmp ne %struct.viewport* %179, null
  br i1 %tobool187, label %if.end.193, label %if.then.188

if.then.188:                                      ; preds = %if.then.182
  %180 = load i32, i32* %ins.addr, align 4
  %tobool189 = icmp ne i32 %180, 0
  br i1 %tobool189, label %if.then.190, label %if.else.191

if.then.190:                                      ; preds = %if.then.188
  %181 = load %struct.layer*, %struct.layer** %l.addr, align 8
  %182 = load %struct.mchar*, %struct.mchar** %c.addr, align 8
  %183 = load i32, i32* %bot.addr, align 4
  call void @LInsChar(%struct.layer* %181, %struct.mchar* %182, i32 0, i32 %183, %struct.mline* null)
  br label %if.end.192

if.else.191:                                      ; preds = %if.then.188
  %184 = load %struct.layer*, %struct.layer** %l.addr, align 8
  %185 = load %struct.mchar*, %struct.mchar** %c.addr, align 8
  %186 = load i32, i32* %bot.addr, align 4
  call void @LPutChar(%struct.layer* %184, %struct.mchar* %185, i32 0, i32 %186)
  br label %if.end.192

if.end.192:                                       ; preds = %if.else.191, %if.then.190
  br label %if.end.193

if.end.193:                                       ; preds = %if.end.192, %if.then.182
  %187 = load %struct.canvas*, %struct.canvas** %cvlist, align 8
  %188 = load %struct.layer*, %struct.layer** %l.addr, align 8
  %l_cvlist194 = getelementptr inbounds %struct.layer, %struct.layer* %188, i32 0, i32 0
  store %struct.canvas* %187, %struct.canvas** %l_cvlist194, align 8
  %189 = load %struct.canvas*, %struct.canvas** %cvlnext, align 8
  %190 = load %struct.canvas*, %struct.canvas** %cv, align 8
  %c_lnext195 = getelementptr inbounds %struct.canvas, %struct.canvas* %190, i32 0, i32 10
  store %struct.canvas* %189, %struct.canvas** %c_lnext195, align 8
  br label %if.end.196

if.end.196:                                       ; preds = %if.end.193, %if.end.179
  %191 = load %struct.viewport*, %struct.viewport** %vp, align 8
  %tobool197 = icmp ne %struct.viewport* %191, null
  br i1 %tobool197, label %if.then.198, label %if.end.232

if.then.198:                                      ; preds = %if.end.196
  %192 = load %struct.viewport*, %struct.viewport** %vp, align 8
  %193 = load %struct.viewport**, %struct.viewport*** %vpp, align 8
  store %struct.viewport* %192, %struct.viewport** %193, align 8
  %194 = load i32, i32* %top.addr, align 4
  %195 = load %struct.viewport*, %struct.viewport** %vp, align 8
  %v_yoff199 = getelementptr inbounds %struct.viewport, %struct.viewport* %195, i32 0, i32 3
  %196 = load i32, i32* %v_yoff199, align 4
  %add200 = add nsw i32 %194, %196
  store i32 %add200, i32* %top2, align 4
  %197 = load i32, i32* %bot.addr, align 4
  %198 = load %struct.viewport*, %struct.viewport** %vp, align 8
  %v_yoff201 = getelementptr inbounds %struct.viewport, %struct.viewport* %198, i32 0, i32 3
  %199 = load i32, i32* %v_yoff201, align 4
  %add202 = add nsw i32 %197, %199
  store i32 %add202, i32* %bot2, align 4
  %200 = load i32, i32* %top2, align 4
  %201 = load %struct.viewport*, %struct.viewport** %vp, align 8
  %v_ys203 = getelementptr inbounds %struct.viewport, %struct.viewport* %201, i32 0, i32 6
  %202 = load i32, i32* %v_ys203, align 4
  %cmp204 = icmp slt i32 %200, %202
  br i1 %cmp204, label %if.then.206, label %if.end.208

if.then.206:                                      ; preds = %if.then.198
  %203 = load %struct.viewport*, %struct.viewport** %vp, align 8
  %v_ys207 = getelementptr inbounds %struct.viewport, %struct.viewport* %203, i32 0, i32 6
  %204 = load i32, i32* %v_ys207, align 4
  store i32 %204, i32* %top2, align 4
  br label %if.end.208

if.end.208:                                       ; preds = %if.then.206, %if.then.198
  %205 = load %struct.layer*, %struct.layer** %l.addr, align 8
  %l_encoding209 = getelementptr inbounds %struct.layer, %struct.layer* %205, i32 0, i32 5
  %206 = load i32, i32* %l_encoding209, align 4
  %cmp210 = icmp eq i32 %206, 8
  %conv211 = zext i1 %cmp210 to i32
  %207 = load %struct.display*, %struct.display** @display, align 8
  %d_encoding212 = getelementptr inbounds %struct.display, %struct.display* %207, i32 0, i32 28
  %208 = load i32, i32* %d_encoding212, align 4
  %cmp213 = icmp eq i32 %208, 8
  %conv214 = zext i1 %cmp213 to i32
  %cmp215 = icmp ne i32 %conv211, %conv214
  br i1 %cmp215, label %cond.true.217, label %cond.false.221

cond.true.217:                                    ; preds = %if.end.208
  %209 = load %struct.mchar*, %struct.mchar** %c.addr, align 8
  %210 = load %struct.layer*, %struct.layer** %l.addr, align 8
  %l_encoding218 = getelementptr inbounds %struct.layer, %struct.layer* %210, i32 0, i32 5
  %211 = load i32, i32* %l_encoding218, align 4
  %212 = load %struct.display*, %struct.display** @display, align 8
  %d_encoding219 = getelementptr inbounds %struct.display, %struct.display* %212, i32 0, i32 28
  %213 = load i32, i32* %d_encoding219, align 4
  %call220 = call %struct.mchar* @recode_mchar(%struct.mchar* %209, i32 %211, i32 %213)
  br label %cond.end.222

cond.false.221:                                   ; preds = %if.end.208
  %214 = load %struct.mchar*, %struct.mchar** %c.addr, align 8
  br label %cond.end.222

cond.end.222:                                     ; preds = %cond.false.221, %cond.true.217
  %cond223 = phi %struct.mchar* [ %call220, %cond.true.217 ], [ %214, %cond.false.221 ]
  %215 = load %struct.viewport*, %struct.viewport** %vp, align 8
  %v_xoff224 = getelementptr inbounds %struct.viewport, %struct.viewport* %215, i32 0, i32 2
  %216 = load i32, i32* %v_xoff224, align 4
  %217 = load %struct.layer*, %struct.layer** %l.addr, align 8
  %l_width225 = getelementptr inbounds %struct.layer, %struct.layer* %217, i32 0, i32 1
  %218 = load i32, i32* %l_width225, align 4
  %add226 = add nsw i32 %216, %218
  %219 = load i32, i32* %bot2, align 4
  %220 = load %struct.viewport*, %struct.viewport** %vp, align 8
  %v_xoff227 = getelementptr inbounds %struct.viewport, %struct.viewport* %220, i32 0, i32 2
  %221 = load i32, i32* %v_xoff227, align 4
  %222 = load i32, i32* %top2, align 4
  %223 = load %struct.viewport*, %struct.viewport** %vp, align 8
  %v_xoff228 = getelementptr inbounds %struct.viewport, %struct.viewport* %223, i32 0, i32 2
  %224 = load i32, i32* %v_xoff228, align 4
  %225 = load %struct.layer*, %struct.layer** %l.addr, align 8
  %l_width229 = getelementptr inbounds %struct.layer, %struct.layer* %225, i32 0, i32 1
  %226 = load i32, i32* %l_width229, align 4
  %add230 = add nsw i32 %224, %226
  %sub231 = sub nsw i32 %add230, 1
  %227 = load i32, i32* %bot2, align 4
  %228 = load i32, i32* %ins.addr, align 4
  call void @WrapChar(%struct.mchar* %cond223, i32 %add226, i32 %219, i32 %221, i32 %222, i32 %sub231, i32 %227, i32 %228)
  br label %if.end.232

if.end.232:                                       ; preds = %cond.end.222, %if.end.196
  br label %for.inc.233

for.inc.233:                                      ; preds = %if.end.232, %if.then.143, %if.then.138
  %229 = load %struct.canvas*, %struct.canvas** %cv, align 8
  %c_lnext234 = getelementptr inbounds %struct.canvas, %struct.canvas* %229, i32 0, i32 10
  %230 = load %struct.canvas*, %struct.canvas** %c_lnext234, align 8
  store %struct.canvas* %230, %struct.canvas** %cv, align 8
  br label %for.cond.126

for.end.235:                                      ; preds = %for.cond.126
  br label %if.end.236

if.end.236:                                       ; preds = %for.end.235, %for.end.123
  ret void
}

; Function Attrs: nounwind uwtable
define void @LSetRendition(%struct.layer* %l, %struct.mchar* %r) #0 {
entry:
  %l.addr = alloca %struct.layer*, align 8
  %r.addr = alloca %struct.mchar*, align 8
  %cv = alloca %struct.canvas*, align 8
  store %struct.layer* %l, %struct.layer** %l.addr, align 8
  store %struct.mchar* %r, %struct.mchar** %r.addr, align 8
  %0 = load %struct.layer*, %struct.layer** %l.addr, align 8
  %l_cvlist = getelementptr inbounds %struct.layer, %struct.layer* %0, i32 0, i32 0
  %1 = load %struct.canvas*, %struct.canvas** %l_cvlist, align 8
  store %struct.canvas* %1, %struct.canvas** %cv, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %2 = load %struct.canvas*, %struct.canvas** %cv, align 8
  %tobool = icmp ne %struct.canvas* %2, null
  br i1 %tobool, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %3 = load %struct.canvas*, %struct.canvas** %cv, align 8
  %c_display = getelementptr inbounds %struct.canvas, %struct.canvas* %3, i32 0, i32 1
  %4 = load %struct.display*, %struct.display** %c_display, align 8
  store %struct.display* %4, %struct.display** @display, align 8
  %5 = load %struct.display*, %struct.display** @display, align 8
  %d_blocked = getelementptr inbounds %struct.display, %struct.display* %5, i32 0, i32 102
  %6 = load i32, i32* %d_blocked, align 4
  %tobool1 = icmp ne i32 %6, 0
  br i1 %tobool1, label %if.then, label %if.end

if.then:                                          ; preds = %for.body
  br label %for.inc

if.end:                                           ; preds = %for.body
  %7 = load %struct.mchar*, %struct.mchar** %r.addr, align 8
  call void @SetRendition(%struct.mchar* %7)
  br label %for.inc

for.inc:                                          ; preds = %if.end, %if.then
  %8 = load %struct.canvas*, %struct.canvas** %cv, align 8
  %c_lnext = getelementptr inbounds %struct.canvas, %struct.canvas* %8, i32 0, i32 10
  %9 = load %struct.canvas*, %struct.canvas** %c_lnext, align 8
  store %struct.canvas* %9, %struct.canvas** %cv, align 8
  br label %for.cond

for.end:                                          ; preds = %for.cond
  ret void
}

declare void @WrapChar(%struct.mchar*, i32, i32, i32, i32, i32, i32, i32) #1

; Function Attrs: nounwind uwtable
define void @LCursorVisibility(%struct.layer* %l, i32 %vis) #0 {
entry:
  %l.addr = alloca %struct.layer*, align 8
  %vis.addr = alloca i32, align 4
  %cv = alloca %struct.canvas*, align 8
  store %struct.layer* %l, %struct.layer** %l.addr, align 8
  store i32 %vis, i32* %vis.addr, align 4
  %0 = load %struct.layer*, %struct.layer** %l.addr, align 8
  %l_cvlist = getelementptr inbounds %struct.layer, %struct.layer* %0, i32 0, i32 0
  %1 = load %struct.canvas*, %struct.canvas** %l_cvlist, align 8
  store %struct.canvas* %1, %struct.canvas** %cv, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %2 = load %struct.canvas*, %struct.canvas** %cv, align 8
  %tobool = icmp ne %struct.canvas* %2, null
  br i1 %tobool, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %3 = load %struct.canvas*, %struct.canvas** %cv, align 8
  %c_display = getelementptr inbounds %struct.canvas, %struct.canvas* %3, i32 0, i32 1
  %4 = load %struct.display*, %struct.display** %c_display, align 8
  store %struct.display* %4, %struct.display** @display, align 8
  %5 = load %struct.display*, %struct.display** @display, align 8
  %d_blocked = getelementptr inbounds %struct.display, %struct.display* %5, i32 0, i32 102
  %6 = load i32, i32* %d_blocked, align 4
  %tobool1 = icmp ne i32 %6, 0
  br i1 %tobool1, label %if.then, label %if.end

if.then:                                          ; preds = %for.body
  br label %for.inc

if.end:                                           ; preds = %for.body
  %7 = load %struct.canvas*, %struct.canvas** %cv, align 8
  %8 = load %struct.display*, %struct.display** @display, align 8
  %d_forecv = getelementptr inbounds %struct.display, %struct.display* %8, i32 0, i32 4
  %9 = load %struct.canvas*, %struct.canvas** %d_forecv, align 8
  %cmp = icmp ne %struct.canvas* %7, %9
  br i1 %cmp, label %if.then.2, label %if.end.3

if.then.2:                                        ; preds = %if.end
  br label %for.inc

if.end.3:                                         ; preds = %if.end
  %10 = load i32, i32* %vis.addr, align 4
  call void @CursorVisibility(i32 %10)
  br label %for.inc

for.inc:                                          ; preds = %if.end.3, %if.then.2, %if.then
  %11 = load %struct.canvas*, %struct.canvas** %cv, align 8
  %c_lnext = getelementptr inbounds %struct.canvas, %struct.canvas* %11, i32 0, i32 10
  %12 = load %struct.canvas*, %struct.canvas** %c_lnext, align 8
  store %struct.canvas* %12, %struct.canvas** %cv, align 8
  br label %for.cond

for.end:                                          ; preds = %for.cond
  ret void
}

declare void @CursorVisibility(i32) #1

; Function Attrs: nounwind uwtable
define void @LSetFlow(%struct.layer* %l, i32 %flow) #0 {
entry:
  %l.addr = alloca %struct.layer*, align 8
  %flow.addr = alloca i32, align 4
  %cv = alloca %struct.canvas*, align 8
  store %struct.layer* %l, %struct.layer** %l.addr, align 8
  store i32 %flow, i32* %flow.addr, align 4
  %0 = load %struct.layer*, %struct.layer** %l.addr, align 8
  %l_cvlist = getelementptr inbounds %struct.layer, %struct.layer* %0, i32 0, i32 0
  %1 = load %struct.canvas*, %struct.canvas** %l_cvlist, align 8
  store %struct.canvas* %1, %struct.canvas** %cv, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %2 = load %struct.canvas*, %struct.canvas** %cv, align 8
  %tobool = icmp ne %struct.canvas* %2, null
  br i1 %tobool, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %3 = load %struct.canvas*, %struct.canvas** %cv, align 8
  %c_display = getelementptr inbounds %struct.canvas, %struct.canvas* %3, i32 0, i32 1
  %4 = load %struct.display*, %struct.display** %c_display, align 8
  store %struct.display* %4, %struct.display** @display, align 8
  %5 = load %struct.canvas*, %struct.canvas** %cv, align 8
  %6 = load %struct.display*, %struct.display** @display, align 8
  %d_forecv = getelementptr inbounds %struct.display, %struct.display* %6, i32 0, i32 4
  %7 = load %struct.canvas*, %struct.canvas** %d_forecv, align 8
  %cmp = icmp ne %struct.canvas* %5, %7
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %for.body
  br label %for.inc

if.end:                                           ; preds = %for.body
  %8 = load i32, i32* %flow.addr, align 4
  call void @SetFlow(i32 %8)
  br label %for.inc

for.inc:                                          ; preds = %if.end, %if.then
  %9 = load %struct.canvas*, %struct.canvas** %cv, align 8
  %c_lnext = getelementptr inbounds %struct.canvas, %struct.canvas* %9, i32 0, i32 10
  %10 = load %struct.canvas*, %struct.canvas** %c_lnext, align 8
  store %struct.canvas* %10, %struct.canvas** %cv, align 8
  br label %for.cond

for.end:                                          ; preds = %for.cond
  ret void
}

declare void @SetFlow(i32) #1

; Function Attrs: nounwind uwtable
define void @LKeypadMode(%struct.layer* %l, i32 %on) #0 {
entry:
  %l.addr = alloca %struct.layer*, align 8
  %on.addr = alloca i32, align 4
  %cv = alloca %struct.canvas*, align 8
  store %struct.layer* %l, %struct.layer** %l.addr, align 8
  store i32 %on, i32* %on.addr, align 4
  %0 = load %struct.layer*, %struct.layer** %l.addr, align 8
  %l_cvlist = getelementptr inbounds %struct.layer, %struct.layer* %0, i32 0, i32 0
  %1 = load %struct.canvas*, %struct.canvas** %l_cvlist, align 8
  store %struct.canvas* %1, %struct.canvas** %cv, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %2 = load %struct.canvas*, %struct.canvas** %cv, align 8
  %tobool = icmp ne %struct.canvas* %2, null
  br i1 %tobool, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %3 = load %struct.canvas*, %struct.canvas** %cv, align 8
  %c_display = getelementptr inbounds %struct.canvas, %struct.canvas* %3, i32 0, i32 1
  %4 = load %struct.display*, %struct.display** %c_display, align 8
  store %struct.display* %4, %struct.display** @display, align 8
  %5 = load %struct.display*, %struct.display** @display, align 8
  %d_blocked = getelementptr inbounds %struct.display, %struct.display* %5, i32 0, i32 102
  %6 = load i32, i32* %d_blocked, align 4
  %tobool1 = icmp ne i32 %6, 0
  br i1 %tobool1, label %if.then, label %if.end

if.then:                                          ; preds = %for.body
  br label %for.inc

if.end:                                           ; preds = %for.body
  %7 = load %struct.canvas*, %struct.canvas** %cv, align 8
  %8 = load %struct.display*, %struct.display** @display, align 8
  %d_forecv = getelementptr inbounds %struct.display, %struct.display* %8, i32 0, i32 4
  %9 = load %struct.canvas*, %struct.canvas** %d_forecv, align 8
  %cmp = icmp ne %struct.canvas* %7, %9
  br i1 %cmp, label %if.then.2, label %if.end.3

if.then.2:                                        ; preds = %if.end
  br label %for.inc

if.end.3:                                         ; preds = %if.end
  %10 = load i32, i32* %on.addr, align 4
  call void @KeypadMode(i32 %10)
  br label %for.inc

for.inc:                                          ; preds = %if.end.3, %if.then.2, %if.then
  %11 = load %struct.canvas*, %struct.canvas** %cv, align 8
  %c_lnext = getelementptr inbounds %struct.canvas, %struct.canvas* %11, i32 0, i32 10
  %12 = load %struct.canvas*, %struct.canvas** %c_lnext, align 8
  store %struct.canvas* %12, %struct.canvas** %cv, align 8
  br label %for.cond

for.end:                                          ; preds = %for.cond
  ret void
}

declare void @KeypadMode(i32) #1

; Function Attrs: nounwind uwtable
define void @LCursorkeysMode(%struct.layer* %l, i32 %on) #0 {
entry:
  %l.addr = alloca %struct.layer*, align 8
  %on.addr = alloca i32, align 4
  %cv = alloca %struct.canvas*, align 8
  store %struct.layer* %l, %struct.layer** %l.addr, align 8
  store i32 %on, i32* %on.addr, align 4
  %0 = load %struct.layer*, %struct.layer** %l.addr, align 8
  %l_cvlist = getelementptr inbounds %struct.layer, %struct.layer* %0, i32 0, i32 0
  %1 = load %struct.canvas*, %struct.canvas** %l_cvlist, align 8
  store %struct.canvas* %1, %struct.canvas** %cv, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %2 = load %struct.canvas*, %struct.canvas** %cv, align 8
  %tobool = icmp ne %struct.canvas* %2, null
  br i1 %tobool, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %3 = load %struct.canvas*, %struct.canvas** %cv, align 8
  %c_display = getelementptr inbounds %struct.canvas, %struct.canvas* %3, i32 0, i32 1
  %4 = load %struct.display*, %struct.display** %c_display, align 8
  store %struct.display* %4, %struct.display** @display, align 8
  %5 = load %struct.display*, %struct.display** @display, align 8
  %d_blocked = getelementptr inbounds %struct.display, %struct.display* %5, i32 0, i32 102
  %6 = load i32, i32* %d_blocked, align 4
  %tobool1 = icmp ne i32 %6, 0
  br i1 %tobool1, label %if.then, label %if.end

if.then:                                          ; preds = %for.body
  br label %for.inc

if.end:                                           ; preds = %for.body
  %7 = load %struct.canvas*, %struct.canvas** %cv, align 8
  %8 = load %struct.display*, %struct.display** @display, align 8
  %d_forecv = getelementptr inbounds %struct.display, %struct.display* %8, i32 0, i32 4
  %9 = load %struct.canvas*, %struct.canvas** %d_forecv, align 8
  %cmp = icmp ne %struct.canvas* %7, %9
  br i1 %cmp, label %if.then.2, label %if.end.3

if.then.2:                                        ; preds = %if.end
  br label %for.inc

if.end.3:                                         ; preds = %if.end
  %10 = load i32, i32* %on.addr, align 4
  call void @CursorkeysMode(i32 %10)
  br label %for.inc

for.inc:                                          ; preds = %if.end.3, %if.then.2, %if.then
  %11 = load %struct.canvas*, %struct.canvas** %cv, align 8
  %c_lnext = getelementptr inbounds %struct.canvas, %struct.canvas* %11, i32 0, i32 10
  %12 = load %struct.canvas*, %struct.canvas** %c_lnext, align 8
  store %struct.canvas* %12, %struct.canvas** %cv, align 8
  br label %for.cond

for.end:                                          ; preds = %for.cond
  ret void
}

declare void @CursorkeysMode(i32) #1

; Function Attrs: nounwind uwtable
define void @LMouseMode(%struct.layer* %l, i32 %on) #0 {
entry:
  %l.addr = alloca %struct.layer*, align 8
  %on.addr = alloca i32, align 4
  %cv = alloca %struct.canvas*, align 8
  store %struct.layer* %l, %struct.layer** %l.addr, align 8
  store i32 %on, i32* %on.addr, align 4
  %0 = load %struct.layer*, %struct.layer** %l.addr, align 8
  %l_cvlist = getelementptr inbounds %struct.layer, %struct.layer* %0, i32 0, i32 0
  %1 = load %struct.canvas*, %struct.canvas** %l_cvlist, align 8
  store %struct.canvas* %1, %struct.canvas** %cv, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %2 = load %struct.canvas*, %struct.canvas** %cv, align 8
  %tobool = icmp ne %struct.canvas* %2, null
  br i1 %tobool, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %3 = load %struct.canvas*, %struct.canvas** %cv, align 8
  %c_display = getelementptr inbounds %struct.canvas, %struct.canvas* %3, i32 0, i32 1
  %4 = load %struct.display*, %struct.display** %c_display, align 8
  store %struct.display* %4, %struct.display** @display, align 8
  %5 = load %struct.display*, %struct.display** @display, align 8
  %d_blocked = getelementptr inbounds %struct.display, %struct.display* %5, i32 0, i32 102
  %6 = load i32, i32* %d_blocked, align 4
  %tobool1 = icmp ne i32 %6, 0
  br i1 %tobool1, label %if.then, label %if.end

if.then:                                          ; preds = %for.body
  br label %for.inc

if.end:                                           ; preds = %for.body
  %7 = load %struct.canvas*, %struct.canvas** %cv, align 8
  %8 = load %struct.display*, %struct.display** @display, align 8
  %d_forecv = getelementptr inbounds %struct.display, %struct.display* %8, i32 0, i32 4
  %9 = load %struct.canvas*, %struct.canvas** %d_forecv, align 8
  %cmp = icmp ne %struct.canvas* %7, %9
  br i1 %cmp, label %if.then.2, label %if.end.3

if.then.2:                                        ; preds = %if.end
  br label %for.inc

if.end.3:                                         ; preds = %if.end
  %10 = load i32, i32* %on.addr, align 4
  call void @MouseMode(i32 %10)
  br label %for.inc

for.inc:                                          ; preds = %if.end.3, %if.then.2, %if.then
  %11 = load %struct.canvas*, %struct.canvas** %cv, align 8
  %c_lnext = getelementptr inbounds %struct.canvas, %struct.canvas* %11, i32 0, i32 10
  %12 = load %struct.canvas*, %struct.canvas** %c_lnext, align 8
  store %struct.canvas* %12, %struct.canvas** %cv, align 8
  br label %for.cond

for.end:                                          ; preds = %for.cond
  ret void
}

declare void @MouseMode(i32) #1

; Function Attrs: nounwind uwtable
define void @LClearAll(%struct.layer* %l, i32 %uself) #0 {
entry:
  %l.addr = alloca %struct.layer*, align 8
  %uself.addr = alloca i32, align 4
  store %struct.layer* %l, %struct.layer** %l.addr, align 8
  store i32 %uself, i32* %uself.addr, align 4
  %0 = load %struct.layer*, %struct.layer** %l.addr, align 8
  %1 = load %struct.layer*, %struct.layer** %l.addr, align 8
  %l_width = getelementptr inbounds %struct.layer, %struct.layer* %1, i32 0, i32 1
  %2 = load i32, i32* %l_width, align 4
  %sub = sub nsw i32 %2, 1
  %3 = load %struct.layer*, %struct.layer** %l.addr, align 8
  %l_height = getelementptr inbounds %struct.layer, %struct.layer* %3, i32 0, i32 2
  %4 = load i32, i32* %l_height, align 4
  %sub1 = sub nsw i32 %4, 1
  %5 = load i32, i32* %uself.addr, align 4
  call void @LClearArea(%struct.layer* %0, i32 0, i32 0, i32 %sub, i32 %sub1, i32 0, i32 %5)
  ret void
}

; Function Attrs: nounwind uwtable
define void @LRefreshAll(%struct.layer* %l, i32 %isblank) #0 {
entry:
  %l.addr = alloca %struct.layer*, align 8
  %isblank.addr = alloca i32, align 4
  %oldflayer = alloca %struct.layer*, align 8
  %y = alloca i32, align 4
  store %struct.layer* %l, %struct.layer** %l.addr, align 8
  store i32 %isblank, i32* %isblank.addr, align 4
  br label %do.body

do.body:                                          ; preds = %entry
  br label %do.end

do.end:                                           ; preds = %do.body
  %0 = load %struct.layer*, %struct.layer** @flayer, align 8
  store %struct.layer* %0, %struct.layer** %oldflayer, align 8
  %1 = load %struct.layer*, %struct.layer** %l.addr, align 8
  store %struct.layer* %1, %struct.layer** @flayer, align 8
  %2 = load i32, i32* %isblank.addr, align 4
  %tobool = icmp ne i32 %2, 0
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %do.end
  %3 = load %struct.layer*, %struct.layer** %l.addr, align 8
  %4 = load %struct.layer*, %struct.layer** %l.addr, align 8
  %l_width = getelementptr inbounds %struct.layer, %struct.layer* %4, i32 0, i32 1
  %5 = load i32, i32* %l_width, align 4
  %sub = sub nsw i32 %5, 1
  %6 = load %struct.layer*, %struct.layer** %l.addr, align 8
  %l_height = getelementptr inbounds %struct.layer, %struct.layer* %6, i32 0, i32 2
  %7 = load i32, i32* %l_height, align 4
  %sub1 = sub nsw i32 %7, 1
  call void @LClearArea(%struct.layer* %3, i32 0, i32 0, i32 %sub, i32 %sub1, i32 0, i32 0)
  br label %if.end

if.end:                                           ; preds = %if.then, %do.end
  %8 = load %struct.layer*, %struct.layer** @flayer, align 8
  %l_layfn = getelementptr inbounds %struct.layer, %struct.layer* %8, i32 0, i32 6
  %9 = load %struct.LayFuncs*, %struct.LayFuncs** %l_layfn, align 8
  %lf_LayRedisplayLine = getelementptr inbounds %struct.LayFuncs, %struct.LayFuncs* %9, i32 0, i32 2
  %10 = load void (i32, i32, i32, i32)*, void (i32, i32, i32, i32)** %lf_LayRedisplayLine, align 8
  call void %10(i32 -1, i32 -1, i32 -1, i32 1)
  store i32 0, i32* %y, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end
  %11 = load i32, i32* %y, align 4
  %12 = load %struct.layer*, %struct.layer** %l.addr, align 8
  %l_height2 = getelementptr inbounds %struct.layer, %struct.layer* %12, i32 0, i32 2
  %13 = load i32, i32* %l_height2, align 4
  %cmp = icmp slt i32 %11, %13
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %14 = load %struct.layer*, %struct.layer** @flayer, align 8
  %l_layfn3 = getelementptr inbounds %struct.layer, %struct.layer* %14, i32 0, i32 6
  %15 = load %struct.LayFuncs*, %struct.LayFuncs** %l_layfn3, align 8
  %lf_LayRedisplayLine4 = getelementptr inbounds %struct.LayFuncs, %struct.LayFuncs* %15, i32 0, i32 2
  %16 = load void (i32, i32, i32, i32)*, void (i32, i32, i32, i32)** %lf_LayRedisplayLine4, align 8
  %17 = load i32, i32* %y, align 4
  %18 = load %struct.layer*, %struct.layer** %l.addr, align 8
  %l_width5 = getelementptr inbounds %struct.layer, %struct.layer* %18, i32 0, i32 1
  %19 = load i32, i32* %l_width5, align 4
  %sub6 = sub nsw i32 %19, 1
  call void %16(i32 %17, i32 0, i32 %sub6, i32 1)
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %20 = load i32, i32* %y, align 4
  %inc = add nsw i32 %20, 1
  store i32 %inc, i32* %y, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %21 = load %struct.layer*, %struct.layer** %oldflayer, align 8
  store %struct.layer* %21, %struct.layer** @flayer, align 8
  ret void
}

; Function Attrs: nounwind uwtable
define void @LMsg(i32 %err, i8* %fmt, ...) #0 {
entry:
  %err.addr = alloca i32, align 4
  %fmt.addr = alloca i8*, align 8
  %ap = alloca [1 x %struct.__va_list_tag], align 16
  %buf = alloca [8192 x i8], align 16
  %p = alloca i8*, align 8
  %cv = alloca %struct.canvas*, align 8
  store i32 %err, i32* %err.addr, align 4
  store i8* %fmt, i8** %fmt.addr, align 8
  %arraydecay = getelementptr inbounds [8192 x i8], [8192 x i8]* %buf, i32 0, i32 0
  store i8* %arraydecay, i8** %p, align 8
  %arraydecay1 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %ap, i32 0, i32 0
  %arraydecay12 = bitcast %struct.__va_list_tag* %arraydecay1 to i8*
  call void @llvm.va_start(i8* %arraydecay12)
  %0 = load i8*, i8** %fmt.addr, align 8
  %call = call i8* @DoNLS(i8* %0)
  store i8* %call, i8** %fmt.addr, align 8
  %1 = load i8*, i8** %p, align 8
  %2 = load i8*, i8** %fmt.addr, align 8
  %arraydecay3 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %ap, i32 0, i32 0
  %call4 = call i32 @vsnprintf(i8* %1, i64 8092, i8* %2, %struct.__va_list_tag* %arraydecay3) #2
  %arraydecay5 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %ap, i32 0, i32 0
  %arraydecay56 = bitcast %struct.__va_list_tag* %arraydecay5 to i8*
  call void @llvm.va_end(i8* %arraydecay56)
  %3 = load i32, i32* %err.addr, align 4
  %tobool = icmp ne i32 %3, 0
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %4 = load i8*, i8** %p, align 8
  %call7 = call i64 @strlen(i8* %4) #5
  %5 = load i8*, i8** %p, align 8
  %add.ptr = getelementptr inbounds i8, i8* %5, i64 %call7
  store i8* %add.ptr, i8** %p, align 8
  %6 = load i8*, i8** %p, align 8
  %incdec.ptr = getelementptr inbounds i8, i8* %6, i32 1
  store i8* %incdec.ptr, i8** %p, align 8
  store i8 58, i8* %6, align 1
  %7 = load i8*, i8** %p, align 8
  %incdec.ptr8 = getelementptr inbounds i8, i8* %7, i32 1
  store i8* %incdec.ptr8, i8** %p, align 8
  store i8 32, i8* %7, align 1
  %8 = load i8*, i8** %p, align 8
  %9 = load i32, i32* %err.addr, align 4
  %call9 = call i8* @strerror(i32 %9) #2
  %arraydecay10 = getelementptr inbounds [8192 x i8], [8192 x i8]* %buf, i32 0, i32 0
  %add.ptr11 = getelementptr inbounds i8, i8* %arraydecay10, i64 8192
  %10 = load i8*, i8** %p, align 8
  %sub.ptr.lhs.cast = ptrtoint i8* %add.ptr11 to i64
  %sub.ptr.rhs.cast = ptrtoint i8* %10 to i64
  %sub.ptr.sub = sub i64 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast
  %sub = sub nsw i64 %sub.ptr.sub, 1
  %call12 = call i8* @strncpy(i8* %8, i8* %call9, i64 %sub) #2
  %arrayidx = getelementptr inbounds [8192 x i8], [8192 x i8]* %buf, i32 0, i64 8191
  store i8 0, i8* %arrayidx, align 1
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  br label %do.body

do.body:                                          ; preds = %if.end
  br label %do.end

do.end:                                           ; preds = %do.body
  %11 = load %struct.display*, %struct.display** @displays, align 8
  store %struct.display* %11, %struct.display** @display, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.inc.23, %do.end
  %12 = load %struct.display*, %struct.display** @display, align 8
  %tobool13 = icmp ne %struct.display* %12, null
  br i1 %tobool13, label %for.body, label %for.end.24

for.body:                                         ; preds = %for.cond
  %13 = load %struct.display*, %struct.display** @display, align 8
  %d_cvlist = getelementptr inbounds %struct.display, %struct.display* %13, i32 0, i32 3
  %14 = load %struct.canvas*, %struct.canvas** %d_cvlist, align 8
  store %struct.canvas* %14, %struct.canvas** %cv, align 8
  br label %for.cond.14

for.cond.14:                                      ; preds = %for.inc, %for.body
  %15 = load %struct.canvas*, %struct.canvas** %cv, align 8
  %tobool15 = icmp ne %struct.canvas* %15, null
  br i1 %tobool15, label %for.body.16, label %for.end

for.body.16:                                      ; preds = %for.cond.14
  %16 = load %struct.canvas*, %struct.canvas** %cv, align 8
  %c_layer = getelementptr inbounds %struct.canvas, %struct.canvas* %16, i32 0, i32 9
  %17 = load %struct.layer*, %struct.layer** %c_layer, align 8
  %18 = load %struct.layer*, %struct.layer** @flayer, align 8
  %cmp = icmp eq %struct.layer* %17, %18
  br i1 %cmp, label %if.then.17, label %if.end.18

if.then.17:                                       ; preds = %for.body.16
  br label %for.end

if.end.18:                                        ; preds = %for.body.16
  br label %for.inc

for.inc:                                          ; preds = %if.end.18
  %19 = load %struct.canvas*, %struct.canvas** %cv, align 8
  %c_next = getelementptr inbounds %struct.canvas, %struct.canvas* %19, i32 0, i32 0
  %20 = load %struct.canvas*, %struct.canvas** %c_next, align 8
  store %struct.canvas* %20, %struct.canvas** %cv, align 8
  br label %for.cond.14

for.end:                                          ; preds = %if.then.17, %for.cond.14
  %21 = load %struct.canvas*, %struct.canvas** %cv, align 8
  %cmp19 = icmp eq %struct.canvas* %21, null
  br i1 %cmp19, label %if.then.20, label %if.end.21

if.then.20:                                       ; preds = %for.end
  br label %for.inc.23

if.end.21:                                        ; preds = %for.end
  %arraydecay22 = getelementptr inbounds [8192 x i8], [8192 x i8]* %buf, i32 0, i32 0
  call void @MakeStatus(i8* %arraydecay22)
  br label %for.inc.23

for.inc.23:                                       ; preds = %if.end.21, %if.then.20
  %22 = load %struct.display*, %struct.display** @display, align 8
  %d_next = getelementptr inbounds %struct.display, %struct.display* %22, i32 0, i32 0
  %23 = load %struct.display*, %struct.display** %d_next, align 8
  store %struct.display* %23, %struct.display** @display, align 8
  br label %for.cond

for.end.24:                                       ; preds = %for.cond
  ret void
}

; Function Attrs: nounwind
declare void @llvm.va_start(i8*) #2

declare i8* @DoNLS(i8*) #1

; Function Attrs: nounwind
declare i32 @vsnprintf(i8*, i64, i8*, %struct.__va_list_tag*) #4

; Function Attrs: nounwind
declare void @llvm.va_end(i8*) #2

; Function Attrs: nounwind
declare i8* @strncpy(i8*, i8*, i64) #4

; Function Attrs: nounwind
declare i8* @strerror(i32) #4

declare void @MakeStatus(i8*) #1

; Function Attrs: nounwind uwtable
define void @KillLayerChain(%struct.layer* %lay) #0 {
entry:
  %lay.addr = alloca %struct.layer*, align 8
  %cv = alloca %struct.canvas*, align 8
  %ncv = alloca %struct.canvas*, align 8
  %l = alloca %struct.layer*, align 8
  %oldflayer = alloca %struct.layer*, align 8
  store %struct.layer* %lay, %struct.layer** %lay.addr, align 8
  %0 = load %struct.layer*, %struct.layer** @flayer, align 8
  store %struct.layer* %0, %struct.layer** %oldflayer, align 8
  br label %do.body

do.body:                                          ; preds = %entry
  br label %do.end

do.end:                                           ; preds = %do.body
  %1 = load %struct.layer*, %struct.layer** %lay.addr, align 8
  store %struct.layer* %1, %struct.layer** %l, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.inc.12, %do.end
  %2 = load %struct.layer*, %struct.layer** %l, align 8
  %tobool = icmp ne %struct.layer* %2, null
  br i1 %tobool, label %for.body, label %for.end.13

for.body:                                         ; preds = %for.cond
  %3 = load %struct.layer*, %struct.layer** %l, align 8
  %l_layfn = getelementptr inbounds %struct.layer, %struct.layer* %3, i32 0, i32 6
  %4 = load %struct.LayFuncs*, %struct.LayFuncs** %l_layfn, align 8
  %cmp = icmp eq %struct.LayFuncs* %4, @WinLf
  br i1 %cmp, label %if.then, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %for.body
  %5 = load %struct.layer*, %struct.layer** %l, align 8
  %l_layfn1 = getelementptr inbounds %struct.layer, %struct.layer* %5, i32 0, i32 6
  %6 = load %struct.LayFuncs*, %struct.LayFuncs** %l_layfn1, align 8
  %cmp2 = icmp eq %struct.LayFuncs* %6, @BlankLf
  br i1 %cmp2, label %if.then, label %if.end

if.then:                                          ; preds = %lor.lhs.false, %for.body
  br label %for.end.13

if.end:                                           ; preds = %lor.lhs.false
  br label %do.body.3

do.body.3:                                        ; preds = %if.end
  br label %do.end.4

do.end.4:                                         ; preds = %do.body.3
  %7 = load %struct.layer*, %struct.layer** %oldflayer, align 8
  %8 = load %struct.layer*, %struct.layer** %l, align 8
  %cmp5 = icmp eq %struct.layer* %7, %8
  br i1 %cmp5, label %if.then.6, label %if.end.7

if.then.6:                                        ; preds = %do.end.4
  store %struct.layer* null, %struct.layer** %oldflayer, align 8
  br label %if.end.7

if.end.7:                                         ; preds = %if.then.6, %do.end.4
  %9 = load %struct.layer*, %struct.layer** %l, align 8
  %l_cvlist = getelementptr inbounds %struct.layer, %struct.layer* %9, i32 0, i32 0
  %10 = load %struct.canvas*, %struct.canvas** %l_cvlist, align 8
  store %struct.canvas* %10, %struct.canvas** %cv, align 8
  br label %for.cond.8

for.cond.8:                                       ; preds = %for.inc, %if.end.7
  %11 = load %struct.canvas*, %struct.canvas** %cv, align 8
  %tobool9 = icmp ne %struct.canvas* %11, null
  br i1 %tobool9, label %for.body.10, label %for.end

for.body.10:                                      ; preds = %for.cond.8
  %12 = load %struct.canvas*, %struct.canvas** %cv, align 8
  %c_lnext = getelementptr inbounds %struct.canvas, %struct.canvas* %12, i32 0, i32 10
  %13 = load %struct.canvas*, %struct.canvas** %c_lnext, align 8
  store %struct.canvas* %13, %struct.canvas** %ncv, align 8
  %14 = load %struct.canvas*, %struct.canvas** %cv, align 8
  %c_layer = getelementptr inbounds %struct.canvas, %struct.canvas* %14, i32 0, i32 9
  store %struct.layer* null, %struct.layer** %c_layer, align 8
  %15 = load %struct.canvas*, %struct.canvas** %cv, align 8
  %c_lnext11 = getelementptr inbounds %struct.canvas, %struct.canvas* %15, i32 0, i32 10
  store %struct.canvas* null, %struct.canvas** %c_lnext11, align 8
  br label %for.inc

for.inc:                                          ; preds = %for.body.10
  %16 = load %struct.canvas*, %struct.canvas** %ncv, align 8
  store %struct.canvas* %16, %struct.canvas** %cv, align 8
  br label %for.cond.8

for.end:                                          ; preds = %for.cond.8
  br label %for.inc.12

for.inc.12:                                       ; preds = %for.end
  %17 = load %struct.layer*, %struct.layer** %l, align 8
  %l_next = getelementptr inbounds %struct.layer, %struct.layer* %17, i32 0, i32 8
  %18 = load %struct.layer*, %struct.layer** %l_next, align 8
  store %struct.layer* %18, %struct.layer** %l, align 8
  br label %for.cond

for.end.13:                                       ; preds = %if.then, %for.cond
  %19 = load %struct.layer*, %struct.layer** %lay.addr, align 8
  store %struct.layer* %19, %struct.layer** @flayer, align 8
  br label %while.cond

while.cond:                                       ; preds = %while.body, %for.end.13
  %20 = load %struct.layer*, %struct.layer** @flayer, align 8
  %21 = load %struct.layer*, %struct.layer** %l, align 8
  %cmp14 = icmp ne %struct.layer* %20, %21
  br i1 %cmp14, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  call void @ExitOverlayPage()
  br label %while.cond

while.end:                                        ; preds = %while.cond
  %22 = load %struct.layer*, %struct.layer** %oldflayer, align 8
  store %struct.layer* %22, %struct.layer** @flayer, align 8
  ret void
}

; Function Attrs: nounwind uwtable
define void @ExitOverlayPage() #0 {
entry:
  %oldlay = alloca %struct.layer*, align 8
  %p = alloca %struct.win*, align 8
  %doredisplay = alloca i32, align 4
  %cv = alloca %struct.canvas*, align 8
  %ocv = alloca %struct.canvas*, align 8
  %lay = alloca %struct.layout*, align 8
  store i32 0, i32* %doredisplay, align 4
  br label %do.body

do.body:                                          ; preds = %entry
  br label %do.end

do.end:                                           ; preds = %do.body
  br label %do.body.1

do.body.1:                                        ; preds = %do.end
  br label %do.end.2

do.end.2:                                         ; preds = %do.body.1
  %0 = load %struct.layer*, %struct.layer** @flayer, align 8
  store %struct.layer* %0, %struct.layer** %oldlay, align 8
  %1 = load %struct.layer*, %struct.layer** %oldlay, align 8
  %l_data = getelementptr inbounds %struct.layer, %struct.layer* %1, i32 0, i32 7
  %2 = load i8*, i8** %l_data, align 8
  %tobool = icmp ne i8* %2, null
  br i1 %tobool, label %if.then, label %if.end.9

if.then:                                          ; preds = %do.end.2
  %3 = load %struct.layer*, %struct.layer** %oldlay, align 8
  %l_layfn = getelementptr inbounds %struct.layer, %struct.layer* %3, i32 0, i32 6
  %4 = load %struct.LayFuncs*, %struct.LayFuncs** %l_layfn, align 8
  %lf_LayFree = getelementptr inbounds %struct.LayFuncs, %struct.LayFuncs* %4, i32 0, i32 7
  %5 = load void (i8*)*, void (i8*)** %lf_LayFree, align 8
  %tobool3 = icmp ne void (i8*)* %5, null
  br i1 %tobool3, label %if.then.4, label %if.end

if.then.4:                                        ; preds = %if.then
  %6 = load %struct.layer*, %struct.layer** @flayer, align 8
  %l_layfn5 = getelementptr inbounds %struct.layer, %struct.layer* %6, i32 0, i32 6
  %7 = load %struct.LayFuncs*, %struct.LayFuncs** %l_layfn5, align 8
  %lf_LayFree6 = getelementptr inbounds %struct.LayFuncs, %struct.LayFuncs* %7, i32 0, i32 7
  %8 = load void (i8*)*, void (i8*)** %lf_LayFree6, align 8
  %9 = load %struct.layer*, %struct.layer** %oldlay, align 8
  %l_data7 = getelementptr inbounds %struct.layer, %struct.layer* %9, i32 0, i32 7
  %10 = load i8*, i8** %l_data7, align 8
  call void %8(i8* %10)
  br label %if.end

if.end:                                           ; preds = %if.then.4, %if.then
  %11 = load %struct.layer*, %struct.layer** %oldlay, align 8
  %l_data8 = getelementptr inbounds %struct.layer, %struct.layer* %11, i32 0, i32 7
  %12 = load i8*, i8** %l_data8, align 8
  call void @free(i8* %12) #2
  br label %if.end.9

if.end.9:                                         ; preds = %if.end, %do.end.2
  %13 = load %struct.layer*, %struct.layer** @flayer, align 8
  %l_bottom = getelementptr inbounds %struct.layer, %struct.layer* %13, i32 0, i32 9
  %14 = load %struct.layer*, %struct.layer** %l_bottom, align 8
  %l_data10 = getelementptr inbounds %struct.layer, %struct.layer* %14, i32 0, i32 7
  %15 = load i8*, i8** %l_data10, align 8
  %16 = bitcast i8* %15 to %struct.win*
  store %struct.win* %16, %struct.win** %p, align 8
  %17 = load %struct.layer*, %struct.layer** %oldlay, align 8
  %l_next = getelementptr inbounds %struct.layer, %struct.layer* %17, i32 0, i32 8
  %18 = load %struct.layer*, %struct.layer** %l_next, align 8
  store %struct.layer* %18, %struct.layer** @flayer, align 8
  %19 = load %struct.layer*, %struct.layer** @flayer, align 8
  %l_layfn11 = getelementptr inbounds %struct.layer, %struct.layer* %19, i32 0, i32 6
  %20 = load %struct.LayFuncs*, %struct.LayFuncs** %l_layfn11, align 8
  %cmp = icmp eq %struct.LayFuncs* %20, @WinLf
  br i1 %cmp, label %if.then.12, label %if.end.33

if.then.12:                                       ; preds = %if.end.9
  %21 = load %struct.layer*, %struct.layer** %oldlay, align 8
  %l_blocking = getelementptr inbounds %struct.layer, %struct.layer* %21, i32 0, i32 10
  %22 = load i32, i32* %l_blocking, align 4
  %tobool13 = icmp ne i32 %22, 0
  br i1 %tobool13, label %if.then.14, label %if.end.19

if.then.14:                                       ; preds = %if.then.12
  br label %do.body.15

do.body.15:                                       ; preds = %if.then.14
  br label %do.end.16

do.end.16:                                        ; preds = %do.body.15
  %23 = load %struct.win*, %struct.win** %p, align 8
  %w_blocked = getelementptr inbounds %struct.win, %struct.win* %23, i32 0, i32 5
  %24 = load i32, i32* %w_blocked, align 4
  %dec = add nsw i32 %24, -1
  store i32 %dec, i32* %w_blocked, align 4
  br label %do.body.17

do.body.17:                                       ; preds = %do.end.16
  br label %do.end.18

do.end.18:                                        ; preds = %do.body.17
  br label %if.end.19

if.end.19:                                        ; preds = %do.end.18, %if.then.12
  %25 = load %struct.win*, %struct.win** %p, align 8
  %w_blocked20 = getelementptr inbounds %struct.win, %struct.win* %25, i32 0, i32 5
  %26 = load i32, i32* %w_blocked20, align 4
  %tobool21 = icmp ne i32 %26, 0
  br i1 %tobool21, label %land.lhs.true, label %if.end.32

land.lhs.true:                                    ; preds = %if.end.19
  %27 = load %struct.win*, %struct.win** %p, align 8
  %w_savelayer = getelementptr inbounds %struct.win, %struct.win* %27, i32 0, i32 4
  %28 = load %struct.layer*, %struct.layer** %w_savelayer, align 8
  %tobool22 = icmp ne %struct.layer* %28, null
  br i1 %tobool22, label %land.lhs.true.23, label %if.end.32

land.lhs.true.23:                                 ; preds = %land.lhs.true
  %29 = load %struct.win*, %struct.win** %p, align 8
  %w_savelayer24 = getelementptr inbounds %struct.win, %struct.win* %29, i32 0, i32 4
  %30 = load %struct.layer*, %struct.layer** %w_savelayer24, align 8
  %31 = load %struct.layer*, %struct.layer** @flayer, align 8
  %cmp25 = icmp ne %struct.layer* %30, %31
  br i1 %cmp25, label %land.lhs.true.26, label %if.end.32

land.lhs.true.26:                                 ; preds = %land.lhs.true.23
  %32 = load %struct.layer*, %struct.layer** %oldlay, align 8
  %l_cvlist = getelementptr inbounds %struct.layer, %struct.layer* %32, i32 0, i32 0
  %33 = load %struct.canvas*, %struct.canvas** %l_cvlist, align 8
  %tobool27 = icmp ne %struct.canvas* %33, null
  br i1 %tobool27, label %if.then.28, label %if.end.32

if.then.28:                                       ; preds = %land.lhs.true.26
  br label %do.body.29

do.body.29:                                       ; preds = %if.then.28
  br label %do.end.30

do.end.30:                                        ; preds = %do.body.29
  %34 = load %struct.win*, %struct.win** %p, align 8
  %w_savelayer31 = getelementptr inbounds %struct.win, %struct.win* %34, i32 0, i32 4
  %35 = load %struct.layer*, %struct.layer** %w_savelayer31, align 8
  store %struct.layer* %35, %struct.layer** @flayer, align 8
  store i32 1, i32* %doredisplay, align 4
  br label %if.end.32

if.end.32:                                        ; preds = %do.end.30, %land.lhs.true.26, %land.lhs.true.23, %land.lhs.true, %if.end.19
  br label %if.end.33

if.end.33:                                        ; preds = %if.end.32, %if.end.9
  %36 = load %struct.win*, %struct.win** %p, align 8
  %tobool34 = icmp ne %struct.win* %36, null
  br i1 %tobool34, label %land.lhs.true.35, label %if.end.40

land.lhs.true.35:                                 ; preds = %if.end.33
  %37 = load %struct.win*, %struct.win** %p, align 8
  %w_savelayer36 = getelementptr inbounds %struct.win, %struct.win* %37, i32 0, i32 4
  %38 = load %struct.layer*, %struct.layer** %w_savelayer36, align 8
  %39 = load %struct.layer*, %struct.layer** %oldlay, align 8
  %cmp37 = icmp eq %struct.layer* %38, %39
  br i1 %cmp37, label %if.then.38, label %if.end.40

if.then.38:                                       ; preds = %land.lhs.true.35
  %40 = load %struct.layer*, %struct.layer** @flayer, align 8
  %41 = load %struct.win*, %struct.win** %p, align 8
  %w_savelayer39 = getelementptr inbounds %struct.win, %struct.win* %41, i32 0, i32 4
  store %struct.layer* %40, %struct.layer** %w_savelayer39, align 8
  br label %if.end.40

if.end.40:                                        ; preds = %if.then.38, %land.lhs.true.35, %if.end.33
  %42 = load %struct.win*, %struct.win** %p, align 8
  %tobool41 = icmp ne %struct.win* %42, null
  br i1 %tobool41, label %land.lhs.true.42, label %if.end.47

land.lhs.true.42:                                 ; preds = %if.end.40
  %43 = load %struct.layer*, %struct.layer** %oldlay, align 8
  %44 = load %struct.win*, %struct.win** %p, align 8
  %w_paster = getelementptr inbounds %struct.win, %struct.win* %44, i32 0, i32 80
  %pa_pastelayer = getelementptr inbounds %struct.paster, %struct.paster* %w_paster, i32 0, i32 3
  %45 = load %struct.layer*, %struct.layer** %pa_pastelayer, align 8
  %cmp43 = icmp eq %struct.layer* %43, %45
  br i1 %cmp43, label %if.then.44, label %if.end.47

if.then.44:                                       ; preds = %land.lhs.true.42
  %46 = load %struct.win*, %struct.win** %p, align 8
  %w_paster45 = getelementptr inbounds %struct.win, %struct.win* %46, i32 0, i32 80
  %pa_pastelayer46 = getelementptr inbounds %struct.paster, %struct.paster* %w_paster45, i32 0, i32 3
  store %struct.layer* null, %struct.layer** %pa_pastelayer46, align 8
  br label %if.end.47

if.end.47:                                        ; preds = %if.then.44, %land.lhs.true.42, %if.end.40
  %47 = load %struct.layout*, %struct.layout** @layouts, align 8
  store %struct.layout* %47, %struct.layout** %lay, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.inc.56, %if.end.47
  %48 = load %struct.layout*, %struct.layout** %lay, align 8
  %tobool48 = icmp ne %struct.layout* %48, null
  br i1 %tobool48, label %for.body, label %for.end.57

for.body:                                         ; preds = %for.cond
  %49 = load %struct.layout*, %struct.layout** %lay, align 8
  %lay_cvlist = getelementptr inbounds %struct.layout, %struct.layout* %49, i32 0, i32 5
  %50 = load %struct.canvas*, %struct.canvas** %lay_cvlist, align 8
  store %struct.canvas* %50, %struct.canvas** %cv, align 8
  br label %for.cond.49

for.cond.49:                                      ; preds = %for.inc, %for.body
  %51 = load %struct.canvas*, %struct.canvas** %cv, align 8
  %tobool50 = icmp ne %struct.canvas* %51, null
  br i1 %tobool50, label %for.body.51, label %for.end

for.body.51:                                      ; preds = %for.cond.49
  %52 = load %struct.canvas*, %struct.canvas** %cv, align 8
  %c_layer = getelementptr inbounds %struct.canvas, %struct.canvas* %52, i32 0, i32 9
  %53 = load %struct.layer*, %struct.layer** %c_layer, align 8
  %54 = load %struct.layer*, %struct.layer** %oldlay, align 8
  %cmp52 = icmp eq %struct.layer* %53, %54
  br i1 %cmp52, label %if.then.53, label %if.end.55

if.then.53:                                       ; preds = %for.body.51
  %55 = load %struct.layer*, %struct.layer** @flayer, align 8
  %56 = load %struct.canvas*, %struct.canvas** %cv, align 8
  %c_layer54 = getelementptr inbounds %struct.canvas, %struct.canvas* %56, i32 0, i32 9
  store %struct.layer* %55, %struct.layer** %c_layer54, align 8
  br label %if.end.55

if.end.55:                                        ; preds = %if.then.53, %for.body.51
  br label %for.inc

for.inc:                                          ; preds = %if.end.55
  %57 = load %struct.canvas*, %struct.canvas** %cv, align 8
  %c_next = getelementptr inbounds %struct.canvas, %struct.canvas* %57, i32 0, i32 0
  %58 = load %struct.canvas*, %struct.canvas** %c_next, align 8
  store %struct.canvas* %58, %struct.canvas** %cv, align 8
  br label %for.cond.49

for.end:                                          ; preds = %for.cond.49
  br label %for.inc.56

for.inc.56:                                       ; preds = %for.end
  %59 = load %struct.layout*, %struct.layout** %lay, align 8
  %lay_next = getelementptr inbounds %struct.layout, %struct.layout* %59, i32 0, i32 0
  %60 = load %struct.layout*, %struct.layout** %lay_next, align 8
  store %struct.layout* %60, %struct.layout** %lay, align 8
  br label %for.cond

for.end.57:                                       ; preds = %for.cond
  store %struct.canvas* null, %struct.canvas** %ocv, align 8
  %61 = load %struct.layer*, %struct.layer** %oldlay, align 8
  %l_cvlist58 = getelementptr inbounds %struct.layer, %struct.layer* %61, i32 0, i32 0
  %62 = load %struct.canvas*, %struct.canvas** %l_cvlist58, align 8
  store %struct.canvas* %62, %struct.canvas** %cv, align 8
  br label %for.cond.59

for.cond.59:                                      ; preds = %for.inc.63, %for.end.57
  %63 = load %struct.canvas*, %struct.canvas** %cv, align 8
  %tobool60 = icmp ne %struct.canvas* %63, null
  br i1 %tobool60, label %for.body.61, label %for.end.64

for.body.61:                                      ; preds = %for.cond.59
  %64 = load %struct.layer*, %struct.layer** @flayer, align 8
  %65 = load %struct.canvas*, %struct.canvas** %cv, align 8
  %c_layer62 = getelementptr inbounds %struct.canvas, %struct.canvas* %65, i32 0, i32 9
  store %struct.layer* %64, %struct.layer** %c_layer62, align 8
  %66 = load %struct.canvas*, %struct.canvas** %cv, align 8
  store %struct.canvas* %66, %struct.canvas** %ocv, align 8
  br label %for.inc.63

for.inc.63:                                       ; preds = %for.body.61
  %67 = load %struct.canvas*, %struct.canvas** %cv, align 8
  %c_lnext = getelementptr inbounds %struct.canvas, %struct.canvas* %67, i32 0, i32 10
  %68 = load %struct.canvas*, %struct.canvas** %c_lnext, align 8
  store %struct.canvas* %68, %struct.canvas** %cv, align 8
  br label %for.cond.59

for.end.64:                                       ; preds = %for.cond.59
  %69 = load %struct.canvas*, %struct.canvas** %ocv, align 8
  %tobool65 = icmp ne %struct.canvas* %69, null
  br i1 %tobool65, label %if.then.66, label %if.end.75

if.then.66:                                       ; preds = %for.end.64
  %70 = load %struct.layer*, %struct.layer** @flayer, align 8
  %l_cvlist67 = getelementptr inbounds %struct.layer, %struct.layer* %70, i32 0, i32 0
  %71 = load %struct.canvas*, %struct.canvas** %l_cvlist67, align 8
  store %struct.canvas* %71, %struct.canvas** %cv, align 8
  %72 = load %struct.canvas*, %struct.canvas** %ocv, align 8
  %c_lnext68 = getelementptr inbounds %struct.canvas, %struct.canvas* %72, i32 0, i32 10
  store %struct.canvas* null, %struct.canvas** %c_lnext68, align 8
  %73 = load %struct.layer*, %struct.layer** %oldlay, align 8
  %l_cvlist69 = getelementptr inbounds %struct.layer, %struct.layer* %73, i32 0, i32 0
  %74 = load %struct.canvas*, %struct.canvas** %l_cvlist69, align 8
  %75 = load %struct.layer*, %struct.layer** @flayer, align 8
  %l_cvlist70 = getelementptr inbounds %struct.layer, %struct.layer* %75, i32 0, i32 0
  store %struct.canvas* %74, %struct.canvas** %l_cvlist70, align 8
  %76 = load i32, i32* %doredisplay, align 4
  %tobool71 = icmp ne i32 %76, 0
  br i1 %tobool71, label %if.then.72, label %if.end.73

if.then.72:                                       ; preds = %if.then.66
  %77 = load %struct.layer*, %struct.layer** @flayer, align 8
  call void @LRefreshAll(%struct.layer* %77, i32 0)
  br label %if.end.73

if.end.73:                                        ; preds = %if.then.72, %if.then.66
  %78 = load %struct.canvas*, %struct.canvas** %cv, align 8
  %79 = load %struct.canvas*, %struct.canvas** %ocv, align 8
  %c_lnext74 = getelementptr inbounds %struct.canvas, %struct.canvas* %79, i32 0, i32 10
  store %struct.canvas* %78, %struct.canvas** %c_lnext74, align 8
  br label %if.end.75

if.end.75:                                        ; preds = %if.end.73, %for.end.64
  %80 = load %struct.layer*, %struct.layer** %oldlay, align 8
  %l_cvlist76 = getelementptr inbounds %struct.layer, %struct.layer* %80, i32 0, i32 0
  store %struct.canvas* null, %struct.canvas** %l_cvlist76, align 8
  %81 = load %struct.layer*, %struct.layer** %oldlay, align 8
  call void @LayerCleanupMemory(%struct.layer* %81)
  %82 = load %struct.layer*, %struct.layer** %oldlay, align 8
  %83 = bitcast %struct.layer* %82 to i8*
  call void @free(i8* %83) #2
  %84 = load %struct.layer*, %struct.layer** @flayer, align 8
  %l_layfn77 = getelementptr inbounds %struct.layer, %struct.layer* %84, i32 0, i32 6
  %85 = load %struct.LayFuncs*, %struct.LayFuncs** %l_layfn77, align 8
  %lf_LayRestore = getelementptr inbounds %struct.LayFuncs, %struct.LayFuncs* %85, i32 0, i32 6
  %86 = load void ()*, void ()** %lf_LayRestore, align 8
  call void %86()
  %87 = load %struct.layer*, %struct.layer** @flayer, align 8
  %88 = load %struct.layer*, %struct.layer** @flayer, align 8
  %l_x = getelementptr inbounds %struct.layer, %struct.layer* %88, i32 0, i32 3
  %89 = load i32, i32* %l_x, align 4
  %90 = load %struct.layer*, %struct.layer** @flayer, align 8
  %l_y = getelementptr inbounds %struct.layer, %struct.layer* %90, i32 0, i32 4
  %91 = load i32, i32* %l_y, align 4
  call void @LGotoPos(%struct.layer* %87, i32 %89, i32 %91)
  ret void
}

; Function Attrs: nounwind uwtable
define i32 @InitOverlayPage(i32 %datasize, %struct.LayFuncs* %lf, i32 %block) #0 {
entry:
  %retval = alloca i32, align 4
  %datasize.addr = alloca i32, align 4
  %lf.addr = alloca %struct.LayFuncs*, align 8
  %block.addr = alloca i32, align 4
  %data = alloca i8*, align 8
  %newlay = alloca %struct.layer*, align 8
  %cv = alloca %struct.canvas*, align 8
  %cvp = alloca %struct.canvas*, align 8
  %cvpp = alloca %struct.canvas**, align 8
  %p = alloca %struct.win*, align 8
  %olddisplay = alloca %struct.display*, align 8
  %olddisplay60 = alloca %struct.display*, align 8
  %cv61 = alloca %struct.canvas*, align 8
  store i32 %datasize, i32* %datasize.addr, align 4
  store %struct.LayFuncs* %lf, %struct.LayFuncs** %lf.addr, align 8
  store i32 %block, i32* %block.addr, align 4
  br label %do.body

do.body:                                          ; preds = %entry
  br label %do.end

do.end:                                           ; preds = %do.body
  store %struct.canvas* null, %struct.canvas** %cv, align 8
  %0 = load %struct.display*, %struct.display** @display, align 8
  %tobool = icmp ne %struct.display* %0, null
  br i1 %tobool, label %land.lhs.true, label %if.end

land.lhs.true:                                    ; preds = %do.end
  %1 = load %struct.display*, %struct.display** @display, align 8
  %d_forecv = getelementptr inbounds %struct.display, %struct.display* %1, i32 0, i32 4
  %2 = load %struct.canvas*, %struct.canvas** %d_forecv, align 8
  %c_layer = getelementptr inbounds %struct.canvas, %struct.canvas* %2, i32 0, i32 9
  %3 = load %struct.layer*, %struct.layer** %c_layer, align 8
  %4 = load %struct.layer*, %struct.layer** @flayer, align 8
  %cmp = icmp eq %struct.layer* %3, %4
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %land.lhs.true
  %5 = load %struct.display*, %struct.display** @display, align 8
  %d_forecv1 = getelementptr inbounds %struct.display, %struct.display* %5, i32 0, i32 4
  %6 = load %struct.canvas*, %struct.canvas** %d_forecv1, align 8
  store %struct.canvas* %6, %struct.canvas** %cv, align 8
  br label %if.end

if.end:                                           ; preds = %if.then, %land.lhs.true, %do.end
  %call = call noalias i8* @calloc(i64 1, i64 128) #2
  %7 = bitcast i8* %call to %struct.layer*
  store %struct.layer* %7, %struct.layer** %newlay, align 8
  %cmp2 = icmp eq %struct.layer* %7, null
  br i1 %cmp2, label %if.then.3, label %if.end.4

if.then.3:                                        ; preds = %if.end
  call void (i32, i8*, ...) @Msg(i32 0, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str, i32 0, i32 0))
  store i32 -1, i32* %retval
  br label %return

if.end.4:                                         ; preds = %if.end
  br label %do.body.5

do.body.5:                                        ; preds = %if.end.4
  br label %do.end.6

do.end.6:                                         ; preds = %do.body.5
  store i8* null, i8** %data, align 8
  %8 = load i32, i32* %datasize.addr, align 4
  %tobool7 = icmp ne i32 %8, 0
  br i1 %tobool7, label %if.then.8, label %if.end.14

if.then.8:                                        ; preds = %do.end.6
  %9 = load i32, i32* %datasize.addr, align 4
  %conv = sext i32 %9 to i64
  %call9 = call noalias i8* @calloc(i64 1, i64 %conv) #2
  store i8* %call9, i8** %data, align 8
  %cmp10 = icmp eq i8* %call9, null
  br i1 %cmp10, label %if.then.12, label %if.end.13

if.then.12:                                       ; preds = %if.then.8
  %10 = load %struct.layer*, %struct.layer** %newlay, align 8
  %11 = bitcast %struct.layer* %10 to i8*
  call void @free(i8* %11) #2
  call void (i32, i8*, ...) @Msg(i32 0, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.1, i32 0, i32 0))
  store i32 -1, i32* %retval
  br label %return

if.end.13:                                        ; preds = %if.then.8
  br label %if.end.14

if.end.14:                                        ; preds = %if.end.13, %do.end.6
  %12 = load %struct.layer*, %struct.layer** @flayer, align 8
  %l_bottom = getelementptr inbounds %struct.layer, %struct.layer* %12, i32 0, i32 9
  %13 = load %struct.layer*, %struct.layer** %l_bottom, align 8
  %l_data = getelementptr inbounds %struct.layer, %struct.layer* %13, i32 0, i32 7
  %14 = load i8*, i8** %l_data, align 8
  %15 = bitcast i8* %14 to %struct.win*
  store %struct.win* %15, %struct.win** %p, align 8
  %16 = load %struct.win*, %struct.win** %p, align 8
  %tobool15 = icmp ne %struct.win* %16, null
  br i1 %tobool15, label %land.lhs.true.16, label %if.end.38

land.lhs.true.16:                                 ; preds = %if.end.14
  %17 = load %struct.win*, %struct.win** %p, align 8
  %w_savelayer = getelementptr inbounds %struct.win, %struct.win* %17, i32 0, i32 4
  %18 = load %struct.layer*, %struct.layer** %w_savelayer, align 8
  %19 = load %struct.layer*, %struct.layer** @flayer, align 8
  %cmp17 = icmp eq %struct.layer* %18, %19
  br i1 %cmp17, label %if.then.23, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %land.lhs.true.16
  %20 = load i32, i32* %block.addr, align 4
  %tobool19 = icmp ne i32 %20, 0
  br i1 %tobool19, label %land.lhs.true.20, label %if.end.38

land.lhs.true.20:                                 ; preds = %lor.lhs.false
  %21 = load %struct.layer*, %struct.layer** @flayer, align 8
  %l_next = getelementptr inbounds %struct.layer, %struct.layer* %21, i32 0, i32 8
  %22 = load %struct.layer*, %struct.layer** %l_next, align 8
  %cmp21 = icmp eq %struct.layer* %22, null
  br i1 %cmp21, label %if.then.23, label %if.end.38

if.then.23:                                       ; preds = %land.lhs.true.20, %land.lhs.true.16
  %23 = load %struct.win*, %struct.win** %p, align 8
  %w_savelayer24 = getelementptr inbounds %struct.win, %struct.win* %23, i32 0, i32 4
  %24 = load %struct.layer*, %struct.layer** %w_savelayer24, align 8
  %tobool25 = icmp ne %struct.layer* %24, null
  br i1 %tobool25, label %land.lhs.true.26, label %if.end.36

land.lhs.true.26:                                 ; preds = %if.then.23
  %25 = load %struct.win*, %struct.win** %p, align 8
  %w_savelayer27 = getelementptr inbounds %struct.win, %struct.win* %25, i32 0, i32 4
  %26 = load %struct.layer*, %struct.layer** %w_savelayer27, align 8
  %27 = load %struct.layer*, %struct.layer** @flayer, align 8
  %cmp28 = icmp ne %struct.layer* %26, %27
  br i1 %cmp28, label %land.lhs.true.30, label %if.end.36

land.lhs.true.30:                                 ; preds = %land.lhs.true.26
  %28 = load %struct.win*, %struct.win** %p, align 8
  %w_savelayer31 = getelementptr inbounds %struct.win, %struct.win* %28, i32 0, i32 4
  %29 = load %struct.layer*, %struct.layer** %w_savelayer31, align 8
  %l_cvlist = getelementptr inbounds %struct.layer, %struct.layer* %29, i32 0, i32 0
  %30 = load %struct.canvas*, %struct.canvas** %l_cvlist, align 8
  %cmp32 = icmp eq %struct.canvas* %30, null
  br i1 %cmp32, label %if.then.34, label %if.end.36

if.then.34:                                       ; preds = %land.lhs.true.30
  %31 = load %struct.win*, %struct.win** %p, align 8
  %w_savelayer35 = getelementptr inbounds %struct.win, %struct.win* %31, i32 0, i32 4
  %32 = load %struct.layer*, %struct.layer** %w_savelayer35, align 8
  call void @KillLayerChain(%struct.layer* %32)
  br label %if.end.36

if.end.36:                                        ; preds = %if.then.34, %land.lhs.true.30, %land.lhs.true.26, %if.then.23
  %33 = load %struct.layer*, %struct.layer** %newlay, align 8
  %34 = load %struct.win*, %struct.win** %p, align 8
  %w_savelayer37 = getelementptr inbounds %struct.win, %struct.win* %34, i32 0, i32 4
  store %struct.layer* %33, %struct.layer** %w_savelayer37, align 8
  br label %if.end.38

if.end.38:                                        ; preds = %if.end.36, %land.lhs.true.20, %lor.lhs.false, %if.end.14
  %35 = load %struct.canvas*, %struct.canvas** %cv, align 8
  %tobool39 = icmp ne %struct.canvas* %35, null
  br i1 %tobool39, label %land.lhs.true.40, label %if.else

land.lhs.true.40:                                 ; preds = %if.end.38
  %36 = load %struct.layer*, %struct.layer** @flayer, align 8
  %l_next41 = getelementptr inbounds %struct.layer, %struct.layer* %36, i32 0, i32 8
  %37 = load %struct.layer*, %struct.layer** %l_next41, align 8
  %cmp42 = icmp eq %struct.layer* %37, null
  br i1 %cmp42, label %land.lhs.true.44, label %if.else

land.lhs.true.44:                                 ; preds = %land.lhs.true.40
  %38 = load i32, i32* %block.addr, align 4
  %tobool45 = icmp ne i32 %38, 0
  br i1 %tobool45, label %if.else, label %if.then.46

if.then.46:                                       ; preds = %land.lhs.true.44
  %39 = load %struct.display*, %struct.display** @display, align 8
  store %struct.display* %39, %struct.display** %olddisplay, align 8
  %40 = load %struct.canvas*, %struct.canvas** %cv, align 8
  %c_display = getelementptr inbounds %struct.canvas, %struct.canvas* %40, i32 0, i32 1
  %41 = load %struct.display*, %struct.display** %c_display, align 8
  store %struct.display* %41, %struct.display** @display, align 8
  call void @RemoveStatus()
  %42 = load %struct.display*, %struct.display** %olddisplay, align 8
  store %struct.display* %42, %struct.display** @display, align 8
  %43 = load %struct.layer*, %struct.layer** @flayer, align 8
  %l_cvlist47 = getelementptr inbounds %struct.layer, %struct.layer* %43, i32 0, i32 0
  store %struct.canvas** %l_cvlist47, %struct.canvas*** %cvpp, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.then.46
  %44 = load %struct.canvas**, %struct.canvas*** %cvpp, align 8
  %45 = load %struct.canvas*, %struct.canvas** %44, align 8
  store %struct.canvas* %45, %struct.canvas** %cvp, align 8
  %tobool48 = icmp ne %struct.canvas* %45, null
  br i1 %tobool48, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %46 = load %struct.canvas*, %struct.canvas** %cvp, align 8
  %47 = load %struct.canvas*, %struct.canvas** %cv, align 8
  %cmp49 = icmp eq %struct.canvas* %46, %47
  br i1 %cmp49, label %if.then.51, label %if.end.52

if.then.51:                                       ; preds = %for.body
  br label %for.end

if.end.52:                                        ; preds = %for.body
  br label %for.inc

for.inc:                                          ; preds = %if.end.52
  %48 = load %struct.canvas*, %struct.canvas** %cvp, align 8
  %c_lnext = getelementptr inbounds %struct.canvas, %struct.canvas* %48, i32 0, i32 10
  store %struct.canvas** %c_lnext, %struct.canvas*** %cvpp, align 8
  br label %for.cond

for.end:                                          ; preds = %if.then.51, %for.cond
  br label %do.body.53

do.body.53:                                       ; preds = %for.end
  br label %do.end.54

do.end.54:                                        ; preds = %do.body.53
  %49 = load %struct.canvas*, %struct.canvas** %cv, align 8
  %c_lnext55 = getelementptr inbounds %struct.canvas, %struct.canvas* %49, i32 0, i32 10
  %50 = load %struct.canvas*, %struct.canvas** %c_lnext55, align 8
  %51 = load %struct.canvas**, %struct.canvas*** %cvpp, align 8
  store %struct.canvas* %50, %struct.canvas** %51, align 8
  %52 = load %struct.canvas*, %struct.canvas** %cv, align 8
  %53 = load %struct.layer*, %struct.layer** %newlay, align 8
  %l_cvlist56 = getelementptr inbounds %struct.layer, %struct.layer* %53, i32 0, i32 0
  store %struct.canvas* %52, %struct.canvas** %l_cvlist56, align 8
  %54 = load %struct.canvas*, %struct.canvas** %cv, align 8
  %c_lnext57 = getelementptr inbounds %struct.canvas, %struct.canvas* %54, i32 0, i32 10
  store %struct.canvas* null, %struct.canvas** %c_lnext57, align 8
  %55 = load %struct.layer*, %struct.layer** %newlay, align 8
  %56 = load %struct.canvas*, %struct.canvas** %cv, align 8
  %c_layer58 = getelementptr inbounds %struct.canvas, %struct.canvas* %56, i32 0, i32 9
  store %struct.layer* %55, %struct.layer** %c_layer58, align 8
  br label %if.end.108

if.else:                                          ; preds = %land.lhs.true.44, %land.lhs.true.40, %if.end.38
  br label %do.body.59

do.body.59:                                       ; preds = %if.else
  %57 = load %struct.display*, %struct.display** @display, align 8
  store %struct.display* %57, %struct.display** %olddisplay60, align 8
  %58 = load %struct.display*, %struct.display** @displays, align 8
  store %struct.display* %58, %struct.display** @display, align 8
  br label %for.cond.62

for.cond.62:                                      ; preds = %for.inc.79, %do.body.59
  %59 = load %struct.display*, %struct.display** @display, align 8
  %tobool63 = icmp ne %struct.display* %59, null
  br i1 %tobool63, label %for.body.64, label %for.end.80

for.body.64:                                      ; preds = %for.cond.62
  %60 = load %struct.display*, %struct.display** @display, align 8
  %d_cvlist = getelementptr inbounds %struct.display, %struct.display* %60, i32 0, i32 3
  %61 = load %struct.canvas*, %struct.canvas** %d_cvlist, align 8
  store %struct.canvas* %61, %struct.canvas** %cv61, align 8
  br label %for.cond.65

for.cond.65:                                      ; preds = %for.inc.73, %for.body.64
  %62 = load %struct.canvas*, %struct.canvas** %cv61, align 8
  %tobool66 = icmp ne %struct.canvas* %62, null
  br i1 %tobool66, label %for.body.67, label %for.end.74

for.body.67:                                      ; preds = %for.cond.65
  %63 = load %struct.canvas*, %struct.canvas** %cv61, align 8
  %c_layer68 = getelementptr inbounds %struct.canvas, %struct.canvas* %63, i32 0, i32 9
  %64 = load %struct.layer*, %struct.layer** %c_layer68, align 8
  %65 = load %struct.layer*, %struct.layer** @flayer, align 8
  %cmp69 = icmp eq %struct.layer* %64, %65
  br i1 %cmp69, label %if.then.71, label %if.end.72

if.then.71:                                       ; preds = %for.body.67
  br label %for.end.74

if.end.72:                                        ; preds = %for.body.67
  br label %for.inc.73

for.inc.73:                                       ; preds = %if.end.72
  %66 = load %struct.canvas*, %struct.canvas** %cv61, align 8
  %c_next = getelementptr inbounds %struct.canvas, %struct.canvas* %66, i32 0, i32 0
  %67 = load %struct.canvas*, %struct.canvas** %c_next, align 8
  store %struct.canvas* %67, %struct.canvas** %cv61, align 8
  br label %for.cond.65

for.end.74:                                       ; preds = %if.then.71, %for.cond.65
  %68 = load %struct.canvas*, %struct.canvas** %cv61, align 8
  %cmp75 = icmp eq %struct.canvas* %68, null
  br i1 %cmp75, label %if.then.77, label %if.end.78

if.then.77:                                       ; preds = %for.end.74
  br label %for.inc.79

if.end.78:                                        ; preds = %for.end.74
  call void @RemoveStatus()
  br label %for.inc.79

for.inc.79:                                       ; preds = %if.end.78, %if.then.77
  %69 = load %struct.display*, %struct.display** @display, align 8
  %d_next = getelementptr inbounds %struct.display, %struct.display* %69, i32 0, i32 0
  %70 = load %struct.display*, %struct.display** %d_next, align 8
  store %struct.display* %70, %struct.display** @display, align 8
  br label %for.cond.62

for.end.80:                                       ; preds = %for.cond.62
  %71 = load %struct.display*, %struct.display** %olddisplay60, align 8
  store %struct.display* %71, %struct.display** @display, align 8
  br label %do.end.81

do.end.81:                                        ; preds = %for.end.80
  %72 = load i32, i32* %block.addr, align 4
  %tobool82 = icmp ne i32 %72, 0
  br i1 %tobool82, label %if.then.83, label %if.end.86

if.then.83:                                       ; preds = %do.end.81
  br label %do.body.84

do.body.84:                                       ; preds = %if.then.83
  br label %do.end.85

do.end.85:                                        ; preds = %do.body.84
  br label %if.end.86

if.end.86:                                        ; preds = %do.end.85, %do.end.81
  %73 = load i32, i32* %block.addr, align 4
  %tobool87 = icmp ne i32 %73, 0
  br i1 %tobool87, label %land.lhs.true.88, label %if.end.96

land.lhs.true.88:                                 ; preds = %if.end.86
  %74 = load %struct.layer*, %struct.layer** @flayer, align 8
  %l_layfn = getelementptr inbounds %struct.layer, %struct.layer* %74, i32 0, i32 6
  %75 = load %struct.LayFuncs*, %struct.LayFuncs** %l_layfn, align 8
  %cmp89 = icmp eq %struct.LayFuncs* %75, @WinLf
  br i1 %cmp89, label %if.then.91, label %if.end.96

if.then.91:                                       ; preds = %land.lhs.true.88
  br label %do.body.92

do.body.92:                                       ; preds = %if.then.91
  br label %do.end.93

do.end.93:                                        ; preds = %do.body.92
  br label %do.body.94

do.body.94:                                       ; preds = %do.end.93
  br label %do.end.95

do.end.95:                                        ; preds = %do.body.94
  %76 = load %struct.win*, %struct.win** %p, align 8
  %w_blocked = getelementptr inbounds %struct.win, %struct.win* %76, i32 0, i32 5
  %77 = load i32, i32* %w_blocked, align 4
  %inc = add nsw i32 %77, 1
  store i32 %inc, i32* %w_blocked, align 4
  %78 = load %struct.layer*, %struct.layer** %newlay, align 8
  %l_blocking = getelementptr inbounds %struct.layer, %struct.layer* %78, i32 0, i32 10
  store i32 1, i32* %l_blocking, align 4
  br label %if.end.96

if.end.96:                                        ; preds = %do.end.95, %land.lhs.true.88, %if.end.86
  %79 = load %struct.layer*, %struct.layer** @flayer, align 8
  %l_cvlist97 = getelementptr inbounds %struct.layer, %struct.layer* %79, i32 0, i32 0
  %80 = load %struct.canvas*, %struct.canvas** %l_cvlist97, align 8
  %81 = load %struct.layer*, %struct.layer** %newlay, align 8
  %l_cvlist98 = getelementptr inbounds %struct.layer, %struct.layer* %81, i32 0, i32 0
  store %struct.canvas* %80, %struct.canvas** %l_cvlist98, align 8
  %82 = load %struct.layer*, %struct.layer** %newlay, align 8
  %l_cvlist99 = getelementptr inbounds %struct.layer, %struct.layer* %82, i32 0, i32 0
  %83 = load %struct.canvas*, %struct.canvas** %l_cvlist99, align 8
  store %struct.canvas* %83, %struct.canvas** %cvp, align 8
  br label %for.cond.100

for.cond.100:                                     ; preds = %for.inc.104, %if.end.96
  %84 = load %struct.canvas*, %struct.canvas** %cvp, align 8
  %tobool101 = icmp ne %struct.canvas* %84, null
  br i1 %tobool101, label %for.body.102, label %for.end.106

for.body.102:                                     ; preds = %for.cond.100
  %85 = load %struct.layer*, %struct.layer** %newlay, align 8
  %86 = load %struct.canvas*, %struct.canvas** %cvp, align 8
  %c_layer103 = getelementptr inbounds %struct.canvas, %struct.canvas* %86, i32 0, i32 9
  store %struct.layer* %85, %struct.layer** %c_layer103, align 8
  br label %for.inc.104

for.inc.104:                                      ; preds = %for.body.102
  %87 = load %struct.canvas*, %struct.canvas** %cvp, align 8
  %c_lnext105 = getelementptr inbounds %struct.canvas, %struct.canvas* %87, i32 0, i32 10
  %88 = load %struct.canvas*, %struct.canvas** %c_lnext105, align 8
  store %struct.canvas* %88, %struct.canvas** %cvp, align 8
  br label %for.cond.100

for.end.106:                                      ; preds = %for.cond.100
  %89 = load %struct.layer*, %struct.layer** @flayer, align 8
  %l_cvlist107 = getelementptr inbounds %struct.layer, %struct.layer* %89, i32 0, i32 0
  store %struct.canvas* null, %struct.canvas** %l_cvlist107, align 8
  br label %if.end.108

if.end.108:                                       ; preds = %for.end.106, %do.end.54
  %90 = load %struct.layer*, %struct.layer** @flayer, align 8
  %l_width = getelementptr inbounds %struct.layer, %struct.layer* %90, i32 0, i32 1
  %91 = load i32, i32* %l_width, align 4
  %92 = load %struct.layer*, %struct.layer** %newlay, align 8
  %l_width109 = getelementptr inbounds %struct.layer, %struct.layer* %92, i32 0, i32 1
  store i32 %91, i32* %l_width109, align 4
  %93 = load %struct.layer*, %struct.layer** @flayer, align 8
  %l_height = getelementptr inbounds %struct.layer, %struct.layer* %93, i32 0, i32 2
  %94 = load i32, i32* %l_height, align 4
  %95 = load %struct.layer*, %struct.layer** %newlay, align 8
  %l_height110 = getelementptr inbounds %struct.layer, %struct.layer* %95, i32 0, i32 2
  store i32 %94, i32* %l_height110, align 4
  %96 = load %struct.layer*, %struct.layer** %newlay, align 8
  %l_encoding = getelementptr inbounds %struct.layer, %struct.layer* %96, i32 0, i32 5
  store i32 0, i32* %l_encoding, align 4
  %97 = load %struct.LayFuncs*, %struct.LayFuncs** %lf.addr, align 8
  %98 = load %struct.layer*, %struct.layer** %newlay, align 8
  %l_layfn111 = getelementptr inbounds %struct.layer, %struct.layer* %98, i32 0, i32 6
  store %struct.LayFuncs* %97, %struct.LayFuncs** %l_layfn111, align 8
  %99 = load i8*, i8** %data, align 8
  %100 = load %struct.layer*, %struct.layer** %newlay, align 8
  %l_data112 = getelementptr inbounds %struct.layer, %struct.layer* %100, i32 0, i32 7
  store i8* %99, i8** %l_data112, align 8
  %101 = load %struct.layer*, %struct.layer** @flayer, align 8
  %102 = load %struct.layer*, %struct.layer** %newlay, align 8
  %l_next113 = getelementptr inbounds %struct.layer, %struct.layer* %102, i32 0, i32 8
  store %struct.layer* %101, %struct.layer** %l_next113, align 8
  %103 = load %struct.layer*, %struct.layer** @flayer, align 8
  %l_bottom114 = getelementptr inbounds %struct.layer, %struct.layer* %103, i32 0, i32 9
  %104 = load %struct.layer*, %struct.layer** %l_bottom114, align 8
  %105 = load %struct.layer*, %struct.layer** %newlay, align 8
  %l_bottom115 = getelementptr inbounds %struct.layer, %struct.layer* %105, i32 0, i32 9
  store %struct.layer* %104, %struct.layer** %l_bottom115, align 8
  %106 = load %struct.layer*, %struct.layer** %newlay, align 8
  store %struct.layer* %106, %struct.layer** @flayer, align 8
  %107 = load %struct.layer*, %struct.layer** @flayer, align 8
  %l_layfn116 = getelementptr inbounds %struct.layer, %struct.layer* %107, i32 0, i32 6
  %108 = load %struct.LayFuncs*, %struct.LayFuncs** %l_layfn116, align 8
  %lf_LayRestore = getelementptr inbounds %struct.LayFuncs, %struct.LayFuncs* %108, i32 0, i32 6
  %109 = load void ()*, void ()** %lf_LayRestore, align 8
  call void %109()
  store i32 0, i32* %retval
  br label %return

return:                                           ; preds = %if.end.108, %if.then.12, %if.then.3
  %110 = load i32, i32* %retval
  ret i32 %110
}

; Function Attrs: nounwind
declare noalias i8* @calloc(i64, i64) #4

declare void @Msg(i32, i8*, ...) #1

; Function Attrs: nounwind
declare void @free(i8*) #4

declare void @RemoveStatus() #1

; Function Attrs: nounwind uwtable
define void @LayerCleanupMemory(%struct.layer* %layer) #0 {
entry:
  %layer.addr = alloca %struct.layer*, align 8
  store %struct.layer* %layer, %struct.layer** %layer.addr, align 8
  %0 = load %struct.layer*, %struct.layer** %layer.addr, align 8
  %l_pause = getelementptr inbounds %struct.layer, %struct.layer* %0, i32 0, i32 13
  %left = getelementptr inbounds %struct.anon.0, %struct.anon.0* %l_pause, i32 0, i32 1
  %1 = load i32*, i32** %left, align 8
  %tobool = icmp ne i32* %1, null
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %2 = load %struct.layer*, %struct.layer** %layer.addr, align 8
  %l_pause1 = getelementptr inbounds %struct.layer, %struct.layer* %2, i32 0, i32 13
  %left2 = getelementptr inbounds %struct.anon.0, %struct.anon.0* %l_pause1, i32 0, i32 1
  %3 = load i32*, i32** %left2, align 8
  %4 = bitcast i32* %3 to i8*
  call void @free(i8* %4) #2
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %5 = load %struct.layer*, %struct.layer** %layer.addr, align 8
  %l_pause3 = getelementptr inbounds %struct.layer, %struct.layer* %5, i32 0, i32 13
  %right = getelementptr inbounds %struct.anon.0, %struct.anon.0* %l_pause3, i32 0, i32 2
  %6 = load i32*, i32** %right, align 8
  %tobool4 = icmp ne i32* %6, null
  br i1 %tobool4, label %if.then.5, label %if.end.8

if.then.5:                                        ; preds = %if.end
  %7 = load %struct.layer*, %struct.layer** %layer.addr, align 8
  %l_pause6 = getelementptr inbounds %struct.layer, %struct.layer* %7, i32 0, i32 13
  %right7 = getelementptr inbounds %struct.anon.0, %struct.anon.0* %l_pause6, i32 0, i32 2
  %8 = load i32*, i32** %right7, align 8
  %9 = bitcast i32* %8 to i8*
  call void @free(i8* %9) #2
  br label %if.end.8

if.end.8:                                         ; preds = %if.then.5, %if.end
  ret void
}

; Function Attrs: nounwind uwtable
define i32 @LayProcessMouse(%struct.layer* %l, i8 zeroext %ch) #0 {
entry:
  %retval = alloca i32, align 4
  %l.addr = alloca %struct.layer*, align 8
  %ch.addr = alloca i8, align 1
  %len = alloca i32, align 4
  store %struct.layer* %l, %struct.layer** %l.addr, align 8
  store i8 %ch, i8* %ch.addr, align 1
  %0 = load %struct.layer*, %struct.layer** %l.addr, align 8
  %l_mouseevent = getelementptr inbounds %struct.layer, %struct.layer* %0, i32 0, i32 12
  %len1 = getelementptr inbounds %struct.anon, %struct.anon* %l_mouseevent, i32 0, i32 1
  %1 = load i32, i32* %len1, align 4
  %conv = sext i32 %1 to i64
  %cmp = icmp uge i64 %conv, 3
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store i32 -1, i32* %retval
  br label %return

if.end:                                           ; preds = %entry
  %2 = load %struct.layer*, %struct.layer** %l.addr, align 8
  %l_mouseevent3 = getelementptr inbounds %struct.layer, %struct.layer* %2, i32 0, i32 12
  %len4 = getelementptr inbounds %struct.anon, %struct.anon* %l_mouseevent3, i32 0, i32 1
  %3 = load i32, i32* %len4, align 4
  %inc = add nsw i32 %3, 1
  store i32 %inc, i32* %len4, align 4
  store i32 %3, i32* %len, align 4
  %4 = load i32, i32* %len, align 4
  %cmp5 = icmp sgt i32 %4, 0
  br i1 %cmp5, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.end
  %5 = load i8, i8* %ch.addr, align 1
  %conv7 = zext i8 %5 to i32
  %sub = sub nsw i32 %conv7, 33
  br label %cond.end

cond.false:                                       ; preds = %if.end
  %6 = load i8, i8* %ch.addr, align 1
  %conv8 = zext i8 %6 to i32
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %sub, %cond.true ], [ %conv8, %cond.false ]
  %conv9 = trunc i32 %cond to i8
  %7 = load i32, i32* %len, align 4
  %idxprom = sext i32 %7 to i64
  %8 = load %struct.layer*, %struct.layer** %l.addr, align 8
  %l_mouseevent10 = getelementptr inbounds %struct.layer, %struct.layer* %8, i32 0, i32 12
  %buffer = getelementptr inbounds %struct.anon, %struct.anon* %l_mouseevent10, i32 0, i32 0
  %arrayidx = getelementptr inbounds [3 x i8], [3 x i8]* %buffer, i32 0, i64 %idxprom
  store i8 %conv9, i8* %arrayidx, align 1
  %9 = load %struct.layer*, %struct.layer** %l.addr, align 8
  %l_mouseevent11 = getelementptr inbounds %struct.layer, %struct.layer* %9, i32 0, i32 12
  %len12 = getelementptr inbounds %struct.anon, %struct.anon* %l_mouseevent11, i32 0, i32 1
  %10 = load i32, i32* %len12, align 4
  %conv13 = sext i32 %10 to i64
  %cmp14 = icmp eq i64 %conv13, 3
  %conv15 = zext i1 %cmp14 to i32
  store i32 %conv15, i32* %retval
  br label %return

return:                                           ; preds = %cond.end, %if.then
  %11 = load i32, i32* %retval
  ret i32 %11
}

; Function Attrs: nounwind uwtable
define void @LayProcessMouseSwitch(%struct.layer* %l, i32 %s) #0 {
entry:
  %l.addr = alloca %struct.layer*, align 8
  %s.addr = alloca i32, align 4
  store %struct.layer* %l, %struct.layer** %l.addr, align 8
  store i32 %s, i32* %s.addr, align 4
  %0 = load i32, i32* %s.addr, align 4
  %1 = load %struct.layer*, %struct.layer** %l.addr, align 8
  %l_mouseevent = getelementptr inbounds %struct.layer, %struct.layer* %1, i32 0, i32 12
  %start = getelementptr inbounds %struct.anon, %struct.anon* %l_mouseevent, i32 0, i32 2
  store i32 %0, i32* %start, align 4
  %tobool = icmp ne i32 %0, 0
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %2 = load %struct.layer*, %struct.layer** %l.addr, align 8
  %l_mouseevent1 = getelementptr inbounds %struct.layer, %struct.layer* %2, i32 0, i32 12
  %len = getelementptr inbounds %struct.anon, %struct.anon* %l_mouseevent1, i32 0, i32 1
  store i32 0, i32* %len, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  ret void
}

; Function Attrs: nounwind uwtable
define void @LayPause(%struct.layer* %layer, i32 %pause) #0 {
entry:
  %layer.addr = alloca %struct.layer*, align 8
  %pause.addr = alloca i32, align 4
  %cv = alloca %struct.canvas*, align 8
  %olddisplay = alloca %struct.display*, align 8
  %line = alloca i32, align 4
  %win = alloca %struct.win*, align 8
  %vp = alloca %struct.viewport*, align 8
  %xs = alloca i32, align 4
  %xe = alloca i32, align 4
  %ml = alloca %struct.mline*, align 8
  %cx = alloca i32, align 4
  %cy = alloca i32, align 4
  store %struct.layer* %layer, %struct.layer** %layer.addr, align 8
  store i32 %pause, i32* %pause.addr, align 4
  %0 = load %struct.display*, %struct.display** @display, align 8
  store %struct.display* %0, %struct.display** %olddisplay, align 8
  %1 = load i32, i32* %pause.addr, align 4
  %tobool = icmp ne i32 %1, 0
  %lnot = xor i1 %tobool, true
  %lnot1 = xor i1 %lnot, true
  %lnot.ext = zext i1 %lnot1 to i32
  store i32 %lnot.ext, i32* %pause.addr, align 4
  %2 = load %struct.layer*, %struct.layer** %layer.addr, align 8
  %l_pause = getelementptr inbounds %struct.layer, %struct.layer* %2, i32 0, i32 13
  %3 = bitcast %struct.anon.0* %l_pause to i8*
  %bf.load = load i8, i8* %3, align 8
  %bf.shl = shl i8 %bf.load, 7
  %bf.ashr = ashr i8 %bf.shl, 7
  %bf.cast = sext i8 %bf.ashr to i32
  %4 = load i32, i32* %pause.addr, align 4
  %cmp = icmp eq i32 %bf.cast, %4
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  br label %return

if.end:                                           ; preds = %entry
  %5 = load i32, i32* %pause.addr, align 4
  %6 = load %struct.layer*, %struct.layer** %layer.addr, align 8
  %l_pause2 = getelementptr inbounds %struct.layer, %struct.layer* %6, i32 0, i32 13
  %7 = bitcast %struct.anon.0* %l_pause2 to i8*
  %8 = trunc i32 %5 to i8
  %bf.load3 = load i8, i8* %7, align 8
  %bf.value = and i8 %8, 1
  %bf.clear = and i8 %bf.load3, -2
  %bf.set = or i8 %bf.clear, %bf.value
  store i8 %bf.set, i8* %7, align 8
  %bf.result.shl = shl i8 %bf.value, 7
  %bf.result.ashr = ashr i8 %bf.result.shl, 7
  %bf.result.cast = sext i8 %bf.result.ashr to i32
  %tobool4 = icmp ne i32 %bf.result.cast, 0
  br i1 %tobool4, label %if.then.5, label %if.end.8

if.then.5:                                        ; preds = %if.end
  %9 = load %struct.layer*, %struct.layer** %layer.addr, align 8
  %l_pause6 = getelementptr inbounds %struct.layer, %struct.layer* %9, i32 0, i32 13
  %bottom = getelementptr inbounds %struct.anon.0, %struct.anon.0* %l_pause6, i32 0, i32 4
  store i32 -1, i32* %bottom, align 4
  %10 = load %struct.layer*, %struct.layer** %layer.addr, align 8
  %l_pause7 = getelementptr inbounds %struct.layer, %struct.layer* %10, i32 0, i32 13
  %top = getelementptr inbounds %struct.anon.0, %struct.anon.0* %l_pause7, i32 0, i32 3
  store i32 -1, i32* %top, align 4
  br label %return

if.end.8:                                         ; preds = %if.end
  %11 = load %struct.layer*, %struct.layer** %layer.addr, align 8
  %l_pause9 = getelementptr inbounds %struct.layer, %struct.layer* %11, i32 0, i32 13
  %top10 = getelementptr inbounds %struct.anon.0, %struct.anon.0* %l_pause9, i32 0, i32 3
  %12 = load i32, i32* %top10, align 4
  %cmp11 = icmp eq i32 %12, -1
  br i1 %cmp11, label %land.lhs.true, label %if.end.16

land.lhs.true:                                    ; preds = %if.end.8
  %13 = load %struct.layer*, %struct.layer** %layer.addr, align 8
  %l_pause12 = getelementptr inbounds %struct.layer, %struct.layer* %13, i32 0, i32 13
  %bottom13 = getelementptr inbounds %struct.anon.0, %struct.anon.0* %l_pause12, i32 0, i32 4
  %14 = load i32, i32* %bottom13, align 4
  %cmp14 = icmp eq i32 %14, -1
  br i1 %cmp14, label %if.then.15, label %if.end.16

if.then.15:                                       ; preds = %land.lhs.true
  br label %return

if.end.16:                                        ; preds = %land.lhs.true, %if.end.8
  %15 = load %struct.layer*, %struct.layer** %layer.addr, align 8
  %l_layfn = getelementptr inbounds %struct.layer, %struct.layer* %15, i32 0, i32 6
  %16 = load %struct.LayFuncs*, %struct.LayFuncs** %l_layfn, align 8
  %cmp17 = icmp eq %struct.LayFuncs* %16, @WinLf
  br i1 %cmp17, label %if.then.18, label %if.else

if.then.18:                                       ; preds = %if.end.16
  %17 = load %struct.layer*, %struct.layer** %layer.addr, align 8
  %l_data = getelementptr inbounds %struct.layer, %struct.layer* %17, i32 0, i32 7
  %18 = load i8*, i8** %l_data, align 8
  %19 = bitcast i8* %18 to %struct.win*
  store %struct.win* %19, %struct.win** %win, align 8
  br label %if.end.19

if.else:                                          ; preds = %if.end.16
  store %struct.win* null, %struct.win** %win, align 8
  br label %if.end.19

if.end.19:                                        ; preds = %if.else, %if.then.18
  %20 = load %struct.layer*, %struct.layer** %layer.addr, align 8
  %l_cvlist = getelementptr inbounds %struct.layer, %struct.layer* %20, i32 0, i32 0
  %21 = load %struct.canvas*, %struct.canvas** %l_cvlist, align 8
  store %struct.canvas* %21, %struct.canvas** %cv, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.inc.131, %if.end.19
  %22 = load %struct.canvas*, %struct.canvas** %cv, align 8
  %tobool20 = icmp ne %struct.canvas* %22, null
  br i1 %tobool20, label %for.body, label %for.end.132

for.body:                                         ; preds = %for.cond
  %23 = load %struct.canvas*, %struct.canvas** %cv, align 8
  %c_slorient = getelementptr inbounds %struct.canvas, %struct.canvas* %23, i32 0, i32 6
  %24 = load i32, i32* %c_slorient, align 4
  %tobool21 = icmp ne i32 %24, 0
  br i1 %tobool21, label %if.end.23, label %if.then.22

if.then.22:                                       ; preds = %for.body
  br label %for.inc.131

if.end.23:                                        ; preds = %for.body
  %25 = load %struct.canvas*, %struct.canvas** %cv, align 8
  %c_display = getelementptr inbounds %struct.canvas, %struct.canvas* %25, i32 0, i32 1
  %26 = load %struct.display*, %struct.display** %c_display, align 8
  store %struct.display* %26, %struct.display** @display, align 8
  %27 = load %struct.canvas*, %struct.canvas** %cv, align 8
  %c_vplist = getelementptr inbounds %struct.canvas, %struct.canvas* %27, i32 0, i32 8
  %28 = load %struct.viewport*, %struct.viewport** %c_vplist, align 8
  store %struct.viewport* %28, %struct.viewport** %vp, align 8
  br label %for.cond.24

for.cond.24:                                      ; preds = %for.inc.103, %if.end.23
  %29 = load %struct.viewport*, %struct.viewport** %vp, align 8
  %tobool25 = icmp ne %struct.viewport* %29, null
  br i1 %tobool25, label %for.body.26, label %for.end.104

for.body.26:                                      ; preds = %for.cond.24
  %30 = load %struct.layer*, %struct.layer** %layer.addr, align 8
  %l_pause27 = getelementptr inbounds %struct.layer, %struct.layer* %30, i32 0, i32 13
  %top28 = getelementptr inbounds %struct.anon.0, %struct.anon.0* %l_pause27, i32 0, i32 3
  %31 = load i32, i32* %top28, align 4
  store i32 %31, i32* %line, align 4
  br label %for.cond.29

for.cond.29:                                      ; preds = %for.inc, %for.body.26
  %32 = load i32, i32* %line, align 4
  %33 = load %struct.layer*, %struct.layer** %layer.addr, align 8
  %l_pause30 = getelementptr inbounds %struct.layer, %struct.layer* %33, i32 0, i32 13
  %bottom31 = getelementptr inbounds %struct.anon.0, %struct.anon.0* %l_pause30, i32 0, i32 4
  %34 = load i32, i32* %bottom31, align 4
  %cmp32 = icmp sle i32 %32, %34
  br i1 %cmp32, label %for.body.33, label %for.end

for.body.33:                                      ; preds = %for.cond.29
  %35 = load i32, i32* %line, align 4
  %36 = load %struct.viewport*, %struct.viewport** %vp, align 8
  %v_yoff = getelementptr inbounds %struct.viewport, %struct.viewport* %36, i32 0, i32 3
  %37 = load i32, i32* %v_yoff, align 4
  %add = add nsw i32 %35, %37
  %38 = load %struct.viewport*, %struct.viewport** %vp, align 8
  %v_ys = getelementptr inbounds %struct.viewport, %struct.viewport* %38, i32 0, i32 6
  %39 = load i32, i32* %v_ys, align 4
  %cmp34 = icmp sge i32 %add, %39
  br i1 %cmp34, label %land.lhs.true.35, label %if.end.101

land.lhs.true.35:                                 ; preds = %for.body.33
  %40 = load i32, i32* %line, align 4
  %41 = load %struct.viewport*, %struct.viewport** %vp, align 8
  %v_yoff36 = getelementptr inbounds %struct.viewport, %struct.viewport* %41, i32 0, i32 3
  %42 = load i32, i32* %v_yoff36, align 4
  %add37 = add nsw i32 %40, %42
  %43 = load %struct.viewport*, %struct.viewport** %vp, align 8
  %v_ye = getelementptr inbounds %struct.viewport, %struct.viewport* %43, i32 0, i32 7
  %44 = load i32, i32* %v_ye, align 4
  %cmp38 = icmp sle i32 %add37, %44
  br i1 %cmp38, label %land.lhs.true.39, label %if.end.101

land.lhs.true.39:                                 ; preds = %land.lhs.true.35
  %45 = load i32, i32* %line, align 4
  %idxprom = sext i32 %45 to i64
  %46 = load %struct.layer*, %struct.layer** %layer.addr, align 8
  %l_pause40 = getelementptr inbounds %struct.layer, %struct.layer* %46, i32 0, i32 13
  %left = getelementptr inbounds %struct.anon.0, %struct.anon.0* %l_pause40, i32 0, i32 1
  %47 = load i32*, i32** %left, align 8
  %arrayidx = getelementptr inbounds i32, i32* %47, i64 %idxprom
  %48 = load i32, i32* %arrayidx, align 4
  store i32 %48, i32* %xs, align 4
  %cmp41 = icmp sge i32 %48, 0
  br i1 %cmp41, label %land.lhs.true.42, label %if.end.101

land.lhs.true.42:                                 ; preds = %land.lhs.true.39
  %49 = load i32, i32* %line, align 4
  %idxprom43 = sext i32 %49 to i64
  %50 = load %struct.layer*, %struct.layer** %layer.addr, align 8
  %l_pause44 = getelementptr inbounds %struct.layer, %struct.layer* %50, i32 0, i32 13
  %right = getelementptr inbounds %struct.anon.0, %struct.anon.0* %l_pause44, i32 0, i32 2
  %51 = load i32*, i32** %right, align 8
  %arrayidx45 = getelementptr inbounds i32, i32* %51, i64 %idxprom43
  %52 = load i32, i32* %arrayidx45, align 4
  store i32 %52, i32* %xe, align 4
  %cmp46 = icmp sge i32 %52, 0
  br i1 %cmp46, label %if.then.47, label %if.end.101

if.then.47:                                       ; preds = %land.lhs.true.42
  %53 = load %struct.viewport*, %struct.viewport** %vp, align 8
  %v_xoff = getelementptr inbounds %struct.viewport, %struct.viewport* %53, i32 0, i32 2
  %54 = load i32, i32* %v_xoff, align 4
  %55 = load i32, i32* %xs, align 4
  %add48 = add nsw i32 %55, %54
  store i32 %add48, i32* %xs, align 4
  %56 = load %struct.viewport*, %struct.viewport** %vp, align 8
  %v_xoff49 = getelementptr inbounds %struct.viewport, %struct.viewport* %56, i32 0, i32 2
  %57 = load i32, i32* %v_xoff49, align 4
  %58 = load i32, i32* %xe, align 4
  %add50 = add nsw i32 %58, %57
  store i32 %add50, i32* %xe, align 4
  %59 = load i32, i32* %xs, align 4
  %60 = load %struct.viewport*, %struct.viewport** %vp, align 8
  %v_xs = getelementptr inbounds %struct.viewport, %struct.viewport* %60, i32 0, i32 4
  %61 = load i32, i32* %v_xs, align 4
  %cmp51 = icmp slt i32 %59, %61
  br i1 %cmp51, label %if.then.52, label %if.end.54

if.then.52:                                       ; preds = %if.then.47
  %62 = load %struct.viewport*, %struct.viewport** %vp, align 8
  %v_xs53 = getelementptr inbounds %struct.viewport, %struct.viewport* %62, i32 0, i32 4
  %63 = load i32, i32* %v_xs53, align 4
  store i32 %63, i32* %xs, align 4
  br label %if.end.54

if.end.54:                                        ; preds = %if.then.52, %if.then.47
  %64 = load i32, i32* %xe, align 4
  %65 = load %struct.viewport*, %struct.viewport** %vp, align 8
  %v_xe = getelementptr inbounds %struct.viewport, %struct.viewport* %65, i32 0, i32 5
  %66 = load i32, i32* %v_xe, align 4
  %cmp55 = icmp sgt i32 %64, %66
  br i1 %cmp55, label %if.then.56, label %if.end.58

if.then.56:                                       ; preds = %if.end.54
  %67 = load %struct.viewport*, %struct.viewport** %vp, align 8
  %v_xe57 = getelementptr inbounds %struct.viewport, %struct.viewport* %67, i32 0, i32 5
  %68 = load i32, i32* %v_xe57, align 4
  store i32 %68, i32* %xe, align 4
  br label %if.end.58

if.end.58:                                        ; preds = %if.then.56, %if.end.54
  %69 = load %struct.layer*, %struct.layer** %layer.addr, align 8
  %l_encoding = getelementptr inbounds %struct.layer, %struct.layer* %69, i32 0, i32 5
  %70 = load i32, i32* %l_encoding, align 4
  %cmp59 = icmp eq i32 %70, 8
  br i1 %cmp59, label %land.lhs.true.60, label %if.end.94

land.lhs.true.60:                                 ; preds = %if.end.58
  %71 = load i32, i32* %xe, align 4
  %72 = load %struct.viewport*, %struct.viewport** %vp, align 8
  %v_xe61 = getelementptr inbounds %struct.viewport, %struct.viewport* %72, i32 0, i32 5
  %73 = load i32, i32* %v_xe61, align 4
  %cmp62 = icmp slt i32 %71, %73
  br i1 %cmp62, label %land.lhs.true.63, label %if.end.94

land.lhs.true.63:                                 ; preds = %land.lhs.true.60
  %74 = load %struct.win*, %struct.win** %win, align 8
  %tobool64 = icmp ne %struct.win* %74, null
  br i1 %tobool64, label %if.then.65, label %if.end.94

if.then.65:                                       ; preds = %land.lhs.true.63
  %75 = load %struct.win*, %struct.win** %win, align 8
  %w_mlines = getelementptr inbounds %struct.win, %struct.win* %75, i32 0, i32 36
  %76 = load %struct.mline*, %struct.mline** %w_mlines, align 8
  %77 = load i32, i32* %line, align 4
  %idx.ext = sext i32 %77 to i64
  %add.ptr = getelementptr inbounds %struct.mline, %struct.mline* %76, i64 %idx.ext
  store %struct.mline* %add.ptr, %struct.mline** %ml, align 8
  br i1 true, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.then.65
  %78 = load i32, i32* %xe, align 4
  %add66 = add nsw i32 %78, 1
  %idxprom67 = sext i32 %add66 to i64
  %79 = load %struct.mline*, %struct.mline** %ml, align 8
  %font = getelementptr inbounds %struct.mline, %struct.mline* %79, i32 0, i32 2
  %80 = load i8*, i8** %font, align 8
  %arrayidx68 = getelementptr inbounds i8, i8* %80, i64 %idxprom67
  %81 = load i8, i8* %arrayidx68, align 1
  %conv = zext i8 %81 to i32
  %cmp69 = icmp eq i32 %conv, 255
  br i1 %cmp69, label %land.lhs.true.71, label %if.end.93

land.lhs.true.71:                                 ; preds = %cond.true
  %82 = load i32, i32* %xe, align 4
  %add72 = add nsw i32 %82, 1
  %idxprom73 = sext i32 %add72 to i64
  %83 = load %struct.mline*, %struct.mline** %ml, align 8
  %image = getelementptr inbounds %struct.mline, %struct.mline* %83, i32 0, i32 0
  %84 = load i8*, i8** %image, align 8
  %arrayidx74 = getelementptr inbounds i8, i8* %84, i64 %idxprom73
  %85 = load i8, i8* %arrayidx74, align 1
  %conv75 = zext i8 %85 to i32
  %cmp76 = icmp eq i32 %conv75, 255
  br i1 %cmp76, label %if.then.92, label %if.end.93

cond.false:                                       ; preds = %if.then.65
  %86 = load i32, i32* %xe, align 4
  %idxprom78 = sext i32 %86 to i64
  %87 = load %struct.mline*, %struct.mline** %ml, align 8
  %font79 = getelementptr inbounds %struct.mline, %struct.mline* %87, i32 0, i32 2
  %88 = load i8*, i8** %font79, align 8
  %arrayidx80 = getelementptr inbounds i8, i8* %88, i64 %idxprom78
  %89 = load i8, i8* %arrayidx80, align 1
  %conv81 = zext i8 %89 to i32
  %and = and i32 %conv81, 31
  %cmp82 = icmp ne i32 %and, 0
  br i1 %cmp82, label %land.lhs.true.84, label %if.end.93

land.lhs.true.84:                                 ; preds = %cond.false
  %90 = load i32, i32* %xe, align 4
  %idxprom85 = sext i32 %90 to i64
  %91 = load %struct.mline*, %struct.mline** %ml, align 8
  %font86 = getelementptr inbounds %struct.mline, %struct.mline* %91, i32 0, i32 2
  %92 = load i8*, i8** %font86, align 8
  %arrayidx87 = getelementptr inbounds i8, i8* %92, i64 %idxprom85
  %93 = load i8, i8* %arrayidx87, align 1
  %conv88 = zext i8 %93 to i32
  %and89 = and i32 %conv88, 224
  %cmp90 = icmp eq i32 %and89, 0
  br i1 %cmp90, label %if.then.92, label %if.end.93

if.then.92:                                       ; preds = %land.lhs.true.84, %land.lhs.true.71
  %94 = load i32, i32* %xe, align 4
  %inc = add nsw i32 %94, 1
  store i32 %inc, i32* %xe, align 4
  br label %if.end.93

if.end.93:                                        ; preds = %if.then.92, %land.lhs.true.84, %cond.false, %land.lhs.true.71, %cond.true
  br label %if.end.94

if.end.94:                                        ; preds = %if.end.93, %land.lhs.true.63, %land.lhs.true.60, %if.end.58
  %95 = load i32, i32* %xs, align 4
  %96 = load i32, i32* %xe, align 4
  %cmp95 = icmp sle i32 %95, %96
  br i1 %cmp95, label %if.then.97, label %if.end.100

if.then.97:                                       ; preds = %if.end.94
  %97 = load i32, i32* %line, align 4
  %98 = load %struct.viewport*, %struct.viewport** %vp, align 8
  %v_yoff98 = getelementptr inbounds %struct.viewport, %struct.viewport* %98, i32 0, i32 3
  %99 = load i32, i32* %v_yoff98, align 4
  %add99 = add nsw i32 %97, %99
  %100 = load i32, i32* %xs, align 4
  %101 = load i32, i32* %xe, align 4
  call void @RefreshLine(i32 %add99, i32 %100, i32 %101, i32 0)
  br label %if.end.100

if.end.100:                                       ; preds = %if.then.97, %if.end.94
  br label %if.end.101

if.end.101:                                       ; preds = %if.end.100, %land.lhs.true.42, %land.lhs.true.39, %land.lhs.true.35, %for.body.33
  br label %for.inc

for.inc:                                          ; preds = %if.end.101
  %102 = load i32, i32* %line, align 4
  %inc102 = add nsw i32 %102, 1
  store i32 %inc102, i32* %line, align 4
  br label %for.cond.29

for.end:                                          ; preds = %for.cond.29
  br label %for.inc.103

for.inc.103:                                      ; preds = %for.end
  %103 = load %struct.viewport*, %struct.viewport** %vp, align 8
  %v_next = getelementptr inbounds %struct.viewport, %struct.viewport* %103, i32 0, i32 0
  %104 = load %struct.viewport*, %struct.viewport** %v_next, align 8
  store %struct.viewport* %104, %struct.viewport** %vp, align 8
  br label %for.cond.24

for.end.104:                                      ; preds = %for.cond.24
  %105 = load %struct.canvas*, %struct.canvas** %cv, align 8
  %106 = load %struct.display*, %struct.display** @display, align 8
  %d_forecv = getelementptr inbounds %struct.display, %struct.display* %106, i32 0, i32 4
  %107 = load %struct.canvas*, %struct.canvas** %d_forecv, align 8
  %cmp105 = icmp eq %struct.canvas* %105, %107
  br i1 %cmp105, label %if.then.107, label %if.end.130

if.then.107:                                      ; preds = %for.end.104
  %108 = load %struct.layer*, %struct.layer** %layer.addr, align 8
  %l_x = getelementptr inbounds %struct.layer, %struct.layer* %108, i32 0, i32 3
  %109 = load i32, i32* %l_x, align 4
  %110 = load %struct.canvas*, %struct.canvas** %cv, align 8
  %c_xoff = getelementptr inbounds %struct.canvas, %struct.canvas* %110, i32 0, i32 12
  %111 = load i32, i32* %c_xoff, align 4
  %add108 = add nsw i32 %109, %111
  store i32 %add108, i32* %cx, align 4
  %112 = load %struct.layer*, %struct.layer** %layer.addr, align 8
  %l_y = getelementptr inbounds %struct.layer, %struct.layer* %112, i32 0, i32 4
  %113 = load i32, i32* %l_y, align 4
  %114 = load %struct.canvas*, %struct.canvas** %cv, align 8
  %c_yoff = getelementptr inbounds %struct.canvas, %struct.canvas* %114, i32 0, i32 13
  %115 = load i32, i32* %c_yoff, align 4
  %add109 = add nsw i32 %113, %115
  store i32 %add109, i32* %cy, align 4
  %116 = load i32, i32* %cx, align 4
  %117 = load %struct.canvas*, %struct.canvas** %cv, align 8
  %c_xs = getelementptr inbounds %struct.canvas, %struct.canvas* %117, i32 0, i32 14
  %118 = load i32, i32* %c_xs, align 4
  %cmp110 = icmp slt i32 %116, %118
  br i1 %cmp110, label %if.then.112, label %if.end.114

if.then.112:                                      ; preds = %if.then.107
  %119 = load %struct.canvas*, %struct.canvas** %cv, align 8
  %c_xs113 = getelementptr inbounds %struct.canvas, %struct.canvas* %119, i32 0, i32 14
  %120 = load i32, i32* %c_xs113, align 4
  store i32 %120, i32* %cx, align 4
  br label %if.end.114

if.end.114:                                       ; preds = %if.then.112, %if.then.107
  %121 = load i32, i32* %cy, align 4
  %122 = load %struct.canvas*, %struct.canvas** %cv, align 8
  %c_ys = getelementptr inbounds %struct.canvas, %struct.canvas* %122, i32 0, i32 16
  %123 = load i32, i32* %c_ys, align 4
  %cmp115 = icmp slt i32 %121, %123
  br i1 %cmp115, label %if.then.117, label %if.end.119

if.then.117:                                      ; preds = %if.end.114
  %124 = load %struct.canvas*, %struct.canvas** %cv, align 8
  %c_ys118 = getelementptr inbounds %struct.canvas, %struct.canvas* %124, i32 0, i32 16
  %125 = load i32, i32* %c_ys118, align 4
  store i32 %125, i32* %cy, align 4
  br label %if.end.119

if.end.119:                                       ; preds = %if.then.117, %if.end.114
  %126 = load i32, i32* %cx, align 4
  %127 = load %struct.canvas*, %struct.canvas** %cv, align 8
  %c_xe = getelementptr inbounds %struct.canvas, %struct.canvas* %127, i32 0, i32 15
  %128 = load i32, i32* %c_xe, align 4
  %cmp120 = icmp sgt i32 %126, %128
  br i1 %cmp120, label %if.then.122, label %if.end.124

if.then.122:                                      ; preds = %if.end.119
  %129 = load %struct.canvas*, %struct.canvas** %cv, align 8
  %c_xe123 = getelementptr inbounds %struct.canvas, %struct.canvas* %129, i32 0, i32 15
  %130 = load i32, i32* %c_xe123, align 4
  store i32 %130, i32* %cx, align 4
  br label %if.end.124

if.end.124:                                       ; preds = %if.then.122, %if.end.119
  %131 = load i32, i32* %cy, align 4
  %132 = load %struct.canvas*, %struct.canvas** %cv, align 8
  %c_ye = getelementptr inbounds %struct.canvas, %struct.canvas* %132, i32 0, i32 17
  %133 = load i32, i32* %c_ye, align 4
  %cmp125 = icmp sgt i32 %131, %133
  br i1 %cmp125, label %if.then.127, label %if.end.129

if.then.127:                                      ; preds = %if.end.124
  %134 = load %struct.canvas*, %struct.canvas** %cv, align 8
  %c_ye128 = getelementptr inbounds %struct.canvas, %struct.canvas* %134, i32 0, i32 17
  %135 = load i32, i32* %c_ye128, align 4
  store i32 %135, i32* %cy, align 4
  br label %if.end.129

if.end.129:                                       ; preds = %if.then.127, %if.end.124
  %136 = load i32, i32* %cx, align 4
  %137 = load i32, i32* %cy, align 4
  call void @GotoPos(i32 %136, i32 %137)
  br label %if.end.130

if.end.130:                                       ; preds = %if.end.129, %for.end.104
  br label %for.inc.131

for.inc.131:                                      ; preds = %if.end.130, %if.then.22
  %138 = load %struct.canvas*, %struct.canvas** %cv, align 8
  %c_lnext = getelementptr inbounds %struct.canvas, %struct.canvas* %138, i32 0, i32 10
  %139 = load %struct.canvas*, %struct.canvas** %c_lnext, align 8
  store %struct.canvas* %139, %struct.canvas** %cv, align 8
  br label %for.cond

for.end.132:                                      ; preds = %for.cond
  %140 = load %struct.layer*, %struct.layer** %layer.addr, align 8
  %l_pause133 = getelementptr inbounds %struct.layer, %struct.layer* %140, i32 0, i32 13
  %top134 = getelementptr inbounds %struct.anon.0, %struct.anon.0* %l_pause133, i32 0, i32 3
  %141 = load i32, i32* %top134, align 4
  store i32 %141, i32* %line, align 4
  br label %for.cond.135

for.cond.135:                                     ; preds = %for.inc.149, %for.end.132
  %142 = load i32, i32* %line, align 4
  %143 = load %struct.layer*, %struct.layer** %layer.addr, align 8
  %l_pause136 = getelementptr inbounds %struct.layer, %struct.layer* %143, i32 0, i32 13
  %bottom137 = getelementptr inbounds %struct.anon.0, %struct.anon.0* %l_pause136, i32 0, i32 4
  %144 = load i32, i32* %bottom137, align 4
  %cmp138 = icmp sle i32 %142, %144
  br i1 %cmp138, label %for.body.140, label %for.end.151

for.body.140:                                     ; preds = %for.cond.135
  %145 = load i32, i32* %line, align 4
  %idxprom141 = sext i32 %145 to i64
  %146 = load %struct.layer*, %struct.layer** %layer.addr, align 8
  %l_pause142 = getelementptr inbounds %struct.layer, %struct.layer* %146, i32 0, i32 13
  %right143 = getelementptr inbounds %struct.anon.0, %struct.anon.0* %l_pause142, i32 0, i32 2
  %147 = load i32*, i32** %right143, align 8
  %arrayidx144 = getelementptr inbounds i32, i32* %147, i64 %idxprom141
  store i32 -1, i32* %arrayidx144, align 4
  %148 = load i32, i32* %line, align 4
  %idxprom145 = sext i32 %148 to i64
  %149 = load %struct.layer*, %struct.layer** %layer.addr, align 8
  %l_pause146 = getelementptr inbounds %struct.layer, %struct.layer* %149, i32 0, i32 13
  %left147 = getelementptr inbounds %struct.anon.0, %struct.anon.0* %l_pause146, i32 0, i32 1
  %150 = load i32*, i32** %left147, align 8
  %arrayidx148 = getelementptr inbounds i32, i32* %150, i64 %idxprom145
  store i32 -1, i32* %arrayidx148, align 4
  br label %for.inc.149

for.inc.149:                                      ; preds = %for.body.140
  %151 = load i32, i32* %line, align 4
  %inc150 = add nsw i32 %151, 1
  store i32 %inc150, i32* %line, align 4
  br label %for.cond.135

for.end.151:                                      ; preds = %for.cond.135
  %152 = load %struct.display*, %struct.display** @display, align 8
  store %struct.display* %152, %struct.display** %olddisplay, align 8
  br label %return

return:                                           ; preds = %for.end.151, %if.then.15, %if.then.5, %if.then
  ret void
}

declare void @RefreshLine(i32, i32, i32, i32) #1

; Function Attrs: nounwind
declare i8* @realloc(i8*, i64) #4

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind }
attributes #3 = { nounwind readonly "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { nounwind "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #5 = { nounwind readonly }

!llvm.ident = !{!0}

!0 = !{!"clang version 3.7.0 (tags/RELEASE_370/final)"}
