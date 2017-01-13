; ModuleID = './search.bc'
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
%struct.markdata = type { %struct.win*, %struct.acluser*, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [100 x i8], i32, [200 x i8], i32, i32, i32, i32, %struct.anon.3 }
%struct.anon.3 = type { i32, i32, i32 }

@flayer = external global %struct.layer*, align 8
@.str = private unnamed_addr constant [20 x i8] c"No previous pattern\00", align 1
@.str.1 = private unnamed_addr constant [2 x i8] c"/\00", align 1
@.str.2 = private unnamed_addr constant [2 x i8] c"?\00", align 1
@isprompts = internal global [4 x i8*] [i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.4, i32 0, i32 0), i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.5, i32 0, i32 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.6, i32 0, i32 0), i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.7, i32 0, i32 0)], align 16
@search_ic = common global i32 0, align 4
@.str.3 = private unnamed_addr constant [18 x i8] c"Pattern not found\00", align 1
@fore = external global %struct.win*, align 8
@.str.4 = private unnamed_addr constant [20 x i8] c"I-search backward: \00", align 1
@.str.5 = private unnamed_addr constant [28 x i8] c"failing I-search backward: \00", align 1
@.str.6 = private unnamed_addr constant [11 x i8] c"I-search: \00", align 1
@.str.7 = private unnamed_addr constant [19 x i8] c"failing I-search: \00", align 1
@.str.8 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1

; Function Attrs: nounwind uwtable
define void @Search(i32 %dir) #0 {
entry:
  %dir.addr = alloca i32, align 4
  %markdata = alloca %struct.markdata*, align 8
  store i32 %dir, i32* %dir.addr, align 4
  %0 = load i32, i32* %dir.addr, align 4
  %cmp = icmp eq i32 %0, 0
  br i1 %cmp, label %if.then, label %if.else.8

if.then:                                          ; preds = %entry
  %1 = load %struct.layer*, %struct.layer** @flayer, align 8
  %l_data = getelementptr inbounds %struct.layer, %struct.layer* %1, i32 0, i32 7
  %2 = load i8*, i8** %l_data, align 8
  %3 = bitcast i8* %2 to %struct.markdata*
  store %struct.markdata* %3, %struct.markdata** %markdata, align 8
  %4 = load %struct.markdata*, %struct.markdata** %markdata, align 8
  %isdir = getelementptr inbounds %struct.markdata, %struct.markdata* %4, i32 0, i32 18
  %5 = load i32, i32* %isdir, align 4
  %cmp1 = icmp sgt i32 %5, 0
  br i1 %cmp1, label %if.then.2, label %if.else

if.then.2:                                        ; preds = %if.then
  call void @searchend(i8* null, i32 0, i8* null)
  br label %if.end.7

if.else:                                          ; preds = %if.then
  %6 = load %struct.markdata*, %struct.markdata** %markdata, align 8
  %isdir3 = getelementptr inbounds %struct.markdata, %struct.markdata* %6, i32 0, i32 18
  %7 = load i32, i32* %isdir3, align 4
  %cmp4 = icmp slt i32 %7, 0
  br i1 %cmp4, label %if.then.5, label %if.else.6

if.then.5:                                        ; preds = %if.else
  call void @backsearchend(i8* null, i32 0, i8* null)
  br label %if.end

if.else.6:                                        ; preds = %if.else
  call void (i32, i8*, ...) @LMsg(i32 0, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i32 0, i32 0))
  br label %if.end

if.end:                                           ; preds = %if.else.6, %if.then.5
  br label %if.end.7

if.end.7:                                         ; preds = %if.end, %if.then.2
  br label %if.end.12

if.else.8:                                        ; preds = %entry
  %8 = load i32, i32* %dir.addr, align 4
  %cmp9 = icmp sgt i32 %8, 0
  %cond = select i1 %cmp9, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.2, i32 0, i32 0)
  %9 = load i32, i32* %dir.addr, align 4
  %cmp10 = icmp sgt i32 %9, 0
  %cond11 = select i1 %cmp10, void (i8*, i32, i8*)* @searchend, void (i8*, i32, i8*)* @backsearchend
  call void @Input(i8* %cond, i32 99, i32 0, void (i8*, i32, i8*)* %cond11, i8* null, i32 0)
  br label %if.end.12

if.end.12:                                        ; preds = %if.else.8, %if.end.7
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @searchend(i8* %buf, i32 %len, i8* %data) #0 {
entry:
  %buf.addr = alloca i8*, align 8
  %len.addr = alloca i32, align 4
  %data.addr = alloca i8*, align 8
  %x = alloca i32, align 4
  %sx = alloca i32, align 4
  %ex = alloca i32, align 4
  %y = alloca i32, align 4
  %markdata = alloca %struct.markdata*, align 8
  %p = alloca %struct.win*, align 8
  store i8* %buf, i8** %buf.addr, align 8
  store i32 %len, i32* %len.addr, align 4
  store i8* %data, i8** %data.addr, align 8
  store i32 0, i32* %x, align 4
  %0 = load %struct.layer*, %struct.layer** @flayer, align 8
  %l_data = getelementptr inbounds %struct.layer, %struct.layer* %0, i32 0, i32 7
  %1 = load i8*, i8** %l_data, align 8
  %2 = bitcast i8* %1 to %struct.markdata*
  store %struct.markdata* %2, %struct.markdata** %markdata, align 8
  %3 = load %struct.markdata*, %struct.markdata** %markdata, align 8
  %md_window = getelementptr inbounds %struct.markdata, %struct.markdata* %3, i32 0, i32 0
  %4 = load %struct.win*, %struct.win** %md_window, align 8
  store %struct.win* %4, %struct.win** %p, align 8
  %5 = load %struct.markdata*, %struct.markdata** %markdata, align 8
  %isdir = getelementptr inbounds %struct.markdata, %struct.markdata* %5, i32 0, i32 18
  store i32 1, i32* %isdir, align 4
  %6 = load i32, i32* %len.addr, align 4
  %tobool = icmp ne i32 %6, 0
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %7 = load %struct.markdata*, %struct.markdata** %markdata, align 8
  %isstr = getelementptr inbounds %struct.markdata, %struct.markdata* %7, i32 0, i32 14
  %arraydecay = getelementptr inbounds [100 x i8], [100 x i8]* %isstr, i32 0, i32 0
  %8 = load i8*, i8** %buf.addr, align 8
  %call = call i8* @strcpy(i8* %arraydecay, i8* %8) #4
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %9 = load %struct.markdata*, %struct.markdata** %markdata, align 8
  %cx = getelementptr inbounds %struct.markdata, %struct.markdata* %9, i32 0, i32 2
  %10 = load i32, i32* %cx, align 4
  %add = add nsw i32 %10, 1
  store i32 %add, i32* %sx, align 4
  %11 = load %struct.layer*, %struct.layer** @flayer, align 8
  %l_width = getelementptr inbounds %struct.layer, %struct.layer* %11, i32 0, i32 1
  %12 = load i32, i32* %l_width, align 4
  %sub = sub nsw i32 %12, 1
  store i32 %sub, i32* %ex, align 4
  %13 = load %struct.markdata*, %struct.markdata** %markdata, align 8
  %cy = getelementptr inbounds %struct.markdata, %struct.markdata* %13, i32 0, i32 3
  %14 = load i32, i32* %cy, align 4
  store i32 %14, i32* %y, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end
  %15 = load i32, i32* %y, align 4
  %16 = load %struct.win*, %struct.win** %p, align 8
  %w_histheight = getelementptr inbounds %struct.win, %struct.win* %16, i32 0, i32 77
  %17 = load i32, i32* %w_histheight, align 4
  %18 = load %struct.layer*, %struct.layer** @flayer, align 8
  %l_height = getelementptr inbounds %struct.layer, %struct.layer* %18, i32 0, i32 2
  %19 = load i32, i32* %l_height, align 4
  %add1 = add nsw i32 %17, %19
  %cmp = icmp slt i32 %15, %add1
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %20 = load %struct.markdata*, %struct.markdata** %markdata, align 8
  %isstr2 = getelementptr inbounds %struct.markdata, %struct.markdata* %20, i32 0, i32 14
  %arraydecay3 = getelementptr inbounds [100 x i8], [100 x i8]* %isstr2, i32 0, i32 0
  %21 = load i32, i32* %y, align 4
  %22 = load i32, i32* %sx, align 4
  %23 = load i32, i32* %ex, align 4
  %call4 = call i32 @matchword(i8* %arraydecay3, i32 %21, i32 %22, i32 %23)
  store i32 %call4, i32* %x, align 4
  %cmp5 = icmp sge i32 %call4, 0
  br i1 %cmp5, label %if.then.6, label %if.end.7

if.then.6:                                        ; preds = %for.body
  br label %for.end

if.end.7:                                         ; preds = %for.body
  br label %for.inc

for.inc:                                          ; preds = %if.end.7
  %24 = load i32, i32* %y, align 4
  %inc = add nsw i32 %24, 1
  store i32 %inc, i32* %y, align 4
  store i32 0, i32* %sx, align 4
  br label %for.cond

for.end:                                          ; preds = %if.then.6, %for.cond
  %25 = load i32, i32* %y, align 4
  %26 = load %struct.win*, %struct.win** %p, align 8
  %w_histheight8 = getelementptr inbounds %struct.win, %struct.win* %26, i32 0, i32 77
  %27 = load i32, i32* %w_histheight8, align 4
  %28 = load %struct.layer*, %struct.layer** @flayer, align 8
  %l_height9 = getelementptr inbounds %struct.layer, %struct.layer* %28, i32 0, i32 2
  %29 = load i32, i32* %l_height9, align 4
  %add10 = add nsw i32 %27, %29
  %cmp11 = icmp sge i32 %25, %add10
  br i1 %cmp11, label %if.then.12, label %if.else

if.then.12:                                       ; preds = %for.end
  %30 = load %struct.layer*, %struct.layer** @flayer, align 8
  %31 = load %struct.markdata*, %struct.markdata** %markdata, align 8
  %cx13 = getelementptr inbounds %struct.markdata, %struct.markdata* %31, i32 0, i32 2
  %32 = load i32, i32* %cx13, align 4
  %33 = load %struct.markdata*, %struct.markdata** %markdata, align 8
  %cy14 = getelementptr inbounds %struct.markdata, %struct.markdata* %33, i32 0, i32 3
  %34 = load i32, i32* %cy14, align 4
  %35 = load %struct.markdata*, %struct.markdata** %markdata, align 8
  %hist_offset = getelementptr inbounds %struct.markdata, %struct.markdata* %35, i32 0, i32 13
  %36 = load i32, i32* %hist_offset, align 4
  %sub15 = sub nsw i32 %34, %36
  call void @LGotoPos(%struct.layer* %30, i32 %32, i32 %sub15)
  call void (i32, i8*, ...) @LMsg(i32 0, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.3, i32 0, i32 0))
  br label %if.end.16

if.else:                                          ; preds = %for.end
  %37 = load i32, i32* %x, align 4
  %38 = load i32, i32* %y, align 4
  call void @revto(i32 %37, i32 %38)
  br label %if.end.16

if.end.16:                                        ; preds = %if.else, %if.then.12
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @backsearchend(i8* %buf, i32 %len, i8* %data) #0 {
entry:
  %buf.addr = alloca i8*, align 8
  %len.addr = alloca i32, align 4
  %data.addr = alloca i8*, align 8
  %sx = alloca i32, align 4
  %ex = alloca i32, align 4
  %x = alloca i32, align 4
  %y = alloca i32, align 4
  %markdata = alloca %struct.markdata*, align 8
  store i8* %buf, i8** %buf.addr, align 8
  store i32 %len, i32* %len.addr, align 4
  store i8* %data, i8** %data.addr, align 8
  store i32 -1, i32* %x, align 4
  %0 = load %struct.layer*, %struct.layer** @flayer, align 8
  %l_data = getelementptr inbounds %struct.layer, %struct.layer* %0, i32 0, i32 7
  %1 = load i8*, i8** %l_data, align 8
  %2 = bitcast i8* %1 to %struct.markdata*
  store %struct.markdata* %2, %struct.markdata** %markdata, align 8
  %3 = load %struct.markdata*, %struct.markdata** %markdata, align 8
  %isdir = getelementptr inbounds %struct.markdata, %struct.markdata* %3, i32 0, i32 18
  store i32 -1, i32* %isdir, align 4
  %4 = load i32, i32* %len.addr, align 4
  %tobool = icmp ne i32 %4, 0
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %5 = load %struct.markdata*, %struct.markdata** %markdata, align 8
  %isstr = getelementptr inbounds %struct.markdata, %struct.markdata* %5, i32 0, i32 14
  %arraydecay = getelementptr inbounds [100 x i8], [100 x i8]* %isstr, i32 0, i32 0
  %6 = load i8*, i8** %buf.addr, align 8
  %call = call i8* @strcpy(i8* %arraydecay, i8* %6) #4
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %7 = load %struct.markdata*, %struct.markdata** %markdata, align 8
  %cx = getelementptr inbounds %struct.markdata, %struct.markdata* %7, i32 0, i32 2
  %8 = load i32, i32* %cx, align 4
  %sub = sub nsw i32 %8, 1
  store i32 %sub, i32* %ex, align 4
  %9 = load %struct.markdata*, %struct.markdata** %markdata, align 8
  %cy = getelementptr inbounds %struct.markdata, %struct.markdata* %9, i32 0, i32 3
  %10 = load i32, i32* %cy, align 4
  store i32 %10, i32* %y, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end
  %11 = load i32, i32* %y, align 4
  %cmp = icmp sge i32 %11, 0
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  store i32 0, i32* %sx, align 4
  br label %while.cond

while.cond:                                       ; preds = %while.body, %for.body
  %12 = load %struct.markdata*, %struct.markdata** %markdata, align 8
  %isstr1 = getelementptr inbounds %struct.markdata, %struct.markdata* %12, i32 0, i32 14
  %arraydecay2 = getelementptr inbounds [100 x i8], [100 x i8]* %isstr1, i32 0, i32 0
  %13 = load i32, i32* %y, align 4
  %14 = load i32, i32* %sx, align 4
  %15 = load i32, i32* %ex, align 4
  %call3 = call i32 @matchword(i8* %arraydecay2, i32 %13, i32 %14, i32 %15)
  store i32 %call3, i32* %sx, align 4
  %cmp4 = icmp sge i32 %call3, 0
  br i1 %cmp4, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %16 = load i32, i32* %sx, align 4
  %inc = add nsw i32 %16, 1
  store i32 %inc, i32* %sx, align 4
  store i32 %16, i32* %x, align 4
  br label %while.cond

while.end:                                        ; preds = %while.cond
  %17 = load i32, i32* %x, align 4
  %cmp5 = icmp sge i32 %17, 0
  br i1 %cmp5, label %if.then.6, label %if.end.7

if.then.6:                                        ; preds = %while.end
  br label %for.end

if.end.7:                                         ; preds = %while.end
  br label %for.inc

for.inc:                                          ; preds = %if.end.7
  %18 = load i32, i32* %y, align 4
  %dec = add nsw i32 %18, -1
  store i32 %dec, i32* %y, align 4
  %19 = load %struct.layer*, %struct.layer** @flayer, align 8
  %l_width = getelementptr inbounds %struct.layer, %struct.layer* %19, i32 0, i32 1
  %20 = load i32, i32* %l_width, align 4
  %sub8 = sub nsw i32 %20, 1
  store i32 %sub8, i32* %ex, align 4
  br label %for.cond

for.end:                                          ; preds = %if.then.6, %for.cond
  %21 = load i32, i32* %y, align 4
  %cmp9 = icmp slt i32 %21, 0
  br i1 %cmp9, label %if.then.10, label %if.else

if.then.10:                                       ; preds = %for.end
  %22 = load %struct.layer*, %struct.layer** @flayer, align 8
  %23 = load %struct.markdata*, %struct.markdata** %markdata, align 8
  %cx11 = getelementptr inbounds %struct.markdata, %struct.markdata* %23, i32 0, i32 2
  %24 = load i32, i32* %cx11, align 4
  %25 = load %struct.markdata*, %struct.markdata** %markdata, align 8
  %cy12 = getelementptr inbounds %struct.markdata, %struct.markdata* %25, i32 0, i32 3
  %26 = load i32, i32* %cy12, align 4
  %27 = load %struct.markdata*, %struct.markdata** %markdata, align 8
  %hist_offset = getelementptr inbounds %struct.markdata, %struct.markdata* %27, i32 0, i32 13
  %28 = load i32, i32* %hist_offset, align 4
  %sub13 = sub nsw i32 %26, %28
  call void @LGotoPos(%struct.layer* %22, i32 %24, i32 %sub13)
  call void (i32, i8*, ...) @LMsg(i32 0, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.3, i32 0, i32 0))
  br label %if.end.14

if.else:                                          ; preds = %for.end
  %29 = load i32, i32* %x, align 4
  %30 = load i32, i32* %y, align 4
  call void @revto(i32 %29, i32 %30)
  br label %if.end.14

if.end.14:                                        ; preds = %if.else, %if.then.10
  ret void
}

declare void @LMsg(i32, i8*, ...) #1

declare void @Input(i8*, i32, i32, void (i8*, i32, i8*)*, i8*, i32) #1

; Function Attrs: nounwind uwtable
define void @ISearch(i32 %dir) #0 {
entry:
  %dir.addr = alloca i32, align 4
  %markdata = alloca %struct.markdata*, align 8
  store i32 %dir, i32* %dir.addr, align 4
  %0 = load %struct.layer*, %struct.layer** @flayer, align 8
  %l_data = getelementptr inbounds %struct.layer, %struct.layer* %0, i32 0, i32 7
  %1 = load i8*, i8** %l_data, align 8
  %2 = bitcast i8* %1 to %struct.markdata*
  store %struct.markdata* %2, %struct.markdata** %markdata, align 8
  %3 = load i32, i32* %dir.addr, align 4
  %4 = load %struct.markdata*, %struct.markdata** %markdata, align 8
  %isstartdir = getelementptr inbounds %struct.markdata, %struct.markdata* %4, i32 0, i32 20
  store i32 %3, i32* %isstartdir, align 4
  %5 = load %struct.markdata*, %struct.markdata** %markdata, align 8
  %isdir = getelementptr inbounds %struct.markdata, %struct.markdata* %5, i32 0, i32 18
  store i32 %3, i32* %isdir, align 4
  %6 = load %struct.markdata*, %struct.markdata** %markdata, align 8
  %cx = getelementptr inbounds %struct.markdata, %struct.markdata* %6, i32 0, i32 2
  %7 = load i32, i32* %cx, align 4
  %8 = load %struct.markdata*, %struct.markdata** %markdata, align 8
  %cy = getelementptr inbounds %struct.markdata, %struct.markdata* %8, i32 0, i32 3
  %9 = load i32, i32* %cy, align 4
  %10 = load %struct.layer*, %struct.layer** @flayer, align 8
  %l_width = getelementptr inbounds %struct.layer, %struct.layer* %10, i32 0, i32 1
  %11 = load i32, i32* %l_width, align 4
  %mul = mul nsw i32 %9, %11
  %add = add nsw i32 %7, %mul
  %12 = load %struct.markdata*, %struct.markdata** %markdata, align 8
  %isstartpos = getelementptr inbounds %struct.markdata, %struct.markdata* %12, i32 0, i32 19
  store i32 %add, i32* %isstartpos, align 4
  %13 = load %struct.markdata*, %struct.markdata** %markdata, align 8
  %isstrl = getelementptr inbounds %struct.markdata, %struct.markdata* %13, i32 0, i32 15
  store i32 0, i32* %isstrl, align 4
  %14 = load %struct.markdata*, %struct.markdata** %markdata, align 8
  %isistrl = getelementptr inbounds %struct.markdata, %struct.markdata* %14, i32 0, i32 17
  store i32 0, i32* %isistrl, align 4
  %15 = load %struct.markdata*, %struct.markdata** %markdata, align 8
  %cy1 = getelementptr inbounds %struct.markdata, %struct.markdata* %15, i32 0, i32 3
  %16 = load i32, i32* %cy1, align 4
  %17 = load %struct.markdata*, %struct.markdata** %markdata, align 8
  %hist_offset = getelementptr inbounds %struct.markdata, %struct.markdata* %17, i32 0, i32 13
  %18 = load i32, i32* %hist_offset, align 4
  %sub = sub nsw i32 %16, %18
  %19 = load %struct.layer*, %struct.layer** @flayer, align 8
  %l_height = getelementptr inbounds %struct.layer, %struct.layer* %19, i32 0, i32 2
  %20 = load i32, i32* %l_height, align 4
  %sub2 = sub nsw i32 %20, 1
  %cmp = icmp eq i32 %sub, %sub2
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %21 = load %struct.markdata*, %struct.markdata** %markdata, align 8
  %cx3 = getelementptr inbounds %struct.markdata, %struct.markdata* %21, i32 0, i32 2
  %22 = load i32, i32* %cx3, align 4
  %23 = load %struct.markdata*, %struct.markdata** %markdata, align 8
  %cy4 = getelementptr inbounds %struct.markdata, %struct.markdata* %23, i32 0, i32 3
  %24 = load i32, i32* %cy4, align 4
  %25 = load %struct.layer*, %struct.layer** @flayer, align 8
  %l_height5 = getelementptr inbounds %struct.layer, %struct.layer* %25, i32 0, i32 2
  %26 = load i32, i32* %l_height5, align 4
  %sub6 = sub nsw i32 %26, 1
  %cmp7 = icmp sgt i32 %sub6, 0
  br i1 %cmp7, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.then
  %27 = load %struct.layer*, %struct.layer** @flayer, align 8
  %l_height8 = getelementptr inbounds %struct.layer, %struct.layer* %27, i32 0, i32 2
  %28 = load i32, i32* %l_height8, align 4
  %sub9 = sub nsw i32 %28, 1
  %sub10 = sub nsw i32 %sub9, 1
  br label %cond.end

cond.false:                                       ; preds = %if.then
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %sub10, %cond.true ], [ 1, %cond.false ]
  call void @revto_line(i32 %22, i32 %24, i32 %cond)
  br label %if.end

if.end:                                           ; preds = %cond.end, %entry
  %29 = load i32, i32* %dir.addr, align 4
  %add11 = add nsw i32 %29, 1
  %idxprom = sext i32 %add11 to i64
  %arrayidx = getelementptr inbounds [4 x i8*], [4 x i8*]* @isprompts, i32 0, i64 %idxprom
  %30 = load i8*, i8** %arrayidx, align 8
  call void @Input(i8* %30, i32 99, i32 2, void (i8*, i32, i8*)* @is_process, i8* null, i32 0)
  %31 = load %struct.layer*, %struct.layer** @flayer, align 8
  %32 = load %struct.markdata*, %struct.markdata** %markdata, align 8
  %cx12 = getelementptr inbounds %struct.markdata, %struct.markdata* %32, i32 0, i32 2
  %33 = load i32, i32* %cx12, align 4
  %34 = load %struct.markdata*, %struct.markdata** %markdata, align 8
  %cy13 = getelementptr inbounds %struct.markdata, %struct.markdata* %34, i32 0, i32 3
  %35 = load i32, i32* %cy13, align 4
  %36 = load %struct.markdata*, %struct.markdata** %markdata, align 8
  %hist_offset14 = getelementptr inbounds %struct.markdata, %struct.markdata* %36, i32 0, i32 13
  %37 = load i32, i32* %hist_offset14, align 4
  %sub15 = sub nsw i32 %35, %37
  call void @LGotoPos(%struct.layer* %31, i32 %33, i32 %sub15)
  %38 = load %struct.markdata*, %struct.markdata** %markdata, align 8
  %cx16 = getelementptr inbounds %struct.markdata, %struct.markdata* %38, i32 0, i32 2
  %39 = load i32, i32* %cx16, align 4
  %40 = load %struct.layer*, %struct.layer** @flayer, align 8
  %l_x = getelementptr inbounds %struct.layer, %struct.layer* %40, i32 0, i32 3
  store i32 %39, i32* %l_x, align 4
  %41 = load %struct.markdata*, %struct.markdata** %markdata, align 8
  %cy17 = getelementptr inbounds %struct.markdata, %struct.markdata* %41, i32 0, i32 3
  %42 = load i32, i32* %cy17, align 4
  %43 = load %struct.markdata*, %struct.markdata** %markdata, align 8
  %hist_offset18 = getelementptr inbounds %struct.markdata, %struct.markdata* %43, i32 0, i32 13
  %44 = load i32, i32* %hist_offset18, align 4
  %sub19 = sub nsw i32 %42, %44
  %45 = load %struct.layer*, %struct.layer** @flayer, align 8
  %l_y = getelementptr inbounds %struct.layer, %struct.layer* %45, i32 0, i32 4
  store i32 %sub19, i32* %l_y, align 4
  ret void
}

declare void @revto_line(i32, i32, i32) #1

; Function Attrs: nounwind uwtable
define internal void @is_process(i8* %p, i32 %n, i8* %data) #0 {
entry:
  %p.addr = alloca i8*, align 8
  %n.addr = alloca i32, align 4
  %data.addr = alloca i8*, align 8
  %pos = alloca i32, align 4
  %x = alloca i32, align 4
  %y = alloca i32, align 4
  %dir = alloca i32, align 4
  %markdata = alloca %struct.markdata*, align 8
  %oldlay = alloca %struct.layer*, align 8
  %oldcvlist = alloca %struct.canvas*, align 8
  %cv = alloca %struct.canvas*, align 8
  store i8* %p, i8** %p.addr, align 8
  store i32 %n, i32* %n.addr, align 4
  store i8* %data, i8** %data.addr, align 8
  %0 = load i32, i32* %n.addr, align 4
  %cmp = icmp eq i32 %0, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  br label %if.end.166

if.end:                                           ; preds = %entry
  br label %do.body

do.body:                                          ; preds = %if.end
  br label %do.end

do.end:                                           ; preds = %do.body
  %1 = load %struct.layer*, %struct.layer** @flayer, align 8
  %l_next = getelementptr inbounds %struct.layer, %struct.layer* %1, i32 0, i32 8
  %2 = load %struct.layer*, %struct.layer** %l_next, align 8
  %l_data = getelementptr inbounds %struct.layer, %struct.layer* %2, i32 0, i32 7
  %3 = load i8*, i8** %l_data, align 8
  %4 = bitcast i8* %3 to %struct.markdata*
  store %struct.markdata* %4, %struct.markdata** %markdata, align 8
  %5 = load %struct.markdata*, %struct.markdata** %markdata, align 8
  %cx = getelementptr inbounds %struct.markdata, %struct.markdata* %5, i32 0, i32 2
  %6 = load i32, i32* %cx, align 4
  %7 = load %struct.markdata*, %struct.markdata** %markdata, align 8
  %cy = getelementptr inbounds %struct.markdata, %struct.markdata* %7, i32 0, i32 3
  %8 = load i32, i32* %cy, align 4
  %9 = load %struct.layer*, %struct.layer** @flayer, align 8
  %l_width = getelementptr inbounds %struct.layer, %struct.layer* %9, i32 0, i32 1
  %10 = load i32, i32* %l_width, align 4
  %mul = mul nsw i32 %8, %10
  %add = add nsw i32 %6, %mul
  store i32 %add, i32* %pos, align 4
  %11 = load %struct.layer*, %struct.layer** @flayer, align 8
  %12 = load %struct.markdata*, %struct.markdata** %markdata, align 8
  %cx1 = getelementptr inbounds %struct.markdata, %struct.markdata* %12, i32 0, i32 2
  %13 = load i32, i32* %cx1, align 4
  %14 = load %struct.markdata*, %struct.markdata** %markdata, align 8
  %cy2 = getelementptr inbounds %struct.markdata, %struct.markdata* %14, i32 0, i32 3
  %15 = load i32, i32* %cy2, align 4
  %16 = load %struct.markdata*, %struct.markdata** %markdata, align 8
  %hist_offset = getelementptr inbounds %struct.markdata, %struct.markdata* %16, i32 0, i32 13
  %17 = load i32, i32* %hist_offset, align 4
  %sub = sub nsw i32 %15, %17
  call void @LGotoPos(%struct.layer* %11, i32 %13, i32 %sub)
  %18 = load i8*, i8** %p.addr, align 8
  %19 = load i8, i8* %18, align 1
  %conv = sext i8 %19 to i32
  switch i32 %conv, label %sw.default [
    i32 7, label %sw.bb
    i32 27, label %sw.bb.3
    i32 11, label %sw.bb.4
    i32 23, label %sw.bb.4
    i32 8, label %sw.bb.5
    i32 127, label %sw.bb.5
    i32 19, label %sw.bb.12
    i32 18, label %sw.bb.12
  ]

sw.bb:                                            ; preds = %do.end
  %20 = load %struct.markdata*, %struct.markdata** %markdata, align 8
  %isstartpos = getelementptr inbounds %struct.markdata, %struct.markdata* %20, i32 0, i32 19
  %21 = load i32, i32* %isstartpos, align 4
  store i32 %21, i32* %pos, align 4
  br label %sw.bb.3

sw.bb.3:                                          ; preds = %do.end, %sw.bb
  %22 = load i8*, i8** %p.addr, align 8
  store i8 0, i8* %22, align 1
  br label %sw.epilog

sw.bb.4:                                          ; preds = %do.end, %do.end
  %23 = load %struct.markdata*, %struct.markdata** %markdata, align 8
  %isistrl = getelementptr inbounds %struct.markdata, %struct.markdata* %23, i32 0, i32 17
  store i32 1, i32* %isistrl, align 4
  br label %sw.bb.5

sw.bb.5:                                          ; preds = %do.end, %do.end, %sw.bb.4
  %24 = load %struct.markdata*, %struct.markdata** %markdata, align 8
  %isistrl6 = getelementptr inbounds %struct.markdata, %struct.markdata* %24, i32 0, i32 17
  %25 = load i32, i32* %isistrl6, align 4
  %cmp7 = icmp eq i32 %25, 0
  br i1 %cmp7, label %if.then.9, label %if.end.10

if.then.9:                                        ; preds = %sw.bb.5
  br label %if.end.166

if.end.10:                                        ; preds = %sw.bb.5
  %26 = load %struct.markdata*, %struct.markdata** %markdata, align 8
  %isistrl11 = getelementptr inbounds %struct.markdata, %struct.markdata* %26, i32 0, i32 17
  %27 = load i32, i32* %isistrl11, align 4
  %dec = add nsw i32 %27, -1
  store i32 %dec, i32* %isistrl11, align 4
  %28 = load %struct.markdata*, %struct.markdata** %markdata, align 8
  %call = call i32 @is_redo(%struct.markdata* %28)
  store i32 %call, i32* %pos, align 4
  %29 = load i8*, i8** %p.addr, align 8
  store i8 8, i8* %29, align 1
  br label %sw.epilog

sw.bb.12:                                         ; preds = %do.end, %do.end
  %30 = load %struct.markdata*, %struct.markdata** %markdata, align 8
  %isistrl13 = getelementptr inbounds %struct.markdata, %struct.markdata* %30, i32 0, i32 17
  %31 = load i32, i32* %isistrl13, align 4
  %cmp14 = icmp sge i32 %31, 200
  br i1 %cmp14, label %if.then.16, label %if.end.17

if.then.16:                                       ; preds = %sw.bb.12
  br label %if.end.166

if.end.17:                                        ; preds = %sw.bb.12
  %32 = load i8*, i8** %p.addr, align 8
  %33 = load i8, i8* %32, align 1
  %conv18 = sext i8 %33 to i32
  %cmp19 = icmp eq i32 %conv18, 19
  %cond = select i1 %cmp19, i32 1, i32 -1
  store i32 %cond, i32* %dir, align 4
  %34 = load i32, i32* %dir, align 4
  %35 = load i32, i32* %pos, align 4
  %add21 = add nsw i32 %35, %34
  store i32 %add21, i32* %pos, align 4
  %36 = load %struct.markdata*, %struct.markdata** %markdata, align 8
  %isdir = getelementptr inbounds %struct.markdata, %struct.markdata* %36, i32 0, i32 18
  %37 = load i32, i32* %isdir, align 4
  %38 = load i32, i32* %dir, align 4
  %cmp22 = icmp eq i32 %37, %38
  br i1 %cmp22, label %land.lhs.true, label %if.end.35

land.lhs.true:                                    ; preds = %if.end.17
  %39 = load %struct.markdata*, %struct.markdata** %markdata, align 8
  %isistrl24 = getelementptr inbounds %struct.markdata, %struct.markdata* %39, i32 0, i32 17
  %40 = load i32, i32* %isistrl24, align 4
  %cmp25 = icmp eq i32 %40, 0
  br i1 %cmp25, label %if.then.27, label %if.end.35

if.then.27:                                       ; preds = %land.lhs.true
  %41 = load %struct.markdata*, %struct.markdata** %markdata, align 8
  %isistr = getelementptr inbounds %struct.markdata, %struct.markdata* %41, i32 0, i32 16
  %arraydecay = getelementptr inbounds [200 x i8], [200 x i8]* %isistr, i32 0, i32 0
  %42 = load %struct.markdata*, %struct.markdata** %markdata, align 8
  %isstr = getelementptr inbounds %struct.markdata, %struct.markdata* %42, i32 0, i32 14
  %arraydecay28 = getelementptr inbounds [100 x i8], [100 x i8]* %isstr, i32 0, i32 0
  %call29 = call i8* @strcpy(i8* %arraydecay, i8* %arraydecay28) #4
  %43 = load %struct.markdata*, %struct.markdata** %markdata, align 8
  %isstr30 = getelementptr inbounds %struct.markdata, %struct.markdata* %43, i32 0, i32 14
  %arraydecay31 = getelementptr inbounds [100 x i8], [100 x i8]* %isstr30, i32 0, i32 0
  %call32 = call i64 @strlen(i8* %arraydecay31) #5
  %conv33 = trunc i64 %call32 to i32
  %44 = load %struct.markdata*, %struct.markdata** %markdata, align 8
  %isstrl = getelementptr inbounds %struct.markdata, %struct.markdata* %44, i32 0, i32 15
  store i32 %conv33, i32* %isstrl, align 4
  %45 = load %struct.markdata*, %struct.markdata** %markdata, align 8
  %isistrl34 = getelementptr inbounds %struct.markdata, %struct.markdata* %45, i32 0, i32 17
  store i32 %conv33, i32* %isistrl34, align 4
  br label %sw.epilog

if.end.35:                                        ; preds = %land.lhs.true, %if.end.17
  %46 = load i32, i32* %dir, align 4
  %47 = load %struct.markdata*, %struct.markdata** %markdata, align 8
  %isdir36 = getelementptr inbounds %struct.markdata, %struct.markdata* %47, i32 0, i32 18
  store i32 %46, i32* %isdir36, align 4
  %48 = load i8*, i8** %p.addr, align 8
  %49 = load i8, i8* %48, align 1
  %50 = load %struct.markdata*, %struct.markdata** %markdata, align 8
  %isistrl37 = getelementptr inbounds %struct.markdata, %struct.markdata* %50, i32 0, i32 17
  %51 = load i32, i32* %isistrl37, align 4
  %inc = add nsw i32 %51, 1
  store i32 %inc, i32* %isistrl37, align 4
  %idxprom = sext i32 %51 to i64
  %52 = load %struct.markdata*, %struct.markdata** %markdata, align 8
  %isistr38 = getelementptr inbounds %struct.markdata, %struct.markdata* %52, i32 0, i32 16
  %arrayidx = getelementptr inbounds [200 x i8], [200 x i8]* %isistr38, i32 0, i64 %idxprom
  store i8 %49, i8* %arrayidx, align 1
  br label %sw.epilog

sw.default:                                       ; preds = %do.end
  %53 = load i8*, i8** %p.addr, align 8
  %54 = load i8, i8* %53, align 1
  %conv39 = sext i8 %54 to i32
  %cmp40 = icmp slt i32 %conv39, 32
  br i1 %cmp40, label %if.then.49, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %sw.default
  %55 = load %struct.markdata*, %struct.markdata** %markdata, align 8
  %isistrl42 = getelementptr inbounds %struct.markdata, %struct.markdata* %55, i32 0, i32 17
  %56 = load i32, i32* %isistrl42, align 4
  %cmp43 = icmp sge i32 %56, 200
  br i1 %cmp43, label %if.then.49, label %lor.lhs.false.45

lor.lhs.false.45:                                 ; preds = %lor.lhs.false
  %57 = load %struct.markdata*, %struct.markdata** %markdata, align 8
  %isstrl46 = getelementptr inbounds %struct.markdata, %struct.markdata* %57, i32 0, i32 15
  %58 = load i32, i32* %isstrl46, align 4
  %cmp47 = icmp sge i32 %58, 99
  br i1 %cmp47, label %if.then.49, label %if.end.50

if.then.49:                                       ; preds = %lor.lhs.false.45, %lor.lhs.false, %sw.default
  br label %if.end.166

if.end.50:                                        ; preds = %lor.lhs.false.45
  %59 = load i8*, i8** %p.addr, align 8
  %60 = load i8, i8* %59, align 1
  %61 = load %struct.markdata*, %struct.markdata** %markdata, align 8
  %isstrl51 = getelementptr inbounds %struct.markdata, %struct.markdata* %61, i32 0, i32 15
  %62 = load i32, i32* %isstrl51, align 4
  %inc52 = add nsw i32 %62, 1
  store i32 %inc52, i32* %isstrl51, align 4
  %idxprom53 = sext i32 %62 to i64
  %63 = load %struct.markdata*, %struct.markdata** %markdata, align 8
  %isstr54 = getelementptr inbounds %struct.markdata, %struct.markdata* %63, i32 0, i32 14
  %arrayidx55 = getelementptr inbounds [100 x i8], [100 x i8]* %isstr54, i32 0, i64 %idxprom53
  store i8 %60, i8* %arrayidx55, align 1
  %64 = load i8*, i8** %p.addr, align 8
  %65 = load i8, i8* %64, align 1
  %66 = load %struct.markdata*, %struct.markdata** %markdata, align 8
  %isistrl56 = getelementptr inbounds %struct.markdata, %struct.markdata* %66, i32 0, i32 17
  %67 = load i32, i32* %isistrl56, align 4
  %inc57 = add nsw i32 %67, 1
  store i32 %inc57, i32* %isistrl56, align 4
  %idxprom58 = sext i32 %67 to i64
  %68 = load %struct.markdata*, %struct.markdata** %markdata, align 8
  %isistr59 = getelementptr inbounds %struct.markdata, %struct.markdata* %68, i32 0, i32 16
  %arrayidx60 = getelementptr inbounds [200 x i8], [200 x i8]* %isistr59, i32 0, i64 %idxprom58
  store i8 %65, i8* %arrayidx60, align 1
  %69 = load %struct.markdata*, %struct.markdata** %markdata, align 8
  %isstrl61 = getelementptr inbounds %struct.markdata, %struct.markdata* %69, i32 0, i32 15
  %70 = load i32, i32* %isstrl61, align 4
  %idxprom62 = sext i32 %70 to i64
  %71 = load %struct.markdata*, %struct.markdata** %markdata, align 8
  %isstr63 = getelementptr inbounds %struct.markdata, %struct.markdata* %71, i32 0, i32 14
  %arrayidx64 = getelementptr inbounds [100 x i8], [100 x i8]* %isstr63, i32 0, i64 %idxprom62
  store i8 0, i8* %arrayidx64, align 1
  br label %do.body.65

do.body.65:                                       ; preds = %if.end.50
  br label %do.end.66

do.end.66:                                        ; preds = %do.body.65
  br label %sw.epilog

sw.epilog:                                        ; preds = %do.end.66, %if.end.35, %if.then.27, %if.end.10, %sw.bb.3
  %72 = load i8*, i8** %p.addr, align 8
  %73 = load i8, i8* %72, align 1
  %conv67 = sext i8 %73 to i32
  %tobool = icmp ne i32 %conv67, 0
  br i1 %tobool, label %land.lhs.true.68, label %if.end.81

land.lhs.true.68:                                 ; preds = %sw.epilog
  %74 = load i8*, i8** %p.addr, align 8
  %75 = load i8, i8* %74, align 1
  %conv69 = sext i8 %75 to i32
  %cmp70 = icmp ne i32 %conv69, 8
  br i1 %cmp70, label %if.then.72, label %if.end.81

if.then.72:                                       ; preds = %land.lhs.true.68
  %76 = load %struct.markdata*, %struct.markdata** %markdata, align 8
  %isstr73 = getelementptr inbounds %struct.markdata, %struct.markdata* %76, i32 0, i32 14
  %arraydecay74 = getelementptr inbounds [100 x i8], [100 x i8]* %isstr73, i32 0, i32 0
  %77 = load %struct.markdata*, %struct.markdata** %markdata, align 8
  %isstrl75 = getelementptr inbounds %struct.markdata, %struct.markdata* %77, i32 0, i32 15
  %78 = load i32, i32* %isstrl75, align 4
  %79 = load i32, i32* %pos, align 4
  %80 = load %struct.layer*, %struct.layer** @flayer, align 8
  %l_width76 = getelementptr inbounds %struct.layer, %struct.layer* %80, i32 0, i32 1
  %81 = load i32, i32* %l_width76, align 4
  %82 = load %struct.markdata*, %struct.markdata** %markdata, align 8
  %md_window = getelementptr inbounds %struct.markdata, %struct.markdata* %82, i32 0, i32 0
  %83 = load %struct.win*, %struct.win** %md_window, align 8
  %w_histheight = getelementptr inbounds %struct.win, %struct.win* %83, i32 0, i32 77
  %84 = load i32, i32* %w_histheight, align 4
  %85 = load %struct.layer*, %struct.layer** @flayer, align 8
  %l_height = getelementptr inbounds %struct.layer, %struct.layer* %85, i32 0, i32 2
  %86 = load i32, i32* %l_height, align 4
  %add77 = add nsw i32 %84, %86
  %mul78 = mul nsw i32 %81, %add77
  %87 = load %struct.markdata*, %struct.markdata** %markdata, align 8
  %isdir79 = getelementptr inbounds %struct.markdata, %struct.markdata* %87, i32 0, i32 18
  %88 = load i32, i32* %isdir79, align 4
  %call80 = call i32 @is_bm(i8* %arraydecay74, i32 %78, i32 %79, i32 %mul78, i32 %88)
  store i32 %call80, i32* %pos, align 4
  br label %if.end.81

if.end.81:                                        ; preds = %if.then.72, %land.lhs.true.68, %sw.epilog
  %89 = load i32, i32* %pos, align 4
  %cmp82 = icmp sge i32 %89, 0
  br i1 %cmp82, label %if.then.84, label %if.end.131

if.then.84:                                       ; preds = %if.end.81
  %90 = load i32, i32* %pos, align 4
  %91 = load %struct.layer*, %struct.layer** @flayer, align 8
  %l_width85 = getelementptr inbounds %struct.layer, %struct.layer* %91, i32 0, i32 1
  %92 = load i32, i32* %l_width85, align 4
  %rem = srem i32 %90, %92
  store i32 %rem, i32* %x, align 4
  %93 = load i32, i32* %pos, align 4
  %94 = load %struct.layer*, %struct.layer** @flayer, align 8
  %l_width86 = getelementptr inbounds %struct.layer, %struct.layer* %94, i32 0, i32 1
  %95 = load i32, i32* %l_width86, align 4
  %div = sdiv i32 %93, %95
  store i32 %div, i32* %y, align 4
  br label %do.body.87

do.body.87:                                       ; preds = %if.then.84
  %96 = load %struct.layer*, %struct.layer** @flayer, align 8
  store %struct.layer* %96, %struct.layer** %oldlay, align 8
  br label %do.body.88

do.body.88:                                       ; preds = %do.body.87
  br label %do.end.89

do.end.89:                                        ; preds = %do.body.88
  %97 = load %struct.layer*, %struct.layer** @flayer, align 8
  %l_next90 = getelementptr inbounds %struct.layer, %struct.layer* %97, i32 0, i32 8
  %98 = load %struct.layer*, %struct.layer** %l_next90, align 8
  store %struct.layer* %98, %struct.layer** @flayer, align 8
  %99 = load %struct.layer*, %struct.layer** @flayer, align 8
  %l_cvlist = getelementptr inbounds %struct.layer, %struct.layer* %99, i32 0, i32 0
  %100 = load %struct.canvas*, %struct.canvas** %l_cvlist, align 8
  store %struct.canvas* %100, %struct.canvas** %oldcvlist, align 8
  br label %do.body.91

do.body.91:                                       ; preds = %do.end.89
  br label %do.end.92

do.end.92:                                        ; preds = %do.body.91
  %101 = load %struct.layer*, %struct.layer** %oldlay, align 8
  %l_cvlist93 = getelementptr inbounds %struct.layer, %struct.layer* %101, i32 0, i32 0
  %102 = load %struct.canvas*, %struct.canvas** %l_cvlist93, align 8
  %103 = load %struct.layer*, %struct.layer** @flayer, align 8
  %l_cvlist94 = getelementptr inbounds %struct.layer, %struct.layer* %103, i32 0, i32 0
  store %struct.canvas* %102, %struct.canvas** %l_cvlist94, align 8
  %104 = load %struct.layer*, %struct.layer** @flayer, align 8
  %l_cvlist95 = getelementptr inbounds %struct.layer, %struct.layer* %104, i32 0, i32 0
  %105 = load %struct.canvas*, %struct.canvas** %l_cvlist95, align 8
  store %struct.canvas* %105, %struct.canvas** %cv, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %do.end.92
  %106 = load %struct.canvas*, %struct.canvas** %cv, align 8
  %tobool96 = icmp ne %struct.canvas* %106, null
  br i1 %tobool96, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %107 = load %struct.layer*, %struct.layer** @flayer, align 8
  %108 = load %struct.canvas*, %struct.canvas** %cv, align 8
  %c_layer = getelementptr inbounds %struct.canvas, %struct.canvas* %108, i32 0, i32 9
  store %struct.layer* %107, %struct.layer** %c_layer, align 8
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %109 = load %struct.canvas*, %struct.canvas** %cv, align 8
  %c_lnext = getelementptr inbounds %struct.canvas, %struct.canvas* %109, i32 0, i32 10
  %110 = load %struct.canvas*, %struct.canvas** %c_lnext, align 8
  store %struct.canvas* %110, %struct.canvas** %cv, align 8
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %111 = load %struct.layer*, %struct.layer** @flayer, align 8
  %l_layfn = getelementptr inbounds %struct.layer, %struct.layer* %111, i32 0, i32 6
  %112 = load %struct.LayFuncs*, %struct.LayFuncs** %l_layfn, align 8
  %lf_LayRedisplayLine = getelementptr inbounds %struct.LayFuncs, %struct.LayFuncs* %112, i32 0, i32 2
  %113 = load void (i32, i32, i32, i32)*, void (i32, i32, i32, i32)** %lf_LayRedisplayLine, align 8
  %114 = load %struct.layer*, %struct.layer** @flayer, align 8
  %l_height97 = getelementptr inbounds %struct.layer, %struct.layer* %114, i32 0, i32 2
  %115 = load i32, i32* %l_height97, align 4
  %sub98 = sub nsw i32 %115, 1
  %116 = load %struct.layer*, %struct.layer** @flayer, align 8
  %l_width99 = getelementptr inbounds %struct.layer, %struct.layer* %116, i32 0, i32 1
  %117 = load i32, i32* %l_width99, align 4
  %sub100 = sub nsw i32 %117, 1
  call void %113(i32 %sub98, i32 0, i32 %sub100, i32 0)
  %118 = load i32, i32* %x, align 4
  %119 = load i32, i32* %y, align 4
  call void @revto(i32 %118, i32 %119)
  %120 = load %struct.markdata*, %struct.markdata** %markdata, align 8
  %cy101 = getelementptr inbounds %struct.markdata, %struct.markdata* %120, i32 0, i32 3
  %121 = load i32, i32* %cy101, align 4
  %122 = load %struct.markdata*, %struct.markdata** %markdata, align 8
  %hist_offset102 = getelementptr inbounds %struct.markdata, %struct.markdata* %122, i32 0, i32 13
  %123 = load i32, i32* %hist_offset102, align 4
  %sub103 = sub nsw i32 %121, %123
  %124 = load %struct.layer*, %struct.layer** @flayer, align 8
  %l_height104 = getelementptr inbounds %struct.layer, %struct.layer* %124, i32 0, i32 2
  %125 = load i32, i32* %l_height104, align 4
  %sub105 = sub nsw i32 %125, 1
  %cmp106 = icmp eq i32 %sub103, %sub105
  br i1 %cmp106, label %if.then.108, label %if.end.119

if.then.108:                                      ; preds = %for.end
  %126 = load %struct.markdata*, %struct.markdata** %markdata, align 8
  %cx109 = getelementptr inbounds %struct.markdata, %struct.markdata* %126, i32 0, i32 2
  %127 = load i32, i32* %cx109, align 4
  %128 = load %struct.markdata*, %struct.markdata** %markdata, align 8
  %cy110 = getelementptr inbounds %struct.markdata, %struct.markdata* %128, i32 0, i32 3
  %129 = load i32, i32* %cy110, align 4
  %130 = load %struct.layer*, %struct.layer** @flayer, align 8
  %l_height111 = getelementptr inbounds %struct.layer, %struct.layer* %130, i32 0, i32 2
  %131 = load i32, i32* %l_height111, align 4
  %sub112 = sub nsw i32 %131, 1
  %cmp113 = icmp sgt i32 %sub112, 0
  br i1 %cmp113, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.then.108
  %132 = load %struct.layer*, %struct.layer** @flayer, align 8
  %l_height115 = getelementptr inbounds %struct.layer, %struct.layer* %132, i32 0, i32 2
  %133 = load i32, i32* %l_height115, align 4
  %sub116 = sub nsw i32 %133, 1
  %sub117 = sub nsw i32 %sub116, 1
  br label %cond.end

cond.false:                                       ; preds = %if.then.108
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond118 = phi i32 [ %sub117, %cond.true ], [ 1, %cond.false ]
  call void @revto_line(i32 %127, i32 %129, i32 %cond118)
  br label %if.end.119

if.end.119:                                       ; preds = %cond.end, %for.end
  %134 = load %struct.layer*, %struct.layer** %oldlay, align 8
  store %struct.layer* %134, %struct.layer** @flayer, align 8
  %135 = load %struct.layer*, %struct.layer** @flayer, align 8
  %l_cvlist120 = getelementptr inbounds %struct.layer, %struct.layer* %135, i32 0, i32 0
  %136 = load %struct.canvas*, %struct.canvas** %l_cvlist120, align 8
  store %struct.canvas* %136, %struct.canvas** %cv, align 8
  br label %for.cond.121

for.cond.121:                                     ; preds = %for.inc.125, %if.end.119
  %137 = load %struct.canvas*, %struct.canvas** %cv, align 8
  %tobool122 = icmp ne %struct.canvas* %137, null
  br i1 %tobool122, label %for.body.123, label %for.end.127

for.body.123:                                     ; preds = %for.cond.121
  %138 = load %struct.layer*, %struct.layer** @flayer, align 8
  %139 = load %struct.canvas*, %struct.canvas** %cv, align 8
  %c_layer124 = getelementptr inbounds %struct.canvas, %struct.canvas* %139, i32 0, i32 9
  store %struct.layer* %138, %struct.layer** %c_layer124, align 8
  br label %for.inc.125

for.inc.125:                                      ; preds = %for.body.123
  %140 = load %struct.canvas*, %struct.canvas** %cv, align 8
  %c_lnext126 = getelementptr inbounds %struct.canvas, %struct.canvas* %140, i32 0, i32 10
  %141 = load %struct.canvas*, %struct.canvas** %c_lnext126, align 8
  store %struct.canvas* %141, %struct.canvas** %cv, align 8
  br label %for.cond.121

for.end.127:                                      ; preds = %for.cond.121
  %142 = load %struct.canvas*, %struct.canvas** %oldcvlist, align 8
  %143 = load %struct.layer*, %struct.layer** @flayer, align 8
  %l_next128 = getelementptr inbounds %struct.layer, %struct.layer* %143, i32 0, i32 8
  %144 = load %struct.layer*, %struct.layer** %l_next128, align 8
  %l_cvlist129 = getelementptr inbounds %struct.layer, %struct.layer* %144, i32 0, i32 0
  store %struct.canvas* %142, %struct.canvas** %l_cvlist129, align 8
  br label %do.end.130

do.end.130:                                       ; preds = %for.end.127
  br label %if.end.131

if.end.131:                                       ; preds = %do.end.130, %if.end.81
  %145 = load i8*, i8** %p.addr, align 8
  %146 = load i8, i8* %145, align 1
  %tobool132 = icmp ne i8 %146, 0
  br i1 %tobool132, label %if.then.133, label %if.end.149

if.then.133:                                      ; preds = %if.end.131
  %147 = load %struct.markdata*, %struct.markdata** %markdata, align 8
  %isdir134 = getelementptr inbounds %struct.markdata, %struct.markdata* %147, i32 0, i32 18
  %148 = load i32, i32* %isdir134, align 4
  %149 = load i32, i32* %pos, align 4
  %cmp135 = icmp slt i32 %149, 0
  %conv136 = zext i1 %cmp135 to i32
  %add137 = add nsw i32 %148, %conv136
  %add138 = add nsw i32 %add137, 1
  %idxprom139 = sext i32 %add138 to i64
  %arrayidx140 = getelementptr inbounds [4 x i8*], [4 x i8*]* @isprompts, i32 0, i64 %idxprom139
  %150 = load i8*, i8** %arrayidx140, align 8
  %151 = load %struct.markdata*, %struct.markdata** %markdata, align 8
  %isstrl141 = getelementptr inbounds %struct.markdata, %struct.markdata* %151, i32 0, i32 15
  %152 = load i32, i32* %isstrl141, align 4
  %tobool142 = icmp ne i32 %152, 0
  br i1 %tobool142, label %cond.true.143, label %cond.false.146

cond.true.143:                                    ; preds = %if.then.133
  %153 = load %struct.markdata*, %struct.markdata** %markdata, align 8
  %isstr144 = getelementptr inbounds %struct.markdata, %struct.markdata* %153, i32 0, i32 14
  %arraydecay145 = getelementptr inbounds [100 x i8], [100 x i8]* %isstr144, i32 0, i32 0
  br label %cond.end.147

cond.false.146:                                   ; preds = %if.then.133
  br label %cond.end.147

cond.end.147:                                     ; preds = %cond.false.146, %cond.true.143
  %cond148 = phi i8* [ %arraydecay145, %cond.true.143 ], [ getelementptr inbounds ([1 x i8], [1 x i8]* @.str.8, i32 0, i32 0), %cond.false.146 ]
  call void @inp_setprompt(i8* %150, i8* %cond148)
  br label %if.end.149

if.end.149:                                       ; preds = %cond.end.147, %if.end.131
  %154 = load %struct.markdata*, %struct.markdata** %markdata, align 8
  %cx150 = getelementptr inbounds %struct.markdata, %struct.markdata* %154, i32 0, i32 2
  %155 = load i32, i32* %cx150, align 4
  %156 = load %struct.layer*, %struct.layer** @flayer, align 8
  %l_x = getelementptr inbounds %struct.layer, %struct.layer* %156, i32 0, i32 3
  store i32 %155, i32* %l_x, align 4
  %157 = load %struct.markdata*, %struct.markdata** %markdata, align 8
  %cy151 = getelementptr inbounds %struct.markdata, %struct.markdata* %157, i32 0, i32 3
  %158 = load i32, i32* %cy151, align 4
  %159 = load %struct.markdata*, %struct.markdata** %markdata, align 8
  %hist_offset152 = getelementptr inbounds %struct.markdata, %struct.markdata* %159, i32 0, i32 13
  %160 = load i32, i32* %hist_offset152, align 4
  %sub153 = sub nsw i32 %158, %160
  %161 = load %struct.layer*, %struct.layer** @flayer, align 8
  %l_y = getelementptr inbounds %struct.layer, %struct.layer* %161, i32 0, i32 4
  store i32 %sub153, i32* %l_y, align 4
  %162 = load %struct.layer*, %struct.layer** @flayer, align 8
  %163 = load %struct.layer*, %struct.layer** @flayer, align 8
  %l_x154 = getelementptr inbounds %struct.layer, %struct.layer* %163, i32 0, i32 3
  %164 = load i32, i32* %l_x154, align 4
  %165 = load %struct.layer*, %struct.layer** @flayer, align 8
  %l_y155 = getelementptr inbounds %struct.layer, %struct.layer* %165, i32 0, i32 4
  %166 = load i32, i32* %l_y155, align 4
  call void @LGotoPos(%struct.layer* %162, i32 %164, i32 %166)
  %167 = load i8*, i8** %p.addr, align 8
  %168 = load i8, i8* %167, align 1
  %tobool156 = icmp ne i8 %168, 0
  br i1 %tobool156, label %if.end.166, label %if.then.157

if.then.157:                                      ; preds = %if.end.149
  %169 = load %struct.markdata*, %struct.markdata** %markdata, align 8
  %cx158 = getelementptr inbounds %struct.markdata, %struct.markdata* %169, i32 0, i32 2
  %170 = load i32, i32* %cx158, align 4
  %171 = load %struct.layer*, %struct.layer** @flayer, align 8
  %l_next159 = getelementptr inbounds %struct.layer, %struct.layer* %171, i32 0, i32 8
  %172 = load %struct.layer*, %struct.layer** %l_next159, align 8
  %l_x160 = getelementptr inbounds %struct.layer, %struct.layer* %172, i32 0, i32 3
  store i32 %170, i32* %l_x160, align 4
  %173 = load %struct.markdata*, %struct.markdata** %markdata, align 8
  %cy161 = getelementptr inbounds %struct.markdata, %struct.markdata* %173, i32 0, i32 3
  %174 = load i32, i32* %cy161, align 4
  %175 = load %struct.markdata*, %struct.markdata** %markdata, align 8
  %hist_offset162 = getelementptr inbounds %struct.markdata, %struct.markdata* %175, i32 0, i32 13
  %176 = load i32, i32* %hist_offset162, align 4
  %sub163 = sub nsw i32 %174, %176
  %177 = load %struct.layer*, %struct.layer** @flayer, align 8
  %l_next164 = getelementptr inbounds %struct.layer, %struct.layer* %177, i32 0, i32 8
  %178 = load %struct.layer*, %struct.layer** %l_next164, align 8
  %l_y165 = getelementptr inbounds %struct.layer, %struct.layer* %178, i32 0, i32 4
  store i32 %sub163, i32* %l_y165, align 4
  br label %if.end.166

if.end.166:                                       ; preds = %if.then, %if.then.9, %if.then.16, %if.then.49, %if.then.157, %if.end.149
  ret void
}

declare void @LGotoPos(%struct.layer*, i32, i32) #1

; Function Attrs: nounwind
declare i8* @strcpy(i8*, i8*) #2

; Function Attrs: nounwind uwtable
define internal i32 @matchword(i8* %pattern, i32 %y, i32 %sx, i32 %ex) #0 {
entry:
  %retval = alloca i32, align 4
  %pattern.addr = alloca i8*, align 8
  %y.addr = alloca i32, align 4
  %sx.addr = alloca i32, align 4
  %ex.addr = alloca i32, align 4
  %ip = alloca i8*, align 8
  %cp = alloca i8*, align 8
  %pp = alloca i8*, align 8
  %cpe = alloca i8*, align 8
  %cy = alloca i32, align 4
  store i8* %pattern, i8** %pattern.addr, align 8
  store i32 %y, i32* %y.addr, align 4
  store i32 %sx, i32* %sx.addr, align 4
  store i32 %ex, i32* %ex.addr, align 4
  %0 = load %struct.layer*, %struct.layer** @flayer, align 8
  %l_data = getelementptr inbounds %struct.layer, %struct.layer* %0, i32 0, i32 7
  %1 = load i8*, i8** %l_data, align 8
  %2 = bitcast i8* %1 to %struct.markdata*
  %md_window = getelementptr inbounds %struct.markdata, %struct.markdata* %2, i32 0, i32 0
  %3 = load %struct.win*, %struct.win** %md_window, align 8
  store %struct.win* %3, %struct.win** @fore, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %4 = load i32, i32* %sx.addr, align 4
  %5 = load i32, i32* %ex.addr, align 4
  %cmp = icmp sle i32 %4, %5
  br i1 %cmp, label %for.body, label %for.end.110

for.body:                                         ; preds = %for.cond
  %6 = load i32, i32* %y.addr, align 4
  store i32 %6, i32* %cy, align 4
  %7 = load i32, i32* %cy, align 4
  %8 = load %struct.win*, %struct.win** @fore, align 8
  %w_histheight = getelementptr inbounds %struct.win, %struct.win* %8, i32 0, i32 77
  %9 = load i32, i32* %w_histheight, align 4
  %cmp1 = icmp slt i32 %7, %9
  br i1 %cmp1, label %cond.true, label %cond.false

cond.true:                                        ; preds = %for.body
  %10 = load %struct.win*, %struct.win** @fore, align 8
  %w_histidx = getelementptr inbounds %struct.win, %struct.win* %10, i32 0, i32 78
  %11 = load i32, i32* %w_histidx, align 4
  %12 = load i32, i32* %cy, align 4
  %add = add nsw i32 %11, %12
  %13 = load %struct.win*, %struct.win** @fore, align 8
  %w_histheight2 = getelementptr inbounds %struct.win, %struct.win* %13, i32 0, i32 77
  %14 = load i32, i32* %w_histheight2, align 4
  %rem = srem i32 %add, %14
  %idxprom = sext i32 %rem to i64
  %15 = load %struct.win*, %struct.win** @fore, align 8
  %w_hlines = getelementptr inbounds %struct.win, %struct.win* %15, i32 0, i32 79
  %16 = load %struct.mline*, %struct.mline** %w_hlines, align 8
  %arrayidx = getelementptr inbounds %struct.mline, %struct.mline* %16, i64 %idxprom
  br label %cond.end

cond.false:                                       ; preds = %for.body
  %17 = load i32, i32* %cy, align 4
  %18 = load %struct.win*, %struct.win** @fore, align 8
  %w_histheight3 = getelementptr inbounds %struct.win, %struct.win* %18, i32 0, i32 77
  %19 = load i32, i32* %w_histheight3, align 4
  %sub = sub nsw i32 %17, %19
  %idxprom4 = sext i32 %sub to i64
  %20 = load %struct.win*, %struct.win** @fore, align 8
  %w_mlines = getelementptr inbounds %struct.win, %struct.win* %20, i32 0, i32 36
  %21 = load %struct.mline*, %struct.mline** %w_mlines, align 8
  %arrayidx5 = getelementptr inbounds %struct.mline, %struct.mline* %21, i64 %idxprom4
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi %struct.mline* [ %arrayidx, %cond.true ], [ %arrayidx5, %cond.false ]
  %image = getelementptr inbounds %struct.mline, %struct.mline* %cond, i32 0, i32 0
  %22 = load i8*, i8** %image, align 8
  %23 = load i32, i32* %sx.addr, align 4
  %idx.ext = sext i32 %23 to i64
  %add.ptr = getelementptr inbounds i8, i8* %22, i64 %idx.ext
  store i8* %add.ptr, i8** %cp, align 8
  %24 = load i32, i32* %cy, align 4
  %25 = load %struct.win*, %struct.win** @fore, align 8
  %w_histheight6 = getelementptr inbounds %struct.win, %struct.win* %25, i32 0, i32 77
  %26 = load i32, i32* %w_histheight6, align 4
  %cmp7 = icmp slt i32 %24, %26
  br i1 %cmp7, label %cond.true.8, label %cond.false.16

cond.true.8:                                      ; preds = %cond.end
  %27 = load %struct.win*, %struct.win** @fore, align 8
  %w_histidx9 = getelementptr inbounds %struct.win, %struct.win* %27, i32 0, i32 78
  %28 = load i32, i32* %w_histidx9, align 4
  %29 = load i32, i32* %cy, align 4
  %add10 = add nsw i32 %28, %29
  %30 = load %struct.win*, %struct.win** @fore, align 8
  %w_histheight11 = getelementptr inbounds %struct.win, %struct.win* %30, i32 0, i32 77
  %31 = load i32, i32* %w_histheight11, align 4
  %rem12 = srem i32 %add10, %31
  %idxprom13 = sext i32 %rem12 to i64
  %32 = load %struct.win*, %struct.win** @fore, align 8
  %w_hlines14 = getelementptr inbounds %struct.win, %struct.win* %32, i32 0, i32 79
  %33 = load %struct.mline*, %struct.mline** %w_hlines14, align 8
  %arrayidx15 = getelementptr inbounds %struct.mline, %struct.mline* %33, i64 %idxprom13
  br label %cond.end.22

cond.false.16:                                    ; preds = %cond.end
  %34 = load i32, i32* %cy, align 4
  %35 = load %struct.win*, %struct.win** @fore, align 8
  %w_histheight17 = getelementptr inbounds %struct.win, %struct.win* %35, i32 0, i32 77
  %36 = load i32, i32* %w_histheight17, align 4
  %sub18 = sub nsw i32 %34, %36
  %idxprom19 = sext i32 %sub18 to i64
  %37 = load %struct.win*, %struct.win** @fore, align 8
  %w_mlines20 = getelementptr inbounds %struct.win, %struct.win* %37, i32 0, i32 36
  %38 = load %struct.mline*, %struct.mline** %w_mlines20, align 8
  %arrayidx21 = getelementptr inbounds %struct.mline, %struct.mline* %38, i64 %idxprom19
  br label %cond.end.22

cond.end.22:                                      ; preds = %cond.false.16, %cond.true.8
  %cond23 = phi %struct.mline* [ %arrayidx15, %cond.true.8 ], [ %arrayidx21, %cond.false.16 ]
  %image24 = getelementptr inbounds %struct.mline, %struct.mline* %cond23, i32 0, i32 0
  %39 = load i8*, i8** %image24, align 8
  %40 = load %struct.layer*, %struct.layer** @flayer, align 8
  %l_width = getelementptr inbounds %struct.layer, %struct.layer* %40, i32 0, i32 1
  %41 = load i32, i32* %l_width, align 4
  %idx.ext25 = sext i32 %41 to i64
  %add.ptr26 = getelementptr inbounds i8, i8* %39, i64 %idx.ext25
  store i8* %add.ptr26, i8** %cpe, align 8
  %42 = load i8*, i8** %pattern.addr, align 8
  store i8* %42, i8** %pp, align 8
  br label %for.cond.27

for.cond.27:                                      ; preds = %if.end.108, %cond.end.22
  %43 = load i8*, i8** %cp, align 8
  %44 = load i8, i8* %43, align 1
  %conv = zext i8 %44 to i32
  %45 = load i8*, i8** %pp, align 8
  %46 = load i8, i8* %45, align 1
  %conv28 = zext i8 %46 to i32
  %cmp29 = icmp ne i32 %conv, %conv28
  br i1 %cmp29, label %if.then, label %if.end.44

if.then:                                          ; preds = %for.cond.27
  %47 = load i32, i32* @search_ic, align 4
  %tobool = icmp ne i32 %47, 0
  br i1 %tobool, label %lor.lhs.false, label %if.then.43

lor.lhs.false:                                    ; preds = %if.then
  %48 = load i8*, i8** %cp, align 8
  %49 = load i8, i8* %48, align 1
  %conv31 = zext i8 %49 to i32
  %50 = load i8*, i8** %pp, align 8
  %51 = load i8, i8* %50, align 1
  %conv32 = zext i8 %51 to i32
  %xor = xor i32 %conv31, %conv32
  %and = and i32 %xor, 223
  %tobool33 = icmp ne i32 %and, 0
  br i1 %tobool33, label %if.then.43, label %lor.lhs.false.34

lor.lhs.false.34:                                 ; preds = %lor.lhs.false
  %52 = load i8*, i8** %cp, align 8
  %53 = load i8, i8* %52, align 1
  %conv35 = zext i8 %53 to i32
  %or = or i32 %conv35, 32
  %cmp36 = icmp slt i32 %or, 97
  br i1 %cmp36, label %if.then.43, label %lor.lhs.false.38

lor.lhs.false.38:                                 ; preds = %lor.lhs.false.34
  %54 = load i8*, i8** %cp, align 8
  %55 = load i8, i8* %54, align 1
  %conv39 = zext i8 %55 to i32
  %or40 = or i32 %conv39, 32
  %cmp41 = icmp sgt i32 %or40, 122
  br i1 %cmp41, label %if.then.43, label %if.end

if.then.43:                                       ; preds = %lor.lhs.false.38, %lor.lhs.false.34, %lor.lhs.false, %if.then
  br label %for.end

if.end:                                           ; preds = %lor.lhs.false.38
  br label %if.end.44

if.end.44:                                        ; preds = %if.end, %for.cond.27
  %56 = load i8*, i8** %cp, align 8
  %incdec.ptr = getelementptr inbounds i8, i8* %56, i32 1
  store i8* %incdec.ptr, i8** %cp, align 8
  %57 = load i8*, i8** %pp, align 8
  %incdec.ptr45 = getelementptr inbounds i8, i8* %57, i32 1
  store i8* %incdec.ptr45, i8** %pp, align 8
  %58 = load i8*, i8** %pp, align 8
  %59 = load i8, i8* %58, align 1
  %conv46 = zext i8 %59 to i32
  %cmp47 = icmp eq i32 %conv46, 0
  br i1 %cmp47, label %if.then.49, label %if.end.50

if.then.49:                                       ; preds = %if.end.44
  %60 = load i32, i32* %sx.addr, align 4
  store i32 %60, i32* %retval
  br label %return

if.end.50:                                        ; preds = %if.end.44
  %61 = load i8*, i8** %cp, align 8
  %62 = load i8*, i8** %cpe, align 8
  %cmp51 = icmp eq i8* %61, %62
  br i1 %cmp51, label %if.then.53, label %if.end.108

if.then.53:                                       ; preds = %if.end.50
  %63 = load i8*, i8** %cp, align 8
  %64 = load i8, i8* %63, align 1
  %conv54 = zext i8 %64 to i32
  %cmp55 = icmp eq i32 %conv54, 32
  br i1 %cmp55, label %if.then.63, label %lor.lhs.false.57

lor.lhs.false.57:                                 ; preds = %if.then.53
  %65 = load i32, i32* %cy, align 4
  %66 = load %struct.win*, %struct.win** @fore, align 8
  %w_histheight58 = getelementptr inbounds %struct.win, %struct.win* %66, i32 0, i32 77
  %67 = load i32, i32* %w_histheight58, align 4
  %68 = load %struct.layer*, %struct.layer** @flayer, align 8
  %l_height = getelementptr inbounds %struct.layer, %struct.layer* %68, i32 0, i32 2
  %69 = load i32, i32* %l_height, align 4
  %add59 = add nsw i32 %67, %69
  %sub60 = sub nsw i32 %add59, 1
  %cmp61 = icmp sge i32 %65, %sub60
  br i1 %cmp61, label %if.then.63, label %if.end.64

if.then.63:                                       ; preds = %lor.lhs.false.57, %if.then.53
  br label %for.end

if.end.64:                                        ; preds = %lor.lhs.false.57
  %70 = load i32, i32* %cy, align 4
  %inc = add nsw i32 %70, 1
  store i32 %inc, i32* %cy, align 4
  %71 = load i32, i32* %cy, align 4
  %72 = load %struct.win*, %struct.win** @fore, align 8
  %w_histheight65 = getelementptr inbounds %struct.win, %struct.win* %72, i32 0, i32 77
  %73 = load i32, i32* %w_histheight65, align 4
  %cmp66 = icmp slt i32 %71, %73
  br i1 %cmp66, label %cond.true.68, label %cond.false.76

cond.true.68:                                     ; preds = %if.end.64
  %74 = load %struct.win*, %struct.win** @fore, align 8
  %w_histidx69 = getelementptr inbounds %struct.win, %struct.win* %74, i32 0, i32 78
  %75 = load i32, i32* %w_histidx69, align 4
  %76 = load i32, i32* %cy, align 4
  %add70 = add nsw i32 %75, %76
  %77 = load %struct.win*, %struct.win** @fore, align 8
  %w_histheight71 = getelementptr inbounds %struct.win, %struct.win* %77, i32 0, i32 77
  %78 = load i32, i32* %w_histheight71, align 4
  %rem72 = srem i32 %add70, %78
  %idxprom73 = sext i32 %rem72 to i64
  %79 = load %struct.win*, %struct.win** @fore, align 8
  %w_hlines74 = getelementptr inbounds %struct.win, %struct.win* %79, i32 0, i32 79
  %80 = load %struct.mline*, %struct.mline** %w_hlines74, align 8
  %arrayidx75 = getelementptr inbounds %struct.mline, %struct.mline* %80, i64 %idxprom73
  br label %cond.end.82

cond.false.76:                                    ; preds = %if.end.64
  %81 = load i32, i32* %cy, align 4
  %82 = load %struct.win*, %struct.win** @fore, align 8
  %w_histheight77 = getelementptr inbounds %struct.win, %struct.win* %82, i32 0, i32 77
  %83 = load i32, i32* %w_histheight77, align 4
  %sub78 = sub nsw i32 %81, %83
  %idxprom79 = sext i32 %sub78 to i64
  %84 = load %struct.win*, %struct.win** @fore, align 8
  %w_mlines80 = getelementptr inbounds %struct.win, %struct.win* %84, i32 0, i32 36
  %85 = load %struct.mline*, %struct.mline** %w_mlines80, align 8
  %arrayidx81 = getelementptr inbounds %struct.mline, %struct.mline* %85, i64 %idxprom79
  br label %cond.end.82

cond.end.82:                                      ; preds = %cond.false.76, %cond.true.68
  %cond83 = phi %struct.mline* [ %arrayidx75, %cond.true.68 ], [ %arrayidx81, %cond.false.76 ]
  %image84 = getelementptr inbounds %struct.mline, %struct.mline* %cond83, i32 0, i32 0
  %86 = load i8*, i8** %image84, align 8
  store i8* %86, i8** %cp, align 8
  %87 = load i32, i32* %cy, align 4
  %88 = load %struct.win*, %struct.win** @fore, align 8
  %w_histheight85 = getelementptr inbounds %struct.win, %struct.win* %88, i32 0, i32 77
  %89 = load i32, i32* %w_histheight85, align 4
  %cmp86 = icmp slt i32 %87, %89
  br i1 %cmp86, label %cond.true.88, label %cond.false.96

cond.true.88:                                     ; preds = %cond.end.82
  %90 = load %struct.win*, %struct.win** @fore, align 8
  %w_histidx89 = getelementptr inbounds %struct.win, %struct.win* %90, i32 0, i32 78
  %91 = load i32, i32* %w_histidx89, align 4
  %92 = load i32, i32* %cy, align 4
  %add90 = add nsw i32 %91, %92
  %93 = load %struct.win*, %struct.win** @fore, align 8
  %w_histheight91 = getelementptr inbounds %struct.win, %struct.win* %93, i32 0, i32 77
  %94 = load i32, i32* %w_histheight91, align 4
  %rem92 = srem i32 %add90, %94
  %idxprom93 = sext i32 %rem92 to i64
  %95 = load %struct.win*, %struct.win** @fore, align 8
  %w_hlines94 = getelementptr inbounds %struct.win, %struct.win* %95, i32 0, i32 79
  %96 = load %struct.mline*, %struct.mline** %w_hlines94, align 8
  %arrayidx95 = getelementptr inbounds %struct.mline, %struct.mline* %96, i64 %idxprom93
  br label %cond.end.102

cond.false.96:                                    ; preds = %cond.end.82
  %97 = load i32, i32* %cy, align 4
  %98 = load %struct.win*, %struct.win** @fore, align 8
  %w_histheight97 = getelementptr inbounds %struct.win, %struct.win* %98, i32 0, i32 77
  %99 = load i32, i32* %w_histheight97, align 4
  %sub98 = sub nsw i32 %97, %99
  %idxprom99 = sext i32 %sub98 to i64
  %100 = load %struct.win*, %struct.win** @fore, align 8
  %w_mlines100 = getelementptr inbounds %struct.win, %struct.win* %100, i32 0, i32 36
  %101 = load %struct.mline*, %struct.mline** %w_mlines100, align 8
  %arrayidx101 = getelementptr inbounds %struct.mline, %struct.mline* %101, i64 %idxprom99
  br label %cond.end.102

cond.end.102:                                     ; preds = %cond.false.96, %cond.true.88
  %cond103 = phi %struct.mline* [ %arrayidx95, %cond.true.88 ], [ %arrayidx101, %cond.false.96 ]
  %image104 = getelementptr inbounds %struct.mline, %struct.mline* %cond103, i32 0, i32 0
  %102 = load i8*, i8** %image104, align 8
  %103 = load %struct.layer*, %struct.layer** @flayer, align 8
  %l_width105 = getelementptr inbounds %struct.layer, %struct.layer* %103, i32 0, i32 1
  %104 = load i32, i32* %l_width105, align 4
  %idx.ext106 = sext i32 %104 to i64
  %add.ptr107 = getelementptr inbounds i8, i8* %102, i64 %idx.ext106
  store i8* %add.ptr107, i8** %cpe, align 8
  br label %if.end.108

if.end.108:                                       ; preds = %cond.end.102, %if.end.50
  br label %for.cond.27

for.end:                                          ; preds = %if.then.63, %if.then.43
  br label %for.inc

for.inc:                                          ; preds = %for.end
  %105 = load i32, i32* %sx.addr, align 4
  %inc109 = add nsw i32 %105, 1
  store i32 %inc109, i32* %sx.addr, align 4
  br label %for.cond

for.end.110:                                      ; preds = %for.cond
  store i32 -1, i32* %retval
  br label %return

return:                                           ; preds = %for.end.110, %if.then.49
  %106 = load i32, i32* %retval
  ret i32 %106
}

declare void @revto(i32, i32) #1

; Function Attrs: nounwind uwtable
define internal i32 @is_redo(%struct.markdata* %markdata) #0 {
entry:
  %markdata.addr = alloca %struct.markdata*, align 8
  %i = alloca i32, align 4
  %pos = alloca i32, align 4
  %npos = alloca i32, align 4
  %dir = alloca i32, align 4
  %c = alloca i8, align 1
  store %struct.markdata* %markdata, %struct.markdata** %markdata.addr, align 8
  %0 = load %struct.markdata*, %struct.markdata** %markdata.addr, align 8
  %isstartpos = getelementptr inbounds %struct.markdata, %struct.markdata* %0, i32 0, i32 19
  %1 = load i32, i32* %isstartpos, align 4
  store i32 %1, i32* %pos, align 4
  store i32 %1, i32* %npos, align 4
  %2 = load %struct.markdata*, %struct.markdata** %markdata.addr, align 8
  %isstartdir = getelementptr inbounds %struct.markdata, %struct.markdata* %2, i32 0, i32 20
  %3 = load i32, i32* %isstartdir, align 4
  store i32 %3, i32* %dir, align 4
  %4 = load %struct.markdata*, %struct.markdata** %markdata.addr, align 8
  %isstrl = getelementptr inbounds %struct.markdata, %struct.markdata* %4, i32 0, i32 15
  store i32 0, i32* %isstrl, align 4
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %5 = load i32, i32* %i, align 4
  %6 = load %struct.markdata*, %struct.markdata** %markdata.addr, align 8
  %isistrl = getelementptr inbounds %struct.markdata, %struct.markdata* %6, i32 0, i32 17
  %7 = load i32, i32* %isistrl, align 4
  %cmp = icmp slt i32 %5, %7
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %8 = load i32, i32* %i, align 4
  %idxprom = sext i32 %8 to i64
  %9 = load %struct.markdata*, %struct.markdata** %markdata.addr, align 8
  %isistr = getelementptr inbounds %struct.markdata, %struct.markdata* %9, i32 0, i32 16
  %arrayidx = getelementptr inbounds [200 x i8], [200 x i8]* %isistr, i32 0, i64 %idxprom
  %10 = load i8, i8* %arrayidx, align 1
  store i8 %10, i8* %c, align 1
  %11 = load i8, i8* %c, align 1
  %conv = sext i8 %11 to i32
  %cmp1 = icmp eq i32 %conv, 18
  br i1 %cmp1, label %if.then, label %if.else

if.then:                                          ; preds = %for.body
  store i32 -1, i32* %dir, align 4
  %12 = load i32, i32* %pos, align 4
  %add = add nsw i32 %12, -1
  store i32 %add, i32* %pos, align 4
  br label %if.end.12

if.else:                                          ; preds = %for.body
  %13 = load i8, i8* %c, align 1
  %conv3 = sext i8 %13 to i32
  %cmp4 = icmp eq i32 %conv3, 19
  br i1 %cmp4, label %if.then.6, label %if.else.8

if.then.6:                                        ; preds = %if.else
  store i32 1, i32* %dir, align 4
  %14 = load i32, i32* %pos, align 4
  %add7 = add nsw i32 %14, 1
  store i32 %add7, i32* %pos, align 4
  br label %if.end

if.else.8:                                        ; preds = %if.else
  %15 = load i8, i8* %c, align 1
  %16 = load %struct.markdata*, %struct.markdata** %markdata.addr, align 8
  %isstrl9 = getelementptr inbounds %struct.markdata, %struct.markdata* %16, i32 0, i32 15
  %17 = load i32, i32* %isstrl9, align 4
  %inc = add nsw i32 %17, 1
  store i32 %inc, i32* %isstrl9, align 4
  %idxprom10 = sext i32 %17 to i64
  %18 = load %struct.markdata*, %struct.markdata** %markdata.addr, align 8
  %isstr = getelementptr inbounds %struct.markdata, %struct.markdata* %18, i32 0, i32 14
  %arrayidx11 = getelementptr inbounds [100 x i8], [100 x i8]* %isstr, i32 0, i64 %idxprom10
  store i8 %15, i8* %arrayidx11, align 1
  br label %if.end

if.end:                                           ; preds = %if.else.8, %if.then.6
  br label %if.end.12

if.end.12:                                        ; preds = %if.end, %if.then
  %19 = load i32, i32* %pos, align 4
  %cmp13 = icmp sge i32 %19, 0
  br i1 %cmp13, label %if.then.15, label %if.end.23

if.then.15:                                       ; preds = %if.end.12
  %20 = load %struct.markdata*, %struct.markdata** %markdata.addr, align 8
  %isstr16 = getelementptr inbounds %struct.markdata, %struct.markdata* %20, i32 0, i32 14
  %arraydecay = getelementptr inbounds [100 x i8], [100 x i8]* %isstr16, i32 0, i32 0
  %21 = load %struct.markdata*, %struct.markdata** %markdata.addr, align 8
  %isstrl17 = getelementptr inbounds %struct.markdata, %struct.markdata* %21, i32 0, i32 15
  %22 = load i32, i32* %isstrl17, align 4
  %23 = load i32, i32* %pos, align 4
  %24 = load %struct.layer*, %struct.layer** @flayer, align 8
  %l_width = getelementptr inbounds %struct.layer, %struct.layer* %24, i32 0, i32 1
  %25 = load i32, i32* %l_width, align 4
  %26 = load %struct.markdata*, %struct.markdata** %markdata.addr, align 8
  %md_window = getelementptr inbounds %struct.markdata, %struct.markdata* %26, i32 0, i32 0
  %27 = load %struct.win*, %struct.win** %md_window, align 8
  %w_histheight = getelementptr inbounds %struct.win, %struct.win* %27, i32 0, i32 77
  %28 = load i32, i32* %w_histheight, align 4
  %29 = load %struct.layer*, %struct.layer** @flayer, align 8
  %l_height = getelementptr inbounds %struct.layer, %struct.layer* %29, i32 0, i32 2
  %30 = load i32, i32* %l_height, align 4
  %add18 = add nsw i32 %28, %30
  %mul = mul nsw i32 %25, %add18
  %31 = load i32, i32* %dir, align 4
  %call = call i32 @is_bm(i8* %arraydecay, i32 %22, i32 %23, i32 %mul, i32 %31)
  store i32 %call, i32* %npos, align 4
  %32 = load i32, i32* %npos, align 4
  %cmp19 = icmp sge i32 %32, 0
  br i1 %cmp19, label %if.then.21, label %if.end.22

if.then.21:                                       ; preds = %if.then.15
  %33 = load i32, i32* %npos, align 4
  store i32 %33, i32* %pos, align 4
  br label %if.end.22

if.end.22:                                        ; preds = %if.then.21, %if.then.15
  br label %if.end.23

if.end.23:                                        ; preds = %if.end.22, %if.end.12
  br label %for.inc

for.inc:                                          ; preds = %if.end.23
  %34 = load i32, i32* %i, align 4
  %inc24 = add nsw i32 %34, 1
  store i32 %inc24, i32* %i, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %35 = load %struct.markdata*, %struct.markdata** %markdata.addr, align 8
  %isstrl25 = getelementptr inbounds %struct.markdata, %struct.markdata* %35, i32 0, i32 15
  %36 = load i32, i32* %isstrl25, align 4
  %idxprom26 = sext i32 %36 to i64
  %37 = load %struct.markdata*, %struct.markdata** %markdata.addr, align 8
  %isstr27 = getelementptr inbounds %struct.markdata, %struct.markdata* %37, i32 0, i32 14
  %arrayidx28 = getelementptr inbounds [100 x i8], [100 x i8]* %isstr27, i32 0, i64 %idxprom26
  store i8 0, i8* %arrayidx28, align 1
  %38 = load i32, i32* %dir, align 4
  %39 = load %struct.markdata*, %struct.markdata** %markdata.addr, align 8
  %isdir = getelementptr inbounds %struct.markdata, %struct.markdata* %39, i32 0, i32 18
  store i32 %38, i32* %isdir, align 4
  %40 = load i32, i32* %npos, align 4
  ret i32 %40
}

; Function Attrs: nounwind readonly
declare i64 @strlen(i8*) #3

; Function Attrs: nounwind uwtable
define internal i32 @is_bm(i8* %str, i32 %l, i32 %p, i32 %end, i32 %dir) #0 {
entry:
  %retval = alloca i32, align 4
  %str.addr = alloca i8*, align 8
  %l.addr = alloca i32, align 4
  %p.addr = alloca i32, align 4
  %end.addr = alloca i32, align 4
  %dir.addr = alloca i32, align 4
  %tab = alloca [256 x i32], align 16
  %i = alloca i32, align 4
  %q = alloca i32, align 4
  %s = alloca i8*, align 8
  %c = alloca i8, align 1
  %w = alloca i32, align 4
  store i8* %str, i8** %str.addr, align 8
  store i32 %l, i32* %l.addr, align 4
  store i32 %p, i32* %p.addr, align 4
  store i32 %end, i32* %end.addr, align 4
  store i32 %dir, i32* %dir.addr, align 4
  %0 = load %struct.layer*, %struct.layer** @flayer, align 8
  %l_width = getelementptr inbounds %struct.layer, %struct.layer* %0, i32 0, i32 1
  %1 = load i32, i32* %l_width, align 4
  store i32 %1, i32* %w, align 4
  %2 = load %struct.layer*, %struct.layer** @flayer, align 8
  %l_next = getelementptr inbounds %struct.layer, %struct.layer* %2, i32 0, i32 8
  %3 = load %struct.layer*, %struct.layer** %l_next, align 8
  %l_data = getelementptr inbounds %struct.layer, %struct.layer* %3, i32 0, i32 7
  %4 = load i8*, i8** %l_data, align 8
  %5 = bitcast i8* %4 to %struct.markdata*
  %md_window = getelementptr inbounds %struct.markdata, %struct.markdata* %5, i32 0, i32 0
  %6 = load %struct.win*, %struct.win** %md_window, align 8
  store %struct.win* %6, %struct.win** @fore, align 8
  br label %do.body

do.body:                                          ; preds = %entry
  br label %do.end

do.end:                                           ; preds = %do.body
  br label %do.body.1

do.body.1:                                        ; preds = %do.end
  br label %do.end.2

do.end.2:                                         ; preds = %do.body.1
  %7 = load i32, i32* %p.addr, align 4
  %cmp = icmp slt i32 %7, 0
  br i1 %cmp, label %if.then, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %do.end.2
  %8 = load i32, i32* %p.addr, align 4
  %9 = load i32, i32* %l.addr, align 4
  %add = add nsw i32 %8, %9
  %10 = load i32, i32* %end.addr, align 4
  %cmp3 = icmp sgt i32 %add, %10
  br i1 %cmp3, label %if.then, label %if.end

if.then:                                          ; preds = %lor.lhs.false, %do.end.2
  store i32 -1, i32* %retval
  br label %return

if.end:                                           ; preds = %lor.lhs.false
  %11 = load i32, i32* %l.addr, align 4
  %cmp4 = icmp eq i32 %11, 0
  br i1 %cmp4, label %if.then.5, label %if.end.6

if.then.5:                                        ; preds = %if.end
  %12 = load i32, i32* %p.addr, align 4
  store i32 %12, i32* %retval
  br label %return

if.end.6:                                         ; preds = %if.end
  %13 = load i32, i32* %dir.addr, align 4
  %cmp7 = icmp slt i32 %13, 0
  br i1 %cmp7, label %if.then.8, label %if.end.9

if.then.8:                                        ; preds = %if.end.6
  %14 = load i32, i32* %l.addr, align 4
  %sub = sub nsw i32 %14, 1
  %15 = load i8*, i8** %str.addr, align 8
  %idx.ext = sext i32 %sub to i64
  %add.ptr = getelementptr inbounds i8, i8* %15, i64 %idx.ext
  store i8* %add.ptr, i8** %str.addr, align 8
  br label %if.end.9

if.end.9:                                         ; preds = %if.then.8, %if.end.6
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end.9
  %16 = load i32, i32* %i, align 4
  %cmp10 = icmp slt i32 %16, 256
  br i1 %cmp10, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %17 = load i32, i32* %l.addr, align 4
  %18 = load i32, i32* %dir.addr, align 4
  %mul = mul nsw i32 %17, %18
  %19 = load i32, i32* %i, align 4
  %idxprom = sext i32 %19 to i64
  %arrayidx = getelementptr inbounds [256 x i32], [256 x i32]* %tab, i32 0, i64 %idxprom
  store i32 %mul, i32* %arrayidx, align 4
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %20 = load i32, i32* %i, align 4
  %inc = add nsw i32 %20, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  store i32 0, i32* %i, align 4
  br label %for.cond.11

for.cond.11:                                      ; preds = %for.inc.33, %for.end
  %21 = load i32, i32* %i, align 4
  %22 = load i32, i32* %l.addr, align 4
  %sub12 = sub nsw i32 %22, 1
  %cmp13 = icmp slt i32 %21, %sub12
  br i1 %cmp13, label %for.body.14, label %for.end.37

for.body.14:                                      ; preds = %for.cond.11
  %23 = load i8*, i8** %str.addr, align 8
  %24 = load i8, i8* %23, align 1
  %conv = zext i8 %24 to i32
  store i32 %conv, i32* %q, align 4
  %25 = load i32, i32* %l.addr, align 4
  %sub15 = sub nsw i32 %25, 1
  %26 = load i32, i32* %i, align 4
  %sub16 = sub nsw i32 %sub15, %26
  %27 = load i32, i32* %dir.addr, align 4
  %mul17 = mul nsw i32 %sub16, %27
  %28 = load i32, i32* %q, align 4
  %idxprom18 = sext i32 %28 to i64
  %arrayidx19 = getelementptr inbounds [256 x i32], [256 x i32]* %tab, i32 0, i64 %idxprom18
  store i32 %mul17, i32* %arrayidx19, align 4
  %29 = load i32, i32* @search_ic, align 4
  %tobool = icmp ne i32 %29, 0
  br i1 %tobool, label %land.lhs.true, label %if.end.32

land.lhs.true:                                    ; preds = %for.body.14
  %30 = load i32, i32* %q, align 4
  %or = or i32 %30, 32
  %cmp20 = icmp sge i32 %or, 97
  br i1 %cmp20, label %land.lhs.true.22, label %if.end.32

land.lhs.true.22:                                 ; preds = %land.lhs.true
  %31 = load i32, i32* %q, align 4
  %or23 = or i32 %31, 32
  %cmp24 = icmp sle i32 %or23, 122
  br i1 %cmp24, label %if.then.26, label %if.end.32

if.then.26:                                       ; preds = %land.lhs.true.22
  %32 = load i32, i32* %l.addr, align 4
  %sub27 = sub nsw i32 %32, 1
  %33 = load i32, i32* %i, align 4
  %sub28 = sub nsw i32 %sub27, %33
  %34 = load i32, i32* %dir.addr, align 4
  %mul29 = mul nsw i32 %sub28, %34
  %35 = load i32, i32* %q, align 4
  %xor = xor i32 %35, 32
  %idxprom30 = sext i32 %xor to i64
  %arrayidx31 = getelementptr inbounds [256 x i32], [256 x i32]* %tab, i32 0, i64 %idxprom30
  store i32 %mul29, i32* %arrayidx31, align 4
  br label %if.end.32

if.end.32:                                        ; preds = %if.then.26, %land.lhs.true.22, %land.lhs.true, %for.body.14
  br label %for.inc.33

for.inc.33:                                       ; preds = %if.end.32
  %36 = load i32, i32* %i, align 4
  %inc34 = add nsw i32 %36, 1
  store i32 %inc34, i32* %i, align 4
  %37 = load i32, i32* %dir.addr, align 4
  %38 = load i8*, i8** %str.addr, align 8
  %idx.ext35 = sext i32 %37 to i64
  %add.ptr36 = getelementptr inbounds i8, i8* %38, i64 %idx.ext35
  store i8* %add.ptr36, i8** %str.addr, align 8
  br label %for.cond.11

for.end.37:                                       ; preds = %for.cond.11
  %39 = load i32, i32* %dir.addr, align 4
  %cmp38 = icmp sgt i32 %39, 0
  br i1 %cmp38, label %if.then.40, label %if.end.43

if.then.40:                                       ; preds = %for.end.37
  %40 = load i32, i32* %l.addr, align 4
  %sub41 = sub nsw i32 %40, 1
  %41 = load i32, i32* %p.addr, align 4
  %add42 = add nsw i32 %41, %sub41
  store i32 %add42, i32* %p.addr, align 4
  br label %if.end.43

if.end.43:                                        ; preds = %if.then.40, %for.end.37
  br label %do.body.44

do.body.44:                                       ; preds = %if.end.43
  br label %do.end.45

do.end.45:                                        ; preds = %do.body.44
  br label %while.cond

while.cond:                                       ; preds = %for.end.114, %do.end.45
  %42 = load i32, i32* %p.addr, align 4
  %cmp46 = icmp sge i32 %42, 0
  br i1 %cmp46, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %while.cond
  %43 = load i32, i32* %p.addr, align 4
  %44 = load i32, i32* %end.addr, align 4
  %cmp48 = icmp slt i32 %43, %44
  br label %land.end

land.end:                                         ; preds = %land.rhs, %while.cond
  %45 = phi i1 [ false, %while.cond ], [ %cmp48, %land.rhs ]
  br i1 %45, label %while.body, label %while.end

while.body:                                       ; preds = %land.end
  %46 = load i32, i32* %p.addr, align 4
  store i32 %46, i32* %q, align 4
  %47 = load i8*, i8** %str.addr, align 8
  store i8* %47, i8** %s, align 8
  store i32 0, i32* %i, align 4
  br label %for.cond.50

for.cond.50:                                      ; preds = %if.end.113, %while.body
  %48 = load i32, i32* %q, align 4
  %49 = load i32, i32* %w, align 4
  %rem = srem i32 %48, %49
  %idxprom51 = sext i32 %rem to i64
  %50 = load i32, i32* %q, align 4
  %51 = load i32, i32* %w, align 4
  %div = sdiv i32 %50, %51
  %52 = load %struct.win*, %struct.win** @fore, align 8
  %w_histheight = getelementptr inbounds %struct.win, %struct.win* %52, i32 0, i32 77
  %53 = load i32, i32* %w_histheight, align 4
  %cmp52 = icmp slt i32 %div, %53
  br i1 %cmp52, label %cond.true, label %cond.false

cond.true:                                        ; preds = %for.cond.50
  %54 = load %struct.win*, %struct.win** @fore, align 8
  %w_histidx = getelementptr inbounds %struct.win, %struct.win* %54, i32 0, i32 78
  %55 = load i32, i32* %w_histidx, align 4
  %56 = load i32, i32* %q, align 4
  %57 = load i32, i32* %w, align 4
  %div54 = sdiv i32 %56, %57
  %add55 = add nsw i32 %55, %div54
  %58 = load %struct.win*, %struct.win** @fore, align 8
  %w_histheight56 = getelementptr inbounds %struct.win, %struct.win* %58, i32 0, i32 77
  %59 = load i32, i32* %w_histheight56, align 4
  %rem57 = srem i32 %add55, %59
  %idxprom58 = sext i32 %rem57 to i64
  %60 = load %struct.win*, %struct.win** @fore, align 8
  %w_hlines = getelementptr inbounds %struct.win, %struct.win* %60, i32 0, i32 79
  %61 = load %struct.mline*, %struct.mline** %w_hlines, align 8
  %arrayidx59 = getelementptr inbounds %struct.mline, %struct.mline* %61, i64 %idxprom58
  br label %cond.end

cond.false:                                       ; preds = %for.cond.50
  %62 = load i32, i32* %q, align 4
  %63 = load i32, i32* %w, align 4
  %div60 = sdiv i32 %62, %63
  %64 = load %struct.win*, %struct.win** @fore, align 8
  %w_histheight61 = getelementptr inbounds %struct.win, %struct.win* %64, i32 0, i32 77
  %65 = load i32, i32* %w_histheight61, align 4
  %sub62 = sub nsw i32 %div60, %65
  %idxprom63 = sext i32 %sub62 to i64
  %66 = load %struct.win*, %struct.win** @fore, align 8
  %w_mlines = getelementptr inbounds %struct.win, %struct.win* %66, i32 0, i32 36
  %67 = load %struct.mline*, %struct.mline** %w_mlines, align 8
  %arrayidx64 = getelementptr inbounds %struct.mline, %struct.mline* %67, i64 %idxprom63
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi %struct.mline* [ %arrayidx59, %cond.true ], [ %arrayidx64, %cond.false ]
  %image = getelementptr inbounds %struct.mline, %struct.mline* %cond, i32 0, i32 0
  %68 = load i8*, i8** %image, align 8
  %arrayidx65 = getelementptr inbounds i8, i8* %68, i64 %idxprom51
  %69 = load i8, i8* %arrayidx65, align 1
  store i8 %69, i8* %c, align 1
  %70 = load i32, i32* %i, align 4
  %cmp66 = icmp eq i32 %70, 0
  br i1 %cmp66, label %if.then.68, label %if.end.73

if.then.68:                                       ; preds = %cond.end
  %71 = load i8, i8* %c, align 1
  %conv69 = zext i8 %71 to i32
  %idxprom70 = sext i32 %conv69 to i64
  %arrayidx71 = getelementptr inbounds [256 x i32], [256 x i32]* %tab, i32 0, i64 %idxprom70
  %72 = load i32, i32* %arrayidx71, align 4
  %73 = load i32, i32* %p.addr, align 4
  %add72 = add nsw i32 %73, %72
  store i32 %add72, i32* %p.addr, align 4
  br label %if.end.73

if.end.73:                                        ; preds = %if.then.68, %cond.end
  %74 = load i8, i8* %c, align 1
  %conv74 = zext i8 %74 to i32
  %75 = load i8*, i8** %s, align 8
  %76 = load i8, i8* %75, align 1
  %conv75 = zext i8 %76 to i32
  %cmp76 = icmp ne i32 %conv74, %conv75
  br i1 %cmp76, label %if.then.78, label %if.end.97

if.then.78:                                       ; preds = %if.end.73
  %77 = load i32, i32* @search_ic, align 4
  %tobool79 = icmp ne i32 %77, 0
  br i1 %tobool79, label %lor.lhs.false.80, label %if.then.95

lor.lhs.false.80:                                 ; preds = %if.then.78
  %78 = load i8, i8* %c, align 1
  %conv81 = zext i8 %78 to i32
  %79 = load i8*, i8** %s, align 8
  %80 = load i8, i8* %79, align 1
  %conv82 = zext i8 %80 to i32
  %xor83 = xor i32 %conv81, %conv82
  %and = and i32 %xor83, 223
  %tobool84 = icmp ne i32 %and, 0
  br i1 %tobool84, label %if.then.95, label %lor.lhs.false.85

lor.lhs.false.85:                                 ; preds = %lor.lhs.false.80
  %81 = load i8, i8* %c, align 1
  %conv86 = zext i8 %81 to i32
  %or87 = or i32 %conv86, 32
  %cmp88 = icmp slt i32 %or87, 97
  br i1 %cmp88, label %if.then.95, label %lor.lhs.false.90

lor.lhs.false.90:                                 ; preds = %lor.lhs.false.85
  %82 = load i8, i8* %c, align 1
  %conv91 = zext i8 %82 to i32
  %or92 = or i32 %conv91, 32
  %cmp93 = icmp sgt i32 %or92, 122
  br i1 %cmp93, label %if.then.95, label %if.end.96

if.then.95:                                       ; preds = %lor.lhs.false.90, %lor.lhs.false.85, %lor.lhs.false.80, %if.then.78
  br label %for.end.114

if.end.96:                                        ; preds = %lor.lhs.false.90
  br label %if.end.97

if.end.97:                                        ; preds = %if.end.96, %if.end.73
  %83 = load i32, i32* %dir.addr, align 4
  %84 = load i32, i32* %q, align 4
  %sub98 = sub nsw i32 %84, %83
  store i32 %sub98, i32* %q, align 4
  %85 = load i32, i32* %dir.addr, align 4
  %86 = load i8*, i8** %s, align 8
  %idx.ext99 = sext i32 %85 to i64
  %idx.neg = sub i64 0, %idx.ext99
  %add.ptr100 = getelementptr inbounds i8, i8* %86, i64 %idx.neg
  store i8* %add.ptr100, i8** %s, align 8
  %87 = load i32, i32* %i, align 4
  %inc101 = add nsw i32 %87, 1
  store i32 %inc101, i32* %i, align 4
  %88 = load i32, i32* %l.addr, align 4
  %cmp102 = icmp eq i32 %inc101, %88
  br i1 %cmp102, label %if.then.104, label %if.end.113

if.then.104:                                      ; preds = %if.end.97
  %89 = load i32, i32* %q, align 4
  %90 = load i32, i32* %dir.addr, align 4
  %cmp105 = icmp sgt i32 %90, 0
  br i1 %cmp105, label %cond.true.107, label %cond.false.108

cond.true.107:                                    ; preds = %if.then.104
  br label %cond.end.110

cond.false.108:                                   ; preds = %if.then.104
  %91 = load i32, i32* %l.addr, align 4
  %sub109 = sub nsw i32 0, %91
  br label %cond.end.110

cond.end.110:                                     ; preds = %cond.false.108, %cond.true.107
  %cond111 = phi i32 [ 1, %cond.true.107 ], [ %sub109, %cond.false.108 ]
  %add112 = add nsw i32 %89, %cond111
  store i32 %add112, i32* %retval
  br label %return

if.end.113:                                       ; preds = %if.end.97
  br label %for.cond.50

for.end.114:                                      ; preds = %if.then.95
  br label %while.cond

while.end:                                        ; preds = %land.end
  store i32 -1, i32* %retval
  br label %return

return:                                           ; preds = %while.end, %cond.end.110, %if.then.5, %if.then
  %92 = load i32, i32* %retval
  ret i32 %92
}

declare void @inp_setprompt(i8*, i8*) #1

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind readonly "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { nounwind }
attributes #5 = { nounwind readonly }

!llvm.ident = !{!0}

!0 = !{!"clang version 3.7.0 (tags/RELEASE_370/final)"}
