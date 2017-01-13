; ModuleID = './resize.bc'
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
%struct.winsize = type { i16, i16, i16, i16 }

@display = external global %struct.display*, align 8
@glwz = common global %struct.winsize zeroinitializer, align 2
@captionalways = external global i32, align 4
@Z0width = external global i32, align 4
@Z1width = external global i32, align 4
@displays = external global %struct.display*, align 8
@windows = external global %struct.win*, align 8
@flayer = external global %struct.layer*, align 8
@.str = private unnamed_addr constant [41 x i8] c"Window width too large. Truncated to %d.\00", align 1
@.str.1 = private unnamed_addr constant [42 x i8] c"Window height too large. Truncated to %d.\00", align 1
@.str.2 = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@strnomem = external global [0 x i8], align 1
@.str.3 = private unnamed_addr constant [42 x i8] c"No memory for history buffer - turned off\00", align 1
@mline_zero = internal global %struct.mline zeroinitializer, align 8
@.str.4 = private unnamed_addr constant [39 x i8] c"Aborted because of window size change.\00", align 1
@null = external global i8*, align 8
@blank = external global i8*, align 8
@maxwidth = internal global i32 0, align 4
@mline_old = external global %struct.mline, align 8
@mline_blank = external global %struct.mline, align 8
@mline_null = external global %struct.mline, align 8

; Function Attrs: nounwind uwtable
define void @CheckScreenSize(i32 %change_flag) #0 {
entry:
  %change_flag.addr = alloca i32, align 4
  %wi = alloca i32, align 4
  %he = alloca i32, align 4
  store i32 %change_flag, i32* %change_flag.addr, align 4
  %0 = load %struct.display*, %struct.display** @display, align 8
  %cmp = icmp eq %struct.display* %0, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  br label %do.body

do.body:                                          ; preds = %if.then
  br label %do.end

do.end:                                           ; preds = %do.body
  br label %return

if.end:                                           ; preds = %entry
  %1 = load %struct.display*, %struct.display** @display, align 8
  %d_userfd = getelementptr inbounds %struct.display, %struct.display* %1, i32 0, i32 59
  %2 = load i32, i32* %d_userfd, align 4
  %call = call i32 (i32, i64, ...) @ioctl(i32 %2, i64 21523, i8* bitcast (%struct.winsize* @glwz to i8*)) #3
  %cmp1 = icmp ne i32 %call, 0
  br i1 %cmp1, label %if.then.2, label %if.else

if.then.2:                                        ; preds = %if.end
  br label %do.body.3

do.body.3:                                        ; preds = %if.then.2
  br label %do.end.4

do.end.4:                                         ; preds = %do.body.3
  %3 = load %struct.display*, %struct.display** @display, align 8
  %d_tcs = getelementptr inbounds %struct.display, %struct.display* %3, i32 0, i32 83
  %arrayidx = getelementptr inbounds [201 x %union.tcu], [201 x %union.tcu]* %d_tcs, i32 0, i64 1
  %num = bitcast %union.tcu* %arrayidx to i32*
  %4 = load i32, i32* %num, align 4
  store i32 %4, i32* %wi, align 4
  %5 = load %struct.display*, %struct.display** @display, align 8
  %d_tcs5 = getelementptr inbounds %struct.display, %struct.display* %5, i32 0, i32 83
  %arrayidx6 = getelementptr inbounds [201 x %union.tcu], [201 x %union.tcu]* %d_tcs5, i32 0, i64 0
  %num7 = bitcast %union.tcu* %arrayidx6 to i32*
  %6 = load i32, i32* %num7, align 4
  store i32 %6, i32* %he, align 4
  br label %if.end.23

if.else:                                          ; preds = %if.end
  %7 = load i16, i16* getelementptr inbounds (%struct.winsize, %struct.winsize* @glwz, i32 0, i32 1), align 2
  %conv = zext i16 %7 to i32
  store i32 %conv, i32* %wi, align 4
  %8 = load i16, i16* getelementptr inbounds (%struct.winsize, %struct.winsize* @glwz, i32 0, i32 0), align 2
  %conv8 = zext i16 %8 to i32
  store i32 %conv8, i32* %he, align 4
  %9 = load i32, i32* %wi, align 4
  %cmp9 = icmp eq i32 %9, 0
  br i1 %cmp9, label %if.then.11, label %if.end.15

if.then.11:                                       ; preds = %if.else
  %10 = load %struct.display*, %struct.display** @display, align 8
  %d_tcs12 = getelementptr inbounds %struct.display, %struct.display* %10, i32 0, i32 83
  %arrayidx13 = getelementptr inbounds [201 x %union.tcu], [201 x %union.tcu]* %d_tcs12, i32 0, i64 1
  %num14 = bitcast %union.tcu* %arrayidx13 to i32*
  %11 = load i32, i32* %num14, align 4
  store i32 %11, i32* %wi, align 4
  br label %if.end.15

if.end.15:                                        ; preds = %if.then.11, %if.else
  %12 = load i32, i32* %he, align 4
  %cmp16 = icmp eq i32 %12, 0
  br i1 %cmp16, label %if.then.18, label %if.end.22

if.then.18:                                       ; preds = %if.end.15
  %13 = load %struct.display*, %struct.display** @display, align 8
  %d_tcs19 = getelementptr inbounds %struct.display, %struct.display* %13, i32 0, i32 83
  %arrayidx20 = getelementptr inbounds [201 x %union.tcu], [201 x %union.tcu]* %d_tcs19, i32 0, i64 0
  %num21 = bitcast %union.tcu* %arrayidx20 to i32*
  %14 = load i32, i32* %num21, align 4
  store i32 %14, i32* %he, align 4
  br label %if.end.22

if.end.22:                                        ; preds = %if.then.18, %if.end.15
  br label %if.end.23

if.end.23:                                        ; preds = %if.end.22, %do.end.4
  br label %do.body.24

do.body.24:                                       ; preds = %if.end.23
  br label %do.end.25

do.end.25:                                        ; preds = %do.body.24
  %15 = load %struct.display*, %struct.display** @display, align 8
  %d_width = getelementptr inbounds %struct.display, %struct.display* %15, i32 0, i32 16
  %16 = load i32, i32* %d_width, align 4
  %17 = load i32, i32* %wi, align 4
  %cmp26 = icmp eq i32 %16, %17
  br i1 %cmp26, label %land.lhs.true, label %if.end.33

land.lhs.true:                                    ; preds = %do.end.25
  %18 = load %struct.display*, %struct.display** @display, align 8
  %d_height = getelementptr inbounds %struct.display, %struct.display* %18, i32 0, i32 17
  %19 = load i32, i32* %d_height, align 4
  %20 = load i32, i32* %he, align 4
  %cmp28 = icmp eq i32 %19, %20
  br i1 %cmp28, label %if.then.30, label %if.end.33

if.then.30:                                       ; preds = %land.lhs.true
  br label %do.body.31

do.body.31:                                       ; preds = %if.then.30
  br label %do.end.32

do.end.32:                                        ; preds = %do.body.31
  br label %return

if.end.33:                                        ; preds = %land.lhs.true, %do.end.25
  call void @KillBlanker()
  call void @ResetIdle()
  %21 = load i32, i32* %wi, align 4
  %22 = load i32, i32* %he, align 4
  %23 = load i32, i32* %change_flag.addr, align 4
  call void @ChangeScreenSize(i32 %21, i32 %22, i32 %23)
  br label %return

return:                                           ; preds = %if.end.33, %do.end.32, %do.end
  ret void
}

; Function Attrs: nounwind
declare i32 @ioctl(i32, i64, ...) #1

declare void @KillBlanker() #2

declare void @ResetIdle() #2

; Function Attrs: nounwind uwtable
define void @ChangeScreenSize(i32 %wi, i32 %he, i32 %change_fore) #0 {
entry:
  %wi.addr = alloca i32, align 4
  %he.addr = alloca i32, align 4
  %change_fore.addr = alloca i32, align 4
  %p = alloca %struct.win*, align 8
  %cv = alloca %struct.canvas*, align 8
  %wwi = alloca i32, align 4
  store i32 %wi, i32* %wi.addr, align 4
  store i32 %he, i32* %he.addr, align 4
  store i32 %change_fore, i32* %change_fore.addr, align 4
  br label %do.body

do.body:                                          ; preds = %entry
  br label %do.end

do.end:                                           ; preds = %do.body
  br label %do.body.1

do.body.1:                                        ; preds = %do.end
  br label %do.end.2

do.end.2:                                         ; preds = %do.body.1
  %0 = load %struct.display*, %struct.display** @display, align 8
  %d_canvas = getelementptr inbounds %struct.display, %struct.display* %0, i32 0, i32 2
  store %struct.canvas* %d_canvas, %struct.canvas** %cv, align 8
  %1 = load i32, i32* %wi.addr, align 4
  %sub = sub nsw i32 %1, 1
  %2 = load %struct.canvas*, %struct.canvas** %cv, align 8
  %c_xe = getelementptr inbounds %struct.canvas, %struct.canvas* %2, i32 0, i32 15
  store i32 %sub, i32* %c_xe, align 4
  %3 = load %struct.display*, %struct.display** @display, align 8
  %d_has_hstatus = getelementptr inbounds %struct.display, %struct.display* %3, i32 0, i32 36
  %4 = load i32, i32* %d_has_hstatus, align 4
  %cmp = icmp eq i32 %4, 4
  %conv = zext i1 %cmp to i32
  %5 = load %struct.canvas*, %struct.canvas** %cv, align 8
  %c_ys = getelementptr inbounds %struct.canvas, %struct.canvas* %5, i32 0, i32 16
  store i32 %conv, i32* %c_ys, align 4
  %6 = load i32, i32* %he.addr, align 4
  %sub3 = sub nsw i32 %6, 1
  %7 = load %struct.canvas*, %struct.canvas** %cv, align 8
  %c_slperp = getelementptr inbounds %struct.canvas, %struct.canvas* %7, i32 0, i32 4
  %8 = load %struct.canvas*, %struct.canvas** %c_slperp, align 8
  %tobool = icmp ne %struct.canvas* %8, null
  br i1 %tobool, label %land.lhs.true, label %lor.rhs

land.lhs.true:                                    ; preds = %do.end.2
  %9 = load %struct.canvas*, %struct.canvas** %cv, align 8
  %c_slperp4 = getelementptr inbounds %struct.canvas, %struct.canvas* %9, i32 0, i32 4
  %10 = load %struct.canvas*, %struct.canvas** %c_slperp4, align 8
  %c_slnext = getelementptr inbounds %struct.canvas, %struct.canvas* %10, i32 0, i32 2
  %11 = load %struct.canvas*, %struct.canvas** %c_slnext, align 8
  %tobool5 = icmp ne %struct.canvas* %11, null
  br i1 %tobool5, label %lor.end, label %lor.rhs

lor.rhs:                                          ; preds = %land.lhs.true, %do.end.2
  %12 = load i32, i32* @captionalways, align 4
  %tobool6 = icmp ne i32 %12, 0
  br label %lor.end

lor.end:                                          ; preds = %lor.rhs, %land.lhs.true
  %13 = phi i1 [ true, %land.lhs.true ], [ %tobool6, %lor.rhs ]
  %lor.ext = zext i1 %13 to i32
  %sub7 = sub nsw i32 %sub3, %lor.ext
  %14 = load %struct.display*, %struct.display** @display, align 8
  %d_has_hstatus8 = getelementptr inbounds %struct.display, %struct.display* %14, i32 0, i32 36
  %15 = load i32, i32* %d_has_hstatus8, align 4
  %cmp9 = icmp eq i32 %15, 1
  %conv10 = zext i1 %cmp9 to i32
  %sub11 = sub nsw i32 %sub7, %conv10
  %16 = load %struct.canvas*, %struct.canvas** %cv, align 8
  %c_ye = getelementptr inbounds %struct.canvas, %struct.canvas* %16, i32 0, i32 17
  store i32 %sub11, i32* %c_ye, align 4
  %17 = load %struct.canvas*, %struct.canvas** %cv, align 8
  %c_ye12 = getelementptr inbounds %struct.canvas, %struct.canvas* %17, i32 0, i32 17
  %18 = load i32, i32* %c_ye12, align 4
  %19 = load %struct.canvas*, %struct.canvas** %cv, align 8
  %c_ys13 = getelementptr inbounds %struct.canvas, %struct.canvas* %19, i32 0, i32 16
  %20 = load i32, i32* %c_ys13, align 4
  %sub14 = sub nsw i32 %18, %20
  %add = add nsw i32 %sub14, 1
  %21 = load %struct.canvas*, %struct.canvas** %cv, align 8
  %c_blank = getelementptr inbounds %struct.canvas, %struct.canvas* %21, i32 0, i32 11
  %l_height = getelementptr inbounds %struct.layer, %struct.layer* %c_blank, i32 0, i32 2
  store i32 %add, i32* %l_height, align 4
  %22 = load %struct.canvas*, %struct.canvas** %cv, align 8
  %c_slperp15 = getelementptr inbounds %struct.canvas, %struct.canvas* %22, i32 0, i32 4
  %23 = load %struct.canvas*, %struct.canvas** %c_slperp15, align 8
  %tobool16 = icmp ne %struct.canvas* %23, null
  br i1 %tobool16, label %if.then, label %if.end

if.then:                                          ; preds = %lor.end
  %24 = load %struct.canvas*, %struct.canvas** %cv, align 8
  call void @ResizeCanvas(%struct.canvas* %24)
  call void @RecreateCanvasChain()
  %call = call i32 @RethinkDisplayViewports()
  br label %if.end

if.end:                                           ; preds = %if.then, %lor.end
  %25 = load %struct.display*, %struct.display** @display, align 8
  %d_forecv = getelementptr inbounds %struct.display, %struct.display* %25, i32 0, i32 4
  %26 = load %struct.canvas*, %struct.canvas** %d_forecv, align 8
  %cmp17 = icmp eq %struct.canvas* %26, null
  br i1 %cmp17, label %if.then.19, label %if.end.21

if.then.19:                                       ; preds = %if.end
  %27 = load %struct.display*, %struct.display** @display, align 8
  %d_cvlist = getelementptr inbounds %struct.display, %struct.display* %27, i32 0, i32 3
  %28 = load %struct.canvas*, %struct.canvas** %d_cvlist, align 8
  %29 = load %struct.display*, %struct.display** @display, align 8
  %d_forecv20 = getelementptr inbounds %struct.display, %struct.display* %29, i32 0, i32 4
  store %struct.canvas* %28, %struct.canvas** %d_forecv20, align 8
  br label %if.end.21

if.end.21:                                        ; preds = %if.then.19, %if.end
  %30 = load %struct.display*, %struct.display** @display, align 8
  %d_forecv22 = getelementptr inbounds %struct.display, %struct.display* %30, i32 0, i32 4
  %31 = load %struct.canvas*, %struct.canvas** %d_forecv22, align 8
  %tobool23 = icmp ne %struct.canvas* %31, null
  br i1 %tobool23, label %if.then.24, label %if.end.26

if.then.24:                                       ; preds = %if.end.21
  %32 = load %struct.display*, %struct.display** @display, align 8
  %d_forecv25 = getelementptr inbounds %struct.display, %struct.display* %32, i32 0, i32 4
  %33 = load %struct.canvas*, %struct.canvas** %d_forecv25, align 8
  %c_layer = getelementptr inbounds %struct.canvas, %struct.canvas* %33, i32 0, i32 9
  %34 = load %struct.layer*, %struct.layer** %c_layer, align 8
  %l_bottom = getelementptr inbounds %struct.layer, %struct.layer* %34, i32 0, i32 9
  %35 = load %struct.layer*, %struct.layer** %l_bottom, align 8
  %l_data = getelementptr inbounds %struct.layer, %struct.layer* %35, i32 0, i32 7
  %36 = load i8*, i8** %l_data, align 8
  %37 = bitcast i8* %36 to %struct.win*
  %38 = load %struct.display*, %struct.display** @display, align 8
  %d_fore = getelementptr inbounds %struct.display, %struct.display* %38, i32 0, i32 10
  store %struct.win* %37, %struct.win** %d_fore, align 8
  br label %if.end.26

if.end.26:                                        ; preds = %if.then.24, %if.end.21
  %39 = load i32, i32* %wi.addr, align 4
  %40 = load %struct.display*, %struct.display** @display, align 8
  %d_width = getelementptr inbounds %struct.display, %struct.display* %40, i32 0, i32 16
  store i32 %39, i32* %d_width, align 4
  %41 = load i32, i32* %he.addr, align 4
  %42 = load %struct.display*, %struct.display** @display, align 8
  %d_height = getelementptr inbounds %struct.display, %struct.display* %42, i32 0, i32 17
  store i32 %41, i32* %d_height, align 4
  %43 = load i32, i32* %wi.addr, align 4
  call void @CheckMaxSize(i32 %43)
  %44 = load %struct.display*, %struct.display** @display, align 8
  %d_tcs = getelementptr inbounds %struct.display, %struct.display* %44, i32 0, i32 83
  %arrayidx = getelementptr inbounds [201 x %union.tcu], [201 x %union.tcu]* %d_tcs, i32 0, i64 44
  %str = bitcast %union.tcu* %arrayidx to i8**
  %45 = load i8*, i8** %str, align 8
  %tobool27 = icmp ne i8* %45, null
  br i1 %tobool27, label %if.then.28, label %if.else

if.then.28:                                       ; preds = %if.end.26
  %46 = load %struct.display*, %struct.display** @display, align 8
  %d_tcs29 = getelementptr inbounds %struct.display, %struct.display* %46, i32 0, i32 83
  %arrayidx30 = getelementptr inbounds [201 x %union.tcu], [201 x %union.tcu]* %d_tcs29, i32 0, i64 1
  %num = bitcast %union.tcu* %arrayidx30 to i32*
  %47 = load i32, i32* %num, align 4
  %48 = load %struct.display*, %struct.display** @display, align 8
  %d_defwidth = getelementptr inbounds %struct.display, %struct.display* %48, i32 0, i32 18
  store i32 %47, i32* %d_defwidth, align 4
  %49 = load %struct.display*, %struct.display** @display, align 8
  %d_tcs31 = getelementptr inbounds %struct.display, %struct.display* %49, i32 0, i32 83
  %arrayidx32 = getelementptr inbounds [201 x %union.tcu], [201 x %union.tcu]* %d_tcs31, i32 0, i64 0
  %num33 = bitcast %union.tcu* %arrayidx32 to i32*
  %50 = load i32, i32* %num33, align 4
  %51 = load %struct.display*, %struct.display** @display, align 8
  %d_defheight = getelementptr inbounds %struct.display, %struct.display* %51, i32 0, i32 19
  store i32 %50, i32* %d_defheight, align 4
  br label %if.end.64

if.else:                                          ; preds = %if.end.26
  %52 = load %struct.display*, %struct.display** @display, align 8
  %d_tcs34 = getelementptr inbounds %struct.display, %struct.display* %52, i32 0, i32 83
  %arrayidx35 = getelementptr inbounds [201 x %union.tcu], [201 x %union.tcu]* %d_tcs34, i32 0, i64 45
  %str36 = bitcast %union.tcu* %arrayidx35 to i8**
  %53 = load i8*, i8** %str36, align 8
  %tobool37 = icmp ne i8* %53, null
  br i1 %tobool37, label %land.lhs.true.38, label %if.else.60

land.lhs.true.38:                                 ; preds = %if.else
  %54 = load i32, i32* %wi.addr, align 4
  %55 = load i32, i32* @Z0width, align 4
  %cmp39 = icmp eq i32 %54, %55
  br i1 %cmp39, label %land.lhs.true.43, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %land.lhs.true.38
  %56 = load i32, i32* %wi.addr, align 4
  %57 = load i32, i32* @Z1width, align 4
  %cmp41 = icmp eq i32 %56, %57
  br i1 %cmp41, label %land.lhs.true.43, label %if.else.60

land.lhs.true.43:                                 ; preds = %lor.lhs.false, %land.lhs.true.38
  %58 = load %struct.display*, %struct.display** @display, align 8
  %d_tcs44 = getelementptr inbounds %struct.display, %struct.display* %58, i32 0, i32 83
  %arrayidx45 = getelementptr inbounds [201 x %union.tcu], [201 x %union.tcu]* %d_tcs44, i32 0, i64 1
  %num46 = bitcast %union.tcu* %arrayidx45 to i32*
  %59 = load i32, i32* %num46, align 4
  %60 = load i32, i32* @Z0width, align 4
  %cmp47 = icmp eq i32 %59, %60
  br i1 %cmp47, label %if.then.55, label %lor.lhs.false.49

lor.lhs.false.49:                                 ; preds = %land.lhs.true.43
  %61 = load %struct.display*, %struct.display** @display, align 8
  %d_tcs50 = getelementptr inbounds %struct.display, %struct.display* %61, i32 0, i32 83
  %arrayidx51 = getelementptr inbounds [201 x %union.tcu], [201 x %union.tcu]* %d_tcs50, i32 0, i64 1
  %num52 = bitcast %union.tcu* %arrayidx51 to i32*
  %62 = load i32, i32* %num52, align 4
  %63 = load i32, i32* @Z1width, align 4
  %cmp53 = icmp eq i32 %62, %63
  br i1 %cmp53, label %if.then.55, label %if.else.60

if.then.55:                                       ; preds = %lor.lhs.false.49, %land.lhs.true.43
  %64 = load %struct.display*, %struct.display** @display, align 8
  %d_tcs56 = getelementptr inbounds %struct.display, %struct.display* %64, i32 0, i32 83
  %arrayidx57 = getelementptr inbounds [201 x %union.tcu], [201 x %union.tcu]* %d_tcs56, i32 0, i64 1
  %num58 = bitcast %union.tcu* %arrayidx57 to i32*
  %65 = load i32, i32* %num58, align 4
  %66 = load %struct.display*, %struct.display** @display, align 8
  %d_defwidth59 = getelementptr inbounds %struct.display, %struct.display* %66, i32 0, i32 18
  store i32 %65, i32* %d_defwidth59, align 4
  br label %if.end.62

if.else.60:                                       ; preds = %lor.lhs.false.49, %lor.lhs.false, %if.else
  %67 = load i32, i32* %wi.addr, align 4
  %68 = load %struct.display*, %struct.display** @display, align 8
  %d_defwidth61 = getelementptr inbounds %struct.display, %struct.display* %68, i32 0, i32 18
  store i32 %67, i32* %d_defwidth61, align 4
  br label %if.end.62

if.end.62:                                        ; preds = %if.else.60, %if.then.55
  %69 = load i32, i32* %he.addr, align 4
  %70 = load %struct.display*, %struct.display** @display, align 8
  %d_defheight63 = getelementptr inbounds %struct.display, %struct.display* %70, i32 0, i32 19
  store i32 %69, i32* %d_defheight63, align 4
  br label %if.end.64

if.end.64:                                        ; preds = %if.end.62, %if.then.28
  br label %do.body.65

do.body.65:                                       ; preds = %if.end.64
  br label %do.end.66

do.end.66:                                        ; preds = %do.body.65
  %71 = load i32, i32* %change_fore.addr, align 4
  %tobool67 = icmp ne i32 %71, 0
  br i1 %tobool67, label %if.then.68, label %if.end.69

if.then.68:                                       ; preds = %do.end.66
  call void @ResizeLayersToCanvases()
  br label %if.end.69

if.end.69:                                        ; preds = %if.then.68, %do.end.66
  %72 = load i32, i32* %change_fore.addr, align 4
  %cmp70 = icmp eq i32 %72, 2
  br i1 %cmp70, label %land.lhs.true.72, label %if.end.93

land.lhs.true.72:                                 ; preds = %if.end.69
  %73 = load %struct.display*, %struct.display** @display, align 8
  %d_tcs73 = getelementptr inbounds %struct.display, %struct.display* %73, i32 0, i32 83
  %arrayidx74 = getelementptr inbounds [201 x %union.tcu], [201 x %union.tcu]* %d_tcs73, i32 0, i64 44
  %str75 = bitcast %union.tcu* %arrayidx74 to i8**
  %74 = load i8*, i8** %str75, align 8
  %cmp76 = icmp eq i8* %74, null
  br i1 %cmp76, label %land.lhs.true.78, label %if.end.93

land.lhs.true.78:                                 ; preds = %land.lhs.true.72
  %75 = load %struct.display*, %struct.display** @displays, align 8
  %d_next = getelementptr inbounds %struct.display, %struct.display* %75, i32 0, i32 0
  %76 = load %struct.display*, %struct.display** %d_next, align 8
  %cmp79 = icmp eq %struct.display* %76, null
  br i1 %cmp79, label %if.then.81, label %if.end.93

if.then.81:                                       ; preds = %land.lhs.true.78
  %77 = load %struct.win*, %struct.win** @windows, align 8
  store %struct.win* %77, %struct.win** %p, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.then.81
  %78 = load %struct.win*, %struct.win** %p, align 8
  %tobool82 = icmp ne %struct.win* %78, null
  br i1 %tobool82, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  br label %do.body.83

do.body.83:                                       ; preds = %for.body
  br label %do.end.84

do.end.84:                                        ; preds = %do.body.83
  %79 = load i32, i32* %wi.addr, align 4
  store i32 %79, i32* %wwi, align 4
  %80 = load %struct.win*, %struct.win** %p, align 8
  %w_savelayer = getelementptr inbounds %struct.win, %struct.win* %80, i32 0, i32 4
  %81 = load %struct.layer*, %struct.layer** %w_savelayer, align 8
  %tobool85 = icmp ne %struct.layer* %81, null
  br i1 %tobool85, label %land.lhs.true.86, label %if.end.92

land.lhs.true.86:                                 ; preds = %do.end.84
  %82 = load %struct.win*, %struct.win** %p, align 8
  %w_savelayer87 = getelementptr inbounds %struct.win, %struct.win* %82, i32 0, i32 4
  %83 = load %struct.layer*, %struct.layer** %w_savelayer87, align 8
  %l_cvlist = getelementptr inbounds %struct.layer, %struct.layer* %83, i32 0, i32 0
  %84 = load %struct.canvas*, %struct.canvas** %l_cvlist, align 8
  %cmp88 = icmp eq %struct.canvas* %84, null
  br i1 %cmp88, label %if.then.90, label %if.end.92

if.then.90:                                       ; preds = %land.lhs.true.86
  %85 = load %struct.win*, %struct.win** %p, align 8
  %w_savelayer91 = getelementptr inbounds %struct.win, %struct.win* %85, i32 0, i32 4
  %86 = load %struct.layer*, %struct.layer** %w_savelayer91, align 8
  %87 = load i32, i32* %wwi, align 4
  %88 = load i32, i32* %he.addr, align 4
  call void @ResizeLayer(%struct.layer* %86, i32 %87, i32 %88, %struct.display* null)
  br label %if.end.92

if.end.92:                                        ; preds = %if.then.90, %land.lhs.true.86, %do.end.84
  br label %for.inc

for.inc:                                          ; preds = %if.end.92
  %89 = load %struct.win*, %struct.win** %p, align 8
  %w_next = getelementptr inbounds %struct.win, %struct.win* %89, i32 0, i32 0
  %90 = load %struct.win*, %struct.win** %w_next, align 8
  store %struct.win* %90, %struct.win** %p, align 8
  br label %for.cond

for.end:                                          ; preds = %for.cond
  br label %if.end.93

if.end.93:                                        ; preds = %for.end, %land.lhs.true.78, %land.lhs.true.72, %if.end.69
  ret void
}

declare void @ResizeCanvas(%struct.canvas*) #2

declare void @RecreateCanvasChain() #2

declare i32 @RethinkDisplayViewports() #2

; Function Attrs: nounwind uwtable
define internal void @CheckMaxSize(i32 %wi) #0 {
entry:
  %wi.addr = alloca i32, align 4
  %oldnull = alloca i8*, align 8
  %oldblank = alloca i8*, align 8
  %p = alloca %struct.win*, align 8
  %i = alloca i32, align 4
  %ml = alloca %struct.mline*, align 8
  store i32 %wi, i32* %wi.addr, align 4
  %0 = load i8*, i8** @null, align 8
  store i8* %0, i8** %oldnull, align 8
  %1 = load i8*, i8** @blank, align 8
  store i8* %1, i8** %oldblank, align 8
  %2 = load i32, i32* %wi.addr, align 4
  %cmp = icmp sgt i32 %2, 1000
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store i32 1000, i32* %wi.addr, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %3 = load i32, i32* %wi.addr, align 4
  %4 = load i32, i32* @maxwidth, align 4
  %cmp1 = icmp sle i32 %3, %4
  br i1 %cmp1, label %if.then.2, label %if.end.3

if.then.2:                                        ; preds = %if.end
  br label %for.end.219

if.end.3:                                         ; preds = %if.end
  %5 = load i32, i32* %wi.addr, align 4
  %add = add nsw i32 %5, 1
  store i32 %add, i32* @maxwidth, align 4
  br label %do.body

do.body:                                          ; preds = %if.end.3
  br label %do.end

do.end:                                           ; preds = %do.body
  %6 = load i8*, i8** @blank, align 8
  %7 = load i32, i32* @maxwidth, align 4
  %call = call i8* @xrealloc(i8* %6, i32 %7)
  store i8* %call, i8** @blank, align 8
  %8 = load i8*, i8** @null, align 8
  %9 = load i32, i32* @maxwidth, align 4
  %call4 = call i8* @xrealloc(i8* %8, i32 %9)
  store i8* %call4, i8** @null, align 8
  %10 = load i8*, i8** getelementptr inbounds (%struct.mline, %struct.mline* @mline_old, i32 0, i32 0), align 8
  %11 = load i32, i32* @maxwidth, align 4
  %call5 = call i8* @xrealloc(i8* %10, i32 %11)
  store i8* %call5, i8** getelementptr inbounds (%struct.mline, %struct.mline* @mline_old, i32 0, i32 0), align 8
  %12 = load i8*, i8** getelementptr inbounds (%struct.mline, %struct.mline* @mline_old, i32 0, i32 1), align 8
  %13 = load i32, i32* @maxwidth, align 4
  %call6 = call i8* @xrealloc(i8* %12, i32 %13)
  store i8* %call6, i8** getelementptr inbounds (%struct.mline, %struct.mline* @mline_old, i32 0, i32 1), align 8
  %14 = load i8*, i8** getelementptr inbounds (%struct.mline, %struct.mline* @mline_old, i32 0, i32 2), align 8
  %15 = load i32, i32* @maxwidth, align 4
  %call7 = call i8* @xrealloc(i8* %14, i32 %15)
  store i8* %call7, i8** getelementptr inbounds (%struct.mline, %struct.mline* @mline_old, i32 0, i32 2), align 8
  %16 = load i8*, i8** getelementptr inbounds (%struct.mline, %struct.mline* @mline_old, i32 0, i32 3), align 8
  %17 = load i32, i32* @maxwidth, align 4
  %call8 = call i8* @xrealloc(i8* %16, i32 %17)
  store i8* %call8, i8** getelementptr inbounds (%struct.mline, %struct.mline* @mline_old, i32 0, i32 3), align 8
  %18 = load i8*, i8** getelementptr inbounds (%struct.mline, %struct.mline* @mline_old, i32 0, i32 4), align 8
  %19 = load i32, i32* @maxwidth, align 4
  %call9 = call i8* @xrealloc(i8* %18, i32 %19)
  store i8* %call9, i8** getelementptr inbounds (%struct.mline, %struct.mline* @mline_old, i32 0, i32 4), align 8
  %20 = load i8*, i8** @blank, align 8
  %tobool = icmp ne i8* %20, null
  br i1 %tobool, label %land.lhs.true, label %if.then.21

land.lhs.true:                                    ; preds = %do.end
  %21 = load i8*, i8** @null, align 8
  %tobool10 = icmp ne i8* %21, null
  br i1 %tobool10, label %land.lhs.true.11, label %if.then.21

land.lhs.true.11:                                 ; preds = %land.lhs.true
  %22 = load i8*, i8** getelementptr inbounds (%struct.mline, %struct.mline* @mline_old, i32 0, i32 0), align 8
  %tobool12 = icmp ne i8* %22, null
  br i1 %tobool12, label %land.lhs.true.13, label %if.then.21

land.lhs.true.13:                                 ; preds = %land.lhs.true.11
  %23 = load i8*, i8** getelementptr inbounds (%struct.mline, %struct.mline* @mline_old, i32 0, i32 1), align 8
  %tobool14 = icmp ne i8* %23, null
  br i1 %tobool14, label %land.lhs.true.15, label %if.then.21

land.lhs.true.15:                                 ; preds = %land.lhs.true.13
  %24 = load i8*, i8** getelementptr inbounds (%struct.mline, %struct.mline* @mline_old, i32 0, i32 2), align 8
  %tobool16 = icmp ne i8* %24, null
  br i1 %tobool16, label %land.lhs.true.17, label %if.then.21

land.lhs.true.17:                                 ; preds = %land.lhs.true.15
  %25 = load i8*, i8** getelementptr inbounds (%struct.mline, %struct.mline* @mline_old, i32 0, i32 3), align 8
  %tobool18 = icmp ne i8* %25, null
  br i1 %tobool18, label %land.lhs.true.19, label %if.then.21

land.lhs.true.19:                                 ; preds = %land.lhs.true.17
  %26 = load i8*, i8** getelementptr inbounds (%struct.mline, %struct.mline* @mline_old, i32 0, i32 4), align 8
  %tobool20 = icmp ne i8* %26, null
  br i1 %tobool20, label %if.end.22, label %if.then.21

if.then.21:                                       ; preds = %land.lhs.true.19, %land.lhs.true.17, %land.lhs.true.15, %land.lhs.true.13, %land.lhs.true.11, %land.lhs.true, %do.end
  call void (i32, i8*, ...) @Panic(i32 0, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.2, i32 0, i32 0), i8* getelementptr inbounds ([0 x i8], [0 x i8]* @strnomem, i32 0, i32 0)) #5
  unreachable

if.end.22:                                        ; preds = %land.lhs.true.19
  %27 = load i8*, i8** @blank, align 8
  %28 = load i32, i32* @maxwidth, align 4
  call void @MakeBlankLine(i8* %27, i32 %28)
  %29 = load i8*, i8** @null, align 8
  %30 = load i32, i32* @maxwidth, align 4
  %conv = sext i32 %30 to i64
  call void @llvm.memset.p0i8.i64(i8* %29, i8 0, i64 %conv, i32 1, i1 false)
  %31 = load i8*, i8** @blank, align 8
  store i8* %31, i8** getelementptr inbounds (%struct.mline, %struct.mline* @mline_blank, i32 0, i32 0), align 8
  %32 = load i8*, i8** @null, align 8
  store i8* %32, i8** getelementptr inbounds (%struct.mline, %struct.mline* @mline_blank, i32 0, i32 1), align 8
  %33 = load i8*, i8** @null, align 8
  store i8* %33, i8** getelementptr inbounds (%struct.mline, %struct.mline* @mline_null, i32 0, i32 0), align 8
  %34 = load i8*, i8** @null, align 8
  store i8* %34, i8** getelementptr inbounds (%struct.mline, %struct.mline* @mline_null, i32 0, i32 1), align 8
  %35 = load i8*, i8** @null, align 8
  store i8* %35, i8** getelementptr inbounds (%struct.mline, %struct.mline* @mline_blank, i32 0, i32 2), align 8
  %36 = load i8*, i8** @null, align 8
  store i8* %36, i8** getelementptr inbounds (%struct.mline, %struct.mline* @mline_null, i32 0, i32 2), align 8
  %37 = load i8*, i8** @null, align 8
  store i8* %37, i8** getelementptr inbounds (%struct.mline, %struct.mline* @mline_blank, i32 0, i32 3), align 8
  %38 = load i8*, i8** @null, align 8
  store i8* %38, i8** getelementptr inbounds (%struct.mline, %struct.mline* @mline_null, i32 0, i32 3), align 8
  %39 = load i8*, i8** @null, align 8
  store i8* %39, i8** getelementptr inbounds (%struct.mline, %struct.mline* @mline_blank, i32 0, i32 4), align 8
  %40 = load i8*, i8** @null, align 8
  store i8* %40, i8** getelementptr inbounds (%struct.mline, %struct.mline* @mline_null, i32 0, i32 4), align 8
  %41 = load %struct.win*, %struct.win** @windows, align 8
  store %struct.win* %41, %struct.win** %p, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.inc.218, %if.end.22
  %42 = load %struct.win*, %struct.win** %p, align 8
  %tobool23 = icmp ne %struct.win* %42, null
  br i1 %tobool23, label %for.body, label %for.end.219

for.body:                                         ; preds = %for.cond
  br label %do.body.24

do.body.24:                                       ; preds = %for.body
  %43 = load %struct.win*, %struct.win** %p, align 8
  %w_mlines = getelementptr inbounds %struct.win, %struct.win* %43, i32 0, i32 36
  %44 = load %struct.mline*, %struct.mline** %w_mlines, align 8
  store %struct.mline* %44, %struct.mline** %ml, align 8
  store i32 0, i32* %i, align 4
  br label %for.cond.25

for.cond.25:                                      ; preds = %for.inc, %do.body.24
  %45 = load i32, i32* %i, align 4
  %46 = load %struct.win*, %struct.win** %p, align 8
  %w_layer = getelementptr inbounds %struct.win, %struct.win* %46, i32 0, i32 3
  %l_height = getelementptr inbounds %struct.layer, %struct.layer* %w_layer, i32 0, i32 2
  %47 = load i32, i32* %l_height, align 4
  %cmp26 = icmp slt i32 %45, %47
  br i1 %cmp26, label %for.body.28, label %for.end

for.body.28:                                      ; preds = %for.cond.25
  br label %do.body.29

do.body.29:                                       ; preds = %for.body.28
  %48 = load %struct.mline*, %struct.mline** %ml, align 8
  %image = getelementptr inbounds %struct.mline, %struct.mline* %48, i32 0, i32 0
  %49 = load i8*, i8** %image, align 8
  %50 = load i8*, i8** %oldblank, align 8
  %cmp30 = icmp eq i8* %49, %50
  br i1 %cmp30, label %if.then.32, label %if.end.34

if.then.32:                                       ; preds = %do.body.29
  %51 = load i8*, i8** @blank, align 8
  %52 = load %struct.mline*, %struct.mline** %ml, align 8
  %image33 = getelementptr inbounds %struct.mline, %struct.mline* %52, i32 0, i32 0
  store i8* %51, i8** %image33, align 8
  br label %if.end.34

if.end.34:                                        ; preds = %if.then.32, %do.body.29
  br label %do.end.35

do.end.35:                                        ; preds = %if.end.34
  br label %do.body.36

do.body.36:                                       ; preds = %do.end.35
  %53 = load %struct.mline*, %struct.mline** %ml, align 8
  %attr = getelementptr inbounds %struct.mline, %struct.mline* %53, i32 0, i32 1
  %54 = load i8*, i8** %attr, align 8
  %55 = load i8*, i8** %oldnull, align 8
  %cmp37 = icmp eq i8* %54, %55
  br i1 %cmp37, label %if.then.39, label %if.end.41

if.then.39:                                       ; preds = %do.body.36
  %56 = load i8*, i8** @null, align 8
  %57 = load %struct.mline*, %struct.mline** %ml, align 8
  %attr40 = getelementptr inbounds %struct.mline, %struct.mline* %57, i32 0, i32 1
  store i8* %56, i8** %attr40, align 8
  br label %if.end.41

if.end.41:                                        ; preds = %if.then.39, %do.body.36
  br label %do.end.42

do.end.42:                                        ; preds = %if.end.41
  br label %do.body.43

do.body.43:                                       ; preds = %do.end.42
  %58 = load %struct.mline*, %struct.mline** %ml, align 8
  %font = getelementptr inbounds %struct.mline, %struct.mline* %58, i32 0, i32 2
  %59 = load i8*, i8** %font, align 8
  %60 = load i8*, i8** %oldnull, align 8
  %cmp44 = icmp eq i8* %59, %60
  br i1 %cmp44, label %if.then.46, label %if.end.48

if.then.46:                                       ; preds = %do.body.43
  %61 = load i8*, i8** @null, align 8
  %62 = load %struct.mline*, %struct.mline** %ml, align 8
  %font47 = getelementptr inbounds %struct.mline, %struct.mline* %62, i32 0, i32 2
  store i8* %61, i8** %font47, align 8
  br label %if.end.48

if.end.48:                                        ; preds = %if.then.46, %do.body.43
  br label %do.end.49

do.end.49:                                        ; preds = %if.end.48
  br label %do.body.50

do.body.50:                                       ; preds = %do.end.49
  %63 = load %struct.mline*, %struct.mline** %ml, align 8
  %fontx = getelementptr inbounds %struct.mline, %struct.mline* %63, i32 0, i32 3
  %64 = load i8*, i8** %fontx, align 8
  %65 = load i8*, i8** %oldnull, align 8
  %cmp51 = icmp eq i8* %64, %65
  br i1 %cmp51, label %if.then.53, label %if.end.55

if.then.53:                                       ; preds = %do.body.50
  %66 = load i8*, i8** @null, align 8
  %67 = load %struct.mline*, %struct.mline** %ml, align 8
  %fontx54 = getelementptr inbounds %struct.mline, %struct.mline* %67, i32 0, i32 3
  store i8* %66, i8** %fontx54, align 8
  br label %if.end.55

if.end.55:                                        ; preds = %if.then.53, %do.body.50
  br label %do.end.56

do.end.56:                                        ; preds = %if.end.55
  br label %do.body.57

do.body.57:                                       ; preds = %do.end.56
  %68 = load %struct.mline*, %struct.mline** %ml, align 8
  %color = getelementptr inbounds %struct.mline, %struct.mline* %68, i32 0, i32 4
  %69 = load i8*, i8** %color, align 8
  %70 = load i8*, i8** %oldnull, align 8
  %cmp58 = icmp eq i8* %69, %70
  br i1 %cmp58, label %if.then.60, label %if.end.62

if.then.60:                                       ; preds = %do.body.57
  %71 = load i8*, i8** @null, align 8
  %72 = load %struct.mline*, %struct.mline** %ml, align 8
  %color61 = getelementptr inbounds %struct.mline, %struct.mline* %72, i32 0, i32 4
  store i8* %71, i8** %color61, align 8
  br label %if.end.62

if.end.62:                                        ; preds = %if.then.60, %do.body.57
  br label %do.end.63

do.end.63:                                        ; preds = %if.end.62
  br label %for.inc

for.inc:                                          ; preds = %do.end.63
  %73 = load i32, i32* %i, align 4
  %inc = add nsw i32 %73, 1
  store i32 %inc, i32* %i, align 4
  %74 = load %struct.mline*, %struct.mline** %ml, align 8
  %incdec.ptr = getelementptr inbounds %struct.mline, %struct.mline* %74, i32 1
  store %struct.mline* %incdec.ptr, %struct.mline** %ml, align 8
  br label %for.cond.25

for.end:                                          ; preds = %for.cond.25
  br label %do.end.64

do.end.64:                                        ; preds = %for.end
  br label %do.body.65

do.body.65:                                       ; preds = %do.end.64
  %75 = load %struct.win*, %struct.win** %p, align 8
  %w_hlines = getelementptr inbounds %struct.win, %struct.win* %75, i32 0, i32 79
  %76 = load %struct.mline*, %struct.mline** %w_hlines, align 8
  store %struct.mline* %76, %struct.mline** %ml, align 8
  store i32 0, i32* %i, align 4
  br label %for.cond.66

for.cond.66:                                      ; preds = %for.inc.110, %do.body.65
  %77 = load i32, i32* %i, align 4
  %78 = load %struct.win*, %struct.win** %p, align 8
  %w_histheight = getelementptr inbounds %struct.win, %struct.win* %78, i32 0, i32 77
  %79 = load i32, i32* %w_histheight, align 4
  %cmp67 = icmp slt i32 %77, %79
  br i1 %cmp67, label %for.body.69, label %for.end.113

for.body.69:                                      ; preds = %for.cond.66
  br label %do.body.70

do.body.70:                                       ; preds = %for.body.69
  %80 = load %struct.mline*, %struct.mline** %ml, align 8
  %image71 = getelementptr inbounds %struct.mline, %struct.mline* %80, i32 0, i32 0
  %81 = load i8*, i8** %image71, align 8
  %82 = load i8*, i8** %oldblank, align 8
  %cmp72 = icmp eq i8* %81, %82
  br i1 %cmp72, label %if.then.74, label %if.end.76

if.then.74:                                       ; preds = %do.body.70
  %83 = load i8*, i8** @blank, align 8
  %84 = load %struct.mline*, %struct.mline** %ml, align 8
  %image75 = getelementptr inbounds %struct.mline, %struct.mline* %84, i32 0, i32 0
  store i8* %83, i8** %image75, align 8
  br label %if.end.76

if.end.76:                                        ; preds = %if.then.74, %do.body.70
  br label %do.end.77

do.end.77:                                        ; preds = %if.end.76
  br label %do.body.78

do.body.78:                                       ; preds = %do.end.77
  %85 = load %struct.mline*, %struct.mline** %ml, align 8
  %attr79 = getelementptr inbounds %struct.mline, %struct.mline* %85, i32 0, i32 1
  %86 = load i8*, i8** %attr79, align 8
  %87 = load i8*, i8** %oldnull, align 8
  %cmp80 = icmp eq i8* %86, %87
  br i1 %cmp80, label %if.then.82, label %if.end.84

if.then.82:                                       ; preds = %do.body.78
  %88 = load i8*, i8** @null, align 8
  %89 = load %struct.mline*, %struct.mline** %ml, align 8
  %attr83 = getelementptr inbounds %struct.mline, %struct.mline* %89, i32 0, i32 1
  store i8* %88, i8** %attr83, align 8
  br label %if.end.84

if.end.84:                                        ; preds = %if.then.82, %do.body.78
  br label %do.end.85

do.end.85:                                        ; preds = %if.end.84
  br label %do.body.86

do.body.86:                                       ; preds = %do.end.85
  %90 = load %struct.mline*, %struct.mline** %ml, align 8
  %font87 = getelementptr inbounds %struct.mline, %struct.mline* %90, i32 0, i32 2
  %91 = load i8*, i8** %font87, align 8
  %92 = load i8*, i8** %oldnull, align 8
  %cmp88 = icmp eq i8* %91, %92
  br i1 %cmp88, label %if.then.90, label %if.end.92

if.then.90:                                       ; preds = %do.body.86
  %93 = load i8*, i8** @null, align 8
  %94 = load %struct.mline*, %struct.mline** %ml, align 8
  %font91 = getelementptr inbounds %struct.mline, %struct.mline* %94, i32 0, i32 2
  store i8* %93, i8** %font91, align 8
  br label %if.end.92

if.end.92:                                        ; preds = %if.then.90, %do.body.86
  br label %do.end.93

do.end.93:                                        ; preds = %if.end.92
  br label %do.body.94

do.body.94:                                       ; preds = %do.end.93
  %95 = load %struct.mline*, %struct.mline** %ml, align 8
  %fontx95 = getelementptr inbounds %struct.mline, %struct.mline* %95, i32 0, i32 3
  %96 = load i8*, i8** %fontx95, align 8
  %97 = load i8*, i8** %oldnull, align 8
  %cmp96 = icmp eq i8* %96, %97
  br i1 %cmp96, label %if.then.98, label %if.end.100

if.then.98:                                       ; preds = %do.body.94
  %98 = load i8*, i8** @null, align 8
  %99 = load %struct.mline*, %struct.mline** %ml, align 8
  %fontx99 = getelementptr inbounds %struct.mline, %struct.mline* %99, i32 0, i32 3
  store i8* %98, i8** %fontx99, align 8
  br label %if.end.100

if.end.100:                                       ; preds = %if.then.98, %do.body.94
  br label %do.end.101

do.end.101:                                       ; preds = %if.end.100
  br label %do.body.102

do.body.102:                                      ; preds = %do.end.101
  %100 = load %struct.mline*, %struct.mline** %ml, align 8
  %color103 = getelementptr inbounds %struct.mline, %struct.mline* %100, i32 0, i32 4
  %101 = load i8*, i8** %color103, align 8
  %102 = load i8*, i8** %oldnull, align 8
  %cmp104 = icmp eq i8* %101, %102
  br i1 %cmp104, label %if.then.106, label %if.end.108

if.then.106:                                      ; preds = %do.body.102
  %103 = load i8*, i8** @null, align 8
  %104 = load %struct.mline*, %struct.mline** %ml, align 8
  %color107 = getelementptr inbounds %struct.mline, %struct.mline* %104, i32 0, i32 4
  store i8* %103, i8** %color107, align 8
  br label %if.end.108

if.end.108:                                       ; preds = %if.then.106, %do.body.102
  br label %do.end.109

do.end.109:                                       ; preds = %if.end.108
  br label %for.inc.110

for.inc.110:                                      ; preds = %do.end.109
  %105 = load i32, i32* %i, align 4
  %inc111 = add nsw i32 %105, 1
  store i32 %inc111, i32* %i, align 4
  %106 = load %struct.mline*, %struct.mline** %ml, align 8
  %incdec.ptr112 = getelementptr inbounds %struct.mline, %struct.mline* %106, i32 1
  store %struct.mline* %incdec.ptr112, %struct.mline** %ml, align 8
  br label %for.cond.66

for.end.113:                                      ; preds = %for.cond.66
  br label %do.end.114

do.end.114:                                       ; preds = %for.end.113
  br label %do.body.115

do.body.115:                                      ; preds = %do.end.114
  %107 = load %struct.win*, %struct.win** %p, align 8
  %w_alt = getelementptr inbounds %struct.win, %struct.win* %107, i32 0, i32 92
  %hlines = getelementptr inbounds %struct.anon.2, %struct.anon.2* %w_alt, i32 0, i32 5
  %108 = load %struct.mline*, %struct.mline** %hlines, align 8
  store %struct.mline* %108, %struct.mline** %ml, align 8
  store i32 0, i32* %i, align 4
  br label %for.cond.116

for.cond.116:                                     ; preds = %for.inc.161, %do.body.115
  %109 = load i32, i32* %i, align 4
  %110 = load %struct.win*, %struct.win** %p, align 8
  %w_alt117 = getelementptr inbounds %struct.win, %struct.win* %110, i32 0, i32 92
  %histheight = getelementptr inbounds %struct.anon.2, %struct.anon.2* %w_alt117, i32 0, i32 4
  %111 = load i32, i32* %histheight, align 4
  %cmp118 = icmp slt i32 %109, %111
  br i1 %cmp118, label %for.body.120, label %for.end.164

for.body.120:                                     ; preds = %for.cond.116
  br label %do.body.121

do.body.121:                                      ; preds = %for.body.120
  %112 = load %struct.mline*, %struct.mline** %ml, align 8
  %image122 = getelementptr inbounds %struct.mline, %struct.mline* %112, i32 0, i32 0
  %113 = load i8*, i8** %image122, align 8
  %114 = load i8*, i8** %oldblank, align 8
  %cmp123 = icmp eq i8* %113, %114
  br i1 %cmp123, label %if.then.125, label %if.end.127

if.then.125:                                      ; preds = %do.body.121
  %115 = load i8*, i8** @blank, align 8
  %116 = load %struct.mline*, %struct.mline** %ml, align 8
  %image126 = getelementptr inbounds %struct.mline, %struct.mline* %116, i32 0, i32 0
  store i8* %115, i8** %image126, align 8
  br label %if.end.127

if.end.127:                                       ; preds = %if.then.125, %do.body.121
  br label %do.end.128

do.end.128:                                       ; preds = %if.end.127
  br label %do.body.129

do.body.129:                                      ; preds = %do.end.128
  %117 = load %struct.mline*, %struct.mline** %ml, align 8
  %attr130 = getelementptr inbounds %struct.mline, %struct.mline* %117, i32 0, i32 1
  %118 = load i8*, i8** %attr130, align 8
  %119 = load i8*, i8** %oldnull, align 8
  %cmp131 = icmp eq i8* %118, %119
  br i1 %cmp131, label %if.then.133, label %if.end.135

if.then.133:                                      ; preds = %do.body.129
  %120 = load i8*, i8** @null, align 8
  %121 = load %struct.mline*, %struct.mline** %ml, align 8
  %attr134 = getelementptr inbounds %struct.mline, %struct.mline* %121, i32 0, i32 1
  store i8* %120, i8** %attr134, align 8
  br label %if.end.135

if.end.135:                                       ; preds = %if.then.133, %do.body.129
  br label %do.end.136

do.end.136:                                       ; preds = %if.end.135
  br label %do.body.137

do.body.137:                                      ; preds = %do.end.136
  %122 = load %struct.mline*, %struct.mline** %ml, align 8
  %font138 = getelementptr inbounds %struct.mline, %struct.mline* %122, i32 0, i32 2
  %123 = load i8*, i8** %font138, align 8
  %124 = load i8*, i8** %oldnull, align 8
  %cmp139 = icmp eq i8* %123, %124
  br i1 %cmp139, label %if.then.141, label %if.end.143

if.then.141:                                      ; preds = %do.body.137
  %125 = load i8*, i8** @null, align 8
  %126 = load %struct.mline*, %struct.mline** %ml, align 8
  %font142 = getelementptr inbounds %struct.mline, %struct.mline* %126, i32 0, i32 2
  store i8* %125, i8** %font142, align 8
  br label %if.end.143

if.end.143:                                       ; preds = %if.then.141, %do.body.137
  br label %do.end.144

do.end.144:                                       ; preds = %if.end.143
  br label %do.body.145

do.body.145:                                      ; preds = %do.end.144
  %127 = load %struct.mline*, %struct.mline** %ml, align 8
  %fontx146 = getelementptr inbounds %struct.mline, %struct.mline* %127, i32 0, i32 3
  %128 = load i8*, i8** %fontx146, align 8
  %129 = load i8*, i8** %oldnull, align 8
  %cmp147 = icmp eq i8* %128, %129
  br i1 %cmp147, label %if.then.149, label %if.end.151

if.then.149:                                      ; preds = %do.body.145
  %130 = load i8*, i8** @null, align 8
  %131 = load %struct.mline*, %struct.mline** %ml, align 8
  %fontx150 = getelementptr inbounds %struct.mline, %struct.mline* %131, i32 0, i32 3
  store i8* %130, i8** %fontx150, align 8
  br label %if.end.151

if.end.151:                                       ; preds = %if.then.149, %do.body.145
  br label %do.end.152

do.end.152:                                       ; preds = %if.end.151
  br label %do.body.153

do.body.153:                                      ; preds = %do.end.152
  %132 = load %struct.mline*, %struct.mline** %ml, align 8
  %color154 = getelementptr inbounds %struct.mline, %struct.mline* %132, i32 0, i32 4
  %133 = load i8*, i8** %color154, align 8
  %134 = load i8*, i8** %oldnull, align 8
  %cmp155 = icmp eq i8* %133, %134
  br i1 %cmp155, label %if.then.157, label %if.end.159

if.then.157:                                      ; preds = %do.body.153
  %135 = load i8*, i8** @null, align 8
  %136 = load %struct.mline*, %struct.mline** %ml, align 8
  %color158 = getelementptr inbounds %struct.mline, %struct.mline* %136, i32 0, i32 4
  store i8* %135, i8** %color158, align 8
  br label %if.end.159

if.end.159:                                       ; preds = %if.then.157, %do.body.153
  br label %do.end.160

do.end.160:                                       ; preds = %if.end.159
  br label %for.inc.161

for.inc.161:                                      ; preds = %do.end.160
  %137 = load i32, i32* %i, align 4
  %inc162 = add nsw i32 %137, 1
  store i32 %inc162, i32* %i, align 4
  %138 = load %struct.mline*, %struct.mline** %ml, align 8
  %incdec.ptr163 = getelementptr inbounds %struct.mline, %struct.mline* %138, i32 1
  store %struct.mline* %incdec.ptr163, %struct.mline** %ml, align 8
  br label %for.cond.116

for.end.164:                                      ; preds = %for.cond.116
  br label %do.end.165

do.end.165:                                       ; preds = %for.end.164
  br label %do.body.166

do.body.166:                                      ; preds = %do.end.165
  %139 = load %struct.win*, %struct.win** %p, align 8
  %w_alt167 = getelementptr inbounds %struct.win, %struct.win* %139, i32 0, i32 92
  %mlines = getelementptr inbounds %struct.anon.2, %struct.anon.2* %w_alt167, i32 0, i32 1
  %140 = load %struct.mline*, %struct.mline** %mlines, align 8
  store %struct.mline* %140, %struct.mline** %ml, align 8
  store i32 0, i32* %i, align 4
  br label %for.cond.168

for.cond.168:                                     ; preds = %for.inc.213, %do.body.166
  %141 = load i32, i32* %i, align 4
  %142 = load %struct.win*, %struct.win** %p, align 8
  %w_alt169 = getelementptr inbounds %struct.win, %struct.win* %142, i32 0, i32 92
  %height = getelementptr inbounds %struct.anon.2, %struct.anon.2* %w_alt169, i32 0, i32 3
  %143 = load i32, i32* %height, align 4
  %cmp170 = icmp slt i32 %141, %143
  br i1 %cmp170, label %for.body.172, label %for.end.216

for.body.172:                                     ; preds = %for.cond.168
  br label %do.body.173

do.body.173:                                      ; preds = %for.body.172
  %144 = load %struct.mline*, %struct.mline** %ml, align 8
  %image174 = getelementptr inbounds %struct.mline, %struct.mline* %144, i32 0, i32 0
  %145 = load i8*, i8** %image174, align 8
  %146 = load i8*, i8** %oldblank, align 8
  %cmp175 = icmp eq i8* %145, %146
  br i1 %cmp175, label %if.then.177, label %if.end.179

if.then.177:                                      ; preds = %do.body.173
  %147 = load i8*, i8** @blank, align 8
  %148 = load %struct.mline*, %struct.mline** %ml, align 8
  %image178 = getelementptr inbounds %struct.mline, %struct.mline* %148, i32 0, i32 0
  store i8* %147, i8** %image178, align 8
  br label %if.end.179

if.end.179:                                       ; preds = %if.then.177, %do.body.173
  br label %do.end.180

do.end.180:                                       ; preds = %if.end.179
  br label %do.body.181

do.body.181:                                      ; preds = %do.end.180
  %149 = load %struct.mline*, %struct.mline** %ml, align 8
  %attr182 = getelementptr inbounds %struct.mline, %struct.mline* %149, i32 0, i32 1
  %150 = load i8*, i8** %attr182, align 8
  %151 = load i8*, i8** %oldnull, align 8
  %cmp183 = icmp eq i8* %150, %151
  br i1 %cmp183, label %if.then.185, label %if.end.187

if.then.185:                                      ; preds = %do.body.181
  %152 = load i8*, i8** @null, align 8
  %153 = load %struct.mline*, %struct.mline** %ml, align 8
  %attr186 = getelementptr inbounds %struct.mline, %struct.mline* %153, i32 0, i32 1
  store i8* %152, i8** %attr186, align 8
  br label %if.end.187

if.end.187:                                       ; preds = %if.then.185, %do.body.181
  br label %do.end.188

do.end.188:                                       ; preds = %if.end.187
  br label %do.body.189

do.body.189:                                      ; preds = %do.end.188
  %154 = load %struct.mline*, %struct.mline** %ml, align 8
  %font190 = getelementptr inbounds %struct.mline, %struct.mline* %154, i32 0, i32 2
  %155 = load i8*, i8** %font190, align 8
  %156 = load i8*, i8** %oldnull, align 8
  %cmp191 = icmp eq i8* %155, %156
  br i1 %cmp191, label %if.then.193, label %if.end.195

if.then.193:                                      ; preds = %do.body.189
  %157 = load i8*, i8** @null, align 8
  %158 = load %struct.mline*, %struct.mline** %ml, align 8
  %font194 = getelementptr inbounds %struct.mline, %struct.mline* %158, i32 0, i32 2
  store i8* %157, i8** %font194, align 8
  br label %if.end.195

if.end.195:                                       ; preds = %if.then.193, %do.body.189
  br label %do.end.196

do.end.196:                                       ; preds = %if.end.195
  br label %do.body.197

do.body.197:                                      ; preds = %do.end.196
  %159 = load %struct.mline*, %struct.mline** %ml, align 8
  %fontx198 = getelementptr inbounds %struct.mline, %struct.mline* %159, i32 0, i32 3
  %160 = load i8*, i8** %fontx198, align 8
  %161 = load i8*, i8** %oldnull, align 8
  %cmp199 = icmp eq i8* %160, %161
  br i1 %cmp199, label %if.then.201, label %if.end.203

if.then.201:                                      ; preds = %do.body.197
  %162 = load i8*, i8** @null, align 8
  %163 = load %struct.mline*, %struct.mline** %ml, align 8
  %fontx202 = getelementptr inbounds %struct.mline, %struct.mline* %163, i32 0, i32 3
  store i8* %162, i8** %fontx202, align 8
  br label %if.end.203

if.end.203:                                       ; preds = %if.then.201, %do.body.197
  br label %do.end.204

do.end.204:                                       ; preds = %if.end.203
  br label %do.body.205

do.body.205:                                      ; preds = %do.end.204
  %164 = load %struct.mline*, %struct.mline** %ml, align 8
  %color206 = getelementptr inbounds %struct.mline, %struct.mline* %164, i32 0, i32 4
  %165 = load i8*, i8** %color206, align 8
  %166 = load i8*, i8** %oldnull, align 8
  %cmp207 = icmp eq i8* %165, %166
  br i1 %cmp207, label %if.then.209, label %if.end.211

if.then.209:                                      ; preds = %do.body.205
  %167 = load i8*, i8** @null, align 8
  %168 = load %struct.mline*, %struct.mline** %ml, align 8
  %color210 = getelementptr inbounds %struct.mline, %struct.mline* %168, i32 0, i32 4
  store i8* %167, i8** %color210, align 8
  br label %if.end.211

if.end.211:                                       ; preds = %if.then.209, %do.body.205
  br label %do.end.212

do.end.212:                                       ; preds = %if.end.211
  br label %for.inc.213

for.inc.213:                                      ; preds = %do.end.212
  %169 = load i32, i32* %i, align 4
  %inc214 = add nsw i32 %169, 1
  store i32 %inc214, i32* %i, align 4
  %170 = load %struct.mline*, %struct.mline** %ml, align 8
  %incdec.ptr215 = getelementptr inbounds %struct.mline, %struct.mline* %170, i32 1
  store %struct.mline* %incdec.ptr215, %struct.mline** %ml, align 8
  br label %for.cond.168

for.end.216:                                      ; preds = %for.cond.168
  br label %do.end.217

do.end.217:                                       ; preds = %for.end.216
  br label %for.inc.218

for.inc.218:                                      ; preds = %do.end.217
  %171 = load %struct.win*, %struct.win** %p, align 8
  %w_next = getelementptr inbounds %struct.win, %struct.win* %171, i32 0, i32 0
  %172 = load %struct.win*, %struct.win** %w_next, align 8
  store %struct.win* %172, %struct.win** %p, align 8
  br label %for.cond

for.end.219:                                      ; preds = %if.then.2, %for.cond
  ret void
}

; Function Attrs: nounwind uwtable
define void @ResizeLayersToCanvases() #0 {
entry:
  %cv = alloca %struct.canvas*, align 8
  %l = alloca %struct.layer*, align 8
  %lx = alloca i32, align 4
  %ly = alloca i32, align 4
  %n = alloca i32, align 4
  %n83 = alloca i32, align 4
  br label %do.body

do.body:                                          ; preds = %entry
  br label %do.end

do.end:                                           ; preds = %do.body
  %0 = load %struct.display*, %struct.display** @display, align 8
  %d_kaablamm = getelementptr inbounds %struct.display, %struct.display* %0, i32 0, i32 55
  store i32 0, i32* %d_kaablamm, align 4
  %1 = load %struct.display*, %struct.display** @display, align 8
  %d_cvlist = getelementptr inbounds %struct.display, %struct.display* %1, i32 0, i32 3
  %2 = load %struct.canvas*, %struct.canvas** %d_cvlist, align 8
  store %struct.canvas* %2, %struct.canvas** %cv, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %do.end
  %3 = load %struct.canvas*, %struct.canvas** %cv, align 8
  %tobool = icmp ne %struct.canvas* %3, null
  br i1 %tobool, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %4 = load %struct.canvas*, %struct.canvas** %cv, align 8
  %c_layer = getelementptr inbounds %struct.canvas, %struct.canvas* %4, i32 0, i32 9
  %5 = load %struct.layer*, %struct.layer** %c_layer, align 8
  store %struct.layer* %5, %struct.layer** %l, align 8
  %6 = load %struct.layer*, %struct.layer** %l, align 8
  %cmp = icmp eq %struct.layer* %6, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %for.body
  br label %for.inc

if.end:                                           ; preds = %for.body
  br label %do.body.1

do.body.1:                                        ; preds = %if.end
  br label %do.end.2

do.end.2:                                         ; preds = %do.body.1
  %7 = load %struct.layer*, %struct.layer** %l, align 8
  %l_width = getelementptr inbounds %struct.layer, %struct.layer* %7, i32 0, i32 1
  %8 = load i32, i32* %l_width, align 4
  %9 = load %struct.canvas*, %struct.canvas** %cv, align 8
  %c_xe = getelementptr inbounds %struct.canvas, %struct.canvas* %9, i32 0, i32 15
  %10 = load i32, i32* %c_xe, align 4
  %11 = load %struct.canvas*, %struct.canvas** %cv, align 8
  %c_xs = getelementptr inbounds %struct.canvas, %struct.canvas* %11, i32 0, i32 14
  %12 = load i32, i32* %c_xs, align 4
  %sub = sub nsw i32 %10, %12
  %add = add nsw i32 %sub, 1
  %cmp3 = icmp eq i32 %8, %add
  br i1 %cmp3, label %land.lhs.true, label %if.end.10

land.lhs.true:                                    ; preds = %do.end.2
  %13 = load %struct.layer*, %struct.layer** %l, align 8
  %l_height = getelementptr inbounds %struct.layer, %struct.layer* %13, i32 0, i32 2
  %14 = load i32, i32* %l_height, align 4
  %15 = load %struct.canvas*, %struct.canvas** %cv, align 8
  %c_ye = getelementptr inbounds %struct.canvas, %struct.canvas* %15, i32 0, i32 17
  %16 = load i32, i32* %c_ye, align 4
  %17 = load %struct.canvas*, %struct.canvas** %cv, align 8
  %c_ys = getelementptr inbounds %struct.canvas, %struct.canvas* %17, i32 0, i32 16
  %18 = load i32, i32* %c_ys, align 4
  %sub4 = sub nsw i32 %16, %18
  %add5 = add nsw i32 %sub4, 1
  %cmp6 = icmp eq i32 %14, %add5
  br i1 %cmp6, label %if.then.7, label %if.end.10

if.then.7:                                        ; preds = %land.lhs.true
  br label %do.body.8

do.body.8:                                        ; preds = %if.then.7
  br label %do.end.9

do.end.9:                                         ; preds = %do.body.8
  br label %for.inc

if.end.10:                                        ; preds = %land.lhs.true, %do.end.2
  %19 = load %struct.layer*, %struct.layer** %l, align 8
  %call = call i32 @MayResizeLayer(%struct.layer* %19)
  %tobool11 = icmp ne i32 %call, 0
  br i1 %tobool11, label %if.else, label %if.then.12

if.then.12:                                       ; preds = %if.end.10
  br label %do.body.13

do.body.13:                                       ; preds = %if.then.12
  br label %do.end.14

do.end.14:                                        ; preds = %do.body.13
  br label %if.end.25

if.else:                                          ; preds = %if.end.10
  br label %do.body.15

do.body.15:                                       ; preds = %if.else
  br label %do.end.16

do.end.16:                                        ; preds = %do.body.15
  %20 = load %struct.layer*, %struct.layer** %l, align 8
  %21 = load %struct.canvas*, %struct.canvas** %cv, align 8
  %c_xe17 = getelementptr inbounds %struct.canvas, %struct.canvas* %21, i32 0, i32 15
  %22 = load i32, i32* %c_xe17, align 4
  %23 = load %struct.canvas*, %struct.canvas** %cv, align 8
  %c_xs18 = getelementptr inbounds %struct.canvas, %struct.canvas* %23, i32 0, i32 14
  %24 = load i32, i32* %c_xs18, align 4
  %sub19 = sub nsw i32 %22, %24
  %add20 = add nsw i32 %sub19, 1
  %25 = load %struct.canvas*, %struct.canvas** %cv, align 8
  %c_ye21 = getelementptr inbounds %struct.canvas, %struct.canvas* %25, i32 0, i32 17
  %26 = load i32, i32* %c_ye21, align 4
  %27 = load %struct.canvas*, %struct.canvas** %cv, align 8
  %c_ys22 = getelementptr inbounds %struct.canvas, %struct.canvas* %27, i32 0, i32 16
  %28 = load i32, i32* %c_ys22, align 4
  %sub23 = sub nsw i32 %26, %28
  %add24 = add nsw i32 %sub23, 1
  %29 = load %struct.display*, %struct.display** @display, align 8
  call void @ResizeLayer(%struct.layer* %20, i32 %add20, i32 %add24, %struct.display* %29)
  br label %if.end.25

if.end.25:                                        ; preds = %do.end.16, %do.end.14
  %30 = load %struct.canvas*, %struct.canvas** %cv, align 8
  %c_layer26 = getelementptr inbounds %struct.canvas, %struct.canvas* %30, i32 0, i32 9
  %31 = load %struct.layer*, %struct.layer** %c_layer26, align 8
  %l_x = getelementptr inbounds %struct.layer, %struct.layer* %31, i32 0, i32 3
  %32 = load i32, i32* %l_x, align 4
  store i32 %32, i32* %lx, align 4
  %33 = load %struct.canvas*, %struct.canvas** %cv, align 8
  %c_layer27 = getelementptr inbounds %struct.canvas, %struct.canvas* %33, i32 0, i32 9
  %34 = load %struct.layer*, %struct.layer** %c_layer27, align 8
  %l_y = getelementptr inbounds %struct.layer, %struct.layer* %34, i32 0, i32 4
  %35 = load i32, i32* %l_y, align 4
  store i32 %35, i32* %ly, align 4
  %36 = load i32, i32* %ly, align 4
  %37 = load %struct.canvas*, %struct.canvas** %cv, align 8
  %c_yoff = getelementptr inbounds %struct.canvas, %struct.canvas* %37, i32 0, i32 13
  %38 = load i32, i32* %c_yoff, align 4
  %add28 = add nsw i32 %36, %38
  %39 = load %struct.canvas*, %struct.canvas** %cv, align 8
  %c_ys29 = getelementptr inbounds %struct.canvas, %struct.canvas* %39, i32 0, i32 16
  %40 = load i32, i32* %c_ys29, align 4
  %cmp30 = icmp slt i32 %add28, %40
  br i1 %cmp30, label %if.then.31, label %if.else.35

if.then.31:                                       ; preds = %if.end.25
  %41 = load %struct.canvas*, %struct.canvas** %cv, align 8
  %c_ys32 = getelementptr inbounds %struct.canvas, %struct.canvas* %41, i32 0, i32 16
  %42 = load i32, i32* %c_ys32, align 4
  %43 = load i32, i32* %ly, align 4
  %sub33 = sub nsw i32 %42, %43
  %44 = load %struct.canvas*, %struct.canvas** %cv, align 8
  %c_yoff34 = getelementptr inbounds %struct.canvas, %struct.canvas* %44, i32 0, i32 13
  store i32 %sub33, i32* %c_yoff34, align 4
  %45 = load %struct.canvas*, %struct.canvas** %cv, align 8
  call void @RethinkViewportOffsets(%struct.canvas* %45)
  br label %if.end.45

if.else.35:                                       ; preds = %if.end.25
  %46 = load i32, i32* %ly, align 4
  %47 = load %struct.canvas*, %struct.canvas** %cv, align 8
  %c_yoff36 = getelementptr inbounds %struct.canvas, %struct.canvas* %47, i32 0, i32 13
  %48 = load i32, i32* %c_yoff36, align 4
  %add37 = add nsw i32 %46, %48
  %49 = load %struct.canvas*, %struct.canvas** %cv, align 8
  %c_ye38 = getelementptr inbounds %struct.canvas, %struct.canvas* %49, i32 0, i32 17
  %50 = load i32, i32* %c_ye38, align 4
  %cmp39 = icmp sgt i32 %add37, %50
  br i1 %cmp39, label %if.then.40, label %if.end.44

if.then.40:                                       ; preds = %if.else.35
  %51 = load %struct.canvas*, %struct.canvas** %cv, align 8
  %c_ye41 = getelementptr inbounds %struct.canvas, %struct.canvas* %51, i32 0, i32 17
  %52 = load i32, i32* %c_ye41, align 4
  %53 = load i32, i32* %ly, align 4
  %sub42 = sub nsw i32 %52, %53
  %54 = load %struct.canvas*, %struct.canvas** %cv, align 8
  %c_yoff43 = getelementptr inbounds %struct.canvas, %struct.canvas* %54, i32 0, i32 13
  store i32 %sub42, i32* %c_yoff43, align 4
  %55 = load %struct.canvas*, %struct.canvas** %cv, align 8
  call void @RethinkViewportOffsets(%struct.canvas* %55)
  br label %if.end.44

if.end.44:                                        ; preds = %if.then.40, %if.else.35
  br label %if.end.45

if.end.45:                                        ; preds = %if.end.44, %if.then.31
  %56 = load i32, i32* %lx, align 4
  %57 = load %struct.canvas*, %struct.canvas** %cv, align 8
  %c_xoff = getelementptr inbounds %struct.canvas, %struct.canvas* %57, i32 0, i32 12
  %58 = load i32, i32* %c_xoff, align 4
  %add46 = add nsw i32 %56, %58
  %59 = load %struct.canvas*, %struct.canvas** %cv, align 8
  %c_xs47 = getelementptr inbounds %struct.canvas, %struct.canvas* %59, i32 0, i32 14
  %60 = load i32, i32* %c_xs47, align 4
  %cmp48 = icmp slt i32 %add46, %60
  br i1 %cmp48, label %if.then.49, label %if.else.77

if.then.49:                                       ; preds = %if.end.45
  %61 = load %struct.canvas*, %struct.canvas** %cv, align 8
  %c_xs50 = getelementptr inbounds %struct.canvas, %struct.canvas* %61, i32 0, i32 14
  %62 = load i32, i32* %c_xs50, align 4
  %63 = load i32, i32* %lx, align 4
  %64 = load %struct.canvas*, %struct.canvas** %cv, align 8
  %c_xoff51 = getelementptr inbounds %struct.canvas, %struct.canvas* %64, i32 0, i32 12
  %65 = load i32, i32* %c_xoff51, align 4
  %add52 = add nsw i32 %63, %65
  %sub53 = sub nsw i32 %62, %add52
  store i32 %sub53, i32* %n, align 4
  %66 = load i32, i32* %n, align 4
  %67 = load %struct.canvas*, %struct.canvas** %cv, align 8
  %c_xe54 = getelementptr inbounds %struct.canvas, %struct.canvas* %67, i32 0, i32 15
  %68 = load i32, i32* %c_xe54, align 4
  %69 = load %struct.canvas*, %struct.canvas** %cv, align 8
  %c_xs55 = getelementptr inbounds %struct.canvas, %struct.canvas* %69, i32 0, i32 14
  %70 = load i32, i32* %c_xs55, align 4
  %sub56 = sub nsw i32 %68, %70
  %add57 = add nsw i32 %sub56, 1
  %div = sdiv i32 %add57, 2
  %cmp58 = icmp slt i32 %66, %div
  br i1 %cmp58, label %if.then.59, label %if.end.65

if.then.59:                                       ; preds = %if.then.49
  %71 = load %struct.canvas*, %struct.canvas** %cv, align 8
  %c_xe60 = getelementptr inbounds %struct.canvas, %struct.canvas* %71, i32 0, i32 15
  %72 = load i32, i32* %c_xe60, align 4
  %73 = load %struct.canvas*, %struct.canvas** %cv, align 8
  %c_xs61 = getelementptr inbounds %struct.canvas, %struct.canvas* %73, i32 0, i32 14
  %74 = load i32, i32* %c_xs61, align 4
  %sub62 = sub nsw i32 %72, %74
  %add63 = add nsw i32 %sub62, 1
  %div64 = sdiv i32 %add63, 2
  store i32 %div64, i32* %n, align 4
  br label %if.end.65

if.end.65:                                        ; preds = %if.then.59, %if.then.49
  %75 = load %struct.canvas*, %struct.canvas** %cv, align 8
  %c_xoff66 = getelementptr inbounds %struct.canvas, %struct.canvas* %75, i32 0, i32 12
  %76 = load i32, i32* %c_xoff66, align 4
  %77 = load i32, i32* %n, align 4
  %add67 = add nsw i32 %76, %77
  %78 = load %struct.canvas*, %struct.canvas** %cv, align 8
  %c_xs68 = getelementptr inbounds %struct.canvas, %struct.canvas* %78, i32 0, i32 14
  %79 = load i32, i32* %c_xs68, align 4
  %cmp69 = icmp sgt i32 %add67, %79
  br i1 %cmp69, label %if.then.70, label %if.end.74

if.then.70:                                       ; preds = %if.end.65
  %80 = load %struct.canvas*, %struct.canvas** %cv, align 8
  %c_xs71 = getelementptr inbounds %struct.canvas, %struct.canvas* %80, i32 0, i32 14
  %81 = load i32, i32* %c_xs71, align 4
  %82 = load %struct.canvas*, %struct.canvas** %cv, align 8
  %c_xoff72 = getelementptr inbounds %struct.canvas, %struct.canvas* %82, i32 0, i32 12
  %83 = load i32, i32* %c_xoff72, align 4
  %sub73 = sub nsw i32 %81, %83
  store i32 %sub73, i32* %n, align 4
  br label %if.end.74

if.end.74:                                        ; preds = %if.then.70, %if.end.65
  %84 = load i32, i32* %n, align 4
  %85 = load %struct.canvas*, %struct.canvas** %cv, align 8
  %c_xoff75 = getelementptr inbounds %struct.canvas, %struct.canvas* %85, i32 0, i32 12
  %86 = load i32, i32* %c_xoff75, align 4
  %add76 = add nsw i32 %86, %84
  store i32 %add76, i32* %c_xoff75, align 4
  %87 = load %struct.canvas*, %struct.canvas** %cv, align 8
  call void @RethinkViewportOffsets(%struct.canvas* %87)
  br label %if.end.121

if.else.77:                                       ; preds = %if.end.45
  %88 = load i32, i32* %lx, align 4
  %89 = load %struct.canvas*, %struct.canvas** %cv, align 8
  %c_xoff78 = getelementptr inbounds %struct.canvas, %struct.canvas* %89, i32 0, i32 12
  %90 = load i32, i32* %c_xoff78, align 4
  %add79 = add nsw i32 %88, %90
  %91 = load %struct.canvas*, %struct.canvas** %cv, align 8
  %c_xe80 = getelementptr inbounds %struct.canvas, %struct.canvas* %91, i32 0, i32 15
  %92 = load i32, i32* %c_xe80, align 4
  %cmp81 = icmp sgt i32 %add79, %92
  br i1 %cmp81, label %if.then.82, label %if.end.120

if.then.82:                                       ; preds = %if.else.77
  %93 = load i32, i32* %lx, align 4
  %94 = load %struct.canvas*, %struct.canvas** %cv, align 8
  %c_xoff84 = getelementptr inbounds %struct.canvas, %struct.canvas* %94, i32 0, i32 12
  %95 = load i32, i32* %c_xoff84, align 4
  %add85 = add nsw i32 %93, %95
  %96 = load %struct.canvas*, %struct.canvas** %cv, align 8
  %c_xe86 = getelementptr inbounds %struct.canvas, %struct.canvas* %96, i32 0, i32 15
  %97 = load i32, i32* %c_xe86, align 4
  %sub87 = sub nsw i32 %add85, %97
  store i32 %sub87, i32* %n83, align 4
  %98 = load i32, i32* %n83, align 4
  %99 = load %struct.canvas*, %struct.canvas** %cv, align 8
  %c_xe88 = getelementptr inbounds %struct.canvas, %struct.canvas* %99, i32 0, i32 15
  %100 = load i32, i32* %c_xe88, align 4
  %101 = load %struct.canvas*, %struct.canvas** %cv, align 8
  %c_xs89 = getelementptr inbounds %struct.canvas, %struct.canvas* %101, i32 0, i32 14
  %102 = load i32, i32* %c_xs89, align 4
  %sub90 = sub nsw i32 %100, %102
  %add91 = add nsw i32 %sub90, 1
  %div92 = sdiv i32 %add91, 2
  %cmp93 = icmp slt i32 %98, %div92
  br i1 %cmp93, label %if.then.94, label %if.end.100

if.then.94:                                       ; preds = %if.then.82
  %103 = load %struct.canvas*, %struct.canvas** %cv, align 8
  %c_xe95 = getelementptr inbounds %struct.canvas, %struct.canvas* %103, i32 0, i32 15
  %104 = load i32, i32* %c_xe95, align 4
  %105 = load %struct.canvas*, %struct.canvas** %cv, align 8
  %c_xs96 = getelementptr inbounds %struct.canvas, %struct.canvas* %105, i32 0, i32 14
  %106 = load i32, i32* %c_xs96, align 4
  %sub97 = sub nsw i32 %104, %106
  %add98 = add nsw i32 %sub97, 1
  %div99 = sdiv i32 %add98, 2
  store i32 %div99, i32* %n83, align 4
  br label %if.end.100

if.end.100:                                       ; preds = %if.then.94, %if.then.82
  %107 = load %struct.canvas*, %struct.canvas** %cv, align 8
  %c_xoff101 = getelementptr inbounds %struct.canvas, %struct.canvas* %107, i32 0, i32 12
  %108 = load i32, i32* %c_xoff101, align 4
  %109 = load i32, i32* %n83, align 4
  %sub102 = sub nsw i32 %108, %109
  %110 = load %struct.canvas*, %struct.canvas** %cv, align 8
  %c_layer103 = getelementptr inbounds %struct.canvas, %struct.canvas* %110, i32 0, i32 9
  %111 = load %struct.layer*, %struct.layer** %c_layer103, align 8
  %l_width104 = getelementptr inbounds %struct.layer, %struct.layer* %111, i32 0, i32 1
  %112 = load i32, i32* %l_width104, align 4
  %add105 = add nsw i32 %sub102, %112
  %sub106 = sub nsw i32 %add105, 1
  %113 = load %struct.canvas*, %struct.canvas** %cv, align 8
  %c_xe107 = getelementptr inbounds %struct.canvas, %struct.canvas* %113, i32 0, i32 15
  %114 = load i32, i32* %c_xe107, align 4
  %cmp108 = icmp slt i32 %sub106, %114
  br i1 %cmp108, label %if.then.109, label %if.end.117

if.then.109:                                      ; preds = %if.end.100
  %115 = load %struct.canvas*, %struct.canvas** %cv, align 8
  %c_xoff110 = getelementptr inbounds %struct.canvas, %struct.canvas* %115, i32 0, i32 12
  %116 = load i32, i32* %c_xoff110, align 4
  %117 = load %struct.canvas*, %struct.canvas** %cv, align 8
  %c_layer111 = getelementptr inbounds %struct.canvas, %struct.canvas* %117, i32 0, i32 9
  %118 = load %struct.layer*, %struct.layer** %c_layer111, align 8
  %l_width112 = getelementptr inbounds %struct.layer, %struct.layer* %118, i32 0, i32 1
  %119 = load i32, i32* %l_width112, align 4
  %add113 = add nsw i32 %116, %119
  %sub114 = sub nsw i32 %add113, 1
  %120 = load %struct.canvas*, %struct.canvas** %cv, align 8
  %c_xe115 = getelementptr inbounds %struct.canvas, %struct.canvas* %120, i32 0, i32 15
  %121 = load i32, i32* %c_xe115, align 4
  %sub116 = sub nsw i32 %sub114, %121
  store i32 %sub116, i32* %n83, align 4
  br label %if.end.117

if.end.117:                                       ; preds = %if.then.109, %if.end.100
  %122 = load i32, i32* %n83, align 4
  %123 = load %struct.canvas*, %struct.canvas** %cv, align 8
  %c_xoff118 = getelementptr inbounds %struct.canvas, %struct.canvas* %123, i32 0, i32 12
  %124 = load i32, i32* %c_xoff118, align 4
  %sub119 = sub nsw i32 %124, %122
  store i32 %sub119, i32* %c_xoff118, align 4
  %125 = load %struct.canvas*, %struct.canvas** %cv, align 8
  call void @RethinkViewportOffsets(%struct.canvas* %125)
  br label %if.end.120

if.end.120:                                       ; preds = %if.end.117, %if.else.77
  br label %if.end.121

if.end.121:                                       ; preds = %if.end.120, %if.end.74
  br label %for.inc

for.inc:                                          ; preds = %if.end.121, %do.end.9, %if.then
  %126 = load %struct.canvas*, %struct.canvas** %cv, align 8
  %c_next = getelementptr inbounds %struct.canvas, %struct.canvas* %126, i32 0, i32 0
  %127 = load %struct.canvas*, %struct.canvas** %c_next, align 8
  store %struct.canvas* %127, %struct.canvas** %cv, align 8
  br label %for.cond

for.end:                                          ; preds = %for.cond
  call void @Redisplay(i32 0)
  %128 = load %struct.display*, %struct.display** @display, align 8
  %d_kaablamm122 = getelementptr inbounds %struct.display, %struct.display* %128, i32 0, i32 55
  %129 = load i32, i32* %d_kaablamm122, align 4
  %tobool123 = icmp ne i32 %129, 0
  br i1 %tobool123, label %if.then.124, label %if.end.126

if.then.124:                                      ; preds = %for.end
  call void @kaablamm()
  %130 = load %struct.display*, %struct.display** @display, align 8
  %d_kaablamm125 = getelementptr inbounds %struct.display, %struct.display* %130, i32 0, i32 55
  store i32 0, i32* %d_kaablamm125, align 4
  br label %if.end.126

if.end.126:                                       ; preds = %if.then.124, %for.end
  ret void
}

; Function Attrs: nounwind uwtable
define void @ResizeLayer(%struct.layer* %l, i32 %wi, i32 %he, %struct.display* %norefdisp) #0 {
entry:
  %l.addr = alloca %struct.layer*, align 8
  %wi.addr = alloca i32, align 4
  %he.addr = alloca i32, align 4
  %norefdisp.addr = alloca %struct.display*, align 8
  %p = alloca %struct.win*, align 8
  %cv = alloca %struct.canvas*, align 8
  %oldflayer = alloca %struct.layer*, align 8
  %d = alloca %struct.display*, align 8
  %olddisplay = alloca %struct.display*, align 8
  %_last = alloca %struct.layer*, align 8
  %_cv = alloca %struct.canvas*, align 8
  %_last42 = alloca %struct.layer*, align 8
  %_cv54 = alloca %struct.canvas*, align 8
  %olddisplay90 = alloca %struct.display*, align 8
  %oldflayer91 = alloca %struct.layer*, align 8
  %l92 = alloca %struct.layer*, align 8
  %cvlist = alloca %struct.canvas*, align 8
  %cvlnext = alloca %struct.canvas*, align 8
  store %struct.layer* %l, %struct.layer** %l.addr, align 8
  store i32 %wi, i32* %wi.addr, align 4
  store i32 %he, i32* %he.addr, align 4
  store %struct.display* %norefdisp, %struct.display** %norefdisp.addr, align 8
  %0 = load %struct.layer*, %struct.layer** @flayer, align 8
  store %struct.layer* %0, %struct.layer** %oldflayer, align 8
  %1 = load %struct.display*, %struct.display** @display, align 8
  store %struct.display* %1, %struct.display** %olddisplay, align 8
  %2 = load %struct.layer*, %struct.layer** %l.addr, align 8
  %l_width = getelementptr inbounds %struct.layer, %struct.layer* %2, i32 0, i32 1
  %3 = load i32, i32* %l_width, align 4
  %4 = load i32, i32* %wi.addr, align 4
  %cmp = icmp eq i32 %3, %4
  br i1 %cmp, label %land.lhs.true, label %if.end

land.lhs.true:                                    ; preds = %entry
  %5 = load %struct.layer*, %struct.layer** %l.addr, align 8
  %l_height = getelementptr inbounds %struct.layer, %struct.layer* %5, i32 0, i32 2
  %6 = load i32, i32* %l_height, align 4
  %7 = load i32, i32* %he.addr, align 4
  %cmp1 = icmp eq i32 %6, %7
  br i1 %cmp1, label %if.then, label %if.end

if.then:                                          ; preds = %land.lhs.true
  br label %return

if.end:                                           ; preds = %land.lhs.true, %entry
  %8 = load %struct.layer*, %struct.layer** %l.addr, align 8
  %l_bottom = getelementptr inbounds %struct.layer, %struct.layer* %8, i32 0, i32 9
  %9 = load %struct.layer*, %struct.layer** %l_bottom, align 8
  %l_data = getelementptr inbounds %struct.layer, %struct.layer* %9, i32 0, i32 7
  %10 = load i8*, i8** %l_data, align 8
  %11 = bitcast i8* %10 to %struct.win*
  store %struct.win* %11, %struct.win** %p, align 8
  %12 = load %struct.layer*, %struct.layer** %oldflayer, align 8
  %tobool = icmp ne %struct.layer* %12, null
  br i1 %tobool, label %land.lhs.true.2, label %if.end.8

land.lhs.true.2:                                  ; preds = %if.end
  %13 = load %struct.layer*, %struct.layer** %l.addr, align 8
  %14 = load %struct.layer*, %struct.layer** %oldflayer, align 8
  %cmp3 = icmp eq %struct.layer* %13, %14
  br i1 %cmp3, label %if.then.7, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %land.lhs.true.2
  %15 = load %struct.layer*, %struct.layer** %oldflayer, align 8
  %l_bottom4 = getelementptr inbounds %struct.layer, %struct.layer* %15, i32 0, i32 9
  %16 = load %struct.layer*, %struct.layer** %l_bottom4, align 8
  %l_data5 = getelementptr inbounds %struct.layer, %struct.layer* %16, i32 0, i32 7
  %17 = load i8*, i8** %l_data5, align 8
  %18 = bitcast i8* %17 to %struct.win*
  %19 = load %struct.win*, %struct.win** %p, align 8
  %cmp6 = icmp eq %struct.win* %18, %19
  br i1 %cmp6, label %if.then.7, label %if.end.8

if.then.7:                                        ; preds = %lor.lhs.false, %land.lhs.true.2
  store %struct.layer* null, %struct.layer** %oldflayer, align 8
  br label %if.end.8

if.end.8:                                         ; preds = %if.then.7, %lor.lhs.false, %if.end
  %20 = load %struct.layer*, %struct.layer** %l.addr, align 8
  store %struct.layer* %20, %struct.layer** @flayer, align 8
  %21 = load %struct.win*, %struct.win** %p, align 8
  %tobool9 = icmp ne %struct.win* %21, null
  br i1 %tobool9, label %if.then.10, label %if.else.40

if.then.10:                                       ; preds = %if.end.8
  %22 = load %struct.display*, %struct.display** @displays, align 8
  store %struct.display* %22, %struct.display** %d, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.inc.38, %if.then.10
  %23 = load %struct.display*, %struct.display** %d, align 8
  %tobool11 = icmp ne %struct.display* %23, null
  br i1 %tobool11, label %for.body, label %for.end.39

for.body:                                         ; preds = %for.cond
  %24 = load %struct.display*, %struct.display** %d, align 8
  %d_cvlist = getelementptr inbounds %struct.display, %struct.display* %24, i32 0, i32 3
  %25 = load %struct.canvas*, %struct.canvas** %d_cvlist, align 8
  store %struct.canvas* %25, %struct.canvas** %cv, align 8
  br label %for.cond.12

for.cond.12:                                      ; preds = %for.inc.36, %for.body
  %26 = load %struct.canvas*, %struct.canvas** %cv, align 8
  %tobool13 = icmp ne %struct.canvas* %26, null
  br i1 %tobool13, label %for.body.14, label %for.end.37

for.body.14:                                      ; preds = %for.cond.12
  %27 = load %struct.win*, %struct.win** %p, align 8
  %28 = load %struct.canvas*, %struct.canvas** %cv, align 8
  %c_layer = getelementptr inbounds %struct.canvas, %struct.canvas* %28, i32 0, i32 9
  %29 = load %struct.layer*, %struct.layer** %c_layer, align 8
  %l_bottom15 = getelementptr inbounds %struct.layer, %struct.layer* %29, i32 0, i32 9
  %30 = load %struct.layer*, %struct.layer** %l_bottom15, align 8
  %l_data16 = getelementptr inbounds %struct.layer, %struct.layer* %30, i32 0, i32 7
  %31 = load i8*, i8** %l_data16, align 8
  %32 = bitcast i8* %31 to %struct.win*
  %cmp17 = icmp eq %struct.win* %27, %32
  br i1 %cmp17, label %if.then.18, label %if.end.35

if.then.18:                                       ; preds = %for.body.14
  br label %do.body

do.body:                                          ; preds = %if.then.18
  store %struct.layer* null, %struct.layer** %_last, align 8
  %33 = load %struct.canvas*, %struct.canvas** %cv, align 8
  %c_layer19 = getelementptr inbounds %struct.canvas, %struct.canvas* %33, i32 0, i32 9
  %34 = load %struct.layer*, %struct.layer** %c_layer19, align 8
  store %struct.layer* %34, %struct.layer** @flayer, align 8
  br label %while.cond

while.cond:                                       ; preds = %if.end.31, %do.body
  %35 = load %struct.layer*, %struct.layer** @flayer, align 8
  %l_next = getelementptr inbounds %struct.layer, %struct.layer* %35, i32 0, i32 8
  %36 = load %struct.layer*, %struct.layer** %l_next, align 8
  %tobool20 = icmp ne %struct.layer* %36, null
  br i1 %tobool20, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %37 = load %struct.layer*, %struct.layer** @flayer, align 8
  %l_layfn = getelementptr inbounds %struct.layer, %struct.layer* %37, i32 0, i32 6
  %38 = load %struct.LayFuncs*, %struct.LayFuncs** %l_layfn, align 8
  %lf_LayResize = getelementptr inbounds %struct.LayFuncs, %struct.LayFuncs* %38, i32 0, i32 5
  %39 = load i32 (i32, i32)*, i32 (i32, i32)** %lf_LayResize, align 8
  %40 = load i32, i32* %wi.addr, align 4
  %41 = load i32, i32* %he.addr, align 4
  %call = call i32 %39(i32 %40, i32 %41)
  %cmp21 = icmp eq i32 %call, 0
  br i1 %cmp21, label %if.then.22, label %if.else

if.then.22:                                       ; preds = %while.body
  %42 = load %struct.layer*, %struct.layer** @flayer, align 8
  store %struct.layer* %42, %struct.layer** %_last, align 8
  %43 = load %struct.layer*, %struct.layer** @flayer, align 8
  %l_next23 = getelementptr inbounds %struct.layer, %struct.layer* %43, i32 0, i32 8
  %44 = load %struct.layer*, %struct.layer** %l_next23, align 8
  store %struct.layer* %44, %struct.layer** @flayer, align 8
  br label %if.end.31

if.else:                                          ; preds = %while.body
  %45 = load %struct.layer*, %struct.layer** @flayer, align 8
  %l_cvlist = getelementptr inbounds %struct.layer, %struct.layer* %45, i32 0, i32 0
  %46 = load %struct.canvas*, %struct.canvas** %l_cvlist, align 8
  store %struct.canvas* %46, %struct.canvas** %_cv, align 8
  br label %for.cond.24

for.cond.24:                                      ; preds = %for.inc, %if.else
  %47 = load %struct.canvas*, %struct.canvas** %_cv, align 8
  %tobool25 = icmp ne %struct.canvas* %47, null
  br i1 %tobool25, label %for.body.26, label %for.end

for.body.26:                                      ; preds = %for.cond.24
  %48 = load %struct.canvas*, %struct.canvas** %_cv, align 8
  %c_display = getelementptr inbounds %struct.canvas, %struct.canvas* %48, i32 0, i32 1
  %49 = load %struct.display*, %struct.display** %c_display, align 8
  %d_kaablamm = getelementptr inbounds %struct.display, %struct.display* %49, i32 0, i32 55
  store i32 1, i32* %d_kaablamm, align 4
  br label %for.inc

for.inc:                                          ; preds = %for.body.26
  %50 = load %struct.canvas*, %struct.canvas** %_cv, align 8
  %c_lnext = getelementptr inbounds %struct.canvas, %struct.canvas* %50, i32 0, i32 10
  %51 = load %struct.canvas*, %struct.canvas** %c_lnext, align 8
  store %struct.canvas* %51, %struct.canvas** %_cv, align 8
  br label %for.cond.24

for.end:                                          ; preds = %for.cond.24
  call void @ExitOverlayPage()
  %52 = load %struct.layer*, %struct.layer** %_last, align 8
  %tobool27 = icmp ne %struct.layer* %52, null
  br i1 %tobool27, label %if.then.28, label %if.end.30

if.then.28:                                       ; preds = %for.end
  %53 = load %struct.layer*, %struct.layer** @flayer, align 8
  %54 = load %struct.layer*, %struct.layer** %_last, align 8
  %l_next29 = getelementptr inbounds %struct.layer, %struct.layer* %54, i32 0, i32 8
  store %struct.layer* %53, %struct.layer** %l_next29, align 8
  br label %if.end.30

if.end.30:                                        ; preds = %if.then.28, %for.end
  br label %if.end.31

if.end.31:                                        ; preds = %if.end.30, %if.then.22
  br label %while.cond

while.end:                                        ; preds = %while.cond
  %55 = load %struct.layer*, %struct.layer** @flayer, align 8
  %l_layfn32 = getelementptr inbounds %struct.layer, %struct.layer* %55, i32 0, i32 6
  %56 = load %struct.LayFuncs*, %struct.LayFuncs** %l_layfn32, align 8
  %lf_LayResize33 = getelementptr inbounds %struct.LayFuncs, %struct.LayFuncs* %56, i32 0, i32 5
  %57 = load i32 (i32, i32)*, i32 (i32, i32)** %lf_LayResize33, align 8
  %58 = load i32, i32* %wi.addr, align 4
  %59 = load i32, i32* %he.addr, align 4
  %call34 = call i32 %57(i32 %58, i32 %59)
  br label %do.end

do.end:                                           ; preds = %while.end
  br label %if.end.35

if.end.35:                                        ; preds = %do.end, %for.body.14
  br label %for.inc.36

for.inc.36:                                       ; preds = %if.end.35
  %60 = load %struct.canvas*, %struct.canvas** %cv, align 8
  %c_next = getelementptr inbounds %struct.canvas, %struct.canvas* %60, i32 0, i32 0
  %61 = load %struct.canvas*, %struct.canvas** %c_next, align 8
  store %struct.canvas* %61, %struct.canvas** %cv, align 8
  br label %for.cond.12

for.end.37:                                       ; preds = %for.cond.12
  br label %for.inc.38

for.inc.38:                                       ; preds = %for.end.37
  %62 = load %struct.display*, %struct.display** %d, align 8
  %d_next = getelementptr inbounds %struct.display, %struct.display* %62, i32 0, i32 0
  %63 = load %struct.display*, %struct.display** %d_next, align 8
  store %struct.display* %63, %struct.display** %d, align 8
  br label %for.cond

for.end.39:                                       ; preds = %for.cond
  br label %if.end.74

if.else.40:                                       ; preds = %if.end.8
  br label %do.body.41

do.body.41:                                       ; preds = %if.else.40
  store %struct.layer* null, %struct.layer** %_last42, align 8
  %64 = load %struct.layer*, %struct.layer** @flayer, align 8
  store %struct.layer* %64, %struct.layer** @flayer, align 8
  br label %while.cond.43

while.cond.43:                                    ; preds = %if.end.68, %do.body.41
  %65 = load %struct.layer*, %struct.layer** @flayer, align 8
  %l_next44 = getelementptr inbounds %struct.layer, %struct.layer* %65, i32 0, i32 8
  %66 = load %struct.layer*, %struct.layer** %l_next44, align 8
  %tobool45 = icmp ne %struct.layer* %66, null
  br i1 %tobool45, label %while.body.46, label %while.end.69

while.body.46:                                    ; preds = %while.cond.43
  %67 = load %struct.layer*, %struct.layer** @flayer, align 8
  %l_layfn47 = getelementptr inbounds %struct.layer, %struct.layer* %67, i32 0, i32 6
  %68 = load %struct.LayFuncs*, %struct.LayFuncs** %l_layfn47, align 8
  %lf_LayResize48 = getelementptr inbounds %struct.LayFuncs, %struct.LayFuncs* %68, i32 0, i32 5
  %69 = load i32 (i32, i32)*, i32 (i32, i32)** %lf_LayResize48, align 8
  %70 = load i32, i32* %wi.addr, align 4
  %71 = load i32, i32* %he.addr, align 4
  %call49 = call i32 %69(i32 %70, i32 %71)
  %cmp50 = icmp eq i32 %call49, 0
  br i1 %cmp50, label %if.then.51, label %if.else.53

if.then.51:                                       ; preds = %while.body.46
  %72 = load %struct.layer*, %struct.layer** @flayer, align 8
  store %struct.layer* %72, %struct.layer** %_last42, align 8
  %73 = load %struct.layer*, %struct.layer** @flayer, align 8
  %l_next52 = getelementptr inbounds %struct.layer, %struct.layer* %73, i32 0, i32 8
  %74 = load %struct.layer*, %struct.layer** %l_next52, align 8
  store %struct.layer* %74, %struct.layer** @flayer, align 8
  br label %if.end.68

if.else.53:                                       ; preds = %while.body.46
  %75 = load %struct.layer*, %struct.layer** @flayer, align 8
  %l_cvlist55 = getelementptr inbounds %struct.layer, %struct.layer* %75, i32 0, i32 0
  %76 = load %struct.canvas*, %struct.canvas** %l_cvlist55, align 8
  store %struct.canvas* %76, %struct.canvas** %_cv54, align 8
  br label %for.cond.56

for.cond.56:                                      ; preds = %for.inc.61, %if.else.53
  %77 = load %struct.canvas*, %struct.canvas** %_cv54, align 8
  %tobool57 = icmp ne %struct.canvas* %77, null
  br i1 %tobool57, label %for.body.58, label %for.end.63

for.body.58:                                      ; preds = %for.cond.56
  %78 = load %struct.canvas*, %struct.canvas** %_cv54, align 8
  %c_display59 = getelementptr inbounds %struct.canvas, %struct.canvas* %78, i32 0, i32 1
  %79 = load %struct.display*, %struct.display** %c_display59, align 8
  %d_kaablamm60 = getelementptr inbounds %struct.display, %struct.display* %79, i32 0, i32 55
  store i32 1, i32* %d_kaablamm60, align 4
  br label %for.inc.61

for.inc.61:                                       ; preds = %for.body.58
  %80 = load %struct.canvas*, %struct.canvas** %_cv54, align 8
  %c_lnext62 = getelementptr inbounds %struct.canvas, %struct.canvas* %80, i32 0, i32 10
  %81 = load %struct.canvas*, %struct.canvas** %c_lnext62, align 8
  store %struct.canvas* %81, %struct.canvas** %_cv54, align 8
  br label %for.cond.56

for.end.63:                                       ; preds = %for.cond.56
  call void @ExitOverlayPage()
  %82 = load %struct.layer*, %struct.layer** %_last42, align 8
  %tobool64 = icmp ne %struct.layer* %82, null
  br i1 %tobool64, label %if.then.65, label %if.end.67

if.then.65:                                       ; preds = %for.end.63
  %83 = load %struct.layer*, %struct.layer** @flayer, align 8
  %84 = load %struct.layer*, %struct.layer** %_last42, align 8
  %l_next66 = getelementptr inbounds %struct.layer, %struct.layer* %84, i32 0, i32 8
  store %struct.layer* %83, %struct.layer** %l_next66, align 8
  br label %if.end.67

if.end.67:                                        ; preds = %if.then.65, %for.end.63
  br label %if.end.68

if.end.68:                                        ; preds = %if.end.67, %if.then.51
  br label %while.cond.43

while.end.69:                                     ; preds = %while.cond.43
  %85 = load %struct.layer*, %struct.layer** @flayer, align 8
  %l_layfn70 = getelementptr inbounds %struct.layer, %struct.layer* %85, i32 0, i32 6
  %86 = load %struct.LayFuncs*, %struct.LayFuncs** %l_layfn70, align 8
  %lf_LayResize71 = getelementptr inbounds %struct.LayFuncs, %struct.LayFuncs* %86, i32 0, i32 5
  %87 = load i32 (i32, i32)*, i32 (i32, i32)** %lf_LayResize71, align 8
  %88 = load i32, i32* %wi.addr, align 4
  %89 = load i32, i32* %he.addr, align 4
  %call72 = call i32 %87(i32 %88, i32 %89)
  br label %do.end.73

do.end.73:                                        ; preds = %while.end.69
  br label %if.end.74

if.end.74:                                        ; preds = %do.end.73, %for.end.39
  %90 = load %struct.display*, %struct.display** @displays, align 8
  store %struct.display* %90, %struct.display** @display, align 8
  br label %for.cond.75

for.cond.75:                                      ; preds = %for.inc.110, %if.end.74
  %91 = load %struct.display*, %struct.display** @display, align 8
  %tobool76 = icmp ne %struct.display* %91, null
  br i1 %tobool76, label %for.body.77, label %for.end.112

for.body.77:                                      ; preds = %for.cond.75
  %92 = load %struct.display*, %struct.display** @display, align 8
  %93 = load %struct.display*, %struct.display** %norefdisp.addr, align 8
  %cmp78 = icmp eq %struct.display* %92, %93
  br i1 %cmp78, label %if.then.79, label %if.end.80

if.then.79:                                       ; preds = %for.body.77
  br label %for.inc.110

if.end.80:                                        ; preds = %for.body.77
  %94 = load %struct.display*, %struct.display** @display, align 8
  %d_cvlist81 = getelementptr inbounds %struct.display, %struct.display* %94, i32 0, i32 3
  %95 = load %struct.canvas*, %struct.canvas** %d_cvlist81, align 8
  store %struct.canvas* %95, %struct.canvas** %cv, align 8
  br label %for.cond.82

for.cond.82:                                      ; preds = %for.inc.102, %if.end.80
  %96 = load %struct.canvas*, %struct.canvas** %cv, align 8
  %tobool83 = icmp ne %struct.canvas* %96, null
  br i1 %tobool83, label %for.body.84, label %for.end.104

for.body.84:                                      ; preds = %for.cond.82
  %97 = load %struct.canvas*, %struct.canvas** %cv, align 8
  %c_layer85 = getelementptr inbounds %struct.canvas, %struct.canvas* %97, i32 0, i32 9
  %98 = load %struct.layer*, %struct.layer** %c_layer85, align 8
  %l_bottom86 = getelementptr inbounds %struct.layer, %struct.layer* %98, i32 0, i32 9
  %99 = load %struct.layer*, %struct.layer** %l_bottom86, align 8
  %l_data87 = getelementptr inbounds %struct.layer, %struct.layer* %99, i32 0, i32 7
  %100 = load i8*, i8** %l_data87, align 8
  %101 = bitcast i8* %100 to %struct.win*
  %102 = load %struct.win*, %struct.win** %p, align 8
  %cmp88 = icmp eq %struct.win* %101, %102
  br i1 %cmp88, label %if.then.89, label %if.end.101

if.then.89:                                       ; preds = %for.body.84
  %103 = load %struct.display*, %struct.display** @display, align 8
  store %struct.display* %103, %struct.display** %olddisplay90, align 8
  %104 = load %struct.layer*, %struct.layer** @flayer, align 8
  store %struct.layer* %104, %struct.layer** %oldflayer91, align 8
  %105 = load %struct.canvas*, %struct.canvas** %cv, align 8
  %c_layer93 = getelementptr inbounds %struct.canvas, %struct.canvas* %105, i32 0, i32 9
  %106 = load %struct.layer*, %struct.layer** %c_layer93, align 8
  store %struct.layer* %106, %struct.layer** %l92, align 8
  %107 = load %struct.layer*, %struct.layer** %l92, align 8
  %l_cvlist94 = getelementptr inbounds %struct.layer, %struct.layer* %107, i32 0, i32 0
  %108 = load %struct.canvas*, %struct.canvas** %l_cvlist94, align 8
  store %struct.canvas* %108, %struct.canvas** %cvlist, align 8
  %109 = load %struct.canvas*, %struct.canvas** %cv, align 8
  %c_lnext95 = getelementptr inbounds %struct.canvas, %struct.canvas* %109, i32 0, i32 10
  %110 = load %struct.canvas*, %struct.canvas** %c_lnext95, align 8
  store %struct.canvas* %110, %struct.canvas** %cvlnext, align 8
  %111 = load %struct.layer*, %struct.layer** %l92, align 8
  store %struct.layer* %111, %struct.layer** @flayer, align 8
  %112 = load %struct.canvas*, %struct.canvas** %cv, align 8
  %113 = load %struct.layer*, %struct.layer** %l92, align 8
  %l_cvlist96 = getelementptr inbounds %struct.layer, %struct.layer* %113, i32 0, i32 0
  store %struct.canvas* %112, %struct.canvas** %l_cvlist96, align 8
  %114 = load %struct.canvas*, %struct.canvas** %cv, align 8
  %c_lnext97 = getelementptr inbounds %struct.canvas, %struct.canvas* %114, i32 0, i32 10
  store %struct.canvas* null, %struct.canvas** %c_lnext97, align 8
  %115 = load %struct.layer*, %struct.layer** @flayer, align 8
  %l_layfn98 = getelementptr inbounds %struct.layer, %struct.layer* %115, i32 0, i32 6
  %116 = load %struct.LayFuncs*, %struct.LayFuncs** %l_layfn98, align 8
  %lf_LayRedisplayLine = getelementptr inbounds %struct.LayFuncs, %struct.LayFuncs* %116, i32 0, i32 2
  %117 = load void (i32, i32, i32, i32)*, void (i32, i32, i32, i32)** %lf_LayRedisplayLine, align 8
  call void %117(i32 -1, i32 -1, i32 -1, i32 0)
  %118 = load %struct.layer*, %struct.layer** %oldflayer91, align 8
  store %struct.layer* %118, %struct.layer** @flayer, align 8
  %119 = load %struct.canvas*, %struct.canvas** %cvlist, align 8
  %120 = load %struct.layer*, %struct.layer** %l92, align 8
  %l_cvlist99 = getelementptr inbounds %struct.layer, %struct.layer* %120, i32 0, i32 0
  store %struct.canvas* %119, %struct.canvas** %l_cvlist99, align 8
  %121 = load %struct.canvas*, %struct.canvas** %cvlnext, align 8
  %122 = load %struct.canvas*, %struct.canvas** %cv, align 8
  %c_lnext100 = getelementptr inbounds %struct.canvas, %struct.canvas* %122, i32 0, i32 10
  store %struct.canvas* %121, %struct.canvas** %c_lnext100, align 8
  %123 = load %struct.display*, %struct.display** %olddisplay90, align 8
  store %struct.display* %123, %struct.display** @display, align 8
  %124 = load %struct.canvas*, %struct.canvas** %cv, align 8
  %c_xs = getelementptr inbounds %struct.canvas, %struct.canvas* %124, i32 0, i32 14
  %125 = load i32, i32* %c_xs, align 4
  %126 = load %struct.canvas*, %struct.canvas** %cv, align 8
  %c_ys = getelementptr inbounds %struct.canvas, %struct.canvas* %126, i32 0, i32 16
  %127 = load i32, i32* %c_ys, align 4
  %128 = load %struct.canvas*, %struct.canvas** %cv, align 8
  %c_xe = getelementptr inbounds %struct.canvas, %struct.canvas* %128, i32 0, i32 15
  %129 = load i32, i32* %c_xe, align 4
  %130 = load %struct.canvas*, %struct.canvas** %cv, align 8
  %c_ye = getelementptr inbounds %struct.canvas, %struct.canvas* %130, i32 0, i32 17
  %131 = load i32, i32* %c_ye, align 4
  call void @RefreshArea(i32 %125, i32 %127, i32 %129, i32 %131, i32 0)
  br label %if.end.101

if.end.101:                                       ; preds = %if.then.89, %for.body.84
  br label %for.inc.102

for.inc.102:                                      ; preds = %if.end.101
  %132 = load %struct.canvas*, %struct.canvas** %cv, align 8
  %c_next103 = getelementptr inbounds %struct.canvas, %struct.canvas* %132, i32 0, i32 0
  %133 = load %struct.canvas*, %struct.canvas** %c_next103, align 8
  store %struct.canvas* %133, %struct.canvas** %cv, align 8
  br label %for.cond.82

for.end.104:                                      ; preds = %for.cond.82
  %134 = load %struct.display*, %struct.display** @display, align 8
  %d_kaablamm105 = getelementptr inbounds %struct.display, %struct.display* %134, i32 0, i32 55
  %135 = load i32, i32* %d_kaablamm105, align 4
  %tobool106 = icmp ne i32 %135, 0
  br i1 %tobool106, label %if.then.107, label %if.end.109

if.then.107:                                      ; preds = %for.end.104
  call void @kaablamm()
  %136 = load %struct.display*, %struct.display** @display, align 8
  %d_kaablamm108 = getelementptr inbounds %struct.display, %struct.display* %136, i32 0, i32 55
  store i32 0, i32* %d_kaablamm108, align 4
  br label %if.end.109

if.end.109:                                       ; preds = %if.then.107, %for.end.104
  br label %for.inc.110

for.inc.110:                                      ; preds = %if.end.109, %if.then.79
  %137 = load %struct.display*, %struct.display** @display, align 8
  %d_next111 = getelementptr inbounds %struct.display, %struct.display* %137, i32 0, i32 0
  %138 = load %struct.display*, %struct.display** %d_next111, align 8
  store %struct.display* %138, %struct.display** @display, align 8
  br label %for.cond.75

for.end.112:                                      ; preds = %for.cond.75
  %139 = load %struct.layer*, %struct.layer** %oldflayer, align 8
  %tobool113 = icmp ne %struct.layer* %139, null
  br i1 %tobool113, label %if.then.114, label %if.end.115

if.then.114:                                      ; preds = %for.end.112
  %140 = load %struct.layer*, %struct.layer** %oldflayer, align 8
  store %struct.layer* %140, %struct.layer** @flayer, align 8
  br label %if.end.115

if.end.115:                                       ; preds = %if.then.114, %for.end.112
  %141 = load %struct.display*, %struct.display** %olddisplay, align 8
  store %struct.display* %141, %struct.display** @display, align 8
  br label %return

return:                                           ; preds = %if.end.115, %if.then
  ret void
}

; Function Attrs: nounwind uwtable
define i32 @MayResizeLayer(%struct.layer* %l) #0 {
entry:
  %retval = alloca i32, align 4
  %l.addr = alloca %struct.layer*, align 8
  %cvs = alloca i32, align 4
  store %struct.layer* %l, %struct.layer** %l.addr, align 8
  store i32 0, i32* %cvs, align 4
  br label %do.body

do.body:                                          ; preds = %entry
  br label %do.end

do.end:                                           ; preds = %do.body
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %do.end
  %0 = load %struct.layer*, %struct.layer** %l.addr, align 8
  %tobool = icmp ne %struct.layer* %0, null
  br i1 %tobool, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %1 = load %struct.layer*, %struct.layer** %l.addr, align 8
  %l_cvlist = getelementptr inbounds %struct.layer, %struct.layer* %1, i32 0, i32 0
  %2 = load %struct.canvas*, %struct.canvas** %l_cvlist, align 8
  %tobool1 = icmp ne %struct.canvas* %2, null
  br i1 %tobool1, label %if.then, label %if.end.7

if.then:                                          ; preds = %for.body
  %3 = load i32, i32* %cvs, align 4
  %inc = add nsw i32 %3, 1
  store i32 %inc, i32* %cvs, align 4
  %cmp = icmp sgt i32 %inc, 1
  br i1 %cmp, label %if.then.4, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.then
  %4 = load %struct.layer*, %struct.layer** %l.addr, align 8
  %l_cvlist2 = getelementptr inbounds %struct.layer, %struct.layer* %4, i32 0, i32 0
  %5 = load %struct.canvas*, %struct.canvas** %l_cvlist2, align 8
  %c_lnext = getelementptr inbounds %struct.canvas, %struct.canvas* %5, i32 0, i32 10
  %6 = load %struct.canvas*, %struct.canvas** %c_lnext, align 8
  %tobool3 = icmp ne %struct.canvas* %6, null
  br i1 %tobool3, label %if.then.4, label %if.end

if.then.4:                                        ; preds = %lor.lhs.false, %if.then
  br label %do.body.5

do.body.5:                                        ; preds = %if.then.4
  br label %do.end.6

do.end.6:                                         ; preds = %do.body.5
  store i32 0, i32* %retval
  br label %return

if.end:                                           ; preds = %lor.lhs.false
  br label %if.end.7

if.end.7:                                         ; preds = %if.end, %for.body
  br label %for.inc

for.inc:                                          ; preds = %if.end.7
  %7 = load %struct.layer*, %struct.layer** %l.addr, align 8
  %l_next = getelementptr inbounds %struct.layer, %struct.layer* %7, i32 0, i32 8
  %8 = load %struct.layer*, %struct.layer** %l_next, align 8
  store %struct.layer* %8, %struct.layer** %l.addr, align 8
  br label %for.cond

for.end:                                          ; preds = %for.cond
  br label %do.body.8

do.body.8:                                        ; preds = %for.end
  br label %do.end.9

do.end.9:                                         ; preds = %do.body.8
  store i32 1, i32* %retval
  br label %return

return:                                           ; preds = %do.end.9, %do.end.6
  %9 = load i32, i32* %retval
  ret i32 %9
}

declare void @RethinkViewportOffsets(%struct.canvas*) #2

declare void @Redisplay(i32) #2

; Function Attrs: nounwind uwtable
define internal void @kaablamm() #0 {
entry:
  call void (i32, i8*, ...) @Msg(i32 0, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.4, i32 0, i32 0))
  ret void
}

declare void @ExitOverlayPage() #2

declare void @RefreshArea(i32, i32, i32, i32, i32) #2

; Function Attrs: nounwind uwtable
define i8* @xrealloc(i8* %mem, i32 %len) #0 {
entry:
  %retval = alloca i8*, align 8
  %mem.addr = alloca i8*, align 8
  %len.addr = alloca i32, align 4
  %nmem = alloca i8*, align 8
  store i8* %mem, i8** %mem.addr, align 8
  store i32 %len, i32* %len.addr, align 4
  %0 = load i8*, i8** %mem.addr, align 8
  %cmp = icmp eq i8* %0, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %1 = load i32, i32* %len.addr, align 4
  %conv = sext i32 %1 to i64
  %call = call noalias i8* @malloc(i64 %conv) #3
  store i8* %call, i8** %retval
  br label %return

if.end:                                           ; preds = %entry
  %2 = load i8*, i8** %mem.addr, align 8
  %3 = load i32, i32* %len.addr, align 4
  %conv1 = sext i32 %3 to i64
  %call2 = call i8* @realloc(i8* %2, i64 %conv1) #3
  store i8* %call2, i8** %nmem, align 8
  %tobool = icmp ne i8* %call2, null
  br i1 %tobool, label %if.then.3, label %if.end.4

if.then.3:                                        ; preds = %if.end
  %4 = load i8*, i8** %nmem, align 8
  store i8* %4, i8** %retval
  br label %return

if.end.4:                                         ; preds = %if.end
  %5 = load i8*, i8** %mem.addr, align 8
  call void @free(i8* %5) #3
  store i8* null, i8** %retval
  br label %return

return:                                           ; preds = %if.end.4, %if.then.3, %if.then
  %6 = load i8*, i8** %retval
  ret i8* %6
}

; Function Attrs: nounwind
declare noalias i8* @malloc(i64) #1

; Function Attrs: nounwind
declare i8* @realloc(i8*, i64) #1

; Function Attrs: nounwind
declare void @free(i8*) #1

; Function Attrs: nounwind uwtable
define i32 @ChangeWindowSize(%struct.win* %p, i32 %wi, i32 %he, i32 %hi) #0 {
entry:
  %retval = alloca i32, align 4
  %p.addr = alloca %struct.win*, align 8
  %wi.addr = alloca i32, align 4
  %he.addr = alloca i32, align 4
  %hi.addr = alloca i32, align 4
  %mlf = alloca %struct.mline*, align 8
  %mlt = alloca %struct.mline*, align 8
  %ml = alloca %struct.mline*, align 8
  %nmlines = alloca %struct.mline*, align 8
  %nhlines = alloca %struct.mline*, align 8
  %fy = alloca i32, align 4
  %ty = alloca i32, align 4
  %l = alloca i32, align 4
  %lx = alloca i32, align 4
  %lf = alloca i32, align 4
  %lt = alloca i32, align 4
  %yy = alloca i32, align 4
  %oty = alloca i32, align 4
  %addone = alloca i32, align 4
  %ncx = alloca i32, align 4
  %ncy = alloca i32, align 4
  %naka = alloca i32, align 4
  %t = alloca i32, align 4
  %y = alloca i32, align 4
  %shift = alloca i32, align 4
  store %struct.win* %p, %struct.win** %p.addr, align 8
  store i32 %wi, i32* %wi.addr, align 4
  store i32 %he, i32* %he.addr, align 4
  store i32 %hi, i32* %hi.addr, align 4
  store %struct.mline* null, %struct.mline** %mlf, align 8
  store %struct.mline* null, %struct.mline** %mlt, align 8
  %0 = load i32, i32* %wi.addr, align 4
  %cmp = icmp sle i32 %0, 0
  br i1 %cmp, label %if.then, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %entry
  %1 = load i32, i32* %he.addr, align 4
  %cmp1 = icmp sle i32 %1, 0
  br i1 %cmp1, label %if.then, label %if.end

if.then:                                          ; preds = %lor.lhs.false, %entry
  store i32 0, i32* %hi.addr, align 4
  store i32 0, i32* %he.addr, align 4
  store i32 0, i32* %wi.addr, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %lor.lhs.false
  %2 = load %struct.win*, %struct.win** %p.addr, align 8
  %w_type = getelementptr inbounds %struct.win, %struct.win* %2, i32 0, i32 1
  %3 = load i32, i32* %w_type, align 4
  %cmp2 = icmp eq i32 %3, 3
  br i1 %cmp2, label %if.then.3, label %if.end.4

if.then.3:                                        ; preds = %if.end
  store i32 0, i32* %retval
  br label %return

if.end.4:                                         ; preds = %if.end
  %4 = load i32, i32* %wi.addr, align 4
  %cmp5 = icmp sgt i32 %4, 1000
  br i1 %cmp5, label %if.then.6, label %if.end.7

if.then.6:                                        ; preds = %if.end.4
  call void (i32, i8*, ...) @Msg(i32 0, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str, i32 0, i32 0), i32 1000)
  store i32 1000, i32* %wi.addr, align 4
  br label %if.end.7

if.end.7:                                         ; preds = %if.then.6, %if.end.4
  %5 = load i32, i32* %he.addr, align 4
  %cmp8 = icmp sgt i32 %5, 1000
  br i1 %cmp8, label %if.then.9, label %if.end.10

if.then.9:                                        ; preds = %if.end.7
  call void (i32, i8*, ...) @Msg(i32 0, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.1, i32 0, i32 0), i32 1000)
  store i32 1000, i32* %he.addr, align 4
  br label %if.end.10

if.end.10:                                        ; preds = %if.then.9, %if.end.7
  %6 = load %struct.win*, %struct.win** %p.addr, align 8
  %w_layer = getelementptr inbounds %struct.win, %struct.win* %6, i32 0, i32 3
  %l_width = getelementptr inbounds %struct.layer, %struct.layer* %w_layer, i32 0, i32 1
  %7 = load i32, i32* %l_width, align 4
  %8 = load i32, i32* %wi.addr, align 4
  %cmp11 = icmp eq i32 %7, %8
  br i1 %cmp11, label %land.lhs.true, label %if.end.17

land.lhs.true:                                    ; preds = %if.end.10
  %9 = load %struct.win*, %struct.win** %p.addr, align 8
  %w_layer12 = getelementptr inbounds %struct.win, %struct.win* %9, i32 0, i32 3
  %l_height = getelementptr inbounds %struct.layer, %struct.layer* %w_layer12, i32 0, i32 2
  %10 = load i32, i32* %l_height, align 4
  %11 = load i32, i32* %he.addr, align 4
  %cmp13 = icmp eq i32 %10, %11
  br i1 %cmp13, label %land.lhs.true.14, label %if.end.17

land.lhs.true.14:                                 ; preds = %land.lhs.true
  %12 = load %struct.win*, %struct.win** %p.addr, align 8
  %w_histheight = getelementptr inbounds %struct.win, %struct.win* %12, i32 0, i32 77
  %13 = load i32, i32* %w_histheight, align 4
  %14 = load i32, i32* %hi.addr, align 4
  %cmp15 = icmp eq i32 %13, %14
  br i1 %cmp15, label %if.then.16, label %if.end.17

if.then.16:                                       ; preds = %land.lhs.true.14
  br label %do.body

do.body:                                          ; preds = %if.then.16
  br label %do.end

do.end:                                           ; preds = %do.body
  store i32 0, i32* %retval
  br label %return

if.end.17:                                        ; preds = %land.lhs.true.14, %land.lhs.true, %if.end.10
  %15 = load i32, i32* %wi.addr, align 4
  call void @CheckMaxSize(i32 %15)
  br label %do.body.18

do.body.18:                                       ; preds = %if.end.17
  br label %do.end.19

do.end.19:                                        ; preds = %do.body.18
  br label %do.body.20

do.body.20:                                       ; preds = %do.end.19
  br label %do.end.21

do.end.21:                                        ; preds = %do.body.20
  br label %do.body.22

do.body.22:                                       ; preds = %do.end.21
  br label %do.end.23

do.end.23:                                        ; preds = %do.body.22
  %16 = load %struct.win*, %struct.win** %p.addr, align 8
  %w_histheight24 = getelementptr inbounds %struct.win, %struct.win* %16, i32 0, i32 77
  %17 = load i32, i32* %w_histheight24, align 4
  %18 = load %struct.win*, %struct.win** %p.addr, align 8
  %w_layer25 = getelementptr inbounds %struct.win, %struct.win* %18, i32 0, i32 3
  %l_height26 = getelementptr inbounds %struct.layer, %struct.layer* %w_layer25, i32 0, i32 2
  %19 = load i32, i32* %l_height26, align 4
  %add = add nsw i32 %17, %19
  %sub = sub nsw i32 %add, 1
  store i32 %sub, i32* %fy, align 4
  %20 = load i32, i32* %hi.addr, align 4
  %21 = load i32, i32* %he.addr, align 4
  %add27 = add nsw i32 %20, %21
  %sub28 = sub nsw i32 %add27, 1
  store i32 %sub28, i32* %ty, align 4
  store %struct.mline* null, %struct.mline** %nhlines, align 8
  store %struct.mline* null, %struct.mline** %nmlines, align 8
  store i32 0, i32* %ncx, align 4
  store i32 0, i32* %ncy, align 4
  store i32 0, i32* %naka, align 4
  %22 = load i32, i32* %wi.addr, align 4
  %tobool = icmp ne i32 %22, 0
  br i1 %tobool, label %if.then.29, label %if.end.49

if.then.29:                                       ; preds = %do.end.23
  %23 = load i32, i32* %wi.addr, align 4
  %24 = load %struct.win*, %struct.win** %p.addr, align 8
  %w_layer30 = getelementptr inbounds %struct.win, %struct.win* %24, i32 0, i32 3
  %l_width31 = getelementptr inbounds %struct.layer, %struct.layer* %w_layer30, i32 0, i32 1
  %25 = load i32, i32* %l_width31, align 4
  %cmp32 = icmp ne i32 %23, %25
  br i1 %cmp32, label %if.then.37, label %lor.lhs.false.33

lor.lhs.false.33:                                 ; preds = %if.then.29
  %26 = load i32, i32* %he.addr, align 4
  %27 = load %struct.win*, %struct.win** %p.addr, align 8
  %w_layer34 = getelementptr inbounds %struct.win, %struct.win* %27, i32 0, i32 3
  %l_height35 = getelementptr inbounds %struct.layer, %struct.layer* %w_layer34, i32 0, i32 2
  %28 = load i32, i32* %l_height35, align 4
  %cmp36 = icmp ne i32 %26, %28
  br i1 %cmp36, label %if.then.37, label %if.else

if.then.37:                                       ; preds = %lor.lhs.false.33, %if.then.29
  %29 = load i32, i32* %he.addr, align 4
  %conv = sext i32 %29 to i64
  %call = call noalias i8* @calloc(i64 %conv, i64 40) #3
  %30 = bitcast i8* %call to %struct.mline*
  store %struct.mline* %30, %struct.mline** %nmlines, align 8
  %cmp38 = icmp eq %struct.mline* %30, null
  br i1 %cmp38, label %if.then.40, label %if.end.41

if.then.40:                                       ; preds = %if.then.37
  %31 = load %struct.win*, %struct.win** %p.addr, align 8
  call void @KillWindow(%struct.win* %31)
  call void (i32, i8*, ...) @Msg(i32 0, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.2, i32 0, i32 0), i8* getelementptr inbounds ([0 x i8], [0 x i8]* @strnomem, i32 0, i32 0))
  store i32 -1, i32* %retval
  br label %return

if.end.41:                                        ; preds = %if.then.37
  br label %if.end.48

if.else:                                          ; preds = %lor.lhs.false.33
  br label %do.body.42

do.body.42:                                       ; preds = %if.else
  br label %do.end.43

do.end.43:                                        ; preds = %do.body.42
  %32 = load %struct.win*, %struct.win** %p.addr, align 8
  %w_mlines = getelementptr inbounds %struct.win, %struct.win* %32, i32 0, i32 36
  %33 = load %struct.mline*, %struct.mline** %w_mlines, align 8
  store %struct.mline* %33, %struct.mline** %nmlines, align 8
  %34 = load i32, i32* %he.addr, align 4
  %35 = load i32, i32* %fy, align 4
  %sub44 = sub nsw i32 %35, %34
  store i32 %sub44, i32* %fy, align 4
  %36 = load i32, i32* %he.addr, align 4
  %37 = load i32, i32* %ty, align 4
  %sub45 = sub nsw i32 %37, %36
  store i32 %sub45, i32* %ty, align 4
  %38 = load %struct.win*, %struct.win** %p.addr, align 8
  %w_layer46 = getelementptr inbounds %struct.win, %struct.win* %38, i32 0, i32 3
  %l_x = getelementptr inbounds %struct.layer, %struct.layer* %w_layer46, i32 0, i32 3
  %39 = load i32, i32* %l_x, align 4
  store i32 %39, i32* %ncx, align 4
  %40 = load %struct.win*, %struct.win** %p.addr, align 8
  %w_layer47 = getelementptr inbounds %struct.win, %struct.win* %40, i32 0, i32 3
  %l_y = getelementptr inbounds %struct.layer, %struct.layer* %w_layer47, i32 0, i32 4
  %41 = load i32, i32* %l_y, align 4
  store i32 %41, i32* %ncy, align 4
  %42 = load %struct.win*, %struct.win** %p.addr, align 8
  %w_autoaka = getelementptr inbounds %struct.win, %struct.win* %42, i32 0, i32 24
  %43 = load i32, i32* %w_autoaka, align 4
  store i32 %43, i32* %naka, align 4
  br label %if.end.48

if.end.48:                                        ; preds = %do.end.43, %if.end.41
  br label %if.end.49

if.end.49:                                        ; preds = %if.end.48, %do.end.23
  %44 = load i32, i32* %hi.addr, align 4
  %tobool50 = icmp ne i32 %44, 0
  br i1 %tobool50, label %if.then.51, label %if.end.59

if.then.51:                                       ; preds = %if.end.49
  %45 = load i32, i32* %hi.addr, align 4
  %conv52 = sext i32 %45 to i64
  %call53 = call noalias i8* @calloc(i64 %conv52, i64 40) #3
  %46 = bitcast i8* %call53 to %struct.mline*
  store %struct.mline* %46, %struct.mline** %nhlines, align 8
  %cmp54 = icmp eq %struct.mline* %46, null
  br i1 %cmp54, label %if.then.56, label %if.end.58

if.then.56:                                       ; preds = %if.then.51
  call void (i32, i8*, ...) @Msg(i32 0, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.3, i32 0, i32 0))
  store i32 0, i32* %hi.addr, align 4
  %47 = load i32, i32* %he.addr, align 4
  %sub57 = sub nsw i32 %47, 1
  store i32 %sub57, i32* %ty, align 4
  br label %if.end.58

if.end.58:                                        ; preds = %if.then.56, %if.then.51
  br label %if.end.59

if.end.59:                                        ; preds = %if.end.58, %if.end.49
  store i32 0, i32* %addone, align 4
  %48 = load %struct.win*, %struct.win** %p.addr, align 8
  %w_layer60 = getelementptr inbounds %struct.win, %struct.win* %48, i32 0, i32 3
  %l_width61 = getelementptr inbounds %struct.layer, %struct.layer* %w_layer60, i32 0, i32 1
  %49 = load i32, i32* %l_width61, align 4
  %tobool62 = icmp ne i32 %49, 0
  br i1 %tobool62, label %land.lhs.true.63, label %if.end.75

land.lhs.true.63:                                 ; preds = %if.end.59
  %50 = load %struct.win*, %struct.win** %p.addr, align 8
  %w_layer64 = getelementptr inbounds %struct.win, %struct.win* %50, i32 0, i32 3
  %l_x65 = getelementptr inbounds %struct.layer, %struct.layer* %w_layer64, i32 0, i32 3
  %51 = load i32, i32* %l_x65, align 4
  %52 = load %struct.win*, %struct.win** %p.addr, align 8
  %w_layer66 = getelementptr inbounds %struct.win, %struct.win* %52, i32 0, i32 3
  %l_width67 = getelementptr inbounds %struct.layer, %struct.layer* %w_layer66, i32 0, i32 1
  %53 = load i32, i32* %l_width67, align 4
  %cmp68 = icmp eq i32 %51, %53
  br i1 %cmp68, label %if.then.70, label %if.end.75

if.then.70:                                       ; preds = %land.lhs.true.63
  br label %do.body.71

do.body.71:                                       ; preds = %if.then.70
  br label %do.end.72

do.end.72:                                        ; preds = %do.body.71
  store i32 1, i32* %addone, align 4
  %54 = load %struct.win*, %struct.win** %p.addr, align 8
  %w_layer73 = getelementptr inbounds %struct.win, %struct.win* %54, i32 0, i32 3
  %l_x74 = getelementptr inbounds %struct.layer, %struct.layer* %w_layer73, i32 0, i32 3
  %55 = load i32, i32* %l_x74, align 4
  %dec = add nsw i32 %55, -1
  store i32 %dec, i32* %l_x74, align 4
  br label %if.end.75

if.end.75:                                        ; preds = %do.end.72, %land.lhs.true.63, %if.end.59
  %56 = load %struct.win*, %struct.win** %p.addr, align 8
  %w_layer76 = getelementptr inbounds %struct.win, %struct.win* %56, i32 0, i32 3
  %l_width77 = getelementptr inbounds %struct.layer, %struct.layer* %w_layer76, i32 0, i32 1
  %57 = load i32, i32* %l_width77, align 4
  %58 = load i32, i32* %wi.addr, align 4
  %cmp78 = icmp eq i32 %57, %58
  br i1 %cmp78, label %if.then.80, label %if.end.174

if.then.80:                                       ; preds = %if.end.75
  %59 = load %struct.win*, %struct.win** %p.addr, align 8
  %w_layer81 = getelementptr inbounds %struct.win, %struct.win* %59, i32 0, i32 3
  %l_x82 = getelementptr inbounds %struct.layer, %struct.layer* %w_layer81, i32 0, i32 3
  %60 = load i32, i32* %l_x82, align 4
  %61 = load i32, i32* %addone, align 4
  %add83 = add nsw i32 %60, %61
  store i32 %add83, i32* %ncx, align 4
  %62 = load %struct.win*, %struct.win** %p.addr, align 8
  %w_layer84 = getelementptr inbounds %struct.win, %struct.win* %62, i32 0, i32 3
  %l_y85 = getelementptr inbounds %struct.layer, %struct.layer* %w_layer84, i32 0, i32 4
  %63 = load i32, i32* %l_y85, align 4
  %64 = load i32, i32* %he.addr, align 4
  %add86 = add nsw i32 %63, %64
  %65 = load %struct.win*, %struct.win** %p.addr, align 8
  %w_layer87 = getelementptr inbounds %struct.win, %struct.win* %65, i32 0, i32 3
  %l_height88 = getelementptr inbounds %struct.layer, %struct.layer* %w_layer87, i32 0, i32 2
  %66 = load i32, i32* %l_height88, align 4
  %sub89 = sub nsw i32 %add86, %66
  store i32 %sub89, i32* %ncy, align 4
  %67 = load i32, i32* %ncy, align 4
  %sub90 = sub nsw i32 0, %67
  store i32 %sub90, i32* %shift, align 4
  %68 = load %struct.win*, %struct.win** %p.addr, align 8
  %w_layer91 = getelementptr inbounds %struct.win, %struct.win* %68, i32 0, i32 3
  %l_y92 = getelementptr inbounds %struct.layer, %struct.layer* %w_layer91, i32 0, i32 4
  %69 = load i32, i32* %l_y92, align 4
  %70 = load %struct.win*, %struct.win** %p.addr, align 8
  %w_histheight93 = getelementptr inbounds %struct.win, %struct.win* %70, i32 0, i32 77
  %71 = load i32, i32* %w_histheight93, align 4
  %add94 = add nsw i32 %69, %71
  %sub95 = sub nsw i32 %add94, 1
  store i32 %sub95, i32* %yy, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.then.80
  %72 = load i32, i32* %yy, align 4
  %cmp96 = icmp sge i32 %72, 0
  br i1 %cmp96, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %for.cond
  %73 = load i32, i32* %ncy, align 4
  %74 = load i32, i32* %shift, align 4
  %add98 = add nsw i32 %73, %74
  %75 = load i32, i32* %he.addr, align 4
  %cmp99 = icmp slt i32 %add98, %75
  br label %land.end

land.end:                                         ; preds = %land.rhs, %for.cond
  %76 = phi i1 [ false, %for.cond ], [ %cmp99, %land.rhs ]
  br i1 %76, label %for.body, label %for.end

for.body:                                         ; preds = %land.end
  %77 = load i32, i32* %yy, align 4
  %78 = load %struct.win*, %struct.win** %p.addr, align 8
  %w_histheight101 = getelementptr inbounds %struct.win, %struct.win* %78, i32 0, i32 77
  %79 = load i32, i32* %w_histheight101, align 4
  %cmp102 = icmp slt i32 %77, %79
  br i1 %cmp102, label %cond.true, label %cond.false

cond.true:                                        ; preds = %for.body
  %80 = load %struct.win*, %struct.win** %p.addr, align 8
  %w_histidx = getelementptr inbounds %struct.win, %struct.win* %80, i32 0, i32 78
  %81 = load i32, i32* %w_histidx, align 4
  %82 = load i32, i32* %yy, align 4
  %add104 = add nsw i32 %81, %82
  %83 = load %struct.win*, %struct.win** %p.addr, align 8
  %w_histheight105 = getelementptr inbounds %struct.win, %struct.win* %83, i32 0, i32 77
  %84 = load i32, i32* %w_histheight105, align 4
  %rem = srem i32 %add104, %84
  %idxprom = sext i32 %rem to i64
  %85 = load %struct.win*, %struct.win** %p.addr, align 8
  %w_hlines = getelementptr inbounds %struct.win, %struct.win* %85, i32 0, i32 79
  %86 = load %struct.mline*, %struct.mline** %w_hlines, align 8
  %arrayidx = getelementptr inbounds %struct.mline, %struct.mline* %86, i64 %idxprom
  br label %cond.end

cond.false:                                       ; preds = %for.body
  %87 = load i32, i32* %yy, align 4
  %88 = load %struct.win*, %struct.win** %p.addr, align 8
  %w_histheight106 = getelementptr inbounds %struct.win, %struct.win* %88, i32 0, i32 77
  %89 = load i32, i32* %w_histheight106, align 4
  %sub107 = sub nsw i32 %87, %89
  %idxprom108 = sext i32 %sub107 to i64
  %90 = load %struct.win*, %struct.win** %p.addr, align 8
  %w_mlines109 = getelementptr inbounds %struct.win, %struct.win* %90, i32 0, i32 36
  %91 = load %struct.mline*, %struct.mline** %w_mlines109, align 8
  %arrayidx110 = getelementptr inbounds %struct.mline, %struct.mline* %91, i64 %idxprom108
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi %struct.mline* [ %arrayidx, %cond.true ], [ %arrayidx110, %cond.false ]
  store %struct.mline* %cond, %struct.mline** %ml, align 8
  %92 = load %struct.mline*, %struct.mline** %ml, align 8
  %image = getelementptr inbounds %struct.mline, %struct.mline* %92, i32 0, i32 0
  %93 = load i8*, i8** %image, align 8
  %tobool111 = icmp ne i8* %93, null
  br i1 %tobool111, label %if.end.113, label %if.then.112

if.then.112:                                      ; preds = %cond.end
  br label %for.end

if.end.113:                                       ; preds = %cond.end
  %94 = load %struct.win*, %struct.win** %p.addr, align 8
  %w_layer114 = getelementptr inbounds %struct.win, %struct.win* %94, i32 0, i32 3
  %l_width115 = getelementptr inbounds %struct.layer, %struct.layer* %w_layer114, i32 0, i32 1
  %95 = load i32, i32* %l_width115, align 4
  %idxprom116 = sext i32 %95 to i64
  %96 = load %struct.mline*, %struct.mline** %ml, align 8
  %image117 = getelementptr inbounds %struct.mline, %struct.mline* %96, i32 0, i32 0
  %97 = load i8*, i8** %image117, align 8
  %arrayidx118 = getelementptr inbounds i8, i8* %97, i64 %idxprom116
  %98 = load i8, i8* %arrayidx118, align 1
  %conv119 = zext i8 %98 to i32
  %cmp120 = icmp eq i32 %conv119, 32
  br i1 %cmp120, label %if.then.122, label %if.end.123

if.then.122:                                      ; preds = %if.end.113
  br label %for.end

if.end.123:                                       ; preds = %if.end.113
  %99 = load i32, i32* %shift, align 4
  %inc = add nsw i32 %99, 1
  store i32 %inc, i32* %shift, align 4
  br label %for.inc

for.inc:                                          ; preds = %if.end.123
  %100 = load i32, i32* %yy, align 4
  %dec124 = add nsw i32 %100, -1
  store i32 %dec124, i32* %yy, align 4
  br label %for.cond

for.end:                                          ; preds = %if.then.122, %if.then.112, %land.end
  %101 = load i32, i32* %shift, align 4
  %cmp125 = icmp slt i32 %101, 0
  br i1 %cmp125, label %if.then.127, label %if.else.128

if.then.127:                                      ; preds = %for.end
  store i32 0, i32* %shift, align 4
  br label %if.end.131

if.else.128:                                      ; preds = %for.end
  br label %do.body.129

do.body.129:                                      ; preds = %if.else.128
  br label %do.end.130

do.end.130:                                       ; preds = %do.body.129
  br label %if.end.131

if.end.131:                                       ; preds = %do.end.130, %if.then.127
  %102 = load i32, i32* %shift, align 4
  %103 = load i32, i32* %ncy, align 4
  %add132 = add nsw i32 %103, %102
  store i32 %add132, i32* %ncy, align 4
  %104 = load %struct.win*, %struct.win** %p.addr, align 8
  %w_autoaka133 = getelementptr inbounds %struct.win, %struct.win* %104, i32 0, i32 24
  %105 = load i32, i32* %w_autoaka133, align 4
  %cmp134 = icmp sgt i32 %105, 0
  br i1 %cmp134, label %if.then.136, label %if.end.150

if.then.136:                                      ; preds = %if.end.131
  %106 = load %struct.win*, %struct.win** %p.addr, align 8
  %w_autoaka137 = getelementptr inbounds %struct.win, %struct.win* %106, i32 0, i32 24
  %107 = load i32, i32* %w_autoaka137, align 4
  %108 = load i32, i32* %he.addr, align 4
  %add138 = add nsw i32 %107, %108
  %109 = load %struct.win*, %struct.win** %p.addr, align 8
  %w_layer139 = getelementptr inbounds %struct.win, %struct.win* %109, i32 0, i32 3
  %l_height140 = getelementptr inbounds %struct.layer, %struct.layer* %w_layer139, i32 0, i32 2
  %110 = load i32, i32* %l_height140, align 4
  %sub141 = sub nsw i32 %add138, %110
  %111 = load i32, i32* %shift, align 4
  %add142 = add nsw i32 %sub141, %111
  store i32 %add142, i32* %naka, align 4
  %112 = load i32, i32* %naka, align 4
  %cmp143 = icmp slt i32 %112, 1
  br i1 %cmp143, label %if.then.148, label %lor.lhs.false.145

lor.lhs.false.145:                                ; preds = %if.then.136
  %113 = load i32, i32* %naka, align 4
  %114 = load i32, i32* %he.addr, align 4
  %cmp146 = icmp sgt i32 %113, %114
  br i1 %cmp146, label %if.then.148, label %if.end.149

if.then.148:                                      ; preds = %lor.lhs.false.145, %if.then.136
  store i32 0, i32* %naka, align 4
  br label %if.end.149

if.end.149:                                       ; preds = %if.then.148, %lor.lhs.false.145
  br label %if.end.150

if.end.150:                                       ; preds = %if.end.149, %if.end.131
  br label %while.cond

while.cond:                                       ; preds = %cond.end.171, %if.end.150
  %115 = load i32, i32* %shift, align 4
  %dec151 = add nsw i32 %115, -1
  store i32 %dec151, i32* %shift, align 4
  %cmp152 = icmp sgt i32 %115, 0
  br i1 %cmp152, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %116 = load i32, i32* %fy, align 4
  %117 = load %struct.win*, %struct.win** %p.addr, align 8
  %w_histheight154 = getelementptr inbounds %struct.win, %struct.win* %117, i32 0, i32 77
  %118 = load i32, i32* %w_histheight154, align 4
  %cmp155 = icmp slt i32 %116, %118
  br i1 %cmp155, label %cond.true.157, label %cond.false.165

cond.true.157:                                    ; preds = %while.body
  %119 = load %struct.win*, %struct.win** %p.addr, align 8
  %w_histidx158 = getelementptr inbounds %struct.win, %struct.win* %119, i32 0, i32 78
  %120 = load i32, i32* %w_histidx158, align 4
  %121 = load i32, i32* %fy, align 4
  %add159 = add nsw i32 %120, %121
  %122 = load %struct.win*, %struct.win** %p.addr, align 8
  %w_histheight160 = getelementptr inbounds %struct.win, %struct.win* %122, i32 0, i32 77
  %123 = load i32, i32* %w_histheight160, align 4
  %rem161 = srem i32 %add159, %123
  %idxprom162 = sext i32 %rem161 to i64
  %124 = load %struct.win*, %struct.win** %p.addr, align 8
  %w_hlines163 = getelementptr inbounds %struct.win, %struct.win* %124, i32 0, i32 79
  %125 = load %struct.mline*, %struct.mline** %w_hlines163, align 8
  %arrayidx164 = getelementptr inbounds %struct.mline, %struct.mline* %125, i64 %idxprom162
  br label %cond.end.171

cond.false.165:                                   ; preds = %while.body
  %126 = load i32, i32* %fy, align 4
  %127 = load %struct.win*, %struct.win** %p.addr, align 8
  %w_histheight166 = getelementptr inbounds %struct.win, %struct.win* %127, i32 0, i32 77
  %128 = load i32, i32* %w_histheight166, align 4
  %sub167 = sub nsw i32 %126, %128
  %idxprom168 = sext i32 %sub167 to i64
  %129 = load %struct.win*, %struct.win** %p.addr, align 8
  %w_mlines169 = getelementptr inbounds %struct.win, %struct.win* %129, i32 0, i32 36
  %130 = load %struct.mline*, %struct.mline** %w_mlines169, align 8
  %arrayidx170 = getelementptr inbounds %struct.mline, %struct.mline* %130, i64 %idxprom168
  br label %cond.end.171

cond.end.171:                                     ; preds = %cond.false.165, %cond.true.157
  %cond172 = phi %struct.mline* [ %arrayidx164, %cond.true.157 ], [ %arrayidx170, %cond.false.165 ]
  store %struct.mline* %cond172, %struct.mline** %ml, align 8
  %131 = load %struct.mline*, %struct.mline** %ml, align 8
  call void @FreeMline(%struct.mline* %131)
  %132 = load i32, i32* %fy, align 4
  %dec173 = add nsw i32 %132, -1
  store i32 %dec173, i32* %fy, align 4
  br label %while.cond

while.end:                                        ; preds = %while.cond
  br label %if.end.174

if.end.174:                                       ; preds = %while.end, %if.end.75
  br label %do.body.175

do.body.175:                                      ; preds = %if.end.174
  br label %do.end.176

do.end.176:                                       ; preds = %do.body.175
  %133 = load i32, i32* %fy, align 4
  %cmp177 = icmp sge i32 %133, 0
  br i1 %cmp177, label %if.then.179, label %if.end.199

if.then.179:                                      ; preds = %do.end.176
  %134 = load i32, i32* %fy, align 4
  %135 = load %struct.win*, %struct.win** %p.addr, align 8
  %w_histheight180 = getelementptr inbounds %struct.win, %struct.win* %135, i32 0, i32 77
  %136 = load i32, i32* %w_histheight180, align 4
  %cmp181 = icmp slt i32 %134, %136
  br i1 %cmp181, label %cond.true.183, label %cond.false.191

cond.true.183:                                    ; preds = %if.then.179
  %137 = load %struct.win*, %struct.win** %p.addr, align 8
  %w_histidx184 = getelementptr inbounds %struct.win, %struct.win* %137, i32 0, i32 78
  %138 = load i32, i32* %w_histidx184, align 4
  %139 = load i32, i32* %fy, align 4
  %add185 = add nsw i32 %138, %139
  %140 = load %struct.win*, %struct.win** %p.addr, align 8
  %w_histheight186 = getelementptr inbounds %struct.win, %struct.win* %140, i32 0, i32 77
  %141 = load i32, i32* %w_histheight186, align 4
  %rem187 = srem i32 %add185, %141
  %idxprom188 = sext i32 %rem187 to i64
  %142 = load %struct.win*, %struct.win** %p.addr, align 8
  %w_hlines189 = getelementptr inbounds %struct.win, %struct.win* %142, i32 0, i32 79
  %143 = load %struct.mline*, %struct.mline** %w_hlines189, align 8
  %arrayidx190 = getelementptr inbounds %struct.mline, %struct.mline* %143, i64 %idxprom188
  br label %cond.end.197

cond.false.191:                                   ; preds = %if.then.179
  %144 = load i32, i32* %fy, align 4
  %145 = load %struct.win*, %struct.win** %p.addr, align 8
  %w_histheight192 = getelementptr inbounds %struct.win, %struct.win* %145, i32 0, i32 77
  %146 = load i32, i32* %w_histheight192, align 4
  %sub193 = sub nsw i32 %144, %146
  %idxprom194 = sext i32 %sub193 to i64
  %147 = load %struct.win*, %struct.win** %p.addr, align 8
  %w_mlines195 = getelementptr inbounds %struct.win, %struct.win* %147, i32 0, i32 36
  %148 = load %struct.mline*, %struct.mline** %w_mlines195, align 8
  %arrayidx196 = getelementptr inbounds %struct.mline, %struct.mline* %148, i64 %idxprom194
  br label %cond.end.197

cond.end.197:                                     ; preds = %cond.false.191, %cond.true.183
  %cond198 = phi %struct.mline* [ %arrayidx190, %cond.true.183 ], [ %arrayidx196, %cond.false.191 ]
  store %struct.mline* %cond198, %struct.mline** %mlf, align 8
  br label %if.end.199

if.end.199:                                       ; preds = %cond.end.197, %do.end.176
  %149 = load i32, i32* %ty, align 4
  %cmp200 = icmp sge i32 %149, 0
  br i1 %cmp200, label %if.then.202, label %if.end.214

if.then.202:                                      ; preds = %if.end.199
  %150 = load i32, i32* %ty, align 4
  %151 = load i32, i32* %hi.addr, align 4
  %cmp203 = icmp slt i32 %150, %151
  br i1 %cmp203, label %cond.true.205, label %cond.false.208

cond.true.205:                                    ; preds = %if.then.202
  %152 = load i32, i32* %ty, align 4
  %idxprom206 = sext i32 %152 to i64
  %153 = load %struct.mline*, %struct.mline** %nhlines, align 8
  %arrayidx207 = getelementptr inbounds %struct.mline, %struct.mline* %153, i64 %idxprom206
  br label %cond.end.212

cond.false.208:                                   ; preds = %if.then.202
  %154 = load i32, i32* %ty, align 4
  %155 = load i32, i32* %hi.addr, align 4
  %sub209 = sub nsw i32 %154, %155
  %idxprom210 = sext i32 %sub209 to i64
  %156 = load %struct.mline*, %struct.mline** %nmlines, align 8
  %arrayidx211 = getelementptr inbounds %struct.mline, %struct.mline* %156, i64 %idxprom210
  br label %cond.end.212

cond.end.212:                                     ; preds = %cond.false.208, %cond.true.205
  %cond213 = phi %struct.mline* [ %arrayidx207, %cond.true.205 ], [ %arrayidx211, %cond.false.208 ]
  store %struct.mline* %cond213, %struct.mline** %mlt, align 8
  br label %if.end.214

if.end.214:                                       ; preds = %cond.end.212, %if.end.199
  br label %while.cond.215

while.cond.215:                                   ; preds = %do.end.589, %if.end.267, %if.end.214
  %157 = load i32, i32* %fy, align 4
  %cmp216 = icmp sge i32 %157, 0
  br i1 %cmp216, label %land.rhs.218, label %land.end.221

land.rhs.218:                                     ; preds = %while.cond.215
  %158 = load i32, i32* %ty, align 4
  %cmp219 = icmp sge i32 %158, 0
  br label %land.end.221

land.end.221:                                     ; preds = %land.rhs.218, %while.cond.215
  %159 = phi i1 [ false, %while.cond.215 ], [ %cmp219, %land.rhs.218 ]
  br i1 %159, label %while.body.222, label %while.end.590

while.body.222:                                   ; preds = %land.end.221
  %160 = load %struct.win*, %struct.win** %p.addr, align 8
  %w_layer223 = getelementptr inbounds %struct.win, %struct.win* %160, i32 0, i32 3
  %l_width224 = getelementptr inbounds %struct.layer, %struct.layer* %w_layer223, i32 0, i32 1
  %161 = load i32, i32* %l_width224, align 4
  %162 = load i32, i32* %wi.addr, align 4
  %cmp225 = icmp eq i32 %161, %162
  br i1 %cmp225, label %if.then.227, label %if.end.268

if.then.227:                                      ; preds = %while.body.222
  %163 = load %struct.mline*, %struct.mline** %mlt, align 8
  %164 = load %struct.mline*, %struct.mline** %mlf, align 8
  %165 = bitcast %struct.mline* %163 to i8*
  %166 = bitcast %struct.mline* %164 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %165, i8* %166, i64 40, i32 8, i1 false)
  %167 = load %struct.mline*, %struct.mline** %mlf, align 8
  %168 = bitcast %struct.mline* %167 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %168, i8* bitcast (%struct.mline* @mline_zero to i8*), i64 40, i32 8, i1 false)
  %169 = load i32, i32* %fy, align 4
  %dec228 = add nsw i32 %169, -1
  store i32 %dec228, i32* %fy, align 4
  %cmp229 = icmp sge i32 %dec228, 0
  br i1 %cmp229, label %if.then.231, label %if.end.251

if.then.231:                                      ; preds = %if.then.227
  %170 = load i32, i32* %fy, align 4
  %171 = load %struct.win*, %struct.win** %p.addr, align 8
  %w_histheight232 = getelementptr inbounds %struct.win, %struct.win* %171, i32 0, i32 77
  %172 = load i32, i32* %w_histheight232, align 4
  %cmp233 = icmp slt i32 %170, %172
  br i1 %cmp233, label %cond.true.235, label %cond.false.243

cond.true.235:                                    ; preds = %if.then.231
  %173 = load %struct.win*, %struct.win** %p.addr, align 8
  %w_histidx236 = getelementptr inbounds %struct.win, %struct.win* %173, i32 0, i32 78
  %174 = load i32, i32* %w_histidx236, align 4
  %175 = load i32, i32* %fy, align 4
  %add237 = add nsw i32 %174, %175
  %176 = load %struct.win*, %struct.win** %p.addr, align 8
  %w_histheight238 = getelementptr inbounds %struct.win, %struct.win* %176, i32 0, i32 77
  %177 = load i32, i32* %w_histheight238, align 4
  %rem239 = srem i32 %add237, %177
  %idxprom240 = sext i32 %rem239 to i64
  %178 = load %struct.win*, %struct.win** %p.addr, align 8
  %w_hlines241 = getelementptr inbounds %struct.win, %struct.win* %178, i32 0, i32 79
  %179 = load %struct.mline*, %struct.mline** %w_hlines241, align 8
  %arrayidx242 = getelementptr inbounds %struct.mline, %struct.mline* %179, i64 %idxprom240
  br label %cond.end.249

cond.false.243:                                   ; preds = %if.then.231
  %180 = load i32, i32* %fy, align 4
  %181 = load %struct.win*, %struct.win** %p.addr, align 8
  %w_histheight244 = getelementptr inbounds %struct.win, %struct.win* %181, i32 0, i32 77
  %182 = load i32, i32* %w_histheight244, align 4
  %sub245 = sub nsw i32 %180, %182
  %idxprom246 = sext i32 %sub245 to i64
  %183 = load %struct.win*, %struct.win** %p.addr, align 8
  %w_mlines247 = getelementptr inbounds %struct.win, %struct.win* %183, i32 0, i32 36
  %184 = load %struct.mline*, %struct.mline** %w_mlines247, align 8
  %arrayidx248 = getelementptr inbounds %struct.mline, %struct.mline* %184, i64 %idxprom246
  br label %cond.end.249

cond.end.249:                                     ; preds = %cond.false.243, %cond.true.235
  %cond250 = phi %struct.mline* [ %arrayidx242, %cond.true.235 ], [ %arrayidx248, %cond.false.243 ]
  store %struct.mline* %cond250, %struct.mline** %mlf, align 8
  br label %if.end.251

if.end.251:                                       ; preds = %cond.end.249, %if.then.227
  %185 = load i32, i32* %ty, align 4
  %dec252 = add nsw i32 %185, -1
  store i32 %dec252, i32* %ty, align 4
  %cmp253 = icmp sge i32 %dec252, 0
  br i1 %cmp253, label %if.then.255, label %if.end.267

if.then.255:                                      ; preds = %if.end.251
  %186 = load i32, i32* %ty, align 4
  %187 = load i32, i32* %hi.addr, align 4
  %cmp256 = icmp slt i32 %186, %187
  br i1 %cmp256, label %cond.true.258, label %cond.false.261

cond.true.258:                                    ; preds = %if.then.255
  %188 = load i32, i32* %ty, align 4
  %idxprom259 = sext i32 %188 to i64
  %189 = load %struct.mline*, %struct.mline** %nhlines, align 8
  %arrayidx260 = getelementptr inbounds %struct.mline, %struct.mline* %189, i64 %idxprom259
  br label %cond.end.265

cond.false.261:                                   ; preds = %if.then.255
  %190 = load i32, i32* %ty, align 4
  %191 = load i32, i32* %hi.addr, align 4
  %sub262 = sub nsw i32 %190, %191
  %idxprom263 = sext i32 %sub262 to i64
  %192 = load %struct.mline*, %struct.mline** %nmlines, align 8
  %arrayidx264 = getelementptr inbounds %struct.mline, %struct.mline* %192, i64 %idxprom263
  br label %cond.end.265

cond.end.265:                                     ; preds = %cond.false.261, %cond.true.258
  %cond266 = phi %struct.mline* [ %arrayidx260, %cond.true.258 ], [ %arrayidx264, %cond.false.261 ]
  store %struct.mline* %cond266, %struct.mline** %mlt, align 8
  br label %if.end.267

if.end.267:                                       ; preds = %cond.end.265, %if.end.251
  br label %while.cond.215

if.end.268:                                       ; preds = %while.body.222
  %193 = load %struct.win*, %struct.win** %p.addr, align 8
  %w_layer269 = getelementptr inbounds %struct.win, %struct.win* %193, i32 0, i32 3
  %l_width270 = getelementptr inbounds %struct.layer, %struct.layer* %w_layer269, i32 0, i32 1
  %194 = load i32, i32* %l_width270, align 4
  %sub271 = sub nsw i32 %194, 1
  store i32 %sub271, i32* %l, align 4
  br label %for.cond.272

for.cond.272:                                     ; preds = %for.inc.289, %if.end.268
  %195 = load i32, i32* %l, align 4
  %cmp273 = icmp sgt i32 %195, 0
  br i1 %cmp273, label %for.body.275, label %for.end.291

for.body.275:                                     ; preds = %for.cond.272
  %196 = load i32, i32* %l, align 4
  %idxprom276 = sext i32 %196 to i64
  %197 = load %struct.mline*, %struct.mline** %mlf, align 8
  %image277 = getelementptr inbounds %struct.mline, %struct.mline* %197, i32 0, i32 0
  %198 = load i8*, i8** %image277, align 8
  %arrayidx278 = getelementptr inbounds i8, i8* %198, i64 %idxprom276
  %199 = load i8, i8* %arrayidx278, align 1
  %conv279 = zext i8 %199 to i32
  %cmp280 = icmp ne i32 %conv279, 32
  br i1 %cmp280, label %if.then.287, label %lor.lhs.false.282

lor.lhs.false.282:                                ; preds = %for.body.275
  %200 = load i32, i32* %l, align 4
  %idxprom283 = sext i32 %200 to i64
  %201 = load %struct.mline*, %struct.mline** %mlf, align 8
  %attr = getelementptr inbounds %struct.mline, %struct.mline* %201, i32 0, i32 1
  %202 = load i8*, i8** %attr, align 8
  %arrayidx284 = getelementptr inbounds i8, i8* %202, i64 %idxprom283
  %203 = load i8, i8* %arrayidx284, align 1
  %conv285 = zext i8 %203 to i32
  %tobool286 = icmp ne i32 %conv285, 0
  br i1 %tobool286, label %if.then.287, label %if.end.288

if.then.287:                                      ; preds = %lor.lhs.false.282, %for.body.275
  br label %for.end.291

if.end.288:                                       ; preds = %lor.lhs.false.282
  br label %for.inc.289

for.inc.289:                                      ; preds = %if.end.288
  %204 = load i32, i32* %l, align 4
  %dec290 = add nsw i32 %204, -1
  store i32 %dec290, i32* %l, align 4
  br label %for.cond.272

for.end.291:                                      ; preds = %if.then.287, %for.cond.272
  %205 = load i32, i32* %fy, align 4
  %206 = load %struct.win*, %struct.win** %p.addr, align 8
  %w_layer292 = getelementptr inbounds %struct.win, %struct.win* %206, i32 0, i32 3
  %l_y293 = getelementptr inbounds %struct.layer, %struct.layer* %w_layer292, i32 0, i32 4
  %207 = load i32, i32* %l_y293, align 4
  %208 = load %struct.win*, %struct.win** %p.addr, align 8
  %w_histheight294 = getelementptr inbounds %struct.win, %struct.win* %208, i32 0, i32 77
  %209 = load i32, i32* %w_histheight294, align 4
  %add295 = add nsw i32 %207, %209
  %cmp296 = icmp eq i32 %205, %add295
  br i1 %cmp296, label %land.lhs.true.298, label %if.end.306

land.lhs.true.298:                                ; preds = %for.end.291
  %210 = load i32, i32* %l, align 4
  %211 = load %struct.win*, %struct.win** %p.addr, align 8
  %w_layer299 = getelementptr inbounds %struct.win, %struct.win* %211, i32 0, i32 3
  %l_x300 = getelementptr inbounds %struct.layer, %struct.layer* %w_layer299, i32 0, i32 3
  %212 = load i32, i32* %l_x300, align 4
  %cmp301 = icmp slt i32 %210, %212
  br i1 %cmp301, label %if.then.303, label %if.end.306

if.then.303:                                      ; preds = %land.lhs.true.298
  %213 = load %struct.win*, %struct.win** %p.addr, align 8
  %w_layer304 = getelementptr inbounds %struct.win, %struct.win* %213, i32 0, i32 3
  %l_x305 = getelementptr inbounds %struct.layer, %struct.layer* %w_layer304, i32 0, i32 3
  %214 = load i32, i32* %l_x305, align 4
  store i32 %214, i32* %l, align 4
  br label %if.end.306

if.end.306:                                       ; preds = %if.then.303, %land.lhs.true.298, %for.end.291
  %215 = load i32, i32* %l, align 4
  %inc307 = add nsw i32 %215, 1
  store i32 %inc307, i32* %l, align 4
  %216 = load i32, i32* %l, align 4
  store i32 %216, i32* %lf, align 4
  %217 = load i32, i32* %fy, align 4
  %sub308 = sub nsw i32 %217, 1
  store i32 %sub308, i32* %yy, align 4
  br label %for.cond.309

for.cond.309:                                     ; preds = %for.inc.345, %if.end.306
  %218 = load i32, i32* %yy, align 4
  %cmp310 = icmp sge i32 %218, 0
  br i1 %cmp310, label %for.body.312, label %for.end.347

for.body.312:                                     ; preds = %for.cond.309
  %219 = load i32, i32* %yy, align 4
  %220 = load %struct.win*, %struct.win** %p.addr, align 8
  %w_histheight313 = getelementptr inbounds %struct.win, %struct.win* %220, i32 0, i32 77
  %221 = load i32, i32* %w_histheight313, align 4
  %cmp314 = icmp slt i32 %219, %221
  br i1 %cmp314, label %cond.true.316, label %cond.false.324

cond.true.316:                                    ; preds = %for.body.312
  %222 = load %struct.win*, %struct.win** %p.addr, align 8
  %w_histidx317 = getelementptr inbounds %struct.win, %struct.win* %222, i32 0, i32 78
  %223 = load i32, i32* %w_histidx317, align 4
  %224 = load i32, i32* %yy, align 4
  %add318 = add nsw i32 %223, %224
  %225 = load %struct.win*, %struct.win** %p.addr, align 8
  %w_histheight319 = getelementptr inbounds %struct.win, %struct.win* %225, i32 0, i32 77
  %226 = load i32, i32* %w_histheight319, align 4
  %rem320 = srem i32 %add318, %226
  %idxprom321 = sext i32 %rem320 to i64
  %227 = load %struct.win*, %struct.win** %p.addr, align 8
  %w_hlines322 = getelementptr inbounds %struct.win, %struct.win* %227, i32 0, i32 79
  %228 = load %struct.mline*, %struct.mline** %w_hlines322, align 8
  %arrayidx323 = getelementptr inbounds %struct.mline, %struct.mline* %228, i64 %idxprom321
  br label %cond.end.330

cond.false.324:                                   ; preds = %for.body.312
  %229 = load i32, i32* %yy, align 4
  %230 = load %struct.win*, %struct.win** %p.addr, align 8
  %w_histheight325 = getelementptr inbounds %struct.win, %struct.win* %230, i32 0, i32 77
  %231 = load i32, i32* %w_histheight325, align 4
  %sub326 = sub nsw i32 %229, %231
  %idxprom327 = sext i32 %sub326 to i64
  %232 = load %struct.win*, %struct.win** %p.addr, align 8
  %w_mlines328 = getelementptr inbounds %struct.win, %struct.win* %232, i32 0, i32 36
  %233 = load %struct.mline*, %struct.mline** %w_mlines328, align 8
  %arrayidx329 = getelementptr inbounds %struct.mline, %struct.mline* %233, i64 %idxprom327
  br label %cond.end.330

cond.end.330:                                     ; preds = %cond.false.324, %cond.true.316
  %cond331 = phi %struct.mline* [ %arrayidx323, %cond.true.316 ], [ %arrayidx329, %cond.false.324 ]
  store %struct.mline* %cond331, %struct.mline** %ml, align 8
  %234 = load %struct.win*, %struct.win** %p.addr, align 8
  %w_layer332 = getelementptr inbounds %struct.win, %struct.win* %234, i32 0, i32 3
  %l_width333 = getelementptr inbounds %struct.layer, %struct.layer* %w_layer332, i32 0, i32 1
  %235 = load i32, i32* %l_width333, align 4
  %idxprom334 = sext i32 %235 to i64
  %236 = load %struct.mline*, %struct.mline** %ml, align 8
  %image335 = getelementptr inbounds %struct.mline, %struct.mline* %236, i32 0, i32 0
  %237 = load i8*, i8** %image335, align 8
  %arrayidx336 = getelementptr inbounds i8, i8* %237, i64 %idxprom334
  %238 = load i8, i8* %arrayidx336, align 1
  %conv337 = zext i8 %238 to i32
  %cmp338 = icmp eq i32 %conv337, 32
  br i1 %cmp338, label %if.then.340, label %if.end.341

if.then.340:                                      ; preds = %cond.end.330
  br label %for.end.347

if.end.341:                                       ; preds = %cond.end.330
  %239 = load %struct.win*, %struct.win** %p.addr, align 8
  %w_layer342 = getelementptr inbounds %struct.win, %struct.win* %239, i32 0, i32 3
  %l_width343 = getelementptr inbounds %struct.layer, %struct.layer* %w_layer342, i32 0, i32 1
  %240 = load i32, i32* %l_width343, align 4
  %241 = load i32, i32* %l, align 4
  %add344 = add nsw i32 %241, %240
  store i32 %add344, i32* %l, align 4
  br label %for.inc.345

for.inc.345:                                      ; preds = %if.end.341
  %242 = load i32, i32* %yy, align 4
  %dec346 = add nsw i32 %242, -1
  store i32 %dec346, i32* %yy, align 4
  br label %for.cond.309

for.end.347:                                      ; preds = %if.then.340, %for.cond.309
  %243 = load i32, i32* %l, align 4
  %sub348 = sub nsw i32 %243, 1
  %244 = load i32, i32* %wi.addr, align 4
  %rem349 = srem i32 %sub348, %244
  %add350 = add nsw i32 %rem349, 1
  store i32 %add350, i32* %lt, align 4
  %245 = load i32, i32* %ty, align 4
  store i32 %245, i32* %oty, align 4
  br label %while.cond.351

while.cond.351:                                   ; preds = %if.end.586, %for.end.347
  %246 = load i32, i32* %l, align 4
  %cmp352 = icmp sgt i32 %246, 0
  br i1 %cmp352, label %land.lhs.true.354, label %land.end.360

land.lhs.true.354:                                ; preds = %while.cond.351
  %247 = load i32, i32* %fy, align 4
  %cmp355 = icmp sge i32 %247, 0
  br i1 %cmp355, label %land.rhs.357, label %land.end.360

land.rhs.357:                                     ; preds = %land.lhs.true.354
  %248 = load i32, i32* %ty, align 4
  %cmp358 = icmp sge i32 %248, 0
  br label %land.end.360

land.end.360:                                     ; preds = %land.rhs.357, %land.lhs.true.354, %while.cond.351
  %249 = phi i1 [ false, %land.lhs.true.354 ], [ false, %while.cond.351 ], [ %cmp358, %land.rhs.357 ]
  br i1 %249, label %while.body.361, label %while.end.587

while.body.361:                                   ; preds = %land.end.360
  %250 = load i32, i32* %lt, align 4
  %251 = load i32, i32* %lf, align 4
  %cmp362 = icmp sgt i32 %250, %251
  br i1 %cmp362, label %cond.true.364, label %cond.false.365

cond.true.364:                                    ; preds = %while.body.361
  %252 = load i32, i32* %lf, align 4
  br label %cond.end.366

cond.false.365:                                   ; preds = %while.body.361
  %253 = load i32, i32* %lt, align 4
  br label %cond.end.366

cond.end.366:                                     ; preds = %cond.false.365, %cond.true.364
  %cond367 = phi i32 [ %252, %cond.true.364 ], [ %253, %cond.false.365 ]
  store i32 %cond367, i32* %lx, align 4
  %254 = load %struct.mline*, %struct.mline** %mlt, align 8
  %image368 = getelementptr inbounds %struct.mline, %struct.mline* %254, i32 0, i32 0
  %255 = load i8*, i8** %image368, align 8
  %cmp369 = icmp eq i8* %255, null
  br i1 %cmp369, label %if.then.371, label %if.end.386

if.then.371:                                      ; preds = %cond.end.366
  %256 = load %struct.mline*, %struct.mline** %mlt, align 8
  %257 = load i32, i32* %wi.addr, align 4
  %add372 = add nsw i32 %257, 1
  %call373 = call i32 @AllocMline(%struct.mline* %256, i32 %add372)
  %tobool374 = icmp ne i32 %call373, 0
  br i1 %tobool374, label %if.then.375, label %if.end.376

if.then.375:                                      ; preds = %if.then.371
  br label %nomem

if.end.376:                                       ; preds = %if.then.371
  %258 = load %struct.mline*, %struct.mline** %mlt, align 8
  %image377 = getelementptr inbounds %struct.mline, %struct.mline* %258, i32 0, i32 0
  %259 = load i8*, i8** %image377, align 8
  %260 = load i32, i32* %lt, align 4
  %idx.ext = sext i32 %260 to i64
  %add.ptr = getelementptr inbounds i8, i8* %259, i64 %idx.ext
  %261 = load i32, i32* %wi.addr, align 4
  %262 = load i32, i32* %lt, align 4
  %sub378 = sub nsw i32 %261, %262
  call void @MakeBlankLine(i8* %add.ptr, i32 %sub378)
  %263 = load i32, i32* %oty, align 4
  %264 = load i32, i32* %ty, align 4
  %cmp379 = icmp eq i32 %263, %264
  %cond381 = select i1 %cmp379, i32 32, i32 0
  %conv382 = trunc i32 %cond381 to i8
  %265 = load i32, i32* %wi.addr, align 4
  %idxprom383 = sext i32 %265 to i64
  %266 = load %struct.mline*, %struct.mline** %mlt, align 8
  %image384 = getelementptr inbounds %struct.mline, %struct.mline* %266, i32 0, i32 0
  %267 = load i8*, i8** %image384, align 8
  %arrayidx385 = getelementptr inbounds i8, i8* %267, i64 %idxprom383
  store i8 %conv382, i8* %arrayidx385, align 1
  br label %if.end.386

if.end.386:                                       ; preds = %if.end.376, %cond.end.366
  %268 = load %struct.mline*, %struct.mline** %mlf, align 8
  %269 = load i32, i32* %lf, align 4
  %270 = load i32, i32* %lx, align 4
  %sub387 = sub nsw i32 %269, %270
  %271 = load %struct.mline*, %struct.mline** %mlt, align 8
  %272 = load i32, i32* %lt, align 4
  %273 = load i32, i32* %lx, align 4
  %sub388 = sub nsw i32 %272, %273
  %274 = load i32, i32* %lx, align 4
  %275 = load i32, i32* %wi.addr, align 4
  %add389 = add nsw i32 %275, 1
  %call390 = call i32 @BcopyMline(%struct.mline* %268, i32 %sub387, %struct.mline* %271, i32 %sub388, i32 %274, i32 %add389)
  %tobool391 = icmp ne i32 %call390, 0
  br i1 %tobool391, label %if.then.392, label %if.end.393

if.then.392:                                      ; preds = %if.end.386
  br label %nomem

if.end.393:                                       ; preds = %if.end.386
  %276 = load i32, i32* %fy, align 4
  %277 = load %struct.win*, %struct.win** %p.addr, align 8
  %w_layer394 = getelementptr inbounds %struct.win, %struct.win* %277, i32 0, i32 3
  %l_y395 = getelementptr inbounds %struct.layer, %struct.layer* %w_layer394, i32 0, i32 4
  %278 = load i32, i32* %l_y395, align 4
  %279 = load %struct.win*, %struct.win** %p.addr, align 8
  %w_histheight396 = getelementptr inbounds %struct.win, %struct.win* %279, i32 0, i32 77
  %280 = load i32, i32* %w_histheight396, align 4
  %add397 = add nsw i32 %278, %280
  %cmp398 = icmp eq i32 %276, %add397
  br i1 %cmp398, label %land.lhs.true.400, label %if.end.508

land.lhs.true.400:                                ; preds = %if.end.393
  %281 = load i32, i32* %lf, align 4
  %282 = load i32, i32* %lx, align 4
  %sub401 = sub nsw i32 %281, %282
  %283 = load %struct.win*, %struct.win** %p.addr, align 8
  %w_layer402 = getelementptr inbounds %struct.win, %struct.win* %283, i32 0, i32 3
  %l_x403 = getelementptr inbounds %struct.layer, %struct.layer* %w_layer402, i32 0, i32 3
  %284 = load i32, i32* %l_x403, align 4
  %cmp404 = icmp sle i32 %sub401, %284
  br i1 %cmp404, label %land.lhs.true.406, label %if.end.508

land.lhs.true.406:                                ; preds = %land.lhs.true.400
  %285 = load i32, i32* %lf, align 4
  %286 = load %struct.win*, %struct.win** %p.addr, align 8
  %w_layer407 = getelementptr inbounds %struct.win, %struct.win* %286, i32 0, i32 3
  %l_x408 = getelementptr inbounds %struct.layer, %struct.layer* %w_layer407, i32 0, i32 3
  %287 = load i32, i32* %l_x408, align 4
  %cmp409 = icmp sgt i32 %285, %287
  br i1 %cmp409, label %if.then.411, label %if.end.508

if.then.411:                                      ; preds = %land.lhs.true.406
  %288 = load %struct.win*, %struct.win** %p.addr, align 8
  %w_layer412 = getelementptr inbounds %struct.win, %struct.win* %288, i32 0, i32 3
  %l_x413 = getelementptr inbounds %struct.layer, %struct.layer* %w_layer412, i32 0, i32 3
  %289 = load i32, i32* %l_x413, align 4
  %290 = load i32, i32* %lt, align 4
  %add414 = add nsw i32 %289, %290
  %291 = load i32, i32* %lf, align 4
  %sub415 = sub nsw i32 %add414, %291
  %292 = load i32, i32* %addone, align 4
  %add416 = add nsw i32 %sub415, %292
  store i32 %add416, i32* %ncx, align 4
  %293 = load i32, i32* %ty, align 4
  %294 = load i32, i32* %hi.addr, align 4
  %sub417 = sub nsw i32 %293, %294
  store i32 %sub417, i32* %ncy, align 4
  %295 = load i32, i32* %wi.addr, align 4
  %tobool418 = icmp ne i32 %295, 0
  br i1 %tobool418, label %cond.true.419, label %cond.false.423

cond.true.419:                                    ; preds = %if.then.411
  %296 = load i32, i32* %ncy, align 4
  %sub420 = sub nsw i32 0, %296
  %297 = load i32, i32* %l, align 4
  %298 = load i32, i32* %lx, align 4
  %sub421 = sub nsw i32 %297, %298
  %299 = load i32, i32* %wi.addr, align 4
  %div = sdiv i32 %sub421, %299
  %add422 = add nsw i32 %sub420, %div
  br label %cond.end.424

cond.false.423:                                   ; preds = %if.then.411
  br label %cond.end.424

cond.end.424:                                     ; preds = %cond.false.423, %cond.true.419
  %cond425 = phi i32 [ %add422, %cond.true.419 ], [ 0, %cond.false.423 ]
  store i32 %cond425, i32* %shift, align 4
  %300 = load i32, i32* %ty, align 4
  %301 = load i32, i32* %shift, align 4
  %add426 = add nsw i32 %300, %301
  %302 = load i32, i32* %hi.addr, align 4
  %303 = load i32, i32* %he.addr, align 4
  %add427 = add nsw i32 %302, %303
  %sub428 = sub nsw i32 %add427, 1
  %cmp429 = icmp sgt i32 %add426, %sub428
  br i1 %cmp429, label %if.then.431, label %if.end.435

if.then.431:                                      ; preds = %cond.end.424
  %304 = load i32, i32* %hi.addr, align 4
  %305 = load i32, i32* %he.addr, align 4
  %add432 = add nsw i32 %304, %305
  %sub433 = sub nsw i32 %add432, 1
  %306 = load i32, i32* %ty, align 4
  %sub434 = sub nsw i32 %sub433, %306
  store i32 %sub434, i32* %shift, align 4
  br label %if.end.435

if.end.435:                                       ; preds = %if.then.431, %cond.end.424
  %307 = load i32, i32* %shift, align 4
  %cmp436 = icmp sgt i32 %307, 0
  br i1 %cmp436, label %if.then.438, label %if.end.505

if.then.438:                                      ; preds = %if.end.435
  br label %do.body.439

do.body.439:                                      ; preds = %if.then.438
  br label %do.end.440

do.end.440:                                       ; preds = %do.body.439
  %308 = load i32, i32* %hi.addr, align 4
  %309 = load i32, i32* %he.addr, align 4
  %add441 = add nsw i32 %308, %309
  %sub442 = sub nsw i32 %add441, 1
  store i32 %sub442, i32* %y, align 4
  br label %for.cond.443

for.cond.443:                                     ; preds = %for.inc.477, %do.end.440
  %310 = load i32, i32* %y, align 4
  %311 = load i32, i32* %ty, align 4
  %cmp444 = icmp sge i32 %310, %311
  br i1 %cmp444, label %for.body.446, label %for.end.479

for.body.446:                                     ; preds = %for.cond.443
  %312 = load i32, i32* %y, align 4
  %313 = load i32, i32* %hi.addr, align 4
  %cmp447 = icmp slt i32 %312, %313
  br i1 %cmp447, label %cond.true.449, label %cond.false.452

cond.true.449:                                    ; preds = %for.body.446
  %314 = load i32, i32* %y, align 4
  %idxprom450 = sext i32 %314 to i64
  %315 = load %struct.mline*, %struct.mline** %nhlines, align 8
  %arrayidx451 = getelementptr inbounds %struct.mline, %struct.mline* %315, i64 %idxprom450
  br label %cond.end.456

cond.false.452:                                   ; preds = %for.body.446
  %316 = load i32, i32* %y, align 4
  %317 = load i32, i32* %hi.addr, align 4
  %sub453 = sub nsw i32 %316, %317
  %idxprom454 = sext i32 %sub453 to i64
  %318 = load %struct.mline*, %struct.mline** %nmlines, align 8
  %arrayidx455 = getelementptr inbounds %struct.mline, %struct.mline* %318, i64 %idxprom454
  br label %cond.end.456

cond.end.456:                                     ; preds = %cond.false.452, %cond.true.449
  %cond457 = phi %struct.mline* [ %arrayidx451, %cond.true.449 ], [ %arrayidx455, %cond.false.452 ]
  store %struct.mline* %cond457, %struct.mline** %mlt, align 8
  %319 = load %struct.mline*, %struct.mline** %mlt, align 8
  call void @FreeMline(%struct.mline* %319)
  %320 = load i32, i32* %y, align 4
  %321 = load i32, i32* %shift, align 4
  %sub458 = sub nsw i32 %320, %321
  %322 = load i32, i32* %ty, align 4
  %cmp459 = icmp slt i32 %sub458, %322
  br i1 %cmp459, label %if.then.461, label %if.end.462

if.then.461:                                      ; preds = %cond.end.456
  br label %for.inc.477

if.end.462:                                       ; preds = %cond.end.456
  %323 = load i32, i32* %y, align 4
  %324 = load i32, i32* %shift, align 4
  %sub463 = sub nsw i32 %323, %324
  %325 = load i32, i32* %hi.addr, align 4
  %cmp464 = icmp slt i32 %sub463, %325
  br i1 %cmp464, label %cond.true.466, label %cond.false.470

cond.true.466:                                    ; preds = %if.end.462
  %326 = load i32, i32* %y, align 4
  %327 = load i32, i32* %shift, align 4
  %sub467 = sub nsw i32 %326, %327
  %idxprom468 = sext i32 %sub467 to i64
  %328 = load %struct.mline*, %struct.mline** %nhlines, align 8
  %arrayidx469 = getelementptr inbounds %struct.mline, %struct.mline* %328, i64 %idxprom468
  br label %cond.end.475

cond.false.470:                                   ; preds = %if.end.462
  %329 = load i32, i32* %y, align 4
  %330 = load i32, i32* %shift, align 4
  %sub471 = sub nsw i32 %329, %330
  %331 = load i32, i32* %hi.addr, align 4
  %sub472 = sub nsw i32 %sub471, %331
  %idxprom473 = sext i32 %sub472 to i64
  %332 = load %struct.mline*, %struct.mline** %nmlines, align 8
  %arrayidx474 = getelementptr inbounds %struct.mline, %struct.mline* %332, i64 %idxprom473
  br label %cond.end.475

cond.end.475:                                     ; preds = %cond.false.470, %cond.true.466
  %cond476 = phi %struct.mline* [ %arrayidx469, %cond.true.466 ], [ %arrayidx474, %cond.false.470 ]
  store %struct.mline* %cond476, %struct.mline** %ml, align 8
  %333 = load %struct.mline*, %struct.mline** %mlt, align 8
  %334 = load %struct.mline*, %struct.mline** %ml, align 8
  %335 = bitcast %struct.mline* %333 to i8*
  %336 = bitcast %struct.mline* %334 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %335, i8* %336, i64 40, i32 8, i1 false)
  %337 = load %struct.mline*, %struct.mline** %ml, align 8
  %338 = bitcast %struct.mline* %337 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %338, i8* bitcast (%struct.mline* @mline_zero to i8*), i64 40, i32 8, i1 false)
  br label %for.inc.477

for.inc.477:                                      ; preds = %cond.end.475, %if.then.461
  %339 = load i32, i32* %y, align 4
  %dec478 = add nsw i32 %339, -1
  store i32 %dec478, i32* %y, align 4
  br label %for.cond.443

for.end.479:                                      ; preds = %for.cond.443
  %340 = load i32, i32* %shift, align 4
  %341 = load i32, i32* %ncy, align 4
  %add480 = add nsw i32 %341, %340
  store i32 %add480, i32* %ncy, align 4
  %342 = load i32, i32* %shift, align 4
  %343 = load i32, i32* %ty, align 4
  %add481 = add nsw i32 %343, %342
  store i32 %add481, i32* %ty, align 4
  %344 = load i32, i32* %ty, align 4
  %345 = load i32, i32* %hi.addr, align 4
  %cmp482 = icmp slt i32 %344, %345
  br i1 %cmp482, label %cond.true.484, label %cond.false.487

cond.true.484:                                    ; preds = %for.end.479
  %346 = load i32, i32* %ty, align 4
  %idxprom485 = sext i32 %346 to i64
  %347 = load %struct.mline*, %struct.mline** %nhlines, align 8
  %arrayidx486 = getelementptr inbounds %struct.mline, %struct.mline* %347, i64 %idxprom485
  br label %cond.end.491

cond.false.487:                                   ; preds = %for.end.479
  %348 = load i32, i32* %ty, align 4
  %349 = load i32, i32* %hi.addr, align 4
  %sub488 = sub nsw i32 %348, %349
  %idxprom489 = sext i32 %sub488 to i64
  %350 = load %struct.mline*, %struct.mline** %nmlines, align 8
  %arrayidx490 = getelementptr inbounds %struct.mline, %struct.mline* %350, i64 %idxprom489
  br label %cond.end.491

cond.end.491:                                     ; preds = %cond.false.487, %cond.true.484
  %cond492 = phi %struct.mline* [ %arrayidx486, %cond.true.484 ], [ %arrayidx490, %cond.false.487 ]
  store %struct.mline* %cond492, %struct.mline** %mlt, align 8
  %351 = load i32, i32* %naka, align 4
  %cmp493 = icmp sgt i32 %351, 0
  br i1 %cmp493, label %if.then.495, label %if.end.504

if.then.495:                                      ; preds = %cond.end.491
  %352 = load i32, i32* %naka, align 4
  %353 = load i32, i32* %shift, align 4
  %add496 = add nsw i32 %352, %353
  %354 = load i32, i32* %he.addr, align 4
  %cmp497 = icmp sgt i32 %add496, %354
  br i1 %cmp497, label %cond.true.499, label %cond.false.500

cond.true.499:                                    ; preds = %if.then.495
  br label %cond.end.502

cond.false.500:                                   ; preds = %if.then.495
  %355 = load i32, i32* %naka, align 4
  %356 = load i32, i32* %shift, align 4
  %add501 = add nsw i32 %355, %356
  br label %cond.end.502

cond.end.502:                                     ; preds = %cond.false.500, %cond.true.499
  %cond503 = phi i32 [ 0, %cond.true.499 ], [ %add501, %cond.false.500 ]
  store i32 %cond503, i32* %naka, align 4
  br label %if.end.504

if.end.504:                                       ; preds = %cond.end.502, %cond.end.491
  br label %if.end.505

if.end.505:                                       ; preds = %if.end.504, %if.end.435
  br label %do.body.506

do.body.506:                                      ; preds = %if.end.505
  br label %do.end.507

do.end.507:                                       ; preds = %do.body.506
  br label %if.end.508

if.end.508:                                       ; preds = %do.end.507, %land.lhs.true.406, %land.lhs.true.400, %if.end.393
  %357 = load %struct.win*, %struct.win** %p.addr, align 8
  %w_autoaka509 = getelementptr inbounds %struct.win, %struct.win* %357, i32 0, i32 24
  %358 = load i32, i32* %w_autoaka509, align 4
  %cmp510 = icmp sgt i32 %358, 0
  br i1 %cmp510, label %land.lhs.true.512, label %if.end.533

land.lhs.true.512:                                ; preds = %if.end.508
  %359 = load i32, i32* %fy, align 4
  %360 = load %struct.win*, %struct.win** %p.addr, align 8
  %w_autoaka513 = getelementptr inbounds %struct.win, %struct.win* %360, i32 0, i32 24
  %361 = load i32, i32* %w_autoaka513, align 4
  %sub514 = sub nsw i32 %361, 1
  %362 = load %struct.win*, %struct.win** %p.addr, align 8
  %w_histheight515 = getelementptr inbounds %struct.win, %struct.win* %362, i32 0, i32 77
  %363 = load i32, i32* %w_histheight515, align 4
  %add516 = add nsw i32 %sub514, %363
  %cmp517 = icmp eq i32 %359, %add516
  br i1 %cmp517, label %land.lhs.true.519, label %if.end.533

land.lhs.true.519:                                ; preds = %land.lhs.true.512
  %364 = load i32, i32* %lf, align 4
  %365 = load i32, i32* %lx, align 4
  %sub520 = sub nsw i32 %364, %365
  %cmp521 = icmp sle i32 %sub520, 0
  br i1 %cmp521, label %if.then.523, label %if.end.533

if.then.523:                                      ; preds = %land.lhs.true.519
  %366 = load i32, i32* %ty, align 4
  %367 = load i32, i32* %hi.addr, align 4
  %sub524 = sub nsw i32 %366, %367
  %cmp525 = icmp sge i32 %sub524, 0
  br i1 %cmp525, label %cond.true.527, label %cond.false.530

cond.true.527:                                    ; preds = %if.then.523
  %368 = load i32, i32* %ty, align 4
  %add528 = add nsw i32 1, %368
  %369 = load i32, i32* %hi.addr, align 4
  %sub529 = sub nsw i32 %add528, %369
  br label %cond.end.531

cond.false.530:                                   ; preds = %if.then.523
  br label %cond.end.531

cond.end.531:                                     ; preds = %cond.false.530, %cond.true.527
  %cond532 = phi i32 [ %sub529, %cond.true.527 ], [ 0, %cond.false.530 ]
  store i32 %cond532, i32* %naka, align 4
  br label %if.end.533

if.end.533:                                       ; preds = %cond.end.531, %land.lhs.true.519, %land.lhs.true.512, %if.end.508
  %370 = load i32, i32* %lx, align 4
  %371 = load i32, i32* %lf, align 4
  %sub534 = sub nsw i32 %371, %370
  store i32 %sub534, i32* %lf, align 4
  %372 = load i32, i32* %lx, align 4
  %373 = load i32, i32* %lt, align 4
  %sub535 = sub nsw i32 %373, %372
  store i32 %sub535, i32* %lt, align 4
  %374 = load i32, i32* %lx, align 4
  %375 = load i32, i32* %l, align 4
  %sub536 = sub nsw i32 %375, %374
  store i32 %sub536, i32* %l, align 4
  %376 = load i32, i32* %lf, align 4
  %cmp537 = icmp eq i32 %376, 0
  br i1 %cmp537, label %if.then.539, label %if.end.566

if.then.539:                                      ; preds = %if.end.533
  %377 = load %struct.mline*, %struct.mline** %mlf, align 8
  call void @FreeMline(%struct.mline* %377)
  %378 = load %struct.win*, %struct.win** %p.addr, align 8
  %w_layer540 = getelementptr inbounds %struct.win, %struct.win* %378, i32 0, i32 3
  %l_width541 = getelementptr inbounds %struct.layer, %struct.layer* %w_layer540, i32 0, i32 1
  %379 = load i32, i32* %l_width541, align 4
  store i32 %379, i32* %lf, align 4
  %380 = load i32, i32* %fy, align 4
  %dec542 = add nsw i32 %380, -1
  store i32 %dec542, i32* %fy, align 4
  %cmp543 = icmp sge i32 %dec542, 0
  br i1 %cmp543, label %if.then.545, label %if.end.565

if.then.545:                                      ; preds = %if.then.539
  %381 = load i32, i32* %fy, align 4
  %382 = load %struct.win*, %struct.win** %p.addr, align 8
  %w_histheight546 = getelementptr inbounds %struct.win, %struct.win* %382, i32 0, i32 77
  %383 = load i32, i32* %w_histheight546, align 4
  %cmp547 = icmp slt i32 %381, %383
  br i1 %cmp547, label %cond.true.549, label %cond.false.557

cond.true.549:                                    ; preds = %if.then.545
  %384 = load %struct.win*, %struct.win** %p.addr, align 8
  %w_histidx550 = getelementptr inbounds %struct.win, %struct.win* %384, i32 0, i32 78
  %385 = load i32, i32* %w_histidx550, align 4
  %386 = load i32, i32* %fy, align 4
  %add551 = add nsw i32 %385, %386
  %387 = load %struct.win*, %struct.win** %p.addr, align 8
  %w_histheight552 = getelementptr inbounds %struct.win, %struct.win* %387, i32 0, i32 77
  %388 = load i32, i32* %w_histheight552, align 4
  %rem553 = srem i32 %add551, %388
  %idxprom554 = sext i32 %rem553 to i64
  %389 = load %struct.win*, %struct.win** %p.addr, align 8
  %w_hlines555 = getelementptr inbounds %struct.win, %struct.win* %389, i32 0, i32 79
  %390 = load %struct.mline*, %struct.mline** %w_hlines555, align 8
  %arrayidx556 = getelementptr inbounds %struct.mline, %struct.mline* %390, i64 %idxprom554
  br label %cond.end.563

cond.false.557:                                   ; preds = %if.then.545
  %391 = load i32, i32* %fy, align 4
  %392 = load %struct.win*, %struct.win** %p.addr, align 8
  %w_histheight558 = getelementptr inbounds %struct.win, %struct.win* %392, i32 0, i32 77
  %393 = load i32, i32* %w_histheight558, align 4
  %sub559 = sub nsw i32 %391, %393
  %idxprom560 = sext i32 %sub559 to i64
  %394 = load %struct.win*, %struct.win** %p.addr, align 8
  %w_mlines561 = getelementptr inbounds %struct.win, %struct.win* %394, i32 0, i32 36
  %395 = load %struct.mline*, %struct.mline** %w_mlines561, align 8
  %arrayidx562 = getelementptr inbounds %struct.mline, %struct.mline* %395, i64 %idxprom560
  br label %cond.end.563

cond.end.563:                                     ; preds = %cond.false.557, %cond.true.549
  %cond564 = phi %struct.mline* [ %arrayidx556, %cond.true.549 ], [ %arrayidx562, %cond.false.557 ]
  store %struct.mline* %cond564, %struct.mline** %mlf, align 8
  br label %if.end.565

if.end.565:                                       ; preds = %cond.end.563, %if.then.539
  br label %if.end.566

if.end.566:                                       ; preds = %if.end.565, %if.end.533
  %396 = load i32, i32* %lt, align 4
  %cmp567 = icmp eq i32 %396, 0
  br i1 %cmp567, label %if.then.569, label %if.end.586

if.then.569:                                      ; preds = %if.end.566
  %397 = load i32, i32* %wi.addr, align 4
  store i32 %397, i32* %lt, align 4
  %398 = load i32, i32* %ty, align 4
  %dec570 = add nsw i32 %398, -1
  store i32 %dec570, i32* %ty, align 4
  %cmp571 = icmp sge i32 %dec570, 0
  br i1 %cmp571, label %if.then.573, label %if.end.585

if.then.573:                                      ; preds = %if.then.569
  %399 = load i32, i32* %ty, align 4
  %400 = load i32, i32* %hi.addr, align 4
  %cmp574 = icmp slt i32 %399, %400
  br i1 %cmp574, label %cond.true.576, label %cond.false.579

cond.true.576:                                    ; preds = %if.then.573
  %401 = load i32, i32* %ty, align 4
  %idxprom577 = sext i32 %401 to i64
  %402 = load %struct.mline*, %struct.mline** %nhlines, align 8
  %arrayidx578 = getelementptr inbounds %struct.mline, %struct.mline* %402, i64 %idxprom577
  br label %cond.end.583

cond.false.579:                                   ; preds = %if.then.573
  %403 = load i32, i32* %ty, align 4
  %404 = load i32, i32* %hi.addr, align 4
  %sub580 = sub nsw i32 %403, %404
  %idxprom581 = sext i32 %sub580 to i64
  %405 = load %struct.mline*, %struct.mline** %nmlines, align 8
  %arrayidx582 = getelementptr inbounds %struct.mline, %struct.mline* %405, i64 %idxprom581
  br label %cond.end.583

cond.end.583:                                     ; preds = %cond.false.579, %cond.true.576
  %cond584 = phi %struct.mline* [ %arrayidx578, %cond.true.576 ], [ %arrayidx582, %cond.false.579 ]
  store %struct.mline* %cond584, %struct.mline** %mlt, align 8
  br label %if.end.585

if.end.585:                                       ; preds = %cond.end.583, %if.then.569
  br label %if.end.586

if.end.586:                                       ; preds = %if.end.585, %if.end.566
  br label %while.cond.351

while.end.587:                                    ; preds = %land.end.360
  br label %do.body.588

do.body.588:                                      ; preds = %while.end.587
  br label %do.end.589

do.end.589:                                       ; preds = %do.body.588
  br label %while.cond.215

while.end.590:                                    ; preds = %land.end.221
  br label %while.cond.591

while.cond.591:                                   ; preds = %if.end.618, %while.end.590
  %406 = load i32, i32* %fy, align 4
  %cmp592 = icmp sge i32 %406, 0
  br i1 %cmp592, label %while.body.594, label %while.end.619

while.body.594:                                   ; preds = %while.cond.591
  %407 = load %struct.mline*, %struct.mline** %mlf, align 8
  call void @FreeMline(%struct.mline* %407)
  %408 = load i32, i32* %fy, align 4
  %dec595 = add nsw i32 %408, -1
  store i32 %dec595, i32* %fy, align 4
  %cmp596 = icmp sge i32 %dec595, 0
  br i1 %cmp596, label %if.then.598, label %if.end.618

if.then.598:                                      ; preds = %while.body.594
  %409 = load i32, i32* %fy, align 4
  %410 = load %struct.win*, %struct.win** %p.addr, align 8
  %w_histheight599 = getelementptr inbounds %struct.win, %struct.win* %410, i32 0, i32 77
  %411 = load i32, i32* %w_histheight599, align 4
  %cmp600 = icmp slt i32 %409, %411
  br i1 %cmp600, label %cond.true.602, label %cond.false.610

cond.true.602:                                    ; preds = %if.then.598
  %412 = load %struct.win*, %struct.win** %p.addr, align 8
  %w_histidx603 = getelementptr inbounds %struct.win, %struct.win* %412, i32 0, i32 78
  %413 = load i32, i32* %w_histidx603, align 4
  %414 = load i32, i32* %fy, align 4
  %add604 = add nsw i32 %413, %414
  %415 = load %struct.win*, %struct.win** %p.addr, align 8
  %w_histheight605 = getelementptr inbounds %struct.win, %struct.win* %415, i32 0, i32 77
  %416 = load i32, i32* %w_histheight605, align 4
  %rem606 = srem i32 %add604, %416
  %idxprom607 = sext i32 %rem606 to i64
  %417 = load %struct.win*, %struct.win** %p.addr, align 8
  %w_hlines608 = getelementptr inbounds %struct.win, %struct.win* %417, i32 0, i32 79
  %418 = load %struct.mline*, %struct.mline** %w_hlines608, align 8
  %arrayidx609 = getelementptr inbounds %struct.mline, %struct.mline* %418, i64 %idxprom607
  br label %cond.end.616

cond.false.610:                                   ; preds = %if.then.598
  %419 = load i32, i32* %fy, align 4
  %420 = load %struct.win*, %struct.win** %p.addr, align 8
  %w_histheight611 = getelementptr inbounds %struct.win, %struct.win* %420, i32 0, i32 77
  %421 = load i32, i32* %w_histheight611, align 4
  %sub612 = sub nsw i32 %419, %421
  %idxprom613 = sext i32 %sub612 to i64
  %422 = load %struct.win*, %struct.win** %p.addr, align 8
  %w_mlines614 = getelementptr inbounds %struct.win, %struct.win* %422, i32 0, i32 36
  %423 = load %struct.mline*, %struct.mline** %w_mlines614, align 8
  %arrayidx615 = getelementptr inbounds %struct.mline, %struct.mline* %423, i64 %idxprom613
  br label %cond.end.616

cond.end.616:                                     ; preds = %cond.false.610, %cond.true.602
  %cond617 = phi %struct.mline* [ %arrayidx609, %cond.true.602 ], [ %arrayidx615, %cond.false.610 ]
  store %struct.mline* %cond617, %struct.mline** %mlf, align 8
  br label %if.end.618

if.end.618:                                       ; preds = %cond.end.616, %while.body.594
  br label %while.cond.591

while.end.619:                                    ; preds = %while.cond.591
  br label %while.cond.620

while.cond.620:                                   ; preds = %if.end.646, %while.end.619
  %424 = load i32, i32* %ty, align 4
  %cmp621 = icmp sge i32 %424, 0
  br i1 %cmp621, label %while.body.623, label %while.end.647

while.body.623:                                   ; preds = %while.cond.620
  %425 = load %struct.mline*, %struct.mline** %mlt, align 8
  %426 = load i32, i32* %wi.addr, align 4
  %add624 = add nsw i32 %426, 1
  %call625 = call i32 @AllocMline(%struct.mline* %425, i32 %add624)
  %tobool626 = icmp ne i32 %call625, 0
  br i1 %tobool626, label %if.then.627, label %if.end.628

if.then.627:                                      ; preds = %while.body.623
  br label %nomem

if.end.628:                                       ; preds = %while.body.623
  %427 = load %struct.mline*, %struct.mline** %mlt, align 8
  %image629 = getelementptr inbounds %struct.mline, %struct.mline* %427, i32 0, i32 0
  %428 = load i8*, i8** %image629, align 8
  %429 = load i32, i32* %wi.addr, align 4
  %add630 = add nsw i32 %429, 1
  call void @MakeBlankLine(i8* %428, i32 %add630)
  %430 = load i32, i32* %ty, align 4
  %dec631 = add nsw i32 %430, -1
  store i32 %dec631, i32* %ty, align 4
  %cmp632 = icmp sge i32 %dec631, 0
  br i1 %cmp632, label %if.then.634, label %if.end.646

if.then.634:                                      ; preds = %if.end.628
  %431 = load i32, i32* %ty, align 4
  %432 = load i32, i32* %hi.addr, align 4
  %cmp635 = icmp slt i32 %431, %432
  br i1 %cmp635, label %cond.true.637, label %cond.false.640

cond.true.637:                                    ; preds = %if.then.634
  %433 = load i32, i32* %ty, align 4
  %idxprom638 = sext i32 %433 to i64
  %434 = load %struct.mline*, %struct.mline** %nhlines, align 8
  %arrayidx639 = getelementptr inbounds %struct.mline, %struct.mline* %434, i64 %idxprom638
  br label %cond.end.644

cond.false.640:                                   ; preds = %if.then.634
  %435 = load i32, i32* %ty, align 4
  %436 = load i32, i32* %hi.addr, align 4
  %sub641 = sub nsw i32 %435, %436
  %idxprom642 = sext i32 %sub641 to i64
  %437 = load %struct.mline*, %struct.mline** %nmlines, align 8
  %arrayidx643 = getelementptr inbounds %struct.mline, %struct.mline* %437, i64 %idxprom642
  br label %cond.end.644

cond.end.644:                                     ; preds = %cond.false.640, %cond.true.637
  %cond645 = phi %struct.mline* [ %arrayidx639, %cond.true.637 ], [ %arrayidx643, %cond.false.640 ]
  store %struct.mline* %cond645, %struct.mline** %mlt, align 8
  br label %if.end.646

if.end.646:                                       ; preds = %cond.end.644, %if.end.628
  br label %while.cond.620

while.end.647:                                    ; preds = %while.cond.620
  %438 = load %struct.win*, %struct.win** %p.addr, align 8
  %w_mlines648 = getelementptr inbounds %struct.win, %struct.win* %438, i32 0, i32 36
  %439 = load %struct.mline*, %struct.mline** %w_mlines648, align 8
  %tobool649 = icmp ne %struct.mline* %439, null
  br i1 %tobool649, label %land.lhs.true.650, label %if.end.656

land.lhs.true.650:                                ; preds = %while.end.647
  %440 = load %struct.win*, %struct.win** %p.addr, align 8
  %w_mlines651 = getelementptr inbounds %struct.win, %struct.win* %440, i32 0, i32 36
  %441 = load %struct.mline*, %struct.mline** %w_mlines651, align 8
  %442 = load %struct.mline*, %struct.mline** %nmlines, align 8
  %cmp652 = icmp ne %struct.mline* %441, %442
  br i1 %cmp652, label %if.then.654, label %if.end.656

if.then.654:                                      ; preds = %land.lhs.true.650
  %443 = load %struct.win*, %struct.win** %p.addr, align 8
  %w_mlines655 = getelementptr inbounds %struct.win, %struct.win* %443, i32 0, i32 36
  %444 = load %struct.mline*, %struct.mline** %w_mlines655, align 8
  %445 = bitcast %struct.mline* %444 to i8*
  call void @free(i8* %445) #3
  br label %if.end.656

if.end.656:                                       ; preds = %if.then.654, %land.lhs.true.650, %while.end.647
  %446 = load %struct.mline*, %struct.mline** %nmlines, align 8
  %447 = load %struct.win*, %struct.win** %p.addr, align 8
  %w_mlines657 = getelementptr inbounds %struct.win, %struct.win* %447, i32 0, i32 36
  store %struct.mline* %446, %struct.mline** %w_mlines657, align 8
  %448 = load %struct.win*, %struct.win** %p.addr, align 8
  %w_hlines658 = getelementptr inbounds %struct.win, %struct.win* %448, i32 0, i32 79
  %449 = load %struct.mline*, %struct.mline** %w_hlines658, align 8
  %tobool659 = icmp ne %struct.mline* %449, null
  br i1 %tobool659, label %land.lhs.true.660, label %if.end.666

land.lhs.true.660:                                ; preds = %if.end.656
  %450 = load %struct.win*, %struct.win** %p.addr, align 8
  %w_hlines661 = getelementptr inbounds %struct.win, %struct.win* %450, i32 0, i32 79
  %451 = load %struct.mline*, %struct.mline** %w_hlines661, align 8
  %452 = load %struct.mline*, %struct.mline** %nhlines, align 8
  %cmp662 = icmp ne %struct.mline* %451, %452
  br i1 %cmp662, label %if.then.664, label %if.end.666

if.then.664:                                      ; preds = %land.lhs.true.660
  %453 = load %struct.win*, %struct.win** %p.addr, align 8
  %w_hlines665 = getelementptr inbounds %struct.win, %struct.win* %453, i32 0, i32 79
  %454 = load %struct.mline*, %struct.mline** %w_hlines665, align 8
  %455 = bitcast %struct.mline* %454 to i8*
  call void @free(i8* %455) #3
  br label %if.end.666

if.end.666:                                       ; preds = %if.then.664, %land.lhs.true.660, %if.end.656
  %456 = load %struct.mline*, %struct.mline** %nhlines, align 8
  %457 = load %struct.win*, %struct.win** %p.addr, align 8
  %w_hlines667 = getelementptr inbounds %struct.win, %struct.win* %457, i32 0, i32 79
  store %struct.mline* %456, %struct.mline** %w_hlines667, align 8
  %458 = load %struct.win*, %struct.win** %p.addr, align 8
  %w_layer668 = getelementptr inbounds %struct.win, %struct.win* %458, i32 0, i32 3
  %l_width669 = getelementptr inbounds %struct.layer, %struct.layer* %w_layer668, i32 0, i32 1
  %459 = load i32, i32* %l_width669, align 4
  %460 = load i32, i32* %wi.addr, align 4
  %cmp670 = icmp ne i32 %459, %460
  br i1 %cmp670, label %if.then.672, label %if.end.761

if.then.672:                                      ; preds = %if.end.666
  %461 = load i32, i32* %wi.addr, align 4
  %tobool673 = icmp ne i32 %461, 0
  br i1 %tobool673, label %if.then.674, label %if.else.753

if.then.674:                                      ; preds = %if.then.672
  %462 = load %struct.win*, %struct.win** %p.addr, align 8
  %w_tabs = getelementptr inbounds %struct.win, %struct.win* %462, i32 0, i32 65
  %463 = load i8*, i8** %w_tabs, align 8
  %tobool675 = icmp ne i8* %463, null
  br i1 %tobool675, label %cond.true.676, label %cond.false.679

cond.true.676:                                    ; preds = %if.then.674
  %464 = load %struct.win*, %struct.win** %p.addr, align 8
  %w_layer677 = getelementptr inbounds %struct.win, %struct.win* %464, i32 0, i32 3
  %l_width678 = getelementptr inbounds %struct.layer, %struct.layer* %w_layer677, i32 0, i32 1
  %465 = load i32, i32* %l_width678, align 4
  br label %cond.end.680

cond.false.679:                                   ; preds = %if.then.674
  br label %cond.end.680

cond.end.680:                                     ; preds = %cond.false.679, %cond.true.676
  %cond681 = phi i32 [ %465, %cond.true.676 ], [ 0, %cond.false.679 ]
  store i32 %cond681, i32* %t, align 4
  %466 = load %struct.win*, %struct.win** %p.addr, align 8
  %w_tabs682 = getelementptr inbounds %struct.win, %struct.win* %466, i32 0, i32 65
  %467 = load i8*, i8** %w_tabs682, align 8
  %468 = load i32, i32* %wi.addr, align 4
  %add683 = add nsw i32 %468, 1
  %call684 = call i8* @xrealloc(i8* %467, i32 %add683)
  %469 = load %struct.win*, %struct.win** %p.addr, align 8
  %w_tabs685 = getelementptr inbounds %struct.win, %struct.win* %469, i32 0, i32 65
  store i8* %call684, i8** %w_tabs685, align 8
  %470 = load %struct.win*, %struct.win** %p.addr, align 8
  %w_tabs686 = getelementptr inbounds %struct.win, %struct.win* %470, i32 0, i32 65
  %471 = load i8*, i8** %w_tabs686, align 8
  %cmp687 = icmp eq i8* %471, null
  br i1 %cmp687, label %if.then.689, label %if.end.733

if.then.689:                                      ; preds = %cond.end.680
  br label %nomem

nomem:                                            ; preds = %if.then.689, %if.then.627, %if.then.392, %if.then.375
  %472 = load %struct.mline*, %struct.mline** %nmlines, align 8
  %tobool690 = icmp ne %struct.mline* %472, null
  br i1 %tobool690, label %if.then.691, label %if.end.726

if.then.691:                                      ; preds = %nomem
  %473 = load i32, i32* %he.addr, align 4
  %474 = load i32, i32* %hi.addr, align 4
  %add692 = add nsw i32 %473, %474
  %sub693 = sub nsw i32 %add692, 1
  store i32 %sub693, i32* %ty, align 4
  br label %for.cond.694

for.cond.694:                                     ; preds = %for.inc.709, %if.then.691
  %475 = load i32, i32* %ty, align 4
  %cmp695 = icmp sge i32 %475, 0
  br i1 %cmp695, label %for.body.697, label %for.end.711

for.body.697:                                     ; preds = %for.cond.694
  %476 = load i32, i32* %ty, align 4
  %477 = load i32, i32* %hi.addr, align 4
  %cmp698 = icmp slt i32 %476, %477
  br i1 %cmp698, label %cond.true.700, label %cond.false.703

cond.true.700:                                    ; preds = %for.body.697
  %478 = load i32, i32* %ty, align 4
  %idxprom701 = sext i32 %478 to i64
  %479 = load %struct.mline*, %struct.mline** %nhlines, align 8
  %arrayidx702 = getelementptr inbounds %struct.mline, %struct.mline* %479, i64 %idxprom701
  br label %cond.end.707

cond.false.703:                                   ; preds = %for.body.697
  %480 = load i32, i32* %ty, align 4
  %481 = load i32, i32* %hi.addr, align 4
  %sub704 = sub nsw i32 %480, %481
  %idxprom705 = sext i32 %sub704 to i64
  %482 = load %struct.mline*, %struct.mline** %nmlines, align 8
  %arrayidx706 = getelementptr inbounds %struct.mline, %struct.mline* %482, i64 %idxprom705
  br label %cond.end.707

cond.end.707:                                     ; preds = %cond.false.703, %cond.true.700
  %cond708 = phi %struct.mline* [ %arrayidx702, %cond.true.700 ], [ %arrayidx706, %cond.false.703 ]
  store %struct.mline* %cond708, %struct.mline** %mlt, align 8
  %483 = load %struct.mline*, %struct.mline** %mlt, align 8
  call void @FreeMline(%struct.mline* %483)
  br label %for.inc.709

for.inc.709:                                      ; preds = %cond.end.707
  %484 = load i32, i32* %ty, align 4
  %dec710 = add nsw i32 %484, -1
  store i32 %dec710, i32* %ty, align 4
  br label %for.cond.694

for.end.711:                                      ; preds = %for.cond.694
  %485 = load %struct.mline*, %struct.mline** %nmlines, align 8
  %tobool712 = icmp ne %struct.mline* %485, null
  br i1 %tobool712, label %land.lhs.true.713, label %if.end.718

land.lhs.true.713:                                ; preds = %for.end.711
  %486 = load %struct.win*, %struct.win** %p.addr, align 8
  %w_mlines714 = getelementptr inbounds %struct.win, %struct.win* %486, i32 0, i32 36
  %487 = load %struct.mline*, %struct.mline** %w_mlines714, align 8
  %488 = load %struct.mline*, %struct.mline** %nmlines, align 8
  %cmp715 = icmp ne %struct.mline* %487, %488
  br i1 %cmp715, label %if.then.717, label %if.end.718

if.then.717:                                      ; preds = %land.lhs.true.713
  %489 = load %struct.mline*, %struct.mline** %nmlines, align 8
  %490 = bitcast %struct.mline* %489 to i8*
  call void @free(i8* %490) #3
  br label %if.end.718

if.end.718:                                       ; preds = %if.then.717, %land.lhs.true.713, %for.end.711
  %491 = load %struct.mline*, %struct.mline** %nhlines, align 8
  %tobool719 = icmp ne %struct.mline* %491, null
  br i1 %tobool719, label %land.lhs.true.720, label %if.end.725

land.lhs.true.720:                                ; preds = %if.end.718
  %492 = load %struct.win*, %struct.win** %p.addr, align 8
  %w_hlines721 = getelementptr inbounds %struct.win, %struct.win* %492, i32 0, i32 79
  %493 = load %struct.mline*, %struct.mline** %w_hlines721, align 8
  %494 = load %struct.mline*, %struct.mline** %nhlines, align 8
  %cmp722 = icmp ne %struct.mline* %493, %494
  br i1 %cmp722, label %if.then.724, label %if.end.725

if.then.724:                                      ; preds = %land.lhs.true.720
  %495 = load %struct.mline*, %struct.mline** %nhlines, align 8
  %496 = bitcast %struct.mline* %495 to i8*
  call void @free(i8* %496) #3
  br label %if.end.725

if.end.725:                                       ; preds = %if.then.724, %land.lhs.true.720, %if.end.718
  br label %if.end.726

if.end.726:                                       ; preds = %if.end.725, %nomem
  %497 = load %struct.win*, %struct.win** %p.addr, align 8
  call void @KillWindow(%struct.win* %497)
  call void (i32, i8*, ...) @Msg(i32 0, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.2, i32 0, i32 0), i8* getelementptr inbounds ([0 x i8], [0 x i8]* @strnomem, i32 0, i32 0))
  %498 = load %struct.mline*, %struct.mline** %nmlines, align 8
  %tobool727 = icmp ne %struct.mline* %498, null
  br i1 %tobool727, label %if.then.728, label %if.end.729

if.then.728:                                      ; preds = %if.end.726
  %499 = load %struct.mline*, %struct.mline** %nmlines, align 8
  %500 = bitcast %struct.mline* %499 to i8*
  call void @free(i8* %500) #3
  br label %if.end.729

if.end.729:                                       ; preds = %if.then.728, %if.end.726
  %501 = load %struct.mline*, %struct.mline** %nhlines, align 8
  %tobool730 = icmp ne %struct.mline* %501, null
  br i1 %tobool730, label %if.then.731, label %if.end.732

if.then.731:                                      ; preds = %if.end.729
  %502 = load %struct.mline*, %struct.mline** %nhlines, align 8
  %503 = bitcast %struct.mline* %502 to i8*
  call void @free(i8* %503) #3
  br label %if.end.732

if.end.732:                                       ; preds = %if.then.731, %if.end.729
  store i32 -1, i32* %retval
  br label %return

if.end.733:                                       ; preds = %cond.end.680
  br label %for.cond.734

for.cond.734:                                     ; preds = %for.inc.747, %if.end.733
  %504 = load i32, i32* %t, align 4
  %505 = load i32, i32* %wi.addr, align 4
  %cmp735 = icmp slt i32 %504, %505
  br i1 %cmp735, label %for.body.737, label %for.end.749

for.body.737:                                     ; preds = %for.cond.734
  %506 = load i32, i32* %t, align 4
  %tobool738 = icmp ne i32 %506, 0
  br i1 %tobool738, label %land.rhs.739, label %land.end.741

land.rhs.739:                                     ; preds = %for.body.737
  %507 = load i32, i32* %t, align 4
  %and = and i32 %507, 7
  %tobool740 = icmp ne i32 %and, 0
  %lnot = xor i1 %tobool740, true
  br label %land.end.741

land.end.741:                                     ; preds = %land.rhs.739, %for.body.737
  %508 = phi i1 [ false, %for.body.737 ], [ %lnot, %land.rhs.739 ]
  %cond742 = select i1 %508, i32 1, i32 0
  %conv743 = trunc i32 %cond742 to i8
  %509 = load i32, i32* %t, align 4
  %idxprom744 = sext i32 %509 to i64
  %510 = load %struct.win*, %struct.win** %p.addr, align 8
  %w_tabs745 = getelementptr inbounds %struct.win, %struct.win* %510, i32 0, i32 65
  %511 = load i8*, i8** %w_tabs745, align 8
  %arrayidx746 = getelementptr inbounds i8, i8* %511, i64 %idxprom744
  store i8 %conv743, i8* %arrayidx746, align 1
  br label %for.inc.747

for.inc.747:                                      ; preds = %land.end.741
  %512 = load i32, i32* %t, align 4
  %inc748 = add nsw i32 %512, 1
  store i32 %inc748, i32* %t, align 4
  br label %for.cond.734

for.end.749:                                      ; preds = %for.cond.734
  %513 = load i32, i32* %wi.addr, align 4
  %idxprom750 = sext i32 %513 to i64
  %514 = load %struct.win*, %struct.win** %p.addr, align 8
  %w_tabs751 = getelementptr inbounds %struct.win, %struct.win* %514, i32 0, i32 65
  %515 = load i8*, i8** %w_tabs751, align 8
  %arrayidx752 = getelementptr inbounds i8, i8* %515, i64 %idxprom750
  store i8 0, i8* %arrayidx752, align 1
  br label %if.end.760

if.else.753:                                      ; preds = %if.then.672
  %516 = load %struct.win*, %struct.win** %p.addr, align 8
  %w_tabs754 = getelementptr inbounds %struct.win, %struct.win* %516, i32 0, i32 65
  %517 = load i8*, i8** %w_tabs754, align 8
  %tobool755 = icmp ne i8* %517, null
  br i1 %tobool755, label %if.then.756, label %if.end.758

if.then.756:                                      ; preds = %if.else.753
  %518 = load %struct.win*, %struct.win** %p.addr, align 8
  %w_tabs757 = getelementptr inbounds %struct.win, %struct.win* %518, i32 0, i32 65
  %519 = load i8*, i8** %w_tabs757, align 8
  call void @free(i8* %519) #3
  br label %if.end.758

if.end.758:                                       ; preds = %if.then.756, %if.else.753
  %520 = load %struct.win*, %struct.win** %p.addr, align 8
  %w_tabs759 = getelementptr inbounds %struct.win, %struct.win* %520, i32 0, i32 65
  store i8* null, i8** %w_tabs759, align 8
  br label %if.end.760

if.end.760:                                       ; preds = %if.end.758, %for.end.749
  br label %if.end.761

if.end.761:                                       ; preds = %if.end.760, %if.end.666
  %521 = load i32, i32* %ncy, align 4
  %522 = load %struct.win*, %struct.win** %p.addr, align 8
  %w_layer762 = getelementptr inbounds %struct.win, %struct.win* %522, i32 0, i32 3
  %l_y763 = getelementptr inbounds %struct.layer, %struct.layer* %w_layer762, i32 0, i32 4
  %523 = load i32, i32* %l_y763, align 4
  %sub764 = sub nsw i32 %521, %523
  %524 = load %struct.win*, %struct.win** %p.addr, align 8
  %w_saved = getelementptr inbounds %struct.win, %struct.win* %524, i32 0, i32 45
  %y765 = getelementptr inbounds %struct.cursor, %struct.cursor* %w_saved, i32 0, i32 2
  %525 = load i32, i32* %y765, align 4
  %add766 = add nsw i32 %525, %sub764
  store i32 %add766, i32* %y765, align 4
  %526 = load i32, i32* %ncx, align 4
  %527 = load %struct.win*, %struct.win** %p.addr, align 8
  %w_layer767 = getelementptr inbounds %struct.win, %struct.win* %527, i32 0, i32 3
  %l_x768 = getelementptr inbounds %struct.layer, %struct.layer* %w_layer767, i32 0, i32 3
  store i32 %526, i32* %l_x768, align 4
  %528 = load i32, i32* %ncy, align 4
  %529 = load %struct.win*, %struct.win** %p.addr, align 8
  %w_layer769 = getelementptr inbounds %struct.win, %struct.win* %529, i32 0, i32 3
  %l_y770 = getelementptr inbounds %struct.layer, %struct.layer* %w_layer769, i32 0, i32 4
  store i32 %528, i32* %l_y770, align 4
  %530 = load %struct.win*, %struct.win** %p.addr, align 8
  %w_autoaka771 = getelementptr inbounds %struct.win, %struct.win* %530, i32 0, i32 24
  %531 = load i32, i32* %w_autoaka771, align 4
  %cmp772 = icmp sgt i32 %531, 0
  br i1 %cmp772, label %if.then.774, label %if.end.776

if.then.774:                                      ; preds = %if.end.761
  %532 = load i32, i32* %naka, align 4
  %533 = load %struct.win*, %struct.win** %p.addr, align 8
  %w_autoaka775 = getelementptr inbounds %struct.win, %struct.win* %533, i32 0, i32 24
  store i32 %532, i32* %w_autoaka775, align 4
  br label %if.end.776

if.end.776:                                       ; preds = %if.then.774, %if.end.761
  %534 = load %struct.win*, %struct.win** %p.addr, align 8
  %w_layer777 = getelementptr inbounds %struct.win, %struct.win* %534, i32 0, i32 3
  %l_x778 = getelementptr inbounds %struct.layer, %struct.layer* %w_layer777, i32 0, i32 3
  %535 = load i32, i32* %l_x778, align 4
  %536 = load i32, i32* %wi.addr, align 4
  %cmp779 = icmp sgt i32 %535, %536
  br i1 %cmp779, label %if.then.781, label %if.end.784

if.then.781:                                      ; preds = %if.end.776
  %537 = load i32, i32* %wi.addr, align 4
  %538 = load %struct.win*, %struct.win** %p.addr, align 8
  %w_layer782 = getelementptr inbounds %struct.win, %struct.win* %538, i32 0, i32 3
  %l_x783 = getelementptr inbounds %struct.layer, %struct.layer* %w_layer782, i32 0, i32 3
  store i32 %537, i32* %l_x783, align 4
  br label %if.end.784

if.end.784:                                       ; preds = %if.then.781, %if.end.776
  %539 = load %struct.win*, %struct.win** %p.addr, align 8
  %w_layer785 = getelementptr inbounds %struct.win, %struct.win* %539, i32 0, i32 3
  %l_y786 = getelementptr inbounds %struct.layer, %struct.layer* %w_layer785, i32 0, i32 4
  %540 = load i32, i32* %l_y786, align 4
  %541 = load i32, i32* %he.addr, align 4
  %cmp787 = icmp sge i32 %540, %541
  br i1 %cmp787, label %if.then.789, label %if.end.793

if.then.789:                                      ; preds = %if.end.784
  %542 = load i32, i32* %he.addr, align 4
  %sub790 = sub nsw i32 %542, 1
  %543 = load %struct.win*, %struct.win** %p.addr, align 8
  %w_layer791 = getelementptr inbounds %struct.win, %struct.win* %543, i32 0, i32 3
  %l_y792 = getelementptr inbounds %struct.layer, %struct.layer* %w_layer791, i32 0, i32 4
  store i32 %sub790, i32* %l_y792, align 4
  br label %if.end.793

if.end.793:                                       ; preds = %if.then.789, %if.end.784
  %544 = load %struct.win*, %struct.win** %p.addr, align 8
  %w_saved794 = getelementptr inbounds %struct.win, %struct.win* %544, i32 0, i32 45
  %x = getelementptr inbounds %struct.cursor, %struct.cursor* %w_saved794, i32 0, i32 1
  %545 = load i32, i32* %x, align 4
  %546 = load i32, i32* %wi.addr, align 4
  %cmp795 = icmp sgt i32 %545, %546
  br i1 %cmp795, label %if.then.797, label %if.end.800

if.then.797:                                      ; preds = %if.end.793
  %547 = load i32, i32* %wi.addr, align 4
  %548 = load %struct.win*, %struct.win** %p.addr, align 8
  %w_saved798 = getelementptr inbounds %struct.win, %struct.win* %548, i32 0, i32 45
  %x799 = getelementptr inbounds %struct.cursor, %struct.cursor* %w_saved798, i32 0, i32 1
  store i32 %547, i32* %x799, align 4
  br label %if.end.800

if.end.800:                                       ; preds = %if.then.797, %if.end.793
  %549 = load %struct.win*, %struct.win** %p.addr, align 8
  %w_saved801 = getelementptr inbounds %struct.win, %struct.win* %549, i32 0, i32 45
  %y802 = getelementptr inbounds %struct.cursor, %struct.cursor* %w_saved801, i32 0, i32 2
  %550 = load i32, i32* %y802, align 4
  %551 = load i32, i32* %he.addr, align 4
  %cmp803 = icmp sge i32 %550, %551
  br i1 %cmp803, label %if.then.805, label %if.end.809

if.then.805:                                      ; preds = %if.end.800
  %552 = load i32, i32* %he.addr, align 4
  %sub806 = sub nsw i32 %552, 1
  %553 = load %struct.win*, %struct.win** %p.addr, align 8
  %w_saved807 = getelementptr inbounds %struct.win, %struct.win* %553, i32 0, i32 45
  %y808 = getelementptr inbounds %struct.cursor, %struct.cursor* %w_saved807, i32 0, i32 2
  store i32 %sub806, i32* %y808, align 4
  br label %if.end.809

if.end.809:                                       ; preds = %if.then.805, %if.end.800
  %554 = load %struct.win*, %struct.win** %p.addr, align 8
  %w_saved810 = getelementptr inbounds %struct.win, %struct.win* %554, i32 0, i32 45
  %y811 = getelementptr inbounds %struct.cursor, %struct.cursor* %w_saved810, i32 0, i32 2
  %555 = load i32, i32* %y811, align 4
  %cmp812 = icmp slt i32 %555, 0
  br i1 %cmp812, label %if.then.814, label %if.end.817

if.then.814:                                      ; preds = %if.end.809
  %556 = load %struct.win*, %struct.win** %p.addr, align 8
  %w_saved815 = getelementptr inbounds %struct.win, %struct.win* %556, i32 0, i32 45
  %y816 = getelementptr inbounds %struct.cursor, %struct.cursor* %w_saved815, i32 0, i32 2
  store i32 0, i32* %y816, align 4
  br label %if.end.817

if.end.817:                                       ; preds = %if.then.814, %if.end.809
  %557 = load %struct.win*, %struct.win** %p.addr, align 8
  %w_alt = getelementptr inbounds %struct.win, %struct.win* %557, i32 0, i32 92
  %cursor = getelementptr inbounds %struct.anon.2, %struct.anon.2* %w_alt, i32 0, i32 7
  %x818 = getelementptr inbounds %struct.cursor, %struct.cursor* %cursor, i32 0, i32 1
  %558 = load i32, i32* %x818, align 4
  %559 = load i32, i32* %wi.addr, align 4
  %cmp819 = icmp sgt i32 %558, %559
  br i1 %cmp819, label %if.then.821, label %if.end.825

if.then.821:                                      ; preds = %if.end.817
  %560 = load i32, i32* %wi.addr, align 4
  %561 = load %struct.win*, %struct.win** %p.addr, align 8
  %w_alt822 = getelementptr inbounds %struct.win, %struct.win* %561, i32 0, i32 92
  %cursor823 = getelementptr inbounds %struct.anon.2, %struct.anon.2* %w_alt822, i32 0, i32 7
  %x824 = getelementptr inbounds %struct.cursor, %struct.cursor* %cursor823, i32 0, i32 1
  store i32 %560, i32* %x824, align 4
  br label %if.end.825

if.end.825:                                       ; preds = %if.then.821, %if.end.817
  %562 = load %struct.win*, %struct.win** %p.addr, align 8
  %w_alt826 = getelementptr inbounds %struct.win, %struct.win* %562, i32 0, i32 92
  %cursor827 = getelementptr inbounds %struct.anon.2, %struct.anon.2* %w_alt826, i32 0, i32 7
  %y828 = getelementptr inbounds %struct.cursor, %struct.cursor* %cursor827, i32 0, i32 2
  %563 = load i32, i32* %y828, align 4
  %564 = load i32, i32* %he.addr, align 4
  %cmp829 = icmp sge i32 %563, %564
  br i1 %cmp829, label %if.then.831, label %if.end.836

if.then.831:                                      ; preds = %if.end.825
  %565 = load i32, i32* %he.addr, align 4
  %sub832 = sub nsw i32 %565, 1
  %566 = load %struct.win*, %struct.win** %p.addr, align 8
  %w_alt833 = getelementptr inbounds %struct.win, %struct.win* %566, i32 0, i32 92
  %cursor834 = getelementptr inbounds %struct.anon.2, %struct.anon.2* %w_alt833, i32 0, i32 7
  %y835 = getelementptr inbounds %struct.cursor, %struct.cursor* %cursor834, i32 0, i32 2
  store i32 %sub832, i32* %y835, align 4
  br label %if.end.836

if.end.836:                                       ; preds = %if.then.831, %if.end.825
  %567 = load %struct.win*, %struct.win** %p.addr, align 8
  %w_alt837 = getelementptr inbounds %struct.win, %struct.win* %567, i32 0, i32 92
  %cursor838 = getelementptr inbounds %struct.anon.2, %struct.anon.2* %w_alt837, i32 0, i32 7
  %y839 = getelementptr inbounds %struct.cursor, %struct.cursor* %cursor838, i32 0, i32 2
  %568 = load i32, i32* %y839, align 4
  %cmp840 = icmp slt i32 %568, 0
  br i1 %cmp840, label %if.then.842, label %if.end.846

if.then.842:                                      ; preds = %if.end.836
  %569 = load %struct.win*, %struct.win** %p.addr, align 8
  %w_alt843 = getelementptr inbounds %struct.win, %struct.win* %569, i32 0, i32 92
  %cursor844 = getelementptr inbounds %struct.anon.2, %struct.anon.2* %w_alt843, i32 0, i32 7
  %y845 = getelementptr inbounds %struct.cursor, %struct.cursor* %cursor844, i32 0, i32 2
  store i32 0, i32* %y845, align 4
  br label %if.end.846

if.end.846:                                       ; preds = %if.then.842, %if.end.836
  %570 = load %struct.win*, %struct.win** %p.addr, align 8
  %w_top = getelementptr inbounds %struct.win, %struct.win* %570, i32 0, i32 46
  store i32 0, i32* %w_top, align 4
  %571 = load i32, i32* %he.addr, align 4
  %sub847 = sub nsw i32 %571, 1
  %572 = load %struct.win*, %struct.win** %p.addr, align 8
  %w_bot = getelementptr inbounds %struct.win, %struct.win* %572, i32 0, i32 47
  store i32 %sub847, i32* %w_bot, align 4
  %573 = load i32, i32* %wi.addr, align 4
  %tobool848 = icmp ne i32 %573, 0
  br i1 %tobool848, label %land.lhs.true.849, label %if.end.886

land.lhs.true.849:                                ; preds = %if.end.846
  %574 = load %struct.win*, %struct.win** %p.addr, align 8
  %w_layer850 = getelementptr inbounds %struct.win, %struct.win* %574, i32 0, i32 3
  %l_width851 = getelementptr inbounds %struct.layer, %struct.layer* %w_layer850, i32 0, i32 1
  %575 = load i32, i32* %l_width851, align 4
  %576 = load i32, i32* %wi.addr, align 4
  %cmp852 = icmp ne i32 %575, %576
  br i1 %cmp852, label %land.lhs.true.859, label %lor.lhs.false.854

lor.lhs.false.854:                                ; preds = %land.lhs.true.849
  %577 = load %struct.win*, %struct.win** %p.addr, align 8
  %w_layer855 = getelementptr inbounds %struct.win, %struct.win* %577, i32 0, i32 3
  %l_height856 = getelementptr inbounds %struct.layer, %struct.layer* %w_layer855, i32 0, i32 2
  %578 = load i32, i32* %l_height856, align 4
  %579 = load i32, i32* %he.addr, align 4
  %cmp857 = icmp ne i32 %578, %579
  br i1 %cmp857, label %land.lhs.true.859, label %if.end.886

land.lhs.true.859:                                ; preds = %lor.lhs.false.854, %land.lhs.true.849
  %580 = load %struct.win*, %struct.win** %p.addr, align 8
  %w_layer860 = getelementptr inbounds %struct.win, %struct.win* %580, i32 0, i32 3
  %l_width861 = getelementptr inbounds %struct.layer, %struct.layer* %w_layer860, i32 0, i32 1
  %581 = load i32, i32* %l_width861, align 4
  %cmp862 = icmp ne i32 %581, 0
  br i1 %cmp862, label %land.lhs.true.864, label %if.end.886

land.lhs.true.864:                                ; preds = %land.lhs.true.859
  %582 = load %struct.win*, %struct.win** %p.addr, align 8
  %w_layer865 = getelementptr inbounds %struct.win, %struct.win* %582, i32 0, i32 3
  %l_height866 = getelementptr inbounds %struct.layer, %struct.layer* %w_layer865, i32 0, i32 2
  %583 = load i32, i32* %l_height866, align 4
  %cmp867 = icmp ne i32 %583, 0
  br i1 %cmp867, label %land.lhs.true.869, label %if.end.886

land.lhs.true.869:                                ; preds = %land.lhs.true.864
  %584 = load %struct.win*, %struct.win** %p.addr, align 8
  %w_ptyfd = getelementptr inbounds %struct.win, %struct.win* %584, i32 0, i32 15
  %585 = load i32, i32* %w_ptyfd, align 4
  %cmp870 = icmp sge i32 %585, 0
  br i1 %cmp870, label %land.lhs.true.872, label %if.end.886

land.lhs.true.872:                                ; preds = %land.lhs.true.869
  %586 = load %struct.win*, %struct.win** %p.addr, align 8
  %w_pid = getelementptr inbounds %struct.win, %struct.win* %586, i32 0, i32 81
  %587 = load i32, i32* %w_pid, align 4
  %tobool873 = icmp ne i32 %587, 0
  br i1 %tobool873, label %if.then.874, label %if.end.886

if.then.874:                                      ; preds = %land.lhs.true.872
  %588 = load i32, i32* %wi.addr, align 4
  %conv875 = trunc i32 %588 to i16
  store i16 %conv875, i16* getelementptr inbounds (%struct.winsize, %struct.winsize* @glwz, i32 0, i32 1), align 2
  %589 = load i32, i32* %he.addr, align 4
  %conv876 = trunc i32 %589 to i16
  store i16 %conv876, i16* getelementptr inbounds (%struct.winsize, %struct.winsize* @glwz, i32 0, i32 0), align 2
  br label %do.body.877

do.body.877:                                      ; preds = %if.then.874
  br label %do.end.878

do.end.878:                                       ; preds = %do.body.877
  %590 = load %struct.win*, %struct.win** %p.addr, align 8
  %w_ptyfd879 = getelementptr inbounds %struct.win, %struct.win* %590, i32 0, i32 15
  %591 = load i32, i32* %w_ptyfd879, align 4
  %call880 = call i32 (i32, i64, ...) @ioctl(i32 %591, i64 21524, i8* bitcast (%struct.winsize* @glwz to i8*)) #3
  %tobool881 = icmp ne i32 %call880, 0
  br i1 %tobool881, label %if.then.882, label %if.end.885

if.then.882:                                      ; preds = %do.end.878
  br label %do.body.883

do.body.883:                                      ; preds = %if.then.882
  br label %do.end.884

do.end.884:                                       ; preds = %do.body.883
  br label %if.end.885

if.end.885:                                       ; preds = %do.end.884, %do.end.878
  br label %if.end.886

if.end.886:                                       ; preds = %if.end.885, %land.lhs.true.872, %land.lhs.true.869, %land.lhs.true.864, %land.lhs.true.859, %lor.lhs.false.854, %if.end.846
  %592 = load i32, i32* %wi.addr, align 4
  %593 = load %struct.win*, %struct.win** %p.addr, align 8
  %w_layer887 = getelementptr inbounds %struct.win, %struct.win* %593, i32 0, i32 3
  %l_width888 = getelementptr inbounds %struct.layer, %struct.layer* %w_layer887, i32 0, i32 1
  store i32 %592, i32* %l_width888, align 4
  %594 = load i32, i32* %he.addr, align 4
  %595 = load %struct.win*, %struct.win** %p.addr, align 8
  %w_layer889 = getelementptr inbounds %struct.win, %struct.win* %595, i32 0, i32 3
  %l_height890 = getelementptr inbounds %struct.layer, %struct.layer* %w_layer889, i32 0, i32 2
  store i32 %594, i32* %l_height890, align 4
  %596 = load %struct.win*, %struct.win** %p.addr, align 8
  %w_histidx891 = getelementptr inbounds %struct.win, %struct.win* %596, i32 0, i32 78
  store i32 0, i32* %w_histidx891, align 4
  %597 = load i32, i32* %hi.addr, align 4
  %598 = load %struct.win*, %struct.win** %p.addr, align 8
  %w_histheight892 = getelementptr inbounds %struct.win, %struct.win* %598, i32 0, i32 77
  store i32 %597, i32* %w_histheight892, align 4
  store i32 0, i32* %retval
  br label %return

return:                                           ; preds = %if.end.886, %if.end.732, %if.then.40, %do.end, %if.then.3
  %599 = load i32, i32* %retval
  ret i32 %599
}

declare void @Msg(i32, i8*, ...) #2

; Function Attrs: nounwind
declare noalias i8* @calloc(i64, i64) #1

declare void @KillWindow(%struct.win*) #2

; Function Attrs: nounwind uwtable
define internal void @FreeMline(%struct.mline* %ml) #0 {
entry:
  %ml.addr = alloca %struct.mline*, align 8
  store %struct.mline* %ml, %struct.mline** %ml.addr, align 8
  %0 = load %struct.mline*, %struct.mline** %ml.addr, align 8
  %image = getelementptr inbounds %struct.mline, %struct.mline* %0, i32 0, i32 0
  %1 = load i8*, i8** %image, align 8
  %tobool = icmp ne i8* %1, null
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %2 = load %struct.mline*, %struct.mline** %ml.addr, align 8
  %image1 = getelementptr inbounds %struct.mline, %struct.mline* %2, i32 0, i32 0
  %3 = load i8*, i8** %image1, align 8
  call void @free(i8* %3) #3
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %4 = load %struct.mline*, %struct.mline** %ml.addr, align 8
  %attr = getelementptr inbounds %struct.mline, %struct.mline* %4, i32 0, i32 1
  %5 = load i8*, i8** %attr, align 8
  %tobool2 = icmp ne i8* %5, null
  br i1 %tobool2, label %land.lhs.true, label %if.end.6

land.lhs.true:                                    ; preds = %if.end
  %6 = load %struct.mline*, %struct.mline** %ml.addr, align 8
  %attr3 = getelementptr inbounds %struct.mline, %struct.mline* %6, i32 0, i32 1
  %7 = load i8*, i8** %attr3, align 8
  %8 = load i8*, i8** @null, align 8
  %cmp = icmp ne i8* %7, %8
  br i1 %cmp, label %if.then.4, label %if.end.6

if.then.4:                                        ; preds = %land.lhs.true
  %9 = load %struct.mline*, %struct.mline** %ml.addr, align 8
  %attr5 = getelementptr inbounds %struct.mline, %struct.mline* %9, i32 0, i32 1
  %10 = load i8*, i8** %attr5, align 8
  call void @free(i8* %10) #3
  br label %if.end.6

if.end.6:                                         ; preds = %if.then.4, %land.lhs.true, %if.end
  %11 = load %struct.mline*, %struct.mline** %ml.addr, align 8
  %font = getelementptr inbounds %struct.mline, %struct.mline* %11, i32 0, i32 2
  %12 = load i8*, i8** %font, align 8
  %tobool7 = icmp ne i8* %12, null
  br i1 %tobool7, label %land.lhs.true.8, label %if.end.13

land.lhs.true.8:                                  ; preds = %if.end.6
  %13 = load %struct.mline*, %struct.mline** %ml.addr, align 8
  %font9 = getelementptr inbounds %struct.mline, %struct.mline* %13, i32 0, i32 2
  %14 = load i8*, i8** %font9, align 8
  %15 = load i8*, i8** @null, align 8
  %cmp10 = icmp ne i8* %14, %15
  br i1 %cmp10, label %if.then.11, label %if.end.13

if.then.11:                                       ; preds = %land.lhs.true.8
  %16 = load %struct.mline*, %struct.mline** %ml.addr, align 8
  %font12 = getelementptr inbounds %struct.mline, %struct.mline* %16, i32 0, i32 2
  %17 = load i8*, i8** %font12, align 8
  call void @free(i8* %17) #3
  br label %if.end.13

if.end.13:                                        ; preds = %if.then.11, %land.lhs.true.8, %if.end.6
  %18 = load %struct.mline*, %struct.mline** %ml.addr, align 8
  %fontx = getelementptr inbounds %struct.mline, %struct.mline* %18, i32 0, i32 3
  %19 = load i8*, i8** %fontx, align 8
  %tobool14 = icmp ne i8* %19, null
  br i1 %tobool14, label %land.lhs.true.15, label %if.end.20

land.lhs.true.15:                                 ; preds = %if.end.13
  %20 = load %struct.mline*, %struct.mline** %ml.addr, align 8
  %fontx16 = getelementptr inbounds %struct.mline, %struct.mline* %20, i32 0, i32 3
  %21 = load i8*, i8** %fontx16, align 8
  %22 = load i8*, i8** @null, align 8
  %cmp17 = icmp ne i8* %21, %22
  br i1 %cmp17, label %if.then.18, label %if.end.20

if.then.18:                                       ; preds = %land.lhs.true.15
  %23 = load %struct.mline*, %struct.mline** %ml.addr, align 8
  %fontx19 = getelementptr inbounds %struct.mline, %struct.mline* %23, i32 0, i32 3
  %24 = load i8*, i8** %fontx19, align 8
  call void @free(i8* %24) #3
  br label %if.end.20

if.end.20:                                        ; preds = %if.then.18, %land.lhs.true.15, %if.end.13
  %25 = load %struct.mline*, %struct.mline** %ml.addr, align 8
  %color = getelementptr inbounds %struct.mline, %struct.mline* %25, i32 0, i32 4
  %26 = load i8*, i8** %color, align 8
  %tobool21 = icmp ne i8* %26, null
  br i1 %tobool21, label %land.lhs.true.22, label %if.end.27

land.lhs.true.22:                                 ; preds = %if.end.20
  %27 = load %struct.mline*, %struct.mline** %ml.addr, align 8
  %color23 = getelementptr inbounds %struct.mline, %struct.mline* %27, i32 0, i32 4
  %28 = load i8*, i8** %color23, align 8
  %29 = load i8*, i8** @null, align 8
  %cmp24 = icmp ne i8* %28, %29
  br i1 %cmp24, label %if.then.25, label %if.end.27

if.then.25:                                       ; preds = %land.lhs.true.22
  %30 = load %struct.mline*, %struct.mline** %ml.addr, align 8
  %color26 = getelementptr inbounds %struct.mline, %struct.mline* %30, i32 0, i32 4
  %31 = load i8*, i8** %color26, align 8
  call void @free(i8* %31) #3
  br label %if.end.27

if.end.27:                                        ; preds = %if.then.25, %land.lhs.true.22, %if.end.20
  %32 = load %struct.mline*, %struct.mline** %ml.addr, align 8
  %33 = bitcast %struct.mline* %32 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %33, i8* bitcast (%struct.mline* @mline_zero to i8*), i64 40, i32 8, i1 false)
  ret void
}

; Function Attrs: nounwind
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* nocapture, i8* nocapture readonly, i64, i32, i1) #3

; Function Attrs: nounwind uwtable
define internal i32 @AllocMline(%struct.mline* %ml, i32 %w) #0 {
entry:
  %retval = alloca i32, align 4
  %ml.addr = alloca %struct.mline*, align 8
  %w.addr = alloca i32, align 4
  store %struct.mline* %ml, %struct.mline** %ml.addr, align 8
  store i32 %w, i32* %w.addr, align 4
  %0 = load i32, i32* %w.addr, align 4
  %conv = sext i32 %0 to i64
  %call = call noalias i8* @malloc(i64 %conv) #3
  %1 = load %struct.mline*, %struct.mline** %ml.addr, align 8
  %image = getelementptr inbounds %struct.mline, %struct.mline* %1, i32 0, i32 0
  store i8* %call, i8** %image, align 8
  %2 = load i8*, i8** @null, align 8
  %3 = load %struct.mline*, %struct.mline** %ml.addr, align 8
  %attr = getelementptr inbounds %struct.mline, %struct.mline* %3, i32 0, i32 1
  store i8* %2, i8** %attr, align 8
  %4 = load i8*, i8** @null, align 8
  %5 = load %struct.mline*, %struct.mline** %ml.addr, align 8
  %font = getelementptr inbounds %struct.mline, %struct.mline* %5, i32 0, i32 2
  store i8* %4, i8** %font, align 8
  %6 = load i8*, i8** @null, align 8
  %7 = load %struct.mline*, %struct.mline** %ml.addr, align 8
  %fontx = getelementptr inbounds %struct.mline, %struct.mline* %7, i32 0, i32 3
  store i8* %6, i8** %fontx, align 8
  %8 = load i8*, i8** @null, align 8
  %9 = load %struct.mline*, %struct.mline** %ml.addr, align 8
  %color = getelementptr inbounds %struct.mline, %struct.mline* %9, i32 0, i32 4
  store i8* %8, i8** %color, align 8
  %10 = load %struct.mline*, %struct.mline** %ml.addr, align 8
  %image1 = getelementptr inbounds %struct.mline, %struct.mline* %10, i32 0, i32 0
  %11 = load i8*, i8** %image1, align 8
  %cmp = icmp eq i8* %11, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store i32 -1, i32* %retval
  br label %return

if.end:                                           ; preds = %entry
  store i32 0, i32* %retval
  br label %return

return:                                           ; preds = %if.end, %if.then
  %12 = load i32, i32* %retval
  ret i32 %12
}

; Function Attrs: nounwind uwtable
define internal void @MakeBlankLine(i8* %p, i32 %n) #0 {
entry:
  %p.addr = alloca i8*, align 8
  %n.addr = alloca i32, align 4
  store i8* %p, i8** %p.addr, align 8
  store i32 %n, i32* %n.addr, align 4
  br label %while.cond

while.cond:                                       ; preds = %while.body, %entry
  %0 = load i32, i32* %n.addr, align 4
  %dec = add nsw i32 %0, -1
  store i32 %dec, i32* %n.addr, align 4
  %tobool = icmp ne i32 %0, 0
  br i1 %tobool, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %1 = load i8*, i8** %p.addr, align 8
  %incdec.ptr = getelementptr inbounds i8, i8* %1, i32 1
  store i8* %incdec.ptr, i8** %p.addr, align 8
  store i8 32, i8* %1, align 1
  br label %while.cond

while.end:                                        ; preds = %while.cond
  ret void
}

; Function Attrs: nounwind uwtable
define internal i32 @BcopyMline(%struct.mline* %mlf, i32 %xf, %struct.mline* %mlt, i32 %xt, i32 %l, i32 %w) #0 {
entry:
  %mlf.addr = alloca %struct.mline*, align 8
  %xf.addr = alloca i32, align 4
  %mlt.addr = alloca %struct.mline*, align 8
  %xt.addr = alloca i32, align 4
  %l.addr = alloca i32, align 4
  %w.addr = alloca i32, align 4
  %r = alloca i32, align 4
  store %struct.mline* %mlf, %struct.mline** %mlf.addr, align 8
  store i32 %xf, i32* %xf.addr, align 4
  store %struct.mline* %mlt, %struct.mline** %mlt.addr, align 8
  store i32 %xt, i32* %xt.addr, align 4
  store i32 %l, i32* %l.addr, align 4
  store i32 %w, i32* %w.addr, align 4
  store i32 0, i32* %r, align 4
  %0 = load %struct.mline*, %struct.mline** %mlf.addr, align 8
  %image = getelementptr inbounds %struct.mline, %struct.mline* %0, i32 0, i32 0
  %1 = load i8*, i8** %image, align 8
  %2 = load i32, i32* %xf.addr, align 4
  %idx.ext = sext i32 %2 to i64
  %add.ptr = getelementptr inbounds i8, i8* %1, i64 %idx.ext
  %3 = load %struct.mline*, %struct.mline** %mlt.addr, align 8
  %image1 = getelementptr inbounds %struct.mline, %struct.mline* %3, i32 0, i32 0
  %4 = load i8*, i8** %image1, align 8
  %5 = load i32, i32* %xt.addr, align 4
  %idx.ext2 = sext i32 %5 to i64
  %add.ptr3 = getelementptr inbounds i8, i8* %4, i64 %idx.ext2
  %6 = load i32, i32* %l.addr, align 4
  %conv = sext i32 %6 to i64
  call void @bcopy(i8* %add.ptr, i8* %add.ptr3, i64 %conv) #3
  %7 = load %struct.mline*, %struct.mline** %mlf.addr, align 8
  %attr = getelementptr inbounds %struct.mline, %struct.mline* %7, i32 0, i32 1
  %8 = load i8*, i8** %attr, align 8
  %9 = load i8*, i8** @null, align 8
  %cmp = icmp ne i8* %8, %9
  br i1 %cmp, label %land.lhs.true, label %if.end.14

land.lhs.true:                                    ; preds = %entry
  %10 = load %struct.mline*, %struct.mline** %mlt.addr, align 8
  %attr5 = getelementptr inbounds %struct.mline, %struct.mline* %10, i32 0, i32 1
  %11 = load i8*, i8** %attr5, align 8
  %12 = load i8*, i8** @null, align 8
  %cmp6 = icmp eq i8* %11, %12
  br i1 %cmp6, label %if.then, label %if.end.14

if.then:                                          ; preds = %land.lhs.true
  %13 = load i32, i32* %w.addr, align 4
  %conv8 = sext i32 %13 to i64
  %call = call noalias i8* @calloc(i64 %conv8, i64 1) #3
  %14 = load %struct.mline*, %struct.mline** %mlt.addr, align 8
  %attr9 = getelementptr inbounds %struct.mline, %struct.mline* %14, i32 0, i32 1
  store i8* %call, i8** %attr9, align 8
  %cmp10 = icmp eq i8* %call, null
  br i1 %cmp10, label %if.then.12, label %if.end

if.then.12:                                       ; preds = %if.then
  %15 = load i8*, i8** @null, align 8
  %16 = load %struct.mline*, %struct.mline** %mlt.addr, align 8
  %attr13 = getelementptr inbounds %struct.mline, %struct.mline* %16, i32 0, i32 1
  store i8* %15, i8** %attr13, align 8
  store i32 -1, i32* %r, align 4
  br label %if.end

if.end:                                           ; preds = %if.then.12, %if.then
  br label %if.end.14

if.end.14:                                        ; preds = %if.end, %land.lhs.true, %entry
  %17 = load %struct.mline*, %struct.mline** %mlt.addr, align 8
  %attr15 = getelementptr inbounds %struct.mline, %struct.mline* %17, i32 0, i32 1
  %18 = load i8*, i8** %attr15, align 8
  %19 = load i8*, i8** @null, align 8
  %cmp16 = icmp ne i8* %18, %19
  br i1 %cmp16, label %if.then.18, label %if.end.26

if.then.18:                                       ; preds = %if.end.14
  %20 = load %struct.mline*, %struct.mline** %mlf.addr, align 8
  %attr19 = getelementptr inbounds %struct.mline, %struct.mline* %20, i32 0, i32 1
  %21 = load i8*, i8** %attr19, align 8
  %22 = load i32, i32* %xf.addr, align 4
  %idx.ext20 = sext i32 %22 to i64
  %add.ptr21 = getelementptr inbounds i8, i8* %21, i64 %idx.ext20
  %23 = load %struct.mline*, %struct.mline** %mlt.addr, align 8
  %attr22 = getelementptr inbounds %struct.mline, %struct.mline* %23, i32 0, i32 1
  %24 = load i8*, i8** %attr22, align 8
  %25 = load i32, i32* %xt.addr, align 4
  %idx.ext23 = sext i32 %25 to i64
  %add.ptr24 = getelementptr inbounds i8, i8* %24, i64 %idx.ext23
  %26 = load i32, i32* %l.addr, align 4
  %conv25 = sext i32 %26 to i64
  call void @bcopy(i8* %add.ptr21, i8* %add.ptr24, i64 %conv25) #3
  br label %if.end.26

if.end.26:                                        ; preds = %if.then.18, %if.end.14
  %27 = load %struct.mline*, %struct.mline** %mlf.addr, align 8
  %font = getelementptr inbounds %struct.mline, %struct.mline* %27, i32 0, i32 2
  %28 = load i8*, i8** %font, align 8
  %29 = load i8*, i8** @null, align 8
  %cmp27 = icmp ne i8* %28, %29
  br i1 %cmp27, label %land.lhs.true.29, label %if.end.42

land.lhs.true.29:                                 ; preds = %if.end.26
  %30 = load %struct.mline*, %struct.mline** %mlt.addr, align 8
  %font30 = getelementptr inbounds %struct.mline, %struct.mline* %30, i32 0, i32 2
  %31 = load i8*, i8** %font30, align 8
  %32 = load i8*, i8** @null, align 8
  %cmp31 = icmp eq i8* %31, %32
  br i1 %cmp31, label %if.then.33, label %if.end.42

if.then.33:                                       ; preds = %land.lhs.true.29
  %33 = load i32, i32* %w.addr, align 4
  %conv34 = sext i32 %33 to i64
  %call35 = call noalias i8* @calloc(i64 %conv34, i64 1) #3
  %34 = load %struct.mline*, %struct.mline** %mlt.addr, align 8
  %font36 = getelementptr inbounds %struct.mline, %struct.mline* %34, i32 0, i32 2
  store i8* %call35, i8** %font36, align 8
  %cmp37 = icmp eq i8* %call35, null
  br i1 %cmp37, label %if.then.39, label %if.end.41

if.then.39:                                       ; preds = %if.then.33
  %35 = load i8*, i8** @null, align 8
  %36 = load %struct.mline*, %struct.mline** %mlt.addr, align 8
  %font40 = getelementptr inbounds %struct.mline, %struct.mline* %36, i32 0, i32 2
  store i8* %35, i8** %font40, align 8
  store i32 -1, i32* %r, align 4
  br label %if.end.41

if.end.41:                                        ; preds = %if.then.39, %if.then.33
  br label %if.end.42

if.end.42:                                        ; preds = %if.end.41, %land.lhs.true.29, %if.end.26
  %37 = load %struct.mline*, %struct.mline** %mlt.addr, align 8
  %font43 = getelementptr inbounds %struct.mline, %struct.mline* %37, i32 0, i32 2
  %38 = load i8*, i8** %font43, align 8
  %39 = load i8*, i8** @null, align 8
  %cmp44 = icmp ne i8* %38, %39
  br i1 %cmp44, label %if.then.46, label %if.end.54

if.then.46:                                       ; preds = %if.end.42
  %40 = load %struct.mline*, %struct.mline** %mlf.addr, align 8
  %font47 = getelementptr inbounds %struct.mline, %struct.mline* %40, i32 0, i32 2
  %41 = load i8*, i8** %font47, align 8
  %42 = load i32, i32* %xf.addr, align 4
  %idx.ext48 = sext i32 %42 to i64
  %add.ptr49 = getelementptr inbounds i8, i8* %41, i64 %idx.ext48
  %43 = load %struct.mline*, %struct.mline** %mlt.addr, align 8
  %font50 = getelementptr inbounds %struct.mline, %struct.mline* %43, i32 0, i32 2
  %44 = load i8*, i8** %font50, align 8
  %45 = load i32, i32* %xt.addr, align 4
  %idx.ext51 = sext i32 %45 to i64
  %add.ptr52 = getelementptr inbounds i8, i8* %44, i64 %idx.ext51
  %46 = load i32, i32* %l.addr, align 4
  %conv53 = sext i32 %46 to i64
  call void @bcopy(i8* %add.ptr49, i8* %add.ptr52, i64 %conv53) #3
  br label %if.end.54

if.end.54:                                        ; preds = %if.then.46, %if.end.42
  %47 = load %struct.mline*, %struct.mline** %mlf.addr, align 8
  %fontx = getelementptr inbounds %struct.mline, %struct.mline* %47, i32 0, i32 3
  %48 = load i8*, i8** %fontx, align 8
  %49 = load i8*, i8** @null, align 8
  %cmp55 = icmp ne i8* %48, %49
  br i1 %cmp55, label %land.lhs.true.57, label %if.end.70

land.lhs.true.57:                                 ; preds = %if.end.54
  %50 = load %struct.mline*, %struct.mline** %mlt.addr, align 8
  %fontx58 = getelementptr inbounds %struct.mline, %struct.mline* %50, i32 0, i32 3
  %51 = load i8*, i8** %fontx58, align 8
  %52 = load i8*, i8** @null, align 8
  %cmp59 = icmp eq i8* %51, %52
  br i1 %cmp59, label %if.then.61, label %if.end.70

if.then.61:                                       ; preds = %land.lhs.true.57
  %53 = load i32, i32* %w.addr, align 4
  %conv62 = sext i32 %53 to i64
  %call63 = call noalias i8* @calloc(i64 %conv62, i64 1) #3
  %54 = load %struct.mline*, %struct.mline** %mlt.addr, align 8
  %fontx64 = getelementptr inbounds %struct.mline, %struct.mline* %54, i32 0, i32 3
  store i8* %call63, i8** %fontx64, align 8
  %cmp65 = icmp eq i8* %call63, null
  br i1 %cmp65, label %if.then.67, label %if.end.69

if.then.67:                                       ; preds = %if.then.61
  %55 = load i8*, i8** @null, align 8
  %56 = load %struct.mline*, %struct.mline** %mlt.addr, align 8
  %fontx68 = getelementptr inbounds %struct.mline, %struct.mline* %56, i32 0, i32 3
  store i8* %55, i8** %fontx68, align 8
  store i32 -1, i32* %r, align 4
  br label %if.end.69

if.end.69:                                        ; preds = %if.then.67, %if.then.61
  br label %if.end.70

if.end.70:                                        ; preds = %if.end.69, %land.lhs.true.57, %if.end.54
  %57 = load %struct.mline*, %struct.mline** %mlt.addr, align 8
  %fontx71 = getelementptr inbounds %struct.mline, %struct.mline* %57, i32 0, i32 3
  %58 = load i8*, i8** %fontx71, align 8
  %59 = load i8*, i8** @null, align 8
  %cmp72 = icmp ne i8* %58, %59
  br i1 %cmp72, label %if.then.74, label %if.end.82

if.then.74:                                       ; preds = %if.end.70
  %60 = load %struct.mline*, %struct.mline** %mlf.addr, align 8
  %fontx75 = getelementptr inbounds %struct.mline, %struct.mline* %60, i32 0, i32 3
  %61 = load i8*, i8** %fontx75, align 8
  %62 = load i32, i32* %xf.addr, align 4
  %idx.ext76 = sext i32 %62 to i64
  %add.ptr77 = getelementptr inbounds i8, i8* %61, i64 %idx.ext76
  %63 = load %struct.mline*, %struct.mline** %mlt.addr, align 8
  %fontx78 = getelementptr inbounds %struct.mline, %struct.mline* %63, i32 0, i32 3
  %64 = load i8*, i8** %fontx78, align 8
  %65 = load i32, i32* %xt.addr, align 4
  %idx.ext79 = sext i32 %65 to i64
  %add.ptr80 = getelementptr inbounds i8, i8* %64, i64 %idx.ext79
  %66 = load i32, i32* %l.addr, align 4
  %conv81 = sext i32 %66 to i64
  call void @bcopy(i8* %add.ptr77, i8* %add.ptr80, i64 %conv81) #3
  br label %if.end.82

if.end.82:                                        ; preds = %if.then.74, %if.end.70
  %67 = load %struct.mline*, %struct.mline** %mlf.addr, align 8
  %color = getelementptr inbounds %struct.mline, %struct.mline* %67, i32 0, i32 4
  %68 = load i8*, i8** %color, align 8
  %69 = load i8*, i8** @null, align 8
  %cmp83 = icmp ne i8* %68, %69
  br i1 %cmp83, label %land.lhs.true.85, label %if.end.98

land.lhs.true.85:                                 ; preds = %if.end.82
  %70 = load %struct.mline*, %struct.mline** %mlt.addr, align 8
  %color86 = getelementptr inbounds %struct.mline, %struct.mline* %70, i32 0, i32 4
  %71 = load i8*, i8** %color86, align 8
  %72 = load i8*, i8** @null, align 8
  %cmp87 = icmp eq i8* %71, %72
  br i1 %cmp87, label %if.then.89, label %if.end.98

if.then.89:                                       ; preds = %land.lhs.true.85
  %73 = load i32, i32* %w.addr, align 4
  %conv90 = sext i32 %73 to i64
  %call91 = call noalias i8* @calloc(i64 %conv90, i64 1) #3
  %74 = load %struct.mline*, %struct.mline** %mlt.addr, align 8
  %color92 = getelementptr inbounds %struct.mline, %struct.mline* %74, i32 0, i32 4
  store i8* %call91, i8** %color92, align 8
  %cmp93 = icmp eq i8* %call91, null
  br i1 %cmp93, label %if.then.95, label %if.end.97

if.then.95:                                       ; preds = %if.then.89
  %75 = load i8*, i8** @null, align 8
  %76 = load %struct.mline*, %struct.mline** %mlt.addr, align 8
  %color96 = getelementptr inbounds %struct.mline, %struct.mline* %76, i32 0, i32 4
  store i8* %75, i8** %color96, align 8
  store i32 -1, i32* %r, align 4
  br label %if.end.97

if.end.97:                                        ; preds = %if.then.95, %if.then.89
  br label %if.end.98

if.end.98:                                        ; preds = %if.end.97, %land.lhs.true.85, %if.end.82
  %77 = load %struct.mline*, %struct.mline** %mlt.addr, align 8
  %color99 = getelementptr inbounds %struct.mline, %struct.mline* %77, i32 0, i32 4
  %78 = load i8*, i8** %color99, align 8
  %79 = load i8*, i8** @null, align 8
  %cmp100 = icmp ne i8* %78, %79
  br i1 %cmp100, label %if.then.102, label %if.end.110

if.then.102:                                      ; preds = %if.end.98
  %80 = load %struct.mline*, %struct.mline** %mlf.addr, align 8
  %color103 = getelementptr inbounds %struct.mline, %struct.mline* %80, i32 0, i32 4
  %81 = load i8*, i8** %color103, align 8
  %82 = load i32, i32* %xf.addr, align 4
  %idx.ext104 = sext i32 %82 to i64
  %add.ptr105 = getelementptr inbounds i8, i8* %81, i64 %idx.ext104
  %83 = load %struct.mline*, %struct.mline** %mlt.addr, align 8
  %color106 = getelementptr inbounds %struct.mline, %struct.mline* %83, i32 0, i32 4
  %84 = load i8*, i8** %color106, align 8
  %85 = load i32, i32* %xt.addr, align 4
  %idx.ext107 = sext i32 %85 to i64
  %add.ptr108 = getelementptr inbounds i8, i8* %84, i64 %idx.ext107
  %86 = load i32, i32* %l.addr, align 4
  %conv109 = sext i32 %86 to i64
  call void @bcopy(i8* %add.ptr105, i8* %add.ptr108, i64 %conv109) #3
  br label %if.end.110

if.end.110:                                       ; preds = %if.then.102, %if.end.98
  %87 = load i32, i32* %r, align 4
  ret i32 %87
}

; Function Attrs: nounwind uwtable
define void @FreeAltScreen(%struct.win* %p) #0 {
entry:
  %p.addr = alloca %struct.win*, align 8
  %i = alloca i32, align 4
  store %struct.win* %p, %struct.win** %p.addr, align 8
  %0 = load %struct.win*, %struct.win** %p.addr, align 8
  %w_alt = getelementptr inbounds %struct.win, %struct.win* %0, i32 0, i32 92
  %mlines = getelementptr inbounds %struct.anon.2, %struct.anon.2* %w_alt, i32 0, i32 1
  %1 = load %struct.mline*, %struct.mline** %mlines, align 8
  %tobool = icmp ne %struct.mline* %1, null
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.then
  %2 = load i32, i32* %i, align 4
  %3 = load %struct.win*, %struct.win** %p.addr, align 8
  %w_alt1 = getelementptr inbounds %struct.win, %struct.win* %3, i32 0, i32 92
  %height = getelementptr inbounds %struct.anon.2, %struct.anon.2* %w_alt1, i32 0, i32 3
  %4 = load i32, i32* %height, align 4
  %cmp = icmp slt i32 %2, %4
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %5 = load %struct.win*, %struct.win** %p.addr, align 8
  %w_alt2 = getelementptr inbounds %struct.win, %struct.win* %5, i32 0, i32 92
  %mlines3 = getelementptr inbounds %struct.anon.2, %struct.anon.2* %w_alt2, i32 0, i32 1
  %6 = load %struct.mline*, %struct.mline** %mlines3, align 8
  %7 = load i32, i32* %i, align 4
  %idx.ext = sext i32 %7 to i64
  %add.ptr = getelementptr inbounds %struct.mline, %struct.mline* %6, i64 %idx.ext
  call void @FreeMline(%struct.mline* %add.ptr)
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %8 = load i32, i32* %i, align 4
  %inc = add nsw i32 %8, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %9 = load %struct.win*, %struct.win** %p.addr, align 8
  %w_alt4 = getelementptr inbounds %struct.win, %struct.win* %9, i32 0, i32 92
  %mlines5 = getelementptr inbounds %struct.anon.2, %struct.anon.2* %w_alt4, i32 0, i32 1
  %10 = load %struct.mline*, %struct.mline** %mlines5, align 8
  %11 = bitcast %struct.mline* %10 to i8*
  call void @free(i8* %11) #3
  br label %if.end

if.end:                                           ; preds = %for.end, %entry
  %12 = load %struct.win*, %struct.win** %p.addr, align 8
  %w_alt6 = getelementptr inbounds %struct.win, %struct.win* %12, i32 0, i32 92
  %mlines7 = getelementptr inbounds %struct.anon.2, %struct.anon.2* %w_alt6, i32 0, i32 1
  store %struct.mline* null, %struct.mline** %mlines7, align 8
  %13 = load %struct.win*, %struct.win** %p.addr, align 8
  %w_alt8 = getelementptr inbounds %struct.win, %struct.win* %13, i32 0, i32 92
  %width = getelementptr inbounds %struct.anon.2, %struct.anon.2* %w_alt8, i32 0, i32 2
  store i32 0, i32* %width, align 4
  %14 = load %struct.win*, %struct.win** %p.addr, align 8
  %w_alt9 = getelementptr inbounds %struct.win, %struct.win* %14, i32 0, i32 92
  %height10 = getelementptr inbounds %struct.anon.2, %struct.anon.2* %w_alt9, i32 0, i32 3
  store i32 0, i32* %height10, align 4
  %15 = load %struct.win*, %struct.win** %p.addr, align 8
  %w_alt11 = getelementptr inbounds %struct.win, %struct.win* %15, i32 0, i32 92
  %hlines = getelementptr inbounds %struct.anon.2, %struct.anon.2* %w_alt11, i32 0, i32 5
  %16 = load %struct.mline*, %struct.mline** %hlines, align 8
  %tobool12 = icmp ne %struct.mline* %16, null
  br i1 %tobool12, label %if.then.13, label %if.end.27

if.then.13:                                       ; preds = %if.end
  store i32 0, i32* %i, align 4
  br label %for.cond.14

for.cond.14:                                      ; preds = %for.inc.22, %if.then.13
  %17 = load i32, i32* %i, align 4
  %18 = load %struct.win*, %struct.win** %p.addr, align 8
  %w_alt15 = getelementptr inbounds %struct.win, %struct.win* %18, i32 0, i32 92
  %histheight = getelementptr inbounds %struct.anon.2, %struct.anon.2* %w_alt15, i32 0, i32 4
  %19 = load i32, i32* %histheight, align 4
  %cmp16 = icmp slt i32 %17, %19
  br i1 %cmp16, label %for.body.17, label %for.end.24

for.body.17:                                      ; preds = %for.cond.14
  %20 = load %struct.win*, %struct.win** %p.addr, align 8
  %w_alt18 = getelementptr inbounds %struct.win, %struct.win* %20, i32 0, i32 92
  %hlines19 = getelementptr inbounds %struct.anon.2, %struct.anon.2* %w_alt18, i32 0, i32 5
  %21 = load %struct.mline*, %struct.mline** %hlines19, align 8
  %22 = load i32, i32* %i, align 4
  %idx.ext20 = sext i32 %22 to i64
  %add.ptr21 = getelementptr inbounds %struct.mline, %struct.mline* %21, i64 %idx.ext20
  call void @FreeMline(%struct.mline* %add.ptr21)
  br label %for.inc.22

for.inc.22:                                       ; preds = %for.body.17
  %23 = load i32, i32* %i, align 4
  %inc23 = add nsw i32 %23, 1
  store i32 %inc23, i32* %i, align 4
  br label %for.cond.14

for.end.24:                                       ; preds = %for.cond.14
  %24 = load %struct.win*, %struct.win** %p.addr, align 8
  %w_alt25 = getelementptr inbounds %struct.win, %struct.win* %24, i32 0, i32 92
  %hlines26 = getelementptr inbounds %struct.anon.2, %struct.anon.2* %w_alt25, i32 0, i32 5
  %25 = load %struct.mline*, %struct.mline** %hlines26, align 8
  %26 = bitcast %struct.mline* %25 to i8*
  call void @free(i8* %26) #3
  br label %if.end.27

if.end.27:                                        ; preds = %for.end.24, %if.end
  %27 = load %struct.win*, %struct.win** %p.addr, align 8
  %w_alt28 = getelementptr inbounds %struct.win, %struct.win* %27, i32 0, i32 92
  %hlines29 = getelementptr inbounds %struct.anon.2, %struct.anon.2* %w_alt28, i32 0, i32 5
  store %struct.mline* null, %struct.mline** %hlines29, align 8
  %28 = load %struct.win*, %struct.win** %p.addr, align 8
  %w_alt30 = getelementptr inbounds %struct.win, %struct.win* %28, i32 0, i32 92
  %histidx = getelementptr inbounds %struct.anon.2, %struct.anon.2* %w_alt30, i32 0, i32 6
  store i32 0, i32* %histidx, align 4
  %29 = load %struct.win*, %struct.win** %p.addr, align 8
  %w_alt31 = getelementptr inbounds %struct.win, %struct.win* %29, i32 0, i32 92
  %histheight32 = getelementptr inbounds %struct.anon.2, %struct.anon.2* %w_alt31, i32 0, i32 4
  store i32 0, i32* %histheight32, align 4
  ret void
}

; Function Attrs: nounwind uwtable
define void @EnterAltScreen(%struct.win* %p) #0 {
entry:
  %p.addr = alloca %struct.win*, align 8
  store %struct.win* %p, %struct.win** %p.addr, align 8
  %0 = load %struct.win*, %struct.win** %p.addr, align 8
  %w_alt = getelementptr inbounds %struct.win, %struct.win* %0, i32 0, i32 92
  %on = getelementptr inbounds %struct.anon.2, %struct.anon.2* %w_alt, i32 0, i32 0
  %1 = load i32, i32* %on, align 4
  %tobool = icmp ne i32 %1, 0
  br i1 %tobool, label %if.else, label %if.then

if.then:                                          ; preds = %entry
  %2 = load %struct.win*, %struct.win** %p.addr, align 8
  call void @FreeAltScreen(%struct.win* %2)
  %3 = load %struct.win*, %struct.win** %p.addr, align 8
  call void @SwapAltScreen(%struct.win* %3)
  br label %if.end

if.else:                                          ; preds = %entry
  %4 = load %struct.win*, %struct.win** %p.addr, align 8
  %w_layer = getelementptr inbounds %struct.win, %struct.win* %4, i32 0, i32 3
  %l_height = getelementptr inbounds %struct.layer, %struct.layer* %w_layer, i32 0, i32 2
  store i32 0, i32* %l_height, align 4
  %5 = load %struct.win*, %struct.win** %p.addr, align 8
  %w_histheight = getelementptr inbounds %struct.win, %struct.win* %5, i32 0, i32 77
  store i32 0, i32* %w_histheight, align 4
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %6 = load %struct.win*, %struct.win** %p.addr, align 8
  %7 = load %struct.win*, %struct.win** %p.addr, align 8
  %w_alt1 = getelementptr inbounds %struct.win, %struct.win* %7, i32 0, i32 92
  %width = getelementptr inbounds %struct.anon.2, %struct.anon.2* %w_alt1, i32 0, i32 2
  %8 = load i32, i32* %width, align 4
  %9 = load %struct.win*, %struct.win** %p.addr, align 8
  %w_alt2 = getelementptr inbounds %struct.win, %struct.win* %9, i32 0, i32 92
  %height = getelementptr inbounds %struct.anon.2, %struct.anon.2* %w_alt2, i32 0, i32 3
  %10 = load i32, i32* %height, align 4
  %11 = load %struct.win*, %struct.win** %p.addr, align 8
  %w_alt3 = getelementptr inbounds %struct.win, %struct.win* %11, i32 0, i32 92
  %histheight = getelementptr inbounds %struct.anon.2, %struct.anon.2* %w_alt3, i32 0, i32 4
  %12 = load i32, i32* %histheight, align 4
  %call = call i32 @ChangeWindowSize(%struct.win* %6, i32 %8, i32 %10, i32 %12)
  %13 = load %struct.win*, %struct.win** %p.addr, align 8
  %w_alt4 = getelementptr inbounds %struct.win, %struct.win* %13, i32 0, i32 92
  %on5 = getelementptr inbounds %struct.anon.2, %struct.anon.2* %w_alt4, i32 0, i32 0
  store i32 1, i32* %on5, align 4
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @SwapAltScreen(%struct.win* %p) #0 {
entry:
  %p.addr = alloca %struct.win*, align 8
  %ml = alloca %struct.mline*, align 8
  %t = alloca i32, align 4
  store %struct.win* %p, %struct.win** %p.addr, align 8
  br label %do.body

do.body:                                          ; preds = %entry
  %0 = load %struct.win*, %struct.win** %p.addr, align 8
  %w_alt = getelementptr inbounds %struct.win, %struct.win* %0, i32 0, i32 92
  %mlines = getelementptr inbounds %struct.anon.2, %struct.anon.2* %w_alt, i32 0, i32 1
  %1 = load %struct.mline*, %struct.mline** %mlines, align 8
  store %struct.mline* %1, %struct.mline** %ml, align 8
  %2 = load %struct.win*, %struct.win** %p.addr, align 8
  %w_mlines = getelementptr inbounds %struct.win, %struct.win* %2, i32 0, i32 36
  %3 = load %struct.mline*, %struct.mline** %w_mlines, align 8
  %4 = load %struct.win*, %struct.win** %p.addr, align 8
  %w_alt1 = getelementptr inbounds %struct.win, %struct.win* %4, i32 0, i32 92
  %mlines2 = getelementptr inbounds %struct.anon.2, %struct.anon.2* %w_alt1, i32 0, i32 1
  store %struct.mline* %3, %struct.mline** %mlines2, align 8
  %5 = load %struct.mline*, %struct.mline** %ml, align 8
  %6 = load %struct.win*, %struct.win** %p.addr, align 8
  %w_mlines3 = getelementptr inbounds %struct.win, %struct.win* %6, i32 0, i32 36
  store %struct.mline* %5, %struct.mline** %w_mlines3, align 8
  br label %do.end

do.end:                                           ; preds = %do.body
  br label %do.body.4

do.body.4:                                        ; preds = %do.end
  %7 = load %struct.win*, %struct.win** %p.addr, align 8
  %w_alt5 = getelementptr inbounds %struct.win, %struct.win* %7, i32 0, i32 92
  %width = getelementptr inbounds %struct.anon.2, %struct.anon.2* %w_alt5, i32 0, i32 2
  %8 = load i32, i32* %width, align 4
  store i32 %8, i32* %t, align 4
  %9 = load %struct.win*, %struct.win** %p.addr, align 8
  %w_layer = getelementptr inbounds %struct.win, %struct.win* %9, i32 0, i32 3
  %l_width = getelementptr inbounds %struct.layer, %struct.layer* %w_layer, i32 0, i32 1
  %10 = load i32, i32* %l_width, align 4
  %11 = load %struct.win*, %struct.win** %p.addr, align 8
  %w_alt6 = getelementptr inbounds %struct.win, %struct.win* %11, i32 0, i32 92
  %width7 = getelementptr inbounds %struct.anon.2, %struct.anon.2* %w_alt6, i32 0, i32 2
  store i32 %10, i32* %width7, align 4
  %12 = load i32, i32* %t, align 4
  %13 = load %struct.win*, %struct.win** %p.addr, align 8
  %w_layer8 = getelementptr inbounds %struct.win, %struct.win* %13, i32 0, i32 3
  %l_width9 = getelementptr inbounds %struct.layer, %struct.layer* %w_layer8, i32 0, i32 1
  store i32 %12, i32* %l_width9, align 4
  br label %do.end.10

do.end.10:                                        ; preds = %do.body.4
  br label %do.body.11

do.body.11:                                       ; preds = %do.end.10
  %14 = load %struct.win*, %struct.win** %p.addr, align 8
  %w_alt12 = getelementptr inbounds %struct.win, %struct.win* %14, i32 0, i32 92
  %height = getelementptr inbounds %struct.anon.2, %struct.anon.2* %w_alt12, i32 0, i32 3
  %15 = load i32, i32* %height, align 4
  store i32 %15, i32* %t, align 4
  %16 = load %struct.win*, %struct.win** %p.addr, align 8
  %w_layer13 = getelementptr inbounds %struct.win, %struct.win* %16, i32 0, i32 3
  %l_height = getelementptr inbounds %struct.layer, %struct.layer* %w_layer13, i32 0, i32 2
  %17 = load i32, i32* %l_height, align 4
  %18 = load %struct.win*, %struct.win** %p.addr, align 8
  %w_alt14 = getelementptr inbounds %struct.win, %struct.win* %18, i32 0, i32 92
  %height15 = getelementptr inbounds %struct.anon.2, %struct.anon.2* %w_alt14, i32 0, i32 3
  store i32 %17, i32* %height15, align 4
  %19 = load i32, i32* %t, align 4
  %20 = load %struct.win*, %struct.win** %p.addr, align 8
  %w_layer16 = getelementptr inbounds %struct.win, %struct.win* %20, i32 0, i32 3
  %l_height17 = getelementptr inbounds %struct.layer, %struct.layer* %w_layer16, i32 0, i32 2
  store i32 %19, i32* %l_height17, align 4
  br label %do.end.18

do.end.18:                                        ; preds = %do.body.11
  br label %do.body.19

do.body.19:                                       ; preds = %do.end.18
  %21 = load %struct.win*, %struct.win** %p.addr, align 8
  %w_alt20 = getelementptr inbounds %struct.win, %struct.win* %21, i32 0, i32 92
  %histheight = getelementptr inbounds %struct.anon.2, %struct.anon.2* %w_alt20, i32 0, i32 4
  %22 = load i32, i32* %histheight, align 4
  store i32 %22, i32* %t, align 4
  %23 = load %struct.win*, %struct.win** %p.addr, align 8
  %w_histheight = getelementptr inbounds %struct.win, %struct.win* %23, i32 0, i32 77
  %24 = load i32, i32* %w_histheight, align 4
  %25 = load %struct.win*, %struct.win** %p.addr, align 8
  %w_alt21 = getelementptr inbounds %struct.win, %struct.win* %25, i32 0, i32 92
  %histheight22 = getelementptr inbounds %struct.anon.2, %struct.anon.2* %w_alt21, i32 0, i32 4
  store i32 %24, i32* %histheight22, align 4
  %26 = load i32, i32* %t, align 4
  %27 = load %struct.win*, %struct.win** %p.addr, align 8
  %w_histheight23 = getelementptr inbounds %struct.win, %struct.win* %27, i32 0, i32 77
  store i32 %26, i32* %w_histheight23, align 4
  br label %do.end.24

do.end.24:                                        ; preds = %do.body.19
  br label %do.body.25

do.body.25:                                       ; preds = %do.end.24
  %28 = load %struct.win*, %struct.win** %p.addr, align 8
  %w_alt26 = getelementptr inbounds %struct.win, %struct.win* %28, i32 0, i32 92
  %hlines = getelementptr inbounds %struct.anon.2, %struct.anon.2* %w_alt26, i32 0, i32 5
  %29 = load %struct.mline*, %struct.mline** %hlines, align 8
  store %struct.mline* %29, %struct.mline** %ml, align 8
  %30 = load %struct.win*, %struct.win** %p.addr, align 8
  %w_hlines = getelementptr inbounds %struct.win, %struct.win* %30, i32 0, i32 79
  %31 = load %struct.mline*, %struct.mline** %w_hlines, align 8
  %32 = load %struct.win*, %struct.win** %p.addr, align 8
  %w_alt27 = getelementptr inbounds %struct.win, %struct.win* %32, i32 0, i32 92
  %hlines28 = getelementptr inbounds %struct.anon.2, %struct.anon.2* %w_alt27, i32 0, i32 5
  store %struct.mline* %31, %struct.mline** %hlines28, align 8
  %33 = load %struct.mline*, %struct.mline** %ml, align 8
  %34 = load %struct.win*, %struct.win** %p.addr, align 8
  %w_hlines29 = getelementptr inbounds %struct.win, %struct.win* %34, i32 0, i32 79
  store %struct.mline* %33, %struct.mline** %w_hlines29, align 8
  br label %do.end.30

do.end.30:                                        ; preds = %do.body.25
  br label %do.body.31

do.body.31:                                       ; preds = %do.end.30
  %35 = load %struct.win*, %struct.win** %p.addr, align 8
  %w_alt32 = getelementptr inbounds %struct.win, %struct.win* %35, i32 0, i32 92
  %histidx = getelementptr inbounds %struct.anon.2, %struct.anon.2* %w_alt32, i32 0, i32 6
  %36 = load i32, i32* %histidx, align 4
  store i32 %36, i32* %t, align 4
  %37 = load %struct.win*, %struct.win** %p.addr, align 8
  %w_histidx = getelementptr inbounds %struct.win, %struct.win* %37, i32 0, i32 78
  %38 = load i32, i32* %w_histidx, align 4
  %39 = load %struct.win*, %struct.win** %p.addr, align 8
  %w_alt33 = getelementptr inbounds %struct.win, %struct.win* %39, i32 0, i32 92
  %histidx34 = getelementptr inbounds %struct.anon.2, %struct.anon.2* %w_alt33, i32 0, i32 6
  store i32 %38, i32* %histidx34, align 4
  %40 = load i32, i32* %t, align 4
  %41 = load %struct.win*, %struct.win** %p.addr, align 8
  %w_histidx35 = getelementptr inbounds %struct.win, %struct.win* %41, i32 0, i32 78
  store i32 %40, i32* %w_histidx35, align 4
  br label %do.end.36

do.end.36:                                        ; preds = %do.body.31
  ret void
}

; Function Attrs: nounwind uwtable
define void @LeaveAltScreen(%struct.win* %p) #0 {
entry:
  %p.addr = alloca %struct.win*, align 8
  store %struct.win* %p, %struct.win** %p.addr, align 8
  %0 = load %struct.win*, %struct.win** %p.addr, align 8
  %w_alt = getelementptr inbounds %struct.win, %struct.win* %0, i32 0, i32 92
  %on = getelementptr inbounds %struct.anon.2, %struct.anon.2* %w_alt, i32 0, i32 0
  %1 = load i32, i32* %on, align 4
  %tobool = icmp ne i32 %1, 0
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  br label %return

if.end:                                           ; preds = %entry
  %2 = load %struct.win*, %struct.win** %p.addr, align 8
  call void @SwapAltScreen(%struct.win* %2)
  %3 = load %struct.win*, %struct.win** %p.addr, align 8
  %4 = load %struct.win*, %struct.win** %p.addr, align 8
  %w_alt1 = getelementptr inbounds %struct.win, %struct.win* %4, i32 0, i32 92
  %width = getelementptr inbounds %struct.anon.2, %struct.anon.2* %w_alt1, i32 0, i32 2
  %5 = load i32, i32* %width, align 4
  %6 = load %struct.win*, %struct.win** %p.addr, align 8
  %w_alt2 = getelementptr inbounds %struct.win, %struct.win* %6, i32 0, i32 92
  %height = getelementptr inbounds %struct.anon.2, %struct.anon.2* %w_alt2, i32 0, i32 3
  %7 = load i32, i32* %height, align 4
  %8 = load %struct.win*, %struct.win** %p.addr, align 8
  %w_alt3 = getelementptr inbounds %struct.win, %struct.win* %8, i32 0, i32 92
  %histheight = getelementptr inbounds %struct.anon.2, %struct.anon.2* %w_alt3, i32 0, i32 4
  %9 = load i32, i32* %histheight, align 4
  %call = call i32 @ChangeWindowSize(%struct.win* %3, i32 %5, i32 %7, i32 %9)
  %10 = load %struct.win*, %struct.win** %p.addr, align 8
  call void @FreeAltScreen(%struct.win* %10)
  %11 = load %struct.win*, %struct.win** %p.addr, align 8
  %w_alt4 = getelementptr inbounds %struct.win, %struct.win* %11, i32 0, i32 92
  %on5 = getelementptr inbounds %struct.anon.2, %struct.anon.2* %w_alt4, i32 0, i32 0
  store i32 0, i32* %on5, align 4
  br label %return

return:                                           ; preds = %if.end, %if.then
  ret void
}

; Function Attrs: noreturn
declare void @Panic(i32, i8*, ...) #4

; Function Attrs: nounwind
declare void @llvm.memset.p0i8.i64(i8* nocapture, i8, i64, i32, i1) #3

; Function Attrs: nounwind
declare void @bcopy(i8*, i8*, i64) #1

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind }
attributes #4 = { noreturn "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #5 = { noreturn }

!llvm.ident = !{!0}

!0 = !{!"clang version 3.7.0 (tags/RELEASE_370/final)"}
