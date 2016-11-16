; ModuleID = './mark.bc'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.LayFuncs = type { void (i8**, i32*)*, void ()*, void (i32, i32, i32, i32)*, void (i32, i32, i32, i32)*, i32 (i32, i32, i32, %struct.mchar*, i32)*, i32 (i32, i32)*, void ()*, void (i8*)* }
%struct.mchar = type { i8, i8, i8, i8, i8, i8 }
%struct.win = type { %struct.win*, i32, i8*, %struct.layer, %struct.layer*, i32, %struct.pseudowin*, %struct.display*, %struct.display*, i32, %struct.event, %struct.event, %struct.event, %struct.event, i32, i32, [4096 x i8], i32, [4096 x i8], i32, i32, i8*, i8*, [768 x i8], i32, %struct.win*, i32, [64 x i32], i32, i32, %struct.acluser*, [3 x i8*], i8*, i8*, i32, i32, %struct.mline*, %struct.mchar, i8, i8, i8, i32, i32, [4 x i32], i32, %struct.cursor, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i8*, i32, i32, i32, i32, i32, [768 x i8], i8*, i8*, i32, i32, %struct.logfile*, i32, i32, i32, i32, i8, i8, i32, i32, i32, i32, %struct.mline*, %struct.paster, i32, i32, [64 x i8*], i8*, i8*, i32, i8*, %struct.utmp, [768 x i8], i32, %struct.display*, %struct.anon.2, %struct.event, i32 }
%struct.layer = type { %struct.canvas*, i32, i32, i32, i32, i32, %struct.LayFuncs*, i8*, %struct.layer*, %struct.layer*, i32, i32, %struct.anon, %struct.anon.0 }
%struct.canvas = type { %struct.canvas*, %struct.display*, %struct.canvas*, %struct.canvas*, %struct.canvas*, %struct.canvas*, i32, i32, %struct.viewport*, %struct.layer*, %struct.canvas*, %struct.layer, i32, i32, i32, i32, i32, i32, %struct.event }
%struct.viewport = type { %struct.viewport*, %struct.canvas*, i32, i32, i32, i32, i32, i32 }
%struct.anon = type { [3 x i8], i32, i32 }
%struct.anon.0 = type { i8, i32*, i32*, i32, i32, i32 }
%struct.pseudowin = type { i32, i32, i32, %struct.event, %struct.event, [768 x i8], [768 x i8], [4096 x i8], i32 }
%struct.acluser = type { %struct.acluser*, [257 x i8], i8*, i32, i32, i32, i32, i32, %struct.plop, i32, [3 x i8*], %struct.aclusergroup* }
%struct.plop = type { i8*, i32, i32 }
%struct.aclusergroup = type { %struct.acluser*, %struct.aclusergroup* }
%struct.cursor = type { i32, i32, i32, %struct.mchar, i32, i32, [4 x i32] }
%struct.logfile = type opaque
%struct.mline = type { i8*, i8*, i8*, i8*, i8* }
%struct.paster = type { i8*, i8*, i32, %struct.layer*, %struct.event }
%struct.utmp = type { i16, i32, [32 x i8], [4 x i8], [32 x i8], [256 x i8], %struct.exit_status, i32, %struct.anon.1, [4 x i32], [20 x i8] }
%struct.exit_status = type { i16, i16 }
%struct.anon.1 = type { i32, i32 }
%struct.display = type { %struct.display*, %struct.acluser*, %struct.canvas, %struct.canvas*, %struct.canvas*, %struct.layout*, void (i8*, i32)*, i8*, i32, i32, %struct.win*, %struct.win*, i32, [33 x i8], i8*, i8, i32, i32, i32, i32, i32, i32, i32, i32, %struct.mchar, i32, i8, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, %struct.mchar, %struct.timeval, i32, i8, i32, i8*, i32, i32, i32, i32, i32, i32, %struct.event, %struct.event, i32, %struct.action*, i32, [4096 x i8], i32, %struct.event, %struct.event, %struct.event, %struct.mode, %struct.mode, i32, i32, i8*, i32, i32, i32, i8*, i32, i32, i32, i32, i8*, i8*, i32, i8*, %struct.event, i32, i32, [201 x %union.tcu], [6 x i8*], [6 x i8], i32, i16, [256 x i8], i8***, i32, i32, i32, i32, i32, i32, i32, i32, i32, i8*, %struct.utmp, i32, i32, i32, %struct.event, i32, %struct.event }
%struct.layout = type { %struct.layout*, i8*, i32, %struct.canvas, %struct.canvas*, %struct.canvas*, i32 }
%struct.timeval = type { i64, i64 }
%struct.action = type { i32, i8**, i32*, i32 }
%struct.mode = type { %struct.termios }
%struct.termios = type { i32, i32, i32, i32, i8, [32 x i8], i32, i32 }
%union.tcu = type { i8* }
%struct.anon.2 = type { i32, %struct.mline*, i32, i32, i32, %struct.mline*, i32, %struct.cursor }
%struct.event = type { %struct.event*, void (%struct.event*, i8*)*, i8*, i32, i32, i32, %struct.timeval, i32, i32, i32*, i32* }
%struct.markdata = type { %struct.win*, %struct.acluser*, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [100 x i8], i32, [200 x i8], i32, i32, i32, i32, %struct.anon.3 }
%struct.anon.3 = type { i32, i32, i32 }

@pastefont = global i32 1, align 4
@MarkLf = global %struct.LayFuncs { void (i8**, i32*)* @MarkProcess, void ()* @MarkAbort, void (i32, i32, i32, i32)* @MarkRedisplayLine, void (i32, i32, i32, i32)* @DefClearLine, i32 (i32, i32, i32, %struct.mchar*, i32)* @MarkRewrite, i32 (i32, i32)* @DefResize, void ()* @DefRestore, void (i8*)* null }, align 8
@join_with_cr = global i32 0, align 4
@compacthist = global i32 0, align 4
@fore = external global %struct.win*, align 8
@display = external global %struct.display*, align 8
@.str = private unnamed_addr constant [28 x i8] c"Not enough memory... Sorry.\00", align 1
@flayer = external global %struct.layer*, align 8
@markdata = internal global %struct.markdata* null, align 8
@.str.1 = private unnamed_addr constant [43 x i8] c"Copy mode - Column %d Line %d(+%d) (%d,%d)\00", align 1
@mchar_so = external global %struct.mchar, align 1
@mark_key_tab = common global [256 x i8] zeroinitializer, align 16
@.str.2 = private unnamed_addr constant [23 x i8] c"Column %d Line %d(+%d)\00", align 1
@.str.3 = private unnamed_addr constant [31 x i8] c"Column %d(%d..%d) Line %d(+%d)\00", align 1
@.str.4 = private unnamed_addr constant [12 x i8] c":set append\00", align 1
@.str.5 = private unnamed_addr constant [14 x i8] c":set noappend\00", align 1
@.str.6 = private unnamed_addr constant [10 x i8] c":set nonu\00", align 1
@.str.7 = private unnamed_addr constant [8 x i8] c":set nu\00", align 1
@.str.8 = private unnamed_addr constant [23 x i8] c"Multiple lines (CR/LF)\00", align 1
@.str.9 = private unnamed_addr constant [20 x i8] c"Multiple lines (LF)\00", align 1
@.str.10 = private unnamed_addr constant [13 x i8] c"Lines joined\00", align 1
@.str.11 = private unnamed_addr constant [25 x i8] c"Lines joined with blanks\00", align 1
@.str.12 = private unnamed_addr constant [24 x i8] c"Lines joined with comma\00", align 1
@.str.13 = private unnamed_addr constant [35 x i8] c"First mark set - Column %d Line %d\00", align 1
@.str.14 = private unnamed_addr constant [33 x i8] c"Appended %d characters to buffer\00", align 1
@.str.15 = private unnamed_addr constant [33 x i8] c"Copied %d characters into buffer\00", align 1
@.str.16 = private unnamed_addr constant [18 x i8] c"Copy mode aborted\00", align 1
@.str.17 = private unnamed_addr constant [4 x i8] c"\1B(B\00", align 1

; Function Attrs: nounwind uwtable
define internal void @MarkProcess(i8** %inbufp, i32* %inlenp) #0 {
entry:
  %inbufp.addr = alloca i8**, align 8
  %inlenp.addr = alloca i32*, align 8
  %inbuf = alloca i8*, align 8
  %pt = alloca i8*, align 8
  %inlen = alloca i32, align 4
  %cx = alloca i32, align 4
  %cy = alloca i32, align 4
  %x2 = alloca i32, align 4
  %y2 = alloca i32, align 4
  %j = alloca i32, align 4
  %yend = alloca i32, align 4
  %newcopylen = alloca i32, align 4
  %od = alloca i32, align 4
  %in_mark = alloca i32, align 4
  %rep_cnt = alloca i32, align 4
  %md_user = alloca %struct.acluser*, align 8
  %ch = alloca i8, align 1
  %r = alloca i32, align 4
  %append_mode515 = alloca i32, align 4
  %write_buffer517 = alloca i32, align 4
  %oldlay = alloca %struct.layer*, align 8
  %oldcvlist = alloca %struct.canvas*, align 8
  %cv = alloca %struct.canvas*, align 8
  %button = alloca i32, align 4
  store i8** %inbufp, i8*** %inbufp.addr, align 8
  store i32* %inlenp, i32** %inlenp.addr, align 8
  store i32 0, i32* %newcopylen, align 4
  %0 = load %struct.layer*, %struct.layer** @flayer, align 8
  %l_data = getelementptr inbounds %struct.layer, %struct.layer* %0, i32 0, i32 7
  %1 = load i8*, i8** %l_data, align 8
  %2 = bitcast i8* %1 to %struct.markdata*
  store %struct.markdata* %2, %struct.markdata** @markdata, align 8
  %3 = load %struct.markdata*, %struct.markdata** @markdata, align 8
  %md_window = getelementptr inbounds %struct.markdata, %struct.markdata* %3, i32 0, i32 0
  %4 = load %struct.win*, %struct.win** %md_window, align 8
  store %struct.win* %4, %struct.win** @fore, align 8
  %5 = load %struct.markdata*, %struct.markdata** @markdata, align 8
  %md_user1 = getelementptr inbounds %struct.markdata, %struct.markdata* %5, i32 0, i32 1
  %6 = load %struct.acluser*, %struct.acluser** %md_user1, align 8
  store %struct.acluser* %6, %struct.acluser** %md_user, align 8
  %7 = load i8**, i8*** %inbufp.addr, align 8
  %cmp = icmp eq i8** %7, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  call void @MarkAbort()
  br label %return

if.end:                                           ; preds = %entry
  %8 = load %struct.layer*, %struct.layer** @flayer, align 8
  %9 = load %struct.markdata*, %struct.markdata** @markdata, align 8
  %cx2 = getelementptr inbounds %struct.markdata, %struct.markdata* %9, i32 0, i32 2
  %10 = load i32, i32* %cx2, align 4
  %11 = load %struct.markdata*, %struct.markdata** @markdata, align 8
  %cy3 = getelementptr inbounds %struct.markdata, %struct.markdata* %11, i32 0, i32 3
  %12 = load i32, i32* %cy3, align 4
  %13 = load %struct.markdata*, %struct.markdata** @markdata, align 8
  %hist_offset = getelementptr inbounds %struct.markdata, %struct.markdata* %13, i32 0, i32 13
  %14 = load i32, i32* %hist_offset, align 4
  %sub = sub nsw i32 %12, %14
  call void @LGotoPos(%struct.layer* %8, i32 %10, i32 %sub)
  %15 = load i8**, i8*** %inbufp.addr, align 8
  %16 = load i8*, i8** %15, align 8
  store i8* %16, i8** %inbuf, align 8
  %17 = load i32*, i32** %inlenp.addr, align 8
  %18 = load i32, i32* %17, align 4
  store i32 %18, i32* %inlen, align 4
  %19 = load i8*, i8** %inbuf, align 8
  store i8* %19, i8** %pt, align 8
  store i32 1, i32* %in_mark, align 4
  br label %while.cond

while.cond:                                       ; preds = %if.end.722, %do.end.63, %cond.end, %if.then.31, %if.else.11, %if.end
  %20 = load i32, i32* %in_mark, align 4
  %tobool = icmp ne i32 %20, 0
  br i1 %tobool, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %while.cond
  %21 = load i32, i32* %inlen, align 4
  %tobool4 = icmp ne i32 %21, 0
  br label %land.end

land.end:                                         ; preds = %land.rhs, %while.cond
  %22 = phi i1 [ false, %while.cond ], [ %tobool4, %land.rhs ]
  br i1 %22, label %while.body, label %while.end

while.body:                                       ; preds = %land.end
  %23 = load i8*, i8** %pt, align 8
  %incdec.ptr = getelementptr inbounds i8, i8* %23, i32 1
  store i8* %incdec.ptr, i8** %pt, align 8
  %24 = load i8, i8* %23, align 1
  store i8 %24, i8* %ch, align 1
  %25 = load i32, i32* %inlen, align 4
  %dec = add nsw i32 %25, -1
  store i32 %dec, i32* %inlen, align 4
  %26 = load %struct.layer*, %struct.layer** @flayer, align 8
  %l_mouseevent = getelementptr inbounds %struct.layer, %struct.layer* %26, i32 0, i32 12
  %start = getelementptr inbounds %struct.anon, %struct.anon* %l_mouseevent, i32 0, i32 2
  %27 = load i32, i32* %start, align 4
  %tobool5 = icmp ne i32 %27, 0
  br i1 %tobool5, label %if.then.6, label %if.end.14

if.then.6:                                        ; preds = %while.body
  %28 = load %struct.layer*, %struct.layer** @flayer, align 8
  %29 = load i8, i8* %ch, align 1
  %call = call i32 @LayProcessMouse(%struct.layer* %28, i8 zeroext %29)
  store i32 %call, i32* %r, align 4
  %30 = load i32, i32* %r, align 4
  %cmp7 = icmp eq i32 %30, -1
  br i1 %cmp7, label %if.then.8, label %if.else

if.then.8:                                        ; preds = %if.then.6
  %31 = load %struct.layer*, %struct.layer** @flayer, align 8
  call void @LayProcessMouseSwitch(%struct.layer* %31, i32 0)
  br label %if.end.13

if.else:                                          ; preds = %if.then.6
  %32 = load i32, i32* %r, align 4
  %tobool9 = icmp ne i32 %32, 0
  br i1 %tobool9, label %if.then.10, label %if.else.11

if.then.10:                                       ; preds = %if.else
  store i8 -110, i8* %ch, align 1
  br label %if.end.12

if.else.11:                                       ; preds = %if.else
  br label %while.cond

if.end.12:                                        ; preds = %if.then.10
  br label %if.end.13

if.end.13:                                        ; preds = %if.end.12, %if.then.8
  br label %if.end.14

if.end.14:                                        ; preds = %if.end.13, %while.body
  %33 = load i8, i8* %ch, align 1
  %conv = zext i8 %33 to i32
  %idxprom = sext i32 %conv to i64
  %arrayidx = getelementptr inbounds [256 x i8], [256 x i8]* @mark_key_tab, i32 0, i64 %idxprom
  %34 = load i8, i8* %arrayidx, align 1
  %conv15 = zext i8 %34 to i32
  store i32 %conv15, i32* %od, align 4
  %35 = load %struct.markdata*, %struct.markdata** @markdata, align 8
  %rep_cnt16 = getelementptr inbounds %struct.markdata, %struct.markdata* %35, i32 0, i32 10
  %36 = load i32, i32* %rep_cnt16, align 4
  store i32 %36, i32* %rep_cnt, align 4
  %37 = load i32, i32* %od, align 4
  %cmp17 = icmp sge i32 %37, 48
  br i1 %cmp17, label %land.lhs.true, label %if.end.35

land.lhs.true:                                    ; preds = %if.end.14
  %38 = load i32, i32* %od, align 4
  %cmp19 = icmp sle i32 %38, 57
  br i1 %cmp19, label %land.lhs.true.21, label %if.end.35

land.lhs.true.21:                                 ; preds = %land.lhs.true
  %39 = load %struct.markdata*, %struct.markdata** @markdata, align 8
  %f_cmd = getelementptr inbounds %struct.markdata, %struct.markdata* %39, i32 0, i32 21
  %flag = getelementptr inbounds %struct.anon.3, %struct.anon.3* %f_cmd, i32 0, i32 0
  %40 = load i32, i32* %flag, align 4
  %tobool22 = icmp ne i32 %40, 0
  br i1 %tobool22, label %if.end.35, label %if.then.23

if.then.23:                                       ; preds = %land.lhs.true.21
  %41 = load i32, i32* %rep_cnt, align 4
  %cmp24 = icmp slt i32 %41, 1001
  br i1 %cmp24, label %land.lhs.true.26, label %if.end.34

land.lhs.true.26:                                 ; preds = %if.then.23
  %42 = load i32, i32* %od, align 4
  %cmp27 = icmp ne i32 %42, 48
  br i1 %cmp27, label %if.then.31, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %land.lhs.true.26
  %43 = load i32, i32* %rep_cnt, align 4
  %cmp29 = icmp ne i32 %43, 0
  br i1 %cmp29, label %if.then.31, label %if.end.34

if.then.31:                                       ; preds = %lor.lhs.false, %land.lhs.true.26
  %44 = load i32, i32* %rep_cnt, align 4
  %mul = mul nsw i32 10, %44
  %45 = load i32, i32* %od, align 4
  %add = add nsw i32 %mul, %45
  %sub32 = sub nsw i32 %add, 48
  %46 = load %struct.markdata*, %struct.markdata** @markdata, align 8
  %rep_cnt33 = getelementptr inbounds %struct.markdata, %struct.markdata* %46, i32 0, i32 10
  store i32 %sub32, i32* %rep_cnt33, align 4
  br label %while.cond

if.end.34:                                        ; preds = %lor.lhs.false, %if.then.23
  br label %if.end.35

if.end.35:                                        ; preds = %if.end.34, %land.lhs.true.21, %land.lhs.true, %if.end.14
  %47 = load %struct.markdata*, %struct.markdata** @markdata, align 8
  %cx36 = getelementptr inbounds %struct.markdata, %struct.markdata* %47, i32 0, i32 2
  %48 = load i32, i32* %cx36, align 4
  store i32 %48, i32* %cx, align 4
  %49 = load %struct.markdata*, %struct.markdata** @markdata, align 8
  %cy37 = getelementptr inbounds %struct.markdata, %struct.markdata* %49, i32 0, i32 3
  %50 = load i32, i32* %cy37, align 4
  store i32 %50, i32* %cy, align 4
  %51 = load %struct.markdata*, %struct.markdata** @markdata, align 8
  %f_cmd38 = getelementptr inbounds %struct.markdata, %struct.markdata* %51, i32 0, i32 21
  %flag39 = getelementptr inbounds %struct.anon.3, %struct.anon.3* %f_cmd38, i32 0, i32 0
  %52 = load i32, i32* %flag39, align 4
  %tobool40 = icmp ne i32 %52, 0
  br i1 %tobool40, label %if.then.41, label %if.end.57

if.then.41:                                       ; preds = %if.end.35
  br label %do.body

do.body:                                          ; preds = %if.then.41
  br label %do.end

do.end:                                           ; preds = %do.body
  %53 = load %struct.markdata*, %struct.markdata** @markdata, align 8
  %f_cmd42 = getelementptr inbounds %struct.markdata, %struct.markdata* %53, i32 0, i32 21
  %flag43 = getelementptr inbounds %struct.anon.3, %struct.anon.3* %f_cmd42, i32 0, i32 0
  store i32 0, i32* %flag43, align 4
  %54 = load %struct.markdata*, %struct.markdata** @markdata, align 8
  %rep_cnt44 = getelementptr inbounds %struct.markdata, %struct.markdata* %54, i32 0, i32 10
  store i32 0, i32* %rep_cnt44, align 4
  %55 = load i32, i32* %od, align 4
  %idxprom45 = sext i32 %55 to i64
  %call46 = call i16** @__ctype_b_loc() #5
  %56 = load i16*, i16** %call46, align 8
  %arrayidx47 = getelementptr inbounds i16, i16* %56, i64 %idxprom45
  %57 = load i16, i16* %arrayidx47, align 2
  %conv48 = zext i16 %57 to i32
  %and = and i32 %conv48, 32768
  %tobool49 = icmp ne i32 %and, 0
  br i1 %tobool49, label %if.then.50, label %if.end.56

if.then.50:                                       ; preds = %do.end
  %58 = load i32, i32* %od, align 4
  %59 = load %struct.markdata*, %struct.markdata** @markdata, align 8
  %f_cmd51 = getelementptr inbounds %struct.markdata, %struct.markdata* %59, i32 0, i32 21
  %target = getelementptr inbounds %struct.anon.3, %struct.anon.3* %f_cmd51, i32 0, i32 1
  store i32 %58, i32* %target, align 4
  %60 = load i32, i32* %rep_cnt, align 4
  %tobool52 = icmp ne i32 %60, 0
  br i1 %tobool52, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.then.50
  %61 = load i32, i32* %rep_cnt, align 4
  br label %cond.end

cond.false:                                       ; preds = %if.then.50
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %61, %cond.true ], [ 1, %cond.false ]
  store i32 %cond, i32* %rep_cnt, align 4
  %62 = load %struct.markdata*, %struct.markdata** @markdata, align 8
  %f_cmd53 = getelementptr inbounds %struct.markdata, %struct.markdata* %62, i32 0, i32 21
  %direction = getelementptr inbounds %struct.anon.3, %struct.anon.3* %f_cmd53, i32 0, i32 2
  %63 = load i32, i32* %direction, align 4
  %64 = load i32, i32* %od, align 4
  %conv54 = trunc i32 %64 to i8
  %65 = load i32, i32* %rep_cnt, align 4
  %call55 = call i32 @nextchar(i32* %cx, i32* %cy, i32 %63, i8 signext %conv54, i32 %65)
  %66 = load i32, i32* %cx, align 4
  %67 = load i32, i32* %cy, align 4
  call void @revto(i32 %66, i32 %67)
  br label %while.cond

if.end.56:                                        ; preds = %do.end
  br label %if.end.57

if.end.57:                                        ; preds = %if.end.56, %if.end.35
  br label %processchar

processchar:                                      ; preds = %if.then.714, %if.end.57
  %68 = load i32, i32* %od, align 4
  switch i32 %68, label %sw.default [
    i32 102, label %sw.bb
    i32 70, label %sw.bb
    i32 116, label %sw.bb
    i32 84, label %sw.bb
    i32 59, label %sw.bb.64
    i32 44, label %sw.bb.64
    i32 111, label %sw.bb.87
    i32 120, label %sw.bb.87
    i32 12, label %sw.bb.97
    i32 130, label %sw.bb.100
    i32 8, label %sw.bb.100
    i32 104, label %sw.bb.100
    i32 142, label %sw.bb.106
    i32 14, label %sw.bb.106
    i32 106, label %sw.bb.106
    i32 43, label %sw.bb.112
    i32 45, label %sw.bb.130
    i32 94, label %sw.bb.141
    i32 10, label %sw.bb.143
    i32 144, label %sw.bb.145
    i32 16, label %sw.bb.145
    i32 107, label %sw.bb.145
    i32 134, label %sw.bb.151
    i32 108, label %sw.bb.151
    i32 1, label %sw.bb.157
    i32 48, label %sw.bb.157
    i32 4, label %sw.bb.159
    i32 36, label %sw.bb.170
    i32 18, label %sw.bb.172
    i32 19, label %sw.bb.173
    i32 21, label %sw.bb.174
    i32 7, label %sw.bb.186
    i32 2, label %sw.bb.212
    i32 6, label %sw.bb.221
    i32 5, label %sw.bb.230
    i32 25, label %sw.bb.247
    i32 64, label %sw.bb.270
    i32 37, label %sw.bb.271
    i32 129, label %sw.bb.291
    i32 103, label %sw.bb.291
    i32 133, label %sw.bb.292
    i32 71, label %sw.bb.292
    i32 72, label %sw.bb.307
    i32 77, label %sw.bb.311
    i32 76, label %sw.bb.319
    i32 124, label %sw.bb.326
    i32 119, label %sw.bb.328
    i32 101, label %sw.bb.333
    i32 69, label %sw.bb.333
    i32 98, label %sw.bb.341
    i32 66, label %sw.bb.341
    i32 97, label %sw.bb.350
    i32 118, label %sw.bb.358
    i32 86, label %sw.bb.358
    i32 99, label %sw.bb.365
    i32 67, label %sw.bb.365
    i32 74, label %sw.bb.424
    i32 47, label %sw.bb.436
    i32 63, label %sw.bb.437
    i32 110, label %sw.bb.438
    i32 78, label %sw.bb.439
    i32 121, label %sw.bb.445
    i32 89, label %sw.bb.445
    i32 87, label %sw.bb.470
    i32 65, label %sw.bb.491
    i32 62, label %sw.bb.497
    i32 32, label %sw.bb.502
    i32 13, label %sw.bb.502
    i32 146, label %sw.bb.680
  ]

sw.bb:                                            ; preds = %processchar, %processchar, %processchar, %processchar
  %69 = load %struct.markdata*, %struct.markdata** @markdata, align 8
  %f_cmd58 = getelementptr inbounds %struct.markdata, %struct.markdata* %69, i32 0, i32 21
  %flag59 = getelementptr inbounds %struct.anon.3, %struct.anon.3* %f_cmd58, i32 0, i32 0
  store i32 1, i32* %flag59, align 4
  %70 = load i32, i32* %od, align 4
  %71 = load %struct.markdata*, %struct.markdata** @markdata, align 8
  %f_cmd60 = getelementptr inbounds %struct.markdata, %struct.markdata* %71, i32 0, i32 21
  %direction61 = getelementptr inbounds %struct.anon.3, %struct.anon.3* %f_cmd60, i32 0, i32 2
  store i32 %70, i32* %direction61, align 4
  br label %do.body.62

do.body.62:                                       ; preds = %sw.bb
  br label %do.end.63

do.end.63:                                        ; preds = %do.body.62
  br label %while.cond

sw.bb.64:                                         ; preds = %processchar, %processchar
  %72 = load %struct.markdata*, %struct.markdata** @markdata, align 8
  %f_cmd65 = getelementptr inbounds %struct.markdata, %struct.markdata* %72, i32 0, i32 21
  %target66 = getelementptr inbounds %struct.anon.3, %struct.anon.3* %f_cmd65, i32 0, i32 1
  %73 = load i32, i32* %target66, align 4
  %tobool67 = icmp ne i32 %73, 0
  br i1 %tobool67, label %if.end.69, label %if.then.68

if.then.68:                                       ; preds = %sw.bb.64
  br label %sw.epilog.718

if.end.69:                                        ; preds = %sw.bb.64
  %74 = load i32, i32* %rep_cnt, align 4
  %tobool70 = icmp ne i32 %74, 0
  br i1 %tobool70, label %if.end.72, label %if.then.71

if.then.71:                                       ; preds = %if.end.69
  store i32 1, i32* %rep_cnt, align 4
  br label %if.end.72

if.end.72:                                        ; preds = %if.then.71, %if.end.69
  %75 = load i32, i32* %od, align 4
  %cmp73 = icmp eq i32 %75, 59
  br i1 %cmp73, label %cond.true.75, label %cond.false.78

cond.true.75:                                     ; preds = %if.end.72
  %76 = load %struct.markdata*, %struct.markdata** @markdata, align 8
  %f_cmd76 = getelementptr inbounds %struct.markdata, %struct.markdata* %76, i32 0, i32 21
  %direction77 = getelementptr inbounds %struct.anon.3, %struct.anon.3* %f_cmd76, i32 0, i32 2
  %77 = load i32, i32* %direction77, align 4
  br label %cond.end.81

cond.false.78:                                    ; preds = %if.end.72
  %78 = load %struct.markdata*, %struct.markdata** @markdata, align 8
  %f_cmd79 = getelementptr inbounds %struct.markdata, %struct.markdata* %78, i32 0, i32 21
  %direction80 = getelementptr inbounds %struct.anon.3, %struct.anon.3* %f_cmd79, i32 0, i32 2
  %79 = load i32, i32* %direction80, align 4
  %xor = xor i32 %79, 32
  br label %cond.end.81

cond.end.81:                                      ; preds = %cond.false.78, %cond.true.75
  %cond82 = phi i32 [ %77, %cond.true.75 ], [ %xor, %cond.false.78 ]
  %80 = load %struct.markdata*, %struct.markdata** @markdata, align 8
  %f_cmd83 = getelementptr inbounds %struct.markdata, %struct.markdata* %80, i32 0, i32 21
  %target84 = getelementptr inbounds %struct.anon.3, %struct.anon.3* %f_cmd83, i32 0, i32 1
  %81 = load i32, i32* %target84, align 4
  %conv85 = trunc i32 %81 to i8
  %82 = load i32, i32* %rep_cnt, align 4
  %call86 = call i32 @nextchar(i32* %cx, i32* %cy, i32 %cond82, i8 signext %conv85, i32 %82)
  %83 = load i32, i32* %cx, align 4
  %84 = load i32, i32* %cy, align 4
  call void @revto(i32 %83, i32 %84)
  br label %sw.epilog.718

sw.bb.87:                                         ; preds = %processchar, %processchar
  %85 = load %struct.markdata*, %struct.markdata** @markdata, align 8
  %second = getelementptr inbounds %struct.markdata, %struct.markdata* %85, i32 0, i32 6
  %86 = load i32, i32* %second, align 4
  %tobool88 = icmp ne i32 %86, 0
  br i1 %tobool88, label %if.end.90, label %if.then.89

if.then.89:                                       ; preds = %sw.bb.87
  br label %sw.epilog.718

if.end.90:                                        ; preds = %sw.bb.87
  %87 = load %struct.markdata*, %struct.markdata** @markdata, align 8
  %x1 = getelementptr inbounds %struct.markdata, %struct.markdata* %87, i32 0, i32 4
  %88 = load i32, i32* %x1, align 4
  %89 = load %struct.markdata*, %struct.markdata** @markdata, align 8
  %cx91 = getelementptr inbounds %struct.markdata, %struct.markdata* %89, i32 0, i32 2
  store i32 %88, i32* %cx91, align 4
  %90 = load %struct.markdata*, %struct.markdata** @markdata, align 8
  %y1 = getelementptr inbounds %struct.markdata, %struct.markdata* %90, i32 0, i32 5
  %91 = load i32, i32* %y1, align 4
  %92 = load %struct.markdata*, %struct.markdata** @markdata, align 8
  %cy92 = getelementptr inbounds %struct.markdata, %struct.markdata* %92, i32 0, i32 3
  store i32 %91, i32* %cy92, align 4
  %93 = load i32, i32* %cx, align 4
  %94 = load %struct.markdata*, %struct.markdata** @markdata, align 8
  %x193 = getelementptr inbounds %struct.markdata, %struct.markdata* %94, i32 0, i32 4
  store i32 %93, i32* %x193, align 4
  %95 = load i32, i32* %cy, align 4
  %96 = load %struct.markdata*, %struct.markdata** @markdata, align 8
  %y194 = getelementptr inbounds %struct.markdata, %struct.markdata* %96, i32 0, i32 5
  store i32 %95, i32* %y194, align 4
  %97 = load %struct.markdata*, %struct.markdata** @markdata, align 8
  %cx95 = getelementptr inbounds %struct.markdata, %struct.markdata* %97, i32 0, i32 2
  %98 = load i32, i32* %cx95, align 4
  %99 = load %struct.markdata*, %struct.markdata** @markdata, align 8
  %cy96 = getelementptr inbounds %struct.markdata, %struct.markdata* %99, i32 0, i32 3
  %100 = load i32, i32* %cy96, align 4
  call void @revto(i32 %98, i32 %100)
  br label %sw.epilog.718

sw.bb.97:                                         ; preds = %processchar
  call void @Redisplay(i32 0)
  %101 = load %struct.layer*, %struct.layer** @flayer, align 8
  %102 = load i32, i32* %cx, align 4
  %103 = load i32, i32* %cy, align 4
  %104 = load %struct.markdata*, %struct.markdata** @markdata, align 8
  %hist_offset98 = getelementptr inbounds %struct.markdata, %struct.markdata* %104, i32 0, i32 13
  %105 = load i32, i32* %hist_offset98, align 4
  %sub99 = sub nsw i32 %103, %105
  call void @LGotoPos(%struct.layer* %101, i32 %102, i32 %sub99)
  br label %sw.epilog.718

sw.bb.100:                                        ; preds = %processchar, %processchar, %processchar
  %106 = load i32, i32* %rep_cnt, align 4
  %cmp101 = icmp eq i32 %106, 0
  br i1 %cmp101, label %if.then.103, label %if.end.104

if.then.103:                                      ; preds = %sw.bb.100
  store i32 1, i32* %rep_cnt, align 4
  br label %if.end.104

if.end.104:                                       ; preds = %if.then.103, %sw.bb.100
  %107 = load i32, i32* %cx, align 4
  %108 = load i32, i32* %rep_cnt, align 4
  %sub105 = sub nsw i32 %107, %108
  %109 = load i32, i32* %cy, align 4
  call void @revto(i32 %sub105, i32 %109)
  br label %sw.epilog.718

sw.bb.106:                                        ; preds = %processchar, %processchar, %processchar
  %110 = load i32, i32* %rep_cnt, align 4
  %cmp107 = icmp eq i32 %110, 0
  br i1 %cmp107, label %if.then.109, label %if.end.110

if.then.109:                                      ; preds = %sw.bb.106
  store i32 1, i32* %rep_cnt, align 4
  br label %if.end.110

if.end.110:                                       ; preds = %if.then.109, %sw.bb.106
  %111 = load i32, i32* %cx, align 4
  %112 = load i32, i32* %cy, align 4
  %113 = load i32, i32* %rep_cnt, align 4
  %add111 = add nsw i32 %112, %113
  call void @revto(i32 %111, i32 %add111)
  br label %sw.epilog.718

sw.bb.112:                                        ; preds = %processchar
  %114 = load i32, i32* %rep_cnt, align 4
  %cmp113 = icmp eq i32 %114, 0
  br i1 %cmp113, label %if.then.115, label %if.end.116

if.then.115:                                      ; preds = %sw.bb.112
  store i32 1, i32* %rep_cnt, align 4
  br label %if.end.116

if.end.116:                                       ; preds = %if.then.115, %sw.bb.112
  %115 = load i32, i32* %cy, align 4
  %116 = load i32, i32* %rep_cnt, align 4
  %add117 = add nsw i32 %115, %116
  store i32 %add117, i32* %j, align 4
  %117 = load i32, i32* %j, align 4
  %118 = load %struct.win*, %struct.win** @fore, align 8
  %w_histheight = getelementptr inbounds %struct.win, %struct.win* %118, i32 0, i32 77
  %119 = load i32, i32* %w_histheight, align 4
  %120 = load %struct.win*, %struct.win** @fore, align 8
  %w_layer = getelementptr inbounds %struct.win, %struct.win* %120, i32 0, i32 3
  %l_height = getelementptr inbounds %struct.layer, %struct.layer* %w_layer, i32 0, i32 2
  %121 = load i32, i32* %l_height, align 4
  %add118 = add nsw i32 %119, %121
  %sub119 = sub nsw i32 %add118, 1
  %cmp120 = icmp sgt i32 %117, %sub119
  br i1 %cmp120, label %if.then.122, label %if.end.128

if.then.122:                                      ; preds = %if.end.116
  %122 = load %struct.win*, %struct.win** @fore, align 8
  %w_histheight123 = getelementptr inbounds %struct.win, %struct.win* %122, i32 0, i32 77
  %123 = load i32, i32* %w_histheight123, align 4
  %124 = load %struct.win*, %struct.win** @fore, align 8
  %w_layer124 = getelementptr inbounds %struct.win, %struct.win* %124, i32 0, i32 3
  %l_height125 = getelementptr inbounds %struct.layer, %struct.layer* %w_layer124, i32 0, i32 2
  %125 = load i32, i32* %l_height125, align 4
  %add126 = add nsw i32 %123, %125
  %sub127 = sub nsw i32 %add126, 1
  store i32 %sub127, i32* %j, align 4
  br label %if.end.128

if.end.128:                                       ; preds = %if.then.122, %if.end.116
  %126 = load i32, i32* %j, align 4
  %call129 = call i32 @linestart(i32 %126)
  %127 = load i32, i32* %j, align 4
  call void @revto(i32 %call129, i32 %127)
  br label %sw.epilog.718

sw.bb.130:                                        ; preds = %processchar
  %128 = load i32, i32* %rep_cnt, align 4
  %cmp131 = icmp eq i32 %128, 0
  br i1 %cmp131, label %if.then.133, label %if.end.134

if.then.133:                                      ; preds = %sw.bb.130
  store i32 1, i32* %rep_cnt, align 4
  br label %if.end.134

if.end.134:                                       ; preds = %if.then.133, %sw.bb.130
  %129 = load i32, i32* %rep_cnt, align 4
  %130 = load i32, i32* %cy, align 4
  %sub135 = sub nsw i32 %130, %129
  store i32 %sub135, i32* %cy, align 4
  %131 = load i32, i32* %cy, align 4
  %cmp136 = icmp slt i32 %131, 0
  br i1 %cmp136, label %if.then.138, label %if.end.139

if.then.138:                                      ; preds = %if.end.134
  store i32 0, i32* %cy, align 4
  br label %if.end.139

if.end.139:                                       ; preds = %if.then.138, %if.end.134
  %132 = load i32, i32* %cy, align 4
  %call140 = call i32 @linestart(i32 %132)
  %133 = load i32, i32* %cy, align 4
  call void @revto(i32 %call140, i32 %133)
  br label %sw.epilog.718

sw.bb.141:                                        ; preds = %processchar
  %134 = load i32, i32* %cy, align 4
  %call142 = call i32 @linestart(i32 %134)
  %135 = load i32, i32* %cy, align 4
  call void @revto(i32 %call142, i32 %135)
  br label %sw.epilog.718

sw.bb.143:                                        ; preds = %processchar
  %136 = load %struct.markdata*, %struct.markdata** @markdata, align 8
  %left_mar = getelementptr inbounds %struct.markdata, %struct.markdata* %136, i32 0, i32 7
  %137 = load i32, i32* %left_mar, align 4
  %138 = load i32, i32* %cy, align 4
  %add144 = add nsw i32 %138, 1
  call void @revto(i32 %137, i32 %add144)
  br label %sw.epilog.718

sw.bb.145:                                        ; preds = %processchar, %processchar, %processchar
  %139 = load i32, i32* %rep_cnt, align 4
  %cmp146 = icmp eq i32 %139, 0
  br i1 %cmp146, label %if.then.148, label %if.end.149

if.then.148:                                      ; preds = %sw.bb.145
  store i32 1, i32* %rep_cnt, align 4
  br label %if.end.149

if.end.149:                                       ; preds = %if.then.148, %sw.bb.145
  %140 = load i32, i32* %cx, align 4
  %141 = load i32, i32* %cy, align 4
  %142 = load i32, i32* %rep_cnt, align 4
  %sub150 = sub nsw i32 %141, %142
  call void @revto(i32 %140, i32 %sub150)
  br label %sw.epilog.718

sw.bb.151:                                        ; preds = %processchar, %processchar
  %143 = load i32, i32* %rep_cnt, align 4
  %cmp152 = icmp eq i32 %143, 0
  br i1 %cmp152, label %if.then.154, label %if.end.155

if.then.154:                                      ; preds = %sw.bb.151
  store i32 1, i32* %rep_cnt, align 4
  br label %if.end.155

if.end.155:                                       ; preds = %if.then.154, %sw.bb.151
  %144 = load i32, i32* %cx, align 4
  %145 = load i32, i32* %rep_cnt, align 4
  %add156 = add nsw i32 %144, %145
  %146 = load i32, i32* %cy, align 4
  call void @revto(i32 %add156, i32 %146)
  br label %sw.epilog.718

sw.bb.157:                                        ; preds = %processchar, %processchar
  %147 = load %struct.markdata*, %struct.markdata** @markdata, align 8
  %left_mar158 = getelementptr inbounds %struct.markdata, %struct.markdata* %147, i32 0, i32 7
  %148 = load i32, i32* %left_mar158, align 4
  %149 = load i32, i32* %cy, align 4
  call void @revto(i32 %148, i32 %149)
  br label %sw.epilog.718

sw.bb.159:                                        ; preds = %processchar
  %150 = load i32, i32* %rep_cnt, align 4
  %cmp160 = icmp eq i32 %150, 0
  br i1 %cmp160, label %if.then.162, label %if.end.166

if.then.162:                                      ; preds = %sw.bb.159
  %151 = load %struct.win*, %struct.win** @fore, align 8
  %w_layer163 = getelementptr inbounds %struct.win, %struct.win* %151, i32 0, i32 3
  %l_height164 = getelementptr inbounds %struct.layer, %struct.layer* %w_layer163, i32 0, i32 2
  %152 = load i32, i32* %l_height164, align 4
  %add165 = add nsw i32 %152, 1
  %shr = ashr i32 %add165, 1
  store i32 %shr, i32* %rep_cnt, align 4
  br label %if.end.166

if.end.166:                                       ; preds = %if.then.162, %sw.bb.159
  %153 = load i32, i32* %cx, align 4
  %154 = load i32, i32* %cy, align 4
  %155 = load i32, i32* %rep_cnt, align 4
  %add167 = add nsw i32 %154, %155
  %156 = load i32, i32* %cy, align 4
  %157 = load %struct.markdata*, %struct.markdata** @markdata, align 8
  %hist_offset168 = getelementptr inbounds %struct.markdata, %struct.markdata* %157, i32 0, i32 13
  %158 = load i32, i32* %hist_offset168, align 4
  %sub169 = sub nsw i32 %156, %158
  call void @revto_line(i32 %153, i32 %add167, i32 %sub169)
  br label %sw.epilog.718

sw.bb.170:                                        ; preds = %processchar
  %159 = load i32, i32* %cy, align 4
  %call171 = call i32 @lineend(i32 %159)
  %160 = load i32, i32* %cy, align 4
  call void @revto(i32 %call171, i32 %160)
  br label %sw.epilog.718

sw.bb.172:                                        ; preds = %processchar
  call void @ISearch(i32 -1)
  store i32 0, i32* %in_mark, align 4
  br label %sw.epilog.718

sw.bb.173:                                        ; preds = %processchar
  call void @ISearch(i32 1)
  store i32 0, i32* %in_mark, align 4
  br label %sw.epilog.718

sw.bb.174:                                        ; preds = %processchar
  %161 = load i32, i32* %rep_cnt, align 4
  %cmp175 = icmp eq i32 %161, 0
  br i1 %cmp175, label %if.then.177, label %if.end.182

if.then.177:                                      ; preds = %sw.bb.174
  %162 = load %struct.win*, %struct.win** @fore, align 8
  %w_layer178 = getelementptr inbounds %struct.win, %struct.win* %162, i32 0, i32 3
  %l_height179 = getelementptr inbounds %struct.layer, %struct.layer* %w_layer178, i32 0, i32 2
  %163 = load i32, i32* %l_height179, align 4
  %add180 = add nsw i32 %163, 1
  %shr181 = ashr i32 %add180, 1
  store i32 %shr181, i32* %rep_cnt, align 4
  br label %if.end.182

if.end.182:                                       ; preds = %if.then.177, %sw.bb.174
  %164 = load i32, i32* %cx, align 4
  %165 = load i32, i32* %cy, align 4
  %166 = load i32, i32* %rep_cnt, align 4
  %sub183 = sub nsw i32 %165, %166
  %167 = load i32, i32* %cy, align 4
  %168 = load %struct.markdata*, %struct.markdata** @markdata, align 8
  %hist_offset184 = getelementptr inbounds %struct.markdata, %struct.markdata* %168, i32 0, i32 13
  %169 = load i32, i32* %hist_offset184, align 4
  %sub185 = sub nsw i32 %167, %169
  call void @revto_line(i32 %164, i32 %sub183, i32 %sub185)
  br label %sw.epilog.718

sw.bb.186:                                        ; preds = %processchar
  %170 = load %struct.markdata*, %struct.markdata** @markdata, align 8
  %left_mar187 = getelementptr inbounds %struct.markdata, %struct.markdata* %170, i32 0, i32 7
  %171 = load i32, i32* %left_mar187, align 4
  %cmp188 = icmp eq i32 %171, 0
  br i1 %cmp188, label %land.lhs.true.190, label %if.else.201

land.lhs.true.190:                                ; preds = %sw.bb.186
  %172 = load %struct.markdata*, %struct.markdata** @markdata, align 8
  %right_mar = getelementptr inbounds %struct.markdata, %struct.markdata* %172, i32 0, i32 8
  %173 = load i32, i32* %right_mar, align 4
  %174 = load %struct.win*, %struct.win** @fore, align 8
  %w_layer191 = getelementptr inbounds %struct.win, %struct.win* %174, i32 0, i32 3
  %l_width = getelementptr inbounds %struct.layer, %struct.layer* %w_layer191, i32 0, i32 1
  %175 = load i32, i32* %l_width, align 4
  %sub192 = sub nsw i32 %175, 1
  %cmp193 = icmp eq i32 %173, %sub192
  br i1 %cmp193, label %if.then.195, label %if.else.201

if.then.195:                                      ; preds = %land.lhs.true.190
  %176 = load i32, i32* %cx, align 4
  %add196 = add nsw i32 %176, 1
  %177 = load i32, i32* %cy, align 4
  %178 = load %struct.markdata*, %struct.markdata** @markdata, align 8
  %hist_offset197 = getelementptr inbounds %struct.markdata, %struct.markdata* %178, i32 0, i32 13
  %179 = load i32, i32* %hist_offset197, align 4
  %sub198 = sub nsw i32 %177, %179
  %add199 = add nsw i32 %sub198, 1
  %180 = load %struct.markdata*, %struct.markdata** @markdata, align 8
  %hist_offset200 = getelementptr inbounds %struct.markdata, %struct.markdata* %180, i32 0, i32 13
  %181 = load i32, i32* %hist_offset200, align 4
  call void (i32, i8*, ...) @LMsg(i32 0, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.2, i32 0, i32 0), i32 %add196, i32 %add199, i32 %181)
  br label %if.end.211

if.else.201:                                      ; preds = %land.lhs.true.190, %sw.bb.186
  %182 = load i32, i32* %cx, align 4
  %add202 = add nsw i32 %182, 1
  %183 = load %struct.markdata*, %struct.markdata** @markdata, align 8
  %left_mar203 = getelementptr inbounds %struct.markdata, %struct.markdata* %183, i32 0, i32 7
  %184 = load i32, i32* %left_mar203, align 4
  %add204 = add nsw i32 %184, 1
  %185 = load %struct.markdata*, %struct.markdata** @markdata, align 8
  %right_mar205 = getelementptr inbounds %struct.markdata, %struct.markdata* %185, i32 0, i32 8
  %186 = load i32, i32* %right_mar205, align 4
  %add206 = add nsw i32 %186, 1
  %187 = load i32, i32* %cy, align 4
  %188 = load %struct.markdata*, %struct.markdata** @markdata, align 8
  %hist_offset207 = getelementptr inbounds %struct.markdata, %struct.markdata* %188, i32 0, i32 13
  %189 = load i32, i32* %hist_offset207, align 4
  %sub208 = sub nsw i32 %187, %189
  %add209 = add nsw i32 %sub208, 1
  %190 = load %struct.markdata*, %struct.markdata** @markdata, align 8
  %hist_offset210 = getelementptr inbounds %struct.markdata, %struct.markdata* %190, i32 0, i32 13
  %191 = load i32, i32* %hist_offset210, align 4
  call void (i32, i8*, ...) @LMsg(i32 0, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.3, i32 0, i32 0), i32 %add202, i32 %add204, i32 %add206, i32 %add209, i32 %191)
  br label %if.end.211

if.end.211:                                       ; preds = %if.else.201, %if.then.195
  br label %sw.epilog.718

sw.bb.212:                                        ; preds = %processchar
  %192 = load i32, i32* %rep_cnt, align 4
  %cmp213 = icmp eq i32 %192, 0
  br i1 %cmp213, label %if.then.215, label %if.end.216

if.then.215:                                      ; preds = %sw.bb.212
  store i32 1, i32* %rep_cnt, align 4
  br label %if.end.216

if.end.216:                                       ; preds = %if.then.215, %sw.bb.212
  %193 = load %struct.win*, %struct.win** @fore, align 8
  %w_layer217 = getelementptr inbounds %struct.win, %struct.win* %193, i32 0, i32 3
  %l_height218 = getelementptr inbounds %struct.layer, %struct.layer* %w_layer217, i32 0, i32 2
  %194 = load i32, i32* %l_height218, align 4
  %195 = load i32, i32* %rep_cnt, align 4
  %mul219 = mul nsw i32 %195, %194
  store i32 %mul219, i32* %rep_cnt, align 4
  %196 = load i32, i32* %cx, align 4
  %197 = load i32, i32* %cy, align 4
  %198 = load i32, i32* %rep_cnt, align 4
  %sub220 = sub nsw i32 %197, %198
  call void @revto(i32 %196, i32 %sub220)
  br label %sw.epilog.718

sw.bb.221:                                        ; preds = %processchar
  %199 = load i32, i32* %rep_cnt, align 4
  %cmp222 = icmp eq i32 %199, 0
  br i1 %cmp222, label %if.then.224, label %if.end.225

if.then.224:                                      ; preds = %sw.bb.221
  store i32 1, i32* %rep_cnt, align 4
  br label %if.end.225

if.end.225:                                       ; preds = %if.then.224, %sw.bb.221
  %200 = load %struct.win*, %struct.win** @fore, align 8
  %w_layer226 = getelementptr inbounds %struct.win, %struct.win* %200, i32 0, i32 3
  %l_height227 = getelementptr inbounds %struct.layer, %struct.layer* %w_layer226, i32 0, i32 2
  %201 = load i32, i32* %l_height227, align 4
  %202 = load i32, i32* %rep_cnt, align 4
  %mul228 = mul nsw i32 %202, %201
  store i32 %mul228, i32* %rep_cnt, align 4
  %203 = load i32, i32* %cx, align 4
  %204 = load i32, i32* %cy, align 4
  %205 = load i32, i32* %rep_cnt, align 4
  %add229 = add nsw i32 %204, %205
  call void @revto(i32 %203, i32 %add229)
  br label %sw.epilog.718

sw.bb.230:                                        ; preds = %processchar
  %206 = load i32, i32* %rep_cnt, align 4
  %cmp231 = icmp eq i32 %206, 0
  br i1 %cmp231, label %if.then.233, label %if.end.234

if.then.233:                                      ; preds = %sw.bb.230
  store i32 1, i32* %rep_cnt, align 4
  br label %if.end.234

if.end.234:                                       ; preds = %if.then.233, %sw.bb.230
  %207 = load i32, i32* %rep_cnt, align 4
  %call235 = call i32 @MarkScrollUpDisplay(i32 %207)
  store i32 %call235, i32* %rep_cnt, align 4
  %208 = load i32, i32* %cy, align 4
  %209 = load %struct.markdata*, %struct.markdata** @markdata, align 8
  %hist_offset236 = getelementptr inbounds %struct.markdata, %struct.markdata* %209, i32 0, i32 13
  %210 = load i32, i32* %hist_offset236, align 4
  %add237 = add nsw i32 0, %210
  %cmp238 = icmp slt i32 %208, %add237
  br i1 %cmp238, label %if.then.240, label %if.else.243

if.then.240:                                      ; preds = %if.end.234
  %211 = load i32, i32* %cx, align 4
  %212 = load %struct.markdata*, %struct.markdata** @markdata, align 8
  %hist_offset241 = getelementptr inbounds %struct.markdata, %struct.markdata* %212, i32 0, i32 13
  %213 = load i32, i32* %hist_offset241, align 4
  %add242 = add nsw i32 0, %213
  call void @revto(i32 %211, i32 %add242)
  br label %if.end.246

if.else.243:                                      ; preds = %if.end.234
  %214 = load %struct.layer*, %struct.layer** @flayer, align 8
  %215 = load i32, i32* %cx, align 4
  %216 = load i32, i32* %cy, align 4
  %217 = load %struct.markdata*, %struct.markdata** @markdata, align 8
  %hist_offset244 = getelementptr inbounds %struct.markdata, %struct.markdata* %217, i32 0, i32 13
  %218 = load i32, i32* %hist_offset244, align 4
  %sub245 = sub nsw i32 %216, %218
  call void @LGotoPos(%struct.layer* %214, i32 %215, i32 %sub245)
  br label %if.end.246

if.end.246:                                       ; preds = %if.else.243, %if.then.240
  br label %sw.epilog.718

sw.bb.247:                                        ; preds = %processchar
  %219 = load i32, i32* %rep_cnt, align 4
  %cmp248 = icmp eq i32 %219, 0
  br i1 %cmp248, label %if.then.250, label %if.end.251

if.then.250:                                      ; preds = %sw.bb.247
  store i32 1, i32* %rep_cnt, align 4
  br label %if.end.251

if.end.251:                                       ; preds = %if.then.250, %sw.bb.247
  %220 = load i32, i32* %rep_cnt, align 4
  %call252 = call i32 @MarkScrollDownDisplay(i32 %220)
  store i32 %call252, i32* %rep_cnt, align 4
  %221 = load i32, i32* %cy, align 4
  %222 = load %struct.win*, %struct.win** @fore, align 8
  %w_layer253 = getelementptr inbounds %struct.win, %struct.win* %222, i32 0, i32 3
  %l_height254 = getelementptr inbounds %struct.layer, %struct.layer* %w_layer253, i32 0, i32 2
  %223 = load i32, i32* %l_height254, align 4
  %sub255 = sub nsw i32 %223, 1
  %224 = load %struct.markdata*, %struct.markdata** @markdata, align 8
  %hist_offset256 = getelementptr inbounds %struct.markdata, %struct.markdata* %224, i32 0, i32 13
  %225 = load i32, i32* %hist_offset256, align 4
  %add257 = add nsw i32 %sub255, %225
  %cmp258 = icmp sgt i32 %221, %add257
  br i1 %cmp258, label %if.then.260, label %if.else.266

if.then.260:                                      ; preds = %if.end.251
  %226 = load i32, i32* %cx, align 4
  %227 = load %struct.win*, %struct.win** @fore, align 8
  %w_layer261 = getelementptr inbounds %struct.win, %struct.win* %227, i32 0, i32 3
  %l_height262 = getelementptr inbounds %struct.layer, %struct.layer* %w_layer261, i32 0, i32 2
  %228 = load i32, i32* %l_height262, align 4
  %sub263 = sub nsw i32 %228, 1
  %229 = load %struct.markdata*, %struct.markdata** @markdata, align 8
  %hist_offset264 = getelementptr inbounds %struct.markdata, %struct.markdata* %229, i32 0, i32 13
  %230 = load i32, i32* %hist_offset264, align 4
  %add265 = add nsw i32 %sub263, %230
  call void @revto(i32 %226, i32 %add265)
  br label %if.end.269

if.else.266:                                      ; preds = %if.end.251
  %231 = load %struct.layer*, %struct.layer** @flayer, align 8
  %232 = load i32, i32* %cx, align 4
  %233 = load i32, i32* %cy, align 4
  %234 = load %struct.markdata*, %struct.markdata** @markdata, align 8
  %hist_offset267 = getelementptr inbounds %struct.markdata, %struct.markdata* %234, i32 0, i32 13
  %235 = load i32, i32* %hist_offset267, align 4
  %sub268 = sub nsw i32 %233, %235
  call void @LGotoPos(%struct.layer* %231, i32 %232, i32 %sub268)
  br label %if.end.269

if.end.269:                                       ; preds = %if.else.266, %if.then.260
  br label %sw.epilog.718

sw.bb.270:                                        ; preds = %processchar
  br label %sw.epilog.718

sw.bb.271:                                        ; preds = %processchar
  %236 = load i32, i32* %rep_cnt, align 4
  %dec272 = add nsw i32 %236, -1
  store i32 %dec272, i32* %rep_cnt, align 4
  %237 = load i32, i32* %rep_cnt, align 4
  %cmp273 = icmp slt i32 %237, 0
  br i1 %cmp273, label %if.then.275, label %if.end.276

if.then.275:                                      ; preds = %sw.bb.271
  store i32 0, i32* %rep_cnt, align 4
  br label %if.end.276

if.end.276:                                       ; preds = %if.then.275, %sw.bb.271
  %238 = load i32, i32* %rep_cnt, align 4
  %cmp277 = icmp sgt i32 %238, 100
  br i1 %cmp277, label %if.then.279, label %if.end.280

if.then.279:                                      ; preds = %if.end.276
  store i32 100, i32* %rep_cnt, align 4
  br label %if.end.280

if.end.280:                                       ; preds = %if.then.279, %if.end.276
  %239 = load %struct.markdata*, %struct.markdata** @markdata, align 8
  %left_mar281 = getelementptr inbounds %struct.markdata, %struct.markdata* %239, i32 0, i32 7
  %240 = load i32, i32* %left_mar281, align 4
  %241 = load i32, i32* %rep_cnt, align 4
  %242 = load %struct.win*, %struct.win** @fore, align 8
  %w_histheight282 = getelementptr inbounds %struct.win, %struct.win* %242, i32 0, i32 77
  %243 = load i32, i32* %w_histheight282, align 4
  %244 = load %struct.win*, %struct.win** @fore, align 8
  %w_layer283 = getelementptr inbounds %struct.win, %struct.win* %244, i32 0, i32 3
  %l_height284 = getelementptr inbounds %struct.layer, %struct.layer* %w_layer283, i32 0, i32 2
  %245 = load i32, i32* %l_height284, align 4
  %add285 = add nsw i32 %243, %245
  %mul286 = mul nsw i32 %241, %add285
  %div = sdiv i32 %mul286, 100
  %246 = load %struct.win*, %struct.win** @fore, align 8
  %w_layer287 = getelementptr inbounds %struct.win, %struct.win* %246, i32 0, i32 3
  %l_height288 = getelementptr inbounds %struct.layer, %struct.layer* %w_layer287, i32 0, i32 2
  %247 = load i32, i32* %l_height288, align 4
  %sub289 = sub nsw i32 %247, 1
  %div290 = sdiv i32 %sub289, 2
  call void @revto_line(i32 %240, i32 %div, i32 %div290)
  br label %sw.epilog.718

sw.bb.291:                                        ; preds = %processchar, %processchar
  store i32 1, i32* %rep_cnt, align 4
  br label %sw.bb.292

sw.bb.292:                                        ; preds = %processchar, %processchar, %sw.bb.291
  %248 = load i32, i32* %rep_cnt, align 4
  %cmp293 = icmp eq i32 %248, 0
  br i1 %cmp293, label %if.then.295, label %if.end.300

if.then.295:                                      ; preds = %sw.bb.292
  %249 = load %struct.win*, %struct.win** @fore, align 8
  %w_histheight296 = getelementptr inbounds %struct.win, %struct.win* %249, i32 0, i32 77
  %250 = load i32, i32* %w_histheight296, align 4
  %251 = load %struct.win*, %struct.win** @fore, align 8
  %w_layer297 = getelementptr inbounds %struct.win, %struct.win* %251, i32 0, i32 3
  %l_height298 = getelementptr inbounds %struct.layer, %struct.layer* %w_layer297, i32 0, i32 2
  %252 = load i32, i32* %l_height298, align 4
  %add299 = add nsw i32 %250, %252
  store i32 %add299, i32* %rep_cnt, align 4
  br label %if.end.300

if.end.300:                                       ; preds = %if.then.295, %sw.bb.292
  %253 = load %struct.markdata*, %struct.markdata** @markdata, align 8
  %left_mar301 = getelementptr inbounds %struct.markdata, %struct.markdata* %253, i32 0, i32 7
  %254 = load i32, i32* %left_mar301, align 4
  %255 = load i32, i32* %rep_cnt, align 4
  %dec302 = add nsw i32 %255, -1
  store i32 %dec302, i32* %rep_cnt, align 4
  %256 = load %struct.win*, %struct.win** @fore, align 8
  %w_layer303 = getelementptr inbounds %struct.win, %struct.win* %256, i32 0, i32 3
  %l_height304 = getelementptr inbounds %struct.layer, %struct.layer* %w_layer303, i32 0, i32 2
  %257 = load i32, i32* %l_height304, align 4
  %sub305 = sub nsw i32 %257, 1
  %div306 = sdiv i32 %sub305, 2
  call void @revto_line(i32 %254, i32 %dec302, i32 %div306)
  br label %sw.epilog.718

sw.bb.307:                                        ; preds = %processchar
  %258 = load %struct.markdata*, %struct.markdata** @markdata, align 8
  %left_mar308 = getelementptr inbounds %struct.markdata, %struct.markdata* %258, i32 0, i32 7
  %259 = load i32, i32* %left_mar308, align 4
  %260 = load %struct.markdata*, %struct.markdata** @markdata, align 8
  %hist_offset309 = getelementptr inbounds %struct.markdata, %struct.markdata* %260, i32 0, i32 13
  %261 = load i32, i32* %hist_offset309, align 4
  %add310 = add nsw i32 0, %261
  call void @revto(i32 %259, i32 %add310)
  br label %sw.epilog.718

sw.bb.311:                                        ; preds = %processchar
  %262 = load %struct.markdata*, %struct.markdata** @markdata, align 8
  %left_mar312 = getelementptr inbounds %struct.markdata, %struct.markdata* %262, i32 0, i32 7
  %263 = load i32, i32* %left_mar312, align 4
  %264 = load %struct.win*, %struct.win** @fore, align 8
  %w_layer313 = getelementptr inbounds %struct.win, %struct.win* %264, i32 0, i32 3
  %l_height314 = getelementptr inbounds %struct.layer, %struct.layer* %w_layer313, i32 0, i32 2
  %265 = load i32, i32* %l_height314, align 4
  %sub315 = sub nsw i32 %265, 1
  %div316 = sdiv i32 %sub315, 2
  %266 = load %struct.markdata*, %struct.markdata** @markdata, align 8
  %hist_offset317 = getelementptr inbounds %struct.markdata, %struct.markdata* %266, i32 0, i32 13
  %267 = load i32, i32* %hist_offset317, align 4
  %add318 = add nsw i32 %div316, %267
  call void @revto(i32 %263, i32 %add318)
  br label %sw.epilog.718

sw.bb.319:                                        ; preds = %processchar
  %268 = load %struct.markdata*, %struct.markdata** @markdata, align 8
  %left_mar320 = getelementptr inbounds %struct.markdata, %struct.markdata* %268, i32 0, i32 7
  %269 = load i32, i32* %left_mar320, align 4
  %270 = load %struct.win*, %struct.win** @fore, align 8
  %w_layer321 = getelementptr inbounds %struct.win, %struct.win* %270, i32 0, i32 3
  %l_height322 = getelementptr inbounds %struct.layer, %struct.layer* %w_layer321, i32 0, i32 2
  %271 = load i32, i32* %l_height322, align 4
  %sub323 = sub nsw i32 %271, 1
  %272 = load %struct.markdata*, %struct.markdata** @markdata, align 8
  %hist_offset324 = getelementptr inbounds %struct.markdata, %struct.markdata* %272, i32 0, i32 13
  %273 = load i32, i32* %hist_offset324, align 4
  %add325 = add nsw i32 %sub323, %273
  call void @revto(i32 %269, i32 %add325)
  br label %sw.epilog.718

sw.bb.326:                                        ; preds = %processchar
  %274 = load i32, i32* %rep_cnt, align 4
  %dec327 = add nsw i32 %274, -1
  store i32 %dec327, i32* %rep_cnt, align 4
  %275 = load i32, i32* %cy, align 4
  call void @revto(i32 %dec327, i32 %275)
  br label %sw.epilog.718

sw.bb.328:                                        ; preds = %processchar
  %276 = load i32, i32* %rep_cnt, align 4
  %cmp329 = icmp eq i32 %276, 0
  br i1 %cmp329, label %if.then.331, label %if.end.332

if.then.331:                                      ; preds = %sw.bb.328
  store i32 1, i32* %rep_cnt, align 4
  br label %if.end.332

if.end.332:                                       ; preds = %if.then.331, %sw.bb.328
  %277 = load i32, i32* %rep_cnt, align 4
  call void @nextword(i32* %cx, i32* %cy, i32 4, i32 %277)
  %278 = load i32, i32* %cx, align 4
  %279 = load i32, i32* %cy, align 4
  call void @revto(i32 %278, i32 %279)
  br label %sw.epilog.718

sw.bb.333:                                        ; preds = %processchar, %processchar
  %280 = load i32, i32* %rep_cnt, align 4
  %cmp334 = icmp eq i32 %280, 0
  br i1 %cmp334, label %if.then.336, label %if.end.337

if.then.336:                                      ; preds = %sw.bb.333
  store i32 1, i32* %rep_cnt, align 4
  br label %if.end.337

if.end.337:                                       ; preds = %if.then.336, %sw.bb.333
  %281 = load i32, i32* %od, align 4
  %cmp338 = icmp eq i32 %281, 69
  %cond340 = select i1 %cmp338, i32 8, i32 0
  %or = or i32 6, %cond340
  %282 = load i32, i32* %rep_cnt, align 4
  call void @nextword(i32* %cx, i32* %cy, i32 %or, i32 %282)
  %283 = load i32, i32* %cx, align 4
  %284 = load i32, i32* %cy, align 4
  call void @revto(i32 %283, i32 %284)
  br label %sw.epilog.718

sw.bb.341:                                        ; preds = %processchar, %processchar
  %285 = load i32, i32* %rep_cnt, align 4
  %cmp342 = icmp eq i32 %285, 0
  br i1 %cmp342, label %if.then.344, label %if.end.345

if.then.344:                                      ; preds = %sw.bb.341
  store i32 1, i32* %rep_cnt, align 4
  br label %if.end.345

if.end.345:                                       ; preds = %if.then.344, %sw.bb.341
  %286 = load i32, i32* %od, align 4
  %cmp346 = icmp eq i32 %286, 66
  %cond348 = select i1 %cmp346, i32 8, i32 0
  %or349 = or i32 7, %cond348
  %287 = load i32, i32* %rep_cnt, align 4
  call void @nextword(i32* %cx, i32* %cy, i32 %or349, i32 %287)
  %288 = load i32, i32* %cx, align 4
  %289 = load i32, i32* %cy, align 4
  call void @revto(i32 %288, i32 %289)
  br label %sw.epilog.718

sw.bb.350:                                        ; preds = %processchar
  %290 = load %struct.markdata*, %struct.markdata** @markdata, align 8
  %append_mode = getelementptr inbounds %struct.markdata, %struct.markdata* %290, i32 0, i32 11
  %291 = load i32, i32* %append_mode, align 4
  %sub351 = sub nsw i32 1, %291
  %292 = load %struct.markdata*, %struct.markdata** @markdata, align 8
  %append_mode352 = getelementptr inbounds %struct.markdata, %struct.markdata* %292, i32 0, i32 11
  store i32 %sub351, i32* %append_mode352, align 4
  br label %do.body.353

do.body.353:                                      ; preds = %sw.bb.350
  br label %do.end.354

do.end.354:                                       ; preds = %do.body.353
  %293 = load %struct.markdata*, %struct.markdata** @markdata, align 8
  %append_mode355 = getelementptr inbounds %struct.markdata, %struct.markdata* %293, i32 0, i32 11
  %294 = load i32, i32* %append_mode355, align 4
  %tobool356 = icmp ne i32 %294, 0
  %cond357 = select i1 %tobool356, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.4, i32 0, i32 0), i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.5, i32 0, i32 0)
  call void (i32, i8*, ...) @LMsg(i32 0, i8* %cond357)
  br label %sw.epilog.718

sw.bb.358:                                        ; preds = %processchar, %processchar
  %295 = load %struct.markdata*, %struct.markdata** @markdata, align 8
  %left_mar359 = getelementptr inbounds %struct.markdata, %struct.markdata* %295, i32 0, i32 7
  %296 = load i32, i32* %left_mar359, align 4
  %cmp360 = icmp eq i32 %296, 8
  br i1 %cmp360, label %if.then.362, label %if.else.363

if.then.362:                                      ; preds = %sw.bb.358
  store i32 1, i32* %rep_cnt, align 4
  br label %if.end.364

if.else.363:                                      ; preds = %sw.bb.358
  store i32 9, i32* %rep_cnt, align 4
  br label %if.end.364

if.end.364:                                       ; preds = %if.else.363, %if.then.362
  br label %sw.bb.365

sw.bb.365:                                        ; preds = %processchar, %processchar, %if.end.364
  %297 = load %struct.markdata*, %struct.markdata** @markdata, align 8
  %second366 = getelementptr inbounds %struct.markdata, %struct.markdata* %297, i32 0, i32 6
  %298 = load i32, i32* %second366, align 4
  %tobool367 = icmp ne i32 %298, 0
  br i1 %tobool367, label %if.then.368, label %if.end.376

if.then.368:                                      ; preds = %sw.bb.365
  %299 = load %struct.markdata*, %struct.markdata** @markdata, align 8
  %x1369 = getelementptr inbounds %struct.markdata, %struct.markdata* %299, i32 0, i32 4
  %300 = load i32, i32* %x1369, align 4
  %301 = load %struct.markdata*, %struct.markdata** @markdata, align 8
  %y1370 = getelementptr inbounds %struct.markdata, %struct.markdata* %301, i32 0, i32 5
  %302 = load i32, i32* %y1370, align 4
  %303 = load i32, i32* %cx, align 4
  %304 = load i32, i32* %cy, align 4
  %305 = load %struct.win*, %struct.win** @fore, align 8
  %w_layer371 = getelementptr inbounds %struct.win, %struct.win* %305, i32 0, i32 3
  %l_height372 = getelementptr inbounds %struct.layer, %struct.layer* %w_layer371, i32 0, i32 2
  %306 = load i32, i32* %l_height372, align 4
  %sub373 = sub nsw i32 %306, 1
  %call374 = call i32 @rem(i32 %300, i32 %302, i32 %303, i32 %304, i32 1, i8* null, i32 %sub373)
  %307 = load %struct.markdata*, %struct.markdata** @markdata, align 8
  %second375 = getelementptr inbounds %struct.markdata, %struct.markdata* %307, i32 0, i32 6
  store i32 1, i32* %second375, align 4
  br label %if.end.376

if.end.376:                                       ; preds = %if.then.368, %sw.bb.365
  %308 = load i32, i32* %rep_cnt, align 4
  %dec377 = add nsw i32 %308, -1
  store i32 %dec377, i32* %rep_cnt, align 4
  %309 = load i32, i32* %rep_cnt, align 4
  %cmp378 = icmp slt i32 %309, 0
  br i1 %cmp378, label %if.then.380, label %if.end.381

if.then.380:                                      ; preds = %if.end.376
  %310 = load i32, i32* %cx, align 4
  store i32 %310, i32* %rep_cnt, align 4
  br label %if.end.381

if.end.381:                                       ; preds = %if.then.380, %if.end.376
  %311 = load i32, i32* %od, align 4
  %cmp382 = icmp ne i32 %311, 67
  br i1 %cmp382, label %if.then.384, label %if.else.394

if.then.384:                                      ; preds = %if.end.381
  %312 = load i32, i32* %rep_cnt, align 4
  %313 = load %struct.markdata*, %struct.markdata** @markdata, align 8
  %left_mar385 = getelementptr inbounds %struct.markdata, %struct.markdata* %313, i32 0, i32 7
  store i32 %312, i32* %left_mar385, align 4
  %314 = load %struct.markdata*, %struct.markdata** @markdata, align 8
  %left_mar386 = getelementptr inbounds %struct.markdata, %struct.markdata* %314, i32 0, i32 7
  %315 = load i32, i32* %left_mar386, align 4
  %316 = load %struct.markdata*, %struct.markdata** @markdata, align 8
  %right_mar387 = getelementptr inbounds %struct.markdata, %struct.markdata* %316, i32 0, i32 8
  %317 = load i32, i32* %right_mar387, align 4
  %cmp388 = icmp sgt i32 %315, %317
  br i1 %cmp388, label %if.then.390, label %if.end.393

if.then.390:                                      ; preds = %if.then.384
  %318 = load %struct.markdata*, %struct.markdata** @markdata, align 8
  %right_mar391 = getelementptr inbounds %struct.markdata, %struct.markdata* %318, i32 0, i32 8
  %319 = load i32, i32* %right_mar391, align 4
  %320 = load %struct.markdata*, %struct.markdata** @markdata, align 8
  %left_mar392 = getelementptr inbounds %struct.markdata, %struct.markdata* %320, i32 0, i32 7
  store i32 %319, i32* %left_mar392, align 4
  br label %if.end.393

if.end.393:                                       ; preds = %if.then.390, %if.then.384
  br label %if.end.404

if.else.394:                                      ; preds = %if.end.381
  %321 = load i32, i32* %rep_cnt, align 4
  %322 = load %struct.markdata*, %struct.markdata** @markdata, align 8
  %right_mar395 = getelementptr inbounds %struct.markdata, %struct.markdata* %322, i32 0, i32 8
  store i32 %321, i32* %right_mar395, align 4
  %323 = load %struct.markdata*, %struct.markdata** @markdata, align 8
  %left_mar396 = getelementptr inbounds %struct.markdata, %struct.markdata* %323, i32 0, i32 7
  %324 = load i32, i32* %left_mar396, align 4
  %325 = load %struct.markdata*, %struct.markdata** @markdata, align 8
  %right_mar397 = getelementptr inbounds %struct.markdata, %struct.markdata* %325, i32 0, i32 8
  %326 = load i32, i32* %right_mar397, align 4
  %cmp398 = icmp sgt i32 %324, %326
  br i1 %cmp398, label %if.then.400, label %if.end.403

if.then.400:                                      ; preds = %if.else.394
  %327 = load %struct.markdata*, %struct.markdata** @markdata, align 8
  %left_mar401 = getelementptr inbounds %struct.markdata, %struct.markdata* %327, i32 0, i32 7
  %328 = load i32, i32* %left_mar401, align 4
  %329 = load %struct.markdata*, %struct.markdata** @markdata, align 8
  %right_mar402 = getelementptr inbounds %struct.markdata, %struct.markdata* %329, i32 0, i32 8
  store i32 %328, i32* %right_mar402, align 4
  br label %if.end.403

if.end.403:                                       ; preds = %if.then.400, %if.else.394
  br label %if.end.404

if.end.404:                                       ; preds = %if.end.403, %if.end.393
  %330 = load %struct.markdata*, %struct.markdata** @markdata, align 8
  %second405 = getelementptr inbounds %struct.markdata, %struct.markdata* %330, i32 0, i32 6
  %331 = load i32, i32* %second405, align 4
  %tobool406 = icmp ne i32 %331, 0
  br i1 %tobool406, label %if.then.407, label %if.end.412

if.then.407:                                      ; preds = %if.end.404
  %332 = load %struct.markdata*, %struct.markdata** @markdata, align 8
  %x1408 = getelementptr inbounds %struct.markdata, %struct.markdata* %332, i32 0, i32 4
  %333 = load i32, i32* %x1408, align 4
  %334 = load %struct.markdata*, %struct.markdata** @markdata, align 8
  %cx409 = getelementptr inbounds %struct.markdata, %struct.markdata* %334, i32 0, i32 2
  store i32 %333, i32* %cx409, align 4
  %335 = load %struct.markdata*, %struct.markdata** @markdata, align 8
  %y1410 = getelementptr inbounds %struct.markdata, %struct.markdata* %335, i32 0, i32 5
  %336 = load i32, i32* %y1410, align 4
  %337 = load %struct.markdata*, %struct.markdata** @markdata, align 8
  %cy411 = getelementptr inbounds %struct.markdata, %struct.markdata* %337, i32 0, i32 3
  store i32 %336, i32* %cy411, align 4
  %338 = load i32, i32* %cx, align 4
  %339 = load i32, i32* %cy, align 4
  call void @revto(i32 %338, i32 %339)
  br label %if.end.412

if.end.412:                                       ; preds = %if.then.407, %if.end.404
  %340 = load i32, i32* %od, align 4
  %cmp413 = icmp eq i32 %340, 118
  br i1 %cmp413, label %if.then.418, label %lor.lhs.false.415

lor.lhs.false.415:                                ; preds = %if.end.412
  %341 = load i32, i32* %od, align 4
  %cmp416 = icmp eq i32 %341, 86
  br i1 %cmp416, label %if.then.418, label %if.end.423

if.then.418:                                      ; preds = %lor.lhs.false.415, %if.end.412
  %342 = load %struct.markdata*, %struct.markdata** @markdata, align 8
  %left_mar419 = getelementptr inbounds %struct.markdata, %struct.markdata* %342, i32 0, i32 7
  %343 = load i32, i32* %left_mar419, align 4
  %cmp420 = icmp ne i32 %343, 8
  %cond422 = select i1 %cmp420, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.6, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.7, i32 0, i32 0)
  call void (i32, i8*, ...) @LMsg(i32 0, i8* %cond422)
  br label %if.end.423

if.end.423:                                       ; preds = %if.then.418, %lor.lhs.false.415
  br label %sw.epilog.718

sw.bb.424:                                        ; preds = %processchar
  %344 = load %struct.markdata*, %struct.markdata** @markdata, align 8
  %nonl = getelementptr inbounds %struct.markdata, %struct.markdata* %344, i32 0, i32 9
  %345 = load i32, i32* %nonl, align 4
  %add425 = add nsw i32 %345, 1
  %rem = srem i32 %add425, 4
  %346 = load %struct.markdata*, %struct.markdata** @markdata, align 8
  %nonl426 = getelementptr inbounds %struct.markdata, %struct.markdata* %346, i32 0, i32 9
  store i32 %rem, i32* %nonl426, align 4
  %347 = load %struct.markdata*, %struct.markdata** @markdata, align 8
  %nonl427 = getelementptr inbounds %struct.markdata, %struct.markdata* %347, i32 0, i32 9
  %348 = load i32, i32* %nonl427, align 4
  switch i32 %348, label %sw.epilog [
    i32 0, label %sw.bb.428
    i32 1, label %sw.bb.433
    i32 2, label %sw.bb.434
    i32 3, label %sw.bb.435
  ]

sw.bb.428:                                        ; preds = %sw.bb.424
  %349 = load i32, i32* @join_with_cr, align 4
  %tobool429 = icmp ne i32 %349, 0
  br i1 %tobool429, label %if.then.430, label %if.else.431

if.then.430:                                      ; preds = %sw.bb.428
  call void (i32, i8*, ...) @LMsg(i32 0, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.8, i32 0, i32 0))
  br label %if.end.432

if.else.431:                                      ; preds = %sw.bb.428
  call void (i32, i8*, ...) @LMsg(i32 0, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.9, i32 0, i32 0))
  br label %if.end.432

if.end.432:                                       ; preds = %if.else.431, %if.then.430
  br label %sw.epilog

sw.bb.433:                                        ; preds = %sw.bb.424
  call void (i32, i8*, ...) @LMsg(i32 0, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.10, i32 0, i32 0))
  br label %sw.epilog

sw.bb.434:                                        ; preds = %sw.bb.424
  call void (i32, i8*, ...) @LMsg(i32 0, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.11, i32 0, i32 0))
  br label %sw.epilog

sw.bb.435:                                        ; preds = %sw.bb.424
  call void (i32, i8*, ...) @LMsg(i32 0, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.12, i32 0, i32 0))
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.bb.424, %sw.bb.435, %sw.bb.434, %sw.bb.433, %if.end.432
  br label %sw.epilog.718

sw.bb.436:                                        ; preds = %processchar
  call void @Search(i32 1)
  store i32 0, i32* %in_mark, align 4
  br label %sw.epilog.718

sw.bb.437:                                        ; preds = %processchar
  call void @Search(i32 -1)
  store i32 0, i32* %in_mark, align 4
  br label %sw.epilog.718

sw.bb.438:                                        ; preds = %processchar
  call void @Search(i32 0)
  br label %sw.epilog.718

sw.bb.439:                                        ; preds = %processchar
  %350 = load %struct.markdata*, %struct.markdata** @markdata, align 8
  %isdir = getelementptr inbounds %struct.markdata, %struct.markdata* %350, i32 0, i32 18
  %351 = load i32, i32* %isdir, align 4
  %sub440 = sub nsw i32 0, %351
  %352 = load %struct.markdata*, %struct.markdata** @markdata, align 8
  %isdir441 = getelementptr inbounds %struct.markdata, %struct.markdata* %352, i32 0, i32 18
  store i32 %sub440, i32* %isdir441, align 4
  call void @Search(i32 0)
  %353 = load %struct.markdata*, %struct.markdata** @markdata, align 8
  %isdir442 = getelementptr inbounds %struct.markdata, %struct.markdata* %353, i32 0, i32 18
  %354 = load i32, i32* %isdir442, align 4
  %sub443 = sub nsw i32 0, %354
  %355 = load %struct.markdata*, %struct.markdata** @markdata, align 8
  %isdir444 = getelementptr inbounds %struct.markdata, %struct.markdata* %355, i32 0, i32 18
  store i32 %sub443, i32* %isdir444, align 4
  br label %sw.epilog.718

sw.bb.445:                                        ; preds = %processchar, %processchar
  %356 = load %struct.markdata*, %struct.markdata** @markdata, align 8
  %second446 = getelementptr inbounds %struct.markdata, %struct.markdata* %356, i32 0, i32 6
  %357 = load i32, i32* %second446, align 4
  %cmp447 = icmp eq i32 %357, 0
  br i1 %cmp447, label %if.then.449, label %if.end.456

if.then.449:                                      ; preds = %sw.bb.445
  %358 = load i32, i32* %cy, align 4
  %call450 = call i32 @linestart(i32 %358)
  %359 = load i32, i32* %cy, align 4
  call void @revto(i32 %call450, i32 %359)
  %360 = load %struct.markdata*, %struct.markdata** @markdata, align 8
  %second451 = getelementptr inbounds %struct.markdata, %struct.markdata* %360, i32 0, i32 6
  %361 = load i32, i32* %second451, align 4
  %inc = add nsw i32 %361, 1
  store i32 %inc, i32* %second451, align 4
  %362 = load %struct.markdata*, %struct.markdata** @markdata, align 8
  %cx452 = getelementptr inbounds %struct.markdata, %struct.markdata* %362, i32 0, i32 2
  %363 = load i32, i32* %cx452, align 4
  %364 = load %struct.markdata*, %struct.markdata** @markdata, align 8
  %x1453 = getelementptr inbounds %struct.markdata, %struct.markdata* %364, i32 0, i32 4
  store i32 %363, i32* %x1453, align 4
  store i32 %363, i32* %cx, align 4
  %365 = load %struct.markdata*, %struct.markdata** @markdata, align 8
  %cy454 = getelementptr inbounds %struct.markdata, %struct.markdata* %365, i32 0, i32 3
  %366 = load i32, i32* %cy454, align 4
  %367 = load %struct.markdata*, %struct.markdata** @markdata, align 8
  %y1455 = getelementptr inbounds %struct.markdata, %struct.markdata* %367, i32 0, i32 5
  store i32 %366, i32* %y1455, align 4
  store i32 %366, i32* %cy, align 4
  br label %if.end.456

if.end.456:                                       ; preds = %if.then.449, %sw.bb.445
  %368 = load i32, i32* %rep_cnt, align 4
  %dec457 = add nsw i32 %368, -1
  store i32 %dec457, i32* %rep_cnt, align 4
  %cmp458 = icmp sgt i32 %dec457, 0
  br i1 %cmp458, label %if.then.460, label %if.end.462

if.then.460:                                      ; preds = %if.end.456
  %369 = load i32, i32* %cx, align 4
  %370 = load i32, i32* %cy, align 4
  %371 = load i32, i32* %rep_cnt, align 4
  %add461 = add nsw i32 %370, %371
  call void @revto(i32 %369, i32 %add461)
  br label %if.end.462

if.end.462:                                       ; preds = %if.then.460, %if.end.456
  %372 = load %struct.markdata*, %struct.markdata** @markdata, align 8
  %cy463 = getelementptr inbounds %struct.markdata, %struct.markdata* %372, i32 0, i32 3
  %373 = load i32, i32* %cy463, align 4
  %call464 = call i32 @lineend(i32 %373)
  %374 = load %struct.markdata*, %struct.markdata** @markdata, align 8
  %cy465 = getelementptr inbounds %struct.markdata, %struct.markdata* %374, i32 0, i32 3
  %375 = load i32, i32* %cy465, align 4
  call void @revto(i32 %call464, i32 %375)
  %376 = load i32, i32* %od, align 4
  %cmp466 = icmp eq i32 %376, 121
  br i1 %cmp466, label %if.then.468, label %if.end.469

if.then.468:                                      ; preds = %if.end.462
  br label %sw.epilog.718

if.end.469:                                       ; preds = %if.end.462
  br label %sw.bb.470

sw.bb.470:                                        ; preds = %processchar, %if.end.469
  %377 = load i32, i32* %od, align 4
  %cmp471 = icmp eq i32 %377, 87
  br i1 %cmp471, label %if.then.473, label %if.end.488

if.then.473:                                      ; preds = %sw.bb.470
  %378 = load i32, i32* %rep_cnt, align 4
  %cmp474 = icmp eq i32 %378, 0
  br i1 %cmp474, label %if.then.476, label %if.end.477

if.then.476:                                      ; preds = %if.then.473
  store i32 1, i32* %rep_cnt, align 4
  br label %if.end.477

if.end.477:                                       ; preds = %if.then.476, %if.then.473
  %379 = load %struct.markdata*, %struct.markdata** @markdata, align 8
  %second478 = getelementptr inbounds %struct.markdata, %struct.markdata* %379, i32 0, i32 6
  %380 = load i32, i32* %second478, align 4
  %tobool479 = icmp ne i32 %380, 0
  br i1 %tobool479, label %if.end.487, label %if.then.480

if.then.480:                                      ; preds = %if.end.477
  call void @nextword(i32* %cx, i32* %cy, i32 3, i32 1)
  %381 = load i32, i32* %cx, align 4
  %382 = load i32, i32* %cy, align 4
  call void @revto(i32 %381, i32 %382)
  %383 = load %struct.markdata*, %struct.markdata** @markdata, align 8
  %second481 = getelementptr inbounds %struct.markdata, %struct.markdata* %383, i32 0, i32 6
  %384 = load i32, i32* %second481, align 4
  %inc482 = add nsw i32 %384, 1
  store i32 %inc482, i32* %second481, align 4
  %385 = load %struct.markdata*, %struct.markdata** @markdata, align 8
  %cx483 = getelementptr inbounds %struct.markdata, %struct.markdata* %385, i32 0, i32 2
  %386 = load i32, i32* %cx483, align 4
  %387 = load %struct.markdata*, %struct.markdata** @markdata, align 8
  %x1484 = getelementptr inbounds %struct.markdata, %struct.markdata* %387, i32 0, i32 4
  store i32 %386, i32* %x1484, align 4
  store i32 %386, i32* %cx, align 4
  %388 = load %struct.markdata*, %struct.markdata** @markdata, align 8
  %cy485 = getelementptr inbounds %struct.markdata, %struct.markdata* %388, i32 0, i32 3
  %389 = load i32, i32* %cy485, align 4
  %390 = load %struct.markdata*, %struct.markdata** @markdata, align 8
  %y1486 = getelementptr inbounds %struct.markdata, %struct.markdata* %390, i32 0, i32 5
  store i32 %389, i32* %y1486, align 4
  store i32 %389, i32* %cy, align 4
  br label %if.end.487

if.end.487:                                       ; preds = %if.then.480, %if.end.477
  %391 = load i32, i32* %rep_cnt, align 4
  call void @nextword(i32* %cx, i32* %cy, i32 2, i32 %391)
  %392 = load i32, i32* %cx, align 4
  %393 = load i32, i32* %cy, align 4
  call void @revto(i32 %392, i32 %393)
  br label %if.end.488

if.end.488:                                       ; preds = %if.end.487, %sw.bb.470
  %394 = load %struct.markdata*, %struct.markdata** @markdata, align 8
  %cx489 = getelementptr inbounds %struct.markdata, %struct.markdata* %394, i32 0, i32 2
  %395 = load i32, i32* %cx489, align 4
  store i32 %395, i32* %cx, align 4
  %396 = load %struct.markdata*, %struct.markdata** @markdata, align 8
  %cy490 = getelementptr inbounds %struct.markdata, %struct.markdata* %396, i32 0, i32 3
  %397 = load i32, i32* %cy490, align 4
  store i32 %397, i32* %cy, align 4
  br label %sw.bb.491

sw.bb.491:                                        ; preds = %processchar, %if.end.488
  %398 = load i32, i32* %od, align 4
  %cmp492 = icmp eq i32 %398, 65
  br i1 %cmp492, label %if.then.494, label %if.end.496

if.then.494:                                      ; preds = %sw.bb.491
  %399 = load %struct.markdata*, %struct.markdata** @markdata, align 8
  %append_mode495 = getelementptr inbounds %struct.markdata, %struct.markdata* %399, i32 0, i32 11
  store i32 1, i32* %append_mode495, align 4
  br label %if.end.496

if.end.496:                                       ; preds = %if.then.494, %sw.bb.491
  br label %sw.bb.497

sw.bb.497:                                        ; preds = %processchar, %if.end.496
  %400 = load i32, i32* %od, align 4
  %cmp498 = icmp eq i32 %400, 62
  br i1 %cmp498, label %if.then.500, label %if.end.501

if.then.500:                                      ; preds = %sw.bb.497
  %401 = load %struct.markdata*, %struct.markdata** @markdata, align 8
  %write_buffer = getelementptr inbounds %struct.markdata, %struct.markdata* %401, i32 0, i32 12
  store i32 1, i32* %write_buffer, align 4
  br label %if.end.501

if.end.501:                                       ; preds = %if.then.500, %sw.bb.497
  br label %sw.bb.502

sw.bb.502:                                        ; preds = %processchar, %processchar, %if.end.501
  %402 = load %struct.markdata*, %struct.markdata** @markdata, align 8
  %second503 = getelementptr inbounds %struct.markdata, %struct.markdata* %402, i32 0, i32 6
  %403 = load i32, i32* %second503, align 4
  %tobool504 = icmp ne i32 %403, 0
  br i1 %tobool504, label %if.else.514, label %if.then.505

if.then.505:                                      ; preds = %sw.bb.502
  %404 = load %struct.markdata*, %struct.markdata** @markdata, align 8
  %second506 = getelementptr inbounds %struct.markdata, %struct.markdata* %404, i32 0, i32 6
  %405 = load i32, i32* %second506, align 4
  %inc507 = add nsw i32 %405, 1
  store i32 %inc507, i32* %second506, align 4
  %406 = load i32, i32* %cx, align 4
  %407 = load %struct.markdata*, %struct.markdata** @markdata, align 8
  %x1508 = getelementptr inbounds %struct.markdata, %struct.markdata* %407, i32 0, i32 4
  store i32 %406, i32* %x1508, align 4
  %408 = load i32, i32* %cy, align 4
  %409 = load %struct.markdata*, %struct.markdata** @markdata, align 8
  %y1509 = getelementptr inbounds %struct.markdata, %struct.markdata* %409, i32 0, i32 5
  store i32 %408, i32* %y1509, align 4
  %410 = load i32, i32* %cx, align 4
  %411 = load i32, i32* %cy, align 4
  call void @revto(i32 %410, i32 %411)
  %412 = load i32, i32* %cx, align 4
  %add510 = add nsw i32 %412, 1
  %413 = load i32, i32* %cy, align 4
  %414 = load %struct.markdata*, %struct.markdata** @markdata, align 8
  %hist_offset511 = getelementptr inbounds %struct.markdata, %struct.markdata* %414, i32 0, i32 13
  %415 = load i32, i32* %hist_offset511, align 4
  %sub512 = sub nsw i32 %413, %415
  %add513 = add nsw i32 %sub512, 1
  call void (i32, i8*, ...) @LMsg(i32 0, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.13, i32 0, i32 0), i32 %add510, i32 %add513)
  br label %sw.epilog.718

if.else.514:                                      ; preds = %sw.bb.502
  %416 = load %struct.markdata*, %struct.markdata** @markdata, align 8
  %append_mode516 = getelementptr inbounds %struct.markdata, %struct.markdata* %416, i32 0, i32 11
  %417 = load i32, i32* %append_mode516, align 4
  store i32 %417, i32* %append_mode515, align 4
  %418 = load %struct.markdata*, %struct.markdata** @markdata, align 8
  %write_buffer518 = getelementptr inbounds %struct.markdata, %struct.markdata* %418, i32 0, i32 12
  %419 = load i32, i32* %write_buffer518, align 4
  store i32 %419, i32* %write_buffer517, align 4
  %420 = load i32, i32* %cx, align 4
  store i32 %420, i32* %x2, align 4
  %421 = load i32, i32* %cy, align 4
  store i32 %421, i32* %y2, align 4
  %422 = load %struct.markdata*, %struct.markdata** @markdata, align 8
  %x1519 = getelementptr inbounds %struct.markdata, %struct.markdata* %422, i32 0, i32 4
  %423 = load i32, i32* %x1519, align 4
  %424 = load %struct.markdata*, %struct.markdata** @markdata, align 8
  %y1520 = getelementptr inbounds %struct.markdata, %struct.markdata* %424, i32 0, i32 5
  %425 = load i32, i32* %y1520, align 4
  %426 = load i32, i32* %x2, align 4
  %427 = load i32, i32* %y2, align 4
  %call521 = call i32 @rem(i32 %423, i32 %425, i32 %426, i32 %427, i32 2, i8* null, i32 0)
  store i32 %call521, i32* %newcopylen, align 4
  %428 = load %struct.acluser*, %struct.acluser** %md_user, align 8
  %u_plop = getelementptr inbounds %struct.acluser, %struct.acluser* %428, i32 0, i32 8
  %buf = getelementptr inbounds %struct.plop, %struct.plop* %u_plop, i32 0, i32 0
  %429 = load i8*, i8** %buf, align 8
  %tobool522 = icmp ne i8* %429, null
  br i1 %tobool522, label %land.lhs.true.523, label %if.end.527

land.lhs.true.523:                                ; preds = %if.else.514
  %430 = load i32, i32* %append_mode515, align 4
  %tobool524 = icmp ne i32 %430, 0
  br i1 %tobool524, label %if.end.527, label %if.then.525

if.then.525:                                      ; preds = %land.lhs.true.523
  %431 = load %struct.acluser*, %struct.acluser** %md_user, align 8
  %call526 = call i32 @UserFreeCopyBuffer(%struct.acluser* %431)
  br label %if.end.527

if.end.527:                                       ; preds = %if.then.525, %land.lhs.true.523, %if.else.514
  %432 = load %struct.win*, %struct.win** @fore, align 8
  %w_layer528 = getelementptr inbounds %struct.win, %struct.win* %432, i32 0, i32 3
  %l_height529 = getelementptr inbounds %struct.layer, %struct.layer* %w_layer528, i32 0, i32 2
  %433 = load i32, i32* %l_height529, align 4
  %sub530 = sub nsw i32 %433, 1
  store i32 %sub530, i32* %yend, align 4
  %434 = load %struct.win*, %struct.win** @fore, align 8
  %w_histheight531 = getelementptr inbounds %struct.win, %struct.win* %434, i32 0, i32 77
  %435 = load i32, i32* %w_histheight531, align 4
  %436 = load %struct.markdata*, %struct.markdata** @markdata, align 8
  %hist_offset532 = getelementptr inbounds %struct.markdata, %struct.markdata* %436, i32 0, i32 13
  %437 = load i32, i32* %hist_offset532, align 4
  %sub533 = sub nsw i32 %435, %437
  %438 = load %struct.win*, %struct.win** @fore, align 8
  %w_layer534 = getelementptr inbounds %struct.win, %struct.win* %438, i32 0, i32 3
  %l_height535 = getelementptr inbounds %struct.layer, %struct.layer* %w_layer534, i32 0, i32 2
  %439 = load i32, i32* %l_height535, align 4
  %cmp536 = icmp slt i32 %sub533, %439
  br i1 %cmp536, label %if.then.538, label %if.end.545

if.then.538:                                      ; preds = %if.end.527
  %440 = load %struct.markdata*, %struct.markdata** @markdata, align 8
  %second539 = getelementptr inbounds %struct.markdata, %struct.markdata* %440, i32 0, i32 6
  store i32 0, i32* %second539, align 4
  %441 = load %struct.win*, %struct.win** @fore, align 8
  %w_histheight540 = getelementptr inbounds %struct.win, %struct.win* %441, i32 0, i32 77
  %442 = load i32, i32* %w_histheight540, align 4
  %443 = load %struct.markdata*, %struct.markdata** @markdata, align 8
  %hist_offset541 = getelementptr inbounds %struct.markdata, %struct.markdata* %443, i32 0, i32 13
  %444 = load i32, i32* %hist_offset541, align 4
  %sub542 = sub nsw i32 %442, %444
  %call543 = call i32 @MarkScrollUpDisplay(i32 %sub542)
  %445 = load i32, i32* %yend, align 4
  %sub544 = sub nsw i32 %445, %call543
  store i32 %sub544, i32* %yend, align 4
  br label %if.end.545

if.end.545:                                       ; preds = %if.then.538, %if.end.527
  %446 = load i32, i32* %newcopylen, align 4
  %cmp546 = icmp sgt i32 %446, 0
  br i1 %cmp546, label %if.then.548, label %if.end.644

if.then.548:                                      ; preds = %if.end.545
  %447 = load %struct.acluser*, %struct.acluser** %md_user, align 8
  %u_plop549 = getelementptr inbounds %struct.acluser, %struct.acluser* %447, i32 0, i32 8
  %buf550 = getelementptr inbounds %struct.plop, %struct.plop* %u_plop549, i32 0, i32 0
  %448 = load i8*, i8** %buf550, align 8
  %tobool551 = icmp ne i8* %448, null
  br i1 %tobool551, label %if.then.552, label %if.else.562

if.then.552:                                      ; preds = %if.then.548
  %449 = load %struct.acluser*, %struct.acluser** %md_user, align 8
  %u_plop553 = getelementptr inbounds %struct.acluser, %struct.acluser* %449, i32 0, i32 8
  %buf554 = getelementptr inbounds %struct.plop, %struct.plop* %u_plop553, i32 0, i32 0
  %450 = load i8*, i8** %buf554, align 8
  %451 = load %struct.acluser*, %struct.acluser** %md_user, align 8
  %u_plop555 = getelementptr inbounds %struct.acluser, %struct.acluser* %451, i32 0, i32 8
  %len = getelementptr inbounds %struct.plop, %struct.plop* %u_plop555, i32 0, i32 1
  %452 = load i32, i32* %len, align 4
  %453 = load i32, i32* %newcopylen, align 4
  %add556 = add nsw i32 %452, %453
  %add557 = add nsw i32 %add556, 3
  %conv558 = zext i32 %add557 to i64
  %call559 = call i8* @realloc(i8* %450, i64 %conv558) #3
  %454 = load %struct.acluser*, %struct.acluser** %md_user, align 8
  %u_plop560 = getelementptr inbounds %struct.acluser, %struct.acluser* %454, i32 0, i32 8
  %buf561 = getelementptr inbounds %struct.plop, %struct.plop* %u_plop560, i32 0, i32 0
  store i8* %call559, i8** %buf561, align 8
  br label %if.end.570

if.else.562:                                      ; preds = %if.then.548
  %455 = load %struct.acluser*, %struct.acluser** %md_user, align 8
  %u_plop563 = getelementptr inbounds %struct.acluser, %struct.acluser* %455, i32 0, i32 8
  %len564 = getelementptr inbounds %struct.plop, %struct.plop* %u_plop563, i32 0, i32 1
  store i32 0, i32* %len564, align 4
  %456 = load i32, i32* %newcopylen, align 4
  %add565 = add nsw i32 %456, 3
  %conv566 = zext i32 %add565 to i64
  %call567 = call noalias i8* @malloc(i64 %conv566) #3
  %457 = load %struct.acluser*, %struct.acluser** %md_user, align 8
  %u_plop568 = getelementptr inbounds %struct.acluser, %struct.acluser* %457, i32 0, i32 8
  %buf569 = getelementptr inbounds %struct.plop, %struct.plop* %u_plop568, i32 0, i32 0
  store i8* %call567, i8** %buf569, align 8
  br label %if.end.570

if.end.570:                                       ; preds = %if.else.562, %if.then.552
  %458 = load %struct.acluser*, %struct.acluser** %md_user, align 8
  %u_plop571 = getelementptr inbounds %struct.acluser, %struct.acluser* %458, i32 0, i32 8
  %buf572 = getelementptr inbounds %struct.plop, %struct.plop* %u_plop571, i32 0, i32 0
  %459 = load i8*, i8** %buf572, align 8
  %tobool573 = icmp ne i8* %459, null
  br i1 %tobool573, label %if.end.579, label %if.then.574

if.then.574:                                      ; preds = %if.end.570
  call void @MarkAbort()
  store i32 0, i32* %in_mark, align 4
  call void (i32, i8*, ...) @LMsg(i32 0, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str, i32 0, i32 0))
  %460 = load %struct.acluser*, %struct.acluser** %md_user, align 8
  %u_plop575 = getelementptr inbounds %struct.acluser, %struct.acluser* %460, i32 0, i32 8
  %len576 = getelementptr inbounds %struct.plop, %struct.plop* %u_plop575, i32 0, i32 1
  store i32 0, i32* %len576, align 4
  %461 = load %struct.acluser*, %struct.acluser** %md_user, align 8
  %u_plop577 = getelementptr inbounds %struct.acluser, %struct.acluser* %461, i32 0, i32 8
  %buf578 = getelementptr inbounds %struct.plop, %struct.plop* %u_plop577, i32 0, i32 0
  store i8* null, i8** %buf578, align 8
  br label %sw.epilog.718

if.end.579:                                       ; preds = %if.end.570
  %462 = load i32, i32* %append_mode515, align 4
  %tobool580 = icmp ne i32 %462, 0
  br i1 %tobool580, label %if.then.581, label %if.end.627

if.then.581:                                      ; preds = %if.end.579
  %463 = load %struct.markdata*, %struct.markdata** @markdata, align 8
  %nonl582 = getelementptr inbounds %struct.markdata, %struct.markdata* %463, i32 0, i32 9
  %464 = load i32, i32* %nonl582, align 4
  switch i32 %464, label %sw.epilog.626 [
    i32 0, label %sw.bb.583
    i32 1, label %sw.bb.605
    i32 2, label %sw.bb.606
    i32 3, label %sw.bb.616
  ]

sw.bb.583:                                        ; preds = %if.then.581
  %465 = load i32, i32* @join_with_cr, align 4
  %tobool584 = icmp ne i32 %465, 0
  br i1 %tobool584, label %if.then.585, label %if.end.595

if.then.585:                                      ; preds = %sw.bb.583
  %466 = load %struct.acluser*, %struct.acluser** %md_user, align 8
  %u_plop586 = getelementptr inbounds %struct.acluser, %struct.acluser* %466, i32 0, i32 8
  %len587 = getelementptr inbounds %struct.plop, %struct.plop* %u_plop586, i32 0, i32 1
  %467 = load i32, i32* %len587, align 4
  %idxprom588 = sext i32 %467 to i64
  %468 = load %struct.acluser*, %struct.acluser** %md_user, align 8
  %u_plop589 = getelementptr inbounds %struct.acluser, %struct.acluser* %468, i32 0, i32 8
  %buf590 = getelementptr inbounds %struct.plop, %struct.plop* %u_plop589, i32 0, i32 0
  %469 = load i8*, i8** %buf590, align 8
  %arrayidx591 = getelementptr inbounds i8, i8* %469, i64 %idxprom588
  store i8 13, i8* %arrayidx591, align 1
  %470 = load %struct.acluser*, %struct.acluser** %md_user, align 8
  %u_plop592 = getelementptr inbounds %struct.acluser, %struct.acluser* %470, i32 0, i32 8
  %len593 = getelementptr inbounds %struct.plop, %struct.plop* %u_plop592, i32 0, i32 1
  %471 = load i32, i32* %len593, align 4
  %inc594 = add nsw i32 %471, 1
  store i32 %inc594, i32* %len593, align 4
  br label %if.end.595

if.end.595:                                       ; preds = %if.then.585, %sw.bb.583
  %472 = load %struct.acluser*, %struct.acluser** %md_user, align 8
  %u_plop596 = getelementptr inbounds %struct.acluser, %struct.acluser* %472, i32 0, i32 8
  %len597 = getelementptr inbounds %struct.plop, %struct.plop* %u_plop596, i32 0, i32 1
  %473 = load i32, i32* %len597, align 4
  %idxprom598 = sext i32 %473 to i64
  %474 = load %struct.acluser*, %struct.acluser** %md_user, align 8
  %u_plop599 = getelementptr inbounds %struct.acluser, %struct.acluser* %474, i32 0, i32 8
  %buf600 = getelementptr inbounds %struct.plop, %struct.plop* %u_plop599, i32 0, i32 0
  %475 = load i8*, i8** %buf600, align 8
  %arrayidx601 = getelementptr inbounds i8, i8* %475, i64 %idxprom598
  store i8 10, i8* %arrayidx601, align 1
  %476 = load %struct.acluser*, %struct.acluser** %md_user, align 8
  %u_plop602 = getelementptr inbounds %struct.acluser, %struct.acluser* %476, i32 0, i32 8
  %len603 = getelementptr inbounds %struct.plop, %struct.plop* %u_plop602, i32 0, i32 1
  %477 = load i32, i32* %len603, align 4
  %inc604 = add nsw i32 %477, 1
  store i32 %inc604, i32* %len603, align 4
  br label %sw.epilog.626

sw.bb.605:                                        ; preds = %if.then.581
  br label %sw.epilog.626

sw.bb.606:                                        ; preds = %if.then.581
  %478 = load %struct.acluser*, %struct.acluser** %md_user, align 8
  %u_plop607 = getelementptr inbounds %struct.acluser, %struct.acluser* %478, i32 0, i32 8
  %len608 = getelementptr inbounds %struct.plop, %struct.plop* %u_plop607, i32 0, i32 1
  %479 = load i32, i32* %len608, align 4
  %idxprom609 = sext i32 %479 to i64
  %480 = load %struct.acluser*, %struct.acluser** %md_user, align 8
  %u_plop610 = getelementptr inbounds %struct.acluser, %struct.acluser* %480, i32 0, i32 8
  %buf611 = getelementptr inbounds %struct.plop, %struct.plop* %u_plop610, i32 0, i32 0
  %481 = load i8*, i8** %buf611, align 8
  %arrayidx612 = getelementptr inbounds i8, i8* %481, i64 %idxprom609
  store i8 32, i8* %arrayidx612, align 1
  %482 = load %struct.acluser*, %struct.acluser** %md_user, align 8
  %u_plop613 = getelementptr inbounds %struct.acluser, %struct.acluser* %482, i32 0, i32 8
  %len614 = getelementptr inbounds %struct.plop, %struct.plop* %u_plop613, i32 0, i32 1
  %483 = load i32, i32* %len614, align 4
  %inc615 = add nsw i32 %483, 1
  store i32 %inc615, i32* %len614, align 4
  br label %sw.epilog.626

sw.bb.616:                                        ; preds = %if.then.581
  %484 = load %struct.acluser*, %struct.acluser** %md_user, align 8
  %u_plop617 = getelementptr inbounds %struct.acluser, %struct.acluser* %484, i32 0, i32 8
  %len618 = getelementptr inbounds %struct.plop, %struct.plop* %u_plop617, i32 0, i32 1
  %485 = load i32, i32* %len618, align 4
  %idxprom619 = sext i32 %485 to i64
  %486 = load %struct.acluser*, %struct.acluser** %md_user, align 8
  %u_plop620 = getelementptr inbounds %struct.acluser, %struct.acluser* %486, i32 0, i32 8
  %buf621 = getelementptr inbounds %struct.plop, %struct.plop* %u_plop620, i32 0, i32 0
  %487 = load i8*, i8** %buf621, align 8
  %arrayidx622 = getelementptr inbounds i8, i8* %487, i64 %idxprom619
  store i8 44, i8* %arrayidx622, align 1
  %488 = load %struct.acluser*, %struct.acluser** %md_user, align 8
  %u_plop623 = getelementptr inbounds %struct.acluser, %struct.acluser* %488, i32 0, i32 8
  %len624 = getelementptr inbounds %struct.plop, %struct.plop* %u_plop623, i32 0, i32 1
  %489 = load i32, i32* %len624, align 4
  %inc625 = add nsw i32 %489, 1
  store i32 %inc625, i32* %len624, align 4
  br label %sw.epilog.626

sw.epilog.626:                                    ; preds = %if.then.581, %sw.bb.616, %sw.bb.606, %sw.bb.605, %if.end.595
  br label %if.end.627

if.end.627:                                       ; preds = %sw.epilog.626, %if.end.579
  %490 = load %struct.markdata*, %struct.markdata** @markdata, align 8
  %x1628 = getelementptr inbounds %struct.markdata, %struct.markdata* %490, i32 0, i32 4
  %491 = load i32, i32* %x1628, align 4
  %492 = load %struct.markdata*, %struct.markdata** @markdata, align 8
  %y1629 = getelementptr inbounds %struct.markdata, %struct.markdata* %492, i32 0, i32 5
  %493 = load i32, i32* %y1629, align 4
  %494 = load i32, i32* %x2, align 4
  %495 = load i32, i32* %y2, align 4
  %496 = load %struct.markdata*, %struct.markdata** @markdata, align 8
  %hist_offset630 = getelementptr inbounds %struct.markdata, %struct.markdata* %496, i32 0, i32 13
  %497 = load i32, i32* %hist_offset630, align 4
  %498 = load %struct.win*, %struct.win** @fore, align 8
  %w_histheight631 = getelementptr inbounds %struct.win, %struct.win* %498, i32 0, i32 77
  %499 = load i32, i32* %w_histheight631, align 4
  %cmp632 = icmp eq i32 %497, %499
  %conv633 = zext i1 %cmp632 to i32
  %500 = load %struct.acluser*, %struct.acluser** %md_user, align 8
  %u_plop634 = getelementptr inbounds %struct.acluser, %struct.acluser* %500, i32 0, i32 8
  %buf635 = getelementptr inbounds %struct.plop, %struct.plop* %u_plop634, i32 0, i32 0
  %501 = load i8*, i8** %buf635, align 8
  %502 = load %struct.acluser*, %struct.acluser** %md_user, align 8
  %u_plop636 = getelementptr inbounds %struct.acluser, %struct.acluser* %502, i32 0, i32 8
  %len637 = getelementptr inbounds %struct.plop, %struct.plop* %u_plop636, i32 0, i32 1
  %503 = load i32, i32* %len637, align 4
  %idx.ext = sext i32 %503 to i64
  %add.ptr = getelementptr inbounds i8, i8* %501, i64 %idx.ext
  %504 = load i32, i32* %yend, align 4
  %call638 = call i32 @rem(i32 %491, i32 %493, i32 %494, i32 %495, i32 %conv633, i8* %add.ptr, i32 %504)
  %505 = load %struct.acluser*, %struct.acluser** %md_user, align 8
  %u_plop639 = getelementptr inbounds %struct.acluser, %struct.acluser* %505, i32 0, i32 8
  %len640 = getelementptr inbounds %struct.plop, %struct.plop* %u_plop639, i32 0, i32 1
  %506 = load i32, i32* %len640, align 4
  %add641 = add nsw i32 %506, %call638
  store i32 %add641, i32* %len640, align 4
  %507 = load %struct.win*, %struct.win** @fore, align 8
  %w_layer642 = getelementptr inbounds %struct.win, %struct.win* %507, i32 0, i32 3
  %l_encoding = getelementptr inbounds %struct.layer, %struct.layer* %w_layer642, i32 0, i32 5
  %508 = load i32, i32* %l_encoding, align 4
  %509 = load %struct.acluser*, %struct.acluser** %md_user, align 8
  %u_plop643 = getelementptr inbounds %struct.acluser, %struct.acluser* %509, i32 0, i32 8
  %enc = getelementptr inbounds %struct.plop, %struct.plop* %u_plop643, i32 0, i32 2
  store i32 %508, i32* %enc, align 4
  br label %if.end.644

if.end.644:                                       ; preds = %if.end.627, %if.end.545
  %510 = load %struct.markdata*, %struct.markdata** @markdata, align 8
  %hist_offset645 = getelementptr inbounds %struct.markdata, %struct.markdata* %510, i32 0, i32 13
  %511 = load i32, i32* %hist_offset645, align 4
  %512 = load %struct.win*, %struct.win** @fore, align 8
  %w_histheight646 = getelementptr inbounds %struct.win, %struct.win* %512, i32 0, i32 77
  %513 = load i32, i32* %w_histheight646, align 4
  %cmp647 = icmp ne i32 %511, %513
  br i1 %cmp647, label %if.then.649, label %if.end.670

if.then.649:                                      ; preds = %if.end.644
  br label %do.body.650

do.body.650:                                      ; preds = %if.then.649
  %514 = load %struct.layer*, %struct.layer** @flayer, align 8
  store %struct.layer* %514, %struct.layer** %oldlay, align 8
  br label %do.body.651

do.body.651:                                      ; preds = %do.body.650
  br label %do.end.652

do.end.652:                                       ; preds = %do.body.651
  %515 = load %struct.layer*, %struct.layer** @flayer, align 8
  %l_next = getelementptr inbounds %struct.layer, %struct.layer* %515, i32 0, i32 8
  %516 = load %struct.layer*, %struct.layer** %l_next, align 8
  store %struct.layer* %516, %struct.layer** @flayer, align 8
  %517 = load %struct.layer*, %struct.layer** @flayer, align 8
  %l_cvlist = getelementptr inbounds %struct.layer, %struct.layer* %517, i32 0, i32 0
  %518 = load %struct.canvas*, %struct.canvas** %l_cvlist, align 8
  store %struct.canvas* %518, %struct.canvas** %oldcvlist, align 8
  br label %do.body.653

do.body.653:                                      ; preds = %do.end.652
  br label %do.end.654

do.end.654:                                       ; preds = %do.body.653
  %519 = load %struct.layer*, %struct.layer** %oldlay, align 8
  %l_cvlist655 = getelementptr inbounds %struct.layer, %struct.layer* %519, i32 0, i32 0
  %520 = load %struct.canvas*, %struct.canvas** %l_cvlist655, align 8
  %521 = load %struct.layer*, %struct.layer** @flayer, align 8
  %l_cvlist656 = getelementptr inbounds %struct.layer, %struct.layer* %521, i32 0, i32 0
  store %struct.canvas* %520, %struct.canvas** %l_cvlist656, align 8
  %522 = load %struct.layer*, %struct.layer** @flayer, align 8
  %l_cvlist657 = getelementptr inbounds %struct.layer, %struct.layer* %522, i32 0, i32 0
  %523 = load %struct.canvas*, %struct.canvas** %l_cvlist657, align 8
  store %struct.canvas* %523, %struct.canvas** %cv, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %do.end.654
  %524 = load %struct.canvas*, %struct.canvas** %cv, align 8
  %tobool658 = icmp ne %struct.canvas* %524, null
  br i1 %tobool658, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %525 = load %struct.layer*, %struct.layer** @flayer, align 8
  %526 = load %struct.canvas*, %struct.canvas** %cv, align 8
  %c_layer = getelementptr inbounds %struct.canvas, %struct.canvas* %526, i32 0, i32 9
  store %struct.layer* %525, %struct.layer** %c_layer, align 8
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %527 = load %struct.canvas*, %struct.canvas** %cv, align 8
  %c_lnext = getelementptr inbounds %struct.canvas, %struct.canvas* %527, i32 0, i32 10
  %528 = load %struct.canvas*, %struct.canvas** %c_lnext, align 8
  store %struct.canvas* %528, %struct.canvas** %cv, align 8
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %529 = load %struct.layer*, %struct.layer** @flayer, align 8
  call void @LRefreshAll(%struct.layer* %529, i32 0)
  %530 = load %struct.layer*, %struct.layer** %oldlay, align 8
  store %struct.layer* %530, %struct.layer** @flayer, align 8
  %531 = load %struct.layer*, %struct.layer** @flayer, align 8
  %l_cvlist659 = getelementptr inbounds %struct.layer, %struct.layer* %531, i32 0, i32 0
  %532 = load %struct.canvas*, %struct.canvas** %l_cvlist659, align 8
  store %struct.canvas* %532, %struct.canvas** %cv, align 8
  br label %for.cond.660

for.cond.660:                                     ; preds = %for.inc.664, %for.end
  %533 = load %struct.canvas*, %struct.canvas** %cv, align 8
  %tobool661 = icmp ne %struct.canvas* %533, null
  br i1 %tobool661, label %for.body.662, label %for.end.666

for.body.662:                                     ; preds = %for.cond.660
  %534 = load %struct.layer*, %struct.layer** @flayer, align 8
  %535 = load %struct.canvas*, %struct.canvas** %cv, align 8
  %c_layer663 = getelementptr inbounds %struct.canvas, %struct.canvas* %535, i32 0, i32 9
  store %struct.layer* %534, %struct.layer** %c_layer663, align 8
  br label %for.inc.664

for.inc.664:                                      ; preds = %for.body.662
  %536 = load %struct.canvas*, %struct.canvas** %cv, align 8
  %c_lnext665 = getelementptr inbounds %struct.canvas, %struct.canvas* %536, i32 0, i32 10
  %537 = load %struct.canvas*, %struct.canvas** %c_lnext665, align 8
  store %struct.canvas* %537, %struct.canvas** %cv, align 8
  br label %for.cond.660

for.end.666:                                      ; preds = %for.cond.660
  %538 = load %struct.canvas*, %struct.canvas** %oldcvlist, align 8
  %539 = load %struct.layer*, %struct.layer** @flayer, align 8
  %l_next667 = getelementptr inbounds %struct.layer, %struct.layer* %539, i32 0, i32 8
  %540 = load %struct.layer*, %struct.layer** %l_next667, align 8
  %l_cvlist668 = getelementptr inbounds %struct.layer, %struct.layer* %540, i32 0, i32 0
  store %struct.canvas* %538, %struct.canvas** %l_cvlist668, align 8
  br label %do.end.669

do.end.669:                                       ; preds = %for.end.666
  br label %if.end.670

if.end.670:                                       ; preds = %do.end.669, %if.end.644
  call void @ExitOverlayPage()
  %541 = load %struct.win*, %struct.win** @fore, align 8
  call void @WindowChanged(%struct.win* %541, i32 80)
  %542 = load i32, i32* %append_mode515, align 4
  %tobool671 = icmp ne i32 %542, 0
  br i1 %tobool671, label %if.then.672, label %if.else.673

if.then.672:                                      ; preds = %if.end.670
  %543 = load i32, i32* %newcopylen, align 4
  call void (i32, i8*, ...) @LMsg(i32 0, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.14, i32 0, i32 0), i32 %543)
  br label %if.end.676

if.else.673:                                      ; preds = %if.end.670
  %544 = load %struct.acluser*, %struct.acluser** %md_user, align 8
  %u_plop674 = getelementptr inbounds %struct.acluser, %struct.acluser* %544, i32 0, i32 8
  %len675 = getelementptr inbounds %struct.plop, %struct.plop* %u_plop674, i32 0, i32 1
  %545 = load i32, i32* %len675, align 4
  call void (i32, i8*, ...) @LMsg(i32 0, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.15, i32 0, i32 0), i32 %545)
  br label %if.end.676

if.end.676:                                       ; preds = %if.else.673, %if.then.672
  %546 = load i32, i32* %write_buffer517, align 4
  %tobool677 = icmp ne i32 %546, 0
  br i1 %tobool677, label %if.then.678, label %if.end.679

if.then.678:                                      ; preds = %if.end.676
  %547 = load %struct.acluser*, %struct.acluser** %md_user, align 8
  call void @WriteFile(%struct.acluser* %547, i8* null, i32 2)
  br label %if.end.679

if.end.679:                                       ; preds = %if.then.678, %if.end.676
  store i32 0, i32* %in_mark, align 4
  br label %sw.epilog.718

sw.bb.680:                                        ; preds = %processchar
  %548 = load %struct.layer*, %struct.layer** @flayer, align 8
  %l_mouseevent681 = getelementptr inbounds %struct.layer, %struct.layer* %548, i32 0, i32 12
  %start682 = getelementptr inbounds %struct.anon, %struct.anon* %l_mouseevent681, i32 0, i32 2
  %549 = load i32, i32* %start682, align 4
  %tobool683 = icmp ne i32 %549, 0
  br i1 %tobool683, label %if.then.684, label %if.else.716

if.then.684:                                      ; preds = %sw.bb.680
  %550 = load %struct.layer*, %struct.layer** @flayer, align 8
  %l_mouseevent685 = getelementptr inbounds %struct.layer, %struct.layer* %550, i32 0, i32 12
  %buffer = getelementptr inbounds %struct.anon, %struct.anon* %l_mouseevent685, i32 0, i32 0
  %arrayidx686 = getelementptr inbounds [3 x i8], [3 x i8]* %buffer, i32 0, i64 0
  %551 = load i8, i8* %arrayidx686, align 1
  %conv687 = zext i8 %551 to i32
  store i32 %conv687, i32* %button, align 4
  %552 = load i32, i32* %button, align 4
  %cmp688 = icmp eq i32 %552, 97
  br i1 %cmp688, label %if.then.690, label %if.else.691

if.then.690:                                      ; preds = %if.then.684
  store i32 106, i32* %od, align 4
  br label %if.end.712

if.else.691:                                      ; preds = %if.then.684
  %553 = load i32, i32* %button, align 4
  %cmp692 = icmp eq i32 %553, 96
  br i1 %cmp692, label %if.then.694, label %if.else.695

if.then.694:                                      ; preds = %if.else.691
  store i32 107, i32* %od, align 4
  br label %if.end.711

if.else.695:                                      ; preds = %if.else.691
  %554 = load i32, i32* %button, align 4
  %cmp696 = icmp eq i32 %554, 32
  br i1 %cmp696, label %if.then.698, label %if.else.709

if.then.698:                                      ; preds = %if.else.695
  %555 = load %struct.layer*, %struct.layer** @flayer, align 8
  %l_mouseevent699 = getelementptr inbounds %struct.layer, %struct.layer* %555, i32 0, i32 12
  %buffer700 = getelementptr inbounds %struct.anon, %struct.anon* %l_mouseevent699, i32 0, i32 0
  %arrayidx701 = getelementptr inbounds [3 x i8], [3 x i8]* %buffer700, i32 0, i64 1
  %556 = load i8, i8* %arrayidx701, align 1
  %conv702 = zext i8 %556 to i32
  store i32 %conv702, i32* %cx, align 4
  %557 = load %struct.layer*, %struct.layer** @flayer, align 8
  %l_mouseevent703 = getelementptr inbounds %struct.layer, %struct.layer* %557, i32 0, i32 12
  %buffer704 = getelementptr inbounds %struct.anon, %struct.anon* %l_mouseevent703, i32 0, i32 0
  %arrayidx705 = getelementptr inbounds [3 x i8], [3 x i8]* %buffer704, i32 0, i64 2
  %558 = load i8, i8* %arrayidx705, align 1
  %conv706 = zext i8 %558 to i32
  %559 = load %struct.markdata*, %struct.markdata** @markdata, align 8
  %hist_offset707 = getelementptr inbounds %struct.markdata, %struct.markdata* %559, i32 0, i32 13
  %560 = load i32, i32* %hist_offset707, align 4
  %add708 = add nsw i32 %conv706, %560
  store i32 %add708, i32* %cy, align 4
  %561 = load i32, i32* %cx, align 4
  %562 = load i32, i32* %cy, align 4
  call void @revto(i32 %561, i32 %562)
  store i32 32, i32* %od, align 4
  br label %if.end.710

if.else.709:                                      ; preds = %if.else.695
  store i32 0, i32* %od, align 4
  br label %if.end.710

if.end.710:                                       ; preds = %if.else.709, %if.then.698
  br label %if.end.711

if.end.711:                                       ; preds = %if.end.710, %if.then.694
  br label %if.end.712

if.end.712:                                       ; preds = %if.end.711, %if.then.690
  %563 = load %struct.layer*, %struct.layer** @flayer, align 8
  call void @LayProcessMouseSwitch(%struct.layer* %563, i32 0)
  %564 = load i32, i32* %od, align 4
  %tobool713 = icmp ne i32 %564, 0
  br i1 %tobool713, label %if.then.714, label %if.end.715

if.then.714:                                      ; preds = %if.end.712
  br label %processchar

if.end.715:                                       ; preds = %if.end.712
  br label %if.end.717

if.else.716:                                      ; preds = %sw.bb.680
  %565 = load %struct.layer*, %struct.layer** @flayer, align 8
  call void @LayProcessMouseSwitch(%struct.layer* %565, i32 1)
  br label %if.end.717

if.end.717:                                       ; preds = %if.else.716, %if.end.715
  br label %sw.epilog.718

sw.default:                                       ; preds = %processchar
  call void @MarkAbort()
  call void (i32, i8*, ...) @LMsg(i32 0, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.16, i32 0, i32 0))
  store i32 0, i32* %in_mark, align 4
  br label %sw.epilog.718

sw.epilog.718:                                    ; preds = %sw.default, %if.end.717, %if.end.679, %if.then.574, %if.then.505, %if.then.468, %sw.bb.439, %sw.bb.438, %sw.bb.437, %sw.bb.436, %sw.epilog, %if.end.423, %do.end.354, %if.end.345, %if.end.337, %if.end.332, %sw.bb.326, %sw.bb.319, %sw.bb.311, %sw.bb.307, %if.end.300, %if.end.280, %sw.bb.270, %if.end.269, %if.end.246, %if.end.225, %if.end.216, %if.end.211, %if.end.182, %sw.bb.173, %sw.bb.172, %sw.bb.170, %if.end.166, %sw.bb.157, %if.end.155, %if.end.149, %sw.bb.143, %sw.bb.141, %if.end.139, %if.end.128, %if.end.110, %if.end.104, %sw.bb.97, %if.end.90, %if.then.89, %cond.end.81, %if.then.68
  %566 = load i32, i32* %in_mark, align 4
  %tobool719 = icmp ne i32 %566, 0
  br i1 %tobool719, label %if.then.720, label %if.end.722

if.then.720:                                      ; preds = %sw.epilog.718
  %567 = load %struct.markdata*, %struct.markdata** @markdata, align 8
  %rep_cnt721 = getelementptr inbounds %struct.markdata, %struct.markdata* %567, i32 0, i32 10
  store i32 0, i32* %rep_cnt721, align 4
  br label %if.end.722

if.end.722:                                       ; preds = %if.then.720, %sw.epilog.718
  br label %while.cond

while.end:                                        ; preds = %land.end
  %568 = load i32, i32* %in_mark, align 4
  %tobool723 = icmp ne i32 %568, 0
  br i1 %tobool723, label %if.then.724, label %if.end.729

if.then.724:                                      ; preds = %while.end
  %569 = load %struct.markdata*, %struct.markdata** @markdata, align 8
  %cx725 = getelementptr inbounds %struct.markdata, %struct.markdata* %569, i32 0, i32 2
  %570 = load i32, i32* %cx725, align 4
  %571 = load %struct.layer*, %struct.layer** @flayer, align 8
  %l_x = getelementptr inbounds %struct.layer, %struct.layer* %571, i32 0, i32 3
  store i32 %570, i32* %l_x, align 4
  %572 = load %struct.markdata*, %struct.markdata** @markdata, align 8
  %cy726 = getelementptr inbounds %struct.markdata, %struct.markdata* %572, i32 0, i32 3
  %573 = load i32, i32* %cy726, align 4
  %574 = load %struct.markdata*, %struct.markdata** @markdata, align 8
  %hist_offset727 = getelementptr inbounds %struct.markdata, %struct.markdata* %574, i32 0, i32 13
  %575 = load i32, i32* %hist_offset727, align 4
  %sub728 = sub nsw i32 %573, %575
  %576 = load %struct.layer*, %struct.layer** @flayer, align 8
  %l_y = getelementptr inbounds %struct.layer, %struct.layer* %576, i32 0, i32 4
  store i32 %sub728, i32* %l_y, align 4
  br label %if.end.729

if.end.729:                                       ; preds = %if.then.724, %while.end
  %577 = load i8*, i8** %pt, align 8
  %578 = load i8**, i8*** %inbufp.addr, align 8
  store i8* %577, i8** %578, align 8
  %579 = load i32, i32* %inlen, align 4
  %580 = load i32*, i32** %inlenp.addr, align 8
  store i32 %579, i32* %580, align 4
  br label %return

return:                                           ; preds = %if.end.729, %if.then
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @MarkAbort() #0 {
entry:
  %yend = alloca i32, align 4
  %redisp = alloca i32, align 4
  %oldlay = alloca %struct.layer*, align 8
  %oldcvlist = alloca %struct.canvas*, align 8
  %cv = alloca %struct.canvas*, align 8
  br label %do.body

do.body:                                          ; preds = %entry
  br label %do.end

do.end:                                           ; preds = %do.body
  %0 = load %struct.layer*, %struct.layer** @flayer, align 8
  %l_data = getelementptr inbounds %struct.layer, %struct.layer* %0, i32 0, i32 7
  %1 = load i8*, i8** %l_data, align 8
  %2 = bitcast i8* %1 to %struct.markdata*
  store %struct.markdata* %2, %struct.markdata** @markdata, align 8
  %3 = load %struct.markdata*, %struct.markdata** @markdata, align 8
  %md_window = getelementptr inbounds %struct.markdata, %struct.markdata* %3, i32 0, i32 0
  %4 = load %struct.win*, %struct.win** %md_window, align 8
  store %struct.win* %4, %struct.win** @fore, align 8
  %5 = load %struct.win*, %struct.win** @fore, align 8
  %w_layer = getelementptr inbounds %struct.win, %struct.win* %5, i32 0, i32 3
  %l_height = getelementptr inbounds %struct.layer, %struct.layer* %w_layer, i32 0, i32 2
  %6 = load i32, i32* %l_height, align 4
  %sub = sub nsw i32 %6, 1
  store i32 %sub, i32* %yend, align 4
  %7 = load %struct.markdata*, %struct.markdata** @markdata, align 8
  %second = getelementptr inbounds %struct.markdata, %struct.markdata* %7, i32 0, i32 6
  %8 = load i32, i32* %second, align 4
  store i32 %8, i32* %redisp, align 4
  %9 = load %struct.win*, %struct.win** @fore, align 8
  %w_histheight = getelementptr inbounds %struct.win, %struct.win* %9, i32 0, i32 77
  %10 = load i32, i32* %w_histheight, align 4
  %11 = load %struct.markdata*, %struct.markdata** @markdata, align 8
  %hist_offset = getelementptr inbounds %struct.markdata, %struct.markdata* %11, i32 0, i32 13
  %12 = load i32, i32* %hist_offset, align 4
  %sub1 = sub nsw i32 %10, %12
  %13 = load %struct.win*, %struct.win** @fore, align 8
  %w_layer2 = getelementptr inbounds %struct.win, %struct.win* %13, i32 0, i32 3
  %l_height3 = getelementptr inbounds %struct.layer, %struct.layer* %w_layer2, i32 0, i32 2
  %14 = load i32, i32* %l_height3, align 4
  %cmp = icmp slt i32 %sub1, %14
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %do.end
  %15 = load %struct.markdata*, %struct.markdata** @markdata, align 8
  %second4 = getelementptr inbounds %struct.markdata, %struct.markdata* %15, i32 0, i32 6
  store i32 0, i32* %second4, align 4
  %16 = load %struct.win*, %struct.win** @fore, align 8
  %w_histheight5 = getelementptr inbounds %struct.win, %struct.win* %16, i32 0, i32 77
  %17 = load i32, i32* %w_histheight5, align 4
  %18 = load %struct.markdata*, %struct.markdata** @markdata, align 8
  %hist_offset6 = getelementptr inbounds %struct.markdata, %struct.markdata* %18, i32 0, i32 13
  %19 = load i32, i32* %hist_offset6, align 4
  %sub7 = sub nsw i32 %17, %19
  %call = call i32 @MarkScrollUpDisplay(i32 %sub7)
  %20 = load i32, i32* %yend, align 4
  %sub8 = sub nsw i32 %20, %call
  store i32 %sub8, i32* %yend, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %do.end
  %21 = load %struct.markdata*, %struct.markdata** @markdata, align 8
  %hist_offset9 = getelementptr inbounds %struct.markdata, %struct.markdata* %21, i32 0, i32 13
  %22 = load i32, i32* %hist_offset9, align 4
  %23 = load %struct.win*, %struct.win** @fore, align 8
  %w_histheight10 = getelementptr inbounds %struct.win, %struct.win* %23, i32 0, i32 77
  %24 = load i32, i32* %w_histheight10, align 4
  %cmp11 = icmp ne i32 %22, %24
  br i1 %cmp11, label %if.then.12, label %if.else

if.then.12:                                       ; preds = %if.end
  br label %do.body.13

do.body.13:                                       ; preds = %if.then.12
  %25 = load %struct.layer*, %struct.layer** @flayer, align 8
  store %struct.layer* %25, %struct.layer** %oldlay, align 8
  br label %do.body.14

do.body.14:                                       ; preds = %do.body.13
  br label %do.end.15

do.end.15:                                        ; preds = %do.body.14
  %26 = load %struct.layer*, %struct.layer** @flayer, align 8
  %l_next = getelementptr inbounds %struct.layer, %struct.layer* %26, i32 0, i32 8
  %27 = load %struct.layer*, %struct.layer** %l_next, align 8
  store %struct.layer* %27, %struct.layer** @flayer, align 8
  %28 = load %struct.layer*, %struct.layer** @flayer, align 8
  %l_cvlist = getelementptr inbounds %struct.layer, %struct.layer* %28, i32 0, i32 0
  %29 = load %struct.canvas*, %struct.canvas** %l_cvlist, align 8
  store %struct.canvas* %29, %struct.canvas** %oldcvlist, align 8
  br label %do.body.16

do.body.16:                                       ; preds = %do.end.15
  br label %do.end.17

do.end.17:                                        ; preds = %do.body.16
  %30 = load %struct.layer*, %struct.layer** %oldlay, align 8
  %l_cvlist18 = getelementptr inbounds %struct.layer, %struct.layer* %30, i32 0, i32 0
  %31 = load %struct.canvas*, %struct.canvas** %l_cvlist18, align 8
  %32 = load %struct.layer*, %struct.layer** @flayer, align 8
  %l_cvlist19 = getelementptr inbounds %struct.layer, %struct.layer* %32, i32 0, i32 0
  store %struct.canvas* %31, %struct.canvas** %l_cvlist19, align 8
  %33 = load %struct.layer*, %struct.layer** @flayer, align 8
  %l_cvlist20 = getelementptr inbounds %struct.layer, %struct.layer* %33, i32 0, i32 0
  %34 = load %struct.canvas*, %struct.canvas** %l_cvlist20, align 8
  store %struct.canvas* %34, %struct.canvas** %cv, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %do.end.17
  %35 = load %struct.canvas*, %struct.canvas** %cv, align 8
  %tobool = icmp ne %struct.canvas* %35, null
  br i1 %tobool, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %36 = load %struct.layer*, %struct.layer** @flayer, align 8
  %37 = load %struct.canvas*, %struct.canvas** %cv, align 8
  %c_layer = getelementptr inbounds %struct.canvas, %struct.canvas* %37, i32 0, i32 9
  store %struct.layer* %36, %struct.layer** %c_layer, align 8
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %38 = load %struct.canvas*, %struct.canvas** %cv, align 8
  %c_lnext = getelementptr inbounds %struct.canvas, %struct.canvas* %38, i32 0, i32 10
  %39 = load %struct.canvas*, %struct.canvas** %c_lnext, align 8
  store %struct.canvas* %39, %struct.canvas** %cv, align 8
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %40 = load %struct.layer*, %struct.layer** @flayer, align 8
  call void @LRefreshAll(%struct.layer* %40, i32 0)
  %41 = load %struct.layer*, %struct.layer** %oldlay, align 8
  store %struct.layer* %41, %struct.layer** @flayer, align 8
  %42 = load %struct.layer*, %struct.layer** @flayer, align 8
  %l_cvlist21 = getelementptr inbounds %struct.layer, %struct.layer* %42, i32 0, i32 0
  %43 = load %struct.canvas*, %struct.canvas** %l_cvlist21, align 8
  store %struct.canvas* %43, %struct.canvas** %cv, align 8
  br label %for.cond.22

for.cond.22:                                      ; preds = %for.inc.26, %for.end
  %44 = load %struct.canvas*, %struct.canvas** %cv, align 8
  %tobool23 = icmp ne %struct.canvas* %44, null
  br i1 %tobool23, label %for.body.24, label %for.end.28

for.body.24:                                      ; preds = %for.cond.22
  %45 = load %struct.layer*, %struct.layer** @flayer, align 8
  %46 = load %struct.canvas*, %struct.canvas** %cv, align 8
  %c_layer25 = getelementptr inbounds %struct.canvas, %struct.canvas* %46, i32 0, i32 9
  store %struct.layer* %45, %struct.layer** %c_layer25, align 8
  br label %for.inc.26

for.inc.26:                                       ; preds = %for.body.24
  %47 = load %struct.canvas*, %struct.canvas** %cv, align 8
  %c_lnext27 = getelementptr inbounds %struct.canvas, %struct.canvas* %47, i32 0, i32 10
  %48 = load %struct.canvas*, %struct.canvas** %c_lnext27, align 8
  store %struct.canvas* %48, %struct.canvas** %cv, align 8
  br label %for.cond.22

for.end.28:                                       ; preds = %for.cond.22
  %49 = load %struct.canvas*, %struct.canvas** %oldcvlist, align 8
  %50 = load %struct.layer*, %struct.layer** @flayer, align 8
  %l_next29 = getelementptr inbounds %struct.layer, %struct.layer* %50, i32 0, i32 8
  %51 = load %struct.layer*, %struct.layer** %l_next29, align 8
  %l_cvlist30 = getelementptr inbounds %struct.layer, %struct.layer* %51, i32 0, i32 0
  store %struct.canvas* %49, %struct.canvas** %l_cvlist30, align 8
  br label %do.end.31

do.end.31:                                        ; preds = %for.end.28
  br label %if.end.33

if.else:                                          ; preds = %if.end
  %52 = load %struct.markdata*, %struct.markdata** @markdata, align 8
  %x1 = getelementptr inbounds %struct.markdata, %struct.markdata* %52, i32 0, i32 4
  %53 = load i32, i32* %x1, align 4
  %54 = load %struct.markdata*, %struct.markdata** @markdata, align 8
  %y1 = getelementptr inbounds %struct.markdata, %struct.markdata* %54, i32 0, i32 5
  %55 = load i32, i32* %y1, align 4
  %56 = load %struct.markdata*, %struct.markdata** @markdata, align 8
  %cx = getelementptr inbounds %struct.markdata, %struct.markdata* %56, i32 0, i32 2
  %57 = load i32, i32* %cx, align 4
  %58 = load %struct.markdata*, %struct.markdata** @markdata, align 8
  %cy = getelementptr inbounds %struct.markdata, %struct.markdata* %58, i32 0, i32 3
  %59 = load i32, i32* %cy, align 4
  %60 = load i32, i32* %redisp, align 4
  %61 = load i32, i32* %yend, align 4
  %call32 = call i32 @rem(i32 %53, i32 %55, i32 %57, i32 %59, i32 %60, i8* null, i32 %61)
  br label %if.end.33

if.end.33:                                        ; preds = %if.else, %do.end.31
  call void @ExitOverlayPage()
  %62 = load %struct.win*, %struct.win** @fore, align 8
  call void @WindowChanged(%struct.win* %62, i32 80)
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @MarkRedisplayLine(i32 %y, i32 %xs, i32 %xe, i32 %isblank) #0 {
entry:
  %y.addr = alloca i32, align 4
  %xs.addr = alloca i32, align 4
  %xe.addr = alloca i32, align 4
  %isblank.addr = alloca i32, align 4
  %wy = alloca i32, align 4
  %x = alloca i32, align 4
  %i = alloca i32, align 4
  %rm = alloca i32, align 4
  %sta = alloca i32, align 4
  %sto = alloca i32, align 4
  %cp = alloca i32, align 4
  %wi = alloca i8*, align 8
  %ml = alloca %struct.mline*, align 8
  %mchar_marked = alloca %struct.mchar, align 1
  store i32 %y, i32* %y.addr, align 4
  store i32 %xs, i32* %xs.addr, align 4
  store i32 %xe, i32* %xe.addr, align 4
  store i32 %isblank, i32* %isblank.addr, align 4
  %0 = load i32, i32* %y.addr, align 4
  %cmp = icmp slt i32 %0, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  br label %if.end.310

if.end:                                           ; preds = %entry
  %1 = load %struct.layer*, %struct.layer** @flayer, align 8
  %l_data = getelementptr inbounds %struct.layer, %struct.layer* %1, i32 0, i32 7
  %2 = load i8*, i8** %l_data, align 8
  %3 = bitcast i8* %2 to %struct.markdata*
  store %struct.markdata* %3, %struct.markdata** @markdata, align 8
  %4 = load %struct.markdata*, %struct.markdata** @markdata, align 8
  %md_window = getelementptr inbounds %struct.markdata, %struct.markdata* %4, i32 0, i32 0
  %5 = load %struct.win*, %struct.win** %md_window, align 8
  store %struct.win* %5, %struct.win** @fore, align 8
  %6 = bitcast %struct.mchar* %mchar_marked to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %6, i8* getelementptr inbounds (%struct.mchar, %struct.mchar* @mchar_so, i32 0, i32 0), i64 6, i32 1, i1 false)
  %7 = load i32, i32* %y.addr, align 4
  %8 = load %struct.markdata*, %struct.markdata** @markdata, align 8
  %hist_offset = getelementptr inbounds %struct.markdata, %struct.markdata* %8, i32 0, i32 13
  %9 = load i32, i32* %hist_offset, align 4
  %add = add nsw i32 %7, %9
  store i32 %add, i32* %wy, align 4
  %10 = load i32, i32* %wy, align 4
  %11 = load %struct.win*, %struct.win** @fore, align 8
  %w_histheight = getelementptr inbounds %struct.win, %struct.win* %11, i32 0, i32 77
  %12 = load i32, i32* %w_histheight, align 4
  %cmp1 = icmp slt i32 %10, %12
  br i1 %cmp1, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.end
  %13 = load %struct.win*, %struct.win** @fore, align 8
  %w_histidx = getelementptr inbounds %struct.win, %struct.win* %13, i32 0, i32 78
  %14 = load i32, i32* %w_histidx, align 4
  %15 = load i32, i32* %wy, align 4
  %add2 = add nsw i32 %14, %15
  %16 = load %struct.win*, %struct.win** @fore, align 8
  %w_histheight3 = getelementptr inbounds %struct.win, %struct.win* %16, i32 0, i32 77
  %17 = load i32, i32* %w_histheight3, align 4
  %rem = srem i32 %add2, %17
  %idxprom = sext i32 %rem to i64
  %18 = load %struct.win*, %struct.win** @fore, align 8
  %w_hlines = getelementptr inbounds %struct.win, %struct.win* %18, i32 0, i32 79
  %19 = load %struct.mline*, %struct.mline** %w_hlines, align 8
  %arrayidx = getelementptr inbounds %struct.mline, %struct.mline* %19, i64 %idxprom
  br label %cond.end

cond.false:                                       ; preds = %if.end
  %20 = load i32, i32* %wy, align 4
  %21 = load %struct.win*, %struct.win** @fore, align 8
  %w_histheight4 = getelementptr inbounds %struct.win, %struct.win* %21, i32 0, i32 77
  %22 = load i32, i32* %w_histheight4, align 4
  %sub = sub nsw i32 %20, %22
  %idxprom5 = sext i32 %sub to i64
  %23 = load %struct.win*, %struct.win** @fore, align 8
  %w_mlines = getelementptr inbounds %struct.win, %struct.win* %23, i32 0, i32 36
  %24 = load %struct.mline*, %struct.mline** %w_mlines, align 8
  %arrayidx6 = getelementptr inbounds %struct.mline, %struct.mline* %24, i64 %idxprom5
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi %struct.mline* [ %arrayidx, %cond.true ], [ %arrayidx6, %cond.false ]
  store %struct.mline* %cond, %struct.mline** %ml, align 8
  %25 = load %struct.markdata*, %struct.markdata** @markdata, align 8
  %second = getelementptr inbounds %struct.markdata, %struct.markdata* %25, i32 0, i32 6
  %26 = load i32, i32* %second, align 4
  %cmp7 = icmp eq i32 %26, 0
  br i1 %cmp7, label %if.then.8, label %if.end.115

if.then.8:                                        ; preds = %cond.end
  %27 = load %struct.win*, %struct.win** @fore, align 8
  %w_layer = getelementptr inbounds %struct.win, %struct.win* %27, i32 0, i32 3
  %l_encoding = getelementptr inbounds %struct.layer, %struct.layer* %w_layer, i32 0, i32 5
  %28 = load i32, i32* %l_encoding, align 4
  %cmp9 = icmp eq i32 %28, 8
  br i1 %cmp9, label %cond.true.10, label %cond.false.20

cond.true.10:                                     ; preds = %if.then.8
  %29 = load i32, i32* %xs.addr, align 4
  %idxprom11 = sext i32 %29 to i64
  %30 = load %struct.mline*, %struct.mline** %ml, align 8
  %font = getelementptr inbounds %struct.mline, %struct.mline* %30, i32 0, i32 2
  %31 = load i8*, i8** %font, align 8
  %arrayidx12 = getelementptr inbounds i8, i8* %31, i64 %idxprom11
  %32 = load i8, i8* %arrayidx12, align 1
  %conv = zext i8 %32 to i32
  %cmp13 = icmp eq i32 %conv, 255
  br i1 %cmp13, label %land.lhs.true, label %if.end.31

land.lhs.true:                                    ; preds = %cond.true.10
  %33 = load i32, i32* %xs.addr, align 4
  %idxprom15 = sext i32 %33 to i64
  %34 = load %struct.mline*, %struct.mline** %ml, align 8
  %image = getelementptr inbounds %struct.mline, %struct.mline* %34, i32 0, i32 0
  %35 = load i8*, i8** %image, align 8
  %arrayidx16 = getelementptr inbounds i8, i8* %35, i64 %idxprom15
  %36 = load i8, i8* %arrayidx16, align 1
  %conv17 = zext i8 %36 to i32
  %cmp18 = icmp eq i32 %conv17, 255
  br i1 %cmp18, label %land.lhs.true.27, label %if.end.31

cond.false.20:                                    ; preds = %if.then.8
  %37 = load i32, i32* %xs.addr, align 4
  %idxprom21 = sext i32 %37 to i64
  %38 = load %struct.mline*, %struct.mline** %ml, align 8
  %font22 = getelementptr inbounds %struct.mline, %struct.mline* %38, i32 0, i32 2
  %39 = load i8*, i8** %font22, align 8
  %arrayidx23 = getelementptr inbounds i8, i8* %39, i64 %idxprom21
  %40 = load i8, i8* %arrayidx23, align 1
  %conv24 = zext i8 %40 to i32
  %and = and i32 %conv24, 224
  %cmp25 = icmp eq i32 %and, 128
  br i1 %cmp25, label %land.lhs.true.27, label %if.end.31

land.lhs.true.27:                                 ; preds = %cond.false.20, %land.lhs.true
  %41 = load i32, i32* %xs.addr, align 4
  %cmp28 = icmp sgt i32 %41, 0
  br i1 %cmp28, label %if.then.30, label %if.end.31

if.then.30:                                       ; preds = %land.lhs.true.27
  %42 = load i32, i32* %xs.addr, align 4
  %dec = add nsw i32 %42, -1
  store i32 %dec, i32* %xs.addr, align 4
  br label %if.end.31

if.end.31:                                        ; preds = %if.then.30, %land.lhs.true.27, %cond.false.20, %land.lhs.true, %cond.true.10
  %43 = load %struct.win*, %struct.win** @fore, align 8
  %w_layer32 = getelementptr inbounds %struct.win, %struct.win* %43, i32 0, i32 3
  %l_encoding33 = getelementptr inbounds %struct.layer, %struct.layer* %w_layer32, i32 0, i32 5
  %44 = load i32, i32* %l_encoding33, align 4
  %cmp34 = icmp eq i32 %44, 8
  br i1 %cmp34, label %cond.true.36, label %cond.false.52

cond.true.36:                                     ; preds = %if.end.31
  %45 = load i32, i32* %xe.addr, align 4
  %add37 = add nsw i32 %45, 1
  %idxprom38 = sext i32 %add37 to i64
  %46 = load %struct.mline*, %struct.mline** %ml, align 8
  %font39 = getelementptr inbounds %struct.mline, %struct.mline* %46, i32 0, i32 2
  %47 = load i8*, i8** %font39, align 8
  %arrayidx40 = getelementptr inbounds i8, i8* %47, i64 %idxprom38
  %48 = load i8, i8* %arrayidx40, align 1
  %conv41 = zext i8 %48 to i32
  %cmp42 = icmp eq i32 %conv41, 255
  br i1 %cmp42, label %land.lhs.true.44, label %if.end.74

land.lhs.true.44:                                 ; preds = %cond.true.36
  %49 = load i32, i32* %xe.addr, align 4
  %add45 = add nsw i32 %49, 1
  %idxprom46 = sext i32 %add45 to i64
  %50 = load %struct.mline*, %struct.mline** %ml, align 8
  %image47 = getelementptr inbounds %struct.mline, %struct.mline* %50, i32 0, i32 0
  %51 = load i8*, i8** %image47, align 8
  %arrayidx48 = getelementptr inbounds i8, i8* %51, i64 %idxprom46
  %52 = load i8, i8* %arrayidx48, align 1
  %conv49 = zext i8 %52 to i32
  %cmp50 = icmp eq i32 %conv49, 255
  br i1 %cmp50, label %land.lhs.true.68, label %if.end.74

cond.false.52:                                    ; preds = %if.end.31
  %53 = load i32, i32* %xe.addr, align 4
  %idxprom53 = sext i32 %53 to i64
  %54 = load %struct.mline*, %struct.mline** %ml, align 8
  %font54 = getelementptr inbounds %struct.mline, %struct.mline* %54, i32 0, i32 2
  %55 = load i8*, i8** %font54, align 8
  %arrayidx55 = getelementptr inbounds i8, i8* %55, i64 %idxprom53
  %56 = load i8, i8* %arrayidx55, align 1
  %conv56 = zext i8 %56 to i32
  %and57 = and i32 %conv56, 31
  %cmp58 = icmp ne i32 %and57, 0
  br i1 %cmp58, label %land.lhs.true.60, label %if.end.74

land.lhs.true.60:                                 ; preds = %cond.false.52
  %57 = load i32, i32* %xe.addr, align 4
  %idxprom61 = sext i32 %57 to i64
  %58 = load %struct.mline*, %struct.mline** %ml, align 8
  %font62 = getelementptr inbounds %struct.mline, %struct.mline* %58, i32 0, i32 2
  %59 = load i8*, i8** %font62, align 8
  %arrayidx63 = getelementptr inbounds i8, i8* %59, i64 %idxprom61
  %60 = load i8, i8* %arrayidx63, align 1
  %conv64 = zext i8 %60 to i32
  %and65 = and i32 %conv64, 224
  %cmp66 = icmp eq i32 %and65, 0
  br i1 %cmp66, label %land.lhs.true.68, label %if.end.74

land.lhs.true.68:                                 ; preds = %land.lhs.true.60, %land.lhs.true.44
  %61 = load i32, i32* %xe.addr, align 4
  %62 = load %struct.win*, %struct.win** @fore, align 8
  %w_layer69 = getelementptr inbounds %struct.win, %struct.win* %62, i32 0, i32 3
  %l_width = getelementptr inbounds %struct.layer, %struct.layer* %w_layer69, i32 0, i32 1
  %63 = load i32, i32* %l_width, align 4
  %sub70 = sub nsw i32 %63, 1
  %cmp71 = icmp slt i32 %61, %sub70
  br i1 %cmp71, label %if.then.73, label %if.end.74

if.then.73:                                       ; preds = %land.lhs.true.68
  %64 = load i32, i32* %xe.addr, align 4
  %inc = add nsw i32 %64, 1
  store i32 %inc, i32* %xe.addr, align 4
  br label %if.end.74

if.end.74:                                        ; preds = %if.then.73, %land.lhs.true.68, %land.lhs.true.60, %cond.false.52, %land.lhs.true.44, %cond.true.36
  %65 = load i32, i32* %xs.addr, align 4
  %cmp75 = icmp eq i32 %65, 0
  br i1 %cmp75, label %land.lhs.true.77, label %if.else

land.lhs.true.77:                                 ; preds = %if.end.74
  %66 = load i32, i32* %y.addr, align 4
  %cmp78 = icmp sgt i32 %66, 0
  br i1 %cmp78, label %land.lhs.true.80, label %if.else

land.lhs.true.80:                                 ; preds = %land.lhs.true.77
  %67 = load i32, i32* %wy, align 4
  %cmp81 = icmp sgt i32 %67, 0
  br i1 %cmp81, label %land.lhs.true.83, label %if.else

land.lhs.true.83:                                 ; preds = %land.lhs.true.80
  %68 = load %struct.layer*, %struct.layer** @flayer, align 8
  %l_width84 = getelementptr inbounds %struct.layer, %struct.layer* %68, i32 0, i32 1
  %69 = load i32, i32* %l_width84, align 4
  %idxprom85 = sext i32 %69 to i64
  %70 = load i32, i32* %wy, align 4
  %sub86 = sub nsw i32 %70, 1
  %71 = load %struct.win*, %struct.win** @fore, align 8
  %w_histheight87 = getelementptr inbounds %struct.win, %struct.win* %71, i32 0, i32 77
  %72 = load i32, i32* %w_histheight87, align 4
  %cmp88 = icmp slt i32 %sub86, %72
  br i1 %cmp88, label %cond.true.90, label %cond.false.99

cond.true.90:                                     ; preds = %land.lhs.true.83
  %73 = load %struct.win*, %struct.win** @fore, align 8
  %w_histidx91 = getelementptr inbounds %struct.win, %struct.win* %73, i32 0, i32 78
  %74 = load i32, i32* %w_histidx91, align 4
  %75 = load i32, i32* %wy, align 4
  %add92 = add nsw i32 %74, %75
  %sub93 = sub nsw i32 %add92, 1
  %76 = load %struct.win*, %struct.win** @fore, align 8
  %w_histheight94 = getelementptr inbounds %struct.win, %struct.win* %76, i32 0, i32 77
  %77 = load i32, i32* %w_histheight94, align 4
  %rem95 = srem i32 %sub93, %77
  %idxprom96 = sext i32 %rem95 to i64
  %78 = load %struct.win*, %struct.win** @fore, align 8
  %w_hlines97 = getelementptr inbounds %struct.win, %struct.win* %78, i32 0, i32 79
  %79 = load %struct.mline*, %struct.mline** %w_hlines97, align 8
  %arrayidx98 = getelementptr inbounds %struct.mline, %struct.mline* %79, i64 %idxprom96
  br label %cond.end.106

cond.false.99:                                    ; preds = %land.lhs.true.83
  %80 = load i32, i32* %wy, align 4
  %sub100 = sub nsw i32 %80, 1
  %81 = load %struct.win*, %struct.win** @fore, align 8
  %w_histheight101 = getelementptr inbounds %struct.win, %struct.win* %81, i32 0, i32 77
  %82 = load i32, i32* %w_histheight101, align 4
  %sub102 = sub nsw i32 %sub100, %82
  %idxprom103 = sext i32 %sub102 to i64
  %83 = load %struct.win*, %struct.win** @fore, align 8
  %w_mlines104 = getelementptr inbounds %struct.win, %struct.win* %83, i32 0, i32 36
  %84 = load %struct.mline*, %struct.mline** %w_mlines104, align 8
  %arrayidx105 = getelementptr inbounds %struct.mline, %struct.mline* %84, i64 %idxprom103
  br label %cond.end.106

cond.end.106:                                     ; preds = %cond.false.99, %cond.true.90
  %cond107 = phi %struct.mline* [ %arrayidx98, %cond.true.90 ], [ %arrayidx105, %cond.false.99 ]
  %image108 = getelementptr inbounds %struct.mline, %struct.mline* %cond107, i32 0, i32 0
  %85 = load i8*, i8** %image108, align 8
  %arrayidx109 = getelementptr inbounds i8, i8* %85, i64 %idxprom85
  %86 = load i8, i8* %arrayidx109, align 1
  %conv110 = zext i8 %86 to i32
  %cmp111 = icmp eq i32 %conv110, 0
  br i1 %cmp111, label %if.then.113, label %if.else

if.then.113:                                      ; preds = %cond.end.106
  %87 = load %struct.layer*, %struct.layer** @flayer, align 8
  %88 = load %struct.mline*, %struct.mline** %ml, align 8
  %89 = load i32, i32* %y.addr, align 4
  %90 = load i32, i32* %xs.addr, align 4
  %91 = load i32, i32* %xe.addr, align 4
  %92 = load i32, i32* %isblank.addr, align 4
  call void @LCDisplayLineWrap(%struct.layer* %87, %struct.mline* %88, i32 %89, i32 %90, i32 %91, i32 %92)
  br label %if.end.114

if.else:                                          ; preds = %cond.end.106, %land.lhs.true.80, %land.lhs.true.77, %if.end.74
  %93 = load %struct.layer*, %struct.layer** @flayer, align 8
  %94 = load %struct.mline*, %struct.mline** %ml, align 8
  %95 = load i32, i32* %y.addr, align 4
  %96 = load i32, i32* %xs.addr, align 4
  %97 = load i32, i32* %xe.addr, align 4
  %98 = load i32, i32* %isblank.addr, align 4
  call void @LCDisplayLine(%struct.layer* %93, %struct.mline* %94, i32 %95, i32 %96, i32 %97, i32 %98)
  br label %if.end.114

if.end.114:                                       ; preds = %if.else, %if.then.113
  br label %if.end.310

if.end.115:                                       ; preds = %cond.end
  %99 = load %struct.markdata*, %struct.markdata** @markdata, align 8
  %y1 = getelementptr inbounds %struct.markdata, %struct.markdata* %99, i32 0, i32 5
  %100 = load i32, i32* %y1, align 4
  %101 = load %struct.win*, %struct.win** @fore, align 8
  %w_layer116 = getelementptr inbounds %struct.win, %struct.win* %101, i32 0, i32 3
  %l_width117 = getelementptr inbounds %struct.layer, %struct.layer* %w_layer116, i32 0, i32 1
  %102 = load i32, i32* %l_width117, align 4
  %mul = mul nsw i32 %100, %102
  %103 = load %struct.markdata*, %struct.markdata** @markdata, align 8
  %x1 = getelementptr inbounds %struct.markdata, %struct.markdata* %103, i32 0, i32 4
  %104 = load i32, i32* %x1, align 4
  %add118 = add nsw i32 %mul, %104
  store i32 %add118, i32* %sta, align 4
  %105 = load %struct.markdata*, %struct.markdata** @markdata, align 8
  %cy = getelementptr inbounds %struct.markdata, %struct.markdata* %105, i32 0, i32 3
  %106 = load i32, i32* %cy, align 4
  %107 = load %struct.win*, %struct.win** @fore, align 8
  %w_layer119 = getelementptr inbounds %struct.win, %struct.win* %107, i32 0, i32 3
  %l_width120 = getelementptr inbounds %struct.layer, %struct.layer* %w_layer119, i32 0, i32 1
  %108 = load i32, i32* %l_width120, align 4
  %mul121 = mul nsw i32 %106, %108
  %109 = load %struct.markdata*, %struct.markdata** @markdata, align 8
  %cx = getelementptr inbounds %struct.markdata, %struct.markdata* %109, i32 0, i32 2
  %110 = load i32, i32* %cx, align 4
  %add122 = add nsw i32 %mul121, %110
  store i32 %add122, i32* %sto, align 4
  %111 = load i32, i32* %sta, align 4
  %112 = load i32, i32* %sto, align 4
  %cmp123 = icmp sgt i32 %111, %112
  br i1 %cmp123, label %if.then.125, label %if.end.126

if.then.125:                                      ; preds = %if.end.115
  %113 = load i32, i32* %sta, align 4
  store i32 %113, i32* %i, align 4
  %114 = load i32, i32* %sto, align 4
  store i32 %114, i32* %sta, align 4
  %115 = load i32, i32* %i, align 4
  store i32 %115, i32* %sto, align 4
  br label %if.end.126

if.end.126:                                       ; preds = %if.then.125, %if.end.115
  %116 = load i32, i32* %wy, align 4
  %117 = load %struct.win*, %struct.win** @fore, align 8
  %w_layer127 = getelementptr inbounds %struct.win, %struct.win* %117, i32 0, i32 3
  %l_width128 = getelementptr inbounds %struct.layer, %struct.layer* %w_layer127, i32 0, i32 1
  %118 = load i32, i32* %l_width128, align 4
  %mul129 = mul nsw i32 %116, %118
  %119 = load i32, i32* %xs.addr, align 4
  %add130 = add nsw i32 %mul129, %119
  store i32 %add130, i32* %cp, align 4
  %120 = load %struct.markdata*, %struct.markdata** @markdata, align 8
  %right_mar = getelementptr inbounds %struct.markdata, %struct.markdata* %120, i32 0, i32 8
  %121 = load i32, i32* %right_mar, align 4
  store i32 %121, i32* %rm, align 4
  %122 = load %struct.win*, %struct.win** @fore, align 8
  %w_layer131 = getelementptr inbounds %struct.win, %struct.win* %122, i32 0, i32 3
  %l_width132 = getelementptr inbounds %struct.layer, %struct.layer* %w_layer131, i32 0, i32 1
  %123 = load i32, i32* %l_width132, align 4
  store i32 %123, i32* %x, align 4
  %124 = load %struct.mline*, %struct.mline** %ml, align 8
  %image133 = getelementptr inbounds %struct.mline, %struct.mline* %124, i32 0, i32 0
  %125 = load i8*, i8** %image133, align 8
  %126 = load %struct.win*, %struct.win** @fore, align 8
  %w_layer134 = getelementptr inbounds %struct.win, %struct.win* %126, i32 0, i32 3
  %l_width135 = getelementptr inbounds %struct.layer, %struct.layer* %w_layer134, i32 0, i32 1
  %127 = load i32, i32* %l_width135, align 4
  %idx.ext = sext i32 %127 to i64
  %add.ptr = getelementptr inbounds i8, i8* %125, i64 %idx.ext
  store i8* %add.ptr, i8** %wi, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end.126
  %128 = load i32, i32* %x, align 4
  %cmp136 = icmp sge i32 %128, 0
  br i1 %cmp136, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %129 = load i8*, i8** %wi, align 8
  %130 = load i8, i8* %129, align 1
  %conv138 = zext i8 %130 to i32
  %cmp139 = icmp ne i32 %conv138, 32
  br i1 %cmp139, label %if.then.141, label %if.end.142

if.then.141:                                      ; preds = %for.body
  br label %for.end

if.end.142:                                       ; preds = %for.body
  br label %for.inc

for.inc:                                          ; preds = %if.end.142
  %131 = load i32, i32* %x, align 4
  %dec143 = add nsw i32 %131, -1
  store i32 %dec143, i32* %x, align 4
  %132 = load i8*, i8** %wi, align 8
  %incdec.ptr = getelementptr inbounds i8, i8* %132, i32 -1
  store i8* %incdec.ptr, i8** %wi, align 8
  br label %for.cond

for.end:                                          ; preds = %if.then.141, %for.cond
  %133 = load i32, i32* %x, align 4
  %134 = load i32, i32* %rm, align 4
  %cmp144 = icmp slt i32 %133, %134
  br i1 %cmp144, label %if.then.146, label %if.end.147

if.then.146:                                      ; preds = %for.end
  %135 = load i32, i32* %x, align 4
  store i32 %135, i32* %rm, align 4
  br label %if.end.147

if.end.147:                                       ; preds = %if.then.146, %for.end
  %136 = load i32, i32* %xs.addr, align 4
  store i32 %136, i32* %x, align 4
  br label %for.cond.148

for.cond.148:                                     ; preds = %for.inc.159, %if.end.147
  %137 = load i32, i32* %x, align 4
  %138 = load i32, i32* %xe.addr, align 4
  %cmp149 = icmp sle i32 %137, %138
  br i1 %cmp149, label %for.body.151, label %for.end.162

for.body.151:                                     ; preds = %for.cond.148
  %139 = load i32, i32* %cp, align 4
  %140 = load i32, i32* %sta, align 4
  %cmp152 = icmp sge i32 %139, %140
  br i1 %cmp152, label %land.lhs.true.154, label %if.end.158

land.lhs.true.154:                                ; preds = %for.body.151
  %141 = load i32, i32* %x, align 4
  %142 = load %struct.markdata*, %struct.markdata** @markdata, align 8
  %left_mar = getelementptr inbounds %struct.markdata, %struct.markdata* %142, i32 0, i32 7
  %143 = load i32, i32* %left_mar, align 4
  %cmp155 = icmp sge i32 %141, %143
  br i1 %cmp155, label %if.then.157, label %if.end.158

if.then.157:                                      ; preds = %land.lhs.true.154
  br label %for.end.162

if.end.158:                                       ; preds = %land.lhs.true.154, %for.body.151
  br label %for.inc.159

for.inc.159:                                      ; preds = %if.end.158
  %144 = load i32, i32* %x, align 4
  %inc160 = add nsw i32 %144, 1
  store i32 %inc160, i32* %x, align 4
  %145 = load i32, i32* %cp, align 4
  %inc161 = add nsw i32 %145, 1
  store i32 %inc161, i32* %cp, align 4
  br label %for.cond.148

for.end.162:                                      ; preds = %if.then.157, %for.cond.148
  %146 = load %struct.win*, %struct.win** @fore, align 8
  %w_layer163 = getelementptr inbounds %struct.win, %struct.win* %146, i32 0, i32 3
  %l_encoding164 = getelementptr inbounds %struct.layer, %struct.layer* %w_layer163, i32 0, i32 5
  %147 = load i32, i32* %l_encoding164, align 4
  %cmp165 = icmp eq i32 %147, 8
  br i1 %cmp165, label %cond.true.167, label %cond.false.181

cond.true.167:                                    ; preds = %for.end.162
  %148 = load i32, i32* %x, align 4
  %idxprom168 = sext i32 %148 to i64
  %149 = load %struct.mline*, %struct.mline** %ml, align 8
  %font169 = getelementptr inbounds %struct.mline, %struct.mline* %149, i32 0, i32 2
  %150 = load i8*, i8** %font169, align 8
  %arrayidx170 = getelementptr inbounds i8, i8* %150, i64 %idxprom168
  %151 = load i8, i8* %arrayidx170, align 1
  %conv171 = zext i8 %151 to i32
  %cmp172 = icmp eq i32 %conv171, 255
  br i1 %cmp172, label %land.lhs.true.174, label %if.end.191

land.lhs.true.174:                                ; preds = %cond.true.167
  %152 = load i32, i32* %x, align 4
  %idxprom175 = sext i32 %152 to i64
  %153 = load %struct.mline*, %struct.mline** %ml, align 8
  %image176 = getelementptr inbounds %struct.mline, %struct.mline* %153, i32 0, i32 0
  %154 = load i8*, i8** %image176, align 8
  %arrayidx177 = getelementptr inbounds i8, i8* %154, i64 %idxprom175
  %155 = load i8, i8* %arrayidx177, align 1
  %conv178 = zext i8 %155 to i32
  %cmp179 = icmp eq i32 %conv178, 255
  br i1 %cmp179, label %if.then.189, label %if.end.191

cond.false.181:                                   ; preds = %for.end.162
  %156 = load i32, i32* %x, align 4
  %idxprom182 = sext i32 %156 to i64
  %157 = load %struct.mline*, %struct.mline** %ml, align 8
  %font183 = getelementptr inbounds %struct.mline, %struct.mline* %157, i32 0, i32 2
  %158 = load i8*, i8** %font183, align 8
  %arrayidx184 = getelementptr inbounds i8, i8* %158, i64 %idxprom182
  %159 = load i8, i8* %arrayidx184, align 1
  %conv185 = zext i8 %159 to i32
  %and186 = and i32 %conv185, 224
  %cmp187 = icmp eq i32 %and186, 128
  br i1 %cmp187, label %if.then.189, label %if.end.191

if.then.189:                                      ; preds = %cond.false.181, %land.lhs.true.174
  %160 = load i32, i32* %x, align 4
  %dec190 = add nsw i32 %160, -1
  store i32 %dec190, i32* %x, align 4
  br label %if.end.191

if.end.191:                                       ; preds = %if.then.189, %cond.false.181, %land.lhs.true.174, %cond.true.167
  %161 = load i32, i32* %x, align 4
  %162 = load i32, i32* %xs.addr, align 4
  %cmp192 = icmp sgt i32 %161, %162
  br i1 %cmp192, label %if.then.194, label %if.end.196

if.then.194:                                      ; preds = %if.end.191
  %163 = load %struct.layer*, %struct.layer** @flayer, align 8
  %164 = load %struct.mline*, %struct.mline** %ml, align 8
  %165 = load i32, i32* %y.addr, align 4
  %166 = load i32, i32* %xs.addr, align 4
  %167 = load i32, i32* %x, align 4
  %sub195 = sub nsw i32 %167, 1
  %168 = load i32, i32* %isblank.addr, align 4
  call void @LCDisplayLine(%struct.layer* %163, %struct.mline* %164, i32 %165, i32 %166, i32 %sub195, i32 %168)
  br label %if.end.196

if.end.196:                                       ; preds = %if.then.194, %if.end.191
  br label %for.cond.197

for.cond.197:                                     ; preds = %for.inc.303, %if.end.196
  %169 = load i32, i32* %x, align 4
  %170 = load i32, i32* %xe.addr, align 4
  %cmp198 = icmp sle i32 %169, %170
  br i1 %cmp198, label %for.body.200, label %for.end.306

for.body.200:                                     ; preds = %for.cond.197
  %171 = load i32, i32* %cp, align 4
  %172 = load i32, i32* %sto, align 4
  %cmp201 = icmp sgt i32 %171, %172
  br i1 %cmp201, label %if.then.205, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %for.body.200
  %173 = load i32, i32* %x, align 4
  %174 = load i32, i32* %rm, align 4
  %cmp203 = icmp sgt i32 %173, %174
  br i1 %cmp203, label %if.then.205, label %if.end.206

if.then.205:                                      ; preds = %lor.lhs.false, %for.body.200
  br label %for.end.306

if.end.206:                                       ; preds = %lor.lhs.false
  %175 = load i32, i32* @pastefont, align 4
  %tobool = icmp ne i32 %175, 0
  br i1 %tobool, label %if.then.207, label %if.end.215

if.then.207:                                      ; preds = %if.end.206
  %176 = load i32, i32* %x, align 4
  %idxprom208 = sext i32 %176 to i64
  %177 = load %struct.mline*, %struct.mline** %ml, align 8
  %font209 = getelementptr inbounds %struct.mline, %struct.mline* %177, i32 0, i32 2
  %178 = load i8*, i8** %font209, align 8
  %arrayidx210 = getelementptr inbounds i8, i8* %178, i64 %idxprom208
  %179 = load i8, i8* %arrayidx210, align 1
  %font211 = getelementptr inbounds %struct.mchar, %struct.mchar* %mchar_marked, i32 0, i32 2
  store i8 %179, i8* %font211, align 1
  %180 = load i32, i32* %x, align 4
  %idxprom212 = sext i32 %180 to i64
  %181 = load %struct.mline*, %struct.mline** %ml, align 8
  %fontx = getelementptr inbounds %struct.mline, %struct.mline* %181, i32 0, i32 3
  %182 = load i8*, i8** %fontx, align 8
  %arrayidx213 = getelementptr inbounds i8, i8* %182, i64 %idxprom212
  %183 = load i8, i8* %arrayidx213, align 1
  %fontx214 = getelementptr inbounds %struct.mchar, %struct.mchar* %mchar_marked, i32 0, i32 3
  store i8 %183, i8* %fontx214, align 1
  br label %if.end.215

if.end.215:                                       ; preds = %if.then.207, %if.end.206
  %184 = load i32, i32* %x, align 4
  %idxprom216 = sext i32 %184 to i64
  %185 = load %struct.mline*, %struct.mline** %ml, align 8
  %image217 = getelementptr inbounds %struct.mline, %struct.mline* %185, i32 0, i32 0
  %186 = load i8*, i8** %image217, align 8
  %arrayidx218 = getelementptr inbounds i8, i8* %186, i64 %idxprom216
  %187 = load i8, i8* %arrayidx218, align 1
  %image219 = getelementptr inbounds %struct.mchar, %struct.mchar* %mchar_marked, i32 0, i32 0
  store i8 %187, i8* %image219, align 1
  %mbcs = getelementptr inbounds %struct.mchar, %struct.mchar* %mchar_marked, i32 0, i32 5
  store i8 0, i8* %mbcs, align 1
  %188 = load %struct.win*, %struct.win** @fore, align 8
  %w_layer220 = getelementptr inbounds %struct.win, %struct.win* %188, i32 0, i32 3
  %l_encoding221 = getelementptr inbounds %struct.layer, %struct.layer* %w_layer220, i32 0, i32 5
  %189 = load i32, i32* %l_encoding221, align 4
  %cmp222 = icmp eq i32 %189, 8
  br i1 %cmp222, label %cond.true.224, label %cond.false.240

cond.true.224:                                    ; preds = %if.end.215
  %190 = load i32, i32* %x, align 4
  %add225 = add nsw i32 %190, 1
  %idxprom226 = sext i32 %add225 to i64
  %191 = load %struct.mline*, %struct.mline** %ml, align 8
  %font227 = getelementptr inbounds %struct.mline, %struct.mline* %191, i32 0, i32 2
  %192 = load i8*, i8** %font227, align 8
  %arrayidx228 = getelementptr inbounds i8, i8* %192, i64 %idxprom226
  %193 = load i8, i8* %arrayidx228, align 1
  %conv229 = zext i8 %193 to i32
  %cmp230 = icmp eq i32 %conv229, 255
  br i1 %cmp230, label %land.lhs.true.232, label %if.end.263

land.lhs.true.232:                                ; preds = %cond.true.224
  %194 = load i32, i32* %x, align 4
  %add233 = add nsw i32 %194, 1
  %idxprom234 = sext i32 %add233 to i64
  %195 = load %struct.mline*, %struct.mline** %ml, align 8
  %image235 = getelementptr inbounds %struct.mline, %struct.mline* %195, i32 0, i32 0
  %196 = load i8*, i8** %image235, align 8
  %arrayidx236 = getelementptr inbounds i8, i8* %196, i64 %idxprom234
  %197 = load i8, i8* %arrayidx236, align 1
  %conv237 = zext i8 %197 to i32
  %cmp238 = icmp eq i32 %conv237, 255
  br i1 %cmp238, label %if.then.256, label %if.end.263

cond.false.240:                                   ; preds = %if.end.215
  %198 = load i32, i32* %x, align 4
  %idxprom241 = sext i32 %198 to i64
  %199 = load %struct.mline*, %struct.mline** %ml, align 8
  %font242 = getelementptr inbounds %struct.mline, %struct.mline* %199, i32 0, i32 2
  %200 = load i8*, i8** %font242, align 8
  %arrayidx243 = getelementptr inbounds i8, i8* %200, i64 %idxprom241
  %201 = load i8, i8* %arrayidx243, align 1
  %conv244 = zext i8 %201 to i32
  %and245 = and i32 %conv244, 31
  %cmp246 = icmp ne i32 %and245, 0
  br i1 %cmp246, label %land.lhs.true.248, label %if.end.263

land.lhs.true.248:                                ; preds = %cond.false.240
  %202 = load i32, i32* %x, align 4
  %idxprom249 = sext i32 %202 to i64
  %203 = load %struct.mline*, %struct.mline** %ml, align 8
  %font250 = getelementptr inbounds %struct.mline, %struct.mline* %203, i32 0, i32 2
  %204 = load i8*, i8** %font250, align 8
  %arrayidx251 = getelementptr inbounds i8, i8* %204, i64 %idxprom249
  %205 = load i8, i8* %arrayidx251, align 1
  %conv252 = zext i8 %205 to i32
  %and253 = and i32 %conv252, 224
  %cmp254 = icmp eq i32 %and253, 0
  br i1 %cmp254, label %if.then.256, label %if.end.263

if.then.256:                                      ; preds = %land.lhs.true.248, %land.lhs.true.232
  %206 = load i32, i32* %x, align 4
  %add257 = add nsw i32 %206, 1
  %idxprom258 = sext i32 %add257 to i64
  %207 = load %struct.mline*, %struct.mline** %ml, align 8
  %image259 = getelementptr inbounds %struct.mline, %struct.mline* %207, i32 0, i32 0
  %208 = load i8*, i8** %image259, align 8
  %arrayidx260 = getelementptr inbounds i8, i8* %208, i64 %idxprom258
  %209 = load i8, i8* %arrayidx260, align 1
  %mbcs261 = getelementptr inbounds %struct.mchar, %struct.mchar* %mchar_marked, i32 0, i32 5
  store i8 %209, i8* %mbcs261, align 1
  %210 = load i32, i32* %cp, align 4
  %inc262 = add nsw i32 %210, 1
  store i32 %inc262, i32* %cp, align 4
  br label %if.end.263

if.end.263:                                       ; preds = %if.then.256, %land.lhs.true.248, %cond.false.240, %land.lhs.true.232, %cond.true.224
  %211 = load %struct.layer*, %struct.layer** @flayer, align 8
  %212 = load i32, i32* %x, align 4
  %213 = load i32, i32* %y.addr, align 4
  call void @LPutChar(%struct.layer* %211, %struct.mchar* %mchar_marked, i32 %212, i32 %213)
  %214 = load %struct.win*, %struct.win** @fore, align 8
  %w_layer264 = getelementptr inbounds %struct.win, %struct.win* %214, i32 0, i32 3
  %l_encoding265 = getelementptr inbounds %struct.layer, %struct.layer* %w_layer264, i32 0, i32 5
  %215 = load i32, i32* %l_encoding265, align 4
  %cmp266 = icmp eq i32 %215, 8
  br i1 %cmp266, label %cond.true.268, label %cond.false.284

cond.true.268:                                    ; preds = %if.end.263
  %216 = load i32, i32* %x, align 4
  %add269 = add nsw i32 %216, 1
  %idxprom270 = sext i32 %add269 to i64
  %217 = load %struct.mline*, %struct.mline** %ml, align 8
  %font271 = getelementptr inbounds %struct.mline, %struct.mline* %217, i32 0, i32 2
  %218 = load i8*, i8** %font271, align 8
  %arrayidx272 = getelementptr inbounds i8, i8* %218, i64 %idxprom270
  %219 = load i8, i8* %arrayidx272, align 1
  %conv273 = zext i8 %219 to i32
  %cmp274 = icmp eq i32 %conv273, 255
  br i1 %cmp274, label %land.lhs.true.276, label %if.end.302

land.lhs.true.276:                                ; preds = %cond.true.268
  %220 = load i32, i32* %x, align 4
  %add277 = add nsw i32 %220, 1
  %idxprom278 = sext i32 %add277 to i64
  %221 = load %struct.mline*, %struct.mline** %ml, align 8
  %image279 = getelementptr inbounds %struct.mline, %struct.mline* %221, i32 0, i32 0
  %222 = load i8*, i8** %image279, align 8
  %arrayidx280 = getelementptr inbounds i8, i8* %222, i64 %idxprom278
  %223 = load i8, i8* %arrayidx280, align 1
  %conv281 = zext i8 %223 to i32
  %cmp282 = icmp eq i32 %conv281, 255
  br i1 %cmp282, label %if.then.300, label %if.end.302

cond.false.284:                                   ; preds = %if.end.263
  %224 = load i32, i32* %x, align 4
  %idxprom285 = sext i32 %224 to i64
  %225 = load %struct.mline*, %struct.mline** %ml, align 8
  %font286 = getelementptr inbounds %struct.mline, %struct.mline* %225, i32 0, i32 2
  %226 = load i8*, i8** %font286, align 8
  %arrayidx287 = getelementptr inbounds i8, i8* %226, i64 %idxprom285
  %227 = load i8, i8* %arrayidx287, align 1
  %conv288 = zext i8 %227 to i32
  %and289 = and i32 %conv288, 31
  %cmp290 = icmp ne i32 %and289, 0
  br i1 %cmp290, label %land.lhs.true.292, label %if.end.302

land.lhs.true.292:                                ; preds = %cond.false.284
  %228 = load i32, i32* %x, align 4
  %idxprom293 = sext i32 %228 to i64
  %229 = load %struct.mline*, %struct.mline** %ml, align 8
  %font294 = getelementptr inbounds %struct.mline, %struct.mline* %229, i32 0, i32 2
  %230 = load i8*, i8** %font294, align 8
  %arrayidx295 = getelementptr inbounds i8, i8* %230, i64 %idxprom293
  %231 = load i8, i8* %arrayidx295, align 1
  %conv296 = zext i8 %231 to i32
  %and297 = and i32 %conv296, 224
  %cmp298 = icmp eq i32 %and297, 0
  br i1 %cmp298, label %if.then.300, label %if.end.302

if.then.300:                                      ; preds = %land.lhs.true.292, %land.lhs.true.276
  %232 = load i32, i32* %x, align 4
  %inc301 = add nsw i32 %232, 1
  store i32 %inc301, i32* %x, align 4
  br label %if.end.302

if.end.302:                                       ; preds = %if.then.300, %land.lhs.true.292, %cond.false.284, %land.lhs.true.276, %cond.true.268
  br label %for.inc.303

for.inc.303:                                      ; preds = %if.end.302
  %233 = load i32, i32* %x, align 4
  %inc304 = add nsw i32 %233, 1
  store i32 %inc304, i32* %x, align 4
  %234 = load i32, i32* %cp, align 4
  %inc305 = add nsw i32 %234, 1
  store i32 %inc305, i32* %cp, align 4
  br label %for.cond.197

for.end.306:                                      ; preds = %if.then.205, %for.cond.197
  %235 = load i32, i32* %x, align 4
  %236 = load i32, i32* %xe.addr, align 4
  %cmp307 = icmp sle i32 %235, %236
  br i1 %cmp307, label %if.then.309, label %if.end.310

if.then.309:                                      ; preds = %for.end.306
  %237 = load %struct.layer*, %struct.layer** @flayer, align 8
  %238 = load %struct.mline*, %struct.mline** %ml, align 8
  %239 = load i32, i32* %y.addr, align 4
  %240 = load i32, i32* %x, align 4
  %241 = load i32, i32* %xe.addr, align 4
  %242 = load i32, i32* %isblank.addr, align 4
  call void @LCDisplayLine(%struct.layer* %237, %struct.mline* %238, i32 %239, i32 %240, i32 %241, i32 %242)
  br label %if.end.310

if.end.310:                                       ; preds = %if.then, %if.end.114, %if.then.309, %for.end.306
  ret void
}

declare void @DefClearLine(i32, i32, i32, i32) #1

; Function Attrs: nounwind uwtable
define internal i32 @MarkRewrite(i32 %ry, i32 %xs, i32 %xe, %struct.mchar* %rend, i32 %doit) #0 {
entry:
  %retval = alloca i32, align 4
  %ry.addr = alloca i32, align 4
  %xs.addr = alloca i32, align 4
  %xe.addr = alloca i32, align 4
  %rend.addr = alloca %struct.mchar*, align 8
  %doit.addr = alloca i32, align 4
  %dx = alloca i32, align 4
  %x = alloca i32, align 4
  %y = alloca i32, align 4
  %st = alloca i32, align 4
  %en = alloca i32, align 4
  %t = alloca i32, align 4
  %rm = alloca i32, align 4
  %i = alloca i8*, align 8
  %ml = alloca %struct.mline*, align 8
  %mchar_marked = alloca %struct.mchar, align 1
  store i32 %ry, i32* %ry.addr, align 4
  store i32 %xs, i32* %xs.addr, align 4
  store i32 %xe, i32* %xe.addr, align 4
  store %struct.mchar* %rend, %struct.mchar** %rend.addr, align 8
  store i32 %doit, i32* %doit.addr, align 4
  %0 = bitcast %struct.mchar* %mchar_marked to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %0, i8* getelementptr inbounds (%struct.mchar, %struct.mchar* @mchar_so, i32 0, i32 0), i64 6, i32 1, i1 false)
  br label %do.body

do.body:                                          ; preds = %entry
  br label %do.end

do.end:                                           ; preds = %do.body
  %1 = load %struct.layer*, %struct.layer** @flayer, align 8
  %l_data = getelementptr inbounds %struct.layer, %struct.layer* %1, i32 0, i32 7
  %2 = load i8*, i8** %l_data, align 8
  %3 = bitcast i8* %2 to %struct.markdata*
  store %struct.markdata* %3, %struct.markdata** @markdata, align 8
  %4 = load %struct.markdata*, %struct.markdata** @markdata, align 8
  %md_window = getelementptr inbounds %struct.markdata, %struct.markdata* %4, i32 0, i32 0
  %5 = load %struct.win*, %struct.win** %md_window, align 8
  store %struct.win* %5, %struct.win** @fore, align 8
  %6 = load i32, i32* %ry.addr, align 4
  %7 = load %struct.markdata*, %struct.markdata** @markdata, align 8
  %hist_offset = getelementptr inbounds %struct.markdata, %struct.markdata* %7, i32 0, i32 13
  %8 = load i32, i32* %hist_offset, align 4
  %add = add nsw i32 %6, %8
  store i32 %add, i32* %y, align 4
  %9 = load i32, i32* %y, align 4
  %10 = load %struct.win*, %struct.win** @fore, align 8
  %w_histheight = getelementptr inbounds %struct.win, %struct.win* %10, i32 0, i32 77
  %11 = load i32, i32* %w_histheight, align 4
  %cmp = icmp slt i32 %9, %11
  br i1 %cmp, label %cond.true, label %cond.false

cond.true:                                        ; preds = %do.end
  %12 = load %struct.win*, %struct.win** @fore, align 8
  %w_histidx = getelementptr inbounds %struct.win, %struct.win* %12, i32 0, i32 78
  %13 = load i32, i32* %w_histidx, align 4
  %14 = load i32, i32* %y, align 4
  %add1 = add nsw i32 %13, %14
  %15 = load %struct.win*, %struct.win** @fore, align 8
  %w_histheight2 = getelementptr inbounds %struct.win, %struct.win* %15, i32 0, i32 77
  %16 = load i32, i32* %w_histheight2, align 4
  %rem = srem i32 %add1, %16
  %idxprom = sext i32 %rem to i64
  %17 = load %struct.win*, %struct.win** @fore, align 8
  %w_hlines = getelementptr inbounds %struct.win, %struct.win* %17, i32 0, i32 79
  %18 = load %struct.mline*, %struct.mline** %w_hlines, align 8
  %arrayidx = getelementptr inbounds %struct.mline, %struct.mline* %18, i64 %idxprom
  br label %cond.end

cond.false:                                       ; preds = %do.end
  %19 = load i32, i32* %y, align 4
  %20 = load %struct.win*, %struct.win** @fore, align 8
  %w_histheight3 = getelementptr inbounds %struct.win, %struct.win* %20, i32 0, i32 77
  %21 = load i32, i32* %w_histheight3, align 4
  %sub = sub nsw i32 %19, %21
  %idxprom4 = sext i32 %sub to i64
  %22 = load %struct.win*, %struct.win** @fore, align 8
  %w_mlines = getelementptr inbounds %struct.win, %struct.win* %22, i32 0, i32 36
  %23 = load %struct.mline*, %struct.mline** %w_mlines, align 8
  %arrayidx5 = getelementptr inbounds %struct.mline, %struct.mline* %23, i64 %idxprom4
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi %struct.mline* [ %arrayidx, %cond.true ], [ %arrayidx5, %cond.false ]
  store %struct.mline* %cond, %struct.mline** %ml, align 8
  %24 = load %struct.win*, %struct.win** @fore, align 8
  %w_layer = getelementptr inbounds %struct.win, %struct.win* %24, i32 0, i32 3
  %l_encoding = getelementptr inbounds %struct.layer, %struct.layer* %w_layer, i32 0, i32 5
  %25 = load i32, i32* %l_encoding, align 4
  %tobool = icmp ne i32 %25, 0
  br i1 %tobool, label %land.lhs.true, label %if.end

land.lhs.true:                                    ; preds = %cond.end
  %26 = load %struct.win*, %struct.win** @fore, align 8
  %w_layer6 = getelementptr inbounds %struct.win, %struct.win* %26, i32 0, i32 3
  %l_encoding7 = getelementptr inbounds %struct.layer, %struct.layer* %w_layer6, i32 0, i32 5
  %27 = load i32, i32* %l_encoding7, align 4
  %cmp8 = icmp ne i32 %27, 8
  br i1 %cmp8, label %land.lhs.true.9, label %if.end

land.lhs.true.9:                                  ; preds = %land.lhs.true
  %28 = load %struct.display*, %struct.display** @display, align 8
  %d_encoding = getelementptr inbounds %struct.display, %struct.display* %28, i32 0, i32 28
  %29 = load i32, i32* %d_encoding, align 4
  %cmp10 = icmp eq i32 %29, 8
  br i1 %cmp10, label %land.lhs.true.11, label %if.end

land.lhs.true.11:                                 ; preds = %land.lhs.true.9
  %30 = load %struct.mline*, %struct.mline** %ml, align 8
  %31 = load i32, i32* %xs.addr, align 4
  %32 = load i32, i32* %xe.addr, align 4
  %33 = load %struct.win*, %struct.win** @fore, align 8
  %w_layer12 = getelementptr inbounds %struct.win, %struct.win* %33, i32 0, i32 3
  %l_encoding13 = getelementptr inbounds %struct.layer, %struct.layer* %w_layer12, i32 0, i32 5
  %34 = load i32, i32* %l_encoding13, align 4
  %call = call i32 @ContainsSpecialDeffont(%struct.mline* %30, i32 %31, i32 %32, i32 %34)
  %tobool14 = icmp ne i32 %call, 0
  br i1 %tobool14, label %if.then, label %if.end

if.then:                                          ; preds = %land.lhs.true.11
  store i32 1000, i32* %retval
  br label %return

if.end:                                           ; preds = %land.lhs.true.11, %land.lhs.true.9, %land.lhs.true, %cond.end
  %35 = load i32, i32* %xe.addr, align 4
  %36 = load i32, i32* %xs.addr, align 4
  %sub15 = sub nsw i32 %35, %36
  %add16 = add nsw i32 %sub15, 1
  store i32 %add16, i32* %dx, align 4
  %37 = load i32, i32* %doit.addr, align 4
  %tobool17 = icmp ne i32 %37, 0
  br i1 %tobool17, label %if.then.18, label %if.end.20

if.then.18:                                       ; preds = %if.end
  %38 = load %struct.mline*, %struct.mline** %ml, align 8
  %image = getelementptr inbounds %struct.mline, %struct.mline* %38, i32 0, i32 0
  %39 = load i8*, i8** %image, align 8
  %40 = load i32, i32* %xs.addr, align 4
  %idx.ext = sext i32 %40 to i64
  %add.ptr = getelementptr inbounds i8, i8* %39, i64 %idx.ext
  store i8* %add.ptr, i8** %i, align 8
  br label %while.cond

while.cond:                                       ; preds = %while.body, %if.then.18
  %41 = load i32, i32* %dx, align 4
  %dec = add nsw i32 %41, -1
  store i32 %dec, i32* %dx, align 4
  %tobool19 = icmp ne i32 %41, 0
  br i1 %tobool19, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %42 = load i8*, i8** %i, align 8
  %incdec.ptr = getelementptr inbounds i8, i8* %42, i32 1
  store i8* %incdec.ptr, i8** %i, align 8
  %43 = load i8, i8* %42, align 1
  %conv = zext i8 %43 to i32
  call void @PUTCHAR(i32 %conv)
  br label %while.cond

while.end:                                        ; preds = %while.cond
  store i32 0, i32* %retval
  br label %return

if.end.20:                                        ; preds = %if.end
  %44 = load %struct.markdata*, %struct.markdata** @markdata, align 8
  %second = getelementptr inbounds %struct.markdata, %struct.markdata* %44, i32 0, i32 6
  %45 = load i32, i32* %second, align 4
  %cmp21 = icmp eq i32 %45, 0
  br i1 %cmp21, label %if.then.23, label %if.else

if.then.23:                                       ; preds = %if.end.20
  store i32 -1, i32* %en, align 4
  store i32 -1, i32* %st, align 4
  br label %if.end.34

if.else:                                          ; preds = %if.end.20
  %46 = load %struct.markdata*, %struct.markdata** @markdata, align 8
  %y1 = getelementptr inbounds %struct.markdata, %struct.markdata* %46, i32 0, i32 5
  %47 = load i32, i32* %y1, align 4
  %48 = load %struct.win*, %struct.win** @fore, align 8
  %w_layer24 = getelementptr inbounds %struct.win, %struct.win* %48, i32 0, i32 3
  %l_width = getelementptr inbounds %struct.layer, %struct.layer* %w_layer24, i32 0, i32 1
  %49 = load i32, i32* %l_width, align 4
  %mul = mul nsw i32 %47, %49
  %50 = load %struct.markdata*, %struct.markdata** @markdata, align 8
  %x1 = getelementptr inbounds %struct.markdata, %struct.markdata* %50, i32 0, i32 4
  %51 = load i32, i32* %x1, align 4
  %add25 = add nsw i32 %mul, %51
  store i32 %add25, i32* %st, align 4
  %52 = load %struct.markdata*, %struct.markdata** @markdata, align 8
  %cy = getelementptr inbounds %struct.markdata, %struct.markdata* %52, i32 0, i32 3
  %53 = load i32, i32* %cy, align 4
  %54 = load %struct.win*, %struct.win** @fore, align 8
  %w_layer26 = getelementptr inbounds %struct.win, %struct.win* %54, i32 0, i32 3
  %l_width27 = getelementptr inbounds %struct.layer, %struct.layer* %w_layer26, i32 0, i32 1
  %55 = load i32, i32* %l_width27, align 4
  %mul28 = mul nsw i32 %53, %55
  %56 = load %struct.markdata*, %struct.markdata** @markdata, align 8
  %cx = getelementptr inbounds %struct.markdata, %struct.markdata* %56, i32 0, i32 2
  %57 = load i32, i32* %cx, align 4
  %add29 = add nsw i32 %mul28, %57
  store i32 %add29, i32* %en, align 4
  %58 = load i32, i32* %st, align 4
  %59 = load i32, i32* %en, align 4
  %cmp30 = icmp sgt i32 %58, %59
  br i1 %cmp30, label %if.then.32, label %if.end.33

if.then.32:                                       ; preds = %if.else
  %60 = load i32, i32* %st, align 4
  store i32 %60, i32* %t, align 4
  %61 = load i32, i32* %en, align 4
  store i32 %61, i32* %st, align 4
  %62 = load i32, i32* %t, align 4
  store i32 %62, i32* %en, align 4
  br label %if.end.33

if.end.33:                                        ; preds = %if.then.32, %if.else
  br label %if.end.34

if.end.34:                                        ; preds = %if.end.33, %if.then.23
  %63 = load i32, i32* %y, align 4
  %64 = load %struct.win*, %struct.win** @fore, align 8
  %w_layer35 = getelementptr inbounds %struct.win, %struct.win* %64, i32 0, i32 3
  %l_width36 = getelementptr inbounds %struct.layer, %struct.layer* %w_layer35, i32 0, i32 1
  %65 = load i32, i32* %l_width36, align 4
  %mul37 = mul nsw i32 %63, %65
  %66 = load i32, i32* %xs.addr, align 4
  %add38 = add nsw i32 %mul37, %66
  store i32 %add38, i32* %t, align 4
  %67 = load %struct.win*, %struct.win** @fore, align 8
  %w_layer39 = getelementptr inbounds %struct.win, %struct.win* %67, i32 0, i32 3
  %l_width40 = getelementptr inbounds %struct.layer, %struct.layer* %w_layer39, i32 0, i32 1
  %68 = load i32, i32* %l_width40, align 4
  store i32 %68, i32* %rm, align 4
  %69 = load %struct.mline*, %struct.mline** %ml, align 8
  %image41 = getelementptr inbounds %struct.mline, %struct.mline* %69, i32 0, i32 0
  %70 = load i8*, i8** %image41, align 8
  %71 = load %struct.win*, %struct.win** @fore, align 8
  %w_layer42 = getelementptr inbounds %struct.win, %struct.win* %71, i32 0, i32 3
  %l_width43 = getelementptr inbounds %struct.layer, %struct.layer* %w_layer42, i32 0, i32 1
  %72 = load i32, i32* %l_width43, align 4
  %idx.ext44 = sext i32 %72 to i64
  %add.ptr45 = getelementptr inbounds i8, i8* %70, i64 %idx.ext44
  store i8* %add.ptr45, i8** %i, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end.34
  %73 = load i32, i32* %rm, align 4
  %cmp46 = icmp sge i32 %73, 0
  br i1 %cmp46, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %74 = load i8*, i8** %i, align 8
  %incdec.ptr48 = getelementptr inbounds i8, i8* %74, i32 -1
  store i8* %incdec.ptr48, i8** %i, align 8
  %75 = load i8, i8* %74, align 1
  %conv49 = zext i8 %75 to i32
  %cmp50 = icmp ne i32 %conv49, 32
  br i1 %cmp50, label %if.then.52, label %if.end.53

if.then.52:                                       ; preds = %for.body
  br label %for.end

if.end.53:                                        ; preds = %for.body
  br label %for.inc

for.inc:                                          ; preds = %if.end.53
  %76 = load i32, i32* %rm, align 4
  %dec54 = add nsw i32 %76, -1
  store i32 %dec54, i32* %rm, align 4
  br label %for.cond

for.end:                                          ; preds = %if.then.52, %for.cond
  %77 = load i32, i32* %rm, align 4
  %78 = load %struct.markdata*, %struct.markdata** @markdata, align 8
  %right_mar = getelementptr inbounds %struct.markdata, %struct.markdata* %78, i32 0, i32 8
  %79 = load i32, i32* %right_mar, align 4
  %cmp55 = icmp sgt i32 %77, %79
  br i1 %cmp55, label %if.then.57, label %if.end.59

if.then.57:                                       ; preds = %for.end
  %80 = load %struct.markdata*, %struct.markdata** @markdata, align 8
  %right_mar58 = getelementptr inbounds %struct.markdata, %struct.markdata* %80, i32 0, i32 8
  %81 = load i32, i32* %right_mar58, align 4
  store i32 %81, i32* %rm, align 4
  br label %if.end.59

if.end.59:                                        ; preds = %if.then.57, %for.end
  %82 = load i32, i32* %xs.addr, align 4
  store i32 %82, i32* %x, align 4
  br label %while.cond.60

while.cond.60:                                    ; preds = %if.end.172, %if.end.59
  %83 = load i32, i32* %dx, align 4
  %dec61 = add nsw i32 %83, -1
  store i32 %dec61, i32* %dx, align 4
  %tobool62 = icmp ne i32 %83, 0
  br i1 %tobool62, label %while.body.63, label %while.end.173

while.body.63:                                    ; preds = %while.cond.60
  %84 = load i32, i32* %t, align 4
  %85 = load i32, i32* %st, align 4
  %cmp64 = icmp sge i32 %84, %85
  br i1 %cmp64, label %land.lhs.true.66, label %if.else.121

land.lhs.true.66:                                 ; preds = %while.body.63
  %86 = load i32, i32* %t, align 4
  %87 = load i32, i32* %en, align 4
  %cmp67 = icmp sle i32 %86, %87
  br i1 %cmp67, label %land.lhs.true.69, label %if.else.121

land.lhs.true.69:                                 ; preds = %land.lhs.true.66
  %88 = load i32, i32* %x, align 4
  %89 = load %struct.markdata*, %struct.markdata** @markdata, align 8
  %left_mar = getelementptr inbounds %struct.markdata, %struct.markdata* %89, i32 0, i32 7
  %90 = load i32, i32* %left_mar, align 4
  %cmp70 = icmp sge i32 %88, %90
  br i1 %cmp70, label %land.lhs.true.72, label %if.else.121

land.lhs.true.72:                                 ; preds = %land.lhs.true.69
  %91 = load i32, i32* %x, align 4
  %92 = load i32, i32* %rm, align 4
  %cmp73 = icmp sle i32 %91, %92
  br i1 %cmp73, label %if.then.75, label %if.else.121

if.then.75:                                       ; preds = %land.lhs.true.72
  %93 = load i32, i32* @pastefont, align 4
  %tobool76 = icmp ne i32 %93, 0
  br i1 %tobool76, label %if.then.77, label %if.end.84

if.then.77:                                       ; preds = %if.then.75
  %94 = load i32, i32* %x, align 4
  %idxprom78 = sext i32 %94 to i64
  %95 = load %struct.mline*, %struct.mline** %ml, align 8
  %font = getelementptr inbounds %struct.mline, %struct.mline* %95, i32 0, i32 2
  %96 = load i8*, i8** %font, align 8
  %arrayidx79 = getelementptr inbounds i8, i8* %96, i64 %idxprom78
  %97 = load i8, i8* %arrayidx79, align 1
  %font80 = getelementptr inbounds %struct.mchar, %struct.mchar* %mchar_marked, i32 0, i32 2
  store i8 %97, i8* %font80, align 1
  %98 = load i32, i32* %x, align 4
  %idxprom81 = sext i32 %98 to i64
  %99 = load %struct.mline*, %struct.mline** %ml, align 8
  %fontx = getelementptr inbounds %struct.mline, %struct.mline* %99, i32 0, i32 3
  %100 = load i8*, i8** %fontx, align 8
  %arrayidx82 = getelementptr inbounds i8, i8* %100, i64 %idxprom81
  %101 = load i8, i8* %arrayidx82, align 1
  %fontx83 = getelementptr inbounds %struct.mchar, %struct.mchar* %mchar_marked, i32 0, i32 3
  store i8 %101, i8* %fontx83, align 1
  br label %if.end.84

if.end.84:                                        ; preds = %if.then.77, %if.then.75
  %image85 = getelementptr inbounds %struct.mchar, %struct.mchar* %mchar_marked, i32 0, i32 0
  %102 = load i8, i8* %image85, align 1
  %103 = load %struct.mchar*, %struct.mchar** %rend.addr, align 8
  %image86 = getelementptr inbounds %struct.mchar, %struct.mchar* %103, i32 0, i32 0
  store i8 %102, i8* %image86, align 1
  %104 = load %struct.mchar*, %struct.mchar** %rend.addr, align 8
  %image87 = getelementptr inbounds %struct.mchar, %struct.mchar* %104, i32 0, i32 0
  %105 = load i8, i8* %image87, align 1
  %conv88 = zext i8 %105 to i32
  %image89 = getelementptr inbounds %struct.mchar, %struct.mchar* %mchar_marked, i32 0, i32 0
  %106 = load i8, i8* %image89, align 1
  %conv90 = zext i8 %106 to i32
  %cmp91 = icmp eq i32 %conv88, %conv90
  br i1 %cmp91, label %land.lhs.true.93, label %if.then.119

land.lhs.true.93:                                 ; preds = %if.end.84
  %107 = load %struct.mchar*, %struct.mchar** %rend.addr, align 8
  %attr = getelementptr inbounds %struct.mchar, %struct.mchar* %107, i32 0, i32 1
  %108 = load i8, i8* %attr, align 1
  %conv94 = zext i8 %108 to i32
  %attr95 = getelementptr inbounds %struct.mchar, %struct.mchar* %mchar_marked, i32 0, i32 1
  %109 = load i8, i8* %attr95, align 1
  %conv96 = zext i8 %109 to i32
  %cmp97 = icmp eq i32 %conv94, %conv96
  br i1 %cmp97, label %land.lhs.true.99, label %if.then.119

land.lhs.true.99:                                 ; preds = %land.lhs.true.93
  %110 = load %struct.mchar*, %struct.mchar** %rend.addr, align 8
  %font100 = getelementptr inbounds %struct.mchar, %struct.mchar* %110, i32 0, i32 2
  %111 = load i8, i8* %font100, align 1
  %conv101 = zext i8 %111 to i32
  %font102 = getelementptr inbounds %struct.mchar, %struct.mchar* %mchar_marked, i32 0, i32 2
  %112 = load i8, i8* %font102, align 1
  %conv103 = zext i8 %112 to i32
  %cmp104 = icmp eq i32 %conv101, %conv103
  br i1 %cmp104, label %land.lhs.true.106, label %if.then.119

land.lhs.true.106:                                ; preds = %land.lhs.true.99
  %113 = load %struct.mchar*, %struct.mchar** %rend.addr, align 8
  %fontx107 = getelementptr inbounds %struct.mchar, %struct.mchar* %113, i32 0, i32 3
  %114 = load i8, i8* %fontx107, align 1
  %conv108 = zext i8 %114 to i32
  %fontx109 = getelementptr inbounds %struct.mchar, %struct.mchar* %mchar_marked, i32 0, i32 3
  %115 = load i8, i8* %fontx109, align 1
  %conv110 = zext i8 %115 to i32
  %cmp111 = icmp eq i32 %conv108, %conv110
  br i1 %cmp111, label %land.lhs.true.113, label %if.then.119

land.lhs.true.113:                                ; preds = %land.lhs.true.106
  %116 = load %struct.mchar*, %struct.mchar** %rend.addr, align 8
  %color = getelementptr inbounds %struct.mchar, %struct.mchar* %116, i32 0, i32 4
  %117 = load i8, i8* %color, align 1
  %conv114 = zext i8 %117 to i32
  %color115 = getelementptr inbounds %struct.mchar, %struct.mchar* %mchar_marked, i32 0, i32 4
  %118 = load i8, i8* %color115, align 1
  %conv116 = zext i8 %118 to i32
  %cmp117 = icmp eq i32 %conv114, %conv116
  br i1 %cmp117, label %if.end.120, label %if.then.119

if.then.119:                                      ; preds = %land.lhs.true.113, %land.lhs.true.106, %land.lhs.true.99, %land.lhs.true.93, %if.end.84
  store i32 1000, i32* %retval
  br label %return

if.end.120:                                       ; preds = %land.lhs.true.113
  br label %if.end.172

if.else.121:                                      ; preds = %land.lhs.true.72, %land.lhs.true.69, %land.lhs.true.66, %while.body.63
  %119 = load i32, i32* %x, align 4
  %idxprom122 = sext i32 %119 to i64
  %120 = load %struct.mline*, %struct.mline** %ml, align 8
  %image123 = getelementptr inbounds %struct.mline, %struct.mline* %120, i32 0, i32 0
  %121 = load i8*, i8** %image123, align 8
  %arrayidx124 = getelementptr inbounds i8, i8* %121, i64 %idxprom122
  %122 = load i8, i8* %arrayidx124, align 1
  %123 = load %struct.mchar*, %struct.mchar** %rend.addr, align 8
  %image125 = getelementptr inbounds %struct.mchar, %struct.mchar* %123, i32 0, i32 0
  store i8 %122, i8* %image125, align 1
  %124 = load %struct.mchar*, %struct.mchar** %rend.addr, align 8
  %image126 = getelementptr inbounds %struct.mchar, %struct.mchar* %124, i32 0, i32 0
  %125 = load i8, i8* %image126, align 1
  %conv127 = zext i8 %125 to i32
  %126 = load i32, i32* %x, align 4
  %idxprom128 = sext i32 %126 to i64
  %127 = load %struct.mline*, %struct.mline** %ml, align 8
  %image129 = getelementptr inbounds %struct.mline, %struct.mline* %127, i32 0, i32 0
  %128 = load i8*, i8** %image129, align 8
  %arrayidx130 = getelementptr inbounds i8, i8* %128, i64 %idxprom128
  %129 = load i8, i8* %arrayidx130, align 1
  %conv131 = zext i8 %129 to i32
  %cmp132 = icmp eq i32 %conv127, %conv131
  br i1 %cmp132, label %land.lhs.true.134, label %if.then.170

land.lhs.true.134:                                ; preds = %if.else.121
  %130 = load %struct.mchar*, %struct.mchar** %rend.addr, align 8
  %attr135 = getelementptr inbounds %struct.mchar, %struct.mchar* %130, i32 0, i32 1
  %131 = load i8, i8* %attr135, align 1
  %conv136 = zext i8 %131 to i32
  %132 = load i32, i32* %x, align 4
  %idxprom137 = sext i32 %132 to i64
  %133 = load %struct.mline*, %struct.mline** %ml, align 8
  %attr138 = getelementptr inbounds %struct.mline, %struct.mline* %133, i32 0, i32 1
  %134 = load i8*, i8** %attr138, align 8
  %arrayidx139 = getelementptr inbounds i8, i8* %134, i64 %idxprom137
  %135 = load i8, i8* %arrayidx139, align 1
  %conv140 = zext i8 %135 to i32
  %cmp141 = icmp eq i32 %conv136, %conv140
  br i1 %cmp141, label %land.lhs.true.143, label %if.then.170

land.lhs.true.143:                                ; preds = %land.lhs.true.134
  %136 = load %struct.mchar*, %struct.mchar** %rend.addr, align 8
  %font144 = getelementptr inbounds %struct.mchar, %struct.mchar* %136, i32 0, i32 2
  %137 = load i8, i8* %font144, align 1
  %conv145 = zext i8 %137 to i32
  %138 = load i32, i32* %x, align 4
  %idxprom146 = sext i32 %138 to i64
  %139 = load %struct.mline*, %struct.mline** %ml, align 8
  %font147 = getelementptr inbounds %struct.mline, %struct.mline* %139, i32 0, i32 2
  %140 = load i8*, i8** %font147, align 8
  %arrayidx148 = getelementptr inbounds i8, i8* %140, i64 %idxprom146
  %141 = load i8, i8* %arrayidx148, align 1
  %conv149 = zext i8 %141 to i32
  %cmp150 = icmp eq i32 %conv145, %conv149
  br i1 %cmp150, label %land.lhs.true.152, label %if.then.170

land.lhs.true.152:                                ; preds = %land.lhs.true.143
  %142 = load %struct.mchar*, %struct.mchar** %rend.addr, align 8
  %fontx153 = getelementptr inbounds %struct.mchar, %struct.mchar* %142, i32 0, i32 3
  %143 = load i8, i8* %fontx153, align 1
  %conv154 = zext i8 %143 to i32
  %144 = load i32, i32* %x, align 4
  %idxprom155 = sext i32 %144 to i64
  %145 = load %struct.mline*, %struct.mline** %ml, align 8
  %fontx156 = getelementptr inbounds %struct.mline, %struct.mline* %145, i32 0, i32 3
  %146 = load i8*, i8** %fontx156, align 8
  %arrayidx157 = getelementptr inbounds i8, i8* %146, i64 %idxprom155
  %147 = load i8, i8* %arrayidx157, align 1
  %conv158 = zext i8 %147 to i32
  %cmp159 = icmp eq i32 %conv154, %conv158
  br i1 %cmp159, label %land.lhs.true.161, label %if.then.170

land.lhs.true.161:                                ; preds = %land.lhs.true.152
  %148 = load %struct.mchar*, %struct.mchar** %rend.addr, align 8
  %color162 = getelementptr inbounds %struct.mchar, %struct.mchar* %148, i32 0, i32 4
  %149 = load i8, i8* %color162, align 1
  %conv163 = zext i8 %149 to i32
  %150 = load i32, i32* %x, align 4
  %idxprom164 = sext i32 %150 to i64
  %151 = load %struct.mline*, %struct.mline** %ml, align 8
  %color165 = getelementptr inbounds %struct.mline, %struct.mline* %151, i32 0, i32 4
  %152 = load i8*, i8** %color165, align 8
  %arrayidx166 = getelementptr inbounds i8, i8* %152, i64 %idxprom164
  %153 = load i8, i8* %arrayidx166, align 1
  %conv167 = zext i8 %153 to i32
  %cmp168 = icmp eq i32 %conv163, %conv167
  br i1 %cmp168, label %if.end.171, label %if.then.170

if.then.170:                                      ; preds = %land.lhs.true.161, %land.lhs.true.152, %land.lhs.true.143, %land.lhs.true.134, %if.else.121
  store i32 1000, i32* %retval
  br label %return

if.end.171:                                       ; preds = %land.lhs.true.161
  br label %if.end.172

if.end.172:                                       ; preds = %if.end.171, %if.end.120
  %154 = load i32, i32* %x, align 4
  %inc = add nsw i32 %154, 1
  store i32 %inc, i32* %x, align 4
  br label %while.cond.60

while.end.173:                                    ; preds = %while.cond.60
  %155 = load i32, i32* %xe.addr, align 4
  %156 = load i32, i32* %xs.addr, align 4
  %sub174 = sub nsw i32 %155, %156
  %add175 = add nsw i32 %sub174, 1
  store i32 %add175, i32* %retval
  br label %return

return:                                           ; preds = %while.end.173, %if.then.170, %if.then.119, %while.end, %if.then
  %157 = load i32, i32* %retval
  ret i32 %157
}

declare i32 @DefResize(i32, i32) #1

declare void @DefRestore() #1

; Function Attrs: nounwind uwtable
define i32 @GetHistory() #0 {
entry:
  %retval = alloca i32, align 4
  %i = alloca i32, align 4
  %q = alloca i32, align 4
  %xx = alloca i32, align 4
  %yy = alloca i32, align 4
  %x = alloca i32, align 4
  %y = alloca i32, align 4
  %linep = alloca i8*, align 8
  %ml = alloca %struct.mline*, align 8
  store i32 0, i32* %i, align 4
  store i32 0, i32* %q, align 4
  br label %do.body

do.body:                                          ; preds = %entry
  br label %do.end

do.end:                                           ; preds = %do.body
  %0 = load %struct.win*, %struct.win** @fore, align 8
  %w_layer = getelementptr inbounds %struct.win, %struct.win* %0, i32 0, i32 3
  %l_x = getelementptr inbounds %struct.layer, %struct.layer* %w_layer, i32 0, i32 3
  %1 = load i32, i32* %l_x, align 4
  store i32 %1, i32* %x, align 4
  %2 = load i32, i32* %x, align 4
  %3 = load %struct.win*, %struct.win** @fore, align 8
  %w_layer1 = getelementptr inbounds %struct.win, %struct.win* %3, i32 0, i32 3
  %l_width = getelementptr inbounds %struct.layer, %struct.layer* %w_layer1, i32 0, i32 1
  %4 = load i32, i32* %l_width, align 4
  %cmp = icmp sge i32 %2, %4
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %do.end
  %5 = load %struct.win*, %struct.win** @fore, align 8
  %w_layer2 = getelementptr inbounds %struct.win, %struct.win* %5, i32 0, i32 3
  %l_width3 = getelementptr inbounds %struct.layer, %struct.layer* %w_layer2, i32 0, i32 1
  %6 = load i32, i32* %l_width3, align 4
  %sub = sub nsw i32 %6, 1
  store i32 %sub, i32* %x, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %do.end
  %7 = load %struct.win*, %struct.win** @fore, align 8
  %w_layer4 = getelementptr inbounds %struct.win, %struct.win* %7, i32 0, i32 3
  %l_y = getelementptr inbounds %struct.layer, %struct.layer* %w_layer4, i32 0, i32 4
  %8 = load i32, i32* %l_y, align 4
  %9 = load %struct.win*, %struct.win** @fore, align 8
  %w_histheight = getelementptr inbounds %struct.win, %struct.win* %9, i32 0, i32 77
  %10 = load i32, i32* %w_histheight, align 4
  %add = add nsw i32 %8, %10
  store i32 %add, i32* %y, align 4
  br label %do.body.5

do.body.5:                                        ; preds = %if.end
  br label %do.end.6

do.end.6:                                         ; preds = %do.body.5
  %11 = load i32, i32* %y, align 4
  %12 = load %struct.win*, %struct.win** @fore, align 8
  %w_histheight7 = getelementptr inbounds %struct.win, %struct.win* %12, i32 0, i32 77
  %13 = load i32, i32* %w_histheight7, align 4
  %cmp8 = icmp slt i32 %11, %13
  br i1 %cmp8, label %cond.true, label %cond.false

cond.true:                                        ; preds = %do.end.6
  %14 = load %struct.win*, %struct.win** @fore, align 8
  %w_histidx = getelementptr inbounds %struct.win, %struct.win* %14, i32 0, i32 78
  %15 = load i32, i32* %w_histidx, align 4
  %16 = load i32, i32* %y, align 4
  %add9 = add nsw i32 %15, %16
  %17 = load %struct.win*, %struct.win** @fore, align 8
  %w_histheight10 = getelementptr inbounds %struct.win, %struct.win* %17, i32 0, i32 77
  %18 = load i32, i32* %w_histheight10, align 4
  %rem = srem i32 %add9, %18
  %idxprom = sext i32 %rem to i64
  %19 = load %struct.win*, %struct.win** @fore, align 8
  %w_hlines = getelementptr inbounds %struct.win, %struct.win* %19, i32 0, i32 79
  %20 = load %struct.mline*, %struct.mline** %w_hlines, align 8
  %arrayidx = getelementptr inbounds %struct.mline, %struct.mline* %20, i64 %idxprom
  br label %cond.end

cond.false:                                       ; preds = %do.end.6
  %21 = load i32, i32* %y, align 4
  %22 = load %struct.win*, %struct.win** @fore, align 8
  %w_histheight11 = getelementptr inbounds %struct.win, %struct.win* %22, i32 0, i32 77
  %23 = load i32, i32* %w_histheight11, align 4
  %sub12 = sub nsw i32 %21, %23
  %idxprom13 = sext i32 %sub12 to i64
  %24 = load %struct.win*, %struct.win** @fore, align 8
  %w_mlines = getelementptr inbounds %struct.win, %struct.win* %24, i32 0, i32 36
  %25 = load %struct.mline*, %struct.mline** %w_mlines, align 8
  %arrayidx14 = getelementptr inbounds %struct.mline, %struct.mline* %25, i64 %idxprom13
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi %struct.mline* [ %arrayidx, %cond.true ], [ %arrayidx14, %cond.false ]
  store %struct.mline* %cond, %struct.mline** %ml, align 8
  %26 = load i32, i32* %x, align 4
  %sub15 = sub nsw i32 %26, 1
  store i32 %sub15, i32* %xx, align 4
  %27 = load %struct.mline*, %struct.mline** %ml, align 8
  %image = getelementptr inbounds %struct.mline, %struct.mline* %27, i32 0, i32 0
  %28 = load i8*, i8** %image, align 8
  %29 = load i32, i32* %xx, align 4
  %idx.ext = sext i32 %29 to i64
  %add.ptr = getelementptr inbounds i8, i8* %28, i64 %idx.ext
  store i8* %add.ptr, i8** %linep, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %cond.end
  %30 = load i32, i32* %xx, align 4
  %cmp16 = icmp sge i32 %30, 0
  br i1 %cmp16, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %31 = load i8*, i8** %linep, align 8
  %incdec.ptr = getelementptr inbounds i8, i8* %31, i32 -1
  store i8* %incdec.ptr, i8** %linep, align 8
  %32 = load i8, i8* %31, align 1
  %conv = zext i8 %32 to i32
  store i32 %conv, i32* %q, align 4
  %cmp17 = icmp ne i32 %conv, 32
  br i1 %cmp17, label %if.then.19, label %if.end.20

if.then.19:                                       ; preds = %for.body
  br label %for.end

if.end.20:                                        ; preds = %for.body
  br label %for.inc

for.inc:                                          ; preds = %if.end.20
  %33 = load i32, i32* %xx, align 4
  %dec = add nsw i32 %33, -1
  store i32 %dec, i32* %xx, align 4
  br label %for.cond

for.end:                                          ; preds = %if.then.19, %for.cond
  br label %do.body.21

do.body.21:                                       ; preds = %for.end
  br label %do.end.22

do.end.22:                                        ; preds = %do.body.21
  %34 = load i32, i32* %y, align 4
  %sub23 = sub nsw i32 %34, 1
  store i32 %sub23, i32* %yy, align 4
  br label %for.cond.24

for.cond.24:                                      ; preds = %for.inc.77, %do.end.22
  %35 = load i32, i32* %yy, align 4
  %cmp25 = icmp sge i32 %35, 0
  br i1 %cmp25, label %for.body.27, label %for.end.79

for.body.27:                                      ; preds = %for.cond.24
  %36 = load i32, i32* %yy, align 4
  %37 = load %struct.win*, %struct.win** @fore, align 8
  %w_histheight28 = getelementptr inbounds %struct.win, %struct.win* %37, i32 0, i32 77
  %38 = load i32, i32* %w_histheight28, align 4
  %cmp29 = icmp slt i32 %36, %38
  br i1 %cmp29, label %cond.true.31, label %cond.false.39

cond.true.31:                                     ; preds = %for.body.27
  %39 = load %struct.win*, %struct.win** @fore, align 8
  %w_histidx32 = getelementptr inbounds %struct.win, %struct.win* %39, i32 0, i32 78
  %40 = load i32, i32* %w_histidx32, align 4
  %41 = load i32, i32* %yy, align 4
  %add33 = add nsw i32 %40, %41
  %42 = load %struct.win*, %struct.win** @fore, align 8
  %w_histheight34 = getelementptr inbounds %struct.win, %struct.win* %42, i32 0, i32 77
  %43 = load i32, i32* %w_histheight34, align 4
  %rem35 = srem i32 %add33, %43
  %idxprom36 = sext i32 %rem35 to i64
  %44 = load %struct.win*, %struct.win** @fore, align 8
  %w_hlines37 = getelementptr inbounds %struct.win, %struct.win* %44, i32 0, i32 79
  %45 = load %struct.mline*, %struct.mline** %w_hlines37, align 8
  %arrayidx38 = getelementptr inbounds %struct.mline, %struct.mline* %45, i64 %idxprom36
  br label %cond.end.45

cond.false.39:                                    ; preds = %for.body.27
  %46 = load i32, i32* %yy, align 4
  %47 = load %struct.win*, %struct.win** @fore, align 8
  %w_histheight40 = getelementptr inbounds %struct.win, %struct.win* %47, i32 0, i32 77
  %48 = load i32, i32* %w_histheight40, align 4
  %sub41 = sub nsw i32 %46, %48
  %idxprom42 = sext i32 %sub41 to i64
  %49 = load %struct.win*, %struct.win** @fore, align 8
  %w_mlines43 = getelementptr inbounds %struct.win, %struct.win* %49, i32 0, i32 36
  %50 = load %struct.mline*, %struct.mline** %w_mlines43, align 8
  %arrayidx44 = getelementptr inbounds %struct.mline, %struct.mline* %50, i64 %idxprom42
  br label %cond.end.45

cond.end.45:                                      ; preds = %cond.false.39, %cond.true.31
  %cond46 = phi %struct.mline* [ %arrayidx38, %cond.true.31 ], [ %arrayidx44, %cond.false.39 ]
  store %struct.mline* %cond46, %struct.mline** %ml, align 8
  %51 = load %struct.mline*, %struct.mline** %ml, align 8
  %image47 = getelementptr inbounds %struct.mline, %struct.mline* %51, i32 0, i32 0
  %52 = load i8*, i8** %image47, align 8
  store i8* %52, i8** %linep, align 8
  %53 = load i32, i32* %xx, align 4
  %cmp48 = icmp slt i32 %53, 0
  br i1 %cmp48, label %if.then.53, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %cond.end.45
  %54 = load i32, i32* %xx, align 4
  %idxprom50 = sext i32 %54 to i64
  %55 = load i8*, i8** %linep, align 8
  %arrayidx51 = getelementptr inbounds i8, i8* %55, i64 %idxprom50
  %56 = load i8, i8* %arrayidx51, align 1
  %conv52 = zext i8 %56 to i32
  %57 = load i32, i32* %q, align 4
  %call = call i32 @eq(i32 %conv52, i32 %57)
  %tobool = icmp ne i32 %call, 0
  br i1 %tobool, label %if.then.53, label %if.end.76

if.then.53:                                       ; preds = %lor.lhs.false, %cond.end.45
  %58 = load %struct.win*, %struct.win** @fore, align 8
  %w_layer54 = getelementptr inbounds %struct.win, %struct.win* %58, i32 0, i32 3
  %l_width55 = getelementptr inbounds %struct.layer, %struct.layer* %w_layer54, i32 0, i32 1
  %59 = load i32, i32* %l_width55, align 4
  %sub56 = sub nsw i32 %59, 1
  store i32 %sub56, i32* %i, align 4
  %60 = load i32, i32* %i, align 4
  %61 = load i8*, i8** %linep, align 8
  %idx.ext57 = sext i32 %60 to i64
  %add.ptr58 = getelementptr inbounds i8, i8* %61, i64 %idx.ext57
  store i8* %add.ptr58, i8** %linep, align 8
  br label %for.cond.59

for.cond.59:                                      ; preds = %for.inc.69, %if.then.53
  %62 = load i32, i32* %i, align 4
  %63 = load i32, i32* %x, align 4
  %cmp60 = icmp sge i32 %62, %63
  br i1 %cmp60, label %for.body.62, label %for.end.71

for.body.62:                                      ; preds = %for.cond.59
  %64 = load i8*, i8** %linep, align 8
  %incdec.ptr63 = getelementptr inbounds i8, i8* %64, i32 -1
  store i8* %incdec.ptr63, i8** %linep, align 8
  %65 = load i8, i8* %64, align 1
  %conv64 = zext i8 %65 to i32
  %cmp65 = icmp ne i32 %conv64, 32
  br i1 %cmp65, label %if.then.67, label %if.end.68

if.then.67:                                       ; preds = %for.body.62
  br label %for.end.71

if.end.68:                                        ; preds = %for.body.62
  br label %for.inc.69

for.inc.69:                                       ; preds = %if.end.68
  %66 = load i32, i32* %i, align 4
  %dec70 = add nsw i32 %66, -1
  store i32 %dec70, i32* %i, align 4
  br label %for.cond.59

for.end.71:                                       ; preds = %if.then.67, %for.cond.59
  %67 = load i32, i32* %i, align 4
  %68 = load i32, i32* %x, align 4
  %cmp72 = icmp sge i32 %67, %68
  br i1 %cmp72, label %if.then.74, label %if.end.75

if.then.74:                                       ; preds = %for.end.71
  br label %for.end.79

if.end.75:                                        ; preds = %for.end.71
  br label %if.end.76

if.end.76:                                        ; preds = %if.end.75, %lor.lhs.false
  br label %for.inc.77

for.inc.77:                                       ; preds = %if.end.76
  %69 = load i32, i32* %yy, align 4
  %dec78 = add nsw i32 %69, -1
  store i32 %dec78, i32* %yy, align 4
  br label %for.cond.24

for.end.79:                                       ; preds = %if.then.74, %for.cond.24
  %70 = load i32, i32* %yy, align 4
  %cmp80 = icmp slt i32 %70, 0
  br i1 %cmp80, label %if.then.82, label %if.end.83

if.then.82:                                       ; preds = %for.end.79
  store i32 0, i32* %retval
  br label %return

if.end.83:                                        ; preds = %for.end.79
  %71 = load %struct.display*, %struct.display** @display, align 8
  %d_user = getelementptr inbounds %struct.display, %struct.display* %71, i32 0, i32 1
  %72 = load %struct.acluser*, %struct.acluser** %d_user, align 8
  %u_plop = getelementptr inbounds %struct.acluser, %struct.acluser* %72, i32 0, i32 8
  %buf = getelementptr inbounds %struct.plop, %struct.plop* %u_plop, i32 0, i32 0
  %73 = load i8*, i8** %buf, align 8
  %tobool84 = icmp ne i8* %73, null
  br i1 %tobool84, label %if.then.85, label %if.end.88

if.then.85:                                       ; preds = %if.end.83
  %74 = load %struct.display*, %struct.display** @display, align 8
  %d_user86 = getelementptr inbounds %struct.display, %struct.display* %74, i32 0, i32 1
  %75 = load %struct.acluser*, %struct.acluser** %d_user86, align 8
  %call87 = call i32 @UserFreeCopyBuffer(%struct.acluser* %75)
  br label %if.end.88

if.end.88:                                        ; preds = %if.then.85, %if.end.83
  %76 = load i32, i32* %i, align 4
  %77 = load i32, i32* %x, align 4
  %sub89 = sub nsw i32 %76, %77
  %add90 = add nsw i32 %sub89, 2
  %conv91 = zext i32 %add90 to i64
  %call92 = call noalias i8* @malloc(i64 %conv91) #3
  %78 = load %struct.display*, %struct.display** @display, align 8
  %d_user93 = getelementptr inbounds %struct.display, %struct.display* %78, i32 0, i32 1
  %79 = load %struct.acluser*, %struct.acluser** %d_user93, align 8
  %u_plop94 = getelementptr inbounds %struct.acluser, %struct.acluser* %79, i32 0, i32 8
  %buf95 = getelementptr inbounds %struct.plop, %struct.plop* %u_plop94, i32 0, i32 0
  store i8* %call92, i8** %buf95, align 8
  %cmp96 = icmp eq i8* %call92, null
  br i1 %cmp96, label %if.then.98, label %if.end.99

if.then.98:                                       ; preds = %if.end.88
  call void (i32, i8*, ...) @LMsg(i32 0, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str, i32 0, i32 0))
  store i32 0, i32* %retval
  br label %return

if.end.99:                                        ; preds = %if.end.88
  %80 = load i8*, i8** %linep, align 8
  %81 = load i32, i32* %i, align 4
  %idx.ext100 = sext i32 %81 to i64
  %idx.neg = sub i64 0, %idx.ext100
  %add.ptr101 = getelementptr inbounds i8, i8* %80, i64 %idx.neg
  %82 = load i32, i32* %x, align 4
  %idx.ext102 = sext i32 %82 to i64
  %add.ptr103 = getelementptr inbounds i8, i8* %add.ptr101, i64 %idx.ext102
  %add.ptr104 = getelementptr inbounds i8, i8* %add.ptr103, i64 1
  %83 = load %struct.display*, %struct.display** @display, align 8
  %d_user105 = getelementptr inbounds %struct.display, %struct.display* %83, i32 0, i32 1
  %84 = load %struct.acluser*, %struct.acluser** %d_user105, align 8
  %u_plop106 = getelementptr inbounds %struct.acluser, %struct.acluser* %84, i32 0, i32 8
  %buf107 = getelementptr inbounds %struct.plop, %struct.plop* %u_plop106, i32 0, i32 0
  %85 = load i8*, i8** %buf107, align 8
  %86 = load i32, i32* %i, align 4
  %87 = load i32, i32* %x, align 4
  %sub108 = sub nsw i32 %86, %87
  %add109 = add nsw i32 %sub108, 1
  %conv110 = sext i32 %add109 to i64
  call void @bcopy(i8* %add.ptr104, i8* %85, i64 %conv110) #3
  %88 = load i32, i32* %i, align 4
  %89 = load i32, i32* %x, align 4
  %sub111 = sub nsw i32 %88, %89
  %add112 = add nsw i32 %sub111, 1
  %90 = load %struct.display*, %struct.display** @display, align 8
  %d_user113 = getelementptr inbounds %struct.display, %struct.display* %90, i32 0, i32 1
  %91 = load %struct.acluser*, %struct.acluser** %d_user113, align 8
  %u_plop114 = getelementptr inbounds %struct.acluser, %struct.acluser* %91, i32 0, i32 8
  %len = getelementptr inbounds %struct.plop, %struct.plop* %u_plop114, i32 0, i32 1
  store i32 %add112, i32* %len, align 4
  %92 = load %struct.win*, %struct.win** @fore, align 8
  %w_layer115 = getelementptr inbounds %struct.win, %struct.win* %92, i32 0, i32 3
  %l_encoding = getelementptr inbounds %struct.layer, %struct.layer* %w_layer115, i32 0, i32 5
  %93 = load i32, i32* %l_encoding, align 4
  %94 = load %struct.display*, %struct.display** @display, align 8
  %d_user116 = getelementptr inbounds %struct.display, %struct.display* %94, i32 0, i32 1
  %95 = load %struct.acluser*, %struct.acluser** %d_user116, align 8
  %u_plop117 = getelementptr inbounds %struct.acluser, %struct.acluser* %95, i32 0, i32 8
  %enc = getelementptr inbounds %struct.plop, %struct.plop* %u_plop117, i32 0, i32 2
  store i32 %93, i32* %enc, align 4
  store i32 1, i32* %retval
  br label %return

return:                                           ; preds = %if.end.99, %if.then.98, %if.then.82
  %96 = load i32, i32* %retval
  ret i32 %96
}

; Function Attrs: nounwind uwtable
define internal i32 @eq(i32 %a, i32 %b) #0 {
entry:
  %retval = alloca i32, align 4
  %a.addr = alloca i32, align 4
  %b.addr = alloca i32, align 4
  store i32 %a, i32* %a.addr, align 4
  store i32 %b, i32* %b.addr, align 4
  %0 = load i32, i32* %a.addr, align 4
  %1 = load i32, i32* %b.addr, align 4
  %cmp = icmp eq i32 %0, %1
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store i32 1, i32* %retval
  br label %return

if.end:                                           ; preds = %entry
  %2 = load i32, i32* %a.addr, align 4
  %cmp1 = icmp eq i32 %2, 0
  br i1 %cmp1, label %if.then.3, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.end
  %3 = load i32, i32* %b.addr, align 4
  %cmp2 = icmp eq i32 %3, 0
  br i1 %cmp2, label %if.then.3, label %if.end.4

if.then.3:                                        ; preds = %lor.lhs.false, %if.end
  store i32 1, i32* %retval
  br label %return

if.end.4:                                         ; preds = %lor.lhs.false
  %4 = load i32, i32* %a.addr, align 4
  %cmp5 = icmp sle i32 %4, 57
  br i1 %cmp5, label %land.lhs.true, label %if.end.12

land.lhs.true:                                    ; preds = %if.end.4
  %5 = load i32, i32* %a.addr, align 4
  %cmp6 = icmp sge i32 %5, 48
  br i1 %cmp6, label %land.lhs.true.7, label %if.end.12

land.lhs.true.7:                                  ; preds = %land.lhs.true
  %6 = load i32, i32* %b.addr, align 4
  %cmp8 = icmp sle i32 %6, 57
  br i1 %cmp8, label %land.lhs.true.9, label %if.end.12

land.lhs.true.9:                                  ; preds = %land.lhs.true.7
  %7 = load i32, i32* %b.addr, align 4
  %cmp10 = icmp sge i32 %7, 48
  br i1 %cmp10, label %if.then.11, label %if.end.12

if.then.11:                                       ; preds = %land.lhs.true.9
  store i32 1, i32* %retval
  br label %return

if.end.12:                                        ; preds = %land.lhs.true.9, %land.lhs.true.7, %land.lhs.true, %if.end.4
  store i32 0, i32* %retval
  br label %return

return:                                           ; preds = %if.end.12, %if.then.11, %if.then.3, %if.then
  %8 = load i32, i32* %retval
  ret i32 %8
}

declare i32 @UserFreeCopyBuffer(%struct.acluser*) #1

; Function Attrs: nounwind
declare noalias i8* @malloc(i64) #2

declare void @LMsg(i32, i8*, ...) #1

; Function Attrs: nounwind
declare void @bcopy(i8*, i8*, i64) #2

; Function Attrs: nounwind uwtable
define void @MarkRoutine() #0 {
entry:
  %x = alloca i32, align 4
  %y = alloca i32, align 4
  br label %do.body

do.body:                                          ; preds = %entry
  br label %do.end

do.end:                                           ; preds = %do.body
  br label %do.body.1

do.body.1:                                        ; preds = %do.end
  br label %do.end.2

do.end.2:                                         ; preds = %do.body.1
  %call = call i32 @InitOverlayPage(i32 400, %struct.LayFuncs* @MarkLf, i32 1)
  %tobool = icmp ne i32 %call, 0
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %do.end.2
  br label %return

if.end:                                           ; preds = %do.end.2
  %0 = load %struct.win*, %struct.win** @fore, align 8
  %w_layer = getelementptr inbounds %struct.win, %struct.win* %0, i32 0, i32 3
  %l_encoding = getelementptr inbounds %struct.layer, %struct.layer* %w_layer, i32 0, i32 5
  %1 = load i32, i32* %l_encoding, align 4
  %2 = load %struct.layer*, %struct.layer** @flayer, align 8
  %l_encoding3 = getelementptr inbounds %struct.layer, %struct.layer* %2, i32 0, i32 5
  store i32 %1, i32* %l_encoding3, align 4
  %3 = load %struct.layer*, %struct.layer** @flayer, align 8
  %l_mode = getelementptr inbounds %struct.layer, %struct.layer* %3, i32 0, i32 11
  store i32 1, i32* %l_mode, align 4
  %4 = load %struct.layer*, %struct.layer** @flayer, align 8
  %l_data = getelementptr inbounds %struct.layer, %struct.layer* %4, i32 0, i32 7
  %5 = load i8*, i8** %l_data, align 8
  %6 = bitcast i8* %5 to %struct.markdata*
  store %struct.markdata* %6, %struct.markdata** @markdata, align 8
  %7 = load %struct.display*, %struct.display** @display, align 8
  %d_user = getelementptr inbounds %struct.display, %struct.display* %7, i32 0, i32 1
  %8 = load %struct.acluser*, %struct.acluser** %d_user, align 8
  %9 = load %struct.markdata*, %struct.markdata** @markdata, align 8
  %md_user = getelementptr inbounds %struct.markdata, %struct.markdata* %9, i32 0, i32 1
  store %struct.acluser* %8, %struct.acluser** %md_user, align 8
  %10 = load %struct.win*, %struct.win** @fore, align 8
  %11 = load %struct.markdata*, %struct.markdata** @markdata, align 8
  %md_window = getelementptr inbounds %struct.markdata, %struct.markdata* %11, i32 0, i32 0
  store %struct.win* %10, %struct.win** %md_window, align 8
  %12 = load %struct.markdata*, %struct.markdata** @markdata, align 8
  %second = getelementptr inbounds %struct.markdata, %struct.markdata* %12, i32 0, i32 6
  store i32 0, i32* %second, align 4
  %13 = load %struct.markdata*, %struct.markdata** @markdata, align 8
  %rep_cnt = getelementptr inbounds %struct.markdata, %struct.markdata* %13, i32 0, i32 10
  store i32 0, i32* %rep_cnt, align 4
  %14 = load %struct.markdata*, %struct.markdata** @markdata, align 8
  %append_mode = getelementptr inbounds %struct.markdata, %struct.markdata* %14, i32 0, i32 11
  store i32 0, i32* %append_mode, align 4
  %15 = load %struct.markdata*, %struct.markdata** @markdata, align 8
  %write_buffer = getelementptr inbounds %struct.markdata, %struct.markdata* %15, i32 0, i32 12
  store i32 0, i32* %write_buffer, align 4
  %16 = load %struct.markdata*, %struct.markdata** @markdata, align 8
  %nonl = getelementptr inbounds %struct.markdata, %struct.markdata* %16, i32 0, i32 9
  store i32 0, i32* %nonl, align 4
  %17 = load %struct.markdata*, %struct.markdata** @markdata, align 8
  %left_mar = getelementptr inbounds %struct.markdata, %struct.markdata* %17, i32 0, i32 7
  store i32 0, i32* %left_mar, align 4
  %18 = load %struct.win*, %struct.win** @fore, align 8
  %w_layer4 = getelementptr inbounds %struct.win, %struct.win* %18, i32 0, i32 3
  %l_width = getelementptr inbounds %struct.layer, %struct.layer* %w_layer4, i32 0, i32 1
  %19 = load i32, i32* %l_width, align 4
  %sub = sub nsw i32 %19, 1
  %20 = load %struct.markdata*, %struct.markdata** @markdata, align 8
  %right_mar = getelementptr inbounds %struct.markdata, %struct.markdata* %20, i32 0, i32 8
  store i32 %sub, i32* %right_mar, align 4
  %21 = load %struct.win*, %struct.win** @fore, align 8
  %w_histheight = getelementptr inbounds %struct.win, %struct.win* %21, i32 0, i32 77
  %22 = load i32, i32* %w_histheight, align 4
  %23 = load %struct.markdata*, %struct.markdata** @markdata, align 8
  %hist_offset = getelementptr inbounds %struct.markdata, %struct.markdata* %23, i32 0, i32 13
  store i32 %22, i32* %hist_offset, align 4
  %24 = load %struct.win*, %struct.win** @fore, align 8
  %w_layer5 = getelementptr inbounds %struct.win, %struct.win* %24, i32 0, i32 3
  %l_x = getelementptr inbounds %struct.layer, %struct.layer* %w_layer5, i32 0, i32 3
  %25 = load i32, i32* %l_x, align 4
  store i32 %25, i32* %x, align 4
  %26 = load %struct.win*, %struct.win** @fore, align 8
  %w_layer6 = getelementptr inbounds %struct.win, %struct.win* %26, i32 0, i32 3
  %l_y = getelementptr inbounds %struct.layer, %struct.layer* %w_layer6, i32 0, i32 4
  %27 = load i32, i32* %l_y, align 4
  %28 = load %struct.markdata*, %struct.markdata** @markdata, align 8
  %hist_offset7 = getelementptr inbounds %struct.markdata, %struct.markdata* %28, i32 0, i32 13
  %29 = load i32, i32* %hist_offset7, align 4
  %add = add nsw i32 %27, %29
  store i32 %add, i32* %y, align 4
  %30 = load i32, i32* %x, align 4
  %31 = load %struct.win*, %struct.win** @fore, align 8
  %w_layer8 = getelementptr inbounds %struct.win, %struct.win* %31, i32 0, i32 3
  %l_width9 = getelementptr inbounds %struct.layer, %struct.layer* %w_layer8, i32 0, i32 1
  %32 = load i32, i32* %l_width9, align 4
  %cmp = icmp sge i32 %30, %32
  br i1 %cmp, label %if.then.10, label %if.end.14

if.then.10:                                       ; preds = %if.end
  %33 = load %struct.win*, %struct.win** @fore, align 8
  %w_layer11 = getelementptr inbounds %struct.win, %struct.win* %33, i32 0, i32 3
  %l_width12 = getelementptr inbounds %struct.layer, %struct.layer* %w_layer11, i32 0, i32 1
  %34 = load i32, i32* %l_width12, align 4
  %sub13 = sub nsw i32 %34, 1
  store i32 %sub13, i32* %x, align 4
  br label %if.end.14

if.end.14:                                        ; preds = %if.then.10, %if.end
  %35 = load %struct.layer*, %struct.layer** @flayer, align 8
  %36 = load i32, i32* %x, align 4
  %37 = load i32, i32* %y, align 4
  %38 = load %struct.markdata*, %struct.markdata** @markdata, align 8
  %hist_offset15 = getelementptr inbounds %struct.markdata, %struct.markdata* %38, i32 0, i32 13
  %39 = load i32, i32* %hist_offset15, align 4
  %sub16 = sub nsw i32 %37, %39
  call void @LGotoPos(%struct.layer* %35, i32 %36, i32 %sub16)
  %40 = load i32, i32* %x, align 4
  %add17 = add nsw i32 %40, 1
  %41 = load i32, i32* %y, align 4
  %add18 = add nsw i32 %41, 1
  %42 = load %struct.markdata*, %struct.markdata** @markdata, align 8
  %hist_offset19 = getelementptr inbounds %struct.markdata, %struct.markdata* %42, i32 0, i32 13
  %43 = load i32, i32* %hist_offset19, align 4
  %sub20 = sub nsw i32 %add18, %43
  %44 = load %struct.win*, %struct.win** @fore, align 8
  %w_histheight21 = getelementptr inbounds %struct.win, %struct.win* %44, i32 0, i32 77
  %45 = load i32, i32* %w_histheight21, align 4
  %46 = load %struct.win*, %struct.win** @fore, align 8
  %w_layer22 = getelementptr inbounds %struct.win, %struct.win* %46, i32 0, i32 3
  %l_width23 = getelementptr inbounds %struct.layer, %struct.layer* %w_layer22, i32 0, i32 1
  %47 = load i32, i32* %l_width23, align 4
  %48 = load %struct.win*, %struct.win** @fore, align 8
  %w_layer24 = getelementptr inbounds %struct.win, %struct.win* %48, i32 0, i32 3
  %l_height = getelementptr inbounds %struct.layer, %struct.layer* %w_layer24, i32 0, i32 2
  %49 = load i32, i32* %l_height, align 4
  call void (i32, i8*, ...) @LMsg(i32 0, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.1, i32 0, i32 0), i32 %add17, i32 %sub20, i32 %45, i32 %47, i32 %49)
  %50 = load i32, i32* %x, align 4
  %51 = load %struct.markdata*, %struct.markdata** @markdata, align 8
  %x1 = getelementptr inbounds %struct.markdata, %struct.markdata* %51, i32 0, i32 4
  store i32 %50, i32* %x1, align 4
  %52 = load %struct.markdata*, %struct.markdata** @markdata, align 8
  %cx = getelementptr inbounds %struct.markdata, %struct.markdata* %52, i32 0, i32 2
  store i32 %50, i32* %cx, align 4
  %53 = load i32, i32* %y, align 4
  %54 = load %struct.markdata*, %struct.markdata** @markdata, align 8
  %y1 = getelementptr inbounds %struct.markdata, %struct.markdata* %54, i32 0, i32 5
  store i32 %53, i32* %y1, align 4
  %55 = load %struct.markdata*, %struct.markdata** @markdata, align 8
  %cy = getelementptr inbounds %struct.markdata, %struct.markdata* %55, i32 0, i32 3
  store i32 %53, i32* %cy, align 4
  %56 = load i32, i32* %x, align 4
  %57 = load %struct.layer*, %struct.layer** @flayer, align 8
  %l_x25 = getelementptr inbounds %struct.layer, %struct.layer* %57, i32 0, i32 3
  store i32 %56, i32* %l_x25, align 4
  %58 = load i32, i32* %y, align 4
  %59 = load %struct.markdata*, %struct.markdata** @markdata, align 8
  %hist_offset26 = getelementptr inbounds %struct.markdata, %struct.markdata* %59, i32 0, i32 13
  %60 = load i32, i32* %hist_offset26, align 4
  %sub27 = sub nsw i32 %58, %60
  %61 = load %struct.layer*, %struct.layer** @flayer, align 8
  %l_y28 = getelementptr inbounds %struct.layer, %struct.layer* %61, i32 0, i32 4
  store i32 %sub27, i32* %l_y28, align 4
  br label %return

return:                                           ; preds = %if.end.14, %if.then
  ret void
}

declare i32 @InitOverlayPage(i32, %struct.LayFuncs*, i32) #1

declare void @LGotoPos(%struct.layer*, i32, i32) #1

; Function Attrs: nounwind uwtable
define void @revto(i32 %tx, i32 %ty) #0 {
entry:
  %tx.addr = alloca i32, align 4
  %ty.addr = alloca i32, align 4
  store i32 %tx, i32* %tx.addr, align 4
  store i32 %ty, i32* %ty.addr, align 4
  %0 = load i32, i32* %tx.addr, align 4
  %1 = load i32, i32* %ty.addr, align 4
  call void @revto_line(i32 %0, i32 %1, i32 -1)
  ret void
}

; Function Attrs: nounwind uwtable
define void @revto_line(i32 %tx, i32 %ty, i32 %line) #0 {
entry:
  %tx.addr = alloca i32, align 4
  %ty.addr = alloca i32, align 4
  %line.addr = alloca i32, align 4
  %fx = alloca i32, align 4
  %fy = alloca i32, align 4
  %x = alloca i32, align 4
  %y = alloca i32, align 4
  %t = alloca i32, align 4
  %revst = alloca i32, align 4
  %reven = alloca i32, align 4
  %qq = alloca i32, align 4
  %ff = alloca i32, align 4
  %tt = alloca i32, align 4
  %st = alloca i32, align 4
  %en = alloca i32, align 4
  %ce = alloca i32, align 4
  %ystart = alloca i32, align 4
  %yend = alloca i32, align 4
  %i = alloca i32, align 4
  %ry = alloca i32, align 4
  %wi = alloca i8*, align 8
  %ml = alloca %struct.mline*, align 8
  %mc = alloca %struct.mchar, align 1
  store i32 %tx, i32* %tx.addr, align 4
  store i32 %ty, i32* %ty.addr, align 4
  store i32 %line, i32* %line.addr, align 4
  store i32 0, i32* %ce, align 4
  store i32 0, i32* %ystart, align 4
  %0 = load %struct.win*, %struct.win** @fore, align 8
  %w_layer = getelementptr inbounds %struct.win, %struct.win* %0, i32 0, i32 3
  %l_height = getelementptr inbounds %struct.layer, %struct.layer* %w_layer, i32 0, i32 2
  %1 = load i32, i32* %l_height, align 4
  %sub = sub nsw i32 %1, 1
  store i32 %sub, i32* %yend, align 4
  %2 = load i32, i32* %tx.addr, align 4
  %cmp = icmp slt i32 %2, 0
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  store i32 0, i32* %tx.addr, align 4
  br label %if.end.8

if.else:                                          ; preds = %entry
  %3 = load i32, i32* %tx.addr, align 4
  %4 = load %struct.win*, %struct.win** @fore, align 8
  %w_layer1 = getelementptr inbounds %struct.win, %struct.win* %4, i32 0, i32 3
  %l_width = getelementptr inbounds %struct.layer, %struct.layer* %w_layer1, i32 0, i32 1
  %5 = load i32, i32* %l_width, align 4
  %sub2 = sub nsw i32 %5, 1
  %cmp3 = icmp sgt i32 %3, %sub2
  br i1 %cmp3, label %if.then.4, label %if.end

if.then.4:                                        ; preds = %if.else
  %6 = load %struct.win*, %struct.win** @fore, align 8
  %w_layer5 = getelementptr inbounds %struct.win, %struct.win* %6, i32 0, i32 3
  %l_width6 = getelementptr inbounds %struct.layer, %struct.layer* %w_layer5, i32 0, i32 1
  %7 = load i32, i32* %l_width6, align 4
  %sub7 = sub nsw i32 %7, 1
  store i32 %sub7, i32* %tx.addr, align 4
  br label %if.end

if.end:                                           ; preds = %if.then.4, %if.else
  br label %if.end.8

if.end.8:                                         ; preds = %if.end, %if.then
  %8 = load i32, i32* %ty.addr, align 4
  %cmp9 = icmp slt i32 %8, 0
  br i1 %cmp9, label %if.then.10, label %if.else.11

if.then.10:                                       ; preds = %if.end.8
  store i32 0, i32* %ty.addr, align 4
  br label %if.end.23

if.else.11:                                       ; preds = %if.end.8
  %9 = load i32, i32* %ty.addr, align 4
  %10 = load %struct.win*, %struct.win** @fore, align 8
  %w_histheight = getelementptr inbounds %struct.win, %struct.win* %10, i32 0, i32 77
  %11 = load i32, i32* %w_histheight, align 4
  %12 = load %struct.win*, %struct.win** @fore, align 8
  %w_layer12 = getelementptr inbounds %struct.win, %struct.win* %12, i32 0, i32 3
  %l_height13 = getelementptr inbounds %struct.layer, %struct.layer* %w_layer12, i32 0, i32 2
  %13 = load i32, i32* %l_height13, align 4
  %add = add nsw i32 %11, %13
  %sub14 = sub nsw i32 %add, 1
  %cmp15 = icmp sgt i32 %9, %sub14
  br i1 %cmp15, label %if.then.16, label %if.end.22

if.then.16:                                       ; preds = %if.else.11
  %14 = load %struct.win*, %struct.win** @fore, align 8
  %w_histheight17 = getelementptr inbounds %struct.win, %struct.win* %14, i32 0, i32 77
  %15 = load i32, i32* %w_histheight17, align 4
  %16 = load %struct.win*, %struct.win** @fore, align 8
  %w_layer18 = getelementptr inbounds %struct.win, %struct.win* %16, i32 0, i32 3
  %l_height19 = getelementptr inbounds %struct.layer, %struct.layer* %w_layer18, i32 0, i32 2
  %17 = load i32, i32* %l_height19, align 4
  %add20 = add nsw i32 %15, %17
  %sub21 = sub nsw i32 %add20, 1
  store i32 %sub21, i32* %ty.addr, align 4
  br label %if.end.22

if.end.22:                                        ; preds = %if.then.16, %if.else.11
  br label %if.end.23

if.end.23:                                        ; preds = %if.end.22, %if.then.10
  %18 = load %struct.markdata*, %struct.markdata** @markdata, align 8
  %cx = getelementptr inbounds %struct.markdata, %struct.markdata* %18, i32 0, i32 2
  %19 = load i32, i32* %cx, align 4
  store i32 %19, i32* %fx, align 4
  %20 = load %struct.markdata*, %struct.markdata** @markdata, align 8
  %cy = getelementptr inbounds %struct.markdata, %struct.markdata* %20, i32 0, i32 3
  %21 = load i32, i32* %cy, align 4
  store i32 %21, i32* %fy, align 4
  %22 = load i32, i32* %ty.addr, align 4
  %23 = load %struct.win*, %struct.win** @fore, align 8
  %w_histheight24 = getelementptr inbounds %struct.win, %struct.win* %23, i32 0, i32 77
  %24 = load i32, i32* %w_histheight24, align 4
  %cmp25 = icmp slt i32 %22, %24
  br i1 %cmp25, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.end.23
  %25 = load %struct.win*, %struct.win** @fore, align 8
  %w_histidx = getelementptr inbounds %struct.win, %struct.win* %25, i32 0, i32 78
  %26 = load i32, i32* %w_histidx, align 4
  %27 = load i32, i32* %ty.addr, align 4
  %add26 = add nsw i32 %26, %27
  %28 = load %struct.win*, %struct.win** @fore, align 8
  %w_histheight27 = getelementptr inbounds %struct.win, %struct.win* %28, i32 0, i32 77
  %29 = load i32, i32* %w_histheight27, align 4
  %rem = srem i32 %add26, %29
  %idxprom = sext i32 %rem to i64
  %30 = load %struct.win*, %struct.win** @fore, align 8
  %w_hlines = getelementptr inbounds %struct.win, %struct.win* %30, i32 0, i32 79
  %31 = load %struct.mline*, %struct.mline** %w_hlines, align 8
  %arrayidx = getelementptr inbounds %struct.mline, %struct.mline* %31, i64 %idxprom
  br label %cond.end

cond.false:                                       ; preds = %if.end.23
  %32 = load i32, i32* %ty.addr, align 4
  %33 = load %struct.win*, %struct.win** @fore, align 8
  %w_histheight28 = getelementptr inbounds %struct.win, %struct.win* %33, i32 0, i32 77
  %34 = load i32, i32* %w_histheight28, align 4
  %sub29 = sub nsw i32 %32, %34
  %idxprom30 = sext i32 %sub29 to i64
  %35 = load %struct.win*, %struct.win** @fore, align 8
  %w_mlines = getelementptr inbounds %struct.win, %struct.win* %35, i32 0, i32 36
  %36 = load %struct.mline*, %struct.mline** %w_mlines, align 8
  %arrayidx31 = getelementptr inbounds %struct.mline, %struct.mline* %36, i64 %idxprom30
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi %struct.mline* [ %arrayidx, %cond.true ], [ %arrayidx31, %cond.false ]
  store %struct.mline* %cond, %struct.mline** %ml, align 8
  %37 = load i32, i32* %ty.addr, align 4
  %38 = load i32, i32* %fy, align 4
  %cmp32 = icmp eq i32 %37, %38
  br i1 %cmp32, label %land.lhs.true, label %if.end.61

land.lhs.true:                                    ; preds = %cond.end
  %39 = load i32, i32* %fx, align 4
  %add33 = add nsw i32 %39, 1
  %40 = load i32, i32* %tx.addr, align 4
  %cmp34 = icmp eq i32 %add33, %40
  br i1 %cmp34, label %land.lhs.true.35, label %if.end.61

land.lhs.true.35:                                 ; preds = %land.lhs.true
  %41 = load %struct.win*, %struct.win** @fore, align 8
  %w_layer36 = getelementptr inbounds %struct.win, %struct.win* %41, i32 0, i32 3
  %l_encoding = getelementptr inbounds %struct.layer, %struct.layer* %w_layer36, i32 0, i32 5
  %42 = load i32, i32* %l_encoding, align 4
  %cmp37 = icmp eq i32 %42, 8
  br i1 %cmp37, label %cond.true.38, label %cond.false.49

cond.true.38:                                     ; preds = %land.lhs.true.35
  %43 = load i32, i32* %tx.addr, align 4
  %idxprom39 = sext i32 %43 to i64
  %44 = load %struct.mline*, %struct.mline** %ml, align 8
  %font = getelementptr inbounds %struct.mline, %struct.mline* %44, i32 0, i32 2
  %45 = load i8*, i8** %font, align 8
  %arrayidx40 = getelementptr inbounds i8, i8* %45, i64 %idxprom39
  %46 = load i8, i8* %arrayidx40, align 1
  %conv = zext i8 %46 to i32
  %cmp41 = icmp eq i32 %conv, 255
  br i1 %cmp41, label %land.lhs.true.43, label %if.end.61

land.lhs.true.43:                                 ; preds = %cond.true.38
  %47 = load i32, i32* %tx.addr, align 4
  %idxprom44 = sext i32 %47 to i64
  %48 = load %struct.mline*, %struct.mline** %ml, align 8
  %image = getelementptr inbounds %struct.mline, %struct.mline* %48, i32 0, i32 0
  %49 = load i8*, i8** %image, align 8
  %arrayidx45 = getelementptr inbounds i8, i8* %49, i64 %idxprom44
  %50 = load i8, i8* %arrayidx45, align 1
  %conv46 = zext i8 %50 to i32
  %cmp47 = icmp eq i32 %conv46, 255
  br i1 %cmp47, label %land.lhs.true.56, label %if.end.61

cond.false.49:                                    ; preds = %land.lhs.true.35
  %51 = load i32, i32* %tx.addr, align 4
  %idxprom50 = sext i32 %51 to i64
  %52 = load %struct.mline*, %struct.mline** %ml, align 8
  %font51 = getelementptr inbounds %struct.mline, %struct.mline* %52, i32 0, i32 2
  %53 = load i8*, i8** %font51, align 8
  %arrayidx52 = getelementptr inbounds i8, i8* %53, i64 %idxprom50
  %54 = load i8, i8* %arrayidx52, align 1
  %conv53 = zext i8 %54 to i32
  %and = and i32 %conv53, 224
  %cmp54 = icmp eq i32 %and, 128
  br i1 %cmp54, label %land.lhs.true.56, label %if.end.61

land.lhs.true.56:                                 ; preds = %cond.false.49, %land.lhs.true.43
  %55 = load i32, i32* %tx.addr, align 4
  %56 = load %struct.display*, %struct.display** @display, align 8
  %d_width = getelementptr inbounds %struct.display, %struct.display* %56, i32 0, i32 16
  %57 = load i32, i32* %d_width, align 4
  %sub57 = sub nsw i32 %57, 1
  %cmp58 = icmp slt i32 %55, %sub57
  br i1 %cmp58, label %if.then.60, label %if.end.61

if.then.60:                                       ; preds = %land.lhs.true.56
  %58 = load i32, i32* %tx.addr, align 4
  %inc = add nsw i32 %58, 1
  store i32 %inc, i32* %tx.addr, align 4
  br label %if.end.61

if.end.61:                                        ; preds = %if.then.60, %land.lhs.true.56, %cond.false.49, %land.lhs.true.43, %cond.true.38, %land.lhs.true, %cond.end
  %59 = load i32, i32* %ty.addr, align 4
  %60 = load i32, i32* %fy, align 4
  %cmp62 = icmp eq i32 %59, %60
  br i1 %cmp62, label %land.lhs.true.64, label %if.end.97

land.lhs.true.64:                                 ; preds = %if.end.61
  %61 = load i32, i32* %fx, align 4
  %sub65 = sub nsw i32 %61, 1
  %62 = load i32, i32* %tx.addr, align 4
  %cmp66 = icmp eq i32 %sub65, %62
  br i1 %cmp66, label %land.lhs.true.68, label %if.end.97

land.lhs.true.68:                                 ; preds = %land.lhs.true.64
  %63 = load %struct.win*, %struct.win** @fore, align 8
  %w_layer69 = getelementptr inbounds %struct.win, %struct.win* %63, i32 0, i32 3
  %l_encoding70 = getelementptr inbounds %struct.layer, %struct.layer* %w_layer69, i32 0, i32 5
  %64 = load i32, i32* %l_encoding70, align 4
  %cmp71 = icmp eq i32 %64, 8
  br i1 %cmp71, label %cond.true.73, label %cond.false.87

cond.true.73:                                     ; preds = %land.lhs.true.68
  %65 = load i32, i32* %fx, align 4
  %idxprom74 = sext i32 %65 to i64
  %66 = load %struct.mline*, %struct.mline** %ml, align 8
  %font75 = getelementptr inbounds %struct.mline, %struct.mline* %66, i32 0, i32 2
  %67 = load i8*, i8** %font75, align 8
  %arrayidx76 = getelementptr inbounds i8, i8* %67, i64 %idxprom74
  %68 = load i8, i8* %arrayidx76, align 1
  %conv77 = zext i8 %68 to i32
  %cmp78 = icmp eq i32 %conv77, 255
  br i1 %cmp78, label %land.lhs.true.80, label %if.end.97

land.lhs.true.80:                                 ; preds = %cond.true.73
  %69 = load i32, i32* %fx, align 4
  %idxprom81 = sext i32 %69 to i64
  %70 = load %struct.mline*, %struct.mline** %ml, align 8
  %image82 = getelementptr inbounds %struct.mline, %struct.mline* %70, i32 0, i32 0
  %71 = load i8*, i8** %image82, align 8
  %arrayidx83 = getelementptr inbounds i8, i8* %71, i64 %idxprom81
  %72 = load i8, i8* %arrayidx83, align 1
  %conv84 = zext i8 %72 to i32
  %cmp85 = icmp eq i32 %conv84, 255
  br i1 %cmp85, label %land.lhs.true.95, label %if.end.97

cond.false.87:                                    ; preds = %land.lhs.true.68
  %73 = load i32, i32* %fx, align 4
  %idxprom88 = sext i32 %73 to i64
  %74 = load %struct.mline*, %struct.mline** %ml, align 8
  %font89 = getelementptr inbounds %struct.mline, %struct.mline* %74, i32 0, i32 2
  %75 = load i8*, i8** %font89, align 8
  %arrayidx90 = getelementptr inbounds i8, i8* %75, i64 %idxprom88
  %76 = load i8, i8* %arrayidx90, align 1
  %conv91 = zext i8 %76 to i32
  %and92 = and i32 %conv91, 224
  %cmp93 = icmp eq i32 %and92, 128
  br i1 %cmp93, label %land.lhs.true.95, label %if.end.97

land.lhs.true.95:                                 ; preds = %cond.false.87, %land.lhs.true.80
  %77 = load i32, i32* %tx.addr, align 4
  %tobool = icmp ne i32 %77, 0
  br i1 %tobool, label %if.then.96, label %if.end.97

if.then.96:                                       ; preds = %land.lhs.true.95
  %78 = load i32, i32* %tx.addr, align 4
  %dec = add nsw i32 %78, -1
  store i32 %dec, i32* %tx.addr, align 4
  br label %if.end.97

if.end.97:                                        ; preds = %if.then.96, %land.lhs.true.95, %cond.false.87, %land.lhs.true.80, %cond.true.73, %land.lhs.true.64, %if.end.61
  %79 = load i32, i32* %tx.addr, align 4
  %80 = load %struct.markdata*, %struct.markdata** @markdata, align 8
  %cx98 = getelementptr inbounds %struct.markdata, %struct.markdata* %80, i32 0, i32 2
  store i32 %79, i32* %cx98, align 4
  %81 = load i32, i32* %ty.addr, align 4
  %82 = load %struct.markdata*, %struct.markdata** @markdata, align 8
  %cy99 = getelementptr inbounds %struct.markdata, %struct.markdata* %82, i32 0, i32 3
  store i32 %81, i32* %cy99, align 4
  store i32 0, i32* %i, align 4
  %83 = load i32, i32* %line.addr, align 4
  %cmp100 = icmp sge i32 %83, 0
  br i1 %cmp100, label %land.lhs.true.102, label %if.else.110

land.lhs.true.102:                                ; preds = %if.end.97
  %84 = load i32, i32* %line.addr, align 4
  %85 = load %struct.win*, %struct.win** @fore, align 8
  %w_layer103 = getelementptr inbounds %struct.win, %struct.win* %85, i32 0, i32 3
  %l_height104 = getelementptr inbounds %struct.layer, %struct.layer* %w_layer103, i32 0, i32 2
  %86 = load i32, i32* %l_height104, align 4
  %cmp105 = icmp slt i32 %84, %86
  br i1 %cmp105, label %if.then.107, label %if.else.110

if.then.107:                                      ; preds = %land.lhs.true.102
  %87 = load i32, i32* %ty.addr, align 4
  %88 = load %struct.markdata*, %struct.markdata** @markdata, align 8
  %hist_offset = getelementptr inbounds %struct.markdata, %struct.markdata* %88, i32 0, i32 13
  %89 = load i32, i32* %hist_offset, align 4
  %sub108 = sub nsw i32 %87, %89
  %90 = load i32, i32* %line.addr, align 4
  %sub109 = sub nsw i32 %sub108, %90
  store i32 %sub109, i32* %i, align 4
  br label %if.end.134

if.else.110:                                      ; preds = %land.lhs.true.102, %if.end.97
  %91 = load i32, i32* %ty.addr, align 4
  %92 = load %struct.markdata*, %struct.markdata** @markdata, align 8
  %hist_offset111 = getelementptr inbounds %struct.markdata, %struct.markdata* %92, i32 0, i32 13
  %93 = load i32, i32* %hist_offset111, align 4
  %cmp112 = icmp slt i32 %91, %93
  br i1 %cmp112, label %if.then.114, label %if.else.117

if.then.114:                                      ; preds = %if.else.110
  %94 = load i32, i32* %ty.addr, align 4
  %95 = load %struct.markdata*, %struct.markdata** @markdata, align 8
  %hist_offset115 = getelementptr inbounds %struct.markdata, %struct.markdata* %95, i32 0, i32 13
  %96 = load i32, i32* %hist_offset115, align 4
  %sub116 = sub nsw i32 %94, %96
  store i32 %sub116, i32* %i, align 4
  br label %if.end.133

if.else.117:                                      ; preds = %if.else.110
  %97 = load i32, i32* %ty.addr, align 4
  %98 = load %struct.markdata*, %struct.markdata** @markdata, align 8
  %hist_offset118 = getelementptr inbounds %struct.markdata, %struct.markdata* %98, i32 0, i32 13
  %99 = load i32, i32* %hist_offset118, align 4
  %100 = load %struct.win*, %struct.win** @fore, align 8
  %w_layer119 = getelementptr inbounds %struct.win, %struct.win* %100, i32 0, i32 3
  %l_height120 = getelementptr inbounds %struct.layer, %struct.layer* %w_layer119, i32 0, i32 2
  %101 = load i32, i32* %l_height120, align 4
  %sub121 = sub nsw i32 %101, 1
  %add122 = add nsw i32 %99, %sub121
  %cmp123 = icmp sgt i32 %97, %add122
  br i1 %cmp123, label %if.then.125, label %if.end.132

if.then.125:                                      ; preds = %if.else.117
  %102 = load i32, i32* %ty.addr, align 4
  %103 = load %struct.markdata*, %struct.markdata** @markdata, align 8
  %hist_offset126 = getelementptr inbounds %struct.markdata, %struct.markdata* %103, i32 0, i32 13
  %104 = load i32, i32* %hist_offset126, align 4
  %sub127 = sub nsw i32 %102, %104
  %105 = load %struct.win*, %struct.win** @fore, align 8
  %w_layer128 = getelementptr inbounds %struct.win, %struct.win* %105, i32 0, i32 3
  %l_height129 = getelementptr inbounds %struct.layer, %struct.layer* %w_layer128, i32 0, i32 2
  %106 = load i32, i32* %l_height129, align 4
  %sub130 = sub nsw i32 %106, 1
  %sub131 = sub nsw i32 %sub127, %sub130
  store i32 %sub131, i32* %i, align 4
  br label %if.end.132

if.end.132:                                       ; preds = %if.then.125, %if.else.117
  br label %if.end.133

if.end.133:                                       ; preds = %if.end.132, %if.then.114
  br label %if.end.134

if.end.134:                                       ; preds = %if.end.133, %if.then.107
  %107 = load i32, i32* %i, align 4
  %cmp135 = icmp sgt i32 %107, 0
  br i1 %cmp135, label %if.then.137, label %if.else.139

if.then.137:                                      ; preds = %if.end.134
  %108 = load i32, i32* %i, align 4
  %call = call i32 @MarkScrollUpDisplay(i32 %108)
  %109 = load i32, i32* %yend, align 4
  %sub138 = sub nsw i32 %109, %call
  store i32 %sub138, i32* %yend, align 4
  br label %if.end.147

if.else.139:                                      ; preds = %if.end.134
  %110 = load i32, i32* %i, align 4
  %cmp140 = icmp slt i32 %110, 0
  br i1 %cmp140, label %if.then.142, label %if.end.146

if.then.142:                                      ; preds = %if.else.139
  %111 = load i32, i32* %i, align 4
  %sub143 = sub nsw i32 0, %111
  %call144 = call i32 @MarkScrollDownDisplay(i32 %sub143)
  %112 = load i32, i32* %ystart, align 4
  %add145 = add nsw i32 %112, %call144
  store i32 %add145, i32* %ystart, align 4
  br label %if.end.146

if.end.146:                                       ; preds = %if.then.142, %if.else.139
  br label %if.end.147

if.end.147:                                       ; preds = %if.end.146, %if.then.137
  %113 = load %struct.markdata*, %struct.markdata** @markdata, align 8
  %second = getelementptr inbounds %struct.markdata, %struct.markdata* %113, i32 0, i32 6
  %114 = load i32, i32* %second, align 4
  %cmp148 = icmp eq i32 %114, 0
  br i1 %cmp148, label %if.then.150, label %if.end.155

if.then.150:                                      ; preds = %if.end.147
  %115 = load i32, i32* %tx.addr, align 4
  %116 = load %struct.layer*, %struct.layer** @flayer, align 8
  %l_x = getelementptr inbounds %struct.layer, %struct.layer* %116, i32 0, i32 3
  store i32 %115, i32* %l_x, align 4
  %117 = load i32, i32* %ty.addr, align 4
  %118 = load %struct.markdata*, %struct.markdata** @markdata, align 8
  %hist_offset151 = getelementptr inbounds %struct.markdata, %struct.markdata* %118, i32 0, i32 13
  %119 = load i32, i32* %hist_offset151, align 4
  %sub152 = sub nsw i32 %117, %119
  %120 = load %struct.layer*, %struct.layer** @flayer, align 8
  %l_y = getelementptr inbounds %struct.layer, %struct.layer* %120, i32 0, i32 4
  store i32 %sub152, i32* %l_y, align 4
  %121 = load %struct.layer*, %struct.layer** @flayer, align 8
  %122 = load i32, i32* %tx.addr, align 4
  %123 = load i32, i32* %ty.addr, align 4
  %124 = load %struct.markdata*, %struct.markdata** @markdata, align 8
  %hist_offset153 = getelementptr inbounds %struct.markdata, %struct.markdata* %124, i32 0, i32 13
  %125 = load i32, i32* %hist_offset153, align 4
  %sub154 = sub nsw i32 %123, %125
  call void @LGotoPos(%struct.layer* %121, i32 %122, i32 %sub154)
  br label %return

if.end.155:                                       ; preds = %if.end.147
  %126 = load %struct.markdata*, %struct.markdata** @markdata, align 8
  %x1 = getelementptr inbounds %struct.markdata, %struct.markdata* %126, i32 0, i32 4
  %127 = load i32, i32* %x1, align 4
  %128 = load %struct.markdata*, %struct.markdata** @markdata, align 8
  %y1 = getelementptr inbounds %struct.markdata, %struct.markdata* %128, i32 0, i32 5
  %129 = load i32, i32* %y1, align 4
  %130 = load %struct.win*, %struct.win** @fore, align 8
  %w_layer156 = getelementptr inbounds %struct.win, %struct.win* %130, i32 0, i32 3
  %l_width157 = getelementptr inbounds %struct.layer, %struct.layer* %w_layer156, i32 0, i32 1
  %131 = load i32, i32* %l_width157, align 4
  %mul = mul nsw i32 %129, %131
  %add158 = add nsw i32 %127, %mul
  store i32 %add158, i32* %qq, align 4
  %132 = load i32, i32* %fx, align 4
  %133 = load i32, i32* %fy, align 4
  %134 = load %struct.win*, %struct.win** @fore, align 8
  %w_layer159 = getelementptr inbounds %struct.win, %struct.win* %134, i32 0, i32 3
  %l_width160 = getelementptr inbounds %struct.layer, %struct.layer* %w_layer159, i32 0, i32 1
  %135 = load i32, i32* %l_width160, align 4
  %mul161 = mul nsw i32 %133, %135
  %add162 = add nsw i32 %132, %mul161
  store i32 %add162, i32* %ff, align 4
  %136 = load i32, i32* %tx.addr, align 4
  %137 = load i32, i32* %ty.addr, align 4
  %138 = load %struct.win*, %struct.win** @fore, align 8
  %w_layer163 = getelementptr inbounds %struct.win, %struct.win* %138, i32 0, i32 3
  %l_width164 = getelementptr inbounds %struct.layer, %struct.layer* %w_layer163, i32 0, i32 1
  %139 = load i32, i32* %l_width164, align 4
  %mul165 = mul nsw i32 %137, %139
  %add166 = add nsw i32 %136, %mul165
  store i32 %add166, i32* %tt, align 4
  %140 = load i32, i32* %ff, align 4
  %141 = load i32, i32* %tt, align 4
  %cmp167 = icmp sgt i32 %140, %141
  br i1 %cmp167, label %if.then.169, label %if.else.170

if.then.169:                                      ; preds = %if.end.155
  %142 = load i32, i32* %tt, align 4
  store i32 %142, i32* %st, align 4
  %143 = load i32, i32* %ff, align 4
  store i32 %143, i32* %en, align 4
  %144 = load i32, i32* %tx.addr, align 4
  store i32 %144, i32* %x, align 4
  %145 = load i32, i32* %ty.addr, align 4
  store i32 %145, i32* %y, align 4
  br label %if.end.171

if.else.170:                                      ; preds = %if.end.155
  %146 = load i32, i32* %ff, align 4
  store i32 %146, i32* %st, align 4
  %147 = load i32, i32* %tt, align 4
  store i32 %147, i32* %en, align 4
  %148 = load i32, i32* %fx, align 4
  store i32 %148, i32* %x, align 4
  %149 = load i32, i32* %fy, align 4
  store i32 %149, i32* %y, align 4
  br label %if.end.171

if.end.171:                                       ; preds = %if.else.170, %if.then.169
  %150 = load i32, i32* %st, align 4
  %151 = load i32, i32* %qq, align 4
  %cmp172 = icmp sgt i32 %150, %151
  br i1 %cmp172, label %if.then.174, label %if.end.177

if.then.174:                                      ; preds = %if.end.171
  %152 = load i32, i32* %st, align 4
  %inc175 = add nsw i32 %152, 1
  store i32 %inc175, i32* %st, align 4
  %153 = load i32, i32* %x, align 4
  %inc176 = add nsw i32 %153, 1
  store i32 %inc176, i32* %x, align 4
  br label %if.end.177

if.end.177:                                       ; preds = %if.then.174, %if.end.171
  %154 = load i32, i32* %en, align 4
  %155 = load i32, i32* %qq, align 4
  %cmp178 = icmp slt i32 %154, %155
  br i1 %cmp178, label %if.then.180, label %if.end.182

if.then.180:                                      ; preds = %if.end.177
  %156 = load i32, i32* %en, align 4
  %dec181 = add nsw i32 %156, -1
  store i32 %dec181, i32* %en, align 4
  br label %if.end.182

if.end.182:                                       ; preds = %if.then.180, %if.end.177
  %157 = load i32, i32* %tt, align 4
  %158 = load i32, i32* %qq, align 4
  %cmp183 = icmp sgt i32 %157, %158
  br i1 %cmp183, label %if.then.185, label %if.else.186

if.then.185:                                      ; preds = %if.end.182
  %159 = load i32, i32* %qq, align 4
  store i32 %159, i32* %revst, align 4
  %160 = load i32, i32* %tt, align 4
  store i32 %160, i32* %reven, align 4
  br label %if.end.187

if.else.186:                                      ; preds = %if.end.182
  %161 = load i32, i32* %tt, align 4
  store i32 %161, i32* %revst, align 4
  %162 = load i32, i32* %qq, align 4
  store i32 %162, i32* %reven, align 4
  br label %if.end.187

if.end.187:                                       ; preds = %if.else.186, %if.then.185
  %163 = load i32, i32* %y, align 4
  %164 = load %struct.markdata*, %struct.markdata** @markdata, align 8
  %hist_offset188 = getelementptr inbounds %struct.markdata, %struct.markdata* %164, i32 0, i32 13
  %165 = load i32, i32* %hist_offset188, align 4
  %sub189 = sub nsw i32 %163, %165
  store i32 %sub189, i32* %ry, align 4
  %166 = load i32, i32* %ry, align 4
  %167 = load i32, i32* %ystart, align 4
  %cmp190 = icmp slt i32 %166, %167
  br i1 %cmp190, label %if.then.192, label %if.end.198

if.then.192:                                      ; preds = %if.end.187
  %168 = load i32, i32* %ystart, align 4
  %169 = load i32, i32* %ry, align 4
  %sub193 = sub nsw i32 %168, %169
  %170 = load i32, i32* %y, align 4
  %add194 = add nsw i32 %170, %sub193
  store i32 %add194, i32* %y, align 4
  store i32 0, i32* %x, align 4
  %171 = load i32, i32* %y, align 4
  %172 = load %struct.win*, %struct.win** @fore, align 8
  %w_layer195 = getelementptr inbounds %struct.win, %struct.win* %172, i32 0, i32 3
  %l_width196 = getelementptr inbounds %struct.layer, %struct.layer* %w_layer195, i32 0, i32 1
  %173 = load i32, i32* %l_width196, align 4
  %mul197 = mul nsw i32 %171, %173
  store i32 %mul197, i32* %st, align 4
  %174 = load i32, i32* %ystart, align 4
  store i32 %174, i32* %ry, align 4
  br label %if.end.198

if.end.198:                                       ; preds = %if.then.192, %if.end.187
  %175 = load i32, i32* %y, align 4
  %176 = load %struct.win*, %struct.win** @fore, align 8
  %w_histheight199 = getelementptr inbounds %struct.win, %struct.win* %176, i32 0, i32 77
  %177 = load i32, i32* %w_histheight199, align 4
  %cmp200 = icmp slt i32 %175, %177
  br i1 %cmp200, label %cond.true.202, label %cond.false.210

cond.true.202:                                    ; preds = %if.end.198
  %178 = load %struct.win*, %struct.win** @fore, align 8
  %w_histidx203 = getelementptr inbounds %struct.win, %struct.win* %178, i32 0, i32 78
  %179 = load i32, i32* %w_histidx203, align 4
  %180 = load i32, i32* %y, align 4
  %add204 = add nsw i32 %179, %180
  %181 = load %struct.win*, %struct.win** @fore, align 8
  %w_histheight205 = getelementptr inbounds %struct.win, %struct.win* %181, i32 0, i32 77
  %182 = load i32, i32* %w_histheight205, align 4
  %rem206 = srem i32 %add204, %182
  %idxprom207 = sext i32 %rem206 to i64
  %183 = load %struct.win*, %struct.win** @fore, align 8
  %w_hlines208 = getelementptr inbounds %struct.win, %struct.win* %183, i32 0, i32 79
  %184 = load %struct.mline*, %struct.mline** %w_hlines208, align 8
  %arrayidx209 = getelementptr inbounds %struct.mline, %struct.mline* %184, i64 %idxprom207
  br label %cond.end.216

cond.false.210:                                   ; preds = %if.end.198
  %185 = load i32, i32* %y, align 4
  %186 = load %struct.win*, %struct.win** @fore, align 8
  %w_histheight211 = getelementptr inbounds %struct.win, %struct.win* %186, i32 0, i32 77
  %187 = load i32, i32* %w_histheight211, align 4
  %sub212 = sub nsw i32 %185, %187
  %idxprom213 = sext i32 %sub212 to i64
  %188 = load %struct.win*, %struct.win** @fore, align 8
  %w_mlines214 = getelementptr inbounds %struct.win, %struct.win* %188, i32 0, i32 36
  %189 = load %struct.mline*, %struct.mline** %w_mlines214, align 8
  %arrayidx215 = getelementptr inbounds %struct.mline, %struct.mline* %189, i64 %idxprom213
  br label %cond.end.216

cond.end.216:                                     ; preds = %cond.false.210, %cond.true.202
  %cond217 = phi %struct.mline* [ %arrayidx209, %cond.true.202 ], [ %arrayidx215, %cond.false.210 ]
  store %struct.mline* %cond217, %struct.mline** %ml, align 8
  %190 = load i32, i32* %st, align 4
  store i32 %190, i32* %t, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc.444, %cond.end.216
  %191 = load i32, i32* %t, align 4
  %192 = load i32, i32* %en, align 4
  %cmp218 = icmp sle i32 %191, %192
  br i1 %cmp218, label %for.body, label %for.end.447

for.body:                                         ; preds = %for.cond
  %193 = load i32, i32* %x, align 4
  %194 = load %struct.win*, %struct.win** @fore, align 8
  %w_layer220 = getelementptr inbounds %struct.win, %struct.win* %194, i32 0, i32 3
  %l_width221 = getelementptr inbounds %struct.layer, %struct.layer* %w_layer220, i32 0, i32 1
  %195 = load i32, i32* %l_width221, align 4
  %cmp222 = icmp sge i32 %193, %195
  br i1 %cmp222, label %if.then.224, label %if.end.246

if.then.224:                                      ; preds = %for.body
  store i32 0, i32* %x, align 4
  %196 = load i32, i32* %y, align 4
  %inc225 = add nsw i32 %196, 1
  store i32 %inc225, i32* %y, align 4
  %197 = load i32, i32* %ry, align 4
  %inc226 = add nsw i32 %197, 1
  store i32 %inc226, i32* %ry, align 4
  %198 = load i32, i32* %y, align 4
  %199 = load %struct.win*, %struct.win** @fore, align 8
  %w_histheight227 = getelementptr inbounds %struct.win, %struct.win* %199, i32 0, i32 77
  %200 = load i32, i32* %w_histheight227, align 4
  %cmp228 = icmp slt i32 %198, %200
  br i1 %cmp228, label %cond.true.230, label %cond.false.238

cond.true.230:                                    ; preds = %if.then.224
  %201 = load %struct.win*, %struct.win** @fore, align 8
  %w_histidx231 = getelementptr inbounds %struct.win, %struct.win* %201, i32 0, i32 78
  %202 = load i32, i32* %w_histidx231, align 4
  %203 = load i32, i32* %y, align 4
  %add232 = add nsw i32 %202, %203
  %204 = load %struct.win*, %struct.win** @fore, align 8
  %w_histheight233 = getelementptr inbounds %struct.win, %struct.win* %204, i32 0, i32 77
  %205 = load i32, i32* %w_histheight233, align 4
  %rem234 = srem i32 %add232, %205
  %idxprom235 = sext i32 %rem234 to i64
  %206 = load %struct.win*, %struct.win** @fore, align 8
  %w_hlines236 = getelementptr inbounds %struct.win, %struct.win* %206, i32 0, i32 79
  %207 = load %struct.mline*, %struct.mline** %w_hlines236, align 8
  %arrayidx237 = getelementptr inbounds %struct.mline, %struct.mline* %207, i64 %idxprom235
  br label %cond.end.244

cond.false.238:                                   ; preds = %if.then.224
  %208 = load i32, i32* %y, align 4
  %209 = load %struct.win*, %struct.win** @fore, align 8
  %w_histheight239 = getelementptr inbounds %struct.win, %struct.win* %209, i32 0, i32 77
  %210 = load i32, i32* %w_histheight239, align 4
  %sub240 = sub nsw i32 %208, %210
  %idxprom241 = sext i32 %sub240 to i64
  %211 = load %struct.win*, %struct.win** @fore, align 8
  %w_mlines242 = getelementptr inbounds %struct.win, %struct.win* %211, i32 0, i32 36
  %212 = load %struct.mline*, %struct.mline** %w_mlines242, align 8
  %arrayidx243 = getelementptr inbounds %struct.mline, %struct.mline* %212, i64 %idxprom241
  br label %cond.end.244

cond.end.244:                                     ; preds = %cond.false.238, %cond.true.230
  %cond245 = phi %struct.mline* [ %arrayidx237, %cond.true.230 ], [ %arrayidx243, %cond.false.238 ]
  store %struct.mline* %cond245, %struct.mline** %ml, align 8
  br label %if.end.246

if.end.246:                                       ; preds = %cond.end.244, %for.body
  %213 = load i32, i32* %ry, align 4
  %214 = load i32, i32* %yend, align 4
  %cmp247 = icmp sgt i32 %213, %214
  br i1 %cmp247, label %if.then.249, label %if.end.250

if.then.249:                                      ; preds = %if.end.246
  br label %for.end.447

if.end.250:                                       ; preds = %if.end.246
  %215 = load i32, i32* %t, align 4
  %216 = load i32, i32* %st, align 4
  %cmp251 = icmp eq i32 %215, %216
  br i1 %cmp251, label %if.then.255, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.end.250
  %217 = load i32, i32* %x, align 4
  %cmp253 = icmp eq i32 %217, 0
  br i1 %cmp253, label %if.then.255, label %if.end.271

if.then.255:                                      ; preds = %lor.lhs.false, %if.end.250
  %218 = load %struct.mline*, %struct.mline** %ml, align 8
  %image256 = getelementptr inbounds %struct.mline, %struct.mline* %218, i32 0, i32 0
  %219 = load i8*, i8** %image256, align 8
  %220 = load %struct.win*, %struct.win** @fore, align 8
  %w_layer257 = getelementptr inbounds %struct.win, %struct.win* %220, i32 0, i32 3
  %l_width258 = getelementptr inbounds %struct.layer, %struct.layer* %w_layer257, i32 0, i32 1
  %221 = load i32, i32* %l_width258, align 4
  %idx.ext = sext i32 %221 to i64
  %add.ptr = getelementptr inbounds i8, i8* %219, i64 %idx.ext
  store i8* %add.ptr, i8** %wi, align 8
  %222 = load %struct.win*, %struct.win** @fore, align 8
  %w_layer259 = getelementptr inbounds %struct.win, %struct.win* %222, i32 0, i32 3
  %l_width260 = getelementptr inbounds %struct.layer, %struct.layer* %w_layer259, i32 0, i32 1
  %223 = load i32, i32* %l_width260, align 4
  store i32 %223, i32* %ce, align 4
  br label %for.cond.261

for.cond.261:                                     ; preds = %for.inc, %if.then.255
  %224 = load i32, i32* %ce, align 4
  %cmp262 = icmp sge i32 %224, 0
  br i1 %cmp262, label %for.body.264, label %for.end

for.body.264:                                     ; preds = %for.cond.261
  %225 = load i8*, i8** %wi, align 8
  %226 = load i8, i8* %225, align 1
  %conv265 = zext i8 %226 to i32
  %cmp266 = icmp ne i32 %conv265, 32
  br i1 %cmp266, label %if.then.268, label %if.end.269

if.then.268:                                      ; preds = %for.body.264
  br label %for.end

if.end.269:                                       ; preds = %for.body.264
  br label %for.inc

for.inc:                                          ; preds = %if.end.269
  %227 = load i32, i32* %ce, align 4
  %dec270 = add nsw i32 %227, -1
  store i32 %dec270, i32* %ce, align 4
  %228 = load i8*, i8** %wi, align 8
  %incdec.ptr = getelementptr inbounds i8, i8* %228, i32 -1
  store i8* %incdec.ptr, i8** %wi, align 8
  br label %for.cond.261

for.end:                                          ; preds = %if.then.268, %for.cond.261
  br label %if.end.271

if.end.271:                                       ; preds = %for.end, %lor.lhs.false
  %229 = load i32, i32* %x, align 4
  %230 = load i32, i32* %ce, align 4
  %cmp272 = icmp sle i32 %229, %230
  br i1 %cmp272, label %land.lhs.true.274, label %if.end.443

land.lhs.true.274:                                ; preds = %if.end.271
  %231 = load i32, i32* %x, align 4
  %232 = load %struct.markdata*, %struct.markdata** @markdata, align 8
  %left_mar = getelementptr inbounds %struct.markdata, %struct.markdata* %232, i32 0, i32 7
  %233 = load i32, i32* %left_mar, align 4
  %cmp275 = icmp sge i32 %231, %233
  br i1 %cmp275, label %land.lhs.true.277, label %if.end.443

land.lhs.true.277:                                ; preds = %land.lhs.true.274
  %234 = load i32, i32* %x, align 4
  %235 = load %struct.markdata*, %struct.markdata** @markdata, align 8
  %right_mar = getelementptr inbounds %struct.markdata, %struct.markdata* %235, i32 0, i32 8
  %236 = load i32, i32* %right_mar, align 4
  %cmp278 = icmp sle i32 %234, %236
  br i1 %cmp278, label %if.then.280, label %if.end.443

if.then.280:                                      ; preds = %land.lhs.true.277
  %237 = load %struct.win*, %struct.win** @fore, align 8
  %w_layer281 = getelementptr inbounds %struct.win, %struct.win* %237, i32 0, i32 3
  %l_encoding282 = getelementptr inbounds %struct.layer, %struct.layer* %w_layer281, i32 0, i32 5
  %238 = load i32, i32* %l_encoding282, align 4
  %cmp283 = icmp eq i32 %238, 8
  br i1 %cmp283, label %cond.true.285, label %cond.false.299

cond.true.285:                                    ; preds = %if.then.280
  %239 = load i32, i32* %x, align 4
  %idxprom286 = sext i32 %239 to i64
  %240 = load %struct.mline*, %struct.mline** %ml, align 8
  %font287 = getelementptr inbounds %struct.mline, %struct.mline* %240, i32 0, i32 2
  %241 = load i8*, i8** %font287, align 8
  %arrayidx288 = getelementptr inbounds i8, i8* %241, i64 %idxprom286
  %242 = load i8, i8* %arrayidx288, align 1
  %conv289 = zext i8 %242 to i32
  %cmp290 = icmp eq i32 %conv289, 255
  br i1 %cmp290, label %land.lhs.true.292, label %if.end.315

land.lhs.true.292:                                ; preds = %cond.true.285
  %243 = load i32, i32* %x, align 4
  %idxprom293 = sext i32 %243 to i64
  %244 = load %struct.mline*, %struct.mline** %ml, align 8
  %image294 = getelementptr inbounds %struct.mline, %struct.mline* %244, i32 0, i32 0
  %245 = load i8*, i8** %image294, align 8
  %arrayidx295 = getelementptr inbounds i8, i8* %245, i64 %idxprom293
  %246 = load i8, i8* %arrayidx295, align 1
  %conv296 = zext i8 %246 to i32
  %cmp297 = icmp eq i32 %conv296, 255
  br i1 %cmp297, label %if.then.307, label %if.end.315

cond.false.299:                                   ; preds = %if.then.280
  %247 = load i32, i32* %x, align 4
  %idxprom300 = sext i32 %247 to i64
  %248 = load %struct.mline*, %struct.mline** %ml, align 8
  %font301 = getelementptr inbounds %struct.mline, %struct.mline* %248, i32 0, i32 2
  %249 = load i8*, i8** %font301, align 8
  %arrayidx302 = getelementptr inbounds i8, i8* %249, i64 %idxprom300
  %250 = load i8, i8* %arrayidx302, align 1
  %conv303 = zext i8 %250 to i32
  %and304 = and i32 %conv303, 224
  %cmp305 = icmp eq i32 %and304, 128
  br i1 %cmp305, label %if.then.307, label %if.end.315

if.then.307:                                      ; preds = %cond.false.299, %land.lhs.true.292
  %251 = load i32, i32* %t, align 4
  %252 = load i32, i32* %revst, align 4
  %cmp308 = icmp eq i32 %251, %252
  br i1 %cmp308, label %if.then.310, label %if.end.312

if.then.310:                                      ; preds = %if.then.307
  %253 = load i32, i32* %revst, align 4
  %dec311 = add nsw i32 %253, -1
  store i32 %dec311, i32* %revst, align 4
  br label %if.end.312

if.end.312:                                       ; preds = %if.then.310, %if.then.307
  %254 = load i32, i32* %t, align 4
  %dec313 = add nsw i32 %254, -1
  store i32 %dec313, i32* %t, align 4
  %255 = load i32, i32* %x, align 4
  %dec314 = add nsw i32 %255, -1
  store i32 %dec314, i32* %x, align 4
  br label %if.end.315

if.end.315:                                       ; preds = %if.end.312, %cond.false.299, %land.lhs.true.292, %cond.true.285
  %256 = load i32, i32* %t, align 4
  %257 = load i32, i32* %revst, align 4
  %cmp316 = icmp sge i32 %256, %257
  br i1 %cmp316, label %land.lhs.true.318, label %if.else.336

land.lhs.true.318:                                ; preds = %if.end.315
  %258 = load i32, i32* %t, align 4
  %259 = load i32, i32* %reven, align 4
  %cmp319 = icmp sle i32 %258, %259
  br i1 %cmp319, label %if.then.321, label %if.else.336

if.then.321:                                      ; preds = %land.lhs.true.318
  %260 = bitcast %struct.mchar* %mc to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %260, i8* getelementptr inbounds (%struct.mchar, %struct.mchar* @mchar_so, i32 0, i32 0), i64 6, i32 1, i1 false)
  %261 = load i32, i32* @pastefont, align 4
  %tobool322 = icmp ne i32 %261, 0
  br i1 %tobool322, label %if.then.323, label %if.end.331

if.then.323:                                      ; preds = %if.then.321
  %262 = load i32, i32* %x, align 4
  %idxprom324 = sext i32 %262 to i64
  %263 = load %struct.mline*, %struct.mline** %ml, align 8
  %font325 = getelementptr inbounds %struct.mline, %struct.mline* %263, i32 0, i32 2
  %264 = load i8*, i8** %font325, align 8
  %arrayidx326 = getelementptr inbounds i8, i8* %264, i64 %idxprom324
  %265 = load i8, i8* %arrayidx326, align 1
  %font327 = getelementptr inbounds %struct.mchar, %struct.mchar* %mc, i32 0, i32 2
  store i8 %265, i8* %font327, align 1
  %266 = load i32, i32* %x, align 4
  %idxprom328 = sext i32 %266 to i64
  %267 = load %struct.mline*, %struct.mline** %ml, align 8
  %fontx = getelementptr inbounds %struct.mline, %struct.mline* %267, i32 0, i32 3
  %268 = load i8*, i8** %fontx, align 8
  %arrayidx329 = getelementptr inbounds i8, i8* %268, i64 %idxprom328
  %269 = load i8, i8* %arrayidx329, align 1
  %fontx330 = getelementptr inbounds %struct.mchar, %struct.mchar* %mc, i32 0, i32 3
  store i8 %269, i8* %fontx330, align 1
  br label %if.end.331

if.end.331:                                       ; preds = %if.then.323, %if.then.321
  %270 = load i32, i32* %x, align 4
  %idxprom332 = sext i32 %270 to i64
  %271 = load %struct.mline*, %struct.mline** %ml, align 8
  %image333 = getelementptr inbounds %struct.mline, %struct.mline* %271, i32 0, i32 0
  %272 = load i8*, i8** %image333, align 8
  %arrayidx334 = getelementptr inbounds i8, i8* %272, i64 %idxprom332
  %273 = load i8, i8* %arrayidx334, align 1
  %image335 = getelementptr inbounds %struct.mchar, %struct.mchar* %mc, i32 0, i32 0
  store i8 %273, i8* %image335, align 1
  br label %if.end.355

if.else.336:                                      ; preds = %land.lhs.true.318, %if.end.315
  br label %do.body

do.body:                                          ; preds = %if.else.336
  %274 = load i32, i32* %x, align 4
  %idxprom337 = sext i32 %274 to i64
  %275 = load %struct.mline*, %struct.mline** %ml, align 8
  %image338 = getelementptr inbounds %struct.mline, %struct.mline* %275, i32 0, i32 0
  %276 = load i8*, i8** %image338, align 8
  %arrayidx339 = getelementptr inbounds i8, i8* %276, i64 %idxprom337
  %277 = load i8, i8* %arrayidx339, align 1
  %image340 = getelementptr inbounds %struct.mchar, %struct.mchar* %mc, i32 0, i32 0
  store i8 %277, i8* %image340, align 1
  %278 = load i32, i32* %x, align 4
  %idxprom341 = sext i32 %278 to i64
  %279 = load %struct.mline*, %struct.mline** %ml, align 8
  %attr = getelementptr inbounds %struct.mline, %struct.mline* %279, i32 0, i32 1
  %280 = load i8*, i8** %attr, align 8
  %arrayidx342 = getelementptr inbounds i8, i8* %280, i64 %idxprom341
  %281 = load i8, i8* %arrayidx342, align 1
  %attr343 = getelementptr inbounds %struct.mchar, %struct.mchar* %mc, i32 0, i32 1
  store i8 %281, i8* %attr343, align 1
  %282 = load i32, i32* %x, align 4
  %idxprom344 = sext i32 %282 to i64
  %283 = load %struct.mline*, %struct.mline** %ml, align 8
  %font345 = getelementptr inbounds %struct.mline, %struct.mline* %283, i32 0, i32 2
  %284 = load i8*, i8** %font345, align 8
  %arrayidx346 = getelementptr inbounds i8, i8* %284, i64 %idxprom344
  %285 = load i8, i8* %arrayidx346, align 1
  %font347 = getelementptr inbounds %struct.mchar, %struct.mchar* %mc, i32 0, i32 2
  store i8 %285, i8* %font347, align 1
  %286 = load i32, i32* %x, align 4
  %idxprom348 = sext i32 %286 to i64
  %287 = load %struct.mline*, %struct.mline** %ml, align 8
  %fontx349 = getelementptr inbounds %struct.mline, %struct.mline* %287, i32 0, i32 3
  %288 = load i8*, i8** %fontx349, align 8
  %arrayidx350 = getelementptr inbounds i8, i8* %288, i64 %idxprom348
  %289 = load i8, i8* %arrayidx350, align 1
  %fontx351 = getelementptr inbounds %struct.mchar, %struct.mchar* %mc, i32 0, i32 3
  store i8 %289, i8* %fontx351, align 1
  %290 = load i32, i32* %x, align 4
  %idxprom352 = sext i32 %290 to i64
  %291 = load %struct.mline*, %struct.mline** %ml, align 8
  %color = getelementptr inbounds %struct.mline, %struct.mline* %291, i32 0, i32 4
  %292 = load i8*, i8** %color, align 8
  %arrayidx353 = getelementptr inbounds i8, i8* %292, i64 %idxprom352
  %293 = load i8, i8* %arrayidx353, align 1
  %color354 = getelementptr inbounds %struct.mchar, %struct.mchar* %mc, i32 0, i32 4
  store i8 %293, i8* %color354, align 1
  %mbcs = getelementptr inbounds %struct.mchar, %struct.mchar* %mc, i32 0, i32 5
  store i8 0, i8* %mbcs, align 1
  br label %do.end

do.end:                                           ; preds = %do.body
  br label %if.end.355

if.end.355:                                       ; preds = %do.end, %if.end.331
  %294 = load %struct.win*, %struct.win** @fore, align 8
  %w_layer356 = getelementptr inbounds %struct.win, %struct.win* %294, i32 0, i32 3
  %l_encoding357 = getelementptr inbounds %struct.layer, %struct.layer* %w_layer356, i32 0, i32 5
  %295 = load i32, i32* %l_encoding357, align 4
  %cmp358 = icmp eq i32 %295, 8
  br i1 %cmp358, label %cond.true.360, label %cond.false.376

cond.true.360:                                    ; preds = %if.end.355
  %296 = load i32, i32* %x, align 4
  %add361 = add nsw i32 %296, 1
  %idxprom362 = sext i32 %add361 to i64
  %297 = load %struct.mline*, %struct.mline** %ml, align 8
  %font363 = getelementptr inbounds %struct.mline, %struct.mline* %297, i32 0, i32 2
  %298 = load i8*, i8** %font363, align 8
  %arrayidx364 = getelementptr inbounds i8, i8* %298, i64 %idxprom362
  %299 = load i8, i8* %arrayidx364, align 1
  %conv365 = zext i8 %299 to i32
  %cmp366 = icmp eq i32 %conv365, 255
  br i1 %cmp366, label %land.lhs.true.368, label %if.end.401

land.lhs.true.368:                                ; preds = %cond.true.360
  %300 = load i32, i32* %x, align 4
  %add369 = add nsw i32 %300, 1
  %idxprom370 = sext i32 %add369 to i64
  %301 = load %struct.mline*, %struct.mline** %ml, align 8
  %image371 = getelementptr inbounds %struct.mline, %struct.mline* %301, i32 0, i32 0
  %302 = load i8*, i8** %image371, align 8
  %arrayidx372 = getelementptr inbounds i8, i8* %302, i64 %idxprom370
  %303 = load i8, i8* %arrayidx372, align 1
  %conv373 = zext i8 %303 to i32
  %cmp374 = icmp eq i32 %conv373, 255
  br i1 %cmp374, label %if.then.392, label %if.end.401

cond.false.376:                                   ; preds = %if.end.355
  %304 = load i32, i32* %x, align 4
  %idxprom377 = sext i32 %304 to i64
  %305 = load %struct.mline*, %struct.mline** %ml, align 8
  %font378 = getelementptr inbounds %struct.mline, %struct.mline* %305, i32 0, i32 2
  %306 = load i8*, i8** %font378, align 8
  %arrayidx379 = getelementptr inbounds i8, i8* %306, i64 %idxprom377
  %307 = load i8, i8* %arrayidx379, align 1
  %conv380 = zext i8 %307 to i32
  %and381 = and i32 %conv380, 31
  %cmp382 = icmp ne i32 %and381, 0
  br i1 %cmp382, label %land.lhs.true.384, label %if.end.401

land.lhs.true.384:                                ; preds = %cond.false.376
  %308 = load i32, i32* %x, align 4
  %idxprom385 = sext i32 %308 to i64
  %309 = load %struct.mline*, %struct.mline** %ml, align 8
  %font386 = getelementptr inbounds %struct.mline, %struct.mline* %309, i32 0, i32 2
  %310 = load i8*, i8** %font386, align 8
  %arrayidx387 = getelementptr inbounds i8, i8* %310, i64 %idxprom385
  %311 = load i8, i8* %arrayidx387, align 1
  %conv388 = zext i8 %311 to i32
  %and389 = and i32 %conv388, 224
  %cmp390 = icmp eq i32 %and389, 0
  br i1 %cmp390, label %if.then.392, label %if.end.401

if.then.392:                                      ; preds = %land.lhs.true.384, %land.lhs.true.368
  %312 = load i32, i32* %x, align 4
  %add393 = add nsw i32 %312, 1
  %idxprom394 = sext i32 %add393 to i64
  %313 = load %struct.mline*, %struct.mline** %ml, align 8
  %image395 = getelementptr inbounds %struct.mline, %struct.mline* %313, i32 0, i32 0
  %314 = load i8*, i8** %image395, align 8
  %arrayidx396 = getelementptr inbounds i8, i8* %314, i64 %idxprom394
  %315 = load i8, i8* %arrayidx396, align 1
  %mbcs397 = getelementptr inbounds %struct.mchar, %struct.mchar* %mc, i32 0, i32 5
  store i8 %315, i8* %mbcs397, align 1
  %316 = load %struct.layer*, %struct.layer** @flayer, align 8
  %317 = load i32, i32* %x, align 4
  %318 = load i32, i32* %y, align 4
  %319 = load %struct.markdata*, %struct.markdata** @markdata, align 8
  %hist_offset398 = getelementptr inbounds %struct.markdata, %struct.markdata* %319, i32 0, i32 13
  %320 = load i32, i32* %hist_offset398, align 4
  %sub399 = sub nsw i32 %318, %320
  call void @LPutChar(%struct.layer* %316, %struct.mchar* %mc, i32 %317, i32 %sub399)
  %321 = load i32, i32* %t, align 4
  %inc400 = add nsw i32 %321, 1
  store i32 %inc400, i32* %t, align 4
  br label %if.end.401

if.end.401:                                       ; preds = %if.then.392, %land.lhs.true.384, %cond.false.376, %land.lhs.true.368, %cond.true.360
  %322 = load %struct.layer*, %struct.layer** @flayer, align 8
  %323 = load i32, i32* %x, align 4
  %324 = load i32, i32* %y, align 4
  %325 = load %struct.markdata*, %struct.markdata** @markdata, align 8
  %hist_offset402 = getelementptr inbounds %struct.markdata, %struct.markdata* %325, i32 0, i32 13
  %326 = load i32, i32* %hist_offset402, align 4
  %sub403 = sub nsw i32 %324, %326
  call void @LPutChar(%struct.layer* %322, %struct.mchar* %mc, i32 %323, i32 %sub403)
  %327 = load %struct.win*, %struct.win** @fore, align 8
  %w_layer404 = getelementptr inbounds %struct.win, %struct.win* %327, i32 0, i32 3
  %l_encoding405 = getelementptr inbounds %struct.layer, %struct.layer* %w_layer404, i32 0, i32 5
  %328 = load i32, i32* %l_encoding405, align 4
  %cmp406 = icmp eq i32 %328, 8
  br i1 %cmp406, label %cond.true.408, label %cond.false.424

cond.true.408:                                    ; preds = %if.end.401
  %329 = load i32, i32* %x, align 4
  %add409 = add nsw i32 %329, 1
  %idxprom410 = sext i32 %add409 to i64
  %330 = load %struct.mline*, %struct.mline** %ml, align 8
  %font411 = getelementptr inbounds %struct.mline, %struct.mline* %330, i32 0, i32 2
  %331 = load i8*, i8** %font411, align 8
  %arrayidx412 = getelementptr inbounds i8, i8* %331, i64 %idxprom410
  %332 = load i8, i8* %arrayidx412, align 1
  %conv413 = zext i8 %332 to i32
  %cmp414 = icmp eq i32 %conv413, 255
  br i1 %cmp414, label %land.lhs.true.416, label %if.end.442

land.lhs.true.416:                                ; preds = %cond.true.408
  %333 = load i32, i32* %x, align 4
  %add417 = add nsw i32 %333, 1
  %idxprom418 = sext i32 %add417 to i64
  %334 = load %struct.mline*, %struct.mline** %ml, align 8
  %image419 = getelementptr inbounds %struct.mline, %struct.mline* %334, i32 0, i32 0
  %335 = load i8*, i8** %image419, align 8
  %arrayidx420 = getelementptr inbounds i8, i8* %335, i64 %idxprom418
  %336 = load i8, i8* %arrayidx420, align 1
  %conv421 = zext i8 %336 to i32
  %cmp422 = icmp eq i32 %conv421, 255
  br i1 %cmp422, label %if.then.440, label %if.end.442

cond.false.424:                                   ; preds = %if.end.401
  %337 = load i32, i32* %x, align 4
  %idxprom425 = sext i32 %337 to i64
  %338 = load %struct.mline*, %struct.mline** %ml, align 8
  %font426 = getelementptr inbounds %struct.mline, %struct.mline* %338, i32 0, i32 2
  %339 = load i8*, i8** %font426, align 8
  %arrayidx427 = getelementptr inbounds i8, i8* %339, i64 %idxprom425
  %340 = load i8, i8* %arrayidx427, align 1
  %conv428 = zext i8 %340 to i32
  %and429 = and i32 %conv428, 31
  %cmp430 = icmp ne i32 %and429, 0
  br i1 %cmp430, label %land.lhs.true.432, label %if.end.442

land.lhs.true.432:                                ; preds = %cond.false.424
  %341 = load i32, i32* %x, align 4
  %idxprom433 = sext i32 %341 to i64
  %342 = load %struct.mline*, %struct.mline** %ml, align 8
  %font434 = getelementptr inbounds %struct.mline, %struct.mline* %342, i32 0, i32 2
  %343 = load i8*, i8** %font434, align 8
  %arrayidx435 = getelementptr inbounds i8, i8* %343, i64 %idxprom433
  %344 = load i8, i8* %arrayidx435, align 1
  %conv436 = zext i8 %344 to i32
  %and437 = and i32 %conv436, 224
  %cmp438 = icmp eq i32 %and437, 0
  br i1 %cmp438, label %if.then.440, label %if.end.442

if.then.440:                                      ; preds = %land.lhs.true.432, %land.lhs.true.416
  %345 = load i32, i32* %x, align 4
  %inc441 = add nsw i32 %345, 1
  store i32 %inc441, i32* %x, align 4
  br label %if.end.442

if.end.442:                                       ; preds = %if.then.440, %land.lhs.true.432, %cond.false.424, %land.lhs.true.416, %cond.true.408
  br label %if.end.443

if.end.443:                                       ; preds = %if.end.442, %land.lhs.true.277, %land.lhs.true.274, %if.end.271
  br label %for.inc.444

for.inc.444:                                      ; preds = %if.end.443
  %346 = load i32, i32* %t, align 4
  %inc445 = add nsw i32 %346, 1
  store i32 %inc445, i32* %t, align 4
  %347 = load i32, i32* %x, align 4
  %inc446 = add nsw i32 %347, 1
  store i32 %inc446, i32* %x, align 4
  br label %for.cond

for.end.447:                                      ; preds = %if.then.249, %for.cond
  %348 = load i32, i32* %tx.addr, align 4
  %349 = load %struct.layer*, %struct.layer** @flayer, align 8
  %l_x448 = getelementptr inbounds %struct.layer, %struct.layer* %349, i32 0, i32 3
  store i32 %348, i32* %l_x448, align 4
  %350 = load i32, i32* %ty.addr, align 4
  %351 = load %struct.markdata*, %struct.markdata** @markdata, align 8
  %hist_offset449 = getelementptr inbounds %struct.markdata, %struct.markdata* %351, i32 0, i32 13
  %352 = load i32, i32* %hist_offset449, align 4
  %sub450 = sub nsw i32 %350, %352
  %353 = load %struct.layer*, %struct.layer** @flayer, align 8
  %l_y451 = getelementptr inbounds %struct.layer, %struct.layer* %353, i32 0, i32 4
  store i32 %sub450, i32* %l_y451, align 4
  %354 = load %struct.layer*, %struct.layer** @flayer, align 8
  %355 = load i32, i32* %tx.addr, align 4
  %356 = load i32, i32* %ty.addr, align 4
  %357 = load %struct.markdata*, %struct.markdata** @markdata, align 8
  %hist_offset452 = getelementptr inbounds %struct.markdata, %struct.markdata* %357, i32 0, i32 13
  %358 = load i32, i32* %hist_offset452, align 4
  %sub453 = sub nsw i32 %356, %358
  call void @LGotoPos(%struct.layer* %354, i32 %355, i32 %sub453)
  br label %return

return:                                           ; preds = %for.end.447, %if.then.150
  ret void
}

; Function Attrs: nounwind uwtable
define internal i32 @MarkScrollUpDisplay(i32 %n) #0 {
entry:
  %retval = alloca i32, align 4
  %n.addr = alloca i32, align 4
  %i = alloca i32, align 4
  store i32 %n, i32* %n.addr, align 4
  br label %do.body

do.body:                                          ; preds = %entry
  br label %do.end

do.end:                                           ; preds = %do.body
  %0 = load i32, i32* %n.addr, align 4
  %cmp = icmp sle i32 %0, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %do.end
  store i32 0, i32* %retval
  br label %return

if.end:                                           ; preds = %do.end
  %1 = load i32, i32* %n.addr, align 4
  %2 = load %struct.win*, %struct.win** @fore, align 8
  %w_histheight = getelementptr inbounds %struct.win, %struct.win* %2, i32 0, i32 77
  %3 = load i32, i32* %w_histheight, align 4
  %4 = load %struct.markdata*, %struct.markdata** @markdata, align 8
  %hist_offset = getelementptr inbounds %struct.markdata, %struct.markdata* %4, i32 0, i32 13
  %5 = load i32, i32* %hist_offset, align 4
  %sub = sub nsw i32 %3, %5
  %cmp1 = icmp sgt i32 %1, %sub
  br i1 %cmp1, label %if.then.2, label %if.end.6

if.then.2:                                        ; preds = %if.end
  %6 = load %struct.win*, %struct.win** @fore, align 8
  %w_histheight3 = getelementptr inbounds %struct.win, %struct.win* %6, i32 0, i32 77
  %7 = load i32, i32* %w_histheight3, align 4
  %8 = load %struct.markdata*, %struct.markdata** @markdata, align 8
  %hist_offset4 = getelementptr inbounds %struct.markdata, %struct.markdata* %8, i32 0, i32 13
  %9 = load i32, i32* %hist_offset4, align 4
  %sub5 = sub nsw i32 %7, %9
  store i32 %sub5, i32* %n.addr, align 4
  br label %if.end.6

if.end.6:                                         ; preds = %if.then.2, %if.end
  %10 = load i32, i32* %n.addr, align 4
  %11 = load %struct.markdata*, %struct.markdata** @markdata, align 8
  %hist_offset7 = getelementptr inbounds %struct.markdata, %struct.markdata* %11, i32 0, i32 13
  %12 = load i32, i32* %hist_offset7, align 4
  %add = add nsw i32 %12, %10
  store i32 %add, i32* %hist_offset7, align 4
  %13 = load i32, i32* %n.addr, align 4
  %14 = load %struct.layer*, %struct.layer** @flayer, align 8
  %l_height = getelementptr inbounds %struct.layer, %struct.layer* %14, i32 0, i32 2
  %15 = load i32, i32* %l_height, align 4
  %cmp8 = icmp slt i32 %13, %15
  br i1 %cmp8, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.end.6
  %16 = load i32, i32* %n.addr, align 4
  br label %cond.end

cond.false:                                       ; preds = %if.end.6
  %17 = load %struct.layer*, %struct.layer** @flayer, align 8
  %l_height9 = getelementptr inbounds %struct.layer, %struct.layer* %17, i32 0, i32 2
  %18 = load i32, i32* %l_height9, align 4
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %16, %cond.true ], [ %18, %cond.false ]
  store i32 %cond, i32* %i, align 4
  %19 = load %struct.layer*, %struct.layer** @flayer, align 8
  %20 = load i32, i32* %i, align 4
  %21 = load %struct.layer*, %struct.layer** @flayer, align 8
  %l_height10 = getelementptr inbounds %struct.layer, %struct.layer* %21, i32 0, i32 2
  %22 = load i32, i32* %l_height10, align 4
  %sub11 = sub nsw i32 %22, 1
  call void @LScrollV(%struct.layer* %19, i32 %20, i32 0, i32 %sub11, i32 0)
  br label %while.cond

while.cond:                                       ; preds = %while.body, %cond.end
  %23 = load i32, i32* %i, align 4
  %dec = add nsw i32 %23, -1
  store i32 %dec, i32* %i, align 4
  %cmp12 = icmp sgt i32 %23, 0
  br i1 %cmp12, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %24 = load %struct.layer*, %struct.layer** @flayer, align 8
  %l_height13 = getelementptr inbounds %struct.layer, %struct.layer* %24, i32 0, i32 2
  %25 = load i32, i32* %l_height13, align 4
  %26 = load i32, i32* %i, align 4
  %sub14 = sub nsw i32 %25, %26
  %sub15 = sub nsw i32 %sub14, 1
  %27 = load %struct.layer*, %struct.layer** @flayer, align 8
  %l_width = getelementptr inbounds %struct.layer, %struct.layer* %27, i32 0, i32 1
  %28 = load i32, i32* %l_width, align 4
  %sub16 = sub nsw i32 %28, 1
  call void @MarkRedisplayLine(i32 %sub15, i32 0, i32 %sub16, i32 1)
  br label %while.cond

while.end:                                        ; preds = %while.cond
  %29 = load i32, i32* %n.addr, align 4
  store i32 %29, i32* %retval
  br label %return

return:                                           ; preds = %while.end, %if.then
  %30 = load i32, i32* %retval
  ret i32 %30
}

; Function Attrs: nounwind uwtable
define internal i32 @MarkScrollDownDisplay(i32 %n) #0 {
entry:
  %retval = alloca i32, align 4
  %n.addr = alloca i32, align 4
  %i = alloca i32, align 4
  store i32 %n, i32* %n.addr, align 4
  br label %do.body

do.body:                                          ; preds = %entry
  br label %do.end

do.end:                                           ; preds = %do.body
  %0 = load i32, i32* %n.addr, align 4
  %cmp = icmp sle i32 %0, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %do.end
  store i32 0, i32* %retval
  br label %return

if.end:                                           ; preds = %do.end
  %1 = load i32, i32* %n.addr, align 4
  %2 = load %struct.markdata*, %struct.markdata** @markdata, align 8
  %hist_offset = getelementptr inbounds %struct.markdata, %struct.markdata* %2, i32 0, i32 13
  %3 = load i32, i32* %hist_offset, align 4
  %cmp1 = icmp sgt i32 %1, %3
  br i1 %cmp1, label %if.then.2, label %if.end.4

if.then.2:                                        ; preds = %if.end
  %4 = load %struct.markdata*, %struct.markdata** @markdata, align 8
  %hist_offset3 = getelementptr inbounds %struct.markdata, %struct.markdata* %4, i32 0, i32 13
  %5 = load i32, i32* %hist_offset3, align 4
  store i32 %5, i32* %n.addr, align 4
  br label %if.end.4

if.end.4:                                         ; preds = %if.then.2, %if.end
  %6 = load i32, i32* %n.addr, align 4
  %7 = load %struct.markdata*, %struct.markdata** @markdata, align 8
  %hist_offset5 = getelementptr inbounds %struct.markdata, %struct.markdata* %7, i32 0, i32 13
  %8 = load i32, i32* %hist_offset5, align 4
  %sub = sub nsw i32 %8, %6
  store i32 %sub, i32* %hist_offset5, align 4
  %9 = load i32, i32* %n.addr, align 4
  %10 = load %struct.layer*, %struct.layer** @flayer, align 8
  %l_height = getelementptr inbounds %struct.layer, %struct.layer* %10, i32 0, i32 2
  %11 = load i32, i32* %l_height, align 4
  %cmp6 = icmp slt i32 %9, %11
  br i1 %cmp6, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.end.4
  %12 = load i32, i32* %n.addr, align 4
  br label %cond.end

cond.false:                                       ; preds = %if.end.4
  %13 = load %struct.layer*, %struct.layer** @flayer, align 8
  %l_height7 = getelementptr inbounds %struct.layer, %struct.layer* %13, i32 0, i32 2
  %14 = load i32, i32* %l_height7, align 4
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %12, %cond.true ], [ %14, %cond.false ]
  store i32 %cond, i32* %i, align 4
  %15 = load %struct.layer*, %struct.layer** @flayer, align 8
  %16 = load i32, i32* %i, align 4
  %sub8 = sub nsw i32 0, %16
  %17 = load %struct.win*, %struct.win** @fore, align 8
  %w_layer = getelementptr inbounds %struct.win, %struct.win* %17, i32 0, i32 3
  %l_height9 = getelementptr inbounds %struct.layer, %struct.layer* %w_layer, i32 0, i32 2
  %18 = load i32, i32* %l_height9, align 4
  %sub10 = sub nsw i32 %18, 1
  call void @LScrollV(%struct.layer* %15, i32 %sub8, i32 0, i32 %sub10, i32 0)
  br label %while.cond

while.cond:                                       ; preds = %while.body, %cond.end
  %19 = load i32, i32* %i, align 4
  %dec = add nsw i32 %19, -1
  store i32 %dec, i32* %i, align 4
  %cmp11 = icmp sgt i32 %19, 0
  br i1 %cmp11, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %20 = load i32, i32* %i, align 4
  %21 = load %struct.layer*, %struct.layer** @flayer, align 8
  %l_width = getelementptr inbounds %struct.layer, %struct.layer* %21, i32 0, i32 1
  %22 = load i32, i32* %l_width, align 4
  %sub12 = sub nsw i32 %22, 1
  call void @MarkRedisplayLine(i32 %20, i32 0, i32 %sub12, i32 1)
  br label %while.cond

while.end:                                        ; preds = %while.cond
  %23 = load i32, i32* %n.addr, align 4
  store i32 %23, i32* %retval
  br label %return

return:                                           ; preds = %while.end, %if.then
  %24 = load i32, i32* %retval
  ret i32 %24
}

; Function Attrs: nounwind
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* nocapture, i8* nocapture readonly, i64, i32, i1) #3

declare void @LPutChar(%struct.layer*, %struct.mchar*, i32, i32) #1

; Function Attrs: nounwind uwtable
define void @MakePaster(%struct.paster* %pa, i8* %buf, i32 %len, i32 %bufiscopy) #0 {
entry:
  %pa.addr = alloca %struct.paster*, align 8
  %buf.addr = alloca i8*, align 8
  %len.addr = alloca i32, align 4
  %bufiscopy.addr = alloca i32, align 4
  store %struct.paster* %pa, %struct.paster** %pa.addr, align 8
  store i8* %buf, i8** %buf.addr, align 8
  store i32 %len, i32* %len.addr, align 4
  store i32 %bufiscopy, i32* %bufiscopy.addr, align 4
  %0 = load %struct.paster*, %struct.paster** %pa.addr, align 8
  call void @FreePaster(%struct.paster* %0)
  %1 = load i8*, i8** %buf.addr, align 8
  %2 = load %struct.paster*, %struct.paster** %pa.addr, align 8
  %pa_pasteptr = getelementptr inbounds %struct.paster, %struct.paster* %2, i32 0, i32 1
  store i8* %1, i8** %pa_pasteptr, align 8
  %3 = load i32, i32* %len.addr, align 4
  %4 = load %struct.paster*, %struct.paster** %pa.addr, align 8
  %pa_pastelen = getelementptr inbounds %struct.paster, %struct.paster* %4, i32 0, i32 2
  store i32 %3, i32* %pa_pastelen, align 4
  %5 = load i32, i32* %bufiscopy.addr, align 4
  %tobool = icmp ne i32 %5, 0
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %6 = load i8*, i8** %buf.addr, align 8
  %7 = load %struct.paster*, %struct.paster** %pa.addr, align 8
  %pa_pastebuf = getelementptr inbounds %struct.paster, %struct.paster* %7, i32 0, i32 0
  store i8* %6, i8** %pa_pastebuf, align 8
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %8 = load %struct.layer*, %struct.layer** @flayer, align 8
  %9 = load %struct.paster*, %struct.paster** %pa.addr, align 8
  %pa_pastelayer = getelementptr inbounds %struct.paster, %struct.paster* %9, i32 0, i32 3
  store %struct.layer* %8, %struct.layer** %pa_pastelayer, align 8
  %10 = load %struct.layer*, %struct.layer** @flayer, align 8
  %l_bottom = getelementptr inbounds %struct.layer, %struct.layer* %10, i32 0, i32 9
  %11 = load %struct.layer*, %struct.layer** %l_bottom, align 8
  %l_data = getelementptr inbounds %struct.layer, %struct.layer* %11, i32 0, i32 7
  %12 = load i8*, i8** %l_data, align 8
  %13 = bitcast i8* %12 to %struct.win*
  %14 = load %struct.paster*, %struct.paster** %pa.addr, align 8
  %pa_pasteptr1 = getelementptr inbounds %struct.paster, %struct.paster* %14, i32 0, i32 1
  %15 = load %struct.paster*, %struct.paster** %pa.addr, align 8
  %pa_pastelen2 = getelementptr inbounds %struct.paster, %struct.paster* %15, i32 0, i32 2
  %16 = load %struct.paster*, %struct.paster** %pa.addr, align 8
  call void @DoProcess(%struct.win* %13, i8** %pa_pasteptr1, i32* %pa_pastelen2, %struct.paster* %16)
  ret void
}

; Function Attrs: nounwind uwtable
define void @FreePaster(%struct.paster* %pa) #0 {
entry:
  %pa.addr = alloca %struct.paster*, align 8
  store %struct.paster* %pa, %struct.paster** %pa.addr, align 8
  %0 = load %struct.paster*, %struct.paster** %pa.addr, align 8
  %pa_pastebuf = getelementptr inbounds %struct.paster, %struct.paster* %0, i32 0, i32 0
  %1 = load i8*, i8** %pa_pastebuf, align 8
  %tobool = icmp ne i8* %1, null
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %2 = load %struct.paster*, %struct.paster** %pa.addr, align 8
  %pa_pastebuf1 = getelementptr inbounds %struct.paster, %struct.paster* %2, i32 0, i32 0
  %3 = load i8*, i8** %pa_pastebuf1, align 8
  call void @free(i8* %3) #3
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %4 = load %struct.paster*, %struct.paster** %pa.addr, align 8
  %pa_pastebuf2 = getelementptr inbounds %struct.paster, %struct.paster* %4, i32 0, i32 0
  store i8* null, i8** %pa_pastebuf2, align 8
  %5 = load %struct.paster*, %struct.paster** %pa.addr, align 8
  %pa_pasteptr = getelementptr inbounds %struct.paster, %struct.paster* %5, i32 0, i32 1
  store i8* null, i8** %pa_pasteptr, align 8
  %6 = load %struct.paster*, %struct.paster** %pa.addr, align 8
  %pa_pastelen = getelementptr inbounds %struct.paster, %struct.paster* %6, i32 0, i32 2
  store i32 0, i32* %pa_pastelen, align 4
  %7 = load %struct.paster*, %struct.paster** %pa.addr, align 8
  %pa_pastelayer = getelementptr inbounds %struct.paster, %struct.paster* %7, i32 0, i32 3
  store %struct.layer* null, %struct.layer** %pa_pastelayer, align 8
  %8 = load %struct.paster*, %struct.paster** %pa.addr, align 8
  %pa_slowev = getelementptr inbounds %struct.paster, %struct.paster* %8, i32 0, i32 4
  call void @evdeq(%struct.event* %pa_slowev)
  ret void
}

declare void @DoProcess(%struct.win*, i8**, i32*, %struct.paster*) #1

; Function Attrs: nounwind
declare void @free(i8*) #2

declare void @evdeq(%struct.event*) #1

declare i32 @LayProcessMouse(%struct.layer*, i8 zeroext) #1

declare void @LayProcessMouseSwitch(%struct.layer*, i32) #1

; Function Attrs: nounwind readnone
declare i16** @__ctype_b_loc() #4

; Function Attrs: nounwind uwtable
define internal i32 @nextchar(i32* %xp, i32* %yp, i32 %direction, i8 signext %target, i32 %num) #0 {
entry:
  %retval = alloca i32, align 4
  %xp.addr = alloca i32*, align 8
  %yp.addr = alloca i32*, align 8
  %direction.addr = alloca i32, align 4
  %target.addr = alloca i8, align 1
  %num.addr = alloca i32, align 4
  %width = alloca i32, align 4
  %x = alloca i32, align 4
  %step = alloca i32, align 4
  %adjust = alloca i32, align 4
  %displayed_line = alloca i8*, align 8
  store i32* %xp, i32** %xp.addr, align 8
  store i32* %yp, i32** %yp.addr, align 8
  store i32 %direction, i32* %direction.addr, align 4
  store i8 %target, i8* %target.addr, align 1
  store i32 %num, i32* %num.addr, align 4
  br label %do.body

do.body:                                          ; preds = %entry
  br label %do.end

do.end:                                           ; preds = %do.body
  %0 = load i32*, i32** %xp.addr, align 8
  %1 = load i32, i32* %0, align 4
  store i32 %1, i32* %x, align 4
  store i32 1, i32* %step, align 4
  store i32 0, i32* %adjust, align 4
  %2 = load %struct.win*, %struct.win** @fore, align 8
  %w_layer = getelementptr inbounds %struct.win, %struct.win* %2, i32 0, i32 3
  %l_width = getelementptr inbounds %struct.layer, %struct.layer* %w_layer, i32 0, i32 1
  %3 = load i32, i32* %l_width, align 4
  store i32 %3, i32* %width, align 4
  %4 = load i32*, i32** %yp.addr, align 8
  %5 = load i32, i32* %4, align 4
  %6 = load %struct.win*, %struct.win** @fore, align 8
  %w_histheight = getelementptr inbounds %struct.win, %struct.win* %6, i32 0, i32 77
  %7 = load i32, i32* %w_histheight, align 4
  %cmp = icmp slt i32 %5, %7
  br i1 %cmp, label %cond.true, label %cond.false

cond.true:                                        ; preds = %do.end
  %8 = load %struct.win*, %struct.win** @fore, align 8
  %w_histidx = getelementptr inbounds %struct.win, %struct.win* %8, i32 0, i32 78
  %9 = load i32, i32* %w_histidx, align 4
  %10 = load i32*, i32** %yp.addr, align 8
  %11 = load i32, i32* %10, align 4
  %add = add nsw i32 %9, %11
  %12 = load %struct.win*, %struct.win** @fore, align 8
  %w_histheight1 = getelementptr inbounds %struct.win, %struct.win* %12, i32 0, i32 77
  %13 = load i32, i32* %w_histheight1, align 4
  %rem = srem i32 %add, %13
  %idxprom = sext i32 %rem to i64
  %14 = load %struct.win*, %struct.win** @fore, align 8
  %w_hlines = getelementptr inbounds %struct.win, %struct.win* %14, i32 0, i32 79
  %15 = load %struct.mline*, %struct.mline** %w_hlines, align 8
  %arrayidx = getelementptr inbounds %struct.mline, %struct.mline* %15, i64 %idxprom
  br label %cond.end

cond.false:                                       ; preds = %do.end
  %16 = load i32*, i32** %yp.addr, align 8
  %17 = load i32, i32* %16, align 4
  %18 = load %struct.win*, %struct.win** @fore, align 8
  %w_histheight2 = getelementptr inbounds %struct.win, %struct.win* %18, i32 0, i32 77
  %19 = load i32, i32* %w_histheight2, align 4
  %sub = sub nsw i32 %17, %19
  %idxprom3 = sext i32 %sub to i64
  %20 = load %struct.win*, %struct.win** @fore, align 8
  %w_mlines = getelementptr inbounds %struct.win, %struct.win* %20, i32 0, i32 36
  %21 = load %struct.mline*, %struct.mline** %w_mlines, align 8
  %arrayidx4 = getelementptr inbounds %struct.mline, %struct.mline* %21, i64 %idxprom3
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi %struct.mline* [ %arrayidx, %cond.true ], [ %arrayidx4, %cond.false ]
  %image = getelementptr inbounds %struct.mline, %struct.mline* %cond, i32 0, i32 0
  %22 = load i8*, i8** %image, align 8
  store i8* %22, i8** %displayed_line, align 8
  %23 = load i32, i32* %direction.addr, align 4
  switch i32 %23, label %sw.default [
    i32 116, label %sw.bb
    i32 102, label %sw.bb.5
    i32 84, label %sw.bb.6
    i32 70, label %sw.bb.7
  ]

sw.bb:                                            ; preds = %cond.end
  store i32 -1, i32* %adjust, align 4
  br label %sw.bb.5

sw.bb.5:                                          ; preds = %cond.end, %sw.bb
  store i32 1, i32* %step, align 4
  br label %sw.epilog

sw.bb.6:                                          ; preds = %cond.end
  store i32 1, i32* %adjust, align 4
  br label %sw.bb.7

sw.bb.7:                                          ; preds = %cond.end, %sw.bb.6
  store i32 -1, i32* %step, align 4
  br label %sw.epilog

sw.default:                                       ; preds = %cond.end
  br label %do.body.8

do.body.8:                                        ; preds = %sw.default
  br label %do.end.9

do.end.9:                                         ; preds = %do.body.8
  br label %sw.epilog

sw.epilog:                                        ; preds = %do.end.9, %sw.bb.7, %sw.bb.5
  %24 = load i32, i32* %step, align 4
  %25 = load i32, i32* %x, align 4
  %add10 = add nsw i32 %25, %24
  store i32 %add10, i32* %x, align 4
  br label %do.body.11

do.body.11:                                       ; preds = %sw.epilog
  br label %do.end.12

do.end.12:                                        ; preds = %do.body.11
  br label %do.body.13

do.body.13:                                       ; preds = %do.end.12
  br label %do.end.14

do.end.14:                                        ; preds = %do.body.13
  br label %do.body.15

do.body.15:                                       ; preds = %do.end.14
  br label %do.end.16

do.end.16:                                        ; preds = %do.body.15
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %do.end.16
  %26 = load i32, i32* %x, align 4
  %cmp17 = icmp sge i32 %26, 0
  br i1 %cmp17, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %for.cond
  %27 = load i32, i32* %x, align 4
  %28 = load i32, i32* %width, align 4
  %cmp18 = icmp sle i32 %27, %28
  br label %land.end

land.end:                                         ; preds = %land.rhs, %for.cond
  %29 = phi i1 [ false, %for.cond ], [ %cmp18, %land.rhs ]
  br i1 %29, label %for.body, label %for.end

for.body:                                         ; preds = %land.end
  %30 = load i32, i32* %x, align 4
  %idxprom19 = sext i32 %30 to i64
  %31 = load i8*, i8** %displayed_line, align 8
  %arrayidx20 = getelementptr inbounds i8, i8* %31, i64 %idxprom19
  %32 = load i8, i8* %arrayidx20, align 1
  %conv = sext i8 %32 to i32
  %33 = load i8, i8* %target.addr, align 1
  %conv21 = sext i8 %33 to i32
  %cmp22 = icmp eq i32 %conv, %conv21
  br i1 %cmp22, label %if.then, label %if.end.28

if.then:                                          ; preds = %for.body
  %34 = load i32, i32* %num.addr, align 4
  %dec = add nsw i32 %34, -1
  store i32 %dec, i32* %num.addr, align 4
  %cmp24 = icmp eq i32 %dec, 0
  br i1 %cmp24, label %if.then.26, label %if.end

if.then.26:                                       ; preds = %if.then
  %35 = load i32, i32* %x, align 4
  %36 = load i32, i32* %adjust, align 4
  %add27 = add nsw i32 %35, %36
  %37 = load i32*, i32** %xp.addr, align 8
  store i32 %add27, i32* %37, align 4
  store i32 0, i32* %retval
  br label %return

if.end:                                           ; preds = %if.then
  br label %if.end.28

if.end.28:                                        ; preds = %if.end, %for.body
  br label %for.inc

for.inc:                                          ; preds = %if.end.28
  %38 = load i32, i32* %step, align 4
  %39 = load i32, i32* %x, align 4
  %add29 = add nsw i32 %39, %38
  store i32 %add29, i32* %x, align 4
  br label %for.cond

for.end:                                          ; preds = %land.end
  store i32 -1, i32* %retval
  br label %return

return:                                           ; preds = %for.end, %if.then.26
  %40 = load i32, i32* %retval
  ret i32 %40
}

declare void @Redisplay(i32) #1

; Function Attrs: nounwind uwtable
define internal i32 @linestart(i32 %y) #0 {
entry:
  %y.addr = alloca i32, align 4
  %x = alloca i32, align 4
  %i = alloca i8*, align 8
  store i32 %y, i32* %y.addr, align 4
  %0 = load %struct.markdata*, %struct.markdata** @markdata, align 8
  %left_mar = getelementptr inbounds %struct.markdata, %struct.markdata* %0, i32 0, i32 7
  %1 = load i32, i32* %left_mar, align 4
  store i32 %1, i32* %x, align 4
  %2 = load i32, i32* %y.addr, align 4
  %3 = load %struct.win*, %struct.win** @fore, align 8
  %w_histheight = getelementptr inbounds %struct.win, %struct.win* %3, i32 0, i32 77
  %4 = load i32, i32* %w_histheight, align 4
  %cmp = icmp slt i32 %2, %4
  br i1 %cmp, label %cond.true, label %cond.false

cond.true:                                        ; preds = %entry
  %5 = load %struct.win*, %struct.win** @fore, align 8
  %w_histidx = getelementptr inbounds %struct.win, %struct.win* %5, i32 0, i32 78
  %6 = load i32, i32* %w_histidx, align 4
  %7 = load i32, i32* %y.addr, align 4
  %add = add nsw i32 %6, %7
  %8 = load %struct.win*, %struct.win** @fore, align 8
  %w_histheight1 = getelementptr inbounds %struct.win, %struct.win* %8, i32 0, i32 77
  %9 = load i32, i32* %w_histheight1, align 4
  %rem = srem i32 %add, %9
  %idxprom = sext i32 %rem to i64
  %10 = load %struct.win*, %struct.win** @fore, align 8
  %w_hlines = getelementptr inbounds %struct.win, %struct.win* %10, i32 0, i32 79
  %11 = load %struct.mline*, %struct.mline** %w_hlines, align 8
  %arrayidx = getelementptr inbounds %struct.mline, %struct.mline* %11, i64 %idxprom
  br label %cond.end

cond.false:                                       ; preds = %entry
  %12 = load i32, i32* %y.addr, align 4
  %13 = load %struct.win*, %struct.win** @fore, align 8
  %w_histheight2 = getelementptr inbounds %struct.win, %struct.win* %13, i32 0, i32 77
  %14 = load i32, i32* %w_histheight2, align 4
  %sub = sub nsw i32 %12, %14
  %idxprom3 = sext i32 %sub to i64
  %15 = load %struct.win*, %struct.win** @fore, align 8
  %w_mlines = getelementptr inbounds %struct.win, %struct.win* %15, i32 0, i32 36
  %16 = load %struct.mline*, %struct.mline** %w_mlines, align 8
  %arrayidx4 = getelementptr inbounds %struct.mline, %struct.mline* %16, i64 %idxprom3
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi %struct.mline* [ %arrayidx, %cond.true ], [ %arrayidx4, %cond.false ]
  %image = getelementptr inbounds %struct.mline, %struct.mline* %cond, i32 0, i32 0
  %17 = load i8*, i8** %image, align 8
  %18 = load i32, i32* %x, align 4
  %idx.ext = sext i32 %18 to i64
  %add.ptr = getelementptr inbounds i8, i8* %17, i64 %idx.ext
  store i8* %add.ptr, i8** %i, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %cond.end
  %19 = load i32, i32* %x, align 4
  %20 = load %struct.win*, %struct.win** @fore, align 8
  %w_layer = getelementptr inbounds %struct.win, %struct.win* %20, i32 0, i32 3
  %l_width = getelementptr inbounds %struct.layer, %struct.layer* %w_layer, i32 0, i32 1
  %21 = load i32, i32* %l_width, align 4
  %sub5 = sub nsw i32 %21, 1
  %cmp6 = icmp slt i32 %19, %sub5
  br i1 %cmp6, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %22 = load i8*, i8** %i, align 8
  %incdec.ptr = getelementptr inbounds i8, i8* %22, i32 1
  store i8* %incdec.ptr, i8** %i, align 8
  %23 = load i8, i8* %22, align 1
  %conv = zext i8 %23 to i32
  %cmp7 = icmp ne i32 %conv, 32
  br i1 %cmp7, label %if.then, label %if.end

if.then:                                          ; preds = %for.body
  br label %for.end

if.end:                                           ; preds = %for.body
  br label %for.inc

for.inc:                                          ; preds = %if.end
  %24 = load i32, i32* %x, align 4
  %inc = add nsw i32 %24, 1
  store i32 %inc, i32* %x, align 4
  br label %for.cond

for.end:                                          ; preds = %if.then, %for.cond
  %25 = load i32, i32* %x, align 4
  %26 = load %struct.win*, %struct.win** @fore, align 8
  %w_layer9 = getelementptr inbounds %struct.win, %struct.win* %26, i32 0, i32 3
  %l_width10 = getelementptr inbounds %struct.layer, %struct.layer* %w_layer9, i32 0, i32 1
  %27 = load i32, i32* %l_width10, align 4
  %sub11 = sub nsw i32 %27, 1
  %cmp12 = icmp eq i32 %25, %sub11
  br i1 %cmp12, label %if.then.14, label %if.end.16

if.then.14:                                       ; preds = %for.end
  %28 = load %struct.markdata*, %struct.markdata** @markdata, align 8
  %left_mar15 = getelementptr inbounds %struct.markdata, %struct.markdata* %28, i32 0, i32 7
  %29 = load i32, i32* %left_mar15, align 4
  store i32 %29, i32* %x, align 4
  br label %if.end.16

if.end.16:                                        ; preds = %if.then.14, %for.end
  %30 = load i32, i32* %x, align 4
  ret i32 %30
}

; Function Attrs: nounwind uwtable
define internal i32 @lineend(i32 %y) #0 {
entry:
  %y.addr = alloca i32, align 4
  %x = alloca i32, align 4
  %i = alloca i8*, align 8
  store i32 %y, i32* %y.addr, align 4
  %0 = load %struct.markdata*, %struct.markdata** @markdata, align 8
  %right_mar = getelementptr inbounds %struct.markdata, %struct.markdata* %0, i32 0, i32 8
  %1 = load i32, i32* %right_mar, align 4
  store i32 %1, i32* %x, align 4
  %2 = load i32, i32* %y.addr, align 4
  %3 = load %struct.win*, %struct.win** @fore, align 8
  %w_histheight = getelementptr inbounds %struct.win, %struct.win* %3, i32 0, i32 77
  %4 = load i32, i32* %w_histheight, align 4
  %cmp = icmp slt i32 %2, %4
  br i1 %cmp, label %cond.true, label %cond.false

cond.true:                                        ; preds = %entry
  %5 = load %struct.win*, %struct.win** @fore, align 8
  %w_histidx = getelementptr inbounds %struct.win, %struct.win* %5, i32 0, i32 78
  %6 = load i32, i32* %w_histidx, align 4
  %7 = load i32, i32* %y.addr, align 4
  %add = add nsw i32 %6, %7
  %8 = load %struct.win*, %struct.win** @fore, align 8
  %w_histheight1 = getelementptr inbounds %struct.win, %struct.win* %8, i32 0, i32 77
  %9 = load i32, i32* %w_histheight1, align 4
  %rem = srem i32 %add, %9
  %idxprom = sext i32 %rem to i64
  %10 = load %struct.win*, %struct.win** @fore, align 8
  %w_hlines = getelementptr inbounds %struct.win, %struct.win* %10, i32 0, i32 79
  %11 = load %struct.mline*, %struct.mline** %w_hlines, align 8
  %arrayidx = getelementptr inbounds %struct.mline, %struct.mline* %11, i64 %idxprom
  br label %cond.end

cond.false:                                       ; preds = %entry
  %12 = load i32, i32* %y.addr, align 4
  %13 = load %struct.win*, %struct.win** @fore, align 8
  %w_histheight2 = getelementptr inbounds %struct.win, %struct.win* %13, i32 0, i32 77
  %14 = load i32, i32* %w_histheight2, align 4
  %sub = sub nsw i32 %12, %14
  %idxprom3 = sext i32 %sub to i64
  %15 = load %struct.win*, %struct.win** @fore, align 8
  %w_mlines = getelementptr inbounds %struct.win, %struct.win* %15, i32 0, i32 36
  %16 = load %struct.mline*, %struct.mline** %w_mlines, align 8
  %arrayidx4 = getelementptr inbounds %struct.mline, %struct.mline* %16, i64 %idxprom3
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi %struct.mline* [ %arrayidx, %cond.true ], [ %arrayidx4, %cond.false ]
  %image = getelementptr inbounds %struct.mline, %struct.mline* %cond, i32 0, i32 0
  %17 = load i8*, i8** %image, align 8
  %18 = load i32, i32* %x, align 4
  %idx.ext = sext i32 %18 to i64
  %add.ptr = getelementptr inbounds i8, i8* %17, i64 %idx.ext
  store i8* %add.ptr, i8** %i, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %cond.end
  %19 = load i32, i32* %x, align 4
  %cmp5 = icmp sge i32 %19, 0
  br i1 %cmp5, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %20 = load i8*, i8** %i, align 8
  %incdec.ptr = getelementptr inbounds i8, i8* %20, i32 -1
  store i8* %incdec.ptr, i8** %i, align 8
  %21 = load i8, i8* %20, align 1
  %conv = zext i8 %21 to i32
  %cmp6 = icmp ne i32 %conv, 32
  br i1 %cmp6, label %if.then, label %if.end

if.then:                                          ; preds = %for.body
  br label %for.end

if.end:                                           ; preds = %for.body
  br label %for.inc

for.inc:                                          ; preds = %if.end
  %22 = load i32, i32* %x, align 4
  %dec = add nsw i32 %22, -1
  store i32 %dec, i32* %x, align 4
  br label %for.cond

for.end:                                          ; preds = %if.then, %for.cond
  %23 = load i32, i32* %x, align 4
  %cmp8 = icmp slt i32 %23, 0
  br i1 %cmp8, label %if.then.10, label %if.end.11

if.then.10:                                       ; preds = %for.end
  %24 = load %struct.markdata*, %struct.markdata** @markdata, align 8
  %left_mar = getelementptr inbounds %struct.markdata, %struct.markdata* %24, i32 0, i32 7
  %25 = load i32, i32* %left_mar, align 4
  store i32 %25, i32* %x, align 4
  br label %if.end.11

if.end.11:                                        ; preds = %if.then.10, %for.end
  %26 = load i32, i32* %x, align 4
  ret i32 %26
}

declare void @ISearch(i32) #1

; Function Attrs: nounwind uwtable
define internal void @nextword(i32* %xp, i32* %yp, i32 %flags, i32 %num) #0 {
entry:
  %xp.addr = alloca i32*, align 8
  %yp.addr = alloca i32*, align 8
  %flags.addr = alloca i32, align 4
  %num.addr = alloca i32, align 4
  %xx = alloca i32, align 4
  %yy = alloca i32, align 4
  %sx = alloca i32, align 4
  %oq = alloca i32, align 4
  %q = alloca i32, align 4
  %x = alloca i32, align 4
  %y = alloca i32, align 4
  %ml = alloca %struct.mline*, align 8
  store i32* %xp, i32** %xp.addr, align 8
  store i32* %yp, i32** %yp.addr, align 8
  store i32 %flags, i32* %flags.addr, align 4
  store i32 %num, i32* %num.addr, align 4
  %0 = load %struct.win*, %struct.win** @fore, align 8
  %w_layer = getelementptr inbounds %struct.win, %struct.win* %0, i32 0, i32 3
  %l_width = getelementptr inbounds %struct.layer, %struct.layer* %w_layer, i32 0, i32 1
  %1 = load i32, i32* %l_width, align 4
  store i32 %1, i32* %xx, align 4
  %2 = load %struct.win*, %struct.win** @fore, align 8
  %w_histheight = getelementptr inbounds %struct.win, %struct.win* %2, i32 0, i32 77
  %3 = load i32, i32* %w_histheight, align 4
  %4 = load %struct.win*, %struct.win** @fore, align 8
  %w_layer1 = getelementptr inbounds %struct.win, %struct.win* %4, i32 0, i32 3
  %l_height = getelementptr inbounds %struct.layer, %struct.layer* %w_layer1, i32 0, i32 2
  %5 = load i32, i32* %l_height, align 4
  %add = add nsw i32 %3, %5
  store i32 %add, i32* %yy, align 4
  %6 = load i32*, i32** %xp.addr, align 8
  %7 = load i32, i32* %6, align 4
  store i32 %7, i32* %x, align 4
  %8 = load i32*, i32** %yp.addr, align 8
  %9 = load i32, i32* %8, align 4
  store i32 %9, i32* %y, align 4
  %10 = load i32, i32* %flags.addr, align 4
  %and = and i32 %10, 1
  %tobool = icmp ne i32 %and, 0
  %cond = select i1 %tobool, i32 -1, i32 1
  store i32 %cond, i32* %sx, align 4
  %11 = load i32, i32* %flags.addr, align 4
  %and2 = and i32 %11, 2
  %tobool3 = icmp ne i32 %and2, 0
  br i1 %tobool3, label %land.lhs.true, label %if.end

land.lhs.true:                                    ; preds = %entry
  %12 = load i32, i32* %flags.addr, align 4
  %and4 = and i32 %12, 4
  %tobool5 = icmp ne i32 %and4, 0
  br i1 %tobool5, label %if.then, label %if.end

if.then:                                          ; preds = %land.lhs.true
  %13 = load i32, i32* %sx, align 4
  %14 = load i32, i32* %x, align 4
  %add6 = add nsw i32 %14, %13
  store i32 %add6, i32* %x, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %land.lhs.true, %entry
  %15 = load i32, i32* %y, align 4
  %16 = load %struct.win*, %struct.win** @fore, align 8
  %w_histheight7 = getelementptr inbounds %struct.win, %struct.win* %16, i32 0, i32 77
  %17 = load i32, i32* %w_histheight7, align 4
  %cmp = icmp slt i32 %15, %17
  br i1 %cmp, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.end
  %18 = load %struct.win*, %struct.win** @fore, align 8
  %w_histidx = getelementptr inbounds %struct.win, %struct.win* %18, i32 0, i32 78
  %19 = load i32, i32* %w_histidx, align 4
  %20 = load i32, i32* %y, align 4
  %add8 = add nsw i32 %19, %20
  %21 = load %struct.win*, %struct.win** @fore, align 8
  %w_histheight9 = getelementptr inbounds %struct.win, %struct.win* %21, i32 0, i32 77
  %22 = load i32, i32* %w_histheight9, align 4
  %rem = srem i32 %add8, %22
  %idxprom = sext i32 %rem to i64
  %23 = load %struct.win*, %struct.win** @fore, align 8
  %w_hlines = getelementptr inbounds %struct.win, %struct.win* %23, i32 0, i32 79
  %24 = load %struct.mline*, %struct.mline** %w_hlines, align 8
  %arrayidx = getelementptr inbounds %struct.mline, %struct.mline* %24, i64 %idxprom
  br label %cond.end

cond.false:                                       ; preds = %if.end
  %25 = load i32, i32* %y, align 4
  %26 = load %struct.win*, %struct.win** @fore, align 8
  %w_histheight10 = getelementptr inbounds %struct.win, %struct.win* %26, i32 0, i32 77
  %27 = load i32, i32* %w_histheight10, align 4
  %sub = sub nsw i32 %25, %27
  %idxprom11 = sext i32 %sub to i64
  %28 = load %struct.win*, %struct.win** @fore, align 8
  %w_mlines = getelementptr inbounds %struct.win, %struct.win* %28, i32 0, i32 36
  %29 = load %struct.mline*, %struct.mline** %w_mlines, align 8
  %arrayidx12 = getelementptr inbounds %struct.mline, %struct.mline* %29, i64 %idxprom11
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond13 = phi %struct.mline* [ %arrayidx, %cond.true ], [ %arrayidx12, %cond.false ]
  store %struct.mline* %cond13, %struct.mline** %ml, align 8
  store i32 -1, i32* %oq, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %cond.end
  %30 = load i32, i32* %x, align 4
  %31 = load i32, i32* %xx, align 4
  %cmp14 = icmp sge i32 %30, %31
  br i1 %cmp14, label %if.then.16, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %for.cond
  %32 = load i32, i32* %x, align 4
  %cmp15 = icmp slt i32 %32, 0
  br i1 %cmp15, label %if.then.16, label %if.else

if.then.16:                                       ; preds = %lor.lhs.false, %for.cond
  store i32 0, i32* %q, align 4
  br label %if.end.30

if.else:                                          ; preds = %lor.lhs.false
  %33 = load i32, i32* %flags.addr, align 4
  %and17 = and i32 %33, 8
  %tobool18 = icmp ne i32 %and17, 0
  br i1 %tobool18, label %if.then.19, label %if.else.24

if.then.19:                                       ; preds = %if.else
  %34 = load i32, i32* %x, align 4
  %idxprom20 = sext i32 %34 to i64
  %35 = load %struct.mline*, %struct.mline** %ml, align 8
  %image = getelementptr inbounds %struct.mline, %struct.mline* %35, i32 0, i32 0
  %36 = load i8*, i8** %image, align 8
  %arrayidx21 = getelementptr inbounds i8, i8* %36, i64 %idxprom20
  %37 = load i8, i8* %arrayidx21, align 1
  %conv = zext i8 %37 to i32
  %cmp22 = icmp eq i32 %conv, 32
  %conv23 = zext i1 %cmp22 to i32
  store i32 %conv23, i32* %q, align 4
  br label %if.end.29

if.else.24:                                       ; preds = %if.else
  %38 = load i32, i32* %x, align 4
  %idxprom25 = sext i32 %38 to i64
  %39 = load %struct.mline*, %struct.mline** %ml, align 8
  %image26 = getelementptr inbounds %struct.mline, %struct.mline* %39, i32 0, i32 0
  %40 = load i8*, i8** %image26, align 8
  %arrayidx27 = getelementptr inbounds i8, i8* %40, i64 %idxprom25
  %41 = load i8, i8* %arrayidx27, align 1
  %conv28 = zext i8 %41 to i32
  %call = call i32 @is_letter(i32 %conv28)
  store i32 %call, i32* %q, align 4
  br label %if.end.29

if.end.29:                                        ; preds = %if.else.24, %if.then.19
  br label %if.end.30

if.end.30:                                        ; preds = %if.end.29, %if.then.16
  %42 = load i32, i32* %oq, align 4
  %cmp31 = icmp sge i32 %42, 0
  br i1 %cmp31, label %land.lhs.true.33, label %if.end.61

land.lhs.true.33:                                 ; preds = %if.end.30
  %43 = load i32, i32* %oq, align 4
  %44 = load i32, i32* %q, align 4
  %cmp34 = icmp ne i32 %43, %44
  br i1 %cmp34, label %if.then.36, label %if.end.61

if.then.36:                                       ; preds = %land.lhs.true.33
  %45 = load i32, i32* %oq, align 4
  %cmp37 = icmp eq i32 %45, 0
  br i1 %cmp37, label %if.then.42, label %lor.lhs.false.39

lor.lhs.false.39:                                 ; preds = %if.then.36
  %46 = load i32, i32* %flags.addr, align 4
  %and40 = and i32 %46, 2
  %tobool41 = icmp ne i32 %and40, 0
  br i1 %tobool41, label %if.else.43, label %if.then.42

if.then.42:                                       ; preds = %lor.lhs.false.39, %if.then.36
  %47 = load i32, i32* %x, align 4
  %48 = load i32*, i32** %xp.addr, align 8
  store i32 %47, i32* %48, align 4
  br label %if.end.45

if.else.43:                                       ; preds = %lor.lhs.false.39
  %49 = load i32, i32* %x, align 4
  %50 = load i32, i32* %sx, align 4
  %sub44 = sub nsw i32 %49, %50
  %51 = load i32*, i32** %xp.addr, align 8
  store i32 %sub44, i32* %51, align 4
  br label %if.end.45

if.end.45:                                        ; preds = %if.else.43, %if.then.42
  %52 = load i32, i32* %y, align 4
  %53 = load i32*, i32** %yp.addr, align 8
  store i32 %52, i32* %53, align 4
  %54 = load i32, i32* %flags.addr, align 4
  %and46 = and i32 %54, 2
  %tobool47 = icmp ne i32 %and46, 0
  br i1 %tobool47, label %lor.lhs.false.50, label %land.lhs.true.48

land.lhs.true.48:                                 ; preds = %if.end.45
  %55 = load i32, i32* %q, align 4
  %tobool49 = icmp ne i32 %55, 0
  br i1 %tobool49, label %if.then.55, label %lor.lhs.false.50

lor.lhs.false.50:                                 ; preds = %land.lhs.true.48, %if.end.45
  %56 = load i32, i32* %flags.addr, align 4
  %and51 = and i32 %56, 2
  %tobool52 = icmp ne i32 %and51, 0
  br i1 %tobool52, label %land.lhs.true.53, label %if.end.60

land.lhs.true.53:                                 ; preds = %lor.lhs.false.50
  %57 = load i32, i32* %oq, align 4
  %tobool54 = icmp ne i32 %57, 0
  br i1 %tobool54, label %if.then.55, label %if.end.60

if.then.55:                                       ; preds = %land.lhs.true.53, %land.lhs.true.48
  %58 = load i32, i32* %num.addr, align 4
  %dec = add nsw i32 %58, -1
  store i32 %dec, i32* %num.addr, align 4
  %cmp56 = icmp sle i32 %dec, 0
  br i1 %cmp56, label %if.then.58, label %if.end.59

if.then.58:                                       ; preds = %if.then.55
  br label %return

if.end.59:                                        ; preds = %if.then.55
  br label %if.end.60

if.end.60:                                        ; preds = %if.end.59, %land.lhs.true.53, %lor.lhs.false.50
  br label %if.end.61

if.end.61:                                        ; preds = %if.end.60, %land.lhs.true.33, %if.end.30
  %59 = load i32, i32* %x, align 4
  %60 = load i32, i32* %xx, align 4
  %cmp62 = icmp eq i32 %59, %60
  br i1 %cmp62, label %if.then.64, label %if.else.88

if.then.64:                                       ; preds = %if.end.61
  store i32 -1, i32* %x, align 4
  %61 = load i32, i32* %y, align 4
  %inc = add nsw i32 %61, 1
  store i32 %inc, i32* %y, align 4
  %62 = load i32, i32* %yy, align 4
  %cmp65 = icmp sge i32 %inc, %62
  br i1 %cmp65, label %if.then.67, label %if.end.68

if.then.67:                                       ; preds = %if.then.64
  br label %return

if.end.68:                                        ; preds = %if.then.64
  %63 = load i32, i32* %y, align 4
  %64 = load %struct.win*, %struct.win** @fore, align 8
  %w_histheight69 = getelementptr inbounds %struct.win, %struct.win* %64, i32 0, i32 77
  %65 = load i32, i32* %w_histheight69, align 4
  %cmp70 = icmp slt i32 %63, %65
  br i1 %cmp70, label %cond.true.72, label %cond.false.80

cond.true.72:                                     ; preds = %if.end.68
  %66 = load %struct.win*, %struct.win** @fore, align 8
  %w_histidx73 = getelementptr inbounds %struct.win, %struct.win* %66, i32 0, i32 78
  %67 = load i32, i32* %w_histidx73, align 4
  %68 = load i32, i32* %y, align 4
  %add74 = add nsw i32 %67, %68
  %69 = load %struct.win*, %struct.win** @fore, align 8
  %w_histheight75 = getelementptr inbounds %struct.win, %struct.win* %69, i32 0, i32 77
  %70 = load i32, i32* %w_histheight75, align 4
  %rem76 = srem i32 %add74, %70
  %idxprom77 = sext i32 %rem76 to i64
  %71 = load %struct.win*, %struct.win** @fore, align 8
  %w_hlines78 = getelementptr inbounds %struct.win, %struct.win* %71, i32 0, i32 79
  %72 = load %struct.mline*, %struct.mline** %w_hlines78, align 8
  %arrayidx79 = getelementptr inbounds %struct.mline, %struct.mline* %72, i64 %idxprom77
  br label %cond.end.86

cond.false.80:                                    ; preds = %if.end.68
  %73 = load i32, i32* %y, align 4
  %74 = load %struct.win*, %struct.win** @fore, align 8
  %w_histheight81 = getelementptr inbounds %struct.win, %struct.win* %74, i32 0, i32 77
  %75 = load i32, i32* %w_histheight81, align 4
  %sub82 = sub nsw i32 %73, %75
  %idxprom83 = sext i32 %sub82 to i64
  %76 = load %struct.win*, %struct.win** @fore, align 8
  %w_mlines84 = getelementptr inbounds %struct.win, %struct.win* %76, i32 0, i32 36
  %77 = load %struct.mline*, %struct.mline** %w_mlines84, align 8
  %arrayidx85 = getelementptr inbounds %struct.mline, %struct.mline* %77, i64 %idxprom83
  br label %cond.end.86

cond.end.86:                                      ; preds = %cond.false.80, %cond.true.72
  %cond87 = phi %struct.mline* [ %arrayidx79, %cond.true.72 ], [ %arrayidx85, %cond.false.80 ]
  store %struct.mline* %cond87, %struct.mline** %ml, align 8
  br label %if.end.117

if.else.88:                                       ; preds = %if.end.61
  %78 = load i32, i32* %x, align 4
  %cmp89 = icmp slt i32 %78, 0
  br i1 %cmp89, label %if.then.91, label %if.end.116

if.then.91:                                       ; preds = %if.else.88
  %79 = load i32, i32* %xx, align 4
  store i32 %79, i32* %x, align 4
  %80 = load i32, i32* %y, align 4
  %dec92 = add nsw i32 %80, -1
  store i32 %dec92, i32* %y, align 4
  %cmp93 = icmp slt i32 %dec92, 0
  br i1 %cmp93, label %if.then.95, label %if.end.96

if.then.95:                                       ; preds = %if.then.91
  br label %return

if.end.96:                                        ; preds = %if.then.91
  %81 = load i32, i32* %y, align 4
  %82 = load %struct.win*, %struct.win** @fore, align 8
  %w_histheight97 = getelementptr inbounds %struct.win, %struct.win* %82, i32 0, i32 77
  %83 = load i32, i32* %w_histheight97, align 4
  %cmp98 = icmp slt i32 %81, %83
  br i1 %cmp98, label %cond.true.100, label %cond.false.108

cond.true.100:                                    ; preds = %if.end.96
  %84 = load %struct.win*, %struct.win** @fore, align 8
  %w_histidx101 = getelementptr inbounds %struct.win, %struct.win* %84, i32 0, i32 78
  %85 = load i32, i32* %w_histidx101, align 4
  %86 = load i32, i32* %y, align 4
  %add102 = add nsw i32 %85, %86
  %87 = load %struct.win*, %struct.win** @fore, align 8
  %w_histheight103 = getelementptr inbounds %struct.win, %struct.win* %87, i32 0, i32 77
  %88 = load i32, i32* %w_histheight103, align 4
  %rem104 = srem i32 %add102, %88
  %idxprom105 = sext i32 %rem104 to i64
  %89 = load %struct.win*, %struct.win** @fore, align 8
  %w_hlines106 = getelementptr inbounds %struct.win, %struct.win* %89, i32 0, i32 79
  %90 = load %struct.mline*, %struct.mline** %w_hlines106, align 8
  %arrayidx107 = getelementptr inbounds %struct.mline, %struct.mline* %90, i64 %idxprom105
  br label %cond.end.114

cond.false.108:                                   ; preds = %if.end.96
  %91 = load i32, i32* %y, align 4
  %92 = load %struct.win*, %struct.win** @fore, align 8
  %w_histheight109 = getelementptr inbounds %struct.win, %struct.win* %92, i32 0, i32 77
  %93 = load i32, i32* %w_histheight109, align 4
  %sub110 = sub nsw i32 %91, %93
  %idxprom111 = sext i32 %sub110 to i64
  %94 = load %struct.win*, %struct.win** @fore, align 8
  %w_mlines112 = getelementptr inbounds %struct.win, %struct.win* %94, i32 0, i32 36
  %95 = load %struct.mline*, %struct.mline** %w_mlines112, align 8
  %arrayidx113 = getelementptr inbounds %struct.mline, %struct.mline* %95, i64 %idxprom111
  br label %cond.end.114

cond.end.114:                                     ; preds = %cond.false.108, %cond.true.100
  %cond115 = phi %struct.mline* [ %arrayidx107, %cond.true.100 ], [ %arrayidx113, %cond.false.108 ]
  store %struct.mline* %cond115, %struct.mline** %ml, align 8
  br label %if.end.116

if.end.116:                                       ; preds = %cond.end.114, %if.else.88
  br label %if.end.117

if.end.117:                                       ; preds = %if.end.116, %cond.end.86
  br label %for.inc

for.inc:                                          ; preds = %if.end.117
  %96 = load i32, i32* %sx, align 4
  %97 = load i32, i32* %x, align 4
  %add118 = add nsw i32 %97, %96
  store i32 %add118, i32* %x, align 4
  %98 = load i32, i32* %q, align 4
  store i32 %98, i32* %oq, align 4
  br label %for.cond

return:                                           ; preds = %if.then.95, %if.then.67, %if.then.58
  ret void
}

; Function Attrs: nounwind uwtable
define internal i32 @rem(i32 %x1, i32 %y1, i32 %x2, i32 %y2, i32 %redisplay, i8* %pt, i32 %yend) #0 {
entry:
  %x1.addr = alloca i32, align 4
  %y1.addr = alloca i32, align 4
  %x2.addr = alloca i32, align 4
  %y2.addr = alloca i32, align 4
  %redisplay.addr = alloca i32, align 4
  %pt.addr = alloca i8*, align 8
  %yend.addr = alloca i32, align 4
  %i = alloca i32, align 4
  %j = alloca i32, align 4
  %from = alloca i32, align 4
  %to = alloca i32, align 4
  %ry = alloca i32, align 4
  %c = alloca i32, align 4
  %l = alloca i32, align 4
  %im = alloca i8*, align 8
  %ml = alloca %struct.mline*, align 8
  %cf = alloca i32, align 4
  %cfx = alloca i32, align 4
  %font = alloca i32, align 4
  %fo = alloca i8*, align 8
  %fox = alloca i8*, align 8
  store i32 %x1, i32* %x1.addr, align 4
  store i32 %y1, i32* %y1.addr, align 4
  store i32 %x2, i32* %x2.addr, align 4
  store i32 %y2, i32* %y2.addr, align 4
  store i32 %redisplay, i32* %redisplay.addr, align 4
  store i8* %pt, i8** %pt.addr, align 8
  store i32 %yend, i32* %yend.addr, align 4
  store i32 0, i32* %l, align 4
  %0 = load %struct.markdata*, %struct.markdata** @markdata, align 8
  %second = getelementptr inbounds %struct.markdata, %struct.markdata* %0, i32 0, i32 6
  store i32 0, i32* %second, align 4
  %1 = load i32, i32* %y2.addr, align 4
  %2 = load i32, i32* %y1.addr, align 4
  %cmp = icmp slt i32 %1, %2
  br i1 %cmp, label %if.then, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %entry
  %3 = load i32, i32* %y2.addr, align 4
  %4 = load i32, i32* %y1.addr, align 4
  %cmp1 = icmp eq i32 %3, %4
  br i1 %cmp1, label %land.lhs.true, label %if.end

land.lhs.true:                                    ; preds = %lor.lhs.false
  %5 = load i32, i32* %x2.addr, align 4
  %6 = load i32, i32* %x1.addr, align 4
  %cmp2 = icmp slt i32 %5, %6
  br i1 %cmp2, label %if.then, label %if.end

if.then:                                          ; preds = %land.lhs.true, %entry
  %7 = load i32, i32* %y2.addr, align 4
  store i32 %7, i32* %i, align 4
  %8 = load i32, i32* %y1.addr, align 4
  store i32 %8, i32* %y2.addr, align 4
  %9 = load i32, i32* %i, align 4
  store i32 %9, i32* %y1.addr, align 4
  %10 = load i32, i32* %x2.addr, align 4
  store i32 %10, i32* %i, align 4
  %11 = load i32, i32* %x1.addr, align 4
  store i32 %11, i32* %x2.addr, align 4
  %12 = load i32, i32* %i, align 4
  store i32 %12, i32* %x1.addr, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %land.lhs.true, %lor.lhs.false
  %13 = load i32, i32* %y1.addr, align 4
  %14 = load %struct.markdata*, %struct.markdata** @markdata, align 8
  %hist_offset = getelementptr inbounds %struct.markdata, %struct.markdata* %14, i32 0, i32 13
  %15 = load i32, i32* %hist_offset, align 4
  %sub = sub nsw i32 %13, %15
  store i32 %sub, i32* %ry, align 4
  %16 = load i32, i32* %y1.addr, align 4
  store i32 %16, i32* %i, align 4
  %17 = load i32, i32* %redisplay.addr, align 4
  %cmp3 = icmp ne i32 %17, 2
  br i1 %cmp3, label %land.lhs.true.4, label %if.end.10

land.lhs.true.4:                                  ; preds = %if.end
  %18 = load i8*, i8** %pt.addr, align 8
  %cmp5 = icmp eq i8* %18, null
  br i1 %cmp5, label %land.lhs.true.6, label %if.end.10

land.lhs.true.6:                                  ; preds = %land.lhs.true.4
  %19 = load i32, i32* %ry, align 4
  %cmp7 = icmp slt i32 %19, 0
  br i1 %cmp7, label %if.then.8, label %if.end.10

if.then.8:                                        ; preds = %land.lhs.true.6
  %20 = load i32, i32* %ry, align 4
  %21 = load i32, i32* %i, align 4
  %sub9 = sub nsw i32 %21, %20
  store i32 %sub9, i32* %i, align 4
  store i32 0, i32* %ry, align 4
  br label %if.end.10

if.end.10:                                        ; preds = %if.then.8, %land.lhs.true.6, %land.lhs.true.4, %if.end
  br label %for.cond

for.cond:                                         ; preds = %for.inc.226, %if.end.10
  %22 = load i32, i32* %i, align 4
  %23 = load i32, i32* %y2.addr, align 4
  %cmp11 = icmp sle i32 %22, %23
  br i1 %cmp11, label %for.body, label %for.end.229

for.body:                                         ; preds = %for.cond
  %24 = load i32, i32* %redisplay.addr, align 4
  %cmp12 = icmp ne i32 %24, 2
  br i1 %cmp12, label %land.lhs.true.13, label %if.end.18

land.lhs.true.13:                                 ; preds = %for.body
  %25 = load i8*, i8** %pt.addr, align 8
  %cmp14 = icmp eq i8* %25, null
  br i1 %cmp14, label %land.lhs.true.15, label %if.end.18

land.lhs.true.15:                                 ; preds = %land.lhs.true.13
  %26 = load i32, i32* %ry, align 4
  %27 = load i32, i32* %yend.addr, align 4
  %cmp16 = icmp sgt i32 %26, %27
  br i1 %cmp16, label %if.then.17, label %if.end.18

if.then.17:                                       ; preds = %land.lhs.true.15
  br label %for.end.229

if.end.18:                                        ; preds = %land.lhs.true.15, %land.lhs.true.13, %for.body
  %28 = load i32, i32* %i, align 4
  %29 = load %struct.win*, %struct.win** @fore, align 8
  %w_histheight = getelementptr inbounds %struct.win, %struct.win* %29, i32 0, i32 77
  %30 = load i32, i32* %w_histheight, align 4
  %cmp19 = icmp slt i32 %28, %30
  br i1 %cmp19, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.end.18
  %31 = load %struct.win*, %struct.win** @fore, align 8
  %w_histidx = getelementptr inbounds %struct.win, %struct.win* %31, i32 0, i32 78
  %32 = load i32, i32* %w_histidx, align 4
  %33 = load i32, i32* %i, align 4
  %add = add nsw i32 %32, %33
  %34 = load %struct.win*, %struct.win** @fore, align 8
  %w_histheight20 = getelementptr inbounds %struct.win, %struct.win* %34, i32 0, i32 77
  %35 = load i32, i32* %w_histheight20, align 4
  %rem = srem i32 %add, %35
  %idxprom = sext i32 %rem to i64
  %36 = load %struct.win*, %struct.win** @fore, align 8
  %w_hlines = getelementptr inbounds %struct.win, %struct.win* %36, i32 0, i32 79
  %37 = load %struct.mline*, %struct.mline** %w_hlines, align 8
  %arrayidx = getelementptr inbounds %struct.mline, %struct.mline* %37, i64 %idxprom
  br label %cond.end

cond.false:                                       ; preds = %if.end.18
  %38 = load i32, i32* %i, align 4
  %39 = load %struct.win*, %struct.win** @fore, align 8
  %w_histheight21 = getelementptr inbounds %struct.win, %struct.win* %39, i32 0, i32 77
  %40 = load i32, i32* %w_histheight21, align 4
  %sub22 = sub nsw i32 %38, %40
  %idxprom23 = sext i32 %sub22 to i64
  %41 = load %struct.win*, %struct.win** @fore, align 8
  %w_mlines = getelementptr inbounds %struct.win, %struct.win* %41, i32 0, i32 36
  %42 = load %struct.mline*, %struct.mline** %w_mlines, align 8
  %arrayidx24 = getelementptr inbounds %struct.mline, %struct.mline* %42, i64 %idxprom23
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi %struct.mline* [ %arrayidx, %cond.true ], [ %arrayidx24, %cond.false ]
  store %struct.mline* %cond, %struct.mline** %ml, align 8
  %43 = load i32, i32* %i, align 4
  %44 = load i32, i32* %y1.addr, align 4
  %cmp25 = icmp eq i32 %43, %44
  br i1 %cmp25, label %cond.true.26, label %cond.false.27

cond.true.26:                                     ; preds = %cond.end
  %45 = load i32, i32* %x1.addr, align 4
  br label %cond.end.28

cond.false.27:                                    ; preds = %cond.end
  br label %cond.end.28

cond.end.28:                                      ; preds = %cond.false.27, %cond.true.26
  %cond29 = phi i32 [ %45, %cond.true.26 ], [ 0, %cond.false.27 ]
  store i32 %cond29, i32* %from, align 4
  %46 = load i32, i32* %from, align 4
  %47 = load %struct.markdata*, %struct.markdata** @markdata, align 8
  %left_mar = getelementptr inbounds %struct.markdata, %struct.markdata* %47, i32 0, i32 7
  %48 = load i32, i32* %left_mar, align 4
  %cmp30 = icmp slt i32 %46, %48
  br i1 %cmp30, label %if.then.31, label %if.end.33

if.then.31:                                       ; preds = %cond.end.28
  %49 = load %struct.markdata*, %struct.markdata** @markdata, align 8
  %left_mar32 = getelementptr inbounds %struct.markdata, %struct.markdata* %49, i32 0, i32 7
  %50 = load i32, i32* %left_mar32, align 4
  store i32 %50, i32* %from, align 4
  br label %if.end.33

if.end.33:                                        ; preds = %if.then.31, %cond.end.28
  %51 = load %struct.win*, %struct.win** @fore, align 8
  %w_layer = getelementptr inbounds %struct.win, %struct.win* %51, i32 0, i32 3
  %l_width = getelementptr inbounds %struct.layer, %struct.layer* %w_layer, i32 0, i32 1
  %52 = load i32, i32* %l_width, align 4
  store i32 %52, i32* %to, align 4
  %53 = load %struct.mline*, %struct.mline** %ml, align 8
  %image = getelementptr inbounds %struct.mline, %struct.mline* %53, i32 0, i32 0
  %54 = load i8*, i8** %image, align 8
  %55 = load i32, i32* %to, align 4
  %idx.ext = sext i32 %55 to i64
  %add.ptr = getelementptr inbounds i8, i8* %54, i64 %idx.ext
  store i8* %add.ptr, i8** %im, align 8
  br label %for.cond.34

for.cond.34:                                      ; preds = %for.inc, %if.end.33
  %56 = load i32, i32* %to, align 4
  %cmp35 = icmp sge i32 %56, 0
  br i1 %cmp35, label %for.body.36, label %for.end

for.body.36:                                      ; preds = %for.cond.34
  %57 = load i8*, i8** %im, align 8
  %incdec.ptr = getelementptr inbounds i8, i8* %57, i32 -1
  store i8* %incdec.ptr, i8** %im, align 8
  %58 = load i8, i8* %57, align 1
  %conv = zext i8 %58 to i32
  %cmp37 = icmp ne i32 %conv, 32
  br i1 %cmp37, label %if.then.39, label %if.end.40

if.then.39:                                       ; preds = %for.body.36
  br label %for.end

if.end.40:                                        ; preds = %for.body.36
  br label %for.inc

for.inc:                                          ; preds = %if.end.40
  %59 = load i32, i32* %to, align 4
  %dec = add nsw i32 %59, -1
  store i32 %dec, i32* %to, align 4
  br label %for.cond.34

for.end:                                          ; preds = %if.then.39, %for.cond.34
  %60 = load i32, i32* %i, align 4
  %61 = load i32, i32* %y2.addr, align 4
  %cmp41 = icmp eq i32 %60, %61
  br i1 %cmp41, label %land.lhs.true.43, label %if.end.47

land.lhs.true.43:                                 ; preds = %for.end
  %62 = load i32, i32* %x2.addr, align 4
  %63 = load i32, i32* %to, align 4
  %cmp44 = icmp slt i32 %62, %63
  br i1 %cmp44, label %if.then.46, label %if.end.47

if.then.46:                                       ; preds = %land.lhs.true.43
  %64 = load i32, i32* %x2.addr, align 4
  store i32 %64, i32* %to, align 4
  br label %if.end.47

if.end.47:                                        ; preds = %if.then.46, %land.lhs.true.43, %for.end
  %65 = load i32, i32* %to, align 4
  %66 = load %struct.markdata*, %struct.markdata** @markdata, align 8
  %right_mar = getelementptr inbounds %struct.markdata, %struct.markdata* %66, i32 0, i32 8
  %67 = load i32, i32* %right_mar, align 4
  %cmp48 = icmp sgt i32 %65, %67
  br i1 %cmp48, label %if.then.50, label %if.end.52

if.then.50:                                       ; preds = %if.end.47
  %68 = load %struct.markdata*, %struct.markdata** @markdata, align 8
  %right_mar51 = getelementptr inbounds %struct.markdata, %struct.markdata* %68, i32 0, i32 8
  %69 = load i32, i32* %right_mar51, align 4
  store i32 %69, i32* %to, align 4
  br label %if.end.52

if.end.52:                                        ; preds = %if.then.50, %if.end.47
  %70 = load i32, i32* %redisplay.addr, align 4
  %cmp53 = icmp eq i32 %70, 1
  br i1 %cmp53, label %land.lhs.true.55, label %if.end.65

land.lhs.true.55:                                 ; preds = %if.end.52
  %71 = load i32, i32* %from, align 4
  %72 = load i32, i32* %to, align 4
  %cmp56 = icmp sle i32 %71, %72
  br i1 %cmp56, label %land.lhs.true.58, label %if.end.65

land.lhs.true.58:                                 ; preds = %land.lhs.true.55
  %73 = load i32, i32* %ry, align 4
  %cmp59 = icmp sge i32 %73, 0
  br i1 %cmp59, label %land.lhs.true.61, label %if.end.65

land.lhs.true.61:                                 ; preds = %land.lhs.true.58
  %74 = load i32, i32* %ry, align 4
  %75 = load i32, i32* %yend.addr, align 4
  %cmp62 = icmp sle i32 %74, %75
  br i1 %cmp62, label %if.then.64, label %if.end.65

if.then.64:                                       ; preds = %land.lhs.true.61
  %76 = load i32, i32* %ry, align 4
  %77 = load i32, i32* %from, align 4
  %78 = load i32, i32* %to, align 4
  call void @MarkRedisplayLine(i32 %76, i32 %77, i32 %78, i32 0)
  br label %if.end.65

if.end.65:                                        ; preds = %if.then.64, %land.lhs.true.61, %land.lhs.true.58, %land.lhs.true.55, %if.end.52
  %79 = load i32, i32* %redisplay.addr, align 4
  %cmp66 = icmp ne i32 %79, 2
  br i1 %cmp66, label %land.lhs.true.68, label %if.end.72

land.lhs.true.68:                                 ; preds = %if.end.65
  %80 = load i8*, i8** %pt.addr, align 8
  %cmp69 = icmp eq i8* %80, null
  br i1 %cmp69, label %if.then.71, label %if.end.72

if.then.71:                                       ; preds = %land.lhs.true.68
  br label %for.inc.226

if.end.72:                                        ; preds = %land.lhs.true.68, %if.end.65
  %81 = load i32, i32* %from, align 4
  store i32 %81, i32* %j, align 4
  %82 = load %struct.win*, %struct.win** @fore, align 8
  %w_layer73 = getelementptr inbounds %struct.win, %struct.win* %82, i32 0, i32 3
  %l_encoding = getelementptr inbounds %struct.layer, %struct.layer* %w_layer73, i32 0, i32 5
  %83 = load i32, i32* %l_encoding, align 4
  %cmp74 = icmp eq i32 %83, 8
  br i1 %cmp74, label %cond.true.76, label %cond.false.90

cond.true.76:                                     ; preds = %if.end.72
  %84 = load i32, i32* %j, align 4
  %idxprom77 = sext i32 %84 to i64
  %85 = load %struct.mline*, %struct.mline** %ml, align 8
  %font78 = getelementptr inbounds %struct.mline, %struct.mline* %85, i32 0, i32 2
  %86 = load i8*, i8** %font78, align 8
  %arrayidx79 = getelementptr inbounds i8, i8* %86, i64 %idxprom77
  %87 = load i8, i8* %arrayidx79, align 1
  %conv80 = zext i8 %87 to i32
  %cmp81 = icmp eq i32 %conv80, 255
  br i1 %cmp81, label %land.lhs.true.83, label %if.end.99

land.lhs.true.83:                                 ; preds = %cond.true.76
  %88 = load i32, i32* %j, align 4
  %idxprom84 = sext i32 %88 to i64
  %89 = load %struct.mline*, %struct.mline** %ml, align 8
  %image85 = getelementptr inbounds %struct.mline, %struct.mline* %89, i32 0, i32 0
  %90 = load i8*, i8** %image85, align 8
  %arrayidx86 = getelementptr inbounds i8, i8* %90, i64 %idxprom84
  %91 = load i8, i8* %arrayidx86, align 1
  %conv87 = zext i8 %91 to i32
  %cmp88 = icmp eq i32 %conv87, 255
  br i1 %cmp88, label %if.then.97, label %if.end.99

cond.false.90:                                    ; preds = %if.end.72
  %92 = load i32, i32* %j, align 4
  %idxprom91 = sext i32 %92 to i64
  %93 = load %struct.mline*, %struct.mline** %ml, align 8
  %font92 = getelementptr inbounds %struct.mline, %struct.mline* %93, i32 0, i32 2
  %94 = load i8*, i8** %font92, align 8
  %arrayidx93 = getelementptr inbounds i8, i8* %94, i64 %idxprom91
  %95 = load i8, i8* %arrayidx93, align 1
  %conv94 = zext i8 %95 to i32
  %and = and i32 %conv94, 224
  %cmp95 = icmp eq i32 %and, 128
  br i1 %cmp95, label %if.then.97, label %if.end.99

if.then.97:                                       ; preds = %cond.false.90, %land.lhs.true.83
  %96 = load i32, i32* %j, align 4
  %dec98 = add nsw i32 %96, -1
  store i32 %dec98, i32* %j, align 4
  br label %if.end.99

if.end.99:                                        ; preds = %if.then.97, %cond.false.90, %land.lhs.true.83, %cond.true.76
  %97 = load %struct.mline*, %struct.mline** %ml, align 8
  %image100 = getelementptr inbounds %struct.mline, %struct.mline* %97, i32 0, i32 0
  %98 = load i8*, i8** %image100, align 8
  %99 = load i32, i32* %j, align 4
  %idx.ext101 = sext i32 %99 to i64
  %add.ptr102 = getelementptr inbounds i8, i8* %98, i64 %idx.ext101
  store i8* %add.ptr102, i8** %im, align 8
  %100 = load %struct.mline*, %struct.mline** %ml, align 8
  %font103 = getelementptr inbounds %struct.mline, %struct.mline* %100, i32 0, i32 2
  %101 = load i8*, i8** %font103, align 8
  %102 = load i32, i32* %j, align 4
  %idx.ext104 = sext i32 %102 to i64
  %add.ptr105 = getelementptr inbounds i8, i8* %101, i64 %idx.ext104
  store i8* %add.ptr105, i8** %fo, align 8
  %103 = load %struct.mline*, %struct.mline** %ml, align 8
  %fontx = getelementptr inbounds %struct.mline, %struct.mline* %103, i32 0, i32 3
  %104 = load i8*, i8** %fontx, align 8
  %105 = load i32, i32* %j, align 4
  %idx.ext106 = sext i32 %105 to i64
  %add.ptr107 = getelementptr inbounds i8, i8* %104, i64 %idx.ext106
  store i8* %add.ptr107, i8** %fox, align 8
  store i32 0, i32* %font, align 4
  br label %for.cond.108

for.cond.108:                                     ; preds = %for.inc.167, %if.end.99
  %106 = load i32, i32* %j, align 4
  %107 = load i32, i32* %to, align 4
  %cmp109 = icmp sle i32 %106, %107
  br i1 %cmp109, label %for.body.111, label %for.end.169

for.body.111:                                     ; preds = %for.cond.108
  %108 = load i8*, i8** %im, align 8
  %incdec.ptr112 = getelementptr inbounds i8, i8* %108, i32 1
  store i8* %incdec.ptr112, i8** %im, align 8
  %109 = load i8, i8* %108, align 1
  %conv113 = zext i8 %109 to i32
  store i32 %conv113, i32* %c, align 4
  %110 = load i8*, i8** %fo, align 8
  %incdec.ptr114 = getelementptr inbounds i8, i8* %110, i32 1
  store i8* %incdec.ptr114, i8** %fo, align 8
  %111 = load i8, i8* %110, align 1
  %conv115 = zext i8 %111 to i32
  store i32 %conv115, i32* %cf, align 4
  %112 = load i8*, i8** %fox, align 8
  %incdec.ptr116 = getelementptr inbounds i8, i8* %112, i32 1
  store i8* %incdec.ptr116, i8** %fox, align 8
  %113 = load i8, i8* %112, align 1
  %conv117 = zext i8 %113 to i32
  store i32 %conv117, i32* %cfx, align 4
  %114 = load %struct.win*, %struct.win** @fore, align 8
  %w_layer118 = getelementptr inbounds %struct.win, %struct.win* %114, i32 0, i32 3
  %l_encoding119 = getelementptr inbounds %struct.layer, %struct.layer* %w_layer118, i32 0, i32 5
  %115 = load i32, i32* %l_encoding119, align 4
  %cmp120 = icmp eq i32 %115, 8
  br i1 %cmp120, label %if.then.122, label %if.end.134

if.then.122:                                      ; preds = %for.body.111
  %116 = load i32, i32* %cf, align 4
  %shl = shl i32 %116, 8
  %117 = load i32, i32* %cfx, align 4
  %shl123 = shl i32 %117, 16
  %or = or i32 %shl, %shl123
  %118 = load i32, i32* %c, align 4
  %or124 = or i32 %118, %or
  store i32 %or124, i32* %c, align 4
  %119 = load i32, i32* %c, align 4
  %cmp125 = icmp eq i32 %119, 65535
  br i1 %cmp125, label %if.then.127, label %if.end.128

if.then.127:                                      ; preds = %if.then.122
  br label %for.inc.167

if.end.128:                                       ; preds = %if.then.122
  %120 = load i8*, i8** %pt.addr, align 8
  %121 = load i32, i32* %c, align 4
  %call = call i32 @ToUtf8_comb(i8* %120, i32 %121)
  store i32 %call, i32* %c, align 4
  %122 = load i32, i32* %c, align 4
  %123 = load i32, i32* %l, align 4
  %add129 = add nsw i32 %123, %122
  store i32 %add129, i32* %l, align 4
  %124 = load i8*, i8** %pt.addr, align 8
  %tobool = icmp ne i8* %124, null
  br i1 %tobool, label %if.then.130, label %if.end.133

if.then.130:                                      ; preds = %if.end.128
  %125 = load i32, i32* %c, align 4
  %126 = load i8*, i8** %pt.addr, align 8
  %idx.ext131 = sext i32 %125 to i64
  %add.ptr132 = getelementptr inbounds i8, i8* %126, i64 %idx.ext131
  store i8* %add.ptr132, i8** %pt.addr, align 8
  br label %if.end.133

if.end.133:                                       ; preds = %if.then.130, %if.end.128
  br label %for.inc.167

if.end.134:                                       ; preds = %for.body.111
  %127 = load i32, i32* %cf, align 4
  %tobool135 = icmp ne i32 %127, 0
  br i1 %tobool135, label %land.lhs.true.136, label %if.end.146

land.lhs.true.136:                                ; preds = %if.end.134
  %128 = load i32, i32* %cf, align 4
  %and137 = and i32 %128, 96
  %cmp138 = icmp eq i32 %and137, 0
  br i1 %cmp138, label %if.then.140, label %if.end.146

if.then.140:                                      ; preds = %land.lhs.true.136
  %129 = load i32, i32* %c, align 4
  %shl141 = shl i32 %129, 8
  %130 = load i8*, i8** %im, align 8
  %incdec.ptr142 = getelementptr inbounds i8, i8* %130, i32 1
  store i8* %incdec.ptr142, i8** %im, align 8
  %131 = load i8, i8* %130, align 1
  %conv143 = zext i8 %131 to i32
  %or144 = or i32 %shl141, %conv143
  store i32 %or144, i32* %c, align 4
  %132 = load i8*, i8** %fo, align 8
  %incdec.ptr145 = getelementptr inbounds i8, i8* %132, i32 1
  store i8* %incdec.ptr145, i8** %fo, align 8
  %133 = load i32, i32* %j, align 4
  %inc = add nsw i32 %133, 1
  store i32 %inc, i32* %j, align 4
  br label %if.end.146

if.end.146:                                       ; preds = %if.then.140, %land.lhs.true.136, %if.end.134
  %134 = load i32, i32* @pastefont, align 4
  %tobool147 = icmp ne i32 %134, 0
  br i1 %tobool147, label %if.then.148, label %if.end.160

if.then.148:                                      ; preds = %if.end.146
  %135 = load i8*, i8** %pt.addr, align 8
  %136 = load i32, i32* %c, align 4
  %137 = load i32, i32* %cf, align 4
  %shl149 = shl i32 %137, 16
  %or150 = or i32 %136, %shl149
  %138 = load %struct.win*, %struct.win** @fore, align 8
  %w_layer151 = getelementptr inbounds %struct.win, %struct.win* %138, i32 0, i32 3
  %l_encoding152 = getelementptr inbounds %struct.layer, %struct.layer* %w_layer151, i32 0, i32 5
  %139 = load i32, i32* %l_encoding152, align 4
  %call153 = call i32 @EncodeChar(i8* %135, i32 %or150, i32 %139, i32* %font)
  store i32 %call153, i32* %c, align 4
  %140 = load i32, i32* %c, align 4
  %141 = load i32, i32* %l, align 4
  %add154 = add nsw i32 %141, %140
  store i32 %add154, i32* %l, align 4
  %142 = load i8*, i8** %pt.addr, align 8
  %tobool155 = icmp ne i8* %142, null
  br i1 %tobool155, label %if.then.156, label %if.end.159

if.then.156:                                      ; preds = %if.then.148
  %143 = load i32, i32* %c, align 4
  %144 = load i8*, i8** %pt.addr, align 8
  %idx.ext157 = sext i32 %143 to i64
  %add.ptr158 = getelementptr inbounds i8, i8* %144, i64 %idx.ext157
  store i8* %add.ptr158, i8** %pt.addr, align 8
  br label %if.end.159

if.end.159:                                       ; preds = %if.then.156, %if.then.148
  br label %for.inc.167

if.end.160:                                       ; preds = %if.end.146
  %145 = load i8*, i8** %pt.addr, align 8
  %tobool161 = icmp ne i8* %145, null
  br i1 %tobool161, label %if.then.162, label %if.end.165

if.then.162:                                      ; preds = %if.end.160
  %146 = load i32, i32* %c, align 4
  %conv163 = trunc i32 %146 to i8
  %147 = load i8*, i8** %pt.addr, align 8
  %incdec.ptr164 = getelementptr inbounds i8, i8* %147, i32 1
  store i8* %incdec.ptr164, i8** %pt.addr, align 8
  store i8 %conv163, i8* %147, align 1
  br label %if.end.165

if.end.165:                                       ; preds = %if.then.162, %if.end.160
  %148 = load i32, i32* %l, align 4
  %inc166 = add nsw i32 %148, 1
  store i32 %inc166, i32* %l, align 4
  br label %for.inc.167

for.inc.167:                                      ; preds = %if.end.165, %if.end.159, %if.end.133, %if.then.127
  %149 = load i32, i32* %j, align 4
  %inc168 = add nsw i32 %149, 1
  store i32 %inc168, i32* %j, align 4
  br label %for.cond.108

for.end.169:                                      ; preds = %for.cond.108
  %150 = load i32, i32* @pastefont, align 4
  %tobool170 = icmp ne i32 %150, 0
  br i1 %tobool170, label %land.lhs.true.171, label %if.end.181

land.lhs.true.171:                                ; preds = %for.end.169
  %151 = load i32, i32* %font, align 4
  %cmp172 = icmp ne i32 %151, 0
  br i1 %cmp172, label %if.then.174, label %if.end.181

if.then.174:                                      ; preds = %land.lhs.true.171
  %152 = load i8*, i8** %pt.addr, align 8
  %tobool175 = icmp ne i8* %152, null
  br i1 %tobool175, label %if.then.176, label %if.end.179

if.then.176:                                      ; preds = %if.then.174
  %153 = load i8*, i8** %pt.addr, align 8
  %call177 = call i8* @strcpy(i8* %153, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.17, i32 0, i32 0)) #3
  %154 = load i8*, i8** %pt.addr, align 8
  %add.ptr178 = getelementptr inbounds i8, i8* %154, i64 3
  store i8* %add.ptr178, i8** %pt.addr, align 8
  br label %if.end.179

if.end.179:                                       ; preds = %if.then.176, %if.then.174
  %155 = load i32, i32* %l, align 4
  %add180 = add nsw i32 %155, 3
  store i32 %add180, i32* %l, align 4
  br label %if.end.181

if.end.181:                                       ; preds = %if.end.179, %land.lhs.true.171, %for.end.169
  %156 = load i32, i32* %i, align 4
  %157 = load i32, i32* %y2.addr, align 4
  %cmp182 = icmp ne i32 %156, %157
  br i1 %cmp182, label %land.lhs.true.184, label %if.end.225

land.lhs.true.184:                                ; preds = %if.end.181
  %158 = load i32, i32* %to, align 4
  %159 = load %struct.win*, %struct.win** @fore, align 8
  %w_layer185 = getelementptr inbounds %struct.win, %struct.win* %159, i32 0, i32 3
  %l_width186 = getelementptr inbounds %struct.layer, %struct.layer* %w_layer185, i32 0, i32 1
  %160 = load i32, i32* %l_width186, align 4
  %sub187 = sub nsw i32 %160, 1
  %cmp188 = icmp ne i32 %158, %sub187
  br i1 %cmp188, label %if.then.198, label %lor.lhs.false.190

lor.lhs.false.190:                                ; preds = %land.lhs.true.184
  %161 = load i32, i32* %to, align 4
  %add191 = add nsw i32 %161, 1
  %idxprom192 = sext i32 %add191 to i64
  %162 = load %struct.mline*, %struct.mline** %ml, align 8
  %image193 = getelementptr inbounds %struct.mline, %struct.mline* %162, i32 0, i32 0
  %163 = load i8*, i8** %image193, align 8
  %arrayidx194 = getelementptr inbounds i8, i8* %163, i64 %idxprom192
  %164 = load i8, i8* %arrayidx194, align 1
  %conv195 = zext i8 %164 to i32
  %cmp196 = icmp eq i32 %conv195, 32
  br i1 %cmp196, label %if.then.198, label %if.end.225

if.then.198:                                      ; preds = %lor.lhs.false.190, %land.lhs.true.184
  %165 = load %struct.markdata*, %struct.markdata** @markdata, align 8
  %nonl = getelementptr inbounds %struct.markdata, %struct.markdata* %165, i32 0, i32 9
  %166 = load i32, i32* %nonl, align 4
  switch i32 %166, label %sw.epilog [
    i32 0, label %sw.bb
    i32 1, label %sw.bb.212
    i32 2, label %sw.bb.213
    i32 3, label %sw.bb.219
  ]

sw.bb:                                            ; preds = %if.then.198
  %167 = load i8*, i8** %pt.addr, align 8
  %tobool199 = icmp ne i8* %167, null
  br i1 %tobool199, label %if.then.200, label %if.end.202

if.then.200:                                      ; preds = %sw.bb
  %168 = load i8*, i8** %pt.addr, align 8
  %incdec.ptr201 = getelementptr inbounds i8, i8* %168, i32 1
  store i8* %incdec.ptr201, i8** %pt.addr, align 8
  store i8 13, i8* %168, align 1
  br label %if.end.202

if.end.202:                                       ; preds = %if.then.200, %sw.bb
  %169 = load i32, i32* %l, align 4
  %inc203 = add nsw i32 %169, 1
  store i32 %inc203, i32* %l, align 4
  %170 = load i32, i32* @join_with_cr, align 4
  %tobool204 = icmp ne i32 %170, 0
  br i1 %tobool204, label %if.then.205, label %if.end.211

if.then.205:                                      ; preds = %if.end.202
  %171 = load i8*, i8** %pt.addr, align 8
  %tobool206 = icmp ne i8* %171, null
  br i1 %tobool206, label %if.then.207, label %if.end.209

if.then.207:                                      ; preds = %if.then.205
  %172 = load i8*, i8** %pt.addr, align 8
  %incdec.ptr208 = getelementptr inbounds i8, i8* %172, i32 1
  store i8* %incdec.ptr208, i8** %pt.addr, align 8
  store i8 10, i8* %172, align 1
  br label %if.end.209

if.end.209:                                       ; preds = %if.then.207, %if.then.205
  %173 = load i32, i32* %l, align 4
  %inc210 = add nsw i32 %173, 1
  store i32 %inc210, i32* %l, align 4
  br label %if.end.211

if.end.211:                                       ; preds = %if.end.209, %if.end.202
  br label %sw.epilog

sw.bb.212:                                        ; preds = %if.then.198
  br label %sw.epilog

sw.bb.213:                                        ; preds = %if.then.198
  %174 = load i8*, i8** %pt.addr, align 8
  %tobool214 = icmp ne i8* %174, null
  br i1 %tobool214, label %if.then.215, label %if.end.217

if.then.215:                                      ; preds = %sw.bb.213
  %175 = load i8*, i8** %pt.addr, align 8
  %incdec.ptr216 = getelementptr inbounds i8, i8* %175, i32 1
  store i8* %incdec.ptr216, i8** %pt.addr, align 8
  store i8 32, i8* %175, align 1
  br label %if.end.217

if.end.217:                                       ; preds = %if.then.215, %sw.bb.213
  %176 = load i32, i32* %l, align 4
  %inc218 = add nsw i32 %176, 1
  store i32 %inc218, i32* %l, align 4
  br label %sw.epilog

sw.bb.219:                                        ; preds = %if.then.198
  %177 = load i8*, i8** %pt.addr, align 8
  %tobool220 = icmp ne i8* %177, null
  br i1 %tobool220, label %if.then.221, label %if.end.223

if.then.221:                                      ; preds = %sw.bb.219
  %178 = load i8*, i8** %pt.addr, align 8
  %incdec.ptr222 = getelementptr inbounds i8, i8* %178, i32 1
  store i8* %incdec.ptr222, i8** %pt.addr, align 8
  store i8 44, i8* %178, align 1
  br label %if.end.223

if.end.223:                                       ; preds = %if.then.221, %sw.bb.219
  %179 = load i32, i32* %l, align 4
  %inc224 = add nsw i32 %179, 1
  store i32 %inc224, i32* %l, align 4
  br label %sw.epilog

sw.epilog:                                        ; preds = %if.then.198, %if.end.223, %if.end.217, %sw.bb.212, %if.end.211
  br label %if.end.225

if.end.225:                                       ; preds = %sw.epilog, %lor.lhs.false.190, %if.end.181
  br label %for.inc.226

for.inc.226:                                      ; preds = %if.end.225, %if.then.71
  %180 = load i32, i32* %i, align 4
  %inc227 = add nsw i32 %180, 1
  store i32 %inc227, i32* %i, align 4
  %181 = load i32, i32* %ry, align 4
  %inc228 = add nsw i32 %181, 1
  store i32 %inc228, i32* %ry, align 4
  br label %for.cond

for.end.229:                                      ; preds = %if.then.17, %for.cond
  %182 = load i32, i32* %l, align 4
  ret i32 %182
}

declare void @Search(i32) #1

; Function Attrs: nounwind
declare i8* @realloc(i8*, i64) #2

declare void @LRefreshAll(%struct.layer*, i32) #1

declare void @ExitOverlayPage() #1

declare void @WindowChanged(%struct.win*, i32) #1

declare void @WriteFile(%struct.acluser*, i8*, i32) #1

; Function Attrs: nounwind uwtable
define internal i32 @is_letter(i32) #0 {
entry:
  %retval = alloca i32, align 4
  %c.addr = alloca i8, align 1
  %c = trunc i32 %0 to i8
  store i8 %c, i8* %c.addr, align 1
  %1 = load i8, i8* %c.addr, align 1
  %conv = sext i8 %1 to i32
  %cmp = icmp sge i32 %conv, 97
  br i1 %cmp, label %land.lhs.true, label %lor.lhs.false

land.lhs.true:                                    ; preds = %entry
  %2 = load i8, i8* %c.addr, align 1
  %conv2 = sext i8 %2 to i32
  %cmp3 = icmp sle i32 %conv2, 122
  br i1 %cmp3, label %if.then, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %land.lhs.true, %entry
  %3 = load i8, i8* %c.addr, align 1
  %conv5 = sext i8 %3 to i32
  %cmp6 = icmp sge i32 %conv5, 65
  br i1 %cmp6, label %land.lhs.true.8, label %lor.lhs.false.12

land.lhs.true.8:                                  ; preds = %lor.lhs.false
  %4 = load i8, i8* %c.addr, align 1
  %conv9 = sext i8 %4 to i32
  %cmp10 = icmp sle i32 %conv9, 90
  br i1 %cmp10, label %if.then, label %lor.lhs.false.12

lor.lhs.false.12:                                 ; preds = %land.lhs.true.8, %lor.lhs.false
  %5 = load i8, i8* %c.addr, align 1
  %conv13 = sext i8 %5 to i32
  %cmp14 = icmp sge i32 %conv13, 48
  br i1 %cmp14, label %land.lhs.true.16, label %lor.lhs.false.20

land.lhs.true.16:                                 ; preds = %lor.lhs.false.12
  %6 = load i8, i8* %c.addr, align 1
  %conv17 = sext i8 %6 to i32
  %cmp18 = icmp sle i32 %conv17, 57
  br i1 %cmp18, label %if.then, label %lor.lhs.false.20

lor.lhs.false.20:                                 ; preds = %land.lhs.true.16, %lor.lhs.false.12
  %7 = load i8, i8* %c.addr, align 1
  %conv21 = sext i8 %7 to i32
  %cmp22 = icmp eq i32 %conv21, 95
  br i1 %cmp22, label %if.then, label %lor.lhs.false.24

lor.lhs.false.24:                                 ; preds = %lor.lhs.false.20
  %8 = load i8, i8* %c.addr, align 1
  %conv25 = sext i8 %8 to i32
  %cmp26 = icmp eq i32 %conv25, 46
  br i1 %cmp26, label %if.then, label %lor.lhs.false.28

lor.lhs.false.28:                                 ; preds = %lor.lhs.false.24
  %9 = load i8, i8* %c.addr, align 1
  %conv29 = sext i8 %9 to i32
  %cmp30 = icmp eq i32 %conv29, 64
  br i1 %cmp30, label %if.then, label %lor.lhs.false.32

lor.lhs.false.32:                                 ; preds = %lor.lhs.false.28
  %10 = load i8, i8* %c.addr, align 1
  %conv33 = sext i8 %10 to i32
  %cmp34 = icmp eq i32 %conv33, 58
  br i1 %cmp34, label %if.then, label %lor.lhs.false.36

lor.lhs.false.36:                                 ; preds = %lor.lhs.false.32
  %11 = load i8, i8* %c.addr, align 1
  %conv37 = sext i8 %11 to i32
  %cmp38 = icmp eq i32 %conv37, 37
  br i1 %cmp38, label %if.then, label %lor.lhs.false.40

lor.lhs.false.40:                                 ; preds = %lor.lhs.false.36
  %12 = load i8, i8* %c.addr, align 1
  %conv41 = sext i8 %12 to i32
  %cmp42 = icmp eq i32 %conv41, 33
  br i1 %cmp42, label %if.then, label %lor.lhs.false.44

lor.lhs.false.44:                                 ; preds = %lor.lhs.false.40
  %13 = load i8, i8* %c.addr, align 1
  %conv45 = sext i8 %13 to i32
  %cmp46 = icmp eq i32 %conv45, 45
  br i1 %cmp46, label %if.then, label %lor.lhs.false.48

lor.lhs.false.48:                                 ; preds = %lor.lhs.false.44
  %14 = load i8, i8* %c.addr, align 1
  %conv49 = sext i8 %14 to i32
  %cmp50 = icmp eq i32 %conv49, 43
  br i1 %cmp50, label %if.then, label %if.else

if.then:                                          ; preds = %lor.lhs.false.48, %lor.lhs.false.44, %lor.lhs.false.40, %lor.lhs.false.36, %lor.lhs.false.32, %lor.lhs.false.28, %lor.lhs.false.24, %lor.lhs.false.20, %land.lhs.true.16, %land.lhs.true.8, %land.lhs.true
  store i32 1, i32* %retval
  br label %return

if.else:                                          ; preds = %lor.lhs.false.48
  %15 = load i8, i8* %c.addr, align 1
  %conv52 = sext i8 %15 to i32
  %cmp53 = icmp ne i32 %conv52, 32
  br i1 %cmp53, label %if.then.55, label %if.end

if.then.55:                                       ; preds = %if.else
  store i32 2, i32* %retval
  br label %return

if.end:                                           ; preds = %if.else
  br label %if.end.56

if.end.56:                                        ; preds = %if.end
  store i32 0, i32* %retval
  br label %return

return:                                           ; preds = %if.end.56, %if.then.55, %if.then
  %16 = load i32, i32* %retval
  ret i32 %16
}

declare i32 @ToUtf8_comb(i8*, i32) #1

declare i32 @EncodeChar(i8*, i32, i32, i32*) #1

; Function Attrs: nounwind
declare i8* @strcpy(i8*, i8*) #2

declare void @LCDisplayLineWrap(%struct.layer*, %struct.mline*, i32, i32, i32, i32) #1

declare void @LCDisplayLine(%struct.layer*, %struct.mline*, i32, i32, i32, i32) #1

declare i32 @ContainsSpecialDeffont(%struct.mline*, i32, i32, i32) #1

declare void @PUTCHAR(i32) #1

declare void @LScrollV(%struct.layer*, i32, i32, i32, i32) #1

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind }
attributes #4 = { nounwind readnone "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #5 = { nounwind readnone }

!llvm.ident = !{!0}

!0 = !{!"clang version 3.7.0 (tags/RELEASE_370/final)"}
